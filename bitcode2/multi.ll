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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !296
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, !dbg !297
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 1, !dbg !298
  %4 = load i32, i32* %3, align 8, !dbg !298, !tbaa !280
  %5 = icmp sgt i32 %4, 0, !dbg !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  br i1 %5, label %6, label %33, !dbg !300

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.multiState, %struct.multiState* %2, i64 0, i32 0
  br label %8, !dbg !300

; <label>:8:                                      ; preds = %6, %26
  %9 = phi i64 [ 0, %6 ], [ %29, %26 ]
  %10 = load %struct.multiCmd*, %struct.multiCmd** %7, align 8, !dbg !301, !tbaa !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  %11 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %10, i64 %9, i32 1, !dbg !305
  %12 = load i32, i32* %11, align 8, !dbg !305, !tbaa !307
  %13 = icmp sgt i32 %12, 0, !dbg !309
  %14 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %10, i64 %9, i32 0, !dbg !310
  %15 = load %struct.redisObject**, %struct.redisObject*** %14, align 8, !dbg !310, !tbaa !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  br i1 %13, label %16, label %26, !dbg !312

; <label>:16:                                     ; preds = %8, %16
  %17 = phi i64 [ %21, %16 ], [ 0, %8 ]
  %18 = phi %struct.redisObject** [ %25, %16 ], [ %15, %8 ]
  %19 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %18, i64 %17, !dbg !313
  %20 = load %struct.redisObject*, %struct.redisObject** %19, align 8, !dbg !313, !tbaa !314
  tail call void @decrRefCount(%struct.redisObject* %20) #5, !dbg !315
  %21 = add nuw nsw i64 %17, 1, !dbg !316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  %22 = load i32, i32* %11, align 8, !dbg !305, !tbaa !307
  %23 = sext i32 %22 to i64, !dbg !309
  %24 = icmp slt i64 %21, %23, !dbg !309
  %25 = load %struct.redisObject**, %struct.redisObject*** %14, align 8, !dbg !310, !tbaa !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  br i1 %24, label %16, label %26, !dbg !312, !llvm.loop !318

; <label>:26:                                     ; preds = %16, %8
  %27 = phi %struct.redisObject** [ %15, %8 ], [ %25, %16 ], !dbg !310
  %28 = bitcast %struct.redisObject** %27 to i8*, !dbg !320
  tail call void @zfree(i8* %28) #5, !dbg !321
  %29 = add nuw nsw i64 %9, 1, !dbg !322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  %30 = load i32, i32* %3, align 8, !dbg !298, !tbaa !280
  %31 = sext i32 %30 to i64, !dbg !299
  %32 = icmp slt i64 %29, %31, !dbg !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  br i1 %32, label %8, label %33, !dbg !300, !llvm.loop !324

; <label>:33:                                     ; preds = %26, %1
  %34 = bitcast %struct.multiState* %2 to i8**, !dbg !326
  %35 = load i8*, i8** %34, align 8, !dbg !326, !tbaa !268
  tail call void @zfree(i8* %35) #5, !dbg !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  ret void, !dbg !328
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
define dso_local void @queueMultiCommand(%struct.client* nocapture) local_unnamed_addr #0 !dbg !329 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, !dbg !335
  %3 = bitcast %struct.multiState* %2 to i8**, !dbg !336
  %4 = load i8*, i8** %3, align 8, !dbg !336, !tbaa !268
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 1, !dbg !337
  %6 = load i32, i32* %5, align 8, !dbg !337, !tbaa !280
  %7 = add nsw i32 %6, 1, !dbg !338
  %8 = sext i32 %7 to i64, !dbg !339
  %9 = mul nsw i64 %8, 24, !dbg !340
  %10 = tail call i8* @zrealloc(i8* %4, i64 %9) #5, !dbg !341
  %11 = bitcast i8* %10 to %struct.multiCmd*, !dbg !341
  store i8* %10, i8** %3, align 8, !dbg !342, !tbaa !268
  %12 = load i32, i32* %5, align 8, !dbg !343, !tbaa !280
  %13 = sext i32 %12 to i64, !dbg !344
  %14 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10, !dbg !345
  %15 = bitcast %struct.redisCommand** %14 to i64*, !dbg !345
  %16 = load i64, i64* %15, align 8, !dbg !345, !tbaa !346
  %17 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %11, i64 %13, i32 2, !dbg !347
  %18 = bitcast %struct.redisCommand** %17 to i64*, !dbg !348
  store i64 %16, i64* %18, align 8, !dbg !348, !tbaa !349
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !350
  %20 = load i32, i32* %19, align 8, !dbg !350, !tbaa !351
  %21 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %11, i64 %13, i32 1, !dbg !352
  store i32 %20, i32* %21, align 8, !dbg !353, !tbaa !307
  %22 = sext i32 %20 to i64, !dbg !354
  %23 = shl nsw i64 %22, 3, !dbg !355
  %24 = tail call i8* @zmalloc(i64 %23) #5, !dbg !356
  %25 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %11, i64 %13, i32 0, !dbg !357
  %26 = bitcast %struct.redisObject*** %25 to i8**, !dbg !358
  store i8* %24, i8** %26, align 8, !dbg !358, !tbaa !311
  %27 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !359
  %28 = bitcast %struct.redisObject*** %27 to i8**, !dbg !359
  %29 = load i8*, i8** %28, align 8, !dbg !359, !tbaa !360
  %30 = load i32, i32* %19, align 8, !dbg !361, !tbaa !351
  %31 = sext i32 %30 to i64, !dbg !362
  %32 = shl nsw i64 %31, 3, !dbg !363
  %33 = tail call i8* @memcpy(i8* %24, i8* %29, i64 %32) #5, !dbg !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  %34 = load i32, i32* %19, align 8, !dbg !368, !tbaa !351
  %35 = icmp sgt i32 %34, 0, !dbg !370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !371
  br i1 %35, label %36, label %45, !dbg !371

; <label>:36:                                     ; preds = %1, %36
  %37 = phi i64 [ %41, %36 ], [ 0, %1 ]
  %38 = load %struct.redisObject**, %struct.redisObject*** %25, align 8, !dbg !372, !tbaa !311
  %39 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %38, i64 %37, !dbg !373
  %40 = load %struct.redisObject*, %struct.redisObject** %39, align 8, !dbg !373, !tbaa !314
  tail call void @incrRefCount(%struct.redisObject* %40) #5, !dbg !374
  %41 = add nuw nsw i64 %37, 1, !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  %42 = load i32, i32* %19, align 8, !dbg !368, !tbaa !351
  %43 = sext i32 %42 to i64, !dbg !370
  %44 = icmp slt i64 %41, %43, !dbg !370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !371
  br i1 %44, label %36, label %45, !dbg !371, !llvm.loop !377

; <label>:45:                                     ; preds = %36, %1
  %46 = load i32, i32* %5, align 8, !dbg !379, !tbaa !280
  %47 = add nsw i32 %46, 1, !dbg !379
  store i32 %47, i32* %5, align 8, !dbg !379, !tbaa !280
  %48 = load %struct.redisCommand*, %struct.redisCommand** %14, align 8, !dbg !380, !tbaa !346
  %49 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %48, i64 0, i32 4, !dbg !381
  %50 = load i32, i32* %49, align 8, !dbg !381, !tbaa !382
  %51 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 2, !dbg !384
  %52 = load i32, i32* %51, align 4, !dbg !385, !tbaa !283
  %53 = or i32 %52, %50, !dbg !385
  store i32 %53, i32* %51, align 4, !dbg !385, !tbaa !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !386
  ret void, !dbg !386
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
define dso_local void @discardTransaction(%struct.client*) local_unnamed_addr #0 !dbg !387 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, !dbg !395
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 1, !dbg !396
  %4 = load i32, i32* %3, align 8, !dbg !396, !tbaa !280
  %5 = icmp sgt i32 %4, 0, !dbg !397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  br i1 %5, label %6, label %33, !dbg !398

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.multiState, %struct.multiState* %2, i64 0, i32 0
  br label %8, !dbg !398

; <label>:8:                                      ; preds = %26, %6
  %9 = phi i64 [ 0, %6 ], [ %29, %26 ]
  %10 = load %struct.multiCmd*, %struct.multiCmd** %7, align 8, !dbg !399, !tbaa !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  %11 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %10, i64 %9, i32 1, !dbg !402
  %12 = load i32, i32* %11, align 8, !dbg !402, !tbaa !307
  %13 = icmp sgt i32 %12, 0, !dbg !403
  %14 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %10, i64 %9, i32 0, !dbg !404
  %15 = load %struct.redisObject**, %struct.redisObject*** %14, align 8, !dbg !404, !tbaa !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  br i1 %13, label %16, label %26, !dbg !405

; <label>:16:                                     ; preds = %8, %16
  %17 = phi i64 [ %21, %16 ], [ 0, %8 ]
  %18 = phi %struct.redisObject** [ %25, %16 ], [ %15, %8 ]
  %19 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %18, i64 %17, !dbg !406
  %20 = load %struct.redisObject*, %struct.redisObject** %19, align 8, !dbg !406, !tbaa !314
  tail call void @decrRefCount(%struct.redisObject* %20) #5, !dbg !407
  %21 = add nuw nsw i64 %17, 1, !dbg !408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  %22 = load i32, i32* %11, align 8, !dbg !402, !tbaa !307
  %23 = sext i32 %22 to i64, !dbg !403
  %24 = icmp slt i64 %21, %23, !dbg !403
  %25 = load %struct.redisObject**, %struct.redisObject*** %14, align 8, !dbg !404, !tbaa !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  br i1 %24, label %16, label %26, !dbg !405, !llvm.loop !318

; <label>:26:                                     ; preds = %16, %8
  %27 = phi %struct.redisObject** [ %15, %8 ], [ %25, %16 ], !dbg !404
  %28 = bitcast %struct.redisObject** %27 to i8*, !dbg !410
  tail call void @zfree(i8* %28) #5, !dbg !411
  %29 = add nuw nsw i64 %9, 1, !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  %30 = load i32, i32* %3, align 8, !dbg !396, !tbaa !280
  %31 = sext i32 %30 to i64, !dbg !397
  %32 = icmp slt i64 %29, %31, !dbg !397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  br i1 %32, label %8, label %33, !dbg !398, !llvm.loop !324

; <label>:33:                                     ; preds = %26, %1
  %34 = bitcast %struct.multiState* %2 to i8**, !dbg !414
  %35 = load i8*, i8** %34, align 8, !dbg !414, !tbaa !268
  tail call void @zfree(i8* %35) #5, !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  %36 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 0, !dbg !419
  store %struct.multiCmd* null, %struct.multiCmd** %36, align 8, !dbg !420, !tbaa !268
  store i32 0, i32* %3, align 8, !dbg !421, !tbaa !280
  %37 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 2, !dbg !422
  store i32 0, i32* %37, align 4, !dbg !423, !tbaa !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  %38 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !425
  %39 = load i32, i32* %38, align 8, !dbg !426, !tbaa !427
  %40 = and i32 %39, -4137, !dbg !426
  store i32 %40, i32* %38, align 8, !dbg !426, !tbaa !427
  tail call void @unwatchAllKeys(%struct.client* nonnull %0) #7, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  ret void, !dbg !429
}

; Function Attrs: noredzone nounwind
define dso_local void @unwatchAllKeys(%struct.client*) local_unnamed_addr #0 !dbg !430 {
  %2 = alloca %struct.listIter, align 8
  %3 = bitcast %struct.listIter* %2 to i8*, !dbg !450
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #6, !dbg !450
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 42, !dbg !451
  %5 = load %struct.list*, %struct.list** %4, align 8, !dbg !451, !tbaa !453
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i64 0, i32 5, !dbg !451
  %7 = load i64, i64* %6, align 8, !dbg !451, !tbaa !454
  %8 = icmp eq i64 %7, 0, !dbg !456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  br i1 %8, label %47, label %9, !dbg !457

; <label>:9:                                      ; preds = %1
  call void @listRewind(%struct.list* %5, %struct.listIter* nonnull %2) #5, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !460
  %10 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #5, !dbg !461
  %11 = icmp eq %struct.listNode* %10, null, !dbg !460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !460
  br i1 %11, label %47, label %12, !dbg !460

