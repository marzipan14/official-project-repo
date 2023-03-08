; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/evict.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/evict.c"
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
%struct.evictionPoolEntry = type { i64, i8*, i8*, i32 }
%struct.listIter = type { %struct.listNode*, i32 }

@server = external dso_local local_unnamed_addr global %struct.redisServer, align 8
@EvictionPoolLRU = internal unnamed_addr global %struct.evictionPoolEntry* null, align 8, !dbg !0
@.str = private unnamed_addr constant [73 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/evict.c\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Unknown eviction policy in evictionPoolPopulate()\00", align 1
@freeMemoryIfNeeded.next_db = internal unnamed_addr global i32 0, align 4, !dbg !60
@.str.2 = private unnamed_addr constant [13 x i8] c"eviction-del\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"evicted\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"eviction-cycle\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @getLRUClock() local_unnamed_addr #0 !dbg !223 {
  %1 = tail call i64 @mstime() #6, !dbg !226
  %2 = sdiv i64 %1, 1000, !dbg !227
  %3 = trunc i64 %2 to i32, !dbg !228
  %4 = and i32 %3, 16777215, !dbg !228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !229
  ret i32 %4, !dbg !229
}

; Function Attrs: noredzone
declare dso_local i64 @mstime() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @LRU_CLOCK() local_unnamed_addr #0 !dbg !230 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !233
  %1 = load atomic i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 11) monotonic, align 8, !dbg !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !240
  ret i32 %1, !dbg !240
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i64 @estimateObjectIdleTime(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !241 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !248
  %2 = load atomic i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 11) monotonic, align 8, !dbg !250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !253
  %3 = zext i32 %2 to i64, !dbg !254
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !256
  %5 = load i32, i32* %4, align 8, !dbg !256
  %6 = lshr i32 %5, 8, !dbg !256
  %7 = icmp ult i32 %2, %6, !dbg !258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  %8 = zext i32 %6 to i64, !dbg !260
  %9 = xor i32 %6, 16777215, !dbg !261
  %10 = zext i32 %9 to i64, !dbg !263
  %11 = sub nsw i64 0, %8, !dbg !259
  %12 = select i1 %7, i64 %10, i64 %11, !dbg !259
  %13 = add nsw i64 %12, %3, !dbg !259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  %14 = mul nsw i64 %13, 1000, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  ret i64 %14, !dbg !267
}

; Function Attrs: noredzone nounwind
define dso_local void @evictionPoolAlloc() local_unnamed_addr #0 !dbg !268 {
  %1 = tail call i8* @zmalloc(i64 512) #6, !dbg !274
  %2 = bitcast i8* %1 to %struct.evictionPoolEntry*, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  br label %3, !dbg !279

; <label>:3:                                      ; preds = %3, %0
  %4 = phi i64 [ 0, %0 ], [ %10, %3 ]
  %5 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %2, i64 %4, i32 0, !dbg !280
  store i64 0, i64* %5, align 8, !dbg !283, !tbaa !284
  %6 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %2, i64 %4, i32 1, !dbg !291
  store i8* null, i8** %6, align 8, !dbg !292, !tbaa !293
  %7 = tail call i8* @sdsnewlen(i8* null, i64 255) #6, !dbg !294
  %8 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %2, i64 %4, i32 2, !dbg !295
  store i8* %7, i8** %8, align 8, !dbg !296, !tbaa !297
  %9 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %2, i64 %4, i32 3, !dbg !298
  store i32 0, i32* %9, align 8, !dbg !299, !tbaa !300
  %10 = add nuw nsw i64 %4, 1, !dbg !301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  %11 = icmp eq i64 %10, 16, !dbg !303
  br i1 %11, label %12, label %3, !dbg !279, !llvm.loop !304

; <label>:12:                                     ; preds = %3
  store i8* %1, i8** bitcast (%struct.evictionPoolEntry** @EvictionPoolLRU to i8**), align 8, !dbg !306, !tbaa !307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  ret void, !dbg !308
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @evictionPoolPopulate(i32, %struct.dict*, %struct.dict*, %struct.evictionPoolEntry*) local_unnamed_addr #0 !dbg !309 {
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 229), align 4, !dbg !345, !tbaa !346
  %6 = zext i32 %5 to i64, !dbg !353
  %7 = alloca %struct.dictEntry*, i64 %6, align 16, !dbg !353
  %8 = call i32 @dictGetSomeKeys(%struct.dict* %1, %struct.dictEntry** nonnull %7, i32 %5) #6, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  %9 = icmp sgt i32 %8, 0, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  br i1 %9, label %10, label %236, !dbg !362

; <label>:10:                                     ; preds = %4
  %11 = icmp eq %struct.dict* %1, %2
  %12 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 15, i32 1
  %13 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 15, i32 2
  %14 = bitcast i8** %13 to i64*
  %15 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 0, i32 2
  %16 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 0, i32 1
  %17 = bitcast %struct.evictionPoolEntry* %3 to i8*
  %18 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 1
  %19 = bitcast %struct.evictionPoolEntry* %18 to i8*
  %20 = sext i32 %8 to i64, !dbg !362
  br label %21, !dbg !362

; <label>:21:                                     ; preds = %10, %233
  %22 = phi i64 [ 0, %10 ], [ %234, %233 ]
  %23 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %7, i64 %22, !dbg !363
  %24 = load %struct.dictEntry*, %struct.dictEntry** %23, align 8, !dbg !363, !tbaa !307
  %25 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %24, i64 0, i32 0, !dbg !365
  %26 = load i8*, i8** %25, align 8, !dbg !365, !tbaa !366
  %27 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !369, !tbaa !371
  %28 = icmp eq i32 %27, 512, !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !374
  br i1 %28, label %29, label %31, !dbg !373

; <label>:29:                                     ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !378
  %30 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %24, i64 0, i32 1, i32 0, !dbg !380
  br label %93, !dbg !378

; <label>:31:                                     ; preds = %21
  br i1 %11, label %35, label %32, !dbg !383

; <label>:32:                                     ; preds = %31
  %33 = call %struct.dictEntry* @dictFind(%struct.dict* %2, i8* %26) #6, !dbg !384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !386
  %34 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !387, !tbaa !371
  br label %35, !dbg !386

; <label>:35:                                     ; preds = %32, %31
  %36 = phi i32 [ %34, %32 ], [ %27, %31 ], !dbg !387
  %37 = phi %struct.dictEntry* [ %33, %32 ], [ %24, %31 ], !dbg !388
  %38 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %37, i64 0, i32 1, i32 0, !dbg !389
  %39 = bitcast i8** %38 to %struct.redisObject**, !dbg !389
  %40 = load %struct.redisObject*, %struct.redisObject** %39, align 8, !dbg !389, !tbaa !390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  %41 = and i32 %36, 1, !dbg !392
  %42 = icmp eq i32 %41, 0, !dbg !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !393
  br i1 %42, label %57, label %43, !dbg !393

; <label>:43:                                     ; preds = %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  %44 = load atomic i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 11) monotonic, align 8, !dbg !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  %45 = zext i32 %44 to i64, !dbg !403
  %46 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %40, i64 0, i32 0, !dbg !405
  %47 = load i32, i32* %46, align 8, !dbg !405
  %48 = lshr i32 %47, 8, !dbg !405
  %49 = icmp ult i32 %44, %48, !dbg !406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  %50 = zext i32 %48 to i64, !dbg !408
  %51 = xor i32 %48, 16777215, !dbg !409
  %52 = zext i32 %51 to i64, !dbg !410
  %53 = sub nsw i64 0, %50, !dbg !407
  %54 = select i1 %49, i64 %52, i64 %53, !dbg !407
  %55 = add nsw i64 %54, %45, !dbg !407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  %56 = mul nsw i64 %55, 1000, !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  br label %99, !dbg !415

; <label>:57:                                     ; preds = %35
  %58 = and i32 %36, 2, !dbg !416
  %59 = icmp eq i32 %58, 0, !dbg !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  br i1 %59, label %91, label %60, !dbg !376

; <label>:60:                                     ; preds = %57
  %61 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %40, i64 0, i32 0, !dbg !428
  %62 = load i32, i32* %61, align 8, !dbg !428
  %63 = lshr i32 %62, 8, !dbg !428
  %64 = and i32 %63, 255, !dbg !429
  %65 = zext i32 %64 to i64, !dbg !430
  %66 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 231), align 4, !dbg !432, !tbaa !433
  %67 = icmp eq i32 %66, 0, !dbg !434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !434
  br i1 %67, label %86, label %68, !dbg !434

; <label>:68:                                     ; preds = %60
  %69 = lshr i32 %62, 16, !dbg !435
  %70 = zext i32 %69 to i64, !dbg !436
  %71 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !446, !tbaa !451
  %72 = sdiv i64 %71, 60, !dbg !452
  %73 = and i64 %72, 65535, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !454
  %74 = icmp ult i64 %73, %70, !dbg !456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  %75 = xor i64 %70, 65535, !dbg !459
  %76 = sub nsw i64 0, %70, !dbg !458
  %77 = select i1 %74, i64 %75, i64 %76, !dbg !458
  %78 = add nsw i64 %73, %77, !dbg !458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  %79 = sext i32 %66 to i64, !dbg !462
  %80 = udiv i64 %78, %79, !dbg !463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !434
  %81 = icmp ult i64 %78, %79, !dbg !465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  br i1 %81, label %88, label %82, !dbg !467

; <label>:82:                                     ; preds = %68
  %83 = icmp ugt i64 %80, %65, !dbg !468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !469
  br i1 %83, label %86, label %84, !dbg !469

; <label>:84:                                     ; preds = %82
  %85 = sub i64 %65, %80, !dbg !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !469
  br label %86, !dbg !469

; <label>:86:                                     ; preds = %82, %84, %60
  %87 = phi i64 [ %65, %60 ], [ %85, %84 ], [ 0, %82 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !471
  br label %88, !dbg !472

; <label>:88:                                     ; preds = %86, %68
  %89 = phi i64 [ %65, %68 ], [ %87, %86 ], !dbg !460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  %90 = sub i64 255, %89, !dbg !473
  br label %99, !dbg !474

; <label>:91:                                     ; preds = %57
  %92 = icmp eq i32 %36, 512, !dbg !475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !378
  br i1 %92, label %93, label %98, !dbg !378

; <label>:93:                                     ; preds = %29, %91
  %94 = phi i8** [ %30, %29 ], [ %38, %91 ], !dbg !380
  %95 = bitcast i8** %94 to i64*, !dbg !380
  %96 = load i64, i64* %95, align 8, !dbg !380, !tbaa !390
  %97 = xor i64 %96, -1, !dbg !476
  br label %99

; <label>:98:                                     ; preds = %91
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 202, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !477
  call void @_exit(i32 1) #7, !dbg !477
  unreachable

; <label>:99:                                     ; preds = %88, %93, %43
  %100 = phi i64 [ %56, %43 ], [ %90, %88 ], [ %97, %93 ], !dbg !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !482
  br label %101, !dbg !482

; <label>:101:                                    ; preds = %99, %110
  %102 = phi i64 [ 0, %99 ], [ %111, %110 ]
  %103 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %102, i32 1, !dbg !483
  %104 = load i8*, i8** %103, align 8, !dbg !483, !tbaa !293
  %105 = icmp eq i8* %104, null, !dbg !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  br i1 %105, label %113, label %106, !dbg !485

; <label>:106:                                    ; preds = %101
  %107 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %102, i32 0, !dbg !486
  %108 = load i64, i64* %107, align 8, !dbg !486, !tbaa !284
  %109 = icmp ult i64 %108, %100, !dbg !487
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  br i1 %109, label %110, label %114, !dbg !481

; <label>:110:                                    ; preds = %106
  %111 = add nuw nsw i64 %102, 1, !dbg !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  %112 = icmp ult i64 %111, 16, !dbg !489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !482
  br i1 %112, label %101, label %120, !dbg !482, !llvm.loop !490

; <label>:113:                                    ; preds = %101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  br label %114

; <label>:114:                                    ; preds = %106, %113
  %115 = trunc i64 %102 to i32, !dbg !480
  %116 = icmp eq i32 %115, 0, !dbg !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !492
  br i1 %116, label %117, label %122, !dbg !492

; <label>:117:                                    ; preds = %114
  %118 = load i8*, i8** %12, align 8, !dbg !493, !tbaa !293
  %119 = icmp eq i8* %118, null, !dbg !494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  br i1 %119, label %122, label %233, !dbg !495

; <label>:120:                                    ; preds = %110
  %121 = trunc i64 %111 to i32, !dbg !480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !496
  br label %127

; <label>:122:                                    ; preds = %117, %114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !496
  %123 = and i64 %102, 4294967295, !dbg !497
  %124 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %123, i32 1, !dbg !498
  %125 = load i8*, i8** %124, align 8, !dbg !498, !tbaa !293
  %126 = icmp eq i8* %125, null, !dbg !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  br i1 %126, label %157, label %127, !dbg !500

; <label>:127:                                    ; preds = %120, %122
  %128 = phi i32 [ %121, %120 ], [ %115, %122 ]
  %129 = load i8*, i8** %12, align 8, !dbg !501, !tbaa !293
  %130 = icmp eq i8* %129, null, !dbg !502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  br i1 %130, label %131, label %144, !dbg !503

; <label>:131:                                    ; preds = %127
  %132 = load i64, i64* %14, align 8, !dbg !504, !tbaa !297
  %133 = zext i32 %128 to i64, !dbg !506
  %134 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %133, !dbg !506
  %135 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %134, i64 1, !dbg !507
  %136 = bitcast %struct.evictionPoolEntry* %135 to i8*, !dbg !508
  %137 = bitcast %struct.evictionPoolEntry* %134 to i8*, !dbg !509
  %138 = sub nsw i32 15, %128, !dbg !510
  %139 = sext i32 %138 to i64, !dbg !511
  %140 = shl nsw i64 %139, 5, !dbg !512
  %141 = call i8* @memmove(i8* nonnull %136, i8* %137, i64 %140) #6, !dbg !513
  %142 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %133, i32 2, !dbg !514
  %143 = bitcast i8** %142 to i64*, !dbg !515
  store i64 %132, i64* %143, align 8, !dbg !515, !tbaa !297
  br label %155, !dbg !516

; <label>:144:                                    ; preds = %127
  %145 = add nsw i32 %128, -1, !dbg !517
  %146 = load i8*, i8** %15, align 8, !dbg !518, !tbaa !297
  %147 = load i8*, i8** %16, align 8, !dbg !520, !tbaa !293
  %148 = icmp eq i8* %147, %146, !dbg !522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  br i1 %148, label %150, label %149, !dbg !523

; <label>:149:                                    ; preds = %144
  call void @sdsfree(i8* %147) #6, !dbg !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !524
  br label %150, !dbg !524

; <label>:150:                                    ; preds = %144, %149
  %151 = sext i32 %145 to i64, !dbg !525
  %152 = shl nsw i64 %151, 5, !dbg !526
  %153 = call i8* @memmove(i8* nonnull %17, i8* nonnull %19, i64 %152) #6, !dbg !527
  %154 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %151, i32 2, !dbg !528
  store i8* %146, i8** %154, align 8, !dbg !529, !tbaa !297
  br label %155

; <label>:155:                                    ; preds = %131, %150
  %156 = phi i32 [ %145, %150 ], [ %128, %131 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %157, !dbg !530

; <label>:157:                                    ; preds = %155, %122
  %158 = phi i32 [ %115, %122 ], [ %156, %155 ], !dbg !541
  %159 = getelementptr inbounds i8, i8* %26, i64 -1, !dbg !530
  %160 = load i8, i8* %159, align 1, !dbg !530, !tbaa !390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  %161 = trunc i8 %160 to i3, !dbg !544
  switch i3 %161, label %183 [
    i3 0, label %162
    i3 1, label %165
    i3 2, label %169
    i3 3, label %174
    i3 -4, label %179
  ], !dbg !544

; <label>:162:                                    ; preds = %157
  %163 = lshr i8 %160, 3, !dbg !545
  %164 = zext i8 %163 to i64, !dbg !545
  br label %184, !dbg !547

; <label>:165:                                    ; preds = %157
  %166 = getelementptr inbounds i8, i8* %26, i64 -3, !dbg !548
  %167 = load i8, i8* %166, align 1, !dbg !549, !tbaa !390
  %168 = zext i8 %167 to i64, !dbg !548
  br label %184, !dbg !550

; <label>:169:                                    ; preds = %157
  %170 = getelementptr inbounds i8, i8* %26, i64 -5, !dbg !551
  %171 = bitcast i8* %170 to i16*, !dbg !552
  %172 = load i16, i16* %171, align 1, !dbg !552, !tbaa !553
  %173 = zext i16 %172 to i64, !dbg !551
  br label %184, !dbg !555

; <label>:174:                                    ; preds = %157
  %175 = getelementptr inbounds i8, i8* %26, i64 -9, !dbg !556
  %176 = bitcast i8* %175 to i32*, !dbg !557
  %177 = load i32, i32* %176, align 1, !dbg !557, !tbaa !558
  %178 = zext i32 %177 to i64, !dbg !556
  br label %184, !dbg !559

; <label>:179:                                    ; preds = %157
  %180 = getelementptr inbounds i8, i8* %26, i64 -17, !dbg !560
  %181 = bitcast i8* %180 to i64*, !dbg !561
  %182 = load i64, i64* %181, align 1, !dbg !561, !tbaa !562
  br label %184, !dbg !563

; <label>:183:                                    ; preds = %157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !567
  br label %192, !dbg !567

; <label>:184:                                    ; preds = %162, %165, %169, %174, %179
  %185 = phi i64 [ %182, %179 ], [ %178, %174 ], [ %173, %169 ], [ %168, %165 ], [ %164, %162 ], !dbg !568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  %186 = trunc i64 %185 to i32, !dbg !569
  %187 = icmp sgt i32 %186, 255, !dbg !570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !567
  br i1 %187, label %188, label %192, !dbg !567

; <label>:188:                                    ; preds = %184
  %189 = call i8* @sdsdup(i8* nonnull %26) #6, !dbg !572
  %190 = sext i32 %158 to i64, !dbg !574
  %191 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %190, i32 1, !dbg !575
  store i8* %189, i8** %191, align 8, !dbg !576, !tbaa !293
  br label %229, !dbg !577

; <label>:192:                                    ; preds = %183, %184
  %193 = phi i64 [ 0, %183 ], [ %185, %184 ]
  %194 = sext i32 %158 to i64, !dbg !578
  %195 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %194, i32 2, !dbg !580
  %196 = load i8*, i8** %195, align 8, !dbg !580, !tbaa !297
  %197 = shl i64 %193, 32, !dbg !581
  %198 = add i64 %197, 4294967296, !dbg !581
  %199 = ashr exact i64 %198, 32, !dbg !581
  %200 = call i8* @memcpy(i8* %196, i8* nonnull %26, i64 %199) #6, !dbg !582
  %201 = load i8*, i8** %195, align 8, !dbg !583, !tbaa !297
  %202 = ashr exact i64 %197, 32, !dbg !584
  %203 = getelementptr inbounds i8, i8* %201, i64 -1, !dbg !598
  %204 = load i8, i8* %203, align 1, !dbg !598, !tbaa !390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  %205 = trunc i8 %204 to i3, !dbg !600
  switch i3 %205, label %224 [
    i3 0, label %206
    i3 1, label %209
    i3 2, label %212
    i3 3, label %216
    i3 -4, label %220
  ], !dbg !600

; <label>:206:                                    ; preds = %192
  %207 = trunc i64 %193 to i8, !dbg !602
  %208 = shl i8 %207, 3, !dbg !602
  store i8 %208, i8* %203, align 1, !dbg !603, !tbaa !390
  br label %223, !dbg !604

; <label>:209:                                    ; preds = %192
  %210 = trunc i64 %202 to i8, !dbg !605
  %211 = getelementptr inbounds i8, i8* %201, i64 -3, !dbg !606
  store i8 %210, i8* %211, align 1, !dbg !607, !tbaa !390
  br label %223, !dbg !608

; <label>:212:                                    ; preds = %192
  %213 = trunc i64 %202 to i16, !dbg !609
  %214 = getelementptr inbounds i8, i8* %201, i64 -5, !dbg !610
  %215 = bitcast i8* %214 to i16*, !dbg !611
  store i16 %213, i16* %215, align 1, !dbg !612, !tbaa !553
  br label %223, !dbg !613

; <label>:216:                                    ; preds = %192
  %217 = trunc i64 %202 to i32, !dbg !614
  %218 = getelementptr inbounds i8, i8* %201, i64 -9, !dbg !615
  %219 = bitcast i8* %218 to i32*, !dbg !616
  store i32 %217, i32* %219, align 1, !dbg !617, !tbaa !558
  br label %223, !dbg !618

; <label>:220:                                    ; preds = %192
  %221 = getelementptr inbounds i8, i8* %201, i64 -17, !dbg !619
  %222 = bitcast i8* %221 to i64*, !dbg !620
  store i64 %202, i64* %222, align 1, !dbg !621, !tbaa !562
  br label %223, !dbg !622

; <label>:223:                                    ; preds = %220, %216, %212, %209, %206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  br label %224, !dbg !624

; <label>:224:                                    ; preds = %223, %192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  %225 = bitcast i8** %195 to i64*, !dbg !625
  %226 = load i64, i64* %225, align 8, !dbg !625, !tbaa !297
  %227 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %194, i32 1, !dbg !626
  %228 = bitcast i8** %227 to i64*, !dbg !627
  store i64 %226, i64* %228, align 8, !dbg !627, !tbaa !293
  br label %229

; <label>:229:                                    ; preds = %224, %188
  %230 = phi i64 [ %194, %224 ], [ %190, %188 ], !dbg !628
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %231 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %230, i32 0, !dbg !629
  store i64 %100, i64* %231, align 8, !dbg !630, !tbaa !284
  %232 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %230, i32 3, !dbg !631
  store i32 %0, i32* %232, align 8, !dbg !632, !tbaa !300
  br label %233, !dbg !633

; <label>:233:                                    ; preds = %117, %229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !634
  %234 = add nuw nsw i64 %22, 1, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  %235 = icmp slt i64 %234, %20, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  br i1 %235, label %21, label %236, !dbg !362, !llvm.loop !638

; <label>:236:                                    ; preds = %233, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  ret void, !dbg !640
}

; Function Attrs: noredzone
declare dso_local i32 @dictGetSomeKeys(%struct.dict*, %struct.dictEntry**, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @LFUDecrAndReturn(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !418 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !642
  %3 = load i32, i32* %2, align 8, !dbg !642
  %4 = lshr i32 %3, 8, !dbg !642
  %5 = and i32 %4, 255, !dbg !643
  %6 = zext i32 %5 to i64, !dbg !644
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 231), align 4, !dbg !646, !tbaa !433
  %8 = icmp eq i32 %7, 0, !dbg !647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !647
  br i1 %8, label %27, label %9, !dbg !647

; <label>:9:                                      ; preds = %1
  %10 = lshr i32 %3, 16, !dbg !648
  %11 = zext i32 %10 to i64, !dbg !649
  %12 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !653, !tbaa !451
  %13 = sdiv i64 %12, 60, !dbg !655
  %14 = and i64 %13, 65535, !dbg !656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  %15 = icmp ult i64 %14, %11, !dbg !659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !660
  %16 = xor i64 %11, 65535, !dbg !661
  %17 = sub nsw i64 0, %11, !dbg !660
  %18 = select i1 %15, i64 %16, i64 %17, !dbg !660
  %19 = add nsw i64 %14, %18, !dbg !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !663
  %20 = sext i32 %7 to i64, !dbg !664
  %21 = udiv i64 %19, %20, !dbg !665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !647
  %22 = icmp ult i64 %19, %20, !dbg !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  br i1 %22, label %29, label %23, !dbg !668

; <label>:23:                                     ; preds = %9
  %24 = icmp ugt i64 %21, %6, !dbg !669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !670
  br i1 %24, label %27, label %25, !dbg !670

; <label>:25:                                     ; preds = %23
  %26 = sub i64 %6, %21, !dbg !671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !670
  br label %27, !dbg !670

; <label>:27:                                     ; preds = %25, %23, %1
  %28 = phi i64 [ %6, %1 ], [ %26, %25 ], [ 0, %23 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  br label %29, !dbg !673

; <label>:29:                                     ; preds = %27, %9
  %30 = phi i64 [ %6, %9 ], [ %28, %27 ], !dbg !662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  ret i64 %30, !dbg !673
}

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @sdsdup(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: norecurse noredzone nounwind
define dso_local i64 @LFUGetTimeInMinutes() local_unnamed_addr #5 !dbg !447 {
  %1 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !674, !tbaa !451
  %2 = sdiv i64 %1, 60, !dbg !675
  %3 = and i64 %2, 65535, !dbg !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !677
  ret i64 %3, !dbg !677
}

; Function Attrs: noredzone nounwind
define dso_local i64 @LFUTimeElapsed(i64) local_unnamed_addr #0 !dbg !439 {
  %2 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !679, !tbaa !451
  %3 = sdiv i64 %2, 60, !dbg !681
  %4 = and i64 %3, 65535, !dbg !682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  %5 = icmp ult i64 %4, %0, !dbg !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !686
  %6 = select i1 %5, i64 65535, i64 0, !dbg !686
  %7 = sub i64 %6, %0, !dbg !686
  %8 = add i64 %4, %7, !dbg !686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !688
  ret i64 %8, !dbg !688
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @LFULogIncr(i8 zeroext) local_unnamed_addr #0 !dbg !689 {
  %2 = icmp eq i8 %0, -1, !dbg !698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !700
  br i1 %2, label %22, label %3, !dbg !700

; <label>:3:                                      ; preds = %1
  %4 = zext i8 %0 to i32, !dbg !701
  %5 = tail call i32 @rand() #6, !dbg !702
  %6 = sitofp i32 %5 to double, !dbg !703
  %7 = fdiv double %6, 0x41DFFFFFFFC00000, !dbg !704
  %8 = add nsw i32 %4, -5, !dbg !706
  %9 = sitofp i32 %8 to double, !dbg !707
  %10 = icmp ult i8 %0, 5, !dbg !709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !711
  br i1 %10, label %11, label %12, !dbg !711

; <label>:11:                                     ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !712
  br label %12, !dbg !712

; <label>:12:                                     ; preds = %11, %3
  %13 = phi double [ 0.000000e+00, %11 ], [ %9, %3 ], !dbg !713
  %14 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 230), align 8, !dbg !714, !tbaa !715
  %15 = sitofp i32 %14 to double, !dbg !716
  %16 = fmul double %13, %15, !dbg !717
  %17 = fadd double %16, 1.000000e+00, !dbg !718
  %18 = fdiv double 1.000000e+00, %17, !dbg !719
  %19 = fcmp olt double %7, %18, !dbg !721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  br i1 %19, label %20, label %22, !dbg !723

; <label>:20:                                     ; preds = %12
  %21 = add i8 %0, 1, !dbg !724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  br label %22, !dbg !725

; <label>:22:                                     ; preds = %12, %20, %1
  %23 = phi i8 [ -1, %1 ], [ %21, %20 ], [ %0, %12 ], !dbg !713
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  ret i8 %23, !dbg !726
}

