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

; Function Attrs: noredzone nounwind
define dso_local i32 @getLRUClock() local_unnamed_addr #0 !dbg !223 {
  %1 = tail call i64 @mstime() #7, !dbg !226
  %2 = sdiv i64 %1, 1000, !dbg !227
  %3 = trunc i64 %2 to i32, !dbg !228
  %4 = and i32 %3, 16777215, !dbg !228
  ret i32 %4, !dbg !229
}

; Function Attrs: noredzone
declare dso_local i64 @mstime() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @LRU_CLOCK() local_unnamed_addr #0 !dbg !230 {
  %1 = load atomic i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 11) monotonic, align 8, !dbg !233
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
  %3 = zext i32 %2 to i64, !dbg !249
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !251
  %5 = load i32, i32* %4, align 8, !dbg !251
  %6 = lshr i32 %5, 8, !dbg !251
  %7 = icmp ult i32 %2, %6, !dbg !253
  %8 = zext i32 %6 to i64, !dbg !254
  %9 = xor i32 %6, 16777215, !dbg !255
  %10 = zext i32 %9 to i64, !dbg !257
  %11 = sub nsw i64 0, %8, !dbg !258
  %12 = select i1 %7, i64 %10, i64 %11, !dbg !258
  %13 = add nsw i64 %12, %3, !dbg !258
  %14 = mul nsw i64 %13, 1000, !dbg !259
  ret i64 %14, !dbg !260
}

; Function Attrs: noredzone nounwind
define dso_local void @evictionPoolAlloc() local_unnamed_addr #0 !dbg !261 {
  %1 = tail call i8* @zmalloc(i64 512) #7, !dbg !267
  %2 = bitcast i8* %1 to %struct.evictionPoolEntry*, !dbg !267
  br label %3, !dbg !270

; <label>:3:                                      ; preds = %3, %0
  %4 = phi i64 [ 0, %0 ], [ %10, %3 ]
  %5 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %2, i64 %4, i32 0, !dbg !272
  store i64 0, i64* %5, align 8, !dbg !275, !tbaa !276
  %6 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %2, i64 %4, i32 1, !dbg !283
  store i8* null, i8** %6, align 8, !dbg !284, !tbaa !285
  %7 = tail call i8* @sdsnewlen(i8* null, i64 255) #7, !dbg !286
  %8 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %2, i64 %4, i32 2, !dbg !287
  store i8* %7, i8** %8, align 8, !dbg !288, !tbaa !289
  %9 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %2, i64 %4, i32 3, !dbg !290
  store i32 0, i32* %9, align 8, !dbg !291, !tbaa !292
  %10 = add nuw nsw i64 %4, 1, !dbg !293
  %11 = icmp eq i64 %10, 16, !dbg !294
  br i1 %11, label %12, label %3, !dbg !270, !llvm.loop !295

; <label>:12:                                     ; preds = %3
  store i8* %1, i8** bitcast (%struct.evictionPoolEntry** @EvictionPoolLRU to i8**), align 8, !dbg !297, !tbaa !298
  ret void, !dbg !299
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @evictionPoolPopulate(i32, %struct.dict*, %struct.dict*, %struct.evictionPoolEntry*) local_unnamed_addr #0 !dbg !300 {
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 229), align 4, !dbg !336, !tbaa !337
  %6 = zext i32 %5 to i64, !dbg !344
  %7 = alloca %struct.dictEntry*, i64 %6, align 16, !dbg !344
  %8 = call i32 @dictGetSomeKeys(%struct.dict* %1, %struct.dictEntry** nonnull %7, i32 %5) #7, !dbg !347
  %9 = icmp sgt i32 %8, 0, !dbg !351
  br i1 %9, label %10, label %246, !dbg !352

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
  %20 = sext i32 %8 to i64, !dbg !352
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
  br label %51, !dbg !352

; <label>:51:                                     ; preds = %10, %243
  %52 = phi i64 [ 0, %10 ], [ %244, %243 ]
  %53 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %7, i64 %52, !dbg !353
  %54 = load %struct.dictEntry*, %struct.dictEntry** %53, align 8, !dbg !353, !tbaa !298
  %55 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %54, i64 0, i32 0, !dbg !355
  %56 = load i8*, i8** %55, align 8, !dbg !355, !tbaa !356
  %57 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !359, !tbaa !361
  %58 = icmp eq i32 %57, 512, !dbg !362
  br i1 %58, label %59, label %61, !dbg !363

; <label>:59:                                     ; preds = %51
  %60 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %54, i64 0, i32 1, i32 0, !dbg !364
  br label %120, !dbg !363

; <label>:61:                                     ; preds = %51
  br i1 %11, label %65, label %62, !dbg !369

; <label>:62:                                     ; preds = %61
  %63 = call %struct.dictEntry* @dictFind(%struct.dict* %2, i8* %56) #7, !dbg !371
  %64 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !373, !tbaa !361
  br label %65, !dbg !374

; <label>:65:                                     ; preds = %62, %61
  %66 = phi i32 [ %64, %62 ], [ %57, %61 ], !dbg !373
  %67 = phi %struct.dictEntry* [ %63, %62 ], [ %54, %61 ], !dbg !375
  %68 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %67, i64 0, i32 1, i32 0, !dbg !376
  %69 = bitcast i8** %68 to %struct.redisObject**, !dbg !376
  %70 = load %struct.redisObject*, %struct.redisObject** %69, align 8, !dbg !376, !tbaa !377
  %71 = and i32 %66, 1, !dbg !378
  %72 = icmp eq i32 %71, 0, !dbg !378
  br i1 %72, label %87, label %73, !dbg !379

; <label>:73:                                     ; preds = %65
  %74 = load atomic i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 11) monotonic, align 8, !dbg !383
  %75 = zext i32 %74 to i64, !dbg !386
  %76 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %70, i64 0, i32 0, !dbg !388
  %77 = load i32, i32* %76, align 8, !dbg !388
  %78 = lshr i32 %77, 8, !dbg !388
  %79 = icmp ult i32 %74, %78, !dbg !389
  %80 = zext i32 %78 to i64, !dbg !390
  %81 = xor i32 %78, 16777215, !dbg !391
  %82 = zext i32 %81 to i64, !dbg !392
  %83 = sub nsw i64 0, %80, !dbg !393
  %84 = select i1 %79, i64 %82, i64 %83, !dbg !393
  %85 = add nsw i64 %84, %75, !dbg !393
  %86 = mul nsw i64 %85, 1000, !dbg !394
  br label %126, !dbg !396

; <label>:87:                                     ; preds = %65
  %88 = and i32 %66, 2, !dbg !397
  %89 = icmp eq i32 %88, 0, !dbg !397
  br i1 %89, label %118, label %90, !dbg !398

; <label>:90:                                     ; preds = %87
  %91 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %70, i64 0, i32 0, !dbg !410
  %92 = load i32, i32* %91, align 8, !dbg !410
  %93 = lshr i32 %92, 8, !dbg !410
  %94 = and i32 %93, 255, !dbg !411
  %95 = zext i32 %94 to i64, !dbg !412
  %96 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 231), align 4, !dbg !414, !tbaa !415
  %97 = icmp eq i32 %96, 0, !dbg !416
  br i1 %97, label %115, label %98, !dbg !416

; <label>:98:                                     ; preds = %90
  %99 = lshr i32 %92, 16, !dbg !417
  %100 = zext i32 %99 to i64, !dbg !418
  %101 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !428, !tbaa !433
  %102 = sdiv i64 %101, 60, !dbg !434
  %103 = and i64 %102, 65535, !dbg !435
  %104 = icmp ult i64 %103, %100, !dbg !437
  %105 = select i1 %104, i64 65535, i64 0, !dbg !439
  %106 = sub nsw i64 %103, %100, !dbg !439
  %107 = add nsw i64 %105, %106, !dbg !439
  %108 = sext i32 %96 to i64, !dbg !440
  %109 = udiv i64 %107, %108, !dbg !441
  %110 = icmp ult i64 %107, %108, !dbg !443
  br i1 %110, label %115, label %111, !dbg !445

; <label>:111:                                    ; preds = %98
  %112 = icmp ugt i64 %109, %95, !dbg !446
  %113 = select i1 %112, i64 %109, i64 %95, !dbg !446
  %114 = sub i64 %113, %109, !dbg !446
  br label %115, !dbg !447

; <label>:115:                                    ; preds = %90, %98, %111
  %116 = phi i64 [ %114, %111 ], [ %95, %98 ], [ %95, %90 ], !dbg !448
  %117 = sub i64 255, %116, !dbg !449
  br label %126, !dbg !450

; <label>:118:                                    ; preds = %87
  %119 = icmp eq i32 %66, 512, !dbg !451
  br i1 %119, label %120, label %125, !dbg !452

; <label>:120:                                    ; preds = %59, %118
  %121 = phi i8** [ %60, %59 ], [ %68, %118 ], !dbg !364
  %122 = bitcast i8** %121 to i64*, !dbg !364
  %123 = load i64, i64* %122, align 8, !dbg !364, !tbaa !377
  %124 = xor i64 %123, -1, !dbg !453
  br label %126

; <label>:125:                                    ; preds = %118
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 202, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !454
  call void @_exit(i32 1) #8, !dbg !454
  unreachable, !dbg !454

; <label>:126:                                    ; preds = %115, %120, %73
  %127 = phi i64 [ %86, %73 ], [ %117, %115 ], [ %124, %120 ], !dbg !456
  %128 = load i8*, i8** %16, align 8, !dbg !458, !tbaa !285
  %129 = icmp eq i8* %128, null, !dbg !459
  br i1 %129, label %136, label %130, !dbg !460

; <label>:130:                                    ; preds = %126
  %131 = load i64, i64* %21, align 8, !dbg !461, !tbaa !276
  %132 = icmp ult i64 %131, %127, !dbg !462
  br i1 %132, label %133, label %136, !dbg !463

; <label>:133:                                    ; preds = %130
  %134 = load i8*, i8** %22, align 8, !dbg !458, !tbaa !285
  %135 = icmp eq i8* %134, null, !dbg !459
  br i1 %135, label %169, label %247, !dbg !460

; <label>:136:                                    ; preds = %130, %126
  %137 = load i8*, i8** %12, align 8, !dbg !464, !tbaa !285
  %138 = icmp eq i8* %137, null, !dbg !465
  br i1 %138, label %139, label %243, !dbg !466

; <label>:139:                                    ; preds = %136
  %140 = icmp eq i8* %128, null, !dbg !467
  br i1 %140, label %169, label %141, !dbg !468

; <label>:141:                                    ; preds = %247, %253, %259, %265, %271, %277, %283, %289, %295, %301, %307, %313, %319, %325, %331, %139
  %142 = phi i32 [ 0, %139 ], [ 1, %247 ], [ 2, %253 ], [ 3, %259 ], [ 4, %265 ], [ 5, %271 ], [ 6, %277 ], [ 7, %283 ], [ 8, %289 ], [ 9, %295 ], [ 10, %301 ], [ 11, %307 ], [ 12, %313 ], [ 13, %319 ], [ 14, %325 ], [ 15, %331 ]
  %143 = load i8*, i8** %12, align 8, !dbg !469, !tbaa !285
  %144 = icmp eq i8* %143, null, !dbg !470
  br i1 %144, label %145, label %158, !dbg !471

; <label>:145:                                    ; preds = %141
  %146 = load i64, i64* %14, align 8, !dbg !472, !tbaa !289
  %147 = zext i32 %142 to i64, !dbg !474
  %148 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %147, !dbg !474
  %149 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %148, i64 1, !dbg !475
  %150 = bitcast %struct.evictionPoolEntry* %149 to i8*, !dbg !476
  %151 = bitcast %struct.evictionPoolEntry* %148 to i8*, !dbg !477
  %152 = shl nuw nsw i32 %142, 5, !dbg !478
  %153 = xor i32 %152, 480, !dbg !478
  %154 = zext i32 %153 to i64, !dbg !478
  %155 = call i8* @memmove(i8* nonnull %150, i8* %151, i64 %154) #7, !dbg !479
  %156 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %147, i32 2, !dbg !480
  %157 = bitcast i8** %156 to i64*, !dbg !481
  store i64 %146, i64* %157, align 8, !dbg !481, !tbaa !289
  br label %169, !dbg !482

; <label>:158:                                    ; preds = %331, %141
  %159 = phi i32 [ %142, %141 ], [ 16, %331 ]
  %160 = add nsw i32 %159, -1, !dbg !483
  %161 = load i8*, i8** %15, align 8, !dbg !484, !tbaa !289
  %162 = icmp eq i8* %128, %161, !dbg !486
  br i1 %162, label %164, label %163, !dbg !488

; <label>:163:                                    ; preds = %158
  call void @sdsfree(i8* nonnull %128) #7, !dbg !489
  br label %164, !dbg !489

; <label>:164:                                    ; preds = %158, %163
  %165 = sext i32 %160 to i64, !dbg !490
  %166 = shl nsw i64 %165, 5, !dbg !491
  %167 = call i8* @memmove(i8* nonnull %17, i8* nonnull %19, i64 %166) #7, !dbg !492
  %168 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %165, i32 2, !dbg !493
  store i8* %161, i8** %168, align 8, !dbg !494, !tbaa !289
  br label %169

; <label>:169:                                    ; preds = %133, %250, %256, %262, %268, %274, %280, %286, %292, %298, %304, %310, %316, %322, %328, %139, %164, %145
  %170 = phi i32 [ 0, %139 ], [ %142, %145 ], [ %160, %164 ], [ 1, %133 ], [ 2, %250 ], [ 3, %256 ], [ 4, %262 ], [ 5, %268 ], [ 6, %274 ], [ 7, %280 ], [ 8, %286 ], [ 9, %292 ], [ 10, %298 ], [ 11, %304 ], [ 12, %310 ], [ 13, %316 ], [ 14, %322 ], [ 15, %328 ], !dbg !495
  %171 = getelementptr inbounds i8, i8* %56, i64 -1, !dbg !507
  %172 = load i8, i8* %171, align 1, !dbg !507, !tbaa !377
  %173 = trunc i8 %172 to i3, !dbg !509
  switch i3 %173, label %203 [
    i3 0, label %174
    i3 1, label %177
    i3 2, label %181
    i3 3, label %186
    i3 -4, label %191
  ], !dbg !509

; <label>:174:                                    ; preds = %169
  %175 = lshr i8 %172, 3, !dbg !510
  %176 = zext i8 %175 to i64, !dbg !510
  br label %195, !dbg !512

; <label>:177:                                    ; preds = %169
  %178 = getelementptr inbounds i8, i8* %56, i64 -3, !dbg !513
  %179 = load i8, i8* %178, align 1, !dbg !514, !tbaa !377
  %180 = zext i8 %179 to i64, !dbg !513
  br label %195, !dbg !515

; <label>:181:                                    ; preds = %169
  %182 = getelementptr inbounds i8, i8* %56, i64 -5, !dbg !516
  %183 = bitcast i8* %182 to i16*, !dbg !517
  %184 = load i16, i16* %183, align 1, !dbg !517, !tbaa !518
  %185 = zext i16 %184 to i64, !dbg !516
  br label %195, !dbg !520

; <label>:186:                                    ; preds = %169
  %187 = getelementptr inbounds i8, i8* %56, i64 -9, !dbg !521
  %188 = bitcast i8* %187 to i32*, !dbg !522
  %189 = load i32, i32* %188, align 1, !dbg !522, !tbaa !523
  %190 = zext i32 %189 to i64, !dbg !521
  br label %195, !dbg !524

; <label>:191:                                    ; preds = %169
  %192 = getelementptr inbounds i8, i8* %56, i64 -17, !dbg !525
  %193 = bitcast i8* %192 to i64*, !dbg !526
  %194 = load i64, i64* %193, align 1, !dbg !526, !tbaa !527
  br label %195, !dbg !528

; <label>:195:                                    ; preds = %174, %177, %181, %186, %191
  %196 = phi i64 [ %194, %191 ], [ %190, %186 ], [ %185, %181 ], [ %180, %177 ], [ %176, %174 ], !dbg !529
  %197 = trunc i64 %196 to i32, !dbg !530
  %198 = icmp sgt i32 %197, 255, !dbg !532
  br i1 %198, label %199, label %203, !dbg !534

; <label>:199:                                    ; preds = %195
  %200 = call i8* @sdsdup(i8* nonnull %56) #7, !dbg !535
  %201 = sext i32 %170 to i64, !dbg !537
  %202 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %201, i32 1, !dbg !538
  store i8* %200, i8** %202, align 8, !dbg !539, !tbaa !285
  br label %239, !dbg !540

; <label>:203:                                    ; preds = %169, %195
  %204 = phi i64 [ %196, %195 ], [ 0, %169 ]
  %205 = sext i32 %170 to i64, !dbg !541
  %206 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %205, i32 2, !dbg !543
  %207 = load i8*, i8** %206, align 8, !dbg !543, !tbaa !289
  %208 = shl i64 %204, 32, !dbg !544
  %209 = add i64 %208, 4294967296, !dbg !544
  %210 = ashr exact i64 %209, 32, !dbg !544
  %211 = call i8* @memcpy(i8* %207, i8* nonnull %56, i64 %210) #7, !dbg !545
  %212 = load i8*, i8** %206, align 8, !dbg !546, !tbaa !289
  %213 = ashr exact i64 %208, 32, !dbg !547
  %214 = getelementptr inbounds i8, i8* %212, i64 -1, !dbg !561
  %215 = load i8, i8* %214, align 1, !dbg !561, !tbaa !377
  %216 = trunc i8 %215 to i3, !dbg !563
  switch i3 %216, label %234 [
    i3 0, label %217
    i3 1, label %220
    i3 2, label %223
    i3 3, label %227
    i3 -4, label %231
  ], !dbg !563

