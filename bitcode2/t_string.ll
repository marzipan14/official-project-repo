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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  br i1 %11, label %12, label %27, !dbg !330

; <label>:12:                                     ; preds = %8
  %13 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* nonnull %4, i64* nonnull %9, i8* null) #5, !dbg !331
  %14 = icmp eq i32 %13, 0, !dbg !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  br i1 %14, label %15, label %69, !dbg !335

; <label>:15:                                     ; preds = %12
  %16 = load i64, i64* %9, align 8, !dbg !336, !tbaa !324
  %17 = icmp slt i64 %16, 1, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !339
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  br i1 %24, label %25, label %27, !dbg !356

; <label>:25:                                     ; preds = %23
  %26 = mul nsw i64 %16, 1000, !dbg !357
  store i64 %26, i64* %9, align 8, !dbg !357, !tbaa !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  br label %27, !dbg !358

; <label>:27:                                     ; preds = %23, %25, %8
  %28 = and i32 %1, 1, !dbg !359
  %29 = icmp eq i32 %28, 0, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  br i1 %29, label %35, label %30, !dbg !361

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !362
  %32 = load %struct.redisDb*, %struct.redisDb** %31, align 8, !dbg !362, !tbaa !363
  %33 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %32, %struct.redisObject* %2) #5, !dbg !364
  %34 = icmp eq %struct.redisObject* %33, null, !dbg !365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  br i1 %34, label %35, label %43, !dbg !366

; <label>:35:                                     ; preds = %30, %27
  %36 = and i32 %1, 2, !dbg !367
  %37 = icmp eq i32 %36, 0, !dbg !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  %38 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !369
  br i1 %37, label %47, label %39, !dbg !368

; <label>:39:                                     ; preds = %35
  %40 = load %struct.redisDb*, %struct.redisDb** %38, align 8, !dbg !370, !tbaa !363
  %41 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %40, %struct.redisObject* %2) #5, !dbg !371
  %42 = icmp eq %struct.redisObject* %41, null, !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  %51 = load %struct.redisDb*, %struct.redisDb** %38, align 8, !dbg !389, !tbaa !363
  br i1 %11, label %52, label %62, !dbg !388

; <label>:52:                                     ; preds = %47
  %53 = call i64 @mstime() #5, !dbg !390
  %54 = load i64, i64* %9, align 8, !dbg !392, !tbaa !324
  %55 = add nsw i64 %54, %53, !dbg !393
  call void @setExpire(%struct.client* nonnull %0, %struct.redisDb* %51, %struct.redisObject* %2, i64 %55) #5, !dbg !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  %56 = load %struct.redisDb*, %struct.redisDb** %38, align 8, !dbg !395, !tbaa !363
  %57 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %56, i64 0, i32 5, !dbg !396
  %58 = load i32, i32* %57, align 8, !dbg !396, !tbaa !397
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.redisObject* %2, i32 %58) #5, !dbg !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  %59 = load %struct.redisDb*, %struct.redisDb** %38, align 8, !dbg !401, !tbaa !363
  %60 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %59, i64 0, i32 5, !dbg !403
  %61 = load i32, i32* %60, align 8, !dbg !403, !tbaa !397
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.redisObject* %2, i32 %61) #5, !dbg !404
  br label %65, !dbg !404

; <label>:62:                                     ; preds = %47
  %63 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %51, i64 0, i32 5, !dbg !396
  %64 = load i32, i32* %63, align 8, !dbg !396, !tbaa !397
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.redisObject* %2, i32 %64) #5, !dbg !399
  br label %65

; <label>:65:                                     ; preds = %62, %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  %66 = icmp eq %struct.redisObject* %6, null, !dbg !406
  %67 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !407
  %68 = select i1 %66, %struct.redisObject* %67, %struct.redisObject* %6, !dbg !406
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %68) #5, !dbg !408
  br label %69, !dbg !409

; <label>:69:                                     ; preds = %12, %65, %43, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #4, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  ret void, !dbg !409
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
define dso_local void @setCommand(%struct.client*) local_unnamed_addr #0 !dbg !411 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !429
  %3 = load i32, i32* %2, align 8, !dbg !429, !tbaa !430
  %4 = icmp sgt i32 %3, 3, !dbg !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !433
  %6 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !433, !tbaa !434
  br i1 %4, label %7, label %120, !dbg !432

; <label>:7:                                      ; preds = %1
  %8 = add nsw i32 %3, -1
  br label %9, !dbg !435

; <label>:9:                                      ; preds = %7, %113
  %10 = phi i32 [ %118, %113 ], [ 3, %7 ]
  %11 = phi %struct.redisObject* [ %116, %113 ], [ null, %7 ]
  %12 = phi i32 [ %115, %113 ], [ 0, %7 ]
  %13 = phi i32 [ %114, %113 ], [ 0, %7 ]
  %14 = sext i32 %10 to i64, !dbg !435
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 %14, !dbg !435
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !435, !tbaa !436
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %16, i64 0, i32 2, !dbg !437
  %18 = load i8*, i8** %17, align 8, !dbg !437, !tbaa !438
  %19 = icmp eq i32 %10, %8, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  br i1 %19, label %25, label %20, !dbg !442

; <label>:20:                                     ; preds = %9
  %21 = add nsw i32 %10, 1, !dbg !443
  %22 = sext i32 %21 to i64, !dbg !444
  %23 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 %22, !dbg !444
  %24 = load %struct.redisObject*, %struct.redisObject** %23, align 8, !dbg !444, !tbaa !436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  br label %25, !dbg !442

; <label>:25:                                     ; preds = %9, %20
  %26 = phi %struct.redisObject* [ %24, %20 ], [ null, %9 ], !dbg !442
  %27 = load i8, i8* %18, align 1, !dbg !446, !tbaa !448
  %28 = icmp eq i8 %27, 110, !dbg !449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  br i1 %28, label %31, label %29, !dbg !450

; <label>:29:                                     ; preds = %25
  %30 = icmp eq i8 %27, 78, !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !452
  br i1 %30, label %31, label %47, !dbg !452

; <label>:31:                                     ; preds = %29, %25
  %32 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !453
  %33 = load i8, i8* %32, align 1, !dbg !453, !tbaa !448
  %34 = icmp eq i8 %33, 120, !dbg !454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  br i1 %34, label %37, label %35, !dbg !455

; <label>:35:                                     ; preds = %31
  %36 = icmp eq i8 %33, 88, !dbg !456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  br i1 %36, label %37, label %46, !dbg !457

; <label>:37:                                     ; preds = %35, %31
  %38 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !458
  %39 = load i8, i8* %38, align 1, !dbg !458, !tbaa !448
  %40 = icmp eq i8 %39, 0, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !460
  br i1 %40, label %41, label %46, !dbg !460

; <label>:41:                                     ; preds = %37
  %42 = and i32 %12, 2, !dbg !461
  %43 = icmp eq i32 %42, 0, !dbg !461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !462
  br i1 %43, label %44, label %46, !dbg !462

; <label>:44:                                     ; preds = %41
  %45 = or i32 %12, 1, !dbg !463
  br label %113, !dbg !465

; <label>:46:                                     ; preds = %41, %37, %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !466
  br label %49, !dbg !466

; <label>:47:                                     ; preds = %29
  %48 = icmp eq i8 %27, 120, !dbg !468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !466
  br i1 %48, label %51, label %49, !dbg !466

; <label>:49:                                     ; preds = %46, %47
  %50 = icmp eq i8 %27, 88, !dbg !469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  br i1 %50, label %51, label %66, !dbg !470

; <label>:51:                                     ; preds = %49, %47
  %52 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !471
  %53 = load i8, i8* %52, align 1, !dbg !471, !tbaa !448
  %54 = icmp eq i8 %53, 120, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !473
  br i1 %54, label %57, label %55, !dbg !473

; <label>:55:                                     ; preds = %51
  %56 = icmp eq i8 %53, 88, !dbg !474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !475
  br i1 %56, label %57, label %66, !dbg !475

; <label>:57:                                     ; preds = %55, %51
  %58 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !476
  %59 = load i8, i8* %58, align 1, !dbg !476, !tbaa !448
  %60 = icmp eq i8 %59, 0, !dbg !477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  br i1 %60, label %61, label %66, !dbg !478

; <label>:61:                                     ; preds = %57
  %62 = and i32 %12, 1, !dbg !479
  %63 = icmp eq i32 %62, 0, !dbg !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !480
  br i1 %63, label %64, label %66, !dbg !480

; <label>:64:                                     ; preds = %61
  %65 = or i32 %12, 2, !dbg !481
  br label %113, !dbg !483

; <label>:66:                                     ; preds = %61, %57, %55, %49
  %67 = icmp eq i8 %27, 101, !dbg !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  br i1 %67, label %70, label %68, !dbg !486

; <label>:68:                                     ; preds = %66
  %69 = icmp eq i8 %27, 69, !dbg !487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !488
  br i1 %69, label %70, label %89, !dbg !488

; <label>:70:                                     ; preds = %68, %66
  %71 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !489
  %72 = load i8, i8* %71, align 1, !dbg !489, !tbaa !448
  %73 = icmp eq i8 %72, 120, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  br i1 %73, label %76, label %74, !dbg !491

; <label>:74:                                     ; preds = %70
  %75 = icmp eq i8 %72, 88, !dbg !492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !493
  br i1 %75, label %76, label %88, !dbg !493

; <label>:76:                                     ; preds = %74, %70
  %77 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !494
  %78 = load i8, i8* %77, align 1, !dbg !494, !tbaa !448
  %79 = icmp eq i8 %78, 0, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !496
  br i1 %79, label %80, label %88, !dbg !496

; <label>:80:                                     ; preds = %76
  %81 = and i32 %12, 8, !dbg !497
  %82 = icmp eq i32 %81, 0, !dbg !497
  %83 = icmp ne %struct.redisObject* %26, null, !dbg !498
  %84 = and i1 %82, %83, !dbg !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !499
  br i1 %84, label %85, label %88, !dbg !499

; <label>:85:                                     ; preds = %80
  %86 = or i32 %12, 4, !dbg !500
  %87 = add nsw i32 %10, 1, !dbg !502
  br label %113, !dbg !503

; <label>:88:                                     ; preds = %80, %76, %74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !504
  br label %91, !dbg !504

; <label>:89:                                     ; preds = %68
  %90 = icmp eq i8 %27, 112, !dbg !506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !504
  br i1 %90, label %93, label %91, !dbg !504

; <label>:91:                                     ; preds = %88, %89
  %92 = icmp eq i8 %27, 80, !dbg !507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  br i1 %92, label %93, label %111, !dbg !508

; <label>:93:                                     ; preds = %91, %89
  %94 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !509
  %95 = load i8, i8* %94, align 1, !dbg !509, !tbaa !448
  %96 = icmp eq i8 %95, 120, !dbg !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !511
  br i1 %96, label %99, label %97, !dbg !511

; <label>:97:                                     ; preds = %93
  %98 = icmp eq i8 %95, 88, !dbg !512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !513
  br i1 %98, label %99, label %111, !dbg !513

; <label>:99:                                     ; preds = %97, %93
  %100 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !514
  %101 = load i8, i8* %100, align 1, !dbg !514, !tbaa !448
  %102 = icmp eq i8 %101, 0, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  br i1 %102, label %103, label %111, !dbg !516

; <label>:103:                                    ; preds = %99
  %104 = and i32 %12, 4, !dbg !517
  %105 = icmp eq i32 %104, 0, !dbg !517
  %106 = icmp ne %struct.redisObject* %26, null, !dbg !518
  %107 = and i1 %105, %106, !dbg !519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !519
  br i1 %107, label %108, label %111, !dbg !519

; <label>:108:                                    ; preds = %103
  %109 = or i32 %12, 8, !dbg !520
  %110 = add nsw i32 %10, 1, !dbg !522
  br label %113

; <label>:111:                                    ; preds = %91, %97, %99, %103
  %112 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !523, !tbaa !525
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %112) #5, !dbg !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !528
  br label %134

; <label>:113:                                    ; preds = %44, %85, %108, %64
  %114 = phi i32 [ 0, %85 ], [ 1, %108 ], [ %13, %64 ], [ %13, %44 ], !dbg !433
  %115 = phi i32 [ %86, %85 ], [ %109, %108 ], [ %65, %64 ], [ %45, %44 ], !dbg !529
  %116 = phi %struct.redisObject* [ %26, %85 ], [ %26, %108 ], [ %11, %64 ], [ %11, %44 ], !dbg !433
  %117 = phi i32 [ %87, %85 ], [ %110, %108 ], [ %10, %64 ], [ %10, %44 ], !dbg !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !531
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %118 = add nsw i32 %117, 1, !dbg !532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !533
  %119 = icmp slt i32 %118, %3, !dbg !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  br i1 %119, label %9, label %120, !dbg !432, !llvm.loop !534

; <label>:120:                                    ; preds = %113, %1
  %121 = phi i32 [ 0, %1 ], [ %114, %113 ], !dbg !536
  %122 = phi i32 [ 0, %1 ], [ %115, %113 ], !dbg !536
  %123 = phi %struct.redisObject* [ null, %1 ], [ %116, %113 ], !dbg !536
  %124 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 2, !dbg !537
  %125 = load %struct.redisObject*, %struct.redisObject** %124, align 8, !dbg !537, !tbaa !436
  %126 = tail call %struct.redisObject* @tryObjectEncoding(%struct.redisObject* %125) #5, !dbg !538
  %127 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !539, !tbaa !434
  %128 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %127, i64 2, !dbg !540
  store %struct.redisObject* %126, %struct.redisObject** %128, align 8, !dbg !541, !tbaa !436
  %129 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !542, !tbaa !434
  %130 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %129, i64 1, !dbg !543
  %131 = load %struct.redisObject*, %struct.redisObject** %130, align 8, !dbg !543, !tbaa !436
  %132 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %129, i64 2, !dbg !544
  %133 = load %struct.redisObject*, %struct.redisObject** %132, align 8, !dbg !544, !tbaa !436
  tail call void @setGenericCommand(%struct.client* nonnull %0, i32 %122, %struct.redisObject* %131, %struct.redisObject* %133, %struct.redisObject* %123, i32 %121, %struct.redisObject* null, %struct.redisObject* null) #6, !dbg !545
  br label %134, !dbg !546

; <label>:134:                                    ; preds = %111, %120
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
  ret void, !dbg !546
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @tryObjectEncoding(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @setnxCommand(%struct.client*) local_unnamed_addr #0 !dbg !547 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !551
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !551, !tbaa !434
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 2, !dbg !552
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !552, !tbaa !436
  %6 = tail call %struct.redisObject* @tryObjectEncoding(%struct.redisObject* %5) #5, !dbg !553
  %7 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !554, !tbaa !434
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 2, !dbg !555
  store %struct.redisObject* %6, %struct.redisObject** %8, align 8, !dbg !556, !tbaa !436
  %9 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !557, !tbaa !434
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 1, !dbg !558
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !558, !tbaa !436
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 2, !dbg !559
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !559, !tbaa !436
  %14 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !560, !tbaa !561
  %15 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !562, !tbaa !563
  tail call void @setGenericCommand(%struct.client* %0, i32 1, %struct.redisObject* %11, %struct.redisObject* %13, %struct.redisObject* null, i32 0, %struct.redisObject* %14, %struct.redisObject* %15) #6, !dbg !564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  ret void, !dbg !565
}

; Function Attrs: noredzone nounwind
define dso_local void @setexCommand(%struct.client*) local_unnamed_addr #0 !dbg !566 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !570
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !570, !tbaa !434
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 3, !dbg !571
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !571, !tbaa !436
  %6 = tail call %struct.redisObject* @tryObjectEncoding(%struct.redisObject* %5) #5, !dbg !572
  %7 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !573, !tbaa !434
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 3, !dbg !574
  store %struct.redisObject* %6, %struct.redisObject** %8, align 8, !dbg !575, !tbaa !436
  %9 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !576, !tbaa !434
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 1, !dbg !577
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !577, !tbaa !436
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 3, !dbg !578
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !578, !tbaa !436
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 2, !dbg !579
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !579, !tbaa !436
  tail call void @setGenericCommand(%struct.client* %0, i32 0, %struct.redisObject* %11, %struct.redisObject* %13, %struct.redisObject* %15, i32 0, %struct.redisObject* null, %struct.redisObject* null) #6, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !581
  ret void, !dbg !581
}

; Function Attrs: noredzone nounwind
define dso_local void @psetexCommand(%struct.client*) local_unnamed_addr #0 !dbg !582 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !586
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !586, !tbaa !434
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 3, !dbg !587
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !587, !tbaa !436
  %6 = tail call %struct.redisObject* @tryObjectEncoding(%struct.redisObject* %5) #5, !dbg !588
  %7 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !589, !tbaa !434
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 3, !dbg !590
  store %struct.redisObject* %6, %struct.redisObject** %8, align 8, !dbg !591, !tbaa !436
  %9 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !592, !tbaa !434
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 1, !dbg !593
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !593, !tbaa !436
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 3, !dbg !594
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !594, !tbaa !436
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 2, !dbg !595
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !595, !tbaa !436
  tail call void @setGenericCommand(%struct.client* %0, i32 0, %struct.redisObject* %11, %struct.redisObject* %13, %struct.redisObject* %15, i32 1, %struct.redisObject* null, %struct.redisObject* null) #6, !dbg !596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  ret void, !dbg !597
}

; Function Attrs: noredzone nounwind
define dso_local i32 @getGenericCommand(%struct.client*) local_unnamed_addr #0 !dbg !598 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !605
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !605, !tbaa !434
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !607
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !607, !tbaa !436
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !608, !tbaa !609
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #5, !dbg !610
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !613
  br i1 %8, label %17, label %9, !dbg !613

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 0, !dbg !614
  %11 = load i32, i32* %10, align 8, !dbg !614
  %12 = and i32 %11, 15, !dbg !614
  %13 = icmp eq i32 %12, 0, !dbg !616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !617
  br i1 %13, label %16, label %14, !dbg !617

; <label>:14:                                     ; preds = %9
  %15 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !618, !tbaa !620
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %15) #5, !dbg !621
  br label %17, !dbg !622

; <label>:16:                                     ; preds = %9
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* nonnull %7) #5, !dbg !623
  br label %17, !dbg !625

; <label>:17:                                     ; preds = %1, %16, %14
  %18 = phi i32 [ -1, %14 ], [ 0, %16 ], [ 0, %1 ], !dbg !626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !628
  ret i32 %18, !dbg !628
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyReadOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulk(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @getCommand(%struct.client*) local_unnamed_addr #0 !dbg !629 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !635
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !635, !tbaa !434
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !636
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !636, !tbaa !436
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !637, !tbaa !609
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #5, !dbg !638
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  br i1 %8, label %17, label %9, !dbg !641

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 0, !dbg !642
  %11 = load i32, i32* %10, align 8, !dbg !642
  %12 = and i32 %11, 15, !dbg !642
  %13 = icmp eq i32 %12, 0, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !644
  br i1 %13, label %16, label %14, !dbg !644

; <label>:14:                                     ; preds = %9
  %15 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !645, !tbaa !620
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %15) #5, !dbg !646
  br label %17, !dbg !647

; <label>:16:                                     ; preds = %9
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* nonnull %7) #5, !dbg !648
  br label %17, !dbg !649

; <label>:17:                                     ; preds = %1, %14, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !652
  ret void, !dbg !652
}

; Function Attrs: noredzone nounwind
define dso_local void @getsetCommand(%struct.client*) local_unnamed_addr #0 !dbg !653 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !660
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !660, !tbaa !434
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !661
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !661, !tbaa !436
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !662, !tbaa !609
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #5, !dbg !663
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  br i1 %8, label %17, label %9, !dbg !666

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 0, !dbg !667
  %11 = load i32, i32* %10, align 8, !dbg !667
  %12 = and i32 %11, 15, !dbg !667
  %13 = icmp eq i32 %12, 0, !dbg !668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !669
  br i1 %13, label %14, label %15, !dbg !669

; <label>:14:                                     ; preds = %9
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* nonnull %7) #5, !dbg !670
  br label %17, !dbg !671

; <label>:15:                                     ; preds = %9
  %16 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !672, !tbaa !620
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %16) #5, !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  br label %39, !dbg !676

; <label>:17:                                     ; preds = %1, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  %18 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !678, !tbaa !434
  %19 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %18, i64 2, !dbg !679
  %20 = load %struct.redisObject*, %struct.redisObject** %19, align 8, !dbg !679, !tbaa !436
  %21 = tail call %struct.redisObject* @tryObjectEncoding(%struct.redisObject* %20) #5, !dbg !680
  %22 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !681, !tbaa !434
  %23 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %22, i64 2, !dbg !682
  store %struct.redisObject* %21, %struct.redisObject** %23, align 8, !dbg !683, !tbaa !436
  %24 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !684
  %25 = load %struct.redisDb*, %struct.redisDb** %24, align 8, !dbg !684, !tbaa !363
  %26 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !685, !tbaa !434
  %27 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 1, !dbg !686
  %28 = load %struct.redisObject*, %struct.redisObject** %27, align 8, !dbg !686, !tbaa !436
  %29 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 2, !dbg !687
  %30 = load %struct.redisObject*, %struct.redisObject** %29, align 8, !dbg !687, !tbaa !436
  tail call void @setKey(%struct.redisDb* %25, %struct.redisObject* %28, %struct.redisObject* %30) #5, !dbg !688
  %31 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !689, !tbaa !434
  %32 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %31, i64 1, !dbg !690
  %33 = load %struct.redisObject*, %struct.redisObject** %32, align 8, !dbg !690, !tbaa !436
  %34 = load %struct.redisDb*, %struct.redisDb** %24, align 8, !dbg !691, !tbaa !363
  %35 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %34, i64 0, i32 5, !dbg !692
  %36 = load i32, i32* %35, align 8, !dbg !692, !tbaa !397
  tail call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.redisObject* %33, i32 %36) #5, !dbg !693
  %37 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !694, !tbaa !382
  %38 = add nsw i64 %37, 1, !dbg !694
  store i64 %38, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !694, !tbaa !382
  br label %39, !dbg !695

; <label>:39:                                     ; preds = %15, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !695
  ret void, !dbg !695
}

; Function Attrs: noredzone nounwind
define dso_local void @setrangeCommand(%struct.client*) local_unnamed_addr #0 !dbg !697 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !707
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4, !dbg !707
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !708
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !708, !tbaa !434
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 3, !dbg !709
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !709, !tbaa !436
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !710
  %9 = load i8*, i8** %8, align 8, !dbg !710, !tbaa !438
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 2, !dbg !712
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !712, !tbaa !436
  %12 = call i32 @getLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %11, i64* nonnull %2, i8* null) #5, !dbg !715
  %13 = icmp eq i32 %12, 0, !dbg !716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !717
  br i1 %13, label %14, label %314, !dbg !717

; <label>:14:                                     ; preds = %1
  %15 = load i64, i64* %2, align 8, !dbg !718, !tbaa !720
  %16 = icmp slt i64 %15, 0, !dbg !721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  br i1 %16, label %17, label %18, !dbg !722

; <label>:17:                                     ; preds = %14
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !723
  br label %314, !dbg !725

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !726
  %20 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !726, !tbaa !363
  %21 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !727, !tbaa !434
  %22 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %21, i64 1, !dbg !728
  %23 = load %struct.redisObject*, %struct.redisObject** %22, align 8, !dbg !728, !tbaa !436
  %24 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %20, %struct.redisObject* %23) #5, !dbg !729
  %25 = icmp eq %struct.redisObject* %24, null, !dbg !731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  br i1 %25, label %26, label %116, !dbg !732

