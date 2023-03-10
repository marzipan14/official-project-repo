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
  %1 = load atomic i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 11) monotonic, align 8, !dbg !233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !238
  ret i32 %1, !dbg !238
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i64 @estimateObjectIdleTime(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !239 {
  %2 = load atomic i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 11) monotonic, align 8, !dbg !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !249
  %3 = zext i32 %2 to i64, !dbg !250
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !252
  %5 = load i32, i32* %4, align 8, !dbg !252
  %6 = lshr i32 %5, 8, !dbg !252
  %7 = icmp ult i32 %2, %6, !dbg !254
  %8 = zext i32 %6 to i64, !dbg !255
  %9 = xor i32 %6, 16777215, !dbg !256
  %10 = zext i32 %9 to i64, !dbg !258
  %11 = sub nsw i64 0, %8, !dbg !259
  %12 = select i1 %7, i64 %10, i64 %11, !dbg !259
  %13 = add nsw i64 %12, %3, !dbg !259
  %14 = mul nsw i64 %13, 1000, !dbg !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  ret i64 %14, !dbg !261
}

; Function Attrs: noredzone nounwind
define dso_local void @evictionPoolAlloc() local_unnamed_addr #0 !dbg !262 {
  %1 = tail call i8* @zmalloc(i64 512) #6, !dbg !268
  %2 = bitcast i8* %1 to %struct.evictionPoolEntry*, !dbg !268
  br label %3, !dbg !271

; <label>:3:                                      ; preds = %3, %0
  %4 = phi i64 [ 0, %0 ], [ %10, %3 ]
  %5 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %2, i64 %4, i32 0, !dbg !273
  store i64 0, i64* %5, align 8, !dbg !276, !tbaa !277
  %6 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %2, i64 %4, i32 1, !dbg !284
  store i8* null, i8** %6, align 8, !dbg !285, !tbaa !286
  %7 = tail call i8* @sdsnewlen(i8* null, i64 255) #6, !dbg !287
  %8 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %2, i64 %4, i32 2, !dbg !288
  store i8* %7, i8** %8, align 8, !dbg !289, !tbaa !290
  %9 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %2, i64 %4, i32 3, !dbg !291
  store i32 0, i32* %9, align 8, !dbg !292, !tbaa !293
  %10 = add nuw nsw i64 %4, 1, !dbg !294
  %11 = icmp eq i64 %10, 16, !dbg !295
  br i1 %11, label %12, label %3, !dbg !271, !llvm.loop !296

; <label>:12:                                     ; preds = %3
  store i8* %1, i8** bitcast (%struct.evictionPoolEntry** @EvictionPoolLRU to i8**), align 8, !dbg !298, !tbaa !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  ret void, !dbg !300
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @evictionPoolPopulate(i32, %struct.dict*, %struct.dict*, %struct.evictionPoolEntry*) local_unnamed_addr #0 !dbg !301 {
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 229), align 4, !dbg !337, !tbaa !338
  %6 = zext i32 %5 to i64, !dbg !345
  %7 = alloca %struct.dictEntry*, i64 %6, align 16, !dbg !345
  %8 = call i32 @dictGetSomeKeys(%struct.dict* %1, %struct.dictEntry** nonnull %7, i32 %5) #6, !dbg !348
  %9 = icmp sgt i32 %8, 0, !dbg !352
  br i1 %9, label %10, label %247, !dbg !353

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
  %20 = sext i32 %8 to i64, !dbg !353
  %21 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 0, i32 0
  %22 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 1, i32 1
  %23 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 1, i32 0
  %24 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 2, i32 1
  %25 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 2, i32 0
  %26 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 3, i32 1
  %27 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 3, i32 0
  %28 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 4, i32 1
  %29 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 4, i32 0
  %30 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 5, i32 1
  %31 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 5, i32 0
  %32 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 6, i32 1
  %33 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 6, i32 0
  %34 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 7, i32 1
  %35 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 7, i32 0
  %36 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 8, i32 1
  %37 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 8, i32 0
  %38 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 9, i32 1
  %39 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 9, i32 0
  %40 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 10, i32 1
  %41 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 10, i32 0
  %42 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 11, i32 1
  %43 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 11, i32 0
  %44 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 12, i32 1
  %45 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 12, i32 0
  %46 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 13, i32 1
  %47 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 13, i32 0
  %48 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 14, i32 1
  %49 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 14, i32 0
  %50 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 15, i32 0
  br label %51, !dbg !353

; <label>:51:                                     ; preds = %10, %244
  %52 = phi i64 [ 0, %10 ], [ %245, %244 ]
  %53 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %7, i64 %52, !dbg !354
  %54 = load %struct.dictEntry*, %struct.dictEntry** %53, align 8, !dbg !354, !tbaa !299
  %55 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %54, i64 0, i32 0, !dbg !356
  %56 = load i8*, i8** %55, align 8, !dbg !356, !tbaa !357
  %57 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !360, !tbaa !362
  %58 = icmp eq i32 %57, 512, !dbg !363
  br i1 %58, label %59, label %61, !dbg !364

; <label>:59:                                     ; preds = %51
  %60 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %54, i64 0, i32 1, i32 0, !dbg !365
  br label %120, !dbg !364

; <label>:61:                                     ; preds = %51
  br i1 %11, label %65, label %62, !dbg !370

; <label>:62:                                     ; preds = %61
  %63 = call %struct.dictEntry* @dictFind(%struct.dict* %2, i8* %56) #6, !dbg !372
  %64 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !374, !tbaa !362
  br label %65, !dbg !375

; <label>:65:                                     ; preds = %62, %61
  %66 = phi i32 [ %64, %62 ], [ %57, %61 ], !dbg !374
  %67 = phi %struct.dictEntry* [ %63, %62 ], [ %54, %61 ], !dbg !376
  %68 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %67, i64 0, i32 1, i32 0, !dbg !377
  %69 = bitcast i8** %68 to %struct.redisObject**, !dbg !377
  %70 = load %struct.redisObject*, %struct.redisObject** %69, align 8, !dbg !377, !tbaa !378
  %71 = and i32 %66, 1, !dbg !379
  %72 = icmp eq i32 %71, 0, !dbg !379
  br i1 %72, label %87, label %73, !dbg !380

; <label>:73:                                     ; preds = %65
  %74 = load atomic i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 11) monotonic, align 8, !dbg !384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  %75 = zext i32 %74 to i64, !dbg !388
  %76 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %70, i64 0, i32 0, !dbg !390
  %77 = load i32, i32* %76, align 8, !dbg !390
  %78 = lshr i32 %77, 8, !dbg !390
  %79 = icmp ult i32 %74, %78, !dbg !391
  %80 = zext i32 %78 to i64, !dbg !392
  %81 = xor i32 %78, 16777215, !dbg !393
  %82 = zext i32 %81 to i64, !dbg !394
  %83 = sub nsw i64 0, %80, !dbg !395
  %84 = select i1 %79, i64 %82, i64 %83, !dbg !395
  %85 = add nsw i64 %84, %75, !dbg !395
  %86 = mul nsw i64 %85, 1000, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  br label %126, !dbg !399

; <label>:87:                                     ; preds = %65
  %88 = and i32 %66, 2, !dbg !400
  %89 = icmp eq i32 %88, 0, !dbg !400
  br i1 %89, label %118, label %90, !dbg !401

; <label>:90:                                     ; preds = %87
  %91 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %70, i64 0, i32 0, !dbg !413
  %92 = load i32, i32* %91, align 8, !dbg !413
  %93 = lshr i32 %92, 8, !dbg !413
  %94 = and i32 %93, 255, !dbg !414
  %95 = zext i32 %94 to i64, !dbg !415
  %96 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 231), align 4, !dbg !417, !tbaa !418
  %97 = icmp eq i32 %96, 0, !dbg !419
  br i1 %97, label %115, label %98, !dbg !419

; <label>:98:                                     ; preds = %90
  %99 = lshr i32 %92, 16, !dbg !420
  %100 = zext i32 %99 to i64, !dbg !421
  %101 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !431, !tbaa !436
  %102 = sdiv i64 %101, 60, !dbg !437
  %103 = and i64 %102, 65535, !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  %104 = icmp ult i64 %103, %100, !dbg !441
  %105 = select i1 %104, i64 65535, i64 0, !dbg !443
  %106 = sub nsw i64 %103, %100, !dbg !443
  %107 = add nsw i64 %105, %106, !dbg !443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !444
  %108 = sext i32 %96 to i64, !dbg !445
  %109 = udiv i64 %107, %108, !dbg !446
  %110 = icmp ult i64 %107, %108, !dbg !448
  br i1 %110, label %115, label %111, !dbg !450

; <label>:111:                                    ; preds = %98
  %112 = icmp ugt i64 %109, %95, !dbg !451
  %113 = select i1 %112, i64 %109, i64 %95, !dbg !451
  %114 = sub i64 %113, %109, !dbg !451
  br label %115, !dbg !452

; <label>:115:                                    ; preds = %90, %98, %111
  %116 = phi i64 [ %114, %111 ], [ %95, %98 ], [ %95, %90 ], !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !454
  %117 = sub i64 255, %116, !dbg !455
  br label %126, !dbg !456

; <label>:118:                                    ; preds = %87
  %119 = icmp eq i32 %66, 512, !dbg !457
  br i1 %119, label %120, label %125, !dbg !458

; <label>:120:                                    ; preds = %59, %118
  %121 = phi i8** [ %60, %59 ], [ %68, %118 ], !dbg !365
  %122 = bitcast i8** %121 to i64*, !dbg !365
  %123 = load i64, i64* %122, align 8, !dbg !365, !tbaa !378
  %124 = xor i64 %123, -1, !dbg !459
  br label %126

; <label>:125:                                    ; preds = %118
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 202, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !460
  call void @_exit(i32 1) #7, !dbg !460
  unreachable, !dbg !460

; <label>:126:                                    ; preds = %115, %120, %73
  %127 = phi i64 [ %86, %73 ], [ %117, %115 ], [ %124, %120 ], !dbg !462
  %128 = load i8*, i8** %16, align 8, !dbg !464, !tbaa !286
  %129 = icmp eq i8* %128, null, !dbg !465
  br i1 %129, label %136, label %130, !dbg !466

; <label>:130:                                    ; preds = %126
  %131 = load i64, i64* %21, align 8, !dbg !467, !tbaa !277
  %132 = icmp ult i64 %131, %127, !dbg !468
  br i1 %132, label %133, label %136, !dbg !469

; <label>:133:                                    ; preds = %130
  %134 = load i8*, i8** %22, align 8, !dbg !464, !tbaa !286
  %135 = icmp eq i8* %134, null, !dbg !465
  br i1 %135, label %169, label %248, !dbg !466

; <label>:136:                                    ; preds = %130, %126
  %137 = load i8*, i8** %12, align 8, !dbg !470, !tbaa !286
  %138 = icmp eq i8* %137, null, !dbg !471
  br i1 %138, label %139, label %244, !dbg !472

; <label>:139:                                    ; preds = %136
  %140 = icmp eq i8* %128, null, !dbg !473
  br i1 %140, label %169, label %141, !dbg !474

; <label>:141:                                    ; preds = %248, %254, %260, %266, %272, %278, %284, %290, %296, %302, %308, %314, %320, %326, %332, %139
  %142 = phi i32 [ 0, %139 ], [ 1, %248 ], [ 2, %254 ], [ 3, %260 ], [ 4, %266 ], [ 5, %272 ], [ 6, %278 ], [ 7, %284 ], [ 8, %290 ], [ 9, %296 ], [ 10, %302 ], [ 11, %308 ], [ 12, %314 ], [ 13, %320 ], [ 14, %326 ], [ 15, %332 ]
  %143 = load i8*, i8** %12, align 8, !dbg !475, !tbaa !286
  %144 = icmp eq i8* %143, null, !dbg !476
  br i1 %144, label %145, label %158, !dbg !477

; <label>:145:                                    ; preds = %141
  %146 = load i64, i64* %14, align 8, !dbg !478, !tbaa !290
  %147 = zext i32 %142 to i64, !dbg !480
  %148 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %147, !dbg !480
  %149 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %148, i64 1, !dbg !481
  %150 = bitcast %struct.evictionPoolEntry* %149 to i8*, !dbg !482
  %151 = bitcast %struct.evictionPoolEntry* %148 to i8*, !dbg !483
  %152 = shl nuw nsw i32 %142, 5, !dbg !484
  %153 = xor i32 %152, 480, !dbg !484
  %154 = zext i32 %153 to i64, !dbg !484
  %155 = call i8* @memmove(i8* nonnull %150, i8* %151, i64 %154) #6, !dbg !485
  %156 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %147, i32 2, !dbg !486
  %157 = bitcast i8** %156 to i64*, !dbg !487
  store i64 %146, i64* %157, align 8, !dbg !487, !tbaa !290
  br label %169, !dbg !488

; <label>:158:                                    ; preds = %332, %141
  %159 = phi i32 [ %142, %141 ], [ 16, %332 ]
  %160 = add nsw i32 %159, -1, !dbg !489
  %161 = load i8*, i8** %15, align 8, !dbg !490, !tbaa !290
  %162 = icmp eq i8* %128, %161, !dbg !492
  br i1 %162, label %164, label %163, !dbg !494

; <label>:163:                                    ; preds = %158
  call void @sdsfree(i8* nonnull %128) #6, !dbg !495
  br label %164, !dbg !495

; <label>:164:                                    ; preds = %158, %163
  %165 = sext i32 %160 to i64, !dbg !496
  %166 = shl nsw i64 %165, 5, !dbg !497
  %167 = call i8* @memmove(i8* nonnull %17, i8* nonnull %19, i64 %166) #6, !dbg !498
  %168 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %165, i32 2, !dbg !499
  store i8* %161, i8** %168, align 8, !dbg !500, !tbaa !290
  br label %169

; <label>:169:                                    ; preds = %133, %251, %257, %263, %269, %275, %281, %287, %293, %299, %305, %311, %317, %323, %329, %139, %164, %145
  %170 = phi i32 [ 0, %139 ], [ %142, %145 ], [ %160, %164 ], [ 1, %133 ], [ 2, %251 ], [ 3, %257 ], [ 4, %263 ], [ 5, %269 ], [ 6, %275 ], [ 7, %281 ], [ 8, %287 ], [ 9, %293 ], [ 10, %299 ], [ 11, %305 ], [ 12, %311 ], [ 13, %317 ], [ 14, %323 ], [ 15, %329 ], !dbg !501
  %171 = getelementptr inbounds i8, i8* %56, i64 -1, !dbg !513
  %172 = load i8, i8* %171, align 1, !dbg !513, !tbaa !378
  %173 = trunc i8 %172 to i3, !dbg !515
  switch i3 %173, label %174 [
    i3 0, label %175
    i3 1, label %178
    i3 2, label %182
    i3 3, label %187
    i3 -4, label %192
  ], !dbg !515

; <label>:174:                                    ; preds = %169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  br label %204, !dbg !518

; <label>:175:                                    ; preds = %169
  %176 = lshr i8 %172, 3, !dbg !519
  %177 = zext i8 %176 to i64, !dbg !519
  br label %196, !dbg !521

; <label>:178:                                    ; preds = %169
  %179 = getelementptr inbounds i8, i8* %56, i64 -3, !dbg !522
  %180 = load i8, i8* %179, align 1, !dbg !523, !tbaa !378
  %181 = zext i8 %180 to i64, !dbg !522
  br label %196, !dbg !524

; <label>:182:                                    ; preds = %169
  %183 = getelementptr inbounds i8, i8* %56, i64 -5, !dbg !525
  %184 = bitcast i8* %183 to i16*, !dbg !526
  %185 = load i16, i16* %184, align 1, !dbg !526, !tbaa !527
  %186 = zext i16 %185 to i64, !dbg !525
  br label %196, !dbg !529

; <label>:187:                                    ; preds = %169
  %188 = getelementptr inbounds i8, i8* %56, i64 -9, !dbg !530
  %189 = bitcast i8* %188 to i32*, !dbg !531
  %190 = load i32, i32* %189, align 1, !dbg !531, !tbaa !532
  %191 = zext i32 %190 to i64, !dbg !530
  br label %196, !dbg !533

; <label>:192:                                    ; preds = %169
  %193 = getelementptr inbounds i8, i8* %56, i64 -17, !dbg !534
  %194 = bitcast i8* %193 to i64*, !dbg !535
  %195 = load i64, i64* %194, align 1, !dbg !535, !tbaa !536
  br label %196, !dbg !537

; <label>:196:                                    ; preds = %175, %178, %182, %187, %192
  %197 = phi i64 [ %195, %192 ], [ %191, %187 ], [ %186, %182 ], [ %181, %178 ], [ %177, %175 ], !dbg !538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  %198 = trunc i64 %197 to i32, !dbg !539
  %199 = icmp sgt i32 %198, 255, !dbg !540
  br i1 %199, label %200, label %204, !dbg !518

; <label>:200:                                    ; preds = %196
  %201 = call i8* @sdsdup(i8* nonnull %56) #6, !dbg !542
  %202 = sext i32 %170 to i64, !dbg !544
  %203 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %202, i32 1, !dbg !545
  store i8* %201, i8** %203, align 8, !dbg !546, !tbaa !286
  br label %240, !dbg !547

