; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/multi.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/multi.c"
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
%struct.redisCommand = type { i8*, {}*, i32, i8*, i32, i32* (%struct.redisCommand*, %struct.redisObject**, i32, i32*)*, i32, i32, i32, i64, i64 }
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
%struct.listIter = type { %struct.listNode*, i32 }
%struct.watchedKey = type { %struct.redisObject*, %struct.redisDb* }

@.str = private unnamed_addr constant [30 x i8] c"MULTI calls can not be nested\00", align 1
@shared = external dso_local local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"DISCARD without MULTI\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"MULTI\00", align 1
@server = external dso_local local_unnamed_addr global %struct.redisServer, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"EXEC without MULTI\00", align 1
@.str.4 = private unnamed_addr constant [89 x i8] c"Transaction contains write commands but instance is now a read-only slave. EXEC aborted.\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"*1\0D\0A$4\0D\0AEXEC\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"clients != NULL\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/multi.c\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"WATCH inside MULTI is not allowed\00", align 1

; Function Attrs: noredzone nounwind
define dso_local void @initClientMultiState(%struct.client* nocapture) local_unnamed_addr #0 !dbg !9 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 0, !dbg !266
  store %struct.multiCmd* null, %struct.multiCmd** %2, align 8, !dbg !267, !tbaa !268
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 1, !dbg !278
  store i32 0, i32* %3, align 8, !dbg !279, !tbaa !280
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 2, !dbg !281
  store i32 0, i32* %4, align 4, !dbg !282, !tbaa !283
  ret void, !dbg !284
}

; Function Attrs: noredzone nounwind
define dso_local void @freeClientMultiState(%struct.client* nocapture readonly) local_unnamed_addr #0 !dbg !285 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, !dbg !296
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 1, !dbg !297
  %4 = load i32, i32* %3, align 8, !dbg !297, !tbaa !280
  %5 = icmp sgt i32 %4, 0, !dbg !298
  br i1 %5, label %6, label %33, !dbg !299

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.multiState, %struct.multiState* %2, i64 0, i32 0
  br label %8, !dbg !299

; <label>:8:                                      ; preds = %6, %26
  %9 = phi i64 [ 0, %6 ], [ %29, %26 ]
  %10 = load %struct.multiCmd*, %struct.multiCmd** %7, align 8, !dbg !300, !tbaa !268
  %11 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %10, i64 %9, i32 1, !dbg !302
  %12 = load i32, i32* %11, align 8, !dbg !302, !tbaa !305
  %13 = icmp sgt i32 %12, 0, !dbg !307
  %14 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %10, i64 %9, i32 0, !dbg !308
  %15 = load %struct.redisObject**, %struct.redisObject*** %14, align 8, !dbg !308, !tbaa !309
  br i1 %13, label %16, label %26, !dbg !310

; <label>:16:                                     ; preds = %8, %16
  %17 = phi i64 [ %21, %16 ], [ 0, %8 ]
  %18 = phi %struct.redisObject** [ %25, %16 ], [ %15, %8 ]
  %19 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %18, i64 %17, !dbg !311
  %20 = load %struct.redisObject*, %struct.redisObject** %19, align 8, !dbg !311, !tbaa !312
  tail call void @decrRefCount(%struct.redisObject* %20) #5, !dbg !313
  %21 = add nuw nsw i64 %17, 1, !dbg !314
  %22 = load i32, i32* %11, align 8, !dbg !302, !tbaa !305
  %23 = sext i32 %22 to i64, !dbg !307
  %24 = icmp slt i64 %21, %23, !dbg !307
  %25 = load %struct.redisObject**, %struct.redisObject*** %14, align 8, !dbg !308, !tbaa !309
  br i1 %24, label %16, label %26, !dbg !310, !llvm.loop !315

; <label>:26:                                     ; preds = %16, %8
  %27 = phi %struct.redisObject** [ %15, %8 ], [ %25, %16 ], !dbg !308
  %28 = bitcast %struct.redisObject** %27 to i8*, !dbg !317
  tail call void @zfree(i8* %28) #5, !dbg !318
  %29 = add nuw nsw i64 %9, 1, !dbg !319
  %30 = load i32, i32* %3, align 8, !dbg !297, !tbaa !280
  %31 = sext i32 %30 to i64, !dbg !298
  %32 = icmp slt i64 %29, %31, !dbg !298
  br i1 %32, label %8, label %33, !dbg !299, !llvm.loop !320

; <label>:33:                                     ; preds = %26, %1
  %34 = bitcast %struct.multiState* %2 to i8**, !dbg !322
  %35 = load i8*, i8** %34, align 8, !dbg !322, !tbaa !268
  tail call void @zfree(i8* %35) #5, !dbg !323
  ret void, !dbg !324
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local void @queueMultiCommand(%struct.client* nocapture) local_unnamed_addr #0 !dbg !325 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, !dbg !331
  %3 = bitcast %struct.multiState* %2 to i8**, !dbg !332
  %4 = load i8*, i8** %3, align 8, !dbg !332, !tbaa !268
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 1, !dbg !333
  %6 = load i32, i32* %5, align 8, !dbg !333, !tbaa !280
  %7 = add nsw i32 %6, 1, !dbg !334
  %8 = sext i32 %7 to i64, !dbg !335
  %9 = mul nsw i64 %8, 24, !dbg !336
  %10 = tail call i8* @zrealloc(i8* %4, i64 %9) #5, !dbg !337
  %11 = bitcast i8* %10 to %struct.multiCmd*, !dbg !337
  store i8* %10, i8** %3, align 8, !dbg !338, !tbaa !268
  %12 = load i32, i32* %5, align 8, !dbg !339, !tbaa !280
  %13 = sext i32 %12 to i64, !dbg !340
  %14 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10, !dbg !341
  %15 = bitcast %struct.redisCommand** %14 to i64*, !dbg !341
  %16 = load i64, i64* %15, align 8, !dbg !341, !tbaa !342
  %17 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %11, i64 %13, i32 2, !dbg !343
  %18 = bitcast %struct.redisCommand** %17 to i64*, !dbg !344
  store i64 %16, i64* %18, align 8, !dbg !344, !tbaa !345
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !346
  %20 = load i32, i32* %19, align 8, !dbg !346, !tbaa !347
  %21 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %11, i64 %13, i32 1, !dbg !348
  store i32 %20, i32* %21, align 8, !dbg !349, !tbaa !305
  %22 = sext i32 %20 to i64, !dbg !350
  %23 = shl nsw i64 %22, 3, !dbg !351
  %24 = tail call i8* @zmalloc(i64 %23) #5, !dbg !352
  %25 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %11, i64 %13, i32 0, !dbg !353
  %26 = bitcast %struct.redisObject*** %25 to i8**, !dbg !354
  store i8* %24, i8** %26, align 8, !dbg !354, !tbaa !309
  %27 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !355
  %28 = bitcast %struct.redisObject*** %27 to i8**, !dbg !355
  %29 = load i8*, i8** %28, align 8, !dbg !355, !tbaa !356
  %30 = load i32, i32* %19, align 8, !dbg !357, !tbaa !347
  %31 = sext i32 %30 to i64, !dbg !358
  %32 = shl nsw i64 %31, 3, !dbg !359
  %33 = tail call i8* @memcpy(i8* %24, i8* %29, i64 %32) #5, !dbg !360
  %34 = load i32, i32* %19, align 8, !dbg !362, !tbaa !347
  %35 = icmp sgt i32 %34, 0, !dbg !365
  br i1 %35, label %36, label %45, !dbg !366

; <label>:36:                                     ; preds = %1, %36
  %37 = phi i64 [ %41, %36 ], [ 0, %1 ]
  %38 = load %struct.redisObject**, %struct.redisObject*** %25, align 8, !dbg !367, !tbaa !309
  %39 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %38, i64 %37, !dbg !368
  %40 = load %struct.redisObject*, %struct.redisObject** %39, align 8, !dbg !368, !tbaa !312
  tail call void @incrRefCount(%struct.redisObject* %40) #5, !dbg !369
  %41 = add nuw nsw i64 %37, 1, !dbg !370
  %42 = load i32, i32* %19, align 8, !dbg !362, !tbaa !347
  %43 = sext i32 %42 to i64, !dbg !365
  %44 = icmp slt i64 %41, %43, !dbg !365
  br i1 %44, label %36, label %45, !dbg !366, !llvm.loop !371

; <label>:45:                                     ; preds = %36, %1
  %46 = load i32, i32* %5, align 8, !dbg !373, !tbaa !280
  %47 = add nsw i32 %46, 1, !dbg !373
  store i32 %47, i32* %5, align 8, !dbg !373, !tbaa !280
  %48 = load %struct.redisCommand*, %struct.redisCommand** %14, align 8, !dbg !374, !tbaa !342
  %49 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %48, i64 0, i32 4, !dbg !375
  %50 = load i32, i32* %49, align 8, !dbg !375, !tbaa !376
  %51 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 2, !dbg !378
  %52 = load i32, i32* %51, align 4, !dbg !379, !tbaa !283
  %53 = or i32 %52, %50, !dbg !379
  store i32 %53, i32* %51, align 4, !dbg !379, !tbaa !283
  ret void, !dbg !380
}

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @incrRefCount(%struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @discardTransaction(%struct.client*) local_unnamed_addr #0 !dbg !381 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, !dbg !388
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 1, !dbg !389
  %4 = load i32, i32* %3, align 8, !dbg !389, !tbaa !280
  %5 = icmp sgt i32 %4, 0, !dbg !390
  br i1 %5, label %6, label %33, !dbg !391

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.multiState, %struct.multiState* %2, i64 0, i32 0
  br label %8, !dbg !391

; <label>:8:                                      ; preds = %26, %6
  %9 = phi i64 [ 0, %6 ], [ %29, %26 ]
  %10 = load %struct.multiCmd*, %struct.multiCmd** %7, align 8, !dbg !392, !tbaa !268
  %11 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %10, i64 %9, i32 1, !dbg !394
  %12 = load i32, i32* %11, align 8, !dbg !394, !tbaa !305
  %13 = icmp sgt i32 %12, 0, !dbg !395
  %14 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %10, i64 %9, i32 0, !dbg !396
  %15 = load %struct.redisObject**, %struct.redisObject*** %14, align 8, !dbg !396, !tbaa !309
  br i1 %13, label %16, label %26, !dbg !397

; <label>:16:                                     ; preds = %8, %16
  %17 = phi i64 [ %21, %16 ], [ 0, %8 ]
  %18 = phi %struct.redisObject** [ %25, %16 ], [ %15, %8 ]
  %19 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %18, i64 %17, !dbg !398
  %20 = load %struct.redisObject*, %struct.redisObject** %19, align 8, !dbg !398, !tbaa !312
  tail call void @decrRefCount(%struct.redisObject* %20) #5, !dbg !399
  %21 = add nuw nsw i64 %17, 1, !dbg !400
  %22 = load i32, i32* %11, align 8, !dbg !394, !tbaa !305
  %23 = sext i32 %22 to i64, !dbg !395
  %24 = icmp slt i64 %21, %23, !dbg !395
  %25 = load %struct.redisObject**, %struct.redisObject*** %14, align 8, !dbg !396, !tbaa !309
  br i1 %24, label %16, label %26, !dbg !397, !llvm.loop !315

; <label>:26:                                     ; preds = %16, %8
  %27 = phi %struct.redisObject** [ %15, %8 ], [ %25, %16 ], !dbg !396
  %28 = bitcast %struct.redisObject** %27 to i8*, !dbg !401
  tail call void @zfree(i8* %28) #5, !dbg !402
  %29 = add nuw nsw i64 %9, 1, !dbg !403
  %30 = load i32, i32* %3, align 8, !dbg !389, !tbaa !280
  %31 = sext i32 %30 to i64, !dbg !390
  %32 = icmp slt i64 %29, %31, !dbg !390
  br i1 %32, label %8, label %33, !dbg !391, !llvm.loop !320

; <label>:33:                                     ; preds = %26, %1
  %34 = bitcast %struct.multiState* %2 to i8**, !dbg !404
  %35 = load i8*, i8** %34, align 8, !dbg !404, !tbaa !268
  tail call void @zfree(i8* %35) #5, !dbg !405
  %36 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 0, !dbg !408
  store %struct.multiCmd* null, %struct.multiCmd** %36, align 8, !dbg !409, !tbaa !268
  store i32 0, i32* %3, align 8, !dbg !410, !tbaa !280
  %37 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 2, !dbg !411
  store i32 0, i32* %37, align 4, !dbg !412, !tbaa !283
  %38 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !413
  %39 = load i32, i32* %38, align 8, !dbg !414, !tbaa !415
  %40 = and i32 %39, -4137, !dbg !414
  store i32 %40, i32* %38, align 8, !dbg !414, !tbaa !415
  tail call void @unwatchAllKeys(%struct.client* nonnull %0) #7, !dbg !416
  ret void, !dbg !417
}

; Function Attrs: noredzone nounwind
define dso_local void @unwatchAllKeys(%struct.client*) local_unnamed_addr #0 !dbg !418 {
  %2 = alloca %struct.listIter, align 8
  %3 = bitcast %struct.listIter* %2 to i8*, !dbg !438
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #6, !dbg !438
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 42, !dbg !439
  %5 = load %struct.list*, %struct.list** %4, align 8, !dbg !439, !tbaa !441
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i64 0, i32 5, !dbg !439
  %7 = load i64, i64* %6, align 8, !dbg !439, !tbaa !442
  %8 = icmp eq i64 %7, 0, !dbg !444
  br i1 %8, label %47, label %9, !dbg !445

; <label>:9:                                      ; preds = %1
  call void @listRewind(%struct.list* %5, %struct.listIter* nonnull %2) #5, !dbg !447
  %10 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #5, !dbg !448
  %11 = icmp eq %struct.listNode* %10, null, !dbg !450
  br i1 %11, label %47, label %12, !dbg !450

; <label>:12:                                     ; preds = %9
  %13 = bitcast %struct.client* %0 to i8*
  br label %14, !dbg !450

