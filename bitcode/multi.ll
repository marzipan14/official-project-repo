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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @initClientMultiState(%struct.client* nocapture) local_unnamed_addr #0 !dbg !9 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 0, !dbg !266
  store %struct.multiCmd* null, %struct.multiCmd** %2, align 8, !dbg !267, !tbaa !268
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 1, !dbg !278
  store i32 0, i32* %3, align 8, !dbg !279, !tbaa !280
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 2, !dbg !281
  store i32 0, i32* %4, align 4, !dbg !282, !tbaa !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !380
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  %36 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 0, !dbg !409
  store %struct.multiCmd* null, %struct.multiCmd** %36, align 8, !dbg !410, !tbaa !268
  store i32 0, i32* %3, align 8, !dbg !411, !tbaa !280
  %37 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 2, !dbg !412
  store i32 0, i32* %37, align 4, !dbg !413, !tbaa !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  %38 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !415
  %39 = load i32, i32* %38, align 8, !dbg !416, !tbaa !417
  %40 = and i32 %39, -4137, !dbg !416
  store i32 %40, i32* %38, align 8, !dbg !416, !tbaa !417
  tail call void @unwatchAllKeys(%struct.client* nonnull %0) #7, !dbg !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  ret void, !dbg !419
}

; Function Attrs: noredzone nounwind
define dso_local void @unwatchAllKeys(%struct.client*) local_unnamed_addr #0 !dbg !420 {
  %2 = alloca %struct.listIter, align 8
  %3 = bitcast %struct.listIter* %2 to i8*, !dbg !440
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #6, !dbg !440
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 42, !dbg !441
  %5 = load %struct.list*, %struct.list** %4, align 8, !dbg !441, !tbaa !443
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i64 0, i32 5, !dbg !441
  %7 = load i64, i64* %6, align 8, !dbg !441, !tbaa !444
  %8 = icmp eq i64 %7, 0, !dbg !446
  br i1 %8, label %47, label %9, !dbg !447

; <label>:9:                                      ; preds = %1
  call void @listRewind(%struct.list* %5, %struct.listIter* nonnull %2) #5, !dbg !449
  %10 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #5, !dbg !450
  %11 = icmp eq %struct.listNode* %10, null, !dbg !452
  br i1 %11, label %47, label %12, !dbg !452

; <label>:12:                                     ; preds = %9
  %13 = bitcast %struct.client* %0 to i8*
  br label %14, !dbg !452

; <label>:14:                                     ; preds = %12, %42
  %15 = phi %struct.listNode* [ %10, %12 ], [ %45, %42 ]
  %16 = getelementptr inbounds %struct.listNode, %struct.listNode* %15, i64 0, i32 2, !dbg !453
  %17 = load i8*, i8** %16, align 8, !dbg !453, !tbaa !454
  %18 = getelementptr inbounds i8, i8* %17, i64 8, !dbg !457
  %19 = bitcast i8* %18 to %struct.redisDb**, !dbg !457
  %20 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !457, !tbaa !458
  %21 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %20, i64 0, i32 4, !dbg !460
  %22 = load %struct.dict*, %struct.dict** %21, align 8, !dbg !460, !tbaa !461
  %23 = bitcast i8* %17 to %struct.redisObject**, !dbg !463
  %24 = bitcast i8* %17 to i8**, !dbg !463
  %25 = load i8*, i8** %24, align 8, !dbg !463, !tbaa !464
  %26 = call i8* @dictFetchValue(%struct.dict* %22, i8* %25) #5, !dbg !465
  %27 = bitcast i8* %26 to %struct.list*, !dbg !465
  %28 = icmp eq i8* %26, null, !dbg !467
  br i1 %28, label %29, label %30, !dbg !467

; <label>:29:                                     ; preds = %14
  call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i64 0, i64 0), i32 279) #5, !dbg !467
  call void @_exit(i32 1) #8, !dbg !467
  unreachable, !dbg !467

; <label>:30:                                     ; preds = %14
  %31 = call %struct.listNode* @listSearchKey(%struct.list* %27, i8* %13) #5, !dbg !468
  call void @listDelNode(%struct.list* %27, %struct.listNode* %31) #5, !dbg !469
  %32 = getelementptr inbounds i8, i8* %26, i64 40, !dbg !470
  %33 = bitcast i8* %32 to i64*, !dbg !470
  %34 = load i64, i64* %33, align 8, !dbg !470, !tbaa !444
  %35 = icmp eq i64 %34, 0, !dbg !472
  br i1 %35, label %36, label %42, !dbg !473

; <label>:36:                                     ; preds = %30
  %37 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !474, !tbaa !458
  %38 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %37, i64 0, i32 4, !dbg !475
  %39 = load %struct.dict*, %struct.dict** %38, align 8, !dbg !475, !tbaa !461
  %40 = load i8*, i8** %24, align 8, !dbg !476, !tbaa !464
  %41 = call i32 @dictDelete(%struct.dict* %39, i8* %40) #5, !dbg !477
  br label %42, !dbg !477

; <label>:42:                                     ; preds = %36, %30
  %43 = load %struct.list*, %struct.list** %4, align 8, !dbg !478, !tbaa !443
  call void @listDelNode(%struct.list* %43, %struct.listNode* nonnull %15) #5, !dbg !479
  %44 = load %struct.redisObject*, %struct.redisObject** %23, align 8, !dbg !480, !tbaa !464
  call void @decrRefCount(%struct.redisObject* %44) #5, !dbg !481
  call void @zfree(i8* %17) #5, !dbg !482
  %45 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #5, !dbg !450
  %46 = icmp eq %struct.listNode* %45, null, !dbg !452
  br i1 %46, label %47, label %14, !dbg !452, !llvm.loop !483

; <label>:47:                                     ; preds = %42, %9, %1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #6, !dbg !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  ret void, !dbg !485
}

; Function Attrs: noredzone nounwind
define dso_local void @flagTransaction(%struct.client* nocapture) local_unnamed_addr #0 !dbg !486 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !490
  %3 = load i32, i32* %2, align 8, !dbg !490, !tbaa !417
  %4 = and i32 %3, 8, !dbg !492
  %5 = icmp eq i32 %4, 0, !dbg !492
  br i1 %5, label %8, label %6, !dbg !493

; <label>:6:                                      ; preds = %1
  %7 = or i32 %3, 4096, !dbg !494
  store i32 %7, i32* %2, align 8, !dbg !494, !tbaa !417
  br label %8, !dbg !495

; <label>:8:                                      ; preds = %1, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !496
  ret void, !dbg !496
}

; Function Attrs: noredzone nounwind
define dso_local void @multiCommand(%struct.client*) local_unnamed_addr #0 !dbg !497 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !501
  %3 = load i32, i32* %2, align 8, !dbg !501, !tbaa !417
  %4 = and i32 %3, 8, !dbg !503
  %5 = icmp eq i32 %4, 0, !dbg !503
  br i1 %5, label %7, label %6, !dbg !504

; <label>:6:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0)) #5, !dbg !505
  br label %10, !dbg !507

; <label>:7:                                      ; preds = %1
  %8 = or i32 %3, 8, !dbg !508
  store i32 %8, i32* %2, align 8, !dbg !508, !tbaa !417
  %9 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !509, !tbaa !510
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %9) #5, !dbg !512
  br label %10, !dbg !513

; <label>:10:                                     ; preds = %7, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !513
  ret void, !dbg !513
}

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @discardCommand(%struct.client*) local_unnamed_addr #0 !dbg !514 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !518
  %3 = load i32, i32* %2, align 8, !dbg !518, !tbaa !417
  %4 = and i32 %3, 8, !dbg !520
  %5 = icmp eq i32 %4, 0, !dbg !520
  br i1 %5, label %6, label %7, !dbg !521

; <label>:6:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !522
  br label %9, !dbg !524

; <label>:7:                                      ; preds = %1
  tail call void @discardTransaction(%struct.client* nonnull %0) #7, !dbg !525
  %8 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !526, !tbaa !510
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %8) #5, !dbg !527
  br label %9, !dbg !528

; <label>:9:                                      ; preds = %7, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !528
  ret void, !dbg !528
}

; Function Attrs: noredzone nounwind
define dso_local void @execCommandPropagateMulti(%struct.client* nocapture readonly) local_unnamed_addr #0 !dbg !529 {
  %2 = alloca %struct.redisObject*, align 8
  %3 = bitcast %struct.redisObject** %2 to i8*, !dbg !534
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6, !dbg !534
  %4 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 5) #5, !dbg !535
  store %struct.redisObject* %4, %struct.redisObject** %2, align 8, !dbg !536, !tbaa !312
  %5 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 57), align 8, !dbg !537, !tbaa !538
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !544
  %7 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !544, !tbaa !545
  %8 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %7, i64 0, i32 5, !dbg !546
  %9 = load i32, i32* %8, align 8, !dbg !546, !tbaa !547
  call void @propagate(%struct.redisCommand* %5, i32 %9, %struct.redisObject** nonnull %2, i32 1, i32 3) #5, !dbg !548
  %10 = load %struct.redisObject*, %struct.redisObject** %2, align 8, !dbg !549, !tbaa !312
  call void @decrRefCount(%struct.redisObject* %10) #5, !dbg !550
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6, !dbg !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !551
  ret void, !dbg !551
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @propagate(%struct.redisCommand*, i32, %struct.redisObject**, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @execCommand(%struct.client*) local_unnamed_addr #0 !dbg !552 {
  %2 = alloca %struct.redisObject*, align 8
  %3 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !569, !tbaa !570
  %4 = icmp ne i8* %3, null, !dbg !571
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !572
  %6 = load i32, i32* %5, align 8, !dbg !572, !tbaa !417
  %7 = and i32 %6, 8, !dbg !574
  %8 = icmp eq i32 %7, 0, !dbg !574
  br i1 %8, label %9, label %10, !dbg !575

; <label>:9:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !576
  br label %128, !dbg !578

; <label>:10:                                     ; preds = %1
  %11 = and i32 %6, 4128, !dbg !579
  %12 = icmp eq i32 %11, 0, !dbg !579
  br i1 %12, label %19, label %13, !dbg !581

; <label>:13:                                     ; preds = %10
  %14 = and i32 %6, 4096, !dbg !582
  %15 = icmp eq i32 %14, 0, !dbg !582
  %16 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 25), align 8, !dbg !584
  %17 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !585
  %18 = select i1 %15, %struct.redisObject* %17, %struct.redisObject* %16, !dbg !586
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %18) #5, !dbg !587
  tail call void @discardTransaction(%struct.client* nonnull %0) #7, !dbg !588
  br label %111, !dbg !589