; Function Attrs: noredzone
declare dso_local i32 @rand() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @freeMemoryGetNotCountedMemory() local_unnamed_addr #0 !dbg !727 {
  %1 = alloca %struct.listIter, align 8
  %2 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !867, !tbaa !868
  %3 = getelementptr inbounds %struct.list, %struct.list* %2, i64 0, i32 5, !dbg !867
  %4 = load i64, i64* %3, align 8, !dbg !867, !tbaa !869
  %5 = trunc i64 %4 to i32, !dbg !867
  %6 = icmp eq i32 %5, 0, !dbg !872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !873
  br i1 %6, label %23, label %7, !dbg !873

; <label>:7:                                      ; preds = %0
  %8 = bitcast %struct.listIter* %1 to i8*, !dbg !874
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #8, !dbg !874
  call void @listRewind(%struct.list* %2, %struct.listIter* nonnull %1) #6, !dbg !876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  %9 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #6, !dbg !878
  %10 = icmp eq %struct.listNode* %9, null, !dbg !877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  br i1 %10, label %21, label %11, !dbg !877

; <label>:11:                                     ; preds = %7, %11
  %12 = phi %struct.listNode* [ %19, %11 ], [ %9, %7 ]
  %13 = phi i64 [ %18, %11 ], [ 0, %7 ]
  %14 = getelementptr inbounds %struct.listNode, %struct.listNode* %12, i64 0, i32 2, !dbg !880
  %15 = bitcast i8** %14 to %struct.client**, !dbg !880
  %16 = load %struct.client*, %struct.client** %15, align 8, !dbg !880, !tbaa !881
  %17 = call i64 @getClientOutputBufferMemoryUsage(%struct.client* %16) #6, !dbg !884
  %18 = add i64 %17, %13, !dbg !885
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  %19 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #6, !dbg !878
  %20 = icmp eq %struct.listNode* %19, null, !dbg !877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  br i1 %20, label %21, label %11, !dbg !877, !llvm.loop !886

; <label>:21:                                     ; preds = %11, %7
  %22 = phi i64 [ 0, %7 ], [ %18, %11 ], !dbg !888
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #8, !dbg !889
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  br label %23, !dbg !890

; <label>:23:                                     ; preds = %0, %21
  %24 = phi i64 [ %22, %21 ], [ 0, %0 ], !dbg !866
  %25 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !891, !tbaa !893
  %26 = icmp eq i32 %25, 0, !dbg !894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  br i1 %26, label %58, label %27, !dbg !895

; <label>:27:                                     ; preds = %23
  %28 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !896, !tbaa !898
  %29 = getelementptr inbounds i8, i8* %28, i64 -1, !dbg !905
  %30 = load i8, i8* %29, align 1, !dbg !905, !tbaa !390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !907
  %31 = trunc i8 %30 to i3, !dbg !907
  switch i3 %31, label %53 [
    i3 0, label %32
    i3 1, label %35
    i3 2, label %39
    i3 3, label %44
    i3 -4, label %49
  ], !dbg !907

; <label>:32:                                     ; preds = %27
  %33 = lshr i8 %30, 3, !dbg !908
  %34 = zext i8 %33 to i64, !dbg !908
  br label %53, !dbg !910

; <label>:35:                                     ; preds = %27
  %36 = getelementptr inbounds i8, i8* %28, i64 -2, !dbg !911
  %37 = load i8, i8* %36, align 1, !dbg !911, !tbaa !390
  %38 = zext i8 %37 to i64, !dbg !912
  br label %53, !dbg !913

; <label>:39:                                     ; preds = %27
  %40 = getelementptr inbounds i8, i8* %28, i64 -3, !dbg !914
  %41 = bitcast i8* %40 to i16*, !dbg !914
  %42 = load i16, i16* %41, align 1, !dbg !914, !tbaa !553
  %43 = zext i16 %42 to i64, !dbg !915
  br label %53, !dbg !916

; <label>:44:                                     ; preds = %27
  %45 = getelementptr inbounds i8, i8* %28, i64 -5, !dbg !917
  %46 = bitcast i8* %45 to i32*, !dbg !917
  %47 = load i32, i32* %46, align 1, !dbg !917, !tbaa !558
  %48 = zext i32 %47 to i64, !dbg !918
  br label %53, !dbg !919

; <label>:49:                                     ; preds = %27
  %50 = getelementptr inbounds i8, i8* %28, i64 -9, !dbg !920
  %51 = bitcast i8* %50 to i64*, !dbg !920
  %52 = load i64, i64* %51, align 1, !dbg !920, !tbaa !562
  br label %53, !dbg !921

; <label>:53:                                     ; preds = %27, %32, %35, %39, %44, %49
  %54 = phi i64 [ %52, %49 ], [ %48, %44 ], [ %43, %39 ], [ %38, %35 ], [ %34, %32 ], [ 0, %27 ], !dbg !922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  %55 = call i64 @aofRewriteBufferSize() #6, !dbg !925
  %56 = add i64 %54, %24, !dbg !926
  %57 = add i64 %56, %55, !dbg !927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !928
  br label %58, !dbg !928

; <label>:58:                                     ; preds = %23, %53
  %59 = phi i64 [ %57, %53 ], [ %24, %23 ], !dbg !929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !930
  ret i64 %59, !dbg !930
}