; <label>:26:                                     ; preds = %18
  %27 = getelementptr inbounds i8, i8* %9, i64 -1, !dbg !746
  %28 = load i8, i8* %27, align 1, !dbg !746, !tbaa !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !748
  %29 = trunc i8 %28 to i3, !dbg !748
  switch i3 %29, label %51 [
    i3 0, label %30
    i3 1, label %33
    i3 2, label %37
    i3 3, label %42
    i3 -4, label %47
  ], !dbg !748

; <label>:30:                                     ; preds = %26
  %31 = lshr i8 %28, 3, !dbg !749
  %32 = zext i8 %31 to i64, !dbg !749
  br label %52, !dbg !751

; <label>:33:                                     ; preds = %26
  %34 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !752
  %35 = load i8, i8* %34, align 1, !dbg !753, !tbaa !448
  %36 = zext i8 %35 to i64, !dbg !752
  br label %52, !dbg !754

; <label>:37:                                     ; preds = %26
  %38 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !755
  %39 = bitcast i8* %38 to i16*, !dbg !756
  %40 = load i16, i16* %39, align 1, !dbg !756, !tbaa !757
  %41 = zext i16 %40 to i64, !dbg !755
  br label %52, !dbg !759

; <label>:42:                                     ; preds = %26
  %43 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !760
  %44 = bitcast i8* %43 to i32*, !dbg !761
  %45 = load i32, i32* %44, align 1, !dbg !761, !tbaa !762
  %46 = zext i32 %45 to i64, !dbg !760
  br label %52, !dbg !763

; <label>:47:                                     ; preds = %26
  %48 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !764
  %49 = bitcast i8* %48 to i64*, !dbg !765
  %50 = load i64, i64* %49, align 1, !dbg !765, !tbaa !720
  br label %52, !dbg !766

; <label>:51:                                     ; preds = %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  br label %55, !dbg !769

; <label>:52:                                     ; preds = %30, %33, %37, %42, %47
  %53 = phi i64 [ %50, %47 ], [ %46, %42 ], [ %41, %37 ], [ %36, %33 ], [ %32, %30 ], !dbg !770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !768
  %54 = icmp eq i64 %53, 0, !dbg !772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  br i1 %54, label %55, label %57, !dbg !769

; <label>:55:                                     ; preds = %51, %52
  %56 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !773, !tbaa !563
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %56) #5, !dbg !775
  br label %314, !dbg !776

; <label>:57:                                     ; preds = %52
  %58 = load i64, i64* %2, align 8, !dbg !777, !tbaa !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !782
  switch i3 %29, label %80 [
    i3 0, label %59
    i3 1, label %62
    i3 2, label %66
    i3 3, label %71
    i3 -4, label %76
  ], !dbg !782

; <label>:59:                                     ; preds = %57
  %60 = lshr i8 %28, 3, !dbg !783
  %61 = zext i8 %60 to i64, !dbg !783
  br label %80, !dbg !784

; <label>:62:                                     ; preds = %57
  %63 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !785
  %64 = load i8, i8* %63, align 1, !dbg !786, !tbaa !448
  %65 = zext i8 %64 to i64, !dbg !785
  br label %80, !dbg !787

; <label>:66:                                     ; preds = %57
  %67 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !788
  %68 = bitcast i8* %67 to i16*, !dbg !789
  %69 = load i16, i16* %68, align 1, !dbg !789, !tbaa !757
  %70 = zext i16 %69 to i64, !dbg !788
  br label %80, !dbg !790

; <label>:71:                                     ; preds = %57
  %72 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !791
  %73 = bitcast i8* %72 to i32*, !dbg !792
  %74 = load i32, i32* %73, align 1, !dbg !792, !tbaa !762
  %75 = zext i32 %74 to i64, !dbg !791
  br label %80, !dbg !793

; <label>:76:                                     ; preds = %57
  %77 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !794
  %78 = bitcast i8* %77 to i64*, !dbg !795
  %79 = load i64, i64* %78, align 1, !dbg !795, !tbaa !720
  br label %80, !dbg !796

; <label>:80:                                     ; preds = %57, %59, %62, %66, %71, %76
  %81 = phi i64 [ %79, %76 ], [ %75, %71 ], [ %70, %66 ], [ %65, %62 ], [ %61, %59 ], [ 0, %57 ], !dbg !797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !799
  %82 = add i64 %81, %58, !dbg !800
  %83 = icmp sgt i64 %82, 536870912, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !812
  br i1 %83, label %84, label %85, !dbg !812

; <label>:84:                                     ; preds = %80
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0)) #5, !dbg !813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  br label %314, !dbg !818

; <label>:85:                                     ; preds = %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !823
  switch i3 %29, label %107 [
    i3 0, label %86
    i3 1, label %89
    i3 2, label %93
    i3 3, label %98
    i3 -4, label %103
  ], !dbg !823

; <label>:86:                                     ; preds = %85
  %87 = lshr i8 %28, 3, !dbg !824
  %88 = zext i8 %87 to i64, !dbg !824
  br label %107, !dbg !825

; <label>:89:                                     ; preds = %85
  %90 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !826
  %91 = load i8, i8* %90, align 1, !dbg !827, !tbaa !448
  %92 = zext i8 %91 to i64, !dbg !826
  br label %107, !dbg !828

; <label>:93:                                     ; preds = %85
  %94 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !829
  %95 = bitcast i8* %94 to i16*, !dbg !830
  %96 = load i16, i16* %95, align 1, !dbg !830, !tbaa !757
  %97 = zext i16 %96 to i64, !dbg !829
  br label %107, !dbg !831

; <label>:98:                                     ; preds = %85
  %99 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !832
  %100 = bitcast i8* %99 to i32*, !dbg !833
  %101 = load i32, i32* %100, align 1, !dbg !833, !tbaa !762
  %102 = zext i32 %101 to i64, !dbg !832
  br label %107, !dbg !834

; <label>:103:                                    ; preds = %85
  %104 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !835
  %105 = bitcast i8* %104 to i64*, !dbg !836
  %106 = load i64, i64* %105, align 1, !dbg !836, !tbaa !720
  br label %107, !dbg !837

; <label>:107:                                    ; preds = %85, %86, %89, %93, %98, %103
  %108 = phi i64 [ %106, %103 ], [ %102, %98 ], [ %97, %93 ], [ %92, %89 ], [ %88, %86 ], [ 0, %85 ], !dbg !838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !840
  %109 = add i64 %108, %58, !dbg !841
  %110 = call i8* @sdsnewlen(i8* null, i64 %109) #5, !dbg !842
  %111 = call %struct.redisObject* @createObject(i32 0, i8* %110) #5, !dbg !843
  %112 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !844, !tbaa !363
  %113 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !845, !tbaa !434
  %114 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %113, i64 1, !dbg !846
  %115 = load %struct.redisObject*, %struct.redisObject** %114, align 8, !dbg !846, !tbaa !436
  call void @dbAdd(%struct.redisDb* %112, %struct.redisObject* %115, %struct.redisObject* %111) #5, !dbg !847
  br label %185, !dbg !848

; <label>:116:                                    ; preds = %18
  %117 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %24, i32 0) #5, !dbg !849
  %118 = icmp eq i32 %117, 0, !dbg !849
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !851
  br i1 %118, label %119, label %178, !dbg !851

; <label>:119:                                    ; preds = %116
  %120 = call i64 @stringObjectLen(%struct.redisObject* nonnull %24) #5, !dbg !852
  %121 = getelementptr inbounds i8, i8* %9, i64 -1, !dbg !857
  %122 = load i8, i8* %121, align 1, !dbg !857, !tbaa !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !859
  %123 = trunc i8 %122 to i3, !dbg !859
  switch i3 %123, label %145 [
    i3 0, label %124
    i3 1, label %127
    i3 2, label %131
    i3 3, label %136
    i3 -4, label %141
  ], !dbg !859

; <label>:124:                                    ; preds = %119
  %125 = lshr i8 %122, 3, !dbg !860
  %126 = zext i8 %125 to i64, !dbg !860
  br label %146, !dbg !861

; <label>:127:                                    ; preds = %119
  %128 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !862
  %129 = load i8, i8* %128, align 1, !dbg !863, !tbaa !448
  %130 = zext i8 %129 to i64, !dbg !862
  br label %146, !dbg !864

; <label>:131:                                    ; preds = %119
  %132 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !865
  %133 = bitcast i8* %132 to i16*, !dbg !866
  %134 = load i16, i16* %133, align 1, !dbg !866, !tbaa !757
  %135 = zext i16 %134 to i64, !dbg !865
  br label %146, !dbg !867

; <label>:136:                                    ; preds = %119
  %137 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !868
  %138 = bitcast i8* %137 to i32*, !dbg !869
  %139 = load i32, i32* %138, align 1, !dbg !869, !tbaa !762
  %140 = zext i32 %139 to i64, !dbg !868
  br label %146, !dbg !870

; <label>:141:                                    ; preds = %119
  %142 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !871
  %143 = bitcast i8* %142 to i64*, !dbg !872
  %144 = load i64, i64* %143, align 1, !dbg !872, !tbaa !720
  br label %146, !dbg !873

; <label>:145:                                    ; preds = %119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !876
  br label %149, !dbg !876

; <label>:146:                                    ; preds = %124, %127, %131, %136, %141
  %147 = phi i64 [ %144, %141 ], [ %140, %136 ], [ %135, %131 ], [ %130, %127 ], [ %126, %124 ], !dbg !877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  %148 = icmp eq i64 %147, 0, !dbg !879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !876
  br i1 %148, label %149, label %150, !dbg !876

; <label>:149:                                    ; preds = %145, %146
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %120) #5, !dbg !880
  br label %178, !dbg !882

; <label>:150:                                    ; preds = %146
  %151 = load i64, i64* %2, align 8, !dbg !883, !tbaa !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  switch i3 %123, label %173 [
    i3 0, label %152
    i3 1, label %155
    i3 2, label %159
    i3 3, label %164
    i3 -4, label %169
  ], !dbg !888

; <label>:152:                                    ; preds = %150
  %153 = lshr i8 %122, 3, !dbg !889
  %154 = zext i8 %153 to i64, !dbg !889
  br label %173, !dbg !890

; <label>:155:                                    ; preds = %150
  %156 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !891
  %157 = load i8, i8* %156, align 1, !dbg !892, !tbaa !448
  %158 = zext i8 %157 to i64, !dbg !891
  br label %173, !dbg !893

; <label>:159:                                    ; preds = %150
  %160 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !894
  %161 = bitcast i8* %160 to i16*, !dbg !895
  %162 = load i16, i16* %161, align 1, !dbg !895, !tbaa !757
  %163 = zext i16 %162 to i64, !dbg !894
  br label %173, !dbg !896

; <label>:164:                                    ; preds = %150
  %165 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !897
  %166 = bitcast i8* %165 to i32*, !dbg !898
  %167 = load i32, i32* %166, align 1, !dbg !898, !tbaa !762
  %168 = zext i32 %167 to i64, !dbg !897
  br label %173, !dbg !899

; <label>:169:                                    ; preds = %150
  %170 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !900
  %171 = bitcast i8* %170 to i64*, !dbg !901
  %172 = load i64, i64* %171, align 1, !dbg !901, !tbaa !720
  br label %173, !dbg !902

; <label>:173:                                    ; preds = %150, %152, %155, %159, %164, %169
  %174 = phi i64 [ %172, %169 ], [ %168, %164 ], [ %163, %159 ], [ %158, %155 ], [ %154, %152 ], [ 0, %150 ], !dbg !903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !905
  %175 = add i64 %174, %151, !dbg !906
  %176 = icmp sgt i64 %175, 536870912, !dbg !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !911
  br i1 %176, label %177, label %179, !dbg !911

; <label>:177:                                    ; preds = %173
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0)) #5, !dbg !912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !914
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !915
  br label %178, !dbg !916

; <label>:178:                                    ; preds = %116, %149, %177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !904
  br label %314

; <label>:179:                                    ; preds = %173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !917
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !914
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !915
  %180 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !918, !tbaa !363
  %181 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !919, !tbaa !434
  %182 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %181, i64 1, !dbg !920
  %183 = load %struct.redisObject*, %struct.redisObject** %182, align 8, !dbg !920, !tbaa !436
  %184 = call %struct.redisObject* @dbUnshareStringValue(%struct.redisDb* %180, %struct.redisObject* %183, %struct.redisObject* nonnull %24) #5, !dbg !921
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !922
  br label %185

; <label>:185:                                    ; preds = %179, %107
  %186 = phi i8* [ %121, %179 ], [ %27, %107 ], !dbg !923
  %187 = phi %struct.redisObject* [ %184, %179 ], [ %111, %107 ], !dbg !926
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %188 = load i8, i8* %186, align 1, !dbg !923, !tbaa !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !929
  %189 = trunc i8 %188 to i3, !dbg !929
  switch i3 %189, label %211 [
    i3 0, label %190
    i3 1, label %193
    i3 2, label %197
    i3 3, label %202
    i3 -4, label %207
  ], !dbg !929

; <label>:190:                                    ; preds = %185
  %191 = lshr i8 %188, 3, !dbg !930
  %192 = zext i8 %191 to i64, !dbg !930
  br label %212, !dbg !931

; <label>:193:                                    ; preds = %185
  %194 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !932
  %195 = load i8, i8* %194, align 1, !dbg !933, !tbaa !448
  %196 = zext i8 %195 to i64, !dbg !932
  br label %212, !dbg !934

; <label>:197:                                    ; preds = %185
  %198 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !935
  %199 = bitcast i8* %198 to i16*, !dbg !936
  %200 = load i16, i16* %199, align 1, !dbg !936, !tbaa !757
  %201 = zext i16 %200 to i64, !dbg !935
  br label %212, !dbg !937

; <label>:202:                                    ; preds = %185
  %203 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !938
  %204 = bitcast i8* %203 to i32*, !dbg !939
  %205 = load i32, i32* %204, align 1, !dbg !939, !tbaa !762
  %206 = zext i32 %205 to i64, !dbg !938
  br label %212, !dbg !940

; <label>:207:                                    ; preds = %185
  %208 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !941
  %209 = bitcast i8* %208 to i64*, !dbg !942
  %210 = load i64, i64* %209, align 1, !dbg !942, !tbaa !720
  br label %212, !dbg !943

; <label>:211:                                    ; preds = %185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !945
  br label %284, !dbg !946

; <label>:212:                                    ; preds = %190, %193, %197, %202, %207
  %213 = phi i64 [ %210, %207 ], [ %206, %202 ], [ %201, %197 ], [ %196, %193 ], [ %192, %190 ], !dbg !947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !945
  %214 = icmp eq i64 %213, 0, !dbg !949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  br i1 %214, label %285, label %215, !dbg !946

; <label>:215:                                    ; preds = %212
  %216 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %187, i64 0, i32 2, !dbg !950
  %217 = load i8*, i8** %216, align 8, !dbg !950, !tbaa !438
  %218 = load i64, i64* %2, align 8, !dbg !952, !tbaa !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !956
  switch i3 %189, label %240 [
    i3 0, label %219
    i3 1, label %222
    i3 2, label %226
    i3 3, label %231
    i3 -4, label %236
  ], !dbg !956

; <label>:219:                                    ; preds = %215
  %220 = lshr i8 %188, 3, !dbg !957
  %221 = zext i8 %220 to i64, !dbg !957
  br label %240, !dbg !958

; <label>:222:                                    ; preds = %215
  %223 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !959
  %224 = load i8, i8* %223, align 1, !dbg !960, !tbaa !448
  %225 = zext i8 %224 to i64, !dbg !959
  br label %240, !dbg !961

; <label>:226:                                    ; preds = %215
  %227 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !962
  %228 = bitcast i8* %227 to i16*, !dbg !963
  %229 = load i16, i16* %228, align 1, !dbg !963, !tbaa !757
  %230 = zext i16 %229 to i64, !dbg !962
  br label %240, !dbg !964

; <label>:231:                                    ; preds = %215
  %232 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !965
  %233 = bitcast i8* %232 to i32*, !dbg !966
  %234 = load i32, i32* %233, align 1, !dbg !966, !tbaa !762
  %235 = zext i32 %234 to i64, !dbg !965
  br label %240, !dbg !967

; <label>:236:                                    ; preds = %215
  %237 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !968
  %238 = bitcast i8* %237 to i64*, !dbg !969
  %239 = load i64, i64* %238, align 1, !dbg !969, !tbaa !720
  br label %240, !dbg !970

; <label>:240:                                    ; preds = %215, %219, %222, %226, %231, %236
  %241 = phi i64 [ %239, %236 ], [ %235, %231 ], [ %230, %226 ], [ %225, %222 ], [ %221, %219 ], [ 0, %215 ], !dbg !971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !973
  %242 = add i64 %241, %218, !dbg !974
  %243 = call i8* @sdsgrowzero(i8* %217, i64 %242) #5, !dbg !975
  store i8* %243, i8** %216, align 8, !dbg !976, !tbaa !438
  %244 = load i64, i64* %2, align 8, !dbg !977, !tbaa !720
  %245 = getelementptr inbounds i8, i8* %243, i64 %244, !dbg !978
  %246 = load i8, i8* %186, align 1, !dbg !981, !tbaa !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !983
  %247 = trunc i8 %246 to i3, !dbg !983
  switch i3 %247, label %269 [
    i3 0, label %248
    i3 1, label %251
    i3 2, label %255
    i3 3, label %260
    i3 -4, label %265
  ], !dbg !983

; <label>:248:                                    ; preds = %240
  %249 = lshr i8 %246, 3, !dbg !984
  %250 = zext i8 %249 to i64, !dbg !984
  br label %269, !dbg !985

; <label>:251:                                    ; preds = %240
  %252 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !986
  %253 = load i8, i8* %252, align 1, !dbg !987, !tbaa !448
  %254 = zext i8 %253 to i64, !dbg !986
  br label %269, !dbg !988

; <label>:255:                                    ; preds = %240
  %256 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !989
  %257 = bitcast i8* %256 to i16*, !dbg !990
  %258 = load i16, i16* %257, align 1, !dbg !990, !tbaa !757
  %259 = zext i16 %258 to i64, !dbg !989
  br label %269, !dbg !991

; <label>:260:                                    ; preds = %240
  %261 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !992
  %262 = bitcast i8* %261 to i32*, !dbg !993
  %263 = load i32, i32* %262, align 1, !dbg !993, !tbaa !762
  %264 = zext i32 %263 to i64, !dbg !992
  br label %269, !dbg !994

; <label>:265:                                    ; preds = %240
  %266 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !995
  %267 = bitcast i8* %266 to i64*, !dbg !996
  %268 = load i64, i64* %267, align 1, !dbg !996, !tbaa !720
  br label %269, !dbg !997

; <label>:269:                                    ; preds = %240, %248, %251, %255, %260, %265
  %270 = phi i64 [ %268, %265 ], [ %264, %260 ], [ %259, %255 ], [ %254, %251 ], [ %250, %248 ], [ 0, %240 ], !dbg !998
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !999
  %271 = call i8* @memcpy(i8* %245, i8* nonnull %9, i64 %270) #5, !dbg !1000
  %272 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !1001, !tbaa !363
  %273 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1002, !tbaa !434
  %274 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %273, i64 1, !dbg !1003
  %275 = load %struct.redisObject*, %struct.redisObject** %274, align 8, !dbg !1003, !tbaa !436
  call void @signalModifiedKey(%struct.redisDb* %272, %struct.redisObject* %275) #5, !dbg !1004
  %276 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1005, !tbaa !434
  %277 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %276, i64 1, !dbg !1006
  %278 = load %struct.redisObject*, %struct.redisObject** %277, align 8, !dbg !1006, !tbaa !436
  %279 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !1007, !tbaa !363
  %280 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %279, i64 0, i32 5, !dbg !1008
  %281 = load i32, i32* %280, align 8, !dbg !1008, !tbaa !397
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.redisObject* %278, i32 %281) #5, !dbg !1009
  %282 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1010, !tbaa !382
  %283 = add nsw i64 %282, 1, !dbg !1010
  store i64 %283, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1010, !tbaa !382
  br label %284, !dbg !1011

; <label>:284:                                    ; preds = %269, %211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !972
  br label %285, !dbg !1012

; <label>:285:                                    ; preds = %284, %212
  %286 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %187, i64 0, i32 2, !dbg !1012
  %287 = load i8*, i8** %286, align 8, !dbg !1012, !tbaa !438
  %288 = getelementptr inbounds i8, i8* %287, i64 -1, !dbg !1015
  %289 = load i8, i8* %288, align 1, !dbg !1015, !tbaa !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  %290 = trunc i8 %289 to i3, !dbg !1017
  switch i3 %290, label %312 [
    i3 0, label %291
    i3 1, label %294
    i3 2, label %298
    i3 3, label %303
    i3 -4, label %308
  ], !dbg !1017

; <label>:291:                                    ; preds = %285
  %292 = lshr i8 %289, 3, !dbg !1018
  %293 = zext i8 %292 to i64, !dbg !1018
  br label %312, !dbg !1019

; <label>:294:                                    ; preds = %285
  %295 = getelementptr inbounds i8, i8* %287, i64 -3, !dbg !1020
  %296 = load i8, i8* %295, align 1, !dbg !1021, !tbaa !448
  %297 = zext i8 %296 to i64, !dbg !1020
  br label %312, !dbg !1022

; <label>:298:                                    ; preds = %285
  %299 = getelementptr inbounds i8, i8* %287, i64 -5, !dbg !1023
  %300 = bitcast i8* %299 to i16*, !dbg !1024
  %301 = load i16, i16* %300, align 1, !dbg !1024, !tbaa !757
  %302 = zext i16 %301 to i64, !dbg !1023
  br label %312, !dbg !1025

; <label>:303:                                    ; preds = %285
  %304 = getelementptr inbounds i8, i8* %287, i64 -9, !dbg !1026
  %305 = bitcast i8* %304 to i32*, !dbg !1027
  %306 = load i32, i32* %305, align 1, !dbg !1027, !tbaa !762
  %307 = zext i32 %306 to i64, !dbg !1026
  br label %312, !dbg !1028

; <label>:308:                                    ; preds = %285
  %309 = getelementptr inbounds i8, i8* %287, i64 -17, !dbg !1029
  %310 = bitcast i8* %309 to i64*, !dbg !1030
  %311 = load i64, i64* %310, align 1, !dbg !1030, !tbaa !720
  br label %312, !dbg !1031

; <label>:312:                                    ; preds = %285, %291, %294, %298, %303, %308
  %313 = phi i64 [ %311, %308 ], [ %307, %303 ], [ %302, %298 ], [ %297, %294 ], [ %293, %291 ], [ 0, %285 ], !dbg !1032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1033
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %313) #5, !dbg !1034
  br label %314, !dbg !1035

; <label>:314:                                    ; preds = %1, %178, %312, %84, %55, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4, !dbg !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  ret void, !dbg !1035
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
define dso_local void @getrangeCommand(%struct.client*) local_unnamed_addr #0 !dbg !1036 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [32 x i8], align 16
  %5 = bitcast i64* %2 to i8*, !dbg !1049
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4, !dbg !1049
  %6 = bitcast i64* %3 to i8*, !dbg !1049
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4, !dbg !1049
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0, !dbg !1050
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #4, !dbg !1050
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1052
  %9 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1052, !tbaa !434
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 2, !dbg !1054
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !1054, !tbaa !436
  %12 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %11, i64* nonnull %2, i8* null) #5, !dbg !1056
  %13 = icmp eq i32 %12, 0, !dbg !1057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1058
  br i1 %13, label %14, label %114, !dbg !1058