; <label>:14:                                     ; preds = %12, %42
  %15 = phi %struct.listNode* [ %10, %12 ], [ %45, %42 ]
  %16 = getelementptr inbounds %struct.listNode, %struct.listNode* %15, i64 0, i32 2, !dbg !451
  %17 = load i8*, i8** %16, align 8, !dbg !451, !tbaa !452
  %18 = getelementptr inbounds i8, i8* %17, i64 8, !dbg !455
  %19 = bitcast i8* %18 to %struct.redisDb**, !dbg !455
  %20 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !455, !tbaa !456
  %21 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %20, i64 0, i32 4, !dbg !458
  %22 = load %struct.dict*, %struct.dict** %21, align 8, !dbg !458, !tbaa !459
  %23 = bitcast i8* %17 to %struct.redisObject**, !dbg !461
  %24 = bitcast i8* %17 to i8**, !dbg !461
  %25 = load i8*, i8** %24, align 8, !dbg !461, !tbaa !462
  %26 = call i8* @dictFetchValue(%struct.dict* %22, i8* %25) #5, !dbg !463
  %27 = bitcast i8* %26 to %struct.list*, !dbg !463
  %28 = icmp eq i8* %26, null, !dbg !465
  br i1 %28, label %29, label %30, !dbg !465

; <label>:29:                                     ; preds = %14
  call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i64 0, i64 0), i32 279) #5, !dbg !465
  call void @_exit(i32 1) #8, !dbg !465
  unreachable, !dbg !465

; <label>:30:                                     ; preds = %14
  %31 = call %struct.listNode* @listSearchKey(%struct.list* %27, i8* %13) #5, !dbg !466
  call void @listDelNode(%struct.list* %27, %struct.listNode* %31) #5, !dbg !467
  %32 = getelementptr inbounds i8, i8* %26, i64 40, !dbg !468
  %33 = bitcast i8* %32 to i64*, !dbg !468
  %34 = load i64, i64* %33, align 8, !dbg !468, !tbaa !442
  %35 = icmp eq i64 %34, 0, !dbg !470
  br i1 %35, label %36, label %42, !dbg !471

; <label>:36:                                     ; preds = %30
  %37 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !472, !tbaa !456
  %38 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %37, i64 0, i32 4, !dbg !473
  %39 = load %struct.dict*, %struct.dict** %38, align 8, !dbg !473, !tbaa !459
  %40 = load i8*, i8** %24, align 8, !dbg !474, !tbaa !462
  %41 = call i32 @dictDelete(%struct.dict* %39, i8* %40) #5, !dbg !475
  br label %42, !dbg !475

; <label>:42:                                     ; preds = %36, %30
  %43 = load %struct.list*, %struct.list** %4, align 8, !dbg !476, !tbaa !441
  call void @listDelNode(%struct.list* %43, %struct.listNode* nonnull %15) #5, !dbg !477
  %44 = load %struct.redisObject*, %struct.redisObject** %23, align 8, !dbg !478, !tbaa !462
  call void @decrRefCount(%struct.redisObject* %44) #5, !dbg !479
  call void @zfree(i8* %17) #5, !dbg !480
  %45 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #5, !dbg !448
  %46 = icmp eq %struct.listNode* %45, null, !dbg !450
  br i1 %46, label %47, label %14, !dbg !450, !llvm.loop !481

; <label>:47:                                     ; preds = %42, %9, %1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #6, !dbg !483
  ret void, !dbg !483
}

; Function Attrs: noredzone nounwind
define dso_local void @flagTransaction(%struct.client* nocapture) local_unnamed_addr #0 !dbg !484 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !488
  %3 = load i32, i32* %2, align 8, !dbg !488, !tbaa !415
  %4 = and i32 %3, 8, !dbg !490
  %5 = icmp eq i32 %4, 0, !dbg !490
  br i1 %5, label %8, label %6, !dbg !491

; <label>:6:                                      ; preds = %1
  %7 = or i32 %3, 4096, !dbg !492
  store i32 %7, i32* %2, align 8, !dbg !492, !tbaa !415
  br label %8, !dbg !493

; <label>:8:                                      ; preds = %1, %6
  ret void, !dbg !494
}

; Function Attrs: noredzone nounwind
define dso_local void @multiCommand(%struct.client*) local_unnamed_addr #0 !dbg !495 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !499
  %3 = load i32, i32* %2, align 8, !dbg !499, !tbaa !415
  %4 = and i32 %3, 8, !dbg !501
  %5 = icmp eq i32 %4, 0, !dbg !501
  br i1 %5, label %7, label %6, !dbg !502

; <label>:6:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0)) #5, !dbg !503
  br label %10, !dbg !505

; <label>:7:                                      ; preds = %1
  %8 = or i32 %3, 8, !dbg !506
  store i32 %8, i32* %2, align 8, !dbg !506, !tbaa !415
  %9 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !507, !tbaa !508
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %9) #5, !dbg !510
  br label %10, !dbg !511

; <label>:10:                                     ; preds = %7, %6
  ret void, !dbg !511
}

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @discardCommand(%struct.client*) local_unnamed_addr #0 !dbg !512 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !516
  %3 = load i32, i32* %2, align 8, !dbg !516, !tbaa !415
  %4 = and i32 %3, 8, !dbg !518
  %5 = icmp eq i32 %4, 0, !dbg !518
  br i1 %5, label %6, label %7, !dbg !519

; <label>:6:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !520
  br label %9, !dbg !522

; <label>:7:                                      ; preds = %1
  tail call void @discardTransaction(%struct.client* nonnull %0) #7, !dbg !523
  %8 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !524, !tbaa !508
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %8) #5, !dbg !525
  br label %9, !dbg !526

; <label>:9:                                      ; preds = %7, %6
  ret void, !dbg !526
}

; Function Attrs: noredzone nounwind
define dso_local void @execCommandPropagateMulti(%struct.client* nocapture readonly) local_unnamed_addr #0 !dbg !527 {
  %2 = alloca %struct.redisObject*, align 8
  %3 = bitcast %struct.redisObject** %2 to i8*, !dbg !532
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6, !dbg !532
  %4 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 5) #5, !dbg !533
  store %struct.redisObject* %4, %struct.redisObject** %2, align 8, !dbg !534, !tbaa !312
  %5 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 57), align 8, !dbg !535, !tbaa !536
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !542
  %7 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !542, !tbaa !543
  %8 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %7, i64 0, i32 5, !dbg !544
  %9 = load i32, i32* %8, align 8, !dbg !544, !tbaa !545
  call void @propagate(%struct.redisCommand* %5, i32 %9, %struct.redisObject** nonnull %2, i32 1, i32 3) #5, !dbg !546
  %10 = load %struct.redisObject*, %struct.redisObject** %2, align 8, !dbg !547, !tbaa !312
  call void @decrRefCount(%struct.redisObject* %10) #5, !dbg !548
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6, !dbg !549
  ret void, !dbg !549
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @propagate(%struct.redisCommand*, i32, %struct.redisObject**, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @execCommand(%struct.client*) local_unnamed_addr #0 !dbg !550 {
  %2 = alloca %struct.redisObject*, align 8
  %3 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !567, !tbaa !568
  %4 = icmp ne i8* %3, null, !dbg !569
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !570
  %6 = load i32, i32* %5, align 8, !dbg !570, !tbaa !415
  %7 = and i32 %6, 8, !dbg !572
  %8 = icmp eq i32 %7, 0, !dbg !572
  br i1 %8, label %9, label %10, !dbg !573

; <label>:9:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !574
  br label %128, !dbg !576

; <label>:10:                                     ; preds = %1
  %11 = and i32 %6, 4128, !dbg !577
  %12 = icmp eq i32 %11, 0, !dbg !577
  br i1 %12, label %19, label %13, !dbg !579

; <label>:13:                                     ; preds = %10
  %14 = and i32 %6, 4096, !dbg !580
  %15 = icmp eq i32 %14, 0, !dbg !580
  %16 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 25), align 8, !dbg !582
  %17 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !583
  %18 = select i1 %15, %struct.redisObject* %17, %struct.redisObject* %16, !dbg !584
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %18) #5, !dbg !585
  tail call void @discardTransaction(%struct.client* nonnull %0) #7, !dbg !586
  br label %111, !dbg !587

; <label>:19:                                     ; preds = %10
  %20 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !588, !tbaa !590
  %21 = icmp eq i32 %20, 0, !dbg !591
  %22 = and i1 %4, %21, !dbg !592
  %23 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 211), align 4, !dbg !593
  %24 = icmp ne i32 %23, 0, !dbg !594
  %25 = and i1 %22, %24, !dbg !592
  %26 = and i32 %6, 2, !dbg !595
  %27 = icmp eq i32 %26, 0, !dbg !595
  %28 = and i1 %27, %25, !dbg !592
  br i1 %28, label %29, label %35, !dbg !592

; <label>:29:                                     ; preds = %19
  %30 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 2, !dbg !596
  %31 = load i32, i32* %30, align 4, !dbg !596, !tbaa !283
  %32 = and i32 %31, 1, !dbg !597
  %33 = icmp eq i32 %32, 0, !dbg !597
  br i1 %33, label %35, label %34, !dbg !598

; <label>:34:                                     ; preds = %29
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !599
  tail call void @discardTransaction(%struct.client* nonnull %0) #7, !dbg !601
  br label %111, !dbg !602

; <label>:35:                                     ; preds = %29, %19
  tail call void @unwatchAllKeys(%struct.client* nonnull %0) #7, !dbg !603
  %36 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !604
  %37 = bitcast %struct.redisObject*** %36 to i64*, !dbg !604
  %38 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !606
  %39 = load i32, i32* %38, align 8, !dbg !606, !tbaa !347
  %40 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10, !dbg !608
  %41 = bitcast %struct.redisCommand** %40 to i64*, !dbg !608
  %42 = bitcast %struct.redisObject*** %36 to <2 x i64>*, !dbg !604
  %43 = load <2 x i64>, <2 x i64>* %42, align 8, !dbg !604, !tbaa !312
  %44 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 1, !dbg !610
  %45 = load i32, i32* %44, align 8, !dbg !610, !tbaa !280
  %46 = sext i32 %45 to i64, !dbg !611
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %46) #5, !dbg !612
  %47 = load i32, i32* %44, align 8, !dbg !614, !tbaa !280
  %48 = icmp sgt i32 %47, 0, !dbg !617
  br i1 %48, label %49, label %96, !dbg !618

; <label>:49:                                     ; preds = %35
  %50 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 0
  %51 = bitcast %struct.redisObject** %2 to i8*
  %52 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %53 = load %struct.multiCmd*, %struct.multiCmd** %50, align 8, !dbg !619, !tbaa !268
  br label %54, !dbg !618

; <label>:54:                                     ; preds = %49, %78
  %55 = phi %struct.multiCmd* [ %53, %49 ], [ %84, %78 ], !dbg !619
  %56 = phi i64 [ 0, %49 ], [ %92, %78 ]
  %57 = phi i32 [ 0, %49 ], [ %79, %78 ]
  %58 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %55, i64 %56, i32 1, !dbg !621
  %59 = load i32, i32* %58, align 8, !dbg !621, !tbaa !305
  store i32 %59, i32* %38, align 8, !dbg !622, !tbaa !347
  %60 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %55, i64 %56, i32 0, !dbg !623
  %61 = bitcast %struct.redisObject*** %60 to i64*, !dbg !623
  %62 = load i64, i64* %61, align 8, !dbg !623, !tbaa !309
  store i64 %62, i64* %37, align 8, !dbg !624, !tbaa !356
  %63 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %55, i64 %56, i32 2, !dbg !625
  %64 = load %struct.redisCommand*, %struct.redisCommand** %63, align 8, !dbg !625, !tbaa !345
  store %struct.redisCommand* %64, %struct.redisCommand** %40, align 8, !dbg !626, !tbaa !342
  %65 = icmp eq i32 %57, 0, !dbg !627
  br i1 %65, label %66, label %78, !dbg !629

; <label>:66:                                     ; preds = %54
  %67 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %64, i64 0, i32 4, !dbg !630
  %68 = load i32, i32* %67, align 8, !dbg !630, !tbaa !376
  %69 = and i32 %68, 18, !dbg !631
  %70 = icmp eq i32 %69, 0, !dbg !631
  br i1 %70, label %71, label %78, !dbg !632

; <label>:71:                                     ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %51) #6, !dbg !636
  %72 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 5) #5, !dbg !637
  store %struct.redisObject* %72, %struct.redisObject** %2, align 8, !dbg !638, !tbaa !312
  %73 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 57), align 8, !dbg !639, !tbaa !536
  %74 = load %struct.redisDb*, %struct.redisDb** %52, align 8, !dbg !640, !tbaa !543
  %75 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %74, i64 0, i32 5, !dbg !641
  %76 = load i32, i32* %75, align 8, !dbg !641, !tbaa !545
  call void @propagate(%struct.redisCommand* %73, i32 %76, %struct.redisObject** nonnull %2, i32 1, i32 3) #5, !dbg !642
  %77 = load %struct.redisObject*, %struct.redisObject** %2, align 8, !dbg !643, !tbaa !312
  call void @decrRefCount(%struct.redisObject* %77) #5, !dbg !644
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %51) #6, !dbg !645
  br label %78, !dbg !646

