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
@__A_VARIABLE = internal global i32 0

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !511
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !562
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  ret void, !dbg !615
}

; Function Attrs: noredzone nounwind
define dso_local void @getsetCommand(%struct.client*) local_unnamed_addr #0 !dbg !616 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !623
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !623, !tbaa !429
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !624
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !624, !tbaa !432
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !625, !tbaa !574
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #5, !dbg !626
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !628
  br i1 %8, label %17, label %9, !dbg !629

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 0, !dbg !630
  %11 = load i32, i32* %10, align 8, !dbg !630
  %12 = and i32 %11, 15, !dbg !630
  %13 = icmp eq i32 %12, 0, !dbg !631
  br i1 %13, label %14, label %15, !dbg !632

; <label>:14:                                     ; preds = %9
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* nonnull %7) #5, !dbg !633
  br label %17, !dbg !634

; <label>:15:                                     ; preds = %9
  %16 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !635, !tbaa !585
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %16) #5, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  br label %39, !dbg !638

; <label>:17:                                     ; preds = %14, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  %18 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !639, !tbaa !429
  %19 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %18, i64 2, !dbg !640
  %20 = load %struct.redisObject*, %struct.redisObject** %19, align 8, !dbg !640, !tbaa !432
  %21 = tail call %struct.redisObject* @tryObjectEncoding(%struct.redisObject* %20) #5, !dbg !641
  %22 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !642, !tbaa !429
  %23 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %22, i64 2, !dbg !643
  store %struct.redisObject* %21, %struct.redisObject** %23, align 8, !dbg !644, !tbaa !432
  %24 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !645
  %25 = load %struct.redisDb*, %struct.redisDb** %24, align 8, !dbg !645, !tbaa !363
  %26 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !646, !tbaa !429
  %27 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 1, !dbg !647
  %28 = load %struct.redisObject*, %struct.redisObject** %27, align 8, !dbg !647, !tbaa !432
  %29 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 2, !dbg !648
  %30 = load %struct.redisObject*, %struct.redisObject** %29, align 8, !dbg !648, !tbaa !432
  tail call void @setKey(%struct.redisDb* %25, %struct.redisObject* %28, %struct.redisObject* %30) #5, !dbg !649
  %31 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !650, !tbaa !429
  %32 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %31, i64 1, !dbg !651
  %33 = load %struct.redisObject*, %struct.redisObject** %32, align 8, !dbg !651, !tbaa !432
  %34 = load %struct.redisDb*, %struct.redisDb** %24, align 8, !dbg !652, !tbaa !363
  %35 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %34, i64 0, i32 5, !dbg !653
  %36 = load i32, i32* %35, align 8, !dbg !653, !tbaa !397
  tail call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.redisObject* %33, i32 %36) #5, !dbg !654
  %37 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !655, !tbaa !382
  %38 = add nsw i64 %37, 1, !dbg !655
  store i64 %38, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !655, !tbaa !382
  br label %39, !dbg !656

; <label>:39:                                     ; preds = %15, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !656
  ret void, !dbg !656
}

; Function Attrs: noredzone nounwind
define dso_local void @setrangeCommand(%struct.client*) local_unnamed_addr #0 !dbg !657 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !667
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4, !dbg !667
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !668
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !668, !tbaa !429
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 3, !dbg !669
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !669, !tbaa !432
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !670
  %9 = load i8*, i8** %8, align 8, !dbg !670, !tbaa !434
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 2, !dbg !672
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !672, !tbaa !432
  %12 = call i32 @getLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %11, i64* nonnull %2, i8* null) #5, !dbg !675
  %13 = icmp eq i32 %12, 0, !dbg !676
  br i1 %13, label %14, label %312, !dbg !677

; <label>:14:                                     ; preds = %1
  %15 = load i64, i64* %2, align 8, !dbg !678, !tbaa !680
  %16 = icmp slt i64 %15, 0, !dbg !681
  br i1 %16, label %17, label %18, !dbg !682

; <label>:17:                                     ; preds = %14
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !683
  br label %312, !dbg !685

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !686
  %20 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !686, !tbaa !363
  %21 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !687, !tbaa !429
  %22 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %21, i64 1, !dbg !688
  %23 = load %struct.redisObject*, %struct.redisObject** %22, align 8, !dbg !688, !tbaa !432
  %24 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %20, %struct.redisObject* %23) #5, !dbg !689
  %25 = icmp eq %struct.redisObject* %24, null, !dbg !691
  br i1 %25, label %26, label %116, !dbg !692

; <label>:26:                                     ; preds = %18
  %27 = getelementptr inbounds i8, i8* %9, i64 -1, !dbg !706
  %28 = load i8, i8* %27, align 1, !dbg !706, !tbaa !444
  %29 = trunc i8 %28 to i3, !dbg !708
  switch i3 %29, label %30 [
    i3 0, label %31
    i3 1, label %34
    i3 2, label %38
    i3 3, label %43
    i3 -4, label %48
  ], !dbg !708

; <label>:30:                                     ; preds = %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !709
  br label %55, !dbg !710

; <label>:31:                                     ; preds = %26
  %32 = lshr i8 %28, 3, !dbg !711
  %33 = zext i8 %32 to i64, !dbg !711
  br label %52, !dbg !713

; <label>:34:                                     ; preds = %26
  %35 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !714
  %36 = load i8, i8* %35, align 1, !dbg !715, !tbaa !444
  %37 = zext i8 %36 to i64, !dbg !714
  br label %52, !dbg !716

; <label>:38:                                     ; preds = %26
  %39 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !717
  %40 = bitcast i8* %39 to i16*, !dbg !718
  %41 = load i16, i16* %40, align 1, !dbg !718, !tbaa !719
  %42 = zext i16 %41 to i64, !dbg !717
  br label %52, !dbg !721

; <label>:43:                                     ; preds = %26
  %44 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !722
  %45 = bitcast i8* %44 to i32*, !dbg !723
  %46 = load i32, i32* %45, align 1, !dbg !723, !tbaa !724
  %47 = zext i32 %46 to i64, !dbg !722
  br label %52, !dbg !725

; <label>:48:                                     ; preds = %26
  %49 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !726
  %50 = bitcast i8* %49 to i64*, !dbg !727
  %51 = load i64, i64* %50, align 1, !dbg !727, !tbaa !680
  br label %52, !dbg !728

; <label>:52:                                     ; preds = %31, %34, %38, %43, %48
  %53 = phi i64 [ %51, %48 ], [ %47, %43 ], [ %42, %38 ], [ %37, %34 ], [ %33, %31 ], !dbg !729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !709
  %54 = icmp eq i64 %53, 0, !dbg !730
  br i1 %54, label %55, label %57, !dbg !710

; <label>:55:                                     ; preds = %30, %52
  %56 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !731, !tbaa !528
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %56) #5, !dbg !733
  br label %312, !dbg !734

; <label>:57:                                     ; preds = %52
  %58 = load i64, i64* %2, align 8, !dbg !735, !tbaa !680
  switch i3 %29, label %80 [
    i3 0, label %59
    i3 1, label %62
    i3 2, label %66
    i3 3, label %71
    i3 -4, label %76
  ], !dbg !740

; <label>:59:                                     ; preds = %57
  %60 = lshr i8 %28, 3, !dbg !741
  %61 = zext i8 %60 to i64, !dbg !741
  br label %80, !dbg !742

; <label>:62:                                     ; preds = %57
  %63 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !743
  %64 = load i8, i8* %63, align 1, !dbg !744, !tbaa !444
  %65 = zext i8 %64 to i64, !dbg !743
  br label %80, !dbg !745

; <label>:66:                                     ; preds = %57
  %67 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !746
  %68 = bitcast i8* %67 to i16*, !dbg !747
  %69 = load i16, i16* %68, align 1, !dbg !747, !tbaa !719
  %70 = zext i16 %69 to i64, !dbg !746
  br label %80, !dbg !748

; <label>:71:                                     ; preds = %57
  %72 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !749
  %73 = bitcast i8* %72 to i32*, !dbg !750
  %74 = load i32, i32* %73, align 1, !dbg !750, !tbaa !724
  %75 = zext i32 %74 to i64, !dbg !749
  br label %80, !dbg !751

; <label>:76:                                     ; preds = %57
  %77 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !752
  %78 = bitcast i8* %77 to i64*, !dbg !753
  %79 = load i64, i64* %78, align 1, !dbg !753, !tbaa !680
  br label %80, !dbg !754

; <label>:80:                                     ; preds = %57, %59, %62, %66, %71, %76
  %81 = phi i64 [ %79, %76 ], [ %75, %71 ], [ %70, %66 ], [ %65, %62 ], [ %61, %59 ], [ 0, %57 ], !dbg !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  %82 = add i64 %81, %58, !dbg !757
  %83 = icmp sgt i64 %82, 536870912, !dbg !767
  br i1 %83, label %84, label %85, !dbg !769

; <label>:84:                                     ; preds = %80
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0)) #5, !dbg !770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  br label %312, !dbg !773

; <label>:85:                                     ; preds = %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  switch i3 %29, label %107 [
    i3 0, label %86
    i3 1, label %89
    i3 2, label %93
    i3 3, label %98
    i3 -4, label %103
  ], !dbg !777

; <label>:86:                                     ; preds = %85
  %87 = lshr i8 %28, 3, !dbg !778
  %88 = zext i8 %87 to i64, !dbg !778
  br label %107, !dbg !779

; <label>:89:                                     ; preds = %85
  %90 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !780
  %91 = load i8, i8* %90, align 1, !dbg !781, !tbaa !444
  %92 = zext i8 %91 to i64, !dbg !780
  br label %107, !dbg !782

; <label>:93:                                     ; preds = %85
  %94 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !783
  %95 = bitcast i8* %94 to i16*, !dbg !784
  %96 = load i16, i16* %95, align 1, !dbg !784, !tbaa !719
  %97 = zext i16 %96 to i64, !dbg !783
  br label %107, !dbg !785

; <label>:98:                                     ; preds = %85
  %99 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !786
  %100 = bitcast i8* %99 to i32*, !dbg !787
  %101 = load i32, i32* %100, align 1, !dbg !787, !tbaa !724
  %102 = zext i32 %101 to i64, !dbg !786
  br label %107, !dbg !788

; <label>:103:                                    ; preds = %85
  %104 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !789
  %105 = bitcast i8* %104 to i64*, !dbg !790
  %106 = load i64, i64* %105, align 1, !dbg !790, !tbaa !680
  br label %107, !dbg !791

; <label>:107:                                    ; preds = %85, %86, %89, %93, %98, %103
  %108 = phi i64 [ %106, %103 ], [ %102, %98 ], [ %97, %93 ], [ %92, %89 ], [ %88, %86 ], [ 0, %85 ], !dbg !792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  %109 = add i64 %108, %58, !dbg !794
  %110 = call i8* @sdsnewlen(i8* null, i64 %109) #5, !dbg !795
  %111 = call %struct.redisObject* @createObject(i32 0, i8* %110) #5, !dbg !796
  %112 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !797, !tbaa !363
  %113 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !798, !tbaa !429
  %114 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %113, i64 1, !dbg !799
  %115 = load %struct.redisObject*, %struct.redisObject** %114, align 8, !dbg !799, !tbaa !432
  call void @dbAdd(%struct.redisDb* %112, %struct.redisObject* %115, %struct.redisObject* %111) #5, !dbg !800
  br label %184, !dbg !801

; <label>:116:                                    ; preds = %18
  %117 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %24, i32 0) #5, !dbg !802
  %118 = icmp eq i32 %117, 0, !dbg !802
  br i1 %118, label %119, label %312, !dbg !804

; <label>:119:                                    ; preds = %116
  %120 = call i64 @stringObjectLen(%struct.redisObject* nonnull %24) #5, !dbg !805
  %121 = getelementptr inbounds i8, i8* %9, i64 -1, !dbg !810
  %122 = load i8, i8* %121, align 1, !dbg !810, !tbaa !444
  %123 = trunc i8 %122 to i3, !dbg !812
  switch i3 %123, label %124 [
    i3 0, label %125
    i3 1, label %128
    i3 2, label %132
    i3 3, label %137
    i3 -4, label %142
  ], !dbg !812

; <label>:124:                                    ; preds = %119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !813
  br label %149, !dbg !814

; <label>:125:                                    ; preds = %119
  %126 = lshr i8 %122, 3, !dbg !815
  %127 = zext i8 %126 to i64, !dbg !815
  br label %146, !dbg !816

; <label>:128:                                    ; preds = %119
  %129 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !817
  %130 = load i8, i8* %129, align 1, !dbg !818, !tbaa !444
  %131 = zext i8 %130 to i64, !dbg !817
  br label %146, !dbg !819

; <label>:132:                                    ; preds = %119
  %133 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !820
  %134 = bitcast i8* %133 to i16*, !dbg !821
  %135 = load i16, i16* %134, align 1, !dbg !821, !tbaa !719
  %136 = zext i16 %135 to i64, !dbg !820
  br label %146, !dbg !822

; <label>:137:                                    ; preds = %119
  %138 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !823
  %139 = bitcast i8* %138 to i32*, !dbg !824
  %140 = load i32, i32* %139, align 1, !dbg !824, !tbaa !724
  %141 = zext i32 %140 to i64, !dbg !823
  br label %146, !dbg !825

; <label>:142:                                    ; preds = %119
  %143 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !826
  %144 = bitcast i8* %143 to i64*, !dbg !827
  %145 = load i64, i64* %144, align 1, !dbg !827, !tbaa !680
  br label %146, !dbg !828

; <label>:146:                                    ; preds = %125, %128, %132, %137, %142
  %147 = phi i64 [ %145, %142 ], [ %141, %137 ], [ %136, %132 ], [ %131, %128 ], [ %127, %125 ], !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !813
  %148 = icmp eq i64 %147, 0, !dbg !830
  br i1 %148, label %149, label %150, !dbg !814

; <label>:149:                                    ; preds = %124, %146
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %120) #5, !dbg !831
  br label %312, !dbg !833

; <label>:150:                                    ; preds = %146
  %151 = load i64, i64* %2, align 8, !dbg !834, !tbaa !680
  switch i3 %123, label %173 [
    i3 0, label %152
    i3 1, label %155
    i3 2, label %159
    i3 3, label %164
    i3 -4, label %169
  ], !dbg !839

; <label>:152:                                    ; preds = %150
  %153 = lshr i8 %122, 3, !dbg !840
  %154 = zext i8 %153 to i64, !dbg !840
  br label %173, !dbg !841

; <label>:155:                                    ; preds = %150
  %156 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !842
  %157 = load i8, i8* %156, align 1, !dbg !843, !tbaa !444
  %158 = zext i8 %157 to i64, !dbg !842
  br label %173, !dbg !844

; <label>:159:                                    ; preds = %150
  %160 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !845
  %161 = bitcast i8* %160 to i16*, !dbg !846
  %162 = load i16, i16* %161, align 1, !dbg !846, !tbaa !719
  %163 = zext i16 %162 to i64, !dbg !845
  br label %173, !dbg !847

; <label>:164:                                    ; preds = %150
  %165 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !848
  %166 = bitcast i8* %165 to i32*, !dbg !849
  %167 = load i32, i32* %166, align 1, !dbg !849, !tbaa !724
  %168 = zext i32 %167 to i64, !dbg !848
  br label %173, !dbg !850

; <label>:169:                                    ; preds = %150
  %170 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !851
  %171 = bitcast i8* %170 to i64*, !dbg !852
  %172 = load i64, i64* %171, align 1, !dbg !852, !tbaa !680
  br label %173, !dbg !853

; <label>:173:                                    ; preds = %150, %152, %155, %159, %164, %169
  %174 = phi i64 [ %172, %169 ], [ %168, %164 ], [ %163, %159 ], [ %158, %155 ], [ %154, %152 ], [ 0, %150 ], !dbg !854
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !855
  %175 = add i64 %174, %151, !dbg !856
  %176 = icmp sgt i64 %175, 536870912, !dbg !860
  br i1 %176, label %177, label %178, !dbg !861

; <label>:177:                                    ; preds = %173
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0)) #5, !dbg !862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !863
  br label %312, !dbg !864

; <label>:178:                                    ; preds = %173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !863
  %179 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !865, !tbaa !363
  %180 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !866, !tbaa !429
  %181 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %180, i64 1, !dbg !867
  %182 = load %struct.redisObject*, %struct.redisObject** %181, align 8, !dbg !867, !tbaa !432
  %183 = call %struct.redisObject* @dbUnshareStringValue(%struct.redisDb* %179, %struct.redisObject* %182, %struct.redisObject* nonnull %24) #5, !dbg !868
  br label %184

; <label>:184:                                    ; preds = %178, %107
  %185 = phi i8* [ %121, %178 ], [ %27, %107 ], !dbg !869
  %186 = phi %struct.redisObject* [ %183, %178 ], [ %111, %107 ], !dbg !872
  %187 = load i8, i8* %185, align 1, !dbg !869, !tbaa !444
  %188 = trunc i8 %187 to i3, !dbg !875
  switch i3 %188, label %189 [
    i3 0, label %190
    i3 1, label %193
    i3 2, label %197
    i3 3, label %202
    i3 -4, label %207
  ], !dbg !875

; <label>:189:                                    ; preds = %184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !876
  br label %283, !dbg !877

; <label>:190:                                    ; preds = %184
  %191 = lshr i8 %187, 3, !dbg !878
  %192 = zext i8 %191 to i64, !dbg !878
  br label %211, !dbg !879

; <label>:193:                                    ; preds = %184
  %194 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !880
  %195 = load i8, i8* %194, align 1, !dbg !881, !tbaa !444
  %196 = zext i8 %195 to i64, !dbg !880
  br label %211, !dbg !882

; <label>:197:                                    ; preds = %184
  %198 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !883
  %199 = bitcast i8* %198 to i16*, !dbg !884
  %200 = load i16, i16* %199, align 1, !dbg !884, !tbaa !719
  %201 = zext i16 %200 to i64, !dbg !883
  br label %211, !dbg !885

; <label>:202:                                    ; preds = %184
  %203 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !886
  %204 = bitcast i8* %203 to i32*, !dbg !887
  %205 = load i32, i32* %204, align 1, !dbg !887, !tbaa !724
  %206 = zext i32 %205 to i64, !dbg !886
  br label %211, !dbg !888

