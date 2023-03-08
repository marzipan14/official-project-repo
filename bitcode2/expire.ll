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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  br i1 %7, label %8, label %50, !dbg !245

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 0, !dbg !246
  %10 = load i8*, i8** %9, align 8, !dbg !246, !tbaa !247
  %11 = getelementptr inbounds i8, i8* %10, i64 -1, !dbg !262
  %12 = load i8, i8* %11, align 1, !dbg !262, !tbaa !240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !288
  %37 = tail call %struct.redisObject* @createStringObject(i8* %10, i64 %36) #6, !dbg !289
  %38 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 286), align 4, !dbg !291, !tbaa !292
  tail call void @propagateExpire(%struct.redisDb* %0, %struct.redisObject* %37, i32 %38) #6, !dbg !299
  %39 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 286), align 4, !dbg !300, !tbaa !292
  %40 = icmp eq i32 %39, 0, !dbg !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  br i1 %40, label %43, label %41, !dbg !303

; <label>:41:                                     ; preds = %35
  %42 = tail call i32 @dbAsyncDelete(%struct.redisDb* %0, %struct.redisObject* %37) #6, !dbg !304
  br label %45, !dbg !304

; <label>:43:                                     ; preds = %35
  %44 = tail call i32 @dbSyncDelete(%struct.redisDb* %0, %struct.redisObject* %37) #6, !dbg !305
  br label %45

; <label>:45:                                     ; preds = %43, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %46 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 5, !dbg !306
  %47 = load i32, i32* %46, align 8, !dbg !306, !tbaa !307
  tail call void @notifyKeyspaceEvent(i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.redisObject* %37, i32 %47) #6, !dbg !309
  tail call void @decrRefCount(%struct.redisObject* %37) #6, !dbg !310
  %48 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 72), align 8, !dbg !311, !tbaa !312
  %49 = add nsw i64 %48, 1, !dbg !311
  store i64 %49, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 72), align 8, !dbg !311, !tbaa !312
  br label %50

; <label>:50:                                     ; preds = %3, %45
  %51 = phi i32 [ 1, %45 ], [ 0, %3 ], !dbg !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !315
  ret i32 %51, !dbg !315
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
  %2 = tail call i64 @ustime() #6, !dbg !319
  %3 = tail call i32 @clientsArePaused() #6, !dbg !321
  %4 = icmp eq i32 %3, 0, !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  br i1 %4, label %5, label %179, !dbg !323

; <label>:5:                                      ; preds = %1
  %6 = icmp eq i32 %0, 1, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  %7 = load i1, i1* @activeExpireCycle.timelimit_exit, align 4
  br i1 %6, label %8, label %15, !dbg !326

; <label>:8:                                      ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  br i1 %7, label %9, label %179, !dbg !327

; <label>:9:                                      ; preds = %8
  %10 = load i64, i64* @activeExpireCycle.last_fast_cycle, align 8, !dbg !329, !tbaa !331
  %11 = add nsw i64 %10, 2000, !dbg !332
  %12 = icmp slt i64 %2, %11, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  br i1 %12, label %179, label %13, !dbg !334

; <label>:13:                                     ; preds = %9
  store i64 %2, i64* @activeExpireCycle.last_fast_cycle, align 8, !dbg !335, !tbaa !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  %14 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !337, !tbaa !339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !340
  br label %19, !dbg !340

; <label>:15:                                     ; preds = %5
  %16 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !337, !tbaa !339
  %17 = icmp slt i32 %16, 16, !dbg !341
  %18 = or i1 %17, %7, !dbg !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !340
  br i1 %18, label %19, label %21, !dbg !340

; <label>:19:                                     ; preds = %13, %15
  %20 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  br label %21, !dbg !342

; <label>:21:                                     ; preds = %15, %19
  %22 = phi i32 [ %20, %19 ], [ %16, %15 ]
  %23 = phi i32 [ %20, %19 ], [ 16, %15 ], !dbg !343
  %24 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 6), align 8, !dbg !344, !tbaa !345
  %25 = sdiv i32 25000000, %24, !dbg !346
  %26 = sdiv i32 %25, 100, !dbg !347
  %27 = sext i32 %26 to i64, !dbg !348
  store i1 false, i1* @activeExpireCycle.timelimit_exit, align 4
  %28 = icmp slt i32 %25, 100, !dbg !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !352
  br i1 %28, label %29, label %30, !dbg !352

; <label>:29:                                     ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !353
  br label %30, !dbg !353

; <label>:30:                                     ; preds = %29, %21
  %31 = phi i64 [ 1, %29 ], [ %27, %21 ], !dbg !343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  br i1 %6, label %32, label %33, !dbg !354

; <label>:32:                                     ; preds = %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  br label %33, !dbg !355

; <label>:33:                                     ; preds = %32, %30
  %34 = phi i64 [ 1000, %32 ], [ %31, %30 ], !dbg !357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  %35 = icmp sgt i32 %23, 0, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  br i1 %35, label %36, label %155, !dbg !364

; <label>:36:                                     ; preds = %33, %153
  %37 = phi i32 [ %154, %153 ], [ %22, %33 ], !dbg !365
  %38 = phi i32 [ %148, %153 ], [ 0, %33 ]
  %39 = phi i32 [ %54, %153 ], [ 0, %33 ]
  %40 = phi i64 [ %146, %153 ], [ 0, %33 ]
  %41 = phi i64 [ %147, %153 ], [ 0, %33 ]
  %42 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !366, !tbaa !367
  %43 = load i32, i32* @activeExpireCycle.current_db, align 4, !dbg !368, !tbaa !278
  %44 = urem i32 %43, %37, !dbg !369
  %45 = zext i32 %44 to i64, !dbg !370
  %46 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %42, i64 %45, !dbg !370
  %47 = add i32 %43, 1, !dbg !372
  store i32 %47, i32* @activeExpireCycle.current_db, align 4, !dbg !372, !tbaa !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  %48 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %42, i64 %45, i32 1
  %49 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %42, i64 %45, i32 6
  br label %50, !dbg !373

; <label>:50:                                     ; preds = %143, %36
  %51 = phi i64 [ %41, %36 ], [ %111, %143 ], !dbg !358
  %52 = phi i64 [ %40, %36 ], [ %116, %143 ], !dbg !359
  %53 = phi i32 [ %39, %36 ], [ %54, %143 ], !dbg !374
  %54 = add nsw i32 %53, 1, !dbg !375
  %55 = load %struct.dict*, %struct.dict** %48, align 8, !dbg !376, !tbaa !378
  %56 = getelementptr inbounds %struct.dict, %struct.dict* %55, i64 0, i32 2, i64 0, i32 3, !dbg !376
  %57 = load i64, i64* %56, align 8, !dbg !376, !tbaa !379
  %58 = getelementptr inbounds %struct.dict, %struct.dict* %55, i64 0, i32 2, i64 1, i32 3, !dbg !376
  %59 = load i64, i64* %58, align 8, !dbg !376, !tbaa !379
  %60 = add i64 %59, %57, !dbg !376
  %61 = icmp eq i64 %60, 0, !dbg !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  br i1 %61, label %62, label %63, !dbg !383

; <label>:62:                                     ; preds = %50
  store i64 0, i64* %49, align 8, !dbg !384, !tbaa !386
  br label %140, !dbg !387

; <label>:63:                                     ; preds = %50
  %64 = getelementptr inbounds %struct.dict, %struct.dict* %55, i64 0, i32 2, i64 0, i32 1, !dbg !388
  %65 = load i64, i64* %64, align 8, !dbg !388, !tbaa !389
  %66 = getelementptr inbounds %struct.dict, %struct.dict* %55, i64 0, i32 2, i64 1, i32 1, !dbg !388
  %67 = load i64, i64* %66, align 8, !dbg !388, !tbaa !389
  %68 = add i64 %67, %65, !dbg !388
  %69 = tail call i64 @mstime() #6, !dbg !391
  %70 = icmp ugt i64 %68, 4, !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  br i1 %70, label %71, label %74, !dbg !395

; <label>:71:                                     ; preds = %63
  %72 = mul i64 %60, 100, !dbg !396
  %73 = icmp ugt i64 %68, %72, !dbg !397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  br i1 %73, label %140, label %74, !dbg !398

; <label>:74:                                     ; preds = %71, %63
  %75 = icmp ugt i64 %60, 20, !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !403
  br i1 %75, label %76, label %77, !dbg !403

; <label>:76:                                     ; preds = %74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  br label %77, !dbg !404

; <label>:77:                                     ; preds = %74, %76
  %78 = phi i64 [ 20, %76 ], [ %60, %74 ], !dbg !405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  br label %79, !dbg !407

; <label>:79:                                     ; preds = %77, %105
  %80 = phi i64 [ %85, %105 ], [ %78, %77 ]
  %81 = phi i32 [ %107, %105 ], [ 0, %77 ]
  %82 = phi i64 [ %106, %105 ], [ 0, %77 ]
  %83 = phi i32 [ %100, %105 ], [ 0, %77 ]
  %84 = phi i64 [ %108, %105 ], [ %51, %77 ]
  %85 = add i64 %80, -1, !dbg !407
  %86 = load %struct.dict*, %struct.dict** %48, align 8, !dbg !408, !tbaa !378
  %87 = tail call %struct.dictEntry* @dictGetRandomKey(%struct.dict* %86) #6, !dbg !410
  %88 = icmp eq %struct.dictEntry* %87, null, !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  br i1 %88, label %89, label %90, !dbg !413

; <label>:89:                                     ; preds = %79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %110

; <label>:90:                                     ; preds = %79
  %91 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %87, i64 0, i32 1, !dbg !415
  %92 = bitcast %union.anon* %91 to i64*, !dbg !415
  %93 = load i64, i64* %92, align 8, !dbg !415, !tbaa !240
  %94 = sub nsw i64 %93, %69, !dbg !416
  %95 = tail call i32 @activeExpireCycleTryExpire(%struct.redisDb* nonnull %46, %struct.dictEntry* nonnull %87, i64 %69) #7, !dbg !418
  %96 = icmp eq i32 %95, 0, !dbg !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  br i1 %96, label %99, label %97, !dbg !420

; <label>:97:                                     ; preds = %90
  %98 = add nsw i32 %83, 1, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  br label %99, !dbg !422

; <label>:99:                                     ; preds = %90, %97
  %100 = phi i32 [ %98, %97 ], [ %83, %90 ], !dbg !374
  %101 = icmp sgt i64 %94, 0, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  br i1 %101, label %102, label %105, !dbg !425

; <label>:102:                                    ; preds = %99
  %103 = add nsw i64 %94, %82, !dbg !426
  %104 = add nsw i32 %81, 1, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  br label %105, !dbg !429

; <label>:105:                                    ; preds = %99, %102
  %106 = phi i64 [ %103, %102 ], [ %82, %99 ], !dbg !374
  %107 = phi i32 [ %104, %102 ], [ %81, %99 ], !dbg !374
  %108 = add nsw i64 %84, 1, !dbg !430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %109 = icmp eq i64 %85, 0, !dbg !406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  br i1 %109, label %110, label %79, !dbg !406

; <label>:110:                                    ; preds = %105, %89
  %111 = phi i64 [ %84, %89 ], [ %108, %105 ]
  %112 = phi i32 [ %83, %89 ], [ %100, %105 ]
  %113 = phi i64 [ %82, %89 ], [ %106, %105 ]
  %114 = phi i32 [ %81, %89 ], [ %107, %105 ]
  %115 = sext i32 %112 to i64, !dbg !432
  %116 = add nsw i64 %52, %115, !dbg !433
  %117 = icmp eq i32 %114, 0, !dbg !434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  br i1 %117, label %130, label %118, !dbg !435

; <label>:118:                                    ; preds = %110
  %119 = sext i32 %114 to i64, !dbg !436
  %120 = sdiv i64 %113, %119, !dbg !437
  %121 = load i64, i64* %49, align 8, !dbg !439, !tbaa !386
  %122 = icmp eq i64 %121, 0, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  br i1 %122, label %123, label %124, !dbg !442

; <label>:123:                                    ; preds = %118
  store i64 %120, i64* %49, align 8, !dbg !443, !tbaa !386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !444
  br label %124, !dbg !444

; <label>:124:                                    ; preds = %123, %118
  %125 = phi i64 [ %120, %123 ], [ %121, %118 ], !dbg !445
  %126 = sdiv i64 %125, 50, !dbg !446
  %127 = mul nsw i64 %126, 49, !dbg !447
  %128 = sdiv i64 %120, 50, !dbg !448
  %129 = add nsw i64 %127, %128, !dbg !449
  store i64 %129, i64* %49, align 8, !dbg !450, !tbaa !386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  br label %130, !dbg !451

; <label>:130:                                    ; preds = %110, %124
  %131 = and i32 %54, 15, !dbg !452
  %132 = icmp eq i32 %131, 0, !dbg !454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  br i1 %132, label %133, label %143, !dbg !455

