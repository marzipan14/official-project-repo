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
  %37 = tail call %struct.redisObject* @createStringObject(i8* %10, i64 %36) #6, !dbg !287
  %38 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 286), align 4, !dbg !289, !tbaa !290
  tail call void @propagateExpire(%struct.redisDb* %0, %struct.redisObject* %37, i32 %38) #6, !dbg !297
  %39 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 286), align 4, !dbg !298, !tbaa !290
  %40 = icmp eq i32 %39, 0, !dbg !300
  br i1 %40, label %43, label %41, !dbg !301

; <label>:41:                                     ; preds = %35
  %42 = tail call i32 @dbAsyncDelete(%struct.redisDb* %0, %struct.redisObject* %37) #6, !dbg !302
  br label %45, !dbg !302

; <label>:43:                                     ; preds = %35
  %44 = tail call i32 @dbSyncDelete(%struct.redisDb* %0, %struct.redisObject* %37) #6, !dbg !303
  br label %45

; <label>:45:                                     ; preds = %43, %41
  %46 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 5, !dbg !304
  %47 = load i32, i32* %46, align 8, !dbg !304, !tbaa !305
  tail call void @notifyKeyspaceEvent(i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.redisObject* %37, i32 %47) #6, !dbg !307
  tail call void @decrRefCount(%struct.redisObject* %37) #6, !dbg !308
  %48 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 72), align 8, !dbg !309, !tbaa !310
  %49 = add nsw i64 %48, 1, !dbg !309
  store i64 %49, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 72), align 8, !dbg !309, !tbaa !310
  br label %50

; <label>:50:                                     ; preds = %3, %45
  %51 = phi i32 [ 1, %45 ], [ 0, %3 ], !dbg !311
  ret i32 %51, !dbg !313
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
  %2 = tail call i64 @ustime() #6, !dbg !317
  %3 = tail call i32 @clientsArePaused() #6, !dbg !319
  %4 = icmp eq i32 %3, 0, !dbg !319
  br i1 %4, label %5, label %164, !dbg !321

; <label>:5:                                      ; preds = %1
  %6 = icmp eq i32 %0, 1, !dbg !322
  %7 = load i1, i1* @activeExpireCycle.timelimit_exit, align 4
  br i1 %6, label %8, label %14, !dbg !324

; <label>:8:                                      ; preds = %5
  br i1 %7, label %9, label %164, !dbg !325

; <label>:9:                                      ; preds = %8
  %10 = load i64, i64* @activeExpireCycle.last_fast_cycle, align 8, !dbg !327, !tbaa !329
  %11 = add nsw i64 %10, 2000, !dbg !330
  %12 = icmp slt i64 %2, %11, !dbg !331
  br i1 %12, label %164, label %13, !dbg !332

; <label>:13:                                     ; preds = %9
  store i64 %2, i64* @activeExpireCycle.last_fast_cycle, align 8, !dbg !333, !tbaa !329
  br label %14, !dbg !334

; <label>:14:                                     ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ %7, %5 ]
  %16 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !335, !tbaa !337
  %17 = icmp slt i32 %16, 16, !dbg !338
  %18 = or i1 %17, %15, !dbg !339
  %19 = select i1 %18, i32 %16, i32 16, !dbg !339
  %20 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 6), align 8, !dbg !340, !tbaa !341
  %21 = sdiv i32 25000000, %20, !dbg !342
  %22 = sdiv i32 %21, 100, !dbg !343
  store i1 false, i1* @activeExpireCycle.timelimit_exit, align 4
  %23 = icmp slt i32 %21, 100, !dbg !344
  %24 = select i1 %23, i32 1, i32 %22, !dbg !347
  %25 = select i1 %6, i32 1000, i32 %24, !dbg !348
  %26 = sext i32 %25 to i64, !dbg !348
  %27 = icmp sgt i32 %19, 0, !dbg !353
  br i1 %27, label %28, label %141, !dbg !354

; <label>:28:                                     ; preds = %14, %139
  %29 = phi i32 [ %140, %139 ], [ %16, %14 ], !dbg !355
  %30 = phi i32 [ %134, %139 ], [ 0, %14 ]
  %31 = phi i32 [ %46, %139 ], [ 0, %14 ]
  %32 = phi i64 [ %132, %139 ], [ 0, %14 ]
  %33 = phi i64 [ %133, %139 ], [ 0, %14 ]
  %34 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !356, !tbaa !357
  %35 = load i32, i32* @activeExpireCycle.current_db, align 4, !dbg !358, !tbaa !278
  %36 = urem i32 %35, %29, !dbg !359
  %37 = zext i32 %36 to i64, !dbg !360
  %38 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %34, i64 %37, !dbg !360
  %39 = add i32 %35, 1, !dbg !362
  store i32 %39, i32* @activeExpireCycle.current_db, align 4, !dbg !362, !tbaa !278
  %40 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %34, i64 %37, i32 1
  %41 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %34, i64 %37, i32 6
  br label %42, !dbg !363

; <label>:42:                                     ; preds = %129, %28
  %43 = phi i64 [ %33, %28 ], [ %119, %129 ], !dbg !349
  %44 = phi i64 [ %32, %28 ], [ %117, %129 ], !dbg !350
  %45 = phi i32 [ %31, %28 ], [ %46, %129 ], !dbg !364
  %46 = add nsw i32 %45, 1, !dbg !365
  %47 = load %struct.dict*, %struct.dict** %40, align 8, !dbg !366, !tbaa !368
  %48 = getelementptr inbounds %struct.dict, %struct.dict* %47, i64 0, i32 2, i64 0, i32 3, !dbg !366
  %49 = load i64, i64* %48, align 8, !dbg !366, !tbaa !369
  %50 = getelementptr inbounds %struct.dict, %struct.dict* %47, i64 0, i32 2, i64 1, i32 3, !dbg !366
  %51 = load i64, i64* %50, align 8, !dbg !366, !tbaa !369
  %52 = add i64 %51, %49, !dbg !366
  %53 = icmp eq i64 %52, 0, !dbg !372
  br i1 %53, label %54, label %55, !dbg !373

; <label>:54:                                     ; preds = %42
  store i64 0, i64* %41, align 8, !dbg !374, !tbaa !376
  br label %131, !dbg !377

; <label>:55:                                     ; preds = %42
  %56 = getelementptr inbounds %struct.dict, %struct.dict* %47, i64 0, i32 2, i64 0, i32 1, !dbg !378
  %57 = load i64, i64* %56, align 8, !dbg !378, !tbaa !379
  %58 = getelementptr inbounds %struct.dict, %struct.dict* %47, i64 0, i32 2, i64 1, i32 1, !dbg !378
  %59 = load i64, i64* %58, align 8, !dbg !378, !tbaa !379
  %60 = add i64 %59, %57, !dbg !378
  %61 = tail call i64 @mstime() #6, !dbg !381
  %62 = icmp ugt i64 %60, 4, !dbg !383
  %63 = mul i64 %52, 100, !dbg !385
  %64 = icmp ugt i64 %60, %63, !dbg !386
  %65 = and i1 %62, %64, !dbg !387
  br i1 %65, label %131, label %66, !dbg !387

; <label>:66:                                     ; preds = %55
  %67 = icmp ult i64 %52, 20, !dbg !390
  %68 = select i1 %67, i64 %52, i64 20, !dbg !390
  %69 = icmp eq i64 %68, 0, !dbg !391
  br i1 %69, label %116, label %70, !dbg !391

; <label>:70:                                     ; preds = %66, %80
  %71 = phi i64 [ %76, %80 ], [ %68, %66 ]
  %72 = phi i32 [ %93, %80 ], [ 0, %66 ]
  %73 = phi i64 [ %91, %80 ], [ 0, %66 ]
  %74 = phi i32 [ %88, %80 ], [ 0, %66 ]
  %75 = phi i64 [ %94, %80 ], [ %43, %66 ]
  %76 = add i64 %71, -1, !dbg !392
  %77 = load %struct.dict*, %struct.dict** %40, align 8, !dbg !393, !tbaa !368
  %78 = tail call %struct.dictEntry* @dictGetRandomKey(%struct.dict* %77) #6, !dbg !395
  %79 = icmp eq %struct.dictEntry* %78, null, !dbg !397
  br i1 %79, label %96, label %80, !dbg !398

; <label>:80:                                     ; preds = %70
  %81 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %78, i64 0, i32 1, !dbg !399
  %82 = bitcast %union.anon* %81 to i64*, !dbg !399
  %83 = load i64, i64* %82, align 8, !dbg !399, !tbaa !240
  %84 = sub nsw i64 %83, %61, !dbg !400
  %85 = tail call i32 @activeExpireCycleTryExpire(%struct.redisDb* nonnull %38, %struct.dictEntry* nonnull %78, i64 %61) #7, !dbg !402
  %86 = icmp ne i32 %85, 0, !dbg !402
  %87 = zext i1 %86 to i32, !dbg !404
  %88 = add nuw nsw i32 %74, %87, !dbg !404
  %89 = icmp sgt i64 %84, 0, !dbg !405
  %90 = select i1 %89, i64 %84, i64 0, !dbg !407
  %91 = add nuw nsw i64 %90, %73, !dbg !407
  %92 = zext i1 %89 to i32, !dbg !407
  %93 = add nuw nsw i32 %72, %92, !dbg !407
  %94 = add nsw i64 %75, 1, !dbg !408
  %95 = icmp eq i64 %76, 0, !dbg !391
  br i1 %95, label %96, label %70, !dbg !391

; <label>:96:                                     ; preds = %80, %70
  %97 = phi i64 [ %94, %80 ], [ %75, %70 ], !dbg !349
  %98 = phi i32 [ %88, %80 ], [ %74, %70 ], !dbg !409
  %99 = phi i64 [ %91, %80 ], [ %73, %70 ], !dbg !410
  %100 = phi i32 [ %93, %80 ], [ %72, %70 ], !dbg !411
  %101 = zext i32 %98 to i64, !dbg !412
  %102 = add nsw i64 %44, %101, !dbg !413
  %103 = icmp eq i32 %100, 0, !dbg !414
  br i1 %103, label %116, label %104, !dbg !415

; <label>:104:                                    ; preds = %96
  %105 = zext i32 %100 to i64, !dbg !416
  %106 = udiv i64 %99, %105, !dbg !417
  %107 = load i64, i64* %41, align 8, !dbg !419, !tbaa !376
  %108 = icmp eq i64 %107, 0, !dbg !421
  br i1 %108, label %109, label %110, !dbg !422

; <label>:109:                                    ; preds = %104
  store i64 %106, i64* %41, align 8, !dbg !423, !tbaa !376
  br label %110, !dbg !424

; <label>:110:                                    ; preds = %109, %104
  %111 = phi i64 [ %106, %109 ], [ %107, %104 ], !dbg !425
  %112 = sdiv i64 %111, 50, !dbg !426
  %113 = mul nsw i64 %112, 49, !dbg !427
  %114 = udiv i64 %106, 50, !dbg !428
  %115 = add nsw i64 %113, %114, !dbg !429
  store i64 %115, i64* %41, align 8, !dbg !430, !tbaa !376
  br label %116, !dbg !431

; <label>:116:                                    ; preds = %66, %96, %110
  %117 = phi i64 [ %102, %96 ], [ %102, %110 ], [ %44, %66 ]
  %118 = phi i32 [ %98, %96 ], [ %98, %110 ], [ 0, %66 ]
  %119 = phi i64 [ %97, %96 ], [ %97, %110 ], [ %43, %66 ]
  %120 = and i32 %46, 15, !dbg !432
  %121 = icmp eq i32 %120, 0, !dbg !434
  br i1 %121, label %122, label %129, !dbg !435

; <label>:122:                                    ; preds = %116
  %123 = tail call i64 @ustime() #6, !dbg !436
  %124 = sub nsw i64 %123, %2, !dbg !438
  %125 = icmp sgt i64 %124, %26, !dbg !440
  br i1 %125, label %126, label %129, !dbg !442

; <label>:126:                                    ; preds = %122
  store i1 true, i1* @activeExpireCycle.timelimit_exit, align 4
  %127 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 74), align 8, !dbg !443, !tbaa !445
  %128 = add nsw i64 %127, 1, !dbg !443
  store i64 %128, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 74), align 8, !dbg !443, !tbaa !445
  br label %131, !dbg !446