; Function Attrs: noredzone
declare dso_local void @listRewind(%struct.list*, %struct.listIter*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listNext(%struct.listIter*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @getClientOutputBufferMemoryUsage(%struct.client*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @aofRewriteBufferSize() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @getMaxmemoryState(i64*, i64*, i64*, float*) local_unnamed_addr #0 !dbg !931 {
  %5 = tail call i64 @zmalloc_used_memory() #6, !dbg !950
  %6 = icmp eq i64* %0, null, !dbg !952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !954
  br i1 %6, label %8, label %7, !dbg !954

; <label>:7:                                      ; preds = %4
  store i64 %5, i64* %0, align 8, !dbg !955, !tbaa !562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !956
  br label %8, !dbg !956

; <label>:8:                                      ; preds = %4, %7
  %9 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !957, !tbaa !958
  %10 = icmp eq i64 %9, 0, !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !960
  br i1 %10, label %13, label %11, !dbg !960

; <label>:11:                                     ; preds = %8
  %12 = icmp ule i64 %5, %9, !dbg !961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !960
  br label %13, !dbg !960

; <label>:13:                                     ; preds = %8, %11
  %14 = phi i1 [ true, %8 ], [ %12, %11 ]
  %15 = xor i1 %14, true, !dbg !962
  %16 = icmp ne float* %3, null, !dbg !964
  %17 = or i1 %16, %15, !dbg !965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !965
  br i1 %17, label %18, label %47, !dbg !965

; <label>:18:                                     ; preds = %13
  %19 = tail call i64 @freeMemoryGetNotCountedMemory() #9, !dbg !967
  %20 = icmp ugt i64 %5, %19, !dbg !969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !970
  br i1 %20, label %21, label %23, !dbg !970

; <label>:21:                                     ; preds = %18
  %22 = sub i64 %5, %19, !dbg !971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !970
  br label %23, !dbg !970

; <label>:23:                                     ; preds = %18, %21
  %24 = phi i64 [ %22, %21 ], [ 0, %18 ], !dbg !970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !972
  br i1 %16, label %25, label %34, !dbg !972

; <label>:25:                                     ; preds = %23
  %26 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !973, !tbaa !958
  %27 = icmp eq i64 %26, 0, !dbg !977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  br i1 %27, label %32, label %28, !dbg !978

; <label>:28:                                     ; preds = %25
  %29 = uitofp i64 %24 to float, !dbg !979
  %30 = uitofp i64 %26 to float, !dbg !981
  %31 = fdiv float %29, %30, !dbg !982
  br label %32

; <label>:32:                                     ; preds = %25, %28
  %33 = phi float [ %31, %28 ], [ 0.000000e+00, %25 ]
  store float %33, float* %3, align 4, !dbg !983, !tbaa !984
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %34, !dbg !986

; <label>:34:                                     ; preds = %32, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  br i1 %14, label %45, label %35, !dbg !986

; <label>:35:                                     ; preds = %34
  %36 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !987, !tbaa !958
  %37 = icmp ugt i64 %24, %36, !dbg !989
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !990
  br i1 %37, label %38, label %45, !dbg !990

; <label>:38:                                     ; preds = %35
  %39 = sub i64 %24, %36, !dbg !991
  %40 = icmp eq i64* %1, null, !dbg !993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !995
  br i1 %40, label %42, label %41, !dbg !995

; <label>:41:                                     ; preds = %38
  store i64 %24, i64* %1, align 8, !dbg !996, !tbaa !562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  br label %42, !dbg !997

; <label>:42:                                     ; preds = %38, %41
  %43 = icmp eq i64* %2, null, !dbg !998
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1000
  br i1 %43, label %45, label %44, !dbg !1000

; <label>:44:                                     ; preds = %42
  store i64 %39, i64* %2, align 8, !dbg !1001, !tbaa !562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1002
  br label %45, !dbg !1002

; <label>:45:                                     ; preds = %44, %42, %35, %34
  %46 = phi i32 [ 0, %34 ], [ 0, %35 ], [ -1, %42 ], [ -1, %44 ], !dbg !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1004
  br label %47

; <label>:47:                                     ; preds = %13, %45
  %48 = phi i32 [ %46, %45 ], [ 0, %13 ], !dbg !1006
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  ret i32 %48, !dbg !1007
}

; Function Attrs: noredzone
declare dso_local i64 @zmalloc_used_memory() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @freeMemoryIfNeeded() local_unnamed_addr #0 !dbg !62 {
  %1 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !1008, !tbaa !1010
  %2 = icmp ne i8* %1, null, !dbg !1011
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 212), align 8, !dbg !1012
  %4 = icmp ne i32 %3, 0, !dbg !1013
  %5 = and i1 %2, %4, !dbg !1014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1014
  br i1 %5, label %284, label %6, !dbg !1014

; <label>:6:                                      ; preds = %0
  %7 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1015, !tbaa !868
  %8 = getelementptr inbounds %struct.list, %struct.list* %7, i64 0, i32 5, !dbg !1015
  %9 = load i64, i64* %8, align 8, !dbg !1015, !tbaa !869
  %10 = trunc i64 %9 to i32, !dbg !1015
  %11 = tail call i32 @clientsArePaused() #6, !dbg !1017
  %12 = icmp eq i32 %11, 0, !dbg !1017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  br i1 %12, label %13, label %282, !dbg !1019

; <label>:13:                                     ; preds = %6
  %14 = tail call i64 @zmalloc_used_memory() #6, !dbg !1024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1027
  %15 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !1028, !tbaa !958
  %16 = icmp eq i64 %15, 0, !dbg !1029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1030
  br i1 %16, label %27, label %17, !dbg !1030

; <label>:17:                                     ; preds = %13
  %18 = icmp ugt i64 %14, %15, !dbg !1031
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  br i1 %18, label %19, label %28, !dbg !1032

; <label>:19:                                     ; preds = %17
  %20 = tail call i64 @freeMemoryGetNotCountedMemory() #6, !dbg !1034
  %21 = icmp ugt i64 %14, %20, !dbg !1036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1037
  br i1 %21, label %23, label %22, !dbg !1037

; <label>:22:                                     ; preds = %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1039
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1040
  br label %27, !dbg !1040

; <label>:23:                                     ; preds = %19
  %24 = sub i64 %14, %20, !dbg !1041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1039
  %25 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !1042, !tbaa !958
  %26 = icmp ugt i64 %24, %25, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1040
  br i1 %26, label %29, label %27, !dbg !1040

; <label>:27:                                     ; preds = %22, %23, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1044
  br label %28

; <label>:28:                                     ; preds = %27, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1046
  br label %282, !dbg !1047

; <label>:29:                                     ; preds = %23
  %30 = sub i64 %24, %25, !dbg !1048
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1050
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1053
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1046
  %31 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !1055, !tbaa !371
  %32 = icmp eq i32 %31, 1792, !dbg !1057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1058
  br i1 %32, label %268, label %33, !dbg !1058

; <label>:33:                                     ; preds = %29
  %34 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1059, !tbaa !1061
  %35 = icmp eq i64 %34, 0, !dbg !1059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  br i1 %35, label %38, label %36, !dbg !1062

; <label>:36:                                     ; preds = %33
  %37 = tail call i64 @mstime() #6, !dbg !1063
  br label %38, !dbg !1063

; <label>:38:                                     ; preds = %33, %36
  %39 = phi i64 [ %37, %36 ], [ 0, %33 ], !dbg !1063
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1066
  %40 = icmp eq i64 %30, 0, !dbg !1069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1066
  br i1 %40, label %255, label %41, !dbg !1066

; <label>:41:                                     ; preds = %38
  %42 = icmp eq i32 %10, 0
  br label %43, !dbg !1066

; <label>:43:                                     ; preds = %41, %253
  %44 = phi i64 [ 0, %41 ], [ %230, %253 ]
  %45 = phi i64 [ %39, %41 ], [ %227, %253 ]
  %46 = phi i32 [ undef, %41 ], [ %166, %253 ]
  %47 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !1072, !tbaa !371
  %48 = and i32 %47, 3, !dbg !1073
  %49 = icmp ne i32 %48, 0, !dbg !1073
  %50 = icmp eq i32 %47, 512, !dbg !1074
  %51 = or i1 %50, %49, !dbg !1075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1075
  br i1 %51, label %52, label %132, !dbg !1075

; <label>:52:                                     ; preds = %43
  %53 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** @EvictionPoolLRU, align 8, !dbg !1076, !tbaa !307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1078
  br label %54, !dbg !1078

; <label>:54:                                     ; preds = %52, %128
  %55 = phi i32 [ %46, %52 ], [ %130, %128 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1081
  %56 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !1083, !tbaa !1085
  %57 = icmp sgt i32 %56, 0, !dbg !1086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1087
  br i1 %57, label %59, label %58, !dbg !1087

; <label>:58:                                     ; preds = %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1089
  br label %93, !dbg !1088

; <label>:59:                                     ; preds = %54, %84
  %60 = phi i32 [ %85, %84 ], [ %56, %54 ]
  %61 = phi i64 [ %87, %84 ], [ 0, %54 ]
  %62 = phi i64 [ %86, %84 ], [ 0, %54 ]
  %63 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !1091, !tbaa !1093
  %64 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %63, i64 %61, !dbg !1094
  %65 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !1096, !tbaa !371
  %66 = and i32 %65, 4, !dbg !1097
  %67 = icmp eq i32 %66, 0, !dbg !1097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1098
  %68 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %63, i64 %61, i32 1, !dbg !1099
  %69 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %64, i64 0, i32 0, !dbg !1100
  %70 = select i1 %67, %struct.dict** %68, %struct.dict** %69, !dbg !1098
  %71 = load %struct.dict*, %struct.dict** %70, align 8, !dbg !1101, !tbaa !307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1098
  %72 = getelementptr inbounds %struct.dict, %struct.dict* %71, i64 0, i32 2, i64 0, i32 3, !dbg !1103
  %73 = load i64, i64* %72, align 8, !dbg !1103, !tbaa !1105
  %74 = getelementptr inbounds %struct.dict, %struct.dict* %71, i64 0, i32 2, i64 1, i32 3, !dbg !1103
  %75 = load i64, i64* %74, align 8, !dbg !1103, !tbaa !1105
  %76 = add i64 %75, %73, !dbg !1103
  %77 = icmp eq i64 %76, 0, !dbg !1108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1109
  br i1 %77, label %84, label %78, !dbg !1109

; <label>:78:                                     ; preds = %59
  %79 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %64, i64 0, i32 0, !dbg !1110
  %80 = load %struct.dict*, %struct.dict** %79, align 8, !dbg !1110, !tbaa !1112
  %81 = trunc i64 %61 to i32, !dbg !1114
  tail call void @evictionPoolPopulate(i32 %81, %struct.dict* %71, %struct.dict* %80, %struct.evictionPoolEntry* %53) #9, !dbg !1114
  %82 = add i64 %76, %62, !dbg !1115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1116
  %83 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !1083, !tbaa !1085
  br label %84, !dbg !1116

; <label>:84:                                     ; preds = %59, %78
  %85 = phi i32 [ %83, %78 ], [ %60, %59 ], !dbg !1083
  %86 = phi i64 [ %82, %78 ], [ %62, %59 ], !dbg !1117
  %87 = add nuw nsw i64 %61, 1, !dbg !1118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1119
  %88 = sext i32 %85 to i64, !dbg !1086
  %89 = icmp slt i64 %87, %88, !dbg !1086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1087
  br i1 %89, label %59, label %90, !dbg !1087, !llvm.loop !1120

; <label>:90:                                     ; preds = %84
  %91 = icmp eq i64 %86, 0, !dbg !1122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1089
  br i1 %91, label %93, label %92, !dbg !1088

; <label>:92:                                     ; preds = %90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  br label %94, !dbg !1125

; <label>:93:                                     ; preds = %90, %58
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %164

; <label>:94:                                     ; preds = %124, %92
  %95 = phi i64 [ 15, %92 ], [ %126, %124 ]
  %96 = phi i32 [ %55, %92 ], [ %125, %124 ]
  %97 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %53, i64 %95, i32 1, !dbg !1126
  %98 = load i8*, i8** %97, align 8, !dbg !1126, !tbaa !293
  %99 = icmp eq i8* %98, null, !dbg !1130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  br i1 %99, label %124, label %100, !dbg !1131

; <label>:100:                                    ; preds = %94
  %101 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %53, i64 %95, i32 3, !dbg !1132
  %102 = load i32, i32* %101, align 8, !dbg !1132, !tbaa !300
  %103 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !1133, !tbaa !371
  %104 = and i32 %103, 4, !dbg !1135
  %105 = icmp eq i32 %104, 0, !dbg !1135
  %106 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !1136, !tbaa !1093
  %107 = sext i32 %102 to i64, !dbg !1136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1138
  %108 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %106, i64 %107, i32 1, !dbg !1139
  %109 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %106, i64 %107, i32 0, !dbg !1141
  %110 = select i1 %105, %struct.dict** %108, %struct.dict** %109, !dbg !1138
  %111 = load %struct.dict*, %struct.dict** %110, align 8, !dbg !1143, !tbaa !307
  %112 = tail call %struct.dictEntry* @dictFind(%struct.dict* %111, i8* nonnull %98) #6, !dbg !1143
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %113 = load i8*, i8** %97, align 8, !dbg !1144, !tbaa !293
  %114 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %53, i64 %95, i32 2, !dbg !1146
  %115 = load i8*, i8** %114, align 8, !dbg !1146, !tbaa !297
  %116 = icmp eq i8* %113, %115, !dbg !1147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1148
  br i1 %116, label %118, label %117, !dbg !1148

; <label>:117:                                    ; preds = %100
  tail call void @sdsfree(i8* %113) #6, !dbg !1149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1149
  br label %118, !dbg !1149

; <label>:118:                                    ; preds = %100, %117
  store i8* null, i8** %97, align 8, !dbg !1150, !tbaa !293
  %119 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %53, i64 %95, i32 0, !dbg !1151
  store i64 0, i64* %119, align 8, !dbg !1152, !tbaa !284
  %120 = icmp eq %struct.dictEntry* %112, null, !dbg !1153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1155
  br i1 %120, label %124, label %121, !dbg !1155

; <label>:121:                                    ; preds = %118
  %122 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %112, i64 0, i32 0, !dbg !1156
  %123 = load i8*, i8** %122, align 8, !dbg !1156, !tbaa !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1158
  br label %128, !dbg !1158

; <label>:124:                                    ; preds = %118, %94
  %125 = phi i32 [ %96, %94 ], [ %102, %118 ]
  %126 = add nsw i64 %95, -1, !dbg !1159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1160
  %127 = icmp eq i64 %95, 0, !dbg !1161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  br i1 %127, label %128, label %94, !dbg !1125, !llvm.loop !1162

; <label>:128:                                    ; preds = %124, %121
  %129 = phi i8* [ %123, %121 ], [ null, %124 ], !dbg !1164
  %130 = phi i32 [ %102, %121 ], [ %125, %124 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1165
  %131 = icmp eq i8* %129, null, !dbg !1166
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %131, label %54, label %164, !llvm.loop !1167

; <label>:132:                                    ; preds = %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1168
  switch i32 %47, label %163 [
    i32 1540, label %133
    i32 768, label %133
  ], !dbg !1168

; <label>:133:                                    ; preds = %132, %132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1170
  %134 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !1173, !tbaa !1085
  %135 = icmp sgt i32 %134, 0, !dbg !1175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1176
  br i1 %135, label %136, label %163, !dbg !1176

; <label>:136:                                    ; preds = %133
  %137 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8
  %138 = icmp eq i32 %47, 1540
  %139 = load i32, i32* @freeMemoryIfNeeded.next_db, align 4, !dbg !1177, !tbaa !558
  br label %140, !dbg !1176

; <label>:140:                                    ; preds = %136, %160
  %141 = phi i32 [ %139, %136 ], [ %143, %160 ], !dbg !1177
  %142 = phi i32 [ 0, %136 ], [ %161, %160 ]
  %143 = add i32 %141, 1, !dbg !1177
  store i32 %143, i32* @freeMemoryIfNeeded.next_db, align 4, !dbg !1177, !tbaa !558
  %144 = urem i32 %143, %134, !dbg !1179
  %145 = sext i32 %144 to i64, !dbg !1181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1182
  %146 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %137, i64 %145, i32 1, !dbg !1183
  %147 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %137, i64 %145, i32 0, !dbg !1184
  %148 = select i1 %138, %struct.dict** %147, %struct.dict** %146, !dbg !1182
  %149 = load %struct.dict*, %struct.dict** %148, align 8, !dbg !1185, !tbaa !307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1182
  %150 = getelementptr inbounds %struct.dict, %struct.dict* %149, i64 0, i32 2, i64 0, i32 3, !dbg !1186
  %151 = load i64, i64* %150, align 8, !dbg !1186, !tbaa !1105
  %152 = getelementptr inbounds %struct.dict, %struct.dict* %149, i64 0, i32 2, i64 1, i32 3, !dbg !1186
  %153 = load i64, i64* %152, align 8, !dbg !1186, !tbaa !1105
  %154 = sub i64 0, %153, !dbg !1188
  %155 = icmp eq i64 %151, %154, !dbg !1188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1189
  br i1 %155, label %160, label %156, !dbg !1189

; <label>:156:                                    ; preds = %140
  %157 = tail call %struct.dictEntry* @dictGetRandomKey(%struct.dict* %149) #6, !dbg !1190
  %158 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %157, i64 0, i32 0, !dbg !1192
  %159 = load i8*, i8** %158, align 8, !dbg !1192, !tbaa !366
  br label %164, !dbg !1193

; <label>:160:                                    ; preds = %140
  %161 = add nuw nsw i32 %142, 1, !dbg !1194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1195
  %162 = icmp slt i32 %161, %134, !dbg !1175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1176
  br i1 %162, label %140, label %163, !dbg !1176, !llvm.loop !1196

; <label>:163:                                    ; preds = %132, %133, %160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  br label %240, !dbg !1198

; <label>:164:                                    ; preds = %128, %93, %156
  %165 = phi i8* [ %159, %156 ], [ null, %93 ], [ %129, %128 ], !dbg !1164
  %166 = phi i32 [ %144, %156 ], [ %55, %93 ], [ %130, %128 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  %167 = icmp eq i8* %165, null, !dbg !1200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  br i1 %167, label %240, label %168, !dbg !1198

; <label>:168:                                    ; preds = %164
  %169 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !1201, !tbaa !1093
  %170 = sext i32 %166 to i64, !dbg !1202
  %171 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %169, i64 %170, !dbg !1202
  %172 = getelementptr inbounds i8, i8* %165, i64 -1, !dbg !1205
  %173 = load i8, i8* %172, align 1, !dbg !1205, !tbaa !390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1207
  %174 = trunc i8 %173 to i3, !dbg !1207
  switch i3 %174, label %196 [
    i3 0, label %175
    i3 1, label %178
    i3 2, label %182
    i3 3, label %187
    i3 -4, label %192
  ], !dbg !1207

; <label>:175:                                    ; preds = %168
  %176 = lshr i8 %173, 3, !dbg !1208
  %177 = zext i8 %176 to i64, !dbg !1208
  br label %196, !dbg !1209

; <label>:178:                                    ; preds = %168
  %179 = getelementptr inbounds i8, i8* %165, i64 -3, !dbg !1210
  %180 = load i8, i8* %179, align 1, !dbg !1211, !tbaa !390
  %181 = zext i8 %180 to i64, !dbg !1210
  br label %196, !dbg !1212

; <label>:182:                                    ; preds = %168
  %183 = getelementptr inbounds i8, i8* %165, i64 -5, !dbg !1213
  %184 = bitcast i8* %183 to i16*, !dbg !1214
  %185 = load i16, i16* %184, align 1, !dbg !1214, !tbaa !553
  %186 = zext i16 %185 to i64, !dbg !1213
  br label %196, !dbg !1215

; <label>:187:                                    ; preds = %168
  %188 = getelementptr inbounds i8, i8* %165, i64 -9, !dbg !1216
  %189 = bitcast i8* %188 to i32*, !dbg !1217
  %190 = load i32, i32* %189, align 1, !dbg !1217, !tbaa !558
  %191 = zext i32 %190 to i64, !dbg !1216
  br label %196, !dbg !1218

; <label>:192:                                    ; preds = %168
  %193 = getelementptr inbounds i8, i8* %165, i64 -17, !dbg !1219
  %194 = bitcast i8* %193 to i64*, !dbg !1220
  %195 = load i64, i64* %194, align 1, !dbg !1220, !tbaa !562
  br label %196, !dbg !1221

; <label>:196:                                    ; preds = %168, %175, %178, %182, %187, %192
  %197 = phi i64 [ %195, %192 ], [ %191, %187 ], [ %186, %182 ], [ %181, %178 ], [ %177, %175 ], [ 0, %168 ], !dbg !1222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1224
  %198 = tail call %struct.redisObject* @createStringObject(i8* nonnull %165, i64 %197) #6, !dbg !1225
  %199 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 285), align 8, !dbg !1227, !tbaa !1228
  tail call void @propagateExpire(%struct.redisDb* %171, %struct.redisObject* %198, i32 %199) #6, !dbg !1229
  %200 = tail call i64 @zmalloc_used_memory() #6, !dbg !1230
  %201 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1232, !tbaa !1061
  %202 = icmp eq i64 %201, 0, !dbg !1232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1234
  br i1 %202, label %205, label %203, !dbg !1234

; <label>:203:                                    ; preds = %196
  %204 = tail call i64 @mstime() #6, !dbg !1235
  br label %205, !dbg !1235

; <label>:205:                                    ; preds = %196, %203
  %206 = phi i64 [ %204, %203 ], [ 0, %196 ], !dbg !1235
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %207 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 285), align 8, !dbg !1238, !tbaa !1228
  %208 = icmp eq i32 %207, 0, !dbg !1240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1241
  br i1 %208, label %211, label %209, !dbg !1241

; <label>:209:                                    ; preds = %205
  %210 = tail call i32 @dbAsyncDelete(%struct.redisDb* %171, %struct.redisObject* %198) #6, !dbg !1242
  br label %213, !dbg !1242

; <label>:211:                                    ; preds = %205
  %212 = tail call i32 @dbSyncDelete(%struct.redisDb* %171, %struct.redisObject* %198) #6, !dbg !1243
  br label %213

; <label>:213:                                    ; preds = %211, %209
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %214 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1244, !tbaa !1061
  %215 = icmp eq i64 %214, 0, !dbg !1244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1246
  br i1 %215, label %216, label %217, !dbg !1246

; <label>:216:                                    ; preds = %213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  br label %225, !dbg !1247

; <label>:217:                                    ; preds = %213
  %218 = tail call i64 @mstime() #6, !dbg !1249
  %219 = sub nsw i64 %218, %206, !dbg !1249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1249
  %220 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1247, !tbaa !1061
  %221 = icmp eq i64 %220, 0, !dbg !1247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  br i1 %221, label %225, label %222, !dbg !1247

; <label>:222:                                    ; preds = %217
  %223 = icmp slt i64 %219, %220, !dbg !1247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1251
  br i1 %223, label %225, label %224, !dbg !1251

; <label>:224:                                    ; preds = %222
  tail call void @latencyAddSample(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %219) #6, !dbg !1247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  br label %225, !dbg !1247

; <label>:225:                                    ; preds = %216, %222, %217, %224
  %226 = phi i64 [ %206, %216 ], [ %219, %222 ], [ %219, %217 ], [ %219, %224 ]
  %227 = add nsw i64 %226, %45, !dbg !1252
  %228 = tail call i64 @zmalloc_used_memory() #6, !dbg !1253
  %229 = add i64 %200, %44, !dbg !1254
  %230 = sub i64 %229, %228, !dbg !1255
  %231 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 75), align 8, !dbg !1256, !tbaa !1257
  %232 = add nsw i64 %231, 1, !dbg !1256
  store i64 %232, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 75), align 8, !dbg !1256, !tbaa !1257
  %233 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %169, i64 %170, i32 5, !dbg !1258
  %234 = load i32, i32* %233, align 8, !dbg !1258, !tbaa !1259
  tail call void @notifyKeyspaceEvent(i32 512, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.redisObject* %198, i32 %234) #6, !dbg !1260
  tail call void @decrRefCount(%struct.redisObject* %198) #6, !dbg !1261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1262
  br i1 %42, label %236, label %235, !dbg !1262

; <label>:235:                                    ; preds = %225
  tail call void @flushSlavesOutputBuffers() #6, !dbg !1263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1263
  br label %236, !dbg !1263

; <label>:236:                                    ; preds = %225, %235
  %237 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 285), align 8, !dbg !1265, !tbaa !1228
  %238 = icmp eq i32 %237, 0, !dbg !1267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1268
  br i1 %238, label %253, label %239, !dbg !1268

; <label>:239:                                    ; preds = %236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1269
  br label %253, !dbg !1269

; <label>:240:                                    ; preds = %164, %163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1270
  %241 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1271, !tbaa !1061
  %242 = icmp eq i64 %241, 0, !dbg !1271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1275
  br i1 %242, label %243, label %244, !dbg !1275

; <label>:243:                                    ; preds = %240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  br label %252, !dbg !1276

; <label>:244:                                    ; preds = %240
  %245 = tail call i64 @mstime() #6, !dbg !1278
  %246 = sub nsw i64 %245, %45, !dbg !1278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1278
  %247 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1276, !tbaa !1061
  %248 = icmp eq i64 %247, 0, !dbg !1276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  br i1 %248, label %252, label %249, !dbg !1276

; <label>:249:                                    ; preds = %244
  %250 = icmp slt i64 %246, %247, !dbg !1276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1280
  br i1 %250, label %252, label %251, !dbg !1280

; <label>:251:                                    ; preds = %249
  tail call void @latencyAddSample(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64 %246) #6, !dbg !1276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  br label %252, !dbg !1276

; <label>:252:                                    ; preds = %251, %244, %249, %243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1281
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %268