; <label>:204:                                    ; preds = %174, %196
  %205 = phi i64 [ 0, %174 ], [ %197, %196 ]
  %206 = sext i32 %170 to i64, !dbg !548
  %207 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %206, i32 2, !dbg !550
  %208 = load i8*, i8** %207, align 8, !dbg !550, !tbaa !290
  %209 = shl i64 %205, 32, !dbg !551
  %210 = add i64 %209, 4294967296, !dbg !551
  %211 = ashr exact i64 %210, 32, !dbg !551
  %212 = call i8* @memcpy(i8* %208, i8* nonnull %56, i64 %211) #6, !dbg !552
  %213 = load i8*, i8** %207, align 8, !dbg !553, !tbaa !290
  %214 = ashr exact i64 %209, 32, !dbg !554
  %215 = getelementptr inbounds i8, i8* %213, i64 -1, !dbg !568
  %216 = load i8, i8* %215, align 1, !dbg !568, !tbaa !378
  %217 = trunc i8 %216 to i3, !dbg !570
  switch i3 %217, label %235 [
    i3 0, label %218
    i3 1, label %221
    i3 2, label %224
    i3 3, label %228
    i3 -4, label %232
  ], !dbg !570

; <label>:218:                                    ; preds = %204
  %219 = trunc i64 %205 to i8, !dbg !572
  %220 = shl i8 %219, 3, !dbg !572
  store i8 %220, i8* %215, align 1, !dbg !573, !tbaa !378
  br label %235, !dbg !574

; <label>:221:                                    ; preds = %204
  %222 = trunc i64 %214 to i8, !dbg !575
  %223 = getelementptr inbounds i8, i8* %213, i64 -3, !dbg !576
  store i8 %222, i8* %223, align 1, !dbg !577, !tbaa !378
  br label %235, !dbg !578

; <label>:224:                                    ; preds = %204
  %225 = trunc i64 %214 to i16, !dbg !579
  %226 = getelementptr inbounds i8, i8* %213, i64 -5, !dbg !580
  %227 = bitcast i8* %226 to i16*, !dbg !581
  store i16 %225, i16* %227, align 1, !dbg !582, !tbaa !527
  br label %235, !dbg !583

; <label>:228:                                    ; preds = %204
  %229 = trunc i64 %214 to i32, !dbg !584
  %230 = getelementptr inbounds i8, i8* %213, i64 -9, !dbg !585
  %231 = bitcast i8* %230 to i32*, !dbg !586
  store i32 %229, i32* %231, align 1, !dbg !587, !tbaa !532
  br label %235, !dbg !588

; <label>:232:                                    ; preds = %204
  %233 = getelementptr inbounds i8, i8* %213, i64 -17, !dbg !589
  %234 = bitcast i8* %233 to i64*, !dbg !590
  store i64 %214, i64* %234, align 1, !dbg !591, !tbaa !536
  br label %235, !dbg !592

; <label>:235:                                    ; preds = %204, %218, %221, %224, %228, %232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !593
  %236 = bitcast i8** %207 to i64*, !dbg !594
  %237 = load i64, i64* %236, align 8, !dbg !594, !tbaa !290
  %238 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %206, i32 1, !dbg !595
  %239 = bitcast i8** %238 to i64*, !dbg !596
  store i64 %237, i64* %239, align 8, !dbg !596, !tbaa !286
  br label %240

; <label>:240:                                    ; preds = %235, %200
  %241 = phi i64 [ %206, %235 ], [ %202, %200 ], !dbg !597
  %242 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %241, i32 0, !dbg !598
  store i64 %127, i64* %242, align 8, !dbg !599, !tbaa !277
  %243 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %241, i32 3, !dbg !600
  store i32 %0, i32* %243, align 8, !dbg !601, !tbaa !293
  br label %244, !dbg !602

; <label>:244:                                    ; preds = %136, %240
  %245 = add nuw nsw i64 %52, 1, !dbg !603
  %246 = icmp slt i64 %245, %20, !dbg !352
  br i1 %246, label %51, label %247, !dbg !353, !llvm.loop !604

; <label>:247:                                    ; preds = %244, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !606
  ret void, !dbg !606

; <label>:248:                                    ; preds = %133
  %249 = load i64, i64* %23, align 8, !dbg !467, !tbaa !277
  %250 = icmp ult i64 %249, %127, !dbg !468
  br i1 %250, label %251, label %141, !dbg !469

; <label>:251:                                    ; preds = %248
  %252 = load i8*, i8** %24, align 8, !dbg !464, !tbaa !286
  %253 = icmp eq i8* %252, null, !dbg !465
  br i1 %253, label %169, label %254, !dbg !466

; <label>:254:                                    ; preds = %251
  %255 = load i64, i64* %25, align 8, !dbg !467, !tbaa !277
  %256 = icmp ult i64 %255, %127, !dbg !468
  br i1 %256, label %257, label %141, !dbg !469

; <label>:257:                                    ; preds = %254
  %258 = load i8*, i8** %26, align 8, !dbg !464, !tbaa !286
  %259 = icmp eq i8* %258, null, !dbg !465
  br i1 %259, label %169, label %260, !dbg !466

; <label>:260:                                    ; preds = %257
  %261 = load i64, i64* %27, align 8, !dbg !467, !tbaa !277
  %262 = icmp ult i64 %261, %127, !dbg !468
  br i1 %262, label %263, label %141, !dbg !469

; <label>:263:                                    ; preds = %260
  %264 = load i8*, i8** %28, align 8, !dbg !464, !tbaa !286
  %265 = icmp eq i8* %264, null, !dbg !465
  br i1 %265, label %169, label %266, !dbg !466

; <label>:266:                                    ; preds = %263
  %267 = load i64, i64* %29, align 8, !dbg !467, !tbaa !277
  %268 = icmp ult i64 %267, %127, !dbg !468
  br i1 %268, label %269, label %141, !dbg !469

; <label>:269:                                    ; preds = %266
  %270 = load i8*, i8** %30, align 8, !dbg !464, !tbaa !286
  %271 = icmp eq i8* %270, null, !dbg !465
  br i1 %271, label %169, label %272, !dbg !466

; <label>:272:                                    ; preds = %269
  %273 = load i64, i64* %31, align 8, !dbg !467, !tbaa !277
  %274 = icmp ult i64 %273, %127, !dbg !468
  br i1 %274, label %275, label %141, !dbg !469

; <label>:275:                                    ; preds = %272
  %276 = load i8*, i8** %32, align 8, !dbg !464, !tbaa !286
  %277 = icmp eq i8* %276, null, !dbg !465
  br i1 %277, label %169, label %278, !dbg !466

; <label>:278:                                    ; preds = %275
  %279 = load i64, i64* %33, align 8, !dbg !467, !tbaa !277
  %280 = icmp ult i64 %279, %127, !dbg !468
  br i1 %280, label %281, label %141, !dbg !469

; <label>:281:                                    ; preds = %278
  %282 = load i8*, i8** %34, align 8, !dbg !464, !tbaa !286
  %283 = icmp eq i8* %282, null, !dbg !465
  br i1 %283, label %169, label %284, !dbg !466

; <label>:284:                                    ; preds = %281
  %285 = load i64, i64* %35, align 8, !dbg !467, !tbaa !277
  %286 = icmp ult i64 %285, %127, !dbg !468
  br i1 %286, label %287, label %141, !dbg !469

; <label>:287:                                    ; preds = %284
  %288 = load i8*, i8** %36, align 8, !dbg !464, !tbaa !286
  %289 = icmp eq i8* %288, null, !dbg !465
  br i1 %289, label %169, label %290, !dbg !466

; <label>:290:                                    ; preds = %287
  %291 = load i64, i64* %37, align 8, !dbg !467, !tbaa !277
  %292 = icmp ult i64 %291, %127, !dbg !468
  br i1 %292, label %293, label %141, !dbg !469

; <label>:293:                                    ; preds = %290
  %294 = load i8*, i8** %38, align 8, !dbg !464, !tbaa !286
  %295 = icmp eq i8* %294, null, !dbg !465
  br i1 %295, label %169, label %296, !dbg !466

; <label>:296:                                    ; preds = %293
  %297 = load i64, i64* %39, align 8, !dbg !467, !tbaa !277
  %298 = icmp ult i64 %297, %127, !dbg !468
  br i1 %298, label %299, label %141, !dbg !469

; <label>:299:                                    ; preds = %296
  %300 = load i8*, i8** %40, align 8, !dbg !464, !tbaa !286
  %301 = icmp eq i8* %300, null, !dbg !465
  br i1 %301, label %169, label %302, !dbg !466

; <label>:302:                                    ; preds = %299
  %303 = load i64, i64* %41, align 8, !dbg !467, !tbaa !277
  %304 = icmp ult i64 %303, %127, !dbg !468
  br i1 %304, label %305, label %141, !dbg !469

; <label>:305:                                    ; preds = %302
  %306 = load i8*, i8** %42, align 8, !dbg !464, !tbaa !286
  %307 = icmp eq i8* %306, null, !dbg !465
  br i1 %307, label %169, label %308, !dbg !466

; <label>:308:                                    ; preds = %305
  %309 = load i64, i64* %43, align 8, !dbg !467, !tbaa !277
  %310 = icmp ult i64 %309, %127, !dbg !468
  br i1 %310, label %311, label %141, !dbg !469

; <label>:311:                                    ; preds = %308
  %312 = load i8*, i8** %44, align 8, !dbg !464, !tbaa !286
  %313 = icmp eq i8* %312, null, !dbg !465
  br i1 %313, label %169, label %314, !dbg !466

; <label>:314:                                    ; preds = %311
  %315 = load i64, i64* %45, align 8, !dbg !467, !tbaa !277
  %316 = icmp ult i64 %315, %127, !dbg !468
  br i1 %316, label %317, label %141, !dbg !469

; <label>:317:                                    ; preds = %314
  %318 = load i8*, i8** %46, align 8, !dbg !464, !tbaa !286
  %319 = icmp eq i8* %318, null, !dbg !465
  br i1 %319, label %169, label %320, !dbg !466

; <label>:320:                                    ; preds = %317
  %321 = load i64, i64* %47, align 8, !dbg !467, !tbaa !277
  %322 = icmp ult i64 %321, %127, !dbg !468
  br i1 %322, label %323, label %141, !dbg !469

; <label>:323:                                    ; preds = %320
  %324 = load i8*, i8** %48, align 8, !dbg !464, !tbaa !286
  %325 = icmp eq i8* %324, null, !dbg !465
  br i1 %325, label %169, label %326, !dbg !466

; <label>:326:                                    ; preds = %323
  %327 = load i64, i64* %49, align 8, !dbg !467, !tbaa !277
  %328 = icmp ult i64 %327, %127, !dbg !468
  br i1 %328, label %329, label %141, !dbg !469

; <label>:329:                                    ; preds = %326
  %330 = load i8*, i8** %12, align 8, !dbg !464, !tbaa !286
  %331 = icmp eq i8* %330, null, !dbg !465
  br i1 %331, label %169, label %332, !dbg !466

; <label>:332:                                    ; preds = %329
  %333 = load i64, i64* %50, align 8, !dbg !467, !tbaa !277
  %334 = icmp ult i64 %333, %127, !dbg !468
  br i1 %334, label %158, label %141, !dbg !469
}

; Function Attrs: noredzone
declare dso_local i32 @dictGetSomeKeys(%struct.dict*, %struct.dictEntry**, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @LFUDecrAndReturn(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !403 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !608
  %3 = load i32, i32* %2, align 8, !dbg !608
  %4 = lshr i32 %3, 8, !dbg !608
  %5 = and i32 %4, 255, !dbg !609
  %6 = zext i32 %5 to i64, !dbg !610
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 231), align 4, !dbg !612, !tbaa !418
  %8 = icmp eq i32 %7, 0, !dbg !613
  br i1 %8, label %26, label %9, !dbg !613

; <label>:9:                                      ; preds = %1
  %10 = lshr i32 %3, 16, !dbg !614
  %11 = zext i32 %10 to i64, !dbg !615
  %12 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !619, !tbaa !436
  %13 = sdiv i64 %12, 60, !dbg !621
  %14 = and i64 %13, 65535, !dbg !622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  %15 = icmp ult i64 %14, %11, !dbg !625
  %16 = select i1 %15, i64 65535, i64 0, !dbg !626
  %17 = sub nsw i64 %14, %11, !dbg !626
  %18 = add nsw i64 %16, %17, !dbg !626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  %19 = sext i32 %7 to i64, !dbg !628
  %20 = udiv i64 %18, %19, !dbg !629
  %21 = icmp ult i64 %18, %19, !dbg !631
  br i1 %21, label %26, label %22, !dbg !632

; <label>:22:                                     ; preds = %9
  %23 = icmp ugt i64 %20, %6, !dbg !633
  %24 = select i1 %23, i64 %20, i64 %6, !dbg !633
  %25 = sub i64 %24, %20, !dbg !633
  br label %26, !dbg !634

; <label>:26:                                     ; preds = %1, %9, %22
  %27 = phi i64 [ %25, %22 ], [ %6, %9 ], [ %6, %1 ], !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  ret i64 %27, !dbg !636
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
define dso_local i64 @LFUGetTimeInMinutes() local_unnamed_addr #5 !dbg !432 {
  %1 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !637, !tbaa !436
  %2 = sdiv i64 %1, 60, !dbg !638
  %3 = and i64 %2, 65535, !dbg !639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  ret i64 %3, !dbg !640
}

; Function Attrs: noredzone nounwind
define dso_local i64 @LFUTimeElapsed(i64) local_unnamed_addr #0 !dbg !424 {
  %2 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !642, !tbaa !436
  %3 = sdiv i64 %2, 60, !dbg !644
  %4 = and i64 %3, 65535, !dbg !645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !646
  %5 = icmp ult i64 %4, %0, !dbg !648
  %6 = select i1 %5, i64 65535, i64 0, !dbg !649
  %7 = sub i64 %4, %0, !dbg !649
  %8 = add i64 %7, %6, !dbg !649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  ret i64 %8, !dbg !650
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @LFULogIncr(i8 zeroext) local_unnamed_addr #0 !dbg !651 {
  %2 = icmp eq i8 %0, -1, !dbg !660
  br i1 %2, label %23, label %3, !dbg !662

; <label>:3:                                      ; preds = %1
  %4 = zext i8 %0 to i32, !dbg !663
  %5 = tail call i32 @rand() #6, !dbg !664
  %6 = sitofp i32 %5 to double, !dbg !665
  %7 = add nsw i32 %4, -5, !dbg !667
  %8 = sitofp i32 %7 to double, !dbg !668
  %9 = icmp ult i8 %0, 5, !dbg !670
  %10 = select i1 %9, double 0.000000e+00, double %8, !dbg !672
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 230), align 8, !dbg !673, !tbaa !674
  %12 = sitofp i32 %11 to double, !dbg !675
  %13 = fmul double %10, %12, !dbg !676
  %14 = fadd double %13, 1.000000e+00, !dbg !677
  %15 = insertelement <2 x double> <double undef, double 1.000000e+00>, double %6, i32 0, !dbg !678
  %16 = insertelement <2 x double> <double 0x41DFFFFFFFC00000, double undef>, double %14, i32 1, !dbg !678
  %17 = fdiv <2 x double> %15, %16, !dbg !678
  %18 = extractelement <2 x double> %17, i32 0, !dbg !680
  %19 = extractelement <2 x double> %17, i32 1, !dbg !680
  %20 = fcmp olt double %18, %19, !dbg !680
  %21 = zext i1 %20 to i8, !dbg !682
  %22 = add i8 %21, %0, !dbg !682
  br label %23, !dbg !682

; <label>:23:                                     ; preds = %3, %1
  %24 = phi i8 [ -1, %1 ], [ %22, %3 ], !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !684
  ret i8 %24, !dbg !684
}

; Function Attrs: noredzone
declare dso_local i32 @rand() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @freeMemoryGetNotCountedMemory() local_unnamed_addr #0 !dbg !685 {
  %1 = alloca %struct.listIter, align 8
  %2 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !825, !tbaa !826
  %3 = getelementptr inbounds %struct.list, %struct.list* %2, i64 0, i32 5, !dbg !825
  %4 = load i64, i64* %3, align 8, !dbg !825, !tbaa !827
  %5 = trunc i64 %4 to i32, !dbg !825
  %6 = icmp eq i32 %5, 0, !dbg !830
  br i1 %6, label %23, label %7, !dbg !831

; <label>:7:                                      ; preds = %0
  %8 = bitcast %struct.listIter* %1 to i8*, !dbg !832
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #8, !dbg !832
  call void @listRewind(%struct.list* %2, %struct.listIter* nonnull %1) #6, !dbg !834
  %9 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #6, !dbg !835
  %10 = icmp eq %struct.listNode* %9, null, !dbg !837
  br i1 %10, label %21, label %11, !dbg !837

; <label>:11:                                     ; preds = %7, %11
  %12 = phi %struct.listNode* [ %19, %11 ], [ %9, %7 ]
  %13 = phi i64 [ %18, %11 ], [ 0, %7 ]
  %14 = getelementptr inbounds %struct.listNode, %struct.listNode* %12, i64 0, i32 2, !dbg !838
  %15 = bitcast i8** %14 to %struct.client**, !dbg !838
  %16 = load %struct.client*, %struct.client** %15, align 8, !dbg !838, !tbaa !839
  %17 = call i64 @getClientOutputBufferMemoryUsage(%struct.client* %16) #6, !dbg !842
  %18 = add i64 %17, %13, !dbg !843
  %19 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #6, !dbg !835
  %20 = icmp eq %struct.listNode* %19, null, !dbg !837
  br i1 %20, label %21, label %11, !dbg !837, !llvm.loop !844

; <label>:21:                                     ; preds = %11, %7
  %22 = phi i64 [ 0, %7 ], [ %18, %11 ], !dbg !846
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #8, !dbg !847
  br label %23, !dbg !848

; <label>:23:                                     ; preds = %0, %21
  %24 = phi i64 [ %22, %21 ], [ 0, %0 ], !dbg !824
  %25 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !849, !tbaa !851
  %26 = icmp eq i32 %25, 0, !dbg !852
  br i1 %26, label %58, label %27, !dbg !853