; <label>:129:                                    ; preds = %116, %122
  %130 = icmp ugt i32 %118, 5, !dbg !447
  br i1 %130, label %42, label %131, !llvm.loop !448

; <label>:131:                                    ; preds = %55, %129, %126, %54
  %132 = phi i64 [ %117, %126 ], [ %44, %54 ], [ %44, %55 ], [ %117, %129 ]
  %133 = phi i64 [ %119, %126 ], [ %43, %54 ], [ %43, %55 ], [ %119, %129 ]
  %134 = add nuw nsw i32 %30, 1, !dbg !450
  %135 = icmp slt i32 %134, %19, !dbg !353
  %136 = load i1, i1* @activeExpireCycle.timelimit_exit, align 4
  %137 = xor i1 %136, true, !dbg !451
  %138 = and i1 %135, %137, !dbg !452
  br i1 %138, label %139, label %141, !dbg !354, !llvm.loop !453

; <label>:139:                                    ; preds = %131
  %140 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !355, !tbaa !337
  br label %28, !dbg !354

; <label>:141:                                    ; preds = %131, %14
  %142 = phi i64 [ 0, %14 ], [ %133, %131 ], !dbg !349
  %143 = phi i64 [ 0, %14 ], [ %132, %131 ], !dbg !350
  %144 = tail call i64 @ustime() #6, !dbg !455
  %145 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !456, !tbaa !458
  %146 = icmp eq i64 %145, 0, !dbg !456
  br i1 %146, label %152, label %147, !dbg !456

; <label>:147:                                    ; preds = %141
  %148 = sub nsw i64 %144, %2, !dbg !459
  %149 = sdiv i64 %148, 1000, !dbg !456
  %150 = icmp slt i64 %149, %145, !dbg !456
  br i1 %150, label %152, label %151, !dbg !460

; <label>:151:                                    ; preds = %147
  tail call void @latencyAddSample(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %149) #6, !dbg !456
  br label %152, !dbg !456

; <label>:152:                                    ; preds = %147, %141, %151
  %153 = icmp eq i64 %142, 0, !dbg !461
  br i1 %153, label %159, label %154, !dbg !463

; <label>:154:                                    ; preds = %152
  %155 = sitofp i64 %143 to double, !dbg !464
  %156 = sitofp i64 %142 to double, !dbg !466
  %157 = fdiv double %155, %156, !dbg !467
  %158 = fmul double %157, 5.000000e-02, !dbg !469
  br label %159, !dbg !469

; <label>:159:                                    ; preds = %152, %154
  %160 = phi double [ %158, %154 ], [ 0.000000e+00, %152 ]
  %161 = load double, double* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 73), align 8, !dbg !470, !tbaa !471
  %162 = fmul double %161, 0x3FEE666666666666, !dbg !472
  %163 = fadd double %160, %162, !dbg !473
  store double %163, double* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 73), align 8, !dbg !474, !tbaa !471
  br label %164, !dbg !475

; <label>:164:                                    ; preds = %9, %8, %1, %159
  ret void, !dbg !475
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
define dso_local void @expireSlaveKeys() local_unnamed_addr #0 !dbg !476 {
  %1 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !496, !tbaa !498
  %2 = icmp eq %struct.dict* %1, null, !dbg !499
  br i1 %2, label %85, label %3, !dbg !500

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %1, i64 0, i32 2, i64 0, i32 3, !dbg !501
  %5 = load i64, i64* %4, align 8, !dbg !501, !tbaa !369
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %1, i64 0, i32 2, i64 1, i32 3, !dbg !501
  %7 = load i64, i64* %6, align 8, !dbg !501, !tbaa !369
  %8 = sub i64 0, %7, !dbg !502
  %9 = icmp eq i64 %5, %8, !dbg !502
  br i1 %9, label %85, label %10, !dbg !503

; <label>:10:                                     ; preds = %3
  %11 = tail call i64 @mstime() #6, !dbg !506
  %12 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !508, !tbaa !498
  br label %13, !dbg !509

; <label>:13:                                     ; preds = %77, %10
  %14 = phi %struct.dict* [ %12, %10 ], [ %78, %77 ], !dbg !508
  %15 = phi i32 [ 0, %10 ], [ %67, %77 ], !dbg !505
  %16 = phi i32 [ 0, %10 ], [ %68, %77 ], !dbg !510
  %17 = tail call %struct.dictEntry* @dictGetRandomKey(%struct.dict* %14) #6, !dbg !511
  %18 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %17, i64 0, i32 0, !dbg !513
  %19 = load i8*, i8** %18, align 8, !dbg !513, !tbaa !247
  %20 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %17, i64 0, i32 1, !dbg !515
  %21 = bitcast %union.anon* %20 to i64*, !dbg !515
  %22 = load i64, i64* %21, align 8, !dbg !515, !tbaa !240
  %23 = icmp ne i64 %22, 0, !dbg !519
  %24 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !520
  %25 = icmp sgt i32 %24, 0, !dbg !521
  %26 = and i1 %23, %25, !dbg !522
  br i1 %26, label %27, label %62, !dbg !522

; <label>:27:                                     ; preds = %13, %49
  %28 = phi i64 [ %52, %49 ], [ 0, %13 ]
  %29 = phi i32 [ %51, %49 ], [ %15, %13 ]
  %30 = phi i64 [ %50, %49 ], [ 0, %13 ]
  %31 = phi i64 [ %53, %49 ], [ %22, %13 ]
  %32 = and i64 %31, 1, !dbg !523
  %33 = icmp eq i64 %32, 0, !dbg !524
  br i1 %33, label %49, label %34, !dbg !525

; <label>:34:                                     ; preds = %27
  %35 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !526, !tbaa !357
  %36 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %35, i64 %28, i32 1, !dbg !527
  %37 = load %struct.dict*, %struct.dict** %36, align 8, !dbg !527, !tbaa !368
  %38 = tail call %struct.dictEntry* @dictFind(%struct.dict* %37, i8* %19) #6, !dbg !528
  %39 = icmp eq %struct.dictEntry* %38, null, !dbg !531
  br i1 %39, label %49, label %40, !dbg !533

; <label>:40:                                     ; preds = %34
  %41 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !534, !tbaa !357
  %42 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %41, i64 %28, !dbg !535
  %43 = tail call i32 @activeExpireCycleTryExpire(%struct.redisDb* %42, %struct.dictEntry* nonnull %38, i64 %11) #7, !dbg !536
  %44 = icmp eq i32 %43, 0, !dbg !536
  br i1 %44, label %45, label %49, !dbg !537

; <label>:45:                                     ; preds = %40
  %46 = add nsw i32 %29, 1, !dbg !539
  %47 = shl i64 1, %28, !dbg !541
  %48 = or i64 %47, %30, !dbg !542
  br label %49, !dbg !543

; <label>:49:                                     ; preds = %40, %34, %45, %27
  %50 = phi i64 [ %30, %27 ], [ %30, %40 ], [ %48, %45 ], [ %30, %34 ], !dbg !517
  %51 = phi i32 [ %29, %27 ], [ %29, %40 ], [ %46, %45 ], [ %29, %34 ], !dbg !505
  %52 = add nuw nsw i64 %28, 1, !dbg !544
  %53 = lshr i64 %31, 1, !dbg !545
  %54 = icmp ne i64 %53, 0, !dbg !519
  %55 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !520
  %56 = trunc i64 %52 to i32, !dbg !521
  %57 = icmp sgt i32 %55, %56, !dbg !521
  %58 = and i1 %54, %57, !dbg !522
  br i1 %58, label %27, label %59, !dbg !522, !llvm.loop !546

; <label>:59:                                     ; preds = %49
  %60 = icmp eq i64 %50, 0, !dbg !549
  br i1 %60, label %62, label %61, !dbg !551

; <label>:61:                                     ; preds = %59
  store i64 %50, i64* %21, align 8, !dbg !552, !tbaa !240
  br label %66, !dbg !552

; <label>:62:                                     ; preds = %13, %59
  %63 = phi i32 [ %51, %59 ], [ %15, %13 ]
  %64 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !554, !tbaa !498
  %65 = tail call i32 @dictDelete(%struct.dict* %64, i8* %19) #6, !dbg !555
  br label %66

; <label>:66:                                     ; preds = %62, %61
  %67 = phi i32 [ %63, %62 ], [ %51, %61 ]
  %68 = add nuw nsw i32 %16, 1, !dbg !556
  %69 = icmp sgt i32 %67, 3, !dbg !557
  br i1 %69, label %85, label %70, !dbg !559

; <label>:70:                                     ; preds = %66
  %71 = and i32 %68, 63, !dbg !560
  %72 = icmp eq i32 %71, 0, !dbg !562
  br i1 %72, label %73, label %77, !dbg !563

; <label>:73:                                     ; preds = %70
  %74 = tail call i64 @mstime() #6, !dbg !564
  %75 = sub nsw i64 %74, %11, !dbg !565
  %76 = icmp sgt i64 %75, 1, !dbg !566
  br i1 %76, label %85, label %77, !dbg !567

; <label>:77:                                     ; preds = %73, %70
  %78 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !568, !tbaa !498
  %79 = getelementptr inbounds %struct.dict, %struct.dict* %78, i64 0, i32 2, i64 0, i32 3, !dbg !568
  %80 = load i64, i64* %79, align 8, !dbg !568, !tbaa !369
  %81 = getelementptr inbounds %struct.dict, %struct.dict* %78, i64 0, i32 2, i64 1, i32 3, !dbg !568
  %82 = load i64, i64* %81, align 8, !dbg !568, !tbaa !369
  %83 = sub i64 0, %82, !dbg !570
  %84 = icmp eq i64 %80, %83, !dbg !570
  br i1 %84, label %85, label %13, !llvm.loop !571

; <label>:85:                                     ; preds = %77, %73, %66, %0, %3
  ret void, !dbg !573
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @dictDelete(%struct.dict*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @rememberSlaveKeyWithExpire(%struct.redisDb* nocapture readonly, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !131 {
  %3 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !576, !tbaa !498
  %4 = icmp eq %struct.dict* %3, null, !dbg !578
  br i1 %4, label %5, label %7, !dbg !579

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @rememberSlaveKeyWithExpire.dt, i8* null) #6, !dbg !580
  store %struct.dict* %6, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !582, !tbaa !498
  br label %7, !dbg !583

; <label>:7:                                      ; preds = %5, %2
  %8 = phi %struct.dict* [ %6, %5 ], [ %3, %2 ]
  %9 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 5, !dbg !584
  %10 = load i32, i32* %9, align 8, !dbg !584, !tbaa !305
  %11 = icmp sgt i32 %10, 63, !dbg !586
  br i1 %11, label %35, label %12, !dbg !587

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !588
  %14 = load i8*, i8** %13, align 8, !dbg !588, !tbaa !589
  %15 = tail call %struct.dictEntry* @dictAddOrFind(%struct.dict* %8, i8* %14) #6, !dbg !591
  %16 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %15, i64 0, i32 0, !dbg !593
  %17 = load i8*, i8** %16, align 8, !dbg !593, !tbaa !247
  %18 = load i8*, i8** %13, align 8, !dbg !595, !tbaa !589
  %19 = icmp eq i8* %17, %18, !dbg !596
  br i1 %19, label %24, label %20, !dbg !597

; <label>:20:                                     ; preds = %12
  %21 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %15, i64 0, i32 1
  %22 = bitcast %union.anon* %21 to i64*
  %23 = load i64, i64* %22, align 8, !dbg !598, !tbaa !240
  br label %28, !dbg !597

; <label>:24:                                     ; preds = %12
  %25 = tail call i8* @sdsdup(i8* %17) #6, !dbg !599
  store i8* %25, i8** %16, align 8, !dbg !601, !tbaa !247
  %26 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %15, i64 0, i32 1, !dbg !602
  %27 = bitcast %union.anon* %26 to i64*, !dbg !602
  store i64 0, i64* %27, align 8, !dbg !602, !tbaa !240
  br label %28, !dbg !604

; <label>:28:                                     ; preds = %20, %24
  %29 = phi i64* [ %22, %20 ], [ %27, %24 ], !dbg !598
  %30 = phi i64 [ %23, %20 ], [ 0, %24 ], !dbg !598
  %31 = load i32, i32* %9, align 8, !dbg !606, !tbaa !305
  %32 = zext i32 %31 to i64, !dbg !607
  %33 = shl i64 1, %32, !dbg !607
  %34 = or i64 %33, %30, !dbg !608
  store i64 %34, i64* %29, align 8, !dbg !609, !tbaa !240
  br label %35, !dbg !611

; <label>:35:                                     ; preds = %7, %28
  ret void, !dbg !611
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

; Function Attrs: norecurse noredzone nounwind readonly
define dso_local i64 @getSlaveKeyWithExpireCount() local_unnamed_addr #3 !dbg !612 {
  %1 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !619, !tbaa !498
  %2 = icmp eq %struct.dict* %1, null, !dbg !621
  br i1 %2, label %9, label %3, !dbg !622

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %1, i64 0, i32 2, i64 0, i32 3, !dbg !623
  %5 = load i64, i64* %4, align 8, !dbg !623, !tbaa !369
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %1, i64 0, i32 2, i64 1, i32 3, !dbg !623
  %7 = load i64, i64* %6, align 8, !dbg !623, !tbaa !369
  %8 = add i64 %7, %5, !dbg !623
  br label %9, !dbg !624

; <label>:9:                                      ; preds = %0, %3
  %10 = phi i64 [ %8, %3 ], [ 0, %0 ], !dbg !625
  ret i64 %10, !dbg !626
}

; Function Attrs: noredzone nounwind
define dso_local void @flushSlaveKeysWithExpireList() local_unnamed_addr #0 !dbg !627 {
  %1 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !628, !tbaa !498
  %2 = icmp eq %struct.dict* %1, null, !dbg !628
  br i1 %2, label %4, label %3, !dbg !630

; <label>:3:                                      ; preds = %0
  tail call void @dictRelease(%struct.dict* nonnull %1) #6, !dbg !631
  store %struct.dict* null, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !633, !tbaa !498
  br label %4, !dbg !634

; <label>:4:                                      ; preds = %0, %3
  ret void, !dbg !635
}

