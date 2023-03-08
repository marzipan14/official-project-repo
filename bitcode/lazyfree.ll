; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/lazyfree.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/lazyfree.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_mutex_t_ = type opaque
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
%struct.clusterState = type { %struct.clusterNode*, i64, i32, i32, %struct.dict*, %struct.dict*, [16384 x %struct.clusterNode*], [16384 x %struct.clusterNode*], [16384 x %struct.clusterNode*], [16384 x i64], %struct.rax*, i64, i32, i32, i32, i64, i32, i64, %struct.clusterNode*, i64, i32, i64, i32, [10 x i64], [10 x i64], i64 }
%struct.clusterNode = type { i64, [40 x i8], i32, i64, [2048 x i8], i32, i32, %struct.clusterNode**, %struct.clusterNode*, i64, i64, i64, i64, i64, i64, i64, [46 x i8], i32, i32, %struct.clusterLink*, %struct.list* }
%struct.clusterLink = type { i64, i32, i8*, i8*, %struct.clusterNode* }
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
%struct.quicklist = type { %struct.quicklistNode*, %struct.quicklistNode*, i64, i64, i32 }
%struct.quicklistNode = type { %struct.quicklistNode*, %struct.quicklistNode*, i8*, i32, i32 }
%struct.zset = type { %struct.dict*, %struct.zskiplist* }
%struct.zskiplist = type { %struct.zskiplistNode*, %struct.zskiplistNode*, i64, i32 }
%struct.zskiplistNode = type { i8*, double, %struct.zskiplistNode*, [0 x %struct.zskiplistLevel] }
%struct.zskiplistLevel = type { %struct.zskiplistNode*, i64 }

@lazyfree_objects_mutex = dso_local local_unnamed_addr global %struct.pthread_mutex_t_* inttoptr (i64 -1 to %struct.pthread_mutex_t_*), align 8, !dbg !0
@lazyfree_objects = internal global i64 0, align 8, !dbg !8
@server = external dso_local local_unnamed_addr global %struct.redisServer, align 8
@dbDictType = external dso_local global %struct.dictType, align 8
@keyptrDictType = external dso_local global %struct.dictType, align 8
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @lazyfreeGetPendingObjectsCount() local_unnamed_addr #0 !dbg !23 {
  %1 = load atomic i64, i64* @lazyfree_objects monotonic, align 8, !dbg !28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !31
  ret i64 %1, !dbg !31
}

; Function Attrs: noredzone nounwind
define dso_local i64 @lazyfreeGetFreeEffort(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !32 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !189
  %3 = load i32, i32* %2, align 8, !dbg !189
  %4 = trunc i32 %3 to i4, !dbg !190
  switch i4 %4, label %23 [
    i4 1, label %5
    i4 2, label %11
  ], !dbg !190

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !191
  %7 = bitcast i8** %6 to %struct.quicklist**, !dbg !191
  %8 = load %struct.quicklist*, %struct.quicklist** %7, align 8, !dbg !191, !tbaa !192
  %9 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %8, i64 0, i32 3, !dbg !199
  %10 = load i64, i64* %9, align 8, !dbg !199, !tbaa !200
  br label %42

; <label>:11:                                     ; preds = %1
  %12 = and i32 %3, 240, !dbg !203
  %13 = icmp eq i32 %12, 32, !dbg !204
  br i1 %13, label %14, label %42, !dbg !205

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !206
  %16 = bitcast i8** %15 to %struct.dict**, !dbg !206
  %17 = load %struct.dict*, %struct.dict** %16, align 8, !dbg !206, !tbaa !192
  %18 = getelementptr inbounds %struct.dict, %struct.dict* %17, i64 0, i32 2, i64 0, i32 3, !dbg !208
  %19 = load i64, i64* %18, align 8, !dbg !208, !tbaa !209
  %20 = getelementptr inbounds %struct.dict, %struct.dict* %17, i64 0, i32 2, i64 1, i32 3, !dbg !208
  %21 = load i64, i64* %20, align 8, !dbg !208, !tbaa !209
  %22 = add i64 %21, %19, !dbg !208
  br label %42

; <label>:23:                                     ; preds = %1
  %24 = trunc i32 %3 to i8, !dbg !211
  switch i8 %24, label %42 [
    i8 115, label %25
    i8 36, label %33
  ], !dbg !211

; <label>:25:                                     ; preds = %23
  %26 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !212
  %27 = bitcast i8** %26 to %struct.zset**, !dbg !212
  %28 = load %struct.zset*, %struct.zset** %27, align 8, !dbg !212, !tbaa !192
  %29 = getelementptr inbounds %struct.zset, %struct.zset* %28, i64 0, i32 1, !dbg !214
  %30 = load %struct.zskiplist*, %struct.zskiplist** %29, align 8, !dbg !214, !tbaa !215
  %31 = getelementptr inbounds %struct.zskiplist, %struct.zskiplist* %30, i64 0, i32 2, !dbg !217
  %32 = load i64, i64* %31, align 8, !dbg !217, !tbaa !218
  br label %42

; <label>:33:                                     ; preds = %23
  %34 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !220
  %35 = bitcast i8** %34 to %struct.dict**, !dbg !220
  %36 = load %struct.dict*, %struct.dict** %35, align 8, !dbg !220, !tbaa !192
  %37 = getelementptr inbounds %struct.dict, %struct.dict* %36, i64 0, i32 2, i64 0, i32 3, !dbg !222
  %38 = load i64, i64* %37, align 8, !dbg !222, !tbaa !209
  %39 = getelementptr inbounds %struct.dict, %struct.dict* %36, i64 0, i32 2, i64 1, i32 3, !dbg !222
  %40 = load i64, i64* %39, align 8, !dbg !222, !tbaa !209
  %41 = add i64 %40, %38, !dbg !222
  br label %42

; <label>:42:                                     ; preds = %23, %11, %33, %25, %14, %5
  %43 = phi i64 [ %10, %5 ], [ %22, %14 ], [ %32, %25 ], [ %41, %33 ], [ 1, %11 ], [ 1, %23 ], !dbg !223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !225
  ret i64 %43, !dbg !225
}