; <label>:217:                                    ; preds = %203
  %218 = trunc i64 %204 to i8, !dbg !565
  %219 = shl i8 %218, 3, !dbg !565
  store i8 %219, i8* %214, align 1, !dbg !566, !tbaa !377
  br label %234, !dbg !567

; <label>:220:                                    ; preds = %203
  %221 = trunc i64 %213 to i8, !dbg !568
  %222 = getelementptr inbounds i8, i8* %212, i64 -3, !dbg !569
  store i8 %221, i8* %222, align 1, !dbg !570, !tbaa !377
  br label %234, !dbg !571

; <label>:223:                                    ; preds = %203
  %224 = trunc i64 %213 to i16, !dbg !572
  %225 = getelementptr inbounds i8, i8* %212, i64 -5, !dbg !573
  %226 = bitcast i8* %225 to i16*, !dbg !574
  store i16 %224, i16* %226, align 1, !dbg !575, !tbaa !518
  br label %234, !dbg !576

; <label>:227:                                    ; preds = %203
  %228 = trunc i64 %213 to i32, !dbg !577
  %229 = getelementptr inbounds i8, i8* %212, i64 -9, !dbg !578
  %230 = bitcast i8* %229 to i32*, !dbg !579
  store i32 %228, i32* %230, align 1, !dbg !580, !tbaa !523
  br label %234, !dbg !581

; <label>:231:                                    ; preds = %203
  %232 = getelementptr inbounds i8, i8* %212, i64 -17, !dbg !582
  %233 = bitcast i8* %232 to i64*, !dbg !583
  store i64 %213, i64* %233, align 1, !dbg !584, !tbaa !527
  br label %234, !dbg !585

; <label>:234:                                    ; preds = %203, %217, %220, %223, %227, %231
  %235 = bitcast i8** %206 to i64*, !dbg !586
  %236 = load i64, i64* %235, align 8, !dbg !586, !tbaa !289
  %237 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %205, i32 1, !dbg !587
  %238 = bitcast i8** %237 to i64*, !dbg !588
  store i64 %236, i64* %238, align 8, !dbg !588, !tbaa !285
  br label %239

; <label>:239:                                    ; preds = %234, %199
  %240 = phi i64 [ %205, %234 ], [ %201, %199 ], !dbg !589
  %241 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %240, i32 0, !dbg !590
  store i64 %127, i64* %241, align 8, !dbg !591, !tbaa !276
  %242 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %3, i64 %240, i32 3, !dbg !592
  store i32 %0, i32* %242, align 8, !dbg !593, !tbaa !292
  br label %243, !dbg !594

; <label>:243:                                    ; preds = %136, %239
  %244 = add nuw nsw i64 %52, 1, !dbg !595
  %245 = icmp slt i64 %244, %20, !dbg !351
  br i1 %245, label %51, label %246, !dbg !352, !llvm.loop !596

; <label>:246:                                    ; preds = %243, %4
  ret void, !dbg !598

; <label>:247:                                    ; preds = %133
  %248 = load i64, i64* %23, align 8, !dbg !461, !tbaa !276
  %249 = icmp ult i64 %248, %127, !dbg !462
  br i1 %249, label %250, label %141, !dbg !463

; <label>:250:                                    ; preds = %247
  %251 = load i8*, i8** %24, align 8, !dbg !458, !tbaa !285
  %252 = icmp eq i8* %251, null, !dbg !459
  br i1 %252, label %169, label %253, !dbg !460

; <label>:253:                                    ; preds = %250
  %254 = load i64, i64* %25, align 8, !dbg !461, !tbaa !276
  %255 = icmp ult i64 %254, %127, !dbg !462
  br i1 %255, label %256, label %141, !dbg !463

; <label>:256:                                    ; preds = %253
  %257 = load i8*, i8** %26, align 8, !dbg !458, !tbaa !285
  %258 = icmp eq i8* %257, null, !dbg !459
  br i1 %258, label %169, label %259, !dbg !460

; <label>:259:                                    ; preds = %256
  %260 = load i64, i64* %27, align 8, !dbg !461, !tbaa !276
  %261 = icmp ult i64 %260, %127, !dbg !462
  br i1 %261, label %262, label %141, !dbg !463

; <label>:262:                                    ; preds = %259
  %263 = load i8*, i8** %28, align 8, !dbg !458, !tbaa !285
  %264 = icmp eq i8* %263, null, !dbg !459
  br i1 %264, label %169, label %265, !dbg !460

; <label>:265:                                    ; preds = %262
  %266 = load i64, i64* %29, align 8, !dbg !461, !tbaa !276
  %267 = icmp ult i64 %266, %127, !dbg !462
  br i1 %267, label %268, label %141, !dbg !463

; <label>:268:                                    ; preds = %265
  %269 = load i8*, i8** %30, align 8, !dbg !458, !tbaa !285
  %270 = icmp eq i8* %269, null, !dbg !459
  br i1 %270, label %169, label %271, !dbg !460

; <label>:271:                                    ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !461, !tbaa !276
  %273 = icmp ult i64 %272, %127, !dbg !462
  br i1 %273, label %274, label %141, !dbg !463

; <label>:274:                                    ; preds = %271
  %275 = load i8*, i8** %32, align 8, !dbg !458, !tbaa !285
  %276 = icmp eq i8* %275, null, !dbg !459
  br i1 %276, label %169, label %277, !dbg !460

; <label>:277:                                    ; preds = %274
  %278 = load i64, i64* %33, align 8, !dbg !461, !tbaa !276
  %279 = icmp ult i64 %278, %127, !dbg !462
  br i1 %279, label %280, label %141, !dbg !463

; <label>:280:                                    ; preds = %277
  %281 = load i8*, i8** %34, align 8, !dbg !458, !tbaa !285
  %282 = icmp eq i8* %281, null, !dbg !459
  br i1 %282, label %169, label %283, !dbg !460

; <label>:283:                                    ; preds = %280
  %284 = load i64, i64* %35, align 8, !dbg !461, !tbaa !276
  %285 = icmp ult i64 %284, %127, !dbg !462
  br i1 %285, label %286, label %141, !dbg !463

; <label>:286:                                    ; preds = %283
  %287 = load i8*, i8** %36, align 8, !dbg !458, !tbaa !285
  %288 = icmp eq i8* %287, null, !dbg !459
  br i1 %288, label %169, label %289, !dbg !460

; <label>:289:                                    ; preds = %286
  %290 = load i64, i64* %37, align 8, !dbg !461, !tbaa !276
  %291 = icmp ult i64 %290, %127, !dbg !462
  br i1 %291, label %292, label %141, !dbg !463

; <label>:292:                                    ; preds = %289
  %293 = load i8*, i8** %38, align 8, !dbg !458, !tbaa !285
  %294 = icmp eq i8* %293, null, !dbg !459
  br i1 %294, label %169, label %295, !dbg !460

; <label>:295:                                    ; preds = %292
  %296 = load i64, i64* %39, align 8, !dbg !461, !tbaa !276
  %297 = icmp ult i64 %296, %127, !dbg !462
  br i1 %297, label %298, label %141, !dbg !463

; <label>:298:                                    ; preds = %295
  %299 = load i8*, i8** %40, align 8, !dbg !458, !tbaa !285
  %300 = icmp eq i8* %299, null, !dbg !459
  br i1 %300, label %169, label %301, !dbg !460

; <label>:301:                                    ; preds = %298
  %302 = load i64, i64* %41, align 8, !dbg !461, !tbaa !276
  %303 = icmp ult i64 %302, %127, !dbg !462
  br i1 %303, label %304, label %141, !dbg !463

; <label>:304:                                    ; preds = %301
  %305 = load i8*, i8** %42, align 8, !dbg !458, !tbaa !285
  %306 = icmp eq i8* %305, null, !dbg !459
  br i1 %306, label %169, label %307, !dbg !460

; <label>:307:                                    ; preds = %304
  %308 = load i64, i64* %43, align 8, !dbg !461, !tbaa !276
  %309 = icmp ult i64 %308, %127, !dbg !462
  br i1 %309, label %310, label %141, !dbg !463

; <label>:310:                                    ; preds = %307
  %311 = load i8*, i8** %44, align 8, !dbg !458, !tbaa !285
  %312 = icmp eq i8* %311, null, !dbg !459
  br i1 %312, label %169, label %313, !dbg !460

; <label>:313:                                    ; preds = %310
  %314 = load i64, i64* %45, align 8, !dbg !461, !tbaa !276
  %315 = icmp ult i64 %314, %127, !dbg !462
  br i1 %315, label %316, label %141, !dbg !463

; <label>:316:                                    ; preds = %313
  %317 = load i8*, i8** %46, align 8, !dbg !458, !tbaa !285
  %318 = icmp eq i8* %317, null, !dbg !459
  br i1 %318, label %169, label %319, !dbg !460

; <label>:319:                                    ; preds = %316
  %320 = load i64, i64* %47, align 8, !dbg !461, !tbaa !276
  %321 = icmp ult i64 %320, %127, !dbg !462
  br i1 %321, label %322, label %141, !dbg !463

; <label>:322:                                    ; preds = %319
  %323 = load i8*, i8** %48, align 8, !dbg !458, !tbaa !285
  %324 = icmp eq i8* %323, null, !dbg !459
  br i1 %324, label %169, label %325, !dbg !460

; <label>:325:                                    ; preds = %322
  %326 = load i64, i64* %49, align 8, !dbg !461, !tbaa !276
  %327 = icmp ult i64 %326, %127, !dbg !462
  br i1 %327, label %328, label %141, !dbg !463

; <label>:328:                                    ; preds = %325
  %329 = load i8*, i8** %12, align 8, !dbg !458, !tbaa !285
  %330 = icmp eq i8* %329, null, !dbg !459
  br i1 %330, label %169, label %331, !dbg !460

; <label>:331:                                    ; preds = %328
  %332 = load i64, i64* %50, align 8, !dbg !461, !tbaa !276
  %333 = icmp ult i64 %332, %127, !dbg !462
  br i1 %333, label %158, label %141, !dbg !463
}

; Function Attrs: noredzone
declare dso_local i32 @dictGetSomeKeys(%struct.dict*, %struct.dictEntry**, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind readonly
define dso_local i64 @LFUDecrAndReturn(%struct.redisObject* nocapture readonly) local_unnamed_addr #4 !dbg !400 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !600
  %3 = load i32, i32* %2, align 8, !dbg !600
  %4 = lshr i32 %3, 8, !dbg !600
  %5 = and i32 %4, 255, !dbg !601
  %6 = zext i32 %5 to i64, !dbg !602
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 231), align 4, !dbg !604, !tbaa !415
  %8 = icmp eq i32 %7, 0, !dbg !605
  br i1 %8, label %26, label %9, !dbg !605

; <label>:9:                                      ; preds = %1
  %10 = lshr i32 %3, 16, !dbg !606
  %11 = zext i32 %10 to i64, !dbg !607
  %12 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !611, !tbaa !433
  %13 = sdiv i64 %12, 60, !dbg !613
  %14 = and i64 %13, 65535, !dbg !614
  %15 = icmp ult i64 %14, %11, !dbg !616
  %16 = select i1 %15, i64 65535, i64 0, !dbg !617
  %17 = sub nsw i64 %14, %11, !dbg !617
  %18 = add nsw i64 %16, %17, !dbg !617
  %19 = sext i32 %7 to i64, !dbg !618
  %20 = udiv i64 %18, %19, !dbg !619
  %21 = icmp ult i64 %18, %19, !dbg !621
  br i1 %21, label %26, label %22, !dbg !622

; <label>:22:                                     ; preds = %9
  %23 = icmp ugt i64 %20, %6, !dbg !623
  %24 = select i1 %23, i64 %20, i64 %6, !dbg !623
  %25 = sub i64 %24, %20, !dbg !623
  br label %26, !dbg !624

; <label>:26:                                     ; preds = %1, %9, %22
  %27 = phi i64 [ %25, %22 ], [ %6, %9 ], [ %6, %1 ], !dbg !625
  ret i64 %27, !dbg !626
}

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @sdsdup(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: norecurse noredzone nounwind readonly
define dso_local i64 @LFUGetTimeInMinutes() local_unnamed_addr #6 !dbg !429 {
  %1 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !627, !tbaa !433
  %2 = sdiv i64 %1, 60, !dbg !628
  %3 = and i64 %2, 65535, !dbg !629
  ret i64 %3, !dbg !630
}

; Function Attrs: noredzone nounwind readonly
define dso_local i64 @LFUTimeElapsed(i64) local_unnamed_addr #4 !dbg !421 {
  %2 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !632, !tbaa !433
  %3 = sdiv i64 %2, 60, !dbg !634
  %4 = and i64 %3, 65535, !dbg !635
  %5 = icmp ult i64 %4, %0, !dbg !637
  %6 = select i1 %5, i64 65535, i64 0, !dbg !638
  %7 = sub i64 %4, %0, !dbg !638
  %8 = add i64 %7, %6, !dbg !638
  ret i64 %8, !dbg !639
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @LFULogIncr(i8 zeroext) local_unnamed_addr #0 !dbg !640 {
  %2 = icmp eq i8 %0, -1, !dbg !649
  br i1 %2, label %23, label %3, !dbg !651

; <label>:3:                                      ; preds = %1
  %4 = zext i8 %0 to i32, !dbg !652
  %5 = tail call i32 @rand() #7, !dbg !653
  %6 = sitofp i32 %5 to double, !dbg !654
  %7 = add nsw i32 %4, -5, !dbg !656
  %8 = sitofp i32 %7 to double, !dbg !657
  %9 = icmp ult i8 %0, 5, !dbg !659
  %10 = select i1 %9, double 0.000000e+00, double %8, !dbg !661
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 230), align 8, !dbg !662, !tbaa !663
  %12 = sitofp i32 %11 to double, !dbg !664
  %13 = fmul double %10, %12, !dbg !665
  %14 = fadd double %13, 1.000000e+00, !dbg !666
  %15 = insertelement <2 x double> <double undef, double 1.000000e+00>, double %6, i32 0, !dbg !667
  %16 = insertelement <2 x double> <double 0x41DFFFFFFFC00000, double undef>, double %14, i32 1, !dbg !667
  %17 = fdiv <2 x double> %15, %16, !dbg !667
  %18 = extractelement <2 x double> %17, i32 0, !dbg !669
  %19 = extractelement <2 x double> %17, i32 1, !dbg !669
  %20 = fcmp olt double %18, %19, !dbg !669
  %21 = zext i1 %20 to i8, !dbg !671
  %22 = add i8 %21, %0, !dbg !671
  br label %23, !dbg !671

; <label>:23:                                     ; preds = %3, %1
  %24 = phi i8 [ -1, %1 ], [ %22, %3 ], !dbg !672
  ret i8 %24, !dbg !673
}

; Function Attrs: noredzone
declare dso_local i32 @rand() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @freeMemoryGetNotCountedMemory() local_unnamed_addr #0 !dbg !674 {
  %1 = alloca %struct.listIter, align 8
  %2 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !814, !tbaa !815
  %3 = getelementptr inbounds %struct.list, %struct.list* %2, i64 0, i32 5, !dbg !814
  %4 = load i64, i64* %3, align 8, !dbg !814, !tbaa !816
  %5 = trunc i64 %4 to i32, !dbg !814
  %6 = icmp eq i32 %5, 0, !dbg !819
  br i1 %6, label %23, label %7, !dbg !820

; <label>:7:                                      ; preds = %0
  %8 = bitcast %struct.listIter* %1 to i8*, !dbg !821
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #9, !dbg !821
  call void @listRewind(%struct.list* %2, %struct.listIter* nonnull %1) #7, !dbg !823
  %9 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #7, !dbg !824
  %10 = icmp eq %struct.listNode* %9, null, !dbg !826
  br i1 %10, label %21, label %11, !dbg !826

; <label>:11:                                     ; preds = %7, %11
  %12 = phi %struct.listNode* [ %19, %11 ], [ %9, %7 ]
  %13 = phi i64 [ %18, %11 ], [ 0, %7 ]
  %14 = getelementptr inbounds %struct.listNode, %struct.listNode* %12, i64 0, i32 2, !dbg !827
  %15 = bitcast i8** %14 to %struct.client**, !dbg !827
  %16 = load %struct.client*, %struct.client** %15, align 8, !dbg !827, !tbaa !828
  %17 = call i64 @getClientOutputBufferMemoryUsage(%struct.client* %16) #7, !dbg !831
  %18 = add i64 %17, %13, !dbg !832
  %19 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #7, !dbg !824
  %20 = icmp eq %struct.listNode* %19, null, !dbg !826
  br i1 %20, label %21, label %11, !dbg !826, !llvm.loop !833

; <label>:21:                                     ; preds = %11, %7
  %22 = phi i64 [ 0, %7 ], [ %18, %11 ], !dbg !835
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #9, !dbg !836
  br label %23, !dbg !837

; <label>:23:                                     ; preds = %0, %21
  %24 = phi i64 [ %22, %21 ], [ 0, %0 ], !dbg !813
  %25 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !838, !tbaa !840
  %26 = icmp eq i32 %25, 0, !dbg !841
  br i1 %26, label %58, label %27, !dbg !842

