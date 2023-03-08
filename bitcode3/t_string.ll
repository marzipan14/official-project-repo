; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/t_string.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/t_string.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sharedObjectsStruct = type { %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [10 x %struct.redisObject*], [10000 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], i8*, i8* }
%struct.redisObject = type { i32, i32, i8* }
%struct.redisServer = type { i32, i8*, i8*, i8**, i32, i32, i32, %struct.redisDb*, %struct.dict*, %struct.dict*, %struct.aeEventLoop*, i32, i32, i32, i32, i8*, i8*, i32, i32, [41 x i8], i32, i64, i32, %struct.dict*, %struct.dict*, %struct.list*, [2 x i32], i32, i32, [16 x i8*], i32, i8*, i32, [16 x i32], i32, i32, [16 x i32], i32, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.client*, %struct.rax*, i32, i64, [256 x i8], %struct.dict*, i64, i32, i32, i64, i64, i64, i64, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, %struct.list*, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, [3 x %struct.anon], i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, [3 x %struct.clientBufferLimitsConfig], i32, i32, i8*, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list*, i8*, i32, i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, i32, %struct.saveparam*, i32, i8*, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, [2 x i32], %struct.anon.0, %struct.redisOpArray, i8*, i32, i8*, i32, [41 x i8], [41 x i8], i64, i64, i32, i32, i8*, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, %struct.client*, %struct.client*, i32, i32, i64, i64, i64, i32, i32, i8*, i64, i32, i32, i32, i64, i32, i32, i32, i8*, [41 x i8], i64, i32, %struct.dict*, %struct.list*, i32, %struct.list*, i32, i32, i64, i32, i32, i32, i32, i64, i32, [6 x i32], %struct.list*, %struct.list*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, %struct.dict*, %struct.list*, i32, i32, i64, i8*, %struct.clusterState*, i32, i32, i32, i32, i8*, i32, i32, i32, %struct.lua_State*, %struct.client*, %struct.client*, %struct.dict*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.dict*, i8*, i8*, i32, i32, i32, i64, %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_* }
%struct.redisDb = type { %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, i32, i64, %struct.list* }
%struct.aeEventLoop = type { i32, i32, i64, i64, %struct.aeFileEvent*, %struct.aeFiredEvent*, %struct.aeTimeEvent*, i32, i8*, void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)* }
%struct.aeFileEvent = type { i32, void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)*, i8* }
%struct.aeFiredEvent = type { i32, i32 }
%struct.aeTimeEvent = type { i64, i64, i64, i32 (%struct.aeEventLoop*, i64, i8*)*, void (%struct.aeEventLoop*, i8*)*, i8*, %struct.aeTimeEvent*, %struct.aeTimeEvent* }
%struct.rax = type { %struct.raxNode*, i64, i64 }
%struct.raxNode = type { i32, [0 x i8] }
%struct.redisCommand = type { i8*, void (%struct.client*)*, i32, i8*, i32, i32* (%struct.redisCommand*, %struct.redisObject**, i32, i32*)*, i32, i32, i32, i64, i64 }
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

@.str = private unnamed_addr constant [26 x i8] c"invalid expire time in %s\00", align 1
@shared = external dso_local local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@server = external dso_local local_unnamed_addr global %struct.redisServer, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"expire\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"offset is out of range\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"setrange\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"wrong number of arguments for MSET\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"increment or decrement would overflow\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"incrby\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"increment would produce NaN or Infinity\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"incrbyfloat\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"string exceeds maximum allowed size (512MB)\00", align 1

; Function Attrs: noredzone nounwind
define dso_local void @setGenericCommand(%struct.client*, i32, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, i32, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #0 !dbg !59 {
  %9 = alloca i64, align 8
  %10 = bitcast i64* %9 to i8*, !dbg !322
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #4, !dbg !322
  store i64 0, i64* %9, align 8, !dbg !323, !tbaa !324
  %11 = icmp ne %struct.redisObject* %4, null, !dbg !328
  br i1 %11, label %12, label %27, !dbg !330

; <label>:12:                                     ; preds = %8
  %13 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* nonnull %4, i64* nonnull %9, i8* null) #5, !dbg !331
  %14 = icmp eq i32 %13, 0, !dbg !334
  br i1 %14, label %15, label %69, !dbg !335

; <label>:15:                                     ; preds = %12
  %16 = load i64, i64* %9, align 8, !dbg !336, !tbaa !324
  %17 = icmp slt i64 %16, 1, !dbg !338
  br i1 %17, label %18, label %23, !dbg !339

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10, !dbg !340
  %20 = load %struct.redisCommand*, %struct.redisCommand** %19, align 8, !dbg !340, !tbaa !342
  %21 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %20, i64 0, i32 0, !dbg !349
  %22 = load i8*, i8** %21, align 8, !dbg !349, !tbaa !350
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %22) #5, !dbg !352
  br label %69, !dbg !353

; <label>:23:                                     ; preds = %15
  %24 = icmp eq i32 %5, 0, !dbg !354
  br i1 %24, label %25, label %27, !dbg !356

; <label>:25:                                     ; preds = %23
  %26 = mul nsw i64 %16, 1000, !dbg !357
  store i64 %26, i64* %9, align 8, !dbg !357, !tbaa !324
  br label %27, !dbg !358

; <label>:27:                                     ; preds = %23, %25, %8
  %28 = and i32 %1, 1, !dbg !359
  %29 = icmp eq i32 %28, 0, !dbg !359
  br i1 %29, label %35, label %30, !dbg !361

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !362
  %32 = load %struct.redisDb*, %struct.redisDb** %31, align 8, !dbg !362, !tbaa !363
  %33 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %32, %struct.redisObject* %2) #5, !dbg !364
  %34 = icmp eq %struct.redisObject* %33, null, !dbg !365
  br i1 %34, label %35, label %43, !dbg !366

; <label>:35:                                     ; preds = %30, %27
  %36 = and i32 %1, 2, !dbg !367
  %37 = icmp eq i32 %36, 0, !dbg !367
  %38 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !368
  br i1 %37, label %47, label %39, !dbg !369

; <label>:39:                                     ; preds = %35
  %40 = load %struct.redisDb*, %struct.redisDb** %38, align 8, !dbg !370, !tbaa !363
  %41 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %40, %struct.redisObject* %2) #5, !dbg !371
  %42 = icmp eq %struct.redisObject* %41, null, !dbg !372
  br i1 %42, label %43, label %47, !dbg !373

; <label>:43:                                     ; preds = %30, %39
  %44 = icmp eq %struct.redisObject* %7, null, !dbg !374
  %45 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !376
  %46 = select i1 %44, %struct.redisObject* %45, %struct.redisObject* %7, !dbg !374
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %46) #5, !dbg !377
  br label %69, !dbg !378

; <label>:47:                                     ; preds = %35, %39
  %48 = load %struct.redisDb*, %struct.redisDb** %38, align 8, !dbg !379, !tbaa !363
  call void @setKey(%struct.redisDb* %48, %struct.redisObject* %2, %struct.redisObject* %3) #5, !dbg !380
  %49 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !381, !tbaa !382
  %50 = add nsw i64 %49, 1, !dbg !381
  store i64 %50, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !381, !tbaa !382
  %51 = load %struct.redisDb*, %struct.redisDb** %38, align 8, !dbg !388, !tbaa !363
  br i1 %11, label %52, label %62, !dbg !389

; <label>:52:                                     ; preds = %47
  %53 = call i64 @mstime() #5, !dbg !390
  %54 = load i64, i64* %9, align 8, !dbg !392, !tbaa !324
  %55 = add nsw i64 %54, %53, !dbg !393
  call void @setExpire(%struct.client* nonnull %0, %struct.redisDb* %51, %struct.redisObject* %2, i64 %55) #5, !dbg !394
  %56 = load %struct.redisDb*, %struct.redisDb** %38, align 8, !dbg !395, !tbaa !363
  %57 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %56, i64 0, i32 5, !dbg !396
  %58 = load i32, i32* %57, align 8, !dbg !396, !tbaa !397
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.redisObject* %2, i32 %58) #5, !dbg !399
  %59 = load %struct.redisDb*, %struct.redisDb** %38, align 8, !dbg !400, !tbaa !363
  %60 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %59, i64 0, i32 5, !dbg !402
  %61 = load i32, i32* %60, align 8, !dbg !402, !tbaa !397
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.redisObject* %2, i32 %61) #5, !dbg !403
  br label %65, !dbg !403

; <label>:62:                                     ; preds = %47
  %63 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %51, i64 0, i32 5, !dbg !396
  %64 = load i32, i32* %63, align 8, !dbg !396, !tbaa !397
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.redisObject* %2, i32 %64) #5, !dbg !399
  br label %65

; <label>:65:                                     ; preds = %62, %52
  %66 = icmp eq %struct.redisObject* %6, null, !dbg !404
  %67 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !405
  %68 = select i1 %66, %struct.redisObject* %67, %struct.redisObject* %6, !dbg !404
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %68) #5, !dbg !406
  br label %69, !dbg !407

; <label>:69:                                     ; preds = %12, %65, %43, %18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #4, !dbg !407
  ret void, !dbg !407
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @getLongLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyErrorFormat(%struct.client*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyWrite(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @setKey(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @setExpire(%struct.client*, %struct.redisDb*, %struct.redisObject*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @mstime() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @notifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local void @setCommand(%struct.client*) local_unnamed_addr #0 !dbg !408 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !425
  %3 = load i32, i32* %2, align 8, !dbg !425, !tbaa !426
  %4 = icmp sgt i32 %3, 3, !dbg !427
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !428
  %6 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !428, !tbaa !429
  br i1 %4, label %7, label %95, !dbg !430

; <label>:7:                                      ; preds = %1
  %8 = add nsw i32 %3, -1
  br label %9, !dbg !431

; <label>:9:                                      ; preds = %7, %88
  %10 = phi i32 [ %93, %88 ], [ 3, %7 ]
  %11 = phi %struct.redisObject* [ %91, %88 ], [ null, %7 ]
  %12 = phi i32 [ %90, %88 ], [ 0, %7 ]
  %13 = phi i32 [ %89, %88 ], [ 0, %7 ]
  %14 = sext i32 %10 to i64, !dbg !431
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 %14, !dbg !431
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !431, !tbaa !432
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %16, i64 0, i32 2, !dbg !433
  %18 = load i8*, i8** %17, align 8, !dbg !433, !tbaa !434
  %19 = icmp eq i32 %10, %8, !dbg !437
  br i1 %19, label %25, label %20, !dbg !438

; <label>:20:                                     ; preds = %9
  %21 = add nsw i32 %10, 1, !dbg !439
  %22 = sext i32 %21 to i64, !dbg !440
  %23 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 %22, !dbg !440
  %24 = load %struct.redisObject*, %struct.redisObject** %23, align 8, !dbg !440, !tbaa !432
  br label %25, !dbg !438

; <label>:25:                                     ; preds = %9, %20
  %26 = phi %struct.redisObject* [ %24, %20 ], [ null, %9 ], !dbg !438
  %27 = load i8, i8* %18, align 1, !dbg !442, !tbaa !444
  switch i8 %27, label %86 [
    i8 110, label %28
    i8 78, label %28
    i8 120, label %41
    i8 88, label %41
    i8 101, label %54
    i8 69, label %54
    i8 112, label %71
    i8 80, label %71
  ], !dbg !445

; <label>:28:                                     ; preds = %25, %25
  %29 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !446
  %30 = load i8, i8* %29, align 1, !dbg !446, !tbaa !444
  switch i8 %30, label %40 [
    i8 120, label %31
    i8 88, label %31
  ], !dbg !447

; <label>:31:                                     ; preds = %28, %28
  %32 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !448
  %33 = load i8, i8* %32, align 1, !dbg !448, !tbaa !444
  %34 = icmp eq i8 %33, 0, !dbg !449
  %35 = and i32 %12, 2, !dbg !450
  %36 = icmp eq i32 %35, 0, !dbg !450
  %37 = and i1 %36, %34, !dbg !451
  br i1 %37, label %38, label %40, !dbg !451

; <label>:38:                                     ; preds = %31
  %39 = or i32 %12, 1, !dbg !452
  br label %88, !dbg !454

; <label>:40:                                     ; preds = %28, %31
  switch i8 %27, label %86 [
    i8 80, label %71
    i8 88, label %41
    i8 101, label %54
  ], !dbg !455

; <label>:41:                                     ; preds = %25, %25, %40
  %42 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !457
  %43 = load i8, i8* %42, align 1, !dbg !457, !tbaa !444
  switch i8 %43, label %53 [
    i8 120, label %44
    i8 88, label %44
  ], !dbg !458

; <label>:44:                                     ; preds = %41, %41
  %45 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !459
  %46 = load i8, i8* %45, align 1, !dbg !459, !tbaa !444
  %47 = icmp eq i8 %46, 0, !dbg !460
  %48 = and i32 %12, 1, !dbg !461
  %49 = icmp eq i32 %48, 0, !dbg !461
  %50 = and i1 %49, %47, !dbg !462
  br i1 %50, label %51, label %53, !dbg !462

; <label>:51:                                     ; preds = %44
  %52 = or i32 %12, 2, !dbg !463
  br label %88, !dbg !465

; <label>:53:                                     ; preds = %41, %44
  switch i8 %27, label %86 [
    i8 101, label %54
    i8 112, label %71
  ], !dbg !466

; <label>:54:                                     ; preds = %25, %25, %40, %53
  %55 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !468
  %56 = load i8, i8* %55, align 1, !dbg !468, !tbaa !444
  switch i8 %56, label %69 [
    i8 120, label %57
    i8 88, label %57
  ], !dbg !469

; <label>:57:                                     ; preds = %54, %54
  %58 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !470
  %59 = load i8, i8* %58, align 1, !dbg !470, !tbaa !444
  %60 = icmp eq i8 %59, 0, !dbg !471
  br i1 %60, label %61, label %69, !dbg !472

; <label>:61:                                     ; preds = %57
  %62 = and i32 %12, 8, !dbg !473
  %63 = icmp eq i32 %62, 0, !dbg !473
  %64 = icmp ne %struct.redisObject* %26, null, !dbg !474
  %65 = and i1 %63, %64, !dbg !475
  br i1 %65, label %66, label %69, !dbg !475

; <label>:66:                                     ; preds = %61
  %67 = or i32 %12, 4, !dbg !476
  %68 = add nsw i32 %10, 1, !dbg !478
  br label %88, !dbg !479

; <label>:69:                                     ; preds = %54, %61, %57
  %70 = icmp eq i8 %27, 80, !dbg !480
  br i1 %70, label %71, label %86, !dbg !480

; <label>:71:                                     ; preds = %69, %53, %40, %25, %25
  %72 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !482
  %73 = load i8, i8* %72, align 1, !dbg !482, !tbaa !444
  switch i8 %73, label %86 [
    i8 120, label %74
    i8 88, label %74
  ], !dbg !483

; <label>:74:                                     ; preds = %71, %71
  %75 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !484
  %76 = load i8, i8* %75, align 1, !dbg !484, !tbaa !444
  %77 = icmp eq i8 %76, 0, !dbg !485
  br i1 %77, label %78, label %86, !dbg !486

; <label>:78:                                     ; preds = %74
  %79 = and i32 %12, 4, !dbg !487
  %80 = icmp eq i32 %79, 0, !dbg !487
  %81 = icmp ne %struct.redisObject* %26, null, !dbg !488
  %82 = and i1 %80, %81, !dbg !489
  br i1 %82, label %83, label %86, !dbg !489

; <label>:83:                                     ; preds = %78
  %84 = or i32 %12, 8, !dbg !490
  %85 = add nsw i32 %10, 1, !dbg !492
  br label %88

; <label>:86:                                     ; preds = %69, %25, %40, %53, %74, %78, %71
  %87 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !493, !tbaa !495
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %87) #5, !dbg !497
  br label %109

; <label>:88:                                     ; preds = %51, %83, %66, %38
  %89 = phi i32 [ %13, %38 ], [ %13, %51 ], [ 1, %83 ], [ 0, %66 ]
  %90 = phi i32 [ %39, %38 ], [ %52, %51 ], [ %84, %83 ], [ %67, %66 ]
  %91 = phi %struct.redisObject* [ %11, %38 ], [ %11, %51 ], [ %26, %83 ], [ %26, %66 ]
  %92 = phi i32 [ %10, %38 ], [ %10, %51 ], [ %85, %83 ], [ %68, %66 ]
  %93 = add nsw i32 %92, 1, !dbg !498
  %94 = icmp slt i32 %93, %3, !dbg !427
  br i1 %94, label %9, label %95, !dbg !430, !llvm.loop !499

; <label>:95:                                     ; preds = %88, %1
  %96 = phi i32 [ 0, %1 ], [ %89, %88 ], !dbg !501
  %97 = phi i32 [ 0, %1 ], [ %90, %88 ], !dbg !501
  %98 = phi %struct.redisObject* [ null, %1 ], [ %91, %88 ], !dbg !501
  %99 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 2, !dbg !502
  %100 = load %struct.redisObject*, %struct.redisObject** %99, align 8, !dbg !502, !tbaa !432
  %101 = tail call %struct.redisObject* @tryObjectEncoding(%struct.redisObject* %100) #5, !dbg !503
  %102 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !504, !tbaa !429
  %103 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %102, i64 2, !dbg !505
  store %struct.redisObject* %101, %struct.redisObject** %103, align 8, !dbg !506, !tbaa !432
  %104 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !507, !tbaa !429
  %105 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %104, i64 1, !dbg !508
  %106 = load %struct.redisObject*, %struct.redisObject** %105, align 8, !dbg !508, !tbaa !432
  %107 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %104, i64 2, !dbg !509
  %108 = load %struct.redisObject*, %struct.redisObject** %107, align 8, !dbg !509, !tbaa !432
  tail call void @setGenericCommand(%struct.client* nonnull %0, i32 %97, %struct.redisObject* %106, %struct.redisObject* %108, %struct.redisObject* %98, i32 %96, %struct.redisObject* null, %struct.redisObject* null) #6, !dbg !510
  br label %109, !dbg !511

; <label>:109:                                    ; preds = %86, %95
  ret void, !dbg !511
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @tryObjectEncoding(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @setnxCommand(%struct.client*) local_unnamed_addr #0 !dbg !512 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !516
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !516, !tbaa !429
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 2, !dbg !517
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !517, !tbaa !432
  %6 = tail call %struct.redisObject* @tryObjectEncoding(%struct.redisObject* %5) #5, !dbg !518
  %7 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !519, !tbaa !429
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 2, !dbg !520
  store %struct.redisObject* %6, %struct.redisObject** %8, align 8, !dbg !521, !tbaa !432
  %9 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !522, !tbaa !429
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 1, !dbg !523
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !523, !tbaa !432
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 2, !dbg !524
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !524, !tbaa !432
  %14 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !525, !tbaa !526
  %15 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !527, !tbaa !528
  tail call void @setGenericCommand(%struct.client* %0, i32 1, %struct.redisObject* %11, %struct.redisObject* %13, %struct.redisObject* null, i32 0, %struct.redisObject* %14, %struct.redisObject* %15) #6, !dbg !529
  ret void, !dbg !530
}

; Function Attrs: noredzone nounwind
define dso_local void @setexCommand(%struct.client*) local_unnamed_addr #0 !dbg !531 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !535
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !535, !tbaa !429
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 3, !dbg !536
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !536, !tbaa !432
  %6 = tail call %struct.redisObject* @tryObjectEncoding(%struct.redisObject* %5) #5, !dbg !537
  %7 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !538, !tbaa !429
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 3, !dbg !539
  store %struct.redisObject* %6, %struct.redisObject** %8, align 8, !dbg !540, !tbaa !432
  %9 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !541, !tbaa !429
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 1, !dbg !542
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !542, !tbaa !432
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 3, !dbg !543
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !543, !tbaa !432
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 2, !dbg !544
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !544, !tbaa !432
  tail call void @setGenericCommand(%struct.client* %0, i32 0, %struct.redisObject* %11, %struct.redisObject* %13, %struct.redisObject* %15, i32 0, %struct.redisObject* null, %struct.redisObject* null) #6, !dbg !545
  ret void, !dbg !546
}

; Function Attrs: noredzone nounwind
define dso_local void @psetexCommand(%struct.client*) local_unnamed_addr #0 !dbg !547 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !551
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !551, !tbaa !429
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 3, !dbg !552
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !552, !tbaa !432
  %6 = tail call %struct.redisObject* @tryObjectEncoding(%struct.redisObject* %5) #5, !dbg !553
  %7 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !554, !tbaa !429
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 3, !dbg !555
  store %struct.redisObject* %6, %struct.redisObject** %8, align 8, !dbg !556, !tbaa !432
  %9 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !557, !tbaa !429
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 1, !dbg !558
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !558, !tbaa !432
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 3, !dbg !559
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !559, !tbaa !432
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 2, !dbg !560
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !560, !tbaa !432
  tail call void @setGenericCommand(%struct.client* %0, i32 0, %struct.redisObject* %11, %struct.redisObject* %13, %struct.redisObject* %15, i32 1, %struct.redisObject* null, %struct.redisObject* null) #6, !dbg !561
  ret void, !dbg !562
}

; Function Attrs: noredzone nounwind
define dso_local i32 @getGenericCommand(%struct.client*) local_unnamed_addr #0 !dbg !563 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !570
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !570, !tbaa !429
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !572
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !572, !tbaa !432
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !573, !tbaa !574
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #5, !dbg !575
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !577
  br i1 %8, label %17, label %9, !dbg !578

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 0, !dbg !579
  %11 = load i32, i32* %10, align 8, !dbg !579
  %12 = and i32 %11, 15, !dbg !579
  %13 = icmp eq i32 %12, 0, !dbg !581
  br i1 %13, label %16, label %14, !dbg !582

; <label>:14:                                     ; preds = %9
  %15 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !583, !tbaa !585
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %15) #5, !dbg !586
  br label %17, !dbg !587

; <label>:16:                                     ; preds = %9
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* nonnull %7) #5, !dbg !588
  br label %17, !dbg !590

; <label>:17:                                     ; preds = %1, %16, %14
  %18 = phi i32 [ -1, %14 ], [ 0, %16 ], [ 0, %1 ], !dbg !591
  ret i32 %18, !dbg !592
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyReadOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulk(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @getCommand(%struct.client*) local_unnamed_addr #0 !dbg !593 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !599
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !599, !tbaa !429
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !600
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !600, !tbaa !432
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !601, !tbaa !574
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #5, !dbg !602
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !604
  br i1 %8, label %17, label %9, !dbg !605

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 0, !dbg !606
  %11 = load i32, i32* %10, align 8, !dbg !606
  %12 = and i32 %11, 15, !dbg !606
  %13 = icmp eq i32 %12, 0, !dbg !607
  br i1 %13, label %16, label %14, !dbg !608

; <label>:14:                                     ; preds = %9
  %15 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !609, !tbaa !585
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %15) #5, !dbg !610
  br label %17, !dbg !611

; <label>:16:                                     ; preds = %9
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* nonnull %7) #5, !dbg !612
  br label %17, !dbg !613

; <label>:17:                                     ; preds = %1, %14, %16
  ret void, !dbg !614
}

; Function Attrs: noredzone nounwind
define dso_local void @getsetCommand(%struct.client*) local_unnamed_addr #0 !dbg !615 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !622
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !622, !tbaa !429
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !623
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !623, !tbaa !432
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !624, !tbaa !574
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #5, !dbg !625
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !627
  br i1 %8, label %17, label %9, !dbg !628

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 0, !dbg !629
  %11 = load i32, i32* %10, align 8, !dbg !629
  %12 = and i32 %11, 15, !dbg !629
  %13 = icmp eq i32 %12, 0, !dbg !630
  br i1 %13, label %14, label %15, !dbg !631

; <label>:14:                                     ; preds = %9
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* nonnull %7) #5, !dbg !632
  br label %17, !dbg !633

; <label>:15:                                     ; preds = %9
  %16 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !634, !tbaa !585
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %16) #5, !dbg !635
  br label %39, !dbg !636

; <label>:17:                                     ; preds = %14, %1
  %18 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !637, !tbaa !429
  %19 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %18, i64 2, !dbg !638
  %20 = load %struct.redisObject*, %struct.redisObject** %19, align 8, !dbg !638, !tbaa !432
  %21 = tail call %struct.redisObject* @tryObjectEncoding(%struct.redisObject* %20) #5, !dbg !639
  %22 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !640, !tbaa !429
  %23 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %22, i64 2, !dbg !641
  store %struct.redisObject* %21, %struct.redisObject** %23, align 8, !dbg !642, !tbaa !432
  %24 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !643
  %25 = load %struct.redisDb*, %struct.redisDb** %24, align 8, !dbg !643, !tbaa !363
  %26 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !644, !tbaa !429
  %27 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 1, !dbg !645
  %28 = load %struct.redisObject*, %struct.redisObject** %27, align 8, !dbg !645, !tbaa !432
  %29 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 2, !dbg !646
  %30 = load %struct.redisObject*, %struct.redisObject** %29, align 8, !dbg !646, !tbaa !432
  tail call void @setKey(%struct.redisDb* %25, %struct.redisObject* %28, %struct.redisObject* %30) #5, !dbg !647
  %31 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !648, !tbaa !429
  %32 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %31, i64 1, !dbg !649
  %33 = load %struct.redisObject*, %struct.redisObject** %32, align 8, !dbg !649, !tbaa !432
  %34 = load %struct.redisDb*, %struct.redisDb** %24, align 8, !dbg !650, !tbaa !363
  %35 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %34, i64 0, i32 5, !dbg !651
  %36 = load i32, i32* %35, align 8, !dbg !651, !tbaa !397
  tail call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.redisObject* %33, i32 %36) #5, !dbg !652
  %37 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !653, !tbaa !382
  %38 = add nsw i64 %37, 1, !dbg !653
  store i64 %38, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !653, !tbaa !382
  br label %39, !dbg !654

; <label>:39:                                     ; preds = %15, %17
  ret void, !dbg !654
}

; Function Attrs: noredzone nounwind
define dso_local void @setrangeCommand(%struct.client*) local_unnamed_addr #0 !dbg !655 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !665
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4, !dbg !665
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !666
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !666, !tbaa !429
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 3, !dbg !667
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !667, !tbaa !432
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !668
  %9 = load i8*, i8** %8, align 8, !dbg !668, !tbaa !434
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 2, !dbg !670
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !670, !tbaa !432
  %12 = call i32 @getLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %11, i64* nonnull %2, i8* null) #5, !dbg !673
  %13 = icmp eq i32 %12, 0, !dbg !674
  br i1 %13, label %14, label %309, !dbg !675