; <label>:207:                                    ; preds = %184
  %208 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !889
  %209 = bitcast i8* %208 to i64*, !dbg !890
  %210 = load i64, i64* %209, align 1, !dbg !890, !tbaa !680
  br label %211, !dbg !891

; <label>:211:                                    ; preds = %190, %193, %197, %202, %207
  %212 = phi i64 [ %210, %207 ], [ %206, %202 ], [ %201, %197 ], [ %196, %193 ], [ %192, %190 ], !dbg !892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !876
  %213 = icmp eq i64 %212, 0, !dbg !893
  br i1 %213, label %283, label %214, !dbg !877

; <label>:214:                                    ; preds = %211
  %215 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %186, i64 0, i32 2, !dbg !894
  %216 = load i8*, i8** %215, align 8, !dbg !894, !tbaa !434
  %217 = load i64, i64* %2, align 8, !dbg !896, !tbaa !680
  switch i3 %188, label %239 [
    i3 0, label %218
    i3 1, label %221
    i3 2, label %225
    i3 3, label %230
    i3 -4, label %235
  ], !dbg !900

; <label>:218:                                    ; preds = %214
  %219 = lshr i8 %187, 3, !dbg !901
  %220 = zext i8 %219 to i64, !dbg !901
  br label %239, !dbg !902

; <label>:221:                                    ; preds = %214
  %222 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !903
  %223 = load i8, i8* %222, align 1, !dbg !904, !tbaa !444
  %224 = zext i8 %223 to i64, !dbg !903
  br label %239, !dbg !905

; <label>:225:                                    ; preds = %214
  %226 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !906
  %227 = bitcast i8* %226 to i16*, !dbg !907
  %228 = load i16, i16* %227, align 1, !dbg !907, !tbaa !719
  %229 = zext i16 %228 to i64, !dbg !906
  br label %239, !dbg !908

; <label>:230:                                    ; preds = %214
  %231 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !909
  %232 = bitcast i8* %231 to i32*, !dbg !910
  %233 = load i32, i32* %232, align 1, !dbg !910, !tbaa !724
  %234 = zext i32 %233 to i64, !dbg !909
  br label %239, !dbg !911

; <label>:235:                                    ; preds = %214
  %236 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !912
  %237 = bitcast i8* %236 to i64*, !dbg !913
  %238 = load i64, i64* %237, align 1, !dbg !913, !tbaa !680
  br label %239, !dbg !914

; <label>:239:                                    ; preds = %214, %218, %221, %225, %230, %235
  %240 = phi i64 [ %238, %235 ], [ %234, %230 ], [ %229, %225 ], [ %224, %221 ], [ %220, %218 ], [ 0, %214 ], !dbg !915
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !916
  %241 = add i64 %240, %217, !dbg !917
  %242 = call i8* @sdsgrowzero(i8* %216, i64 %241) #5, !dbg !918
  store i8* %242, i8** %215, align 8, !dbg !919, !tbaa !434
  %243 = load i64, i64* %2, align 8, !dbg !920, !tbaa !680
  %244 = getelementptr inbounds i8, i8* %242, i64 %243, !dbg !921
  %245 = load i8, i8* %185, align 1, !dbg !924, !tbaa !444
  %246 = trunc i8 %245 to i3, !dbg !926
  switch i3 %246, label %268 [
    i3 0, label %247
    i3 1, label %250
    i3 2, label %254
    i3 3, label %259
    i3 -4, label %264
  ], !dbg !926

; <label>:247:                                    ; preds = %239
  %248 = lshr i8 %245, 3, !dbg !927
  %249 = zext i8 %248 to i64, !dbg !927
  br label %268, !dbg !928

; <label>:250:                                    ; preds = %239
  %251 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !929
  %252 = load i8, i8* %251, align 1, !dbg !930, !tbaa !444
  %253 = zext i8 %252 to i64, !dbg !929
  br label %268, !dbg !931

; <label>:254:                                    ; preds = %239
  %255 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !932
  %256 = bitcast i8* %255 to i16*, !dbg !933
  %257 = load i16, i16* %256, align 1, !dbg !933, !tbaa !719
  %258 = zext i16 %257 to i64, !dbg !932
  br label %268, !dbg !934

; <label>:259:                                    ; preds = %239
  %260 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !935
  %261 = bitcast i8* %260 to i32*, !dbg !936
  %262 = load i32, i32* %261, align 1, !dbg !936, !tbaa !724
  %263 = zext i32 %262 to i64, !dbg !935
  br label %268, !dbg !937

; <label>:264:                                    ; preds = %239
  %265 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !938
  %266 = bitcast i8* %265 to i64*, !dbg !939
  %267 = load i64, i64* %266, align 1, !dbg !939, !tbaa !680
  br label %268, !dbg !940

; <label>:268:                                    ; preds = %239, %247, %250, %254, %259, %264
  %269 = phi i64 [ %267, %264 ], [ %263, %259 ], [ %258, %254 ], [ %253, %250 ], [ %249, %247 ], [ 0, %239 ], !dbg !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  %270 = call i8* @memcpy(i8* %244, i8* nonnull %9, i64 %269) #5, !dbg !943
  %271 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !944, !tbaa !363
  %272 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !945, !tbaa !429
  %273 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %272, i64 1, !dbg !946
  %274 = load %struct.redisObject*, %struct.redisObject** %273, align 8, !dbg !946, !tbaa !432
  call void @signalModifiedKey(%struct.redisDb* %271, %struct.redisObject* %274) #5, !dbg !947
  %275 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !948, !tbaa !429
  %276 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %275, i64 1, !dbg !949
  %277 = load %struct.redisObject*, %struct.redisObject** %276, align 8, !dbg !949, !tbaa !432
  %278 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !950, !tbaa !363
  %279 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %278, i64 0, i32 5, !dbg !951
  %280 = load i32, i32* %279, align 8, !dbg !951, !tbaa !397
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.redisObject* %277, i32 %280) #5, !dbg !952
  %281 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !953, !tbaa !382
  %282 = add nsw i64 %281, 1, !dbg !953
  store i64 %282, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !953, !tbaa !382
  br label %283, !dbg !954

; <label>:283:                                    ; preds = %189, %211, %268
  %284 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %186, i64 0, i32 2, !dbg !955
  %285 = load i8*, i8** %284, align 8, !dbg !955, !tbaa !434
  %286 = getelementptr inbounds i8, i8* %285, i64 -1, !dbg !958
  %287 = load i8, i8* %286, align 1, !dbg !958, !tbaa !444
  %288 = trunc i8 %287 to i3, !dbg !960
  switch i3 %288, label %310 [
    i3 0, label %289
    i3 1, label %292
    i3 2, label %296
    i3 3, label %301
    i3 -4, label %306
  ], !dbg !960

; <label>:289:                                    ; preds = %283
  %290 = lshr i8 %287, 3, !dbg !961
  %291 = zext i8 %290 to i64, !dbg !961
  br label %310, !dbg !962

; <label>:292:                                    ; preds = %283
  %293 = getelementptr inbounds i8, i8* %285, i64 -3, !dbg !963
  %294 = load i8, i8* %293, align 1, !dbg !964, !tbaa !444
  %295 = zext i8 %294 to i64, !dbg !963
  br label %310, !dbg !965

; <label>:296:                                    ; preds = %283
  %297 = getelementptr inbounds i8, i8* %285, i64 -5, !dbg !966
  %298 = bitcast i8* %297 to i16*, !dbg !967
  %299 = load i16, i16* %298, align 1, !dbg !967, !tbaa !719
  %300 = zext i16 %299 to i64, !dbg !966
  br label %310, !dbg !968

; <label>:301:                                    ; preds = %283
  %302 = getelementptr inbounds i8, i8* %285, i64 -9, !dbg !969
  %303 = bitcast i8* %302 to i32*, !dbg !970
  %304 = load i32, i32* %303, align 1, !dbg !970, !tbaa !724
  %305 = zext i32 %304 to i64, !dbg !969
  br label %310, !dbg !971

; <label>:306:                                    ; preds = %283
  %307 = getelementptr inbounds i8, i8* %285, i64 -17, !dbg !972
  %308 = bitcast i8* %307 to i64*, !dbg !973
  %309 = load i64, i64* %308, align 1, !dbg !973, !tbaa !680
  br label %310, !dbg !974

; <label>:310:                                    ; preds = %283, %289, %292, %296, %301, %306
  %311 = phi i64 [ %309, %306 ], [ %305, %301 ], [ %300, %296 ], [ %295, %292 ], [ %291, %289 ], [ 0, %283 ], !dbg !975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !976
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %311) #5, !dbg !977
  br label %312, !dbg !978

; <label>:312:                                    ; preds = %177, %116, %149, %84, %1, %310, %55, %17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4, !dbg !978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  ret void, !dbg !978
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
define dso_local void @getrangeCommand(%struct.client*) local_unnamed_addr #0 !dbg !979 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [32 x i8], align 16
  %5 = bitcast i64* %2 to i8*, !dbg !992
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4, !dbg !992
  %6 = bitcast i64* %3 to i8*, !dbg !992
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4, !dbg !992
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0, !dbg !993
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #4, !dbg !993
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !995
  %9 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !995, !tbaa !429
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 2, !dbg !997
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !997, !tbaa !432
  %12 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %11, i64* nonnull %2, i8* null) #5, !dbg !999
  %13 = icmp eq i32 %12, 0, !dbg !1000
  br i1 %13, label %14, label %113, !dbg !1001

; <label>:14:                                     ; preds = %1
  %15 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1002, !tbaa !429
  %16 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 3, !dbg !1004
  %17 = load %struct.redisObject*, %struct.redisObject** %16, align 8, !dbg !1004, !tbaa !432
  %18 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %17, i64* nonnull %3, i8* null) #5, !dbg !1006
  %19 = icmp eq i32 %18, 0, !dbg !1007
  br i1 %19, label %20, label %113, !dbg !1008

; <label>:20:                                     ; preds = %14
  %21 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1009, !tbaa !429
  %22 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %21, i64 1, !dbg !1011
  %23 = load %struct.redisObject*, %struct.redisObject** %22, align 8, !dbg !1011, !tbaa !432
  %24 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 3), align 8, !dbg !1012, !tbaa !1013
  %25 = call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* nonnull %0, %struct.redisObject* %23, %struct.redisObject* %24) #5, !dbg !1014
  %26 = icmp eq %struct.redisObject* %25, null, !dbg !1016
  br i1 %26, label %113, label %27, !dbg !1017

; <label>:27:                                     ; preds = %20
  %28 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %25, i32 0) #5, !dbg !1018
  %29 = icmp eq i32 %28, 0, !dbg !1018
  br i1 %29, label %30, label %113, !dbg !1019

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %25, i64 0, i32 0, !dbg !1020
  %32 = load i32, i32* %31, align 8, !dbg !1020
  %33 = and i32 %32, 240, !dbg !1020
  %34 = icmp eq i32 %33, 16, !dbg !1022
  %35 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %25, i64 0, i32 2, !dbg !1023
  br i1 %34, label %36, label %41, !dbg !1025

; <label>:36:                                     ; preds = %30
  %37 = bitcast i8** %35 to i64*, !dbg !1027
  %38 = load i64, i64* %37, align 8, !dbg !1027, !tbaa !434
  %39 = call i32 @ll2string(i8* nonnull %7, i64 32, i64 %38) #5, !dbg !1029
  %40 = sext i32 %39 to i64, !dbg !1029
  br label %69, !dbg !1031

; <label>:41:                                     ; preds = %30
  %42 = load i8*, i8** %35, align 8, !dbg !1032, !tbaa !434
  %43 = getelementptr inbounds i8, i8* %42, i64 -1, !dbg !1035
  %44 = load i8, i8* %43, align 1, !dbg !1035, !tbaa !444
  %45 = trunc i8 %44 to i3, !dbg !1037
  switch i3 %45, label %67 [
    i3 0, label %46
    i3 1, label %49
    i3 2, label %53
    i3 3, label %58
    i3 -4, label %63
  ], !dbg !1037

; <label>:46:                                     ; preds = %41
  %47 = lshr i8 %44, 3, !dbg !1038
  %48 = zext i8 %47 to i64, !dbg !1038
  br label %67, !dbg !1039

; <label>:49:                                     ; preds = %41
  %50 = getelementptr inbounds i8, i8* %42, i64 -3, !dbg !1040
  %51 = load i8, i8* %50, align 1, !dbg !1041, !tbaa !444
  %52 = zext i8 %51 to i64, !dbg !1040
  br label %67, !dbg !1042

; <label>:53:                                     ; preds = %41
  %54 = getelementptr inbounds i8, i8* %42, i64 -5, !dbg !1043
  %55 = bitcast i8* %54 to i16*, !dbg !1044
  %56 = load i16, i16* %55, align 1, !dbg !1044, !tbaa !719
  %57 = zext i16 %56 to i64, !dbg !1043
  br label %67, !dbg !1045

; <label>:58:                                     ; preds = %41
  %59 = getelementptr inbounds i8, i8* %42, i64 -9, !dbg !1046
  %60 = bitcast i8* %59 to i32*, !dbg !1047
  %61 = load i32, i32* %60, align 1, !dbg !1047, !tbaa !724
  %62 = zext i32 %61 to i64, !dbg !1046
  br label %67, !dbg !1048

; <label>:63:                                     ; preds = %41
  %64 = getelementptr inbounds i8, i8* %42, i64 -17, !dbg !1049
  %65 = bitcast i8* %64 to i64*, !dbg !1050
  %66 = load i64, i64* %65, align 1, !dbg !1050, !tbaa !680
  br label %67, !dbg !1051

; <label>:67:                                     ; preds = %41, %46, %49, %53, %58, %63
  %68 = phi i64 [ %66, %63 ], [ %62, %58 ], [ %57, %53 ], [ %52, %49 ], [ %48, %46 ], [ 0, %41 ], !dbg !1052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1053
  br label %69

; <label>:69:                                     ; preds = %67, %36
  %70 = phi i8* [ %7, %36 ], [ %42, %67 ], !dbg !1023
  %71 = phi i64 [ %40, %36 ], [ %68, %67 ], !dbg !1023
  %72 = load i64, i64* %2, align 8, !dbg !1054, !tbaa !324
  %73 = load i64, i64* %3, align 8, !dbg !1056
  %74 = and i64 %73, %72, !dbg !1057
  %75 = icmp slt i64 %74, 0, !dbg !1057
  %76 = icmp sgt i64 %72, %73, !dbg !1058
  %77 = and i1 %76, %75, !dbg !1057
  br i1 %77, label %78, label %80, !dbg !1057

; <label>:78:                                     ; preds = %69
  %79 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 3), align 8, !dbg !1059, !tbaa !1013
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %79) #5, !dbg !1061
  br label %113, !dbg !1062

; <label>:80:                                     ; preds = %69
  %81 = icmp slt i64 %72, 0, !dbg !1063
  br i1 %81, label %82, label %84, !dbg !1065

; <label>:82:                                     ; preds = %80
  %83 = add i64 %72, %71, !dbg !1066
  store i64 %83, i64* %2, align 8, !dbg !1067, !tbaa !324
  br label %84, !dbg !1068

; <label>:84:                                     ; preds = %82, %80
  %85 = phi i64 [ %83, %82 ], [ %72, %80 ]
  %86 = icmp slt i64 %73, 0, !dbg !1069
  br i1 %86, label %87, label %89, !dbg !1071

; <label>:87:                                     ; preds = %84
  %88 = add i64 %73, %71, !dbg !1072
  store i64 %88, i64* %3, align 8, !dbg !1073, !tbaa !324
  br label %89, !dbg !1074

; <label>:89:                                     ; preds = %87, %84
  %90 = phi i64 [ %88, %87 ], [ %73, %84 ]
  %91 = icmp slt i64 %85, 0, !dbg !1075
  br i1 %91, label %92, label %93, !dbg !1077

; <label>:92:                                     ; preds = %89
  store i64 0, i64* %2, align 8, !dbg !1078, !tbaa !324
  br label %93, !dbg !1079

; <label>:93:                                     ; preds = %92, %89
  %94 = phi i64 [ 0, %92 ], [ %85, %89 ]
  %95 = icmp slt i64 %90, 0, !dbg !1080
  %96 = select i1 %95, i64 0, i64 %90, !dbg !1082
  %97 = icmp ult i64 %96, %71, !dbg !1083
  %98 = add i64 %71, -1, !dbg !1085
  %99 = select i1 %97, i64 %96, i64 %98, !dbg !1086
  %100 = xor i1 %97, true, !dbg !998
  %101 = or i1 %95, %100, !dbg !998
  br i1 %101, label %102, label %103, !dbg !998

; <label>:102:                                    ; preds = %93
  store i64 %99, i64* %3, align 8, !dbg !998, !tbaa !324
  br label %103, !dbg !998

; <label>:103:                                    ; preds = %93, %102
  %104 = icmp slt i64 %99, %94, !dbg !1087
  %105 = icmp eq i64 %71, 0, !dbg !1089
  %106 = or i1 %105, %104, !dbg !1090
  br i1 %106, label %107, label %109, !dbg !1090

; <label>:107:                                    ; preds = %103
  %108 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 3), align 8, !dbg !1091, !tbaa !1013
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %108) #5, !dbg !1093
  br label %113, !dbg !1094

; <label>:109:                                    ; preds = %103
  %110 = getelementptr inbounds i8, i8* %70, i64 %94, !dbg !1095
  %111 = sub i64 1, %94, !dbg !1097
  %112 = add i64 %111, %99, !dbg !1098
  call void @addReplyBulkCBuffer(%struct.client* nonnull %0, i8* %110, i64 %112) #5, !dbg !1099
  br label %113

; <label>:113:                                    ; preds = %107, %109, %20, %27, %14, %1, %78
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #4, !dbg !1100
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4, !dbg !1100
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4, !dbg !1100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1100
  ret void, !dbg !1100
}