; <label>:27:                                     ; preds = %23
  %28 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !854, !tbaa !856
  %29 = getelementptr inbounds i8, i8* %28, i64 -1, !dbg !863
  %30 = load i8, i8* %29, align 1, !dbg !863, !tbaa !378
  %31 = trunc i8 %30 to i3, !dbg !865
  switch i3 %31, label %53 [
    i3 0, label %32
    i3 1, label %35
    i3 2, label %39
    i3 3, label %44
    i3 -4, label %49
  ], !dbg !865

; <label>:32:                                     ; preds = %27
  %33 = lshr i8 %30, 3, !dbg !866
  %34 = zext i8 %33 to i64, !dbg !866
  br label %53, !dbg !868

; <label>:35:                                     ; preds = %27
  %36 = getelementptr inbounds i8, i8* %28, i64 -2, !dbg !869
  %37 = load i8, i8* %36, align 1, !dbg !869, !tbaa !378
  %38 = zext i8 %37 to i64, !dbg !870
  br label %53, !dbg !871

; <label>:39:                                     ; preds = %27
  %40 = getelementptr inbounds i8, i8* %28, i64 -3, !dbg !872
  %41 = bitcast i8* %40 to i16*, !dbg !872
  %42 = load i16, i16* %41, align 1, !dbg !872, !tbaa !527
  %43 = zext i16 %42 to i64, !dbg !873
  br label %53, !dbg !874

; <label>:44:                                     ; preds = %27
  %45 = getelementptr inbounds i8, i8* %28, i64 -5, !dbg !875
  %46 = bitcast i8* %45 to i32*, !dbg !875
  %47 = load i32, i32* %46, align 1, !dbg !875, !tbaa !532
  %48 = zext i32 %47 to i64, !dbg !876
  br label %53, !dbg !877

; <label>:49:                                     ; preds = %27
  %50 = getelementptr inbounds i8, i8* %28, i64 -9, !dbg !878
  %51 = bitcast i8* %50 to i64*, !dbg !878
  %52 = load i64, i64* %51, align 1, !dbg !878, !tbaa !536
  br label %53, !dbg !879

; <label>:53:                                     ; preds = %27, %32, %35, %39, %44, %49
  %54 = phi i64 [ %52, %49 ], [ %48, %44 ], [ %43, %39 ], [ %38, %35 ], [ %34, %32 ], [ 0, %27 ], !dbg !880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  %55 = call i64 @aofRewriteBufferSize() #6, !dbg !882
  %56 = add i64 %54, %24, !dbg !883
  %57 = add i64 %56, %55, !dbg !884
  br label %58, !dbg !885

; <label>:58:                                     ; preds = %23, %53
  %59 = phi i64 [ %57, %53 ], [ %24, %23 ], !dbg !886
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !887
  ret i64 %59, !dbg !887
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
define dso_local i32 @getMaxmemoryState(i64*, i64*, i64*, float*) local_unnamed_addr #0 !dbg !888 {
  %5 = tail call i64 @zmalloc_used_memory() #6, !dbg !907
  %6 = icmp eq i64* %0, null, !dbg !909
  br i1 %6, label %8, label %7, !dbg !911

; <label>:7:                                      ; preds = %4
  store i64 %5, i64* %0, align 8, !dbg !912, !tbaa !536
  br label %8, !dbg !913

; <label>:8:                                      ; preds = %4, %7
  %9 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !914, !tbaa !915
  %10 = icmp eq i64 %9, 0, !dbg !916
  %11 = icmp ule i64 %5, %9, !dbg !917
  %12 = or i1 %10, %11, !dbg !918
  %13 = or i1 %10, %11, !dbg !919
  %14 = xor i1 %13, true, !dbg !919
  %15 = icmp ne float* %3, null, !dbg !921
  %16 = or i1 %15, %14, !dbg !922
  br i1 %16, label %17, label %42, !dbg !922

; <label>:17:                                     ; preds = %8
  %18 = tail call i64 @freeMemoryGetNotCountedMemory() #9, !dbg !924
  %19 = icmp ugt i64 %5, %18, !dbg !926
  %20 = select i1 %19, i64 %5, i64 %18, !dbg !926
  %21 = sub i64 %20, %18, !dbg !926
  br i1 %15, label %22, label %31, !dbg !927

; <label>:22:                                     ; preds = %17
  %23 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !928, !tbaa !915
  %24 = icmp eq i64 %23, 0, !dbg !932
  br i1 %24, label %29, label %25, !dbg !933

; <label>:25:                                     ; preds = %22
  %26 = uitofp i64 %21 to float, !dbg !934
  %27 = uitofp i64 %23 to float, !dbg !936
  %28 = fdiv float %26, %27, !dbg !937
  br label %29

; <label>:29:                                     ; preds = %22, %25
  %30 = phi float [ %28, %25 ], [ 0.000000e+00, %22 ]
  store float %30, float* %3, align 4, !dbg !938, !tbaa !939
  br label %31, !dbg !941

; <label>:31:                                     ; preds = %29, %17
  br i1 %12, label %42, label %32, !dbg !941

; <label>:32:                                     ; preds = %31
  %33 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !942, !tbaa !915
  %34 = icmp ugt i64 %21, %33, !dbg !944
  br i1 %34, label %35, label %42, !dbg !945

; <label>:35:                                     ; preds = %32
  %36 = sub i64 %21, %33, !dbg !946
  %37 = icmp eq i64* %1, null, !dbg !948
  br i1 %37, label %39, label %38, !dbg !950

; <label>:38:                                     ; preds = %35
  store i64 %21, i64* %1, align 8, !dbg !951, !tbaa !536
  br label %39, !dbg !952

; <label>:39:                                     ; preds = %35, %38
  %40 = icmp eq i64* %2, null, !dbg !953
  br i1 %40, label %42, label %41, !dbg !955

; <label>:41:                                     ; preds = %39
  store i64 %36, i64* %2, align 8, !dbg !956, !tbaa !536
  br label %42, !dbg !957

; <label>:42:                                     ; preds = %31, %32, %39, %41, %8
  %43 = phi i32 [ 0, %8 ], [ 0, %31 ], [ 0, %32 ], [ -1, %39 ], [ -1, %41 ], !dbg !958
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  ret i32 %43, !dbg !959
}

; Function Attrs: noredzone
declare dso_local i64 @zmalloc_used_memory() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @freeMemoryIfNeeded() local_unnamed_addr #0 !dbg !62 {
  %1 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !960, !tbaa !962
  %2 = icmp ne i8* %1, null, !dbg !963
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 212), align 8, !dbg !964
  %4 = icmp ne i32 %3, 0, !dbg !965
  %5 = and i1 %2, %4, !dbg !966
  br i1 %5, label %266, label %6, !dbg !966

; <label>:6:                                      ; preds = %0
  %7 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !967, !tbaa !826
  %8 = getelementptr inbounds %struct.list, %struct.list* %7, i64 0, i32 5, !dbg !967
  %9 = load i64, i64* %8, align 8, !dbg !967, !tbaa !827
  %10 = trunc i64 %9 to i32, !dbg !967
  %11 = tail call i32 @clientsArePaused() #6, !dbg !969
  %12 = icmp eq i32 %11, 0, !dbg !969
  br i1 %12, label %13, label %266, !dbg !971

; <label>:13:                                     ; preds = %6
  %14 = tail call i64 @zmalloc_used_memory() #6, !dbg !976
  %15 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !978, !tbaa !915
  %16 = icmp eq i64 %15, 0, !dbg !979
  %17 = icmp ule i64 %14, %15, !dbg !980
  %18 = or i1 %16, %17, !dbg !981
  br i1 %18, label %26, label %19, !dbg !982

; <label>:19:                                     ; preds = %13
  %20 = tail call i64 @freeMemoryGetNotCountedMemory() #6, !dbg !984
  %21 = icmp ugt i64 %14, %20, !dbg !986
  %22 = select i1 %21, i64 %14, i64 %20, !dbg !986
  %23 = sub i64 %22, %20, !dbg !986
  %24 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !987, !tbaa !915
  %25 = icmp ugt i64 %23, %24, !dbg !988
  br i1 %25, label %27, label %26, !dbg !989

; <label>:26:                                     ; preds = %13, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !990
  br label %266, !dbg !991

; <label>:27:                                     ; preds = %19
  %28 = sub i64 %23, %24, !dbg !992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !990
  %29 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !995, !tbaa !362
  %30 = icmp eq i32 %29, 1792, !dbg !997
  br i1 %30, label %252, label %31, !dbg !998

; <label>:31:                                     ; preds = %27
  %32 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !999, !tbaa !1001
  %33 = icmp eq i64 %32, 0, !dbg !999
  br i1 %33, label %36, label %34, !dbg !1002

; <label>:34:                                     ; preds = %31
  %35 = tail call i64 @mstime() #6, !dbg !1003
  br label %36, !dbg !1003

; <label>:36:                                     ; preds = %31, %34
  %37 = phi i64 [ %35, %34 ], [ 0, %31 ], !dbg !1003
  %38 = icmp eq i64 %28, 0, !dbg !1008
  br i1 %38, label %240, label %39, !dbg !1009

; <label>:39:                                     ; preds = %36
  %40 = icmp eq i32 %10, 0
  br label %41, !dbg !1009

; <label>:41:                                     ; preds = %39, %238
  %42 = phi i64 [ 0, %39 ], [ %220, %238 ]
  %43 = phi i64 [ %37, %39 ], [ %217, %238 ]
  %44 = phi i32 [ undef, %39 ], [ %158, %238 ]
  %45 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !1012, !tbaa !362
  %46 = and i32 %45, 3, !dbg !1013
  %47 = icmp ne i32 %46, 0, !dbg !1013
  %48 = icmp eq i32 %45, 512, !dbg !1014
  %49 = or i1 %48, %47, !dbg !1015
  br i1 %49, label %50, label %125, !dbg !1015

; <label>:50:                                     ; preds = %41
  %51 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** @EvictionPoolLRU, align 8, !dbg !1016, !tbaa !299
  br label %52, !dbg !1018

; <label>:52:                                     ; preds = %50, %121
  %53 = phi i32 [ %44, %50 ], [ %123, %121 ]
  %54 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !1021, !tbaa !1024
  %55 = icmp sgt i32 %54, 0, !dbg !1025
  br i1 %55, label %56, label %227, !dbg !1026

; <label>:56:                                     ; preds = %52, %79
  %57 = phi i32 [ %80, %79 ], [ %54, %52 ]
  %58 = phi i64 [ %82, %79 ], [ 0, %52 ]
  %59 = phi i64 [ %81, %79 ], [ 0, %52 ]
  %60 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !1027, !tbaa !1029
  %61 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !1030, !tbaa !362
  %62 = and i32 %61, 4, !dbg !1031
  %63 = icmp eq i32 %62, 0, !dbg !1031
  %64 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %60, i64 %58, i32 0, !dbg !1032
  %65 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %60, i64 %58, i32 1, !dbg !1033
  %66 = select i1 %63, %struct.dict** %65, %struct.dict** %64, !dbg !1034
  %67 = load %struct.dict*, %struct.dict** %66, align 8, !dbg !1034, !tbaa !299
  %68 = getelementptr inbounds %struct.dict, %struct.dict* %67, i64 0, i32 2, i64 0, i32 3, !dbg !1036
  %69 = load i64, i64* %68, align 8, !dbg !1036, !tbaa !1038
  %70 = getelementptr inbounds %struct.dict, %struct.dict* %67, i64 0, i32 2, i64 1, i32 3, !dbg !1036
  %71 = load i64, i64* %70, align 8, !dbg !1036, !tbaa !1038
  %72 = add i64 %71, %69, !dbg !1036
  %73 = icmp eq i64 %72, 0, !dbg !1041
  br i1 %73, label %79, label %74, !dbg !1042

; <label>:74:                                     ; preds = %56
  %75 = load %struct.dict*, %struct.dict** %64, align 8, !dbg !1043, !tbaa !1045
  %76 = trunc i64 %58 to i32, !dbg !1047
  tail call void @evictionPoolPopulate(i32 %76, %struct.dict* %67, %struct.dict* %75, %struct.evictionPoolEntry* %51) #9, !dbg !1047
  %77 = add i64 %72, %59, !dbg !1048
  %78 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !1021, !tbaa !1024
  br label %79, !dbg !1049

; <label>:79:                                     ; preds = %56, %74
  %80 = phi i32 [ %78, %74 ], [ %57, %56 ], !dbg !1021
  %81 = phi i64 [ %77, %74 ], [ %59, %56 ], !dbg !1050
  %82 = add nuw nsw i64 %58, 1, !dbg !1051
  %83 = sext i32 %80 to i64, !dbg !1025
  %84 = icmp slt i64 %82, %83, !dbg !1025
  br i1 %84, label %56, label %85, !dbg !1026, !llvm.loop !1052

; <label>:85:                                     ; preds = %79
  %86 = icmp eq i64 %81, 0, !dbg !1054
  br i1 %86, label %227, label %87, !dbg !1056

; <label>:87:                                     ; preds = %85, %117
  %88 = phi i64 [ %119, %117 ], [ 15, %85 ]
  %89 = phi i32 [ %118, %117 ], [ %53, %85 ]
  %90 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %51, i64 %88, i32 1, !dbg !1058
  %91 = load i8*, i8** %90, align 8, !dbg !1058, !tbaa !286
  %92 = icmp eq i8* %91, null, !dbg !1063
  br i1 %92, label %117, label %93, !dbg !1064

; <label>:93:                                     ; preds = %87
  %94 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %51, i64 %88, i32 3, !dbg !1065
  %95 = load i32, i32* %94, align 8, !dbg !1065, !tbaa !293
  %96 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !1066, !tbaa !362
  %97 = and i32 %96, 4, !dbg !1068
  %98 = icmp eq i32 %97, 0, !dbg !1068
  %99 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !1069, !tbaa !1029
  %100 = sext i32 %95 to i64, !dbg !1069
  %101 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %99, i64 %100, i32 1, !dbg !1071
  %102 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %99, i64 %100, i32 0, !dbg !1073
  %103 = select i1 %98, %struct.dict** %101, %struct.dict** %102, !dbg !1075
  %104 = load %struct.dict*, %struct.dict** %103, align 8, !dbg !1076, !tbaa !299
  %105 = tail call %struct.dictEntry* @dictFind(%struct.dict* %104, i8* nonnull %91) #6, !dbg !1076
  %106 = load i8*, i8** %90, align 8, !dbg !1077, !tbaa !286
  %107 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %51, i64 %88, i32 2, !dbg !1079
  %108 = load i8*, i8** %107, align 8, !dbg !1079, !tbaa !290
  %109 = icmp eq i8* %106, %108, !dbg !1080
  br i1 %109, label %111, label %110, !dbg !1081

; <label>:110:                                    ; preds = %93
  tail call void @sdsfree(i8* %106) #6, !dbg !1082
  br label %111, !dbg !1082

; <label>:111:                                    ; preds = %93, %110
  store i8* null, i8** %90, align 8, !dbg !1083, !tbaa !286
  %112 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %51, i64 %88, i32 0, !dbg !1084
  store i64 0, i64* %112, align 8, !dbg !1085, !tbaa !277
  %113 = icmp eq %struct.dictEntry* %105, null, !dbg !1086
  br i1 %113, label %117, label %114, !dbg !1088

; <label>:114:                                    ; preds = %111
  %115 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %105, i64 0, i32 0, !dbg !1089
  %116 = load i8*, i8** %115, align 8, !dbg !1089, !tbaa !357
  br label %121, !dbg !1091

; <label>:117:                                    ; preds = %111, %87
  %118 = phi i32 [ %89, %87 ], [ %95, %111 ]
  %119 = add nsw i64 %88, -1, !dbg !1092
  %120 = icmp eq i64 %88, 0, !dbg !1093
  br i1 %120, label %121, label %87, !dbg !1094, !llvm.loop !1095

; <label>:121:                                    ; preds = %117, %114
  %122 = phi i8* [ %116, %114 ], [ null, %117 ], !dbg !1097
  %123 = phi i32 [ %95, %114 ], [ %118, %117 ]
  %124 = icmp eq i8* %122, null, !dbg !1098
  br i1 %124, label %52, label %157, !llvm.loop !1099

; <label>:125:                                    ; preds = %41
  switch i32 %45, label %227 [
    i32 1540, label %126
    i32 768, label %126
  ], !dbg !1101

; <label>:126:                                    ; preds = %125, %125
  %127 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !1103, !tbaa !1024
  %128 = icmp sgt i32 %127, 0, !dbg !1107
  br i1 %128, label %129, label %227, !dbg !1108

; <label>:129:                                    ; preds = %126
  %130 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !tbaa !1029
  %131 = icmp eq i32 %45, 1540
  %132 = load i32, i32* @freeMemoryIfNeeded.next_db, align 4, !dbg !1109, !tbaa !532
  br label %135, !dbg !1108

; <label>:133:                                    ; preds = %135
  %134 = icmp slt i32 %151, %127, !dbg !1107
  br i1 %134, label %135, label %226, !dbg !1108, !llvm.loop !1111

; <label>:135:                                    ; preds = %129, %133
  %136 = phi i32 [ %132, %129 ], [ %138, %133 ], !dbg !1020
  %137 = phi i32 [ 0, %129 ], [ %151, %133 ]
  %138 = add i32 %136, 1, !dbg !1109
  %139 = urem i32 %138, %127, !dbg !1113
  %140 = sext i32 %139 to i64, !dbg !1115
  %141 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %130, i64 %140, i32 0, !dbg !1116
  %142 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %130, i64 %140, i32 1, !dbg !1117
  %143 = select i1 %131, %struct.dict** %141, %struct.dict** %142, !dbg !1118
  %144 = load %struct.dict*, %struct.dict** %143, align 8, !dbg !1118, !tbaa !299
  %145 = getelementptr inbounds %struct.dict, %struct.dict* %144, i64 0, i32 2, i64 0, i32 3, !dbg !1119
  %146 = load i64, i64* %145, align 8, !dbg !1119, !tbaa !1038
  %147 = getelementptr inbounds %struct.dict, %struct.dict* %144, i64 0, i32 2, i64 1, i32 3, !dbg !1119
  %148 = load i64, i64* %147, align 8, !dbg !1119, !tbaa !1038
  %149 = sub i64 0, %148, !dbg !1121
  %150 = icmp eq i64 %146, %149, !dbg !1121
  %151 = add nuw nsw i32 %137, 1, !dbg !1122
  br i1 %150, label %133, label %152, !dbg !1123