; Function Attrs: noredzone nounwind
define dso_local i32 @dbAsyncDelete(%struct.redisDb* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !226 {
  %3 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !280
  %4 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !280, !tbaa !282
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %4, i64 0, i32 2, i64 0, i32 3, !dbg !280
  %6 = load i64, i64* %5, align 8, !dbg !280, !tbaa !209
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %4, i64 0, i32 2, i64 1, i32 3, !dbg !280
  %8 = load i64, i64* %7, align 8, !dbg !280, !tbaa !209
  %9 = sub i64 0, %8, !dbg !285
  %10 = icmp eq i64 %6, %9, !dbg !285
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !286
  br i1 %10, label %15, label %12, !dbg !287

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %11, align 8, !dbg !288, !tbaa !192
  %14 = tail call i32 @dictDelete(%struct.dict* %4, i8* %13) #3, !dbg !289
  br label %15, !dbg !289

; <label>:15:                                     ; preds = %2, %12
  %16 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !290
  %17 = load %struct.dict*, %struct.dict** %16, align 8, !dbg !290, !tbaa !291
  %18 = load i8*, i8** %11, align 8, !dbg !292, !tbaa !192
  %19 = tail call %struct.dictEntry* @dictUnlink(%struct.dict* %17, i8* %18) #3, !dbg !293
  %20 = icmp eq %struct.dictEntry* %19, null, !dbg !295
  br i1 %20, label %91, label %21, !dbg !296

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %19, i64 0, i32 1, i32 0, !dbg !297
  %23 = load i8*, i8** %22, align 8, !dbg !297, !tbaa !298
  %24 = bitcast i8* %23 to i32*, !dbg !302
  %25 = load i32, i32* %24, align 8, !dbg !302
  %26 = trunc i32 %25 to i4, !dbg !303
  switch i4 %26, label %45 [
    i4 1, label %27
    i4 2, label %33
  ], !dbg !303

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds i8, i8* %23, i64 8, !dbg !304
  %29 = bitcast i8* %28 to %struct.quicklist**, !dbg !304
  %30 = load %struct.quicklist*, %struct.quicklist** %29, align 8, !dbg !304, !tbaa !192
  %31 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %30, i64 0, i32 3, !dbg !306
  %32 = load i64, i64* %31, align 8, !dbg !306, !tbaa !200
  br label %65

; <label>:33:                                     ; preds = %21
  %34 = and i32 %25, 240, !dbg !307
  %35 = icmp eq i32 %34, 32, !dbg !308
  br i1 %35, label %36, label %64, !dbg !309

; <label>:36:                                     ; preds = %33
  %37 = getelementptr inbounds i8, i8* %23, i64 8, !dbg !310
  %38 = bitcast i8* %37 to %struct.dict**, !dbg !310
  %39 = load %struct.dict*, %struct.dict** %38, align 8, !dbg !310, !tbaa !192
  %40 = getelementptr inbounds %struct.dict, %struct.dict* %39, i64 0, i32 2, i64 0, i32 3, !dbg !312
  %41 = load i64, i64* %40, align 8, !dbg !312, !tbaa !209
  %42 = getelementptr inbounds %struct.dict, %struct.dict* %39, i64 0, i32 2, i64 1, i32 3, !dbg !312
  %43 = load i64, i64* %42, align 8, !dbg !312, !tbaa !209
  %44 = add i64 %43, %41, !dbg !312
  br label %65

; <label>:45:                                     ; preds = %21
  %46 = trunc i32 %25 to i8, !dbg !313
  switch i8 %46, label %64 [
    i8 115, label %47
    i8 36, label %55
  ], !dbg !313

; <label>:47:                                     ; preds = %45
  %48 = getelementptr inbounds i8, i8* %23, i64 8, !dbg !314
  %49 = bitcast i8* %48 to %struct.zset**, !dbg !314
  %50 = load %struct.zset*, %struct.zset** %49, align 8, !dbg !314, !tbaa !192
  %51 = getelementptr inbounds %struct.zset, %struct.zset* %50, i64 0, i32 1, !dbg !316
  %52 = load %struct.zskiplist*, %struct.zskiplist** %51, align 8, !dbg !316, !tbaa !215
  %53 = getelementptr inbounds %struct.zskiplist, %struct.zskiplist* %52, i64 0, i32 2, !dbg !317
  %54 = load i64, i64* %53, align 8, !dbg !317, !tbaa !218
  br label %65

; <label>:55:                                     ; preds = %45
  %56 = getelementptr inbounds i8, i8* %23, i64 8, !dbg !318
  %57 = bitcast i8* %56 to %struct.dict**, !dbg !318
  %58 = load %struct.dict*, %struct.dict** %57, align 8, !dbg !318, !tbaa !192
  %59 = getelementptr inbounds %struct.dict, %struct.dict* %58, i64 0, i32 2, i64 0, i32 3, !dbg !320
  %60 = load i64, i64* %59, align 8, !dbg !320, !tbaa !209
  %61 = getelementptr inbounds %struct.dict, %struct.dict* %58, i64 0, i32 2, i64 1, i32 3, !dbg !320
  %62 = load i64, i64* %61, align 8, !dbg !320, !tbaa !209
  %63 = add i64 %62, %60, !dbg !320
  br label %65

; <label>:64:                                     ; preds = %33, %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !321
  br label %86, !dbg !323

; <label>:65:                                     ; preds = %27, %36, %47, %55
  %66 = phi i64 [ %32, %27 ], [ %44, %36 ], [ %54, %47 ], [ %63, %55 ], !dbg !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !321
  %67 = icmp ugt i64 %66, 64, !dbg !326
  br i1 %67, label %68, label %86, !dbg !323

; <label>:68:                                     ; preds = %65
  %69 = getelementptr inbounds i8, i8* %23, i64 4, !dbg !327
  %70 = bitcast i8* %69 to i32*, !dbg !327
  %71 = load i32, i32* %70, align 4, !dbg !327, !tbaa !328
  %72 = icmp eq i32 %71, 1, !dbg !329
  br i1 %72, label %73, label %86, !dbg !330

; <label>:73:                                     ; preds = %68
  %74 = atomicrmw add i64* @lazyfree_objects, i64 1 monotonic, !dbg !331
  tail call void @bioCreateBackgroundJob(i32 2, i8* nonnull %23, i8* null, i8* null) #3, !dbg !333
  %75 = load %struct.dict*, %struct.dict** %16, align 8, !dbg !334, !tbaa !291
  %76 = getelementptr inbounds %struct.dict, %struct.dict* %75, i64 0, i32 0, !dbg !334
  %77 = load %struct.dictType*, %struct.dictType** %76, align 8, !dbg !334, !tbaa !337
  %78 = getelementptr inbounds %struct.dictType, %struct.dictType* %77, i64 0, i32 2, !dbg !334
  %79 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %78, align 8, !dbg !334, !tbaa !339
  %80 = icmp eq i8* (i8*, i8*)* %79, null, !dbg !334
  br i1 %80, label %85, label %81, !dbg !341

; <label>:81:                                     ; preds = %73
  %82 = getelementptr inbounds %struct.dict, %struct.dict* %75, i64 0, i32 1, !dbg !334
  %83 = load i8*, i8** %82, align 8, !dbg !334, !tbaa !342
  %84 = tail call i8* %79(i8* %83, i8* null) #3, !dbg !334
  store i8* %84, i8** %22, align 8, !dbg !334, !tbaa !298
  br label %86, !dbg !334

; <label>:85:                                     ; preds = %73
  store i8* null, i8** %22, align 8, !dbg !334, !tbaa !298
  br label %86

; <label>:86:                                     ; preds = %81, %85, %68, %65, %64
  %87 = load %struct.dict*, %struct.dict** %16, align 8, !dbg !343, !tbaa !291
  tail call void @dictFreeUnlinkedEntry(%struct.dict* %87, %struct.dictEntry* nonnull %19) #3, !dbg !346
  %88 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !347, !tbaa !349
  %89 = icmp eq i32 %88, 0, !dbg !355
  br i1 %89, label %91, label %90, !dbg !356

; <label>:90:                                     ; preds = %86
  tail call void @slotToKeyDel(%struct.redisObject* nonnull %1) #3, !dbg !357
  br label %91, !dbg !357

; <label>:91:                                     ; preds = %15, %90, %86
  %92 = phi i32 [ 1, %86 ], [ 1, %90 ], [ 0, %15 ], !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  ret i32 %92, !dbg !360
}

; Function Attrs: noredzone
declare dso_local i32 @dictDelete(%struct.dict*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictUnlink(%struct.dict*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @bioCreateBackgroundJob(i32, i8*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @dictFreeUnlinkedEntry(%struct.dict*, %struct.dictEntry*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @slotToKeyDel(%struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @freeObjAsync(%struct.redisObject*) local_unnamed_addr #0 !dbg !361 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !370
  %3 = load i32, i32* %2, align 8, !dbg !370
  %4 = trunc i32 %3 to i4, !dbg !371
  switch i4 %4, label %23 [
    i4 1, label %5
    i4 2, label %11
  ], !dbg !371

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !372
  %7 = bitcast i8** %6 to %struct.quicklist**, !dbg !372
  %8 = load %struct.quicklist*, %struct.quicklist** %7, align 8, !dbg !372, !tbaa !192
  %9 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %8, i64 0, i32 3, !dbg !374
  %10 = load i64, i64* %9, align 8, !dbg !374, !tbaa !200
  br label %43

; <label>:11:                                     ; preds = %1
  %12 = and i32 %3, 240, !dbg !375
  %13 = icmp eq i32 %12, 32, !dbg !376
  br i1 %13, label %14, label %42, !dbg !377

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !378
  %16 = bitcast i8** %15 to %struct.dict**, !dbg !378
  %17 = load %struct.dict*, %struct.dict** %16, align 8, !dbg !378, !tbaa !192
  %18 = getelementptr inbounds %struct.dict, %struct.dict* %17, i64 0, i32 2, i64 0, i32 3, !dbg !380
  %19 = load i64, i64* %18, align 8, !dbg !380, !tbaa !209
  %20 = getelementptr inbounds %struct.dict, %struct.dict* %17, i64 0, i32 2, i64 1, i32 3, !dbg !380
  %21 = load i64, i64* %20, align 8, !dbg !380, !tbaa !209
  %22 = add i64 %21, %19, !dbg !380
  br label %43

; <label>:23:                                     ; preds = %1
  %24 = trunc i32 %3 to i8, !dbg !381
  switch i8 %24, label %42 [
    i8 115, label %25
    i8 36, label %33
  ], !dbg !381

; <label>:25:                                     ; preds = %23
  %26 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !382
  %27 = bitcast i8** %26 to %struct.zset**, !dbg !382
  %28 = load %struct.zset*, %struct.zset** %27, align 8, !dbg !382, !tbaa !192
  %29 = getelementptr inbounds %struct.zset, %struct.zset* %28, i64 0, i32 1, !dbg !384
  %30 = load %struct.zskiplist*, %struct.zskiplist** %29, align 8, !dbg !384, !tbaa !215
  %31 = getelementptr inbounds %struct.zskiplist, %struct.zskiplist* %30, i64 0, i32 2, !dbg !385
  %32 = load i64, i64* %31, align 8, !dbg !385, !tbaa !218
  br label %43

; <label>:33:                                     ; preds = %23
  %34 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !386
  %35 = bitcast i8** %34 to %struct.dict**, !dbg !386
  %36 = load %struct.dict*, %struct.dict** %35, align 8, !dbg !386, !tbaa !192
  %37 = getelementptr inbounds %struct.dict, %struct.dict* %36, i64 0, i32 2, i64 0, i32 3, !dbg !388
  %38 = load i64, i64* %37, align 8, !dbg !388, !tbaa !209
  %39 = getelementptr inbounds %struct.dict, %struct.dict* %36, i64 0, i32 2, i64 1, i32 3, !dbg !388
  %40 = load i64, i64* %39, align 8, !dbg !388, !tbaa !209
  %41 = add i64 %40, %38, !dbg !388
  br label %43

; <label>:42:                                     ; preds = %11, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !389
  br label %53, !dbg !391

; <label>:43:                                     ; preds = %5, %14, %25, %33
  %44 = phi i64 [ %10, %5 ], [ %22, %14 ], [ %32, %25 ], [ %41, %33 ], !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !389
  %45 = icmp ugt i64 %44, 64, !dbg !394
  br i1 %45, label %46, label %53, !dbg !391

; <label>:46:                                     ; preds = %43
  %47 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 1, !dbg !395
  %48 = load i32, i32* %47, align 4, !dbg !395, !tbaa !328
  %49 = icmp eq i32 %48, 1, !dbg !396
  br i1 %49, label %50, label %53, !dbg !397

; <label>:50:                                     ; preds = %46
  %51 = atomicrmw add i64* @lazyfree_objects, i64 1 monotonic, !dbg !398
  %52 = bitcast %struct.redisObject* %0 to i8*, !dbg !400
  tail call void @bioCreateBackgroundJob(i32 2, i8* %52, i8* null, i8* null) #3, !dbg !401
  br label %54, !dbg !402

; <label>:53:                                     ; preds = %42, %46, %43
  tail call void @decrRefCount(%struct.redisObject* nonnull %0) #3, !dbg !403
  br label %54

; <label>:54:                                     ; preds = %53, %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  ret void, !dbg !405
}

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @emptyDbAsync(%struct.redisDb* nocapture) local_unnamed_addr #0 !dbg !406 {
  %2 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !414
  %3 = load %struct.dict*, %struct.dict** %2, align 8, !dbg !414, !tbaa !291
  %4 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !416
  %5 = bitcast %struct.dict** %4 to i8**, !dbg !416
  %6 = load i8*, i8** %5, align 8, !dbg !416, !tbaa !282
  %7 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @dbDictType, i8* null) #3, !dbg !418
  store %struct.dict* %7, %struct.dict** %2, align 8, !dbg !419, !tbaa !291
  %8 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @keyptrDictType, i8* null) #3, !dbg !420
  store %struct.dict* %8, %struct.dict** %4, align 8, !dbg !421, !tbaa !282
  %9 = getelementptr inbounds %struct.dict, %struct.dict* %3, i64 0, i32 2, i64 0, i32 3, !dbg !422
  %10 = load i64, i64* %9, align 8, !dbg !422, !tbaa !209
  %11 = getelementptr inbounds %struct.dict, %struct.dict* %3, i64 0, i32 2, i64 1, i32 3, !dbg !422
  %12 = load i64, i64* %11, align 8, !dbg !422, !tbaa !209
  %13 = add i64 %12, %10, !dbg !422
  %14 = atomicrmw add i64* @lazyfree_objects, i64 %13 monotonic, !dbg !422
  %15 = bitcast %struct.dict* %3 to i8*, !dbg !423
  tail call void @bioCreateBackgroundJob(i32 2, i8* null, i8* %15, i8* %6) #3, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  ret void, !dbg !425
}

; Function Attrs: noredzone
declare dso_local %struct.dict* @dictCreate(%struct.dictType*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @slotToKeyFlushAsync() local_unnamed_addr #0 !dbg !426 {
  %1 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !451, !tbaa !452
  %2 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %1, i64 0, i32 10, !dbg !453
  %3 = load %struct.rax*, %struct.rax** %2, align 8, !dbg !453, !tbaa !454
  %4 = tail call %struct.rax* @raxNew() #3, !dbg !457
  %5 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !458, !tbaa !452
  %6 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %5, i64 0, i32 10, !dbg !459
  store %struct.rax* %4, %struct.rax** %6, align 8, !dbg !460, !tbaa !454
  %7 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %5, i64 0, i32 9, i64 0, !dbg !461
  %8 = bitcast i64* %7 to i8*, !dbg !461
  %9 = tail call i8* @memset(i8* nonnull %8, i32 0, i64 131072) #3, !dbg !462
  %10 = getelementptr inbounds %struct.rax, %struct.rax* %3, i64 0, i32 1, !dbg !463
  %11 = load i64, i64* %10, align 8, !dbg !463, !tbaa !464
  %12 = atomicrmw add i64* @lazyfree_objects, i64 %11 monotonic, !dbg !463
  %13 = bitcast %struct.rax* %3 to i8*, !dbg !466
  tail call void @bioCreateBackgroundJob(i32 2, i8* null, i8* null, i8* %13) #3, !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !468
  ret void, !dbg !468
}

; Function Attrs: noredzone
declare dso_local %struct.rax* @raxNew() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @lazyfreeFreeObjectFromBioThread(%struct.redisObject*) local_unnamed_addr #0 !dbg !469 {
  tail call void @decrRefCount(%struct.redisObject* %0) #3, !dbg !473
  %2 = atomicrmw sub i64* @lazyfree_objects, i64 1 monotonic, !dbg !474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !475
  ret void, !dbg !475
}

; Function Attrs: noredzone nounwind
define dso_local void @lazyfreeFreeDatabaseFromBioThread(%struct.dict*, %struct.dict*) local_unnamed_addr #0 !dbg !476 {
  %3 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !485
  %4 = load i64, i64* %3, align 8, !dbg !485, !tbaa !209
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !485
  %6 = load i64, i64* %5, align 8, !dbg !485, !tbaa !209
  %7 = add i64 %6, %4, !dbg !485
  tail call void @dictRelease(%struct.dict* %0) #3, !dbg !487
  tail call void @dictRelease(%struct.dict* %1) #3, !dbg !488
  %8 = atomicrmw sub i64* @lazyfree_objects, i64 %7 monotonic, !dbg !489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !490
  ret void, !dbg !490
}