; <label>:133:                                    ; preds = %130
  %134 = tail call i64 @ustime() #6, !dbg !456
  %135 = sub nsw i64 %134, %2, !dbg !458
  %136 = icmp sgt i64 %135, %34, !dbg !460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !462
  br i1 %136, label %137, label %143, !dbg !462

; <label>:137:                                    ; preds = %133
  store i1 true, i1* @activeExpireCycle.timelimit_exit, align 4
  %138 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 74), align 8, !dbg !463, !tbaa !465
  %139 = add nsw i64 %138, 1, !dbg !463
  store i64 %139, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 74), align 8, !dbg !463, !tbaa !465
  br label %140, !dbg !466

; <label>:140:                                    ; preds = %71, %62, %137
  %141 = phi i64 [ %111, %137 ], [ %51, %62 ], [ %51, %71 ]
  %142 = phi i64 [ %116, %137 ], [ %52, %62 ], [ %52, %71 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %145

; <label>:143:                                    ; preds = %130, %133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !468
  %144 = icmp sgt i32 %112, 5, !dbg !469
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %144, label %50, label %145, !llvm.loop !470

; <label>:145:                                    ; preds = %143, %140
  %146 = phi i64 [ %142, %140 ], [ %116, %143 ]
  %147 = phi i64 [ %141, %140 ], [ %111, %143 ]
  %148 = add nuw nsw i32 %38, 1, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !473
  %149 = icmp slt i32 %148, %23, !dbg !363
  %150 = load i1, i1* @activeExpireCycle.timelimit_exit, align 4
  %151 = xor i1 %150, true, !dbg !474
  %152 = and i1 %149, %151, !dbg !475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  br i1 %152, label %153, label %155, !dbg !364, !llvm.loop !476

; <label>:153:                                    ; preds = %145
  %154 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !365, !tbaa !339
  br label %36, !dbg !364

; <label>:155:                                    ; preds = %145, %33
  %156 = phi i64 [ 0, %33 ], [ %147, %145 ], !dbg !358
  %157 = phi i64 [ 0, %33 ], [ %146, %145 ], !dbg !359
  %158 = tail call i64 @ustime() #6, !dbg !478
  %159 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !479, !tbaa !481
  %160 = icmp eq i64 %159, 0, !dbg !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  br i1 %160, label %166, label %161, !dbg !479

; <label>:161:                                    ; preds = %155
  %162 = sub nsw i64 %158, %2, !dbg !482
  %163 = sdiv i64 %162, 1000, !dbg !479
  %164 = icmp slt i64 %163, %159, !dbg !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !483
  br i1 %164, label %166, label %165, !dbg !483

; <label>:165:                                    ; preds = %161
  tail call void @latencyAddSample(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %163) #6, !dbg !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  br label %166, !dbg !479

; <label>:166:                                    ; preds = %161, %155, %165
  %167 = icmp eq i64 %156, 0, !dbg !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  br i1 %167, label %173, label %168, !dbg !486

; <label>:168:                                    ; preds = %166
  %169 = sitofp i64 %157 to double, !dbg !487
  %170 = sitofp i64 %156 to double, !dbg !489
  %171 = fdiv double %169, %170, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !492
  %172 = fmul double %171, 5.000000e-02, !dbg !492
  br label %174, !dbg !492

; <label>:173:                                    ; preds = %166
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %174

; <label>:174:                                    ; preds = %173, %168
  %175 = phi double [ %172, %168 ], [ 0.000000e+00, %173 ]
  %176 = load double, double* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 73), align 8, !dbg !493, !tbaa !494
  %177 = fmul double %176, 0x3FEE666666666666, !dbg !495
  %178 = fadd double %175, %177, !dbg !496
  store double %178, double* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 73), align 8, !dbg !497, !tbaa !494
  br label %179, !dbg !498

; <label>:179:                                    ; preds = %9, %8, %1, %174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  ret void, !dbg !498
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
define dso_local void @expireSlaveKeys() local_unnamed_addr #0 !dbg !500 {
  %1 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !520, !tbaa !522
  %2 = icmp eq %struct.dict* %1, null, !dbg !523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !524
  br i1 %2, label %90, label %3, !dbg !524

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %1, i64 0, i32 2, i64 0, i32 3, !dbg !525
  %5 = load i64, i64* %4, align 8, !dbg !525, !tbaa !379
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %1, i64 0, i32 2, i64 1, i32 3, !dbg !525
  %7 = load i64, i64* %6, align 8, !dbg !525, !tbaa !379
  %8 = sub i64 0, %7, !dbg !526
  %9 = icmp eq i64 %5, %8, !dbg !526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !527
  br i1 %9, label %90, label %10, !dbg !527

; <label>:10:                                     ; preds = %3
  %11 = tail call i64 @mstime() #6, !dbg !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !532
  %12 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !533, !tbaa !522
  br label %13, !dbg !532

; <label>:13:                                     ; preds = %80, %10
  %14 = phi %struct.dict* [ %12, %10 ], [ %81, %80 ], !dbg !533
  %15 = phi i32 [ 0, %10 ], [ %70, %80 ], !dbg !529
  %16 = phi i32 [ 0, %10 ], [ %71, %80 ], !dbg !534
  %17 = tail call %struct.dictEntry* @dictGetRandomKey(%struct.dict* %14) #6, !dbg !535
  %18 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %17, i64 0, i32 0, !dbg !537
  %19 = load i8*, i8** %18, align 8, !dbg !537, !tbaa !247
  %20 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %17, i64 0, i32 1, !dbg !539
  %21 = bitcast %union.anon* %20 to i64*, !dbg !539
  %22 = load i64, i64* %21, align 8, !dbg !539, !tbaa !240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !543
  %23 = icmp eq i64 %22, 0, !dbg !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  br i1 %23, label %24, label %25, !dbg !545

; <label>:24:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
  br label %65, !dbg !546

; <label>:25:                                     ; preds = %13, %54
  %26 = phi i64 [ %57, %54 ], [ 0, %13 ]
  %27 = phi i32 [ %56, %54 ], [ %15, %13 ]
  %28 = phi i64 [ %55, %54 ], [ 0, %13 ]
  %29 = phi i64 [ %58, %54 ], [ %22, %13 ]
  %30 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !547, !tbaa !339
  %31 = sext i32 %30 to i64, !dbg !548
  %32 = icmp slt i64 %26, %31, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !543
  br i1 %32, label %33, label %60, !dbg !543

; <label>:33:                                     ; preds = %25
  %34 = and i64 %29, 1, !dbg !549
  %35 = icmp eq i64 %34, 0, !dbg !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !551
  br i1 %35, label %54, label %36, !dbg !551

; <label>:36:                                     ; preds = %33
  %37 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !552, !tbaa !367
  %38 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %37, i64 %26, i32 1, !dbg !553
  %39 = load %struct.dict*, %struct.dict** %38, align 8, !dbg !553, !tbaa !378
  %40 = tail call %struct.dictEntry* @dictFind(%struct.dict* %39, i8* %19) #6, !dbg !554
  %41 = icmp eq %struct.dictEntry* %40, null, !dbg !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !559
  br i1 %41, label %51, label %42, !dbg !559

; <label>:42:                                     ; preds = %36
  %43 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !560, !tbaa !367
  %44 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %43, i64 %26, !dbg !561
  %45 = tail call i32 @activeExpireCycleTryExpire(%struct.redisDb* %44, %struct.dictEntry* nonnull %40, i64 %11) #7, !dbg !562
  %46 = icmp eq i32 %45, 0, !dbg !562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  br i1 %46, label %47, label %51, !dbg !563

; <label>:47:                                     ; preds = %42
  %48 = add nsw i32 %27, 1, !dbg !566
  %49 = shl i64 1, %26, !dbg !569
  %50 = or i64 %49, %28, !dbg !570
  br label %51, !dbg !571

; <label>:51:                                     ; preds = %36, %42, %47
  %52 = phi i64 [ %50, %47 ], [ %28, %42 ], [ %28, %36 ], !dbg !572
  %53 = phi i32 [ %48, %47 ], [ %27, %42 ], [ %27, %36 ], !dbg !572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !573
  br label %54, !dbg !573

; <label>:54:                                     ; preds = %33, %51
  %55 = phi i64 [ %52, %51 ], [ %28, %33 ], !dbg !541
  %56 = phi i32 [ %53, %51 ], [ %27, %33 ], !dbg !529
  %57 = add nuw nsw i64 %26, 1, !dbg !574
  %58 = lshr i64 %29, 1, !dbg !575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !543
  %59 = icmp eq i64 %58, 0, !dbg !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  br i1 %59, label %60, label %25, !dbg !545, !llvm.loop !576

; <label>:60:                                     ; preds = %25, %54
  %61 = phi i64 [ %28, %25 ], [ %55, %54 ], !dbg !541
  %62 = phi i32 [ %27, %25 ], [ %56, %54 ], !dbg !529
  %63 = icmp eq i64 %61, 0, !dbg !578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
  br i1 %63, label %65, label %64, !dbg !546

; <label>:64:                                     ; preds = %60
  store i64 %61, i64* %21, align 8, !dbg !580, !tbaa !240
  br label %69, !dbg !580

; <label>:65:                                     ; preds = %24, %60
  %66 = phi i32 [ %15, %24 ], [ %62, %60 ]
  %67 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !582, !tbaa !522
  %68 = tail call i32 @dictDelete(%struct.dict* %67, i8* %19) #6, !dbg !583
  br label %69