; <label>:19:                                     ; preds = %10
  %20 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !590, !tbaa !592
  %21 = icmp eq i32 %20, 0, !dbg !593
  %22 = and i1 %4, %21, !dbg !594
  %23 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 211), align 4, !dbg !595
  %24 = icmp ne i32 %23, 0, !dbg !596
  %25 = and i1 %22, %24, !dbg !594
  %26 = and i32 %6, 2, !dbg !597
  %27 = icmp eq i32 %26, 0, !dbg !597
  %28 = and i1 %27, %25, !dbg !594
  br i1 %28, label %29, label %35, !dbg !594

; <label>:29:                                     ; preds = %19
  %30 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 2, !dbg !598
  %31 = load i32, i32* %30, align 4, !dbg !598, !tbaa !283
  %32 = and i32 %31, 1, !dbg !599
  %33 = icmp eq i32 %32, 0, !dbg !599
  br i1 %33, label %35, label %34, !dbg !600

; <label>:34:                                     ; preds = %29
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !601
  tail call void @discardTransaction(%struct.client* nonnull %0) #7, !dbg !603
  br label %111, !dbg !604

; <label>:35:                                     ; preds = %29, %19
  tail call void @unwatchAllKeys(%struct.client* nonnull %0) #7, !dbg !605
  %36 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !606
  %37 = bitcast %struct.redisObject*** %36 to i64*, !dbg !606
  %38 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !608
  %39 = load i32, i32* %38, align 8, !dbg !608, !tbaa !347
  %40 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10, !dbg !610
  %41 = bitcast %struct.redisCommand** %40 to i64*, !dbg !610
  %42 = bitcast %struct.redisObject*** %36 to <2 x i64>*, !dbg !606
  %43 = load <2 x i64>, <2 x i64>* %42, align 8, !dbg !606, !tbaa !312
  %44 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 1, !dbg !612
  %45 = load i32, i32* %44, align 8, !dbg !612, !tbaa !280
  %46 = sext i32 %45 to i64, !dbg !613
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %46) #5, !dbg !614
  %47 = load i32, i32* %44, align 8, !dbg !616, !tbaa !280
  %48 = icmp sgt i32 %47, 0, !dbg !619
  br i1 %48, label %49, label %96, !dbg !620

; <label>:49:                                     ; preds = %35
  %50 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 0
  %51 = bitcast %struct.redisObject** %2 to i8*
  %52 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %53 = load %struct.multiCmd*, %struct.multiCmd** %50, align 8, !dbg !621, !tbaa !268
  br label %54, !dbg !620

; <label>:54:                                     ; preds = %49, %78
  %55 = phi %struct.multiCmd* [ %53, %49 ], [ %84, %78 ], !dbg !621
  %56 = phi i64 [ 0, %49 ], [ %92, %78 ]
  %57 = phi i32 [ 0, %49 ], [ %79, %78 ]
  %58 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %55, i64 %56, i32 1, !dbg !623
  %59 = load i32, i32* %58, align 8, !dbg !623, !tbaa !305
  store i32 %59, i32* %38, align 8, !dbg !624, !tbaa !347
  %60 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %55, i64 %56, i32 0, !dbg !625
  %61 = bitcast %struct.redisObject*** %60 to i64*, !dbg !625
  %62 = load i64, i64* %61, align 8, !dbg !625, !tbaa !309
  store i64 %62, i64* %37, align 8, !dbg !626, !tbaa !356
  %63 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %55, i64 %56, i32 2, !dbg !627
  %64 = load %struct.redisCommand*, %struct.redisCommand** %63, align 8, !dbg !627, !tbaa !345
  store %struct.redisCommand* %64, %struct.redisCommand** %40, align 8, !dbg !628, !tbaa !342
  %65 = icmp eq i32 %57, 0, !dbg !629
  br i1 %65, label %66, label %78, !dbg !631

; <label>:66:                                     ; preds = %54
  %67 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %64, i64 0, i32 4, !dbg !632
  %68 = load i32, i32* %67, align 8, !dbg !632, !tbaa !376
  %69 = and i32 %68, 18, !dbg !633
  %70 = icmp eq i32 %69, 0, !dbg !633
  br i1 %70, label %71, label %78, !dbg !634

; <label>:71:                                     ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %51) #6, !dbg !638
  %72 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 5) #5, !dbg !639
  store %struct.redisObject* %72, %struct.redisObject** %2, align 8, !dbg !640, !tbaa !312
  %73 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 57), align 8, !dbg !641, !tbaa !538
  %74 = load %struct.redisDb*, %struct.redisDb** %52, align 8, !dbg !642, !tbaa !545
  %75 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %74, i64 0, i32 5, !dbg !643
  %76 = load i32, i32* %75, align 8, !dbg !643, !tbaa !547
  call void @propagate(%struct.redisCommand* %73, i32 %76, %struct.redisObject** nonnull %2, i32 1, i32 3) #5, !dbg !644
  %77 = load %struct.redisObject*, %struct.redisObject** %2, align 8, !dbg !645, !tbaa !312
  call void @decrRefCount(%struct.redisObject* %77) #5, !dbg !646
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %51) #6, !dbg !647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !647
  br label %78, !dbg !648

; <label>:78:                                     ; preds = %66, %54, %71
  %79 = phi i32 [ %57, %54 ], [ 0, %66 ], [ 1, %71 ], !dbg !649
  %80 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !650, !tbaa !592
  %81 = icmp eq i32 %80, 0, !dbg !651
  %82 = select i1 %81, i32 15, i32 0, !dbg !651
  call void @call(%struct.client* nonnull %0, i32 %82) #5, !dbg !652
  %83 = load i32, i32* %38, align 8, !dbg !653, !tbaa !347
  %84 = load %struct.multiCmd*, %struct.multiCmd** %50, align 8, !dbg !654, !tbaa !268
  %85 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %84, i64 %56, i32 1, !dbg !655
  store i32 %83, i32* %85, align 8, !dbg !656, !tbaa !305
  %86 = load i64, i64* %37, align 8, !dbg !657, !tbaa !356
  %87 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %84, i64 %56, !dbg !658
  %88 = bitcast %struct.multiCmd* %87 to i64*, !dbg !659
  store i64 %86, i64* %88, align 8, !dbg !659, !tbaa !309
  %89 = load i64, i64* %41, align 8, !dbg !660, !tbaa !342
  %90 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %84, i64 %56, i32 2, !dbg !661
  %91 = bitcast %struct.redisCommand** %90 to i64*, !dbg !662
  store i64 %89, i64* %91, align 8, !dbg !662, !tbaa !345
  %92 = add nuw nsw i64 %56, 1, !dbg !663
  %93 = load i32, i32* %44, align 8, !dbg !616, !tbaa !280
  %94 = sext i32 %93 to i64, !dbg !619
  %95 = icmp slt i64 %92, %94, !dbg !619
  br i1 %95, label %54, label %96, !dbg !620, !llvm.loop !664

; <label>:96:                                     ; preds = %78, %35
  %97 = phi i32 [ 0, %35 ], [ %79, %78 ], !dbg !568
  store i32 %39, i32* %38, align 8, !dbg !666, !tbaa !347
  %98 = bitcast %struct.redisObject*** %36 to <2 x i64>*, !dbg !667
  store <2 x i64> %43, <2 x i64>* %98, align 8, !dbg !667, !tbaa !312
  call void @discardTransaction(%struct.client* nonnull %0) #7, !dbg !668
  %99 = icmp eq i32 %97, 0, !dbg !669
  br i1 %99, label %111, label %100, !dbg !670

; <label>:100:                                    ; preds = %96
  %101 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !671, !tbaa !570
  %102 = icmp eq i8* %101, null, !dbg !672
  %103 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !673, !tbaa !674
  %104 = add nsw i64 %103, 1, !dbg !673
  store i64 %104, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !673, !tbaa !674
  %105 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !675, !tbaa !676
  %106 = icmp eq i8* %105, null, !dbg !677
  %107 = or i1 %4, %106, !dbg !678
  %108 = or i1 %102, %107, !dbg !678
  br i1 %108, label %111, label %109, !dbg !678

; <label>:109:                                    ; preds = %100
  %110 = call i64 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !679
  call void @feedReplicationBacklog(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i64 %110) #5, !dbg !680
  br label %111, !dbg !681

; <label>:111:                                    ; preds = %109, %100, %96, %34, %13
  %112 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 42), align 8, !dbg !682, !tbaa !684
  %113 = getelementptr inbounds %struct.list, %struct.list* %112, i64 0, i32 5, !dbg !682
  %114 = load i64, i64* %113, align 8, !dbg !682, !tbaa !444
  %115 = icmp eq i64 %114, 0, !dbg !682
  %116 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !685
  %117 = icmp ne i32 %116, 0, !dbg !686
  %118 = or i1 %115, %117, !dbg !687
  br i1 %118, label %128, label %119, !dbg !687