; <label>:78:                                     ; preds = %66, %54, %71
  %79 = phi i32 [ %57, %54 ], [ 0, %66 ], [ 1, %71 ], !dbg !647
  %80 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !648, !tbaa !590
  %81 = icmp eq i32 %80, 0, !dbg !649
  %82 = select i1 %81, i32 15, i32 0, !dbg !649
  call void @call(%struct.client* nonnull %0, i32 %82) #5, !dbg !650
  %83 = load i32, i32* %38, align 8, !dbg !651, !tbaa !347
  %84 = load %struct.multiCmd*, %struct.multiCmd** %50, align 8, !dbg !652, !tbaa !268
  %85 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %84, i64 %56, i32 1, !dbg !653
  store i32 %83, i32* %85, align 8, !dbg !654, !tbaa !305
  %86 = load i64, i64* %37, align 8, !dbg !655, !tbaa !356
  %87 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %84, i64 %56, !dbg !656
  %88 = bitcast %struct.multiCmd* %87 to i64*, !dbg !657
  store i64 %86, i64* %88, align 8, !dbg !657, !tbaa !309
  %89 = load i64, i64* %41, align 8, !dbg !658, !tbaa !342
  %90 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %84, i64 %56, i32 2, !dbg !659
  %91 = bitcast %struct.redisCommand** %90 to i64*, !dbg !660
  store i64 %89, i64* %91, align 8, !dbg !660, !tbaa !345
  %92 = add nuw nsw i64 %56, 1, !dbg !661
  %93 = load i32, i32* %44, align 8, !dbg !614, !tbaa !280
  %94 = sext i32 %93 to i64, !dbg !617
  %95 = icmp slt i64 %92, %94, !dbg !617
  br i1 %95, label %54, label %96, !dbg !618, !llvm.loop !662

; <label>:96:                                     ; preds = %78, %35
  %97 = phi i32 [ 0, %35 ], [ %79, %78 ], !dbg !566
  store i32 %39, i32* %38, align 8, !dbg !664, !tbaa !347
  %98 = bitcast %struct.redisObject*** %36 to <2 x i64>*, !dbg !665
  store <2 x i64> %43, <2 x i64>* %98, align 8, !dbg !665, !tbaa !312
  call void @discardTransaction(%struct.client* nonnull %0) #7, !dbg !666
  %99 = icmp eq i32 %97, 0, !dbg !667
  br i1 %99, label %111, label %100, !dbg !668

; <label>:100:                                    ; preds = %96
  %101 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !669, !tbaa !568
  %102 = icmp eq i8* %101, null, !dbg !670
  %103 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !671, !tbaa !672
  %104 = add nsw i64 %103, 1, !dbg !671
  store i64 %104, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !671, !tbaa !672
  %105 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !673, !tbaa !674
  %106 = icmp eq i8* %105, null, !dbg !675
  %107 = or i1 %4, %106, !dbg !676
  %108 = or i1 %102, %107, !dbg !676
  br i1 %108, label %111, label %109, !dbg !676

; <label>:109:                                    ; preds = %100
  %110 = call i64 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !677
  call void @feedReplicationBacklog(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i64 %110) #5, !dbg !678
  br label %111, !dbg !679

; <label>:111:                                    ; preds = %109, %100, %96, %34, %13
  %112 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 42), align 8, !dbg !680, !tbaa !682
  %113 = getelementptr inbounds %struct.list, %struct.list* %112, i64 0, i32 5, !dbg !680
  %114 = load i64, i64* %113, align 8, !dbg !680, !tbaa !442
  %115 = icmp eq i64 %114, 0, !dbg !680
  %116 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !683
  %117 = icmp ne i32 %116, 0, !dbg !684
  %118 = or i1 %115, %117, !dbg !685
  br i1 %118, label %128, label %119, !dbg !685

; <label>:119:                                    ; preds = %111
  %120 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !686
  %121 = load %struct.redisDb*, %struct.redisDb** %120, align 8, !dbg !686, !tbaa !543
  %122 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %121, i64 0, i32 5, !dbg !687
  %123 = load i32, i32* %122, align 8, !dbg !687, !tbaa !545
  %124 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !688
  %125 = load %struct.redisObject**, %struct.redisObject*** %124, align 8, !dbg !688, !tbaa !356
  %126 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !689
  %127 = load i32, i32* %126, align 8, !dbg !689, !tbaa !347
  call void @replicationFeedMonitors(%struct.client* nonnull %0, %struct.list* %112, i32 %123, %struct.redisObject** %125, i32 %127) #5, !dbg !690
  br label %128, !dbg !690