; <label>:12:                                     ; preds = %9
  %13 = bitcast %struct.client* %0 to i8*
  br label %14, !dbg !460

; <label>:14:                                     ; preds = %12, %42
  %15 = phi %struct.listNode* [ %10, %12 ], [ %45, %42 ]
  %16 = getelementptr inbounds %struct.listNode, %struct.listNode* %15, i64 0, i32 2, !dbg !463
  %17 = load i8*, i8** %16, align 8, !dbg !463, !tbaa !464
  %18 = getelementptr inbounds i8, i8* %17, i64 8, !dbg !467
  %19 = bitcast i8* %18 to %struct.redisDb**, !dbg !467
  %20 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !467, !tbaa !468
  %21 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %20, i64 0, i32 4, !dbg !470
  %22 = load %struct.dict*, %struct.dict** %21, align 8, !dbg !470, !tbaa !471
  %23 = bitcast i8* %17 to %struct.redisObject**, !dbg !473
  %24 = bitcast i8* %17 to i8**, !dbg !473
  %25 = load i8*, i8** %24, align 8, !dbg !473, !tbaa !474
  %26 = call i8* @dictFetchValue(%struct.dict* %22, i8* %25) #5, !dbg !475
  %27 = bitcast i8* %26 to %struct.list*, !dbg !475
  %28 = icmp eq i8* %26, null, !dbg !477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !477
  br i1 %28, label %29, label %30, !dbg !477

; <label>:29:                                     ; preds = %14
  call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i64 0, i64 0), i32 279) #5, !dbg !477
  call void @_exit(i32 1) #8, !dbg !477
  unreachable

; <label>:30:                                     ; preds = %14
  %31 = call %struct.listNode* @listSearchKey(%struct.list* %27, i8* %13) #5, !dbg !478
  call void @listDelNode(%struct.list* %27, %struct.listNode* %31) #5, !dbg !479
  %32 = getelementptr inbounds i8, i8* %26, i64 40, !dbg !480
  %33 = bitcast i8* %32 to i64*, !dbg !480
  %34 = load i64, i64* %33, align 8, !dbg !480, !tbaa !454
  %35 = icmp eq i64 %34, 0, !dbg !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !483
  br i1 %35, label %36, label %42, !dbg !483

; <label>:36:                                     ; preds = %30
  %37 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !484, !tbaa !468
  %38 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %37, i64 0, i32 4, !dbg !485
  %39 = load %struct.dict*, %struct.dict** %38, align 8, !dbg !485, !tbaa !471
  %40 = load i8*, i8** %24, align 8, !dbg !486, !tbaa !474
  %41 = call i32 @dictDelete(%struct.dict* %39, i8* %40) #5, !dbg !487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  br label %42, !dbg !487

; <label>:42:                                     ; preds = %36, %30
  %43 = load %struct.list*, %struct.list** %4, align 8, !dbg !488, !tbaa !453
  call void @listDelNode(%struct.list* %43, %struct.listNode* nonnull %15) #5, !dbg !489
  %44 = load %struct.redisObject*, %struct.redisObject** %23, align 8, !dbg !490, !tbaa !474
  call void @decrRefCount(%struct.redisObject* %44) #5, !dbg !491
  call void @zfree(i8* %17) #5, !dbg !492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !460
  %45 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #5, !dbg !461
  %46 = icmp eq %struct.listNode* %45, null, !dbg !460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !460
  br i1 %46, label %47, label %14, !dbg !460, !llvm.loop !493

; <label>:47:                                     ; preds = %42, %9, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #6, !dbg !496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !496
  ret void, !dbg !496
}

; Function Attrs: noredzone nounwind
define dso_local void @flagTransaction(%struct.client* nocapture) local_unnamed_addr #0 !dbg !497 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !501
  %3 = load i32, i32* %2, align 8, !dbg !501, !tbaa !427
  %4 = and i32 %3, 8, !dbg !503
  %5 = icmp eq i32 %4, 0, !dbg !503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !504
  br i1 %5, label %8, label %6, !dbg !504

; <label>:6:                                      ; preds = %1
  %7 = or i32 %3, 4096, !dbg !505
  store i32 %7, i32* %2, align 8, !dbg !505, !tbaa !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !506
  br label %8, !dbg !506

; <label>:8:                                      ; preds = %1, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  ret void, !dbg !507
}

; Function Attrs: noredzone nounwind
define dso_local void @multiCommand(%struct.client*) local_unnamed_addr #0 !dbg !508 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !512
  %3 = load i32, i32* %2, align 8, !dbg !512, !tbaa !427
  %4 = and i32 %3, 8, !dbg !514
  %5 = icmp eq i32 %4, 0, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  br i1 %5, label %7, label %6, !dbg !515

; <label>:6:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0)) #5, !dbg !516
  br label %10, !dbg !518

; <label>:7:                                      ; preds = %1
  %8 = or i32 %3, 8, !dbg !519
  store i32 %8, i32* %2, align 8, !dbg !519, !tbaa !427
  %9 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !520, !tbaa !521
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %9) #5, !dbg !523
  br label %10, !dbg !524

; <label>:10:                                     ; preds = %7, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !524
  ret void, !dbg !524
}

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @discardCommand(%struct.client*) local_unnamed_addr #0 !dbg !526 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !530
  %3 = load i32, i32* %2, align 8, !dbg !530, !tbaa !427
  %4 = and i32 %3, 8, !dbg !532
  %5 = icmp eq i32 %4, 0, !dbg !532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !533
  br i1 %5, label %6, label %7, !dbg !533

; <label>:6:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !534
  br label %9, !dbg !536

; <label>:7:                                      ; preds = %1
  tail call void @discardTransaction(%struct.client* nonnull %0) #7, !dbg !537
  %8 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !538, !tbaa !521
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %8) #5, !dbg !539
  br label %9, !dbg !540

; <label>:9:                                      ; preds = %7, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !541
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !540
  ret void, !dbg !540
}

; Function Attrs: noredzone nounwind
define dso_local void @execCommandPropagateMulti(%struct.client* nocapture readonly) local_unnamed_addr #0 !dbg !542 {
  %2 = alloca %struct.redisObject*, align 8
  %3 = bitcast %struct.redisObject** %2 to i8*, !dbg !547
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6, !dbg !547
  %4 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 5) #5, !dbg !548
  store %struct.redisObject* %4, %struct.redisObject** %2, align 8, !dbg !549, !tbaa !314
  %5 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 57), align 8, !dbg !550, !tbaa !551
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !557
  %7 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !557, !tbaa !558
  %8 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %7, i64 0, i32 5, !dbg !559
  %9 = load i32, i32* %8, align 8, !dbg !559, !tbaa !560
  call void @propagate(%struct.redisCommand* %5, i32 %9, %struct.redisObject** nonnull %2, i32 1, i32 3) #5, !dbg !561
  %10 = load %struct.redisObject*, %struct.redisObject** %2, align 8, !dbg !562, !tbaa !314
  call void @decrRefCount(%struct.redisObject* %10) #5, !dbg !563
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6, !dbg !564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  ret void, !dbg !564
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @propagate(%struct.redisCommand*, i32, %struct.redisObject**, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @execCommand(%struct.client*) local_unnamed_addr #0 !dbg !565 {
  %2 = alloca %struct.redisObject*, align 8
  %3 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !582, !tbaa !583
  %4 = icmp ne i8* %3, null, !dbg !584
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !585
  %6 = load i32, i32* %5, align 8, !dbg !585, !tbaa !427
  %7 = and i32 %6, 8, !dbg !587
  %8 = icmp eq i32 %7, 0, !dbg !587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  br i1 %8, label %9, label %10, !dbg !588

; <label>:9:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !589
  br label %129, !dbg !591

; <label>:10:                                     ; preds = %1
  %11 = and i32 %6, 4128, !dbg !592
  %12 = icmp eq i32 %11, 0, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  br i1 %12, label %19, label %13, !dbg !594

; <label>:13:                                     ; preds = %10
  %14 = and i32 %6, 4096, !dbg !595
  %15 = icmp eq i32 %14, 0, !dbg !595
  %16 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 25), align 8, !dbg !597
  %17 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !598
  %18 = select i1 %15, %struct.redisObject* %17, %struct.redisObject* %16, !dbg !599
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %18) #5, !dbg !600
  tail call void @discardTransaction(%struct.client* nonnull %0) #7, !dbg !601
  br label %111, !dbg !602

; <label>:19:                                     ; preds = %10
  %20 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !603, !tbaa !605
  %21 = icmp eq i32 %20, 0, !dbg !606
  %22 = and i1 %4, %21, !dbg !607
  %23 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 211), align 4, !dbg !608
  %24 = icmp ne i32 %23, 0, !dbg !609
  %25 = and i1 %22, %24, !dbg !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  br i1 %25, label %26, label %35, !dbg !607

; <label>:26:                                     ; preds = %19
  %27 = and i32 %6, 2, !dbg !610
  %28 = icmp eq i32 %27, 0, !dbg !610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !611
  br i1 %28, label %29, label %35, !dbg !611

; <label>:29:                                     ; preds = %26
  %30 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 2, !dbg !612
  %31 = load i32, i32* %30, align 4, !dbg !612, !tbaa !283
  %32 = and i32 %31, 1, !dbg !613
  %33 = icmp eq i32 %32, 0, !dbg !613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  br i1 %33, label %35, label %34, !dbg !614

; <label>:34:                                     ; preds = %29
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !615
  tail call void @discardTransaction(%struct.client* nonnull %0) #7, !dbg !617
  br label %111, !dbg !618

; <label>:35:                                     ; preds = %29, %26, %19
  tail call void @unwatchAllKeys(%struct.client* nonnull %0) #7, !dbg !619
  %36 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !620
  %37 = bitcast %struct.redisObject*** %36 to i64*, !dbg !620
  %38 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !622
  %39 = load i32, i32* %38, align 8, !dbg !622, !tbaa !351
  %40 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10, !dbg !624
  %41 = bitcast %struct.redisCommand** %40 to i64*, !dbg !624
  %42 = bitcast %struct.redisObject*** %36 to <2 x i64>*, !dbg !620
  %43 = load <2 x i64>, <2 x i64>* %42, align 8, !dbg !620, !tbaa !314
  %44 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 1, !dbg !626
  %45 = load i32, i32* %44, align 8, !dbg !626, !tbaa !280
  %46 = sext i32 %45 to i64, !dbg !627
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %46) #5, !dbg !628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !630
  %47 = load i32, i32* %44, align 8, !dbg !632, !tbaa !280
  %48 = icmp sgt i32 %47, 0, !dbg !634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  br i1 %48, label %49, label %96, !dbg !635

; <label>:49:                                     ; preds = %35
  %50 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 38, i32 0
  %51 = bitcast %struct.redisObject** %2 to i8*
  %52 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %53 = load %struct.multiCmd*, %struct.multiCmd** %50, align 8, !dbg !636, !tbaa !268
  br label %54, !dbg !635

; <label>:54:                                     ; preds = %49, %78
  %55 = phi %struct.multiCmd* [ %53, %49 ], [ %84, %78 ], !dbg !636
  %56 = phi i64 [ 0, %49 ], [ %92, %78 ]
  %57 = phi i32 [ 0, %49 ], [ %79, %78 ]
  %58 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %55, i64 %56, i32 1, !dbg !638
  %59 = load i32, i32* %58, align 8, !dbg !638, !tbaa !307
  store i32 %59, i32* %38, align 8, !dbg !639, !tbaa !351
  %60 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %55, i64 %56, i32 0, !dbg !640
  %61 = bitcast %struct.redisObject*** %60 to i64*, !dbg !640
  %62 = load i64, i64* %61, align 8, !dbg !640, !tbaa !311
  store i64 %62, i64* %37, align 8, !dbg !641, !tbaa !360
  %63 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %55, i64 %56, i32 2, !dbg !642
  %64 = load %struct.redisCommand*, %struct.redisCommand** %63, align 8, !dbg !642, !tbaa !349
  store %struct.redisCommand* %64, %struct.redisCommand** %40, align 8, !dbg !643, !tbaa !346
  %65 = icmp eq i32 %57, 0, !dbg !644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !646
  br i1 %65, label %66, label %78, !dbg !646