; <label>:253:                                    ; preds = %239, %236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1283
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %254 = icmp ult i64 %230, %30, !dbg !1069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1066
  br i1 %254, label %43, label %255, !dbg !1066

; <label>:255:                                    ; preds = %253, %38
  %256 = phi i64 [ %39, %38 ], [ %227, %253 ], !dbg !1223
  %257 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1284, !tbaa !1061
  %258 = icmp eq i64 %257, 0, !dbg !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1286
  br i1 %258, label %259, label %260, !dbg !1286

; <label>:259:                                    ; preds = %255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1287
  br label %282, !dbg !1287

; <label>:260:                                    ; preds = %255
  %261 = tail call i64 @mstime() #6, !dbg !1289
  %262 = sub nsw i64 %261, %256, !dbg !1289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1289
  %263 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1287, !tbaa !1061
  %264 = icmp eq i64 %263, 0, !dbg !1287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1287
  br i1 %264, label %282, label %265, !dbg !1287

; <label>:265:                                    ; preds = %260
  %266 = icmp slt i64 %262, %263, !dbg !1287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1291
  br i1 %266, label %282, label %267, !dbg !1291

; <label>:267:                                    ; preds = %265
  tail call void @latencyAddSample(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64 %262) #6, !dbg !1287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1287
  br label %282, !dbg !1287

; <label>:268:                                    ; preds = %252, %29
  %269 = phi i64 [ 0, %29 ], [ %44, %252 ], !dbg !1223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1292
  %270 = tail call i64 @bioPendingJobsOfType(i32 2) #6, !dbg !1293
  %271 = icmp eq i64 %270, 0, !dbg !1292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1292
  br i1 %271, label %282, label %272, !dbg !1292

; <label>:272:                                    ; preds = %268
  %273 = add i64 %269, %14
  br label %274, !dbg !1292

; <label>:274:                                    ; preds = %272, %278
  %275 = tail call i64 @zmalloc_used_memory() #6, !dbg !1295
  %276 = sub i64 %273, %275, !dbg !1298
  %277 = icmp ult i64 %276, %30, !dbg !1299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1300
  br i1 %277, label %278, label %282, !dbg !1300

; <label>:278:                                    ; preds = %274
  %279 = tail call i32 @usleep(i64 1000) #6, !dbg !1301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1292
  %280 = tail call i64 @bioPendingJobsOfType(i32 2) #6, !dbg !1293
  %281 = icmp eq i64 %280, 0, !dbg !1292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1292
  br i1 %281, label %282, label %274, !dbg !1292, !llvm.loop !1302

; <label>:282:                                    ; preds = %274, %278, %268, %267, %260, %265, %259, %6, %28
  %283 = phi i32 [ 0, %28 ], [ 0, %6 ], [ 0, %259 ], [ 0, %265 ], [ 0, %260 ], [ 0, %267 ], [ -1, %268 ], [ -1, %278 ], [ -1, %274 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1304
  br label %284

; <label>:284:                                    ; preds = %0, %282
  %285 = phi i32 [ %283, %282 ], [ 0, %0 ], !dbg !1304
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1305
  ret i32 %285, !dbg !1305
}