; <label>:69:                                     ; preds = %65, %64
  %70 = phi i32 [ %66, %65 ], [ %62, %64 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %71 = add nuw nsw i32 %16, 1, !dbg !584
  %72 = icmp sgt i32 %70, 3, !dbg !585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !587
  br i1 %72, label %88, label %73, !dbg !587

; <label>:73:                                     ; preds = %69
  %74 = and i32 %71, 63, !dbg !588
  %75 = icmp eq i32 %74, 0, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br i1 %75, label %76, label %80, !dbg !591

; <label>:76:                                     ; preds = %73
  %77 = tail call i64 @mstime() #6, !dbg !592
  %78 = sub nsw i64 %77, %11, !dbg !593
  %79 = icmp sgt i64 %78, 1, !dbg !594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !595
  br i1 %79, label %88, label %80, !dbg !595

; <label>:80:                                     ; preds = %76, %73
  %81 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !596, !tbaa !522
  %82 = getelementptr inbounds %struct.dict, %struct.dict* %81, i64 0, i32 2, i64 0, i32 3, !dbg !596
  %83 = load i64, i64* %82, align 8, !dbg !596, !tbaa !379
  %84 = getelementptr inbounds %struct.dict, %struct.dict* %81, i64 0, i32 2, i64 1, i32 3, !dbg !596
  %85 = load i64, i64* %84, align 8, !dbg !596, !tbaa !379
  %86 = sub i64 0, %85, !dbg !598
  %87 = icmp eq i64 %83, %86, !dbg !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %87, label %89, label %13, !llvm.loop !601

; <label>:88:                                     ; preds = %76, %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %89, !dbg !604

; <label>:89:                                     ; preds = %80, %88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !604
  br label %90, !dbg !604

; <label>:90:                                     ; preds = %0, %3, %89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !604
  ret void, !dbg !604
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @dictDelete(%struct.dict*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @rememberSlaveKeyWithExpire(%struct.redisDb* nocapture readonly, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !131 {
  %3 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !607, !tbaa !522
  %4 = icmp eq %struct.dict* %3, null, !dbg !609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !610
  br i1 %4, label %5, label %7, !dbg !610

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @rememberSlaveKeyWithExpire.dt, i8* null) #6, !dbg !611
  store %struct.dict* %6, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !613, !tbaa !522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  br label %7, !dbg !614

; <label>:7:                                      ; preds = %5, %2
  %8 = phi %struct.dict* [ %6, %5 ], [ %3, %2 ]
  %9 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 5, !dbg !615
  %10 = load i32, i32* %9, align 8, !dbg !615, !tbaa !307
  %11 = icmp sgt i32 %10, 63, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  br i1 %11, label %35, label %12, !dbg !618

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !619
  %14 = load i8*, i8** %13, align 8, !dbg !619, !tbaa !620
  %15 = tail call %struct.dictEntry* @dictAddOrFind(%struct.dict* %8, i8* %14) #6, !dbg !622
  %16 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %15, i64 0, i32 0, !dbg !624
  %17 = load i8*, i8** %16, align 8, !dbg !624, !tbaa !247
  %18 = load i8*, i8** %13, align 8, !dbg !626, !tbaa !620
  %19 = icmp eq i8* %17, %18, !dbg !627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !628
  br i1 %19, label %24, label %20, !dbg !628

; <label>:20:                                     ; preds = %12
  %21 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %15, i64 0, i32 1
  %22 = bitcast %union.anon* %21 to i64*
  %23 = load i64, i64* %22, align 8, !dbg !629, !tbaa !240
  br label %28, !dbg !628

; <label>:24:                                     ; preds = %12
  %25 = tail call i8* @sdsdup(i8* %17) #6, !dbg !630
  store i8* %25, i8** %16, align 8, !dbg !632, !tbaa !247
  %26 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %15, i64 0, i32 1, !dbg !633
  %27 = bitcast %union.anon* %26 to i64*, !dbg !633
  store i64 0, i64* %27, align 8, !dbg !633, !tbaa !240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  br label %28, !dbg !635

; <label>:28:                                     ; preds = %20, %24
  %29 = phi i64* [ %22, %20 ], [ %27, %24 ], !dbg !629
  %30 = phi i64 [ %23, %20 ], [ 0, %24 ], !dbg !629
  %31 = load i32, i32* %9, align 8, !dbg !637, !tbaa !307
  %32 = zext i32 %31 to i64, !dbg !638
  %33 = shl i64 1, %32, !dbg !638
  %34 = or i64 %33, %30, !dbg !639
  store i64 %34, i64* %29, align 8, !dbg !640, !tbaa !240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  br label %35, !dbg !642

; <label>:35:                                     ; preds = %7, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  ret void, !dbg !642
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
define dso_local i64 @getSlaveKeyWithExpireCount() local_unnamed_addr #3 !dbg !643 {
  %1 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !650, !tbaa !522
  %2 = icmp eq %struct.dict* %1, null, !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  br i1 %2, label %9, label %3, !dbg !653

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %1, i64 0, i32 2, i64 0, i32 3, !dbg !654
  %5 = load i64, i64* %4, align 8, !dbg !654, !tbaa !379
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %1, i64 0, i32 2, i64 1, i32 3, !dbg !654
  %7 = load i64, i64* %6, align 8, !dbg !654, !tbaa !379
  %8 = add i64 %7, %5, !dbg !654
  br label %9, !dbg !655

; <label>:9:                                      ; preds = %0, %3
  %10 = phi i64 [ %8, %3 ], [ 0, %0 ], !dbg !656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  ret i64 %10, !dbg !658
}

; Function Attrs: noredzone nounwind
define dso_local void @flushSlaveKeysWithExpireList() local_unnamed_addr #0 !dbg !659 {
  %1 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !660, !tbaa !522
  %2 = icmp eq %struct.dict* %1, null, !dbg !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !662
  br i1 %2, label %4, label %3, !dbg !662

; <label>:3:                                      ; preds = %0
  tail call void @dictRelease(%struct.dict* nonnull %1) #6, !dbg !663
  store %struct.dict* null, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !665, !tbaa !522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  br label %4, !dbg !666

; <label>:4:                                      ; preds = %0, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  ret void, !dbg !667
}

; Function Attrs: noredzone
declare dso_local void @dictRelease(%struct.dict*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @expireGenericCommand(%struct.client*, i64, i32) local_unnamed_addr #0 !dbg !668 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !808
  %6 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !808, !tbaa !809
  %7 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 1, !dbg !813
  %8 = load %struct.redisObject*, %struct.redisObject** %7, align 8, !dbg !813, !tbaa !522
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 2, !dbg !815
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !815, !tbaa !522
  %11 = bitcast i64* %4 to i8*, !dbg !817
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #8, !dbg !817
  %12 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %10, i64* nonnull %4, i8* null) #6, !dbg !819
  %13 = icmp eq i32 %12, 0, !dbg !821
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !822
  br i1 %13, label %14, label %73, !dbg !822

; <label>:14:                                     ; preds = %3
  %15 = icmp eq i32 %2, 0, !dbg !823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !825
  %16 = load i64, i64* %4, align 8, !dbg !826, !tbaa !331
  br i1 %15, label %17, label %19, !dbg !825

; <label>:17:                                     ; preds = %14
  %18 = mul nsw i64 %16, 1000, !dbg !827
  store i64 %18, i64* %4, align 8, !dbg !827, !tbaa !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !828
  br label %19, !dbg !828

; <label>:19:                                     ; preds = %14, %17
  %20 = phi i64 [ %18, %17 ], [ %16, %14 ], !dbg !829
  %21 = add nsw i64 %20, %1, !dbg !829
  store i64 %21, i64* %4, align 8, !dbg !829, !tbaa !331
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !830
  %23 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !830, !tbaa !832
  %24 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %23, %struct.redisObject* %8) #6, !dbg !833
  %25 = icmp eq %struct.redisObject* %24, null, !dbg !834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  br i1 %25, label %26, label %28, !dbg !835

; <label>:26:                                     ; preds = %19
  %27 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !836, !tbaa !838
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %27) #6, !dbg !840
  br label %73, !dbg !841

; <label>:28:                                     ; preds = %19
  %29 = load i64, i64* %4, align 8, !dbg !842, !tbaa !331
  %30 = call i64 @mstime() #6, !dbg !843
  %31 = icmp sgt i64 %29, %30, !dbg !844
  %32 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !845
  %33 = icmp ne i32 %32, 0, !dbg !846
  %34 = or i1 %31, %33, !dbg !847
  %35 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !848
  %36 = icmp ne i8* %35, null, !dbg !849
  %37 = or i1 %34, %36, !dbg !847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !847
  br i1 %37, label %63, label %38, !dbg !847

; <label>:38:                                     ; preds = %28
  %39 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 286), align 4, !dbg !850, !tbaa !292
  %40 = icmp eq i32 %39, 0, !dbg !851
  %41 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !852, !tbaa !832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !851
  br i1 %40, label %44, label %42, !dbg !851

; <label>:42:                                     ; preds = %38
  %43 = call i32 @dbAsyncDelete(%struct.redisDb* %41, %struct.redisObject* %8) #6, !dbg !853
  br label %46, !dbg !851

; <label>:44:                                     ; preds = %38
  %45 = call i32 @dbSyncDelete(%struct.redisDb* %41, %struct.redisObject* %8) #6, !dbg !854
  br label %46, !dbg !851

; <label>:46:                                     ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ], !dbg !851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !851
  %48 = icmp eq i32 %47, 0, !dbg !856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !856
  br i1 %48, label %49, label %50, !dbg !856

; <label>:49:                                     ; preds = %46
  call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i32 432) #6, !dbg !856
  call void @_exit(i32 1) #9, !dbg !856
  unreachable

; <label>:50:                                     ; preds = %46
  %51 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !857, !tbaa !858
  %52 = add nsw i64 %51, 1, !dbg !857
  store i64 %52, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !857, !tbaa !858
  %53 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 286), align 4, !dbg !859, !tbaa !292
  %54 = icmp eq i32 %53, 0, !dbg !860
  %55 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 38), align 8, !dbg !861
  %56 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 37), align 8, !dbg !862
  %57 = select i1 %54, %struct.redisObject* %56, %struct.redisObject* %55, !dbg !860
  call void (%struct.client*, i32, ...) @rewriteClientCommandVector(%struct.client* nonnull %0, i32 2, %struct.redisObject* %57, %struct.redisObject* %8) #6, !dbg !864
  %58 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !865, !tbaa !832
  call void @signalModifiedKey(%struct.redisDb* %58, %struct.redisObject* %8) #6, !dbg !866
  %59 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !867, !tbaa !832
  %60 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %59, i64 0, i32 5, !dbg !868
  %61 = load i32, i32* %60, align 8, !dbg !868, !tbaa !307
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %struct.redisObject* %8, i32 %61) #6, !dbg !869
  %62 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !870, !tbaa !871
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %62) #6, !dbg !872
  br label %73

; <label>:63:                                     ; preds = %28
  %64 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !873, !tbaa !832
  %65 = load i64, i64* %4, align 8, !dbg !875, !tbaa !331
  call void @setExpire(%struct.client* nonnull %0, %struct.redisDb* %64, %struct.redisObject* %8, i64 %65) #6, !dbg !876
  %66 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !877, !tbaa !871
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %66) #6, !dbg !878
  %67 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !879, !tbaa !832
  call void @signalModifiedKey(%struct.redisDb* %67, %struct.redisObject* %8) #6, !dbg !880
  %68 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !881, !tbaa !832
  %69 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %68, i64 0, i32 5, !dbg !882
  %70 = load i32, i32* %69, align 8, !dbg !882, !tbaa !307
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %struct.redisObject* %8, i32 %70) #6, !dbg !883
  %71 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !884, !tbaa !858
  %72 = add nsw i64 %71, 1, !dbg !884
  store i64 %72, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !884, !tbaa !858
  br label %73, !dbg !885

; <label>:73:                                     ; preds = %3, %63, %50, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #8, !dbg !886
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  ret void, !dbg !886
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
define dso_local void @expireCommand(%struct.client*) local_unnamed_addr #0 !dbg !887 {
  %2 = tail call i64 @mstime() #6, !dbg !891
  tail call void @expireGenericCommand(%struct.client* %0, i64 %2, i32 0) #7, !dbg !892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !893
  ret void, !dbg !893
}

; Function Attrs: noredzone nounwind
define dso_local void @expireatCommand(%struct.client*) local_unnamed_addr #0 !dbg !894 {
  tail call void @expireGenericCommand(%struct.client* %0, i64 0, i32 0) #7, !dbg !898
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !899
  ret void, !dbg !899
}

; Function Attrs: noredzone nounwind
define dso_local void @pexpireCommand(%struct.client*) local_unnamed_addr #0 !dbg !900 {
  %2 = tail call i64 @mstime() #6, !dbg !904
  tail call void @expireGenericCommand(%struct.client* %0, i64 %2, i32 1) #7, !dbg !905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !906
  ret void, !dbg !906
}

; Function Attrs: noredzone nounwind
define dso_local void @pexpireatCommand(%struct.client*) local_unnamed_addr #0 !dbg !907 {
  tail call void @expireGenericCommand(%struct.client* %0, i64 0, i32 1) #7, !dbg !911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !912
  ret void, !dbg !912
}

; Function Attrs: noredzone nounwind
define dso_local void @ttlGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !913 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !924
  %4 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !924, !tbaa !832
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !926
  %6 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !926, !tbaa !809
  %7 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 1, !dbg !927
  %8 = load %struct.redisObject*, %struct.redisObject** %7, align 8, !dbg !927, !tbaa !522
  %9 = tail call %struct.redisObject* @lookupKeyReadWithFlags(%struct.redisDb* %4, %struct.redisObject* %8, i32 1) #6, !dbg !928
  %10 = icmp eq %struct.redisObject* %9, null, !dbg !929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !930
  br i1 %10, label %11, label %12, !dbg !930

; <label>:11:                                     ; preds = %2
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 -2) #6, !dbg !931
  br label %32, !dbg !933

; <label>:12:                                     ; preds = %2
  %13 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !934, !tbaa !832
  %14 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !935, !tbaa !809
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 1, !dbg !936
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !936, !tbaa !522
  %17 = tail call i64 @getExpire(%struct.redisDb* %13, %struct.redisObject* %16) #6, !dbg !937
  %18 = icmp eq i64 %17, -1, !dbg !939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !941
  br i1 %18, label %25, label %19, !dbg !941

; <label>:19:                                     ; preds = %12
  %20 = tail call i64 @mstime() #6, !dbg !942
  %21 = sub nsw i64 %17, %20, !dbg !944
  %22 = icmp sgt i64 %21, 0, !dbg !945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  %23 = select i1 %22, i64 %21, i64 0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !947
  %24 = icmp eq i32 %1, 0, !dbg !948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !948
  br i1 %24, label %26, label %29, !dbg !948

; <label>:25:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !947
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 -1) #6, !dbg !951
  br label %31, !dbg !953

; <label>:26:                                     ; preds = %19
  %27 = add nuw nsw i64 %23, 500, !dbg !954
  %28 = udiv i64 %27, 1000, !dbg !955
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !948
  br label %29, !dbg !948

; <label>:29:                                     ; preds = %19, %26
  %30 = phi i64 [ %28, %26 ], [ %23, %19 ], !dbg !948
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %30) #6, !dbg !956
  br label %31

; <label>:31:                                     ; preds = %29, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %32, !dbg !957

; <label>:32:                                     ; preds = %31, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !957
  ret void, !dbg !957
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyReadWithFlags(%struct.redisDb*, %struct.redisObject*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @getExpire(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @ttlCommand(%struct.client*) local_unnamed_addr #0 !dbg !959 {
  tail call void @ttlGenericCommand(%struct.client* %0, i32 0) #7, !dbg !963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !964
  ret void, !dbg !964
}

; Function Attrs: noredzone nounwind
define dso_local void @pttlCommand(%struct.client*) local_unnamed_addr #0 !dbg !965 {
  tail call void @ttlGenericCommand(%struct.client* %0, i32 1) #7, !dbg !969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !970
  ret void, !dbg !970
}