; <label>:27:                                     ; preds = %23
  %28 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !843, !tbaa !845
  %29 = getelementptr inbounds i8, i8* %28, i64 -1, !dbg !852
  %30 = load i8, i8* %29, align 1, !dbg !852, !tbaa !377
  %31 = trunc i8 %30 to i3, !dbg !854
  switch i3 %31, label %53 [
    i3 0, label %32
    i3 1, label %35
    i3 2, label %39
    i3 3, label %44
    i3 -4, label %49
  ], !dbg !854

; <label>:32:                                     ; preds = %27
  %33 = lshr i8 %30, 3, !dbg !855
  %34 = zext i8 %33 to i64, !dbg !855
  br label %53, !dbg !857

; <label>:35:                                     ; preds = %27
  %36 = getelementptr inbounds i8, i8* %28, i64 -2, !dbg !858
  %37 = load i8, i8* %36, align 1, !dbg !858, !tbaa !377
  %38 = zext i8 %37 to i64, !dbg !859
  br label %53, !dbg !860

; <label>:39:                                     ; preds = %27
  %40 = getelementptr inbounds i8, i8* %28, i64 -3, !dbg !861
  %41 = bitcast i8* %40 to i16*, !dbg !861
  %42 = load i16, i16* %41, align 1, !dbg !861, !tbaa !518
  %43 = zext i16 %42 to i64, !dbg !862
  br label %53, !dbg !863

; <label>:44:                                     ; preds = %27
  %45 = getelementptr inbounds i8, i8* %28, i64 -5, !dbg !864
  %46 = bitcast i8* %45 to i32*, !dbg !864
  %47 = load i32, i32* %46, align 1, !dbg !864, !tbaa !523
  %48 = zext i32 %47 to i64, !dbg !865
  br label %53, !dbg !866

; <label>:49:                                     ; preds = %27
  %50 = getelementptr inbounds i8, i8* %28, i64 -9, !dbg !867
  %51 = bitcast i8* %50 to i64*, !dbg !867
  %52 = load i64, i64* %51, align 1, !dbg !867, !tbaa !527
  br label %53, !dbg !868

; <label>:53:                                     ; preds = %27, %32, %35, %39, %44, %49
  %54 = phi i64 [ %52, %49 ], [ %48, %44 ], [ %43, %39 ], [ %38, %35 ], [ %34, %32 ], [ 0, %27 ], !dbg !869
  %55 = call i64 @aofRewriteBufferSize() #7, !dbg !870
  %56 = add i64 %54, %24, !dbg !871
  %57 = add i64 %56, %55, !dbg !872
  br label %58, !dbg !873

; <label>:58:                                     ; preds = %23, %53
  %59 = phi i64 [ %57, %53 ], [ %24, %23 ], !dbg !874
  ret i64 %59, !dbg !875
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
define dso_local i32 @getMaxmemoryState(i64*, i64*, i64*, float*) local_unnamed_addr #0 !dbg !876 {
  %5 = tail call i64 @zmalloc_used_memory() #7, !dbg !895
  %6 = icmp eq i64* %0, null, !dbg !897
  br i1 %6, label %8, label %7, !dbg !899

; <label>:7:                                      ; preds = %4
  store i64 %5, i64* %0, align 8, !dbg !900, !tbaa !527
  br label %8, !dbg !901

; <label>:8:                                      ; preds = %4, %7
  %9 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !902, !tbaa !903
  %10 = icmp eq i64 %9, 0, !dbg !904
  %11 = icmp ule i64 %5, %9, !dbg !905
  %12 = or i1 %10, %11, !dbg !906
  %13 = or i1 %10, %11, !dbg !907
  %14 = xor i1 %13, true, !dbg !907
  %15 = icmp ne float* %3, null, !dbg !909
  %16 = or i1 %15, %14, !dbg !910
  br i1 %16, label %17, label %42, !dbg !910

; <label>:17:                                     ; preds = %8
  %18 = tail call i64 @freeMemoryGetNotCountedMemory() #10, !dbg !912
  %19 = icmp ugt i64 %5, %18, !dbg !914
  %20 = select i1 %19, i64 %5, i64 %18, !dbg !914
  %21 = sub i64 %20, %18, !dbg !914
  br i1 %15, label %22, label %31, !dbg !915

; <label>:22:                                     ; preds = %17
  %23 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !916, !tbaa !903
  %24 = icmp eq i64 %23, 0, !dbg !920
  br i1 %24, label %29, label %25, !dbg !921

; <label>:25:                                     ; preds = %22
  %26 = uitofp i64 %21 to float, !dbg !922
  %27 = uitofp i64 %23 to float, !dbg !924
  %28 = fdiv float %26, %27, !dbg !925
  br label %29

; <label>:29:                                     ; preds = %22, %25
  %30 = phi float [ %28, %25 ], [ 0.000000e+00, %22 ]
  store float %30, float* %3, align 4, !dbg !926, !tbaa !927
  br label %31, !dbg !929

; <label>:31:                                     ; preds = %29, %17
  br i1 %12, label %42, label %32, !dbg !929

; <label>:32:                                     ; preds = %31
  %33 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !930, !tbaa !903
  %34 = icmp ugt i64 %21, %33, !dbg !932
  br i1 %34, label %35, label %42, !dbg !933

; <label>:35:                                     ; preds = %32
  %36 = sub i64 %21, %33, !dbg !934
  %37 = icmp eq i64* %1, null, !dbg !936
  br i1 %37, label %39, label %38, !dbg !938

; <label>:38:                                     ; preds = %35
  store i64 %21, i64* %1, align 8, !dbg !939, !tbaa !527
  br label %39, !dbg !940

; <label>:39:                                     ; preds = %35, %38
  %40 = icmp eq i64* %2, null, !dbg !941
  br i1 %40, label %42, label %41, !dbg !943

; <label>:41:                                     ; preds = %39
  store i64 %36, i64* %2, align 8, !dbg !944, !tbaa !527
  br label %42, !dbg !945

; <label>:42:                                     ; preds = %31, %32, %39, %41, %8
  %43 = phi i32 [ 0, %8 ], [ 0, %31 ], [ 0, %32 ], [ -1, %39 ], [ -1, %41 ], !dbg !946
  ret i32 %43, !dbg !947
}

; Function Attrs: noredzone
declare dso_local i64 @zmalloc_used_memory() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @freeMemoryIfNeeded() local_unnamed_addr #0 !dbg !62 {
  %1 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !948, !tbaa !950
  %2 = icmp ne i8* %1, null, !dbg !951
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 212), align 8, !dbg !952
  %4 = icmp ne i32 %3, 0, !dbg !953
  %5 = and i1 %2, %4, !dbg !954
  br i1 %5, label %265, label %6, !dbg !954

; <label>:6:                                      ; preds = %0
  %7 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !955, !tbaa !815
  %8 = getelementptr inbounds %struct.list, %struct.list* %7, i64 0, i32 5, !dbg !955
  %9 = load i64, i64* %8, align 8, !dbg !955, !tbaa !816
  %10 = trunc i64 %9 to i32, !dbg !955
  %11 = tail call i32 @clientsArePaused() #7, !dbg !957
  %12 = icmp eq i32 %11, 0, !dbg !957
  br i1 %12, label %13, label %265, !dbg !959

; <label>:13:                                     ; preds = %6
  %14 = tail call i64 @zmalloc_used_memory() #7, !dbg !964
  %15 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !966, !tbaa !903
  %16 = icmp eq i64 %15, 0, !dbg !967
  %17 = icmp ule i64 %14, %15, !dbg !968
  %18 = or i1 %16, %17, !dbg !969
  br i1 %18, label %265, label %19, !dbg !970

; <label>:19:                                     ; preds = %13
  %20 = tail call i64 @freeMemoryGetNotCountedMemory() #7, !dbg !972
  %21 = icmp ugt i64 %14, %20, !dbg !974
  %22 = select i1 %21, i64 %14, i64 %20, !dbg !974
  %23 = sub i64 %22, %20, !dbg !974
  %24 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !975, !tbaa !903
  %25 = icmp ugt i64 %23, %24, !dbg !976
  br i1 %25, label %26, label %265, !dbg !977

; <label>:26:                                     ; preds = %19
  %27 = sub i64 %23, %24, !dbg !978
  %28 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !981, !tbaa !361
  %29 = icmp eq i32 %28, 1792, !dbg !983
  br i1 %29, label %251, label %30, !dbg !984

; <label>:30:                                     ; preds = %26
  %31 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !985, !tbaa !987
  %32 = icmp eq i64 %31, 0, !dbg !985
  br i1 %32, label %35, label %33, !dbg !988

; <label>:33:                                     ; preds = %30
  %34 = tail call i64 @mstime() #7, !dbg !989
  br label %35, !dbg !989

; <label>:35:                                     ; preds = %30, %33
  %36 = phi i64 [ %34, %33 ], [ 0, %30 ], !dbg !989
  %37 = icmp eq i64 %27, 0, !dbg !994
  br i1 %37, label %239, label %38, !dbg !995

; <label>:38:                                     ; preds = %35
  %39 = icmp eq i32 %10, 0
  br label %40, !dbg !995

; <label>:40:                                     ; preds = %38, %237
  %41 = phi i64 [ 0, %38 ], [ %219, %237 ]
  %42 = phi i64 [ %36, %38 ], [ %216, %237 ]
  %43 = phi i32 [ undef, %38 ], [ %157, %237 ]
  %44 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !998, !tbaa !361
  %45 = and i32 %44, 3, !dbg !999
  %46 = icmp ne i32 %45, 0, !dbg !999
  %47 = icmp eq i32 %44, 512, !dbg !1000
  %48 = or i1 %47, %46, !dbg !1001
  br i1 %48, label %49, label %124, !dbg !1001

; <label>:49:                                     ; preds = %40
  %50 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** @EvictionPoolLRU, align 8, !dbg !1002, !tbaa !298
  br label %51, !dbg !1004

; <label>:51:                                     ; preds = %49, %120
  %52 = phi i32 [ %43, %49 ], [ %122, %120 ]
  %53 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !1007, !tbaa !1010
  %54 = icmp sgt i32 %53, 0, !dbg !1011
  br i1 %54, label %55, label %226, !dbg !1012

; <label>:55:                                     ; preds = %51, %78
  %56 = phi i32 [ %79, %78 ], [ %53, %51 ]
  %57 = phi i64 [ %81, %78 ], [ 0, %51 ]
  %58 = phi i64 [ %80, %78 ], [ 0, %51 ]
  %59 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !1013, !tbaa !1015
  %60 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !1016, !tbaa !361
  %61 = and i32 %60, 4, !dbg !1017
  %62 = icmp eq i32 %61, 0, !dbg !1017
  %63 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %59, i64 %57, i32 0, !dbg !1018
  %64 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %59, i64 %57, i32 1, !dbg !1019
  %65 = select i1 %62, %struct.dict** %64, %struct.dict** %63, !dbg !1020
  %66 = load %struct.dict*, %struct.dict** %65, align 8, !dbg !1020, !tbaa !298
  %67 = getelementptr inbounds %struct.dict, %struct.dict* %66, i64 0, i32 2, i64 0, i32 3, !dbg !1022
  %68 = load i64, i64* %67, align 8, !dbg !1022, !tbaa !1024
  %69 = getelementptr inbounds %struct.dict, %struct.dict* %66, i64 0, i32 2, i64 1, i32 3, !dbg !1022
  %70 = load i64, i64* %69, align 8, !dbg !1022, !tbaa !1024
  %71 = add i64 %70, %68, !dbg !1022
  %72 = icmp eq i64 %71, 0, !dbg !1027
  br i1 %72, label %78, label %73, !dbg !1028

; <label>:73:                                     ; preds = %55
  %74 = load %struct.dict*, %struct.dict** %63, align 8, !dbg !1029, !tbaa !1031
  %75 = trunc i64 %57 to i32, !dbg !1033
  tail call void @evictionPoolPopulate(i32 %75, %struct.dict* %66, %struct.dict* %74, %struct.evictionPoolEntry* %50) #10, !dbg !1033
  %76 = add i64 %71, %58, !dbg !1034
  %77 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !1007, !tbaa !1010
  br label %78, !dbg !1035

; <label>:78:                                     ; preds = %55, %73
  %79 = phi i32 [ %77, %73 ], [ %56, %55 ], !dbg !1007
  %80 = phi i64 [ %76, %73 ], [ %58, %55 ], !dbg !1036
  %81 = add nuw nsw i64 %57, 1, !dbg !1037
  %82 = sext i32 %79 to i64, !dbg !1011
  %83 = icmp slt i64 %81, %82, !dbg !1011
  br i1 %83, label %55, label %84, !dbg !1012, !llvm.loop !1038

; <label>:84:                                     ; preds = %78
  %85 = icmp eq i64 %80, 0, !dbg !1040
  br i1 %85, label %226, label %86, !dbg !1042

; <label>:86:                                     ; preds = %84, %116
  %87 = phi i64 [ %118, %116 ], [ 15, %84 ]
  %88 = phi i32 [ %117, %116 ], [ %52, %84 ]
  %89 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %50, i64 %87, i32 1, !dbg !1044
  %90 = load i8*, i8** %89, align 8, !dbg !1044, !tbaa !285
  %91 = icmp eq i8* %90, null, !dbg !1049
  br i1 %91, label %116, label %92, !dbg !1050

; <label>:92:                                     ; preds = %86
  %93 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %50, i64 %87, i32 3, !dbg !1051
  %94 = load i32, i32* %93, align 8, !dbg !1051, !tbaa !292
  %95 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !1052, !tbaa !361
  %96 = and i32 %95, 4, !dbg !1054
  %97 = icmp eq i32 %96, 0, !dbg !1054
  %98 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !1055, !tbaa !1015
  %99 = sext i32 %94 to i64, !dbg !1055
  %100 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %98, i64 %99, i32 1, !dbg !1057
  %101 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %98, i64 %99, i32 0, !dbg !1059
  %102 = select i1 %97, %struct.dict** %100, %struct.dict** %101, !dbg !1061
  %103 = load %struct.dict*, %struct.dict** %102, align 8, !dbg !1062, !tbaa !298
  %104 = tail call %struct.dictEntry* @dictFind(%struct.dict* %103, i8* nonnull %90) #7, !dbg !1062
  %105 = load i8*, i8** %89, align 8, !dbg !1063, !tbaa !285
  %106 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %50, i64 %87, i32 2, !dbg !1065
  %107 = load i8*, i8** %106, align 8, !dbg !1065, !tbaa !289
  %108 = icmp eq i8* %105, %107, !dbg !1066
  br i1 %108, label %110, label %109, !dbg !1067

; <label>:109:                                    ; preds = %92
  tail call void @sdsfree(i8* %105) #7, !dbg !1068
  br label %110, !dbg !1068

; <label>:110:                                    ; preds = %92, %109
  store i8* null, i8** %89, align 8, !dbg !1069, !tbaa !285
  %111 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %50, i64 %87, i32 0, !dbg !1070
  store i64 0, i64* %111, align 8, !dbg !1071, !tbaa !276
  %112 = icmp eq %struct.dictEntry* %104, null, !dbg !1072
  br i1 %112, label %116, label %113, !dbg !1074

; <label>:113:                                    ; preds = %110
  %114 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %104, i64 0, i32 0, !dbg !1075
  %115 = load i8*, i8** %114, align 8, !dbg !1075, !tbaa !356
  br label %120, !dbg !1077

; <label>:116:                                    ; preds = %110, %86
  %117 = phi i32 [ %88, %86 ], [ %94, %110 ]
  %118 = add nsw i64 %87, -1, !dbg !1078
  %119 = icmp eq i64 %87, 0, !dbg !1079
  br i1 %119, label %120, label %86, !dbg !1080, !llvm.loop !1081

; <label>:120:                                    ; preds = %116, %113
  %121 = phi i8* [ %115, %113 ], [ null, %116 ], !dbg !1083
  %122 = phi i32 [ %94, %113 ], [ %117, %116 ]
  %123 = icmp eq i8* %121, null, !dbg !1084
  br i1 %123, label %51, label %156, !llvm.loop !1085

; <label>:124:                                    ; preds = %40
  switch i32 %44, label %226 [
    i32 1540, label %125
    i32 768, label %125
  ], !dbg !1087

; <label>:125:                                    ; preds = %124, %124
  %126 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !1089, !tbaa !1010
  %127 = icmp sgt i32 %126, 0, !dbg !1093
  br i1 %127, label %128, label %226, !dbg !1094

; <label>:128:                                    ; preds = %125
  %129 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !tbaa !1015
  %130 = icmp eq i32 %44, 1540
  %131 = load i32, i32* @freeMemoryIfNeeded.next_db, align 4, !dbg !1095, !tbaa !523
  br label %134, !dbg !1094

; <label>:132:                                    ; preds = %134
  %133 = icmp slt i32 %150, %126, !dbg !1093
  br i1 %133, label %134, label %225, !dbg !1094, !llvm.loop !1097