; Function Attrs: noredzone
declare dso_local i32 @clientsArePaused() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictGetRandomKey(%struct.dict*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @propagateExpire(%struct.redisDb*, %struct.redisObject*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @dbAsyncDelete(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @dbSyncDelete(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @latencyAddSample(i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @notifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @flushSlavesOutputBuffers() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @bioPendingJobsOfType(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @usleep(i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @freeMemoryIfNeededAndSafe() local_unnamed_addr #0 !dbg !1306 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 282), align 4, !dbg !1307, !tbaa !1309
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !1310
  %3 = or i32 %2, %1, !dbg !1311
  %4 = icmp eq i32 %3, 0, !dbg !1311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1311
  br i1 %4, label %5, label %7, !dbg !1311

; <label>:5:                                      ; preds = %0
  %6 = tail call i32 @freeMemoryIfNeeded() #9, !dbg !1312
  br label %7, !dbg !1313

; <label>:7:                                      ; preds = %0, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %0 ], !dbg !1314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1316
  ret i32 %8, !dbg !1316
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nobuiltin noredzone noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noredzone }

!llvm.module.flags = !{!219, !220, !221}
!llvm.ident = !{!222}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "EvictionPoolLRU", scope: !2, file: !3, line: 61, type: !196, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !59)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/evict.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !7, !8, !9, !10, !11, !28, !38, !48, !58}
!6 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!9 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!10 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !13, line: 51, size: 24, elements: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !{!15, !21, !22, !23}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !12, file: !13, line: 52, baseType: !16, size: 8)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !17, line: 24, baseType: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !19, line: 43, baseType: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !12, file: !13, line: 53, baseType: !16, size: 8, offset: 8)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !12, file: !13, line: 54, baseType: !20, size: 8, offset: 16)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !12, file: !13, line: 55, baseType: !24, offset: 24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, elements: !26)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !{!27}
!27 = !DISubrange(count: -1)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !13, line: 57, size: 40, elements: !30)
!30 = !{!31, !35, !36, !37}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !29, file: !13, line: 58, baseType: !32, size: 16)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !17, line: 36, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !19, line: 57, baseType: !34)
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !29, file: !13, line: 59, baseType: !32, size: 16, offset: 16)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !29, file: !13, line: 60, baseType: !20, size: 8, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !29, file: !13, line: 61, baseType: !24, offset: 40)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !13, line: 63, size: 72, elements: !40)
!40 = !{!41, !45, !46, !47}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !39, file: !13, line: 64, baseType: !42, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !17, line: 48, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !19, line: 79, baseType: !44)
!44 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !39, file: !13, line: 65, baseType: !42, size: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !39, file: !13, line: 66, baseType: !20, size: 8, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !39, file: !13, line: 67, baseType: !24, offset: 72)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !13, line: 69, size: 136, elements: !50)
!50 = !{!51, !55, !56, !57}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !49, file: !13, line: 70, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !17, line: 60, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !19, line: 105, baseType: !54)
!54 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !49, file: !13, line: 71, baseType: !52, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !49, file: !13, line: 72, baseType: !20, size: 8, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !49, file: !13, line: 73, baseType: !24, offset: 136)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!59 = !{!60, !0}
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "next_db", scope: !62, file: !3, line: 471, type: !44, isLocal: true, isDefinition: true)
!62 = distinct !DISubprogram(name: "freeMemoryIfNeeded", scope: !3, file: !3, line: 446, type: !63, isLocal: false, isDefinition: true, scopeLine: 446, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !66)
!63 = !DISubroutineType(types: !64)
!64 = !{!65}
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !{!67, !72, !73, !74, !77, !78, !79, !80, !82, !83, !84, !85, !88, !89, !191, !192, !193, !204, !206, !207}
!67 = !DILocalVariable(name: "mem_reported", scope: !62, file: !3, line: 451, type: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 40, baseType: !70)
!69 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !71, line: 129, baseType: !54)
!71 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!72 = !DILocalVariable(name: "mem_tofree", scope: !62, file: !3, line: 451, type: !68)
!73 = !DILocalVariable(name: "mem_freed", scope: !62, file: !3, line: 451, type: !68)
!74 = !DILocalVariable(name: "latency", scope: !62, file: !3, line: 452, type: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !76, line: 52, baseType: !10)
!76 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!77 = !DILocalVariable(name: "eviction_latency", scope: !62, file: !3, line: 452, type: !75)
!78 = !DILocalVariable(name: "delta", scope: !62, file: !3, line: 453, type: !10)
!79 = !DILocalVariable(name: "slaves", scope: !62, file: !3, line: 454, type: !65)
!80 = !DILocalVariable(name: "j", scope: !81, file: !3, line: 470, type: !65)
!81 = distinct !DILexicalBlock(scope: !62, file: !3, line: 469, column: 36)
!82 = !DILocalVariable(name: "k", scope: !81, file: !3, line: 470, type: !65)
!83 = !DILocalVariable(name: "i", scope: !81, file: !3, line: 470, type: !65)
!84 = !DILocalVariable(name: "keys_freed", scope: !81, file: !3, line: 470, type: !65)
!85 = !DILocalVariable(name: "bestkey", scope: !81, file: !3, line: 472, type: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !13, line: 43, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!88 = !DILocalVariable(name: "bestdbid", scope: !81, file: !3, line: 473, type: !65)
!89 = !DILocalVariable(name: "db", scope: !81, file: !3, line: 474, type: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !76, line: 656, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !76, line: 647, size: 512, elements: !93)
!93 = !{!94, !156, !157, !158, !159, !160, !161, !162}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !92, file: !76, line: 648, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !97, line: 82, baseType: !98)
!97 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !97, line: 76, size: 768, elements: !99)
!99 = !{!100, !125, !126, !154, !155}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !98, file: !97, line: 77, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !97, line: 65, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !97, line: 58, size: 384, elements: !104)
!104 = !{!105, !111, !115, !116, !120, !124}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !103, file: !97, line: 59, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!52, !109}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !103, file: !97, line: 60, baseType: !112, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!7, !7, !109}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !103, file: !97, line: 61, baseType: !112, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !103, file: !97, line: 62, baseType: !117, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!65, !7, !109, !109}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !103, file: !97, line: 63, baseType: !121, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !7, !7}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !103, file: !97, line: 64, baseType: !121, size: 64, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !98, file: !97, line: 78, baseType: !7, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !98, file: !97, line: 79, baseType: !127, size: 512, offset: 128)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 512, elements: !152)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !97, line: 74, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !97, line: 69, size: 256, elements: !130)
!130 = !{!131, !149, !150, !151}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !129, file: !97, line: 70, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !97, line: 56, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !97, line: 47, size: 192, elements: !136)
!136 = !{!137, !138, !147}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !135, file: !97, line: 48, baseType: !7, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !135, file: !97, line: 54, baseType: !139, size: 64, offset: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !135, file: !97, line: 49, size: 64, elements: !140)
!140 = !{!141, !142, !143, !146}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !139, file: !97, line: 50, baseType: !7, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !139, file: !97, line: 51, baseType: !52, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !139, file: !97, line: 52, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !17, line: 56, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !19, line: 103, baseType: !6)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !139, file: !97, line: 53, baseType: !8, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !135, file: !97, line: 55, baseType: !148, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !129, file: !97, line: 71, baseType: !54, size: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !129, file: !97, line: 72, baseType: !54, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !129, file: !97, line: 73, baseType: !54, size: 64, offset: 192)
!152 = !{!153}
!153 = !DISubrange(count: 2)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !98, file: !97, line: 80, baseType: !6, size: 64, offset: 640)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !98, file: !97, line: 81, baseType: !54, size: 64, offset: 704)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !92, file: !76, line: 649, baseType: !95, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !92, file: !76, line: 650, baseType: !95, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !92, file: !76, line: 651, baseType: !95, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !92, file: !76, line: 652, baseType: !95, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !92, file: !76, line: 653, baseType: !65, size: 32, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !92, file: !76, line: 654, baseType: !10, size: 64, offset: 384)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !92, file: !76, line: 655, baseType: !163, size: 64, offset: 448)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !165, line: 54, baseType: !166)
!165 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !165, line: 47, size: 384, elements: !167)
!167 = !{!168, !177, !178, !182, !186, !190}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !166, file: !165, line: 48, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !165, line: 40, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !165, line: 36, size: 192, elements: !172)
!172 = !{!173, !175, !176}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !171, file: !165, line: 37, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !171, file: !165, line: 38, baseType: !174, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !171, file: !165, line: 39, baseType: !7, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !166, file: !165, line: 49, baseType: !169, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !166, file: !165, line: 50, baseType: !179, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!7, !7}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !166, file: !165, line: 51, baseType: !183, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !7}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !166, file: !165, line: 52, baseType: !187, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!65, !7, !7}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !166, file: !165, line: 53, baseType: !54, size: 64, offset: 320)
!191 = !DILocalVariable(name: "dict", scope: !81, file: !3, line: 475, type: !95)
!192 = !DILocalVariable(name: "de", scope: !81, file: !3, line: 476, type: !133)
!193 = !DILocalVariable(name: "pool", scope: !194, file: !3, line: 481, type: !196)
!194 = distinct !DILexicalBlock(scope: !195, file: !3, line: 480, column: 9)
!195 = distinct !DILexicalBlock(scope: !81, file: !3, line: 478, column: 13)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evictionPoolEntry", file: !3, line: 54, size: 256, elements: !198)
!198 = !{!199, !201, !202, !203}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !197, file: !3, line: 55, baseType: !200, size: 64)
!200 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !197, file: !3, line: 56, baseType: !86, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !197, file: !3, line: 57, baseType: !86, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "dbid", scope: !197, file: !3, line: 58, baseType: !65, size: 32, offset: 192)
!204 = !DILocalVariable(name: "total_keys", scope: !205, file: !3, line: 484, type: !54)
!205 = distinct !DILexicalBlock(scope: !194, file: !3, line: 483, column: 36)
!206 = !DILocalVariable(name: "keys", scope: !205, file: !3, line: 484, type: !54)
!207 = !DILocalVariable(name: "keyobj", scope: !208, file: !3, line: 555, type: !210)
!208 = distinct !DILexicalBlock(scope: !209, file: !3, line: 553, column: 22)
!209 = distinct !DILexicalBlock(scope: !81, file: !3, line: 553, column: 13)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !76, line: 622, baseType: !212)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !76, line: 614, size: 128, elements: !213)
!213 = !{!214, !215, !216, !217, !218}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !212, file: !76, line: 615, baseType: !44, size: 4, flags: DIFlagBitField, extraData: i64 0)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !212, file: !76, line: 616, baseType: !44, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !212, file: !76, line: 617, baseType: !44, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !212, file: !76, line: 620, baseType: !65, size: 32, offset: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !212, file: !76, line: 621, baseType: !7, size: 64, offset: 64)
!219 = !{i32 2, !"Dwarf Version", i32 4}
!220 = !{i32 2, !"Debug Info Version", i32 3}
!221 = !{i32 1, !"wchar_size", i32 4}
!222 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!223 = distinct !DISubprogram(name: "getLRUClock", scope: !3, file: !3, line: 70, type: !224, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!224 = !DISubroutineType(types: !225)
!225 = !{!44}
!226 = !DILocation(line: 71, column: 13, scope: !223)
!227 = !DILocation(line: 71, column: 21, scope: !223)
!228 = !DILocation(line: 71, column: 12, scope: !223)
!229 = !DILocation(line: 71, column: 5, scope: !223)
!230 = distinct !DISubprogram(name: "LRU_CLOCK", scope: !3, file: !3, line: 78, type: !224, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !231)
!231 = !{!232}
!232 = !DILocalVariable(name: "lruclock", scope: !230, file: !3, line: 79, type: !44)
!233 = !DILocation(line: 80, column: 9, scope: !230)
!234 = !DILocation(line: 81, column: 9, scope: !235)
!235 = distinct !DILexicalBlock(scope: !236, file: !3, line: 81, column: 9)
!236 = distinct !DILexicalBlock(scope: !237, file: !3, line: 80, column: 49)
!237 = distinct !DILexicalBlock(scope: !230, file: !3, line: 80, column: 9)
!238 = !DILocation(line: 79, column: 18, scope: !230)
!239 = !DILocation(line: 82, column: 5, scope: !236)
!240 = !DILocation(line: 85, column: 5, scope: !230)
!241 = distinct !DISubprogram(name: "estimateObjectIdleTime", scope: !3, file: !3, line: 90, type: !242, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !244)
!242 = !DISubroutineType(types: !243)
!243 = !{!200, !210}
!244 = !{!245, !246}
!245 = !DILocalVariable(name: "o", arg: 1, scope: !241, file: !3, line: 90, type: !210)
!246 = !DILocalVariable(name: "lruclock", scope: !241, file: !3, line: 91, type: !200)
!247 = !DILocation(line: 90, column: 49, scope: !241)
!248 = !DILocation(line: 80, column: 9, scope: !230, inlinedAt: !249)
!249 = distinct !DILocation(line: 91, column: 35, scope: !241)
!250 = !DILocation(line: 81, column: 9, scope: !235, inlinedAt: !249)
!251 = !DILocation(line: 79, column: 18, scope: !230, inlinedAt: !249)
!252 = !DILocation(line: 82, column: 5, scope: !236, inlinedAt: !249)
!253 = !DILocation(line: 85, column: 5, scope: !230, inlinedAt: !249)
!254 = !DILocation(line: 91, column: 35, scope: !241)
!255 = !DILocation(line: 91, column: 24, scope: !241)
!256 = !DILocation(line: 92, column: 24, scope: !257)
!257 = distinct !DILexicalBlock(scope: !241, file: !3, line: 92, column: 9)
!258 = !DILocation(line: 92, column: 18, scope: !257)
!259 = !DILocation(line: 92, column: 9, scope: !241)
!260 = !DILocation(line: 92, column: 21, scope: !257)
!261 = !DILocation(line: 95, column: 43, scope: !262)
!262 = distinct !DILexicalBlock(scope: !257, file: !3, line: 94, column: 12)
!263 = !DILocation(line: 95, column: 28, scope: !262)
!264 = !DILocation(line: 0, scope: !265)
!265 = distinct !DILexicalBlock(scope: !257, file: !3, line: 92, column: 29)
!266 = !DILocation(line: 0, scope: !262)
!267 = !DILocation(line: 98, column: 1, scope: !241)
!268 = distinct !DISubprogram(name: "evictionPoolAlloc", scope: !3, file: !3, line: 139, type: !269, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !271)
!269 = !DISubroutineType(types: !270)
!270 = !{null}
!271 = !{!272, !273}
!272 = !DILocalVariable(name: "ep", scope: !268, file: !3, line: 140, type: !196)
!273 = !DILocalVariable(name: "j", scope: !268, file: !3, line: 141, type: !65)
!274 = !DILocation(line: 143, column: 10, scope: !268)
!275 = !DILocation(line: 140, column: 31, scope: !268)
!276 = !DILocation(line: 141, column: 9, scope: !268)
!277 = !DILocation(line: 144, column: 10, scope: !278)
!278 = distinct !DILexicalBlock(scope: !268, file: !3, line: 144, column: 5)
!279 = !DILocation(line: 144, column: 5, scope: !278)
!280 = !DILocation(line: 145, column: 15, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !3, line: 144, column: 39)
!282 = distinct !DILexicalBlock(scope: !278, file: !3, line: 144, column: 5)
!283 = !DILocation(line: 145, column: 20, scope: !281)
!284 = !{!285, !286, i64 0}
!285 = !{!"evictionPoolEntry", !286, i64 0, !289, i64 8, !289, i64 16, !290, i64 24}
!286 = !{!"long long", !287, i64 0}
!287 = !{!"omnipotent char", !288, i64 0}
!288 = !{!"Simple C/C++ TBAA"}
!289 = !{!"any pointer", !287, i64 0}
!290 = !{!"int", !287, i64 0}
!291 = !DILocation(line: 146, column: 15, scope: !281)
!292 = !DILocation(line: 146, column: 19, scope: !281)
!293 = !{!285, !289, i64 8}
!294 = !DILocation(line: 147, column: 24, scope: !281)
!295 = !DILocation(line: 147, column: 15, scope: !281)
!296 = !DILocation(line: 147, column: 22, scope: !281)
!297 = !{!285, !289, i64 16}
!298 = !DILocation(line: 148, column: 15, scope: !281)
!299 = !DILocation(line: 148, column: 20, scope: !281)
!300 = !{!285, !290, i64 24}
!301 = !DILocation(line: 144, column: 35, scope: !282)
!302 = !DILocation(line: 144, column: 5, scope: !282)
!303 = !DILocation(line: 144, column: 19, scope: !282)
!304 = distinct !{!304, !279, !305}
!305 = !DILocation(line: 149, column: 5, scope: !278)
!306 = !DILocation(line: 150, column: 21, scope: !268)
!307 = !{!289, !289, i64 0}
!308 = !DILocation(line: 151, column: 1, scope: !268)
!309 = distinct !DISubprogram(name: "evictionPoolPopulate", scope: !3, file: !3, line: 162, type: !310, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !312)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !65, !95, !95, !196}
!312 = !{!313, !314, !315, !316, !317, !318, !319, !320, !321, !325, !329, !330, !331, !332, !338, !340}
!313 = !DILocalVariable(name: "dbid", arg: 1, scope: !309, file: !3, line: 162, type: !65)
!314 = !DILocalVariable(name: "sampledict", arg: 2, scope: !309, file: !3, line: 162, type: !95)
!315 = !DILocalVariable(name: "keydict", arg: 3, scope: !309, file: !3, line: 162, type: !95)
!316 = !DILocalVariable(name: "pool", arg: 4, scope: !309, file: !3, line: 162, type: !196)
!317 = !DILocalVariable(name: "j", scope: !309, file: !3, line: 163, type: !65)
!318 = !DILocalVariable(name: "k", scope: !309, file: !3, line: 163, type: !65)
!319 = !DILocalVariable(name: "count", scope: !309, file: !3, line: 163, type: !65)
!320 = !DILocalVariable(scope: !309, type: !54, flags: DIFlagArtificial)
!321 = !DILocalVariable(name: "samples", scope: !309, file: !3, line: 164, type: !322)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: !320)
!325 = !DILocalVariable(name: "idle", scope: !326, file: !3, line: 168, type: !200)
!326 = distinct !DILexicalBlock(scope: !327, file: !3, line: 167, column: 33)
!327 = distinct !DILexicalBlock(scope: !328, file: !3, line: 167, column: 5)
!328 = distinct !DILexicalBlock(scope: !309, file: !3, line: 167, column: 5)
!329 = !DILocalVariable(name: "key", scope: !326, file: !3, line: 169, type: !86)
!330 = !DILocalVariable(name: "o", scope: !326, file: !3, line: 170, type: !210)
!331 = !DILocalVariable(name: "de", scope: !326, file: !3, line: 171, type: !133)
!332 = !DILocalVariable(name: "cached", scope: !333, file: !3, line: 226, type: !86)
!333 = distinct !DILexicalBlock(scope: !334, file: !3, line: 221, column: 50)
!334 = distinct !DILexicalBlock(scope: !335, file: !3, line: 221, column: 17)
!335 = distinct !DILexicalBlock(scope: !336, file: !3, line: 218, column: 16)
!336 = distinct !DILexicalBlock(scope: !337, file: !3, line: 216, column: 20)
!337 = distinct !DILexicalBlock(scope: !326, file: !3, line: 212, column: 13)
!338 = !DILocalVariable(name: "cached", scope: !339, file: !3, line: 235, type: !86)
!339 = distinct !DILexicalBlock(scope: !334, file: !3, line: 230, column: 20)
!340 = !DILocalVariable(name: "klen", scope: !326, file: !3, line: 246, type: !65)
!341 = !DILocation(line: 162, column: 31, scope: !309)
!342 = !DILocation(line: 162, column: 43, scope: !309)
!343 = !DILocation(line: 162, column: 61, scope: !309)
!344 = !DILocation(line: 162, column: 96, scope: !309)
!345 = !DILocation(line: 164, column: 31, scope: !309)
!346 = !{!347, !290, i64 2716}
!347 = !{!"redisServer", !290, i64 0, !289, i64 8, !289, i64 16, !289, i64 24, !290, i64 32, !290, i64 36, !290, i64 40, !289, i64 48, !289, i64 56, !289, i64 64, !289, i64 72, !290, i64 80, !290, i64 84, !290, i64 88, !290, i64 92, !289, i64 96, !289, i64 104, !290, i64 112, !290, i64 116, !287, i64 120, !290, i64 164, !348, i64 168, !290, i64 176, !289, i64 184, !289, i64 192, !289, i64 200, !287, i64 208, !290, i64 216, !290, i64 220, !287, i64 224, !290, i64 352, !289, i64 360, !290, i64 368, !287, i64 372, !290, i64 436, !290, i64 440, !287, i64 444, !290, i64 508, !289, i64 512, !289, i64 520, !289, i64 528, !289, i64 536, !289, i64 544, !289, i64 552, !289, i64 560, !290, i64 568, !286, i64 576, !287, i64 584, !289, i64 840, !348, i64 848, !290, i64 856, !290, i64 860, !348, i64 864, !348, i64 872, !348, i64 880, !348, i64 888, !289, i64 896, !289, i64 904, !289, i64 912, !289, i64 920, !289, i64 928, !289, i64 936, !289, i64 944, !289, i64 952, !289, i64 960, !289, i64 968, !289, i64 976, !289, i64 984, !289, i64 992, !348, i64 1000, !286, i64 1008, !286, i64 1016, !286, i64 1024, !349, i64 1032, !286, i64 1040, !286, i64 1048, !286, i64 1056, !286, i64 1064, !286, i64 1072, !286, i64 1080, !286, i64 1088, !286, i64 1096, !286, i64 1104, !348, i64 1112, !286, i64 1120, !349, i64 1128, !286, i64 1136, !286, i64 1144, !286, i64 1152, !286, i64 1160, !289, i64 1168, !286, i64 1176, !286, i64 1184, !348, i64 1192, !350, i64 1200, !286, i64 1240, !286, i64 1248, !348, i64 1256, !348, i64 1264, !287, i64 1272, !290, i64 1728, !290, i64 1732, !290, i64 1736, !290, i64 1740, !290, i64 1744, !348, i64 1752, !290, i64 1760, !290, i64 1764, !290, i64 1768, !290, i64 1772, !348, i64 1776, !348, i64 1784, !290, i64 1792, !290, i64 1796, !290, i64 1800, !290, i64 1804, !287, i64 1808, !290, i64 1880, !290, i64 1884, !289, i64 1888, !290, i64 1896, !290, i64 1900, !348, i64 1904, !348, i64 1912, !348, i64 1920, !348, i64 1928, !290, i64 1936, !290, i64 1940, !289, i64 1944, !289, i64 1952, !290, i64 1960, !290, i64 1964, !348, i64 1968, !348, i64 1976, !348, i64 1984, !348, i64 1992, !290, i64 2000, !348, i64 2008, !290, i64 2016, !290, i64 2020, !290, i64 2024, !290, i64 2028, !290, i64 2032, !290, i64 2036, !290, i64 2040, !290, i64 2044, !290, i64 2048, !290, i64 2052, !290, i64 2056, !290, i64 2060, !290, i64 2064, !289, i64 2072, !286, i64 2080, !286, i64 2088, !290, i64 2096, !289, i64 2104, !290, i64 2112, !289, i64 2120, !290, i64 2128, !290, i64 2132, !348, i64 2136, !348, i64 2144, !348, i64 2152, !348, i64 2160, !290, i64 2168, !290, i64 2172, !290, i64 2176, !290, i64 2180, !290, i64 2184, !290, i64 2188, !287, i64 2192, !351, i64 2200, !352, i64 2224, !289, i64 2240, !290, i64 2248, !289, i64 2256, !290, i64 2264, !287, i64 2268, !287, i64 2309, !286, i64 2352, !286, i64 2360, !290, i64 2368, !290, i64 2372, !289, i64 2376, !286, i64 2384, !286, i64 2392, !286, i64 2400, !286, i64 2408, !348, i64 2416, !348, i64 2424, !290, i64 2432, !290, i64 2436, !290, i64 2440, !290, i64 2444, !290, i64 2448, !289, i64 2456, !289, i64 2464, !290, i64 2472, !290, i64 2476, !289, i64 2480, !289, i64 2488, !290, i64 2496, !290, i64 2500, !348, i64 2504, !348, i64 2512, !348, i64 2520, !290, i64 2528, !290, i64 2532, !289, i64 2536, !348, i64 2544, !290, i64 2552, !290, i64 2556, !290, i64 2560, !348, i64 2568, !290, i64 2576, !290, i64 2580, !290, i64 2584, !289, i64 2592, !287, i64 2600, !286, i64 2648, !290, i64 2656, !289, i64 2664, !289, i64 2672, !290, i64 2680, !289, i64 2688, !290, i64 2696, !290, i64 2700, !286, i64 2704, !290, i64 2712, !290, i64 2716, !290, i64 2720, !290, i64 2724, !286, i64 2728, !290, i64 2736, !287, i64 2740, !289, i64 2768, !289, i64 2776, !290, i64 2784, !290, i64 2788, !290, i64 2792, !290, i64 2796, !348, i64 2800, !348, i64 2808, !348, i64 2816, !348, i64 2824, !348, i64 2832, !348, i64 2840, !348, i64 2848, !348, i64 2856, !290, i64 2864, !290, i64 2868, !348, i64 2872, !348, i64 2880, !290, i64 2888, !286, i64 2896, !289, i64 2904, !289, i64 2912, !290, i64 2920, !290, i64 2924, !286, i64 2928, !289, i64 2936, !289, i64 2944, !290, i64 2952, !290, i64 2956, !290, i64 2960, !290, i64 2964, !289, i64 2968, !290, i64 2976, !290, i64 2980, !290, i64 2984, !289, i64 2992, !289, i64 3000, !289, i64 3008, !289, i64 3016, !286, i64 3024, !286, i64 3032, !286, i64 3040, !290, i64 3048, !290, i64 3052, !290, i64 3056, !290, i64 3060, !290, i64 3064, !290, i64 3068, !290, i64 3072, !290, i64 3076, !290, i64 3080, !290, i64 3084, !290, i64 3088, !286, i64 3096, !289, i64 3104, !289, i64 3112, !289, i64 3120, !290, i64 3128, !290, i64 3132, !290, i64 3136, !348, i64 3144, !289, i64 3152, !289, i64 3160, !289, i64 3168}
!348 = !{!"long", !287, i64 0}
!349 = !{!"double", !287, i64 0}
!350 = !{!"malloc_stats", !348, i64 0, !348, i64 8, !348, i64 16, !348, i64 24, !348, i64 32}
!351 = !{!"", !290, i64 0, !348, i64 8, !286, i64 16}
!352 = !{!"redisOpArray", !289, i64 0, !290, i64 8}
!353 = !DILocation(line: 164, column: 5, scope: !309)
!354 = !DILocation(line: 0, scope: !309)
!355 = !DILocation(line: 164, column: 16, scope: !309)
!356 = !DILocation(line: 166, column: 13, scope: !309)
!357 = !DILocation(line: 163, column: 15, scope: !309)
!358 = !DILocation(line: 163, column: 9, scope: !309)
!359 = !DILocation(line: 167, column: 10, scope: !328)
!360 = !DILocation(line: 170, column: 15, scope: !326)
!361 = !DILocation(line: 167, column: 19, scope: !327)
!362 = !DILocation(line: 167, column: 5, scope: !328)
!363 = !DILocation(line: 173, column: 14, scope: !326)
!364 = !DILocation(line: 171, column: 20, scope: !326)
!365 = !DILocation(line: 174, column: 15, scope: !326)
!366 = !{!367, !289, i64 0}
!367 = !{!"dictEntry", !289, i64 0, !287, i64 8, !289, i64 16}
!368 = !DILocation(line: 169, column: 13, scope: !326)
!369 = !DILocation(line: 179, column: 20, scope: !370)
!370 = distinct !DILexicalBlock(scope: !326, file: !3, line: 179, column: 13)
!371 = !{!347, !290, i64 2712}
!372 = !DILocation(line: 179, column: 37, scope: !370)
!373 = !DILocation(line: 179, column: 13, scope: !326)
!374 = !DILocation(line: 0, scope: !375)
!375 = distinct !DILexicalBlock(scope: !370, file: !3, line: 179, column: 64)
!376 = !DILocation(line: 189, column: 20, scope: !377)
!377 = distinct !DILexicalBlock(scope: !326, file: !3, line: 187, column: 13)
!378 = !DILocation(line: 198, column: 20, scope: !379)
!379 = distinct !DILexicalBlock(scope: !377, file: !3, line: 189, column: 20)
!380 = !DILocation(line: 200, column: 39, scope: !381)
!381 = distinct !DILexicalBlock(scope: !382, file: !3, line: 198, column: 71)
!382 = distinct !DILexicalBlock(scope: !379, file: !3, line: 198, column: 20)
!383 = !DILocation(line: 180, column: 17, scope: !375)
!384 = !DILocation(line: 180, column: 45, scope: !385)
!385 = distinct !DILexicalBlock(scope: !375, file: !3, line: 180, column: 17)
!386 = !DILocation(line: 180, column: 40, scope: !385)
!387 = !DILocation(line: 187, column: 20, scope: !377)
!388 = !DILocation(line: 0, scope: !326)
!389 = !DILocation(line: 181, column: 17, scope: !375)
!390 = !{!287, !287, i64 0}
!391 = !DILocation(line: 182, column: 9, scope: !375)
!392 = !DILocation(line: 187, column: 37, scope: !377)
!393 = !DILocation(line: 187, column: 13, scope: !326)
!394 = !DILocation(line: 90, column: 49, scope: !241, inlinedAt: !395)
!395 = distinct !DILocation(line: 188, column: 20, scope: !396)
!396 = distinct !DILexicalBlock(scope: !377, file: !3, line: 187, column: 59)
!397 = !DILocation(line: 80, column: 9, scope: !230, inlinedAt: !398)
!398 = distinct !DILocation(line: 91, column: 35, scope: !241, inlinedAt: !395)
!399 = !DILocation(line: 81, column: 9, scope: !235, inlinedAt: !398)
!400 = !DILocation(line: 79, column: 18, scope: !230, inlinedAt: !398)
!401 = !DILocation(line: 82, column: 5, scope: !236, inlinedAt: !398)
!402 = !DILocation(line: 85, column: 5, scope: !230, inlinedAt: !398)
!403 = !DILocation(line: 91, column: 35, scope: !241, inlinedAt: !395)
!404 = !DILocation(line: 91, column: 24, scope: !241, inlinedAt: !395)
!405 = !DILocation(line: 92, column: 24, scope: !257, inlinedAt: !395)
!406 = !DILocation(line: 92, column: 18, scope: !257, inlinedAt: !395)
!407 = !DILocation(line: 92, column: 9, scope: !241, inlinedAt: !395)
!408 = !DILocation(line: 92, column: 21, scope: !257, inlinedAt: !395)
!409 = !DILocation(line: 95, column: 43, scope: !262, inlinedAt: !395)
!410 = !DILocation(line: 95, column: 28, scope: !262, inlinedAt: !395)
!411 = !DILocation(line: 0, scope: !396)
!412 = !DILocation(line: 0, scope: !262, inlinedAt: !395)
!413 = !DILocation(line: 98, column: 1, scope: !241, inlinedAt: !395)
!414 = !DILocation(line: 168, column: 28, scope: !326)
!415 = !DILocation(line: 189, column: 9, scope: !396)
!416 = !DILocation(line: 189, column: 44, scope: !379)
!417 = !DILocalVariable(name: "o", arg: 1, scope: !418, file: !3, line: 335, type: !210)
!418 = distinct !DISubprogram(name: "LFUDecrAndReturn", scope: !3, file: !3, line: 335, type: !419, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !421)
!419 = !DISubroutineType(types: !420)
!420 = !{!54, !210}
!421 = !{!417, !422, !423, !424}
!422 = !DILocalVariable(name: "ldt", scope: !418, file: !3, line: 336, type: !54)
!423 = !DILocalVariable(name: "counter", scope: !418, file: !3, line: 337, type: !54)
!424 = !DILocalVariable(name: "num_periods", scope: !418, file: !3, line: 338, type: !54)
!425 = !DILocation(line: 335, column: 38, scope: !418, inlinedAt: !426)
!426 = distinct !DILocation(line: 197, column: 24, scope: !427)
!427 = distinct !DILexicalBlock(scope: !379, file: !3, line: 189, column: 66)
!428 = !DILocation(line: 336, column: 28, scope: !418, inlinedAt: !426)
!429 = !DILocation(line: 337, column: 36, scope: !418, inlinedAt: !426)
!430 = !DILocation(line: 337, column: 29, scope: !418, inlinedAt: !426)
!431 = !DILocation(line: 337, column: 19, scope: !418, inlinedAt: !426)
!432 = !DILocation(line: 338, column: 40, scope: !418, inlinedAt: !426)
!433 = !{!347, !290, i64 2724}
!434 = !DILocation(line: 338, column: 33, scope: !418, inlinedAt: !426)
!435 = !DILocation(line: 336, column: 32, scope: !418, inlinedAt: !426)
!436 = !DILocation(line: 336, column: 25, scope: !418, inlinedAt: !426)
!437 = !DILocation(line: 336, column: 19, scope: !418, inlinedAt: !426)
!438 = !DILocalVariable(name: "ldt", arg: 1, scope: !439, file: !3, line: 307, type: !54)
!439 = distinct !DISubprogram(name: "LFUTimeElapsed", scope: !3, file: !3, line: 307, type: !440, isLocal: false, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !442)
!440 = !DISubroutineType(types: !441)
!441 = !{!54, !54}
!442 = !{!438, !443}
!443 = !DILocalVariable(name: "now", scope: !439, file: !3, line: 308, type: !54)
!444 = !DILocation(line: 307, column: 44, scope: !439, inlinedAt: !445)
!445 = distinct !DILocation(line: 338, column: 57, scope: !418, inlinedAt: !426)
!446 = !DILocation(line: 300, column: 20, scope: !447, inlinedAt: !450)
!447 = distinct !DISubprogram(name: "LFUGetTimeInMinutes", scope: !3, file: !3, line: 299, type: !448, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!448 = !DISubroutineType(types: !449)
!449 = !{!54}
!450 = distinct !DILocation(line: 308, column: 25, scope: !439, inlinedAt: !445)
!451 = !{!347, !348, i64 2872}
!452 = !DILocation(line: 300, column: 28, scope: !447, inlinedAt: !450)
!453 = !DILocation(line: 300, column: 33, scope: !447, inlinedAt: !450)
!454 = !DILocation(line: 300, column: 5, scope: !447, inlinedAt: !450)
!455 = !DILocation(line: 308, column: 19, scope: !439, inlinedAt: !445)
!456 = !DILocation(line: 309, column: 13, scope: !457, inlinedAt: !445)
!457 = distinct !DILexicalBlock(scope: !439, file: !3, line: 309, column: 9)
!458 = !DILocation(line: 309, column: 9, scope: !439, inlinedAt: !445)
!459 = !DILocation(line: 310, column: 17, scope: !439, inlinedAt: !445)
!460 = !DILocation(line: 0, scope: !418, inlinedAt: !426)
!461 = !DILocation(line: 311, column: 1, scope: !439, inlinedAt: !445)
!462 = !DILocation(line: 338, column: 79, scope: !418, inlinedAt: !426)
!463 = !DILocation(line: 338, column: 77, scope: !418, inlinedAt: !426)
!464 = !DILocation(line: 338, column: 19, scope: !418, inlinedAt: !426)
!465 = !DILocation(line: 339, column: 9, scope: !466, inlinedAt: !426)
!466 = distinct !DILexicalBlock(scope: !418, file: !3, line: 339, column: 9)
!467 = !DILocation(line: 339, column: 9, scope: !418, inlinedAt: !426)
!468 = !DILocation(line: 340, column: 32, scope: !466, inlinedAt: !426)
!469 = !DILocation(line: 340, column: 19, scope: !466, inlinedAt: !426)
!470 = !DILocation(line: 340, column: 57, scope: !466, inlinedAt: !426)
!471 = !DILocation(line: 0, scope: !427)
!472 = !DILocation(line: 341, column: 5, scope: !418, inlinedAt: !426)
!473 = !DILocation(line: 197, column: 23, scope: !427)
!474 = !DILocation(line: 198, column: 9, scope: !427)
!475 = !DILocation(line: 198, column: 44, scope: !382)
!476 = !DILocation(line: 200, column: 31, scope: !381)
!477 = !DILocation(line: 202, column: 13, scope: !478)
!478 = distinct !DILexicalBlock(scope: !382, file: !3, line: 201, column: 16)
!479 = !DILocation(line: 0, scope: !381)
!480 = !DILocation(line: 163, column: 12, scope: !309)
!481 = !DILocation(line: 209, column: 9, scope: !326)
!482 = !DILocation(line: 209, column: 32, scope: !326)
!483 = !DILocation(line: 210, column: 24, scope: !326)
!484 = !DILocation(line: 210, column: 16, scope: !326)
!485 = !DILocation(line: 210, column: 28, scope: !326)
!486 = !DILocation(line: 211, column: 24, scope: !326)
!487 = !DILocation(line: 211, column: 29, scope: !326)
!488 = !DILocation(line: 211, column: 38, scope: !326)
!489 = !DILocation(line: 209, column: 18, scope: !326)
!490 = distinct !{!490, !481, !488}
!491 = !DILocation(line: 212, column: 15, scope: !337)
!492 = !DILocation(line: 212, column: 20, scope: !337)
!493 = !DILocation(line: 212, column: 43, scope: !337)
!494 = !DILocation(line: 212, column: 47, scope: !337)
!495 = !DILocation(line: 212, column: 13, scope: !326)
!496 = !DILocation(line: 216, column: 36, scope: !336)
!497 = !DILocation(line: 216, column: 39, scope: !336)
!498 = !DILocation(line: 216, column: 47, scope: !336)
!499 = !DILocation(line: 216, column: 51, scope: !336)
!500 = !DILocation(line: 216, column: 20, scope: !337)
!501 = !DILocation(line: 221, column: 37, scope: !334)
!502 = !DILocation(line: 221, column: 41, scope: !334)
!503 = !DILocation(line: 221, column: 17, scope: !335)
!504 = !DILocation(line: 226, column: 50, scope: !333)
!505 = !DILocation(line: 226, column: 21, scope: !333)
!506 = !DILocation(line: 227, column: 29, scope: !333)
!507 = !DILocation(line: 227, column: 31, scope: !333)
!508 = !DILocation(line: 227, column: 25, scope: !333)
!509 = !DILocation(line: 227, column: 34, scope: !333)
!510 = !DILocation(line: 228, column: 51, scope: !333)
!511 = !DILocation(line: 228, column: 37, scope: !333)
!512 = !DILocation(line: 228, column: 36, scope: !333)
!513 = !DILocation(line: 227, column: 17, scope: !333)
!514 = !DILocation(line: 229, column: 25, scope: !333)
!515 = !DILocation(line: 229, column: 32, scope: !333)
!516 = !DILocation(line: 230, column: 13, scope: !333)
!517 = !DILocation(line: 232, column: 18, scope: !339)
!518 = !DILocation(line: 235, column: 38, scope: !339)
!519 = !DILocation(line: 235, column: 21, scope: !339)
!520 = !DILocation(line: 236, column: 29, scope: !521)
!521 = distinct !DILexicalBlock(scope: !339, file: !3, line: 236, column: 21)
!522 = !DILocation(line: 236, column: 33, scope: !521)
!523 = !DILocation(line: 236, column: 21, scope: !339)
!524 = !DILocation(line: 236, column: 52, scope: !521)
!525 = !DILocation(line: 237, column: 53, scope: !339)
!526 = !DILocation(line: 237, column: 52, scope: !339)
!527 = !DILocation(line: 237, column: 17, scope: !339)
!528 = !DILocation(line: 238, column: 25, scope: !339)
!529 = !DILocation(line: 238, column: 32, scope: !339)
!530 = !DILocation(line: 88, column: 27, scope: !531, inlinedAt: !540)
!531 = distinct !DISubprogram(name: "sdslen", scope: !13, file: !13, line: 87, type: !532, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !537)
!532 = !DISubroutineType(types: !533)
!533 = !{!534, !536}
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !535, line: 58, baseType: !54)
!535 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!537 = !{!538, !539}
!538 = !DILocalVariable(name: "s", arg: 1, scope: !531, file: !13, line: 87, type: !536)
!539 = !DILocalVariable(name: "flags", scope: !531, file: !13, line: 88, type: !20)
!540 = distinct !DILocation(line: 246, column: 20, scope: !326)
!541 = !DILocation(line: 0, scope: !339)
!542 = !DILocation(line: 87, column: 39, scope: !531, inlinedAt: !540)
!543 = !DILocation(line: 88, column: 19, scope: !531, inlinedAt: !540)
!544 = !DILocation(line: 89, column: 5, scope: !531, inlinedAt: !540)
!545 = !DILocation(line: 91, column: 20, scope: !546, inlinedAt: !540)
!546 = distinct !DILexicalBlock(scope: !531, file: !13, line: 89, column: 33)
!547 = !DILocation(line: 91, column: 13, scope: !546, inlinedAt: !540)
!548 = !DILocation(line: 93, column: 20, scope: !546, inlinedAt: !540)
!549 = !DILocation(line: 93, column: 34, scope: !546, inlinedAt: !540)
!550 = !DILocation(line: 93, column: 13, scope: !546, inlinedAt: !540)
!551 = !DILocation(line: 95, column: 20, scope: !546, inlinedAt: !540)
!552 = !DILocation(line: 95, column: 35, scope: !546, inlinedAt: !540)
!553 = !{!554, !554, i64 0}
!554 = !{!"short", !287, i64 0}
!555 = !DILocation(line: 95, column: 13, scope: !546, inlinedAt: !540)
!556 = !DILocation(line: 97, column: 20, scope: !546, inlinedAt: !540)
!557 = !DILocation(line: 97, column: 35, scope: !546, inlinedAt: !540)
!558 = !{!290, !290, i64 0}
!559 = !DILocation(line: 97, column: 13, scope: !546, inlinedAt: !540)
!560 = !DILocation(line: 99, column: 20, scope: !546, inlinedAt: !540)
!561 = !DILocation(line: 99, column: 35, scope: !546, inlinedAt: !540)
!562 = !{!348, !348, i64 0}
!563 = !DILocation(line: 99, column: 13, scope: !546, inlinedAt: !540)
!564 = !DILocation(line: 101, column: 5, scope: !531, inlinedAt: !540)
!565 = !DILocation(line: 102, column: 1, scope: !531, inlinedAt: !540)
!566 = !DILocation(line: 246, column: 13, scope: !326)
!567 = !DILocation(line: 247, column: 13, scope: !326)
!568 = !DILocation(line: 0, scope: !546, inlinedAt: !540)
!569 = !DILocation(line: 246, column: 20, scope: !326)
!570 = !DILocation(line: 247, column: 18, scope: !571)
!571 = distinct !DILexicalBlock(scope: !326, file: !3, line: 247, column: 13)
!572 = !DILocation(line: 248, column: 27, scope: !573)
!573 = distinct !DILexicalBlock(scope: !571, file: !3, line: 247, column: 44)
!574 = !DILocation(line: 248, column: 13, scope: !573)
!575 = !DILocation(line: 248, column: 21, scope: !573)
!576 = !DILocation(line: 248, column: 25, scope: !573)
!577 = !DILocation(line: 249, column: 9, scope: !573)
!578 = !DILocation(line: 250, column: 20, scope: !579)
!579 = distinct !DILexicalBlock(scope: !571, file: !3, line: 249, column: 16)
!580 = !DILocation(line: 250, column: 28, scope: !579)
!581 = !DILocation(line: 250, column: 39, scope: !579)
!582 = !DILocation(line: 250, column: 13, scope: !579)
!583 = !DILocation(line: 251, column: 31, scope: !579)
!584 = !DILocation(line: 251, column: 38, scope: !579)
!585 = !DILocalVariable(name: "s", arg: 1, scope: !586, file: !13, line: 130, type: !86)
!586 = distinct !DISubprogram(name: "sdssetlen", scope: !13, file: !13, line: 130, type: !587, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !589)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !86, !534}
!589 = !{!585, !590, !591, !592}
!590 = !DILocalVariable(name: "newlen", arg: 2, scope: !586, file: !13, line: 130, type: !534)
!591 = !DILocalVariable(name: "flags", scope: !586, file: !13, line: 131, type: !20)
!592 = !DILocalVariable(name: "fp", scope: !593, file: !13, line: 135, type: !58)
!593 = distinct !DILexicalBlock(scope: !594, file: !13, line: 134, column: 13)
!594 = distinct !DILexicalBlock(scope: !586, file: !13, line: 132, column: 33)
!595 = !DILocation(line: 130, column: 34, scope: !586, inlinedAt: !596)
!596 = distinct !DILocation(line: 251, column: 13, scope: !579)
!597 = !DILocation(line: 130, column: 44, scope: !586, inlinedAt: !596)
!598 = !DILocation(line: 131, column: 27, scope: !586, inlinedAt: !596)
!599 = !DILocation(line: 131, column: 19, scope: !586, inlinedAt: !596)
!600 = !DILocation(line: 132, column: 5, scope: !586, inlinedAt: !596)
!601 = !DILocation(line: 135, column: 32, scope: !593, inlinedAt: !596)
!602 = !DILocation(line: 136, column: 23, scope: !593, inlinedAt: !596)
!603 = !DILocation(line: 136, column: 21, scope: !593, inlinedAt: !596)
!604 = !DILocation(line: 138, column: 13, scope: !594, inlinedAt: !596)
!605 = !DILocation(line: 140, column: 33, scope: !594, inlinedAt: !596)
!606 = !DILocation(line: 140, column: 13, scope: !594, inlinedAt: !596)
!607 = !DILocation(line: 140, column: 31, scope: !594, inlinedAt: !596)
!608 = !DILocation(line: 141, column: 13, scope: !594, inlinedAt: !596)
!609 = !DILocation(line: 143, column: 34, scope: !594, inlinedAt: !596)
!610 = !DILocation(line: 143, column: 13, scope: !594, inlinedAt: !596)
!611 = !DILocation(line: 143, column: 28, scope: !594, inlinedAt: !596)
!612 = !DILocation(line: 143, column: 32, scope: !594, inlinedAt: !596)
!613 = !DILocation(line: 144, column: 13, scope: !594, inlinedAt: !596)
!614 = !DILocation(line: 146, column: 34, scope: !594, inlinedAt: !596)
!615 = !DILocation(line: 146, column: 13, scope: !594, inlinedAt: !596)
!616 = !DILocation(line: 146, column: 28, scope: !594, inlinedAt: !596)
!617 = !DILocation(line: 146, column: 32, scope: !594, inlinedAt: !596)
!618 = !DILocation(line: 147, column: 13, scope: !594, inlinedAt: !596)
!619 = !DILocation(line: 149, column: 13, scope: !594, inlinedAt: !596)
!620 = !DILocation(line: 149, column: 28, scope: !594, inlinedAt: !596)
!621 = !DILocation(line: 149, column: 32, scope: !594, inlinedAt: !596)
!622 = !DILocation(line: 150, column: 13, scope: !594, inlinedAt: !596)
!623 = !DILocation(line: 0, scope: !579)
!624 = !DILocation(line: 152, column: 1, scope: !586, inlinedAt: !596)
!625 = !DILocation(line: 252, column: 35, scope: !579)
!626 = !DILocation(line: 252, column: 21, scope: !579)
!627 = !DILocation(line: 252, column: 25, scope: !579)
!628 = !DILocation(line: 254, column: 9, scope: !326)
!629 = !DILocation(line: 254, column: 17, scope: !326)
!630 = !DILocation(line: 254, column: 22, scope: !326)
!631 = !DILocation(line: 255, column: 17, scope: !326)
!632 = !DILocation(line: 255, column: 22, scope: !326)
!633 = !DILocation(line: 256, column: 5, scope: !327)
!634 = !DILocation(line: 0, scope: !635)
!635 = distinct !DILexicalBlock(scope: !337, file: !3, line: 212, column: 56)
!636 = !DILocation(line: 167, column: 29, scope: !327)
!637 = !DILocation(line: 167, column: 5, scope: !327)
!638 = distinct !{!638, !362, !639}
!639 = !DILocation(line: 256, column: 5, scope: !328)
!640 = !DILocation(line: 257, column: 1, scope: !309)
!641 = !DILocation(line: 335, column: 38, scope: !418)
!642 = !DILocation(line: 336, column: 28, scope: !418)
!643 = !DILocation(line: 337, column: 36, scope: !418)
!644 = !DILocation(line: 337, column: 29, scope: !418)
!645 = !DILocation(line: 337, column: 19, scope: !418)
!646 = !DILocation(line: 338, column: 40, scope: !418)
!647 = !DILocation(line: 338, column: 33, scope: !418)
!648 = !DILocation(line: 336, column: 32, scope: !418)
!649 = !DILocation(line: 336, column: 25, scope: !418)
!650 = !DILocation(line: 336, column: 19, scope: !418)
!651 = !DILocation(line: 307, column: 44, scope: !439, inlinedAt: !652)
!652 = distinct !DILocation(line: 338, column: 57, scope: !418)
!653 = !DILocation(line: 300, column: 20, scope: !447, inlinedAt: !654)
!654 = distinct !DILocation(line: 308, column: 25, scope: !439, inlinedAt: !652)
!655 = !DILocation(line: 300, column: 28, scope: !447, inlinedAt: !654)
!656 = !DILocation(line: 300, column: 33, scope: !447, inlinedAt: !654)
!657 = !DILocation(line: 300, column: 5, scope: !447, inlinedAt: !654)
!658 = !DILocation(line: 308, column: 19, scope: !439, inlinedAt: !652)
!659 = !DILocation(line: 309, column: 13, scope: !457, inlinedAt: !652)
!660 = !DILocation(line: 309, column: 9, scope: !439, inlinedAt: !652)
!661 = !DILocation(line: 310, column: 17, scope: !439, inlinedAt: !652)
!662 = !DILocation(line: 0, scope: !418)
!663 = !DILocation(line: 311, column: 1, scope: !439, inlinedAt: !652)
!664 = !DILocation(line: 338, column: 79, scope: !418)
!665 = !DILocation(line: 338, column: 77, scope: !418)
!666 = !DILocation(line: 338, column: 19, scope: !418)
!667 = !DILocation(line: 339, column: 9, scope: !466)
!668 = !DILocation(line: 339, column: 9, scope: !418)
!669 = !DILocation(line: 340, column: 32, scope: !466)
!670 = !DILocation(line: 340, column: 19, scope: !466)
!671 = !DILocation(line: 340, column: 57, scope: !466)
!672 = !DILocation(line: 0, scope: !466)
!673 = !DILocation(line: 341, column: 5, scope: !418)
!674 = !DILocation(line: 300, column: 20, scope: !447)
!675 = !DILocation(line: 300, column: 28, scope: !447)
!676 = !DILocation(line: 300, column: 33, scope: !447)
!677 = !DILocation(line: 300, column: 5, scope: !447)
!678 = !DILocation(line: 307, column: 44, scope: !439)
!679 = !DILocation(line: 300, column: 20, scope: !447, inlinedAt: !680)
!680 = distinct !DILocation(line: 308, column: 25, scope: !439)
!681 = !DILocation(line: 300, column: 28, scope: !447, inlinedAt: !680)
!682 = !DILocation(line: 300, column: 33, scope: !447, inlinedAt: !680)
!683 = !DILocation(line: 300, column: 5, scope: !447, inlinedAt: !680)
!684 = !DILocation(line: 308, column: 19, scope: !439)
!685 = !DILocation(line: 309, column: 13, scope: !457)
!686 = !DILocation(line: 309, column: 9, scope: !439)
!687 = !DILocation(line: 0, scope: !457)
!688 = !DILocation(line: 311, column: 1, scope: !439)
!689 = distinct !DISubprogram(name: "LFULogIncr", scope: !3, file: !3, line: 315, type: !690, isLocal: false, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !692)
!690 = !DISubroutineType(types: !691)
!691 = !{!16, !16}
!692 = !{!693, !694, !695, !696}
!693 = !DILocalVariable(name: "counter", arg: 1, scope: !689, file: !3, line: 315, type: !16)
!694 = !DILocalVariable(name: "r", scope: !689, file: !3, line: 317, type: !8)
!695 = !DILocalVariable(name: "baseval", scope: !689, file: !3, line: 318, type: !8)
!696 = !DILocalVariable(name: "p", scope: !689, file: !3, line: 320, type: !8)
!697 = !DILocation(line: 315, column: 28, scope: !689)
!698 = !DILocation(line: 316, column: 17, scope: !699)
!699 = distinct !DILexicalBlock(scope: !689, file: !3, line: 316, column: 9)
!700 = !DILocation(line: 316, column: 9, scope: !689)
!701 = !DILocation(line: 316, column: 9, scope: !699)
!702 = !DILocation(line: 317, column: 24, scope: !689)
!703 = !DILocation(line: 317, column: 16, scope: !689)
!704 = !DILocation(line: 317, column: 30, scope: !689)
!705 = !DILocation(line: 317, column: 12, scope: !689)
!706 = !DILocation(line: 318, column: 30, scope: !689)
!707 = !DILocation(line: 318, column: 22, scope: !689)
!708 = !DILocation(line: 318, column: 12, scope: !689)
!709 = !DILocation(line: 319, column: 17, scope: !710)
!710 = distinct !DILexicalBlock(scope: !689, file: !3, line: 319, column: 9)
!711 = !DILocation(line: 319, column: 9, scope: !689)
!712 = !DILocation(line: 319, column: 22, scope: !710)
!713 = !DILocation(line: 0, scope: !689)
!714 = !DILocation(line: 320, column: 36, scope: !689)
!715 = !{!347, !290, i64 2720}
!716 = !DILocation(line: 320, column: 29, scope: !689)
!717 = !DILocation(line: 320, column: 28, scope: !689)
!718 = !DILocation(line: 320, column: 50, scope: !689)
!719 = !DILocation(line: 320, column: 19, scope: !689)
!720 = !DILocation(line: 320, column: 12, scope: !689)
!721 = !DILocation(line: 321, column: 11, scope: !722)
!722 = distinct !DILexicalBlock(scope: !689, file: !3, line: 321, column: 9)
!723 = !DILocation(line: 321, column: 9, scope: !689)
!724 = !DILocation(line: 321, column: 23, scope: !722)
!725 = !DILocation(line: 321, column: 16, scope: !722)
!726 = !DILocation(line: 323, column: 1, scope: !689)
!727 = distinct !DISubprogram(name: "freeMemoryGetNotCountedMemory", scope: !3, file: !3, line: 352, type: !728, isLocal: false, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !730)
!728 = !DISubroutineType(types: !729)
!729 = !{!68}
!730 = !{!731, !732, !733, !741, !742}
!731 = !DILocalVariable(name: "overhead", scope: !727, file: !3, line: 353, type: !68)
!732 = !DILocalVariable(name: "slaves", scope: !727, file: !3, line: 354, type: !65)
!733 = !DILocalVariable(name: "li", scope: !734, file: !3, line: 357, type: !736)
!734 = distinct !DILexicalBlock(scope: !735, file: !3, line: 356, column: 17)
!735 = distinct !DILexicalBlock(scope: !727, file: !3, line: 356, column: 9)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !165, line: 45, baseType: !737)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !165, line: 42, size: 128, elements: !738)
!738 = !{!739, !740}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !737, file: !165, line: 43, baseType: !169, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !737, file: !165, line: 44, baseType: !65, size: 32, offset: 64)
!741 = !DILocalVariable(name: "ln", scope: !734, file: !3, line: 358, type: !169)
!742 = !DILocalVariable(name: "slave", scope: !743, file: !3, line: 362, type: !744)
!743 = distinct !DILexicalBlock(scope: !734, file: !3, line: 361, column: 37)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !76, line: 780, baseType: !746)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !76, line: 723, size: 135360, elements: !747)
!747 = !{!748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !759, !783, !784, !785, !786, !787, !788, !789, !790, !793, !794, !795, !796, !797, !798, !799, !800, !805, !806, !807, !808, !809, !810, !811, !812, !816, !817, !821, !822, !838, !839, !855, !856, !857, !858, !859, !860, !861, !862}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !746, file: !76, line: 724, baseType: !52, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !746, file: !76, line: 725, baseType: !65, size: 32, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !746, file: !76, line: 726, baseType: !90, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !746, file: !76, line: 727, baseType: !210, size: 64, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !746, file: !76, line: 728, baseType: !86, size: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !746, file: !76, line: 729, baseType: !68, size: 64, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !746, file: !76, line: 730, baseType: !86, size: 64, offset: 384)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !746, file: !76, line: 734, baseType: !68, size: 64, offset: 448)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !746, file: !76, line: 735, baseType: !65, size: 32, offset: 512)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !746, file: !76, line: 736, baseType: !758, size: 64, offset: 576)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !746, file: !76, line: 737, baseType: !760, size: 64, offset: 640)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !76, line: 1307, size: 640, elements: !762)
!762 = !{!763, !764, !769, !770, !771, !772, !778, !779, !780, !781, !782}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !761, file: !76, line: 1308, baseType: !87, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !761, file: !76, line: 1309, baseType: !765, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !76, line: 1305, baseType: !767)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !744}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !761, file: !76, line: 1310, baseType: !65, size: 32, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !761, file: !76, line: 1311, baseType: !87, size: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !761, file: !76, line: 1312, baseType: !65, size: 32, offset: 256)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !761, file: !76, line: 1315, baseType: !773, size: 64, offset: 320)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !76, line: 1306, baseType: !775)
!775 = !DISubroutineType(types: !776)
!776 = !{!777, !760, !758, !65, !777}
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !761, file: !76, line: 1317, baseType: !65, size: 32, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !761, file: !76, line: 1318, baseType: !65, size: 32, offset: 416)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !761, file: !76, line: 1319, baseType: !65, size: 32, offset: 448)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !761, file: !76, line: 1320, baseType: !10, size: 64, offset: 512)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !761, file: !76, line: 1320, baseType: !10, size: 64, offset: 576)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !746, file: !76, line: 737, baseType: !760, size: 64, offset: 704)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !746, file: !76, line: 738, baseType: !65, size: 32, offset: 768)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !746, file: !76, line: 739, baseType: !65, size: 32, offset: 800)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !746, file: !76, line: 740, baseType: !6, size: 64, offset: 832)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !746, file: !76, line: 741, baseType: !163, size: 64, offset: 896)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !746, file: !76, line: 742, baseType: !200, size: 64, offset: 960)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !746, file: !76, line: 743, baseType: !68, size: 64, offset: 1024)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !746, file: !76, line: 745, baseType: !791, size: 64, offset: 1088)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !792, line: 34, baseType: !6)
!792 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!793 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !746, file: !76, line: 746, baseType: !791, size: 64, offset: 1152)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !746, file: !76, line: 747, baseType: !791, size: 64, offset: 1216)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !746, file: !76, line: 748, baseType: !65, size: 32, offset: 1280)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !746, file: !76, line: 749, baseType: !65, size: 32, offset: 1312)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !746, file: !76, line: 750, baseType: !65, size: 32, offset: 1344)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !746, file: !76, line: 751, baseType: !65, size: 32, offset: 1376)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !746, file: !76, line: 752, baseType: !65, size: 32, offset: 1408)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !746, file: !76, line: 753, baseType: !801, size: 64, offset: 1472)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !802, line: 173, baseType: !803)
!802 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !71, line: 100, baseType: !804)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !71, line: 44, baseType: !6)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !746, file: !76, line: 754, baseType: !801, size: 64, offset: 1536)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !746, file: !76, line: 755, baseType: !86, size: 64, offset: 1600)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !746, file: !76, line: 756, baseType: !10, size: 64, offset: 1664)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !746, file: !76, line: 757, baseType: !10, size: 64, offset: 1728)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !746, file: !76, line: 758, baseType: !10, size: 64, offset: 1792)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !746, file: !76, line: 759, baseType: !10, size: 64, offset: 1856)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !746, file: !76, line: 760, baseType: !10, size: 64, offset: 1920)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !746, file: !76, line: 763, baseType: !813, size: 328, offset: 1984)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 328, elements: !814)
!814 = !{!815}
!815 = !DISubrange(count: 41)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !746, file: !76, line: 764, baseType: !65, size: 32, offset: 2336)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !746, file: !76, line: 765, baseType: !818, size: 368, offset: 2368)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 368, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 46)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !746, file: !76, line: 766, baseType: !65, size: 32, offset: 2752)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !746, file: !76, line: 767, baseType: !823, size: 256, offset: 2816)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !76, line: 673, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !76, line: 665, size: 256, elements: !825)
!825 = !{!826, !834, !835, !836, !837}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !824, file: !76, line: 666, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !76, line: 663, baseType: !829)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !76, line: 659, size: 192, elements: !830)
!830 = !{!831, !832, !833}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !829, file: !76, line: 660, baseType: !758, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !829, file: !76, line: 661, baseType: !65, size: 32, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !829, file: !76, line: 662, baseType: !760, size: 64, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !824, file: !76, line: 667, baseType: !65, size: 32, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !824, file: !76, line: 668, baseType: !65, size: 32, offset: 96)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !824, file: !76, line: 671, baseType: !65, size: 32, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !824, file: !76, line: 672, baseType: !791, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !746, file: !76, line: 768, baseType: !65, size: 32, offset: 3072)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !746, file: !76, line: 769, baseType: !840, size: 704, offset: 3136)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !76, line: 703, baseType: !841)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !76, line: 677, size: 704, elements: !842)
!842 = !{!843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !841, file: !76, line: 679, baseType: !75, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !841, file: !76, line: 683, baseType: !95, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !841, file: !76, line: 685, baseType: !210, size: 64, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !841, file: !76, line: 689, baseType: !68, size: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !841, file: !76, line: 690, baseType: !210, size: 64, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !841, file: !76, line: 691, baseType: !210, size: 64, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !841, file: !76, line: 692, baseType: !75, size: 64, offset: 384)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !841, file: !76, line: 692, baseType: !75, size: 64, offset: 448)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !841, file: !76, line: 693, baseType: !65, size: 32, offset: 512)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !841, file: !76, line: 696, baseType: !65, size: 32, offset: 544)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !841, file: !76, line: 697, baseType: !10, size: 64, offset: 576)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !841, file: !76, line: 700, baseType: !7, size: 64, offset: 640)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !746, file: !76, line: 770, baseType: !10, size: 64, offset: 3840)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !746, file: !76, line: 771, baseType: !163, size: 64, offset: 3904)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !746, file: !76, line: 772, baseType: !95, size: 64, offset: 3968)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !746, file: !76, line: 773, baseType: !163, size: 64, offset: 4032)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !746, file: !76, line: 774, baseType: !86, size: 64, offset: 4096)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !746, file: !76, line: 775, baseType: !169, size: 64, offset: 4160)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !746, file: !76, line: 778, baseType: !65, size: 32, offset: 4224)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !746, file: !76, line: 779, baseType: !863, size: 131072, offset: 4256)
!863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 131072, elements: !864)
!864 = !{!865}
!865 = !DISubrange(count: 16384)
!866 = !DILocation(line: 353, column: 12, scope: !727)
!867 = !DILocation(line: 354, column: 18, scope: !727)
!868 = !{!347, !289, i64 536}
!869 = !{!870, !348, i64 40}
!870 = !{!"list", !289, i64 0, !289, i64 8, !289, i64 16, !289, i64 24, !289, i64 32, !348, i64 40}
!871 = !DILocation(line: 354, column: 9, scope: !727)
!872 = !DILocation(line: 356, column: 9, scope: !735)
!873 = !DILocation(line: 356, column: 9, scope: !727)
!874 = !DILocation(line: 357, column: 9, scope: !734)
!875 = !DILocation(line: 357, column: 18, scope: !734)
!876 = !DILocation(line: 360, column: 9, scope: !734)
!877 = !DILocation(line: 361, column: 9, scope: !734)
!878 = !DILocation(line: 361, column: 21, scope: !734)
!879 = !DILocation(line: 358, column: 19, scope: !734)
!880 = !DILocation(line: 362, column: 29, scope: !743)
!881 = !{!882, !289, i64 16}
!882 = !{!"listNode", !289, i64 0, !289, i64 8, !289, i64 16}
!883 = !DILocation(line: 362, column: 21, scope: !743)
!884 = !DILocation(line: 363, column: 25, scope: !743)
!885 = !DILocation(line: 363, column: 22, scope: !743)
!886 = distinct !{!886, !877, !887}
!887 = !DILocation(line: 364, column: 9, scope: !734)
!888 = !DILocation(line: 0, scope: !743)
!889 = !DILocation(line: 365, column: 5, scope: !735)
!890 = !DILocation(line: 365, column: 5, scope: !734)
!891 = !DILocation(line: 366, column: 16, scope: !892)
!892 = distinct !DILexicalBlock(scope: !727, file: !3, line: 366, column: 9)
!893 = !{!347, !290, i64 1880}
!894 = !DILocation(line: 366, column: 26, scope: !892)
!895 = !DILocation(line: 366, column: 9, scope: !727)
!896 = !DILocation(line: 367, column: 37, scope: !897)
!897 = distinct !DILexicalBlock(scope: !892, file: !3, line: 366, column: 38)
!898 = !{!347, !289, i64 1952}
!899 = !DILocalVariable(name: "s", arg: 1, scope: !900, file: !13, line: 180, type: !536)
!900 = distinct !DISubprogram(name: "sdsalloc", scope: !13, file: !13, line: 180, type: !532, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !901)
!901 = !{!899, !902}
!902 = !DILocalVariable(name: "flags", scope: !900, file: !13, line: 181, type: !20)
!903 = !DILocation(line: 180, column: 41, scope: !900, inlinedAt: !904)
!904 = distinct !DILocation(line: 367, column: 21, scope: !897)
!905 = !DILocation(line: 181, column: 27, scope: !900, inlinedAt: !904)
!906 = !DILocation(line: 181, column: 19, scope: !900, inlinedAt: !904)
!907 = !DILocation(line: 182, column: 5, scope: !900, inlinedAt: !904)
!908 = !DILocation(line: 184, column: 20, scope: !909, inlinedAt: !904)
!909 = distinct !DILexicalBlock(scope: !900, file: !13, line: 182, column: 33)
!910 = !DILocation(line: 184, column: 13, scope: !909, inlinedAt: !904)
!911 = !DILocation(line: 186, column: 34, scope: !909, inlinedAt: !904)
!912 = !DILocation(line: 186, column: 20, scope: !909, inlinedAt: !904)
!913 = !DILocation(line: 186, column: 13, scope: !909, inlinedAt: !904)
!914 = !DILocation(line: 188, column: 35, scope: !909, inlinedAt: !904)
!915 = !DILocation(line: 188, column: 20, scope: !909, inlinedAt: !904)
!916 = !DILocation(line: 188, column: 13, scope: !909, inlinedAt: !904)
!917 = !DILocation(line: 190, column: 35, scope: !909, inlinedAt: !904)
!918 = !DILocation(line: 190, column: 20, scope: !909, inlinedAt: !904)
!919 = !DILocation(line: 190, column: 13, scope: !909, inlinedAt: !904)
!920 = !DILocation(line: 192, column: 35, scope: !909, inlinedAt: !904)
!921 = !DILocation(line: 192, column: 13, scope: !909, inlinedAt: !904)
!922 = !DILocation(line: 0, scope: !909, inlinedAt: !904)
!923 = !DILocation(line: 0, scope: !897)
!924 = !DILocation(line: 195, column: 1, scope: !900, inlinedAt: !904)
!925 = !DILocation(line: 367, column: 46, scope: !897)
!926 = !DILocation(line: 367, column: 45, scope: !897)
!927 = !DILocation(line: 367, column: 18, scope: !897)
!928 = !DILocation(line: 368, column: 5, scope: !897)
!929 = !DILocation(line: 0, scope: !727)
!930 = !DILocation(line: 369, column: 5, scope: !727)
!931 = distinct !DISubprogram(name: "getMaxmemoryState", scope: !3, file: !3, line: 396, type: !932, isLocal: false, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !936)
!932 = !DISubroutineType(types: !933)
!933 = !{!65, !934, !934, !934, !935}
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!936 = !{!937, !938, !939, !940, !941, !942, !943, !944, !945}
!937 = !DILocalVariable(name: "total", arg: 1, scope: !931, file: !3, line: 396, type: !934)
!938 = !DILocalVariable(name: "logical", arg: 2, scope: !931, file: !3, line: 396, type: !934)
!939 = !DILocalVariable(name: "tofree", arg: 3, scope: !931, file: !3, line: 396, type: !934)
!940 = !DILocalVariable(name: "level", arg: 4, scope: !931, file: !3, line: 396, type: !935)
!941 = !DILocalVariable(name: "mem_reported", scope: !931, file: !3, line: 397, type: !68)
!942 = !DILocalVariable(name: "mem_used", scope: !931, file: !3, line: 397, type: !68)
!943 = !DILocalVariable(name: "mem_tofree", scope: !931, file: !3, line: 397, type: !68)
!944 = !DILocalVariable(name: "return_ok_asap", scope: !931, file: !3, line: 405, type: !65)
!945 = !DILocalVariable(name: "overhead", scope: !931, file: !3, line: 411, type: !68)
!946 = !DILocation(line: 396, column: 31, scope: !931)
!947 = !DILocation(line: 396, column: 46, scope: !931)
!948 = !DILocation(line: 396, column: 63, scope: !931)
!949 = !DILocation(line: 396, column: 78, scope: !931)
!950 = !DILocation(line: 401, column: 20, scope: !931)
!951 = !DILocation(line: 397, column: 12, scope: !931)
!952 = !DILocation(line: 402, column: 9, scope: !953)
!953 = distinct !DILexicalBlock(scope: !931, file: !3, line: 402, column: 9)
!954 = !DILocation(line: 402, column: 9, scope: !931)
!955 = !DILocation(line: 402, column: 23, scope: !953)
!956 = !DILocation(line: 402, column: 16, scope: !953)
!957 = !DILocation(line: 405, column: 34, scope: !931)
!958 = !{!347, !286, i64 2704}
!959 = !DILocation(line: 405, column: 27, scope: !931)
!960 = !DILocation(line: 405, column: 44, scope: !931)
!961 = !DILocation(line: 405, column: 60, scope: !931)
!962 = !DILocation(line: 406, column: 9, scope: !963)
!963 = distinct !DILexicalBlock(scope: !931, file: !3, line: 406, column: 9)
!964 = !DILocation(line: 406, column: 28, scope: !963)
!965 = !DILocation(line: 406, column: 24, scope: !963)
!966 = !DILocation(line: 397, column: 26, scope: !931)
!967 = !DILocation(line: 411, column: 23, scope: !931)
!968 = !DILocation(line: 411, column: 12, scope: !931)
!969 = !DILocation(line: 412, column: 26, scope: !931)
!970 = !DILocation(line: 412, column: 16, scope: !931)
!971 = !DILocation(line: 412, column: 48, scope: !931)
!972 = !DILocation(line: 415, column: 9, scope: !931)
!973 = !DILocation(line: 416, column: 21, scope: !974)
!974 = distinct !DILexicalBlock(scope: !975, file: !3, line: 416, column: 13)
!975 = distinct !DILexicalBlock(scope: !976, file: !3, line: 415, column: 16)
!976 = distinct !DILexicalBlock(scope: !931, file: !3, line: 415, column: 9)
!977 = !DILocation(line: 416, column: 14, scope: !974)
!978 = !DILocation(line: 416, column: 13, scope: !975)
!979 = !DILocation(line: 419, column: 22, scope: !980)
!980 = distinct !DILexicalBlock(scope: !974, file: !3, line: 418, column: 16)
!981 = !DILocation(line: 419, column: 40, scope: !980)
!982 = !DILocation(line: 419, column: 38, scope: !980)
!983 = !DILocation(line: 0, scope: !980)
!984 = !{!985, !985, i64 0}
!985 = !{!"float", !287, i64 0}
!986 = !DILocation(line: 423, column: 9, scope: !931)
!987 = !DILocation(line: 426, column: 28, scope: !988)
!988 = distinct !DILexicalBlock(scope: !931, file: !3, line: 426, column: 9)
!989 = !DILocation(line: 426, column: 18, scope: !988)
!990 = !DILocation(line: 426, column: 9, scope: !931)
!991 = !DILocation(line: 429, column: 27, scope: !931)
!992 = !DILocation(line: 397, column: 36, scope: !931)
!993 = !DILocation(line: 431, column: 9, scope: !994)
!994 = distinct !DILexicalBlock(scope: !931, file: !3, line: 431, column: 9)
!995 = !DILocation(line: 431, column: 9, scope: !931)
!996 = !DILocation(line: 431, column: 27, scope: !994)
!997 = !DILocation(line: 431, column: 18, scope: !994)
!998 = !DILocation(line: 432, column: 9, scope: !999)
!999 = distinct !DILexicalBlock(scope: !931, file: !3, line: 432, column: 9)
!1000 = !DILocation(line: 432, column: 9, scope: !931)
!1001 = !DILocation(line: 432, column: 25, scope: !999)
!1002 = !DILocation(line: 432, column: 17, scope: !999)
!1003 = !DILocation(line: 0, scope: !931)
!1004 = !DILocation(line: 0, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !931, file: !3, line: 423, column: 9)
!1006 = !DILocation(line: 0, scope: !963)
!1007 = !DILocation(line: 435, column: 1, scope: !931)
!1008 = !DILocation(line: 449, column: 16, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !62, file: !3, line: 449, column: 9)
!1010 = !{!347, !289, i64 2464}
!1011 = !DILocation(line: 449, column: 9, scope: !1009)
!1012 = !DILocation(line: 449, column: 37, scope: !1009)
!1013 = !DILocation(line: 449, column: 30, scope: !1009)
!1014 = !DILocation(line: 449, column: 27, scope: !1009)
!1015 = !DILocation(line: 454, column: 18, scope: !62)
!1016 = !DILocation(line: 454, column: 9, scope: !62)
!1017 = !DILocation(line: 459, column: 9, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !62, file: !3, line: 459, column: 9)
!1019 = !DILocation(line: 459, column: 9, scope: !62)
!1020 = !DILocation(line: 396, column: 46, scope: !931, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 460, column: 9, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !62, file: !3, line: 460, column: 9)
!1023 = !DILocation(line: 396, column: 78, scope: !931, inlinedAt: !1021)
!1024 = !DILocation(line: 401, column: 20, scope: !931, inlinedAt: !1021)
!1025 = !DILocation(line: 397, column: 12, scope: !931, inlinedAt: !1021)
!1026 = !DILocation(line: 402, column: 9, scope: !931, inlinedAt: !1021)
!1027 = !DILocation(line: 402, column: 16, scope: !953, inlinedAt: !1021)
!1028 = !DILocation(line: 405, column: 34, scope: !931, inlinedAt: !1021)
!1029 = !DILocation(line: 405, column: 27, scope: !931, inlinedAt: !1021)
!1030 = !DILocation(line: 405, column: 44, scope: !931, inlinedAt: !1021)
!1031 = !DILocation(line: 405, column: 60, scope: !931, inlinedAt: !1021)
!1032 = !DILocation(line: 406, column: 24, scope: !963, inlinedAt: !1021)
!1033 = !DILocation(line: 397, column: 26, scope: !931, inlinedAt: !1021)
!1034 = !DILocation(line: 411, column: 23, scope: !931, inlinedAt: !1021)
!1035 = !DILocation(line: 411, column: 12, scope: !931, inlinedAt: !1021)
!1036 = !DILocation(line: 412, column: 26, scope: !931, inlinedAt: !1021)
!1037 = !DILocation(line: 412, column: 16, scope: !931, inlinedAt: !1021)
!1038 = !DILocation(line: 415, column: 9, scope: !931, inlinedAt: !1021)
!1039 = !DILocation(line: 423, column: 9, scope: !931, inlinedAt: !1021)
!1040 = !DILocation(line: 426, column: 9, scope: !931, inlinedAt: !1021)
!1041 = !DILocation(line: 412, column: 48, scope: !931, inlinedAt: !1021)
!1042 = !DILocation(line: 426, column: 28, scope: !988, inlinedAt: !1021)
!1043 = !DILocation(line: 426, column: 18, scope: !988, inlinedAt: !1021)
!1044 = !DILocation(line: 0, scope: !1022)
!1045 = !DILocation(line: 435, column: 1, scope: !931, inlinedAt: !1021)
!1046 = !DILocation(line: 460, column: 9, scope: !62)
!1047 = !DILocation(line: 461, column: 9, scope: !1022)
!1048 = !DILocation(line: 429, column: 27, scope: !931, inlinedAt: !1021)
!1049 = !DILocation(line: 397, column: 36, scope: !931, inlinedAt: !1021)
!1050 = !DILocation(line: 431, column: 9, scope: !931, inlinedAt: !1021)
!1051 = !DILocation(line: 432, column: 9, scope: !931, inlinedAt: !1021)
!1052 = !DILocation(line: 432, column: 17, scope: !999, inlinedAt: !1021)
!1053 = !DILocation(line: 434, column: 5, scope: !931, inlinedAt: !1021)
!1054 = !DILocation(line: 451, column: 38, scope: !62)
!1055 = !DILocation(line: 465, column: 16, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !62, file: !3, line: 465, column: 9)
!1057 = !DILocation(line: 465, column: 33, scope: !1056)
!1058 = !DILocation(line: 465, column: 9, scope: !62)
!1059 = !DILocation(line: 468, column: 5, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !62, file: !3, line: 468, column: 5)
!1061 = !{!347, !286, i64 3096}
!1062 = !DILocation(line: 468, column: 5, scope: !62)
!1063 = !DILocation(line: 468, column: 5, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 468, column: 5)
!1065 = !DILocation(line: 452, column: 14, scope: !62)
!1066 = !DILocation(line: 469, column: 5, scope: !62)
!1067 = !DILocation(line: 473, column: 13, scope: !81)
!1068 = !DILocation(line: 451, column: 26, scope: !62)
!1069 = !DILocation(line: 469, column: 22, scope: !62)
!1070 = !DILocation(line: 470, column: 22, scope: !81)
!1071 = !DILocation(line: 472, column: 13, scope: !81)
!1072 = !DILocation(line: 478, column: 20, scope: !195)
!1073 = !DILocation(line: 478, column: 37, scope: !195)
!1074 = !DILocation(line: 479, column: 37, scope: !195)
!1075 = !DILocation(line: 478, column: 79, scope: !195)
!1076 = !DILocation(line: 481, column: 46, scope: !194)
!1077 = !DILocation(line: 481, column: 39, scope: !194)
!1078 = !DILocation(line: 483, column: 13, scope: !194)
!1079 = !DILocation(line: 484, column: 31, scope: !205)
!1080 = !DILocation(line: 470, column: 19, scope: !81)
!1081 = !DILocation(line: 489, column: 22, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !205, file: !3, line: 489, column: 17)
!1083 = !DILocation(line: 489, column: 40, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 489, column: 17)
!1085 = !{!347, !290, i64 1792}
!1086 = !DILocation(line: 489, column: 31, scope: !1084)
!1087 = !DILocation(line: 489, column: 17, scope: !1082)
!1088 = !DILocation(line: 498, column: 21, scope: !205)
!1089 = !DILocation(line: 0, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !205, file: !3, line: 501, column: 17)
!1091 = !DILocation(line: 490, column: 33, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 489, column: 52)
!1093 = !{!347, !289, i64 48}
!1094 = !DILocation(line: 490, column: 35, scope: !1092)
!1095 = !DILocation(line: 474, column: 18, scope: !81)
!1096 = !DILocation(line: 491, column: 36, scope: !1092)
!1097 = !DILocation(line: 491, column: 53, scope: !1092)
!1098 = !DILocation(line: 491, column: 28, scope: !1092)
!1099 = !DILocation(line: 492, column: 44, scope: !1092)
!1100 = !DILocation(line: 492, column: 33, scope: !1092)
!1101 = !DILocation(line: 0, scope: !1092)
!1102 = !DILocation(line: 475, column: 15, scope: !81)
!1103 = !DILocation(line: 493, column: 33, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 493, column: 25)
!1105 = !{!1106, !348, i64 24}
!1106 = !{!"dictht", !289, i64 0, !348, i64 8, !348, i64 16, !348, i64 24}
!1107 = !DILocation(line: 484, column: 47, scope: !205)
!1108 = !DILocation(line: 493, column: 49, scope: !1104)
!1109 = !DILocation(line: 493, column: 25, scope: !1092)
!1110 = !DILocation(line: 494, column: 59, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 493, column: 55)
!1112 = !{!1113, !289, i64 0}
!1113 = !{!"redisDb", !289, i64 0, !289, i64 8, !289, i64 16, !289, i64 24, !289, i64 32, !290, i64 40, !286, i64 48, !289, i64 56}
!1114 = !DILocation(line: 494, column: 25, scope: !1111)
!1115 = !DILocation(line: 495, column: 36, scope: !1111)
!1116 = !DILocation(line: 496, column: 21, scope: !1111)
!1117 = !DILocation(line: 0, scope: !205)
!1118 = !DILocation(line: 489, column: 48, scope: !1084)
!1119 = !DILocation(line: 489, column: 17, scope: !1084)
!1120 = distinct !{!1120, !1087, !1121}
!1121 = !DILocation(line: 497, column: 17, scope: !1082)
!1122 = !DILocation(line: 498, column: 22, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !205, file: !3, line: 498, column: 21)
!1124 = !DILocation(line: 470, column: 16, scope: !81)
!1125 = !DILocation(line: 501, column: 17, scope: !1090)
!1126 = !DILocation(line: 502, column: 33, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 502, column: 25)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 501, column: 54)
!1129 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 501, column: 17)
!1130 = !DILocation(line: 502, column: 37, scope: !1127)
!1131 = !DILocation(line: 502, column: 25, scope: !1128)
!1132 = !DILocation(line: 503, column: 40, scope: !1128)
!1133 = !DILocation(line: 505, column: 32, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 505, column: 25)
!1135 = !DILocation(line: 505, column: 49, scope: !1134)
!1136 = !DILocation(line: 0, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 508, column: 28)
!1138 = !DILocation(line: 505, column: 25, scope: !1128)
!1139 = !DILocation(line: 509, column: 63, scope: !1137)
!1140 = !DILocation(line: 476, column: 20, scope: !81)
!1141 = !DILocation(line: 506, column: 63, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 505, column: 75)
!1143 = !DILocation(line: 0, scope: !1142)
!1144 = !DILocation(line: 514, column: 33, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 514, column: 25)
!1146 = !DILocation(line: 514, column: 48, scope: !1145)
!1147 = !DILocation(line: 514, column: 37, scope: !1145)
!1148 = !DILocation(line: 514, column: 25, scope: !1128)
!1149 = !DILocation(line: 515, column: 25, scope: !1145)
!1150 = !DILocation(line: 516, column: 33, scope: !1128)
!1151 = !DILocation(line: 517, column: 29, scope: !1128)
!1152 = !DILocation(line: 517, column: 34, scope: !1128)
!1153 = !DILocation(line: 521, column: 25, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 521, column: 25)
!1155 = !DILocation(line: 521, column: 25, scope: !1128)
!1156 = !DILocation(line: 522, column: 35, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 521, column: 29)
!1158 = !DILocation(line: 523, column: 25, scope: !1157)
!1159 = !DILocation(line: 501, column: 50, scope: !1129)
!1160 = !DILocation(line: 501, column: 17, scope: !1129)
!1161 = !DILocation(line: 501, column: 43, scope: !1129)
!1162 = distinct !{!1162, !1125, !1163}
!1163 = !DILocation(line: 527, column: 17, scope: !1090)
!1164 = !DILocation(line: 0, scope: !81)
!1165 = !DILocation(line: 528, column: 13, scope: !194)
!1166 = !DILocation(line: 483, column: 27, scope: !194)
!1167 = distinct !{!1167, !1078, !1165}
!1168 = !DILocation(line: 532, column: 70, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !195, file: !3, line: 532, column: 18)
!1170 = !DILocation(line: 538, column: 18, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 538, column: 13)
!1172 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 534, column: 9)
!1173 = !DILocation(line: 538, column: 36, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 538, column: 13)
!1175 = !DILocation(line: 538, column: 27, scope: !1174)
!1176 = !DILocation(line: 538, column: 13, scope: !1171)
!1177 = !DILocation(line: 539, column: 22, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 538, column: 48)
!1179 = !DILocation(line: 539, column: 33, scope: !1178)
!1180 = !DILocation(line: 470, column: 13, scope: !81)
!1181 = !DILocation(line: 540, column: 31, scope: !1178)
!1182 = !DILocation(line: 541, column: 24, scope: !1178)
!1183 = !DILocation(line: 542, column: 40, scope: !1178)
!1184 = !DILocation(line: 542, column: 29, scope: !1178)
!1185 = !DILocation(line: 0, scope: !1178)
!1186 = !DILocation(line: 543, column: 21, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 543, column: 21)
!1188 = !DILocation(line: 543, column: 36, scope: !1187)
!1189 = !DILocation(line: 543, column: 21, scope: !1178)
!1190 = !DILocation(line: 544, column: 26, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 543, column: 42)
!1192 = !DILocation(line: 545, column: 31, scope: !1191)
!1193 = !DILocation(line: 547, column: 21, scope: !1191)
!1194 = !DILocation(line: 538, column: 44, scope: !1174)
!1195 = !DILocation(line: 538, column: 13, scope: !1174)
!1196 = distinct !{!1196, !1176, !1197}
!1197 = !DILocation(line: 549, column: 13, scope: !1171)
!1198 = !DILocation(line: 553, column: 13, scope: !81)
!1199 = !DILocation(line: 0, scope: !194)
!1200 = !DILocation(line: 553, column: 13, scope: !209)
!1201 = !DILocation(line: 554, column: 25, scope: !208)
!1202 = !DILocation(line: 554, column: 27, scope: !208)
!1203 = !DILocation(line: 87, column: 39, scope: !531, inlinedAt: !1204)
!1204 = distinct !DILocation(line: 555, column: 55, scope: !208)
!1205 = !DILocation(line: 88, column: 27, scope: !531, inlinedAt: !1204)
!1206 = !DILocation(line: 88, column: 19, scope: !531, inlinedAt: !1204)
!1207 = !DILocation(line: 89, column: 5, scope: !531, inlinedAt: !1204)
!1208 = !DILocation(line: 91, column: 20, scope: !546, inlinedAt: !1204)
!1209 = !DILocation(line: 91, column: 13, scope: !546, inlinedAt: !1204)
!1210 = !DILocation(line: 93, column: 20, scope: !546, inlinedAt: !1204)
!1211 = !DILocation(line: 93, column: 34, scope: !546, inlinedAt: !1204)
!1212 = !DILocation(line: 93, column: 13, scope: !546, inlinedAt: !1204)
!1213 = !DILocation(line: 95, column: 20, scope: !546, inlinedAt: !1204)
!1214 = !DILocation(line: 95, column: 35, scope: !546, inlinedAt: !1204)
!1215 = !DILocation(line: 95, column: 13, scope: !546, inlinedAt: !1204)
!1216 = !DILocation(line: 97, column: 20, scope: !546, inlinedAt: !1204)
!1217 = !DILocation(line: 97, column: 35, scope: !546, inlinedAt: !1204)
!1218 = !DILocation(line: 97, column: 13, scope: !546, inlinedAt: !1204)
!1219 = !DILocation(line: 99, column: 20, scope: !546, inlinedAt: !1204)
!1220 = !DILocation(line: 99, column: 35, scope: !546, inlinedAt: !1204)
!1221 = !DILocation(line: 99, column: 13, scope: !546, inlinedAt: !1204)
!1222 = !DILocation(line: 0, scope: !546, inlinedAt: !1204)
!1223 = !DILocation(line: 0, scope: !208)
!1224 = !DILocation(line: 102, column: 1, scope: !531, inlinedAt: !1204)
!1225 = !DILocation(line: 555, column: 28, scope: !208)
!1226 = !DILocation(line: 555, column: 19, scope: !208)
!1227 = !DILocation(line: 556, column: 46, scope: !208)
!1228 = !{!347, !290, i64 3080}
!1229 = !DILocation(line: 556, column: 13, scope: !208)
!1230 = !DILocation(line: 565, column: 33, scope: !208)
!1231 = !DILocation(line: 453, column: 15, scope: !62)
!1232 = !DILocation(line: 566, column: 13, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !208, file: !3, line: 566, column: 13)
!1234 = !DILocation(line: 566, column: 13, scope: !208)
!1235 = !DILocation(line: 566, column: 13, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 566, column: 13)
!1237 = !DILocation(line: 452, column: 23, scope: !62)
!1238 = !DILocation(line: 567, column: 24, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !208, file: !3, line: 567, column: 17)
!1240 = !DILocation(line: 567, column: 17, scope: !1239)
!1241 = !DILocation(line: 567, column: 17, scope: !208)
!1242 = !DILocation(line: 568, column: 17, scope: !1239)
!1243 = !DILocation(line: 570, column: 17, scope: !1239)
!1244 = !DILocation(line: 571, column: 13, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !208, file: !3, line: 571, column: 13)
!1246 = !DILocation(line: 571, column: 13, scope: !208)
!1247 = !DILocation(line: 572, column: 13, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !208, file: !3, line: 572, column: 13)
!1249 = !DILocation(line: 571, column: 13, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 571, column: 13)
!1251 = !DILocation(line: 572, column: 13, scope: !208)
!1252 = !DILocation(line: 573, column: 13, scope: !208)
!1253 = !DILocation(line: 574, column: 34, scope: !208)
!1254 = !DILocation(line: 574, column: 19, scope: !208)
!1255 = !DILocation(line: 575, column: 23, scope: !208)
!1256 = !DILocation(line: 576, column: 36, scope: !208)
!1257 = !{!347, !286, i64 1048}
!1258 = !DILocation(line: 578, column: 29, scope: !208)
!1259 = !{!1113, !290, i64 40}
!1260 = !DILocation(line: 577, column: 13, scope: !208)
!1261 = !DILocation(line: 579, column: 13, scope: !208)
!1262 = !DILocation(line: 586, column: 17, scope: !208)
!1263 = !DILocation(line: 586, column: 25, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !208, file: !3, line: 586, column: 17)
!1265 = !DILocation(line: 595, column: 24, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !208, file: !3, line: 595, column: 17)
!1267 = !DILocation(line: 595, column: 17, scope: !1266)
!1268 = !DILocation(line: 595, column: 47, scope: !1266)
!1269 = !DILocation(line: 595, column: 17, scope: !208)
!1270 = !DILocation(line: 603, column: 13, scope: !81)
!1271 = !DILocation(line: 604, column: 13, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 604, column: 13)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 603, column: 26)
!1274 = distinct !DILexicalBlock(scope: !81, file: !3, line: 603, column: 13)
!1275 = !DILocation(line: 604, column: 13, scope: !1273)
!1276 = !DILocation(line: 605, column: 13, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 605, column: 13)
!1278 = !DILocation(line: 604, column: 13, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 604, column: 13)
!1280 = !DILocation(line: 605, column: 13, scope: !1273)
!1281 = !DILocation(line: 606, column: 13, scope: !1273)
!1282 = !DILocation(line: 601, column: 9, scope: !208)
!1283 = !DILocation(line: 608, column: 5, scope: !62)
!1284 = !DILocation(line: 609, column: 5, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !62, file: !3, line: 609, column: 5)
!1286 = !DILocation(line: 609, column: 5, scope: !62)
!1287 = !DILocation(line: 610, column: 5, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !62, file: !3, line: 610, column: 5)
!1289 = !DILocation(line: 609, column: 5, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 609, column: 5)
!1291 = !DILocation(line: 610, column: 5, scope: !62)
!1292 = !DILocation(line: 617, column: 5, scope: !62)
!1293 = !DILocation(line: 617, column: 11, scope: !62)
!1294 = !DILocation(line: 451, column: 12, scope: !62)
!1295 = !DILocation(line: 618, column: 30, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 618, column: 13)
!1297 = distinct !DILexicalBlock(scope: !62, file: !3, line: 617, column: 48)
!1298 = !DILocation(line: 618, column: 53, scope: !1296)
!1299 = !DILocation(line: 618, column: 66, scope: !1296)
!1300 = !DILocation(line: 618, column: 13, scope: !1297)
!1301 = !DILocation(line: 620, column: 9, scope: !1297)
!1302 = distinct !{!1302, !1292, !1303}
!1303 = !DILocation(line: 621, column: 5, scope: !62)
!1304 = !DILocation(line: 0, scope: !1018)
!1305 = !DILocation(line: 623, column: 1, scope: !62)
!1306 = distinct !DISubprogram(name: "freeMemoryIfNeededAndSafe", scope: !3, file: !3, line: 632, type: !63, isLocal: false, isDefinition: true, scopeLine: 632, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!1307 = !DILocation(line: 633, column: 16, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 633, column: 9)
!1309 = !{!347, !290, i64 3068}
!1310 = !DILocation(line: 633, column: 39, scope: !1308)
!1311 = !DILocation(line: 633, column: 29, scope: !1308)
!1312 = !DILocation(line: 634, column: 12, scope: !1306)
!1313 = !DILocation(line: 634, column: 5, scope: !1306)
!1314 = !DILocation(line: 0, scope: !1306)
!1315 = !DILocation(line: 0, scope: !1308)
!1316 = !DILocation(line: 635, column: 1, scope: !1306)
