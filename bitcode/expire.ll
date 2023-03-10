; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/expire.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/expire.c"
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

@server = external dso_local local_unnamed_addr global %struct.redisServer, align 8
@.str = private unnamed_addr constant [8 x i8] c"expired\00", align 1
@activeExpireCycle.current_db = internal unnamed_addr global i32 0, align 4, !dbg !0
@activeExpireCycle.timelimit_exit = internal unnamed_addr global i1 false, align 4, !dbg !217
@activeExpireCycle.last_fast_cycle = internal unnamed_addr global i64 0, align 8, !dbg !62
@.str.1 = private unnamed_addr constant [13 x i8] c"expire-cycle\00", align 1
@slaveKeysWithExpire = dso_local local_unnamed_addr global %struct.dict* null, align 8, !dbg !65
@rememberSlaveKeyWithExpire.dt = internal global %struct.dictType { i64 (i8*)* @dictSdsHash, i8* (i8*, i8*)* null, i8* (i8*, i8*)* null, i32 (i8*, i8*, i8*)* @dictSdsKeyCompare, void (i8*, i8*)* @dictSdsDestructor, void (i8*, i8*)* null }, align 8, !dbg !129
@shared = external dso_local local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"deleted\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/expire.c\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"expire\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @activeExpireCycleTryExpire(%struct.redisDb*, %struct.dictEntry* nocapture readonly, i64) local_unnamed_addr #0 !dbg !222 {
  %4 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 1, !dbg !239
  %5 = bitcast %union.anon* %4 to i64*, !dbg !239
  %6 = load i64, i64* %5, align 8, !dbg !239, !tbaa !240
  %7 = icmp slt i64 %6, %2, !dbg !244
  br i1 %7, label %8, label %50, !dbg !245

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 0, !dbg !246
  %10 = load i8*, i8** %9, align 8, !dbg !246, !tbaa !247
  %11 = getelementptr inbounds i8, i8* %10, i64 -1, !dbg !262
  %12 = load i8, i8* %11, align 1, !dbg !262, !tbaa !240
  %13 = trunc i8 %12 to i3, !dbg !264
  switch i3 %13, label %35 [
    i3 0, label %14
    i3 1, label %17
    i3 2, label %21
    i3 3, label %26
    i3 -4, label %31
  ], !dbg !264

; <label>:14:                                     ; preds = %8
  %15 = lshr i8 %12, 3, !dbg !265
  %16 = zext i8 %15 to i64, !dbg !265
  br label %35, !dbg !267

; <label>:17:                                     ; preds = %8
  %18 = getelementptr inbounds i8, i8* %10, i64 -3, !dbg !268
  %19 = load i8, i8* %18, align 1, !dbg !269, !tbaa !240
  %20 = zext i8 %19 to i64, !dbg !268
  br label %35, !dbg !270

; <label>:21:                                     ; preds = %8
  %22 = getelementptr inbounds i8, i8* %10, i64 -5, !dbg !271
  %23 = bitcast i8* %22 to i16*, !dbg !272
  %24 = load i16, i16* %23, align 1, !dbg !272, !tbaa !273
  %25 = zext i16 %24 to i64, !dbg !271
  br label %35, !dbg !275

; <label>:26:                                     ; preds = %8
  %27 = getelementptr inbounds i8, i8* %10, i64 -9, !dbg !276
  %28 = bitcast i8* %27 to i32*, !dbg !277
  %29 = load i32, i32* %28, align 1, !dbg !277, !tbaa !278
  %30 = zext i32 %29 to i64, !dbg !276
  br label %35, !dbg !280

; <label>:31:                                     ; preds = %8
  %32 = getelementptr inbounds i8, i8* %10, i64 -17, !dbg !281
  %33 = bitcast i8* %32 to i64*, !dbg !282
  %34 = load i64, i64* %33, align 1, !dbg !282, !tbaa !283
  br label %35, !dbg !285

; <label>:35:                                     ; preds = %8, %14, %17, %21, %26, %31
  %36 = phi i64 [ %34, %31 ], [ %30, %26 ], [ %25, %21 ], [ %20, %17 ], [ %16, %14 ], [ 0, %8 ], !dbg !286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  %37 = tail call %struct.redisObject* @createStringObject(i8* %10, i64 %36) #6, !dbg !288
  %38 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 286), align 4, !dbg !290, !tbaa !291
  tail call void @propagateExpire(%struct.redisDb* %0, %struct.redisObject* %37, i32 %38) #6, !dbg !298
  %39 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 286), align 4, !dbg !299, !tbaa !291
  %40 = icmp eq i32 %39, 0, !dbg !301
  br i1 %40, label %43, label %41, !dbg !302

; <label>:41:                                     ; preds = %35
  %42 = tail call i32 @dbAsyncDelete(%struct.redisDb* %0, %struct.redisObject* %37) #6, !dbg !303
  br label %45, !dbg !303

; <label>:43:                                     ; preds = %35
  %44 = tail call i32 @dbSyncDelete(%struct.redisDb* %0, %struct.redisObject* %37) #6, !dbg !304
  br label %45

; <label>:45:                                     ; preds = %43, %41
  %46 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 5, !dbg !305
  %47 = load i32, i32* %46, align 8, !dbg !305, !tbaa !306
  tail call void @notifyKeyspaceEvent(i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.redisObject* %37, i32 %47) #6, !dbg !308
  tail call void @decrRefCount(%struct.redisObject* %37) #6, !dbg !309
  %48 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 72), align 8, !dbg !310, !tbaa !311
  %49 = add nsw i64 %48, 1, !dbg !310
  store i64 %49, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 72), align 8, !dbg !310, !tbaa !311
  br label %50

; <label>:50:                                     ; preds = %3, %45
  %51 = phi i32 [ 1, %45 ], [ 0, %3 ], !dbg !312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  ret i32 %51, !dbg !314
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @propagateExpire(%struct.redisDb*, %struct.redisObject*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @dbAsyncDelete(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @dbSyncDelete(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @notifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local void @activeExpireCycle(i32) local_unnamed_addr #0 !dbg !2 {
  %2 = tail call i64 @ustime() #6, !dbg !318
  %3 = tail call i32 @clientsArePaused() #6, !dbg !320
  %4 = icmp eq i32 %3, 0, !dbg !320
  br i1 %4, label %5, label %164, !dbg !322

; <label>:5:                                      ; preds = %1
  %6 = icmp eq i32 %0, 1, !dbg !323
  %7 = load i1, i1* @activeExpireCycle.timelimit_exit, align 4
  br i1 %6, label %8, label %14, !dbg !325

; <label>:8:                                      ; preds = %5
  br i1 %7, label %9, label %164, !dbg !326

; <label>:9:                                      ; preds = %8
  %10 = load i64, i64* @activeExpireCycle.last_fast_cycle, align 8, !dbg !328, !tbaa !330
  %11 = add nsw i64 %10, 2000, !dbg !331
  %12 = icmp slt i64 %2, %11, !dbg !332
  br i1 %12, label %164, label %13, !dbg !333

; <label>:13:                                     ; preds = %9
  store i64 %2, i64* @activeExpireCycle.last_fast_cycle, align 8, !dbg !334, !tbaa !330
  br label %14, !dbg !335

; <label>:14:                                     ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ %7, %5 ]
  %16 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !336, !tbaa !338
  %17 = icmp slt i32 %16, 16, !dbg !339
  %18 = or i1 %17, %15, !dbg !340
  %19 = select i1 %18, i32 %16, i32 16, !dbg !340
  %20 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 6), align 8, !dbg !341, !tbaa !342
  %21 = sdiv i32 25000000, %20, !dbg !343
  %22 = sdiv i32 %21, 100, !dbg !344
  store i1 false, i1* @activeExpireCycle.timelimit_exit, align 4
  %23 = icmp slt i32 %21, 100, !dbg !345
  %24 = select i1 %23, i32 1, i32 %22, !dbg !348
  %25 = select i1 %6, i32 1000, i32 %24, !dbg !349
  %26 = sext i32 %25 to i64, !dbg !349
  %27 = icmp sgt i32 %19, 0, !dbg !354
  br i1 %27, label %28, label %141, !dbg !355

; <label>:28:                                     ; preds = %14, %139
  %29 = phi i32 [ %140, %139 ], [ %16, %14 ], !dbg !356
  %30 = phi i32 [ %134, %139 ], [ 0, %14 ]
  %31 = phi i32 [ %46, %139 ], [ 0, %14 ]
  %32 = phi i64 [ %132, %139 ], [ 0, %14 ]
  %33 = phi i64 [ %133, %139 ], [ 0, %14 ]
  %34 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !357, !tbaa !358
  %35 = load i32, i32* @activeExpireCycle.current_db, align 4, !dbg !359, !tbaa !278
  %36 = urem i32 %35, %29, !dbg !360
  %37 = zext i32 %36 to i64, !dbg !361
  %38 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %34, i64 %37, !dbg !361
  %39 = add i32 %35, 1, !dbg !363
  store i32 %39, i32* @activeExpireCycle.current_db, align 4, !dbg !363, !tbaa !278
  %40 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %34, i64 %37, i32 1
  %41 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %34, i64 %37, i32 6
  br label %42, !dbg !364

; <label>:42:                                     ; preds = %129, %28
  %43 = phi i64 [ %33, %28 ], [ %119, %129 ], !dbg !350
  %44 = phi i64 [ %32, %28 ], [ %117, %129 ], !dbg !351
  %45 = phi i32 [ %31, %28 ], [ %46, %129 ], !dbg !365
  %46 = add nsw i32 %45, 1, !dbg !366
  %47 = load %struct.dict*, %struct.dict** %40, align 8, !dbg !367, !tbaa !369
  %48 = getelementptr inbounds %struct.dict, %struct.dict* %47, i64 0, i32 2, i64 0, i32 3, !dbg !367
  %49 = load i64, i64* %48, align 8, !dbg !367, !tbaa !370
  %50 = getelementptr inbounds %struct.dict, %struct.dict* %47, i64 0, i32 2, i64 1, i32 3, !dbg !367
  %51 = load i64, i64* %50, align 8, !dbg !367, !tbaa !370
  %52 = add i64 %51, %49, !dbg !367
  %53 = icmp eq i64 %52, 0, !dbg !373
  br i1 %53, label %54, label %55, !dbg !374

; <label>:54:                                     ; preds = %42
  store i64 0, i64* %41, align 8, !dbg !375, !tbaa !377
  br label %131, !dbg !378

; <label>:55:                                     ; preds = %42
  %56 = getelementptr inbounds %struct.dict, %struct.dict* %47, i64 0, i32 2, i64 0, i32 1, !dbg !379
  %57 = load i64, i64* %56, align 8, !dbg !379, !tbaa !380
  %58 = getelementptr inbounds %struct.dict, %struct.dict* %47, i64 0, i32 2, i64 1, i32 1, !dbg !379
  %59 = load i64, i64* %58, align 8, !dbg !379, !tbaa !380
  %60 = add i64 %59, %57, !dbg !379
  %61 = tail call i64 @mstime() #6, !dbg !382
  %62 = icmp ugt i64 %60, 4, !dbg !384
  %63 = mul i64 %52, 100, !dbg !386
  %64 = icmp ugt i64 %60, %63, !dbg !387
  %65 = and i1 %62, %64, !dbg !388
  br i1 %65, label %131, label %66, !dbg !388

; <label>:66:                                     ; preds = %55
  %67 = icmp ult i64 %52, 20, !dbg !391
  %68 = select i1 %67, i64 %52, i64 20, !dbg !391
  %69 = icmp eq i64 %68, 0, !dbg !392
  br i1 %69, label %116, label %70, !dbg !392

; <label>:70:                                     ; preds = %66, %80
  %71 = phi i64 [ %76, %80 ], [ %68, %66 ]
  %72 = phi i32 [ %93, %80 ], [ 0, %66 ]
  %73 = phi i64 [ %91, %80 ], [ 0, %66 ]
  %74 = phi i32 [ %88, %80 ], [ 0, %66 ]
  %75 = phi i64 [ %94, %80 ], [ %43, %66 ]
  %76 = add i64 %71, -1, !dbg !393
  %77 = load %struct.dict*, %struct.dict** %40, align 8, !dbg !394, !tbaa !369
  %78 = tail call %struct.dictEntry* @dictGetRandomKey(%struct.dict* %77) #6, !dbg !396
  %79 = icmp eq %struct.dictEntry* %78, null, !dbg !398
  br i1 %79, label %96, label %80, !dbg !399

; <label>:80:                                     ; preds = %70
  %81 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %78, i64 0, i32 1, !dbg !400
  %82 = bitcast %union.anon* %81 to i64*, !dbg !400
  %83 = load i64, i64* %82, align 8, !dbg !400, !tbaa !240
  %84 = sub nsw i64 %83, %61, !dbg !401
  %85 = tail call i32 @activeExpireCycleTryExpire(%struct.redisDb* nonnull %38, %struct.dictEntry* nonnull %78, i64 %61) #7, !dbg !403
  %86 = icmp ne i32 %85, 0, !dbg !403
  %87 = zext i1 %86 to i32, !dbg !405
  %88 = add nuw nsw i32 %74, %87, !dbg !405
  %89 = icmp sgt i64 %84, 0, !dbg !406
  %90 = select i1 %89, i64 %84, i64 0, !dbg !408
  %91 = add nuw nsw i64 %90, %73, !dbg !408
  %92 = zext i1 %89 to i32, !dbg !408
  %93 = add nuw nsw i32 %72, %92, !dbg !408
  %94 = add nsw i64 %75, 1, !dbg !409
  %95 = icmp eq i64 %76, 0, !dbg !392
  br i1 %95, label %96, label %70, !dbg !392

; <label>:96:                                     ; preds = %80, %70
  %97 = phi i64 [ %94, %80 ], [ %75, %70 ], !dbg !350
  %98 = phi i32 [ %88, %80 ], [ %74, %70 ], !dbg !410
  %99 = phi i64 [ %91, %80 ], [ %73, %70 ], !dbg !411
  %100 = phi i32 [ %93, %80 ], [ %72, %70 ], !dbg !412
  %101 = zext i32 %98 to i64, !dbg !413
  %102 = add nsw i64 %44, %101, !dbg !414
  %103 = icmp eq i32 %100, 0, !dbg !415
  br i1 %103, label %116, label %104, !dbg !416

; <label>:104:                                    ; preds = %96
  %105 = zext i32 %100 to i64, !dbg !417
  %106 = udiv i64 %99, %105, !dbg !418
  %107 = load i64, i64* %41, align 8, !dbg !420, !tbaa !377
  %108 = icmp eq i64 %107, 0, !dbg !422
  br i1 %108, label %109, label %110, !dbg !423

; <label>:109:                                    ; preds = %104
  store i64 %106, i64* %41, align 8, !dbg !424, !tbaa !377
  br label %110, !dbg !425

; <label>:110:                                    ; preds = %109, %104
  %111 = phi i64 [ %106, %109 ], [ %107, %104 ], !dbg !426
  %112 = sdiv i64 %111, 50, !dbg !427
  %113 = mul nsw i64 %112, 49, !dbg !428
  %114 = udiv i64 %106, 50, !dbg !429
  %115 = add nsw i64 %113, %114, !dbg !430
  store i64 %115, i64* %41, align 8, !dbg !431, !tbaa !377
  br label %116, !dbg !432

; <label>:116:                                    ; preds = %66, %96, %110
  %117 = phi i64 [ %102, %96 ], [ %102, %110 ], [ %44, %66 ]
  %118 = phi i32 [ %98, %96 ], [ %98, %110 ], [ 0, %66 ]
  %119 = phi i64 [ %97, %96 ], [ %97, %110 ], [ %43, %66 ]
  %120 = and i32 %46, 15, !dbg !433
  %121 = icmp eq i32 %120, 0, !dbg !435
  br i1 %121, label %122, label %129, !dbg !436

; <label>:122:                                    ; preds = %116
  %123 = tail call i64 @ustime() #6, !dbg !437
  %124 = sub nsw i64 %123, %2, !dbg !439
  %125 = icmp sgt i64 %124, %26, !dbg !441
  br i1 %125, label %126, label %129, !dbg !443

; <label>:126:                                    ; preds = %122
  store i1 true, i1* @activeExpireCycle.timelimit_exit, align 4
  %127 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 74), align 8, !dbg !444, !tbaa !446
  %128 = add nsw i64 %127, 1, !dbg !444
  store i64 %128, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 74), align 8, !dbg !444, !tbaa !446
  br label %131, !dbg !447