; <label>:66:                                     ; preds = %54
  %67 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %64, i64 0, i32 4, !dbg !647
  %68 = load i32, i32* %67, align 8, !dbg !647, !tbaa !382
  %69 = and i32 %68, 18, !dbg !648
  %70 = icmp eq i32 %69, 0, !dbg !648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  br i1 %70, label %71, label %78, !dbg !649

; <label>:71:                                     ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %51) #6, !dbg !653
  %72 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 5) #5, !dbg !654
  store %struct.redisObject* %72, %struct.redisObject** %2, align 8, !dbg !655, !tbaa !314
  %73 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 57), align 8, !dbg !656, !tbaa !551
  %74 = load %struct.redisDb*, %struct.redisDb** %52, align 8, !dbg !657, !tbaa !558
  %75 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %74, i64 0, i32 5, !dbg !658
  %76 = load i32, i32* %75, align 8, !dbg !658, !tbaa !560
  call void @propagate(%struct.redisCommand* %73, i32 %76, %struct.redisObject** nonnull %2, i32 1, i32 3) #5, !dbg !659
  %77 = load %struct.redisObject*, %struct.redisObject** %2, align 8, !dbg !660, !tbaa !314
  call void @decrRefCount(%struct.redisObject* %77) #5, !dbg !661
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %51) #6, !dbg !662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !663
  br label %78, !dbg !663

; <label>:78:                                     ; preds = %66, %54, %71
  %79 = phi i32 [ %57, %54 ], [ 0, %66 ], [ 1, %71 ], !dbg !664
  %80 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !665, !tbaa !605
  %81 = icmp eq i32 %80, 0, !dbg !666
  %82 = select i1 %81, i32 15, i32 0, !dbg !666
  call void @call(%struct.client* nonnull %0, i32 %82) #5, !dbg !667
  %83 = load i32, i32* %38, align 8, !dbg !668, !tbaa !351
  %84 = load %struct.multiCmd*, %struct.multiCmd** %50, align 8, !dbg !669, !tbaa !268
  %85 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %84, i64 %56, i32 1, !dbg !670
  store i32 %83, i32* %85, align 8, !dbg !671, !tbaa !307
  %86 = load i64, i64* %37, align 8, !dbg !672, !tbaa !360
  %87 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %84, i64 %56, !dbg !673
  %88 = bitcast %struct.multiCmd* %87 to i64*, !dbg !674
  store i64 %86, i64* %88, align 8, !dbg !674, !tbaa !311
  %89 = load i64, i64* %41, align 8, !dbg !675, !tbaa !346
  %90 = getelementptr inbounds %struct.multiCmd, %struct.multiCmd* %84, i64 %56, i32 2, !dbg !676
  %91 = bitcast %struct.redisCommand** %90 to i64*, !dbg !677
  store i64 %89, i64* %91, align 8, !dbg !677, !tbaa !349
  %92 = add nuw nsw i64 %56, 1, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  %93 = load i32, i32* %44, align 8, !dbg !632, !tbaa !280
  %94 = sext i32 %93 to i64, !dbg !634
  %95 = icmp slt i64 %92, %94, !dbg !634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  br i1 %95, label %54, label %96, !dbg !635, !llvm.loop !680

; <label>:96:                                     ; preds = %78, %35
  %97 = phi i32 [ 0, %35 ], [ %79, %78 ], !dbg !581
  store i32 %39, i32* %38, align 8, !dbg !682, !tbaa !351
  %98 = bitcast %struct.redisObject*** %36 to <2 x i64>*, !dbg !683
  store <2 x i64> %43, <2 x i64>* %98, align 8, !dbg !683, !tbaa !314
  call void @discardTransaction(%struct.client* nonnull %0) #7, !dbg !684
  %99 = icmp eq i32 %97, 0, !dbg !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !686
  br i1 %99, label %112, label %100, !dbg !686

; <label>:100:                                    ; preds = %96
  %101 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !687, !tbaa !583
  %102 = icmp eq i8* %101, null, !dbg !688
  %103 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !689, !tbaa !690
  %104 = add nsw i64 %103, 1, !dbg !689
  store i64 %104, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !689, !tbaa !690
  %105 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !691, !tbaa !692
  %106 = icmp eq i8* %105, null, !dbg !693
  %107 = or i1 %4, %106, !dbg !694
  %108 = or i1 %102, %107, !dbg !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  br i1 %108, label %111, label %109, !dbg !694

; <label>:109:                                    ; preds = %100
  %110 = call i64 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !695
  call void @feedReplicationBacklog(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i64 %110) #5, !dbg !696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  br label %111, !dbg !697

; <label>:111:                                    ; preds = %109, %100, %13, %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  br label %112, !dbg !699

; <label>:112:                                    ; preds = %111, %96
  %113 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 42), align 8, !dbg !699, !tbaa !701
  %114 = getelementptr inbounds %struct.list, %struct.list* %113, i64 0, i32 5, !dbg !699
  %115 = load i64, i64* %114, align 8, !dbg !699, !tbaa !454
  %116 = icmp eq i64 %115, 0, !dbg !699
  %117 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !702
  %118 = icmp ne i32 %117, 0, !dbg !703
  %119 = or i1 %116, %118, !dbg !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !704
  br i1 %119, label %129, label %120, !dbg !704

; <label>:120:                                    ; preds = %112
  %121 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !705
  %122 = load %struct.redisDb*, %struct.redisDb** %121, align 8, !dbg !705, !tbaa !558
  %123 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %122, i64 0, i32 5, !dbg !706
  %124 = load i32, i32* %123, align 8, !dbg !706, !tbaa !560
  %125 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !707
  %126 = load %struct.redisObject**, %struct.redisObject*** %125, align 8, !dbg !707, !tbaa !360
  %127 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !708
  %128 = load i32, i32* %127, align 8, !dbg !708, !tbaa !351
  call void @replicationFeedMonitors(%struct.client* nonnull %0, %struct.list* %113, i32 %124, %struct.redisObject** %126, i32 %128) #5, !dbg !709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !709
  br label %129, !dbg !709

; <label>:129:                                    ; preds = %120, %112, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !711
  ret void, !dbg !711
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
define dso_local void @watchForKey(%struct.client*, %struct.redisObject*) local_unnamed_addr #0 !dbg !712 {
  %3 = alloca %struct.listIter, align 8
  %4 = bitcast %struct.listIter* %3 to i8*, !dbg !725
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #6, !dbg !725
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 42, !dbg !726
  %6 = load %struct.list*, %struct.list** %5, align 8, !dbg !726, !tbaa !453
  call void @listRewind(%struct.list* %6, %struct.listIter* nonnull %3) #5, !dbg !728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !729
  %7 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #5, !dbg !730
  %8 = icmp eq %struct.listNode* %7, null, !dbg !729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !729
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  br i1 %8, label %27, label %10, !dbg !729

; <label>:10:                                     ; preds = %2, %24
  %11 = phi %struct.listNode* [ %25, %24 ], [ %7, %2 ]
  %12 = getelementptr inbounds %struct.listNode, %struct.listNode* %11, i64 0, i32 2, !dbg !732
  %13 = bitcast i8** %12 to %struct.watchedKey**, !dbg !732
  %14 = load %struct.watchedKey*, %struct.watchedKey** %13, align 8, !dbg !732, !tbaa !464
  %15 = getelementptr inbounds %struct.watchedKey, %struct.watchedKey* %14, i64 0, i32 1, !dbg !735
  %16 = load %struct.redisDb*, %struct.redisDb** %15, align 8, !dbg !735, !tbaa !468
  %17 = load %struct.redisDb*, %struct.redisDb** %9, align 8, !dbg !737, !tbaa !558
  %18 = icmp eq %struct.redisDb* %16, %17, !dbg !738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  br i1 %18, label %19, label %24, !dbg !739

; <label>:19:                                     ; preds = %10
  %20 = getelementptr inbounds %struct.watchedKey, %struct.watchedKey* %14, i64 0, i32 0, !dbg !740
  %21 = load %struct.redisObject*, %struct.redisObject** %20, align 8, !dbg !740, !tbaa !474
  %22 = call i32 @equalStringObjects(%struct.redisObject* %1, %struct.redisObject* %21) #5, !dbg !741
  %23 = icmp eq i32 %22, 0, !dbg !741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  br i1 %23, label %24, label %54, !dbg !742

; <label>:24:                                     ; preds = %19, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !729
  %25 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #5, !dbg !730
  %26 = icmp eq %struct.listNode* %25, null, !dbg !729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !729
  br i1 %26, label %27, label %10, !dbg !729, !llvm.loop !743

; <label>:27:                                     ; preds = %24, %2
  %28 = load %struct.redisDb*, %struct.redisDb** %9, align 8, !dbg !745, !tbaa !558
  %29 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %28, i64 0, i32 4, !dbg !746
  %30 = load %struct.dict*, %struct.dict** %29, align 8, !dbg !746, !tbaa !471
  %31 = bitcast %struct.redisObject* %1 to i8*, !dbg !747
  %32 = call i8* @dictFetchValue(%struct.dict* %30, i8* %31) #5, !dbg !748
  %33 = bitcast i8* %32 to %struct.list*, !dbg !748
  %34 = icmp eq i8* %32, null, !dbg !749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  br i1 %34, label %35, label %42, !dbg !751

; <label>:35:                                     ; preds = %27
  %36 = call %struct.list* @listCreate() #5, !dbg !752
  %37 = load %struct.redisDb*, %struct.redisDb** %9, align 8, !dbg !754, !tbaa !558
  %38 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %37, i64 0, i32 4, !dbg !755
  %39 = load %struct.dict*, %struct.dict** %38, align 8, !dbg !755, !tbaa !471
  %40 = bitcast %struct.list* %36 to i8*, !dbg !756
  %41 = call i32 @dictAdd(%struct.dict* %39, i8* %31, i8* %40) #5, !dbg !757
  call void @incrRefCount(%struct.redisObject* %1) #5, !dbg !758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !759
  br label %42, !dbg !759

; <label>:42:                                     ; preds = %27, %35
  %43 = phi %struct.list* [ %33, %27 ], [ %36, %35 ], !dbg !760
  %44 = bitcast %struct.client* %0 to i8*, !dbg !761
  %45 = call %struct.list* @listAddNodeTail(%struct.list* %43, i8* %44) #5, !dbg !762
  %46 = call i8* @zmalloc(i64 16) #5, !dbg !763
  %47 = bitcast i8* %46 to %struct.redisObject**, !dbg !764
  store %struct.redisObject* %1, %struct.redisObject** %47, align 8, !dbg !765, !tbaa !474
  %48 = bitcast %struct.redisDb** %9 to i64*, !dbg !766
  %49 = load i64, i64* %48, align 8, !dbg !766, !tbaa !558
  %50 = getelementptr inbounds i8, i8* %46, i64 8, !dbg !767
  %51 = bitcast i8* %50 to i64*, !dbg !768
  store i64 %49, i64* %51, align 8, !dbg !768, !tbaa !468
  call void @incrRefCount(%struct.redisObject* %1) #5, !dbg !769
  %52 = load %struct.list*, %struct.list** %5, align 8, !dbg !770, !tbaa !453
  %53 = call %struct.list* @listAddNodeTail(%struct.list* %52, i8* %46) #5, !dbg !771
  br label %54, !dbg !772