; Function Attrs: noredzone
declare dso_local void @dictRelease(%struct.dict*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @expireGenericCommand(%struct.client*, i64, i32) local_unnamed_addr #0 !dbg !636 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !776
  %6 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !776, !tbaa !777
  %7 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 1, !dbg !781
  %8 = load %struct.redisObject*, %struct.redisObject** %7, align 8, !dbg !781, !tbaa !498
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 2, !dbg !783
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !783, !tbaa !498
  %11 = bitcast i64* %4 to i8*, !dbg !785
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #8, !dbg !785
  %12 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %10, i64* nonnull %4, i8* null) #6, !dbg !787
  %13 = icmp eq i32 %12, 0, !dbg !789
  br i1 %13, label %14, label %73, !dbg !790

; <label>:14:                                     ; preds = %3
  %15 = icmp eq i32 %2, 0, !dbg !791
  %16 = load i64, i64* %4, align 8, !dbg !793, !tbaa !329
  br i1 %15, label %17, label %19, !dbg !794

; <label>:17:                                     ; preds = %14
  %18 = mul nsw i64 %16, 1000, !dbg !795
  store i64 %18, i64* %4, align 8, !dbg !795, !tbaa !329
  br label %19, !dbg !796

; <label>:19:                                     ; preds = %14, %17
  %20 = phi i64 [ %18, %17 ], [ %16, %14 ], !dbg !797
  %21 = add nsw i64 %20, %1, !dbg !797
  store i64 %21, i64* %4, align 8, !dbg !797, !tbaa !329
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !798
  %23 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !798, !tbaa !800
  %24 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %23, %struct.redisObject* %8) #6, !dbg !801
  %25 = icmp eq %struct.redisObject* %24, null, !dbg !802
  br i1 %25, label %26, label %28, !dbg !803

; <label>:26:                                     ; preds = %19
  %27 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !804, !tbaa !806
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %27) #6, !dbg !808
  br label %73, !dbg !809

; <label>:28:                                     ; preds = %19
  %29 = load i64, i64* %4, align 8, !dbg !810, !tbaa !329
  %30 = call i64 @mstime() #6, !dbg !811
  %31 = icmp sgt i64 %29, %30, !dbg !812
  %32 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !813
  %33 = icmp ne i32 %32, 0, !dbg !814
  %34 = or i1 %31, %33, !dbg !815
  %35 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !816
  %36 = icmp ne i8* %35, null, !dbg !817
  %37 = or i1 %34, %36, !dbg !815
  br i1 %37, label %63, label %38, !dbg !815

; <label>:38:                                     ; preds = %28
  %39 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 286), align 4, !dbg !818, !tbaa !290
  %40 = icmp eq i32 %39, 0, !dbg !819
  %41 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !820, !tbaa !800
  br i1 %40, label %44, label %42, !dbg !819

; <label>:42:                                     ; preds = %38
  %43 = call i32 @dbAsyncDelete(%struct.redisDb* %41, %struct.redisObject* %8) #6, !dbg !821
  br label %46, !dbg !819

; <label>:44:                                     ; preds = %38
  %45 = call i32 @dbSyncDelete(%struct.redisDb* %41, %struct.redisObject* %8) #6, !dbg !822
  br label %46, !dbg !819

; <label>:46:                                     ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ], !dbg !819
  %48 = icmp eq i32 %47, 0, !dbg !824
  br i1 %48, label %49, label %50, !dbg !824

; <label>:49:                                     ; preds = %46
  call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i32 432) #6, !dbg !824
  call void @_exit(i32 1) #9, !dbg !824
  unreachable, !dbg !824

; <label>:50:                                     ; preds = %46
  %51 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !825, !tbaa !826
  %52 = add nsw i64 %51, 1, !dbg !825
  store i64 %52, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !825, !tbaa !826
  %53 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 286), align 4, !dbg !827, !tbaa !290
  %54 = icmp eq i32 %53, 0, !dbg !828
  %55 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 38), align 8, !dbg !829
  %56 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 37), align 8, !dbg !830
  %57 = select i1 %54, %struct.redisObject* %56, %struct.redisObject* %55, !dbg !828
  call void (%struct.client*, i32, ...) @rewriteClientCommandVector(%struct.client* nonnull %0, i32 2, %struct.redisObject* %57, %struct.redisObject* %8) #6, !dbg !832
  %58 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !833, !tbaa !800
  call void @signalModifiedKey(%struct.redisDb* %58, %struct.redisObject* %8) #6, !dbg !834
  %59 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !835, !tbaa !800
  %60 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %59, i64 0, i32 5, !dbg !836
  %61 = load i32, i32* %60, align 8, !dbg !836, !tbaa !305
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %struct.redisObject* %8, i32 %61) #6, !dbg !837
  %62 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !838, !tbaa !839
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %62) #6, !dbg !840
  br label %73

; <label>:63:                                     ; preds = %28
  %64 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !841, !tbaa !800
  %65 = load i64, i64* %4, align 8, !dbg !843, !tbaa !329
  call void @setExpire(%struct.client* nonnull %0, %struct.redisDb* %64, %struct.redisObject* %8, i64 %65) #6, !dbg !844
  %66 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !845, !tbaa !839
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %66) #6, !dbg !846
  %67 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !847, !tbaa !800
  call void @signalModifiedKey(%struct.redisDb* %67, %struct.redisObject* %8) #6, !dbg !848
  %68 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !849, !tbaa !800
  %69 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %68, i64 0, i32 5, !dbg !850
  %70 = load i32, i32* %69, align 8, !dbg !850, !tbaa !305
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %struct.redisObject* %8, i32 %70) #6, !dbg !851
  %71 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !852, !tbaa !826
  %72 = add nsw i64 %71, 1, !dbg !852
  store i64 %72, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !852, !tbaa !826
  br label %73, !dbg !853

; <label>:73:                                     ; preds = %3, %63, %50, %26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #8, !dbg !854
  ret void, !dbg !854
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
define dso_local void @expireCommand(%struct.client*) local_unnamed_addr #0 !dbg !855 {
  %2 = tail call i64 @mstime() #6, !dbg !859
  tail call void @expireGenericCommand(%struct.client* %0, i64 %2, i32 0) #7, !dbg !860
  ret void, !dbg !861
}

; Function Attrs: noredzone nounwind
define dso_local void @expireatCommand(%struct.client*) local_unnamed_addr #0 !dbg !862 {
  tail call void @expireGenericCommand(%struct.client* %0, i64 0, i32 0) #7, !dbg !866
  ret void, !dbg !867
}

; Function Attrs: noredzone nounwind
define dso_local void @pexpireCommand(%struct.client*) local_unnamed_addr #0 !dbg !868 {
  %2 = tail call i64 @mstime() #6, !dbg !872
  tail call void @expireGenericCommand(%struct.client* %0, i64 %2, i32 1) #7, !dbg !873
  ret void, !dbg !874
}

; Function Attrs: noredzone nounwind
define dso_local void @pexpireatCommand(%struct.client*) local_unnamed_addr #0 !dbg !875 {
  tail call void @expireGenericCommand(%struct.client* %0, i64 0, i32 1) #7, !dbg !879
  ret void, !dbg !880
}

; Function Attrs: noredzone nounwind
define dso_local void @ttlGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !881 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !892
  %4 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !892, !tbaa !800
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !894
  %6 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !894, !tbaa !777
  %7 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 1, !dbg !895
  %8 = load %struct.redisObject*, %struct.redisObject** %7, align 8, !dbg !895, !tbaa !498
  %9 = tail call %struct.redisObject* @lookupKeyReadWithFlags(%struct.redisDb* %4, %struct.redisObject* %8, i32 1) #6, !dbg !896
  %10 = icmp eq %struct.redisObject* %9, null, !dbg !897
  br i1 %10, label %11, label %12, !dbg !898

; <label>:11:                                     ; preds = %2
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 -2) #6, !dbg !899
  br label %31, !dbg !901

; <label>:12:                                     ; preds = %2
  %13 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !902, !tbaa !800
  %14 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !903, !tbaa !777
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 1, !dbg !904
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !904, !tbaa !498
  %17 = tail call i64 @getExpire(%struct.redisDb* %13, %struct.redisObject* %16) #6, !dbg !905
  %18 = icmp eq i64 %17, -1, !dbg !907
  br i1 %18, label %25, label %19, !dbg !909

; <label>:19:                                     ; preds = %12
  %20 = tail call i64 @mstime() #6, !dbg !910
  %21 = sub nsw i64 %17, %20, !dbg !912
  %22 = icmp sgt i64 %21, 0, !dbg !913
  %23 = select i1 %22, i64 %21, i64 0
  %24 = icmp eq i32 %1, 0, !dbg !914
  br i1 %24, label %26, label %29, !dbg !914

; <label>:25:                                     ; preds = %12
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 -1) #6, !dbg !917
  br label %31, !dbg !919

; <label>:26:                                     ; preds = %19
  %27 = add nuw nsw i64 %23, 500, !dbg !920
  %28 = udiv i64 %27, 1000, !dbg !921
  br label %29, !dbg !914

; <label>:29:                                     ; preds = %19, %26
  %30 = phi i64 [ %28, %26 ], [ %23, %19 ], !dbg !914
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %30) #6, !dbg !922
  br label %31

; <label>:31:                                     ; preds = %25, %29, %11
  ret void, !dbg !923
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyReadWithFlags(%struct.redisDb*, %struct.redisObject*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @getExpire(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @ttlCommand(%struct.client*) local_unnamed_addr #0 !dbg !924 {
  tail call void @ttlGenericCommand(%struct.client* %0, i32 0) #7, !dbg !928
  ret void, !dbg !929
}

; Function Attrs: noredzone nounwind
define dso_local void @pttlCommand(%struct.client*) local_unnamed_addr #0 !dbg !930 {
  tail call void @ttlGenericCommand(%struct.client* %0, i32 1) #7, !dbg !934
  ret void, !dbg !935
}

; Function Attrs: noredzone nounwind
define dso_local void @persistCommand(%struct.client*) local_unnamed_addr #0 !dbg !936 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !940
  %3 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !940, !tbaa !800
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !942
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !942, !tbaa !777
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !943
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !943, !tbaa !498
  %8 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %3, %struct.redisObject* %7) #6, !dbg !944
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !944
  br i1 %9, label %23, label %10, !dbg !945