; <label>:129:                                    ; preds = %116, %122
  %130 = icmp ugt i32 %118, 5, !dbg !448
  br i1 %130, label %42, label %131, !llvm.loop !449

; <label>:131:                                    ; preds = %55, %129, %126, %54
  %132 = phi i64 [ %117, %126 ], [ %44, %54 ], [ %44, %55 ], [ %117, %129 ]
  %133 = phi i64 [ %119, %126 ], [ %43, %54 ], [ %43, %55 ], [ %119, %129 ]
  %134 = add nuw nsw i32 %30, 1, !dbg !451
  %135 = icmp slt i32 %134, %19, !dbg !354
  %136 = load i1, i1* @activeExpireCycle.timelimit_exit, align 4
  %137 = xor i1 %136, true, !dbg !452
  %138 = and i1 %135, %137, !dbg !453
  br i1 %138, label %139, label %141, !dbg !355, !llvm.loop !454

; <label>:139:                                    ; preds = %131
  %140 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !356, !tbaa !338
  br label %28, !dbg !355

; <label>:141:                                    ; preds = %131, %14
  %142 = phi i64 [ 0, %14 ], [ %133, %131 ], !dbg !350
  %143 = phi i64 [ 0, %14 ], [ %132, %131 ], !dbg !351
  %144 = tail call i64 @ustime() #6, !dbg !456
  %145 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !457, !tbaa !459
  %146 = icmp eq i64 %145, 0, !dbg !457
  br i1 %146, label %152, label %147, !dbg !457

; <label>:147:                                    ; preds = %141
  %148 = sub nsw i64 %144, %2, !dbg !460
  %149 = sdiv i64 %148, 1000, !dbg !457
  %150 = icmp slt i64 %149, %145, !dbg !457
  br i1 %150, label %152, label %151, !dbg !461

; <label>:151:                                    ; preds = %147
  tail call void @latencyAddSample(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %149) #6, !dbg !457
  br label %152, !dbg !457

; <label>:152:                                    ; preds = %147, %141, %151
  %153 = icmp eq i64 %142, 0, !dbg !462
  br i1 %153, label %159, label %154, !dbg !464

; <label>:154:                                    ; preds = %152
  %155 = sitofp i64 %143 to double, !dbg !465
  %156 = sitofp i64 %142 to double, !dbg !467
  %157 = fdiv double %155, %156, !dbg !468
  %158 = fmul double %157, 5.000000e-02, !dbg !470
  br label %159, !dbg !470

; <label>:159:                                    ; preds = %152, %154
  %160 = phi double [ %158, %154 ], [ 0.000000e+00, %152 ]
  %161 = load double, double* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 73), align 8, !dbg !471, !tbaa !472
  %162 = fmul double %161, 0x3FEE666666666666, !dbg !473
  %163 = fadd double %160, %162, !dbg !474
  store double %163, double* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 73), align 8, !dbg !475, !tbaa !472
  br label %164, !dbg !476

; <label>:164:                                    ; preds = %9, %8, %1, %159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  ret void, !dbg !476
}

; Function Attrs: noredzone
declare dso_local i64 @ustime() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @clientsArePaused() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @mstime() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictGetRandomKey(%struct.dict*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @latencyAddSample(i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @expireSlaveKeys() local_unnamed_addr #0 !dbg !477 {
  %1 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !497, !tbaa !499
  %2 = icmp eq %struct.dict* %1, null, !dbg !500
  br i1 %2, label %85, label %3, !dbg !501

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %1, i64 0, i32 2, i64 0, i32 3, !dbg !502
  %5 = load i64, i64* %4, align 8, !dbg !502, !tbaa !370
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %1, i64 0, i32 2, i64 1, i32 3, !dbg !502
  %7 = load i64, i64* %6, align 8, !dbg !502, !tbaa !370
  %8 = sub i64 0, %7, !dbg !503
  %9 = icmp eq i64 %5, %8, !dbg !503
  br i1 %9, label %85, label %10, !dbg !504

; <label>:10:                                     ; preds = %3
  %11 = tail call i64 @mstime() #6, !dbg !507
  %12 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !509, !tbaa !499
  br label %13, !dbg !510

; <label>:13:                                     ; preds = %77, %10
  %14 = phi %struct.dict* [ %12, %10 ], [ %78, %77 ], !dbg !509
  %15 = phi i32 [ 0, %10 ], [ %67, %77 ], !dbg !506
  %16 = phi i32 [ 0, %10 ], [ %68, %77 ], !dbg !511
  %17 = tail call %struct.dictEntry* @dictGetRandomKey(%struct.dict* %14) #6, !dbg !512
  %18 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %17, i64 0, i32 0, !dbg !514
  %19 = load i8*, i8** %18, align 8, !dbg !514, !tbaa !247
  %20 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %17, i64 0, i32 1, !dbg !516
  %21 = bitcast %union.anon* %20 to i64*, !dbg !516
  %22 = load i64, i64* %21, align 8, !dbg !516, !tbaa !240
  %23 = icmp ne i64 %22, 0, !dbg !520
  %24 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !521
  %25 = icmp sgt i32 %24, 0, !dbg !522
  %26 = and i1 %23, %25, !dbg !523
  br i1 %26, label %27, label %62, !dbg !523

; <label>:27:                                     ; preds = %13, %49
  %28 = phi i64 [ %52, %49 ], [ 0, %13 ]
  %29 = phi i32 [ %51, %49 ], [ %15, %13 ]
  %30 = phi i64 [ %50, %49 ], [ 0, %13 ]
  %31 = phi i64 [ %53, %49 ], [ %22, %13 ]
  %32 = and i64 %31, 1, !dbg !524
  %33 = icmp eq i64 %32, 0, !dbg !525
  br i1 %33, label %49, label %34, !dbg !526

; <label>:34:                                     ; preds = %27
  %35 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !527, !tbaa !358
  %36 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %35, i64 %28, i32 1, !dbg !528
  %37 = load %struct.dict*, %struct.dict** %36, align 8, !dbg !528, !tbaa !369
  %38 = tail call %struct.dictEntry* @dictFind(%struct.dict* %37, i8* %19) #6, !dbg !529
  %39 = icmp eq %struct.dictEntry* %38, null, !dbg !532
  br i1 %39, label %49, label %40, !dbg !534

; <label>:40:                                     ; preds = %34
  %41 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !535, !tbaa !358
  %42 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %41, i64 %28, !dbg !536
  %43 = tail call i32 @activeExpireCycleTryExpire(%struct.redisDb* %42, %struct.dictEntry* nonnull %38, i64 %11) #7, !dbg !537
  %44 = icmp eq i32 %43, 0, !dbg !537
  br i1 %44, label %45, label %49, !dbg !538

; <label>:45:                                     ; preds = %40
  %46 = add nsw i32 %29, 1, !dbg !540
  %47 = shl i64 1, %28, !dbg !542
  %48 = or i64 %47, %30, !dbg !543
  br label %49, !dbg !544

; <label>:49:                                     ; preds = %40, %34, %45, %27
  %50 = phi i64 [ %30, %27 ], [ %30, %40 ], [ %48, %45 ], [ %30, %34 ], !dbg !518
  %51 = phi i32 [ %29, %27 ], [ %29, %40 ], [ %46, %45 ], [ %29, %34 ], !dbg !506
  %52 = add nuw nsw i64 %28, 1, !dbg !545
  %53 = lshr i64 %31, 1, !dbg !546
  %54 = icmp ne i64 %53, 0, !dbg !520
  %55 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !521
  %56 = trunc i64 %52 to i32, !dbg !522
  %57 = icmp sgt i32 %55, %56, !dbg !522
  %58 = and i1 %54, %57, !dbg !523
  br i1 %58, label %27, label %59, !dbg !523, !llvm.loop !547

; <label>:59:                                     ; preds = %49
  %60 = icmp eq i64 %50, 0, !dbg !550
  br i1 %60, label %62, label %61, !dbg !552

; <label>:61:                                     ; preds = %59
  store i64 %50, i64* %21, align 8, !dbg !553, !tbaa !240
  br label %66, !dbg !553

; <label>:62:                                     ; preds = %13, %59
  %63 = phi i32 [ %51, %59 ], [ %15, %13 ]
  %64 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !555, !tbaa !499
  %65 = tail call i32 @dictDelete(%struct.dict* %64, i8* %19) #6, !dbg !556
  br label %66

; <label>:66:                                     ; preds = %62, %61
  %67 = phi i32 [ %63, %62 ], [ %51, %61 ]
  %68 = add nuw nsw i32 %16, 1, !dbg !557
  %69 = icmp sgt i32 %67, 3, !dbg !558
  br i1 %69, label %85, label %70, !dbg !560

; <label>:70:                                     ; preds = %66
  %71 = and i32 %68, 63, !dbg !561
  %72 = icmp eq i32 %71, 0, !dbg !563
  br i1 %72, label %73, label %77, !dbg !564

; <label>:73:                                     ; preds = %70
  %74 = tail call i64 @mstime() #6, !dbg !565
  %75 = sub nsw i64 %74, %11, !dbg !566
  %76 = icmp sgt i64 %75, 1, !dbg !567
  br i1 %76, label %85, label %77, !dbg !568

; <label>:77:                                     ; preds = %73, %70
  %78 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !569, !tbaa !499
  %79 = getelementptr inbounds %struct.dict, %struct.dict* %78, i64 0, i32 2, i64 0, i32 3, !dbg !569
  %80 = load i64, i64* %79, align 8, !dbg !569, !tbaa !370
  %81 = getelementptr inbounds %struct.dict, %struct.dict* %78, i64 0, i32 2, i64 1, i32 3, !dbg !569
  %82 = load i64, i64* %81, align 8, !dbg !569, !tbaa !370
  %83 = sub i64 0, %82, !dbg !571
  %84 = icmp eq i64 %80, %83, !dbg !571
  br i1 %84, label %85, label %13, !llvm.loop !572

; <label>:85:                                     ; preds = %77, %73, %66, %0, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  ret void, !dbg !574
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @dictDelete(%struct.dict*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @rememberSlaveKeyWithExpire(%struct.redisDb* nocapture readonly, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !131 {
  %3 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !577, !tbaa !499
  %4 = icmp eq %struct.dict* %3, null, !dbg !579
  br i1 %4, label %5, label %7, !dbg !580

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @rememberSlaveKeyWithExpire.dt, i8* null) #6, !dbg !581
  store %struct.dict* %6, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !583, !tbaa !499
  br label %7, !dbg !584

; <label>:7:                                      ; preds = %5, %2
  %8 = phi %struct.dict* [ %6, %5 ], [ %3, %2 ]
  %9 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 5, !dbg !585
  %10 = load i32, i32* %9, align 8, !dbg !585, !tbaa !306
  %11 = icmp sgt i32 %10, 63, !dbg !587
  br i1 %11, label %35, label %12, !dbg !588

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !589
  %14 = load i8*, i8** %13, align 8, !dbg !589, !tbaa !590
  %15 = tail call %struct.dictEntry* @dictAddOrFind(%struct.dict* %8, i8* %14) #6, !dbg !592
  %16 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %15, i64 0, i32 0, !dbg !594
  %17 = load i8*, i8** %16, align 8, !dbg !594, !tbaa !247
  %18 = load i8*, i8** %13, align 8, !dbg !596, !tbaa !590
  %19 = icmp eq i8* %17, %18, !dbg !597
  br i1 %19, label %24, label %20, !dbg !598

; <label>:20:                                     ; preds = %12
  %21 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %15, i64 0, i32 1
  %22 = bitcast %union.anon* %21 to i64*
  %23 = load i64, i64* %22, align 8, !dbg !599, !tbaa !240
  br label %28, !dbg !598

; <label>:24:                                     ; preds = %12
  %25 = tail call i8* @sdsdup(i8* %17) #6, !dbg !600
  store i8* %25, i8** %16, align 8, !dbg !602, !tbaa !247
  %26 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %15, i64 0, i32 1, !dbg !603
  %27 = bitcast %union.anon* %26 to i64*, !dbg !603
  store i64 0, i64* %27, align 8, !dbg !603, !tbaa !240
  br label %28, !dbg !605

; <label>:28:                                     ; preds = %20, %24
  %29 = phi i64* [ %22, %20 ], [ %27, %24 ], !dbg !599
  %30 = phi i64 [ %23, %20 ], [ 0, %24 ], !dbg !599
  %31 = load i32, i32* %9, align 8, !dbg !607, !tbaa !306
  %32 = zext i32 %31 to i64, !dbg !608
  %33 = shl i64 1, %32, !dbg !608
  %34 = or i64 %33, %30, !dbg !609
  store i64 %34, i64* %29, align 8, !dbg !610, !tbaa !240
  br label %35, !dbg !612

; <label>:35:                                     ; preds = %7, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !612
  ret void, !dbg !612
}

; Function Attrs: noredzone
declare dso_local i64 @dictSdsHash(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @dictSdsKeyCompare(i8*, i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @dictSdsDestructor(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local %struct.dict* @dictCreate(%struct.dictType*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictAddOrFind(%struct.dict*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @sdsdup(i8*) local_unnamed_addr #2

; Function Attrs: norecurse noredzone nounwind
define dso_local i64 @getSlaveKeyWithExpireCount() local_unnamed_addr #3 !dbg !613 {
  %1 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !620, !tbaa !499
  %2 = icmp eq %struct.dict* %1, null, !dbg !622
  br i1 %2, label %9, label %3, !dbg !623

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %1, i64 0, i32 2, i64 0, i32 3, !dbg !624
  %5 = load i64, i64* %4, align 8, !dbg !624, !tbaa !370
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %1, i64 0, i32 2, i64 1, i32 3, !dbg !624
  %7 = load i64, i64* %6, align 8, !dbg !624, !tbaa !370
  %8 = add i64 %7, %5, !dbg !624
  br label %9, !dbg !625

; <label>:9:                                      ; preds = %0, %3
  %10 = phi i64 [ %8, %3 ], [ 0, %0 ], !dbg !626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  ret i64 %10, !dbg !627
}

; Function Attrs: noredzone nounwind
define dso_local void @flushSlaveKeysWithExpireList() local_unnamed_addr #0 !dbg !628 {
  %1 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !629, !tbaa !499
  %2 = icmp eq %struct.dict* %1, null, !dbg !629
  br i1 %2, label %4, label %3, !dbg !631

; <label>:3:                                      ; preds = %0
  tail call void @dictRelease(%struct.dict* nonnull %1) #6, !dbg !632
  store %struct.dict* null, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !634, !tbaa !499
  br label %4, !dbg !635

; <label>:4:                                      ; preds = %0, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  ret void, !dbg !636
}

; Function Attrs: noredzone
declare dso_local void @dictRelease(%struct.dict*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @expireGenericCommand(%struct.client*, i64, i32) local_unnamed_addr #0 !dbg !637 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !777
  %6 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !777, !tbaa !778
  %7 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 1, !dbg !782
  %8 = load %struct.redisObject*, %struct.redisObject** %7, align 8, !dbg !782, !tbaa !499
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 2, !dbg !784
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !784, !tbaa !499
  %11 = bitcast i64* %4 to i8*, !dbg !786
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #8, !dbg !786
  %12 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %10, i64* nonnull %4, i8* null) #6, !dbg !788
  %13 = icmp eq i32 %12, 0, !dbg !790
  br i1 %13, label %14, label %73, !dbg !791

; <label>:14:                                     ; preds = %3
  %15 = icmp eq i32 %2, 0, !dbg !792
  %16 = load i64, i64* %4, align 8, !dbg !794, !tbaa !330
  br i1 %15, label %17, label %19, !dbg !795

; <label>:17:                                     ; preds = %14
  %18 = mul nsw i64 %16, 1000, !dbg !796
  store i64 %18, i64* %4, align 8, !dbg !796, !tbaa !330
  br label %19, !dbg !797

; <label>:19:                                     ; preds = %14, %17
  %20 = phi i64 [ %18, %17 ], [ %16, %14 ], !dbg !798
  %21 = add nsw i64 %20, %1, !dbg !798
  store i64 %21, i64* %4, align 8, !dbg !798, !tbaa !330
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !799
  %23 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !799, !tbaa !801
  %24 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %23, %struct.redisObject* %8) #6, !dbg !802
  %25 = icmp eq %struct.redisObject* %24, null, !dbg !803
  br i1 %25, label %26, label %28, !dbg !804

; <label>:26:                                     ; preds = %19
  %27 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !805, !tbaa !807
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %27) #6, !dbg !809
  br label %73, !dbg !810

; <label>:28:                                     ; preds = %19
  %29 = load i64, i64* %4, align 8, !dbg !811, !tbaa !330
  %30 = call i64 @mstime() #6, !dbg !812
  %31 = icmp sgt i64 %29, %30, !dbg !813
  %32 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !814
  %33 = icmp ne i32 %32, 0, !dbg !815
  %34 = or i1 %31, %33, !dbg !816
  %35 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !817
  %36 = icmp ne i8* %35, null, !dbg !818
  %37 = or i1 %34, %36, !dbg !816
  br i1 %37, label %63, label %38, !dbg !816

; <label>:38:                                     ; preds = %28
  %39 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 286), align 4, !dbg !819, !tbaa !291
  %40 = icmp eq i32 %39, 0, !dbg !820
  %41 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !821, !tbaa !801
  br i1 %40, label %44, label %42, !dbg !820

; <label>:42:                                     ; preds = %38
  %43 = call i32 @dbAsyncDelete(%struct.redisDb* %41, %struct.redisObject* %8) #6, !dbg !822
  br label %46, !dbg !820

; <label>:44:                                     ; preds = %38
  %45 = call i32 @dbSyncDelete(%struct.redisDb* %41, %struct.redisObject* %8) #6, !dbg !823
  br label %46, !dbg !820

; <label>:46:                                     ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ], !dbg !820
  %48 = icmp eq i32 %47, 0, !dbg !825
  br i1 %48, label %49, label %50, !dbg !825

; <label>:49:                                     ; preds = %46
  call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i32 432) #6, !dbg !825
  call void @_exit(i32 1) #9, !dbg !825
  unreachable, !dbg !825

; <label>:50:                                     ; preds = %46
  %51 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !826, !tbaa !827
  %52 = add nsw i64 %51, 1, !dbg !826
  store i64 %52, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !826, !tbaa !827
  %53 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 286), align 4, !dbg !828, !tbaa !291
  %54 = icmp eq i32 %53, 0, !dbg !829
  %55 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 38), align 8, !dbg !830
  %56 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 37), align 8, !dbg !831
  %57 = select i1 %54, %struct.redisObject* %56, %struct.redisObject* %55, !dbg !829
  call void (%struct.client*, i32, ...) @rewriteClientCommandVector(%struct.client* nonnull %0, i32 2, %struct.redisObject* %57, %struct.redisObject* %8) #6, !dbg !833
  %58 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !834, !tbaa !801
  call void @signalModifiedKey(%struct.redisDb* %58, %struct.redisObject* %8) #6, !dbg !835
  %59 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !836, !tbaa !801
  %60 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %59, i64 0, i32 5, !dbg !837
  %61 = load i32, i32* %60, align 8, !dbg !837, !tbaa !306
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %struct.redisObject* %8, i32 %61) #6, !dbg !838
  %62 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !839, !tbaa !840
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %62) #6, !dbg !841
  br label %73