; Function Attrs: noredzone
declare dso_local i32 @ll2string(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mgetCommand(%struct.client*) local_unnamed_addr #0 !dbg !1101 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1110
  %3 = load i32, i32* %2, align 8, !dbg !1110, !tbaa !426
  %4 = add nsw i32 %3, -1, !dbg !1111
  %5 = sext i32 %4 to i64, !dbg !1112
  tail call void @addReplyMultiBulkLen(%struct.client* %0, i64 %5) #5, !dbg !1113
  %6 = load i32, i32* %2, align 8, !dbg !1115, !tbaa !426
  %7 = icmp sgt i32 %6, 1, !dbg !1116
  br i1 %7, label %8, label %34, !dbg !1117

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %11, !dbg !1117

; <label>:11:                                     ; preds = %8, %29
  %12 = phi i64 [ 1, %8 ], [ %30, %29 ]
  %13 = load %struct.redisDb*, %struct.redisDb** %9, align 8, !dbg !1118, !tbaa !363
  %14 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1119, !tbaa !429
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 %12, !dbg !1120
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !1120, !tbaa !432
  %17 = tail call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %13, %struct.redisObject* %16) #5, !dbg !1121
  %18 = icmp eq %struct.redisObject* %17, null, !dbg !1123
  br i1 %18, label %19, label %21, !dbg !1125

; <label>:19:                                     ; preds = %11
  %20 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1126, !tbaa !574
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %20) #5, !dbg !1128
  br label %29, !dbg !1129

; <label>:21:                                     ; preds = %11
  %22 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i64 0, i32 0, !dbg !1130
  %23 = load i32, i32* %22, align 8, !dbg !1130
  %24 = and i32 %23, 15, !dbg !1130
  %25 = icmp eq i32 %24, 0, !dbg !1133
  br i1 %25, label %28, label %26, !dbg !1134

; <label>:26:                                     ; preds = %21
  %27 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1135, !tbaa !574
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %27) #5, !dbg !1137
  br label %29, !dbg !1138

; <label>:28:                                     ; preds = %21
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* nonnull %17) #5, !dbg !1139
  br label %29

; <label>:29:                                     ; preds = %26, %28, %19
  %30 = add nuw nsw i64 %12, 1, !dbg !1141
  %31 = load i32, i32* %2, align 8, !dbg !1115, !tbaa !426
  %32 = sext i32 %31 to i64, !dbg !1116
  %33 = icmp slt i64 %30, %32, !dbg !1116
  br i1 %33, label %11, label %34, !dbg !1117, !llvm.loop !1142

; <label>:34:                                     ; preds = %29, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1144
  ret void, !dbg !1144
}

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyRead(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @msetGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !1145 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1154
  %4 = load i32, i32* %3, align 8, !dbg !1154, !tbaa !426
  %5 = and i32 %4, 1, !dbg !1156
  %6 = icmp eq i32 %5, 0, !dbg !1156
  br i1 %6, label %7, label %8, !dbg !1157

; <label>:7:                                      ; preds = %2
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1158
  br label %71, !dbg !1160

; <label>:8:                                      ; preds = %2
  %9 = icmp ne i32 %1, 0, !dbg !1161
  br i1 %9, label %10, label %30, !dbg !1163

; <label>:10:                                     ; preds = %8
  %11 = icmp sgt i32 %4, 1, !dbg !1165
  br i1 %11, label %12, label %61, !dbg !1169

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %14 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %19, !dbg !1169

; <label>:15:                                     ; preds = %19
  %16 = load i32, i32* %3, align 8, !dbg !1170, !tbaa !426
  %17 = trunc i64 %27 to i32, !dbg !1165
  %18 = icmp sgt i32 %16, %17, !dbg !1165
  br i1 %18, label %19, label %30, !dbg !1169, !llvm.loop !1171

; <label>:19:                                     ; preds = %12, %15
  %20 = phi i64 [ 1, %12 ], [ %27, %15 ]
  %21 = load %struct.redisDb*, %struct.redisDb** %13, align 8, !dbg !1173, !tbaa !363
  %22 = load %struct.redisObject**, %struct.redisObject*** %14, align 8, !dbg !1176, !tbaa !429
  %23 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %22, i64 %20, !dbg !1177
  %24 = load %struct.redisObject*, %struct.redisObject** %23, align 8, !dbg !1177, !tbaa !432
  %25 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %21, %struct.redisObject* %24) #5, !dbg !1178
  %26 = icmp eq %struct.redisObject* %25, null, !dbg !1179
  %27 = add nuw i64 %20, 2, !dbg !1180
  br i1 %26, label %15, label %28, !dbg !1181

; <label>:28:                                     ; preds = %19
  %29 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1182, !tbaa !528
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %29) #5, !dbg !1184
  br label %71, !dbg !1185

; <label>:30:                                     ; preds = %15, %8
  %31 = phi i32 [ %4, %8 ], [ %16, %15 ], !dbg !1186
  %32 = icmp sgt i32 %31, 1, !dbg !1189
  br i1 %32, label %33, label %61, !dbg !1190

; <label>:33:                                     ; preds = %30
  %34 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %35 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  br label %36, !dbg !1190

; <label>:36:                                     ; preds = %33, %36
  %37 = phi i64 [ 1, %33 ], [ %57, %36 ]
  %38 = load %struct.redisObject**, %struct.redisObject*** %34, align 8, !dbg !1191, !tbaa !429
  %39 = add nuw nsw i64 %37, 1, !dbg !1193
  %40 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %38, i64 %39, !dbg !1194
  %41 = load %struct.redisObject*, %struct.redisObject** %40, align 8, !dbg !1194, !tbaa !432
  %42 = tail call %struct.redisObject* @tryObjectEncoding(%struct.redisObject* %41) #5, !dbg !1195
  %43 = load %struct.redisObject**, %struct.redisObject*** %34, align 8, !dbg !1196, !tbaa !429
  %44 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %43, i64 %39, !dbg !1197
  store %struct.redisObject* %42, %struct.redisObject** %44, align 8, !dbg !1198, !tbaa !432
  %45 = load %struct.redisDb*, %struct.redisDb** %35, align 8, !dbg !1199, !tbaa !363
  %46 = load %struct.redisObject**, %struct.redisObject*** %34, align 8, !dbg !1200, !tbaa !429
  %47 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %46, i64 %37, !dbg !1201
  %48 = load %struct.redisObject*, %struct.redisObject** %47, align 8, !dbg !1201, !tbaa !432
  %49 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %46, i64 %39, !dbg !1202
  %50 = load %struct.redisObject*, %struct.redisObject** %49, align 8, !dbg !1202, !tbaa !432
  tail call void @setKey(%struct.redisDb* %45, %struct.redisObject* %48, %struct.redisObject* %50) #5, !dbg !1203
  %51 = load %struct.redisObject**, %struct.redisObject*** %34, align 8, !dbg !1204, !tbaa !429
  %52 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %51, i64 %37, !dbg !1205
  %53 = load %struct.redisObject*, %struct.redisObject** %52, align 8, !dbg !1205, !tbaa !432
  %54 = load %struct.redisDb*, %struct.redisDb** %35, align 8, !dbg !1206, !tbaa !363
  %55 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %54, i64 0, i32 5, !dbg !1207
  %56 = load i32, i32* %55, align 8, !dbg !1207, !tbaa !397
  tail call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.redisObject* %53, i32 %56) #5, !dbg !1208
  %57 = add nuw i64 %37, 2, !dbg !1209
  %58 = load i32, i32* %3, align 8, !dbg !1186, !tbaa !426
  %59 = trunc i64 %57 to i32, !dbg !1189
  %60 = icmp sgt i32 %58, %59, !dbg !1189
  br i1 %60, label %36, label %61, !dbg !1190, !llvm.loop !1210

; <label>:61:                                     ; preds = %36, %10, %30
  %62 = phi i32 [ %31, %30 ], [ %4, %10 ], [ %58, %36 ], !dbg !1186
  %63 = add nsw i32 %62, -1, !dbg !1212
  %64 = sdiv i32 %63, 2, !dbg !1213
  %65 = sext i32 %64 to i64, !dbg !1214
  %66 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1215, !tbaa !382
  %67 = add nsw i64 %66, %65, !dbg !1215
  store i64 %67, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1215, !tbaa !382
  %68 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !1216
  %69 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1217
  %70 = select i1 %9, %struct.redisObject* %68, %struct.redisObject* %69, !dbg !1218
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %70) #5, !dbg !1219
  br label %71, !dbg !1220

; <label>:71:                                     ; preds = %61, %28, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1220
  ret void, !dbg !1220
}

; Function Attrs: noredzone nounwind
define dso_local void @msetCommand(%struct.client*) local_unnamed_addr #0 !dbg !1221 {
  tail call void @msetGenericCommand(%struct.client* %0, i32 0) #6, !dbg !1225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1226
  ret void, !dbg !1226
}

; Function Attrs: noredzone nounwind
define dso_local void @msetnxCommand(%struct.client*) local_unnamed_addr #0 !dbg !1227 {
  tail call void @msetGenericCommand(%struct.client* %0, i32 1) #6, !dbg !1231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1232
  ret void, !dbg !1232
}

; Function Attrs: noredzone nounwind
define dso_local void @incrDecrCommand(%struct.client*, i64) local_unnamed_addr #0 !dbg !1233 {
  %3 = alloca i64, align 8
  %4 = bitcast i64* %3 to i8*, !dbg !1245
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4, !dbg !1245
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1246
  %6 = load %struct.redisDb*, %struct.redisDb** %5, align 8, !dbg !1246, !tbaa !363
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1247
  %8 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1247, !tbaa !429
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 1, !dbg !1248
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !1248, !tbaa !432
  %11 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %6, %struct.redisObject* %10) #5, !dbg !1249
  %12 = icmp ne %struct.redisObject* %11, null, !dbg !1251
  br i1 %12, label %13, label %16, !dbg !1253

; <label>:13:                                     ; preds = %2
  %14 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %11, i32 0) #5, !dbg !1254
  %15 = icmp eq i32 %14, 0, !dbg !1254
  br i1 %15, label %16, label %74, !dbg !1255

; <label>:16:                                     ; preds = %13, %2
  %17 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %11, i64* nonnull %3, i8* null) #5, !dbg !1257
  %18 = icmp eq i32 %17, 0, !dbg !1259
  br i1 %18, label %19, label %74, !dbg !1260

; <label>:19:                                     ; preds = %16
  %20 = load i64, i64* %3, align 8, !dbg !1261, !tbaa !324
  %21 = and i64 %20, %1, !dbg !1263
  %22 = icmp slt i64 %21, 0, !dbg !1263
  %23 = sub nsw i64 -9223372036854775808, %20, !dbg !1265
  %24 = icmp sgt i64 %23, %1, !dbg !1266
  %25 = and i1 %22, %24, !dbg !1263
  br i1 %25, label %33, label %26, !dbg !1263

; <label>:26:                                     ; preds = %19
  %27 = icmp sgt i64 %1, 0, !dbg !1267
  %28 = icmp sgt i64 %20, 0, !dbg !1268
  %29 = and i1 %27, %28, !dbg !1269
  %30 = sub nsw i64 9223372036854775807, %20, !dbg !1270
  %31 = icmp slt i64 %30, %1, !dbg !1271
  %32 = and i1 %29, %31, !dbg !1269
  br i1 %32, label %33, label %34, !dbg !1269

; <label>:33:                                     ; preds = %26, %19
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !1272
  br label %74, !dbg !1274

; <label>:34:                                     ; preds = %26
  %35 = add nsw i64 %20, %1, !dbg !1275
  store i64 %35, i64* %3, align 8, !dbg !1275, !tbaa !324
  br i1 %12, label %36, label %50, !dbg !1276

; <label>:36:                                     ; preds = %34
  %37 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 1, !dbg !1278
  %38 = load i32, i32* %37, align 4, !dbg !1278, !tbaa !1279
  %39 = icmp eq i32 %38, 1, !dbg !1280
  br i1 %39, label %40, label %50, !dbg !1281

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 0, !dbg !1282
  %42 = load i32, i32* %41, align 8, !dbg !1282
  %43 = and i32 %42, 240, !dbg !1282
  %44 = icmp eq i32 %43, 16, !dbg !1283
  %45 = icmp ugt i64 %35, 9999, !dbg !1284
  %46 = and i1 %45, %44, !dbg !1285
  br i1 %46, label %47, label %50, !dbg !1285

; <label>:47:                                     ; preds = %40
  %48 = inttoptr i64 %35 to i8*, !dbg !1287
  %49 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 2, !dbg !1289
  store i8* %48, i8** %49, align 8, !dbg !1290, !tbaa !434
  br label %58, !dbg !1291

; <label>:50:                                     ; preds = %40, %36, %34
  %51 = call %struct.redisObject* @createStringObjectFromLongLongForValue(i64 %35) #5, !dbg !1292
  %52 = load %struct.redisDb*, %struct.redisDb** %5, align 8, !dbg !1294, !tbaa !363
  %53 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1294, !tbaa !429
  %54 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %53, i64 1, !dbg !1294
  %55 = load %struct.redisObject*, %struct.redisObject** %54, align 8, !dbg !1294, !tbaa !432
  br i1 %12, label %56, label %57, !dbg !1297

; <label>:56:                                     ; preds = %50
  call void @dbOverwrite(%struct.redisDb* %52, %struct.redisObject* %55, %struct.redisObject* %51) #5, !dbg !1298
  br label %58, !dbg !1300

; <label>:57:                                     ; preds = %50
  call void @dbAdd(%struct.redisDb* %52, %struct.redisObject* %55, %struct.redisObject* %51) #5, !dbg !1301
  br label %58

; <label>:58:                                     ; preds = %56, %57, %47
  %59 = phi %struct.redisObject* [ %11, %47 ], [ %51, %56 ], [ %51, %57 ], !dbg !1302
  %60 = load %struct.redisDb*, %struct.redisDb** %5, align 8, !dbg !1303, !tbaa !363
  %61 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1304, !tbaa !429
  %62 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %61, i64 1, !dbg !1305
  %63 = load %struct.redisObject*, %struct.redisObject** %62, align 8, !dbg !1305, !tbaa !432
  call void @signalModifiedKey(%struct.redisDb* %60, %struct.redisObject* %63) #5, !dbg !1306
  %64 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1307, !tbaa !429
  %65 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %64, i64 1, !dbg !1308
  %66 = load %struct.redisObject*, %struct.redisObject** %65, align 8, !dbg !1308, !tbaa !432
  %67 = load %struct.redisDb*, %struct.redisDb** %5, align 8, !dbg !1309, !tbaa !363
  %68 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %67, i64 0, i32 5, !dbg !1310
  %69 = load i32, i32* %68, align 8, !dbg !1310, !tbaa !397
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), %struct.redisObject* %66, i32 %69) #5, !dbg !1311
  %70 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1312, !tbaa !382
  %71 = add nsw i64 %70, 1, !dbg !1312
  store i64 %71, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1312, !tbaa !382
  %72 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 9), align 8, !dbg !1313, !tbaa !1314
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %72) #5, !dbg !1315
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %59) #5, !dbg !1316
  %73 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 0), align 8, !dbg !1317, !tbaa !1318
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %73) #5, !dbg !1319
  br label %74, !dbg !1320

; <label>:74:                                     ; preds = %16, %13, %58, %33
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4, !dbg !1320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1320
  ret void, !dbg !1320
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObjectFromLongLongForValue(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @dbOverwrite(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @incrCommand(%struct.client*) local_unnamed_addr #0 !dbg !1321 {
  tail call void @incrDecrCommand(%struct.client* %0, i64 1) #6, !dbg !1325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1326
  ret void, !dbg !1326
}

; Function Attrs: noredzone nounwind
define dso_local void @decrCommand(%struct.client*) local_unnamed_addr #0 !dbg !1327 {
  tail call void @incrDecrCommand(%struct.client* %0, i64 -1) #6, !dbg !1331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1332
  ret void, !dbg !1332
}

; Function Attrs: noredzone nounwind
define dso_local void @incrbyCommand(%struct.client*) local_unnamed_addr #0 !dbg !1333 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !1338
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4, !dbg !1338
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1339
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1339, !tbaa !429
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 2, !dbg !1341
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1341, !tbaa !432
  %8 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %7, i64* nonnull %2, i8* null) #5, !dbg !1343
  %9 = icmp eq i32 %8, 0, !dbg !1344
  br i1 %9, label %10, label %12, !dbg !1345

; <label>:10:                                     ; preds = %1
  %11 = load i64, i64* %2, align 8, !dbg !1346, !tbaa !324
  call void @incrDecrCommand(%struct.client* nonnull %0, i64 %11) #6, !dbg !1347
  br label %12, !dbg !1348

; <label>:12:                                     ; preds = %1, %10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4, !dbg !1348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  ret void, !dbg !1348
}

; Function Attrs: noredzone nounwind
define dso_local void @decrbyCommand(%struct.client*) local_unnamed_addr #0 !dbg !1349 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !1354
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4, !dbg !1354
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1355
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1355, !tbaa !429
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 2, !dbg !1357
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1357, !tbaa !432
  %8 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %7, i64* nonnull %2, i8* null) #5, !dbg !1359
  %9 = icmp eq i32 %8, 0, !dbg !1360
  br i1 %9, label %10, label %13, !dbg !1361

; <label>:10:                                     ; preds = %1
  %11 = load i64, i64* %2, align 8, !dbg !1362, !tbaa !324
  %12 = sub nsw i64 0, %11, !dbg !1363
  call void @incrDecrCommand(%struct.client* nonnull %0, i64 %12) #6, !dbg !1364
  br label %13, !dbg !1365

; <label>:13:                                     ; preds = %1, %10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4, !dbg !1365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1365
  ret void, !dbg !1365
}

; Function Attrs: noredzone nounwind
define dso_local void @incrbyfloatCommand(%struct.client*) local_unnamed_addr #0 !dbg !1366 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  %4 = bitcast x86_fp80* %2 to i8*, !dbg !1376
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #4, !dbg !1376
  %5 = bitcast x86_fp80* %3 to i8*, !dbg !1376
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #4, !dbg !1376
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1377
  %7 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1377, !tbaa !363
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1378
  %9 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1378, !tbaa !429
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 1, !dbg !1379
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !1379, !tbaa !432
  %12 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %7, %struct.redisObject* %11) #5, !dbg !1380
  %13 = icmp ne %struct.redisObject* %12, null, !dbg !1382
  br i1 %13, label %14, label %17, !dbg !1384

; <label>:14:                                     ; preds = %1
  %15 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %12, i32 0) #5, !dbg !1385
  %16 = icmp eq i32 %15, 0, !dbg !1385
  br i1 %16, label %17, label %62, !dbg !1386