; Function Attrs: noredzone
declare dso_local void @dictRelease(%struct.dict*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @lazyfreeFreeSlotsMapFromBioThread(%struct.rax*) local_unnamed_addr #0 !dbg !491 {
  %2 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 1, !dbg !498
  %3 = load i64, i64* %2, align 8, !dbg !498, !tbaa !464
  tail call void @raxFree(%struct.rax* %0) #3, !dbg !500
  %4 = atomicrmw sub i64* @lazyfree_objects, i64 %3 monotonic, !dbg !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  ret void, !dbg !502
}

; Function Attrs: noredzone
declare dso_local void @raxFree(%struct.rax*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!19, !20, !21}
!llvm.ident = !{!22}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lazyfree_objects_mutex", scope: !2, file: !3, line: 7, type: !15, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/lazyfree.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "lazyfree_objects", scope: !2, file: !3, line: 6, type: !10, isLocal: true, isDefinition: true)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 40, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !13, line: 129, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !16, line: 417, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutex_t_", file: !16, line: 417, flags: DIFlagFwdDecl)
!19 = !{i32 2, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!23 = distinct !DISubprogram(name: "lazyfreeGetPendingObjectsCount", scope: !3, file: !3, line: 10, type: !24, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !26)
!24 = !DISubroutineType(types: !25)
!25 = !{!10}
!26 = !{!27}
!27 = !DILocalVariable(name: "aux", scope: !23, file: !3, line: 11, type: !10)
!28 = !DILocation(line: 12, column: 5, scope: !29)
!29 = distinct !DILexicalBlock(scope: !23, file: !3, line: 12, column: 5)
!30 = !DILocation(line: 11, column: 12, scope: !23)
!31 = !DILocation(line: 13, column: 5, scope: !23)
!32 = distinct !DISubprogram(name: "lazyfreeGetFreeEffort", scope: !3, file: !3, line: 31, type: !33, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !47)
!33 = !DISubroutineType(types: !34)
!34 = !{!10, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !37, line: 622, baseType: !38)
!37 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !37, line: 614, size: 128, elements: !39)
!39 = !{!40, !42, !43, !44, !46}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !38, file: !37, line: 615, baseType: !41, size: 4, flags: DIFlagBitField, extraData: i64 0)
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !38, file: !37, line: 616, baseType: !41, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !38, file: !37, line: 617, baseType: !41, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !38, file: !37, line: 620, baseType: !45, size: 32, offset: 32)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !38, file: !37, line: 621, baseType: !6, size: 64, offset: 64)
!47 = !{!48, !49, !80, !150, !185}
!48 = !DILocalVariable(name: "obj", arg: 1, scope: !32, file: !3, line: 31, type: !35)
!49 = !DILocalVariable(name: "ql", scope: !50, file: !3, line: 33, type: !52)
!50 = distinct !DILexicalBlock(scope: !51, file: !3, line: 32, column: 32)
!51 = distinct !DILexicalBlock(scope: !32, file: !3, line: 32, column: 9)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklist", file: !54, line: 80, baseType: !55)
!54 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/quicklist.h", directory: "/root/.unikraft/apps/redis/build")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklist", file: !54, line: 73, size: 320, elements: !56)
!56 = !{!57, !75, !76, !77, !78, !79}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !55, file: !54, line: 74, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistNode", file: !54, line: 55, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistNode", file: !54, line: 44, size: 256, elements: !61)
!61 = !{!62, !64, !65, !68, !69, !70, !71, !72, !73, !74}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !60, file: !54, line: 45, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !60, file: !54, line: 46, baseType: !63, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "zl", scope: !60, file: !54, line: 47, baseType: !66, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !60, file: !54, line: 48, baseType: !41, size: 32, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !60, file: !54, line: 49, baseType: !41, size: 16, offset: 224, flags: DIFlagBitField, extraData: i64 224)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !60, file: !54, line: 50, baseType: !41, size: 2, offset: 240, flags: DIFlagBitField, extraData: i64 224)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !60, file: !54, line: 51, baseType: !41, size: 2, offset: 242, flags: DIFlagBitField, extraData: i64 224)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "recompress", scope: !60, file: !54, line: 52, baseType: !41, size: 1, offset: 244, flags: DIFlagBitField, extraData: i64 224)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "attempted_compress", scope: !60, file: !54, line: 53, baseType: !41, size: 1, offset: 245, flags: DIFlagBitField, extraData: i64 224)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !60, file: !54, line: 54, baseType: !41, size: 10, offset: 246, flags: DIFlagBitField, extraData: i64 224)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !55, file: !54, line: 75, baseType: !58, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !55, file: !54, line: 76, baseType: !14, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !55, file: !54, line: 77, baseType: !14, size: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !55, file: !54, line: 78, baseType: !45, size: 16, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !55, file: !54, line: 79, baseType: !41, size: 16, offset: 272, flags: DIFlagBitField, extraData: i64 256)
!80 = !DILocalVariable(name: "ht", scope: !81, file: !3, line: 36, type: !83)
!81 = distinct !DILexicalBlock(scope: !82, file: !3, line: 35, column: 74)
!82 = distinct !DILexicalBlock(scope: !51, file: !3, line: 35, column: 16)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !85, line: 82, baseType: !86)
!85 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !85, line: 76, size: 768, elements: !87)
!87 = !{!88, !117, !118, !148, !149}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !86, file: !85, line: 77, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !85, line: 65, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !85, line: 58, size: 384, elements: !92)
!92 = !{!93, !103, !107, !108, !112, !116}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !91, file: !85, line: 59, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{!97, !101}
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !98, line: 60, baseType: !99)
!98 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !100, line: 105, baseType: !14)
!100 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !91, file: !85, line: 60, baseType: !104, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!6, !6, !101}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !91, file: !85, line: 61, baseType: !104, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !91, file: !85, line: 62, baseType: !109, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!45, !6, !101, !101}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !91, file: !85, line: 63, baseType: !113, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !6, !6}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !91, file: !85, line: 64, baseType: !113, size: 64, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !86, file: !85, line: 78, baseType: !6, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !86, file: !85, line: 79, baseType: !119, size: 512, offset: 128)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 512, elements: !146)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !85, line: 74, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !85, line: 69, size: 256, elements: !122)
!122 = !{!123, !143, !144, !145}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !121, file: !85, line: 70, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !85, line: 56, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !85, line: 47, size: 192, elements: !128)
!128 = !{!129, !130, !141}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !127, file: !85, line: 48, baseType: !6, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !127, file: !85, line: 54, baseType: !131, size: 64, offset: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !127, file: !85, line: 49, size: 64, elements: !132)
!132 = !{!133, !134, !135, !139}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !131, file: !85, line: 50, baseType: !6, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !131, file: !85, line: 51, baseType: !97, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !131, file: !85, line: 52, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !98, line: 56, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !100, line: 103, baseType: !138)
!138 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !131, file: !85, line: 53, baseType: !140, size: 64)
!140 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !127, file: !85, line: 55, baseType: !142, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !121, file: !85, line: 71, baseType: !14, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !121, file: !85, line: 72, baseType: !14, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !121, file: !85, line: 73, baseType: !14, size: 64, offset: 192)
!146 = !{!147}
!147 = !DISubrange(count: 2)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !86, file: !85, line: 80, baseType: !138, size: 64, offset: 640)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !86, file: !85, line: 81, baseType: !14, size: 64, offset: 704)
!150 = !DILocalVariable(name: "zs", scope: !151, file: !3, line: 39, type: !153)
!151 = distinct !DILexicalBlock(scope: !152, file: !3, line: 38, column: 80)
!152 = distinct !DILexicalBlock(scope: !82, file: !3, line: 38, column: 16)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "zset", file: !37, line: 829, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zset", file: !37, line: 826, size: 128, elements: !156)
!156 = !{!157, !158}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !155, file: !37, line: 827, baseType: !83, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "zsl", scope: !155, file: !37, line: 828, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "zskiplist", file: !37, line: 824, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplist", file: !37, line: 820, size: 256, elements: !162)
!162 = !{!163, !182, !183, !184}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !161, file: !37, line: 821, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistNode", file: !37, line: 810, size: 192, elements: !166)
!166 = !{!167, !172, !173, !174}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ele", scope: !165, file: !37, line: 811, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !169, line: 43, baseType: !170)
!169 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "score", scope: !165, file: !37, line: 812, baseType: !140, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "backward", scope: !165, file: !37, line: 813, baseType: !164, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !165, file: !37, line: 817, baseType: !175, offset: 192)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, elements: !180)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistLevel", file: !37, line: 814, size: 128, elements: !177)
!177 = !{!178, !179}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !176, file: !37, line: 815, baseType: !164, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "span", scope: !176, file: !37, line: 816, baseType: !14, size: 64, offset: 64)
!180 = !{!181}
!181 = !DISubrange(count: -1)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !161, file: !37, line: 821, baseType: !164, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !161, file: !37, line: 822, baseType: !14, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !161, file: !37, line: 823, baseType: !45, size: 32, offset: 192)
!185 = !DILocalVariable(name: "ht", scope: !186, file: !3, line: 42, type: !83)
!186 = distinct !DILexicalBlock(scope: !187, file: !3, line: 41, column: 75)
!187 = distinct !DILexicalBlock(scope: !152, file: !3, line: 41, column: 16)
!188 = !DILocation(line: 31, column: 36, scope: !32)
!189 = !DILocation(line: 32, column: 14, scope: !51)
!190 = !DILocation(line: 32, column: 9, scope: !32)
!191 = !DILocation(line: 33, column: 30, scope: !50)
!192 = !{!193, !197, i64 8}
!193 = !{!"redisObject", !194, i64 0, !194, i64 0, !194, i64 1, !194, i64 4, !197, i64 8}
!194 = !{!"int", !195, i64 0}
!195 = !{!"omnipotent char", !196, i64 0}
!196 = !{!"Simple C/C++ TBAA"}
!197 = !{!"any pointer", !195, i64 0}
!198 = !DILocation(line: 33, column: 20, scope: !50)
!199 = !DILocation(line: 34, column: 20, scope: !50)
!200 = !{!201, !202, i64 24}
!201 = !{!"quicklist", !197, i64 0, !197, i64 8, !202, i64 16, !202, i64 24, !194, i64 32, !194, i64 34}
!202 = !{!"long", !195, i64 0}
!203 = !DILocation(line: 35, column: 45, scope: !82)
!204 = !DILocation(line: 35, column: 54, scope: !82)
!205 = !DILocation(line: 35, column: 16, scope: !51)
!206 = !DILocation(line: 36, column: 25, scope: !81)
!207 = !DILocation(line: 36, column: 15, scope: !81)
!208 = !DILocation(line: 37, column: 16, scope: !81)
!209 = !{!210, !202, i64 24}
!210 = !{!"dictht", !197, i64 0, !202, i64 8, !202, i64 16, !202, i64 24}
!211 = !DILocation(line: 38, column: 38, scope: !152)
!212 = !DILocation(line: 39, column: 25, scope: !151)
!213 = !DILocation(line: 39, column: 15, scope: !151)
!214 = !DILocation(line: 40, column: 20, scope: !151)
!215 = !{!216, !197, i64 8}
!216 = !{!"zset", !197, i64 0, !197, i64 8}
!217 = !DILocation(line: 40, column: 25, scope: !151)
!218 = !{!219, !202, i64 16}
!219 = !{!"zskiplist", !197, i64 0, !197, i64 8, !202, i64 16, !194, i64 24}
!220 = !DILocation(line: 42, column: 25, scope: !186)
!221 = !DILocation(line: 42, column: 15, scope: !186)
!222 = !DILocation(line: 43, column: 16, scope: !186)
!223 = !DILocation(line: 0, scope: !224)
!224 = distinct !DILexicalBlock(scope: !187, file: !3, line: 44, column: 12)
!225 = !DILocation(line: 47, column: 1, scope: !32)
!226 = distinct !DISubprogram(name: "dbAsyncDelete", scope: !3, file: !3, line: 54, type: !227, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !270)
!227 = !DISubroutineType(types: !228)
!228 = !{!45, !229, !35}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !37, line: 656, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !37, line: 647, size: 512, elements: !232)
!232 = !{!233, !234, !235, !236, !237, !238, !239, !241}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !231, file: !37, line: 648, baseType: !83, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !231, file: !37, line: 649, baseType: !83, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !231, file: !37, line: 650, baseType: !83, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !231, file: !37, line: 651, baseType: !83, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !231, file: !37, line: 652, baseType: !83, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !231, file: !37, line: 653, baseType: !45, size: 32, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !231, file: !37, line: 654, baseType: !240, size: 64, offset: 384)
!240 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !231, file: !37, line: 655, baseType: !242, size: 64, offset: 448)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !244, line: 54, baseType: !245)
!244 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !244, line: 47, size: 384, elements: !246)
!246 = !{!247, !256, !257, !261, !265, !269}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !245, file: !244, line: 48, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !244, line: 40, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !244, line: 36, size: 192, elements: !251)
!251 = !{!252, !254, !255}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !250, file: !244, line: 37, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !250, file: !244, line: 38, baseType: !253, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !250, file: !244, line: 39, baseType: !6, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !245, file: !244, line: 49, baseType: !248, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !245, file: !244, line: 50, baseType: !258, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!6, !6}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !245, file: !244, line: 51, baseType: !262, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !6}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !245, file: !244, line: 52, baseType: !266, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!45, !6, !6}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !245, file: !244, line: 53, baseType: !14, size: 64, offset: 320)
!270 = !{!271, !272, !273, !274, !277}
!271 = !DILocalVariable(name: "db", arg: 1, scope: !226, file: !3, line: 54, type: !229)
!272 = !DILocalVariable(name: "key", arg: 2, scope: !226, file: !3, line: 54, type: !35)
!273 = !DILocalVariable(name: "de", scope: !226, file: !3, line: 62, type: !125)
!274 = !DILocalVariable(name: "val", scope: !275, file: !3, line: 64, type: !35)
!275 = distinct !DILexicalBlock(scope: !276, file: !3, line: 63, column: 13)
!276 = distinct !DILexicalBlock(scope: !226, file: !3, line: 63, column: 9)
!277 = !DILocalVariable(name: "free_effort", scope: !275, file: !3, line: 65, type: !10)
!278 = !DILocation(line: 54, column: 28, scope: !226)
!279 = !DILocation(line: 54, column: 38, scope: !226)
!280 = !DILocation(line: 57, column: 9, scope: !281)
!281 = distinct !DILexicalBlock(scope: !226, file: !3, line: 57, column: 9)
!282 = !{!283, !197, i64 8}
!283 = !{!"redisDb", !197, i64 0, !197, i64 8, !197, i64 16, !197, i64 24, !197, i64 32, !194, i64 40, !284, i64 48, !197, i64 56}
!284 = !{!"long long", !195, i64 0}
!285 = !DILocation(line: 57, column: 31, scope: !281)
!286 = !DILocation(line: 0, scope: !281)
!287 = !DILocation(line: 57, column: 9, scope: !226)
!288 = !DILocation(line: 57, column: 64, scope: !281)
!289 = !DILocation(line: 57, column: 36, scope: !281)
!290 = !DILocation(line: 62, column: 36, scope: !226)
!291 = !{!283, !197, i64 0}
!292 = !DILocation(line: 62, column: 46, scope: !226)
!293 = !DILocation(line: 62, column: 21, scope: !226)
!294 = !DILocation(line: 62, column: 16, scope: !226)
!295 = !DILocation(line: 63, column: 9, scope: !276)
!296 = !DILocation(line: 63, column: 9, scope: !226)
!297 = !DILocation(line: 64, column: 21, scope: !275)
!298 = !{!195, !195, i64 0}
!299 = !DILocation(line: 64, column: 15, scope: !275)
!300 = !DILocation(line: 31, column: 36, scope: !32, inlinedAt: !301)
!301 = distinct !DILocation(line: 65, column: 30, scope: !275)
!302 = !DILocation(line: 32, column: 14, scope: !51, inlinedAt: !301)
!303 = !DILocation(line: 32, column: 9, scope: !32, inlinedAt: !301)
!304 = !DILocation(line: 33, column: 30, scope: !50, inlinedAt: !301)
!305 = !DILocation(line: 33, column: 20, scope: !50, inlinedAt: !301)
!306 = !DILocation(line: 34, column: 20, scope: !50, inlinedAt: !301)
!307 = !DILocation(line: 35, column: 45, scope: !82, inlinedAt: !301)
!308 = !DILocation(line: 35, column: 54, scope: !82, inlinedAt: !301)
!309 = !DILocation(line: 35, column: 16, scope: !51, inlinedAt: !301)
!310 = !DILocation(line: 36, column: 25, scope: !81, inlinedAt: !301)
!311 = !DILocation(line: 36, column: 15, scope: !81, inlinedAt: !301)
!312 = !DILocation(line: 37, column: 16, scope: !81, inlinedAt: !301)
!313 = !DILocation(line: 38, column: 38, scope: !152, inlinedAt: !301)
!314 = !DILocation(line: 39, column: 25, scope: !151, inlinedAt: !301)
!315 = !DILocation(line: 39, column: 15, scope: !151, inlinedAt: !301)
!316 = !DILocation(line: 40, column: 20, scope: !151, inlinedAt: !301)
!317 = !DILocation(line: 40, column: 25, scope: !151, inlinedAt: !301)
!318 = !DILocation(line: 42, column: 25, scope: !186, inlinedAt: !301)
!319 = !DILocation(line: 42, column: 15, scope: !186, inlinedAt: !301)
!320 = !DILocation(line: 43, column: 16, scope: !186, inlinedAt: !301)
!321 = !DILocation(line: 47, column: 1, scope: !32, inlinedAt: !301)
!322 = !DILocation(line: 65, column: 16, scope: !275)
!323 = !DILocation(line: 75, column: 46, scope: !324)
!324 = distinct !DILexicalBlock(scope: !275, file: !3, line: 75, column: 13)
!325 = !DILocation(line: 0, scope: !224, inlinedAt: !301)
!326 = !DILocation(line: 75, column: 25, scope: !324)
!327 = !DILocation(line: 75, column: 54, scope: !324)
!328 = !{!193, !194, i64 4}
!329 = !DILocation(line: 75, column: 63, scope: !324)
!330 = !DILocation(line: 75, column: 13, scope: !275)
!331 = !DILocation(line: 76, column: 13, scope: !332)
!332 = distinct !DILexicalBlock(scope: !324, file: !3, line: 75, column: 69)
!333 = !DILocation(line: 77, column: 13, scope: !332)
!334 = !DILocation(line: 78, column: 13, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !3, line: 78, column: 13)
!336 = distinct !DILexicalBlock(scope: !332, file: !3, line: 78, column: 13)
!337 = !{!338, !197, i64 0}
!338 = !{!"dict", !197, i64 0, !197, i64 8, !195, i64 16, !202, i64 80, !202, i64 88}
!339 = !{!340, !197, i64 16}
!340 = !{!"dictType", !197, i64 0, !197, i64 8, !197, i64 16, !197, i64 24, !197, i64 32, !197, i64 40}
!341 = !DILocation(line: 78, column: 13, scope: !336)
!342 = !{!338, !197, i64 8}
!343 = !DILocation(line: 85, column: 35, scope: !344)
!344 = distinct !DILexicalBlock(scope: !345, file: !3, line: 84, column: 13)
!345 = distinct !DILexicalBlock(scope: !226, file: !3, line: 84, column: 9)
!346 = !DILocation(line: 85, column: 9, scope: !344)
!347 = !DILocation(line: 86, column: 20, scope: !348)
!348 = distinct !DILexicalBlock(scope: !344, file: !3, line: 86, column: 13)
!349 = !{!350, !194, i64 2924}
!350 = !{!"redisServer", !194, i64 0, !197, i64 8, !197, i64 16, !197, i64 24, !194, i64 32, !194, i64 36, !194, i64 40, !197, i64 48, !197, i64 56, !197, i64 64, !197, i64 72, !194, i64 80, !194, i64 84, !194, i64 88, !194, i64 92, !197, i64 96, !197, i64 104, !194, i64 112, !194, i64 116, !195, i64 120, !194, i64 164, !202, i64 168, !194, i64 176, !197, i64 184, !197, i64 192, !197, i64 200, !195, i64 208, !194, i64 216, !194, i64 220, !195, i64 224, !194, i64 352, !197, i64 360, !194, i64 368, !195, i64 372, !194, i64 436, !194, i64 440, !195, i64 444, !194, i64 508, !197, i64 512, !197, i64 520, !197, i64 528, !197, i64 536, !197, i64 544, !197, i64 552, !197, i64 560, !194, i64 568, !284, i64 576, !195, i64 584, !197, i64 840, !202, i64 848, !194, i64 856, !194, i64 860, !202, i64 864, !202, i64 872, !202, i64 880, !202, i64 888, !197, i64 896, !197, i64 904, !197, i64 912, !197, i64 920, !197, i64 928, !197, i64 936, !197, i64 944, !197, i64 952, !197, i64 960, !197, i64 968, !197, i64 976, !197, i64 984, !197, i64 992, !202, i64 1000, !284, i64 1008, !284, i64 1016, !284, i64 1024, !351, i64 1032, !284, i64 1040, !284, i64 1048, !284, i64 1056, !284, i64 1064, !284, i64 1072, !284, i64 1080, !284, i64 1088, !284, i64 1096, !284, i64 1104, !202, i64 1112, !284, i64 1120, !351, i64 1128, !284, i64 1136, !284, i64 1144, !284, i64 1152, !284, i64 1160, !197, i64 1168, !284, i64 1176, !284, i64 1184, !202, i64 1192, !352, i64 1200, !284, i64 1240, !284, i64 1248, !202, i64 1256, !202, i64 1264, !195, i64 1272, !194, i64 1728, !194, i64 1732, !194, i64 1736, !194, i64 1740, !194, i64 1744, !202, i64 1752, !194, i64 1760, !194, i64 1764, !194, i64 1768, !194, i64 1772, !202, i64 1776, !202, i64 1784, !194, i64 1792, !194, i64 1796, !194, i64 1800, !194, i64 1804, !195, i64 1808, !194, i64 1880, !194, i64 1884, !197, i64 1888, !194, i64 1896, !194, i64 1900, !202, i64 1904, !202, i64 1912, !202, i64 1920, !202, i64 1928, !194, i64 1936, !194, i64 1940, !197, i64 1944, !197, i64 1952, !194, i64 1960, !194, i64 1964, !202, i64 1968, !202, i64 1976, !202, i64 1984, !202, i64 1992, !194, i64 2000, !202, i64 2008, !194, i64 2016, !194, i64 2020, !194, i64 2024, !194, i64 2028, !194, i64 2032, !194, i64 2036, !194, i64 2040, !194, i64 2044, !194, i64 2048, !194, i64 2052, !194, i64 2056, !194, i64 2060, !194, i64 2064, !197, i64 2072, !284, i64 2080, !284, i64 2088, !194, i64 2096, !197, i64 2104, !194, i64 2112, !197, i64 2120, !194, i64 2128, !194, i64 2132, !202, i64 2136, !202, i64 2144, !202, i64 2152, !202, i64 2160, !194, i64 2168, !194, i64 2172, !194, i64 2176, !194, i64 2180, !194, i64 2184, !194, i64 2188, !195, i64 2192, !353, i64 2200, !354, i64 2224, !197, i64 2240, !194, i64 2248, !197, i64 2256, !194, i64 2264, !195, i64 2268, !195, i64 2309, !284, i64 2352, !284, i64 2360, !194, i64 2368, !194, i64 2372, !197, i64 2376, !284, i64 2384, !284, i64 2392, !284, i64 2400, !284, i64 2408, !202, i64 2416, !202, i64 2424, !194, i64 2432, !194, i64 2436, !194, i64 2440, !194, i64 2444, !194, i64 2448, !197, i64 2456, !197, i64 2464, !194, i64 2472, !194, i64 2476, !197, i64 2480, !197, i64 2488, !194, i64 2496, !194, i64 2500, !202, i64 2504, !202, i64 2512, !202, i64 2520, !194, i64 2528, !194, i64 2532, !197, i64 2536, !202, i64 2544, !194, i64 2552, !194, i64 2556, !194, i64 2560, !202, i64 2568, !194, i64 2576, !194, i64 2580, !194, i64 2584, !197, i64 2592, !195, i64 2600, !284, i64 2648, !194, i64 2656, !197, i64 2664, !197, i64 2672, !194, i64 2680, !197, i64 2688, !194, i64 2696, !194, i64 2700, !284, i64 2704, !194, i64 2712, !194, i64 2716, !194, i64 2720, !194, i64 2724, !284, i64 2728, !194, i64 2736, !195, i64 2740, !197, i64 2768, !197, i64 2776, !194, i64 2784, !194, i64 2788, !194, i64 2792, !194, i64 2796, !202, i64 2800, !202, i64 2808, !202, i64 2816, !202, i64 2824, !202, i64 2832, !202, i64 2840, !202, i64 2848, !202, i64 2856, !194, i64 2864, !194, i64 2868, !202, i64 2872, !202, i64 2880, !194, i64 2888, !284, i64 2896, !197, i64 2904, !197, i64 2912, !194, i64 2920, !194, i64 2924, !284, i64 2928, !197, i64 2936, !197, i64 2944, !194, i64 2952, !194, i64 2956, !194, i64 2960, !194, i64 2964, !197, i64 2968, !194, i64 2976, !194, i64 2980, !194, i64 2984, !197, i64 2992, !197, i64 3000, !197, i64 3008, !197, i64 3016, !284, i64 3024, !284, i64 3032, !284, i64 3040, !194, i64 3048, !194, i64 3052, !194, i64 3056, !194, i64 3060, !194, i64 3064, !194, i64 3068, !194, i64 3072, !194, i64 3076, !194, i64 3080, !194, i64 3084, !194, i64 3088, !284, i64 3096, !197, i64 3104, !197, i64 3112, !197, i64 3120, !194, i64 3128, !194, i64 3132, !194, i64 3136, !202, i64 3144, !197, i64 3152, !197, i64 3160, !197, i64 3168}
!351 = !{!"double", !195, i64 0}
!352 = !{!"malloc_stats", !202, i64 0, !202, i64 8, !202, i64 16, !202, i64 24, !202, i64 32}
!353 = !{!"", !194, i64 0, !202, i64 8, !284, i64 16}
!354 = !{!"redisOpArray", !197, i64 0, !194, i64 8}
!355 = !DILocation(line: 86, column: 13, scope: !348)
!356 = !DILocation(line: 86, column: 13, scope: !344)
!357 = !DILocation(line: 86, column: 37, scope: !348)
!358 = !DILocation(line: 0, scope: !359)
!359 = distinct !DILexicalBlock(scope: !345, file: !3, line: 88, column: 12)
!360 = !DILocation(line: 91, column: 1, scope: !226)
!361 = distinct !DISubprogram(name: "freeObjAsync", scope: !3, file: !3, line: 94, type: !362, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !364)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !35}
!364 = !{!365, !366}
!365 = !DILocalVariable(name: "o", arg: 1, scope: !361, file: !3, line: 94, type: !35)
!366 = !DILocalVariable(name: "free_effort", scope: !361, file: !3, line: 95, type: !10)
!367 = !DILocation(line: 94, column: 25, scope: !361)
!368 = !DILocation(line: 31, column: 36, scope: !32, inlinedAt: !369)
!369 = distinct !DILocation(line: 95, column: 26, scope: !361)
!370 = !DILocation(line: 32, column: 14, scope: !51, inlinedAt: !369)
!371 = !DILocation(line: 32, column: 9, scope: !32, inlinedAt: !369)
!372 = !DILocation(line: 33, column: 30, scope: !50, inlinedAt: !369)
!373 = !DILocation(line: 33, column: 20, scope: !50, inlinedAt: !369)
!374 = !DILocation(line: 34, column: 20, scope: !50, inlinedAt: !369)
!375 = !DILocation(line: 35, column: 45, scope: !82, inlinedAt: !369)
!376 = !DILocation(line: 35, column: 54, scope: !82, inlinedAt: !369)
!377 = !DILocation(line: 35, column: 16, scope: !51, inlinedAt: !369)
!378 = !DILocation(line: 36, column: 25, scope: !81, inlinedAt: !369)
!379 = !DILocation(line: 36, column: 15, scope: !81, inlinedAt: !369)
!380 = !DILocation(line: 37, column: 16, scope: !81, inlinedAt: !369)
!381 = !DILocation(line: 38, column: 38, scope: !152, inlinedAt: !369)
!382 = !DILocation(line: 39, column: 25, scope: !151, inlinedAt: !369)
!383 = !DILocation(line: 39, column: 15, scope: !151, inlinedAt: !369)
!384 = !DILocation(line: 40, column: 20, scope: !151, inlinedAt: !369)
!385 = !DILocation(line: 40, column: 25, scope: !151, inlinedAt: !369)
!386 = !DILocation(line: 42, column: 25, scope: !186, inlinedAt: !369)
!387 = !DILocation(line: 42, column: 15, scope: !186, inlinedAt: !369)
!388 = !DILocation(line: 43, column: 16, scope: !186, inlinedAt: !369)
!389 = !DILocation(line: 47, column: 1, scope: !32, inlinedAt: !369)
!390 = !DILocation(line: 95, column: 12, scope: !361)
!391 = !DILocation(line: 96, column: 42, scope: !392)
!392 = distinct !DILexicalBlock(scope: !361, file: !3, line: 96, column: 9)
!393 = !DILocation(line: 0, scope: !224, inlinedAt: !369)
!394 = !DILocation(line: 96, column: 21, scope: !392)
!395 = !DILocation(line: 96, column: 48, scope: !392)
!396 = !DILocation(line: 96, column: 57, scope: !392)
!397 = !DILocation(line: 96, column: 9, scope: !361)
!398 = !DILocation(line: 97, column: 9, scope: !399)
!399 = distinct !DILexicalBlock(scope: !392, file: !3, line: 96, column: 63)
!400 = !DILocation(line: 98, column: 46, scope: !399)
!401 = !DILocation(line: 98, column: 9, scope: !399)
!402 = !DILocation(line: 99, column: 5, scope: !399)
!403 = !DILocation(line: 100, column: 9, scope: !404)
!404 = distinct !DILexicalBlock(scope: !392, file: !3, line: 99, column: 12)
!405 = !DILocation(line: 102, column: 1, scope: !361)
!406 = distinct !DISubprogram(name: "emptyDbAsync", scope: !3, file: !3, line: 107, type: !407, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !409)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !229}
!409 = !{!410, !411, !412}
!410 = !DILocalVariable(name: "db", arg: 1, scope: !406, file: !3, line: 107, type: !229)
!411 = !DILocalVariable(name: "oldht1", scope: !406, file: !3, line: 108, type: !83)
!412 = !DILocalVariable(name: "oldht2", scope: !406, file: !3, line: 108, type: !83)
!413 = !DILocation(line: 107, column: 28, scope: !406)
!414 = !DILocation(line: 108, column: 24, scope: !406)
!415 = !DILocation(line: 108, column: 11, scope: !406)
!416 = !DILocation(line: 108, column: 44, scope: !406)
!417 = !DILocation(line: 108, column: 31, scope: !406)
!418 = !DILocation(line: 109, column: 16, scope: !406)
!419 = !DILocation(line: 109, column: 14, scope: !406)
!420 = !DILocation(line: 110, column: 19, scope: !406)
!421 = !DILocation(line: 110, column: 17, scope: !406)
!422 = !DILocation(line: 111, column: 5, scope: !406)
!423 = !DILocation(line: 112, column: 47, scope: !406)
!424 = !DILocation(line: 112, column: 5, scope: !406)
!425 = !DILocation(line: 113, column: 1, scope: !406)
!426 = distinct !DISubprogram(name: "slotToKeyFlushAsync", scope: !3, file: !3, line: 117, type: !427, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !429)
!427 = !DISubroutineType(types: !428)
!428 = !{null}
!429 = !{!430}
!430 = !DILocalVariable(name: "old", scope: !426, file: !3, line: 118, type: !431)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !433, line: 137, baseType: !434)
!433 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rax.h", directory: "/root/.unikraft/apps/redis/build")
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !433, line: 133, size: 192, elements: !435)
!435 = !{!436, !449, !450}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !434, file: !433, line: 134, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !433, line: 131, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !433, line: 98, size: 32, elements: !440)
!440 = !{!441, !444, !445, !446, !447}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !439, file: !433, line: 99, baseType: !442, size: 1, flags: DIFlagBitField, extraData: i64 0)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !98, line: 48, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !100, line: 79, baseType: !41)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !439, file: !433, line: 100, baseType: !442, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !439, file: !433, line: 101, baseType: !442, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !439, file: !433, line: 102, baseType: !442, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !439, file: !433, line: 130, baseType: !448, offset: 32)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, elements: !180)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !434, file: !433, line: 135, baseType: !97, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !434, file: !433, line: 136, baseType: !97, size: 64, offset: 128)
!451 = !DILocation(line: 118, column: 23, scope: !426)
!452 = !{!350, !197, i64 2944}
!453 = !DILocation(line: 118, column: 32, scope: !426)
!454 = !{!455, !197, i64 524328}
!455 = !{!"clusterState", !197, i64 0, !202, i64 8, !194, i64 16, !194, i64 20, !197, i64 24, !197, i64 32, !195, i64 40, !195, i64 131112, !195, i64 262184, !195, i64 393256, !197, i64 524328, !284, i64 524336, !194, i64 524344, !194, i64 524348, !194, i64 524352, !202, i64 524360, !194, i64 524368, !284, i64 524376, !197, i64 524384, !284, i64 524392, !194, i64 524400, !202, i64 524408, !194, i64 524416, !195, i64 524424, !195, i64 524504, !284, i64 524584}
!456 = !DILocation(line: 118, column: 10, scope: !426)
!457 = !DILocation(line: 120, column: 37, scope: !426)
!458 = !DILocation(line: 120, column: 12, scope: !426)
!459 = !DILocation(line: 120, column: 21, scope: !426)
!460 = !DILocation(line: 120, column: 35, scope: !426)
!461 = !DILocation(line: 121, column: 12, scope: !426)
!462 = !DILocation(line: 121, column: 5, scope: !426)
!463 = !DILocation(line: 123, column: 5, scope: !426)
!464 = !{!465, !202, i64 8}
!465 = !{!"rax", !197, i64 0, !202, i64 8, !202, i64 16}
!466 = !DILocation(line: 124, column: 52, scope: !426)
!467 = !DILocation(line: 124, column: 5, scope: !426)
!468 = !DILocation(line: 125, column: 1, scope: !426)
!469 = distinct !DISubprogram(name: "lazyfreeFreeObjectFromBioThread", scope: !3, file: !3, line: 129, type: !362, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !470)
!470 = !{!471}
!471 = !DILocalVariable(name: "o", arg: 1, scope: !469, file: !3, line: 129, type: !35)
!472 = !DILocation(line: 129, column: 44, scope: !469)
!473 = !DILocation(line: 130, column: 5, scope: !469)
!474 = !DILocation(line: 131, column: 5, scope: !469)
!475 = !DILocation(line: 132, column: 1, scope: !469)
!476 = distinct !DISubprogram(name: "lazyfreeFreeDatabaseFromBioThread", scope: !3, file: !3, line: 139, type: !477, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !479)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !83, !83}
!479 = !{!480, !481, !482}
!480 = !DILocalVariable(name: "ht1", arg: 1, scope: !476, file: !3, line: 139, type: !83)
!481 = !DILocalVariable(name: "ht2", arg: 2, scope: !476, file: !3, line: 139, type: !83)
!482 = !DILocalVariable(name: "numkeys", scope: !476, file: !3, line: 140, type: !10)
!483 = !DILocation(line: 139, column: 46, scope: !476)
!484 = !DILocation(line: 139, column: 57, scope: !476)
!485 = !DILocation(line: 140, column: 22, scope: !476)
!486 = !DILocation(line: 140, column: 12, scope: !476)
!487 = !DILocation(line: 141, column: 5, scope: !476)
!488 = !DILocation(line: 142, column: 5, scope: !476)
!489 = !DILocation(line: 143, column: 5, scope: !476)
!490 = !DILocation(line: 144, column: 1, scope: !476)
!491 = distinct !DISubprogram(name: "lazyfreeFreeSlotsMapFromBioThread", scope: !3, file: !3, line: 148, type: !492, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !494)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !431}
!494 = !{!495, !496}
!495 = !DILocalVariable(name: "rt", arg: 1, scope: !491, file: !3, line: 148, type: !431)
!496 = !DILocalVariable(name: "len", scope: !491, file: !3, line: 149, type: !10)
!497 = !DILocation(line: 148, column: 45, scope: !491)
!498 = !DILocation(line: 149, column: 22, scope: !491)
!499 = !DILocation(line: 149, column: 12, scope: !491)
!500 = !DILocation(line: 150, column: 5, scope: !491)
!501 = !DILocation(line: 151, column: 5, scope: !491)
!502 = !DILocation(line: 152, column: 1, scope: !491)