; <label>:152:                                    ; preds = %135
  store i32 %138, i32* @freeMemoryIfNeeded.next_db, align 4, !dbg !1109, !tbaa !532
  %153 = tail call %struct.dictEntry* @dictGetRandomKey(%struct.dict* %144) #6, !dbg !1124
  %154 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %153, i64 0, i32 0, !dbg !1126
  %155 = load i8*, i8** %154, align 8, !dbg !1126, !tbaa !357
  %156 = icmp eq i8* %155, null, !dbg !1127
  br i1 %156, label %227, label %157, !dbg !1128

; <label>:157:                                    ; preds = %121, %152
  %158 = phi i32 [ %139, %152 ], [ %123, %121 ]
  %159 = phi i8* [ %155, %152 ], [ %122, %121 ]
  %160 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !1129, !tbaa !1029
  %161 = sext i32 %158 to i64, !dbg !1130
  %162 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %160, i64 %161, !dbg !1130
  %163 = getelementptr inbounds i8, i8* %159, i64 -1, !dbg !1134
  %164 = load i8, i8* %163, align 1, !dbg !1134, !tbaa !378
  %165 = trunc i8 %164 to i3, !dbg !1136
  switch i3 %165, label %187 [
    i3 0, label %166
    i3 1, label %169
    i3 2, label %173
    i3 3, label %178
    i3 -4, label %183
  ], !dbg !1136

; <label>:166:                                    ; preds = %157
  %167 = lshr i8 %164, 3, !dbg !1137
  %168 = zext i8 %167 to i64, !dbg !1137
  br label %187, !dbg !1138

; <label>:169:                                    ; preds = %157
  %170 = getelementptr inbounds i8, i8* %159, i64 -3, !dbg !1139
  %171 = load i8, i8* %170, align 1, !dbg !1140, !tbaa !378
  %172 = zext i8 %171 to i64, !dbg !1139
  br label %187, !dbg !1141

; <label>:173:                                    ; preds = %157
  %174 = getelementptr inbounds i8, i8* %159, i64 -5, !dbg !1142
  %175 = bitcast i8* %174 to i16*, !dbg !1143
  %176 = load i16, i16* %175, align 1, !dbg !1143, !tbaa !527
  %177 = zext i16 %176 to i64, !dbg !1142
  br label %187, !dbg !1144

; <label>:178:                                    ; preds = %157
  %179 = getelementptr inbounds i8, i8* %159, i64 -9, !dbg !1145
  %180 = bitcast i8* %179 to i32*, !dbg !1146
  %181 = load i32, i32* %180, align 1, !dbg !1146, !tbaa !532
  %182 = zext i32 %181 to i64, !dbg !1145
  br label %187, !dbg !1147

; <label>:183:                                    ; preds = %157
  %184 = getelementptr inbounds i8, i8* %159, i64 -17, !dbg !1148
  %185 = bitcast i8* %184 to i64*, !dbg !1149
  %186 = load i64, i64* %185, align 1, !dbg !1149, !tbaa !536
  br label %187, !dbg !1150

; <label>:187:                                    ; preds = %157, %166, %169, %173, %178, %183
  %188 = phi i64 [ %186, %183 ], [ %182, %178 ], [ %177, %173 ], [ %172, %169 ], [ %168, %166 ], [ 0, %157 ], !dbg !1151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1152
  %189 = tail call %struct.redisObject* @createStringObject(i8* nonnull %159, i64 %188) #6, !dbg !1153
  %190 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 285), align 8, !dbg !1155, !tbaa !1156
  tail call void @propagateExpire(%struct.redisDb* %162, %struct.redisObject* %189, i32 %190) #6, !dbg !1157
  %191 = tail call i64 @zmalloc_used_memory() #6, !dbg !1158
  %192 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1160, !tbaa !1001
  %193 = icmp eq i64 %192, 0, !dbg !1160
  br i1 %193, label %196, label %194, !dbg !1162

; <label>:194:                                    ; preds = %187
  %195 = tail call i64 @mstime() #6, !dbg !1163
  br label %196, !dbg !1163

; <label>:196:                                    ; preds = %187, %194
  %197 = phi i64 [ %195, %194 ], [ 0, %187 ], !dbg !1163
  %198 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 285), align 8, !dbg !1166, !tbaa !1156
  %199 = icmp eq i32 %198, 0, !dbg !1168
  br i1 %199, label %202, label %200, !dbg !1169

; <label>:200:                                    ; preds = %196
  %201 = tail call i32 @dbAsyncDelete(%struct.redisDb* %162, %struct.redisObject* %189) #6, !dbg !1170
  br label %204, !dbg !1170

; <label>:202:                                    ; preds = %196
  %203 = tail call i32 @dbSyncDelete(%struct.redisDb* %162, %struct.redisObject* %189) #6, !dbg !1171
  br label %204

; <label>:204:                                    ; preds = %202, %200
  %205 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1172, !tbaa !1001
  %206 = icmp eq i64 %205, 0, !dbg !1172
  br i1 %206, label %215, label %207, !dbg !1174

; <label>:207:                                    ; preds = %204
  %208 = tail call i64 @mstime() #6, !dbg !1175
  %209 = sub nsw i64 %208, %197, !dbg !1175
  %210 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1177, !tbaa !1001
  %211 = icmp eq i64 %210, 0, !dbg !1177
  %212 = icmp slt i64 %209, %210, !dbg !1177
  %213 = or i1 %211, %212, !dbg !1177
  br i1 %213, label %215, label %214, !dbg !1177

; <label>:214:                                    ; preds = %207
  tail call void @latencyAddSample(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %209) #6, !dbg !1177
  br label %215, !dbg !1177

; <label>:215:                                    ; preds = %204, %207, %214
  %216 = phi i64 [ %209, %207 ], [ %209, %214 ], [ %197, %204 ]
  %217 = add nsw i64 %216, %43, !dbg !1179
  %218 = tail call i64 @zmalloc_used_memory() #6, !dbg !1180
  %219 = add i64 %191, %42, !dbg !1181
  %220 = sub i64 %219, %218, !dbg !1182
  %221 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 75), align 8, !dbg !1183, !tbaa !1184
  %222 = add nsw i64 %221, 1, !dbg !1183
  store i64 %222, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 75), align 8, !dbg !1183, !tbaa !1184
  %223 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %160, i64 %161, i32 5, !dbg !1185
  %224 = load i32, i32* %223, align 8, !dbg !1185, !tbaa !1186
  tail call void @notifyKeyspaceEvent(i32 512, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.redisObject* %189, i32 %224) #6, !dbg !1187
  tail call void @decrRefCount(%struct.redisObject* %189) #6, !dbg !1188
  br i1 %40, label %238, label %225, !dbg !1189

; <label>:225:                                    ; preds = %215
  tail call void @flushSlavesOutputBuffers() #6, !dbg !1190
  br label %238, !dbg !1190

; <label>:226:                                    ; preds = %133
  store i32 %138, i32* @freeMemoryIfNeeded.next_db, align 4, !dbg !1109, !tbaa !532
  br label %227, !dbg !1108

; <label>:227:                                    ; preds = %125, %152, %126, %52, %85, %226
  %228 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1192, !tbaa !1001
  %229 = icmp eq i64 %228, 0, !dbg !1192
  br i1 %229, label %252, label %230, !dbg !1196

; <label>:230:                                    ; preds = %227
  %231 = tail call i64 @mstime() #6, !dbg !1197
  %232 = sub nsw i64 %231, %43, !dbg !1197
  %233 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1199, !tbaa !1001
  %234 = icmp eq i64 %233, 0, !dbg !1199
  %235 = icmp slt i64 %232, %233, !dbg !1199
  %236 = or i1 %234, %235, !dbg !1199
  br i1 %236, label %252, label %237, !dbg !1199

; <label>:237:                                    ; preds = %230
  tail call void @latencyAddSample(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64 %232) #6, !dbg !1199
  br label %252, !dbg !1199

; <label>:238:                                    ; preds = %215, %225
  %239 = icmp ult i64 %220, %28, !dbg !1008
  br i1 %239, label %41, label %240, !dbg !1009

; <label>:240:                                    ; preds = %238, %36
  %241 = phi i64 [ %37, %36 ], [ %217, %238 ], !dbg !1201
  %242 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1202, !tbaa !1001
  %243 = icmp eq i64 %242, 0, !dbg !1202
  br i1 %243, label %266, label %244, !dbg !1204

; <label>:244:                                    ; preds = %240
  %245 = tail call i64 @mstime() #6, !dbg !1205
  %246 = sub nsw i64 %245, %241, !dbg !1205
  %247 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1207, !tbaa !1001
  %248 = icmp eq i64 %247, 0, !dbg !1207
  %249 = icmp slt i64 %246, %247, !dbg !1207
  %250 = or i1 %248, %249, !dbg !1207
  br i1 %250, label %266, label %251, !dbg !1207

; <label>:251:                                    ; preds = %244
  tail call void @latencyAddSample(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64 %246) #6, !dbg !1207
  br label %266, !dbg !1207

; <label>:252:                                    ; preds = %227, %237, %230, %27
  %253 = phi i64 [ 0, %27 ], [ %42, %230 ], [ %42, %237 ], [ %42, %227 ], !dbg !1201
  %254 = tail call i64 @bioPendingJobsOfType(i32 2) #6, !dbg !1209
  %255 = icmp eq i64 %254, 0, !dbg !1210
  br i1 %255, label %266, label %256, !dbg !1210

; <label>:256:                                    ; preds = %252
  %257 = add i64 %253, %14
  br label %258, !dbg !1210

; <label>:258:                                    ; preds = %256, %262
  %259 = tail call i64 @zmalloc_used_memory() #6, !dbg !1212
  %260 = sub i64 %257, %259, !dbg !1215
  %261 = icmp ult i64 %260, %28, !dbg !1216
  br i1 %261, label %262, label %266, !dbg !1217

; <label>:262:                                    ; preds = %258
  %263 = tail call i32 @usleep(i64 1000) #6, !dbg !1218
  %264 = tail call i64 @bioPendingJobsOfType(i32 2) #6, !dbg !1209
  %265 = icmp eq i64 %264, 0, !dbg !1210
  br i1 %265, label %266, label %258, !dbg !1210, !llvm.loop !1219

; <label>:266:                                    ; preds = %262, %258, %240, %252, %6, %244, %251, %26, %0
  %267 = phi i32 [ 0, %0 ], [ 0, %6 ], [ 0, %244 ], [ 0, %251 ], [ 0, %26 ], [ -1, %252 ], [ 0, %240 ], [ -1, %258 ], [ -1, %262 ], !dbg !1221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1222
  ret i32 %267, !dbg !1222
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
define dso_local i32 @freeMemoryIfNeededAndSafe() local_unnamed_addr #0 !dbg !1223 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 282), align 4, !dbg !1224, !tbaa !1226
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !1227
  %3 = or i32 %2, %1, !dbg !1228
  %4 = icmp eq i32 %3, 0, !dbg !1228
  br i1 %4, label %5, label %7, !dbg !1228

; <label>:5:                                      ; preds = %0
  %6 = tail call i32 @freeMemoryIfNeeded() #9, !dbg !1229
  br label %7, !dbg !1230