; <label>:17:                                     ; preds = %14, %1
  %18 = call i32 @getLongDoubleFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %12, x86_fp80* nonnull %3, i8* null) #5, !dbg !1388
  %19 = icmp eq i32 %18, 0, !dbg !1390
  br i1 %19, label %20, label %62, !dbg !1391

; <label>:20:                                     ; preds = %17
  %21 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1392, !tbaa !429
  %22 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %21, i64 2, !dbg !1393
  %23 = load %struct.redisObject*, %struct.redisObject** %22, align 8, !dbg !1393, !tbaa !432
  %24 = call i32 @getLongDoubleFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %23, x86_fp80* nonnull %2, i8* null) #5, !dbg !1395
  %25 = icmp eq i32 %24, 0, !dbg !1396
  br i1 %25, label %26, label %62, !dbg !1397

; <label>:26:                                     ; preds = %20
  %27 = load x86_fp80, x86_fp80* %2, align 16, !dbg !1398, !tbaa !1399
  %28 = load x86_fp80, x86_fp80* %3, align 16, !dbg !1401, !tbaa !1399
  %29 = fadd x86_fp80 %27, %28, !dbg !1401
  store x86_fp80 %29, x86_fp80* %3, align 16, !dbg !1401, !tbaa !1399
  %30 = fptrunc x86_fp80 %29 to double, !dbg !1402
  %31 = call i32 @__fpclassifyd(double %30) #5, !dbg !1402
  %32 = icmp eq i32 %31, 0, !dbg !1402
  br i1 %32, label %38, label %33, !dbg !1404

; <label>:33:                                     ; preds = %26
  %34 = load x86_fp80, x86_fp80* %3, align 16, !dbg !1405, !tbaa !1399
  %35 = fptrunc x86_fp80 %34 to double, !dbg !1405
  %36 = call i32 @__fpclassifyd(double %35) #5, !dbg !1405
  %37 = icmp eq i32 %36, 1, !dbg !1405
  br i1 %37, label %38, label %39, !dbg !1406

; <label>:38:                                     ; preds = %33, %26
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !1407
  br label %62, !dbg !1409

; <label>:39:                                     ; preds = %33
  %40 = load x86_fp80, x86_fp80* %3, align 16, !dbg !1410, !tbaa !1399
  %41 = call %struct.redisObject* @createStringObjectFromLongDouble(x86_fp80 %40, i32 1) #5, !dbg !1411
  %42 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1413, !tbaa !363
  %43 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1413, !tbaa !429
  %44 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %43, i64 1, !dbg !1413
  %45 = load %struct.redisObject*, %struct.redisObject** %44, align 8, !dbg !1413, !tbaa !432
  br i1 %13, label %46, label %47, !dbg !1415

; <label>:46:                                     ; preds = %39
  call void @dbOverwrite(%struct.redisDb* %42, %struct.redisObject* %45, %struct.redisObject* %41) #5, !dbg !1416
  br label %48, !dbg !1416

; <label>:47:                                     ; preds = %39
  call void @dbAdd(%struct.redisDb* %42, %struct.redisObject* %45, %struct.redisObject* %41) #5, !dbg !1417
  br label %48

; <label>:48:                                     ; preds = %47, %46
  %49 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1418, !tbaa !363
  %50 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1419, !tbaa !429
  %51 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %50, i64 1, !dbg !1420
  %52 = load %struct.redisObject*, %struct.redisObject** %51, align 8, !dbg !1420, !tbaa !432
  call void @signalModifiedKey(%struct.redisDb* %49, %struct.redisObject* %52) #5, !dbg !1421
  %53 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1422, !tbaa !429
  %54 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %53, i64 1, !dbg !1423
  %55 = load %struct.redisObject*, %struct.redisObject** %54, align 8, !dbg !1423, !tbaa !432
  %56 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1424, !tbaa !363
  %57 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %56, i64 0, i32 5, !dbg !1425
  %58 = load i32, i32* %57, align 8, !dbg !1425, !tbaa !397
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), %struct.redisObject* %55, i32 %58) #5, !dbg !1426
  %59 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1427, !tbaa !382
  %60 = add nsw i64 %59, 1, !dbg !1427
  store i64 %60, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1427, !tbaa !382
  call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %41) #5, !dbg !1428
  %61 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3) #5, !dbg !1429
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 0, %struct.redisObject* %61) #5, !dbg !1431
  call void @decrRefCount(%struct.redisObject* %61) #5, !dbg !1432
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 2, %struct.redisObject* %41) #5, !dbg !1433
  br label %62, !dbg !1434

; <label>:62:                                     ; preds = %17, %20, %14, %48, %38
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #4, !dbg !1434
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #4, !dbg !1434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1434
  ret void, !dbg !1434
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
define dso_local void @appendCommand(%struct.client*) local_unnamed_addr #0 !dbg !1435 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1442
  %3 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1442, !tbaa !363
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1443
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1443, !tbaa !429
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !1444
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1444, !tbaa !432
  %8 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %3, %struct.redisObject* %7) #5, !dbg !1445
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !1447
  br i1 %9, label %10, label %30, !dbg !1449

; <label>:10:                                     ; preds = %1
  %11 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1450, !tbaa !429
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 2, !dbg !1452
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !1452, !tbaa !432
  %14 = tail call %struct.redisObject* @tryObjectEncoding(%struct.redisObject* %13) #5, !dbg !1453
  %15 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1454, !tbaa !429
  %16 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 2, !dbg !1455
  store %struct.redisObject* %14, %struct.redisObject** %16, align 8, !dbg !1456, !tbaa !432
  %17 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1457, !tbaa !363
  %18 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1458, !tbaa !429
  %19 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %18, i64 1, !dbg !1459
  %20 = load %struct.redisObject*, %struct.redisObject** %19, align 8, !dbg !1459, !tbaa !432
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %18, i64 2, !dbg !1460
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !1460, !tbaa !432
  tail call void @dbAdd(%struct.redisDb* %17, %struct.redisObject* %20, %struct.redisObject* %22) #5, !dbg !1461
  %23 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1462, !tbaa !429
  %24 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %23, i64 2, !dbg !1463
  %25 = load %struct.redisObject*, %struct.redisObject** %24, align 8, !dbg !1463, !tbaa !432
  tail call void @incrRefCount(%struct.redisObject* %25) #5, !dbg !1464
  %26 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1465, !tbaa !429
  %27 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 2, !dbg !1466
  %28 = load %struct.redisObject*, %struct.redisObject** %27, align 8, !dbg !1466, !tbaa !432
  %29 = tail call i64 @stringObjectLen(%struct.redisObject* %28) #5, !dbg !1467
  br label %131, !dbg !1469

; <label>:30:                                     ; preds = %1
  %31 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %8, i32 0) #5, !dbg !1470
  %32 = icmp eq i32 %31, 0, !dbg !1470
  br i1 %32, label %33, label %145, !dbg !1473

; <label>:33:                                     ; preds = %30
  %34 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1474, !tbaa !429
  %35 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %34, i64 2, !dbg !1475
  %36 = load %struct.redisObject*, %struct.redisObject** %35, align 8, !dbg !1475, !tbaa !432
  %37 = tail call i64 @stringObjectLen(%struct.redisObject* nonnull %8) #5, !dbg !1477
  %38 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %36, i64 0, i32 2, !dbg !1478
  %39 = load i8*, i8** %38, align 8, !dbg !1478, !tbaa !434
  %40 = getelementptr inbounds i8, i8* %39, i64 -1, !dbg !1481
  %41 = load i8, i8* %40, align 1, !dbg !1481, !tbaa !444
  %42 = trunc i8 %41 to i3, !dbg !1483
  switch i3 %42, label %64 [
    i3 0, label %43
    i3 1, label %46
    i3 2, label %50
    i3 3, label %55
    i3 -4, label %60
  ], !dbg !1483

; <label>:43:                                     ; preds = %33
  %44 = lshr i8 %41, 3, !dbg !1484
  %45 = zext i8 %44 to i64, !dbg !1484
  br label %64, !dbg !1485

; <label>:46:                                     ; preds = %33
  %47 = getelementptr inbounds i8, i8* %39, i64 -3, !dbg !1486
  %48 = load i8, i8* %47, align 1, !dbg !1487, !tbaa !444
  %49 = zext i8 %48 to i64, !dbg !1486
  br label %64, !dbg !1488

; <label>:50:                                     ; preds = %33
  %51 = getelementptr inbounds i8, i8* %39, i64 -5, !dbg !1489
  %52 = bitcast i8* %51 to i16*, !dbg !1490
  %53 = load i16, i16* %52, align 1, !dbg !1490, !tbaa !719
  %54 = zext i16 %53 to i64, !dbg !1489
  br label %64, !dbg !1491

; <label>:55:                                     ; preds = %33
  %56 = getelementptr inbounds i8, i8* %39, i64 -9, !dbg !1492
  %57 = bitcast i8* %56 to i32*, !dbg !1493
  %58 = load i32, i32* %57, align 1, !dbg !1493, !tbaa !724
  %59 = zext i32 %58 to i64, !dbg !1492
  br label %64, !dbg !1494

; <label>:60:                                     ; preds = %33
  %61 = getelementptr inbounds i8, i8* %39, i64 -17, !dbg !1495
  %62 = bitcast i8* %61 to i64*, !dbg !1496
  %63 = load i64, i64* %62, align 1, !dbg !1496, !tbaa !680
  br label %64, !dbg !1497

; <label>:64:                                     ; preds = %33, %43, %46, %50, %55, %60
  %65 = phi i64 [ %63, %60 ], [ %59, %55 ], [ %54, %50 ], [ %49, %46 ], [ %45, %43 ], [ 0, %33 ], !dbg !1498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1499
  %66 = add i64 %65, %37, !dbg !1500
  %67 = icmp sgt i64 %66, 536870912, !dbg !1505
  br i1 %67, label %68, label %69, !dbg !1506

; <label>:68:                                     ; preds = %64
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0)) #5, !dbg !1507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1508
  br label %145, !dbg !1509

; <label>:69:                                     ; preds = %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1508
  %70 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1510, !tbaa !363
  %71 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1511, !tbaa !429
  %72 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %71, i64 1, !dbg !1512
  %73 = load %struct.redisObject*, %struct.redisObject** %72, align 8, !dbg !1512, !tbaa !432
  %74 = tail call %struct.redisObject* @dbUnshareStringValue(%struct.redisDb* %70, %struct.redisObject* %73, %struct.redisObject* nonnull %8) #5, !dbg !1513
  %75 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %74, i64 0, i32 2, !dbg !1514
  %76 = load i8*, i8** %75, align 8, !dbg !1514, !tbaa !434
  %77 = load i8*, i8** %38, align 8, !dbg !1515, !tbaa !434
  %78 = getelementptr inbounds i8, i8* %77, i64 -1, !dbg !1518
  %79 = load i8, i8* %78, align 1, !dbg !1518, !tbaa !444
  %80 = trunc i8 %79 to i3, !dbg !1520
  switch i3 %80, label %102 [
    i3 0, label %81
    i3 1, label %84
    i3 2, label %88
    i3 3, label %93
    i3 -4, label %98
  ], !dbg !1520

; <label>:81:                                     ; preds = %69
  %82 = lshr i8 %79, 3, !dbg !1521
  %83 = zext i8 %82 to i64, !dbg !1521
  br label %102, !dbg !1522

; <label>:84:                                     ; preds = %69
  %85 = getelementptr inbounds i8, i8* %77, i64 -3, !dbg !1523
  %86 = load i8, i8* %85, align 1, !dbg !1524, !tbaa !444
  %87 = zext i8 %86 to i64, !dbg !1523
  br label %102, !dbg !1525

; <label>:88:                                     ; preds = %69
  %89 = getelementptr inbounds i8, i8* %77, i64 -5, !dbg !1526
  %90 = bitcast i8* %89 to i16*, !dbg !1527
  %91 = load i16, i16* %90, align 1, !dbg !1527, !tbaa !719
  %92 = zext i16 %91 to i64, !dbg !1526
  br label %102, !dbg !1528

; <label>:93:                                     ; preds = %69
  %94 = getelementptr inbounds i8, i8* %77, i64 -9, !dbg !1529
  %95 = bitcast i8* %94 to i32*, !dbg !1530
  %96 = load i32, i32* %95, align 1, !dbg !1530, !tbaa !724
  %97 = zext i32 %96 to i64, !dbg !1529
  br label %102, !dbg !1531

; <label>:98:                                     ; preds = %69
  %99 = getelementptr inbounds i8, i8* %77, i64 -17, !dbg !1532
  %100 = bitcast i8* %99 to i64*, !dbg !1533
  %101 = load i64, i64* %100, align 1, !dbg !1533, !tbaa !680
  br label %102, !dbg !1534

; <label>:102:                                    ; preds = %69, %81, %84, %88, %93, %98
  %103 = phi i64 [ %101, %98 ], [ %97, %93 ], [ %92, %88 ], [ %87, %84 ], [ %83, %81 ], [ 0, %69 ], !dbg !1535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1536
  %104 = tail call i8* @sdscatlen(i8* %76, i8* %77, i64 %103) #5, !dbg !1537
  store i8* %104, i8** %75, align 8, !dbg !1538, !tbaa !434
  %105 = getelementptr inbounds i8, i8* %104, i64 -1, !dbg !1541
  %106 = load i8, i8* %105, align 1, !dbg !1541, !tbaa !444
  %107 = trunc i8 %106 to i3, !dbg !1543
  switch i3 %107, label %129 [
    i3 0, label %108
    i3 1, label %111
    i3 2, label %115
    i3 3, label %120
    i3 -4, label %125
  ], !dbg !1543

; <label>:108:                                    ; preds = %102
  %109 = lshr i8 %106, 3, !dbg !1544
  %110 = zext i8 %109 to i64, !dbg !1544
  br label %129, !dbg !1545

; <label>:111:                                    ; preds = %102
  %112 = getelementptr inbounds i8, i8* %104, i64 -3, !dbg !1546
  %113 = load i8, i8* %112, align 1, !dbg !1547, !tbaa !444
  %114 = zext i8 %113 to i64, !dbg !1546
  br label %129, !dbg !1548

; <label>:115:                                    ; preds = %102
  %116 = getelementptr inbounds i8, i8* %104, i64 -5, !dbg !1549
  %117 = bitcast i8* %116 to i16*, !dbg !1550
  %118 = load i16, i16* %117, align 1, !dbg !1550, !tbaa !719
  %119 = zext i16 %118 to i64, !dbg !1549
  br label %129, !dbg !1551

; <label>:120:                                    ; preds = %102
  %121 = getelementptr inbounds i8, i8* %104, i64 -9, !dbg !1552
  %122 = bitcast i8* %121 to i32*, !dbg !1553
  %123 = load i32, i32* %122, align 1, !dbg !1553, !tbaa !724
  %124 = zext i32 %123 to i64, !dbg !1552
  br label %129, !dbg !1554

; <label>:125:                                    ; preds = %102
  %126 = getelementptr inbounds i8, i8* %104, i64 -17, !dbg !1555
  %127 = bitcast i8* %126 to i64*, !dbg !1556
  %128 = load i64, i64* %127, align 1, !dbg !1556, !tbaa !680
  br label %129, !dbg !1557

; <label>:129:                                    ; preds = %102, %108, %111, %115, %120, %125
  %130 = phi i64 [ %128, %125 ], [ %124, %120 ], [ %119, %115 ], [ %114, %111 ], [ %110, %108 ], [ 0, %102 ], !dbg !1558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1559
  br label %131

; <label>:131:                                    ; preds = %129, %10
  %132 = phi i64 [ %29, %10 ], [ %130, %129 ], !dbg !1560
  %133 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1561, !tbaa !363
  %134 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1562, !tbaa !429
  %135 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %134, i64 1, !dbg !1563
  %136 = load %struct.redisObject*, %struct.redisObject** %135, align 8, !dbg !1563, !tbaa !432
  tail call void @signalModifiedKey(%struct.redisDb* %133, %struct.redisObject* %136) #5, !dbg !1564
  %137 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1565, !tbaa !429
  %138 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %137, i64 1, !dbg !1566
  %139 = load %struct.redisObject*, %struct.redisObject** %138, align 8, !dbg !1566, !tbaa !432
  %140 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1567, !tbaa !363
  %141 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %140, i64 0, i32 5, !dbg !1568
  %142 = load i32, i32* %141, align 8, !dbg !1568, !tbaa !397
  tail call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), %struct.redisObject* %139, i32 %142) #5, !dbg !1569
  %143 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1570, !tbaa !382
  %144 = add nsw i64 %143, 1, !dbg !1570
  store i64 %144, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1570, !tbaa !382
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %132) #5, !dbg !1571
  br label %145, !dbg !1572

; <label>:145:                                    ; preds = %68, %30, %131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1572
  ret void, !dbg !1572
}

; Function Attrs: noredzone
declare dso_local void @incrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @strlenCommand(%struct.client*) local_unnamed_addr #0 !dbg !1573 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1578
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1578, !tbaa !429
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !1580
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !1580, !tbaa !432
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1581, !tbaa !528
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #5, !dbg !1582
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !1584
  br i1 %8, label %14, label %9, !dbg !1585

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 0) #5, !dbg !1586
  %11 = icmp eq i32 %10, 0, !dbg !1586
  br i1 %11, label %12, label %14, !dbg !1587

; <label>:12:                                     ; preds = %9
  %13 = tail call i64 @stringObjectLen(%struct.redisObject* nonnull %7) #5, !dbg !1588
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %13) #5, !dbg !1589
  br label %14, !dbg !1590