; <label>:54:                                     ; preds = %19, %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !773
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #6, !dbg !772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  ret void, !dbg !772
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
define dso_local void @touchWatchedKey(%struct.redisDb* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !774 {
  %3 = alloca %struct.listIter, align 8
  %4 = bitcast %struct.listIter* %3 to i8*, !dbg !787
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #6, !dbg !787
  %5 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 4, !dbg !788
  %6 = load %struct.dict*, %struct.dict** %5, align 8, !dbg !788, !tbaa !471
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %6, i64 0, i32 2, i64 0, i32 3, !dbg !788
  %8 = load i64, i64* %7, align 8, !dbg !788, !tbaa !790
  %9 = getelementptr inbounds %struct.dict, %struct.dict* %6, i64 0, i32 2, i64 1, i32 3, !dbg !788
  %10 = load i64, i64* %9, align 8, !dbg !788, !tbaa !790
  %11 = sub i64 0, %10, !dbg !792
  %12 = icmp eq i64 %8, %11, !dbg !792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  br i1 %12, label %31, label %13, !dbg !793

; <label>:13:                                     ; preds = %2
  %14 = bitcast %struct.redisObject* %1 to i8*, !dbg !794
  %15 = tail call i8* @dictFetchValue(%struct.dict* %6, i8* %14) #5, !dbg !795
  %16 = icmp eq i8* %15, null, !dbg !796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !798
  br i1 %16, label %31, label %17, !dbg !798

; <label>:17:                                     ; preds = %13
  %18 = bitcast i8* %15 to %struct.list*, !dbg !795
  call void @listRewind(%struct.list* %18, %struct.listIter* nonnull %3) #5, !dbg !801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !802
  %19 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #5, !dbg !803
  %20 = icmp eq %struct.listNode* %19, null, !dbg !802
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !802
  br i1 %20, label %31, label %21, !dbg !802

; <label>:21:                                     ; preds = %17, %21
  %22 = phi %struct.listNode* [ %29, %21 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.listNode, %struct.listNode* %22, i64 0, i32 2, !dbg !805
  %24 = bitcast i8** %23 to %struct.client**, !dbg !805
  %25 = load %struct.client*, %struct.client** %24, align 8, !dbg !805, !tbaa !464
  %26 = getelementptr inbounds %struct.client, %struct.client* %25, i64 0, i32 21, !dbg !807
  %27 = load i32, i32* %26, align 8, !dbg !808, !tbaa !427
  %28 = or i32 %27, 32, !dbg !808
  store i32 %28, i32* %26, align 8, !dbg !808, !tbaa !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !802
  %29 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #5, !dbg !803
  %30 = icmp eq %struct.listNode* %29, null, !dbg !802
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !802
  br i1 %30, label %31, label %21, !dbg !802, !llvm.loop !809

; <label>:31:                                     ; preds = %21, %17, %13, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #6, !dbg !812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !812
  ret void, !dbg !812
}

; Function Attrs: noredzone nounwind
define dso_local void @touchWatchedKeysOnFlush(i32) local_unnamed_addr #0 !dbg !813 {
  %2 = alloca %struct.listIter, align 8
  %3 = alloca %struct.listIter, align 8
  %4 = bitcast %struct.listIter* %2 to i8*, !dbg !826
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #6, !dbg !826
  %5 = bitcast %struct.listIter* %3 to i8*, !dbg !826
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #6, !dbg !826
  %6 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !827, !tbaa !828
  call void @listRewind(%struct.list* %6, %struct.listIter* nonnull %2) #5, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !831
  %7 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #5, !dbg !832
  %8 = icmp eq %struct.listNode* %7, null, !dbg !831
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !831
  br i1 %8, label %51, label %9, !dbg !831

; <label>:9:                                      ; preds = %1
  %10 = icmp eq i32 %0, -1
  br label %11, !dbg !831

; <label>:11:                                     ; preds = %9, %48
  %12 = phi %struct.listNode* [ %7, %9 ], [ %49, %48 ]
  %13 = getelementptr inbounds %struct.listNode, %struct.listNode* %12, i64 0, i32 2, !dbg !834
  %14 = bitcast i8** %13 to %struct.client**, !dbg !834
  %15 = load %struct.client*, %struct.client** %14, align 8, !dbg !834, !tbaa !464
  %16 = getelementptr inbounds %struct.client, %struct.client* %15, i64 0, i32 42, !dbg !836
  %17 = load %struct.list*, %struct.list** %16, align 8, !dbg !836, !tbaa !453
  call void @listRewind(%struct.list* %17, %struct.listIter* nonnull %3) #5, !dbg !838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  %18 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #5, !dbg !840
  %19 = icmp eq %struct.listNode* %18, null, !dbg !839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  br i1 %19, label %48, label %20, !dbg !839

; <label>:20:                                     ; preds = %11
  %21 = getelementptr inbounds %struct.client, %struct.client* %15, i64 0, i32 21
  br label %22, !dbg !839

; <label>:22:                                     ; preds = %20, %45
  %23 = phi %struct.listNode* [ %18, %20 ], [ %46, %45 ]
  %24 = getelementptr inbounds %struct.listNode, %struct.listNode* %23, i64 0, i32 2, !dbg !841
  %25 = bitcast i8** %24 to %struct.watchedKey**, !dbg !841
  %26 = load %struct.watchedKey*, %struct.watchedKey** %25, align 8, !dbg !841, !tbaa !464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !843
  %27 = getelementptr inbounds %struct.watchedKey, %struct.watchedKey* %26, i64 0, i32 1
  %28 = load %struct.redisDb*, %struct.redisDb** %27, align 8, !dbg !845, !tbaa !468
  br i1 %10, label %33, label %29, !dbg !843

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %28, i64 0, i32 5, !dbg !846
  %31 = load i32, i32* %30, align 8, !dbg !846, !tbaa !560
  %32 = icmp eq i32 %31, %0, !dbg !847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  br i1 %32, label %33, label %45, !dbg !848

; <label>:33:                                     ; preds = %22, %29
  %34 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %28, i64 0, i32 0, !dbg !849
  %35 = load %struct.dict*, %struct.dict** %34, align 8, !dbg !849, !tbaa !852
  %36 = getelementptr inbounds %struct.watchedKey, %struct.watchedKey* %26, i64 0, i32 0, !dbg !853
  %37 = load %struct.redisObject*, %struct.redisObject** %36, align 8, !dbg !853, !tbaa !474
  %38 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %37, i64 0, i32 2, !dbg !854
  %39 = load i8*, i8** %38, align 8, !dbg !854, !tbaa !855
  %40 = call %struct.dictEntry* @dictFind(%struct.dict* %35, i8* %39) #5, !dbg !857
  %41 = icmp eq %struct.dictEntry* %40, null, !dbg !858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !859
  br i1 %41, label %45, label %42, !dbg !859

; <label>:42:                                     ; preds = %33
  %43 = load i32, i32* %21, align 8, !dbg !860, !tbaa !427
  %44 = or i32 %43, 32, !dbg !860
  store i32 %44, i32* %21, align 8, !dbg !860, !tbaa !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !861
  br label %45, !dbg !861

; <label>:45:                                     ; preds = %33, %42, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  %46 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #5, !dbg !840
  %47 = icmp eq %struct.listNode* %46, null, !dbg !839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  br i1 %47, label %48, label %22, !dbg !839, !llvm.loop !862

; <label>:48:                                     ; preds = %45, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !831
  %49 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #5, !dbg !832
  %50 = icmp eq %struct.listNode* %49, null, !dbg !831
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !831
  br i1 %50, label %51, label %11, !dbg !831, !llvm.loop !864

; <label>:51:                                     ; preds = %48, %1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #6, !dbg !866
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #6, !dbg !866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !866
  ret void, !dbg !866
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @watchCommand(%struct.client*) local_unnamed_addr #0 !dbg !867 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !872
  %3 = load i32, i32* %2, align 8, !dbg !872, !tbaa !427
  %4 = and i32 %3, 8, !dbg !874
  %5 = icmp eq i32 %4, 0, !dbg !874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  br i1 %5, label %7, label %6, !dbg !875

; <label>:6:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !876
  br label %24, !dbg !878

; <label>:7:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !880
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !882
  %9 = load i32, i32* %8, align 8, !dbg !882, !tbaa !351
  %10 = icmp sgt i32 %9, 1, !dbg !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !885
  br i1 %10, label %11, label %22, !dbg !885

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %13, !dbg !885

; <label>:13:                                     ; preds = %11, %13
  %14 = phi i64 [ 1, %11 ], [ %18, %13 ]
  %15 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !886, !tbaa !360
  %16 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 %14, !dbg !887
  %17 = load %struct.redisObject*, %struct.redisObject** %16, align 8, !dbg !887, !tbaa !314
  tail call void @watchForKey(%struct.client* nonnull %0, %struct.redisObject* %17) #7, !dbg !888
  %18 = add nuw nsw i64 %14, 1, !dbg !889
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  %19 = load i32, i32* %8, align 8, !dbg !882, !tbaa !351
  %20 = sext i32 %19 to i64, !dbg !884
  %21 = icmp slt i64 %18, %20, !dbg !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !885
  br i1 %21, label %13, label %22, !dbg !885, !llvm.loop !891

; <label>:22:                                     ; preds = %13, %7
  %23 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !893, !tbaa !521
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %23) #5, !dbg !894
  br label %24, !dbg !895

; <label>:24:                                     ; preds = %22, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  ret void, !dbg !895
}

