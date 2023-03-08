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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  br i1 %4, label %62, label %5, !dbg !287

; <label>:5:                                      ; preds = %2
  %6 = bitcast %struct.redisContext* %3 to i8*, !dbg !296
  %7 = tail call i8* @realloc(i8* %6, i64 344) #7, !dbg !297
  %8 = icmp eq i8* %7, null, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  br i1 %8, label %9, label %10, !dbg !300

; <label>:9:                                      ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !304
  tail call void @redisFree(%struct.redisContext* nonnull %3) #7, !dbg !305
  br label %62, !dbg !308

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds i8, i8* %7, i64 136, !dbg !309
  %12 = bitcast i8* %11 to i32*, !dbg !309
  %13 = load i32, i32* %12, align 8, !dbg !310, !tbaa !311
  %14 = and i32 %13, -3, !dbg !310
  store i32 %14, i32* %12, align 8, !dbg !310, !tbaa !311
  %15 = getelementptr inbounds i8, i8* %7, i64 208, !dbg !319
  %16 = bitcast i8* %15 to i32*, !dbg !319
  store i32 0, i32* %16, align 8, !dbg !320, !tbaa !321
  %17 = getelementptr inbounds i8, i8* %7, i64 216, !dbg !326
  %18 = bitcast i8* %17 to i8**, !dbg !326
  %19 = bitcast i8* %17 to <2 x i8*>*, !dbg !327
  store <2 x i8*> zeroinitializer, <2 x i8*>* %19, align 8, !dbg !327, !tbaa !328
  %20 = getelementptr inbounds i8, i8* %7, i64 232, !dbg !329
  %21 = bitcast i8* %20 to i8**, !dbg !330
  store i8* null, i8** %21, align 8, !dbg !331, !tbaa !332
  %22 = getelementptr inbounds i8, i8* %7, i64 240, !dbg !333
  %23 = bitcast i8* %22 to <2 x void (i8*)*>*, !dbg !334
  store <2 x void (i8*)*> zeroinitializer, <2 x void (i8*)*>* %23, align 8, !dbg !334, !tbaa !328
  %24 = getelementptr inbounds i8, i8* %7, i64 256, !dbg !335
  %25 = bitcast i8* %24 to <2 x void (i8*)*>*, !dbg !336
  store <2 x void (i8*)*> zeroinitializer, <2 x void (i8*)*>* %25, align 8, !dbg !336, !tbaa !328
  %26 = getelementptr inbounds i8, i8* %7, i64 272, !dbg !337
  %27 = bitcast i8* %26 to void (i8*)**, !dbg !337
  store void (i8*)* null, void (i8*)** %27, align 8, !dbg !338, !tbaa !339
  %28 = getelementptr inbounds i8, i8* %7, i64 280, !dbg !340
  %29 = bitcast i8* %28 to <2 x void (%struct.redisAsyncContext*, i32)*>*, !dbg !341
  store <2 x void (%struct.redisAsyncContext*, i32)*> zeroinitializer, <2 x void (%struct.redisAsyncContext*, i32)*>* %29, align 8, !dbg !341, !tbaa !328
  %30 = getelementptr inbounds i8, i8* %7, i64 296, !dbg !342
  %31 = bitcast i8* %30 to <2 x %struct.redisCallback*>*, !dbg !343
  store <2 x %struct.redisCallback*> zeroinitializer, <2 x %struct.redisCallback*>* %31, align 8, !dbg !343, !tbaa !328
  %32 = getelementptr inbounds i8, i8* %7, i64 312, !dbg !344
  %33 = bitcast i8* %32 to <2 x %struct.redisCallback*>*, !dbg !345
  store <2 x %struct.redisCallback*> zeroinitializer, <2 x %struct.redisCallback*>* %33, align 8, !dbg !345, !tbaa !328
  %34 = tail call i8* @malloc(i64 48) #7, !dbg !359
  %35 = bitcast i8* %34 to %struct.dictEntry***, !dbg !379
  store %struct.dictEntry** null, %struct.dictEntry*** %35, align 8, !dbg !380, !tbaa !381
  %36 = getelementptr inbounds i8, i8* %34, i64 16, !dbg !384
  %37 = bitcast i8* %36 to <2 x i64>*, !dbg !385
  store <2 x i64> zeroinitializer, <2 x i64>* %37, align 8, !dbg !385, !tbaa !386
  %38 = getelementptr inbounds i8, i8* %34, i64 32, !dbg !387
  %39 = bitcast i8* %38 to i64*, !dbg !387
  store i64 0, i64* %39, align 8, !dbg !388, !tbaa !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !390
  %40 = getelementptr inbounds i8, i8* %34, i64 8, !dbg !391
  %41 = bitcast i8* %40 to %struct.dictType**, !dbg !391
  store %struct.dictType* @callbackDict, %struct.dictType** %41, align 8, !dbg !392, !tbaa !393
  %42 = getelementptr inbounds i8, i8* %34, i64 40, !dbg !394
  %43 = bitcast i8* %42 to i8**, !dbg !394
  store i8* null, i8** %43, align 8, !dbg !395, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  %44 = getelementptr inbounds i8, i8* %7, i64 328, !dbg !399
  %45 = bitcast i8* %44 to i8**, !dbg !400
  store i8* %34, i8** %45, align 8, !dbg !400, !tbaa !401
  %46 = tail call i8* @malloc(i64 48) #7, !dbg !405
  %47 = bitcast i8* %46 to %struct.dictEntry***, !dbg !413
  store %struct.dictEntry** null, %struct.dictEntry*** %47, align 8, !dbg !414, !tbaa !381
  %48 = getelementptr inbounds i8, i8* %46, i64 16, !dbg !415
  %49 = bitcast i8* %48 to <2 x i64>*, !dbg !416
  store <2 x i64> zeroinitializer, <2 x i64>* %49, align 8, !dbg !416, !tbaa !386
  %50 = getelementptr inbounds i8, i8* %46, i64 32, !dbg !417
  %51 = bitcast i8* %50 to i64*, !dbg !417
  store i64 0, i64* %51, align 8, !dbg !418, !tbaa !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  %52 = getelementptr inbounds i8, i8* %46, i64 8, !dbg !420
  %53 = bitcast i8* %52 to %struct.dictType**, !dbg !420
  store %struct.dictType* @callbackDict, %struct.dictType** %53, align 8, !dbg !421, !tbaa !393
  %54 = getelementptr inbounds i8, i8* %46, i64 40, !dbg !422
  %55 = bitcast i8* %54 to i8**, !dbg !422
  store i8* null, i8** %55, align 8, !dbg !423, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  %56 = getelementptr inbounds i8, i8* %7, i64 336, !dbg !426
  %57 = bitcast i8* %56 to i8**, !dbg !427
  store i8* %46, i8** %57, align 8, !dbg !427, !tbaa !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !304
  %58 = bitcast i8* %7 to %struct.redisAsyncContext*, !dbg !297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  %59 = bitcast i8* %7 to i32*, !dbg !441
  %60 = load i32, i32* %59, align 8, !dbg !441, !tbaa !442
  store i32 %60, i32* %16, align 8, !dbg !443, !tbaa !321
  %61 = getelementptr inbounds i8, i8* %7, i64 4, !dbg !444
  store i8* %61, i8** %18, align 8, !dbg !445, !tbaa !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  br label %62, !dbg !448

; <label>:62:                                     ; preds = %2, %10, %9
  %63 = phi %struct.redisAsyncContext* [ null, %9 ], [ %58, %10 ], [ null, %2 ], !dbg !449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  ret %struct.redisAsyncContext* %63, !dbg !451
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
define dso_local %struct.redisAsyncContext* @redisAsyncConnectBind(i8*, i32, i8*) local_unnamed_addr #0 !dbg !452 {
  %4 = tail call %struct.redisContext* @redisConnectBindNonBlock(i8* %0, i32 %1, i8* %2) #7, !dbg !464
  %5 = bitcast %struct.redisContext* %4 to i8*, !dbg !468
  %6 = tail call i8* @realloc(i8* %5, i64 344) #7, !dbg !469
  %7 = icmp eq i8* %6, null, !dbg !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !471
  br i1 %7, label %8, label %9, !dbg !471

; <label>:8:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !473
  br label %61, !dbg !477

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds i8, i8* %6, i64 136, !dbg !478
  %11 = bitcast i8* %10 to i32*, !dbg !478
  %12 = load i32, i32* %11, align 8, !dbg !479, !tbaa !311
  %13 = and i32 %12, -3, !dbg !479
  store i32 %13, i32* %11, align 8, !dbg !479, !tbaa !311
  %14 = getelementptr inbounds i8, i8* %6, i64 208, !dbg !480
  %15 = bitcast i8* %14 to i32*, !dbg !480
  store i32 0, i32* %15, align 8, !dbg !481, !tbaa !321
  %16 = getelementptr inbounds i8, i8* %6, i64 216, !dbg !482
  %17 = bitcast i8* %16 to i8**, !dbg !482
  %18 = bitcast i8* %16 to <2 x i8*>*, !dbg !483
  store <2 x i8*> zeroinitializer, <2 x i8*>* %18, align 8, !dbg !483, !tbaa !328
  %19 = getelementptr inbounds i8, i8* %6, i64 232, !dbg !484
  %20 = bitcast i8* %19 to i8**, !dbg !485
  store i8* null, i8** %20, align 8, !dbg !486, !tbaa !332
  %21 = getelementptr inbounds i8, i8* %6, i64 240, !dbg !487
  %22 = bitcast i8* %21 to <2 x void (i8*)*>*, !dbg !488
  store <2 x void (i8*)*> zeroinitializer, <2 x void (i8*)*>* %22, align 8, !dbg !488, !tbaa !328
  %23 = getelementptr inbounds i8, i8* %6, i64 256, !dbg !489
  %24 = bitcast i8* %23 to <2 x void (i8*)*>*, !dbg !490
  store <2 x void (i8*)*> zeroinitializer, <2 x void (i8*)*>* %24, align 8, !dbg !490, !tbaa !328
  %25 = getelementptr inbounds i8, i8* %6, i64 272, !dbg !491
  %26 = bitcast i8* %25 to void (i8*)**, !dbg !491
  store void (i8*)* null, void (i8*)** %26, align 8, !dbg !492, !tbaa !339
  %27 = getelementptr inbounds i8, i8* %6, i64 280, !dbg !493
  %28 = bitcast i8* %27 to <2 x void (%struct.redisAsyncContext*, i32)*>*, !dbg !494
  store <2 x void (%struct.redisAsyncContext*, i32)*> zeroinitializer, <2 x void (%struct.redisAsyncContext*, i32)*>* %28, align 8, !dbg !494, !tbaa !328
  %29 = getelementptr inbounds i8, i8* %6, i64 296, !dbg !495
  %30 = bitcast i8* %29 to <2 x %struct.redisCallback*>*, !dbg !496
  store <2 x %struct.redisCallback*> zeroinitializer, <2 x %struct.redisCallback*>* %30, align 8, !dbg !496, !tbaa !328
  %31 = getelementptr inbounds i8, i8* %6, i64 312, !dbg !497
  %32 = bitcast i8* %31 to <2 x %struct.redisCallback*>*, !dbg !498
  store <2 x %struct.redisCallback*> zeroinitializer, <2 x %struct.redisCallback*>* %32, align 8, !dbg !498, !tbaa !328
  %33 = tail call i8* @malloc(i64 48) #7, !dbg !502
  %34 = bitcast i8* %33 to %struct.dictEntry***, !dbg !510
  store %struct.dictEntry** null, %struct.dictEntry*** %34, align 8, !dbg !511, !tbaa !381
  %35 = getelementptr inbounds i8, i8* %33, i64 16, !dbg !512
  %36 = bitcast i8* %35 to <2 x i64>*, !dbg !513
  store <2 x i64> zeroinitializer, <2 x i64>* %36, align 8, !dbg !513, !tbaa !386
  %37 = getelementptr inbounds i8, i8* %33, i64 32, !dbg !514
  %38 = bitcast i8* %37 to i64*, !dbg !514
  store i64 0, i64* %38, align 8, !dbg !515, !tbaa !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  %39 = getelementptr inbounds i8, i8* %33, i64 8, !dbg !517
  %40 = bitcast i8* %39 to %struct.dictType**, !dbg !517
  store %struct.dictType* @callbackDict, %struct.dictType** %40, align 8, !dbg !518, !tbaa !393
  %41 = getelementptr inbounds i8, i8* %33, i64 40, !dbg !519
  %42 = bitcast i8* %41 to i8**, !dbg !519
  store i8* null, i8** %42, align 8, !dbg !520, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  %43 = getelementptr inbounds i8, i8* %6, i64 328, !dbg !523
  %44 = bitcast i8* %43 to i8**, !dbg !524
  store i8* %33, i8** %44, align 8, !dbg !524, !tbaa !401
  %45 = tail call i8* @malloc(i64 48) #7, !dbg !528
  %46 = bitcast i8* %45 to %struct.dictEntry***, !dbg !536
  store %struct.dictEntry** null, %struct.dictEntry*** %46, align 8, !dbg !537, !tbaa !381
  %47 = getelementptr inbounds i8, i8* %45, i64 16, !dbg !538
  %48 = bitcast i8* %47 to <2 x i64>*, !dbg !539
  store <2 x i64> zeroinitializer, <2 x i64>* %48, align 8, !dbg !539, !tbaa !386
  %49 = getelementptr inbounds i8, i8* %45, i64 32, !dbg !540
  %50 = bitcast i8* %49 to i64*, !dbg !540
  store i64 0, i64* %50, align 8, !dbg !541, !tbaa !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  %51 = getelementptr inbounds i8, i8* %45, i64 8, !dbg !543
  %52 = bitcast i8* %51 to %struct.dictType**, !dbg !543
  store %struct.dictType* @callbackDict, %struct.dictType** %52, align 8, !dbg !544, !tbaa !393
  %53 = getelementptr inbounds i8, i8* %45, i64 40, !dbg !545
  %54 = bitcast i8* %53 to i8**, !dbg !545
  store i8* null, i8** %54, align 8, !dbg !546, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  %55 = getelementptr inbounds i8, i8* %6, i64 336, !dbg !549
  %56 = bitcast i8* %55 to i8**, !dbg !550
  store i8* %45, i8** %56, align 8, !dbg !550, !tbaa !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !477
  %57 = bitcast i8* %6 to %struct.redisAsyncContext*, !dbg !469
  %58 = bitcast i8* %6 to i32*, !dbg !554
  %59 = load i32, i32* %58, align 8, !dbg !554, !tbaa !442
  store i32 %59, i32* %15, align 8, !dbg !555, !tbaa !321
  %60 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !556
  store i8* %60, i8** %17, align 8, !dbg !557, !tbaa !446
  br label %61, !dbg !558

; <label>:61:                                     ; preds = %8, %9
  %62 = phi %struct.redisAsyncContext* [ null, %8 ], [ %57, %9 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !560
  ret %struct.redisAsyncContext* %62, !dbg !560
}

; Function Attrs: noredzone
declare dso_local %struct.redisContext* @redisConnectBindNonBlock(i8*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisAsyncContext* @redisAsyncConnectBindWithReuse(i8*, i32, i8*) local_unnamed_addr #0 !dbg !561 {
  %4 = tail call %struct.redisContext* @redisConnectBindNonBlockWithReuse(i8* %0, i32 %1, i8* %2) #7, !dbg !571
  %5 = bitcast %struct.redisContext* %4 to i8*, !dbg !575
  %6 = tail call i8* @realloc(i8* %5, i64 344) #7, !dbg !576
  %7 = icmp eq i8* %6, null, !dbg !577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  br i1 %7, label %8, label %9, !dbg !578

; <label>:8:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  br label %61, !dbg !584

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds i8, i8* %6, i64 136, !dbg !585
  %11 = bitcast i8* %10 to i32*, !dbg !585
  %12 = load i32, i32* %11, align 8, !dbg !586, !tbaa !311
  %13 = and i32 %12, -3, !dbg !586
  store i32 %13, i32* %11, align 8, !dbg !586, !tbaa !311
  %14 = getelementptr inbounds i8, i8* %6, i64 208, !dbg !587
  %15 = bitcast i8* %14 to i32*, !dbg !587
  store i32 0, i32* %15, align 8, !dbg !588, !tbaa !321
  %16 = getelementptr inbounds i8, i8* %6, i64 216, !dbg !589
  %17 = bitcast i8* %16 to i8**, !dbg !589
  %18 = bitcast i8* %16 to <2 x i8*>*, !dbg !590
  store <2 x i8*> zeroinitializer, <2 x i8*>* %18, align 8, !dbg !590, !tbaa !328
  %19 = getelementptr inbounds i8, i8* %6, i64 232, !dbg !591
  %20 = bitcast i8* %19 to i8**, !dbg !592
  store i8* null, i8** %20, align 8, !dbg !593, !tbaa !332
  %21 = getelementptr inbounds i8, i8* %6, i64 240, !dbg !594
  %22 = bitcast i8* %21 to <2 x void (i8*)*>*, !dbg !595
  store <2 x void (i8*)*> zeroinitializer, <2 x void (i8*)*>* %22, align 8, !dbg !595, !tbaa !328
  %23 = getelementptr inbounds i8, i8* %6, i64 256, !dbg !596
  %24 = bitcast i8* %23 to <2 x void (i8*)*>*, !dbg !597
  store <2 x void (i8*)*> zeroinitializer, <2 x void (i8*)*>* %24, align 8, !dbg !597, !tbaa !328
  %25 = getelementptr inbounds i8, i8* %6, i64 272, !dbg !598
  %26 = bitcast i8* %25 to void (i8*)**, !dbg !598
  store void (i8*)* null, void (i8*)** %26, align 8, !dbg !599, !tbaa !339
  %27 = getelementptr inbounds i8, i8* %6, i64 280, !dbg !600
  %28 = bitcast i8* %27 to <2 x void (%struct.redisAsyncContext*, i32)*>*, !dbg !601
  store <2 x void (%struct.redisAsyncContext*, i32)*> zeroinitializer, <2 x void (%struct.redisAsyncContext*, i32)*>* %28, align 8, !dbg !601, !tbaa !328
  %29 = getelementptr inbounds i8, i8* %6, i64 296, !dbg !602
  %30 = bitcast i8* %29 to <2 x %struct.redisCallback*>*, !dbg !603
  store <2 x %struct.redisCallback*> zeroinitializer, <2 x %struct.redisCallback*>* %30, align 8, !dbg !603, !tbaa !328
  %31 = getelementptr inbounds i8, i8* %6, i64 312, !dbg !604
  %32 = bitcast i8* %31 to <2 x %struct.redisCallback*>*, !dbg !605
  store <2 x %struct.redisCallback*> zeroinitializer, <2 x %struct.redisCallback*>* %32, align 8, !dbg !605, !tbaa !328
  %33 = tail call i8* @malloc(i64 48) #7, !dbg !609
  %34 = bitcast i8* %33 to %struct.dictEntry***, !dbg !617
  store %struct.dictEntry** null, %struct.dictEntry*** %34, align 8, !dbg !618, !tbaa !381
  %35 = getelementptr inbounds i8, i8* %33, i64 16, !dbg !619
  %36 = bitcast i8* %35 to <2 x i64>*, !dbg !620
  store <2 x i64> zeroinitializer, <2 x i64>* %36, align 8, !dbg !620, !tbaa !386
  %37 = getelementptr inbounds i8, i8* %33, i64 32, !dbg !621
  %38 = bitcast i8* %37 to i64*, !dbg !621
  store i64 0, i64* %38, align 8, !dbg !622, !tbaa !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  %39 = getelementptr inbounds i8, i8* %33, i64 8, !dbg !624
  %40 = bitcast i8* %39 to %struct.dictType**, !dbg !624
  store %struct.dictType* @callbackDict, %struct.dictType** %40, align 8, !dbg !625, !tbaa !393
  %41 = getelementptr inbounds i8, i8* %33, i64 40, !dbg !626
  %42 = bitcast i8* %41 to i8**, !dbg !626
  store i8* null, i8** %42, align 8, !dbg !627, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !629
  %43 = getelementptr inbounds i8, i8* %6, i64 328, !dbg !630
  %44 = bitcast i8* %43 to i8**, !dbg !631
  store i8* %33, i8** %44, align 8, !dbg !631, !tbaa !401
  %45 = tail call i8* @malloc(i64 48) #7, !dbg !635
  %46 = bitcast i8* %45 to %struct.dictEntry***, !dbg !643
  store %struct.dictEntry** null, %struct.dictEntry*** %46, align 8, !dbg !644, !tbaa !381
  %47 = getelementptr inbounds i8, i8* %45, i64 16, !dbg !645
  %48 = bitcast i8* %47 to <2 x i64>*, !dbg !646
  store <2 x i64> zeroinitializer, <2 x i64>* %48, align 8, !dbg !646, !tbaa !386
  %49 = getelementptr inbounds i8, i8* %45, i64 32, !dbg !647
  %50 = bitcast i8* %49 to i64*, !dbg !647
  store i64 0, i64* %50, align 8, !dbg !648, !tbaa !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  %51 = getelementptr inbounds i8, i8* %45, i64 8, !dbg !650
  %52 = bitcast i8* %51 to %struct.dictType**, !dbg !650
  store %struct.dictType* @callbackDict, %struct.dictType** %52, align 8, !dbg !651, !tbaa !393
  %53 = getelementptr inbounds i8, i8* %45, i64 40, !dbg !652
  %54 = bitcast i8* %53 to i8**, !dbg !652
  store i8* null, i8** %54, align 8, !dbg !653, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  %55 = getelementptr inbounds i8, i8* %6, i64 336, !dbg !656
  %56 = bitcast i8* %55 to i8**, !dbg !657
  store i8* %45, i8** %56, align 8, !dbg !657, !tbaa !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  %57 = bitcast i8* %6 to %struct.redisAsyncContext*, !dbg !576
  %58 = bitcast i8* %6 to i32*, !dbg !661
  %59 = load i32, i32* %58, align 8, !dbg !661, !tbaa !442
  store i32 %59, i32* %15, align 8, !dbg !662, !tbaa !321
  %60 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !663
  store i8* %60, i8** %17, align 8, !dbg !664, !tbaa !446
  br label %61, !dbg !665

; <label>:61:                                     ; preds = %8, %9
  %62 = phi %struct.redisAsyncContext* [ null, %8 ], [ %57, %9 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  ret %struct.redisAsyncContext* %62, !dbg !667
}

; Function Attrs: noredzone
declare dso_local %struct.redisContext* @redisConnectBindNonBlockWithReuse(i8*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisAsyncContext* @redisAsyncConnectUnix(i8*) local_unnamed_addr #0 !dbg !668 {
  %2 = tail call %struct.redisContext* @redisConnectUnixNonBlock(i8* %0) #7, !dbg !676
  %3 = icmp eq %struct.redisContext* %2, null, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !680
  br i1 %3, label %61, label %4, !dbg !680

; <label>:4:                                      ; preds = %1
  %5 = bitcast %struct.redisContext* %2 to i8*, !dbg !683
  %6 = tail call i8* @realloc(i8* %5, i64 344) #7, !dbg !684
  %7 = icmp eq i8* %6, null, !dbg !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !686
  br i1 %7, label %8, label %9, !dbg !686

; <label>:8:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !690
  tail call void @redisFree(%struct.redisContext* nonnull %2) #7, !dbg !691
  br label %61, !dbg !694

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds i8, i8* %6, i64 136, !dbg !695
  %11 = bitcast i8* %10 to i32*, !dbg !695
  %12 = load i32, i32* %11, align 8, !dbg !696, !tbaa !311
  %13 = and i32 %12, -3, !dbg !696
  store i32 %13, i32* %11, align 8, !dbg !696, !tbaa !311
  %14 = getelementptr inbounds i8, i8* %6, i64 208, !dbg !697
  %15 = bitcast i8* %14 to i32*, !dbg !697
  store i32 0, i32* %15, align 8, !dbg !698, !tbaa !321
  %16 = getelementptr inbounds i8, i8* %6, i64 216, !dbg !699
  %17 = bitcast i8* %16 to i8**, !dbg !699
  %18 = bitcast i8* %16 to <2 x i8*>*, !dbg !700
  store <2 x i8*> zeroinitializer, <2 x i8*>* %18, align 8, !dbg !700, !tbaa !328
  %19 = getelementptr inbounds i8, i8* %6, i64 232, !dbg !701
  %20 = bitcast i8* %19 to i8**, !dbg !702
  store i8* null, i8** %20, align 8, !dbg !703, !tbaa !332
  %21 = getelementptr inbounds i8, i8* %6, i64 240, !dbg !704
  %22 = bitcast i8* %21 to <2 x void (i8*)*>*, !dbg !705
  store <2 x void (i8*)*> zeroinitializer, <2 x void (i8*)*>* %22, align 8, !dbg !705, !tbaa !328
  %23 = getelementptr inbounds i8, i8* %6, i64 256, !dbg !706
  %24 = bitcast i8* %23 to <2 x void (i8*)*>*, !dbg !707
  store <2 x void (i8*)*> zeroinitializer, <2 x void (i8*)*>* %24, align 8, !dbg !707, !tbaa !328
  %25 = getelementptr inbounds i8, i8* %6, i64 272, !dbg !708
  %26 = bitcast i8* %25 to void (i8*)**, !dbg !708
  store void (i8*)* null, void (i8*)** %26, align 8, !dbg !709, !tbaa !339
  %27 = getelementptr inbounds i8, i8* %6, i64 280, !dbg !710
  %28 = bitcast i8* %27 to <2 x void (%struct.redisAsyncContext*, i32)*>*, !dbg !711
  store <2 x void (%struct.redisAsyncContext*, i32)*> zeroinitializer, <2 x void (%struct.redisAsyncContext*, i32)*>* %28, align 8, !dbg !711, !tbaa !328
  %29 = getelementptr inbounds i8, i8* %6, i64 296, !dbg !712
  %30 = bitcast i8* %29 to <2 x %struct.redisCallback*>*, !dbg !713
  store <2 x %struct.redisCallback*> zeroinitializer, <2 x %struct.redisCallback*>* %30, align 8, !dbg !713, !tbaa !328
  %31 = getelementptr inbounds i8, i8* %6, i64 312, !dbg !714
  %32 = bitcast i8* %31 to <2 x %struct.redisCallback*>*, !dbg !715
  store <2 x %struct.redisCallback*> zeroinitializer, <2 x %struct.redisCallback*>* %32, align 8, !dbg !715, !tbaa !328
  %33 = tail call i8* @malloc(i64 48) #7, !dbg !719
  %34 = bitcast i8* %33 to %struct.dictEntry***, !dbg !727
  store %struct.dictEntry** null, %struct.dictEntry*** %34, align 8, !dbg !728, !tbaa !381
  %35 = getelementptr inbounds i8, i8* %33, i64 16, !dbg !729
  %36 = bitcast i8* %35 to <2 x i64>*, !dbg !730
  store <2 x i64> zeroinitializer, <2 x i64>* %36, align 8, !dbg !730, !tbaa !386
  %37 = getelementptr inbounds i8, i8* %33, i64 32, !dbg !731
  %38 = bitcast i8* %37 to i64*, !dbg !731
  store i64 0, i64* %38, align 8, !dbg !732, !tbaa !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !733
  %39 = getelementptr inbounds i8, i8* %33, i64 8, !dbg !734
  %40 = bitcast i8* %39 to %struct.dictType**, !dbg !734
  store %struct.dictType* @callbackDict, %struct.dictType** %40, align 8, !dbg !735, !tbaa !393
  %41 = getelementptr inbounds i8, i8* %33, i64 40, !dbg !736
  %42 = bitcast i8* %41 to i8**, !dbg !736
  store i8* null, i8** %42, align 8, !dbg !737, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  %43 = getelementptr inbounds i8, i8* %6, i64 328, !dbg !740
  %44 = bitcast i8* %43 to i8**, !dbg !741
  store i8* %33, i8** %44, align 8, !dbg !741, !tbaa !401
  %45 = tail call i8* @malloc(i64 48) #7, !dbg !745
  %46 = bitcast i8* %45 to %struct.dictEntry***, !dbg !753
  store %struct.dictEntry** null, %struct.dictEntry*** %46, align 8, !dbg !754, !tbaa !381
  %47 = getelementptr inbounds i8, i8* %45, i64 16, !dbg !755
  %48 = bitcast i8* %47 to <2 x i64>*, !dbg !756
  store <2 x i64> zeroinitializer, <2 x i64>* %48, align 8, !dbg !756, !tbaa !386
  %49 = getelementptr inbounds i8, i8* %45, i64 32, !dbg !757
  %50 = bitcast i8* %49 to i64*, !dbg !757
  store i64 0, i64* %50, align 8, !dbg !758, !tbaa !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !759
  %51 = getelementptr inbounds i8, i8* %45, i64 8, !dbg !760
  %52 = bitcast i8* %51 to %struct.dictType**, !dbg !760
  store %struct.dictType* @callbackDict, %struct.dictType** %52, align 8, !dbg !761, !tbaa !393
  %53 = getelementptr inbounds i8, i8* %45, i64 40, !dbg !762
  %54 = bitcast i8* %53 to i8**, !dbg !762
  store i8* null, i8** %54, align 8, !dbg !763, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !765
  %55 = getelementptr inbounds i8, i8* %6, i64 336, !dbg !766
  %56 = bitcast i8* %55 to i8**, !dbg !767
  store i8* %45, i8** %56, align 8, !dbg !767, !tbaa !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !690
  %57 = bitcast i8* %6 to %struct.redisAsyncContext*, !dbg !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  %58 = bitcast i8* %6 to i32*, !dbg !774
  %59 = load i32, i32* %58, align 8, !dbg !774, !tbaa !442
  store i32 %59, i32* %15, align 8, !dbg !775, !tbaa !321
  %60 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !776
  store i8* %60, i8** %17, align 8, !dbg !777, !tbaa !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  br label %61, !dbg !779

; <label>:61:                                     ; preds = %1, %9, %8
  %62 = phi %struct.redisAsyncContext* [ null, %8 ], [ %57, %9 ], [ null, %1 ], !dbg !780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !782
  ret %struct.redisAsyncContext* %62, !dbg !782
}

; Function Attrs: noredzone
declare dso_local %struct.redisContext* @redisConnectUnixNonBlock(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisAsyncSetConnectCallback(%struct.redisAsyncContext* nocapture, void (%struct.redisAsyncContext*, i32)*) local_unnamed_addr #0 !dbg !783 {
  %3 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 6, !dbg !791
  %4 = load void (%struct.redisAsyncContext*, i32)*, void (%struct.redisAsyncContext*, i32)** %3, align 8, !dbg !791, !tbaa !793
  %5 = icmp eq void (%struct.redisAsyncContext*, i32)* %4, null, !dbg !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !795
  br i1 %5, label %6, label %13, !dbg !795

; <label>:6:                                      ; preds = %2
  store void (%struct.redisAsyncContext*, i32)* %1, void (%struct.redisAsyncContext*, i32)** %3, align 8, !dbg !796, !tbaa !793
  %7 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 3, !dbg !798
  %8 = load void (i8*)*, void (i8*)** %7, align 8, !dbg !798, !tbaa !801
  %9 = icmp eq void (i8*)* %8, null, !dbg !798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !802
  br i1 %9, label %13, label %10, !dbg !802

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 0, !dbg !798
  %12 = load i8*, i8** %11, align 8, !dbg !798, !tbaa !332
  tail call void %8(i8* %12) #7, !dbg !798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !798
  br label %13, !dbg !798

; <label>:13:                                     ; preds = %2, %10, %6
  %14 = phi i32 [ 0, %6 ], [ 0, %10 ], [ -1, %2 ], !dbg !803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !805
  ret i32 %14, !dbg !805
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisAsyncSetDisconnectCallback(%struct.redisAsyncContext* nocapture, void (%struct.redisAsyncContext*, i32)*) local_unnamed_addr #0 !dbg !806 {
  %3 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 5, !dbg !814
  %4 = load void (%struct.redisAsyncContext*, i32)*, void (%struct.redisAsyncContext*, i32)** %3, align 8, !dbg !814, !tbaa !816
  %5 = icmp eq void (%struct.redisAsyncContext*, i32)* %4, null, !dbg !817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  br i1 %5, label %6, label %7, !dbg !818

; <label>:6:                                      ; preds = %2
  store void (%struct.redisAsyncContext*, i32)* %1, void (%struct.redisAsyncContext*, i32)** %3, align 8, !dbg !819, !tbaa !816
  br label %7, !dbg !821

; <label>:7:                                      ; preds = %2, %6
  %8 = phi i32 [ 0, %6 ], [ -1, %2 ], !dbg !822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !824
  ret i32 %8, !dbg !824
}

; Function Attrs: noredzone nounwind
define dso_local void @redisAsyncFree(%struct.redisAsyncContext*) local_unnamed_addr #0 !dbg !825 {
  %2 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3, !dbg !831
  %3 = load i32, i32* %2, align 8, !dbg !832, !tbaa !311
  %4 = or i32 %3, 8, !dbg !832
  store i32 %4, i32* %2, align 8, !dbg !832, !tbaa !311
  %5 = and i32 %3, 16, !dbg !833
  %6 = icmp eq i32 %5, 0, !dbg !833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  br i1 %6, label %7, label %8, !dbg !835

; <label>:7:                                      ; preds = %1
  tail call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #8, !dbg !836
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !836
  br label %8, !dbg !836

; <label>:8:                                      ; preds = %1, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !837
  ret void, !dbg !837
}

; Function Attrs: noredzone nounwind
define internal fastcc void @__redisAsyncFree(%struct.redisAsyncContext*) unnamed_addr #0 !dbg !838 {
  %2 = alloca %struct.redisCallback, align 8
  %3 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, !dbg !854
  %4 = bitcast %struct.redisCallback* %2 to i8*, !dbg !856
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #5, !dbg !856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  %5 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, !dbg !858
  %6 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %5, i64 0, i32 0, !dbg !871
  %7 = load %struct.redisCallback*, %struct.redisCallback** %6, align 8, !dbg !871, !tbaa !872
  %8 = icmp eq %struct.redisCallback* %7, null, !dbg !874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !876
  br i1 %8, label %22, label %9, !dbg !876

; <label>:9:                                      ; preds = %1
  %10 = bitcast %struct.redisCallbackList* %5 to i64*
  %11 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1
  %12 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %2, i64 0, i32 1
  %13 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %2, i64 0, i32 2
  br label %15, !dbg !876

; <label>:15:                                     ; preds = %9, %46
  %16 = phi %struct.redisCallback* [ %7, %9 ], [ %47, %46 ]
  %17 = bitcast %struct.redisCallback* %16 to i64*, !dbg !877
  %18 = load i64, i64* %17, align 8, !dbg !877, !tbaa !879
  store i64 %18, i64* %10, align 8, !dbg !881, !tbaa !872
  %19 = load %struct.redisCallback*, %struct.redisCallback** %11, align 8, !dbg !882, !tbaa !884
  %20 = icmp eq %struct.redisCallback* %16, %19, !dbg !885
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  br i1 %20, label %21, label %35, !dbg !886

; <label>:21:                                     ; preds = %15
  store %struct.redisCallback* null, %struct.redisCallback** %11, align 8, !dbg !887, !tbaa !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  br label %35, !dbg !888

; <label>:22:                                     ; preds = %46, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !889
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  %23 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 0, !dbg !891
  %24 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %23, i64 0, i32 0, !dbg !895
  %25 = load %struct.redisCallback*, %struct.redisCallback** %24, align 8, !dbg !895, !tbaa !872
  %26 = icmp eq %struct.redisCallback* %25, null, !dbg !897
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !898
  br i1 %26, label %27, label %29, !dbg !898

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3
  br label %70, !dbg !898

; <label>:29:                                     ; preds = %22
  %30 = bitcast %struct.redisCallbackList* %23 to i64*
  %31 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 0, i32 1
  %32 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %2, i64 0, i32 1
  %33 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3
  %34 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %2, i64 0, i32 2
  br label %49, !dbg !898

; <label>:35:                                     ; preds = %15, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !899
  %36 = bitcast %struct.redisCallback* %16 to i8*, !dbg !900
  %37 = call i8* @memcpy(i8* nonnull %4, i8* %36, i64 24) #7, !dbg !902
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !902
  call void @free(i8* %36) #7, !dbg !903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  %38 = load void (%struct.redisAsyncContext*, i8*, i8*)*, void (%struct.redisAsyncContext*, i8*, i8*)** %12, align 8, !dbg !917, !tbaa !919
  %39 = icmp eq void (%struct.redisAsyncContext*, i8*, i8*)* %38, null, !dbg !920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !921
  br i1 %39, label %46, label %40, !dbg !921

; <label>:40:                                     ; preds = %35
  %41 = load i32, i32* %13, align 8, !dbg !923, !tbaa !311
  %42 = or i32 %41, 16, !dbg !923
  store i32 %42, i32* %13, align 8, !dbg !923, !tbaa !311
  %43 = load i8*, i8** %14, align 8, !dbg !925, !tbaa !926
  call void %38(%struct.redisAsyncContext* nonnull %0, i8* null, i8* %43) #7, !dbg !927
  %44 = load i32, i32* %13, align 8, !dbg !928, !tbaa !311
  %45 = and i32 %44, -17, !dbg !928
  store i32 %45, i32* %13, align 8, !dbg !928, !tbaa !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !929
  br label %46, !dbg !929

; <label>:46:                                     ; preds = %35, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  %47 = load %struct.redisCallback*, %struct.redisCallback** %6, align 8, !dbg !871, !tbaa !872
  %48 = icmp eq %struct.redisCallback* %47, null, !dbg !874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !876
  br i1 %48, label %22, label %15, !dbg !876, !llvm.loop !931

; <label>:49:                                     ; preds = %29, %67
  %50 = phi %struct.redisCallback* [ %25, %29 ], [ %68, %67 ]
  %51 = bitcast %struct.redisCallback* %50 to i64*, !dbg !933
  %52 = load i64, i64* %51, align 8, !dbg !933, !tbaa !879
  store i64 %52, i64* %30, align 8, !dbg !934, !tbaa !872
  %53 = load %struct.redisCallback*, %struct.redisCallback** %31, align 8, !dbg !935, !tbaa !884
  %54 = icmp eq %struct.redisCallback* %50, %53, !dbg !936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  br i1 %54, label %55, label %56, !dbg !937

; <label>:55:                                     ; preds = %49
  store %struct.redisCallback* null, %struct.redisCallback** %31, align 8, !dbg !938, !tbaa !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !939
  br label %56, !dbg !939

; <label>:56:                                     ; preds = %49, %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !940
  %57 = bitcast %struct.redisCallback* %50 to i8*, !dbg !941
  %58 = call i8* @memcpy(i8* nonnull %4, i8* %57, i64 24) #7, !dbg !942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  call void @free(i8* %57) #7, !dbg !943
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  %59 = load void (%struct.redisAsyncContext*, i8*, i8*)*, void (%struct.redisAsyncContext*, i8*, i8*)** %32, align 8, !dbg !951, !tbaa !919
  %60 = icmp eq void (%struct.redisAsyncContext*, i8*, i8*)* %59, null, !dbg !952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !953
  br i1 %60, label %67, label %61, !dbg !953

; <label>:61:                                     ; preds = %56
  %62 = load i32, i32* %33, align 8, !dbg !955, !tbaa !311
  %63 = or i32 %62, 16, !dbg !955
  store i32 %63, i32* %33, align 8, !dbg !955, !tbaa !311
  %64 = load i8*, i8** %34, align 8, !dbg !956, !tbaa !926
  call void %59(%struct.redisAsyncContext* nonnull %0, i8* null, i8* %64) #7, !dbg !957
  %65 = load i32, i32* %33, align 8, !dbg !958, !tbaa !311
  %66 = and i32 %65, -17, !dbg !958
  store i32 %66, i32* %33, align 8, !dbg !958, !tbaa !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  br label %67, !dbg !959

; <label>:67:                                     ; preds = %56, %61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  %68 = load %struct.redisCallback*, %struct.redisCallback** %24, align 8, !dbg !895, !tbaa !872
  %69 = icmp eq %struct.redisCallback* %68, null, !dbg !897
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !898
  br i1 %69, label %70, label %49, !dbg !898, !llvm.loop !961

; <label>:70:                                     ; preds = %67, %27
  %71 = phi i32* [ %28, %27 ], [ %33, %67 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  %72 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 1, !dbg !964
  %73 = bitcast %struct.dict** %72 to i64*, !dbg !964
  %74 = load i64, i64* %73, align 8, !dbg !964, !tbaa !401
  %75 = call i8* @malloc(i64 32) #7, !dbg !973
  %76 = bitcast i8* %75 to i64*, !dbg !975
  store i64 %74, i64* %76, align 8, !dbg !975, !tbaa !976
  %77 = getelementptr inbounds i8, i8* %75, i64 8, !dbg !978
  %78 = bitcast i8* %77 to i32*, !dbg !978
  store i32 -1, i32* %78, align 8, !dbg !979, !tbaa !980
  %79 = getelementptr inbounds i8, i8* %75, i64 16, !dbg !981
  %80 = bitcast i8* %79 to %struct.dictEntry**, !dbg !981
  %81 = getelementptr inbounds i8, i8* %75, i64 24, !dbg !982
  %82 = bitcast i8* %79 to <2 x %struct.dictEntry*>*, !dbg !983
  store <2 x %struct.dictEntry*> zeroinitializer, <2 x %struct.dictEntry*>* %82, align 8, !dbg !983, !tbaa !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  %83 = bitcast i8* %75 to %struct.dict**
  %84 = bitcast i8* %81 to i64*
  %85 = bitcast i8* %79 to i64*
  br label %86, !dbg !986

; <label>:86:                                     ; preds = %145, %70
  %87 = phi %struct.dictEntry* [ %146, %145 ], [ null, %70 ], !dbg !987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  br label %88, !dbg !997

; <label>:88:                                     ; preds = %105, %86
  %89 = phi %struct.dictEntry* [ %108, %105 ], [ %87, %86 ], !dbg !987
  %90 = icmp eq %struct.dictEntry* %89, null, !dbg !998
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !999
  br i1 %90, label %91, label %105, !dbg !999

; <label>:91:                                     ; preds = %88
  %92 = load i32, i32* %78, align 8, !dbg !1000, !tbaa !980
  %93 = add nsw i32 %92, 1, !dbg !1000
  store i32 %93, i32* %78, align 8, !dbg !1000, !tbaa !980
  %94 = load %struct.dict*, %struct.dict** %83, align 8, !dbg !1002, !tbaa !976
  %95 = getelementptr inbounds %struct.dict, %struct.dict* %94, i64 0, i32 2, !dbg !1004
  %96 = load i64, i64* %95, align 8, !dbg !1004, !tbaa !1005
  %97 = trunc i64 %96 to i32, !dbg !1006
  %98 = icmp slt i32 %93, %97, !dbg !1007
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1008
  br i1 %98, label %99, label %110, !dbg !1008

; <label>:99:                                     ; preds = %91
  %100 = getelementptr inbounds %struct.dict, %struct.dict* %94, i64 0, i32 0, !dbg !1009
  %101 = load %struct.dictEntry**, %struct.dictEntry*** %100, align 8, !dbg !1009, !tbaa !381
  %102 = sext i32 %93 to i64, !dbg !1010
  %103 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %101, i64 %102, !dbg !1010
  %104 = bitcast %struct.dictEntry** %103 to i64*, !dbg !1010
  br label %105, !dbg !1011

; <label>:105:                                    ; preds = %88, %99
  %106 = phi i64* [ %104, %99 ], [ %84, %88 ]
  %107 = load i64, i64* %106, align 8, !dbg !1012, !tbaa !328
  store i64 %107, i64* %85, align 8, !dbg !1012, !tbaa !1013
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %108 = inttoptr i64 %107 to %struct.dictEntry*
  %109 = icmp eq i64 %107, 0, !dbg !1014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1016
  br i1 %109, label %88, label %126, !dbg !1016, !llvm.loop !1017

; <label>:110:                                    ; preds = %91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1020
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  call void @free(i8* nonnull %75) #7, !dbg !1030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1031
  %111 = load %struct.dict*, %struct.dict** %72, align 8, !dbg !1032, !tbaa !401
  call fastcc void @dictRelease(%struct.dict* %111) #8, !dbg !1033
  %112 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 2, !dbg !1034
  %113 = bitcast %struct.dict** %112 to i64*, !dbg !1034
  %114 = load i64, i64* %113, align 8, !dbg !1034, !tbaa !428
  %115 = call i8* @malloc(i64 32) #7, !dbg !1037
  %116 = bitcast i8* %115 to i64*, !dbg !1039
  store i64 %114, i64* %116, align 8, !dbg !1039, !tbaa !976
  %117 = getelementptr inbounds i8, i8* %115, i64 8, !dbg !1040
  %118 = bitcast i8* %117 to i32*, !dbg !1040
  store i32 -1, i32* %118, align 8, !dbg !1041, !tbaa !980
  %119 = getelementptr inbounds i8, i8* %115, i64 16, !dbg !1042
  %120 = bitcast i8* %119 to %struct.dictEntry**, !dbg !1042
  %121 = getelementptr inbounds i8, i8* %115, i64 24, !dbg !1043
  %122 = bitcast i8* %119 to <2 x %struct.dictEntry*>*, !dbg !1044
  store <2 x %struct.dictEntry*> zeroinitializer, <2 x %struct.dictEntry*>* %122, align 8, !dbg !1044, !tbaa !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1046
  %123 = bitcast i8* %115 to %struct.dict**
  %124 = bitcast i8* %121 to i64*
  %125 = bitcast i8* %119 to i64*
  br label %147, !dbg !1046

; <label>:126:                                    ; preds = %105
  %127 = inttoptr i64 %107 to %struct.dictEntry*
  %128 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %127, i64 0, i32 2, !dbg !1047
  %129 = bitcast %struct.dictEntry** %128 to i64*, !dbg !1047
  %130 = load i64, i64* %129, align 8, !dbg !1047, !tbaa !1049
  store i64 %130, i64* %84, align 8, !dbg !1051, !tbaa !1052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  %131 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %127, i64 0, i32 1, !dbg !1054
  %132 = bitcast i8** %131 to %struct.redisCallback**, !dbg !1054
  %133 = load %struct.redisCallback*, %struct.redisCallback** %132, align 8, !dbg !1054, !tbaa !1055
  %134 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %133, i64 0, i32 1, !dbg !1060
  %135 = load void (%struct.redisAsyncContext*, i8*, i8*)*, void (%struct.redisAsyncContext*, i8*, i8*)** %134, align 8, !dbg !1060, !tbaa !919
  %136 = icmp eq void (%struct.redisAsyncContext*, i8*, i8*)* %135, null, !dbg !1061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  br i1 %136, label %145, label %137, !dbg !1062

; <label>:137:                                    ; preds = %126
  %138 = load i32, i32* %71, align 8, !dbg !1064, !tbaa !311
  %139 = or i32 %138, 16, !dbg !1064
  store i32 %139, i32* %71, align 8, !dbg !1064, !tbaa !311
  %140 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %133, i64 0, i32 2, !dbg !1065
  %141 = load i8*, i8** %140, align 8, !dbg !1065, !tbaa !926
  call void %135(%struct.redisAsyncContext* %0, i8* null, i8* %141) #7, !dbg !1066
  %142 = load i32, i32* %71, align 8, !dbg !1067, !tbaa !311
  %143 = and i32 %142, -17, !dbg !1067
  store i32 %143, i32* %71, align 8, !dbg !1067, !tbaa !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1068
  %144 = load %struct.dictEntry*, %struct.dictEntry** %80, align 8, !dbg !987, !tbaa !1013
  br label %145, !dbg !1068

; <label>:145:                                    ; preds = %126, %137
  %146 = phi %struct.dictEntry* [ %127, %126 ], [ %144, %137 ], !dbg !987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  br label %86, !dbg !986, !llvm.loop !1070

; <label>:147:                                    ; preds = %195, %110
  %148 = phi %struct.dictEntry* [ %196, %195 ], [ null, %110 ], !dbg !1072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1075
  br label %149, !dbg !1075

; <label>:149:                                    ; preds = %166, %147
  %150 = phi %struct.dictEntry* [ %169, %166 ], [ %148, %147 ], !dbg !1072
  %151 = icmp eq %struct.dictEntry* %150, null, !dbg !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1077
  br i1 %151, label %152, label %166, !dbg !1077

; <label>:152:                                    ; preds = %149
  %153 = load i32, i32* %118, align 8, !dbg !1078, !tbaa !980
  %154 = add nsw i32 %153, 1, !dbg !1078
  store i32 %154, i32* %118, align 8, !dbg !1078, !tbaa !980
  %155 = load %struct.dict*, %struct.dict** %123, align 8, !dbg !1079, !tbaa !976
  %156 = getelementptr inbounds %struct.dict, %struct.dict* %155, i64 0, i32 2, !dbg !1080
  %157 = load i64, i64* %156, align 8, !dbg !1080, !tbaa !1005
  %158 = trunc i64 %157 to i32, !dbg !1081
  %159 = icmp slt i32 %154, %158, !dbg !1082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1083
  br i1 %159, label %160, label %171, !dbg !1083

; <label>:160:                                    ; preds = %152
  %161 = getelementptr inbounds %struct.dict, %struct.dict* %155, i64 0, i32 0, !dbg !1084
  %162 = load %struct.dictEntry**, %struct.dictEntry*** %161, align 8, !dbg !1084, !tbaa !381
  %163 = sext i32 %154 to i64, !dbg !1085
  %164 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %162, i64 %163, !dbg !1085
  %165 = bitcast %struct.dictEntry** %164 to i64*, !dbg !1085
  br label %166, !dbg !1086

; <label>:166:                                    ; preds = %149, %160
  %167 = phi i64* [ %165, %160 ], [ %124, %149 ]
  %168 = load i64, i64* %167, align 8, !dbg !1012, !tbaa !328
  store i64 %168, i64* %125, align 8, !dbg !1012, !tbaa !1013
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %169 = inttoptr i64 %168 to %struct.dictEntry*
  %170 = icmp eq i64 %168, 0, !dbg !1087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1088
  br i1 %170, label %149, label %176, !dbg !1088, !llvm.loop !1017

; <label>:171:                                    ; preds = %152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1046
  call void @free(i8* nonnull %115) #7, !dbg !1093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1094
  %172 = load %struct.dict*, %struct.dict** %112, align 8, !dbg !1095, !tbaa !428
  call fastcc void @dictRelease(%struct.dict* %172) #8, !dbg !1096
  %173 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 5, !dbg !1097
  %174 = load void (i8*)*, void (i8*)** %173, align 8, !dbg !1097, !tbaa !339
  %175 = icmp eq void (i8*)* %174, null, !dbg !1097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1100
  br i1 %175, label %200, label %197, !dbg !1100

; <label>:176:                                    ; preds = %166
  %177 = inttoptr i64 %168 to %struct.dictEntry*
  %178 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %177, i64 0, i32 2, !dbg !1101
  %179 = bitcast %struct.dictEntry** %178 to i64*, !dbg !1101
  %180 = load i64, i64* %179, align 8, !dbg !1101, !tbaa !1049
  store i64 %180, i64* %124, align 8, !dbg !1102, !tbaa !1052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1046
  %181 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %177, i64 0, i32 1, !dbg !1104
  %182 = bitcast i8** %181 to %struct.redisCallback**, !dbg !1104
  %183 = load %struct.redisCallback*, %struct.redisCallback** %182, align 8, !dbg !1104, !tbaa !1055
  %184 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %183, i64 0, i32 1, !dbg !1109
  %185 = load void (%struct.redisAsyncContext*, i8*, i8*)*, void (%struct.redisAsyncContext*, i8*, i8*)** %184, align 8, !dbg !1109, !tbaa !919
  %186 = icmp eq void (%struct.redisAsyncContext*, i8*, i8*)* %185, null, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  br i1 %186, label %195, label %187, !dbg !1111

; <label>:187:                                    ; preds = %176
  %188 = load i32, i32* %71, align 8, !dbg !1113, !tbaa !311
  %189 = or i32 %188, 16, !dbg !1113
  store i32 %189, i32* %71, align 8, !dbg !1113, !tbaa !311
  %190 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %183, i64 0, i32 2, !dbg !1114
  %191 = load i8*, i8** %190, align 8, !dbg !1114, !tbaa !926
  call void %185(%struct.redisAsyncContext* %0, i8* null, i8* %191) #7, !dbg !1115
  %192 = load i32, i32* %71, align 8, !dbg !1116, !tbaa !311
  %193 = and i32 %192, -17, !dbg !1116
  store i32 %193, i32* %71, align 8, !dbg !1116, !tbaa !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1117
  %194 = load %struct.dictEntry*, %struct.dictEntry** %120, align 8, !dbg !1072, !tbaa !1013
  br label %195, !dbg !1117

; <label>:195:                                    ; preds = %176, %187
  %196 = phi %struct.dictEntry* [ %177, %176 ], [ %194, %187 ], !dbg !1072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1046
  br label %147, !dbg !1046, !llvm.loop !1119

; <label>:197:                                    ; preds = %171
  %198 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 0, !dbg !1097
  %199 = load i8*, i8** %198, align 8, !dbg !1097, !tbaa !332
  call void %174(i8* %199) #7, !dbg !1097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1097
  br label %200, !dbg !1097

; <label>:200:                                    ; preds = %171, %197
  %201 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 5, !dbg !1121
  %202 = load void (%struct.redisAsyncContext*, i32)*, void (%struct.redisAsyncContext*, i32)** %201, align 8, !dbg !1121, !tbaa !816
  %203 = icmp eq void (%struct.redisAsyncContext*, i32)* %202, null, !dbg !1123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1124
  br i1 %203, label %217, label %204, !dbg !1124

; <label>:204:                                    ; preds = %200
  %205 = load i32, i32* %71, align 8, !dbg !1125, !tbaa !311
  %206 = and i32 %205, 2, !dbg !1126
  %207 = icmp eq i32 %206, 0, !dbg !1126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1127
  br i1 %207, label %217, label %208, !dbg !1127

; <label>:208:                                    ; preds = %204
  %209 = and i32 %205, 8, !dbg !1128
  %210 = icmp eq i32 %209, 0, !dbg !1128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  br i1 %210, label %212, label %211, !dbg !1131

; <label>:211:                                    ; preds = %208
  call void %202(%struct.redisAsyncContext* nonnull %0, i32 0) #7, !dbg !1132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  br label %217, !dbg !1134

; <label>:212:                                    ; preds = %208
  %213 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !1135
  %214 = load i32, i32* %213, align 8, !dbg !1135, !tbaa !321
  %215 = icmp ne i32 %214, 0, !dbg !1137
  %216 = sext i1 %215 to i32, !dbg !1138
  call void %202(%struct.redisAsyncContext* nonnull %0, i32 %216) #7, !dbg !1139
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %217

; <label>:217:                                    ; preds = %204, %200, %211, %212
  call void @redisFree(%struct.redisContext* nonnull %3) #7, !dbg !1140
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #5, !dbg !1141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1141
  ret void, !dbg !1141
}

; Function Attrs: noredzone nounwind
define dso_local void @redisAsyncDisconnect(%struct.redisAsyncContext*) local_unnamed_addr #0 !dbg !1142 {
  %2 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3, !dbg !1148
  %3 = load i32, i32* %2, align 8, !dbg !1149, !tbaa !311
  %4 = or i32 %3, 4, !dbg !1149
  store i32 %4, i32* %2, align 8, !dbg !1149, !tbaa !311
  %5 = and i32 %3, 16, !dbg !1150
  %6 = icmp eq i32 %5, 0, !dbg !1150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1152
  br i1 %6, label %7, label %21, !dbg !1152

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 0, !dbg !1153
  %9 = load %struct.redisCallback*, %struct.redisCallback** %8, align 8, !dbg !1153, !tbaa !1154
  %10 = icmp eq %struct.redisCallback* %9, null, !dbg !1155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1156
  br i1 %10, label %11, label %21, !dbg !1156

; <label>:11:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1165
  %12 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 0, !dbg !1167
  %13 = load i32, i32* %12, align 8, !dbg !1167, !tbaa !442
  %14 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !1168
  store i32 %13, i32* %14, align 8, !dbg !1169, !tbaa !321
  %15 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 1, i64 0, !dbg !1170
  %16 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 2, !dbg !1171
  store i8* %15, i8** %16, align 8, !dbg !1172, !tbaa !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1173
  %17 = icmp eq i32 %13, 0, !dbg !1174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1176
  br i1 %17, label %18, label %19, !dbg !1176

; <label>:18:                                     ; preds = %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1184
  br label %20, !dbg !1185

; <label>:19:                                     ; preds = %11
  store i32 %4, i32* %2, align 8, !dbg !1187, !tbaa !311
  br label %20

; <label>:20:                                     ; preds = %18, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #7, !dbg !1189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1191
  br label %21, !dbg !1191

; <label>:21:                                     ; preds = %1, %20, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1192
  ret void, !dbg !1192
}

; Function Attrs: noredzone nounwind
define dso_local void @redisProcessCallbacks(%struct.redisAsyncContext*) local_unnamed_addr #0 !dbg !1193 {
  %2 = alloca %struct.redisCallback, align 8
  %3 = alloca i8*, align 8
  %4 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, !dbg !1201
  %5 = bitcast %struct.redisCallback* %2 to i8*, !dbg !1203
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #5, !dbg !1203
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 24, i1 false), !dbg !1204
  %6 = bitcast i8** %3 to i8*, !dbg !1205
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1205
  store i8* null, i8** %3, align 8, !dbg !1206, !tbaa !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1207
  %7 = call i32 @redisGetReply(%struct.redisContext* %4, i8** nonnull %3) #7, !dbg !1208
  %8 = icmp eq i32 %7, 0, !dbg !1210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1207
  br i1 %8, label %9, label %387, !dbg !1207

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
  br label %24, !dbg !1207

; <label>:24:                                     ; preds = %9, %383
  %25 = load i8*, i8** %3, align 8, !dbg !1211, !tbaa !328
  %26 = icmp eq i8* %25, null, !dbg !1214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1215
  br i1 %26, label %27, label %98, !dbg !1215

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %15, align 8, !dbg !1216, !tbaa !311
  %29 = and i32 %28, 4, !dbg !1219
  %30 = icmp eq i32 %29, 0, !dbg !1219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1220
  br i1 %30, label %77, label %31, !dbg !1220

; <label>:31:                                     ; preds = %27
  %32 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 4, !dbg !1221
  %33 = load i8*, i8** %32, align 8, !dbg !1221, !tbaa !1222
  %34 = getelementptr inbounds i8, i8* %33, i64 -1, !dbg !1232
  %35 = load i8, i8* %34, align 1, !dbg !1232, !tbaa !1233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  %36 = trunc i8 %35 to i3, !dbg !1235
  switch i3 %36, label %58 [
    i3 0, label %37
    i3 1, label %40
    i3 2, label %44
    i3 3, label %49
    i3 -4, label %54
  ], !dbg !1235

; <label>:37:                                     ; preds = %31
  %38 = lshr i8 %35, 3, !dbg !1236
  %39 = zext i8 %38 to i64, !dbg !1236
  br label %59, !dbg !1238

; <label>:40:                                     ; preds = %31
  %41 = getelementptr inbounds i8, i8* %33, i64 -3, !dbg !1239
  %42 = load i8, i8* %41, align 1, !dbg !1240, !tbaa !1233
  %43 = zext i8 %42 to i64, !dbg !1239
  br label %59, !dbg !1241

; <label>:44:                                     ; preds = %31
  %45 = getelementptr inbounds i8, i8* %33, i64 -5, !dbg !1242
  %46 = bitcast i8* %45 to i16*, !dbg !1243
  %47 = load i16, i16* %46, align 1, !dbg !1243, !tbaa !1244
  %48 = zext i16 %47 to i64, !dbg !1242
  br label %59, !dbg !1246

; <label>:49:                                     ; preds = %31
  %50 = getelementptr inbounds i8, i8* %33, i64 -9, !dbg !1247
  %51 = bitcast i8* %50 to i32*, !dbg !1248
  %52 = load i32, i32* %51, align 1, !dbg !1248, !tbaa !1249
  %53 = zext i32 %52 to i64, !dbg !1247
  br label %59, !dbg !1250

; <label>:54:                                     ; preds = %31
  %55 = getelementptr inbounds i8, i8* %33, i64 -17, !dbg !1251
  %56 = bitcast i8* %55 to i64*, !dbg !1252
  %57 = load i64, i64* %56, align 1, !dbg !1252, !tbaa !386
  br label %59, !dbg !1253

; <label>:58:                                     ; preds = %31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1256
  br label %62, !dbg !1256

; <label>:59:                                     ; preds = %37, %40, %44, %49, %54
  %60 = phi i64 [ %57, %54 ], [ %53, %49 ], [ %48, %44 ], [ %43, %40 ], [ %39, %37 ], !dbg !1257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1255
  %61 = icmp eq i64 %60, 0, !dbg !1259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1256
  br i1 %61, label %62, label %77, !dbg !1256

; <label>:62:                                     ; preds = %58, %59
  %63 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 0, !dbg !1260
  %64 = load %struct.redisCallback*, %struct.redisCallback** %63, align 8, !dbg !1260, !tbaa !1154
  %65 = icmp eq %struct.redisCallback* %64, null, !dbg !1261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1262
  br i1 %65, label %66, label %77, !dbg !1262

; <label>:66:                                     ; preds = %62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1268
  %67 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 0, !dbg !1270
  %68 = load i32, i32* %67, align 8, !dbg !1270, !tbaa !442
  %69 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !1271
  store i32 %68, i32* %69, align 8, !dbg !1272, !tbaa !321
  %70 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 1, i64 0, !dbg !1273
  %71 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 2, !dbg !1274
  store i8* %70, i8** %71, align 8, !dbg !1275, !tbaa !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  %72 = icmp eq i32 %68, 0, !dbg !1277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1278
  br i1 %72, label %73, label %74, !dbg !1278

; <label>:73:                                     ; preds = %66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1285
  br label %76, !dbg !1286

; <label>:74:                                     ; preds = %66
  %75 = or i32 %28, 4, !dbg !1288
  store i32 %75, i32* %15, align 8, !dbg !1288, !tbaa !311
  br label %76

; <label>:76:                                     ; preds = %73, %74
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #7, !dbg !1289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1290
  br label %423, !dbg !1291

; <label>:77:                                     ; preds = %27, %62, %59
  %78 = and i32 %28, 64, !dbg !1292
  %79 = icmp eq i32 %78, 0, !dbg !1292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1294
  br i1 %79, label %422, label %80, !dbg !1294

; <label>:80:                                     ; preds = %77
  %81 = call i8* @malloc(i64 24) #7, !dbg !1304
  %82 = icmp eq i8* %81, null, !dbg !1306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1309
  br i1 %82, label %97, label %83, !dbg !1308

; <label>:83:                                     ; preds = %80
  %84 = call i8* @memcpy(i8* nonnull %81, i8* nonnull %5, i64 24) #7, !dbg !1310
  %85 = bitcast i8* %81 to %struct.redisCallback**, !dbg !1313
  store %struct.redisCallback* null, %struct.redisCallback** %85, align 8, !dbg !1314, !tbaa !879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1315
  %86 = load %struct.redisCallback*, %struct.redisCallback** %11, align 8, !dbg !1316, !tbaa !872
  %87 = icmp eq %struct.redisCallback* %86, null, !dbg !1318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1319
  br i1 %87, label %88, label %90, !dbg !1319

; <label>:88:                                     ; preds = %83
  %89 = bitcast %struct.redisCallbackList* %10 to i8**, !dbg !1320
  store i8* %81, i8** %89, align 8, !dbg !1320, !tbaa !872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1321
  br label %90, !dbg !1321

; <label>:90:                                     ; preds = %88, %83
  %91 = load %struct.redisCallback*, %struct.redisCallback** %14, align 8, !dbg !1322, !tbaa !884
  %92 = icmp eq %struct.redisCallback* %91, null, !dbg !1324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1325
  br i1 %92, label %95, label %93, !dbg !1325

; <label>:93:                                     ; preds = %90
  %94 = bitcast %struct.redisCallback* %91 to i8**, !dbg !1326
  store i8* %81, i8** %94, align 8, !dbg !1326, !tbaa !879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1327
  br label %95, !dbg !1327

; <label>:95:                                     ; preds = %93, %90
  %96 = bitcast %struct.redisCallback** %14 to i8**, !dbg !1328
  store i8* %81, i8** %96, align 8, !dbg !1328, !tbaa !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1329
  br label %97, !dbg !1329

; <label>:97:                                     ; preds = %80, %95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1330
  br label %421, !dbg !1331

; <label>:98:                                     ; preds = %24
  %99 = load %struct.redisCallback*, %struct.redisCallback** %11, align 8, !dbg !1336, !tbaa !872
  %100 = icmp eq %struct.redisCallback* %99, null, !dbg !1338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1339
  br i1 %100, label %110, label %101, !dbg !1339

; <label>:101:                                    ; preds = %98
  %102 = bitcast %struct.redisCallback* %99 to i64*, !dbg !1340
  %103 = load i64, i64* %102, align 8, !dbg !1340, !tbaa !879
  store i64 %103, i64* %13, align 8, !dbg !1341, !tbaa !872
  %104 = load %struct.redisCallback*, %struct.redisCallback** %14, align 8, !dbg !1342, !tbaa !884
  %105 = icmp eq %struct.redisCallback* %99, %104, !dbg !1343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1344
  br i1 %105, label %106, label %107, !dbg !1344

; <label>:106:                                    ; preds = %101
  store %struct.redisCallback* null, %struct.redisCallback** %14, align 8, !dbg !1345, !tbaa !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1346
  br label %107, !dbg !1346

; <label>:107:                                    ; preds = %101, %106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1347
  %108 = bitcast %struct.redisCallback* %99 to i8*, !dbg !1348
  %109 = call i8* @memcpy(i8* nonnull %5, i8* %108, i64 24) #7, !dbg !1349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1349
  call void @free(i8* %108) #7, !dbg !1350
  br label %355, !dbg !1351

; <label>:110:                                    ; preds = %98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1351
  %111 = bitcast i8* %25 to i32*, !dbg !1354
  %112 = load i32, i32* %111, align 8, !dbg !1354, !tbaa !1357
  %113 = icmp eq i32 %112, 6, !dbg !1360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1361
  br i1 %113, label %114, label %147, !dbg !1361

; <label>:114:                                    ; preds = %110
  %115 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 0, !dbg !1362
  store i32 2, i32* %115, align 8, !dbg !1364, !tbaa !442
  %116 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 1, i64 0, !dbg !1365
  %117 = getelementptr inbounds i8, i8* %25, i64 24, !dbg !1366
  %118 = bitcast i8* %117 to i8**, !dbg !1366
  %119 = load i8*, i8** %118, align 8, !dbg !1366, !tbaa !1367
  %120 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %116, i64 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %119) #7, !dbg !1368
  %121 = load %struct.redisReader*, %struct.redisReader** %16, align 8, !dbg !1369, !tbaa !1370
  %122 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %121, i64 0, i32 9, !dbg !1371
  %123 = load %struct.redisReplyObjectFunctions*, %struct.redisReplyObjectFunctions** %122, align 8, !dbg !1371, !tbaa !1372
  %124 = getelementptr inbounds %struct.redisReplyObjectFunctions, %struct.redisReplyObjectFunctions* %123, i64 0, i32 4, !dbg !1374
  %125 = load void (i8*)*, void (i8*)** %124, align 8, !dbg !1374, !tbaa !1375
  %126 = load i8*, i8** %3, align 8, !dbg !1377, !tbaa !328
  call void %125(i8* %126) #7, !dbg !1378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1383
  %127 = load i32, i32* %115, align 8, !dbg !1385, !tbaa !442
  %128 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !1386
  store i32 %127, i32* %128, align 8, !dbg !1387, !tbaa !321
  %129 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 2, !dbg !1388
  store i8* %116, i8** %129, align 8, !dbg !1389, !tbaa !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1390
  %130 = icmp eq i32 %127, 0, !dbg !1391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1392
  br i1 %130, label %131, label %143, !dbg !1392

; <label>:131:                                    ; preds = %114
  %132 = load %struct.redisCallback*, %struct.redisCallback** %11, align 8, !dbg !1396, !tbaa !872
  %133 = icmp eq %struct.redisCallback* %132, null, !dbg !1398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1399
  br i1 %133, label %140, label %134, !dbg !1399

; <label>:134:                                    ; preds = %131
  %135 = bitcast %struct.redisCallback* %132 to i64*, !dbg !1400
  %136 = load i64, i64* %135, align 8, !dbg !1400, !tbaa !879
  store i64 %136, i64* %13, align 8, !dbg !1401, !tbaa !872
  %137 = load %struct.redisCallback*, %struct.redisCallback** %14, align 8, !dbg !1402, !tbaa !884
  %138 = icmp eq %struct.redisCallback* %132, %137, !dbg !1403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1404
  br i1 %138, label %139, label %141, !dbg !1404

; <label>:139:                                    ; preds = %134
  store %struct.redisCallback* null, %struct.redisCallback** %14, align 8, !dbg !1405, !tbaa !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1406
  br label %141, !dbg !1406

; <label>:140:                                    ; preds = %131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1408
  br label %146, !dbg !1409

; <label>:141:                                    ; preds = %139, %134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1410
  %142 = bitcast %struct.redisCallback* %132 to i8*, !dbg !1411
  call void @free(i8* %142) #7, !dbg !1412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1409
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 339, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.__redisAsyncDisconnect, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !1409
  unreachable

; <label>:143:                                    ; preds = %114
  %144 = load i32, i32* %15, align 8, !dbg !1415, !tbaa !311
  %145 = or i32 %144, 4, !dbg !1415
  store i32 %145, i32* %15, align 8, !dbg !1415, !tbaa !311
  br label %146

; <label>:146:                                    ; preds = %140, %143
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #7, !dbg !1416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1417
  br label %423, !dbg !1418

; <label>:147:                                    ; preds = %110
  %148 = load i32, i32* %15, align 8, !dbg !1419, !tbaa !311
  %149 = and i32 %148, 32, !dbg !1419
  %150 = icmp eq i32 %149, 0, !dbg !1419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1419
  br i1 %150, label %151, label %155, !dbg !1419

; <label>:151:                                    ; preds = %147
  %152 = and i32 %148, 64, !dbg !1419
  %153 = icmp eq i32 %152, 0, !dbg !1419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1419
  br i1 %153, label %154, label %356, !dbg !1419

; <label>:154:                                    ; preds = %151
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 463, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.redisProcessCallbacks, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1419
  unreachable

; <label>:155:                                    ; preds = %147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1420
  %156 = load i32, i32* %111, align 8, !dbg !1444, !tbaa !1357
  %157 = icmp eq i32 %156, 2, !dbg !1445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1446
  br i1 %157, label %158, label %342, !dbg !1446

; <label>:158:                                    ; preds = %155
  %159 = getelementptr inbounds i8, i8* %25, i64 32, !dbg !1447
  %160 = bitcast i8* %159 to i64*, !dbg !1447
  %161 = load i64, i64* %160, align 8, !dbg !1447, !tbaa !1448
  %162 = icmp ugt i64 %161, 1, !dbg !1447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1447
  br i1 %162, label %164, label %163, !dbg !1447

; <label>:163:                                    ; preds = %158
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 375, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.__redisGetSubscribeCallback, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !1447
  unreachable

; <label>:164:                                    ; preds = %158
  %165 = getelementptr inbounds i8, i8* %25, i64 40, !dbg !1449
  %166 = bitcast i8* %165 to %struct.redisReply***, !dbg !1449
  %167 = load %struct.redisReply**, %struct.redisReply*** %166, align 8, !dbg !1449, !tbaa !1450
  %168 = load %struct.redisReply*, %struct.redisReply** %167, align 8, !dbg !1449, !tbaa !328
  %169 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %168, i64 0, i32 0, !dbg !1449
  %170 = load i32, i32* %169, align 8, !dbg !1449, !tbaa !1357
  %171 = icmp eq i32 %170, 1, !dbg !1449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1449
  br i1 %171, label %173, label %172, !dbg !1449

; <label>:172:                                    ; preds = %164
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 376, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.__redisGetSubscribeCallback, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !1449
  unreachable

; <label>:173:                                    ; preds = %164
  %174 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %168, i64 0, i32 3, !dbg !1451
  %175 = load i8*, i8** %174, align 8, !dbg !1451, !tbaa !1367
  %176 = load i8, i8* %175, align 1, !dbg !1453, !tbaa !1233
  %177 = call i8* @__locale_ctype_ptr() #7, !dbg !1453
  %178 = getelementptr inbounds i8, i8* %177, i64 1, !dbg !1453
  %179 = sext i8 %176 to i32, !dbg !1453
  %180 = sext i8 %176 to i64, !dbg !1453
  %181 = getelementptr inbounds i8, i8* %178, i64 %180, !dbg !1453
  %182 = load i8, i8* %181, align 1, !dbg !1453, !tbaa !1233
  %183 = and i8 %182, 3, !dbg !1453
  %184 = icmp eq i8 %183, 1, !dbg !1453
  %185 = add nsw i32 %179, 32, !dbg !1453
  %186 = select i1 %184, i32 %185, i32 %179, !dbg !1453
  %187 = icmp eq i32 %186, 112, !dbg !1454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1455
  %188 = select i1 %187, %struct.dict** %22, %struct.dict** %23, !dbg !1455
  %189 = load %struct.dict*, %struct.dict** %188, align 8, !dbg !1457, !tbaa !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %190 = load %struct.redisReply**, %struct.redisReply*** %166, align 8, !dbg !1458, !tbaa !1450
  %191 = getelementptr inbounds %struct.redisReply*, %struct.redisReply** %190, i64 1, !dbg !1458
  %192 = load %struct.redisReply*, %struct.redisReply** %191, align 8, !dbg !1458, !tbaa !328
  %193 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %192, i64 0, i32 0, !dbg !1458
  %194 = load i32, i32* %193, align 8, !dbg !1458, !tbaa !1357
  %195 = icmp eq i32 %194, 1, !dbg !1458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1458
  br i1 %195, label %197, label %196, !dbg !1458

; <label>:196:                                    ; preds = %173
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 386, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.__redisGetSubscribeCallback, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !1458
  unreachable

; <label>:197:                                    ; preds = %173
  %198 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %192, i64 0, i32 3, !dbg !1459
  %199 = load i8*, i8** %198, align 8, !dbg !1459, !tbaa !1367
  %200 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %192, i64 0, i32 2, !dbg !1460
  %201 = load i64, i64* %200, align 8, !dbg !1460, !tbaa !1461
  %202 = call i8* @sdsnewlen(i8* %199, i64 %201) #7, !dbg !1462
  %203 = getelementptr inbounds %struct.dict, %struct.dict* %189, i64 0, i32 2, !dbg !1475
  %204 = load i64, i64* %203, align 8, !dbg !1475, !tbaa !1005
  %205 = icmp eq i64 %204, 0, !dbg !1477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1478
  br i1 %205, label %244, label %206, !dbg !1478

; <label>:206:                                    ; preds = %197
  %207 = getelementptr inbounds %struct.dict, %struct.dict* %189, i64 0, i32 1, !dbg !1479
  %208 = load %struct.dictType*, %struct.dictType** %207, align 8, !dbg !1479, !tbaa !393
  %209 = getelementptr inbounds %struct.dictType, %struct.dictType* %208, i64 0, i32 0, !dbg !1479
  %210 = load i32 (i8*)*, i32 (i8*)** %209, align 8, !dbg !1479, !tbaa !1480
  %211 = call i32 %210(i8* %202) #7, !dbg !1479
  %212 = getelementptr inbounds %struct.dict, %struct.dict* %189, i64 0, i32 3, !dbg !1482
  %213 = load i64, i64* %212, align 8, !dbg !1482, !tbaa !1483
  %214 = trunc i64 %213 to i32, !dbg !1479
  %215 = and i32 %211, %214, !dbg !1479
  %216 = getelementptr inbounds %struct.dict, %struct.dict* %189, i64 0, i32 0, !dbg !1485
  %217 = load %struct.dictEntry**, %struct.dictEntry*** %216, align 8, !dbg !1485, !tbaa !381
  %218 = zext i32 %215 to i64, !dbg !1486
  %219 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %217, i64 %218, !dbg !1486
  %220 = load %struct.dictEntry*, %struct.dictEntry** %219, align 8, !dbg !1486, !tbaa !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1488
  %221 = icmp eq %struct.dictEntry* %220, null, !dbg !1488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1488
  br i1 %221, label %244, label %222, !dbg !1488

; <label>:222:                                    ; preds = %206
  %223 = getelementptr inbounds %struct.dict, %struct.dict* %189, i64 0, i32 5
  br label %224, !dbg !1488

; <label>:224:                                    ; preds = %240, %222
  %225 = phi %struct.dictEntry* [ %220, %222 ], [ %242, %240 ]
  %226 = load %struct.dictType*, %struct.dictType** %207, align 8, !dbg !1489, !tbaa !393
  %227 = getelementptr inbounds %struct.dictType, %struct.dictType* %226, i64 0, i32 3, !dbg !1489
  %228 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %227, align 8, !dbg !1489, !tbaa !1492
  %229 = icmp eq i32 (i8*, i8*, i8*)* %228, null, !dbg !1489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  br i1 %229, label %236, label %230, !dbg !1493

; <label>:230:                                    ; preds = %224
  %231 = load i8*, i8** %223, align 8, !dbg !1489, !tbaa !396
  %232 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %225, i64 0, i32 0, !dbg !1489
  %233 = load i8*, i8** %232, align 8, !dbg !1489, !tbaa !1494
  %234 = call i32 %228(i8* %231, i8* %202, i8* %233) #7, !dbg !1489
  %235 = icmp eq i32 %234, 0, !dbg !1489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1489
  br i1 %235, label %240, label %245, !dbg !1489

; <label>:236:                                    ; preds = %224
  %237 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %225, i64 0, i32 0, !dbg !1489
  %238 = load i8*, i8** %237, align 8, !dbg !1489, !tbaa !1494
  %239 = icmp eq i8* %238, %202, !dbg !1489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  br i1 %239, label %245, label %240, !dbg !1493

; <label>:240:                                    ; preds = %236, %230
  %241 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %225, i64 0, i32 2, !dbg !1495
  %242 = load %struct.dictEntry*, %struct.dictEntry** %241, align 8, !dbg !1495, !tbaa !1049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1488
  %243 = icmp eq %struct.dictEntry* %242, null, !dbg !1488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1488
  br i1 %243, label %244, label %224, !dbg !1488, !llvm.loop !1496

; <label>:244:                                    ; preds = %240, %206, %197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1502
  br label %341, !dbg !1502

; <label>:245:                                    ; preds = %236, %230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1502
  %246 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %225, i64 0, i32 1, !dbg !1504
  %247 = load i8*, i8** %246, align 8, !dbg !1504, !tbaa !1055
  %248 = call i8* @memcpy(i8* nonnull %5, i8* %247, i64 24) #7, !dbg !1507
  %249 = zext i1 %187 to i64, !dbg !1508
  %250 = getelementptr inbounds i8, i8* %175, i64 %249, !dbg !1508
  %251 = call i32 @strcasecmp(i8* %250, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !1510
  %252 = icmp eq i32 %251, 0, !dbg !1511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1512
  br i1 %252, label %253, label %341, !dbg !1512

; <label>:253:                                    ; preds = %245
  %254 = load i64, i64* %203, align 8, !dbg !1526, !tbaa !1005
  %255 = icmp eq i64 %254, 0, !dbg !1528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1529
  br i1 %255, label %326, label %256, !dbg !1529

; <label>:256:                                    ; preds = %253
  %257 = load %struct.dictType*, %struct.dictType** %207, align 8, !dbg !1530, !tbaa !393
  %258 = getelementptr inbounds %struct.dictType, %struct.dictType* %257, i64 0, i32 0, !dbg !1530
  %259 = load i32 (i8*)*, i32 (i8*)** %258, align 8, !dbg !1530, !tbaa !1480
  %260 = call i32 %259(i8* %202) #7, !dbg !1530
  %261 = load i64, i64* %212, align 8, !dbg !1531, !tbaa !1483
  %262 = trunc i64 %261 to i32, !dbg !1530
  %263 = and i32 %260, %262, !dbg !1530
  %264 = load %struct.dictEntry**, %struct.dictEntry*** %216, align 8, !dbg !1533, !tbaa !381
  %265 = zext i32 %263 to i64, !dbg !1534
  %266 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %264, i64 %265, !dbg !1534
  %267 = load %struct.dictEntry*, %struct.dictEntry** %266, align 8, !dbg !1534, !tbaa !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1537
  %268 = icmp eq %struct.dictEntry* %267, null, !dbg !1537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1537
  br i1 %268, label %326, label %269, !dbg !1537

; <label>:269:                                    ; preds = %256, %322
  %270 = phi %struct.dictEntry* [ %324, %322 ], [ %267, %256 ]
  %271 = phi %struct.dictEntry* [ %270, %322 ], [ null, %256 ]
  %272 = load %struct.dictType*, %struct.dictType** %207, align 8, !dbg !1538, !tbaa !393
  %273 = getelementptr inbounds %struct.dictType, %struct.dictType* %272, i64 0, i32 3, !dbg !1538
  %274 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %273, align 8, !dbg !1538, !tbaa !1492
  %275 = icmp eq i32 (i8*, i8*, i8*)* %274, null, !dbg !1538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1541
  br i1 %275, label %282, label %276, !dbg !1541

; <label>:276:                                    ; preds = %269
  %277 = load i8*, i8** %223, align 8, !dbg !1538, !tbaa !396
  %278 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %270, i64 0, i32 0, !dbg !1538
  %279 = load i8*, i8** %278, align 8, !dbg !1538, !tbaa !1494
  %280 = call i32 %274(i8* %277, i8* %202, i8* %279) #7, !dbg !1538
  %281 = icmp eq i32 %280, 0, !dbg !1538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1538
  br i1 %281, label %322, label %286, !dbg !1538

; <label>:282:                                    ; preds = %269
  %283 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %270, i64 0, i32 0, !dbg !1538
  %284 = load i8*, i8** %283, align 8, !dbg !1538, !tbaa !1494
  %285 = icmp eq i8* %284, %202, !dbg !1538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1541
  br i1 %285, label %286, label %322, !dbg !1541

; <label>:286:                                    ; preds = %282, %276
  %287 = bitcast %struct.dictEntry* %270 to i8*, !dbg !1535
  %288 = icmp eq %struct.dictEntry* %271, null, !dbg !1542
  %289 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %270, i64 0, i32 2, !dbg !1545
  %290 = bitcast %struct.dictEntry** %289 to i64*, !dbg !1545
  %291 = load i64, i64* %290, align 8, !dbg !1545, !tbaa !1049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1546
  br i1 %288, label %294, label %292, !dbg !1546

; <label>:292:                                    ; preds = %286
  %293 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %271, i64 0, i32 2, !dbg !1547
  br label %297, !dbg !1548

; <label>:294:                                    ; preds = %286
  %295 = load %struct.dictEntry**, %struct.dictEntry*** %216, align 8, !dbg !1549, !tbaa !381
  %296 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %295, i64 %265, !dbg !1550
  br label %297

; <label>:297:                                    ; preds = %294, %292
  %298 = phi %struct.dictEntry** [ %296, %294 ], [ %293, %292 ]
  %299 = bitcast %struct.dictEntry** %298 to i64*, !dbg !1551
  store i64 %291, i64* %299, align 8, !dbg !1551, !tbaa !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %300 = load %struct.dictType*, %struct.dictType** %207, align 8, !dbg !1552, !tbaa !393
  %301 = getelementptr inbounds %struct.dictType, %struct.dictType* %300, i64 0, i32 4, !dbg !1552
  %302 = load void (i8*, i8*)*, void (i8*, i8*)** %301, align 8, !dbg !1552, !tbaa !1554
  %303 = icmp eq void (i8*, i8*)* %302, null, !dbg !1552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1555
  br i1 %303, label %309, label %304, !dbg !1555

; <label>:304:                                    ; preds = %297
  %305 = load i8*, i8** %223, align 8, !dbg !1552, !tbaa !396
  %306 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %270, i64 0, i32 0, !dbg !1552
  %307 = load i8*, i8** %306, align 8, !dbg !1552, !tbaa !1494
  call void %302(i8* %305, i8* %307) #7, !dbg !1552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1552
  %308 = load %struct.dictType*, %struct.dictType** %207, align 8, !dbg !1556, !tbaa !393
  br label %309, !dbg !1552

; <label>:309:                                    ; preds = %304, %297
  %310 = phi %struct.dictType* [ %300, %297 ], [ %308, %304 ], !dbg !1556
  %311 = getelementptr inbounds %struct.dictType, %struct.dictType* %310, i64 0, i32 5, !dbg !1556
  %312 = load void (i8*, i8*)*, void (i8*, i8*)** %311, align 8, !dbg !1556, !tbaa !1558
  %313 = icmp eq void (i8*, i8*)* %312, null, !dbg !1556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1559
  br i1 %313, label %318, label %314, !dbg !1559

; <label>:314:                                    ; preds = %309
  %315 = load i8*, i8** %223, align 8, !dbg !1556, !tbaa !396
  %316 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %270, i64 0, i32 1, !dbg !1556
  %317 = load i8*, i8** %316, align 8, !dbg !1556, !tbaa !1055
  call void %312(i8* %315, i8* %317) #7, !dbg !1556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1556
  br label %318, !dbg !1556

; <label>:318:                                    ; preds = %314, %309
  call void @free(i8* nonnull %287) #7, !dbg !1560
  %319 = getelementptr inbounds %struct.dict, %struct.dict* %189, i64 0, i32 4, !dbg !1561
  %320 = load i64, i64* %319, align 8, !dbg !1562, !tbaa !389
  %321 = add i64 %320, -1, !dbg !1562
  store i64 %321, i64* %319, align 8, !dbg !1562, !tbaa !389
  br label %326, !dbg !1563

; <label>:322:                                    ; preds = %282, %276
  %323 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %270, i64 0, i32 2, !dbg !1564
  %324 = load %struct.dictEntry*, %struct.dictEntry** %323, align 8, !dbg !1564, !tbaa !1049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1537
  %325 = icmp eq %struct.dictEntry* %324, null, !dbg !1537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1537
  br i1 %325, label %326, label %269, !dbg !1537, !llvm.loop !1565

; <label>:326:                                    ; preds = %322, %256, %253, %318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1568
  %327 = load %struct.redisReply**, %struct.redisReply*** %166, align 8, !dbg !1569, !tbaa !1450
  %328 = getelementptr inbounds %struct.redisReply*, %struct.redisReply** %327, i64 2, !dbg !1569
  %329 = load %struct.redisReply*, %struct.redisReply** %328, align 8, !dbg !1569, !tbaa !328
  %330 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %329, i64 0, i32 0, !dbg !1569
  %331 = load i32, i32* %330, align 8, !dbg !1569, !tbaa !1357
  %332 = icmp eq i32 %331, 3, !dbg !1569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1569
  br i1 %332, label %334, label %333, !dbg !1569

; <label>:333:                                    ; preds = %326
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 398, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.__redisGetSubscribeCallback, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !1569
  unreachable

; <label>:334:                                    ; preds = %326
  %335 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %329, i64 0, i32 1, !dbg !1570
  %336 = load i64, i64* %335, align 8, !dbg !1570, !tbaa !1572
  %337 = icmp eq i64 %336, 0, !dbg !1573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1574
  br i1 %337, label %338, label %341, !dbg !1574

; <label>:338:                                    ; preds = %334
  %339 = load i32, i32* %15, align 8, !dbg !1575, !tbaa !311
  %340 = and i32 %339, -33, !dbg !1575
  store i32 %340, i32* %15, align 8, !dbg !1575, !tbaa !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1576
  br label %341, !dbg !1576

; <label>:341:                                    ; preds = %338, %334, %245, %244
  call void @sdsfree(i8* %202) #7, !dbg !1577
  br label %355, !dbg !1578

; <label>:342:                                    ; preds = %155
  %343 = load %struct.redisCallback*, %struct.redisCallback** %19, align 8, !dbg !1583, !tbaa !872
  %344 = icmp eq %struct.redisCallback* %343, null, !dbg !1585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1586
  br i1 %344, label %354, label %345, !dbg !1586

; <label>:345:                                    ; preds = %342
  %346 = bitcast %struct.redisCallback* %343 to i64*, !dbg !1587
  %347 = load i64, i64* %346, align 8, !dbg !1587, !tbaa !879
  store i64 %347, i64* %20, align 8, !dbg !1588, !tbaa !872
  %348 = load %struct.redisCallback*, %struct.redisCallback** %21, align 8, !dbg !1589, !tbaa !884
  %349 = icmp eq %struct.redisCallback* %343, %348, !dbg !1590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1591
  br i1 %349, label %350, label %351, !dbg !1591

; <label>:350:                                    ; preds = %345
  store %struct.redisCallback* null, %struct.redisCallback** %21, align 8, !dbg !1592, !tbaa !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1593
  br label %351, !dbg !1593

; <label>:351:                                    ; preds = %350, %345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1594
  %352 = bitcast %struct.redisCallback* %343 to i8*, !dbg !1595
  %353 = call i8* @memcpy(i8* nonnull %5, i8* %352, i64 24) #7, !dbg !1596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1596
  call void @free(i8* %352) #7, !dbg !1597
  br label %354, !dbg !1598

; <label>:354:                                    ; preds = %342, %351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1600
  br label %355

; <label>:355:                                    ; preds = %354, %341, %107
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1457
  br label %356, !dbg !1457

; <label>:356:                                    ; preds = %355, %151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1457
  %357 = load void (%struct.redisAsyncContext*, i8*, i8*)*, void (%struct.redisAsyncContext*, i8*, i8*)** %12, align 8, !dbg !1601, !tbaa !919
  %358 = icmp eq void (%struct.redisAsyncContext*, i8*, i8*)* %357, null, !dbg !1603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1604
  br i1 %358, label %376, label %359, !dbg !1604

; <label>:359:                                    ; preds = %356
  %360 = load i8*, i8** %3, align 8, !dbg !1605, !tbaa !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1611
  %361 = load i32, i32* %15, align 8, !dbg !1613, !tbaa !311
  %362 = or i32 %361, 16, !dbg !1613
  store i32 %362, i32* %15, align 8, !dbg !1613, !tbaa !311
  %363 = load i8*, i8** %17, align 8, !dbg !1614, !tbaa !926
  call void %357(%struct.redisAsyncContext* %0, i8* %360, i8* %363) #7, !dbg !1615
  %364 = load i32, i32* %15, align 8, !dbg !1616, !tbaa !311
  %365 = and i32 %364, -17, !dbg !1616
  store i32 %365, i32* %15, align 8, !dbg !1616, !tbaa !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1618
  %366 = load %struct.redisReader*, %struct.redisReader** %16, align 8, !dbg !1619, !tbaa !1370
  %367 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %366, i64 0, i32 9, !dbg !1620
  %368 = load %struct.redisReplyObjectFunctions*, %struct.redisReplyObjectFunctions** %367, align 8, !dbg !1620, !tbaa !1372
  %369 = getelementptr inbounds %struct.redisReplyObjectFunctions, %struct.redisReplyObjectFunctions* %368, i64 0, i32 4, !dbg !1621
  %370 = load void (i8*)*, void (i8*)** %369, align 8, !dbg !1621, !tbaa !1375
  %371 = load i8*, i8** %3, align 8, !dbg !1622, !tbaa !328
  call void %370(i8* %371) #7, !dbg !1623
  %372 = load i32, i32* %15, align 8, !dbg !1624, !tbaa !311
  %373 = and i32 %372, 8, !dbg !1626
  %374 = icmp eq i32 %373, 0, !dbg !1626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1627
  br i1 %374, label %383, label %375, !dbg !1627

; <label>:375:                                    ; preds = %359
  call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #8, !dbg !1628
  br label %423, !dbg !1630

; <label>:376:                                    ; preds = %356
  %377 = load %struct.redisReader*, %struct.redisReader** %16, align 8, !dbg !1631, !tbaa !1370
  %378 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %377, i64 0, i32 9, !dbg !1633
  %379 = load %struct.redisReplyObjectFunctions*, %struct.redisReplyObjectFunctions** %378, align 8, !dbg !1633, !tbaa !1372
  %380 = getelementptr inbounds %struct.redisReplyObjectFunctions, %struct.redisReplyObjectFunctions* %379, i64 0, i32 4, !dbg !1634
  %381 = load void (i8*)*, void (i8*)** %380, align 8, !dbg !1634, !tbaa !1375
  %382 = load i8*, i8** %3, align 8, !dbg !1635, !tbaa !328
  call void %381(i8* %382) #7, !dbg !1636
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %383

; <label>:383:                                    ; preds = %359, %376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1207
  %384 = call i32 @redisGetReply(%struct.redisContext* nonnull %4, i8** nonnull %3) #7, !dbg !1208
  %385 = icmp eq i32 %384, 0, !dbg !1210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1207
  br i1 %385, label %24, label %386, !dbg !1207, !llvm.loop !1637

; <label>:386:                                    ; preds = %383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1645
  br label %391, !dbg !1645

; <label>:387:                                    ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1639
  %388 = icmp eq %struct.redisAsyncContext* %0, null, !dbg !1646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1645
  br i1 %388, label %389, label %391, !dbg !1645

; <label>:389:                                    ; preds = %387
  %390 = load i32, i32* inttoptr (i64 208 to i32*), align 16, !dbg !1648, !tbaa !321
  br label %397, !dbg !1645

; <label>:391:                                    ; preds = %386, %387
  %392 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 0, !dbg !1650
  %393 = load i32, i32* %392, align 8, !dbg !1650, !tbaa !442
  %394 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !1651
  store i32 %393, i32* %394, align 8, !dbg !1652, !tbaa !321
  %395 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 1, i64 0, !dbg !1653
  %396 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 2, !dbg !1654
  store i8* %395, i8** %396, align 8, !dbg !1655, !tbaa !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1656
  br label %397, !dbg !1656

; <label>:397:                                    ; preds = %391, %389
  %398 = phi i32 [ %390, %389 ], [ %393, %391 ], !dbg !1648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1656
  %399 = icmp eq i32 %398, 0, !dbg !1657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1658
  br i1 %399, label %400, label %416, !dbg !1658

; <label>:400:                                    ; preds = %397
  %401 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, !dbg !1659
  %402 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %401, i64 0, i32 0, !dbg !1663
  %403 = load %struct.redisCallback*, %struct.redisCallback** %402, align 8, !dbg !1663, !tbaa !872
  %404 = icmp eq %struct.redisCallback* %403, null, !dbg !1665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1666
  br i1 %404, label %413, label %405, !dbg !1666

; <label>:405:                                    ; preds = %400
  %406 = bitcast %struct.redisCallback* %403 to i64*, !dbg !1667
  %407 = load i64, i64* %406, align 8, !dbg !1667, !tbaa !879
  %408 = bitcast %struct.redisCallbackList* %401 to i64*, !dbg !1668
  store i64 %407, i64* %408, align 8, !dbg !1668, !tbaa !872
  %409 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1, !dbg !1669
  %410 = load %struct.redisCallback*, %struct.redisCallback** %409, align 8, !dbg !1669, !tbaa !884
  %411 = icmp eq %struct.redisCallback* %403, %410, !dbg !1670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1671
  br i1 %411, label %412, label %414, !dbg !1671

; <label>:412:                                    ; preds = %405
  store %struct.redisCallback* null, %struct.redisCallback** %409, align 8, !dbg !1672, !tbaa !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1673
  br label %414, !dbg !1673

; <label>:413:                                    ; preds = %400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1675
  br label %420, !dbg !1659

; <label>:414:                                    ; preds = %412, %405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1676
  %415 = bitcast %struct.redisCallback* %403 to i8*, !dbg !1677
  call void @free(i8* %415) #7, !dbg !1678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1659
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 339, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.__redisAsyncDisconnect, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !1659
  unreachable

; <label>:416:                                    ; preds = %397
  %417 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3, !dbg !1681
  %418 = load i32, i32* %417, align 8, !dbg !1682, !tbaa !311
  %419 = or i32 %418, 4, !dbg !1682
  store i32 %419, i32* %417, align 8, !dbg !1682, !tbaa !311
  br label %420

; <label>:420:                                    ; preds = %413, %416
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #7, !dbg !1683
  br label %421, !dbg !1684

; <label>:421:                                    ; preds = %420, %97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1685
  br label %422, !dbg !1685

; <label>:422:                                    ; preds = %421, %77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1685
  br label %423, !dbg !1686

; <label>:423:                                    ; preds = %422, %375, %146, %76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1687
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1686
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #5, !dbg !1686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1686
  ret void, !dbg !1686
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
define dso_local void @redisAsyncHandleRead(%struct.redisAsyncContext*) local_unnamed_addr #0 !dbg !1688 {
  %2 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, !dbg !1693
  %3 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3, !dbg !1695
  %4 = load i32, i32* %3, align 8, !dbg !1695, !tbaa !311
  %5 = and i32 %4, 2, !dbg !1697
  %6 = icmp eq i32 %5, 0, !dbg !1697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1698
  br i1 %6, label %7, label %57, !dbg !1698

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @redisCheckSocketError(%struct.redisContext* %2) #7, !dbg !1710
  %9 = icmp eq i32 %8, -1, !dbg !1712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1713
  br i1 %9, label %10, label %45, !dbg !1713

; <label>:10:                                     ; preds = %7
  %11 = tail call i32* @__errno() #7, !dbg !1714
  %12 = load i32, i32* %11, align 4, !dbg !1714, !tbaa !1249
  %13 = icmp eq i32 %12, 119, !dbg !1717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1718
  br i1 %13, label %53, label %14, !dbg !1718

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 6, !dbg !1719
  %16 = load void (%struct.redisAsyncContext*, i32)*, void (%struct.redisAsyncContext*, i32)** %15, align 8, !dbg !1719, !tbaa !793
  %17 = icmp eq void (%struct.redisAsyncContext*, i32)* %16, null, !dbg !1721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1722
  br i1 %17, label %19, label %18, !dbg !1722

; <label>:18:                                     ; preds = %14
  tail call void %16(%struct.redisAsyncContext* nonnull %0, i32 -1) #7, !dbg !1723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1723
  br label %19, !dbg !1723

; <label>:19:                                     ; preds = %18, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1728
  %20 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 0, !dbg !1730
  %21 = load i32, i32* %20, align 8, !dbg !1730, !tbaa !442
  %22 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !1731
  store i32 %21, i32* %22, align 8, !dbg !1732, !tbaa !321
  %23 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 1, i64 0, !dbg !1733
  %24 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 2, !dbg !1734
  store i8* %23, i8** %24, align 8, !dbg !1735, !tbaa !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1736
  %25 = icmp eq i32 %21, 0, !dbg !1737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1738
  br i1 %25, label %26, label %42, !dbg !1738

; <label>:26:                                     ; preds = %19
  %27 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, !dbg !1739
  %28 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %27, i64 0, i32 0, !dbg !1743
  %29 = load %struct.redisCallback*, %struct.redisCallback** %28, align 8, !dbg !1743, !tbaa !872
  %30 = icmp eq %struct.redisCallback* %29, null, !dbg !1745
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1746
  br i1 %30, label %39, label %31, !dbg !1746

; <label>:31:                                     ; preds = %26
  %32 = bitcast %struct.redisCallback* %29 to i64*, !dbg !1747
  %33 = load i64, i64* %32, align 8, !dbg !1747, !tbaa !879
  %34 = bitcast %struct.redisCallbackList* %27 to i64*, !dbg !1748
  store i64 %33, i64* %34, align 8, !dbg !1748, !tbaa !872
  %35 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1, !dbg !1749
  %36 = load %struct.redisCallback*, %struct.redisCallback** %35, align 8, !dbg !1749, !tbaa !884
  %37 = icmp eq %struct.redisCallback* %29, %36, !dbg !1750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1751
  br i1 %37, label %38, label %40, !dbg !1751

; <label>:38:                                     ; preds = %31
  store %struct.redisCallback* null, %struct.redisCallback** %35, align 8, !dbg !1752, !tbaa !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1753
  br label %40, !dbg !1753

; <label>:39:                                     ; preds = %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1755
  br label %52, !dbg !1739

; <label>:40:                                     ; preds = %38, %31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1756
  %41 = bitcast %struct.redisCallback* %29 to i8*, !dbg !1757
  tail call void @free(i8* %41) #7, !dbg !1758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1739
  tail call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 339, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.__redisAsyncDisconnect, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !1739
  unreachable

; <label>:42:                                     ; preds = %19
  %43 = load i32, i32* %3, align 8, !dbg !1761, !tbaa !311
  %44 = or i32 %43, 4, !dbg !1761
  store i32 %44, i32* %3, align 8, !dbg !1761, !tbaa !311
  br label %52

; <label>:45:                                     ; preds = %7
  %46 = load i32, i32* %3, align 8, !dbg !1762, !tbaa !311
  %47 = or i32 %46, 2, !dbg !1762
  store i32 %47, i32* %3, align 8, !dbg !1762, !tbaa !311
  %48 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 6, !dbg !1763
  %49 = load void (%struct.redisAsyncContext*, i32)*, void (%struct.redisAsyncContext*, i32)** %48, align 8, !dbg !1763, !tbaa !793
  %50 = icmp eq void (%struct.redisAsyncContext*, i32)* %49, null, !dbg !1765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1766
  br i1 %50, label %53, label %51, !dbg !1766

; <label>:51:                                     ; preds = %45
  tail call void %49(%struct.redisAsyncContext* nonnull %0, i32 0) #7, !dbg !1767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1767
  br label %53, !dbg !1767

; <label>:52:                                     ; preds = %39, %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #7, !dbg !1768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1769
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1771
  br label %95, !dbg !1772

; <label>:53:                                     ; preds = %45, %51, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1774
  %54 = load i32, i32* %3, align 8, !dbg !1775, !tbaa !311
  %55 = and i32 %54, 2, !dbg !1777
  %56 = icmp eq i32 %55, 0, !dbg !1777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1778
  br i1 %56, label %96, label %57, !dbg !1778

; <label>:57:                                     ; preds = %53, %1
  %58 = tail call i32 @redisBufferRead(%struct.redisContext* %2) #7, !dbg !1779
  %59 = icmp eq i32 %58, -1, !dbg !1781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1782
  br i1 %59, label %60, label %87, !dbg !1782

; <label>:60:                                     ; preds = %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1788
  %61 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 0, !dbg !1790
  %62 = load i32, i32* %61, align 8, !dbg !1790, !tbaa !442
  %63 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !1791
  store i32 %62, i32* %63, align 8, !dbg !1792, !tbaa !321
  %64 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 1, i64 0, !dbg !1793
  %65 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 2, !dbg !1794
  store i8* %64, i8** %65, align 8, !dbg !1795, !tbaa !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1796
  %66 = icmp eq i32 %62, 0, !dbg !1797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1798
  br i1 %66, label %67, label %83, !dbg !1798

; <label>:67:                                     ; preds = %60
  %68 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, !dbg !1799
  %69 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %68, i64 0, i32 0, !dbg !1803
  %70 = load %struct.redisCallback*, %struct.redisCallback** %69, align 8, !dbg !1803, !tbaa !872
  %71 = icmp eq %struct.redisCallback* %70, null, !dbg !1805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1806
  br i1 %71, label %80, label %72, !dbg !1806

; <label>:72:                                     ; preds = %67
  %73 = bitcast %struct.redisCallback* %70 to i64*, !dbg !1807
  %74 = load i64, i64* %73, align 8, !dbg !1807, !tbaa !879
  %75 = bitcast %struct.redisCallbackList* %68 to i64*, !dbg !1808
  store i64 %74, i64* %75, align 8, !dbg !1808, !tbaa !872
  %76 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1, !dbg !1809
  %77 = load %struct.redisCallback*, %struct.redisCallback** %76, align 8, !dbg !1809, !tbaa !884
  %78 = icmp eq %struct.redisCallback* %70, %77, !dbg !1810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1811
  br i1 %78, label %79, label %81, !dbg !1811

; <label>:79:                                     ; preds = %72
  store %struct.redisCallback* null, %struct.redisCallback** %76, align 8, !dbg !1812, !tbaa !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1813
  br label %81, !dbg !1813

; <label>:80:                                     ; preds = %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1814
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1815
  br label %86, !dbg !1799

; <label>:81:                                     ; preds = %79, %72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1816
  %82 = bitcast %struct.redisCallback* %70 to i8*, !dbg !1817
  tail call void @free(i8* %82) #7, !dbg !1818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1799
  tail call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 339, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.__redisAsyncDisconnect, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !1799
  unreachable

; <label>:83:                                     ; preds = %60
  %84 = load i32, i32* %3, align 8, !dbg !1821, !tbaa !311
  %85 = or i32 %84, 4, !dbg !1821
  store i32 %85, i32* %3, align 8, !dbg !1821, !tbaa !311
  br label %86

; <label>:86:                                     ; preds = %80, %83
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #7, !dbg !1822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1823
  br label %95, !dbg !1824

; <label>:87:                                     ; preds = %57
  %88 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 1, !dbg !1825
  %89 = load void (i8*)*, void (i8*)** %88, align 8, !dbg !1825, !tbaa !1829
  %90 = icmp eq void (i8*)* %89, null, !dbg !1825
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1830
  br i1 %90, label %94, label %91, !dbg !1830

; <label>:91:                                     ; preds = %87
  %92 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 0, !dbg !1825
  %93 = load i8*, i8** %92, align 8, !dbg !1825, !tbaa !332
  tail call void %89(i8* %93) #7, !dbg !1825
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1825
  br label %94, !dbg !1825

; <label>:94:                                     ; preds = %87, %91
  tail call void @redisProcessCallbacks(%struct.redisAsyncContext* nonnull %0) #8, !dbg !1831
  br label %95

; <label>:95:                                     ; preds = %86, %94, %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %96, !dbg !1773

; <label>:96:                                     ; preds = %95, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1832
  ret void, !dbg !1832
}

; Function Attrs: noredzone
declare dso_local i32 @redisBufferRead(%struct.redisContext*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @redisAsyncHandleWrite(%struct.redisAsyncContext*) local_unnamed_addr #0 !dbg !1833 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, !dbg !1839
  %4 = bitcast i32* %2 to i8*, !dbg !1841
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #5, !dbg !1841
  store i32 0, i32* %2, align 4, !dbg !1842, !tbaa !1249
  %5 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3, !dbg !1843
  %6 = load i32, i32* %5, align 8, !dbg !1843, !tbaa !311
  %7 = and i32 %6, 2, !dbg !1845
  %8 = icmp eq i32 %7, 0, !dbg !1845
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1846
  br i1 %8, label %9, label %59, !dbg !1846

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @redisCheckSocketError(%struct.redisContext* %3) #7, !dbg !1852
  %11 = icmp eq i32 %10, -1, !dbg !1853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1854
  br i1 %11, label %12, label %47, !dbg !1854

; <label>:12:                                     ; preds = %9
  %13 = tail call i32* @__errno() #7, !dbg !1855
  %14 = load i32, i32* %13, align 4, !dbg !1855, !tbaa !1249
  %15 = icmp eq i32 %14, 119, !dbg !1856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1857
  br i1 %15, label %55, label %16, !dbg !1857

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 6, !dbg !1858
  %18 = load void (%struct.redisAsyncContext*, i32)*, void (%struct.redisAsyncContext*, i32)** %17, align 8, !dbg !1858, !tbaa !793
  %19 = icmp eq void (%struct.redisAsyncContext*, i32)* %18, null, !dbg !1859
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1860
  br i1 %19, label %21, label %20, !dbg !1860

; <label>:20:                                     ; preds = %16
  tail call void %18(%struct.redisAsyncContext* nonnull %0, i32 -1) #7, !dbg !1861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1861
  br label %21, !dbg !1861

; <label>:21:                                     ; preds = %20, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  %22 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 0, !dbg !1868
  %23 = load i32, i32* %22, align 8, !dbg !1868, !tbaa !442
  %24 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !1869
  store i32 %23, i32* %24, align 8, !dbg !1870, !tbaa !321
  %25 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 1, i64 0, !dbg !1871
  %26 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 2, !dbg !1872
  store i8* %25, i8** %26, align 8, !dbg !1873, !tbaa !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1874
  %27 = icmp eq i32 %23, 0, !dbg !1875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1876
  br i1 %27, label %28, label %44, !dbg !1876

; <label>:28:                                     ; preds = %21
  %29 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, !dbg !1877
  %30 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %29, i64 0, i32 0, !dbg !1881
  %31 = load %struct.redisCallback*, %struct.redisCallback** %30, align 8, !dbg !1881, !tbaa !872
  %32 = icmp eq %struct.redisCallback* %31, null, !dbg !1883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1884
  br i1 %32, label %41, label %33, !dbg !1884

; <label>:33:                                     ; preds = %28
  %34 = bitcast %struct.redisCallback* %31 to i64*, !dbg !1885
  %35 = load i64, i64* %34, align 8, !dbg !1885, !tbaa !879
  %36 = bitcast %struct.redisCallbackList* %29 to i64*, !dbg !1886
  store i64 %35, i64* %36, align 8, !dbg !1886, !tbaa !872
  %37 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1, !dbg !1887
  %38 = load %struct.redisCallback*, %struct.redisCallback** %37, align 8, !dbg !1887, !tbaa !884
  %39 = icmp eq %struct.redisCallback* %31, %38, !dbg !1888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1889
  br i1 %39, label %40, label %42, !dbg !1889

; <label>:40:                                     ; preds = %33
  store %struct.redisCallback* null, %struct.redisCallback** %37, align 8, !dbg !1890, !tbaa !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1891
  br label %42, !dbg !1891

; <label>:41:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  br label %54, !dbg !1877

; <label>:42:                                     ; preds = %40, %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1894
  %43 = bitcast %struct.redisCallback* %31 to i8*, !dbg !1895
  tail call void @free(i8* %43) #7, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1877
  tail call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 339, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.__redisAsyncDisconnect, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !1877
  unreachable

; <label>:44:                                     ; preds = %21
  %45 = load i32, i32* %5, align 8, !dbg !1899, !tbaa !311
  %46 = or i32 %45, 4, !dbg !1899
  store i32 %46, i32* %5, align 8, !dbg !1899, !tbaa !311
  br label %54

; <label>:47:                                     ; preds = %9
  %48 = load i32, i32* %5, align 8, !dbg !1900, !tbaa !311
  %49 = or i32 %48, 2, !dbg !1900
  store i32 %49, i32* %5, align 8, !dbg !1900, !tbaa !311
  %50 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 6, !dbg !1901
  %51 = load void (%struct.redisAsyncContext*, i32)*, void (%struct.redisAsyncContext*, i32)** %50, align 8, !dbg !1901, !tbaa !793
  %52 = icmp eq void (%struct.redisAsyncContext*, i32)* %51, null, !dbg !1902
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1903
  br i1 %52, label %55, label %53, !dbg !1903

; <label>:53:                                     ; preds = %47
  tail call void %51(%struct.redisAsyncContext* nonnull %0, i32 0) #7, !dbg !1904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1904
  br label %55, !dbg !1904

; <label>:54:                                     ; preds = %41, %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #7, !dbg !1905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1907
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1909
  br label %115, !dbg !1910

; <label>:55:                                     ; preds = %47, %53, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1909
  %56 = load i32, i32* %5, align 8, !dbg !1912, !tbaa !311
  %57 = and i32 %56, 2, !dbg !1914
  %58 = icmp eq i32 %57, 0, !dbg !1914
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1915
  br i1 %58, label %115, label %59, !dbg !1915

; <label>:59:                                     ; preds = %55, %1
  %60 = call i32 @redisBufferWrite(%struct.redisContext* %3, i32* nonnull %2) #7, !dbg !1916
  %61 = icmp eq i32 %60, -1, !dbg !1918
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1919
  br i1 %61, label %62, label %89, !dbg !1919

; <label>:62:                                     ; preds = %59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1925
  %63 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 0, !dbg !1927
  %64 = load i32, i32* %63, align 8, !dbg !1927, !tbaa !442
  %65 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !1928
  store i32 %64, i32* %65, align 8, !dbg !1929, !tbaa !321
  %66 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 1, i64 0, !dbg !1930
  %67 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 2, !dbg !1931
  store i8* %66, i8** %67, align 8, !dbg !1932, !tbaa !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1933
  %68 = icmp eq i32 %64, 0, !dbg !1934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1935
  br i1 %68, label %69, label %85, !dbg !1935

; <label>:69:                                     ; preds = %62
  %70 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, !dbg !1936
  %71 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %70, i64 0, i32 0, !dbg !1940
  %72 = load %struct.redisCallback*, %struct.redisCallback** %71, align 8, !dbg !1940, !tbaa !872
  %73 = icmp eq %struct.redisCallback* %72, null, !dbg !1942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1943
  br i1 %73, label %82, label %74, !dbg !1943

; <label>:74:                                     ; preds = %69
  %75 = bitcast %struct.redisCallback* %72 to i64*, !dbg !1944
  %76 = load i64, i64* %75, align 8, !dbg !1944, !tbaa !879
  %77 = bitcast %struct.redisCallbackList* %70 to i64*, !dbg !1945
  store i64 %76, i64* %77, align 8, !dbg !1945, !tbaa !872
  %78 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1, !dbg !1946
  %79 = load %struct.redisCallback*, %struct.redisCallback** %78, align 8, !dbg !1946, !tbaa !884
  %80 = icmp eq %struct.redisCallback* %72, %79, !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1948
  br i1 %80, label %81, label %83, !dbg !1948

; <label>:81:                                     ; preds = %74
  store %struct.redisCallback* null, %struct.redisCallback** %78, align 8, !dbg !1949, !tbaa !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1950
  br label %83, !dbg !1950

; <label>:82:                                     ; preds = %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1952
  br label %88, !dbg !1936

; <label>:83:                                     ; preds = %81, %74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1953
  %84 = bitcast %struct.redisCallback* %72 to i8*, !dbg !1954
  call void @free(i8* %84) #7, !dbg !1955
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1936
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 339, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.__redisAsyncDisconnect, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !1936
  unreachable

; <label>:85:                                     ; preds = %62
  %86 = load i32, i32* %5, align 8, !dbg !1958, !tbaa !311
  %87 = or i32 %86, 4, !dbg !1958
  store i32 %87, i32* %5, align 8, !dbg !1958, !tbaa !311
  br label %88

; <label>:88:                                     ; preds = %82, %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #7, !dbg !1959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1960
  br label %114, !dbg !1961

; <label>:89:                                     ; preds = %59
  %90 = load i32, i32* %2, align 4, !dbg !1962, !tbaa !1249
  %91 = icmp eq i32 %90, 0, !dbg !1962
  %92 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, !dbg !1965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1968
  br i1 %91, label %93, label %100, !dbg !1968

; <label>:93:                                     ; preds = %89
  %94 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 3, !dbg !1969
  %95 = load void (i8*)*, void (i8*)** %94, align 8, !dbg !1969, !tbaa !801
  %96 = icmp eq void (i8*)* %95, null, !dbg !1969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1970
  br i1 %96, label %107, label %97, !dbg !1970

; <label>:97:                                     ; preds = %93
  %98 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %92, i64 0, i32 0, !dbg !1969
  %99 = load i8*, i8** %98, align 8, !dbg !1969, !tbaa !332
  call void %95(i8* %99) #7, !dbg !1969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1969
  br label %107, !dbg !1969

; <label>:100:                                    ; preds = %89
  %101 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 4, !dbg !1971
  %102 = load void (i8*)*, void (i8*)** %101, align 8, !dbg !1971, !tbaa !1974
  %103 = icmp eq void (i8*)* %102, null, !dbg !1971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1975
  br i1 %103, label %107, label %104, !dbg !1975

; <label>:104:                                    ; preds = %100
  %105 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %92, i64 0, i32 0, !dbg !1971
  %106 = load i8*, i8** %105, align 8, !dbg !1971, !tbaa !332
  call void %102(i8* %106) #7, !dbg !1971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1971
  br label %107, !dbg !1971

; <label>:107:                                    ; preds = %100, %93, %97, %104
  %108 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 1, !dbg !1976
  %109 = load void (i8*)*, void (i8*)** %108, align 8, !dbg !1976, !tbaa !1829
  %110 = icmp eq void (i8*)* %109, null, !dbg !1976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1979
  br i1 %110, label %115, label %111, !dbg !1979

; <label>:111:                                    ; preds = %107
  %112 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %92, i64 0, i32 0, !dbg !1976
  %113 = load i8*, i8** %112, align 8, !dbg !1976, !tbaa !332
  call void %109(i8* %113) #7, !dbg !1976
  br label %114, !dbg !1976

; <label>:114:                                    ; preds = %88, %111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1980
  br label %115, !dbg !1981

; <label>:115:                                    ; preds = %107, %114, %55, %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1911
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #5, !dbg !1981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1981
  ret void, !dbg !1981
}

; Function Attrs: noredzone
declare dso_local i32 @redisBufferWrite(%struct.redisContext*, i32*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisvAsyncCommand(%struct.redisAsyncContext*, void (%struct.redisAsyncContext*, i8*, i8*)*, i8*, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !1982 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*, !dbg !2006
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !2006
  %8 = call i32 @redisvFormatCommand(i8** nonnull %6, i8* %3, %struct.__va_list_tag* %4) #7, !dbg !2008
  %9 = icmp slt i32 %8, 0, !dbg !2010
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2012
  br i1 %9, label %15, label %10, !dbg !2012

; <label>:10:                                     ; preds = %5
  %11 = load i8*, i8** %6, align 8, !dbg !2013, !tbaa !328
  %12 = sext i32 %8 to i64, !dbg !2014
  %13 = call fastcc i32 @__redisAsyncCommand(%struct.redisAsyncContext* %0, void (%struct.redisAsyncContext*, i8*, i8*)* %1, i8* %2, i8* %11, i64 %12) #8, !dbg !2015
  %14 = load i8*, i8** %6, align 8, !dbg !2017, !tbaa !328
  call void @free(i8* %14) #7, !dbg !2018
  br label %15, !dbg !2019

; <label>:15:                                     ; preds = %5, %10
  %16 = phi i32 [ %13, %10 ], [ -1, %5 ], !dbg !2020
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2021
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !2022
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2022
  ret i32 %16, !dbg !2022
}

; Function Attrs: noredzone
declare dso_local i32 @redisvFormatCommand(i8**, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc i32 @__redisAsyncCommand(%struct.redisAsyncContext*, void (%struct.redisAsyncContext*, i8*, i8*)*, i8*, i8*, i64) unnamed_addr #0 !dbg !2023 {
  %6 = alloca %struct.redisCallback, align 8
  %7 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, !dbg !2050
  %8 = bitcast %struct.redisCallback* %6 to i8*, !dbg !2052
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #5, !dbg !2052
  %9 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3, !dbg !2053
  %10 = load i32, i32* %9, align 8, !dbg !2053, !tbaa !311
  %11 = and i32 %10, 12, !dbg !2055
  %12 = icmp eq i32 %11, 0, !dbg !2055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2056
  br i1 %12, label %13, label %171, !dbg !2056

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %6, i64 0, i32 1, !dbg !2057
  store void (%struct.redisAsyncContext*, i8*, i8*)* %1, void (%struct.redisAsyncContext*, i8*, i8*)** %14, align 8, !dbg !2058, !tbaa !919
  %15 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %6, i64 0, i32 2, !dbg !2059
  store i8* %2, i8** %15, align 8, !dbg !2060, !tbaa !926
  %16 = load i8, i8* %3, align 1, !dbg !2074, !tbaa !1233
  %17 = icmp eq i8 %16, 36, !dbg !2076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2077
  br i1 %17, label %21, label %18, !dbg !2077

; <label>:18:                                     ; preds = %13
  %19 = tail call i8* @strchr(i8* nonnull %3, i32 36) #7, !dbg !2078
  %20 = icmp eq i8* %19, null, !dbg !2080
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2082
  br i1 %20, label %28, label %21, !dbg !2082

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i8* [ %19, %18 ], [ %3, %13 ], !dbg !2083
  %23 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !2084
  %24 = tail call i64 @strtol(i8* nonnull %23, i8** null, i32 10) #7, !dbg !2085
  %25 = tail call i8* @strchr(i8* nonnull %22, i32 13) #7, !dbg !2086
  %26 = icmp eq i8* %25, null, !dbg !2087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2087
  br i1 %26, label %27, label %29, !dbg !2087

; <label>:27:                                     ; preds = %21
  tail call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 575, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.nextArgument, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !2087
  unreachable

; <label>:28:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2091
  tail call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 602, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.__redisAsyncCommand, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !2091
  unreachable

; <label>:29:                                     ; preds = %21
  %30 = shl i64 %24, 32, !dbg !2092
  %31 = ashr exact i64 %30, 32, !dbg !2092
  %32 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !2093
  %33 = getelementptr inbounds i8, i8* %32, i64 %31, !dbg !2094
  %34 = getelementptr inbounds i8, i8* %33, i64 2, !dbg !2095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2091
  %35 = load i8, i8* %34, align 1, !dbg !2097, !tbaa !1233
  %36 = icmp eq i8 %35, 36, !dbg !2098
  %37 = load i8, i8* %32, align 1, !dbg !2100, !tbaa !1233
  %38 = tail call i8* @__locale_ctype_ptr() #7, !dbg !2100
  %39 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !2100
  %40 = sext i8 %37 to i32, !dbg !2100
  %41 = sext i8 %37 to i64, !dbg !2100
  %42 = getelementptr inbounds i8, i8* %39, i64 %41, !dbg !2100
  %43 = load i8, i8* %42, align 1, !dbg !2100, !tbaa !1233
  %44 = and i8 %43, 3, !dbg !2100
  %45 = icmp eq i8 %44, 1, !dbg !2100
  %46 = add nsw i32 %40, 32, !dbg !2100
  %47 = select i1 %45, i32 %46, i32 %40, !dbg !2100
  %48 = icmp eq i32 %47, 112, !dbg !2101
  %49 = zext i1 %48 to i64, !dbg !2102
  %50 = getelementptr inbounds i8, i8* %32, i64 %49, !dbg !2102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2104
  br i1 %36, label %51, label %87, !dbg !2104

; <label>:51:                                     ; preds = %29
  %52 = tail call i32 @strncasecmp(i8* nonnull %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 11) #10, !dbg !2106
  %53 = icmp eq i32 %52, 0, !dbg !2107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2108
  br i1 %53, label %54, label %87, !dbg !2108

; <label>:54:                                     ; preds = %51
  %55 = load i32, i32* %9, align 8, !dbg !2109, !tbaa !311
  %56 = or i32 %55, 32, !dbg !2109
  store i32 %56, i32* %9, align 8, !dbg !2109, !tbaa !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2111
  %57 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 2
  %58 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 1
  %59 = select i1 %48, %struct.dict** %57, %struct.dict** %58
  br label %60, !dbg !2111

; <label>:60:                                     ; preds = %86, %54
  %61 = phi i8* [ %34, %54 ], [ %80, %86 ], !dbg !2112
  %62 = load i8, i8* %61, align 1, !dbg !2116, !tbaa !1233
  %63 = icmp eq i8 %62, 36, !dbg !2117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2118
  br i1 %63, label %68, label %64, !dbg !2118

; <label>:64:                                     ; preds = %60
  %65 = call i8* @strchr(i8* nonnull %61, i32 36) #7, !dbg !2119
  %66 = icmp eq i8* %65, null, !dbg !2120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2121
  br i1 %66, label %67, label %68, !dbg !2121

; <label>:67:                                     ; preds = %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2122
  br label %162, !dbg !2111

; <label>:68:                                     ; preds = %64, %60
  %69 = phi i8* [ %65, %64 ], [ %61, %60 ], !dbg !2123
  %70 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !2124
  %71 = call i64 @strtol(i8* nonnull %70, i8** null, i32 10) #7, !dbg !2125
  %72 = shl i64 %71, 32, !dbg !2126
  %73 = ashr exact i64 %72, 32, !dbg !2126
  %74 = call i8* @strchr(i8* nonnull %69, i32 13) #7, !dbg !2127
  %75 = icmp eq i8* %74, null, !dbg !2128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2128
  br i1 %75, label %76, label %77, !dbg !2128

; <label>:76:                                     ; preds = %68
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 575, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.nextArgument, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !2128
  unreachable

; <label>:77:                                     ; preds = %68
  %78 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !2129
  %79 = getelementptr inbounds i8, i8* %74, i64 4, !dbg !2130
  %80 = getelementptr inbounds i8, i8* %79, i64 %73, !dbg !2131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2111
  %81 = call i8* @sdsnewlen(i8* nonnull %78, i64 %73) #7, !dbg !2136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2139
  %82 = load %struct.dict*, %struct.dict** %59, align 8, !dbg !2141, !tbaa !328
  %83 = call fastcc i32 @dictReplace(%struct.dict* %82, i8* %81, i8* nonnull %8) #8, !dbg !2141
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %84 = icmp eq i32 %83, 0, !dbg !2143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2145
  br i1 %84, label %85, label %86, !dbg !2145

; <label>:85:                                     ; preds = %77
  call void @sdsfree(i8* %81) #7, !dbg !2146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2146
  br label %86, !dbg !2146

; <label>:86:                                     ; preds = %85, %77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2111
  br label %60, !dbg !2111, !llvm.loop !2147

; <label>:87:                                     ; preds = %51, %29
  %88 = tail call i32 @strncasecmp(i8* nonnull %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i64 13) #10, !dbg !2149
  %89 = icmp eq i32 %88, 0, !dbg !2151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2152
  br i1 %89, label %90, label %94, !dbg !2152

; <label>:90:                                     ; preds = %87
  %91 = load i32, i32* %9, align 8, !dbg !2153, !tbaa !311
  %92 = and i32 %91, 32, !dbg !2156
  %93 = icmp eq i32 %92, 0, !dbg !2156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2157
  br i1 %93, label %171, label %163, !dbg !2157

; <label>:94:                                     ; preds = %87
  %95 = tail call i32 @strncasecmp(i8* nonnull %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i64 9) #10, !dbg !2158
  %96 = icmp eq i32 %95, 0, !dbg !2160
  %97 = load i32, i32* %9, align 8, !dbg !2161, !tbaa !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2164
  br i1 %96, label %98, label %119, !dbg !2164

; <label>:98:                                     ; preds = %94
  %99 = or i32 %97, 64, !dbg !2165
  store i32 %99, i32* %9, align 8, !dbg !2165, !tbaa !311
  %100 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, !dbg !2167
  %101 = tail call i8* @malloc(i64 24) #7, !dbg !2172
  %102 = icmp eq i8* %101, null, !dbg !2174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2176
  br i1 %102, label %162, label %103, !dbg !2175

; <label>:103:                                    ; preds = %98
  %104 = call i8* @memcpy(i8* nonnull %101, i8* nonnull %8, i64 24) #7, !dbg !2177
  %105 = bitcast i8* %101 to %struct.redisCallback**, !dbg !2178
  store %struct.redisCallback* null, %struct.redisCallback** %105, align 8, !dbg !2179, !tbaa !879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2180
  %106 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %100, i64 0, i32 0, !dbg !2181
  %107 = load %struct.redisCallback*, %struct.redisCallback** %106, align 8, !dbg !2181, !tbaa !872
  %108 = icmp eq %struct.redisCallback* %107, null, !dbg !2182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2183
  br i1 %108, label %109, label %111, !dbg !2183

; <label>:109:                                    ; preds = %103
  %110 = bitcast %struct.redisCallbackList* %100 to i8**, !dbg !2184
  store i8* %101, i8** %110, align 8, !dbg !2184, !tbaa !872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2185
  br label %111, !dbg !2185

; <label>:111:                                    ; preds = %109, %103
  %112 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1, !dbg !2186
  %113 = load %struct.redisCallback*, %struct.redisCallback** %112, align 8, !dbg !2186, !tbaa !884
  %114 = icmp eq %struct.redisCallback* %113, null, !dbg !2187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2188
  br i1 %114, label %117, label %115, !dbg !2188

; <label>:115:                                    ; preds = %111
  %116 = bitcast %struct.redisCallback* %113 to i8**, !dbg !2189
  store i8* %101, i8** %116, align 8, !dbg !2189, !tbaa !879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2190
  br label %117, !dbg !2190

; <label>:117:                                    ; preds = %115, %111
  %118 = bitcast %struct.redisCallback** %112 to i8**, !dbg !2191
  store i8* %101, i8** %118, align 8, !dbg !2191, !tbaa !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2192
  br label %162, !dbg !2192

; <label>:119:                                    ; preds = %94
  %120 = and i32 %97, 32, !dbg !2193
  %121 = icmp eq i32 %120, 0, !dbg !2193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2194
  br i1 %121, label %142, label %122, !dbg !2194

; <label>:122:                                    ; preds = %119
  %123 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 0, !dbg !2195
  %124 = tail call i8* @malloc(i64 24) #7, !dbg !2199
  %125 = icmp eq i8* %124, null, !dbg !2201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2161
  br i1 %125, label %162, label %126, !dbg !2202

; <label>:126:                                    ; preds = %122
  %127 = call i8* @memcpy(i8* nonnull %124, i8* nonnull %8, i64 24) #7, !dbg !2203
  %128 = bitcast i8* %124 to %struct.redisCallback**, !dbg !2204
  store %struct.redisCallback* null, %struct.redisCallback** %128, align 8, !dbg !2205, !tbaa !879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2206
  %129 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %123, i64 0, i32 0, !dbg !2207
  %130 = load %struct.redisCallback*, %struct.redisCallback** %129, align 8, !dbg !2207, !tbaa !872
  %131 = icmp eq %struct.redisCallback* %130, null, !dbg !2208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2209
  br i1 %131, label %132, label %134, !dbg !2209

; <label>:132:                                    ; preds = %126
  %133 = bitcast %struct.redisCallbackList* %123 to i8**, !dbg !2210
  store i8* %124, i8** %133, align 8, !dbg !2210, !tbaa !872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2211
  br label %134, !dbg !2211

; <label>:134:                                    ; preds = %132, %126
  %135 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 0, i32 1, !dbg !2212
  %136 = load %struct.redisCallback*, %struct.redisCallback** %135, align 8, !dbg !2212, !tbaa !884
  %137 = icmp eq %struct.redisCallback* %136, null, !dbg !2213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2214
  br i1 %137, label %140, label %138, !dbg !2214

; <label>:138:                                    ; preds = %134
  %139 = bitcast %struct.redisCallback* %136 to i8**, !dbg !2215
  store i8* %124, i8** %139, align 8, !dbg !2215, !tbaa !879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2216
  br label %140, !dbg !2216

; <label>:140:                                    ; preds = %138, %134
  %141 = bitcast %struct.redisCallback** %135 to i8**, !dbg !2217
  store i8* %124, i8** %141, align 8, !dbg !2217, !tbaa !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2218
  br label %162, !dbg !2218

; <label>:142:                                    ; preds = %119
  %143 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, !dbg !2219
  %144 = tail call i8* @malloc(i64 24) #7, !dbg !2223
  %145 = icmp eq i8* %144, null, !dbg !2225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2161
  br i1 %145, label %162, label %146, !dbg !2226

; <label>:146:                                    ; preds = %142
  %147 = call i8* @memcpy(i8* nonnull %144, i8* nonnull %8, i64 24) #7, !dbg !2227
  %148 = bitcast i8* %144 to %struct.redisCallback**, !dbg !2228
  store %struct.redisCallback* null, %struct.redisCallback** %148, align 8, !dbg !2229, !tbaa !879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2230
  %149 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %143, i64 0, i32 0, !dbg !2231
  %150 = load %struct.redisCallback*, %struct.redisCallback** %149, align 8, !dbg !2231, !tbaa !872
  %151 = icmp eq %struct.redisCallback* %150, null, !dbg !2232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2233
  br i1 %151, label %152, label %154, !dbg !2233

; <label>:152:                                    ; preds = %146
  %153 = bitcast %struct.redisCallbackList* %143 to i8**, !dbg !2234
  store i8* %144, i8** %153, align 8, !dbg !2234, !tbaa !872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2235
  br label %154, !dbg !2235

; <label>:154:                                    ; preds = %152, %146
  %155 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1, !dbg !2236
  %156 = load %struct.redisCallback*, %struct.redisCallback** %155, align 8, !dbg !2236, !tbaa !884
  %157 = icmp eq %struct.redisCallback* %156, null, !dbg !2237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2238
  br i1 %157, label %160, label %158, !dbg !2238

; <label>:158:                                    ; preds = %154
  %159 = bitcast %struct.redisCallback* %156 to i8**, !dbg !2239
  store i8* %144, i8** %159, align 8, !dbg !2239, !tbaa !879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2240
  br label %160, !dbg !2240

; <label>:160:                                    ; preds = %158, %154
  %161 = bitcast %struct.redisCallback** %155 to i8**, !dbg !2241
  store i8* %144, i8** %161, align 8, !dbg !2241, !tbaa !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2242
  br label %162, !dbg !2242

; <label>:162:                                    ; preds = %160, %142, %140, %122, %117, %98, %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2176
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %163, !dbg !2243

; <label>:163:                                    ; preds = %162, %90
  %164 = call i32 @__redisAppendCommand(%struct.redisContext* nonnull %7, i8* %3, i64 %4) #7, !dbg !2243
  %165 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 3, !dbg !2244
  %166 = load void (i8*)*, void (i8*)** %165, align 8, !dbg !2244, !tbaa !801
  %167 = icmp eq void (i8*)* %166, null, !dbg !2244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2247
  br i1 %167, label %171, label %168, !dbg !2247

; <label>:168:                                    ; preds = %163
  %169 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 0, !dbg !2244
  %170 = load i8*, i8** %169, align 8, !dbg !2244, !tbaa !332
  call void %166(i8* %170) #7, !dbg !2244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2244
  br label %171, !dbg !2244

; <label>:171:                                    ; preds = %168, %163, %90, %5
  %172 = phi i32 [ -1, %5 ], [ -1, %90 ], [ 0, %163 ], [ 0, %168 ], !dbg !2248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2249
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #5, !dbg !2250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2250
  ret i32 %172, !dbg !2250
}

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisAsyncCommand(%struct.redisAsyncContext*, void (%struct.redisAsyncContext*, i8*, i8*)*, i8*, i8*, ...) local_unnamed_addr #0 !dbg !2251 {
  %5 = alloca i8*, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = bitcast [1 x %struct.__va_list_tag]* %6 to i8*, !dbg !2273
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #5, !dbg !2273
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0, !dbg !2275
  call void @llvm.va_start(i8* nonnull %7), !dbg !2275
  %9 = bitcast i8** %5 to i8*, !dbg !2282
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #5, !dbg !2282
  %10 = call i32 @redisvFormatCommand(i8** nonnull %5, i8* %3, %struct.__va_list_tag* nonnull %8) #7, !dbg !2284
  %11 = icmp slt i32 %10, 0, !dbg !2286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2287
  br i1 %11, label %17, label %12, !dbg !2287

; <label>:12:                                     ; preds = %4
  %13 = load i8*, i8** %5, align 8, !dbg !2288, !tbaa !328
  %14 = sext i32 %10 to i64, !dbg !2289
  %15 = call fastcc i32 @__redisAsyncCommand(%struct.redisAsyncContext* %0, void (%struct.redisAsyncContext*, i8*, i8*)* %1, i8* %2, i8* %13, i64 %14) #7, !dbg !2290
  %16 = load i8*, i8** %5, align 8, !dbg !2292, !tbaa !328
  call void @free(i8* %16) #7, !dbg !2293
  br label %17, !dbg !2294

; <label>:17:                                     ; preds = %4, %12
  %18 = phi i32 [ %15, %12 ], [ -1, %4 ], !dbg !2295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #5, !dbg !2297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2297
  call void @llvm.va_end(i8* nonnull %7), !dbg !2299
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #5, !dbg !2300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2301
  ret i32 %18, !dbg !2301
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: noredzone nounwind
define dso_local i32 @redisAsyncCommandArgv(%struct.redisAsyncContext*, void (%struct.redisAsyncContext*, i8*, i8*)*, i8*, i32, i8**, i64*) local_unnamed_addr #0 !dbg !2302 {
  %7 = alloca i8*, align 8
  %8 = bitcast i8** %7 to i8*, !dbg !2323
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !2323
  %9 = call i32 @redisFormatSdsCommandArgv(i8** nonnull %7, i32 %3, i8** %4, i64* %5) #7, !dbg !2325
  %10 = load i8*, i8** %7, align 8, !dbg !2327, !tbaa !328
  %11 = sext i32 %9 to i64, !dbg !2328
  %12 = call fastcc i32 @__redisAsyncCommand(%struct.redisAsyncContext* %0, void (%struct.redisAsyncContext*, i8*, i8*)* %1, i8* %2, i8* %10, i64 %11) #8, !dbg !2329
  %13 = load i8*, i8** %7, align 8, !dbg !2331, !tbaa !328
  call void @sdsfree(i8* %13) #7, !dbg !2332
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !2333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2334
  ret i32 %12, !dbg !2334
}

; Function Attrs: noredzone
declare dso_local i32 @redisFormatSdsCommandArgv(i8**, i32, i8**, i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisAsyncFormattedCommand(%struct.redisAsyncContext*, void (%struct.redisAsyncContext*, i8*, i8*)*, i8*, i8*, i64) local_unnamed_addr #0 !dbg !2335 {
  %6 = tail call fastcc i32 @__redisAsyncCommand(%struct.redisAsyncContext* %0, void (%struct.redisAsyncContext*, i8*, i8*)* %1, i8* %2, i8* %3, i64 %4) #8, !dbg !2348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2350
  ret i32 %6, !dbg !2350
}

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @callbackHash(i8* nocapture readonly) #0 !dbg !2351 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !2357
  %3 = load i8, i8* %2, align 1, !dbg !2357, !tbaa !1233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2359
  %4 = trunc i8 %3 to i3, !dbg !2359
  switch i3 %4, label %26 [
    i3 0, label %5
    i3 1, label %8
    i3 2, label %12
    i3 3, label %17
    i3 -4, label %22
  ], !dbg !2359

; <label>:5:                                      ; preds = %1
  %6 = lshr i8 %3, 3, !dbg !2360
  %7 = zext i8 %6 to i64, !dbg !2360
  br label %27, !dbg !2361

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !2362
  %10 = load i8, i8* %9, align 1, !dbg !2363, !tbaa !1233
  %11 = zext i8 %10 to i64, !dbg !2362
  br label %27, !dbg !2364

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !2365
  %14 = bitcast i8* %13 to i16*, !dbg !2366
  %15 = load i16, i16* %14, align 1, !dbg !2366, !tbaa !1244
  %16 = zext i16 %15 to i64, !dbg !2365
  br label %27, !dbg !2367

; <label>:17:                                     ; preds = %1
  %18 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !2368
  %19 = bitcast i8* %18 to i32*, !dbg !2369
  %20 = load i32, i32* %19, align 1, !dbg !2369, !tbaa !1249
  %21 = zext i32 %20 to i64, !dbg !2368
  br label %27, !dbg !2370

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !2371
  %24 = bitcast i8* %23 to i64*, !dbg !2372
  %25 = load i64, i64* %24, align 1, !dbg !2372, !tbaa !386
  br label %27, !dbg !2373

; <label>:26:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2387
  br label %79, !dbg !2387

; <label>:27:                                     ; preds = %5, %8, %12, %17, %22
  %28 = phi i64 [ %25, %22 ], [ %21, %17 ], [ %16, %12 ], [ %11, %8 ], [ %7, %5 ], !dbg !2388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2375
  %29 = trunc i64 %28 to i32, !dbg !2390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2387
  %30 = icmp eq i32 %29, 0, !dbg !2387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2387
  br i1 %30, label %79, label %31, !dbg !2387

; <label>:31:                                     ; preds = %27
  %32 = add i32 %29, -1, !dbg !2391
  %33 = and i32 %29, 3, !dbg !2391
  %34 = icmp ult i32 %32, 3, !dbg !2391
  br i1 %34, label %63, label %35, !dbg !2391

; <label>:35:                                     ; preds = %31
  %36 = sub i32 %29, %33, !dbg !2391
  br label %37, !dbg !2391

; <label>:37:                                     ; preds = %37, %35
  %38 = phi i32 [ 5381, %35 ], [ %60, %37 ]
  %39 = phi i8* [ %0, %35 ], [ %57, %37 ]
  %40 = phi i32 [ %36, %35 ], [ %61, %37 ]
  %41 = mul i32 %38, 33, !dbg !2392
  %42 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !2393
  %43 = load i8, i8* %39, align 1, !dbg !2394, !tbaa !1233
  %44 = zext i8 %43 to i32, !dbg !2395
  %45 = add i32 %41, %44, !dbg !2396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2387
  %46 = mul i32 %45, 33, !dbg !2392
  %47 = getelementptr inbounds i8, i8* %39, i64 2, !dbg !2393
  %48 = load i8, i8* %42, align 1, !dbg !2394, !tbaa !1233
  %49 = zext i8 %48 to i32, !dbg !2395
  %50 = add i32 %46, %49, !dbg !2396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2387
  %51 = mul i32 %50, 33, !dbg !2392
  %52 = getelementptr inbounds i8, i8* %39, i64 3, !dbg !2393
  %53 = load i8, i8* %47, align 1, !dbg !2394, !tbaa !1233
  %54 = zext i8 %53 to i32, !dbg !2395
  %55 = add i32 %51, %54, !dbg !2396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2387
  %56 = mul i32 %55, 33, !dbg !2392
  %57 = getelementptr inbounds i8, i8* %39, i64 4, !dbg !2393
  %58 = load i8, i8* %52, align 1, !dbg !2394, !tbaa !1233
  %59 = zext i8 %58 to i32, !dbg !2395
  %60 = add i32 %56, %59, !dbg !2396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2387
  %61 = add i32 %40, -4, !dbg !2387
  %62 = icmp eq i32 %61, 0, !dbg !2387
  br i1 %62, label %63, label %37, !dbg !2387, !llvm.loop !2397

; <label>:63:                                     ; preds = %37, %31
  %64 = phi i32 [ undef, %31 ], [ %60, %37 ]
  %65 = phi i32 [ 5381, %31 ], [ %60, %37 ]
  %66 = phi i8* [ %0, %31 ], [ %57, %37 ]
  %67 = icmp eq i32 %33, 0, !dbg !2387
  br i1 %67, label %79, label %68, !dbg !2387

; <label>:68:                                     ; preds = %63, %68
  %69 = phi i32 [ %76, %68 ], [ %65, %63 ]
  %70 = phi i8* [ %73, %68 ], [ %66, %63 ]
  %71 = phi i32 [ %77, %68 ], [ %33, %63 ]
  %72 = mul i32 %69, 33, !dbg !2392
  %73 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !2393
  %74 = load i8, i8* %70, align 1, !dbg !2394, !tbaa !1233
  %75 = zext i8 %74 to i32, !dbg !2395
  %76 = add i32 %72, %75, !dbg !2396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2387
  %77 = add i32 %71, -1, !dbg !2387
  %78 = icmp eq i32 %77, 0, !dbg !2387
  br i1 %78, label %79, label %68, !dbg !2387, !llvm.loop !2400

; <label>:79:                                     ; preds = %63, %68, %26, %27
  %80 = phi i32 [ 5381, %27 ], [ 5381, %26 ], [ %64, %63 ], [ %76, %68 ], !dbg !2402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2404
  ret i32 %80, !dbg !2404
}

; Function Attrs: noredzone nounwind
define internal i8* @callbackValDup(i8* nocapture readnone, i8*) #0 !dbg !2405 {
  %3 = tail call i8* @malloc(i64 24) #7, !dbg !2412
  %4 = tail call i8* @memcpy(i8* %3, i8* %1, i64 24) #7, !dbg !2414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2415
  ret i8* %3, !dbg !2415
}

; Function Attrs: noredzone nounwind
define internal i32 @callbackKeyCompare(i8* nocapture readnone, i8*, i8*) #0 !dbg !2416 {
  %4 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !2428
  %5 = load i8, i8* %4, align 1, !dbg !2428, !tbaa !1233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2430
  %6 = trunc i8 %5 to i3, !dbg !2430
  switch i3 %6, label %28 [
    i3 0, label %7
    i3 1, label %10
    i3 2, label %14
    i3 3, label %19
    i3 -4, label %24
  ], !dbg !2430

; <label>:7:                                      ; preds = %3
  %8 = lshr i8 %5, 3, !dbg !2431
  %9 = zext i8 %8 to i64, !dbg !2431
  br label %28, !dbg !2432

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !2433
  %12 = load i8, i8* %11, align 1, !dbg !2434, !tbaa !1233
  %13 = zext i8 %12 to i64, !dbg !2433
  br label %28, !dbg !2435

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !2436
  %16 = bitcast i8* %15 to i16*, !dbg !2437
  %17 = load i16, i16* %16, align 1, !dbg !2437, !tbaa !1244
  %18 = zext i16 %17 to i64, !dbg !2436
  br label %28, !dbg !2438

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !2439
  %21 = bitcast i8* %20 to i32*, !dbg !2440
  %22 = load i32, i32* %21, align 1, !dbg !2440, !tbaa !1249
  %23 = zext i32 %22 to i64, !dbg !2439
  br label %28, !dbg !2441

; <label>:24:                                     ; preds = %3
  %25 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !2442
  %26 = bitcast i8* %25 to i64*, !dbg !2443
  %27 = load i64, i64* %26, align 1, !dbg !2443, !tbaa !386
  br label %28, !dbg !2444

; <label>:28:                                     ; preds = %3, %7, %10, %14, %19, %24
  %29 = phi i64 [ %27, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %10 ], [ %9, %7 ], [ 0, %3 ], !dbg !2445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2447
  %30 = trunc i64 %29 to i32, !dbg !2448
  %31 = getelementptr inbounds i8, i8* %2, i64 -1, !dbg !2452
  %32 = load i8, i8* %31, align 1, !dbg !2452, !tbaa !1233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2454
  %33 = trunc i8 %32 to i3, !dbg !2454
  switch i3 %33, label %55 [
    i3 0, label %34
    i3 1, label %37
    i3 2, label %41
    i3 3, label %46
    i3 -4, label %51
  ], !dbg !2454

; <label>:34:                                     ; preds = %28
  %35 = lshr i8 %32, 3, !dbg !2455
  %36 = zext i8 %35 to i64, !dbg !2455
  br label %55, !dbg !2456

; <label>:37:                                     ; preds = %28
  %38 = getelementptr inbounds i8, i8* %2, i64 -3, !dbg !2457
  %39 = load i8, i8* %38, align 1, !dbg !2458, !tbaa !1233
  %40 = zext i8 %39 to i64, !dbg !2457
  br label %55, !dbg !2459

; <label>:41:                                     ; preds = %28
  %42 = getelementptr inbounds i8, i8* %2, i64 -5, !dbg !2460
  %43 = bitcast i8* %42 to i16*, !dbg !2461
  %44 = load i16, i16* %43, align 1, !dbg !2461, !tbaa !1244
  %45 = zext i16 %44 to i64, !dbg !2460
  br label %55, !dbg !2462

; <label>:46:                                     ; preds = %28
  %47 = getelementptr inbounds i8, i8* %2, i64 -9, !dbg !2463
  %48 = bitcast i8* %47 to i32*, !dbg !2464
  %49 = load i32, i32* %48, align 1, !dbg !2464, !tbaa !1249
  %50 = zext i32 %49 to i64, !dbg !2463
  br label %55, !dbg !2465

; <label>:51:                                     ; preds = %28
  %52 = getelementptr inbounds i8, i8* %2, i64 -17, !dbg !2466
  %53 = bitcast i8* %52 to i64*, !dbg !2467
  %54 = load i64, i64* %53, align 1, !dbg !2467, !tbaa !386
  br label %55, !dbg !2468

; <label>:55:                                     ; preds = %28, %34, %37, %41, %46, %51
  %56 = phi i64 [ %54, %51 ], [ %50, %46 ], [ %45, %41 ], [ %40, %37 ], [ %36, %34 ], [ 0, %28 ], !dbg !2469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2470
  %57 = trunc i64 %56 to i32, !dbg !2471
  %58 = icmp eq i32 %30, %57, !dbg !2473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2475
  br i1 %58, label %59, label %65, !dbg !2475

; <label>:59:                                     ; preds = %55
  %60 = shl i64 %29, 32, !dbg !2476
  %61 = ashr exact i64 %60, 32, !dbg !2476
  %62 = tail call i32 @memcmp(i8* nonnull %1, i8* nonnull %2, i64 %61) #7, !dbg !2477
  %63 = icmp eq i32 %62, 0, !dbg !2478
  %64 = zext i1 %63 to i32, !dbg !2478
  br label %65, !dbg !2479

; <label>:65:                                     ; preds = %55, %59
  %66 = phi i32 [ %64, %59 ], [ 0, %55 ], !dbg !2446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2481
  ret i32 %66, !dbg !2481
}

; Function Attrs: noredzone nounwind
define internal void @callbackKeyDestructor(i8* nocapture readnone, i8*) #0 !dbg !2482 {
  tail call void @sdsfree(i8* %1) #7, !dbg !2488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2489
  ret void, !dbg !2489
}

; Function Attrs: noredzone nounwind
define internal void @callbackValDestructor(i8* nocapture readnone, i8*) #0 !dbg !2490 {
  tail call void @free(i8* %1) #7, !dbg !2496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2497
  ret void, !dbg !2497
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @dictRelease(%struct.dict*) unnamed_addr #0 !dbg !2498 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2516
  %2 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !2517
  %3 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, !dbg !2518
  %4 = load i64, i64* %3, align 8, !dbg !2518, !tbaa !1005
  %5 = icmp eq i64 %4, 0, !dbg !2519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2520
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0
  br i1 %5, label %55, label %7, !dbg !2520

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 5
  %10 = load i64, i64* %2, align 8, !dbg !2517, !tbaa !389
  br label %11, !dbg !2520

; <label>:11:                                     ; preds = %50, %7
  %12 = phi i64 [ %4, %7 ], [ %51, %50 ]
  %13 = phi i64 [ %10, %7 ], [ %52, %50 ], !dbg !2517
  %14 = phi i64 [ 0, %7 ], [ %53, %50 ]
  %15 = icmp eq i64 %13, 0, !dbg !2521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2522
  br i1 %15, label %55, label %16, !dbg !2522

; <label>:16:                                     ; preds = %11
  %17 = load %struct.dictEntry**, %struct.dictEntry*** %6, align 8, !dbg !2523, !tbaa !381
  %18 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %17, i64 %14, !dbg !2525
  %19 = load %struct.dictEntry*, %struct.dictEntry** %18, align 8, !dbg !2525, !tbaa !328
  %20 = icmp eq %struct.dictEntry* %19, null, !dbg !2527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2529
  br i1 %20, label %50, label %21, !dbg !2528

; <label>:21:                                     ; preds = %16, %43
  %22 = phi %struct.dictEntry* [ %24, %43 ], [ %19, %16 ]
  %23 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %22, i64 0, i32 2, !dbg !2530
  %24 = load %struct.dictEntry*, %struct.dictEntry** %23, align 8, !dbg !2530, !tbaa !1049
  %25 = load %struct.dictType*, %struct.dictType** %8, align 8, !dbg !2533, !tbaa !393
  %26 = getelementptr inbounds %struct.dictType, %struct.dictType* %25, i64 0, i32 4, !dbg !2533
  %27 = load void (i8*, i8*)*, void (i8*, i8*)** %26, align 8, !dbg !2533, !tbaa !1554
  %28 = icmp eq void (i8*, i8*)* %27, null, !dbg !2533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2535
  br i1 %28, label %34, label %29, !dbg !2535

; <label>:29:                                     ; preds = %21
  %30 = load i8*, i8** %9, align 8, !dbg !2533, !tbaa !396
  %31 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %22, i64 0, i32 0, !dbg !2533
  %32 = load i8*, i8** %31, align 8, !dbg !2533, !tbaa !1494
  tail call void %27(i8* %30, i8* %32) #7, !dbg !2533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2533
  %33 = load %struct.dictType*, %struct.dictType** %8, align 8, !dbg !2536, !tbaa !393
  br label %34, !dbg !2533

; <label>:34:                                     ; preds = %29, %21
  %35 = phi %struct.dictType* [ %25, %21 ], [ %33, %29 ], !dbg !2536
  %36 = getelementptr inbounds %struct.dictType, %struct.dictType* %35, i64 0, i32 5, !dbg !2536
  %37 = load void (i8*, i8*)*, void (i8*, i8*)** %36, align 8, !dbg !2536, !tbaa !1558
  %38 = icmp eq void (i8*, i8*)* %37, null, !dbg !2536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2538
  br i1 %38, label %43, label %39, !dbg !2538

; <label>:39:                                     ; preds = %34
  %40 = load i8*, i8** %9, align 8, !dbg !2536, !tbaa !396
  %41 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %22, i64 0, i32 1, !dbg !2536
  %42 = load i8*, i8** %41, align 8, !dbg !2536, !tbaa !1055
  tail call void %37(i8* %40, i8* %42) #7, !dbg !2536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2536
  br label %43, !dbg !2536

; <label>:43:                                     ; preds = %39, %34
  %44 = bitcast %struct.dictEntry* %22 to i8*, !dbg !2539
  tail call void @free(i8* %44) #7, !dbg !2540
  %45 = load i64, i64* %2, align 8, !dbg !2541, !tbaa !389
  %46 = add i64 %45, -1, !dbg !2541
  store i64 %46, i64* %2, align 8, !dbg !2541, !tbaa !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2542
  %47 = icmp eq %struct.dictEntry* %24, null, !dbg !2542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2542
  br i1 %47, label %48, label %21, !dbg !2542, !llvm.loop !2543

; <label>:48:                                     ; preds = %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2546
  %49 = load i64, i64* %3, align 8, !dbg !2518, !tbaa !1005
  br label %50, !dbg !2546

; <label>:50:                                     ; preds = %48, %16
  %51 = phi i64 [ %12, %16 ], [ %49, %48 ], !dbg !2518
  %52 = phi i64 [ %13, %16 ], [ %46, %48 ]
  %53 = add nuw i64 %14, 1, !dbg !2547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2548
  %54 = icmp ult i64 %53, %51, !dbg !2519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2520
  br i1 %54, label %11, label %55, !dbg !2520, !llvm.loop !2549

; <label>:55:                                     ; preds = %11, %50, %1
  %56 = bitcast %struct.dict* %0 to i8**, !dbg !2552
  %57 = load i8*, i8** %56, align 8, !dbg !2552, !tbaa !381
  tail call void @free(i8* %57) #7, !dbg !2553
  store %struct.dictEntry** null, %struct.dictEntry*** %6, align 8, !dbg !2556, !tbaa !381
  %58 = bitcast i64* %3 to <2 x i64>*, !dbg !2557
  store <2 x i64> zeroinitializer, <2 x i64>* %58, align 8, !dbg !2557, !tbaa !386
  store i64 0, i64* %2, align 8, !dbg !2558, !tbaa !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2560
  %59 = bitcast %struct.dict* %0 to i8*, !dbg !2561
  tail call void @free(i8* %59) #7, !dbg !2562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2563
  ret void, !dbg !2563
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
define internal fastcc i32 @dictReplace(%struct.dict* nocapture, i8*, i8*) unnamed_addr #0 !dbg !2564 {
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, !dbg !2604
  %5 = load i64, i64* %4, align 8, !dbg !2604, !tbaa !1005
  %6 = icmp eq i64 %5, 0, !dbg !2606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2607
  br i1 %6, label %14, label %7, !dbg !2607

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !2608
  %9 = load i64, i64* %8, align 8, !dbg !2608, !tbaa !389
  %10 = icmp eq i64 %9, %5, !dbg !2610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2611
  br i1 %10, label %11, label %13, !dbg !2611

; <label>:11:                                     ; preds = %7
  %12 = shl i64 %5, 1, !dbg !2612
  br label %14, !dbg !2613

; <label>:13:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  br label %18, !dbg !2616

; <label>:14:                                     ; preds = %3, %11
  %15 = phi i64 [ %12, %11 ], [ 4, %3 ]
  %16 = tail call fastcc i32 @dictExpand(%struct.dict* nonnull %0, i64 %15) #7, !dbg !2617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2615
  %17 = icmp eq i32 %16, 1, !dbg !2618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  br i1 %17, label %56, label %18, !dbg !2616

; <label>:18:                                     ; preds = %14, %13
  %19 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !2619
  %20 = load %struct.dictType*, %struct.dictType** %19, align 8, !dbg !2619, !tbaa !393
  %21 = getelementptr inbounds %struct.dictType, %struct.dictType* %20, i64 0, i32 0, !dbg !2619
  %22 = load i32 (i8*)*, i32 (i8*)** %21, align 8, !dbg !2619, !tbaa !1480
  %23 = tail call i32 %22(i8* %1) #7, !dbg !2619
  %24 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !2620
  %25 = load i64, i64* %24, align 8, !dbg !2620, !tbaa !1483
  %26 = trunc i64 %25 to i32, !dbg !2619
  %27 = and i32 %23, %26, !dbg !2619
  %28 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !2622
  %29 = load %struct.dictEntry**, %struct.dictEntry*** %28, align 8, !dbg !2622, !tbaa !381
  %30 = zext i32 %27 to i64, !dbg !2623
  %31 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %29, i64 %30, !dbg !2623
  %32 = load %struct.dictEntry*, %struct.dictEntry** %31, align 8, !dbg !2623, !tbaa !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2625
  %33 = icmp eq %struct.dictEntry* %32, null, !dbg !2625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2625
  br i1 %33, label %57, label %34, !dbg !2625

; <label>:34:                                     ; preds = %18
  %35 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 5
  br label %36, !dbg !2625

; <label>:36:                                     ; preds = %52, %34
  %37 = phi %struct.dictEntry* [ %32, %34 ], [ %54, %52 ]
  %38 = load %struct.dictType*, %struct.dictType** %19, align 8, !dbg !2626, !tbaa !393
  %39 = getelementptr inbounds %struct.dictType, %struct.dictType* %38, i64 0, i32 3, !dbg !2626
  %40 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %39, align 8, !dbg !2626, !tbaa !1492
  %41 = icmp eq i32 (i8*, i8*, i8*)* %40, null, !dbg !2626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2629
  br i1 %41, label %48, label %42, !dbg !2629

; <label>:42:                                     ; preds = %36
  %43 = load i8*, i8** %35, align 8, !dbg !2626, !tbaa !396
  %44 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %37, i64 0, i32 0, !dbg !2626
  %45 = load i8*, i8** %44, align 8, !dbg !2626, !tbaa !1494
  %46 = tail call i32 %40(i8* %43, i8* %1, i8* %45) #7, !dbg !2626
  %47 = icmp eq i32 %46, 0, !dbg !2626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2626
  br i1 %47, label %52, label %56, !dbg !2626

; <label>:48:                                     ; preds = %36
  %49 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %37, i64 0, i32 0, !dbg !2626
  %50 = load i8*, i8** %49, align 8, !dbg !2626, !tbaa !1494
  %51 = icmp eq i8* %50, %1, !dbg !2626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2629
  br i1 %51, label %56, label %52, !dbg !2629

; <label>:52:                                     ; preds = %48, %42
  %53 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %37, i64 0, i32 2, !dbg !2630
  %54 = load %struct.dictEntry*, %struct.dictEntry** %53, align 8, !dbg !2630, !tbaa !1049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2625
  %55 = icmp eq %struct.dictEntry* %54, null, !dbg !2625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2625
  br i1 %55, label %57, label %36, !dbg !2625, !llvm.loop !2631

; <label>:56:                                     ; preds = %42, %48, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2637
  br label %97, !dbg !2637

; <label>:57:                                     ; preds = %52, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2635
  %58 = icmp eq i32 %27, -1, !dbg !2639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2637
  br i1 %58, label %97, label %59, !dbg !2637

; <label>:59:                                     ; preds = %57
  %60 = tail call i8* @malloc(i64 24) #7, !dbg !2640
  %61 = load %struct.dictEntry**, %struct.dictEntry*** %28, align 8, !dbg !2641, !tbaa !381
  %62 = sext i32 %27 to i64, !dbg !2642
  %63 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %61, i64 %62, !dbg !2642
  %64 = bitcast %struct.dictEntry** %63 to i64*, !dbg !2642
  %65 = load i64, i64* %64, align 8, !dbg !2642, !tbaa !328
  %66 = getelementptr inbounds i8, i8* %60, i64 16, !dbg !2643
  %67 = bitcast i8* %66 to i64*, !dbg !2644
  store i64 %65, i64* %67, align 8, !dbg !2644, !tbaa !1049
  %68 = bitcast %struct.dictEntry** %63 to i8**, !dbg !2645
  store i8* %60, i8** %68, align 8, !dbg !2645, !tbaa !328
  %69 = load %struct.dictType*, %struct.dictType** %19, align 8, !dbg !2646, !tbaa !393
  %70 = getelementptr inbounds %struct.dictType, %struct.dictType* %69, i64 0, i32 1, !dbg !2646
  %71 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %70, align 8, !dbg !2646, !tbaa !2649
  %72 = icmp eq i8* (i8*, i8*)* %71, null, !dbg !2646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2650
  br i1 %72, label %79, label %73, !dbg !2650

; <label>:73:                                     ; preds = %59
  %74 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 5, !dbg !2646
  %75 = load i8*, i8** %74, align 8, !dbg !2646, !tbaa !396
  %76 = tail call i8* %71(i8* %75, i8* %1) #7, !dbg !2646
  %77 = bitcast i8* %60 to i8**, !dbg !2646
  store i8* %76, i8** %77, align 8, !dbg !2646, !tbaa !1494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  %78 = load %struct.dictType*, %struct.dictType** %19, align 8, !dbg !2652, !tbaa !393
  br label %81, !dbg !2646

; <label>:79:                                     ; preds = %59
  %80 = bitcast i8* %60 to i8**, !dbg !2646
  store i8* %1, i8** %80, align 8, !dbg !2646, !tbaa !1494
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %81

; <label>:81:                                     ; preds = %79, %73
  %82 = phi %struct.dictType* [ %78, %73 ], [ %69, %79 ], !dbg !2652
  %83 = getelementptr inbounds %struct.dictType, %struct.dictType* %82, i64 0, i32 2, !dbg !2652
  %84 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %83, align 8, !dbg !2652, !tbaa !2655
  %85 = icmp eq i8* (i8*, i8*)* %84, null, !dbg !2652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2656
  br i1 %85, label %90, label %86, !dbg !2656

; <label>:86:                                     ; preds = %81
  %87 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 5, !dbg !2652
  %88 = load i8*, i8** %87, align 8, !dbg !2652, !tbaa !396
  %89 = tail call i8* %84(i8* %88, i8* %2) #7, !dbg !2652
  br label %90, !dbg !2652

; <label>:90:                                     ; preds = %81, %86
  %91 = phi i8* [ %89, %86 ], [ %2, %81 ]
  %92 = getelementptr inbounds i8, i8* %60, i64 8, !dbg !2652
  %93 = bitcast i8* %92 to i8**, !dbg !2652
  store i8* %91, i8** %93, align 8, !dbg !2652, !tbaa !1055
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %94 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !2657
  %95 = load i64, i64* %94, align 8, !dbg !2658, !tbaa !389
  %96 = add i64 %95, 1, !dbg !2658
  store i64 %96, i64* %94, align 8, !dbg !2658, !tbaa !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2660
  br label %165, !dbg !2661

; <label>:97:                                     ; preds = %57, %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2663
  %98 = load i64, i64* %4, align 8, !dbg !2667, !tbaa !1005
  %99 = icmp eq i64 %98, 0, !dbg !2668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2669
  br i1 %99, label %100, label %102, !dbg !2669

; <label>:100:                                    ; preds = %97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2670
  %101 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !2671
  br label %142, !dbg !2670

; <label>:102:                                    ; preds = %97
  %103 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !2674
  %104 = load %struct.dictType*, %struct.dictType** %103, align 8, !dbg !2674, !tbaa !393
  %105 = getelementptr inbounds %struct.dictType, %struct.dictType* %104, i64 0, i32 0, !dbg !2674
  %106 = load i32 (i8*)*, i32 (i8*)** %105, align 8, !dbg !2674, !tbaa !1480
  %107 = tail call i32 %106(i8* %1) #7, !dbg !2674
  %108 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !2675
  %109 = load i64, i64* %108, align 8, !dbg !2675, !tbaa !1483
  %110 = trunc i64 %109 to i32, !dbg !2674
  %111 = and i32 %107, %110, !dbg !2674
  %112 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !2677
  %113 = load %struct.dictEntry**, %struct.dictEntry*** %112, align 8, !dbg !2677, !tbaa !381
  %114 = zext i32 %111 to i64, !dbg !2678
  %115 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %113, i64 %114, !dbg !2678
  %116 = load %struct.dictEntry*, %struct.dictEntry** %115, align 8, !dbg !2678, !tbaa !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2680
  %117 = icmp eq %struct.dictEntry* %116, null, !dbg !2680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2680
  br i1 %117, label %141, label %118, !dbg !2680

; <label>:118:                                    ; preds = %102
  %119 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 5
  br label %120, !dbg !2680

; <label>:120:                                    ; preds = %137, %118
  %121 = phi %struct.dictEntry* [ %116, %118 ], [ %139, %137 ]
  %122 = load %struct.dictType*, %struct.dictType** %103, align 8, !dbg !2681, !tbaa !393
  %123 = getelementptr inbounds %struct.dictType, %struct.dictType* %122, i64 0, i32 3, !dbg !2681
  %124 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %123, align 8, !dbg !2681, !tbaa !1492
  %125 = icmp eq i32 (i8*, i8*, i8*)* %124, null, !dbg !2681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2682
  br i1 %125, label %132, label %126, !dbg !2682

; <label>:126:                                    ; preds = %120
  %127 = load i8*, i8** %119, align 8, !dbg !2681, !tbaa !396
  %128 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %121, i64 0, i32 0, !dbg !2681
  %129 = load i8*, i8** %128, align 8, !dbg !2681, !tbaa !1494
  %130 = tail call i32 %124(i8* %127, i8* %1, i8* %129) #7, !dbg !2681
  %131 = icmp eq i32 %130, 0, !dbg !2681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2681
  br i1 %131, label %137, label %136, !dbg !2681

; <label>:132:                                    ; preds = %120
  %133 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %121, i64 0, i32 0, !dbg !2681
  %134 = load i8*, i8** %133, align 8, !dbg !2681, !tbaa !1494
  %135 = icmp eq i8* %134, %1, !dbg !2681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2682
  br i1 %135, label %136, label %137, !dbg !2682

; <label>:136:                                    ; preds = %132, %126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2683
  br label %142, !dbg !2683

; <label>:137:                                    ; preds = %132, %126
  %138 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %121, i64 0, i32 2, !dbg !2684
  %139 = load %struct.dictEntry*, %struct.dictEntry** %138, align 8, !dbg !2684, !tbaa !1049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2680
  %140 = icmp eq %struct.dictEntry* %139, null, !dbg !2680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2680
  br i1 %140, label %141, label %120, !dbg !2680, !llvm.loop !1496

; <label>:141:                                    ; preds = %137, %102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2685
  br label %142, !dbg !2685

; <label>:142:                                    ; preds = %100, %136, %141
  %143 = phi %struct.dictType** [ %101, %100 ], [ %103, %136 ], [ %103, %141 ], !dbg !2671
  %144 = phi %struct.dictEntry* [ null, %100 ], [ %121, %136 ], [ null, %141 ], !dbg !2686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2687
  %145 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %144, i64 0, i32 1, !dbg !2690
  %146 = load i8*, i8** %145, align 8, !dbg !2690
  %147 = load %struct.dictType*, %struct.dictType** %143, align 8, !dbg !2671, !tbaa !393
  %148 = getelementptr inbounds %struct.dictType, %struct.dictType* %147, i64 0, i32 2, !dbg !2671
  %149 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %148, align 8, !dbg !2671, !tbaa !2655
  %150 = icmp eq i8* (i8*, i8*)* %149, null, !dbg !2671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2691
  br i1 %150, label %156, label %151, !dbg !2691

; <label>:151:                                    ; preds = %142
  %152 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 5, !dbg !2671
  %153 = load i8*, i8** %152, align 8, !dbg !2671, !tbaa !396
  %154 = tail call i8* %149(i8* %153, i8* %2) #7, !dbg !2671
  store i8* %154, i8** %145, align 8, !dbg !2671, !tbaa !1055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2671
  %155 = load %struct.dictType*, %struct.dictType** %143, align 8, !dbg !2692, !tbaa !393
  br label %157, !dbg !2671

; <label>:156:                                    ; preds = %142
  store i8* %2, i8** %145, align 8, !dbg !2671, !tbaa !1055
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %157

; <label>:157:                                    ; preds = %156, %151
  %158 = phi %struct.dictType* [ %147, %156 ], [ %155, %151 ], !dbg !2692
  %159 = getelementptr inbounds %struct.dictType, %struct.dictType* %158, i64 0, i32 5, !dbg !2692
  %160 = load void (i8*, i8*)*, void (i8*, i8*)** %159, align 8, !dbg !2692, !tbaa !1558
  %161 = icmp eq void (i8*, i8*)* %160, null, !dbg !2692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2694
  br i1 %161, label %167, label %162, !dbg !2694

; <label>:162:                                    ; preds = %157
  %163 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 5, !dbg !2692
  %164 = load i8*, i8** %163, align 8, !dbg !2692, !tbaa !396
  tail call void %160(i8* %164, i8* %146) #7, !dbg !2692
  br label %165, !dbg !2692

; <label>:165:                                    ; preds = %90, %162
  %166 = phi i32 [ 0, %162 ], [ 1, %90 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2695
  br label %167, !dbg !2696

; <label>:167:                                    ; preds = %165, %157
  %168 = phi i32 [ 0, %157 ], [ %166, %165 ], !dbg !2695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2697
  ret i32 %168, !dbg !2697
}

; Function Attrs: noredzone
declare dso_local i32 @__redisAppendCommand(%struct.redisContext*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc i32 @dictExpand(%struct.dict* nocapture, i64) unnamed_addr #0 !dbg !2698 {
  %3 = icmp ugt i64 %1, 9223372036854775806, !dbg !2725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2727
  br i1 %3, label %10, label %4, !dbg !2727

; <label>:4:                                      ; preds = %2
  %5 = icmp ugt i64 %1, 4, !dbg !2728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2731
  br i1 %5, label %6, label %10, !dbg !2731

; <label>:6:                                      ; preds = %4, %6
  %7 = phi i64 [ %8, %6 ], [ 4, %4 ]
  %8 = shl i64 %7, 1, !dbg !2732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2733
  %9 = icmp ult i64 %8, %1, !dbg !2728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2731
  br i1 %9, label %6, label %10, !dbg !2731, !llvm.loop !2734

; <label>:10:                                     ; preds = %6, %4, %2
  %11 = phi i64 [ 9223372036854775807, %2 ], [ 4, %4 ], [ %8, %6 ], !dbg !2737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2739
  %12 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !2741
  %13 = load i64, i64* %12, align 8, !dbg !2741, !tbaa !389
  %14 = icmp ugt i64 %13, %1, !dbg !2743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2744
  br i1 %14, label %79, label %15, !dbg !2744

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !2745
  %17 = bitcast %struct.dictType** %16 to i64*, !dbg !2745
  %18 = load i64, i64* %17, align 8, !dbg !2745, !tbaa !393
  %19 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 5, !dbg !2746
  %20 = bitcast i8** %19 to i64*, !dbg !2746
  %21 = load i64, i64* %20, align 8, !dbg !2746, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2755
  %22 = add i64 %11, -1, !dbg !2756
  %23 = tail call i8* @calloc(i64 %11, i64 8) #7, !dbg !2757
  %24 = bitcast i8* %23 to %struct.dictEntry**, !dbg !2758
  %25 = load i64, i64* %12, align 8, !dbg !2759, !tbaa !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2761
  %26 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, !dbg !2762
  %27 = load i64, i64* %26, align 8, !dbg !2762, !tbaa !1005
  %28 = icmp eq i64 %27, 0, !dbg !2763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2764
  %29 = icmp eq i64 %25, 0, !dbg !2738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2738
  br i1 %28, label %72, label %30, !dbg !2764

; <label>:30:                                     ; preds = %15
  %31 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0
  %32 = trunc i64 %22 to i32
  br label %33, !dbg !2764

; <label>:33:                                     ; preds = %30, %66
  %34 = phi i64 [ %25, %30 ], [ %67, %66 ]
  %35 = phi i64 [ %27, %30 ], [ %68, %66 ]
  %36 = phi i1 [ %29, %30 ], [ %71, %66 ]
  %37 = phi i64 [ 0, %30 ], [ %69, %66 ]
  br i1 %36, label %38, label %39, !dbg !2765

; <label>:38:                                     ; preds = %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2766
  br label %75, !dbg !2766

; <label>:39:                                     ; preds = %33
  %40 = load %struct.dictEntry**, %struct.dictEntry*** %31, align 8, !dbg !2767, !tbaa !381
  %41 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %40, i64 %37, !dbg !2769
  %42 = load %struct.dictEntry*, %struct.dictEntry** %41, align 8, !dbg !2769, !tbaa !328
  %43 = icmp eq %struct.dictEntry* %42, null, !dbg !2770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2772
  br i1 %43, label %66, label %44, !dbg !2771

; <label>:44:                                     ; preds = %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2774
  br label %45, !dbg !2774

; <label>:45:                                     ; preds = %44, %45
  %46 = phi %struct.dictEntry* [ %42, %44 ], [ %48, %45 ]
  %47 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %46, i64 0, i32 2, !dbg !2775
  %48 = load %struct.dictEntry*, %struct.dictEntry** %47, align 8, !dbg !2775, !tbaa !1049
  %49 = load %struct.dictType*, %struct.dictType** %16, align 8, !dbg !2777, !tbaa !393
  %50 = getelementptr inbounds %struct.dictType, %struct.dictType* %49, i64 0, i32 0, !dbg !2777
  %51 = load i32 (i8*)*, i32 (i8*)** %50, align 8, !dbg !2777, !tbaa !1480
  %52 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %46, i64 0, i32 0, !dbg !2777
  %53 = load i8*, i8** %52, align 8, !dbg !2777, !tbaa !1494
  %54 = tail call i32 %51(i8* %53) #7, !dbg !2777
  %55 = and i32 %54, %32, !dbg !2777
  %56 = zext i32 %55 to i64, !dbg !2779
  %57 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %24, i64 %56, !dbg !2779
  %58 = bitcast %struct.dictEntry** %57 to i64*, !dbg !2779
  %59 = load i64, i64* %58, align 8, !dbg !2779, !tbaa !328
  %60 = bitcast %struct.dictEntry** %47 to i64*, !dbg !2780
  store i64 %59, i64* %60, align 8, !dbg !2780, !tbaa !1049
  store %struct.dictEntry* %46, %struct.dictEntry** %57, align 8, !dbg !2781, !tbaa !328
  %61 = load i64, i64* %12, align 8, !dbg !2782, !tbaa !389
  %62 = add i64 %61, -1, !dbg !2782
  store i64 %62, i64* %12, align 8, !dbg !2782, !tbaa !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2774
  %63 = icmp eq %struct.dictEntry* %48, null, !dbg !2774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2774
  br i1 %63, label %64, label %45, !dbg !2774, !llvm.loop !2783

; <label>:64:                                     ; preds = %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2785
  %65 = load i64, i64* %26, align 8, !dbg !2762, !tbaa !1005
  br label %66, !dbg !2785

; <label>:66:                                     ; preds = %39, %64
  %67 = phi i64 [ %34, %39 ], [ %62, %64 ], !dbg !2738
  %68 = phi i64 [ %35, %39 ], [ %65, %64 ], !dbg !2762
  %69 = add nuw i64 %37, 1, !dbg !2786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2787
  %70 = icmp ult i64 %69, %68, !dbg !2763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2764
  %71 = icmp eq i64 %67, 0, !dbg !2738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2738
  br i1 %70, label %33, label %72, !dbg !2764, !llvm.loop !2788

; <label>:72:                                     ; preds = %66, %15
  %73 = phi i1 [ %29, %15 ], [ %71, %66 ], !dbg !2738
  br i1 %73, label %75, label %74, !dbg !2766

; <label>:74:                                     ; preds = %72
  tail call void @__assert_func(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.14, i64 0, i64 0), i32 126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.dictExpand, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0)) #9, !dbg !2766
  unreachable

; <label>:75:                                     ; preds = %38, %72
  %76 = bitcast %struct.dict* %0 to i8**, !dbg !2790
  %77 = load i8*, i8** %76, align 8, !dbg !2790, !tbaa !381
  tail call void @free(i8* %77) #7, !dbg !2791
  store i8* %23, i8** %76, align 8, !dbg !2792
  store i64 %18, i64* %17, align 8, !dbg !2792
  store i64 %11, i64* %26, align 8, !dbg !2792
  %78 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !2792
  store i64 %22, i64* %78, align 8, !dbg !2792
  store i64 %25, i64* %12, align 8, !dbg !2792
  store i64 %21, i64* %20, align 8, !dbg !2792
  br label %79, !dbg !2793

; <label>:79:                                     ; preds = %10, %75
  %80 = phi i32 [ 0, %75 ], [ 1, %10 ], !dbg !2738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2795
  ret i32 %80, !dbg !2795
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
!301 = !DILocation(line: 110, column: 9, scope: !299, inlinedAt: !295)
!302 = !DILocation(line: 140, column: 1, scope: !289, inlinedAt: !295)
!303 = !DILocation(line: 155, column: 24, scope: !110)
!304 = !DILocation(line: 162, column: 9, scope: !110)
!305 = !DILocation(line: 163, column: 9, scope: !306)
!306 = distinct !DILexicalBlock(scope: !307, file: !3, line: 162, column: 21)
!307 = distinct !DILexicalBlock(scope: !110, file: !3, line: 162, column: 9)
!308 = !DILocation(line: 164, column: 9, scope: !306)
!309 = !DILocation(line: 117, column: 8, scope: !289, inlinedAt: !295)
!310 = !DILocation(line: 117, column: 14, scope: !289, inlinedAt: !295)
!311 = !{!312, !313, i64 136}
!312 = !{!"redisContext", !313, i64 0, !314, i64 4, !313, i64 132, !313, i64 136, !316, i64 144, !316, i64 152, !314, i64 160, !316, i64 168, !317, i64 176, !318, i64 200}
!313 = !{!"int", !314, i64 0}
!314 = !{!"omnipotent char", !315, i64 0}
!315 = !{!"Simple C/C++ TBAA"}
!316 = !{!"any pointer", !314, i64 0}
!317 = !{!"", !316, i64 0, !316, i64 8, !313, i64 16}
!318 = !{!"", !316, i64 0}
!319 = !DILocation(line: 119, column: 9, scope: !289, inlinedAt: !295)
!320 = !DILocation(line: 119, column: 13, scope: !289, inlinedAt: !295)
!321 = !{!322, !313, i64 208}
!322 = !{!"redisAsyncContext", !312, i64 0, !313, i64 208, !316, i64 216, !316, i64 224, !323, i64 232, !316, i64 280, !316, i64 288, !324, i64 296, !325, i64 312}
!323 = !{!"", !316, i64 0, !316, i64 8, !316, i64 16, !316, i64 24, !316, i64 32, !316, i64 40}
!324 = !{!"redisCallbackList", !316, i64 0, !316, i64 8}
!325 = !{!"", !324, i64 0, !316, i64 16, !316, i64 24}
!326 = !DILocation(line: 120, column: 9, scope: !289, inlinedAt: !295)
!327 = !DILocation(line: 120, column: 16, scope: !289, inlinedAt: !295)
!328 = !{!316, !316, i64 0}
!329 = !DILocation(line: 123, column: 9, scope: !289, inlinedAt: !295)
!330 = !DILocation(line: 123, column: 12, scope: !289, inlinedAt: !295)
!331 = !DILocation(line: 123, column: 17, scope: !289, inlinedAt: !295)
!332 = !{!322, !316, i64 232}
!333 = !DILocation(line: 124, column: 12, scope: !289, inlinedAt: !295)
!334 = !DILocation(line: 124, column: 20, scope: !289, inlinedAt: !295)
!335 = !DILocation(line: 126, column: 12, scope: !289, inlinedAt: !295)
!336 = !DILocation(line: 126, column: 21, scope: !289, inlinedAt: !295)
!337 = !DILocation(line: 128, column: 12, scope: !289, inlinedAt: !295)
!338 = !DILocation(line: 128, column: 20, scope: !289, inlinedAt: !295)
!339 = !{!322, !316, i64 272}
!340 = !DILocation(line: 131, column: 9, scope: !289, inlinedAt: !295)
!341 = !DILocation(line: 131, column: 22, scope: !289, inlinedAt: !295)
!342 = !DILocation(line: 133, column: 9, scope: !289, inlinedAt: !295)
!343 = !DILocation(line: 133, column: 22, scope: !289, inlinedAt: !295)
!344 = !DILocation(line: 135, column: 9, scope: !289, inlinedAt: !295)
!345 = !DILocation(line: 135, column: 26, scope: !289, inlinedAt: !295)
!346 = !DILocalVariable(name: "type", arg: 1, scope: !347, file: !348, line: 73, type: !267)
!347 = distinct !DISubprogram(name: "dictCreate", scope: !348, file: !348, line: 73, type: !349, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !353)
!348 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/dict.c", directory: "/root/.unikraft/apps/redis/build")
!349 = !DISubroutineType(types: !350)
!350 = !{!351, !267, !12}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !83, line: 67, baseType: !254)
!353 = !{!346, !354, !355}
!354 = !DILocalVariable(name: "privDataPtr", arg: 2, scope: !347, file: !348, line: 73, type: !12)
!355 = !DILocalVariable(name: "ht", scope: !347, file: !348, line: 74, type: !351)
!356 = !DILocation(line: 73, column: 35, scope: !347, inlinedAt: !357)
!357 = distinct !DILocation(line: 137, column: 24, scope: !289, inlinedAt: !295)
!358 = !DILocation(line: 73, column: 47, scope: !347, inlinedAt: !357)
!359 = !DILocation(line: 74, column: 16, scope: !347, inlinedAt: !357)
!360 = !DILocation(line: 74, column: 11, scope: !347, inlinedAt: !357)
!361 = !DILocalVariable(name: "ht", arg: 1, scope: !362, file: !348, line: 80, type: !351)
!362 = distinct !DISubprogram(name: "_dictInit", scope: !348, file: !348, line: 80, type: !363, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !365)
!363 = !DISubroutineType(types: !364)
!364 = !{!18, !351, !267, !12}
!365 = !{!361, !366, !367}
!366 = !DILocalVariable(name: "type", arg: 2, scope: !362, file: !348, line: 80, type: !267)
!367 = !DILocalVariable(name: "privDataPtr", arg: 3, scope: !362, file: !348, line: 80, type: !12)
!368 = !DILocation(line: 80, column: 28, scope: !362, inlinedAt: !369)
!369 = distinct !DILocation(line: 75, column: 5, scope: !347, inlinedAt: !357)
!370 = !DILocation(line: 80, column: 42, scope: !362, inlinedAt: !369)
!371 = !DILocation(line: 80, column: 54, scope: !362, inlinedAt: !369)
!372 = !DILocalVariable(name: "ht", arg: 1, scope: !373, file: !348, line: 65, type: !351)
!373 = distinct !DISubprogram(name: "_dictReset", scope: !348, file: !348, line: 65, type: !374, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !376)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !351}
!376 = !{!372}
!377 = !DILocation(line: 65, column: 30, scope: !373, inlinedAt: !378)
!378 = distinct !DILocation(line: 81, column: 5, scope: !362, inlinedAt: !369)
!379 = !DILocation(line: 66, column: 9, scope: !373, inlinedAt: !378)
!380 = !DILocation(line: 66, column: 15, scope: !373, inlinedAt: !378)
!381 = !{!382, !316, i64 0}
!382 = !{!"dict", !316, i64 0, !316, i64 8, !383, i64 16, !383, i64 24, !383, i64 32, !316, i64 40}
!383 = !{!"long", !314, i64 0}
!384 = !DILocation(line: 67, column: 9, scope: !373, inlinedAt: !378)
!385 = !DILocation(line: 67, column: 14, scope: !373, inlinedAt: !378)
!386 = !{!383, !383, i64 0}
!387 = !DILocation(line: 69, column: 9, scope: !373, inlinedAt: !378)
!388 = !DILocation(line: 69, column: 14, scope: !373, inlinedAt: !378)
!389 = !{!382, !383, i64 32}
!390 = !DILocation(line: 70, column: 1, scope: !373, inlinedAt: !378)
!391 = !DILocation(line: 82, column: 9, scope: !362, inlinedAt: !369)
!392 = !DILocation(line: 82, column: 14, scope: !362, inlinedAt: !369)
!393 = !{!382, !316, i64 8}
!394 = !DILocation(line: 83, column: 9, scope: !362, inlinedAt: !369)
!395 = !DILocation(line: 83, column: 18, scope: !362, inlinedAt: !369)
!396 = !{!382, !316, i64 40}
!397 = !DILocation(line: 84, column: 5, scope: !362, inlinedAt: !369)
!398 = !DILocation(line: 76, column: 5, scope: !347, inlinedAt: !357)
!399 = !DILocation(line: 137, column: 13, scope: !289, inlinedAt: !295)
!400 = !DILocation(line: 137, column: 22, scope: !289, inlinedAt: !295)
!401 = !{!322, !316, i64 328}
!402 = !DILocation(line: 73, column: 35, scope: !347, inlinedAt: !403)
!403 = distinct !DILocation(line: 138, column: 24, scope: !289, inlinedAt: !295)
!404 = !DILocation(line: 73, column: 47, scope: !347, inlinedAt: !403)
!405 = !DILocation(line: 74, column: 16, scope: !347, inlinedAt: !403)
!406 = !DILocation(line: 74, column: 11, scope: !347, inlinedAt: !403)
!407 = !DILocation(line: 80, column: 28, scope: !362, inlinedAt: !408)
!408 = distinct !DILocation(line: 75, column: 5, scope: !347, inlinedAt: !403)
!409 = !DILocation(line: 80, column: 42, scope: !362, inlinedAt: !408)
!410 = !DILocation(line: 80, column: 54, scope: !362, inlinedAt: !408)
!411 = !DILocation(line: 65, column: 30, scope: !373, inlinedAt: !412)
!412 = distinct !DILocation(line: 81, column: 5, scope: !362, inlinedAt: !408)
!413 = !DILocation(line: 66, column: 9, scope: !373, inlinedAt: !412)
!414 = !DILocation(line: 66, column: 15, scope: !373, inlinedAt: !412)
!415 = !DILocation(line: 67, column: 9, scope: !373, inlinedAt: !412)
!416 = !DILocation(line: 67, column: 14, scope: !373, inlinedAt: !412)
!417 = !DILocation(line: 69, column: 9, scope: !373, inlinedAt: !412)
!418 = !DILocation(line: 69, column: 14, scope: !373, inlinedAt: !412)
!419 = !DILocation(line: 70, column: 1, scope: !373, inlinedAt: !412)
!420 = !DILocation(line: 82, column: 9, scope: !362, inlinedAt: !408)
!421 = !DILocation(line: 82, column: 14, scope: !362, inlinedAt: !408)
!422 = !DILocation(line: 83, column: 9, scope: !362, inlinedAt: !408)
!423 = !DILocation(line: 83, column: 18, scope: !362, inlinedAt: !408)
!424 = !DILocation(line: 84, column: 5, scope: !362, inlinedAt: !408)
!425 = !DILocation(line: 76, column: 5, scope: !347, inlinedAt: !403)
!426 = !DILocation(line: 138, column: 13, scope: !289, inlinedAt: !295)
!427 = !DILocation(line: 138, column: 22, scope: !289, inlinedAt: !295)
!428 = !{!322, !316, i64 336}
!429 = !DILocation(line: 139, column: 5, scope: !289, inlinedAt: !295)
!430 = !DILocation(line: 106, column: 24, scope: !289, inlinedAt: !295)
!431 = !DILocalVariable(name: "ac", arg: 1, scope: !432, file: !3, line: 144, type: !113)
!432 = distinct !DISubprogram(name: "__redisAsyncCopyError", scope: !3, file: !3, line: 144, type: !433, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !435)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !113}
!435 = !{!431, !436}
!436 = !DILocalVariable(name: "c", scope: !432, file: !3, line: 148, type: !279)
!437 = !DILocation(line: 144, column: 54, scope: !432, inlinedAt: !438)
!438 = distinct !DILocation(line: 167, column: 5, scope: !110)
!439 = !DILocation(line: 145, column: 9, scope: !432, inlinedAt: !438)
!440 = !DILocation(line: 148, column: 19, scope: !432, inlinedAt: !438)
!441 = !DILocation(line: 149, column: 18, scope: !432, inlinedAt: !438)
!442 = !{!312, !313, i64 0}
!443 = !DILocation(line: 149, column: 13, scope: !432, inlinedAt: !438)
!444 = !DILocation(line: 150, column: 18, scope: !432, inlinedAt: !438)
!445 = !DILocation(line: 150, column: 16, scope: !432, inlinedAt: !438)
!446 = !{!322, !316, i64 216}
!447 = !DILocation(line: 151, column: 1, scope: !432, inlinedAt: !438)
!448 = !DILocation(line: 168, column: 5, scope: !110)
!449 = !DILocation(line: 0, scope: !110)
!450 = !DILocation(line: 0, scope: !286)
!451 = !DILocation(line: 169, column: 1, scope: !110)
!452 = distinct !DISubprogram(name: "redisAsyncConnectBind", scope: !3, file: !3, line: 171, type: !453, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !455)
!453 = !DISubroutineType(types: !454)
!454 = !{!113, !273, !18, !273}
!455 = !{!456, !457, !458, !459, !460}
!456 = !DILocalVariable(name: "ip", arg: 1, scope: !452, file: !3, line: 171, type: !273)
!457 = !DILocalVariable(name: "port", arg: 2, scope: !452, file: !3, line: 171, type: !18)
!458 = !DILocalVariable(name: "source_addr", arg: 3, scope: !452, file: !3, line: 172, type: !273)
!459 = !DILocalVariable(name: "c", scope: !452, file: !3, line: 173, type: !279)
!460 = !DILocalVariable(name: "ac", scope: !452, file: !3, line: 174, type: !113)
!461 = !DILocation(line: 171, column: 54, scope: !452)
!462 = !DILocation(line: 171, column: 62, scope: !452)
!463 = !DILocation(line: 172, column: 54, scope: !452)
!464 = !DILocation(line: 173, column: 23, scope: !452)
!465 = !DILocation(line: 173, column: 19, scope: !452)
!466 = !DILocation(line: 105, column: 62, scope: !289, inlinedAt: !467)
!467 = distinct !DILocation(line: 174, column: 29, scope: !452)
!468 = !DILocation(line: 108, column: 18, scope: !289, inlinedAt: !467)
!469 = !DILocation(line: 108, column: 10, scope: !289, inlinedAt: !467)
!470 = !DILocation(line: 109, column: 12, scope: !299, inlinedAt: !467)
!471 = !DILocation(line: 109, column: 9, scope: !289, inlinedAt: !467)
!472 = !DILocation(line: 110, column: 9, scope: !299, inlinedAt: !467)
!473 = !DILocation(line: 140, column: 1, scope: !289, inlinedAt: !467)
!474 = !DILocation(line: 174, column: 24, scope: !452)
!475 = !DILocation(line: 144, column: 54, scope: !432, inlinedAt: !476)
!476 = distinct !DILocation(line: 175, column: 5, scope: !452)
!477 = !DILocation(line: 145, column: 9, scope: !432, inlinedAt: !476)
!478 = !DILocation(line: 117, column: 8, scope: !289, inlinedAt: !467)
!479 = !DILocation(line: 117, column: 14, scope: !289, inlinedAt: !467)
!480 = !DILocation(line: 119, column: 9, scope: !289, inlinedAt: !467)
!481 = !DILocation(line: 119, column: 13, scope: !289, inlinedAt: !467)
!482 = !DILocation(line: 120, column: 9, scope: !289, inlinedAt: !467)
!483 = !DILocation(line: 120, column: 16, scope: !289, inlinedAt: !467)
!484 = !DILocation(line: 123, column: 9, scope: !289, inlinedAt: !467)
!485 = !DILocation(line: 123, column: 12, scope: !289, inlinedAt: !467)
!486 = !DILocation(line: 123, column: 17, scope: !289, inlinedAt: !467)
!487 = !DILocation(line: 124, column: 12, scope: !289, inlinedAt: !467)
!488 = !DILocation(line: 124, column: 20, scope: !289, inlinedAt: !467)
!489 = !DILocation(line: 126, column: 12, scope: !289, inlinedAt: !467)
!490 = !DILocation(line: 126, column: 21, scope: !289, inlinedAt: !467)
!491 = !DILocation(line: 128, column: 12, scope: !289, inlinedAt: !467)
!492 = !DILocation(line: 128, column: 20, scope: !289, inlinedAt: !467)
!493 = !DILocation(line: 131, column: 9, scope: !289, inlinedAt: !467)
!494 = !DILocation(line: 131, column: 22, scope: !289, inlinedAt: !467)
!495 = !DILocation(line: 133, column: 9, scope: !289, inlinedAt: !467)
!496 = !DILocation(line: 133, column: 22, scope: !289, inlinedAt: !467)
!497 = !DILocation(line: 135, column: 9, scope: !289, inlinedAt: !467)
!498 = !DILocation(line: 135, column: 26, scope: !289, inlinedAt: !467)
!499 = !DILocation(line: 73, column: 35, scope: !347, inlinedAt: !500)
!500 = distinct !DILocation(line: 137, column: 24, scope: !289, inlinedAt: !467)
!501 = !DILocation(line: 73, column: 47, scope: !347, inlinedAt: !500)
!502 = !DILocation(line: 74, column: 16, scope: !347, inlinedAt: !500)
!503 = !DILocation(line: 74, column: 11, scope: !347, inlinedAt: !500)
!504 = !DILocation(line: 80, column: 28, scope: !362, inlinedAt: !505)
!505 = distinct !DILocation(line: 75, column: 5, scope: !347, inlinedAt: !500)
!506 = !DILocation(line: 80, column: 42, scope: !362, inlinedAt: !505)
!507 = !DILocation(line: 80, column: 54, scope: !362, inlinedAt: !505)
!508 = !DILocation(line: 65, column: 30, scope: !373, inlinedAt: !509)
!509 = distinct !DILocation(line: 81, column: 5, scope: !362, inlinedAt: !505)
!510 = !DILocation(line: 66, column: 9, scope: !373, inlinedAt: !509)
!511 = !DILocation(line: 66, column: 15, scope: !373, inlinedAt: !509)
!512 = !DILocation(line: 67, column: 9, scope: !373, inlinedAt: !509)
!513 = !DILocation(line: 67, column: 14, scope: !373, inlinedAt: !509)
!514 = !DILocation(line: 69, column: 9, scope: !373, inlinedAt: !509)
!515 = !DILocation(line: 69, column: 14, scope: !373, inlinedAt: !509)
!516 = !DILocation(line: 70, column: 1, scope: !373, inlinedAt: !509)
!517 = !DILocation(line: 82, column: 9, scope: !362, inlinedAt: !505)
!518 = !DILocation(line: 82, column: 14, scope: !362, inlinedAt: !505)
!519 = !DILocation(line: 83, column: 9, scope: !362, inlinedAt: !505)
!520 = !DILocation(line: 83, column: 18, scope: !362, inlinedAt: !505)
!521 = !DILocation(line: 84, column: 5, scope: !362, inlinedAt: !505)
!522 = !DILocation(line: 76, column: 5, scope: !347, inlinedAt: !500)
!523 = !DILocation(line: 137, column: 13, scope: !289, inlinedAt: !467)
!524 = !DILocation(line: 137, column: 22, scope: !289, inlinedAt: !467)
!525 = !DILocation(line: 73, column: 35, scope: !347, inlinedAt: !526)
!526 = distinct !DILocation(line: 138, column: 24, scope: !289, inlinedAt: !467)
!527 = !DILocation(line: 73, column: 47, scope: !347, inlinedAt: !526)
!528 = !DILocation(line: 74, column: 16, scope: !347, inlinedAt: !526)
!529 = !DILocation(line: 74, column: 11, scope: !347, inlinedAt: !526)
!530 = !DILocation(line: 80, column: 28, scope: !362, inlinedAt: !531)
!531 = distinct !DILocation(line: 75, column: 5, scope: !347, inlinedAt: !526)
!532 = !DILocation(line: 80, column: 42, scope: !362, inlinedAt: !531)
!533 = !DILocation(line: 80, column: 54, scope: !362, inlinedAt: !531)
!534 = !DILocation(line: 65, column: 30, scope: !373, inlinedAt: !535)
!535 = distinct !DILocation(line: 81, column: 5, scope: !362, inlinedAt: !531)
!536 = !DILocation(line: 66, column: 9, scope: !373, inlinedAt: !535)
!537 = !DILocation(line: 66, column: 15, scope: !373, inlinedAt: !535)
!538 = !DILocation(line: 67, column: 9, scope: !373, inlinedAt: !535)
!539 = !DILocation(line: 67, column: 14, scope: !373, inlinedAt: !535)
!540 = !DILocation(line: 69, column: 9, scope: !373, inlinedAt: !535)
!541 = !DILocation(line: 69, column: 14, scope: !373, inlinedAt: !535)
!542 = !DILocation(line: 70, column: 1, scope: !373, inlinedAt: !535)
!543 = !DILocation(line: 82, column: 9, scope: !362, inlinedAt: !531)
!544 = !DILocation(line: 82, column: 14, scope: !362, inlinedAt: !531)
!545 = !DILocation(line: 83, column: 9, scope: !362, inlinedAt: !531)
!546 = !DILocation(line: 83, column: 18, scope: !362, inlinedAt: !531)
!547 = !DILocation(line: 84, column: 5, scope: !362, inlinedAt: !531)
!548 = !DILocation(line: 76, column: 5, scope: !347, inlinedAt: !526)
!549 = !DILocation(line: 138, column: 13, scope: !289, inlinedAt: !467)
!550 = !DILocation(line: 138, column: 22, scope: !289, inlinedAt: !467)
!551 = !DILocation(line: 139, column: 5, scope: !289, inlinedAt: !467)
!552 = !DILocation(line: 106, column: 24, scope: !289, inlinedAt: !467)
!553 = !DILocation(line: 148, column: 19, scope: !432, inlinedAt: !476)
!554 = !DILocation(line: 149, column: 18, scope: !432, inlinedAt: !476)
!555 = !DILocation(line: 149, column: 13, scope: !432, inlinedAt: !476)
!556 = !DILocation(line: 150, column: 18, scope: !432, inlinedAt: !476)
!557 = !DILocation(line: 150, column: 16, scope: !432, inlinedAt: !476)
!558 = !DILocation(line: 151, column: 1, scope: !432, inlinedAt: !476)
!559 = !DILocation(line: 0, scope: !452)
!560 = !DILocation(line: 176, column: 5, scope: !452)
!561 = distinct !DISubprogram(name: "redisAsyncConnectBindWithReuse", scope: !3, file: !3, line: 179, type: !453, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !562)
!562 = !{!563, !564, !565, !566, !567}
!563 = !DILocalVariable(name: "ip", arg: 1, scope: !561, file: !3, line: 179, type: !273)
!564 = !DILocalVariable(name: "port", arg: 2, scope: !561, file: !3, line: 179, type: !18)
!565 = !DILocalVariable(name: "source_addr", arg: 3, scope: !561, file: !3, line: 180, type: !273)
!566 = !DILocalVariable(name: "c", scope: !561, file: !3, line: 181, type: !279)
!567 = !DILocalVariable(name: "ac", scope: !561, file: !3, line: 182, type: !113)
!568 = !DILocation(line: 179, column: 63, scope: !561)
!569 = !DILocation(line: 179, column: 71, scope: !561)
!570 = !DILocation(line: 180, column: 63, scope: !561)
!571 = !DILocation(line: 181, column: 23, scope: !561)
!572 = !DILocation(line: 181, column: 19, scope: !561)
!573 = !DILocation(line: 105, column: 62, scope: !289, inlinedAt: !574)
!574 = distinct !DILocation(line: 182, column: 29, scope: !561)
!575 = !DILocation(line: 108, column: 18, scope: !289, inlinedAt: !574)
!576 = !DILocation(line: 108, column: 10, scope: !289, inlinedAt: !574)
!577 = !DILocation(line: 109, column: 12, scope: !299, inlinedAt: !574)
!578 = !DILocation(line: 109, column: 9, scope: !289, inlinedAt: !574)
!579 = !DILocation(line: 110, column: 9, scope: !299, inlinedAt: !574)
!580 = !DILocation(line: 140, column: 1, scope: !289, inlinedAt: !574)
!581 = !DILocation(line: 182, column: 24, scope: !561)
!582 = !DILocation(line: 144, column: 54, scope: !432, inlinedAt: !583)
!583 = distinct !DILocation(line: 183, column: 5, scope: !561)
!584 = !DILocation(line: 145, column: 9, scope: !432, inlinedAt: !583)
!585 = !DILocation(line: 117, column: 8, scope: !289, inlinedAt: !574)
!586 = !DILocation(line: 117, column: 14, scope: !289, inlinedAt: !574)
!587 = !DILocation(line: 119, column: 9, scope: !289, inlinedAt: !574)
!588 = !DILocation(line: 119, column: 13, scope: !289, inlinedAt: !574)
!589 = !DILocation(line: 120, column: 9, scope: !289, inlinedAt: !574)
!590 = !DILocation(line: 120, column: 16, scope: !289, inlinedAt: !574)
!591 = !DILocation(line: 123, column: 9, scope: !289, inlinedAt: !574)
!592 = !DILocation(line: 123, column: 12, scope: !289, inlinedAt: !574)
!593 = !DILocation(line: 123, column: 17, scope: !289, inlinedAt: !574)
!594 = !DILocation(line: 124, column: 12, scope: !289, inlinedAt: !574)
!595 = !DILocation(line: 124, column: 20, scope: !289, inlinedAt: !574)
!596 = !DILocation(line: 126, column: 12, scope: !289, inlinedAt: !574)
!597 = !DILocation(line: 126, column: 21, scope: !289, inlinedAt: !574)
!598 = !DILocation(line: 128, column: 12, scope: !289, inlinedAt: !574)
!599 = !DILocation(line: 128, column: 20, scope: !289, inlinedAt: !574)
!600 = !DILocation(line: 131, column: 9, scope: !289, inlinedAt: !574)
!601 = !DILocation(line: 131, column: 22, scope: !289, inlinedAt: !574)
!602 = !DILocation(line: 133, column: 9, scope: !289, inlinedAt: !574)
!603 = !DILocation(line: 133, column: 22, scope: !289, inlinedAt: !574)
!604 = !DILocation(line: 135, column: 9, scope: !289, inlinedAt: !574)
!605 = !DILocation(line: 135, column: 26, scope: !289, inlinedAt: !574)
!606 = !DILocation(line: 73, column: 35, scope: !347, inlinedAt: !607)
!607 = distinct !DILocation(line: 137, column: 24, scope: !289, inlinedAt: !574)
!608 = !DILocation(line: 73, column: 47, scope: !347, inlinedAt: !607)
!609 = !DILocation(line: 74, column: 16, scope: !347, inlinedAt: !607)
!610 = !DILocation(line: 74, column: 11, scope: !347, inlinedAt: !607)
!611 = !DILocation(line: 80, column: 28, scope: !362, inlinedAt: !612)
!612 = distinct !DILocation(line: 75, column: 5, scope: !347, inlinedAt: !607)
!613 = !DILocation(line: 80, column: 42, scope: !362, inlinedAt: !612)
!614 = !DILocation(line: 80, column: 54, scope: !362, inlinedAt: !612)
!615 = !DILocation(line: 65, column: 30, scope: !373, inlinedAt: !616)
!616 = distinct !DILocation(line: 81, column: 5, scope: !362, inlinedAt: !612)
!617 = !DILocation(line: 66, column: 9, scope: !373, inlinedAt: !616)
!618 = !DILocation(line: 66, column: 15, scope: !373, inlinedAt: !616)
!619 = !DILocation(line: 67, column: 9, scope: !373, inlinedAt: !616)
!620 = !DILocation(line: 67, column: 14, scope: !373, inlinedAt: !616)
!621 = !DILocation(line: 69, column: 9, scope: !373, inlinedAt: !616)
!622 = !DILocation(line: 69, column: 14, scope: !373, inlinedAt: !616)
!623 = !DILocation(line: 70, column: 1, scope: !373, inlinedAt: !616)
!624 = !DILocation(line: 82, column: 9, scope: !362, inlinedAt: !612)
!625 = !DILocation(line: 82, column: 14, scope: !362, inlinedAt: !612)
!626 = !DILocation(line: 83, column: 9, scope: !362, inlinedAt: !612)
!627 = !DILocation(line: 83, column: 18, scope: !362, inlinedAt: !612)
!628 = !DILocation(line: 84, column: 5, scope: !362, inlinedAt: !612)
!629 = !DILocation(line: 76, column: 5, scope: !347, inlinedAt: !607)
!630 = !DILocation(line: 137, column: 13, scope: !289, inlinedAt: !574)
!631 = !DILocation(line: 137, column: 22, scope: !289, inlinedAt: !574)
!632 = !DILocation(line: 73, column: 35, scope: !347, inlinedAt: !633)
!633 = distinct !DILocation(line: 138, column: 24, scope: !289, inlinedAt: !574)
!634 = !DILocation(line: 73, column: 47, scope: !347, inlinedAt: !633)
!635 = !DILocation(line: 74, column: 16, scope: !347, inlinedAt: !633)
!636 = !DILocation(line: 74, column: 11, scope: !347, inlinedAt: !633)
!637 = !DILocation(line: 80, column: 28, scope: !362, inlinedAt: !638)
!638 = distinct !DILocation(line: 75, column: 5, scope: !347, inlinedAt: !633)
!639 = !DILocation(line: 80, column: 42, scope: !362, inlinedAt: !638)
!640 = !DILocation(line: 80, column: 54, scope: !362, inlinedAt: !638)
!641 = !DILocation(line: 65, column: 30, scope: !373, inlinedAt: !642)
!642 = distinct !DILocation(line: 81, column: 5, scope: !362, inlinedAt: !638)
!643 = !DILocation(line: 66, column: 9, scope: !373, inlinedAt: !642)
!644 = !DILocation(line: 66, column: 15, scope: !373, inlinedAt: !642)
!645 = !DILocation(line: 67, column: 9, scope: !373, inlinedAt: !642)
!646 = !DILocation(line: 67, column: 14, scope: !373, inlinedAt: !642)
!647 = !DILocation(line: 69, column: 9, scope: !373, inlinedAt: !642)
!648 = !DILocation(line: 69, column: 14, scope: !373, inlinedAt: !642)
!649 = !DILocation(line: 70, column: 1, scope: !373, inlinedAt: !642)
!650 = !DILocation(line: 82, column: 9, scope: !362, inlinedAt: !638)
!651 = !DILocation(line: 82, column: 14, scope: !362, inlinedAt: !638)
!652 = !DILocation(line: 83, column: 9, scope: !362, inlinedAt: !638)
!653 = !DILocation(line: 83, column: 18, scope: !362, inlinedAt: !638)
!654 = !DILocation(line: 84, column: 5, scope: !362, inlinedAt: !638)
!655 = !DILocation(line: 76, column: 5, scope: !347, inlinedAt: !633)
!656 = !DILocation(line: 138, column: 13, scope: !289, inlinedAt: !574)
!657 = !DILocation(line: 138, column: 22, scope: !289, inlinedAt: !574)
!658 = !DILocation(line: 139, column: 5, scope: !289, inlinedAt: !574)
!659 = !DILocation(line: 106, column: 24, scope: !289, inlinedAt: !574)
!660 = !DILocation(line: 148, column: 19, scope: !432, inlinedAt: !583)
!661 = !DILocation(line: 149, column: 18, scope: !432, inlinedAt: !583)
!662 = !DILocation(line: 149, column: 13, scope: !432, inlinedAt: !583)
!663 = !DILocation(line: 150, column: 18, scope: !432, inlinedAt: !583)
!664 = !DILocation(line: 150, column: 16, scope: !432, inlinedAt: !583)
!665 = !DILocation(line: 151, column: 1, scope: !432, inlinedAt: !583)
!666 = !DILocation(line: 0, scope: !561)
!667 = !DILocation(line: 184, column: 5, scope: !561)
!668 = distinct !DISubprogram(name: "redisAsyncConnectUnix", scope: !3, file: !3, line: 187, type: !669, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !671)
!669 = !DISubroutineType(types: !670)
!670 = !{!113, !273}
!671 = !{!672, !673, !674}
!672 = !DILocalVariable(name: "path", arg: 1, scope: !668, file: !3, line: 187, type: !273)
!673 = !DILocalVariable(name: "c", scope: !668, file: !3, line: 188, type: !279)
!674 = !DILocalVariable(name: "ac", scope: !668, file: !3, line: 189, type: !113)
!675 = !DILocation(line: 187, column: 54, scope: !668)
!676 = !DILocation(line: 191, column: 9, scope: !668)
!677 = !DILocation(line: 188, column: 19, scope: !668)
!678 = !DILocation(line: 192, column: 11, scope: !679)
!679 = distinct !DILexicalBlock(scope: !668, file: !3, line: 192, column: 9)
!680 = !DILocation(line: 192, column: 9, scope: !668)
!681 = !DILocation(line: 105, column: 62, scope: !289, inlinedAt: !682)
!682 = distinct !DILocation(line: 195, column: 10, scope: !668)
!683 = !DILocation(line: 108, column: 18, scope: !289, inlinedAt: !682)
!684 = !DILocation(line: 108, column: 10, scope: !289, inlinedAt: !682)
!685 = !DILocation(line: 109, column: 12, scope: !299, inlinedAt: !682)
!686 = !DILocation(line: 109, column: 9, scope: !289, inlinedAt: !682)
!687 = !DILocation(line: 110, column: 9, scope: !299, inlinedAt: !682)
!688 = !DILocation(line: 140, column: 1, scope: !289, inlinedAt: !682)
!689 = !DILocation(line: 189, column: 24, scope: !668)
!690 = !DILocation(line: 196, column: 9, scope: !668)
!691 = !DILocation(line: 197, column: 9, scope: !692)
!692 = distinct !DILexicalBlock(scope: !693, file: !3, line: 196, column: 21)
!693 = distinct !DILexicalBlock(scope: !668, file: !3, line: 196, column: 9)
!694 = !DILocation(line: 198, column: 9, scope: !692)
!695 = !DILocation(line: 117, column: 8, scope: !289, inlinedAt: !682)
!696 = !DILocation(line: 117, column: 14, scope: !289, inlinedAt: !682)
!697 = !DILocation(line: 119, column: 9, scope: !289, inlinedAt: !682)
!698 = !DILocation(line: 119, column: 13, scope: !289, inlinedAt: !682)
!699 = !DILocation(line: 120, column: 9, scope: !289, inlinedAt: !682)
!700 = !DILocation(line: 120, column: 16, scope: !289, inlinedAt: !682)
!701 = !DILocation(line: 123, column: 9, scope: !289, inlinedAt: !682)
!702 = !DILocation(line: 123, column: 12, scope: !289, inlinedAt: !682)
!703 = !DILocation(line: 123, column: 17, scope: !289, inlinedAt: !682)
!704 = !DILocation(line: 124, column: 12, scope: !289, inlinedAt: !682)
!705 = !DILocation(line: 124, column: 20, scope: !289, inlinedAt: !682)
!706 = !DILocation(line: 126, column: 12, scope: !289, inlinedAt: !682)
!707 = !DILocation(line: 126, column: 21, scope: !289, inlinedAt: !682)
!708 = !DILocation(line: 128, column: 12, scope: !289, inlinedAt: !682)
!709 = !DILocation(line: 128, column: 20, scope: !289, inlinedAt: !682)
!710 = !DILocation(line: 131, column: 9, scope: !289, inlinedAt: !682)
!711 = !DILocation(line: 131, column: 22, scope: !289, inlinedAt: !682)
!712 = !DILocation(line: 133, column: 9, scope: !289, inlinedAt: !682)
!713 = !DILocation(line: 133, column: 22, scope: !289, inlinedAt: !682)
!714 = !DILocation(line: 135, column: 9, scope: !289, inlinedAt: !682)
!715 = !DILocation(line: 135, column: 26, scope: !289, inlinedAt: !682)
!716 = !DILocation(line: 73, column: 35, scope: !347, inlinedAt: !717)
!717 = distinct !DILocation(line: 137, column: 24, scope: !289, inlinedAt: !682)
!718 = !DILocation(line: 73, column: 47, scope: !347, inlinedAt: !717)
!719 = !DILocation(line: 74, column: 16, scope: !347, inlinedAt: !717)
!720 = !DILocation(line: 74, column: 11, scope: !347, inlinedAt: !717)
!721 = !DILocation(line: 80, column: 28, scope: !362, inlinedAt: !722)
!722 = distinct !DILocation(line: 75, column: 5, scope: !347, inlinedAt: !717)
!723 = !DILocation(line: 80, column: 42, scope: !362, inlinedAt: !722)
!724 = !DILocation(line: 80, column: 54, scope: !362, inlinedAt: !722)
!725 = !DILocation(line: 65, column: 30, scope: !373, inlinedAt: !726)
!726 = distinct !DILocation(line: 81, column: 5, scope: !362, inlinedAt: !722)
!727 = !DILocation(line: 66, column: 9, scope: !373, inlinedAt: !726)
!728 = !DILocation(line: 66, column: 15, scope: !373, inlinedAt: !726)
!729 = !DILocation(line: 67, column: 9, scope: !373, inlinedAt: !726)
!730 = !DILocation(line: 67, column: 14, scope: !373, inlinedAt: !726)
!731 = !DILocation(line: 69, column: 9, scope: !373, inlinedAt: !726)
!732 = !DILocation(line: 69, column: 14, scope: !373, inlinedAt: !726)
!733 = !DILocation(line: 70, column: 1, scope: !373, inlinedAt: !726)
!734 = !DILocation(line: 82, column: 9, scope: !362, inlinedAt: !722)
!735 = !DILocation(line: 82, column: 14, scope: !362, inlinedAt: !722)
!736 = !DILocation(line: 83, column: 9, scope: !362, inlinedAt: !722)
!737 = !DILocation(line: 83, column: 18, scope: !362, inlinedAt: !722)
!738 = !DILocation(line: 84, column: 5, scope: !362, inlinedAt: !722)
!739 = !DILocation(line: 76, column: 5, scope: !347, inlinedAt: !717)
!740 = !DILocation(line: 137, column: 13, scope: !289, inlinedAt: !682)
!741 = !DILocation(line: 137, column: 22, scope: !289, inlinedAt: !682)
!742 = !DILocation(line: 73, column: 35, scope: !347, inlinedAt: !743)
!743 = distinct !DILocation(line: 138, column: 24, scope: !289, inlinedAt: !682)
!744 = !DILocation(line: 73, column: 47, scope: !347, inlinedAt: !743)
!745 = !DILocation(line: 74, column: 16, scope: !347, inlinedAt: !743)
!746 = !DILocation(line: 74, column: 11, scope: !347, inlinedAt: !743)
!747 = !DILocation(line: 80, column: 28, scope: !362, inlinedAt: !748)
!748 = distinct !DILocation(line: 75, column: 5, scope: !347, inlinedAt: !743)
!749 = !DILocation(line: 80, column: 42, scope: !362, inlinedAt: !748)
!750 = !DILocation(line: 80, column: 54, scope: !362, inlinedAt: !748)
!751 = !DILocation(line: 65, column: 30, scope: !373, inlinedAt: !752)
!752 = distinct !DILocation(line: 81, column: 5, scope: !362, inlinedAt: !748)
!753 = !DILocation(line: 66, column: 9, scope: !373, inlinedAt: !752)
!754 = !DILocation(line: 66, column: 15, scope: !373, inlinedAt: !752)
!755 = !DILocation(line: 67, column: 9, scope: !373, inlinedAt: !752)
!756 = !DILocation(line: 67, column: 14, scope: !373, inlinedAt: !752)
!757 = !DILocation(line: 69, column: 9, scope: !373, inlinedAt: !752)
!758 = !DILocation(line: 69, column: 14, scope: !373, inlinedAt: !752)
!759 = !DILocation(line: 70, column: 1, scope: !373, inlinedAt: !752)
!760 = !DILocation(line: 82, column: 9, scope: !362, inlinedAt: !748)
!761 = !DILocation(line: 82, column: 14, scope: !362, inlinedAt: !748)
!762 = !DILocation(line: 83, column: 9, scope: !362, inlinedAt: !748)
!763 = !DILocation(line: 83, column: 18, scope: !362, inlinedAt: !748)
!764 = !DILocation(line: 84, column: 5, scope: !362, inlinedAt: !748)
!765 = !DILocation(line: 76, column: 5, scope: !347, inlinedAt: !743)
!766 = !DILocation(line: 138, column: 13, scope: !289, inlinedAt: !682)
!767 = !DILocation(line: 138, column: 22, scope: !289, inlinedAt: !682)
!768 = !DILocation(line: 139, column: 5, scope: !289, inlinedAt: !682)
!769 = !DILocation(line: 106, column: 24, scope: !289, inlinedAt: !682)
!770 = !DILocation(line: 144, column: 54, scope: !432, inlinedAt: !771)
!771 = distinct !DILocation(line: 201, column: 5, scope: !668)
!772 = !DILocation(line: 145, column: 9, scope: !432, inlinedAt: !771)
!773 = !DILocation(line: 148, column: 19, scope: !432, inlinedAt: !771)
!774 = !DILocation(line: 149, column: 18, scope: !432, inlinedAt: !771)
!775 = !DILocation(line: 149, column: 13, scope: !432, inlinedAt: !771)
!776 = !DILocation(line: 150, column: 18, scope: !432, inlinedAt: !771)
!777 = !DILocation(line: 150, column: 16, scope: !432, inlinedAt: !771)
!778 = !DILocation(line: 151, column: 1, scope: !432, inlinedAt: !771)
!779 = !DILocation(line: 202, column: 5, scope: !668)
!780 = !DILocation(line: 0, scope: !668)
!781 = !DILocation(line: 0, scope: !679)
!782 = !DILocation(line: 203, column: 1, scope: !668)
!783 = distinct !DISubprogram(name: "redisAsyncSetConnectCallback", scope: !3, file: !3, line: 205, type: !784, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !786)
!784 = !DISubroutineType(types: !785)
!785 = !{!18, !113, !227}
!786 = !{!787, !788}
!787 = !DILocalVariable(name: "ac", arg: 1, scope: !783, file: !3, line: 205, type: !113)
!788 = !DILocalVariable(name: "fn", arg: 2, scope: !783, file: !3, line: 205, type: !227)
!789 = !DILocation(line: 205, column: 53, scope: !783)
!790 = !DILocation(line: 205, column: 79, scope: !783)
!791 = !DILocation(line: 206, column: 13, scope: !792)
!792 = distinct !DILexicalBlock(scope: !783, file: !3, line: 206, column: 9)
!793 = !{!322, !316, i64 288}
!794 = !DILocation(line: 206, column: 23, scope: !792)
!795 = !DILocation(line: 206, column: 9, scope: !783)
!796 = !DILocation(line: 207, column: 23, scope: !797)
!797 = distinct !DILexicalBlock(scope: !792, file: !3, line: 206, column: 32)
!798 = !DILocation(line: 212, column: 9, scope: !799)
!799 = distinct !DILexicalBlock(scope: !800, file: !3, line: 212, column: 9)
!800 = distinct !DILexicalBlock(scope: !797, file: !3, line: 212, column: 9)
!801 = !{!322, !316, i64 256}
!802 = !DILocation(line: 212, column: 9, scope: !800)
!803 = !DILocation(line: 0, scope: !783)
!804 = !DILocation(line: 0, scope: !797)
!805 = !DILocation(line: 216, column: 1, scope: !783)
!806 = distinct !DISubprogram(name: "redisAsyncSetDisconnectCallback", scope: !3, file: !3, line: 218, type: !807, isLocal: false, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !809)
!807 = !DISubroutineType(types: !808)
!808 = !{!18, !113, !220}
!809 = !{!810, !811}
!810 = !DILocalVariable(name: "ac", arg: 1, scope: !806, file: !3, line: 218, type: !113)
!811 = !DILocalVariable(name: "fn", arg: 2, scope: !806, file: !3, line: 218, type: !220)
!812 = !DILocation(line: 218, column: 56, scope: !806)
!813 = !DILocation(line: 218, column: 85, scope: !806)
!814 = !DILocation(line: 219, column: 13, scope: !815)
!815 = distinct !DILexicalBlock(scope: !806, file: !3, line: 219, column: 9)
!816 = !{!322, !316, i64 280}
!817 = !DILocation(line: 219, column: 26, scope: !815)
!818 = !DILocation(line: 219, column: 9, scope: !806)
!819 = !DILocation(line: 220, column: 26, scope: !820)
!820 = distinct !DILexicalBlock(scope: !815, file: !3, line: 219, column: 35)
!821 = !DILocation(line: 221, column: 9, scope: !820)
!822 = !DILocation(line: 0, scope: !806)
!823 = !DILocation(line: 0, scope: !820)
!824 = !DILocation(line: 224, column: 1, scope: !806)
!825 = distinct !DISubprogram(name: "redisAsyncFree", scope: !3, file: !3, line: 323, type: !433, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !826)
!826 = !{!827, !828}
!827 = !DILocalVariable(name: "ac", arg: 1, scope: !825, file: !3, line: 323, type: !113)
!828 = !DILocalVariable(name: "c", scope: !825, file: !3, line: 324, type: !279)
!829 = !DILocation(line: 323, column: 40, scope: !825)
!830 = !DILocation(line: 324, column: 19, scope: !825)
!831 = !DILocation(line: 325, column: 8, scope: !825)
!832 = !DILocation(line: 325, column: 14, scope: !825)
!833 = !DILocation(line: 326, column: 20, scope: !834)
!834 = distinct !DILexicalBlock(scope: !825, file: !3, line: 326, column: 9)
!835 = !DILocation(line: 326, column: 9, scope: !825)
!836 = !DILocation(line: 327, column: 9, scope: !834)
!837 = !DILocation(line: 328, column: 1, scope: !825)
!838 = distinct !DISubprogram(name: "__redisAsyncFree", scope: !3, file: !3, line: 275, type: !433, isLocal: true, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !839)
!839 = !{!840, !841, !842, !843, !852}
!840 = !DILocalVariable(name: "ac", arg: 1, scope: !838, file: !3, line: 275, type: !113)
!841 = !DILocalVariable(name: "c", scope: !838, file: !3, line: 276, type: !279)
!842 = !DILocalVariable(name: "cb", scope: !838, file: !3, line: 277, type: !235)
!843 = !DILocalVariable(name: "it", scope: !838, file: !3, line: 278, type: !844)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !83, line: 73, baseType: !846)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !83, line: 69, size: 256, elements: !847)
!847 = !{!848, !849, !850, !851}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !846, file: !83, line: 70, baseType: !351, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !846, file: !83, line: 71, baseType: !18, size: 32, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !846, file: !83, line: 72, baseType: !258, size: 64, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !846, file: !83, line: 72, baseType: !258, size: 64, offset: 192)
!852 = !DILocalVariable(name: "de", scope: !838, file: !3, line: 279, type: !258)
!853 = !DILocation(line: 275, column: 49, scope: !838)
!854 = !DILocation(line: 276, column: 29, scope: !838)
!855 = !DILocation(line: 276, column: 19, scope: !838)
!856 = !DILocation(line: 277, column: 5, scope: !838)
!857 = !DILocation(line: 282, column: 5, scope: !838)
!858 = !DILocation(line: 282, column: 38, scope: !838)
!859 = !DILocation(line: 277, column: 19, scope: !838)
!860 = !DILocalVariable(name: "list", arg: 1, scope: !861, file: !3, line: 249, type: !864)
!861 = distinct !DISubprogram(name: "__redisShiftCallback", scope: !3, file: !3, line: 249, type: !862, isLocal: true, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !865)
!862 = !DISubroutineType(types: !863)
!863 = !{!18, !864, !234}
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!865 = !{!860, !866, !867}
!866 = !DILocalVariable(name: "target", arg: 2, scope: !861, file: !3, line: 249, type: !234)
!867 = !DILocalVariable(name: "cb", scope: !861, file: !3, line: 250, type: !234)
!868 = !DILocation(line: 249, column: 52, scope: !861, inlinedAt: !869)
!869 = distinct !DILocation(line: 282, column: 12, scope: !838)
!870 = !DILocation(line: 249, column: 73, scope: !861, inlinedAt: !869)
!871 = !DILocation(line: 250, column: 31, scope: !861, inlinedAt: !869)
!872 = !{!324, !316, i64 0}
!873 = !DILocation(line: 250, column: 20, scope: !861, inlinedAt: !869)
!874 = !DILocation(line: 251, column: 12, scope: !875, inlinedAt: !869)
!875 = distinct !DILexicalBlock(scope: !861, file: !3, line: 251, column: 9)
!876 = !DILocation(line: 251, column: 9, scope: !861, inlinedAt: !869)
!877 = !DILocation(line: 252, column: 26, scope: !878, inlinedAt: !869)
!878 = distinct !DILexicalBlock(scope: !875, file: !3, line: 251, column: 21)
!879 = !{!880, !316, i64 0}
!880 = !{!"redisCallback", !316, i64 0, !316, i64 8, !316, i64 16}
!881 = !DILocation(line: 252, column: 20, scope: !878, inlinedAt: !869)
!882 = !DILocation(line: 253, column: 25, scope: !883, inlinedAt: !869)
!883 = distinct !DILexicalBlock(scope: !878, file: !3, line: 253, column: 13)
!884 = !{!324, !316, i64 8}
!885 = !DILocation(line: 253, column: 16, scope: !883, inlinedAt: !869)
!886 = !DILocation(line: 253, column: 13, scope: !878, inlinedAt: !869)
!887 = !DILocation(line: 254, column: 24, scope: !883, inlinedAt: !869)
!888 = !DILocation(line: 254, column: 13, scope: !883, inlinedAt: !869)
!889 = !DILocation(line: 262, column: 5, scope: !861, inlinedAt: !869)
!890 = !DILocation(line: 263, column: 1, scope: !861, inlinedAt: !869)
!891 = !DILocation(line: 286, column: 42, scope: !838)
!892 = !DILocation(line: 249, column: 52, scope: !861, inlinedAt: !893)
!893 = distinct !DILocation(line: 286, column: 12, scope: !838)
!894 = !DILocation(line: 249, column: 73, scope: !861, inlinedAt: !893)
!895 = !DILocation(line: 250, column: 31, scope: !861, inlinedAt: !893)
!896 = !DILocation(line: 250, column: 20, scope: !861, inlinedAt: !893)
!897 = !DILocation(line: 251, column: 12, scope: !875, inlinedAt: !893)
!898 = !DILocation(line: 251, column: 9, scope: !861, inlinedAt: !893)
!899 = !DILocation(line: 257, column: 13, scope: !878, inlinedAt: !869)
!900 = !DILocation(line: 258, column: 27, scope: !901, inlinedAt: !869)
!901 = distinct !DILexicalBlock(scope: !878, file: !3, line: 257, column: 13)
!902 = !DILocation(line: 258, column: 13, scope: !901, inlinedAt: !869)
!903 = !DILocation(line: 259, column: 9, scope: !878, inlinedAt: !869)
!904 = !DILocation(line: 260, column: 9, scope: !878, inlinedAt: !869)
!905 = !DILocalVariable(name: "ac", arg: 1, scope: !906, file: !3, line: 265, type: !113)
!906 = distinct !DISubprogram(name: "__redisRunCallback", scope: !3, file: !3, line: 265, type: !907, isLocal: true, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !909)
!907 = !DISubroutineType(types: !908)
!908 = !{null, !113, !234, !13}
!909 = !{!905, !910, !911, !912}
!910 = !DILocalVariable(name: "cb", arg: 2, scope: !906, file: !3, line: 265, type: !234)
!911 = !DILocalVariable(name: "reply", arg: 3, scope: !906, file: !3, line: 265, type: !13)
!912 = !DILocalVariable(name: "c", scope: !906, file: !3, line: 266, type: !279)
!913 = !DILocation(line: 265, column: 51, scope: !906, inlinedAt: !914)
!914 = distinct !DILocation(line: 283, column: 9, scope: !838)
!915 = !DILocation(line: 265, column: 70, scope: !906, inlinedAt: !914)
!916 = !DILocation(line: 265, column: 86, scope: !906, inlinedAt: !914)
!917 = !DILocation(line: 267, column: 13, scope: !918, inlinedAt: !914)
!918 = distinct !DILexicalBlock(scope: !906, file: !3, line: 267, column: 9)
!919 = !{!880, !316, i64 8}
!920 = !DILocation(line: 267, column: 16, scope: !918, inlinedAt: !914)
!921 = !DILocation(line: 267, column: 9, scope: !906, inlinedAt: !914)
!922 = !DILocation(line: 266, column: 19, scope: !906, inlinedAt: !914)
!923 = !DILocation(line: 268, column: 18, scope: !924, inlinedAt: !914)
!924 = distinct !DILexicalBlock(scope: !918, file: !3, line: 267, column: 25)
!925 = !DILocation(line: 269, column: 29, scope: !924, inlinedAt: !914)
!926 = !{!880, !316, i64 16}
!927 = !DILocation(line: 269, column: 9, scope: !924, inlinedAt: !914)
!928 = !DILocation(line: 270, column: 18, scope: !924, inlinedAt: !914)
!929 = !DILocation(line: 271, column: 5, scope: !924, inlinedAt: !914)
!930 = !DILocation(line: 272, column: 1, scope: !906, inlinedAt: !914)
!931 = distinct !{!931, !857, !932}
!932 = !DILocation(line: 283, column: 39, scope: !838)
!933 = !DILocation(line: 252, column: 26, scope: !878, inlinedAt: !893)
!934 = !DILocation(line: 252, column: 20, scope: !878, inlinedAt: !893)
!935 = !DILocation(line: 253, column: 25, scope: !883, inlinedAt: !893)
!936 = !DILocation(line: 253, column: 16, scope: !883, inlinedAt: !893)
!937 = !DILocation(line: 253, column: 13, scope: !878, inlinedAt: !893)
!938 = !DILocation(line: 254, column: 24, scope: !883, inlinedAt: !893)
!939 = !DILocation(line: 254, column: 13, scope: !883, inlinedAt: !893)
!940 = !DILocation(line: 257, column: 13, scope: !878, inlinedAt: !893)
!941 = !DILocation(line: 258, column: 27, scope: !901, inlinedAt: !893)
!942 = !DILocation(line: 258, column: 13, scope: !901, inlinedAt: !893)
!943 = !DILocation(line: 259, column: 9, scope: !878, inlinedAt: !893)
!944 = !DILocation(line: 260, column: 9, scope: !878, inlinedAt: !893)
!945 = !DILocation(line: 263, column: 1, scope: !861, inlinedAt: !893)
!946 = !DILocation(line: 286, column: 5, scope: !838)
!947 = !DILocation(line: 265, column: 51, scope: !906, inlinedAt: !948)
!948 = distinct !DILocation(line: 287, column: 9, scope: !838)
!949 = !DILocation(line: 265, column: 70, scope: !906, inlinedAt: !948)
!950 = !DILocation(line: 265, column: 86, scope: !906, inlinedAt: !948)
!951 = !DILocation(line: 267, column: 13, scope: !918, inlinedAt: !948)
!952 = !DILocation(line: 267, column: 16, scope: !918, inlinedAt: !948)
!953 = !DILocation(line: 267, column: 9, scope: !906, inlinedAt: !948)
!954 = !DILocation(line: 266, column: 19, scope: !906, inlinedAt: !948)
!955 = !DILocation(line: 268, column: 18, scope: !924, inlinedAt: !948)
!956 = !DILocation(line: 269, column: 29, scope: !924, inlinedAt: !948)
!957 = !DILocation(line: 269, column: 9, scope: !924, inlinedAt: !948)
!958 = !DILocation(line: 270, column: 18, scope: !924, inlinedAt: !948)
!959 = !DILocation(line: 271, column: 5, scope: !924, inlinedAt: !948)
!960 = !DILocation(line: 272, column: 1, scope: !906, inlinedAt: !948)
!961 = distinct !{!961, !946, !962}
!962 = !DILocation(line: 287, column: 39, scope: !838)
!963 = !DILocation(line: 262, column: 5, scope: !861, inlinedAt: !893)
!964 = !DILocation(line: 290, column: 34, scope: !838)
!965 = !DILocalVariable(name: "ht", arg: 1, scope: !966, file: !348, line: 258, type: !351)
!966 = distinct !DISubprogram(name: "dictGetIterator", scope: !348, file: !348, line: 258, type: !967, isLocal: true, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !969)
!967 = !DISubroutineType(types: !968)
!968 = !{!844, !351}
!969 = !{!965, !970}
!970 = !DILocalVariable(name: "iter", scope: !966, file: !348, line: 259, type: !844)
!971 = !DILocation(line: 258, column: 44, scope: !966, inlinedAt: !972)
!972 = distinct !DILocation(line: 290, column: 10, scope: !838)
!973 = !DILocation(line: 259, column: 26, scope: !966, inlinedAt: !972)
!974 = !DILocation(line: 259, column: 19, scope: !966, inlinedAt: !972)
!975 = !DILocation(line: 261, column: 14, scope: !966, inlinedAt: !972)
!976 = !{!977, !316, i64 0}
!977 = !{!"dictIterator", !316, i64 0, !313, i64 8, !316, i64 16, !316, i64 24}
!978 = !DILocation(line: 262, column: 11, scope: !966, inlinedAt: !972)
!979 = !DILocation(line: 262, column: 17, scope: !966, inlinedAt: !972)
!980 = !{!977, !313, i64 8}
!981 = !DILocation(line: 263, column: 11, scope: !966, inlinedAt: !972)
!982 = !DILocation(line: 264, column: 11, scope: !966, inlinedAt: !972)
!983 = !DILocation(line: 263, column: 17, scope: !966, inlinedAt: !972)
!984 = !DILocation(line: 265, column: 5, scope: !966, inlinedAt: !972)
!985 = !DILocation(line: 278, column: 19, scope: !838)
!986 = !DILocation(line: 291, column: 5, scope: !838)
!987 = !DILocation(line: 270, column: 19, scope: !988, inlinedAt: !995)
!988 = distinct !DILexicalBlock(scope: !989, file: !348, line: 270, column: 13)
!989 = distinct !DILexicalBlock(scope: !990, file: !348, line: 269, column: 15)
!990 = distinct !DISubprogram(name: "dictNext", scope: !348, file: !348, line: 268, type: !991, isLocal: true, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !993)
!991 = !DISubroutineType(types: !992)
!992 = !{!258, !844}
!993 = !{!994}
!994 = !DILocalVariable(name: "iter", arg: 1, scope: !990, file: !348, line: 268, type: !844)
!995 = distinct !DILocation(line: 291, column: 18, scope: !838)
!996 = !DILocation(line: 268, column: 42, scope: !990, inlinedAt: !995)
!997 = !DILocation(line: 269, column: 5, scope: !990, inlinedAt: !995)
!998 = !DILocation(line: 270, column: 25, scope: !988, inlinedAt: !995)
!999 = !DILocation(line: 270, column: 13, scope: !989, inlinedAt: !995)
!1000 = !DILocation(line: 271, column: 24, scope: !1001, inlinedAt: !995)
!1001 = distinct !DILexicalBlock(scope: !988, file: !348, line: 270, column: 34)
!1002 = !DILocation(line: 273, column: 35, scope: !1003, inlinedAt: !995)
!1003 = distinct !DILexicalBlock(scope: !1001, file: !348, line: 272, column: 17)
!1004 = !DILocation(line: 273, column: 39, scope: !1003, inlinedAt: !995)
!1005 = !{!382, !383, i64 16}
!1006 = !DILocation(line: 273, column: 21, scope: !1003, inlinedAt: !995)
!1007 = !DILocation(line: 272, column: 29, scope: !1003, inlinedAt: !995)
!1008 = !DILocation(line: 272, column: 17, scope: !1001, inlinedAt: !995)
!1009 = !DILocation(line: 274, column: 37, scope: !1001, inlinedAt: !995)
!1010 = !DILocation(line: 274, column: 27, scope: !1001, inlinedAt: !995)
!1011 = !DILocation(line: 275, column: 9, scope: !1001, inlinedAt: !995)
!1012 = !DILocation(line: 0, scope: !838)
!1013 = !{!977, !316, i64 16}
!1014 = !DILocation(line: 278, column: 13, scope: !1015, inlinedAt: !995)
!1015 = distinct !DILexicalBlock(scope: !989, file: !348, line: 278, column: 13)
!1016 = !DILocation(line: 278, column: 13, scope: !989, inlinedAt: !995)
!1017 = distinct !{!1017, !1018, !1019}
!1018 = !DILocation(line: 269, column: 5, scope: !990)
!1019 = !DILocation(line: 284, column: 5, scope: !990)
!1020 = !DILocation(line: 285, column: 5, scope: !990, inlinedAt: !995)
!1021 = !DILocation(line: 286, column: 1, scope: !990, inlinedAt: !995)
!1022 = !DILocation(line: 279, column: 16, scope: !838)
!1023 = !DILocalVariable(name: "iter", arg: 1, scope: !1024, file: !348, line: 288, type: !844)
!1024 = distinct !DISubprogram(name: "dictReleaseIterator", scope: !348, file: !348, line: 288, type: !1025, isLocal: true, isDefinition: true, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1027)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !844}
!1027 = !{!1023}
!1028 = !DILocation(line: 288, column: 47, scope: !1024, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 293, column: 5, scope: !838)
!1030 = !DILocation(line: 289, column: 5, scope: !1024, inlinedAt: !1029)
!1031 = !DILocation(line: 290, column: 1, scope: !1024, inlinedAt: !1029)
!1032 = !DILocation(line: 294, column: 25, scope: !838)
!1033 = !DILocation(line: 294, column: 5, scope: !838)
!1034 = !DILocation(line: 296, column: 34, scope: !838)
!1035 = !DILocation(line: 258, column: 44, scope: !966, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 296, column: 10, scope: !838)
!1037 = !DILocation(line: 259, column: 26, scope: !966, inlinedAt: !1036)
!1038 = !DILocation(line: 259, column: 19, scope: !966, inlinedAt: !1036)
!1039 = !DILocation(line: 261, column: 14, scope: !966, inlinedAt: !1036)
!1040 = !DILocation(line: 262, column: 11, scope: !966, inlinedAt: !1036)
!1041 = !DILocation(line: 262, column: 17, scope: !966, inlinedAt: !1036)
!1042 = !DILocation(line: 263, column: 11, scope: !966, inlinedAt: !1036)
!1043 = !DILocation(line: 264, column: 11, scope: !966, inlinedAt: !1036)
!1044 = !DILocation(line: 263, column: 17, scope: !966, inlinedAt: !1036)
!1045 = !DILocation(line: 265, column: 5, scope: !966, inlinedAt: !1036)
!1046 = !DILocation(line: 297, column: 5, scope: !838)
!1047 = !DILocation(line: 281, column: 44, scope: !1048, inlinedAt: !995)
!1048 = distinct !DILexicalBlock(scope: !1015, file: !348, line: 278, column: 26)
!1049 = !{!1050, !316, i64 16}
!1050 = !{!"dictEntry", !316, i64 0, !316, i64 8, !316, i64 16}
!1051 = !DILocation(line: 281, column: 29, scope: !1048, inlinedAt: !995)
!1052 = !{!977, !316, i64 24}
!1053 = !DILocation(line: 282, column: 13, scope: !1048, inlinedAt: !995)
!1054 = !DILocation(line: 292, column: 31, scope: !838)
!1055 = !{!1050, !316, i64 8}
!1056 = !DILocation(line: 265, column: 51, scope: !906, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 292, column: 9, scope: !838)
!1058 = !DILocation(line: 265, column: 70, scope: !906, inlinedAt: !1057)
!1059 = !DILocation(line: 265, column: 86, scope: !906, inlinedAt: !1057)
!1060 = !DILocation(line: 267, column: 13, scope: !918, inlinedAt: !1057)
!1061 = !DILocation(line: 267, column: 16, scope: !918, inlinedAt: !1057)
!1062 = !DILocation(line: 267, column: 9, scope: !906, inlinedAt: !1057)
!1063 = !DILocation(line: 266, column: 19, scope: !906, inlinedAt: !1057)
!1064 = !DILocation(line: 268, column: 18, scope: !924, inlinedAt: !1057)
!1065 = !DILocation(line: 269, column: 29, scope: !924, inlinedAt: !1057)
!1066 = !DILocation(line: 269, column: 9, scope: !924, inlinedAt: !1057)
!1067 = !DILocation(line: 270, column: 18, scope: !924, inlinedAt: !1057)
!1068 = !DILocation(line: 271, column: 5, scope: !924, inlinedAt: !1057)
!1069 = !DILocation(line: 272, column: 1, scope: !906, inlinedAt: !1057)
!1070 = distinct !{!1070, !986, !1071}
!1071 = !DILocation(line: 292, column: 55, scope: !838)
!1072 = !DILocation(line: 270, column: 19, scope: !988, inlinedAt: !1073)
!1073 = distinct !DILocation(line: 297, column: 18, scope: !838)
!1074 = !DILocation(line: 268, column: 42, scope: !990, inlinedAt: !1073)
!1075 = !DILocation(line: 269, column: 5, scope: !990, inlinedAt: !1073)
!1076 = !DILocation(line: 270, column: 25, scope: !988, inlinedAt: !1073)
!1077 = !DILocation(line: 270, column: 13, scope: !989, inlinedAt: !1073)
!1078 = !DILocation(line: 271, column: 24, scope: !1001, inlinedAt: !1073)
!1079 = !DILocation(line: 273, column: 35, scope: !1003, inlinedAt: !1073)
!1080 = !DILocation(line: 273, column: 39, scope: !1003, inlinedAt: !1073)
!1081 = !DILocation(line: 273, column: 21, scope: !1003, inlinedAt: !1073)
!1082 = !DILocation(line: 272, column: 29, scope: !1003, inlinedAt: !1073)
!1083 = !DILocation(line: 272, column: 17, scope: !1001, inlinedAt: !1073)
!1084 = !DILocation(line: 274, column: 37, scope: !1001, inlinedAt: !1073)
!1085 = !DILocation(line: 274, column: 27, scope: !1001, inlinedAt: !1073)
!1086 = !DILocation(line: 275, column: 9, scope: !1001, inlinedAt: !1073)
!1087 = !DILocation(line: 278, column: 13, scope: !1015, inlinedAt: !1073)
!1088 = !DILocation(line: 278, column: 13, scope: !989, inlinedAt: !1073)
!1089 = !DILocation(line: 285, column: 5, scope: !990, inlinedAt: !1073)
!1090 = !DILocation(line: 286, column: 1, scope: !990, inlinedAt: !1073)
!1091 = !DILocation(line: 288, column: 47, scope: !1024, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 299, column: 5, scope: !838)
!1093 = !DILocation(line: 289, column: 5, scope: !1024, inlinedAt: !1092)
!1094 = !DILocation(line: 290, column: 1, scope: !1024, inlinedAt: !1092)
!1095 = !DILocation(line: 300, column: 25, scope: !838)
!1096 = !DILocation(line: 300, column: 5, scope: !838)
!1097 = !DILocation(line: 303, column: 5, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 303, column: 5)
!1099 = distinct !DILexicalBlock(scope: !838, file: !3, line: 303, column: 5)
!1100 = !DILocation(line: 303, column: 5, scope: !1099)
!1101 = !DILocation(line: 281, column: 44, scope: !1048, inlinedAt: !1073)
!1102 = !DILocation(line: 281, column: 29, scope: !1048, inlinedAt: !1073)
!1103 = !DILocation(line: 282, column: 13, scope: !1048, inlinedAt: !1073)
!1104 = !DILocation(line: 298, column: 31, scope: !838)
!1105 = !DILocation(line: 265, column: 51, scope: !906, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 298, column: 9, scope: !838)
!1107 = !DILocation(line: 265, column: 70, scope: !906, inlinedAt: !1106)
!1108 = !DILocation(line: 265, column: 86, scope: !906, inlinedAt: !1106)
!1109 = !DILocation(line: 267, column: 13, scope: !918, inlinedAt: !1106)
!1110 = !DILocation(line: 267, column: 16, scope: !918, inlinedAt: !1106)
!1111 = !DILocation(line: 267, column: 9, scope: !906, inlinedAt: !1106)
!1112 = !DILocation(line: 266, column: 19, scope: !906, inlinedAt: !1106)
!1113 = !DILocation(line: 268, column: 18, scope: !924, inlinedAt: !1106)
!1114 = !DILocation(line: 269, column: 29, scope: !924, inlinedAt: !1106)
!1115 = !DILocation(line: 269, column: 9, scope: !924, inlinedAt: !1106)
!1116 = !DILocation(line: 270, column: 18, scope: !924, inlinedAt: !1106)
!1117 = !DILocation(line: 271, column: 5, scope: !924, inlinedAt: !1106)
!1118 = !DILocation(line: 272, column: 1, scope: !906, inlinedAt: !1106)
!1119 = distinct !{!1119, !1046, !1120}
!1120 = !DILocation(line: 298, column: 55, scope: !838)
!1121 = !DILocation(line: 307, column: 13, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !838, file: !3, line: 307, column: 9)
!1123 = !DILocation(line: 307, column: 9, scope: !1122)
!1124 = !DILocation(line: 307, column: 26, scope: !1122)
!1125 = !DILocation(line: 307, column: 33, scope: !1122)
!1126 = !DILocation(line: 307, column: 39, scope: !1122)
!1127 = !DILocation(line: 307, column: 9, scope: !838)
!1128 = !DILocation(line: 308, column: 22, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 308, column: 13)
!1130 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 307, column: 59)
!1131 = !DILocation(line: 308, column: 13, scope: !1130)
!1132 = !DILocation(line: 309, column: 13, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 308, column: 39)
!1134 = !DILocation(line: 310, column: 9, scope: !1133)
!1135 = !DILocation(line: 311, column: 38, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 310, column: 16)
!1137 = !DILocation(line: 311, column: 42, scope: !1136)
!1138 = !DILocation(line: 311, column: 33, scope: !1136)
!1139 = !DILocation(line: 311, column: 13, scope: !1136)
!1140 = !DILocation(line: 316, column: 5, scope: !838)
!1141 = !DILocation(line: 317, column: 1, scope: !838)
!1142 = distinct !DISubprogram(name: "redisAsyncDisconnect", scope: !3, file: !3, line: 357, type: !433, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1143)
!1143 = !{!1144, !1145}
!1144 = !DILocalVariable(name: "ac", arg: 1, scope: !1142, file: !3, line: 357, type: !113)
!1145 = !DILocalVariable(name: "c", scope: !1142, file: !3, line: 358, type: !279)
!1146 = !DILocation(line: 357, column: 46, scope: !1142)
!1147 = !DILocation(line: 358, column: 19, scope: !1142)
!1148 = !DILocation(line: 359, column: 8, scope: !1142)
!1149 = !DILocation(line: 359, column: 14, scope: !1142)
!1150 = !DILocation(line: 360, column: 20, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 360, column: 9)
!1152 = !DILocation(line: 360, column: 41, scope: !1151)
!1153 = !DILocation(line: 360, column: 56, scope: !1151)
!1154 = !{!322, !316, i64 296}
!1155 = !DILocation(line: 360, column: 61, scope: !1151)
!1156 = !DILocation(line: 360, column: 9, scope: !1142)
!1157 = !DILocalVariable(name: "ac", arg: 1, scope: !1158, file: !3, line: 331, type: !113)
!1158 = distinct !DISubprogram(name: "__redisAsyncDisconnect", scope: !3, file: !3, line: 331, type: !433, isLocal: true, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1159)
!1159 = !{!1157, !1160}
!1160 = !DILocalVariable(name: "c", scope: !1158, file: !3, line: 332, type: !279)
!1161 = !DILocation(line: 331, column: 55, scope: !1158, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 361, column: 9, scope: !1151)
!1163 = !DILocation(line: 144, column: 54, scope: !432, inlinedAt: !1164)
!1164 = distinct !DILocation(line: 335, column: 5, scope: !1158, inlinedAt: !1162)
!1165 = !DILocation(line: 145, column: 9, scope: !432, inlinedAt: !1164)
!1166 = !DILocation(line: 148, column: 19, scope: !432, inlinedAt: !1164)
!1167 = !DILocation(line: 149, column: 18, scope: !432, inlinedAt: !1164)
!1168 = !DILocation(line: 149, column: 9, scope: !432, inlinedAt: !1164)
!1169 = !DILocation(line: 149, column: 13, scope: !432, inlinedAt: !1164)
!1170 = !DILocation(line: 150, column: 18, scope: !432, inlinedAt: !1164)
!1171 = !DILocation(line: 150, column: 9, scope: !432, inlinedAt: !1164)
!1172 = !DILocation(line: 150, column: 16, scope: !432, inlinedAt: !1164)
!1173 = !DILocation(line: 151, column: 1, scope: !432, inlinedAt: !1164)
!1174 = !DILocation(line: 337, column: 17, scope: !1175, inlinedAt: !1162)
!1175 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 337, column: 9)
!1176 = !DILocation(line: 337, column: 9, scope: !1158, inlinedAt: !1162)
!1177 = !DILocation(line: 249, column: 52, scope: !861, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 339, column: 9, scope: !1179, inlinedAt: !1162)
!1179 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 337, column: 23)
!1180 = !DILocation(line: 249, column: 73, scope: !861, inlinedAt: !1178)
!1181 = !DILocation(line: 250, column: 20, scope: !861, inlinedAt: !1178)
!1182 = !DILocation(line: 251, column: 9, scope: !861, inlinedAt: !1178)
!1183 = !DILocation(line: 262, column: 5, scope: !861, inlinedAt: !1178)
!1184 = !DILocation(line: 263, column: 1, scope: !861, inlinedAt: !1178)
!1185 = !DILocation(line: 339, column: 9, scope: !1179, inlinedAt: !1162)
!1186 = !DILocation(line: 332, column: 19, scope: !1158, inlinedAt: !1162)
!1187 = !DILocation(line: 343, column: 18, scope: !1188, inlinedAt: !1162)
!1188 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 340, column: 12)
!1189 = !DILocation(line: 348, column: 5, scope: !1158, inlinedAt: !1162)
!1190 = !DILocation(line: 349, column: 1, scope: !1158, inlinedAt: !1162)
!1191 = !DILocation(line: 361, column: 9, scope: !1151)
!1192 = !DILocation(line: 362, column: 1, scope: !1142)
!1193 = distinct !DISubprogram(name: "redisProcessCallbacks", scope: !3, file: !3, line: 411, type: !433, isLocal: false, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1194)
!1194 = !{!1195, !1196, !1197, !1198, !1199}
!1195 = !DILocalVariable(name: "ac", arg: 1, scope: !1193, file: !3, line: 411, type: !113)
!1196 = !DILocalVariable(name: "c", scope: !1193, file: !3, line: 412, type: !279)
!1197 = !DILocalVariable(name: "cb", scope: !1193, file: !3, line: 413, type: !235)
!1198 = !DILocalVariable(name: "reply", scope: !1193, file: !3, line: 414, type: !12)
!1199 = !DILocalVariable(name: "status", scope: !1193, file: !3, line: 415, type: !18)
!1200 = !DILocation(line: 411, column: 47, scope: !1193)
!1201 = !DILocation(line: 412, column: 29, scope: !1193)
!1202 = !DILocation(line: 412, column: 19, scope: !1193)
!1203 = !DILocation(line: 413, column: 5, scope: !1193)
!1204 = !DILocation(line: 413, column: 19, scope: !1193)
!1205 = !DILocation(line: 414, column: 5, scope: !1193)
!1206 = !DILocation(line: 414, column: 11, scope: !1193)
!1207 = !DILocation(line: 417, column: 5, scope: !1193)
!1208 = !DILocation(line: 417, column: 21, scope: !1193)
!1209 = !DILocation(line: 415, column: 9, scope: !1193)
!1210 = !DILocation(line: 417, column: 46, scope: !1193)
!1211 = !DILocation(line: 418, column: 13, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 418, column: 13)
!1213 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 417, column: 59)
!1214 = !DILocation(line: 418, column: 19, scope: !1212)
!1215 = !DILocation(line: 418, column: 13, scope: !1213)
!1216 = !DILocation(line: 421, column: 20, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 421, column: 17)
!1218 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 418, column: 28)
!1219 = !DILocation(line: 421, column: 26, scope: !1217)
!1220 = !DILocation(line: 421, column: 48, scope: !1217)
!1221 = !DILocation(line: 421, column: 61, scope: !1217)
!1222 = !{!312, !316, i64 144}
!1223 = !DILocalVariable(name: "s", arg: 1, scope: !1224, file: !38, line: 86, type: !1227)
!1224 = distinct !DISubprogram(name: "sdslen", scope: !38, file: !38, line: 86, type: !1225, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1228)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!22, !1227}
!1227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!1228 = !{!1223, !1229}
!1229 = !DILocalVariable(name: "flags", scope: !1224, file: !38, line: 87, type: !36)
!1230 = !DILocation(line: 86, column: 39, scope: !1224, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 421, column: 51, scope: !1217)
!1232 = !DILocation(line: 87, column: 27, scope: !1224, inlinedAt: !1231)
!1233 = !{!314, !314, i64 0}
!1234 = !DILocation(line: 87, column: 19, scope: !1224, inlinedAt: !1231)
!1235 = !DILocation(line: 88, column: 5, scope: !1224, inlinedAt: !1231)
!1236 = !DILocation(line: 90, column: 20, scope: !1237, inlinedAt: !1231)
!1237 = distinct !DILexicalBlock(scope: !1224, file: !38, line: 88, column: 33)
!1238 = !DILocation(line: 90, column: 13, scope: !1237, inlinedAt: !1231)
!1239 = !DILocation(line: 92, column: 20, scope: !1237, inlinedAt: !1231)
!1240 = !DILocation(line: 92, column: 34, scope: !1237, inlinedAt: !1231)
!1241 = !DILocation(line: 92, column: 13, scope: !1237, inlinedAt: !1231)
!1242 = !DILocation(line: 94, column: 20, scope: !1237, inlinedAt: !1231)
!1243 = !DILocation(line: 94, column: 35, scope: !1237, inlinedAt: !1231)
!1244 = !{!1245, !1245, i64 0}
!1245 = !{!"short", !314, i64 0}
!1246 = !DILocation(line: 94, column: 13, scope: !1237, inlinedAt: !1231)
!1247 = !DILocation(line: 96, column: 20, scope: !1237, inlinedAt: !1231)
!1248 = !DILocation(line: 96, column: 35, scope: !1237, inlinedAt: !1231)
!1249 = !{!313, !313, i64 0}
!1250 = !DILocation(line: 96, column: 13, scope: !1237, inlinedAt: !1231)
!1251 = !DILocation(line: 98, column: 20, scope: !1237, inlinedAt: !1231)
!1252 = !DILocation(line: 98, column: 35, scope: !1237, inlinedAt: !1231)
!1253 = !DILocation(line: 98, column: 13, scope: !1237, inlinedAt: !1231)
!1254 = !DILocation(line: 100, column: 5, scope: !1224, inlinedAt: !1231)
!1255 = !DILocation(line: 101, column: 1, scope: !1224, inlinedAt: !1231)
!1256 = !DILocation(line: 422, column: 17, scope: !1217)
!1257 = !DILocation(line: 0, scope: !1237, inlinedAt: !1231)
!1258 = !DILocation(line: 0, scope: !1217)
!1259 = !DILocation(line: 421, column: 67, scope: !1217)
!1260 = !DILocation(line: 422, column: 32, scope: !1217)
!1261 = !DILocation(line: 422, column: 37, scope: !1217)
!1262 = !DILocation(line: 421, column: 17, scope: !1218)
!1263 = !DILocation(line: 331, column: 55, scope: !1158, inlinedAt: !1264)
!1264 = distinct !DILocation(line: 423, column: 17, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 422, column: 46)
!1266 = !DILocation(line: 144, column: 54, scope: !432, inlinedAt: !1267)
!1267 = distinct !DILocation(line: 335, column: 5, scope: !1158, inlinedAt: !1264)
!1268 = !DILocation(line: 145, column: 9, scope: !432, inlinedAt: !1267)
!1269 = !DILocation(line: 148, column: 19, scope: !432, inlinedAt: !1267)
!1270 = !DILocation(line: 149, column: 18, scope: !432, inlinedAt: !1267)
!1271 = !DILocation(line: 149, column: 9, scope: !432, inlinedAt: !1267)
!1272 = !DILocation(line: 149, column: 13, scope: !432, inlinedAt: !1267)
!1273 = !DILocation(line: 150, column: 18, scope: !432, inlinedAt: !1267)
!1274 = !DILocation(line: 150, column: 9, scope: !432, inlinedAt: !1267)
!1275 = !DILocation(line: 150, column: 16, scope: !432, inlinedAt: !1267)
!1276 = !DILocation(line: 151, column: 1, scope: !432, inlinedAt: !1267)
!1277 = !DILocation(line: 337, column: 17, scope: !1175, inlinedAt: !1264)
!1278 = !DILocation(line: 337, column: 9, scope: !1158, inlinedAt: !1264)
!1279 = !DILocation(line: 249, column: 52, scope: !861, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 339, column: 9, scope: !1179, inlinedAt: !1264)
!1281 = !DILocation(line: 249, column: 73, scope: !861, inlinedAt: !1280)
!1282 = !DILocation(line: 250, column: 20, scope: !861, inlinedAt: !1280)
!1283 = !DILocation(line: 251, column: 9, scope: !861, inlinedAt: !1280)
!1284 = !DILocation(line: 262, column: 5, scope: !861, inlinedAt: !1280)
!1285 = !DILocation(line: 263, column: 1, scope: !861, inlinedAt: !1280)
!1286 = !DILocation(line: 339, column: 9, scope: !1179, inlinedAt: !1264)
!1287 = !DILocation(line: 332, column: 19, scope: !1158, inlinedAt: !1264)
!1288 = !DILocation(line: 343, column: 18, scope: !1188, inlinedAt: !1264)
!1289 = !DILocation(line: 348, column: 5, scope: !1158, inlinedAt: !1264)
!1290 = !DILocation(line: 349, column: 1, scope: !1158, inlinedAt: !1264)
!1291 = !DILocation(line: 424, column: 17, scope: !1265)
!1292 = !DILocation(line: 428, column: 25, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 428, column: 16)
!1294 = !DILocation(line: 428, column: 16, scope: !1218)
!1295 = !DILocalVariable(name: "list", arg: 1, scope: !1296, file: !3, line: 227, type: !864)
!1296 = distinct !DISubprogram(name: "__redisPushCallback", scope: !3, file: !3, line: 227, type: !862, isLocal: true, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1297)
!1297 = !{!1295, !1298, !1299}
!1298 = !DILocalVariable(name: "source", arg: 2, scope: !1296, file: !3, line: 227, type: !234)
!1299 = !DILocalVariable(name: "cb", scope: !1296, file: !3, line: 228, type: !234)
!1300 = !DILocation(line: 227, column: 51, scope: !1296, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 429, column: 17, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 428, column: 45)
!1303 = !DILocation(line: 227, column: 72, scope: !1296, inlinedAt: !1301)
!1304 = !DILocation(line: 231, column: 10, scope: !1296, inlinedAt: !1301)
!1305 = !DILocation(line: 228, column: 20, scope: !1296, inlinedAt: !1301)
!1306 = !DILocation(line: 232, column: 12, scope: !1307, inlinedAt: !1301)
!1307 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 232, column: 9)
!1308 = !DILocation(line: 232, column: 9, scope: !1296, inlinedAt: !1301)
!1309 = !DILocation(line: 0, scope: !1302)
!1310 = !DILocation(line: 236, column: 9, scope: !1311, inlinedAt: !1301)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 235, column: 25)
!1312 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 235, column: 9)
!1313 = !DILocation(line: 237, column: 13, scope: !1311, inlinedAt: !1301)
!1314 = !DILocation(line: 237, column: 18, scope: !1311, inlinedAt: !1301)
!1315 = !DILocation(line: 238, column: 5, scope: !1311, inlinedAt: !1301)
!1316 = !DILocation(line: 241, column: 15, scope: !1317, inlinedAt: !1301)
!1317 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 241, column: 9)
!1318 = !DILocation(line: 241, column: 20, scope: !1317, inlinedAt: !1301)
!1319 = !DILocation(line: 241, column: 9, scope: !1296, inlinedAt: !1301)
!1320 = !DILocation(line: 242, column: 20, scope: !1317, inlinedAt: !1301)
!1321 = !DILocation(line: 242, column: 9, scope: !1317, inlinedAt: !1301)
!1322 = !DILocation(line: 243, column: 15, scope: !1323, inlinedAt: !1301)
!1323 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 243, column: 9)
!1324 = !DILocation(line: 243, column: 20, scope: !1323, inlinedAt: !1301)
!1325 = !DILocation(line: 243, column: 9, scope: !1296, inlinedAt: !1301)
!1326 = !DILocation(line: 244, column: 26, scope: !1323, inlinedAt: !1301)
!1327 = !DILocation(line: 244, column: 9, scope: !1323, inlinedAt: !1301)
!1328 = !DILocation(line: 245, column: 16, scope: !1296, inlinedAt: !1301)
!1329 = !DILocation(line: 246, column: 5, scope: !1296, inlinedAt: !1301)
!1330 = !DILocation(line: 247, column: 1, scope: !1296, inlinedAt: !1301)
!1331 = !DILocation(line: 430, column: 13, scope: !1302)
!1332 = !DILocation(line: 249, column: 52, scope: !861, inlinedAt: !1333)
!1333 = distinct !DILocation(line: 439, column: 13, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 439, column: 13)
!1335 = !DILocation(line: 249, column: 73, scope: !861, inlinedAt: !1333)
!1336 = !DILocation(line: 250, column: 31, scope: !861, inlinedAt: !1333)
!1337 = !DILocation(line: 250, column: 20, scope: !861, inlinedAt: !1333)
!1338 = !DILocation(line: 251, column: 12, scope: !875, inlinedAt: !1333)
!1339 = !DILocation(line: 251, column: 9, scope: !861, inlinedAt: !1333)
!1340 = !DILocation(line: 252, column: 26, scope: !878, inlinedAt: !1333)
!1341 = !DILocation(line: 252, column: 20, scope: !878, inlinedAt: !1333)
!1342 = !DILocation(line: 253, column: 25, scope: !883, inlinedAt: !1333)
!1343 = !DILocation(line: 253, column: 16, scope: !883, inlinedAt: !1333)
!1344 = !DILocation(line: 253, column: 13, scope: !878, inlinedAt: !1333)
!1345 = !DILocation(line: 254, column: 24, scope: !883, inlinedAt: !1333)
!1346 = !DILocation(line: 254, column: 13, scope: !883, inlinedAt: !1333)
!1347 = !DILocation(line: 257, column: 13, scope: !878, inlinedAt: !1333)
!1348 = !DILocation(line: 258, column: 27, scope: !901, inlinedAt: !1333)
!1349 = !DILocation(line: 258, column: 13, scope: !901, inlinedAt: !1333)
!1350 = !DILocation(line: 259, column: 9, scope: !878, inlinedAt: !1333)
!1351 = !DILocation(line: 439, column: 13, scope: !1213)
!1352 = !DILocation(line: 262, column: 5, scope: !861, inlinedAt: !1333)
!1353 = !DILocation(line: 263, column: 1, scope: !861, inlinedAt: !1333)
!1354 = !DILocation(line: 455, column: 39, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 455, column: 17)
!1356 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 439, column: 65)
!1357 = !{!1358, !313, i64 0}
!1358 = !{!"redisReply", !313, i64 0, !1359, i64 8, !383, i64 16, !316, i64 24, !383, i64 32, !316, i64 40}
!1359 = !{!"long long", !314, i64 0}
!1360 = !DILocation(line: 455, column: 44, scope: !1355)
!1361 = !DILocation(line: 455, column: 17, scope: !1356)
!1362 = !DILocation(line: 456, column: 20, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 455, column: 66)
!1364 = !DILocation(line: 456, column: 24, scope: !1363)
!1365 = !DILocation(line: 457, column: 26, scope: !1363)
!1366 = !DILocation(line: 457, column: 81, scope: !1363)
!1367 = !{!1358, !316, i64 24}
!1368 = !DILocation(line: 457, column: 17, scope: !1363)
!1369 = !DILocation(line: 458, column: 20, scope: !1363)
!1370 = !{!312, !316, i64 152}
!1371 = !DILocation(line: 458, column: 28, scope: !1363)
!1372 = !{!1373, !316, i64 544}
!1373 = !{!"redisReader", !313, i64 0, !314, i64 4, !316, i64 136, !383, i64 144, !383, i64 152, !383, i64 160, !314, i64 168, !313, i64 528, !316, i64 536, !316, i64 544, !316, i64 552}
!1374 = !DILocation(line: 458, column: 32, scope: !1363)
!1375 = !{!1376, !316, i64 32}
!1376 = !{!"redisReplyObjectFunctions", !316, i64 0, !316, i64 8, !316, i64 16, !316, i64 24, !316, i64 32}
!1377 = !DILocation(line: 458, column: 43, scope: !1363)
!1378 = !DILocation(line: 458, column: 17, scope: !1363)
!1379 = !DILocation(line: 331, column: 55, scope: !1158, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 459, column: 17, scope: !1363)
!1381 = !DILocation(line: 144, column: 54, scope: !432, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 335, column: 5, scope: !1158, inlinedAt: !1380)
!1383 = !DILocation(line: 145, column: 9, scope: !432, inlinedAt: !1382)
!1384 = !DILocation(line: 148, column: 19, scope: !432, inlinedAt: !1382)
!1385 = !DILocation(line: 149, column: 18, scope: !432, inlinedAt: !1382)
!1386 = !DILocation(line: 149, column: 9, scope: !432, inlinedAt: !1382)
!1387 = !DILocation(line: 149, column: 13, scope: !432, inlinedAt: !1382)
!1388 = !DILocation(line: 150, column: 9, scope: !432, inlinedAt: !1382)
!1389 = !DILocation(line: 150, column: 16, scope: !432, inlinedAt: !1382)
!1390 = !DILocation(line: 151, column: 1, scope: !432, inlinedAt: !1382)
!1391 = !DILocation(line: 337, column: 17, scope: !1175, inlinedAt: !1380)
!1392 = !DILocation(line: 337, column: 9, scope: !1158, inlinedAt: !1380)
!1393 = !DILocation(line: 249, column: 52, scope: !861, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 339, column: 9, scope: !1179, inlinedAt: !1380)
!1395 = !DILocation(line: 249, column: 73, scope: !861, inlinedAt: !1394)
!1396 = !DILocation(line: 250, column: 31, scope: !861, inlinedAt: !1394)
!1397 = !DILocation(line: 250, column: 20, scope: !861, inlinedAt: !1394)
!1398 = !DILocation(line: 251, column: 12, scope: !875, inlinedAt: !1394)
!1399 = !DILocation(line: 251, column: 9, scope: !861, inlinedAt: !1394)
!1400 = !DILocation(line: 252, column: 26, scope: !878, inlinedAt: !1394)
!1401 = !DILocation(line: 252, column: 20, scope: !878, inlinedAt: !1394)
!1402 = !DILocation(line: 253, column: 25, scope: !883, inlinedAt: !1394)
!1403 = !DILocation(line: 253, column: 16, scope: !883, inlinedAt: !1394)
!1404 = !DILocation(line: 253, column: 13, scope: !878, inlinedAt: !1394)
!1405 = !DILocation(line: 254, column: 24, scope: !883, inlinedAt: !1394)
!1406 = !DILocation(line: 254, column: 13, scope: !883, inlinedAt: !1394)
!1407 = !DILocation(line: 262, column: 5, scope: !861, inlinedAt: !1394)
!1408 = !DILocation(line: 263, column: 1, scope: !861, inlinedAt: !1394)
!1409 = !DILocation(line: 339, column: 9, scope: !1179, inlinedAt: !1380)
!1410 = !DILocation(line: 257, column: 13, scope: !878, inlinedAt: !1394)
!1411 = !DILocation(line: 259, column: 14, scope: !878, inlinedAt: !1394)
!1412 = !DILocation(line: 259, column: 9, scope: !878, inlinedAt: !1394)
!1413 = !DILocation(line: 260, column: 9, scope: !878, inlinedAt: !1394)
!1414 = !DILocation(line: 332, column: 19, scope: !1158, inlinedAt: !1380)
!1415 = !DILocation(line: 343, column: 18, scope: !1188, inlinedAt: !1380)
!1416 = !DILocation(line: 348, column: 5, scope: !1158, inlinedAt: !1380)
!1417 = !DILocation(line: 349, column: 1, scope: !1158, inlinedAt: !1380)
!1418 = !DILocation(line: 460, column: 17, scope: !1363)
!1419 = !DILocation(line: 463, column: 13, scope: !1356)
!1420 = !DILocation(line: 464, column: 16, scope: !1356)
!1421 = !DILocalVariable(name: "ac", arg: 1, scope: !1422, file: !3, line: 364, type: !113)
!1422 = distinct !DISubprogram(name: "__redisGetSubscribeCallback", scope: !3, file: !3, line: 364, type: !1423, isLocal: true, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1425)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!18, !113, !13, !234}
!1425 = !{!1421, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434}
!1426 = !DILocalVariable(name: "reply", arg: 2, scope: !1422, file: !3, line: 364, type: !13)
!1427 = !DILocalVariable(name: "dstcb", arg: 3, scope: !1422, file: !3, line: 364, type: !234)
!1428 = !DILocalVariable(name: "c", scope: !1422, file: !3, line: 365, type: !279)
!1429 = !DILocalVariable(name: "callbacks", scope: !1422, file: !3, line: 366, type: !351)
!1430 = !DILocalVariable(name: "de", scope: !1422, file: !3, line: 367, type: !258)
!1431 = !DILocalVariable(name: "pvariant", scope: !1422, file: !3, line: 368, type: !18)
!1432 = !DILocalVariable(name: "stype", scope: !1422, file: !3, line: 369, type: !28)
!1433 = !DILocalVariable(name: "sname", scope: !1422, file: !3, line: 370, type: !37)
!1434 = !DILocalVariable(name: "__x", scope: !1435, file: !3, line: 378, type: !29)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 378, column: 21)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 374, column: 43)
!1437 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 374, column: 9)
!1438 = !DILocation(line: 364, column: 59, scope: !1422, inlinedAt: !1439)
!1439 = distinct !DILocation(line: 465, column: 17, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 464, column: 16)
!1441 = !DILocation(line: 364, column: 75, scope: !1422, inlinedAt: !1439)
!1442 = !DILocation(line: 364, column: 97, scope: !1422, inlinedAt: !1439)
!1443 = !DILocation(line: 365, column: 19, scope: !1422, inlinedAt: !1439)
!1444 = !DILocation(line: 374, column: 16, scope: !1437, inlinedAt: !1439)
!1445 = !DILocation(line: 374, column: 21, scope: !1437, inlinedAt: !1439)
!1446 = !DILocation(line: 374, column: 9, scope: !1422, inlinedAt: !1439)
!1447 = !DILocation(line: 375, column: 9, scope: !1436, inlinedAt: !1439)
!1448 = !{!1358, !383, i64 32}
!1449 = !DILocation(line: 376, column: 9, scope: !1436, inlinedAt: !1439)
!1450 = !{!1358, !316, i64 40}
!1451 = !DILocation(line: 377, column: 36, scope: !1436, inlinedAt: !1439)
!1452 = !DILocation(line: 369, column: 11, scope: !1422, inlinedAt: !1439)
!1453 = !DILocation(line: 378, column: 21, scope: !1435, inlinedAt: !1439)
!1454 = !DILocation(line: 378, column: 39, scope: !1436, inlinedAt: !1439)
!1455 = !DILocation(line: 380, column: 13, scope: !1436, inlinedAt: !1439)
!1456 = !DILocation(line: 366, column: 11, scope: !1422, inlinedAt: !1439)
!1457 = !DILocation(line: 0, scope: !1440)
!1458 = !DILocation(line: 386, column: 9, scope: !1436, inlinedAt: !1439)
!1459 = !DILocation(line: 387, column: 46, scope: !1436, inlinedAt: !1439)
!1460 = !DILocation(line: 387, column: 69, scope: !1436, inlinedAt: !1439)
!1461 = !{!1358, !383, i64 16}
!1462 = !DILocation(line: 387, column: 17, scope: !1436, inlinedAt: !1439)
!1463 = !DILocation(line: 370, column: 9, scope: !1422, inlinedAt: !1439)
!1464 = !DILocalVariable(name: "ht", arg: 1, scope: !1465, file: !348, line: 243, type: !351)
!1465 = distinct !DISubprogram(name: "dictFind", scope: !348, file: !348, line: 243, type: !1466, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1468)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!258, !351, !90}
!1468 = !{!1464, !1469, !1470, !1471}
!1469 = !DILocalVariable(name: "key", arg: 2, scope: !1465, file: !348, line: 243, type: !90)
!1470 = !DILocalVariable(name: "he", scope: !1465, file: !348, line: 244, type: !258)
!1471 = !DILocalVariable(name: "h", scope: !1465, file: !348, line: 245, type: !7)
!1472 = !DILocation(line: 243, column: 34, scope: !1465, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 388, column: 14, scope: !1436, inlinedAt: !1439)
!1474 = !DILocation(line: 243, column: 50, scope: !1465, inlinedAt: !1473)
!1475 = !DILocation(line: 247, column: 13, scope: !1476, inlinedAt: !1473)
!1476 = distinct !DILexicalBlock(scope: !1465, file: !348, line: 247, column: 9)
!1477 = !DILocation(line: 247, column: 18, scope: !1476, inlinedAt: !1473)
!1478 = !DILocation(line: 247, column: 9, scope: !1465, inlinedAt: !1473)
!1479 = !DILocation(line: 248, column: 9, scope: !1465, inlinedAt: !1473)
!1480 = !{!1481, !316, i64 0}
!1481 = !{!"dictType", !316, i64 0, !316, i64 8, !316, i64 16, !316, i64 24, !316, i64 32, !316, i64 40}
!1482 = !DILocation(line: 248, column: 36, scope: !1465, inlinedAt: !1473)
!1483 = !{!382, !383, i64 24}
!1484 = !DILocation(line: 245, column: 18, scope: !1465, inlinedAt: !1473)
!1485 = !DILocation(line: 249, column: 14, scope: !1465, inlinedAt: !1473)
!1486 = !DILocation(line: 249, column: 10, scope: !1465, inlinedAt: !1473)
!1487 = !DILocation(line: 244, column: 16, scope: !1465, inlinedAt: !1473)
!1488 = !DILocation(line: 250, column: 5, scope: !1465, inlinedAt: !1473)
!1489 = !DILocation(line: 251, column: 13, scope: !1490, inlinedAt: !1473)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !348, line: 251, column: 13)
!1491 = distinct !DILexicalBlock(scope: !1465, file: !348, line: 250, column: 15)
!1492 = !{!1481, !316, i64 24}
!1493 = !DILocation(line: 251, column: 13, scope: !1491, inlinedAt: !1473)
!1494 = !{!1050, !316, i64 0}
!1495 = !DILocation(line: 253, column: 18, scope: !1491, inlinedAt: !1473)
!1496 = distinct !{!1496, !1497, !1498}
!1497 = !DILocation(line: 250, column: 5, scope: !1465)
!1498 = !DILocation(line: 254, column: 5, scope: !1465)
!1499 = !DILocation(line: 0, scope: !1436, inlinedAt: !1439)
!1500 = !DILocation(line: 256, column: 1, scope: !1465, inlinedAt: !1473)
!1501 = !DILocation(line: 367, column: 16, scope: !1422, inlinedAt: !1439)
!1502 = !DILocation(line: 389, column: 13, scope: !1436, inlinedAt: !1439)
!1503 = !DILocation(line: 252, column: 13, scope: !1490, inlinedAt: !1473)
!1504 = !DILocation(line: 390, column: 26, scope: !1505, inlinedAt: !1439)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 389, column: 25)
!1506 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 389, column: 13)
!1507 = !DILocation(line: 390, column: 13, scope: !1505, inlinedAt: !1439)
!1508 = !DILocation(line: 393, column: 33, scope: !1509, inlinedAt: !1439)
!1509 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 393, column: 17)
!1510 = !DILocation(line: 393, column: 17, scope: !1509, inlinedAt: !1439)
!1511 = !DILocation(line: 393, column: 58, scope: !1509, inlinedAt: !1439)
!1512 = !DILocation(line: 393, column: 17, scope: !1505, inlinedAt: !1439)
!1513 = !DILocalVariable(name: "ht", arg: 1, scope: !1514, file: !348, line: 182, type: !351)
!1514 = distinct !DISubprogram(name: "dictDelete", scope: !348, file: !348, line: 182, type: !1515, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1517)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!18, !351, !90}
!1517 = !{!1513, !1518, !1519, !1520, !1521}
!1518 = !DILocalVariable(name: "key", arg: 2, scope: !1514, file: !348, line: 182, type: !90)
!1519 = !DILocalVariable(name: "h", scope: !1514, file: !348, line: 183, type: !7)
!1520 = !DILocalVariable(name: "de", scope: !1514, file: !348, line: 184, type: !258)
!1521 = !DILocalVariable(name: "prevde", scope: !1514, file: !348, line: 184, type: !258)
!1522 = !DILocation(line: 182, column: 29, scope: !1514, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 394, column: 17, scope: !1524, inlinedAt: !1439)
!1524 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 393, column: 64)
!1525 = !DILocation(line: 182, column: 45, scope: !1514, inlinedAt: !1523)
!1526 = !DILocation(line: 186, column: 13, scope: !1527, inlinedAt: !1523)
!1527 = distinct !DILexicalBlock(scope: !1514, file: !348, line: 186, column: 9)
!1528 = !DILocation(line: 186, column: 18, scope: !1527, inlinedAt: !1523)
!1529 = !DILocation(line: 186, column: 9, scope: !1514, inlinedAt: !1523)
!1530 = !DILocation(line: 188, column: 9, scope: !1514, inlinedAt: !1523)
!1531 = !DILocation(line: 188, column: 36, scope: !1514, inlinedAt: !1523)
!1532 = !DILocation(line: 183, column: 18, scope: !1514, inlinedAt: !1523)
!1533 = !DILocation(line: 189, column: 14, scope: !1514, inlinedAt: !1523)
!1534 = !DILocation(line: 189, column: 10, scope: !1514, inlinedAt: !1523)
!1535 = !DILocation(line: 184, column: 16, scope: !1514, inlinedAt: !1523)
!1536 = !DILocation(line: 184, column: 21, scope: !1514, inlinedAt: !1523)
!1537 = !DILocation(line: 192, column: 5, scope: !1514, inlinedAt: !1523)
!1538 = !DILocation(line: 193, column: 13, scope: !1539, inlinedAt: !1523)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !348, line: 193, column: 13)
!1540 = distinct !DILexicalBlock(scope: !1514, file: !348, line: 192, column: 15)
!1541 = !DILocation(line: 193, column: 13, scope: !1540, inlinedAt: !1523)
!1542 = !DILocation(line: 195, column: 17, scope: !1543, inlinedAt: !1523)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !348, line: 195, column: 17)
!1544 = distinct !DILexicalBlock(scope: !1539, file: !348, line: 193, column: 50)
!1545 = !DILocation(line: 0, scope: !1543, inlinedAt: !1523)
!1546 = !DILocation(line: 195, column: 17, scope: !1544, inlinedAt: !1523)
!1547 = !DILocation(line: 196, column: 25, scope: !1543, inlinedAt: !1523)
!1548 = !DILocation(line: 196, column: 17, scope: !1543, inlinedAt: !1523)
!1549 = !DILocation(line: 198, column: 21, scope: !1543, inlinedAt: !1523)
!1550 = !DILocation(line: 198, column: 17, scope: !1543, inlinedAt: !1523)
!1551 = !DILocation(line: 0, scope: !1524, inlinedAt: !1439)
!1552 = !DILocation(line: 200, column: 13, scope: !1553, inlinedAt: !1523)
!1553 = distinct !DILexicalBlock(scope: !1544, file: !348, line: 200, column: 13)
!1554 = !{!1481, !316, i64 32}
!1555 = !DILocation(line: 200, column: 13, scope: !1544, inlinedAt: !1523)
!1556 = !DILocation(line: 201, column: 13, scope: !1557, inlinedAt: !1523)
!1557 = distinct !DILexicalBlock(scope: !1544, file: !348, line: 201, column: 13)
!1558 = !{!1481, !316, i64 40}
!1559 = !DILocation(line: 201, column: 13, scope: !1544, inlinedAt: !1523)
!1560 = !DILocation(line: 202, column: 13, scope: !1544, inlinedAt: !1523)
!1561 = !DILocation(line: 203, column: 17, scope: !1544, inlinedAt: !1523)
!1562 = !DILocation(line: 203, column: 21, scope: !1544, inlinedAt: !1523)
!1563 = !DILocation(line: 204, column: 13, scope: !1544, inlinedAt: !1523)
!1564 = !DILocation(line: 207, column: 18, scope: !1540, inlinedAt: !1523)
!1565 = distinct !{!1565, !1566, !1567}
!1566 = !DILocation(line: 192, column: 5, scope: !1514)
!1567 = !DILocation(line: 208, column: 5, scope: !1514)
!1568 = !DILocation(line: 210, column: 1, scope: !1514, inlinedAt: !1523)
!1569 = !DILocation(line: 398, column: 17, scope: !1524, inlinedAt: !1439)
!1570 = !DILocation(line: 399, column: 40, scope: !1571, inlinedAt: !1439)
!1571 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 399, column: 21)
!1572 = !{!1358, !1359, i64 8}
!1573 = !DILocation(line: 399, column: 48, scope: !1571, inlinedAt: !1439)
!1574 = !DILocation(line: 399, column: 21, scope: !1524, inlinedAt: !1439)
!1575 = !DILocation(line: 400, column: 30, scope: !1571, inlinedAt: !1439)
!1576 = !DILocation(line: 400, column: 21, scope: !1571, inlinedAt: !1439)
!1577 = !DILocation(line: 403, column: 9, scope: !1436, inlinedAt: !1439)
!1578 = !DILocation(line: 404, column: 5, scope: !1436, inlinedAt: !1439)
!1579 = !DILocation(line: 249, column: 52, scope: !861, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 406, column: 9, scope: !1581, inlinedAt: !1439)
!1581 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 404, column: 12)
!1582 = !DILocation(line: 249, column: 73, scope: !861, inlinedAt: !1580)
!1583 = !DILocation(line: 250, column: 31, scope: !861, inlinedAt: !1580)
!1584 = !DILocation(line: 250, column: 20, scope: !861, inlinedAt: !1580)
!1585 = !DILocation(line: 251, column: 12, scope: !875, inlinedAt: !1580)
!1586 = !DILocation(line: 251, column: 9, scope: !861, inlinedAt: !1580)
!1587 = !DILocation(line: 252, column: 26, scope: !878, inlinedAt: !1580)
!1588 = !DILocation(line: 252, column: 20, scope: !878, inlinedAt: !1580)
!1589 = !DILocation(line: 253, column: 25, scope: !883, inlinedAt: !1580)
!1590 = !DILocation(line: 253, column: 16, scope: !883, inlinedAt: !1580)
!1591 = !DILocation(line: 253, column: 13, scope: !878, inlinedAt: !1580)
!1592 = !DILocation(line: 254, column: 24, scope: !883, inlinedAt: !1580)
!1593 = !DILocation(line: 254, column: 13, scope: !883, inlinedAt: !1580)
!1594 = !DILocation(line: 257, column: 13, scope: !878, inlinedAt: !1580)
!1595 = !DILocation(line: 258, column: 27, scope: !901, inlinedAt: !1580)
!1596 = !DILocation(line: 258, column: 13, scope: !901, inlinedAt: !1580)
!1597 = !DILocation(line: 259, column: 9, scope: !878, inlinedAt: !1580)
!1598 = !DILocation(line: 260, column: 9, scope: !878, inlinedAt: !1580)
!1599 = !DILocation(line: 0, scope: !1581, inlinedAt: !1439)
!1600 = !DILocation(line: 263, column: 1, scope: !861, inlinedAt: !1580)
!1601 = !DILocation(line: 468, column: 16, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 468, column: 13)
!1603 = !DILocation(line: 468, column: 19, scope: !1602)
!1604 = !DILocation(line: 468, column: 13, scope: !1213)
!1605 = !DILocation(line: 469, column: 39, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 468, column: 28)
!1607 = !DILocation(line: 265, column: 51, scope: !906, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 469, column: 13, scope: !1606)
!1609 = !DILocation(line: 265, column: 70, scope: !906, inlinedAt: !1608)
!1610 = !DILocation(line: 265, column: 86, scope: !906, inlinedAt: !1608)
!1611 = !DILocation(line: 267, column: 9, scope: !906, inlinedAt: !1608)
!1612 = !DILocation(line: 266, column: 19, scope: !906, inlinedAt: !1608)
!1613 = !DILocation(line: 268, column: 18, scope: !924, inlinedAt: !1608)
!1614 = !DILocation(line: 269, column: 29, scope: !924, inlinedAt: !1608)
!1615 = !DILocation(line: 269, column: 9, scope: !924, inlinedAt: !1608)
!1616 = !DILocation(line: 270, column: 18, scope: !924, inlinedAt: !1608)
!1617 = !DILocation(line: 271, column: 5, scope: !924, inlinedAt: !1608)
!1618 = !DILocation(line: 272, column: 1, scope: !906, inlinedAt: !1608)
!1619 = !DILocation(line: 470, column: 16, scope: !1606)
!1620 = !DILocation(line: 470, column: 24, scope: !1606)
!1621 = !DILocation(line: 470, column: 28, scope: !1606)
!1622 = !DILocation(line: 470, column: 39, scope: !1606)
!1623 = !DILocation(line: 470, column: 13, scope: !1606)
!1624 = !DILocation(line: 473, column: 20, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 473, column: 17)
!1626 = !DILocation(line: 473, column: 26, scope: !1625)
!1627 = !DILocation(line: 473, column: 17, scope: !1606)
!1628 = !DILocation(line: 474, column: 17, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 473, column: 43)
!1630 = !DILocation(line: 475, column: 17, scope: !1629)
!1631 = !DILocation(line: 482, column: 16, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 477, column: 16)
!1633 = !DILocation(line: 482, column: 24, scope: !1632)
!1634 = !DILocation(line: 482, column: 28, scope: !1632)
!1635 = !DILocation(line: 482, column: 39, scope: !1632)
!1636 = !DILocation(line: 482, column: 13, scope: !1632)
!1637 = distinct !{!1637, !1207, !1638}
!1638 = !DILocation(line: 484, column: 5, scope: !1193)
!1639 = !DILocation(line: 487, column: 9, scope: !1193)
!1640 = !DILocation(line: 331, column: 55, scope: !1158, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 488, column: 9, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 487, column: 9)
!1643 = !DILocation(line: 144, column: 54, scope: !432, inlinedAt: !1644)
!1644 = distinct !DILocation(line: 335, column: 5, scope: !1158, inlinedAt: !1641)
!1645 = !DILocation(line: 145, column: 9, scope: !432, inlinedAt: !1644)
!1646 = !DILocation(line: 145, column: 10, scope: !1647, inlinedAt: !1644)
!1647 = distinct !DILexicalBlock(scope: !432, file: !3, line: 145, column: 9)
!1648 = !DILocation(line: 337, column: 13, scope: !1175, inlinedAt: !1641)
!1649 = !DILocation(line: 148, column: 19, scope: !432, inlinedAt: !1644)
!1650 = !DILocation(line: 149, column: 18, scope: !432, inlinedAt: !1644)
!1651 = !DILocation(line: 149, column: 9, scope: !432, inlinedAt: !1644)
!1652 = !DILocation(line: 149, column: 13, scope: !432, inlinedAt: !1644)
!1653 = !DILocation(line: 150, column: 18, scope: !432, inlinedAt: !1644)
!1654 = !DILocation(line: 150, column: 9, scope: !432, inlinedAt: !1644)
!1655 = !DILocation(line: 150, column: 16, scope: !432, inlinedAt: !1644)
!1656 = !DILocation(line: 151, column: 1, scope: !432, inlinedAt: !1644)
!1657 = !DILocation(line: 337, column: 17, scope: !1175, inlinedAt: !1641)
!1658 = !DILocation(line: 337, column: 9, scope: !1158, inlinedAt: !1641)
!1659 = !DILocation(line: 339, column: 9, scope: !1179, inlinedAt: !1641)
!1660 = !DILocation(line: 249, column: 52, scope: !861, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 339, column: 9, scope: !1179, inlinedAt: !1641)
!1662 = !DILocation(line: 249, column: 73, scope: !861, inlinedAt: !1661)
!1663 = !DILocation(line: 250, column: 31, scope: !861, inlinedAt: !1661)
!1664 = !DILocation(line: 250, column: 20, scope: !861, inlinedAt: !1661)
!1665 = !DILocation(line: 251, column: 12, scope: !875, inlinedAt: !1661)
!1666 = !DILocation(line: 251, column: 9, scope: !861, inlinedAt: !1661)
!1667 = !DILocation(line: 252, column: 26, scope: !878, inlinedAt: !1661)
!1668 = !DILocation(line: 252, column: 20, scope: !878, inlinedAt: !1661)
!1669 = !DILocation(line: 253, column: 25, scope: !883, inlinedAt: !1661)
!1670 = !DILocation(line: 253, column: 16, scope: !883, inlinedAt: !1661)
!1671 = !DILocation(line: 253, column: 13, scope: !878, inlinedAt: !1661)
!1672 = !DILocation(line: 254, column: 24, scope: !883, inlinedAt: !1661)
!1673 = !DILocation(line: 254, column: 13, scope: !883, inlinedAt: !1661)
!1674 = !DILocation(line: 262, column: 5, scope: !861, inlinedAt: !1661)
!1675 = !DILocation(line: 263, column: 1, scope: !861, inlinedAt: !1661)
!1676 = !DILocation(line: 257, column: 13, scope: !878, inlinedAt: !1661)
!1677 = !DILocation(line: 259, column: 14, scope: !878, inlinedAt: !1661)
!1678 = !DILocation(line: 259, column: 9, scope: !878, inlinedAt: !1661)
!1679 = !DILocation(line: 260, column: 9, scope: !878, inlinedAt: !1661)
!1680 = !DILocation(line: 332, column: 19, scope: !1158, inlinedAt: !1641)
!1681 = !DILocation(line: 343, column: 12, scope: !1188, inlinedAt: !1641)
!1682 = !DILocation(line: 343, column: 18, scope: !1188, inlinedAt: !1641)
!1683 = !DILocation(line: 348, column: 5, scope: !1158, inlinedAt: !1641)
!1684 = !DILocation(line: 488, column: 9, scope: !1642)
!1685 = !DILocation(line: 0, scope: !1642)
!1686 = !DILocation(line: 489, column: 1, scope: !1193)
!1687 = !DILocation(line: 0, scope: !1265)
!1688 = distinct !DISubprogram(name: "redisAsyncHandleRead", scope: !3, file: !3, line: 516, type: !433, isLocal: false, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1689)
!1689 = !{!1690, !1691}
!1690 = !DILocalVariable(name: "ac", arg: 1, scope: !1688, file: !3, line: 516, type: !113)
!1691 = !DILocalVariable(name: "c", scope: !1688, file: !3, line: 517, type: !279)
!1692 = !DILocation(line: 516, column: 46, scope: !1688)
!1693 = !DILocation(line: 517, column: 29, scope: !1688)
!1694 = !DILocation(line: 517, column: 19, scope: !1688)
!1695 = !DILocation(line: 519, column: 14, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 519, column: 9)
!1697 = !DILocation(line: 519, column: 20, scope: !1696)
!1698 = !DILocation(line: 519, column: 9, scope: !1688)
!1699 = !DILocalVariable(name: "ac", arg: 1, scope: !1700, file: !3, line: 494, type: !113)
!1700 = distinct !DISubprogram(name: "__redisAsyncHandleConnect", scope: !3, file: !3, line: 494, type: !1701, isLocal: true, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1703)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!18, !113}
!1703 = !{!1699, !1704}
!1704 = !DILocalVariable(name: "c", scope: !1700, file: !3, line: 495, type: !279)
!1705 = !DILocation(line: 494, column: 57, scope: !1700, inlinedAt: !1706)
!1706 = distinct !DILocation(line: 521, column: 13, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 521, column: 13)
!1708 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 519, column: 40)
!1709 = !DILocation(line: 495, column: 19, scope: !1700, inlinedAt: !1706)
!1710 = !DILocation(line: 497, column: 9, scope: !1711, inlinedAt: !1706)
!1711 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 497, column: 9)
!1712 = !DILocation(line: 497, column: 34, scope: !1711, inlinedAt: !1706)
!1713 = !DILocation(line: 497, column: 9, scope: !1700, inlinedAt: !1706)
!1714 = !DILocation(line: 499, column: 13, scope: !1715, inlinedAt: !1706)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 499, column: 13)
!1716 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 497, column: 48)
!1717 = !DILocation(line: 499, column: 19, scope: !1715, inlinedAt: !1706)
!1718 = !DILocation(line: 499, column: 13, scope: !1716, inlinedAt: !1706)
!1719 = !DILocation(line: 502, column: 17, scope: !1720, inlinedAt: !1706)
!1720 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 502, column: 13)
!1721 = !DILocation(line: 502, column: 13, scope: !1720, inlinedAt: !1706)
!1722 = !DILocation(line: 502, column: 13, scope: !1716, inlinedAt: !1706)
!1723 = !DILocation(line: 502, column: 28, scope: !1720, inlinedAt: !1706)
!1724 = !DILocation(line: 331, column: 55, scope: !1158, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 503, column: 9, scope: !1716, inlinedAt: !1706)
!1726 = !DILocation(line: 144, column: 54, scope: !432, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 335, column: 5, scope: !1158, inlinedAt: !1725)
!1728 = !DILocation(line: 145, column: 9, scope: !432, inlinedAt: !1727)
!1729 = !DILocation(line: 148, column: 19, scope: !432, inlinedAt: !1727)
!1730 = !DILocation(line: 149, column: 18, scope: !432, inlinedAt: !1727)
!1731 = !DILocation(line: 149, column: 9, scope: !432, inlinedAt: !1727)
!1732 = !DILocation(line: 149, column: 13, scope: !432, inlinedAt: !1727)
!1733 = !DILocation(line: 150, column: 18, scope: !432, inlinedAt: !1727)
!1734 = !DILocation(line: 150, column: 9, scope: !432, inlinedAt: !1727)
!1735 = !DILocation(line: 150, column: 16, scope: !432, inlinedAt: !1727)
!1736 = !DILocation(line: 151, column: 1, scope: !432, inlinedAt: !1727)
!1737 = !DILocation(line: 337, column: 17, scope: !1175, inlinedAt: !1725)
!1738 = !DILocation(line: 337, column: 9, scope: !1158, inlinedAt: !1725)
!1739 = !DILocation(line: 339, column: 9, scope: !1179, inlinedAt: !1725)
!1740 = !DILocation(line: 249, column: 52, scope: !861, inlinedAt: !1741)
!1741 = distinct !DILocation(line: 339, column: 9, scope: !1179, inlinedAt: !1725)
!1742 = !DILocation(line: 249, column: 73, scope: !861, inlinedAt: !1741)
!1743 = !DILocation(line: 250, column: 31, scope: !861, inlinedAt: !1741)
!1744 = !DILocation(line: 250, column: 20, scope: !861, inlinedAt: !1741)
!1745 = !DILocation(line: 251, column: 12, scope: !875, inlinedAt: !1741)
!1746 = !DILocation(line: 251, column: 9, scope: !861, inlinedAt: !1741)
!1747 = !DILocation(line: 252, column: 26, scope: !878, inlinedAt: !1741)
!1748 = !DILocation(line: 252, column: 20, scope: !878, inlinedAt: !1741)
!1749 = !DILocation(line: 253, column: 25, scope: !883, inlinedAt: !1741)
!1750 = !DILocation(line: 253, column: 16, scope: !883, inlinedAt: !1741)
!1751 = !DILocation(line: 253, column: 13, scope: !878, inlinedAt: !1741)
!1752 = !DILocation(line: 254, column: 24, scope: !883, inlinedAt: !1741)
!1753 = !DILocation(line: 254, column: 13, scope: !883, inlinedAt: !1741)
!1754 = !DILocation(line: 262, column: 5, scope: !861, inlinedAt: !1741)
!1755 = !DILocation(line: 263, column: 1, scope: !861, inlinedAt: !1741)
!1756 = !DILocation(line: 257, column: 13, scope: !878, inlinedAt: !1741)
!1757 = !DILocation(line: 259, column: 14, scope: !878, inlinedAt: !1741)
!1758 = !DILocation(line: 259, column: 9, scope: !878, inlinedAt: !1741)
!1759 = !DILocation(line: 260, column: 9, scope: !878, inlinedAt: !1741)
!1760 = !DILocation(line: 332, column: 19, scope: !1158, inlinedAt: !1725)
!1761 = !DILocation(line: 343, column: 18, scope: !1188, inlinedAt: !1725)
!1762 = !DILocation(line: 508, column: 14, scope: !1700, inlinedAt: !1706)
!1763 = !DILocation(line: 509, column: 13, scope: !1764, inlinedAt: !1706)
!1764 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 509, column: 9)
!1765 = !DILocation(line: 509, column: 9, scope: !1764, inlinedAt: !1706)
!1766 = !DILocation(line: 509, column: 9, scope: !1700, inlinedAt: !1706)
!1767 = !DILocation(line: 509, column: 24, scope: !1764, inlinedAt: !1706)
!1768 = !DILocation(line: 348, column: 5, scope: !1158, inlinedAt: !1725)
!1769 = !DILocation(line: 349, column: 1, scope: !1158, inlinedAt: !1725)
!1770 = !DILocation(line: 504, column: 9, scope: !1716, inlinedAt: !1706)
!1771 = !DILocation(line: 511, column: 1, scope: !1700, inlinedAt: !1706)
!1772 = !DILocation(line: 522, column: 13, scope: !1707)
!1773 = !DILocation(line: 0, scope: !1707)
!1774 = !DILocation(line: 521, column: 13, scope: !1708)
!1775 = !DILocation(line: 524, column: 18, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 524, column: 13)
!1777 = !DILocation(line: 524, column: 24, scope: !1776)
!1778 = !DILocation(line: 524, column: 13, scope: !1708)
!1779 = !DILocation(line: 528, column: 9, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 528, column: 9)
!1781 = !DILocation(line: 528, column: 28, scope: !1780)
!1782 = !DILocation(line: 528, column: 9, scope: !1688)
!1783 = !DILocation(line: 331, column: 55, scope: !1158, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 529, column: 9, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 528, column: 42)
!1786 = !DILocation(line: 144, column: 54, scope: !432, inlinedAt: !1787)
!1787 = distinct !DILocation(line: 335, column: 5, scope: !1158, inlinedAt: !1784)
!1788 = !DILocation(line: 145, column: 9, scope: !432, inlinedAt: !1787)
!1789 = !DILocation(line: 148, column: 19, scope: !432, inlinedAt: !1787)
!1790 = !DILocation(line: 149, column: 18, scope: !432, inlinedAt: !1787)
!1791 = !DILocation(line: 149, column: 9, scope: !432, inlinedAt: !1787)
!1792 = !DILocation(line: 149, column: 13, scope: !432, inlinedAt: !1787)
!1793 = !DILocation(line: 150, column: 18, scope: !432, inlinedAt: !1787)
!1794 = !DILocation(line: 150, column: 9, scope: !432, inlinedAt: !1787)
!1795 = !DILocation(line: 150, column: 16, scope: !432, inlinedAt: !1787)
!1796 = !DILocation(line: 151, column: 1, scope: !432, inlinedAt: !1787)
!1797 = !DILocation(line: 337, column: 17, scope: !1175, inlinedAt: !1784)
!1798 = !DILocation(line: 337, column: 9, scope: !1158, inlinedAt: !1784)
!1799 = !DILocation(line: 339, column: 9, scope: !1179, inlinedAt: !1784)
!1800 = !DILocation(line: 249, column: 52, scope: !861, inlinedAt: !1801)
!1801 = distinct !DILocation(line: 339, column: 9, scope: !1179, inlinedAt: !1784)
!1802 = !DILocation(line: 249, column: 73, scope: !861, inlinedAt: !1801)
!1803 = !DILocation(line: 250, column: 31, scope: !861, inlinedAt: !1801)
!1804 = !DILocation(line: 250, column: 20, scope: !861, inlinedAt: !1801)
!1805 = !DILocation(line: 251, column: 12, scope: !875, inlinedAt: !1801)
!1806 = !DILocation(line: 251, column: 9, scope: !861, inlinedAt: !1801)
!1807 = !DILocation(line: 252, column: 26, scope: !878, inlinedAt: !1801)
!1808 = !DILocation(line: 252, column: 20, scope: !878, inlinedAt: !1801)
!1809 = !DILocation(line: 253, column: 25, scope: !883, inlinedAt: !1801)
!1810 = !DILocation(line: 253, column: 16, scope: !883, inlinedAt: !1801)
!1811 = !DILocation(line: 253, column: 13, scope: !878, inlinedAt: !1801)
!1812 = !DILocation(line: 254, column: 24, scope: !883, inlinedAt: !1801)
!1813 = !DILocation(line: 254, column: 13, scope: !883, inlinedAt: !1801)
!1814 = !DILocation(line: 262, column: 5, scope: !861, inlinedAt: !1801)
!1815 = !DILocation(line: 263, column: 1, scope: !861, inlinedAt: !1801)
!1816 = !DILocation(line: 257, column: 13, scope: !878, inlinedAt: !1801)
!1817 = !DILocation(line: 259, column: 14, scope: !878, inlinedAt: !1801)
!1818 = !DILocation(line: 259, column: 9, scope: !878, inlinedAt: !1801)
!1819 = !DILocation(line: 260, column: 9, scope: !878, inlinedAt: !1801)
!1820 = !DILocation(line: 332, column: 19, scope: !1158, inlinedAt: !1784)
!1821 = !DILocation(line: 343, column: 18, scope: !1188, inlinedAt: !1784)
!1822 = !DILocation(line: 348, column: 5, scope: !1158, inlinedAt: !1784)
!1823 = !DILocation(line: 349, column: 1, scope: !1158, inlinedAt: !1784)
!1824 = !DILocation(line: 530, column: 5, scope: !1785)
!1825 = !DILocation(line: 532, column: 9, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 532, column: 9)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 532, column: 9)
!1828 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 530, column: 12)
!1829 = !{!322, !316, i64 240}
!1830 = !DILocation(line: 532, column: 9, scope: !1827)
!1831 = !DILocation(line: 533, column: 9, scope: !1828)
!1832 = !DILocation(line: 535, column: 1, scope: !1688)
!1833 = distinct !DISubprogram(name: "redisAsyncHandleWrite", scope: !3, file: !3, line: 537, type: !433, isLocal: false, isDefinition: true, scopeLine: 537, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1834)
!1834 = !{!1835, !1836, !1837}
!1835 = !DILocalVariable(name: "ac", arg: 1, scope: !1833, file: !3, line: 537, type: !113)
!1836 = !DILocalVariable(name: "c", scope: !1833, file: !3, line: 538, type: !279)
!1837 = !DILocalVariable(name: "done", scope: !1833, file: !3, line: 539, type: !18)
!1838 = !DILocation(line: 537, column: 47, scope: !1833)
!1839 = !DILocation(line: 538, column: 29, scope: !1833)
!1840 = !DILocation(line: 538, column: 19, scope: !1833)
!1841 = !DILocation(line: 539, column: 5, scope: !1833)
!1842 = !DILocation(line: 539, column: 9, scope: !1833)
!1843 = !DILocation(line: 541, column: 14, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1833, file: !3, line: 541, column: 9)
!1845 = !DILocation(line: 541, column: 20, scope: !1844)
!1846 = !DILocation(line: 541, column: 9, scope: !1833)
!1847 = !DILocation(line: 494, column: 57, scope: !1700, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 543, column: 13, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 543, column: 13)
!1850 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 541, column: 40)
!1851 = !DILocation(line: 495, column: 19, scope: !1700, inlinedAt: !1848)
!1852 = !DILocation(line: 497, column: 9, scope: !1711, inlinedAt: !1848)
!1853 = !DILocation(line: 497, column: 34, scope: !1711, inlinedAt: !1848)
!1854 = !DILocation(line: 497, column: 9, scope: !1700, inlinedAt: !1848)
!1855 = !DILocation(line: 499, column: 13, scope: !1715, inlinedAt: !1848)
!1856 = !DILocation(line: 499, column: 19, scope: !1715, inlinedAt: !1848)
!1857 = !DILocation(line: 499, column: 13, scope: !1716, inlinedAt: !1848)
!1858 = !DILocation(line: 502, column: 17, scope: !1720, inlinedAt: !1848)
!1859 = !DILocation(line: 502, column: 13, scope: !1720, inlinedAt: !1848)
!1860 = !DILocation(line: 502, column: 13, scope: !1716, inlinedAt: !1848)
!1861 = !DILocation(line: 502, column: 28, scope: !1720, inlinedAt: !1848)
!1862 = !DILocation(line: 331, column: 55, scope: !1158, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 503, column: 9, scope: !1716, inlinedAt: !1848)
!1864 = !DILocation(line: 144, column: 54, scope: !432, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 335, column: 5, scope: !1158, inlinedAt: !1863)
!1866 = !DILocation(line: 145, column: 9, scope: !432, inlinedAt: !1865)
!1867 = !DILocation(line: 148, column: 19, scope: !432, inlinedAt: !1865)
!1868 = !DILocation(line: 149, column: 18, scope: !432, inlinedAt: !1865)
!1869 = !DILocation(line: 149, column: 9, scope: !432, inlinedAt: !1865)
!1870 = !DILocation(line: 149, column: 13, scope: !432, inlinedAt: !1865)
!1871 = !DILocation(line: 150, column: 18, scope: !432, inlinedAt: !1865)
!1872 = !DILocation(line: 150, column: 9, scope: !432, inlinedAt: !1865)
!1873 = !DILocation(line: 150, column: 16, scope: !432, inlinedAt: !1865)
!1874 = !DILocation(line: 151, column: 1, scope: !432, inlinedAt: !1865)
!1875 = !DILocation(line: 337, column: 17, scope: !1175, inlinedAt: !1863)
!1876 = !DILocation(line: 337, column: 9, scope: !1158, inlinedAt: !1863)
!1877 = !DILocation(line: 339, column: 9, scope: !1179, inlinedAt: !1863)
!1878 = !DILocation(line: 249, column: 52, scope: !861, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 339, column: 9, scope: !1179, inlinedAt: !1863)
!1880 = !DILocation(line: 249, column: 73, scope: !861, inlinedAt: !1879)
!1881 = !DILocation(line: 250, column: 31, scope: !861, inlinedAt: !1879)
!1882 = !DILocation(line: 250, column: 20, scope: !861, inlinedAt: !1879)
!1883 = !DILocation(line: 251, column: 12, scope: !875, inlinedAt: !1879)
!1884 = !DILocation(line: 251, column: 9, scope: !861, inlinedAt: !1879)
!1885 = !DILocation(line: 252, column: 26, scope: !878, inlinedAt: !1879)
!1886 = !DILocation(line: 252, column: 20, scope: !878, inlinedAt: !1879)
!1887 = !DILocation(line: 253, column: 25, scope: !883, inlinedAt: !1879)
!1888 = !DILocation(line: 253, column: 16, scope: !883, inlinedAt: !1879)
!1889 = !DILocation(line: 253, column: 13, scope: !878, inlinedAt: !1879)
!1890 = !DILocation(line: 254, column: 24, scope: !883, inlinedAt: !1879)
!1891 = !DILocation(line: 254, column: 13, scope: !883, inlinedAt: !1879)
!1892 = !DILocation(line: 262, column: 5, scope: !861, inlinedAt: !1879)
!1893 = !DILocation(line: 263, column: 1, scope: !861, inlinedAt: !1879)
!1894 = !DILocation(line: 257, column: 13, scope: !878, inlinedAt: !1879)
!1895 = !DILocation(line: 259, column: 14, scope: !878, inlinedAt: !1879)
!1896 = !DILocation(line: 259, column: 9, scope: !878, inlinedAt: !1879)
!1897 = !DILocation(line: 260, column: 9, scope: !878, inlinedAt: !1879)
!1898 = !DILocation(line: 332, column: 19, scope: !1158, inlinedAt: !1863)
!1899 = !DILocation(line: 343, column: 18, scope: !1188, inlinedAt: !1863)
!1900 = !DILocation(line: 508, column: 14, scope: !1700, inlinedAt: !1848)
!1901 = !DILocation(line: 509, column: 13, scope: !1764, inlinedAt: !1848)
!1902 = !DILocation(line: 509, column: 9, scope: !1764, inlinedAt: !1848)
!1903 = !DILocation(line: 509, column: 9, scope: !1700, inlinedAt: !1848)
!1904 = !DILocation(line: 509, column: 24, scope: !1764, inlinedAt: !1848)
!1905 = !DILocation(line: 348, column: 5, scope: !1158, inlinedAt: !1863)
!1906 = !DILocation(line: 349, column: 1, scope: !1158, inlinedAt: !1863)
!1907 = !DILocation(line: 504, column: 9, scope: !1716, inlinedAt: !1848)
!1908 = !DILocation(line: 511, column: 1, scope: !1700, inlinedAt: !1848)
!1909 = !DILocation(line: 543, column: 13, scope: !1850)
!1910 = !DILocation(line: 544, column: 13, scope: !1849)
!1911 = !DILocation(line: 0, scope: !1849)
!1912 = !DILocation(line: 546, column: 18, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 546, column: 13)
!1914 = !DILocation(line: 546, column: 24, scope: !1913)
!1915 = !DILocation(line: 546, column: 13, scope: !1850)
!1916 = !DILocation(line: 550, column: 9, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1833, file: !3, line: 550, column: 9)
!1918 = !DILocation(line: 550, column: 35, scope: !1917)
!1919 = !DILocation(line: 550, column: 9, scope: !1833)
!1920 = !DILocation(line: 331, column: 55, scope: !1158, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 551, column: 9, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 550, column: 49)
!1923 = !DILocation(line: 144, column: 54, scope: !432, inlinedAt: !1924)
!1924 = distinct !DILocation(line: 335, column: 5, scope: !1158, inlinedAt: !1921)
!1925 = !DILocation(line: 145, column: 9, scope: !432, inlinedAt: !1924)
!1926 = !DILocation(line: 148, column: 19, scope: !432, inlinedAt: !1924)
!1927 = !DILocation(line: 149, column: 18, scope: !432, inlinedAt: !1924)
!1928 = !DILocation(line: 149, column: 9, scope: !432, inlinedAt: !1924)
!1929 = !DILocation(line: 149, column: 13, scope: !432, inlinedAt: !1924)
!1930 = !DILocation(line: 150, column: 18, scope: !432, inlinedAt: !1924)
!1931 = !DILocation(line: 150, column: 9, scope: !432, inlinedAt: !1924)
!1932 = !DILocation(line: 150, column: 16, scope: !432, inlinedAt: !1924)
!1933 = !DILocation(line: 151, column: 1, scope: !432, inlinedAt: !1924)
!1934 = !DILocation(line: 337, column: 17, scope: !1175, inlinedAt: !1921)
!1935 = !DILocation(line: 337, column: 9, scope: !1158, inlinedAt: !1921)
!1936 = !DILocation(line: 339, column: 9, scope: !1179, inlinedAt: !1921)
!1937 = !DILocation(line: 249, column: 52, scope: !861, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 339, column: 9, scope: !1179, inlinedAt: !1921)
!1939 = !DILocation(line: 249, column: 73, scope: !861, inlinedAt: !1938)
!1940 = !DILocation(line: 250, column: 31, scope: !861, inlinedAt: !1938)
!1941 = !DILocation(line: 250, column: 20, scope: !861, inlinedAt: !1938)
!1942 = !DILocation(line: 251, column: 12, scope: !875, inlinedAt: !1938)
!1943 = !DILocation(line: 251, column: 9, scope: !861, inlinedAt: !1938)
!1944 = !DILocation(line: 252, column: 26, scope: !878, inlinedAt: !1938)
!1945 = !DILocation(line: 252, column: 20, scope: !878, inlinedAt: !1938)
!1946 = !DILocation(line: 253, column: 25, scope: !883, inlinedAt: !1938)
!1947 = !DILocation(line: 253, column: 16, scope: !883, inlinedAt: !1938)
!1948 = !DILocation(line: 253, column: 13, scope: !878, inlinedAt: !1938)
!1949 = !DILocation(line: 254, column: 24, scope: !883, inlinedAt: !1938)
!1950 = !DILocation(line: 254, column: 13, scope: !883, inlinedAt: !1938)
!1951 = !DILocation(line: 262, column: 5, scope: !861, inlinedAt: !1938)
!1952 = !DILocation(line: 263, column: 1, scope: !861, inlinedAt: !1938)
!1953 = !DILocation(line: 257, column: 13, scope: !878, inlinedAt: !1938)
!1954 = !DILocation(line: 259, column: 14, scope: !878, inlinedAt: !1938)
!1955 = !DILocation(line: 259, column: 9, scope: !878, inlinedAt: !1938)
!1956 = !DILocation(line: 260, column: 9, scope: !878, inlinedAt: !1938)
!1957 = !DILocation(line: 332, column: 19, scope: !1158, inlinedAt: !1921)
!1958 = !DILocation(line: 343, column: 18, scope: !1188, inlinedAt: !1921)
!1959 = !DILocation(line: 348, column: 5, scope: !1158, inlinedAt: !1921)
!1960 = !DILocation(line: 349, column: 1, scope: !1158, inlinedAt: !1921)
!1961 = !DILocation(line: 552, column: 5, scope: !1922)
!1962 = !DILocation(line: 554, column: 14, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 554, column: 13)
!1964 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 552, column: 12)
!1965 = !DILocation(line: 0, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !3, line: 555, column: 13)
!1967 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 555, column: 13)
!1968 = !DILocation(line: 554, column: 13, scope: !1964)
!1969 = !DILocation(line: 555, column: 13, scope: !1966)
!1970 = !DILocation(line: 555, column: 13, scope: !1967)
!1971 = !DILocation(line: 557, column: 13, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !3, line: 557, column: 13)
!1973 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 557, column: 13)
!1974 = !{!322, !316, i64 264}
!1975 = !DILocation(line: 557, column: 13, scope: !1973)
!1976 = !DILocation(line: 560, column: 9, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !3, line: 560, column: 9)
!1978 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 560, column: 9)
!1979 = !DILocation(line: 560, column: 9, scope: !1978)
!1980 = !DILocation(line: 0, scope: !1922)
!1981 = !DILocation(line: 562, column: 1, scope: !1833)
!1982 = distinct !DISubprogram(name: "redisvAsyncCommand", scope: !3, file: !3, line: 650, type: !1983, isLocal: false, isDefinition: true, scopeLine: 650, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1992)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!18, !113, !241, !12, !273, !1985}
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 562, size: 192, elements: !1987)
!1987 = !{!1988, !1989, !1990, !1991}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1986, file: !3, line: 562, baseType: !7, size: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1986, file: !3, line: 562, baseType: !7, size: 32, offset: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1986, file: !3, line: 562, baseType: !12, size: 64, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1986, file: !3, line: 562, baseType: !12, size: 64, offset: 128)
!1992 = !{!1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000}
!1993 = !DILocalVariable(name: "ac", arg: 1, scope: !1982, file: !3, line: 650, type: !113)
!1994 = !DILocalVariable(name: "fn", arg: 2, scope: !1982, file: !3, line: 650, type: !241)
!1995 = !DILocalVariable(name: "privdata", arg: 3, scope: !1982, file: !3, line: 650, type: !12)
!1996 = !DILocalVariable(name: "format", arg: 4, scope: !1982, file: !3, line: 650, type: !273)
!1997 = !DILocalVariable(name: "ap", arg: 5, scope: !1982, file: !3, line: 650, type: !1985)
!1998 = !DILocalVariable(name: "cmd", scope: !1982, file: !3, line: 651, type: !28)
!1999 = !DILocalVariable(name: "len", scope: !1982, file: !3, line: 652, type: !18)
!2000 = !DILocalVariable(name: "status", scope: !1982, file: !3, line: 653, type: !18)
!2001 = !DILocation(line: 650, column: 43, scope: !1982)
!2002 = !DILocation(line: 650, column: 64, scope: !1982)
!2003 = !DILocation(line: 650, column: 74, scope: !1982)
!2004 = !DILocation(line: 650, column: 96, scope: !1982)
!2005 = !DILocation(line: 650, column: 112, scope: !1982)
!2006 = !DILocation(line: 651, column: 5, scope: !1982)
!2007 = !DILocation(line: 651, column: 11, scope: !1982)
!2008 = !DILocation(line: 654, column: 11, scope: !1982)
!2009 = !DILocation(line: 652, column: 9, scope: !1982)
!2010 = !DILocation(line: 657, column: 13, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 657, column: 9)
!2012 = !DILocation(line: 657, column: 9, scope: !1982)
!2013 = !DILocation(line: 660, column: 49, scope: !1982)
!2014 = !DILocation(line: 660, column: 53, scope: !1982)
!2015 = !DILocation(line: 660, column: 14, scope: !1982)
!2016 = !DILocation(line: 653, column: 9, scope: !1982)
!2017 = !DILocation(line: 661, column: 10, scope: !1982)
!2018 = !DILocation(line: 661, column: 5, scope: !1982)
!2019 = !DILocation(line: 662, column: 5, scope: !1982)
!2020 = !DILocation(line: 0, scope: !1982)
!2021 = !DILocation(line: 0, scope: !2011)
!2022 = !DILocation(line: 663, column: 1, scope: !1982)
!2023 = distinct !DISubprogram(name: "__redisAsyncCommand", scope: !3, file: !3, line: 583, type: !2024, isLocal: true, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2026)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!18, !113, !241, !12, !273, !22}
!2026 = !{!2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043}
!2027 = !DILocalVariable(name: "ac", arg: 1, scope: !2023, file: !3, line: 583, type: !113)
!2028 = !DILocalVariable(name: "fn", arg: 2, scope: !2023, file: !3, line: 583, type: !241)
!2029 = !DILocalVariable(name: "privdata", arg: 3, scope: !2023, file: !3, line: 583, type: !12)
!2030 = !DILocalVariable(name: "cmd", arg: 4, scope: !2023, file: !3, line: 583, type: !273)
!2031 = !DILocalVariable(name: "len", arg: 5, scope: !2023, file: !3, line: 583, type: !22)
!2032 = !DILocalVariable(name: "c", scope: !2023, file: !3, line: 584, type: !279)
!2033 = !DILocalVariable(name: "cb", scope: !2023, file: !3, line: 585, type: !235)
!2034 = !DILocalVariable(name: "pvariant", scope: !2023, file: !3, line: 586, type: !18)
!2035 = !DILocalVariable(name: "hasnext", scope: !2023, file: !3, line: 586, type: !18)
!2036 = !DILocalVariable(name: "cstr", scope: !2023, file: !3, line: 587, type: !273)
!2037 = !DILocalVariable(name: "astr", scope: !2023, file: !3, line: 587, type: !273)
!2038 = !DILocalVariable(name: "clen", scope: !2023, file: !3, line: 588, type: !22)
!2039 = !DILocalVariable(name: "alen", scope: !2023, file: !3, line: 588, type: !22)
!2040 = !DILocalVariable(name: "p", scope: !2023, file: !3, line: 589, type: !273)
!2041 = !DILocalVariable(name: "sname", scope: !2023, file: !3, line: 590, type: !37)
!2042 = !DILocalVariable(name: "ret", scope: !2023, file: !3, line: 591, type: !18)
!2043 = !DILocalVariable(name: "__x", scope: !2044, file: !3, line: 604, type: !274)
!2044 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 604, column: 17)
!2045 = !DILocation(line: 583, column: 51, scope: !2023)
!2046 = !DILocation(line: 583, column: 72, scope: !2023)
!2047 = !DILocation(line: 583, column: 82, scope: !2023)
!2048 = !DILocation(line: 583, column: 104, scope: !2023)
!2049 = !DILocation(line: 583, column: 116, scope: !2023)
!2050 = !DILocation(line: 584, column: 29, scope: !2023)
!2051 = !DILocation(line: 584, column: 19, scope: !2023)
!2052 = !DILocation(line: 585, column: 5, scope: !2023)
!2053 = !DILocation(line: 594, column: 12, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 594, column: 9)
!2055 = !DILocation(line: 594, column: 18, scope: !2054)
!2056 = !DILocation(line: 594, column: 9, scope: !2023)
!2057 = !DILocation(line: 597, column: 8, scope: !2023)
!2058 = !DILocation(line: 597, column: 11, scope: !2023)
!2059 = !DILocation(line: 598, column: 8, scope: !2023)
!2060 = !DILocation(line: 598, column: 17, scope: !2023)
!2061 = !DILocalVariable(name: "start", arg: 1, scope: !2062, file: !3, line: 566, type: !273)
!2062 = distinct !DISubprogram(name: "nextArgument", scope: !3, file: !3, line: 566, type: !2063, isLocal: true, isDefinition: true, scopeLine: 566, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2067)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!273, !273, !2065, !2066}
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!2067 = !{!2061, !2068, !2069, !2070}
!2068 = !DILocalVariable(name: "str", arg: 2, scope: !2062, file: !3, line: 566, type: !2065)
!2069 = !DILocalVariable(name: "len", arg: 3, scope: !2062, file: !3, line: 566, type: !2066)
!2070 = !DILocalVariable(name: "p", scope: !2062, file: !3, line: 567, type: !273)
!2071 = !DILocation(line: 566, column: 45, scope: !2062, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 601, column: 9, scope: !2023)
!2073 = !DILocation(line: 567, column: 17, scope: !2062, inlinedAt: !2072)
!2074 = !DILocation(line: 568, column: 9, scope: !2075, inlinedAt: !2072)
!2075 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 568, column: 9)
!2076 = !DILocation(line: 568, column: 14, scope: !2075, inlinedAt: !2072)
!2077 = !DILocation(line: 568, column: 9, scope: !2062, inlinedAt: !2072)
!2078 = !DILocation(line: 569, column: 13, scope: !2079, inlinedAt: !2072)
!2079 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 568, column: 22)
!2080 = !DILocation(line: 570, column: 15, scope: !2081, inlinedAt: !2072)
!2081 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 570, column: 13)
!2082 = !DILocation(line: 570, column: 13, scope: !2079, inlinedAt: !2072)
!2083 = !DILocation(line: 0, scope: !2062, inlinedAt: !2072)
!2084 = !DILocation(line: 573, column: 25, scope: !2062, inlinedAt: !2072)
!2085 = !DILocation(line: 573, column: 17, scope: !2062, inlinedAt: !2072)
!2086 = !DILocation(line: 574, column: 9, scope: !2062, inlinedAt: !2072)
!2087 = !DILocation(line: 575, column: 5, scope: !2062, inlinedAt: !2072)
!2088 = !DILocation(line: 570, column: 24, scope: !2081, inlinedAt: !2072)
!2089 = !DILocation(line: 578, column: 1, scope: !2062, inlinedAt: !2072)
!2090 = !DILocation(line: 589, column: 17, scope: !2023)
!2091 = !DILocation(line: 602, column: 5, scope: !2023)
!2092 = !DILocation(line: 573, column: 12, scope: !2062, inlinedAt: !2072)
!2093 = !DILocation(line: 576, column: 13, scope: !2062, inlinedAt: !2072)
!2094 = !DILocation(line: 577, column: 15, scope: !2062, inlinedAt: !2072)
!2095 = !DILocation(line: 577, column: 22, scope: !2062, inlinedAt: !2072)
!2096 = !DILocation(line: 577, column: 5, scope: !2062, inlinedAt: !2072)
!2097 = !DILocation(line: 603, column: 16, scope: !2023)
!2098 = !DILocation(line: 603, column: 21, scope: !2023)
!2099 = !DILocation(line: 587, column: 17, scope: !2023)
!2100 = !DILocation(line: 604, column: 17, scope: !2044)
!2101 = !DILocation(line: 604, column: 34, scope: !2023)
!2102 = !DILocation(line: 605, column: 10, scope: !2023)
!2103 = !DILocation(line: 588, column: 12, scope: !2023)
!2104 = !DILocation(line: 608, column: 17, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 608, column: 9)
!2106 = !DILocation(line: 608, column: 20, scope: !2105)
!2107 = !DILocation(line: 608, column: 57, scope: !2105)
!2108 = !DILocation(line: 608, column: 9, scope: !2023)
!2109 = !DILocation(line: 609, column: 18, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 608, column: 63)
!2111 = !DILocation(line: 612, column: 9, scope: !2110)
!2112 = !DILocation(line: 0, scope: !2110)
!2113 = !DILocation(line: 566, column: 45, scope: !2062, inlinedAt: !2114)
!2114 = distinct !DILocation(line: 612, column: 21, scope: !2110)
!2115 = !DILocation(line: 567, column: 17, scope: !2062, inlinedAt: !2114)
!2116 = !DILocation(line: 568, column: 9, scope: !2075, inlinedAt: !2114)
!2117 = !DILocation(line: 568, column: 14, scope: !2075, inlinedAt: !2114)
!2118 = !DILocation(line: 568, column: 9, scope: !2062, inlinedAt: !2114)
!2119 = !DILocation(line: 569, column: 13, scope: !2079, inlinedAt: !2114)
!2120 = !DILocation(line: 570, column: 15, scope: !2081, inlinedAt: !2114)
!2121 = !DILocation(line: 570, column: 13, scope: !2079, inlinedAt: !2114)
!2122 = !DILocation(line: 570, column: 24, scope: !2081, inlinedAt: !2114)
!2123 = !DILocation(line: 0, scope: !2062, inlinedAt: !2114)
!2124 = !DILocation(line: 573, column: 25, scope: !2062, inlinedAt: !2114)
!2125 = !DILocation(line: 573, column: 17, scope: !2062, inlinedAt: !2114)
!2126 = !DILocation(line: 573, column: 12, scope: !2062, inlinedAt: !2114)
!2127 = !DILocation(line: 574, column: 9, scope: !2062, inlinedAt: !2114)
!2128 = !DILocation(line: 575, column: 5, scope: !2062, inlinedAt: !2114)
!2129 = !DILocation(line: 576, column: 13, scope: !2062, inlinedAt: !2114)
!2130 = !DILocation(line: 577, column: 15, scope: !2062, inlinedAt: !2114)
!2131 = !DILocation(line: 577, column: 22, scope: !2062, inlinedAt: !2114)
!2132 = !DILocation(line: 577, column: 5, scope: !2062, inlinedAt: !2114)
!2133 = !DILocation(line: 578, column: 1, scope: !2062, inlinedAt: !2114)
!2134 = !DILocation(line: 587, column: 24, scope: !2023)
!2135 = !DILocation(line: 588, column: 18, scope: !2023)
!2136 = !DILocation(line: 613, column: 21, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 612, column: 59)
!2138 = !DILocation(line: 590, column: 9, scope: !2023)
!2139 = !DILocation(line: 614, column: 17, scope: !2137)
!2140 = !DILocation(line: 591, column: 9, scope: !2023)
!2141 = !DILocation(line: 0, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 614, column: 17)
!2143 = !DILocation(line: 619, column: 21, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 619, column: 17)
!2145 = !DILocation(line: 619, column: 17, scope: !2137)
!2146 = !DILocation(line: 619, column: 27, scope: !2144)
!2147 = distinct !{!2147, !2111, !2148}
!2148 = !DILocation(line: 620, column: 9, scope: !2110)
!2149 = !DILocation(line: 621, column: 16, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 621, column: 16)
!2151 = !DILocation(line: 621, column: 55, scope: !2150)
!2152 = !DILocation(line: 621, column: 16, scope: !2105)
!2153 = !DILocation(line: 624, column: 18, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 624, column: 13)
!2155 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 621, column: 61)
!2156 = !DILocation(line: 624, column: 24, scope: !2154)
!2157 = !DILocation(line: 624, column: 13, scope: !2155)
!2158 = !DILocation(line: 629, column: 16, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 629, column: 16)
!2160 = !DILocation(line: 629, column: 50, scope: !2159)
!2161 = !DILocation(line: 0, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 634, column: 13)
!2163 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 633, column: 12)
!2164 = !DILocation(line: 629, column: 16, scope: !2150)
!2165 = !DILocation(line: 631, column: 19, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 629, column: 56)
!2167 = !DILocation(line: 632, column: 35, scope: !2166)
!2168 = !DILocation(line: 585, column: 19, scope: !2023)
!2169 = !DILocation(line: 227, column: 51, scope: !1296, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 632, column: 10, scope: !2166)
!2171 = !DILocation(line: 227, column: 72, scope: !1296, inlinedAt: !2170)
!2172 = !DILocation(line: 231, column: 10, scope: !1296, inlinedAt: !2170)
!2173 = !DILocation(line: 228, column: 20, scope: !1296, inlinedAt: !2170)
!2174 = !DILocation(line: 232, column: 12, scope: !1307, inlinedAt: !2170)
!2175 = !DILocation(line: 232, column: 9, scope: !1296, inlinedAt: !2170)
!2176 = !DILocation(line: 0, scope: !2166)
!2177 = !DILocation(line: 236, column: 9, scope: !1311, inlinedAt: !2170)
!2178 = !DILocation(line: 237, column: 13, scope: !1311, inlinedAt: !2170)
!2179 = !DILocation(line: 237, column: 18, scope: !1311, inlinedAt: !2170)
!2180 = !DILocation(line: 238, column: 5, scope: !1311, inlinedAt: !2170)
!2181 = !DILocation(line: 241, column: 15, scope: !1317, inlinedAt: !2170)
!2182 = !DILocation(line: 241, column: 20, scope: !1317, inlinedAt: !2170)
!2183 = !DILocation(line: 241, column: 9, scope: !1296, inlinedAt: !2170)
!2184 = !DILocation(line: 242, column: 20, scope: !1317, inlinedAt: !2170)
!2185 = !DILocation(line: 242, column: 9, scope: !1317, inlinedAt: !2170)
!2186 = !DILocation(line: 243, column: 15, scope: !1323, inlinedAt: !2170)
!2187 = !DILocation(line: 243, column: 20, scope: !1323, inlinedAt: !2170)
!2188 = !DILocation(line: 243, column: 9, scope: !1296, inlinedAt: !2170)
!2189 = !DILocation(line: 244, column: 26, scope: !1323, inlinedAt: !2170)
!2190 = !DILocation(line: 244, column: 9, scope: !1323, inlinedAt: !2170)
!2191 = !DILocation(line: 245, column: 16, scope: !1296, inlinedAt: !2170)
!2192 = !DILocation(line: 246, column: 5, scope: !1296, inlinedAt: !2170)
!2193 = !DILocation(line: 634, column: 22, scope: !2162)
!2194 = !DILocation(line: 634, column: 13, scope: !2163)
!2195 = !DILocation(line: 637, column: 42, scope: !2162)
!2196 = !DILocation(line: 227, column: 51, scope: !1296, inlinedAt: !2197)
!2197 = distinct !DILocation(line: 637, column: 13, scope: !2162)
!2198 = !DILocation(line: 227, column: 72, scope: !1296, inlinedAt: !2197)
!2199 = !DILocation(line: 231, column: 10, scope: !1296, inlinedAt: !2197)
!2200 = !DILocation(line: 228, column: 20, scope: !1296, inlinedAt: !2197)
!2201 = !DILocation(line: 232, column: 12, scope: !1307, inlinedAt: !2197)
!2202 = !DILocation(line: 232, column: 9, scope: !1296, inlinedAt: !2197)
!2203 = !DILocation(line: 236, column: 9, scope: !1311, inlinedAt: !2197)
!2204 = !DILocation(line: 237, column: 13, scope: !1311, inlinedAt: !2197)
!2205 = !DILocation(line: 237, column: 18, scope: !1311, inlinedAt: !2197)
!2206 = !DILocation(line: 238, column: 5, scope: !1311, inlinedAt: !2197)
!2207 = !DILocation(line: 241, column: 15, scope: !1317, inlinedAt: !2197)
!2208 = !DILocation(line: 241, column: 20, scope: !1317, inlinedAt: !2197)
!2209 = !DILocation(line: 241, column: 9, scope: !1296, inlinedAt: !2197)
!2210 = !DILocation(line: 242, column: 20, scope: !1317, inlinedAt: !2197)
!2211 = !DILocation(line: 242, column: 9, scope: !1317, inlinedAt: !2197)
!2212 = !DILocation(line: 243, column: 15, scope: !1323, inlinedAt: !2197)
!2213 = !DILocation(line: 243, column: 20, scope: !1323, inlinedAt: !2197)
!2214 = !DILocation(line: 243, column: 9, scope: !1296, inlinedAt: !2197)
!2215 = !DILocation(line: 244, column: 26, scope: !1323, inlinedAt: !2197)
!2216 = !DILocation(line: 244, column: 9, scope: !1323, inlinedAt: !2197)
!2217 = !DILocation(line: 245, column: 16, scope: !1296, inlinedAt: !2197)
!2218 = !DILocation(line: 246, column: 5, scope: !1296, inlinedAt: !2197)
!2219 = !DILocation(line: 639, column: 38, scope: !2162)
!2220 = !DILocation(line: 227, column: 51, scope: !1296, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 639, column: 13, scope: !2162)
!2222 = !DILocation(line: 227, column: 72, scope: !1296, inlinedAt: !2221)
!2223 = !DILocation(line: 231, column: 10, scope: !1296, inlinedAt: !2221)
!2224 = !DILocation(line: 228, column: 20, scope: !1296, inlinedAt: !2221)
!2225 = !DILocation(line: 232, column: 12, scope: !1307, inlinedAt: !2221)
!2226 = !DILocation(line: 232, column: 9, scope: !1296, inlinedAt: !2221)
!2227 = !DILocation(line: 236, column: 9, scope: !1311, inlinedAt: !2221)
!2228 = !DILocation(line: 237, column: 13, scope: !1311, inlinedAt: !2221)
!2229 = !DILocation(line: 237, column: 18, scope: !1311, inlinedAt: !2221)
!2230 = !DILocation(line: 238, column: 5, scope: !1311, inlinedAt: !2221)
!2231 = !DILocation(line: 241, column: 15, scope: !1317, inlinedAt: !2221)
!2232 = !DILocation(line: 241, column: 20, scope: !1317, inlinedAt: !2221)
!2233 = !DILocation(line: 241, column: 9, scope: !1296, inlinedAt: !2221)
!2234 = !DILocation(line: 242, column: 20, scope: !1317, inlinedAt: !2221)
!2235 = !DILocation(line: 242, column: 9, scope: !1317, inlinedAt: !2221)
!2236 = !DILocation(line: 243, column: 15, scope: !1323, inlinedAt: !2221)
!2237 = !DILocation(line: 243, column: 20, scope: !1323, inlinedAt: !2221)
!2238 = !DILocation(line: 243, column: 9, scope: !1296, inlinedAt: !2221)
!2239 = !DILocation(line: 244, column: 26, scope: !1323, inlinedAt: !2221)
!2240 = !DILocation(line: 244, column: 9, scope: !1323, inlinedAt: !2221)
!2241 = !DILocation(line: 245, column: 16, scope: !1296, inlinedAt: !2221)
!2242 = !DILocation(line: 246, column: 5, scope: !1296, inlinedAt: !2221)
!2243 = !DILocation(line: 642, column: 5, scope: !2023)
!2244 = !DILocation(line: 645, column: 5, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 645, column: 5)
!2246 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 645, column: 5)
!2247 = !DILocation(line: 645, column: 5, scope: !2246)
!2248 = !DILocation(line: 0, scope: !2154)
!2249 = !DILocation(line: 0, scope: !2054)
!2250 = !DILocation(line: 648, column: 1, scope: !2023)
!2251 = distinct !DISubprogram(name: "redisAsyncCommand", scope: !3, file: !3, line: 665, type: !2252, isLocal: false, isDefinition: true, scopeLine: 665, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2254)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!18, !113, !241, !12, !273, null}
!2254 = !{!2255, !2256, !2257, !2258, !2259, !2268}
!2255 = !DILocalVariable(name: "ac", arg: 1, scope: !2251, file: !3, line: 665, type: !113)
!2256 = !DILocalVariable(name: "fn", arg: 2, scope: !2251, file: !3, line: 665, type: !241)
!2257 = !DILocalVariable(name: "privdata", arg: 3, scope: !2251, file: !3, line: 665, type: !12)
!2258 = !DILocalVariable(name: "format", arg: 4, scope: !2251, file: !3, line: 665, type: !273)
!2259 = !DILocalVariable(name: "ap", scope: !2251, file: !3, line: 666, type: !2260)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2261, line: 46, baseType: !2262)
!2261 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!2262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2263, line: 51, baseType: !2264)
!2263 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 666, baseType: !2265)
!2265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1986, size: 192, elements: !2266)
!2266 = !{!2267}
!2267 = !DISubrange(count: 1)
!2268 = !DILocalVariable(name: "status", scope: !2251, file: !3, line: 667, type: !18)
!2269 = !DILocation(line: 665, column: 42, scope: !2251)
!2270 = !DILocation(line: 665, column: 63, scope: !2251)
!2271 = !DILocation(line: 665, column: 73, scope: !2251)
!2272 = !DILocation(line: 665, column: 95, scope: !2251)
!2273 = !DILocation(line: 666, column: 5, scope: !2251)
!2274 = !DILocation(line: 666, column: 13, scope: !2251)
!2275 = !DILocation(line: 668, column: 5, scope: !2251)
!2276 = !DILocation(line: 650, column: 43, scope: !1982, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 669, column: 14, scope: !2251)
!2278 = !DILocation(line: 650, column: 64, scope: !1982, inlinedAt: !2277)
!2279 = !DILocation(line: 650, column: 74, scope: !1982, inlinedAt: !2277)
!2280 = !DILocation(line: 650, column: 96, scope: !1982, inlinedAt: !2277)
!2281 = !DILocation(line: 650, column: 112, scope: !1982, inlinedAt: !2277)
!2282 = !DILocation(line: 651, column: 5, scope: !1982, inlinedAt: !2277)
!2283 = !DILocation(line: 651, column: 11, scope: !1982, inlinedAt: !2277)
!2284 = !DILocation(line: 654, column: 11, scope: !1982, inlinedAt: !2277)
!2285 = !DILocation(line: 652, column: 9, scope: !1982, inlinedAt: !2277)
!2286 = !DILocation(line: 657, column: 13, scope: !2011, inlinedAt: !2277)
!2287 = !DILocation(line: 657, column: 9, scope: !1982, inlinedAt: !2277)
!2288 = !DILocation(line: 660, column: 49, scope: !1982, inlinedAt: !2277)
!2289 = !DILocation(line: 660, column: 53, scope: !1982, inlinedAt: !2277)
!2290 = !DILocation(line: 660, column: 14, scope: !1982, inlinedAt: !2277)
!2291 = !DILocation(line: 653, column: 9, scope: !1982, inlinedAt: !2277)
!2292 = !DILocation(line: 661, column: 10, scope: !1982, inlinedAt: !2277)
!2293 = !DILocation(line: 661, column: 5, scope: !1982, inlinedAt: !2277)
!2294 = !DILocation(line: 662, column: 5, scope: !1982, inlinedAt: !2277)
!2295 = !DILocation(line: 0, scope: !1982, inlinedAt: !2277)
!2296 = !DILocation(line: 0, scope: !2251)
!2297 = !DILocation(line: 663, column: 1, scope: !1982, inlinedAt: !2277)
!2298 = !DILocation(line: 667, column: 9, scope: !2251)
!2299 = !DILocation(line: 670, column: 5, scope: !2251)
!2300 = !DILocation(line: 672, column: 1, scope: !2251)
!2301 = !DILocation(line: 671, column: 5, scope: !2251)
!2302 = distinct !DISubprogram(name: "redisAsyncCommandArgv", scope: !3, file: !3, line: 674, type: !2303, isLocal: false, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2307)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!18, !113, !241, !12, !18, !2065, !2305}
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!2307 = !{!2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316}
!2308 = !DILocalVariable(name: "ac", arg: 1, scope: !2302, file: !3, line: 674, type: !113)
!2309 = !DILocalVariable(name: "fn", arg: 2, scope: !2302, file: !3, line: 674, type: !241)
!2310 = !DILocalVariable(name: "privdata", arg: 3, scope: !2302, file: !3, line: 674, type: !12)
!2311 = !DILocalVariable(name: "argc", arg: 4, scope: !2302, file: !3, line: 674, type: !18)
!2312 = !DILocalVariable(name: "argv", arg: 5, scope: !2302, file: !3, line: 674, type: !2065)
!2313 = !DILocalVariable(name: "argvlen", arg: 6, scope: !2302, file: !3, line: 674, type: !2305)
!2314 = !DILocalVariable(name: "cmd", scope: !2302, file: !3, line: 675, type: !37)
!2315 = !DILocalVariable(name: "len", scope: !2302, file: !3, line: 676, type: !18)
!2316 = !DILocalVariable(name: "status", scope: !2302, file: !3, line: 677, type: !18)
!2317 = !DILocation(line: 674, column: 46, scope: !2302)
!2318 = !DILocation(line: 674, column: 67, scope: !2302)
!2319 = !DILocation(line: 674, column: 77, scope: !2302)
!2320 = !DILocation(line: 674, column: 91, scope: !2302)
!2321 = !DILocation(line: 674, column: 110, scope: !2302)
!2322 = !DILocation(line: 674, column: 130, scope: !2302)
!2323 = !DILocation(line: 675, column: 5, scope: !2302)
!2324 = !DILocation(line: 675, column: 9, scope: !2302)
!2325 = !DILocation(line: 678, column: 11, scope: !2302)
!2326 = !DILocation(line: 676, column: 9, scope: !2302)
!2327 = !DILocation(line: 679, column: 49, scope: !2302)
!2328 = !DILocation(line: 679, column: 53, scope: !2302)
!2329 = !DILocation(line: 679, column: 14, scope: !2302)
!2330 = !DILocation(line: 677, column: 9, scope: !2302)
!2331 = !DILocation(line: 680, column: 13, scope: !2302)
!2332 = !DILocation(line: 680, column: 5, scope: !2302)
!2333 = !DILocation(line: 682, column: 1, scope: !2302)
!2334 = !DILocation(line: 681, column: 5, scope: !2302)
!2335 = distinct !DISubprogram(name: "redisAsyncFormattedCommand", scope: !3, file: !3, line: 684, type: !2024, isLocal: false, isDefinition: true, scopeLine: 684, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2336)
!2336 = !{!2337, !2338, !2339, !2340, !2341, !2342}
!2337 = !DILocalVariable(name: "ac", arg: 1, scope: !2335, file: !3, line: 684, type: !113)
!2338 = !DILocalVariable(name: "fn", arg: 2, scope: !2335, file: !3, line: 684, type: !241)
!2339 = !DILocalVariable(name: "privdata", arg: 3, scope: !2335, file: !3, line: 684, type: !12)
!2340 = !DILocalVariable(name: "cmd", arg: 4, scope: !2335, file: !3, line: 684, type: !273)
!2341 = !DILocalVariable(name: "len", arg: 5, scope: !2335, file: !3, line: 684, type: !22)
!2342 = !DILocalVariable(name: "status", scope: !2335, file: !3, line: 685, type: !18)
!2343 = !DILocation(line: 684, column: 51, scope: !2335)
!2344 = !DILocation(line: 684, column: 72, scope: !2335)
!2345 = !DILocation(line: 684, column: 82, scope: !2335)
!2346 = !DILocation(line: 684, column: 104, scope: !2335)
!2347 = !DILocation(line: 684, column: 116, scope: !2335)
!2348 = !DILocation(line: 685, column: 18, scope: !2335)
!2349 = !DILocation(line: 685, column: 9, scope: !2335)
!2350 = !DILocation(line: 686, column: 5, scope: !2335)
!2351 = distinct !DISubprogram(name: "callbackHash", scope: !3, file: !3, line: 64, type: !88, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2352)
!2352 = !{!2353}
!2353 = !DILocalVariable(name: "key", arg: 1, scope: !2351, file: !3, line: 64, type: !90)
!2354 = !DILocation(line: 64, column: 46, scope: !2351)
!2355 = !DILocation(line: 86, column: 39, scope: !1224, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 66, column: 32, scope: !2351)
!2357 = !DILocation(line: 87, column: 27, scope: !1224, inlinedAt: !2356)
!2358 = !DILocation(line: 87, column: 19, scope: !1224, inlinedAt: !2356)
!2359 = !DILocation(line: 88, column: 5, scope: !1224, inlinedAt: !2356)
!2360 = !DILocation(line: 90, column: 20, scope: !1237, inlinedAt: !2356)
!2361 = !DILocation(line: 90, column: 13, scope: !1237, inlinedAt: !2356)
!2362 = !DILocation(line: 92, column: 20, scope: !1237, inlinedAt: !2356)
!2363 = !DILocation(line: 92, column: 34, scope: !1237, inlinedAt: !2356)
!2364 = !DILocation(line: 92, column: 13, scope: !1237, inlinedAt: !2356)
!2365 = !DILocation(line: 94, column: 20, scope: !1237, inlinedAt: !2356)
!2366 = !DILocation(line: 94, column: 35, scope: !1237, inlinedAt: !2356)
!2367 = !DILocation(line: 94, column: 13, scope: !1237, inlinedAt: !2356)
!2368 = !DILocation(line: 96, column: 20, scope: !1237, inlinedAt: !2356)
!2369 = !DILocation(line: 96, column: 35, scope: !1237, inlinedAt: !2356)
!2370 = !DILocation(line: 96, column: 13, scope: !1237, inlinedAt: !2356)
!2371 = !DILocation(line: 98, column: 20, scope: !1237, inlinedAt: !2356)
!2372 = !DILocation(line: 98, column: 35, scope: !1237, inlinedAt: !2356)
!2373 = !DILocation(line: 98, column: 13, scope: !1237, inlinedAt: !2356)
!2374 = !DILocation(line: 100, column: 5, scope: !1224, inlinedAt: !2356)
!2375 = !DILocation(line: 101, column: 1, scope: !1224, inlinedAt: !2356)
!2376 = !DILocalVariable(name: "buf", arg: 1, scope: !2377, file: !348, line: 53, type: !34)
!2377 = distinct !DISubprogram(name: "dictGenHashFunction", scope: !348, file: !348, line: 53, type: !2378, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2380)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!7, !34, !18}
!2380 = !{!2376, !2381, !2382}
!2381 = !DILocalVariable(name: "len", arg: 2, scope: !2377, file: !348, line: 53, type: !18)
!2382 = !DILocalVariable(name: "hash", scope: !2377, file: !348, line: 54, type: !7)
!2383 = !DILocation(line: 53, column: 62, scope: !2377, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 65, column: 12, scope: !2351)
!2385 = !DILocation(line: 53, column: 71, scope: !2377, inlinedAt: !2384)
!2386 = !DILocation(line: 54, column: 18, scope: !2377, inlinedAt: !2384)
!2387 = !DILocation(line: 56, column: 5, scope: !2377, inlinedAt: !2384)
!2388 = !DILocation(line: 0, scope: !1237, inlinedAt: !2356)
!2389 = !DILocation(line: 0, scope: !2351)
!2390 = !DILocation(line: 66, column: 32, scope: !2351)
!2391 = !DILocation(line: 56, column: 15, scope: !2377, inlinedAt: !2384)
!2392 = !DILocation(line: 57, column: 29, scope: !2377, inlinedAt: !2384)
!2393 = !DILocation(line: 57, column: 44, scope: !2377, inlinedAt: !2384)
!2394 = !DILocation(line: 57, column: 40, scope: !2377, inlinedAt: !2384)
!2395 = !DILocation(line: 57, column: 39, scope: !2377, inlinedAt: !2384)
!2396 = !DILocation(line: 57, column: 37, scope: !2377, inlinedAt: !2384)
!2397 = distinct !{!2397, !2398, !2399}
!2398 = !DILocation(line: 56, column: 5, scope: !2377)
!2399 = !DILocation(line: 57, column: 46, scope: !2377)
!2400 = distinct !{!2400, !2401}
!2401 = !{!"llvm.loop.unroll.disable"}
!2402 = !DILocation(line: 0, scope: !2377, inlinedAt: !2384)
!2403 = !DILocation(line: 58, column: 5, scope: !2377, inlinedAt: !2384)
!2404 = !DILocation(line: 65, column: 5, scope: !2351)
!2405 = distinct !DISubprogram(name: "callbackValDup", scope: !3, file: !3, line: 69, type: !94, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2406)
!2406 = !{!2407, !2408, !2409}
!2407 = !DILocalVariable(name: "privdata", arg: 1, scope: !2405, file: !3, line: 69, type: !12)
!2408 = !DILocalVariable(name: "src", arg: 2, scope: !2405, file: !3, line: 69, type: !90)
!2409 = !DILocalVariable(name: "dup", scope: !2405, file: !3, line: 71, type: !234)
!2410 = !DILocation(line: 69, column: 35, scope: !2405)
!2411 = !DILocation(line: 69, column: 57, scope: !2405)
!2412 = !DILocation(line: 71, column: 26, scope: !2405)
!2413 = !DILocation(line: 71, column: 20, scope: !2405)
!2414 = !DILocation(line: 72, column: 5, scope: !2405)
!2415 = !DILocation(line: 73, column: 5, scope: !2405)
!2416 = distinct !DISubprogram(name: "callbackKeyCompare", scope: !3, file: !3, line: 76, type: !99, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2417)
!2417 = !{!2418, !2419, !2420, !2421, !2422}
!2418 = !DILocalVariable(name: "privdata", arg: 1, scope: !2416, file: !3, line: 76, type: !12)
!2419 = !DILocalVariable(name: "key1", arg: 2, scope: !2416, file: !3, line: 76, type: !90)
!2420 = !DILocalVariable(name: "key2", arg: 3, scope: !2416, file: !3, line: 76, type: !90)
!2421 = !DILocalVariable(name: "l1", scope: !2416, file: !3, line: 77, type: !18)
!2422 = !DILocalVariable(name: "l2", scope: !2416, file: !3, line: 77, type: !18)
!2423 = !DILocation(line: 76, column: 37, scope: !2416)
!2424 = !DILocation(line: 76, column: 59, scope: !2416)
!2425 = !DILocation(line: 76, column: 77, scope: !2416)
!2426 = !DILocation(line: 86, column: 39, scope: !1224, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 80, column: 10, scope: !2416)
!2428 = !DILocation(line: 87, column: 27, scope: !1224, inlinedAt: !2427)
!2429 = !DILocation(line: 87, column: 19, scope: !1224, inlinedAt: !2427)
!2430 = !DILocation(line: 88, column: 5, scope: !1224, inlinedAt: !2427)
!2431 = !DILocation(line: 90, column: 20, scope: !1237, inlinedAt: !2427)
!2432 = !DILocation(line: 90, column: 13, scope: !1237, inlinedAt: !2427)
!2433 = !DILocation(line: 92, column: 20, scope: !1237, inlinedAt: !2427)
!2434 = !DILocation(line: 92, column: 34, scope: !1237, inlinedAt: !2427)
!2435 = !DILocation(line: 92, column: 13, scope: !1237, inlinedAt: !2427)
!2436 = !DILocation(line: 94, column: 20, scope: !1237, inlinedAt: !2427)
!2437 = !DILocation(line: 94, column: 35, scope: !1237, inlinedAt: !2427)
!2438 = !DILocation(line: 94, column: 13, scope: !1237, inlinedAt: !2427)
!2439 = !DILocation(line: 96, column: 20, scope: !1237, inlinedAt: !2427)
!2440 = !DILocation(line: 96, column: 35, scope: !1237, inlinedAt: !2427)
!2441 = !DILocation(line: 96, column: 13, scope: !1237, inlinedAt: !2427)
!2442 = !DILocation(line: 98, column: 20, scope: !1237, inlinedAt: !2427)
!2443 = !DILocation(line: 98, column: 35, scope: !1237, inlinedAt: !2427)
!2444 = !DILocation(line: 98, column: 13, scope: !1237, inlinedAt: !2427)
!2445 = !DILocation(line: 0, scope: !1237, inlinedAt: !2427)
!2446 = !DILocation(line: 0, scope: !2416)
!2447 = !DILocation(line: 101, column: 1, scope: !1224, inlinedAt: !2427)
!2448 = !DILocation(line: 80, column: 10, scope: !2416)
!2449 = !DILocation(line: 77, column: 9, scope: !2416)
!2450 = !DILocation(line: 86, column: 39, scope: !1224, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 81, column: 10, scope: !2416)
!2452 = !DILocation(line: 87, column: 27, scope: !1224, inlinedAt: !2451)
!2453 = !DILocation(line: 87, column: 19, scope: !1224, inlinedAt: !2451)
!2454 = !DILocation(line: 88, column: 5, scope: !1224, inlinedAt: !2451)
!2455 = !DILocation(line: 90, column: 20, scope: !1237, inlinedAt: !2451)
!2456 = !DILocation(line: 90, column: 13, scope: !1237, inlinedAt: !2451)
!2457 = !DILocation(line: 92, column: 20, scope: !1237, inlinedAt: !2451)
!2458 = !DILocation(line: 92, column: 34, scope: !1237, inlinedAt: !2451)
!2459 = !DILocation(line: 92, column: 13, scope: !1237, inlinedAt: !2451)
!2460 = !DILocation(line: 94, column: 20, scope: !1237, inlinedAt: !2451)
!2461 = !DILocation(line: 94, column: 35, scope: !1237, inlinedAt: !2451)
!2462 = !DILocation(line: 94, column: 13, scope: !1237, inlinedAt: !2451)
!2463 = !DILocation(line: 96, column: 20, scope: !1237, inlinedAt: !2451)
!2464 = !DILocation(line: 96, column: 35, scope: !1237, inlinedAt: !2451)
!2465 = !DILocation(line: 96, column: 13, scope: !1237, inlinedAt: !2451)
!2466 = !DILocation(line: 98, column: 20, scope: !1237, inlinedAt: !2451)
!2467 = !DILocation(line: 98, column: 35, scope: !1237, inlinedAt: !2451)
!2468 = !DILocation(line: 98, column: 13, scope: !1237, inlinedAt: !2451)
!2469 = !DILocation(line: 0, scope: !1237, inlinedAt: !2451)
!2470 = !DILocation(line: 101, column: 1, scope: !1224, inlinedAt: !2451)
!2471 = !DILocation(line: 81, column: 10, scope: !2416)
!2472 = !DILocation(line: 77, column: 13, scope: !2416)
!2473 = !DILocation(line: 82, column: 12, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 82, column: 9)
!2475 = !DILocation(line: 82, column: 9, scope: !2416)
!2476 = !DILocation(line: 83, column: 29, scope: !2416)
!2477 = !DILocation(line: 83, column: 12, scope: !2416)
!2478 = !DILocation(line: 83, column: 33, scope: !2416)
!2479 = !DILocation(line: 83, column: 5, scope: !2416)
!2480 = !DILocation(line: 0, scope: !2474)
!2481 = !DILocation(line: 84, column: 1, scope: !2416)
!2482 = distinct !DISubprogram(name: "callbackKeyDestructor", scope: !3, file: !3, line: 86, type: !103, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2483)
!2483 = !{!2484, !2485}
!2484 = !DILocalVariable(name: "privdata", arg: 1, scope: !2482, file: !3, line: 86, type: !12)
!2485 = !DILocalVariable(name: "key", arg: 2, scope: !2482, file: !3, line: 86, type: !12)
!2486 = !DILocation(line: 86, column: 41, scope: !2482)
!2487 = !DILocation(line: 86, column: 57, scope: !2482)
!2488 = !DILocation(line: 88, column: 5, scope: !2482)
!2489 = !DILocation(line: 89, column: 1, scope: !2482)
!2490 = distinct !DISubprogram(name: "callbackValDestructor", scope: !3, file: !3, line: 91, type: !103, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2491)
!2491 = !{!2492, !2493}
!2492 = !DILocalVariable(name: "privdata", arg: 1, scope: !2490, file: !3, line: 91, type: !12)
!2493 = !DILocalVariable(name: "val", arg: 2, scope: !2490, file: !3, line: 91, type: !12)
!2494 = !DILocation(line: 91, column: 41, scope: !2490)
!2495 = !DILocation(line: 91, column: 57, scope: !2490)
!2496 = !DILocation(line: 93, column: 5, scope: !2490)
!2497 = !DILocation(line: 94, column: 1, scope: !2490)
!2498 = distinct !DISubprogram(name: "dictRelease", scope: !348, file: !348, line: 238, type: !374, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2499)
!2499 = !{!2500}
!2500 = !DILocalVariable(name: "ht", arg: 1, scope: !2498, file: !348, line: 238, type: !351)
!2501 = !DILocation(line: 238, column: 31, scope: !2498)
!2502 = !DILocalVariable(name: "ht", arg: 1, scope: !2503, file: !348, line: 213, type: !351)
!2503 = distinct !DISubprogram(name: "_dictClear", scope: !348, file: !348, line: 213, type: !2504, isLocal: true, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2506)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!18, !351}
!2506 = !{!2502, !2507, !2508, !2512}
!2507 = !DILocalVariable(name: "i", scope: !2503, file: !348, line: 214, type: !26)
!2508 = !DILocalVariable(name: "he", scope: !2509, file: !348, line: 218, type: !258)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !348, line: 217, column: 52)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !348, line: 217, column: 5)
!2511 = distinct !DILexicalBlock(scope: !2503, file: !348, line: 217, column: 5)
!2512 = !DILocalVariable(name: "nextHe", scope: !2509, file: !348, line: 218, type: !258)
!2513 = !DILocation(line: 213, column: 29, scope: !2503, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 239, column: 5, scope: !2498)
!2515 = !DILocation(line: 214, column: 19, scope: !2503, inlinedAt: !2514)
!2516 = !DILocation(line: 217, column: 10, scope: !2511, inlinedAt: !2514)
!2517 = !DILocation(line: 217, column: 37, scope: !2510, inlinedAt: !2514)
!2518 = !DILocation(line: 217, column: 25, scope: !2510, inlinedAt: !2514)
!2519 = !DILocation(line: 217, column: 19, scope: !2510, inlinedAt: !2514)
!2520 = !DILocation(line: 217, column: 30, scope: !2510, inlinedAt: !2514)
!2521 = !DILocation(line: 217, column: 42, scope: !2510, inlinedAt: !2514)
!2522 = !DILocation(line: 217, column: 5, scope: !2511, inlinedAt: !2514)
!2523 = !DILocation(line: 220, column: 23, scope: !2524, inlinedAt: !2514)
!2524 = distinct !DILexicalBlock(scope: !2509, file: !348, line: 220, column: 13)
!2525 = !DILocation(line: 220, column: 19, scope: !2524, inlinedAt: !2514)
!2526 = !DILocation(line: 218, column: 20, scope: !2509, inlinedAt: !2514)
!2527 = !DILocation(line: 220, column: 33, scope: !2524, inlinedAt: !2514)
!2528 = !DILocation(line: 220, column: 13, scope: !2509, inlinedAt: !2514)
!2529 = !DILocation(line: 0, scope: !2509, inlinedAt: !2514)
!2530 = !DILocation(line: 222, column: 26, scope: !2531, inlinedAt: !2514)
!2531 = distinct !DILexicalBlock(scope: !2509, file: !348, line: 221, column: 19)
!2532 = !DILocation(line: 218, column: 25, scope: !2509, inlinedAt: !2514)
!2533 = !DILocation(line: 223, column: 13, scope: !2534, inlinedAt: !2514)
!2534 = distinct !DILexicalBlock(scope: !2531, file: !348, line: 223, column: 13)
!2535 = !DILocation(line: 223, column: 13, scope: !2531, inlinedAt: !2514)
!2536 = !DILocation(line: 224, column: 13, scope: !2537, inlinedAt: !2514)
!2537 = distinct !DILexicalBlock(scope: !2531, file: !348, line: 224, column: 13)
!2538 = !DILocation(line: 224, column: 13, scope: !2531, inlinedAt: !2514)
!2539 = !DILocation(line: 225, column: 18, scope: !2531, inlinedAt: !2514)
!2540 = !DILocation(line: 225, column: 13, scope: !2531, inlinedAt: !2514)
!2541 = !DILocation(line: 226, column: 21, scope: !2531, inlinedAt: !2514)
!2542 = !DILocation(line: 221, column: 9, scope: !2509, inlinedAt: !2514)
!2543 = distinct !{!2543, !2544, !2545}
!2544 = !DILocation(line: 221, column: 9, scope: !2509)
!2545 = !DILocation(line: 228, column: 9, scope: !2509)
!2546 = !DILocation(line: 229, column: 5, scope: !2510, inlinedAt: !2514)
!2547 = !DILocation(line: 217, column: 48, scope: !2510, inlinedAt: !2514)
!2548 = !DILocation(line: 217, column: 5, scope: !2510, inlinedAt: !2514)
!2549 = distinct !{!2549, !2550, !2551}
!2550 = !DILocation(line: 217, column: 5, scope: !2511)
!2551 = !DILocation(line: 229, column: 5, scope: !2511)
!2552 = !DILocation(line: 231, column: 14, scope: !2503, inlinedAt: !2514)
!2553 = !DILocation(line: 231, column: 5, scope: !2503, inlinedAt: !2514)
!2554 = !DILocation(line: 65, column: 30, scope: !373, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 233, column: 5, scope: !2503, inlinedAt: !2514)
!2556 = !DILocation(line: 66, column: 15, scope: !373, inlinedAt: !2555)
!2557 = !DILocation(line: 67, column: 14, scope: !373, inlinedAt: !2555)
!2558 = !DILocation(line: 69, column: 14, scope: !373, inlinedAt: !2555)
!2559 = !DILocation(line: 70, column: 1, scope: !373, inlinedAt: !2555)
!2560 = !DILocation(line: 234, column: 5, scope: !2503, inlinedAt: !2514)
!2561 = !DILocation(line: 240, column: 10, scope: !2498)
!2562 = !DILocation(line: 240, column: 5, scope: !2498)
!2563 = !DILocation(line: 241, column: 1, scope: !2498)
!2564 = distinct !DISubprogram(name: "dictReplace", scope: !348, file: !348, line: 160, type: !2565, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2567)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!18, !351, !12, !12}
!2567 = !{!2568, !2569, !2570, !2571, !2572}
!2568 = !DILocalVariable(name: "ht", arg: 1, scope: !2564, file: !348, line: 160, type: !351)
!2569 = !DILocalVariable(name: "key", arg: 2, scope: !2564, file: !348, line: 160, type: !12)
!2570 = !DILocalVariable(name: "val", arg: 3, scope: !2564, file: !348, line: 160, type: !12)
!2571 = !DILocalVariable(name: "entry", scope: !2564, file: !348, line: 161, type: !258)
!2572 = !DILocalVariable(name: "auxentry", scope: !2564, file: !348, line: 161, type: !259)
!2573 = !DILocation(line: 160, column: 30, scope: !2564)
!2574 = !DILocation(line: 160, column: 40, scope: !2564)
!2575 = !DILocation(line: 160, column: 51, scope: !2564)
!2576 = !DILocalVariable(name: "ht", arg: 1, scope: !2577, file: !348, line: 135, type: !351)
!2577 = distinct !DISubprogram(name: "dictAdd", scope: !348, file: !348, line: 135, type: !2565, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2578)
!2578 = !{!2576, !2579, !2580, !2581, !2582}
!2579 = !DILocalVariable(name: "key", arg: 2, scope: !2577, file: !348, line: 135, type: !12)
!2580 = !DILocalVariable(name: "val", arg: 3, scope: !2577, file: !348, line: 135, type: !12)
!2581 = !DILocalVariable(name: "index", scope: !2577, file: !348, line: 136, type: !18)
!2582 = !DILocalVariable(name: "entry", scope: !2577, file: !348, line: 137, type: !258)
!2583 = !DILocation(line: 135, column: 26, scope: !2577, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 165, column: 9, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2564, file: !348, line: 165, column: 9)
!2586 = !DILocation(line: 135, column: 36, scope: !2577, inlinedAt: !2584)
!2587 = !DILocation(line: 135, column: 47, scope: !2577, inlinedAt: !2584)
!2588 = !DILocalVariable(name: "ht", arg: 1, scope: !2589, file: !348, line: 320, type: !351)
!2589 = distinct !DISubprogram(name: "_dictKeyIndex", scope: !348, file: !348, line: 320, type: !1515, isLocal: true, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2590)
!2590 = !{!2588, !2591, !2592, !2593}
!2591 = !DILocalVariable(name: "key", arg: 2, scope: !2589, file: !348, line: 320, type: !90)
!2592 = !DILocalVariable(name: "h", scope: !2589, file: !348, line: 321, type: !7)
!2593 = !DILocalVariable(name: "he", scope: !2589, file: !348, line: 322, type: !258)
!2594 = !DILocation(line: 320, column: 32, scope: !2589, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 141, column: 18, scope: !2596, inlinedAt: !2584)
!2596 = distinct !DILexicalBlock(scope: !2577, file: !348, line: 141, column: 9)
!2597 = !DILocation(line: 320, column: 48, scope: !2589, inlinedAt: !2595)
!2598 = !DILocalVariable(name: "ht", arg: 1, scope: !2599, file: !348, line: 295, type: !351)
!2599 = distinct !DISubprogram(name: "_dictExpandIfNeeded", scope: !348, file: !348, line: 295, type: !2504, isLocal: true, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2600)
!2600 = !{!2598}
!2601 = !DILocation(line: 295, column: 38, scope: !2599, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 325, column: 9, scope: !2603, inlinedAt: !2595)
!2603 = distinct !DILexicalBlock(scope: !2589, file: !348, line: 325, column: 9)
!2604 = !DILocation(line: 298, column: 13, scope: !2605, inlinedAt: !2602)
!2605 = distinct !DILexicalBlock(scope: !2599, file: !348, line: 298, column: 9)
!2606 = !DILocation(line: 298, column: 18, scope: !2605, inlinedAt: !2602)
!2607 = !DILocation(line: 298, column: 9, scope: !2599, inlinedAt: !2602)
!2608 = !DILocation(line: 300, column: 13, scope: !2609, inlinedAt: !2602)
!2609 = distinct !DILexicalBlock(scope: !2599, file: !348, line: 300, column: 9)
!2610 = !DILocation(line: 300, column: 18, scope: !2609, inlinedAt: !2602)
!2611 = !DILocation(line: 300, column: 9, scope: !2599, inlinedAt: !2602)
!2612 = !DILocation(line: 301, column: 39, scope: !2609, inlinedAt: !2602)
!2613 = !DILocation(line: 301, column: 9, scope: !2609, inlinedAt: !2602)
!2614 = !DILocation(line: 302, column: 5, scope: !2599, inlinedAt: !2602)
!2615 = !DILocation(line: 303, column: 1, scope: !2599, inlinedAt: !2602)
!2616 = !DILocation(line: 325, column: 9, scope: !2589, inlinedAt: !2595)
!2617 = !DILocation(line: 0, scope: !2603, inlinedAt: !2595)
!2618 = !DILocation(line: 325, column: 33, scope: !2603, inlinedAt: !2595)
!2619 = !DILocation(line: 328, column: 9, scope: !2589, inlinedAt: !2595)
!2620 = !DILocation(line: 328, column: 36, scope: !2589, inlinedAt: !2595)
!2621 = !DILocation(line: 321, column: 18, scope: !2589, inlinedAt: !2595)
!2622 = !DILocation(line: 330, column: 14, scope: !2589, inlinedAt: !2595)
!2623 = !DILocation(line: 330, column: 10, scope: !2589, inlinedAt: !2595)
!2624 = !DILocation(line: 322, column: 16, scope: !2589, inlinedAt: !2595)
!2625 = !DILocation(line: 331, column: 5, scope: !2589, inlinedAt: !2595)
!2626 = !DILocation(line: 332, column: 13, scope: !2627, inlinedAt: !2595)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !348, line: 332, column: 13)
!2628 = distinct !DILexicalBlock(scope: !2589, file: !348, line: 331, column: 15)
!2629 = !DILocation(line: 332, column: 13, scope: !2628, inlinedAt: !2595)
!2630 = !DILocation(line: 334, column: 18, scope: !2628, inlinedAt: !2595)
!2631 = distinct !{!2631, !2632, !2633}
!2632 = !DILocation(line: 331, column: 5, scope: !2589)
!2633 = !DILocation(line: 335, column: 5, scope: !2589)
!2634 = !DILocation(line: 0, scope: !2596, inlinedAt: !2584)
!2635 = !DILocation(line: 337, column: 1, scope: !2589, inlinedAt: !2595)
!2636 = !DILocation(line: 136, column: 9, scope: !2577, inlinedAt: !2584)
!2637 = !DILocation(line: 141, column: 9, scope: !2577, inlinedAt: !2584)
!2638 = !DILocation(line: 336, column: 5, scope: !2589, inlinedAt: !2595)
!2639 = !DILocation(line: 141, column: 42, scope: !2596, inlinedAt: !2584)
!2640 = !DILocation(line: 145, column: 13, scope: !2577, inlinedAt: !2584)
!2641 = !DILocation(line: 146, column: 23, scope: !2577, inlinedAt: !2584)
!2642 = !DILocation(line: 146, column: 19, scope: !2577, inlinedAt: !2584)
!2643 = !DILocation(line: 146, column: 12, scope: !2577, inlinedAt: !2584)
!2644 = !DILocation(line: 146, column: 17, scope: !2577, inlinedAt: !2584)
!2645 = !DILocation(line: 147, column: 22, scope: !2577, inlinedAt: !2584)
!2646 = !DILocation(line: 150, column: 5, scope: !2647, inlinedAt: !2584)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !348, line: 150, column: 5)
!2648 = distinct !DILexicalBlock(scope: !2577, file: !348, line: 150, column: 5)
!2649 = !{!1481, !316, i64 8}
!2650 = !DILocation(line: 150, column: 5, scope: !2648, inlinedAt: !2584)
!2651 = !DILocation(line: 137, column: 16, scope: !2577, inlinedAt: !2584)
!2652 = !DILocation(line: 151, column: 5, scope: !2653, inlinedAt: !2584)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !348, line: 151, column: 5)
!2654 = distinct !DILexicalBlock(scope: !2577, file: !348, line: 151, column: 5)
!2655 = !{!1481, !316, i64 16}
!2656 = !DILocation(line: 151, column: 5, scope: !2654, inlinedAt: !2584)
!2657 = !DILocation(line: 152, column: 9, scope: !2577, inlinedAt: !2584)
!2658 = !DILocation(line: 152, column: 13, scope: !2577, inlinedAt: !2584)
!2659 = !DILocation(line: 153, column: 5, scope: !2577, inlinedAt: !2584)
!2660 = !DILocation(line: 154, column: 1, scope: !2577, inlinedAt: !2584)
!2661 = !DILocation(line: 166, column: 9, scope: !2585)
!2662 = !DILocation(line: 142, column: 9, scope: !2596, inlinedAt: !2584)
!2663 = !DILocation(line: 165, column: 9, scope: !2564)
!2664 = !DILocation(line: 243, column: 34, scope: !1465, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 168, column: 13, scope: !2564)
!2666 = !DILocation(line: 243, column: 50, scope: !1465, inlinedAt: !2665)
!2667 = !DILocation(line: 247, column: 13, scope: !1476, inlinedAt: !2665)
!2668 = !DILocation(line: 247, column: 18, scope: !1476, inlinedAt: !2665)
!2669 = !DILocation(line: 247, column: 9, scope: !1465, inlinedAt: !2665)
!2670 = !DILocation(line: 247, column: 24, scope: !1476, inlinedAt: !2665)
!2671 = !DILocation(line: 176, column: 5, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !348, line: 176, column: 5)
!2673 = distinct !DILexicalBlock(scope: !2564, file: !348, line: 176, column: 5)
!2674 = !DILocation(line: 248, column: 9, scope: !1465, inlinedAt: !2665)
!2675 = !DILocation(line: 248, column: 36, scope: !1465, inlinedAt: !2665)
!2676 = !DILocation(line: 245, column: 18, scope: !1465, inlinedAt: !2665)
!2677 = !DILocation(line: 249, column: 14, scope: !1465, inlinedAt: !2665)
!2678 = !DILocation(line: 249, column: 10, scope: !1465, inlinedAt: !2665)
!2679 = !DILocation(line: 244, column: 16, scope: !1465, inlinedAt: !2665)
!2680 = !DILocation(line: 250, column: 5, scope: !1465, inlinedAt: !2665)
!2681 = !DILocation(line: 251, column: 13, scope: !1490, inlinedAt: !2665)
!2682 = !DILocation(line: 251, column: 13, scope: !1491, inlinedAt: !2665)
!2683 = !DILocation(line: 252, column: 13, scope: !1490, inlinedAt: !2665)
!2684 = !DILocation(line: 253, column: 18, scope: !1491, inlinedAt: !2665)
!2685 = !DILocation(line: 255, column: 5, scope: !1465, inlinedAt: !2665)
!2686 = !DILocation(line: 0, scope: !1465, inlinedAt: !2665)
!2687 = !DILocation(line: 256, column: 1, scope: !1465, inlinedAt: !2665)
!2688 = !DILocation(line: 161, column: 16, scope: !2564)
!2689 = !DILocation(line: 161, column: 23, scope: !2564)
!2690 = !DILocation(line: 175, column: 16, scope: !2564)
!2691 = !DILocation(line: 176, column: 5, scope: !2673)
!2692 = !DILocation(line: 177, column: 5, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2564, file: !348, line: 177, column: 5)
!2694 = !DILocation(line: 177, column: 5, scope: !2564)
!2695 = !DILocation(line: 0, scope: !2564)
!2696 = !DILocation(line: 0, scope: !2585)
!2697 = !DILocation(line: 179, column: 1, scope: !2564)
!2698 = distinct !DISubprogram(name: "dictExpand", scope: !348, file: !348, line: 88, type: !2699, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2701)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!18, !351, !26}
!2701 = !{!2702, !2703, !2704, !2705, !2706, !2707, !2711, !2712}
!2702 = !DILocalVariable(name: "ht", arg: 1, scope: !2698, file: !348, line: 88, type: !351)
!2703 = !DILocalVariable(name: "size", arg: 2, scope: !2698, file: !348, line: 88, type: !26)
!2704 = !DILocalVariable(name: "n", scope: !2698, file: !348, line: 89, type: !352)
!2705 = !DILocalVariable(name: "realsize", scope: !2698, file: !348, line: 90, type: !26)
!2706 = !DILocalVariable(name: "i", scope: !2698, file: !348, line: 90, type: !26)
!2707 = !DILocalVariable(name: "he", scope: !2708, file: !348, line: 107, type: !258)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !348, line: 106, column: 52)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !348, line: 106, column: 5)
!2710 = distinct !DILexicalBlock(scope: !2698, file: !348, line: 106, column: 5)
!2711 = !DILocalVariable(name: "nextHe", scope: !2708, file: !348, line: 107, type: !258)
!2712 = !DILocalVariable(name: "h", scope: !2713, file: !348, line: 114, type: !7)
!2713 = distinct !DILexicalBlock(scope: !2708, file: !348, line: 113, column: 19)
!2714 = !DILocation(line: 88, column: 29, scope: !2698)
!2715 = !DILocation(line: 88, column: 47, scope: !2698)
!2716 = !DILocalVariable(name: "size", arg: 1, scope: !2717, file: !348, line: 306, type: !26)
!2717 = distinct !DISubprogram(name: "_dictNextPower", scope: !348, file: !348, line: 306, type: !2718, isLocal: true, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2720)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!26, !26}
!2720 = !{!2716, !2721}
!2721 = !DILocalVariable(name: "i", scope: !2717, file: !348, line: 307, type: !26)
!2722 = !DILocation(line: 306, column: 51, scope: !2717, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 90, column: 30, scope: !2698)
!2724 = !DILocation(line: 307, column: 19, scope: !2717, inlinedAt: !2723)
!2725 = !DILocation(line: 309, column: 14, scope: !2726, inlinedAt: !2723)
!2726 = distinct !DILexicalBlock(scope: !2717, file: !348, line: 309, column: 9)
!2727 = !DILocation(line: 309, column: 9, scope: !2717, inlinedAt: !2723)
!2728 = !DILocation(line: 311, column: 15, scope: !2729, inlinedAt: !2723)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !348, line: 311, column: 13)
!2730 = distinct !DILexicalBlock(scope: !2717, file: !348, line: 310, column: 14)
!2731 = !DILocation(line: 311, column: 13, scope: !2730, inlinedAt: !2723)
!2732 = !DILocation(line: 313, column: 11, scope: !2730, inlinedAt: !2723)
!2733 = !DILocation(line: 310, column: 5, scope: !2717, inlinedAt: !2723)
!2734 = distinct !{!2734, !2735, !2736}
!2735 = !DILocation(line: 310, column: 5, scope: !2717)
!2736 = !DILocation(line: 314, column: 5, scope: !2717)
!2737 = !DILocation(line: 0, scope: !2729, inlinedAt: !2723)
!2738 = !DILocation(line: 0, scope: !2698)
!2739 = !DILocation(line: 315, column: 1, scope: !2717, inlinedAt: !2723)
!2740 = !DILocation(line: 90, column: 19, scope: !2698)
!2741 = !DILocation(line: 94, column: 13, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2698, file: !348, line: 94, column: 9)
!2743 = !DILocation(line: 94, column: 18, scope: !2742)
!2744 = !DILocation(line: 94, column: 9, scope: !2698)
!2745 = !DILocation(line: 97, column: 23, scope: !2698)
!2746 = !DILocation(line: 97, column: 33, scope: !2698)
!2747 = !DILocation(line: 89, column: 10, scope: !2698)
!2748 = !DILocation(line: 80, column: 28, scope: !362, inlinedAt: !2749)
!2749 = distinct !DILocation(line: 97, column: 5, scope: !2698)
!2750 = !DILocation(line: 80, column: 42, scope: !362, inlinedAt: !2749)
!2751 = !DILocation(line: 80, column: 54, scope: !362, inlinedAt: !2749)
!2752 = !DILocation(line: 65, column: 30, scope: !373, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 81, column: 5, scope: !362, inlinedAt: !2749)
!2754 = !DILocation(line: 70, column: 1, scope: !373, inlinedAt: !2753)
!2755 = !DILocation(line: 84, column: 5, scope: !362, inlinedAt: !2749)
!2756 = !DILocation(line: 99, column: 26, scope: !2698)
!2757 = !DILocation(line: 100, column: 15, scope: !2698)
!2758 = !DILocation(line: 100, column: 13, scope: !2698)
!2759 = !DILocation(line: 105, column: 18, scope: !2698)
!2760 = !DILocation(line: 90, column: 52, scope: !2698)
!2761 = !DILocation(line: 106, column: 10, scope: !2710)
!2762 = !DILocation(line: 106, column: 25, scope: !2709)
!2763 = !DILocation(line: 106, column: 19, scope: !2709)
!2764 = !DILocation(line: 106, column: 30, scope: !2709)
!2765 = !DILocation(line: 106, column: 5, scope: !2710)
!2766 = !DILocation(line: 126, column: 5, scope: !2698)
!2767 = !DILocation(line: 109, column: 17, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2708, file: !348, line: 109, column: 13)
!2769 = !DILocation(line: 109, column: 13, scope: !2768)
!2770 = !DILocation(line: 109, column: 26, scope: !2768)
!2771 = !DILocation(line: 109, column: 13, scope: !2708)
!2772 = !DILocation(line: 0, scope: !2708)
!2773 = !DILocation(line: 107, column: 20, scope: !2708)
!2774 = !DILocation(line: 113, column: 9, scope: !2708)
!2775 = !DILocation(line: 116, column: 26, scope: !2713)
!2776 = !DILocation(line: 107, column: 25, scope: !2708)
!2777 = !DILocation(line: 118, column: 17, scope: !2713)
!2778 = !DILocation(line: 114, column: 26, scope: !2713)
!2779 = !DILocation(line: 119, column: 24, scope: !2713)
!2780 = !DILocation(line: 119, column: 22, scope: !2713)
!2781 = !DILocation(line: 120, column: 24, scope: !2713)
!2782 = !DILocation(line: 121, column: 21, scope: !2713)
!2783 = distinct !{!2783, !2774, !2784}
!2784 = !DILocation(line: 124, column: 9, scope: !2708)
!2785 = !DILocation(line: 125, column: 5, scope: !2709)
!2786 = !DILocation(line: 106, column: 48, scope: !2709)
!2787 = !DILocation(line: 106, column: 5, scope: !2709)
!2788 = distinct !{!2788, !2765, !2789}
!2789 = !DILocation(line: 125, column: 5, scope: !2710)
!2790 = !DILocation(line: 127, column: 14, scope: !2698)
!2791 = !DILocation(line: 127, column: 5, scope: !2698)
!2792 = !DILocation(line: 130, column: 11, scope: !2698)
!2793 = !DILocation(line: 131, column: 5, scope: !2698)
!2794 = !DILocation(line: 0, scope: !2742)
!2795 = !DILocation(line: 132, column: 1, scope: !2698)