; <label>:14:                                     ; preds = %1, %9, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1590
  ret void, !dbg !1590
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
!614 = !DILocation(line: 170, column: 1, scope: !563, inlinedAt: !598)
!615 = !DILocation(line: 174, column: 1, scope: !593)
!616 = distinct !DISubprogram(name: "getsetCommand", scope: !1, file: !1, line: 176, type: !204, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !617)
!617 = !{!618}
!618 = !DILocalVariable(name: "c", arg: 1, scope: !616, file: !1, line: 176, type: !62)
!619 = !DILocation(line: 176, column: 28, scope: !616)
!620 = !DILocation(line: 157, column: 31, scope: !563, inlinedAt: !621)
!621 = distinct !DILocation(line: 177, column: 9, scope: !622)
!622 = distinct !DILexicalBlock(scope: !616, file: !1, line: 177, column: 9)
!623 = !DILocation(line: 160, column: 40, scope: !571, inlinedAt: !621)
!624 = !DILocation(line: 160, column: 37, scope: !571, inlinedAt: !621)
!625 = !DILocation(line: 160, column: 55, scope: !571, inlinedAt: !621)
!626 = !DILocation(line: 160, column: 14, scope: !571, inlinedAt: !621)
!627 = !DILocation(line: 158, column: 11, scope: !563, inlinedAt: !621)
!628 = !DILocation(line: 160, column: 66, scope: !571, inlinedAt: !621)
!629 = !DILocation(line: 160, column: 9, scope: !563, inlinedAt: !621)
!630 = !DILocation(line: 163, column: 12, scope: !580, inlinedAt: !621)
!631 = !DILocation(line: 163, column: 17, scope: !580, inlinedAt: !621)
!632 = !DILocation(line: 163, column: 9, scope: !563, inlinedAt: !621)
!633 = !DILocation(line: 167, column: 9, scope: !589, inlinedAt: !621)
!634 = !DILocation(line: 168, column: 9, scope: !589, inlinedAt: !621)
!635 = !DILocation(line: 164, column: 27, scope: !584, inlinedAt: !621)
!636 = !DILocation(line: 164, column: 9, scope: !584, inlinedAt: !621)
!637 = !DILocation(line: 170, column: 1, scope: !563, inlinedAt: !621)
!638 = !DILocation(line: 177, column: 9, scope: !616)
!639 = !DILocation(line: 178, column: 39, scope: !616)
!640 = !DILocation(line: 178, column: 36, scope: !616)
!641 = !DILocation(line: 178, column: 18, scope: !616)
!642 = !DILocation(line: 178, column: 8, scope: !616)
!643 = !DILocation(line: 178, column: 5, scope: !616)
!644 = !DILocation(line: 178, column: 16, scope: !616)
!645 = !DILocation(line: 179, column: 15, scope: !616)
!646 = !DILocation(line: 179, column: 21, scope: !616)
!647 = !DILocation(line: 179, column: 18, scope: !616)
!648 = !DILocation(line: 179, column: 29, scope: !616)
!649 = !DILocation(line: 179, column: 5, scope: !616)
!650 = !DILocation(line: 180, column: 48, scope: !616)
!651 = !DILocation(line: 180, column: 45, scope: !616)
!652 = !DILocation(line: 180, column: 59, scope: !616)
!653 = !DILocation(line: 180, column: 63, scope: !616)
!654 = !DILocation(line: 180, column: 5, scope: !616)
!655 = !DILocation(line: 181, column: 17, scope: !616)
!656 = !DILocation(line: 182, column: 1, scope: !616)
!657 = distinct !DISubprogram(name: "setrangeCommand", scope: !1, file: !1, line: 184, type: !204, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !658)
!658 = !{!659, !660, !661, !662, !663}
!659 = !DILocalVariable(name: "c", arg: 1, scope: !657, file: !1, line: 184, type: !62)
!660 = !DILocalVariable(name: "o", scope: !657, file: !1, line: 185, type: !175)
!661 = !DILocalVariable(name: "offset", scope: !657, file: !1, line: 186, type: !7)
!662 = !DILocalVariable(name: "value", scope: !657, file: !1, line: 187, type: !185)
!663 = !DILocalVariable(name: "olen", scope: !664, file: !1, line: 212, type: !187)
!664 = distinct !DILexicalBlock(scope: !665, file: !1, line: 211, column: 12)
!665 = distinct !DILexicalBlock(scope: !657, file: !1, line: 198, column: 9)
!666 = !DILocation(line: 184, column: 30, scope: !657)
!667 = !DILocation(line: 186, column: 5, scope: !657)
!668 = !DILocation(line: 187, column: 20, scope: !657)
!669 = !DILocation(line: 187, column: 17, scope: !657)
!670 = !DILocation(line: 187, column: 29, scope: !657)
!671 = !DILocation(line: 187, column: 9, scope: !657)
!672 = !DILocation(line: 189, column: 36, scope: !673)
!673 = distinct !DILexicalBlock(scope: !657, file: !1, line: 189, column: 9)
!674 = !DILocation(line: 186, column: 10, scope: !657)
!675 = !DILocation(line: 189, column: 9, scope: !673)
!676 = !DILocation(line: 189, column: 61, scope: !673)
!677 = !DILocation(line: 189, column: 9, scope: !657)
!678 = !DILocation(line: 192, column: 9, scope: !679)
!679 = distinct !DILexicalBlock(scope: !657, file: !1, line: 192, column: 9)
!680 = !{!344, !344, i64 0}
!681 = !DILocation(line: 192, column: 16, scope: !679)
!682 = !DILocation(line: 192, column: 9, scope: !657)
!683 = !DILocation(line: 193, column: 9, scope: !684)
!684 = distinct !DILexicalBlock(scope: !679, file: !1, line: 192, column: 21)
!685 = !DILocation(line: 194, column: 9, scope: !684)
!686 = !DILocation(line: 197, column: 27, scope: !657)
!687 = !DILocation(line: 197, column: 33, scope: !657)
!688 = !DILocation(line: 197, column: 30, scope: !657)
!689 = !DILocation(line: 197, column: 9, scope: !657)
!690 = !DILocation(line: 185, column: 11, scope: !657)
!691 = !DILocation(line: 198, column: 11, scope: !665)
!692 = !DILocation(line: 198, column: 9, scope: !657)
!693 = !DILocalVariable(name: "s", arg: 1, scope: !694, file: !11, line: 87, type: !699)
!694 = distinct !DISubprogram(name: "sdslen", scope: !11, file: !11, line: 87, type: !695, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !700)
!695 = !DISubroutineType(types: !696)
!696 = !{!697, !699}
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !698, line: 58, baseType: !51)
!698 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!700 = !{!693, !701}
!701 = !DILocalVariable(name: "flags", scope: !694, file: !11, line: 88, type: !18)
!702 = !DILocation(line: 87, column: 39, scope: !694, inlinedAt: !703)
!703 = distinct !DILocation(line: 200, column: 13, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !1, line: 200, column: 13)
!705 = distinct !DILexicalBlock(scope: !665, file: !1, line: 198, column: 20)
!706 = !DILocation(line: 88, column: 27, scope: !694, inlinedAt: !703)
!707 = !DILocation(line: 88, column: 19, scope: !694, inlinedAt: !703)
!708 = !DILocation(line: 89, column: 5, scope: !694, inlinedAt: !703)
!709 = !DILocation(line: 102, column: 1, scope: !694, inlinedAt: !703)
!710 = !DILocation(line: 200, column: 13, scope: !705)
!711 = !DILocation(line: 91, column: 20, scope: !712, inlinedAt: !703)
!712 = distinct !DILexicalBlock(scope: !694, file: !11, line: 89, column: 33)
!713 = !DILocation(line: 91, column: 13, scope: !712, inlinedAt: !703)
!714 = !DILocation(line: 93, column: 20, scope: !712, inlinedAt: !703)
!715 = !DILocation(line: 93, column: 34, scope: !712, inlinedAt: !703)
!716 = !DILocation(line: 93, column: 13, scope: !712, inlinedAt: !703)
!717 = !DILocation(line: 95, column: 20, scope: !712, inlinedAt: !703)
!718 = !DILocation(line: 95, column: 35, scope: !712, inlinedAt: !703)
!719 = !{!720, !720, i64 0}
!720 = !{!"short", !326, i64 0}
!721 = !DILocation(line: 95, column: 13, scope: !712, inlinedAt: !703)
!722 = !DILocation(line: 97, column: 20, scope: !712, inlinedAt: !703)
!723 = !DILocation(line: 97, column: 35, scope: !712, inlinedAt: !703)
!724 = !{!345, !345, i64 0}
!725 = !DILocation(line: 97, column: 13, scope: !712, inlinedAt: !703)
!726 = !DILocation(line: 99, column: 20, scope: !712, inlinedAt: !703)
!727 = !DILocation(line: 99, column: 35, scope: !712, inlinedAt: !703)
!728 = !DILocation(line: 99, column: 13, scope: !712, inlinedAt: !703)
!729 = !DILocation(line: 0, scope: !712, inlinedAt: !703)
!730 = !DILocation(line: 200, column: 27, scope: !704)
!731 = !DILocation(line: 201, column: 31, scope: !732)
!732 = distinct !DILexicalBlock(scope: !704, file: !1, line: 200, column: 33)
!733 = !DILocation(line: 201, column: 13, scope: !732)
!734 = !DILocation(line: 202, column: 13, scope: !732)
!735 = !DILocation(line: 206, column: 33, scope: !736)
!736 = distinct !DILexicalBlock(scope: !705, file: !1, line: 206, column: 13)
!737 = !DILocation(line: 87, column: 39, scope: !694, inlinedAt: !738)
!738 = distinct !DILocation(line: 206, column: 40, scope: !736)
!739 = !DILocation(line: 88, column: 19, scope: !694, inlinedAt: !738)
!740 = !DILocation(line: 89, column: 5, scope: !694, inlinedAt: !738)
!741 = !DILocation(line: 91, column: 20, scope: !712, inlinedAt: !738)
!742 = !DILocation(line: 91, column: 13, scope: !712, inlinedAt: !738)
!743 = !DILocation(line: 93, column: 20, scope: !712, inlinedAt: !738)
!744 = !DILocation(line: 93, column: 34, scope: !712, inlinedAt: !738)
!745 = !DILocation(line: 93, column: 13, scope: !712, inlinedAt: !738)
!746 = !DILocation(line: 95, column: 20, scope: !712, inlinedAt: !738)
!747 = !DILocation(line: 95, column: 35, scope: !712, inlinedAt: !738)
!748 = !DILocation(line: 95, column: 13, scope: !712, inlinedAt: !738)
!749 = !DILocation(line: 97, column: 20, scope: !712, inlinedAt: !738)
!750 = !DILocation(line: 97, column: 35, scope: !712, inlinedAt: !738)
!751 = !DILocation(line: 97, column: 13, scope: !712, inlinedAt: !738)
!752 = !DILocation(line: 99, column: 20, scope: !712, inlinedAt: !738)
!753 = !DILocation(line: 99, column: 35, scope: !712, inlinedAt: !738)
!754 = !DILocation(line: 99, column: 13, scope: !712, inlinedAt: !738)
!755 = !DILocation(line: 0, scope: !712, inlinedAt: !738)
!756 = !DILocation(line: 102, column: 1, scope: !694, inlinedAt: !738)
!757 = !DILocation(line: 206, column: 39, scope: !736)
!758 = !DILocalVariable(name: "c", arg: 1, scope: !759, file: !1, line: 37, type: !62)
!759 = distinct !DISubprogram(name: "checkStringLength", scope: !1, file: !1, line: 37, type: !760, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !762)
!760 = !DISubroutineType(types: !761)
!761 = !{!69, !62, !144}
!762 = !{!758, !763}
!763 = !DILocalVariable(name: "size", arg: 2, scope: !759, file: !1, line: 37, type: !144)
!764 = !DILocation(line: 37, column: 38, scope: !759, inlinedAt: !765)
!765 = distinct !DILocation(line: 206, column: 13, scope: !736)
!766 = !DILocation(line: 37, column: 51, scope: !759, inlinedAt: !765)
!767 = !DILocation(line: 38, column: 14, scope: !768, inlinedAt: !765)
!768 = distinct !DILexicalBlock(scope: !759, file: !1, line: 38, column: 9)
!769 = !DILocation(line: 38, column: 9, scope: !759, inlinedAt: !765)
!770 = !DILocation(line: 39, column: 9, scope: !771, inlinedAt: !765)
!771 = distinct !DILexicalBlock(scope: !768, file: !1, line: 38, column: 31)
!772 = !DILocation(line: 43, column: 1, scope: !759, inlinedAt: !765)
!773 = !DILocation(line: 206, column: 13, scope: !705)
!774 = !DILocation(line: 87, column: 39, scope: !694, inlinedAt: !775)
!775 = distinct !DILocation(line: 209, column: 60, scope: !705)
!776 = !DILocation(line: 88, column: 19, scope: !694, inlinedAt: !775)
!777 = !DILocation(line: 89, column: 5, scope: !694, inlinedAt: !775)
!778 = !DILocation(line: 91, column: 20, scope: !712, inlinedAt: !775)
!779 = !DILocation(line: 91, column: 13, scope: !712, inlinedAt: !775)
!780 = !DILocation(line: 93, column: 20, scope: !712, inlinedAt: !775)
!781 = !DILocation(line: 93, column: 34, scope: !712, inlinedAt: !775)
!782 = !DILocation(line: 93, column: 13, scope: !712, inlinedAt: !775)
!783 = !DILocation(line: 95, column: 20, scope: !712, inlinedAt: !775)
!784 = !DILocation(line: 95, column: 35, scope: !712, inlinedAt: !775)
!785 = !DILocation(line: 95, column: 13, scope: !712, inlinedAt: !775)
!786 = !DILocation(line: 97, column: 20, scope: !712, inlinedAt: !775)
!787 = !DILocation(line: 97, column: 35, scope: !712, inlinedAt: !775)
!788 = !DILocation(line: 97, column: 13, scope: !712, inlinedAt: !775)
!789 = !DILocation(line: 99, column: 20, scope: !712, inlinedAt: !775)
!790 = !DILocation(line: 99, column: 35, scope: !712, inlinedAt: !775)
!791 = !DILocation(line: 99, column: 13, scope: !712, inlinedAt: !775)
!792 = !DILocation(line: 0, scope: !712, inlinedAt: !775)
!793 = !DILocation(line: 102, column: 1, scope: !694, inlinedAt: !775)
!794 = !DILocation(line: 209, column: 59, scope: !705)
!795 = !DILocation(line: 209, column: 37, scope: !705)
!796 = !DILocation(line: 209, column: 13, scope: !705)
!797 = !DILocation(line: 210, column: 18, scope: !705)
!798 = !DILocation(line: 210, column: 24, scope: !705)
!799 = !DILocation(line: 210, column: 21, scope: !705)
!800 = !DILocation(line: 210, column: 9, scope: !705)
!801 = !DILocation(line: 211, column: 5, scope: !705)
!802 = !DILocation(line: 215, column: 13, scope: !803)
!803 = distinct !DILexicalBlock(scope: !664, file: !1, line: 215, column: 13)
!804 = !DILocation(line: 215, column: 13, scope: !664)
!805 = !DILocation(line: 219, column: 16, scope: !664)
!806 = !DILocation(line: 212, column: 16, scope: !664)
!807 = !DILocation(line: 87, column: 39, scope: !694, inlinedAt: !808)
!808 = distinct !DILocation(line: 220, column: 13, scope: !809)
!809 = distinct !DILexicalBlock(scope: !664, file: !1, line: 220, column: 13)
!810 = !DILocation(line: 88, column: 27, scope: !694, inlinedAt: !808)
!811 = !DILocation(line: 88, column: 19, scope: !694, inlinedAt: !808)
!812 = !DILocation(line: 89, column: 5, scope: !694, inlinedAt: !808)
!813 = !DILocation(line: 102, column: 1, scope: !694, inlinedAt: !808)
!814 = !DILocation(line: 220, column: 13, scope: !664)
!815 = !DILocation(line: 91, column: 20, scope: !712, inlinedAt: !808)
!816 = !DILocation(line: 91, column: 13, scope: !712, inlinedAt: !808)
!817 = !DILocation(line: 93, column: 20, scope: !712, inlinedAt: !808)
!818 = !DILocation(line: 93, column: 34, scope: !712, inlinedAt: !808)
!819 = !DILocation(line: 93, column: 13, scope: !712, inlinedAt: !808)
!820 = !DILocation(line: 95, column: 20, scope: !712, inlinedAt: !808)
!821 = !DILocation(line: 95, column: 35, scope: !712, inlinedAt: !808)
!822 = !DILocation(line: 95, column: 13, scope: !712, inlinedAt: !808)
!823 = !DILocation(line: 97, column: 20, scope: !712, inlinedAt: !808)
!824 = !DILocation(line: 97, column: 35, scope: !712, inlinedAt: !808)
!825 = !DILocation(line: 97, column: 13, scope: !712, inlinedAt: !808)
!826 = !DILocation(line: 99, column: 20, scope: !712, inlinedAt: !808)
!827 = !DILocation(line: 99, column: 35, scope: !712, inlinedAt: !808)
!828 = !DILocation(line: 99, column: 13, scope: !712, inlinedAt: !808)
!829 = !DILocation(line: 0, scope: !712, inlinedAt: !808)
!830 = !DILocation(line: 220, column: 27, scope: !809)
!831 = !DILocation(line: 221, column: 13, scope: !832)
!832 = distinct !DILexicalBlock(scope: !809, file: !1, line: 220, column: 33)
!833 = !DILocation(line: 222, column: 13, scope: !832)
!834 = !DILocation(line: 226, column: 33, scope: !835)
!835 = distinct !DILexicalBlock(scope: !664, file: !1, line: 226, column: 13)
!836 = !DILocation(line: 87, column: 39, scope: !694, inlinedAt: !837)
!837 = distinct !DILocation(line: 226, column: 40, scope: !835)
!838 = !DILocation(line: 88, column: 19, scope: !694, inlinedAt: !837)
!839 = !DILocation(line: 89, column: 5, scope: !694, inlinedAt: !837)
!840 = !DILocation(line: 91, column: 20, scope: !712, inlinedAt: !837)
!841 = !DILocation(line: 91, column: 13, scope: !712, inlinedAt: !837)
!842 = !DILocation(line: 93, column: 20, scope: !712, inlinedAt: !837)
!843 = !DILocation(line: 93, column: 34, scope: !712, inlinedAt: !837)
!844 = !DILocation(line: 93, column: 13, scope: !712, inlinedAt: !837)
!845 = !DILocation(line: 95, column: 20, scope: !712, inlinedAt: !837)
!846 = !DILocation(line: 95, column: 35, scope: !712, inlinedAt: !837)
!847 = !DILocation(line: 95, column: 13, scope: !712, inlinedAt: !837)
!848 = !DILocation(line: 97, column: 20, scope: !712, inlinedAt: !837)
!849 = !DILocation(line: 97, column: 35, scope: !712, inlinedAt: !837)
!850 = !DILocation(line: 97, column: 13, scope: !712, inlinedAt: !837)
!851 = !DILocation(line: 99, column: 20, scope: !712, inlinedAt: !837)
!852 = !DILocation(line: 99, column: 35, scope: !712, inlinedAt: !837)
!853 = !DILocation(line: 99, column: 13, scope: !712, inlinedAt: !837)
!854 = !DILocation(line: 0, scope: !712, inlinedAt: !837)
!855 = !DILocation(line: 102, column: 1, scope: !694, inlinedAt: !837)
!856 = !DILocation(line: 226, column: 39, scope: !835)
!857 = !DILocation(line: 37, column: 38, scope: !759, inlinedAt: !858)
!858 = distinct !DILocation(line: 226, column: 13, scope: !835)
!859 = !DILocation(line: 37, column: 51, scope: !759, inlinedAt: !858)
!860 = !DILocation(line: 38, column: 14, scope: !768, inlinedAt: !858)
!861 = !DILocation(line: 38, column: 9, scope: !759, inlinedAt: !858)
!862 = !DILocation(line: 39, column: 9, scope: !771, inlinedAt: !858)
!863 = !DILocation(line: 43, column: 1, scope: !759, inlinedAt: !858)
!864 = !DILocation(line: 226, column: 13, scope: !664)
!865 = !DILocation(line: 230, column: 37, scope: !664)
!866 = !DILocation(line: 230, column: 43, scope: !664)
!867 = !DILocation(line: 230, column: 40, scope: !664)
!868 = !DILocation(line: 230, column: 13, scope: !664)
!869 = !DILocation(line: 88, column: 27, scope: !694, inlinedAt: !870)
!870 = distinct !DILocation(line: 233, column: 9, scope: !871)
!871 = distinct !DILexicalBlock(scope: !657, file: !1, line: 233, column: 9)
!872 = !DILocation(line: 0, scope: !657)
!873 = !DILocation(line: 87, column: 39, scope: !694, inlinedAt: !870)
!874 = !DILocation(line: 88, column: 19, scope: !694, inlinedAt: !870)
!875 = !DILocation(line: 89, column: 5, scope: !694, inlinedAt: !870)
!876 = !DILocation(line: 102, column: 1, scope: !694, inlinedAt: !870)
!877 = !DILocation(line: 233, column: 9, scope: !657)
!878 = !DILocation(line: 91, column: 20, scope: !712, inlinedAt: !870)
!879 = !DILocation(line: 91, column: 13, scope: !712, inlinedAt: !870)
!880 = !DILocation(line: 93, column: 20, scope: !712, inlinedAt: !870)
!881 = !DILocation(line: 93, column: 34, scope: !712, inlinedAt: !870)
!882 = !DILocation(line: 93, column: 13, scope: !712, inlinedAt: !870)
!883 = !DILocation(line: 95, column: 20, scope: !712, inlinedAt: !870)
!884 = !DILocation(line: 95, column: 35, scope: !712, inlinedAt: !870)
!885 = !DILocation(line: 95, column: 13, scope: !712, inlinedAt: !870)
!886 = !DILocation(line: 97, column: 20, scope: !712, inlinedAt: !870)
!887 = !DILocation(line: 97, column: 35, scope: !712, inlinedAt: !870)
!888 = !DILocation(line: 97, column: 13, scope: !712, inlinedAt: !870)
!889 = !DILocation(line: 99, column: 20, scope: !712, inlinedAt: !870)
!890 = !DILocation(line: 99, column: 35, scope: !712, inlinedAt: !870)
!891 = !DILocation(line: 99, column: 13, scope: !712, inlinedAt: !870)
!892 = !DILocation(line: 0, scope: !712, inlinedAt: !870)
!893 = !DILocation(line: 233, column: 23, scope: !871)
!894 = !DILocation(line: 234, column: 33, scope: !895)
!895 = distinct !DILexicalBlock(scope: !871, file: !1, line: 233, column: 28)
!896 = !DILocation(line: 234, column: 37, scope: !895)
!897 = !DILocation(line: 87, column: 39, scope: !694, inlinedAt: !898)
!898 = distinct !DILocation(line: 234, column: 44, scope: !895)
!899 = !DILocation(line: 88, column: 19, scope: !694, inlinedAt: !898)
!900 = !DILocation(line: 89, column: 5, scope: !694, inlinedAt: !898)
!901 = !DILocation(line: 91, column: 20, scope: !712, inlinedAt: !898)
!902 = !DILocation(line: 91, column: 13, scope: !712, inlinedAt: !898)
!903 = !DILocation(line: 93, column: 20, scope: !712, inlinedAt: !898)
!904 = !DILocation(line: 93, column: 34, scope: !712, inlinedAt: !898)
!905 = !DILocation(line: 93, column: 13, scope: !712, inlinedAt: !898)
!906 = !DILocation(line: 95, column: 20, scope: !712, inlinedAt: !898)
!907 = !DILocation(line: 95, column: 35, scope: !712, inlinedAt: !898)
!908 = !DILocation(line: 95, column: 13, scope: !712, inlinedAt: !898)
!909 = !DILocation(line: 97, column: 20, scope: !712, inlinedAt: !898)
!910 = !DILocation(line: 97, column: 35, scope: !712, inlinedAt: !898)
!911 = !DILocation(line: 97, column: 13, scope: !712, inlinedAt: !898)
!912 = !DILocation(line: 99, column: 20, scope: !712, inlinedAt: !898)
!913 = !DILocation(line: 99, column: 35, scope: !712, inlinedAt: !898)
!914 = !DILocation(line: 99, column: 13, scope: !712, inlinedAt: !898)
!915 = !DILocation(line: 0, scope: !712, inlinedAt: !898)
!916 = !DILocation(line: 102, column: 1, scope: !694, inlinedAt: !898)
!917 = !DILocation(line: 234, column: 43, scope: !895)
!918 = !DILocation(line: 234, column: 18, scope: !895)
!919 = !DILocation(line: 234, column: 16, scope: !895)
!920 = !DILocation(line: 235, column: 30, scope: !895)
!921 = !DILocation(line: 235, column: 29, scope: !895)
!922 = !DILocation(line: 87, column: 39, scope: !694, inlinedAt: !923)
!923 = distinct !DILocation(line: 235, column: 43, scope: !895)
!924 = !DILocation(line: 88, column: 27, scope: !694, inlinedAt: !923)
!925 = !DILocation(line: 88, column: 19, scope: !694, inlinedAt: !923)
!926 = !DILocation(line: 89, column: 5, scope: !694, inlinedAt: !923)
!927 = !DILocation(line: 91, column: 20, scope: !712, inlinedAt: !923)
!928 = !DILocation(line: 91, column: 13, scope: !712, inlinedAt: !923)
!929 = !DILocation(line: 93, column: 20, scope: !712, inlinedAt: !923)
!930 = !DILocation(line: 93, column: 34, scope: !712, inlinedAt: !923)
!931 = !DILocation(line: 93, column: 13, scope: !712, inlinedAt: !923)
!932 = !DILocation(line: 95, column: 20, scope: !712, inlinedAt: !923)
!933 = !DILocation(line: 95, column: 35, scope: !712, inlinedAt: !923)
!934 = !DILocation(line: 95, column: 13, scope: !712, inlinedAt: !923)
!935 = !DILocation(line: 97, column: 20, scope: !712, inlinedAt: !923)
!936 = !DILocation(line: 97, column: 35, scope: !712, inlinedAt: !923)
!937 = !DILocation(line: 97, column: 13, scope: !712, inlinedAt: !923)
!938 = !DILocation(line: 99, column: 20, scope: !712, inlinedAt: !923)
!939 = !DILocation(line: 99, column: 35, scope: !712, inlinedAt: !923)
!940 = !DILocation(line: 99, column: 13, scope: !712, inlinedAt: !923)
!941 = !DILocation(line: 0, scope: !712, inlinedAt: !923)
!942 = !DILocation(line: 102, column: 1, scope: !694, inlinedAt: !923)
!943 = !DILocation(line: 235, column: 9, scope: !895)
!944 = !DILocation(line: 236, column: 30, scope: !895)
!945 = !DILocation(line: 236, column: 36, scope: !895)
!946 = !DILocation(line: 236, column: 33, scope: !895)
!947 = !DILocation(line: 236, column: 9, scope: !895)
!948 = !DILocation(line: 238, column: 27, scope: !895)
!949 = !DILocation(line: 238, column: 24, scope: !895)
!950 = !DILocation(line: 238, column: 38, scope: !895)
!951 = !DILocation(line: 238, column: 42, scope: !895)
!952 = !DILocation(line: 237, column: 9, scope: !895)
!953 = !DILocation(line: 239, column: 21, scope: !895)
!954 = !DILocation(line: 240, column: 5, scope: !895)
!955 = !DILocation(line: 241, column: 34, scope: !657)
!956 = !DILocation(line: 87, column: 39, scope: !694, inlinedAt: !957)
!957 = distinct !DILocation(line: 241, column: 24, scope: !657)
!958 = !DILocation(line: 88, column: 27, scope: !694, inlinedAt: !957)
!959 = !DILocation(line: 88, column: 19, scope: !694, inlinedAt: !957)
!960 = !DILocation(line: 89, column: 5, scope: !694, inlinedAt: !957)
!961 = !DILocation(line: 91, column: 20, scope: !712, inlinedAt: !957)
!962 = !DILocation(line: 91, column: 13, scope: !712, inlinedAt: !957)
!963 = !DILocation(line: 93, column: 20, scope: !712, inlinedAt: !957)
!964 = !DILocation(line: 93, column: 34, scope: !712, inlinedAt: !957)
!965 = !DILocation(line: 93, column: 13, scope: !712, inlinedAt: !957)
!966 = !DILocation(line: 95, column: 20, scope: !712, inlinedAt: !957)
!967 = !DILocation(line: 95, column: 35, scope: !712, inlinedAt: !957)
!968 = !DILocation(line: 95, column: 13, scope: !712, inlinedAt: !957)
!969 = !DILocation(line: 97, column: 20, scope: !712, inlinedAt: !957)
!970 = !DILocation(line: 97, column: 35, scope: !712, inlinedAt: !957)
!971 = !DILocation(line: 97, column: 13, scope: !712, inlinedAt: !957)
!972 = !DILocation(line: 99, column: 20, scope: !712, inlinedAt: !957)
!973 = !DILocation(line: 99, column: 35, scope: !712, inlinedAt: !957)
!974 = !DILocation(line: 99, column: 13, scope: !712, inlinedAt: !957)
!975 = !DILocation(line: 0, scope: !712, inlinedAt: !957)
!976 = !DILocation(line: 102, column: 1, scope: !694, inlinedAt: !957)
!977 = !DILocation(line: 241, column: 5, scope: !657)
!978 = !DILocation(line: 242, column: 1, scope: !657)
!979 = distinct !DISubprogram(name: "getrangeCommand", scope: !1, file: !1, line: 244, type: !204, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !980)
!980 = !{!981, !982, !983, !984, !985, !986, !990}
!981 = !DILocalVariable(name: "c", arg: 1, scope: !979, file: !1, line: 244, type: !62)
!982 = !DILocalVariable(name: "o", scope: !979, file: !1, line: 245, type: !175)
!983 = !DILocalVariable(name: "start", scope: !979, file: !1, line: 246, type: !144)
!984 = !DILocalVariable(name: "end", scope: !979, file: !1, line: 246, type: !144)
!985 = !DILocalVariable(name: "str", scope: !979, file: !1, line: 247, type: !5)
!986 = !DILocalVariable(name: "llbuf", scope: !979, file: !1, line: 247, type: !987)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !988)
!988 = !{!989}
!989 = !DISubrange(count: 32)
!990 = !DILocalVariable(name: "strlen", scope: !979, file: !1, line: 248, type: !187)
!991 = !DILocation(line: 244, column: 30, scope: !979)
!992 = !DILocation(line: 246, column: 5, scope: !979)
!993 = !DILocation(line: 247, column: 5, scope: !979)
!994 = !DILocation(line: 247, column: 16, scope: !979)
!995 = !DILocation(line: 250, column: 43, scope: !996)
!996 = distinct !DILexicalBlock(scope: !979, file: !1, line: 250, column: 9)
!997 = !DILocation(line: 250, column: 40, scope: !996)
!998 = !DILocation(line: 246, column: 15, scope: !979)
!999 = !DILocation(line: 250, column: 9, scope: !996)
!1000 = !DILocation(line: 250, column: 64, scope: !996)
!1001 = !DILocation(line: 250, column: 9, scope: !979)
!1002 = !DILocation(line: 252, column: 43, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !979, file: !1, line: 252, column: 9)
!1004 = !DILocation(line: 252, column: 40, scope: !1003)
!1005 = !DILocation(line: 246, column: 22, scope: !979)
!1006 = !DILocation(line: 252, column: 9, scope: !1003)
!1007 = !DILocation(line: 252, column: 62, scope: !1003)
!1008 = !DILocation(line: 252, column: 9, scope: !979)
!1009 = !DILocation(line: 254, column: 40, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !979, file: !1, line: 254, column: 9)
!1011 = !DILocation(line: 254, column: 37, scope: !1010)
!1012 = !DILocation(line: 254, column: 55, scope: !1010)
!1013 = !{!496, !346, i64 24}
!1014 = !DILocation(line: 254, column: 14, scope: !1010)
!1015 = !DILocation(line: 245, column: 11, scope: !979)
!1016 = !DILocation(line: 254, column: 67, scope: !1010)
!1017 = !DILocation(line: 254, column: 75, scope: !1010)
!1018 = !DILocation(line: 255, column: 9, scope: !1010)
!1019 = !DILocation(line: 254, column: 9, scope: !979)
!1020 = !DILocation(line: 257, column: 12, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !979, file: !1, line: 257, column: 9)
!1022 = !DILocation(line: 257, column: 21, scope: !1021)
!1023 = !DILocation(line: 0, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1021, file: !1, line: 260, column: 12)
!1025 = !DILocation(line: 257, column: 9, scope: !979)
!1026 = !DILocation(line: 247, column: 11, scope: !979)
!1027 = !DILocation(line: 259, column: 57, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1021, file: !1, line: 257, column: 42)
!1029 = !DILocation(line: 259, column: 18, scope: !1028)
!1030 = !DILocation(line: 248, column: 12, scope: !979)
!1031 = !DILocation(line: 260, column: 5, scope: !1028)
!1032 = !DILocation(line: 261, column: 18, scope: !1024)
!1033 = !DILocation(line: 87, column: 39, scope: !694, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 262, column: 18, scope: !1024)
!1035 = !DILocation(line: 88, column: 27, scope: !694, inlinedAt: !1034)
!1036 = !DILocation(line: 88, column: 19, scope: !694, inlinedAt: !1034)
!1037 = !DILocation(line: 89, column: 5, scope: !694, inlinedAt: !1034)
!1038 = !DILocation(line: 91, column: 20, scope: !712, inlinedAt: !1034)
!1039 = !DILocation(line: 91, column: 13, scope: !712, inlinedAt: !1034)
!1040 = !DILocation(line: 93, column: 20, scope: !712, inlinedAt: !1034)
!1041 = !DILocation(line: 93, column: 34, scope: !712, inlinedAt: !1034)
!1042 = !DILocation(line: 93, column: 13, scope: !712, inlinedAt: !1034)
!1043 = !DILocation(line: 95, column: 20, scope: !712, inlinedAt: !1034)
!1044 = !DILocation(line: 95, column: 35, scope: !712, inlinedAt: !1034)
!1045 = !DILocation(line: 95, column: 13, scope: !712, inlinedAt: !1034)
!1046 = !DILocation(line: 97, column: 20, scope: !712, inlinedAt: !1034)
!1047 = !DILocation(line: 97, column: 35, scope: !712, inlinedAt: !1034)
!1048 = !DILocation(line: 97, column: 13, scope: !712, inlinedAt: !1034)
!1049 = !DILocation(line: 99, column: 20, scope: !712, inlinedAt: !1034)
!1050 = !DILocation(line: 99, column: 35, scope: !712, inlinedAt: !1034)
!1051 = !DILocation(line: 99, column: 13, scope: !712, inlinedAt: !1034)
!1052 = !DILocation(line: 0, scope: !712, inlinedAt: !1034)
!1053 = !DILocation(line: 102, column: 1, scope: !694, inlinedAt: !1034)
!1054 = !DILocation(line: 266, column: 9, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !979, file: !1, line: 266, column: 9)
!1056 = !DILocation(line: 266, column: 22, scope: !1055)
!1057 = !DILocation(line: 266, column: 19, scope: !1055)
!1058 = !DILocation(line: 266, column: 39, scope: !1055)
!1059 = !DILocation(line: 267, column: 27, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 266, column: 46)
!1061 = !DILocation(line: 267, column: 9, scope: !1060)
!1062 = !DILocation(line: 268, column: 9, scope: !1060)
!1063 = !DILocation(line: 270, column: 15, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !979, file: !1, line: 270, column: 9)
!1065 = !DILocation(line: 270, column: 9, scope: !979)
!1066 = !DILocation(line: 270, column: 34, scope: !1064)
!1067 = !DILocation(line: 270, column: 26, scope: !1064)
!1068 = !DILocation(line: 270, column: 20, scope: !1064)
!1069 = !DILocation(line: 271, column: 13, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !979, file: !1, line: 271, column: 9)
!1071 = !DILocation(line: 271, column: 9, scope: !979)
!1072 = !DILocation(line: 271, column: 30, scope: !1070)
!1073 = !DILocation(line: 271, column: 22, scope: !1070)
!1074 = !DILocation(line: 271, column: 18, scope: !1070)
!1075 = !DILocation(line: 272, column: 15, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !979, file: !1, line: 272, column: 9)
!1077 = !DILocation(line: 272, column: 9, scope: !979)
!1078 = !DILocation(line: 272, column: 26, scope: !1076)
!1079 = !DILocation(line: 272, column: 20, scope: !1076)
!1080 = !DILocation(line: 273, column: 13, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !979, file: !1, line: 273, column: 9)
!1082 = !DILocation(line: 273, column: 9, scope: !979)
!1083 = !DILocation(line: 274, column: 33, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !979, file: !1, line: 274, column: 9)
!1085 = !DILocation(line: 274, column: 56, scope: !1084)
!1086 = !DILocation(line: 274, column: 9, scope: !979)
!1087 = !DILocation(line: 278, column: 15, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !979, file: !1, line: 278, column: 9)
!1089 = !DILocation(line: 278, column: 31, scope: !1088)
!1090 = !DILocation(line: 278, column: 21, scope: !1088)
!1091 = !DILocation(line: 279, column: 27, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1088, file: !1, line: 278, column: 37)
!1093 = !DILocation(line: 279, column: 9, scope: !1092)
!1094 = !DILocation(line: 280, column: 5, scope: !1092)
!1095 = !DILocation(line: 281, column: 41, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1088, file: !1, line: 280, column: 12)
!1097 = !DILocation(line: 281, column: 51, scope: !1096)
!1098 = !DILocation(line: 281, column: 57, scope: !1096)
!1099 = !DILocation(line: 281, column: 9, scope: !1096)
!1100 = !DILocation(line: 283, column: 1, scope: !979)
!1101 = distinct !DISubprogram(name: "mgetCommand", scope: !1, file: !1, line: 285, type: !204, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1102)
!1102 = !{!1103, !1104, !1105}
!1103 = !DILocalVariable(name: "c", arg: 1, scope: !1101, file: !1, line: 285, type: !62)
!1104 = !DILocalVariable(name: "j", scope: !1101, file: !1, line: 286, type: !69)
!1105 = !DILocalVariable(name: "o", scope: !1106, file: !1, line: 290, type: !175)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 289, column: 35)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !1, line: 289, column: 5)
!1108 = distinct !DILexicalBlock(scope: !1101, file: !1, line: 289, column: 5)
!1109 = !DILocation(line: 285, column: 26, scope: !1101)
!1110 = !DILocation(line: 288, column: 31, scope: !1101)
!1111 = !DILocation(line: 288, column: 35, scope: !1101)
!1112 = !DILocation(line: 288, column: 28, scope: !1101)
!1113 = !DILocation(line: 288, column: 5, scope: !1101)
!1114 = !DILocation(line: 286, column: 9, scope: !1101)
!1115 = !DILocation(line: 289, column: 24, scope: !1107)
!1116 = !DILocation(line: 289, column: 19, scope: !1107)
!1117 = !DILocation(line: 289, column: 5, scope: !1108)
!1118 = !DILocation(line: 290, column: 36, scope: !1106)
!1119 = !DILocation(line: 290, column: 42, scope: !1106)
!1120 = !DILocation(line: 290, column: 39, scope: !1106)
!1121 = !DILocation(line: 290, column: 19, scope: !1106)
!1122 = !DILocation(line: 290, column: 15, scope: !1106)
!1123 = !DILocation(line: 291, column: 15, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1106, file: !1, line: 291, column: 13)
!1125 = !DILocation(line: 291, column: 13, scope: !1106)
!1126 = !DILocation(line: 292, column: 31, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 291, column: 24)
!1128 = !DILocation(line: 292, column: 13, scope: !1127)
!1129 = !DILocation(line: 293, column: 9, scope: !1127)
!1130 = !DILocation(line: 294, column: 20, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !1, line: 294, column: 17)
!1132 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 293, column: 16)
!1133 = !DILocation(line: 294, column: 25, scope: !1131)
!1134 = !DILocation(line: 294, column: 17, scope: !1132)
!1135 = !DILocation(line: 295, column: 35, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1131, file: !1, line: 294, column: 40)
!1137 = !DILocation(line: 295, column: 17, scope: !1136)
!1138 = !DILocation(line: 296, column: 13, scope: !1136)
!1139 = !DILocation(line: 297, column: 17, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1131, file: !1, line: 296, column: 20)
!1141 = !DILocation(line: 289, column: 31, scope: !1107)
!1142 = distinct !{!1142, !1117, !1143}
!1143 = !DILocation(line: 300, column: 5, scope: !1108)
!1144 = !DILocation(line: 301, column: 1, scope: !1101)
!1145 = distinct !DISubprogram(name: "msetGenericCommand", scope: !1, file: !1, line: 303, type: !1146, isLocal: false, isDefinition: true, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1148)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{null, !62, !69}
!1148 = !{!1149, !1150, !1151}
!1149 = !DILocalVariable(name: "c", arg: 1, scope: !1145, file: !1, line: 303, type: !62)
!1150 = !DILocalVariable(name: "nx", arg: 2, scope: !1145, file: !1, line: 303, type: !69)
!1151 = !DILocalVariable(name: "j", scope: !1145, file: !1, line: 304, type: !69)
!1152 = !DILocation(line: 303, column: 33, scope: !1145)
!1153 = !DILocation(line: 303, column: 40, scope: !1145)
!1154 = !DILocation(line: 306, column: 13, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 306, column: 9)
!1156 = !DILocation(line: 306, column: 23, scope: !1155)
!1157 = !DILocation(line: 306, column: 9, scope: !1145)
!1158 = !DILocation(line: 307, column: 9, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1155, file: !1, line: 306, column: 29)
!1160 = !DILocation(line: 308, column: 9, scope: !1159)
!1161 = !DILocation(line: 313, column: 9, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 313, column: 9)
!1163 = !DILocation(line: 313, column: 9, scope: !1145)
!1164 = !DILocation(line: 304, column: 9, scope: !1145)
!1165 = !DILocation(line: 314, column: 23, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !1, line: 314, column: 9)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !1, line: 314, column: 9)
!1168 = distinct !DILexicalBlock(scope: !1162, file: !1, line: 313, column: 13)
!1169 = !DILocation(line: 314, column: 9, scope: !1167)
!1170 = !DILocation(line: 314, column: 28, scope: !1166)
!1171 = distinct !{!1171, !1169, !1172}
!1172 = !DILocation(line: 319, column: 9, scope: !1167)
!1173 = !DILocation(line: 315, column: 35, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !1, line: 315, column: 17)
!1175 = distinct !DILexicalBlock(scope: !1166, file: !1, line: 314, column: 42)
!1176 = !DILocation(line: 315, column: 41, scope: !1174)
!1177 = !DILocation(line: 315, column: 38, scope: !1174)
!1178 = !DILocation(line: 315, column: 17, scope: !1174)
!1179 = !DILocation(line: 315, column: 50, scope: !1174)
!1180 = !DILocation(line: 314, column: 36, scope: !1166)
!1181 = !DILocation(line: 315, column: 17, scope: !1175)
!1182 = !DILocation(line: 316, column: 36, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1174, file: !1, line: 315, column: 59)
!1184 = !DILocation(line: 316, column: 17, scope: !1183)
!1185 = !DILocation(line: 317, column: 17, scope: !1183)
!1186 = !DILocation(line: 322, column: 24, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !1, line: 322, column: 5)
!1188 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 322, column: 5)
!1189 = !DILocation(line: 322, column: 19, scope: !1187)
!1190 = !DILocation(line: 322, column: 5, scope: !1188)
!1191 = !DILocation(line: 323, column: 45, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1187, file: !1, line: 322, column: 38)
!1193 = !DILocation(line: 323, column: 51, scope: !1192)
!1194 = !DILocation(line: 323, column: 42, scope: !1192)
!1195 = !DILocation(line: 323, column: 24, scope: !1192)
!1196 = !DILocation(line: 323, column: 12, scope: !1192)
!1197 = !DILocation(line: 323, column: 9, scope: !1192)
!1198 = !DILocation(line: 323, column: 22, scope: !1192)
!1199 = !DILocation(line: 324, column: 19, scope: !1192)
!1200 = !DILocation(line: 324, column: 25, scope: !1192)
!1201 = !DILocation(line: 324, column: 22, scope: !1192)
!1202 = !DILocation(line: 324, column: 33, scope: !1192)
!1203 = !DILocation(line: 324, column: 9, scope: !1192)
!1204 = !DILocation(line: 325, column: 52, scope: !1192)
!1205 = !DILocation(line: 325, column: 49, scope: !1192)
!1206 = !DILocation(line: 325, column: 63, scope: !1192)
!1207 = !DILocation(line: 325, column: 67, scope: !1192)
!1208 = !DILocation(line: 325, column: 9, scope: !1192)
!1209 = !DILocation(line: 322, column: 32, scope: !1187)
!1210 = distinct !{!1210, !1190, !1211}
!1211 = !DILocation(line: 326, column: 5, scope: !1188)
!1212 = !DILocation(line: 327, column: 29, scope: !1145)
!1213 = !DILocation(line: 327, column: 32, scope: !1145)
!1214 = !DILocation(line: 327, column: 21, scope: !1145)
!1215 = !DILocation(line: 327, column: 18, scope: !1145)
!1216 = !DILocation(line: 328, column: 29, scope: !1145)
!1217 = !DILocation(line: 328, column: 43, scope: !1145)
!1218 = !DILocation(line: 328, column: 17, scope: !1145)
!1219 = !DILocation(line: 328, column: 5, scope: !1145)
!1220 = !DILocation(line: 329, column: 1, scope: !1145)
!1221 = distinct !DISubprogram(name: "msetCommand", scope: !1, file: !1, line: 331, type: !204, isLocal: false, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1222)
!1222 = !{!1223}
!1223 = !DILocalVariable(name: "c", arg: 1, scope: !1221, file: !1, line: 331, type: !62)
!1224 = !DILocation(line: 331, column: 26, scope: !1221)
!1225 = !DILocation(line: 332, column: 5, scope: !1221)
!1226 = !DILocation(line: 333, column: 1, scope: !1221)
!1227 = distinct !DISubprogram(name: "msetnxCommand", scope: !1, file: !1, line: 335, type: !204, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1228)
!1228 = !{!1229}
!1229 = !DILocalVariable(name: "c", arg: 1, scope: !1227, file: !1, line: 335, type: !62)
!1230 = !DILocation(line: 335, column: 28, scope: !1227)
!1231 = !DILocation(line: 336, column: 5, scope: !1227)
!1232 = !DILocation(line: 337, column: 1, scope: !1227)
!1233 = distinct !DISubprogram(name: "incrDecrCommand", scope: !1, file: !1, line: 339, type: !1234, isLocal: false, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1236)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{null, !62, !144}
!1236 = !{!1237, !1238, !1239, !1240, !1241, !1242}
!1237 = !DILocalVariable(name: "c", arg: 1, scope: !1233, file: !1, line: 339, type: !62)
!1238 = !DILocalVariable(name: "incr", arg: 2, scope: !1233, file: !1, line: 339, type: !144)
!1239 = !DILocalVariable(name: "value", scope: !1233, file: !1, line: 340, type: !144)
!1240 = !DILocalVariable(name: "oldvalue", scope: !1233, file: !1, line: 340, type: !144)
!1241 = !DILocalVariable(name: "o", scope: !1233, file: !1, line: 341, type: !175)
!1242 = !DILocalVariable(name: "new", scope: !1233, file: !1, line: 341, type: !175)
!1243 = !DILocation(line: 339, column: 30, scope: !1233)
!1244 = !DILocation(line: 339, column: 43, scope: !1233)
!1245 = !DILocation(line: 340, column: 5, scope: !1233)
!1246 = !DILocation(line: 343, column: 27, scope: !1233)
!1247 = !DILocation(line: 343, column: 33, scope: !1233)
!1248 = !DILocation(line: 343, column: 30, scope: !1233)
!1249 = !DILocation(line: 343, column: 9, scope: !1233)
!1250 = !DILocation(line: 341, column: 11, scope: !1233)
!1251 = !DILocation(line: 344, column: 11, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1233, file: !1, line: 344, column: 9)
!1253 = !DILocation(line: 344, column: 19, scope: !1252)
!1254 = !DILocation(line: 344, column: 22, scope: !1252)
!1255 = !DILocation(line: 344, column: 9, scope: !1233)
!1256 = !DILocation(line: 340, column: 15, scope: !1233)
!1257 = !DILocation(line: 345, column: 9, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1233, file: !1, line: 345, column: 9)
!1259 = !DILocation(line: 345, column: 55, scope: !1258)
!1260 = !DILocation(line: 345, column: 9, scope: !1233)
!1261 = !DILocation(line: 347, column: 16, scope: !1233)
!1262 = !DILocation(line: 340, column: 22, scope: !1233)
!1263 = !DILocation(line: 348, column: 19, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1233, file: !1, line: 348, column: 9)
!1265 = !DILocation(line: 348, column: 55, scope: !1264)
!1266 = !DILocation(line: 348, column: 43, scope: !1264)
!1267 = !DILocation(line: 349, column: 15, scope: !1264)
!1268 = !DILocation(line: 349, column: 31, scope: !1264)
!1269 = !DILocation(line: 349, column: 19, scope: !1264)
!1270 = !DILocation(line: 349, column: 55, scope: !1264)
!1271 = !DILocation(line: 349, column: 43, scope: !1264)
!1272 = !DILocation(line: 350, column: 9, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1264, file: !1, line: 349, column: 68)
!1274 = !DILocation(line: 351, column: 9, scope: !1273)
!1275 = !DILocation(line: 353, column: 11, scope: !1233)
!1276 = !DILocation(line: 355, column: 11, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1233, file: !1, line: 355, column: 9)
!1278 = !DILocation(line: 355, column: 17, scope: !1277)
!1279 = !{!435, !345, i64 4}
!1280 = !DILocation(line: 355, column: 26, scope: !1277)
!1281 = !DILocation(line: 355, column: 31, scope: !1277)
!1282 = !DILocation(line: 355, column: 37, scope: !1277)
!1283 = !DILocation(line: 355, column: 46, scope: !1277)
!1284 = !DILocation(line: 356, column: 20, scope: !1277)
!1285 = !DILocation(line: 355, column: 66, scope: !1277)
!1286 = !DILocation(line: 341, column: 15, scope: !1233)
!1287 = !DILocation(line: 360, column: 18, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1277, file: !1, line: 358, column: 5)
!1289 = !DILocation(line: 360, column: 12, scope: !1288)
!1290 = !DILocation(line: 360, column: 16, scope: !1288)
!1291 = !DILocation(line: 361, column: 5, scope: !1288)
!1292 = !DILocation(line: 362, column: 15, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1277, file: !1, line: 361, column: 12)
!1294 = !DILocation(line: 0, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !1, line: 365, column: 16)
!1296 = distinct !DILexicalBlock(scope: !1293, file: !1, line: 363, column: 13)
!1297 = !DILocation(line: 363, column: 13, scope: !1293)
!1298 = !DILocation(line: 364, column: 13, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !1, line: 363, column: 16)
!1300 = !DILocation(line: 365, column: 9, scope: !1299)
!1301 = !DILocation(line: 366, column: 13, scope: !1295)
!1302 = !DILocation(line: 0, scope: !1293)
!1303 = !DILocation(line: 369, column: 26, scope: !1233)
!1304 = !DILocation(line: 369, column: 32, scope: !1233)
!1305 = !DILocation(line: 369, column: 29, scope: !1233)
!1306 = !DILocation(line: 369, column: 5, scope: !1233)
!1307 = !DILocation(line: 370, column: 51, scope: !1233)
!1308 = !DILocation(line: 370, column: 48, scope: !1233)
!1309 = !DILocation(line: 370, column: 62, scope: !1233)
!1310 = !DILocation(line: 370, column: 66, scope: !1233)
!1311 = !DILocation(line: 370, column: 5, scope: !1233)
!1312 = !DILocation(line: 371, column: 17, scope: !1233)
!1313 = !DILocation(line: 372, column: 23, scope: !1233)
!1314 = !{!496, !346, i64 72}
!1315 = !DILocation(line: 372, column: 5, scope: !1233)
!1316 = !DILocation(line: 373, column: 5, scope: !1233)
!1317 = !DILocation(line: 374, column: 23, scope: !1233)
!1318 = !{!496, !346, i64 0}
!1319 = !DILocation(line: 374, column: 5, scope: !1233)
!1320 = !DILocation(line: 375, column: 1, scope: !1233)
!1321 = distinct !DISubprogram(name: "incrCommand", scope: !1, file: !1, line: 377, type: !204, isLocal: false, isDefinition: true, scopeLine: 377, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1322)
!1322 = !{!1323}
!1323 = !DILocalVariable(name: "c", arg: 1, scope: !1321, file: !1, line: 377, type: !62)
!1324 = !DILocation(line: 377, column: 26, scope: !1321)
!1325 = !DILocation(line: 378, column: 5, scope: !1321)
!1326 = !DILocation(line: 379, column: 1, scope: !1321)
!1327 = distinct !DISubprogram(name: "decrCommand", scope: !1, file: !1, line: 381, type: !204, isLocal: false, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1328)
!1328 = !{!1329}
!1329 = !DILocalVariable(name: "c", arg: 1, scope: !1327, file: !1, line: 381, type: !62)
!1330 = !DILocation(line: 381, column: 26, scope: !1327)
!1331 = !DILocation(line: 382, column: 5, scope: !1327)
!1332 = !DILocation(line: 383, column: 1, scope: !1327)
!1333 = distinct !DISubprogram(name: "incrbyCommand", scope: !1, file: !1, line: 385, type: !204, isLocal: false, isDefinition: true, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1334)
!1334 = !{!1335, !1336}
!1335 = !DILocalVariable(name: "c", arg: 1, scope: !1333, file: !1, line: 385, type: !62)
!1336 = !DILocalVariable(name: "incr", scope: !1333, file: !1, line: 386, type: !144)
!1337 = !DILocation(line: 385, column: 28, scope: !1333)
!1338 = !DILocation(line: 386, column: 5, scope: !1333)
!1339 = !DILocation(line: 388, column: 44, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1333, file: !1, line: 388, column: 9)
!1341 = !DILocation(line: 388, column: 41, scope: !1340)
!1342 = !DILocation(line: 386, column: 15, scope: !1333)
!1343 = !DILocation(line: 388, column: 9, scope: !1340)
!1344 = !DILocation(line: 388, column: 66, scope: !1340)
!1345 = !DILocation(line: 388, column: 9, scope: !1333)
!1346 = !DILocation(line: 389, column: 23, scope: !1333)
!1347 = !DILocation(line: 389, column: 5, scope: !1333)
!1348 = !DILocation(line: 390, column: 1, scope: !1333)
!1349 = distinct !DISubprogram(name: "decrbyCommand", scope: !1, file: !1, line: 392, type: !204, isLocal: false, isDefinition: true, scopeLine: 392, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1350)
!1350 = !{!1351, !1352}
!1351 = !DILocalVariable(name: "c", arg: 1, scope: !1349, file: !1, line: 392, type: !62)
!1352 = !DILocalVariable(name: "incr", scope: !1349, file: !1, line: 393, type: !144)
!1353 = !DILocation(line: 392, column: 28, scope: !1349)
!1354 = !DILocation(line: 393, column: 5, scope: !1349)
!1355 = !DILocation(line: 395, column: 44, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1349, file: !1, line: 395, column: 9)
!1357 = !DILocation(line: 395, column: 41, scope: !1356)
!1358 = !DILocation(line: 393, column: 15, scope: !1349)
!1359 = !DILocation(line: 395, column: 9, scope: !1356)
!1360 = !DILocation(line: 395, column: 66, scope: !1356)
!1361 = !DILocation(line: 395, column: 9, scope: !1349)
!1362 = !DILocation(line: 396, column: 24, scope: !1349)
!1363 = !DILocation(line: 396, column: 23, scope: !1349)
!1364 = !DILocation(line: 396, column: 5, scope: !1349)
!1365 = !DILocation(line: 397, column: 1, scope: !1349)
!1366 = distinct !DISubprogram(name: "incrbyfloatCommand", scope: !1, file: !1, line: 399, type: !204, isLocal: false, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1367)
!1367 = !{!1368, !1369, !1371, !1372, !1373, !1374}
!1368 = !DILocalVariable(name: "c", arg: 1, scope: !1366, file: !1, line: 399, type: !62)
!1369 = !DILocalVariable(name: "incr", scope: !1366, file: !1, line: 400, type: !1370)
!1370 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1371 = !DILocalVariable(name: "value", scope: !1366, file: !1, line: 400, type: !1370)
!1372 = !DILocalVariable(name: "o", scope: !1366, file: !1, line: 401, type: !175)
!1373 = !DILocalVariable(name: "new", scope: !1366, file: !1, line: 401, type: !175)
!1374 = !DILocalVariable(name: "aux", scope: !1366, file: !1, line: 401, type: !175)
!1375 = !DILocation(line: 399, column: 33, scope: !1366)
!1376 = !DILocation(line: 400, column: 5, scope: !1366)
!1377 = !DILocation(line: 403, column: 27, scope: !1366)
!1378 = !DILocation(line: 403, column: 33, scope: !1366)
!1379 = !DILocation(line: 403, column: 30, scope: !1366)
!1380 = !DILocation(line: 403, column: 9, scope: !1366)
!1381 = !DILocation(line: 401, column: 11, scope: !1366)
!1382 = !DILocation(line: 404, column: 11, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 404, column: 9)
!1384 = !DILocation(line: 404, column: 19, scope: !1383)
!1385 = !DILocation(line: 404, column: 22, scope: !1383)
!1386 = !DILocation(line: 404, column: 9, scope: !1366)
!1387 = !DILocation(line: 400, column: 23, scope: !1366)
!1388 = !DILocation(line: 405, column: 9, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 405, column: 9)
!1390 = !DILocation(line: 405, column: 57, scope: !1389)
!1391 = !DILocation(line: 405, column: 65, scope: !1389)
!1392 = !DILocation(line: 406, column: 45, scope: !1389)
!1393 = !DILocation(line: 406, column: 42, scope: !1389)
!1394 = !DILocation(line: 400, column: 17, scope: !1366)
!1395 = !DILocation(line: 406, column: 9, scope: !1389)
!1396 = !DILocation(line: 406, column: 65, scope: !1389)
!1397 = !DILocation(line: 405, column: 9, scope: !1366)
!1398 = !DILocation(line: 409, column: 14, scope: !1366)
!1399 = !{!1400, !1400, i64 0}
!1400 = !{!"long double", !326, i64 0}
!1401 = !DILocation(line: 409, column: 11, scope: !1366)
!1402 = !DILocation(line: 410, column: 9, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 410, column: 9)
!1404 = !DILocation(line: 410, column: 22, scope: !1403)
!1405 = !DILocation(line: 410, column: 25, scope: !1403)
!1406 = !DILocation(line: 410, column: 9, scope: !1366)
!1407 = !DILocation(line: 411, column: 9, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1403, file: !1, line: 410, column: 39)
!1409 = !DILocation(line: 412, column: 9, scope: !1408)
!1410 = !DILocation(line: 414, column: 44, scope: !1366)
!1411 = !DILocation(line: 414, column: 11, scope: !1366)
!1412 = !DILocation(line: 401, column: 15, scope: !1366)
!1413 = !DILocation(line: 0, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 415, column: 9)
!1415 = !DILocation(line: 415, column: 9, scope: !1366)
!1416 = !DILocation(line: 416, column: 9, scope: !1414)
!1417 = !DILocation(line: 418, column: 9, scope: !1414)
!1418 = !DILocation(line: 419, column: 26, scope: !1366)
!1419 = !DILocation(line: 419, column: 32, scope: !1366)
!1420 = !DILocation(line: 419, column: 29, scope: !1366)
!1421 = !DILocation(line: 419, column: 5, scope: !1366)
!1422 = !DILocation(line: 420, column: 56, scope: !1366)
!1423 = !DILocation(line: 420, column: 53, scope: !1366)
!1424 = !DILocation(line: 420, column: 67, scope: !1366)
!1425 = !DILocation(line: 420, column: 71, scope: !1366)
!1426 = !DILocation(line: 420, column: 5, scope: !1366)
!1427 = !DILocation(line: 421, column: 17, scope: !1366)
!1428 = !DILocation(line: 422, column: 5, scope: !1366)
!1429 = !DILocation(line: 427, column: 11, scope: !1366)
!1430 = !DILocation(line: 401, column: 21, scope: !1366)
!1431 = !DILocation(line: 428, column: 5, scope: !1366)
!1432 = !DILocation(line: 429, column: 5, scope: !1366)
!1433 = !DILocation(line: 430, column: 5, scope: !1366)
!1434 = !DILocation(line: 431, column: 1, scope: !1366)
!1435 = distinct !DISubprogram(name: "appendCommand", scope: !1, file: !1, line: 433, type: !204, isLocal: false, isDefinition: true, scopeLine: 433, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1436)
!1436 = !{!1437, !1438, !1439, !1440}
!1437 = !DILocalVariable(name: "c", arg: 1, scope: !1435, file: !1, line: 433, type: !62)
!1438 = !DILocalVariable(name: "totlen", scope: !1435, file: !1, line: 434, type: !187)
!1439 = !DILocalVariable(name: "o", scope: !1435, file: !1, line: 435, type: !175)
!1440 = !DILocalVariable(name: "append", scope: !1435, file: !1, line: 435, type: !175)
!1441 = !DILocation(line: 433, column: 28, scope: !1435)
!1442 = !DILocation(line: 437, column: 27, scope: !1435)
!1443 = !DILocation(line: 437, column: 33, scope: !1435)
!1444 = !DILocation(line: 437, column: 30, scope: !1435)
!1445 = !DILocation(line: 437, column: 9, scope: !1435)
!1446 = !DILocation(line: 435, column: 11, scope: !1435)
!1447 = !DILocation(line: 438, column: 11, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1435, file: !1, line: 438, column: 9)
!1449 = !DILocation(line: 438, column: 9, scope: !1435)
!1450 = !DILocation(line: 440, column: 43, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1448, file: !1, line: 438, column: 20)
!1452 = !DILocation(line: 440, column: 40, scope: !1451)
!1453 = !DILocation(line: 440, column: 22, scope: !1451)
!1454 = !DILocation(line: 440, column: 12, scope: !1451)
!1455 = !DILocation(line: 440, column: 9, scope: !1451)
!1456 = !DILocation(line: 440, column: 20, scope: !1451)
!1457 = !DILocation(line: 441, column: 18, scope: !1451)
!1458 = !DILocation(line: 441, column: 24, scope: !1451)
!1459 = !DILocation(line: 441, column: 21, scope: !1451)
!1460 = !DILocation(line: 441, column: 32, scope: !1451)
!1461 = !DILocation(line: 441, column: 9, scope: !1451)
!1462 = !DILocation(line: 442, column: 25, scope: !1451)
!1463 = !DILocation(line: 442, column: 22, scope: !1451)
!1464 = !DILocation(line: 442, column: 9, scope: !1451)
!1465 = !DILocation(line: 443, column: 37, scope: !1451)
!1466 = !DILocation(line: 443, column: 34, scope: !1451)
!1467 = !DILocation(line: 443, column: 18, scope: !1451)
!1468 = !DILocation(line: 434, column: 12, scope: !1435)
!1469 = !DILocation(line: 444, column: 5, scope: !1451)
!1470 = !DILocation(line: 446, column: 13, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !1, line: 446, column: 13)
!1472 = distinct !DILexicalBlock(scope: !1448, file: !1, line: 444, column: 12)
!1473 = !DILocation(line: 446, column: 13, scope: !1472)
!1474 = !DILocation(line: 450, column: 21, scope: !1472)
!1475 = !DILocation(line: 450, column: 18, scope: !1472)
!1476 = !DILocation(line: 435, column: 15, scope: !1435)
!1477 = !DILocation(line: 451, column: 18, scope: !1472)
!1478 = !DILocation(line: 451, column: 52, scope: !1472)
!1479 = !DILocation(line: 87, column: 39, scope: !694, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 451, column: 37, scope: !1472)
!1481 = !DILocation(line: 88, column: 27, scope: !694, inlinedAt: !1480)
!1482 = !DILocation(line: 88, column: 19, scope: !694, inlinedAt: !1480)
!1483 = !DILocation(line: 89, column: 5, scope: !694, inlinedAt: !1480)
!1484 = !DILocation(line: 91, column: 20, scope: !712, inlinedAt: !1480)
!1485 = !DILocation(line: 91, column: 13, scope: !712, inlinedAt: !1480)
!1486 = !DILocation(line: 93, column: 20, scope: !712, inlinedAt: !1480)
!1487 = !DILocation(line: 93, column: 34, scope: !712, inlinedAt: !1480)
!1488 = !DILocation(line: 93, column: 13, scope: !712, inlinedAt: !1480)
!1489 = !DILocation(line: 95, column: 20, scope: !712, inlinedAt: !1480)
!1490 = !DILocation(line: 95, column: 35, scope: !712, inlinedAt: !1480)
!1491 = !DILocation(line: 95, column: 13, scope: !712, inlinedAt: !1480)
!1492 = !DILocation(line: 97, column: 20, scope: !712, inlinedAt: !1480)
!1493 = !DILocation(line: 97, column: 35, scope: !712, inlinedAt: !1480)
!1494 = !DILocation(line: 97, column: 13, scope: !712, inlinedAt: !1480)
!1495 = !DILocation(line: 99, column: 20, scope: !712, inlinedAt: !1480)
!1496 = !DILocation(line: 99, column: 35, scope: !712, inlinedAt: !1480)
!1497 = !DILocation(line: 99, column: 13, scope: !712, inlinedAt: !1480)
!1498 = !DILocation(line: 0, scope: !712, inlinedAt: !1480)
!1499 = !DILocation(line: 102, column: 1, scope: !694, inlinedAt: !1480)
!1500 = !DILocation(line: 451, column: 36, scope: !1472)
!1501 = !DILocation(line: 37, column: 38, scope: !759, inlinedAt: !1502)
!1502 = distinct !DILocation(line: 452, column: 13, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1472, file: !1, line: 452, column: 13)
!1504 = !DILocation(line: 37, column: 51, scope: !759, inlinedAt: !1502)
!1505 = !DILocation(line: 38, column: 14, scope: !768, inlinedAt: !1502)
!1506 = !DILocation(line: 38, column: 9, scope: !759, inlinedAt: !1502)
!1507 = !DILocation(line: 39, column: 9, scope: !771, inlinedAt: !1502)
!1508 = !DILocation(line: 43, column: 1, scope: !759, inlinedAt: !1502)
!1509 = !DILocation(line: 452, column: 13, scope: !1472)
!1510 = !DILocation(line: 456, column: 37, scope: !1472)
!1511 = !DILocation(line: 456, column: 43, scope: !1472)
!1512 = !DILocation(line: 456, column: 40, scope: !1472)
!1513 = !DILocation(line: 456, column: 13, scope: !1472)
!1514 = !DILocation(line: 457, column: 31, scope: !1472)
!1515 = !DILocation(line: 457, column: 43, scope: !1472)
!1516 = !DILocation(line: 87, column: 39, scope: !694, inlinedAt: !1517)
!1517 = distinct !DILocation(line: 457, column: 47, scope: !1472)
!1518 = !DILocation(line: 88, column: 27, scope: !694, inlinedAt: !1517)
!1519 = !DILocation(line: 88, column: 19, scope: !694, inlinedAt: !1517)
!1520 = !DILocation(line: 89, column: 5, scope: !694, inlinedAt: !1517)
!1521 = !DILocation(line: 91, column: 20, scope: !712, inlinedAt: !1517)
!1522 = !DILocation(line: 91, column: 13, scope: !712, inlinedAt: !1517)
!1523 = !DILocation(line: 93, column: 20, scope: !712, inlinedAt: !1517)
!1524 = !DILocation(line: 93, column: 34, scope: !712, inlinedAt: !1517)
!1525 = !DILocation(line: 93, column: 13, scope: !712, inlinedAt: !1517)
!1526 = !DILocation(line: 95, column: 20, scope: !712, inlinedAt: !1517)
!1527 = !DILocation(line: 95, column: 35, scope: !712, inlinedAt: !1517)
!1528 = !DILocation(line: 95, column: 13, scope: !712, inlinedAt: !1517)
!1529 = !DILocation(line: 97, column: 20, scope: !712, inlinedAt: !1517)
!1530 = !DILocation(line: 97, column: 35, scope: !712, inlinedAt: !1517)
!1531 = !DILocation(line: 97, column: 13, scope: !712, inlinedAt: !1517)
!1532 = !DILocation(line: 99, column: 20, scope: !712, inlinedAt: !1517)
!1533 = !DILocation(line: 99, column: 35, scope: !712, inlinedAt: !1517)
!1534 = !DILocation(line: 99, column: 13, scope: !712, inlinedAt: !1517)
!1535 = !DILocation(line: 0, scope: !712, inlinedAt: !1517)
!1536 = !DILocation(line: 102, column: 1, scope: !694, inlinedAt: !1517)
!1537 = !DILocation(line: 457, column: 18, scope: !1472)
!1538 = !DILocation(line: 457, column: 16, scope: !1472)
!1539 = !DILocation(line: 87, column: 39, scope: !694, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 458, column: 18, scope: !1472)
!1541 = !DILocation(line: 88, column: 27, scope: !694, inlinedAt: !1540)
!1542 = !DILocation(line: 88, column: 19, scope: !694, inlinedAt: !1540)
!1543 = !DILocation(line: 89, column: 5, scope: !694, inlinedAt: !1540)
!1544 = !DILocation(line: 91, column: 20, scope: !712, inlinedAt: !1540)
!1545 = !DILocation(line: 91, column: 13, scope: !712, inlinedAt: !1540)
!1546 = !DILocation(line: 93, column: 20, scope: !712, inlinedAt: !1540)
!1547 = !DILocation(line: 93, column: 34, scope: !712, inlinedAt: !1540)
!1548 = !DILocation(line: 93, column: 13, scope: !712, inlinedAt: !1540)
!1549 = !DILocation(line: 95, column: 20, scope: !712, inlinedAt: !1540)
!1550 = !DILocation(line: 95, column: 35, scope: !712, inlinedAt: !1540)
!1551 = !DILocation(line: 95, column: 13, scope: !712, inlinedAt: !1540)
!1552 = !DILocation(line: 97, column: 20, scope: !712, inlinedAt: !1540)
!1553 = !DILocation(line: 97, column: 35, scope: !712, inlinedAt: !1540)
!1554 = !DILocation(line: 97, column: 13, scope: !712, inlinedAt: !1540)
!1555 = !DILocation(line: 99, column: 20, scope: !712, inlinedAt: !1540)
!1556 = !DILocation(line: 99, column: 35, scope: !712, inlinedAt: !1540)
!1557 = !DILocation(line: 99, column: 13, scope: !712, inlinedAt: !1540)
!1558 = !DILocation(line: 0, scope: !712, inlinedAt: !1540)
!1559 = !DILocation(line: 102, column: 1, scope: !694, inlinedAt: !1540)
!1560 = !DILocation(line: 0, scope: !1472)
!1561 = !DILocation(line: 460, column: 26, scope: !1435)
!1562 = !DILocation(line: 460, column: 32, scope: !1435)
!1563 = !DILocation(line: 460, column: 29, scope: !1435)
!1564 = !DILocation(line: 460, column: 5, scope: !1435)
!1565 = !DILocation(line: 461, column: 51, scope: !1435)
!1566 = !DILocation(line: 461, column: 48, scope: !1435)
!1567 = !DILocation(line: 461, column: 62, scope: !1435)
!1568 = !DILocation(line: 461, column: 66, scope: !1435)
!1569 = !DILocation(line: 461, column: 5, scope: !1435)
!1570 = !DILocation(line: 462, column: 17, scope: !1435)
!1571 = !DILocation(line: 463, column: 5, scope: !1435)
!1572 = !DILocation(line: 464, column: 1, scope: !1435)
!1573 = distinct !DISubprogram(name: "strlenCommand", scope: !1, file: !1, line: 466, type: !204, isLocal: false, isDefinition: true, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1574)
!1574 = !{!1575, !1576}
!1575 = !DILocalVariable(name: "c", arg: 1, scope: !1573, file: !1, line: 466, type: !62)
!1576 = !DILocalVariable(name: "o", scope: !1573, file: !1, line: 467, type: !175)
!1577 = !DILocation(line: 466, column: 28, scope: !1573)
!1578 = !DILocation(line: 468, column: 40, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1573, file: !1, line: 468, column: 9)
!1580 = !DILocation(line: 468, column: 37, scope: !1579)
!1581 = !DILocation(line: 468, column: 55, scope: !1579)
!1582 = !DILocation(line: 468, column: 14, scope: !1579)
!1583 = !DILocation(line: 467, column: 11, scope: !1573)
!1584 = !DILocation(line: 468, column: 63, scope: !1579)
!1585 = !DILocation(line: 468, column: 71, scope: !1579)
!1586 = !DILocation(line: 469, column: 9, scope: !1579)
!1587 = !DILocation(line: 468, column: 9, scope: !1573)
!1588 = !DILocation(line: 470, column: 24, scope: !1573)
!1589 = !DILocation(line: 470, column: 5, scope: !1573)
!1590 = !DILocation(line: 471, column: 1, scope: !1573)