; <label>:119:                                    ; preds = %111
  %120 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !688
  %121 = load %struct.redisDb*, %struct.redisDb** %120, align 8, !dbg !688, !tbaa !545
  %122 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %121, i64 0, i32 5, !dbg !689
  %123 = load i32, i32* %122, align 8, !dbg !689, !tbaa !547
  %124 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !690
  %125 = load %struct.redisObject**, %struct.redisObject*** %124, align 8, !dbg !690, !tbaa !356
  %126 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !691
  %127 = load i32, i32* %126, align 8, !dbg !691, !tbaa !347
  call void @replicationFeedMonitors(%struct.client* nonnull %0, %struct.list* %112, i32 %123, %struct.redisObject** %125, i32 %127) #5, !dbg !692
  br label %128, !dbg !692

; <label>:128:                                    ; preds = %119, %111, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  ret void, !dbg !693
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
define dso_local void @watchForKey(%struct.client*, %struct.redisObject*) local_unnamed_addr #0 !dbg !694 {
  %3 = alloca %struct.listIter, align 8
  %4 = bitcast %struct.listIter* %3 to i8*, !dbg !707
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #6, !dbg !707
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 42, !dbg !708
  %6 = load %struct.list*, %struct.list** %5, align 8, !dbg !708, !tbaa !443
  call void @listRewind(%struct.list* %6, %struct.listIter* nonnull %3) #5, !dbg !710
  %7 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #5, !dbg !711
  %8 = icmp eq %struct.listNode* %7, null, !dbg !713
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  br i1 %8, label %27, label %10, !dbg !713

; <label>:10:                                     ; preds = %2, %24
  %11 = phi %struct.listNode* [ %25, %24 ], [ %7, %2 ]
  %12 = getelementptr inbounds %struct.listNode, %struct.listNode* %11, i64 0, i32 2, !dbg !714
  %13 = bitcast i8** %12 to %struct.watchedKey**, !dbg !714
  %14 = load %struct.watchedKey*, %struct.watchedKey** %13, align 8, !dbg !714, !tbaa !454
  %15 = getelementptr inbounds %struct.watchedKey, %struct.watchedKey* %14, i64 0, i32 1, !dbg !717
  %16 = load %struct.redisDb*, %struct.redisDb** %15, align 8, !dbg !717, !tbaa !458
  %17 = load %struct.redisDb*, %struct.redisDb** %9, align 8, !dbg !719, !tbaa !545
  %18 = icmp eq %struct.redisDb* %16, %17, !dbg !720
  br i1 %18, label %19, label %24, !dbg !721

; <label>:19:                                     ; preds = %10
  %20 = getelementptr inbounds %struct.watchedKey, %struct.watchedKey* %14, i64 0, i32 0, !dbg !722
  %21 = load %struct.redisObject*, %struct.redisObject** %20, align 8, !dbg !722, !tbaa !464
  %22 = call i32 @equalStringObjects(%struct.redisObject* %1, %struct.redisObject* %21) #5, !dbg !723
  %23 = icmp eq i32 %22, 0, !dbg !723
  br i1 %23, label %24, label %54, !dbg !724

; <label>:24:                                     ; preds = %19, %10
  %25 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #5, !dbg !711
  %26 = icmp eq %struct.listNode* %25, null, !dbg !713
  br i1 %26, label %27, label %10, !dbg !713, !llvm.loop !725

; <label>:27:                                     ; preds = %24, %2
  %28 = load %struct.redisDb*, %struct.redisDb** %9, align 8, !dbg !727, !tbaa !545
  %29 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %28, i64 0, i32 4, !dbg !728
  %30 = load %struct.dict*, %struct.dict** %29, align 8, !dbg !728, !tbaa !461
  %31 = bitcast %struct.redisObject* %1 to i8*, !dbg !729
  %32 = call i8* @dictFetchValue(%struct.dict* %30, i8* %31) #5, !dbg !730
  %33 = bitcast i8* %32 to %struct.list*, !dbg !730
  %34 = icmp eq i8* %32, null, !dbg !731
  br i1 %34, label %35, label %42, !dbg !733

; <label>:35:                                     ; preds = %27
  %36 = call %struct.list* @listCreate() #5, !dbg !734
  %37 = load %struct.redisDb*, %struct.redisDb** %9, align 8, !dbg !736, !tbaa !545
  %38 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %37, i64 0, i32 4, !dbg !737
  %39 = load %struct.dict*, %struct.dict** %38, align 8, !dbg !737, !tbaa !461
  %40 = bitcast %struct.list* %36 to i8*, !dbg !738
  %41 = call i32 @dictAdd(%struct.dict* %39, i8* %31, i8* %40) #5, !dbg !739
  call void @incrRefCount(%struct.redisObject* %1) #5, !dbg !740
  br label %42, !dbg !741

; <label>:42:                                     ; preds = %27, %35
  %43 = phi %struct.list* [ %33, %27 ], [ %36, %35 ], !dbg !742
  %44 = bitcast %struct.client* %0 to i8*, !dbg !743
  %45 = call %struct.list* @listAddNodeTail(%struct.list* %43, i8* %44) #5, !dbg !744
  %46 = call i8* @zmalloc(i64 16) #5, !dbg !745
  %47 = bitcast i8* %46 to %struct.redisObject**, !dbg !746
  store %struct.redisObject* %1, %struct.redisObject** %47, align 8, !dbg !747, !tbaa !464
  %48 = bitcast %struct.redisDb** %9 to i64*, !dbg !748
  %49 = load i64, i64* %48, align 8, !dbg !748, !tbaa !545
  %50 = getelementptr inbounds i8, i8* %46, i64 8, !dbg !749
  %51 = bitcast i8* %50 to i64*, !dbg !750
  store i64 %49, i64* %51, align 8, !dbg !750, !tbaa !458
  call void @incrRefCount(%struct.redisObject* %1) #5, !dbg !751
  %52 = load %struct.list*, %struct.list** %5, align 8, !dbg !752, !tbaa !443
  %53 = call %struct.list* @listAddNodeTail(%struct.list* %52, i8* %46) #5, !dbg !753
  br label %54, !dbg !754