; <label>:14:                                     ; preds = %1
  %15 = load i64, i64* %2, align 8, !dbg !676, !tbaa !678
  %16 = icmp slt i64 %15, 0, !dbg !679
  br i1 %16, label %17, label %18, !dbg !680

; <label>:17:                                     ; preds = %14
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !681
  br label %309, !dbg !683

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !684
  %20 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !684, !tbaa !363
  %21 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !685, !tbaa !429
  %22 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %21, i64 1, !dbg !686
  %23 = load %struct.redisObject*, %struct.redisObject** %22, align 8, !dbg !686, !tbaa !432
  %24 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %20, %struct.redisObject* %23) #5, !dbg !687
  %25 = icmp eq %struct.redisObject* %24, null, !dbg !689
  br i1 %25, label %26, label %115, !dbg !690

; <label>:26:                                     ; preds = %18
  %27 = getelementptr inbounds i8, i8* %9, i64 -1, !dbg !704
  %28 = load i8, i8* %27, align 1, !dbg !704, !tbaa !444
  %29 = trunc i8 %28 to i3, !dbg !706
  switch i3 %29, label %54 [
    i3 0, label %30
    i3 1, label %33
    i3 2, label %37
    i3 3, label %42
    i3 -4, label %47
  ], !dbg !706

; <label>:30:                                     ; preds = %26
  %31 = lshr i8 %28, 3, !dbg !707
  %32 = zext i8 %31 to i64, !dbg !707
  br label %51, !dbg !709

; <label>:33:                                     ; preds = %26
  %34 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !710
  %35 = load i8, i8* %34, align 1, !dbg !711, !tbaa !444
  %36 = zext i8 %35 to i64, !dbg !710
  br label %51, !dbg !712

; <label>:37:                                     ; preds = %26
  %38 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !713
  %39 = bitcast i8* %38 to i16*, !dbg !714
  %40 = load i16, i16* %39, align 1, !dbg !714, !tbaa !715
  %41 = zext i16 %40 to i64, !dbg !713
  br label %51, !dbg !717

; <label>:42:                                     ; preds = %26
  %43 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !718
  %44 = bitcast i8* %43 to i32*, !dbg !719
  %45 = load i32, i32* %44, align 1, !dbg !719, !tbaa !720
  %46 = zext i32 %45 to i64, !dbg !718
  br label %51, !dbg !721

; <label>:47:                                     ; preds = %26
  %48 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !722
  %49 = bitcast i8* %48 to i64*, !dbg !723
  %50 = load i64, i64* %49, align 1, !dbg !723, !tbaa !678
  br label %51, !dbg !724

; <label>:51:                                     ; preds = %30, %33, %37, %42, %47
  %52 = phi i64 [ %50, %47 ], [ %46, %42 ], [ %41, %37 ], [ %36, %33 ], [ %32, %30 ], !dbg !725
  %53 = icmp eq i64 %52, 0, !dbg !726
  br i1 %53, label %54, label %56, !dbg !727

; <label>:54:                                     ; preds = %26, %51
  %55 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !728, !tbaa !528
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %55) #5, !dbg !730
  br label %309, !dbg !731

; <label>:56:                                     ; preds = %51
  %57 = load i64, i64* %2, align 8, !dbg !732, !tbaa !678
  switch i3 %29, label %79 [
    i3 0, label %58
    i3 1, label %61
    i3 2, label %65
    i3 3, label %70
    i3 -4, label %75
  ], !dbg !737

; <label>:58:                                     ; preds = %56
  %59 = lshr i8 %28, 3, !dbg !738
  %60 = zext i8 %59 to i64, !dbg !738
  br label %79, !dbg !739

; <label>:61:                                     ; preds = %56
  %62 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !740
  %63 = load i8, i8* %62, align 1, !dbg !741, !tbaa !444
  %64 = zext i8 %63 to i64, !dbg !740
  br label %79, !dbg !742

; <label>:65:                                     ; preds = %56
  %66 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !743
  %67 = bitcast i8* %66 to i16*, !dbg !744
  %68 = load i16, i16* %67, align 1, !dbg !744, !tbaa !715
  %69 = zext i16 %68 to i64, !dbg !743
  br label %79, !dbg !745

; <label>:70:                                     ; preds = %56
  %71 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !746
  %72 = bitcast i8* %71 to i32*, !dbg !747
  %73 = load i32, i32* %72, align 1, !dbg !747, !tbaa !720
  %74 = zext i32 %73 to i64, !dbg !746
  br label %79, !dbg !748

; <label>:75:                                     ; preds = %56
  %76 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !749
  %77 = bitcast i8* %76 to i64*, !dbg !750
  %78 = load i64, i64* %77, align 1, !dbg !750, !tbaa !678
  br label %79, !dbg !751

; <label>:79:                                     ; preds = %56, %58, %61, %65, %70, %75
  %80 = phi i64 [ %78, %75 ], [ %74, %70 ], [ %69, %65 ], [ %64, %61 ], [ %60, %58 ], [ 0, %56 ], !dbg !752
  %81 = add i64 %80, %57, !dbg !753
  %82 = icmp sgt i64 %81, 536870912, !dbg !763
  br i1 %82, label %83, label %84, !dbg !765

; <label>:83:                                     ; preds = %79
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0)) #5, !dbg !766
  br label %309, !dbg !768

; <label>:84:                                     ; preds = %79
  switch i3 %29, label %106 [
    i3 0, label %85
    i3 1, label %88
    i3 2, label %92
    i3 3, label %97
    i3 -4, label %102
  ], !dbg !772

; <label>:85:                                     ; preds = %84
  %86 = lshr i8 %28, 3, !dbg !773
  %87 = zext i8 %86 to i64, !dbg !773
  br label %106, !dbg !774

; <label>:88:                                     ; preds = %84
  %89 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !775
  %90 = load i8, i8* %89, align 1, !dbg !776, !tbaa !444
  %91 = zext i8 %90 to i64, !dbg !775
  br label %106, !dbg !777

; <label>:92:                                     ; preds = %84
  %93 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !778
  %94 = bitcast i8* %93 to i16*, !dbg !779
  %95 = load i16, i16* %94, align 1, !dbg !779, !tbaa !715
  %96 = zext i16 %95 to i64, !dbg !778
  br label %106, !dbg !780

; <label>:97:                                     ; preds = %84
  %98 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !781
  %99 = bitcast i8* %98 to i32*, !dbg !782
  %100 = load i32, i32* %99, align 1, !dbg !782, !tbaa !720
  %101 = zext i32 %100 to i64, !dbg !781
  br label %106, !dbg !783

; <label>:102:                                    ; preds = %84
  %103 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !784
  %104 = bitcast i8* %103 to i64*, !dbg !785
  %105 = load i64, i64* %104, align 1, !dbg !785, !tbaa !678
  br label %106, !dbg !786

; <label>:106:                                    ; preds = %84, %85, %88, %92, %97, %102
  %107 = phi i64 [ %105, %102 ], [ %101, %97 ], [ %96, %92 ], [ %91, %88 ], [ %87, %85 ], [ 0, %84 ], !dbg !787
  %108 = add i64 %107, %57, !dbg !788
  %109 = call i8* @sdsnewlen(i8* null, i64 %108) #5, !dbg !789
  %110 = call %struct.redisObject* @createObject(i32 0, i8* %109) #5, !dbg !790
  %111 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !791, !tbaa !363
  %112 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !792, !tbaa !429
  %113 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %112, i64 1, !dbg !793
  %114 = load %struct.redisObject*, %struct.redisObject** %113, align 8, !dbg !793, !tbaa !432
  call void @dbAdd(%struct.redisDb* %111, %struct.redisObject* %114, %struct.redisObject* %110) #5, !dbg !794
  br label %182, !dbg !795

; <label>:115:                                    ; preds = %18
  %116 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %24, i32 0) #5, !dbg !796
  %117 = icmp eq i32 %116, 0, !dbg !796
  br i1 %117, label %118, label %309, !dbg !798

; <label>:118:                                    ; preds = %115
  %119 = call i64 @stringObjectLen(%struct.redisObject* nonnull %24) #5, !dbg !799
  %120 = getelementptr inbounds i8, i8* %9, i64 -1, !dbg !804
  %121 = load i8, i8* %120, align 1, !dbg !804, !tbaa !444
  %122 = trunc i8 %121 to i3, !dbg !806
  switch i3 %122, label %147 [
    i3 0, label %123
    i3 1, label %126
    i3 2, label %130
    i3 3, label %135
    i3 -4, label %140
  ], !dbg !806

; <label>:123:                                    ; preds = %118
  %124 = lshr i8 %121, 3, !dbg !807
  %125 = zext i8 %124 to i64, !dbg !807
  br label %144, !dbg !808

; <label>:126:                                    ; preds = %118
  %127 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !809
  %128 = load i8, i8* %127, align 1, !dbg !810, !tbaa !444
  %129 = zext i8 %128 to i64, !dbg !809
  br label %144, !dbg !811

; <label>:130:                                    ; preds = %118
  %131 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !812
  %132 = bitcast i8* %131 to i16*, !dbg !813
  %133 = load i16, i16* %132, align 1, !dbg !813, !tbaa !715
  %134 = zext i16 %133 to i64, !dbg !812
  br label %144, !dbg !814

; <label>:135:                                    ; preds = %118
  %136 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !815
  %137 = bitcast i8* %136 to i32*, !dbg !816
  %138 = load i32, i32* %137, align 1, !dbg !816, !tbaa !720
  %139 = zext i32 %138 to i64, !dbg !815
  br label %144, !dbg !817

; <label>:140:                                    ; preds = %118
  %141 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !818
  %142 = bitcast i8* %141 to i64*, !dbg !819
  %143 = load i64, i64* %142, align 1, !dbg !819, !tbaa !678
  br label %144, !dbg !820

; <label>:144:                                    ; preds = %123, %126, %130, %135, %140
  %145 = phi i64 [ %143, %140 ], [ %139, %135 ], [ %134, %130 ], [ %129, %126 ], [ %125, %123 ], !dbg !821
  %146 = icmp eq i64 %145, 0, !dbg !822
  br i1 %146, label %147, label %148, !dbg !823

; <label>:147:                                    ; preds = %118, %144
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %119) #5, !dbg !824
  br label %309, !dbg !826

; <label>:148:                                    ; preds = %144
  %149 = load i64, i64* %2, align 8, !dbg !827, !tbaa !678
  switch i3 %122, label %171 [
    i3 0, label %150
    i3 1, label %153
    i3 2, label %157
    i3 3, label %162
    i3 -4, label %167
  ], !dbg !832

; <label>:150:                                    ; preds = %148
  %151 = lshr i8 %121, 3, !dbg !833
  %152 = zext i8 %151 to i64, !dbg !833
  br label %171, !dbg !834

; <label>:153:                                    ; preds = %148
  %154 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !835
  %155 = load i8, i8* %154, align 1, !dbg !836, !tbaa !444
  %156 = zext i8 %155 to i64, !dbg !835
  br label %171, !dbg !837

; <label>:157:                                    ; preds = %148
  %158 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !838
  %159 = bitcast i8* %158 to i16*, !dbg !839
  %160 = load i16, i16* %159, align 1, !dbg !839, !tbaa !715
  %161 = zext i16 %160 to i64, !dbg !838
  br label %171, !dbg !840

; <label>:162:                                    ; preds = %148
  %163 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !841
  %164 = bitcast i8* %163 to i32*, !dbg !842
  %165 = load i32, i32* %164, align 1, !dbg !842, !tbaa !720
  %166 = zext i32 %165 to i64, !dbg !841
  br label %171, !dbg !843

; <label>:167:                                    ; preds = %148
  %168 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !844
  %169 = bitcast i8* %168 to i64*, !dbg !845
  %170 = load i64, i64* %169, align 1, !dbg !845, !tbaa !678
  br label %171, !dbg !846

; <label>:171:                                    ; preds = %148, %150, %153, %157, %162, %167
  %172 = phi i64 [ %170, %167 ], [ %166, %162 ], [ %161, %157 ], [ %156, %153 ], [ %152, %150 ], [ 0, %148 ], !dbg !847
  %173 = add i64 %172, %149, !dbg !848
  %174 = icmp sgt i64 %173, 536870912, !dbg !852
  br i1 %174, label %175, label %176, !dbg !853

; <label>:175:                                    ; preds = %171
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0)) #5, !dbg !854
  br label %309, !dbg !855

; <label>:176:                                    ; preds = %171
  %177 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !856, !tbaa !363
  %178 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !857, !tbaa !429
  %179 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %178, i64 1, !dbg !858
  %180 = load %struct.redisObject*, %struct.redisObject** %179, align 8, !dbg !858, !tbaa !432
  %181 = call %struct.redisObject* @dbUnshareStringValue(%struct.redisDb* %177, %struct.redisObject* %180, %struct.redisObject* nonnull %24) #5, !dbg !859
  br label %182

; <label>:182:                                    ; preds = %176, %106
  %183 = phi i8* [ %120, %176 ], [ %27, %106 ], !dbg !860
  %184 = phi %struct.redisObject* [ %181, %176 ], [ %110, %106 ], !dbg !863
  %185 = load i8, i8* %183, align 1, !dbg !860, !tbaa !444
  %186 = trunc i8 %185 to i3, !dbg !866
  switch i3 %186, label %280 [
    i3 0, label %187
    i3 1, label %190
    i3 2, label %194
    i3 3, label %199
    i3 -4, label %204
  ], !dbg !866

; <label>:187:                                    ; preds = %182
  %188 = lshr i8 %185, 3, !dbg !867
  %189 = zext i8 %188 to i64, !dbg !867
  br label %208, !dbg !868

; <label>:190:                                    ; preds = %182
  %191 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !869
  %192 = load i8, i8* %191, align 1, !dbg !870, !tbaa !444
  %193 = zext i8 %192 to i64, !dbg !869
  br label %208, !dbg !871

; <label>:194:                                    ; preds = %182
  %195 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !872
  %196 = bitcast i8* %195 to i16*, !dbg !873
  %197 = load i16, i16* %196, align 1, !dbg !873, !tbaa !715
  %198 = zext i16 %197 to i64, !dbg !872
  br label %208, !dbg !874

; <label>:199:                                    ; preds = %182
  %200 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !875
  %201 = bitcast i8* %200 to i32*, !dbg !876
  %202 = load i32, i32* %201, align 1, !dbg !876, !tbaa !720
  %203 = zext i32 %202 to i64, !dbg !875
  br label %208, !dbg !877

; <label>:204:                                    ; preds = %182
  %205 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !878
  %206 = bitcast i8* %205 to i64*, !dbg !879
  %207 = load i64, i64* %206, align 1, !dbg !879, !tbaa !678
  br label %208, !dbg !880

; <label>:208:                                    ; preds = %187, %190, %194, %199, %204
  %209 = phi i64 [ %207, %204 ], [ %203, %199 ], [ %198, %194 ], [ %193, %190 ], [ %189, %187 ], !dbg !881
  %210 = icmp eq i64 %209, 0, !dbg !882
  br i1 %210, label %280, label %211, !dbg !883

; <label>:211:                                    ; preds = %208
  %212 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %184, i64 0, i32 2, !dbg !884
  %213 = load i8*, i8** %212, align 8, !dbg !884, !tbaa !434
  %214 = load i64, i64* %2, align 8, !dbg !886, !tbaa !678
  switch i3 %186, label %236 [
    i3 0, label %215
    i3 1, label %218
    i3 2, label %222
    i3 3, label %227
    i3 -4, label %232
  ], !dbg !890

; <label>:215:                                    ; preds = %211
  %216 = lshr i8 %185, 3, !dbg !891
  %217 = zext i8 %216 to i64, !dbg !891
  br label %236, !dbg !892

; <label>:218:                                    ; preds = %211
  %219 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !893
  %220 = load i8, i8* %219, align 1, !dbg !894, !tbaa !444
  %221 = zext i8 %220 to i64, !dbg !893
  br label %236, !dbg !895

; <label>:222:                                    ; preds = %211
  %223 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !896
  %224 = bitcast i8* %223 to i16*, !dbg !897
  %225 = load i16, i16* %224, align 1, !dbg !897, !tbaa !715
  %226 = zext i16 %225 to i64, !dbg !896
  br label %236, !dbg !898

; <label>:227:                                    ; preds = %211
  %228 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !899
  %229 = bitcast i8* %228 to i32*, !dbg !900
  %230 = load i32, i32* %229, align 1, !dbg !900, !tbaa !720
  %231 = zext i32 %230 to i64, !dbg !899
  br label %236, !dbg !901

; <label>:232:                                    ; preds = %211
  %233 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !902
  %234 = bitcast i8* %233 to i64*, !dbg !903
  %235 = load i64, i64* %234, align 1, !dbg !903, !tbaa !678
  br label %236, !dbg !904

; <label>:236:                                    ; preds = %211, %215, %218, %222, %227, %232
  %237 = phi i64 [ %235, %232 ], [ %231, %227 ], [ %226, %222 ], [ %221, %218 ], [ %217, %215 ], [ 0, %211 ], !dbg !905
  %238 = add i64 %237, %214, !dbg !906
  %239 = call i8* @sdsgrowzero(i8* %213, i64 %238) #5, !dbg !907
  store i8* %239, i8** %212, align 8, !dbg !908, !tbaa !434
  %240 = load i64, i64* %2, align 8, !dbg !909, !tbaa !678
  %241 = getelementptr inbounds i8, i8* %239, i64 %240, !dbg !910
  %242 = load i8, i8* %183, align 1, !dbg !913, !tbaa !444
  %243 = trunc i8 %242 to i3, !dbg !915
  switch i3 %243, label %265 [
    i3 0, label %244
    i3 1, label %247
    i3 2, label %251
    i3 3, label %256
    i3 -4, label %261
  ], !dbg !915

; <label>:244:                                    ; preds = %236
  %245 = lshr i8 %242, 3, !dbg !916
  %246 = zext i8 %245 to i64, !dbg !916
  br label %265, !dbg !917

; <label>:247:                                    ; preds = %236
  %248 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !918
  %249 = load i8, i8* %248, align 1, !dbg !919, !tbaa !444
  %250 = zext i8 %249 to i64, !dbg !918
  br label %265, !dbg !920

; <label>:251:                                    ; preds = %236
  %252 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !921
  %253 = bitcast i8* %252 to i16*, !dbg !922
  %254 = load i16, i16* %253, align 1, !dbg !922, !tbaa !715
  %255 = zext i16 %254 to i64, !dbg !921
  br label %265, !dbg !923

; <label>:256:                                    ; preds = %236
  %257 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !924
  %258 = bitcast i8* %257 to i32*, !dbg !925
  %259 = load i32, i32* %258, align 1, !dbg !925, !tbaa !720
  %260 = zext i32 %259 to i64, !dbg !924
  br label %265, !dbg !926

; <label>:261:                                    ; preds = %236
  %262 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !927
  %263 = bitcast i8* %262 to i64*, !dbg !928
  %264 = load i64, i64* %263, align 1, !dbg !928, !tbaa !678
  br label %265, !dbg !929

; <label>:265:                                    ; preds = %236, %244, %247, %251, %256, %261
  %266 = phi i64 [ %264, %261 ], [ %260, %256 ], [ %255, %251 ], [ %250, %247 ], [ %246, %244 ], [ 0, %236 ], !dbg !930
  %267 = call i8* @memcpy(i8* %241, i8* nonnull %9, i64 %266) #5, !dbg !931
  %268 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !932, !tbaa !363
  %269 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !933, !tbaa !429
  %270 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %269, i64 1, !dbg !934
  %271 = load %struct.redisObject*, %struct.redisObject** %270, align 8, !dbg !934, !tbaa !432
  call void @signalModifiedKey(%struct.redisDb* %268, %struct.redisObject* %271) #5, !dbg !935
  %272 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !936, !tbaa !429
  %273 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %272, i64 1, !dbg !937
  %274 = load %struct.redisObject*, %struct.redisObject** %273, align 8, !dbg !937, !tbaa !432
  %275 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !938, !tbaa !363
  %276 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %275, i64 0, i32 5, !dbg !939
  %277 = load i32, i32* %276, align 8, !dbg !939, !tbaa !397
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.redisObject* %274, i32 %277) #5, !dbg !940
  %278 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !941, !tbaa !382
  %279 = add nsw i64 %278, 1, !dbg !941
  store i64 %279, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !941, !tbaa !382
  br label %280, !dbg !942

; <label>:280:                                    ; preds = %182, %208, %265
  %281 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %184, i64 0, i32 2, !dbg !943
  %282 = load i8*, i8** %281, align 8, !dbg !943, !tbaa !434
  %283 = getelementptr inbounds i8, i8* %282, i64 -1, !dbg !946
  %284 = load i8, i8* %283, align 1, !dbg !946, !tbaa !444
  %285 = trunc i8 %284 to i3, !dbg !948
  switch i3 %285, label %307 [
    i3 0, label %286
    i3 1, label %289
    i3 2, label %293
    i3 3, label %298
    i3 -4, label %303
  ], !dbg !948

; <label>:286:                                    ; preds = %280
  %287 = lshr i8 %284, 3, !dbg !949
  %288 = zext i8 %287 to i64, !dbg !949
  br label %307, !dbg !950

; <label>:289:                                    ; preds = %280
  %290 = getelementptr inbounds i8, i8* %282, i64 -3, !dbg !951
  %291 = load i8, i8* %290, align 1, !dbg !952, !tbaa !444
  %292 = zext i8 %291 to i64, !dbg !951
  br label %307, !dbg !953

; <label>:293:                                    ; preds = %280
  %294 = getelementptr inbounds i8, i8* %282, i64 -5, !dbg !954
  %295 = bitcast i8* %294 to i16*, !dbg !955
  %296 = load i16, i16* %295, align 1, !dbg !955, !tbaa !715
  %297 = zext i16 %296 to i64, !dbg !954
  br label %307, !dbg !956

; <label>:298:                                    ; preds = %280
  %299 = getelementptr inbounds i8, i8* %282, i64 -9, !dbg !957
  %300 = bitcast i8* %299 to i32*, !dbg !958
  %301 = load i32, i32* %300, align 1, !dbg !958, !tbaa !720
  %302 = zext i32 %301 to i64, !dbg !957
  br label %307, !dbg !959

; <label>:303:                                    ; preds = %280
  %304 = getelementptr inbounds i8, i8* %282, i64 -17, !dbg !960
  %305 = bitcast i8* %304 to i64*, !dbg !961
  %306 = load i64, i64* %305, align 1, !dbg !961, !tbaa !678
  br label %307, !dbg !962

; <label>:307:                                    ; preds = %280, %286, %289, %293, %298, %303
  %308 = phi i64 [ %306, %303 ], [ %302, %298 ], [ %297, %293 ], [ %292, %289 ], [ %288, %286 ], [ 0, %280 ], !dbg !963
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %308) #5, !dbg !964
  br label %309, !dbg !965

; <label>:309:                                    ; preds = %175, %115, %147, %83, %1, %307, %54, %17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4, !dbg !965
  ret void, !dbg !965
}

; Function Attrs: noredzone
declare dso_local i32 @getLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createObject(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @dbAdd(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @checkType(%struct.client*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @stringObjectLen(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @dbUnshareStringValue(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsgrowzero(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @signalModifiedKey(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @getrangeCommand(%struct.client*) local_unnamed_addr #0 !dbg !966 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [32 x i8], align 16
  %5 = bitcast i64* %2 to i8*, !dbg !979
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4, !dbg !979
  %6 = bitcast i64* %3 to i8*, !dbg !979
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4, !dbg !979
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0, !dbg !980
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #4, !dbg !980
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !982
  %9 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !982, !tbaa !429
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 2, !dbg !984
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !984, !tbaa !432
  %12 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %11, i64* nonnull %2, i8* null) #5, !dbg !986
  %13 = icmp eq i32 %12, 0, !dbg !987
  br i1 %13, label %14, label %111, !dbg !988

; <label>:14:                                     ; preds = %1
  %15 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !989, !tbaa !429
  %16 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 3, !dbg !991
  %17 = load %struct.redisObject*, %struct.redisObject** %16, align 8, !dbg !991, !tbaa !432
  %18 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %17, i64* nonnull %3, i8* null) #5, !dbg !993
  %19 = icmp eq i32 %18, 0, !dbg !994
  br i1 %19, label %20, label %111, !dbg !995

; <label>:20:                                     ; preds = %14
  %21 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !996, !tbaa !429
  %22 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %21, i64 1, !dbg !998
  %23 = load %struct.redisObject*, %struct.redisObject** %22, align 8, !dbg !998, !tbaa !432
  %24 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 3), align 8, !dbg !999, !tbaa !1000
  %25 = call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* nonnull %0, %struct.redisObject* %23, %struct.redisObject* %24) #5, !dbg !1001
  %26 = icmp eq %struct.redisObject* %25, null, !dbg !1003
  br i1 %26, label %111, label %27, !dbg !1004

; <label>:27:                                     ; preds = %20
  %28 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %25, i32 0) #5, !dbg !1005
  %29 = icmp eq i32 %28, 0, !dbg !1005
  br i1 %29, label %30, label %111, !dbg !1006

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %25, i64 0, i32 0, !dbg !1007
  %32 = load i32, i32* %31, align 8, !dbg !1007
  %33 = and i32 %32, 240, !dbg !1007
  %34 = icmp eq i32 %33, 16, !dbg !1009
  %35 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %25, i64 0, i32 2, !dbg !1010
  br i1 %34, label %36, label %41, !dbg !1012

; <label>:36:                                     ; preds = %30
  %37 = bitcast i8** %35 to i64*, !dbg !1014
  %38 = load i64, i64* %37, align 8, !dbg !1014, !tbaa !434
  %39 = call i32 @ll2string(i8* nonnull %7, i64 32, i64 %38) #5, !dbg !1016
  %40 = sext i32 %39 to i64, !dbg !1016
  br label %67, !dbg !1018

; <label>:41:                                     ; preds = %30
  %42 = load i8*, i8** %35, align 8, !dbg !1019, !tbaa !434
  %43 = getelementptr inbounds i8, i8* %42, i64 -1, !dbg !1022
  %44 = load i8, i8* %43, align 1, !dbg !1022, !tbaa !444
  %45 = trunc i8 %44 to i3, !dbg !1024
  switch i3 %45, label %67 [
    i3 0, label %46
    i3 1, label %49
    i3 2, label %53
    i3 3, label %58
    i3 -4, label %63
  ], !dbg !1024

; <label>:46:                                     ; preds = %41
  %47 = lshr i8 %44, 3, !dbg !1025
  %48 = zext i8 %47 to i64, !dbg !1025
  br label %67, !dbg !1026

; <label>:49:                                     ; preds = %41
  %50 = getelementptr inbounds i8, i8* %42, i64 -3, !dbg !1027
  %51 = load i8, i8* %50, align 1, !dbg !1028, !tbaa !444
  %52 = zext i8 %51 to i64, !dbg !1027
  br label %67, !dbg !1029

; <label>:53:                                     ; preds = %41
  %54 = getelementptr inbounds i8, i8* %42, i64 -5, !dbg !1030
  %55 = bitcast i8* %54 to i16*, !dbg !1031
  %56 = load i16, i16* %55, align 1, !dbg !1031, !tbaa !715
  %57 = zext i16 %56 to i64, !dbg !1030
  br label %67, !dbg !1032

; <label>:58:                                     ; preds = %41
  %59 = getelementptr inbounds i8, i8* %42, i64 -9, !dbg !1033
  %60 = bitcast i8* %59 to i32*, !dbg !1034
  %61 = load i32, i32* %60, align 1, !dbg !1034, !tbaa !720
  %62 = zext i32 %61 to i64, !dbg !1033
  br label %67, !dbg !1035

; <label>:63:                                     ; preds = %41
  %64 = getelementptr inbounds i8, i8* %42, i64 -17, !dbg !1036
  %65 = bitcast i8* %64 to i64*, !dbg !1037
  %66 = load i64, i64* %65, align 1, !dbg !1037, !tbaa !678
  br label %67, !dbg !1038

; <label>:67:                                     ; preds = %63, %58, %53, %49, %46, %41, %36
  %68 = phi i8* [ %7, %36 ], [ %42, %41 ], [ %42, %46 ], [ %42, %49 ], [ %42, %53 ], [ %42, %58 ], [ %42, %63 ], !dbg !1010
  %69 = phi i64 [ %40, %36 ], [ 0, %41 ], [ %48, %46 ], [ %52, %49 ], [ %57, %53 ], [ %62, %58 ], [ %66, %63 ], !dbg !1010
  %70 = load i64, i64* %2, align 8, !dbg !1039, !tbaa !324
  %71 = load i64, i64* %3, align 8, !dbg !1041
  %72 = and i64 %71, %70, !dbg !1042
  %73 = icmp slt i64 %72, 0, !dbg !1042
  %74 = icmp sgt i64 %70, %71, !dbg !1043
  %75 = and i1 %74, %73, !dbg !1042
  br i1 %75, label %76, label %78, !dbg !1042

; <label>:76:                                     ; preds = %67
  %77 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 3), align 8, !dbg !1044, !tbaa !1000
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %77) #5, !dbg !1046
  br label %111, !dbg !1047