; <label>:7:                                      ; preds = %0, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %0 ], !dbg !1231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1232
  ret i32 %8, !dbg !1232
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
!233 = !DILocation(line: 81, column: 9, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !3, line: 81, column: 9)
!235 = distinct !DILexicalBlock(scope: !236, file: !3, line: 80, column: 49)
!236 = distinct !DILexicalBlock(scope: !230, file: !3, line: 80, column: 9)
!237 = !DILocation(line: 79, column: 18, scope: !230)
!238 = !DILocation(line: 85, column: 5, scope: !230)
!239 = distinct !DISubprogram(name: "estimateObjectIdleTime", scope: !3, file: !3, line: 90, type: !240, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !242)
!240 = !DISubroutineType(types: !241)
!241 = !{!200, !210}
!242 = !{!243, !244}
!243 = !DILocalVariable(name: "o", arg: 1, scope: !239, file: !3, line: 90, type: !210)
!244 = !DILocalVariable(name: "lruclock", scope: !239, file: !3, line: 91, type: !200)
!245 = !DILocation(line: 90, column: 49, scope: !239)
!246 = !DILocation(line: 81, column: 9, scope: !234, inlinedAt: !247)
!247 = distinct !DILocation(line: 91, column: 35, scope: !239)
!248 = !DILocation(line: 79, column: 18, scope: !230, inlinedAt: !247)
!249 = !DILocation(line: 85, column: 5, scope: !230, inlinedAt: !247)
!250 = !DILocation(line: 91, column: 35, scope: !239)
!251 = !DILocation(line: 91, column: 24, scope: !239)
!252 = !DILocation(line: 92, column: 24, scope: !253)
!253 = distinct !DILexicalBlock(scope: !239, file: !3, line: 92, column: 9)
!254 = !DILocation(line: 92, column: 18, scope: !253)
!255 = !DILocation(line: 92, column: 21, scope: !253)
!256 = !DILocation(line: 95, column: 43, scope: !257)
!257 = distinct !DILexicalBlock(scope: !253, file: !3, line: 94, column: 12)
!258 = !DILocation(line: 95, column: 28, scope: !257)
!259 = !DILocation(line: 92, column: 9, scope: !239)
!260 = !DILocation(line: 0, scope: !257)
!261 = !DILocation(line: 98, column: 1, scope: !239)
!262 = distinct !DISubprogram(name: "evictionPoolAlloc", scope: !3, file: !3, line: 139, type: !263, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !265)
!263 = !DISubroutineType(types: !264)
!264 = !{null}
!265 = !{!266, !267}
!266 = !DILocalVariable(name: "ep", scope: !262, file: !3, line: 140, type: !196)
!267 = !DILocalVariable(name: "j", scope: !262, file: !3, line: 141, type: !65)
!268 = !DILocation(line: 143, column: 10, scope: !262)
!269 = !DILocation(line: 140, column: 31, scope: !262)
!270 = !DILocation(line: 141, column: 9, scope: !262)
!271 = !DILocation(line: 144, column: 5, scope: !272)
!272 = distinct !DILexicalBlock(scope: !262, file: !3, line: 144, column: 5)
!273 = !DILocation(line: 145, column: 15, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !3, line: 144, column: 39)
!275 = distinct !DILexicalBlock(scope: !272, file: !3, line: 144, column: 5)
!276 = !DILocation(line: 145, column: 20, scope: !274)
!277 = !{!278, !279, i64 0}
!278 = !{!"evictionPoolEntry", !279, i64 0, !282, i64 8, !282, i64 16, !283, i64 24}
!279 = !{!"long long", !280, i64 0}
!280 = !{!"omnipotent char", !281, i64 0}
!281 = !{!"Simple C/C++ TBAA"}
!282 = !{!"any pointer", !280, i64 0}
!283 = !{!"int", !280, i64 0}
!284 = !DILocation(line: 146, column: 15, scope: !274)
!285 = !DILocation(line: 146, column: 19, scope: !274)
!286 = !{!278, !282, i64 8}
!287 = !DILocation(line: 147, column: 24, scope: !274)
!288 = !DILocation(line: 147, column: 15, scope: !274)
!289 = !DILocation(line: 147, column: 22, scope: !274)
!290 = !{!278, !282, i64 16}
!291 = !DILocation(line: 148, column: 15, scope: !274)
!292 = !DILocation(line: 148, column: 20, scope: !274)
!293 = !{!278, !283, i64 24}
!294 = !DILocation(line: 144, column: 35, scope: !275)
!295 = !DILocation(line: 144, column: 19, scope: !275)
!296 = distinct !{!296, !271, !297}
!297 = !DILocation(line: 149, column: 5, scope: !272)
!298 = !DILocation(line: 150, column: 21, scope: !262)
!299 = !{!282, !282, i64 0}
!300 = !DILocation(line: 151, column: 1, scope: !262)
!301 = distinct !DISubprogram(name: "evictionPoolPopulate", scope: !3, file: !3, line: 162, type: !302, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !304)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !65, !95, !95, !196}
!304 = !{!305, !306, !307, !308, !309, !310, !311, !312, !313, !317, !321, !322, !323, !324, !330, !332}
!305 = !DILocalVariable(name: "dbid", arg: 1, scope: !301, file: !3, line: 162, type: !65)
!306 = !DILocalVariable(name: "sampledict", arg: 2, scope: !301, file: !3, line: 162, type: !95)
!307 = !DILocalVariable(name: "keydict", arg: 3, scope: !301, file: !3, line: 162, type: !95)
!308 = !DILocalVariable(name: "pool", arg: 4, scope: !301, file: !3, line: 162, type: !196)
!309 = !DILocalVariable(name: "j", scope: !301, file: !3, line: 163, type: !65)
!310 = !DILocalVariable(name: "k", scope: !301, file: !3, line: 163, type: !65)
!311 = !DILocalVariable(name: "count", scope: !301, file: !3, line: 163, type: !65)
!312 = !DILocalVariable(scope: !301, type: !54, flags: DIFlagArtificial)
!313 = !DILocalVariable(name: "samples", scope: !301, file: !3, line: 164, type: !314)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: !312)
!317 = !DILocalVariable(name: "idle", scope: !318, file: !3, line: 168, type: !200)
!318 = distinct !DILexicalBlock(scope: !319, file: !3, line: 167, column: 33)
!319 = distinct !DILexicalBlock(scope: !320, file: !3, line: 167, column: 5)
!320 = distinct !DILexicalBlock(scope: !301, file: !3, line: 167, column: 5)
!321 = !DILocalVariable(name: "key", scope: !318, file: !3, line: 169, type: !86)
!322 = !DILocalVariable(name: "o", scope: !318, file: !3, line: 170, type: !210)
!323 = !DILocalVariable(name: "de", scope: !318, file: !3, line: 171, type: !133)
!324 = !DILocalVariable(name: "cached", scope: !325, file: !3, line: 226, type: !86)
!325 = distinct !DILexicalBlock(scope: !326, file: !3, line: 221, column: 50)
!326 = distinct !DILexicalBlock(scope: !327, file: !3, line: 221, column: 17)
!327 = distinct !DILexicalBlock(scope: !328, file: !3, line: 218, column: 16)
!328 = distinct !DILexicalBlock(scope: !329, file: !3, line: 216, column: 20)
!329 = distinct !DILexicalBlock(scope: !318, file: !3, line: 212, column: 13)
!330 = !DILocalVariable(name: "cached", scope: !331, file: !3, line: 235, type: !86)
!331 = distinct !DILexicalBlock(scope: !326, file: !3, line: 230, column: 20)
!332 = !DILocalVariable(name: "klen", scope: !318, file: !3, line: 246, type: !65)
!333 = !DILocation(line: 162, column: 31, scope: !301)
!334 = !DILocation(line: 162, column: 43, scope: !301)
!335 = !DILocation(line: 162, column: 61, scope: !301)
!336 = !DILocation(line: 162, column: 96, scope: !301)
!337 = !DILocation(line: 164, column: 31, scope: !301)
!338 = !{!339, !283, i64 2716}
!339 = !{!"redisServer", !283, i64 0, !282, i64 8, !282, i64 16, !282, i64 24, !283, i64 32, !283, i64 36, !283, i64 40, !282, i64 48, !282, i64 56, !282, i64 64, !282, i64 72, !283, i64 80, !283, i64 84, !283, i64 88, !283, i64 92, !282, i64 96, !282, i64 104, !283, i64 112, !283, i64 116, !280, i64 120, !283, i64 164, !340, i64 168, !283, i64 176, !282, i64 184, !282, i64 192, !282, i64 200, !280, i64 208, !283, i64 216, !283, i64 220, !280, i64 224, !283, i64 352, !282, i64 360, !283, i64 368, !280, i64 372, !283, i64 436, !283, i64 440, !280, i64 444, !283, i64 508, !282, i64 512, !282, i64 520, !282, i64 528, !282, i64 536, !282, i64 544, !282, i64 552, !282, i64 560, !283, i64 568, !279, i64 576, !280, i64 584, !282, i64 840, !340, i64 848, !283, i64 856, !283, i64 860, !340, i64 864, !340, i64 872, !340, i64 880, !340, i64 888, !282, i64 896, !282, i64 904, !282, i64 912, !282, i64 920, !282, i64 928, !282, i64 936, !282, i64 944, !282, i64 952, !282, i64 960, !282, i64 968, !282, i64 976, !282, i64 984, !282, i64 992, !340, i64 1000, !279, i64 1008, !279, i64 1016, !279, i64 1024, !341, i64 1032, !279, i64 1040, !279, i64 1048, !279, i64 1056, !279, i64 1064, !279, i64 1072, !279, i64 1080, !279, i64 1088, !279, i64 1096, !279, i64 1104, !340, i64 1112, !279, i64 1120, !341, i64 1128, !279, i64 1136, !279, i64 1144, !279, i64 1152, !279, i64 1160, !282, i64 1168, !279, i64 1176, !279, i64 1184, !340, i64 1192, !342, i64 1200, !279, i64 1240, !279, i64 1248, !340, i64 1256, !340, i64 1264, !280, i64 1272, !283, i64 1728, !283, i64 1732, !283, i64 1736, !283, i64 1740, !283, i64 1744, !340, i64 1752, !283, i64 1760, !283, i64 1764, !283, i64 1768, !283, i64 1772, !340, i64 1776, !340, i64 1784, !283, i64 1792, !283, i64 1796, !283, i64 1800, !283, i64 1804, !280, i64 1808, !283, i64 1880, !283, i64 1884, !282, i64 1888, !283, i64 1896, !283, i64 1900, !340, i64 1904, !340, i64 1912, !340, i64 1920, !340, i64 1928, !283, i64 1936, !283, i64 1940, !282, i64 1944, !282, i64 1952, !283, i64 1960, !283, i64 1964, !340, i64 1968, !340, i64 1976, !340, i64 1984, !340, i64 1992, !283, i64 2000, !340, i64 2008, !283, i64 2016, !283, i64 2020, !283, i64 2024, !283, i64 2028, !283, i64 2032, !283, i64 2036, !283, i64 2040, !283, i64 2044, !283, i64 2048, !283, i64 2052, !283, i64 2056, !283, i64 2060, !283, i64 2064, !282, i64 2072, !279, i64 2080, !279, i64 2088, !283, i64 2096, !282, i64 2104, !283, i64 2112, !282, i64 2120, !283, i64 2128, !283, i64 2132, !340, i64 2136, !340, i64 2144, !340, i64 2152, !340, i64 2160, !283, i64 2168, !283, i64 2172, !283, i64 2176, !283, i64 2180, !283, i64 2184, !283, i64 2188, !280, i64 2192, !343, i64 2200, !344, i64 2224, !282, i64 2240, !283, i64 2248, !282, i64 2256, !283, i64 2264, !280, i64 2268, !280, i64 2309, !279, i64 2352, !279, i64 2360, !283, i64 2368, !283, i64 2372, !282, i64 2376, !279, i64 2384, !279, i64 2392, !279, i64 2400, !279, i64 2408, !340, i64 2416, !340, i64 2424, !283, i64 2432, !283, i64 2436, !283, i64 2440, !283, i64 2444, !283, i64 2448, !282, i64 2456, !282, i64 2464, !283, i64 2472, !283, i64 2476, !282, i64 2480, !282, i64 2488, !283, i64 2496, !283, i64 2500, !340, i64 2504, !340, i64 2512, !340, i64 2520, !283, i64 2528, !283, i64 2532, !282, i64 2536, !340, i64 2544, !283, i64 2552, !283, i64 2556, !283, i64 2560, !340, i64 2568, !283, i64 2576, !283, i64 2580, !283, i64 2584, !282, i64 2592, !280, i64 2600, !279, i64 2648, !283, i64 2656, !282, i64 2664, !282, i64 2672, !283, i64 2680, !282, i64 2688, !283, i64 2696, !283, i64 2700, !279, i64 2704, !283, i64 2712, !283, i64 2716, !283, i64 2720, !283, i64 2724, !279, i64 2728, !283, i64 2736, !280, i64 2740, !282, i64 2768, !282, i64 2776, !283, i64 2784, !283, i64 2788, !283, i64 2792, !283, i64 2796, !340, i64 2800, !340, i64 2808, !340, i64 2816, !340, i64 2824, !340, i64 2832, !340, i64 2840, !340, i64 2848, !340, i64 2856, !283, i64 2864, !283, i64 2868, !340, i64 2872, !340, i64 2880, !283, i64 2888, !279, i64 2896, !282, i64 2904, !282, i64 2912, !283, i64 2920, !283, i64 2924, !279, i64 2928, !282, i64 2936, !282, i64 2944, !283, i64 2952, !283, i64 2956, !283, i64 2960, !283, i64 2964, !282, i64 2968, !283, i64 2976, !283, i64 2980, !283, i64 2984, !282, i64 2992, !282, i64 3000, !282, i64 3008, !282, i64 3016, !279, i64 3024, !279, i64 3032, !279, i64 3040, !283, i64 3048, !283, i64 3052, !283, i64 3056, !283, i64 3060, !283, i64 3064, !283, i64 3068, !283, i64 3072, !283, i64 3076, !283, i64 3080, !283, i64 3084, !283, i64 3088, !279, i64 3096, !282, i64 3104, !282, i64 3112, !282, i64 3120, !283, i64 3128, !283, i64 3132, !283, i64 3136, !340, i64 3144, !282, i64 3152, !282, i64 3160, !282, i64 3168}
!340 = !{!"long", !280, i64 0}
!341 = !{!"double", !280, i64 0}
!342 = !{!"malloc_stats", !340, i64 0, !340, i64 8, !340, i64 16, !340, i64 24, !340, i64 32}
!343 = !{!"", !283, i64 0, !340, i64 8, !279, i64 16}
!344 = !{!"redisOpArray", !282, i64 0, !283, i64 8}
!345 = !DILocation(line: 164, column: 5, scope: !301)
!346 = !DILocation(line: 0, scope: !301)
!347 = !DILocation(line: 164, column: 16, scope: !301)
!348 = !DILocation(line: 166, column: 13, scope: !301)
!349 = !DILocation(line: 163, column: 15, scope: !301)
!350 = !DILocation(line: 163, column: 9, scope: !301)
!351 = !DILocation(line: 170, column: 15, scope: !318)
!352 = !DILocation(line: 167, column: 19, scope: !319)
!353 = !DILocation(line: 167, column: 5, scope: !320)
!354 = !DILocation(line: 173, column: 14, scope: !318)
!355 = !DILocation(line: 171, column: 20, scope: !318)
!356 = !DILocation(line: 174, column: 15, scope: !318)
!357 = !{!358, !282, i64 0}
!358 = !{!"dictEntry", !282, i64 0, !280, i64 8, !282, i64 16}
!359 = !DILocation(line: 169, column: 13, scope: !318)
!360 = !DILocation(line: 179, column: 20, scope: !361)
!361 = distinct !DILexicalBlock(scope: !318, file: !3, line: 179, column: 13)
!362 = !{!339, !283, i64 2712}
!363 = !DILocation(line: 179, column: 37, scope: !361)
!364 = !DILocation(line: 179, column: 13, scope: !318)
!365 = !DILocation(line: 200, column: 39, scope: !366)
!366 = distinct !DILexicalBlock(scope: !367, file: !3, line: 198, column: 71)
!367 = distinct !DILexicalBlock(scope: !368, file: !3, line: 198, column: 20)
!368 = distinct !DILexicalBlock(scope: !369, file: !3, line: 189, column: 20)
!369 = distinct !DILexicalBlock(scope: !318, file: !3, line: 187, column: 13)
!370 = !DILocation(line: 180, column: 17, scope: !371)
!371 = distinct !DILexicalBlock(scope: !361, file: !3, line: 179, column: 64)
!372 = !DILocation(line: 180, column: 45, scope: !373)
!373 = distinct !DILexicalBlock(scope: !371, file: !3, line: 180, column: 17)
!374 = !DILocation(line: 187, column: 20, scope: !369)
!375 = !DILocation(line: 180, column: 40, scope: !373)
!376 = !DILocation(line: 0, scope: !318)
!377 = !DILocation(line: 181, column: 17, scope: !371)
!378 = !{!280, !280, i64 0}
!379 = !DILocation(line: 187, column: 37, scope: !369)
!380 = !DILocation(line: 187, column: 13, scope: !318)
!381 = !DILocation(line: 90, column: 49, scope: !239, inlinedAt: !382)
!382 = distinct !DILocation(line: 188, column: 20, scope: !383)
!383 = distinct !DILexicalBlock(scope: !369, file: !3, line: 187, column: 59)
!384 = !DILocation(line: 81, column: 9, scope: !234, inlinedAt: !385)
!385 = distinct !DILocation(line: 91, column: 35, scope: !239, inlinedAt: !382)
!386 = !DILocation(line: 79, column: 18, scope: !230, inlinedAt: !385)
!387 = !DILocation(line: 85, column: 5, scope: !230, inlinedAt: !385)
!388 = !DILocation(line: 91, column: 35, scope: !239, inlinedAt: !382)
!389 = !DILocation(line: 91, column: 24, scope: !239, inlinedAt: !382)
!390 = !DILocation(line: 92, column: 24, scope: !253, inlinedAt: !382)
!391 = !DILocation(line: 92, column: 18, scope: !253, inlinedAt: !382)
!392 = !DILocation(line: 92, column: 21, scope: !253, inlinedAt: !382)
!393 = !DILocation(line: 95, column: 43, scope: !257, inlinedAt: !382)
!394 = !DILocation(line: 95, column: 28, scope: !257, inlinedAt: !382)
!395 = !DILocation(line: 92, column: 9, scope: !239, inlinedAt: !382)
!396 = !DILocation(line: 0, scope: !257, inlinedAt: !382)
!397 = !DILocation(line: 98, column: 1, scope: !239, inlinedAt: !382)
!398 = !DILocation(line: 168, column: 28, scope: !318)
!399 = !DILocation(line: 189, column: 9, scope: !383)
!400 = !DILocation(line: 189, column: 44, scope: !368)
!401 = !DILocation(line: 189, column: 20, scope: !369)
!402 = !DILocalVariable(name: "o", arg: 1, scope: !403, file: !3, line: 335, type: !210)
!403 = distinct !DISubprogram(name: "LFUDecrAndReturn", scope: !3, file: !3, line: 335, type: !404, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !406)
!404 = !DISubroutineType(types: !405)
!405 = !{!54, !210}
!406 = !{!402, !407, !408, !409}
!407 = !DILocalVariable(name: "ldt", scope: !403, file: !3, line: 336, type: !54)
!408 = !DILocalVariable(name: "counter", scope: !403, file: !3, line: 337, type: !54)
!409 = !DILocalVariable(name: "num_periods", scope: !403, file: !3, line: 338, type: !54)
!410 = !DILocation(line: 335, column: 38, scope: !403, inlinedAt: !411)
!411 = distinct !DILocation(line: 197, column: 24, scope: !412)
!412 = distinct !DILexicalBlock(scope: !368, file: !3, line: 189, column: 66)
!413 = !DILocation(line: 336, column: 28, scope: !403, inlinedAt: !411)
!414 = !DILocation(line: 337, column: 36, scope: !403, inlinedAt: !411)
!415 = !DILocation(line: 337, column: 29, scope: !403, inlinedAt: !411)
!416 = !DILocation(line: 337, column: 19, scope: !403, inlinedAt: !411)
!417 = !DILocation(line: 338, column: 40, scope: !403, inlinedAt: !411)
!418 = !{!339, !283, i64 2724}
!419 = !DILocation(line: 338, column: 33, scope: !403, inlinedAt: !411)
!420 = !DILocation(line: 336, column: 32, scope: !403, inlinedAt: !411)
!421 = !DILocation(line: 336, column: 25, scope: !403, inlinedAt: !411)
!422 = !DILocation(line: 336, column: 19, scope: !403, inlinedAt: !411)
!423 = !DILocalVariable(name: "ldt", arg: 1, scope: !424, file: !3, line: 307, type: !54)
!424 = distinct !DISubprogram(name: "LFUTimeElapsed", scope: !3, file: !3, line: 307, type: !425, isLocal: false, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !427)
!425 = !DISubroutineType(types: !426)
!426 = !{!54, !54}
!427 = !{!423, !428}
!428 = !DILocalVariable(name: "now", scope: !424, file: !3, line: 308, type: !54)
!429 = !DILocation(line: 307, column: 44, scope: !424, inlinedAt: !430)
!430 = distinct !DILocation(line: 338, column: 57, scope: !403, inlinedAt: !411)
!431 = !DILocation(line: 300, column: 20, scope: !432, inlinedAt: !435)
!432 = distinct !DISubprogram(name: "LFUGetTimeInMinutes", scope: !3, file: !3, line: 299, type: !433, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!433 = !DISubroutineType(types: !434)
!434 = !{!54}
!435 = distinct !DILocation(line: 308, column: 25, scope: !424, inlinedAt: !430)
!436 = !{!339, !340, i64 2872}
!437 = !DILocation(line: 300, column: 28, scope: !432, inlinedAt: !435)
!438 = !DILocation(line: 300, column: 33, scope: !432, inlinedAt: !435)
!439 = !DILocation(line: 300, column: 5, scope: !432, inlinedAt: !435)
!440 = !DILocation(line: 308, column: 19, scope: !424, inlinedAt: !430)
!441 = !DILocation(line: 309, column: 13, scope: !442, inlinedAt: !430)
!442 = distinct !DILexicalBlock(scope: !424, file: !3, line: 309, column: 9)
!443 = !DILocation(line: 309, column: 9, scope: !424, inlinedAt: !430)
!444 = !DILocation(line: 311, column: 1, scope: !424, inlinedAt: !430)
!445 = !DILocation(line: 338, column: 79, scope: !403, inlinedAt: !411)
!446 = !DILocation(line: 338, column: 77, scope: !403, inlinedAt: !411)
!447 = !DILocation(line: 338, column: 19, scope: !403, inlinedAt: !411)
!448 = !DILocation(line: 339, column: 9, scope: !449, inlinedAt: !411)
!449 = distinct !DILexicalBlock(scope: !403, file: !3, line: 339, column: 9)
!450 = !DILocation(line: 339, column: 9, scope: !403, inlinedAt: !411)
!451 = !DILocation(line: 340, column: 19, scope: !449, inlinedAt: !411)
!452 = !DILocation(line: 340, column: 9, scope: !449, inlinedAt: !411)
!453 = !DILocation(line: 0, scope: !403, inlinedAt: !411)
!454 = !DILocation(line: 341, column: 5, scope: !403, inlinedAt: !411)
!455 = !DILocation(line: 197, column: 23, scope: !412)
!456 = !DILocation(line: 198, column: 9, scope: !412)
!457 = !DILocation(line: 198, column: 44, scope: !367)
!458 = !DILocation(line: 198, column: 20, scope: !368)
!459 = !DILocation(line: 200, column: 31, scope: !366)
!460 = !DILocation(line: 202, column: 13, scope: !461)
!461 = distinct !DILexicalBlock(scope: !367, file: !3, line: 201, column: 16)
!462 = !DILocation(line: 0, scope: !366)
!463 = !DILocation(line: 163, column: 12, scope: !301)
!464 = !DILocation(line: 210, column: 24, scope: !318)
!465 = !DILocation(line: 210, column: 16, scope: !318)
!466 = !DILocation(line: 210, column: 28, scope: !318)
!467 = !DILocation(line: 211, column: 24, scope: !318)
!468 = !DILocation(line: 211, column: 29, scope: !318)
!469 = !DILocation(line: 209, column: 9, scope: !318)
!470 = !DILocation(line: 212, column: 43, scope: !329)
!471 = !DILocation(line: 212, column: 47, scope: !329)
!472 = !DILocation(line: 212, column: 13, scope: !318)
!473 = !DILocation(line: 216, column: 51, scope: !328)
!474 = !DILocation(line: 216, column: 20, scope: !329)
!475 = !DILocation(line: 221, column: 37, scope: !326)
!476 = !DILocation(line: 221, column: 41, scope: !326)
!477 = !DILocation(line: 221, column: 17, scope: !327)
!478 = !DILocation(line: 226, column: 50, scope: !325)
!479 = !DILocation(line: 226, column: 21, scope: !325)
!480 = !DILocation(line: 227, column: 29, scope: !325)
!481 = !DILocation(line: 227, column: 31, scope: !325)
!482 = !DILocation(line: 227, column: 25, scope: !325)
!483 = !DILocation(line: 227, column: 34, scope: !325)
!484 = !DILocation(line: 228, column: 36, scope: !325)
!485 = !DILocation(line: 227, column: 17, scope: !325)
!486 = !DILocation(line: 229, column: 25, scope: !325)
!487 = !DILocation(line: 229, column: 32, scope: !325)
!488 = !DILocation(line: 230, column: 13, scope: !325)
!489 = !DILocation(line: 232, column: 18, scope: !331)
!490 = !DILocation(line: 235, column: 38, scope: !331)
!491 = !DILocation(line: 235, column: 21, scope: !331)
!492 = !DILocation(line: 236, column: 33, scope: !493)
!493 = distinct !DILexicalBlock(scope: !331, file: !3, line: 236, column: 21)
!494 = !DILocation(line: 236, column: 21, scope: !331)
!495 = !DILocation(line: 236, column: 52, scope: !493)
!496 = !DILocation(line: 237, column: 53, scope: !331)
!497 = !DILocation(line: 237, column: 52, scope: !331)
!498 = !DILocation(line: 237, column: 17, scope: !331)
!499 = !DILocation(line: 238, column: 25, scope: !331)
!500 = !DILocation(line: 238, column: 32, scope: !331)
!501 = !DILocation(line: 0, scope: !331)
!502 = !DILocalVariable(name: "s", arg: 1, scope: !503, file: !13, line: 87, type: !508)
!503 = distinct !DISubprogram(name: "sdslen", scope: !13, file: !13, line: 87, type: !504, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !509)
!504 = !DISubroutineType(types: !505)
!505 = !{!506, !508}
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !507, line: 58, baseType: !54)
!507 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!509 = !{!502, !510}
!510 = !DILocalVariable(name: "flags", scope: !503, file: !13, line: 88, type: !20)
!511 = !DILocation(line: 87, column: 39, scope: !503, inlinedAt: !512)
!512 = distinct !DILocation(line: 246, column: 20, scope: !318)
!513 = !DILocation(line: 88, column: 27, scope: !503, inlinedAt: !512)
!514 = !DILocation(line: 88, column: 19, scope: !503, inlinedAt: !512)
!515 = !DILocation(line: 89, column: 5, scope: !503, inlinedAt: !512)
!516 = !DILocation(line: 102, column: 1, scope: !503, inlinedAt: !512)
!517 = !DILocation(line: 246, column: 13, scope: !318)
!518 = !DILocation(line: 247, column: 13, scope: !318)
!519 = !DILocation(line: 91, column: 20, scope: !520, inlinedAt: !512)
!520 = distinct !DILexicalBlock(scope: !503, file: !13, line: 89, column: 33)
!521 = !DILocation(line: 91, column: 13, scope: !520, inlinedAt: !512)
!522 = !DILocation(line: 93, column: 20, scope: !520, inlinedAt: !512)
!523 = !DILocation(line: 93, column: 34, scope: !520, inlinedAt: !512)
!524 = !DILocation(line: 93, column: 13, scope: !520, inlinedAt: !512)
!525 = !DILocation(line: 95, column: 20, scope: !520, inlinedAt: !512)
!526 = !DILocation(line: 95, column: 35, scope: !520, inlinedAt: !512)
!527 = !{!528, !528, i64 0}
!528 = !{!"short", !280, i64 0}
!529 = !DILocation(line: 95, column: 13, scope: !520, inlinedAt: !512)
!530 = !DILocation(line: 97, column: 20, scope: !520, inlinedAt: !512)
!531 = !DILocation(line: 97, column: 35, scope: !520, inlinedAt: !512)
!532 = !{!283, !283, i64 0}
!533 = !DILocation(line: 97, column: 13, scope: !520, inlinedAt: !512)
!534 = !DILocation(line: 99, column: 20, scope: !520, inlinedAt: !512)
!535 = !DILocation(line: 99, column: 35, scope: !520, inlinedAt: !512)
!536 = !{!340, !340, i64 0}
!537 = !DILocation(line: 99, column: 13, scope: !520, inlinedAt: !512)
!538 = !DILocation(line: 0, scope: !520, inlinedAt: !512)
!539 = !DILocation(line: 246, column: 20, scope: !318)
!540 = !DILocation(line: 247, column: 18, scope: !541)
!541 = distinct !DILexicalBlock(scope: !318, file: !3, line: 247, column: 13)
!542 = !DILocation(line: 248, column: 27, scope: !543)
!543 = distinct !DILexicalBlock(scope: !541, file: !3, line: 247, column: 44)
!544 = !DILocation(line: 248, column: 13, scope: !543)
!545 = !DILocation(line: 248, column: 21, scope: !543)
!546 = !DILocation(line: 248, column: 25, scope: !543)
!547 = !DILocation(line: 249, column: 9, scope: !543)
!548 = !DILocation(line: 250, column: 20, scope: !549)
!549 = distinct !DILexicalBlock(scope: !541, file: !3, line: 249, column: 16)
!550 = !DILocation(line: 250, column: 28, scope: !549)
!551 = !DILocation(line: 250, column: 39, scope: !549)
!552 = !DILocation(line: 250, column: 13, scope: !549)
!553 = !DILocation(line: 251, column: 31, scope: !549)
!554 = !DILocation(line: 251, column: 38, scope: !549)
!555 = !DILocalVariable(name: "s", arg: 1, scope: !556, file: !13, line: 130, type: !86)
!556 = distinct !DISubprogram(name: "sdssetlen", scope: !13, file: !13, line: 130, type: !557, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !559)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !86, !506}
!559 = !{!555, !560, !561, !562}
!560 = !DILocalVariable(name: "newlen", arg: 2, scope: !556, file: !13, line: 130, type: !506)
!561 = !DILocalVariable(name: "flags", scope: !556, file: !13, line: 131, type: !20)
!562 = !DILocalVariable(name: "fp", scope: !563, file: !13, line: 135, type: !58)
!563 = distinct !DILexicalBlock(scope: !564, file: !13, line: 134, column: 13)
!564 = distinct !DILexicalBlock(scope: !556, file: !13, line: 132, column: 33)
!565 = !DILocation(line: 130, column: 34, scope: !556, inlinedAt: !566)
!566 = distinct !DILocation(line: 251, column: 13, scope: !549)
!567 = !DILocation(line: 130, column: 44, scope: !556, inlinedAt: !566)
!568 = !DILocation(line: 131, column: 27, scope: !556, inlinedAt: !566)
!569 = !DILocation(line: 131, column: 19, scope: !556, inlinedAt: !566)
!570 = !DILocation(line: 132, column: 5, scope: !556, inlinedAt: !566)
!571 = !DILocation(line: 135, column: 32, scope: !563, inlinedAt: !566)
!572 = !DILocation(line: 136, column: 23, scope: !563, inlinedAt: !566)
!573 = !DILocation(line: 136, column: 21, scope: !563, inlinedAt: !566)
!574 = !DILocation(line: 138, column: 13, scope: !564, inlinedAt: !566)
!575 = !DILocation(line: 140, column: 33, scope: !564, inlinedAt: !566)
!576 = !DILocation(line: 140, column: 13, scope: !564, inlinedAt: !566)
!577 = !DILocation(line: 140, column: 31, scope: !564, inlinedAt: !566)
!578 = !DILocation(line: 141, column: 13, scope: !564, inlinedAt: !566)
!579 = !DILocation(line: 143, column: 34, scope: !564, inlinedAt: !566)
!580 = !DILocation(line: 143, column: 13, scope: !564, inlinedAt: !566)
!581 = !DILocation(line: 143, column: 28, scope: !564, inlinedAt: !566)
!582 = !DILocation(line: 143, column: 32, scope: !564, inlinedAt: !566)
!583 = !DILocation(line: 144, column: 13, scope: !564, inlinedAt: !566)
!584 = !DILocation(line: 146, column: 34, scope: !564, inlinedAt: !566)
!585 = !DILocation(line: 146, column: 13, scope: !564, inlinedAt: !566)
!586 = !DILocation(line: 146, column: 28, scope: !564, inlinedAt: !566)
!587 = !DILocation(line: 146, column: 32, scope: !564, inlinedAt: !566)
!588 = !DILocation(line: 147, column: 13, scope: !564, inlinedAt: !566)
!589 = !DILocation(line: 149, column: 13, scope: !564, inlinedAt: !566)
!590 = !DILocation(line: 149, column: 28, scope: !564, inlinedAt: !566)
!591 = !DILocation(line: 149, column: 32, scope: !564, inlinedAt: !566)
!592 = !DILocation(line: 150, column: 13, scope: !564, inlinedAt: !566)
!593 = !DILocation(line: 152, column: 1, scope: !556, inlinedAt: !566)
!594 = !DILocation(line: 252, column: 35, scope: !549)
!595 = !DILocation(line: 252, column: 21, scope: !549)
!596 = !DILocation(line: 252, column: 25, scope: !549)
!597 = !DILocation(line: 254, column: 9, scope: !318)
!598 = !DILocation(line: 254, column: 17, scope: !318)
!599 = !DILocation(line: 254, column: 22, scope: !318)
!600 = !DILocation(line: 255, column: 17, scope: !318)
!601 = !DILocation(line: 255, column: 22, scope: !318)
!602 = !DILocation(line: 256, column: 5, scope: !319)
!603 = !DILocation(line: 167, column: 29, scope: !319)
!604 = distinct !{!604, !353, !605}
!605 = !DILocation(line: 256, column: 5, scope: !320)
!606 = !DILocation(line: 257, column: 1, scope: !301)
!607 = !DILocation(line: 335, column: 38, scope: !403)
!608 = !DILocation(line: 336, column: 28, scope: !403)
!609 = !DILocation(line: 337, column: 36, scope: !403)
!610 = !DILocation(line: 337, column: 29, scope: !403)
!611 = !DILocation(line: 337, column: 19, scope: !403)
!612 = !DILocation(line: 338, column: 40, scope: !403)
!613 = !DILocation(line: 338, column: 33, scope: !403)
!614 = !DILocation(line: 336, column: 32, scope: !403)
!615 = !DILocation(line: 336, column: 25, scope: !403)
!616 = !DILocation(line: 336, column: 19, scope: !403)
!617 = !DILocation(line: 307, column: 44, scope: !424, inlinedAt: !618)
!618 = distinct !DILocation(line: 338, column: 57, scope: !403)
!619 = !DILocation(line: 300, column: 20, scope: !432, inlinedAt: !620)
!620 = distinct !DILocation(line: 308, column: 25, scope: !424, inlinedAt: !618)
!621 = !DILocation(line: 300, column: 28, scope: !432, inlinedAt: !620)
!622 = !DILocation(line: 300, column: 33, scope: !432, inlinedAt: !620)
!623 = !DILocation(line: 300, column: 5, scope: !432, inlinedAt: !620)
!624 = !DILocation(line: 308, column: 19, scope: !424, inlinedAt: !618)
!625 = !DILocation(line: 309, column: 13, scope: !442, inlinedAt: !618)
!626 = !DILocation(line: 309, column: 9, scope: !424, inlinedAt: !618)
!627 = !DILocation(line: 311, column: 1, scope: !424, inlinedAt: !618)
!628 = !DILocation(line: 338, column: 79, scope: !403)
!629 = !DILocation(line: 338, column: 77, scope: !403)
!630 = !DILocation(line: 338, column: 19, scope: !403)
!631 = !DILocation(line: 339, column: 9, scope: !449)
!632 = !DILocation(line: 339, column: 9, scope: !403)
!633 = !DILocation(line: 340, column: 19, scope: !449)
!634 = !DILocation(line: 340, column: 9, scope: !449)
!635 = !DILocation(line: 0, scope: !403)
!636 = !DILocation(line: 341, column: 5, scope: !403)
!637 = !DILocation(line: 300, column: 20, scope: !432)
!638 = !DILocation(line: 300, column: 28, scope: !432)
!639 = !DILocation(line: 300, column: 33, scope: !432)
!640 = !DILocation(line: 300, column: 5, scope: !432)
!641 = !DILocation(line: 307, column: 44, scope: !424)
!642 = !DILocation(line: 300, column: 20, scope: !432, inlinedAt: !643)
!643 = distinct !DILocation(line: 308, column: 25, scope: !424)
!644 = !DILocation(line: 300, column: 28, scope: !432, inlinedAt: !643)
!645 = !DILocation(line: 300, column: 33, scope: !432, inlinedAt: !643)
!646 = !DILocation(line: 300, column: 5, scope: !432, inlinedAt: !643)
!647 = !DILocation(line: 308, column: 19, scope: !424)
!648 = !DILocation(line: 309, column: 13, scope: !442)
!649 = !DILocation(line: 309, column: 9, scope: !424)
!650 = !DILocation(line: 311, column: 1, scope: !424)
!651 = distinct !DISubprogram(name: "LFULogIncr", scope: !3, file: !3, line: 315, type: !652, isLocal: false, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !654)
!652 = !DISubroutineType(types: !653)
!653 = !{!16, !16}
!654 = !{!655, !656, !657, !658}
!655 = !DILocalVariable(name: "counter", arg: 1, scope: !651, file: !3, line: 315, type: !16)
!656 = !DILocalVariable(name: "r", scope: !651, file: !3, line: 317, type: !8)
!657 = !DILocalVariable(name: "baseval", scope: !651, file: !3, line: 318, type: !8)
!658 = !DILocalVariable(name: "p", scope: !651, file: !3, line: 320, type: !8)
!659 = !DILocation(line: 315, column: 28, scope: !651)
!660 = !DILocation(line: 316, column: 17, scope: !661)
!661 = distinct !DILexicalBlock(scope: !651, file: !3, line: 316, column: 9)
!662 = !DILocation(line: 316, column: 9, scope: !651)
!663 = !DILocation(line: 316, column: 9, scope: !661)
!664 = !DILocation(line: 317, column: 24, scope: !651)
!665 = !DILocation(line: 317, column: 16, scope: !651)
!666 = !DILocation(line: 317, column: 12, scope: !651)
!667 = !DILocation(line: 318, column: 30, scope: !651)
!668 = !DILocation(line: 318, column: 22, scope: !651)
!669 = !DILocation(line: 318, column: 12, scope: !651)
!670 = !DILocation(line: 319, column: 17, scope: !671)
!671 = distinct !DILexicalBlock(scope: !651, file: !3, line: 319, column: 9)
!672 = !DILocation(line: 319, column: 9, scope: !651)
!673 = !DILocation(line: 320, column: 36, scope: !651)
!674 = !{!339, !283, i64 2720}
!675 = !DILocation(line: 320, column: 29, scope: !651)
!676 = !DILocation(line: 320, column: 28, scope: !651)
!677 = !DILocation(line: 320, column: 50, scope: !651)
!678 = !DILocation(line: 317, column: 30, scope: !651)
!679 = !DILocation(line: 320, column: 12, scope: !651)
!680 = !DILocation(line: 321, column: 11, scope: !681)
!681 = distinct !DILexicalBlock(scope: !651, file: !3, line: 321, column: 9)
!682 = !DILocation(line: 321, column: 9, scope: !651)
!683 = !DILocation(line: 0, scope: !651)
!684 = !DILocation(line: 323, column: 1, scope: !651)
!685 = distinct !DISubprogram(name: "freeMemoryGetNotCountedMemory", scope: !3, file: !3, line: 352, type: !686, isLocal: false, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !688)
!686 = !DISubroutineType(types: !687)
!687 = !{!68}
!688 = !{!689, !690, !691, !699, !700}
!689 = !DILocalVariable(name: "overhead", scope: !685, file: !3, line: 353, type: !68)
!690 = !DILocalVariable(name: "slaves", scope: !685, file: !3, line: 354, type: !65)
!691 = !DILocalVariable(name: "li", scope: !692, file: !3, line: 357, type: !694)
!692 = distinct !DILexicalBlock(scope: !693, file: !3, line: 356, column: 17)
!693 = distinct !DILexicalBlock(scope: !685, file: !3, line: 356, column: 9)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !165, line: 45, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !165, line: 42, size: 128, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !695, file: !165, line: 43, baseType: !169, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !695, file: !165, line: 44, baseType: !65, size: 32, offset: 64)
!699 = !DILocalVariable(name: "ln", scope: !692, file: !3, line: 358, type: !169)
!700 = !DILocalVariable(name: "slave", scope: !701, file: !3, line: 362, type: !702)
!701 = distinct !DILexicalBlock(scope: !692, file: !3, line: 361, column: 37)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !76, line: 780, baseType: !704)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !76, line: 723, size: 135360, elements: !705)
!705 = !{!706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !717, !741, !742, !743, !744, !745, !746, !747, !748, !751, !752, !753, !754, !755, !756, !757, !758, !763, !764, !765, !766, !767, !768, !769, !770, !774, !775, !779, !780, !796, !797, !813, !814, !815, !816, !817, !818, !819, !820}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !704, file: !76, line: 724, baseType: !52, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !704, file: !76, line: 725, baseType: !65, size: 32, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !704, file: !76, line: 726, baseType: !90, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !704, file: !76, line: 727, baseType: !210, size: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !704, file: !76, line: 728, baseType: !86, size: 64, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !704, file: !76, line: 729, baseType: !68, size: 64, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !704, file: !76, line: 730, baseType: !86, size: 64, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !704, file: !76, line: 734, baseType: !68, size: 64, offset: 448)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !704, file: !76, line: 735, baseType: !65, size: 32, offset: 512)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !704, file: !76, line: 736, baseType: !716, size: 64, offset: 576)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !704, file: !76, line: 737, baseType: !718, size: 64, offset: 640)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !76, line: 1307, size: 640, elements: !720)
!720 = !{!721, !722, !727, !728, !729, !730, !736, !737, !738, !739, !740}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !719, file: !76, line: 1308, baseType: !87, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !719, file: !76, line: 1309, baseType: !723, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !76, line: 1305, baseType: !725)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !702}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !719, file: !76, line: 1310, baseType: !65, size: 32, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !719, file: !76, line: 1311, baseType: !87, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !719, file: !76, line: 1312, baseType: !65, size: 32, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !719, file: !76, line: 1315, baseType: !731, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !76, line: 1306, baseType: !733)
!733 = !DISubroutineType(types: !734)
!734 = !{!735, !718, !716, !65, !735}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !719, file: !76, line: 1317, baseType: !65, size: 32, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !719, file: !76, line: 1318, baseType: !65, size: 32, offset: 416)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !719, file: !76, line: 1319, baseType: !65, size: 32, offset: 448)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !719, file: !76, line: 1320, baseType: !10, size: 64, offset: 512)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !719, file: !76, line: 1320, baseType: !10, size: 64, offset: 576)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !704, file: !76, line: 737, baseType: !718, size: 64, offset: 704)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !704, file: !76, line: 738, baseType: !65, size: 32, offset: 768)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !704, file: !76, line: 739, baseType: !65, size: 32, offset: 800)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !704, file: !76, line: 740, baseType: !6, size: 64, offset: 832)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !704, file: !76, line: 741, baseType: !163, size: 64, offset: 896)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !704, file: !76, line: 742, baseType: !200, size: 64, offset: 960)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !704, file: !76, line: 743, baseType: !68, size: 64, offset: 1024)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !704, file: !76, line: 745, baseType: !749, size: 64, offset: 1088)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !750, line: 34, baseType: !6)
!750 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!751 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !704, file: !76, line: 746, baseType: !749, size: 64, offset: 1152)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !704, file: !76, line: 747, baseType: !749, size: 64, offset: 1216)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !704, file: !76, line: 748, baseType: !65, size: 32, offset: 1280)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !704, file: !76, line: 749, baseType: !65, size: 32, offset: 1312)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !704, file: !76, line: 750, baseType: !65, size: 32, offset: 1344)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !704, file: !76, line: 751, baseType: !65, size: 32, offset: 1376)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !704, file: !76, line: 752, baseType: !65, size: 32, offset: 1408)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !704, file: !76, line: 753, baseType: !759, size: 64, offset: 1472)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !760, line: 173, baseType: !761)
!760 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !71, line: 100, baseType: !762)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !71, line: 44, baseType: !6)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !704, file: !76, line: 754, baseType: !759, size: 64, offset: 1536)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !704, file: !76, line: 755, baseType: !86, size: 64, offset: 1600)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !704, file: !76, line: 756, baseType: !10, size: 64, offset: 1664)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !704, file: !76, line: 757, baseType: !10, size: 64, offset: 1728)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !704, file: !76, line: 758, baseType: !10, size: 64, offset: 1792)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !704, file: !76, line: 759, baseType: !10, size: 64, offset: 1856)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !704, file: !76, line: 760, baseType: !10, size: 64, offset: 1920)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !704, file: !76, line: 763, baseType: !771, size: 328, offset: 1984)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 328, elements: !772)
!772 = !{!773}
!773 = !DISubrange(count: 41)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !704, file: !76, line: 764, baseType: !65, size: 32, offset: 2336)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !704, file: !76, line: 765, baseType: !776, size: 368, offset: 2368)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 368, elements: !777)
!777 = !{!778}
!778 = !DISubrange(count: 46)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !704, file: !76, line: 766, baseType: !65, size: 32, offset: 2752)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !704, file: !76, line: 767, baseType: !781, size: 256, offset: 2816)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !76, line: 673, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !76, line: 665, size: 256, elements: !783)
!783 = !{!784, !792, !793, !794, !795}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !782, file: !76, line: 666, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !76, line: 663, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !76, line: 659, size: 192, elements: !788)
!788 = !{!789, !790, !791}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !787, file: !76, line: 660, baseType: !716, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !787, file: !76, line: 661, baseType: !65, size: 32, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !787, file: !76, line: 662, baseType: !718, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !782, file: !76, line: 667, baseType: !65, size: 32, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !782, file: !76, line: 668, baseType: !65, size: 32, offset: 96)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !782, file: !76, line: 671, baseType: !65, size: 32, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !782, file: !76, line: 672, baseType: !749, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !704, file: !76, line: 768, baseType: !65, size: 32, offset: 3072)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !704, file: !76, line: 769, baseType: !798, size: 704, offset: 3136)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !76, line: 703, baseType: !799)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !76, line: 677, size: 704, elements: !800)
!800 = !{!801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !799, file: !76, line: 679, baseType: !75, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !799, file: !76, line: 683, baseType: !95, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !799, file: !76, line: 685, baseType: !210, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !799, file: !76, line: 689, baseType: !68, size: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !799, file: !76, line: 690, baseType: !210, size: 64, offset: 256)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !799, file: !76, line: 691, baseType: !210, size: 64, offset: 320)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !799, file: !76, line: 692, baseType: !75, size: 64, offset: 384)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !799, file: !76, line: 692, baseType: !75, size: 64, offset: 448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !799, file: !76, line: 693, baseType: !65, size: 32, offset: 512)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !799, file: !76, line: 696, baseType: !65, size: 32, offset: 544)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !799, file: !76, line: 697, baseType: !10, size: 64, offset: 576)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !799, file: !76, line: 700, baseType: !7, size: 64, offset: 640)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !704, file: !76, line: 770, baseType: !10, size: 64, offset: 3840)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !704, file: !76, line: 771, baseType: !163, size: 64, offset: 3904)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !704, file: !76, line: 772, baseType: !95, size: 64, offset: 3968)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !704, file: !76, line: 773, baseType: !163, size: 64, offset: 4032)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !704, file: !76, line: 774, baseType: !86, size: 64, offset: 4096)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !704, file: !76, line: 775, baseType: !169, size: 64, offset: 4160)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !704, file: !76, line: 778, baseType: !65, size: 32, offset: 4224)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !704, file: !76, line: 779, baseType: !821, size: 131072, offset: 4256)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 131072, elements: !822)
!822 = !{!823}
!823 = !DISubrange(count: 16384)
!824 = !DILocation(line: 353, column: 12, scope: !685)
!825 = !DILocation(line: 354, column: 18, scope: !685)
!826 = !{!339, !282, i64 536}
!827 = !{!828, !340, i64 40}
!828 = !{!"list", !282, i64 0, !282, i64 8, !282, i64 16, !282, i64 24, !282, i64 32, !340, i64 40}
!829 = !DILocation(line: 354, column: 9, scope: !685)
!830 = !DILocation(line: 356, column: 9, scope: !693)
!831 = !DILocation(line: 356, column: 9, scope: !685)
!832 = !DILocation(line: 357, column: 9, scope: !692)
!833 = !DILocation(line: 357, column: 18, scope: !692)
!834 = !DILocation(line: 360, column: 9, scope: !692)
!835 = !DILocation(line: 361, column: 21, scope: !692)
!836 = !DILocation(line: 358, column: 19, scope: !692)
!837 = !DILocation(line: 361, column: 9, scope: !692)
!838 = !DILocation(line: 362, column: 29, scope: !701)
!839 = !{!840, !282, i64 16}
!840 = !{!"listNode", !282, i64 0, !282, i64 8, !282, i64 16}
!841 = !DILocation(line: 362, column: 21, scope: !701)
!842 = !DILocation(line: 363, column: 25, scope: !701)
!843 = !DILocation(line: 363, column: 22, scope: !701)
!844 = distinct !{!844, !837, !845}
!845 = !DILocation(line: 364, column: 9, scope: !692)
!846 = !DILocation(line: 0, scope: !701)
!847 = !DILocation(line: 365, column: 5, scope: !693)
!848 = !DILocation(line: 365, column: 5, scope: !692)
!849 = !DILocation(line: 366, column: 16, scope: !850)
!850 = distinct !DILexicalBlock(scope: !685, file: !3, line: 366, column: 9)
!851 = !{!339, !283, i64 1880}
!852 = !DILocation(line: 366, column: 26, scope: !850)
!853 = !DILocation(line: 366, column: 9, scope: !685)
!854 = !DILocation(line: 367, column: 37, scope: !855)
!855 = distinct !DILexicalBlock(scope: !850, file: !3, line: 366, column: 38)
!856 = !{!339, !282, i64 1952}
!857 = !DILocalVariable(name: "s", arg: 1, scope: !858, file: !13, line: 180, type: !508)
!858 = distinct !DISubprogram(name: "sdsalloc", scope: !13, file: !13, line: 180, type: !504, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !859)
!859 = !{!857, !860}
!860 = !DILocalVariable(name: "flags", scope: !858, file: !13, line: 181, type: !20)
!861 = !DILocation(line: 180, column: 41, scope: !858, inlinedAt: !862)
!862 = distinct !DILocation(line: 367, column: 21, scope: !855)
!863 = !DILocation(line: 181, column: 27, scope: !858, inlinedAt: !862)
!864 = !DILocation(line: 181, column: 19, scope: !858, inlinedAt: !862)
!865 = !DILocation(line: 182, column: 5, scope: !858, inlinedAt: !862)
!866 = !DILocation(line: 184, column: 20, scope: !867, inlinedAt: !862)
!867 = distinct !DILexicalBlock(scope: !858, file: !13, line: 182, column: 33)
!868 = !DILocation(line: 184, column: 13, scope: !867, inlinedAt: !862)
!869 = !DILocation(line: 186, column: 34, scope: !867, inlinedAt: !862)
!870 = !DILocation(line: 186, column: 20, scope: !867, inlinedAt: !862)
!871 = !DILocation(line: 186, column: 13, scope: !867, inlinedAt: !862)
!872 = !DILocation(line: 188, column: 35, scope: !867, inlinedAt: !862)
!873 = !DILocation(line: 188, column: 20, scope: !867, inlinedAt: !862)
!874 = !DILocation(line: 188, column: 13, scope: !867, inlinedAt: !862)
!875 = !DILocation(line: 190, column: 35, scope: !867, inlinedAt: !862)
!876 = !DILocation(line: 190, column: 20, scope: !867, inlinedAt: !862)
!877 = !DILocation(line: 190, column: 13, scope: !867, inlinedAt: !862)
!878 = !DILocation(line: 192, column: 35, scope: !867, inlinedAt: !862)
!879 = !DILocation(line: 192, column: 13, scope: !867, inlinedAt: !862)
!880 = !DILocation(line: 0, scope: !867, inlinedAt: !862)
!881 = !DILocation(line: 195, column: 1, scope: !858, inlinedAt: !862)
!882 = !DILocation(line: 367, column: 46, scope: !855)
!883 = !DILocation(line: 367, column: 45, scope: !855)
!884 = !DILocation(line: 367, column: 18, scope: !855)
!885 = !DILocation(line: 368, column: 5, scope: !855)
!886 = !DILocation(line: 0, scope: !685)
!887 = !DILocation(line: 369, column: 5, scope: !685)
!888 = distinct !DISubprogram(name: "getMaxmemoryState", scope: !3, file: !3, line: 396, type: !889, isLocal: false, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !893)
!889 = !DISubroutineType(types: !890)
!890 = !{!65, !891, !891, !891, !892}
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!893 = !{!894, !895, !896, !897, !898, !899, !900, !901, !902}
!894 = !DILocalVariable(name: "total", arg: 1, scope: !888, file: !3, line: 396, type: !891)
!895 = !DILocalVariable(name: "logical", arg: 2, scope: !888, file: !3, line: 396, type: !891)
!896 = !DILocalVariable(name: "tofree", arg: 3, scope: !888, file: !3, line: 396, type: !891)
!897 = !DILocalVariable(name: "level", arg: 4, scope: !888, file: !3, line: 396, type: !892)
!898 = !DILocalVariable(name: "mem_reported", scope: !888, file: !3, line: 397, type: !68)
!899 = !DILocalVariable(name: "mem_used", scope: !888, file: !3, line: 397, type: !68)
!900 = !DILocalVariable(name: "mem_tofree", scope: !888, file: !3, line: 397, type: !68)
!901 = !DILocalVariable(name: "return_ok_asap", scope: !888, file: !3, line: 405, type: !65)
!902 = !DILocalVariable(name: "overhead", scope: !888, file: !3, line: 411, type: !68)
!903 = !DILocation(line: 396, column: 31, scope: !888)
!904 = !DILocation(line: 396, column: 46, scope: !888)
!905 = !DILocation(line: 396, column: 63, scope: !888)
!906 = !DILocation(line: 396, column: 78, scope: !888)
!907 = !DILocation(line: 401, column: 20, scope: !888)
!908 = !DILocation(line: 397, column: 12, scope: !888)
!909 = !DILocation(line: 402, column: 9, scope: !910)
!910 = distinct !DILexicalBlock(scope: !888, file: !3, line: 402, column: 9)
!911 = !DILocation(line: 402, column: 9, scope: !888)
!912 = !DILocation(line: 402, column: 23, scope: !910)
!913 = !DILocation(line: 402, column: 16, scope: !910)
!914 = !DILocation(line: 405, column: 34, scope: !888)
!915 = !{!339, !279, i64 2704}
!916 = !DILocation(line: 405, column: 27, scope: !888)
!917 = !DILocation(line: 405, column: 60, scope: !888)
!918 = !DILocation(line: 405, column: 44, scope: !888)
!919 = !DILocation(line: 406, column: 9, scope: !920)
!920 = distinct !DILexicalBlock(scope: !888, file: !3, line: 406, column: 9)
!921 = !DILocation(line: 406, column: 28, scope: !920)
!922 = !DILocation(line: 406, column: 24, scope: !920)
!923 = !DILocation(line: 397, column: 26, scope: !888)
!924 = !DILocation(line: 411, column: 23, scope: !888)
!925 = !DILocation(line: 411, column: 12, scope: !888)
!926 = !DILocation(line: 412, column: 16, scope: !888)
!927 = !DILocation(line: 415, column: 9, scope: !888)
!928 = !DILocation(line: 416, column: 21, scope: !929)
!929 = distinct !DILexicalBlock(scope: !930, file: !3, line: 416, column: 13)
!930 = distinct !DILexicalBlock(scope: !931, file: !3, line: 415, column: 16)
!931 = distinct !DILexicalBlock(scope: !888, file: !3, line: 415, column: 9)
!932 = !DILocation(line: 416, column: 14, scope: !929)
!933 = !DILocation(line: 416, column: 13, scope: !930)
!934 = !DILocation(line: 419, column: 22, scope: !935)
!935 = distinct !DILexicalBlock(scope: !929, file: !3, line: 418, column: 16)
!936 = !DILocation(line: 419, column: 40, scope: !935)
!937 = !DILocation(line: 419, column: 38, scope: !935)
!938 = !DILocation(line: 0, scope: !935)
!939 = !{!940, !940, i64 0}
!940 = !{!"float", !280, i64 0}
!941 = !DILocation(line: 423, column: 9, scope: !888)
!942 = !DILocation(line: 426, column: 28, scope: !943)
!943 = distinct !DILexicalBlock(scope: !888, file: !3, line: 426, column: 9)
!944 = !DILocation(line: 426, column: 18, scope: !943)
!945 = !DILocation(line: 426, column: 9, scope: !888)
!946 = !DILocation(line: 429, column: 27, scope: !888)
!947 = !DILocation(line: 397, column: 36, scope: !888)
!948 = !DILocation(line: 431, column: 9, scope: !949)
!949 = distinct !DILexicalBlock(scope: !888, file: !3, line: 431, column: 9)
!950 = !DILocation(line: 431, column: 9, scope: !888)
!951 = !DILocation(line: 431, column: 27, scope: !949)
!952 = !DILocation(line: 431, column: 18, scope: !949)
!953 = !DILocation(line: 432, column: 9, scope: !954)
!954 = distinct !DILexicalBlock(scope: !888, file: !3, line: 432, column: 9)
!955 = !DILocation(line: 432, column: 9, scope: !888)
!956 = !DILocation(line: 432, column: 25, scope: !954)
!957 = !DILocation(line: 432, column: 17, scope: !954)
!958 = !DILocation(line: 0, scope: !920)
!959 = !DILocation(line: 435, column: 1, scope: !888)
!960 = !DILocation(line: 449, column: 16, scope: !961)
!961 = distinct !DILexicalBlock(scope: !62, file: !3, line: 449, column: 9)
!962 = !{!339, !282, i64 2464}
!963 = !DILocation(line: 449, column: 9, scope: !961)
!964 = !DILocation(line: 449, column: 37, scope: !961)
!965 = !DILocation(line: 449, column: 30, scope: !961)
!966 = !DILocation(line: 449, column: 27, scope: !961)
!967 = !DILocation(line: 454, column: 18, scope: !62)
!968 = !DILocation(line: 454, column: 9, scope: !62)
!969 = !DILocation(line: 459, column: 9, scope: !970)
!970 = distinct !DILexicalBlock(scope: !62, file: !3, line: 459, column: 9)
!971 = !DILocation(line: 459, column: 9, scope: !62)
!972 = !DILocation(line: 396, column: 46, scope: !888, inlinedAt: !973)
!973 = distinct !DILocation(line: 460, column: 9, scope: !974)
!974 = distinct !DILexicalBlock(scope: !62, file: !3, line: 460, column: 9)
!975 = !DILocation(line: 396, column: 78, scope: !888, inlinedAt: !973)
!976 = !DILocation(line: 401, column: 20, scope: !888, inlinedAt: !973)
!977 = !DILocation(line: 397, column: 12, scope: !888, inlinedAt: !973)
!978 = !DILocation(line: 405, column: 34, scope: !888, inlinedAt: !973)
!979 = !DILocation(line: 405, column: 27, scope: !888, inlinedAt: !973)
!980 = !DILocation(line: 405, column: 60, scope: !888, inlinedAt: !973)
!981 = !DILocation(line: 406, column: 9, scope: !920, inlinedAt: !973)
!982 = !DILocation(line: 406, column: 24, scope: !920, inlinedAt: !973)
!983 = !DILocation(line: 397, column: 26, scope: !888, inlinedAt: !973)
!984 = !DILocation(line: 411, column: 23, scope: !888, inlinedAt: !973)
!985 = !DILocation(line: 411, column: 12, scope: !888, inlinedAt: !973)
!986 = !DILocation(line: 412, column: 16, scope: !888, inlinedAt: !973)
!987 = !DILocation(line: 426, column: 28, scope: !943, inlinedAt: !973)
!988 = !DILocation(line: 426, column: 18, scope: !943, inlinedAt: !973)
!989 = !DILocation(line: 426, column: 9, scope: !888, inlinedAt: !973)
!990 = !DILocation(line: 435, column: 1, scope: !888, inlinedAt: !973)
!991 = !DILocation(line: 460, column: 9, scope: !62)
!992 = !DILocation(line: 429, column: 27, scope: !888, inlinedAt: !973)
!993 = !DILocation(line: 397, column: 36, scope: !888, inlinedAt: !973)
!994 = !DILocation(line: 451, column: 38, scope: !62)
!995 = !DILocation(line: 465, column: 16, scope: !996)
!996 = distinct !DILexicalBlock(scope: !62, file: !3, line: 465, column: 9)
!997 = !DILocation(line: 465, column: 33, scope: !996)
!998 = !DILocation(line: 465, column: 9, scope: !62)
!999 = !DILocation(line: 468, column: 5, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !62, file: !3, line: 468, column: 5)
!1001 = !{!339, !279, i64 3096}
!1002 = !DILocation(line: 468, column: 5, scope: !62)
!1003 = !DILocation(line: 468, column: 5, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 468, column: 5)
!1005 = !DILocation(line: 452, column: 14, scope: !62)
!1006 = !DILocation(line: 473, column: 13, scope: !81)
!1007 = !DILocation(line: 451, column: 26, scope: !62)
!1008 = !DILocation(line: 469, column: 22, scope: !62)
!1009 = !DILocation(line: 469, column: 5, scope: !62)
!1010 = !DILocation(line: 470, column: 22, scope: !81)
!1011 = !DILocation(line: 472, column: 13, scope: !81)
!1012 = !DILocation(line: 478, column: 20, scope: !195)
!1013 = !DILocation(line: 478, column: 37, scope: !195)
!1014 = !DILocation(line: 479, column: 37, scope: !195)
!1015 = !DILocation(line: 478, column: 79, scope: !195)
!1016 = !DILocation(line: 481, column: 46, scope: !194)
!1017 = !DILocation(line: 481, column: 39, scope: !194)
!1018 = !DILocation(line: 483, column: 13, scope: !194)
!1019 = !DILocation(line: 484, column: 31, scope: !205)
!1020 = !DILocation(line: 470, column: 19, scope: !81)
!1021 = !DILocation(line: 489, column: 40, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 489, column: 17)
!1023 = distinct !DILexicalBlock(scope: !205, file: !3, line: 489, column: 17)
!1024 = !{!339, !283, i64 1792}
!1025 = !DILocation(line: 489, column: 31, scope: !1022)
!1026 = !DILocation(line: 489, column: 17, scope: !1023)
!1027 = !DILocation(line: 490, column: 33, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 489, column: 52)
!1029 = !{!339, !282, i64 48}
!1030 = !DILocation(line: 491, column: 36, scope: !1028)
!1031 = !DILocation(line: 491, column: 53, scope: !1028)
!1032 = !DILocation(line: 492, column: 33, scope: !1028)
!1033 = !DILocation(line: 492, column: 44, scope: !1028)
!1034 = !DILocation(line: 491, column: 28, scope: !1028)
!1035 = !DILocation(line: 475, column: 15, scope: !81)
!1036 = !DILocation(line: 493, column: 33, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 493, column: 25)
!1038 = !{!1039, !340, i64 24}
!1039 = !{!"dictht", !282, i64 0, !340, i64 8, !340, i64 16, !340, i64 24}
!1040 = !DILocation(line: 484, column: 47, scope: !205)
!1041 = !DILocation(line: 493, column: 49, scope: !1037)
!1042 = !DILocation(line: 493, column: 25, scope: !1028)
!1043 = !DILocation(line: 494, column: 59, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 493, column: 55)
!1045 = !{!1046, !282, i64 0}
!1046 = !{!"redisDb", !282, i64 0, !282, i64 8, !282, i64 16, !282, i64 24, !282, i64 32, !283, i64 40, !279, i64 48, !282, i64 56}
!1047 = !DILocation(line: 494, column: 25, scope: !1044)
!1048 = !DILocation(line: 495, column: 36, scope: !1044)
!1049 = !DILocation(line: 496, column: 21, scope: !1044)
!1050 = !DILocation(line: 0, scope: !205)
!1051 = !DILocation(line: 489, column: 48, scope: !1022)
!1052 = distinct !{!1052, !1026, !1053}
!1053 = !DILocation(line: 497, column: 17, scope: !1023)
!1054 = !DILocation(line: 498, column: 22, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !205, file: !3, line: 498, column: 21)
!1056 = !DILocation(line: 498, column: 21, scope: !205)
!1057 = !DILocation(line: 470, column: 16, scope: !81)
!1058 = !DILocation(line: 502, column: 33, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 502, column: 25)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 501, column: 54)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 501, column: 17)
!1062 = distinct !DILexicalBlock(scope: !205, file: !3, line: 501, column: 17)
!1063 = !DILocation(line: 502, column: 37, scope: !1059)
!1064 = !DILocation(line: 502, column: 25, scope: !1060)
!1065 = !DILocation(line: 503, column: 40, scope: !1060)
!1066 = !DILocation(line: 505, column: 32, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 505, column: 25)
!1068 = !DILocation(line: 505, column: 49, scope: !1067)
!1069 = !DILocation(line: 0, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 508, column: 28)
!1071 = !DILocation(line: 509, column: 63, scope: !1070)
!1072 = !DILocation(line: 476, column: 20, scope: !81)
!1073 = !DILocation(line: 506, column: 63, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 505, column: 75)
!1075 = !DILocation(line: 505, column: 25, scope: !1060)
!1076 = !DILocation(line: 0, scope: !1074)
!1077 = !DILocation(line: 514, column: 33, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 514, column: 25)
!1079 = !DILocation(line: 514, column: 48, scope: !1078)
!1080 = !DILocation(line: 514, column: 37, scope: !1078)
!1081 = !DILocation(line: 514, column: 25, scope: !1060)
!1082 = !DILocation(line: 515, column: 25, scope: !1078)
!1083 = !DILocation(line: 516, column: 33, scope: !1060)
!1084 = !DILocation(line: 517, column: 29, scope: !1060)
!1085 = !DILocation(line: 517, column: 34, scope: !1060)
!1086 = !DILocation(line: 521, column: 25, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 521, column: 25)
!1088 = !DILocation(line: 521, column: 25, scope: !1060)
!1089 = !DILocation(line: 522, column: 35, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 521, column: 29)
!1091 = !DILocation(line: 523, column: 25, scope: !1090)
!1092 = !DILocation(line: 501, column: 50, scope: !1061)
!1093 = !DILocation(line: 501, column: 43, scope: !1061)
!1094 = !DILocation(line: 501, column: 17, scope: !1062)
!1095 = distinct !{!1095, !1094, !1096}
!1096 = !DILocation(line: 527, column: 17, scope: !1062)
!1097 = !DILocation(line: 0, scope: !81)
!1098 = !DILocation(line: 483, column: 27, scope: !194)
!1099 = distinct !{!1099, !1018, !1100}
!1100 = !DILocation(line: 528, column: 13, scope: !194)
!1101 = !DILocation(line: 532, column: 70, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !195, file: !3, line: 532, column: 18)
!1103 = !DILocation(line: 538, column: 36, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 538, column: 13)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 538, column: 13)
!1106 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 534, column: 9)
!1107 = !DILocation(line: 538, column: 27, scope: !1104)
!1108 = !DILocation(line: 538, column: 13, scope: !1105)
!1109 = !DILocation(line: 539, column: 22, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 538, column: 48)
!1111 = distinct !{!1111, !1108, !1112}
!1112 = !DILocation(line: 549, column: 13, scope: !1105)
!1113 = !DILocation(line: 539, column: 33, scope: !1110)
!1114 = !DILocation(line: 470, column: 13, scope: !81)
!1115 = !DILocation(line: 540, column: 31, scope: !1110)
!1116 = !DILocation(line: 542, column: 29, scope: !1110)
!1117 = !DILocation(line: 542, column: 40, scope: !1110)
!1118 = !DILocation(line: 541, column: 24, scope: !1110)
!1119 = !DILocation(line: 543, column: 21, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 543, column: 21)
!1121 = !DILocation(line: 543, column: 36, scope: !1120)
!1122 = !DILocation(line: 538, column: 44, scope: !1104)
!1123 = !DILocation(line: 543, column: 21, scope: !1110)
!1124 = !DILocation(line: 544, column: 26, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 543, column: 42)
!1126 = !DILocation(line: 545, column: 31, scope: !1125)
!1127 = !DILocation(line: 553, column: 13, scope: !209)
!1128 = !DILocation(line: 553, column: 13, scope: !81)
!1129 = !DILocation(line: 554, column: 25, scope: !208)
!1130 = !DILocation(line: 554, column: 27, scope: !208)
!1131 = !DILocation(line: 474, column: 18, scope: !81)
!1132 = !DILocation(line: 87, column: 39, scope: !503, inlinedAt: !1133)
!1133 = distinct !DILocation(line: 555, column: 55, scope: !208)
!1134 = !DILocation(line: 88, column: 27, scope: !503, inlinedAt: !1133)
!1135 = !DILocation(line: 88, column: 19, scope: !503, inlinedAt: !1133)
!1136 = !DILocation(line: 89, column: 5, scope: !503, inlinedAt: !1133)
!1137 = !DILocation(line: 91, column: 20, scope: !520, inlinedAt: !1133)
!1138 = !DILocation(line: 91, column: 13, scope: !520, inlinedAt: !1133)
!1139 = !DILocation(line: 93, column: 20, scope: !520, inlinedAt: !1133)
!1140 = !DILocation(line: 93, column: 34, scope: !520, inlinedAt: !1133)
!1141 = !DILocation(line: 93, column: 13, scope: !520, inlinedAt: !1133)
!1142 = !DILocation(line: 95, column: 20, scope: !520, inlinedAt: !1133)
!1143 = !DILocation(line: 95, column: 35, scope: !520, inlinedAt: !1133)
!1144 = !DILocation(line: 95, column: 13, scope: !520, inlinedAt: !1133)
!1145 = !DILocation(line: 97, column: 20, scope: !520, inlinedAt: !1133)
!1146 = !DILocation(line: 97, column: 35, scope: !520, inlinedAt: !1133)
!1147 = !DILocation(line: 97, column: 13, scope: !520, inlinedAt: !1133)
!1148 = !DILocation(line: 99, column: 20, scope: !520, inlinedAt: !1133)
!1149 = !DILocation(line: 99, column: 35, scope: !520, inlinedAt: !1133)
!1150 = !DILocation(line: 99, column: 13, scope: !520, inlinedAt: !1133)
!1151 = !DILocation(line: 0, scope: !520, inlinedAt: !1133)
!1152 = !DILocation(line: 102, column: 1, scope: !503, inlinedAt: !1133)
!1153 = !DILocation(line: 555, column: 28, scope: !208)
!1154 = !DILocation(line: 555, column: 19, scope: !208)
!1155 = !DILocation(line: 556, column: 46, scope: !208)
!1156 = !{!339, !283, i64 3080}
!1157 = !DILocation(line: 556, column: 13, scope: !208)
!1158 = !DILocation(line: 565, column: 33, scope: !208)
!1159 = !DILocation(line: 453, column: 15, scope: !62)
!1160 = !DILocation(line: 566, column: 13, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !208, file: !3, line: 566, column: 13)
!1162 = !DILocation(line: 566, column: 13, scope: !208)
!1163 = !DILocation(line: 566, column: 13, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 566, column: 13)
!1165 = !DILocation(line: 452, column: 23, scope: !62)
!1166 = !DILocation(line: 567, column: 24, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !208, file: !3, line: 567, column: 17)
!1168 = !DILocation(line: 567, column: 17, scope: !1167)
!1169 = !DILocation(line: 567, column: 17, scope: !208)
!1170 = !DILocation(line: 568, column: 17, scope: !1167)
!1171 = !DILocation(line: 570, column: 17, scope: !1167)
!1172 = !DILocation(line: 571, column: 13, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !208, file: !3, line: 571, column: 13)
!1174 = !DILocation(line: 571, column: 13, scope: !208)
!1175 = !DILocation(line: 571, column: 13, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 571, column: 13)
!1177 = !DILocation(line: 572, column: 13, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !208, file: !3, line: 572, column: 13)
!1179 = !DILocation(line: 573, column: 13, scope: !208)
!1180 = !DILocation(line: 574, column: 34, scope: !208)
!1181 = !DILocation(line: 574, column: 19, scope: !208)
!1182 = !DILocation(line: 575, column: 23, scope: !208)
!1183 = !DILocation(line: 576, column: 36, scope: !208)
!1184 = !{!339, !279, i64 1048}
!1185 = !DILocation(line: 578, column: 29, scope: !208)
!1186 = !{!1046, !283, i64 40}
!1187 = !DILocation(line: 577, column: 13, scope: !208)
!1188 = !DILocation(line: 579, column: 13, scope: !208)
!1189 = !DILocation(line: 586, column: 17, scope: !208)
!1190 = !DILocation(line: 586, column: 25, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !208, file: !3, line: 586, column: 17)
!1192 = !DILocation(line: 604, column: 13, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 604, column: 13)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 603, column: 26)
!1195 = distinct !DILexicalBlock(scope: !81, file: !3, line: 603, column: 13)
!1196 = !DILocation(line: 604, column: 13, scope: !1194)
!1197 = !DILocation(line: 604, column: 13, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 604, column: 13)
!1199 = !DILocation(line: 605, column: 13, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 605, column: 13)
!1201 = !DILocation(line: 0, scope: !208)
!1202 = !DILocation(line: 609, column: 5, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !62, file: !3, line: 609, column: 5)
!1204 = !DILocation(line: 609, column: 5, scope: !62)
!1205 = !DILocation(line: 609, column: 5, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 609, column: 5)
!1207 = !DILocation(line: 610, column: 5, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !62, file: !3, line: 610, column: 5)
!1209 = !DILocation(line: 617, column: 11, scope: !62)
!1210 = !DILocation(line: 617, column: 5, scope: !62)
!1211 = !DILocation(line: 451, column: 12, scope: !62)
!1212 = !DILocation(line: 618, column: 30, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 618, column: 13)
!1214 = distinct !DILexicalBlock(scope: !62, file: !3, line: 617, column: 48)
!1215 = !DILocation(line: 618, column: 53, scope: !1213)
!1216 = !DILocation(line: 618, column: 66, scope: !1213)
!1217 = !DILocation(line: 618, column: 13, scope: !1214)
!1218 = !DILocation(line: 620, column: 9, scope: !1214)
!1219 = distinct !{!1219, !1210, !1220}
!1220 = !DILocation(line: 621, column: 5, scope: !62)
!1221 = !DILocation(line: 0, scope: !970)
!1222 = !DILocation(line: 623, column: 1, scope: !62)
!1223 = distinct !DISubprogram(name: "freeMemoryIfNeededAndSafe", scope: !3, file: !3, line: 632, type: !63, isLocal: false, isDefinition: true, scopeLine: 632, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!1224 = !DILocation(line: 633, column: 16, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 633, column: 9)
!1226 = !{!339, !283, i64 3068}
!1227 = !DILocation(line: 633, column: 39, scope: !1225)
!1228 = !DILocation(line: 633, column: 29, scope: !1225)
!1229 = !DILocation(line: 634, column: 12, scope: !1223)
!1230 = !DILocation(line: 634, column: 5, scope: !1223)
!1231 = !DILocation(line: 0, scope: !1223)
!1232 = !DILocation(line: 635, column: 1, scope: !1223)