; Function Attrs: noredzone nounwind
define dso_local void @persistCommand(%struct.client*) local_unnamed_addr #0 !dbg !971 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !975
  %3 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !975, !tbaa !832
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !977
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !977, !tbaa !809
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !978
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !978, !tbaa !522
  %8 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %3, %struct.redisObject* %7) #6, !dbg !979
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !980
  br i1 %9, label %23, label %10, !dbg !980

; <label>:10:                                     ; preds = %1
  %11 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !981, !tbaa !832
  %12 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !984, !tbaa !809
  %13 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %12, i64 1, !dbg !985
  %14 = load %struct.redisObject*, %struct.redisObject** %13, align 8, !dbg !985, !tbaa !522
  %15 = tail call i32 @removeExpire(%struct.redisDb* %11, %struct.redisObject* %14) #6, !dbg !986
  %16 = icmp eq i32 %15, 0, !dbg !986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !987
  br i1 %16, label %21, label %17, !dbg !987

; <label>:17:                                     ; preds = %10
  %18 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !988, !tbaa !871
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %18) #6, !dbg !990
  %19 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !991, !tbaa !858
  %20 = add nsw i64 %19, 1, !dbg !991
  store i64 %20, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !991, !tbaa !858
  br label %25, !dbg !992

; <label>:21:                                     ; preds = %10
  %22 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !993, !tbaa !838
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %22) #6, !dbg !995
  br label %25

; <label>:23:                                     ; preds = %1
  %24 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !996, !tbaa !838
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %24) #6, !dbg !998
  br label %25

; <label>:25:                                     ; preds = %17, %21, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !999
  ret void, !dbg !999
}

; Function Attrs: noredzone
declare dso_local i32 @removeExpire(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @touchCommand(%struct.client*) local_unnamed_addr #0 !dbg !1000 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1009
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1010
  %3 = load i32, i32* %2, align 8, !dbg !1010, !tbaa !1012
  %4 = icmp sgt i32 %3, 1, !dbg !1013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1014
  br i1 %4, label %5, label %8, !dbg !1014

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %11, !dbg !1014

; <label>:8:                                      ; preds = %22, %1
  %9 = phi i32 [ 0, %1 ], [ %23, %22 ], !dbg !1015
  %10 = sext i32 %9 to i64, !dbg !1017
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %10) #6, !dbg !1018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  ret void, !dbg !1019

; <label>:11:                                     ; preds = %5, %22
  %12 = phi i64 [ 1, %5 ], [ %24, %22 ]
  %13 = phi i32 [ 0, %5 ], [ %23, %22 ]
  %14 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1020, !tbaa !832
  %15 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1021, !tbaa !809
  %16 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 %12, !dbg !1022
  %17 = load %struct.redisObject*, %struct.redisObject** %16, align 8, !dbg !1022, !tbaa !522
  %18 = tail call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %14, %struct.redisObject* %17) #6, !dbg !1023
  %19 = icmp eq %struct.redisObject* %18, null, !dbg !1024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1025
  br i1 %19, label %22, label %20, !dbg !1025

; <label>:20:                                     ; preds = %11
  %21 = add nsw i32 %13, 1, !dbg !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1027
  br label %22, !dbg !1027