; <label>:78:                                     ; preds = %67
  %79 = icmp slt i64 %70, 0, !dbg !1048
  br i1 %79, label %80, label %82, !dbg !1050

; <label>:80:                                     ; preds = %78
  %81 = add i64 %70, %69, !dbg !1051
  store i64 %81, i64* %2, align 8, !dbg !1052, !tbaa !324
  br label %82, !dbg !1053

; <label>:82:                                     ; preds = %80, %78
  %83 = phi i64 [ %81, %80 ], [ %70, %78 ]
  %84 = icmp slt i64 %71, 0, !dbg !1054
  br i1 %84, label %85, label %87, !dbg !1056

; <label>:85:                                     ; preds = %82
  %86 = add i64 %71, %69, !dbg !1057
  store i64 %86, i64* %3, align 8, !dbg !1058, !tbaa !324
  br label %87, !dbg !1059

; <label>:87:                                     ; preds = %85, %82
  %88 = phi i64 [ %86, %85 ], [ %71, %82 ]
  %89 = icmp slt i64 %83, 0, !dbg !1060
  br i1 %89, label %90, label %91, !dbg !1062

; <label>:90:                                     ; preds = %87
  store i64 0, i64* %2, align 8, !dbg !1063, !tbaa !324
  br label %91, !dbg !1064

; <label>:91:                                     ; preds = %90, %87
  %92 = phi i64 [ 0, %90 ], [ %83, %87 ]
  %93 = icmp slt i64 %88, 0, !dbg !1065
  %94 = select i1 %93, i64 0, i64 %88, !dbg !1067
  %95 = icmp ult i64 %94, %69, !dbg !1068
  %96 = add i64 %69, -1, !dbg !1070
  %97 = select i1 %95, i64 %94, i64 %96, !dbg !1071
  %98 = xor i1 %95, true, !dbg !985
  %99 = or i1 %93, %98, !dbg !985
  br i1 %99, label %100, label %101, !dbg !985

; <label>:100:                                    ; preds = %91
  store i64 %97, i64* %3, align 8, !dbg !985, !tbaa !324
  br label %101, !dbg !985

; <label>:101:                                    ; preds = %91, %100
  %102 = icmp slt i64 %97, %92, !dbg !1072
  %103 = icmp eq i64 %69, 0, !dbg !1074
  %104 = or i1 %103, %102, !dbg !1075
  br i1 %104, label %105, label %107, !dbg !1075

; <label>:105:                                    ; preds = %101
  %106 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 3), align 8, !dbg !1076, !tbaa !1000
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %106) #5, !dbg !1078
  br label %111, !dbg !1079

; <label>:107:                                    ; preds = %101
  %108 = getelementptr inbounds i8, i8* %68, i64 %92, !dbg !1080
  %109 = sub i64 1, %92, !dbg !1082
  %110 = add i64 %109, %97, !dbg !1083
  call void @addReplyBulkCBuffer(%struct.client* nonnull %0, i8* %108, i64 %110) #5, !dbg !1084
  br label %111

; <label>:111:                                    ; preds = %105, %107, %20, %27, %14, %1, %76
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #4, !dbg !1085
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4, !dbg !1085
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4, !dbg !1085
  ret void, !dbg !1085
}

; Function Attrs: noredzone
declare dso_local i32 @ll2string(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mgetCommand(%struct.client*) local_unnamed_addr #0 !dbg !1086 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1095
  %3 = load i32, i32* %2, align 8, !dbg !1095, !tbaa !426
  %4 = add nsw i32 %3, -1, !dbg !1096
  %5 = sext i32 %4 to i64, !dbg !1097
  tail call void @addReplyMultiBulkLen(%struct.client* %0, i64 %5) #5, !dbg !1098
  %6 = load i32, i32* %2, align 8, !dbg !1100, !tbaa !426
  %7 = icmp sgt i32 %6, 1, !dbg !1101
  br i1 %7, label %8, label %34, !dbg !1102

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %11, !dbg !1102

; <label>:11:                                     ; preds = %8, %29
  %12 = phi i64 [ 1, %8 ], [ %30, %29 ]
  %13 = load %struct.redisDb*, %struct.redisDb** %9, align 8, !dbg !1103, !tbaa !363
  %14 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1104, !tbaa !429
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 %12, !dbg !1105
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !1105, !tbaa !432
  %17 = tail call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %13, %struct.redisObject* %16) #5, !dbg !1106
  %18 = icmp eq %struct.redisObject* %17, null, !dbg !1108
  br i1 %18, label %19, label %21, !dbg !1110

; <label>:19:                                     ; preds = %11
  %20 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1111, !tbaa !574
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %20) #5, !dbg !1113
  br label %29, !dbg !1114

; <label>:21:                                     ; preds = %11
  %22 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i64 0, i32 0, !dbg !1115
  %23 = load i32, i32* %22, align 8, !dbg !1115
  %24 = and i32 %23, 15, !dbg !1115
  %25 = icmp eq i32 %24, 0, !dbg !1118
  br i1 %25, label %28, label %26, !dbg !1119

; <label>:26:                                     ; preds = %21
  %27 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1120, !tbaa !574
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %27) #5, !dbg !1122
  br label %29, !dbg !1123

; <label>:28:                                     ; preds = %21
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* nonnull %17) #5, !dbg !1124
  br label %29

; <label>:29:                                     ; preds = %26, %28, %19
  %30 = add nuw nsw i64 %12, 1, !dbg !1126
  %31 = load i32, i32* %2, align 8, !dbg !1100, !tbaa !426
  %32 = sext i32 %31 to i64, !dbg !1101
  %33 = icmp slt i64 %30, %32, !dbg !1101
  br i1 %33, label %11, label %34, !dbg !1102, !llvm.loop !1127

; <label>:34:                                     ; preds = %29, %1
  ret void, !dbg !1129
}

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyRead(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @msetGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !1130 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1139
  %4 = load i32, i32* %3, align 8, !dbg !1139, !tbaa !426
  %5 = and i32 %4, 1, !dbg !1141
  %6 = icmp eq i32 %5, 0, !dbg !1141
  br i1 %6, label %7, label %8, !dbg !1142

; <label>:7:                                      ; preds = %2
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1143
  br label %71, !dbg !1145

; <label>:8:                                      ; preds = %2
  %9 = icmp ne i32 %1, 0, !dbg !1146
  br i1 %9, label %10, label %30, !dbg !1148

; <label>:10:                                     ; preds = %8
  %11 = icmp sgt i32 %4, 1, !dbg !1150
  br i1 %11, label %12, label %61, !dbg !1154

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %14 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %19, !dbg !1154

; <label>:15:                                     ; preds = %19
  %16 = load i32, i32* %3, align 8, !dbg !1155, !tbaa !426
  %17 = trunc i64 %27 to i32, !dbg !1150
  %18 = icmp sgt i32 %16, %17, !dbg !1150
  br i1 %18, label %19, label %30, !dbg !1154, !llvm.loop !1156

; <label>:19:                                     ; preds = %12, %15
  %20 = phi i64 [ 1, %12 ], [ %27, %15 ]
  %21 = load %struct.redisDb*, %struct.redisDb** %13, align 8, !dbg !1158, !tbaa !363
  %22 = load %struct.redisObject**, %struct.redisObject*** %14, align 8, !dbg !1161, !tbaa !429
  %23 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %22, i64 %20, !dbg !1162
  %24 = load %struct.redisObject*, %struct.redisObject** %23, align 8, !dbg !1162, !tbaa !432
  %25 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %21, %struct.redisObject* %24) #5, !dbg !1163
  %26 = icmp eq %struct.redisObject* %25, null, !dbg !1164
  %27 = add nuw i64 %20, 2, !dbg !1165
  br i1 %26, label %15, label %28, !dbg !1166

; <label>:28:                                     ; preds = %19
  %29 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1167, !tbaa !528
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %29) #5, !dbg !1169
  br label %71, !dbg !1170

; <label>:30:                                     ; preds = %15, %8
  %31 = phi i32 [ %4, %8 ], [ %16, %15 ], !dbg !1171
  %32 = icmp sgt i32 %31, 1, !dbg !1174
  br i1 %32, label %33, label %61, !dbg !1175

; <label>:33:                                     ; preds = %30
  %34 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %35 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  br label %36, !dbg !1175

; <label>:36:                                     ; preds = %33, %36
  %37 = phi i64 [ 1, %33 ], [ %57, %36 ]
  %38 = load %struct.redisObject**, %struct.redisObject*** %34, align 8, !dbg !1176, !tbaa !429
  %39 = add nuw nsw i64 %37, 1, !dbg !1178
  %40 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %38, i64 %39, !dbg !1179
  %41 = load %struct.redisObject*, %struct.redisObject** %40, align 8, !dbg !1179, !tbaa !432
  %42 = tail call %struct.redisObject* @tryObjectEncoding(%struct.redisObject* %41) #5, !dbg !1180
  %43 = load %struct.redisObject**, %struct.redisObject*** %34, align 8, !dbg !1181, !tbaa !429
  %44 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %43, i64 %39, !dbg !1182
  store %struct.redisObject* %42, %struct.redisObject** %44, align 8, !dbg !1183, !tbaa !432
  %45 = load %struct.redisDb*, %struct.redisDb** %35, align 8, !dbg !1184, !tbaa !363
  %46 = load %struct.redisObject**, %struct.redisObject*** %34, align 8, !dbg !1185, !tbaa !429
  %47 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %46, i64 %37, !dbg !1186
  %48 = load %struct.redisObject*, %struct.redisObject** %47, align 8, !dbg !1186, !tbaa !432
  %49 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %46, i64 %39, !dbg !1187
  %50 = load %struct.redisObject*, %struct.redisObject** %49, align 8, !dbg !1187, !tbaa !432
  tail call void @setKey(%struct.redisDb* %45, %struct.redisObject* %48, %struct.redisObject* %50) #5, !dbg !1188
  %51 = load %struct.redisObject**, %struct.redisObject*** %34, align 8, !dbg !1189, !tbaa !429
  %52 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %51, i64 %37, !dbg !1190
  %53 = load %struct.redisObject*, %struct.redisObject** %52, align 8, !dbg !1190, !tbaa !432
  %54 = load %struct.redisDb*, %struct.redisDb** %35, align 8, !dbg !1191, !tbaa !363
  %55 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %54, i64 0, i32 5, !dbg !1192
  %56 = load i32, i32* %55, align 8, !dbg !1192, !tbaa !397
  tail call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.redisObject* %53, i32 %56) #5, !dbg !1193
  %57 = add nuw i64 %37, 2, !dbg !1194
  %58 = load i32, i32* %3, align 8, !dbg !1171, !tbaa !426
  %59 = trunc i64 %57 to i32, !dbg !1174
  %60 = icmp sgt i32 %58, %59, !dbg !1174
  br i1 %60, label %36, label %61, !dbg !1175, !llvm.loop !1195

; <label>:61:                                     ; preds = %36, %10, %30
  %62 = phi i32 [ %31, %30 ], [ %4, %10 ], [ %58, %36 ], !dbg !1171
  %63 = add nsw i32 %62, -1, !dbg !1197
  %64 = sdiv i32 %63, 2, !dbg !1198
  %65 = sext i32 %64 to i64, !dbg !1199
  %66 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1200, !tbaa !382
  %67 = add nsw i64 %66, %65, !dbg !1200
  store i64 %67, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1200, !tbaa !382
  %68 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !1201
  %69 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1202
  %70 = select i1 %9, %struct.redisObject* %68, %struct.redisObject* %69, !dbg !1203
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %70) #5, !dbg !1204
  br label %71, !dbg !1205

; <label>:71:                                     ; preds = %61, %28, %7
  ret void, !dbg !1205
}

; Function Attrs: noredzone nounwind
define dso_local void @msetCommand(%struct.client*) local_unnamed_addr #0 !dbg !1206 {
  tail call void @msetGenericCommand(%struct.client* %0, i32 0) #6, !dbg !1210
  ret void, !dbg !1211
}

; Function Attrs: noredzone nounwind
define dso_local void @msetnxCommand(%struct.client*) local_unnamed_addr #0 !dbg !1212 {
  tail call void @msetGenericCommand(%struct.client* %0, i32 1) #6, !dbg !1216
  ret void, !dbg !1217
}

; Function Attrs: noredzone nounwind
define dso_local void @incrDecrCommand(%struct.client*, i64) local_unnamed_addr #0 !dbg !1218 {
  %3 = alloca i64, align 8
  %4 = bitcast i64* %3 to i8*, !dbg !1230
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4, !dbg !1230
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1231
  %6 = load %struct.redisDb*, %struct.redisDb** %5, align 8, !dbg !1231, !tbaa !363
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1232
  %8 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1232, !tbaa !429
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 1, !dbg !1233
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !1233, !tbaa !432
  %11 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %6, %struct.redisObject* %10) #5, !dbg !1234
  %12 = icmp ne %struct.redisObject* %11, null, !dbg !1236
  br i1 %12, label %13, label %16, !dbg !1238

; <label>:13:                                     ; preds = %2
  %14 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %11, i32 0) #5, !dbg !1239
  %15 = icmp eq i32 %14, 0, !dbg !1239
  br i1 %15, label %16, label %74, !dbg !1240

; <label>:16:                                     ; preds = %13, %2
  %17 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %11, i64* nonnull %3, i8* null) #5, !dbg !1242
  %18 = icmp eq i32 %17, 0, !dbg !1244
  br i1 %18, label %19, label %74, !dbg !1245

; <label>:19:                                     ; preds = %16
  %20 = load i64, i64* %3, align 8, !dbg !1246, !tbaa !324
  %21 = and i64 %20, %1, !dbg !1248
  %22 = icmp slt i64 %21, 0, !dbg !1248
  %23 = sub nsw i64 -9223372036854775808, %20, !dbg !1250
  %24 = icmp sgt i64 %23, %1, !dbg !1251
  %25 = and i1 %22, %24, !dbg !1248
  br i1 %25, label %33, label %26, !dbg !1248

; <label>:26:                                     ; preds = %19
  %27 = icmp sgt i64 %1, 0, !dbg !1252
  %28 = icmp sgt i64 %20, 0, !dbg !1253
  %29 = and i1 %27, %28, !dbg !1254
  %30 = sub nsw i64 9223372036854775807, %20, !dbg !1255
  %31 = icmp slt i64 %30, %1, !dbg !1256
  %32 = and i1 %29, %31, !dbg !1254
  br i1 %32, label %33, label %34, !dbg !1254

; <label>:33:                                     ; preds = %26, %19
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !1257
  br label %74, !dbg !1259

; <label>:34:                                     ; preds = %26
  %35 = add nsw i64 %20, %1, !dbg !1260
  store i64 %35, i64* %3, align 8, !dbg !1260, !tbaa !324
  br i1 %12, label %36, label %50, !dbg !1261

; <label>:36:                                     ; preds = %34
  %37 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 1, !dbg !1263
  %38 = load i32, i32* %37, align 4, !dbg !1263, !tbaa !1264
  %39 = icmp eq i32 %38, 1, !dbg !1265
  br i1 %39, label %40, label %50, !dbg !1266

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 0, !dbg !1267
  %42 = load i32, i32* %41, align 8, !dbg !1267
  %43 = and i32 %42, 240, !dbg !1267
  %44 = icmp eq i32 %43, 16, !dbg !1268
  %45 = icmp ugt i64 %35, 9999, !dbg !1269
  %46 = and i1 %45, %44, !dbg !1270
  br i1 %46, label %47, label %50, !dbg !1270

; <label>:47:                                     ; preds = %40
  %48 = inttoptr i64 %35 to i8*, !dbg !1272
  %49 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 2, !dbg !1274
  store i8* %48, i8** %49, align 8, !dbg !1275, !tbaa !434
  br label %58, !dbg !1276

; <label>:50:                                     ; preds = %40, %36, %34
  %51 = call %struct.redisObject* @createStringObjectFromLongLongForValue(i64 %35) #5, !dbg !1277
  %52 = load %struct.redisDb*, %struct.redisDb** %5, align 8, !dbg !1279, !tbaa !363
  %53 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1279, !tbaa !429
  %54 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %53, i64 1, !dbg !1279
  %55 = load %struct.redisObject*, %struct.redisObject** %54, align 8, !dbg !1279, !tbaa !432
  br i1 %12, label %56, label %57, !dbg !1282

; <label>:56:                                     ; preds = %50
  call void @dbOverwrite(%struct.redisDb* %52, %struct.redisObject* %55, %struct.redisObject* %51) #5, !dbg !1283
  br label %58, !dbg !1285

; <label>:57:                                     ; preds = %50
  call void @dbAdd(%struct.redisDb* %52, %struct.redisObject* %55, %struct.redisObject* %51) #5, !dbg !1286
  br label %58

; <label>:58:                                     ; preds = %56, %57, %47
  %59 = phi %struct.redisObject* [ %11, %47 ], [ %51, %56 ], [ %51, %57 ], !dbg !1287
  %60 = load %struct.redisDb*, %struct.redisDb** %5, align 8, !dbg !1288, !tbaa !363
  %61 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1289, !tbaa !429
  %62 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %61, i64 1, !dbg !1290
  %63 = load %struct.redisObject*, %struct.redisObject** %62, align 8, !dbg !1290, !tbaa !432
  call void @signalModifiedKey(%struct.redisDb* %60, %struct.redisObject* %63) #5, !dbg !1291
  %64 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1292, !tbaa !429
  %65 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %64, i64 1, !dbg !1293
  %66 = load %struct.redisObject*, %struct.redisObject** %65, align 8, !dbg !1293, !tbaa !432
  %67 = load %struct.redisDb*, %struct.redisDb** %5, align 8, !dbg !1294, !tbaa !363
  %68 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %67, i64 0, i32 5, !dbg !1295
  %69 = load i32, i32* %68, align 8, !dbg !1295, !tbaa !397
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), %struct.redisObject* %66, i32 %69) #5, !dbg !1296
  %70 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1297, !tbaa !382
  %71 = add nsw i64 %70, 1, !dbg !1297
  store i64 %71, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1297, !tbaa !382
  %72 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 9), align 8, !dbg !1298, !tbaa !1299
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %72) #5, !dbg !1300
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %59) #5, !dbg !1301
  %73 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 0), align 8, !dbg !1302, !tbaa !1303
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %73) #5, !dbg !1304
  br label %74, !dbg !1305

; <label>:74:                                     ; preds = %16, %13, %58, %33
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4, !dbg !1305
  ret void, !dbg !1305
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObjectFromLongLongForValue(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @dbOverwrite(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @incrCommand(%struct.client*) local_unnamed_addr #0 !dbg !1306 {
  tail call void @incrDecrCommand(%struct.client* %0, i64 1) #6, !dbg !1310
  ret void, !dbg !1311
}

; Function Attrs: noredzone nounwind
define dso_local void @decrCommand(%struct.client*) local_unnamed_addr #0 !dbg !1312 {
  tail call void @incrDecrCommand(%struct.client* %0, i64 -1) #6, !dbg !1316
  ret void, !dbg !1317
}

; Function Attrs: noredzone nounwind
define dso_local void @incrbyCommand(%struct.client*) local_unnamed_addr #0 !dbg !1318 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !1323
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4, !dbg !1323
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1324
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1324, !tbaa !429
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 2, !dbg !1326
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1326, !tbaa !432
  %8 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %7, i64* nonnull %2, i8* null) #5, !dbg !1328
  %9 = icmp eq i32 %8, 0, !dbg !1329
  br i1 %9, label %10, label %12, !dbg !1330

; <label>:10:                                     ; preds = %1
  %11 = load i64, i64* %2, align 8, !dbg !1331, !tbaa !324
  call void @incrDecrCommand(%struct.client* nonnull %0, i64 %11) #6, !dbg !1332
  br label %12, !dbg !1333

; <label>:12:                                     ; preds = %1, %10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4, !dbg !1333
  ret void, !dbg !1333
}

; Function Attrs: noredzone nounwind
define dso_local void @decrbyCommand(%struct.client*) local_unnamed_addr #0 !dbg !1334 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !1339
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4, !dbg !1339
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1340
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1340, !tbaa !429
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 2, !dbg !1342
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1342, !tbaa !432
  %8 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %7, i64* nonnull %2, i8* null) #5, !dbg !1344
  %9 = icmp eq i32 %8, 0, !dbg !1345
  br i1 %9, label %10, label %13, !dbg !1346

; <label>:10:                                     ; preds = %1
  %11 = load i64, i64* %2, align 8, !dbg !1347, !tbaa !324
  %12 = sub nsw i64 0, %11, !dbg !1348
  call void @incrDecrCommand(%struct.client* nonnull %0, i64 %12) #6, !dbg !1349
  br label %13, !dbg !1350

; <label>:13:                                     ; preds = %1, %10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4, !dbg !1350
  ret void, !dbg !1350
}

; Function Attrs: noredzone nounwind
define dso_local void @incrbyfloatCommand(%struct.client*) local_unnamed_addr #0 !dbg !1351 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  %4 = bitcast x86_fp80* %2 to i8*, !dbg !1361
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #4, !dbg !1361
  %5 = bitcast x86_fp80* %3 to i8*, !dbg !1361
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #4, !dbg !1361
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1362
  %7 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1362, !tbaa !363
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1363
  %9 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1363, !tbaa !429
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 1, !dbg !1364
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !1364, !tbaa !432
  %12 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %7, %struct.redisObject* %11) #5, !dbg !1365
  %13 = icmp ne %struct.redisObject* %12, null, !dbg !1367
  br i1 %13, label %14, label %17, !dbg !1369

; <label>:14:                                     ; preds = %1
  %15 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %12, i32 0) #5, !dbg !1370
  %16 = icmp eq i32 %15, 0, !dbg !1370
  br i1 %16, label %17, label %62, !dbg !1371

; <label>:17:                                     ; preds = %14, %1
  %18 = call i32 @getLongDoubleFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %12, x86_fp80* nonnull %3, i8* null) #5, !dbg !1373
  %19 = icmp eq i32 %18, 0, !dbg !1375
  br i1 %19, label %20, label %62, !dbg !1376

; <label>:20:                                     ; preds = %17
  %21 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1377, !tbaa !429
  %22 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %21, i64 2, !dbg !1378
  %23 = load %struct.redisObject*, %struct.redisObject** %22, align 8, !dbg !1378, !tbaa !432
  %24 = call i32 @getLongDoubleFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %23, x86_fp80* nonnull %2, i8* null) #5, !dbg !1380
  %25 = icmp eq i32 %24, 0, !dbg !1381
  br i1 %25, label %26, label %62, !dbg !1382

; <label>:26:                                     ; preds = %20
  %27 = load x86_fp80, x86_fp80* %2, align 16, !dbg !1383, !tbaa !1384
  %28 = load x86_fp80, x86_fp80* %3, align 16, !dbg !1386, !tbaa !1384
  %29 = fadd x86_fp80 %27, %28, !dbg !1386
  store x86_fp80 %29, x86_fp80* %3, align 16, !dbg !1386, !tbaa !1384
  %30 = fptrunc x86_fp80 %29 to double, !dbg !1387
  %31 = call i32 @__fpclassifyd(double %30) #5, !dbg !1387
  %32 = icmp eq i32 %31, 0, !dbg !1387
  br i1 %32, label %38, label %33, !dbg !1389

; <label>:33:                                     ; preds = %26
  %34 = load x86_fp80, x86_fp80* %3, align 16, !dbg !1390, !tbaa !1384
  %35 = fptrunc x86_fp80 %34 to double, !dbg !1390
  %36 = call i32 @__fpclassifyd(double %35) #5, !dbg !1390
  %37 = icmp eq i32 %36, 1, !dbg !1390
  br i1 %37, label %38, label %39, !dbg !1391