; Function Attrs: noredzone nounwind
define dso_local void @unwatchCommand(%struct.client*) local_unnamed_addr #0 !dbg !897 {
  tail call void @unwatchAllKeys(%struct.client* %0) #7, !dbg !901
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !902
  %3 = load i32, i32* %2, align 8, !dbg !903, !tbaa !427
  %4 = and i32 %3, -33, !dbg !903
  store i32 %4, i32* %2, align 8, !dbg !903, !tbaa !427
  %5 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !904, !tbaa !521
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %5) #5, !dbg !905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !906
  ret void, !dbg !906
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
!296 = !DILocation(line: 45, column: 10, scope: !292)
!297 = !DILocation(line: 45, column: 24, scope: !291)
!298 = !DILocation(line: 45, column: 31, scope: !291)
!299 = !DILocation(line: 45, column: 19, scope: !291)
!300 = !DILocation(line: 45, column: 5, scope: !292)
!301 = !DILocation(line: 47, column: 34, scope: !290)
!302 = !DILocation(line: 46, column: 13, scope: !290)
!303 = !DILocation(line: 49, column: 14, scope: !304)
!304 = distinct !DILexicalBlock(scope: !290, file: !1, line: 49, column: 9)
!305 = !DILocation(line: 49, column: 29, scope: !306)
!306 = distinct !DILexicalBlock(scope: !304, file: !1, line: 49, column: 9)
!307 = !{!308, !273, i64 8}
!308 = !{!"multiCmd", !274, i64 0, !273, i64 8, !274, i64 16}
!309 = !DILocation(line: 49, column: 23, scope: !306)
!310 = !DILocation(line: 0, scope: !290)
!311 = !{!308, !274, i64 0}
!312 = !DILocation(line: 49, column: 9, scope: !304)
!313 = !DILocation(line: 50, column: 26, scope: !306)
!314 = !{!274, !274, i64 0}
!315 = !DILocation(line: 50, column: 13, scope: !306)
!316 = !DILocation(line: 49, column: 36, scope: !306)
!317 = !DILocation(line: 49, column: 9, scope: !306)
!318 = distinct !{!318, !312, !319}
!319 = !DILocation(line: 50, column: 37, scope: !304)
!320 = !DILocation(line: 51, column: 15, scope: !290)
!321 = !DILocation(line: 51, column: 9, scope: !290)
!322 = !DILocation(line: 45, column: 39, scope: !291)
!323 = !DILocation(line: 45, column: 5, scope: !291)
!324 = distinct !{!324, !300, !325}
!325 = !DILocation(line: 52, column: 5, scope: !292)
!326 = !DILocation(line: 53, column: 21, scope: !285)
!327 = !DILocation(line: 53, column: 5, scope: !285)
!328 = !DILocation(line: 54, column: 1, scope: !285)
!329 = distinct !DISubprogram(name: "queueMultiCommand", scope: !1, file: !1, line: 57, type: !10, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !330)
!330 = !{!331, !332, !333}
!331 = !DILocalVariable(name: "c", arg: 1, scope: !329, file: !1, line: 57, type: !12)
!332 = !DILocalVariable(name: "mc", scope: !329, file: !1, line: 58, type: !223)
!333 = !DILocalVariable(name: "j", scope: !329, file: !1, line: 59, type: !24)
!334 = !DILocation(line: 57, column: 32, scope: !329)
!335 = !DILocation(line: 61, column: 38, scope: !329)
!336 = !DILocation(line: 61, column: 45, scope: !329)
!337 = !DILocation(line: 62, column: 41, scope: !329)
!338 = !DILocation(line: 62, column: 46, scope: !329)
!339 = !DILocation(line: 62, column: 30, scope: !329)
!340 = !DILocation(line: 62, column: 29, scope: !329)
!341 = !DILocation(line: 61, column: 26, scope: !329)
!342 = !DILocation(line: 61, column: 24, scope: !329)
!343 = !DILocation(line: 63, column: 39, scope: !329)
!344 = !DILocation(line: 63, column: 28, scope: !329)
!345 = !DILocation(line: 64, column: 18, scope: !329)
!346 = !{!269, !274, i64 80}
!347 = !DILocation(line: 64, column: 9, scope: !329)
!348 = !DILocation(line: 64, column: 13, scope: !329)
!349 = !{!308, !274, i64 16}
!350 = !DILocation(line: 65, column: 19, scope: !329)
!351 = !{!269, !273, i64 64}
!352 = !DILocation(line: 65, column: 9, scope: !329)
!353 = !DILocation(line: 65, column: 14, scope: !329)
!354 = !DILocation(line: 66, column: 38, scope: !329)
!355 = !DILocation(line: 66, column: 37, scope: !329)
!356 = !DILocation(line: 66, column: 16, scope: !329)
!357 = !DILocation(line: 66, column: 9, scope: !329)
!358 = !DILocation(line: 66, column: 14, scope: !329)
!359 = !DILocation(line: 67, column: 24, scope: !329)
!360 = !{!269, !274, i64 72}
!361 = !DILocation(line: 67, column: 46, scope: !329)
!362 = !DILocation(line: 67, column: 43, scope: !329)
!363 = !DILocation(line: 67, column: 42, scope: !329)
!364 = !DILocation(line: 67, column: 5, scope: !329)
!365 = !DILocation(line: 59, column: 9, scope: !329)
!366 = !DILocation(line: 68, column: 10, scope: !367)
!367 = distinct !DILexicalBlock(scope: !329, file: !1, line: 68, column: 5)
!368 = !DILocation(line: 68, column: 24, scope: !369)
!369 = distinct !DILexicalBlock(scope: !367, file: !1, line: 68, column: 5)
!370 = !DILocation(line: 68, column: 19, scope: !369)
!371 = !DILocation(line: 68, column: 5, scope: !367)
!372 = !DILocation(line: 69, column: 26, scope: !369)
!373 = !DILocation(line: 69, column: 22, scope: !369)
!374 = !DILocation(line: 69, column: 9, scope: !369)
!375 = !DILocation(line: 68, column: 31, scope: !369)
!376 = !DILocation(line: 68, column: 5, scope: !369)
!377 = distinct !{!377, !371, !378}
!378 = !DILocation(line: 69, column: 33, scope: !367)
!379 = !DILocation(line: 70, column: 20, scope: !329)
!380 = !DILocation(line: 71, column: 31, scope: !329)
!381 = !DILocation(line: 71, column: 36, scope: !329)
!382 = !{!383, !273, i64 32}
!383 = !{!"redisCommand", !274, i64 0, !274, i64 8, !273, i64 16, !274, i64 24, !273, i64 32, !274, i64 40, !273, i64 48, !273, i64 52, !273, i64 56, !275, i64 64, !275, i64 72}
!384 = !DILocation(line: 71, column: 15, scope: !329)
!385 = !DILocation(line: 71, column: 25, scope: !329)
!386 = !DILocation(line: 72, column: 1, scope: !329)
!387 = distinct !DISubprogram(name: "discardTransaction", scope: !1, file: !1, line: 74, type: !10, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !388)
!388 = !{!389}
!389 = !DILocalVariable(name: "c", arg: 1, scope: !387, file: !1, line: 74, type: !12)
!390 = !DILocation(line: 74, column: 33, scope: !387)
!391 = !DILocation(line: 42, column: 35, scope: !285, inlinedAt: !392)
!392 = distinct !DILocation(line: 75, column: 5, scope: !387)
!393 = !DILocation(line: 43, column: 9, scope: !285, inlinedAt: !392)
!394 = !DILocation(line: 45, column: 10, scope: !292, inlinedAt: !392)
!395 = !DILocation(line: 45, column: 24, scope: !291, inlinedAt: !392)
!396 = !DILocation(line: 45, column: 31, scope: !291, inlinedAt: !392)
!397 = !DILocation(line: 45, column: 19, scope: !291, inlinedAt: !392)
!398 = !DILocation(line: 45, column: 5, scope: !292, inlinedAt: !392)
!399 = !DILocation(line: 47, column: 34, scope: !290, inlinedAt: !392)
!400 = !DILocation(line: 46, column: 13, scope: !290, inlinedAt: !392)
!401 = !DILocation(line: 49, column: 14, scope: !304, inlinedAt: !392)
!402 = !DILocation(line: 49, column: 29, scope: !306, inlinedAt: !392)
!403 = !DILocation(line: 49, column: 23, scope: !306, inlinedAt: !392)
!404 = !DILocation(line: 0, scope: !290, inlinedAt: !392)
!405 = !DILocation(line: 49, column: 9, scope: !304, inlinedAt: !392)
!406 = !DILocation(line: 50, column: 26, scope: !306, inlinedAt: !392)
!407 = !DILocation(line: 50, column: 13, scope: !306, inlinedAt: !392)
!408 = !DILocation(line: 49, column: 36, scope: !306, inlinedAt: !392)
!409 = !DILocation(line: 49, column: 9, scope: !306, inlinedAt: !392)
!410 = !DILocation(line: 51, column: 15, scope: !290, inlinedAt: !392)
!411 = !DILocation(line: 51, column: 9, scope: !290, inlinedAt: !392)
!412 = !DILocation(line: 45, column: 39, scope: !291, inlinedAt: !392)
!413 = !DILocation(line: 45, column: 5, scope: !291, inlinedAt: !392)
!414 = !DILocation(line: 53, column: 21, scope: !285, inlinedAt: !392)
!415 = !DILocation(line: 53, column: 5, scope: !285, inlinedAt: !392)
!416 = !DILocation(line: 54, column: 1, scope: !285, inlinedAt: !392)
!417 = !DILocation(line: 35, column: 35, scope: !9, inlinedAt: !418)
!418 = distinct !DILocation(line: 76, column: 5, scope: !387)
!419 = !DILocation(line: 36, column: 15, scope: !9, inlinedAt: !418)
!420 = !DILocation(line: 36, column: 24, scope: !9, inlinedAt: !418)
!421 = !DILocation(line: 37, column: 21, scope: !9, inlinedAt: !418)
!422 = !DILocation(line: 38, column: 15, scope: !9, inlinedAt: !418)
!423 = !DILocation(line: 38, column: 25, scope: !9, inlinedAt: !418)
!424 = !DILocation(line: 39, column: 1, scope: !9, inlinedAt: !418)
!425 = !DILocation(line: 77, column: 8, scope: !387)
!426 = !DILocation(line: 77, column: 14, scope: !387)
!427 = !{!269, !273, i64 160}
!428 = !DILocation(line: 78, column: 5, scope: !387)
!429 = !DILocation(line: 79, column: 1, scope: !387)
!430 = distinct !DISubprogram(name: "unwatchAllKeys", scope: !1, file: !1, line: 265, type: !10, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !431)
!431 = !{!432, !433, !439, !440, !442}
!432 = !DILocalVariable(name: "c", arg: 1, scope: !430, file: !1, line: 265, type: !12)
!433 = !DILocalVariable(name: "li", scope: !430, file: !1, line: 266, type: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !104, line: 45, baseType: !435)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !104, line: 42, size: 128, elements: !436)
!436 = !{!437, !438}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !435, file: !104, line: 43, baseType: !108, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !435, file: !104, line: 44, baseType: !24, size: 32, offset: 64)
!439 = !DILocalVariable(name: "ln", scope: !430, file: !1, line: 267, type: !108)
!440 = !DILocalVariable(name: "clients", scope: !441, file: !1, line: 272, type: !102)
!441 = distinct !DILexicalBlock(scope: !430, file: !1, line: 271, column: 33)
!442 = !DILocalVariable(name: "wk", scope: !441, file: !1, line: 273, type: !443)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "watchedKey", file: !1, line: 231, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "watchedKey", file: !1, line: 228, size: 128, elements: !446)
!446 = !{!447, !448}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !445, file: !1, line: 229, baseType: !131, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !445, file: !1, line: 230, baseType: !26, size: 64, offset: 64)
!449 = !DILocation(line: 265, column: 29, scope: !430)
!450 = !DILocation(line: 266, column: 5, scope: !430)
!451 = !DILocation(line: 269, column: 9, scope: !452)
!452 = distinct !DILexicalBlock(scope: !430, file: !1, line: 269, column: 9)
!453 = !{!269, !274, i64 488}
!454 = !{!455, !270, i64 40}
!455 = !{!"list", !274, i64 0, !274, i64 8, !274, i64 16, !274, i64 24, !274, i64 32, !270, i64 40}
!456 = !DILocation(line: 269, column: 37, scope: !452)
!457 = !DILocation(line: 269, column: 9, scope: !430)
!458 = !DILocation(line: 266, column: 14, scope: !430)
!459 = !DILocation(line: 270, column: 5, scope: !430)
!460 = !DILocation(line: 271, column: 5, scope: !430)
!461 = !DILocation(line: 271, column: 17, scope: !430)
!462 = !DILocation(line: 267, column: 15, scope: !430)
!463 = !DILocation(line: 277, column: 14, scope: !441)
!464 = !{!465, !274, i64 16}
!465 = !{!"listNode", !274, i64 0, !274, i64 8, !274, i64 16}
!466 = !DILocation(line: 273, column: 21, scope: !441)
!467 = !DILocation(line: 278, column: 38, scope: !441)
!468 = !{!469, !274, i64 8}
!469 = !{!"watchedKey", !274, i64 0, !274, i64 8}
!470 = !DILocation(line: 278, column: 42, scope: !441)
!471 = !{!472, !274, i64 32}
!472 = !{!"redisDb", !274, i64 0, !274, i64 8, !274, i64 16, !274, i64 24, !274, i64 32, !273, i64 40, !275, i64 48, !274, i64 56}
!473 = !DILocation(line: 278, column: 60, scope: !441)
!474 = !{!469, !274, i64 0}
!475 = !DILocation(line: 278, column: 19, scope: !441)
!476 = !DILocation(line: 272, column: 15, scope: !441)
!477 = !DILocation(line: 279, column: 9, scope: !441)
!478 = !DILocation(line: 280, column: 29, scope: !441)
!479 = !DILocation(line: 280, column: 9, scope: !441)
!480 = !DILocation(line: 282, column: 13, scope: !481)
!481 = distinct !DILexicalBlock(scope: !441, file: !1, line: 282, column: 13)
!482 = !DILocation(line: 282, column: 33, scope: !481)
!483 = !DILocation(line: 282, column: 13, scope: !441)
!484 = !DILocation(line: 283, column: 28, scope: !481)
!485 = !DILocation(line: 283, column: 32, scope: !481)
!486 = !DILocation(line: 283, column: 50, scope: !481)
!487 = !DILocation(line: 283, column: 13, scope: !481)
!488 = !DILocation(line: 285, column: 24, scope: !441)
!489 = !DILocation(line: 285, column: 9, scope: !441)
!490 = !DILocation(line: 286, column: 26, scope: !441)
!491 = !DILocation(line: 286, column: 9, scope: !441)
!492 = !DILocation(line: 287, column: 9, scope: !441)
!493 = distinct !{!493, !460, !494}
!494 = !DILocation(line: 288, column: 5, scope: !430)
!495 = !DILocation(line: 0, scope: !452)
!496 = !DILocation(line: 289, column: 1, scope: !430)
!497 = distinct !DISubprogram(name: "flagTransaction", scope: !1, file: !1, line: 83, type: !10, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !498)
!498 = !{!499}
!499 = !DILocalVariable(name: "c", arg: 1, scope: !497, file: !1, line: 83, type: !12)
!500 = !DILocation(line: 83, column: 30, scope: !497)
!501 = !DILocation(line: 84, column: 12, scope: !502)
!502 = distinct !DILexicalBlock(scope: !497, file: !1, line: 84, column: 9)
!503 = !DILocation(line: 84, column: 18, scope: !502)
!504 = !DILocation(line: 84, column: 9, scope: !497)
!505 = !DILocation(line: 85, column: 18, scope: !502)
!506 = !DILocation(line: 85, column: 9, scope: !502)
!507 = !DILocation(line: 86, column: 1, scope: !497)
!508 = distinct !DISubprogram(name: "multiCommand", scope: !1, file: !1, line: 88, type: !10, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !509)
!509 = !{!510}
!510 = !DILocalVariable(name: "c", arg: 1, scope: !508, file: !1, line: 88, type: !12)
!511 = !DILocation(line: 88, column: 27, scope: !508)
!512 = !DILocation(line: 89, column: 12, scope: !513)
!513 = distinct !DILexicalBlock(scope: !508, file: !1, line: 89, column: 9)
!514 = !DILocation(line: 89, column: 18, scope: !513)
!515 = !DILocation(line: 89, column: 9, scope: !508)
!516 = !DILocation(line: 90, column: 9, scope: !517)
!517 = distinct !DILexicalBlock(scope: !513, file: !1, line: 89, column: 34)
!518 = !DILocation(line: 91, column: 9, scope: !517)
!519 = !DILocation(line: 93, column: 14, scope: !508)
!520 = !DILocation(line: 94, column: 23, scope: !508)
!521 = !{!522, !274, i64 8}
!522 = !{!"sharedObjectsStruct", !274, i64 0, !274, i64 8, !274, i64 16, !274, i64 24, !274, i64 32, !274, i64 40, !274, i64 48, !274, i64 56, !274, i64 64, !274, i64 72, !274, i64 80, !274, i64 88, !274, i64 96, !274, i64 104, !274, i64 112, !274, i64 120, !274, i64 128, !274, i64 136, !274, i64 144, !274, i64 152, !274, i64 160, !274, i64 168, !274, i64 176, !274, i64 184, !274, i64 192, !274, i64 200, !274, i64 208, !274, i64 216, !274, i64 224, !274, i64 232, !274, i64 240, !274, i64 248, !274, i64 256, !274, i64 264, !274, i64 272, !274, i64 280, !274, i64 288, !274, i64 296, !274, i64 304, !274, i64 312, !274, i64 320, !274, i64 328, !274, i64 336, !274, i64 344, !274, i64 352, !274, i64 360, !271, i64 368, !271, i64 448, !271, i64 80448, !271, i64 80704, !274, i64 80960, !274, i64 80968}
!523 = !DILocation(line: 94, column: 5, scope: !508)
!524 = !DILocation(line: 95, column: 1, scope: !508)
!525 = !DILocation(line: 0, scope: !517)
!526 = distinct !DISubprogram(name: "discardCommand", scope: !1, file: !1, line: 97, type: !10, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !527)
!527 = !{!528}
!528 = !DILocalVariable(name: "c", arg: 1, scope: !526, file: !1, line: 97, type: !12)
!529 = !DILocation(line: 97, column: 29, scope: !526)
!530 = !DILocation(line: 98, column: 14, scope: !531)
!531 = distinct !DILexicalBlock(scope: !526, file: !1, line: 98, column: 9)
!532 = !DILocation(line: 98, column: 20, scope: !531)
!533 = !DILocation(line: 98, column: 9, scope: !526)
!534 = !DILocation(line: 99, column: 9, scope: !535)
!535 = distinct !DILexicalBlock(scope: !531, file: !1, line: 98, column: 37)
!536 = !DILocation(line: 100, column: 9, scope: !535)
!537 = !DILocation(line: 102, column: 5, scope: !526)
!538 = !DILocation(line: 103, column: 23, scope: !526)
!539 = !DILocation(line: 103, column: 5, scope: !526)
!540 = !DILocation(line: 104, column: 1, scope: !526)
!541 = !DILocation(line: 0, scope: !535)
!542 = distinct !DISubprogram(name: "execCommandPropagateMulti", scope: !1, file: !1, line: 108, type: !10, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !543)
!543 = !{!544, !545}
!544 = !DILocalVariable(name: "c", arg: 1, scope: !542, file: !1, line: 108, type: !12)
!545 = !DILocalVariable(name: "multistring", scope: !542, file: !1, line: 109, type: !131)
!546 = !DILocation(line: 108, column: 40, scope: !542)
!547 = !DILocation(line: 109, column: 5, scope: !542)
!548 = !DILocation(line: 109, column: 25, scope: !542)
!549 = !DILocation(line: 109, column: 11, scope: !542)
!550 = !DILocation(line: 111, column: 22, scope: !542)
!551 = !{!552, !274, i64 904}
!552 = !{!"redisServer", !273, i64 0, !274, i64 8, !274, i64 16, !274, i64 24, !273, i64 32, !273, i64 36, !273, i64 40, !274, i64 48, !274, i64 56, !274, i64 64, !274, i64 72, !273, i64 80, !273, i64 84, !273, i64 88, !273, i64 92, !274, i64 96, !274, i64 104, !273, i64 112, !273, i64 116, !271, i64 120, !273, i64 164, !270, i64 168, !273, i64 176, !274, i64 184, !274, i64 192, !274, i64 200, !271, i64 208, !273, i64 216, !273, i64 220, !271, i64 224, !273, i64 352, !274, i64 360, !273, i64 368, !271, i64 372, !273, i64 436, !273, i64 440, !271, i64 444, !273, i64 508, !274, i64 512, !274, i64 520, !274, i64 528, !274, i64 536, !274, i64 544, !274, i64 552, !274, i64 560, !273, i64 568, !275, i64 576, !271, i64 584, !274, i64 840, !270, i64 848, !273, i64 856, !273, i64 860, !270, i64 864, !270, i64 872, !270, i64 880, !270, i64 888, !274, i64 896, !274, i64 904, !274, i64 912, !274, i64 920, !274, i64 928, !274, i64 936, !274, i64 944, !274, i64 952, !274, i64 960, !274, i64 968, !274, i64 976, !274, i64 984, !274, i64 992, !270, i64 1000, !275, i64 1008, !275, i64 1016, !275, i64 1024, !553, i64 1032, !275, i64 1040, !275, i64 1048, !275, i64 1056, !275, i64 1064, !275, i64 1072, !275, i64 1080, !275, i64 1088, !275, i64 1096, !275, i64 1104, !270, i64 1112, !275, i64 1120, !553, i64 1128, !275, i64 1136, !275, i64 1144, !275, i64 1152, !275, i64 1160, !274, i64 1168, !275, i64 1176, !275, i64 1184, !270, i64 1192, !554, i64 1200, !275, i64 1240, !275, i64 1248, !270, i64 1256, !270, i64 1264, !271, i64 1272, !273, i64 1728, !273, i64 1732, !273, i64 1736, !273, i64 1740, !273, i64 1744, !270, i64 1752, !273, i64 1760, !273, i64 1764, !273, i64 1768, !273, i64 1772, !270, i64 1776, !270, i64 1784, !273, i64 1792, !273, i64 1796, !273, i64 1800, !273, i64 1804, !271, i64 1808, !273, i64 1880, !273, i64 1884, !274, i64 1888, !273, i64 1896, !273, i64 1900, !270, i64 1904, !270, i64 1912, !270, i64 1920, !270, i64 1928, !273, i64 1936, !273, i64 1940, !274, i64 1944, !274, i64 1952, !273, i64 1960, !273, i64 1964, !270, i64 1968, !270, i64 1976, !270, i64 1984, !270, i64 1992, !273, i64 2000, !270, i64 2008, !273, i64 2016, !273, i64 2020, !273, i64 2024, !273, i64 2028, !273, i64 2032, !273, i64 2036, !273, i64 2040, !273, i64 2044, !273, i64 2048, !273, i64 2052, !273, i64 2056, !273, i64 2060, !273, i64 2064, !274, i64 2072, !275, i64 2080, !275, i64 2088, !273, i64 2096, !274, i64 2104, !273, i64 2112, !274, i64 2120, !273, i64 2128, !273, i64 2132, !270, i64 2136, !270, i64 2144, !270, i64 2152, !270, i64 2160, !273, i64 2168, !273, i64 2172, !273, i64 2176, !273, i64 2180, !273, i64 2184, !273, i64 2188, !271, i64 2192, !555, i64 2200, !556, i64 2224, !274, i64 2240, !273, i64 2248, !274, i64 2256, !273, i64 2264, !271, i64 2268, !271, i64 2309, !275, i64 2352, !275, i64 2360, !273, i64 2368, !273, i64 2372, !274, i64 2376, !275, i64 2384, !275, i64 2392, !275, i64 2400, !275, i64 2408, !270, i64 2416, !270, i64 2424, !273, i64 2432, !273, i64 2436, !273, i64 2440, !273, i64 2444, !273, i64 2448, !274, i64 2456, !274, i64 2464, !273, i64 2472, !273, i64 2476, !274, i64 2480, !274, i64 2488, !273, i64 2496, !273, i64 2500, !270, i64 2504, !270, i64 2512, !270, i64 2520, !273, i64 2528, !273, i64 2532, !274, i64 2536, !270, i64 2544, !273, i64 2552, !273, i64 2556, !273, i64 2560, !270, i64 2568, !273, i64 2576, !273, i64 2580, !273, i64 2584, !274, i64 2592, !271, i64 2600, !275, i64 2648, !273, i64 2656, !274, i64 2664, !274, i64 2672, !273, i64 2680, !274, i64 2688, !273, i64 2696, !273, i64 2700, !275, i64 2704, !273, i64 2712, !273, i64 2716, !273, i64 2720, !273, i64 2724, !275, i64 2728, !273, i64 2736, !271, i64 2740, !274, i64 2768, !274, i64 2776, !273, i64 2784, !273, i64 2788, !273, i64 2792, !273, i64 2796, !270, i64 2800, !270, i64 2808, !270, i64 2816, !270, i64 2824, !270, i64 2832, !270, i64 2840, !270, i64 2848, !270, i64 2856, !273, i64 2864, !273, i64 2868, !270, i64 2872, !270, i64 2880, !273, i64 2888, !275, i64 2896, !274, i64 2904, !274, i64 2912, !273, i64 2920, !273, i64 2924, !275, i64 2928, !274, i64 2936, !274, i64 2944, !273, i64 2952, !273, i64 2956, !273, i64 2960, !273, i64 2964, !274, i64 2968, !273, i64 2976, !273, i64 2980, !273, i64 2984, !274, i64 2992, !274, i64 3000, !274, i64 3008, !274, i64 3016, !275, i64 3024, !275, i64 3032, !275, i64 3040, !273, i64 3048, !273, i64 3052, !273, i64 3056, !273, i64 3060, !273, i64 3064, !273, i64 3068, !273, i64 3072, !273, i64 3076, !273, i64 3080, !273, i64 3084, !273, i64 3088, !275, i64 3096, !274, i64 3104, !274, i64 3112, !274, i64 3120, !273, i64 3128, !273, i64 3132, !273, i64 3136, !270, i64 3144, !274, i64 3152, !274, i64 3160, !274, i64 3168}
!553 = !{!"double", !271, i64 0}
!554 = !{!"malloc_stats", !270, i64 0, !270, i64 8, !270, i64 16, !270, i64 24, !270, i64 32}
!555 = !{!"", !273, i64 0, !270, i64 8, !275, i64 16}
!556 = !{!"redisOpArray", !274, i64 0, !273, i64 8}
!557 = !DILocation(line: 111, column: 38, scope: !542)
!558 = !{!269, !274, i64 16}
!559 = !DILocation(line: 111, column: 42, scope: !542)
!560 = !{!472, !273, i64 40}
!561 = !DILocation(line: 111, column: 5, scope: !542)
!562 = !DILocation(line: 113, column: 18, scope: !542)
!563 = !DILocation(line: 113, column: 5, scope: !542)
!564 = !DILocation(line: 114, column: 1, scope: !542)
!565 = distinct !DISubprogram(name: "execCommand", scope: !1, file: !1, line: 116, type: !10, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !566)
!566 = !{!567, !568, !569, !570, !571, !572, !573, !574, !577}
!567 = !DILocalVariable(name: "c", arg: 1, scope: !565, file: !1, line: 116, type: !12)
!568 = !DILocalVariable(name: "j", scope: !565, file: !1, line: 117, type: !24)
!569 = !DILocalVariable(name: "orig_argv", scope: !565, file: !1, line: 118, type: !155)
!570 = !DILocalVariable(name: "orig_argc", scope: !565, file: !1, line: 119, type: !24)
!571 = !DILocalVariable(name: "orig_cmd", scope: !565, file: !1, line: 120, type: !157)
!572 = !DILocalVariable(name: "must_propagate", scope: !565, file: !1, line: 121, type: !24)
!573 = !DILocalVariable(name: "was_master", scope: !565, file: !1, line: 122, type: !24)
!574 = !DILocalVariable(name: "is_master", scope: !575, file: !1, line: 193, type: !24)
!575 = distinct !DILexicalBlock(scope: !576, file: !1, line: 192, column: 25)
!576 = distinct !DILexicalBlock(scope: !565, file: !1, line: 192, column: 9)
!577 = !DILocalVariable(name: "execcmd", scope: !578, file: !1, line: 201, type: !144)
!578 = distinct !DILexicalBlock(scope: !579, file: !1, line: 200, column: 62)
!579 = distinct !DILexicalBlock(scope: !575, file: !1, line: 200, column: 13)
!580 = !DILocation(line: 116, column: 26, scope: !565)
!581 = !DILocation(line: 121, column: 9, scope: !565)
!582 = !DILocation(line: 122, column: 29, scope: !565)
!583 = !{!552, !274, i64 2464}
!584 = !DILocation(line: 122, column: 40, scope: !565)
!585 = !DILocation(line: 124, column: 14, scope: !586)
!586 = distinct !DILexicalBlock(scope: !565, file: !1, line: 124, column: 9)
!587 = !DILocation(line: 124, column: 20, scope: !586)
!588 = !DILocation(line: 124, column: 9, scope: !565)
!589 = !DILocation(line: 125, column: 9, scope: !590)
!590 = distinct !DILexicalBlock(scope: !586, file: !1, line: 124, column: 37)
!591 = !DILocation(line: 126, column: 9, scope: !590)
!592 = !DILocation(line: 135, column: 18, scope: !593)
!593 = distinct !DILexicalBlock(scope: !565, file: !1, line: 135, column: 9)
!594 = !DILocation(line: 135, column: 9, scope: !565)
!595 = !DILocation(line: 136, column: 30, scope: !596)
!596 = distinct !DILexicalBlock(scope: !593, file: !1, line: 135, column: 58)
!597 = !DILocation(line: 136, column: 59, scope: !596)
!598 = !DILocation(line: 137, column: 58, scope: !596)
!599 = !DILocation(line: 136, column: 21, scope: !596)
!600 = !DILocation(line: 136, column: 9, scope: !596)
!601 = !DILocation(line: 138, column: 9, scope: !596)
!602 = !DILocation(line: 139, column: 9, scope: !596)
!603 = !DILocation(line: 147, column: 17, scope: !604)
!604 = distinct !DILexicalBlock(scope: !565, file: !1, line: 147, column: 9)
!605 = !{!552, !273, i64 860}
!606 = !DILocation(line: 147, column: 10, scope: !604)
!607 = !DILocation(line: 147, column: 25, scope: !604)
!608 = !DILocation(line: 147, column: 56, scope: !604)
!609 = !DILocation(line: 147, column: 49, scope: !604)
!610 = !DILocation(line: 148, column: 20, scope: !604)
!611 = !DILocation(line: 148, column: 37, scope: !604)
!612 = !DILocation(line: 148, column: 50, scope: !604)
!613 = !DILocation(line: 148, column: 60, scope: !604)
!614 = !DILocation(line: 147, column: 9, scope: !565)
!615 = !DILocation(line: 150, column: 9, scope: !616)
!616 = distinct !DILexicalBlock(scope: !604, file: !1, line: 149, column: 5)
!617 = !DILocation(line: 153, column: 9, scope: !616)
!618 = !DILocation(line: 154, column: 9, scope: !616)
!619 = !DILocation(line: 158, column: 5, scope: !565)
!620 = !DILocation(line: 159, column: 20, scope: !565)
!621 = !DILocation(line: 118, column: 12, scope: !565)
!622 = !DILocation(line: 160, column: 20, scope: !565)
!623 = !DILocation(line: 119, column: 9, scope: !565)
!624 = !DILocation(line: 161, column: 19, scope: !565)
!625 = !DILocation(line: 120, column: 26, scope: !565)
!626 = !DILocation(line: 162, column: 38, scope: !565)
!627 = !DILocation(line: 162, column: 28, scope: !565)
!628 = !DILocation(line: 162, column: 5, scope: !565)
!629 = !DILocation(line: 117, column: 9, scope: !565)
!630 = !DILocation(line: 163, column: 10, scope: !631)
!631 = distinct !DILexicalBlock(scope: !565, file: !1, line: 163, column: 5)
!632 = !DILocation(line: 163, column: 31, scope: !633)
!633 = distinct !DILexicalBlock(scope: !631, file: !1, line: 163, column: 5)
!634 = !DILocation(line: 163, column: 19, scope: !633)
!635 = !DILocation(line: 163, column: 5, scope: !631)
!636 = !DILocation(line: 164, column: 29, scope: !637)
!637 = distinct !DILexicalBlock(scope: !633, file: !1, line: 163, column: 43)
!638 = !DILocation(line: 164, column: 41, scope: !637)
!639 = !DILocation(line: 164, column: 17, scope: !637)
!640 = !DILocation(line: 165, column: 41, scope: !637)
!641 = !DILocation(line: 165, column: 17, scope: !637)
!642 = !DILocation(line: 166, column: 40, scope: !637)
!643 = !DILocation(line: 166, column: 16, scope: !637)
!644 = !DILocation(line: 173, column: 14, scope: !645)
!645 = distinct !DILexicalBlock(scope: !637, file: !1, line: 173, column: 13)
!646 = !DILocation(line: 173, column: 29, scope: !645)
!647 = !DILocation(line: 173, column: 42, scope: !645)
!648 = !DILocation(line: 173, column: 48, scope: !645)
!649 = !DILocation(line: 173, column: 13, scope: !637)
!650 = !DILocation(line: 108, column: 40, scope: !542, inlinedAt: !651)
!651 = distinct !DILocation(line: 174, column: 13, scope: !652)
!652 = distinct !DILexicalBlock(scope: !645, file: !1, line: 173, column: 77)
!653 = !DILocation(line: 109, column: 5, scope: !542, inlinedAt: !651)
!654 = !DILocation(line: 109, column: 25, scope: !542, inlinedAt: !651)
!655 = !DILocation(line: 109, column: 11, scope: !542, inlinedAt: !651)
!656 = !DILocation(line: 111, column: 22, scope: !542, inlinedAt: !651)
!657 = !DILocation(line: 111, column: 38, scope: !542, inlinedAt: !651)
!658 = !DILocation(line: 111, column: 42, scope: !542, inlinedAt: !651)
!659 = !DILocation(line: 111, column: 5, scope: !542, inlinedAt: !651)
!660 = !DILocation(line: 113, column: 18, scope: !542, inlinedAt: !651)
!661 = !DILocation(line: 113, column: 5, scope: !542, inlinedAt: !651)
!662 = !DILocation(line: 114, column: 1, scope: !542, inlinedAt: !651)
!663 = !DILocation(line: 176, column: 9, scope: !652)
!664 = !DILocation(line: 0, scope: !652)
!665 = !DILocation(line: 178, column: 23, scope: !637)
!666 = !DILocation(line: 178, column: 16, scope: !637)
!667 = !DILocation(line: 178, column: 9, scope: !637)
!668 = !DILocation(line: 181, column: 41, scope: !637)
!669 = !DILocation(line: 181, column: 19, scope: !637)
!670 = !DILocation(line: 181, column: 31, scope: !637)
!671 = !DILocation(line: 181, column: 36, scope: !637)
!672 = !DILocation(line: 182, column: 41, scope: !637)
!673 = !DILocation(line: 182, column: 9, scope: !637)
!674 = !DILocation(line: 182, column: 36, scope: !637)
!675 = !DILocation(line: 183, column: 40, scope: !637)
!676 = !DILocation(line: 183, column: 31, scope: !637)
!677 = !DILocation(line: 183, column: 35, scope: !637)
!678 = !DILocation(line: 163, column: 39, scope: !633)
!679 = !DILocation(line: 163, column: 5, scope: !633)
!680 = distinct !{!680, !635, !681}
!681 = !DILocation(line: 184, column: 5, scope: !631)
!682 = !DILocation(line: 186, column: 13, scope: !565)
!683 = !DILocation(line: 185, column: 13, scope: !565)
!684 = !DILocation(line: 188, column: 5, scope: !565)
!685 = !DILocation(line: 192, column: 9, scope: !576)
!686 = !DILocation(line: 192, column: 9, scope: !565)
!687 = !DILocation(line: 193, column: 32, scope: !575)
!688 = !DILocation(line: 193, column: 43, scope: !575)
!689 = !DILocation(line: 194, column: 21, scope: !575)
!690 = !{!552, !275, i64 2080}
!691 = !DILocation(line: 200, column: 20, scope: !579)
!692 = !{!552, !274, i64 2376}
!693 = !DILocation(line: 200, column: 13, scope: !579)
!694 = !DILocation(line: 200, column: 33, scope: !579)
!695 = !DILocation(line: 202, column: 44, scope: !578)
!696 = !DILocation(line: 202, column: 13, scope: !578)
!697 = !DILocation(line: 203, column: 9, scope: !578)
!698 = !DILocation(line: 0, scope: !596)
!699 = !DILocation(line: 212, column: 9, scope: !700)
!700 = distinct !DILexicalBlock(scope: !565, file: !1, line: 212, column: 9)
!701 = !{!552, !274, i64 544}
!702 = !DILocation(line: 212, column: 48, scope: !700)
!703 = !DILocation(line: 212, column: 41, scope: !700)
!704 = !DILocation(line: 212, column: 37, scope: !700)
!705 = !DILocation(line: 213, column: 54, scope: !700)
!706 = !DILocation(line: 213, column: 58, scope: !700)
!707 = !DILocation(line: 213, column: 64, scope: !700)
!708 = !DILocation(line: 213, column: 72, scope: !700)
!709 = !DILocation(line: 213, column: 9, scope: !700)
!710 = !DILocation(line: 0, scope: !590)
!711 = !DILocation(line: 214, column: 1, scope: !565)
!712 = distinct !DISubprogram(name: "watchForKey", scope: !1, file: !1, line: 234, type: !713, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !715)
!713 = !DISubroutineType(types: !714)
!714 = !{null, !12, !131}
!715 = !{!716, !717, !718, !719, !720, !721}
!716 = !DILocalVariable(name: "c", arg: 1, scope: !712, file: !1, line: 234, type: !12)
!717 = !DILocalVariable(name: "key", arg: 2, scope: !712, file: !1, line: 234, type: !131)
!718 = !DILocalVariable(name: "clients", scope: !712, file: !1, line: 235, type: !102)
!719 = !DILocalVariable(name: "li", scope: !712, file: !1, line: 236, type: !434)
!720 = !DILocalVariable(name: "ln", scope: !712, file: !1, line: 237, type: !108)
!721 = !DILocalVariable(name: "wk", scope: !712, file: !1, line: 238, type: !443)
!722 = !DILocation(line: 234, column: 26, scope: !712)
!723 = !DILocation(line: 234, column: 35, scope: !712)
!724 = !DILocation(line: 235, column: 11, scope: !712)
!725 = !DILocation(line: 236, column: 5, scope: !712)
!726 = !DILocation(line: 241, column: 19, scope: !712)
!727 = !DILocation(line: 236, column: 14, scope: !712)
!728 = !DILocation(line: 241, column: 5, scope: !712)
!729 = !DILocation(line: 242, column: 5, scope: !712)
!730 = !DILocation(line: 242, column: 17, scope: !712)
!731 = !DILocation(line: 237, column: 15, scope: !712)
!732 = !DILocation(line: 243, column: 14, scope: !733)
!733 = distinct !DILexicalBlock(scope: !712, file: !1, line: 242, column: 33)
!734 = !DILocation(line: 238, column: 17, scope: !712)
!735 = !DILocation(line: 244, column: 17, scope: !736)
!736 = distinct !DILexicalBlock(scope: !733, file: !1, line: 244, column: 13)
!737 = !DILocation(line: 244, column: 26, scope: !736)
!738 = !DILocation(line: 244, column: 20, scope: !736)
!739 = !DILocation(line: 244, column: 29, scope: !736)
!740 = !DILocation(line: 244, column: 59, scope: !736)
!741 = !DILocation(line: 244, column: 32, scope: !736)
!742 = !DILocation(line: 244, column: 13, scope: !733)
!743 = distinct !{!743, !729, !744}
!744 = !DILocation(line: 246, column: 5, scope: !712)
!745 = !DILocation(line: 248, column: 33, scope: !712)
!746 = !DILocation(line: 248, column: 37, scope: !712)
!747 = !DILocation(line: 248, column: 50, scope: !712)
!748 = !DILocation(line: 248, column: 15, scope: !712)
!749 = !DILocation(line: 249, column: 10, scope: !750)
!750 = distinct !DILexicalBlock(scope: !712, file: !1, line: 249, column: 9)
!751 = !DILocation(line: 249, column: 9, scope: !712)
!752 = !DILocation(line: 250, column: 19, scope: !753)
!753 = distinct !DILexicalBlock(scope: !750, file: !1, line: 249, column: 19)
!754 = !DILocation(line: 251, column: 20, scope: !753)
!755 = !DILocation(line: 251, column: 24, scope: !753)
!756 = !DILocation(line: 251, column: 41, scope: !753)
!757 = !DILocation(line: 251, column: 9, scope: !753)
!758 = !DILocation(line: 252, column: 9, scope: !753)
!759 = !DILocation(line: 253, column: 5, scope: !753)
!760 = !DILocation(line: 0, scope: !753)
!761 = !DILocation(line: 254, column: 29, scope: !712)
!762 = !DILocation(line: 254, column: 5, scope: !712)
!763 = !DILocation(line: 256, column: 10, scope: !712)
!764 = !DILocation(line: 257, column: 9, scope: !712)
!765 = !DILocation(line: 257, column: 13, scope: !712)
!766 = !DILocation(line: 258, column: 17, scope: !712)
!767 = !DILocation(line: 258, column: 9, scope: !712)
!768 = !DILocation(line: 258, column: 12, scope: !712)
!769 = !DILocation(line: 259, column: 5, scope: !712)
!770 = !DILocation(line: 260, column: 24, scope: !712)
!771 = !DILocation(line: 260, column: 5, scope: !712)
!772 = !DILocation(line: 261, column: 1, scope: !712)
!773 = !DILocation(line: 0, scope: !736)
!774 = distinct !DISubprogram(name: "touchWatchedKey", scope: !1, file: !1, line: 293, type: !775, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !777)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !26, !131}
!777 = !{!778, !779, !780, !781, !782, !783}
!778 = !DILocalVariable(name: "db", arg: 1, scope: !774, file: !1, line: 293, type: !26)
!779 = !DILocalVariable(name: "key", arg: 2, scope: !774, file: !1, line: 293, type: !131)
!780 = !DILocalVariable(name: "clients", scope: !774, file: !1, line: 294, type: !102)
!781 = !DILocalVariable(name: "li", scope: !774, file: !1, line: 295, type: !434)
!782 = !DILocalVariable(name: "ln", scope: !774, file: !1, line: 296, type: !108)
!783 = !DILocalVariable(name: "c", scope: !784, file: !1, line: 306, type: !12)
!784 = distinct !DILexicalBlock(scope: !774, file: !1, line: 305, column: 33)
!785 = !DILocation(line: 293, column: 31, scope: !774)
!786 = !DILocation(line: 293, column: 41, scope: !774)
!787 = !DILocation(line: 295, column: 5, scope: !774)
!788 = !DILocation(line: 298, column: 9, scope: !789)
!789 = distinct !DILexicalBlock(scope: !774, file: !1, line: 298, column: 9)
!790 = !{!791, !270, i64 24}
!791 = !{!"dictht", !274, i64 0, !270, i64 8, !270, i64 16, !270, i64 24}
!792 = !DILocation(line: 298, column: 36, scope: !789)
!793 = !DILocation(line: 298, column: 9, scope: !774)
!794 = !DILocation(line: 299, column: 48, scope: !774)
!795 = !DILocation(line: 299, column: 15, scope: !774)
!796 = !DILocation(line: 300, column: 10, scope: !797)
!797 = distinct !DILexicalBlock(scope: !774, file: !1, line: 300, column: 9)
!798 = !DILocation(line: 300, column: 9, scope: !774)
!799 = !DILocation(line: 294, column: 11, scope: !774)
!800 = !DILocation(line: 295, column: 14, scope: !774)
!801 = !DILocation(line: 304, column: 5, scope: !774)
!802 = !DILocation(line: 305, column: 5, scope: !774)
!803 = !DILocation(line: 305, column: 17, scope: !774)
!804 = !DILocation(line: 296, column: 15, scope: !774)
!805 = !DILocation(line: 306, column: 21, scope: !784)
!806 = !DILocation(line: 306, column: 17, scope: !784)
!807 = !DILocation(line: 308, column: 12, scope: !784)
!808 = !DILocation(line: 308, column: 18, scope: !784)
!809 = distinct !{!809, !802, !810}
!810 = !DILocation(line: 309, column: 5, scope: !774)
!811 = !DILocation(line: 0, scope: !789)
!812 = !DILocation(line: 310, column: 1, scope: !774)
!813 = distinct !DISubprogram(name: "touchWatchedKeysOnFlush", scope: !1, file: !1, line: 316, type: !814, isLocal: false, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !816)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !24}
!816 = !{!817, !818, !819, !820, !821, !823}
!817 = !DILocalVariable(name: "dbid", arg: 1, scope: !813, file: !1, line: 316, type: !24)
!818 = !DILocalVariable(name: "li1", scope: !813, file: !1, line: 317, type: !434)
!819 = !DILocalVariable(name: "li2", scope: !813, file: !1, line: 317, type: !434)
!820 = !DILocalVariable(name: "ln", scope: !813, file: !1, line: 318, type: !108)
!821 = !DILocalVariable(name: "c", scope: !822, file: !1, line: 323, type: !12)
!822 = distinct !DILexicalBlock(scope: !813, file: !1, line: 322, column: 34)
!823 = !DILocalVariable(name: "wk", scope: !824, file: !1, line: 326, type: !443)
!824 = distinct !DILexicalBlock(scope: !822, file: !1, line: 325, column: 38)
!825 = !DILocation(line: 316, column: 34, scope: !813)
!826 = !DILocation(line: 317, column: 5, scope: !813)
!827 = !DILocation(line: 321, column: 23, scope: !813)
!828 = !{!552, !274, i64 512}
!829 = !DILocation(line: 317, column: 14, scope: !813)
!830 = !DILocation(line: 321, column: 5, scope: !813)
!831 = !DILocation(line: 322, column: 5, scope: !813)
!832 = !DILocation(line: 322, column: 17, scope: !813)
!833 = !DILocation(line: 318, column: 15, scope: !813)
!834 = !DILocation(line: 323, column: 21, scope: !822)
!835 = !DILocation(line: 323, column: 17, scope: !822)
!836 = !DILocation(line: 324, column: 23, scope: !822)
!837 = !DILocation(line: 317, column: 19, scope: !813)
!838 = !DILocation(line: 324, column: 9, scope: !822)
!839 = !DILocation(line: 325, column: 9, scope: !822)
!840 = !DILocation(line: 325, column: 21, scope: !822)
!841 = !DILocation(line: 326, column: 30, scope: !824)
!842 = !DILocation(line: 326, column: 25, scope: !824)
!843 = !DILocation(line: 331, column: 28, scope: !844)
!844 = distinct !DILexicalBlock(scope: !824, file: !1, line: 331, column: 17)
!845 = !DILocation(line: 0, scope: !844)
!846 = !DILocation(line: 331, column: 39, scope: !844)
!847 = !DILocation(line: 331, column: 42, scope: !844)
!848 = !DILocation(line: 331, column: 17, scope: !824)
!849 = !DILocation(line: 332, column: 38, scope: !850)
!850 = distinct !DILexicalBlock(scope: !851, file: !1, line: 332, column: 21)
!851 = distinct !DILexicalBlock(scope: !844, file: !1, line: 331, column: 51)
!852 = !{!472, !274, i64 0}
!853 = !DILocation(line: 332, column: 48, scope: !850)
!854 = !DILocation(line: 332, column: 53, scope: !850)
!855 = !{!856, !274, i64 8}
!856 = !{!"redisObject", !273, i64 0, !273, i64 0, !273, i64 1, !273, i64 4, !274, i64 8}
!857 = !DILocation(line: 332, column: 21, scope: !850)
!858 = !DILocation(line: 332, column: 58, scope: !850)
!859 = !DILocation(line: 332, column: 21, scope: !851)
!860 = !DILocation(line: 333, column: 30, scope: !850)
!861 = !DILocation(line: 333, column: 21, scope: !850)
!862 = distinct !{!862, !839, !863}
!863 = !DILocation(line: 335, column: 9, scope: !822)
!864 = distinct !{!864, !831, !865}
!865 = !DILocation(line: 336, column: 5, scope: !813)
!866 = !DILocation(line: 337, column: 1, scope: !813)
!867 = distinct !DISubprogram(name: "watchCommand", scope: !1, file: !1, line: 339, type: !10, isLocal: false, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !868)
!868 = !{!869, !870}
!869 = !DILocalVariable(name: "c", arg: 1, scope: !867, file: !1, line: 339, type: !12)
!870 = !DILocalVariable(name: "j", scope: !867, file: !1, line: 340, type: !24)
!871 = !DILocation(line: 339, column: 27, scope: !867)
!872 = !DILocation(line: 342, column: 12, scope: !873)
!873 = distinct !DILexicalBlock(scope: !867, file: !1, line: 342, column: 9)
!874 = !DILocation(line: 342, column: 18, scope: !873)
!875 = !DILocation(line: 342, column: 9, scope: !867)
!876 = !DILocation(line: 343, column: 9, scope: !877)
!877 = distinct !DILexicalBlock(scope: !873, file: !1, line: 342, column: 34)
!878 = !DILocation(line: 344, column: 9, scope: !877)
!879 = !DILocation(line: 340, column: 9, scope: !867)
!880 = !DILocation(line: 346, column: 10, scope: !881)
!881 = distinct !DILexicalBlock(scope: !867, file: !1, line: 346, column: 5)
!882 = !DILocation(line: 346, column: 24, scope: !883)
!883 = distinct !DILexicalBlock(scope: !881, file: !1, line: 346, column: 5)
!884 = !DILocation(line: 346, column: 19, scope: !883)
!885 = !DILocation(line: 346, column: 5, scope: !881)
!886 = !DILocation(line: 347, column: 26, scope: !883)
!887 = !DILocation(line: 347, column: 23, scope: !883)
!888 = !DILocation(line: 347, column: 9, scope: !883)
!889 = !DILocation(line: 346, column: 31, scope: !883)
!890 = !DILocation(line: 346, column: 5, scope: !883)
!891 = distinct !{!891, !885, !892}
!892 = !DILocation(line: 347, column: 33, scope: !881)
!893 = !DILocation(line: 348, column: 23, scope: !867)
!894 = !DILocation(line: 348, column: 5, scope: !867)
!895 = !DILocation(line: 349, column: 1, scope: !867)
!896 = !DILocation(line: 0, scope: !877)
!897 = distinct !DISubprogram(name: "unwatchCommand", scope: !1, file: !1, line: 351, type: !10, isLocal: false, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !898)
!898 = !{!899}
!899 = !DILocalVariable(name: "c", arg: 1, scope: !897, file: !1, line: 351, type: !12)
!900 = !DILocation(line: 351, column: 29, scope: !897)
!901 = !DILocation(line: 352, column: 5, scope: !897)
!902 = !DILocation(line: 353, column: 8, scope: !897)
!903 = !DILocation(line: 353, column: 14, scope: !897)
!904 = !DILocation(line: 354, column: 23, scope: !897)
!905 = !DILocation(line: 354, column: 5, scope: !897)
!906 = !DILocation(line: 355, column: 1, scope: !897)
