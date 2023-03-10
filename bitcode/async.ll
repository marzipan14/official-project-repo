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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.redisAsyncContext* @redisAsyncConnect(i8*, i32) local_unnamed_addr #0 !dbg !110 {
  %3 = tail call %struct.redisContext* @redisConnectNonBlock(i8* %0, i32 %1) #7, !dbg !283
  %4 = icmp eq %struct.redisContext* %3, null, !dbg !285
  br i1 %4, label %62, label %5, !dbg !287

; <label>:5:                                      ; preds = %2
  %6 = bitcast %struct.redisContext* %3 to i8*, !dbg !296
  %7 = tail call i8* @realloc(i8* %6, i64 344) #7, !dbg !297
  %8 = icmp eq i8* %7, null, !dbg !298
  br i1 %8, label %9, label %10, !dbg !300

; <label>:9:                                      ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  tail call void @redisFree(%struct.redisContext* nonnull %3) #7, !dbg !303
  br label %62, !dbg !306

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds i8, i8* %7, i64 136, !dbg !307
  %12 = bitcast i8* %11 to i32*, !dbg !307
  %13 = load i32, i32* %12, align 8, !dbg !308, !tbaa !309
  %14 = and i32 %13, -3, !dbg !308
  store i32 %14, i32* %12, align 8, !dbg !308, !tbaa !309
  %15 = getelementptr inbounds i8, i8* %7, i64 208, !dbg !317
  %16 = bitcast i8* %15 to i32*, !dbg !317
  store i32 0, i32* %16, align 8, !dbg !318, !tbaa !319
  %17 = getelementptr inbounds i8, i8* %7, i64 216, !dbg !324
  %18 = bitcast i8* %17 to i8**, !dbg !324
  %19 = bitcast i8* %17 to <2 x i8*>*, !dbg !325
  store <2 x i8*> zeroinitializer, <2 x i8*>* %19, align 8, !dbg !325, !tbaa !326
  %20 = getelementptr inbounds i8, i8* %7, i64 232, !dbg !327
  %21 = bitcast i8* %20 to i8**, !dbg !328
  store i8* null, i8** %21, align 8, !dbg !329, !tbaa !330
  %22 = getelementptr inbounds i8, i8* %7, i64 240, !dbg !331
  %23 = bitcast i8* %22 to <2 x void (i8*)*>*, !dbg !332
  store <2 x void (i8*)*> zeroinitializer, <2 x void (i8*)*>* %23, align 8, !dbg !332, !tbaa !326
  %24 = getelementptr inbounds i8, i8* %7, i64 256, !dbg !333
  %25 = bitcast i8* %24 to <2 x void (i8*)*>*, !dbg !334
  store <2 x void (i8*)*> zeroinitializer, <2 x void (i8*)*>* %25, align 8, !dbg !334, !tbaa !326
  %26 = getelementptr inbounds i8, i8* %7, i64 272, !dbg !335
  %27 = bitcast i8* %26 to void (i8*)**, !dbg !335
  store void (i8*)* null, void (i8*)** %27, align 8, !dbg !336, !tbaa !337
  %28 = getelementptr inbounds i8, i8* %7, i64 280, !dbg !338
  %29 = bitcast i8* %28 to <2 x void (%struct.redisAsyncContext*, i32)*>*, !dbg !339
  store <2 x void (%struct.redisAsyncContext*, i32)*> zeroinitializer, <2 x void (%struct.redisAsyncContext*, i32)*>* %29, align 8, !dbg !339, !tbaa !326
  %30 = getelementptr inbounds i8, i8* %7, i64 296, !dbg !340
  %31 = bitcast i8* %30 to <2 x %struct.redisCallback*>*, !dbg !341
  store <2 x %struct.redisCallback*> zeroinitializer, <2 x %struct.redisCallback*>* %31, align 8, !dbg !341, !tbaa !326
  %32 = getelementptr inbounds i8, i8* %7, i64 312, !dbg !342
  %33 = bitcast i8* %32 to <2 x %struct.redisCallback*>*, !dbg !343
  store <2 x %struct.redisCallback*> zeroinitializer, <2 x %struct.redisCallback*>* %33, align 8, !dbg !343, !tbaa !326
  %34 = tail call i8* @malloc(i64 48) #7, !dbg !357
  %35 = bitcast i8* %34 to %struct.dictEntry***, !dbg !377
  store %struct.dictEntry** null, %struct.dictEntry*** %35, align 8, !dbg !378, !tbaa !379
  %36 = getelementptr inbounds i8, i8* %34, i64 16, !dbg !382
  %37 = bitcast i8* %36 to <2 x i64>*, !dbg !383
  store <2 x i64> zeroinitializer, <2 x i64>* %37, align 8, !dbg !383, !tbaa !384
  %38 = getelementptr inbounds i8, i8* %34, i64 32, !dbg !385
  %39 = bitcast i8* %38 to i64*, !dbg !385
  store i64 0, i64* %39, align 8, !dbg !386, !tbaa !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  %40 = getelementptr inbounds i8, i8* %34, i64 8, !dbg !389
  %41 = bitcast i8* %40 to %struct.dictType**, !dbg !389
  store %struct.dictType* @callbackDict, %struct.dictType** %41, align 8, !dbg !390, !tbaa !391
  %42 = getelementptr inbounds i8, i8* %34, i64 40, !dbg !392
  %43 = bitcast i8* %42 to i8**, !dbg !392
  store i8* null, i8** %43, align 8, !dbg !393, !tbaa !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  %44 = getelementptr inbounds i8, i8* %7, i64 328, !dbg !397
  %45 = bitcast i8* %44 to i8**, !dbg !398
  store i8* %34, i8** %45, align 8, !dbg !398, !tbaa !399
  %46 = tail call i8* @malloc(i64 48) #7, !dbg !403
  %47 = bitcast i8* %46 to %struct.dictEntry***, !dbg !411
  store %struct.dictEntry** null, %struct.dictEntry*** %47, align 8, !dbg !412, !tbaa !379
  %48 = getelementptr inbounds i8, i8* %46, i64 16, !dbg !413
  %49 = bitcast i8* %48 to <2 x i64>*, !dbg !414
  store <2 x i64> zeroinitializer, <2 x i64>* %49, align 8, !dbg !414, !tbaa !384
  %50 = getelementptr inbounds i8, i8* %46, i64 32, !dbg !415
  %51 = bitcast i8* %50 to i64*, !dbg !415
  store i64 0, i64* %51, align 8, !dbg !416, !tbaa !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  %52 = getelementptr inbounds i8, i8* %46, i64 8, !dbg !418
  %53 = bitcast i8* %52 to %struct.dictType**, !dbg !418
  store %struct.dictType* @callbackDict, %struct.dictType** %53, align 8, !dbg !419, !tbaa !391
  %54 = getelementptr inbounds i8, i8* %46, i64 40, !dbg !420
  %55 = bitcast i8* %54 to i8**, !dbg !420
  store i8* null, i8** %55, align 8, !dbg !421, !tbaa !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  %56 = getelementptr inbounds i8, i8* %7, i64 336, !dbg !424
  %57 = bitcast i8* %56 to i8**, !dbg !425
  store i8* %46, i8** %57, align 8, !dbg !425, !tbaa !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  %58 = bitcast i8* %7 to %struct.redisAsyncContext*, !dbg !297
  %59 = bitcast i8* %7 to i32*, !dbg !437
  %60 = load i32, i32* %59, align 8, !dbg !437, !tbaa !438
  store i32 %60, i32* %16, align 8, !dbg !439, !tbaa !319
  %61 = getelementptr inbounds i8, i8* %7, i64 4, !dbg !440
  store i8* %61, i8** %18, align 8, !dbg !441, !tbaa !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !443
  br label %62, !dbg !444

; <label>:62:                                     ; preds = %2, %10, %9
  %63 = phi %struct.redisAsyncContext* [ null, %9 ], [ %58, %10 ], [ null, %2 ], !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  ret %struct.redisAsyncContext* %63, !dbg !446
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local %struct.redisContext* @redisConnectNonBlock(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @redisFree(%struct.redisContext*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local %struct.redisAsyncContext* @redisAsyncConnectBind(i8*, i32, i8*) local_unnamed_addr #0 !dbg !447 {
  %4 = tail call %struct.redisContext* @redisConnectBindNonBlock(i8* %0, i32 %1, i8* %2) #7, !dbg !459
  %5 = bitcast %struct.redisContext* %4 to i8*, !dbg !463
  %6 = tail call i8* @realloc(i8* %5, i64 344) #7, !dbg !464
  %7 = icmp eq i8* %6, null, !dbg !465
  br i1 %7, label %8, label %9, !dbg !466

; <label>:8:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  br label %61, !dbg !471

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds i8, i8* %6, i64 136, !dbg !472
  %11 = bitcast i8* %10 to i32*, !dbg !472
  %12 = load i32, i32* %11, align 8, !dbg !473, !tbaa !309
  %13 = and i32 %12, -3, !dbg !473
  store i32 %13, i32* %11, align 8, !dbg !473, !tbaa !309
  %14 = getelementptr inbounds i8, i8* %6, i64 208, !dbg !474
  %15 = bitcast i8* %14 to i32*, !dbg !474
  store i32 0, i32* %15, align 8, !dbg !475, !tbaa !319
  %16 = getelementptr inbounds i8, i8* %6, i64 216, !dbg !476
  %17 = bitcast i8* %16 to i8**, !dbg !476
  %18 = bitcast i8* %16 to <2 x i8*>*, !dbg !477
  store <2 x i8*> zeroinitializer, <2 x i8*>* %18, align 8, !dbg !477, !tbaa !326
  %19 = getelementptr inbounds i8, i8* %6, i64 232, !dbg !478
  %20 = bitcast i8* %19 to i8**, !dbg !479
  store i8* null, i8** %20, align 8, !dbg !480, !tbaa !330
  %21 = getelementptr inbounds i8, i8* %6, i64 240, !dbg !481
  %22 = bitcast i8* %21 to <2 x void (i8*)*>*, !dbg !482
  store <2 x void (i8*)*> zeroinitializer, <2 x void (i8*)*>* %22, align 8, !dbg !482, !tbaa !326
  %23 = getelementptr inbounds i8, i8* %6, i64 256, !dbg !483
  %24 = bitcast i8* %23 to <2 x void (i8*)*>*, !dbg !484
  store <2 x void (i8*)*> zeroinitializer, <2 x void (i8*)*>* %24, align 8, !dbg !484, !tbaa !326
  %25 = getelementptr inbounds i8, i8* %6, i64 272, !dbg !485
  %26 = bitcast i8* %25 to void (i8*)**, !dbg !485
  store void (i8*)* null, void (i8*)** %26, align 8, !dbg !486, !tbaa !337
  %27 = getelementptr inbounds i8, i8* %6, i64 280, !dbg !487
  %28 = bitcast i8* %27 to <2 x void (%struct.redisAsyncContext*, i32)*>*, !dbg !488
  store <2 x void (%struct.redisAsyncContext*, i32)*> zeroinitializer, <2 x void (%struct.redisAsyncContext*, i32)*>* %28, align 8, !dbg !488, !tbaa !326
  %29 = getelementptr inbounds i8, i8* %6, i64 296, !dbg !489
  %30 = bitcast i8* %29 to <2 x %struct.redisCallback*>*, !dbg !490
  store <2 x %struct.redisCallback*> zeroinitializer, <2 x %struct.redisCallback*>* %30, align 8, !dbg !490, !tbaa !326
  %31 = getelementptr inbounds i8, i8* %6, i64 312, !dbg !491
  %32 = bitcast i8* %31 to <2 x %struct.redisCallback*>*, !dbg !492
  store <2 x %struct.redisCallback*> zeroinitializer, <2 x %struct.redisCallback*>* %32, align 8, !dbg !492, !tbaa !326
  %33 = tail call i8* @malloc(i64 48) #7, !dbg !496
  %34 = bitcast i8* %33 to %struct.dictEntry***, !dbg !504
  store %struct.dictEntry** null, %struct.dictEntry*** %34, align 8, !dbg !505, !tbaa !379
  %35 = getelementptr inbounds i8, i8* %33, i64 16, !dbg !506
  %36 = bitcast i8* %35 to <2 x i64>*, !dbg !507
  store <2 x i64> zeroinitializer, <2 x i64>* %36, align 8, !dbg !507, !tbaa !384
  %37 = getelementptr inbounds i8, i8* %33, i64 32, !dbg !508
  %38 = bitcast i8* %37 to i64*, !dbg !508
  store i64 0, i64* %38, align 8, !dbg !509, !tbaa !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  %39 = getelementptr inbounds i8, i8* %33, i64 8, !dbg !511
  %40 = bitcast i8* %39 to %struct.dictType**, !dbg !511
  store %struct.dictType* @callbackDict, %struct.dictType** %40, align 8, !dbg !512, !tbaa !391
  %41 = getelementptr inbounds i8, i8* %33, i64 40, !dbg !513
  %42 = bitcast i8* %41 to i8**, !dbg !513
  store i8* null, i8** %42, align 8, !dbg !514, !tbaa !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  %43 = getelementptr inbounds i8, i8* %6, i64 328, !dbg !517
  %44 = bitcast i8* %43 to i8**, !dbg !518
  store i8* %33, i8** %44, align 8, !dbg !518, !tbaa !399
  %45 = tail call i8* @malloc(i64 48) #7, !dbg !522
  %46 = bitcast i8* %45 to %struct.dictEntry***, !dbg !530
  store %struct.dictEntry** null, %struct.dictEntry*** %46, align 8, !dbg !531, !tbaa !379
  %47 = getelementptr inbounds i8, i8* %45, i64 16, !dbg !532
  %48 = bitcast i8* %47 to <2 x i64>*, !dbg !533
  store <2 x i64> zeroinitializer, <2 x i64>* %48, align 8, !dbg !533, !tbaa !384
  %49 = getelementptr inbounds i8, i8* %45, i64 32, !dbg !534
  %50 = bitcast i8* %49 to i64*, !dbg !534
  store i64 0, i64* %50, align 8, !dbg !535, !tbaa !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  %51 = getelementptr inbounds i8, i8* %45, i64 8, !dbg !537
  %52 = bitcast i8* %51 to %struct.dictType**, !dbg !537
  store %struct.dictType* @callbackDict, %struct.dictType** %52, align 8, !dbg !538, !tbaa !391
  %53 = getelementptr inbounds i8, i8* %45, i64 40, !dbg !539
  %54 = bitcast i8* %53 to i8**, !dbg !539
  store i8* null, i8** %54, align 8, !dbg !540, !tbaa !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !541
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  %55 = getelementptr inbounds i8, i8* %6, i64 336, !dbg !543
  %56 = bitcast i8* %55 to i8**, !dbg !544
  store i8* %45, i8** %56, align 8, !dbg !544, !tbaa !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  %57 = bitcast i8* %6 to %struct.redisAsyncContext*, !dbg !464
  %58 = bitcast i8* %6 to i32*, !dbg !547
  %59 = load i32, i32* %58, align 8, !dbg !547, !tbaa !438
  store i32 %59, i32* %15, align 8, !dbg !548, !tbaa !319
  %60 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !549
  store i8* %60, i8** %17, align 8, !dbg !550, !tbaa !442
  br label %61, !dbg !551

; <label>:61:                                     ; preds = %8, %9
  %62 = phi %struct.redisAsyncContext* [ null, %8 ], [ %57, %9 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  ret %struct.redisAsyncContext* %62, !dbg !552
}

; Function Attrs: noredzone
declare dso_local %struct.redisContext* @redisConnectBindNonBlock(i8*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisAsyncContext* @redisAsyncConnectBindWithReuse(i8*, i32, i8*) local_unnamed_addr #0 !dbg !553 {
  %4 = tail call %struct.redisContext* @redisConnectBindNonBlockWithReuse(i8* %0, i32 %1, i8* %2) #7, !dbg !563
  %5 = bitcast %struct.redisContext* %4 to i8*, !dbg !567
  %6 = tail call i8* @realloc(i8* %5, i64 344) #7, !dbg !568
  %7 = icmp eq i8* %6, null, !dbg !569
  br i1 %7, label %8, label %9, !dbg !570

; <label>:8:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  br label %61, !dbg !575

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds i8, i8* %6, i64 136, !dbg !576
  %11 = bitcast i8* %10 to i32*, !dbg !576
  %12 = load i32, i32* %11, align 8, !dbg !577, !tbaa !309
  %13 = and i32 %12, -3, !dbg !577
  store i32 %13, i32* %11, align 8, !dbg !577, !tbaa !309
  %14 = getelementptr inbounds i8, i8* %6, i64 208, !dbg !578
  %15 = bitcast i8* %14 to i32*, !dbg !578
  store i32 0, i32* %15, align 8, !dbg !579, !tbaa !319
  %16 = getelementptr inbounds i8, i8* %6, i64 216, !dbg !580
  %17 = bitcast i8* %16 to i8**, !dbg !580
  %18 = bitcast i8* %16 to <2 x i8*>*, !dbg !581
  store <2 x i8*> zeroinitializer, <2 x i8*>* %18, align 8, !dbg !581, !tbaa !326
  %19 = getelementptr inbounds i8, i8* %6, i64 232, !dbg !582
  %20 = bitcast i8* %19 to i8**, !dbg !583
  store i8* null, i8** %20, align 8, !dbg !584, !tbaa !330
  %21 = getelementptr inbounds i8, i8* %6, i64 240, !dbg !585
  %22 = bitcast i8* %21 to <2 x void (i8*)*>*, !dbg !586
  store <2 x void (i8*)*> zeroinitializer, <2 x void (i8*)*>* %22, align 8, !dbg !586, !tbaa !326
  %23 = getelementptr inbounds i8, i8* %6, i64 256, !dbg !587
  %24 = bitcast i8* %23 to <2 x void (i8*)*>*, !dbg !588
  store <2 x void (i8*)*> zeroinitializer, <2 x void (i8*)*>* %24, align 8, !dbg !588, !tbaa !326
  %25 = getelementptr inbounds i8, i8* %6, i64 272, !dbg !589
  %26 = bitcast i8* %25 to void (i8*)**, !dbg !589
  store void (i8*)* null, void (i8*)** %26, align 8, !dbg !590, !tbaa !337
  %27 = getelementptr inbounds i8, i8* %6, i64 280, !dbg !591
  %28 = bitcast i8* %27 to <2 x void (%struct.redisAsyncContext*, i32)*>*, !dbg !592
  store <2 x void (%struct.redisAsyncContext*, i32)*> zeroinitializer, <2 x void (%struct.redisAsyncContext*, i32)*>* %28, align 8, !dbg !592, !tbaa !326
  %29 = getelementptr inbounds i8, i8* %6, i64 296, !dbg !593
  %30 = bitcast i8* %29 to <2 x %struct.redisCallback*>*, !dbg !594
  store <2 x %struct.redisCallback*> zeroinitializer, <2 x %struct.redisCallback*>* %30, align 8, !dbg !594, !tbaa !326
  %31 = getelementptr inbounds i8, i8* %6, i64 312, !dbg !595
  %32 = bitcast i8* %31 to <2 x %struct.redisCallback*>*, !dbg !596
  store <2 x %struct.redisCallback*> zeroinitializer, <2 x %struct.redisCallback*>* %32, align 8, !dbg !596, !tbaa !326
  %33 = tail call i8* @malloc(i64 48) #7, !dbg !600
  %34 = bitcast i8* %33 to %struct.dictEntry***, !dbg !608
  store %struct.dictEntry** null, %struct.dictEntry*** %34, align 8, !dbg !609, !tbaa !379
  %35 = getelementptr inbounds i8, i8* %33, i64 16, !dbg !610
  %36 = bitcast i8* %35 to <2 x i64>*, !dbg !611
  store <2 x i64> zeroinitializer, <2 x i64>* %36, align 8, !dbg !611, !tbaa !384
  %37 = getelementptr inbounds i8, i8* %33, i64 32, !dbg !612
  %38 = bitcast i8* %37 to i64*, !dbg !612
  store i64 0, i64* %38, align 8, !dbg !613, !tbaa !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  %39 = getelementptr inbounds i8, i8* %33, i64 8, !dbg !615
  %40 = bitcast i8* %39 to %struct.dictType**, !dbg !615
  store %struct.dictType* @callbackDict, %struct.dictType** %40, align 8, !dbg !616, !tbaa !391
  %41 = getelementptr inbounds i8, i8* %33, i64 40, !dbg !617
  %42 = bitcast i8* %41 to i8**, !dbg !617
  store i8* null, i8** %42, align 8, !dbg !618, !tbaa !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  %43 = getelementptr inbounds i8, i8* %6, i64 328, !dbg !621
  %44 = bitcast i8* %43 to i8**, !dbg !622
  store i8* %33, i8** %44, align 8, !dbg !622, !tbaa !399
  %45 = tail call i8* @malloc(i64 48) #7, !dbg !626
  %46 = bitcast i8* %45 to %struct.dictEntry***, !dbg !634
  store %struct.dictEntry** null, %struct.dictEntry*** %46, align 8, !dbg !635, !tbaa !379
  %47 = getelementptr inbounds i8, i8* %45, i64 16, !dbg !636
  %48 = bitcast i8* %47 to <2 x i64>*, !dbg !637
  store <2 x i64> zeroinitializer, <2 x i64>* %48, align 8, !dbg !637, !tbaa !384
  %49 = getelementptr inbounds i8, i8* %45, i64 32, !dbg !638
  %50 = bitcast i8* %49 to i64*, !dbg !638
  store i64 0, i64* %50, align 8, !dbg !639, !tbaa !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  %51 = getelementptr inbounds i8, i8* %45, i64 8, !dbg !641
  %52 = bitcast i8* %51 to %struct.dictType**, !dbg !641
  store %struct.dictType* @callbackDict, %struct.dictType** %52, align 8, !dbg !642, !tbaa !391
  %53 = getelementptr inbounds i8, i8* %45, i64 40, !dbg !643
  %54 = bitcast i8* %53 to i8**, !dbg !643
  store i8* null, i8** %54, align 8, !dbg !644, !tbaa !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !646
  %55 = getelementptr inbounds i8, i8* %6, i64 336, !dbg !647
  %56 = bitcast i8* %55 to i8**, !dbg !648
  store i8* %45, i8** %56, align 8, !dbg !648, !tbaa !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  %57 = bitcast i8* %6 to %struct.redisAsyncContext*, !dbg !568
  %58 = bitcast i8* %6 to i32*, !dbg !651
  %59 = load i32, i32* %58, align 8, !dbg !651, !tbaa !438
  store i32 %59, i32* %15, align 8, !dbg !652, !tbaa !319
  %60 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !653
  store i8* %60, i8** %17, align 8, !dbg !654, !tbaa !442
  br label %61, !dbg !655

; <label>:61:                                     ; preds = %8, %9
  %62 = phi %struct.redisAsyncContext* [ null, %8 ], [ %57, %9 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !656
  ret %struct.redisAsyncContext* %62, !dbg !656
}

; Function Attrs: noredzone
declare dso_local %struct.redisContext* @redisConnectBindNonBlockWithReuse(i8*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisAsyncContext* @redisAsyncConnectUnix(i8*) local_unnamed_addr #0 !dbg !657 {
  %2 = tail call %struct.redisContext* @redisConnectUnixNonBlock(i8* %0) #7, !dbg !665
  %3 = icmp eq %struct.redisContext* %2, null, !dbg !667
  br i1 %3, label %61, label %4, !dbg !669

; <label>:4:                                      ; preds = %1
  %5 = bitcast %struct.redisContext* %2 to i8*, !dbg !672
  %6 = tail call i8* @realloc(i8* %5, i64 344) #7, !dbg !673
  %7 = icmp eq i8* %6, null, !dbg !674
  br i1 %7, label %8, label %9, !dbg !675

; <label>:8:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  tail call void @redisFree(%struct.redisContext* nonnull %2) #7, !dbg !678
  br label %61, !dbg !681

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds i8, i8* %6, i64 136, !dbg !682
  %11 = bitcast i8* %10 to i32*, !dbg !682
  %12 = load i32, i32* %11, align 8, !dbg !683, !tbaa !309
  %13 = and i32 %12, -3, !dbg !683
  store i32 %13, i32* %11, align 8, !dbg !683, !tbaa !309
  %14 = getelementptr inbounds i8, i8* %6, i64 208, !dbg !684
  %15 = bitcast i8* %14 to i32*, !dbg !684
  store i32 0, i32* %15, align 8, !dbg !685, !tbaa !319
  %16 = getelementptr inbounds i8, i8* %6, i64 216, !dbg !686
  %17 = bitcast i8* %16 to i8**, !dbg !686
  %18 = bitcast i8* %16 to <2 x i8*>*, !dbg !687
  store <2 x i8*> zeroinitializer, <2 x i8*>* %18, align 8, !dbg !687, !tbaa !326
  %19 = getelementptr inbounds i8, i8* %6, i64 232, !dbg !688
  %20 = bitcast i8* %19 to i8**, !dbg !689
  store i8* null, i8** %20, align 8, !dbg !690, !tbaa !330
  %21 = getelementptr inbounds i8, i8* %6, i64 240, !dbg !691
  %22 = bitcast i8* %21 to <2 x void (i8*)*>*, !dbg !692
  store <2 x void (i8*)*> zeroinitializer, <2 x void (i8*)*>* %22, align 8, !dbg !692, !tbaa !326
  %23 = getelementptr inbounds i8, i8* %6, i64 256, !dbg !693
  %24 = bitcast i8* %23 to <2 x void (i8*)*>*, !dbg !694
  store <2 x void (i8*)*> zeroinitializer, <2 x void (i8*)*>* %24, align 8, !dbg !694, !tbaa !326
  %25 = getelementptr inbounds i8, i8* %6, i64 272, !dbg !695
  %26 = bitcast i8* %25 to void (i8*)**, !dbg !695
  store void (i8*)* null, void (i8*)** %26, align 8, !dbg !696, !tbaa !337
  %27 = getelementptr inbounds i8, i8* %6, i64 280, !dbg !697
  %28 = bitcast i8* %27 to <2 x void (%struct.redisAsyncContext*, i32)*>*, !dbg !698
  store <2 x void (%struct.redisAsyncContext*, i32)*> zeroinitializer, <2 x void (%struct.redisAsyncContext*, i32)*>* %28, align 8, !dbg !698, !tbaa !326
  %29 = getelementptr inbounds i8, i8* %6, i64 296, !dbg !699
  %30 = bitcast i8* %29 to <2 x %struct.redisCallback*>*, !dbg !700
  store <2 x %struct.redisCallback*> zeroinitializer, <2 x %struct.redisCallback*>* %30, align 8, !dbg !700, !tbaa !326
  %31 = getelementptr inbounds i8, i8* %6, i64 312, !dbg !701
  %32 = bitcast i8* %31 to <2 x %struct.redisCallback*>*, !dbg !702
  store <2 x %struct.redisCallback*> zeroinitializer, <2 x %struct.redisCallback*>* %32, align 8, !dbg !702, !tbaa !326
  %33 = tail call i8* @malloc(i64 48) #7, !dbg !706
  %34 = bitcast i8* %33 to %struct.dictEntry***, !dbg !714
  store %struct.dictEntry** null, %struct.dictEntry*** %34, align 8, !dbg !715, !tbaa !379
  %35 = getelementptr inbounds i8, i8* %33, i64 16, !dbg !716
  %36 = bitcast i8* %35 to <2 x i64>*, !dbg !717
  store <2 x i64> zeroinitializer, <2 x i64>* %36, align 8, !dbg !717, !tbaa !384
  %37 = getelementptr inbounds i8, i8* %33, i64 32, !dbg !718
  %38 = bitcast i8* %37 to i64*, !dbg !718
  store i64 0, i64* %38, align 8, !dbg !719, !tbaa !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  %39 = getelementptr inbounds i8, i8* %33, i64 8, !dbg !721
  %40 = bitcast i8* %39 to %struct.dictType**, !dbg !721
  store %struct.dictType* @callbackDict, %struct.dictType** %40, align 8, !dbg !722, !tbaa !391
  %41 = getelementptr inbounds i8, i8* %33, i64 40, !dbg !723
  %42 = bitcast i8* %41 to i8**, !dbg !723
  store i8* null, i8** %42, align 8, !dbg !724, !tbaa !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  %43 = getelementptr inbounds i8, i8* %6, i64 328, !dbg !727
  %44 = bitcast i8* %43 to i8**, !dbg !728
  store i8* %33, i8** %44, align 8, !dbg !728, !tbaa !399
  %45 = tail call i8* @malloc(i64 48) #7, !dbg !732
  %46 = bitcast i8* %45 to %struct.dictEntry***, !dbg !740
  store %struct.dictEntry** null, %struct.dictEntry*** %46, align 8, !dbg !741, !tbaa !379
  %47 = getelementptr inbounds i8, i8* %45, i64 16, !dbg !742
  %48 = bitcast i8* %47 to <2 x i64>*, !dbg !743
  store <2 x i64> zeroinitializer, <2 x i64>* %48, align 8, !dbg !743, !tbaa !384
  %49 = getelementptr inbounds i8, i8* %45, i64 32, !dbg !744
  %50 = bitcast i8* %49 to i64*, !dbg !744
  store i64 0, i64* %50, align 8, !dbg !745, !tbaa !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !746
  %51 = getelementptr inbounds i8, i8* %45, i64 8, !dbg !747
  %52 = bitcast i8* %51 to %struct.dictType**, !dbg !747
  store %struct.dictType* @callbackDict, %struct.dictType** %52, align 8, !dbg !748, !tbaa !391
  %53 = getelementptr inbounds i8, i8* %45, i64 40, !dbg !749
  %54 = bitcast i8* %53 to i8**, !dbg !749
  store i8* null, i8** %54, align 8, !dbg !750, !tbaa !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !752
  %55 = getelementptr inbounds i8, i8* %6, i64 336, !dbg !753
  %56 = bitcast i8* %55 to i8**, !dbg !754
  store i8* %45, i8** %56, align 8, !dbg !754, !tbaa !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  %57 = bitcast i8* %6 to %struct.redisAsyncContext*, !dbg !673
  %58 = bitcast i8* %6 to i32*, !dbg !759
  %59 = load i32, i32* %58, align 8, !dbg !759, !tbaa !438
  store i32 %59, i32* %15, align 8, !dbg !760, !tbaa !319
  %60 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !761
  store i8* %60, i8** %17, align 8, !dbg !762, !tbaa !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br label %61, !dbg !764

; <label>:61:                                     ; preds = %1, %9, %8
  %62 = phi %struct.redisAsyncContext* [ null, %8 ], [ %57, %9 ], [ null, %1 ], !dbg !765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  ret %struct.redisAsyncContext* %62, !dbg !766
}

; Function Attrs: noredzone
declare dso_local %struct.redisContext* @redisConnectUnixNonBlock(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisAsyncSetConnectCallback(%struct.redisAsyncContext* nocapture, void (%struct.redisAsyncContext*, i32)*) local_unnamed_addr #0 !dbg !767 {
  %3 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 6, !dbg !775
  %4 = load void (%struct.redisAsyncContext*, i32)*, void (%struct.redisAsyncContext*, i32)** %3, align 8, !dbg !775, !tbaa !777
  %5 = icmp eq void (%struct.redisAsyncContext*, i32)* %4, null, !dbg !778
  br i1 %5, label %6, label %13, !dbg !779

; <label>:6:                                      ; preds = %2
  store void (%struct.redisAsyncContext*, i32)* %1, void (%struct.redisAsyncContext*, i32)** %3, align 8, !dbg !780, !tbaa !777
  %7 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 3, !dbg !782
  %8 = load void (i8*)*, void (i8*)** %7, align 8, !dbg !782, !tbaa !785
  %9 = icmp eq void (i8*)* %8, null, !dbg !782
  br i1 %9, label %13, label %10, !dbg !786

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 0, !dbg !782
  %12 = load i8*, i8** %11, align 8, !dbg !782, !tbaa !330
  tail call void %8(i8* %12) #7, !dbg !782
  br label %13, !dbg !782

; <label>:13:                                     ; preds = %2, %10, %6
  %14 = phi i32 [ 0, %6 ], [ 0, %10 ], [ -1, %2 ], !dbg !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !788
  ret i32 %14, !dbg !788
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisAsyncSetDisconnectCallback(%struct.redisAsyncContext* nocapture, void (%struct.redisAsyncContext*, i32)*) local_unnamed_addr #0 !dbg !789 {
  %3 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 5, !dbg !797
  %4 = load void (%struct.redisAsyncContext*, i32)*, void (%struct.redisAsyncContext*, i32)** %3, align 8, !dbg !797, !tbaa !799
  %5 = icmp eq void (%struct.redisAsyncContext*, i32)* %4, null, !dbg !800
  br i1 %5, label %6, label %7, !dbg !801

; <label>:6:                                      ; preds = %2
  store void (%struct.redisAsyncContext*, i32)* %1, void (%struct.redisAsyncContext*, i32)** %3, align 8, !dbg !802, !tbaa !799
  br label %7, !dbg !804

; <label>:7:                                      ; preds = %2, %6
  %8 = phi i32 [ 0, %6 ], [ -1, %2 ], !dbg !805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !806
  ret i32 %8, !dbg !806
}

; Function Attrs: noredzone nounwind
define dso_local void @redisAsyncFree(%struct.redisAsyncContext*) local_unnamed_addr #0 !dbg !807 {
  %2 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3, !dbg !813
  %3 = load i32, i32* %2, align 8, !dbg !814, !tbaa !309
  %4 = or i32 %3, 8, !dbg !814
  store i32 %4, i32* %2, align 8, !dbg !814, !tbaa !309
  %5 = and i32 %3, 16, !dbg !815
  %6 = icmp eq i32 %5, 0, !dbg !815
  br i1 %6, label %7, label %8, !dbg !817

; <label>:7:                                      ; preds = %1
  tail call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #8, !dbg !818
  br label %8, !dbg !818

; <label>:8:                                      ; preds = %1, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  ret void, !dbg !819
}

; Function Attrs: noredzone nounwind
define internal fastcc void @__redisAsyncFree(%struct.redisAsyncContext*) unnamed_addr #0 !dbg !820 {
  %2 = alloca %struct.redisCallback, align 8
  %3 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, !dbg !836
  %4 = bitcast %struct.redisCallback* %2 to i8*, !dbg !838
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #5, !dbg !838
  %5 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, !dbg !839
  %6 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %5, i64 0, i32 0, !dbg !852
  %7 = load %struct.redisCallback*, %struct.redisCallback** %6, align 8, !dbg !852, !tbaa !853
  %8 = icmp eq %struct.redisCallback* %7, null, !dbg !855
  br i1 %8, label %22, label %9, !dbg !857

; <label>:9:                                      ; preds = %1
  %10 = bitcast %struct.redisCallbackList* %5 to i64*
  %11 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1
  %12 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %2, i64 0, i32 1
  %13 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %2, i64 0, i32 2
  br label %15, !dbg !857

; <label>:15:                                     ; preds = %9, %46
  %16 = phi %struct.redisCallback* [ %7, %9 ], [ %47, %46 ]
  %17 = bitcast %struct.redisCallback* %16 to i64*, !dbg !858
  %18 = load i64, i64* %17, align 8, !dbg !858, !tbaa !860
  store i64 %18, i64* %10, align 8, !dbg !862, !tbaa !853
  %19 = load %struct.redisCallback*, %struct.redisCallback** %11, align 8, !dbg !863, !tbaa !865
  %20 = icmp eq %struct.redisCallback* %16, %19, !dbg !866
  br i1 %20, label %21, label %35, !dbg !867

; <label>:21:                                     ; preds = %15
  store %struct.redisCallback* null, %struct.redisCallback** %11, align 8, !dbg !868, !tbaa !865
  br label %35, !dbg !869

; <label>:22:                                     ; preds = %46, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  %23 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 0, !dbg !871
  %24 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %23, i64 0, i32 0, !dbg !875
  %25 = load %struct.redisCallback*, %struct.redisCallback** %24, align 8, !dbg !875, !tbaa !853
  %26 = icmp eq %struct.redisCallback* %25, null, !dbg !877
  br i1 %26, label %27, label %29, !dbg !878

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3
  br label %70, !dbg !878

; <label>:29:                                     ; preds = %22
  %30 = bitcast %struct.redisCallbackList* %23 to i64*
  %31 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 0, i32 1
  %32 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %2, i64 0, i32 1
  %33 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3
  %34 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %2, i64 0, i32 2
  br label %49, !dbg !878

; <label>:35:                                     ; preds = %15, %21
  %36 = bitcast %struct.redisCallback* %16 to i8*, !dbg !879
  %37 = call i8* @memcpy(i8* nonnull %4, i8* %36, i64 24) #7, !dbg !881
  call void @free(i8* %36) #7, !dbg !882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  %38 = load void (%struct.redisAsyncContext*, i8*, i8*)*, void (%struct.redisAsyncContext*, i8*, i8*)** %12, align 8, !dbg !895, !tbaa !897
  %39 = icmp eq void (%struct.redisAsyncContext*, i8*, i8*)* %38, null, !dbg !898
  br i1 %39, label %46, label %40, !dbg !899

; <label>:40:                                     ; preds = %35
  %41 = load i32, i32* %13, align 8, !dbg !901, !tbaa !309
  %42 = or i32 %41, 16, !dbg !901
  store i32 %42, i32* %13, align 8, !dbg !901, !tbaa !309
  %43 = load i8*, i8** %14, align 8, !dbg !903, !tbaa !904
  call void %38(%struct.redisAsyncContext* nonnull %0, i8* null, i8* %43) #7, !dbg !905
  %44 = load i32, i32* %13, align 8, !dbg !906, !tbaa !309
  %45 = and i32 %44, -17, !dbg !906
  store i32 %45, i32* %13, align 8, !dbg !906, !tbaa !309
  br label %46, !dbg !907

; <label>:46:                                     ; preds = %35, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !908
  %47 = load %struct.redisCallback*, %struct.redisCallback** %6, align 8, !dbg !852, !tbaa !853
  %48 = icmp eq %struct.redisCallback* %47, null, !dbg !855
  br i1 %48, label %22, label %15, !dbg !857, !llvm.loop !909

; <label>:49:                                     ; preds = %29, %67
  %50 = phi %struct.redisCallback* [ %25, %29 ], [ %68, %67 ]
  %51 = bitcast %struct.redisCallback* %50 to i64*, !dbg !912
  %52 = load i64, i64* %51, align 8, !dbg !912, !tbaa !860
  store i64 %52, i64* %30, align 8, !dbg !913, !tbaa !853
  %53 = load %struct.redisCallback*, %struct.redisCallback** %31, align 8, !dbg !914, !tbaa !865
  %54 = icmp eq %struct.redisCallback* %50, %53, !dbg !915
  br i1 %54, label %55, label %56, !dbg !916

; <label>:55:                                     ; preds = %49
  store %struct.redisCallback* null, %struct.redisCallback** %31, align 8, !dbg !917, !tbaa !865
  br label %56, !dbg !918

; <label>:56:                                     ; preds = %49, %55
  %57 = bitcast %struct.redisCallback* %50 to i8*, !dbg !919
  %58 = call i8* @memcpy(i8* nonnull %4, i8* %57, i64 24) #7, !dbg !920
  call void @free(i8* %57) #7, !dbg !921
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !922
  %59 = load void (%struct.redisAsyncContext*, i8*, i8*)*, void (%struct.redisAsyncContext*, i8*, i8*)** %32, align 8, !dbg !927, !tbaa !897
  %60 = icmp eq void (%struct.redisAsyncContext*, i8*, i8*)* %59, null, !dbg !928
  br i1 %60, label %67, label %61, !dbg !929

; <label>:61:                                     ; preds = %56
  %62 = load i32, i32* %33, align 8, !dbg !931, !tbaa !309
  %63 = or i32 %62, 16, !dbg !931
  store i32 %63, i32* %33, align 8, !dbg !931, !tbaa !309
  %64 = load i8*, i8** %34, align 8, !dbg !932, !tbaa !904
  call void %59(%struct.redisAsyncContext* nonnull %0, i8* null, i8* %64) #7, !dbg !933
  %65 = load i32, i32* %33, align 8, !dbg !934, !tbaa !309
  %66 = and i32 %65, -17, !dbg !934
  store i32 %66, i32* %33, align 8, !dbg !934, !tbaa !309
  br label %67, !dbg !935

; <label>:67:                                     ; preds = %56, %61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  %68 = load %struct.redisCallback*, %struct.redisCallback** %24, align 8, !dbg !875, !tbaa !853
  %69 = icmp eq %struct.redisCallback* %68, null, !dbg !877
  br i1 %69, label %70, label %49, !dbg !878, !llvm.loop !937

; <label>:70:                                     ; preds = %67, %27
  %71 = phi i32* [ %28, %27 ], [ %33, %67 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !922
  %72 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 1, !dbg !940
  %73 = bitcast %struct.dict** %72 to i64*, !dbg !940
  %74 = load i64, i64* %73, align 8, !dbg !940, !tbaa !399
  %75 = call i8* @malloc(i64 32) #7, !dbg !949
  %76 = bitcast i8* %75 to i64*, !dbg !951
  store i64 %74, i64* %76, align 8, !dbg !951, !tbaa !952
  %77 = getelementptr inbounds i8, i8* %75, i64 8, !dbg !954
  %78 = bitcast i8* %77 to i32*, !dbg !954
  store i32 -1, i32* %78, align 8, !dbg !955, !tbaa !956
  %79 = getelementptr inbounds i8, i8* %75, i64 16, !dbg !957
  %80 = bitcast i8* %79 to %struct.dictEntry**, !dbg !957
  %81 = getelementptr inbounds i8, i8* %75, i64 24, !dbg !958
  %82 = bitcast i8* %79 to <2 x %struct.dictEntry*>*, !dbg !959
  store <2 x %struct.dictEntry*> zeroinitializer, <2 x %struct.dictEntry*>* %82, align 8, !dbg !959, !tbaa !326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !960
  %83 = bitcast i8* %75 to %struct.dict**
  %84 = bitcast i8* %81 to i64*
  %85 = bitcast i8* %79 to i64*
  br label %86, !dbg !962

; <label>:86:                                     ; preds = %124, %70
  %87 = phi %struct.dictEntry* [ null, %70 ], [ %125, %124 ], !dbg !963
  %88 = icmp eq %struct.dictEntry* %87, null, !dbg !972
  br i1 %88, label %89, label %119, !dbg !973

; <label>:89:                                     ; preds = %86
  %90 = load i32, i32* %78, align 8, !dbg !974, !tbaa !956
  %91 = add nsw i32 %90, 1, !dbg !974
  store i32 %91, i32* %78, align 8, !dbg !974, !tbaa !956
  %92 = load %struct.dict*, %struct.dict** %83, align 8, !dbg !976, !tbaa !952
  %93 = getelementptr inbounds %struct.dict, %struct.dict* %92, i64 0, i32 2, !dbg !978
  %94 = load i64, i64* %93, align 8, !dbg !978, !tbaa !979
  %95 = trunc i64 %94 to i32, !dbg !980
  %96 = icmp slt i32 %91, %95, !dbg !981
  br i1 %96, label %113, label %97, !dbg !982

; <label>:97:                                     ; preds = %89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !983
  call void @free(i8* nonnull %75) #7, !dbg !992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !993
  %98 = load %struct.dict*, %struct.dict** %72, align 8, !dbg !994, !tbaa !399
  call fastcc void @dictRelease(%struct.dict* %98) #8, !dbg !995
  %99 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 2, !dbg !996
  %100 = bitcast %struct.dict** %99 to i64*, !dbg !996
  %101 = load i64, i64* %100, align 8, !dbg !996, !tbaa !426
  %102 = call i8* @malloc(i64 32) #7, !dbg !999
  %103 = bitcast i8* %102 to i64*, !dbg !1001
  store i64 %101, i64* %103, align 8, !dbg !1001, !tbaa !952
  %104 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !1002
  %105 = bitcast i8* %104 to i32*, !dbg !1002
  store i32 -1, i32* %105, align 8, !dbg !1003, !tbaa !956
  %106 = getelementptr inbounds i8, i8* %102, i64 16, !dbg !1004
  %107 = bitcast i8* %106 to %struct.dictEntry**, !dbg !1004
  %108 = getelementptr inbounds i8, i8* %102, i64 24, !dbg !1005
  %109 = bitcast i8* %106 to <2 x %struct.dictEntry*>*, !dbg !1006
  store <2 x %struct.dictEntry*> zeroinitializer, <2 x %struct.dictEntry*>* %109, align 8, !dbg !1006, !tbaa !326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  %110 = bitcast i8* %102 to %struct.dict**
  %111 = bitcast i8* %108 to i64*
  %112 = bitcast i8* %106 to i64*
  br label %147, !dbg !1008

; <label>:113:                                    ; preds = %89
  %114 = getelementptr inbounds %struct.dict, %struct.dict* %92, i64 0, i32 0, !dbg !1009
  %115 = load %struct.dictEntry**, %struct.dictEntry*** %114, align 8, !dbg !1009, !tbaa !379
  %116 = sext i32 %91 to i64, !dbg !1010
  %117 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %115, i64 %116, !dbg !1010
  %118 = bitcast %struct.dictEntry** %117 to i64*, !dbg !1010
  br label %119, !dbg !1011

; <label>:119:                                    ; preds = %86, %113
  %120 = phi i64* [ %118, %113 ], [ %84, %86 ]
  %121 = load i64, i64* %120, align 8, !dbg !1012, !tbaa !326
  store i64 %121, i64* %85, align 8, !dbg !1012, !tbaa !1013
  %122 = inttoptr i64 %121 to %struct.dictEntry*
  %123 = icmp eq i64 %121, 0, !dbg !1014
  br i1 %123, label %124, label %126, !dbg !1016

; <label>:124:                                    ; preds = %119, %145
  %125 = phi %struct.dictEntry* [ %122, %119 ], [ %146, %145 ]
  br label %86, !dbg !972, !llvm.loop !1017

; <label>:126:                                    ; preds = %119
  %127 = inttoptr i64 %121 to %struct.dictEntry*
  %128 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %127, i64 0, i32 2, !dbg !1019
  %129 = bitcast %struct.dictEntry** %128 to i64*, !dbg !1019
  %130 = load i64, i64* %129, align 8, !dbg !1019, !tbaa !1021
  store i64 %130, i64* %84, align 8, !dbg !1023, !tbaa !1024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !983
  %131 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %127, i64 0, i32 1, !dbg !1025
  %132 = bitcast i8** %131 to %struct.redisCallback**, !dbg !1025
  %133 = load %struct.redisCallback*, %struct.redisCallback** %132, align 8, !dbg !1025, !tbaa !1026
  %134 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %133, i64 0, i32 1, !dbg !1031
  %135 = load void (%struct.redisAsyncContext*, i8*, i8*)*, void (%struct.redisAsyncContext*, i8*, i8*)** %134, align 8, !dbg !1031, !tbaa !897
  %136 = icmp eq void (%struct.redisAsyncContext*, i8*, i8*)* %135, null, !dbg !1032
  br i1 %136, label %145, label %137, !dbg !1033

; <label>:137:                                    ; preds = %126
  %138 = load i32, i32* %71, align 8, !dbg !1035, !tbaa !309
  %139 = or i32 %138, 16, !dbg !1035
  store i32 %139, i32* %71, align 8, !dbg !1035, !tbaa !309
  %140 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %133, i64 0, i32 2, !dbg !1036
  %141 = load i8*, i8** %140, align 8, !dbg !1036, !tbaa !904
  call void %135(%struct.redisAsyncContext* %0, i8* null, i8* %141) #7, !dbg !1037
  %142 = load i32, i32* %71, align 8, !dbg !1038, !tbaa !309
  %143 = and i32 %142, -17, !dbg !1038
  store i32 %143, i32* %71, align 8, !dbg !1038, !tbaa !309
  %144 = load %struct.dictEntry*, %struct.dictEntry** %80, align 8, !dbg !963, !tbaa !1013
  br label %145, !dbg !1039

; <label>:145:                                    ; preds = %126, %137
  %146 = phi %struct.dictEntry* [ %127, %126 ], [ %144, %137 ], !dbg !963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1040
  br label %124, !dbg !962

; <label>:147:                                    ; preds = %174, %97
  %148 = phi %struct.dictEntry* [ null, %97 ], [ %175, %174 ], !dbg !1041
  %149 = icmp eq %struct.dictEntry* %148, null, !dbg !1043
  br i1 %149, label %150, label %169, !dbg !1044

; <label>:150:                                    ; preds = %147
  %151 = load i32, i32* %105, align 8, !dbg !1045, !tbaa !956
  %152 = add nsw i32 %151, 1, !dbg !1045
  store i32 %152, i32* %105, align 8, !dbg !1045, !tbaa !956
  %153 = load %struct.dict*, %struct.dict** %110, align 8, !dbg !1046, !tbaa !952
  %154 = getelementptr inbounds %struct.dict, %struct.dict* %153, i64 0, i32 2, !dbg !1047
  %155 = load i64, i64* %154, align 8, !dbg !1047, !tbaa !979
  %156 = trunc i64 %155 to i32, !dbg !1048
  %157 = icmp slt i32 %152, %156, !dbg !1049
  br i1 %157, label %163, label %158, !dbg !1050

; <label>:158:                                    ; preds = %150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1051
  call void @free(i8* nonnull %102) #7, !dbg !1054
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1055
  %159 = load %struct.dict*, %struct.dict** %99, align 8, !dbg !1056, !tbaa !426
  call fastcc void @dictRelease(%struct.dict* %159) #8, !dbg !1057
  %160 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 5, !dbg !1058
  %161 = load void (i8*)*, void (i8*)** %160, align 8, !dbg !1058, !tbaa !337
  %162 = icmp eq void (i8*)* %161, null, !dbg !1058
  br i1 %162, label %200, label %197, !dbg !1061

; <label>:163:                                    ; preds = %150
  %164 = getelementptr inbounds %struct.dict, %struct.dict* %153, i64 0, i32 0, !dbg !1062
  %165 = load %struct.dictEntry**, %struct.dictEntry*** %164, align 8, !dbg !1062, !tbaa !379
  %166 = sext i32 %152 to i64, !dbg !1063
  %167 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %165, i64 %166, !dbg !1063
  %168 = bitcast %struct.dictEntry** %167 to i64*, !dbg !1063
  br label %169, !dbg !1064

; <label>:169:                                    ; preds = %147, %163
  %170 = phi i64* [ %168, %163 ], [ %111, %147 ]
  %171 = load i64, i64* %170, align 8, !dbg !1065, !tbaa !326
  store i64 %171, i64* %112, align 8, !dbg !1065, !tbaa !1013
  %172 = inttoptr i64 %171 to %struct.dictEntry*
  %173 = icmp eq i64 %171, 0, !dbg !1066
  br i1 %173, label %174, label %176, !dbg !1067

; <label>:174:                                    ; preds = %169, %195
  %175 = phi %struct.dictEntry* [ %172, %169 ], [ %196, %195 ]
  br label %147, !dbg !1043, !llvm.loop !1068

; <label>:176:                                    ; preds = %169
  %177 = inttoptr i64 %171 to %struct.dictEntry*
  %178 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %177, i64 0, i32 2, !dbg !1070
  %179 = bitcast %struct.dictEntry** %178 to i64*, !dbg !1070
  %180 = load i64, i64* %179, align 8, !dbg !1070, !tbaa !1021
  store i64 %180, i64* %111, align 8, !dbg !1071, !tbaa !1024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1051
  %181 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %177, i64 0, i32 1, !dbg !1072
  %182 = bitcast i8** %181 to %struct.redisCallback**, !dbg !1072
  %183 = load %struct.redisCallback*, %struct.redisCallback** %182, align 8, !dbg !1072, !tbaa !1026
  %184 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %183, i64 0, i32 1, !dbg !1077
  %185 = load void (%struct.redisAsyncContext*, i8*, i8*)*, void (%struct.redisAsyncContext*, i8*, i8*)** %184, align 8, !dbg !1077, !tbaa !897
  %186 = icmp eq void (%struct.redisAsyncContext*, i8*, i8*)* %185, null, !dbg !1078
  br i1 %186, label %195, label %187, !dbg !1079

; <label>:187:                                    ; preds = %176
  %188 = load i32, i32* %71, align 8, !dbg !1081, !tbaa !309
  %189 = or i32 %188, 16, !dbg !1081
  store i32 %189, i32* %71, align 8, !dbg !1081, !tbaa !309
  %190 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %183, i64 0, i32 2, !dbg !1082
  %191 = load i8*, i8** %190, align 8, !dbg !1082, !tbaa !904
  call void %185(%struct.redisAsyncContext* %0, i8* null, i8* %191) #7, !dbg !1083
  %192 = load i32, i32* %71, align 8, !dbg !1084, !tbaa !309
  %193 = and i32 %192, -17, !dbg !1084
  store i32 %193, i32* %71, align 8, !dbg !1084, !tbaa !309
  %194 = load %struct.dictEntry*, %struct.dictEntry** %107, align 8, !dbg !1041, !tbaa !1013
  br label %195, !dbg !1085

; <label>:195:                                    ; preds = %176, %187
  %196 = phi %struct.dictEntry* [ %177, %176 ], [ %194, %187 ], !dbg !1041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1086
  br label %174, !dbg !1008

; <label>:197:                                    ; preds = %158
  %198 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 0, !dbg !1058
  %199 = load i8*, i8** %198, align 8, !dbg !1058, !tbaa !330
  call void %161(i8* %199) #7, !dbg !1058
  br label %200, !dbg !1058

; <label>:200:                                    ; preds = %158, %197
  %201 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 5, !dbg !1087
  %202 = load void (%struct.redisAsyncContext*, i32)*, void (%struct.redisAsyncContext*, i32)** %201, align 8, !dbg !1087, !tbaa !799
  %203 = icmp eq void (%struct.redisAsyncContext*, i32)* %202, null, !dbg !1089
  br i1 %203, label %217, label %204, !dbg !1090

; <label>:204:                                    ; preds = %200
  %205 = load i32, i32* %71, align 8, !dbg !1091, !tbaa !309
  %206 = and i32 %205, 2, !dbg !1092
  %207 = icmp eq i32 %206, 0, !dbg !1092
  br i1 %207, label %217, label %208, !dbg !1093

; <label>:208:                                    ; preds = %204
  %209 = and i32 %205, 8, !dbg !1094
  %210 = icmp eq i32 %209, 0, !dbg !1094
  br i1 %210, label %212, label %211, !dbg !1097

; <label>:211:                                    ; preds = %208
  call void %202(%struct.redisAsyncContext* nonnull %0, i32 0) #7, !dbg !1098
  br label %217, !dbg !1100

; <label>:212:                                    ; preds = %208
  %213 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !1101
  %214 = load i32, i32* %213, align 8, !dbg !1101, !tbaa !319
  %215 = icmp ne i32 %214, 0, !dbg !1103
  %216 = sext i1 %215 to i32, !dbg !1104
  call void %202(%struct.redisAsyncContext* nonnull %0, i32 %216) #7, !dbg !1105
  br label %217

; <label>:217:                                    ; preds = %204, %200, %211, %212
  call void @redisFree(%struct.redisContext* nonnull %3) #7, !dbg !1106
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #5, !dbg !1107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1107
  ret void, !dbg !1107
}

; Function Attrs: noredzone nounwind
define dso_local void @redisAsyncDisconnect(%struct.redisAsyncContext*) local_unnamed_addr #0 !dbg !1108 {
  %2 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3, !dbg !1114
  %3 = load i32, i32* %2, align 8, !dbg !1115, !tbaa !309
  %4 = or i32 %3, 4, !dbg !1115
  store i32 %4, i32* %2, align 8, !dbg !1115, !tbaa !309
  %5 = and i32 %3, 16, !dbg !1116
  %6 = icmp eq i32 %5, 0, !dbg !1116
  br i1 %6, label %7, label %21, !dbg !1118

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 0, !dbg !1119
  %9 = load %struct.redisCallback*, %struct.redisCallback** %8, align 8, !dbg !1119, !tbaa !1120
  %10 = icmp eq %struct.redisCallback* %9, null, !dbg !1121
  br i1 %10, label %11, label %21, !dbg !1122

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 0, !dbg !1132
  %13 = load i32, i32* %12, align 8, !dbg !1132, !tbaa !438
  %14 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !1133
  store i32 %13, i32* %14, align 8, !dbg !1134, !tbaa !319
  %15 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 1, i64 0, !dbg !1135
  %16 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 2, !dbg !1136
  store i8* %15, i8** %16, align 8, !dbg !1137, !tbaa !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1138
  %17 = icmp eq i32 %13, 0, !dbg !1139
  br i1 %17, label %18, label %19, !dbg !1141

; <label>:18:                                     ; preds = %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1147
  br label %20, !dbg !1148

; <label>:19:                                     ; preds = %11
  store i32 %4, i32* %2, align 8, !dbg !1150, !tbaa !309
  br label %20

; <label>:20:                                     ; preds = %18, %19
  tail call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #7, !dbg !1152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1153
  br label %21, !dbg !1154

; <label>:21:                                     ; preds = %1, %20, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1155
  ret void, !dbg !1155
}

; Function Attrs: noredzone nounwind
define dso_local void @redisProcessCallbacks(%struct.redisAsyncContext*) local_unnamed_addr #0 !dbg !1156 {
  %2 = alloca %struct.redisCallback, align 8
  %3 = alloca i8*, align 8
  %4 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, !dbg !1164
  %5 = bitcast %struct.redisCallback* %2 to i8*, !dbg !1166
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #5, !dbg !1166
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 24, i1 false), !dbg !1167
  %6 = bitcast i8** %3 to i8*, !dbg !1168
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1168
  store i8* null, i8** %3, align 8, !dbg !1169, !tbaa !326
  %7 = call i32 @redisGetReply(%struct.redisContext* %4, i8** nonnull %3) #7, !dbg !1170
  %8 = icmp eq i32 %7, 0, !dbg !1172
  br i1 %8, label %9, label %384, !dbg !1172

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
  br label %24, !dbg !1172

; <label>:24:                                     ; preds = %9, %381
  %25 = load i8*, i8** %3, align 8, !dbg !1173, !tbaa !326
  %26 = icmp eq i8* %25, null, !dbg !1176
  br i1 %26, label %27, label %98, !dbg !1177

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %15, align 8, !dbg !1178, !tbaa !309
  %29 = and i32 %28, 4, !dbg !1181
  %30 = icmp eq i32 %29, 0, !dbg !1181
  br i1 %30, label %77, label %31, !dbg !1182

; <label>:31:                                     ; preds = %27
  %32 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 4, !dbg !1183
  %33 = load i8*, i8** %32, align 8, !dbg !1183, !tbaa !1184
  %34 = getelementptr inbounds i8, i8* %33, i64 -1, !dbg !1194
  %35 = load i8, i8* %34, align 1, !dbg !1194, !tbaa !1195
  %36 = trunc i8 %35 to i3, !dbg !1197
  switch i3 %36, label %37 [
    i3 0, label %38
    i3 1, label %41
    i3 2, label %45
    i3 3, label %50
    i3 -4, label %55
  ], !dbg !1197

; <label>:37:                                     ; preds = %31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  br label %62, !dbg !1199

; <label>:38:                                     ; preds = %31
  %39 = lshr i8 %35, 3, !dbg !1200
  %40 = zext i8 %39 to i64, !dbg !1200
  br label %59, !dbg !1202

; <label>:41:                                     ; preds = %31
  %42 = getelementptr inbounds i8, i8* %33, i64 -3, !dbg !1203
  %43 = load i8, i8* %42, align 1, !dbg !1204, !tbaa !1195
  %44 = zext i8 %43 to i64, !dbg !1203
  br label %59, !dbg !1205

; <label>:45:                                     ; preds = %31
  %46 = getelementptr inbounds i8, i8* %33, i64 -5, !dbg !1206
  %47 = bitcast i8* %46 to i16*, !dbg !1207
  %48 = load i16, i16* %47, align 1, !dbg !1207, !tbaa !1208
  %49 = zext i16 %48 to i64, !dbg !1206
  br label %59, !dbg !1210

; <label>:50:                                     ; preds = %31
  %51 = getelementptr inbounds i8, i8* %33, i64 -9, !dbg !1211
  %52 = bitcast i8* %51 to i32*, !dbg !1212
  %53 = load i32, i32* %52, align 1, !dbg !1212, !tbaa !1213
  %54 = zext i32 %53 to i64, !dbg !1211
  br label %59, !dbg !1214

; <label>:55:                                     ; preds = %31
  %56 = getelementptr inbounds i8, i8* %33, i64 -17, !dbg !1215
  %57 = bitcast i8* %56 to i64*, !dbg !1216
  %58 = load i64, i64* %57, align 1, !dbg !1216, !tbaa !384
  br label %59, !dbg !1217

; <label>:59:                                     ; preds = %38, %41, %45, %50, %55
  %60 = phi i64 [ %58, %55 ], [ %54, %50 ], [ %49, %45 ], [ %44, %41 ], [ %40, %38 ], !dbg !1218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  %61 = icmp eq i64 %60, 0, !dbg !1219
  br i1 %61, label %62, label %77, !dbg !1199

; <label>:62:                                     ; preds = %37, %59
  %63 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 0, !dbg !1220
  %64 = load %struct.redisCallback*, %struct.redisCallback** %63, align 8, !dbg !1220, !tbaa !1120
  %65 = icmp eq %struct.redisCallback* %64, null, !dbg !1221
  br i1 %65, label %66, label %77, !dbg !1222

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 0, !dbg !1229
  %68 = load i32, i32* %67, align 8, !dbg !1229, !tbaa !438
  %69 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !1230
  store i32 %68, i32* %69, align 8, !dbg !1231, !tbaa !319
  %70 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 1, i64 0, !dbg !1232
  %71 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 2, !dbg !1233
  store i8* %70, i8** %71, align 8, !dbg !1234, !tbaa !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  %72 = icmp eq i32 %68, 0, !dbg !1236
  br i1 %72, label %73, label %74, !dbg !1237

; <label>:73:                                     ; preds = %66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  br label %76, !dbg !1243

; <label>:74:                                     ; preds = %66
  %75 = or i32 %28, 4, !dbg !1245
  store i32 %75, i32* %15, align 8, !dbg !1245, !tbaa !309
  br label %76

; <label>:76:                                     ; preds = %73, %74
  call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #7, !dbg !1246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  br label %418, !dbg !1248

; <label>:77:                                     ; preds = %27, %62, %59
  %78 = and i32 %28, 64, !dbg !1249
  %79 = icmp eq i32 %78, 0, !dbg !1249
  br i1 %79, label %418, label %80, !dbg !1251

; <label>:80:                                     ; preds = %77
  %81 = call i8* @malloc(i64 24) #7, !dbg !1261
  %82 = icmp eq i8* %81, null, !dbg !1263
  br i1 %82, label %97, label %83, !dbg !1265

; <label>:83:                                     ; preds = %80
  %84 = call i8* @memcpy(i8* nonnull %81, i8* nonnull %5, i64 24) #7, !dbg !1266
  %85 = bitcast i8* %81 to %struct.redisCallback**, !dbg !1269
  store %struct.redisCallback* null, %struct.redisCallback** %85, align 8, !dbg !1270, !tbaa !860
  %86 = load %struct.redisCallback*, %struct.redisCallback** %11, align 8, !dbg !1271, !tbaa !853
  %87 = icmp eq %struct.redisCallback* %86, null, !dbg !1273
  br i1 %87, label %88, label %90, !dbg !1274

; <label>:88:                                     ; preds = %83
  %89 = bitcast %struct.redisCallbackList* %10 to i8**, !dbg !1275
  store i8* %81, i8** %89, align 8, !dbg !1275, !tbaa !853
  br label %90, !dbg !1276

; <label>:90:                                     ; preds = %88, %83
  %91 = load %struct.redisCallback*, %struct.redisCallback** %14, align 8, !dbg !1277, !tbaa !865
  %92 = icmp eq %struct.redisCallback* %91, null, !dbg !1279
  br i1 %92, label %95, label %93, !dbg !1280

; <label>:93:                                     ; preds = %90
  %94 = bitcast %struct.redisCallback* %91 to i8**, !dbg !1281
  store i8* %81, i8** %94, align 8, !dbg !1281, !tbaa !860
  br label %95, !dbg !1282

; <label>:95:                                     ; preds = %93, %90
  %96 = bitcast %struct.redisCallback** %14 to i8**, !dbg !1283
  store i8* %81, i8** %96, align 8, !dbg !1283, !tbaa !865
  br label %97, !dbg !1284

; <label>:97:                                     ; preds = %80, %95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1285
  br label %418, !dbg !1286

; <label>:98:                                     ; preds = %24
  %99 = load %struct.redisCallback*, %struct.redisCallback** %11, align 8, !dbg !1291, !tbaa !853
  %100 = icmp eq %struct.redisCallback* %99, null, !dbg !1293
  br i1 %100, label %110, label %101, !dbg !1294

; <label>:101:                                    ; preds = %98
  %102 = bitcast %struct.redisCallback* %99 to i64*, !dbg !1295
  %103 = load i64, i64* %102, align 8, !dbg !1295, !tbaa !860
  store i64 %103, i64* %13, align 8, !dbg !1296, !tbaa !853
  %104 = load %struct.redisCallback*, %struct.redisCallback** %14, align 8, !dbg !1297, !tbaa !865
  %105 = icmp eq %struct.redisCallback* %99, %104, !dbg !1298
  br i1 %105, label %106, label %107, !dbg !1299

; <label>:106:                                    ; preds = %101
  store %struct.redisCallback* null, %struct.redisCallback** %14, align 8, !dbg !1300, !tbaa !865
  br label %107, !dbg !1301

; <label>:107:                                    ; preds = %101, %106
  %108 = bitcast %struct.redisCallback* %99 to i8*, !dbg !1302
  %109 = call i8* @memcpy(i8* nonnull %5, i8* %108, i64 24) #7, !dbg !1303
  call void @free(i8* %108) #7, !dbg !1304
  br label %353, !dbg !1305

; <label>:110:                                    ; preds = %98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  %111 = bitcast i8* %25 to i32*, !dbg !1307
  %112 = load i32, i32* %111, align 8, !dbg !1307, !tbaa !1310
  %113 = icmp eq i32 %112, 6, !dbg !1313
  br i1 %113, label %114, label %147, !dbg !1314

; <label>:114:                                    ; preds = %110
  %115 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 0, !dbg !1315
  store i32 2, i32* %115, align 8, !dbg !1317, !tbaa !438
  %116 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 1, i64 0, !dbg !1318
  %117 = getelementptr inbounds i8, i8* %25, i64 24, !dbg !1319
  %118 = bitcast i8* %117 to i8**, !dbg !1319
  %119 = load i8*, i8** %118, align 8, !dbg !1319, !tbaa !1320
  %120 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %116, i64 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %119) #7, !dbg !1321
  %121 = load %struct.redisReader*, %struct.redisReader** %16, align 8, !dbg !1322, !tbaa !1323
  %122 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %121, i64 0, i32 9, !dbg !1324
  %123 = load %struct.redisReplyObjectFunctions*, %struct.redisReplyObjectFunctions** %122, align 8, !dbg !1324, !tbaa !1325
  %124 = getelementptr inbounds %struct.redisReplyObjectFunctions, %struct.redisReplyObjectFunctions* %123, i64 0, i32 4, !dbg !1327
  %125 = load void (i8*)*, void (i8*)** %124, align 8, !dbg !1327, !tbaa !1328
  %126 = load i8*, i8** %3, align 8, !dbg !1330, !tbaa !326
  call void %125(i8* %126) #7, !dbg !1331
  %127 = load i32, i32* %115, align 8, !dbg !1337, !tbaa !438
  %128 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !1338
  store i32 %127, i32* %128, align 8, !dbg !1339, !tbaa !319
  %129 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 2, !dbg !1340
  store i8* %116, i8** %129, align 8, !dbg !1341, !tbaa !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1342
  %130 = icmp eq i32 %127, 0, !dbg !1343
  br i1 %130, label %131, label %143, !dbg !1344

; <label>:131:                                    ; preds = %114
  %132 = load %struct.redisCallback*, %struct.redisCallback** %11, align 8, !dbg !1348, !tbaa !853
  %133 = icmp eq %struct.redisCallback* %132, null, !dbg !1350
  br i1 %133, label %134, label %135, !dbg !1351

; <label>:134:                                    ; preds = %131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1352
  br label %146, !dbg !1353

; <label>:135:                                    ; preds = %131
  %136 = bitcast %struct.redisCallback* %132 to i64*, !dbg !1354
  %137 = load i64, i64* %136, align 8, !dbg !1354, !tbaa !860
  store i64 %137, i64* %13, align 8, !dbg !1355, !tbaa !853
  %138 = load %struct.redisCallback*, %struct.redisCallback** %14, align 8, !dbg !1356, !tbaa !865
  %139 = icmp eq %struct.redisCallback* %132, %138, !dbg !1357
  br i1 %139, label %140, label %141, !dbg !1358

; <label>:140:                                    ; preds = %135
  store %struct.redisCallback* null, %struct.redisCallback** %14, align 8, !dbg !1359, !tbaa !865
  br label %141, !dbg !1360

; <label>:141:                                    ; preds = %140, %135
  %142 = bitcast %struct.redisCallback* %132 to i8*, !dbg !1361
  call void @free(i8* %142) #7, !dbg !1362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1352
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 339, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.__redisAsyncDisconnect, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !1353
  unreachable, !dbg !1353

; <label>:143:                                    ; preds = %114
  %144 = load i32, i32* %15, align 8, !dbg !1364, !tbaa !309
  %145 = or i32 %144, 4, !dbg !1364
  store i32 %145, i32* %15, align 8, !dbg !1364, !tbaa !309
  br label %146

; <label>:146:                                    ; preds = %134, %143
  call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #7, !dbg !1365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  br label %418, !dbg !1367

; <label>:147:                                    ; preds = %110
  %148 = load i32, i32* %15, align 8, !dbg !1368, !tbaa !309
  %149 = and i32 %148, 96, !dbg !1368
  %150 = icmp eq i32 %149, 0, !dbg !1368
  br i1 %150, label %151, label %152, !dbg !1368

; <label>:151:                                    ; preds = %147
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 463, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.redisProcessCallbacks, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1368
  unreachable, !dbg !1368

; <label>:152:                                    ; preds = %147
  %153 = and i32 %148, 32, !dbg !1368
  %154 = icmp eq i32 %153, 0, !dbg !1368
  br i1 %154, label %354, label %155, !dbg !1369

; <label>:155:                                    ; preds = %152
  %156 = icmp eq i32 %112, 2, !dbg !1393
  br i1 %156, label %157, label %340, !dbg !1394

; <label>:157:                                    ; preds = %155
  %158 = getelementptr inbounds i8, i8* %25, i64 32, !dbg !1395
  %159 = bitcast i8* %158 to i64*, !dbg !1395
  %160 = load i64, i64* %159, align 8, !dbg !1395, !tbaa !1396
  %161 = icmp ugt i64 %160, 1, !dbg !1395
  br i1 %161, label %163, label %162, !dbg !1395

; <label>:162:                                    ; preds = %157
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 375, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.__redisGetSubscribeCallback, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !1395
  unreachable, !dbg !1395

; <label>:163:                                    ; preds = %157
  %164 = getelementptr inbounds i8, i8* %25, i64 40, !dbg !1397
  %165 = bitcast i8* %164 to %struct.redisReply***, !dbg !1397
  %166 = load %struct.redisReply**, %struct.redisReply*** %165, align 8, !dbg !1397, !tbaa !1398
  %167 = load %struct.redisReply*, %struct.redisReply** %166, align 8, !dbg !1397, !tbaa !326
  %168 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %167, i64 0, i32 0, !dbg !1397
  %169 = load i32, i32* %168, align 8, !dbg !1397, !tbaa !1310
  %170 = icmp eq i32 %169, 1, !dbg !1397
  br i1 %170, label %172, label %171, !dbg !1397

; <label>:171:                                    ; preds = %163
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 376, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.__redisGetSubscribeCallback, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !1397
  unreachable, !dbg !1397

; <label>:172:                                    ; preds = %163
  %173 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %167, i64 0, i32 3, !dbg !1399
  %174 = load i8*, i8** %173, align 8, !dbg !1399, !tbaa !1320
  %175 = load i8, i8* %174, align 1, !dbg !1401, !tbaa !1195
  %176 = call i8* @__locale_ctype_ptr() #7, !dbg !1401
  %177 = getelementptr inbounds i8, i8* %176, i64 1, !dbg !1401
  %178 = sext i8 %175 to i32, !dbg !1401
  %179 = sext i8 %175 to i64, !dbg !1401
  %180 = getelementptr inbounds i8, i8* %177, i64 %179, !dbg !1401
  %181 = load i8, i8* %180, align 1, !dbg !1401, !tbaa !1195
  %182 = and i8 %181, 3, !dbg !1401
  %183 = icmp eq i8 %182, 1, !dbg !1401
  %184 = add nsw i32 %178, 32, !dbg !1401
  %185 = select i1 %183, i32 %184, i32 %178, !dbg !1401
  %186 = icmp eq i32 %185, 112, !dbg !1402
  %187 = select i1 %186, %struct.dict** %22, %struct.dict** %23, !dbg !1404
  %188 = load %struct.dict*, %struct.dict** %187, align 8, !dbg !1405, !tbaa !326
  %189 = load %struct.redisReply**, %struct.redisReply*** %165, align 8, !dbg !1407, !tbaa !1398
  %190 = getelementptr inbounds %struct.redisReply*, %struct.redisReply** %189, i64 1, !dbg !1407
  %191 = load %struct.redisReply*, %struct.redisReply** %190, align 8, !dbg !1407, !tbaa !326
  %192 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %191, i64 0, i32 0, !dbg !1407
  %193 = load i32, i32* %192, align 8, !dbg !1407, !tbaa !1310
  %194 = icmp eq i32 %193, 1, !dbg !1407
  br i1 %194, label %196, label %195, !dbg !1407

; <label>:195:                                    ; preds = %172
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 386, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.__redisGetSubscribeCallback, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !1407
  unreachable, !dbg !1407

; <label>:196:                                    ; preds = %172
  %197 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %191, i64 0, i32 3, !dbg !1408
  %198 = load i8*, i8** %197, align 8, !dbg !1408, !tbaa !1320
  %199 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %191, i64 0, i32 2, !dbg !1409
  %200 = load i64, i64* %199, align 8, !dbg !1409, !tbaa !1410
  %201 = call i8* @sdsnewlen(i8* %198, i64 %200) #7, !dbg !1411
  %202 = getelementptr inbounds %struct.dict, %struct.dict* %188, i64 0, i32 2, !dbg !1424
  %203 = load i64, i64* %202, align 8, !dbg !1424, !tbaa !979
  %204 = icmp eq i64 %203, 0, !dbg !1426
  br i1 %204, label %242, label %205, !dbg !1427

; <label>:205:                                    ; preds = %196
  %206 = getelementptr inbounds %struct.dict, %struct.dict* %188, i64 0, i32 1, !dbg !1428
  %207 = load %struct.dictType*, %struct.dictType** %206, align 8, !dbg !1428, !tbaa !391
  %208 = getelementptr inbounds %struct.dictType, %struct.dictType* %207, i64 0, i32 0, !dbg !1428
  %209 = load i32 (i8*)*, i32 (i8*)** %208, align 8, !dbg !1428, !tbaa !1429
  %210 = call i32 %209(i8* %201) #7, !dbg !1428
  %211 = getelementptr inbounds %struct.dict, %struct.dict* %188, i64 0, i32 3, !dbg !1431
  %212 = load i64, i64* %211, align 8, !dbg !1431, !tbaa !1432
  %213 = trunc i64 %212 to i32, !dbg !1428
  %214 = and i32 %210, %213, !dbg !1428
  %215 = getelementptr inbounds %struct.dict, %struct.dict* %188, i64 0, i32 0, !dbg !1434
  %216 = load %struct.dictEntry**, %struct.dictEntry*** %215, align 8, !dbg !1434, !tbaa !379
  %217 = zext i32 %214 to i64, !dbg !1435
  %218 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %216, i64 %217, !dbg !1435
  %219 = getelementptr inbounds %struct.dict, %struct.dict* %188, i64 0, i32 5, !dbg !1437
  %220 = load %struct.dictEntry*, %struct.dictEntry** %218, align 8, !dbg !1440, !tbaa !326
  %221 = icmp eq %struct.dictEntry* %220, null, !dbg !1441
  br i1 %221, label %242, label %222, !dbg !1441

; <label>:222:                                    ; preds = %205, %238
  %223 = phi %struct.dictEntry* [ %240, %238 ], [ %220, %205 ]
  %224 = load %struct.dictType*, %struct.dictType** %206, align 8, !dbg !1437, !tbaa !391
  %225 = getelementptr inbounds %struct.dictType, %struct.dictType* %224, i64 0, i32 3, !dbg !1437
  %226 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %225, align 8, !dbg !1437, !tbaa !1442
  %227 = icmp eq i32 (i8*, i8*, i8*)* %226, null, !dbg !1437
  br i1 %227, label %234, label %228, !dbg !1443

; <label>:228:                                    ; preds = %222
  %229 = load i8*, i8** %219, align 8, !dbg !1437, !tbaa !394
  %230 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %223, i64 0, i32 0, !dbg !1437
  %231 = load i8*, i8** %230, align 8, !dbg !1437, !tbaa !1444
  %232 = call i32 %226(i8* %229, i8* %201, i8* %231) #7, !dbg !1437
  %233 = icmp eq i32 %232, 0, !dbg !1437
  br i1 %233, label %238, label %243, !dbg !1437

; <label>:234:                                    ; preds = %222
  %235 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %223, i64 0, i32 0, !dbg !1437
  %236 = load i8*, i8** %235, align 8, !dbg !1437, !tbaa !1444
  %237 = icmp eq i8* %236, %201, !dbg !1437
  br i1 %237, label %243, label %238, !dbg !1443

; <label>:238:                                    ; preds = %234, %228
  %239 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %223, i64 0, i32 2, !dbg !1445
  %240 = load %struct.dictEntry*, %struct.dictEntry** %239, align 8, !dbg !1440, !tbaa !326
  %241 = icmp eq %struct.dictEntry* %240, null, !dbg !1441
  br i1 %241, label %242, label %222, !dbg !1441, !llvm.loop !1446

; <label>:242:                                    ; preds = %238, %205, %196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1449
  br label %339, !dbg !1451

; <label>:243:                                    ; preds = %234, %228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1449
  %244 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %223, i64 0, i32 1, !dbg !1452
  %245 = load i8*, i8** %244, align 8, !dbg !1452, !tbaa !1026
  %246 = call i8* @memcpy(i8* nonnull %5, i8* %245, i64 24) #7, !dbg !1455
  %247 = zext i1 %186 to i64, !dbg !1456
  %248 = getelementptr inbounds i8, i8* %174, i64 %247, !dbg !1456
  %249 = call i32 @strcasecmp(i8* %248, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !1458
  %250 = icmp eq i32 %249, 0, !dbg !1459
  br i1 %250, label %251, label %339, !dbg !1460

; <label>:251:                                    ; preds = %243
  %252 = load i64, i64* %202, align 8, !dbg !1474, !tbaa !979
  %253 = icmp eq i64 %252, 0, !dbg !1476
  br i1 %253, label %324, label %254, !dbg !1477

; <label>:254:                                    ; preds = %251
  %255 = load %struct.dictType*, %struct.dictType** %206, align 8, !dbg !1478, !tbaa !391
  %256 = getelementptr inbounds %struct.dictType, %struct.dictType* %255, i64 0, i32 0, !dbg !1478
  %257 = load i32 (i8*)*, i32 (i8*)** %256, align 8, !dbg !1478, !tbaa !1429
  %258 = call i32 %257(i8* %201) #7, !dbg !1478
  %259 = load i64, i64* %211, align 8, !dbg !1479, !tbaa !1432
  %260 = trunc i64 %259 to i32, !dbg !1478
  %261 = and i32 %258, %260, !dbg !1478
  %262 = load %struct.dictEntry**, %struct.dictEntry*** %215, align 8, !dbg !1481, !tbaa !379
  %263 = zext i32 %261 to i64, !dbg !1482
  %264 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %262, i64 %263, !dbg !1482
  %265 = load %struct.dictEntry*, %struct.dictEntry** %264, align 8, !dbg !1485, !tbaa !326
  %266 = icmp eq %struct.dictEntry* %265, null, !dbg !1487
  br i1 %266, label %324, label %267, !dbg !1487

; <label>:267:                                    ; preds = %254, %320
  %268 = phi %struct.dictEntry* [ %322, %320 ], [ %265, %254 ]
  %269 = phi %struct.dictEntry* [ %268, %320 ], [ null, %254 ]
  %270 = load %struct.dictType*, %struct.dictType** %206, align 8, !dbg !1488, !tbaa !391
  %271 = getelementptr inbounds %struct.dictType, %struct.dictType* %270, i64 0, i32 3, !dbg !1488
  %272 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %271, align 8, !dbg !1488, !tbaa !1442
  %273 = icmp eq i32 (i8*, i8*, i8*)* %272, null, !dbg !1488
  br i1 %273, label %280, label %274, !dbg !1490

; <label>:274:                                    ; preds = %267
  %275 = load i8*, i8** %219, align 8, !dbg !1488, !tbaa !394
  %276 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %268, i64 0, i32 0, !dbg !1488
  %277 = load i8*, i8** %276, align 8, !dbg !1488, !tbaa !1444
  %278 = call i32 %272(i8* %275, i8* %201, i8* %277) #7, !dbg !1488
  %279 = icmp eq i32 %278, 0, !dbg !1488
  br i1 %279, label %320, label %284, !dbg !1488

; <label>:280:                                    ; preds = %267
  %281 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %268, i64 0, i32 0, !dbg !1488
  %282 = load i8*, i8** %281, align 8, !dbg !1488, !tbaa !1444
  %283 = icmp eq i8* %282, %201, !dbg !1488
  br i1 %283, label %284, label %320, !dbg !1490

; <label>:284:                                    ; preds = %280, %274
  %285 = icmp eq %struct.dictEntry* %269, null, !dbg !1491
  %286 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %268, i64 0, i32 2, !dbg !1494
  %287 = bitcast %struct.dictEntry** %286 to i64*, !dbg !1494
  %288 = load i64, i64* %287, align 8, !dbg !1494, !tbaa !1021
  br i1 %285, label %291, label %289, !dbg !1495

; <label>:289:                                    ; preds = %284
  %290 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %269, i64 0, i32 2, !dbg !1496
  br label %294, !dbg !1497

; <label>:291:                                    ; preds = %284
  %292 = load %struct.dictEntry**, %struct.dictEntry*** %215, align 8, !dbg !1498, !tbaa !379
  %293 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %292, i64 %263, !dbg !1499
  br label %294

; <label>:294:                                    ; preds = %291, %289
  %295 = phi %struct.dictEntry** [ %293, %291 ], [ %290, %289 ]
  %296 = bitcast %struct.dictEntry** %295 to i64*, !dbg !1500
  store i64 %288, i64* %296, align 8, !dbg !1500, !tbaa !326
  %297 = load %struct.dictType*, %struct.dictType** %206, align 8, !dbg !1501, !tbaa !391
  %298 = getelementptr inbounds %struct.dictType, %struct.dictType* %297, i64 0, i32 4, !dbg !1501
  %299 = load void (i8*, i8*)*, void (i8*, i8*)** %298, align 8, !dbg !1501, !tbaa !1503
  %300 = icmp eq void (i8*, i8*)* %299, null, !dbg !1501
  br i1 %300, label %306, label %301, !dbg !1504

; <label>:301:                                    ; preds = %294
  %302 = load i8*, i8** %219, align 8, !dbg !1501, !tbaa !394
  %303 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %268, i64 0, i32 0, !dbg !1501
  %304 = load i8*, i8** %303, align 8, !dbg !1501, !tbaa !1444
  call void %299(i8* %302, i8* %304) #7, !dbg !1501
  %305 = load %struct.dictType*, %struct.dictType** %206, align 8, !dbg !1505, !tbaa !391
  br label %306, !dbg !1501

; <label>:306:                                    ; preds = %301, %294
  %307 = phi %struct.dictType* [ %297, %294 ], [ %305, %301 ], !dbg !1505
  %308 = getelementptr inbounds %struct.dictType, %struct.dictType* %307, i64 0, i32 5, !dbg !1505
  %309 = load void (i8*, i8*)*, void (i8*, i8*)** %308, align 8, !dbg !1505, !tbaa !1507
  %310 = icmp eq void (i8*, i8*)* %309, null, !dbg !1505
  br i1 %310, label %315, label %311, !dbg !1508

; <label>:311:                                    ; preds = %306
  %312 = load i8*, i8** %219, align 8, !dbg !1505, !tbaa !394
  %313 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %268, i64 0, i32 1, !dbg !1505
  %314 = load i8*, i8** %313, align 8, !dbg !1505, !tbaa !1026
  call void %309(i8* %312, i8* %314) #7, !dbg !1505
  br label %315, !dbg !1505

; <label>:315:                                    ; preds = %311, %306
  %316 = bitcast %struct.dictEntry* %268 to i8*, !dbg !1509
  call void @free(i8* %316) #7, !dbg !1510
  %317 = getelementptr inbounds %struct.dict, %struct.dict* %188, i64 0, i32 4, !dbg !1511
  %318 = load i64, i64* %317, align 8, !dbg !1512, !tbaa !387
  %319 = add i64 %318, -1, !dbg !1512
  store i64 %319, i64* %317, align 8, !dbg !1512, !tbaa !387
  br label %324, !dbg !1513

; <label>:320:                                    ; preds = %280, %274
  %321 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %268, i64 0, i32 2, !dbg !1514
  %322 = load %struct.dictEntry*, %struct.dictEntry** %321, align 8, !dbg !1485, !tbaa !326
  %323 = icmp eq %struct.dictEntry* %322, null, !dbg !1487
  br i1 %323, label %324, label %267, !dbg !1487, !llvm.loop !1515

; <label>:324:                                    ; preds = %320, %315, %254, %251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1518
  %325 = load %struct.redisReply**, %struct.redisReply*** %165, align 8, !dbg !1519, !tbaa !1398
  %326 = getelementptr inbounds %struct.redisReply*, %struct.redisReply** %325, i64 2, !dbg !1519
  %327 = load %struct.redisReply*, %struct.redisReply** %326, align 8, !dbg !1519, !tbaa !326
  %328 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %327, i64 0, i32 0, !dbg !1519
  %329 = load i32, i32* %328, align 8, !dbg !1519, !tbaa !1310
  %330 = icmp eq i32 %329, 3, !dbg !1519
  br i1 %330, label %332, label %331, !dbg !1519

; <label>:331:                                    ; preds = %324
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 398, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.__redisGetSubscribeCallback, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !1519
  unreachable, !dbg !1519

; <label>:332:                                    ; preds = %324
  %333 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %327, i64 0, i32 1, !dbg !1520
  %334 = load i64, i64* %333, align 8, !dbg !1520, !tbaa !1522
  %335 = icmp eq i64 %334, 0, !dbg !1523
  br i1 %335, label %336, label %339, !dbg !1524

; <label>:336:                                    ; preds = %332
  %337 = load i32, i32* %15, align 8, !dbg !1525, !tbaa !309
  %338 = and i32 %337, -33, !dbg !1525
  store i32 %338, i32* %15, align 8, !dbg !1525, !tbaa !309
  br label %339, !dbg !1526

; <label>:339:                                    ; preds = %336, %332, %243, %242
  call void @sdsfree(i8* %201) #7, !dbg !1527
  br label %353, !dbg !1528

; <label>:340:                                    ; preds = %155
  %341 = load %struct.redisCallback*, %struct.redisCallback** %19, align 8, !dbg !1533, !tbaa !853
  %342 = icmp eq %struct.redisCallback* %341, null, !dbg !1535
  br i1 %342, label %352, label %343, !dbg !1536

; <label>:343:                                    ; preds = %340
  %344 = bitcast %struct.redisCallback* %341 to i64*, !dbg !1537
  %345 = load i64, i64* %344, align 8, !dbg !1537, !tbaa !860
  store i64 %345, i64* %20, align 8, !dbg !1538, !tbaa !853
  %346 = load %struct.redisCallback*, %struct.redisCallback** %21, align 8, !dbg !1539, !tbaa !865
  %347 = icmp eq %struct.redisCallback* %341, %346, !dbg !1540
  br i1 %347, label %348, label %349, !dbg !1541

; <label>:348:                                    ; preds = %343
  store %struct.redisCallback* null, %struct.redisCallback** %21, align 8, !dbg !1542, !tbaa !865
  br label %349, !dbg !1543

; <label>:349:                                    ; preds = %348, %343
  %350 = bitcast %struct.redisCallback* %341 to i8*, !dbg !1544
  %351 = call i8* @memcpy(i8* nonnull %5, i8* %350, i64 24) #7, !dbg !1545
  call void @free(i8* %350) #7, !dbg !1546
  br label %352, !dbg !1547

; <label>:352:                                    ; preds = %349, %340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1548
  br label %353

; <label>:353:                                    ; preds = %352, %339, %107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1549
  br label %354, !dbg !1550

; <label>:354:                                    ; preds = %353, %152
  %355 = load void (%struct.redisAsyncContext*, i8*, i8*)*, void (%struct.redisAsyncContext*, i8*, i8*)** %12, align 8, !dbg !1550, !tbaa !897
  %356 = icmp eq void (%struct.redisAsyncContext*, i8*, i8*)* %355, null, !dbg !1552
  br i1 %356, label %374, label %357, !dbg !1553

; <label>:357:                                    ; preds = %354
  %358 = load i8*, i8** %3, align 8, !dbg !1554, !tbaa !326
  %359 = load i32, i32* %15, align 8, !dbg !1561, !tbaa !309
  %360 = or i32 %359, 16, !dbg !1561
  store i32 %360, i32* %15, align 8, !dbg !1561, !tbaa !309
  %361 = load i8*, i8** %17, align 8, !dbg !1562, !tbaa !904
  call void %355(%struct.redisAsyncContext* %0, i8* %358, i8* %361) #7, !dbg !1563
  %362 = load i32, i32* %15, align 8, !dbg !1564, !tbaa !309
  %363 = and i32 %362, -17, !dbg !1564
  store i32 %363, i32* %15, align 8, !dbg !1564, !tbaa !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  %364 = load %struct.redisReader*, %struct.redisReader** %16, align 8, !dbg !1566, !tbaa !1323
  %365 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %364, i64 0, i32 9, !dbg !1567
  %366 = load %struct.redisReplyObjectFunctions*, %struct.redisReplyObjectFunctions** %365, align 8, !dbg !1567, !tbaa !1325
  %367 = getelementptr inbounds %struct.redisReplyObjectFunctions, %struct.redisReplyObjectFunctions* %366, i64 0, i32 4, !dbg !1568
  %368 = load void (i8*)*, void (i8*)** %367, align 8, !dbg !1568, !tbaa !1328
  %369 = load i8*, i8** %3, align 8, !dbg !1569, !tbaa !326
  call void %368(i8* %369) #7, !dbg !1570
  %370 = load i32, i32* %15, align 8, !dbg !1571, !tbaa !309
  %371 = and i32 %370, 8, !dbg !1573
  %372 = icmp eq i32 %371, 0, !dbg !1573
  br i1 %372, label %381, label %373, !dbg !1574

; <label>:373:                                    ; preds = %357
  call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #8, !dbg !1575
  br label %418, !dbg !1577

; <label>:374:                                    ; preds = %354
  %375 = load %struct.redisReader*, %struct.redisReader** %16, align 8, !dbg !1578, !tbaa !1323
  %376 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %375, i64 0, i32 9, !dbg !1580
  %377 = load %struct.redisReplyObjectFunctions*, %struct.redisReplyObjectFunctions** %376, align 8, !dbg !1580, !tbaa !1325
  %378 = getelementptr inbounds %struct.redisReplyObjectFunctions, %struct.redisReplyObjectFunctions* %377, i64 0, i32 4, !dbg !1581
  %379 = load void (i8*)*, void (i8*)** %378, align 8, !dbg !1581, !tbaa !1328
  %380 = load i8*, i8** %3, align 8, !dbg !1582, !tbaa !326
  call void %379(i8* %380) #7, !dbg !1583
  br label %381

; <label>:381:                                    ; preds = %357, %374
  %382 = call i32 @redisGetReply(%struct.redisContext* nonnull %4, i8** nonnull %3) #7, !dbg !1170
  %383 = icmp eq i32 %382, 0, !dbg !1172
  br i1 %383, label %24, label %388, !dbg !1172, !llvm.loop !1584

; <label>:384:                                    ; preds = %1
  %385 = icmp eq %struct.redisAsyncContext* %0, null, !dbg !1591
  br i1 %385, label %386, label %388, !dbg !1593

; <label>:386:                                    ; preds = %384
  %387 = load i32, i32* inttoptr (i64 208 to i32*), align 16, !dbg !1594, !tbaa !319
  br label %394, !dbg !1593

; <label>:388:                                    ; preds = %381, %384
  %389 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 0, !dbg !1596
  %390 = load i32, i32* %389, align 8, !dbg !1596, !tbaa !438
  %391 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !1597
  store i32 %390, i32* %391, align 8, !dbg !1598, !tbaa !319
  %392 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 1, i64 0, !dbg !1599
  %393 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 2, !dbg !1600
  store i8* %392, i8** %393, align 8, !dbg !1601, !tbaa !442
  br label %394, !dbg !1602

; <label>:394:                                    ; preds = %388, %386
  %395 = phi i32 [ %387, %386 ], [ %390, %388 ], !dbg !1594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1602
  %396 = icmp eq i32 %395, 0, !dbg !1603
  br i1 %396, label %397, label %413, !dbg !1604

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, !dbg !1605
  %399 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %398, i64 0, i32 0, !dbg !1609
  %400 = load %struct.redisCallback*, %struct.redisCallback** %399, align 8, !dbg !1609, !tbaa !853
  %401 = icmp eq %struct.redisCallback* %400, null, !dbg !1611
  br i1 %401, label %402, label %403, !dbg !1612

; <label>:402:                                    ; preds = %397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1613
  br label %417, !dbg !1605

; <label>:403:                                    ; preds = %397
  %404 = bitcast %struct.redisCallback* %400 to i64*, !dbg !1614
  %405 = load i64, i64* %404, align 8, !dbg !1614, !tbaa !860
  %406 = bitcast %struct.redisCallbackList* %398 to i64*, !dbg !1615
  store i64 %405, i64* %406, align 8, !dbg !1615, !tbaa !853
  %407 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1, !dbg !1616
  %408 = load %struct.redisCallback*, %struct.redisCallback** %407, align 8, !dbg !1616, !tbaa !865
  %409 = icmp eq %struct.redisCallback* %400, %408, !dbg !1617
  br i1 %409, label %410, label %411, !dbg !1618

; <label>:410:                                    ; preds = %403
  store %struct.redisCallback* null, %struct.redisCallback** %407, align 8, !dbg !1619, !tbaa !865
  br label %411, !dbg !1620

; <label>:411:                                    ; preds = %410, %403
  %412 = bitcast %struct.redisCallback* %400 to i8*, !dbg !1621
  call void @free(i8* %412) #7, !dbg !1622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1613
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 339, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.__redisAsyncDisconnect, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !1605
  unreachable, !dbg !1605

; <label>:413:                                    ; preds = %394
  %414 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3, !dbg !1624
  %415 = load i32, i32* %414, align 8, !dbg !1625, !tbaa !309
  %416 = or i32 %415, 4, !dbg !1625
  store i32 %416, i32* %414, align 8, !dbg !1625, !tbaa !309
  br label %417

; <label>:417:                                    ; preds = %402, %413
  call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #7, !dbg !1626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1627
  br label %418, !dbg !1628

; <label>:418:                                    ; preds = %97, %77, %417, %373, %146, %76
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1629
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #5, !dbg !1629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1629
  ret void, !dbg !1629
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
define dso_local void @redisAsyncHandleRead(%struct.redisAsyncContext*) local_unnamed_addr #0 !dbg !1630 {
  %2 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, !dbg !1635
  %3 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3, !dbg !1637
  %4 = load i32, i32* %3, align 8, !dbg !1637, !tbaa !309
  %5 = and i32 %4, 2, !dbg !1639
  %6 = icmp eq i32 %5, 0, !dbg !1639
  br i1 %6, label %7, label %57, !dbg !1640

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @redisCheckSocketError(%struct.redisContext* %2) #7, !dbg !1652
  %9 = icmp eq i32 %8, -1, !dbg !1654
  br i1 %9, label %10, label %45, !dbg !1655

; <label>:10:                                     ; preds = %7
  %11 = tail call i32* @__errno() #7, !dbg !1656
  %12 = load i32, i32* %11, align 4, !dbg !1656, !tbaa !1213
  %13 = icmp eq i32 %12, 119, !dbg !1659
  br i1 %13, label %53, label %14, !dbg !1660

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 6, !dbg !1661
  %16 = load void (%struct.redisAsyncContext*, i32)*, void (%struct.redisAsyncContext*, i32)** %15, align 8, !dbg !1661, !tbaa !777
  %17 = icmp eq void (%struct.redisAsyncContext*, i32)* %16, null, !dbg !1663
  br i1 %17, label %19, label %18, !dbg !1664

; <label>:18:                                     ; preds = %14
  tail call void %16(%struct.redisAsyncContext* nonnull %0, i32 -1) #7, !dbg !1665
  br label %19, !dbg !1665

; <label>:19:                                     ; preds = %18, %14
  %20 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 0, !dbg !1671
  %21 = load i32, i32* %20, align 8, !dbg !1671, !tbaa !438
  %22 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !1672
  store i32 %21, i32* %22, align 8, !dbg !1673, !tbaa !319
  %23 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 1, i64 0, !dbg !1674
  %24 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 2, !dbg !1675
  store i8* %23, i8** %24, align 8, !dbg !1676, !tbaa !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1677
  %25 = icmp eq i32 %21, 0, !dbg !1678
  br i1 %25, label %26, label %42, !dbg !1679

; <label>:26:                                     ; preds = %19
  %27 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, !dbg !1680
  %28 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %27, i64 0, i32 0, !dbg !1684
  %29 = load %struct.redisCallback*, %struct.redisCallback** %28, align 8, !dbg !1684, !tbaa !853
  %30 = icmp eq %struct.redisCallback* %29, null, !dbg !1686
  br i1 %30, label %31, label %32, !dbg !1687

; <label>:31:                                     ; preds = %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1688
  br label %52, !dbg !1680

; <label>:32:                                     ; preds = %26
  %33 = bitcast %struct.redisCallback* %29 to i64*, !dbg !1689
  %34 = load i64, i64* %33, align 8, !dbg !1689, !tbaa !860
  %35 = bitcast %struct.redisCallbackList* %27 to i64*, !dbg !1690
  store i64 %34, i64* %35, align 8, !dbg !1690, !tbaa !853
  %36 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1, !dbg !1691
  %37 = load %struct.redisCallback*, %struct.redisCallback** %36, align 8, !dbg !1691, !tbaa !865
  %38 = icmp eq %struct.redisCallback* %29, %37, !dbg !1692
  br i1 %38, label %39, label %40, !dbg !1693

; <label>:39:                                     ; preds = %32
  store %struct.redisCallback* null, %struct.redisCallback** %36, align 8, !dbg !1694, !tbaa !865
  br label %40, !dbg !1695

; <label>:40:                                     ; preds = %39, %32
  %41 = bitcast %struct.redisCallback* %29 to i8*, !dbg !1696
  tail call void @free(i8* %41) #7, !dbg !1697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1688
  tail call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 339, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.__redisAsyncDisconnect, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !1680
  unreachable, !dbg !1680

; <label>:42:                                     ; preds = %19
  %43 = load i32, i32* %3, align 8, !dbg !1699, !tbaa !309
  %44 = or i32 %43, 4, !dbg !1699
  store i32 %44, i32* %3, align 8, !dbg !1699, !tbaa !309
  br label %52

; <label>:45:                                     ; preds = %7
  %46 = load i32, i32* %3, align 8, !dbg !1700, !tbaa !309
  %47 = or i32 %46, 2, !dbg !1700
  store i32 %47, i32* %3, align 8, !dbg !1700, !tbaa !309
  %48 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 6, !dbg !1701
  %49 = load void (%struct.redisAsyncContext*, i32)*, void (%struct.redisAsyncContext*, i32)** %48, align 8, !dbg !1701, !tbaa !777
  %50 = icmp eq void (%struct.redisAsyncContext*, i32)* %49, null, !dbg !1703
  br i1 %50, label %53, label %51, !dbg !1704

; <label>:51:                                     ; preds = %45
  tail call void %49(%struct.redisAsyncContext* nonnull %0, i32 0) #7, !dbg !1705
  br label %53, !dbg !1705

; <label>:52:                                     ; preds = %42, %31
  tail call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #7, !dbg !1706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1708
  br label %95, !dbg !1709

; <label>:53:                                     ; preds = %10, %45, %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1708
  %54 = load i32, i32* %3, align 8, !dbg !1710, !tbaa !309
  %55 = and i32 %54, 2, !dbg !1712
  %56 = icmp eq i32 %55, 0, !dbg !1712
  br i1 %56, label %95, label %57, !dbg !1713

; <label>:57:                                     ; preds = %53, %1
  %58 = tail call i32 @redisBufferRead(%struct.redisContext* %2) #7, !dbg !1714
  %59 = icmp eq i32 %58, -1, !dbg !1716
  br i1 %59, label %60, label %87, !dbg !1717

; <label>:60:                                     ; preds = %57
  %61 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 0, !dbg !1724
  %62 = load i32, i32* %61, align 8, !dbg !1724, !tbaa !438
  %63 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !1725
  store i32 %62, i32* %63, align 8, !dbg !1726, !tbaa !319
  %64 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 1, i64 0, !dbg !1727
  %65 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 2, !dbg !1728
  store i8* %64, i8** %65, align 8, !dbg !1729, !tbaa !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1730
  %66 = icmp eq i32 %62, 0, !dbg !1731
  br i1 %66, label %67, label %83, !dbg !1732

; <label>:67:                                     ; preds = %60
  %68 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, !dbg !1733
  %69 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %68, i64 0, i32 0, !dbg !1737
  %70 = load %struct.redisCallback*, %struct.redisCallback** %69, align 8, !dbg !1737, !tbaa !853
  %71 = icmp eq %struct.redisCallback* %70, null, !dbg !1739
  br i1 %71, label %72, label %73, !dbg !1740

; <label>:72:                                     ; preds = %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1741
  br label %86, !dbg !1733

; <label>:73:                                     ; preds = %67
  %74 = bitcast %struct.redisCallback* %70 to i64*, !dbg !1742
  %75 = load i64, i64* %74, align 8, !dbg !1742, !tbaa !860
  %76 = bitcast %struct.redisCallbackList* %68 to i64*, !dbg !1743
  store i64 %75, i64* %76, align 8, !dbg !1743, !tbaa !853
  %77 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1, !dbg !1744
  %78 = load %struct.redisCallback*, %struct.redisCallback** %77, align 8, !dbg !1744, !tbaa !865
  %79 = icmp eq %struct.redisCallback* %70, %78, !dbg !1745
  br i1 %79, label %80, label %81, !dbg !1746

; <label>:80:                                     ; preds = %73
  store %struct.redisCallback* null, %struct.redisCallback** %77, align 8, !dbg !1747, !tbaa !865
  br label %81, !dbg !1748

; <label>:81:                                     ; preds = %80, %73
  %82 = bitcast %struct.redisCallback* %70 to i8*, !dbg !1749
  tail call void @free(i8* %82) #7, !dbg !1750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1741
  tail call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 339, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.__redisAsyncDisconnect, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !1733
  unreachable, !dbg !1733

; <label>:83:                                     ; preds = %60
  %84 = load i32, i32* %3, align 8, !dbg !1752, !tbaa !309
  %85 = or i32 %84, 4, !dbg !1752
  store i32 %85, i32* %3, align 8, !dbg !1752, !tbaa !309
  br label %86

; <label>:86:                                     ; preds = %72, %83
  tail call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #7, !dbg !1753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1754
  br label %95, !dbg !1755

; <label>:87:                                     ; preds = %57
  %88 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 1, !dbg !1756
  %89 = load void (i8*)*, void (i8*)** %88, align 8, !dbg !1756, !tbaa !1760
  %90 = icmp eq void (i8*)* %89, null, !dbg !1756
  br i1 %90, label %94, label %91, !dbg !1761

; <label>:91:                                     ; preds = %87
  %92 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 0, !dbg !1756
  %93 = load i8*, i8** %92, align 8, !dbg !1756, !tbaa !330
  tail call void %89(i8* %93) #7, !dbg !1756
  br label %94, !dbg !1756

; <label>:94:                                     ; preds = %87, %91
  tail call void @redisProcessCallbacks(%struct.redisAsyncContext* nonnull %0) #8, !dbg !1762
  br label %95

; <label>:95:                                     ; preds = %52, %86, %94, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1763
  ret void, !dbg !1763
}

; Function Attrs: noredzone
declare dso_local i32 @redisBufferRead(%struct.redisContext*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @redisAsyncHandleWrite(%struct.redisAsyncContext*) local_unnamed_addr #0 !dbg !1764 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, !dbg !1770
  %4 = bitcast i32* %2 to i8*, !dbg !1772
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #5, !dbg !1772
  store i32 0, i32* %2, align 4, !dbg !1773, !tbaa !1213
  %5 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3, !dbg !1774
  %6 = load i32, i32* %5, align 8, !dbg !1774, !tbaa !309
  %7 = and i32 %6, 2, !dbg !1776
  %8 = icmp eq i32 %7, 0, !dbg !1776
  br i1 %8, label %9, label %59, !dbg !1777

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @redisCheckSocketError(%struct.redisContext* %3) #7, !dbg !1783
  %11 = icmp eq i32 %10, -1, !dbg !1784
  br i1 %11, label %12, label %47, !dbg !1785

; <label>:12:                                     ; preds = %9
  %13 = tail call i32* @__errno() #7, !dbg !1786
  %14 = load i32, i32* %13, align 4, !dbg !1786, !tbaa !1213
  %15 = icmp eq i32 %14, 119, !dbg !1787
  br i1 %15, label %55, label %16, !dbg !1788

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 6, !dbg !1789
  %18 = load void (%struct.redisAsyncContext*, i32)*, void (%struct.redisAsyncContext*, i32)** %17, align 8, !dbg !1789, !tbaa !777
  %19 = icmp eq void (%struct.redisAsyncContext*, i32)* %18, null, !dbg !1790
  br i1 %19, label %21, label %20, !dbg !1791

; <label>:20:                                     ; preds = %16
  tail call void %18(%struct.redisAsyncContext* nonnull %0, i32 -1) #7, !dbg !1792
  br label %21, !dbg !1792

; <label>:21:                                     ; preds = %20, %16
  %22 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 0, !dbg !1798
  %23 = load i32, i32* %22, align 8, !dbg !1798, !tbaa !438
  %24 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !1799
  store i32 %23, i32* %24, align 8, !dbg !1800, !tbaa !319
  %25 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 1, i64 0, !dbg !1801
  %26 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 2, !dbg !1802
  store i8* %25, i8** %26, align 8, !dbg !1803, !tbaa !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1804
  %27 = icmp eq i32 %23, 0, !dbg !1805
  br i1 %27, label %28, label %44, !dbg !1806

; <label>:28:                                     ; preds = %21
  %29 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, !dbg !1807
  %30 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %29, i64 0, i32 0, !dbg !1811
  %31 = load %struct.redisCallback*, %struct.redisCallback** %30, align 8, !dbg !1811, !tbaa !853
  %32 = icmp eq %struct.redisCallback* %31, null, !dbg !1813
  br i1 %32, label %33, label %34, !dbg !1814

; <label>:33:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1815
  br label %54, !dbg !1807

; <label>:34:                                     ; preds = %28
  %35 = bitcast %struct.redisCallback* %31 to i64*, !dbg !1816
  %36 = load i64, i64* %35, align 8, !dbg !1816, !tbaa !860
  %37 = bitcast %struct.redisCallbackList* %29 to i64*, !dbg !1817
  store i64 %36, i64* %37, align 8, !dbg !1817, !tbaa !853
  %38 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1, !dbg !1818
  %39 = load %struct.redisCallback*, %struct.redisCallback** %38, align 8, !dbg !1818, !tbaa !865
  %40 = icmp eq %struct.redisCallback* %31, %39, !dbg !1819
  br i1 %40, label %41, label %42, !dbg !1820

; <label>:41:                                     ; preds = %34
  store %struct.redisCallback* null, %struct.redisCallback** %38, align 8, !dbg !1821, !tbaa !865
  br label %42, !dbg !1822

; <label>:42:                                     ; preds = %41, %34
  %43 = bitcast %struct.redisCallback* %31 to i8*, !dbg !1823
  tail call void @free(i8* %43) #7, !dbg !1824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1815
  tail call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 339, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.__redisAsyncDisconnect, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !1807
  unreachable, !dbg !1807

; <label>:44:                                     ; preds = %21
  %45 = load i32, i32* %5, align 8, !dbg !1826, !tbaa !309
  %46 = or i32 %45, 4, !dbg !1826
  store i32 %46, i32* %5, align 8, !dbg !1826, !tbaa !309
  br label %54

; <label>:47:                                     ; preds = %9
  %48 = load i32, i32* %5, align 8, !dbg !1827, !tbaa !309
  %49 = or i32 %48, 2, !dbg !1827
  store i32 %49, i32* %5, align 8, !dbg !1827, !tbaa !309
  %50 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 6, !dbg !1828
  %51 = load void (%struct.redisAsyncContext*, i32)*, void (%struct.redisAsyncContext*, i32)** %50, align 8, !dbg !1828, !tbaa !777
  %52 = icmp eq void (%struct.redisAsyncContext*, i32)* %51, null, !dbg !1829
  br i1 %52, label %55, label %53, !dbg !1830

; <label>:53:                                     ; preds = %47
  tail call void %51(%struct.redisAsyncContext* nonnull %0, i32 0) #7, !dbg !1831
  br label %55, !dbg !1831

; <label>:54:                                     ; preds = %44, %33
  tail call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #7, !dbg !1832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1834
  br label %114, !dbg !1835

; <label>:55:                                     ; preds = %12, %47, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1834
  %56 = load i32, i32* %5, align 8, !dbg !1836, !tbaa !309
  %57 = and i32 %56, 2, !dbg !1838
  %58 = icmp eq i32 %57, 0, !dbg !1838
  br i1 %58, label %114, label %59, !dbg !1839

; <label>:59:                                     ; preds = %55, %1
  %60 = call i32 @redisBufferWrite(%struct.redisContext* %3, i32* nonnull %2) #7, !dbg !1840
  %61 = icmp eq i32 %60, -1, !dbg !1842
  br i1 %61, label %62, label %89, !dbg !1843

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 0, !dbg !1850
  %64 = load i32, i32* %63, align 8, !dbg !1850, !tbaa !438
  %65 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !1851
  store i32 %64, i32* %65, align 8, !dbg !1852, !tbaa !319
  %66 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 1, i64 0, !dbg !1853
  %67 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 2, !dbg !1854
  store i8* %66, i8** %67, align 8, !dbg !1855, !tbaa !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1856
  %68 = icmp eq i32 %64, 0, !dbg !1857
  br i1 %68, label %69, label %85, !dbg !1858

; <label>:69:                                     ; preds = %62
  %70 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, !dbg !1859
  %71 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %70, i64 0, i32 0, !dbg !1863
  %72 = load %struct.redisCallback*, %struct.redisCallback** %71, align 8, !dbg !1863, !tbaa !853
  %73 = icmp eq %struct.redisCallback* %72, null, !dbg !1865
  br i1 %73, label %74, label %75, !dbg !1866

; <label>:74:                                     ; preds = %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1867
  br label %88, !dbg !1859

; <label>:75:                                     ; preds = %69
  %76 = bitcast %struct.redisCallback* %72 to i64*, !dbg !1868
  %77 = load i64, i64* %76, align 8, !dbg !1868, !tbaa !860
  %78 = bitcast %struct.redisCallbackList* %70 to i64*, !dbg !1869
  store i64 %77, i64* %78, align 8, !dbg !1869, !tbaa !853
  %79 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1, !dbg !1870
  %80 = load %struct.redisCallback*, %struct.redisCallback** %79, align 8, !dbg !1870, !tbaa !865
  %81 = icmp eq %struct.redisCallback* %72, %80, !dbg !1871
  br i1 %81, label %82, label %83, !dbg !1872

; <label>:82:                                     ; preds = %75
  store %struct.redisCallback* null, %struct.redisCallback** %79, align 8, !dbg !1873, !tbaa !865
  br label %83, !dbg !1874

; <label>:83:                                     ; preds = %82, %75
  %84 = bitcast %struct.redisCallback* %72 to i8*, !dbg !1875
  call void @free(i8* %84) #7, !dbg !1876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1867
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 339, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.__redisAsyncDisconnect, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !1859
  unreachable, !dbg !1859

; <label>:85:                                     ; preds = %62
  %86 = load i32, i32* %5, align 8, !dbg !1878, !tbaa !309
  %87 = or i32 %86, 4, !dbg !1878
  store i32 %87, i32* %5, align 8, !dbg !1878, !tbaa !309
  br label %88

; <label>:88:                                     ; preds = %74, %85
  call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #7, !dbg !1879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1880
  br label %114, !dbg !1881

; <label>:89:                                     ; preds = %59
  %90 = load i32, i32* %2, align 4, !dbg !1882, !tbaa !1213
  %91 = icmp eq i32 %90, 0, !dbg !1882
  %92 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, !dbg !1885
  br i1 %91, label %93, label %100, !dbg !1888

; <label>:93:                                     ; preds = %89
  %94 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 3, !dbg !1889
  %95 = load void (i8*)*, void (i8*)** %94, align 8, !dbg !1889, !tbaa !785
  %96 = icmp eq void (i8*)* %95, null, !dbg !1889
  br i1 %96, label %107, label %97, !dbg !1890

; <label>:97:                                     ; preds = %93
  %98 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %92, i64 0, i32 0, !dbg !1889
  %99 = load i8*, i8** %98, align 8, !dbg !1889, !tbaa !330
  call void %95(i8* %99) #7, !dbg !1889
  br label %107, !dbg !1889

; <label>:100:                                    ; preds = %89
  %101 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 4, !dbg !1891
  %102 = load void (i8*)*, void (i8*)** %101, align 8, !dbg !1891, !tbaa !1894
  %103 = icmp eq void (i8*)* %102, null, !dbg !1891
  br i1 %103, label %107, label %104, !dbg !1895

; <label>:104:                                    ; preds = %100
  %105 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %92, i64 0, i32 0, !dbg !1891
  %106 = load i8*, i8** %105, align 8, !dbg !1891, !tbaa !330
  call void %102(i8* %106) #7, !dbg !1891
  br label %107, !dbg !1891

; <label>:107:                                    ; preds = %100, %93, %97, %104
  %108 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 1, !dbg !1896
  %109 = load void (i8*)*, void (i8*)** %108, align 8, !dbg !1896, !tbaa !1760
  %110 = icmp eq void (i8*)* %109, null, !dbg !1896
  br i1 %110, label %114, label %111, !dbg !1899

; <label>:111:                                    ; preds = %107
  %112 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %92, i64 0, i32 0, !dbg !1896
  %113 = load i8*, i8** %112, align 8, !dbg !1896, !tbaa !330
  call void %109(i8* %113) #7, !dbg !1896
  br label %114, !dbg !1896

; <label>:114:                                    ; preds = %54, %88, %111, %107, %55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #5, !dbg !1900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1900
  ret void, !dbg !1900
}

; Function Attrs: noredzone
declare dso_local i32 @redisBufferWrite(%struct.redisContext*, i32*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisvAsyncCommand(%struct.redisAsyncContext*, void (%struct.redisAsyncContext*, i8*, i8*)*, i8*, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !1901 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*, !dbg !1925
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !1925
  %8 = call i32 @redisvFormatCommand(i8** nonnull %6, i8* %3, %struct.__va_list_tag* %4) #7, !dbg !1927
  %9 = icmp slt i32 %8, 0, !dbg !1929
  br i1 %9, label %15, label %10, !dbg !1931

; <label>:10:                                     ; preds = %5
  %11 = load i8*, i8** %6, align 8, !dbg !1932, !tbaa !326
  %12 = sext i32 %8 to i64, !dbg !1933
  %13 = call fastcc i32 @__redisAsyncCommand(%struct.redisAsyncContext* %0, void (%struct.redisAsyncContext*, i8*, i8*)* %1, i8* %2, i8* %11, i64 %12) #8, !dbg !1934
  %14 = load i8*, i8** %6, align 8, !dbg !1936, !tbaa !326
  call void @free(i8* %14) #7, !dbg !1937
  br label %15, !dbg !1938

; <label>:15:                                     ; preds = %5, %10
  %16 = phi i32 [ %13, %10 ], [ -1, %5 ], !dbg !1939
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !1940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1940
  ret i32 %16, !dbg !1940
}

; Function Attrs: noredzone
declare dso_local i32 @redisvFormatCommand(i8**, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc i32 @__redisAsyncCommand(%struct.redisAsyncContext*, void (%struct.redisAsyncContext*, i8*, i8*)*, i8*, i8*, i64) unnamed_addr #0 !dbg !1941 {
  %6 = alloca %struct.redisCallback, align 8
  %7 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, !dbg !1968
  %8 = bitcast %struct.redisCallback* %6 to i8*, !dbg !1970
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #5, !dbg !1970
  %9 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3, !dbg !1971
  %10 = load i32, i32* %9, align 8, !dbg !1971, !tbaa !309
  %11 = and i32 %10, 12, !dbg !1973
  %12 = icmp eq i32 %11, 0, !dbg !1973
  br i1 %12, label %13, label %170, !dbg !1974

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %6, i64 0, i32 1, !dbg !1975
  store void (%struct.redisAsyncContext*, i8*, i8*)* %1, void (%struct.redisAsyncContext*, i8*, i8*)** %14, align 8, !dbg !1976, !tbaa !897
  %15 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %6, i64 0, i32 2, !dbg !1977
  store i8* %2, i8** %15, align 8, !dbg !1978, !tbaa !904
  %16 = load i8, i8* %3, align 1, !dbg !1992, !tbaa !1195
  %17 = icmp eq i8 %16, 36, !dbg !1994
  br i1 %17, label %21, label %18, !dbg !1995

; <label>:18:                                     ; preds = %13
  %19 = tail call i8* @strchr(i8* nonnull %3, i32 36) #7, !dbg !1996
  %20 = icmp eq i8* %19, null, !dbg !1998
  br i1 %20, label %28, label %21, !dbg !2000

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i8* [ %19, %18 ], [ %3, %13 ], !dbg !2001
  %23 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !2002
  %24 = tail call i64 @strtol(i8* nonnull %23, i8** null, i32 10) #7, !dbg !2003
  %25 = tail call i8* @strchr(i8* nonnull %22, i32 13) #7, !dbg !2004
  %26 = icmp eq i8* %25, null, !dbg !2005
  br i1 %26, label %27, label %29, !dbg !2005

; <label>:27:                                     ; preds = %21
  tail call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 575, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.nextArgument, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !2005
  unreachable, !dbg !2005

; <label>:28:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2006
  tail call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 602, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.__redisAsyncCommand, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !2008
  unreachable, !dbg !2008

; <label>:29:                                     ; preds = %21
  %30 = shl i64 %24, 32, !dbg !2009
  %31 = ashr exact i64 %30, 32, !dbg !2009
  %32 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !2010
  %33 = getelementptr inbounds i8, i8* %32, i64 %31, !dbg !2011
  %34 = getelementptr inbounds i8, i8* %33, i64 2, !dbg !2012
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2006
  %35 = load i8, i8* %34, align 1, !dbg !2013, !tbaa !1195
  %36 = icmp eq i8 %35, 36, !dbg !2014
  %37 = load i8, i8* %32, align 1, !dbg !2016, !tbaa !1195
  %38 = tail call i8* @__locale_ctype_ptr() #7, !dbg !2016
  %39 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !2016
  %40 = sext i8 %37 to i32, !dbg !2016
  %41 = sext i8 %37 to i64, !dbg !2016
  %42 = getelementptr inbounds i8, i8* %39, i64 %41, !dbg !2016
  %43 = load i8, i8* %42, align 1, !dbg !2016, !tbaa !1195
  %44 = and i8 %43, 3, !dbg !2016
  %45 = icmp eq i8 %44, 1, !dbg !2016
  %46 = add nsw i32 %40, 32, !dbg !2016
  %47 = select i1 %45, i32 %46, i32 %40, !dbg !2016
  %48 = icmp eq i32 %47, 112, !dbg !2017
  %49 = zext i1 %48 to i64, !dbg !2018
  %50 = getelementptr inbounds i8, i8* %32, i64 %49, !dbg !2018
  br i1 %36, label %51, label %86, !dbg !2020

; <label>:51:                                     ; preds = %29
  %52 = tail call i32 @strncasecmp(i8* nonnull %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 11) #10, !dbg !2022
  %53 = icmp eq i32 %52, 0, !dbg !2023
  br i1 %53, label %54, label %86, !dbg !2024

; <label>:54:                                     ; preds = %51
  %55 = load i32, i32* %9, align 8, !dbg !2025, !tbaa !309
  %56 = or i32 %55, 32, !dbg !2025
  store i32 %56, i32* %9, align 8, !dbg !2025, !tbaa !309
  %57 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 2
  %58 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 1
  %59 = select i1 %48, %struct.dict** %57, %struct.dict** %58
  br label %60, !dbg !2027

; <label>:60:                                     ; preds = %85, %54
  %61 = phi i8* [ %34, %54 ], [ %79, %85 ], !dbg !2028
  %62 = load i8, i8* %61, align 1, !dbg !2032, !tbaa !1195
  %63 = icmp eq i8 %62, 36, !dbg !2033
  br i1 %63, label %67, label %64, !dbg !2034

; <label>:64:                                     ; preds = %60
  %65 = call i8* @strchr(i8* nonnull %61, i32 36) #7, !dbg !2035
  %66 = icmp eq i8* %65, null, !dbg !2036
  br i1 %66, label %161, label %67, !dbg !2037

; <label>:67:                                     ; preds = %64, %60
  %68 = phi i8* [ %65, %64 ], [ %61, %60 ], !dbg !2038
  %69 = getelementptr inbounds i8, i8* %68, i64 1, !dbg !2039
  %70 = call i64 @strtol(i8* nonnull %69, i8** null, i32 10) #7, !dbg !2040
  %71 = shl i64 %70, 32, !dbg !2041
  %72 = ashr exact i64 %71, 32, !dbg !2041
  %73 = call i8* @strchr(i8* nonnull %68, i32 13) #7, !dbg !2042
  %74 = icmp eq i8* %73, null, !dbg !2043
  br i1 %74, label %75, label %76, !dbg !2043

; <label>:75:                                     ; preds = %67
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 575, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.nextArgument, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !2043
  unreachable, !dbg !2043

; <label>:76:                                     ; preds = %67
  %77 = getelementptr inbounds i8, i8* %73, i64 2, !dbg !2044
  %78 = getelementptr inbounds i8, i8* %73, i64 4, !dbg !2045
  %79 = getelementptr inbounds i8, i8* %78, i64 %72, !dbg !2046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2047
  %80 = call i8* @sdsnewlen(i8* nonnull %77, i64 %72) #7, !dbg !2050
  %81 = load %struct.dict*, %struct.dict** %59, align 8, !dbg !2054, !tbaa !326
  %82 = call fastcc i32 @dictReplace(%struct.dict* %81, i8* %80, i8* nonnull %8) #8, !dbg !2054
  %83 = icmp eq i32 %82, 0, !dbg !2056
  br i1 %83, label %84, label %85, !dbg !2058

; <label>:84:                                     ; preds = %76
  call void @sdsfree(i8* %80) #7, !dbg !2059
  br label %85, !dbg !2059

; <label>:85:                                     ; preds = %84, %76
  br label %60, !dbg !2007, !llvm.loop !2060

; <label>:86:                                     ; preds = %51, %29
  %87 = tail call i32 @strncasecmp(i8* nonnull %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i64 13) #10, !dbg !2062
  %88 = icmp eq i32 %87, 0, !dbg !2064
  br i1 %88, label %89, label %93, !dbg !2065

; <label>:89:                                     ; preds = %86
  %90 = load i32, i32* %9, align 8, !dbg !2066, !tbaa !309
  %91 = and i32 %90, 32, !dbg !2069
  %92 = icmp eq i32 %91, 0, !dbg !2069
  br i1 %92, label %170, label %162, !dbg !2070

; <label>:93:                                     ; preds = %86
  %94 = tail call i32 @strncasecmp(i8* nonnull %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i64 9) #10, !dbg !2071
  %95 = icmp eq i32 %94, 0, !dbg !2073
  %96 = load i32, i32* %9, align 8, !dbg !2074, !tbaa !309
  br i1 %95, label %97, label %118, !dbg !2077

; <label>:97:                                     ; preds = %93
  %98 = or i32 %96, 64, !dbg !2078
  store i32 %98, i32* %9, align 8, !dbg !2078, !tbaa !309
  %99 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, !dbg !2080
  %100 = tail call i8* @malloc(i64 24) #7, !dbg !2085
  %101 = icmp eq i8* %100, null, !dbg !2087
  br i1 %101, label %161, label %102, !dbg !2088

; <label>:102:                                    ; preds = %97
  %103 = call i8* @memcpy(i8* nonnull %100, i8* nonnull %8, i64 24) #7, !dbg !2089
  %104 = bitcast i8* %100 to %struct.redisCallback**, !dbg !2090
  store %struct.redisCallback* null, %struct.redisCallback** %104, align 8, !dbg !2091, !tbaa !860
  %105 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %99, i64 0, i32 0, !dbg !2092
  %106 = load %struct.redisCallback*, %struct.redisCallback** %105, align 8, !dbg !2092, !tbaa !853
  %107 = icmp eq %struct.redisCallback* %106, null, !dbg !2093
  br i1 %107, label %108, label %110, !dbg !2094

; <label>:108:                                    ; preds = %102
  %109 = bitcast %struct.redisCallbackList* %99 to i8**, !dbg !2095
  store i8* %100, i8** %109, align 8, !dbg !2095, !tbaa !853
  br label %110, !dbg !2096

; <label>:110:                                    ; preds = %108, %102
  %111 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1, !dbg !2097
  %112 = load %struct.redisCallback*, %struct.redisCallback** %111, align 8, !dbg !2097, !tbaa !865
  %113 = icmp eq %struct.redisCallback* %112, null, !dbg !2098
  br i1 %113, label %116, label %114, !dbg !2099

; <label>:114:                                    ; preds = %110
  %115 = bitcast %struct.redisCallback* %112 to i8**, !dbg !2100
  store i8* %100, i8** %115, align 8, !dbg !2100, !tbaa !860
  br label %116, !dbg !2101

; <label>:116:                                    ; preds = %114, %110
  %117 = bitcast %struct.redisCallback** %111 to i8**, !dbg !2102
  store i8* %100, i8** %117, align 8, !dbg !2102, !tbaa !865
  br label %161, !dbg !2103

; <label>:118:                                    ; preds = %93
  %119 = and i32 %96, 32, !dbg !2104
  %120 = icmp eq i32 %119, 0, !dbg !2104
  br i1 %120, label %141, label %121, !dbg !2105

; <label>:121:                                    ; preds = %118
  %122 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 0, !dbg !2106
  %123 = tail call i8* @malloc(i64 24) #7, !dbg !2110
  %124 = icmp eq i8* %123, null, !dbg !2112
  br i1 %124, label %161, label %125, !dbg !2113

; <label>:125:                                    ; preds = %121
  %126 = call i8* @memcpy(i8* nonnull %123, i8* nonnull %8, i64 24) #7, !dbg !2114
  %127 = bitcast i8* %123 to %struct.redisCallback**, !dbg !2115
  store %struct.redisCallback* null, %struct.redisCallback** %127, align 8, !dbg !2116, !tbaa !860
  %128 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %122, i64 0, i32 0, !dbg !2117
  %129 = load %struct.redisCallback*, %struct.redisCallback** %128, align 8, !dbg !2117, !tbaa !853
  %130 = icmp eq %struct.redisCallback* %129, null, !dbg !2118
  br i1 %130, label %131, label %133, !dbg !2119

; <label>:131:                                    ; preds = %125
  %132 = bitcast %struct.redisCallbackList* %122 to i8**, !dbg !2120
  store i8* %123, i8** %132, align 8, !dbg !2120, !tbaa !853
  br label %133, !dbg !2121

; <label>:133:                                    ; preds = %131, %125
  %134 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 0, i32 1, !dbg !2122
  %135 = load %struct.redisCallback*, %struct.redisCallback** %134, align 8, !dbg !2122, !tbaa !865
  %136 = icmp eq %struct.redisCallback* %135, null, !dbg !2123
  br i1 %136, label %139, label %137, !dbg !2124

; <label>:137:                                    ; preds = %133
  %138 = bitcast %struct.redisCallback* %135 to i8**, !dbg !2125
  store i8* %123, i8** %138, align 8, !dbg !2125, !tbaa !860
  br label %139, !dbg !2126

; <label>:139:                                    ; preds = %137, %133
  %140 = bitcast %struct.redisCallback** %134 to i8**, !dbg !2127
  store i8* %123, i8** %140, align 8, !dbg !2127, !tbaa !865
  br label %161, !dbg !2128

; <label>:141:                                    ; preds = %118
  %142 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, !dbg !2129
  %143 = tail call i8* @malloc(i64 24) #7, !dbg !2133
  %144 = icmp eq i8* %143, null, !dbg !2135
  br i1 %144, label %161, label %145, !dbg !2136

; <label>:145:                                    ; preds = %141
  %146 = call i8* @memcpy(i8* nonnull %143, i8* nonnull %8, i64 24) #7, !dbg !2137
  %147 = bitcast i8* %143 to %struct.redisCallback**, !dbg !2138
  store %struct.redisCallback* null, %struct.redisCallback** %147, align 8, !dbg !2139, !tbaa !860
  %148 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %142, i64 0, i32 0, !dbg !2140
  %149 = load %struct.redisCallback*, %struct.redisCallback** %148, align 8, !dbg !2140, !tbaa !853
  %150 = icmp eq %struct.redisCallback* %149, null, !dbg !2141
  br i1 %150, label %151, label %153, !dbg !2142

; <label>:151:                                    ; preds = %145
  %152 = bitcast %struct.redisCallbackList* %142 to i8**, !dbg !2143
  store i8* %143, i8** %152, align 8, !dbg !2143, !tbaa !853
  br label %153, !dbg !2144

; <label>:153:                                    ; preds = %151, %145
  %154 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1, !dbg !2145
  %155 = load %struct.redisCallback*, %struct.redisCallback** %154, align 8, !dbg !2145, !tbaa !865
  %156 = icmp eq %struct.redisCallback* %155, null, !dbg !2146
  br i1 %156, label %159, label %157, !dbg !2147

; <label>:157:                                    ; preds = %153
  %158 = bitcast %struct.redisCallback* %155 to i8**, !dbg !2148
  store i8* %143, i8** %158, align 8, !dbg !2148, !tbaa !860
  br label %159, !dbg !2149

; <label>:159:                                    ; preds = %157, %153
  %160 = bitcast %struct.redisCallback** %154 to i8**, !dbg !2150
  store i8* %143, i8** %160, align 8, !dbg !2150, !tbaa !865
  br label %161, !dbg !2151

; <label>:161:                                    ; preds = %64, %159, %141, %139, %121, %116, %97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2152
  br label %162, !dbg !2153

; <label>:162:                                    ; preds = %161, %89
  %163 = call i32 @__redisAppendCommand(%struct.redisContext* nonnull %7, i8* %3, i64 %4) #7, !dbg !2153
  %164 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 3, !dbg !2154
  %165 = load void (i8*)*, void (i8*)** %164, align 8, !dbg !2154, !tbaa !785
  %166 = icmp eq void (i8*)* %165, null, !dbg !2154
  br i1 %166, label %170, label %167, !dbg !2157

; <label>:167:                                    ; preds = %162
  %168 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 0, !dbg !2154
  %169 = load i8*, i8** %168, align 8, !dbg !2154, !tbaa !330
  call void %165(i8* %169) #7, !dbg !2154
  br label %170, !dbg !2154

; <label>:170:                                    ; preds = %167, %162, %89, %5
  %171 = phi i32 [ -1, %5 ], [ -1, %89 ], [ 0, %162 ], [ 0, %167 ], !dbg !2158
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #5, !dbg !2159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2159
  ret i32 %171, !dbg !2159
}

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisAsyncCommand(%struct.redisAsyncContext*, void (%struct.redisAsyncContext*, i8*, i8*)*, i8*, i8*, ...) local_unnamed_addr #0 !dbg !2160 {
  %5 = alloca i8*, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = bitcast [1 x %struct.__va_list_tag]* %6 to i8*, !dbg !2182
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #5, !dbg !2182
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0, !dbg !2184
  call void @llvm.va_start(i8* nonnull %7), !dbg !2184
  %9 = bitcast i8** %5 to i8*, !dbg !2191
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #5, !dbg !2191
  %10 = call i32 @redisvFormatCommand(i8** nonnull %5, i8* %3, %struct.__va_list_tag* nonnull %8) #7, !dbg !2193
  %11 = icmp slt i32 %10, 0, !dbg !2195
  br i1 %11, label %17, label %12, !dbg !2196

; <label>:12:                                     ; preds = %4
  %13 = load i8*, i8** %5, align 8, !dbg !2197, !tbaa !326
  %14 = sext i32 %10 to i64, !dbg !2198
  %15 = call fastcc i32 @__redisAsyncCommand(%struct.redisAsyncContext* %0, void (%struct.redisAsyncContext*, i8*, i8*)* %1, i8* %2, i8* %13, i64 %14) #7, !dbg !2199
  %16 = load i8*, i8** %5, align 8, !dbg !2201, !tbaa !326
  call void @free(i8* %16) #7, !dbg !2202
  br label %17, !dbg !2203

; <label>:17:                                     ; preds = %4, %12
  %18 = phi i32 [ %15, %12 ], [ -1, %4 ], !dbg !2204
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #5, !dbg !2205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2205
  call void @llvm.va_end(i8* nonnull %7), !dbg !2207
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #5, !dbg !2208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2209
  ret i32 %18, !dbg !2209
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: noredzone nounwind
define dso_local i32 @redisAsyncCommandArgv(%struct.redisAsyncContext*, void (%struct.redisAsyncContext*, i8*, i8*)*, i8*, i32, i8**, i64*) local_unnamed_addr #0 !dbg !2210 {
  %7 = alloca i8*, align 8
  %8 = bitcast i8** %7 to i8*, !dbg !2231
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !2231
  %9 = call i32 @redisFormatSdsCommandArgv(i8** nonnull %7, i32 %3, i8** %4, i64* %5) #7, !dbg !2233
  %10 = load i8*, i8** %7, align 8, !dbg !2235, !tbaa !326
  %11 = sext i32 %9 to i64, !dbg !2236
  %12 = call fastcc i32 @__redisAsyncCommand(%struct.redisAsyncContext* %0, void (%struct.redisAsyncContext*, i8*, i8*)* %1, i8* %2, i8* %10, i64 %11) #8, !dbg !2237
  %13 = load i8*, i8** %7, align 8, !dbg !2239, !tbaa !326
  call void @sdsfree(i8* %13) #7, !dbg !2240
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !2241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2242
  ret i32 %12, !dbg !2242
}

; Function Attrs: noredzone
declare dso_local i32 @redisFormatSdsCommandArgv(i8**, i32, i8**, i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisAsyncFormattedCommand(%struct.redisAsyncContext*, void (%struct.redisAsyncContext*, i8*, i8*)*, i8*, i8*, i64) local_unnamed_addr #0 !dbg !2243 {
  %6 = tail call fastcc i32 @__redisAsyncCommand(%struct.redisAsyncContext* %0, void (%struct.redisAsyncContext*, i8*, i8*)* %1, i8* %2, i8* %3, i64 %4) #8, !dbg !2256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2258
  ret i32 %6, !dbg !2258
}

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @callbackHash(i8* nocapture readonly) #0 !dbg !2259 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !2265
  %3 = load i8, i8* %2, align 1, !dbg !2265, !tbaa !1195
  %4 = trunc i8 %3 to i3, !dbg !2267
  switch i3 %4, label %5 [
    i3 0, label %6
    i3 1, label %9
    i3 2, label %13
    i3 3, label %18
    i3 -4, label %23
  ], !dbg !2267

; <label>:5:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2268
  br label %79, !dbg !2280

; <label>:6:                                      ; preds = %1
  %7 = lshr i8 %3, 3, !dbg !2281
  %8 = zext i8 %7 to i64, !dbg !2281
  br label %27, !dbg !2282

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !2283
  %11 = load i8, i8* %10, align 1, !dbg !2284, !tbaa !1195
  %12 = zext i8 %11 to i64, !dbg !2283
  br label %27, !dbg !2285

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !2286
  %15 = bitcast i8* %14 to i16*, !dbg !2287
  %16 = load i16, i16* %15, align 1, !dbg !2287, !tbaa !1208
  %17 = zext i16 %16 to i64, !dbg !2286
  br label %27, !dbg !2288

; <label>:18:                                     ; preds = %1
  %19 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !2289
  %20 = bitcast i8* %19 to i32*, !dbg !2290
  %21 = load i32, i32* %20, align 1, !dbg !2290, !tbaa !1213
  %22 = zext i32 %21 to i64, !dbg !2289
  br label %27, !dbg !2291

; <label>:23:                                     ; preds = %1
  %24 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !2292
  %25 = bitcast i8* %24 to i64*, !dbg !2293
  %26 = load i64, i64* %25, align 1, !dbg !2293, !tbaa !384
  br label %27, !dbg !2294

; <label>:27:                                     ; preds = %6, %9, %13, %18, %23
  %28 = phi i64 [ %26, %23 ], [ %22, %18 ], [ %17, %13 ], [ %12, %9 ], [ %8, %6 ], !dbg !2295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2268
  %29 = trunc i64 %28 to i32, !dbg !2296
  %30 = icmp eq i32 %29, 0, !dbg !2280
  br i1 %30, label %79, label %31, !dbg !2280

; <label>:31:                                     ; preds = %27
  %32 = add i32 %29, -1, !dbg !2297
  %33 = and i32 %29, 3, !dbg !2297
  %34 = icmp ult i32 %32, 3, !dbg !2297
  br i1 %34, label %63, label %35, !dbg !2297

; <label>:35:                                     ; preds = %31
  %36 = sub i32 %29, %33, !dbg !2297
  br label %37, !dbg !2297

; <label>:37:                                     ; preds = %37, %35
  %38 = phi i32 [ 5381, %35 ], [ %60, %37 ]
  %39 = phi i8* [ %0, %35 ], [ %57, %37 ]
  %40 = phi i32 [ %36, %35 ], [ %61, %37 ]
  %41 = mul i32 %38, 33, !dbg !2298
  %42 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !2299
  %43 = load i8, i8* %39, align 1, !dbg !2300, !tbaa !1195
  %44 = zext i8 %43 to i32, !dbg !2301
  %45 = add i32 %41, %44, !dbg !2302
  %46 = mul i32 %45, 33, !dbg !2298
  %47 = getelementptr inbounds i8, i8* %39, i64 2, !dbg !2299
  %48 = load i8, i8* %42, align 1, !dbg !2300, !tbaa !1195
  %49 = zext i8 %48 to i32, !dbg !2301
  %50 = add i32 %46, %49, !dbg !2302
  %51 = mul i32 %50, 33, !dbg !2298
  %52 = getelementptr inbounds i8, i8* %39, i64 3, !dbg !2299
  %53 = load i8, i8* %47, align 1, !dbg !2300, !tbaa !1195
  %54 = zext i8 %53 to i32, !dbg !2301
  %55 = add i32 %51, %54, !dbg !2302
  %56 = mul i32 %55, 33, !dbg !2298
  %57 = getelementptr inbounds i8, i8* %39, i64 4, !dbg !2299
  %58 = load i8, i8* %52, align 1, !dbg !2300, !tbaa !1195
  %59 = zext i8 %58 to i32, !dbg !2301
  %60 = add i32 %56, %59, !dbg !2302
  %61 = add i32 %40, -4, !dbg !2280
  %62 = icmp eq i32 %61, 0, !dbg !2280
  br i1 %62, label %63, label %37, !dbg !2280, !llvm.loop !2303

; <label>:63:                                     ; preds = %37, %31
  %64 = phi i32 [ undef, %31 ], [ %60, %37 ]
  %65 = phi i32 [ 5381, %31 ], [ %60, %37 ]
  %66 = phi i8* [ %0, %31 ], [ %57, %37 ]
  %67 = icmp eq i32 %33, 0, !dbg !2280
  br i1 %67, label %79, label %68, !dbg !2280

; <label>:68:                                     ; preds = %63, %68
  %69 = phi i32 [ %76, %68 ], [ %65, %63 ]
  %70 = phi i8* [ %73, %68 ], [ %66, %63 ]
  %71 = phi i32 [ %77, %68 ], [ %33, %63 ]
  %72 = mul i32 %69, 33, !dbg !2298
  %73 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !2299
  %74 = load i8, i8* %70, align 1, !dbg !2300, !tbaa !1195
  %75 = zext i8 %74 to i32, !dbg !2301
  %76 = add i32 %72, %75, !dbg !2302
  %77 = add i32 %71, -1, !dbg !2280
  %78 = icmp eq i32 %77, 0, !dbg !2280
  br i1 %78, label %79, label %68, !dbg !2280, !llvm.loop !2306

; <label>:79:                                     ; preds = %63, %68, %5, %27
  %80 = phi i32 [ 5381, %27 ], [ 5381, %5 ], [ %64, %63 ], [ %76, %68 ], !dbg !2308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2310
  ret i32 %80, !dbg !2310
}

; Function Attrs: noredzone nounwind
define internal i8* @callbackValDup(i8* nocapture readnone, i8*) #0 !dbg !2311 {
  %3 = tail call i8* @malloc(i64 24) #7, !dbg !2318
  %4 = tail call i8* @memcpy(i8* %3, i8* %1, i64 24) #7, !dbg !2320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2321
  ret i8* %3, !dbg !2321
}

; Function Attrs: noredzone nounwind
define internal i32 @callbackKeyCompare(i8* nocapture readnone, i8*, i8*) #0 !dbg !2322 {
  %4 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !2334
  %5 = load i8, i8* %4, align 1, !dbg !2334, !tbaa !1195
  %6 = trunc i8 %5 to i3, !dbg !2336
  switch i3 %6, label %28 [
    i3 0, label %7
    i3 1, label %10
    i3 2, label %14
    i3 3, label %19
    i3 -4, label %24
  ], !dbg !2336

; <label>:7:                                      ; preds = %3
  %8 = lshr i8 %5, 3, !dbg !2337
  %9 = zext i8 %8 to i64, !dbg !2337
  br label %28, !dbg !2338

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !2339
  %12 = load i8, i8* %11, align 1, !dbg !2340, !tbaa !1195
  %13 = zext i8 %12 to i64, !dbg !2339
  br label %28, !dbg !2341

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !2342
  %16 = bitcast i8* %15 to i16*, !dbg !2343
  %17 = load i16, i16* %16, align 1, !dbg !2343, !tbaa !1208
  %18 = zext i16 %17 to i64, !dbg !2342
  br label %28, !dbg !2344

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !2345
  %21 = bitcast i8* %20 to i32*, !dbg !2346
  %22 = load i32, i32* %21, align 1, !dbg !2346, !tbaa !1213
  %23 = zext i32 %22 to i64, !dbg !2345
  br label %28, !dbg !2347

; <label>:24:                                     ; preds = %3
  %25 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !2348
  %26 = bitcast i8* %25 to i64*, !dbg !2349
  %27 = load i64, i64* %26, align 1, !dbg !2349, !tbaa !384
  br label %28, !dbg !2350

; <label>:28:                                     ; preds = %3, %7, %10, %14, %19, %24
  %29 = phi i64 [ %27, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %10 ], [ %9, %7 ], [ 0, %3 ], !dbg !2351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2352
  %30 = trunc i64 %29 to i32, !dbg !2353
  %31 = getelementptr inbounds i8, i8* %2, i64 -1, !dbg !2357
  %32 = load i8, i8* %31, align 1, !dbg !2357, !tbaa !1195
  %33 = trunc i8 %32 to i3, !dbg !2359
  switch i3 %33, label %55 [
    i3 0, label %34
    i3 1, label %37
    i3 2, label %41
    i3 3, label %46
    i3 -4, label %51
  ], !dbg !2359

; <label>:34:                                     ; preds = %28
  %35 = lshr i8 %32, 3, !dbg !2360
  %36 = zext i8 %35 to i64, !dbg !2360
  br label %55, !dbg !2361

; <label>:37:                                     ; preds = %28
  %38 = getelementptr inbounds i8, i8* %2, i64 -3, !dbg !2362
  %39 = load i8, i8* %38, align 1, !dbg !2363, !tbaa !1195
  %40 = zext i8 %39 to i64, !dbg !2362
  br label %55, !dbg !2364

; <label>:41:                                     ; preds = %28
  %42 = getelementptr inbounds i8, i8* %2, i64 -5, !dbg !2365
  %43 = bitcast i8* %42 to i16*, !dbg !2366
  %44 = load i16, i16* %43, align 1, !dbg !2366, !tbaa !1208
  %45 = zext i16 %44 to i64, !dbg !2365
  br label %55, !dbg !2367

; <label>:46:                                     ; preds = %28
  %47 = getelementptr inbounds i8, i8* %2, i64 -9, !dbg !2368
  %48 = bitcast i8* %47 to i32*, !dbg !2369
  %49 = load i32, i32* %48, align 1, !dbg !2369, !tbaa !1213
  %50 = zext i32 %49 to i64, !dbg !2368
  br label %55, !dbg !2370

; <label>:51:                                     ; preds = %28
  %52 = getelementptr inbounds i8, i8* %2, i64 -17, !dbg !2371
  %53 = bitcast i8* %52 to i64*, !dbg !2372
  %54 = load i64, i64* %53, align 1, !dbg !2372, !tbaa !384
  br label %55, !dbg !2373

; <label>:55:                                     ; preds = %28, %34, %37, %41, %46, %51
  %56 = phi i64 [ %54, %51 ], [ %50, %46 ], [ %45, %41 ], [ %40, %37 ], [ %36, %34 ], [ 0, %28 ], !dbg !2374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2375
  %57 = trunc i64 %56 to i32, !dbg !2376
  %58 = icmp eq i32 %30, %57, !dbg !2378
  br i1 %58, label %59, label %65, !dbg !2380

; <label>:59:                                     ; preds = %55
  %60 = shl i64 %29, 32, !dbg !2381
  %61 = ashr exact i64 %60, 32, !dbg !2381
  %62 = tail call i32 @memcmp(i8* nonnull %1, i8* nonnull %2, i64 %61) #7, !dbg !2382
  %63 = icmp eq i32 %62, 0, !dbg !2383
  %64 = zext i1 %63 to i32, !dbg !2383
  br label %65, !dbg !2384

; <label>:65:                                     ; preds = %55, %59
  %66 = phi i32 [ %64, %59 ], [ 0, %55 ], !dbg !2385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2386
  ret i32 %66, !dbg !2386
}

; Function Attrs: noredzone nounwind
define internal void @callbackKeyDestructor(i8* nocapture readnone, i8*) #0 !dbg !2387 {
  tail call void @sdsfree(i8* %1) #7, !dbg !2393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2394
  ret void, !dbg !2394
}

; Function Attrs: noredzone nounwind
define internal void @callbackValDestructor(i8* nocapture readnone, i8*) #0 !dbg !2395 {
  tail call void @free(i8* %1) #7, !dbg !2401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2402
  ret void, !dbg !2402
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @dictRelease(%struct.dict*) unnamed_addr #0 !dbg !2403 {
  %2 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !2421
  %3 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, !dbg !2422
  %4 = load i64, i64* %3, align 8, !dbg !2422, !tbaa !979
  %5 = icmp eq i64 %4, 0, !dbg !2423
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0
  br i1 %5, label %55, label %7, !dbg !2424

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 5
  %10 = load i64, i64* %2, align 8, !dbg !2421, !tbaa !387
  br label %11, !dbg !2424

; <label>:11:                                     ; preds = %50, %7
  %12 = phi i64 [ %4, %7 ], [ %51, %50 ]
  %13 = phi i64 [ %10, %7 ], [ %52, %50 ], !dbg !2421
  %14 = phi i64 [ 0, %7 ], [ %53, %50 ]
  %15 = icmp eq i64 %13, 0, !dbg !2425
  br i1 %15, label %55, label %16, !dbg !2426

; <label>:16:                                     ; preds = %11
  %17 = load %struct.dictEntry**, %struct.dictEntry*** %6, align 8, !dbg !2427, !tbaa !379
  %18 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %17, i64 %14, !dbg !2429
  %19 = load %struct.dictEntry*, %struct.dictEntry** %18, align 8, !dbg !2429, !tbaa !326
  %20 = icmp eq %struct.dictEntry* %19, null, !dbg !2431
  br i1 %20, label %50, label %21, !dbg !2432

; <label>:21:                                     ; preds = %16, %43
  %22 = phi %struct.dictEntry* [ %24, %43 ], [ %19, %16 ]
  %23 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %22, i64 0, i32 2, !dbg !2433
  %24 = load %struct.dictEntry*, %struct.dictEntry** %23, align 8, !dbg !2433, !tbaa !1021
  %25 = load %struct.dictType*, %struct.dictType** %8, align 8, !dbg !2436, !tbaa !391
  %26 = getelementptr inbounds %struct.dictType, %struct.dictType* %25, i64 0, i32 4, !dbg !2436
  %27 = load void (i8*, i8*)*, void (i8*, i8*)** %26, align 8, !dbg !2436, !tbaa !1503
  %28 = icmp eq void (i8*, i8*)* %27, null, !dbg !2436
  br i1 %28, label %34, label %29, !dbg !2438

; <label>:29:                                     ; preds = %21
  %30 = load i8*, i8** %9, align 8, !dbg !2436, !tbaa !394
  %31 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %22, i64 0, i32 0, !dbg !2436
  %32 = load i8*, i8** %31, align 8, !dbg !2436, !tbaa !1444
  tail call void %27(i8* %30, i8* %32) #7, !dbg !2436
  %33 = load %struct.dictType*, %struct.dictType** %8, align 8, !dbg !2439, !tbaa !391
  br label %34, !dbg !2436

; <label>:34:                                     ; preds = %29, %21
  %35 = phi %struct.dictType* [ %25, %21 ], [ %33, %29 ], !dbg !2439
  %36 = getelementptr inbounds %struct.dictType, %struct.dictType* %35, i64 0, i32 5, !dbg !2439
  %37 = load void (i8*, i8*)*, void (i8*, i8*)** %36, align 8, !dbg !2439, !tbaa !1507
  %38 = icmp eq void (i8*, i8*)* %37, null, !dbg !2439
  br i1 %38, label %43, label %39, !dbg !2441

; <label>:39:                                     ; preds = %34
  %40 = load i8*, i8** %9, align 8, !dbg !2439, !tbaa !394
  %41 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %22, i64 0, i32 1, !dbg !2439
  %42 = load i8*, i8** %41, align 8, !dbg !2439, !tbaa !1026
  tail call void %37(i8* %40, i8* %42) #7, !dbg !2439
  br label %43, !dbg !2439

; <label>:43:                                     ; preds = %39, %34
  %44 = bitcast %struct.dictEntry* %22 to i8*, !dbg !2442
  tail call void @free(i8* %44) #7, !dbg !2443
  %45 = load i64, i64* %2, align 8, !dbg !2444, !tbaa !387
  %46 = add i64 %45, -1, !dbg !2444
  store i64 %46, i64* %2, align 8, !dbg !2444, !tbaa !387
  %47 = icmp eq %struct.dictEntry* %24, null, !dbg !2445
  br i1 %47, label %48, label %21, !dbg !2445, !llvm.loop !2446

; <label>:48:                                     ; preds = %43
  %49 = load i64, i64* %3, align 8, !dbg !2422, !tbaa !979
  br label %50, !dbg !2449

; <label>:50:                                     ; preds = %48, %16
  %51 = phi i64 [ %49, %48 ], [ %12, %16 ], !dbg !2422
  %52 = phi i64 [ %46, %48 ], [ %13, %16 ]
  %53 = add nuw i64 %14, 1, !dbg !2449
  %54 = icmp ult i64 %53, %51, !dbg !2423
  br i1 %54, label %11, label %55, !dbg !2424, !llvm.loop !2450

; <label>:55:                                     ; preds = %11, %50, %1
  %56 = bitcast %struct.dict* %0 to i8**, !dbg !2453
  %57 = load i8*, i8** %56, align 8, !dbg !2453, !tbaa !379
  tail call void @free(i8* %57) #7, !dbg !2454
  store %struct.dictEntry** null, %struct.dictEntry*** %6, align 8, !dbg !2457, !tbaa !379
  %58 = bitcast i64* %3 to <2 x i64>*, !dbg !2458
  store <2 x i64> zeroinitializer, <2 x i64>* %58, align 8, !dbg !2458, !tbaa !384
  store i64 0, i64* %2, align 8, !dbg !2459, !tbaa !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2461
  %59 = bitcast %struct.dict* %0 to i8*, !dbg !2462
  tail call void @free(i8* %59) #7, !dbg !2463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2464
  ret void, !dbg !2464
}

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local i32 @redisCheckSocketError(%struct.redisContext*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strncasecmp(i8*, i8*, i64) local_unnamed_addr #6

; Function Attrs: noredzone nounwind
define internal fastcc i32 @dictReplace(%struct.dict* nocapture, i8*, i8*) unnamed_addr #0 !dbg !2465 {
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, !dbg !2505
  %5 = load i64, i64* %4, align 8, !dbg !2505, !tbaa !979
  %6 = icmp eq i64 %5, 0, !dbg !2507
  br i1 %6, label %14, label %7, !dbg !2508

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !2509
  %9 = load i64, i64* %8, align 8, !dbg !2509, !tbaa !387
  %10 = icmp eq i64 %9, %5, !dbg !2511
  br i1 %10, label %12, label %11, !dbg !2512

; <label>:11:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2513
  br label %18, !dbg !2514

; <label>:12:                                     ; preds = %7
  %13 = shl i64 %5, 1, !dbg !2515
  br label %14, !dbg !2516

; <label>:14:                                     ; preds = %3, %12
  %15 = phi i64 [ %13, %12 ], [ 4, %3 ]
  %16 = tail call fastcc i32 @dictExpand(%struct.dict* nonnull %0, i64 %15) #7, !dbg !2517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2513
  %17 = icmp eq i32 %16, 1, !dbg !2518
  br i1 %17, label %55, label %18, !dbg !2514

; <label>:18:                                     ; preds = %14, %11
  %19 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !2519
  %20 = load %struct.dictType*, %struct.dictType** %19, align 8, !dbg !2519, !tbaa !391
  %21 = getelementptr inbounds %struct.dictType, %struct.dictType* %20, i64 0, i32 0, !dbg !2519
  %22 = load i32 (i8*)*, i32 (i8*)** %21, align 8, !dbg !2519, !tbaa !1429
  %23 = tail call i32 %22(i8* %1) #7, !dbg !2519
  %24 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !2520
  %25 = load i64, i64* %24, align 8, !dbg !2520, !tbaa !1432
  %26 = trunc i64 %25 to i32, !dbg !2519
  %27 = and i32 %23, %26, !dbg !2519
  %28 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !2522
  %29 = load %struct.dictEntry**, %struct.dictEntry*** %28, align 8, !dbg !2522, !tbaa !379
  %30 = zext i32 %27 to i64, !dbg !2523
  %31 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %29, i64 %30, !dbg !2523
  %32 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 5, !dbg !2525
  %33 = load %struct.dictEntry*, %struct.dictEntry** %31, align 8, !dbg !2528, !tbaa !326
  %34 = icmp eq %struct.dictEntry* %33, null, !dbg !2529
  br i1 %34, label %56, label %35, !dbg !2529

; <label>:35:                                     ; preds = %18, %51
  %36 = phi %struct.dictEntry* [ %53, %51 ], [ %33, %18 ]
  %37 = load %struct.dictType*, %struct.dictType** %19, align 8, !dbg !2525, !tbaa !391
  %38 = getelementptr inbounds %struct.dictType, %struct.dictType* %37, i64 0, i32 3, !dbg !2525
  %39 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %38, align 8, !dbg !2525, !tbaa !1442
  %40 = icmp eq i32 (i8*, i8*, i8*)* %39, null, !dbg !2525
  br i1 %40, label %47, label %41, !dbg !2530

; <label>:41:                                     ; preds = %35
  %42 = load i8*, i8** %32, align 8, !dbg !2525, !tbaa !394
  %43 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %36, i64 0, i32 0, !dbg !2525
  %44 = load i8*, i8** %43, align 8, !dbg !2525, !tbaa !1444
  %45 = tail call i32 %39(i8* %42, i8* %1, i8* %44) #7, !dbg !2525
  %46 = icmp eq i32 %45, 0, !dbg !2525
  br i1 %46, label %51, label %55, !dbg !2525

; <label>:47:                                     ; preds = %35
  %48 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %36, i64 0, i32 0, !dbg !2525
  %49 = load i8*, i8** %48, align 8, !dbg !2525, !tbaa !1444
  %50 = icmp eq i8* %49, %1, !dbg !2525
  br i1 %50, label %55, label %51, !dbg !2530

; <label>:51:                                     ; preds = %47, %41
  %52 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %36, i64 0, i32 2, !dbg !2531
  %53 = load %struct.dictEntry*, %struct.dictEntry** %52, align 8, !dbg !2528, !tbaa !326
  %54 = icmp eq %struct.dictEntry* %53, null, !dbg !2529
  br i1 %54, label %56, label %35, !dbg !2529, !llvm.loop !2532

; <label>:55:                                     ; preds = %47, %41, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2535
  br label %94, !dbg !2537

; <label>:56:                                     ; preds = %51, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2535
  %57 = icmp eq i32 %27, -1, !dbg !2538
  br i1 %57, label %94, label %58, !dbg !2537

; <label>:58:                                     ; preds = %56
  %59 = tail call i8* @malloc(i64 24) #7, !dbg !2539
  %60 = load %struct.dictEntry**, %struct.dictEntry*** %28, align 8, !dbg !2540, !tbaa !379
  %61 = sext i32 %27 to i64, !dbg !2541
  %62 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %60, i64 %61, !dbg !2541
  %63 = bitcast %struct.dictEntry** %62 to i64*, !dbg !2541
  %64 = load i64, i64* %63, align 8, !dbg !2541, !tbaa !326
  %65 = getelementptr inbounds i8, i8* %59, i64 16, !dbg !2542
  %66 = bitcast i8* %65 to i64*, !dbg !2543
  store i64 %64, i64* %66, align 8, !dbg !2543, !tbaa !1021
  %67 = bitcast %struct.dictEntry** %62 to i8**, !dbg !2544
  store i8* %59, i8** %67, align 8, !dbg !2544, !tbaa !326
  %68 = load %struct.dictType*, %struct.dictType** %19, align 8, !dbg !2545, !tbaa !391
  %69 = getelementptr inbounds %struct.dictType, %struct.dictType* %68, i64 0, i32 1, !dbg !2545
  %70 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %69, align 8, !dbg !2545, !tbaa !2548
  %71 = icmp eq i8* (i8*, i8*)* %70, null, !dbg !2545
  br i1 %71, label %77, label %72, !dbg !2549

; <label>:72:                                     ; preds = %58
  %73 = load i8*, i8** %32, align 8, !dbg !2545, !tbaa !394
  %74 = tail call i8* %70(i8* %73, i8* %1) #7, !dbg !2545
  %75 = bitcast i8* %59 to i8**, !dbg !2545
  store i8* %74, i8** %75, align 8, !dbg !2545, !tbaa !1444
  %76 = load %struct.dictType*, %struct.dictType** %19, align 8, !dbg !2551, !tbaa !391
  br label %79, !dbg !2545

; <label>:77:                                     ; preds = %58
  %78 = bitcast i8* %59 to i8**, !dbg !2545
  store i8* %1, i8** %78, align 8, !dbg !2545, !tbaa !1444
  br label %79

; <label>:79:                                     ; preds = %77, %72
  %80 = phi %struct.dictType* [ %76, %72 ], [ %68, %77 ], !dbg !2551
  %81 = getelementptr inbounds %struct.dictType, %struct.dictType* %80, i64 0, i32 2, !dbg !2551
  %82 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %81, align 8, !dbg !2551, !tbaa !2554
  %83 = icmp eq i8* (i8*, i8*)* %82, null, !dbg !2551
  br i1 %83, label %87, label %84, !dbg !2555

; <label>:84:                                     ; preds = %79
  %85 = load i8*, i8** %32, align 8, !dbg !2551, !tbaa !394
  %86 = tail call i8* %82(i8* %85, i8* %2) #7, !dbg !2551
  br label %87, !dbg !2551

; <label>:87:                                     ; preds = %79, %84
  %88 = phi i8* [ %86, %84 ], [ %2, %79 ]
  %89 = getelementptr inbounds i8, i8* %59, i64 8, !dbg !2551
  %90 = bitcast i8* %89 to i8**, !dbg !2551
  store i8* %88, i8** %90, align 8, !dbg !2551, !tbaa !1026
  %91 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !2556
  %92 = load i64, i64* %91, align 8, !dbg !2557, !tbaa !387
  %93 = add i64 %92, 1, !dbg !2557
  store i64 %93, i64* %91, align 8, !dbg !2557, !tbaa !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2558
  br label %156, !dbg !2559

; <label>:94:                                     ; preds = %56, %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2558
  %95 = load i64, i64* %4, align 8, !dbg !2563, !tbaa !979
  %96 = icmp eq i64 %95, 0, !dbg !2564
  %97 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !2565
  br i1 %96, label %134, label %98, !dbg !2566

; <label>:98:                                     ; preds = %94
  %99 = load %struct.dictType*, %struct.dictType** %97, align 8, !dbg !2567, !tbaa !391
  %100 = getelementptr inbounds %struct.dictType, %struct.dictType* %99, i64 0, i32 0, !dbg !2567
  %101 = load i32 (i8*)*, i32 (i8*)** %100, align 8, !dbg !2567, !tbaa !1429
  %102 = tail call i32 %101(i8* %1) #7, !dbg !2567
  %103 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !2568
  %104 = load i64, i64* %103, align 8, !dbg !2568, !tbaa !1432
  %105 = trunc i64 %104 to i32, !dbg !2567
  %106 = and i32 %102, %105, !dbg !2567
  %107 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !2570
  %108 = load %struct.dictEntry**, %struct.dictEntry*** %107, align 8, !dbg !2570, !tbaa !379
  %109 = zext i32 %106 to i64, !dbg !2571
  %110 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %108, i64 %109, !dbg !2571
  %111 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 5, !dbg !2573
  %112 = load %struct.dictEntry*, %struct.dictEntry** %110, align 8, !dbg !2574, !tbaa !326
  %113 = icmp eq %struct.dictEntry* %112, null, !dbg !2575
  br i1 %113, label %134, label %114, !dbg !2575

; <label>:114:                                    ; preds = %98, %130
  %115 = phi %struct.dictEntry* [ %132, %130 ], [ %112, %98 ]
  %116 = load %struct.dictType*, %struct.dictType** %97, align 8, !dbg !2573, !tbaa !391
  %117 = getelementptr inbounds %struct.dictType, %struct.dictType* %116, i64 0, i32 3, !dbg !2573
  %118 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %117, align 8, !dbg !2573, !tbaa !1442
  %119 = icmp eq i32 (i8*, i8*, i8*)* %118, null, !dbg !2573
  br i1 %119, label %126, label %120, !dbg !2576

; <label>:120:                                    ; preds = %114
  %121 = load i8*, i8** %111, align 8, !dbg !2573, !tbaa !394
  %122 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %115, i64 0, i32 0, !dbg !2573
  %123 = load i8*, i8** %122, align 8, !dbg !2573, !tbaa !1444
  %124 = tail call i32 %118(i8* %121, i8* %1, i8* %123) #7, !dbg !2573
  %125 = icmp eq i32 %124, 0, !dbg !2573
  br i1 %125, label %130, label %134, !dbg !2573

; <label>:126:                                    ; preds = %114
  %127 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %115, i64 0, i32 0, !dbg !2573
  %128 = load i8*, i8** %127, align 8, !dbg !2573, !tbaa !1444
  %129 = icmp eq i8* %128, %1, !dbg !2573
  br i1 %129, label %134, label %130, !dbg !2576

; <label>:130:                                    ; preds = %126, %120
  %131 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %115, i64 0, i32 2, !dbg !2577
  %132 = load %struct.dictEntry*, %struct.dictEntry** %131, align 8, !dbg !2574, !tbaa !326
  %133 = icmp eq %struct.dictEntry* %132, null, !dbg !2575
  br i1 %133, label %134, label %114, !dbg !2575, !llvm.loop !1446

; <label>:134:                                    ; preds = %120, %126, %130, %94, %98
  %135 = phi %struct.dictEntry* [ null, %98 ], [ null, %94 ], [ null, %130 ], [ %115, %126 ], [ %115, %120 ], !dbg !2578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2579
  %136 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %135, i64 0, i32 1, !dbg !2582
  %137 = load i8*, i8** %136, align 8, !dbg !2582
  %138 = load %struct.dictType*, %struct.dictType** %97, align 8, !dbg !2583, !tbaa !391
  %139 = getelementptr inbounds %struct.dictType, %struct.dictType* %138, i64 0, i32 2, !dbg !2583
  %140 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %139, align 8, !dbg !2583, !tbaa !2554
  %141 = icmp eq i8* (i8*, i8*)* %140, null, !dbg !2583
  br i1 %141, label %147, label %142, !dbg !2586

; <label>:142:                                    ; preds = %134
  %143 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 5, !dbg !2583
  %144 = load i8*, i8** %143, align 8, !dbg !2583, !tbaa !394
  %145 = tail call i8* %140(i8* %144, i8* %2) #7, !dbg !2583
  %146 = load %struct.dictType*, %struct.dictType** %97, align 8, !dbg !2587, !tbaa !391
  br label %147, !dbg !2583

; <label>:147:                                    ; preds = %134, %142
  %148 = phi %struct.dictType* [ %146, %142 ], [ %138, %134 ], !dbg !2587
  %149 = phi i8* [ %145, %142 ], [ %2, %134 ]
  store i8* %149, i8** %136, align 8, !dbg !2583, !tbaa !1026
  %150 = getelementptr inbounds %struct.dictType, %struct.dictType* %148, i64 0, i32 5, !dbg !2587
  %151 = load void (i8*, i8*)*, void (i8*, i8*)** %150, align 8, !dbg !2587, !tbaa !1507
  %152 = icmp eq void (i8*, i8*)* %151, null, !dbg !2587
  br i1 %152, label %156, label %153, !dbg !2589

; <label>:153:                                    ; preds = %147
  %154 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 5, !dbg !2587
  %155 = load i8*, i8** %154, align 8, !dbg !2587, !tbaa !394
  tail call void %151(i8* %155, i8* %137) #7, !dbg !2587
  br label %156, !dbg !2587

; <label>:156:                                    ; preds = %87, %153, %147
  %157 = phi i32 [ 1, %87 ], [ 0, %147 ], [ 0, %153 ], !dbg !2565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2590
  ret i32 %157, !dbg !2590
}

; Function Attrs: noredzone
declare dso_local i32 @__redisAppendCommand(%struct.redisContext*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc i32 @dictExpand(%struct.dict* nocapture, i64) unnamed_addr #0 !dbg !2591 {
  %3 = icmp ugt i64 %1, 9223372036854775806, !dbg !2618
  br i1 %3, label %8, label %4, !dbg !2620

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %7, %4 ], [ 4, %2 ], !dbg !2621
  %6 = icmp ult i64 %5, %1, !dbg !2623
  %7 = shl i64 %5, 1, !dbg !2625
  br i1 %6, label %4, label %8, !dbg !2626, !llvm.loop !2627

; <label>:8:                                      ; preds = %4, %2
  %9 = phi i64 [ 9223372036854775807, %2 ], [ %5, %4 ], !dbg !2630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2631
  %10 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !2633
  %11 = load i64, i64* %10, align 8, !dbg !2633, !tbaa !387
  %12 = icmp ugt i64 %11, %1, !dbg !2635
  br i1 %12, label %75, label %13, !dbg !2636

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !2637
  %15 = bitcast %struct.dictType** %14 to i64*, !dbg !2637
  %16 = load i64, i64* %15, align 8, !dbg !2637, !tbaa !391
  %17 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 5, !dbg !2638
  %18 = bitcast i8** %17 to i64*, !dbg !2638
  %19 = load i64, i64* %18, align 8, !dbg !2638, !tbaa !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2647
  %20 = add i64 %9, -1, !dbg !2648
  %21 = tail call i8* @calloc(i64 %9, i64 8) #7, !dbg !2649
  %22 = bitcast i8* %21 to %struct.dictEntry**, !dbg !2650
  %23 = load i64, i64* %10, align 8, !dbg !2651, !tbaa !387
  %24 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, !dbg !2653
  %25 = load i64, i64* %24, align 8, !dbg !2653, !tbaa !979
  %26 = icmp eq i64 %25, 0, !dbg !2654
  %27 = icmp eq i64 %23, 0, !dbg !2655
  br i1 %26, label %68, label %28, !dbg !2656

; <label>:28:                                     ; preds = %13
  %29 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0
  %30 = trunc i64 %20 to i32
  br label %31, !dbg !2656

; <label>:31:                                     ; preds = %28, %62
  %32 = phi i64 [ %23, %28 ], [ %63, %62 ]
  %33 = phi i64 [ %25, %28 ], [ %64, %62 ]
  %34 = phi i1 [ %27, %28 ], [ %67, %62 ]
  %35 = phi i64 [ 0, %28 ], [ %65, %62 ]
  br i1 %34, label %71, label %36, !dbg !2657

; <label>:36:                                     ; preds = %31
  %37 = load %struct.dictEntry**, %struct.dictEntry*** %29, align 8, !dbg !2658, !tbaa !379
  %38 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %37, i64 %35, !dbg !2660
  %39 = load %struct.dictEntry*, %struct.dictEntry** %38, align 8, !dbg !2660, !tbaa !326
  %40 = icmp eq %struct.dictEntry* %39, null, !dbg !2661
  br i1 %40, label %62, label %41, !dbg !2662

; <label>:41:                                     ; preds = %36, %41
  %42 = phi %struct.dictEntry* [ %44, %41 ], [ %39, %36 ]
  %43 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %42, i64 0, i32 2, !dbg !2664
  %44 = load %struct.dictEntry*, %struct.dictEntry** %43, align 8, !dbg !2664, !tbaa !1021
  %45 = load %struct.dictType*, %struct.dictType** %14, align 8, !dbg !2666, !tbaa !391
  %46 = getelementptr inbounds %struct.dictType, %struct.dictType* %45, i64 0, i32 0, !dbg !2666
  %47 = load i32 (i8*)*, i32 (i8*)** %46, align 8, !dbg !2666, !tbaa !1429
  %48 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %42, i64 0, i32 0, !dbg !2666
  %49 = load i8*, i8** %48, align 8, !dbg !2666, !tbaa !1444
  %50 = tail call i32 %47(i8* %49) #7, !dbg !2666
  %51 = and i32 %50, %30, !dbg !2666
  %52 = zext i32 %51 to i64, !dbg !2668
  %53 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %22, i64 %52, !dbg !2668
  %54 = bitcast %struct.dictEntry** %53 to i64*, !dbg !2668
  %55 = load i64, i64* %54, align 8, !dbg !2668, !tbaa !326
  %56 = bitcast %struct.dictEntry** %43 to i64*, !dbg !2669
  store i64 %55, i64* %56, align 8, !dbg !2669, !tbaa !1021
  store %struct.dictEntry* %42, %struct.dictEntry** %53, align 8, !dbg !2670, !tbaa !326
  %57 = load i64, i64* %10, align 8, !dbg !2671, !tbaa !387
  %58 = add i64 %57, -1, !dbg !2671
  store i64 %58, i64* %10, align 8, !dbg !2671, !tbaa !387
  %59 = icmp eq %struct.dictEntry* %44, null, !dbg !2672
  br i1 %59, label %60, label %41, !dbg !2672, !llvm.loop !2673

; <label>:60:                                     ; preds = %41
  %61 = load i64, i64* %24, align 8, !dbg !2653, !tbaa !979
  br label %62, !dbg !2675

; <label>:62:                                     ; preds = %60, %36
  %63 = phi i64 [ %58, %60 ], [ %32, %36 ], !dbg !2655
  %64 = phi i64 [ %61, %60 ], [ %33, %36 ], !dbg !2653
  %65 = add nuw i64 %35, 1, !dbg !2675
  %66 = icmp ult i64 %65, %64, !dbg !2654
  %67 = icmp eq i64 %63, 0, !dbg !2655
  br i1 %66, label %31, label %68, !dbg !2656, !llvm.loop !2676

; <label>:68:                                     ; preds = %62, %13
  %69 = phi i1 [ %27, %13 ], [ %67, %62 ], !dbg !2655
  br i1 %69, label %71, label %70, !dbg !2678

; <label>:70:                                     ; preds = %68
  tail call void @__assert_func(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.14, i64 0, i64 0), i32 126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.dictExpand, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0)) #9, !dbg !2678
  unreachable, !dbg !2678

; <label>:71:                                     ; preds = %31, %68
  %72 = bitcast %struct.dict* %0 to i8**, !dbg !2679
  %73 = load i8*, i8** %72, align 8, !dbg !2679, !tbaa !379
  tail call void @free(i8* %73) #7, !dbg !2680
  store i8* %21, i8** %72, align 8, !dbg !2681
  store i64 %16, i64* %15, align 8, !dbg !2681
  store i64 %9, i64* %24, align 8, !dbg !2681
  %74 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !2681
  store i64 %20, i64* %74, align 8, !dbg !2681
  store i64 %23, i64* %10, align 8, !dbg !2681
  store i64 %19, i64* %18, align 8, !dbg !2681
  br label %75, !dbg !2682

; <label>:75:                                     ; preds = %8, %71
  %76 = phi i32 [ 0, %71 ], [ 1, %8 ], !dbg !2655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2683
  ret i32 %76, !dbg !2683
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
attributes #6 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nobuiltin noredzone noreturn nounwind }
attributes #10 = { nobuiltin noredzone nounwind readonly }

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
!288 = !DILocalVariable(name: "c", arg: 1, scope: !289, file: !3, line: 105, type: !279)
!289 = distinct !DISubprogram(name: "redisAsyncInitialize", scope: !3, file: !3, line: 105, type: !290, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !292)
!290 = !DISubroutineType(types: !291)
!291 = !{!113, !279}
!292 = !{!288, !293}
!293 = !DILocalVariable(name: "ac", scope: !289, file: !3, line: 106, type: !113)
!294 = !DILocation(line: 105, column: 62, scope: !289, inlinedAt: !295)
!295 = distinct !DILocation(line: 161, column: 10, scope: !110)
!296 = !DILocation(line: 108, column: 18, scope: !289, inlinedAt: !295)
!297 = !DILocation(line: 108, column: 10, scope: !289, inlinedAt: !295)
!298 = !DILocation(line: 109, column: 12, scope: !299, inlinedAt: !295)
!299 = distinct !DILexicalBlock(scope: !289, file: !3, line: 109, column: 9)
!300 = !DILocation(line: 109, column: 9, scope: !289, inlinedAt: !295)
!301 = !DILocation(line: 140, column: 1, scope: !289, inlinedAt: !295)
!302 = !DILocation(line: 155, column: 24, scope: !110)
!303 = !DILocation(line: 163, column: 9, scope: !304)
!304 = distinct !DILexicalBlock(scope: !305, file: !3, line: 162, column: 21)
!305 = distinct !DILexicalBlock(scope: !110, file: !3, line: 162, column: 9)
!306 = !DILocation(line: 164, column: 9, scope: !304)
!307 = !DILocation(line: 117, column: 8, scope: !289, inlinedAt: !295)
!308 = !DILocation(line: 117, column: 14, scope: !289, inlinedAt: !295)
!309 = !{!310, !311, i64 136}
!310 = !{!"redisContext", !311, i64 0, !312, i64 4, !311, i64 132, !311, i64 136, !314, i64 144, !314, i64 152, !312, i64 160, !314, i64 168, !315, i64 176, !316, i64 200}
!311 = !{!"int", !312, i64 0}
!312 = !{!"omnipotent char", !313, i64 0}
!313 = !{!"Simple C/C++ TBAA"}
!314 = !{!"any pointer", !312, i64 0}
!315 = !{!"", !314, i64 0, !314, i64 8, !311, i64 16}
!316 = !{!"", !314, i64 0}
!317 = !DILocation(line: 119, column: 9, scope: !289, inlinedAt: !295)
!318 = !DILocation(line: 119, column: 13, scope: !289, inlinedAt: !295)
!319 = !{!320, !311, i64 208}
!320 = !{!"redisAsyncContext", !310, i64 0, !311, i64 208, !314, i64 216, !314, i64 224, !321, i64 232, !314, i64 280, !314, i64 288, !322, i64 296, !323, i64 312}
!321 = !{!"", !314, i64 0, !314, i64 8, !314, i64 16, !314, i64 24, !314, i64 32, !314, i64 40}
!322 = !{!"redisCallbackList", !314, i64 0, !314, i64 8}
!323 = !{!"", !322, i64 0, !314, i64 16, !314, i64 24}
!324 = !DILocation(line: 120, column: 9, scope: !289, inlinedAt: !295)
!325 = !DILocation(line: 120, column: 16, scope: !289, inlinedAt: !295)
!326 = !{!314, !314, i64 0}
!327 = !DILocation(line: 123, column: 9, scope: !289, inlinedAt: !295)
!328 = !DILocation(line: 123, column: 12, scope: !289, inlinedAt: !295)
!329 = !DILocation(line: 123, column: 17, scope: !289, inlinedAt: !295)
!330 = !{!320, !314, i64 232}
!331 = !DILocation(line: 124, column: 12, scope: !289, inlinedAt: !295)
!332 = !DILocation(line: 124, column: 20, scope: !289, inlinedAt: !295)
!333 = !DILocation(line: 126, column: 12, scope: !289, inlinedAt: !295)
!334 = !DILocation(line: 126, column: 21, scope: !289, inlinedAt: !295)
!335 = !DILocation(line: 128, column: 12, scope: !289, inlinedAt: !295)
!336 = !DILocation(line: 128, column: 20, scope: !289, inlinedAt: !295)
!337 = !{!320, !314, i64 272}
!338 = !DILocation(line: 131, column: 9, scope: !289, inlinedAt: !295)
!339 = !DILocation(line: 131, column: 22, scope: !289, inlinedAt: !295)
!340 = !DILocation(line: 133, column: 9, scope: !289, inlinedAt: !295)
!341 = !DILocation(line: 133, column: 22, scope: !289, inlinedAt: !295)
!342 = !DILocation(line: 135, column: 9, scope: !289, inlinedAt: !295)
!343 = !DILocation(line: 135, column: 26, scope: !289, inlinedAt: !295)
!344 = !DILocalVariable(name: "type", arg: 1, scope: !345, file: !346, line: 73, type: !267)
!345 = distinct !DISubprogram(name: "dictCreate", scope: !346, file: !346, line: 73, type: !347, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !351)
!346 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/dict.c", directory: "/root/.unikraft/apps/redis/build")
!347 = !DISubroutineType(types: !348)
!348 = !{!349, !267, !12}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !83, line: 67, baseType: !254)
!351 = !{!344, !352, !353}
!352 = !DILocalVariable(name: "privDataPtr", arg: 2, scope: !345, file: !346, line: 73, type: !12)
!353 = !DILocalVariable(name: "ht", scope: !345, file: !346, line: 74, type: !349)
!354 = !DILocation(line: 73, column: 35, scope: !345, inlinedAt: !355)
!355 = distinct !DILocation(line: 137, column: 24, scope: !289, inlinedAt: !295)
!356 = !DILocation(line: 73, column: 47, scope: !345, inlinedAt: !355)
!357 = !DILocation(line: 74, column: 16, scope: !345, inlinedAt: !355)
!358 = !DILocation(line: 74, column: 11, scope: !345, inlinedAt: !355)
!359 = !DILocalVariable(name: "ht", arg: 1, scope: !360, file: !346, line: 80, type: !349)
!360 = distinct !DISubprogram(name: "_dictInit", scope: !346, file: !346, line: 80, type: !361, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !363)
!361 = !DISubroutineType(types: !362)
!362 = !{!18, !349, !267, !12}
!363 = !{!359, !364, !365}
!364 = !DILocalVariable(name: "type", arg: 2, scope: !360, file: !346, line: 80, type: !267)
!365 = !DILocalVariable(name: "privDataPtr", arg: 3, scope: !360, file: !346, line: 80, type: !12)
!366 = !DILocation(line: 80, column: 28, scope: !360, inlinedAt: !367)
!367 = distinct !DILocation(line: 75, column: 5, scope: !345, inlinedAt: !355)
!368 = !DILocation(line: 80, column: 42, scope: !360, inlinedAt: !367)
!369 = !DILocation(line: 80, column: 54, scope: !360, inlinedAt: !367)
!370 = !DILocalVariable(name: "ht", arg: 1, scope: !371, file: !346, line: 65, type: !349)
!371 = distinct !DISubprogram(name: "_dictReset", scope: !346, file: !346, line: 65, type: !372, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !374)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !349}
!374 = !{!370}
!375 = !DILocation(line: 65, column: 30, scope: !371, inlinedAt: !376)
!376 = distinct !DILocation(line: 81, column: 5, scope: !360, inlinedAt: !367)
!377 = !DILocation(line: 66, column: 9, scope: !371, inlinedAt: !376)
!378 = !DILocation(line: 66, column: 15, scope: !371, inlinedAt: !376)
!379 = !{!380, !314, i64 0}
!380 = !{!"dict", !314, i64 0, !314, i64 8, !381, i64 16, !381, i64 24, !381, i64 32, !314, i64 40}
!381 = !{!"long", !312, i64 0}
!382 = !DILocation(line: 67, column: 9, scope: !371, inlinedAt: !376)
!383 = !DILocation(line: 67, column: 14, scope: !371, inlinedAt: !376)
!384 = !{!381, !381, i64 0}
!385 = !DILocation(line: 69, column: 9, scope: !371, inlinedAt: !376)
!386 = !DILocation(line: 69, column: 14, scope: !371, inlinedAt: !376)
!387 = !{!380, !381, i64 32}
!388 = !DILocation(line: 70, column: 1, scope: !371, inlinedAt: !376)
!389 = !DILocation(line: 82, column: 9, scope: !360, inlinedAt: !367)
!390 = !DILocation(line: 82, column: 14, scope: !360, inlinedAt: !367)
!391 = !{!380, !314, i64 8}
!392 = !DILocation(line: 83, column: 9, scope: !360, inlinedAt: !367)
!393 = !DILocation(line: 83, column: 18, scope: !360, inlinedAt: !367)
!394 = !{!380, !314, i64 40}
!395 = !DILocation(line: 84, column: 5, scope: !360, inlinedAt: !367)
!396 = !DILocation(line: 76, column: 5, scope: !345, inlinedAt: !355)
!397 = !DILocation(line: 137, column: 13, scope: !289, inlinedAt: !295)
!398 = !DILocation(line: 137, column: 22, scope: !289, inlinedAt: !295)
!399 = !{!320, !314, i64 328}
!400 = !DILocation(line: 73, column: 35, scope: !345, inlinedAt: !401)
!401 = distinct !DILocation(line: 138, column: 24, scope: !289, inlinedAt: !295)
!402 = !DILocation(line: 73, column: 47, scope: !345, inlinedAt: !401)
!403 = !DILocation(line: 74, column: 16, scope: !345, inlinedAt: !401)
!404 = !DILocation(line: 74, column: 11, scope: !345, inlinedAt: !401)
!405 = !DILocation(line: 80, column: 28, scope: !360, inlinedAt: !406)
!406 = distinct !DILocation(line: 75, column: 5, scope: !345, inlinedAt: !401)
!407 = !DILocation(line: 80, column: 42, scope: !360, inlinedAt: !406)
!408 = !DILocation(line: 80, column: 54, scope: !360, inlinedAt: !406)
!409 = !DILocation(line: 65, column: 30, scope: !371, inlinedAt: !410)
!410 = distinct !DILocation(line: 81, column: 5, scope: !360, inlinedAt: !406)
!411 = !DILocation(line: 66, column: 9, scope: !371, inlinedAt: !410)
!412 = !DILocation(line: 66, column: 15, scope: !371, inlinedAt: !410)
!413 = !DILocation(line: 67, column: 9, scope: !371, inlinedAt: !410)
!414 = !DILocation(line: 67, column: 14, scope: !371, inlinedAt: !410)
!415 = !DILocation(line: 69, column: 9, scope: !371, inlinedAt: !410)
!416 = !DILocation(line: 69, column: 14, scope: !371, inlinedAt: !410)
!417 = !DILocation(line: 70, column: 1, scope: !371, inlinedAt: !410)
!418 = !DILocation(line: 82, column: 9, scope: !360, inlinedAt: !406)
!419 = !DILocation(line: 82, column: 14, scope: !360, inlinedAt: !406)
!420 = !DILocation(line: 83, column: 9, scope: !360, inlinedAt: !406)
!421 = !DILocation(line: 83, column: 18, scope: !360, inlinedAt: !406)
!422 = !DILocation(line: 84, column: 5, scope: !360, inlinedAt: !406)
!423 = !DILocation(line: 76, column: 5, scope: !345, inlinedAt: !401)
!424 = !DILocation(line: 138, column: 13, scope: !289, inlinedAt: !295)
!425 = !DILocation(line: 138, column: 22, scope: !289, inlinedAt: !295)
!426 = !{!320, !314, i64 336}
!427 = !DILocation(line: 106, column: 24, scope: !289, inlinedAt: !295)
!428 = !DILocalVariable(name: "ac", arg: 1, scope: !429, file: !3, line: 144, type: !113)
!429 = distinct !DISubprogram(name: "__redisAsyncCopyError", scope: !3, file: !3, line: 144, type: !430, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !432)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !113}
!432 = !{!428, !433}
!433 = !DILocalVariable(name: "c", scope: !429, file: !3, line: 148, type: !279)
!434 = !DILocation(line: 144, column: 54, scope: !429, inlinedAt: !435)
!435 = distinct !DILocation(line: 167, column: 5, scope: !110)
!436 = !DILocation(line: 148, column: 19, scope: !429, inlinedAt: !435)
!437 = !DILocation(line: 149, column: 18, scope: !429, inlinedAt: !435)
!438 = !{!310, !311, i64 0}
!439 = !DILocation(line: 149, column: 13, scope: !429, inlinedAt: !435)
!440 = !DILocation(line: 150, column: 18, scope: !429, inlinedAt: !435)
!441 = !DILocation(line: 150, column: 16, scope: !429, inlinedAt: !435)
!442 = !{!320, !314, i64 216}
!443 = !DILocation(line: 151, column: 1, scope: !429, inlinedAt: !435)
!444 = !DILocation(line: 168, column: 5, scope: !110)
!445 = !DILocation(line: 0, scope: !110)
!446 = !DILocation(line: 169, column: 1, scope: !110)
!447 = distinct !DISubprogram(name: "redisAsyncConnectBind", scope: !3, file: !3, line: 171, type: !448, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !450)
!448 = !DISubroutineType(types: !449)
!449 = !{!113, !273, !18, !273}
!450 = !{!451, !452, !453, !454, !455}
!451 = !DILocalVariable(name: "ip", arg: 1, scope: !447, file: !3, line: 171, type: !273)
!452 = !DILocalVariable(name: "port", arg: 2, scope: !447, file: !3, line: 171, type: !18)
!453 = !DILocalVariable(name: "source_addr", arg: 3, scope: !447, file: !3, line: 172, type: !273)
!454 = !DILocalVariable(name: "c", scope: !447, file: !3, line: 173, type: !279)
!455 = !DILocalVariable(name: "ac", scope: !447, file: !3, line: 174, type: !113)
!456 = !DILocation(line: 171, column: 54, scope: !447)
!457 = !DILocation(line: 171, column: 62, scope: !447)
!458 = !DILocation(line: 172, column: 54, scope: !447)
!459 = !DILocation(line: 173, column: 23, scope: !447)
!460 = !DILocation(line: 173, column: 19, scope: !447)
!461 = !DILocation(line: 105, column: 62, scope: !289, inlinedAt: !462)
!462 = distinct !DILocation(line: 174, column: 29, scope: !447)
!463 = !DILocation(line: 108, column: 18, scope: !289, inlinedAt: !462)
!464 = !DILocation(line: 108, column: 10, scope: !289, inlinedAt: !462)
!465 = !DILocation(line: 109, column: 12, scope: !299, inlinedAt: !462)
!466 = !DILocation(line: 109, column: 9, scope: !289, inlinedAt: !462)
!467 = !DILocation(line: 140, column: 1, scope: !289, inlinedAt: !462)
!468 = !DILocation(line: 174, column: 24, scope: !447)
!469 = !DILocation(line: 144, column: 54, scope: !429, inlinedAt: !470)
!470 = distinct !DILocation(line: 175, column: 5, scope: !447)
!471 = !DILocation(line: 145, column: 9, scope: !429, inlinedAt: !470)
!472 = !DILocation(line: 117, column: 8, scope: !289, inlinedAt: !462)
!473 = !DILocation(line: 117, column: 14, scope: !289, inlinedAt: !462)
!474 = !DILocation(line: 119, column: 9, scope: !289, inlinedAt: !462)
!475 = !DILocation(line: 119, column: 13, scope: !289, inlinedAt: !462)
!476 = !DILocation(line: 120, column: 9, scope: !289, inlinedAt: !462)
!477 = !DILocation(line: 120, column: 16, scope: !289, inlinedAt: !462)
!478 = !DILocation(line: 123, column: 9, scope: !289, inlinedAt: !462)
!479 = !DILocation(line: 123, column: 12, scope: !289, inlinedAt: !462)
!480 = !DILocation(line: 123, column: 17, scope: !289, inlinedAt: !462)
!481 = !DILocation(line: 124, column: 12, scope: !289, inlinedAt: !462)
!482 = !DILocation(line: 124, column: 20, scope: !289, inlinedAt: !462)
!483 = !DILocation(line: 126, column: 12, scope: !289, inlinedAt: !462)
!484 = !DILocation(line: 126, column: 21, scope: !289, inlinedAt: !462)
!485 = !DILocation(line: 128, column: 12, scope: !289, inlinedAt: !462)
!486 = !DILocation(line: 128, column: 20, scope: !289, inlinedAt: !462)
!487 = !DILocation(line: 131, column: 9, scope: !289, inlinedAt: !462)
!488 = !DILocation(line: 131, column: 22, scope: !289, inlinedAt: !462)
!489 = !DILocation(line: 133, column: 9, scope: !289, inlinedAt: !462)
!490 = !DILocation(line: 133, column: 22, scope: !289, inlinedAt: !462)
!491 = !DILocation(line: 135, column: 9, scope: !289, inlinedAt: !462)
!492 = !DILocation(line: 135, column: 26, scope: !289, inlinedAt: !462)
!493 = !DILocation(line: 73, column: 35, scope: !345, inlinedAt: !494)
!494 = distinct !DILocation(line: 137, column: 24, scope: !289, inlinedAt: !462)
!495 = !DILocation(line: 73, column: 47, scope: !345, inlinedAt: !494)
!496 = !DILocation(line: 74, column: 16, scope: !345, inlinedAt: !494)
!497 = !DILocation(line: 74, column: 11, scope: !345, inlinedAt: !494)
!498 = !DILocation(line: 80, column: 28, scope: !360, inlinedAt: !499)
!499 = distinct !DILocation(line: 75, column: 5, scope: !345, inlinedAt: !494)
!500 = !DILocation(line: 80, column: 42, scope: !360, inlinedAt: !499)
!501 = !DILocation(line: 80, column: 54, scope: !360, inlinedAt: !499)
!502 = !DILocation(line: 65, column: 30, scope: !371, inlinedAt: !503)
!503 = distinct !DILocation(line: 81, column: 5, scope: !360, inlinedAt: !499)
!504 = !DILocation(line: 66, column: 9, scope: !371, inlinedAt: !503)
!505 = !DILocation(line: 66, column: 15, scope: !371, inlinedAt: !503)
!506 = !DILocation(line: 67, column: 9, scope: !371, inlinedAt: !503)
!507 = !DILocation(line: 67, column: 14, scope: !371, inlinedAt: !503)
!508 = !DILocation(line: 69, column: 9, scope: !371, inlinedAt: !503)
!509 = !DILocation(line: 69, column: 14, scope: !371, inlinedAt: !503)
!510 = !DILocation(line: 70, column: 1, scope: !371, inlinedAt: !503)
!511 = !DILocation(line: 82, column: 9, scope: !360, inlinedAt: !499)
!512 = !DILocation(line: 82, column: 14, scope: !360, inlinedAt: !499)
!513 = !DILocation(line: 83, column: 9, scope: !360, inlinedAt: !499)
!514 = !DILocation(line: 83, column: 18, scope: !360, inlinedAt: !499)
!515 = !DILocation(line: 84, column: 5, scope: !360, inlinedAt: !499)
!516 = !DILocation(line: 76, column: 5, scope: !345, inlinedAt: !494)
!517 = !DILocation(line: 137, column: 13, scope: !289, inlinedAt: !462)
!518 = !DILocation(line: 137, column: 22, scope: !289, inlinedAt: !462)
!519 = !DILocation(line: 73, column: 35, scope: !345, inlinedAt: !520)
!520 = distinct !DILocation(line: 138, column: 24, scope: !289, inlinedAt: !462)
!521 = !DILocation(line: 73, column: 47, scope: !345, inlinedAt: !520)
!522 = !DILocation(line: 74, column: 16, scope: !345, inlinedAt: !520)
!523 = !DILocation(line: 74, column: 11, scope: !345, inlinedAt: !520)
!524 = !DILocation(line: 80, column: 28, scope: !360, inlinedAt: !525)
!525 = distinct !DILocation(line: 75, column: 5, scope: !345, inlinedAt: !520)
!526 = !DILocation(line: 80, column: 42, scope: !360, inlinedAt: !525)
!527 = !DILocation(line: 80, column: 54, scope: !360, inlinedAt: !525)
!528 = !DILocation(line: 65, column: 30, scope: !371, inlinedAt: !529)
!529 = distinct !DILocation(line: 81, column: 5, scope: !360, inlinedAt: !525)
!530 = !DILocation(line: 66, column: 9, scope: !371, inlinedAt: !529)
!531 = !DILocation(line: 66, column: 15, scope: !371, inlinedAt: !529)
!532 = !DILocation(line: 67, column: 9, scope: !371, inlinedAt: !529)
!533 = !DILocation(line: 67, column: 14, scope: !371, inlinedAt: !529)
!534 = !DILocation(line: 69, column: 9, scope: !371, inlinedAt: !529)
!535 = !DILocation(line: 69, column: 14, scope: !371, inlinedAt: !529)
!536 = !DILocation(line: 70, column: 1, scope: !371, inlinedAt: !529)
!537 = !DILocation(line: 82, column: 9, scope: !360, inlinedAt: !525)
!538 = !DILocation(line: 82, column: 14, scope: !360, inlinedAt: !525)
!539 = !DILocation(line: 83, column: 9, scope: !360, inlinedAt: !525)
!540 = !DILocation(line: 83, column: 18, scope: !360, inlinedAt: !525)
!541 = !DILocation(line: 84, column: 5, scope: !360, inlinedAt: !525)
!542 = !DILocation(line: 76, column: 5, scope: !345, inlinedAt: !520)
!543 = !DILocation(line: 138, column: 13, scope: !289, inlinedAt: !462)
!544 = !DILocation(line: 138, column: 22, scope: !289, inlinedAt: !462)
!545 = !DILocation(line: 106, column: 24, scope: !289, inlinedAt: !462)
!546 = !DILocation(line: 148, column: 19, scope: !429, inlinedAt: !470)
!547 = !DILocation(line: 149, column: 18, scope: !429, inlinedAt: !470)
!548 = !DILocation(line: 149, column: 13, scope: !429, inlinedAt: !470)
!549 = !DILocation(line: 150, column: 18, scope: !429, inlinedAt: !470)
!550 = !DILocation(line: 150, column: 16, scope: !429, inlinedAt: !470)
!551 = !DILocation(line: 151, column: 1, scope: !429, inlinedAt: !470)
!552 = !DILocation(line: 176, column: 5, scope: !447)
!553 = distinct !DISubprogram(name: "redisAsyncConnectBindWithReuse", scope: !3, file: !3, line: 179, type: !448, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !554)
!554 = !{!555, !556, !557, !558, !559}
!555 = !DILocalVariable(name: "ip", arg: 1, scope: !553, file: !3, line: 179, type: !273)
!556 = !DILocalVariable(name: "port", arg: 2, scope: !553, file: !3, line: 179, type: !18)
!557 = !DILocalVariable(name: "source_addr", arg: 3, scope: !553, file: !3, line: 180, type: !273)
!558 = !DILocalVariable(name: "c", scope: !553, file: !3, line: 181, type: !279)
!559 = !DILocalVariable(name: "ac", scope: !553, file: !3, line: 182, type: !113)
!560 = !DILocation(line: 179, column: 63, scope: !553)
!561 = !DILocation(line: 179, column: 71, scope: !553)
!562 = !DILocation(line: 180, column: 63, scope: !553)
!563 = !DILocation(line: 181, column: 23, scope: !553)
!564 = !DILocation(line: 181, column: 19, scope: !553)
!565 = !DILocation(line: 105, column: 62, scope: !289, inlinedAt: !566)
!566 = distinct !DILocation(line: 182, column: 29, scope: !553)
!567 = !DILocation(line: 108, column: 18, scope: !289, inlinedAt: !566)
!568 = !DILocation(line: 108, column: 10, scope: !289, inlinedAt: !566)
!569 = !DILocation(line: 109, column: 12, scope: !299, inlinedAt: !566)
!570 = !DILocation(line: 109, column: 9, scope: !289, inlinedAt: !566)
!571 = !DILocation(line: 140, column: 1, scope: !289, inlinedAt: !566)
!572 = !DILocation(line: 182, column: 24, scope: !553)
!573 = !DILocation(line: 144, column: 54, scope: !429, inlinedAt: !574)
!574 = distinct !DILocation(line: 183, column: 5, scope: !553)
!575 = !DILocation(line: 145, column: 9, scope: !429, inlinedAt: !574)
!576 = !DILocation(line: 117, column: 8, scope: !289, inlinedAt: !566)
!577 = !DILocation(line: 117, column: 14, scope: !289, inlinedAt: !566)
!578 = !DILocation(line: 119, column: 9, scope: !289, inlinedAt: !566)
!579 = !DILocation(line: 119, column: 13, scope: !289, inlinedAt: !566)
!580 = !DILocation(line: 120, column: 9, scope: !289, inlinedAt: !566)
!581 = !DILocation(line: 120, column: 16, scope: !289, inlinedAt: !566)
!582 = !DILocation(line: 123, column: 9, scope: !289, inlinedAt: !566)
!583 = !DILocation(line: 123, column: 12, scope: !289, inlinedAt: !566)
!584 = !DILocation(line: 123, column: 17, scope: !289, inlinedAt: !566)
!585 = !DILocation(line: 124, column: 12, scope: !289, inlinedAt: !566)
!586 = !DILocation(line: 124, column: 20, scope: !289, inlinedAt: !566)
!587 = !DILocation(line: 126, column: 12, scope: !289, inlinedAt: !566)
!588 = !DILocation(line: 126, column: 21, scope: !289, inlinedAt: !566)
!589 = !DILocation(line: 128, column: 12, scope: !289, inlinedAt: !566)
!590 = !DILocation(line: 128, column: 20, scope: !289, inlinedAt: !566)
!591 = !DILocation(line: 131, column: 9, scope: !289, inlinedAt: !566)
!592 = !DILocation(line: 131, column: 22, scope: !289, inlinedAt: !566)
!593 = !DILocation(line: 133, column: 9, scope: !289, inlinedAt: !566)
!594 = !DILocation(line: 133, column: 22, scope: !289, inlinedAt: !566)
!595 = !DILocation(line: 135, column: 9, scope: !289, inlinedAt: !566)
!596 = !DILocation(line: 135, column: 26, scope: !289, inlinedAt: !566)
!597 = !DILocation(line: 73, column: 35, scope: !345, inlinedAt: !598)
!598 = distinct !DILocation(line: 137, column: 24, scope: !289, inlinedAt: !566)
!599 = !DILocation(line: 73, column: 47, scope: !345, inlinedAt: !598)
!600 = !DILocation(line: 74, column: 16, scope: !345, inlinedAt: !598)
!601 = !DILocation(line: 74, column: 11, scope: !345, inlinedAt: !598)
!602 = !DILocation(line: 80, column: 28, scope: !360, inlinedAt: !603)
!603 = distinct !DILocation(line: 75, column: 5, scope: !345, inlinedAt: !598)
!604 = !DILocation(line: 80, column: 42, scope: !360, inlinedAt: !603)
!605 = !DILocation(line: 80, column: 54, scope: !360, inlinedAt: !603)
!606 = !DILocation(line: 65, column: 30, scope: !371, inlinedAt: !607)
!607 = distinct !DILocation(line: 81, column: 5, scope: !360, inlinedAt: !603)
!608 = !DILocation(line: 66, column: 9, scope: !371, inlinedAt: !607)
!609 = !DILocation(line: 66, column: 15, scope: !371, inlinedAt: !607)
!610 = !DILocation(line: 67, column: 9, scope: !371, inlinedAt: !607)
!611 = !DILocation(line: 67, column: 14, scope: !371, inlinedAt: !607)
!612 = !DILocation(line: 69, column: 9, scope: !371, inlinedAt: !607)
!613 = !DILocation(line: 69, column: 14, scope: !371, inlinedAt: !607)
!614 = !DILocation(line: 70, column: 1, scope: !371, inlinedAt: !607)
!615 = !DILocation(line: 82, column: 9, scope: !360, inlinedAt: !603)
!616 = !DILocation(line: 82, column: 14, scope: !360, inlinedAt: !603)
!617 = !DILocation(line: 83, column: 9, scope: !360, inlinedAt: !603)
!618 = !DILocation(line: 83, column: 18, scope: !360, inlinedAt: !603)
!619 = !DILocation(line: 84, column: 5, scope: !360, inlinedAt: !603)
!620 = !DILocation(line: 76, column: 5, scope: !345, inlinedAt: !598)
!621 = !DILocation(line: 137, column: 13, scope: !289, inlinedAt: !566)
!622 = !DILocation(line: 137, column: 22, scope: !289, inlinedAt: !566)
!623 = !DILocation(line: 73, column: 35, scope: !345, inlinedAt: !624)
!624 = distinct !DILocation(line: 138, column: 24, scope: !289, inlinedAt: !566)
!625 = !DILocation(line: 73, column: 47, scope: !345, inlinedAt: !624)
!626 = !DILocation(line: 74, column: 16, scope: !345, inlinedAt: !624)
!627 = !DILocation(line: 74, column: 11, scope: !345, inlinedAt: !624)
!628 = !DILocation(line: 80, column: 28, scope: !360, inlinedAt: !629)
!629 = distinct !DILocation(line: 75, column: 5, scope: !345, inlinedAt: !624)
!630 = !DILocation(line: 80, column: 42, scope: !360, inlinedAt: !629)
!631 = !DILocation(line: 80, column: 54, scope: !360, inlinedAt: !629)
!632 = !DILocation(line: 65, column: 30, scope: !371, inlinedAt: !633)
!633 = distinct !DILocation(line: 81, column: 5, scope: !360, inlinedAt: !629)
!634 = !DILocation(line: 66, column: 9, scope: !371, inlinedAt: !633)
!635 = !DILocation(line: 66, column: 15, scope: !371, inlinedAt: !633)
!636 = !DILocation(line: 67, column: 9, scope: !371, inlinedAt: !633)
!637 = !DILocation(line: 67, column: 14, scope: !371, inlinedAt: !633)
!638 = !DILocation(line: 69, column: 9, scope: !371, inlinedAt: !633)
!639 = !DILocation(line: 69, column: 14, scope: !371, inlinedAt: !633)
!640 = !DILocation(line: 70, column: 1, scope: !371, inlinedAt: !633)
!641 = !DILocation(line: 82, column: 9, scope: !360, inlinedAt: !629)
!642 = !DILocation(line: 82, column: 14, scope: !360, inlinedAt: !629)
!643 = !DILocation(line: 83, column: 9, scope: !360, inlinedAt: !629)
!644 = !DILocation(line: 83, column: 18, scope: !360, inlinedAt: !629)
!645 = !DILocation(line: 84, column: 5, scope: !360, inlinedAt: !629)
!646 = !DILocation(line: 76, column: 5, scope: !345, inlinedAt: !624)
!647 = !DILocation(line: 138, column: 13, scope: !289, inlinedAt: !566)
!648 = !DILocation(line: 138, column: 22, scope: !289, inlinedAt: !566)
!649 = !DILocation(line: 106, column: 24, scope: !289, inlinedAt: !566)
!650 = !DILocation(line: 148, column: 19, scope: !429, inlinedAt: !574)
!651 = !DILocation(line: 149, column: 18, scope: !429, inlinedAt: !574)
!652 = !DILocation(line: 149, column: 13, scope: !429, inlinedAt: !574)
!653 = !DILocation(line: 150, column: 18, scope: !429, inlinedAt: !574)
!654 = !DILocation(line: 150, column: 16, scope: !429, inlinedAt: !574)
!655 = !DILocation(line: 151, column: 1, scope: !429, inlinedAt: !574)
!656 = !DILocation(line: 184, column: 5, scope: !553)
!657 = distinct !DISubprogram(name: "redisAsyncConnectUnix", scope: !3, file: !3, line: 187, type: !658, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !660)
!658 = !DISubroutineType(types: !659)
!659 = !{!113, !273}
!660 = !{!661, !662, !663}
!661 = !DILocalVariable(name: "path", arg: 1, scope: !657, file: !3, line: 187, type: !273)
!662 = !DILocalVariable(name: "c", scope: !657, file: !3, line: 188, type: !279)
!663 = !DILocalVariable(name: "ac", scope: !657, file: !3, line: 189, type: !113)
!664 = !DILocation(line: 187, column: 54, scope: !657)
!665 = !DILocation(line: 191, column: 9, scope: !657)
!666 = !DILocation(line: 188, column: 19, scope: !657)
!667 = !DILocation(line: 192, column: 11, scope: !668)
!668 = distinct !DILexicalBlock(scope: !657, file: !3, line: 192, column: 9)
!669 = !DILocation(line: 192, column: 9, scope: !657)
!670 = !DILocation(line: 105, column: 62, scope: !289, inlinedAt: !671)
!671 = distinct !DILocation(line: 195, column: 10, scope: !657)
!672 = !DILocation(line: 108, column: 18, scope: !289, inlinedAt: !671)
!673 = !DILocation(line: 108, column: 10, scope: !289, inlinedAt: !671)
!674 = !DILocation(line: 109, column: 12, scope: !299, inlinedAt: !671)
!675 = !DILocation(line: 109, column: 9, scope: !289, inlinedAt: !671)
!676 = !DILocation(line: 140, column: 1, scope: !289, inlinedAt: !671)
!677 = !DILocation(line: 189, column: 24, scope: !657)
!678 = !DILocation(line: 197, column: 9, scope: !679)
!679 = distinct !DILexicalBlock(scope: !680, file: !3, line: 196, column: 21)
!680 = distinct !DILexicalBlock(scope: !657, file: !3, line: 196, column: 9)
!681 = !DILocation(line: 198, column: 9, scope: !679)
!682 = !DILocation(line: 117, column: 8, scope: !289, inlinedAt: !671)
!683 = !DILocation(line: 117, column: 14, scope: !289, inlinedAt: !671)
!684 = !DILocation(line: 119, column: 9, scope: !289, inlinedAt: !671)
!685 = !DILocation(line: 119, column: 13, scope: !289, inlinedAt: !671)
!686 = !DILocation(line: 120, column: 9, scope: !289, inlinedAt: !671)
!687 = !DILocation(line: 120, column: 16, scope: !289, inlinedAt: !671)
!688 = !DILocation(line: 123, column: 9, scope: !289, inlinedAt: !671)
!689 = !DILocation(line: 123, column: 12, scope: !289, inlinedAt: !671)
!690 = !DILocation(line: 123, column: 17, scope: !289, inlinedAt: !671)
!691 = !DILocation(line: 124, column: 12, scope: !289, inlinedAt: !671)
!692 = !DILocation(line: 124, column: 20, scope: !289, inlinedAt: !671)
!693 = !DILocation(line: 126, column: 12, scope: !289, inlinedAt: !671)
!694 = !DILocation(line: 126, column: 21, scope: !289, inlinedAt: !671)
!695 = !DILocation(line: 128, column: 12, scope: !289, inlinedAt: !671)
!696 = !DILocation(line: 128, column: 20, scope: !289, inlinedAt: !671)
!697 = !DILocation(line: 131, column: 9, scope: !289, inlinedAt: !671)
!698 = !DILocation(line: 131, column: 22, scope: !289, inlinedAt: !671)
!699 = !DILocation(line: 133, column: 9, scope: !289, inlinedAt: !671)
!700 = !DILocation(line: 133, column: 22, scope: !289, inlinedAt: !671)
!701 = !DILocation(line: 135, column: 9, scope: !289, inlinedAt: !671)
!702 = !DILocation(line: 135, column: 26, scope: !289, inlinedAt: !671)
!703 = !DILocation(line: 73, column: 35, scope: !345, inlinedAt: !704)
!704 = distinct !DILocation(line: 137, column: 24, scope: !289, inlinedAt: !671)
!705 = !DILocation(line: 73, column: 47, scope: !345, inlinedAt: !704)
!706 = !DILocation(line: 74, column: 16, scope: !345, inlinedAt: !704)
!707 = !DILocation(line: 74, column: 11, scope: !345, inlinedAt: !704)
!708 = !DILocation(line: 80, column: 28, scope: !360, inlinedAt: !709)
!709 = distinct !DILocation(line: 75, column: 5, scope: !345, inlinedAt: !704)
!710 = !DILocation(line: 80, column: 42, scope: !360, inlinedAt: !709)
!711 = !DILocation(line: 80, column: 54, scope: !360, inlinedAt: !709)
!712 = !DILocation(line: 65, column: 30, scope: !371, inlinedAt: !713)
!713 = distinct !DILocation(line: 81, column: 5, scope: !360, inlinedAt: !709)
!714 = !DILocation(line: 66, column: 9, scope: !371, inlinedAt: !713)
!715 = !DILocation(line: 66, column: 15, scope: !371, inlinedAt: !713)
!716 = !DILocation(line: 67, column: 9, scope: !371, inlinedAt: !713)
!717 = !DILocation(line: 67, column: 14, scope: !371, inlinedAt: !713)
!718 = !DILocation(line: 69, column: 9, scope: !371, inlinedAt: !713)
!719 = !DILocation(line: 69, column: 14, scope: !371, inlinedAt: !713)
!720 = !DILocation(line: 70, column: 1, scope: !371, inlinedAt: !713)
!721 = !DILocation(line: 82, column: 9, scope: !360, inlinedAt: !709)
!722 = !DILocation(line: 82, column: 14, scope: !360, inlinedAt: !709)
!723 = !DILocation(line: 83, column: 9, scope: !360, inlinedAt: !709)
!724 = !DILocation(line: 83, column: 18, scope: !360, inlinedAt: !709)
!725 = !DILocation(line: 84, column: 5, scope: !360, inlinedAt: !709)
!726 = !DILocation(line: 76, column: 5, scope: !345, inlinedAt: !704)
!727 = !DILocation(line: 137, column: 13, scope: !289, inlinedAt: !671)
!728 = !DILocation(line: 137, column: 22, scope: !289, inlinedAt: !671)
!729 = !DILocation(line: 73, column: 35, scope: !345, inlinedAt: !730)
!730 = distinct !DILocation(line: 138, column: 24, scope: !289, inlinedAt: !671)
!731 = !DILocation(line: 73, column: 47, scope: !345, inlinedAt: !730)
!732 = !DILocation(line: 74, column: 16, scope: !345, inlinedAt: !730)
!733 = !DILocation(line: 74, column: 11, scope: !345, inlinedAt: !730)
!734 = !DILocation(line: 80, column: 28, scope: !360, inlinedAt: !735)
!735 = distinct !DILocation(line: 75, column: 5, scope: !345, inlinedAt: !730)
!736 = !DILocation(line: 80, column: 42, scope: !360, inlinedAt: !735)
!737 = !DILocation(line: 80, column: 54, scope: !360, inlinedAt: !735)
!738 = !DILocation(line: 65, column: 30, scope: !371, inlinedAt: !739)
!739 = distinct !DILocation(line: 81, column: 5, scope: !360, inlinedAt: !735)
!740 = !DILocation(line: 66, column: 9, scope: !371, inlinedAt: !739)
!741 = !DILocation(line: 66, column: 15, scope: !371, inlinedAt: !739)
!742 = !DILocation(line: 67, column: 9, scope: !371, inlinedAt: !739)
!743 = !DILocation(line: 67, column: 14, scope: !371, inlinedAt: !739)
!744 = !DILocation(line: 69, column: 9, scope: !371, inlinedAt: !739)
!745 = !DILocation(line: 69, column: 14, scope: !371, inlinedAt: !739)
!746 = !DILocation(line: 70, column: 1, scope: !371, inlinedAt: !739)
!747 = !DILocation(line: 82, column: 9, scope: !360, inlinedAt: !735)
!748 = !DILocation(line: 82, column: 14, scope: !360, inlinedAt: !735)
!749 = !DILocation(line: 83, column: 9, scope: !360, inlinedAt: !735)
!750 = !DILocation(line: 83, column: 18, scope: !360, inlinedAt: !735)
!751 = !DILocation(line: 84, column: 5, scope: !360, inlinedAt: !735)
!752 = !DILocation(line: 76, column: 5, scope: !345, inlinedAt: !730)
!753 = !DILocation(line: 138, column: 13, scope: !289, inlinedAt: !671)
!754 = !DILocation(line: 138, column: 22, scope: !289, inlinedAt: !671)
!755 = !DILocation(line: 106, column: 24, scope: !289, inlinedAt: !671)
!756 = !DILocation(line: 144, column: 54, scope: !429, inlinedAt: !757)
!757 = distinct !DILocation(line: 201, column: 5, scope: !657)
!758 = !DILocation(line: 148, column: 19, scope: !429, inlinedAt: !757)
!759 = !DILocation(line: 149, column: 18, scope: !429, inlinedAt: !757)
!760 = !DILocation(line: 149, column: 13, scope: !429, inlinedAt: !757)
!761 = !DILocation(line: 150, column: 18, scope: !429, inlinedAt: !757)
!762 = !DILocation(line: 150, column: 16, scope: !429, inlinedAt: !757)
!763 = !DILocation(line: 151, column: 1, scope: !429, inlinedAt: !757)
!764 = !DILocation(line: 202, column: 5, scope: !657)
!765 = !DILocation(line: 0, scope: !657)
!766 = !DILocation(line: 203, column: 1, scope: !657)
!767 = distinct !DISubprogram(name: "redisAsyncSetConnectCallback", scope: !3, file: !3, line: 205, type: !768, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !770)
!768 = !DISubroutineType(types: !769)
!769 = !{!18, !113, !227}
!770 = !{!771, !772}
!771 = !DILocalVariable(name: "ac", arg: 1, scope: !767, file: !3, line: 205, type: !113)
!772 = !DILocalVariable(name: "fn", arg: 2, scope: !767, file: !3, line: 205, type: !227)
!773 = !DILocation(line: 205, column: 53, scope: !767)
!774 = !DILocation(line: 205, column: 79, scope: !767)
!775 = !DILocation(line: 206, column: 13, scope: !776)
!776 = distinct !DILexicalBlock(scope: !767, file: !3, line: 206, column: 9)
!777 = !{!320, !314, i64 288}
!778 = !DILocation(line: 206, column: 23, scope: !776)
!779 = !DILocation(line: 206, column: 9, scope: !767)
!780 = !DILocation(line: 207, column: 23, scope: !781)
!781 = distinct !DILexicalBlock(scope: !776, file: !3, line: 206, column: 32)
!782 = !DILocation(line: 212, column: 9, scope: !783)
!783 = distinct !DILexicalBlock(scope: !784, file: !3, line: 212, column: 9)
!784 = distinct !DILexicalBlock(scope: !781, file: !3, line: 212, column: 9)
!785 = !{!320, !314, i64 256}
!786 = !DILocation(line: 212, column: 9, scope: !784)
!787 = !DILocation(line: 0, scope: !767)
!788 = !DILocation(line: 216, column: 1, scope: !767)
!789 = distinct !DISubprogram(name: "redisAsyncSetDisconnectCallback", scope: !3, file: !3, line: 218, type: !790, isLocal: false, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !792)
!790 = !DISubroutineType(types: !791)
!791 = !{!18, !113, !220}
!792 = !{!793, !794}
!793 = !DILocalVariable(name: "ac", arg: 1, scope: !789, file: !3, line: 218, type: !113)
!794 = !DILocalVariable(name: "fn", arg: 2, scope: !789, file: !3, line: 218, type: !220)
!795 = !DILocation(line: 218, column: 56, scope: !789)
!796 = !DILocation(line: 218, column: 85, scope: !789)
!797 = !DILocation(line: 219, column: 13, scope: !798)
!798 = distinct !DILexicalBlock(scope: !789, file: !3, line: 219, column: 9)
!799 = !{!320, !314, i64 280}
!800 = !DILocation(line: 219, column: 26, scope: !798)
!801 = !DILocation(line: 219, column: 9, scope: !789)
!802 = !DILocation(line: 220, column: 26, scope: !803)
!803 = distinct !DILexicalBlock(scope: !798, file: !3, line: 219, column: 35)
!804 = !DILocation(line: 221, column: 9, scope: !803)
!805 = !DILocation(line: 0, scope: !789)
!806 = !DILocation(line: 224, column: 1, scope: !789)
!807 = distinct !DISubprogram(name: "redisAsyncFree", scope: !3, file: !3, line: 323, type: !430, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !808)
!808 = !{!809, !810}
!809 = !DILocalVariable(name: "ac", arg: 1, scope: !807, file: !3, line: 323, type: !113)
!810 = !DILocalVariable(name: "c", scope: !807, file: !3, line: 324, type: !279)
!811 = !DILocation(line: 323, column: 40, scope: !807)
!812 = !DILocation(line: 324, column: 19, scope: !807)
!813 = !DILocation(line: 325, column: 8, scope: !807)
!814 = !DILocation(line: 325, column: 14, scope: !807)
!815 = !DILocation(line: 326, column: 20, scope: !816)
!816 = distinct !DILexicalBlock(scope: !807, file: !3, line: 326, column: 9)
!817 = !DILocation(line: 326, column: 9, scope: !807)
!818 = !DILocation(line: 327, column: 9, scope: !816)
!819 = !DILocation(line: 328, column: 1, scope: !807)
!820 = distinct !DISubprogram(name: "__redisAsyncFree", scope: !3, file: !3, line: 275, type: !430, isLocal: true, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !821)
!821 = !{!822, !823, !824, !825, !834}
!822 = !DILocalVariable(name: "ac", arg: 1, scope: !820, file: !3, line: 275, type: !113)
!823 = !DILocalVariable(name: "c", scope: !820, file: !3, line: 276, type: !279)
!824 = !DILocalVariable(name: "cb", scope: !820, file: !3, line: 277, type: !235)
!825 = !DILocalVariable(name: "it", scope: !820, file: !3, line: 278, type: !826)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !83, line: 73, baseType: !828)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !83, line: 69, size: 256, elements: !829)
!829 = !{!830, !831, !832, !833}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !828, file: !83, line: 70, baseType: !349, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !828, file: !83, line: 71, baseType: !18, size: 32, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !828, file: !83, line: 72, baseType: !258, size: 64, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !828, file: !83, line: 72, baseType: !258, size: 64, offset: 192)
!834 = !DILocalVariable(name: "de", scope: !820, file: !3, line: 279, type: !258)
!835 = !DILocation(line: 275, column: 49, scope: !820)
!836 = !DILocation(line: 276, column: 29, scope: !820)
!837 = !DILocation(line: 276, column: 19, scope: !820)
!838 = !DILocation(line: 277, column: 5, scope: !820)
!839 = !DILocation(line: 282, column: 38, scope: !820)
!840 = !DILocation(line: 277, column: 19, scope: !820)
!841 = !DILocalVariable(name: "list", arg: 1, scope: !842, file: !3, line: 249, type: !845)
!842 = distinct !DISubprogram(name: "__redisShiftCallback", scope: !3, file: !3, line: 249, type: !843, isLocal: true, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !846)
!843 = !DISubroutineType(types: !844)
!844 = !{!18, !845, !234}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!846 = !{!841, !847, !848}
!847 = !DILocalVariable(name: "target", arg: 2, scope: !842, file: !3, line: 249, type: !234)
!848 = !DILocalVariable(name: "cb", scope: !842, file: !3, line: 250, type: !234)
!849 = !DILocation(line: 249, column: 52, scope: !842, inlinedAt: !850)
!850 = distinct !DILocation(line: 282, column: 12, scope: !820)
!851 = !DILocation(line: 249, column: 73, scope: !842, inlinedAt: !850)
!852 = !DILocation(line: 250, column: 31, scope: !842, inlinedAt: !850)
!853 = !{!322, !314, i64 0}
!854 = !DILocation(line: 250, column: 20, scope: !842, inlinedAt: !850)
!855 = !DILocation(line: 251, column: 12, scope: !856, inlinedAt: !850)
!856 = distinct !DILexicalBlock(scope: !842, file: !3, line: 251, column: 9)
!857 = !DILocation(line: 251, column: 9, scope: !842, inlinedAt: !850)
!858 = !DILocation(line: 252, column: 26, scope: !859, inlinedAt: !850)
!859 = distinct !DILexicalBlock(scope: !856, file: !3, line: 251, column: 21)
!860 = !{!861, !314, i64 0}
!861 = !{!"redisCallback", !314, i64 0, !314, i64 8, !314, i64 16}
!862 = !DILocation(line: 252, column: 20, scope: !859, inlinedAt: !850)
!863 = !DILocation(line: 253, column: 25, scope: !864, inlinedAt: !850)
!864 = distinct !DILexicalBlock(scope: !859, file: !3, line: 253, column: 13)
!865 = !{!322, !314, i64 8}
!866 = !DILocation(line: 253, column: 16, scope: !864, inlinedAt: !850)
!867 = !DILocation(line: 253, column: 13, scope: !859, inlinedAt: !850)
!868 = !DILocation(line: 254, column: 24, scope: !864, inlinedAt: !850)
!869 = !DILocation(line: 254, column: 13, scope: !864, inlinedAt: !850)
!870 = !DILocation(line: 263, column: 1, scope: !842, inlinedAt: !850)
!871 = !DILocation(line: 286, column: 42, scope: !820)
!872 = !DILocation(line: 249, column: 52, scope: !842, inlinedAt: !873)
!873 = distinct !DILocation(line: 286, column: 12, scope: !820)
!874 = !DILocation(line: 249, column: 73, scope: !842, inlinedAt: !873)
!875 = !DILocation(line: 250, column: 31, scope: !842, inlinedAt: !873)
!876 = !DILocation(line: 250, column: 20, scope: !842, inlinedAt: !873)
!877 = !DILocation(line: 251, column: 12, scope: !856, inlinedAt: !873)
!878 = !DILocation(line: 251, column: 9, scope: !842, inlinedAt: !873)
!879 = !DILocation(line: 258, column: 27, scope: !880, inlinedAt: !850)
!880 = distinct !DILexicalBlock(scope: !859, file: !3, line: 257, column: 13)
!881 = !DILocation(line: 258, column: 13, scope: !880, inlinedAt: !850)
!882 = !DILocation(line: 259, column: 9, scope: !859, inlinedAt: !850)
!883 = !DILocalVariable(name: "ac", arg: 1, scope: !884, file: !3, line: 265, type: !113)
!884 = distinct !DISubprogram(name: "__redisRunCallback", scope: !3, file: !3, line: 265, type: !885, isLocal: true, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !887)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !113, !234, !13}
!887 = !{!883, !888, !889, !890}
!888 = !DILocalVariable(name: "cb", arg: 2, scope: !884, file: !3, line: 265, type: !234)
!889 = !DILocalVariable(name: "reply", arg: 3, scope: !884, file: !3, line: 265, type: !13)
!890 = !DILocalVariable(name: "c", scope: !884, file: !3, line: 266, type: !279)
!891 = !DILocation(line: 265, column: 51, scope: !884, inlinedAt: !892)
!892 = distinct !DILocation(line: 283, column: 9, scope: !820)
!893 = !DILocation(line: 265, column: 70, scope: !884, inlinedAt: !892)
!894 = !DILocation(line: 265, column: 86, scope: !884, inlinedAt: !892)
!895 = !DILocation(line: 267, column: 13, scope: !896, inlinedAt: !892)
!896 = distinct !DILexicalBlock(scope: !884, file: !3, line: 267, column: 9)
!897 = !{!861, !314, i64 8}
!898 = !DILocation(line: 267, column: 16, scope: !896, inlinedAt: !892)
!899 = !DILocation(line: 267, column: 9, scope: !884, inlinedAt: !892)
!900 = !DILocation(line: 266, column: 19, scope: !884, inlinedAt: !892)
!901 = !DILocation(line: 268, column: 18, scope: !902, inlinedAt: !892)
!902 = distinct !DILexicalBlock(scope: !896, file: !3, line: 267, column: 25)
!903 = !DILocation(line: 269, column: 29, scope: !902, inlinedAt: !892)
!904 = !{!861, !314, i64 16}
!905 = !DILocation(line: 269, column: 9, scope: !902, inlinedAt: !892)
!906 = !DILocation(line: 270, column: 18, scope: !902, inlinedAt: !892)
!907 = !DILocation(line: 271, column: 5, scope: !902, inlinedAt: !892)
!908 = !DILocation(line: 272, column: 1, scope: !884, inlinedAt: !892)
!909 = distinct !{!909, !910, !911}
!910 = !DILocation(line: 282, column: 5, scope: !820)
!911 = !DILocation(line: 283, column: 39, scope: !820)
!912 = !DILocation(line: 252, column: 26, scope: !859, inlinedAt: !873)
!913 = !DILocation(line: 252, column: 20, scope: !859, inlinedAt: !873)
!914 = !DILocation(line: 253, column: 25, scope: !864, inlinedAt: !873)
!915 = !DILocation(line: 253, column: 16, scope: !864, inlinedAt: !873)
!916 = !DILocation(line: 253, column: 13, scope: !859, inlinedAt: !873)
!917 = !DILocation(line: 254, column: 24, scope: !864, inlinedAt: !873)
!918 = !DILocation(line: 254, column: 13, scope: !864, inlinedAt: !873)
!919 = !DILocation(line: 258, column: 27, scope: !880, inlinedAt: !873)
!920 = !DILocation(line: 258, column: 13, scope: !880, inlinedAt: !873)
!921 = !DILocation(line: 259, column: 9, scope: !859, inlinedAt: !873)
!922 = !DILocation(line: 263, column: 1, scope: !842, inlinedAt: !873)
!923 = !DILocation(line: 265, column: 51, scope: !884, inlinedAt: !924)
!924 = distinct !DILocation(line: 287, column: 9, scope: !820)
!925 = !DILocation(line: 265, column: 70, scope: !884, inlinedAt: !924)
!926 = !DILocation(line: 265, column: 86, scope: !884, inlinedAt: !924)
!927 = !DILocation(line: 267, column: 13, scope: !896, inlinedAt: !924)
!928 = !DILocation(line: 267, column: 16, scope: !896, inlinedAt: !924)
!929 = !DILocation(line: 267, column: 9, scope: !884, inlinedAt: !924)
!930 = !DILocation(line: 266, column: 19, scope: !884, inlinedAt: !924)
!931 = !DILocation(line: 268, column: 18, scope: !902, inlinedAt: !924)
!932 = !DILocation(line: 269, column: 29, scope: !902, inlinedAt: !924)
!933 = !DILocation(line: 269, column: 9, scope: !902, inlinedAt: !924)
!934 = !DILocation(line: 270, column: 18, scope: !902, inlinedAt: !924)
!935 = !DILocation(line: 271, column: 5, scope: !902, inlinedAt: !924)
!936 = !DILocation(line: 272, column: 1, scope: !884, inlinedAt: !924)
!937 = distinct !{!937, !938, !939}
!938 = !DILocation(line: 286, column: 5, scope: !820)
!939 = !DILocation(line: 287, column: 39, scope: !820)
!940 = !DILocation(line: 290, column: 34, scope: !820)
!941 = !DILocalVariable(name: "ht", arg: 1, scope: !942, file: !346, line: 258, type: !349)
!942 = distinct !DISubprogram(name: "dictGetIterator", scope: !346, file: !346, line: 258, type: !943, isLocal: true, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !945)
!943 = !DISubroutineType(types: !944)
!944 = !{!826, !349}
!945 = !{!941, !946}
!946 = !DILocalVariable(name: "iter", scope: !942, file: !346, line: 259, type: !826)
!947 = !DILocation(line: 258, column: 44, scope: !942, inlinedAt: !948)
!948 = distinct !DILocation(line: 290, column: 10, scope: !820)
!949 = !DILocation(line: 259, column: 26, scope: !942, inlinedAt: !948)
!950 = !DILocation(line: 259, column: 19, scope: !942, inlinedAt: !948)
!951 = !DILocation(line: 261, column: 14, scope: !942, inlinedAt: !948)
!952 = !{!953, !314, i64 0}
!953 = !{!"dictIterator", !314, i64 0, !311, i64 8, !314, i64 16, !314, i64 24}
!954 = !DILocation(line: 262, column: 11, scope: !942, inlinedAt: !948)
!955 = !DILocation(line: 262, column: 17, scope: !942, inlinedAt: !948)
!956 = !{!953, !311, i64 8}
!957 = !DILocation(line: 263, column: 11, scope: !942, inlinedAt: !948)
!958 = !DILocation(line: 264, column: 11, scope: !942, inlinedAt: !948)
!959 = !DILocation(line: 263, column: 17, scope: !942, inlinedAt: !948)
!960 = !DILocation(line: 265, column: 5, scope: !942, inlinedAt: !948)
!961 = !DILocation(line: 278, column: 19, scope: !820)
!962 = !DILocation(line: 291, column: 5, scope: !820)
!963 = !DILocation(line: 270, column: 19, scope: !964, inlinedAt: !971)
!964 = distinct !DILexicalBlock(scope: !965, file: !346, line: 270, column: 13)
!965 = distinct !DILexicalBlock(scope: !966, file: !346, line: 269, column: 15)
!966 = distinct !DISubprogram(name: "dictNext", scope: !346, file: !346, line: 268, type: !967, isLocal: true, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !969)
!967 = !DISubroutineType(types: !968)
!968 = !{!258, !826}
!969 = !{!970}
!970 = !DILocalVariable(name: "iter", arg: 1, scope: !966, file: !346, line: 268, type: !826)
!971 = distinct !DILocation(line: 291, column: 18, scope: !820)
!972 = !DILocation(line: 270, column: 25, scope: !964, inlinedAt: !971)
!973 = !DILocation(line: 270, column: 13, scope: !965, inlinedAt: !971)
!974 = !DILocation(line: 271, column: 24, scope: !975, inlinedAt: !971)
!975 = distinct !DILexicalBlock(scope: !964, file: !346, line: 270, column: 34)
!976 = !DILocation(line: 273, column: 35, scope: !977, inlinedAt: !971)
!977 = distinct !DILexicalBlock(scope: !975, file: !346, line: 272, column: 17)
!978 = !DILocation(line: 273, column: 39, scope: !977, inlinedAt: !971)
!979 = !{!380, !381, i64 16}
!980 = !DILocation(line: 273, column: 21, scope: !977, inlinedAt: !971)
!981 = !DILocation(line: 272, column: 29, scope: !977, inlinedAt: !971)
!982 = !DILocation(line: 272, column: 17, scope: !975, inlinedAt: !971)
!983 = !DILocation(line: 286, column: 1, scope: !966, inlinedAt: !971)
!984 = !DILocation(line: 279, column: 16, scope: !820)
!985 = !DILocalVariable(name: "iter", arg: 1, scope: !986, file: !346, line: 288, type: !826)
!986 = distinct !DISubprogram(name: "dictReleaseIterator", scope: !346, file: !346, line: 288, type: !987, isLocal: true, isDefinition: true, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !989)
!987 = !DISubroutineType(types: !988)
!988 = !{null, !826}
!989 = !{!985}
!990 = !DILocation(line: 288, column: 47, scope: !986, inlinedAt: !991)
!991 = distinct !DILocation(line: 293, column: 5, scope: !820)
!992 = !DILocation(line: 289, column: 5, scope: !986, inlinedAt: !991)
!993 = !DILocation(line: 290, column: 1, scope: !986, inlinedAt: !991)
!994 = !DILocation(line: 294, column: 25, scope: !820)
!995 = !DILocation(line: 294, column: 5, scope: !820)
!996 = !DILocation(line: 296, column: 34, scope: !820)
!997 = !DILocation(line: 258, column: 44, scope: !942, inlinedAt: !998)
!998 = distinct !DILocation(line: 296, column: 10, scope: !820)
!999 = !DILocation(line: 259, column: 26, scope: !942, inlinedAt: !998)
!1000 = !DILocation(line: 259, column: 19, scope: !942, inlinedAt: !998)
!1001 = !DILocation(line: 261, column: 14, scope: !942, inlinedAt: !998)
!1002 = !DILocation(line: 262, column: 11, scope: !942, inlinedAt: !998)
!1003 = !DILocation(line: 262, column: 17, scope: !942, inlinedAt: !998)
!1004 = !DILocation(line: 263, column: 11, scope: !942, inlinedAt: !998)
!1005 = !DILocation(line: 264, column: 11, scope: !942, inlinedAt: !998)
!1006 = !DILocation(line: 263, column: 17, scope: !942, inlinedAt: !998)
!1007 = !DILocation(line: 265, column: 5, scope: !942, inlinedAt: !998)
!1008 = !DILocation(line: 297, column: 5, scope: !820)
!1009 = !DILocation(line: 274, column: 37, scope: !975, inlinedAt: !971)
!1010 = !DILocation(line: 274, column: 27, scope: !975, inlinedAt: !971)
!1011 = !DILocation(line: 275, column: 9, scope: !975, inlinedAt: !971)
!1012 = !DILocation(line: 0, scope: !975, inlinedAt: !971)
!1013 = !{!953, !314, i64 16}
!1014 = !DILocation(line: 278, column: 13, scope: !1015, inlinedAt: !971)
!1015 = distinct !DILexicalBlock(scope: !965, file: !346, line: 278, column: 13)
!1016 = !DILocation(line: 278, column: 13, scope: !965, inlinedAt: !971)
!1017 = distinct !{!1017, !962, !1018}
!1018 = !DILocation(line: 292, column: 55, scope: !820)
!1019 = !DILocation(line: 281, column: 44, scope: !1020, inlinedAt: !971)
!1020 = distinct !DILexicalBlock(scope: !1015, file: !346, line: 278, column: 26)
!1021 = !{!1022, !314, i64 16}
!1022 = !{!"dictEntry", !314, i64 0, !314, i64 8, !314, i64 16}
!1023 = !DILocation(line: 281, column: 29, scope: !1020, inlinedAt: !971)
!1024 = !{!953, !314, i64 24}
!1025 = !DILocation(line: 292, column: 31, scope: !820)
!1026 = !{!1022, !314, i64 8}
!1027 = !DILocation(line: 265, column: 51, scope: !884, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 292, column: 9, scope: !820)
!1029 = !DILocation(line: 265, column: 70, scope: !884, inlinedAt: !1028)
!1030 = !DILocation(line: 265, column: 86, scope: !884, inlinedAt: !1028)
!1031 = !DILocation(line: 267, column: 13, scope: !896, inlinedAt: !1028)
!1032 = !DILocation(line: 267, column: 16, scope: !896, inlinedAt: !1028)
!1033 = !DILocation(line: 267, column: 9, scope: !884, inlinedAt: !1028)
!1034 = !DILocation(line: 266, column: 19, scope: !884, inlinedAt: !1028)
!1035 = !DILocation(line: 268, column: 18, scope: !902, inlinedAt: !1028)
!1036 = !DILocation(line: 269, column: 29, scope: !902, inlinedAt: !1028)
!1037 = !DILocation(line: 269, column: 9, scope: !902, inlinedAt: !1028)
!1038 = !DILocation(line: 270, column: 18, scope: !902, inlinedAt: !1028)
!1039 = !DILocation(line: 271, column: 5, scope: !902, inlinedAt: !1028)
!1040 = !DILocation(line: 272, column: 1, scope: !884, inlinedAt: !1028)
!1041 = !DILocation(line: 270, column: 19, scope: !964, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 297, column: 18, scope: !820)
!1043 = !DILocation(line: 270, column: 25, scope: !964, inlinedAt: !1042)
!1044 = !DILocation(line: 270, column: 13, scope: !965, inlinedAt: !1042)
!1045 = !DILocation(line: 271, column: 24, scope: !975, inlinedAt: !1042)
!1046 = !DILocation(line: 273, column: 35, scope: !977, inlinedAt: !1042)
!1047 = !DILocation(line: 273, column: 39, scope: !977, inlinedAt: !1042)
!1048 = !DILocation(line: 273, column: 21, scope: !977, inlinedAt: !1042)
!1049 = !DILocation(line: 272, column: 29, scope: !977, inlinedAt: !1042)
!1050 = !DILocation(line: 272, column: 17, scope: !975, inlinedAt: !1042)
!1051 = !DILocation(line: 286, column: 1, scope: !966, inlinedAt: !1042)
!1052 = !DILocation(line: 288, column: 47, scope: !986, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 299, column: 5, scope: !820)
!1054 = !DILocation(line: 289, column: 5, scope: !986, inlinedAt: !1053)
!1055 = !DILocation(line: 290, column: 1, scope: !986, inlinedAt: !1053)
!1056 = !DILocation(line: 300, column: 25, scope: !820)
!1057 = !DILocation(line: 300, column: 5, scope: !820)
!1058 = !DILocation(line: 303, column: 5, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 303, column: 5)
!1060 = distinct !DILexicalBlock(scope: !820, file: !3, line: 303, column: 5)
!1061 = !DILocation(line: 303, column: 5, scope: !1060)
!1062 = !DILocation(line: 274, column: 37, scope: !975, inlinedAt: !1042)
!1063 = !DILocation(line: 274, column: 27, scope: !975, inlinedAt: !1042)
!1064 = !DILocation(line: 275, column: 9, scope: !975, inlinedAt: !1042)
!1065 = !DILocation(line: 0, scope: !975, inlinedAt: !1042)
!1066 = !DILocation(line: 278, column: 13, scope: !1015, inlinedAt: !1042)
!1067 = !DILocation(line: 278, column: 13, scope: !965, inlinedAt: !1042)
!1068 = distinct !{!1068, !1008, !1069}
!1069 = !DILocation(line: 298, column: 55, scope: !820)
!1070 = !DILocation(line: 281, column: 44, scope: !1020, inlinedAt: !1042)
!1071 = !DILocation(line: 281, column: 29, scope: !1020, inlinedAt: !1042)
!1072 = !DILocation(line: 298, column: 31, scope: !820)
!1073 = !DILocation(line: 265, column: 51, scope: !884, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 298, column: 9, scope: !820)
!1075 = !DILocation(line: 265, column: 70, scope: !884, inlinedAt: !1074)
!1076 = !DILocation(line: 265, column: 86, scope: !884, inlinedAt: !1074)
!1077 = !DILocation(line: 267, column: 13, scope: !896, inlinedAt: !1074)
!1078 = !DILocation(line: 267, column: 16, scope: !896, inlinedAt: !1074)
!1079 = !DILocation(line: 267, column: 9, scope: !884, inlinedAt: !1074)
!1080 = !DILocation(line: 266, column: 19, scope: !884, inlinedAt: !1074)
!1081 = !DILocation(line: 268, column: 18, scope: !902, inlinedAt: !1074)
!1082 = !DILocation(line: 269, column: 29, scope: !902, inlinedAt: !1074)
!1083 = !DILocation(line: 269, column: 9, scope: !902, inlinedAt: !1074)
!1084 = !DILocation(line: 270, column: 18, scope: !902, inlinedAt: !1074)
!1085 = !DILocation(line: 271, column: 5, scope: !902, inlinedAt: !1074)
!1086 = !DILocation(line: 272, column: 1, scope: !884, inlinedAt: !1074)
!1087 = !DILocation(line: 307, column: 13, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !820, file: !3, line: 307, column: 9)
!1089 = !DILocation(line: 307, column: 9, scope: !1088)
!1090 = !DILocation(line: 307, column: 26, scope: !1088)
!1091 = !DILocation(line: 307, column: 33, scope: !1088)
!1092 = !DILocation(line: 307, column: 39, scope: !1088)
!1093 = !DILocation(line: 307, column: 9, scope: !820)
!1094 = !DILocation(line: 308, column: 22, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 308, column: 13)
!1096 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 307, column: 59)
!1097 = !DILocation(line: 308, column: 13, scope: !1096)
!1098 = !DILocation(line: 309, column: 13, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 308, column: 39)
!1100 = !DILocation(line: 310, column: 9, scope: !1099)
!1101 = !DILocation(line: 311, column: 38, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 310, column: 16)
!1103 = !DILocation(line: 311, column: 42, scope: !1102)
!1104 = !DILocation(line: 311, column: 33, scope: !1102)
!1105 = !DILocation(line: 311, column: 13, scope: !1102)
!1106 = !DILocation(line: 316, column: 5, scope: !820)
!1107 = !DILocation(line: 317, column: 1, scope: !820)
!1108 = distinct !DISubprogram(name: "redisAsyncDisconnect", scope: !3, file: !3, line: 357, type: !430, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1109)
!1109 = !{!1110, !1111}
!1110 = !DILocalVariable(name: "ac", arg: 1, scope: !1108, file: !3, line: 357, type: !113)
!1111 = !DILocalVariable(name: "c", scope: !1108, file: !3, line: 358, type: !279)
!1112 = !DILocation(line: 357, column: 46, scope: !1108)
!1113 = !DILocation(line: 358, column: 19, scope: !1108)
!1114 = !DILocation(line: 359, column: 8, scope: !1108)
!1115 = !DILocation(line: 359, column: 14, scope: !1108)
!1116 = !DILocation(line: 360, column: 20, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 360, column: 9)
!1118 = !DILocation(line: 360, column: 41, scope: !1117)
!1119 = !DILocation(line: 360, column: 56, scope: !1117)
!1120 = !{!320, !314, i64 296}
!1121 = !DILocation(line: 360, column: 61, scope: !1117)
!1122 = !DILocation(line: 360, column: 9, scope: !1108)
!1123 = !DILocalVariable(name: "ac", arg: 1, scope: !1124, file: !3, line: 331, type: !113)
!1124 = distinct !DISubprogram(name: "__redisAsyncDisconnect", scope: !3, file: !3, line: 331, type: !430, isLocal: true, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1125)
!1125 = !{!1123, !1126}
!1126 = !DILocalVariable(name: "c", scope: !1124, file: !3, line: 332, type: !279)
!1127 = !DILocation(line: 331, column: 55, scope: !1124, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 361, column: 9, scope: !1117)
!1129 = !DILocation(line: 144, column: 54, scope: !429, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 335, column: 5, scope: !1124, inlinedAt: !1128)
!1131 = !DILocation(line: 148, column: 19, scope: !429, inlinedAt: !1130)
!1132 = !DILocation(line: 149, column: 18, scope: !429, inlinedAt: !1130)
!1133 = !DILocation(line: 149, column: 9, scope: !429, inlinedAt: !1130)
!1134 = !DILocation(line: 149, column: 13, scope: !429, inlinedAt: !1130)
!1135 = !DILocation(line: 150, column: 18, scope: !429, inlinedAt: !1130)
!1136 = !DILocation(line: 150, column: 9, scope: !429, inlinedAt: !1130)
!1137 = !DILocation(line: 150, column: 16, scope: !429, inlinedAt: !1130)
!1138 = !DILocation(line: 151, column: 1, scope: !429, inlinedAt: !1130)
!1139 = !DILocation(line: 337, column: 17, scope: !1140, inlinedAt: !1128)
!1140 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 337, column: 9)
!1141 = !DILocation(line: 337, column: 9, scope: !1124, inlinedAt: !1128)
!1142 = !DILocation(line: 249, column: 52, scope: !842, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 339, column: 9, scope: !1144, inlinedAt: !1128)
!1144 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 337, column: 23)
!1145 = !DILocation(line: 249, column: 73, scope: !842, inlinedAt: !1143)
!1146 = !DILocation(line: 250, column: 20, scope: !842, inlinedAt: !1143)
!1147 = !DILocation(line: 263, column: 1, scope: !842, inlinedAt: !1143)
!1148 = !DILocation(line: 339, column: 9, scope: !1144, inlinedAt: !1128)
!1149 = !DILocation(line: 332, column: 19, scope: !1124, inlinedAt: !1128)
!1150 = !DILocation(line: 343, column: 18, scope: !1151, inlinedAt: !1128)
!1151 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 340, column: 12)
!1152 = !DILocation(line: 348, column: 5, scope: !1124, inlinedAt: !1128)
!1153 = !DILocation(line: 349, column: 1, scope: !1124, inlinedAt: !1128)
!1154 = !DILocation(line: 361, column: 9, scope: !1117)
!1155 = !DILocation(line: 362, column: 1, scope: !1108)
!1156 = distinct !DISubprogram(name: "redisProcessCallbacks", scope: !3, file: !3, line: 411, type: !430, isLocal: false, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1157)
!1157 = !{!1158, !1159, !1160, !1161, !1162}
!1158 = !DILocalVariable(name: "ac", arg: 1, scope: !1156, file: !3, line: 411, type: !113)
!1159 = !DILocalVariable(name: "c", scope: !1156, file: !3, line: 412, type: !279)
!1160 = !DILocalVariable(name: "cb", scope: !1156, file: !3, line: 413, type: !235)
!1161 = !DILocalVariable(name: "reply", scope: !1156, file: !3, line: 414, type: !12)
!1162 = !DILocalVariable(name: "status", scope: !1156, file: !3, line: 415, type: !18)
!1163 = !DILocation(line: 411, column: 47, scope: !1156)
!1164 = !DILocation(line: 412, column: 29, scope: !1156)
!1165 = !DILocation(line: 412, column: 19, scope: !1156)
!1166 = !DILocation(line: 413, column: 5, scope: !1156)
!1167 = !DILocation(line: 413, column: 19, scope: !1156)
!1168 = !DILocation(line: 414, column: 5, scope: !1156)
!1169 = !DILocation(line: 414, column: 11, scope: !1156)
!1170 = !DILocation(line: 417, column: 21, scope: !1156)
!1171 = !DILocation(line: 415, column: 9, scope: !1156)
!1172 = !DILocation(line: 417, column: 5, scope: !1156)
!1173 = !DILocation(line: 418, column: 13, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 418, column: 13)
!1175 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 417, column: 59)
!1176 = !DILocation(line: 418, column: 19, scope: !1174)
!1177 = !DILocation(line: 418, column: 13, scope: !1175)
!1178 = !DILocation(line: 421, column: 20, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 421, column: 17)
!1180 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 418, column: 28)
!1181 = !DILocation(line: 421, column: 26, scope: !1179)
!1182 = !DILocation(line: 421, column: 48, scope: !1179)
!1183 = !DILocation(line: 421, column: 61, scope: !1179)
!1184 = !{!310, !314, i64 144}
!1185 = !DILocalVariable(name: "s", arg: 1, scope: !1186, file: !38, line: 86, type: !1189)
!1186 = distinct !DISubprogram(name: "sdslen", scope: !38, file: !38, line: 86, type: !1187, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1190)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!22, !1189}
!1189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!1190 = !{!1185, !1191}
!1191 = !DILocalVariable(name: "flags", scope: !1186, file: !38, line: 87, type: !36)
!1192 = !DILocation(line: 86, column: 39, scope: !1186, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 421, column: 51, scope: !1179)
!1194 = !DILocation(line: 87, column: 27, scope: !1186, inlinedAt: !1193)
!1195 = !{!312, !312, i64 0}
!1196 = !DILocation(line: 87, column: 19, scope: !1186, inlinedAt: !1193)
!1197 = !DILocation(line: 88, column: 5, scope: !1186, inlinedAt: !1193)
!1198 = !DILocation(line: 101, column: 1, scope: !1186, inlinedAt: !1193)
!1199 = !DILocation(line: 422, column: 17, scope: !1179)
!1200 = !DILocation(line: 90, column: 20, scope: !1201, inlinedAt: !1193)
!1201 = distinct !DILexicalBlock(scope: !1186, file: !38, line: 88, column: 33)
!1202 = !DILocation(line: 90, column: 13, scope: !1201, inlinedAt: !1193)
!1203 = !DILocation(line: 92, column: 20, scope: !1201, inlinedAt: !1193)
!1204 = !DILocation(line: 92, column: 34, scope: !1201, inlinedAt: !1193)
!1205 = !DILocation(line: 92, column: 13, scope: !1201, inlinedAt: !1193)
!1206 = !DILocation(line: 94, column: 20, scope: !1201, inlinedAt: !1193)
!1207 = !DILocation(line: 94, column: 35, scope: !1201, inlinedAt: !1193)
!1208 = !{!1209, !1209, i64 0}
!1209 = !{!"short", !312, i64 0}
!1210 = !DILocation(line: 94, column: 13, scope: !1201, inlinedAt: !1193)
!1211 = !DILocation(line: 96, column: 20, scope: !1201, inlinedAt: !1193)
!1212 = !DILocation(line: 96, column: 35, scope: !1201, inlinedAt: !1193)
!1213 = !{!311, !311, i64 0}
!1214 = !DILocation(line: 96, column: 13, scope: !1201, inlinedAt: !1193)
!1215 = !DILocation(line: 98, column: 20, scope: !1201, inlinedAt: !1193)
!1216 = !DILocation(line: 98, column: 35, scope: !1201, inlinedAt: !1193)
!1217 = !DILocation(line: 98, column: 13, scope: !1201, inlinedAt: !1193)
!1218 = !DILocation(line: 0, scope: !1201, inlinedAt: !1193)
!1219 = !DILocation(line: 421, column: 67, scope: !1179)
!1220 = !DILocation(line: 422, column: 32, scope: !1179)
!1221 = !DILocation(line: 422, column: 37, scope: !1179)
!1222 = !DILocation(line: 421, column: 17, scope: !1180)
!1223 = !DILocation(line: 331, column: 55, scope: !1124, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 423, column: 17, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 422, column: 46)
!1226 = !DILocation(line: 144, column: 54, scope: !429, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 335, column: 5, scope: !1124, inlinedAt: !1224)
!1228 = !DILocation(line: 148, column: 19, scope: !429, inlinedAt: !1227)
!1229 = !DILocation(line: 149, column: 18, scope: !429, inlinedAt: !1227)
!1230 = !DILocation(line: 149, column: 9, scope: !429, inlinedAt: !1227)
!1231 = !DILocation(line: 149, column: 13, scope: !429, inlinedAt: !1227)
!1232 = !DILocation(line: 150, column: 18, scope: !429, inlinedAt: !1227)
!1233 = !DILocation(line: 150, column: 9, scope: !429, inlinedAt: !1227)
!1234 = !DILocation(line: 150, column: 16, scope: !429, inlinedAt: !1227)
!1235 = !DILocation(line: 151, column: 1, scope: !429, inlinedAt: !1227)
!1236 = !DILocation(line: 337, column: 17, scope: !1140, inlinedAt: !1224)
!1237 = !DILocation(line: 337, column: 9, scope: !1124, inlinedAt: !1224)
!1238 = !DILocation(line: 249, column: 52, scope: !842, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 339, column: 9, scope: !1144, inlinedAt: !1224)
!1240 = !DILocation(line: 249, column: 73, scope: !842, inlinedAt: !1239)
!1241 = !DILocation(line: 250, column: 20, scope: !842, inlinedAt: !1239)
!1242 = !DILocation(line: 263, column: 1, scope: !842, inlinedAt: !1239)
!1243 = !DILocation(line: 339, column: 9, scope: !1144, inlinedAt: !1224)
!1244 = !DILocation(line: 332, column: 19, scope: !1124, inlinedAt: !1224)
!1245 = !DILocation(line: 343, column: 18, scope: !1151, inlinedAt: !1224)
!1246 = !DILocation(line: 348, column: 5, scope: !1124, inlinedAt: !1224)
!1247 = !DILocation(line: 349, column: 1, scope: !1124, inlinedAt: !1224)
!1248 = !DILocation(line: 424, column: 17, scope: !1225)
!1249 = !DILocation(line: 428, column: 25, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 428, column: 16)
!1251 = !DILocation(line: 428, column: 16, scope: !1180)
!1252 = !DILocalVariable(name: "list", arg: 1, scope: !1253, file: !3, line: 227, type: !845)
!1253 = distinct !DISubprogram(name: "__redisPushCallback", scope: !3, file: !3, line: 227, type: !843, isLocal: true, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1254)
!1254 = !{!1252, !1255, !1256}
!1255 = !DILocalVariable(name: "source", arg: 2, scope: !1253, file: !3, line: 227, type: !234)
!1256 = !DILocalVariable(name: "cb", scope: !1253, file: !3, line: 228, type: !234)
!1257 = !DILocation(line: 227, column: 51, scope: !1253, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 429, column: 17, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 428, column: 45)
!1260 = !DILocation(line: 227, column: 72, scope: !1253, inlinedAt: !1258)
!1261 = !DILocation(line: 231, column: 10, scope: !1253, inlinedAt: !1258)
!1262 = !DILocation(line: 228, column: 20, scope: !1253, inlinedAt: !1258)
!1263 = !DILocation(line: 232, column: 12, scope: !1264, inlinedAt: !1258)
!1264 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 232, column: 9)
!1265 = !DILocation(line: 232, column: 9, scope: !1253, inlinedAt: !1258)
!1266 = !DILocation(line: 236, column: 9, scope: !1267, inlinedAt: !1258)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 235, column: 25)
!1268 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 235, column: 9)
!1269 = !DILocation(line: 237, column: 13, scope: !1267, inlinedAt: !1258)
!1270 = !DILocation(line: 237, column: 18, scope: !1267, inlinedAt: !1258)
!1271 = !DILocation(line: 241, column: 15, scope: !1272, inlinedAt: !1258)
!1272 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 241, column: 9)
!1273 = !DILocation(line: 241, column: 20, scope: !1272, inlinedAt: !1258)
!1274 = !DILocation(line: 241, column: 9, scope: !1253, inlinedAt: !1258)
!1275 = !DILocation(line: 242, column: 20, scope: !1272, inlinedAt: !1258)
!1276 = !DILocation(line: 242, column: 9, scope: !1272, inlinedAt: !1258)
!1277 = !DILocation(line: 243, column: 15, scope: !1278, inlinedAt: !1258)
!1278 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 243, column: 9)
!1279 = !DILocation(line: 243, column: 20, scope: !1278, inlinedAt: !1258)
!1280 = !DILocation(line: 243, column: 9, scope: !1253, inlinedAt: !1258)
!1281 = !DILocation(line: 244, column: 26, scope: !1278, inlinedAt: !1258)
!1282 = !DILocation(line: 244, column: 9, scope: !1278, inlinedAt: !1258)
!1283 = !DILocation(line: 245, column: 16, scope: !1253, inlinedAt: !1258)
!1284 = !DILocation(line: 246, column: 5, scope: !1253, inlinedAt: !1258)
!1285 = !DILocation(line: 247, column: 1, scope: !1253, inlinedAt: !1258)
!1286 = !DILocation(line: 430, column: 13, scope: !1259)
!1287 = !DILocation(line: 249, column: 52, scope: !842, inlinedAt: !1288)
!1288 = distinct !DILocation(line: 439, column: 13, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 439, column: 13)
!1290 = !DILocation(line: 249, column: 73, scope: !842, inlinedAt: !1288)
!1291 = !DILocation(line: 250, column: 31, scope: !842, inlinedAt: !1288)
!1292 = !DILocation(line: 250, column: 20, scope: !842, inlinedAt: !1288)
!1293 = !DILocation(line: 251, column: 12, scope: !856, inlinedAt: !1288)
!1294 = !DILocation(line: 251, column: 9, scope: !842, inlinedAt: !1288)
!1295 = !DILocation(line: 252, column: 26, scope: !859, inlinedAt: !1288)
!1296 = !DILocation(line: 252, column: 20, scope: !859, inlinedAt: !1288)
!1297 = !DILocation(line: 253, column: 25, scope: !864, inlinedAt: !1288)
!1298 = !DILocation(line: 253, column: 16, scope: !864, inlinedAt: !1288)
!1299 = !DILocation(line: 253, column: 13, scope: !859, inlinedAt: !1288)
!1300 = !DILocation(line: 254, column: 24, scope: !864, inlinedAt: !1288)
!1301 = !DILocation(line: 254, column: 13, scope: !864, inlinedAt: !1288)
!1302 = !DILocation(line: 258, column: 27, scope: !880, inlinedAt: !1288)
!1303 = !DILocation(line: 258, column: 13, scope: !880, inlinedAt: !1288)
!1304 = !DILocation(line: 259, column: 9, scope: !859, inlinedAt: !1288)
!1305 = !DILocation(line: 439, column: 13, scope: !1175)
!1306 = !DILocation(line: 263, column: 1, scope: !842, inlinedAt: !1288)
!1307 = !DILocation(line: 455, column: 39, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 455, column: 17)
!1309 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 439, column: 65)
!1310 = !{!1311, !311, i64 0}
!1311 = !{!"redisReply", !311, i64 0, !1312, i64 8, !381, i64 16, !314, i64 24, !381, i64 32, !314, i64 40}
!1312 = !{!"long long", !312, i64 0}
!1313 = !DILocation(line: 455, column: 44, scope: !1308)
!1314 = !DILocation(line: 455, column: 17, scope: !1309)
!1315 = !DILocation(line: 456, column: 20, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 455, column: 66)
!1317 = !DILocation(line: 456, column: 24, scope: !1316)
!1318 = !DILocation(line: 457, column: 26, scope: !1316)
!1319 = !DILocation(line: 457, column: 81, scope: !1316)
!1320 = !{!1311, !314, i64 24}
!1321 = !DILocation(line: 457, column: 17, scope: !1316)
!1322 = !DILocation(line: 458, column: 20, scope: !1316)
!1323 = !{!310, !314, i64 152}
!1324 = !DILocation(line: 458, column: 28, scope: !1316)
!1325 = !{!1326, !314, i64 544}
!1326 = !{!"redisReader", !311, i64 0, !312, i64 4, !314, i64 136, !381, i64 144, !381, i64 152, !381, i64 160, !312, i64 168, !311, i64 528, !314, i64 536, !314, i64 544, !314, i64 552}
!1327 = !DILocation(line: 458, column: 32, scope: !1316)
!1328 = !{!1329, !314, i64 32}
!1329 = !{!"redisReplyObjectFunctions", !314, i64 0, !314, i64 8, !314, i64 16, !314, i64 24, !314, i64 32}
!1330 = !DILocation(line: 458, column: 43, scope: !1316)
!1331 = !DILocation(line: 458, column: 17, scope: !1316)
!1332 = !DILocation(line: 331, column: 55, scope: !1124, inlinedAt: !1333)
!1333 = distinct !DILocation(line: 459, column: 17, scope: !1316)
!1334 = !DILocation(line: 144, column: 54, scope: !429, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 335, column: 5, scope: !1124, inlinedAt: !1333)
!1336 = !DILocation(line: 148, column: 19, scope: !429, inlinedAt: !1335)
!1337 = !DILocation(line: 149, column: 18, scope: !429, inlinedAt: !1335)
!1338 = !DILocation(line: 149, column: 9, scope: !429, inlinedAt: !1335)
!1339 = !DILocation(line: 149, column: 13, scope: !429, inlinedAt: !1335)
!1340 = !DILocation(line: 150, column: 9, scope: !429, inlinedAt: !1335)
!1341 = !DILocation(line: 150, column: 16, scope: !429, inlinedAt: !1335)
!1342 = !DILocation(line: 151, column: 1, scope: !429, inlinedAt: !1335)
!1343 = !DILocation(line: 337, column: 17, scope: !1140, inlinedAt: !1333)
!1344 = !DILocation(line: 337, column: 9, scope: !1124, inlinedAt: !1333)
!1345 = !DILocation(line: 249, column: 52, scope: !842, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 339, column: 9, scope: !1144, inlinedAt: !1333)
!1347 = !DILocation(line: 249, column: 73, scope: !842, inlinedAt: !1346)
!1348 = !DILocation(line: 250, column: 31, scope: !842, inlinedAt: !1346)
!1349 = !DILocation(line: 250, column: 20, scope: !842, inlinedAt: !1346)
!1350 = !DILocation(line: 251, column: 12, scope: !856, inlinedAt: !1346)
!1351 = !DILocation(line: 251, column: 9, scope: !842, inlinedAt: !1346)
!1352 = !DILocation(line: 263, column: 1, scope: !842, inlinedAt: !1346)
!1353 = !DILocation(line: 339, column: 9, scope: !1144, inlinedAt: !1333)
!1354 = !DILocation(line: 252, column: 26, scope: !859, inlinedAt: !1346)
!1355 = !DILocation(line: 252, column: 20, scope: !859, inlinedAt: !1346)
!1356 = !DILocation(line: 253, column: 25, scope: !864, inlinedAt: !1346)
!1357 = !DILocation(line: 253, column: 16, scope: !864, inlinedAt: !1346)
!1358 = !DILocation(line: 253, column: 13, scope: !859, inlinedAt: !1346)
!1359 = !DILocation(line: 254, column: 24, scope: !864, inlinedAt: !1346)
!1360 = !DILocation(line: 254, column: 13, scope: !864, inlinedAt: !1346)
!1361 = !DILocation(line: 259, column: 14, scope: !859, inlinedAt: !1346)
!1362 = !DILocation(line: 259, column: 9, scope: !859, inlinedAt: !1346)
!1363 = !DILocation(line: 332, column: 19, scope: !1124, inlinedAt: !1333)
!1364 = !DILocation(line: 343, column: 18, scope: !1151, inlinedAt: !1333)
!1365 = !DILocation(line: 348, column: 5, scope: !1124, inlinedAt: !1333)
!1366 = !DILocation(line: 349, column: 1, scope: !1124, inlinedAt: !1333)
!1367 = !DILocation(line: 460, column: 17, scope: !1316)
!1368 = !DILocation(line: 463, column: 13, scope: !1309)
!1369 = !DILocation(line: 464, column: 16, scope: !1309)
!1370 = !DILocalVariable(name: "ac", arg: 1, scope: !1371, file: !3, line: 364, type: !113)
!1371 = distinct !DISubprogram(name: "__redisGetSubscribeCallback", scope: !3, file: !3, line: 364, type: !1372, isLocal: true, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1374)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!18, !113, !13, !234}
!1374 = !{!1370, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383}
!1375 = !DILocalVariable(name: "reply", arg: 2, scope: !1371, file: !3, line: 364, type: !13)
!1376 = !DILocalVariable(name: "dstcb", arg: 3, scope: !1371, file: !3, line: 364, type: !234)
!1377 = !DILocalVariable(name: "c", scope: !1371, file: !3, line: 365, type: !279)
!1378 = !DILocalVariable(name: "callbacks", scope: !1371, file: !3, line: 366, type: !349)
!1379 = !DILocalVariable(name: "de", scope: !1371, file: !3, line: 367, type: !258)
!1380 = !DILocalVariable(name: "pvariant", scope: !1371, file: !3, line: 368, type: !18)
!1381 = !DILocalVariable(name: "stype", scope: !1371, file: !3, line: 369, type: !28)
!1382 = !DILocalVariable(name: "sname", scope: !1371, file: !3, line: 370, type: !37)
!1383 = !DILocalVariable(name: "__x", scope: !1384, file: !3, line: 378, type: !29)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 378, column: 21)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 374, column: 43)
!1386 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 374, column: 9)
!1387 = !DILocation(line: 364, column: 59, scope: !1371, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 465, column: 17, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 464, column: 16)
!1390 = !DILocation(line: 364, column: 75, scope: !1371, inlinedAt: !1388)
!1391 = !DILocation(line: 364, column: 97, scope: !1371, inlinedAt: !1388)
!1392 = !DILocation(line: 365, column: 19, scope: !1371, inlinedAt: !1388)
!1393 = !DILocation(line: 374, column: 21, scope: !1386, inlinedAt: !1388)
!1394 = !DILocation(line: 374, column: 9, scope: !1371, inlinedAt: !1388)
!1395 = !DILocation(line: 375, column: 9, scope: !1385, inlinedAt: !1388)
!1396 = !{!1311, !381, i64 32}
!1397 = !DILocation(line: 376, column: 9, scope: !1385, inlinedAt: !1388)
!1398 = !{!1311, !314, i64 40}
!1399 = !DILocation(line: 377, column: 36, scope: !1385, inlinedAt: !1388)
!1400 = !DILocation(line: 369, column: 11, scope: !1371, inlinedAt: !1388)
!1401 = !DILocation(line: 378, column: 21, scope: !1384, inlinedAt: !1388)
!1402 = !DILocation(line: 378, column: 39, scope: !1385, inlinedAt: !1388)
!1403 = !DILocation(line: 366, column: 11, scope: !1371, inlinedAt: !1388)
!1404 = !DILocation(line: 380, column: 13, scope: !1385, inlinedAt: !1388)
!1405 = !DILocation(line: 0, scope: !1406, inlinedAt: !1388)
!1406 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 380, column: 13)
!1407 = !DILocation(line: 386, column: 9, scope: !1385, inlinedAt: !1388)
!1408 = !DILocation(line: 387, column: 46, scope: !1385, inlinedAt: !1388)
!1409 = !DILocation(line: 387, column: 69, scope: !1385, inlinedAt: !1388)
!1410 = !{!1311, !381, i64 16}
!1411 = !DILocation(line: 387, column: 17, scope: !1385, inlinedAt: !1388)
!1412 = !DILocation(line: 370, column: 9, scope: !1371, inlinedAt: !1388)
!1413 = !DILocalVariable(name: "ht", arg: 1, scope: !1414, file: !346, line: 243, type: !349)
!1414 = distinct !DISubprogram(name: "dictFind", scope: !346, file: !346, line: 243, type: !1415, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1417)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!258, !349, !90}
!1417 = !{!1413, !1418, !1419, !1420}
!1418 = !DILocalVariable(name: "key", arg: 2, scope: !1414, file: !346, line: 243, type: !90)
!1419 = !DILocalVariable(name: "he", scope: !1414, file: !346, line: 244, type: !258)
!1420 = !DILocalVariable(name: "h", scope: !1414, file: !346, line: 245, type: !7)
!1421 = !DILocation(line: 243, column: 34, scope: !1414, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 388, column: 14, scope: !1385, inlinedAt: !1388)
!1423 = !DILocation(line: 243, column: 50, scope: !1414, inlinedAt: !1422)
!1424 = !DILocation(line: 247, column: 13, scope: !1425, inlinedAt: !1422)
!1425 = distinct !DILexicalBlock(scope: !1414, file: !346, line: 247, column: 9)
!1426 = !DILocation(line: 247, column: 18, scope: !1425, inlinedAt: !1422)
!1427 = !DILocation(line: 247, column: 9, scope: !1414, inlinedAt: !1422)
!1428 = !DILocation(line: 248, column: 9, scope: !1414, inlinedAt: !1422)
!1429 = !{!1430, !314, i64 0}
!1430 = !{!"dictType", !314, i64 0, !314, i64 8, !314, i64 16, !314, i64 24, !314, i64 32, !314, i64 40}
!1431 = !DILocation(line: 248, column: 36, scope: !1414, inlinedAt: !1422)
!1432 = !{!380, !381, i64 24}
!1433 = !DILocation(line: 245, column: 18, scope: !1414, inlinedAt: !1422)
!1434 = !DILocation(line: 249, column: 14, scope: !1414, inlinedAt: !1422)
!1435 = !DILocation(line: 249, column: 10, scope: !1414, inlinedAt: !1422)
!1436 = !DILocation(line: 244, column: 16, scope: !1414, inlinedAt: !1422)
!1437 = !DILocation(line: 251, column: 13, scope: !1438, inlinedAt: !1422)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !346, line: 251, column: 13)
!1439 = distinct !DILexicalBlock(scope: !1414, file: !346, line: 250, column: 15)
!1440 = !DILocation(line: 0, scope: !1439, inlinedAt: !1422)
!1441 = !DILocation(line: 250, column: 5, scope: !1414, inlinedAt: !1422)
!1442 = !{!1430, !314, i64 24}
!1443 = !DILocation(line: 251, column: 13, scope: !1439, inlinedAt: !1422)
!1444 = !{!1022, !314, i64 0}
!1445 = !DILocation(line: 253, column: 18, scope: !1439, inlinedAt: !1422)
!1446 = distinct !{!1446, !1447, !1448}
!1447 = !DILocation(line: 250, column: 5, scope: !1414)
!1448 = !DILocation(line: 254, column: 5, scope: !1414)
!1449 = !DILocation(line: 256, column: 1, scope: !1414, inlinedAt: !1422)
!1450 = !DILocation(line: 367, column: 16, scope: !1371, inlinedAt: !1388)
!1451 = !DILocation(line: 389, column: 13, scope: !1385, inlinedAt: !1388)
!1452 = !DILocation(line: 390, column: 26, scope: !1453, inlinedAt: !1388)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 389, column: 25)
!1454 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 389, column: 13)
!1455 = !DILocation(line: 390, column: 13, scope: !1453, inlinedAt: !1388)
!1456 = !DILocation(line: 393, column: 33, scope: !1457, inlinedAt: !1388)
!1457 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 393, column: 17)
!1458 = !DILocation(line: 393, column: 17, scope: !1457, inlinedAt: !1388)
!1459 = !DILocation(line: 393, column: 58, scope: !1457, inlinedAt: !1388)
!1460 = !DILocation(line: 393, column: 17, scope: !1453, inlinedAt: !1388)
!1461 = !DILocalVariable(name: "ht", arg: 1, scope: !1462, file: !346, line: 182, type: !349)
!1462 = distinct !DISubprogram(name: "dictDelete", scope: !346, file: !346, line: 182, type: !1463, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1465)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!18, !349, !90}
!1465 = !{!1461, !1466, !1467, !1468, !1469}
!1466 = !DILocalVariable(name: "key", arg: 2, scope: !1462, file: !346, line: 182, type: !90)
!1467 = !DILocalVariable(name: "h", scope: !1462, file: !346, line: 183, type: !7)
!1468 = !DILocalVariable(name: "de", scope: !1462, file: !346, line: 184, type: !258)
!1469 = !DILocalVariable(name: "prevde", scope: !1462, file: !346, line: 184, type: !258)
!1470 = !DILocation(line: 182, column: 29, scope: !1462, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 394, column: 17, scope: !1472, inlinedAt: !1388)
!1472 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 393, column: 64)
!1473 = !DILocation(line: 182, column: 45, scope: !1462, inlinedAt: !1471)
!1474 = !DILocation(line: 186, column: 13, scope: !1475, inlinedAt: !1471)
!1475 = distinct !DILexicalBlock(scope: !1462, file: !346, line: 186, column: 9)
!1476 = !DILocation(line: 186, column: 18, scope: !1475, inlinedAt: !1471)
!1477 = !DILocation(line: 186, column: 9, scope: !1462, inlinedAt: !1471)
!1478 = !DILocation(line: 188, column: 9, scope: !1462, inlinedAt: !1471)
!1479 = !DILocation(line: 188, column: 36, scope: !1462, inlinedAt: !1471)
!1480 = !DILocation(line: 183, column: 18, scope: !1462, inlinedAt: !1471)
!1481 = !DILocation(line: 189, column: 14, scope: !1462, inlinedAt: !1471)
!1482 = !DILocation(line: 189, column: 10, scope: !1462, inlinedAt: !1471)
!1483 = !DILocation(line: 184, column: 16, scope: !1462, inlinedAt: !1471)
!1484 = !DILocation(line: 184, column: 21, scope: !1462, inlinedAt: !1471)
!1485 = !DILocation(line: 0, scope: !1486, inlinedAt: !1471)
!1486 = distinct !DILexicalBlock(scope: !1462, file: !346, line: 192, column: 15)
!1487 = !DILocation(line: 192, column: 5, scope: !1462, inlinedAt: !1471)
!1488 = !DILocation(line: 193, column: 13, scope: !1489, inlinedAt: !1471)
!1489 = distinct !DILexicalBlock(scope: !1486, file: !346, line: 193, column: 13)
!1490 = !DILocation(line: 193, column: 13, scope: !1486, inlinedAt: !1471)
!1491 = !DILocation(line: 195, column: 17, scope: !1492, inlinedAt: !1471)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !346, line: 195, column: 17)
!1493 = distinct !DILexicalBlock(scope: !1489, file: !346, line: 193, column: 50)
!1494 = !DILocation(line: 0, scope: !1492, inlinedAt: !1471)
!1495 = !DILocation(line: 195, column: 17, scope: !1493, inlinedAt: !1471)
!1496 = !DILocation(line: 196, column: 25, scope: !1492, inlinedAt: !1471)
!1497 = !DILocation(line: 196, column: 17, scope: !1492, inlinedAt: !1471)
!1498 = !DILocation(line: 198, column: 21, scope: !1492, inlinedAt: !1471)
!1499 = !DILocation(line: 198, column: 17, scope: !1492, inlinedAt: !1471)
!1500 = !DILocation(line: 0, scope: !1472, inlinedAt: !1388)
!1501 = !DILocation(line: 200, column: 13, scope: !1502, inlinedAt: !1471)
!1502 = distinct !DILexicalBlock(scope: !1493, file: !346, line: 200, column: 13)
!1503 = !{!1430, !314, i64 32}
!1504 = !DILocation(line: 200, column: 13, scope: !1493, inlinedAt: !1471)
!1505 = !DILocation(line: 201, column: 13, scope: !1506, inlinedAt: !1471)
!1506 = distinct !DILexicalBlock(scope: !1493, file: !346, line: 201, column: 13)
!1507 = !{!1430, !314, i64 40}
!1508 = !DILocation(line: 201, column: 13, scope: !1493, inlinedAt: !1471)
!1509 = !DILocation(line: 202, column: 18, scope: !1493, inlinedAt: !1471)
!1510 = !DILocation(line: 202, column: 13, scope: !1493, inlinedAt: !1471)
!1511 = !DILocation(line: 203, column: 17, scope: !1493, inlinedAt: !1471)
!1512 = !DILocation(line: 203, column: 21, scope: !1493, inlinedAt: !1471)
!1513 = !DILocation(line: 204, column: 13, scope: !1493, inlinedAt: !1471)
!1514 = !DILocation(line: 207, column: 18, scope: !1486, inlinedAt: !1471)
!1515 = distinct !{!1515, !1516, !1517}
!1516 = !DILocation(line: 192, column: 5, scope: !1462)
!1517 = !DILocation(line: 208, column: 5, scope: !1462)
!1518 = !DILocation(line: 210, column: 1, scope: !1462, inlinedAt: !1471)
!1519 = !DILocation(line: 398, column: 17, scope: !1472, inlinedAt: !1388)
!1520 = !DILocation(line: 399, column: 40, scope: !1521, inlinedAt: !1388)
!1521 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 399, column: 21)
!1522 = !{!1311, !1312, i64 8}
!1523 = !DILocation(line: 399, column: 48, scope: !1521, inlinedAt: !1388)
!1524 = !DILocation(line: 399, column: 21, scope: !1472, inlinedAt: !1388)
!1525 = !DILocation(line: 400, column: 30, scope: !1521, inlinedAt: !1388)
!1526 = !DILocation(line: 400, column: 21, scope: !1521, inlinedAt: !1388)
!1527 = !DILocation(line: 403, column: 9, scope: !1385, inlinedAt: !1388)
!1528 = !DILocation(line: 404, column: 5, scope: !1385, inlinedAt: !1388)
!1529 = !DILocation(line: 249, column: 52, scope: !842, inlinedAt: !1530)
!1530 = distinct !DILocation(line: 406, column: 9, scope: !1531, inlinedAt: !1388)
!1531 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 404, column: 12)
!1532 = !DILocation(line: 249, column: 73, scope: !842, inlinedAt: !1530)
!1533 = !DILocation(line: 250, column: 31, scope: !842, inlinedAt: !1530)
!1534 = !DILocation(line: 250, column: 20, scope: !842, inlinedAt: !1530)
!1535 = !DILocation(line: 251, column: 12, scope: !856, inlinedAt: !1530)
!1536 = !DILocation(line: 251, column: 9, scope: !842, inlinedAt: !1530)
!1537 = !DILocation(line: 252, column: 26, scope: !859, inlinedAt: !1530)
!1538 = !DILocation(line: 252, column: 20, scope: !859, inlinedAt: !1530)
!1539 = !DILocation(line: 253, column: 25, scope: !864, inlinedAt: !1530)
!1540 = !DILocation(line: 253, column: 16, scope: !864, inlinedAt: !1530)
!1541 = !DILocation(line: 253, column: 13, scope: !859, inlinedAt: !1530)
!1542 = !DILocation(line: 254, column: 24, scope: !864, inlinedAt: !1530)
!1543 = !DILocation(line: 254, column: 13, scope: !864, inlinedAt: !1530)
!1544 = !DILocation(line: 258, column: 27, scope: !880, inlinedAt: !1530)
!1545 = !DILocation(line: 258, column: 13, scope: !880, inlinedAt: !1530)
!1546 = !DILocation(line: 259, column: 9, scope: !859, inlinedAt: !1530)
!1547 = !DILocation(line: 260, column: 9, scope: !859, inlinedAt: !1530)
!1548 = !DILocation(line: 263, column: 1, scope: !842, inlinedAt: !1530)
!1549 = !DILocation(line: 0, scope: !1389)
!1550 = !DILocation(line: 468, column: 16, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 468, column: 13)
!1552 = !DILocation(line: 468, column: 19, scope: !1551)
!1553 = !DILocation(line: 468, column: 13, scope: !1175)
!1554 = !DILocation(line: 469, column: 39, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 468, column: 28)
!1556 = !DILocation(line: 265, column: 51, scope: !884, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 469, column: 13, scope: !1555)
!1558 = !DILocation(line: 265, column: 70, scope: !884, inlinedAt: !1557)
!1559 = !DILocation(line: 265, column: 86, scope: !884, inlinedAt: !1557)
!1560 = !DILocation(line: 266, column: 19, scope: !884, inlinedAt: !1557)
!1561 = !DILocation(line: 268, column: 18, scope: !902, inlinedAt: !1557)
!1562 = !DILocation(line: 269, column: 29, scope: !902, inlinedAt: !1557)
!1563 = !DILocation(line: 269, column: 9, scope: !902, inlinedAt: !1557)
!1564 = !DILocation(line: 270, column: 18, scope: !902, inlinedAt: !1557)
!1565 = !DILocation(line: 272, column: 1, scope: !884, inlinedAt: !1557)
!1566 = !DILocation(line: 470, column: 16, scope: !1555)
!1567 = !DILocation(line: 470, column: 24, scope: !1555)
!1568 = !DILocation(line: 470, column: 28, scope: !1555)
!1569 = !DILocation(line: 470, column: 39, scope: !1555)
!1570 = !DILocation(line: 470, column: 13, scope: !1555)
!1571 = !DILocation(line: 473, column: 20, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 473, column: 17)
!1573 = !DILocation(line: 473, column: 26, scope: !1572)
!1574 = !DILocation(line: 473, column: 17, scope: !1555)
!1575 = !DILocation(line: 474, column: 17, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 473, column: 43)
!1577 = !DILocation(line: 475, column: 17, scope: !1576)
!1578 = !DILocation(line: 482, column: 16, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 477, column: 16)
!1580 = !DILocation(line: 482, column: 24, scope: !1579)
!1581 = !DILocation(line: 482, column: 28, scope: !1579)
!1582 = !DILocation(line: 482, column: 39, scope: !1579)
!1583 = !DILocation(line: 482, column: 13, scope: !1579)
!1584 = distinct !{!1584, !1172, !1585}
!1585 = !DILocation(line: 484, column: 5, scope: !1156)
!1586 = !DILocation(line: 331, column: 55, scope: !1124, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 488, column: 9, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 487, column: 9)
!1589 = !DILocation(line: 144, column: 54, scope: !429, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 335, column: 5, scope: !1124, inlinedAt: !1587)
!1591 = !DILocation(line: 145, column: 10, scope: !1592, inlinedAt: !1590)
!1592 = distinct !DILexicalBlock(scope: !429, file: !3, line: 145, column: 9)
!1593 = !DILocation(line: 145, column: 9, scope: !429, inlinedAt: !1590)
!1594 = !DILocation(line: 337, column: 13, scope: !1140, inlinedAt: !1587)
!1595 = !DILocation(line: 148, column: 19, scope: !429, inlinedAt: !1590)
!1596 = !DILocation(line: 149, column: 18, scope: !429, inlinedAt: !1590)
!1597 = !DILocation(line: 149, column: 9, scope: !429, inlinedAt: !1590)
!1598 = !DILocation(line: 149, column: 13, scope: !429, inlinedAt: !1590)
!1599 = !DILocation(line: 150, column: 18, scope: !429, inlinedAt: !1590)
!1600 = !DILocation(line: 150, column: 9, scope: !429, inlinedAt: !1590)
!1601 = !DILocation(line: 150, column: 16, scope: !429, inlinedAt: !1590)
!1602 = !DILocation(line: 151, column: 1, scope: !429, inlinedAt: !1590)
!1603 = !DILocation(line: 337, column: 17, scope: !1140, inlinedAt: !1587)
!1604 = !DILocation(line: 337, column: 9, scope: !1124, inlinedAt: !1587)
!1605 = !DILocation(line: 339, column: 9, scope: !1144, inlinedAt: !1587)
!1606 = !DILocation(line: 249, column: 52, scope: !842, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 339, column: 9, scope: !1144, inlinedAt: !1587)
!1608 = !DILocation(line: 249, column: 73, scope: !842, inlinedAt: !1607)
!1609 = !DILocation(line: 250, column: 31, scope: !842, inlinedAt: !1607)
!1610 = !DILocation(line: 250, column: 20, scope: !842, inlinedAt: !1607)
!1611 = !DILocation(line: 251, column: 12, scope: !856, inlinedAt: !1607)
!1612 = !DILocation(line: 251, column: 9, scope: !842, inlinedAt: !1607)
!1613 = !DILocation(line: 263, column: 1, scope: !842, inlinedAt: !1607)
!1614 = !DILocation(line: 252, column: 26, scope: !859, inlinedAt: !1607)
!1615 = !DILocation(line: 252, column: 20, scope: !859, inlinedAt: !1607)
!1616 = !DILocation(line: 253, column: 25, scope: !864, inlinedAt: !1607)
!1617 = !DILocation(line: 253, column: 16, scope: !864, inlinedAt: !1607)
!1618 = !DILocation(line: 253, column: 13, scope: !859, inlinedAt: !1607)
!1619 = !DILocation(line: 254, column: 24, scope: !864, inlinedAt: !1607)
!1620 = !DILocation(line: 254, column: 13, scope: !864, inlinedAt: !1607)
!1621 = !DILocation(line: 259, column: 14, scope: !859, inlinedAt: !1607)
!1622 = !DILocation(line: 259, column: 9, scope: !859, inlinedAt: !1607)
!1623 = !DILocation(line: 332, column: 19, scope: !1124, inlinedAt: !1587)
!1624 = !DILocation(line: 343, column: 12, scope: !1151, inlinedAt: !1587)
!1625 = !DILocation(line: 343, column: 18, scope: !1151, inlinedAt: !1587)
!1626 = !DILocation(line: 348, column: 5, scope: !1124, inlinedAt: !1587)
!1627 = !DILocation(line: 349, column: 1, scope: !1124, inlinedAt: !1587)
!1628 = !DILocation(line: 488, column: 9, scope: !1588)
!1629 = !DILocation(line: 489, column: 1, scope: !1156)
!1630 = distinct !DISubprogram(name: "redisAsyncHandleRead", scope: !3, file: !3, line: 516, type: !430, isLocal: false, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1631)
!1631 = !{!1632, !1633}
!1632 = !DILocalVariable(name: "ac", arg: 1, scope: !1630, file: !3, line: 516, type: !113)
!1633 = !DILocalVariable(name: "c", scope: !1630, file: !3, line: 517, type: !279)
!1634 = !DILocation(line: 516, column: 46, scope: !1630)
!1635 = !DILocation(line: 517, column: 29, scope: !1630)
!1636 = !DILocation(line: 517, column: 19, scope: !1630)
!1637 = !DILocation(line: 519, column: 14, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 519, column: 9)
!1639 = !DILocation(line: 519, column: 20, scope: !1638)
!1640 = !DILocation(line: 519, column: 9, scope: !1630)
!1641 = !DILocalVariable(name: "ac", arg: 1, scope: !1642, file: !3, line: 494, type: !113)
!1642 = distinct !DISubprogram(name: "__redisAsyncHandleConnect", scope: !3, file: !3, line: 494, type: !1643, isLocal: true, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1645)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!18, !113}
!1645 = !{!1641, !1646}
!1646 = !DILocalVariable(name: "c", scope: !1642, file: !3, line: 495, type: !279)
!1647 = !DILocation(line: 494, column: 57, scope: !1642, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 521, column: 13, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 521, column: 13)
!1650 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 519, column: 40)
!1651 = !DILocation(line: 495, column: 19, scope: !1642, inlinedAt: !1648)
!1652 = !DILocation(line: 497, column: 9, scope: !1653, inlinedAt: !1648)
!1653 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 497, column: 9)
!1654 = !DILocation(line: 497, column: 34, scope: !1653, inlinedAt: !1648)
!1655 = !DILocation(line: 497, column: 9, scope: !1642, inlinedAt: !1648)
!1656 = !DILocation(line: 499, column: 13, scope: !1657, inlinedAt: !1648)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 499, column: 13)
!1658 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 497, column: 48)
!1659 = !DILocation(line: 499, column: 19, scope: !1657, inlinedAt: !1648)
!1660 = !DILocation(line: 499, column: 13, scope: !1658, inlinedAt: !1648)
!1661 = !DILocation(line: 502, column: 17, scope: !1662, inlinedAt: !1648)
!1662 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 502, column: 13)
!1663 = !DILocation(line: 502, column: 13, scope: !1662, inlinedAt: !1648)
!1664 = !DILocation(line: 502, column: 13, scope: !1658, inlinedAt: !1648)
!1665 = !DILocation(line: 502, column: 28, scope: !1662, inlinedAt: !1648)
!1666 = !DILocation(line: 331, column: 55, scope: !1124, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 503, column: 9, scope: !1658, inlinedAt: !1648)
!1668 = !DILocation(line: 144, column: 54, scope: !429, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 335, column: 5, scope: !1124, inlinedAt: !1667)
!1670 = !DILocation(line: 148, column: 19, scope: !429, inlinedAt: !1669)
!1671 = !DILocation(line: 149, column: 18, scope: !429, inlinedAt: !1669)
!1672 = !DILocation(line: 149, column: 9, scope: !429, inlinedAt: !1669)
!1673 = !DILocation(line: 149, column: 13, scope: !429, inlinedAt: !1669)
!1674 = !DILocation(line: 150, column: 18, scope: !429, inlinedAt: !1669)
!1675 = !DILocation(line: 150, column: 9, scope: !429, inlinedAt: !1669)
!1676 = !DILocation(line: 150, column: 16, scope: !429, inlinedAt: !1669)
!1677 = !DILocation(line: 151, column: 1, scope: !429, inlinedAt: !1669)
!1678 = !DILocation(line: 337, column: 17, scope: !1140, inlinedAt: !1667)
!1679 = !DILocation(line: 337, column: 9, scope: !1124, inlinedAt: !1667)
!1680 = !DILocation(line: 339, column: 9, scope: !1144, inlinedAt: !1667)
!1681 = !DILocation(line: 249, column: 52, scope: !842, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 339, column: 9, scope: !1144, inlinedAt: !1667)
!1683 = !DILocation(line: 249, column: 73, scope: !842, inlinedAt: !1682)
!1684 = !DILocation(line: 250, column: 31, scope: !842, inlinedAt: !1682)
!1685 = !DILocation(line: 250, column: 20, scope: !842, inlinedAt: !1682)
!1686 = !DILocation(line: 251, column: 12, scope: !856, inlinedAt: !1682)
!1687 = !DILocation(line: 251, column: 9, scope: !842, inlinedAt: !1682)
!1688 = !DILocation(line: 263, column: 1, scope: !842, inlinedAt: !1682)
!1689 = !DILocation(line: 252, column: 26, scope: !859, inlinedAt: !1682)
!1690 = !DILocation(line: 252, column: 20, scope: !859, inlinedAt: !1682)
!1691 = !DILocation(line: 253, column: 25, scope: !864, inlinedAt: !1682)
!1692 = !DILocation(line: 253, column: 16, scope: !864, inlinedAt: !1682)
!1693 = !DILocation(line: 253, column: 13, scope: !859, inlinedAt: !1682)
!1694 = !DILocation(line: 254, column: 24, scope: !864, inlinedAt: !1682)
!1695 = !DILocation(line: 254, column: 13, scope: !864, inlinedAt: !1682)
!1696 = !DILocation(line: 259, column: 14, scope: !859, inlinedAt: !1682)
!1697 = !DILocation(line: 259, column: 9, scope: !859, inlinedAt: !1682)
!1698 = !DILocation(line: 332, column: 19, scope: !1124, inlinedAt: !1667)
!1699 = !DILocation(line: 343, column: 18, scope: !1151, inlinedAt: !1667)
!1700 = !DILocation(line: 508, column: 14, scope: !1642, inlinedAt: !1648)
!1701 = !DILocation(line: 509, column: 13, scope: !1702, inlinedAt: !1648)
!1702 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 509, column: 9)
!1703 = !DILocation(line: 509, column: 9, scope: !1702, inlinedAt: !1648)
!1704 = !DILocation(line: 509, column: 9, scope: !1642, inlinedAt: !1648)
!1705 = !DILocation(line: 509, column: 24, scope: !1702, inlinedAt: !1648)
!1706 = !DILocation(line: 348, column: 5, scope: !1124, inlinedAt: !1667)
!1707 = !DILocation(line: 349, column: 1, scope: !1124, inlinedAt: !1667)
!1708 = !DILocation(line: 511, column: 1, scope: !1642, inlinedAt: !1648)
!1709 = !DILocation(line: 521, column: 13, scope: !1650)
!1710 = !DILocation(line: 524, column: 18, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 524, column: 13)
!1712 = !DILocation(line: 524, column: 24, scope: !1711)
!1713 = !DILocation(line: 524, column: 13, scope: !1650)
!1714 = !DILocation(line: 528, column: 9, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 528, column: 9)
!1716 = !DILocation(line: 528, column: 28, scope: !1715)
!1717 = !DILocation(line: 528, column: 9, scope: !1630)
!1718 = !DILocation(line: 331, column: 55, scope: !1124, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 529, column: 9, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 528, column: 42)
!1721 = !DILocation(line: 144, column: 54, scope: !429, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 335, column: 5, scope: !1124, inlinedAt: !1719)
!1723 = !DILocation(line: 148, column: 19, scope: !429, inlinedAt: !1722)
!1724 = !DILocation(line: 149, column: 18, scope: !429, inlinedAt: !1722)
!1725 = !DILocation(line: 149, column: 9, scope: !429, inlinedAt: !1722)
!1726 = !DILocation(line: 149, column: 13, scope: !429, inlinedAt: !1722)
!1727 = !DILocation(line: 150, column: 18, scope: !429, inlinedAt: !1722)
!1728 = !DILocation(line: 150, column: 9, scope: !429, inlinedAt: !1722)
!1729 = !DILocation(line: 150, column: 16, scope: !429, inlinedAt: !1722)
!1730 = !DILocation(line: 151, column: 1, scope: !429, inlinedAt: !1722)
!1731 = !DILocation(line: 337, column: 17, scope: !1140, inlinedAt: !1719)
!1732 = !DILocation(line: 337, column: 9, scope: !1124, inlinedAt: !1719)
!1733 = !DILocation(line: 339, column: 9, scope: !1144, inlinedAt: !1719)
!1734 = !DILocation(line: 249, column: 52, scope: !842, inlinedAt: !1735)
!1735 = distinct !DILocation(line: 339, column: 9, scope: !1144, inlinedAt: !1719)
!1736 = !DILocation(line: 249, column: 73, scope: !842, inlinedAt: !1735)
!1737 = !DILocation(line: 250, column: 31, scope: !842, inlinedAt: !1735)
!1738 = !DILocation(line: 250, column: 20, scope: !842, inlinedAt: !1735)
!1739 = !DILocation(line: 251, column: 12, scope: !856, inlinedAt: !1735)
!1740 = !DILocation(line: 251, column: 9, scope: !842, inlinedAt: !1735)
!1741 = !DILocation(line: 263, column: 1, scope: !842, inlinedAt: !1735)
!1742 = !DILocation(line: 252, column: 26, scope: !859, inlinedAt: !1735)
!1743 = !DILocation(line: 252, column: 20, scope: !859, inlinedAt: !1735)
!1744 = !DILocation(line: 253, column: 25, scope: !864, inlinedAt: !1735)
!1745 = !DILocation(line: 253, column: 16, scope: !864, inlinedAt: !1735)
!1746 = !DILocation(line: 253, column: 13, scope: !859, inlinedAt: !1735)
!1747 = !DILocation(line: 254, column: 24, scope: !864, inlinedAt: !1735)
!1748 = !DILocation(line: 254, column: 13, scope: !864, inlinedAt: !1735)
!1749 = !DILocation(line: 259, column: 14, scope: !859, inlinedAt: !1735)
!1750 = !DILocation(line: 259, column: 9, scope: !859, inlinedAt: !1735)
!1751 = !DILocation(line: 332, column: 19, scope: !1124, inlinedAt: !1719)
!1752 = !DILocation(line: 343, column: 18, scope: !1151, inlinedAt: !1719)
!1753 = !DILocation(line: 348, column: 5, scope: !1124, inlinedAt: !1719)
!1754 = !DILocation(line: 349, column: 1, scope: !1124, inlinedAt: !1719)
!1755 = !DILocation(line: 530, column: 5, scope: !1720)
!1756 = !DILocation(line: 532, column: 9, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 532, column: 9)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 532, column: 9)
!1759 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 530, column: 12)
!1760 = !{!320, !314, i64 240}
!1761 = !DILocation(line: 532, column: 9, scope: !1758)
!1762 = !DILocation(line: 533, column: 9, scope: !1759)
!1763 = !DILocation(line: 535, column: 1, scope: !1630)
!1764 = distinct !DISubprogram(name: "redisAsyncHandleWrite", scope: !3, file: !3, line: 537, type: !430, isLocal: false, isDefinition: true, scopeLine: 537, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1765)
!1765 = !{!1766, !1767, !1768}
!1766 = !DILocalVariable(name: "ac", arg: 1, scope: !1764, file: !3, line: 537, type: !113)
!1767 = !DILocalVariable(name: "c", scope: !1764, file: !3, line: 538, type: !279)
!1768 = !DILocalVariable(name: "done", scope: !1764, file: !3, line: 539, type: !18)
!1769 = !DILocation(line: 537, column: 47, scope: !1764)
!1770 = !DILocation(line: 538, column: 29, scope: !1764)
!1771 = !DILocation(line: 538, column: 19, scope: !1764)
!1772 = !DILocation(line: 539, column: 5, scope: !1764)
!1773 = !DILocation(line: 539, column: 9, scope: !1764)
!1774 = !DILocation(line: 541, column: 14, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 541, column: 9)
!1776 = !DILocation(line: 541, column: 20, scope: !1775)
!1777 = !DILocation(line: 541, column: 9, scope: !1764)
!1778 = !DILocation(line: 494, column: 57, scope: !1642, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 543, column: 13, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 543, column: 13)
!1781 = distinct !DILexicalBlock(scope: !1775, file: !3, line: 541, column: 40)
!1782 = !DILocation(line: 495, column: 19, scope: !1642, inlinedAt: !1779)
!1783 = !DILocation(line: 497, column: 9, scope: !1653, inlinedAt: !1779)
!1784 = !DILocation(line: 497, column: 34, scope: !1653, inlinedAt: !1779)
!1785 = !DILocation(line: 497, column: 9, scope: !1642, inlinedAt: !1779)
!1786 = !DILocation(line: 499, column: 13, scope: !1657, inlinedAt: !1779)
!1787 = !DILocation(line: 499, column: 19, scope: !1657, inlinedAt: !1779)
!1788 = !DILocation(line: 499, column: 13, scope: !1658, inlinedAt: !1779)
!1789 = !DILocation(line: 502, column: 17, scope: !1662, inlinedAt: !1779)
!1790 = !DILocation(line: 502, column: 13, scope: !1662, inlinedAt: !1779)
!1791 = !DILocation(line: 502, column: 13, scope: !1658, inlinedAt: !1779)
!1792 = !DILocation(line: 502, column: 28, scope: !1662, inlinedAt: !1779)
!1793 = !DILocation(line: 331, column: 55, scope: !1124, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 503, column: 9, scope: !1658, inlinedAt: !1779)
!1795 = !DILocation(line: 144, column: 54, scope: !429, inlinedAt: !1796)
!1796 = distinct !DILocation(line: 335, column: 5, scope: !1124, inlinedAt: !1794)
!1797 = !DILocation(line: 148, column: 19, scope: !429, inlinedAt: !1796)
!1798 = !DILocation(line: 149, column: 18, scope: !429, inlinedAt: !1796)
!1799 = !DILocation(line: 149, column: 9, scope: !429, inlinedAt: !1796)
!1800 = !DILocation(line: 149, column: 13, scope: !429, inlinedAt: !1796)
!1801 = !DILocation(line: 150, column: 18, scope: !429, inlinedAt: !1796)
!1802 = !DILocation(line: 150, column: 9, scope: !429, inlinedAt: !1796)
!1803 = !DILocation(line: 150, column: 16, scope: !429, inlinedAt: !1796)
!1804 = !DILocation(line: 151, column: 1, scope: !429, inlinedAt: !1796)
!1805 = !DILocation(line: 337, column: 17, scope: !1140, inlinedAt: !1794)
!1806 = !DILocation(line: 337, column: 9, scope: !1124, inlinedAt: !1794)
!1807 = !DILocation(line: 339, column: 9, scope: !1144, inlinedAt: !1794)
!1808 = !DILocation(line: 249, column: 52, scope: !842, inlinedAt: !1809)
!1809 = distinct !DILocation(line: 339, column: 9, scope: !1144, inlinedAt: !1794)
!1810 = !DILocation(line: 249, column: 73, scope: !842, inlinedAt: !1809)
!1811 = !DILocation(line: 250, column: 31, scope: !842, inlinedAt: !1809)
!1812 = !DILocation(line: 250, column: 20, scope: !842, inlinedAt: !1809)
!1813 = !DILocation(line: 251, column: 12, scope: !856, inlinedAt: !1809)
!1814 = !DILocation(line: 251, column: 9, scope: !842, inlinedAt: !1809)
!1815 = !DILocation(line: 263, column: 1, scope: !842, inlinedAt: !1809)
!1816 = !DILocation(line: 252, column: 26, scope: !859, inlinedAt: !1809)
!1817 = !DILocation(line: 252, column: 20, scope: !859, inlinedAt: !1809)
!1818 = !DILocation(line: 253, column: 25, scope: !864, inlinedAt: !1809)
!1819 = !DILocation(line: 253, column: 16, scope: !864, inlinedAt: !1809)
!1820 = !DILocation(line: 253, column: 13, scope: !859, inlinedAt: !1809)
!1821 = !DILocation(line: 254, column: 24, scope: !864, inlinedAt: !1809)
!1822 = !DILocation(line: 254, column: 13, scope: !864, inlinedAt: !1809)
!1823 = !DILocation(line: 259, column: 14, scope: !859, inlinedAt: !1809)
!1824 = !DILocation(line: 259, column: 9, scope: !859, inlinedAt: !1809)
!1825 = !DILocation(line: 332, column: 19, scope: !1124, inlinedAt: !1794)
!1826 = !DILocation(line: 343, column: 18, scope: !1151, inlinedAt: !1794)
!1827 = !DILocation(line: 508, column: 14, scope: !1642, inlinedAt: !1779)
!1828 = !DILocation(line: 509, column: 13, scope: !1702, inlinedAt: !1779)
!1829 = !DILocation(line: 509, column: 9, scope: !1702, inlinedAt: !1779)
!1830 = !DILocation(line: 509, column: 9, scope: !1642, inlinedAt: !1779)
!1831 = !DILocation(line: 509, column: 24, scope: !1702, inlinedAt: !1779)
!1832 = !DILocation(line: 348, column: 5, scope: !1124, inlinedAt: !1794)
!1833 = !DILocation(line: 349, column: 1, scope: !1124, inlinedAt: !1794)
!1834 = !DILocation(line: 511, column: 1, scope: !1642, inlinedAt: !1779)
!1835 = !DILocation(line: 543, column: 13, scope: !1781)
!1836 = !DILocation(line: 546, column: 18, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 546, column: 13)
!1838 = !DILocation(line: 546, column: 24, scope: !1837)
!1839 = !DILocation(line: 546, column: 13, scope: !1781)
!1840 = !DILocation(line: 550, column: 9, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 550, column: 9)
!1842 = !DILocation(line: 550, column: 35, scope: !1841)
!1843 = !DILocation(line: 550, column: 9, scope: !1764)
!1844 = !DILocation(line: 331, column: 55, scope: !1124, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 551, column: 9, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1841, file: !3, line: 550, column: 49)
!1847 = !DILocation(line: 144, column: 54, scope: !429, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 335, column: 5, scope: !1124, inlinedAt: !1845)
!1849 = !DILocation(line: 148, column: 19, scope: !429, inlinedAt: !1848)
!1850 = !DILocation(line: 149, column: 18, scope: !429, inlinedAt: !1848)
!1851 = !DILocation(line: 149, column: 9, scope: !429, inlinedAt: !1848)
!1852 = !DILocation(line: 149, column: 13, scope: !429, inlinedAt: !1848)
!1853 = !DILocation(line: 150, column: 18, scope: !429, inlinedAt: !1848)
!1854 = !DILocation(line: 150, column: 9, scope: !429, inlinedAt: !1848)
!1855 = !DILocation(line: 150, column: 16, scope: !429, inlinedAt: !1848)
!1856 = !DILocation(line: 151, column: 1, scope: !429, inlinedAt: !1848)
!1857 = !DILocation(line: 337, column: 17, scope: !1140, inlinedAt: !1845)
!1858 = !DILocation(line: 337, column: 9, scope: !1124, inlinedAt: !1845)
!1859 = !DILocation(line: 339, column: 9, scope: !1144, inlinedAt: !1845)
!1860 = !DILocation(line: 249, column: 52, scope: !842, inlinedAt: !1861)
!1861 = distinct !DILocation(line: 339, column: 9, scope: !1144, inlinedAt: !1845)
!1862 = !DILocation(line: 249, column: 73, scope: !842, inlinedAt: !1861)
!1863 = !DILocation(line: 250, column: 31, scope: !842, inlinedAt: !1861)
!1864 = !DILocation(line: 250, column: 20, scope: !842, inlinedAt: !1861)
!1865 = !DILocation(line: 251, column: 12, scope: !856, inlinedAt: !1861)
!1866 = !DILocation(line: 251, column: 9, scope: !842, inlinedAt: !1861)
!1867 = !DILocation(line: 263, column: 1, scope: !842, inlinedAt: !1861)
!1868 = !DILocation(line: 252, column: 26, scope: !859, inlinedAt: !1861)
!1869 = !DILocation(line: 252, column: 20, scope: !859, inlinedAt: !1861)
!1870 = !DILocation(line: 253, column: 25, scope: !864, inlinedAt: !1861)
!1871 = !DILocation(line: 253, column: 16, scope: !864, inlinedAt: !1861)
!1872 = !DILocation(line: 253, column: 13, scope: !859, inlinedAt: !1861)
!1873 = !DILocation(line: 254, column: 24, scope: !864, inlinedAt: !1861)
!1874 = !DILocation(line: 254, column: 13, scope: !864, inlinedAt: !1861)
!1875 = !DILocation(line: 259, column: 14, scope: !859, inlinedAt: !1861)
!1876 = !DILocation(line: 259, column: 9, scope: !859, inlinedAt: !1861)
!1877 = !DILocation(line: 332, column: 19, scope: !1124, inlinedAt: !1845)
!1878 = !DILocation(line: 343, column: 18, scope: !1151, inlinedAt: !1845)
!1879 = !DILocation(line: 348, column: 5, scope: !1124, inlinedAt: !1845)
!1880 = !DILocation(line: 349, column: 1, scope: !1124, inlinedAt: !1845)
!1881 = !DILocation(line: 552, column: 5, scope: !1846)
!1882 = !DILocation(line: 554, column: 14, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 554, column: 13)
!1884 = distinct !DILexicalBlock(scope: !1841, file: !3, line: 552, column: 12)
!1885 = !DILocation(line: 0, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 555, column: 13)
!1887 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 555, column: 13)
!1888 = !DILocation(line: 554, column: 13, scope: !1884)
!1889 = !DILocation(line: 555, column: 13, scope: !1886)
!1890 = !DILocation(line: 555, column: 13, scope: !1887)
!1891 = !DILocation(line: 557, column: 13, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !3, line: 557, column: 13)
!1893 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 557, column: 13)
!1894 = !{!320, !314, i64 264}
!1895 = !DILocation(line: 557, column: 13, scope: !1893)
!1896 = !DILocation(line: 560, column: 9, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !3, line: 560, column: 9)
!1898 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 560, column: 9)
!1899 = !DILocation(line: 560, column: 9, scope: !1898)
!1900 = !DILocation(line: 562, column: 1, scope: !1764)
!1901 = distinct !DISubprogram(name: "redisvAsyncCommand", scope: !3, file: !3, line: 650, type: !1902, isLocal: false, isDefinition: true, scopeLine: 650, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1911)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!18, !113, !241, !12, !273, !1904}
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 562, size: 192, elements: !1906)
!1906 = !{!1907, !1908, !1909, !1910}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1905, file: !3, line: 562, baseType: !7, size: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1905, file: !3, line: 562, baseType: !7, size: 32, offset: 32)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1905, file: !3, line: 562, baseType: !12, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1905, file: !3, line: 562, baseType: !12, size: 64, offset: 128)
!1911 = !{!1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919}
!1912 = !DILocalVariable(name: "ac", arg: 1, scope: !1901, file: !3, line: 650, type: !113)
!1913 = !DILocalVariable(name: "fn", arg: 2, scope: !1901, file: !3, line: 650, type: !241)
!1914 = !DILocalVariable(name: "privdata", arg: 3, scope: !1901, file: !3, line: 650, type: !12)
!1915 = !DILocalVariable(name: "format", arg: 4, scope: !1901, file: !3, line: 650, type: !273)
!1916 = !DILocalVariable(name: "ap", arg: 5, scope: !1901, file: !3, line: 650, type: !1904)
!1917 = !DILocalVariable(name: "cmd", scope: !1901, file: !3, line: 651, type: !28)
!1918 = !DILocalVariable(name: "len", scope: !1901, file: !3, line: 652, type: !18)
!1919 = !DILocalVariable(name: "status", scope: !1901, file: !3, line: 653, type: !18)
!1920 = !DILocation(line: 650, column: 43, scope: !1901)
!1921 = !DILocation(line: 650, column: 64, scope: !1901)
!1922 = !DILocation(line: 650, column: 74, scope: !1901)
!1923 = !DILocation(line: 650, column: 96, scope: !1901)
!1924 = !DILocation(line: 650, column: 112, scope: !1901)
!1925 = !DILocation(line: 651, column: 5, scope: !1901)
!1926 = !DILocation(line: 651, column: 11, scope: !1901)
!1927 = !DILocation(line: 654, column: 11, scope: !1901)
!1928 = !DILocation(line: 652, column: 9, scope: !1901)
!1929 = !DILocation(line: 657, column: 13, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 657, column: 9)
!1931 = !DILocation(line: 657, column: 9, scope: !1901)
!1932 = !DILocation(line: 660, column: 49, scope: !1901)
!1933 = !DILocation(line: 660, column: 53, scope: !1901)
!1934 = !DILocation(line: 660, column: 14, scope: !1901)
!1935 = !DILocation(line: 653, column: 9, scope: !1901)
!1936 = !DILocation(line: 661, column: 10, scope: !1901)
!1937 = !DILocation(line: 661, column: 5, scope: !1901)
!1938 = !DILocation(line: 662, column: 5, scope: !1901)
!1939 = !DILocation(line: 0, scope: !1901)
!1940 = !DILocation(line: 663, column: 1, scope: !1901)
!1941 = distinct !DISubprogram(name: "__redisAsyncCommand", scope: !3, file: !3, line: 583, type: !1942, isLocal: true, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1944)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!18, !113, !241, !12, !273, !22}
!1944 = !{!1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961}
!1945 = !DILocalVariable(name: "ac", arg: 1, scope: !1941, file: !3, line: 583, type: !113)
!1946 = !DILocalVariable(name: "fn", arg: 2, scope: !1941, file: !3, line: 583, type: !241)
!1947 = !DILocalVariable(name: "privdata", arg: 3, scope: !1941, file: !3, line: 583, type: !12)
!1948 = !DILocalVariable(name: "cmd", arg: 4, scope: !1941, file: !3, line: 583, type: !273)
!1949 = !DILocalVariable(name: "len", arg: 5, scope: !1941, file: !3, line: 583, type: !22)
!1950 = !DILocalVariable(name: "c", scope: !1941, file: !3, line: 584, type: !279)
!1951 = !DILocalVariable(name: "cb", scope: !1941, file: !3, line: 585, type: !235)
!1952 = !DILocalVariable(name: "pvariant", scope: !1941, file: !3, line: 586, type: !18)
!1953 = !DILocalVariable(name: "hasnext", scope: !1941, file: !3, line: 586, type: !18)
!1954 = !DILocalVariable(name: "cstr", scope: !1941, file: !3, line: 587, type: !273)
!1955 = !DILocalVariable(name: "astr", scope: !1941, file: !3, line: 587, type: !273)
!1956 = !DILocalVariable(name: "clen", scope: !1941, file: !3, line: 588, type: !22)
!1957 = !DILocalVariable(name: "alen", scope: !1941, file: !3, line: 588, type: !22)
!1958 = !DILocalVariable(name: "p", scope: !1941, file: !3, line: 589, type: !273)
!1959 = !DILocalVariable(name: "sname", scope: !1941, file: !3, line: 590, type: !37)
!1960 = !DILocalVariable(name: "ret", scope: !1941, file: !3, line: 591, type: !18)
!1961 = !DILocalVariable(name: "__x", scope: !1962, file: !3, line: 604, type: !274)
!1962 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 604, column: 17)
!1963 = !DILocation(line: 583, column: 51, scope: !1941)
!1964 = !DILocation(line: 583, column: 72, scope: !1941)
!1965 = !DILocation(line: 583, column: 82, scope: !1941)
!1966 = !DILocation(line: 583, column: 104, scope: !1941)
!1967 = !DILocation(line: 583, column: 116, scope: !1941)
!1968 = !DILocation(line: 584, column: 29, scope: !1941)
!1969 = !DILocation(line: 584, column: 19, scope: !1941)
!1970 = !DILocation(line: 585, column: 5, scope: !1941)
!1971 = !DILocation(line: 594, column: 12, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 594, column: 9)
!1973 = !DILocation(line: 594, column: 18, scope: !1972)
!1974 = !DILocation(line: 594, column: 9, scope: !1941)
!1975 = !DILocation(line: 597, column: 8, scope: !1941)
!1976 = !DILocation(line: 597, column: 11, scope: !1941)
!1977 = !DILocation(line: 598, column: 8, scope: !1941)
!1978 = !DILocation(line: 598, column: 17, scope: !1941)
!1979 = !DILocalVariable(name: "start", arg: 1, scope: !1980, file: !3, line: 566, type: !273)
!1980 = distinct !DISubprogram(name: "nextArgument", scope: !3, file: !3, line: 566, type: !1981, isLocal: true, isDefinition: true, scopeLine: 566, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1985)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!273, !273, !1983, !1984}
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!1985 = !{!1979, !1986, !1987, !1988}
!1986 = !DILocalVariable(name: "str", arg: 2, scope: !1980, file: !3, line: 566, type: !1983)
!1987 = !DILocalVariable(name: "len", arg: 3, scope: !1980, file: !3, line: 566, type: !1984)
!1988 = !DILocalVariable(name: "p", scope: !1980, file: !3, line: 567, type: !273)
!1989 = !DILocation(line: 566, column: 45, scope: !1980, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 601, column: 9, scope: !1941)
!1991 = !DILocation(line: 567, column: 17, scope: !1980, inlinedAt: !1990)
!1992 = !DILocation(line: 568, column: 9, scope: !1993, inlinedAt: !1990)
!1993 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 568, column: 9)
!1994 = !DILocation(line: 568, column: 14, scope: !1993, inlinedAt: !1990)
!1995 = !DILocation(line: 568, column: 9, scope: !1980, inlinedAt: !1990)
!1996 = !DILocation(line: 569, column: 13, scope: !1997, inlinedAt: !1990)
!1997 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 568, column: 22)
!1998 = !DILocation(line: 570, column: 15, scope: !1999, inlinedAt: !1990)
!1999 = distinct !DILexicalBlock(scope: !1997, file: !3, line: 570, column: 13)
!2000 = !DILocation(line: 570, column: 13, scope: !1997, inlinedAt: !1990)
!2001 = !DILocation(line: 0, scope: !1980, inlinedAt: !1990)
!2002 = !DILocation(line: 573, column: 25, scope: !1980, inlinedAt: !1990)
!2003 = !DILocation(line: 573, column: 17, scope: !1980, inlinedAt: !1990)
!2004 = !DILocation(line: 574, column: 9, scope: !1980, inlinedAt: !1990)
!2005 = !DILocation(line: 575, column: 5, scope: !1980, inlinedAt: !1990)
!2006 = !DILocation(line: 578, column: 1, scope: !1980, inlinedAt: !1990)
!2007 = !DILocation(line: 589, column: 17, scope: !1941)
!2008 = !DILocation(line: 602, column: 5, scope: !1941)
!2009 = !DILocation(line: 573, column: 12, scope: !1980, inlinedAt: !1990)
!2010 = !DILocation(line: 576, column: 13, scope: !1980, inlinedAt: !1990)
!2011 = !DILocation(line: 577, column: 15, scope: !1980, inlinedAt: !1990)
!2012 = !DILocation(line: 577, column: 22, scope: !1980, inlinedAt: !1990)
!2013 = !DILocation(line: 603, column: 16, scope: !1941)
!2014 = !DILocation(line: 603, column: 21, scope: !1941)
!2015 = !DILocation(line: 587, column: 17, scope: !1941)
!2016 = !DILocation(line: 604, column: 17, scope: !1962)
!2017 = !DILocation(line: 604, column: 34, scope: !1941)
!2018 = !DILocation(line: 605, column: 10, scope: !1941)
!2019 = !DILocation(line: 588, column: 12, scope: !1941)
!2020 = !DILocation(line: 608, column: 17, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 608, column: 9)
!2022 = !DILocation(line: 608, column: 20, scope: !2021)
!2023 = !DILocation(line: 608, column: 57, scope: !2021)
!2024 = !DILocation(line: 608, column: 9, scope: !1941)
!2025 = !DILocation(line: 609, column: 18, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2021, file: !3, line: 608, column: 63)
!2027 = !DILocation(line: 612, column: 9, scope: !2026)
!2028 = !DILocation(line: 0, scope: !2026)
!2029 = !DILocation(line: 566, column: 45, scope: !1980, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 612, column: 21, scope: !2026)
!2031 = !DILocation(line: 567, column: 17, scope: !1980, inlinedAt: !2030)
!2032 = !DILocation(line: 568, column: 9, scope: !1993, inlinedAt: !2030)
!2033 = !DILocation(line: 568, column: 14, scope: !1993, inlinedAt: !2030)
!2034 = !DILocation(line: 568, column: 9, scope: !1980, inlinedAt: !2030)
!2035 = !DILocation(line: 569, column: 13, scope: !1997, inlinedAt: !2030)
!2036 = !DILocation(line: 570, column: 15, scope: !1999, inlinedAt: !2030)
!2037 = !DILocation(line: 570, column: 13, scope: !1997, inlinedAt: !2030)
!2038 = !DILocation(line: 0, scope: !1980, inlinedAt: !2030)
!2039 = !DILocation(line: 573, column: 25, scope: !1980, inlinedAt: !2030)
!2040 = !DILocation(line: 573, column: 17, scope: !1980, inlinedAt: !2030)
!2041 = !DILocation(line: 573, column: 12, scope: !1980, inlinedAt: !2030)
!2042 = !DILocation(line: 574, column: 9, scope: !1980, inlinedAt: !2030)
!2043 = !DILocation(line: 575, column: 5, scope: !1980, inlinedAt: !2030)
!2044 = !DILocation(line: 576, column: 13, scope: !1980, inlinedAt: !2030)
!2045 = !DILocation(line: 577, column: 15, scope: !1980, inlinedAt: !2030)
!2046 = !DILocation(line: 577, column: 22, scope: !1980, inlinedAt: !2030)
!2047 = !DILocation(line: 578, column: 1, scope: !1980, inlinedAt: !2030)
!2048 = !DILocation(line: 587, column: 24, scope: !1941)
!2049 = !DILocation(line: 588, column: 18, scope: !1941)
!2050 = !DILocation(line: 613, column: 21, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 612, column: 59)
!2052 = !DILocation(line: 590, column: 9, scope: !1941)
!2053 = !DILocation(line: 591, column: 9, scope: !1941)
!2054 = !DILocation(line: 0, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2051, file: !3, line: 614, column: 17)
!2056 = !DILocation(line: 619, column: 21, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2051, file: !3, line: 619, column: 17)
!2058 = !DILocation(line: 619, column: 17, scope: !2051)
!2059 = !DILocation(line: 619, column: 27, scope: !2057)
!2060 = distinct !{!2060, !2027, !2061}
!2061 = !DILocation(line: 620, column: 9, scope: !2026)
!2062 = !DILocation(line: 621, column: 16, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2021, file: !3, line: 621, column: 16)
!2064 = !DILocation(line: 621, column: 55, scope: !2063)
!2065 = !DILocation(line: 621, column: 16, scope: !2021)
!2066 = !DILocation(line: 624, column: 18, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !3, line: 624, column: 13)
!2068 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 621, column: 61)
!2069 = !DILocation(line: 624, column: 24, scope: !2067)
!2070 = !DILocation(line: 624, column: 13, scope: !2068)
!2071 = !DILocation(line: 629, column: 16, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 629, column: 16)
!2073 = !DILocation(line: 629, column: 50, scope: !2072)
!2074 = !DILocation(line: 0, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !3, line: 634, column: 13)
!2076 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 633, column: 12)
!2077 = !DILocation(line: 629, column: 16, scope: !2063)
!2078 = !DILocation(line: 631, column: 19, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 629, column: 56)
!2080 = !DILocation(line: 632, column: 35, scope: !2079)
!2081 = !DILocation(line: 585, column: 19, scope: !1941)
!2082 = !DILocation(line: 227, column: 51, scope: !1253, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 632, column: 10, scope: !2079)
!2084 = !DILocation(line: 227, column: 72, scope: !1253, inlinedAt: !2083)
!2085 = !DILocation(line: 231, column: 10, scope: !1253, inlinedAt: !2083)
!2086 = !DILocation(line: 228, column: 20, scope: !1253, inlinedAt: !2083)
!2087 = !DILocation(line: 232, column: 12, scope: !1264, inlinedAt: !2083)
!2088 = !DILocation(line: 232, column: 9, scope: !1253, inlinedAt: !2083)
!2089 = !DILocation(line: 236, column: 9, scope: !1267, inlinedAt: !2083)
!2090 = !DILocation(line: 237, column: 13, scope: !1267, inlinedAt: !2083)
!2091 = !DILocation(line: 237, column: 18, scope: !1267, inlinedAt: !2083)
!2092 = !DILocation(line: 241, column: 15, scope: !1272, inlinedAt: !2083)
!2093 = !DILocation(line: 241, column: 20, scope: !1272, inlinedAt: !2083)
!2094 = !DILocation(line: 241, column: 9, scope: !1253, inlinedAt: !2083)
!2095 = !DILocation(line: 242, column: 20, scope: !1272, inlinedAt: !2083)
!2096 = !DILocation(line: 242, column: 9, scope: !1272, inlinedAt: !2083)
!2097 = !DILocation(line: 243, column: 15, scope: !1278, inlinedAt: !2083)
!2098 = !DILocation(line: 243, column: 20, scope: !1278, inlinedAt: !2083)
!2099 = !DILocation(line: 243, column: 9, scope: !1253, inlinedAt: !2083)
!2100 = !DILocation(line: 244, column: 26, scope: !1278, inlinedAt: !2083)
!2101 = !DILocation(line: 244, column: 9, scope: !1278, inlinedAt: !2083)
!2102 = !DILocation(line: 245, column: 16, scope: !1253, inlinedAt: !2083)
!2103 = !DILocation(line: 246, column: 5, scope: !1253, inlinedAt: !2083)
!2104 = !DILocation(line: 634, column: 22, scope: !2075)
!2105 = !DILocation(line: 634, column: 13, scope: !2076)
!2106 = !DILocation(line: 637, column: 42, scope: !2075)
!2107 = !DILocation(line: 227, column: 51, scope: !1253, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 637, column: 13, scope: !2075)
!2109 = !DILocation(line: 227, column: 72, scope: !1253, inlinedAt: !2108)
!2110 = !DILocation(line: 231, column: 10, scope: !1253, inlinedAt: !2108)
!2111 = !DILocation(line: 228, column: 20, scope: !1253, inlinedAt: !2108)
!2112 = !DILocation(line: 232, column: 12, scope: !1264, inlinedAt: !2108)
!2113 = !DILocation(line: 232, column: 9, scope: !1253, inlinedAt: !2108)
!2114 = !DILocation(line: 236, column: 9, scope: !1267, inlinedAt: !2108)
!2115 = !DILocation(line: 237, column: 13, scope: !1267, inlinedAt: !2108)
!2116 = !DILocation(line: 237, column: 18, scope: !1267, inlinedAt: !2108)
!2117 = !DILocation(line: 241, column: 15, scope: !1272, inlinedAt: !2108)
!2118 = !DILocation(line: 241, column: 20, scope: !1272, inlinedAt: !2108)
!2119 = !DILocation(line: 241, column: 9, scope: !1253, inlinedAt: !2108)
!2120 = !DILocation(line: 242, column: 20, scope: !1272, inlinedAt: !2108)
!2121 = !DILocation(line: 242, column: 9, scope: !1272, inlinedAt: !2108)
!2122 = !DILocation(line: 243, column: 15, scope: !1278, inlinedAt: !2108)
!2123 = !DILocation(line: 243, column: 20, scope: !1278, inlinedAt: !2108)
!2124 = !DILocation(line: 243, column: 9, scope: !1253, inlinedAt: !2108)
!2125 = !DILocation(line: 244, column: 26, scope: !1278, inlinedAt: !2108)
!2126 = !DILocation(line: 244, column: 9, scope: !1278, inlinedAt: !2108)
!2127 = !DILocation(line: 245, column: 16, scope: !1253, inlinedAt: !2108)
!2128 = !DILocation(line: 246, column: 5, scope: !1253, inlinedAt: !2108)
!2129 = !DILocation(line: 639, column: 38, scope: !2075)
!2130 = !DILocation(line: 227, column: 51, scope: !1253, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 639, column: 13, scope: !2075)
!2132 = !DILocation(line: 227, column: 72, scope: !1253, inlinedAt: !2131)
!2133 = !DILocation(line: 231, column: 10, scope: !1253, inlinedAt: !2131)
!2134 = !DILocation(line: 228, column: 20, scope: !1253, inlinedAt: !2131)
!2135 = !DILocation(line: 232, column: 12, scope: !1264, inlinedAt: !2131)
!2136 = !DILocation(line: 232, column: 9, scope: !1253, inlinedAt: !2131)
!2137 = !DILocation(line: 236, column: 9, scope: !1267, inlinedAt: !2131)
!2138 = !DILocation(line: 237, column: 13, scope: !1267, inlinedAt: !2131)
!2139 = !DILocation(line: 237, column: 18, scope: !1267, inlinedAt: !2131)
!2140 = !DILocation(line: 241, column: 15, scope: !1272, inlinedAt: !2131)
!2141 = !DILocation(line: 241, column: 20, scope: !1272, inlinedAt: !2131)
!2142 = !DILocation(line: 241, column: 9, scope: !1253, inlinedAt: !2131)
!2143 = !DILocation(line: 242, column: 20, scope: !1272, inlinedAt: !2131)
!2144 = !DILocation(line: 242, column: 9, scope: !1272, inlinedAt: !2131)
!2145 = !DILocation(line: 243, column: 15, scope: !1278, inlinedAt: !2131)
!2146 = !DILocation(line: 243, column: 20, scope: !1278, inlinedAt: !2131)
!2147 = !DILocation(line: 243, column: 9, scope: !1253, inlinedAt: !2131)
!2148 = !DILocation(line: 244, column: 26, scope: !1278, inlinedAt: !2131)
!2149 = !DILocation(line: 244, column: 9, scope: !1278, inlinedAt: !2131)
!2150 = !DILocation(line: 245, column: 16, scope: !1253, inlinedAt: !2131)
!2151 = !DILocation(line: 246, column: 5, scope: !1253, inlinedAt: !2131)
!2152 = !DILocation(line: 0, scope: !2079)
!2153 = !DILocation(line: 642, column: 5, scope: !1941)
!2154 = !DILocation(line: 645, column: 5, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 645, column: 5)
!2156 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 645, column: 5)
!2157 = !DILocation(line: 645, column: 5, scope: !2156)
!2158 = !DILocation(line: 0, scope: !2067)
!2159 = !DILocation(line: 648, column: 1, scope: !1941)
!2160 = distinct !DISubprogram(name: "redisAsyncCommand", scope: !3, file: !3, line: 665, type: !2161, isLocal: false, isDefinition: true, scopeLine: 665, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2163)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!18, !113, !241, !12, !273, null}
!2163 = !{!2164, !2165, !2166, !2167, !2168, !2177}
!2164 = !DILocalVariable(name: "ac", arg: 1, scope: !2160, file: !3, line: 665, type: !113)
!2165 = !DILocalVariable(name: "fn", arg: 2, scope: !2160, file: !3, line: 665, type: !241)
!2166 = !DILocalVariable(name: "privdata", arg: 3, scope: !2160, file: !3, line: 665, type: !12)
!2167 = !DILocalVariable(name: "format", arg: 4, scope: !2160, file: !3, line: 665, type: !273)
!2168 = !DILocalVariable(name: "ap", scope: !2160, file: !3, line: 666, type: !2169)
!2169 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2170, line: 46, baseType: !2171)
!2170 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2172, line: 51, baseType: !2173)
!2172 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!2173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 666, baseType: !2174)
!2174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1905, size: 192, elements: !2175)
!2175 = !{!2176}
!2176 = !DISubrange(count: 1)
!2177 = !DILocalVariable(name: "status", scope: !2160, file: !3, line: 667, type: !18)
!2178 = !DILocation(line: 665, column: 42, scope: !2160)
!2179 = !DILocation(line: 665, column: 63, scope: !2160)
!2180 = !DILocation(line: 665, column: 73, scope: !2160)
!2181 = !DILocation(line: 665, column: 95, scope: !2160)
!2182 = !DILocation(line: 666, column: 5, scope: !2160)
!2183 = !DILocation(line: 666, column: 13, scope: !2160)
!2184 = !DILocation(line: 668, column: 5, scope: !2160)
!2185 = !DILocation(line: 650, column: 43, scope: !1901, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 669, column: 14, scope: !2160)
!2187 = !DILocation(line: 650, column: 64, scope: !1901, inlinedAt: !2186)
!2188 = !DILocation(line: 650, column: 74, scope: !1901, inlinedAt: !2186)
!2189 = !DILocation(line: 650, column: 96, scope: !1901, inlinedAt: !2186)
!2190 = !DILocation(line: 650, column: 112, scope: !1901, inlinedAt: !2186)
!2191 = !DILocation(line: 651, column: 5, scope: !1901, inlinedAt: !2186)
!2192 = !DILocation(line: 651, column: 11, scope: !1901, inlinedAt: !2186)
!2193 = !DILocation(line: 654, column: 11, scope: !1901, inlinedAt: !2186)
!2194 = !DILocation(line: 652, column: 9, scope: !1901, inlinedAt: !2186)
!2195 = !DILocation(line: 657, column: 13, scope: !1930, inlinedAt: !2186)
!2196 = !DILocation(line: 657, column: 9, scope: !1901, inlinedAt: !2186)
!2197 = !DILocation(line: 660, column: 49, scope: !1901, inlinedAt: !2186)
!2198 = !DILocation(line: 660, column: 53, scope: !1901, inlinedAt: !2186)
!2199 = !DILocation(line: 660, column: 14, scope: !1901, inlinedAt: !2186)
!2200 = !DILocation(line: 653, column: 9, scope: !1901, inlinedAt: !2186)
!2201 = !DILocation(line: 661, column: 10, scope: !1901, inlinedAt: !2186)
!2202 = !DILocation(line: 661, column: 5, scope: !1901, inlinedAt: !2186)
!2203 = !DILocation(line: 662, column: 5, scope: !1901, inlinedAt: !2186)
!2204 = !DILocation(line: 0, scope: !1901, inlinedAt: !2186)
!2205 = !DILocation(line: 663, column: 1, scope: !1901, inlinedAt: !2186)
!2206 = !DILocation(line: 667, column: 9, scope: !2160)
!2207 = !DILocation(line: 670, column: 5, scope: !2160)
!2208 = !DILocation(line: 672, column: 1, scope: !2160)
!2209 = !DILocation(line: 671, column: 5, scope: !2160)
!2210 = distinct !DISubprogram(name: "redisAsyncCommandArgv", scope: !3, file: !3, line: 674, type: !2211, isLocal: false, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2215)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!18, !113, !241, !12, !18, !1983, !2213}
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!2215 = !{!2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224}
!2216 = !DILocalVariable(name: "ac", arg: 1, scope: !2210, file: !3, line: 674, type: !113)
!2217 = !DILocalVariable(name: "fn", arg: 2, scope: !2210, file: !3, line: 674, type: !241)
!2218 = !DILocalVariable(name: "privdata", arg: 3, scope: !2210, file: !3, line: 674, type: !12)
!2219 = !DILocalVariable(name: "argc", arg: 4, scope: !2210, file: !3, line: 674, type: !18)
!2220 = !DILocalVariable(name: "argv", arg: 5, scope: !2210, file: !3, line: 674, type: !1983)
!2221 = !DILocalVariable(name: "argvlen", arg: 6, scope: !2210, file: !3, line: 674, type: !2213)
!2222 = !DILocalVariable(name: "cmd", scope: !2210, file: !3, line: 675, type: !37)
!2223 = !DILocalVariable(name: "len", scope: !2210, file: !3, line: 676, type: !18)
!2224 = !DILocalVariable(name: "status", scope: !2210, file: !3, line: 677, type: !18)
!2225 = !DILocation(line: 674, column: 46, scope: !2210)
!2226 = !DILocation(line: 674, column: 67, scope: !2210)
!2227 = !DILocation(line: 674, column: 77, scope: !2210)
!2228 = !DILocation(line: 674, column: 91, scope: !2210)
!2229 = !DILocation(line: 674, column: 110, scope: !2210)
!2230 = !DILocation(line: 674, column: 130, scope: !2210)
!2231 = !DILocation(line: 675, column: 5, scope: !2210)
!2232 = !DILocation(line: 675, column: 9, scope: !2210)
!2233 = !DILocation(line: 678, column: 11, scope: !2210)
!2234 = !DILocation(line: 676, column: 9, scope: !2210)
!2235 = !DILocation(line: 679, column: 49, scope: !2210)
!2236 = !DILocation(line: 679, column: 53, scope: !2210)
!2237 = !DILocation(line: 679, column: 14, scope: !2210)
!2238 = !DILocation(line: 677, column: 9, scope: !2210)
!2239 = !DILocation(line: 680, column: 13, scope: !2210)
!2240 = !DILocation(line: 680, column: 5, scope: !2210)
!2241 = !DILocation(line: 682, column: 1, scope: !2210)
!2242 = !DILocation(line: 681, column: 5, scope: !2210)
!2243 = distinct !DISubprogram(name: "redisAsyncFormattedCommand", scope: !3, file: !3, line: 684, type: !1942, isLocal: false, isDefinition: true, scopeLine: 684, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2244)
!2244 = !{!2245, !2246, !2247, !2248, !2249, !2250}
!2245 = !DILocalVariable(name: "ac", arg: 1, scope: !2243, file: !3, line: 684, type: !113)
!2246 = !DILocalVariable(name: "fn", arg: 2, scope: !2243, file: !3, line: 684, type: !241)
!2247 = !DILocalVariable(name: "privdata", arg: 3, scope: !2243, file: !3, line: 684, type: !12)
!2248 = !DILocalVariable(name: "cmd", arg: 4, scope: !2243, file: !3, line: 684, type: !273)
!2249 = !DILocalVariable(name: "len", arg: 5, scope: !2243, file: !3, line: 684, type: !22)
!2250 = !DILocalVariable(name: "status", scope: !2243, file: !3, line: 685, type: !18)
!2251 = !DILocation(line: 684, column: 51, scope: !2243)
!2252 = !DILocation(line: 684, column: 72, scope: !2243)
!2253 = !DILocation(line: 684, column: 82, scope: !2243)
!2254 = !DILocation(line: 684, column: 104, scope: !2243)
!2255 = !DILocation(line: 684, column: 116, scope: !2243)
!2256 = !DILocation(line: 685, column: 18, scope: !2243)
!2257 = !DILocation(line: 685, column: 9, scope: !2243)
!2258 = !DILocation(line: 686, column: 5, scope: !2243)
!2259 = distinct !DISubprogram(name: "callbackHash", scope: !3, file: !3, line: 64, type: !88, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2260)
!2260 = !{!2261}
!2261 = !DILocalVariable(name: "key", arg: 1, scope: !2259, file: !3, line: 64, type: !90)
!2262 = !DILocation(line: 64, column: 46, scope: !2259)
!2263 = !DILocation(line: 86, column: 39, scope: !1186, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 66, column: 32, scope: !2259)
!2265 = !DILocation(line: 87, column: 27, scope: !1186, inlinedAt: !2264)
!2266 = !DILocation(line: 87, column: 19, scope: !1186, inlinedAt: !2264)
!2267 = !DILocation(line: 88, column: 5, scope: !1186, inlinedAt: !2264)
!2268 = !DILocation(line: 101, column: 1, scope: !1186, inlinedAt: !2264)
!2269 = !DILocalVariable(name: "buf", arg: 1, scope: !2270, file: !346, line: 53, type: !34)
!2270 = distinct !DISubprogram(name: "dictGenHashFunction", scope: !346, file: !346, line: 53, type: !2271, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2273)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!7, !34, !18}
!2273 = !{!2269, !2274, !2275}
!2274 = !DILocalVariable(name: "len", arg: 2, scope: !2270, file: !346, line: 53, type: !18)
!2275 = !DILocalVariable(name: "hash", scope: !2270, file: !346, line: 54, type: !7)
!2276 = !DILocation(line: 53, column: 62, scope: !2270, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 65, column: 12, scope: !2259)
!2278 = !DILocation(line: 53, column: 71, scope: !2270, inlinedAt: !2277)
!2279 = !DILocation(line: 54, column: 18, scope: !2270, inlinedAt: !2277)
!2280 = !DILocation(line: 56, column: 5, scope: !2270, inlinedAt: !2277)
!2281 = !DILocation(line: 90, column: 20, scope: !1201, inlinedAt: !2264)
!2282 = !DILocation(line: 90, column: 13, scope: !1201, inlinedAt: !2264)
!2283 = !DILocation(line: 92, column: 20, scope: !1201, inlinedAt: !2264)
!2284 = !DILocation(line: 92, column: 34, scope: !1201, inlinedAt: !2264)
!2285 = !DILocation(line: 92, column: 13, scope: !1201, inlinedAt: !2264)
!2286 = !DILocation(line: 94, column: 20, scope: !1201, inlinedAt: !2264)
!2287 = !DILocation(line: 94, column: 35, scope: !1201, inlinedAt: !2264)
!2288 = !DILocation(line: 94, column: 13, scope: !1201, inlinedAt: !2264)
!2289 = !DILocation(line: 96, column: 20, scope: !1201, inlinedAt: !2264)
!2290 = !DILocation(line: 96, column: 35, scope: !1201, inlinedAt: !2264)
!2291 = !DILocation(line: 96, column: 13, scope: !1201, inlinedAt: !2264)
!2292 = !DILocation(line: 98, column: 20, scope: !1201, inlinedAt: !2264)
!2293 = !DILocation(line: 98, column: 35, scope: !1201, inlinedAt: !2264)
!2294 = !DILocation(line: 98, column: 13, scope: !1201, inlinedAt: !2264)
!2295 = !DILocation(line: 0, scope: !1201, inlinedAt: !2264)
!2296 = !DILocation(line: 66, column: 32, scope: !2259)
!2297 = !DILocation(line: 56, column: 15, scope: !2270, inlinedAt: !2277)
!2298 = !DILocation(line: 57, column: 29, scope: !2270, inlinedAt: !2277)
!2299 = !DILocation(line: 57, column: 44, scope: !2270, inlinedAt: !2277)
!2300 = !DILocation(line: 57, column: 40, scope: !2270, inlinedAt: !2277)
!2301 = !DILocation(line: 57, column: 39, scope: !2270, inlinedAt: !2277)
!2302 = !DILocation(line: 57, column: 37, scope: !2270, inlinedAt: !2277)
!2303 = distinct !{!2303, !2304, !2305}
!2304 = !DILocation(line: 56, column: 5, scope: !2270)
!2305 = !DILocation(line: 57, column: 46, scope: !2270)
!2306 = distinct !{!2306, !2307}
!2307 = !{!"llvm.loop.unroll.disable"}
!2308 = !DILocation(line: 0, scope: !2270, inlinedAt: !2277)
!2309 = !DILocation(line: 58, column: 5, scope: !2270, inlinedAt: !2277)
!2310 = !DILocation(line: 65, column: 5, scope: !2259)
!2311 = distinct !DISubprogram(name: "callbackValDup", scope: !3, file: !3, line: 69, type: !94, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2312)
!2312 = !{!2313, !2314, !2315}
!2313 = !DILocalVariable(name: "privdata", arg: 1, scope: !2311, file: !3, line: 69, type: !12)
!2314 = !DILocalVariable(name: "src", arg: 2, scope: !2311, file: !3, line: 69, type: !90)
!2315 = !DILocalVariable(name: "dup", scope: !2311, file: !3, line: 71, type: !234)
!2316 = !DILocation(line: 69, column: 35, scope: !2311)
!2317 = !DILocation(line: 69, column: 57, scope: !2311)
!2318 = !DILocation(line: 71, column: 26, scope: !2311)
!2319 = !DILocation(line: 71, column: 20, scope: !2311)
!2320 = !DILocation(line: 72, column: 5, scope: !2311)
!2321 = !DILocation(line: 73, column: 5, scope: !2311)
!2322 = distinct !DISubprogram(name: "callbackKeyCompare", scope: !3, file: !3, line: 76, type: !99, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2323)
!2323 = !{!2324, !2325, !2326, !2327, !2328}
!2324 = !DILocalVariable(name: "privdata", arg: 1, scope: !2322, file: !3, line: 76, type: !12)
!2325 = !DILocalVariable(name: "key1", arg: 2, scope: !2322, file: !3, line: 76, type: !90)
!2326 = !DILocalVariable(name: "key2", arg: 3, scope: !2322, file: !3, line: 76, type: !90)
!2327 = !DILocalVariable(name: "l1", scope: !2322, file: !3, line: 77, type: !18)
!2328 = !DILocalVariable(name: "l2", scope: !2322, file: !3, line: 77, type: !18)
!2329 = !DILocation(line: 76, column: 37, scope: !2322)
!2330 = !DILocation(line: 76, column: 59, scope: !2322)
!2331 = !DILocation(line: 76, column: 77, scope: !2322)
!2332 = !DILocation(line: 86, column: 39, scope: !1186, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 80, column: 10, scope: !2322)
!2334 = !DILocation(line: 87, column: 27, scope: !1186, inlinedAt: !2333)
!2335 = !DILocation(line: 87, column: 19, scope: !1186, inlinedAt: !2333)
!2336 = !DILocation(line: 88, column: 5, scope: !1186, inlinedAt: !2333)
!2337 = !DILocation(line: 90, column: 20, scope: !1201, inlinedAt: !2333)
!2338 = !DILocation(line: 90, column: 13, scope: !1201, inlinedAt: !2333)
!2339 = !DILocation(line: 92, column: 20, scope: !1201, inlinedAt: !2333)
!2340 = !DILocation(line: 92, column: 34, scope: !1201, inlinedAt: !2333)
!2341 = !DILocation(line: 92, column: 13, scope: !1201, inlinedAt: !2333)
!2342 = !DILocation(line: 94, column: 20, scope: !1201, inlinedAt: !2333)
!2343 = !DILocation(line: 94, column: 35, scope: !1201, inlinedAt: !2333)
!2344 = !DILocation(line: 94, column: 13, scope: !1201, inlinedAt: !2333)
!2345 = !DILocation(line: 96, column: 20, scope: !1201, inlinedAt: !2333)
!2346 = !DILocation(line: 96, column: 35, scope: !1201, inlinedAt: !2333)
!2347 = !DILocation(line: 96, column: 13, scope: !1201, inlinedAt: !2333)
!2348 = !DILocation(line: 98, column: 20, scope: !1201, inlinedAt: !2333)
!2349 = !DILocation(line: 98, column: 35, scope: !1201, inlinedAt: !2333)
!2350 = !DILocation(line: 98, column: 13, scope: !1201, inlinedAt: !2333)
!2351 = !DILocation(line: 0, scope: !1201, inlinedAt: !2333)
!2352 = !DILocation(line: 101, column: 1, scope: !1186, inlinedAt: !2333)
!2353 = !DILocation(line: 80, column: 10, scope: !2322)
!2354 = !DILocation(line: 77, column: 9, scope: !2322)
!2355 = !DILocation(line: 86, column: 39, scope: !1186, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 81, column: 10, scope: !2322)
!2357 = !DILocation(line: 87, column: 27, scope: !1186, inlinedAt: !2356)
!2358 = !DILocation(line: 87, column: 19, scope: !1186, inlinedAt: !2356)
!2359 = !DILocation(line: 88, column: 5, scope: !1186, inlinedAt: !2356)
!2360 = !DILocation(line: 90, column: 20, scope: !1201, inlinedAt: !2356)
!2361 = !DILocation(line: 90, column: 13, scope: !1201, inlinedAt: !2356)
!2362 = !DILocation(line: 92, column: 20, scope: !1201, inlinedAt: !2356)
!2363 = !DILocation(line: 92, column: 34, scope: !1201, inlinedAt: !2356)
!2364 = !DILocation(line: 92, column: 13, scope: !1201, inlinedAt: !2356)
!2365 = !DILocation(line: 94, column: 20, scope: !1201, inlinedAt: !2356)
!2366 = !DILocation(line: 94, column: 35, scope: !1201, inlinedAt: !2356)
!2367 = !DILocation(line: 94, column: 13, scope: !1201, inlinedAt: !2356)
!2368 = !DILocation(line: 96, column: 20, scope: !1201, inlinedAt: !2356)
!2369 = !DILocation(line: 96, column: 35, scope: !1201, inlinedAt: !2356)
!2370 = !DILocation(line: 96, column: 13, scope: !1201, inlinedAt: !2356)
!2371 = !DILocation(line: 98, column: 20, scope: !1201, inlinedAt: !2356)
!2372 = !DILocation(line: 98, column: 35, scope: !1201, inlinedAt: !2356)
!2373 = !DILocation(line: 98, column: 13, scope: !1201, inlinedAt: !2356)
!2374 = !DILocation(line: 0, scope: !1201, inlinedAt: !2356)
!2375 = !DILocation(line: 101, column: 1, scope: !1186, inlinedAt: !2356)
!2376 = !DILocation(line: 81, column: 10, scope: !2322)
!2377 = !DILocation(line: 77, column: 13, scope: !2322)
!2378 = !DILocation(line: 82, column: 12, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2322, file: !3, line: 82, column: 9)
!2380 = !DILocation(line: 82, column: 9, scope: !2322)
!2381 = !DILocation(line: 83, column: 29, scope: !2322)
!2382 = !DILocation(line: 83, column: 12, scope: !2322)
!2383 = !DILocation(line: 83, column: 33, scope: !2322)
!2384 = !DILocation(line: 83, column: 5, scope: !2322)
!2385 = !DILocation(line: 0, scope: !2322)
!2386 = !DILocation(line: 84, column: 1, scope: !2322)
!2387 = distinct !DISubprogram(name: "callbackKeyDestructor", scope: !3, file: !3, line: 86, type: !103, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2388)
!2388 = !{!2389, !2390}
!2389 = !DILocalVariable(name: "privdata", arg: 1, scope: !2387, file: !3, line: 86, type: !12)
!2390 = !DILocalVariable(name: "key", arg: 2, scope: !2387, file: !3, line: 86, type: !12)
!2391 = !DILocation(line: 86, column: 41, scope: !2387)
!2392 = !DILocation(line: 86, column: 57, scope: !2387)
!2393 = !DILocation(line: 88, column: 5, scope: !2387)
!2394 = !DILocation(line: 89, column: 1, scope: !2387)
!2395 = distinct !DISubprogram(name: "callbackValDestructor", scope: !3, file: !3, line: 91, type: !103, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2396)
!2396 = !{!2397, !2398}
!2397 = !DILocalVariable(name: "privdata", arg: 1, scope: !2395, file: !3, line: 91, type: !12)
!2398 = !DILocalVariable(name: "val", arg: 2, scope: !2395, file: !3, line: 91, type: !12)
!2399 = !DILocation(line: 91, column: 41, scope: !2395)
!2400 = !DILocation(line: 91, column: 57, scope: !2395)
!2401 = !DILocation(line: 93, column: 5, scope: !2395)
!2402 = !DILocation(line: 94, column: 1, scope: !2395)
!2403 = distinct !DISubprogram(name: "dictRelease", scope: !346, file: !346, line: 238, type: !372, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2404)
!2404 = !{!2405}
!2405 = !DILocalVariable(name: "ht", arg: 1, scope: !2403, file: !346, line: 238, type: !349)
!2406 = !DILocation(line: 238, column: 31, scope: !2403)
!2407 = !DILocalVariable(name: "ht", arg: 1, scope: !2408, file: !346, line: 213, type: !349)
!2408 = distinct !DISubprogram(name: "_dictClear", scope: !346, file: !346, line: 213, type: !2409, isLocal: true, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2411)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!18, !349}
!2411 = !{!2407, !2412, !2413, !2417}
!2412 = !DILocalVariable(name: "i", scope: !2408, file: !346, line: 214, type: !26)
!2413 = !DILocalVariable(name: "he", scope: !2414, file: !346, line: 218, type: !258)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !346, line: 217, column: 52)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !346, line: 217, column: 5)
!2416 = distinct !DILexicalBlock(scope: !2408, file: !346, line: 217, column: 5)
!2417 = !DILocalVariable(name: "nextHe", scope: !2414, file: !346, line: 218, type: !258)
!2418 = !DILocation(line: 213, column: 29, scope: !2408, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 239, column: 5, scope: !2403)
!2420 = !DILocation(line: 214, column: 19, scope: !2408, inlinedAt: !2419)
!2421 = !DILocation(line: 217, column: 37, scope: !2415, inlinedAt: !2419)
!2422 = !DILocation(line: 217, column: 25, scope: !2415, inlinedAt: !2419)
!2423 = !DILocation(line: 217, column: 19, scope: !2415, inlinedAt: !2419)
!2424 = !DILocation(line: 217, column: 30, scope: !2415, inlinedAt: !2419)
!2425 = !DILocation(line: 217, column: 42, scope: !2415, inlinedAt: !2419)
!2426 = !DILocation(line: 217, column: 5, scope: !2416, inlinedAt: !2419)
!2427 = !DILocation(line: 220, column: 23, scope: !2428, inlinedAt: !2419)
!2428 = distinct !DILexicalBlock(scope: !2414, file: !346, line: 220, column: 13)
!2429 = !DILocation(line: 220, column: 19, scope: !2428, inlinedAt: !2419)
!2430 = !DILocation(line: 218, column: 20, scope: !2414, inlinedAt: !2419)
!2431 = !DILocation(line: 220, column: 33, scope: !2428, inlinedAt: !2419)
!2432 = !DILocation(line: 220, column: 13, scope: !2414, inlinedAt: !2419)
!2433 = !DILocation(line: 222, column: 26, scope: !2434, inlinedAt: !2419)
!2434 = distinct !DILexicalBlock(scope: !2414, file: !346, line: 221, column: 19)
!2435 = !DILocation(line: 218, column: 25, scope: !2414, inlinedAt: !2419)
!2436 = !DILocation(line: 223, column: 13, scope: !2437, inlinedAt: !2419)
!2437 = distinct !DILexicalBlock(scope: !2434, file: !346, line: 223, column: 13)
!2438 = !DILocation(line: 223, column: 13, scope: !2434, inlinedAt: !2419)
!2439 = !DILocation(line: 224, column: 13, scope: !2440, inlinedAt: !2419)
!2440 = distinct !DILexicalBlock(scope: !2434, file: !346, line: 224, column: 13)
!2441 = !DILocation(line: 224, column: 13, scope: !2434, inlinedAt: !2419)
!2442 = !DILocation(line: 225, column: 18, scope: !2434, inlinedAt: !2419)
!2443 = !DILocation(line: 225, column: 13, scope: !2434, inlinedAt: !2419)
!2444 = !DILocation(line: 226, column: 21, scope: !2434, inlinedAt: !2419)
!2445 = !DILocation(line: 221, column: 9, scope: !2414, inlinedAt: !2419)
!2446 = distinct !{!2446, !2447, !2448}
!2447 = !DILocation(line: 221, column: 9, scope: !2414)
!2448 = !DILocation(line: 228, column: 9, scope: !2414)
!2449 = !DILocation(line: 217, column: 48, scope: !2415, inlinedAt: !2419)
!2450 = distinct !{!2450, !2451, !2452}
!2451 = !DILocation(line: 217, column: 5, scope: !2416)
!2452 = !DILocation(line: 229, column: 5, scope: !2416)
!2453 = !DILocation(line: 231, column: 14, scope: !2408, inlinedAt: !2419)
!2454 = !DILocation(line: 231, column: 5, scope: !2408, inlinedAt: !2419)
!2455 = !DILocation(line: 65, column: 30, scope: !371, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 233, column: 5, scope: !2408, inlinedAt: !2419)
!2457 = !DILocation(line: 66, column: 15, scope: !371, inlinedAt: !2456)
!2458 = !DILocation(line: 67, column: 14, scope: !371, inlinedAt: !2456)
!2459 = !DILocation(line: 69, column: 14, scope: !371, inlinedAt: !2456)
!2460 = !DILocation(line: 70, column: 1, scope: !371, inlinedAt: !2456)
!2461 = !DILocation(line: 234, column: 5, scope: !2408, inlinedAt: !2419)
!2462 = !DILocation(line: 240, column: 10, scope: !2403)
!2463 = !DILocation(line: 240, column: 5, scope: !2403)
!2464 = !DILocation(line: 241, column: 1, scope: !2403)
!2465 = distinct !DISubprogram(name: "dictReplace", scope: !346, file: !346, line: 160, type: !2466, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!18, !349, !12, !12}
!2468 = !{!2469, !2470, !2471, !2472, !2473}
!2469 = !DILocalVariable(name: "ht", arg: 1, scope: !2465, file: !346, line: 160, type: !349)
!2470 = !DILocalVariable(name: "key", arg: 2, scope: !2465, file: !346, line: 160, type: !12)
!2471 = !DILocalVariable(name: "val", arg: 3, scope: !2465, file: !346, line: 160, type: !12)
!2472 = !DILocalVariable(name: "entry", scope: !2465, file: !346, line: 161, type: !258)
!2473 = !DILocalVariable(name: "auxentry", scope: !2465, file: !346, line: 161, type: !259)
!2474 = !DILocation(line: 160, column: 30, scope: !2465)
!2475 = !DILocation(line: 160, column: 40, scope: !2465)
!2476 = !DILocation(line: 160, column: 51, scope: !2465)
!2477 = !DILocalVariable(name: "ht", arg: 1, scope: !2478, file: !346, line: 135, type: !349)
!2478 = distinct !DISubprogram(name: "dictAdd", scope: !346, file: !346, line: 135, type: !2466, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2479)
!2479 = !{!2477, !2480, !2481, !2482, !2483}
!2480 = !DILocalVariable(name: "key", arg: 2, scope: !2478, file: !346, line: 135, type: !12)
!2481 = !DILocalVariable(name: "val", arg: 3, scope: !2478, file: !346, line: 135, type: !12)
!2482 = !DILocalVariable(name: "index", scope: !2478, file: !346, line: 136, type: !18)
!2483 = !DILocalVariable(name: "entry", scope: !2478, file: !346, line: 137, type: !258)
!2484 = !DILocation(line: 135, column: 26, scope: !2478, inlinedAt: !2485)
!2485 = distinct !DILocation(line: 165, column: 9, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2465, file: !346, line: 165, column: 9)
!2487 = !DILocation(line: 135, column: 36, scope: !2478, inlinedAt: !2485)
!2488 = !DILocation(line: 135, column: 47, scope: !2478, inlinedAt: !2485)
!2489 = !DILocalVariable(name: "ht", arg: 1, scope: !2490, file: !346, line: 320, type: !349)
!2490 = distinct !DISubprogram(name: "_dictKeyIndex", scope: !346, file: !346, line: 320, type: !1463, isLocal: true, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2491)
!2491 = !{!2489, !2492, !2493, !2494}
!2492 = !DILocalVariable(name: "key", arg: 2, scope: !2490, file: !346, line: 320, type: !90)
!2493 = !DILocalVariable(name: "h", scope: !2490, file: !346, line: 321, type: !7)
!2494 = !DILocalVariable(name: "he", scope: !2490, file: !346, line: 322, type: !258)
!2495 = !DILocation(line: 320, column: 32, scope: !2490, inlinedAt: !2496)
!2496 = distinct !DILocation(line: 141, column: 18, scope: !2497, inlinedAt: !2485)
!2497 = distinct !DILexicalBlock(scope: !2478, file: !346, line: 141, column: 9)
!2498 = !DILocation(line: 320, column: 48, scope: !2490, inlinedAt: !2496)
!2499 = !DILocalVariable(name: "ht", arg: 1, scope: !2500, file: !346, line: 295, type: !349)
!2500 = distinct !DISubprogram(name: "_dictExpandIfNeeded", scope: !346, file: !346, line: 295, type: !2409, isLocal: true, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2501)
!2501 = !{!2499}
!2502 = !DILocation(line: 295, column: 38, scope: !2500, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 325, column: 9, scope: !2504, inlinedAt: !2496)
!2504 = distinct !DILexicalBlock(scope: !2490, file: !346, line: 325, column: 9)
!2505 = !DILocation(line: 298, column: 13, scope: !2506, inlinedAt: !2503)
!2506 = distinct !DILexicalBlock(scope: !2500, file: !346, line: 298, column: 9)
!2507 = !DILocation(line: 298, column: 18, scope: !2506, inlinedAt: !2503)
!2508 = !DILocation(line: 298, column: 9, scope: !2500, inlinedAt: !2503)
!2509 = !DILocation(line: 300, column: 13, scope: !2510, inlinedAt: !2503)
!2510 = distinct !DILexicalBlock(scope: !2500, file: !346, line: 300, column: 9)
!2511 = !DILocation(line: 300, column: 18, scope: !2510, inlinedAt: !2503)
!2512 = !DILocation(line: 300, column: 9, scope: !2500, inlinedAt: !2503)
!2513 = !DILocation(line: 303, column: 1, scope: !2500, inlinedAt: !2503)
!2514 = !DILocation(line: 325, column: 9, scope: !2490, inlinedAt: !2496)
!2515 = !DILocation(line: 301, column: 39, scope: !2510, inlinedAt: !2503)
!2516 = !DILocation(line: 301, column: 9, scope: !2510, inlinedAt: !2503)
!2517 = !DILocation(line: 0, scope: !2504, inlinedAt: !2496)
!2518 = !DILocation(line: 325, column: 33, scope: !2504, inlinedAt: !2496)
!2519 = !DILocation(line: 328, column: 9, scope: !2490, inlinedAt: !2496)
!2520 = !DILocation(line: 328, column: 36, scope: !2490, inlinedAt: !2496)
!2521 = !DILocation(line: 321, column: 18, scope: !2490, inlinedAt: !2496)
!2522 = !DILocation(line: 330, column: 14, scope: !2490, inlinedAt: !2496)
!2523 = !DILocation(line: 330, column: 10, scope: !2490, inlinedAt: !2496)
!2524 = !DILocation(line: 322, column: 16, scope: !2490, inlinedAt: !2496)
!2525 = !DILocation(line: 332, column: 13, scope: !2526, inlinedAt: !2496)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !346, line: 332, column: 13)
!2527 = distinct !DILexicalBlock(scope: !2490, file: !346, line: 331, column: 15)
!2528 = !DILocation(line: 0, scope: !2527, inlinedAt: !2496)
!2529 = !DILocation(line: 331, column: 5, scope: !2490, inlinedAt: !2496)
!2530 = !DILocation(line: 332, column: 13, scope: !2527, inlinedAt: !2496)
!2531 = !DILocation(line: 334, column: 18, scope: !2527, inlinedAt: !2496)
!2532 = distinct !{!2532, !2533, !2534}
!2533 = !DILocation(line: 331, column: 5, scope: !2490)
!2534 = !DILocation(line: 335, column: 5, scope: !2490)
!2535 = !DILocation(line: 337, column: 1, scope: !2490, inlinedAt: !2496)
!2536 = !DILocation(line: 136, column: 9, scope: !2478, inlinedAt: !2485)
!2537 = !DILocation(line: 141, column: 9, scope: !2478, inlinedAt: !2485)
!2538 = !DILocation(line: 141, column: 42, scope: !2497, inlinedAt: !2485)
!2539 = !DILocation(line: 145, column: 13, scope: !2478, inlinedAt: !2485)
!2540 = !DILocation(line: 146, column: 23, scope: !2478, inlinedAt: !2485)
!2541 = !DILocation(line: 146, column: 19, scope: !2478, inlinedAt: !2485)
!2542 = !DILocation(line: 146, column: 12, scope: !2478, inlinedAt: !2485)
!2543 = !DILocation(line: 146, column: 17, scope: !2478, inlinedAt: !2485)
!2544 = !DILocation(line: 147, column: 22, scope: !2478, inlinedAt: !2485)
!2545 = !DILocation(line: 150, column: 5, scope: !2546, inlinedAt: !2485)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !346, line: 150, column: 5)
!2547 = distinct !DILexicalBlock(scope: !2478, file: !346, line: 150, column: 5)
!2548 = !{!1430, !314, i64 8}
!2549 = !DILocation(line: 150, column: 5, scope: !2547, inlinedAt: !2485)
!2550 = !DILocation(line: 137, column: 16, scope: !2478, inlinedAt: !2485)
!2551 = !DILocation(line: 151, column: 5, scope: !2552, inlinedAt: !2485)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !346, line: 151, column: 5)
!2553 = distinct !DILexicalBlock(scope: !2478, file: !346, line: 151, column: 5)
!2554 = !{!1430, !314, i64 16}
!2555 = !DILocation(line: 151, column: 5, scope: !2553, inlinedAt: !2485)
!2556 = !DILocation(line: 152, column: 9, scope: !2478, inlinedAt: !2485)
!2557 = !DILocation(line: 152, column: 13, scope: !2478, inlinedAt: !2485)
!2558 = !DILocation(line: 154, column: 1, scope: !2478, inlinedAt: !2485)
!2559 = !DILocation(line: 165, column: 9, scope: !2465)
!2560 = !DILocation(line: 243, column: 34, scope: !1414, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 168, column: 13, scope: !2465)
!2562 = !DILocation(line: 243, column: 50, scope: !1414, inlinedAt: !2561)
!2563 = !DILocation(line: 247, column: 13, scope: !1425, inlinedAt: !2561)
!2564 = !DILocation(line: 247, column: 18, scope: !1425, inlinedAt: !2561)
!2565 = !DILocation(line: 0, scope: !2465)
!2566 = !DILocation(line: 247, column: 9, scope: !1414, inlinedAt: !2561)
!2567 = !DILocation(line: 248, column: 9, scope: !1414, inlinedAt: !2561)
!2568 = !DILocation(line: 248, column: 36, scope: !1414, inlinedAt: !2561)
!2569 = !DILocation(line: 245, column: 18, scope: !1414, inlinedAt: !2561)
!2570 = !DILocation(line: 249, column: 14, scope: !1414, inlinedAt: !2561)
!2571 = !DILocation(line: 249, column: 10, scope: !1414, inlinedAt: !2561)
!2572 = !DILocation(line: 244, column: 16, scope: !1414, inlinedAt: !2561)
!2573 = !DILocation(line: 251, column: 13, scope: !1438, inlinedAt: !2561)
!2574 = !DILocation(line: 0, scope: !1439, inlinedAt: !2561)
!2575 = !DILocation(line: 250, column: 5, scope: !1414, inlinedAt: !2561)
!2576 = !DILocation(line: 251, column: 13, scope: !1439, inlinedAt: !2561)
!2577 = !DILocation(line: 253, column: 18, scope: !1439, inlinedAt: !2561)
!2578 = !DILocation(line: 0, scope: !1414, inlinedAt: !2561)
!2579 = !DILocation(line: 256, column: 1, scope: !1414, inlinedAt: !2561)
!2580 = !DILocation(line: 161, column: 16, scope: !2465)
!2581 = !DILocation(line: 161, column: 23, scope: !2465)
!2582 = !DILocation(line: 175, column: 16, scope: !2465)
!2583 = !DILocation(line: 176, column: 5, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !346, line: 176, column: 5)
!2585 = distinct !DILexicalBlock(scope: !2465, file: !346, line: 176, column: 5)
!2586 = !DILocation(line: 176, column: 5, scope: !2585)
!2587 = !DILocation(line: 177, column: 5, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2465, file: !346, line: 177, column: 5)
!2589 = !DILocation(line: 177, column: 5, scope: !2465)
!2590 = !DILocation(line: 179, column: 1, scope: !2465)
!2591 = distinct !DISubprogram(name: "dictExpand", scope: !346, file: !346, line: 88, type: !2592, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2594)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!18, !349, !26}
!2594 = !{!2595, !2596, !2597, !2598, !2599, !2600, !2604, !2605}
!2595 = !DILocalVariable(name: "ht", arg: 1, scope: !2591, file: !346, line: 88, type: !349)
!2596 = !DILocalVariable(name: "size", arg: 2, scope: !2591, file: !346, line: 88, type: !26)
!2597 = !DILocalVariable(name: "n", scope: !2591, file: !346, line: 89, type: !350)
!2598 = !DILocalVariable(name: "realsize", scope: !2591, file: !346, line: 90, type: !26)
!2599 = !DILocalVariable(name: "i", scope: !2591, file: !346, line: 90, type: !26)
!2600 = !DILocalVariable(name: "he", scope: !2601, file: !346, line: 107, type: !258)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !346, line: 106, column: 52)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !346, line: 106, column: 5)
!2603 = distinct !DILexicalBlock(scope: !2591, file: !346, line: 106, column: 5)
!2604 = !DILocalVariable(name: "nextHe", scope: !2601, file: !346, line: 107, type: !258)
!2605 = !DILocalVariable(name: "h", scope: !2606, file: !346, line: 114, type: !7)
!2606 = distinct !DILexicalBlock(scope: !2601, file: !346, line: 113, column: 19)
!2607 = !DILocation(line: 88, column: 29, scope: !2591)
!2608 = !DILocation(line: 88, column: 47, scope: !2591)
!2609 = !DILocalVariable(name: "size", arg: 1, scope: !2610, file: !346, line: 306, type: !26)
!2610 = distinct !DISubprogram(name: "_dictNextPower", scope: !346, file: !346, line: 306, type: !2611, isLocal: true, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2613)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!26, !26}
!2613 = !{!2609, !2614}
!2614 = !DILocalVariable(name: "i", scope: !2610, file: !346, line: 307, type: !26)
!2615 = !DILocation(line: 306, column: 51, scope: !2610, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 90, column: 30, scope: !2591)
!2617 = !DILocation(line: 307, column: 19, scope: !2610, inlinedAt: !2616)
!2618 = !DILocation(line: 309, column: 14, scope: !2619, inlinedAt: !2616)
!2619 = distinct !DILexicalBlock(scope: !2610, file: !346, line: 309, column: 9)
!2620 = !DILocation(line: 309, column: 9, scope: !2610, inlinedAt: !2616)
!2621 = !DILocation(line: 0, scope: !2622, inlinedAt: !2616)
!2622 = distinct !DILexicalBlock(scope: !2610, file: !346, line: 310, column: 14)
!2623 = !DILocation(line: 311, column: 15, scope: !2624, inlinedAt: !2616)
!2624 = distinct !DILexicalBlock(scope: !2622, file: !346, line: 311, column: 13)
!2625 = !DILocation(line: 313, column: 11, scope: !2622, inlinedAt: !2616)
!2626 = !DILocation(line: 311, column: 13, scope: !2622, inlinedAt: !2616)
!2627 = distinct !{!2627, !2628, !2629}
!2628 = !DILocation(line: 310, column: 5, scope: !2610)
!2629 = !DILocation(line: 314, column: 5, scope: !2610)
!2630 = !DILocation(line: 0, scope: !2624, inlinedAt: !2616)
!2631 = !DILocation(line: 315, column: 1, scope: !2610, inlinedAt: !2616)
!2632 = !DILocation(line: 90, column: 19, scope: !2591)
!2633 = !DILocation(line: 94, column: 13, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2591, file: !346, line: 94, column: 9)
!2635 = !DILocation(line: 94, column: 18, scope: !2634)
!2636 = !DILocation(line: 94, column: 9, scope: !2591)
!2637 = !DILocation(line: 97, column: 23, scope: !2591)
!2638 = !DILocation(line: 97, column: 33, scope: !2591)
!2639 = !DILocation(line: 89, column: 10, scope: !2591)
!2640 = !DILocation(line: 80, column: 28, scope: !360, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 97, column: 5, scope: !2591)
!2642 = !DILocation(line: 80, column: 42, scope: !360, inlinedAt: !2641)
!2643 = !DILocation(line: 80, column: 54, scope: !360, inlinedAt: !2641)
!2644 = !DILocation(line: 65, column: 30, scope: !371, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 81, column: 5, scope: !360, inlinedAt: !2641)
!2646 = !DILocation(line: 70, column: 1, scope: !371, inlinedAt: !2645)
!2647 = !DILocation(line: 84, column: 5, scope: !360, inlinedAt: !2641)
!2648 = !DILocation(line: 99, column: 26, scope: !2591)
!2649 = !DILocation(line: 100, column: 15, scope: !2591)
!2650 = !DILocation(line: 100, column: 13, scope: !2591)
!2651 = !DILocation(line: 105, column: 18, scope: !2591)
!2652 = !DILocation(line: 90, column: 52, scope: !2591)
!2653 = !DILocation(line: 106, column: 25, scope: !2602)
!2654 = !DILocation(line: 106, column: 19, scope: !2602)
!2655 = !DILocation(line: 0, scope: !2591)
!2656 = !DILocation(line: 106, column: 30, scope: !2602)
!2657 = !DILocation(line: 106, column: 5, scope: !2603)
!2658 = !DILocation(line: 109, column: 17, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2601, file: !346, line: 109, column: 13)
!2660 = !DILocation(line: 109, column: 13, scope: !2659)
!2661 = !DILocation(line: 109, column: 26, scope: !2659)
!2662 = !DILocation(line: 109, column: 13, scope: !2601)
!2663 = !DILocation(line: 107, column: 20, scope: !2601)
!2664 = !DILocation(line: 116, column: 26, scope: !2606)
!2665 = !DILocation(line: 107, column: 25, scope: !2601)
!2666 = !DILocation(line: 118, column: 17, scope: !2606)
!2667 = !DILocation(line: 114, column: 26, scope: !2606)
!2668 = !DILocation(line: 119, column: 24, scope: !2606)
!2669 = !DILocation(line: 119, column: 22, scope: !2606)
!2670 = !DILocation(line: 120, column: 24, scope: !2606)
!2671 = !DILocation(line: 121, column: 21, scope: !2606)
!2672 = !DILocation(line: 113, column: 9, scope: !2601)
!2673 = distinct !{!2673, !2672, !2674}
!2674 = !DILocation(line: 124, column: 9, scope: !2601)
!2675 = !DILocation(line: 106, column: 48, scope: !2602)
!2676 = distinct !{!2676, !2657, !2677}
!2677 = !DILocation(line: 125, column: 5, scope: !2603)
!2678 = !DILocation(line: 126, column: 5, scope: !2591)
!2679 = !DILocation(line: 127, column: 14, scope: !2591)
!2680 = !DILocation(line: 127, column: 5, scope: !2591)
!2681 = !DILocation(line: 130, column: 11, scope: !2591)
!2682 = !DILocation(line: 131, column: 5, scope: !2591)
!2683 = !DILocation(line: 132, column: 1, scope: !2591)