; <label>:38:                                     ; preds = %33, %26
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !1392
  br label %62, !dbg !1394

; <label>:39:                                     ; preds = %33
  %40 = load x86_fp80, x86_fp80* %3, align 16, !dbg !1395, !tbaa !1384
  %41 = call %struct.redisObject* @createStringObjectFromLongDouble(x86_fp80 %40, i32 1) #5, !dbg !1396
  %42 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1398, !tbaa !363
  %43 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1398, !tbaa !429
  %44 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %43, i64 1, !dbg !1398
  %45 = load %struct.redisObject*, %struct.redisObject** %44, align 8, !dbg !1398, !tbaa !432
  br i1 %13, label %46, label %47, !dbg !1400

; <label>:46:                                     ; preds = %39
  call void @dbOverwrite(%struct.redisDb* %42, %struct.redisObject* %45, %struct.redisObject* %41) #5, !dbg !1401
  br label %48, !dbg !1401

; <label>:47:                                     ; preds = %39
  call void @dbAdd(%struct.redisDb* %42, %struct.redisObject* %45, %struct.redisObject* %41) #5, !dbg !1402
  br label %48

; <label>:48:                                     ; preds = %47, %46
  %49 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1403, !tbaa !363
  %50 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1404, !tbaa !429
  %51 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %50, i64 1, !dbg !1405
  %52 = load %struct.redisObject*, %struct.redisObject** %51, align 8, !dbg !1405, !tbaa !432
  call void @signalModifiedKey(%struct.redisDb* %49, %struct.redisObject* %52) #5, !dbg !1406
  %53 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1407, !tbaa !429
  %54 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %53, i64 1, !dbg !1408
  %55 = load %struct.redisObject*, %struct.redisObject** %54, align 8, !dbg !1408, !tbaa !432
  %56 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1409, !tbaa !363
  %57 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %56, i64 0, i32 5, !dbg !1410
  %58 = load i32, i32* %57, align 8, !dbg !1410, !tbaa !397
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), %struct.redisObject* %55, i32 %58) #5, !dbg !1411
  %59 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1412, !tbaa !382
  %60 = add nsw i64 %59, 1, !dbg !1412
  store i64 %60, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1412, !tbaa !382
  call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %41) #5, !dbg !1413
  %61 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3) #5, !dbg !1414
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 0, %struct.redisObject* %61) #5, !dbg !1416
  call void @decrRefCount(%struct.redisObject* %61) #5, !dbg !1417
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 2, %struct.redisObject* %41) #5, !dbg !1418
  br label %62, !dbg !1419

; <label>:62:                                     ; preds = %17, %20, %14, %48, %38
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #4, !dbg !1419
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #4, !dbg !1419
  ret void, !dbg !1419
}

; Function Attrs: noredzone
declare dso_local i32 @getLongDoubleFromObjectOrReply(%struct.client*, %struct.redisObject*, x86_fp80*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObjectFromLongDouble(x86_fp80, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @rewriteClientCommandArgument(%struct.client*, i32, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @appendCommand(%struct.client*) local_unnamed_addr #0 !dbg !1420 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1427
  %3 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1427, !tbaa !363
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1428
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1428, !tbaa !429
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !1429
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1429, !tbaa !432
  %8 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %3, %struct.redisObject* %7) #5, !dbg !1430
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !1432
  br i1 %9, label %10, label %30, !dbg !1434

; <label>:10:                                     ; preds = %1
  %11 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1435, !tbaa !429
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 2, !dbg !1437
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !1437, !tbaa !432
  %14 = tail call %struct.redisObject* @tryObjectEncoding(%struct.redisObject* %13) #5, !dbg !1438
  %15 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1439, !tbaa !429
  %16 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 2, !dbg !1440
  store %struct.redisObject* %14, %struct.redisObject** %16, align 8, !dbg !1441, !tbaa !432
  %17 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1442, !tbaa !363
  %18 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1443, !tbaa !429
  %19 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %18, i64 1, !dbg !1444
  %20 = load %struct.redisObject*, %struct.redisObject** %19, align 8, !dbg !1444, !tbaa !432
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %18, i64 2, !dbg !1445
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !1445, !tbaa !432
  tail call void @dbAdd(%struct.redisDb* %17, %struct.redisObject* %20, %struct.redisObject* %22) #5, !dbg !1446
  %23 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1447, !tbaa !429
  %24 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %23, i64 2, !dbg !1448
  %25 = load %struct.redisObject*, %struct.redisObject** %24, align 8, !dbg !1448, !tbaa !432
  tail call void @incrRefCount(%struct.redisObject* %25) #5, !dbg !1449
  %26 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1450, !tbaa !429
  %27 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 2, !dbg !1451
  %28 = load %struct.redisObject*, %struct.redisObject** %27, align 8, !dbg !1451, !tbaa !432
  %29 = tail call i64 @stringObjectLen(%struct.redisObject* %28) #5, !dbg !1452
  br label %129, !dbg !1454

; <label>:30:                                     ; preds = %1
  %31 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %8, i32 0) #5, !dbg !1455
  %32 = icmp eq i32 %31, 0, !dbg !1455
  br i1 %32, label %33, label %143, !dbg !1458

; <label>:33:                                     ; preds = %30
  %34 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1459, !tbaa !429
  %35 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %34, i64 2, !dbg !1460
  %36 = load %struct.redisObject*, %struct.redisObject** %35, align 8, !dbg !1460, !tbaa !432
  %37 = tail call i64 @stringObjectLen(%struct.redisObject* nonnull %8) #5, !dbg !1462
  %38 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %36, i64 0, i32 2, !dbg !1463
  %39 = load i8*, i8** %38, align 8, !dbg !1463, !tbaa !434
  %40 = getelementptr inbounds i8, i8* %39, i64 -1, !dbg !1466
  %41 = load i8, i8* %40, align 1, !dbg !1466, !tbaa !444
  %42 = trunc i8 %41 to i3, !dbg !1468
  switch i3 %42, label %64 [
    i3 0, label %43
    i3 1, label %46
    i3 2, label %50
    i3 3, label %55
    i3 -4, label %60
  ], !dbg !1468

; <label>:43:                                     ; preds = %33
  %44 = lshr i8 %41, 3, !dbg !1469
  %45 = zext i8 %44 to i64, !dbg !1469
  br label %64, !dbg !1470

; <label>:46:                                     ; preds = %33
  %47 = getelementptr inbounds i8, i8* %39, i64 -3, !dbg !1471
  %48 = load i8, i8* %47, align 1, !dbg !1472, !tbaa !444
  %49 = zext i8 %48 to i64, !dbg !1471
  br label %64, !dbg !1473

; <label>:50:                                     ; preds = %33
  %51 = getelementptr inbounds i8, i8* %39, i64 -5, !dbg !1474
  %52 = bitcast i8* %51 to i16*, !dbg !1475
  %53 = load i16, i16* %52, align 1, !dbg !1475, !tbaa !715
  %54 = zext i16 %53 to i64, !dbg !1474
  br label %64, !dbg !1476

; <label>:55:                                     ; preds = %33
  %56 = getelementptr inbounds i8, i8* %39, i64 -9, !dbg !1477
  %57 = bitcast i8* %56 to i32*, !dbg !1478
  %58 = load i32, i32* %57, align 1, !dbg !1478, !tbaa !720
  %59 = zext i32 %58 to i64, !dbg !1477
  br label %64, !dbg !1479

; <label>:60:                                     ; preds = %33
  %61 = getelementptr inbounds i8, i8* %39, i64 -17, !dbg !1480
  %62 = bitcast i8* %61 to i64*, !dbg !1481
  %63 = load i64, i64* %62, align 1, !dbg !1481, !tbaa !678
  br label %64, !dbg !1482

; <label>:64:                                     ; preds = %33, %43, %46, %50, %55, %60
  %65 = phi i64 [ %63, %60 ], [ %59, %55 ], [ %54, %50 ], [ %49, %46 ], [ %45, %43 ], [ 0, %33 ], !dbg !1483
  %66 = add i64 %65, %37, !dbg !1484
  %67 = icmp sgt i64 %66, 536870912, !dbg !1489
  br i1 %67, label %68, label %69, !dbg !1490

; <label>:68:                                     ; preds = %64
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0)) #5, !dbg !1491
  br label %143, !dbg !1492

; <label>:69:                                     ; preds = %64
  %70 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1493, !tbaa !363
  %71 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1494, !tbaa !429
  %72 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %71, i64 1, !dbg !1495
  %73 = load %struct.redisObject*, %struct.redisObject** %72, align 8, !dbg !1495, !tbaa !432
  %74 = tail call %struct.redisObject* @dbUnshareStringValue(%struct.redisDb* %70, %struct.redisObject* %73, %struct.redisObject* nonnull %8) #5, !dbg !1496
  %75 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %74, i64 0, i32 2, !dbg !1497
  %76 = load i8*, i8** %75, align 8, !dbg !1497, !tbaa !434
  %77 = load i8*, i8** %38, align 8, !dbg !1498, !tbaa !434
  %78 = getelementptr inbounds i8, i8* %77, i64 -1, !dbg !1501
  %79 = load i8, i8* %78, align 1, !dbg !1501, !tbaa !444
  %80 = trunc i8 %79 to i3, !dbg !1503
  switch i3 %80, label %102 [
    i3 0, label %81
    i3 1, label %84
    i3 2, label %88
    i3 3, label %93
    i3 -4, label %98
  ], !dbg !1503

; <label>:81:                                     ; preds = %69
  %82 = lshr i8 %79, 3, !dbg !1504
  %83 = zext i8 %82 to i64, !dbg !1504
  br label %102, !dbg !1505

; <label>:84:                                     ; preds = %69
  %85 = getelementptr inbounds i8, i8* %77, i64 -3, !dbg !1506
  %86 = load i8, i8* %85, align 1, !dbg !1507, !tbaa !444
  %87 = zext i8 %86 to i64, !dbg !1506
  br label %102, !dbg !1508

; <label>:88:                                     ; preds = %69
  %89 = getelementptr inbounds i8, i8* %77, i64 -5, !dbg !1509
  %90 = bitcast i8* %89 to i16*, !dbg !1510
  %91 = load i16, i16* %90, align 1, !dbg !1510, !tbaa !715
  %92 = zext i16 %91 to i64, !dbg !1509
  br label %102, !dbg !1511

; <label>:93:                                     ; preds = %69
  %94 = getelementptr inbounds i8, i8* %77, i64 -9, !dbg !1512
  %95 = bitcast i8* %94 to i32*, !dbg !1513
  %96 = load i32, i32* %95, align 1, !dbg !1513, !tbaa !720
  %97 = zext i32 %96 to i64, !dbg !1512
  br label %102, !dbg !1514

; <label>:98:                                     ; preds = %69
  %99 = getelementptr inbounds i8, i8* %77, i64 -17, !dbg !1515
  %100 = bitcast i8* %99 to i64*, !dbg !1516
  %101 = load i64, i64* %100, align 1, !dbg !1516, !tbaa !678
  br label %102, !dbg !1517

; <label>:102:                                    ; preds = %69, %81, %84, %88, %93, %98
  %103 = phi i64 [ %101, %98 ], [ %97, %93 ], [ %92, %88 ], [ %87, %84 ], [ %83, %81 ], [ 0, %69 ], !dbg !1518
  %104 = tail call i8* @sdscatlen(i8* %76, i8* %77, i64 %103) #5, !dbg !1519
  store i8* %104, i8** %75, align 8, !dbg !1520, !tbaa !434
  %105 = getelementptr inbounds i8, i8* %104, i64 -1, !dbg !1523
  %106 = load i8, i8* %105, align 1, !dbg !1523, !tbaa !444
  %107 = trunc i8 %106 to i3, !dbg !1525
  switch i3 %107, label %129 [
    i3 0, label %108
    i3 1, label %111
    i3 2, label %115
    i3 3, label %120
    i3 -4, label %125
  ], !dbg !1525

; <label>:108:                                    ; preds = %102
  %109 = lshr i8 %106, 3, !dbg !1526
  %110 = zext i8 %109 to i64, !dbg !1526
  br label %129, !dbg !1527

; <label>:111:                                    ; preds = %102
  %112 = getelementptr inbounds i8, i8* %104, i64 -3, !dbg !1528
  %113 = load i8, i8* %112, align 1, !dbg !1529, !tbaa !444
  %114 = zext i8 %113 to i64, !dbg !1528
  br label %129, !dbg !1530

; <label>:115:                                    ; preds = %102
  %116 = getelementptr inbounds i8, i8* %104, i64 -5, !dbg !1531
  %117 = bitcast i8* %116 to i16*, !dbg !1532
  %118 = load i16, i16* %117, align 1, !dbg !1532, !tbaa !715
  %119 = zext i16 %118 to i64, !dbg !1531
  br label %129, !dbg !1533

; <label>:120:                                    ; preds = %102
  %121 = getelementptr inbounds i8, i8* %104, i64 -9, !dbg !1534
  %122 = bitcast i8* %121 to i32*, !dbg !1535
  %123 = load i32, i32* %122, align 1, !dbg !1535, !tbaa !720
  %124 = zext i32 %123 to i64, !dbg !1534
  br label %129, !dbg !1536

; <label>:125:                                    ; preds = %102
  %126 = getelementptr inbounds i8, i8* %104, i64 -17, !dbg !1537
  %127 = bitcast i8* %126 to i64*, !dbg !1538
  %128 = load i64, i64* %127, align 1, !dbg !1538, !tbaa !678
  br label %129, !dbg !1539

; <label>:129:                                    ; preds = %125, %120, %115, %111, %108, %102, %10
  %130 = phi i64 [ %29, %10 ], [ %128, %125 ], [ %124, %120 ], [ %119, %115 ], [ %114, %111 ], [ %110, %108 ], [ 0, %102 ], !dbg !1540
  %131 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1541, !tbaa !363
  %132 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1542, !tbaa !429
  %133 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %132, i64 1, !dbg !1543
  %134 = load %struct.redisObject*, %struct.redisObject** %133, align 8, !dbg !1543, !tbaa !432
  tail call void @signalModifiedKey(%struct.redisDb* %131, %struct.redisObject* %134) #5, !dbg !1544
  %135 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1545, !tbaa !429
  %136 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %135, i64 1, !dbg !1546
  %137 = load %struct.redisObject*, %struct.redisObject** %136, align 8, !dbg !1546, !tbaa !432
  %138 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1547, !tbaa !363
  %139 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %138, i64 0, i32 5, !dbg !1548
  %140 = load i32, i32* %139, align 8, !dbg !1548, !tbaa !397
  tail call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), %struct.redisObject* %137, i32 %140) #5, !dbg !1549
  %141 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1550, !tbaa !382
  %142 = add nsw i64 %141, 1, !dbg !1550
  store i64 %142, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1550, !tbaa !382
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %130) #5, !dbg !1551
  br label %143, !dbg !1552

; <label>:143:                                    ; preds = %68, %30, %129
  ret void, !dbg !1552
}

; Function Attrs: noredzone
declare dso_local void @incrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @strlenCommand(%struct.client*) local_unnamed_addr #0 !dbg !1553 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1558
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1558, !tbaa !429
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !1560
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !1560, !tbaa !432
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1561, !tbaa !528
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #5, !dbg !1562
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !1564
  br i1 %8, label %14, label %9, !dbg !1565

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 0) #5, !dbg !1566
  %11 = icmp eq i32 %10, 0, !dbg !1566
  br i1 %11, label %12, label %14, !dbg !1567

; <label>:12:                                     ; preds = %9
  %13 = tail call i64 @stringObjectLen(%struct.redisObject* nonnull %7) #5, !dbg !1568
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %13) #5, !dbg !1569
  br label %14, !dbg !1570