; <label>:14:                                     ; preds = %1
  %15 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1059, !tbaa !434
  %16 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 3, !dbg !1061
  %17 = load %struct.redisObject*, %struct.redisObject** %16, align 8, !dbg !1061, !tbaa !436
  %18 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %17, i64* nonnull %3, i8* null) #5, !dbg !1063
  %19 = icmp eq i32 %18, 0, !dbg !1064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1065
  br i1 %19, label %20, label %114, !dbg !1065

; <label>:20:                                     ; preds = %14
  %21 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1066, !tbaa !434
  %22 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %21, i64 1, !dbg !1068
  %23 = load %struct.redisObject*, %struct.redisObject** %22, align 8, !dbg !1068, !tbaa !436
  %24 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 3), align 8, !dbg !1069, !tbaa !1070
  %25 = call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* nonnull %0, %struct.redisObject* %23, %struct.redisObject* %24) #5, !dbg !1071
  %26 = icmp eq %struct.redisObject* %25, null, !dbg !1073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1074
  br i1 %26, label %114, label %27, !dbg !1074

; <label>:27:                                     ; preds = %20
  %28 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %25, i32 0) #5, !dbg !1075
  %29 = icmp eq i32 %28, 0, !dbg !1075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1076
  br i1 %29, label %30, label %114, !dbg !1076

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %25, i64 0, i32 0, !dbg !1077
  %32 = load i32, i32* %31, align 8, !dbg !1077
  %33 = and i32 %32, 240, !dbg !1077
  %34 = icmp eq i32 %33, 16, !dbg !1079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1080
  %35 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %25, i64 0, i32 2, !dbg !1081
  br i1 %34, label %36, label %41, !dbg !1080

; <label>:36:                                     ; preds = %30
  %37 = bitcast i8** %35 to i64*, !dbg !1084
  %38 = load i64, i64* %37, align 8, !dbg !1084, !tbaa !438
  %39 = call i32 @ll2string(i8* nonnull %7, i64 32, i64 %38) #5, !dbg !1086
  %40 = sext i32 %39 to i64, !dbg !1086
  br label %69, !dbg !1088

; <label>:41:                                     ; preds = %30
  %42 = load i8*, i8** %35, align 8, !dbg !1089, !tbaa !438
  %43 = getelementptr inbounds i8, i8* %42, i64 -1, !dbg !1092
  %44 = load i8, i8* %43, align 1, !dbg !1092, !tbaa !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1094
  %45 = trunc i8 %44 to i3, !dbg !1094
  switch i3 %45, label %67 [
    i3 0, label %46
    i3 1, label %49
    i3 2, label %53
    i3 3, label %58
    i3 -4, label %63
  ], !dbg !1094

; <label>:46:                                     ; preds = %41
  %47 = lshr i8 %44, 3, !dbg !1095
  %48 = zext i8 %47 to i64, !dbg !1095
  br label %67, !dbg !1096

; <label>:49:                                     ; preds = %41
  %50 = getelementptr inbounds i8, i8* %42, i64 -3, !dbg !1097
  %51 = load i8, i8* %50, align 1, !dbg !1098, !tbaa !448
  %52 = zext i8 %51 to i64, !dbg !1097
  br label %67, !dbg !1099

; <label>:53:                                     ; preds = %41
  %54 = getelementptr inbounds i8, i8* %42, i64 -5, !dbg !1100
  %55 = bitcast i8* %54 to i16*, !dbg !1101
  %56 = load i16, i16* %55, align 1, !dbg !1101, !tbaa !757
  %57 = zext i16 %56 to i64, !dbg !1100
  br label %67, !dbg !1102

; <label>:58:                                     ; preds = %41
  %59 = getelementptr inbounds i8, i8* %42, i64 -9, !dbg !1103
  %60 = bitcast i8* %59 to i32*, !dbg !1104
  %61 = load i32, i32* %60, align 1, !dbg !1104, !tbaa !762
  %62 = zext i32 %61 to i64, !dbg !1103
  br label %67, !dbg !1105

; <label>:63:                                     ; preds = %41
  %64 = getelementptr inbounds i8, i8* %42, i64 -17, !dbg !1106
  %65 = bitcast i8* %64 to i64*, !dbg !1107
  %66 = load i64, i64* %65, align 1, !dbg !1107, !tbaa !720
  br label %67, !dbg !1108

; <label>:67:                                     ; preds = %41, %46, %49, %53, %58, %63
  %68 = phi i64 [ %66, %63 ], [ %62, %58 ], [ %57, %53 ], [ %52, %49 ], [ %48, %46 ], [ 0, %41 ], !dbg !1109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1081
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  br label %69

; <label>:69:                                     ; preds = %67, %36
  %70 = phi i8* [ %7, %36 ], [ %42, %67 ], !dbg !1081
  %71 = phi i64 [ %40, %36 ], [ %68, %67 ], !dbg !1081
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %72 = load i64, i64* %2, align 8, !dbg !1111, !tbaa !324
  %73 = load i64, i64* %3, align 8, !dbg !1113
  %74 = and i64 %73, %72, !dbg !1114
  %75 = icmp slt i64 %74, 0, !dbg !1114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1114
  br i1 %75, label %76, label %80, !dbg !1114

; <label>:76:                                     ; preds = %69
  %77 = icmp sgt i64 %72, %73, !dbg !1115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1116
  br i1 %77, label %78, label %80, !dbg !1116

; <label>:78:                                     ; preds = %76
  %79 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 3), align 8, !dbg !1117, !tbaa !1070
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %79) #5, !dbg !1119
  br label %114, !dbg !1120

; <label>:80:                                     ; preds = %76, %69
  %81 = icmp slt i64 %72, 0, !dbg !1121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1123
  br i1 %81, label %82, label %84, !dbg !1123

; <label>:82:                                     ; preds = %80
  %83 = add i64 %72, %71, !dbg !1124
  store i64 %83, i64* %2, align 8, !dbg !1125, !tbaa !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1126
  br label %84, !dbg !1126

; <label>:84:                                     ; preds = %82, %80
  %85 = phi i64 [ %83, %82 ], [ %72, %80 ]
  %86 = icmp slt i64 %73, 0, !dbg !1127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1129
  br i1 %86, label %87, label %89, !dbg !1129

; <label>:87:                                     ; preds = %84
  %88 = add i64 %73, %71, !dbg !1130
  store i64 %88, i64* %3, align 8, !dbg !1131, !tbaa !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1132
  br label %89, !dbg !1132

; <label>:89:                                     ; preds = %87, %84
  %90 = phi i64 [ %88, %87 ], [ %73, %84 ]
  %91 = icmp slt i64 %85, 0, !dbg !1133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1135
  br i1 %91, label %92, label %93, !dbg !1135

; <label>:92:                                     ; preds = %89
  store i64 0, i64* %2, align 8, !dbg !1136, !tbaa !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1137
  br label %93, !dbg !1137

; <label>:93:                                     ; preds = %92, %89
  %94 = phi i64 [ 0, %92 ], [ %85, %89 ]
  %95 = icmp slt i64 %90, 0, !dbg !1138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1140
  br i1 %95, label %96, label %97, !dbg !1140

; <label>:96:                                     ; preds = %93
  store i64 0, i64* %3, align 8, !dbg !1141, !tbaa !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1142
  br label %97, !dbg !1142

; <label>:97:                                     ; preds = %96, %93
  %98 = phi i64 [ 0, %96 ], [ %90, %93 ], !dbg !1143
  %99 = icmp ult i64 %98, %71, !dbg !1145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1146
  br i1 %99, label %102, label %100, !dbg !1146

; <label>:100:                                    ; preds = %97
  %101 = add i64 %71, -1, !dbg !1147
  store i64 %101, i64* %3, align 8, !dbg !1148, !tbaa !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1149
  br label %102, !dbg !1149

; <label>:102:                                    ; preds = %97, %100
  %103 = phi i64 [ %98, %97 ], [ %101, %100 ], !dbg !1150
  %104 = icmp slt i64 %103, %94, !dbg !1152
  %105 = icmp eq i64 %71, 0, !dbg !1153
  %106 = or i1 %105, %104, !dbg !1154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1154
  br i1 %106, label %107, label %109, !dbg !1154

; <label>:107:                                    ; preds = %102
  %108 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 3), align 8, !dbg !1155, !tbaa !1070
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %108) #5, !dbg !1157
  br label %113, !dbg !1158

; <label>:109:                                    ; preds = %102
  %110 = getelementptr inbounds i8, i8* %70, i64 %94, !dbg !1159
  %111 = sub i64 1, %94, !dbg !1161
  %112 = add i64 %111, %103, !dbg !1162
  call void @addReplyBulkCBuffer(%struct.client* nonnull %0, i8* %110, i64 %112) #5, !dbg !1163
  br label %113

; <label>:113:                                    ; preds = %109, %107
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %114, !dbg !1164

; <label>:114:                                    ; preds = %20, %27, %14, %1, %113, %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1165
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #4, !dbg !1164
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4, !dbg !1164
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4, !dbg !1164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1164
  ret void, !dbg !1164
}

; Function Attrs: noredzone
declare dso_local i32 @ll2string(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mgetCommand(%struct.client*) local_unnamed_addr #0 !dbg !1166 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1175
  %3 = load i32, i32* %2, align 8, !dbg !1175, !tbaa !430
  %4 = add nsw i32 %3, -1, !dbg !1176
  %5 = sext i32 %4 to i64, !dbg !1177
  tail call void @addReplyMultiBulkLen(%struct.client* %0, i64 %5) #5, !dbg !1178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1180
  %6 = load i32, i32* %2, align 8, !dbg !1181, !tbaa !430
  %7 = icmp sgt i32 %6, 1, !dbg !1182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1183
  br i1 %7, label %8, label %34, !dbg !1183

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %11, !dbg !1183

; <label>:11:                                     ; preds = %8, %29
  %12 = phi i64 [ 1, %8 ], [ %30, %29 ]
  %13 = load %struct.redisDb*, %struct.redisDb** %9, align 8, !dbg !1184, !tbaa !363
  %14 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1185, !tbaa !434
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 %12, !dbg !1186
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !1186, !tbaa !436
  %17 = tail call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %13, %struct.redisObject* %16) #5, !dbg !1187
  %18 = icmp eq %struct.redisObject* %17, null, !dbg !1189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1191
  br i1 %18, label %19, label %21, !dbg !1191

; <label>:19:                                     ; preds = %11
  %20 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1192, !tbaa !609
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %20) #5, !dbg !1194
  br label %29, !dbg !1195

; <label>:21:                                     ; preds = %11
  %22 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i64 0, i32 0, !dbg !1196
  %23 = load i32, i32* %22, align 8, !dbg !1196
  %24 = and i32 %23, 15, !dbg !1196
  %25 = icmp eq i32 %24, 0, !dbg !1199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1200
  br i1 %25, label %28, label %26, !dbg !1200

; <label>:26:                                     ; preds = %21
  %27 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1201, !tbaa !609
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %27) #5, !dbg !1203
  br label %29, !dbg !1204

; <label>:28:                                     ; preds = %21
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* nonnull %17) #5, !dbg !1205
  br label %29

; <label>:29:                                     ; preds = %26, %28, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %30 = add nuw nsw i64 %12, 1, !dbg !1207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1208
  %31 = load i32, i32* %2, align 8, !dbg !1181, !tbaa !430
  %32 = sext i32 %31 to i64, !dbg !1182
  %33 = icmp slt i64 %30, %32, !dbg !1182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1183
  br i1 %33, label %11, label %34, !dbg !1183, !llvm.loop !1209

; <label>:34:                                     ; preds = %29, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1211
  ret void, !dbg !1211
}

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyRead(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @msetGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !1212 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1221
  %4 = load i32, i32* %3, align 8, !dbg !1221, !tbaa !430
  %5 = and i32 %4, 1, !dbg !1223
  %6 = icmp eq i32 %5, 0, !dbg !1223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1224
  br i1 %6, label %7, label %8, !dbg !1224

; <label>:7:                                      ; preds = %2
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1225
  br label %72, !dbg !1227

; <label>:8:                                      ; preds = %2
  %9 = icmp ne i32 %1, 0, !dbg !1228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1230
  br i1 %9, label %10, label %31, !dbg !1230

; <label>:10:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1232
  %11 = icmp sgt i32 %4, 1, !dbg !1235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1237
  br i1 %11, label %13, label %12, !dbg !1237

; <label>:12:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1240
  br label %62, !dbg !1240

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %16, !dbg !1237

; <label>:16:                                     ; preds = %13, %26
  %17 = phi i64 [ 1, %13 ], [ %27, %26 ]
  %18 = load %struct.redisDb*, %struct.redisDb** %14, align 8, !dbg !1241, !tbaa !363
  %19 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !1244, !tbaa !434
  %20 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 %17, !dbg !1245
  %21 = load %struct.redisObject*, %struct.redisObject** %20, align 8, !dbg !1245, !tbaa !436
  %22 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %18, %struct.redisObject* %21) #5, !dbg !1246
  %23 = icmp eq %struct.redisObject* %22, null, !dbg !1247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1248
  br i1 %23, label %26, label %24, !dbg !1248

; <label>:24:                                     ; preds = %16
  %25 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1249, !tbaa !563
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %25) #5, !dbg !1251
  br label %72, !dbg !1252

; <label>:26:                                     ; preds = %16
  %27 = add nuw i64 %17, 2, !dbg !1253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1254
  %28 = load i32, i32* %3, align 8, !dbg !1255, !tbaa !430
  %29 = trunc i64 %27 to i32, !dbg !1235
  %30 = icmp sgt i32 %28, %29, !dbg !1235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1237
  br i1 %30, label %16, label %31, !dbg !1237, !llvm.loop !1256

; <label>:31:                                     ; preds = %26, %8
  %32 = phi i32 [ %4, %8 ], [ %28, %26 ], !dbg !1258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1238
  %33 = icmp sgt i32 %32, 1, !dbg !1260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1240
  br i1 %33, label %34, label %62, !dbg !1240

; <label>:34:                                     ; preds = %31
  %35 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %36 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  br label %37, !dbg !1240

; <label>:37:                                     ; preds = %34, %37
  %38 = phi i64 [ 1, %34 ], [ %58, %37 ]
  %39 = load %struct.redisObject**, %struct.redisObject*** %35, align 8, !dbg !1261, !tbaa !434
  %40 = add nuw nsw i64 %38, 1, !dbg !1263
  %41 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %39, i64 %40, !dbg !1264
  %42 = load %struct.redisObject*, %struct.redisObject** %41, align 8, !dbg !1264, !tbaa !436
  %43 = tail call %struct.redisObject* @tryObjectEncoding(%struct.redisObject* %42) #5, !dbg !1265
  %44 = load %struct.redisObject**, %struct.redisObject*** %35, align 8, !dbg !1266, !tbaa !434
  %45 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %44, i64 %40, !dbg !1267
  store %struct.redisObject* %43, %struct.redisObject** %45, align 8, !dbg !1268, !tbaa !436
  %46 = load %struct.redisDb*, %struct.redisDb** %36, align 8, !dbg !1269, !tbaa !363
  %47 = load %struct.redisObject**, %struct.redisObject*** %35, align 8, !dbg !1270, !tbaa !434
  %48 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %47, i64 %38, !dbg !1271
  %49 = load %struct.redisObject*, %struct.redisObject** %48, align 8, !dbg !1271, !tbaa !436
  %50 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %47, i64 %40, !dbg !1272
  %51 = load %struct.redisObject*, %struct.redisObject** %50, align 8, !dbg !1272, !tbaa !436
  tail call void @setKey(%struct.redisDb* %46, %struct.redisObject* %49, %struct.redisObject* %51) #5, !dbg !1273
  %52 = load %struct.redisObject**, %struct.redisObject*** %35, align 8, !dbg !1274, !tbaa !434
  %53 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %52, i64 %38, !dbg !1275
  %54 = load %struct.redisObject*, %struct.redisObject** %53, align 8, !dbg !1275, !tbaa !436
  %55 = load %struct.redisDb*, %struct.redisDb** %36, align 8, !dbg !1276, !tbaa !363
  %56 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %55, i64 0, i32 5, !dbg !1277
  %57 = load i32, i32* %56, align 8, !dbg !1277, !tbaa !397
  tail call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.redisObject* %54, i32 %57) #5, !dbg !1278
  %58 = add nuw i64 %38, 2, !dbg !1279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1280
  %59 = load i32, i32* %3, align 8, !dbg !1258, !tbaa !430
  %60 = trunc i64 %58 to i32, !dbg !1260
  %61 = icmp sgt i32 %59, %60, !dbg !1260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1240
  br i1 %61, label %37, label %62, !dbg !1240, !llvm.loop !1281

; <label>:62:                                     ; preds = %37, %12, %31
  %63 = phi i32 [ %32, %31 ], [ %4, %12 ], [ %59, %37 ], !dbg !1258
  %64 = add nsw i32 %63, -1, !dbg !1283
  %65 = sdiv i32 %64, 2, !dbg !1284
  %66 = sext i32 %65 to i64, !dbg !1285
  %67 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1286, !tbaa !382
  %68 = add nsw i64 %67, %66, !dbg !1286
  store i64 %68, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1286, !tbaa !382
  %69 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !1287
  %70 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1288
  %71 = select i1 %9, %struct.redisObject* %69, %struct.redisObject* %70, !dbg !1289
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %71) #5, !dbg !1290
  br label %72, !dbg !1291

; <label>:72:                                     ; preds = %62, %24, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1291
  ret void, !dbg !1291
}

; Function Attrs: noredzone nounwind
define dso_local void @msetCommand(%struct.client*) local_unnamed_addr #0 !dbg !1293 {
  tail call void @msetGenericCommand(%struct.client* %0, i32 0) #6, !dbg !1297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1298
  ret void, !dbg !1298
}

; Function Attrs: noredzone nounwind
define dso_local void @msetnxCommand(%struct.client*) local_unnamed_addr #0 !dbg !1299 {
  tail call void @msetGenericCommand(%struct.client* %0, i32 1) #6, !dbg !1303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1304
  ret void, !dbg !1304
}

; Function Attrs: noredzone nounwind
define dso_local void @incrDecrCommand(%struct.client*, i64) local_unnamed_addr #0 !dbg !1305 {
  %3 = alloca i64, align 8
  %4 = bitcast i64* %3 to i8*, !dbg !1317
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4, !dbg !1317
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1318
  %6 = load %struct.redisDb*, %struct.redisDb** %5, align 8, !dbg !1318, !tbaa !363
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1319
  %8 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1319, !tbaa !434
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 1, !dbg !1320
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !1320, !tbaa !436
  %11 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %6, %struct.redisObject* %10) #5, !dbg !1321
  %12 = icmp ne %struct.redisObject* %11, null, !dbg !1323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1325
  br i1 %12, label %13, label %16, !dbg !1325

; <label>:13:                                     ; preds = %2
  %14 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %11, i32 0) #5, !dbg !1326
  %15 = icmp eq i32 %14, 0, !dbg !1326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1327
  br i1 %15, label %16, label %74, !dbg !1327

; <label>:16:                                     ; preds = %13, %2
  %17 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %11, i64* nonnull %3, i8* null) #5, !dbg !1329
  %18 = icmp eq i32 %17, 0, !dbg !1331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1332
  br i1 %18, label %19, label %74, !dbg !1332

; <label>:19:                                     ; preds = %16
  %20 = load i64, i64* %3, align 8, !dbg !1333, !tbaa !324
  %21 = and i64 %20, %1, !dbg !1335
  %22 = icmp slt i64 %21, 0, !dbg !1335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1335
  br i1 %22, label %23, label %26, !dbg !1335

; <label>:23:                                     ; preds = %19
  %24 = sub nsw i64 -9223372036854775808, %20, !dbg !1337
  %25 = icmp sgt i64 %24, %1, !dbg !1338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1339
  br i1 %25, label %33, label %26, !dbg !1339

; <label>:26:                                     ; preds = %23, %19
  %27 = icmp sgt i64 %1, 0, !dbg !1340
  %28 = icmp sgt i64 %20, 0, !dbg !1341
  %29 = and i1 %27, %28, !dbg !1342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1342
  br i1 %29, label %30, label %34, !dbg !1342

; <label>:30:                                     ; preds = %26
  %31 = sub nsw i64 9223372036854775807, %20, !dbg !1343
  %32 = icmp slt i64 %31, %1, !dbg !1344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1345
  br i1 %32, label %33, label %34, !dbg !1345

; <label>:33:                                     ; preds = %30, %23
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !1346
  br label %74, !dbg !1348

; <label>:34:                                     ; preds = %30, %26
  %35 = add nsw i64 %20, %1, !dbg !1349
  store i64 %35, i64* %3, align 8, !dbg !1349, !tbaa !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1350
  br i1 %12, label %36, label %50, !dbg !1350

; <label>:36:                                     ; preds = %34
  %37 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 1, !dbg !1352
  %38 = load i32, i32* %37, align 4, !dbg !1352, !tbaa !1353
  %39 = icmp eq i32 %38, 1, !dbg !1354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1355
  br i1 %39, label %40, label %50, !dbg !1355

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 0, !dbg !1356
  %42 = load i32, i32* %41, align 8, !dbg !1356
  %43 = and i32 %42, 240, !dbg !1356
  %44 = icmp eq i32 %43, 16, !dbg !1357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1358
  br i1 %44, label %45, label %50, !dbg !1358

; <label>:45:                                     ; preds = %40
  %46 = icmp ugt i64 %35, 9999, !dbg !1359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1359
  br i1 %46, label %47, label %50, !dbg !1359

; <label>:47:                                     ; preds = %45
  %48 = inttoptr i64 %35 to i8*, !dbg !1361
  %49 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 2, !dbg !1363
  store i8* %48, i8** %49, align 8, !dbg !1364, !tbaa !438
  br label %58, !dbg !1365

; <label>:50:                                     ; preds = %45, %40, %36, %34
  %51 = call %struct.redisObject* @createStringObjectFromLongLongForValue(i64 %35) #5, !dbg !1366
  %52 = load %struct.redisDb*, %struct.redisDb** %5, align 8, !dbg !1368, !tbaa !363
  %53 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1368, !tbaa !434
  %54 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %53, i64 1, !dbg !1368
  %55 = load %struct.redisObject*, %struct.redisObject** %54, align 8, !dbg !1368, !tbaa !436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1371
  br i1 %12, label %56, label %57, !dbg !1371

; <label>:56:                                     ; preds = %50
  call void @dbOverwrite(%struct.redisDb* %52, %struct.redisObject* %55, %struct.redisObject* %51) #5, !dbg !1372
  br label %58, !dbg !1374

; <label>:57:                                     ; preds = %50
  call void @dbAdd(%struct.redisDb* %52, %struct.redisObject* %55, %struct.redisObject* %51) #5, !dbg !1375
  br label %58

; <label>:58:                                     ; preds = %56, %57, %47
  %59 = phi %struct.redisObject* [ %11, %47 ], [ %51, %56 ], [ %51, %57 ], !dbg !1376
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %60 = load %struct.redisDb*, %struct.redisDb** %5, align 8, !dbg !1377, !tbaa !363
  %61 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1378, !tbaa !434
  %62 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %61, i64 1, !dbg !1379
  %63 = load %struct.redisObject*, %struct.redisObject** %62, align 8, !dbg !1379, !tbaa !436
  call void @signalModifiedKey(%struct.redisDb* %60, %struct.redisObject* %63) #5, !dbg !1380
  %64 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1381, !tbaa !434
  %65 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %64, i64 1, !dbg !1382
  %66 = load %struct.redisObject*, %struct.redisObject** %65, align 8, !dbg !1382, !tbaa !436
  %67 = load %struct.redisDb*, %struct.redisDb** %5, align 8, !dbg !1383, !tbaa !363
  %68 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %67, i64 0, i32 5, !dbg !1384
  %69 = load i32, i32* %68, align 8, !dbg !1384, !tbaa !397
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), %struct.redisObject* %66, i32 %69) #5, !dbg !1385
  %70 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1386, !tbaa !382
  %71 = add nsw i64 %70, 1, !dbg !1386
  store i64 %71, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1386, !tbaa !382
  %72 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 9), align 8, !dbg !1387, !tbaa !1388
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %72) #5, !dbg !1389
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %59) #5, !dbg !1390
  %73 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 0), align 8, !dbg !1391, !tbaa !1392
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %73) #5, !dbg !1393
  br label %74, !dbg !1394