; <label>:54:                                     ; preds = %19, %42
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #6, !dbg !754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !754
  ret void, !dbg !754
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
define dso_local void @touchWatchedKey(%struct.redisDb* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !755 {
  %3 = alloca %struct.listIter, align 8
  %4 = bitcast %struct.listIter* %3 to i8*, !dbg !768
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #6, !dbg !768
  %5 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 4, !dbg !769
  %6 = load %struct.dict*, %struct.dict** %5, align 8, !dbg !769, !tbaa !461
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %6, i64 0, i32 2, i64 0, i32 3, !dbg !769
  %8 = load i64, i64* %7, align 8, !dbg !769, !tbaa !771
  %9 = getelementptr inbounds %struct.dict, %struct.dict* %6, i64 0, i32 2, i64 1, i32 3, !dbg !769
  %10 = load i64, i64* %9, align 8, !dbg !769, !tbaa !771
  %11 = sub i64 0, %10, !dbg !773
  %12 = icmp eq i64 %8, %11, !dbg !773
  br i1 %12, label %31, label %13, !dbg !774

; <label>:13:                                     ; preds = %2
  %14 = bitcast %struct.redisObject* %1 to i8*, !dbg !775
  %15 = tail call i8* @dictFetchValue(%struct.dict* %6, i8* %14) #5, !dbg !776
  %16 = icmp eq i8* %15, null, !dbg !777
  br i1 %16, label %31, label %17, !dbg !779

; <label>:17:                                     ; preds = %13
  %18 = bitcast i8* %15 to %struct.list*, !dbg !776
  call void @listRewind(%struct.list* %18, %struct.listIter* nonnull %3) #5, !dbg !782
  %19 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #5, !dbg !783
  %20 = icmp eq %struct.listNode* %19, null, !dbg !785
  br i1 %20, label %31, label %21, !dbg !785

; <label>:21:                                     ; preds = %17, %21
  %22 = phi %struct.listNode* [ %29, %21 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.listNode, %struct.listNode* %22, i64 0, i32 2, !dbg !786
  %24 = bitcast i8** %23 to %struct.client**, !dbg !786
  %25 = load %struct.client*, %struct.client** %24, align 8, !dbg !786, !tbaa !454
  %26 = getelementptr inbounds %struct.client, %struct.client* %25, i64 0, i32 21, !dbg !788
  %27 = load i32, i32* %26, align 8, !dbg !789, !tbaa !417
  %28 = or i32 %27, 32, !dbg !789
  store i32 %28, i32* %26, align 8, !dbg !789, !tbaa !417
  %29 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #5, !dbg !783
  %30 = icmp eq %struct.listNode* %29, null, !dbg !785
  br i1 %30, label %31, label %21, !dbg !785, !llvm.loop !790

; <label>:31:                                     ; preds = %21, %17, %13, %2
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #6, !dbg !792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !792
  ret void, !dbg !792
}

; Function Attrs: noredzone nounwind
define dso_local void @touchWatchedKeysOnFlush(i32) local_unnamed_addr #0 !dbg !793 {
  %2 = alloca %struct.listIter, align 8
  %3 = alloca %struct.listIter, align 8
  %4 = bitcast %struct.listIter* %2 to i8*, !dbg !806
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #6, !dbg !806
  %5 = bitcast %struct.listIter* %3 to i8*, !dbg !806
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #6, !dbg !806
  %6 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !807, !tbaa !808
  call void @listRewind(%struct.list* %6, %struct.listIter* nonnull %2) #5, !dbg !810
  %7 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #5, !dbg !811
  %8 = icmp eq %struct.listNode* %7, null, !dbg !813
  br i1 %8, label %51, label %9, !dbg !813

; <label>:9:                                      ; preds = %1
  %10 = icmp eq i32 %0, -1
  br label %14, !dbg !813

; <label>:11:                                     ; preds = %48, %14
  %12 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #5, !dbg !811
  %13 = icmp eq %struct.listNode* %12, null, !dbg !813
  br i1 %13, label %51, label %14, !dbg !813

; <label>:14:                                     ; preds = %9, %11
  %15 = phi %struct.listNode* [ %7, %9 ], [ %12, %11 ]
  %16 = getelementptr inbounds %struct.listNode, %struct.listNode* %15, i64 0, i32 2, !dbg !814
  %17 = bitcast i8** %16 to %struct.client**, !dbg !814
  %18 = load %struct.client*, %struct.client** %17, align 8, !dbg !814, !tbaa !454
  %19 = getelementptr inbounds %struct.client, %struct.client* %18, i64 0, i32 42, !dbg !816
  %20 = load %struct.list*, %struct.list** %19, align 8, !dbg !816, !tbaa !443
  call void @listRewind(%struct.list* %20, %struct.listIter* nonnull %3) #5, !dbg !818
  %21 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #5, !dbg !819
  %22 = icmp eq %struct.listNode* %21, null, !dbg !820
  br i1 %22, label %11, label %23, !dbg !820, !llvm.loop !821

; <label>:23:                                     ; preds = %14
  %24 = getelementptr inbounds %struct.client, %struct.client* %18, i64 0, i32 21
  br label %25, !dbg !820

; <label>:25:                                     ; preds = %23, %48
  %26 = phi %struct.listNode* [ %21, %23 ], [ %49, %48 ]
  %27 = getelementptr inbounds %struct.listNode, %struct.listNode* %26, i64 0, i32 2, !dbg !823
  %28 = bitcast i8** %27 to %struct.watchedKey**, !dbg !823
  %29 = load %struct.watchedKey*, %struct.watchedKey** %28, align 8, !dbg !823, !tbaa !454
  %30 = getelementptr inbounds %struct.watchedKey, %struct.watchedKey* %29, i64 0, i32 1
  %31 = load %struct.redisDb*, %struct.redisDb** %30, align 8, !dbg !825, !tbaa !458
  br i1 %10, label %36, label %32, !dbg !827

; <label>:32:                                     ; preds = %25
  %33 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %31, i64 0, i32 5, !dbg !828
  %34 = load i32, i32* %33, align 8, !dbg !828, !tbaa !547
  %35 = icmp eq i32 %34, %0, !dbg !829
  br i1 %35, label %36, label %48, !dbg !830

; <label>:36:                                     ; preds = %25, %32
  %37 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %31, i64 0, i32 0, !dbg !831
  %38 = load %struct.dict*, %struct.dict** %37, align 8, !dbg !831, !tbaa !834
  %39 = getelementptr inbounds %struct.watchedKey, %struct.watchedKey* %29, i64 0, i32 0, !dbg !835
  %40 = load %struct.redisObject*, %struct.redisObject** %39, align 8, !dbg !835, !tbaa !464
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %40, i64 0, i32 2, !dbg !836
  %42 = load i8*, i8** %41, align 8, !dbg !836, !tbaa !837
  %43 = call %struct.dictEntry* @dictFind(%struct.dict* %38, i8* %42) #5, !dbg !839
  %44 = icmp eq %struct.dictEntry* %43, null, !dbg !840
  br i1 %44, label %48, label %45, !dbg !841

; <label>:45:                                     ; preds = %36
  %46 = load i32, i32* %24, align 8, !dbg !842, !tbaa !417
  %47 = or i32 %46, 32, !dbg !842
  store i32 %47, i32* %24, align 8, !dbg !842, !tbaa !417
  br label %48, !dbg !843

; <label>:48:                                     ; preds = %36, %45, %32
  %49 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #5, !dbg !819
  %50 = icmp eq %struct.listNode* %49, null, !dbg !820
  br i1 %50, label %11, label %25, !dbg !820, !llvm.loop !844

; <label>:51:                                     ; preds = %11, %1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #6, !dbg !846
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #6, !dbg !846
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !846
  ret void, !dbg !846
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @watchCommand(%struct.client*) local_unnamed_addr #0 !dbg !847 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !852
  %3 = load i32, i32* %2, align 8, !dbg !852, !tbaa !417
  %4 = and i32 %3, 8, !dbg !854
  %5 = icmp eq i32 %4, 0, !dbg !854
  br i1 %5, label %6, label %12, !dbg !855

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !857
  %8 = load i32, i32* %7, align 8, !dbg !857, !tbaa !347
  %9 = icmp sgt i32 %8, 1, !dbg !860
  br i1 %9, label %10, label %22, !dbg !861

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %13, !dbg !861

; <label>:12:                                     ; preds = %1
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !862
  br label %24, !dbg !864

; <label>:13:                                     ; preds = %10, %13
  %14 = phi i64 [ 1, %10 ], [ %18, %13 ]
  %15 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !865, !tbaa !356
  %16 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 %14, !dbg !866
  %17 = load %struct.redisObject*, %struct.redisObject** %16, align 8, !dbg !866, !tbaa !312
  tail call void @watchForKey(%struct.client* nonnull %0, %struct.redisObject* %17) #7, !dbg !867
  %18 = add nuw nsw i64 %14, 1, !dbg !868
  %19 = load i32, i32* %7, align 8, !dbg !857, !tbaa !347
  %20 = sext i32 %19 to i64, !dbg !860
  %21 = icmp slt i64 %18, %20, !dbg !860
  br i1 %21, label %13, label %22, !dbg !861, !llvm.loop !869

; <label>:22:                                     ; preds = %13, %6
  %23 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !871, !tbaa !510
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %23) #5, !dbg !872
  br label %24, !dbg !873

; <label>:24:                                     ; preds = %22, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !873
  ret void, !dbg !873
}