; <label>:134:                                    ; preds = %128, %132
  %135 = phi i32 [ %131, %128 ], [ %137, %132 ], !dbg !1006
  %136 = phi i32 [ 0, %128 ], [ %150, %132 ]
  %137 = add i32 %135, 1, !dbg !1095
  %138 = urem i32 %137, %126, !dbg !1099
  %139 = sext i32 %138 to i64, !dbg !1101
  %140 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %129, i64 %139, i32 0, !dbg !1102
  %141 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %129, i64 %139, i32 1, !dbg !1103
  %142 = select i1 %130, %struct.dict** %140, %struct.dict** %141, !dbg !1104
  %143 = load %struct.dict*, %struct.dict** %142, align 8, !dbg !1104, !tbaa !298
  %144 = getelementptr inbounds %struct.dict, %struct.dict* %143, i64 0, i32 2, i64 0, i32 3, !dbg !1105
  %145 = load i64, i64* %144, align 8, !dbg !1105, !tbaa !1024
  %146 = getelementptr inbounds %struct.dict, %struct.dict* %143, i64 0, i32 2, i64 1, i32 3, !dbg !1105
  %147 = load i64, i64* %146, align 8, !dbg !1105, !tbaa !1024
  %148 = sub i64 0, %147, !dbg !1107
  %149 = icmp eq i64 %145, %148, !dbg !1107
  %150 = add nuw nsw i32 %136, 1, !dbg !1108
  br i1 %149, label %132, label %151, !dbg !1109

; <label>:151:                                    ; preds = %134
  store i32 %137, i32* @freeMemoryIfNeeded.next_db, align 4, !dbg !1095, !tbaa !523
  %152 = tail call %struct.dictEntry* @dictGetRandomKey(%struct.dict* %143) #7, !dbg !1110
  %153 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %152, i64 0, i32 0, !dbg !1112
  %154 = load i8*, i8** %153, align 8, !dbg !1112, !tbaa !356
  %155 = icmp eq i8* %154, null, !dbg !1113
  br i1 %155, label %226, label %156, !dbg !1114

; <label>:156:                                    ; preds = %120, %151
  %157 = phi i32 [ %138, %151 ], [ %122, %120 ]
  %158 = phi i8* [ %154, %151 ], [ %121, %120 ]
  %159 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !1115, !tbaa !1015
  %160 = sext i32 %157 to i64, !dbg !1116
  %161 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %159, i64 %160, !dbg !1116
  %162 = getelementptr inbounds i8, i8* %158, i64 -1, !dbg !1120
  %163 = load i8, i8* %162, align 1, !dbg !1120, !tbaa !377
  %164 = trunc i8 %163 to i3, !dbg !1122
  switch i3 %164, label %186 [
    i3 0, label %165
    i3 1, label %168
    i3 2, label %172
    i3 3, label %177
    i3 -4, label %182
  ], !dbg !1122

; <label>:165:                                    ; preds = %156
  %166 = lshr i8 %163, 3, !dbg !1123
  %167 = zext i8 %166 to i64, !dbg !1123
  br label %186, !dbg !1124

; <label>:168:                                    ; preds = %156
  %169 = getelementptr inbounds i8, i8* %158, i64 -3, !dbg !1125
  %170 = load i8, i8* %169, align 1, !dbg !1126, !tbaa !377
  %171 = zext i8 %170 to i64, !dbg !1125
  br label %186, !dbg !1127

; <label>:172:                                    ; preds = %156
  %173 = getelementptr inbounds i8, i8* %158, i64 -5, !dbg !1128
  %174 = bitcast i8* %173 to i16*, !dbg !1129
  %175 = load i16, i16* %174, align 1, !dbg !1129, !tbaa !518
  %176 = zext i16 %175 to i64, !dbg !1128
  br label %186, !dbg !1130

; <label>:177:                                    ; preds = %156
  %178 = getelementptr inbounds i8, i8* %158, i64 -9, !dbg !1131
  %179 = bitcast i8* %178 to i32*, !dbg !1132
  %180 = load i32, i32* %179, align 1, !dbg !1132, !tbaa !523
  %181 = zext i32 %180 to i64, !dbg !1131
  br label %186, !dbg !1133

; <label>:182:                                    ; preds = %156
  %183 = getelementptr inbounds i8, i8* %158, i64 -17, !dbg !1134
  %184 = bitcast i8* %183 to i64*, !dbg !1135
  %185 = load i64, i64* %184, align 1, !dbg !1135, !tbaa !527
  br label %186, !dbg !1136

; <label>:186:                                    ; preds = %156, %165, %168, %172, %177, %182
  %187 = phi i64 [ %185, %182 ], [ %181, %177 ], [ %176, %172 ], [ %171, %168 ], [ %167, %165 ], [ 0, %156 ], !dbg !1137
  %188 = tail call %struct.redisObject* @createStringObject(i8* nonnull %158, i64 %187) #7, !dbg !1138
  %189 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 285), align 8, !dbg !1140, !tbaa !1141
  tail call void @propagateExpire(%struct.redisDb* %161, %struct.redisObject* %188, i32 %189) #7, !dbg !1142
  %190 = tail call i64 @zmalloc_used_memory() #7, !dbg !1143
  %191 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1145, !tbaa !987
  %192 = icmp eq i64 %191, 0, !dbg !1145
  br i1 %192, label %195, label %193, !dbg !1147

; <label>:193:                                    ; preds = %186
  %194 = tail call i64 @mstime() #7, !dbg !1148
  br label %195, !dbg !1148

; <label>:195:                                    ; preds = %186, %193
  %196 = phi i64 [ %194, %193 ], [ 0, %186 ], !dbg !1148
  %197 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 285), align 8, !dbg !1151, !tbaa !1141
  %198 = icmp eq i32 %197, 0, !dbg !1153
  br i1 %198, label %201, label %199, !dbg !1154

; <label>:199:                                    ; preds = %195
  %200 = tail call i32 @dbAsyncDelete(%struct.redisDb* %161, %struct.redisObject* %188) #7, !dbg !1155
  br label %203, !dbg !1155

; <label>:201:                                    ; preds = %195
  %202 = tail call i32 @dbSyncDelete(%struct.redisDb* %161, %struct.redisObject* %188) #7, !dbg !1156
  br label %203

; <label>:203:                                    ; preds = %201, %199
  %204 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1157, !tbaa !987
  %205 = icmp eq i64 %204, 0, !dbg !1157
  br i1 %205, label %214, label %206, !dbg !1159

; <label>:206:                                    ; preds = %203
  %207 = tail call i64 @mstime() #7, !dbg !1160
  %208 = sub nsw i64 %207, %196, !dbg !1160
  %209 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1162, !tbaa !987
  %210 = icmp eq i64 %209, 0, !dbg !1162
  %211 = icmp slt i64 %208, %209, !dbg !1162
  %212 = or i1 %210, %211, !dbg !1162
  br i1 %212, label %214, label %213, !dbg !1162

; <label>:213:                                    ; preds = %206
  tail call void @latencyAddSample(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %208) #7, !dbg !1162
  br label %214, !dbg !1162

; <label>:214:                                    ; preds = %203, %206, %213
  %215 = phi i64 [ %208, %206 ], [ %208, %213 ], [ %196, %203 ]
  %216 = add nsw i64 %215, %42, !dbg !1164
  %217 = tail call i64 @zmalloc_used_memory() #7, !dbg !1165
  %218 = add i64 %190, %41, !dbg !1166
  %219 = sub i64 %218, %217, !dbg !1167
  %220 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 75), align 8, !dbg !1168, !tbaa !1169
  %221 = add nsw i64 %220, 1, !dbg !1168
  store i64 %221, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 75), align 8, !dbg !1168, !tbaa !1169
  %222 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %159, i64 %160, i32 5, !dbg !1170
  %223 = load i32, i32* %222, align 8, !dbg !1170, !tbaa !1171
  tail call void @notifyKeyspaceEvent(i32 512, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.redisObject* %188, i32 %223) #7, !dbg !1172
  tail call void @decrRefCount(%struct.redisObject* %188) #7, !dbg !1173
  br i1 %39, label %237, label %224, !dbg !1174

; <label>:224:                                    ; preds = %214
  tail call void @flushSlavesOutputBuffers() #7, !dbg !1175
  br label %237, !dbg !1175

; <label>:225:                                    ; preds = %132
  store i32 %137, i32* @freeMemoryIfNeeded.next_db, align 4, !dbg !1095, !tbaa !523
  br label %226, !dbg !1094

; <label>:226:                                    ; preds = %124, %151, %125, %51, %84, %225
  %227 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1177, !tbaa !987
  %228 = icmp eq i64 %227, 0, !dbg !1177
  br i1 %228, label %251, label %229, !dbg !1181

; <label>:229:                                    ; preds = %226
  %230 = tail call i64 @mstime() #7, !dbg !1182
  %231 = sub nsw i64 %230, %42, !dbg !1182
  %232 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1184, !tbaa !987
  %233 = icmp eq i64 %232, 0, !dbg !1184
  %234 = icmp slt i64 %231, %232, !dbg !1184
  %235 = or i1 %233, %234, !dbg !1184
  br i1 %235, label %251, label %236, !dbg !1184

; <label>:236:                                    ; preds = %229
  tail call void @latencyAddSample(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64 %231) #7, !dbg !1184
  br label %251, !dbg !1184

; <label>:237:                                    ; preds = %214, %224
  %238 = icmp ult i64 %219, %27, !dbg !994
  br i1 %238, label %40, label %239, !dbg !995

; <label>:239:                                    ; preds = %237, %35
  %240 = phi i64 [ %36, %35 ], [ %216, %237 ], !dbg !1186
  %241 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1187, !tbaa !987
  %242 = icmp eq i64 %241, 0, !dbg !1187
  br i1 %242, label %265, label %243, !dbg !1189

; <label>:243:                                    ; preds = %239
  %244 = tail call i64 @mstime() #7, !dbg !1190
  %245 = sub nsw i64 %244, %240, !dbg !1190
  %246 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1192, !tbaa !987
  %247 = icmp eq i64 %246, 0, !dbg !1192
  %248 = icmp slt i64 %245, %246, !dbg !1192
  %249 = or i1 %247, %248, !dbg !1192
  br i1 %249, label %265, label %250, !dbg !1192

; <label>:250:                                    ; preds = %243
  tail call void @latencyAddSample(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64 %245) #7, !dbg !1192
  br label %265, !dbg !1192

; <label>:251:                                    ; preds = %226, %236, %229, %26
  %252 = phi i64 [ 0, %26 ], [ %41, %229 ], [ %41, %236 ], [ %41, %226 ], !dbg !1186
  %253 = tail call i64 @bioPendingJobsOfType(i32 2) #7, !dbg !1194
  %254 = icmp eq i64 %253, 0, !dbg !1195
  br i1 %254, label %265, label %255, !dbg !1195

; <label>:255:                                    ; preds = %251
  %256 = add i64 %252, %14
  br label %257, !dbg !1195

; <label>:257:                                    ; preds = %255, %261
  %258 = tail call i64 @zmalloc_used_memory() #7, !dbg !1197
  %259 = sub i64 %256, %258, !dbg !1200
  %260 = icmp ult i64 %259, %27, !dbg !1201
  br i1 %260, label %261, label %265, !dbg !1202

; <label>:261:                                    ; preds = %257
  %262 = tail call i32 @usleep(i64 1000) #7, !dbg !1203
  %263 = tail call i64 @bioPendingJobsOfType(i32 2) #7, !dbg !1194
  %264 = icmp eq i64 %263, 0, !dbg !1195
  br i1 %264, label %265, label %257, !dbg !1195, !llvm.loop !1204

; <label>:265:                                    ; preds = %261, %257, %239, %251, %13, %19, %6, %243, %250, %0
  %266 = phi i32 [ 0, %0 ], [ 0, %6 ], [ 0, %243 ], [ 0, %250 ], [ 0, %13 ], [ 0, %19 ], [ -1, %251 ], [ 0, %239 ], [ -1, %257 ], [ -1, %261 ], !dbg !1206
  ret i32 %266, !dbg !1207
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
define dso_local i32 @freeMemoryIfNeededAndSafe() local_unnamed_addr #0 !dbg !1208 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 282), align 4, !dbg !1209, !tbaa !1211
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !1212
  %3 = or i32 %2, %1, !dbg !1213
  %4 = icmp eq i32 %3, 0, !dbg !1213
  br i1 %4, label %5, label %7, !dbg !1213

; <label>:5:                                      ; preds = %0
  %6 = tail call i32 @freeMemoryIfNeeded() #10, !dbg !1214
  br label %7, !dbg !1215