; <label>:10:                                     ; preds = %1
  %11 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !946, !tbaa !800
  %12 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !949, !tbaa !777
  %13 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %12, i64 1, !dbg !950
  %14 = load %struct.redisObject*, %struct.redisObject** %13, align 8, !dbg !950, !tbaa !498
  %15 = tail call i32 @removeExpire(%struct.redisDb* %11, %struct.redisObject* %14) #6, !dbg !951
  %16 = icmp eq i32 %15, 0, !dbg !951
  br i1 %16, label %21, label %17, !dbg !952

; <label>:17:                                     ; preds = %10
  %18 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !953, !tbaa !839
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %18) #6, !dbg !955
  %19 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !956, !tbaa !826
  %20 = add nsw i64 %19, 1, !dbg !956
  store i64 %20, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !956, !tbaa !826
  br label %25, !dbg !957

; <label>:21:                                     ; preds = %10
  %22 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !958, !tbaa !806
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %22) #6, !dbg !960
  br label %25

; <label>:23:                                     ; preds = %1
  %24 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !961, !tbaa !806
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %24) #6, !dbg !963
  br label %25

; <label>:25:                                     ; preds = %17, %21, %23
  ret void, !dbg !964
}

; Function Attrs: noredzone
declare dso_local i32 @removeExpire(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @touchCommand(%struct.client*) local_unnamed_addr #0 !dbg !965 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !974
  %3 = load i32, i32* %2, align 8, !dbg !974, !tbaa !976
  %4 = icmp sgt i32 %3, 1, !dbg !977
  br i1 %4, label %5, label %10, !dbg !978

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %12, !dbg !978

; <label>:8:                                      ; preds = %12
  %9 = zext i32 %22 to i64, !dbg !979
  br label %10, !dbg !979

; <label>:10:                                     ; preds = %8, %1
  %11 = phi i64 [ 0, %1 ], [ %9, %8 ]
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %11) #6, !dbg !980
  ret void, !dbg !981