; <label>:74:                                     ; preds = %16, %13, %58, %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1395
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4, !dbg !1394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1394
  ret void, !dbg !1394
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObjectFromLongLongForValue(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @dbOverwrite(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @incrCommand(%struct.client*) local_unnamed_addr #0 !dbg !1396 {
  tail call void @incrDecrCommand(%struct.client* %0, i64 1) #6, !dbg !1400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1401
  ret void, !dbg !1401
}

; Function Attrs: noredzone nounwind
define dso_local void @decrCommand(%struct.client*) local_unnamed_addr #0 !dbg !1402 {
  tail call void @incrDecrCommand(%struct.client* %0, i64 -1) #6, !dbg !1406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1407
  ret void, !dbg !1407
}

; Function Attrs: noredzone nounwind
define dso_local void @incrbyCommand(%struct.client*) local_unnamed_addr #0 !dbg !1408 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !1413
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4, !dbg !1413
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1414
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1414, !tbaa !434
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 2, !dbg !1416
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1416, !tbaa !436
  %8 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %7, i64* nonnull %2, i8* null) #5, !dbg !1418
  %9 = icmp eq i32 %8, 0, !dbg !1419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1420
  br i1 %9, label %10, label %12, !dbg !1420

; <label>:10:                                     ; preds = %1
  %11 = load i64, i64* %2, align 8, !dbg !1421, !tbaa !324
  call void @incrDecrCommand(%struct.client* nonnull %0, i64 %11) #6, !dbg !1422
  br label %12, !dbg !1423

; <label>:12:                                     ; preds = %1, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1424
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4, !dbg !1423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1423
  ret void, !dbg !1423
}

; Function Attrs: noredzone nounwind
define dso_local void @decrbyCommand(%struct.client*) local_unnamed_addr #0 !dbg !1425 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !1430
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4, !dbg !1430
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1431
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1431, !tbaa !434
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 2, !dbg !1433
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1433, !tbaa !436
  %8 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %7, i64* nonnull %2, i8* null) #5, !dbg !1435
  %9 = icmp eq i32 %8, 0, !dbg !1436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  br i1 %9, label %10, label %13, !dbg !1437

; <label>:10:                                     ; preds = %1
  %11 = load i64, i64* %2, align 8, !dbg !1438, !tbaa !324
  %12 = sub nsw i64 0, %11, !dbg !1439
  call void @incrDecrCommand(%struct.client* nonnull %0, i64 %12) #6, !dbg !1440
  br label %13, !dbg !1441

; <label>:13:                                     ; preds = %1, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1442
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4, !dbg !1441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1441
  ret void, !dbg !1441
}

; Function Attrs: noredzone nounwind
define dso_local void @incrbyfloatCommand(%struct.client*) local_unnamed_addr #0 !dbg !1443 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  %4 = bitcast x86_fp80* %2 to i8*, !dbg !1453
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #4, !dbg !1453
  %5 = bitcast x86_fp80* %3 to i8*, !dbg !1453
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #4, !dbg !1453
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1454
  %7 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1454, !tbaa !363
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1455
  %9 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1455, !tbaa !434
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 1, !dbg !1456
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !1456, !tbaa !436
  %12 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %7, %struct.redisObject* %11) #5, !dbg !1457
  %13 = icmp ne %struct.redisObject* %12, null, !dbg !1459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  br i1 %13, label %14, label %17, !dbg !1461

; <label>:14:                                     ; preds = %1
  %15 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %12, i32 0) #5, !dbg !1462
  %16 = icmp eq i32 %15, 0, !dbg !1462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1463
  br i1 %16, label %17, label %62, !dbg !1463

; <label>:17:                                     ; preds = %14, %1
  %18 = call i32 @getLongDoubleFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %12, x86_fp80* nonnull %3, i8* null) #5, !dbg !1465
  %19 = icmp eq i32 %18, 0, !dbg !1467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1468
  br i1 %19, label %20, label %62, !dbg !1468

; <label>:20:                                     ; preds = %17
  %21 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1469, !tbaa !434
  %22 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %21, i64 2, !dbg !1470
  %23 = load %struct.redisObject*, %struct.redisObject** %22, align 8, !dbg !1470, !tbaa !436
  %24 = call i32 @getLongDoubleFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %23, x86_fp80* nonnull %2, i8* null) #5, !dbg !1472
  %25 = icmp eq i32 %24, 0, !dbg !1473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1474
  br i1 %25, label %26, label %62, !dbg !1474

; <label>:26:                                     ; preds = %20
  %27 = load x86_fp80, x86_fp80* %2, align 16, !dbg !1475, !tbaa !1476
  %28 = load x86_fp80, x86_fp80* %3, align 16, !dbg !1478, !tbaa !1476
  %29 = fadd x86_fp80 %27, %28, !dbg !1478
  store x86_fp80 %29, x86_fp80* %3, align 16, !dbg !1478, !tbaa !1476
  %30 = fptrunc x86_fp80 %29 to double, !dbg !1479
  %31 = call i32 @__fpclassifyd(double %30) #5, !dbg !1479
  %32 = icmp eq i32 %31, 0, !dbg !1479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1481
  br i1 %32, label %38, label %33, !dbg !1481

; <label>:33:                                     ; preds = %26
  %34 = load x86_fp80, x86_fp80* %3, align 16, !dbg !1482, !tbaa !1476
  %35 = fptrunc x86_fp80 %34 to double, !dbg !1482
  %36 = call i32 @__fpclassifyd(double %35) #5, !dbg !1482
  %37 = icmp eq i32 %36, 1, !dbg !1482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1483
  br i1 %37, label %38, label %39, !dbg !1483

; <label>:38:                                     ; preds = %33, %26
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !1484
  br label %62, !dbg !1486

; <label>:39:                                     ; preds = %33
  %40 = load x86_fp80, x86_fp80* %3, align 16, !dbg !1487, !tbaa !1476
  %41 = call %struct.redisObject* @createStringObjectFromLongDouble(x86_fp80 %40, i32 1) #5, !dbg !1488
  %42 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1490, !tbaa !363
  %43 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1490, !tbaa !434
  %44 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %43, i64 1, !dbg !1490
  %45 = load %struct.redisObject*, %struct.redisObject** %44, align 8, !dbg !1490, !tbaa !436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1492
  br i1 %13, label %46, label %47, !dbg !1492

; <label>:46:                                     ; preds = %39
  call void @dbOverwrite(%struct.redisDb* %42, %struct.redisObject* %45, %struct.redisObject* %41) #5, !dbg !1493
  br label %48, !dbg !1493

; <label>:47:                                     ; preds = %39
  call void @dbAdd(%struct.redisDb* %42, %struct.redisObject* %45, %struct.redisObject* %41) #5, !dbg !1494
  br label %48

; <label>:48:                                     ; preds = %47, %46
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %49 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1495, !tbaa !363
  %50 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1496, !tbaa !434
  %51 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %50, i64 1, !dbg !1497
  %52 = load %struct.redisObject*, %struct.redisObject** %51, align 8, !dbg !1497, !tbaa !436
  call void @signalModifiedKey(%struct.redisDb* %49, %struct.redisObject* %52) #5, !dbg !1498
  %53 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1499, !tbaa !434
  %54 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %53, i64 1, !dbg !1500
  %55 = load %struct.redisObject*, %struct.redisObject** %54, align 8, !dbg !1500, !tbaa !436
  %56 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1501, !tbaa !363
  %57 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %56, i64 0, i32 5, !dbg !1502
  %58 = load i32, i32* %57, align 8, !dbg !1502, !tbaa !397
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), %struct.redisObject* %55, i32 %58) #5, !dbg !1503
  %59 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1504, !tbaa !382
  %60 = add nsw i64 %59, 1, !dbg !1504
  store i64 %60, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1504, !tbaa !382
  call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %41) #5, !dbg !1505
  %61 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3) #5, !dbg !1506
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 0, %struct.redisObject* %61) #5, !dbg !1508
  call void @decrRefCount(%struct.redisObject* %61) #5, !dbg !1509
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 2, %struct.redisObject* %41) #5, !dbg !1510
  br label %62, !dbg !1511

; <label>:62:                                     ; preds = %17, %20, %14, %48, %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1512
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #4, !dbg !1511
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #4, !dbg !1511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1511
  ret void, !dbg !1511
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
define dso_local void @appendCommand(%struct.client*) local_unnamed_addr #0 !dbg !1513 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1520
  %3 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1520, !tbaa !363
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1521
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1521, !tbaa !434
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !1522
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1522, !tbaa !436
  %8 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %3, %struct.redisObject* %7) #5, !dbg !1523
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !1525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1527
  br i1 %9, label %10, label %30, !dbg !1527

; <label>:10:                                     ; preds = %1
  %11 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1528, !tbaa !434
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 2, !dbg !1530
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !1530, !tbaa !436
  %14 = tail call %struct.redisObject* @tryObjectEncoding(%struct.redisObject* %13) #5, !dbg !1531
  %15 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1532, !tbaa !434
  %16 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 2, !dbg !1533
  store %struct.redisObject* %14, %struct.redisObject** %16, align 8, !dbg !1534, !tbaa !436
  %17 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1535, !tbaa !363
  %18 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1536, !tbaa !434
  %19 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %18, i64 1, !dbg !1537
  %20 = load %struct.redisObject*, %struct.redisObject** %19, align 8, !dbg !1537, !tbaa !436
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %18, i64 2, !dbg !1538
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !1538, !tbaa !436
  tail call void @dbAdd(%struct.redisDb* %17, %struct.redisObject* %20, %struct.redisObject* %22) #5, !dbg !1539
  %23 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1540, !tbaa !434
  %24 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %23, i64 2, !dbg !1541
  %25 = load %struct.redisObject*, %struct.redisObject** %24, align 8, !dbg !1541, !tbaa !436
  tail call void @incrRefCount(%struct.redisObject* %25) #5, !dbg !1542
  %26 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1543, !tbaa !434
  %27 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 2, !dbg !1544
  %28 = load %struct.redisObject*, %struct.redisObject** %27, align 8, !dbg !1544, !tbaa !436
  %29 = tail call i64 @stringObjectLen(%struct.redisObject* %28) #5, !dbg !1545
  br label %131, !dbg !1547

; <label>:30:                                     ; preds = %1
  %31 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %8, i32 0) #5, !dbg !1548
  %32 = icmp eq i32 %31, 0, !dbg !1548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1551
  br i1 %32, label %33, label %145, !dbg !1551

; <label>:33:                                     ; preds = %30
  %34 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1552, !tbaa !434
  %35 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %34, i64 2, !dbg !1553
  %36 = load %struct.redisObject*, %struct.redisObject** %35, align 8, !dbg !1553, !tbaa !436
  %37 = tail call i64 @stringObjectLen(%struct.redisObject* nonnull %8) #5, !dbg !1555
  %38 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %36, i64 0, i32 2, !dbg !1556
  %39 = load i8*, i8** %38, align 8, !dbg !1556, !tbaa !438
  %40 = getelementptr inbounds i8, i8* %39, i64 -1, !dbg !1559
  %41 = load i8, i8* %40, align 1, !dbg !1559, !tbaa !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1561
  %42 = trunc i8 %41 to i3, !dbg !1561
  switch i3 %42, label %64 [
    i3 0, label %43
    i3 1, label %46
    i3 2, label %50
    i3 3, label %55
    i3 -4, label %60
  ], !dbg !1561

; <label>:43:                                     ; preds = %33
  %44 = lshr i8 %41, 3, !dbg !1562
  %45 = zext i8 %44 to i64, !dbg !1562
  br label %64, !dbg !1563

; <label>:46:                                     ; preds = %33
  %47 = getelementptr inbounds i8, i8* %39, i64 -3, !dbg !1564
  %48 = load i8, i8* %47, align 1, !dbg !1565, !tbaa !448
  %49 = zext i8 %48 to i64, !dbg !1564
  br label %64, !dbg !1566

; <label>:50:                                     ; preds = %33
  %51 = getelementptr inbounds i8, i8* %39, i64 -5, !dbg !1567
  %52 = bitcast i8* %51 to i16*, !dbg !1568
  %53 = load i16, i16* %52, align 1, !dbg !1568, !tbaa !757
  %54 = zext i16 %53 to i64, !dbg !1567
  br label %64, !dbg !1569

; <label>:55:                                     ; preds = %33
  %56 = getelementptr inbounds i8, i8* %39, i64 -9, !dbg !1570
  %57 = bitcast i8* %56 to i32*, !dbg !1571
  %58 = load i32, i32* %57, align 1, !dbg !1571, !tbaa !762
  %59 = zext i32 %58 to i64, !dbg !1570
  br label %64, !dbg !1572

; <label>:60:                                     ; preds = %33
  %61 = getelementptr inbounds i8, i8* %39, i64 -17, !dbg !1573
  %62 = bitcast i8* %61 to i64*, !dbg !1574
  %63 = load i64, i64* %62, align 1, !dbg !1574, !tbaa !720
  br label %64, !dbg !1575

; <label>:64:                                     ; preds = %33, %43, %46, %50, %55, %60
  %65 = phi i64 [ %63, %60 ], [ %59, %55 ], [ %54, %50 ], [ %49, %46 ], [ %45, %43 ], [ 0, %33 ], !dbg !1576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1578
  %66 = add i64 %65, %37, !dbg !1579
  %67 = icmp sgt i64 %66, 536870912, !dbg !1584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1585
  br i1 %67, label %68, label %69, !dbg !1585

; <label>:68:                                     ; preds = %64
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0)) #5, !dbg !1586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1589
  br label %145, !dbg !1590

; <label>:69:                                     ; preds = %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1589
  %70 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1592, !tbaa !363
  %71 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1593, !tbaa !434
  %72 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %71, i64 1, !dbg !1594
  %73 = load %struct.redisObject*, %struct.redisObject** %72, align 8, !dbg !1594, !tbaa !436
  %74 = tail call %struct.redisObject* @dbUnshareStringValue(%struct.redisDb* %70, %struct.redisObject* %73, %struct.redisObject* nonnull %8) #5, !dbg !1595
  %75 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %74, i64 0, i32 2, !dbg !1596
  %76 = load i8*, i8** %75, align 8, !dbg !1596, !tbaa !438
  %77 = load i8*, i8** %38, align 8, !dbg !1597, !tbaa !438
  %78 = getelementptr inbounds i8, i8* %77, i64 -1, !dbg !1600
  %79 = load i8, i8* %78, align 1, !dbg !1600, !tbaa !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1602
  %80 = trunc i8 %79 to i3, !dbg !1602
  switch i3 %80, label %102 [
    i3 0, label %81
    i3 1, label %84
    i3 2, label %88
    i3 3, label %93
    i3 -4, label %98
  ], !dbg !1602

; <label>:81:                                     ; preds = %69
  %82 = lshr i8 %79, 3, !dbg !1603
  %83 = zext i8 %82 to i64, !dbg !1603
  br label %102, !dbg !1604

; <label>:84:                                     ; preds = %69
  %85 = getelementptr inbounds i8, i8* %77, i64 -3, !dbg !1605
  %86 = load i8, i8* %85, align 1, !dbg !1606, !tbaa !448
  %87 = zext i8 %86 to i64, !dbg !1605
  br label %102, !dbg !1607

; <label>:88:                                     ; preds = %69
  %89 = getelementptr inbounds i8, i8* %77, i64 -5, !dbg !1608
  %90 = bitcast i8* %89 to i16*, !dbg !1609
  %91 = load i16, i16* %90, align 1, !dbg !1609, !tbaa !757
  %92 = zext i16 %91 to i64, !dbg !1608
  br label %102, !dbg !1610

; <label>:93:                                     ; preds = %69
  %94 = getelementptr inbounds i8, i8* %77, i64 -9, !dbg !1611
  %95 = bitcast i8* %94 to i32*, !dbg !1612
  %96 = load i32, i32* %95, align 1, !dbg !1612, !tbaa !762
  %97 = zext i32 %96 to i64, !dbg !1611
  br label %102, !dbg !1613

; <label>:98:                                     ; preds = %69
  %99 = getelementptr inbounds i8, i8* %77, i64 -17, !dbg !1614
  %100 = bitcast i8* %99 to i64*, !dbg !1615
  %101 = load i64, i64* %100, align 1, !dbg !1615, !tbaa !720
  br label %102, !dbg !1616

; <label>:102:                                    ; preds = %69, %81, %84, %88, %93, %98
  %103 = phi i64 [ %101, %98 ], [ %97, %93 ], [ %92, %88 ], [ %87, %84 ], [ %83, %81 ], [ 0, %69 ], !dbg !1617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1618
  %104 = tail call i8* @sdscatlen(i8* %76, i8* %77, i64 %103) #5, !dbg !1619
  store i8* %104, i8** %75, align 8, !dbg !1620, !tbaa !438
  %105 = getelementptr inbounds i8, i8* %104, i64 -1, !dbg !1623
  %106 = load i8, i8* %105, align 1, !dbg !1623, !tbaa !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1625
  %107 = trunc i8 %106 to i3, !dbg !1625
  switch i3 %107, label %129 [
    i3 0, label %108
    i3 1, label %111
    i3 2, label %115
    i3 3, label %120
    i3 -4, label %125
  ], !dbg !1625

; <label>:108:                                    ; preds = %102
  %109 = lshr i8 %106, 3, !dbg !1626
  %110 = zext i8 %109 to i64, !dbg !1626
  br label %129, !dbg !1627

; <label>:111:                                    ; preds = %102
  %112 = getelementptr inbounds i8, i8* %104, i64 -3, !dbg !1628
  %113 = load i8, i8* %112, align 1, !dbg !1629, !tbaa !448
  %114 = zext i8 %113 to i64, !dbg !1628
  br label %129, !dbg !1630

; <label>:115:                                    ; preds = %102
  %116 = getelementptr inbounds i8, i8* %104, i64 -5, !dbg !1631
  %117 = bitcast i8* %116 to i16*, !dbg !1632
  %118 = load i16, i16* %117, align 1, !dbg !1632, !tbaa !757
  %119 = zext i16 %118 to i64, !dbg !1631
  br label %129, !dbg !1633

; <label>:120:                                    ; preds = %102
  %121 = getelementptr inbounds i8, i8* %104, i64 -9, !dbg !1634
  %122 = bitcast i8* %121 to i32*, !dbg !1635
  %123 = load i32, i32* %122, align 1, !dbg !1635, !tbaa !762
  %124 = zext i32 %123 to i64, !dbg !1634
  br label %129, !dbg !1636

; <label>:125:                                    ; preds = %102
  %126 = getelementptr inbounds i8, i8* %104, i64 -17, !dbg !1637
  %127 = bitcast i8* %126 to i64*, !dbg !1638
  %128 = load i64, i64* %127, align 1, !dbg !1638, !tbaa !720
  br label %129, !dbg !1639

; <label>:129:                                    ; preds = %102, %108, %111, %115, %120, %125
  %130 = phi i64 [ %128, %125 ], [ %124, %120 ], [ %119, %115 ], [ %114, %111 ], [ %110, %108 ], [ 0, %102 ], !dbg !1640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1641
  br label %131

; <label>:131:                                    ; preds = %129, %10
  %132 = phi i64 [ %29, %10 ], [ %130, %129 ], !dbg !1577
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %133 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1642, !tbaa !363
  %134 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1643, !tbaa !434
  %135 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %134, i64 1, !dbg !1644
  %136 = load %struct.redisObject*, %struct.redisObject** %135, align 8, !dbg !1644, !tbaa !436
  tail call void @signalModifiedKey(%struct.redisDb* %133, %struct.redisObject* %136) #5, !dbg !1645
  %137 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1646, !tbaa !434
  %138 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %137, i64 1, !dbg !1647
  %139 = load %struct.redisObject*, %struct.redisObject** %138, align 8, !dbg !1647, !tbaa !436
  %140 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1648, !tbaa !363
  %141 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %140, i64 0, i32 5, !dbg !1649
  %142 = load i32, i32* %141, align 8, !dbg !1649, !tbaa !397
  tail call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), %struct.redisObject* %139, i32 %142) #5, !dbg !1650
  %143 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1651, !tbaa !382
  %144 = add nsw i64 %143, 1, !dbg !1651
  store i64 %144, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1651, !tbaa !382
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %132) #5, !dbg !1652
  br label %145, !dbg !1653

; <label>:145:                                    ; preds = %30, %131, %68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1653
  ret void, !dbg !1653
}

; Function Attrs: noredzone
declare dso_local void @incrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @strlenCommand(%struct.client*) local_unnamed_addr #0 !dbg !1655 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1660
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1660, !tbaa !434
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !1662
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !1662, !tbaa !436
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1663, !tbaa !563
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #5, !dbg !1664
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !1666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1667
  br i1 %8, label %14, label %9, !dbg !1667

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 0) #5, !dbg !1668
  %11 = icmp eq i32 %10, 0, !dbg !1668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1669
  br i1 %11, label %12, label %14, !dbg !1669

; <label>:12:                                     ; preds = %9
  %13 = tail call i64 @stringObjectLen(%struct.redisObject* nonnull %7) #5, !dbg !1670
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %13) #5, !dbg !1671
  br label %14, !dbg !1672