; <label>:7:                                      ; preds = %0, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %0 ], !dbg !1216
  ret i32 %8, !dbg !1217
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone noreturn nounwind }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin noredzone }

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
!249 = !DILocation(line: 91, column: 35, scope: !239)
!250 = !DILocation(line: 91, column: 24, scope: !239)
!251 = !DILocation(line: 92, column: 24, scope: !252)
!252 = distinct !DILexicalBlock(scope: !239, file: !3, line: 92, column: 9)
!253 = !DILocation(line: 92, column: 18, scope: !252)
!254 = !DILocation(line: 92, column: 21, scope: !252)
!255 = !DILocation(line: 95, column: 43, scope: !256)
!256 = distinct !DILexicalBlock(scope: !252, file: !3, line: 94, column: 12)
!257 = !DILocation(line: 95, column: 28, scope: !256)
!258 = !DILocation(line: 92, column: 9, scope: !239)
!259 = !DILocation(line: 0, scope: !256)
!260 = !DILocation(line: 98, column: 1, scope: !239)
!261 = distinct !DISubprogram(name: "evictionPoolAlloc", scope: !3, file: !3, line: 139, type: !262, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !264)
!262 = !DISubroutineType(types: !263)
!263 = !{null}
!264 = !{!265, !266}
!265 = !DILocalVariable(name: "ep", scope: !261, file: !3, line: 140, type: !196)
!266 = !DILocalVariable(name: "j", scope: !261, file: !3, line: 141, type: !65)
!267 = !DILocation(line: 143, column: 10, scope: !261)
!268 = !DILocation(line: 140, column: 31, scope: !261)
!269 = !DILocation(line: 141, column: 9, scope: !261)
!270 = !DILocation(line: 144, column: 5, scope: !271)
!271 = distinct !DILexicalBlock(scope: !261, file: !3, line: 144, column: 5)
!272 = !DILocation(line: 145, column: 15, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !3, line: 144, column: 39)
!274 = distinct !DILexicalBlock(scope: !271, file: !3, line: 144, column: 5)
!275 = !DILocation(line: 145, column: 20, scope: !273)
!276 = !{!277, !278, i64 0}
!277 = !{!"evictionPoolEntry", !278, i64 0, !281, i64 8, !281, i64 16, !282, i64 24}
!278 = !{!"long long", !279, i64 0}
!279 = !{!"omnipotent char", !280, i64 0}
!280 = !{!"Simple C/C++ TBAA"}
!281 = !{!"any pointer", !279, i64 0}
!282 = !{!"int", !279, i64 0}
!283 = !DILocation(line: 146, column: 15, scope: !273)
!284 = !DILocation(line: 146, column: 19, scope: !273)
!285 = !{!277, !281, i64 8}
!286 = !DILocation(line: 147, column: 24, scope: !273)
!287 = !DILocation(line: 147, column: 15, scope: !273)
!288 = !DILocation(line: 147, column: 22, scope: !273)
!289 = !{!277, !281, i64 16}
!290 = !DILocation(line: 148, column: 15, scope: !273)
!291 = !DILocation(line: 148, column: 20, scope: !273)
!292 = !{!277, !282, i64 24}
!293 = !DILocation(line: 144, column: 35, scope: !274)
!294 = !DILocation(line: 144, column: 19, scope: !274)
!295 = distinct !{!295, !270, !296}
!296 = !DILocation(line: 149, column: 5, scope: !271)
!297 = !DILocation(line: 150, column: 21, scope: !261)
!298 = !{!281, !281, i64 0}
!299 = !DILocation(line: 151, column: 1, scope: !261)
!300 = distinct !DISubprogram(name: "evictionPoolPopulate", scope: !3, file: !3, line: 162, type: !301, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !303)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !65, !95, !95, !196}
!303 = !{!304, !305, !306, !307, !308, !309, !310, !311, !312, !316, !320, !321, !322, !323, !329, !331}
!304 = !DILocalVariable(name: "dbid", arg: 1, scope: !300, file: !3, line: 162, type: !65)
!305 = !DILocalVariable(name: "sampledict", arg: 2, scope: !300, file: !3, line: 162, type: !95)
!306 = !DILocalVariable(name: "keydict", arg: 3, scope: !300, file: !3, line: 162, type: !95)
!307 = !DILocalVariable(name: "pool", arg: 4, scope: !300, file: !3, line: 162, type: !196)
!308 = !DILocalVariable(name: "j", scope: !300, file: !3, line: 163, type: !65)
!309 = !DILocalVariable(name: "k", scope: !300, file: !3, line: 163, type: !65)
!310 = !DILocalVariable(name: "count", scope: !300, file: !3, line: 163, type: !65)
!311 = !DILocalVariable(scope: !300, type: !54, flags: DIFlagArtificial)
!312 = !DILocalVariable(name: "samples", scope: !300, file: !3, line: 164, type: !313)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: !311)
!316 = !DILocalVariable(name: "idle", scope: !317, file: !3, line: 168, type: !200)
!317 = distinct !DILexicalBlock(scope: !318, file: !3, line: 167, column: 33)
!318 = distinct !DILexicalBlock(scope: !319, file: !3, line: 167, column: 5)
!319 = distinct !DILexicalBlock(scope: !300, file: !3, line: 167, column: 5)
!320 = !DILocalVariable(name: "key", scope: !317, file: !3, line: 169, type: !86)
!321 = !DILocalVariable(name: "o", scope: !317, file: !3, line: 170, type: !210)
!322 = !DILocalVariable(name: "de", scope: !317, file: !3, line: 171, type: !133)
!323 = !DILocalVariable(name: "cached", scope: !324, file: !3, line: 226, type: !86)
!324 = distinct !DILexicalBlock(scope: !325, file: !3, line: 221, column: 50)
!325 = distinct !DILexicalBlock(scope: !326, file: !3, line: 221, column: 17)
!326 = distinct !DILexicalBlock(scope: !327, file: !3, line: 218, column: 16)
!327 = distinct !DILexicalBlock(scope: !328, file: !3, line: 216, column: 20)
!328 = distinct !DILexicalBlock(scope: !317, file: !3, line: 212, column: 13)
!329 = !DILocalVariable(name: "cached", scope: !330, file: !3, line: 235, type: !86)
!330 = distinct !DILexicalBlock(scope: !325, file: !3, line: 230, column: 20)
!331 = !DILocalVariable(name: "klen", scope: !317, file: !3, line: 246, type: !65)
!332 = !DILocation(line: 162, column: 31, scope: !300)
!333 = !DILocation(line: 162, column: 43, scope: !300)
!334 = !DILocation(line: 162, column: 61, scope: !300)
!335 = !DILocation(line: 162, column: 96, scope: !300)
!336 = !DILocation(line: 164, column: 31, scope: !300)
!337 = !{!338, !282, i64 2716}
!338 = !{!"redisServer", !282, i64 0, !281, i64 8, !281, i64 16, !281, i64 24, !282, i64 32, !282, i64 36, !282, i64 40, !281, i64 48, !281, i64 56, !281, i64 64, !281, i64 72, !282, i64 80, !282, i64 84, !282, i64 88, !282, i64 92, !281, i64 96, !281, i64 104, !282, i64 112, !282, i64 116, !279, i64 120, !282, i64 164, !339, i64 168, !282, i64 176, !281, i64 184, !281, i64 192, !281, i64 200, !279, i64 208, !282, i64 216, !282, i64 220, !279, i64 224, !282, i64 352, !281, i64 360, !282, i64 368, !279, i64 372, !282, i64 436, !282, i64 440, !279, i64 444, !282, i64 508, !281, i64 512, !281, i64 520, !281, i64 528, !281, i64 536, !281, i64 544, !281, i64 552, !281, i64 560, !282, i64 568, !278, i64 576, !279, i64 584, !281, i64 840, !339, i64 848, !282, i64 856, !282, i64 860, !339, i64 864, !339, i64 872, !339, i64 880, !339, i64 888, !281, i64 896, !281, i64 904, !281, i64 912, !281, i64 920, !281, i64 928, !281, i64 936, !281, i64 944, !281, i64 952, !281, i64 960, !281, i64 968, !281, i64 976, !281, i64 984, !281, i64 992, !339, i64 1000, !278, i64 1008, !278, i64 1016, !278, i64 1024, !340, i64 1032, !278, i64 1040, !278, i64 1048, !278, i64 1056, !278, i64 1064, !278, i64 1072, !278, i64 1080, !278, i64 1088, !278, i64 1096, !278, i64 1104, !339, i64 1112, !278, i64 1120, !340, i64 1128, !278, i64 1136, !278, i64 1144, !278, i64 1152, !278, i64 1160, !281, i64 1168, !278, i64 1176, !278, i64 1184, !339, i64 1192, !341, i64 1200, !278, i64 1240, !278, i64 1248, !339, i64 1256, !339, i64 1264, !279, i64 1272, !282, i64 1728, !282, i64 1732, !282, i64 1736, !282, i64 1740, !282, i64 1744, !339, i64 1752, !282, i64 1760, !282, i64 1764, !282, i64 1768, !282, i64 1772, !339, i64 1776, !339, i64 1784, !282, i64 1792, !282, i64 1796, !282, i64 1800, !282, i64 1804, !279, i64 1808, !282, i64 1880, !282, i64 1884, !281, i64 1888, !282, i64 1896, !282, i64 1900, !339, i64 1904, !339, i64 1912, !339, i64 1920, !339, i64 1928, !282, i64 1936, !282, i64 1940, !281, i64 1944, !281, i64 1952, !282, i64 1960, !282, i64 1964, !339, i64 1968, !339, i64 1976, !339, i64 1984, !339, i64 1992, !282, i64 2000, !339, i64 2008, !282, i64 2016, !282, i64 2020, !282, i64 2024, !282, i64 2028, !282, i64 2032, !282, i64 2036, !282, i64 2040, !282, i64 2044, !282, i64 2048, !282, i64 2052, !282, i64 2056, !282, i64 2060, !282, i64 2064, !281, i64 2072, !278, i64 2080, !278, i64 2088, !282, i64 2096, !281, i64 2104, !282, i64 2112, !281, i64 2120, !282, i64 2128, !282, i64 2132, !339, i64 2136, !339, i64 2144, !339, i64 2152, !339, i64 2160, !282, i64 2168, !282, i64 2172, !282, i64 2176, !282, i64 2180, !282, i64 2184, !282, i64 2188, !279, i64 2192, !342, i64 2200, !343, i64 2224, !281, i64 2240, !282, i64 2248, !281, i64 2256, !282, i64 2264, !279, i64 2268, !279, i64 2309, !278, i64 2352, !278, i64 2360, !282, i64 2368, !282, i64 2372, !281, i64 2376, !278, i64 2384, !278, i64 2392, !278, i64 2400, !278, i64 2408, !339, i64 2416, !339, i64 2424, !282, i64 2432, !282, i64 2436, !282, i64 2440, !282, i64 2444, !282, i64 2448, !281, i64 2456, !281, i64 2464, !282, i64 2472, !282, i64 2476, !281, i64 2480, !281, i64 2488, !282, i64 2496, !282, i64 2500, !339, i64 2504, !339, i64 2512, !339, i64 2520, !282, i64 2528, !282, i64 2532, !281, i64 2536, !339, i64 2544, !282, i64 2552, !282, i64 2556, !282, i64 2560, !339, i64 2568, !282, i64 2576, !282, i64 2580, !282, i64 2584, !281, i64 2592, !279, i64 2600, !278, i64 2648, !282, i64 2656, !281, i64 2664, !281, i64 2672, !282, i64 2680, !281, i64 2688, !282, i64 2696, !282, i64 2700, !278, i64 2704, !282, i64 2712, !282, i64 2716, !282, i64 2720, !282, i64 2724, !278, i64 2728, !282, i64 2736, !279, i64 2740, !281, i64 2768, !281, i64 2776, !282, i64 2784, !282, i64 2788, !282, i64 2792, !282, i64 2796, !339, i64 2800, !339, i64 2808, !339, i64 2816, !339, i64 2824, !339, i64 2832, !339, i64 2840, !339, i64 2848, !339, i64 2856, !282, i64 2864, !282, i64 2868, !339, i64 2872, !339, i64 2880, !282, i64 2888, !278, i64 2896, !281, i64 2904, !281, i64 2912, !282, i64 2920, !282, i64 2924, !278, i64 2928, !281, i64 2936, !281, i64 2944, !282, i64 2952, !282, i64 2956, !282, i64 2960, !282, i64 2964, !281, i64 2968, !282, i64 2976, !282, i64 2980, !282, i64 2984, !281, i64 2992, !281, i64 3000, !281, i64 3008, !281, i64 3016, !278, i64 3024, !278, i64 3032, !278, i64 3040, !282, i64 3048, !282, i64 3052, !282, i64 3056, !282, i64 3060, !282, i64 3064, !282, i64 3068, !282, i64 3072, !282, i64 3076, !282, i64 3080, !282, i64 3084, !282, i64 3088, !278, i64 3096, !281, i64 3104, !281, i64 3112, !281, i64 3120, !282, i64 3128, !282, i64 3132, !282, i64 3136, !339, i64 3144, !281, i64 3152, !281, i64 3160, !281, i64 3168}
!339 = !{!"long", !279, i64 0}
!340 = !{!"double", !279, i64 0}
!341 = !{!"malloc_stats", !339, i64 0, !339, i64 8, !339, i64 16, !339, i64 24, !339, i64 32}
!342 = !{!"", !282, i64 0, !339, i64 8, !278, i64 16}
!343 = !{!"redisOpArray", !281, i64 0, !282, i64 8}
!344 = !DILocation(line: 164, column: 5, scope: !300)
!345 = !DILocation(line: 0, scope: !300)
!346 = !DILocation(line: 164, column: 16, scope: !300)
!347 = !DILocation(line: 166, column: 13, scope: !300)
!348 = !DILocation(line: 163, column: 15, scope: !300)
!349 = !DILocation(line: 163, column: 9, scope: !300)
!350 = !DILocation(line: 170, column: 15, scope: !317)
!351 = !DILocation(line: 167, column: 19, scope: !318)
!352 = !DILocation(line: 167, column: 5, scope: !319)
!353 = !DILocation(line: 173, column: 14, scope: !317)
!354 = !DILocation(line: 171, column: 20, scope: !317)
!355 = !DILocation(line: 174, column: 15, scope: !317)
!356 = !{!357, !281, i64 0}
!357 = !{!"dictEntry", !281, i64 0, !279, i64 8, !281, i64 16}
!358 = !DILocation(line: 169, column: 13, scope: !317)
!359 = !DILocation(line: 179, column: 20, scope: !360)
!360 = distinct !DILexicalBlock(scope: !317, file: !3, line: 179, column: 13)
!361 = !{!338, !282, i64 2712}
!362 = !DILocation(line: 179, column: 37, scope: !360)
!363 = !DILocation(line: 179, column: 13, scope: !317)
!364 = !DILocation(line: 200, column: 39, scope: !365)
!365 = distinct !DILexicalBlock(scope: !366, file: !3, line: 198, column: 71)
!366 = distinct !DILexicalBlock(scope: !367, file: !3, line: 198, column: 20)
!367 = distinct !DILexicalBlock(scope: !368, file: !3, line: 189, column: 20)
!368 = distinct !DILexicalBlock(scope: !317, file: !3, line: 187, column: 13)
!369 = !DILocation(line: 180, column: 17, scope: !370)
!370 = distinct !DILexicalBlock(scope: !360, file: !3, line: 179, column: 64)
!371 = !DILocation(line: 180, column: 45, scope: !372)
!372 = distinct !DILexicalBlock(scope: !370, file: !3, line: 180, column: 17)
!373 = !DILocation(line: 187, column: 20, scope: !368)
!374 = !DILocation(line: 180, column: 40, scope: !372)
!375 = !DILocation(line: 0, scope: !317)
!376 = !DILocation(line: 181, column: 17, scope: !370)
!377 = !{!279, !279, i64 0}
!378 = !DILocation(line: 187, column: 37, scope: !368)
!379 = !DILocation(line: 187, column: 13, scope: !317)
!380 = !DILocation(line: 90, column: 49, scope: !239, inlinedAt: !381)
!381 = distinct !DILocation(line: 188, column: 20, scope: !382)
!382 = distinct !DILexicalBlock(scope: !368, file: !3, line: 187, column: 59)
!383 = !DILocation(line: 81, column: 9, scope: !234, inlinedAt: !384)
!384 = distinct !DILocation(line: 91, column: 35, scope: !239, inlinedAt: !381)
!385 = !DILocation(line: 79, column: 18, scope: !230, inlinedAt: !384)
!386 = !DILocation(line: 91, column: 35, scope: !239, inlinedAt: !381)
!387 = !DILocation(line: 91, column: 24, scope: !239, inlinedAt: !381)
!388 = !DILocation(line: 92, column: 24, scope: !252, inlinedAt: !381)
!389 = !DILocation(line: 92, column: 18, scope: !252, inlinedAt: !381)
!390 = !DILocation(line: 92, column: 21, scope: !252, inlinedAt: !381)
!391 = !DILocation(line: 95, column: 43, scope: !256, inlinedAt: !381)
!392 = !DILocation(line: 95, column: 28, scope: !256, inlinedAt: !381)
!393 = !DILocation(line: 92, column: 9, scope: !239, inlinedAt: !381)
!394 = !DILocation(line: 0, scope: !256, inlinedAt: !381)
!395 = !DILocation(line: 168, column: 28, scope: !317)
!396 = !DILocation(line: 189, column: 9, scope: !382)
!397 = !DILocation(line: 189, column: 44, scope: !367)
!398 = !DILocation(line: 189, column: 20, scope: !368)
!399 = !DILocalVariable(name: "o", arg: 1, scope: !400, file: !3, line: 335, type: !210)
!400 = distinct !DISubprogram(name: "LFUDecrAndReturn", scope: !3, file: !3, line: 335, type: !401, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !403)
!401 = !DISubroutineType(types: !402)
!402 = !{!54, !210}
!403 = !{!399, !404, !405, !406}
!404 = !DILocalVariable(name: "ldt", scope: !400, file: !3, line: 336, type: !54)
!405 = !DILocalVariable(name: "counter", scope: !400, file: !3, line: 337, type: !54)
!406 = !DILocalVariable(name: "num_periods", scope: !400, file: !3, line: 338, type: !54)
!407 = !DILocation(line: 335, column: 38, scope: !400, inlinedAt: !408)
!408 = distinct !DILocation(line: 197, column: 24, scope: !409)
!409 = distinct !DILexicalBlock(scope: !367, file: !3, line: 189, column: 66)
!410 = !DILocation(line: 336, column: 28, scope: !400, inlinedAt: !408)
!411 = !DILocation(line: 337, column: 36, scope: !400, inlinedAt: !408)
!412 = !DILocation(line: 337, column: 29, scope: !400, inlinedAt: !408)
!413 = !DILocation(line: 337, column: 19, scope: !400, inlinedAt: !408)
!414 = !DILocation(line: 338, column: 40, scope: !400, inlinedAt: !408)
!415 = !{!338, !282, i64 2724}
!416 = !DILocation(line: 338, column: 33, scope: !400, inlinedAt: !408)
!417 = !DILocation(line: 336, column: 32, scope: !400, inlinedAt: !408)
!418 = !DILocation(line: 336, column: 25, scope: !400, inlinedAt: !408)
!419 = !DILocation(line: 336, column: 19, scope: !400, inlinedAt: !408)
!420 = !DILocalVariable(name: "ldt", arg: 1, scope: !421, file: !3, line: 307, type: !54)
!421 = distinct !DISubprogram(name: "LFUTimeElapsed", scope: !3, file: !3, line: 307, type: !422, isLocal: false, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !424)
!422 = !DISubroutineType(types: !423)
!423 = !{!54, !54}
!424 = !{!420, !425}
!425 = !DILocalVariable(name: "now", scope: !421, file: !3, line: 308, type: !54)
!426 = !DILocation(line: 307, column: 44, scope: !421, inlinedAt: !427)
!427 = distinct !DILocation(line: 338, column: 57, scope: !400, inlinedAt: !408)
!428 = !DILocation(line: 300, column: 20, scope: !429, inlinedAt: !432)
!429 = distinct !DISubprogram(name: "LFUGetTimeInMinutes", scope: !3, file: !3, line: 299, type: !430, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!430 = !DISubroutineType(types: !431)
!431 = !{!54}
!432 = distinct !DILocation(line: 308, column: 25, scope: !421, inlinedAt: !427)
!433 = !{!338, !339, i64 2872}
!434 = !DILocation(line: 300, column: 28, scope: !429, inlinedAt: !432)
!435 = !DILocation(line: 300, column: 33, scope: !429, inlinedAt: !432)
!436 = !DILocation(line: 308, column: 19, scope: !421, inlinedAt: !427)
!437 = !DILocation(line: 309, column: 13, scope: !438, inlinedAt: !427)
!438 = distinct !DILexicalBlock(scope: !421, file: !3, line: 309, column: 9)
!439 = !DILocation(line: 309, column: 9, scope: !421, inlinedAt: !427)
!440 = !DILocation(line: 338, column: 79, scope: !400, inlinedAt: !408)
!441 = !DILocation(line: 338, column: 77, scope: !400, inlinedAt: !408)
!442 = !DILocation(line: 338, column: 19, scope: !400, inlinedAt: !408)
!443 = !DILocation(line: 339, column: 9, scope: !444, inlinedAt: !408)
!444 = distinct !DILexicalBlock(scope: !400, file: !3, line: 339, column: 9)
!445 = !DILocation(line: 339, column: 9, scope: !400, inlinedAt: !408)
!446 = !DILocation(line: 340, column: 19, scope: !444, inlinedAt: !408)
!447 = !DILocation(line: 340, column: 9, scope: !444, inlinedAt: !408)
!448 = !DILocation(line: 0, scope: !400, inlinedAt: !408)
!449 = !DILocation(line: 197, column: 23, scope: !409)
!450 = !DILocation(line: 198, column: 9, scope: !409)
!451 = !DILocation(line: 198, column: 44, scope: !366)
!452 = !DILocation(line: 198, column: 20, scope: !367)
!453 = !DILocation(line: 200, column: 31, scope: !365)
!454 = !DILocation(line: 202, column: 13, scope: !455)
!455 = distinct !DILexicalBlock(scope: !366, file: !3, line: 201, column: 16)
!456 = !DILocation(line: 0, scope: !365)
!457 = !DILocation(line: 163, column: 12, scope: !300)
!458 = !DILocation(line: 210, column: 24, scope: !317)
!459 = !DILocation(line: 210, column: 16, scope: !317)
!460 = !DILocation(line: 210, column: 28, scope: !317)
!461 = !DILocation(line: 211, column: 24, scope: !317)
!462 = !DILocation(line: 211, column: 29, scope: !317)
!463 = !DILocation(line: 209, column: 9, scope: !317)
!464 = !DILocation(line: 212, column: 43, scope: !328)
!465 = !DILocation(line: 212, column: 47, scope: !328)
!466 = !DILocation(line: 212, column: 13, scope: !317)
!467 = !DILocation(line: 216, column: 51, scope: !327)
!468 = !DILocation(line: 216, column: 20, scope: !328)
!469 = !DILocation(line: 221, column: 37, scope: !325)
!470 = !DILocation(line: 221, column: 41, scope: !325)
!471 = !DILocation(line: 221, column: 17, scope: !326)
!472 = !DILocation(line: 226, column: 50, scope: !324)
!473 = !DILocation(line: 226, column: 21, scope: !324)
!474 = !DILocation(line: 227, column: 29, scope: !324)
!475 = !DILocation(line: 227, column: 31, scope: !324)
!476 = !DILocation(line: 227, column: 25, scope: !324)
!477 = !DILocation(line: 227, column: 34, scope: !324)
!478 = !DILocation(line: 228, column: 36, scope: !324)
!479 = !DILocation(line: 227, column: 17, scope: !324)
!480 = !DILocation(line: 229, column: 25, scope: !324)
!481 = !DILocation(line: 229, column: 32, scope: !324)
!482 = !DILocation(line: 230, column: 13, scope: !324)
!483 = !DILocation(line: 232, column: 18, scope: !330)
!484 = !DILocation(line: 235, column: 38, scope: !330)
!485 = !DILocation(line: 235, column: 21, scope: !330)
!486 = !DILocation(line: 236, column: 33, scope: !487)
!487 = distinct !DILexicalBlock(scope: !330, file: !3, line: 236, column: 21)
!488 = !DILocation(line: 236, column: 21, scope: !330)
!489 = !DILocation(line: 236, column: 52, scope: !487)
!490 = !DILocation(line: 237, column: 53, scope: !330)
!491 = !DILocation(line: 237, column: 52, scope: !330)
!492 = !DILocation(line: 237, column: 17, scope: !330)
!493 = !DILocation(line: 238, column: 25, scope: !330)
!494 = !DILocation(line: 238, column: 32, scope: !330)
!495 = !DILocation(line: 0, scope: !330)
!496 = !DILocalVariable(name: "s", arg: 1, scope: !497, file: !13, line: 87, type: !502)
!497 = distinct !DISubprogram(name: "sdslen", scope: !13, file: !13, line: 87, type: !498, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !503)
!498 = !DISubroutineType(types: !499)
!499 = !{!500, !502}
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !501, line: 58, baseType: !54)
!501 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!503 = !{!496, !504}
!504 = !DILocalVariable(name: "flags", scope: !497, file: !13, line: 88, type: !20)
!505 = !DILocation(line: 87, column: 39, scope: !497, inlinedAt: !506)
!506 = distinct !DILocation(line: 246, column: 20, scope: !317)
!507 = !DILocation(line: 88, column: 27, scope: !497, inlinedAt: !506)
!508 = !DILocation(line: 88, column: 19, scope: !497, inlinedAt: !506)
!509 = !DILocation(line: 89, column: 5, scope: !497, inlinedAt: !506)
!510 = !DILocation(line: 91, column: 20, scope: !511, inlinedAt: !506)
!511 = distinct !DILexicalBlock(scope: !497, file: !13, line: 89, column: 33)
!512 = !DILocation(line: 91, column: 13, scope: !511, inlinedAt: !506)
!513 = !DILocation(line: 93, column: 20, scope: !511, inlinedAt: !506)
!514 = !DILocation(line: 93, column: 34, scope: !511, inlinedAt: !506)
!515 = !DILocation(line: 93, column: 13, scope: !511, inlinedAt: !506)
!516 = !DILocation(line: 95, column: 20, scope: !511, inlinedAt: !506)
!517 = !DILocation(line: 95, column: 35, scope: !511, inlinedAt: !506)
!518 = !{!519, !519, i64 0}
!519 = !{!"short", !279, i64 0}
!520 = !DILocation(line: 95, column: 13, scope: !511, inlinedAt: !506)
!521 = !DILocation(line: 97, column: 20, scope: !511, inlinedAt: !506)
!522 = !DILocation(line: 97, column: 35, scope: !511, inlinedAt: !506)
!523 = !{!282, !282, i64 0}
!524 = !DILocation(line: 97, column: 13, scope: !511, inlinedAt: !506)
!525 = !DILocation(line: 99, column: 20, scope: !511, inlinedAt: !506)
!526 = !DILocation(line: 99, column: 35, scope: !511, inlinedAt: !506)
!527 = !{!339, !339, i64 0}
!528 = !DILocation(line: 99, column: 13, scope: !511, inlinedAt: !506)
!529 = !DILocation(line: 0, scope: !511, inlinedAt: !506)
!530 = !DILocation(line: 246, column: 20, scope: !317)
!531 = !DILocation(line: 246, column: 13, scope: !317)
!532 = !DILocation(line: 247, column: 18, scope: !533)
!533 = distinct !DILexicalBlock(scope: !317, file: !3, line: 247, column: 13)
!534 = !DILocation(line: 247, column: 13, scope: !317)
!535 = !DILocation(line: 248, column: 27, scope: !536)
!536 = distinct !DILexicalBlock(scope: !533, file: !3, line: 247, column: 44)
!537 = !DILocation(line: 248, column: 13, scope: !536)
!538 = !DILocation(line: 248, column: 21, scope: !536)
!539 = !DILocation(line: 248, column: 25, scope: !536)
!540 = !DILocation(line: 249, column: 9, scope: !536)
!541 = !DILocation(line: 250, column: 20, scope: !542)
!542 = distinct !DILexicalBlock(scope: !533, file: !3, line: 249, column: 16)
!543 = !DILocation(line: 250, column: 28, scope: !542)
!544 = !DILocation(line: 250, column: 39, scope: !542)
!545 = !DILocation(line: 250, column: 13, scope: !542)
!546 = !DILocation(line: 251, column: 31, scope: !542)
!547 = !DILocation(line: 251, column: 38, scope: !542)
!548 = !DILocalVariable(name: "s", arg: 1, scope: !549, file: !13, line: 130, type: !86)
!549 = distinct !DISubprogram(name: "sdssetlen", scope: !13, file: !13, line: 130, type: !550, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !552)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !86, !500}
!552 = !{!548, !553, !554, !555}
!553 = !DILocalVariable(name: "newlen", arg: 2, scope: !549, file: !13, line: 130, type: !500)
!554 = !DILocalVariable(name: "flags", scope: !549, file: !13, line: 131, type: !20)
!555 = !DILocalVariable(name: "fp", scope: !556, file: !13, line: 135, type: !58)
!556 = distinct !DILexicalBlock(scope: !557, file: !13, line: 134, column: 13)
!557 = distinct !DILexicalBlock(scope: !549, file: !13, line: 132, column: 33)
!558 = !DILocation(line: 130, column: 34, scope: !549, inlinedAt: !559)
!559 = distinct !DILocation(line: 251, column: 13, scope: !542)
!560 = !DILocation(line: 130, column: 44, scope: !549, inlinedAt: !559)
!561 = !DILocation(line: 131, column: 27, scope: !549, inlinedAt: !559)
!562 = !DILocation(line: 131, column: 19, scope: !549, inlinedAt: !559)
!563 = !DILocation(line: 132, column: 5, scope: !549, inlinedAt: !559)
!564 = !DILocation(line: 135, column: 32, scope: !556, inlinedAt: !559)
!565 = !DILocation(line: 136, column: 23, scope: !556, inlinedAt: !559)
!566 = !DILocation(line: 136, column: 21, scope: !556, inlinedAt: !559)
!567 = !DILocation(line: 138, column: 13, scope: !557, inlinedAt: !559)
!568 = !DILocation(line: 140, column: 33, scope: !557, inlinedAt: !559)
!569 = !DILocation(line: 140, column: 13, scope: !557, inlinedAt: !559)
!570 = !DILocation(line: 140, column: 31, scope: !557, inlinedAt: !559)
!571 = !DILocation(line: 141, column: 13, scope: !557, inlinedAt: !559)
!572 = !DILocation(line: 143, column: 34, scope: !557, inlinedAt: !559)
!573 = !DILocation(line: 143, column: 13, scope: !557, inlinedAt: !559)
!574 = !DILocation(line: 143, column: 28, scope: !557, inlinedAt: !559)
!575 = !DILocation(line: 143, column: 32, scope: !557, inlinedAt: !559)
!576 = !DILocation(line: 144, column: 13, scope: !557, inlinedAt: !559)
!577 = !DILocation(line: 146, column: 34, scope: !557, inlinedAt: !559)
!578 = !DILocation(line: 146, column: 13, scope: !557, inlinedAt: !559)
!579 = !DILocation(line: 146, column: 28, scope: !557, inlinedAt: !559)
!580 = !DILocation(line: 146, column: 32, scope: !557, inlinedAt: !559)
!581 = !DILocation(line: 147, column: 13, scope: !557, inlinedAt: !559)
!582 = !DILocation(line: 149, column: 13, scope: !557, inlinedAt: !559)
!583 = !DILocation(line: 149, column: 28, scope: !557, inlinedAt: !559)
!584 = !DILocation(line: 149, column: 32, scope: !557, inlinedAt: !559)
!585 = !DILocation(line: 150, column: 13, scope: !557, inlinedAt: !559)
!586 = !DILocation(line: 252, column: 35, scope: !542)
!587 = !DILocation(line: 252, column: 21, scope: !542)
!588 = !DILocation(line: 252, column: 25, scope: !542)
!589 = !DILocation(line: 254, column: 9, scope: !317)
!590 = !DILocation(line: 254, column: 17, scope: !317)
!591 = !DILocation(line: 254, column: 22, scope: !317)
!592 = !DILocation(line: 255, column: 17, scope: !317)
!593 = !DILocation(line: 255, column: 22, scope: !317)
!594 = !DILocation(line: 256, column: 5, scope: !318)
!595 = !DILocation(line: 167, column: 29, scope: !318)
!596 = distinct !{!596, !352, !597}
!597 = !DILocation(line: 256, column: 5, scope: !319)
!598 = !DILocation(line: 257, column: 1, scope: !300)
!599 = !DILocation(line: 335, column: 38, scope: !400)
!600 = !DILocation(line: 336, column: 28, scope: !400)
!601 = !DILocation(line: 337, column: 36, scope: !400)
!602 = !DILocation(line: 337, column: 29, scope: !400)
!603 = !DILocation(line: 337, column: 19, scope: !400)
!604 = !DILocation(line: 338, column: 40, scope: !400)
!605 = !DILocation(line: 338, column: 33, scope: !400)
!606 = !DILocation(line: 336, column: 32, scope: !400)
!607 = !DILocation(line: 336, column: 25, scope: !400)
!608 = !DILocation(line: 336, column: 19, scope: !400)
!609 = !DILocation(line: 307, column: 44, scope: !421, inlinedAt: !610)
!610 = distinct !DILocation(line: 338, column: 57, scope: !400)
!611 = !DILocation(line: 300, column: 20, scope: !429, inlinedAt: !612)
!612 = distinct !DILocation(line: 308, column: 25, scope: !421, inlinedAt: !610)
!613 = !DILocation(line: 300, column: 28, scope: !429, inlinedAt: !612)
!614 = !DILocation(line: 300, column: 33, scope: !429, inlinedAt: !612)
!615 = !DILocation(line: 308, column: 19, scope: !421, inlinedAt: !610)
!616 = !DILocation(line: 309, column: 13, scope: !438, inlinedAt: !610)
!617 = !DILocation(line: 309, column: 9, scope: !421, inlinedAt: !610)
!618 = !DILocation(line: 338, column: 79, scope: !400)
!619 = !DILocation(line: 338, column: 77, scope: !400)
!620 = !DILocation(line: 338, column: 19, scope: !400)
!621 = !DILocation(line: 339, column: 9, scope: !444)
!622 = !DILocation(line: 339, column: 9, scope: !400)
!623 = !DILocation(line: 340, column: 19, scope: !444)
!624 = !DILocation(line: 340, column: 9, scope: !444)
!625 = !DILocation(line: 0, scope: !400)
!626 = !DILocation(line: 341, column: 5, scope: !400)
!627 = !DILocation(line: 300, column: 20, scope: !429)
!628 = !DILocation(line: 300, column: 28, scope: !429)
!629 = !DILocation(line: 300, column: 33, scope: !429)
!630 = !DILocation(line: 300, column: 5, scope: !429)
!631 = !DILocation(line: 307, column: 44, scope: !421)
!632 = !DILocation(line: 300, column: 20, scope: !429, inlinedAt: !633)
!633 = distinct !DILocation(line: 308, column: 25, scope: !421)
!634 = !DILocation(line: 300, column: 28, scope: !429, inlinedAt: !633)
!635 = !DILocation(line: 300, column: 33, scope: !429, inlinedAt: !633)
!636 = !DILocation(line: 308, column: 19, scope: !421)
!637 = !DILocation(line: 309, column: 13, scope: !438)
!638 = !DILocation(line: 309, column: 9, scope: !421)
!639 = !DILocation(line: 311, column: 1, scope: !421)
!640 = distinct !DISubprogram(name: "LFULogIncr", scope: !3, file: !3, line: 315, type: !641, isLocal: false, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !643)
!641 = !DISubroutineType(types: !642)
!642 = !{!16, !16}
!643 = !{!644, !645, !646, !647}
!644 = !DILocalVariable(name: "counter", arg: 1, scope: !640, file: !3, line: 315, type: !16)
!645 = !DILocalVariable(name: "r", scope: !640, file: !3, line: 317, type: !8)
!646 = !DILocalVariable(name: "baseval", scope: !640, file: !3, line: 318, type: !8)
!647 = !DILocalVariable(name: "p", scope: !640, file: !3, line: 320, type: !8)
!648 = !DILocation(line: 315, column: 28, scope: !640)
!649 = !DILocation(line: 316, column: 17, scope: !650)
!650 = distinct !DILexicalBlock(scope: !640, file: !3, line: 316, column: 9)
!651 = !DILocation(line: 316, column: 9, scope: !640)
!652 = !DILocation(line: 316, column: 9, scope: !650)
!653 = !DILocation(line: 317, column: 24, scope: !640)
!654 = !DILocation(line: 317, column: 16, scope: !640)
!655 = !DILocation(line: 317, column: 12, scope: !640)
!656 = !DILocation(line: 318, column: 30, scope: !640)
!657 = !DILocation(line: 318, column: 22, scope: !640)
!658 = !DILocation(line: 318, column: 12, scope: !640)
!659 = !DILocation(line: 319, column: 17, scope: !660)
!660 = distinct !DILexicalBlock(scope: !640, file: !3, line: 319, column: 9)
!661 = !DILocation(line: 319, column: 9, scope: !640)
!662 = !DILocation(line: 320, column: 36, scope: !640)
!663 = !{!338, !282, i64 2720}
!664 = !DILocation(line: 320, column: 29, scope: !640)
!665 = !DILocation(line: 320, column: 28, scope: !640)
!666 = !DILocation(line: 320, column: 50, scope: !640)
!667 = !DILocation(line: 317, column: 30, scope: !640)
!668 = !DILocation(line: 320, column: 12, scope: !640)
!669 = !DILocation(line: 321, column: 11, scope: !670)
!670 = distinct !DILexicalBlock(scope: !640, file: !3, line: 321, column: 9)
!671 = !DILocation(line: 321, column: 9, scope: !640)
!672 = !DILocation(line: 0, scope: !640)
!673 = !DILocation(line: 323, column: 1, scope: !640)
!674 = distinct !DISubprogram(name: "freeMemoryGetNotCountedMemory", scope: !3, file: !3, line: 352, type: !675, isLocal: false, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !677)
!675 = !DISubroutineType(types: !676)
!676 = !{!68}
!677 = !{!678, !679, !680, !688, !689}
!678 = !DILocalVariable(name: "overhead", scope: !674, file: !3, line: 353, type: !68)
!679 = !DILocalVariable(name: "slaves", scope: !674, file: !3, line: 354, type: !65)
!680 = !DILocalVariable(name: "li", scope: !681, file: !3, line: 357, type: !683)
!681 = distinct !DILexicalBlock(scope: !682, file: !3, line: 356, column: 17)
!682 = distinct !DILexicalBlock(scope: !674, file: !3, line: 356, column: 9)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !165, line: 45, baseType: !684)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !165, line: 42, size: 128, elements: !685)
!685 = !{!686, !687}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !684, file: !165, line: 43, baseType: !169, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !684, file: !165, line: 44, baseType: !65, size: 32, offset: 64)
!688 = !DILocalVariable(name: "ln", scope: !681, file: !3, line: 358, type: !169)
!689 = !DILocalVariable(name: "slave", scope: !690, file: !3, line: 362, type: !691)
!690 = distinct !DILexicalBlock(scope: !681, file: !3, line: 361, column: 37)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !76, line: 780, baseType: !693)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !76, line: 723, size: 135360, elements: !694)
!694 = !{!695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !706, !730, !731, !732, !733, !734, !735, !736, !737, !740, !741, !742, !743, !744, !745, !746, !747, !752, !753, !754, !755, !756, !757, !758, !759, !763, !764, !768, !769, !785, !786, !802, !803, !804, !805, !806, !807, !808, !809}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !693, file: !76, line: 724, baseType: !52, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !693, file: !76, line: 725, baseType: !65, size: 32, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !693, file: !76, line: 726, baseType: !90, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !693, file: !76, line: 727, baseType: !210, size: 64, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !693, file: !76, line: 728, baseType: !86, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !693, file: !76, line: 729, baseType: !68, size: 64, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !693, file: !76, line: 730, baseType: !86, size: 64, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !693, file: !76, line: 734, baseType: !68, size: 64, offset: 448)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !693, file: !76, line: 735, baseType: !65, size: 32, offset: 512)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !693, file: !76, line: 736, baseType: !705, size: 64, offset: 576)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !693, file: !76, line: 737, baseType: !707, size: 64, offset: 640)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !76, line: 1307, size: 640, elements: !709)
!709 = !{!710, !711, !716, !717, !718, !719, !725, !726, !727, !728, !729}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !708, file: !76, line: 1308, baseType: !87, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !708, file: !76, line: 1309, baseType: !712, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !76, line: 1305, baseType: !714)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !691}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !708, file: !76, line: 1310, baseType: !65, size: 32, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !708, file: !76, line: 1311, baseType: !87, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !708, file: !76, line: 1312, baseType: !65, size: 32, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !708, file: !76, line: 1315, baseType: !720, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !76, line: 1306, baseType: !722)
!722 = !DISubroutineType(types: !723)
!723 = !{!724, !707, !705, !65, !724}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !708, file: !76, line: 1317, baseType: !65, size: 32, offset: 384)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !708, file: !76, line: 1318, baseType: !65, size: 32, offset: 416)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !708, file: !76, line: 1319, baseType: !65, size: 32, offset: 448)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !708, file: !76, line: 1320, baseType: !10, size: 64, offset: 512)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !708, file: !76, line: 1320, baseType: !10, size: 64, offset: 576)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !693, file: !76, line: 737, baseType: !707, size: 64, offset: 704)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !693, file: !76, line: 738, baseType: !65, size: 32, offset: 768)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !693, file: !76, line: 739, baseType: !65, size: 32, offset: 800)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !693, file: !76, line: 740, baseType: !6, size: 64, offset: 832)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !693, file: !76, line: 741, baseType: !163, size: 64, offset: 896)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !693, file: !76, line: 742, baseType: !200, size: 64, offset: 960)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !693, file: !76, line: 743, baseType: !68, size: 64, offset: 1024)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !693, file: !76, line: 745, baseType: !738, size: 64, offset: 1088)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !739, line: 34, baseType: !6)
!739 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!740 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !693, file: !76, line: 746, baseType: !738, size: 64, offset: 1152)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !693, file: !76, line: 747, baseType: !738, size: 64, offset: 1216)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !693, file: !76, line: 748, baseType: !65, size: 32, offset: 1280)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !693, file: !76, line: 749, baseType: !65, size: 32, offset: 1312)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !693, file: !76, line: 750, baseType: !65, size: 32, offset: 1344)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !693, file: !76, line: 751, baseType: !65, size: 32, offset: 1376)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !693, file: !76, line: 752, baseType: !65, size: 32, offset: 1408)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !693, file: !76, line: 753, baseType: !748, size: 64, offset: 1472)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !749, line: 173, baseType: !750)
!749 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !71, line: 100, baseType: !751)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !71, line: 44, baseType: !6)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !693, file: !76, line: 754, baseType: !748, size: 64, offset: 1536)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !693, file: !76, line: 755, baseType: !86, size: 64, offset: 1600)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !693, file: !76, line: 756, baseType: !10, size: 64, offset: 1664)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !693, file: !76, line: 757, baseType: !10, size: 64, offset: 1728)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !693, file: !76, line: 758, baseType: !10, size: 64, offset: 1792)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !693, file: !76, line: 759, baseType: !10, size: 64, offset: 1856)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !693, file: !76, line: 760, baseType: !10, size: 64, offset: 1920)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !693, file: !76, line: 763, baseType: !760, size: 328, offset: 1984)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 328, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 41)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !693, file: !76, line: 764, baseType: !65, size: 32, offset: 2336)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !693, file: !76, line: 765, baseType: !765, size: 368, offset: 2368)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 368, elements: !766)
!766 = !{!767}
!767 = !DISubrange(count: 46)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !693, file: !76, line: 766, baseType: !65, size: 32, offset: 2752)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !693, file: !76, line: 767, baseType: !770, size: 256, offset: 2816)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !76, line: 673, baseType: !771)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !76, line: 665, size: 256, elements: !772)
!772 = !{!773, !781, !782, !783, !784}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !771, file: !76, line: 666, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !76, line: 663, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !76, line: 659, size: 192, elements: !777)
!777 = !{!778, !779, !780}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !776, file: !76, line: 660, baseType: !705, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !776, file: !76, line: 661, baseType: !65, size: 32, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !776, file: !76, line: 662, baseType: !707, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !771, file: !76, line: 667, baseType: !65, size: 32, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !771, file: !76, line: 668, baseType: !65, size: 32, offset: 96)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !771, file: !76, line: 671, baseType: !65, size: 32, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !771, file: !76, line: 672, baseType: !738, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !693, file: !76, line: 768, baseType: !65, size: 32, offset: 3072)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !693, file: !76, line: 769, baseType: !787, size: 704, offset: 3136)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !76, line: 703, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !76, line: 677, size: 704, elements: !789)
!789 = !{!790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !788, file: !76, line: 679, baseType: !75, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !788, file: !76, line: 683, baseType: !95, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !788, file: !76, line: 685, baseType: !210, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !788, file: !76, line: 689, baseType: !68, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !788, file: !76, line: 690, baseType: !210, size: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !788, file: !76, line: 691, baseType: !210, size: 64, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !788, file: !76, line: 692, baseType: !75, size: 64, offset: 384)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !788, file: !76, line: 692, baseType: !75, size: 64, offset: 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !788, file: !76, line: 693, baseType: !65, size: 32, offset: 512)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !788, file: !76, line: 696, baseType: !65, size: 32, offset: 544)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !788, file: !76, line: 697, baseType: !10, size: 64, offset: 576)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !788, file: !76, line: 700, baseType: !7, size: 64, offset: 640)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !693, file: !76, line: 770, baseType: !10, size: 64, offset: 3840)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !693, file: !76, line: 771, baseType: !163, size: 64, offset: 3904)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !693, file: !76, line: 772, baseType: !95, size: 64, offset: 3968)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !693, file: !76, line: 773, baseType: !163, size: 64, offset: 4032)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !693, file: !76, line: 774, baseType: !86, size: 64, offset: 4096)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !693, file: !76, line: 775, baseType: !169, size: 64, offset: 4160)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !693, file: !76, line: 778, baseType: !65, size: 32, offset: 4224)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !693, file: !76, line: 779, baseType: !810, size: 131072, offset: 4256)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 131072, elements: !811)
!811 = !{!812}
!812 = !DISubrange(count: 16384)
!813 = !DILocation(line: 353, column: 12, scope: !674)
!814 = !DILocation(line: 354, column: 18, scope: !674)
!815 = !{!338, !281, i64 536}
!816 = !{!817, !339, i64 40}
!817 = !{!"list", !281, i64 0, !281, i64 8, !281, i64 16, !281, i64 24, !281, i64 32, !339, i64 40}
!818 = !DILocation(line: 354, column: 9, scope: !674)
!819 = !DILocation(line: 356, column: 9, scope: !682)
!820 = !DILocation(line: 356, column: 9, scope: !674)
!821 = !DILocation(line: 357, column: 9, scope: !681)
!822 = !DILocation(line: 357, column: 18, scope: !681)
!823 = !DILocation(line: 360, column: 9, scope: !681)
!824 = !DILocation(line: 361, column: 21, scope: !681)
!825 = !DILocation(line: 358, column: 19, scope: !681)
!826 = !DILocation(line: 361, column: 9, scope: !681)
!827 = !DILocation(line: 362, column: 29, scope: !690)
!828 = !{!829, !281, i64 16}
!829 = !{!"listNode", !281, i64 0, !281, i64 8, !281, i64 16}
!830 = !DILocation(line: 362, column: 21, scope: !690)
!831 = !DILocation(line: 363, column: 25, scope: !690)
!832 = !DILocation(line: 363, column: 22, scope: !690)
!833 = distinct !{!833, !826, !834}
!834 = !DILocation(line: 364, column: 9, scope: !681)
!835 = !DILocation(line: 0, scope: !690)
!836 = !DILocation(line: 365, column: 5, scope: !682)
!837 = !DILocation(line: 365, column: 5, scope: !681)
!838 = !DILocation(line: 366, column: 16, scope: !839)
!839 = distinct !DILexicalBlock(scope: !674, file: !3, line: 366, column: 9)
!840 = !{!338, !282, i64 1880}
!841 = !DILocation(line: 366, column: 26, scope: !839)
!842 = !DILocation(line: 366, column: 9, scope: !674)
!843 = !DILocation(line: 367, column: 37, scope: !844)
!844 = distinct !DILexicalBlock(scope: !839, file: !3, line: 366, column: 38)
!845 = !{!338, !281, i64 1952}
!846 = !DILocalVariable(name: "s", arg: 1, scope: !847, file: !13, line: 180, type: !502)
!847 = distinct !DISubprogram(name: "sdsalloc", scope: !13, file: !13, line: 180, type: !498, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !848)
!848 = !{!846, !849}
!849 = !DILocalVariable(name: "flags", scope: !847, file: !13, line: 181, type: !20)
!850 = !DILocation(line: 180, column: 41, scope: !847, inlinedAt: !851)
!851 = distinct !DILocation(line: 367, column: 21, scope: !844)
!852 = !DILocation(line: 181, column: 27, scope: !847, inlinedAt: !851)
!853 = !DILocation(line: 181, column: 19, scope: !847, inlinedAt: !851)
!854 = !DILocation(line: 182, column: 5, scope: !847, inlinedAt: !851)
!855 = !DILocation(line: 184, column: 20, scope: !856, inlinedAt: !851)
!856 = distinct !DILexicalBlock(scope: !847, file: !13, line: 182, column: 33)
!857 = !DILocation(line: 184, column: 13, scope: !856, inlinedAt: !851)
!858 = !DILocation(line: 186, column: 34, scope: !856, inlinedAt: !851)
!859 = !DILocation(line: 186, column: 20, scope: !856, inlinedAt: !851)
!860 = !DILocation(line: 186, column: 13, scope: !856, inlinedAt: !851)
!861 = !DILocation(line: 188, column: 35, scope: !856, inlinedAt: !851)
!862 = !DILocation(line: 188, column: 20, scope: !856, inlinedAt: !851)
!863 = !DILocation(line: 188, column: 13, scope: !856, inlinedAt: !851)
!864 = !DILocation(line: 190, column: 35, scope: !856, inlinedAt: !851)
!865 = !DILocation(line: 190, column: 20, scope: !856, inlinedAt: !851)
!866 = !DILocation(line: 190, column: 13, scope: !856, inlinedAt: !851)
!867 = !DILocation(line: 192, column: 35, scope: !856, inlinedAt: !851)
!868 = !DILocation(line: 192, column: 13, scope: !856, inlinedAt: !851)
!869 = !DILocation(line: 0, scope: !856, inlinedAt: !851)
!870 = !DILocation(line: 367, column: 46, scope: !844)
!871 = !DILocation(line: 367, column: 45, scope: !844)
!872 = !DILocation(line: 367, column: 18, scope: !844)
!873 = !DILocation(line: 368, column: 5, scope: !844)
!874 = !DILocation(line: 0, scope: !674)
!875 = !DILocation(line: 369, column: 5, scope: !674)
!876 = distinct !DISubprogram(name: "getMaxmemoryState", scope: !3, file: !3, line: 396, type: !877, isLocal: false, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !881)
!877 = !DISubroutineType(types: !878)
!878 = !{!65, !879, !879, !879, !880}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!881 = !{!882, !883, !884, !885, !886, !887, !888, !889, !890}
!882 = !DILocalVariable(name: "total", arg: 1, scope: !876, file: !3, line: 396, type: !879)
!883 = !DILocalVariable(name: "logical", arg: 2, scope: !876, file: !3, line: 396, type: !879)
!884 = !DILocalVariable(name: "tofree", arg: 3, scope: !876, file: !3, line: 396, type: !879)
!885 = !DILocalVariable(name: "level", arg: 4, scope: !876, file: !3, line: 396, type: !880)
!886 = !DILocalVariable(name: "mem_reported", scope: !876, file: !3, line: 397, type: !68)
!887 = !DILocalVariable(name: "mem_used", scope: !876, file: !3, line: 397, type: !68)
!888 = !DILocalVariable(name: "mem_tofree", scope: !876, file: !3, line: 397, type: !68)
!889 = !DILocalVariable(name: "return_ok_asap", scope: !876, file: !3, line: 405, type: !65)
!890 = !DILocalVariable(name: "overhead", scope: !876, file: !3, line: 411, type: !68)
!891 = !DILocation(line: 396, column: 31, scope: !876)
!892 = !DILocation(line: 396, column: 46, scope: !876)
!893 = !DILocation(line: 396, column: 63, scope: !876)
!894 = !DILocation(line: 396, column: 78, scope: !876)
!895 = !DILocation(line: 401, column: 20, scope: !876)
!896 = !DILocation(line: 397, column: 12, scope: !876)
!897 = !DILocation(line: 402, column: 9, scope: !898)
!898 = distinct !DILexicalBlock(scope: !876, file: !3, line: 402, column: 9)
!899 = !DILocation(line: 402, column: 9, scope: !876)
!900 = !DILocation(line: 402, column: 23, scope: !898)
!901 = !DILocation(line: 402, column: 16, scope: !898)
!902 = !DILocation(line: 405, column: 34, scope: !876)
!903 = !{!338, !278, i64 2704}
!904 = !DILocation(line: 405, column: 27, scope: !876)
!905 = !DILocation(line: 405, column: 60, scope: !876)
!906 = !DILocation(line: 405, column: 44, scope: !876)
!907 = !DILocation(line: 406, column: 9, scope: !908)
!908 = distinct !DILexicalBlock(scope: !876, file: !3, line: 406, column: 9)
!909 = !DILocation(line: 406, column: 28, scope: !908)
!910 = !DILocation(line: 406, column: 24, scope: !908)
!911 = !DILocation(line: 397, column: 26, scope: !876)
!912 = !DILocation(line: 411, column: 23, scope: !876)
!913 = !DILocation(line: 411, column: 12, scope: !876)
!914 = !DILocation(line: 412, column: 16, scope: !876)
!915 = !DILocation(line: 415, column: 9, scope: !876)
!916 = !DILocation(line: 416, column: 21, scope: !917)
!917 = distinct !DILexicalBlock(scope: !918, file: !3, line: 416, column: 13)
!918 = distinct !DILexicalBlock(scope: !919, file: !3, line: 415, column: 16)
!919 = distinct !DILexicalBlock(scope: !876, file: !3, line: 415, column: 9)
!920 = !DILocation(line: 416, column: 14, scope: !917)
!921 = !DILocation(line: 416, column: 13, scope: !918)
!922 = !DILocation(line: 419, column: 22, scope: !923)
!923 = distinct !DILexicalBlock(scope: !917, file: !3, line: 418, column: 16)
!924 = !DILocation(line: 419, column: 40, scope: !923)
!925 = !DILocation(line: 419, column: 38, scope: !923)
!926 = !DILocation(line: 0, scope: !923)
!927 = !{!928, !928, i64 0}
!928 = !{!"float", !279, i64 0}
!929 = !DILocation(line: 423, column: 9, scope: !876)
!930 = !DILocation(line: 426, column: 28, scope: !931)
!931 = distinct !DILexicalBlock(scope: !876, file: !3, line: 426, column: 9)
!932 = !DILocation(line: 426, column: 18, scope: !931)
!933 = !DILocation(line: 426, column: 9, scope: !876)
!934 = !DILocation(line: 429, column: 27, scope: !876)
!935 = !DILocation(line: 397, column: 36, scope: !876)
!936 = !DILocation(line: 431, column: 9, scope: !937)
!937 = distinct !DILexicalBlock(scope: !876, file: !3, line: 431, column: 9)
!938 = !DILocation(line: 431, column: 9, scope: !876)
!939 = !DILocation(line: 431, column: 27, scope: !937)
!940 = !DILocation(line: 431, column: 18, scope: !937)
!941 = !DILocation(line: 432, column: 9, scope: !942)
!942 = distinct !DILexicalBlock(scope: !876, file: !3, line: 432, column: 9)
!943 = !DILocation(line: 432, column: 9, scope: !876)
!944 = !DILocation(line: 432, column: 25, scope: !942)
!945 = !DILocation(line: 432, column: 17, scope: !942)
!946 = !DILocation(line: 0, scope: !908)
!947 = !DILocation(line: 435, column: 1, scope: !876)
!948 = !DILocation(line: 449, column: 16, scope: !949)
!949 = distinct !DILexicalBlock(scope: !62, file: !3, line: 449, column: 9)
!950 = !{!338, !281, i64 2464}
!951 = !DILocation(line: 449, column: 9, scope: !949)
!952 = !DILocation(line: 449, column: 37, scope: !949)
!953 = !DILocation(line: 449, column: 30, scope: !949)
!954 = !DILocation(line: 449, column: 27, scope: !949)
!955 = !DILocation(line: 454, column: 18, scope: !62)
!956 = !DILocation(line: 454, column: 9, scope: !62)
!957 = !DILocation(line: 459, column: 9, scope: !958)
!958 = distinct !DILexicalBlock(scope: !62, file: !3, line: 459, column: 9)
!959 = !DILocation(line: 459, column: 9, scope: !62)
!960 = !DILocation(line: 396, column: 46, scope: !876, inlinedAt: !961)
!961 = distinct !DILocation(line: 460, column: 9, scope: !962)
!962 = distinct !DILexicalBlock(scope: !62, file: !3, line: 460, column: 9)
!963 = !DILocation(line: 396, column: 78, scope: !876, inlinedAt: !961)
!964 = !DILocation(line: 401, column: 20, scope: !876, inlinedAt: !961)
!965 = !DILocation(line: 397, column: 12, scope: !876, inlinedAt: !961)
!966 = !DILocation(line: 405, column: 34, scope: !876, inlinedAt: !961)
!967 = !DILocation(line: 405, column: 27, scope: !876, inlinedAt: !961)
!968 = !DILocation(line: 405, column: 60, scope: !876, inlinedAt: !961)
!969 = !DILocation(line: 406, column: 9, scope: !908, inlinedAt: !961)
!970 = !DILocation(line: 406, column: 24, scope: !908, inlinedAt: !961)
!971 = !DILocation(line: 397, column: 26, scope: !876, inlinedAt: !961)
!972 = !DILocation(line: 411, column: 23, scope: !876, inlinedAt: !961)
!973 = !DILocation(line: 411, column: 12, scope: !876, inlinedAt: !961)
!974 = !DILocation(line: 412, column: 16, scope: !876, inlinedAt: !961)
!975 = !DILocation(line: 426, column: 28, scope: !931, inlinedAt: !961)
!976 = !DILocation(line: 426, column: 18, scope: !931, inlinedAt: !961)
!977 = !DILocation(line: 426, column: 9, scope: !876, inlinedAt: !961)
!978 = !DILocation(line: 429, column: 27, scope: !876, inlinedAt: !961)
!979 = !DILocation(line: 397, column: 36, scope: !876, inlinedAt: !961)
!980 = !DILocation(line: 451, column: 38, scope: !62)
!981 = !DILocation(line: 465, column: 16, scope: !982)
!982 = distinct !DILexicalBlock(scope: !62, file: !3, line: 465, column: 9)
!983 = !DILocation(line: 465, column: 33, scope: !982)
!984 = !DILocation(line: 465, column: 9, scope: !62)
!985 = !DILocation(line: 468, column: 5, scope: !986)
!986 = distinct !DILexicalBlock(scope: !62, file: !3, line: 468, column: 5)
!987 = !{!338, !278, i64 3096}
!988 = !DILocation(line: 468, column: 5, scope: !62)
!989 = !DILocation(line: 468, column: 5, scope: !990)
!990 = distinct !DILexicalBlock(scope: !986, file: !3, line: 468, column: 5)
!991 = !DILocation(line: 452, column: 14, scope: !62)
!992 = !DILocation(line: 473, column: 13, scope: !81)
!993 = !DILocation(line: 451, column: 26, scope: !62)
!994 = !DILocation(line: 469, column: 22, scope: !62)
!995 = !DILocation(line: 469, column: 5, scope: !62)
!996 = !DILocation(line: 470, column: 22, scope: !81)
!997 = !DILocation(line: 472, column: 13, scope: !81)
!998 = !DILocation(line: 478, column: 20, scope: !195)
!999 = !DILocation(line: 478, column: 37, scope: !195)
!1000 = !DILocation(line: 479, column: 37, scope: !195)
!1001 = !DILocation(line: 478, column: 79, scope: !195)
!1002 = !DILocation(line: 481, column: 46, scope: !194)
!1003 = !DILocation(line: 481, column: 39, scope: !194)
!1004 = !DILocation(line: 483, column: 13, scope: !194)
!1005 = !DILocation(line: 484, column: 31, scope: !205)
!1006 = !DILocation(line: 470, column: 19, scope: !81)
!1007 = !DILocation(line: 489, column: 40, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 489, column: 17)
!1009 = distinct !DILexicalBlock(scope: !205, file: !3, line: 489, column: 17)
!1010 = !{!338, !282, i64 1792}
!1011 = !DILocation(line: 489, column: 31, scope: !1008)
!1012 = !DILocation(line: 489, column: 17, scope: !1009)
!1013 = !DILocation(line: 490, column: 33, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 489, column: 52)
!1015 = !{!338, !281, i64 48}
!1016 = !DILocation(line: 491, column: 36, scope: !1014)
!1017 = !DILocation(line: 491, column: 53, scope: !1014)
!1018 = !DILocation(line: 492, column: 33, scope: !1014)
!1019 = !DILocation(line: 492, column: 44, scope: !1014)
!1020 = !DILocation(line: 491, column: 28, scope: !1014)
!1021 = !DILocation(line: 475, column: 15, scope: !81)
!1022 = !DILocation(line: 493, column: 33, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 493, column: 25)
!1024 = !{!1025, !339, i64 24}
!1025 = !{!"dictht", !281, i64 0, !339, i64 8, !339, i64 16, !339, i64 24}
!1026 = !DILocation(line: 484, column: 47, scope: !205)
!1027 = !DILocation(line: 493, column: 49, scope: !1023)
!1028 = !DILocation(line: 493, column: 25, scope: !1014)
!1029 = !DILocation(line: 494, column: 59, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 493, column: 55)
!1031 = !{!1032, !281, i64 0}
!1032 = !{!"redisDb", !281, i64 0, !281, i64 8, !281, i64 16, !281, i64 24, !281, i64 32, !282, i64 40, !278, i64 48, !281, i64 56}
!1033 = !DILocation(line: 494, column: 25, scope: !1030)
!1034 = !DILocation(line: 495, column: 36, scope: !1030)
!1035 = !DILocation(line: 496, column: 21, scope: !1030)
!1036 = !DILocation(line: 0, scope: !205)
!1037 = !DILocation(line: 489, column: 48, scope: !1008)
!1038 = distinct !{!1038, !1012, !1039}
!1039 = !DILocation(line: 497, column: 17, scope: !1009)
!1040 = !DILocation(line: 498, column: 22, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !205, file: !3, line: 498, column: 21)
!1042 = !DILocation(line: 498, column: 21, scope: !205)
!1043 = !DILocation(line: 470, column: 16, scope: !81)
!1044 = !DILocation(line: 502, column: 33, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 502, column: 25)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 501, column: 54)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 501, column: 17)
!1048 = distinct !DILexicalBlock(scope: !205, file: !3, line: 501, column: 17)
!1049 = !DILocation(line: 502, column: 37, scope: !1045)
!1050 = !DILocation(line: 502, column: 25, scope: !1046)
!1051 = !DILocation(line: 503, column: 40, scope: !1046)
!1052 = !DILocation(line: 505, column: 32, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 505, column: 25)
!1054 = !DILocation(line: 505, column: 49, scope: !1053)
!1055 = !DILocation(line: 0, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 508, column: 28)
!1057 = !DILocation(line: 509, column: 63, scope: !1056)
!1058 = !DILocation(line: 476, column: 20, scope: !81)
!1059 = !DILocation(line: 506, column: 63, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 505, column: 75)
!1061 = !DILocation(line: 505, column: 25, scope: !1046)
!1062 = !DILocation(line: 0, scope: !1060)
!1063 = !DILocation(line: 514, column: 33, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 514, column: 25)
!1065 = !DILocation(line: 514, column: 48, scope: !1064)
!1066 = !DILocation(line: 514, column: 37, scope: !1064)
!1067 = !DILocation(line: 514, column: 25, scope: !1046)
!1068 = !DILocation(line: 515, column: 25, scope: !1064)
!1069 = !DILocation(line: 516, column: 33, scope: !1046)
!1070 = !DILocation(line: 517, column: 29, scope: !1046)
!1071 = !DILocation(line: 517, column: 34, scope: !1046)
!1072 = !DILocation(line: 521, column: 25, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 521, column: 25)
!1074 = !DILocation(line: 521, column: 25, scope: !1046)
!1075 = !DILocation(line: 522, column: 35, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 521, column: 29)
!1077 = !DILocation(line: 523, column: 25, scope: !1076)
!1078 = !DILocation(line: 501, column: 50, scope: !1047)
!1079 = !DILocation(line: 501, column: 43, scope: !1047)
!1080 = !DILocation(line: 501, column: 17, scope: !1048)
!1081 = distinct !{!1081, !1080, !1082}
!1082 = !DILocation(line: 527, column: 17, scope: !1048)
!1083 = !DILocation(line: 0, scope: !81)
!1084 = !DILocation(line: 483, column: 27, scope: !194)
!1085 = distinct !{!1085, !1004, !1086}
!1086 = !DILocation(line: 528, column: 13, scope: !194)
!1087 = !DILocation(line: 532, column: 70, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !195, file: !3, line: 532, column: 18)
!1089 = !DILocation(line: 538, column: 36, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 538, column: 13)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 538, column: 13)
!1092 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 534, column: 9)
!1093 = !DILocation(line: 538, column: 27, scope: !1090)
!1094 = !DILocation(line: 538, column: 13, scope: !1091)
!1095 = !DILocation(line: 539, column: 22, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 538, column: 48)
!1097 = distinct !{!1097, !1094, !1098}
!1098 = !DILocation(line: 549, column: 13, scope: !1091)
!1099 = !DILocation(line: 539, column: 33, scope: !1096)
!1100 = !DILocation(line: 470, column: 13, scope: !81)
!1101 = !DILocation(line: 540, column: 31, scope: !1096)
!1102 = !DILocation(line: 542, column: 29, scope: !1096)
!1103 = !DILocation(line: 542, column: 40, scope: !1096)
!1104 = !DILocation(line: 541, column: 24, scope: !1096)
!1105 = !DILocation(line: 543, column: 21, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 543, column: 21)
!1107 = !DILocation(line: 543, column: 36, scope: !1106)
!1108 = !DILocation(line: 538, column: 44, scope: !1090)
!1109 = !DILocation(line: 543, column: 21, scope: !1096)
!1110 = !DILocation(line: 544, column: 26, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 543, column: 42)
!1112 = !DILocation(line: 545, column: 31, scope: !1111)
!1113 = !DILocation(line: 553, column: 13, scope: !209)
!1114 = !DILocation(line: 553, column: 13, scope: !81)
!1115 = !DILocation(line: 554, column: 25, scope: !208)
!1116 = !DILocation(line: 554, column: 27, scope: !208)
!1117 = !DILocation(line: 474, column: 18, scope: !81)
!1118 = !DILocation(line: 87, column: 39, scope: !497, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 555, column: 55, scope: !208)
!1120 = !DILocation(line: 88, column: 27, scope: !497, inlinedAt: !1119)
!1121 = !DILocation(line: 88, column: 19, scope: !497, inlinedAt: !1119)
!1122 = !DILocation(line: 89, column: 5, scope: !497, inlinedAt: !1119)
!1123 = !DILocation(line: 91, column: 20, scope: !511, inlinedAt: !1119)
!1124 = !DILocation(line: 91, column: 13, scope: !511, inlinedAt: !1119)
!1125 = !DILocation(line: 93, column: 20, scope: !511, inlinedAt: !1119)
!1126 = !DILocation(line: 93, column: 34, scope: !511, inlinedAt: !1119)
!1127 = !DILocation(line: 93, column: 13, scope: !511, inlinedAt: !1119)
!1128 = !DILocation(line: 95, column: 20, scope: !511, inlinedAt: !1119)
!1129 = !DILocation(line: 95, column: 35, scope: !511, inlinedAt: !1119)
!1130 = !DILocation(line: 95, column: 13, scope: !511, inlinedAt: !1119)
!1131 = !DILocation(line: 97, column: 20, scope: !511, inlinedAt: !1119)
!1132 = !DILocation(line: 97, column: 35, scope: !511, inlinedAt: !1119)
!1133 = !DILocation(line: 97, column: 13, scope: !511, inlinedAt: !1119)
!1134 = !DILocation(line: 99, column: 20, scope: !511, inlinedAt: !1119)
!1135 = !DILocation(line: 99, column: 35, scope: !511, inlinedAt: !1119)
!1136 = !DILocation(line: 99, column: 13, scope: !511, inlinedAt: !1119)
!1137 = !DILocation(line: 0, scope: !511, inlinedAt: !1119)
!1138 = !DILocation(line: 555, column: 28, scope: !208)
!1139 = !DILocation(line: 555, column: 19, scope: !208)
!1140 = !DILocation(line: 556, column: 46, scope: !208)
!1141 = !{!338, !282, i64 3080}
!1142 = !DILocation(line: 556, column: 13, scope: !208)
!1143 = !DILocation(line: 565, column: 33, scope: !208)
!1144 = !DILocation(line: 453, column: 15, scope: !62)
!1145 = !DILocation(line: 566, column: 13, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !208, file: !3, line: 566, column: 13)
!1147 = !DILocation(line: 566, column: 13, scope: !208)
!1148 = !DILocation(line: 566, column: 13, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 566, column: 13)
!1150 = !DILocation(line: 452, column: 23, scope: !62)
!1151 = !DILocation(line: 567, column: 24, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !208, file: !3, line: 567, column: 17)
!1153 = !DILocation(line: 567, column: 17, scope: !1152)
!1154 = !DILocation(line: 567, column: 17, scope: !208)
!1155 = !DILocation(line: 568, column: 17, scope: !1152)
!1156 = !DILocation(line: 570, column: 17, scope: !1152)
!1157 = !DILocation(line: 571, column: 13, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !208, file: !3, line: 571, column: 13)
!1159 = !DILocation(line: 571, column: 13, scope: !208)
!1160 = !DILocation(line: 571, column: 13, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 571, column: 13)
!1162 = !DILocation(line: 572, column: 13, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !208, file: !3, line: 572, column: 13)
!1164 = !DILocation(line: 573, column: 13, scope: !208)
!1165 = !DILocation(line: 574, column: 34, scope: !208)
!1166 = !DILocation(line: 574, column: 19, scope: !208)
!1167 = !DILocation(line: 575, column: 23, scope: !208)
!1168 = !DILocation(line: 576, column: 36, scope: !208)
!1169 = !{!338, !278, i64 1048}
!1170 = !DILocation(line: 578, column: 29, scope: !208)
!1171 = !{!1032, !282, i64 40}
!1172 = !DILocation(line: 577, column: 13, scope: !208)
!1173 = !DILocation(line: 579, column: 13, scope: !208)
!1174 = !DILocation(line: 586, column: 17, scope: !208)
!1175 = !DILocation(line: 586, column: 25, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !208, file: !3, line: 586, column: 17)
!1177 = !DILocation(line: 604, column: 13, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 604, column: 13)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 603, column: 26)
!1180 = distinct !DILexicalBlock(scope: !81, file: !3, line: 603, column: 13)
!1181 = !DILocation(line: 604, column: 13, scope: !1179)
!1182 = !DILocation(line: 604, column: 13, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 604, column: 13)
!1184 = !DILocation(line: 605, column: 13, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 605, column: 13)
!1186 = !DILocation(line: 0, scope: !208)
!1187 = !DILocation(line: 609, column: 5, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !62, file: !3, line: 609, column: 5)
!1189 = !DILocation(line: 609, column: 5, scope: !62)
!1190 = !DILocation(line: 609, column: 5, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 609, column: 5)
!1192 = !DILocation(line: 610, column: 5, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !62, file: !3, line: 610, column: 5)
!1194 = !DILocation(line: 617, column: 11, scope: !62)
!1195 = !DILocation(line: 617, column: 5, scope: !62)
!1196 = !DILocation(line: 451, column: 12, scope: !62)
!1197 = !DILocation(line: 618, column: 30, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 618, column: 13)
!1199 = distinct !DILexicalBlock(scope: !62, file: !3, line: 617, column: 48)
!1200 = !DILocation(line: 618, column: 53, scope: !1198)
!1201 = !DILocation(line: 618, column: 66, scope: !1198)
!1202 = !DILocation(line: 618, column: 13, scope: !1199)
!1203 = !DILocation(line: 620, column: 9, scope: !1199)
!1204 = distinct !{!1204, !1195, !1205}
!1205 = !DILocation(line: 621, column: 5, scope: !62)
!1206 = !DILocation(line: 0, scope: !958)
!1207 = !DILocation(line: 623, column: 1, scope: !62)
!1208 = distinct !DISubprogram(name: "freeMemoryIfNeededAndSafe", scope: !3, file: !3, line: 632, type: !63, isLocal: false, isDefinition: true, scopeLine: 632, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!1209 = !DILocation(line: 633, column: 16, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 633, column: 9)
!1211 = !{!338, !282, i64 3068}
!1212 = !DILocation(line: 633, column: 39, scope: !1210)
!1213 = !DILocation(line: 633, column: 29, scope: !1210)
!1214 = !DILocation(line: 634, column: 12, scope: !1208)
!1215 = !DILocation(line: 634, column: 5, scope: !1208)
!1216 = !DILocation(line: 0, scope: !1208)
!1217 = !DILocation(line: 635, column: 1, scope: !1208)