; <label>:63:                                     ; preds = %28
  %64 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !842, !tbaa !801
  %65 = load i64, i64* %4, align 8, !dbg !844, !tbaa !330
  call void @setExpire(%struct.client* nonnull %0, %struct.redisDb* %64, %struct.redisObject* %8, i64 %65) #6, !dbg !845
  %66 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !846, !tbaa !840
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %66) #6, !dbg !847
  %67 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !848, !tbaa !801
  call void @signalModifiedKey(%struct.redisDb* %67, %struct.redisObject* %8) #6, !dbg !849
  %68 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !850, !tbaa !801
  %69 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %68, i64 0, i32 5, !dbg !851
  %70 = load i32, i32* %69, align 8, !dbg !851, !tbaa !306
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %struct.redisObject* %8, i32 %70) #6, !dbg !852
  %71 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !853, !tbaa !827
  %72 = add nsw i64 %71, 1, !dbg !853
  store i64 %72, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !853, !tbaa !827
  br label %73, !dbg !854

; <label>:73:                                     ; preds = %3, %63, %50, %26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #8, !dbg !855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !855
  ret void, !dbg !855
}

; Function Attrs: noredzone
declare dso_local i32 @getLongLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyWrite(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @_serverAssertWithInfo(%struct.client*, %struct.redisObject*, i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @rewriteClientCommandVector(%struct.client*, i32, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @signalModifiedKey(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @setExpire(%struct.client*, %struct.redisDb*, %struct.redisObject*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @expireCommand(%struct.client*) local_unnamed_addr #0 !dbg !856 {
  %2 = tail call i64 @mstime() #6, !dbg !860
  tail call void @expireGenericCommand(%struct.client* %0, i64 %2, i32 0) #7, !dbg !861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !862
  ret void, !dbg !862
}

; Function Attrs: noredzone nounwind
define dso_local void @expireatCommand(%struct.client*) local_unnamed_addr #0 !dbg !863 {
  tail call void @expireGenericCommand(%struct.client* %0, i64 0, i32 0) #7, !dbg !867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  ret void, !dbg !868
}

; Function Attrs: noredzone nounwind
define dso_local void @pexpireCommand(%struct.client*) local_unnamed_addr #0 !dbg !869 {
  %2 = tail call i64 @mstime() #6, !dbg !873
  tail call void @expireGenericCommand(%struct.client* %0, i64 %2, i32 1) #7, !dbg !874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  ret void, !dbg !875
}

; Function Attrs: noredzone nounwind
define dso_local void @pexpireatCommand(%struct.client*) local_unnamed_addr #0 !dbg !876 {
  tail call void @expireGenericCommand(%struct.client* %0, i64 0, i32 1) #7, !dbg !880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  ret void, !dbg !881
}

; Function Attrs: noredzone nounwind
define dso_local void @ttlGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !882 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !893
  %4 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !893, !tbaa !801
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !895
  %6 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !895, !tbaa !778
  %7 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 1, !dbg !896
  %8 = load %struct.redisObject*, %struct.redisObject** %7, align 8, !dbg !896, !tbaa !499
  %9 = tail call %struct.redisObject* @lookupKeyReadWithFlags(%struct.redisDb* %4, %struct.redisObject* %8, i32 1) #6, !dbg !897
  %10 = icmp eq %struct.redisObject* %9, null, !dbg !898
  br i1 %10, label %11, label %12, !dbg !899

; <label>:11:                                     ; preds = %2
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 -2) #6, !dbg !900
  br label %31, !dbg !902

; <label>:12:                                     ; preds = %2
  %13 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !903, !tbaa !801
  %14 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !904, !tbaa !778
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 1, !dbg !905
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !905, !tbaa !499
  %17 = tail call i64 @getExpire(%struct.redisDb* %13, %struct.redisObject* %16) #6, !dbg !906
  %18 = icmp eq i64 %17, -1, !dbg !908
  br i1 %18, label %25, label %19, !dbg !910

; <label>:19:                                     ; preds = %12
  %20 = tail call i64 @mstime() #6, !dbg !911
  %21 = sub nsw i64 %17, %20, !dbg !913
  %22 = icmp sgt i64 %21, 0, !dbg !914
  %23 = select i1 %22, i64 %21, i64 0
  %24 = icmp eq i32 %1, 0, !dbg !915
  br i1 %24, label %26, label %29, !dbg !915

; <label>:25:                                     ; preds = %12
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 -1) #6, !dbg !918
  br label %31, !dbg !920

; <label>:26:                                     ; preds = %19
  %27 = add nuw nsw i64 %23, 500, !dbg !921
  %28 = udiv i64 %27, 1000, !dbg !922
  br label %29, !dbg !915

; <label>:29:                                     ; preds = %19, %26
  %30 = phi i64 [ %28, %26 ], [ %23, %19 ], !dbg !915
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %30) #6, !dbg !923
  br label %31

; <label>:31:                                     ; preds = %25, %29, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  ret void, !dbg !924
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyReadWithFlags(%struct.redisDb*, %struct.redisObject*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @getExpire(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @ttlCommand(%struct.client*) local_unnamed_addr #0 !dbg !925 {
  tail call void @ttlGenericCommand(%struct.client* %0, i32 0) #7, !dbg !929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !930
  ret void, !dbg !930
}

; Function Attrs: noredzone nounwind
define dso_local void @pttlCommand(%struct.client*) local_unnamed_addr #0 !dbg !931 {
  tail call void @ttlGenericCommand(%struct.client* %0, i32 1) #7, !dbg !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  ret void, !dbg !936
}

; Function Attrs: noredzone nounwind
define dso_local void @persistCommand(%struct.client*) local_unnamed_addr #0 !dbg !937 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !941
  %3 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !941, !tbaa !801
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !943
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !943, !tbaa !778
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !944
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !944, !tbaa !499
  %8 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %3, %struct.redisObject* %7) #6, !dbg !945
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !945
  br i1 %9, label %23, label %10, !dbg !946

; <label>:10:                                     ; preds = %1
  %11 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !947, !tbaa !801
  %12 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !950, !tbaa !778
  %13 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %12, i64 1, !dbg !951
  %14 = load %struct.redisObject*, %struct.redisObject** %13, align 8, !dbg !951, !tbaa !499
  %15 = tail call i32 @removeExpire(%struct.redisDb* %11, %struct.redisObject* %14) #6, !dbg !952
  %16 = icmp eq i32 %15, 0, !dbg !952
  br i1 %16, label %21, label %17, !dbg !953

; <label>:17:                                     ; preds = %10
  %18 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !954, !tbaa !840
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %18) #6, !dbg !956
  %19 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !957, !tbaa !827
  %20 = add nsw i64 %19, 1, !dbg !957
  store i64 %20, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !957, !tbaa !827
  br label %25, !dbg !958

; <label>:21:                                     ; preds = %10
  %22 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !959, !tbaa !807
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %22) #6, !dbg !961
  br label %25

; <label>:23:                                     ; preds = %1
  %24 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !962, !tbaa !807
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %24) #6, !dbg !964
  br label %25

; <label>:25:                                     ; preds = %17, %21, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !965
  ret void, !dbg !965
}

; Function Attrs: noredzone
declare dso_local i32 @removeExpire(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @touchCommand(%struct.client*) local_unnamed_addr #0 !dbg !966 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !975
  %3 = load i32, i32* %2, align 8, !dbg !975, !tbaa !977
  %4 = icmp sgt i32 %3, 1, !dbg !978
  br i1 %4, label %5, label %10, !dbg !979

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %12, !dbg !979

; <label>:8:                                      ; preds = %12
  %9 = zext i32 %22 to i64, !dbg !980
  br label %10, !dbg !980

; <label>:10:                                     ; preds = %8, %1
  %11 = phi i64 [ 0, %1 ], [ %9, %8 ]
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %11) #6, !dbg !981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  ret void, !dbg !982