; <label>:14:                                     ; preds = %1, %9, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1672
  ret void, !dbg !1672
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
!368 = !DILocation(line: 81, column: 29, scope: !360)
!369 = !DILocation(line: 0, scope: !360)
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
!388 = !DILocation(line: 88, column: 9, scope: !59)
!389 = !DILocation(line: 0, scope: !59)
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
!400 = !DILocation(line: 90, column: 9, scope: !59)
!401 = !DILocation(line: 91, column: 25, scope: !402)
!402 = distinct !DILexicalBlock(scope: !59, file: !1, line: 90, column: 9)
!403 = !DILocation(line: 91, column: 29, scope: !402)
!404 = !DILocation(line: 90, column: 17, scope: !402)
!405 = !DILocation(line: 0, scope: !402)
!406 = !DILocation(line: 92, column: 17, scope: !59)
!407 = !DILocation(line: 92, column: 46, scope: !59)
!408 = !DILocation(line: 92, column: 5, scope: !59)
!409 = !DILocation(line: 93, column: 1, scope: !59)
!410 = !DILocation(line: 0, scope: !332)
!411 = distinct !DISubprogram(name: "setCommand", scope: !1, file: !1, line: 96, type: !204, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !412)
!412 = !{!413, !414, !415, !416, !417, !418, !422}
!413 = !DILocalVariable(name: "c", arg: 1, scope: !411, file: !1, line: 96, type: !62)
!414 = !DILocalVariable(name: "j", scope: !411, file: !1, line: 97, type: !69)
!415 = !DILocalVariable(name: "expire", scope: !411, file: !1, line: 98, type: !175)
!416 = !DILocalVariable(name: "unit", scope: !411, file: !1, line: 99, type: !69)
!417 = !DILocalVariable(name: "flags", scope: !411, file: !1, line: 100, type: !69)
!418 = !DILocalVariable(name: "a", scope: !419, file: !1, line: 103, type: !5)
!419 = distinct !DILexicalBlock(scope: !420, file: !1, line: 102, column: 35)
!420 = distinct !DILexicalBlock(scope: !421, file: !1, line: 102, column: 5)
!421 = distinct !DILexicalBlock(scope: !411, file: !1, line: 102, column: 5)
!422 = !DILocalVariable(name: "next", scope: !419, file: !1, line: 104, type: !175)
!423 = !DILocation(line: 96, column: 25, scope: !411)
!424 = !DILocation(line: 98, column: 11, scope: !411)
!425 = !DILocation(line: 99, column: 9, scope: !411)
!426 = !DILocation(line: 100, column: 9, scope: !411)
!427 = !DILocation(line: 97, column: 9, scope: !411)
!428 = !DILocation(line: 102, column: 10, scope: !421)
!429 = !DILocation(line: 102, column: 24, scope: !420)
!430 = !{!343, !345, i64 64}
!431 = !DILocation(line: 102, column: 19, scope: !420)
!432 = !DILocation(line: 102, column: 5, scope: !421)
!433 = !DILocation(line: 0, scope: !411)
!434 = !{!343, !346, i64 72}
!435 = !DILocation(line: 103, column: 19, scope: !419)
!436 = !{!346, !346, i64 0}
!437 = !DILocation(line: 103, column: 31, scope: !419)
!438 = !{!439, !346, i64 8}
!439 = !{!"redisObject", !345, i64 0, !345, i64 0, !345, i64 1, !345, i64 4, !346, i64 8}
!440 = !DILocation(line: 103, column: 15, scope: !419)
!441 = !DILocation(line: 104, column: 25, scope: !419)
!442 = !DILocation(line: 104, column: 22, scope: !419)
!443 = !DILocation(line: 104, column: 57, scope: !419)
!444 = !DILocation(line: 104, column: 48, scope: !419)
!445 = !DILocation(line: 104, column: 15, scope: !419)
!446 = !DILocation(line: 106, column: 14, scope: !447)
!447 = distinct !DILexicalBlock(scope: !419, file: !1, line: 106, column: 13)
!448 = !{!326, !326, i64 0}
!449 = !DILocation(line: 106, column: 19, scope: !447)
!450 = !DILocation(line: 106, column: 26, scope: !447)
!451 = !DILocation(line: 106, column: 34, scope: !447)
!452 = !DILocation(line: 106, column: 42, scope: !447)
!453 = !DILocation(line: 107, column: 14, scope: !447)
!454 = !DILocation(line: 107, column: 19, scope: !447)
!455 = !DILocation(line: 107, column: 26, scope: !447)
!456 = !DILocation(line: 107, column: 34, scope: !447)
!457 = !DILocation(line: 107, column: 42, scope: !447)
!458 = !DILocation(line: 107, column: 45, scope: !447)
!459 = !DILocation(line: 107, column: 50, scope: !447)
!460 = !DILocation(line: 107, column: 58, scope: !447)
!461 = !DILocation(line: 108, column: 21, scope: !447)
!462 = !DILocation(line: 106, column: 13, scope: !419)
!463 = !DILocation(line: 110, column: 19, scope: !464)
!464 = distinct !DILexicalBlock(scope: !447, file: !1, line: 109, column: 9)
!465 = !DILocation(line: 111, column: 9, scope: !464)
!466 = !DILocation(line: 111, column: 33, scope: !467)
!467 = distinct !DILexicalBlock(scope: !447, file: !1, line: 111, column: 20)
!468 = !DILocation(line: 111, column: 26, scope: !467)
!469 = !DILocation(line: 111, column: 41, scope: !467)
!470 = !DILocation(line: 111, column: 49, scope: !467)
!471 = !DILocation(line: 112, column: 21, scope: !467)
!472 = !DILocation(line: 112, column: 26, scope: !467)
!473 = !DILocation(line: 112, column: 33, scope: !467)
!474 = !DILocation(line: 112, column: 41, scope: !467)
!475 = !DILocation(line: 112, column: 49, scope: !467)
!476 = !DILocation(line: 112, column: 52, scope: !467)
!477 = !DILocation(line: 112, column: 57, scope: !467)
!478 = !DILocation(line: 112, column: 65, scope: !467)
!479 = !DILocation(line: 113, column: 28, scope: !467)
!480 = !DILocation(line: 111, column: 20, scope: !447)
!481 = !DILocation(line: 115, column: 19, scope: !482)
!482 = distinct !DILexicalBlock(scope: !467, file: !1, line: 114, column: 9)
!483 = !DILocation(line: 116, column: 9, scope: !482)
!484 = !DILocation(line: 116, column: 26, scope: !485)
!485 = distinct !DILexicalBlock(scope: !467, file: !1, line: 116, column: 20)
!486 = !DILocation(line: 116, column: 33, scope: !485)
!487 = !DILocation(line: 116, column: 41, scope: !485)
!488 = !DILocation(line: 116, column: 49, scope: !485)
!489 = !DILocation(line: 117, column: 21, scope: !485)
!490 = !DILocation(line: 117, column: 26, scope: !485)
!491 = !DILocation(line: 117, column: 33, scope: !485)
!492 = !DILocation(line: 117, column: 41, scope: !485)
!493 = !DILocation(line: 117, column: 49, scope: !485)
!494 = !DILocation(line: 117, column: 52, scope: !485)
!495 = !DILocation(line: 117, column: 57, scope: !485)
!496 = !DILocation(line: 117, column: 65, scope: !485)
!497 = !DILocation(line: 118, column: 28, scope: !485)
!498 = !DILocation(line: 118, column: 45, scope: !485)
!499 = !DILocation(line: 118, column: 42, scope: !485)
!500 = !DILocation(line: 120, column: 19, scope: !501)
!501 = distinct !DILexicalBlock(scope: !485, file: !1, line: 119, column: 9)
!502 = !DILocation(line: 123, column: 14, scope: !501)
!503 = !DILocation(line: 124, column: 9, scope: !501)
!504 = !DILocation(line: 124, column: 33, scope: !505)
!505 = distinct !DILexicalBlock(scope: !485, file: !1, line: 124, column: 20)
!506 = !DILocation(line: 124, column: 26, scope: !505)
!507 = !DILocation(line: 124, column: 41, scope: !505)
!508 = !DILocation(line: 124, column: 49, scope: !505)
!509 = !DILocation(line: 125, column: 21, scope: !505)
!510 = !DILocation(line: 125, column: 26, scope: !505)
!511 = !DILocation(line: 125, column: 33, scope: !505)
!512 = !DILocation(line: 125, column: 41, scope: !505)
!513 = !DILocation(line: 125, column: 49, scope: !505)
!514 = !DILocation(line: 125, column: 52, scope: !505)
!515 = !DILocation(line: 125, column: 57, scope: !505)
!516 = !DILocation(line: 125, column: 65, scope: !505)
!517 = !DILocation(line: 126, column: 28, scope: !505)
!518 = !DILocation(line: 126, column: 45, scope: !505)
!519 = !DILocation(line: 126, column: 42, scope: !505)
!520 = !DILocation(line: 128, column: 19, scope: !521)
!521 = distinct !DILexicalBlock(scope: !505, file: !1, line: 127, column: 9)
!522 = !DILocation(line: 131, column: 14, scope: !521)
!523 = !DILocation(line: 133, column: 31, scope: !524)
!524 = distinct !DILexicalBlock(scope: !505, file: !1, line: 132, column: 16)
!525 = !{!526, !346, i64 128}
!526 = !{!"sharedObjectsStruct", !346, i64 0, !346, i64 8, !346, i64 16, !346, i64 24, !346, i64 32, !346, i64 40, !346, i64 48, !346, i64 56, !346, i64 64, !346, i64 72, !346, i64 80, !346, i64 88, !346, i64 96, !346, i64 104, !346, i64 112, !346, i64 120, !346, i64 128, !346, i64 136, !346, i64 144, !346, i64 152, !346, i64 160, !346, i64 168, !346, i64 176, !346, i64 184, !346, i64 192, !346, i64 200, !346, i64 208, !346, i64 216, !346, i64 224, !346, i64 232, !346, i64 240, !346, i64 248, !346, i64 256, !346, i64 264, !346, i64 272, !346, i64 280, !346, i64 288, !346, i64 296, !346, i64 304, !346, i64 312, !346, i64 320, !346, i64 328, !346, i64 336, !346, i64 344, !346, i64 352, !346, i64 360, !326, i64 368, !326, i64 448, !326, i64 80448, !326, i64 80704, !346, i64 80960, !346, i64 80968}
!527 = !DILocation(line: 133, column: 13, scope: !524)
!528 = !DILocation(line: 134, column: 13, scope: !524)
!529 = !DILocation(line: 0, scope: !464)
!530 = !DILocation(line: 0, scope: !421)
!531 = !DILocation(line: 136, column: 5, scope: !420)
!532 = !DILocation(line: 102, column: 31, scope: !420)
!533 = !DILocation(line: 102, column: 5, scope: !420)
!534 = distinct !{!534, !432, !535}
!535 = !DILocation(line: 136, column: 5, scope: !421)
!536 = !DILocation(line: 0, scope: !501)
!537 = !DILocation(line: 138, column: 36, scope: !411)
!538 = !DILocation(line: 138, column: 18, scope: !411)
!539 = !DILocation(line: 138, column: 8, scope: !411)
!540 = !DILocation(line: 138, column: 5, scope: !411)
!541 = !DILocation(line: 138, column: 16, scope: !411)
!542 = !DILocation(line: 139, column: 34, scope: !411)
!543 = !DILocation(line: 139, column: 31, scope: !411)
!544 = !DILocation(line: 139, column: 42, scope: !411)
!545 = !DILocation(line: 139, column: 5, scope: !411)
!546 = !DILocation(line: 140, column: 1, scope: !411)
!547 = distinct !DISubprogram(name: "setnxCommand", scope: !1, file: !1, line: 142, type: !204, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !548)
!548 = !{!549}
!549 = !DILocalVariable(name: "c", arg: 1, scope: !547, file: !1, line: 142, type: !62)
!550 = !DILocation(line: 142, column: 27, scope: !547)
!551 = !DILocation(line: 143, column: 39, scope: !547)
!552 = !DILocation(line: 143, column: 36, scope: !547)
!553 = !DILocation(line: 143, column: 18, scope: !547)
!554 = !DILocation(line: 143, column: 8, scope: !547)
!555 = !DILocation(line: 143, column: 5, scope: !547)
!556 = !DILocation(line: 143, column: 16, scope: !547)
!557 = !DILocation(line: 144, column: 39, scope: !547)
!558 = !DILocation(line: 144, column: 36, scope: !547)
!559 = !DILocation(line: 144, column: 47, scope: !547)
!560 = !DILocation(line: 144, column: 72, scope: !547)
!561 = !{!526, !346, i64 40}
!562 = !DILocation(line: 144, column: 84, scope: !547)
!563 = !{!526, !346, i64 32}
!564 = !DILocation(line: 144, column: 5, scope: !547)
!565 = !DILocation(line: 145, column: 1, scope: !547)
!566 = distinct !DISubprogram(name: "setexCommand", scope: !1, file: !1, line: 147, type: !204, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !567)
!567 = !{!568}
!568 = !DILocalVariable(name: "c", arg: 1, scope: !566, file: !1, line: 147, type: !62)
!569 = !DILocation(line: 147, column: 27, scope: !566)
!570 = !DILocation(line: 148, column: 39, scope: !566)
!571 = !DILocation(line: 148, column: 36, scope: !566)
!572 = !DILocation(line: 148, column: 18, scope: !566)
!573 = !DILocation(line: 148, column: 8, scope: !566)
!574 = !DILocation(line: 148, column: 5, scope: !566)
!575 = !DILocation(line: 148, column: 16, scope: !566)
!576 = !DILocation(line: 149, column: 45, scope: !566)
!577 = !DILocation(line: 149, column: 42, scope: !566)
!578 = !DILocation(line: 149, column: 53, scope: !566)
!579 = !DILocation(line: 149, column: 64, scope: !566)
!580 = !DILocation(line: 149, column: 5, scope: !566)
!581 = !DILocation(line: 150, column: 1, scope: !566)
!582 = distinct !DISubprogram(name: "psetexCommand", scope: !1, file: !1, line: 152, type: !204, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !583)
!583 = !{!584}
!584 = !DILocalVariable(name: "c", arg: 1, scope: !582, file: !1, line: 152, type: !62)
!585 = !DILocation(line: 152, column: 28, scope: !582)
!586 = !DILocation(line: 153, column: 39, scope: !582)
!587 = !DILocation(line: 153, column: 36, scope: !582)
!588 = !DILocation(line: 153, column: 18, scope: !582)
!589 = !DILocation(line: 153, column: 8, scope: !582)
!590 = !DILocation(line: 153, column: 5, scope: !582)
!591 = !DILocation(line: 153, column: 16, scope: !582)
!592 = !DILocation(line: 154, column: 45, scope: !582)
!593 = !DILocation(line: 154, column: 42, scope: !582)
!594 = !DILocation(line: 154, column: 53, scope: !582)
!595 = !DILocation(line: 154, column: 64, scope: !582)
!596 = !DILocation(line: 154, column: 5, scope: !582)
!597 = !DILocation(line: 155, column: 1, scope: !582)
!598 = distinct !DISubprogram(name: "getGenericCommand", scope: !1, file: !1, line: 157, type: !599, isLocal: false, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !601)
!599 = !DISubroutineType(types: !600)
!600 = !{!69, !62}
!601 = !{!602, !603}
!602 = !DILocalVariable(name: "c", arg: 1, scope: !598, file: !1, line: 157, type: !62)
!603 = !DILocalVariable(name: "o", scope: !598, file: !1, line: 158, type: !175)
!604 = !DILocation(line: 157, column: 31, scope: !598)
!605 = !DILocation(line: 160, column: 40, scope: !606)
!606 = distinct !DILexicalBlock(scope: !598, file: !1, line: 160, column: 9)
!607 = !DILocation(line: 160, column: 37, scope: !606)
!608 = !DILocation(line: 160, column: 55, scope: !606)
!609 = !{!526, !346, i64 80}
!610 = !DILocation(line: 160, column: 14, scope: !606)
!611 = !DILocation(line: 158, column: 11, scope: !598)
!612 = !DILocation(line: 160, column: 66, scope: !606)
!613 = !DILocation(line: 160, column: 9, scope: !598)
!614 = !DILocation(line: 163, column: 12, scope: !615)
!615 = distinct !DILexicalBlock(scope: !598, file: !1, line: 163, column: 9)
!616 = !DILocation(line: 163, column: 17, scope: !615)
!617 = !DILocation(line: 163, column: 9, scope: !598)
!618 = !DILocation(line: 164, column: 27, scope: !619)
!619 = distinct !DILexicalBlock(scope: !615, file: !1, line: 163, column: 32)
!620 = !{!526, !346, i64 112}
!621 = !DILocation(line: 164, column: 9, scope: !619)
!622 = !DILocation(line: 165, column: 9, scope: !619)
!623 = !DILocation(line: 167, column: 9, scope: !624)
!624 = distinct !DILexicalBlock(scope: !615, file: !1, line: 166, column: 12)
!625 = !DILocation(line: 168, column: 9, scope: !624)
!626 = !DILocation(line: 0, scope: !624)
!627 = !DILocation(line: 0, scope: !606)
!628 = !DILocation(line: 170, column: 1, scope: !598)
!629 = distinct !DISubprogram(name: "getCommand", scope: !1, file: !1, line: 172, type: !204, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !630)
!630 = !{!631}
!631 = !DILocalVariable(name: "c", arg: 1, scope: !629, file: !1, line: 172, type: !62)
!632 = !DILocation(line: 172, column: 25, scope: !629)
!633 = !DILocation(line: 157, column: 31, scope: !598, inlinedAt: !634)
!634 = distinct !DILocation(line: 173, column: 5, scope: !629)
!635 = !DILocation(line: 160, column: 40, scope: !606, inlinedAt: !634)
!636 = !DILocation(line: 160, column: 37, scope: !606, inlinedAt: !634)
!637 = !DILocation(line: 160, column: 55, scope: !606, inlinedAt: !634)
!638 = !DILocation(line: 160, column: 14, scope: !606, inlinedAt: !634)
!639 = !DILocation(line: 158, column: 11, scope: !598, inlinedAt: !634)
!640 = !DILocation(line: 160, column: 66, scope: !606, inlinedAt: !634)
!641 = !DILocation(line: 160, column: 9, scope: !598, inlinedAt: !634)
!642 = !DILocation(line: 163, column: 12, scope: !615, inlinedAt: !634)
!643 = !DILocation(line: 163, column: 17, scope: !615, inlinedAt: !634)
!644 = !DILocation(line: 163, column: 9, scope: !598, inlinedAt: !634)
!645 = !DILocation(line: 164, column: 27, scope: !619, inlinedAt: !634)
!646 = !DILocation(line: 164, column: 9, scope: !619, inlinedAt: !634)
!647 = !DILocation(line: 165, column: 9, scope: !619, inlinedAt: !634)
!648 = !DILocation(line: 167, column: 9, scope: !624, inlinedAt: !634)
!649 = !DILocation(line: 168, column: 9, scope: !624, inlinedAt: !634)
!650 = !DILocation(line: 0, scope: !629)
!651 = !DILocation(line: 170, column: 1, scope: !598, inlinedAt: !634)
!652 = !DILocation(line: 174, column: 1, scope: !629)
!653 = distinct !DISubprogram(name: "getsetCommand", scope: !1, file: !1, line: 176, type: !204, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !654)
!654 = !{!655}
!655 = !DILocalVariable(name: "c", arg: 1, scope: !653, file: !1, line: 176, type: !62)
!656 = !DILocation(line: 176, column: 28, scope: !653)
!657 = !DILocation(line: 157, column: 31, scope: !598, inlinedAt: !658)
!658 = distinct !DILocation(line: 177, column: 9, scope: !659)
!659 = distinct !DILexicalBlock(scope: !653, file: !1, line: 177, column: 9)
!660 = !DILocation(line: 160, column: 40, scope: !606, inlinedAt: !658)
!661 = !DILocation(line: 160, column: 37, scope: !606, inlinedAt: !658)
!662 = !DILocation(line: 160, column: 55, scope: !606, inlinedAt: !658)
!663 = !DILocation(line: 160, column: 14, scope: !606, inlinedAt: !658)
!664 = !DILocation(line: 158, column: 11, scope: !598, inlinedAt: !658)
!665 = !DILocation(line: 160, column: 66, scope: !606, inlinedAt: !658)
!666 = !DILocation(line: 160, column: 9, scope: !598, inlinedAt: !658)
!667 = !DILocation(line: 163, column: 12, scope: !615, inlinedAt: !658)
!668 = !DILocation(line: 163, column: 17, scope: !615, inlinedAt: !658)
!669 = !DILocation(line: 163, column: 9, scope: !598, inlinedAt: !658)
!670 = !DILocation(line: 167, column: 9, scope: !624, inlinedAt: !658)
!671 = !DILocation(line: 168, column: 9, scope: !624, inlinedAt: !658)
!672 = !DILocation(line: 164, column: 27, scope: !619, inlinedAt: !658)
!673 = !DILocation(line: 164, column: 9, scope: !619, inlinedAt: !658)
!674 = !DILocation(line: 165, column: 9, scope: !619, inlinedAt: !658)
!675 = !DILocation(line: 170, column: 1, scope: !598, inlinedAt: !658)
!676 = !DILocation(line: 177, column: 9, scope: !653)
!677 = !DILocation(line: 0, scope: !659)
!678 = !DILocation(line: 178, column: 39, scope: !653)
!679 = !DILocation(line: 178, column: 36, scope: !653)
!680 = !DILocation(line: 178, column: 18, scope: !653)
!681 = !DILocation(line: 178, column: 8, scope: !653)
!682 = !DILocation(line: 178, column: 5, scope: !653)
!683 = !DILocation(line: 178, column: 16, scope: !653)
!684 = !DILocation(line: 179, column: 15, scope: !653)
!685 = !DILocation(line: 179, column: 21, scope: !653)
!686 = !DILocation(line: 179, column: 18, scope: !653)
!687 = !DILocation(line: 179, column: 29, scope: !653)
!688 = !DILocation(line: 179, column: 5, scope: !653)
!689 = !DILocation(line: 180, column: 48, scope: !653)
!690 = !DILocation(line: 180, column: 45, scope: !653)
!691 = !DILocation(line: 180, column: 59, scope: !653)
!692 = !DILocation(line: 180, column: 63, scope: !653)
!693 = !DILocation(line: 180, column: 5, scope: !653)
!694 = !DILocation(line: 181, column: 17, scope: !653)
!695 = !DILocation(line: 182, column: 1, scope: !653)
!696 = !DILocation(line: 0, scope: !653)
!697 = distinct !DISubprogram(name: "setrangeCommand", scope: !1, file: !1, line: 184, type: !204, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !698)
!698 = !{!699, !700, !701, !702, !703}
!699 = !DILocalVariable(name: "c", arg: 1, scope: !697, file: !1, line: 184, type: !62)
!700 = !DILocalVariable(name: "o", scope: !697, file: !1, line: 185, type: !175)
!701 = !DILocalVariable(name: "offset", scope: !697, file: !1, line: 186, type: !7)
!702 = !DILocalVariable(name: "value", scope: !697, file: !1, line: 187, type: !185)
!703 = !DILocalVariable(name: "olen", scope: !704, file: !1, line: 212, type: !187)
!704 = distinct !DILexicalBlock(scope: !705, file: !1, line: 211, column: 12)
!705 = distinct !DILexicalBlock(scope: !697, file: !1, line: 198, column: 9)
!706 = !DILocation(line: 184, column: 30, scope: !697)
!707 = !DILocation(line: 186, column: 5, scope: !697)
!708 = !DILocation(line: 187, column: 20, scope: !697)
!709 = !DILocation(line: 187, column: 17, scope: !697)
!710 = !DILocation(line: 187, column: 29, scope: !697)
!711 = !DILocation(line: 187, column: 9, scope: !697)
!712 = !DILocation(line: 189, column: 36, scope: !713)
!713 = distinct !DILexicalBlock(scope: !697, file: !1, line: 189, column: 9)
!714 = !DILocation(line: 186, column: 10, scope: !697)
!715 = !DILocation(line: 189, column: 9, scope: !713)
!716 = !DILocation(line: 189, column: 61, scope: !713)
!717 = !DILocation(line: 189, column: 9, scope: !697)
!718 = !DILocation(line: 192, column: 9, scope: !719)
!719 = distinct !DILexicalBlock(scope: !697, file: !1, line: 192, column: 9)
!720 = !{!344, !344, i64 0}
!721 = !DILocation(line: 192, column: 16, scope: !719)
!722 = !DILocation(line: 192, column: 9, scope: !697)
!723 = !DILocation(line: 193, column: 9, scope: !724)
!724 = distinct !DILexicalBlock(scope: !719, file: !1, line: 192, column: 21)
!725 = !DILocation(line: 194, column: 9, scope: !724)
!726 = !DILocation(line: 197, column: 27, scope: !697)
!727 = !DILocation(line: 197, column: 33, scope: !697)
!728 = !DILocation(line: 197, column: 30, scope: !697)
!729 = !DILocation(line: 197, column: 9, scope: !697)
!730 = !DILocation(line: 185, column: 11, scope: !697)
!731 = !DILocation(line: 198, column: 11, scope: !705)
!732 = !DILocation(line: 198, column: 9, scope: !697)
!733 = !DILocalVariable(name: "s", arg: 1, scope: !734, file: !11, line: 87, type: !739)
!734 = distinct !DISubprogram(name: "sdslen", scope: !11, file: !11, line: 87, type: !735, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !740)
!735 = !DISubroutineType(types: !736)
!736 = !{!737, !739}
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !738, line: 58, baseType: !51)
!738 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!740 = !{!733, !741}
!741 = !DILocalVariable(name: "flags", scope: !734, file: !11, line: 88, type: !18)
!742 = !DILocation(line: 87, column: 39, scope: !734, inlinedAt: !743)
!743 = distinct !DILocation(line: 200, column: 13, scope: !744)
!744 = distinct !DILexicalBlock(scope: !745, file: !1, line: 200, column: 13)
!745 = distinct !DILexicalBlock(scope: !705, file: !1, line: 198, column: 20)
!746 = !DILocation(line: 88, column: 27, scope: !734, inlinedAt: !743)
!747 = !DILocation(line: 88, column: 19, scope: !734, inlinedAt: !743)
!748 = !DILocation(line: 89, column: 5, scope: !734, inlinedAt: !743)
!749 = !DILocation(line: 91, column: 20, scope: !750, inlinedAt: !743)
!750 = distinct !DILexicalBlock(scope: !734, file: !11, line: 89, column: 33)
!751 = !DILocation(line: 91, column: 13, scope: !750, inlinedAt: !743)
!752 = !DILocation(line: 93, column: 20, scope: !750, inlinedAt: !743)
!753 = !DILocation(line: 93, column: 34, scope: !750, inlinedAt: !743)
!754 = !DILocation(line: 93, column: 13, scope: !750, inlinedAt: !743)
!755 = !DILocation(line: 95, column: 20, scope: !750, inlinedAt: !743)
!756 = !DILocation(line: 95, column: 35, scope: !750, inlinedAt: !743)
!757 = !{!758, !758, i64 0}
!758 = !{!"short", !326, i64 0}
!759 = !DILocation(line: 95, column: 13, scope: !750, inlinedAt: !743)
!760 = !DILocation(line: 97, column: 20, scope: !750, inlinedAt: !743)
!761 = !DILocation(line: 97, column: 35, scope: !750, inlinedAt: !743)
!762 = !{!345, !345, i64 0}
!763 = !DILocation(line: 97, column: 13, scope: !750, inlinedAt: !743)
!764 = !DILocation(line: 99, column: 20, scope: !750, inlinedAt: !743)
!765 = !DILocation(line: 99, column: 35, scope: !750, inlinedAt: !743)
!766 = !DILocation(line: 99, column: 13, scope: !750, inlinedAt: !743)
!767 = !DILocation(line: 101, column: 5, scope: !734, inlinedAt: !743)
!768 = !DILocation(line: 102, column: 1, scope: !734, inlinedAt: !743)
!769 = !DILocation(line: 200, column: 13, scope: !745)
!770 = !DILocation(line: 0, scope: !750, inlinedAt: !743)
!771 = !DILocation(line: 0, scope: !744)
!772 = !DILocation(line: 200, column: 27, scope: !744)
!773 = !DILocation(line: 201, column: 31, scope: !774)
!774 = distinct !DILexicalBlock(scope: !744, file: !1, line: 200, column: 33)
!775 = !DILocation(line: 201, column: 13, scope: !774)
!776 = !DILocation(line: 202, column: 13, scope: !774)
!777 = !DILocation(line: 206, column: 33, scope: !778)
!778 = distinct !DILexicalBlock(scope: !745, file: !1, line: 206, column: 13)
!779 = !DILocation(line: 87, column: 39, scope: !734, inlinedAt: !780)
!780 = distinct !DILocation(line: 206, column: 40, scope: !778)
!781 = !DILocation(line: 88, column: 19, scope: !734, inlinedAt: !780)
!782 = !DILocation(line: 89, column: 5, scope: !734, inlinedAt: !780)
!783 = !DILocation(line: 91, column: 20, scope: !750, inlinedAt: !780)
!784 = !DILocation(line: 91, column: 13, scope: !750, inlinedAt: !780)
!785 = !DILocation(line: 93, column: 20, scope: !750, inlinedAt: !780)
!786 = !DILocation(line: 93, column: 34, scope: !750, inlinedAt: !780)
!787 = !DILocation(line: 93, column: 13, scope: !750, inlinedAt: !780)
!788 = !DILocation(line: 95, column: 20, scope: !750, inlinedAt: !780)
!789 = !DILocation(line: 95, column: 35, scope: !750, inlinedAt: !780)
!790 = !DILocation(line: 95, column: 13, scope: !750, inlinedAt: !780)
!791 = !DILocation(line: 97, column: 20, scope: !750, inlinedAt: !780)
!792 = !DILocation(line: 97, column: 35, scope: !750, inlinedAt: !780)
!793 = !DILocation(line: 97, column: 13, scope: !750, inlinedAt: !780)
!794 = !DILocation(line: 99, column: 20, scope: !750, inlinedAt: !780)
!795 = !DILocation(line: 99, column: 35, scope: !750, inlinedAt: !780)
!796 = !DILocation(line: 99, column: 13, scope: !750, inlinedAt: !780)
!797 = !DILocation(line: 0, scope: !750, inlinedAt: !780)
!798 = !DILocation(line: 0, scope: !778)
!799 = !DILocation(line: 102, column: 1, scope: !734, inlinedAt: !780)
!800 = !DILocation(line: 206, column: 39, scope: !778)
!801 = !DILocalVariable(name: "c", arg: 1, scope: !802, file: !1, line: 37, type: !62)
!802 = distinct !DISubprogram(name: "checkStringLength", scope: !1, file: !1, line: 37, type: !803, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !805)
!803 = !DISubroutineType(types: !804)
!804 = !{!69, !62, !144}
!805 = !{!801, !806}
!806 = !DILocalVariable(name: "size", arg: 2, scope: !802, file: !1, line: 37, type: !144)
!807 = !DILocation(line: 37, column: 38, scope: !802, inlinedAt: !808)
!808 = distinct !DILocation(line: 206, column: 13, scope: !778)
!809 = !DILocation(line: 37, column: 51, scope: !802, inlinedAt: !808)
!810 = !DILocation(line: 38, column: 14, scope: !811, inlinedAt: !808)
!811 = distinct !DILexicalBlock(scope: !802, file: !1, line: 38, column: 9)
!812 = !DILocation(line: 38, column: 9, scope: !802, inlinedAt: !808)
!813 = !DILocation(line: 39, column: 9, scope: !814, inlinedAt: !808)
!814 = distinct !DILexicalBlock(scope: !811, file: !1, line: 38, column: 31)
!815 = !DILocation(line: 40, column: 9, scope: !814, inlinedAt: !808)
!816 = !DILocation(line: 43, column: 1, scope: !802, inlinedAt: !808)
!817 = !DILocation(line: 206, column: 13, scope: !745)
!818 = !DILocation(line: 207, column: 13, scope: !778)
!819 = !DILocation(line: 42, column: 5, scope: !802, inlinedAt: !808)
!820 = !DILocation(line: 87, column: 39, scope: !734, inlinedAt: !821)
!821 = distinct !DILocation(line: 209, column: 60, scope: !745)
!822 = !DILocation(line: 88, column: 19, scope: !734, inlinedAt: !821)
!823 = !DILocation(line: 89, column: 5, scope: !734, inlinedAt: !821)
!824 = !DILocation(line: 91, column: 20, scope: !750, inlinedAt: !821)
!825 = !DILocation(line: 91, column: 13, scope: !750, inlinedAt: !821)
!826 = !DILocation(line: 93, column: 20, scope: !750, inlinedAt: !821)
!827 = !DILocation(line: 93, column: 34, scope: !750, inlinedAt: !821)
!828 = !DILocation(line: 93, column: 13, scope: !750, inlinedAt: !821)
!829 = !DILocation(line: 95, column: 20, scope: !750, inlinedAt: !821)
!830 = !DILocation(line: 95, column: 35, scope: !750, inlinedAt: !821)
!831 = !DILocation(line: 95, column: 13, scope: !750, inlinedAt: !821)
!832 = !DILocation(line: 97, column: 20, scope: !750, inlinedAt: !821)
!833 = !DILocation(line: 97, column: 35, scope: !750, inlinedAt: !821)
!834 = !DILocation(line: 97, column: 13, scope: !750, inlinedAt: !821)
!835 = !DILocation(line: 99, column: 20, scope: !750, inlinedAt: !821)
!836 = !DILocation(line: 99, column: 35, scope: !750, inlinedAt: !821)
!837 = !DILocation(line: 99, column: 13, scope: !750, inlinedAt: !821)
!838 = !DILocation(line: 0, scope: !750, inlinedAt: !821)
!839 = !DILocation(line: 0, scope: !745)
!840 = !DILocation(line: 102, column: 1, scope: !734, inlinedAt: !821)
!841 = !DILocation(line: 209, column: 59, scope: !745)
!842 = !DILocation(line: 209, column: 37, scope: !745)
!843 = !DILocation(line: 209, column: 13, scope: !745)
!844 = !DILocation(line: 210, column: 18, scope: !745)
!845 = !DILocation(line: 210, column: 24, scope: !745)
!846 = !DILocation(line: 210, column: 21, scope: !745)
!847 = !DILocation(line: 210, column: 9, scope: !745)
!848 = !DILocation(line: 211, column: 5, scope: !745)
!849 = !DILocation(line: 215, column: 13, scope: !850)
!850 = distinct !DILexicalBlock(scope: !704, file: !1, line: 215, column: 13)
!851 = !DILocation(line: 215, column: 13, scope: !704)
!852 = !DILocation(line: 219, column: 16, scope: !704)
!853 = !DILocation(line: 212, column: 16, scope: !704)
!854 = !DILocation(line: 87, column: 39, scope: !734, inlinedAt: !855)
!855 = distinct !DILocation(line: 220, column: 13, scope: !856)
!856 = distinct !DILexicalBlock(scope: !704, file: !1, line: 220, column: 13)
!857 = !DILocation(line: 88, column: 27, scope: !734, inlinedAt: !855)
!858 = !DILocation(line: 88, column: 19, scope: !734, inlinedAt: !855)
!859 = !DILocation(line: 89, column: 5, scope: !734, inlinedAt: !855)
!860 = !DILocation(line: 91, column: 20, scope: !750, inlinedAt: !855)
!861 = !DILocation(line: 91, column: 13, scope: !750, inlinedAt: !855)
!862 = !DILocation(line: 93, column: 20, scope: !750, inlinedAt: !855)
!863 = !DILocation(line: 93, column: 34, scope: !750, inlinedAt: !855)
!864 = !DILocation(line: 93, column: 13, scope: !750, inlinedAt: !855)
!865 = !DILocation(line: 95, column: 20, scope: !750, inlinedAt: !855)
!866 = !DILocation(line: 95, column: 35, scope: !750, inlinedAt: !855)
!867 = !DILocation(line: 95, column: 13, scope: !750, inlinedAt: !855)
!868 = !DILocation(line: 97, column: 20, scope: !750, inlinedAt: !855)
!869 = !DILocation(line: 97, column: 35, scope: !750, inlinedAt: !855)
!870 = !DILocation(line: 97, column: 13, scope: !750, inlinedAt: !855)
!871 = !DILocation(line: 99, column: 20, scope: !750, inlinedAt: !855)
!872 = !DILocation(line: 99, column: 35, scope: !750, inlinedAt: !855)
!873 = !DILocation(line: 99, column: 13, scope: !750, inlinedAt: !855)
!874 = !DILocation(line: 101, column: 5, scope: !734, inlinedAt: !855)
!875 = !DILocation(line: 102, column: 1, scope: !734, inlinedAt: !855)
!876 = !DILocation(line: 220, column: 13, scope: !704)
!877 = !DILocation(line: 0, scope: !750, inlinedAt: !855)
!878 = !DILocation(line: 0, scope: !856)
!879 = !DILocation(line: 220, column: 27, scope: !856)
!880 = !DILocation(line: 221, column: 13, scope: !881)
!881 = distinct !DILexicalBlock(scope: !856, file: !1, line: 220, column: 33)
!882 = !DILocation(line: 222, column: 13, scope: !881)
!883 = !DILocation(line: 226, column: 33, scope: !884)
!884 = distinct !DILexicalBlock(scope: !704, file: !1, line: 226, column: 13)
!885 = !DILocation(line: 87, column: 39, scope: !734, inlinedAt: !886)
!886 = distinct !DILocation(line: 226, column: 40, scope: !884)
!887 = !DILocation(line: 88, column: 19, scope: !734, inlinedAt: !886)
!888 = !DILocation(line: 89, column: 5, scope: !734, inlinedAt: !886)
!889 = !DILocation(line: 91, column: 20, scope: !750, inlinedAt: !886)
!890 = !DILocation(line: 91, column: 13, scope: !750, inlinedAt: !886)
!891 = !DILocation(line: 93, column: 20, scope: !750, inlinedAt: !886)
!892 = !DILocation(line: 93, column: 34, scope: !750, inlinedAt: !886)
!893 = !DILocation(line: 93, column: 13, scope: !750, inlinedAt: !886)
!894 = !DILocation(line: 95, column: 20, scope: !750, inlinedAt: !886)
!895 = !DILocation(line: 95, column: 35, scope: !750, inlinedAt: !886)
!896 = !DILocation(line: 95, column: 13, scope: !750, inlinedAt: !886)
!897 = !DILocation(line: 97, column: 20, scope: !750, inlinedAt: !886)
!898 = !DILocation(line: 97, column: 35, scope: !750, inlinedAt: !886)
!899 = !DILocation(line: 97, column: 13, scope: !750, inlinedAt: !886)
!900 = !DILocation(line: 99, column: 20, scope: !750, inlinedAt: !886)
!901 = !DILocation(line: 99, column: 35, scope: !750, inlinedAt: !886)
!902 = !DILocation(line: 99, column: 13, scope: !750, inlinedAt: !886)
!903 = !DILocation(line: 0, scope: !750, inlinedAt: !886)
!904 = !DILocation(line: 0, scope: !884)
!905 = !DILocation(line: 102, column: 1, scope: !734, inlinedAt: !886)
!906 = !DILocation(line: 226, column: 39, scope: !884)
!907 = !DILocation(line: 37, column: 38, scope: !802, inlinedAt: !908)
!908 = distinct !DILocation(line: 226, column: 13, scope: !884)
!909 = !DILocation(line: 37, column: 51, scope: !802, inlinedAt: !908)
!910 = !DILocation(line: 38, column: 14, scope: !811, inlinedAt: !908)
!911 = !DILocation(line: 38, column: 9, scope: !802, inlinedAt: !908)
!912 = !DILocation(line: 39, column: 9, scope: !814, inlinedAt: !908)
!913 = !DILocation(line: 40, column: 9, scope: !814, inlinedAt: !908)
!914 = !DILocation(line: 43, column: 1, scope: !802, inlinedAt: !908)
!915 = !DILocation(line: 226, column: 13, scope: !704)
!916 = !DILocation(line: 227, column: 13, scope: !884)
!917 = !DILocation(line: 42, column: 5, scope: !802, inlinedAt: !908)
!918 = !DILocation(line: 230, column: 37, scope: !704)
!919 = !DILocation(line: 230, column: 43, scope: !704)
!920 = !DILocation(line: 230, column: 40, scope: !704)
!921 = !DILocation(line: 230, column: 13, scope: !704)
!922 = !DILocation(line: 231, column: 5, scope: !705)
!923 = !DILocation(line: 88, column: 27, scope: !734, inlinedAt: !924)
!924 = distinct !DILocation(line: 233, column: 9, scope: !925)
!925 = distinct !DILexicalBlock(scope: !697, file: !1, line: 233, column: 9)
!926 = !DILocation(line: 0, scope: !697)
!927 = !DILocation(line: 87, column: 39, scope: !734, inlinedAt: !924)
!928 = !DILocation(line: 88, column: 19, scope: !734, inlinedAt: !924)
!929 = !DILocation(line: 89, column: 5, scope: !734, inlinedAt: !924)
!930 = !DILocation(line: 91, column: 20, scope: !750, inlinedAt: !924)
!931 = !DILocation(line: 91, column: 13, scope: !750, inlinedAt: !924)
!932 = !DILocation(line: 93, column: 20, scope: !750, inlinedAt: !924)
!933 = !DILocation(line: 93, column: 34, scope: !750, inlinedAt: !924)
!934 = !DILocation(line: 93, column: 13, scope: !750, inlinedAt: !924)
!935 = !DILocation(line: 95, column: 20, scope: !750, inlinedAt: !924)
!936 = !DILocation(line: 95, column: 35, scope: !750, inlinedAt: !924)
!937 = !DILocation(line: 95, column: 13, scope: !750, inlinedAt: !924)
!938 = !DILocation(line: 97, column: 20, scope: !750, inlinedAt: !924)
!939 = !DILocation(line: 97, column: 35, scope: !750, inlinedAt: !924)
!940 = !DILocation(line: 97, column: 13, scope: !750, inlinedAt: !924)
!941 = !DILocation(line: 99, column: 20, scope: !750, inlinedAt: !924)
!942 = !DILocation(line: 99, column: 35, scope: !750, inlinedAt: !924)
!943 = !DILocation(line: 99, column: 13, scope: !750, inlinedAt: !924)
!944 = !DILocation(line: 101, column: 5, scope: !734, inlinedAt: !924)
!945 = !DILocation(line: 102, column: 1, scope: !734, inlinedAt: !924)
!946 = !DILocation(line: 233, column: 9, scope: !697)
!947 = !DILocation(line: 0, scope: !750, inlinedAt: !924)
!948 = !DILocation(line: 0, scope: !925)
!949 = !DILocation(line: 233, column: 23, scope: !925)
!950 = !DILocation(line: 234, column: 33, scope: !951)
!951 = distinct !DILexicalBlock(scope: !925, file: !1, line: 233, column: 28)
!952 = !DILocation(line: 234, column: 37, scope: !951)
!953 = !DILocation(line: 87, column: 39, scope: !734, inlinedAt: !954)
!954 = distinct !DILocation(line: 234, column: 44, scope: !951)
!955 = !DILocation(line: 88, column: 19, scope: !734, inlinedAt: !954)
!956 = !DILocation(line: 89, column: 5, scope: !734, inlinedAt: !954)
!957 = !DILocation(line: 91, column: 20, scope: !750, inlinedAt: !954)
!958 = !DILocation(line: 91, column: 13, scope: !750, inlinedAt: !954)
!959 = !DILocation(line: 93, column: 20, scope: !750, inlinedAt: !954)
!960 = !DILocation(line: 93, column: 34, scope: !750, inlinedAt: !954)
!961 = !DILocation(line: 93, column: 13, scope: !750, inlinedAt: !954)
!962 = !DILocation(line: 95, column: 20, scope: !750, inlinedAt: !954)
!963 = !DILocation(line: 95, column: 35, scope: !750, inlinedAt: !954)
!964 = !DILocation(line: 95, column: 13, scope: !750, inlinedAt: !954)
!965 = !DILocation(line: 97, column: 20, scope: !750, inlinedAt: !954)
!966 = !DILocation(line: 97, column: 35, scope: !750, inlinedAt: !954)
!967 = !DILocation(line: 97, column: 13, scope: !750, inlinedAt: !954)
!968 = !DILocation(line: 99, column: 20, scope: !750, inlinedAt: !954)
!969 = !DILocation(line: 99, column: 35, scope: !750, inlinedAt: !954)
!970 = !DILocation(line: 99, column: 13, scope: !750, inlinedAt: !954)
!971 = !DILocation(line: 0, scope: !750, inlinedAt: !954)
!972 = !DILocation(line: 0, scope: !951)
!973 = !DILocation(line: 102, column: 1, scope: !734, inlinedAt: !954)
!974 = !DILocation(line: 234, column: 43, scope: !951)
!975 = !DILocation(line: 234, column: 18, scope: !951)
!976 = !DILocation(line: 234, column: 16, scope: !951)
!977 = !DILocation(line: 235, column: 30, scope: !951)
!978 = !DILocation(line: 235, column: 29, scope: !951)
!979 = !DILocation(line: 87, column: 39, scope: !734, inlinedAt: !980)
!980 = distinct !DILocation(line: 235, column: 43, scope: !951)
!981 = !DILocation(line: 88, column: 27, scope: !734, inlinedAt: !980)
!982 = !DILocation(line: 88, column: 19, scope: !734, inlinedAt: !980)
!983 = !DILocation(line: 89, column: 5, scope: !734, inlinedAt: !980)
!984 = !DILocation(line: 91, column: 20, scope: !750, inlinedAt: !980)
!985 = !DILocation(line: 91, column: 13, scope: !750, inlinedAt: !980)
!986 = !DILocation(line: 93, column: 20, scope: !750, inlinedAt: !980)
!987 = !DILocation(line: 93, column: 34, scope: !750, inlinedAt: !980)
!988 = !DILocation(line: 93, column: 13, scope: !750, inlinedAt: !980)
!989 = !DILocation(line: 95, column: 20, scope: !750, inlinedAt: !980)
!990 = !DILocation(line: 95, column: 35, scope: !750, inlinedAt: !980)
!991 = !DILocation(line: 95, column: 13, scope: !750, inlinedAt: !980)
!992 = !DILocation(line: 97, column: 20, scope: !750, inlinedAt: !980)
!993 = !DILocation(line: 97, column: 35, scope: !750, inlinedAt: !980)
!994 = !DILocation(line: 97, column: 13, scope: !750, inlinedAt: !980)
!995 = !DILocation(line: 99, column: 20, scope: !750, inlinedAt: !980)
!996 = !DILocation(line: 99, column: 35, scope: !750, inlinedAt: !980)
!997 = !DILocation(line: 99, column: 13, scope: !750, inlinedAt: !980)
!998 = !DILocation(line: 0, scope: !750, inlinedAt: !980)
!999 = !DILocation(line: 102, column: 1, scope: !734, inlinedAt: !980)
!1000 = !DILocation(line: 235, column: 9, scope: !951)
!1001 = !DILocation(line: 236, column: 30, scope: !951)
!1002 = !DILocation(line: 236, column: 36, scope: !951)
!1003 = !DILocation(line: 236, column: 33, scope: !951)
!1004 = !DILocation(line: 236, column: 9, scope: !951)
!1005 = !DILocation(line: 238, column: 27, scope: !951)
!1006 = !DILocation(line: 238, column: 24, scope: !951)
!1007 = !DILocation(line: 238, column: 38, scope: !951)
!1008 = !DILocation(line: 238, column: 42, scope: !951)
!1009 = !DILocation(line: 237, column: 9, scope: !951)
!1010 = !DILocation(line: 239, column: 21, scope: !951)
!1011 = !DILocation(line: 240, column: 5, scope: !951)
!1012 = !DILocation(line: 241, column: 34, scope: !697)
!1013 = !DILocation(line: 87, column: 39, scope: !734, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 241, column: 24, scope: !697)
!1015 = !DILocation(line: 88, column: 27, scope: !734, inlinedAt: !1014)
!1016 = !DILocation(line: 88, column: 19, scope: !734, inlinedAt: !1014)
!1017 = !DILocation(line: 89, column: 5, scope: !734, inlinedAt: !1014)
!1018 = !DILocation(line: 91, column: 20, scope: !750, inlinedAt: !1014)
!1019 = !DILocation(line: 91, column: 13, scope: !750, inlinedAt: !1014)
!1020 = !DILocation(line: 93, column: 20, scope: !750, inlinedAt: !1014)
!1021 = !DILocation(line: 93, column: 34, scope: !750, inlinedAt: !1014)
!1022 = !DILocation(line: 93, column: 13, scope: !750, inlinedAt: !1014)
!1023 = !DILocation(line: 95, column: 20, scope: !750, inlinedAt: !1014)
!1024 = !DILocation(line: 95, column: 35, scope: !750, inlinedAt: !1014)
!1025 = !DILocation(line: 95, column: 13, scope: !750, inlinedAt: !1014)
!1026 = !DILocation(line: 97, column: 20, scope: !750, inlinedAt: !1014)
!1027 = !DILocation(line: 97, column: 35, scope: !750, inlinedAt: !1014)
!1028 = !DILocation(line: 97, column: 13, scope: !750, inlinedAt: !1014)
!1029 = !DILocation(line: 99, column: 20, scope: !750, inlinedAt: !1014)
!1030 = !DILocation(line: 99, column: 35, scope: !750, inlinedAt: !1014)
!1031 = !DILocation(line: 99, column: 13, scope: !750, inlinedAt: !1014)
!1032 = !DILocation(line: 0, scope: !750, inlinedAt: !1014)
!1033 = !DILocation(line: 102, column: 1, scope: !734, inlinedAt: !1014)
!1034 = !DILocation(line: 241, column: 5, scope: !697)
!1035 = !DILocation(line: 242, column: 1, scope: !697)
!1036 = distinct !DISubprogram(name: "getrangeCommand", scope: !1, file: !1, line: 244, type: !204, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1037)
!1037 = !{!1038, !1039, !1040, !1041, !1042, !1043, !1047}
!1038 = !DILocalVariable(name: "c", arg: 1, scope: !1036, file: !1, line: 244, type: !62)
!1039 = !DILocalVariable(name: "o", scope: !1036, file: !1, line: 245, type: !175)
!1040 = !DILocalVariable(name: "start", scope: !1036, file: !1, line: 246, type: !144)
!1041 = !DILocalVariable(name: "end", scope: !1036, file: !1, line: 246, type: !144)
!1042 = !DILocalVariable(name: "str", scope: !1036, file: !1, line: 247, type: !5)
!1043 = !DILocalVariable(name: "llbuf", scope: !1036, file: !1, line: 247, type: !1044)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !1045)
!1045 = !{!1046}
!1046 = !DISubrange(count: 32)
!1047 = !DILocalVariable(name: "strlen", scope: !1036, file: !1, line: 248, type: !187)
!1048 = !DILocation(line: 244, column: 30, scope: !1036)
!1049 = !DILocation(line: 246, column: 5, scope: !1036)
!1050 = !DILocation(line: 247, column: 5, scope: !1036)
!1051 = !DILocation(line: 247, column: 16, scope: !1036)
!1052 = !DILocation(line: 250, column: 43, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 250, column: 9)
!1054 = !DILocation(line: 250, column: 40, scope: !1053)
!1055 = !DILocation(line: 246, column: 15, scope: !1036)
!1056 = !DILocation(line: 250, column: 9, scope: !1053)
!1057 = !DILocation(line: 250, column: 64, scope: !1053)
!1058 = !DILocation(line: 250, column: 9, scope: !1036)
!1059 = !DILocation(line: 252, column: 43, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 252, column: 9)
!1061 = !DILocation(line: 252, column: 40, scope: !1060)
!1062 = !DILocation(line: 246, column: 22, scope: !1036)
!1063 = !DILocation(line: 252, column: 9, scope: !1060)
!1064 = !DILocation(line: 252, column: 62, scope: !1060)
!1065 = !DILocation(line: 252, column: 9, scope: !1036)
!1066 = !DILocation(line: 254, column: 40, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 254, column: 9)
!1068 = !DILocation(line: 254, column: 37, scope: !1067)
!1069 = !DILocation(line: 254, column: 55, scope: !1067)
!1070 = !{!526, !346, i64 24}
!1071 = !DILocation(line: 254, column: 14, scope: !1067)
!1072 = !DILocation(line: 245, column: 11, scope: !1036)
!1073 = !DILocation(line: 254, column: 67, scope: !1067)
!1074 = !DILocation(line: 254, column: 75, scope: !1067)
!1075 = !DILocation(line: 255, column: 9, scope: !1067)
!1076 = !DILocation(line: 254, column: 9, scope: !1036)
!1077 = !DILocation(line: 257, column: 12, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 257, column: 9)
!1079 = !DILocation(line: 257, column: 21, scope: !1078)
!1080 = !DILocation(line: 257, column: 9, scope: !1036)
!1081 = !DILocation(line: 0, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1078, file: !1, line: 260, column: 12)
!1083 = !DILocation(line: 247, column: 11, scope: !1036)
!1084 = !DILocation(line: 259, column: 57, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1078, file: !1, line: 257, column: 42)
!1086 = !DILocation(line: 259, column: 18, scope: !1085)
!1087 = !DILocation(line: 248, column: 12, scope: !1036)
!1088 = !DILocation(line: 260, column: 5, scope: !1085)
!1089 = !DILocation(line: 261, column: 18, scope: !1082)
!1090 = !DILocation(line: 87, column: 39, scope: !734, inlinedAt: !1091)
!1091 = distinct !DILocation(line: 262, column: 18, scope: !1082)
!1092 = !DILocation(line: 88, column: 27, scope: !734, inlinedAt: !1091)
!1093 = !DILocation(line: 88, column: 19, scope: !734, inlinedAt: !1091)
!1094 = !DILocation(line: 89, column: 5, scope: !734, inlinedAt: !1091)
!1095 = !DILocation(line: 91, column: 20, scope: !750, inlinedAt: !1091)
!1096 = !DILocation(line: 91, column: 13, scope: !750, inlinedAt: !1091)
!1097 = !DILocation(line: 93, column: 20, scope: !750, inlinedAt: !1091)
!1098 = !DILocation(line: 93, column: 34, scope: !750, inlinedAt: !1091)
!1099 = !DILocation(line: 93, column: 13, scope: !750, inlinedAt: !1091)
!1100 = !DILocation(line: 95, column: 20, scope: !750, inlinedAt: !1091)
!1101 = !DILocation(line: 95, column: 35, scope: !750, inlinedAt: !1091)
!1102 = !DILocation(line: 95, column: 13, scope: !750, inlinedAt: !1091)
!1103 = !DILocation(line: 97, column: 20, scope: !750, inlinedAt: !1091)
!1104 = !DILocation(line: 97, column: 35, scope: !750, inlinedAt: !1091)
!1105 = !DILocation(line: 97, column: 13, scope: !750, inlinedAt: !1091)
!1106 = !DILocation(line: 99, column: 20, scope: !750, inlinedAt: !1091)
!1107 = !DILocation(line: 99, column: 35, scope: !750, inlinedAt: !1091)
!1108 = !DILocation(line: 99, column: 13, scope: !750, inlinedAt: !1091)
!1109 = !DILocation(line: 0, scope: !750, inlinedAt: !1091)
!1110 = !DILocation(line: 102, column: 1, scope: !734, inlinedAt: !1091)
!1111 = !DILocation(line: 266, column: 9, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 266, column: 9)
!1113 = !DILocation(line: 266, column: 22, scope: !1112)
!1114 = !DILocation(line: 266, column: 19, scope: !1112)
!1115 = !DILocation(line: 266, column: 39, scope: !1112)
!1116 = !DILocation(line: 266, column: 9, scope: !1036)
!1117 = !DILocation(line: 267, column: 27, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 266, column: 46)
!1119 = !DILocation(line: 267, column: 9, scope: !1118)
!1120 = !DILocation(line: 268, column: 9, scope: !1118)
!1121 = !DILocation(line: 270, column: 15, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 270, column: 9)
!1123 = !DILocation(line: 270, column: 9, scope: !1036)
!1124 = !DILocation(line: 270, column: 34, scope: !1122)
!1125 = !DILocation(line: 270, column: 26, scope: !1122)
!1126 = !DILocation(line: 270, column: 20, scope: !1122)
!1127 = !DILocation(line: 271, column: 13, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 271, column: 9)
!1129 = !DILocation(line: 271, column: 9, scope: !1036)
!1130 = !DILocation(line: 271, column: 30, scope: !1128)
!1131 = !DILocation(line: 271, column: 22, scope: !1128)
!1132 = !DILocation(line: 271, column: 18, scope: !1128)
!1133 = !DILocation(line: 272, column: 15, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 272, column: 9)
!1135 = !DILocation(line: 272, column: 9, scope: !1036)
!1136 = !DILocation(line: 272, column: 26, scope: !1134)
!1137 = !DILocation(line: 272, column: 20, scope: !1134)
!1138 = !DILocation(line: 273, column: 13, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 273, column: 9)
!1140 = !DILocation(line: 273, column: 9, scope: !1036)
!1141 = !DILocation(line: 273, column: 22, scope: !1139)
!1142 = !DILocation(line: 273, column: 18, scope: !1139)
!1143 = !DILocation(line: 274, column: 29, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 274, column: 9)
!1145 = !DILocation(line: 274, column: 33, scope: !1144)
!1146 = !DILocation(line: 274, column: 9, scope: !1036)
!1147 = !DILocation(line: 274, column: 56, scope: !1144)
!1148 = !DILocation(line: 274, column: 48, scope: !1144)
!1149 = !DILocation(line: 274, column: 44, scope: !1144)
!1150 = !DILocation(line: 278, column: 17, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 278, column: 9)
!1152 = !DILocation(line: 278, column: 15, scope: !1151)
!1153 = !DILocation(line: 278, column: 31, scope: !1151)
!1154 = !DILocation(line: 278, column: 21, scope: !1151)
!1155 = !DILocation(line: 279, column: 27, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 278, column: 37)
!1157 = !DILocation(line: 279, column: 9, scope: !1156)
!1158 = !DILocation(line: 280, column: 5, scope: !1156)
!1159 = !DILocation(line: 281, column: 41, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 280, column: 12)
!1161 = !DILocation(line: 281, column: 51, scope: !1160)
!1162 = !DILocation(line: 281, column: 57, scope: !1160)
!1163 = !DILocation(line: 281, column: 9, scope: !1160)
!1164 = !DILocation(line: 283, column: 1, scope: !1036)
!1165 = !DILocation(line: 0, scope: !1053)
!1166 = distinct !DISubprogram(name: "mgetCommand", scope: !1, file: !1, line: 285, type: !204, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1167)
!1167 = !{!1168, !1169, !1170}
!1168 = !DILocalVariable(name: "c", arg: 1, scope: !1166, file: !1, line: 285, type: !62)
!1169 = !DILocalVariable(name: "j", scope: !1166, file: !1, line: 286, type: !69)
!1170 = !DILocalVariable(name: "o", scope: !1171, file: !1, line: 290, type: !175)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !1, line: 289, column: 35)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !1, line: 289, column: 5)
!1173 = distinct !DILexicalBlock(scope: !1166, file: !1, line: 289, column: 5)
!1174 = !DILocation(line: 285, column: 26, scope: !1166)
!1175 = !DILocation(line: 288, column: 31, scope: !1166)
!1176 = !DILocation(line: 288, column: 35, scope: !1166)
!1177 = !DILocation(line: 288, column: 28, scope: !1166)
!1178 = !DILocation(line: 288, column: 5, scope: !1166)
!1179 = !DILocation(line: 286, column: 9, scope: !1166)
!1180 = !DILocation(line: 289, column: 10, scope: !1173)
!1181 = !DILocation(line: 289, column: 24, scope: !1172)
!1182 = !DILocation(line: 289, column: 19, scope: !1172)
!1183 = !DILocation(line: 289, column: 5, scope: !1173)
!1184 = !DILocation(line: 290, column: 36, scope: !1171)
!1185 = !DILocation(line: 290, column: 42, scope: !1171)
!1186 = !DILocation(line: 290, column: 39, scope: !1171)
!1187 = !DILocation(line: 290, column: 19, scope: !1171)
!1188 = !DILocation(line: 290, column: 15, scope: !1171)
!1189 = !DILocation(line: 291, column: 15, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1171, file: !1, line: 291, column: 13)
!1191 = !DILocation(line: 291, column: 13, scope: !1171)
!1192 = !DILocation(line: 292, column: 31, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1190, file: !1, line: 291, column: 24)
!1194 = !DILocation(line: 292, column: 13, scope: !1193)
!1195 = !DILocation(line: 293, column: 9, scope: !1193)
!1196 = !DILocation(line: 294, column: 20, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 294, column: 17)
!1198 = distinct !DILexicalBlock(scope: !1190, file: !1, line: 293, column: 16)
!1199 = !DILocation(line: 294, column: 25, scope: !1197)
!1200 = !DILocation(line: 294, column: 17, scope: !1198)
!1201 = !DILocation(line: 295, column: 35, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1197, file: !1, line: 294, column: 40)
!1203 = !DILocation(line: 295, column: 17, scope: !1202)
!1204 = !DILocation(line: 296, column: 13, scope: !1202)
!1205 = !DILocation(line: 297, column: 17, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1197, file: !1, line: 296, column: 20)
!1207 = !DILocation(line: 289, column: 31, scope: !1172)
!1208 = !DILocation(line: 289, column: 5, scope: !1172)
!1209 = distinct !{!1209, !1183, !1210}
!1210 = !DILocation(line: 300, column: 5, scope: !1173)
!1211 = !DILocation(line: 301, column: 1, scope: !1166)
!1212 = distinct !DISubprogram(name: "msetGenericCommand", scope: !1, file: !1, line: 303, type: !1213, isLocal: false, isDefinition: true, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1215)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{null, !62, !69}
!1215 = !{!1216, !1217, !1218}
!1216 = !DILocalVariable(name: "c", arg: 1, scope: !1212, file: !1, line: 303, type: !62)
!1217 = !DILocalVariable(name: "nx", arg: 2, scope: !1212, file: !1, line: 303, type: !69)
!1218 = !DILocalVariable(name: "j", scope: !1212, file: !1, line: 304, type: !69)
!1219 = !DILocation(line: 303, column: 33, scope: !1212)
!1220 = !DILocation(line: 303, column: 40, scope: !1212)
!1221 = !DILocation(line: 306, column: 13, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1212, file: !1, line: 306, column: 9)
!1223 = !DILocation(line: 306, column: 23, scope: !1222)
!1224 = !DILocation(line: 306, column: 9, scope: !1212)
!1225 = !DILocation(line: 307, column: 9, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1222, file: !1, line: 306, column: 29)
!1227 = !DILocation(line: 308, column: 9, scope: !1226)
!1228 = !DILocation(line: 313, column: 9, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1212, file: !1, line: 313, column: 9)
!1230 = !DILocation(line: 313, column: 9, scope: !1212)
!1231 = !DILocation(line: 304, column: 9, scope: !1212)
!1232 = !DILocation(line: 314, column: 14, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 314, column: 9)
!1234 = distinct !DILexicalBlock(scope: !1229, file: !1, line: 313, column: 13)
!1235 = !DILocation(line: 314, column: 23, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1233, file: !1, line: 314, column: 9)
!1237 = !DILocation(line: 314, column: 9, scope: !1233)
!1238 = !DILocation(line: 322, column: 10, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1212, file: !1, line: 322, column: 5)
!1240 = !DILocation(line: 322, column: 5, scope: !1239)
!1241 = !DILocation(line: 315, column: 35, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !1, line: 315, column: 17)
!1243 = distinct !DILexicalBlock(scope: !1236, file: !1, line: 314, column: 42)
!1244 = !DILocation(line: 315, column: 41, scope: !1242)
!1245 = !DILocation(line: 315, column: 38, scope: !1242)
!1246 = !DILocation(line: 315, column: 17, scope: !1242)
!1247 = !DILocation(line: 315, column: 50, scope: !1242)
!1248 = !DILocation(line: 315, column: 17, scope: !1243)
!1249 = !DILocation(line: 316, column: 36, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1242, file: !1, line: 315, column: 59)
!1251 = !DILocation(line: 316, column: 17, scope: !1250)
!1252 = !DILocation(line: 317, column: 17, scope: !1250)
!1253 = !DILocation(line: 314, column: 36, scope: !1236)
!1254 = !DILocation(line: 314, column: 9, scope: !1236)
!1255 = !DILocation(line: 314, column: 28, scope: !1236)
!1256 = distinct !{!1256, !1237, !1257}
!1257 = !DILocation(line: 319, column: 9, scope: !1233)
!1258 = !DILocation(line: 322, column: 24, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1239, file: !1, line: 322, column: 5)
!1260 = !DILocation(line: 322, column: 19, scope: !1259)
!1261 = !DILocation(line: 323, column: 45, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1259, file: !1, line: 322, column: 38)
!1263 = !DILocation(line: 323, column: 51, scope: !1262)
!1264 = !DILocation(line: 323, column: 42, scope: !1262)
!1265 = !DILocation(line: 323, column: 24, scope: !1262)
!1266 = !DILocation(line: 323, column: 12, scope: !1262)
!1267 = !DILocation(line: 323, column: 9, scope: !1262)
!1268 = !DILocation(line: 323, column: 22, scope: !1262)
!1269 = !DILocation(line: 324, column: 19, scope: !1262)
!1270 = !DILocation(line: 324, column: 25, scope: !1262)
!1271 = !DILocation(line: 324, column: 22, scope: !1262)
!1272 = !DILocation(line: 324, column: 33, scope: !1262)
!1273 = !DILocation(line: 324, column: 9, scope: !1262)
!1274 = !DILocation(line: 325, column: 52, scope: !1262)
!1275 = !DILocation(line: 325, column: 49, scope: !1262)
!1276 = !DILocation(line: 325, column: 63, scope: !1262)
!1277 = !DILocation(line: 325, column: 67, scope: !1262)
!1278 = !DILocation(line: 325, column: 9, scope: !1262)
!1279 = !DILocation(line: 322, column: 32, scope: !1259)
!1280 = !DILocation(line: 322, column: 5, scope: !1259)
!1281 = distinct !{!1281, !1240, !1282}
!1282 = !DILocation(line: 326, column: 5, scope: !1239)
!1283 = !DILocation(line: 327, column: 29, scope: !1212)
!1284 = !DILocation(line: 327, column: 32, scope: !1212)
!1285 = !DILocation(line: 327, column: 21, scope: !1212)
!1286 = !DILocation(line: 327, column: 18, scope: !1212)
!1287 = !DILocation(line: 328, column: 29, scope: !1212)
!1288 = !DILocation(line: 328, column: 43, scope: !1212)
!1289 = !DILocation(line: 328, column: 17, scope: !1212)
!1290 = !DILocation(line: 328, column: 5, scope: !1212)
!1291 = !DILocation(line: 329, column: 1, scope: !1212)
!1292 = !DILocation(line: 0, scope: !1226)
!1293 = distinct !DISubprogram(name: "msetCommand", scope: !1, file: !1, line: 331, type: !204, isLocal: false, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1294)
!1294 = !{!1295}
!1295 = !DILocalVariable(name: "c", arg: 1, scope: !1293, file: !1, line: 331, type: !62)
!1296 = !DILocation(line: 331, column: 26, scope: !1293)
!1297 = !DILocation(line: 332, column: 5, scope: !1293)
!1298 = !DILocation(line: 333, column: 1, scope: !1293)
!1299 = distinct !DISubprogram(name: "msetnxCommand", scope: !1, file: !1, line: 335, type: !204, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1300)
!1300 = !{!1301}
!1301 = !DILocalVariable(name: "c", arg: 1, scope: !1299, file: !1, line: 335, type: !62)
!1302 = !DILocation(line: 335, column: 28, scope: !1299)
!1303 = !DILocation(line: 336, column: 5, scope: !1299)
!1304 = !DILocation(line: 337, column: 1, scope: !1299)
!1305 = distinct !DISubprogram(name: "incrDecrCommand", scope: !1, file: !1, line: 339, type: !1306, isLocal: false, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1308)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{null, !62, !144}
!1308 = !{!1309, !1310, !1311, !1312, !1313, !1314}
!1309 = !DILocalVariable(name: "c", arg: 1, scope: !1305, file: !1, line: 339, type: !62)
!1310 = !DILocalVariable(name: "incr", arg: 2, scope: !1305, file: !1, line: 339, type: !144)
!1311 = !DILocalVariable(name: "value", scope: !1305, file: !1, line: 340, type: !144)
!1312 = !DILocalVariable(name: "oldvalue", scope: !1305, file: !1, line: 340, type: !144)
!1313 = !DILocalVariable(name: "o", scope: !1305, file: !1, line: 341, type: !175)
!1314 = !DILocalVariable(name: "new", scope: !1305, file: !1, line: 341, type: !175)
!1315 = !DILocation(line: 339, column: 30, scope: !1305)
!1316 = !DILocation(line: 339, column: 43, scope: !1305)
!1317 = !DILocation(line: 340, column: 5, scope: !1305)
!1318 = !DILocation(line: 343, column: 27, scope: !1305)
!1319 = !DILocation(line: 343, column: 33, scope: !1305)
!1320 = !DILocation(line: 343, column: 30, scope: !1305)
!1321 = !DILocation(line: 343, column: 9, scope: !1305)
!1322 = !DILocation(line: 341, column: 11, scope: !1305)
!1323 = !DILocation(line: 344, column: 11, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1305, file: !1, line: 344, column: 9)
!1325 = !DILocation(line: 344, column: 19, scope: !1324)
!1326 = !DILocation(line: 344, column: 22, scope: !1324)
!1327 = !DILocation(line: 344, column: 9, scope: !1305)
!1328 = !DILocation(line: 340, column: 15, scope: !1305)
!1329 = !DILocation(line: 345, column: 9, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1305, file: !1, line: 345, column: 9)
!1331 = !DILocation(line: 345, column: 55, scope: !1330)
!1332 = !DILocation(line: 345, column: 9, scope: !1305)
!1333 = !DILocation(line: 347, column: 16, scope: !1305)
!1334 = !DILocation(line: 340, column: 22, scope: !1305)
!1335 = !DILocation(line: 348, column: 19, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1305, file: !1, line: 348, column: 9)
!1337 = !DILocation(line: 348, column: 55, scope: !1336)
!1338 = !DILocation(line: 348, column: 43, scope: !1336)
!1339 = !DILocation(line: 348, column: 67, scope: !1336)
!1340 = !DILocation(line: 349, column: 15, scope: !1336)
!1341 = !DILocation(line: 349, column: 31, scope: !1336)
!1342 = !DILocation(line: 349, column: 19, scope: !1336)
!1343 = !DILocation(line: 349, column: 55, scope: !1336)
!1344 = !DILocation(line: 349, column: 43, scope: !1336)
!1345 = !DILocation(line: 348, column: 9, scope: !1305)
!1346 = !DILocation(line: 350, column: 9, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1336, file: !1, line: 349, column: 68)
!1348 = !DILocation(line: 351, column: 9, scope: !1347)
!1349 = !DILocation(line: 353, column: 11, scope: !1305)
!1350 = !DILocation(line: 355, column: 11, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1305, file: !1, line: 355, column: 9)
!1352 = !DILocation(line: 355, column: 17, scope: !1351)
!1353 = !{!439, !345, i64 4}
!1354 = !DILocation(line: 355, column: 26, scope: !1351)
!1355 = !DILocation(line: 355, column: 31, scope: !1351)
!1356 = !DILocation(line: 355, column: 37, scope: !1351)
!1357 = !DILocation(line: 355, column: 46, scope: !1351)
!1358 = !DILocation(line: 355, column: 66, scope: !1351)
!1359 = !DILocation(line: 356, column: 20, scope: !1351)
!1360 = !DILocation(line: 341, column: 15, scope: !1305)
!1361 = !DILocation(line: 360, column: 18, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1351, file: !1, line: 358, column: 5)
!1363 = !DILocation(line: 360, column: 12, scope: !1362)
!1364 = !DILocation(line: 360, column: 16, scope: !1362)
!1365 = !DILocation(line: 361, column: 5, scope: !1362)
!1366 = !DILocation(line: 362, column: 15, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1351, file: !1, line: 361, column: 12)
!1368 = !DILocation(line: 0, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 365, column: 16)
!1370 = distinct !DILexicalBlock(scope: !1367, file: !1, line: 363, column: 13)
!1371 = !DILocation(line: 363, column: 13, scope: !1367)
!1372 = !DILocation(line: 364, column: 13, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 363, column: 16)
!1374 = !DILocation(line: 365, column: 9, scope: !1373)
!1375 = !DILocation(line: 366, column: 13, scope: !1369)
!1376 = !DILocation(line: 0, scope: !1367)
!1377 = !DILocation(line: 369, column: 26, scope: !1305)
!1378 = !DILocation(line: 369, column: 32, scope: !1305)
!1379 = !DILocation(line: 369, column: 29, scope: !1305)
!1380 = !DILocation(line: 369, column: 5, scope: !1305)
!1381 = !DILocation(line: 370, column: 51, scope: !1305)
!1382 = !DILocation(line: 370, column: 48, scope: !1305)
!1383 = !DILocation(line: 370, column: 62, scope: !1305)
!1384 = !DILocation(line: 370, column: 66, scope: !1305)
!1385 = !DILocation(line: 370, column: 5, scope: !1305)
!1386 = !DILocation(line: 371, column: 17, scope: !1305)
!1387 = !DILocation(line: 372, column: 23, scope: !1305)
!1388 = !{!526, !346, i64 72}
!1389 = !DILocation(line: 372, column: 5, scope: !1305)
!1390 = !DILocation(line: 373, column: 5, scope: !1305)
!1391 = !DILocation(line: 374, column: 23, scope: !1305)
!1392 = !{!526, !346, i64 0}
!1393 = !DILocation(line: 374, column: 5, scope: !1305)
!1394 = !DILocation(line: 375, column: 1, scope: !1305)
!1395 = !DILocation(line: 0, scope: !1324)
!1396 = distinct !DISubprogram(name: "incrCommand", scope: !1, file: !1, line: 377, type: !204, isLocal: false, isDefinition: true, scopeLine: 377, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1397)
!1397 = !{!1398}
!1398 = !DILocalVariable(name: "c", arg: 1, scope: !1396, file: !1, line: 377, type: !62)
!1399 = !DILocation(line: 377, column: 26, scope: !1396)
!1400 = !DILocation(line: 378, column: 5, scope: !1396)
!1401 = !DILocation(line: 379, column: 1, scope: !1396)
!1402 = distinct !DISubprogram(name: "decrCommand", scope: !1, file: !1, line: 381, type: !204, isLocal: false, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1403)
!1403 = !{!1404}
!1404 = !DILocalVariable(name: "c", arg: 1, scope: !1402, file: !1, line: 381, type: !62)
!1405 = !DILocation(line: 381, column: 26, scope: !1402)
!1406 = !DILocation(line: 382, column: 5, scope: !1402)
!1407 = !DILocation(line: 383, column: 1, scope: !1402)
!1408 = distinct !DISubprogram(name: "incrbyCommand", scope: !1, file: !1, line: 385, type: !204, isLocal: false, isDefinition: true, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1409)
!1409 = !{!1410, !1411}
!1410 = !DILocalVariable(name: "c", arg: 1, scope: !1408, file: !1, line: 385, type: !62)
!1411 = !DILocalVariable(name: "incr", scope: !1408, file: !1, line: 386, type: !144)
!1412 = !DILocation(line: 385, column: 28, scope: !1408)
!1413 = !DILocation(line: 386, column: 5, scope: !1408)
!1414 = !DILocation(line: 388, column: 44, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1408, file: !1, line: 388, column: 9)
!1416 = !DILocation(line: 388, column: 41, scope: !1415)
!1417 = !DILocation(line: 386, column: 15, scope: !1408)
!1418 = !DILocation(line: 388, column: 9, scope: !1415)
!1419 = !DILocation(line: 388, column: 66, scope: !1415)
!1420 = !DILocation(line: 388, column: 9, scope: !1408)
!1421 = !DILocation(line: 389, column: 23, scope: !1408)
!1422 = !DILocation(line: 389, column: 5, scope: !1408)
!1423 = !DILocation(line: 390, column: 1, scope: !1408)
!1424 = !DILocation(line: 0, scope: !1415)
!1425 = distinct !DISubprogram(name: "decrbyCommand", scope: !1, file: !1, line: 392, type: !204, isLocal: false, isDefinition: true, scopeLine: 392, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1426)
!1426 = !{!1427, !1428}
!1427 = !DILocalVariable(name: "c", arg: 1, scope: !1425, file: !1, line: 392, type: !62)
!1428 = !DILocalVariable(name: "incr", scope: !1425, file: !1, line: 393, type: !144)
!1429 = !DILocation(line: 392, column: 28, scope: !1425)
!1430 = !DILocation(line: 393, column: 5, scope: !1425)
!1431 = !DILocation(line: 395, column: 44, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1425, file: !1, line: 395, column: 9)
!1433 = !DILocation(line: 395, column: 41, scope: !1432)
!1434 = !DILocation(line: 393, column: 15, scope: !1425)
!1435 = !DILocation(line: 395, column: 9, scope: !1432)
!1436 = !DILocation(line: 395, column: 66, scope: !1432)
!1437 = !DILocation(line: 395, column: 9, scope: !1425)
!1438 = !DILocation(line: 396, column: 24, scope: !1425)
!1439 = !DILocation(line: 396, column: 23, scope: !1425)
!1440 = !DILocation(line: 396, column: 5, scope: !1425)
!1441 = !DILocation(line: 397, column: 1, scope: !1425)
!1442 = !DILocation(line: 0, scope: !1432)
!1443 = distinct !DISubprogram(name: "incrbyfloatCommand", scope: !1, file: !1, line: 399, type: !204, isLocal: false, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1444)
!1444 = !{!1445, !1446, !1448, !1449, !1450, !1451}
!1445 = !DILocalVariable(name: "c", arg: 1, scope: !1443, file: !1, line: 399, type: !62)
!1446 = !DILocalVariable(name: "incr", scope: !1443, file: !1, line: 400, type: !1447)
!1447 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1448 = !DILocalVariable(name: "value", scope: !1443, file: !1, line: 400, type: !1447)
!1449 = !DILocalVariable(name: "o", scope: !1443, file: !1, line: 401, type: !175)
!1450 = !DILocalVariable(name: "new", scope: !1443, file: !1, line: 401, type: !175)
!1451 = !DILocalVariable(name: "aux", scope: !1443, file: !1, line: 401, type: !175)
!1452 = !DILocation(line: 399, column: 33, scope: !1443)
!1453 = !DILocation(line: 400, column: 5, scope: !1443)
!1454 = !DILocation(line: 403, column: 27, scope: !1443)
!1455 = !DILocation(line: 403, column: 33, scope: !1443)
!1456 = !DILocation(line: 403, column: 30, scope: !1443)
!1457 = !DILocation(line: 403, column: 9, scope: !1443)
!1458 = !DILocation(line: 401, column: 11, scope: !1443)
!1459 = !DILocation(line: 404, column: 11, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1443, file: !1, line: 404, column: 9)
!1461 = !DILocation(line: 404, column: 19, scope: !1460)
!1462 = !DILocation(line: 404, column: 22, scope: !1460)
!1463 = !DILocation(line: 404, column: 9, scope: !1443)
!1464 = !DILocation(line: 400, column: 23, scope: !1443)
!1465 = !DILocation(line: 405, column: 9, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1443, file: !1, line: 405, column: 9)
!1467 = !DILocation(line: 405, column: 57, scope: !1466)
!1468 = !DILocation(line: 405, column: 65, scope: !1466)
!1469 = !DILocation(line: 406, column: 45, scope: !1466)
!1470 = !DILocation(line: 406, column: 42, scope: !1466)
!1471 = !DILocation(line: 400, column: 17, scope: !1443)
!1472 = !DILocation(line: 406, column: 9, scope: !1466)
!1473 = !DILocation(line: 406, column: 65, scope: !1466)
!1474 = !DILocation(line: 405, column: 9, scope: !1443)
!1475 = !DILocation(line: 409, column: 14, scope: !1443)
!1476 = !{!1477, !1477, i64 0}
!1477 = !{!"long double", !326, i64 0}
!1478 = !DILocation(line: 409, column: 11, scope: !1443)
!1479 = !DILocation(line: 410, column: 9, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1443, file: !1, line: 410, column: 9)
!1481 = !DILocation(line: 410, column: 22, scope: !1480)
!1482 = !DILocation(line: 410, column: 25, scope: !1480)
!1483 = !DILocation(line: 410, column: 9, scope: !1443)
!1484 = !DILocation(line: 411, column: 9, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1480, file: !1, line: 410, column: 39)
!1486 = !DILocation(line: 412, column: 9, scope: !1485)
!1487 = !DILocation(line: 414, column: 44, scope: !1443)
!1488 = !DILocation(line: 414, column: 11, scope: !1443)
!1489 = !DILocation(line: 401, column: 15, scope: !1443)
!1490 = !DILocation(line: 0, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1443, file: !1, line: 415, column: 9)
!1492 = !DILocation(line: 415, column: 9, scope: !1443)
!1493 = !DILocation(line: 416, column: 9, scope: !1491)
!1494 = !DILocation(line: 418, column: 9, scope: !1491)
!1495 = !DILocation(line: 419, column: 26, scope: !1443)
!1496 = !DILocation(line: 419, column: 32, scope: !1443)
!1497 = !DILocation(line: 419, column: 29, scope: !1443)
!1498 = !DILocation(line: 419, column: 5, scope: !1443)
!1499 = !DILocation(line: 420, column: 56, scope: !1443)
!1500 = !DILocation(line: 420, column: 53, scope: !1443)
!1501 = !DILocation(line: 420, column: 67, scope: !1443)
!1502 = !DILocation(line: 420, column: 71, scope: !1443)
!1503 = !DILocation(line: 420, column: 5, scope: !1443)
!1504 = !DILocation(line: 421, column: 17, scope: !1443)
!1505 = !DILocation(line: 422, column: 5, scope: !1443)
!1506 = !DILocation(line: 427, column: 11, scope: !1443)
!1507 = !DILocation(line: 401, column: 21, scope: !1443)
!1508 = !DILocation(line: 428, column: 5, scope: !1443)
!1509 = !DILocation(line: 429, column: 5, scope: !1443)
!1510 = !DILocation(line: 430, column: 5, scope: !1443)
!1511 = !DILocation(line: 431, column: 1, scope: !1443)
!1512 = !DILocation(line: 0, scope: !1460)
!1513 = distinct !DISubprogram(name: "appendCommand", scope: !1, file: !1, line: 433, type: !204, isLocal: false, isDefinition: true, scopeLine: 433, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1514)
!1514 = !{!1515, !1516, !1517, !1518}
!1515 = !DILocalVariable(name: "c", arg: 1, scope: !1513, file: !1, line: 433, type: !62)
!1516 = !DILocalVariable(name: "totlen", scope: !1513, file: !1, line: 434, type: !187)
!1517 = !DILocalVariable(name: "o", scope: !1513, file: !1, line: 435, type: !175)
!1518 = !DILocalVariable(name: "append", scope: !1513, file: !1, line: 435, type: !175)
!1519 = !DILocation(line: 433, column: 28, scope: !1513)
!1520 = !DILocation(line: 437, column: 27, scope: !1513)
!1521 = !DILocation(line: 437, column: 33, scope: !1513)
!1522 = !DILocation(line: 437, column: 30, scope: !1513)
!1523 = !DILocation(line: 437, column: 9, scope: !1513)
!1524 = !DILocation(line: 435, column: 11, scope: !1513)
!1525 = !DILocation(line: 438, column: 11, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1513, file: !1, line: 438, column: 9)
!1527 = !DILocation(line: 438, column: 9, scope: !1513)
!1528 = !DILocation(line: 440, column: 43, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1526, file: !1, line: 438, column: 20)
!1530 = !DILocation(line: 440, column: 40, scope: !1529)
!1531 = !DILocation(line: 440, column: 22, scope: !1529)
!1532 = !DILocation(line: 440, column: 12, scope: !1529)
!1533 = !DILocation(line: 440, column: 9, scope: !1529)
!1534 = !DILocation(line: 440, column: 20, scope: !1529)
!1535 = !DILocation(line: 441, column: 18, scope: !1529)
!1536 = !DILocation(line: 441, column: 24, scope: !1529)
!1537 = !DILocation(line: 441, column: 21, scope: !1529)
!1538 = !DILocation(line: 441, column: 32, scope: !1529)
!1539 = !DILocation(line: 441, column: 9, scope: !1529)
!1540 = !DILocation(line: 442, column: 25, scope: !1529)
!1541 = !DILocation(line: 442, column: 22, scope: !1529)
!1542 = !DILocation(line: 442, column: 9, scope: !1529)
!1543 = !DILocation(line: 443, column: 37, scope: !1529)
!1544 = !DILocation(line: 443, column: 34, scope: !1529)
!1545 = !DILocation(line: 443, column: 18, scope: !1529)
!1546 = !DILocation(line: 434, column: 12, scope: !1513)
!1547 = !DILocation(line: 444, column: 5, scope: !1529)
!1548 = !DILocation(line: 446, column: 13, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !1, line: 446, column: 13)
!1550 = distinct !DILexicalBlock(scope: !1526, file: !1, line: 444, column: 12)
!1551 = !DILocation(line: 446, column: 13, scope: !1550)
!1552 = !DILocation(line: 450, column: 21, scope: !1550)
!1553 = !DILocation(line: 450, column: 18, scope: !1550)
!1554 = !DILocation(line: 435, column: 15, scope: !1513)
!1555 = !DILocation(line: 451, column: 18, scope: !1550)
!1556 = !DILocation(line: 451, column: 52, scope: !1550)
!1557 = !DILocation(line: 87, column: 39, scope: !734, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 451, column: 37, scope: !1550)
!1559 = !DILocation(line: 88, column: 27, scope: !734, inlinedAt: !1558)
!1560 = !DILocation(line: 88, column: 19, scope: !734, inlinedAt: !1558)
!1561 = !DILocation(line: 89, column: 5, scope: !734, inlinedAt: !1558)
!1562 = !DILocation(line: 91, column: 20, scope: !750, inlinedAt: !1558)
!1563 = !DILocation(line: 91, column: 13, scope: !750, inlinedAt: !1558)
!1564 = !DILocation(line: 93, column: 20, scope: !750, inlinedAt: !1558)
!1565 = !DILocation(line: 93, column: 34, scope: !750, inlinedAt: !1558)
!1566 = !DILocation(line: 93, column: 13, scope: !750, inlinedAt: !1558)
!1567 = !DILocation(line: 95, column: 20, scope: !750, inlinedAt: !1558)
!1568 = !DILocation(line: 95, column: 35, scope: !750, inlinedAt: !1558)
!1569 = !DILocation(line: 95, column: 13, scope: !750, inlinedAt: !1558)
!1570 = !DILocation(line: 97, column: 20, scope: !750, inlinedAt: !1558)
!1571 = !DILocation(line: 97, column: 35, scope: !750, inlinedAt: !1558)
!1572 = !DILocation(line: 97, column: 13, scope: !750, inlinedAt: !1558)
!1573 = !DILocation(line: 99, column: 20, scope: !750, inlinedAt: !1558)
!1574 = !DILocation(line: 99, column: 35, scope: !750, inlinedAt: !1558)
!1575 = !DILocation(line: 99, column: 13, scope: !750, inlinedAt: !1558)
!1576 = !DILocation(line: 0, scope: !750, inlinedAt: !1558)
!1577 = !DILocation(line: 0, scope: !1550)
!1578 = !DILocation(line: 102, column: 1, scope: !734, inlinedAt: !1558)
!1579 = !DILocation(line: 451, column: 36, scope: !1550)
!1580 = !DILocation(line: 37, column: 38, scope: !802, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 452, column: 13, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1550, file: !1, line: 452, column: 13)
!1583 = !DILocation(line: 37, column: 51, scope: !802, inlinedAt: !1581)
!1584 = !DILocation(line: 38, column: 14, scope: !811, inlinedAt: !1581)
!1585 = !DILocation(line: 38, column: 9, scope: !802, inlinedAt: !1581)
!1586 = !DILocation(line: 39, column: 9, scope: !814, inlinedAt: !1581)
!1587 = !DILocation(line: 40, column: 9, scope: !814, inlinedAt: !1581)
!1588 = !DILocation(line: 43, column: 1, scope: !802, inlinedAt: !1581)
!1589 = !DILocation(line: 452, column: 13, scope: !1550)
!1590 = !DILocation(line: 453, column: 13, scope: !1582)
!1591 = !DILocation(line: 42, column: 5, scope: !802, inlinedAt: !1581)
!1592 = !DILocation(line: 456, column: 37, scope: !1550)
!1593 = !DILocation(line: 456, column: 43, scope: !1550)
!1594 = !DILocation(line: 456, column: 40, scope: !1550)
!1595 = !DILocation(line: 456, column: 13, scope: !1550)
!1596 = !DILocation(line: 457, column: 31, scope: !1550)
!1597 = !DILocation(line: 457, column: 43, scope: !1550)
!1598 = !DILocation(line: 87, column: 39, scope: !734, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 457, column: 47, scope: !1550)
!1600 = !DILocation(line: 88, column: 27, scope: !734, inlinedAt: !1599)
!1601 = !DILocation(line: 88, column: 19, scope: !734, inlinedAt: !1599)
!1602 = !DILocation(line: 89, column: 5, scope: !734, inlinedAt: !1599)
!1603 = !DILocation(line: 91, column: 20, scope: !750, inlinedAt: !1599)
!1604 = !DILocation(line: 91, column: 13, scope: !750, inlinedAt: !1599)
!1605 = !DILocation(line: 93, column: 20, scope: !750, inlinedAt: !1599)
!1606 = !DILocation(line: 93, column: 34, scope: !750, inlinedAt: !1599)
!1607 = !DILocation(line: 93, column: 13, scope: !750, inlinedAt: !1599)
!1608 = !DILocation(line: 95, column: 20, scope: !750, inlinedAt: !1599)
!1609 = !DILocation(line: 95, column: 35, scope: !750, inlinedAt: !1599)
!1610 = !DILocation(line: 95, column: 13, scope: !750, inlinedAt: !1599)
!1611 = !DILocation(line: 97, column: 20, scope: !750, inlinedAt: !1599)
!1612 = !DILocation(line: 97, column: 35, scope: !750, inlinedAt: !1599)
!1613 = !DILocation(line: 97, column: 13, scope: !750, inlinedAt: !1599)
!1614 = !DILocation(line: 99, column: 20, scope: !750, inlinedAt: !1599)
!1615 = !DILocation(line: 99, column: 35, scope: !750, inlinedAt: !1599)
!1616 = !DILocation(line: 99, column: 13, scope: !750, inlinedAt: !1599)
!1617 = !DILocation(line: 0, scope: !750, inlinedAt: !1599)
!1618 = !DILocation(line: 102, column: 1, scope: !734, inlinedAt: !1599)
!1619 = !DILocation(line: 457, column: 18, scope: !1550)
!1620 = !DILocation(line: 457, column: 16, scope: !1550)
!1621 = !DILocation(line: 87, column: 39, scope: !734, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 458, column: 18, scope: !1550)
!1623 = !DILocation(line: 88, column: 27, scope: !734, inlinedAt: !1622)
!1624 = !DILocation(line: 88, column: 19, scope: !734, inlinedAt: !1622)
!1625 = !DILocation(line: 89, column: 5, scope: !734, inlinedAt: !1622)
!1626 = !DILocation(line: 91, column: 20, scope: !750, inlinedAt: !1622)
!1627 = !DILocation(line: 91, column: 13, scope: !750, inlinedAt: !1622)
!1628 = !DILocation(line: 93, column: 20, scope: !750, inlinedAt: !1622)
!1629 = !DILocation(line: 93, column: 34, scope: !750, inlinedAt: !1622)
!1630 = !DILocation(line: 93, column: 13, scope: !750, inlinedAt: !1622)
!1631 = !DILocation(line: 95, column: 20, scope: !750, inlinedAt: !1622)
!1632 = !DILocation(line: 95, column: 35, scope: !750, inlinedAt: !1622)
!1633 = !DILocation(line: 95, column: 13, scope: !750, inlinedAt: !1622)
!1634 = !DILocation(line: 97, column: 20, scope: !750, inlinedAt: !1622)
!1635 = !DILocation(line: 97, column: 35, scope: !750, inlinedAt: !1622)
!1636 = !DILocation(line: 97, column: 13, scope: !750, inlinedAt: !1622)
!1637 = !DILocation(line: 99, column: 20, scope: !750, inlinedAt: !1622)
!1638 = !DILocation(line: 99, column: 35, scope: !750, inlinedAt: !1622)
!1639 = !DILocation(line: 99, column: 13, scope: !750, inlinedAt: !1622)
!1640 = !DILocation(line: 0, scope: !750, inlinedAt: !1622)
!1641 = !DILocation(line: 102, column: 1, scope: !734, inlinedAt: !1622)
!1642 = !DILocation(line: 460, column: 26, scope: !1513)
!1643 = !DILocation(line: 460, column: 32, scope: !1513)
!1644 = !DILocation(line: 460, column: 29, scope: !1513)
!1645 = !DILocation(line: 460, column: 5, scope: !1513)
!1646 = !DILocation(line: 461, column: 51, scope: !1513)
!1647 = !DILocation(line: 461, column: 48, scope: !1513)
!1648 = !DILocation(line: 461, column: 62, scope: !1513)
!1649 = !DILocation(line: 461, column: 66, scope: !1513)
!1650 = !DILocation(line: 461, column: 5, scope: !1513)
!1651 = !DILocation(line: 462, column: 17, scope: !1513)
!1652 = !DILocation(line: 463, column: 5, scope: !1513)
!1653 = !DILocation(line: 464, column: 1, scope: !1513)
!1654 = !DILocation(line: 0, scope: !1549)
!1655 = distinct !DISubprogram(name: "strlenCommand", scope: !1, file: !1, line: 466, type: !204, isLocal: false, isDefinition: true, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1656)
!1656 = !{!1657, !1658}
!1657 = !DILocalVariable(name: "c", arg: 1, scope: !1655, file: !1, line: 466, type: !62)
!1658 = !DILocalVariable(name: "o", scope: !1655, file: !1, line: 467, type: !175)
!1659 = !DILocation(line: 466, column: 28, scope: !1655)
!1660 = !DILocation(line: 468, column: 40, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1655, file: !1, line: 468, column: 9)
!1662 = !DILocation(line: 468, column: 37, scope: !1661)
!1663 = !DILocation(line: 468, column: 55, scope: !1661)
!1664 = !DILocation(line: 468, column: 14, scope: !1661)
!1665 = !DILocation(line: 467, column: 11, scope: !1655)
!1666 = !DILocation(line: 468, column: 63, scope: !1661)
!1667 = !DILocation(line: 468, column: 71, scope: !1661)
!1668 = !DILocation(line: 469, column: 9, scope: !1661)
!1669 = !DILocation(line: 468, column: 9, scope: !1655)
!1670 = !DILocation(line: 470, column: 24, scope: !1655)
!1671 = !DILocation(line: 470, column: 5, scope: !1655)
!1672 = !DILocation(line: 471, column: 1, scope: !1655)
!1673 = !DILocation(line: 0, scope: !1661)