; Function Attrs: noredzone nounwind
define dso_local void @unwatchCommand(%struct.client*) local_unnamed_addr #0 !dbg !874 {
  tail call void @unwatchAllKeys(%struct.client* %0) #7, !dbg !878
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !879
  %3 = load i32, i32* %2, align 8, !dbg !880, !tbaa !417
  %4 = and i32 %3, -33, !dbg !880
  store i32 %4, i32* %2, align 8, !dbg !880, !tbaa !417
  %5 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !881, !tbaa !510
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %5) #5, !dbg !882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  ret void, !dbg !883
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
!406 = !DILocation(line: 54, column: 1, scope: !285, inlinedAt: !386)
!407 = !DILocation(line: 35, column: 35, scope: !9, inlinedAt: !408)
!408 = distinct !DILocation(line: 76, column: 5, scope: !381)
!409 = !DILocation(line: 36, column: 15, scope: !9, inlinedAt: !408)
!410 = !DILocation(line: 36, column: 24, scope: !9, inlinedAt: !408)
!411 = !DILocation(line: 37, column: 21, scope: !9, inlinedAt: !408)
!412 = !DILocation(line: 38, column: 15, scope: !9, inlinedAt: !408)
!413 = !DILocation(line: 38, column: 25, scope: !9, inlinedAt: !408)
!414 = !DILocation(line: 39, column: 1, scope: !9, inlinedAt: !408)
!415 = !DILocation(line: 77, column: 8, scope: !381)
!416 = !DILocation(line: 77, column: 14, scope: !381)
!417 = !{!269, !273, i64 160}
!418 = !DILocation(line: 78, column: 5, scope: !381)
!419 = !DILocation(line: 79, column: 1, scope: !381)
!420 = distinct !DISubprogram(name: "unwatchAllKeys", scope: !1, file: !1, line: 265, type: !10, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !421)
!421 = !{!422, !423, !429, !430, !432}
!422 = !DILocalVariable(name: "c", arg: 1, scope: !420, file: !1, line: 265, type: !12)
!423 = !DILocalVariable(name: "li", scope: !420, file: !1, line: 266, type: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !104, line: 45, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !104, line: 42, size: 128, elements: !426)
!426 = !{!427, !428}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !425, file: !104, line: 43, baseType: !108, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !425, file: !104, line: 44, baseType: !24, size: 32, offset: 64)
!429 = !DILocalVariable(name: "ln", scope: !420, file: !1, line: 267, type: !108)
!430 = !DILocalVariable(name: "clients", scope: !431, file: !1, line: 272, type: !102)
!431 = distinct !DILexicalBlock(scope: !420, file: !1, line: 271, column: 33)
!432 = !DILocalVariable(name: "wk", scope: !431, file: !1, line: 273, type: !433)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "watchedKey", file: !1, line: 231, baseType: !435)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "watchedKey", file: !1, line: 228, size: 128, elements: !436)
!436 = !{!437, !438}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !435, file: !1, line: 229, baseType: !131, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !435, file: !1, line: 230, baseType: !26, size: 64, offset: 64)
!439 = !DILocation(line: 265, column: 29, scope: !420)
!440 = !DILocation(line: 266, column: 5, scope: !420)
!441 = !DILocation(line: 269, column: 9, scope: !442)
!442 = distinct !DILexicalBlock(scope: !420, file: !1, line: 269, column: 9)
!443 = !{!269, !274, i64 488}
!444 = !{!445, !270, i64 40}
!445 = !{!"list", !274, i64 0, !274, i64 8, !274, i64 16, !274, i64 24, !274, i64 32, !270, i64 40}
!446 = !DILocation(line: 269, column: 37, scope: !442)
!447 = !DILocation(line: 269, column: 9, scope: !420)
!448 = !DILocation(line: 266, column: 14, scope: !420)
!449 = !DILocation(line: 270, column: 5, scope: !420)
!450 = !DILocation(line: 271, column: 17, scope: !420)
!451 = !DILocation(line: 267, column: 15, scope: !420)
!452 = !DILocation(line: 271, column: 5, scope: !420)
!453 = !DILocation(line: 277, column: 14, scope: !431)
!454 = !{!455, !274, i64 16}
!455 = !{!"listNode", !274, i64 0, !274, i64 8, !274, i64 16}
!456 = !DILocation(line: 273, column: 21, scope: !431)
!457 = !DILocation(line: 278, column: 38, scope: !431)
!458 = !{!459, !274, i64 8}
!459 = !{!"watchedKey", !274, i64 0, !274, i64 8}
!460 = !DILocation(line: 278, column: 42, scope: !431)
!461 = !{!462, !274, i64 32}
!462 = !{!"redisDb", !274, i64 0, !274, i64 8, !274, i64 16, !274, i64 24, !274, i64 32, !273, i64 40, !275, i64 48, !274, i64 56}
!463 = !DILocation(line: 278, column: 60, scope: !431)
!464 = !{!459, !274, i64 0}
!465 = !DILocation(line: 278, column: 19, scope: !431)
!466 = !DILocation(line: 272, column: 15, scope: !431)
!467 = !DILocation(line: 279, column: 9, scope: !431)
!468 = !DILocation(line: 280, column: 29, scope: !431)
!469 = !DILocation(line: 280, column: 9, scope: !431)
!470 = !DILocation(line: 282, column: 13, scope: !471)
!471 = distinct !DILexicalBlock(scope: !431, file: !1, line: 282, column: 13)
!472 = !DILocation(line: 282, column: 33, scope: !471)
!473 = !DILocation(line: 282, column: 13, scope: !431)
!474 = !DILocation(line: 283, column: 28, scope: !471)
!475 = !DILocation(line: 283, column: 32, scope: !471)
!476 = !DILocation(line: 283, column: 50, scope: !471)
!477 = !DILocation(line: 283, column: 13, scope: !471)
!478 = !DILocation(line: 285, column: 24, scope: !431)
!479 = !DILocation(line: 285, column: 9, scope: !431)
!480 = !DILocation(line: 286, column: 26, scope: !431)
!481 = !DILocation(line: 286, column: 9, scope: !431)
!482 = !DILocation(line: 287, column: 9, scope: !431)
!483 = distinct !{!483, !452, !484}
!484 = !DILocation(line: 288, column: 5, scope: !420)
!485 = !DILocation(line: 289, column: 1, scope: !420)
!486 = distinct !DISubprogram(name: "flagTransaction", scope: !1, file: !1, line: 83, type: !10, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !487)
!487 = !{!488}
!488 = !DILocalVariable(name: "c", arg: 1, scope: !486, file: !1, line: 83, type: !12)
!489 = !DILocation(line: 83, column: 30, scope: !486)
!490 = !DILocation(line: 84, column: 12, scope: !491)
!491 = distinct !DILexicalBlock(scope: !486, file: !1, line: 84, column: 9)
!492 = !DILocation(line: 84, column: 18, scope: !491)
!493 = !DILocation(line: 84, column: 9, scope: !486)
!494 = !DILocation(line: 85, column: 18, scope: !491)
!495 = !DILocation(line: 85, column: 9, scope: !491)
!496 = !DILocation(line: 86, column: 1, scope: !486)
!497 = distinct !DISubprogram(name: "multiCommand", scope: !1, file: !1, line: 88, type: !10, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !498)
!498 = !{!499}
!499 = !DILocalVariable(name: "c", arg: 1, scope: !497, file: !1, line: 88, type: !12)
!500 = !DILocation(line: 88, column: 27, scope: !497)
!501 = !DILocation(line: 89, column: 12, scope: !502)
!502 = distinct !DILexicalBlock(scope: !497, file: !1, line: 89, column: 9)
!503 = !DILocation(line: 89, column: 18, scope: !502)
!504 = !DILocation(line: 89, column: 9, scope: !497)
!505 = !DILocation(line: 90, column: 9, scope: !506)
!506 = distinct !DILexicalBlock(scope: !502, file: !1, line: 89, column: 34)
!507 = !DILocation(line: 91, column: 9, scope: !506)
!508 = !DILocation(line: 93, column: 14, scope: !497)
!509 = !DILocation(line: 94, column: 23, scope: !497)
!510 = !{!511, !274, i64 8}
!511 = !{!"sharedObjectsStruct", !274, i64 0, !274, i64 8, !274, i64 16, !274, i64 24, !274, i64 32, !274, i64 40, !274, i64 48, !274, i64 56, !274, i64 64, !274, i64 72, !274, i64 80, !274, i64 88, !274, i64 96, !274, i64 104, !274, i64 112, !274, i64 120, !274, i64 128, !274, i64 136, !274, i64 144, !274, i64 152, !274, i64 160, !274, i64 168, !274, i64 176, !274, i64 184, !274, i64 192, !274, i64 200, !274, i64 208, !274, i64 216, !274, i64 224, !274, i64 232, !274, i64 240, !274, i64 248, !274, i64 256, !274, i64 264, !274, i64 272, !274, i64 280, !274, i64 288, !274, i64 296, !274, i64 304, !274, i64 312, !274, i64 320, !274, i64 328, !274, i64 336, !274, i64 344, !274, i64 352, !274, i64 360, !271, i64 368, !271, i64 448, !271, i64 80448, !271, i64 80704, !274, i64 80960, !274, i64 80968}
!512 = !DILocation(line: 94, column: 5, scope: !497)
!513 = !DILocation(line: 95, column: 1, scope: !497)
!514 = distinct !DISubprogram(name: "discardCommand", scope: !1, file: !1, line: 97, type: !10, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !515)
!515 = !{!516}
!516 = !DILocalVariable(name: "c", arg: 1, scope: !514, file: !1, line: 97, type: !12)
!517 = !DILocation(line: 97, column: 29, scope: !514)
!518 = !DILocation(line: 98, column: 14, scope: !519)
!519 = distinct !DILexicalBlock(scope: !514, file: !1, line: 98, column: 9)
!520 = !DILocation(line: 98, column: 20, scope: !519)
!521 = !DILocation(line: 98, column: 9, scope: !514)
!522 = !DILocation(line: 99, column: 9, scope: !523)
!523 = distinct !DILexicalBlock(scope: !519, file: !1, line: 98, column: 37)
!524 = !DILocation(line: 100, column: 9, scope: !523)
!525 = !DILocation(line: 102, column: 5, scope: !514)
!526 = !DILocation(line: 103, column: 23, scope: !514)
!527 = !DILocation(line: 103, column: 5, scope: !514)
!528 = !DILocation(line: 104, column: 1, scope: !514)
!529 = distinct !DISubprogram(name: "execCommandPropagateMulti", scope: !1, file: !1, line: 108, type: !10, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !530)
!530 = !{!531, !532}
!531 = !DILocalVariable(name: "c", arg: 1, scope: !529, file: !1, line: 108, type: !12)
!532 = !DILocalVariable(name: "multistring", scope: !529, file: !1, line: 109, type: !131)
!533 = !DILocation(line: 108, column: 40, scope: !529)
!534 = !DILocation(line: 109, column: 5, scope: !529)
!535 = !DILocation(line: 109, column: 25, scope: !529)
!536 = !DILocation(line: 109, column: 11, scope: !529)
!537 = !DILocation(line: 111, column: 22, scope: !529)
!538 = !{!539, !274, i64 904}
!539 = !{!"redisServer", !273, i64 0, !274, i64 8, !274, i64 16, !274, i64 24, !273, i64 32, !273, i64 36, !273, i64 40, !274, i64 48, !274, i64 56, !274, i64 64, !274, i64 72, !273, i64 80, !273, i64 84, !273, i64 88, !273, i64 92, !274, i64 96, !274, i64 104, !273, i64 112, !273, i64 116, !271, i64 120, !273, i64 164, !270, i64 168, !273, i64 176, !274, i64 184, !274, i64 192, !274, i64 200, !271, i64 208, !273, i64 216, !273, i64 220, !271, i64 224, !273, i64 352, !274, i64 360, !273, i64 368, !271, i64 372, !273, i64 436, !273, i64 440, !271, i64 444, !273, i64 508, !274, i64 512, !274, i64 520, !274, i64 528, !274, i64 536, !274, i64 544, !274, i64 552, !274, i64 560, !273, i64 568, !275, i64 576, !271, i64 584, !274, i64 840, !270, i64 848, !273, i64 856, !273, i64 860, !270, i64 864, !270, i64 872, !270, i64 880, !270, i64 888, !274, i64 896, !274, i64 904, !274, i64 912, !274, i64 920, !274, i64 928, !274, i64 936, !274, i64 944, !274, i64 952, !274, i64 960, !274, i64 968, !274, i64 976, !274, i64 984, !274, i64 992, !270, i64 1000, !275, i64 1008, !275, i64 1016, !275, i64 1024, !540, i64 1032, !275, i64 1040, !275, i64 1048, !275, i64 1056, !275, i64 1064, !275, i64 1072, !275, i64 1080, !275, i64 1088, !275, i64 1096, !275, i64 1104, !270, i64 1112, !275, i64 1120, !540, i64 1128, !275, i64 1136, !275, i64 1144, !275, i64 1152, !275, i64 1160, !274, i64 1168, !275, i64 1176, !275, i64 1184, !270, i64 1192, !541, i64 1200, !275, i64 1240, !275, i64 1248, !270, i64 1256, !270, i64 1264, !271, i64 1272, !273, i64 1728, !273, i64 1732, !273, i64 1736, !273, i64 1740, !273, i64 1744, !270, i64 1752, !273, i64 1760, !273, i64 1764, !273, i64 1768, !273, i64 1772, !270, i64 1776, !270, i64 1784, !273, i64 1792, !273, i64 1796, !273, i64 1800, !273, i64 1804, !271, i64 1808, !273, i64 1880, !273, i64 1884, !274, i64 1888, !273, i64 1896, !273, i64 1900, !270, i64 1904, !270, i64 1912, !270, i64 1920, !270, i64 1928, !273, i64 1936, !273, i64 1940, !274, i64 1944, !274, i64 1952, !273, i64 1960, !273, i64 1964, !270, i64 1968, !270, i64 1976, !270, i64 1984, !270, i64 1992, !273, i64 2000, !270, i64 2008, !273, i64 2016, !273, i64 2020, !273, i64 2024, !273, i64 2028, !273, i64 2032, !273, i64 2036, !273, i64 2040, !273, i64 2044, !273, i64 2048, !273, i64 2052, !273, i64 2056, !273, i64 2060, !273, i64 2064, !274, i64 2072, !275, i64 2080, !275, i64 2088, !273, i64 2096, !274, i64 2104, !273, i64 2112, !274, i64 2120, !273, i64 2128, !273, i64 2132, !270, i64 2136, !270, i64 2144, !270, i64 2152, !270, i64 2160, !273, i64 2168, !273, i64 2172, !273, i64 2176, !273, i64 2180, !273, i64 2184, !273, i64 2188, !271, i64 2192, !542, i64 2200, !543, i64 2224, !274, i64 2240, !273, i64 2248, !274, i64 2256, !273, i64 2264, !271, i64 2268, !271, i64 2309, !275, i64 2352, !275, i64 2360, !273, i64 2368, !273, i64 2372, !274, i64 2376, !275, i64 2384, !275, i64 2392, !275, i64 2400, !275, i64 2408, !270, i64 2416, !270, i64 2424, !273, i64 2432, !273, i64 2436, !273, i64 2440, !273, i64 2444, !273, i64 2448, !274, i64 2456, !274, i64 2464, !273, i64 2472, !273, i64 2476, !274, i64 2480, !274, i64 2488, !273, i64 2496, !273, i64 2500, !270, i64 2504, !270, i64 2512, !270, i64 2520, !273, i64 2528, !273, i64 2532, !274, i64 2536, !270, i64 2544, !273, i64 2552, !273, i64 2556, !273, i64 2560, !270, i64 2568, !273, i64 2576, !273, i64 2580, !273, i64 2584, !274, i64 2592, !271, i64 2600, !275, i64 2648, !273, i64 2656, !274, i64 2664, !274, i64 2672, !273, i64 2680, !274, i64 2688, !273, i64 2696, !273, i64 2700, !275, i64 2704, !273, i64 2712, !273, i64 2716, !273, i64 2720, !273, i64 2724, !275, i64 2728, !273, i64 2736, !271, i64 2740, !274, i64 2768, !274, i64 2776, !273, i64 2784, !273, i64 2788, !273, i64 2792, !273, i64 2796, !270, i64 2800, !270, i64 2808, !270, i64 2816, !270, i64 2824, !270, i64 2832, !270, i64 2840, !270, i64 2848, !270, i64 2856, !273, i64 2864, !273, i64 2868, !270, i64 2872, !270, i64 2880, !273, i64 2888, !275, i64 2896, !274, i64 2904, !274, i64 2912, !273, i64 2920, !273, i64 2924, !275, i64 2928, !274, i64 2936, !274, i64 2944, !273, i64 2952, !273, i64 2956, !273, i64 2960, !273, i64 2964, !274, i64 2968, !273, i64 2976, !273, i64 2980, !273, i64 2984, !274, i64 2992, !274, i64 3000, !274, i64 3008, !274, i64 3016, !275, i64 3024, !275, i64 3032, !275, i64 3040, !273, i64 3048, !273, i64 3052, !273, i64 3056, !273, i64 3060, !273, i64 3064, !273, i64 3068, !273, i64 3072, !273, i64 3076, !273, i64 3080, !273, i64 3084, !273, i64 3088, !275, i64 3096, !274, i64 3104, !274, i64 3112, !274, i64 3120, !273, i64 3128, !273, i64 3132, !273, i64 3136, !270, i64 3144, !274, i64 3152, !274, i64 3160, !274, i64 3168}
!540 = !{!"double", !271, i64 0}
!541 = !{!"malloc_stats", !270, i64 0, !270, i64 8, !270, i64 16, !270, i64 24, !270, i64 32}
!542 = !{!"", !273, i64 0, !270, i64 8, !275, i64 16}
!543 = !{!"redisOpArray", !274, i64 0, !273, i64 8}
!544 = !DILocation(line: 111, column: 38, scope: !529)
!545 = !{!269, !274, i64 16}
!546 = !DILocation(line: 111, column: 42, scope: !529)
!547 = !{!462, !273, i64 40}
!548 = !DILocation(line: 111, column: 5, scope: !529)
!549 = !DILocation(line: 113, column: 18, scope: !529)
!550 = !DILocation(line: 113, column: 5, scope: !529)
!551 = !DILocation(line: 114, column: 1, scope: !529)
!552 = distinct !DISubprogram(name: "execCommand", scope: !1, file: !1, line: 116, type: !10, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !553)
!553 = !{!554, !555, !556, !557, !558, !559, !560, !561, !564}
!554 = !DILocalVariable(name: "c", arg: 1, scope: !552, file: !1, line: 116, type: !12)
!555 = !DILocalVariable(name: "j", scope: !552, file: !1, line: 117, type: !24)
!556 = !DILocalVariable(name: "orig_argv", scope: !552, file: !1, line: 118, type: !155)
!557 = !DILocalVariable(name: "orig_argc", scope: !552, file: !1, line: 119, type: !24)
!558 = !DILocalVariable(name: "orig_cmd", scope: !552, file: !1, line: 120, type: !157)
!559 = !DILocalVariable(name: "must_propagate", scope: !552, file: !1, line: 121, type: !24)
!560 = !DILocalVariable(name: "was_master", scope: !552, file: !1, line: 122, type: !24)
!561 = !DILocalVariable(name: "is_master", scope: !562, file: !1, line: 193, type: !24)
!562 = distinct !DILexicalBlock(scope: !563, file: !1, line: 192, column: 25)
!563 = distinct !DILexicalBlock(scope: !552, file: !1, line: 192, column: 9)
!564 = !DILocalVariable(name: "execcmd", scope: !565, file: !1, line: 201, type: !144)
!565 = distinct !DILexicalBlock(scope: !566, file: !1, line: 200, column: 62)
!566 = distinct !DILexicalBlock(scope: !562, file: !1, line: 200, column: 13)
!567 = !DILocation(line: 116, column: 26, scope: !552)
!568 = !DILocation(line: 121, column: 9, scope: !552)
!569 = !DILocation(line: 122, column: 29, scope: !552)
!570 = !{!539, !274, i64 2464}
!571 = !DILocation(line: 122, column: 40, scope: !552)
!572 = !DILocation(line: 124, column: 14, scope: !573)
!573 = distinct !DILexicalBlock(scope: !552, file: !1, line: 124, column: 9)
!574 = !DILocation(line: 124, column: 20, scope: !573)
!575 = !DILocation(line: 124, column: 9, scope: !552)
!576 = !DILocation(line: 125, column: 9, scope: !577)
!577 = distinct !DILexicalBlock(scope: !573, file: !1, line: 124, column: 37)
!578 = !DILocation(line: 126, column: 9, scope: !577)
!579 = !DILocation(line: 135, column: 18, scope: !580)
!580 = distinct !DILexicalBlock(scope: !552, file: !1, line: 135, column: 9)
!581 = !DILocation(line: 135, column: 9, scope: !552)
!582 = !DILocation(line: 136, column: 30, scope: !583)
!583 = distinct !DILexicalBlock(scope: !580, file: !1, line: 135, column: 58)
!584 = !DILocation(line: 136, column: 59, scope: !583)
!585 = !DILocation(line: 137, column: 58, scope: !583)
!586 = !DILocation(line: 136, column: 21, scope: !583)
!587 = !DILocation(line: 136, column: 9, scope: !583)
!588 = !DILocation(line: 138, column: 9, scope: !583)
!589 = !DILocation(line: 139, column: 9, scope: !583)
!590 = !DILocation(line: 147, column: 17, scope: !591)
!591 = distinct !DILexicalBlock(scope: !552, file: !1, line: 147, column: 9)
!592 = !{!539, !273, i64 860}
!593 = !DILocation(line: 147, column: 10, scope: !591)
!594 = !DILocation(line: 147, column: 25, scope: !591)
!595 = !DILocation(line: 147, column: 56, scope: !591)
!596 = !DILocation(line: 147, column: 49, scope: !591)
!597 = !DILocation(line: 148, column: 20, scope: !591)
!598 = !DILocation(line: 148, column: 50, scope: !591)
!599 = !DILocation(line: 148, column: 60, scope: !591)
!600 = !DILocation(line: 147, column: 9, scope: !552)
!601 = !DILocation(line: 150, column: 9, scope: !602)
!602 = distinct !DILexicalBlock(scope: !591, file: !1, line: 149, column: 5)
!603 = !DILocation(line: 153, column: 9, scope: !602)
!604 = !DILocation(line: 154, column: 9, scope: !602)
!605 = !DILocation(line: 158, column: 5, scope: !552)
!606 = !DILocation(line: 159, column: 20, scope: !552)
!607 = !DILocation(line: 118, column: 12, scope: !552)
!608 = !DILocation(line: 160, column: 20, scope: !552)
!609 = !DILocation(line: 119, column: 9, scope: !552)
!610 = !DILocation(line: 161, column: 19, scope: !552)
!611 = !DILocation(line: 120, column: 26, scope: !552)
!612 = !DILocation(line: 162, column: 38, scope: !552)
!613 = !DILocation(line: 162, column: 28, scope: !552)
!614 = !DILocation(line: 162, column: 5, scope: !552)
!615 = !DILocation(line: 117, column: 9, scope: !552)
!616 = !DILocation(line: 163, column: 31, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !1, line: 163, column: 5)
!618 = distinct !DILexicalBlock(scope: !552, file: !1, line: 163, column: 5)
!619 = !DILocation(line: 163, column: 19, scope: !617)
!620 = !DILocation(line: 163, column: 5, scope: !618)
!621 = !DILocation(line: 164, column: 29, scope: !622)
!622 = distinct !DILexicalBlock(scope: !617, file: !1, line: 163, column: 43)
!623 = !DILocation(line: 164, column: 41, scope: !622)
!624 = !DILocation(line: 164, column: 17, scope: !622)
!625 = !DILocation(line: 165, column: 41, scope: !622)
!626 = !DILocation(line: 165, column: 17, scope: !622)
!627 = !DILocation(line: 166, column: 40, scope: !622)
!628 = !DILocation(line: 166, column: 16, scope: !622)
!629 = !DILocation(line: 173, column: 14, scope: !630)
!630 = distinct !DILexicalBlock(scope: !622, file: !1, line: 173, column: 13)
!631 = !DILocation(line: 173, column: 29, scope: !630)
!632 = !DILocation(line: 173, column: 42, scope: !630)
!633 = !DILocation(line: 173, column: 48, scope: !630)
!634 = !DILocation(line: 173, column: 13, scope: !622)
!635 = !DILocation(line: 108, column: 40, scope: !529, inlinedAt: !636)
!636 = distinct !DILocation(line: 174, column: 13, scope: !637)
!637 = distinct !DILexicalBlock(scope: !630, file: !1, line: 173, column: 77)
!638 = !DILocation(line: 109, column: 5, scope: !529, inlinedAt: !636)
!639 = !DILocation(line: 109, column: 25, scope: !529, inlinedAt: !636)
!640 = !DILocation(line: 109, column: 11, scope: !529, inlinedAt: !636)
!641 = !DILocation(line: 111, column: 22, scope: !529, inlinedAt: !636)
!642 = !DILocation(line: 111, column: 38, scope: !529, inlinedAt: !636)
!643 = !DILocation(line: 111, column: 42, scope: !529, inlinedAt: !636)
!644 = !DILocation(line: 111, column: 5, scope: !529, inlinedAt: !636)
!645 = !DILocation(line: 113, column: 18, scope: !529, inlinedAt: !636)
!646 = !DILocation(line: 113, column: 5, scope: !529, inlinedAt: !636)
!647 = !DILocation(line: 114, column: 1, scope: !529, inlinedAt: !636)
!648 = !DILocation(line: 176, column: 9, scope: !637)
!649 = !DILocation(line: 0, scope: !637)
!650 = !DILocation(line: 178, column: 23, scope: !622)
!651 = !DILocation(line: 178, column: 16, scope: !622)
!652 = !DILocation(line: 178, column: 9, scope: !622)
!653 = !DILocation(line: 181, column: 41, scope: !622)
!654 = !DILocation(line: 181, column: 19, scope: !622)
!655 = !DILocation(line: 181, column: 31, scope: !622)
!656 = !DILocation(line: 181, column: 36, scope: !622)
!657 = !DILocation(line: 182, column: 41, scope: !622)
!658 = !DILocation(line: 182, column: 9, scope: !622)
!659 = !DILocation(line: 182, column: 36, scope: !622)
!660 = !DILocation(line: 183, column: 40, scope: !622)
!661 = !DILocation(line: 183, column: 31, scope: !622)
!662 = !DILocation(line: 183, column: 35, scope: !622)
!663 = !DILocation(line: 163, column: 39, scope: !617)
!664 = distinct !{!664, !620, !665}
!665 = !DILocation(line: 184, column: 5, scope: !618)
!666 = !DILocation(line: 186, column: 13, scope: !552)
!667 = !DILocation(line: 185, column: 13, scope: !552)
!668 = !DILocation(line: 188, column: 5, scope: !552)
!669 = !DILocation(line: 192, column: 9, scope: !563)
!670 = !DILocation(line: 192, column: 9, scope: !552)
!671 = !DILocation(line: 193, column: 32, scope: !562)
!672 = !DILocation(line: 193, column: 43, scope: !562)
!673 = !DILocation(line: 194, column: 21, scope: !562)
!674 = !{!539, !275, i64 2080}
!675 = !DILocation(line: 200, column: 20, scope: !566)
!676 = !{!539, !274, i64 2376}
!677 = !DILocation(line: 200, column: 13, scope: !566)
!678 = !DILocation(line: 200, column: 33, scope: !566)
!679 = !DILocation(line: 202, column: 44, scope: !565)
!680 = !DILocation(line: 202, column: 13, scope: !565)
!681 = !DILocation(line: 203, column: 9, scope: !565)
!682 = !DILocation(line: 212, column: 9, scope: !683)
!683 = distinct !DILexicalBlock(scope: !552, file: !1, line: 212, column: 9)
!684 = !{!539, !274, i64 544}
!685 = !DILocation(line: 212, column: 48, scope: !683)
!686 = !DILocation(line: 212, column: 41, scope: !683)
!687 = !DILocation(line: 212, column: 37, scope: !683)
!688 = !DILocation(line: 213, column: 54, scope: !683)
!689 = !DILocation(line: 213, column: 58, scope: !683)
!690 = !DILocation(line: 213, column: 64, scope: !683)
!691 = !DILocation(line: 213, column: 72, scope: !683)
!692 = !DILocation(line: 213, column: 9, scope: !683)
!693 = !DILocation(line: 214, column: 1, scope: !552)
!694 = distinct !DISubprogram(name: "watchForKey", scope: !1, file: !1, line: 234, type: !695, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !697)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !12, !131}
!697 = !{!698, !699, !700, !701, !702, !703}
!698 = !DILocalVariable(name: "c", arg: 1, scope: !694, file: !1, line: 234, type: !12)
!699 = !DILocalVariable(name: "key", arg: 2, scope: !694, file: !1, line: 234, type: !131)
!700 = !DILocalVariable(name: "clients", scope: !694, file: !1, line: 235, type: !102)
!701 = !DILocalVariable(name: "li", scope: !694, file: !1, line: 236, type: !424)
!702 = !DILocalVariable(name: "ln", scope: !694, file: !1, line: 237, type: !108)
!703 = !DILocalVariable(name: "wk", scope: !694, file: !1, line: 238, type: !433)
!704 = !DILocation(line: 234, column: 26, scope: !694)
!705 = !DILocation(line: 234, column: 35, scope: !694)
!706 = !DILocation(line: 235, column: 11, scope: !694)
!707 = !DILocation(line: 236, column: 5, scope: !694)
!708 = !DILocation(line: 241, column: 19, scope: !694)
!709 = !DILocation(line: 236, column: 14, scope: !694)
!710 = !DILocation(line: 241, column: 5, scope: !694)
!711 = !DILocation(line: 242, column: 17, scope: !694)
!712 = !DILocation(line: 237, column: 15, scope: !694)
!713 = !DILocation(line: 242, column: 5, scope: !694)
!714 = !DILocation(line: 243, column: 14, scope: !715)
!715 = distinct !DILexicalBlock(scope: !694, file: !1, line: 242, column: 33)
!716 = !DILocation(line: 238, column: 17, scope: !694)
!717 = !DILocation(line: 244, column: 17, scope: !718)
!718 = distinct !DILexicalBlock(scope: !715, file: !1, line: 244, column: 13)
!719 = !DILocation(line: 244, column: 26, scope: !718)
!720 = !DILocation(line: 244, column: 20, scope: !718)
!721 = !DILocation(line: 244, column: 29, scope: !718)
!722 = !DILocation(line: 244, column: 59, scope: !718)
!723 = !DILocation(line: 244, column: 32, scope: !718)
!724 = !DILocation(line: 244, column: 13, scope: !715)
!725 = distinct !{!725, !713, !726}
!726 = !DILocation(line: 246, column: 5, scope: !694)
!727 = !DILocation(line: 248, column: 33, scope: !694)
!728 = !DILocation(line: 248, column: 37, scope: !694)
!729 = !DILocation(line: 248, column: 50, scope: !694)
!730 = !DILocation(line: 248, column: 15, scope: !694)
!731 = !DILocation(line: 249, column: 10, scope: !732)
!732 = distinct !DILexicalBlock(scope: !694, file: !1, line: 249, column: 9)
!733 = !DILocation(line: 249, column: 9, scope: !694)
!734 = !DILocation(line: 250, column: 19, scope: !735)
!735 = distinct !DILexicalBlock(scope: !732, file: !1, line: 249, column: 19)
!736 = !DILocation(line: 251, column: 20, scope: !735)
!737 = !DILocation(line: 251, column: 24, scope: !735)
!738 = !DILocation(line: 251, column: 41, scope: !735)
!739 = !DILocation(line: 251, column: 9, scope: !735)
!740 = !DILocation(line: 252, column: 9, scope: !735)
!741 = !DILocation(line: 253, column: 5, scope: !735)
!742 = !DILocation(line: 0, scope: !735)
!743 = !DILocation(line: 254, column: 29, scope: !694)
!744 = !DILocation(line: 254, column: 5, scope: !694)
!745 = !DILocation(line: 256, column: 10, scope: !694)
!746 = !DILocation(line: 257, column: 9, scope: !694)
!747 = !DILocation(line: 257, column: 13, scope: !694)
!748 = !DILocation(line: 258, column: 17, scope: !694)
!749 = !DILocation(line: 258, column: 9, scope: !694)
!750 = !DILocation(line: 258, column: 12, scope: !694)
!751 = !DILocation(line: 259, column: 5, scope: !694)
!752 = !DILocation(line: 260, column: 24, scope: !694)
!753 = !DILocation(line: 260, column: 5, scope: !694)
!754 = !DILocation(line: 261, column: 1, scope: !694)
!755 = distinct !DISubprogram(name: "touchWatchedKey", scope: !1, file: !1, line: 293, type: !756, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !758)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !26, !131}
!758 = !{!759, !760, !761, !762, !763, !764}
!759 = !DILocalVariable(name: "db", arg: 1, scope: !755, file: !1, line: 293, type: !26)
!760 = !DILocalVariable(name: "key", arg: 2, scope: !755, file: !1, line: 293, type: !131)
!761 = !DILocalVariable(name: "clients", scope: !755, file: !1, line: 294, type: !102)
!762 = !DILocalVariable(name: "li", scope: !755, file: !1, line: 295, type: !424)
!763 = !DILocalVariable(name: "ln", scope: !755, file: !1, line: 296, type: !108)
!764 = !DILocalVariable(name: "c", scope: !765, file: !1, line: 306, type: !12)
!765 = distinct !DILexicalBlock(scope: !755, file: !1, line: 305, column: 33)
!766 = !DILocation(line: 293, column: 31, scope: !755)
!767 = !DILocation(line: 293, column: 41, scope: !755)
!768 = !DILocation(line: 295, column: 5, scope: !755)
!769 = !DILocation(line: 298, column: 9, scope: !770)
!770 = distinct !DILexicalBlock(scope: !755, file: !1, line: 298, column: 9)
!771 = !{!772, !270, i64 24}
!772 = !{!"dictht", !274, i64 0, !270, i64 8, !270, i64 16, !270, i64 24}
!773 = !DILocation(line: 298, column: 36, scope: !770)
!774 = !DILocation(line: 298, column: 9, scope: !755)
!775 = !DILocation(line: 299, column: 48, scope: !755)
!776 = !DILocation(line: 299, column: 15, scope: !755)
!777 = !DILocation(line: 300, column: 10, scope: !778)
!778 = distinct !DILexicalBlock(scope: !755, file: !1, line: 300, column: 9)
!779 = !DILocation(line: 300, column: 9, scope: !755)
!780 = !DILocation(line: 294, column: 11, scope: !755)
!781 = !DILocation(line: 295, column: 14, scope: !755)
!782 = !DILocation(line: 304, column: 5, scope: !755)
!783 = !DILocation(line: 305, column: 17, scope: !755)
!784 = !DILocation(line: 296, column: 15, scope: !755)
!785 = !DILocation(line: 305, column: 5, scope: !755)
!786 = !DILocation(line: 306, column: 21, scope: !765)
!787 = !DILocation(line: 306, column: 17, scope: !765)
!788 = !DILocation(line: 308, column: 12, scope: !765)
!789 = !DILocation(line: 308, column: 18, scope: !765)
!790 = distinct !{!790, !785, !791}
!791 = !DILocation(line: 309, column: 5, scope: !755)
!792 = !DILocation(line: 310, column: 1, scope: !755)
!793 = distinct !DISubprogram(name: "touchWatchedKeysOnFlush", scope: !1, file: !1, line: 316, type: !794, isLocal: false, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !796)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !24}
!796 = !{!797, !798, !799, !800, !801, !803}
!797 = !DILocalVariable(name: "dbid", arg: 1, scope: !793, file: !1, line: 316, type: !24)
!798 = !DILocalVariable(name: "li1", scope: !793, file: !1, line: 317, type: !424)
!799 = !DILocalVariable(name: "li2", scope: !793, file: !1, line: 317, type: !424)
!800 = !DILocalVariable(name: "ln", scope: !793, file: !1, line: 318, type: !108)
!801 = !DILocalVariable(name: "c", scope: !802, file: !1, line: 323, type: !12)
!802 = distinct !DILexicalBlock(scope: !793, file: !1, line: 322, column: 34)
!803 = !DILocalVariable(name: "wk", scope: !804, file: !1, line: 326, type: !433)
!804 = distinct !DILexicalBlock(scope: !802, file: !1, line: 325, column: 38)
!805 = !DILocation(line: 316, column: 34, scope: !793)
!806 = !DILocation(line: 317, column: 5, scope: !793)
!807 = !DILocation(line: 321, column: 23, scope: !793)
!808 = !{!539, !274, i64 512}
!809 = !DILocation(line: 317, column: 14, scope: !793)
!810 = !DILocation(line: 321, column: 5, scope: !793)
!811 = !DILocation(line: 322, column: 17, scope: !793)
!812 = !DILocation(line: 318, column: 15, scope: !793)
!813 = !DILocation(line: 322, column: 5, scope: !793)
!814 = !DILocation(line: 323, column: 21, scope: !802)
!815 = !DILocation(line: 323, column: 17, scope: !802)
!816 = !DILocation(line: 324, column: 23, scope: !802)
!817 = !DILocation(line: 317, column: 19, scope: !793)
!818 = !DILocation(line: 324, column: 9, scope: !802)
!819 = !DILocation(line: 325, column: 21, scope: !802)
!820 = !DILocation(line: 325, column: 9, scope: !802)
!821 = distinct !{!821, !813, !822}
!822 = !DILocation(line: 336, column: 5, scope: !793)
!823 = !DILocation(line: 326, column: 30, scope: !804)
!824 = !DILocation(line: 326, column: 25, scope: !804)
!825 = !DILocation(line: 0, scope: !826)
!826 = distinct !DILexicalBlock(scope: !804, file: !1, line: 331, column: 17)
!827 = !DILocation(line: 331, column: 28, scope: !826)
!828 = !DILocation(line: 331, column: 39, scope: !826)
!829 = !DILocation(line: 331, column: 42, scope: !826)
!830 = !DILocation(line: 331, column: 17, scope: !804)
!831 = !DILocation(line: 332, column: 38, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !1, line: 332, column: 21)
!833 = distinct !DILexicalBlock(scope: !826, file: !1, line: 331, column: 51)
!834 = !{!462, !274, i64 0}
!835 = !DILocation(line: 332, column: 48, scope: !832)
!836 = !DILocation(line: 332, column: 53, scope: !832)
!837 = !{!838, !274, i64 8}
!838 = !{!"redisObject", !273, i64 0, !273, i64 0, !273, i64 1, !273, i64 4, !274, i64 8}
!839 = !DILocation(line: 332, column: 21, scope: !832)
!840 = !DILocation(line: 332, column: 58, scope: !832)
!841 = !DILocation(line: 332, column: 21, scope: !833)
!842 = !DILocation(line: 333, column: 30, scope: !832)
!843 = !DILocation(line: 333, column: 21, scope: !832)
!844 = distinct !{!844, !820, !845}
!845 = !DILocation(line: 335, column: 9, scope: !802)
!846 = !DILocation(line: 337, column: 1, scope: !793)
!847 = distinct !DISubprogram(name: "watchCommand", scope: !1, file: !1, line: 339, type: !10, isLocal: false, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !848)
!848 = !{!849, !850}
!849 = !DILocalVariable(name: "c", arg: 1, scope: !847, file: !1, line: 339, type: !12)
!850 = !DILocalVariable(name: "j", scope: !847, file: !1, line: 340, type: !24)
!851 = !DILocation(line: 339, column: 27, scope: !847)
!852 = !DILocation(line: 342, column: 12, scope: !853)
!853 = distinct !DILexicalBlock(scope: !847, file: !1, line: 342, column: 9)
!854 = !DILocation(line: 342, column: 18, scope: !853)
!855 = !DILocation(line: 342, column: 9, scope: !847)
!856 = !DILocation(line: 340, column: 9, scope: !847)
!857 = !DILocation(line: 346, column: 24, scope: !858)
!858 = distinct !DILexicalBlock(scope: !859, file: !1, line: 346, column: 5)
!859 = distinct !DILexicalBlock(scope: !847, file: !1, line: 346, column: 5)
!860 = !DILocation(line: 346, column: 19, scope: !858)
!861 = !DILocation(line: 346, column: 5, scope: !859)
!862 = !DILocation(line: 343, column: 9, scope: !863)
!863 = distinct !DILexicalBlock(scope: !853, file: !1, line: 342, column: 34)
!864 = !DILocation(line: 344, column: 9, scope: !863)
!865 = !DILocation(line: 347, column: 26, scope: !858)
!866 = !DILocation(line: 347, column: 23, scope: !858)
!867 = !DILocation(line: 347, column: 9, scope: !858)
!868 = !DILocation(line: 346, column: 31, scope: !858)
!869 = distinct !{!869, !861, !870}
!870 = !DILocation(line: 347, column: 33, scope: !859)
!871 = !DILocation(line: 348, column: 23, scope: !847)
!872 = !DILocation(line: 348, column: 5, scope: !847)
!873 = !DILocation(line: 349, column: 1, scope: !847)
!874 = distinct !DISubprogram(name: "unwatchCommand", scope: !1, file: !1, line: 351, type: !10, isLocal: false, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !875)
!875 = !{!876}
!876 = !DILocalVariable(name: "c", arg: 1, scope: !874, file: !1, line: 351, type: !12)
!877 = !DILocation(line: 351, column: 29, scope: !874)
!878 = !DILocation(line: 352, column: 5, scope: !874)
!879 = !DILocation(line: 353, column: 8, scope: !874)
!880 = !DILocation(line: 353, column: 14, scope: !874)
!881 = !DILocation(line: 354, column: 23, scope: !874)
!882 = !DILocation(line: 354, column: 5, scope: !874)
!883 = !DILocation(line: 355, column: 1, scope: !874)