; <label>:12:                                     ; preds = %5, %12
  %13 = phi i64 [ 1, %5 ], [ %23, %12 ]
  %14 = phi i32 [ 0, %5 ], [ %22, %12 ]
  %15 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !983, !tbaa !801
  %16 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !985, !tbaa !778
  %17 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 %13, !dbg !986
  %18 = load %struct.redisObject*, %struct.redisObject** %17, align 8, !dbg !986, !tbaa !499
  %19 = tail call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %15, %struct.redisObject* %18) #6, !dbg !987
  %20 = icmp ne %struct.redisObject* %19, null, !dbg !988
  %21 = zext i1 %20 to i32, !dbg !989
  %22 = add nuw nsw i32 %14, %21, !dbg !989
  %23 = add nuw nsw i64 %13, 1, !dbg !990
  %24 = load i32, i32* %2, align 8, !dbg !975, !tbaa !977
  %25 = sext i32 %24 to i64, !dbg !978
  %26 = icmp slt i64 %23, %25, !dbg !978
  br i1 %26, label %12, label %8, !dbg !979, !llvm.loop !991
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyRead(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nobuiltin noredzone }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!218, !219, !220}
!llvm.ident = !{!221}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "current_db", scope: !2, file: !3, line: 100, type: !48, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "activeExpireCycle", scope: !3, file: !3, line: 97, type: !4, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !189)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/expire.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !8, retainedTypes: !9, globals: !59)
!8 = !{}
!9 = !{!10, !11, !12, !17, !32, !42, !52}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !13, line: 60, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !15, line: 105, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !19, line: 51, size: 24, elements: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !{!21, !25, !26, !27}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !18, file: !19, line: 52, baseType: !22, size: 8)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !13, line: 24, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !15, line: 43, baseType: !24)
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !18, file: !19, line: 53, baseType: !22, size: 8, offset: 8)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !18, file: !19, line: 54, baseType: !24, size: 8, offset: 16)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !18, file: !19, line: 55, baseType: !28, offset: 24)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, elements: !30)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !{!31}
!31 = !DISubrange(count: -1)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !19, line: 57, size: 40, elements: !34)
!34 = !{!35, !39, !40, !41}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !33, file: !19, line: 58, baseType: !36, size: 16)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !13, line: 36, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !15, line: 57, baseType: !38)
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !33, file: !19, line: 59, baseType: !36, size: 16, offset: 16)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !33, file: !19, line: 60, baseType: !24, size: 8, offset: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !33, file: !19, line: 61, baseType: !28, offset: 40)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !19, line: 63, size: 72, elements: !44)
!44 = !{!45, !49, !50, !51}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !43, file: !19, line: 64, baseType: !46, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 48, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !15, line: 79, baseType: !48)
!48 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !43, file: !19, line: 65, baseType: !46, size: 32, offset: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !43, file: !19, line: 66, baseType: !24, size: 8, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !43, file: !19, line: 67, baseType: !28, offset: 72)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !19, line: 69, size: 136, elements: !54)
!54 = !{!55, !56, !57, !58}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !53, file: !19, line: 70, baseType: !12, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !53, file: !19, line: 71, baseType: !12, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !53, file: !19, line: 72, baseType: !24, size: 8, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !53, file: !19, line: 73, baseType: !28, offset: 136)
!59 = !{!0, !60, !62, !65, !129}
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "timelimit_exit", scope: !2, file: !3, line: 101, type: !6, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "last_fast_cycle", scope: !2, file: !3, line: 102, type: !64, isLocal: true, isDefinition: true)
!64 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "slaveKeysWithExpire", scope: !7, file: !3, line: 281, type: !67, isLocal: false, isDefinition: true)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !69, line: 82, baseType: !70)
!69 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !69, line: 76, size: 768, elements: !71)
!71 = !{!72, !97, !98, !127, !128}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !70, file: !69, line: 77, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !69, line: 65, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !69, line: 58, size: 384, elements: !76)
!76 = !{!77, !83, !87, !88, !92, !96}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !75, file: !69, line: 59, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!12, !81}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !75, file: !69, line: 60, baseType: !84, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{!10, !10, !81}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !75, file: !69, line: 61, baseType: !84, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !75, file: !69, line: 62, baseType: !89, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{!6, !10, !81, !81}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !75, file: !69, line: 63, baseType: !93, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !10, !10}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !75, file: !69, line: 64, baseType: !93, size: 64, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !70, file: !69, line: 78, baseType: !10, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !70, file: !69, line: 79, baseType: !99, size: 512, offset: 128)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 512, elements: !125)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !69, line: 74, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !69, line: 69, size: 256, elements: !102)
!102 = !{!103, !122, !123, !124}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !101, file: !69, line: 70, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !69, line: 56, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !69, line: 47, size: 192, elements: !108)
!108 = !{!109, !110, !120}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !107, file: !69, line: 48, baseType: !10, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !107, file: !69, line: 54, baseType: !111, size: 64, offset: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !107, file: !69, line: 49, size: 64, elements: !112)
!112 = !{!113, !114, !115, !119}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !111, file: !69, line: 50, baseType: !10, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !111, file: !69, line: 51, baseType: !12, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !111, file: !69, line: 52, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !13, line: 56, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !15, line: 103, baseType: !118)
!118 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !111, file: !69, line: 53, baseType: !11, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !107, file: !69, line: 55, baseType: !121, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !101, file: !69, line: 71, baseType: !16, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !101, file: !69, line: 72, baseType: !16, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !101, file: !69, line: 73, baseType: !16, size: 64, offset: 192)
!125 = !{!126}
!126 = !DISubrange(count: 2)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !70, file: !69, line: 80, baseType: !118, size: 64, offset: 640)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !70, file: !69, line: 81, baseType: !16, size: 64, offset: 704)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "dt", scope: !131, file: !3, line: 346, type: !74, isLocal: true, isDefinition: true)
!131 = distinct !DISubprogram(name: "rememberSlaveKeyWithExpire", scope: !3, file: !3, line: 344, type: !132, isLocal: false, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !184)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !134, !175}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !136, line: 656, baseType: !137)
!136 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !136, line: 647, size: 512, elements: !138)
!138 = !{!139, !140, !141, !142, !143, !144, !145, !146}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !137, file: !136, line: 648, baseType: !67, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !137, file: !136, line: 649, baseType: !67, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !137, file: !136, line: 650, baseType: !67, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !137, file: !136, line: 651, baseType: !67, size: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !137, file: !136, line: 652, baseType: !67, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !137, file: !136, line: 653, baseType: !6, size: 32, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !137, file: !136, line: 654, baseType: !64, size: 64, offset: 384)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !137, file: !136, line: 655, baseType: !147, size: 64, offset: 448)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !149, line: 54, baseType: !150)
!149 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !149, line: 47, size: 384, elements: !151)
!151 = !{!152, !161, !162, !166, !170, !174}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !150, file: !149, line: 48, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !149, line: 40, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !149, line: 36, size: 192, elements: !156)
!156 = !{!157, !159, !160}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !155, file: !149, line: 37, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !155, file: !149, line: 38, baseType: !158, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !155, file: !149, line: 39, baseType: !10, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !150, file: !149, line: 49, baseType: !153, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !150, file: !149, line: 50, baseType: !163, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!10, !10}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !150, file: !149, line: 51, baseType: !167, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !10}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !150, file: !149, line: 52, baseType: !171, size: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!6, !10, !10}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !150, file: !149, line: 53, baseType: !16, size: 64, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !136, line: 622, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !136, line: 614, size: 128, elements: !178)
!178 = !{!179, !180, !181, !182, !183}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !177, file: !136, line: 615, baseType: !48, size: 4, flags: DIFlagBitField, extraData: i64 0)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !177, file: !136, line: 616, baseType: !48, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !177, file: !136, line: 617, baseType: !48, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !177, file: !136, line: 620, baseType: !6, size: 32, offset: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !177, file: !136, line: 621, baseType: !10, size: 64, offset: 64)
!184 = !{!185, !186, !187, !188}
!185 = !DILocalVariable(name: "db", arg: 1, scope: !131, file: !3, line: 344, type: !134)
!186 = !DILocalVariable(name: "key", arg: 2, scope: !131, file: !3, line: 344, type: !175)
!187 = !DILocalVariable(name: "de", scope: !131, file: !3, line: 358, type: !105)
!188 = !DILocalVariable(name: "dbids", scope: !131, file: !3, line: 368, type: !12)
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !203, !204, !206, !207, !208, !209, !210, !212, !213, !216}
!190 = !DILocalVariable(name: "type", arg: 1, scope: !2, file: !3, line: 97, type: !6)
!191 = !DILocalVariable(name: "j", scope: !2, file: !3, line: 104, type: !6)
!192 = !DILocalVariable(name: "iteration", scope: !2, file: !3, line: 104, type: !6)
!193 = !DILocalVariable(name: "dbs_per_call", scope: !2, file: !3, line: 105, type: !6)
!194 = !DILocalVariable(name: "start", scope: !2, file: !3, line: 106, type: !64)
!195 = !DILocalVariable(name: "timelimit", scope: !2, file: !3, line: 106, type: !64)
!196 = !DILocalVariable(name: "elapsed", scope: !2, file: !3, line: 106, type: !64)
!197 = !DILocalVariable(name: "total_sampled", scope: !2, file: !3, line: 146, type: !118)
!198 = !DILocalVariable(name: "total_expired", scope: !2, file: !3, line: 147, type: !118)
!199 = !DILocalVariable(name: "expired", scope: !200, file: !3, line: 150, type: !6)
!200 = distinct !DILexicalBlock(scope: !201, file: !3, line: 149, column: 63)
!201 = distinct !DILexicalBlock(scope: !202, file: !3, line: 149, column: 5)
!202 = distinct !DILexicalBlock(scope: !2, file: !3, line: 149, column: 5)
!203 = !DILocalVariable(name: "db", scope: !200, file: !3, line: 151, type: !134)
!204 = !DILocalVariable(name: "num", scope: !205, file: !3, line: 161, type: !16)
!205 = distinct !DILexicalBlock(scope: !200, file: !3, line: 160, column: 12)
!206 = !DILocalVariable(name: "slots", scope: !205, file: !3, line: 161, type: !16)
!207 = !DILocalVariable(name: "now", scope: !205, file: !3, line: 162, type: !64)
!208 = !DILocalVariable(name: "ttl_sum", scope: !205, file: !3, line: 162, type: !64)
!209 = !DILocalVariable(name: "ttl_samples", scope: !205, file: !3, line: 163, type: !6)
!210 = !DILocalVariable(name: "de", scope: !211, file: !3, line: 190, type: !105)
!211 = distinct !DILexicalBlock(scope: !205, file: !3, line: 189, column: 27)
!212 = !DILocalVariable(name: "ttl", scope: !211, file: !3, line: 191, type: !64)
!213 = !DILocalVariable(name: "avg_ttl", scope: !214, file: !3, line: 207, type: !64)
!214 = distinct !DILexicalBlock(scope: !215, file: !3, line: 206, column: 30)
!215 = distinct !DILexicalBlock(scope: !205, file: !3, line: 206, column: 17)
!216 = !DILocalVariable(name: "current_perc", scope: !2, file: !3, line: 237, type: !11)
!217 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!218 = !{i32 2, !"Dwarf Version", i32 4}
!219 = !{i32 2, !"Debug Info Version", i32 3}
!220 = !{i32 1, !"wchar_size", i32 4}
!221 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!222 = distinct !DISubprogram(name: "activeExpireCycleTryExpire", scope: !3, file: !3, line: 54, type: !223, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !225)
!223 = !DISubroutineType(types: !224)
!224 = !{!6, !134, !105, !64}
!225 = !{!226, !227, !228, !229, !230, !235}
!226 = !DILocalVariable(name: "db", arg: 1, scope: !222, file: !3, line: 54, type: !134)
!227 = !DILocalVariable(name: "de", arg: 2, scope: !222, file: !3, line: 54, type: !105)
!228 = !DILocalVariable(name: "now", arg: 3, scope: !222, file: !3, line: 54, type: !64)
!229 = !DILocalVariable(name: "t", scope: !222, file: !3, line: 55, type: !64)
!230 = !DILocalVariable(name: "key", scope: !231, file: !3, line: 57, type: !233)
!231 = distinct !DILexicalBlock(scope: !232, file: !3, line: 56, column: 18)
!232 = distinct !DILexicalBlock(scope: !222, file: !3, line: 56, column: 9)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !19, line: 43, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!235 = !DILocalVariable(name: "keyobj", scope: !231, file: !3, line: 58, type: !175)
!236 = !DILocation(line: 54, column: 41, scope: !222)
!237 = !DILocation(line: 54, column: 56, scope: !222)
!238 = !DILocation(line: 54, column: 70, scope: !222)
!239 = !DILocation(line: 55, column: 19, scope: !222)
!240 = !{!241, !241, i64 0}
!241 = !{!"omnipotent char", !242, i64 0}
!242 = !{!"Simple C/C++ TBAA"}
!243 = !DILocation(line: 55, column: 15, scope: !222)
!244 = !DILocation(line: 56, column: 13, scope: !232)
!245 = !DILocation(line: 56, column: 9, scope: !222)
!246 = !DILocation(line: 57, column: 19, scope: !231)
!247 = !{!248, !249, i64 0}
!248 = !{!"dictEntry", !249, i64 0, !241, i64 8, !249, i64 16}
!249 = !{!"any pointer", !241, i64 0}
!250 = !DILocation(line: 57, column: 13, scope: !231)
!251 = !DILocalVariable(name: "s", arg: 1, scope: !252, file: !19, line: 87, type: !257)
!252 = distinct !DISubprogram(name: "sdslen", scope: !19, file: !19, line: 87, type: !253, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !258)
!253 = !DISubroutineType(types: !254)
!254 = !{!255, !257}
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !256, line: 58, baseType: !16)
!256 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!258 = !{!251, !259}
!259 = !DILocalVariable(name: "flags", scope: !252, file: !19, line: 88, type: !24)
!260 = !DILocation(line: 87, column: 39, scope: !252, inlinedAt: !261)
!261 = distinct !DILocation(line: 58, column: 47, scope: !231)
!262 = !DILocation(line: 88, column: 27, scope: !252, inlinedAt: !261)
!263 = !DILocation(line: 88, column: 19, scope: !252, inlinedAt: !261)
!264 = !DILocation(line: 89, column: 5, scope: !252, inlinedAt: !261)
!265 = !DILocation(line: 91, column: 20, scope: !266, inlinedAt: !261)
!266 = distinct !DILexicalBlock(scope: !252, file: !19, line: 89, column: 33)
!267 = !DILocation(line: 91, column: 13, scope: !266, inlinedAt: !261)
!268 = !DILocation(line: 93, column: 20, scope: !266, inlinedAt: !261)
!269 = !DILocation(line: 93, column: 34, scope: !266, inlinedAt: !261)
!270 = !DILocation(line: 93, column: 13, scope: !266, inlinedAt: !261)
!271 = !DILocation(line: 95, column: 20, scope: !266, inlinedAt: !261)
!272 = !DILocation(line: 95, column: 35, scope: !266, inlinedAt: !261)
!273 = !{!274, !274, i64 0}
!274 = !{!"short", !241, i64 0}
!275 = !DILocation(line: 95, column: 13, scope: !266, inlinedAt: !261)
!276 = !DILocation(line: 97, column: 20, scope: !266, inlinedAt: !261)
!277 = !DILocation(line: 97, column: 35, scope: !266, inlinedAt: !261)
!278 = !{!279, !279, i64 0}
!279 = !{!"int", !241, i64 0}
!280 = !DILocation(line: 97, column: 13, scope: !266, inlinedAt: !261)
!281 = !DILocation(line: 99, column: 20, scope: !266, inlinedAt: !261)
!282 = !DILocation(line: 99, column: 35, scope: !266, inlinedAt: !261)
!283 = !{!284, !284, i64 0}
!284 = !{!"long", !241, i64 0}
!285 = !DILocation(line: 99, column: 13, scope: !266, inlinedAt: !261)
!286 = !DILocation(line: 0, scope: !266, inlinedAt: !261)
!287 = !DILocation(line: 102, column: 1, scope: !252, inlinedAt: !261)
!288 = !DILocation(line: 58, column: 24, scope: !231)
!289 = !DILocation(line: 58, column: 15, scope: !231)
!290 = !DILocation(line: 60, column: 42, scope: !231)
!291 = !{!292, !279, i64 3084}
!292 = !{!"redisServer", !279, i64 0, !249, i64 8, !249, i64 16, !249, i64 24, !279, i64 32, !279, i64 36, !279, i64 40, !249, i64 48, !249, i64 56, !249, i64 64, !249, i64 72, !279, i64 80, !279, i64 84, !279, i64 88, !279, i64 92, !249, i64 96, !249, i64 104, !279, i64 112, !279, i64 116, !241, i64 120, !279, i64 164, !284, i64 168, !279, i64 176, !249, i64 184, !249, i64 192, !249, i64 200, !241, i64 208, !279, i64 216, !279, i64 220, !241, i64 224, !279, i64 352, !249, i64 360, !279, i64 368, !241, i64 372, !279, i64 436, !279, i64 440, !241, i64 444, !279, i64 508, !249, i64 512, !249, i64 520, !249, i64 528, !249, i64 536, !249, i64 544, !249, i64 552, !249, i64 560, !279, i64 568, !293, i64 576, !241, i64 584, !249, i64 840, !284, i64 848, !279, i64 856, !279, i64 860, !284, i64 864, !284, i64 872, !284, i64 880, !284, i64 888, !249, i64 896, !249, i64 904, !249, i64 912, !249, i64 920, !249, i64 928, !249, i64 936, !249, i64 944, !249, i64 952, !249, i64 960, !249, i64 968, !249, i64 976, !249, i64 984, !249, i64 992, !284, i64 1000, !293, i64 1008, !293, i64 1016, !293, i64 1024, !294, i64 1032, !293, i64 1040, !293, i64 1048, !293, i64 1056, !293, i64 1064, !293, i64 1072, !293, i64 1080, !293, i64 1088, !293, i64 1096, !293, i64 1104, !284, i64 1112, !293, i64 1120, !294, i64 1128, !293, i64 1136, !293, i64 1144, !293, i64 1152, !293, i64 1160, !249, i64 1168, !293, i64 1176, !293, i64 1184, !284, i64 1192, !295, i64 1200, !293, i64 1240, !293, i64 1248, !284, i64 1256, !284, i64 1264, !241, i64 1272, !279, i64 1728, !279, i64 1732, !279, i64 1736, !279, i64 1740, !279, i64 1744, !284, i64 1752, !279, i64 1760, !279, i64 1764, !279, i64 1768, !279, i64 1772, !284, i64 1776, !284, i64 1784, !279, i64 1792, !279, i64 1796, !279, i64 1800, !279, i64 1804, !241, i64 1808, !279, i64 1880, !279, i64 1884, !249, i64 1888, !279, i64 1896, !279, i64 1900, !284, i64 1904, !284, i64 1912, !284, i64 1920, !284, i64 1928, !279, i64 1936, !279, i64 1940, !249, i64 1944, !249, i64 1952, !279, i64 1960, !279, i64 1964, !284, i64 1968, !284, i64 1976, !284, i64 1984, !284, i64 1992, !279, i64 2000, !284, i64 2008, !279, i64 2016, !279, i64 2020, !279, i64 2024, !279, i64 2028, !279, i64 2032, !279, i64 2036, !279, i64 2040, !279, i64 2044, !279, i64 2048, !279, i64 2052, !279, i64 2056, !279, i64 2060, !279, i64 2064, !249, i64 2072, !293, i64 2080, !293, i64 2088, !279, i64 2096, !249, i64 2104, !279, i64 2112, !249, i64 2120, !279, i64 2128, !279, i64 2132, !284, i64 2136, !284, i64 2144, !284, i64 2152, !284, i64 2160, !279, i64 2168, !279, i64 2172, !279, i64 2176, !279, i64 2180, !279, i64 2184, !279, i64 2188, !241, i64 2192, !296, i64 2200, !297, i64 2224, !249, i64 2240, !279, i64 2248, !249, i64 2256, !279, i64 2264, !241, i64 2268, !241, i64 2309, !293, i64 2352, !293, i64 2360, !279, i64 2368, !279, i64 2372, !249, i64 2376, !293, i64 2384, !293, i64 2392, !293, i64 2400, !293, i64 2408, !284, i64 2416, !284, i64 2424, !279, i64 2432, !279, i64 2436, !279, i64 2440, !279, i64 2444, !279, i64 2448, !249, i64 2456, !249, i64 2464, !279, i64 2472, !279, i64 2476, !249, i64 2480, !249, i64 2488, !279, i64 2496, !279, i64 2500, !284, i64 2504, !284, i64 2512, !284, i64 2520, !279, i64 2528, !279, i64 2532, !249, i64 2536, !284, i64 2544, !279, i64 2552, !279, i64 2556, !279, i64 2560, !284, i64 2568, !279, i64 2576, !279, i64 2580, !279, i64 2584, !249, i64 2592, !241, i64 2600, !293, i64 2648, !279, i64 2656, !249, i64 2664, !249, i64 2672, !279, i64 2680, !249, i64 2688, !279, i64 2696, !279, i64 2700, !293, i64 2704, !279, i64 2712, !279, i64 2716, !279, i64 2720, !279, i64 2724, !293, i64 2728, !279, i64 2736, !241, i64 2740, !249, i64 2768, !249, i64 2776, !279, i64 2784, !279, i64 2788, !279, i64 2792, !279, i64 2796, !284, i64 2800, !284, i64 2808, !284, i64 2816, !284, i64 2824, !284, i64 2832, !284, i64 2840, !284, i64 2848, !284, i64 2856, !279, i64 2864, !279, i64 2868, !284, i64 2872, !284, i64 2880, !279, i64 2888, !293, i64 2896, !249, i64 2904, !249, i64 2912, !279, i64 2920, !279, i64 2924, !293, i64 2928, !249, i64 2936, !249, i64 2944, !279, i64 2952, !279, i64 2956, !279, i64 2960, !279, i64 2964, !249, i64 2968, !279, i64 2976, !279, i64 2980, !279, i64 2984, !249, i64 2992, !249, i64 3000, !249, i64 3008, !249, i64 3016, !293, i64 3024, !293, i64 3032, !293, i64 3040, !279, i64 3048, !279, i64 3052, !279, i64 3056, !279, i64 3060, !279, i64 3064, !279, i64 3068, !279, i64 3072, !279, i64 3076, !279, i64 3080, !279, i64 3084, !279, i64 3088, !293, i64 3096, !249, i64 3104, !249, i64 3112, !249, i64 3120, !279, i64 3128, !279, i64 3132, !279, i64 3136, !284, i64 3144, !249, i64 3152, !249, i64 3160, !249, i64 3168}
!293 = !{!"long long", !241, i64 0}
!294 = !{!"double", !241, i64 0}
!295 = !{!"malloc_stats", !284, i64 0, !284, i64 8, !284, i64 16, !284, i64 24, !284, i64 32}
!296 = !{!"", !279, i64 0, !284, i64 8, !293, i64 16}
!297 = !{!"redisOpArray", !249, i64 0, !279, i64 8}
!298 = !DILocation(line: 60, column: 9, scope: !231)
!299 = !DILocation(line: 61, column: 20, scope: !300)
!300 = distinct !DILexicalBlock(scope: !231, file: !3, line: 61, column: 13)
!301 = !DILocation(line: 61, column: 13, scope: !300)
!302 = !DILocation(line: 61, column: 13, scope: !231)
!303 = !DILocation(line: 62, column: 13, scope: !300)
!304 = !DILocation(line: 64, column: 13, scope: !300)
!305 = !DILocation(line: 66, column: 34, scope: !231)
!306 = !{!307, !279, i64 40}
!307 = !{!"redisDb", !249, i64 0, !249, i64 8, !249, i64 16, !249, i64 24, !249, i64 32, !279, i64 40, !293, i64 48, !249, i64 56}
!308 = !DILocation(line: 65, column: 9, scope: !231)
!309 = !DILocation(line: 67, column: 9, scope: !231)
!310 = !DILocation(line: 68, column: 32, scope: !231)
!311 = !{!292, !293, i64 1024}
!312 = !DILocation(line: 0, scope: !313)
!313 = distinct !DILexicalBlock(scope: !232, file: !3, line: 70, column: 12)
!314 = !DILocation(line: 73, column: 1, scope: !222)
!315 = !DILocation(line: 97, column: 28, scope: !2)
!316 = !DILocation(line: 104, column: 12, scope: !2)
!317 = !DILocation(line: 105, column: 9, scope: !2)
!318 = !DILocation(line: 106, column: 23, scope: !2)
!319 = !DILocation(line: 106, column: 15, scope: !2)
!320 = !DILocation(line: 111, column: 9, scope: !321)
!321 = distinct !DILexicalBlock(scope: !2, file: !3, line: 111, column: 9)
!322 = !DILocation(line: 111, column: 9, scope: !2)
!323 = !DILocation(line: 113, column: 14, scope: !324)
!324 = distinct !DILexicalBlock(scope: !2, file: !3, line: 113, column: 9)
!325 = !DILocation(line: 113, column: 9, scope: !2)
!326 = !DILocation(line: 117, column: 13, scope: !327)
!327 = distinct !DILexicalBlock(scope: !324, file: !3, line: 113, column: 43)
!328 = !DILocation(line: 118, column: 21, scope: !329)
!329 = distinct !DILexicalBlock(scope: !327, file: !3, line: 118, column: 13)
!330 = !{!293, !293, i64 0}
!331 = !DILocation(line: 118, column: 37, scope: !329)
!332 = !DILocation(line: 118, column: 19, scope: !329)
!333 = !DILocation(line: 118, column: 13, scope: !327)
!334 = !DILocation(line: 119, column: 25, scope: !327)
!335 = !DILocation(line: 120, column: 5, scope: !327)
!336 = !DILocation(line: 129, column: 31, scope: !337)
!337 = distinct !DILexicalBlock(scope: !2, file: !3, line: 129, column: 9)
!338 = !{!292, !279, i64 1792}
!339 = !DILocation(line: 129, column: 22, scope: !337)
!340 = !DILocation(line: 129, column: 37, scope: !337)
!341 = !DILocation(line: 136, column: 67, scope: !2)
!342 = !{!292, !279, i64 40}
!343 = !DILocation(line: 136, column: 59, scope: !2)
!344 = !DILocation(line: 136, column: 69, scope: !2)
!345 = !DILocation(line: 138, column: 19, scope: !346)
!346 = distinct !DILexicalBlock(scope: !2, file: !3, line: 138, column: 9)
!347 = !DILocation(line: 106, column: 33, scope: !2)
!348 = !DILocation(line: 138, column: 9, scope: !2)
!349 = !DILocation(line: 140, column: 9, scope: !2)
!350 = !DILocation(line: 146, column: 10, scope: !2)
!351 = !DILocation(line: 147, column: 10, scope: !2)
!352 = !DILocation(line: 104, column: 9, scope: !2)
!353 = !DILocation(line: 150, column: 13, scope: !200)
!354 = !DILocation(line: 149, column: 19, scope: !201)
!355 = !DILocation(line: 149, column: 5, scope: !202)
!356 = !DILocation(line: 151, column: 54, scope: !200)
!357 = !DILocation(line: 151, column: 30, scope: !200)
!358 = !{!292, !249, i64 48}
!359 = !DILocation(line: 151, column: 34, scope: !200)
!360 = !DILocation(line: 151, column: 45, scope: !200)
!361 = !DILocation(line: 151, column: 32, scope: !200)
!362 = !DILocation(line: 151, column: 18, scope: !200)
!363 = !DILocation(line: 156, column: 19, scope: !200)
!364 = !DILocation(line: 160, column: 9, scope: !200)
!365 = !DILocation(line: 0, scope: !205)
!366 = !DILocation(line: 164, column: 22, scope: !205)
!367 = !DILocation(line: 167, column: 24, scope: !368)
!368 = distinct !DILexicalBlock(scope: !205, file: !3, line: 167, column: 17)
!369 = !{!307, !249, i64 8}
!370 = !{!371, !284, i64 24}
!371 = !{!"dictht", !249, i64 0, !284, i64 8, !284, i64 16, !284, i64 24}
!372 = !DILocation(line: 161, column: 27, scope: !205)
!373 = !DILocation(line: 167, column: 47, scope: !368)
!374 = !DILocation(line: 167, column: 17, scope: !205)
!375 = !DILocation(line: 168, column: 29, scope: !376)
!376 = distinct !DILexicalBlock(scope: !368, file: !3, line: 167, column: 53)
!377 = !{!307, !293, i64 48}
!378 = !DILocation(line: 169, column: 17, scope: !376)
!379 = !DILocation(line: 171, column: 21, scope: !205)
!380 = !{!371, !284, i64 8}
!381 = !DILocation(line: 161, column: 32, scope: !205)
!382 = !DILocation(line: 172, column: 19, scope: !205)
!383 = !DILocation(line: 162, column: 23, scope: !205)
!384 = !DILocation(line: 177, column: 30, scope: !385)
!385 = distinct !DILexicalBlock(scope: !205, file: !3, line: 177, column: 17)
!386 = !DILocation(line: 178, column: 21, scope: !385)
!387 = !DILocation(line: 178, column: 32, scope: !385)
!388 = !DILocation(line: 177, column: 21, scope: !385)
!389 = !DILocation(line: 162, column: 28, scope: !205)
!390 = !DILocation(line: 163, column: 17, scope: !205)
!391 = !DILocation(line: 186, column: 17, scope: !205)
!392 = !DILocation(line: 189, column: 13, scope: !205)
!393 = !DILocation(line: 189, column: 23, scope: !205)
!394 = !DILocation(line: 193, column: 48, scope: !395)
!395 = distinct !DILexicalBlock(scope: !211, file: !3, line: 193, column: 21)
!396 = !DILocation(line: 193, column: 27, scope: !395)
!397 = !DILocation(line: 190, column: 28, scope: !211)
!398 = !DILocation(line: 193, column: 58, scope: !395)
!399 = !DILocation(line: 193, column: 21, scope: !211)
!400 = !DILocation(line: 194, column: 23, scope: !211)
!401 = !DILocation(line: 194, column: 50, scope: !211)
!402 = !DILocation(line: 191, column: 27, scope: !211)
!403 = !DILocation(line: 195, column: 21, scope: !404)
!404 = distinct !DILexicalBlock(scope: !211, file: !3, line: 195, column: 21)
!405 = !DILocation(line: 195, column: 21, scope: !211)
!406 = !DILocation(line: 196, column: 25, scope: !407)
!407 = distinct !DILexicalBlock(scope: !211, file: !3, line: 196, column: 21)
!408 = !DILocation(line: 196, column: 21, scope: !211)
!409 = !DILocation(line: 201, column: 30, scope: !211)
!410 = !DILocation(line: 182, column: 21, scope: !205)
!411 = !DILocation(line: 183, column: 21, scope: !205)
!412 = !DILocation(line: 184, column: 25, scope: !205)
!413 = !DILocation(line: 203, column: 30, scope: !205)
!414 = !DILocation(line: 203, column: 27, scope: !205)
!415 = !DILocation(line: 206, column: 17, scope: !215)
!416 = !DILocation(line: 206, column: 17, scope: !205)
!417 = !DILocation(line: 207, column: 45, scope: !214)
!418 = !DILocation(line: 207, column: 44, scope: !214)
!419 = !DILocation(line: 207, column: 27, scope: !214)
!420 = !DILocation(line: 212, column: 25, scope: !421)
!421 = distinct !DILexicalBlock(scope: !214, file: !3, line: 212, column: 21)
!422 = !DILocation(line: 212, column: 33, scope: !421)
!423 = !DILocation(line: 212, column: 21, scope: !214)
!424 = !DILocation(line: 212, column: 51, scope: !421)
!425 = !DILocation(line: 212, column: 39, scope: !421)
!426 = !DILocation(line: 213, column: 36, scope: !214)
!427 = !DILocation(line: 213, column: 43, scope: !214)
!428 = !DILocation(line: 213, column: 47, scope: !214)
!429 = !DILocation(line: 213, column: 61, scope: !214)
!430 = !DILocation(line: 213, column: 51, scope: !214)
!431 = !DILocation(line: 213, column: 29, scope: !214)
!432 = !DILocation(line: 214, column: 13, scope: !214)
!433 = !DILocation(line: 219, column: 28, scope: !434)
!434 = distinct !DILexicalBlock(scope: !205, file: !3, line: 219, column: 17)
!435 = !DILocation(line: 219, column: 35, scope: !434)
!436 = !DILocation(line: 219, column: 17, scope: !205)
!437 = !DILocation(line: 220, column: 27, scope: !438)
!438 = distinct !DILexicalBlock(scope: !434, file: !3, line: 219, column: 41)
!439 = !DILocation(line: 220, column: 35, scope: !438)
!440 = !DILocation(line: 106, column: 44, scope: !2)
!441 = !DILocation(line: 221, column: 29, scope: !442)
!442 = distinct !DILexicalBlock(scope: !438, file: !3, line: 221, column: 21)
!443 = !DILocation(line: 221, column: 21, scope: !438)
!444 = !DILocation(line: 223, column: 63, scope: !445)
!445 = distinct !DILexicalBlock(scope: !442, file: !3, line: 221, column: 42)
!446 = !{!292, !293, i64 1040}
!447 = !DILocation(line: 224, column: 21, scope: !445)
!448 = !DILocation(line: 229, column: 26, scope: !200)
!449 = distinct !{!449, !364, !450}
!450 = !DILocation(line: 229, column: 66, scope: !200)
!451 = !DILocation(line: 149, column: 59, scope: !201)
!452 = !DILocation(line: 149, column: 52, scope: !201)
!453 = !DILocation(line: 149, column: 34, scope: !201)
!454 = distinct !{!454, !355, !455}
!455 = !DILocation(line: 230, column: 5, scope: !202)
!456 = !DILocation(line: 232, column: 15, scope: !2)
!457 = !DILocation(line: 233, column: 5, scope: !458)
!458 = distinct !DILexicalBlock(scope: !2, file: !3, line: 233, column: 5)
!459 = !{!292, !293, i64 3096}
!460 = !DILocation(line: 232, column: 23, scope: !2)
!461 = !DILocation(line: 233, column: 5, scope: !2)
!462 = !DILocation(line: 238, column: 9, scope: !463)
!463 = distinct !DILexicalBlock(scope: !2, file: !3, line: 238, column: 9)
!464 = !DILocation(line: 238, column: 9, scope: !2)
!465 = !DILocation(line: 239, column: 24, scope: !466)
!466 = distinct !DILexicalBlock(scope: !463, file: !3, line: 238, column: 24)
!467 = !DILocation(line: 239, column: 46, scope: !466)
!468 = !DILocation(line: 239, column: 45, scope: !466)
!469 = !DILocation(line: 237, column: 12, scope: !2)
!470 = !DILocation(line: 240, column: 5, scope: !466)
!471 = !DILocation(line: 243, column: 46, scope: !2)
!472 = !{!292, !294, i64 1032}
!473 = !DILocation(line: 243, column: 69, scope: !2)
!474 = !DILocation(line: 242, column: 57, scope: !2)
!475 = !DILocation(line: 242, column: 36, scope: !2)
!476 = !DILocation(line: 244, column: 1, scope: !2)
!477 = distinct !DISubprogram(name: "expireSlaveKeys", scope: !3, file: !3, line: 285, type: !478, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !480)
!478 = !DISubroutineType(types: !479)
!479 = !{null}
!480 = !{!481, !482, !483, !485, !487, !488, !489, !490, !491, !495, !496}
!481 = !DILocalVariable(name: "cycles", scope: !477, file: !3, line: 289, type: !6)
!482 = !DILocalVariable(name: "noexpire", scope: !477, file: !3, line: 289, type: !6)
!483 = !DILocalVariable(name: "start", scope: !477, file: !3, line: 290, type: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !136, line: 52, baseType: !64)
!485 = !DILocalVariable(name: "de", scope: !486, file: !3, line: 292, type: !105)
!486 = distinct !DILexicalBlock(scope: !477, file: !3, line: 291, column: 14)
!487 = !DILocalVariable(name: "keyname", scope: !486, file: !3, line: 293, type: !233)
!488 = !DILocalVariable(name: "dbids", scope: !486, file: !3, line: 294, type: !12)
!489 = !DILocalVariable(name: "new_dbids", scope: !486, file: !3, line: 295, type: !12)
!490 = !DILocalVariable(name: "dbid", scope: !486, file: !3, line: 299, type: !6)
!491 = !DILocalVariable(name: "db", scope: !492, file: !3, line: 302, type: !134)
!492 = distinct !DILexicalBlock(scope: !493, file: !3, line: 301, column: 35)
!493 = distinct !DILexicalBlock(scope: !494, file: !3, line: 301, column: 17)
!494 = distinct !DILexicalBlock(scope: !486, file: !3, line: 300, column: 45)
!495 = !DILocalVariable(name: "expire", scope: !492, file: !3, line: 303, type: !105)
!496 = !DILocalVariable(name: "expired", scope: !492, file: !3, line: 304, type: !6)
!497 = !DILocation(line: 286, column: 9, scope: !498)
!498 = distinct !DILexicalBlock(scope: !477, file: !3, line: 286, column: 9)
!499 = !{!249, !249, i64 0}
!500 = !DILocation(line: 286, column: 29, scope: !498)
!501 = !DILocation(line: 286, column: 37, scope: !498)
!502 = !DILocation(line: 287, column: 9, scope: !498)
!503 = !DILocation(line: 287, column: 39, scope: !498)
!504 = !DILocation(line: 286, column: 9, scope: !477)
!505 = !DILocation(line: 289, column: 9, scope: !477)
!506 = !DILocation(line: 289, column: 21, scope: !477)
!507 = !DILocation(line: 290, column: 22, scope: !477)
!508 = !DILocation(line: 290, column: 14, scope: !477)
!509 = !DILocation(line: 292, column: 42, scope: !486)
!510 = !DILocation(line: 291, column: 5, scope: !477)
!511 = !DILocation(line: 0, scope: !486)
!512 = !DILocation(line: 292, column: 25, scope: !486)
!513 = !DILocation(line: 292, column: 20, scope: !486)
!514 = !DILocation(line: 293, column: 23, scope: !486)
!515 = !DILocation(line: 293, column: 13, scope: !486)
!516 = !DILocation(line: 294, column: 26, scope: !486)
!517 = !DILocation(line: 294, column: 18, scope: !486)
!518 = !DILocation(line: 295, column: 18, scope: !486)
!519 = !DILocation(line: 299, column: 13, scope: !486)
!520 = !DILocation(line: 300, column: 15, scope: !486)
!521 = !DILocation(line: 300, column: 38, scope: !486)
!522 = !DILocation(line: 300, column: 29, scope: !486)
!523 = !DILocation(line: 300, column: 21, scope: !486)
!524 = !DILocation(line: 301, column: 24, scope: !493)
!525 = !DILocation(line: 301, column: 29, scope: !493)
!526 = !DILocation(line: 301, column: 17, scope: !494)
!527 = !DILocation(line: 302, column: 38, scope: !492)
!528 = !DILocation(line: 303, column: 50, scope: !492)
!529 = !DILocation(line: 303, column: 37, scope: !492)
!530 = !DILocation(line: 303, column: 28, scope: !492)
!531 = !DILocation(line: 304, column: 21, scope: !492)
!532 = !DILocation(line: 306, column: 21, scope: !533)
!533 = distinct !DILexicalBlock(scope: !492, file: !3, line: 306, column: 21)
!534 = !DILocation(line: 306, column: 28, scope: !533)
!535 = !DILocation(line: 307, column: 55, scope: !533)
!536 = !DILocation(line: 307, column: 57, scope: !533)
!537 = !DILocation(line: 307, column: 21, scope: !533)
!538 = !DILocation(line: 316, column: 28, scope: !539)
!539 = distinct !DILexicalBlock(scope: !492, file: !3, line: 316, column: 21)
!540 = !DILocation(line: 317, column: 29, scope: !541)
!541 = distinct !DILexicalBlock(scope: !539, file: !3, line: 316, column: 41)
!542 = !DILocation(line: 318, column: 46, scope: !541)
!543 = !DILocation(line: 318, column: 31, scope: !541)
!544 = !DILocation(line: 319, column: 17, scope: !541)
!545 = !DILocation(line: 321, column: 17, scope: !494)
!546 = !DILocation(line: 322, column: 19, scope: !494)
!547 = distinct !{!547, !548, !549}
!548 = !DILocation(line: 300, column: 9, scope: !486)
!549 = !DILocation(line: 323, column: 9, scope: !486)
!550 = !DILocation(line: 328, column: 13, scope: !551)
!551 = distinct !DILexicalBlock(scope: !486, file: !3, line: 328, column: 13)
!552 = !DILocation(line: 328, column: 13, scope: !486)
!553 = !DILocation(line: 329, column: 13, scope: !554)
!554 = distinct !DILexicalBlock(scope: !551, file: !3, line: 329, column: 13)
!555 = !DILocation(line: 331, column: 24, scope: !551)
!556 = !DILocation(line: 331, column: 13, scope: !551)
!557 = !DILocation(line: 335, column: 15, scope: !486)
!558 = !DILocation(line: 336, column: 22, scope: !559)
!559 = distinct !DILexicalBlock(scope: !486, file: !3, line: 336, column: 13)
!560 = !DILocation(line: 336, column: 13, scope: !486)
!561 = !DILocation(line: 337, column: 21, scope: !562)
!562 = distinct !DILexicalBlock(scope: !486, file: !3, line: 337, column: 13)
!563 = !DILocation(line: 337, column: 27, scope: !562)
!564 = !DILocation(line: 337, column: 32, scope: !562)
!565 = !DILocation(line: 337, column: 35, scope: !562)
!566 = !DILocation(line: 337, column: 43, scope: !562)
!567 = !DILocation(line: 337, column: 50, scope: !562)
!568 = !DILocation(line: 337, column: 13, scope: !486)
!569 = !DILocation(line: 338, column: 13, scope: !570)
!570 = distinct !DILexicalBlock(scope: !486, file: !3, line: 338, column: 13)
!571 = !DILocation(line: 338, column: 43, scope: !570)
!572 = distinct !{!572, !510, !573}
!573 = !DILocation(line: 339, column: 5, scope: !477)
!574 = !DILocation(line: 340, column: 1, scope: !477)
!575 = !DILocation(line: 344, column: 42, scope: !131)
!576 = !DILocation(line: 344, column: 52, scope: !131)
!577 = !DILocation(line: 345, column: 9, scope: !578)
!578 = distinct !DILexicalBlock(scope: !131, file: !3, line: 345, column: 9)
!579 = !DILocation(line: 345, column: 29, scope: !578)
!580 = !DILocation(line: 345, column: 9, scope: !131)
!581 = !DILocation(line: 354, column: 31, scope: !582)
!582 = distinct !DILexicalBlock(scope: !578, file: !3, line: 345, column: 38)
!583 = !DILocation(line: 354, column: 29, scope: !582)
!584 = !DILocation(line: 355, column: 5, scope: !582)
!585 = !DILocation(line: 356, column: 13, scope: !586)
!586 = distinct !DILexicalBlock(scope: !131, file: !3, line: 356, column: 9)
!587 = !DILocation(line: 356, column: 16, scope: !586)
!588 = !DILocation(line: 356, column: 9, scope: !131)
!589 = !DILocation(line: 358, column: 60, scope: !131)
!590 = !{!591, !249, i64 8}
!591 = !{!"redisObject", !279, i64 0, !279, i64 0, !279, i64 1, !279, i64 4, !249, i64 8}
!592 = !DILocation(line: 358, column: 21, scope: !131)
!593 = !DILocation(line: 358, column: 16, scope: !131)
!594 = !DILocation(line: 363, column: 13, scope: !595)
!595 = distinct !DILexicalBlock(scope: !131, file: !3, line: 363, column: 9)
!596 = !DILocation(line: 363, column: 25, scope: !595)
!597 = !DILocation(line: 363, column: 17, scope: !595)
!598 = !DILocation(line: 363, column: 9, scope: !131)
!599 = !DILocation(line: 368, column: 22, scope: !131)
!600 = !DILocation(line: 364, column: 19, scope: !601)
!601 = distinct !DILexicalBlock(scope: !595, file: !3, line: 363, column: 30)
!602 = !DILocation(line: 364, column: 17, scope: !601)
!603 = !DILocation(line: 365, column: 9, scope: !604)
!604 = distinct !DILexicalBlock(scope: !601, file: !3, line: 365, column: 9)
!605 = !DILocation(line: 366, column: 5, scope: !601)
!606 = !DILocation(line: 368, column: 14, scope: !131)
!607 = !DILocation(line: 369, column: 33, scope: !131)
!608 = !DILocation(line: 369, column: 26, scope: !131)
!609 = !DILocation(line: 369, column: 11, scope: !131)
!610 = !DILocation(line: 370, column: 5, scope: !611)
!611 = distinct !DILexicalBlock(scope: !131, file: !3, line: 370, column: 5)
!612 = !DILocation(line: 371, column: 1, scope: !131)
!613 = distinct !DISubprogram(name: "getSlaveKeyWithExpireCount", scope: !3, file: !3, line: 374, type: !614, isLocal: false, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !8)
!614 = !DISubroutineType(types: !615)
!615 = !{!616}
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !617, line: 40, baseType: !618)
!617 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !619, line: 129, baseType: !16)
!619 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!620 = !DILocation(line: 375, column: 9, scope: !621)
!621 = distinct !DILexicalBlock(scope: !613, file: !3, line: 375, column: 9)
!622 = !DILocation(line: 375, column: 29, scope: !621)
!623 = !DILocation(line: 375, column: 9, scope: !613)
!624 = !DILocation(line: 376, column: 12, scope: !613)
!625 = !DILocation(line: 376, column: 5, scope: !613)
!626 = !DILocation(line: 0, scope: !613)
!627 = !DILocation(line: 377, column: 1, scope: !613)
!628 = distinct !DISubprogram(name: "flushSlaveKeysWithExpireList", scope: !3, file: !3, line: 387, type: !478, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !8)
!629 = !DILocation(line: 388, column: 9, scope: !630)
!630 = distinct !DILexicalBlock(scope: !628, file: !3, line: 388, column: 9)
!631 = !DILocation(line: 388, column: 9, scope: !628)
!632 = !DILocation(line: 389, column: 9, scope: !633)
!633 = distinct !DILexicalBlock(scope: !630, file: !3, line: 388, column: 30)
!634 = !DILocation(line: 390, column: 29, scope: !633)
!635 = !DILocation(line: 391, column: 5, scope: !633)
!636 = !DILocation(line: 392, column: 1, scope: !628)
!637 = distinct !DISubprogram(name: "expireGenericCommand", scope: !3, file: !3, line: 405, type: !638, isLocal: false, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !763)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !640, !64, !6}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !136, line: 780, baseType: !642)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !136, line: 723, size: 135360, elements: !643)
!643 = !{!644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !655, !679, !680, !681, !682, !683, !684, !686, !687, !690, !691, !692, !693, !694, !695, !696, !697, !702, !703, !704, !705, !706, !707, !708, !709, !713, !714, !718, !719, !735, !736, !752, !753, !754, !755, !756, !757, !758, !759}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !642, file: !136, line: 724, baseType: !12, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !642, file: !136, line: 725, baseType: !6, size: 32, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !642, file: !136, line: 726, baseType: !134, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !642, file: !136, line: 727, baseType: !175, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !642, file: !136, line: 728, baseType: !233, size: 64, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !642, file: !136, line: 729, baseType: !616, size: 64, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !642, file: !136, line: 730, baseType: !233, size: 64, offset: 384)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !642, file: !136, line: 734, baseType: !616, size: 64, offset: 448)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !642, file: !136, line: 735, baseType: !6, size: 32, offset: 512)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !642, file: !136, line: 736, baseType: !654, size: 64, offset: 576)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !642, file: !136, line: 737, baseType: !656, size: 64, offset: 640)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !136, line: 1307, size: 640, elements: !658)
!658 = !{!659, !660, !665, !666, !667, !668, !674, !675, !676, !677, !678}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !657, file: !136, line: 1308, baseType: !234, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !657, file: !136, line: 1309, baseType: !661, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !136, line: 1305, baseType: !663)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !640}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !657, file: !136, line: 1310, baseType: !6, size: 32, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !657, file: !136, line: 1311, baseType: !234, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !657, file: !136, line: 1312, baseType: !6, size: 32, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !657, file: !136, line: 1315, baseType: !669, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !136, line: 1306, baseType: !671)
!671 = !DISubroutineType(types: !672)
!672 = !{!673, !656, !654, !6, !673}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !657, file: !136, line: 1317, baseType: !6, size: 32, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !657, file: !136, line: 1318, baseType: !6, size: 32, offset: 416)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !657, file: !136, line: 1319, baseType: !6, size: 32, offset: 448)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !657, file: !136, line: 1320, baseType: !64, size: 64, offset: 512)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !657, file: !136, line: 1320, baseType: !64, size: 64, offset: 576)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !642, file: !136, line: 737, baseType: !656, size: 64, offset: 704)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !642, file: !136, line: 738, baseType: !6, size: 32, offset: 768)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !642, file: !136, line: 739, baseType: !6, size: 32, offset: 800)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !642, file: !136, line: 740, baseType: !118, size: 64, offset: 832)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !642, file: !136, line: 741, baseType: !147, size: 64, offset: 896)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !642, file: !136, line: 742, baseType: !685, size: 64, offset: 960)
!685 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !642, file: !136, line: 743, baseType: !616, size: 64, offset: 1024)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !642, file: !136, line: 745, baseType: !688, size: 64, offset: 1088)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !689, line: 34, baseType: !118)
!689 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!690 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !642, file: !136, line: 746, baseType: !688, size: 64, offset: 1152)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !642, file: !136, line: 747, baseType: !688, size: 64, offset: 1216)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !642, file: !136, line: 748, baseType: !6, size: 32, offset: 1280)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !642, file: !136, line: 749, baseType: !6, size: 32, offset: 1312)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !642, file: !136, line: 750, baseType: !6, size: 32, offset: 1344)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !642, file: !136, line: 751, baseType: !6, size: 32, offset: 1376)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !642, file: !136, line: 752, baseType: !6, size: 32, offset: 1408)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !642, file: !136, line: 753, baseType: !698, size: 64, offset: 1472)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !699, line: 173, baseType: !700)
!699 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !619, line: 100, baseType: !701)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !619, line: 44, baseType: !118)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !642, file: !136, line: 754, baseType: !698, size: 64, offset: 1536)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !642, file: !136, line: 755, baseType: !233, size: 64, offset: 1600)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !642, file: !136, line: 756, baseType: !64, size: 64, offset: 1664)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !642, file: !136, line: 757, baseType: !64, size: 64, offset: 1728)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !642, file: !136, line: 758, baseType: !64, size: 64, offset: 1792)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !642, file: !136, line: 759, baseType: !64, size: 64, offset: 1856)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !642, file: !136, line: 760, baseType: !64, size: 64, offset: 1920)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !642, file: !136, line: 763, baseType: !710, size: 328, offset: 1984)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 328, elements: !711)
!711 = !{!712}
!712 = !DISubrange(count: 41)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !642, file: !136, line: 764, baseType: !6, size: 32, offset: 2336)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !642, file: !136, line: 765, baseType: !715, size: 368, offset: 2368)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 368, elements: !716)
!716 = !{!717}
!717 = !DISubrange(count: 46)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !642, file: !136, line: 766, baseType: !6, size: 32, offset: 2752)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !642, file: !136, line: 767, baseType: !720, size: 256, offset: 2816)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !136, line: 673, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !136, line: 665, size: 256, elements: !722)
!722 = !{!723, !731, !732, !733, !734}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !721, file: !136, line: 666, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !136, line: 663, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !136, line: 659, size: 192, elements: !727)
!727 = !{!728, !729, !730}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !726, file: !136, line: 660, baseType: !654, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !726, file: !136, line: 661, baseType: !6, size: 32, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !726, file: !136, line: 662, baseType: !656, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !721, file: !136, line: 667, baseType: !6, size: 32, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !721, file: !136, line: 668, baseType: !6, size: 32, offset: 96)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !721, file: !136, line: 671, baseType: !6, size: 32, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !721, file: !136, line: 672, baseType: !688, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !642, file: !136, line: 768, baseType: !6, size: 32, offset: 3072)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !642, file: !136, line: 769, baseType: !737, size: 704, offset: 3136)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !136, line: 703, baseType: !738)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !136, line: 677, size: 704, elements: !739)
!739 = !{!740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !738, file: !136, line: 679, baseType: !484, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !738, file: !136, line: 683, baseType: !67, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !738, file: !136, line: 685, baseType: !175, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !738, file: !136, line: 689, baseType: !616, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !738, file: !136, line: 690, baseType: !175, size: 64, offset: 256)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !738, file: !136, line: 691, baseType: !175, size: 64, offset: 320)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !738, file: !136, line: 692, baseType: !484, size: 64, offset: 384)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !738, file: !136, line: 692, baseType: !484, size: 64, offset: 448)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !738, file: !136, line: 693, baseType: !6, size: 32, offset: 512)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !738, file: !136, line: 696, baseType: !6, size: 32, offset: 544)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !738, file: !136, line: 697, baseType: !64, size: 64, offset: 576)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !738, file: !136, line: 700, baseType: !10, size: 64, offset: 640)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !642, file: !136, line: 770, baseType: !64, size: 64, offset: 3840)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !642, file: !136, line: 771, baseType: !147, size: 64, offset: 3904)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !642, file: !136, line: 772, baseType: !67, size: 64, offset: 3968)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !642, file: !136, line: 773, baseType: !147, size: 64, offset: 4032)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !642, file: !136, line: 774, baseType: !233, size: 64, offset: 4096)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !642, file: !136, line: 775, baseType: !153, size: 64, offset: 4160)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !642, file: !136, line: 778, baseType: !6, size: 32, offset: 4224)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !642, file: !136, line: 779, baseType: !760, size: 131072, offset: 4256)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 131072, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 16384)
!763 = !{!764, !765, !766, !767, !768, !769, !770, !773}
!764 = !DILocalVariable(name: "c", arg: 1, scope: !637, file: !3, line: 405, type: !640)
!765 = !DILocalVariable(name: "basetime", arg: 2, scope: !637, file: !3, line: 405, type: !64)
!766 = !DILocalVariable(name: "unit", arg: 3, scope: !637, file: !3, line: 405, type: !6)
!767 = !DILocalVariable(name: "key", scope: !637, file: !3, line: 406, type: !175)
!768 = !DILocalVariable(name: "param", scope: !637, file: !3, line: 406, type: !175)
!769 = !DILocalVariable(name: "when", scope: !637, file: !3, line: 407, type: !64)
!770 = !DILocalVariable(name: "aux", scope: !771, file: !3, line: 428, type: !175)
!771 = distinct !DILexicalBlock(scope: !772, file: !3, line: 427, column: 68)
!772 = distinct !DILexicalBlock(scope: !637, file: !3, line: 427, column: 9)
!773 = !DILocalVariable(name: "deleted", scope: !771, file: !3, line: 430, type: !6)
!774 = !DILocation(line: 405, column: 35, scope: !637)
!775 = !DILocation(line: 405, column: 48, scope: !637)
!776 = !DILocation(line: 405, column: 62, scope: !637)
!777 = !DILocation(line: 406, column: 20, scope: !637)
!778 = !{!779, !249, i64 72}
!779 = !{!"client", !284, i64 0, !279, i64 8, !249, i64 16, !249, i64 24, !249, i64 32, !284, i64 40, !249, i64 48, !284, i64 56, !279, i64 64, !249, i64 72, !249, i64 80, !249, i64 88, !279, i64 96, !279, i64 100, !284, i64 104, !249, i64 112, !293, i64 120, !284, i64 128, !284, i64 136, !284, i64 144, !284, i64 152, !279, i64 160, !279, i64 164, !279, i64 168, !279, i64 172, !279, i64 176, !284, i64 184, !284, i64 192, !249, i64 200, !293, i64 208, !293, i64 216, !293, i64 224, !293, i64 232, !293, i64 240, !241, i64 248, !279, i64 292, !241, i64 296, !279, i64 344, !780, i64 352, !279, i64 384, !781, i64 392, !293, i64 480, !249, i64 488, !249, i64 496, !249, i64 504, !249, i64 512, !249, i64 520, !279, i64 528, !241, i64 532}
!780 = !{!"multiState", !249, i64 0, !279, i64 8, !279, i64 12, !279, i64 16, !284, i64 24}
!781 = !{!"blockingState", !293, i64 0, !249, i64 8, !249, i64 16, !284, i64 24, !249, i64 32, !249, i64 40, !293, i64 48, !293, i64 56, !279, i64 64, !279, i64 68, !293, i64 72, !249, i64 80}
!782 = !DILocation(line: 406, column: 17, scope: !637)
!783 = !DILocation(line: 406, column: 11, scope: !637)
!784 = !DILocation(line: 406, column: 38, scope: !637)
!785 = !DILocation(line: 406, column: 30, scope: !637)
!786 = !DILocation(line: 407, column: 5, scope: !637)
!787 = !DILocation(line: 407, column: 15, scope: !637)
!788 = !DILocation(line: 409, column: 9, scope: !789)
!789 = distinct !DILexicalBlock(scope: !637, file: !3, line: 409, column: 9)
!790 = !DILocation(line: 409, column: 61, scope: !789)
!791 = !DILocation(line: 409, column: 9, scope: !637)
!792 = !DILocation(line: 412, column: 14, scope: !793)
!793 = distinct !DILexicalBlock(scope: !637, file: !3, line: 412, column: 9)
!794 = !DILocation(line: 0, scope: !637)
!795 = !DILocation(line: 412, column: 9, scope: !637)
!796 = !DILocation(line: 412, column: 36, scope: !793)
!797 = !DILocation(line: 412, column: 31, scope: !793)
!798 = !DILocation(line: 413, column: 10, scope: !637)
!799 = !DILocation(line: 416, column: 27, scope: !800)
!800 = distinct !DILexicalBlock(scope: !637, file: !3, line: 416, column: 9)
!801 = !{!779, !249, i64 16}
!802 = !DILocation(line: 416, column: 9, scope: !800)
!803 = !DILocation(line: 416, column: 35, scope: !800)
!804 = !DILocation(line: 416, column: 9, scope: !637)
!805 = !DILocation(line: 417, column: 27, scope: !806)
!806 = distinct !DILexicalBlock(scope: !800, file: !3, line: 416, column: 44)
!807 = !{!808, !249, i64 32}
!808 = !{!"sharedObjectsStruct", !249, i64 0, !249, i64 8, !249, i64 16, !249, i64 24, !249, i64 32, !249, i64 40, !249, i64 48, !249, i64 56, !249, i64 64, !249, i64 72, !249, i64 80, !249, i64 88, !249, i64 96, !249, i64 104, !249, i64 112, !249, i64 120, !249, i64 128, !249, i64 136, !249, i64 144, !249, i64 152, !249, i64 160, !249, i64 168, !249, i64 176, !249, i64 184, !249, i64 192, !249, i64 200, !249, i64 208, !249, i64 216, !249, i64 224, !249, i64 232, !249, i64 240, !249, i64 248, !249, i64 256, !249, i64 264, !249, i64 272, !249, i64 280, !249, i64 288, !249, i64 296, !249, i64 304, !249, i64 312, !249, i64 320, !249, i64 328, !249, i64 336, !249, i64 344, !249, i64 352, !249, i64 360, !241, i64 368, !241, i64 448, !241, i64 80448, !241, i64 80704, !249, i64 80960, !249, i64 80968}
!809 = !DILocation(line: 417, column: 9, scope: !806)
!810 = !DILocation(line: 418, column: 9, scope: !806)
!811 = !DILocation(line: 427, column: 9, scope: !772)
!812 = !DILocation(line: 427, column: 17, scope: !772)
!813 = !DILocation(line: 427, column: 14, scope: !772)
!814 = !DILocation(line: 427, column: 37, scope: !772)
!815 = !DILocation(line: 427, column: 30, scope: !772)
!816 = !DILocation(line: 427, column: 26, scope: !772)
!817 = !DILocation(line: 427, column: 56, scope: !772)
!818 = !DILocation(line: 427, column: 49, scope: !772)
!819 = !DILocation(line: 430, column: 30, scope: !771)
!820 = !DILocation(line: 430, column: 23, scope: !771)
!821 = !DILocation(line: 0, scope: !771)
!822 = !DILocation(line: 430, column: 53, scope: !771)
!823 = !DILocation(line: 431, column: 53, scope: !771)
!824 = !DILocation(line: 430, column: 13, scope: !771)
!825 = !DILocation(line: 432, column: 9, scope: !771)
!826 = !DILocation(line: 433, column: 21, scope: !771)
!827 = !{!292, !293, i64 2080}
!828 = !DILocation(line: 436, column: 22, scope: !771)
!829 = !DILocation(line: 436, column: 15, scope: !771)
!830 = !DILocation(line: 436, column: 52, scope: !771)
!831 = !DILocation(line: 436, column: 68, scope: !771)
!832 = !DILocation(line: 428, column: 15, scope: !771)
!833 = !DILocation(line: 437, column: 9, scope: !771)
!834 = !DILocation(line: 438, column: 30, scope: !771)
!835 = !DILocation(line: 438, column: 9, scope: !771)
!836 = !DILocation(line: 439, column: 57, scope: !771)
!837 = !DILocation(line: 439, column: 61, scope: !771)
!838 = !DILocation(line: 439, column: 9, scope: !771)
!839 = !DILocation(line: 440, column: 28, scope: !771)
!840 = !{!808, !249, i64 40}
!841 = !DILocation(line: 440, column: 9, scope: !771)
!842 = !DILocation(line: 443, column: 24, scope: !843)
!843 = distinct !DILexicalBlock(scope: !772, file: !3, line: 442, column: 12)
!844 = !DILocation(line: 443, column: 31, scope: !843)
!845 = !DILocation(line: 443, column: 9, scope: !843)
!846 = !DILocation(line: 444, column: 27, scope: !843)
!847 = !DILocation(line: 444, column: 9, scope: !843)
!848 = !DILocation(line: 445, column: 30, scope: !843)
!849 = !DILocation(line: 445, column: 9, scope: !843)
!850 = !DILocation(line: 446, column: 60, scope: !843)
!851 = !DILocation(line: 446, column: 64, scope: !843)
!852 = !DILocation(line: 446, column: 9, scope: !843)
!853 = !DILocation(line: 447, column: 21, scope: !843)
!854 = !DILocation(line: 448, column: 9, scope: !843)
!855 = !DILocation(line: 450, column: 1, scope: !637)
!856 = distinct !DISubprogram(name: "expireCommand", scope: !3, file: !3, line: 453, type: !663, isLocal: false, isDefinition: true, scopeLine: 453, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !857)
!857 = !{!858}
!858 = !DILocalVariable(name: "c", arg: 1, scope: !856, file: !3, line: 453, type: !640)
!859 = !DILocation(line: 453, column: 28, scope: !856)
!860 = !DILocation(line: 454, column: 28, scope: !856)
!861 = !DILocation(line: 454, column: 5, scope: !856)
!862 = !DILocation(line: 455, column: 1, scope: !856)
!863 = distinct !DISubprogram(name: "expireatCommand", scope: !3, file: !3, line: 458, type: !663, isLocal: false, isDefinition: true, scopeLine: 458, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !864)
!864 = !{!865}
!865 = !DILocalVariable(name: "c", arg: 1, scope: !863, file: !3, line: 458, type: !640)
!866 = !DILocation(line: 458, column: 30, scope: !863)
!867 = !DILocation(line: 459, column: 5, scope: !863)
!868 = !DILocation(line: 460, column: 1, scope: !863)
!869 = distinct !DISubprogram(name: "pexpireCommand", scope: !3, file: !3, line: 463, type: !663, isLocal: false, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !870)
!870 = !{!871}
!871 = !DILocalVariable(name: "c", arg: 1, scope: !869, file: !3, line: 463, type: !640)
!872 = !DILocation(line: 463, column: 29, scope: !869)
!873 = !DILocation(line: 464, column: 28, scope: !869)
!874 = !DILocation(line: 464, column: 5, scope: !869)
!875 = !DILocation(line: 465, column: 1, scope: !869)
!876 = distinct !DISubprogram(name: "pexpireatCommand", scope: !3, file: !3, line: 468, type: !663, isLocal: false, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !877)
!877 = !{!878}
!878 = !DILocalVariable(name: "c", arg: 1, scope: !876, file: !3, line: 468, type: !640)
!879 = !DILocation(line: 468, column: 31, scope: !876)
!880 = !DILocation(line: 469, column: 5, scope: !876)
!881 = !DILocation(line: 470, column: 1, scope: !876)
!882 = distinct !DISubprogram(name: "ttlGenericCommand", scope: !3, file: !3, line: 473, type: !883, isLocal: false, isDefinition: true, scopeLine: 473, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !885)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !640, !6}
!885 = !{!886, !887, !888, !889}
!886 = !DILocalVariable(name: "c", arg: 1, scope: !882, file: !3, line: 473, type: !640)
!887 = !DILocalVariable(name: "output_ms", arg: 2, scope: !882, file: !3, line: 473, type: !6)
!888 = !DILocalVariable(name: "expire", scope: !882, file: !3, line: 474, type: !64)
!889 = !DILocalVariable(name: "ttl", scope: !882, file: !3, line: 474, type: !64)
!890 = !DILocation(line: 473, column: 32, scope: !882)
!891 = !DILocation(line: 473, column: 39, scope: !882)
!892 = !DILocation(line: 474, column: 23, scope: !882)
!893 = !DILocation(line: 477, column: 35, scope: !894)
!894 = distinct !DILexicalBlock(scope: !882, file: !3, line: 477, column: 9)
!895 = !DILocation(line: 477, column: 41, scope: !894)
!896 = !DILocation(line: 477, column: 38, scope: !894)
!897 = !DILocation(line: 477, column: 9, scope: !894)
!898 = !DILocation(line: 477, column: 65, scope: !894)
!899 = !DILocation(line: 477, column: 9, scope: !882)
!900 = !DILocation(line: 478, column: 9, scope: !901)
!901 = distinct !DILexicalBlock(scope: !894, file: !3, line: 477, column: 74)
!902 = !DILocation(line: 479, column: 9, scope: !901)
!903 = !DILocation(line: 483, column: 27, scope: !882)
!904 = !DILocation(line: 483, column: 33, scope: !882)
!905 = !DILocation(line: 483, column: 30, scope: !882)
!906 = !DILocation(line: 483, column: 14, scope: !882)
!907 = !DILocation(line: 474, column: 15, scope: !882)
!908 = !DILocation(line: 484, column: 16, scope: !909)
!909 = distinct !DILexicalBlock(scope: !882, file: !3, line: 484, column: 9)
!910 = !DILocation(line: 484, column: 9, scope: !882)
!911 = !DILocation(line: 485, column: 22, scope: !912)
!912 = distinct !DILexicalBlock(scope: !909, file: !3, line: 484, column: 23)
!913 = !DILocation(line: 485, column: 21, scope: !912)
!914 = !DILocation(line: 486, column: 13, scope: !912)
!915 = !DILocation(line: 491, column: 28, scope: !916)
!916 = distinct !DILexicalBlock(scope: !917, file: !3, line: 490, column: 12)
!917 = distinct !DILexicalBlock(scope: !882, file: !3, line: 488, column: 9)
!918 = !DILocation(line: 489, column: 9, scope: !919)
!919 = distinct !DILexicalBlock(scope: !917, file: !3, line: 488, column: 20)
!920 = !DILocation(line: 490, column: 5, scope: !919)
!921 = !DILocation(line: 491, column: 51, scope: !916)
!922 = !DILocation(line: 491, column: 56, scope: !916)
!923 = !DILocation(line: 491, column: 9, scope: !916)
!924 = !DILocation(line: 493, column: 1, scope: !882)
!925 = distinct !DISubprogram(name: "ttlCommand", scope: !3, file: !3, line: 496, type: !663, isLocal: false, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !926)
!926 = !{!927}
!927 = !DILocalVariable(name: "c", arg: 1, scope: !925, file: !3, line: 496, type: !640)
!928 = !DILocation(line: 496, column: 25, scope: !925)
!929 = !DILocation(line: 497, column: 5, scope: !925)
!930 = !DILocation(line: 498, column: 1, scope: !925)
!931 = distinct !DISubprogram(name: "pttlCommand", scope: !3, file: !3, line: 501, type: !663, isLocal: false, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !932)
!932 = !{!933}
!933 = !DILocalVariable(name: "c", arg: 1, scope: !931, file: !3, line: 501, type: !640)
!934 = !DILocation(line: 501, column: 26, scope: !931)
!935 = !DILocation(line: 502, column: 5, scope: !931)
!936 = !DILocation(line: 503, column: 1, scope: !931)
!937 = distinct !DISubprogram(name: "persistCommand", scope: !3, file: !3, line: 506, type: !663, isLocal: false, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !938)
!938 = !{!939}
!939 = !DILocalVariable(name: "c", arg: 1, scope: !937, file: !3, line: 506, type: !640)
!940 = !DILocation(line: 506, column: 29, scope: !937)
!941 = !DILocation(line: 507, column: 27, scope: !942)
!942 = distinct !DILexicalBlock(scope: !937, file: !3, line: 507, column: 9)
!943 = !DILocation(line: 507, column: 33, scope: !942)
!944 = !DILocation(line: 507, column: 30, scope: !942)
!945 = !DILocation(line: 507, column: 9, scope: !942)
!946 = !DILocation(line: 507, column: 9, scope: !937)
!947 = !DILocation(line: 508, column: 29, scope: !948)
!948 = distinct !DILexicalBlock(scope: !949, file: !3, line: 508, column: 13)
!949 = distinct !DILexicalBlock(scope: !942, file: !3, line: 507, column: 43)
!950 = !DILocation(line: 508, column: 35, scope: !948)
!951 = !DILocation(line: 508, column: 32, scope: !948)
!952 = !DILocation(line: 508, column: 13, scope: !948)
!953 = !DILocation(line: 508, column: 13, scope: !949)
!954 = !DILocation(line: 509, column: 31, scope: !955)
!955 = distinct !DILexicalBlock(scope: !948, file: !3, line: 508, column: 45)
!956 = !DILocation(line: 509, column: 13, scope: !955)
!957 = !DILocation(line: 510, column: 25, scope: !955)
!958 = !DILocation(line: 511, column: 9, scope: !955)
!959 = !DILocation(line: 512, column: 31, scope: !960)
!960 = distinct !DILexicalBlock(scope: !948, file: !3, line: 511, column: 16)
!961 = !DILocation(line: 512, column: 13, scope: !960)
!962 = !DILocation(line: 515, column: 27, scope: !963)
!963 = distinct !DILexicalBlock(scope: !942, file: !3, line: 514, column: 12)
!964 = !DILocation(line: 515, column: 9, scope: !963)
!965 = !DILocation(line: 517, column: 1, scope: !937)
!966 = distinct !DISubprogram(name: "touchCommand", scope: !3, file: !3, line: 520, type: !663, isLocal: false, isDefinition: true, scopeLine: 520, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !967)
!967 = !{!968, !969, !970}
!968 = !DILocalVariable(name: "c", arg: 1, scope: !966, file: !3, line: 520, type: !640)
!969 = !DILocalVariable(name: "touched", scope: !966, file: !3, line: 521, type: !6)
!970 = !DILocalVariable(name: "j", scope: !971, file: !3, line: 522, type: !6)
!971 = distinct !DILexicalBlock(scope: !966, file: !3, line: 522, column: 5)
!972 = !DILocation(line: 520, column: 27, scope: !966)
!973 = !DILocation(line: 521, column: 9, scope: !966)
!974 = !DILocation(line: 522, column: 14, scope: !971)
!975 = !DILocation(line: 522, column: 28, scope: !976)
!976 = distinct !DILexicalBlock(scope: !971, file: !3, line: 522, column: 5)
!977 = !{!779, !279, i64 64}
!978 = !DILocation(line: 522, column: 23, scope: !976)
!979 = !DILocation(line: 522, column: 5, scope: !971)
!980 = !DILocation(line: 524, column: 24, scope: !966)
!981 = !DILocation(line: 524, column: 5, scope: !966)
!982 = !DILocation(line: 525, column: 1, scope: !966)
!983 = !DILocation(line: 523, column: 30, scope: !984)
!984 = distinct !DILexicalBlock(scope: !976, file: !3, line: 523, column: 13)
!985 = !DILocation(line: 523, column: 36, scope: !984)
!986 = !DILocation(line: 523, column: 33, scope: !984)
!987 = !DILocation(line: 523, column: 13, scope: !984)
!988 = !DILocation(line: 523, column: 45, scope: !984)
!989 = !DILocation(line: 523, column: 13, scope: !976)
!990 = !DILocation(line: 522, column: 35, scope: !976)
!991 = distinct !{!991, !979, !992}
!992 = !DILocation(line: 523, column: 61, scope: !971)