; <label>:22:                                     ; preds = %11, %20
  %23 = phi i32 [ %21, %20 ], [ %13, %11 ], !dbg !1028
  %24 = add nuw nsw i64 %12, 1, !dbg !1029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1030
  %25 = load i32, i32* %2, align 8, !dbg !1010, !tbaa !1012
  %26 = sext i32 %25 to i64, !dbg !1013
  %27 = icmp slt i64 %24, %26, !dbg !1013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1014
  br i1 %27, label %11, label %8, !dbg !1014, !llvm.loop !1031
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
!287 = !DILocation(line: 0, scope: !231)
!288 = !DILocation(line: 102, column: 1, scope: !252, inlinedAt: !261)
!289 = !DILocation(line: 58, column: 24, scope: !231)
!290 = !DILocation(line: 58, column: 15, scope: !231)
!291 = !DILocation(line: 60, column: 42, scope: !231)
!292 = !{!293, !279, i64 3084}
!293 = !{!"redisServer", !279, i64 0, !249, i64 8, !249, i64 16, !249, i64 24, !279, i64 32, !279, i64 36, !279, i64 40, !249, i64 48, !249, i64 56, !249, i64 64, !249, i64 72, !279, i64 80, !279, i64 84, !279, i64 88, !279, i64 92, !249, i64 96, !249, i64 104, !279, i64 112, !279, i64 116, !241, i64 120, !279, i64 164, !284, i64 168, !279, i64 176, !249, i64 184, !249, i64 192, !249, i64 200, !241, i64 208, !279, i64 216, !279, i64 220, !241, i64 224, !279, i64 352, !249, i64 360, !279, i64 368, !241, i64 372, !279, i64 436, !279, i64 440, !241, i64 444, !279, i64 508, !249, i64 512, !249, i64 520, !249, i64 528, !249, i64 536, !249, i64 544, !249, i64 552, !249, i64 560, !279, i64 568, !294, i64 576, !241, i64 584, !249, i64 840, !284, i64 848, !279, i64 856, !279, i64 860, !284, i64 864, !284, i64 872, !284, i64 880, !284, i64 888, !249, i64 896, !249, i64 904, !249, i64 912, !249, i64 920, !249, i64 928, !249, i64 936, !249, i64 944, !249, i64 952, !249, i64 960, !249, i64 968, !249, i64 976, !249, i64 984, !249, i64 992, !284, i64 1000, !294, i64 1008, !294, i64 1016, !294, i64 1024, !295, i64 1032, !294, i64 1040, !294, i64 1048, !294, i64 1056, !294, i64 1064, !294, i64 1072, !294, i64 1080, !294, i64 1088, !294, i64 1096, !294, i64 1104, !284, i64 1112, !294, i64 1120, !295, i64 1128, !294, i64 1136, !294, i64 1144, !294, i64 1152, !294, i64 1160, !249, i64 1168, !294, i64 1176, !294, i64 1184, !284, i64 1192, !296, i64 1200, !294, i64 1240, !294, i64 1248, !284, i64 1256, !284, i64 1264, !241, i64 1272, !279, i64 1728, !279, i64 1732, !279, i64 1736, !279, i64 1740, !279, i64 1744, !284, i64 1752, !279, i64 1760, !279, i64 1764, !279, i64 1768, !279, i64 1772, !284, i64 1776, !284, i64 1784, !279, i64 1792, !279, i64 1796, !279, i64 1800, !279, i64 1804, !241, i64 1808, !279, i64 1880, !279, i64 1884, !249, i64 1888, !279, i64 1896, !279, i64 1900, !284, i64 1904, !284, i64 1912, !284, i64 1920, !284, i64 1928, !279, i64 1936, !279, i64 1940, !249, i64 1944, !249, i64 1952, !279, i64 1960, !279, i64 1964, !284, i64 1968, !284, i64 1976, !284, i64 1984, !284, i64 1992, !279, i64 2000, !284, i64 2008, !279, i64 2016, !279, i64 2020, !279, i64 2024, !279, i64 2028, !279, i64 2032, !279, i64 2036, !279, i64 2040, !279, i64 2044, !279, i64 2048, !279, i64 2052, !279, i64 2056, !279, i64 2060, !279, i64 2064, !249, i64 2072, !294, i64 2080, !294, i64 2088, !279, i64 2096, !249, i64 2104, !279, i64 2112, !249, i64 2120, !279, i64 2128, !279, i64 2132, !284, i64 2136, !284, i64 2144, !284, i64 2152, !284, i64 2160, !279, i64 2168, !279, i64 2172, !279, i64 2176, !279, i64 2180, !279, i64 2184, !279, i64 2188, !241, i64 2192, !297, i64 2200, !298, i64 2224, !249, i64 2240, !279, i64 2248, !249, i64 2256, !279, i64 2264, !241, i64 2268, !241, i64 2309, !294, i64 2352, !294, i64 2360, !279, i64 2368, !279, i64 2372, !249, i64 2376, !294, i64 2384, !294, i64 2392, !294, i64 2400, !294, i64 2408, !284, i64 2416, !284, i64 2424, !279, i64 2432, !279, i64 2436, !279, i64 2440, !279, i64 2444, !279, i64 2448, !249, i64 2456, !249, i64 2464, !279, i64 2472, !279, i64 2476, !249, i64 2480, !249, i64 2488, !279, i64 2496, !279, i64 2500, !284, i64 2504, !284, i64 2512, !284, i64 2520, !279, i64 2528, !279, i64 2532, !249, i64 2536, !284, i64 2544, !279, i64 2552, !279, i64 2556, !279, i64 2560, !284, i64 2568, !279, i64 2576, !279, i64 2580, !279, i64 2584, !249, i64 2592, !241, i64 2600, !294, i64 2648, !279, i64 2656, !249, i64 2664, !249, i64 2672, !279, i64 2680, !249, i64 2688, !279, i64 2696, !279, i64 2700, !294, i64 2704, !279, i64 2712, !279, i64 2716, !279, i64 2720, !279, i64 2724, !294, i64 2728, !279, i64 2736, !241, i64 2740, !249, i64 2768, !249, i64 2776, !279, i64 2784, !279, i64 2788, !279, i64 2792, !279, i64 2796, !284, i64 2800, !284, i64 2808, !284, i64 2816, !284, i64 2824, !284, i64 2832, !284, i64 2840, !284, i64 2848, !284, i64 2856, !279, i64 2864, !279, i64 2868, !284, i64 2872, !284, i64 2880, !279, i64 2888, !294, i64 2896, !249, i64 2904, !249, i64 2912, !279, i64 2920, !279, i64 2924, !294, i64 2928, !249, i64 2936, !249, i64 2944, !279, i64 2952, !279, i64 2956, !279, i64 2960, !279, i64 2964, !249, i64 2968, !279, i64 2976, !279, i64 2980, !279, i64 2984, !249, i64 2992, !249, i64 3000, !249, i64 3008, !249, i64 3016, !294, i64 3024, !294, i64 3032, !294, i64 3040, !279, i64 3048, !279, i64 3052, !279, i64 3056, !279, i64 3060, !279, i64 3064, !279, i64 3068, !279, i64 3072, !279, i64 3076, !279, i64 3080, !279, i64 3084, !279, i64 3088, !294, i64 3096, !249, i64 3104, !249, i64 3112, !249, i64 3120, !279, i64 3128, !279, i64 3132, !279, i64 3136, !284, i64 3144, !249, i64 3152, !249, i64 3160, !249, i64 3168}
!294 = !{!"long long", !241, i64 0}
!295 = !{!"double", !241, i64 0}
!296 = !{!"malloc_stats", !284, i64 0, !284, i64 8, !284, i64 16, !284, i64 24, !284, i64 32}
!297 = !{!"", !279, i64 0, !284, i64 8, !294, i64 16}
!298 = !{!"redisOpArray", !249, i64 0, !279, i64 8}
!299 = !DILocation(line: 60, column: 9, scope: !231)
!300 = !DILocation(line: 61, column: 20, scope: !301)
!301 = distinct !DILexicalBlock(scope: !231, file: !3, line: 61, column: 13)
!302 = !DILocation(line: 61, column: 13, scope: !301)
!303 = !DILocation(line: 61, column: 13, scope: !231)
!304 = !DILocation(line: 62, column: 13, scope: !301)
!305 = !DILocation(line: 64, column: 13, scope: !301)
!306 = !DILocation(line: 66, column: 34, scope: !231)
!307 = !{!308, !279, i64 40}
!308 = !{!"redisDb", !249, i64 0, !249, i64 8, !249, i64 16, !249, i64 24, !249, i64 32, !279, i64 40, !294, i64 48, !249, i64 56}
!309 = !DILocation(line: 65, column: 9, scope: !231)
!310 = !DILocation(line: 67, column: 9, scope: !231)
!311 = !DILocation(line: 68, column: 32, scope: !231)
!312 = !{!293, !294, i64 1024}
!313 = !DILocation(line: 0, scope: !314)
!314 = distinct !DILexicalBlock(scope: !232, file: !3, line: 70, column: 12)
!315 = !DILocation(line: 73, column: 1, scope: !222)
!316 = !DILocation(line: 97, column: 28, scope: !2)
!317 = !DILocation(line: 104, column: 12, scope: !2)
!318 = !DILocation(line: 105, column: 9, scope: !2)
!319 = !DILocation(line: 106, column: 23, scope: !2)
!320 = !DILocation(line: 106, column: 15, scope: !2)
!321 = !DILocation(line: 111, column: 9, scope: !322)
!322 = distinct !DILexicalBlock(scope: !2, file: !3, line: 111, column: 9)
!323 = !DILocation(line: 111, column: 9, scope: !2)
!324 = !DILocation(line: 113, column: 14, scope: !325)
!325 = distinct !DILexicalBlock(scope: !2, file: !3, line: 113, column: 9)
!326 = !DILocation(line: 113, column: 9, scope: !2)
!327 = !DILocation(line: 117, column: 13, scope: !328)
!328 = distinct !DILexicalBlock(scope: !325, file: !3, line: 113, column: 43)
!329 = !DILocation(line: 118, column: 21, scope: !330)
!330 = distinct !DILexicalBlock(scope: !328, file: !3, line: 118, column: 13)
!331 = !{!294, !294, i64 0}
!332 = !DILocation(line: 118, column: 37, scope: !330)
!333 = !DILocation(line: 118, column: 19, scope: !330)
!334 = !DILocation(line: 118, column: 13, scope: !328)
!335 = !DILocation(line: 119, column: 25, scope: !328)
!336 = !DILocation(line: 120, column: 5, scope: !328)
!337 = !DILocation(line: 129, column: 31, scope: !338)
!338 = distinct !DILexicalBlock(scope: !2, file: !3, line: 129, column: 9)
!339 = !{!293, !279, i64 1792}
!340 = !DILocation(line: 129, column: 37, scope: !338)
!341 = !DILocation(line: 129, column: 22, scope: !338)
!342 = !DILocation(line: 130, column: 9, scope: !338)
!343 = !DILocation(line: 0, scope: !2)
!344 = !DILocation(line: 136, column: 67, scope: !2)
!345 = !{!293, !279, i64 40}
!346 = !DILocation(line: 136, column: 59, scope: !2)
!347 = !DILocation(line: 136, column: 69, scope: !2)
!348 = !DILocation(line: 136, column: 17, scope: !2)
!349 = !DILocation(line: 106, column: 33, scope: !2)
!350 = !DILocation(line: 138, column: 19, scope: !351)
!351 = distinct !DILexicalBlock(scope: !2, file: !3, line: 138, column: 9)
!352 = !DILocation(line: 138, column: 9, scope: !2)
!353 = !DILocation(line: 138, column: 25, scope: !351)
!354 = !DILocation(line: 140, column: 9, scope: !2)
!355 = !DILocation(line: 141, column: 9, scope: !356)
!356 = distinct !DILexicalBlock(scope: !2, file: !3, line: 140, column: 9)
!357 = !DILocation(line: 0, scope: !351)
!358 = !DILocation(line: 146, column: 10, scope: !2)
!359 = !DILocation(line: 147, column: 10, scope: !2)
!360 = !DILocation(line: 104, column: 9, scope: !2)
!361 = !DILocation(line: 149, column: 10, scope: !202)
!362 = !DILocation(line: 150, column: 13, scope: !200)
!363 = !DILocation(line: 149, column: 19, scope: !201)
!364 = !DILocation(line: 149, column: 5, scope: !202)
!365 = !DILocation(line: 151, column: 54, scope: !200)
!366 = !DILocation(line: 151, column: 30, scope: !200)
!367 = !{!293, !249, i64 48}
!368 = !DILocation(line: 151, column: 34, scope: !200)
!369 = !DILocation(line: 151, column: 45, scope: !200)
!370 = !DILocation(line: 151, column: 32, scope: !200)
!371 = !DILocation(line: 151, column: 18, scope: !200)
!372 = !DILocation(line: 156, column: 19, scope: !200)
!373 = !DILocation(line: 160, column: 9, scope: !200)
!374 = !DILocation(line: 0, scope: !205)
!375 = !DILocation(line: 164, column: 22, scope: !205)
!376 = !DILocation(line: 167, column: 24, scope: !377)
!377 = distinct !DILexicalBlock(scope: !205, file: !3, line: 167, column: 17)
!378 = !{!308, !249, i64 8}
!379 = !{!380, !284, i64 24}
!380 = !{!"dictht", !249, i64 0, !284, i64 8, !284, i64 16, !284, i64 24}
!381 = !DILocation(line: 161, column: 27, scope: !205)
!382 = !DILocation(line: 167, column: 47, scope: !377)
!383 = !DILocation(line: 167, column: 17, scope: !205)
!384 = !DILocation(line: 168, column: 29, scope: !385)
!385 = distinct !DILexicalBlock(scope: !377, file: !3, line: 167, column: 53)
!386 = !{!308, !294, i64 48}
!387 = !DILocation(line: 169, column: 17, scope: !385)
!388 = !DILocation(line: 171, column: 21, scope: !205)
!389 = !{!380, !284, i64 8}
!390 = !DILocation(line: 161, column: 32, scope: !205)
!391 = !DILocation(line: 172, column: 19, scope: !205)
!392 = !DILocation(line: 162, column: 23, scope: !205)
!393 = !DILocation(line: 177, column: 30, scope: !394)
!394 = distinct !DILexicalBlock(scope: !205, file: !3, line: 177, column: 17)
!395 = !DILocation(line: 177, column: 21, scope: !394)
!396 = !DILocation(line: 178, column: 21, scope: !394)
!397 = !DILocation(line: 178, column: 32, scope: !394)
!398 = !DILocation(line: 177, column: 17, scope: !205)
!399 = !DILocation(line: 162, column: 28, scope: !205)
!400 = !DILocation(line: 163, column: 17, scope: !205)
!401 = !DILocation(line: 186, column: 21, scope: !402)
!402 = distinct !DILexicalBlock(scope: !205, file: !3, line: 186, column: 17)
!403 = !DILocation(line: 186, column: 17, scope: !205)
!404 = !DILocation(line: 187, column: 17, scope: !402)
!405 = !DILocation(line: 0, scope: !377)
!406 = !DILocation(line: 189, column: 13, scope: !205)
!407 = !DILocation(line: 189, column: 23, scope: !205)
!408 = !DILocation(line: 193, column: 48, scope: !409)
!409 = distinct !DILexicalBlock(scope: !211, file: !3, line: 193, column: 21)
!410 = !DILocation(line: 193, column: 27, scope: !409)
!411 = !DILocation(line: 190, column: 28, scope: !211)
!412 = !DILocation(line: 193, column: 58, scope: !409)
!413 = !DILocation(line: 193, column: 21, scope: !211)
!414 = !DILocation(line: 193, column: 67, scope: !409)
!415 = !DILocation(line: 194, column: 23, scope: !211)
!416 = !DILocation(line: 194, column: 50, scope: !211)
!417 = !DILocation(line: 191, column: 27, scope: !211)
!418 = !DILocation(line: 195, column: 21, scope: !419)
!419 = distinct !DILexicalBlock(scope: !211, file: !3, line: 195, column: 21)
!420 = !DILocation(line: 195, column: 21, scope: !211)
!421 = !DILocation(line: 195, column: 67, scope: !419)
!422 = !DILocation(line: 195, column: 60, scope: !419)
!423 = !DILocation(line: 196, column: 25, scope: !424)
!424 = distinct !DILexicalBlock(scope: !211, file: !3, line: 196, column: 21)
!425 = !DILocation(line: 196, column: 21, scope: !211)
!426 = !DILocation(line: 198, column: 29, scope: !427)
!427 = distinct !DILexicalBlock(scope: !424, file: !3, line: 196, column: 30)
!428 = !DILocation(line: 199, column: 32, scope: !427)
!429 = !DILocation(line: 200, column: 17, scope: !427)
!430 = !DILocation(line: 201, column: 30, scope: !211)
!431 = !DILocation(line: 202, column: 13, scope: !205)
!432 = !DILocation(line: 203, column: 30, scope: !205)
!433 = !DILocation(line: 203, column: 27, scope: !205)
!434 = !DILocation(line: 206, column: 17, scope: !215)
!435 = !DILocation(line: 206, column: 17, scope: !205)
!436 = !DILocation(line: 207, column: 45, scope: !214)
!437 = !DILocation(line: 207, column: 44, scope: !214)
!438 = !DILocation(line: 207, column: 27, scope: !214)
!439 = !DILocation(line: 212, column: 25, scope: !440)
!440 = distinct !DILexicalBlock(scope: !214, file: !3, line: 212, column: 21)
!441 = !DILocation(line: 212, column: 33, scope: !440)
!442 = !DILocation(line: 212, column: 21, scope: !214)
!443 = !DILocation(line: 212, column: 51, scope: !440)
!444 = !DILocation(line: 212, column: 39, scope: !440)
!445 = !DILocation(line: 213, column: 36, scope: !214)
!446 = !DILocation(line: 213, column: 43, scope: !214)
!447 = !DILocation(line: 213, column: 47, scope: !214)
!448 = !DILocation(line: 213, column: 61, scope: !214)
!449 = !DILocation(line: 213, column: 51, scope: !214)
!450 = !DILocation(line: 213, column: 29, scope: !214)
!451 = !DILocation(line: 214, column: 13, scope: !214)
!452 = !DILocation(line: 219, column: 28, scope: !453)
!453 = distinct !DILexicalBlock(scope: !205, file: !3, line: 219, column: 17)
!454 = !DILocation(line: 219, column: 35, scope: !453)
!455 = !DILocation(line: 219, column: 17, scope: !205)
!456 = !DILocation(line: 220, column: 27, scope: !457)
!457 = distinct !DILexicalBlock(scope: !453, file: !3, line: 219, column: 41)
!458 = !DILocation(line: 220, column: 35, scope: !457)
!459 = !DILocation(line: 106, column: 44, scope: !2)
!460 = !DILocation(line: 221, column: 29, scope: !461)
!461 = distinct !DILexicalBlock(scope: !457, file: !3, line: 221, column: 21)
!462 = !DILocation(line: 221, column: 21, scope: !457)
!463 = !DILocation(line: 223, column: 63, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !3, line: 221, column: 42)
!465 = !{!293, !294, i64 1040}
!466 = !DILocation(line: 224, column: 21, scope: !464)
!467 = !DILocation(line: 0, scope: !464)
!468 = !DILocation(line: 229, column: 9, scope: !200)
!469 = !DILocation(line: 229, column: 26, scope: !200)
!470 = distinct !{!470, !373, !471}
!471 = !DILocation(line: 229, column: 66, scope: !200)
!472 = !DILocation(line: 149, column: 59, scope: !201)
!473 = !DILocation(line: 149, column: 5, scope: !201)
!474 = !DILocation(line: 149, column: 52, scope: !201)
!475 = !DILocation(line: 149, column: 34, scope: !201)
!476 = distinct !{!476, !364, !477}
!477 = !DILocation(line: 230, column: 5, scope: !202)
!478 = !DILocation(line: 232, column: 15, scope: !2)
!479 = !DILocation(line: 233, column: 5, scope: !480)
!480 = distinct !DILexicalBlock(scope: !2, file: !3, line: 233, column: 5)
!481 = !{!293, !294, i64 3096}
!482 = !DILocation(line: 232, column: 23, scope: !2)
!483 = !DILocation(line: 233, column: 5, scope: !2)
!484 = !DILocation(line: 238, column: 9, scope: !485)
!485 = distinct !DILexicalBlock(scope: !2, file: !3, line: 238, column: 9)
!486 = !DILocation(line: 238, column: 9, scope: !2)
!487 = !DILocation(line: 239, column: 24, scope: !488)
!488 = distinct !DILexicalBlock(scope: !485, file: !3, line: 238, column: 24)
!489 = !DILocation(line: 239, column: 46, scope: !488)
!490 = !DILocation(line: 239, column: 45, scope: !488)
!491 = !DILocation(line: 237, column: 12, scope: !2)
!492 = !DILocation(line: 240, column: 5, scope: !488)
!493 = !DILocation(line: 243, column: 46, scope: !2)
!494 = !{!293, !295, i64 1032}
!495 = !DILocation(line: 243, column: 69, scope: !2)
!496 = !DILocation(line: 242, column: 57, scope: !2)
!497 = !DILocation(line: 242, column: 36, scope: !2)
!498 = !DILocation(line: 244, column: 1, scope: !2)
!499 = !DILocation(line: 0, scope: !322)
!500 = distinct !DISubprogram(name: "expireSlaveKeys", scope: !3, file: !3, line: 285, type: !501, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !503)
!501 = !DISubroutineType(types: !502)
!502 = !{null}
!503 = !{!504, !505, !506, !508, !510, !511, !512, !513, !514, !518, !519}
!504 = !DILocalVariable(name: "cycles", scope: !500, file: !3, line: 289, type: !6)
!505 = !DILocalVariable(name: "noexpire", scope: !500, file: !3, line: 289, type: !6)
!506 = !DILocalVariable(name: "start", scope: !500, file: !3, line: 290, type: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !136, line: 52, baseType: !64)
!508 = !DILocalVariable(name: "de", scope: !509, file: !3, line: 292, type: !105)
!509 = distinct !DILexicalBlock(scope: !500, file: !3, line: 291, column: 14)
!510 = !DILocalVariable(name: "keyname", scope: !509, file: !3, line: 293, type: !233)
!511 = !DILocalVariable(name: "dbids", scope: !509, file: !3, line: 294, type: !12)
!512 = !DILocalVariable(name: "new_dbids", scope: !509, file: !3, line: 295, type: !12)
!513 = !DILocalVariable(name: "dbid", scope: !509, file: !3, line: 299, type: !6)
!514 = !DILocalVariable(name: "db", scope: !515, file: !3, line: 302, type: !134)
!515 = distinct !DILexicalBlock(scope: !516, file: !3, line: 301, column: 35)
!516 = distinct !DILexicalBlock(scope: !517, file: !3, line: 301, column: 17)
!517 = distinct !DILexicalBlock(scope: !509, file: !3, line: 300, column: 45)
!518 = !DILocalVariable(name: "expire", scope: !515, file: !3, line: 303, type: !105)
!519 = !DILocalVariable(name: "expired", scope: !515, file: !3, line: 304, type: !6)
!520 = !DILocation(line: 286, column: 9, scope: !521)
!521 = distinct !DILexicalBlock(scope: !500, file: !3, line: 286, column: 9)
!522 = !{!249, !249, i64 0}
!523 = !DILocation(line: 286, column: 29, scope: !521)
!524 = !DILocation(line: 286, column: 37, scope: !521)
!525 = !DILocation(line: 287, column: 9, scope: !521)
!526 = !DILocation(line: 287, column: 39, scope: !521)
!527 = !DILocation(line: 286, column: 9, scope: !500)
!528 = !DILocation(line: 289, column: 9, scope: !500)
!529 = !DILocation(line: 289, column: 21, scope: !500)
!530 = !DILocation(line: 290, column: 22, scope: !500)
!531 = !DILocation(line: 290, column: 14, scope: !500)
!532 = !DILocation(line: 291, column: 5, scope: !500)
!533 = !DILocation(line: 292, column: 42, scope: !509)
!534 = !DILocation(line: 0, scope: !509)
!535 = !DILocation(line: 292, column: 25, scope: !509)
!536 = !DILocation(line: 292, column: 20, scope: !509)
!537 = !DILocation(line: 293, column: 23, scope: !509)
!538 = !DILocation(line: 293, column: 13, scope: !509)
!539 = !DILocation(line: 294, column: 26, scope: !509)
!540 = !DILocation(line: 294, column: 18, scope: !509)
!541 = !DILocation(line: 295, column: 18, scope: !509)
!542 = !DILocation(line: 299, column: 13, scope: !509)
!543 = !DILocation(line: 300, column: 9, scope: !509)
!544 = !DILocation(line: 300, column: 15, scope: !509)
!545 = !DILocation(line: 300, column: 21, scope: !509)
!546 = !DILocation(line: 328, column: 13, scope: !509)
!547 = !DILocation(line: 300, column: 38, scope: !509)
!548 = !DILocation(line: 300, column: 29, scope: !509)
!549 = !DILocation(line: 301, column: 24, scope: !516)
!550 = !DILocation(line: 301, column: 29, scope: !516)
!551 = !DILocation(line: 301, column: 17, scope: !517)
!552 = !DILocation(line: 302, column: 38, scope: !515)
!553 = !DILocation(line: 303, column: 50, scope: !515)
!554 = !DILocation(line: 303, column: 37, scope: !515)
!555 = !DILocation(line: 303, column: 28, scope: !515)
!556 = !DILocation(line: 304, column: 21, scope: !515)
!557 = !DILocation(line: 306, column: 21, scope: !558)
!558 = distinct !DILexicalBlock(scope: !515, file: !3, line: 306, column: 21)
!559 = !DILocation(line: 306, column: 28, scope: !558)
!560 = !DILocation(line: 307, column: 55, scope: !558)
!561 = !DILocation(line: 307, column: 57, scope: !558)
!562 = !DILocation(line: 307, column: 21, scope: !558)
!563 = !DILocation(line: 306, column: 21, scope: !515)
!564 = !DILocation(line: 0, scope: !565)
!565 = distinct !DILexicalBlock(scope: !558, file: !3, line: 308, column: 17)
!566 = !DILocation(line: 317, column: 29, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !3, line: 316, column: 41)
!568 = distinct !DILexicalBlock(scope: !515, file: !3, line: 316, column: 21)
!569 = !DILocation(line: 318, column: 46, scope: !567)
!570 = !DILocation(line: 318, column: 31, scope: !567)
!571 = !DILocation(line: 319, column: 17, scope: !567)
!572 = !DILocation(line: 0, scope: !567)
!573 = !DILocation(line: 320, column: 13, scope: !515)
!574 = !DILocation(line: 321, column: 17, scope: !517)
!575 = !DILocation(line: 322, column: 19, scope: !517)
!576 = distinct !{!576, !543, !577}
!577 = !DILocation(line: 323, column: 9, scope: !509)
!578 = !DILocation(line: 328, column: 13, scope: !579)
!579 = distinct !DILexicalBlock(scope: !509, file: !3, line: 328, column: 13)
!580 = !DILocation(line: 329, column: 13, scope: !581)
!581 = distinct !DILexicalBlock(scope: !579, file: !3, line: 329, column: 13)
!582 = !DILocation(line: 331, column: 24, scope: !579)
!583 = !DILocation(line: 331, column: 13, scope: !579)
!584 = !DILocation(line: 335, column: 15, scope: !509)
!585 = !DILocation(line: 336, column: 22, scope: !586)
!586 = distinct !DILexicalBlock(scope: !509, file: !3, line: 336, column: 13)
!587 = !DILocation(line: 336, column: 13, scope: !509)
!588 = !DILocation(line: 337, column: 21, scope: !589)
!589 = distinct !DILexicalBlock(scope: !509, file: !3, line: 337, column: 13)
!590 = !DILocation(line: 337, column: 27, scope: !589)
!591 = !DILocation(line: 337, column: 32, scope: !589)
!592 = !DILocation(line: 337, column: 35, scope: !589)
!593 = !DILocation(line: 337, column: 43, scope: !589)
!594 = !DILocation(line: 337, column: 50, scope: !589)
!595 = !DILocation(line: 337, column: 13, scope: !509)
!596 = !DILocation(line: 338, column: 13, scope: !597)
!597 = distinct !DILexicalBlock(scope: !509, file: !3, line: 338, column: 13)
!598 = !DILocation(line: 338, column: 43, scope: !597)
!599 = !DILocation(line: 338, column: 13, scope: !509)
!600 = !DILocation(line: 0, scope: !500)
!601 = distinct !{!601, !532, !602}
!602 = !DILocation(line: 339, column: 5, scope: !500)
!603 = !DILocation(line: 0, scope: !586)
!604 = !DILocation(line: 340, column: 1, scope: !500)
!605 = !DILocation(line: 344, column: 42, scope: !131)
!606 = !DILocation(line: 344, column: 52, scope: !131)
!607 = !DILocation(line: 345, column: 9, scope: !608)
!608 = distinct !DILexicalBlock(scope: !131, file: !3, line: 345, column: 9)
!609 = !DILocation(line: 345, column: 29, scope: !608)
!610 = !DILocation(line: 345, column: 9, scope: !131)
!611 = !DILocation(line: 354, column: 31, scope: !612)
!612 = distinct !DILexicalBlock(scope: !608, file: !3, line: 345, column: 38)
!613 = !DILocation(line: 354, column: 29, scope: !612)
!614 = !DILocation(line: 355, column: 5, scope: !612)
!615 = !DILocation(line: 356, column: 13, scope: !616)
!616 = distinct !DILexicalBlock(scope: !131, file: !3, line: 356, column: 9)
!617 = !DILocation(line: 356, column: 16, scope: !616)
!618 = !DILocation(line: 356, column: 9, scope: !131)
!619 = !DILocation(line: 358, column: 60, scope: !131)
!620 = !{!621, !249, i64 8}
!621 = !{!"redisObject", !279, i64 0, !279, i64 0, !279, i64 1, !279, i64 4, !249, i64 8}
!622 = !DILocation(line: 358, column: 21, scope: !131)
!623 = !DILocation(line: 358, column: 16, scope: !131)
!624 = !DILocation(line: 363, column: 13, scope: !625)
!625 = distinct !DILexicalBlock(scope: !131, file: !3, line: 363, column: 9)
!626 = !DILocation(line: 363, column: 25, scope: !625)
!627 = !DILocation(line: 363, column: 17, scope: !625)
!628 = !DILocation(line: 363, column: 9, scope: !131)
!629 = !DILocation(line: 368, column: 22, scope: !131)
!630 = !DILocation(line: 364, column: 19, scope: !631)
!631 = distinct !DILexicalBlock(scope: !625, file: !3, line: 363, column: 30)
!632 = !DILocation(line: 364, column: 17, scope: !631)
!633 = !DILocation(line: 365, column: 9, scope: !634)
!634 = distinct !DILexicalBlock(scope: !631, file: !3, line: 365, column: 9)
!635 = !DILocation(line: 366, column: 5, scope: !631)
!636 = !DILocation(line: 368, column: 14, scope: !131)
!637 = !DILocation(line: 369, column: 33, scope: !131)
!638 = !DILocation(line: 369, column: 26, scope: !131)
!639 = !DILocation(line: 369, column: 11, scope: !131)
!640 = !DILocation(line: 370, column: 5, scope: !641)
!641 = distinct !DILexicalBlock(scope: !131, file: !3, line: 370, column: 5)
!642 = !DILocation(line: 371, column: 1, scope: !131)
!643 = distinct !DISubprogram(name: "getSlaveKeyWithExpireCount", scope: !3, file: !3, line: 374, type: !644, isLocal: false, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !8)
!644 = !DISubroutineType(types: !645)
!645 = !{!646}
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !647, line: 40, baseType: !648)
!647 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !649, line: 129, baseType: !16)
!649 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!650 = !DILocation(line: 375, column: 9, scope: !651)
!651 = distinct !DILexicalBlock(scope: !643, file: !3, line: 375, column: 9)
!652 = !DILocation(line: 375, column: 29, scope: !651)
!653 = !DILocation(line: 375, column: 9, scope: !643)
!654 = !DILocation(line: 376, column: 12, scope: !643)
!655 = !DILocation(line: 376, column: 5, scope: !643)
!656 = !DILocation(line: 0, scope: !643)
!657 = !DILocation(line: 0, scope: !651)
!658 = !DILocation(line: 377, column: 1, scope: !643)
!659 = distinct !DISubprogram(name: "flushSlaveKeysWithExpireList", scope: !3, file: !3, line: 387, type: !501, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !8)
!660 = !DILocation(line: 388, column: 9, scope: !661)
!661 = distinct !DILexicalBlock(scope: !659, file: !3, line: 388, column: 9)
!662 = !DILocation(line: 388, column: 9, scope: !659)
!663 = !DILocation(line: 389, column: 9, scope: !664)
!664 = distinct !DILexicalBlock(scope: !661, file: !3, line: 388, column: 30)
!665 = !DILocation(line: 390, column: 29, scope: !664)
!666 = !DILocation(line: 391, column: 5, scope: !664)
!667 = !DILocation(line: 392, column: 1, scope: !659)
!668 = distinct !DISubprogram(name: "expireGenericCommand", scope: !3, file: !3, line: 405, type: !669, isLocal: false, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !794)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !671, !64, !6}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !136, line: 780, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !136, line: 723, size: 135360, elements: !674)
!674 = !{!675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !686, !710, !711, !712, !713, !714, !715, !717, !718, !721, !722, !723, !724, !725, !726, !727, !728, !733, !734, !735, !736, !737, !738, !739, !740, !744, !745, !749, !750, !766, !767, !783, !784, !785, !786, !787, !788, !789, !790}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !673, file: !136, line: 724, baseType: !12, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !673, file: !136, line: 725, baseType: !6, size: 32, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !673, file: !136, line: 726, baseType: !134, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !673, file: !136, line: 727, baseType: !175, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !673, file: !136, line: 728, baseType: !233, size: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !673, file: !136, line: 729, baseType: !646, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !673, file: !136, line: 730, baseType: !233, size: 64, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !673, file: !136, line: 734, baseType: !646, size: 64, offset: 448)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !673, file: !136, line: 735, baseType: !6, size: 32, offset: 512)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !673, file: !136, line: 736, baseType: !685, size: 64, offset: 576)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !673, file: !136, line: 737, baseType: !687, size: 64, offset: 640)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !136, line: 1307, size: 640, elements: !689)
!689 = !{!690, !691, !696, !697, !698, !699, !705, !706, !707, !708, !709}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !688, file: !136, line: 1308, baseType: !234, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !688, file: !136, line: 1309, baseType: !692, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !136, line: 1305, baseType: !694)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !671}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !688, file: !136, line: 1310, baseType: !6, size: 32, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !688, file: !136, line: 1311, baseType: !234, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !688, file: !136, line: 1312, baseType: !6, size: 32, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !688, file: !136, line: 1315, baseType: !700, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !136, line: 1306, baseType: !702)
!702 = !DISubroutineType(types: !703)
!703 = !{!704, !687, !685, !6, !704}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !688, file: !136, line: 1317, baseType: !6, size: 32, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !688, file: !136, line: 1318, baseType: !6, size: 32, offset: 416)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !688, file: !136, line: 1319, baseType: !6, size: 32, offset: 448)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !688, file: !136, line: 1320, baseType: !64, size: 64, offset: 512)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !688, file: !136, line: 1320, baseType: !64, size: 64, offset: 576)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !673, file: !136, line: 737, baseType: !687, size: 64, offset: 704)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !673, file: !136, line: 738, baseType: !6, size: 32, offset: 768)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !673, file: !136, line: 739, baseType: !6, size: 32, offset: 800)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !673, file: !136, line: 740, baseType: !118, size: 64, offset: 832)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !673, file: !136, line: 741, baseType: !147, size: 64, offset: 896)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !673, file: !136, line: 742, baseType: !716, size: 64, offset: 960)
!716 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !673, file: !136, line: 743, baseType: !646, size: 64, offset: 1024)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !673, file: !136, line: 745, baseType: !719, size: 64, offset: 1088)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !720, line: 34, baseType: !118)
!720 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!721 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !673, file: !136, line: 746, baseType: !719, size: 64, offset: 1152)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !673, file: !136, line: 747, baseType: !719, size: 64, offset: 1216)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !673, file: !136, line: 748, baseType: !6, size: 32, offset: 1280)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !673, file: !136, line: 749, baseType: !6, size: 32, offset: 1312)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !673, file: !136, line: 750, baseType: !6, size: 32, offset: 1344)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !673, file: !136, line: 751, baseType: !6, size: 32, offset: 1376)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !673, file: !136, line: 752, baseType: !6, size: 32, offset: 1408)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !673, file: !136, line: 753, baseType: !729, size: 64, offset: 1472)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !730, line: 173, baseType: !731)
!730 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !649, line: 100, baseType: !732)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !649, line: 44, baseType: !118)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !673, file: !136, line: 754, baseType: !729, size: 64, offset: 1536)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !673, file: !136, line: 755, baseType: !233, size: 64, offset: 1600)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !673, file: !136, line: 756, baseType: !64, size: 64, offset: 1664)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !673, file: !136, line: 757, baseType: !64, size: 64, offset: 1728)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !673, file: !136, line: 758, baseType: !64, size: 64, offset: 1792)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !673, file: !136, line: 759, baseType: !64, size: 64, offset: 1856)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !673, file: !136, line: 760, baseType: !64, size: 64, offset: 1920)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !673, file: !136, line: 763, baseType: !741, size: 328, offset: 1984)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 328, elements: !742)
!742 = !{!743}
!743 = !DISubrange(count: 41)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !673, file: !136, line: 764, baseType: !6, size: 32, offset: 2336)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !673, file: !136, line: 765, baseType: !746, size: 368, offset: 2368)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 368, elements: !747)
!747 = !{!748}
!748 = !DISubrange(count: 46)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !673, file: !136, line: 766, baseType: !6, size: 32, offset: 2752)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !673, file: !136, line: 767, baseType: !751, size: 256, offset: 2816)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !136, line: 673, baseType: !752)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !136, line: 665, size: 256, elements: !753)
!753 = !{!754, !762, !763, !764, !765}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !752, file: !136, line: 666, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !136, line: 663, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !136, line: 659, size: 192, elements: !758)
!758 = !{!759, !760, !761}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !757, file: !136, line: 660, baseType: !685, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !757, file: !136, line: 661, baseType: !6, size: 32, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !757, file: !136, line: 662, baseType: !687, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !752, file: !136, line: 667, baseType: !6, size: 32, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !752, file: !136, line: 668, baseType: !6, size: 32, offset: 96)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !752, file: !136, line: 671, baseType: !6, size: 32, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !752, file: !136, line: 672, baseType: !719, size: 64, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !673, file: !136, line: 768, baseType: !6, size: 32, offset: 3072)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !673, file: !136, line: 769, baseType: !768, size: 704, offset: 3136)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !136, line: 703, baseType: !769)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !136, line: 677, size: 704, elements: !770)
!770 = !{!771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !769, file: !136, line: 679, baseType: !507, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !769, file: !136, line: 683, baseType: !67, size: 64, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !769, file: !136, line: 685, baseType: !175, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !769, file: !136, line: 689, baseType: !646, size: 64, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !769, file: !136, line: 690, baseType: !175, size: 64, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !769, file: !136, line: 691, baseType: !175, size: 64, offset: 320)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !769, file: !136, line: 692, baseType: !507, size: 64, offset: 384)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !769, file: !136, line: 692, baseType: !507, size: 64, offset: 448)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !769, file: !136, line: 693, baseType: !6, size: 32, offset: 512)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !769, file: !136, line: 696, baseType: !6, size: 32, offset: 544)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !769, file: !136, line: 697, baseType: !64, size: 64, offset: 576)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !769, file: !136, line: 700, baseType: !10, size: 64, offset: 640)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !673, file: !136, line: 770, baseType: !64, size: 64, offset: 3840)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !673, file: !136, line: 771, baseType: !147, size: 64, offset: 3904)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !673, file: !136, line: 772, baseType: !67, size: 64, offset: 3968)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !673, file: !136, line: 773, baseType: !147, size: 64, offset: 4032)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !673, file: !136, line: 774, baseType: !233, size: 64, offset: 4096)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !673, file: !136, line: 775, baseType: !153, size: 64, offset: 4160)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !673, file: !136, line: 778, baseType: !6, size: 32, offset: 4224)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !673, file: !136, line: 779, baseType: !791, size: 131072, offset: 4256)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 131072, elements: !792)
!792 = !{!793}
!793 = !DISubrange(count: 16384)
!794 = !{!795, !796, !797, !798, !799, !800, !801, !804}
!795 = !DILocalVariable(name: "c", arg: 1, scope: !668, file: !3, line: 405, type: !671)
!796 = !DILocalVariable(name: "basetime", arg: 2, scope: !668, file: !3, line: 405, type: !64)
!797 = !DILocalVariable(name: "unit", arg: 3, scope: !668, file: !3, line: 405, type: !6)
!798 = !DILocalVariable(name: "key", scope: !668, file: !3, line: 406, type: !175)
!799 = !DILocalVariable(name: "param", scope: !668, file: !3, line: 406, type: !175)
!800 = !DILocalVariable(name: "when", scope: !668, file: !3, line: 407, type: !64)
!801 = !DILocalVariable(name: "aux", scope: !802, file: !3, line: 428, type: !175)
!802 = distinct !DILexicalBlock(scope: !803, file: !3, line: 427, column: 68)
!803 = distinct !DILexicalBlock(scope: !668, file: !3, line: 427, column: 9)
!804 = !DILocalVariable(name: "deleted", scope: !802, file: !3, line: 430, type: !6)
!805 = !DILocation(line: 405, column: 35, scope: !668)
!806 = !DILocation(line: 405, column: 48, scope: !668)
!807 = !DILocation(line: 405, column: 62, scope: !668)
!808 = !DILocation(line: 406, column: 20, scope: !668)
!809 = !{!810, !249, i64 72}
!810 = !{!"client", !284, i64 0, !279, i64 8, !249, i64 16, !249, i64 24, !249, i64 32, !284, i64 40, !249, i64 48, !284, i64 56, !279, i64 64, !249, i64 72, !249, i64 80, !249, i64 88, !279, i64 96, !279, i64 100, !284, i64 104, !249, i64 112, !294, i64 120, !284, i64 128, !284, i64 136, !284, i64 144, !284, i64 152, !279, i64 160, !279, i64 164, !279, i64 168, !279, i64 172, !279, i64 176, !284, i64 184, !284, i64 192, !249, i64 200, !294, i64 208, !294, i64 216, !294, i64 224, !294, i64 232, !294, i64 240, !241, i64 248, !279, i64 292, !241, i64 296, !279, i64 344, !811, i64 352, !279, i64 384, !812, i64 392, !294, i64 480, !249, i64 488, !249, i64 496, !249, i64 504, !249, i64 512, !249, i64 520, !279, i64 528, !241, i64 532}
!811 = !{!"multiState", !249, i64 0, !279, i64 8, !279, i64 12, !279, i64 16, !284, i64 24}
!812 = !{!"blockingState", !294, i64 0, !249, i64 8, !249, i64 16, !284, i64 24, !249, i64 32, !249, i64 40, !294, i64 48, !294, i64 56, !279, i64 64, !279, i64 68, !294, i64 72, !249, i64 80}
!813 = !DILocation(line: 406, column: 17, scope: !668)
!814 = !DILocation(line: 406, column: 11, scope: !668)
!815 = !DILocation(line: 406, column: 38, scope: !668)
!816 = !DILocation(line: 406, column: 30, scope: !668)
!817 = !DILocation(line: 407, column: 5, scope: !668)
!818 = !DILocation(line: 407, column: 15, scope: !668)
!819 = !DILocation(line: 409, column: 9, scope: !820)
!820 = distinct !DILexicalBlock(scope: !668, file: !3, line: 409, column: 9)
!821 = !DILocation(line: 409, column: 61, scope: !820)
!822 = !DILocation(line: 409, column: 9, scope: !668)
!823 = !DILocation(line: 412, column: 14, scope: !824)
!824 = distinct !DILexicalBlock(scope: !668, file: !3, line: 412, column: 9)
!825 = !DILocation(line: 412, column: 9, scope: !668)
!826 = !DILocation(line: 0, scope: !668)
!827 = !DILocation(line: 412, column: 36, scope: !824)
!828 = !DILocation(line: 412, column: 31, scope: !824)
!829 = !DILocation(line: 413, column: 10, scope: !668)
!830 = !DILocation(line: 416, column: 27, scope: !831)
!831 = distinct !DILexicalBlock(scope: !668, file: !3, line: 416, column: 9)
!832 = !{!810, !249, i64 16}
!833 = !DILocation(line: 416, column: 9, scope: !831)
!834 = !DILocation(line: 416, column: 35, scope: !831)
!835 = !DILocation(line: 416, column: 9, scope: !668)
!836 = !DILocation(line: 417, column: 27, scope: !837)
!837 = distinct !DILexicalBlock(scope: !831, file: !3, line: 416, column: 44)
!838 = !{!839, !249, i64 32}
!839 = !{!"sharedObjectsStruct", !249, i64 0, !249, i64 8, !249, i64 16, !249, i64 24, !249, i64 32, !249, i64 40, !249, i64 48, !249, i64 56, !249, i64 64, !249, i64 72, !249, i64 80, !249, i64 88, !249, i64 96, !249, i64 104, !249, i64 112, !249, i64 120, !249, i64 128, !249, i64 136, !249, i64 144, !249, i64 152, !249, i64 160, !249, i64 168, !249, i64 176, !249, i64 184, !249, i64 192, !249, i64 200, !249, i64 208, !249, i64 216, !249, i64 224, !249, i64 232, !249, i64 240, !249, i64 248, !249, i64 256, !249, i64 264, !249, i64 272, !249, i64 280, !249, i64 288, !249, i64 296, !249, i64 304, !249, i64 312, !249, i64 320, !249, i64 328, !249, i64 336, !249, i64 344, !249, i64 352, !249, i64 360, !241, i64 368, !241, i64 448, !241, i64 80448, !241, i64 80704, !249, i64 80960, !249, i64 80968}
!840 = !DILocation(line: 417, column: 9, scope: !837)
!841 = !DILocation(line: 418, column: 9, scope: !837)
!842 = !DILocation(line: 427, column: 9, scope: !803)
!843 = !DILocation(line: 427, column: 17, scope: !803)
!844 = !DILocation(line: 427, column: 14, scope: !803)
!845 = !DILocation(line: 427, column: 37, scope: !803)
!846 = !DILocation(line: 427, column: 30, scope: !803)
!847 = !DILocation(line: 427, column: 26, scope: !803)
!848 = !DILocation(line: 427, column: 56, scope: !803)
!849 = !DILocation(line: 427, column: 49, scope: !803)
!850 = !DILocation(line: 430, column: 30, scope: !802)
!851 = !DILocation(line: 430, column: 23, scope: !802)
!852 = !DILocation(line: 0, scope: !802)
!853 = !DILocation(line: 430, column: 53, scope: !802)
!854 = !DILocation(line: 431, column: 53, scope: !802)
!855 = !DILocation(line: 430, column: 13, scope: !802)
!856 = !DILocation(line: 432, column: 9, scope: !802)
!857 = !DILocation(line: 433, column: 21, scope: !802)
!858 = !{!293, !294, i64 2080}
!859 = !DILocation(line: 436, column: 22, scope: !802)
!860 = !DILocation(line: 436, column: 15, scope: !802)
!861 = !DILocation(line: 436, column: 52, scope: !802)
!862 = !DILocation(line: 436, column: 68, scope: !802)
!863 = !DILocation(line: 428, column: 15, scope: !802)
!864 = !DILocation(line: 437, column: 9, scope: !802)
!865 = !DILocation(line: 438, column: 30, scope: !802)
!866 = !DILocation(line: 438, column: 9, scope: !802)
!867 = !DILocation(line: 439, column: 57, scope: !802)
!868 = !DILocation(line: 439, column: 61, scope: !802)
!869 = !DILocation(line: 439, column: 9, scope: !802)
!870 = !DILocation(line: 440, column: 28, scope: !802)
!871 = !{!839, !249, i64 40}
!872 = !DILocation(line: 440, column: 9, scope: !802)
!873 = !DILocation(line: 443, column: 24, scope: !874)
!874 = distinct !DILexicalBlock(scope: !803, file: !3, line: 442, column: 12)
!875 = !DILocation(line: 443, column: 31, scope: !874)
!876 = !DILocation(line: 443, column: 9, scope: !874)
!877 = !DILocation(line: 444, column: 27, scope: !874)
!878 = !DILocation(line: 444, column: 9, scope: !874)
!879 = !DILocation(line: 445, column: 30, scope: !874)
!880 = !DILocation(line: 445, column: 9, scope: !874)
!881 = !DILocation(line: 446, column: 60, scope: !874)
!882 = !DILocation(line: 446, column: 64, scope: !874)
!883 = !DILocation(line: 446, column: 9, scope: !874)
!884 = !DILocation(line: 447, column: 21, scope: !874)
!885 = !DILocation(line: 448, column: 9, scope: !874)
!886 = !DILocation(line: 450, column: 1, scope: !668)
!887 = distinct !DISubprogram(name: "expireCommand", scope: !3, file: !3, line: 453, type: !694, isLocal: false, isDefinition: true, scopeLine: 453, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !888)
!888 = !{!889}
!889 = !DILocalVariable(name: "c", arg: 1, scope: !887, file: !3, line: 453, type: !671)
!890 = !DILocation(line: 453, column: 28, scope: !887)
!891 = !DILocation(line: 454, column: 28, scope: !887)
!892 = !DILocation(line: 454, column: 5, scope: !887)
!893 = !DILocation(line: 455, column: 1, scope: !887)
!894 = distinct !DISubprogram(name: "expireatCommand", scope: !3, file: !3, line: 458, type: !694, isLocal: false, isDefinition: true, scopeLine: 458, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !895)
!895 = !{!896}
!896 = !DILocalVariable(name: "c", arg: 1, scope: !894, file: !3, line: 458, type: !671)
!897 = !DILocation(line: 458, column: 30, scope: !894)
!898 = !DILocation(line: 459, column: 5, scope: !894)
!899 = !DILocation(line: 460, column: 1, scope: !894)
!900 = distinct !DISubprogram(name: "pexpireCommand", scope: !3, file: !3, line: 463, type: !694, isLocal: false, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !901)
!901 = !{!902}
!902 = !DILocalVariable(name: "c", arg: 1, scope: !900, file: !3, line: 463, type: !671)
!903 = !DILocation(line: 463, column: 29, scope: !900)
!904 = !DILocation(line: 464, column: 28, scope: !900)
!905 = !DILocation(line: 464, column: 5, scope: !900)
!906 = !DILocation(line: 465, column: 1, scope: !900)
!907 = distinct !DISubprogram(name: "pexpireatCommand", scope: !3, file: !3, line: 468, type: !694, isLocal: false, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !908)
!908 = !{!909}
!909 = !DILocalVariable(name: "c", arg: 1, scope: !907, file: !3, line: 468, type: !671)
!910 = !DILocation(line: 468, column: 31, scope: !907)
!911 = !DILocation(line: 469, column: 5, scope: !907)
!912 = !DILocation(line: 470, column: 1, scope: !907)
!913 = distinct !DISubprogram(name: "ttlGenericCommand", scope: !3, file: !3, line: 473, type: !914, isLocal: false, isDefinition: true, scopeLine: 473, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !916)
!914 = !DISubroutineType(types: !915)
!915 = !{null, !671, !6}
!916 = !{!917, !918, !919, !920}
!917 = !DILocalVariable(name: "c", arg: 1, scope: !913, file: !3, line: 473, type: !671)
!918 = !DILocalVariable(name: "output_ms", arg: 2, scope: !913, file: !3, line: 473, type: !6)
!919 = !DILocalVariable(name: "expire", scope: !913, file: !3, line: 474, type: !64)
!920 = !DILocalVariable(name: "ttl", scope: !913, file: !3, line: 474, type: !64)
!921 = !DILocation(line: 473, column: 32, scope: !913)
!922 = !DILocation(line: 473, column: 39, scope: !913)
!923 = !DILocation(line: 474, column: 23, scope: !913)
!924 = !DILocation(line: 477, column: 35, scope: !925)
!925 = distinct !DILexicalBlock(scope: !913, file: !3, line: 477, column: 9)
!926 = !DILocation(line: 477, column: 41, scope: !925)
!927 = !DILocation(line: 477, column: 38, scope: !925)
!928 = !DILocation(line: 477, column: 9, scope: !925)
!929 = !DILocation(line: 477, column: 65, scope: !925)
!930 = !DILocation(line: 477, column: 9, scope: !913)
!931 = !DILocation(line: 478, column: 9, scope: !932)
!932 = distinct !DILexicalBlock(scope: !925, file: !3, line: 477, column: 74)
!933 = !DILocation(line: 479, column: 9, scope: !932)
!934 = !DILocation(line: 483, column: 27, scope: !913)
!935 = !DILocation(line: 483, column: 33, scope: !913)
!936 = !DILocation(line: 483, column: 30, scope: !913)
!937 = !DILocation(line: 483, column: 14, scope: !913)
!938 = !DILocation(line: 474, column: 15, scope: !913)
!939 = !DILocation(line: 484, column: 16, scope: !940)
!940 = distinct !DILexicalBlock(scope: !913, file: !3, line: 484, column: 9)
!941 = !DILocation(line: 484, column: 9, scope: !913)
!942 = !DILocation(line: 485, column: 22, scope: !943)
!943 = distinct !DILexicalBlock(scope: !940, file: !3, line: 484, column: 23)
!944 = !DILocation(line: 485, column: 21, scope: !943)
!945 = !DILocation(line: 486, column: 13, scope: !943)
!946 = !DILocation(line: 487, column: 5, scope: !943)
!947 = !DILocation(line: 488, column: 9, scope: !913)
!948 = !DILocation(line: 491, column: 28, scope: !949)
!949 = distinct !DILexicalBlock(scope: !950, file: !3, line: 490, column: 12)
!950 = distinct !DILexicalBlock(scope: !913, file: !3, line: 488, column: 9)
!951 = !DILocation(line: 489, column: 9, scope: !952)
!952 = distinct !DILexicalBlock(scope: !950, file: !3, line: 488, column: 20)
!953 = !DILocation(line: 490, column: 5, scope: !952)
!954 = !DILocation(line: 491, column: 51, scope: !949)
!955 = !DILocation(line: 491, column: 56, scope: !949)
!956 = !DILocation(line: 491, column: 9, scope: !949)
!957 = !DILocation(line: 493, column: 1, scope: !913)
!958 = !DILocation(line: 0, scope: !932)
!959 = distinct !DISubprogram(name: "ttlCommand", scope: !3, file: !3, line: 496, type: !694, isLocal: false, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !960)
!960 = !{!961}
!961 = !DILocalVariable(name: "c", arg: 1, scope: !959, file: !3, line: 496, type: !671)
!962 = !DILocation(line: 496, column: 25, scope: !959)
!963 = !DILocation(line: 497, column: 5, scope: !959)
!964 = !DILocation(line: 498, column: 1, scope: !959)
!965 = distinct !DISubprogram(name: "pttlCommand", scope: !3, file: !3, line: 501, type: !694, isLocal: false, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !966)
!966 = !{!967}
!967 = !DILocalVariable(name: "c", arg: 1, scope: !965, file: !3, line: 501, type: !671)
!968 = !DILocation(line: 501, column: 26, scope: !965)
!969 = !DILocation(line: 502, column: 5, scope: !965)
!970 = !DILocation(line: 503, column: 1, scope: !965)
!971 = distinct !DISubprogram(name: "persistCommand", scope: !3, file: !3, line: 506, type: !694, isLocal: false, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !972)
!972 = !{!973}
!973 = !DILocalVariable(name: "c", arg: 1, scope: !971, file: !3, line: 506, type: !671)
!974 = !DILocation(line: 506, column: 29, scope: !971)
!975 = !DILocation(line: 507, column: 27, scope: !976)
!976 = distinct !DILexicalBlock(scope: !971, file: !3, line: 507, column: 9)
!977 = !DILocation(line: 507, column: 33, scope: !976)
!978 = !DILocation(line: 507, column: 30, scope: !976)
!979 = !DILocation(line: 507, column: 9, scope: !976)
!980 = !DILocation(line: 507, column: 9, scope: !971)
!981 = !DILocation(line: 508, column: 29, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !3, line: 508, column: 13)
!983 = distinct !DILexicalBlock(scope: !976, file: !3, line: 507, column: 43)
!984 = !DILocation(line: 508, column: 35, scope: !982)
!985 = !DILocation(line: 508, column: 32, scope: !982)
!986 = !DILocation(line: 508, column: 13, scope: !982)
!987 = !DILocation(line: 508, column: 13, scope: !983)
!988 = !DILocation(line: 509, column: 31, scope: !989)
!989 = distinct !DILexicalBlock(scope: !982, file: !3, line: 508, column: 45)
!990 = !DILocation(line: 509, column: 13, scope: !989)
!991 = !DILocation(line: 510, column: 25, scope: !989)
!992 = !DILocation(line: 511, column: 9, scope: !989)
!993 = !DILocation(line: 512, column: 31, scope: !994)
!994 = distinct !DILexicalBlock(scope: !982, file: !3, line: 511, column: 16)
!995 = !DILocation(line: 512, column: 13, scope: !994)
!996 = !DILocation(line: 515, column: 27, scope: !997)
!997 = distinct !DILexicalBlock(scope: !976, file: !3, line: 514, column: 12)
!998 = !DILocation(line: 515, column: 9, scope: !997)
!999 = !DILocation(line: 517, column: 1, scope: !971)
!1000 = distinct !DISubprogram(name: "touchCommand", scope: !3, file: !3, line: 520, type: !694, isLocal: false, isDefinition: true, scopeLine: 520, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1001)
!1001 = !{!1002, !1003, !1004}
!1002 = !DILocalVariable(name: "c", arg: 1, scope: !1000, file: !3, line: 520, type: !671)
!1003 = !DILocalVariable(name: "touched", scope: !1000, file: !3, line: 521, type: !6)
!1004 = !DILocalVariable(name: "j", scope: !1005, file: !3, line: 522, type: !6)
!1005 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 522, column: 5)
!1006 = !DILocation(line: 520, column: 27, scope: !1000)
!1007 = !DILocation(line: 521, column: 9, scope: !1000)
!1008 = !DILocation(line: 522, column: 14, scope: !1005)
!1009 = !DILocation(line: 522, column: 10, scope: !1005)
!1010 = !DILocation(line: 522, column: 28, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 522, column: 5)
!1012 = !{!810, !279, i64 64}
!1013 = !DILocation(line: 522, column: 23, scope: !1011)
!1014 = !DILocation(line: 522, column: 5, scope: !1005)
!1015 = !DILocation(line: 0, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 523, column: 13)
!1017 = !DILocation(line: 524, column: 24, scope: !1000)
!1018 = !DILocation(line: 524, column: 5, scope: !1000)
!1019 = !DILocation(line: 525, column: 1, scope: !1000)
!1020 = !DILocation(line: 523, column: 30, scope: !1016)
!1021 = !DILocation(line: 523, column: 36, scope: !1016)
!1022 = !DILocation(line: 523, column: 33, scope: !1016)
!1023 = !DILocation(line: 523, column: 13, scope: !1016)
!1024 = !DILocation(line: 523, column: 45, scope: !1016)
!1025 = !DILocation(line: 523, column: 13, scope: !1011)
!1026 = !DILocation(line: 523, column: 61, scope: !1016)
!1027 = !DILocation(line: 523, column: 54, scope: !1016)
!1028 = !DILocation(line: 0, scope: !1000)
!1029 = !DILocation(line: 522, column: 35, scope: !1011)
!1030 = !DILocation(line: 522, column: 5, scope: !1011)
!1031 = distinct !{!1031, !1014, !1032}
!1032 = !DILocation(line: 523, column: 61, scope: !1005)