; <label>:128:                                    ; preds = %119, %111, %9
  ret void, !dbg !691
}

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @call(%struct.client*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @feedReplicationBacklog(i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @replicationFeedMonitors(%struct.client*, %struct.list*, i32, %struct.redisObject**, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @watchForKey(%struct.client*, %struct.redisObject*) local_unnamed_addr #0 !dbg !692 {
  %3 = alloca %struct.listIter, align 8
  %4 = bitcast %struct.listIter* %3 to i8*, !dbg !705
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #6, !dbg !705
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 42, !dbg !706
  %6 = load %struct.list*, %struct.list** %5, align 8, !dbg !706, !tbaa !441
  call void @listRewind(%struct.list* %6, %struct.listIter* nonnull %3) #5, !dbg !708
  %7 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #5, !dbg !709
  %8 = icmp eq %struct.listNode* %7, null, !dbg !711
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  br i1 %8, label %27, label %10, !dbg !711

; <label>:10:                                     ; preds = %2, %24
  %11 = phi %struct.listNode* [ %25, %24 ], [ %7, %2 ]
  %12 = getelementptr inbounds %struct.listNode, %struct.listNode* %11, i64 0, i32 2, !dbg !712
  %13 = bitcast i8** %12 to %struct.watchedKey**, !dbg !712
  %14 = load %struct.watchedKey*, %struct.watchedKey** %13, align 8, !dbg !712, !tbaa !452
  %15 = getelementptr inbounds %struct.watchedKey, %struct.watchedKey* %14, i64 0, i32 1, !dbg !715
  %16 = load %struct.redisDb*, %struct.redisDb** %15, align 8, !dbg !715, !tbaa !456
  %17 = load %struct.redisDb*, %struct.redisDb** %9, align 8, !dbg !717, !tbaa !543
  %18 = icmp eq %struct.redisDb* %16, %17, !dbg !718
  br i1 %18, label %19, label %24, !dbg !719

; <label>:19:                                     ; preds = %10
  %20 = getelementptr inbounds %struct.watchedKey, %struct.watchedKey* %14, i64 0, i32 0, !dbg !720
  %21 = load %struct.redisObject*, %struct.redisObject** %20, align 8, !dbg !720, !tbaa !462
  %22 = call i32 @equalStringObjects(%struct.redisObject* %1, %struct.redisObject* %21) #5, !dbg !721
  %23 = icmp eq i32 %22, 0, !dbg !721
  br i1 %23, label %24, label %54, !dbg !722

; <label>:24:                                     ; preds = %19, %10
  %25 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #5, !dbg !709
  %26 = icmp eq %struct.listNode* %25, null, !dbg !711
  br i1 %26, label %27, label %10, !dbg !711, !llvm.loop !723

; <label>:27:                                     ; preds = %24, %2
  %28 = load %struct.redisDb*, %struct.redisDb** %9, align 8, !dbg !725, !tbaa !543
  %29 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %28, i64 0, i32 4, !dbg !726
  %30 = load %struct.dict*, %struct.dict** %29, align 8, !dbg !726, !tbaa !459
  %31 = bitcast %struct.redisObject* %1 to i8*, !dbg !727
  %32 = call i8* @dictFetchValue(%struct.dict* %30, i8* %31) #5, !dbg !728
  %33 = bitcast i8* %32 to %struct.list*, !dbg !728
  %34 = icmp eq i8* %32, null, !dbg !729
  br i1 %34, label %35, label %42, !dbg !731

; <label>:35:                                     ; preds = %27
  %36 = call %struct.list* @listCreate() #5, !dbg !732
  %37 = load %struct.redisDb*, %struct.redisDb** %9, align 8, !dbg !734, !tbaa !543
  %38 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %37, i64 0, i32 4, !dbg !735
  %39 = load %struct.dict*, %struct.dict** %38, align 8, !dbg !735, !tbaa !459
  %40 = bitcast %struct.list* %36 to i8*, !dbg !736
  %41 = call i32 @dictAdd(%struct.dict* %39, i8* %31, i8* %40) #5, !dbg !737
  call void @incrRefCount(%struct.redisObject* %1) #5, !dbg !738
  br label %42, !dbg !739

; <label>:42:                                     ; preds = %27, %35
  %43 = phi %struct.list* [ %33, %27 ], [ %36, %35 ], !dbg !740
  %44 = bitcast %struct.client* %0 to i8*, !dbg !741
  %45 = call %struct.list* @listAddNodeTail(%struct.list* %43, i8* %44) #5, !dbg !742
  %46 = call i8* @zmalloc(i64 16) #5, !dbg !743
  %47 = bitcast i8* %46 to %struct.redisObject**, !dbg !744
  store %struct.redisObject* %1, %struct.redisObject** %47, align 8, !dbg !745, !tbaa !462
  %48 = bitcast %struct.redisDb** %9 to i64*, !dbg !746
  %49 = load i64, i64* %48, align 8, !dbg !746, !tbaa !543
  %50 = getelementptr inbounds i8, i8* %46, i64 8, !dbg !747
  %51 = bitcast i8* %50 to i64*, !dbg !748
  store i64 %49, i64* %51, align 8, !dbg !748, !tbaa !456
  call void @incrRefCount(%struct.redisObject* %1) #5, !dbg !749
  %52 = load %struct.list*, %struct.list** %5, align 8, !dbg !750, !tbaa !441
  %53 = call %struct.list* @listAddNodeTail(%struct.list* %52, i8* %46) #5, !dbg !751
  br label %54, !dbg !752

; <label>:54:                                     ; preds = %19, %42
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #6, !dbg !752
  ret void, !dbg !752
}

; Function Attrs: noredzone
declare dso_local void @listRewind(%struct.list*, %struct.listIter*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listNext(%struct.listIter*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @equalStringObjects(%struct.redisObject*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @dictFetchValue(%struct.dict*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.list* @listCreate() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @dictAdd(%struct.dict*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @_serverAssertWithInfo(%struct.client*, %struct.redisObject*, i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @listDelNode(%struct.list*, %struct.listNode*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listSearchKey(%struct.list*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @dictDelete(%struct.dict*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @touchWatchedKey(%struct.redisDb* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !753 {
  %3 = alloca %struct.listIter, align 8
  %4 = bitcast %struct.listIter* %3 to i8*, !dbg !766
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #6, !dbg !766
  %5 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 4, !dbg !767
  %6 = load %struct.dict*, %struct.dict** %5, align 8, !dbg !767, !tbaa !459
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %6, i64 0, i32 2, i64 0, i32 3, !dbg !767
  %8 = load i64, i64* %7, align 8, !dbg !767, !tbaa !769
  %9 = getelementptr inbounds %struct.dict, %struct.dict* %6, i64 0, i32 2, i64 1, i32 3, !dbg !767
  %10 = load i64, i64* %9, align 8, !dbg !767, !tbaa !769
  %11 = sub i64 0, %10, !dbg !771
  %12 = icmp eq i64 %8, %11, !dbg !771
  br i1 %12, label %31, label %13, !dbg !772

; <label>:13:                                     ; preds = %2
  %14 = bitcast %struct.redisObject* %1 to i8*, !dbg !773
  %15 = tail call i8* @dictFetchValue(%struct.dict* %6, i8* %14) #5, !dbg !774
  %16 = icmp eq i8* %15, null, !dbg !775
  br i1 %16, label %31, label %17, !dbg !777

; <label>:17:                                     ; preds = %13
  %18 = bitcast i8* %15 to %struct.list*, !dbg !774
  call void @listRewind(%struct.list* %18, %struct.listIter* nonnull %3) #5, !dbg !780
  %19 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #5, !dbg !781
  %20 = icmp eq %struct.listNode* %19, null, !dbg !783
  br i1 %20, label %31, label %21, !dbg !783

; <label>:21:                                     ; preds = %17, %21
  %22 = phi %struct.listNode* [ %29, %21 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.listNode, %struct.listNode* %22, i64 0, i32 2, !dbg !784
  %24 = bitcast i8** %23 to %struct.client**, !dbg !784
  %25 = load %struct.client*, %struct.client** %24, align 8, !dbg !784, !tbaa !452
  %26 = getelementptr inbounds %struct.client, %struct.client* %25, i64 0, i32 21, !dbg !786
  %27 = load i32, i32* %26, align 8, !dbg !787, !tbaa !415
  %28 = or i32 %27, 32, !dbg !787
  store i32 %28, i32* %26, align 8, !dbg !787, !tbaa !415
  %29 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #5, !dbg !781
  %30 = icmp eq %struct.listNode* %29, null, !dbg !783
  br i1 %30, label %31, label %21, !dbg !783, !llvm.loop !788

; <label>:31:                                     ; preds = %21, %17, %13, %2
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #6, !dbg !790
  ret void, !dbg !790
}

; Function Attrs: noredzone nounwind
define dso_local void @touchWatchedKeysOnFlush(i32) local_unnamed_addr #0 !dbg !791 {
  %2 = alloca %struct.listIter, align 8
  %3 = alloca %struct.listIter, align 8
  %4 = bitcast %struct.listIter* %2 to i8*, !dbg !804
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #6, !dbg !804
  %5 = bitcast %struct.listIter* %3 to i8*, !dbg !804
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #6, !dbg !804
  %6 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !805, !tbaa !806
  call void @listRewind(%struct.list* %6, %struct.listIter* nonnull %2) #5, !dbg !808
  %7 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #5, !dbg !809
  %8 = icmp eq %struct.listNode* %7, null, !dbg !811
  br i1 %8, label %51, label %9, !dbg !811

; <label>:9:                                      ; preds = %1
  %10 = icmp eq i32 %0, -1
  br label %14, !dbg !811

; <label>:11:                                     ; preds = %48, %14
  %12 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #5, !dbg !809
  %13 = icmp eq %struct.listNode* %12, null, !dbg !811
  br i1 %13, label %51, label %14, !dbg !811

; <label>:14:                                     ; preds = %9, %11
  %15 = phi %struct.listNode* [ %7, %9 ], [ %12, %11 ]
  %16 = getelementptr inbounds %struct.listNode, %struct.listNode* %15, i64 0, i32 2, !dbg !812
  %17 = bitcast i8** %16 to %struct.client**, !dbg !812
  %18 = load %struct.client*, %struct.client** %17, align 8, !dbg !812, !tbaa !452
  %19 = getelementptr inbounds %struct.client, %struct.client* %18, i64 0, i32 42, !dbg !814
  %20 = load %struct.list*, %struct.list** %19, align 8, !dbg !814, !tbaa !441
  call void @listRewind(%struct.list* %20, %struct.listIter* nonnull %3) #5, !dbg !816
  %21 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #5, !dbg !817
  %22 = icmp eq %struct.listNode* %21, null, !dbg !818
  br i1 %22, label %11, label %23, !dbg !818, !llvm.loop !819

; <label>:23:                                     ; preds = %14
  %24 = getelementptr inbounds %struct.client, %struct.client* %18, i64 0, i32 21
  br label %25, !dbg !818

; <label>:25:                                     ; preds = %23, %48
  %26 = phi %struct.listNode* [ %21, %23 ], [ %49, %48 ]
  %27 = getelementptr inbounds %struct.listNode, %struct.listNode* %26, i64 0, i32 2, !dbg !821
  %28 = bitcast i8** %27 to %struct.watchedKey**, !dbg !821
  %29 = load %struct.watchedKey*, %struct.watchedKey** %28, align 8, !dbg !821, !tbaa !452
  %30 = getelementptr inbounds %struct.watchedKey, %struct.watchedKey* %29, i64 0, i32 1
  %31 = load %struct.redisDb*, %struct.redisDb** %30, align 8, !dbg !823, !tbaa !456
  br i1 %10, label %36, label %32, !dbg !825

; <label>:32:                                     ; preds = %25
  %33 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %31, i64 0, i32 5, !dbg !826
  %34 = load i32, i32* %33, align 8, !dbg !826, !tbaa !545
  %35 = icmp eq i32 %34, %0, !dbg !827
  br i1 %35, label %36, label %48, !dbg !828

; <label>:36:                                     ; preds = %25, %32
  %37 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %31, i64 0, i32 0, !dbg !829
  %38 = load %struct.dict*, %struct.dict** %37, align 8, !dbg !829, !tbaa !832
  %39 = getelementptr inbounds %struct.watchedKey, %struct.watchedKey* %29, i64 0, i32 0, !dbg !833
  %40 = load %struct.redisObject*, %struct.redisObject** %39, align 8, !dbg !833, !tbaa !462
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %40, i64 0, i32 2, !dbg !834
  %42 = load i8*, i8** %41, align 8, !dbg !834, !tbaa !835
  %43 = call %struct.dictEntry* @dictFind(%struct.dict* %38, i8* %42) #5, !dbg !837
  %44 = icmp eq %struct.dictEntry* %43, null, !dbg !838
  br i1 %44, label %48, label %45, !dbg !839

; <label>:45:                                     ; preds = %36
  %46 = load i32, i32* %24, align 8, !dbg !840, !tbaa !415
  %47 = or i32 %46, 32, !dbg !840
  store i32 %47, i32* %24, align 8, !dbg !840, !tbaa !415
  br label %48, !dbg !841

; <label>:48:                                     ; preds = %36, %45, %32
  %49 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #5, !dbg !817
  %50 = icmp eq %struct.listNode* %49, null, !dbg !818
  br i1 %50, label %11, label %25, !dbg !818, !llvm.loop !842

; <label>:51:                                     ; preds = %11, %1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #6, !dbg !844
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #6, !dbg !844
  ret void, !dbg !844
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @watchCommand(%struct.client*) local_unnamed_addr #0 !dbg !845 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !850
  %3 = load i32, i32* %2, align 8, !dbg !850, !tbaa !415
  %4 = and i32 %3, 8, !dbg !852
  %5 = icmp eq i32 %4, 0, !dbg !852
  br i1 %5, label %6, label %12, !dbg !853

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !855
  %8 = load i32, i32* %7, align 8, !dbg !855, !tbaa !347
  %9 = icmp sgt i32 %8, 1, !dbg !858
  br i1 %9, label %10, label %22, !dbg !859

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %13, !dbg !859

; <label>:12:                                     ; preds = %1
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !860
  br label %24, !dbg !862

; <label>:13:                                     ; preds = %10, %13
  %14 = phi i64 [ 1, %10 ], [ %18, %13 ]
  %15 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !863, !tbaa !356
  %16 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 %14, !dbg !864
  %17 = load %struct.redisObject*, %struct.redisObject** %16, align 8, !dbg !864, !tbaa !312
  tail call void @watchForKey(%struct.client* nonnull %0, %struct.redisObject* %17) #7, !dbg !865
  %18 = add nuw nsw i64 %14, 1, !dbg !866
  %19 = load i32, i32* %7, align 8, !dbg !855, !tbaa !347
  %20 = sext i32 %19 to i64, !dbg !858
  %21 = icmp slt i64 %18, %20, !dbg !858
  br i1 %21, label %13, label %22, !dbg !859, !llvm.loop !867

; <label>:22:                                     ; preds = %13, %6
  %23 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !869, !tbaa !508
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %23) #5, !dbg !870
  br label %24, !dbg !871

; <label>:24:                                     ; preds = %22, %12
  ret void, !dbg !871
}

; Function Attrs: noredzone nounwind
define dso_local void @unwatchCommand(%struct.client*) local_unnamed_addr #0 !dbg !872 {
  tail call void @unwatchAllKeys(%struct.client* %0) #7, !dbg !876
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !877
  %3 = load i32, i32* %2, align 8, !dbg !878, !tbaa !415
  %4 = and i32 %3, -33, !dbg !878
  store i32 %4, i32* %2, align 8, !dbg !878, !tbaa !415
  %5 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !879, !tbaa !508
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %5) #5, !dbg !880
  ret void, !dbg !881
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone }
attributes #8 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/multi.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "initClientMultiState", scope: !1, file: !1, line: 35, type: !10, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !263)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !14, line: 780, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !14, line: 723, size: 135360, elements: !16)
!16 = !{!17, !23, !25, !130, !141, !146, !151, !152, !153, !154, !156, !178, !179, !180, !181, !182, !183, !185, !186, !189, !190, !191, !192, !193, !194, !195, !196, !201, !202, !203, !204, !205, !206, !207, !208, !212, !213, !217, !218, !234, !235, !252, !253, !254, !255, !256, !257, !258, !259}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !15, file: !14, line: 724, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !19, line: 60, baseType: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !21, line: 105, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !15, file: !14, line: 725, baseType: !24, size: 32, offset: 64)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !15, file: !14, line: 726, baseType: !26, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !14, line: 656, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !14, line: 647, size: 512, elements: !29)
!29 = !{!30, !94, !95, !96, !97, !98, !99, !101}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !28, file: !14, line: 648, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !33, line: 82, baseType: !34)
!33 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !33, line: 76, size: 768, elements: !35)
!35 = !{!36, !61, !62, !92, !93}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !34, file: !33, line: 77, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !33, line: 65, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !33, line: 58, size: 384, elements: !40)
!40 = !{!41, !47, !51, !52, !56, !60}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !39, file: !33, line: 59, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!18, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !39, file: !33, line: 60, baseType: !48, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!4, !4, !45}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !39, file: !33, line: 61, baseType: !48, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !39, file: !33, line: 62, baseType: !53, size: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!24, !4, !45, !45}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !39, file: !33, line: 63, baseType: !57, size: 64, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !4, !4}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !39, file: !33, line: 64, baseType: !57, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !34, file: !33, line: 78, baseType: !4, size: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !34, file: !33, line: 79, baseType: !63, size: 512, offset: 128)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 512, elements: !90)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !33, line: 74, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !33, line: 69, size: 256, elements: !66)
!66 = !{!67, !87, !88, !89}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !65, file: !33, line: 70, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !33, line: 56, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !33, line: 47, size: 192, elements: !72)
!72 = !{!73, !74, !85}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !71, file: !33, line: 48, baseType: !4, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !71, file: !33, line: 54, baseType: !75, size: 64, offset: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !71, file: !33, line: 49, size: 64, elements: !76)
!76 = !{!77, !78, !79, !83}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !75, file: !33, line: 50, baseType: !4, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !75, file: !33, line: 51, baseType: !18, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !75, file: !33, line: 52, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !19, line: 56, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !21, line: 103, baseType: !82)
!82 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !75, file: !33, line: 53, baseType: !84, size: 64)
!84 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !71, file: !33, line: 55, baseType: !86, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !65, file: !33, line: 71, baseType: !22, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !65, file: !33, line: 72, baseType: !22, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !65, file: !33, line: 73, baseType: !22, size: 64, offset: 192)
!90 = !{!91}
!91 = !DISubrange(count: 2)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !34, file: !33, line: 80, baseType: !82, size: 64, offset: 640)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !34, file: !33, line: 81, baseType: !22, size: 64, offset: 704)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !28, file: !14, line: 649, baseType: !31, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !28, file: !14, line: 650, baseType: !31, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !28, file: !14, line: 651, baseType: !31, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !28, file: !14, line: 652, baseType: !31, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !28, file: !14, line: 653, baseType: !24, size: 32, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !28, file: !14, line: 654, baseType: !100, size: 64, offset: 384)
!100 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !28, file: !14, line: 655, baseType: !102, size: 64, offset: 448)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !104, line: 54, baseType: !105)
!104 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !104, line: 47, size: 384, elements: !106)
!106 = !{!107, !116, !117, !121, !125, !129}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !105, file: !104, line: 48, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !104, line: 40, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !104, line: 36, size: 192, elements: !111)
!111 = !{!112, !114, !115}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !110, file: !104, line: 37, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !110, file: !104, line: 38, baseType: !113, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !110, file: !104, line: 39, baseType: !4, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !105, file: !104, line: 49, baseType: !108, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !105, file: !104, line: 50, baseType: !118, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!4, !4}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !105, file: !104, line: 51, baseType: !122, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !4}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !105, file: !104, line: 52, baseType: !126, size: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!24, !4, !4}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !105, file: !104, line: 53, baseType: !22, size: 64, offset: 320)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !15, file: !14, line: 727, baseType: !131, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !14, line: 622, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !14, line: 614, size: 128, elements: !134)
!134 = !{!135, !137, !138, !139, !140}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !133, file: !14, line: 615, baseType: !136, size: 4, flags: DIFlagBitField, extraData: i64 0)
!136 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !133, file: !14, line: 616, baseType: !136, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !133, file: !14, line: 617, baseType: !136, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !133, file: !14, line: 620, baseType: !24, size: 32, offset: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !133, file: !14, line: 621, baseType: !4, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !15, file: !14, line: 728, baseType: !142, size: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !143, line: 43, baseType: !144)
!143 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !15, file: !14, line: 729, baseType: !147, size: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !148, line: 40, baseType: !149)
!148 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !150, line: 129, baseType: !22)
!150 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!151 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !15, file: !14, line: 730, baseType: !142, size: 64, offset: 384)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !15, file: !14, line: 734, baseType: !147, size: 64, offset: 448)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !15, file: !14, line: 735, baseType: !24, size: 32, offset: 512)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !15, file: !14, line: 736, baseType: !155, size: 64, offset: 576)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !15, file: !14, line: 737, baseType: !157, size: 64, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !14, line: 1307, size: 640, elements: !159)
!159 = !{!160, !161, !164, !165, !166, !167, !173, !174, !175, !176, !177}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !158, file: !14, line: 1308, baseType: !144, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !158, file: !14, line: 1309, baseType: !162, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !14, line: 1305, baseType: !10)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !158, file: !14, line: 1310, baseType: !24, size: 32, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !158, file: !14, line: 1311, baseType: !144, size: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !158, file: !14, line: 1312, baseType: !24, size: 32, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !158, file: !14, line: 1315, baseType: !168, size: 64, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !14, line: 1306, baseType: !170)
!170 = !DISubroutineType(types: !171)
!171 = !{!172, !157, !155, !24, !172}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !158, file: !14, line: 1317, baseType: !24, size: 32, offset: 384)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !158, file: !14, line: 1318, baseType: !24, size: 32, offset: 416)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !158, file: !14, line: 1319, baseType: !24, size: 32, offset: 448)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !158, file: !14, line: 1320, baseType: !100, size: 64, offset: 512)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !158, file: !14, line: 1320, baseType: !100, size: 64, offset: 576)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !15, file: !14, line: 737, baseType: !157, size: 64, offset: 704)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !15, file: !14, line: 738, baseType: !24, size: 32, offset: 768)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !15, file: !14, line: 739, baseType: !24, size: 32, offset: 800)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !15, file: !14, line: 740, baseType: !82, size: 64, offset: 832)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !15, file: !14, line: 741, baseType: !102, size: 64, offset: 896)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !15, file: !14, line: 742, baseType: !184, size: 64, offset: 960)
!184 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !15, file: !14, line: 743, baseType: !147, size: 64, offset: 1024)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !15, file: !14, line: 745, baseType: !187, size: 64, offset: 1088)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !188, line: 34, baseType: !82)
!188 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!189 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !15, file: !14, line: 746, baseType: !187, size: 64, offset: 1152)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !15, file: !14, line: 747, baseType: !187, size: 64, offset: 1216)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !15, file: !14, line: 748, baseType: !24, size: 32, offset: 1280)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !15, file: !14, line: 749, baseType: !24, size: 32, offset: 1312)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !15, file: !14, line: 750, baseType: !24, size: 32, offset: 1344)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !15, file: !14, line: 751, baseType: !24, size: 32, offset: 1376)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !15, file: !14, line: 752, baseType: !24, size: 32, offset: 1408)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !15, file: !14, line: 753, baseType: !197, size: 64, offset: 1472)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !198, line: 173, baseType: !199)
!198 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !150, line: 100, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !150, line: 44, baseType: !82)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !15, file: !14, line: 754, baseType: !197, size: 64, offset: 1536)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !15, file: !14, line: 755, baseType: !142, size: 64, offset: 1600)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !15, file: !14, line: 756, baseType: !100, size: 64, offset: 1664)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !15, file: !14, line: 757, baseType: !100, size: 64, offset: 1728)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !15, file: !14, line: 758, baseType: !100, size: 64, offset: 1792)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !15, file: !14, line: 759, baseType: !100, size: 64, offset: 1856)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !15, file: !14, line: 760, baseType: !100, size: 64, offset: 1920)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !15, file: !14, line: 763, baseType: !209, size: 328, offset: 1984)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 328, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 41)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !15, file: !14, line: 764, baseType: !24, size: 32, offset: 2336)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !15, file: !14, line: 765, baseType: !214, size: 368, offset: 2368)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 368, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 46)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !15, file: !14, line: 766, baseType: !24, size: 32, offset: 2752)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !15, file: !14, line: 767, baseType: !219, size: 256, offset: 2816)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !14, line: 673, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !14, line: 665, size: 256, elements: !221)
!221 = !{!222, !230, !231, !232, !233}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !220, file: !14, line: 666, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !14, line: 663, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !14, line: 659, size: 192, elements: !226)
!226 = !{!227, !228, !229}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !225, file: !14, line: 660, baseType: !155, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !225, file: !14, line: 661, baseType: !24, size: 32, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !225, file: !14, line: 662, baseType: !157, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !220, file: !14, line: 667, baseType: !24, size: 32, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !220, file: !14, line: 668, baseType: !24, size: 32, offset: 96)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !220, file: !14, line: 671, baseType: !24, size: 32, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !220, file: !14, line: 672, baseType: !187, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !15, file: !14, line: 768, baseType: !24, size: 32, offset: 3072)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !15, file: !14, line: 769, baseType: !236, size: 704, offset: 3136)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !14, line: 703, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !14, line: 677, size: 704, elements: !238)
!238 = !{!239, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !237, file: !14, line: 679, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !14, line: 52, baseType: !100)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !237, file: !14, line: 683, baseType: !31, size: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !237, file: !14, line: 685, baseType: !131, size: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !237, file: !14, line: 689, baseType: !147, size: 64, offset: 192)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !237, file: !14, line: 690, baseType: !131, size: 64, offset: 256)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !237, file: !14, line: 691, baseType: !131, size: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !237, file: !14, line: 692, baseType: !240, size: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !237, file: !14, line: 692, baseType: !240, size: 64, offset: 448)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !237, file: !14, line: 693, baseType: !24, size: 32, offset: 512)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !237, file: !14, line: 696, baseType: !24, size: 32, offset: 544)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !237, file: !14, line: 697, baseType: !100, size: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !237, file: !14, line: 700, baseType: !4, size: 64, offset: 640)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !15, file: !14, line: 770, baseType: !100, size: 64, offset: 3840)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !15, file: !14, line: 771, baseType: !102, size: 64, offset: 3904)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !15, file: !14, line: 772, baseType: !31, size: 64, offset: 3968)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !15, file: !14, line: 773, baseType: !102, size: 64, offset: 4032)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !15, file: !14, line: 774, baseType: !142, size: 64, offset: 4096)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !15, file: !14, line: 775, baseType: !108, size: 64, offset: 4160)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !15, file: !14, line: 778, baseType: !24, size: 32, offset: 4224)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !15, file: !14, line: 779, baseType: !260, size: 131072, offset: 4256)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 131072, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 16384)
!263 = !{!264}
!264 = !DILocalVariable(name: "c", arg: 1, scope: !9, file: !1, line: 35, type: !12)
!265 = !DILocation(line: 35, column: 35, scope: !9)
!266 = !DILocation(line: 36, column: 15, scope: !9)
!267 = !DILocation(line: 36, column: 24, scope: !9)
!268 = !{!269, !274, i64 352}
!269 = !{!"client", !270, i64 0, !273, i64 8, !274, i64 16, !274, i64 24, !274, i64 32, !270, i64 40, !274, i64 48, !270, i64 56, !273, i64 64, !274, i64 72, !274, i64 80, !274, i64 88, !273, i64 96, !273, i64 100, !270, i64 104, !274, i64 112, !275, i64 120, !270, i64 128, !270, i64 136, !270, i64 144, !270, i64 152, !273, i64 160, !273, i64 164, !273, i64 168, !273, i64 172, !273, i64 176, !270, i64 184, !270, i64 192, !274, i64 200, !275, i64 208, !275, i64 216, !275, i64 224, !275, i64 232, !275, i64 240, !271, i64 248, !273, i64 292, !271, i64 296, !273, i64 344, !276, i64 352, !273, i64 384, !277, i64 392, !275, i64 480, !274, i64 488, !274, i64 496, !274, i64 504, !274, i64 512, !274, i64 520, !273, i64 528, !271, i64 532}
!270 = !{!"long", !271, i64 0}
!271 = !{!"omnipotent char", !272, i64 0}
!272 = !{!"Simple C/C++ TBAA"}
!273 = !{!"int", !271, i64 0}
!274 = !{!"any pointer", !271, i64 0}
!275 = !{!"long long", !271, i64 0}
!276 = !{!"multiState", !274, i64 0, !273, i64 8, !273, i64 12, !273, i64 16, !270, i64 24}
!277 = !{!"blockingState", !275, i64 0, !274, i64 8, !274, i64 16, !270, i64 24, !274, i64 32, !274, i64 40, !275, i64 48, !275, i64 56, !273, i64 64, !273, i64 68, !275, i64 72, !274, i64 80}
!278 = !DILocation(line: 37, column: 15, scope: !9)
!279 = !DILocation(line: 37, column: 21, scope: !9)
!280 = !{!269, !273, i64 360}
!281 = !DILocation(line: 38, column: 15, scope: !9)
!282 = !DILocation(line: 38, column: 25, scope: !9)
!283 = !{!269, !273, i64 364}
!284 = !DILocation(line: 39, column: 1, scope: !9)
!285 = distinct !DISubprogram(name: "freeClientMultiState", scope: !1, file: !1, line: 42, type: !10, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !286)
!286 = !{!287, !288, !289, !293}
!287 = !DILocalVariable(name: "c", arg: 1, scope: !285, file: !1, line: 42, type: !12)
!288 = !DILocalVariable(name: "j", scope: !285, file: !1, line: 43, type: !24)
!289 = !DILocalVariable(name: "i", scope: !290, file: !1, line: 46, type: !24)
!290 = distinct !DILexicalBlock(scope: !291, file: !1, line: 45, column: 43)
!291 = distinct !DILexicalBlock(scope: !292, file: !1, line: 45, column: 5)
!292 = distinct !DILexicalBlock(scope: !285, file: !1, line: 45, column: 5)
!293 = !DILocalVariable(name: "mc", scope: !290, file: !1, line: 47, type: !223)
!294 = !DILocation(line: 42, column: 35, scope: !285)
!295 = !DILocation(line: 43, column: 9, scope: !285)
!296 = !DILocation(line: 45, column: 24, scope: !291)
!297 = !DILocation(line: 45, column: 31, scope: !291)
!298 = !DILocation(line: 45, column: 19, scope: !291)
!299 = !DILocation(line: 45, column: 5, scope: !292)
!300 = !DILocation(line: 47, column: 34, scope: !290)
!301 = !DILocation(line: 46, column: 13, scope: !290)
!302 = !DILocation(line: 49, column: 29, scope: !303)
!303 = distinct !DILexicalBlock(scope: !304, file: !1, line: 49, column: 9)
!304 = distinct !DILexicalBlock(scope: !290, file: !1, line: 49, column: 9)
!305 = !{!306, !273, i64 8}
!306 = !{!"multiCmd", !274, i64 0, !273, i64 8, !274, i64 16}
!307 = !DILocation(line: 49, column: 23, scope: !303)
!308 = !DILocation(line: 0, scope: !290)
!309 = !{!306, !274, i64 0}
!310 = !DILocation(line: 49, column: 9, scope: !304)
!311 = !DILocation(line: 50, column: 26, scope: !303)
!312 = !{!274, !274, i64 0}
!313 = !DILocation(line: 50, column: 13, scope: !303)
!314 = !DILocation(line: 49, column: 36, scope: !303)
!315 = distinct !{!315, !310, !316}
!316 = !DILocation(line: 50, column: 37, scope: !304)
!317 = !DILocation(line: 51, column: 15, scope: !290)
!318 = !DILocation(line: 51, column: 9, scope: !290)
!319 = !DILocation(line: 45, column: 39, scope: !291)
!320 = distinct !{!320, !299, !321}
!321 = !DILocation(line: 52, column: 5, scope: !292)
!322 = !DILocation(line: 53, column: 21, scope: !285)
!323 = !DILocation(line: 53, column: 5, scope: !285)
!324 = !DILocation(line: 54, column: 1, scope: !285)
!325 = distinct !DISubprogram(name: "queueMultiCommand", scope: !1, file: !1, line: 57, type: !10, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !326)
!326 = !{!327, !328, !329}
!327 = !DILocalVariable(name: "c", arg: 1, scope: !325, file: !1, line: 57, type: !12)
!328 = !DILocalVariable(name: "mc", scope: !325, file: !1, line: 58, type: !223)
!329 = !DILocalVariable(name: "j", scope: !325, file: !1, line: 59, type: !24)
!330 = !DILocation(line: 57, column: 32, scope: !325)
!331 = !DILocation(line: 61, column: 38, scope: !325)
!332 = !DILocation(line: 61, column: 45, scope: !325)
!333 = !DILocation(line: 62, column: 41, scope: !325)
!334 = !DILocation(line: 62, column: 46, scope: !325)
!335 = !DILocation(line: 62, column: 30, scope: !325)
!336 = !DILocation(line: 62, column: 29, scope: !325)
!337 = !DILocation(line: 61, column: 26, scope: !325)
!338 = !DILocation(line: 61, column: 24, scope: !325)
!339 = !DILocation(line: 63, column: 39, scope: !325)
!340 = !DILocation(line: 63, column: 28, scope: !325)
!341 = !DILocation(line: 64, column: 18, scope: !325)
!342 = !{!269, !274, i64 80}
!343 = !DILocation(line: 64, column: 9, scope: !325)
!344 = !DILocation(line: 64, column: 13, scope: !325)
!345 = !{!306, !274, i64 16}
!346 = !DILocation(line: 65, column: 19, scope: !325)
!347 = !{!269, !273, i64 64}
!348 = !DILocation(line: 65, column: 9, scope: !325)
!349 = !DILocation(line: 65, column: 14, scope: !325)
!350 = !DILocation(line: 66, column: 38, scope: !325)
!351 = !DILocation(line: 66, column: 37, scope: !325)
!352 = !DILocation(line: 66, column: 16, scope: !325)
!353 = !DILocation(line: 66, column: 9, scope: !325)
!354 = !DILocation(line: 66, column: 14, scope: !325)
!355 = !DILocation(line: 67, column: 24, scope: !325)
!356 = !{!269, !274, i64 72}
!357 = !DILocation(line: 67, column: 46, scope: !325)
!358 = !DILocation(line: 67, column: 43, scope: !325)
!359 = !DILocation(line: 67, column: 42, scope: !325)
!360 = !DILocation(line: 67, column: 5, scope: !325)
!361 = !DILocation(line: 59, column: 9, scope: !325)
!362 = !DILocation(line: 68, column: 24, scope: !363)
!363 = distinct !DILexicalBlock(scope: !364, file: !1, line: 68, column: 5)
!364 = distinct !DILexicalBlock(scope: !325, file: !1, line: 68, column: 5)
!365 = !DILocation(line: 68, column: 19, scope: !363)
!366 = !DILocation(line: 68, column: 5, scope: !364)
!367 = !DILocation(line: 69, column: 26, scope: !363)
!368 = !DILocation(line: 69, column: 22, scope: !363)
!369 = !DILocation(line: 69, column: 9, scope: !363)
!370 = !DILocation(line: 68, column: 31, scope: !363)
!371 = distinct !{!371, !366, !372}
!372 = !DILocation(line: 69, column: 33, scope: !364)
!373 = !DILocation(line: 70, column: 20, scope: !325)
!374 = !DILocation(line: 71, column: 31, scope: !325)
!375 = !DILocation(line: 71, column: 36, scope: !325)
!376 = !{!377, !273, i64 32}
!377 = !{!"redisCommand", !274, i64 0, !274, i64 8, !273, i64 16, !274, i64 24, !273, i64 32, !274, i64 40, !273, i64 48, !273, i64 52, !273, i64 56, !275, i64 64, !275, i64 72}
!378 = !DILocation(line: 71, column: 15, scope: !325)
!379 = !DILocation(line: 71, column: 25, scope: !325)
!380 = !DILocation(line: 72, column: 1, scope: !325)
!381 = distinct !DISubprogram(name: "discardTransaction", scope: !1, file: !1, line: 74, type: !10, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !382)
!382 = !{!383}
!383 = !DILocalVariable(name: "c", arg: 1, scope: !381, file: !1, line: 74, type: !12)
!384 = !DILocation(line: 74, column: 33, scope: !381)
!385 = !DILocation(line: 42, column: 35, scope: !285, inlinedAt: !386)
!386 = distinct !DILocation(line: 75, column: 5, scope: !381)
!387 = !DILocation(line: 43, column: 9, scope: !285, inlinedAt: !386)
!388 = !DILocation(line: 45, column: 24, scope: !291, inlinedAt: !386)
!389 = !DILocation(line: 45, column: 31, scope: !291, inlinedAt: !386)
!390 = !DILocation(line: 45, column: 19, scope: !291, inlinedAt: !386)
!391 = !DILocation(line: 45, column: 5, scope: !292, inlinedAt: !386)
!392 = !DILocation(line: 47, column: 34, scope: !290, inlinedAt: !386)
!393 = !DILocation(line: 46, column: 13, scope: !290, inlinedAt: !386)
!394 = !DILocation(line: 49, column: 29, scope: !303, inlinedAt: !386)
!395 = !DILocation(line: 49, column: 23, scope: !303, inlinedAt: !386)
!396 = !DILocation(line: 0, scope: !290, inlinedAt: !386)
!397 = !DILocation(line: 49, column: 9, scope: !304, inlinedAt: !386)
!398 = !DILocation(line: 50, column: 26, scope: !303, inlinedAt: !386)
!399 = !DILocation(line: 50, column: 13, scope: !303, inlinedAt: !386)
!400 = !DILocation(line: 49, column: 36, scope: !303, inlinedAt: !386)
!401 = !DILocation(line: 51, column: 15, scope: !290, inlinedAt: !386)
!402 = !DILocation(line: 51, column: 9, scope: !290, inlinedAt: !386)
!403 = !DILocation(line: 45, column: 39, scope: !291, inlinedAt: !386)
!404 = !DILocation(line: 53, column: 21, scope: !285, inlinedAt: !386)
!405 = !DILocation(line: 53, column: 5, scope: !285, inlinedAt: !386)
!406 = !DILocation(line: 35, column: 35, scope: !9, inlinedAt: !407)
!407 = distinct !DILocation(line: 76, column: 5, scope: !381)
!408 = !DILocation(line: 36, column: 15, scope: !9, inlinedAt: !407)
!409 = !DILocation(line: 36, column: 24, scope: !9, inlinedAt: !407)
!410 = !DILocation(line: 37, column: 21, scope: !9, inlinedAt: !407)
!411 = !DILocation(line: 38, column: 15, scope: !9, inlinedAt: !407)
!412 = !DILocation(line: 38, column: 25, scope: !9, inlinedAt: !407)
!413 = !DILocation(line: 77, column: 8, scope: !381)
!414 = !DILocation(line: 77, column: 14, scope: !381)
!415 = !{!269, !273, i64 160}
!416 = !DILocation(line: 78, column: 5, scope: !381)
!417 = !DILocation(line: 79, column: 1, scope: !381)
!418 = distinct !DISubprogram(name: "unwatchAllKeys", scope: !1, file: !1, line: 265, type: !10, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !419)
!419 = !{!420, !421, !427, !428, !430}
!420 = !DILocalVariable(name: "c", arg: 1, scope: !418, file: !1, line: 265, type: !12)
!421 = !DILocalVariable(name: "li", scope: !418, file: !1, line: 266, type: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !104, line: 45, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !104, line: 42, size: 128, elements: !424)
!424 = !{!425, !426}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !423, file: !104, line: 43, baseType: !108, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !423, file: !104, line: 44, baseType: !24, size: 32, offset: 64)
!427 = !DILocalVariable(name: "ln", scope: !418, file: !1, line: 267, type: !108)
!428 = !DILocalVariable(name: "clients", scope: !429, file: !1, line: 272, type: !102)
!429 = distinct !DILexicalBlock(scope: !418, file: !1, line: 271, column: 33)
!430 = !DILocalVariable(name: "wk", scope: !429, file: !1, line: 273, type: !431)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "watchedKey", file: !1, line: 231, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "watchedKey", file: !1, line: 228, size: 128, elements: !434)
!434 = !{!435, !436}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !433, file: !1, line: 229, baseType: !131, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !433, file: !1, line: 230, baseType: !26, size: 64, offset: 64)
!437 = !DILocation(line: 265, column: 29, scope: !418)
!438 = !DILocation(line: 266, column: 5, scope: !418)
!439 = !DILocation(line: 269, column: 9, scope: !440)
!440 = distinct !DILexicalBlock(scope: !418, file: !1, line: 269, column: 9)
!441 = !{!269, !274, i64 488}
!442 = !{!443, !270, i64 40}
!443 = !{!"list", !274, i64 0, !274, i64 8, !274, i64 16, !274, i64 24, !274, i64 32, !270, i64 40}
!444 = !DILocation(line: 269, column: 37, scope: !440)
!445 = !DILocation(line: 269, column: 9, scope: !418)
!446 = !DILocation(line: 266, column: 14, scope: !418)
!447 = !DILocation(line: 270, column: 5, scope: !418)
!448 = !DILocation(line: 271, column: 17, scope: !418)
!449 = !DILocation(line: 267, column: 15, scope: !418)
!450 = !DILocation(line: 271, column: 5, scope: !418)
!451 = !DILocation(line: 277, column: 14, scope: !429)
!452 = !{!453, !274, i64 16}
!453 = !{!"listNode", !274, i64 0, !274, i64 8, !274, i64 16}
!454 = !DILocation(line: 273, column: 21, scope: !429)
!455 = !DILocation(line: 278, column: 38, scope: !429)
!456 = !{!457, !274, i64 8}
!457 = !{!"watchedKey", !274, i64 0, !274, i64 8}
!458 = !DILocation(line: 278, column: 42, scope: !429)
!459 = !{!460, !274, i64 32}
!460 = !{!"redisDb", !274, i64 0, !274, i64 8, !274, i64 16, !274, i64 24, !274, i64 32, !273, i64 40, !275, i64 48, !274, i64 56}
!461 = !DILocation(line: 278, column: 60, scope: !429)
!462 = !{!457, !274, i64 0}
!463 = !DILocation(line: 278, column: 19, scope: !429)
!464 = !DILocation(line: 272, column: 15, scope: !429)
!465 = !DILocation(line: 279, column: 9, scope: !429)
!466 = !DILocation(line: 280, column: 29, scope: !429)
!467 = !DILocation(line: 280, column: 9, scope: !429)
!468 = !DILocation(line: 282, column: 13, scope: !469)
!469 = distinct !DILexicalBlock(scope: !429, file: !1, line: 282, column: 13)
!470 = !DILocation(line: 282, column: 33, scope: !469)
!471 = !DILocation(line: 282, column: 13, scope: !429)
!472 = !DILocation(line: 283, column: 28, scope: !469)
!473 = !DILocation(line: 283, column: 32, scope: !469)
!474 = !DILocation(line: 283, column: 50, scope: !469)
!475 = !DILocation(line: 283, column: 13, scope: !469)
!476 = !DILocation(line: 285, column: 24, scope: !429)
!477 = !DILocation(line: 285, column: 9, scope: !429)
!478 = !DILocation(line: 286, column: 26, scope: !429)
!479 = !DILocation(line: 286, column: 9, scope: !429)
!480 = !DILocation(line: 287, column: 9, scope: !429)
!481 = distinct !{!481, !450, !482}
!482 = !DILocation(line: 288, column: 5, scope: !418)
!483 = !DILocation(line: 289, column: 1, scope: !418)
!484 = distinct !DISubprogram(name: "flagTransaction", scope: !1, file: !1, line: 83, type: !10, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !485)
!485 = !{!486}
!486 = !DILocalVariable(name: "c", arg: 1, scope: !484, file: !1, line: 83, type: !12)
!487 = !DILocation(line: 83, column: 30, scope: !484)
!488 = !DILocation(line: 84, column: 12, scope: !489)
!489 = distinct !DILexicalBlock(scope: !484, file: !1, line: 84, column: 9)
!490 = !DILocation(line: 84, column: 18, scope: !489)
!491 = !DILocation(line: 84, column: 9, scope: !484)
!492 = !DILocation(line: 85, column: 18, scope: !489)
!493 = !DILocation(line: 85, column: 9, scope: !489)
!494 = !DILocation(line: 86, column: 1, scope: !484)
!495 = distinct !DISubprogram(name: "multiCommand", scope: !1, file: !1, line: 88, type: !10, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !496)
!496 = !{!497}
!497 = !DILocalVariable(name: "c", arg: 1, scope: !495, file: !1, line: 88, type: !12)
!498 = !DILocation(line: 88, column: 27, scope: !495)
!499 = !DILocation(line: 89, column: 12, scope: !500)
!500 = distinct !DILexicalBlock(scope: !495, file: !1, line: 89, column: 9)
!501 = !DILocation(line: 89, column: 18, scope: !500)
!502 = !DILocation(line: 89, column: 9, scope: !495)
!503 = !DILocation(line: 90, column: 9, scope: !504)
!504 = distinct !DILexicalBlock(scope: !500, file: !1, line: 89, column: 34)
!505 = !DILocation(line: 91, column: 9, scope: !504)
!506 = !DILocation(line: 93, column: 14, scope: !495)
!507 = !DILocation(line: 94, column: 23, scope: !495)
!508 = !{!509, !274, i64 8}
!509 = !{!"sharedObjectsStruct", !274, i64 0, !274, i64 8, !274, i64 16, !274, i64 24, !274, i64 32, !274, i64 40, !274, i64 48, !274, i64 56, !274, i64 64, !274, i64 72, !274, i64 80, !274, i64 88, !274, i64 96, !274, i64 104, !274, i64 112, !274, i64 120, !274, i64 128, !274, i64 136, !274, i64 144, !274, i64 152, !274, i64 160, !274, i64 168, !274, i64 176, !274, i64 184, !274, i64 192, !274, i64 200, !274, i64 208, !274, i64 216, !274, i64 224, !274, i64 232, !274, i64 240, !274, i64 248, !274, i64 256, !274, i64 264, !274, i64 272, !274, i64 280, !274, i64 288, !274, i64 296, !274, i64 304, !274, i64 312, !274, i64 320, !274, i64 328, !274, i64 336, !274, i64 344, !274, i64 352, !274, i64 360, !271, i64 368, !271, i64 448, !271, i64 80448, !271, i64 80704, !274, i64 80960, !274, i64 80968}
!510 = !DILocation(line: 94, column: 5, scope: !495)
!511 = !DILocation(line: 95, column: 1, scope: !495)
!512 = distinct !DISubprogram(name: "discardCommand", scope: !1, file: !1, line: 97, type: !10, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !513)
!513 = !{!514}
!514 = !DILocalVariable(name: "c", arg: 1, scope: !512, file: !1, line: 97, type: !12)
!515 = !DILocation(line: 97, column: 29, scope: !512)
!516 = !DILocation(line: 98, column: 14, scope: !517)
!517 = distinct !DILexicalBlock(scope: !512, file: !1, line: 98, column: 9)
!518 = !DILocation(line: 98, column: 20, scope: !517)
!519 = !DILocation(line: 98, column: 9, scope: !512)
!520 = !DILocation(line: 99, column: 9, scope: !521)
!521 = distinct !DILexicalBlock(scope: !517, file: !1, line: 98, column: 37)
!522 = !DILocation(line: 100, column: 9, scope: !521)
!523 = !DILocation(line: 102, column: 5, scope: !512)
!524 = !DILocation(line: 103, column: 23, scope: !512)
!525 = !DILocation(line: 103, column: 5, scope: !512)
!526 = !DILocation(line: 104, column: 1, scope: !512)
!527 = distinct !DISubprogram(name: "execCommandPropagateMulti", scope: !1, file: !1, line: 108, type: !10, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !528)
!528 = !{!529, !530}
!529 = !DILocalVariable(name: "c", arg: 1, scope: !527, file: !1, line: 108, type: !12)
!530 = !DILocalVariable(name: "multistring", scope: !527, file: !1, line: 109, type: !131)
!531 = !DILocation(line: 108, column: 40, scope: !527)
!532 = !DILocation(line: 109, column: 5, scope: !527)
!533 = !DILocation(line: 109, column: 25, scope: !527)
!534 = !DILocation(line: 109, column: 11, scope: !527)
!535 = !DILocation(line: 111, column: 22, scope: !527)
!536 = !{!537, !274, i64 904}
!537 = !{!"redisServer", !273, i64 0, !274, i64 8, !274, i64 16, !274, i64 24, !273, i64 32, !273, i64 36, !273, i64 40, !274, i64 48, !274, i64 56, !274, i64 64, !274, i64 72, !273, i64 80, !273, i64 84, !273, i64 88, !273, i64 92, !274, i64 96, !274, i64 104, !273, i64 112, !273, i64 116, !271, i64 120, !273, i64 164, !270, i64 168, !273, i64 176, !274, i64 184, !274, i64 192, !274, i64 200, !271, i64 208, !273, i64 216, !273, i64 220, !271, i64 224, !273, i64 352, !274, i64 360, !273, i64 368, !271, i64 372, !273, i64 436, !273, i64 440, !271, i64 444, !273, i64 508, !274, i64 512, !274, i64 520, !274, i64 528, !274, i64 536, !274, i64 544, !274, i64 552, !274, i64 560, !273, i64 568, !275, i64 576, !271, i64 584, !274, i64 840, !270, i64 848, !273, i64 856, !273, i64 860, !270, i64 864, !270, i64 872, !270, i64 880, !270, i64 888, !274, i64 896, !274, i64 904, !274, i64 912, !274, i64 920, !274, i64 928, !274, i64 936, !274, i64 944, !274, i64 952, !274, i64 960, !274, i64 968, !274, i64 976, !274, i64 984, !274, i64 992, !270, i64 1000, !275, i64 1008, !275, i64 1016, !275, i64 1024, !538, i64 1032, !275, i64 1040, !275, i64 1048, !275, i64 1056, !275, i64 1064, !275, i64 1072, !275, i64 1080, !275, i64 1088, !275, i64 1096, !275, i64 1104, !270, i64 1112, !275, i64 1120, !538, i64 1128, !275, i64 1136, !275, i64 1144, !275, i64 1152, !275, i64 1160, !274, i64 1168, !275, i64 1176, !275, i64 1184, !270, i64 1192, !539, i64 1200, !275, i64 1240, !275, i64 1248, !270, i64 1256, !270, i64 1264, !271, i64 1272, !273, i64 1728, !273, i64 1732, !273, i64 1736, !273, i64 1740, !273, i64 1744, !270, i64 1752, !273, i64 1760, !273, i64 1764, !273, i64 1768, !273, i64 1772, !270, i64 1776, !270, i64 1784, !273, i64 1792, !273, i64 1796, !273, i64 1800, !273, i64 1804, !271, i64 1808, !273, i64 1880, !273, i64 1884, !274, i64 1888, !273, i64 1896, !273, i64 1900, !270, i64 1904, !270, i64 1912, !270, i64 1920, !270, i64 1928, !273, i64 1936, !273, i64 1940, !274, i64 1944, !274, i64 1952, !273, i64 1960, !273, i64 1964, !270, i64 1968, !270, i64 1976, !270, i64 1984, !270, i64 1992, !273, i64 2000, !270, i64 2008, !273, i64 2016, !273, i64 2020, !273, i64 2024, !273, i64 2028, !273, i64 2032, !273, i64 2036, !273, i64 2040, !273, i64 2044, !273, i64 2048, !273, i64 2052, !273, i64 2056, !273, i64 2060, !273, i64 2064, !274, i64 2072, !275, i64 2080, !275, i64 2088, !273, i64 2096, !274, i64 2104, !273, i64 2112, !274, i64 2120, !273, i64 2128, !273, i64 2132, !270, i64 2136, !270, i64 2144, !270, i64 2152, !270, i64 2160, !273, i64 2168, !273, i64 2172, !273, i64 2176, !273, i64 2180, !273, i64 2184, !273, i64 2188, !271, i64 2192, !540, i64 2200, !541, i64 2224, !274, i64 2240, !273, i64 2248, !274, i64 2256, !273, i64 2264, !271, i64 2268, !271, i64 2309, !275, i64 2352, !275, i64 2360, !273, i64 2368, !273, i64 2372, !274, i64 2376, !275, i64 2384, !275, i64 2392, !275, i64 2400, !275, i64 2408, !270, i64 2416, !270, i64 2424, !273, i64 2432, !273, i64 2436, !273, i64 2440, !273, i64 2444, !273, i64 2448, !274, i64 2456, !274, i64 2464, !273, i64 2472, !273, i64 2476, !274, i64 2480, !274, i64 2488, !273, i64 2496, !273, i64 2500, !270, i64 2504, !270, i64 2512, !270, i64 2520, !273, i64 2528, !273, i64 2532, !274, i64 2536, !270, i64 2544, !273, i64 2552, !273, i64 2556, !273, i64 2560, !270, i64 2568, !273, i64 2576, !273, i64 2580, !273, i64 2584, !274, i64 2592, !271, i64 2600, !275, i64 2648, !273, i64 2656, !274, i64 2664, !274, i64 2672, !273, i64 2680, !274, i64 2688, !273, i64 2696, !273, i64 2700, !275, i64 2704, !273, i64 2712, !273, i64 2716, !273, i64 2720, !273, i64 2724, !275, i64 2728, !273, i64 2736, !271, i64 2740, !274, i64 2768, !274, i64 2776, !273, i64 2784, !273, i64 2788, !273, i64 2792, !273, i64 2796, !270, i64 2800, !270, i64 2808, !270, i64 2816, !270, i64 2824, !270, i64 2832, !270, i64 2840, !270, i64 2848, !270, i64 2856, !273, i64 2864, !273, i64 2868, !270, i64 2872, !270, i64 2880, !273, i64 2888, !275, i64 2896, !274, i64 2904, !274, i64 2912, !273, i64 2920, !273, i64 2924, !275, i64 2928, !274, i64 2936, !274, i64 2944, !273, i64 2952, !273, i64 2956, !273, i64 2960, !273, i64 2964, !274, i64 2968, !273, i64 2976, !273, i64 2980, !273, i64 2984, !274, i64 2992, !274, i64 3000, !274, i64 3008, !274, i64 3016, !275, i64 3024, !275, i64 3032, !275, i64 3040, !273, i64 3048, !273, i64 3052, !273, i64 3056, !273, i64 3060, !273, i64 3064, !273, i64 3068, !273, i64 3072, !273, i64 3076, !273, i64 3080, !273, i64 3084, !273, i64 3088, !275, i64 3096, !274, i64 3104, !274, i64 3112, !274, i64 3120, !273, i64 3128, !273, i64 3132, !273, i64 3136, !270, i64 3144, !274, i64 3152, !274, i64 3160, !274, i64 3168}
!538 = !{!"double", !271, i64 0}
!539 = !{!"malloc_stats", !270, i64 0, !270, i64 8, !270, i64 16, !270, i64 24, !270, i64 32}
!540 = !{!"", !273, i64 0, !270, i64 8, !275, i64 16}
!541 = !{!"redisOpArray", !274, i64 0, !273, i64 8}
!542 = !DILocation(line: 111, column: 38, scope: !527)
!543 = !{!269, !274, i64 16}
!544 = !DILocation(line: 111, column: 42, scope: !527)
!545 = !{!460, !273, i64 40}
!546 = !DILocation(line: 111, column: 5, scope: !527)
!547 = !DILocation(line: 113, column: 18, scope: !527)
!548 = !DILocation(line: 113, column: 5, scope: !527)
!549 = !DILocation(line: 114, column: 1, scope: !527)
!550 = distinct !DISubprogram(name: "execCommand", scope: !1, file: !1, line: 116, type: !10, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !551)
!551 = !{!552, !553, !554, !555, !556, !557, !558, !559, !562}
!552 = !DILocalVariable(name: "c", arg: 1, scope: !550, file: !1, line: 116, type: !12)
!553 = !DILocalVariable(name: "j", scope: !550, file: !1, line: 117, type: !24)
!554 = !DILocalVariable(name: "orig_argv", scope: !550, file: !1, line: 118, type: !155)
!555 = !DILocalVariable(name: "orig_argc", scope: !550, file: !1, line: 119, type: !24)
!556 = !DILocalVariable(name: "orig_cmd", scope: !550, file: !1, line: 120, type: !157)
!557 = !DILocalVariable(name: "must_propagate", scope: !550, file: !1, line: 121, type: !24)
!558 = !DILocalVariable(name: "was_master", scope: !550, file: !1, line: 122, type: !24)
!559 = !DILocalVariable(name: "is_master", scope: !560, file: !1, line: 193, type: !24)
!560 = distinct !DILexicalBlock(scope: !561, file: !1, line: 192, column: 25)
!561 = distinct !DILexicalBlock(scope: !550, file: !1, line: 192, column: 9)
!562 = !DILocalVariable(name: "execcmd", scope: !563, file: !1, line: 201, type: !144)
!563 = distinct !DILexicalBlock(scope: !564, file: !1, line: 200, column: 62)
!564 = distinct !DILexicalBlock(scope: !560, file: !1, line: 200, column: 13)
!565 = !DILocation(line: 116, column: 26, scope: !550)
!566 = !DILocation(line: 121, column: 9, scope: !550)
!567 = !DILocation(line: 122, column: 29, scope: !550)
!568 = !{!537, !274, i64 2464}
!569 = !DILocation(line: 122, column: 40, scope: !550)
!570 = !DILocation(line: 124, column: 14, scope: !571)
!571 = distinct !DILexicalBlock(scope: !550, file: !1, line: 124, column: 9)
!572 = !DILocation(line: 124, column: 20, scope: !571)
!573 = !DILocation(line: 124, column: 9, scope: !550)
!574 = !DILocation(line: 125, column: 9, scope: !575)
!575 = distinct !DILexicalBlock(scope: !571, file: !1, line: 124, column: 37)
!576 = !DILocation(line: 126, column: 9, scope: !575)
!577 = !DILocation(line: 135, column: 18, scope: !578)
!578 = distinct !DILexicalBlock(scope: !550, file: !1, line: 135, column: 9)
!579 = !DILocation(line: 135, column: 9, scope: !550)
!580 = !DILocation(line: 136, column: 30, scope: !581)
!581 = distinct !DILexicalBlock(scope: !578, file: !1, line: 135, column: 58)
!582 = !DILocation(line: 136, column: 59, scope: !581)
!583 = !DILocation(line: 137, column: 58, scope: !581)
!584 = !DILocation(line: 136, column: 21, scope: !581)
!585 = !DILocation(line: 136, column: 9, scope: !581)
!586 = !DILocation(line: 138, column: 9, scope: !581)
!587 = !DILocation(line: 139, column: 9, scope: !581)
!588 = !DILocation(line: 147, column: 17, scope: !589)
!589 = distinct !DILexicalBlock(scope: !550, file: !1, line: 147, column: 9)
!590 = !{!537, !273, i64 860}
!591 = !DILocation(line: 147, column: 10, scope: !589)
!592 = !DILocation(line: 147, column: 25, scope: !589)
!593 = !DILocation(line: 147, column: 56, scope: !589)
!594 = !DILocation(line: 147, column: 49, scope: !589)
!595 = !DILocation(line: 148, column: 20, scope: !589)
!596 = !DILocation(line: 148, column: 50, scope: !589)
!597 = !DILocation(line: 148, column: 60, scope: !589)
!598 = !DILocation(line: 147, column: 9, scope: !550)
!599 = !DILocation(line: 150, column: 9, scope: !600)
!600 = distinct !DILexicalBlock(scope: !589, file: !1, line: 149, column: 5)
!601 = !DILocation(line: 153, column: 9, scope: !600)
!602 = !DILocation(line: 154, column: 9, scope: !600)
!603 = !DILocation(line: 158, column: 5, scope: !550)
!604 = !DILocation(line: 159, column: 20, scope: !550)
!605 = !DILocation(line: 118, column: 12, scope: !550)
!606 = !DILocation(line: 160, column: 20, scope: !550)
!607 = !DILocation(line: 119, column: 9, scope: !550)
!608 = !DILocation(line: 161, column: 19, scope: !550)
!609 = !DILocation(line: 120, column: 26, scope: !550)
!610 = !DILocation(line: 162, column: 38, scope: !550)
!611 = !DILocation(line: 162, column: 28, scope: !550)
!612 = !DILocation(line: 162, column: 5, scope: !550)
!613 = !DILocation(line: 117, column: 9, scope: !550)
!614 = !DILocation(line: 163, column: 31, scope: !615)
!615 = distinct !DILexicalBlock(scope: !616, file: !1, line: 163, column: 5)
!616 = distinct !DILexicalBlock(scope: !550, file: !1, line: 163, column: 5)
!617 = !DILocation(line: 163, column: 19, scope: !615)
!618 = !DILocation(line: 163, column: 5, scope: !616)
!619 = !DILocation(line: 164, column: 29, scope: !620)
!620 = distinct !DILexicalBlock(scope: !615, file: !1, line: 163, column: 43)
!621 = !DILocation(line: 164, column: 41, scope: !620)
!622 = !DILocation(line: 164, column: 17, scope: !620)
!623 = !DILocation(line: 165, column: 41, scope: !620)
!624 = !DILocation(line: 165, column: 17, scope: !620)
!625 = !DILocation(line: 166, column: 40, scope: !620)
!626 = !DILocation(line: 166, column: 16, scope: !620)
!627 = !DILocation(line: 173, column: 14, scope: !628)
!628 = distinct !DILexicalBlock(scope: !620, file: !1, line: 173, column: 13)
!629 = !DILocation(line: 173, column: 29, scope: !628)
!630 = !DILocation(line: 173, column: 42, scope: !628)
!631 = !DILocation(line: 173, column: 48, scope: !628)
!632 = !DILocation(line: 173, column: 13, scope: !620)
!633 = !DILocation(line: 108, column: 40, scope: !527, inlinedAt: !634)
!634 = distinct !DILocation(line: 174, column: 13, scope: !635)
!635 = distinct !DILexicalBlock(scope: !628, file: !1, line: 173, column: 77)
!636 = !DILocation(line: 109, column: 5, scope: !527, inlinedAt: !634)
!637 = !DILocation(line: 109, column: 25, scope: !527, inlinedAt: !634)
!638 = !DILocation(line: 109, column: 11, scope: !527, inlinedAt: !634)
!639 = !DILocation(line: 111, column: 22, scope: !527, inlinedAt: !634)
!640 = !DILocation(line: 111, column: 38, scope: !527, inlinedAt: !634)
!641 = !DILocation(line: 111, column: 42, scope: !527, inlinedAt: !634)
!642 = !DILocation(line: 111, column: 5, scope: !527, inlinedAt: !634)
!643 = !DILocation(line: 113, column: 18, scope: !527, inlinedAt: !634)
!644 = !DILocation(line: 113, column: 5, scope: !527, inlinedAt: !634)
!645 = !DILocation(line: 114, column: 1, scope: !527, inlinedAt: !634)
!646 = !DILocation(line: 176, column: 9, scope: !635)
!647 = !DILocation(line: 0, scope: !635)
!648 = !DILocation(line: 178, column: 23, scope: !620)
!649 = !DILocation(line: 178, column: 16, scope: !620)
!650 = !DILocation(line: 178, column: 9, scope: !620)
!651 = !DILocation(line: 181, column: 41, scope: !620)
!652 = !DILocation(line: 181, column: 19, scope: !620)
!653 = !DILocation(line: 181, column: 31, scope: !620)
!654 = !DILocation(line: 181, column: 36, scope: !620)
!655 = !DILocation(line: 182, column: 41, scope: !620)
!656 = !DILocation(line: 182, column: 9, scope: !620)
!657 = !DILocation(line: 182, column: 36, scope: !620)
!658 = !DILocation(line: 183, column: 40, scope: !620)
!659 = !DILocation(line: 183, column: 31, scope: !620)
!660 = !DILocation(line: 183, column: 35, scope: !620)
!661 = !DILocation(line: 163, column: 39, scope: !615)
!662 = distinct !{!662, !618, !663}
!663 = !DILocation(line: 184, column: 5, scope: !616)
!664 = !DILocation(line: 186, column: 13, scope: !550)
!665 = !DILocation(line: 185, column: 13, scope: !550)
!666 = !DILocation(line: 188, column: 5, scope: !550)
!667 = !DILocation(line: 192, column: 9, scope: !561)
!668 = !DILocation(line: 192, column: 9, scope: !550)
!669 = !DILocation(line: 193, column: 32, scope: !560)
!670 = !DILocation(line: 193, column: 43, scope: !560)
!671 = !DILocation(line: 194, column: 21, scope: !560)
!672 = !{!537, !275, i64 2080}
!673 = !DILocation(line: 200, column: 20, scope: !564)
!674 = !{!537, !274, i64 2376}
!675 = !DILocation(line: 200, column: 13, scope: !564)
!676 = !DILocation(line: 200, column: 33, scope: !564)
!677 = !DILocation(line: 202, column: 44, scope: !563)
!678 = !DILocation(line: 202, column: 13, scope: !563)
!679 = !DILocation(line: 203, column: 9, scope: !563)
!680 = !DILocation(line: 212, column: 9, scope: !681)
!681 = distinct !DILexicalBlock(scope: !550, file: !1, line: 212, column: 9)
!682 = !{!537, !274, i64 544}
!683 = !DILocation(line: 212, column: 48, scope: !681)
!684 = !DILocation(line: 212, column: 41, scope: !681)
!685 = !DILocation(line: 212, column: 37, scope: !681)
!686 = !DILocation(line: 213, column: 54, scope: !681)
!687 = !DILocation(line: 213, column: 58, scope: !681)
!688 = !DILocation(line: 213, column: 64, scope: !681)
!689 = !DILocation(line: 213, column: 72, scope: !681)
!690 = !DILocation(line: 213, column: 9, scope: !681)
!691 = !DILocation(line: 214, column: 1, scope: !550)
!692 = distinct !DISubprogram(name: "watchForKey", scope: !1, file: !1, line: 234, type: !693, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !695)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !12, !131}
!695 = !{!696, !697, !698, !699, !700, !701}
!696 = !DILocalVariable(name: "c", arg: 1, scope: !692, file: !1, line: 234, type: !12)
!697 = !DILocalVariable(name: "key", arg: 2, scope: !692, file: !1, line: 234, type: !131)
!698 = !DILocalVariable(name: "clients", scope: !692, file: !1, line: 235, type: !102)
!699 = !DILocalVariable(name: "li", scope: !692, file: !1, line: 236, type: !422)
!700 = !DILocalVariable(name: "ln", scope: !692, file: !1, line: 237, type: !108)
!701 = !DILocalVariable(name: "wk", scope: !692, file: !1, line: 238, type: !431)
!702 = !DILocation(line: 234, column: 26, scope: !692)
!703 = !DILocation(line: 234, column: 35, scope: !692)
!704 = !DILocation(line: 235, column: 11, scope: !692)
!705 = !DILocation(line: 236, column: 5, scope: !692)
!706 = !DILocation(line: 241, column: 19, scope: !692)
!707 = !DILocation(line: 236, column: 14, scope: !692)
!708 = !DILocation(line: 241, column: 5, scope: !692)
!709 = !DILocation(line: 242, column: 17, scope: !692)
!710 = !DILocation(line: 237, column: 15, scope: !692)
!711 = !DILocation(line: 242, column: 5, scope: !692)
!712 = !DILocation(line: 243, column: 14, scope: !713)
!713 = distinct !DILexicalBlock(scope: !692, file: !1, line: 242, column: 33)
!714 = !DILocation(line: 238, column: 17, scope: !692)
!715 = !DILocation(line: 244, column: 17, scope: !716)
!716 = distinct !DILexicalBlock(scope: !713, file: !1, line: 244, column: 13)
!717 = !DILocation(line: 244, column: 26, scope: !716)
!718 = !DILocation(line: 244, column: 20, scope: !716)
!719 = !DILocation(line: 244, column: 29, scope: !716)
!720 = !DILocation(line: 244, column: 59, scope: !716)
!721 = !DILocation(line: 244, column: 32, scope: !716)
!722 = !DILocation(line: 244, column: 13, scope: !713)
!723 = distinct !{!723, !711, !724}
!724 = !DILocation(line: 246, column: 5, scope: !692)
!725 = !DILocation(line: 248, column: 33, scope: !692)
!726 = !DILocation(line: 248, column: 37, scope: !692)
!727 = !DILocation(line: 248, column: 50, scope: !692)
!728 = !DILocation(line: 248, column: 15, scope: !692)
!729 = !DILocation(line: 249, column: 10, scope: !730)
!730 = distinct !DILexicalBlock(scope: !692, file: !1, line: 249, column: 9)
!731 = !DILocation(line: 249, column: 9, scope: !692)
!732 = !DILocation(line: 250, column: 19, scope: !733)
!733 = distinct !DILexicalBlock(scope: !730, file: !1, line: 249, column: 19)
!734 = !DILocation(line: 251, column: 20, scope: !733)
!735 = !DILocation(line: 251, column: 24, scope: !733)
!736 = !DILocation(line: 251, column: 41, scope: !733)
!737 = !DILocation(line: 251, column: 9, scope: !733)
!738 = !DILocation(line: 252, column: 9, scope: !733)
!739 = !DILocation(line: 253, column: 5, scope: !733)
!740 = !DILocation(line: 0, scope: !733)
!741 = !DILocation(line: 254, column: 29, scope: !692)
!742 = !DILocation(line: 254, column: 5, scope: !692)
!743 = !DILocation(line: 256, column: 10, scope: !692)
!744 = !DILocation(line: 257, column: 9, scope: !692)
!745 = !DILocation(line: 257, column: 13, scope: !692)
!746 = !DILocation(line: 258, column: 17, scope: !692)
!747 = !DILocation(line: 258, column: 9, scope: !692)
!748 = !DILocation(line: 258, column: 12, scope: !692)
!749 = !DILocation(line: 259, column: 5, scope: !692)
!750 = !DILocation(line: 260, column: 24, scope: !692)
!751 = !DILocation(line: 260, column: 5, scope: !692)
!752 = !DILocation(line: 261, column: 1, scope: !692)
!753 = distinct !DISubprogram(name: "touchWatchedKey", scope: !1, file: !1, line: 293, type: !754, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !756)
!754 = !DISubroutineType(types: !755)
!755 = !{null, !26, !131}
!756 = !{!757, !758, !759, !760, !761, !762}
!757 = !DILocalVariable(name: "db", arg: 1, scope: !753, file: !1, line: 293, type: !26)
!758 = !DILocalVariable(name: "key", arg: 2, scope: !753, file: !1, line: 293, type: !131)
!759 = !DILocalVariable(name: "clients", scope: !753, file: !1, line: 294, type: !102)
!760 = !DILocalVariable(name: "li", scope: !753, file: !1, line: 295, type: !422)
!761 = !DILocalVariable(name: "ln", scope: !753, file: !1, line: 296, type: !108)
!762 = !DILocalVariable(name: "c", scope: !763, file: !1, line: 306, type: !12)
!763 = distinct !DILexicalBlock(scope: !753, file: !1, line: 305, column: 33)
!764 = !DILocation(line: 293, column: 31, scope: !753)
!765 = !DILocation(line: 293, column: 41, scope: !753)
!766 = !DILocation(line: 295, column: 5, scope: !753)
!767 = !DILocation(line: 298, column: 9, scope: !768)
!768 = distinct !DILexicalBlock(scope: !753, file: !1, line: 298, column: 9)
!769 = !{!770, !270, i64 24}
!770 = !{!"dictht", !274, i64 0, !270, i64 8, !270, i64 16, !270, i64 24}
!771 = !DILocation(line: 298, column: 36, scope: !768)
!772 = !DILocation(line: 298, column: 9, scope: !753)
!773 = !DILocation(line: 299, column: 48, scope: !753)
!774 = !DILocation(line: 299, column: 15, scope: !753)
!775 = !DILocation(line: 300, column: 10, scope: !776)
!776 = distinct !DILexicalBlock(scope: !753, file: !1, line: 300, column: 9)
!777 = !DILocation(line: 300, column: 9, scope: !753)
!778 = !DILocation(line: 294, column: 11, scope: !753)
!779 = !DILocation(line: 295, column: 14, scope: !753)
!780 = !DILocation(line: 304, column: 5, scope: !753)
!781 = !DILocation(line: 305, column: 17, scope: !753)
!782 = !DILocation(line: 296, column: 15, scope: !753)
!783 = !DILocation(line: 305, column: 5, scope: !753)
!784 = !DILocation(line: 306, column: 21, scope: !763)
!785 = !DILocation(line: 306, column: 17, scope: !763)
!786 = !DILocation(line: 308, column: 12, scope: !763)
!787 = !DILocation(line: 308, column: 18, scope: !763)
!788 = distinct !{!788, !783, !789}
!789 = !DILocation(line: 309, column: 5, scope: !753)
!790 = !DILocation(line: 310, column: 1, scope: !753)
!791 = distinct !DISubprogram(name: "touchWatchedKeysOnFlush", scope: !1, file: !1, line: 316, type: !792, isLocal: false, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !794)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !24}
!794 = !{!795, !796, !797, !798, !799, !801}
!795 = !DILocalVariable(name: "dbid", arg: 1, scope: !791, file: !1, line: 316, type: !24)
!796 = !DILocalVariable(name: "li1", scope: !791, file: !1, line: 317, type: !422)
!797 = !DILocalVariable(name: "li2", scope: !791, file: !1, line: 317, type: !422)
!798 = !DILocalVariable(name: "ln", scope: !791, file: !1, line: 318, type: !108)
!799 = !DILocalVariable(name: "c", scope: !800, file: !1, line: 323, type: !12)
!800 = distinct !DILexicalBlock(scope: !791, file: !1, line: 322, column: 34)
!801 = !DILocalVariable(name: "wk", scope: !802, file: !1, line: 326, type: !431)
!802 = distinct !DILexicalBlock(scope: !800, file: !1, line: 325, column: 38)
!803 = !DILocation(line: 316, column: 34, scope: !791)
!804 = !DILocation(line: 317, column: 5, scope: !791)
!805 = !DILocation(line: 321, column: 23, scope: !791)
!806 = !{!537, !274, i64 512}
!807 = !DILocation(line: 317, column: 14, scope: !791)
!808 = !DILocation(line: 321, column: 5, scope: !791)
!809 = !DILocation(line: 322, column: 17, scope: !791)
!810 = !DILocation(line: 318, column: 15, scope: !791)
!811 = !DILocation(line: 322, column: 5, scope: !791)
!812 = !DILocation(line: 323, column: 21, scope: !800)
!813 = !DILocation(line: 323, column: 17, scope: !800)
!814 = !DILocation(line: 324, column: 23, scope: !800)
!815 = !DILocation(line: 317, column: 19, scope: !791)
!816 = !DILocation(line: 324, column: 9, scope: !800)
!817 = !DILocation(line: 325, column: 21, scope: !800)
!818 = !DILocation(line: 325, column: 9, scope: !800)
!819 = distinct !{!819, !811, !820}
!820 = !DILocation(line: 336, column: 5, scope: !791)
!821 = !DILocation(line: 326, column: 30, scope: !802)
!822 = !DILocation(line: 326, column: 25, scope: !802)
!823 = !DILocation(line: 0, scope: !824)
!824 = distinct !DILexicalBlock(scope: !802, file: !1, line: 331, column: 17)
!825 = !DILocation(line: 331, column: 28, scope: !824)
!826 = !DILocation(line: 331, column: 39, scope: !824)
!827 = !DILocation(line: 331, column: 42, scope: !824)
!828 = !DILocation(line: 331, column: 17, scope: !802)
!829 = !DILocation(line: 332, column: 38, scope: !830)
!830 = distinct !DILexicalBlock(scope: !831, file: !1, line: 332, column: 21)
!831 = distinct !DILexicalBlock(scope: !824, file: !1, line: 331, column: 51)
!832 = !{!460, !274, i64 0}
!833 = !DILocation(line: 332, column: 48, scope: !830)
!834 = !DILocation(line: 332, column: 53, scope: !830)
!835 = !{!836, !274, i64 8}
!836 = !{!"redisObject", !273, i64 0, !273, i64 0, !273, i64 1, !273, i64 4, !274, i64 8}
!837 = !DILocation(line: 332, column: 21, scope: !830)
!838 = !DILocation(line: 332, column: 58, scope: !830)
!839 = !DILocation(line: 332, column: 21, scope: !831)
!840 = !DILocation(line: 333, column: 30, scope: !830)
!841 = !DILocation(line: 333, column: 21, scope: !830)
!842 = distinct !{!842, !818, !843}
!843 = !DILocation(line: 335, column: 9, scope: !800)
!844 = !DILocation(line: 337, column: 1, scope: !791)
!845 = distinct !DISubprogram(name: "watchCommand", scope: !1, file: !1, line: 339, type: !10, isLocal: false, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !846)
!846 = !{!847, !848}
!847 = !DILocalVariable(name: "c", arg: 1, scope: !845, file: !1, line: 339, type: !12)
!848 = !DILocalVariable(name: "j", scope: !845, file: !1, line: 340, type: !24)
!849 = !DILocation(line: 339, column: 27, scope: !845)
!850 = !DILocation(line: 342, column: 12, scope: !851)
!851 = distinct !DILexicalBlock(scope: !845, file: !1, line: 342, column: 9)
!852 = !DILocation(line: 342, column: 18, scope: !851)
!853 = !DILocation(line: 342, column: 9, scope: !845)
!854 = !DILocation(line: 340, column: 9, scope: !845)
!855 = !DILocation(line: 346, column: 24, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !1, line: 346, column: 5)
!857 = distinct !DILexicalBlock(scope: !845, file: !1, line: 346, column: 5)
!858 = !DILocation(line: 346, column: 19, scope: !856)
!859 = !DILocation(line: 346, column: 5, scope: !857)
!860 = !DILocation(line: 343, column: 9, scope: !861)
!861 = distinct !DILexicalBlock(scope: !851, file: !1, line: 342, column: 34)
!862 = !DILocation(line: 344, column: 9, scope: !861)
!863 = !DILocation(line: 347, column: 26, scope: !856)
!864 = !DILocation(line: 347, column: 23, scope: !856)
!865 = !DILocation(line: 347, column: 9, scope: !856)
!866 = !DILocation(line: 346, column: 31, scope: !856)
!867 = distinct !{!867, !859, !868}
!868 = !DILocation(line: 347, column: 33, scope: !857)
!869 = !DILocation(line: 348, column: 23, scope: !845)
!870 = !DILocation(line: 348, column: 5, scope: !845)
!871 = !DILocation(line: 349, column: 1, scope: !845)
!872 = distinct !DISubprogram(name: "unwatchCommand", scope: !1, file: !1, line: 351, type: !10, isLocal: false, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !873)
!873 = !{!874}
!874 = !DILocalVariable(name: "c", arg: 1, scope: !872, file: !1, line: 351, type: !12)
!875 = !DILocation(line: 351, column: 29, scope: !872)
!876 = !DILocation(line: 352, column: 5, scope: !872)
!877 = !DILocation(line: 353, column: 8, scope: !872)
!878 = !DILocation(line: 353, column: 14, scope: !872)
!879 = !DILocation(line: 354, column: 23, scope: !872)
!880 = !DILocation(line: 354, column: 5, scope: !872)
!881 = !DILocation(line: 355, column: 1, scope: !872)