; <label>:14:                                     ; preds = %1, %9, %12
  ret void, !dbg !1570
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!55, !56, !57}
!llvm.ident = !{!58}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/t_string.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !7, !8, !9, !25, !35, !45}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!8 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !11, line: 51, size: 24, elements: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !{!13, !19, !20, !21}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !10, file: !11, line: 52, baseType: !14, size: 8)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !15, line: 24, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !17, line: 43, baseType: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !10, file: !11, line: 53, baseType: !14, size: 8, offset: 8)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !10, file: !11, line: 54, baseType: !18, size: 8, offset: 16)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !10, file: !11, line: 55, baseType: !22, offset: 24)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: -1)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !11, line: 57, size: 40, elements: !27)
!27 = !{!28, !32, !33, !34}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !26, file: !11, line: 58, baseType: !29, size: 16)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !15, line: 36, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !17, line: 57, baseType: !31)
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !26, file: !11, line: 59, baseType: !29, size: 16, offset: 16)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !26, file: !11, line: 60, baseType: !18, size: 8, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !26, file: !11, line: 61, baseType: !22, offset: 40)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !11, line: 63, size: 72, elements: !37)
!37 = !{!38, !42, !43, !44}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !36, file: !11, line: 64, baseType: !39, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !15, line: 48, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !17, line: 79, baseType: !41)
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !36, file: !11, line: 65, baseType: !39, size: 32, offset: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !36, file: !11, line: 66, baseType: !18, size: 8, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !36, file: !11, line: 67, baseType: !22, offset: 72)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !11, line: 69, size: 136, elements: !47)
!47 = !{!48, !52, !53, !54}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !46, file: !11, line: 70, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !15, line: 60, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !17, line: 105, baseType: !51)
!51 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !46, file: !11, line: 71, baseType: !49, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !46, file: !11, line: 72, baseType: !18, size: 8, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !46, file: !11, line: 73, baseType: !22, offset: 136)
!55 = !{i32 2, !"Dwarf Version", i32 4}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 4}
!58 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!59 = distinct !DISubprogram(name: "setGenericCommand", scope: !1, file: !1, line: 67, type: !60, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !304)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !62, !69, !175, !175, !175, !69, !175, !175}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !64, line: 780, baseType: !65)
!64 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !64, line: 723, size: 135360, elements: !66)
!66 = !{!67, !68, !70, !174, !184, !186, !191, !192, !193, !194, !196, !220, !221, !222, !223, !224, !225, !226, !227, !230, !231, !232, !233, !234, !235, !236, !237, !242, !243, !244, !245, !246, !247, !248, !249, !253, !254, !258, !259, !275, !276, !293, !294, !295, !296, !297, !298, !299, !300}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !65, file: !64, line: 724, baseType: !49, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !65, file: !64, line: 725, baseType: !69, size: 32, offset: 64)
!69 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !65, file: !64, line: 726, baseType: !71, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !64, line: 656, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !64, line: 647, size: 512, elements: !74)
!74 = !{!75, !138, !139, !140, !141, !142, !143, !145}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !73, file: !64, line: 648, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !78, line: 82, baseType: !79)
!78 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !78, line: 76, size: 768, elements: !80)
!80 = !{!81, !106, !107, !136, !137}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !79, file: !78, line: 77, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !78, line: 65, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !78, line: 58, size: 384, elements: !85)
!85 = !{!86, !92, !96, !97, !101, !105}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !84, file: !78, line: 59, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{!49, !90}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !84, file: !78, line: 60, baseType: !93, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!4, !4, !90}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !84, file: !78, line: 61, baseType: !93, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !84, file: !78, line: 62, baseType: !98, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{!69, !4, !90, !90}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !84, file: !78, line: 63, baseType: !102, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !4, !4}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !84, file: !78, line: 64, baseType: !102, size: 64, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !79, file: !78, line: 78, baseType: !4, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !79, file: !78, line: 79, baseType: !108, size: 512, offset: 128)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 512, elements: !134)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !78, line: 74, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !78, line: 69, size: 256, elements: !111)
!111 = !{!112, !131, !132, !133}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !110, file: !78, line: 70, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !78, line: 56, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !78, line: 47, size: 192, elements: !117)
!117 = !{!118, !119, !129}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !116, file: !78, line: 48, baseType: !4, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !116, file: !78, line: 54, baseType: !120, size: 64, offset: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !116, file: !78, line: 49, size: 64, elements: !121)
!121 = !{!122, !123, !124, !127}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !120, file: !78, line: 50, baseType: !4, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !120, file: !78, line: 51, baseType: !49, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !120, file: !78, line: 52, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !15, line: 56, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !17, line: 103, baseType: !7)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !120, file: !78, line: 53, baseType: !128, size: 64)
!128 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !116, file: !78, line: 55, baseType: !130, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !110, file: !78, line: 71, baseType: !51, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !110, file: !78, line: 72, baseType: !51, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !110, file: !78, line: 73, baseType: !51, size: 64, offset: 192)
!134 = !{!135}
!135 = !DISubrange(count: 2)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !79, file: !78, line: 80, baseType: !7, size: 64, offset: 640)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !79, file: !78, line: 81, baseType: !51, size: 64, offset: 704)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !73, file: !64, line: 649, baseType: !76, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !73, file: !64, line: 650, baseType: !76, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !73, file: !64, line: 651, baseType: !76, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !73, file: !64, line: 652, baseType: !76, size: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !73, file: !64, line: 653, baseType: !69, size: 32, offset: 320)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !73, file: !64, line: 654, baseType: !144, size: 64, offset: 384)
!144 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !73, file: !64, line: 655, baseType: !146, size: 64, offset: 448)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !148, line: 54, baseType: !149)
!148 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !148, line: 47, size: 384, elements: !150)
!150 = !{!151, !160, !161, !165, !169, !173}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !149, file: !148, line: 48, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !148, line: 40, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !148, line: 36, size: 192, elements: !155)
!155 = !{!156, !158, !159}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !154, file: !148, line: 37, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !154, file: !148, line: 38, baseType: !157, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !154, file: !148, line: 39, baseType: !4, size: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !149, file: !148, line: 49, baseType: !152, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !149, file: !148, line: 50, baseType: !162, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!4, !4}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !149, file: !148, line: 51, baseType: !166, size: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !4}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !149, file: !148, line: 52, baseType: !170, size: 64, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!69, !4, !4}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !149, file: !148, line: 53, baseType: !51, size: 64, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !65, file: !64, line: 727, baseType: !175, size: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !64, line: 622, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !64, line: 614, size: 128, elements: !178)
!178 = !{!179, !180, !181, !182, !183}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !177, file: !64, line: 615, baseType: !41, size: 4, flags: DIFlagBitField, extraData: i64 0)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !177, file: !64, line: 616, baseType: !41, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !177, file: !64, line: 617, baseType: !41, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !177, file: !64, line: 620, baseType: !69, size: 32, offset: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !177, file: !64, line: 621, baseType: !4, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !65, file: !64, line: 728, baseType: !185, size: 64, offset: 256)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !11, line: 43, baseType: !5)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !65, file: !64, line: 729, baseType: !187, size: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !188, line: 40, baseType: !189)
!188 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !190, line: 129, baseType: !51)
!190 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !65, file: !64, line: 730, baseType: !185, size: 64, offset: 384)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !65, file: !64, line: 734, baseType: !187, size: 64, offset: 448)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !65, file: !64, line: 735, baseType: !69, size: 32, offset: 512)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !65, file: !64, line: 736, baseType: !195, size: 64, offset: 576)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !65, file: !64, line: 737, baseType: !197, size: 64, offset: 640)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !64, line: 1307, size: 640, elements: !199)
!199 = !{!200, !201, !206, !207, !208, !209, !215, !216, !217, !218, !219}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !198, file: !64, line: 1308, baseType: !5, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !198, file: !64, line: 1309, baseType: !202, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !64, line: 1305, baseType: !204)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !62}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !198, file: !64, line: 1310, baseType: !69, size: 32, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !198, file: !64, line: 1311, baseType: !5, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !64, line: 1312, baseType: !69, size: 32, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !198, file: !64, line: 1315, baseType: !210, size: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !64, line: 1306, baseType: !212)
!212 = !DISubroutineType(types: !213)
!213 = !{!214, !197, !195, !69, !214}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !198, file: !64, line: 1317, baseType: !69, size: 32, offset: 384)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !198, file: !64, line: 1318, baseType: !69, size: 32, offset: 416)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !198, file: !64, line: 1319, baseType: !69, size: 32, offset: 448)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !198, file: !64, line: 1320, baseType: !144, size: 64, offset: 512)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !198, file: !64, line: 1320, baseType: !144, size: 64, offset: 576)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !65, file: !64, line: 737, baseType: !197, size: 64, offset: 704)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !65, file: !64, line: 738, baseType: !69, size: 32, offset: 768)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !65, file: !64, line: 739, baseType: !69, size: 32, offset: 800)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !65, file: !64, line: 740, baseType: !7, size: 64, offset: 832)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !65, file: !64, line: 741, baseType: !146, size: 64, offset: 896)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !65, file: !64, line: 742, baseType: !8, size: 64, offset: 960)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !65, file: !64, line: 743, baseType: !187, size: 64, offset: 1024)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !65, file: !64, line: 745, baseType: !228, size: 64, offset: 1088)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !229, line: 34, baseType: !7)
!229 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!230 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !65, file: !64, line: 746, baseType: !228, size: 64, offset: 1152)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !65, file: !64, line: 747, baseType: !228, size: 64, offset: 1216)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !65, file: !64, line: 748, baseType: !69, size: 32, offset: 1280)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !65, file: !64, line: 749, baseType: !69, size: 32, offset: 1312)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !65, file: !64, line: 750, baseType: !69, size: 32, offset: 1344)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !65, file: !64, line: 751, baseType: !69, size: 32, offset: 1376)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !65, file: !64, line: 752, baseType: !69, size: 32, offset: 1408)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !65, file: !64, line: 753, baseType: !238, size: 64, offset: 1472)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !239, line: 173, baseType: !240)
!239 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !190, line: 100, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !190, line: 44, baseType: !7)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !65, file: !64, line: 754, baseType: !238, size: 64, offset: 1536)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !65, file: !64, line: 755, baseType: !185, size: 64, offset: 1600)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !65, file: !64, line: 756, baseType: !144, size: 64, offset: 1664)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !65, file: !64, line: 757, baseType: !144, size: 64, offset: 1728)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !65, file: !64, line: 758, baseType: !144, size: 64, offset: 1792)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !65, file: !64, line: 759, baseType: !144, size: 64, offset: 1856)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !65, file: !64, line: 760, baseType: !144, size: 64, offset: 1920)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !65, file: !64, line: 763, baseType: !250, size: 328, offset: 1984)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 328, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 41)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !65, file: !64, line: 764, baseType: !69, size: 32, offset: 2336)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !65, file: !64, line: 765, baseType: !255, size: 368, offset: 2368)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 368, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 46)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !65, file: !64, line: 766, baseType: !69, size: 32, offset: 2752)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !65, file: !64, line: 767, baseType: !260, size: 256, offset: 2816)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !64, line: 673, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !64, line: 665, size: 256, elements: !262)
!262 = !{!263, !271, !272, !273, !274}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !261, file: !64, line: 666, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !64, line: 663, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !64, line: 659, size: 192, elements: !267)
!267 = !{!268, !269, !270}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !266, file: !64, line: 660, baseType: !195, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !266, file: !64, line: 661, baseType: !69, size: 32, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !266, file: !64, line: 662, baseType: !197, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !261, file: !64, line: 667, baseType: !69, size: 32, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !261, file: !64, line: 668, baseType: !69, size: 32, offset: 96)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !261, file: !64, line: 671, baseType: !69, size: 32, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !261, file: !64, line: 672, baseType: !228, size: 64, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !65, file: !64, line: 768, baseType: !69, size: 32, offset: 3072)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !65, file: !64, line: 769, baseType: !277, size: 704, offset: 3136)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !64, line: 703, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !64, line: 677, size: 704, elements: !279)
!279 = !{!280, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !278, file: !64, line: 679, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !64, line: 52, baseType: !144)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !278, file: !64, line: 683, baseType: !76, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !278, file: !64, line: 685, baseType: !175, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !278, file: !64, line: 689, baseType: !187, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !278, file: !64, line: 690, baseType: !175, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !278, file: !64, line: 691, baseType: !175, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !278, file: !64, line: 692, baseType: !281, size: 64, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !278, file: !64, line: 692, baseType: !281, size: 64, offset: 448)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !278, file: !64, line: 693, baseType: !69, size: 32, offset: 512)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !278, file: !64, line: 696, baseType: !69, size: 32, offset: 544)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !278, file: !64, line: 697, baseType: !144, size: 64, offset: 576)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !278, file: !64, line: 700, baseType: !4, size: 64, offset: 640)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !65, file: !64, line: 770, baseType: !144, size: 64, offset: 3840)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !65, file: !64, line: 771, baseType: !146, size: 64, offset: 3904)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !65, file: !64, line: 772, baseType: !76, size: 64, offset: 3968)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !65, file: !64, line: 773, baseType: !146, size: 64, offset: 4032)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !65, file: !64, line: 774, baseType: !185, size: 64, offset: 4096)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !65, file: !64, line: 775, baseType: !152, size: 64, offset: 4160)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !65, file: !64, line: 778, baseType: !69, size: 32, offset: 4224)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !65, file: !64, line: 779, baseType: !301, size: 131072, offset: 4256)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 131072, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 16384)
!304 = !{!305, !306, !307, !308, !309, !310, !311, !312, !313}
!305 = !DILocalVariable(name: "c", arg: 1, scope: !59, file: !1, line: 67, type: !62)
!306 = !DILocalVariable(name: "flags", arg: 2, scope: !59, file: !1, line: 67, type: !69)
!307 = !DILocalVariable(name: "key", arg: 3, scope: !59, file: !1, line: 67, type: !175)
!308 = !DILocalVariable(name: "val", arg: 4, scope: !59, file: !1, line: 67, type: !175)
!309 = !DILocalVariable(name: "expire", arg: 5, scope: !59, file: !1, line: 67, type: !175)
!310 = !DILocalVariable(name: "unit", arg: 6, scope: !59, file: !1, line: 67, type: !69)
!311 = !DILocalVariable(name: "ok_reply", arg: 7, scope: !59, file: !1, line: 67, type: !175)
!312 = !DILocalVariable(name: "abort_reply", arg: 8, scope: !59, file: !1, line: 67, type: !175)
!313 = !DILocalVariable(name: "milliseconds", scope: !59, file: !1, line: 68, type: !144)
!314 = !DILocation(line: 67, column: 32, scope: !59)
!315 = !DILocation(line: 67, column: 39, scope: !59)
!316 = !DILocation(line: 67, column: 52, scope: !59)
!317 = !DILocation(line: 67, column: 63, scope: !59)
!318 = !DILocation(line: 67, column: 74, scope: !59)
!319 = !DILocation(line: 67, column: 86, scope: !59)
!320 = !DILocation(line: 67, column: 98, scope: !59)
!321 = !DILocation(line: 67, column: 114, scope: !59)
!322 = !DILocation(line: 68, column: 5, scope: !59)
!323 = !DILocation(line: 68, column: 15, scope: !59)
!324 = !{!325, !325, i64 0}
!325 = !{!"long long", !326, i64 0}
!326 = !{!"omnipotent char", !327, i64 0}
!327 = !{!"Simple C/C++ TBAA"}
!328 = !DILocation(line: 70, column: 9, scope: !329)
!329 = distinct !DILexicalBlock(scope: !59, file: !1, line: 70, column: 9)
!330 = !DILocation(line: 70, column: 9, scope: !59)
!331 = !DILocation(line: 71, column: 13, scope: !332)
!332 = distinct !DILexicalBlock(scope: !333, file: !1, line: 71, column: 13)
!333 = distinct !DILexicalBlock(scope: !329, file: !1, line: 70, column: 17)
!334 = !DILocation(line: 71, column: 74, scope: !332)
!335 = !DILocation(line: 71, column: 13, scope: !333)
!336 = !DILocation(line: 73, column: 13, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !1, line: 73, column: 13)
!338 = !DILocation(line: 73, column: 26, scope: !337)
!339 = !DILocation(line: 73, column: 13, scope: !333)
!340 = !DILocation(line: 74, column: 66, scope: !341)
!341 = distinct !DILexicalBlock(scope: !337, file: !1, line: 73, column: 32)
!342 = !{!343, !346, i64 80}
!343 = !{!"client", !344, i64 0, !345, i64 8, !346, i64 16, !346, i64 24, !346, i64 32, !344, i64 40, !346, i64 48, !344, i64 56, !345, i64 64, !346, i64 72, !346, i64 80, !346, i64 88, !345, i64 96, !345, i64 100, !344, i64 104, !346, i64 112, !325, i64 120, !344, i64 128, !344, i64 136, !344, i64 144, !344, i64 152, !345, i64 160, !345, i64 164, !345, i64 168, !345, i64 172, !345, i64 176, !344, i64 184, !344, i64 192, !346, i64 200, !325, i64 208, !325, i64 216, !325, i64 224, !325, i64 232, !325, i64 240, !326, i64 248, !345, i64 292, !326, i64 296, !345, i64 344, !347, i64 352, !345, i64 384, !348, i64 392, !325, i64 480, !346, i64 488, !346, i64 496, !346, i64 504, !346, i64 512, !346, i64 520, !345, i64 528, !326, i64 532}
!344 = !{!"long", !326, i64 0}
!345 = !{!"int", !326, i64 0}
!346 = !{!"any pointer", !326, i64 0}
!347 = !{!"multiState", !346, i64 0, !345, i64 8, !345, i64 12, !345, i64 16, !344, i64 24}
!348 = !{!"blockingState", !325, i64 0, !346, i64 8, !346, i64 16, !344, i64 24, !346, i64 32, !346, i64 40, !325, i64 48, !325, i64 56, !345, i64 64, !345, i64 68, !325, i64 72, !346, i64 80}
!349 = !DILocation(line: 74, column: 71, scope: !341)
!350 = !{!351, !346, i64 0}
!351 = !{!"redisCommand", !346, i64 0, !346, i64 8, !345, i64 16, !346, i64 24, !345, i64 32, !346, i64 40, !345, i64 48, !345, i64 52, !345, i64 56, !325, i64 64, !325, i64 72}
!352 = !DILocation(line: 74, column: 13, scope: !341)
!353 = !DILocation(line: 75, column: 13, scope: !341)
!354 = !DILocation(line: 77, column: 18, scope: !355)
!355 = distinct !DILexicalBlock(scope: !333, file: !1, line: 77, column: 13)
!356 = !DILocation(line: 77, column: 13, scope: !333)
!357 = !DILocation(line: 77, column: 48, scope: !355)
!358 = !DILocation(line: 77, column: 35, scope: !355)
!359 = !DILocation(line: 80, column: 16, scope: !360)
!360 = distinct !DILexicalBlock(scope: !59, file: !1, line: 80, column: 9)
!361 = !DILocation(line: 80, column: 29, scope: !360)
!362 = !DILocation(line: 80, column: 50, scope: !360)
!363 = !{!343, !346, i64 16}
!364 = !DILocation(line: 80, column: 32, scope: !360)
!365 = !DILocation(line: 80, column: 58, scope: !360)
!366 = !DILocation(line: 80, column: 67, scope: !360)
!367 = !DILocation(line: 81, column: 16, scope: !360)
!368 = !DILocation(line: 0, scope: !360)
!369 = !DILocation(line: 81, column: 29, scope: !360)
!370 = !DILocation(line: 81, column: 50, scope: !360)
!371 = !DILocation(line: 81, column: 32, scope: !360)
!372 = !DILocation(line: 81, column: 58, scope: !360)
!373 = !DILocation(line: 80, column: 9, scope: !59)
!374 = !DILocation(line: 83, column: 21, scope: !375)
!375 = distinct !DILexicalBlock(scope: !360, file: !1, line: 82, column: 5)
!376 = !DILocation(line: 83, column: 56, scope: !375)
!377 = !DILocation(line: 83, column: 9, scope: !375)
!378 = !DILocation(line: 84, column: 9, scope: !375)
!379 = !DILocation(line: 86, column: 15, scope: !59)
!380 = !DILocation(line: 86, column: 5, scope: !59)
!381 = !DILocation(line: 87, column: 17, scope: !59)
!382 = !{!383, !325, i64 2080}
!383 = !{!"redisServer", !345, i64 0, !346, i64 8, !346, i64 16, !346, i64 24, !345, i64 32, !345, i64 36, !345, i64 40, !346, i64 48, !346, i64 56, !346, i64 64, !346, i64 72, !345, i64 80, !345, i64 84, !345, i64 88, !345, i64 92, !346, i64 96, !346, i64 104, !345, i64 112, !345, i64 116, !326, i64 120, !345, i64 164, !344, i64 168, !345, i64 176, !346, i64 184, !346, i64 192, !346, i64 200, !326, i64 208, !345, i64 216, !345, i64 220, !326, i64 224, !345, i64 352, !346, i64 360, !345, i64 368, !326, i64 372, !345, i64 436, !345, i64 440, !326, i64 444, !345, i64 508, !346, i64 512, !346, i64 520, !346, i64 528, !346, i64 536, !346, i64 544, !346, i64 552, !346, i64 560, !345, i64 568, !325, i64 576, !326, i64 584, !346, i64 840, !344, i64 848, !345, i64 856, !345, i64 860, !344, i64 864, !344, i64 872, !344, i64 880, !344, i64 888, !346, i64 896, !346, i64 904, !346, i64 912, !346, i64 920, !346, i64 928, !346, i64 936, !346, i64 944, !346, i64 952, !346, i64 960, !346, i64 968, !346, i64 976, !346, i64 984, !346, i64 992, !344, i64 1000, !325, i64 1008, !325, i64 1016, !325, i64 1024, !384, i64 1032, !325, i64 1040, !325, i64 1048, !325, i64 1056, !325, i64 1064, !325, i64 1072, !325, i64 1080, !325, i64 1088, !325, i64 1096, !325, i64 1104, !344, i64 1112, !325, i64 1120, !384, i64 1128, !325, i64 1136, !325, i64 1144, !325, i64 1152, !325, i64 1160, !346, i64 1168, !325, i64 1176, !325, i64 1184, !344, i64 1192, !385, i64 1200, !325, i64 1240, !325, i64 1248, !344, i64 1256, !344, i64 1264, !326, i64 1272, !345, i64 1728, !345, i64 1732, !345, i64 1736, !345, i64 1740, !345, i64 1744, !344, i64 1752, !345, i64 1760, !345, i64 1764, !345, i64 1768, !345, i64 1772, !344, i64 1776, !344, i64 1784, !345, i64 1792, !345, i64 1796, !345, i64 1800, !345, i64 1804, !326, i64 1808, !345, i64 1880, !345, i64 1884, !346, i64 1888, !345, i64 1896, !345, i64 1900, !344, i64 1904, !344, i64 1912, !344, i64 1920, !344, i64 1928, !345, i64 1936, !345, i64 1940, !346, i64 1944, !346, i64 1952, !345, i64 1960, !345, i64 1964, !344, i64 1968, !344, i64 1976, !344, i64 1984, !344, i64 1992, !345, i64 2000, !344, i64 2008, !345, i64 2016, !345, i64 2020, !345, i64 2024, !345, i64 2028, !345, i64 2032, !345, i64 2036, !345, i64 2040, !345, i64 2044, !345, i64 2048, !345, i64 2052, !345, i64 2056, !345, i64 2060, !345, i64 2064, !346, i64 2072, !325, i64 2080, !325, i64 2088, !345, i64 2096, !346, i64 2104, !345, i64 2112, !346, i64 2120, !345, i64 2128, !345, i64 2132, !344, i64 2136, !344, i64 2144, !344, i64 2152, !344, i64 2160, !345, i64 2168, !345, i64 2172, !345, i64 2176, !345, i64 2180, !345, i64 2184, !345, i64 2188, !326, i64 2192, !386, i64 2200, !387, i64 2224, !346, i64 2240, !345, i64 2248, !346, i64 2256, !345, i64 2264, !326, i64 2268, !326, i64 2309, !325, i64 2352, !325, i64 2360, !345, i64 2368, !345, i64 2372, !346, i64 2376, !325, i64 2384, !325, i64 2392, !325, i64 2400, !325, i64 2408, !344, i64 2416, !344, i64 2424, !345, i64 2432, !345, i64 2436, !345, i64 2440, !345, i64 2444, !345, i64 2448, !346, i64 2456, !346, i64 2464, !345, i64 2472, !345, i64 2476, !346, i64 2480, !346, i64 2488, !345, i64 2496, !345, i64 2500, !344, i64 2504, !344, i64 2512, !344, i64 2520, !345, i64 2528, !345, i64 2532, !346, i64 2536, !344, i64 2544, !345, i64 2552, !345, i64 2556, !345, i64 2560, !344, i64 2568, !345, i64 2576, !345, i64 2580, !345, i64 2584, !346, i64 2592, !326, i64 2600, !325, i64 2648, !345, i64 2656, !346, i64 2664, !346, i64 2672, !345, i64 2680, !346, i64 2688, !345, i64 2696, !345, i64 2700, !325, i64 2704, !345, i64 2712, !345, i64 2716, !345, i64 2720, !345, i64 2724, !325, i64 2728, !345, i64 2736, !326, i64 2740, !346, i64 2768, !346, i64 2776, !345, i64 2784, !345, i64 2788, !345, i64 2792, !345, i64 2796, !344, i64 2800, !344, i64 2808, !344, i64 2816, !344, i64 2824, !344, i64 2832, !344, i64 2840, !344, i64 2848, !344, i64 2856, !345, i64 2864, !345, i64 2868, !344, i64 2872, !344, i64 2880, !345, i64 2888, !325, i64 2896, !346, i64 2904, !346, i64 2912, !345, i64 2920, !345, i64 2924, !325, i64 2928, !346, i64 2936, !346, i64 2944, !345, i64 2952, !345, i64 2956, !345, i64 2960, !345, i64 2964, !346, i64 2968, !345, i64 2976, !345, i64 2980, !345, i64 2984, !346, i64 2992, !346, i64 3000, !346, i64 3008, !346, i64 3016, !325, i64 3024, !325, i64 3032, !325, i64 3040, !345, i64 3048, !345, i64 3052, !345, i64 3056, !345, i64 3060, !345, i64 3064, !345, i64 3068, !345, i64 3072, !345, i64 3076, !345, i64 3080, !345, i64 3084, !345, i64 3088, !325, i64 3096, !346, i64 3104, !346, i64 3112, !346, i64 3120, !345, i64 3128, !345, i64 3132, !345, i64 3136, !344, i64 3144, !346, i64 3152, !346, i64 3160, !346, i64 3168}
!384 = !{!"double", !326, i64 0}
!385 = !{!"malloc_stats", !344, i64 0, !344, i64 8, !344, i64 16, !344, i64 24, !344, i64 32}
!386 = !{!"", !345, i64 0, !344, i64 8, !325, i64 16}
!387 = !{!"redisOpArray", !346, i64 0, !345, i64 8}
!388 = !DILocation(line: 0, scope: !59)
!389 = !DILocation(line: 88, column: 9, scope: !59)
!390 = !DILocation(line: 88, column: 39, scope: !391)
!391 = distinct !DILexicalBlock(scope: !59, file: !1, line: 88, column: 9)
!392 = !DILocation(line: 88, column: 48, scope: !391)
!393 = !DILocation(line: 88, column: 47, scope: !391)
!394 = !DILocation(line: 88, column: 17, scope: !391)
!395 = !DILocation(line: 89, column: 52, scope: !59)
!396 = !DILocation(line: 89, column: 56, scope: !59)
!397 = !{!398, !345, i64 40}
!398 = !{!"redisDb", !346, i64 0, !346, i64 8, !346, i64 16, !346, i64 24, !346, i64 32, !345, i64 40, !325, i64 48, !346, i64 56}
!399 = !DILocation(line: 89, column: 5, scope: !59)
!400 = !DILocation(line: 91, column: 25, scope: !401)
!401 = distinct !DILexicalBlock(scope: !59, file: !1, line: 90, column: 9)
!402 = !DILocation(line: 91, column: 29, scope: !401)
!403 = !DILocation(line: 90, column: 17, scope: !401)
!404 = !DILocation(line: 92, column: 17, scope: !59)
!405 = !DILocation(line: 92, column: 46, scope: !59)
!406 = !DILocation(line: 92, column: 5, scope: !59)
!407 = !DILocation(line: 93, column: 1, scope: !59)
!408 = distinct !DISubprogram(name: "setCommand", scope: !1, file: !1, line: 96, type: !204, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !409)
!409 = !{!410, !411, !412, !413, !414, !415, !419}
!410 = !DILocalVariable(name: "c", arg: 1, scope: !408, file: !1, line: 96, type: !62)
!411 = !DILocalVariable(name: "j", scope: !408, file: !1, line: 97, type: !69)
!412 = !DILocalVariable(name: "expire", scope: !408, file: !1, line: 98, type: !175)
!413 = !DILocalVariable(name: "unit", scope: !408, file: !1, line: 99, type: !69)
!414 = !DILocalVariable(name: "flags", scope: !408, file: !1, line: 100, type: !69)
!415 = !DILocalVariable(name: "a", scope: !416, file: !1, line: 103, type: !5)
!416 = distinct !DILexicalBlock(scope: !417, file: !1, line: 102, column: 35)
!417 = distinct !DILexicalBlock(scope: !418, file: !1, line: 102, column: 5)
!418 = distinct !DILexicalBlock(scope: !408, file: !1, line: 102, column: 5)
!419 = !DILocalVariable(name: "next", scope: !416, file: !1, line: 104, type: !175)
!420 = !DILocation(line: 96, column: 25, scope: !408)
!421 = !DILocation(line: 98, column: 11, scope: !408)
!422 = !DILocation(line: 99, column: 9, scope: !408)
!423 = !DILocation(line: 100, column: 9, scope: !408)
!424 = !DILocation(line: 97, column: 9, scope: !408)
!425 = !DILocation(line: 102, column: 24, scope: !417)
!426 = !{!343, !345, i64 64}
!427 = !DILocation(line: 102, column: 19, scope: !417)
!428 = !DILocation(line: 0, scope: !408)
!429 = !{!343, !346, i64 72}
!430 = !DILocation(line: 102, column: 5, scope: !418)
!431 = !DILocation(line: 103, column: 19, scope: !416)
!432 = !{!346, !346, i64 0}
!433 = !DILocation(line: 103, column: 31, scope: !416)
!434 = !{!435, !346, i64 8}
!435 = !{!"redisObject", !345, i64 0, !345, i64 0, !345, i64 1, !345, i64 4, !346, i64 8}
!436 = !DILocation(line: 103, column: 15, scope: !416)
!437 = !DILocation(line: 104, column: 25, scope: !416)
!438 = !DILocation(line: 104, column: 22, scope: !416)
!439 = !DILocation(line: 104, column: 57, scope: !416)
!440 = !DILocation(line: 104, column: 48, scope: !416)
!441 = !DILocation(line: 104, column: 15, scope: !416)
!442 = !DILocation(line: 106, column: 14, scope: !443)
!443 = distinct !DILexicalBlock(scope: !416, file: !1, line: 106, column: 13)
!444 = !{!326, !326, i64 0}
!445 = !DILocation(line: 106, column: 26, scope: !443)
!446 = !DILocation(line: 107, column: 14, scope: !443)
!447 = !DILocation(line: 107, column: 26, scope: !443)
!448 = !DILocation(line: 107, column: 45, scope: !443)
!449 = !DILocation(line: 107, column: 50, scope: !443)
!450 = !DILocation(line: 108, column: 21, scope: !443)
!451 = !DILocation(line: 107, column: 58, scope: !443)
!452 = !DILocation(line: 110, column: 19, scope: !453)
!453 = distinct !DILexicalBlock(scope: !443, file: !1, line: 109, column: 9)
!454 = !DILocation(line: 111, column: 9, scope: !453)
!455 = !DILocation(line: 111, column: 33, scope: !456)
!456 = distinct !DILexicalBlock(scope: !443, file: !1, line: 111, column: 20)
!457 = !DILocation(line: 112, column: 21, scope: !456)
!458 = !DILocation(line: 112, column: 33, scope: !456)
!459 = !DILocation(line: 112, column: 52, scope: !456)
!460 = !DILocation(line: 112, column: 57, scope: !456)
!461 = !DILocation(line: 113, column: 28, scope: !456)
!462 = !DILocation(line: 112, column: 65, scope: !456)
!463 = !DILocation(line: 115, column: 19, scope: !464)
!464 = distinct !DILexicalBlock(scope: !456, file: !1, line: 114, column: 9)
!465 = !DILocation(line: 116, column: 9, scope: !464)
!466 = !DILocation(line: 116, column: 33, scope: !467)
!467 = distinct !DILexicalBlock(scope: !456, file: !1, line: 116, column: 20)
!468 = !DILocation(line: 117, column: 21, scope: !467)
!469 = !DILocation(line: 117, column: 33, scope: !467)
!470 = !DILocation(line: 117, column: 52, scope: !467)
!471 = !DILocation(line: 117, column: 57, scope: !467)
!472 = !DILocation(line: 117, column: 65, scope: !467)
!473 = !DILocation(line: 118, column: 28, scope: !467)
!474 = !DILocation(line: 118, column: 45, scope: !467)
!475 = !DILocation(line: 118, column: 42, scope: !467)
!476 = !DILocation(line: 120, column: 19, scope: !477)
!477 = distinct !DILexicalBlock(scope: !467, file: !1, line: 119, column: 9)
!478 = !DILocation(line: 123, column: 14, scope: !477)
!479 = !DILocation(line: 124, column: 9, scope: !477)
!480 = !DILocation(line: 124, column: 33, scope: !481)
!481 = distinct !DILexicalBlock(scope: !467, file: !1, line: 124, column: 20)
!482 = !DILocation(line: 125, column: 21, scope: !481)
!483 = !DILocation(line: 125, column: 33, scope: !481)
!484 = !DILocation(line: 125, column: 52, scope: !481)
!485 = !DILocation(line: 125, column: 57, scope: !481)
!486 = !DILocation(line: 125, column: 65, scope: !481)
!487 = !DILocation(line: 126, column: 28, scope: !481)
!488 = !DILocation(line: 126, column: 45, scope: !481)
!489 = !DILocation(line: 126, column: 42, scope: !481)
!490 = !DILocation(line: 128, column: 19, scope: !491)
!491 = distinct !DILexicalBlock(scope: !481, file: !1, line: 127, column: 9)
!492 = !DILocation(line: 131, column: 14, scope: !491)
!493 = !DILocation(line: 133, column: 31, scope: !494)
!494 = distinct !DILexicalBlock(scope: !481, file: !1, line: 132, column: 16)
!495 = !{!496, !346, i64 128}
!496 = !{!"sharedObjectsStruct", !346, i64 0, !346, i64 8, !346, i64 16, !346, i64 24, !346, i64 32, !346, i64 40, !346, i64 48, !346, i64 56, !346, i64 64, !346, i64 72, !346, i64 80, !346, i64 88, !346, i64 96, !346, i64 104, !346, i64 112, !346, i64 120, !346, i64 128, !346, i64 136, !346, i64 144, !346, i64 152, !346, i64 160, !346, i64 168, !346, i64 176, !346, i64 184, !346, i64 192, !346, i64 200, !346, i64 208, !346, i64 216, !346, i64 224, !346, i64 232, !346, i64 240, !346, i64 248, !346, i64 256, !346, i64 264, !346, i64 272, !346, i64 280, !346, i64 288, !346, i64 296, !346, i64 304, !346, i64 312, !346, i64 320, !346, i64 328, !346, i64 336, !346, i64 344, !346, i64 352, !346, i64 360, !326, i64 368, !326, i64 448, !326, i64 80448, !326, i64 80704, !346, i64 80960, !346, i64 80968}
!497 = !DILocation(line: 133, column: 13, scope: !494)
!498 = !DILocation(line: 102, column: 31, scope: !417)
!499 = distinct !{!499, !430, !500}
!500 = !DILocation(line: 136, column: 5, scope: !418)
!501 = !DILocation(line: 0, scope: !477)
!502 = !DILocation(line: 138, column: 36, scope: !408)
!503 = !DILocation(line: 138, column: 18, scope: !408)
!504 = !DILocation(line: 138, column: 8, scope: !408)
!505 = !DILocation(line: 138, column: 5, scope: !408)
!506 = !DILocation(line: 138, column: 16, scope: !408)
!507 = !DILocation(line: 139, column: 34, scope: !408)
!508 = !DILocation(line: 139, column: 31, scope: !408)
!509 = !DILocation(line: 139, column: 42, scope: !408)
!510 = !DILocation(line: 139, column: 5, scope: !408)
!511 = !DILocation(line: 140, column: 1, scope: !408)
!512 = distinct !DISubprogram(name: "setnxCommand", scope: !1, file: !1, line: 142, type: !204, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !513)
!513 = !{!514}
!514 = !DILocalVariable(name: "c", arg: 1, scope: !512, file: !1, line: 142, type: !62)
!515 = !DILocation(line: 142, column: 27, scope: !512)
!516 = !DILocation(line: 143, column: 39, scope: !512)
!517 = !DILocation(line: 143, column: 36, scope: !512)
!518 = !DILocation(line: 143, column: 18, scope: !512)
!519 = !DILocation(line: 143, column: 8, scope: !512)
!520 = !DILocation(line: 143, column: 5, scope: !512)
!521 = !DILocation(line: 143, column: 16, scope: !512)
!522 = !DILocation(line: 144, column: 39, scope: !512)
!523 = !DILocation(line: 144, column: 36, scope: !512)
!524 = !DILocation(line: 144, column: 47, scope: !512)
!525 = !DILocation(line: 144, column: 72, scope: !512)
!526 = !{!496, !346, i64 40}
!527 = !DILocation(line: 144, column: 84, scope: !512)
!528 = !{!496, !346, i64 32}
!529 = !DILocation(line: 144, column: 5, scope: !512)
!530 = !DILocation(line: 145, column: 1, scope: !512)
!531 = distinct !DISubprogram(name: "setexCommand", scope: !1, file: !1, line: 147, type: !204, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !532)
!532 = !{!533}
!533 = !DILocalVariable(name: "c", arg: 1, scope: !531, file: !1, line: 147, type: !62)
!534 = !DILocation(line: 147, column: 27, scope: !531)
!535 = !DILocation(line: 148, column: 39, scope: !531)
!536 = !DILocation(line: 148, column: 36, scope: !531)
!537 = !DILocation(line: 148, column: 18, scope: !531)
!538 = !DILocation(line: 148, column: 8, scope: !531)
!539 = !DILocation(line: 148, column: 5, scope: !531)
!540 = !DILocation(line: 148, column: 16, scope: !531)
!541 = !DILocation(line: 149, column: 45, scope: !531)
!542 = !DILocation(line: 149, column: 42, scope: !531)
!543 = !DILocation(line: 149, column: 53, scope: !531)
!544 = !DILocation(line: 149, column: 64, scope: !531)
!545 = !DILocation(line: 149, column: 5, scope: !531)
!546 = !DILocation(line: 150, column: 1, scope: !531)
!547 = distinct !DISubprogram(name: "psetexCommand", scope: !1, file: !1, line: 152, type: !204, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !548)
!548 = !{!549}
!549 = !DILocalVariable(name: "c", arg: 1, scope: !547, file: !1, line: 152, type: !62)
!550 = !DILocation(line: 152, column: 28, scope: !547)
!551 = !DILocation(line: 153, column: 39, scope: !547)
!552 = !DILocation(line: 153, column: 36, scope: !547)
!553 = !DILocation(line: 153, column: 18, scope: !547)
!554 = !DILocation(line: 153, column: 8, scope: !547)
!555 = !DILocation(line: 153, column: 5, scope: !547)
!556 = !DILocation(line: 153, column: 16, scope: !547)
!557 = !DILocation(line: 154, column: 45, scope: !547)
!558 = !DILocation(line: 154, column: 42, scope: !547)
!559 = !DILocation(line: 154, column: 53, scope: !547)
!560 = !DILocation(line: 154, column: 64, scope: !547)
!561 = !DILocation(line: 154, column: 5, scope: !547)
!562 = !DILocation(line: 155, column: 1, scope: !547)
!563 = distinct !DISubprogram(name: "getGenericCommand", scope: !1, file: !1, line: 157, type: !564, isLocal: false, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !566)
!564 = !DISubroutineType(types: !565)
!565 = !{!69, !62}
!566 = !{!567, !568}
!567 = !DILocalVariable(name: "c", arg: 1, scope: !563, file: !1, line: 157, type: !62)
!568 = !DILocalVariable(name: "o", scope: !563, file: !1, line: 158, type: !175)
!569 = !DILocation(line: 157, column: 31, scope: !563)
!570 = !DILocation(line: 160, column: 40, scope: !571)
!571 = distinct !DILexicalBlock(scope: !563, file: !1, line: 160, column: 9)
!572 = !DILocation(line: 160, column: 37, scope: !571)
!573 = !DILocation(line: 160, column: 55, scope: !571)
!574 = !{!496, !346, i64 80}
!575 = !DILocation(line: 160, column: 14, scope: !571)
!576 = !DILocation(line: 158, column: 11, scope: !563)
!577 = !DILocation(line: 160, column: 66, scope: !571)
!578 = !DILocation(line: 160, column: 9, scope: !563)
!579 = !DILocation(line: 163, column: 12, scope: !580)
!580 = distinct !DILexicalBlock(scope: !563, file: !1, line: 163, column: 9)
!581 = !DILocation(line: 163, column: 17, scope: !580)
!582 = !DILocation(line: 163, column: 9, scope: !563)
!583 = !DILocation(line: 164, column: 27, scope: !584)
!584 = distinct !DILexicalBlock(scope: !580, file: !1, line: 163, column: 32)
!585 = !{!496, !346, i64 112}
!586 = !DILocation(line: 164, column: 9, scope: !584)
!587 = !DILocation(line: 165, column: 9, scope: !584)
!588 = !DILocation(line: 167, column: 9, scope: !589)
!589 = distinct !DILexicalBlock(scope: !580, file: !1, line: 166, column: 12)
!590 = !DILocation(line: 168, column: 9, scope: !589)
!591 = !DILocation(line: 0, scope: !589)
!592 = !DILocation(line: 170, column: 1, scope: !563)
!593 = distinct !DISubprogram(name: "getCommand", scope: !1, file: !1, line: 172, type: !204, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !594)
!594 = !{!595}
!595 = !DILocalVariable(name: "c", arg: 1, scope: !593, file: !1, line: 172, type: !62)
!596 = !DILocation(line: 172, column: 25, scope: !593)
!597 = !DILocation(line: 157, column: 31, scope: !563, inlinedAt: !598)
!598 = distinct !DILocation(line: 173, column: 5, scope: !593)
!599 = !DILocation(line: 160, column: 40, scope: !571, inlinedAt: !598)
!600 = !DILocation(line: 160, column: 37, scope: !571, inlinedAt: !598)
!601 = !DILocation(line: 160, column: 55, scope: !571, inlinedAt: !598)
!602 = !DILocation(line: 160, column: 14, scope: !571, inlinedAt: !598)
!603 = !DILocation(line: 158, column: 11, scope: !563, inlinedAt: !598)
!604 = !DILocation(line: 160, column: 66, scope: !571, inlinedAt: !598)
!605 = !DILocation(line: 160, column: 9, scope: !563, inlinedAt: !598)
!606 = !DILocation(line: 163, column: 12, scope: !580, inlinedAt: !598)
!607 = !DILocation(line: 163, column: 17, scope: !580, inlinedAt: !598)
!608 = !DILocation(line: 163, column: 9, scope: !563, inlinedAt: !598)
!609 = !DILocation(line: 164, column: 27, scope: !584, inlinedAt: !598)
!610 = !DILocation(line: 164, column: 9, scope: !584, inlinedAt: !598)
!611 = !DILocation(line: 165, column: 9, scope: !584, inlinedAt: !598)
!612 = !DILocation(line: 167, column: 9, scope: !589, inlinedAt: !598)
!613 = !DILocation(line: 168, column: 9, scope: !589, inlinedAt: !598)
!614 = !DILocation(line: 174, column: 1, scope: !593)
!615 = distinct !DISubprogram(name: "getsetCommand", scope: !1, file: !1, line: 176, type: !204, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !616)
!616 = !{!617}
!617 = !DILocalVariable(name: "c", arg: 1, scope: !615, file: !1, line: 176, type: !62)
!618 = !DILocation(line: 176, column: 28, scope: !615)
!619 = !DILocation(line: 157, column: 31, scope: !563, inlinedAt: !620)
!620 = distinct !DILocation(line: 177, column: 9, scope: !621)
!621 = distinct !DILexicalBlock(scope: !615, file: !1, line: 177, column: 9)
!622 = !DILocation(line: 160, column: 40, scope: !571, inlinedAt: !620)
!623 = !DILocation(line: 160, column: 37, scope: !571, inlinedAt: !620)
!624 = !DILocation(line: 160, column: 55, scope: !571, inlinedAt: !620)
!625 = !DILocation(line: 160, column: 14, scope: !571, inlinedAt: !620)
!626 = !DILocation(line: 158, column: 11, scope: !563, inlinedAt: !620)
!627 = !DILocation(line: 160, column: 66, scope: !571, inlinedAt: !620)
!628 = !DILocation(line: 160, column: 9, scope: !563, inlinedAt: !620)
!629 = !DILocation(line: 163, column: 12, scope: !580, inlinedAt: !620)
!630 = !DILocation(line: 163, column: 17, scope: !580, inlinedAt: !620)
!631 = !DILocation(line: 163, column: 9, scope: !563, inlinedAt: !620)
!632 = !DILocation(line: 167, column: 9, scope: !589, inlinedAt: !620)
!633 = !DILocation(line: 168, column: 9, scope: !589, inlinedAt: !620)
!634 = !DILocation(line: 164, column: 27, scope: !584, inlinedAt: !620)
!635 = !DILocation(line: 164, column: 9, scope: !584, inlinedAt: !620)
!636 = !DILocation(line: 177, column: 9, scope: !615)
!637 = !DILocation(line: 178, column: 39, scope: !615)
!638 = !DILocation(line: 178, column: 36, scope: !615)
!639 = !DILocation(line: 178, column: 18, scope: !615)
!640 = !DILocation(line: 178, column: 8, scope: !615)
!641 = !DILocation(line: 178, column: 5, scope: !615)
!642 = !DILocation(line: 178, column: 16, scope: !615)
!643 = !DILocation(line: 179, column: 15, scope: !615)
!644 = !DILocation(line: 179, column: 21, scope: !615)
!645 = !DILocation(line: 179, column: 18, scope: !615)
!646 = !DILocation(line: 179, column: 29, scope: !615)
!647 = !DILocation(line: 179, column: 5, scope: !615)
!648 = !DILocation(line: 180, column: 48, scope: !615)
!649 = !DILocation(line: 180, column: 45, scope: !615)
!650 = !DILocation(line: 180, column: 59, scope: !615)
!651 = !DILocation(line: 180, column: 63, scope: !615)
!652 = !DILocation(line: 180, column: 5, scope: !615)
!653 = !DILocation(line: 181, column: 17, scope: !615)
!654 = !DILocation(line: 182, column: 1, scope: !615)
!655 = distinct !DISubprogram(name: "setrangeCommand", scope: !1, file: !1, line: 184, type: !204, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !656)
!656 = !{!657, !658, !659, !660, !661}
!657 = !DILocalVariable(name: "c", arg: 1, scope: !655, file: !1, line: 184, type: !62)
!658 = !DILocalVariable(name: "o", scope: !655, file: !1, line: 185, type: !175)
!659 = !DILocalVariable(name: "offset", scope: !655, file: !1, line: 186, type: !7)
!660 = !DILocalVariable(name: "value", scope: !655, file: !1, line: 187, type: !185)
!661 = !DILocalVariable(name: "olen", scope: !662, file: !1, line: 212, type: !187)
!662 = distinct !DILexicalBlock(scope: !663, file: !1, line: 211, column: 12)
!663 = distinct !DILexicalBlock(scope: !655, file: !1, line: 198, column: 9)
!664 = !DILocation(line: 184, column: 30, scope: !655)
!665 = !DILocation(line: 186, column: 5, scope: !655)
!666 = !DILocation(line: 187, column: 20, scope: !655)
!667 = !DILocation(line: 187, column: 17, scope: !655)
!668 = !DILocation(line: 187, column: 29, scope: !655)
!669 = !DILocation(line: 187, column: 9, scope: !655)
!670 = !DILocation(line: 189, column: 36, scope: !671)
!671 = distinct !DILexicalBlock(scope: !655, file: !1, line: 189, column: 9)
!672 = !DILocation(line: 186, column: 10, scope: !655)
!673 = !DILocation(line: 189, column: 9, scope: !671)
!674 = !DILocation(line: 189, column: 61, scope: !671)
!675 = !DILocation(line: 189, column: 9, scope: !655)
!676 = !DILocation(line: 192, column: 9, scope: !677)
!677 = distinct !DILexicalBlock(scope: !655, file: !1, line: 192, column: 9)
!678 = !{!344, !344, i64 0}
!679 = !DILocation(line: 192, column: 16, scope: !677)
!680 = !DILocation(line: 192, column: 9, scope: !655)
!681 = !DILocation(line: 193, column: 9, scope: !682)
!682 = distinct !DILexicalBlock(scope: !677, file: !1, line: 192, column: 21)
!683 = !DILocation(line: 194, column: 9, scope: !682)
!684 = !DILocation(line: 197, column: 27, scope: !655)
!685 = !DILocation(line: 197, column: 33, scope: !655)
!686 = !DILocation(line: 197, column: 30, scope: !655)
!687 = !DILocation(line: 197, column: 9, scope: !655)
!688 = !DILocation(line: 185, column: 11, scope: !655)
!689 = !DILocation(line: 198, column: 11, scope: !663)
!690 = !DILocation(line: 198, column: 9, scope: !655)
!691 = !DILocalVariable(name: "s", arg: 1, scope: !692, file: !11, line: 87, type: !697)
!692 = distinct !DISubprogram(name: "sdslen", scope: !11, file: !11, line: 87, type: !693, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !698)
!693 = !DISubroutineType(types: !694)
!694 = !{!695, !697}
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !696, line: 58, baseType: !51)
!696 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!698 = !{!691, !699}
!699 = !DILocalVariable(name: "flags", scope: !692, file: !11, line: 88, type: !18)
!700 = !DILocation(line: 87, column: 39, scope: !692, inlinedAt: !701)
!701 = distinct !DILocation(line: 200, column: 13, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !1, line: 200, column: 13)
!703 = distinct !DILexicalBlock(scope: !663, file: !1, line: 198, column: 20)
!704 = !DILocation(line: 88, column: 27, scope: !692, inlinedAt: !701)
!705 = !DILocation(line: 88, column: 19, scope: !692, inlinedAt: !701)
!706 = !DILocation(line: 89, column: 5, scope: !692, inlinedAt: !701)
!707 = !DILocation(line: 91, column: 20, scope: !708, inlinedAt: !701)
!708 = distinct !DILexicalBlock(scope: !692, file: !11, line: 89, column: 33)
!709 = !DILocation(line: 91, column: 13, scope: !708, inlinedAt: !701)
!710 = !DILocation(line: 93, column: 20, scope: !708, inlinedAt: !701)
!711 = !DILocation(line: 93, column: 34, scope: !708, inlinedAt: !701)
!712 = !DILocation(line: 93, column: 13, scope: !708, inlinedAt: !701)
!713 = !DILocation(line: 95, column: 20, scope: !708, inlinedAt: !701)
!714 = !DILocation(line: 95, column: 35, scope: !708, inlinedAt: !701)
!715 = !{!716, !716, i64 0}
!716 = !{!"short", !326, i64 0}
!717 = !DILocation(line: 95, column: 13, scope: !708, inlinedAt: !701)
!718 = !DILocation(line: 97, column: 20, scope: !708, inlinedAt: !701)
!719 = !DILocation(line: 97, column: 35, scope: !708, inlinedAt: !701)
!720 = !{!345, !345, i64 0}
!721 = !DILocation(line: 97, column: 13, scope: !708, inlinedAt: !701)
!722 = !DILocation(line: 99, column: 20, scope: !708, inlinedAt: !701)
!723 = !DILocation(line: 99, column: 35, scope: !708, inlinedAt: !701)
!724 = !DILocation(line: 99, column: 13, scope: !708, inlinedAt: !701)
!725 = !DILocation(line: 0, scope: !708, inlinedAt: !701)
!726 = !DILocation(line: 200, column: 27, scope: !702)
!727 = !DILocation(line: 200, column: 13, scope: !703)
!728 = !DILocation(line: 201, column: 31, scope: !729)
!729 = distinct !DILexicalBlock(scope: !702, file: !1, line: 200, column: 33)
!730 = !DILocation(line: 201, column: 13, scope: !729)
!731 = !DILocation(line: 202, column: 13, scope: !729)
!732 = !DILocation(line: 206, column: 33, scope: !733)
!733 = distinct !DILexicalBlock(scope: !703, file: !1, line: 206, column: 13)
!734 = !DILocation(line: 87, column: 39, scope: !692, inlinedAt: !735)
!735 = distinct !DILocation(line: 206, column: 40, scope: !733)
!736 = !DILocation(line: 88, column: 19, scope: !692, inlinedAt: !735)
!737 = !DILocation(line: 89, column: 5, scope: !692, inlinedAt: !735)
!738 = !DILocation(line: 91, column: 20, scope: !708, inlinedAt: !735)
!739 = !DILocation(line: 91, column: 13, scope: !708, inlinedAt: !735)
!740 = !DILocation(line: 93, column: 20, scope: !708, inlinedAt: !735)
!741 = !DILocation(line: 93, column: 34, scope: !708, inlinedAt: !735)
!742 = !DILocation(line: 93, column: 13, scope: !708, inlinedAt: !735)
!743 = !DILocation(line: 95, column: 20, scope: !708, inlinedAt: !735)
!744 = !DILocation(line: 95, column: 35, scope: !708, inlinedAt: !735)
!745 = !DILocation(line: 95, column: 13, scope: !708, inlinedAt: !735)
!746 = !DILocation(line: 97, column: 20, scope: !708, inlinedAt: !735)
!747 = !DILocation(line: 97, column: 35, scope: !708, inlinedAt: !735)
!748 = !DILocation(line: 97, column: 13, scope: !708, inlinedAt: !735)
!749 = !DILocation(line: 99, column: 20, scope: !708, inlinedAt: !735)
!750 = !DILocation(line: 99, column: 35, scope: !708, inlinedAt: !735)
!751 = !DILocation(line: 99, column: 13, scope: !708, inlinedAt: !735)
!752 = !DILocation(line: 0, scope: !708, inlinedAt: !735)
!753 = !DILocation(line: 206, column: 39, scope: !733)
!754 = !DILocalVariable(name: "c", arg: 1, scope: !755, file: !1, line: 37, type: !62)
!755 = distinct !DISubprogram(name: "checkStringLength", scope: !1, file: !1, line: 37, type: !756, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !758)
!756 = !DISubroutineType(types: !757)
!757 = !{!69, !62, !144}
!758 = !{!754, !759}
!759 = !DILocalVariable(name: "size", arg: 2, scope: !755, file: !1, line: 37, type: !144)
!760 = !DILocation(line: 37, column: 38, scope: !755, inlinedAt: !761)
!761 = distinct !DILocation(line: 206, column: 13, scope: !733)
!762 = !DILocation(line: 37, column: 51, scope: !755, inlinedAt: !761)
!763 = !DILocation(line: 38, column: 14, scope: !764, inlinedAt: !761)
!764 = distinct !DILexicalBlock(scope: !755, file: !1, line: 38, column: 9)
!765 = !DILocation(line: 38, column: 9, scope: !755, inlinedAt: !761)
!766 = !DILocation(line: 39, column: 9, scope: !767, inlinedAt: !761)
!767 = distinct !DILexicalBlock(scope: !764, file: !1, line: 38, column: 31)
!768 = !DILocation(line: 206, column: 13, scope: !703)
!769 = !DILocation(line: 87, column: 39, scope: !692, inlinedAt: !770)
!770 = distinct !DILocation(line: 209, column: 60, scope: !703)
!771 = !DILocation(line: 88, column: 19, scope: !692, inlinedAt: !770)
!772 = !DILocation(line: 89, column: 5, scope: !692, inlinedAt: !770)
!773 = !DILocation(line: 91, column: 20, scope: !708, inlinedAt: !770)
!774 = !DILocation(line: 91, column: 13, scope: !708, inlinedAt: !770)
!775 = !DILocation(line: 93, column: 20, scope: !708, inlinedAt: !770)
!776 = !DILocation(line: 93, column: 34, scope: !708, inlinedAt: !770)
!777 = !DILocation(line: 93, column: 13, scope: !708, inlinedAt: !770)
!778 = !DILocation(line: 95, column: 20, scope: !708, inlinedAt: !770)
!779 = !DILocation(line: 95, column: 35, scope: !708, inlinedAt: !770)
!780 = !DILocation(line: 95, column: 13, scope: !708, inlinedAt: !770)
!781 = !DILocation(line: 97, column: 20, scope: !708, inlinedAt: !770)
!782 = !DILocation(line: 97, column: 35, scope: !708, inlinedAt: !770)
!783 = !DILocation(line: 97, column: 13, scope: !708, inlinedAt: !770)
!784 = !DILocation(line: 99, column: 20, scope: !708, inlinedAt: !770)
!785 = !DILocation(line: 99, column: 35, scope: !708, inlinedAt: !770)
!786 = !DILocation(line: 99, column: 13, scope: !708, inlinedAt: !770)
!787 = !DILocation(line: 0, scope: !708, inlinedAt: !770)
!788 = !DILocation(line: 209, column: 59, scope: !703)
!789 = !DILocation(line: 209, column: 37, scope: !703)
!790 = !DILocation(line: 209, column: 13, scope: !703)
!791 = !DILocation(line: 210, column: 18, scope: !703)
!792 = !DILocation(line: 210, column: 24, scope: !703)
!793 = !DILocation(line: 210, column: 21, scope: !703)
!794 = !DILocation(line: 210, column: 9, scope: !703)
!795 = !DILocation(line: 211, column: 5, scope: !703)
!796 = !DILocation(line: 215, column: 13, scope: !797)
!797 = distinct !DILexicalBlock(scope: !662, file: !1, line: 215, column: 13)
!798 = !DILocation(line: 215, column: 13, scope: !662)
!799 = !DILocation(line: 219, column: 16, scope: !662)
!800 = !DILocation(line: 212, column: 16, scope: !662)
!801 = !DILocation(line: 87, column: 39, scope: !692, inlinedAt: !802)
!802 = distinct !DILocation(line: 220, column: 13, scope: !803)
!803 = distinct !DILexicalBlock(scope: !662, file: !1, line: 220, column: 13)
!804 = !DILocation(line: 88, column: 27, scope: !692, inlinedAt: !802)
!805 = !DILocation(line: 88, column: 19, scope: !692, inlinedAt: !802)
!806 = !DILocation(line: 89, column: 5, scope: !692, inlinedAt: !802)
!807 = !DILocation(line: 91, column: 20, scope: !708, inlinedAt: !802)
!808 = !DILocation(line: 91, column: 13, scope: !708, inlinedAt: !802)
!809 = !DILocation(line: 93, column: 20, scope: !708, inlinedAt: !802)
!810 = !DILocation(line: 93, column: 34, scope: !708, inlinedAt: !802)
!811 = !DILocation(line: 93, column: 13, scope: !708, inlinedAt: !802)
!812 = !DILocation(line: 95, column: 20, scope: !708, inlinedAt: !802)
!813 = !DILocation(line: 95, column: 35, scope: !708, inlinedAt: !802)
!814 = !DILocation(line: 95, column: 13, scope: !708, inlinedAt: !802)
!815 = !DILocation(line: 97, column: 20, scope: !708, inlinedAt: !802)
!816 = !DILocation(line: 97, column: 35, scope: !708, inlinedAt: !802)
!817 = !DILocation(line: 97, column: 13, scope: !708, inlinedAt: !802)
!818 = !DILocation(line: 99, column: 20, scope: !708, inlinedAt: !802)
!819 = !DILocation(line: 99, column: 35, scope: !708, inlinedAt: !802)
!820 = !DILocation(line: 99, column: 13, scope: !708, inlinedAt: !802)
!821 = !DILocation(line: 0, scope: !708, inlinedAt: !802)
!822 = !DILocation(line: 220, column: 27, scope: !803)
!823 = !DILocation(line: 220, column: 13, scope: !662)
!824 = !DILocation(line: 221, column: 13, scope: !825)
!825 = distinct !DILexicalBlock(scope: !803, file: !1, line: 220, column: 33)
!826 = !DILocation(line: 222, column: 13, scope: !825)
!827 = !DILocation(line: 226, column: 33, scope: !828)
!828 = distinct !DILexicalBlock(scope: !662, file: !1, line: 226, column: 13)
!829 = !DILocation(line: 87, column: 39, scope: !692, inlinedAt: !830)
!830 = distinct !DILocation(line: 226, column: 40, scope: !828)
!831 = !DILocation(line: 88, column: 19, scope: !692, inlinedAt: !830)
!832 = !DILocation(line: 89, column: 5, scope: !692, inlinedAt: !830)
!833 = !DILocation(line: 91, column: 20, scope: !708, inlinedAt: !830)
!834 = !DILocation(line: 91, column: 13, scope: !708, inlinedAt: !830)
!835 = !DILocation(line: 93, column: 20, scope: !708, inlinedAt: !830)
!836 = !DILocation(line: 93, column: 34, scope: !708, inlinedAt: !830)
!837 = !DILocation(line: 93, column: 13, scope: !708, inlinedAt: !830)
!838 = !DILocation(line: 95, column: 20, scope: !708, inlinedAt: !830)
!839 = !DILocation(line: 95, column: 35, scope: !708, inlinedAt: !830)
!840 = !DILocation(line: 95, column: 13, scope: !708, inlinedAt: !830)
!841 = !DILocation(line: 97, column: 20, scope: !708, inlinedAt: !830)
!842 = !DILocation(line: 97, column: 35, scope: !708, inlinedAt: !830)
!843 = !DILocation(line: 97, column: 13, scope: !708, inlinedAt: !830)
!844 = !DILocation(line: 99, column: 20, scope: !708, inlinedAt: !830)
!845 = !DILocation(line: 99, column: 35, scope: !708, inlinedAt: !830)
!846 = !DILocation(line: 99, column: 13, scope: !708, inlinedAt: !830)
!847 = !DILocation(line: 0, scope: !708, inlinedAt: !830)
!848 = !DILocation(line: 226, column: 39, scope: !828)
!849 = !DILocation(line: 37, column: 38, scope: !755, inlinedAt: !850)
!850 = distinct !DILocation(line: 226, column: 13, scope: !828)
!851 = !DILocation(line: 37, column: 51, scope: !755, inlinedAt: !850)
!852 = !DILocation(line: 38, column: 14, scope: !764, inlinedAt: !850)
!853 = !DILocation(line: 38, column: 9, scope: !755, inlinedAt: !850)
!854 = !DILocation(line: 39, column: 9, scope: !767, inlinedAt: !850)
!855 = !DILocation(line: 226, column: 13, scope: !662)
!856 = !DILocation(line: 230, column: 37, scope: !662)
!857 = !DILocation(line: 230, column: 43, scope: !662)
!858 = !DILocation(line: 230, column: 40, scope: !662)
!859 = !DILocation(line: 230, column: 13, scope: !662)
!860 = !DILocation(line: 88, column: 27, scope: !692, inlinedAt: !861)
!861 = distinct !DILocation(line: 233, column: 9, scope: !862)
!862 = distinct !DILexicalBlock(scope: !655, file: !1, line: 233, column: 9)
!863 = !DILocation(line: 0, scope: !655)
!864 = !DILocation(line: 87, column: 39, scope: !692, inlinedAt: !861)
!865 = !DILocation(line: 88, column: 19, scope: !692, inlinedAt: !861)
!866 = !DILocation(line: 89, column: 5, scope: !692, inlinedAt: !861)
!867 = !DILocation(line: 91, column: 20, scope: !708, inlinedAt: !861)
!868 = !DILocation(line: 91, column: 13, scope: !708, inlinedAt: !861)
!869 = !DILocation(line: 93, column: 20, scope: !708, inlinedAt: !861)
!870 = !DILocation(line: 93, column: 34, scope: !708, inlinedAt: !861)
!871 = !DILocation(line: 93, column: 13, scope: !708, inlinedAt: !861)
!872 = !DILocation(line: 95, column: 20, scope: !708, inlinedAt: !861)
!873 = !DILocation(line: 95, column: 35, scope: !708, inlinedAt: !861)
!874 = !DILocation(line: 95, column: 13, scope: !708, inlinedAt: !861)
!875 = !DILocation(line: 97, column: 20, scope: !708, inlinedAt: !861)
!876 = !DILocation(line: 97, column: 35, scope: !708, inlinedAt: !861)
!877 = !DILocation(line: 97, column: 13, scope: !708, inlinedAt: !861)
!878 = !DILocation(line: 99, column: 20, scope: !708, inlinedAt: !861)
!879 = !DILocation(line: 99, column: 35, scope: !708, inlinedAt: !861)
!880 = !DILocation(line: 99, column: 13, scope: !708, inlinedAt: !861)
!881 = !DILocation(line: 0, scope: !708, inlinedAt: !861)
!882 = !DILocation(line: 233, column: 23, scope: !862)
!883 = !DILocation(line: 233, column: 9, scope: !655)
!884 = !DILocation(line: 234, column: 33, scope: !885)
!885 = distinct !DILexicalBlock(scope: !862, file: !1, line: 233, column: 28)
!886 = !DILocation(line: 234, column: 37, scope: !885)
!887 = !DILocation(line: 87, column: 39, scope: !692, inlinedAt: !888)
!888 = distinct !DILocation(line: 234, column: 44, scope: !885)
!889 = !DILocation(line: 88, column: 19, scope: !692, inlinedAt: !888)
!890 = !DILocation(line: 89, column: 5, scope: !692, inlinedAt: !888)
!891 = !DILocation(line: 91, column: 20, scope: !708, inlinedAt: !888)
!892 = !DILocation(line: 91, column: 13, scope: !708, inlinedAt: !888)
!893 = !DILocation(line: 93, column: 20, scope: !708, inlinedAt: !888)
!894 = !DILocation(line: 93, column: 34, scope: !708, inlinedAt: !888)
!895 = !DILocation(line: 93, column: 13, scope: !708, inlinedAt: !888)
!896 = !DILocation(line: 95, column: 20, scope: !708, inlinedAt: !888)
!897 = !DILocation(line: 95, column: 35, scope: !708, inlinedAt: !888)
!898 = !DILocation(line: 95, column: 13, scope: !708, inlinedAt: !888)
!899 = !DILocation(line: 97, column: 20, scope: !708, inlinedAt: !888)
!900 = !DILocation(line: 97, column: 35, scope: !708, inlinedAt: !888)
!901 = !DILocation(line: 97, column: 13, scope: !708, inlinedAt: !888)
!902 = !DILocation(line: 99, column: 20, scope: !708, inlinedAt: !888)
!903 = !DILocation(line: 99, column: 35, scope: !708, inlinedAt: !888)
!904 = !DILocation(line: 99, column: 13, scope: !708, inlinedAt: !888)
!905 = !DILocation(line: 0, scope: !708, inlinedAt: !888)
!906 = !DILocation(line: 234, column: 43, scope: !885)
!907 = !DILocation(line: 234, column: 18, scope: !885)
!908 = !DILocation(line: 234, column: 16, scope: !885)
!909 = !DILocation(line: 235, column: 30, scope: !885)
!910 = !DILocation(line: 235, column: 29, scope: !885)
!911 = !DILocation(line: 87, column: 39, scope: !692, inlinedAt: !912)
!912 = distinct !DILocation(line: 235, column: 43, scope: !885)
!913 = !DILocation(line: 88, column: 27, scope: !692, inlinedAt: !912)
!914 = !DILocation(line: 88, column: 19, scope: !692, inlinedAt: !912)
!915 = !DILocation(line: 89, column: 5, scope: !692, inlinedAt: !912)
!916 = !DILocation(line: 91, column: 20, scope: !708, inlinedAt: !912)
!917 = !DILocation(line: 91, column: 13, scope: !708, inlinedAt: !912)
!918 = !DILocation(line: 93, column: 20, scope: !708, inlinedAt: !912)
!919 = !DILocation(line: 93, column: 34, scope: !708, inlinedAt: !912)
!920 = !DILocation(line: 93, column: 13, scope: !708, inlinedAt: !912)
!921 = !DILocation(line: 95, column: 20, scope: !708, inlinedAt: !912)
!922 = !DILocation(line: 95, column: 35, scope: !708, inlinedAt: !912)
!923 = !DILocation(line: 95, column: 13, scope: !708, inlinedAt: !912)
!924 = !DILocation(line: 97, column: 20, scope: !708, inlinedAt: !912)
!925 = !DILocation(line: 97, column: 35, scope: !708, inlinedAt: !912)
!926 = !DILocation(line: 97, column: 13, scope: !708, inlinedAt: !912)
!927 = !DILocation(line: 99, column: 20, scope: !708, inlinedAt: !912)
!928 = !DILocation(line: 99, column: 35, scope: !708, inlinedAt: !912)
!929 = !DILocation(line: 99, column: 13, scope: !708, inlinedAt: !912)
!930 = !DILocation(line: 0, scope: !708, inlinedAt: !912)
!931 = !DILocation(line: 235, column: 9, scope: !885)
!932 = !DILocation(line: 236, column: 30, scope: !885)
!933 = !DILocation(line: 236, column: 36, scope: !885)
!934 = !DILocation(line: 236, column: 33, scope: !885)
!935 = !DILocation(line: 236, column: 9, scope: !885)
!936 = !DILocation(line: 238, column: 27, scope: !885)
!937 = !DILocation(line: 238, column: 24, scope: !885)
!938 = !DILocation(line: 238, column: 38, scope: !885)
!939 = !DILocation(line: 238, column: 42, scope: !885)
!940 = !DILocation(line: 237, column: 9, scope: !885)
!941 = !DILocation(line: 239, column: 21, scope: !885)
!942 = !DILocation(line: 240, column: 5, scope: !885)
!943 = !DILocation(line: 241, column: 34, scope: !655)
!944 = !DILocation(line: 87, column: 39, scope: !692, inlinedAt: !945)
!945 = distinct !DILocation(line: 241, column: 24, scope: !655)
!946 = !DILocation(line: 88, column: 27, scope: !692, inlinedAt: !945)
!947 = !DILocation(line: 88, column: 19, scope: !692, inlinedAt: !945)
!948 = !DILocation(line: 89, column: 5, scope: !692, inlinedAt: !945)
!949 = !DILocation(line: 91, column: 20, scope: !708, inlinedAt: !945)
!950 = !DILocation(line: 91, column: 13, scope: !708, inlinedAt: !945)
!951 = !DILocation(line: 93, column: 20, scope: !708, inlinedAt: !945)
!952 = !DILocation(line: 93, column: 34, scope: !708, inlinedAt: !945)
!953 = !DILocation(line: 93, column: 13, scope: !708, inlinedAt: !945)
!954 = !DILocation(line: 95, column: 20, scope: !708, inlinedAt: !945)
!955 = !DILocation(line: 95, column: 35, scope: !708, inlinedAt: !945)
!956 = !DILocation(line: 95, column: 13, scope: !708, inlinedAt: !945)
!957 = !DILocation(line: 97, column: 20, scope: !708, inlinedAt: !945)
!958 = !DILocation(line: 97, column: 35, scope: !708, inlinedAt: !945)
!959 = !DILocation(line: 97, column: 13, scope: !708, inlinedAt: !945)
!960 = !DILocation(line: 99, column: 20, scope: !708, inlinedAt: !945)
!961 = !DILocation(line: 99, column: 35, scope: !708, inlinedAt: !945)
!962 = !DILocation(line: 99, column: 13, scope: !708, inlinedAt: !945)
!963 = !DILocation(line: 0, scope: !708, inlinedAt: !945)
!964 = !DILocation(line: 241, column: 5, scope: !655)
!965 = !DILocation(line: 242, column: 1, scope: !655)
!966 = distinct !DISubprogram(name: "getrangeCommand", scope: !1, file: !1, line: 244, type: !204, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !967)
!967 = !{!968, !969, !970, !971, !972, !973, !977}
!968 = !DILocalVariable(name: "c", arg: 1, scope: !966, file: !1, line: 244, type: !62)
!969 = !DILocalVariable(name: "o", scope: !966, file: !1, line: 245, type: !175)
!970 = !DILocalVariable(name: "start", scope: !966, file: !1, line: 246, type: !144)
!971 = !DILocalVariable(name: "end", scope: !966, file: !1, line: 246, type: !144)
!972 = !DILocalVariable(name: "str", scope: !966, file: !1, line: 247, type: !5)
!973 = !DILocalVariable(name: "llbuf", scope: !966, file: !1, line: 247, type: !974)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !975)
!975 = !{!976}
!976 = !DISubrange(count: 32)
!977 = !DILocalVariable(name: "strlen", scope: !966, file: !1, line: 248, type: !187)
!978 = !DILocation(line: 244, column: 30, scope: !966)
!979 = !DILocation(line: 246, column: 5, scope: !966)
!980 = !DILocation(line: 247, column: 5, scope: !966)
!981 = !DILocation(line: 247, column: 16, scope: !966)
!982 = !DILocation(line: 250, column: 43, scope: !983)
!983 = distinct !DILexicalBlock(scope: !966, file: !1, line: 250, column: 9)
!984 = !DILocation(line: 250, column: 40, scope: !983)
!985 = !DILocation(line: 246, column: 15, scope: !966)
!986 = !DILocation(line: 250, column: 9, scope: !983)
!987 = !DILocation(line: 250, column: 64, scope: !983)
!988 = !DILocation(line: 250, column: 9, scope: !966)
!989 = !DILocation(line: 252, column: 43, scope: !990)
!990 = distinct !DILexicalBlock(scope: !966, file: !1, line: 252, column: 9)
!991 = !DILocation(line: 252, column: 40, scope: !990)
!992 = !DILocation(line: 246, column: 22, scope: !966)
!993 = !DILocation(line: 252, column: 9, scope: !990)
!994 = !DILocation(line: 252, column: 62, scope: !990)
!995 = !DILocation(line: 252, column: 9, scope: !966)
!996 = !DILocation(line: 254, column: 40, scope: !997)
!997 = distinct !DILexicalBlock(scope: !966, file: !1, line: 254, column: 9)
!998 = !DILocation(line: 254, column: 37, scope: !997)
!999 = !DILocation(line: 254, column: 55, scope: !997)
!1000 = !{!496, !346, i64 24}
!1001 = !DILocation(line: 254, column: 14, scope: !997)
!1002 = !DILocation(line: 245, column: 11, scope: !966)
!1003 = !DILocation(line: 254, column: 67, scope: !997)
!1004 = !DILocation(line: 254, column: 75, scope: !997)
!1005 = !DILocation(line: 255, column: 9, scope: !997)
!1006 = !DILocation(line: 254, column: 9, scope: !966)
!1007 = !DILocation(line: 257, column: 12, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !966, file: !1, line: 257, column: 9)
!1009 = !DILocation(line: 257, column: 21, scope: !1008)
!1010 = !DILocation(line: 0, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1008, file: !1, line: 260, column: 12)
!1012 = !DILocation(line: 257, column: 9, scope: !966)
!1013 = !DILocation(line: 247, column: 11, scope: !966)
!1014 = !DILocation(line: 259, column: 57, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1008, file: !1, line: 257, column: 42)
!1016 = !DILocation(line: 259, column: 18, scope: !1015)
!1017 = !DILocation(line: 248, column: 12, scope: !966)
!1018 = !DILocation(line: 260, column: 5, scope: !1015)
!1019 = !DILocation(line: 261, column: 18, scope: !1011)
!1020 = !DILocation(line: 87, column: 39, scope: !692, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 262, column: 18, scope: !1011)
!1022 = !DILocation(line: 88, column: 27, scope: !692, inlinedAt: !1021)
!1023 = !DILocation(line: 88, column: 19, scope: !692, inlinedAt: !1021)
!1024 = !DILocation(line: 89, column: 5, scope: !692, inlinedAt: !1021)
!1025 = !DILocation(line: 91, column: 20, scope: !708, inlinedAt: !1021)
!1026 = !DILocation(line: 91, column: 13, scope: !708, inlinedAt: !1021)
!1027 = !DILocation(line: 93, column: 20, scope: !708, inlinedAt: !1021)
!1028 = !DILocation(line: 93, column: 34, scope: !708, inlinedAt: !1021)
!1029 = !DILocation(line: 93, column: 13, scope: !708, inlinedAt: !1021)
!1030 = !DILocation(line: 95, column: 20, scope: !708, inlinedAt: !1021)
!1031 = !DILocation(line: 95, column: 35, scope: !708, inlinedAt: !1021)
!1032 = !DILocation(line: 95, column: 13, scope: !708, inlinedAt: !1021)
!1033 = !DILocation(line: 97, column: 20, scope: !708, inlinedAt: !1021)
!1034 = !DILocation(line: 97, column: 35, scope: !708, inlinedAt: !1021)
!1035 = !DILocation(line: 97, column: 13, scope: !708, inlinedAt: !1021)
!1036 = !DILocation(line: 99, column: 20, scope: !708, inlinedAt: !1021)
!1037 = !DILocation(line: 99, column: 35, scope: !708, inlinedAt: !1021)
!1038 = !DILocation(line: 99, column: 13, scope: !708, inlinedAt: !1021)
!1039 = !DILocation(line: 266, column: 9, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !966, file: !1, line: 266, column: 9)
!1041 = !DILocation(line: 266, column: 22, scope: !1040)
!1042 = !DILocation(line: 266, column: 19, scope: !1040)
!1043 = !DILocation(line: 266, column: 39, scope: !1040)
!1044 = !DILocation(line: 267, column: 27, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 266, column: 46)
!1046 = !DILocation(line: 267, column: 9, scope: !1045)
!1047 = !DILocation(line: 268, column: 9, scope: !1045)
!1048 = !DILocation(line: 270, column: 15, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !966, file: !1, line: 270, column: 9)
!1050 = !DILocation(line: 270, column: 9, scope: !966)
!1051 = !DILocation(line: 270, column: 34, scope: !1049)
!1052 = !DILocation(line: 270, column: 26, scope: !1049)
!1053 = !DILocation(line: 270, column: 20, scope: !1049)
!1054 = !DILocation(line: 271, column: 13, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !966, file: !1, line: 271, column: 9)
!1056 = !DILocation(line: 271, column: 9, scope: !966)
!1057 = !DILocation(line: 271, column: 30, scope: !1055)
!1058 = !DILocation(line: 271, column: 22, scope: !1055)
!1059 = !DILocation(line: 271, column: 18, scope: !1055)
!1060 = !DILocation(line: 272, column: 15, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !966, file: !1, line: 272, column: 9)
!1062 = !DILocation(line: 272, column: 9, scope: !966)
!1063 = !DILocation(line: 272, column: 26, scope: !1061)
!1064 = !DILocation(line: 272, column: 20, scope: !1061)
!1065 = !DILocation(line: 273, column: 13, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !966, file: !1, line: 273, column: 9)
!1067 = !DILocation(line: 273, column: 9, scope: !966)
!1068 = !DILocation(line: 274, column: 33, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !966, file: !1, line: 274, column: 9)
!1070 = !DILocation(line: 274, column: 56, scope: !1069)
!1071 = !DILocation(line: 274, column: 9, scope: !966)
!1072 = !DILocation(line: 278, column: 15, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !966, file: !1, line: 278, column: 9)
!1074 = !DILocation(line: 278, column: 31, scope: !1073)
!1075 = !DILocation(line: 278, column: 21, scope: !1073)
!1076 = !DILocation(line: 279, column: 27, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1073, file: !1, line: 278, column: 37)
!1078 = !DILocation(line: 279, column: 9, scope: !1077)
!1079 = !DILocation(line: 280, column: 5, scope: !1077)
!1080 = !DILocation(line: 281, column: 41, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1073, file: !1, line: 280, column: 12)
!1082 = !DILocation(line: 281, column: 51, scope: !1081)
!1083 = !DILocation(line: 281, column: 57, scope: !1081)
!1084 = !DILocation(line: 281, column: 9, scope: !1081)
!1085 = !DILocation(line: 283, column: 1, scope: !966)
!1086 = distinct !DISubprogram(name: "mgetCommand", scope: !1, file: !1, line: 285, type: !204, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1087)
!1087 = !{!1088, !1089, !1090}
!1088 = !DILocalVariable(name: "c", arg: 1, scope: !1086, file: !1, line: 285, type: !62)
!1089 = !DILocalVariable(name: "j", scope: !1086, file: !1, line: 286, type: !69)
!1090 = !DILocalVariable(name: "o", scope: !1091, file: !1, line: 290, type: !175)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !1, line: 289, column: 35)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !1, line: 289, column: 5)
!1093 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 289, column: 5)
!1094 = !DILocation(line: 285, column: 26, scope: !1086)
!1095 = !DILocation(line: 288, column: 31, scope: !1086)
!1096 = !DILocation(line: 288, column: 35, scope: !1086)
!1097 = !DILocation(line: 288, column: 28, scope: !1086)
!1098 = !DILocation(line: 288, column: 5, scope: !1086)
!1099 = !DILocation(line: 286, column: 9, scope: !1086)
!1100 = !DILocation(line: 289, column: 24, scope: !1092)
!1101 = !DILocation(line: 289, column: 19, scope: !1092)
!1102 = !DILocation(line: 289, column: 5, scope: !1093)
!1103 = !DILocation(line: 290, column: 36, scope: !1091)
!1104 = !DILocation(line: 290, column: 42, scope: !1091)
!1105 = !DILocation(line: 290, column: 39, scope: !1091)
!1106 = !DILocation(line: 290, column: 19, scope: !1091)
!1107 = !DILocation(line: 290, column: 15, scope: !1091)
!1108 = !DILocation(line: 291, column: 15, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1091, file: !1, line: 291, column: 13)
!1110 = !DILocation(line: 291, column: 13, scope: !1091)
!1111 = !DILocation(line: 292, column: 31, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1109, file: !1, line: 291, column: 24)
!1113 = !DILocation(line: 292, column: 13, scope: !1112)
!1114 = !DILocation(line: 293, column: 9, scope: !1112)
!1115 = !DILocation(line: 294, column: 20, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !1, line: 294, column: 17)
!1117 = distinct !DILexicalBlock(scope: !1109, file: !1, line: 293, column: 16)
!1118 = !DILocation(line: 294, column: 25, scope: !1116)
!1119 = !DILocation(line: 294, column: 17, scope: !1117)
!1120 = !DILocation(line: 295, column: 35, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1116, file: !1, line: 294, column: 40)
!1122 = !DILocation(line: 295, column: 17, scope: !1121)
!1123 = !DILocation(line: 296, column: 13, scope: !1121)
!1124 = !DILocation(line: 297, column: 17, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1116, file: !1, line: 296, column: 20)
!1126 = !DILocation(line: 289, column: 31, scope: !1092)
!1127 = distinct !{!1127, !1102, !1128}
!1128 = !DILocation(line: 300, column: 5, scope: !1093)
!1129 = !DILocation(line: 301, column: 1, scope: !1086)
!1130 = distinct !DISubprogram(name: "msetGenericCommand", scope: !1, file: !1, line: 303, type: !1131, isLocal: false, isDefinition: true, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1133)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{null, !62, !69}
!1133 = !{!1134, !1135, !1136}
!1134 = !DILocalVariable(name: "c", arg: 1, scope: !1130, file: !1, line: 303, type: !62)
!1135 = !DILocalVariable(name: "nx", arg: 2, scope: !1130, file: !1, line: 303, type: !69)
!1136 = !DILocalVariable(name: "j", scope: !1130, file: !1, line: 304, type: !69)
!1137 = !DILocation(line: 303, column: 33, scope: !1130)
!1138 = !DILocation(line: 303, column: 40, scope: !1130)
!1139 = !DILocation(line: 306, column: 13, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1130, file: !1, line: 306, column: 9)
!1141 = !DILocation(line: 306, column: 23, scope: !1140)
!1142 = !DILocation(line: 306, column: 9, scope: !1130)
!1143 = !DILocation(line: 307, column: 9, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 306, column: 29)
!1145 = !DILocation(line: 308, column: 9, scope: !1144)
!1146 = !DILocation(line: 313, column: 9, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1130, file: !1, line: 313, column: 9)
!1148 = !DILocation(line: 313, column: 9, scope: !1130)
!1149 = !DILocation(line: 304, column: 9, scope: !1130)
!1150 = !DILocation(line: 314, column: 23, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !1, line: 314, column: 9)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 314, column: 9)
!1153 = distinct !DILexicalBlock(scope: !1147, file: !1, line: 313, column: 13)
!1154 = !DILocation(line: 314, column: 9, scope: !1152)
!1155 = !DILocation(line: 314, column: 28, scope: !1151)
!1156 = distinct !{!1156, !1154, !1157}
!1157 = !DILocation(line: 319, column: 9, scope: !1152)
!1158 = !DILocation(line: 315, column: 35, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !1, line: 315, column: 17)
!1160 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 314, column: 42)
!1161 = !DILocation(line: 315, column: 41, scope: !1159)
!1162 = !DILocation(line: 315, column: 38, scope: !1159)
!1163 = !DILocation(line: 315, column: 17, scope: !1159)
!1164 = !DILocation(line: 315, column: 50, scope: !1159)
!1165 = !DILocation(line: 314, column: 36, scope: !1151)
!1166 = !DILocation(line: 315, column: 17, scope: !1160)
!1167 = !DILocation(line: 316, column: 36, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1159, file: !1, line: 315, column: 59)
!1169 = !DILocation(line: 316, column: 17, scope: !1168)
!1170 = !DILocation(line: 317, column: 17, scope: !1168)
!1171 = !DILocation(line: 322, column: 24, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !1, line: 322, column: 5)
!1173 = distinct !DILexicalBlock(scope: !1130, file: !1, line: 322, column: 5)
!1174 = !DILocation(line: 322, column: 19, scope: !1172)
!1175 = !DILocation(line: 322, column: 5, scope: !1173)
!1176 = !DILocation(line: 323, column: 45, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1172, file: !1, line: 322, column: 38)
!1178 = !DILocation(line: 323, column: 51, scope: !1177)
!1179 = !DILocation(line: 323, column: 42, scope: !1177)
!1180 = !DILocation(line: 323, column: 24, scope: !1177)
!1181 = !DILocation(line: 323, column: 12, scope: !1177)
!1182 = !DILocation(line: 323, column: 9, scope: !1177)
!1183 = !DILocation(line: 323, column: 22, scope: !1177)
!1184 = !DILocation(line: 324, column: 19, scope: !1177)
!1185 = !DILocation(line: 324, column: 25, scope: !1177)
!1186 = !DILocation(line: 324, column: 22, scope: !1177)
!1187 = !DILocation(line: 324, column: 33, scope: !1177)
!1188 = !DILocation(line: 324, column: 9, scope: !1177)
!1189 = !DILocation(line: 325, column: 52, scope: !1177)
!1190 = !DILocation(line: 325, column: 49, scope: !1177)
!1191 = !DILocation(line: 325, column: 63, scope: !1177)
!1192 = !DILocation(line: 325, column: 67, scope: !1177)
!1193 = !DILocation(line: 325, column: 9, scope: !1177)
!1194 = !DILocation(line: 322, column: 32, scope: !1172)
!1195 = distinct !{!1195, !1175, !1196}
!1196 = !DILocation(line: 326, column: 5, scope: !1173)
!1197 = !DILocation(line: 327, column: 29, scope: !1130)
!1198 = !DILocation(line: 327, column: 32, scope: !1130)
!1199 = !DILocation(line: 327, column: 21, scope: !1130)
!1200 = !DILocation(line: 327, column: 18, scope: !1130)
!1201 = !DILocation(line: 328, column: 29, scope: !1130)
!1202 = !DILocation(line: 328, column: 43, scope: !1130)
!1203 = !DILocation(line: 328, column: 17, scope: !1130)
!1204 = !DILocation(line: 328, column: 5, scope: !1130)
!1205 = !DILocation(line: 329, column: 1, scope: !1130)
!1206 = distinct !DISubprogram(name: "msetCommand", scope: !1, file: !1, line: 331, type: !204, isLocal: false, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1207)
!1207 = !{!1208}
!1208 = !DILocalVariable(name: "c", arg: 1, scope: !1206, file: !1, line: 331, type: !62)
!1209 = !DILocation(line: 331, column: 26, scope: !1206)
!1210 = !DILocation(line: 332, column: 5, scope: !1206)
!1211 = !DILocation(line: 333, column: 1, scope: !1206)
!1212 = distinct !DISubprogram(name: "msetnxCommand", scope: !1, file: !1, line: 335, type: !204, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1213)
!1213 = !{!1214}
!1214 = !DILocalVariable(name: "c", arg: 1, scope: !1212, file: !1, line: 335, type: !62)
!1215 = !DILocation(line: 335, column: 28, scope: !1212)
!1216 = !DILocation(line: 336, column: 5, scope: !1212)
!1217 = !DILocation(line: 337, column: 1, scope: !1212)
!1218 = distinct !DISubprogram(name: "incrDecrCommand", scope: !1, file: !1, line: 339, type: !1219, isLocal: false, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1221)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null, !62, !144}
!1221 = !{!1222, !1223, !1224, !1225, !1226, !1227}
!1222 = !DILocalVariable(name: "c", arg: 1, scope: !1218, file: !1, line: 339, type: !62)
!1223 = !DILocalVariable(name: "incr", arg: 2, scope: !1218, file: !1, line: 339, type: !144)
!1224 = !DILocalVariable(name: "value", scope: !1218, file: !1, line: 340, type: !144)
!1225 = !DILocalVariable(name: "oldvalue", scope: !1218, file: !1, line: 340, type: !144)
!1226 = !DILocalVariable(name: "o", scope: !1218, file: !1, line: 341, type: !175)
!1227 = !DILocalVariable(name: "new", scope: !1218, file: !1, line: 341, type: !175)
!1228 = !DILocation(line: 339, column: 30, scope: !1218)
!1229 = !DILocation(line: 339, column: 43, scope: !1218)
!1230 = !DILocation(line: 340, column: 5, scope: !1218)
!1231 = !DILocation(line: 343, column: 27, scope: !1218)
!1232 = !DILocation(line: 343, column: 33, scope: !1218)
!1233 = !DILocation(line: 343, column: 30, scope: !1218)
!1234 = !DILocation(line: 343, column: 9, scope: !1218)
!1235 = !DILocation(line: 341, column: 11, scope: !1218)
!1236 = !DILocation(line: 344, column: 11, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 344, column: 9)
!1238 = !DILocation(line: 344, column: 19, scope: !1237)
!1239 = !DILocation(line: 344, column: 22, scope: !1237)
!1240 = !DILocation(line: 344, column: 9, scope: !1218)
!1241 = !DILocation(line: 340, column: 15, scope: !1218)
!1242 = !DILocation(line: 345, column: 9, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 345, column: 9)
!1244 = !DILocation(line: 345, column: 55, scope: !1243)
!1245 = !DILocation(line: 345, column: 9, scope: !1218)
!1246 = !DILocation(line: 347, column: 16, scope: !1218)
!1247 = !DILocation(line: 340, column: 22, scope: !1218)
!1248 = !DILocation(line: 348, column: 19, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 348, column: 9)
!1250 = !DILocation(line: 348, column: 55, scope: !1249)
!1251 = !DILocation(line: 348, column: 43, scope: !1249)
!1252 = !DILocation(line: 349, column: 15, scope: !1249)
!1253 = !DILocation(line: 349, column: 31, scope: !1249)
!1254 = !DILocation(line: 349, column: 19, scope: !1249)
!1255 = !DILocation(line: 349, column: 55, scope: !1249)
!1256 = !DILocation(line: 349, column: 43, scope: !1249)
!1257 = !DILocation(line: 350, column: 9, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 349, column: 68)
!1259 = !DILocation(line: 351, column: 9, scope: !1258)
!1260 = !DILocation(line: 353, column: 11, scope: !1218)
!1261 = !DILocation(line: 355, column: 11, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 355, column: 9)
!1263 = !DILocation(line: 355, column: 17, scope: !1262)
!1264 = !{!435, !345, i64 4}
!1265 = !DILocation(line: 355, column: 26, scope: !1262)
!1266 = !DILocation(line: 355, column: 31, scope: !1262)
!1267 = !DILocation(line: 355, column: 37, scope: !1262)
!1268 = !DILocation(line: 355, column: 46, scope: !1262)
!1269 = !DILocation(line: 356, column: 20, scope: !1262)
!1270 = !DILocation(line: 355, column: 66, scope: !1262)
!1271 = !DILocation(line: 341, column: 15, scope: !1218)
!1272 = !DILocation(line: 360, column: 18, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1262, file: !1, line: 358, column: 5)
!1274 = !DILocation(line: 360, column: 12, scope: !1273)
!1275 = !DILocation(line: 360, column: 16, scope: !1273)
!1276 = !DILocation(line: 361, column: 5, scope: !1273)
!1277 = !DILocation(line: 362, column: 15, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1262, file: !1, line: 361, column: 12)
!1279 = !DILocation(line: 0, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !1, line: 365, column: 16)
!1281 = distinct !DILexicalBlock(scope: !1278, file: !1, line: 363, column: 13)
!1282 = !DILocation(line: 363, column: 13, scope: !1278)
!1283 = !DILocation(line: 364, column: 13, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1281, file: !1, line: 363, column: 16)
!1285 = !DILocation(line: 365, column: 9, scope: !1284)
!1286 = !DILocation(line: 366, column: 13, scope: !1280)
!1287 = !DILocation(line: 0, scope: !1278)
!1288 = !DILocation(line: 369, column: 26, scope: !1218)
!1289 = !DILocation(line: 369, column: 32, scope: !1218)
!1290 = !DILocation(line: 369, column: 29, scope: !1218)
!1291 = !DILocation(line: 369, column: 5, scope: !1218)
!1292 = !DILocation(line: 370, column: 51, scope: !1218)
!1293 = !DILocation(line: 370, column: 48, scope: !1218)
!1294 = !DILocation(line: 370, column: 62, scope: !1218)
!1295 = !DILocation(line: 370, column: 66, scope: !1218)
!1296 = !DILocation(line: 370, column: 5, scope: !1218)
!1297 = !DILocation(line: 371, column: 17, scope: !1218)
!1298 = !DILocation(line: 372, column: 23, scope: !1218)
!1299 = !{!496, !346, i64 72}
!1300 = !DILocation(line: 372, column: 5, scope: !1218)
!1301 = !DILocation(line: 373, column: 5, scope: !1218)
!1302 = !DILocation(line: 374, column: 23, scope: !1218)
!1303 = !{!496, !346, i64 0}
!1304 = !DILocation(line: 374, column: 5, scope: !1218)
!1305 = !DILocation(line: 375, column: 1, scope: !1218)
!1306 = distinct !DISubprogram(name: "incrCommand", scope: !1, file: !1, line: 377, type: !204, isLocal: false, isDefinition: true, scopeLine: 377, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1307)
!1307 = !{!1308}
!1308 = !DILocalVariable(name: "c", arg: 1, scope: !1306, file: !1, line: 377, type: !62)
!1309 = !DILocation(line: 377, column: 26, scope: !1306)
!1310 = !DILocation(line: 378, column: 5, scope: !1306)
!1311 = !DILocation(line: 379, column: 1, scope: !1306)
!1312 = distinct !DISubprogram(name: "decrCommand", scope: !1, file: !1, line: 381, type: !204, isLocal: false, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1313)
!1313 = !{!1314}
!1314 = !DILocalVariable(name: "c", arg: 1, scope: !1312, file: !1, line: 381, type: !62)
!1315 = !DILocation(line: 381, column: 26, scope: !1312)
!1316 = !DILocation(line: 382, column: 5, scope: !1312)
!1317 = !DILocation(line: 383, column: 1, scope: !1312)
!1318 = distinct !DISubprogram(name: "incrbyCommand", scope: !1, file: !1, line: 385, type: !204, isLocal: false, isDefinition: true, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1319)
!1319 = !{!1320, !1321}
!1320 = !DILocalVariable(name: "c", arg: 1, scope: !1318, file: !1, line: 385, type: !62)
!1321 = !DILocalVariable(name: "incr", scope: !1318, file: !1, line: 386, type: !144)
!1322 = !DILocation(line: 385, column: 28, scope: !1318)
!1323 = !DILocation(line: 386, column: 5, scope: !1318)
!1324 = !DILocation(line: 388, column: 44, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1318, file: !1, line: 388, column: 9)
!1326 = !DILocation(line: 388, column: 41, scope: !1325)
!1327 = !DILocation(line: 386, column: 15, scope: !1318)
!1328 = !DILocation(line: 388, column: 9, scope: !1325)
!1329 = !DILocation(line: 388, column: 66, scope: !1325)
!1330 = !DILocation(line: 388, column: 9, scope: !1318)
!1331 = !DILocation(line: 389, column: 23, scope: !1318)
!1332 = !DILocation(line: 389, column: 5, scope: !1318)
!1333 = !DILocation(line: 390, column: 1, scope: !1318)
!1334 = distinct !DISubprogram(name: "decrbyCommand", scope: !1, file: !1, line: 392, type: !204, isLocal: false, isDefinition: true, scopeLine: 392, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1335)
!1335 = !{!1336, !1337}
!1336 = !DILocalVariable(name: "c", arg: 1, scope: !1334, file: !1, line: 392, type: !62)
!1337 = !DILocalVariable(name: "incr", scope: !1334, file: !1, line: 393, type: !144)
!1338 = !DILocation(line: 392, column: 28, scope: !1334)
!1339 = !DILocation(line: 393, column: 5, scope: !1334)
!1340 = !DILocation(line: 395, column: 44, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1334, file: !1, line: 395, column: 9)
!1342 = !DILocation(line: 395, column: 41, scope: !1341)
!1343 = !DILocation(line: 393, column: 15, scope: !1334)
!1344 = !DILocation(line: 395, column: 9, scope: !1341)
!1345 = !DILocation(line: 395, column: 66, scope: !1341)
!1346 = !DILocation(line: 395, column: 9, scope: !1334)
!1347 = !DILocation(line: 396, column: 24, scope: !1334)
!1348 = !DILocation(line: 396, column: 23, scope: !1334)
!1349 = !DILocation(line: 396, column: 5, scope: !1334)
!1350 = !DILocation(line: 397, column: 1, scope: !1334)
!1351 = distinct !DISubprogram(name: "incrbyfloatCommand", scope: !1, file: !1, line: 399, type: !204, isLocal: false, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1352)
!1352 = !{!1353, !1354, !1356, !1357, !1358, !1359}
!1353 = !DILocalVariable(name: "c", arg: 1, scope: !1351, file: !1, line: 399, type: !62)
!1354 = !DILocalVariable(name: "incr", scope: !1351, file: !1, line: 400, type: !1355)
!1355 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1356 = !DILocalVariable(name: "value", scope: !1351, file: !1, line: 400, type: !1355)
!1357 = !DILocalVariable(name: "o", scope: !1351, file: !1, line: 401, type: !175)
!1358 = !DILocalVariable(name: "new", scope: !1351, file: !1, line: 401, type: !175)
!1359 = !DILocalVariable(name: "aux", scope: !1351, file: !1, line: 401, type: !175)
!1360 = !DILocation(line: 399, column: 33, scope: !1351)
!1361 = !DILocation(line: 400, column: 5, scope: !1351)
!1362 = !DILocation(line: 403, column: 27, scope: !1351)
!1363 = !DILocation(line: 403, column: 33, scope: !1351)
!1364 = !DILocation(line: 403, column: 30, scope: !1351)
!1365 = !DILocation(line: 403, column: 9, scope: !1351)
!1366 = !DILocation(line: 401, column: 11, scope: !1351)
!1367 = !DILocation(line: 404, column: 11, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1351, file: !1, line: 404, column: 9)
!1369 = !DILocation(line: 404, column: 19, scope: !1368)
!1370 = !DILocation(line: 404, column: 22, scope: !1368)
!1371 = !DILocation(line: 404, column: 9, scope: !1351)
!1372 = !DILocation(line: 400, column: 23, scope: !1351)
!1373 = !DILocation(line: 405, column: 9, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1351, file: !1, line: 405, column: 9)
!1375 = !DILocation(line: 405, column: 57, scope: !1374)
!1376 = !DILocation(line: 405, column: 65, scope: !1374)
!1377 = !DILocation(line: 406, column: 45, scope: !1374)
!1378 = !DILocation(line: 406, column: 42, scope: !1374)
!1379 = !DILocation(line: 400, column: 17, scope: !1351)
!1380 = !DILocation(line: 406, column: 9, scope: !1374)
!1381 = !DILocation(line: 406, column: 65, scope: !1374)
!1382 = !DILocation(line: 405, column: 9, scope: !1351)
!1383 = !DILocation(line: 409, column: 14, scope: !1351)
!1384 = !{!1385, !1385, i64 0}
!1385 = !{!"long double", !326, i64 0}
!1386 = !DILocation(line: 409, column: 11, scope: !1351)
!1387 = !DILocation(line: 410, column: 9, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1351, file: !1, line: 410, column: 9)
!1389 = !DILocation(line: 410, column: 22, scope: !1388)
!1390 = !DILocation(line: 410, column: 25, scope: !1388)
!1391 = !DILocation(line: 410, column: 9, scope: !1351)
!1392 = !DILocation(line: 411, column: 9, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1388, file: !1, line: 410, column: 39)
!1394 = !DILocation(line: 412, column: 9, scope: !1393)
!1395 = !DILocation(line: 414, column: 44, scope: !1351)
!1396 = !DILocation(line: 414, column: 11, scope: !1351)
!1397 = !DILocation(line: 401, column: 15, scope: !1351)
!1398 = !DILocation(line: 0, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1351, file: !1, line: 415, column: 9)
!1400 = !DILocation(line: 415, column: 9, scope: !1351)
!1401 = !DILocation(line: 416, column: 9, scope: !1399)
!1402 = !DILocation(line: 418, column: 9, scope: !1399)
!1403 = !DILocation(line: 419, column: 26, scope: !1351)
!1404 = !DILocation(line: 419, column: 32, scope: !1351)
!1405 = !DILocation(line: 419, column: 29, scope: !1351)
!1406 = !DILocation(line: 419, column: 5, scope: !1351)
!1407 = !DILocation(line: 420, column: 56, scope: !1351)
!1408 = !DILocation(line: 420, column: 53, scope: !1351)
!1409 = !DILocation(line: 420, column: 67, scope: !1351)
!1410 = !DILocation(line: 420, column: 71, scope: !1351)
!1411 = !DILocation(line: 420, column: 5, scope: !1351)
!1412 = !DILocation(line: 421, column: 17, scope: !1351)
!1413 = !DILocation(line: 422, column: 5, scope: !1351)
!1414 = !DILocation(line: 427, column: 11, scope: !1351)
!1415 = !DILocation(line: 401, column: 21, scope: !1351)
!1416 = !DILocation(line: 428, column: 5, scope: !1351)
!1417 = !DILocation(line: 429, column: 5, scope: !1351)
!1418 = !DILocation(line: 430, column: 5, scope: !1351)
!1419 = !DILocation(line: 431, column: 1, scope: !1351)
!1420 = distinct !DISubprogram(name: "appendCommand", scope: !1, file: !1, line: 433, type: !204, isLocal: false, isDefinition: true, scopeLine: 433, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1421)
!1421 = !{!1422, !1423, !1424, !1425}
!1422 = !DILocalVariable(name: "c", arg: 1, scope: !1420, file: !1, line: 433, type: !62)
!1423 = !DILocalVariable(name: "totlen", scope: !1420, file: !1, line: 434, type: !187)
!1424 = !DILocalVariable(name: "o", scope: !1420, file: !1, line: 435, type: !175)
!1425 = !DILocalVariable(name: "append", scope: !1420, file: !1, line: 435, type: !175)
!1426 = !DILocation(line: 433, column: 28, scope: !1420)
!1427 = !DILocation(line: 437, column: 27, scope: !1420)
!1428 = !DILocation(line: 437, column: 33, scope: !1420)
!1429 = !DILocation(line: 437, column: 30, scope: !1420)
!1430 = !DILocation(line: 437, column: 9, scope: !1420)
!1431 = !DILocation(line: 435, column: 11, scope: !1420)
!1432 = !DILocation(line: 438, column: 11, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1420, file: !1, line: 438, column: 9)
!1434 = !DILocation(line: 438, column: 9, scope: !1420)
!1435 = !DILocation(line: 440, column: 43, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1433, file: !1, line: 438, column: 20)
!1437 = !DILocation(line: 440, column: 40, scope: !1436)
!1438 = !DILocation(line: 440, column: 22, scope: !1436)
!1439 = !DILocation(line: 440, column: 12, scope: !1436)
!1440 = !DILocation(line: 440, column: 9, scope: !1436)
!1441 = !DILocation(line: 440, column: 20, scope: !1436)
!1442 = !DILocation(line: 441, column: 18, scope: !1436)
!1443 = !DILocation(line: 441, column: 24, scope: !1436)
!1444 = !DILocation(line: 441, column: 21, scope: !1436)
!1445 = !DILocation(line: 441, column: 32, scope: !1436)
!1446 = !DILocation(line: 441, column: 9, scope: !1436)
!1447 = !DILocation(line: 442, column: 25, scope: !1436)
!1448 = !DILocation(line: 442, column: 22, scope: !1436)
!1449 = !DILocation(line: 442, column: 9, scope: !1436)
!1450 = !DILocation(line: 443, column: 37, scope: !1436)
!1451 = !DILocation(line: 443, column: 34, scope: !1436)
!1452 = !DILocation(line: 443, column: 18, scope: !1436)
!1453 = !DILocation(line: 434, column: 12, scope: !1420)
!1454 = !DILocation(line: 444, column: 5, scope: !1436)
!1455 = !DILocation(line: 446, column: 13, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !1, line: 446, column: 13)
!1457 = distinct !DILexicalBlock(scope: !1433, file: !1, line: 444, column: 12)
!1458 = !DILocation(line: 446, column: 13, scope: !1457)
!1459 = !DILocation(line: 450, column: 21, scope: !1457)
!1460 = !DILocation(line: 450, column: 18, scope: !1457)
!1461 = !DILocation(line: 435, column: 15, scope: !1420)
!1462 = !DILocation(line: 451, column: 18, scope: !1457)
!1463 = !DILocation(line: 451, column: 52, scope: !1457)
!1464 = !DILocation(line: 87, column: 39, scope: !692, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 451, column: 37, scope: !1457)
!1466 = !DILocation(line: 88, column: 27, scope: !692, inlinedAt: !1465)
!1467 = !DILocation(line: 88, column: 19, scope: !692, inlinedAt: !1465)
!1468 = !DILocation(line: 89, column: 5, scope: !692, inlinedAt: !1465)
!1469 = !DILocation(line: 91, column: 20, scope: !708, inlinedAt: !1465)
!1470 = !DILocation(line: 91, column: 13, scope: !708, inlinedAt: !1465)
!1471 = !DILocation(line: 93, column: 20, scope: !708, inlinedAt: !1465)
!1472 = !DILocation(line: 93, column: 34, scope: !708, inlinedAt: !1465)
!1473 = !DILocation(line: 93, column: 13, scope: !708, inlinedAt: !1465)
!1474 = !DILocation(line: 95, column: 20, scope: !708, inlinedAt: !1465)
!1475 = !DILocation(line: 95, column: 35, scope: !708, inlinedAt: !1465)
!1476 = !DILocation(line: 95, column: 13, scope: !708, inlinedAt: !1465)
!1477 = !DILocation(line: 97, column: 20, scope: !708, inlinedAt: !1465)
!1478 = !DILocation(line: 97, column: 35, scope: !708, inlinedAt: !1465)
!1479 = !DILocation(line: 97, column: 13, scope: !708, inlinedAt: !1465)
!1480 = !DILocation(line: 99, column: 20, scope: !708, inlinedAt: !1465)
!1481 = !DILocation(line: 99, column: 35, scope: !708, inlinedAt: !1465)
!1482 = !DILocation(line: 99, column: 13, scope: !708, inlinedAt: !1465)
!1483 = !DILocation(line: 0, scope: !708, inlinedAt: !1465)
!1484 = !DILocation(line: 451, column: 36, scope: !1457)
!1485 = !DILocation(line: 37, column: 38, scope: !755, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 452, column: 13, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1457, file: !1, line: 452, column: 13)
!1488 = !DILocation(line: 37, column: 51, scope: !755, inlinedAt: !1486)
!1489 = !DILocation(line: 38, column: 14, scope: !764, inlinedAt: !1486)
!1490 = !DILocation(line: 38, column: 9, scope: !755, inlinedAt: !1486)
!1491 = !DILocation(line: 39, column: 9, scope: !767, inlinedAt: !1486)
!1492 = !DILocation(line: 452, column: 13, scope: !1457)
!1493 = !DILocation(line: 456, column: 37, scope: !1457)
!1494 = !DILocation(line: 456, column: 43, scope: !1457)
!1495 = !DILocation(line: 456, column: 40, scope: !1457)
!1496 = !DILocation(line: 456, column: 13, scope: !1457)
!1497 = !DILocation(line: 457, column: 31, scope: !1457)
!1498 = !DILocation(line: 457, column: 43, scope: !1457)
!1499 = !DILocation(line: 87, column: 39, scope: !692, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 457, column: 47, scope: !1457)
!1501 = !DILocation(line: 88, column: 27, scope: !692, inlinedAt: !1500)
!1502 = !DILocation(line: 88, column: 19, scope: !692, inlinedAt: !1500)
!1503 = !DILocation(line: 89, column: 5, scope: !692, inlinedAt: !1500)
!1504 = !DILocation(line: 91, column: 20, scope: !708, inlinedAt: !1500)
!1505 = !DILocation(line: 91, column: 13, scope: !708, inlinedAt: !1500)
!1506 = !DILocation(line: 93, column: 20, scope: !708, inlinedAt: !1500)
!1507 = !DILocation(line: 93, column: 34, scope: !708, inlinedAt: !1500)
!1508 = !DILocation(line: 93, column: 13, scope: !708, inlinedAt: !1500)
!1509 = !DILocation(line: 95, column: 20, scope: !708, inlinedAt: !1500)
!1510 = !DILocation(line: 95, column: 35, scope: !708, inlinedAt: !1500)
!1511 = !DILocation(line: 95, column: 13, scope: !708, inlinedAt: !1500)
!1512 = !DILocation(line: 97, column: 20, scope: !708, inlinedAt: !1500)
!1513 = !DILocation(line: 97, column: 35, scope: !708, inlinedAt: !1500)
!1514 = !DILocation(line: 97, column: 13, scope: !708, inlinedAt: !1500)
!1515 = !DILocation(line: 99, column: 20, scope: !708, inlinedAt: !1500)
!1516 = !DILocation(line: 99, column: 35, scope: !708, inlinedAt: !1500)
!1517 = !DILocation(line: 99, column: 13, scope: !708, inlinedAt: !1500)
!1518 = !DILocation(line: 0, scope: !708, inlinedAt: !1500)
!1519 = !DILocation(line: 457, column: 18, scope: !1457)
!1520 = !DILocation(line: 457, column: 16, scope: !1457)
!1521 = !DILocation(line: 87, column: 39, scope: !692, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 458, column: 18, scope: !1457)
!1523 = !DILocation(line: 88, column: 27, scope: !692, inlinedAt: !1522)
!1524 = !DILocation(line: 88, column: 19, scope: !692, inlinedAt: !1522)
!1525 = !DILocation(line: 89, column: 5, scope: !692, inlinedAt: !1522)
!1526 = !DILocation(line: 91, column: 20, scope: !708, inlinedAt: !1522)
!1527 = !DILocation(line: 91, column: 13, scope: !708, inlinedAt: !1522)
!1528 = !DILocation(line: 93, column: 20, scope: !708, inlinedAt: !1522)
!1529 = !DILocation(line: 93, column: 34, scope: !708, inlinedAt: !1522)
!1530 = !DILocation(line: 93, column: 13, scope: !708, inlinedAt: !1522)
!1531 = !DILocation(line: 95, column: 20, scope: !708, inlinedAt: !1522)
!1532 = !DILocation(line: 95, column: 35, scope: !708, inlinedAt: !1522)
!1533 = !DILocation(line: 95, column: 13, scope: !708, inlinedAt: !1522)
!1534 = !DILocation(line: 97, column: 20, scope: !708, inlinedAt: !1522)
!1535 = !DILocation(line: 97, column: 35, scope: !708, inlinedAt: !1522)
!1536 = !DILocation(line: 97, column: 13, scope: !708, inlinedAt: !1522)
!1537 = !DILocation(line: 99, column: 20, scope: !708, inlinedAt: !1522)
!1538 = !DILocation(line: 99, column: 35, scope: !708, inlinedAt: !1522)
!1539 = !DILocation(line: 99, column: 13, scope: !708, inlinedAt: !1522)
!1540 = !DILocation(line: 0, scope: !1457)
!1541 = !DILocation(line: 460, column: 26, scope: !1420)
!1542 = !DILocation(line: 460, column: 32, scope: !1420)
!1543 = !DILocation(line: 460, column: 29, scope: !1420)
!1544 = !DILocation(line: 460, column: 5, scope: !1420)
!1545 = !DILocation(line: 461, column: 51, scope: !1420)
!1546 = !DILocation(line: 461, column: 48, scope: !1420)
!1547 = !DILocation(line: 461, column: 62, scope: !1420)
!1548 = !DILocation(line: 461, column: 66, scope: !1420)
!1549 = !DILocation(line: 461, column: 5, scope: !1420)
!1550 = !DILocation(line: 462, column: 17, scope: !1420)
!1551 = !DILocation(line: 463, column: 5, scope: !1420)
!1552 = !DILocation(line: 464, column: 1, scope: !1420)
!1553 = distinct !DISubprogram(name: "strlenCommand", scope: !1, file: !1, line: 466, type: !204, isLocal: false, isDefinition: true, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1554)
!1554 = !{!1555, !1556}
!1555 = !DILocalVariable(name: "c", arg: 1, scope: !1553, file: !1, line: 466, type: !62)
!1556 = !DILocalVariable(name: "o", scope: !1553, file: !1, line: 467, type: !175)
!1557 = !DILocation(line: 466, column: 28, scope: !1553)
!1558 = !DILocation(line: 468, column: 40, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1553, file: !1, line: 468, column: 9)
!1560 = !DILocation(line: 468, column: 37, scope: !1559)
!1561 = !DILocation(line: 468, column: 55, scope: !1559)
!1562 = !DILocation(line: 468, column: 14, scope: !1559)
!1563 = !DILocation(line: 467, column: 11, scope: !1553)
!1564 = !DILocation(line: 468, column: 63, scope: !1559)
!1565 = !DILocation(line: 468, column: 71, scope: !1559)
!1566 = !DILocation(line: 469, column: 9, scope: !1559)
!1567 = !DILocation(line: 468, column: 9, scope: !1553)
!1568 = !DILocation(line: 470, column: 24, scope: !1553)
!1569 = !DILocation(line: 470, column: 5, scope: !1553)
!1570 = !DILocation(line: 471, column: 1, scope: !1553)