; <label>:12:                                     ; preds = %5, %12
  %13 = phi i64 [ 1, %5 ], [ %23, %12 ]
  %14 = phi i32 [ 0, %5 ], [ %22, %12 ]
  %15 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !982, !tbaa !800
  %16 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !984, !tbaa !777
  %17 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 %13, !dbg !985
  %18 = load %struct.redisObject*, %struct.redisObject** %17, align 8, !dbg !985, !tbaa !498
  %19 = tail call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %15, %struct.redisObject* %18) #6, !dbg !986
  %20 = icmp ne %struct.redisObject* %19, null, !dbg !987
  %21 = zext i1 %20 to i32, !dbg !988
  %22 = add nuw nsw i32 %14, %21, !dbg !988
  %23 = add nuw nsw i64 %13, 1, !dbg !989
  %24 = load i32, i32* %2, align 8, !dbg !974, !tbaa !976
  %25 = sext i32 %24 to i64, !dbg !977
  %26 = icmp slt i64 %23, %25, !dbg !977
  br i1 %26, label %12, label %8, !dbg !978, !llvm.loop !990
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyRead(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!287 = !DILocation(line: 58, column: 24, scope: !231)
!288 = !DILocation(line: 58, column: 15, scope: !231)
!289 = !DILocation(line: 60, column: 42, scope: !231)
!290 = !{!291, !279, i64 3084}
!291 = !{!"redisServer", !279, i64 0, !249, i64 8, !249, i64 16, !249, i64 24, !279, i64 32, !279, i64 36, !279, i64 40, !249, i64 48, !249, i64 56, !249, i64 64, !249, i64 72, !279, i64 80, !279, i64 84, !279, i64 88, !279, i64 92, !249, i64 96, !249, i64 104, !279, i64 112, !279, i64 116, !241, i64 120, !279, i64 164, !284, i64 168, !279, i64 176, !249, i64 184, !249, i64 192, !249, i64 200, !241, i64 208, !279, i64 216, !279, i64 220, !241, i64 224, !279, i64 352, !249, i64 360, !279, i64 368, !241, i64 372, !279, i64 436, !279, i64 440, !241, i64 444, !279, i64 508, !249, i64 512, !249, i64 520, !249, i64 528, !249, i64 536, !249, i64 544, !249, i64 552, !249, i64 560, !279, i64 568, !292, i64 576, !241, i64 584, !249, i64 840, !284, i64 848, !279, i64 856, !279, i64 860, !284, i64 864, !284, i64 872, !284, i64 880, !284, i64 888, !249, i64 896, !249, i64 904, !249, i64 912, !249, i64 920, !249, i64 928, !249, i64 936, !249, i64 944, !249, i64 952, !249, i64 960, !249, i64 968, !249, i64 976, !249, i64 984, !249, i64 992, !284, i64 1000, !292, i64 1008, !292, i64 1016, !292, i64 1024, !293, i64 1032, !292, i64 1040, !292, i64 1048, !292, i64 1056, !292, i64 1064, !292, i64 1072, !292, i64 1080, !292, i64 1088, !292, i64 1096, !292, i64 1104, !284, i64 1112, !292, i64 1120, !293, i64 1128, !292, i64 1136, !292, i64 1144, !292, i64 1152, !292, i64 1160, !249, i64 1168, !292, i64 1176, !292, i64 1184, !284, i64 1192, !294, i64 1200, !292, i64 1240, !292, i64 1248, !284, i64 1256, !284, i64 1264, !241, i64 1272, !279, i64 1728, !279, i64 1732, !279, i64 1736, !279, i64 1740, !279, i64 1744, !284, i64 1752, !279, i64 1760, !279, i64 1764, !279, i64 1768, !279, i64 1772, !284, i64 1776, !284, i64 1784, !279, i64 1792, !279, i64 1796, !279, i64 1800, !279, i64 1804, !241, i64 1808, !279, i64 1880, !279, i64 1884, !249, i64 1888, !279, i64 1896, !279, i64 1900, !284, i64 1904, !284, i64 1912, !284, i64 1920, !284, i64 1928, !279, i64 1936, !279, i64 1940, !249, i64 1944, !249, i64 1952, !279, i64 1960, !279, i64 1964, !284, i64 1968, !284, i64 1976, !284, i64 1984, !284, i64 1992, !279, i64 2000, !284, i64 2008, !279, i64 2016, !279, i64 2020, !279, i64 2024, !279, i64 2028, !279, i64 2032, !279, i64 2036, !279, i64 2040, !279, i64 2044, !279, i64 2048, !279, i64 2052, !279, i64 2056, !279, i64 2060, !279, i64 2064, !249, i64 2072, !292, i64 2080, !292, i64 2088, !279, i64 2096, !249, i64 2104, !279, i64 2112, !249, i64 2120, !279, i64 2128, !279, i64 2132, !284, i64 2136, !284, i64 2144, !284, i64 2152, !284, i64 2160, !279, i64 2168, !279, i64 2172, !279, i64 2176, !279, i64 2180, !279, i64 2184, !279, i64 2188, !241, i64 2192, !295, i64 2200, !296, i64 2224, !249, i64 2240, !279, i64 2248, !249, i64 2256, !279, i64 2264, !241, i64 2268, !241, i64 2309, !292, i64 2352, !292, i64 2360, !279, i64 2368, !279, i64 2372, !249, i64 2376, !292, i64 2384, !292, i64 2392, !292, i64 2400, !292, i64 2408, !284, i64 2416, !284, i64 2424, !279, i64 2432, !279, i64 2436, !279, i64 2440, !279, i64 2444, !279, i64 2448, !249, i64 2456, !249, i64 2464, !279, i64 2472, !279, i64 2476, !249, i64 2480, !249, i64 2488, !279, i64 2496, !279, i64 2500, !284, i64 2504, !284, i64 2512, !284, i64 2520, !279, i64 2528, !279, i64 2532, !249, i64 2536, !284, i64 2544, !279, i64 2552, !279, i64 2556, !279, i64 2560, !284, i64 2568, !279, i64 2576, !279, i64 2580, !279, i64 2584, !249, i64 2592, !241, i64 2600, !292, i64 2648, !279, i64 2656, !249, i64 2664, !249, i64 2672, !279, i64 2680, !249, i64 2688, !279, i64 2696, !279, i64 2700, !292, i64 2704, !279, i64 2712, !279, i64 2716, !279, i64 2720, !279, i64 2724, !292, i64 2728, !279, i64 2736, !241, i64 2740, !249, i64 2768, !249, i64 2776, !279, i64 2784, !279, i64 2788, !279, i64 2792, !279, i64 2796, !284, i64 2800, !284, i64 2808, !284, i64 2816, !284, i64 2824, !284, i64 2832, !284, i64 2840, !284, i64 2848, !284, i64 2856, !279, i64 2864, !279, i64 2868, !284, i64 2872, !284, i64 2880, !279, i64 2888, !292, i64 2896, !249, i64 2904, !249, i64 2912, !279, i64 2920, !279, i64 2924, !292, i64 2928, !249, i64 2936, !249, i64 2944, !279, i64 2952, !279, i64 2956, !279, i64 2960, !279, i64 2964, !249, i64 2968, !279, i64 2976, !279, i64 2980, !279, i64 2984, !249, i64 2992, !249, i64 3000, !249, i64 3008, !249, i64 3016, !292, i64 3024, !292, i64 3032, !292, i64 3040, !279, i64 3048, !279, i64 3052, !279, i64 3056, !279, i64 3060, !279, i64 3064, !279, i64 3068, !279, i64 3072, !279, i64 3076, !279, i64 3080, !279, i64 3084, !279, i64 3088, !292, i64 3096, !249, i64 3104, !249, i64 3112, !249, i64 3120, !279, i64 3128, !279, i64 3132, !279, i64 3136, !284, i64 3144, !249, i64 3152, !249, i64 3160, !249, i64 3168}
!292 = !{!"long long", !241, i64 0}
!293 = !{!"double", !241, i64 0}
!294 = !{!"malloc_stats", !284, i64 0, !284, i64 8, !284, i64 16, !284, i64 24, !284, i64 32}
!295 = !{!"", !279, i64 0, !284, i64 8, !292, i64 16}
!296 = !{!"redisOpArray", !249, i64 0, !279, i64 8}
!297 = !DILocation(line: 60, column: 9, scope: !231)
!298 = !DILocation(line: 61, column: 20, scope: !299)
!299 = distinct !DILexicalBlock(scope: !231, file: !3, line: 61, column: 13)
!300 = !DILocation(line: 61, column: 13, scope: !299)
!301 = !DILocation(line: 61, column: 13, scope: !231)
!302 = !DILocation(line: 62, column: 13, scope: !299)
!303 = !DILocation(line: 64, column: 13, scope: !299)
!304 = !DILocation(line: 66, column: 34, scope: !231)
!305 = !{!306, !279, i64 40}
!306 = !{!"redisDb", !249, i64 0, !249, i64 8, !249, i64 16, !249, i64 24, !249, i64 32, !279, i64 40, !292, i64 48, !249, i64 56}
!307 = !DILocation(line: 65, column: 9, scope: !231)
!308 = !DILocation(line: 67, column: 9, scope: !231)
!309 = !DILocation(line: 68, column: 32, scope: !231)
!310 = !{!291, !292, i64 1024}
!311 = !DILocation(line: 0, scope: !312)
!312 = distinct !DILexicalBlock(scope: !232, file: !3, line: 70, column: 12)
!313 = !DILocation(line: 73, column: 1, scope: !222)
!314 = !DILocation(line: 97, column: 28, scope: !2)
!315 = !DILocation(line: 104, column: 12, scope: !2)
!316 = !DILocation(line: 105, column: 9, scope: !2)
!317 = !DILocation(line: 106, column: 23, scope: !2)
!318 = !DILocation(line: 106, column: 15, scope: !2)
!319 = !DILocation(line: 111, column: 9, scope: !320)
!320 = distinct !DILexicalBlock(scope: !2, file: !3, line: 111, column: 9)
!321 = !DILocation(line: 111, column: 9, scope: !2)
!322 = !DILocation(line: 113, column: 14, scope: !323)
!323 = distinct !DILexicalBlock(scope: !2, file: !3, line: 113, column: 9)
!324 = !DILocation(line: 113, column: 9, scope: !2)
!325 = !DILocation(line: 117, column: 13, scope: !326)
!326 = distinct !DILexicalBlock(scope: !323, file: !3, line: 113, column: 43)
!327 = !DILocation(line: 118, column: 21, scope: !328)
!328 = distinct !DILexicalBlock(scope: !326, file: !3, line: 118, column: 13)
!329 = !{!292, !292, i64 0}
!330 = !DILocation(line: 118, column: 37, scope: !328)
!331 = !DILocation(line: 118, column: 19, scope: !328)
!332 = !DILocation(line: 118, column: 13, scope: !326)
!333 = !DILocation(line: 119, column: 25, scope: !326)
!334 = !DILocation(line: 120, column: 5, scope: !326)
!335 = !DILocation(line: 129, column: 31, scope: !336)
!336 = distinct !DILexicalBlock(scope: !2, file: !3, line: 129, column: 9)
!337 = !{!291, !279, i64 1792}
!338 = !DILocation(line: 129, column: 22, scope: !336)
!339 = !DILocation(line: 129, column: 37, scope: !336)
!340 = !DILocation(line: 136, column: 67, scope: !2)
!341 = !{!291, !279, i64 40}
!342 = !DILocation(line: 136, column: 59, scope: !2)
!343 = !DILocation(line: 136, column: 69, scope: !2)
!344 = !DILocation(line: 138, column: 19, scope: !345)
!345 = distinct !DILexicalBlock(scope: !2, file: !3, line: 138, column: 9)
!346 = !DILocation(line: 106, column: 33, scope: !2)
!347 = !DILocation(line: 138, column: 9, scope: !2)
!348 = !DILocation(line: 140, column: 9, scope: !2)
!349 = !DILocation(line: 146, column: 10, scope: !2)
!350 = !DILocation(line: 147, column: 10, scope: !2)
!351 = !DILocation(line: 104, column: 9, scope: !2)
!352 = !DILocation(line: 150, column: 13, scope: !200)
!353 = !DILocation(line: 149, column: 19, scope: !201)
!354 = !DILocation(line: 149, column: 5, scope: !202)
!355 = !DILocation(line: 151, column: 54, scope: !200)
!356 = !DILocation(line: 151, column: 30, scope: !200)
!357 = !{!291, !249, i64 48}
!358 = !DILocation(line: 151, column: 34, scope: !200)
!359 = !DILocation(line: 151, column: 45, scope: !200)
!360 = !DILocation(line: 151, column: 32, scope: !200)
!361 = !DILocation(line: 151, column: 18, scope: !200)
!362 = !DILocation(line: 156, column: 19, scope: !200)
!363 = !DILocation(line: 160, column: 9, scope: !200)
!364 = !DILocation(line: 0, scope: !205)
!365 = !DILocation(line: 164, column: 22, scope: !205)
!366 = !DILocation(line: 167, column: 24, scope: !367)
!367 = distinct !DILexicalBlock(scope: !205, file: !3, line: 167, column: 17)
!368 = !{!306, !249, i64 8}
!369 = !{!370, !284, i64 24}
!370 = !{!"dictht", !249, i64 0, !284, i64 8, !284, i64 16, !284, i64 24}
!371 = !DILocation(line: 161, column: 27, scope: !205)
!372 = !DILocation(line: 167, column: 47, scope: !367)
!373 = !DILocation(line: 167, column: 17, scope: !205)
!374 = !DILocation(line: 168, column: 29, scope: !375)
!375 = distinct !DILexicalBlock(scope: !367, file: !3, line: 167, column: 53)
!376 = !{!306, !292, i64 48}
!377 = !DILocation(line: 169, column: 17, scope: !375)
!378 = !DILocation(line: 171, column: 21, scope: !205)
!379 = !{!370, !284, i64 8}
!380 = !DILocation(line: 161, column: 32, scope: !205)
!381 = !DILocation(line: 172, column: 19, scope: !205)
!382 = !DILocation(line: 162, column: 23, scope: !205)
!383 = !DILocation(line: 177, column: 30, scope: !384)
!384 = distinct !DILexicalBlock(scope: !205, file: !3, line: 177, column: 17)
!385 = !DILocation(line: 178, column: 21, scope: !384)
!386 = !DILocation(line: 178, column: 32, scope: !384)
!387 = !DILocation(line: 177, column: 21, scope: !384)
!388 = !DILocation(line: 162, column: 28, scope: !205)
!389 = !DILocation(line: 163, column: 17, scope: !205)
!390 = !DILocation(line: 186, column: 17, scope: !205)
!391 = !DILocation(line: 189, column: 13, scope: !205)
!392 = !DILocation(line: 189, column: 23, scope: !205)
!393 = !DILocation(line: 193, column: 48, scope: !394)
!394 = distinct !DILexicalBlock(scope: !211, file: !3, line: 193, column: 21)
!395 = !DILocation(line: 193, column: 27, scope: !394)
!396 = !DILocation(line: 190, column: 28, scope: !211)
!397 = !DILocation(line: 193, column: 58, scope: !394)
!398 = !DILocation(line: 193, column: 21, scope: !211)
!399 = !DILocation(line: 194, column: 23, scope: !211)
!400 = !DILocation(line: 194, column: 50, scope: !211)
!401 = !DILocation(line: 191, column: 27, scope: !211)
!402 = !DILocation(line: 195, column: 21, scope: !403)
!403 = distinct !DILexicalBlock(scope: !211, file: !3, line: 195, column: 21)
!404 = !DILocation(line: 195, column: 21, scope: !211)
!405 = !DILocation(line: 196, column: 25, scope: !406)
!406 = distinct !DILexicalBlock(scope: !211, file: !3, line: 196, column: 21)
!407 = !DILocation(line: 196, column: 21, scope: !211)
!408 = !DILocation(line: 201, column: 30, scope: !211)
!409 = !DILocation(line: 182, column: 21, scope: !205)
!410 = !DILocation(line: 183, column: 21, scope: !205)
!411 = !DILocation(line: 184, column: 25, scope: !205)
!412 = !DILocation(line: 203, column: 30, scope: !205)
!413 = !DILocation(line: 203, column: 27, scope: !205)
!414 = !DILocation(line: 206, column: 17, scope: !215)
!415 = !DILocation(line: 206, column: 17, scope: !205)
!416 = !DILocation(line: 207, column: 45, scope: !214)
!417 = !DILocation(line: 207, column: 44, scope: !214)
!418 = !DILocation(line: 207, column: 27, scope: !214)
!419 = !DILocation(line: 212, column: 25, scope: !420)
!420 = distinct !DILexicalBlock(scope: !214, file: !3, line: 212, column: 21)
!421 = !DILocation(line: 212, column: 33, scope: !420)
!422 = !DILocation(line: 212, column: 21, scope: !214)
!423 = !DILocation(line: 212, column: 51, scope: !420)
!424 = !DILocation(line: 212, column: 39, scope: !420)
!425 = !DILocation(line: 213, column: 36, scope: !214)
!426 = !DILocation(line: 213, column: 43, scope: !214)
!427 = !DILocation(line: 213, column: 47, scope: !214)
!428 = !DILocation(line: 213, column: 61, scope: !214)
!429 = !DILocation(line: 213, column: 51, scope: !214)
!430 = !DILocation(line: 213, column: 29, scope: !214)
!431 = !DILocation(line: 214, column: 13, scope: !214)
!432 = !DILocation(line: 219, column: 28, scope: !433)
!433 = distinct !DILexicalBlock(scope: !205, file: !3, line: 219, column: 17)
!434 = !DILocation(line: 219, column: 35, scope: !433)
!435 = !DILocation(line: 219, column: 17, scope: !205)
!436 = !DILocation(line: 220, column: 27, scope: !437)
!437 = distinct !DILexicalBlock(scope: !433, file: !3, line: 219, column: 41)
!438 = !DILocation(line: 220, column: 35, scope: !437)
!439 = !DILocation(line: 106, column: 44, scope: !2)
!440 = !DILocation(line: 221, column: 29, scope: !441)
!441 = distinct !DILexicalBlock(scope: !437, file: !3, line: 221, column: 21)
!442 = !DILocation(line: 221, column: 21, scope: !437)
!443 = !DILocation(line: 223, column: 63, scope: !444)
!444 = distinct !DILexicalBlock(scope: !441, file: !3, line: 221, column: 42)
!445 = !{!291, !292, i64 1040}
!446 = !DILocation(line: 224, column: 21, scope: !444)
!447 = !DILocation(line: 229, column: 26, scope: !200)
!448 = distinct !{!448, !363, !449}
!449 = !DILocation(line: 229, column: 66, scope: !200)
!450 = !DILocation(line: 149, column: 59, scope: !201)
!451 = !DILocation(line: 149, column: 52, scope: !201)
!452 = !DILocation(line: 149, column: 34, scope: !201)
!453 = distinct !{!453, !354, !454}
!454 = !DILocation(line: 230, column: 5, scope: !202)
!455 = !DILocation(line: 232, column: 15, scope: !2)
!456 = !DILocation(line: 233, column: 5, scope: !457)
!457 = distinct !DILexicalBlock(scope: !2, file: !3, line: 233, column: 5)
!458 = !{!291, !292, i64 3096}
!459 = !DILocation(line: 232, column: 23, scope: !2)
!460 = !DILocation(line: 233, column: 5, scope: !2)
!461 = !DILocation(line: 238, column: 9, scope: !462)
!462 = distinct !DILexicalBlock(scope: !2, file: !3, line: 238, column: 9)
!463 = !DILocation(line: 238, column: 9, scope: !2)
!464 = !DILocation(line: 239, column: 24, scope: !465)
!465 = distinct !DILexicalBlock(scope: !462, file: !3, line: 238, column: 24)
!466 = !DILocation(line: 239, column: 46, scope: !465)
!467 = !DILocation(line: 239, column: 45, scope: !465)
!468 = !DILocation(line: 237, column: 12, scope: !2)
!469 = !DILocation(line: 240, column: 5, scope: !465)
!470 = !DILocation(line: 243, column: 46, scope: !2)
!471 = !{!291, !293, i64 1032}
!472 = !DILocation(line: 243, column: 69, scope: !2)
!473 = !DILocation(line: 242, column: 57, scope: !2)
!474 = !DILocation(line: 242, column: 36, scope: !2)
!475 = !DILocation(line: 244, column: 1, scope: !2)
!476 = distinct !DISubprogram(name: "expireSlaveKeys", scope: !3, file: !3, line: 285, type: !477, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !479)
!477 = !DISubroutineType(types: !478)
!478 = !{null}
!479 = !{!480, !481, !482, !484, !486, !487, !488, !489, !490, !494, !495}
!480 = !DILocalVariable(name: "cycles", scope: !476, file: !3, line: 289, type: !6)
!481 = !DILocalVariable(name: "noexpire", scope: !476, file: !3, line: 289, type: !6)
!482 = !DILocalVariable(name: "start", scope: !476, file: !3, line: 290, type: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !136, line: 52, baseType: !64)
!484 = !DILocalVariable(name: "de", scope: !485, file: !3, line: 292, type: !105)
!485 = distinct !DILexicalBlock(scope: !476, file: !3, line: 291, column: 14)
!486 = !DILocalVariable(name: "keyname", scope: !485, file: !3, line: 293, type: !233)
!487 = !DILocalVariable(name: "dbids", scope: !485, file: !3, line: 294, type: !12)
!488 = !DILocalVariable(name: "new_dbids", scope: !485, file: !3, line: 295, type: !12)
!489 = !DILocalVariable(name: "dbid", scope: !485, file: !3, line: 299, type: !6)
!490 = !DILocalVariable(name: "db", scope: !491, file: !3, line: 302, type: !134)
!491 = distinct !DILexicalBlock(scope: !492, file: !3, line: 301, column: 35)
!492 = distinct !DILexicalBlock(scope: !493, file: !3, line: 301, column: 17)
!493 = distinct !DILexicalBlock(scope: !485, file: !3, line: 300, column: 45)
!494 = !DILocalVariable(name: "expire", scope: !491, file: !3, line: 303, type: !105)
!495 = !DILocalVariable(name: "expired", scope: !491, file: !3, line: 304, type: !6)
!496 = !DILocation(line: 286, column: 9, scope: !497)
!497 = distinct !DILexicalBlock(scope: !476, file: !3, line: 286, column: 9)
!498 = !{!249, !249, i64 0}
!499 = !DILocation(line: 286, column: 29, scope: !497)
!500 = !DILocation(line: 286, column: 37, scope: !497)
!501 = !DILocation(line: 287, column: 9, scope: !497)
!502 = !DILocation(line: 287, column: 39, scope: !497)
!503 = !DILocation(line: 286, column: 9, scope: !476)
!504 = !DILocation(line: 289, column: 9, scope: !476)
!505 = !DILocation(line: 289, column: 21, scope: !476)
!506 = !DILocation(line: 290, column: 22, scope: !476)
!507 = !DILocation(line: 290, column: 14, scope: !476)
!508 = !DILocation(line: 292, column: 42, scope: !485)
!509 = !DILocation(line: 291, column: 5, scope: !476)
!510 = !DILocation(line: 0, scope: !485)
!511 = !DILocation(line: 292, column: 25, scope: !485)
!512 = !DILocation(line: 292, column: 20, scope: !485)
!513 = !DILocation(line: 293, column: 23, scope: !485)
!514 = !DILocation(line: 293, column: 13, scope: !485)
!515 = !DILocation(line: 294, column: 26, scope: !485)
!516 = !DILocation(line: 294, column: 18, scope: !485)
!517 = !DILocation(line: 295, column: 18, scope: !485)
!518 = !DILocation(line: 299, column: 13, scope: !485)
!519 = !DILocation(line: 300, column: 15, scope: !485)
!520 = !DILocation(line: 300, column: 38, scope: !485)
!521 = !DILocation(line: 300, column: 29, scope: !485)
!522 = !DILocation(line: 300, column: 21, scope: !485)
!523 = !DILocation(line: 301, column: 24, scope: !492)
!524 = !DILocation(line: 301, column: 29, scope: !492)
!525 = !DILocation(line: 301, column: 17, scope: !493)
!526 = !DILocation(line: 302, column: 38, scope: !491)
!527 = !DILocation(line: 303, column: 50, scope: !491)
!528 = !DILocation(line: 303, column: 37, scope: !491)
!529 = !DILocation(line: 303, column: 28, scope: !491)
!530 = !DILocation(line: 304, column: 21, scope: !491)
!531 = !DILocation(line: 306, column: 21, scope: !532)
!532 = distinct !DILexicalBlock(scope: !491, file: !3, line: 306, column: 21)
!533 = !DILocation(line: 306, column: 28, scope: !532)
!534 = !DILocation(line: 307, column: 55, scope: !532)
!535 = !DILocation(line: 307, column: 57, scope: !532)
!536 = !DILocation(line: 307, column: 21, scope: !532)
!537 = !DILocation(line: 316, column: 28, scope: !538)
!538 = distinct !DILexicalBlock(scope: !491, file: !3, line: 316, column: 21)
!539 = !DILocation(line: 317, column: 29, scope: !540)
!540 = distinct !DILexicalBlock(scope: !538, file: !3, line: 316, column: 41)
!541 = !DILocation(line: 318, column: 46, scope: !540)
!542 = !DILocation(line: 318, column: 31, scope: !540)
!543 = !DILocation(line: 319, column: 17, scope: !540)
!544 = !DILocation(line: 321, column: 17, scope: !493)
!545 = !DILocation(line: 322, column: 19, scope: !493)
!546 = distinct !{!546, !547, !548}
!547 = !DILocation(line: 300, column: 9, scope: !485)
!548 = !DILocation(line: 323, column: 9, scope: !485)
!549 = !DILocation(line: 328, column: 13, scope: !550)
!550 = distinct !DILexicalBlock(scope: !485, file: !3, line: 328, column: 13)
!551 = !DILocation(line: 328, column: 13, scope: !485)
!552 = !DILocation(line: 329, column: 13, scope: !553)
!553 = distinct !DILexicalBlock(scope: !550, file: !3, line: 329, column: 13)
!554 = !DILocation(line: 331, column: 24, scope: !550)
!555 = !DILocation(line: 331, column: 13, scope: !550)
!556 = !DILocation(line: 335, column: 15, scope: !485)
!557 = !DILocation(line: 336, column: 22, scope: !558)
!558 = distinct !DILexicalBlock(scope: !485, file: !3, line: 336, column: 13)
!559 = !DILocation(line: 336, column: 13, scope: !485)
!560 = !DILocation(line: 337, column: 21, scope: !561)
!561 = distinct !DILexicalBlock(scope: !485, file: !3, line: 337, column: 13)
!562 = !DILocation(line: 337, column: 27, scope: !561)
!563 = !DILocation(line: 337, column: 32, scope: !561)
!564 = !DILocation(line: 337, column: 35, scope: !561)
!565 = !DILocation(line: 337, column: 43, scope: !561)
!566 = !DILocation(line: 337, column: 50, scope: !561)
!567 = !DILocation(line: 337, column: 13, scope: !485)
!568 = !DILocation(line: 338, column: 13, scope: !569)
!569 = distinct !DILexicalBlock(scope: !485, file: !3, line: 338, column: 13)
!570 = !DILocation(line: 338, column: 43, scope: !569)
!571 = distinct !{!571, !509, !572}
!572 = !DILocation(line: 339, column: 5, scope: !476)
!573 = !DILocation(line: 340, column: 1, scope: !476)
!574 = !DILocation(line: 344, column: 42, scope: !131)
!575 = !DILocation(line: 344, column: 52, scope: !131)
!576 = !DILocation(line: 345, column: 9, scope: !577)
!577 = distinct !DILexicalBlock(scope: !131, file: !3, line: 345, column: 9)
!578 = !DILocation(line: 345, column: 29, scope: !577)
!579 = !DILocation(line: 345, column: 9, scope: !131)
!580 = !DILocation(line: 354, column: 31, scope: !581)
!581 = distinct !DILexicalBlock(scope: !577, file: !3, line: 345, column: 38)
!582 = !DILocation(line: 354, column: 29, scope: !581)
!583 = !DILocation(line: 355, column: 5, scope: !581)
!584 = !DILocation(line: 356, column: 13, scope: !585)
!585 = distinct !DILexicalBlock(scope: !131, file: !3, line: 356, column: 9)
!586 = !DILocation(line: 356, column: 16, scope: !585)
!587 = !DILocation(line: 356, column: 9, scope: !131)
!588 = !DILocation(line: 358, column: 60, scope: !131)
!589 = !{!590, !249, i64 8}
!590 = !{!"redisObject", !279, i64 0, !279, i64 0, !279, i64 1, !279, i64 4, !249, i64 8}
!591 = !DILocation(line: 358, column: 21, scope: !131)
!592 = !DILocation(line: 358, column: 16, scope: !131)
!593 = !DILocation(line: 363, column: 13, scope: !594)
!594 = distinct !DILexicalBlock(scope: !131, file: !3, line: 363, column: 9)
!595 = !DILocation(line: 363, column: 25, scope: !594)
!596 = !DILocation(line: 363, column: 17, scope: !594)
!597 = !DILocation(line: 363, column: 9, scope: !131)
!598 = !DILocation(line: 368, column: 22, scope: !131)
!599 = !DILocation(line: 364, column: 19, scope: !600)
!600 = distinct !DILexicalBlock(scope: !594, file: !3, line: 363, column: 30)
!601 = !DILocation(line: 364, column: 17, scope: !600)
!602 = !DILocation(line: 365, column: 9, scope: !603)
!603 = distinct !DILexicalBlock(scope: !600, file: !3, line: 365, column: 9)
!604 = !DILocation(line: 366, column: 5, scope: !600)
!605 = !DILocation(line: 368, column: 14, scope: !131)
!606 = !DILocation(line: 369, column: 33, scope: !131)
!607 = !DILocation(line: 369, column: 26, scope: !131)
!608 = !DILocation(line: 369, column: 11, scope: !131)
!609 = !DILocation(line: 370, column: 5, scope: !610)
!610 = distinct !DILexicalBlock(scope: !131, file: !3, line: 370, column: 5)
!611 = !DILocation(line: 371, column: 1, scope: !131)
!612 = distinct !DISubprogram(name: "getSlaveKeyWithExpireCount", scope: !3, file: !3, line: 374, type: !613, isLocal: false, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !8)
!613 = !DISubroutineType(types: !614)
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !616, line: 40, baseType: !617)
!616 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !618, line: 129, baseType: !16)
!618 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!619 = !DILocation(line: 375, column: 9, scope: !620)
!620 = distinct !DILexicalBlock(scope: !612, file: !3, line: 375, column: 9)
!621 = !DILocation(line: 375, column: 29, scope: !620)
!622 = !DILocation(line: 375, column: 9, scope: !612)
!623 = !DILocation(line: 376, column: 12, scope: !612)
!624 = !DILocation(line: 376, column: 5, scope: !612)
!625 = !DILocation(line: 0, scope: !612)
!626 = !DILocation(line: 377, column: 1, scope: !612)
!627 = distinct !DISubprogram(name: "flushSlaveKeysWithExpireList", scope: !3, file: !3, line: 387, type: !477, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !8)
!628 = !DILocation(line: 388, column: 9, scope: !629)
!629 = distinct !DILexicalBlock(scope: !627, file: !3, line: 388, column: 9)
!630 = !DILocation(line: 388, column: 9, scope: !627)
!631 = !DILocation(line: 389, column: 9, scope: !632)
!632 = distinct !DILexicalBlock(scope: !629, file: !3, line: 388, column: 30)
!633 = !DILocation(line: 390, column: 29, scope: !632)
!634 = !DILocation(line: 391, column: 5, scope: !632)
!635 = !DILocation(line: 392, column: 1, scope: !627)
!636 = distinct !DISubprogram(name: "expireGenericCommand", scope: !3, file: !3, line: 405, type: !637, isLocal: false, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !762)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !639, !64, !6}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !136, line: 780, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !136, line: 723, size: 135360, elements: !642)
!642 = !{!643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !654, !678, !679, !680, !681, !682, !683, !685, !686, !689, !690, !691, !692, !693, !694, !695, !696, !701, !702, !703, !704, !705, !706, !707, !708, !712, !713, !717, !718, !734, !735, !751, !752, !753, !754, !755, !756, !757, !758}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !641, file: !136, line: 724, baseType: !12, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !641, file: !136, line: 725, baseType: !6, size: 32, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !641, file: !136, line: 726, baseType: !134, size: 64, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !641, file: !136, line: 727, baseType: !175, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !641, file: !136, line: 728, baseType: !233, size: 64, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !641, file: !136, line: 729, baseType: !615, size: 64, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !641, file: !136, line: 730, baseType: !233, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !641, file: !136, line: 734, baseType: !615, size: 64, offset: 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !641, file: !136, line: 735, baseType: !6, size: 32, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !641, file: !136, line: 736, baseType: !653, size: 64, offset: 576)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !641, file: !136, line: 737, baseType: !655, size: 64, offset: 640)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !136, line: 1307, size: 640, elements: !657)
!657 = !{!658, !659, !664, !665, !666, !667, !673, !674, !675, !676, !677}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !656, file: !136, line: 1308, baseType: !234, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !656, file: !136, line: 1309, baseType: !660, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !136, line: 1305, baseType: !662)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !639}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !656, file: !136, line: 1310, baseType: !6, size: 32, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !656, file: !136, line: 1311, baseType: !234, size: 64, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !656, file: !136, line: 1312, baseType: !6, size: 32, offset: 256)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !656, file: !136, line: 1315, baseType: !668, size: 64, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !136, line: 1306, baseType: !670)
!670 = !DISubroutineType(types: !671)
!671 = !{!672, !655, !653, !6, !672}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !656, file: !136, line: 1317, baseType: !6, size: 32, offset: 384)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !656, file: !136, line: 1318, baseType: !6, size: 32, offset: 416)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !656, file: !136, line: 1319, baseType: !6, size: 32, offset: 448)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !656, file: !136, line: 1320, baseType: !64, size: 64, offset: 512)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !656, file: !136, line: 1320, baseType: !64, size: 64, offset: 576)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !641, file: !136, line: 737, baseType: !655, size: 64, offset: 704)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !641, file: !136, line: 738, baseType: !6, size: 32, offset: 768)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !641, file: !136, line: 739, baseType: !6, size: 32, offset: 800)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !641, file: !136, line: 740, baseType: !118, size: 64, offset: 832)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !641, file: !136, line: 741, baseType: !147, size: 64, offset: 896)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !641, file: !136, line: 742, baseType: !684, size: 64, offset: 960)
!684 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !641, file: !136, line: 743, baseType: !615, size: 64, offset: 1024)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !641, file: !136, line: 745, baseType: !687, size: 64, offset: 1088)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !688, line: 34, baseType: !118)
!688 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!689 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !641, file: !136, line: 746, baseType: !687, size: 64, offset: 1152)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !641, file: !136, line: 747, baseType: !687, size: 64, offset: 1216)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !641, file: !136, line: 748, baseType: !6, size: 32, offset: 1280)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !641, file: !136, line: 749, baseType: !6, size: 32, offset: 1312)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !641, file: !136, line: 750, baseType: !6, size: 32, offset: 1344)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !641, file: !136, line: 751, baseType: !6, size: 32, offset: 1376)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !641, file: !136, line: 752, baseType: !6, size: 32, offset: 1408)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !641, file: !136, line: 753, baseType: !697, size: 64, offset: 1472)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !698, line: 173, baseType: !699)
!698 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !618, line: 100, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !618, line: 44, baseType: !118)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !641, file: !136, line: 754, baseType: !697, size: 64, offset: 1536)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !641, file: !136, line: 755, baseType: !233, size: 64, offset: 1600)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !641, file: !136, line: 756, baseType: !64, size: 64, offset: 1664)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !641, file: !136, line: 757, baseType: !64, size: 64, offset: 1728)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !641, file: !136, line: 758, baseType: !64, size: 64, offset: 1792)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !641, file: !136, line: 759, baseType: !64, size: 64, offset: 1856)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !641, file: !136, line: 760, baseType: !64, size: 64, offset: 1920)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !641, file: !136, line: 763, baseType: !709, size: 328, offset: 1984)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 328, elements: !710)
!710 = !{!711}
!711 = !DISubrange(count: 41)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !641, file: !136, line: 764, baseType: !6, size: 32, offset: 2336)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !641, file: !136, line: 765, baseType: !714, size: 368, offset: 2368)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 368, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 46)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !641, file: !136, line: 766, baseType: !6, size: 32, offset: 2752)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !641, file: !136, line: 767, baseType: !719, size: 256, offset: 2816)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !136, line: 673, baseType: !720)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !136, line: 665, size: 256, elements: !721)
!721 = !{!722, !730, !731, !732, !733}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !720, file: !136, line: 666, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !136, line: 663, baseType: !725)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !136, line: 659, size: 192, elements: !726)
!726 = !{!727, !728, !729}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !725, file: !136, line: 660, baseType: !653, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !725, file: !136, line: 661, baseType: !6, size: 32, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !725, file: !136, line: 662, baseType: !655, size: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !720, file: !136, line: 667, baseType: !6, size: 32, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !720, file: !136, line: 668, baseType: !6, size: 32, offset: 96)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !720, file: !136, line: 671, baseType: !6, size: 32, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !720, file: !136, line: 672, baseType: !687, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !641, file: !136, line: 768, baseType: !6, size: 32, offset: 3072)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !641, file: !136, line: 769, baseType: !736, size: 704, offset: 3136)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !136, line: 703, baseType: !737)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !136, line: 677, size: 704, elements: !738)
!738 = !{!739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !737, file: !136, line: 679, baseType: !483, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !737, file: !136, line: 683, baseType: !67, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !737, file: !136, line: 685, baseType: !175, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !737, file: !136, line: 689, baseType: !615, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !737, file: !136, line: 690, baseType: !175, size: 64, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !737, file: !136, line: 691, baseType: !175, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !737, file: !136, line: 692, baseType: !483, size: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !737, file: !136, line: 692, baseType: !483, size: 64, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !737, file: !136, line: 693, baseType: !6, size: 32, offset: 512)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !737, file: !136, line: 696, baseType: !6, size: 32, offset: 544)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !737, file: !136, line: 697, baseType: !64, size: 64, offset: 576)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !737, file: !136, line: 700, baseType: !10, size: 64, offset: 640)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !641, file: !136, line: 770, baseType: !64, size: 64, offset: 3840)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !641, file: !136, line: 771, baseType: !147, size: 64, offset: 3904)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !641, file: !136, line: 772, baseType: !67, size: 64, offset: 3968)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !641, file: !136, line: 773, baseType: !147, size: 64, offset: 4032)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !641, file: !136, line: 774, baseType: !233, size: 64, offset: 4096)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !641, file: !136, line: 775, baseType: !153, size: 64, offset: 4160)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !641, file: !136, line: 778, baseType: !6, size: 32, offset: 4224)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !641, file: !136, line: 779, baseType: !759, size: 131072, offset: 4256)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 131072, elements: !760)
!760 = !{!761}
!761 = !DISubrange(count: 16384)
!762 = !{!763, !764, !765, !766, !767, !768, !769, !772}
!763 = !DILocalVariable(name: "c", arg: 1, scope: !636, file: !3, line: 405, type: !639)
!764 = !DILocalVariable(name: "basetime", arg: 2, scope: !636, file: !3, line: 405, type: !64)
!765 = !DILocalVariable(name: "unit", arg: 3, scope: !636, file: !3, line: 405, type: !6)
!766 = !DILocalVariable(name: "key", scope: !636, file: !3, line: 406, type: !175)
!767 = !DILocalVariable(name: "param", scope: !636, file: !3, line: 406, type: !175)
!768 = !DILocalVariable(name: "when", scope: !636, file: !3, line: 407, type: !64)
!769 = !DILocalVariable(name: "aux", scope: !770, file: !3, line: 428, type: !175)
!770 = distinct !DILexicalBlock(scope: !771, file: !3, line: 427, column: 68)
!771 = distinct !DILexicalBlock(scope: !636, file: !3, line: 427, column: 9)
!772 = !DILocalVariable(name: "deleted", scope: !770, file: !3, line: 430, type: !6)
!773 = !DILocation(line: 405, column: 35, scope: !636)
!774 = !DILocation(line: 405, column: 48, scope: !636)
!775 = !DILocation(line: 405, column: 62, scope: !636)
!776 = !DILocation(line: 406, column: 20, scope: !636)
!777 = !{!778, !249, i64 72}
!778 = !{!"client", !284, i64 0, !279, i64 8, !249, i64 16, !249, i64 24, !249, i64 32, !284, i64 40, !249, i64 48, !284, i64 56, !279, i64 64, !249, i64 72, !249, i64 80, !249, i64 88, !279, i64 96, !279, i64 100, !284, i64 104, !249, i64 112, !292, i64 120, !284, i64 128, !284, i64 136, !284, i64 144, !284, i64 152, !279, i64 160, !279, i64 164, !279, i64 168, !279, i64 172, !279, i64 176, !284, i64 184, !284, i64 192, !249, i64 200, !292, i64 208, !292, i64 216, !292, i64 224, !292, i64 232, !292, i64 240, !241, i64 248, !279, i64 292, !241, i64 296, !279, i64 344, !779, i64 352, !279, i64 384, !780, i64 392, !292, i64 480, !249, i64 488, !249, i64 496, !249, i64 504, !249, i64 512, !249, i64 520, !279, i64 528, !241, i64 532}
!779 = !{!"multiState", !249, i64 0, !279, i64 8, !279, i64 12, !279, i64 16, !284, i64 24}
!780 = !{!"blockingState", !292, i64 0, !249, i64 8, !249, i64 16, !284, i64 24, !249, i64 32, !249, i64 40, !292, i64 48, !292, i64 56, !279, i64 64, !279, i64 68, !292, i64 72, !249, i64 80}
!781 = !DILocation(line: 406, column: 17, scope: !636)
!782 = !DILocation(line: 406, column: 11, scope: !636)
!783 = !DILocation(line: 406, column: 38, scope: !636)
!784 = !DILocation(line: 406, column: 30, scope: !636)
!785 = !DILocation(line: 407, column: 5, scope: !636)
!786 = !DILocation(line: 407, column: 15, scope: !636)
!787 = !DILocation(line: 409, column: 9, scope: !788)
!788 = distinct !DILexicalBlock(scope: !636, file: !3, line: 409, column: 9)
!789 = !DILocation(line: 409, column: 61, scope: !788)
!790 = !DILocation(line: 409, column: 9, scope: !636)
!791 = !DILocation(line: 412, column: 14, scope: !792)
!792 = distinct !DILexicalBlock(scope: !636, file: !3, line: 412, column: 9)
!793 = !DILocation(line: 0, scope: !636)
!794 = !DILocation(line: 412, column: 9, scope: !636)
!795 = !DILocation(line: 412, column: 36, scope: !792)
!796 = !DILocation(line: 412, column: 31, scope: !792)
!797 = !DILocation(line: 413, column: 10, scope: !636)
!798 = !DILocation(line: 416, column: 27, scope: !799)
!799 = distinct !DILexicalBlock(scope: !636, file: !3, line: 416, column: 9)
!800 = !{!778, !249, i64 16}
!801 = !DILocation(line: 416, column: 9, scope: !799)
!802 = !DILocation(line: 416, column: 35, scope: !799)
!803 = !DILocation(line: 416, column: 9, scope: !636)
!804 = !DILocation(line: 417, column: 27, scope: !805)
!805 = distinct !DILexicalBlock(scope: !799, file: !3, line: 416, column: 44)
!806 = !{!807, !249, i64 32}
!807 = !{!"sharedObjectsStruct", !249, i64 0, !249, i64 8, !249, i64 16, !249, i64 24, !249, i64 32, !249, i64 40, !249, i64 48, !249, i64 56, !249, i64 64, !249, i64 72, !249, i64 80, !249, i64 88, !249, i64 96, !249, i64 104, !249, i64 112, !249, i64 120, !249, i64 128, !249, i64 136, !249, i64 144, !249, i64 152, !249, i64 160, !249, i64 168, !249, i64 176, !249, i64 184, !249, i64 192, !249, i64 200, !249, i64 208, !249, i64 216, !249, i64 224, !249, i64 232, !249, i64 240, !249, i64 248, !249, i64 256, !249, i64 264, !249, i64 272, !249, i64 280, !249, i64 288, !249, i64 296, !249, i64 304, !249, i64 312, !249, i64 320, !249, i64 328, !249, i64 336, !249, i64 344, !249, i64 352, !249, i64 360, !241, i64 368, !241, i64 448, !241, i64 80448, !241, i64 80704, !249, i64 80960, !249, i64 80968}
!808 = !DILocation(line: 417, column: 9, scope: !805)
!809 = !DILocation(line: 418, column: 9, scope: !805)
!810 = !DILocation(line: 427, column: 9, scope: !771)
!811 = !DILocation(line: 427, column: 17, scope: !771)
!812 = !DILocation(line: 427, column: 14, scope: !771)
!813 = !DILocation(line: 427, column: 37, scope: !771)
!814 = !DILocation(line: 427, column: 30, scope: !771)
!815 = !DILocation(line: 427, column: 26, scope: !771)
!816 = !DILocation(line: 427, column: 56, scope: !771)
!817 = !DILocation(line: 427, column: 49, scope: !771)
!818 = !DILocation(line: 430, column: 30, scope: !770)
!819 = !DILocation(line: 430, column: 23, scope: !770)
!820 = !DILocation(line: 0, scope: !770)
!821 = !DILocation(line: 430, column: 53, scope: !770)
!822 = !DILocation(line: 431, column: 53, scope: !770)
!823 = !DILocation(line: 430, column: 13, scope: !770)
!824 = !DILocation(line: 432, column: 9, scope: !770)
!825 = !DILocation(line: 433, column: 21, scope: !770)
!826 = !{!291, !292, i64 2080}
!827 = !DILocation(line: 436, column: 22, scope: !770)
!828 = !DILocation(line: 436, column: 15, scope: !770)
!829 = !DILocation(line: 436, column: 52, scope: !770)
!830 = !DILocation(line: 436, column: 68, scope: !770)
!831 = !DILocation(line: 428, column: 15, scope: !770)
!832 = !DILocation(line: 437, column: 9, scope: !770)
!833 = !DILocation(line: 438, column: 30, scope: !770)
!834 = !DILocation(line: 438, column: 9, scope: !770)
!835 = !DILocation(line: 439, column: 57, scope: !770)
!836 = !DILocation(line: 439, column: 61, scope: !770)
!837 = !DILocation(line: 439, column: 9, scope: !770)
!838 = !DILocation(line: 440, column: 28, scope: !770)
!839 = !{!807, !249, i64 40}
!840 = !DILocation(line: 440, column: 9, scope: !770)
!841 = !DILocation(line: 443, column: 24, scope: !842)
!842 = distinct !DILexicalBlock(scope: !771, file: !3, line: 442, column: 12)
!843 = !DILocation(line: 443, column: 31, scope: !842)
!844 = !DILocation(line: 443, column: 9, scope: !842)
!845 = !DILocation(line: 444, column: 27, scope: !842)
!846 = !DILocation(line: 444, column: 9, scope: !842)
!847 = !DILocation(line: 445, column: 30, scope: !842)
!848 = !DILocation(line: 445, column: 9, scope: !842)
!849 = !DILocation(line: 446, column: 60, scope: !842)
!850 = !DILocation(line: 446, column: 64, scope: !842)
!851 = !DILocation(line: 446, column: 9, scope: !842)
!852 = !DILocation(line: 447, column: 21, scope: !842)
!853 = !DILocation(line: 448, column: 9, scope: !842)
!854 = !DILocation(line: 450, column: 1, scope: !636)
!855 = distinct !DISubprogram(name: "expireCommand", scope: !3, file: !3, line: 453, type: !662, isLocal: false, isDefinition: true, scopeLine: 453, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !856)
!856 = !{!857}
!857 = !DILocalVariable(name: "c", arg: 1, scope: !855, file: !3, line: 453, type: !639)
!858 = !DILocation(line: 453, column: 28, scope: !855)
!859 = !DILocation(line: 454, column: 28, scope: !855)
!860 = !DILocation(line: 454, column: 5, scope: !855)
!861 = !DILocation(line: 455, column: 1, scope: !855)
!862 = distinct !DISubprogram(name: "expireatCommand", scope: !3, file: !3, line: 458, type: !662, isLocal: false, isDefinition: true, scopeLine: 458, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !863)
!863 = !{!864}
!864 = !DILocalVariable(name: "c", arg: 1, scope: !862, file: !3, line: 458, type: !639)
!865 = !DILocation(line: 458, column: 30, scope: !862)
!866 = !DILocation(line: 459, column: 5, scope: !862)
!867 = !DILocation(line: 460, column: 1, scope: !862)
!868 = distinct !DISubprogram(name: "pexpireCommand", scope: !3, file: !3, line: 463, type: !662, isLocal: false, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !869)
!869 = !{!870}
!870 = !DILocalVariable(name: "c", arg: 1, scope: !868, file: !3, line: 463, type: !639)
!871 = !DILocation(line: 463, column: 29, scope: !868)
!872 = !DILocation(line: 464, column: 28, scope: !868)
!873 = !DILocation(line: 464, column: 5, scope: !868)
!874 = !DILocation(line: 465, column: 1, scope: !868)
!875 = distinct !DISubprogram(name: "pexpireatCommand", scope: !3, file: !3, line: 468, type: !662, isLocal: false, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !876)
!876 = !{!877}
!877 = !DILocalVariable(name: "c", arg: 1, scope: !875, file: !3, line: 468, type: !639)
!878 = !DILocation(line: 468, column: 31, scope: !875)
!879 = !DILocation(line: 469, column: 5, scope: !875)
!880 = !DILocation(line: 470, column: 1, scope: !875)
!881 = distinct !DISubprogram(name: "ttlGenericCommand", scope: !3, file: !3, line: 473, type: !882, isLocal: false, isDefinition: true, scopeLine: 473, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !884)
!882 = !DISubroutineType(types: !883)
!883 = !{null, !639, !6}
!884 = !{!885, !886, !887, !888}
!885 = !DILocalVariable(name: "c", arg: 1, scope: !881, file: !3, line: 473, type: !639)
!886 = !DILocalVariable(name: "output_ms", arg: 2, scope: !881, file: !3, line: 473, type: !6)
!887 = !DILocalVariable(name: "expire", scope: !881, file: !3, line: 474, type: !64)
!888 = !DILocalVariable(name: "ttl", scope: !881, file: !3, line: 474, type: !64)
!889 = !DILocation(line: 473, column: 32, scope: !881)
!890 = !DILocation(line: 473, column: 39, scope: !881)
!891 = !DILocation(line: 474, column: 23, scope: !881)
!892 = !DILocation(line: 477, column: 35, scope: !893)
!893 = distinct !DILexicalBlock(scope: !881, file: !3, line: 477, column: 9)
!894 = !DILocation(line: 477, column: 41, scope: !893)
!895 = !DILocation(line: 477, column: 38, scope: !893)
!896 = !DILocation(line: 477, column: 9, scope: !893)
!897 = !DILocation(line: 477, column: 65, scope: !893)
!898 = !DILocation(line: 477, column: 9, scope: !881)
!899 = !DILocation(line: 478, column: 9, scope: !900)
!900 = distinct !DILexicalBlock(scope: !893, file: !3, line: 477, column: 74)
!901 = !DILocation(line: 479, column: 9, scope: !900)
!902 = !DILocation(line: 483, column: 27, scope: !881)
!903 = !DILocation(line: 483, column: 33, scope: !881)
!904 = !DILocation(line: 483, column: 30, scope: !881)
!905 = !DILocation(line: 483, column: 14, scope: !881)
!906 = !DILocation(line: 474, column: 15, scope: !881)
!907 = !DILocation(line: 484, column: 16, scope: !908)
!908 = distinct !DILexicalBlock(scope: !881, file: !3, line: 484, column: 9)
!909 = !DILocation(line: 484, column: 9, scope: !881)
!910 = !DILocation(line: 485, column: 22, scope: !911)
!911 = distinct !DILexicalBlock(scope: !908, file: !3, line: 484, column: 23)
!912 = !DILocation(line: 485, column: 21, scope: !911)
!913 = !DILocation(line: 486, column: 13, scope: !911)
!914 = !DILocation(line: 491, column: 28, scope: !915)
!915 = distinct !DILexicalBlock(scope: !916, file: !3, line: 490, column: 12)
!916 = distinct !DILexicalBlock(scope: !881, file: !3, line: 488, column: 9)
!917 = !DILocation(line: 489, column: 9, scope: !918)
!918 = distinct !DILexicalBlock(scope: !916, file: !3, line: 488, column: 20)
!919 = !DILocation(line: 490, column: 5, scope: !918)
!920 = !DILocation(line: 491, column: 51, scope: !915)
!921 = !DILocation(line: 491, column: 56, scope: !915)
!922 = !DILocation(line: 491, column: 9, scope: !915)
!923 = !DILocation(line: 493, column: 1, scope: !881)
!924 = distinct !DISubprogram(name: "ttlCommand", scope: !3, file: !3, line: 496, type: !662, isLocal: false, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !925)
!925 = !{!926}
!926 = !DILocalVariable(name: "c", arg: 1, scope: !924, file: !3, line: 496, type: !639)
!927 = !DILocation(line: 496, column: 25, scope: !924)
!928 = !DILocation(line: 497, column: 5, scope: !924)
!929 = !DILocation(line: 498, column: 1, scope: !924)
!930 = distinct !DISubprogram(name: "pttlCommand", scope: !3, file: !3, line: 501, type: !662, isLocal: false, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !931)
!931 = !{!932}
!932 = !DILocalVariable(name: "c", arg: 1, scope: !930, file: !3, line: 501, type: !639)
!933 = !DILocation(line: 501, column: 26, scope: !930)
!934 = !DILocation(line: 502, column: 5, scope: !930)
!935 = !DILocation(line: 503, column: 1, scope: !930)
!936 = distinct !DISubprogram(name: "persistCommand", scope: !3, file: !3, line: 506, type: !662, isLocal: false, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !937)
!937 = !{!938}
!938 = !DILocalVariable(name: "c", arg: 1, scope: !936, file: !3, line: 506, type: !639)
!939 = !DILocation(line: 506, column: 29, scope: !936)
!940 = !DILocation(line: 507, column: 27, scope: !941)
!941 = distinct !DILexicalBlock(scope: !936, file: !3, line: 507, column: 9)
!942 = !DILocation(line: 507, column: 33, scope: !941)
!943 = !DILocation(line: 507, column: 30, scope: !941)
!944 = !DILocation(line: 507, column: 9, scope: !941)
!945 = !DILocation(line: 507, column: 9, scope: !936)
!946 = !DILocation(line: 508, column: 29, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 508, column: 13)
!948 = distinct !DILexicalBlock(scope: !941, file: !3, line: 507, column: 43)
!949 = !DILocation(line: 508, column: 35, scope: !947)
!950 = !DILocation(line: 508, column: 32, scope: !947)
!951 = !DILocation(line: 508, column: 13, scope: !947)
!952 = !DILocation(line: 508, column: 13, scope: !948)
!953 = !DILocation(line: 509, column: 31, scope: !954)
!954 = distinct !DILexicalBlock(scope: !947, file: !3, line: 508, column: 45)
!955 = !DILocation(line: 509, column: 13, scope: !954)
!956 = !DILocation(line: 510, column: 25, scope: !954)
!957 = !DILocation(line: 511, column: 9, scope: !954)
!958 = !DILocation(line: 512, column: 31, scope: !959)
!959 = distinct !DILexicalBlock(scope: !947, file: !3, line: 511, column: 16)
!960 = !DILocation(line: 512, column: 13, scope: !959)
!961 = !DILocation(line: 515, column: 27, scope: !962)
!962 = distinct !DILexicalBlock(scope: !941, file: !3, line: 514, column: 12)
!963 = !DILocation(line: 515, column: 9, scope: !962)
!964 = !DILocation(line: 517, column: 1, scope: !936)
!965 = distinct !DISubprogram(name: "touchCommand", scope: !3, file: !3, line: 520, type: !662, isLocal: false, isDefinition: true, scopeLine: 520, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !966)
!966 = !{!967, !968, !969}
!967 = !DILocalVariable(name: "c", arg: 1, scope: !965, file: !3, line: 520, type: !639)
!968 = !DILocalVariable(name: "touched", scope: !965, file: !3, line: 521, type: !6)
!969 = !DILocalVariable(name: "j", scope: !970, file: !3, line: 522, type: !6)
!970 = distinct !DILexicalBlock(scope: !965, file: !3, line: 522, column: 5)
!971 = !DILocation(line: 520, column: 27, scope: !965)
!972 = !DILocation(line: 521, column: 9, scope: !965)
!973 = !DILocation(line: 522, column: 14, scope: !970)
!974 = !DILocation(line: 522, column: 28, scope: !975)
!975 = distinct !DILexicalBlock(scope: !970, file: !3, line: 522, column: 5)
!976 = !{!778, !279, i64 64}
!977 = !DILocation(line: 522, column: 23, scope: !975)
!978 = !DILocation(line: 522, column: 5, scope: !970)
!979 = !DILocation(line: 524, column: 24, scope: !965)
!980 = !DILocation(line: 524, column: 5, scope: !965)
!981 = !DILocation(line: 525, column: 1, scope: !965)
!982 = !DILocation(line: 523, column: 30, scope: !983)
!983 = distinct !DILexicalBlock(scope: !975, file: !3, line: 523, column: 13)
!984 = !DILocation(line: 523, column: 36, scope: !983)
!985 = !DILocation(line: 523, column: 33, scope: !983)
!986 = !DILocation(line: 523, column: 13, scope: !983)
!987 = !DILocation(line: 523, column: 45, scope: !983)
!988 = !DILocation(line: 523, column: 13, scope: !975)
!989 = !DILocation(line: 522, column: 35, scope: !975)
!990 = distinct !{!990, !978, !991}
!991 = !DILocation(line: 523, column: 61, scope: !970)
