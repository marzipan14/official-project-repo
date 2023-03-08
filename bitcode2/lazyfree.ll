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
  %4 = and i32 %3, 15, !dbg !189
  %5 = icmp eq i32 %4, 1, !dbg !190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !191
  br i1 %5, label %6, label %12, !dbg !191

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !192
  %8 = bitcast i8** %7 to %struct.quicklist**, !dbg !192
  %9 = load %struct.quicklist*, %struct.quicklist** %8, align 8, !dbg !192, !tbaa !193
  %10 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %9, i64 0, i32 3, !dbg !200
  %11 = load i64, i64* %10, align 8, !dbg !200, !tbaa !201
  br label %55

; <label>:12:                                     ; preds = %1
  %13 = icmp eq i32 %4, 2, !dbg !204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !205
  br i1 %13, label %14, label %27, !dbg !205

; <label>:14:                                     ; preds = %12
  %15 = and i32 %3, 240, !dbg !206
  %16 = icmp eq i32 %15, 32, !dbg !207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  br i1 %16, label %18, label %17, !dbg !208

; <label>:17:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !209
  br label %40, !dbg !209

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !210
  %20 = bitcast i8** %19 to %struct.dict**, !dbg !210
  %21 = load %struct.dict*, %struct.dict** %20, align 8, !dbg !210, !tbaa !193
  %22 = getelementptr inbounds %struct.dict, %struct.dict* %21, i64 0, i32 2, i64 0, i32 3, !dbg !212
  %23 = load i64, i64* %22, align 8, !dbg !212, !tbaa !213
  %24 = getelementptr inbounds %struct.dict, %struct.dict* %21, i64 0, i32 2, i64 1, i32 3, !dbg !212
  %25 = load i64, i64* %24, align 8, !dbg !212, !tbaa !213
  %26 = add i64 %25, %23, !dbg !212
  br label %55

; <label>:27:                                     ; preds = %12
  %28 = icmp eq i32 %4, 3, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !209
  br i1 %28, label %29, label %41, !dbg !209

; <label>:29:                                     ; preds = %27
  %30 = and i32 %3, 240, !dbg !216
  %31 = icmp eq i32 %30, 112, !dbg !217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  br i1 %31, label %32, label %40, !dbg !218

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !219
  %34 = bitcast i8** %33 to %struct.zset**, !dbg !219
  %35 = load %struct.zset*, %struct.zset** %34, align 8, !dbg !219, !tbaa !193
  %36 = getelementptr inbounds %struct.zset, %struct.zset* %35, i64 0, i32 1, !dbg !221
  %37 = load %struct.zskiplist*, %struct.zskiplist** %36, align 8, !dbg !221, !tbaa !222
  %38 = getelementptr inbounds %struct.zskiplist, %struct.zskiplist* %37, i64 0, i32 2, !dbg !224
  %39 = load i64, i64* %38, align 8, !dbg !224, !tbaa !225
  br label %55

; <label>:40:                                     ; preds = %17, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  br label %55, !dbg !227

; <label>:41:                                     ; preds = %27
  %42 = icmp eq i32 %4, 4, !dbg !228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  br i1 %42, label %43, label %55, !dbg !227

; <label>:43:                                     ; preds = %41
  %44 = and i32 %3, 240, !dbg !229
  %45 = icmp eq i32 %44, 32, !dbg !230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !231
  br i1 %45, label %46, label %55, !dbg !231

; <label>:46:                                     ; preds = %43
  %47 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !232
  %48 = bitcast i8** %47 to %struct.dict**, !dbg !232
  %49 = load %struct.dict*, %struct.dict** %48, align 8, !dbg !232, !tbaa !193
  %50 = getelementptr inbounds %struct.dict, %struct.dict* %49, i64 0, i32 2, i64 0, i32 3, !dbg !234
  %51 = load i64, i64* %50, align 8, !dbg !234, !tbaa !213
  %52 = getelementptr inbounds %struct.dict, %struct.dict* %49, i64 0, i32 2, i64 1, i32 3, !dbg !234
  %53 = load i64, i64* %52, align 8, !dbg !234, !tbaa !213
  %54 = add i64 %53, %51, !dbg !234
  br label %55

; <label>:55:                                     ; preds = %41, %43, %40, %46, %32, %18, %6
  %56 = phi i64 [ %11, %6 ], [ %26, %18 ], [ %39, %32 ], [ %54, %46 ], [ 1, %40 ], [ 1, %43 ], [ 1, %41 ], !dbg !235
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !237
  ret i64 %56, !dbg !237
}

; Function Attrs: noredzone nounwind
define dso_local i32 @dbAsyncDelete(%struct.redisDb* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !238 {
  %3 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !292
  %4 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !292, !tbaa !294
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %4, i64 0, i32 2, i64 0, i32 3, !dbg !292
  %6 = load i64, i64* %5, align 8, !dbg !292, !tbaa !213
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %4, i64 0, i32 2, i64 1, i32 3, !dbg !292
  %8 = load i64, i64* %7, align 8, !dbg !292, !tbaa !213
  %9 = sub i64 0, %8, !dbg !297
  %10 = icmp eq i64 %6, %9, !dbg !297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !299
  br i1 %10, label %15, label %12, !dbg !298

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %11, align 8, !dbg !300, !tbaa !193
  %14 = tail call i32 @dictDelete(%struct.dict* %4, i8* %13) #3, !dbg !301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  br label %15, !dbg !301

; <label>:15:                                     ; preds = %2, %12
  %16 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !302
  %17 = load %struct.dict*, %struct.dict** %16, align 8, !dbg !302, !tbaa !303
  %18 = load i8*, i8** %11, align 8, !dbg !304, !tbaa !193
  %19 = tail call %struct.dictEntry* @dictUnlink(%struct.dict* %17, i8* %18) #3, !dbg !305
  %20 = icmp eq %struct.dictEntry* %19, null, !dbg !307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  br i1 %20, label %104, label %21, !dbg !308

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %19, i64 0, i32 1, i32 0, !dbg !309
  %23 = load i8*, i8** %22, align 8, !dbg !309, !tbaa !310
  %24 = bitcast i8* %23 to i32*, !dbg !311
  %25 = load i32, i32* %24, align 8, !dbg !311
  %26 = and i32 %25, 15, !dbg !311
  %27 = icmp eq i32 %26, 1, !dbg !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  br i1 %27, label %28, label %34, !dbg !314

; <label>:28:                                     ; preds = %21
  %29 = getelementptr inbounds i8, i8* %23, i64 8, !dbg !317
  %30 = bitcast i8* %29 to %struct.quicklist**, !dbg !317
  %31 = load %struct.quicklist*, %struct.quicklist** %30, align 8, !dbg !317, !tbaa !193
  %32 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %31, i64 0, i32 3, !dbg !319
  %33 = load i64, i64* %32, align 8, !dbg !319, !tbaa !201
  br label %78

; <label>:34:                                     ; preds = %21
  %35 = icmp eq i32 %26, 2, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !321
  br i1 %35, label %36, label %49, !dbg !321

; <label>:36:                                     ; preds = %34
  %37 = and i32 %25, 240, !dbg !322
  %38 = icmp eq i32 %37, 32, !dbg !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  br i1 %38, label %40, label %39, !dbg !324

; <label>:39:                                     ; preds = %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  br label %62, !dbg !325

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds i8, i8* %23, i64 8, !dbg !326
  %42 = bitcast i8* %41 to %struct.dict**, !dbg !326
  %43 = load %struct.dict*, %struct.dict** %42, align 8, !dbg !326, !tbaa !193
  %44 = getelementptr inbounds %struct.dict, %struct.dict* %43, i64 0, i32 2, i64 0, i32 3, !dbg !328
  %45 = load i64, i64* %44, align 8, !dbg !328, !tbaa !213
  %46 = getelementptr inbounds %struct.dict, %struct.dict* %43, i64 0, i32 2, i64 1, i32 3, !dbg !328
  %47 = load i64, i64* %46, align 8, !dbg !328, !tbaa !213
  %48 = add i64 %47, %45, !dbg !328
  br label %78

; <label>:49:                                     ; preds = %34
  %50 = icmp eq i32 %26, 3, !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  br i1 %50, label %51, label %63, !dbg !325

; <label>:51:                                     ; preds = %49
  %52 = and i32 %25, 240, !dbg !330
  %53 = icmp eq i32 %52, 112, !dbg !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  br i1 %53, label %54, label %62, !dbg !332

; <label>:54:                                     ; preds = %51
  %55 = getelementptr inbounds i8, i8* %23, i64 8, !dbg !333
  %56 = bitcast i8* %55 to %struct.zset**, !dbg !333
  %57 = load %struct.zset*, %struct.zset** %56, align 8, !dbg !333, !tbaa !193
  %58 = getelementptr inbounds %struct.zset, %struct.zset* %57, i64 0, i32 1, !dbg !335
  %59 = load %struct.zskiplist*, %struct.zskiplist** %58, align 8, !dbg !335, !tbaa !222
  %60 = getelementptr inbounds %struct.zskiplist, %struct.zskiplist* %59, i64 0, i32 2, !dbg !336
  %61 = load i64, i64* %60, align 8, !dbg !336, !tbaa !225
  br label %78

; <label>:62:                                     ; preds = %51, %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  br label %77, !dbg !337

; <label>:63:                                     ; preds = %49
  %64 = icmp eq i32 %26, 4, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  br i1 %64, label %65, label %77, !dbg !337

; <label>:65:                                     ; preds = %63
  %66 = and i32 %25, 240, !dbg !339
  %67 = icmp eq i32 %66, 32, !dbg !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !341
  br i1 %67, label %68, label %77, !dbg !341

; <label>:68:                                     ; preds = %65
  %69 = getelementptr inbounds i8, i8* %23, i64 8, !dbg !342
  %70 = bitcast i8* %69 to %struct.dict**, !dbg !342
  %71 = load %struct.dict*, %struct.dict** %70, align 8, !dbg !342, !tbaa !193
  %72 = getelementptr inbounds %struct.dict, %struct.dict* %71, i64 0, i32 2, i64 0, i32 3, !dbg !344
  %73 = load i64, i64* %72, align 8, !dbg !344, !tbaa !213
  %74 = getelementptr inbounds %struct.dict, %struct.dict* %71, i64 0, i32 2, i64 1, i32 3, !dbg !344
  %75 = load i64, i64* %74, align 8, !dbg !344, !tbaa !213
  %76 = add i64 %75, %73, !dbg !344
  br label %78

; <label>:77:                                     ; preds = %62, %63, %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  br label %99, !dbg !348

; <label>:78:                                     ; preds = %28, %40, %54, %68
  %79 = phi i64 [ %33, %28 ], [ %48, %40 ], [ %61, %54 ], [ %76, %68 ], !dbg !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !346
  %80 = icmp ugt i64 %79, 64, !dbg !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  br i1 %80, label %81, label %99, !dbg !348

; <label>:81:                                     ; preds = %78
  %82 = getelementptr inbounds i8, i8* %23, i64 4, !dbg !352
  %83 = bitcast i8* %82 to i32*, !dbg !352
  %84 = load i32, i32* %83, align 4, !dbg !352, !tbaa !353
  %85 = icmp eq i32 %84, 1, !dbg !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  br i1 %85, label %86, label %99, !dbg !355

; <label>:86:                                     ; preds = %81
  %87 = atomicrmw add i64* @lazyfree_objects, i64 1 monotonic, !dbg !356
  tail call void @bioCreateBackgroundJob(i32 2, i8* nonnull %23, i8* null, i8* null) #3, !dbg !358
  %88 = load %struct.dict*, %struct.dict** %16, align 8, !dbg !359, !tbaa !303
  %89 = getelementptr inbounds %struct.dict, %struct.dict* %88, i64 0, i32 0, !dbg !359
  %90 = load %struct.dictType*, %struct.dictType** %89, align 8, !dbg !359, !tbaa !362
  %91 = getelementptr inbounds %struct.dictType, %struct.dictType* %90, i64 0, i32 2, !dbg !359
  %92 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %91, align 8, !dbg !359, !tbaa !364
  %93 = icmp eq i8* (i8*, i8*)* %92, null, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  br i1 %93, label %98, label %94, !dbg !366

; <label>:94:                                     ; preds = %86
  %95 = getelementptr inbounds %struct.dict, %struct.dict* %88, i64 0, i32 1, !dbg !359
  %96 = load i8*, i8** %95, align 8, !dbg !359, !tbaa !367
  %97 = tail call i8* %92(i8* %96, i8* null) #3, !dbg !359
  store i8* %97, i8** %22, align 8, !dbg !359, !tbaa !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  br label %99, !dbg !359

; <label>:98:                                     ; preds = %86
  store i8* null, i8** %22, align 8, !dbg !359, !tbaa !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %99

; <label>:99:                                     ; preds = %78, %81, %98, %94, %77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  %100 = load %struct.dict*, %struct.dict** %16, align 8, !dbg !370, !tbaa !303
  tail call void @dictFreeUnlinkedEntry(%struct.dict* %100, %struct.dictEntry* nonnull %19) #3, !dbg !373
  %101 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !374, !tbaa !376
  %102 = icmp eq i32 %101, 0, !dbg !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  br i1 %102, label %106, label %103, !dbg !383

; <label>:103:                                    ; preds = %99
  tail call void @slotToKeyDel(%struct.redisObject* nonnull %1) #3, !dbg !384
  br label %104, !dbg !384

; <label>:104:                                    ; preds = %15, %103
  %105 = phi i32 [ 1, %103 ], [ 0, %15 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  br label %106, !dbg !386

; <label>:106:                                    ; preds = %104, %99
  %107 = phi i32 [ 1, %99 ], [ %105, %104 ], !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !389
  ret i32 %107, !dbg !389
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
define dso_local void @freeObjAsync(%struct.redisObject*) local_unnamed_addr #0 !dbg !390 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !399
  %3 = load i32, i32* %2, align 8, !dbg !399
  %4 = and i32 %3, 15, !dbg !399
  %5 = icmp eq i32 %4, 1, !dbg !400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  br i1 %5, label %6, label %12, !dbg !401

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !402
  %8 = bitcast i8** %7 to %struct.quicklist**, !dbg !402
  %9 = load %struct.quicklist*, %struct.quicklist** %8, align 8, !dbg !402, !tbaa !193
  %10 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %9, i64 0, i32 3, !dbg !404
  %11 = load i64, i64* %10, align 8, !dbg !404, !tbaa !201
  br label %56

; <label>:12:                                     ; preds = %1
  %13 = icmp eq i32 %4, 2, !dbg !405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  br i1 %13, label %14, label %27, !dbg !406

; <label>:14:                                     ; preds = %12
  %15 = and i32 %3, 240, !dbg !407
  %16 = icmp eq i32 %15, 32, !dbg !408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  br i1 %16, label %18, label %17, !dbg !409

; <label>:17:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  br label %40, !dbg !410

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !411
  %20 = bitcast i8** %19 to %struct.dict**, !dbg !411
  %21 = load %struct.dict*, %struct.dict** %20, align 8, !dbg !411, !tbaa !193
  %22 = getelementptr inbounds %struct.dict, %struct.dict* %21, i64 0, i32 2, i64 0, i32 3, !dbg !413
  %23 = load i64, i64* %22, align 8, !dbg !413, !tbaa !213
  %24 = getelementptr inbounds %struct.dict, %struct.dict* %21, i64 0, i32 2, i64 1, i32 3, !dbg !413
  %25 = load i64, i64* %24, align 8, !dbg !413, !tbaa !213
  %26 = add i64 %25, %23, !dbg !413
  br label %56

; <label>:27:                                     ; preds = %12
  %28 = icmp eq i32 %4, 3, !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  br i1 %28, label %29, label %41, !dbg !410

; <label>:29:                                     ; preds = %27
  %30 = and i32 %3, 240, !dbg !415
  %31 = icmp eq i32 %30, 112, !dbg !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  br i1 %31, label %32, label %40, !dbg !417

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !418
  %34 = bitcast i8** %33 to %struct.zset**, !dbg !418
  %35 = load %struct.zset*, %struct.zset** %34, align 8, !dbg !418, !tbaa !193
  %36 = getelementptr inbounds %struct.zset, %struct.zset* %35, i64 0, i32 1, !dbg !420
  %37 = load %struct.zskiplist*, %struct.zskiplist** %36, align 8, !dbg !420, !tbaa !222
  %38 = getelementptr inbounds %struct.zskiplist, %struct.zskiplist* %37, i64 0, i32 2, !dbg !421
  %39 = load i64, i64* %38, align 8, !dbg !421, !tbaa !225
  br label %56

; <label>:40:                                     ; preds = %29, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  br label %55, !dbg !422

; <label>:41:                                     ; preds = %27
  %42 = icmp eq i32 %4, 4, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  br i1 %42, label %43, label %55, !dbg !422

; <label>:43:                                     ; preds = %41
  %44 = and i32 %3, 240, !dbg !424
  %45 = icmp eq i32 %44, 32, !dbg !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  br i1 %45, label %46, label %55, !dbg !426

; <label>:46:                                     ; preds = %43
  %47 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !427
  %48 = bitcast i8** %47 to %struct.dict**, !dbg !427
  %49 = load %struct.dict*, %struct.dict** %48, align 8, !dbg !427, !tbaa !193
  %50 = getelementptr inbounds %struct.dict, %struct.dict* %49, i64 0, i32 2, i64 0, i32 3, !dbg !429
  %51 = load i64, i64* %50, align 8, !dbg !429, !tbaa !213
  %52 = getelementptr inbounds %struct.dict, %struct.dict* %49, i64 0, i32 2, i64 1, i32 3, !dbg !429
  %53 = load i64, i64* %52, align 8, !dbg !429, !tbaa !213
  %54 = add i64 %53, %51, !dbg !429
  br label %56

; <label>:55:                                     ; preds = %40, %41, %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  br label %66, !dbg !433

; <label>:56:                                     ; preds = %6, %18, %32, %46
  %57 = phi i64 [ %11, %6 ], [ %26, %18 ], [ %39, %32 ], [ %54, %46 ], !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  %58 = icmp ugt i64 %57, 64, !dbg !436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  br i1 %58, label %59, label %66, !dbg !433

; <label>:59:                                     ; preds = %56
  %60 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 1, !dbg !437
  %61 = load i32, i32* %60, align 4, !dbg !437, !tbaa !353
  %62 = icmp eq i32 %61, 1, !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  br i1 %62, label %63, label %66, !dbg !439

; <label>:63:                                     ; preds = %59
  %64 = atomicrmw add i64* @lazyfree_objects, i64 1 monotonic, !dbg !440
  %65 = bitcast %struct.redisObject* %0 to i8*, !dbg !442
  tail call void @bioCreateBackgroundJob(i32 2, i8* %65, i8* null, i8* null) #3, !dbg !443
  br label %67, !dbg !444

; <label>:66:                                     ; preds = %55, %59, %56
  tail call void @decrRefCount(%struct.redisObject* nonnull %0) #3, !dbg !445
  br label %67

; <label>:67:                                     ; preds = %66, %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  ret void, !dbg !447
}

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @emptyDbAsync(%struct.redisDb* nocapture) local_unnamed_addr #0 !dbg !448 {
  %2 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !456
  %3 = load %struct.dict*, %struct.dict** %2, align 8, !dbg !456, !tbaa !303
  %4 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !458
  %5 = bitcast %struct.dict** %4 to i8**, !dbg !458
  %6 = load i8*, i8** %5, align 8, !dbg !458, !tbaa !294
  %7 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @dbDictType, i8* null) #3, !dbg !460
  store %struct.dict* %7, %struct.dict** %2, align 8, !dbg !461, !tbaa !303
  %8 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @keyptrDictType, i8* null) #3, !dbg !462
  store %struct.dict* %8, %struct.dict** %4, align 8, !dbg !463, !tbaa !294
  %9 = getelementptr inbounds %struct.dict, %struct.dict* %3, i64 0, i32 2, i64 0, i32 3, !dbg !464
  %10 = load i64, i64* %9, align 8, !dbg !464, !tbaa !213
  %11 = getelementptr inbounds %struct.dict, %struct.dict* %3, i64 0, i32 2, i64 1, i32 3, !dbg !464
  %12 = load i64, i64* %11, align 8, !dbg !464, !tbaa !213
  %13 = add i64 %12, %10, !dbg !464
  %14 = atomicrmw add i64* @lazyfree_objects, i64 %13 monotonic, !dbg !464
  %15 = bitcast %struct.dict* %3 to i8*, !dbg !465
  tail call void @bioCreateBackgroundJob(i32 2, i8* null, i8* %15, i8* %6) #3, !dbg !466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  ret void, !dbg !467
}

; Function Attrs: noredzone
declare dso_local %struct.dict* @dictCreate(%struct.dictType*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @slotToKeyFlushAsync() local_unnamed_addr #0 !dbg !468 {
  %1 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !493, !tbaa !494
  %2 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %1, i64 0, i32 10, !dbg !495
  %3 = load %struct.rax*, %struct.rax** %2, align 8, !dbg !495, !tbaa !496
  %4 = tail call %struct.rax* @raxNew() #3, !dbg !499
  %5 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !500, !tbaa !494
  %6 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %5, i64 0, i32 10, !dbg !501
  store %struct.rax* %4, %struct.rax** %6, align 8, !dbg !502, !tbaa !496
  %7 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %5, i64 0, i32 9, i64 0, !dbg !503
  %8 = bitcast i64* %7 to i8*, !dbg !503
  %9 = tail call i8* @memset(i8* nonnull %8, i32 0, i64 131072) #3, !dbg !504
  %10 = getelementptr inbounds %struct.rax, %struct.rax* %3, i64 0, i32 1, !dbg !505
  %11 = load i64, i64* %10, align 8, !dbg !505, !tbaa !506
  %12 = atomicrmw add i64* @lazyfree_objects, i64 %11 monotonic, !dbg !505
  %13 = bitcast %struct.rax* %3 to i8*, !dbg !508
  tail call void @bioCreateBackgroundJob(i32 2, i8* null, i8* null, i8* %13) #3, !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  ret void, !dbg !510
}

; Function Attrs: noredzone
declare dso_local %struct.rax* @raxNew() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @lazyfreeFreeObjectFromBioThread(%struct.redisObject*) local_unnamed_addr #0 !dbg !511 {
  tail call void @decrRefCount(%struct.redisObject* %0) #3, !dbg !515
  %2 = atomicrmw sub i64* @lazyfree_objects, i64 1 monotonic, !dbg !516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !517
  ret void, !dbg !517
}

; Function Attrs: noredzone nounwind
define dso_local void @lazyfreeFreeDatabaseFromBioThread(%struct.dict*, %struct.dict*) local_unnamed_addr #0 !dbg !518 {
  %3 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !527
  %4 = load i64, i64* %3, align 8, !dbg !527, !tbaa !213
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !527
  %6 = load i64, i64* %5, align 8, !dbg !527, !tbaa !213
  %7 = add i64 %6, %4, !dbg !527
  tail call void @dictRelease(%struct.dict* %0) #3, !dbg !529
  tail call void @dictRelease(%struct.dict* %1) #3, !dbg !530
  %8 = atomicrmw sub i64* @lazyfree_objects, i64 %7 monotonic, !dbg !531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !532
  ret void, !dbg !532
}

; Function Attrs: noredzone
declare dso_local void @dictRelease(%struct.dict*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @lazyfreeFreeSlotsMapFromBioThread(%struct.rax*) local_unnamed_addr #0 !dbg !533 {
  %2 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 1, !dbg !540
  %3 = load i64, i64* %2, align 8, !dbg !540, !tbaa !506
  tail call void @raxFree(%struct.rax* %0) #3, !dbg !542
  %4 = atomicrmw sub i64* @lazyfree_objects, i64 %3 monotonic, !dbg !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  ret void, !dbg !544
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
!190 = !DILocation(line: 32, column: 19, scope: !51)
!191 = !DILocation(line: 32, column: 9, scope: !32)
!192 = !DILocation(line: 33, column: 30, scope: !50)
!193 = !{!194, !198, i64 8}
!194 = !{!"redisObject", !195, i64 0, !195, i64 0, !195, i64 1, !195, i64 4, !198, i64 8}
!195 = !{!"int", !196, i64 0}
!196 = !{!"omnipotent char", !197, i64 0}
!197 = !{!"Simple C/C++ TBAA"}
!198 = !{!"any pointer", !196, i64 0}
!199 = !DILocation(line: 33, column: 20, scope: !50)
!200 = !DILocation(line: 34, column: 20, scope: !50)
!201 = !{!202, !203, i64 24}
!202 = !{!"quicklist", !198, i64 0, !198, i64 8, !203, i64 16, !203, i64 24, !195, i64 32, !195, i64 34}
!203 = !{!"long", !196, i64 0}
!204 = !DILocation(line: 35, column: 26, scope: !82)
!205 = !DILocation(line: 35, column: 37, scope: !82)
!206 = !DILocation(line: 35, column: 45, scope: !82)
!207 = !DILocation(line: 35, column: 54, scope: !82)
!208 = !DILocation(line: 35, column: 16, scope: !51)
!209 = !DILocation(line: 38, column: 38, scope: !152)
!210 = !DILocation(line: 36, column: 25, scope: !81)
!211 = !DILocation(line: 36, column: 15, scope: !81)
!212 = !DILocation(line: 37, column: 16, scope: !81)
!213 = !{!214, !203, i64 24}
!214 = !{!"dictht", !198, i64 0, !203, i64 8, !203, i64 16, !203, i64 24}
!215 = !DILocation(line: 38, column: 26, scope: !152)
!216 = !DILocation(line: 38, column: 46, scope: !152)
!217 = !DILocation(line: 38, column: 55, scope: !152)
!218 = !DILocation(line: 38, column: 16, scope: !82)
!219 = !DILocation(line: 39, column: 25, scope: !151)
!220 = !DILocation(line: 39, column: 15, scope: !151)
!221 = !DILocation(line: 40, column: 20, scope: !151)
!222 = !{!223, !198, i64 8}
!223 = !{!"zset", !198, i64 0, !198, i64 8}
!224 = !DILocation(line: 40, column: 25, scope: !151)
!225 = !{!226, !203, i64 16}
!226 = !{!"zskiplist", !198, i64 0, !198, i64 8, !203, i64 16, !195, i64 24}
!227 = !DILocation(line: 41, column: 38, scope: !187)
!228 = !DILocation(line: 41, column: 26, scope: !187)
!229 = !DILocation(line: 41, column: 46, scope: !187)
!230 = !DILocation(line: 41, column: 55, scope: !187)
!231 = !DILocation(line: 41, column: 16, scope: !152)
!232 = !DILocation(line: 42, column: 25, scope: !186)
!233 = !DILocation(line: 42, column: 15, scope: !186)
!234 = !DILocation(line: 43, column: 16, scope: !186)
!235 = !DILocation(line: 0, scope: !236)
!236 = distinct !DILexicalBlock(scope: !187, file: !3, line: 44, column: 12)
!237 = !DILocation(line: 47, column: 1, scope: !32)
!238 = distinct !DISubprogram(name: "dbAsyncDelete", scope: !3, file: !3, line: 54, type: !239, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !282)
!239 = !DISubroutineType(types: !240)
!240 = !{!45, !241, !35}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !37, line: 656, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !37, line: 647, size: 512, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251, !253}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !243, file: !37, line: 648, baseType: !83, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !243, file: !37, line: 649, baseType: !83, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !243, file: !37, line: 650, baseType: !83, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !243, file: !37, line: 651, baseType: !83, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !243, file: !37, line: 652, baseType: !83, size: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !243, file: !37, line: 653, baseType: !45, size: 32, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !243, file: !37, line: 654, baseType: !252, size: 64, offset: 384)
!252 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !243, file: !37, line: 655, baseType: !254, size: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !256, line: 54, baseType: !257)
!256 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !256, line: 47, size: 384, elements: !258)
!258 = !{!259, !268, !269, !273, !277, !281}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !257, file: !256, line: 48, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !256, line: 40, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !256, line: 36, size: 192, elements: !263)
!263 = !{!264, !266, !267}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !262, file: !256, line: 37, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !262, file: !256, line: 38, baseType: !265, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !262, file: !256, line: 39, baseType: !6, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !257, file: !256, line: 49, baseType: !260, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !257, file: !256, line: 50, baseType: !270, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!6, !6}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !257, file: !256, line: 51, baseType: !274, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !6}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !257, file: !256, line: 52, baseType: !278, size: 64, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!45, !6, !6}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !257, file: !256, line: 53, baseType: !14, size: 64, offset: 320)
!282 = !{!283, !284, !285, !286, !289}
!283 = !DILocalVariable(name: "db", arg: 1, scope: !238, file: !3, line: 54, type: !241)
!284 = !DILocalVariable(name: "key", arg: 2, scope: !238, file: !3, line: 54, type: !35)
!285 = !DILocalVariable(name: "de", scope: !238, file: !3, line: 62, type: !125)
!286 = !DILocalVariable(name: "val", scope: !287, file: !3, line: 64, type: !35)
!287 = distinct !DILexicalBlock(scope: !288, file: !3, line: 63, column: 13)
!288 = distinct !DILexicalBlock(scope: !238, file: !3, line: 63, column: 9)
!289 = !DILocalVariable(name: "free_effort", scope: !287, file: !3, line: 65, type: !10)
!290 = !DILocation(line: 54, column: 28, scope: !238)
!291 = !DILocation(line: 54, column: 38, scope: !238)
!292 = !DILocation(line: 57, column: 9, scope: !293)
!293 = distinct !DILexicalBlock(scope: !238, file: !3, line: 57, column: 9)
!294 = !{!295, !198, i64 8}
!295 = !{!"redisDb", !198, i64 0, !198, i64 8, !198, i64 16, !198, i64 24, !198, i64 32, !195, i64 40, !296, i64 48, !198, i64 56}
!296 = !{!"long long", !196, i64 0}
!297 = !DILocation(line: 57, column: 31, scope: !293)
!298 = !DILocation(line: 57, column: 9, scope: !238)
!299 = !DILocation(line: 0, scope: !293)
!300 = !DILocation(line: 57, column: 64, scope: !293)
!301 = !DILocation(line: 57, column: 36, scope: !293)
!302 = !DILocation(line: 62, column: 36, scope: !238)
!303 = !{!295, !198, i64 0}
!304 = !DILocation(line: 62, column: 46, scope: !238)
!305 = !DILocation(line: 62, column: 21, scope: !238)
!306 = !DILocation(line: 62, column: 16, scope: !238)
!307 = !DILocation(line: 63, column: 9, scope: !288)
!308 = !DILocation(line: 63, column: 9, scope: !238)
!309 = !DILocation(line: 64, column: 21, scope: !287)
!310 = !{!196, !196, i64 0}
!311 = !DILocation(line: 32, column: 14, scope: !51, inlinedAt: !312)
!312 = distinct !DILocation(line: 65, column: 30, scope: !287)
!313 = !DILocation(line: 32, column: 19, scope: !51, inlinedAt: !312)
!314 = !DILocation(line: 32, column: 9, scope: !32, inlinedAt: !312)
!315 = !DILocation(line: 31, column: 36, scope: !32, inlinedAt: !312)
!316 = !DILocation(line: 64, column: 15, scope: !287)
!317 = !DILocation(line: 33, column: 30, scope: !50, inlinedAt: !312)
!318 = !DILocation(line: 33, column: 20, scope: !50, inlinedAt: !312)
!319 = !DILocation(line: 34, column: 20, scope: !50, inlinedAt: !312)
!320 = !DILocation(line: 35, column: 26, scope: !82, inlinedAt: !312)
!321 = !DILocation(line: 35, column: 37, scope: !82, inlinedAt: !312)
!322 = !DILocation(line: 35, column: 45, scope: !82, inlinedAt: !312)
!323 = !DILocation(line: 35, column: 54, scope: !82, inlinedAt: !312)
!324 = !DILocation(line: 35, column: 16, scope: !51, inlinedAt: !312)
!325 = !DILocation(line: 38, column: 38, scope: !152, inlinedAt: !312)
!326 = !DILocation(line: 36, column: 25, scope: !81, inlinedAt: !312)
!327 = !DILocation(line: 36, column: 15, scope: !81, inlinedAt: !312)
!328 = !DILocation(line: 37, column: 16, scope: !81, inlinedAt: !312)
!329 = !DILocation(line: 38, column: 26, scope: !152, inlinedAt: !312)
!330 = !DILocation(line: 38, column: 46, scope: !152, inlinedAt: !312)
!331 = !DILocation(line: 38, column: 55, scope: !152, inlinedAt: !312)
!332 = !DILocation(line: 38, column: 16, scope: !82, inlinedAt: !312)
!333 = !DILocation(line: 39, column: 25, scope: !151, inlinedAt: !312)
!334 = !DILocation(line: 39, column: 15, scope: !151, inlinedAt: !312)
!335 = !DILocation(line: 40, column: 20, scope: !151, inlinedAt: !312)
!336 = !DILocation(line: 40, column: 25, scope: !151, inlinedAt: !312)
!337 = !DILocation(line: 41, column: 38, scope: !187, inlinedAt: !312)
!338 = !DILocation(line: 41, column: 26, scope: !187, inlinedAt: !312)
!339 = !DILocation(line: 41, column: 46, scope: !187, inlinedAt: !312)
!340 = !DILocation(line: 41, column: 55, scope: !187, inlinedAt: !312)
!341 = !DILocation(line: 41, column: 16, scope: !152, inlinedAt: !312)
!342 = !DILocation(line: 42, column: 25, scope: !186, inlinedAt: !312)
!343 = !DILocation(line: 42, column: 15, scope: !186, inlinedAt: !312)
!344 = !DILocation(line: 43, column: 16, scope: !186, inlinedAt: !312)
!345 = !DILocation(line: 45, column: 9, scope: !236, inlinedAt: !312)
!346 = !DILocation(line: 47, column: 1, scope: !32, inlinedAt: !312)
!347 = !DILocation(line: 65, column: 16, scope: !287)
!348 = !DILocation(line: 75, column: 46, scope: !349)
!349 = distinct !DILexicalBlock(scope: !287, file: !3, line: 75, column: 13)
!350 = !DILocation(line: 0, scope: !236, inlinedAt: !312)
!351 = !DILocation(line: 75, column: 25, scope: !349)
!352 = !DILocation(line: 75, column: 54, scope: !349)
!353 = !{!194, !195, i64 4}
!354 = !DILocation(line: 75, column: 63, scope: !349)
!355 = !DILocation(line: 75, column: 13, scope: !287)
!356 = !DILocation(line: 76, column: 13, scope: !357)
!357 = distinct !DILexicalBlock(scope: !349, file: !3, line: 75, column: 69)
!358 = !DILocation(line: 77, column: 13, scope: !357)
!359 = !DILocation(line: 78, column: 13, scope: !360)
!360 = distinct !DILexicalBlock(scope: !361, file: !3, line: 78, column: 13)
!361 = distinct !DILexicalBlock(scope: !357, file: !3, line: 78, column: 13)
!362 = !{!363, !198, i64 0}
!363 = !{!"dict", !198, i64 0, !198, i64 8, !196, i64 16, !203, i64 80, !203, i64 88}
!364 = !{!365, !198, i64 16}
!365 = !{!"dictType", !198, i64 0, !198, i64 8, !198, i64 16, !198, i64 24, !198, i64 32, !198, i64 40}
!366 = !DILocation(line: 78, column: 13, scope: !361)
!367 = !{!363, !198, i64 8}
!368 = !DILocation(line: 80, column: 5, scope: !287)
!369 = !DILocation(line: 84, column: 9, scope: !238)
!370 = !DILocation(line: 85, column: 35, scope: !371)
!371 = distinct !DILexicalBlock(scope: !372, file: !3, line: 84, column: 13)
!372 = distinct !DILexicalBlock(scope: !238, file: !3, line: 84, column: 9)
!373 = !DILocation(line: 85, column: 9, scope: !371)
!374 = !DILocation(line: 86, column: 20, scope: !375)
!375 = distinct !DILexicalBlock(scope: !371, file: !3, line: 86, column: 13)
!376 = !{!377, !195, i64 2924}
!377 = !{!"redisServer", !195, i64 0, !198, i64 8, !198, i64 16, !198, i64 24, !195, i64 32, !195, i64 36, !195, i64 40, !198, i64 48, !198, i64 56, !198, i64 64, !198, i64 72, !195, i64 80, !195, i64 84, !195, i64 88, !195, i64 92, !198, i64 96, !198, i64 104, !195, i64 112, !195, i64 116, !196, i64 120, !195, i64 164, !203, i64 168, !195, i64 176, !198, i64 184, !198, i64 192, !198, i64 200, !196, i64 208, !195, i64 216, !195, i64 220, !196, i64 224, !195, i64 352, !198, i64 360, !195, i64 368, !196, i64 372, !195, i64 436, !195, i64 440, !196, i64 444, !195, i64 508, !198, i64 512, !198, i64 520, !198, i64 528, !198, i64 536, !198, i64 544, !198, i64 552, !198, i64 560, !195, i64 568, !296, i64 576, !196, i64 584, !198, i64 840, !203, i64 848, !195, i64 856, !195, i64 860, !203, i64 864, !203, i64 872, !203, i64 880, !203, i64 888, !198, i64 896, !198, i64 904, !198, i64 912, !198, i64 920, !198, i64 928, !198, i64 936, !198, i64 944, !198, i64 952, !198, i64 960, !198, i64 968, !198, i64 976, !198, i64 984, !198, i64 992, !203, i64 1000, !296, i64 1008, !296, i64 1016, !296, i64 1024, !378, i64 1032, !296, i64 1040, !296, i64 1048, !296, i64 1056, !296, i64 1064, !296, i64 1072, !296, i64 1080, !296, i64 1088, !296, i64 1096, !296, i64 1104, !203, i64 1112, !296, i64 1120, !378, i64 1128, !296, i64 1136, !296, i64 1144, !296, i64 1152, !296, i64 1160, !198, i64 1168, !296, i64 1176, !296, i64 1184, !203, i64 1192, !379, i64 1200, !296, i64 1240, !296, i64 1248, !203, i64 1256, !203, i64 1264, !196, i64 1272, !195, i64 1728, !195, i64 1732, !195, i64 1736, !195, i64 1740, !195, i64 1744, !203, i64 1752, !195, i64 1760, !195, i64 1764, !195, i64 1768, !195, i64 1772, !203, i64 1776, !203, i64 1784, !195, i64 1792, !195, i64 1796, !195, i64 1800, !195, i64 1804, !196, i64 1808, !195, i64 1880, !195, i64 1884, !198, i64 1888, !195, i64 1896, !195, i64 1900, !203, i64 1904, !203, i64 1912, !203, i64 1920, !203, i64 1928, !195, i64 1936, !195, i64 1940, !198, i64 1944, !198, i64 1952, !195, i64 1960, !195, i64 1964, !203, i64 1968, !203, i64 1976, !203, i64 1984, !203, i64 1992, !195, i64 2000, !203, i64 2008, !195, i64 2016, !195, i64 2020, !195, i64 2024, !195, i64 2028, !195, i64 2032, !195, i64 2036, !195, i64 2040, !195, i64 2044, !195, i64 2048, !195, i64 2052, !195, i64 2056, !195, i64 2060, !195, i64 2064, !198, i64 2072, !296, i64 2080, !296, i64 2088, !195, i64 2096, !198, i64 2104, !195, i64 2112, !198, i64 2120, !195, i64 2128, !195, i64 2132, !203, i64 2136, !203, i64 2144, !203, i64 2152, !203, i64 2160, !195, i64 2168, !195, i64 2172, !195, i64 2176, !195, i64 2180, !195, i64 2184, !195, i64 2188, !196, i64 2192, !380, i64 2200, !381, i64 2224, !198, i64 2240, !195, i64 2248, !198, i64 2256, !195, i64 2264, !196, i64 2268, !196, i64 2309, !296, i64 2352, !296, i64 2360, !195, i64 2368, !195, i64 2372, !198, i64 2376, !296, i64 2384, !296, i64 2392, !296, i64 2400, !296, i64 2408, !203, i64 2416, !203, i64 2424, !195, i64 2432, !195, i64 2436, !195, i64 2440, !195, i64 2444, !195, i64 2448, !198, i64 2456, !198, i64 2464, !195, i64 2472, !195, i64 2476, !198, i64 2480, !198, i64 2488, !195, i64 2496, !195, i64 2500, !203, i64 2504, !203, i64 2512, !203, i64 2520, !195, i64 2528, !195, i64 2532, !198, i64 2536, !203, i64 2544, !195, i64 2552, !195, i64 2556, !195, i64 2560, !203, i64 2568, !195, i64 2576, !195, i64 2580, !195, i64 2584, !198, i64 2592, !196, i64 2600, !296, i64 2648, !195, i64 2656, !198, i64 2664, !198, i64 2672, !195, i64 2680, !198, i64 2688, !195, i64 2696, !195, i64 2700, !296, i64 2704, !195, i64 2712, !195, i64 2716, !195, i64 2720, !195, i64 2724, !296, i64 2728, !195, i64 2736, !196, i64 2740, !198, i64 2768, !198, i64 2776, !195, i64 2784, !195, i64 2788, !195, i64 2792, !195, i64 2796, !203, i64 2800, !203, i64 2808, !203, i64 2816, !203, i64 2824, !203, i64 2832, !203, i64 2840, !203, i64 2848, !203, i64 2856, !195, i64 2864, !195, i64 2868, !203, i64 2872, !203, i64 2880, !195, i64 2888, !296, i64 2896, !198, i64 2904, !198, i64 2912, !195, i64 2920, !195, i64 2924, !296, i64 2928, !198, i64 2936, !198, i64 2944, !195, i64 2952, !195, i64 2956, !195, i64 2960, !195, i64 2964, !198, i64 2968, !195, i64 2976, !195, i64 2980, !195, i64 2984, !198, i64 2992, !198, i64 3000, !198, i64 3008, !198, i64 3016, !296, i64 3024, !296, i64 3032, !296, i64 3040, !195, i64 3048, !195, i64 3052, !195, i64 3056, !195, i64 3060, !195, i64 3064, !195, i64 3068, !195, i64 3072, !195, i64 3076, !195, i64 3080, !195, i64 3084, !195, i64 3088, !296, i64 3096, !198, i64 3104, !198, i64 3112, !198, i64 3120, !195, i64 3128, !195, i64 3132, !195, i64 3136, !203, i64 3144, !198, i64 3152, !198, i64 3160, !198, i64 3168}
!378 = !{!"double", !196, i64 0}
!379 = !{!"malloc_stats", !203, i64 0, !203, i64 8, !203, i64 16, !203, i64 24, !203, i64 32}
!380 = !{!"", !195, i64 0, !203, i64 8, !296, i64 16}
!381 = !{!"redisOpArray", !198, i64 0, !195, i64 8}
!382 = !DILocation(line: 86, column: 13, scope: !375)
!383 = !DILocation(line: 86, column: 13, scope: !371)
!384 = !DILocation(line: 86, column: 37, scope: !375)
!385 = !DILocation(line: 0, scope: !238)
!386 = !DILocation(line: 0, scope: !371)
!387 = !DILocation(line: 0, scope: !388)
!388 = distinct !DILexicalBlock(scope: !372, file: !3, line: 88, column: 12)
!389 = !DILocation(line: 91, column: 1, scope: !238)
!390 = distinct !DISubprogram(name: "freeObjAsync", scope: !3, file: !3, line: 94, type: !391, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !393)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !35}
!393 = !{!394, !395}
!394 = !DILocalVariable(name: "o", arg: 1, scope: !390, file: !3, line: 94, type: !35)
!395 = !DILocalVariable(name: "free_effort", scope: !390, file: !3, line: 95, type: !10)
!396 = !DILocation(line: 94, column: 25, scope: !390)
!397 = !DILocation(line: 31, column: 36, scope: !32, inlinedAt: !398)
!398 = distinct !DILocation(line: 95, column: 26, scope: !390)
!399 = !DILocation(line: 32, column: 14, scope: !51, inlinedAt: !398)
!400 = !DILocation(line: 32, column: 19, scope: !51, inlinedAt: !398)
!401 = !DILocation(line: 32, column: 9, scope: !32, inlinedAt: !398)
!402 = !DILocation(line: 33, column: 30, scope: !50, inlinedAt: !398)
!403 = !DILocation(line: 33, column: 20, scope: !50, inlinedAt: !398)
!404 = !DILocation(line: 34, column: 20, scope: !50, inlinedAt: !398)
!405 = !DILocation(line: 35, column: 26, scope: !82, inlinedAt: !398)
!406 = !DILocation(line: 35, column: 37, scope: !82, inlinedAt: !398)
!407 = !DILocation(line: 35, column: 45, scope: !82, inlinedAt: !398)
!408 = !DILocation(line: 35, column: 54, scope: !82, inlinedAt: !398)
!409 = !DILocation(line: 35, column: 16, scope: !51, inlinedAt: !398)
!410 = !DILocation(line: 38, column: 38, scope: !152, inlinedAt: !398)
!411 = !DILocation(line: 36, column: 25, scope: !81, inlinedAt: !398)
!412 = !DILocation(line: 36, column: 15, scope: !81, inlinedAt: !398)
!413 = !DILocation(line: 37, column: 16, scope: !81, inlinedAt: !398)
!414 = !DILocation(line: 38, column: 26, scope: !152, inlinedAt: !398)
!415 = !DILocation(line: 38, column: 46, scope: !152, inlinedAt: !398)
!416 = !DILocation(line: 38, column: 55, scope: !152, inlinedAt: !398)
!417 = !DILocation(line: 38, column: 16, scope: !82, inlinedAt: !398)
!418 = !DILocation(line: 39, column: 25, scope: !151, inlinedAt: !398)
!419 = !DILocation(line: 39, column: 15, scope: !151, inlinedAt: !398)
!420 = !DILocation(line: 40, column: 20, scope: !151, inlinedAt: !398)
!421 = !DILocation(line: 40, column: 25, scope: !151, inlinedAt: !398)
!422 = !DILocation(line: 41, column: 38, scope: !187, inlinedAt: !398)
!423 = !DILocation(line: 41, column: 26, scope: !187, inlinedAt: !398)
!424 = !DILocation(line: 41, column: 46, scope: !187, inlinedAt: !398)
!425 = !DILocation(line: 41, column: 55, scope: !187, inlinedAt: !398)
!426 = !DILocation(line: 41, column: 16, scope: !152, inlinedAt: !398)
!427 = !DILocation(line: 42, column: 25, scope: !186, inlinedAt: !398)
!428 = !DILocation(line: 42, column: 15, scope: !186, inlinedAt: !398)
!429 = !DILocation(line: 43, column: 16, scope: !186, inlinedAt: !398)
!430 = !DILocation(line: 45, column: 9, scope: !236, inlinedAt: !398)
!431 = !DILocation(line: 47, column: 1, scope: !32, inlinedAt: !398)
!432 = !DILocation(line: 95, column: 12, scope: !390)
!433 = !DILocation(line: 96, column: 42, scope: !434)
!434 = distinct !DILexicalBlock(scope: !390, file: !3, line: 96, column: 9)
!435 = !DILocation(line: 0, scope: !236, inlinedAt: !398)
!436 = !DILocation(line: 96, column: 21, scope: !434)
!437 = !DILocation(line: 96, column: 48, scope: !434)
!438 = !DILocation(line: 96, column: 57, scope: !434)
!439 = !DILocation(line: 96, column: 9, scope: !390)
!440 = !DILocation(line: 97, column: 9, scope: !441)
!441 = distinct !DILexicalBlock(scope: !434, file: !3, line: 96, column: 63)
!442 = !DILocation(line: 98, column: 46, scope: !441)
!443 = !DILocation(line: 98, column: 9, scope: !441)
!444 = !DILocation(line: 99, column: 5, scope: !441)
!445 = !DILocation(line: 100, column: 9, scope: !446)
!446 = distinct !DILexicalBlock(scope: !434, file: !3, line: 99, column: 12)
!447 = !DILocation(line: 102, column: 1, scope: !390)
!448 = distinct !DISubprogram(name: "emptyDbAsync", scope: !3, file: !3, line: 107, type: !449, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !451)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !241}
!451 = !{!452, !453, !454}
!452 = !DILocalVariable(name: "db", arg: 1, scope: !448, file: !3, line: 107, type: !241)
!453 = !DILocalVariable(name: "oldht1", scope: !448, file: !3, line: 108, type: !83)
!454 = !DILocalVariable(name: "oldht2", scope: !448, file: !3, line: 108, type: !83)
!455 = !DILocation(line: 107, column: 28, scope: !448)
!456 = !DILocation(line: 108, column: 24, scope: !448)
!457 = !DILocation(line: 108, column: 11, scope: !448)
!458 = !DILocation(line: 108, column: 44, scope: !448)
!459 = !DILocation(line: 108, column: 31, scope: !448)
!460 = !DILocation(line: 109, column: 16, scope: !448)
!461 = !DILocation(line: 109, column: 14, scope: !448)
!462 = !DILocation(line: 110, column: 19, scope: !448)
!463 = !DILocation(line: 110, column: 17, scope: !448)
!464 = !DILocation(line: 111, column: 5, scope: !448)
!465 = !DILocation(line: 112, column: 47, scope: !448)
!466 = !DILocation(line: 112, column: 5, scope: !448)
!467 = !DILocation(line: 113, column: 1, scope: !448)
!468 = distinct !DISubprogram(name: "slotToKeyFlushAsync", scope: !3, file: !3, line: 117, type: !469, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !471)
!469 = !DISubroutineType(types: !470)
!470 = !{null}
!471 = !{!472}
!472 = !DILocalVariable(name: "old", scope: !468, file: !3, line: 118, type: !473)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !475, line: 137, baseType: !476)
!475 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rax.h", directory: "/root/.unikraft/apps/redis/build")
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !475, line: 133, size: 192, elements: !477)
!477 = !{!478, !491, !492}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !476, file: !475, line: 134, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !475, line: 131, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !475, line: 98, size: 32, elements: !482)
!482 = !{!483, !486, !487, !488, !489}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !481, file: !475, line: 99, baseType: !484, size: 1, flags: DIFlagBitField, extraData: i64 0)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !98, line: 48, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !100, line: 79, baseType: !41)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !481, file: !475, line: 100, baseType: !484, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !481, file: !475, line: 101, baseType: !484, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !481, file: !475, line: 102, baseType: !484, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !481, file: !475, line: 130, baseType: !490, offset: 32)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, elements: !180)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !476, file: !475, line: 135, baseType: !97, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !476, file: !475, line: 136, baseType: !97, size: 64, offset: 128)
!493 = !DILocation(line: 118, column: 23, scope: !468)
!494 = !{!377, !198, i64 2944}
!495 = !DILocation(line: 118, column: 32, scope: !468)
!496 = !{!497, !198, i64 524328}
!497 = !{!"clusterState", !198, i64 0, !203, i64 8, !195, i64 16, !195, i64 20, !198, i64 24, !198, i64 32, !196, i64 40, !196, i64 131112, !196, i64 262184, !196, i64 393256, !198, i64 524328, !296, i64 524336, !195, i64 524344, !195, i64 524348, !195, i64 524352, !203, i64 524360, !195, i64 524368, !296, i64 524376, !198, i64 524384, !296, i64 524392, !195, i64 524400, !203, i64 524408, !195, i64 524416, !196, i64 524424, !196, i64 524504, !296, i64 524584}
!498 = !DILocation(line: 118, column: 10, scope: !468)
!499 = !DILocation(line: 120, column: 37, scope: !468)
!500 = !DILocation(line: 120, column: 12, scope: !468)
!501 = !DILocation(line: 120, column: 21, scope: !468)
!502 = !DILocation(line: 120, column: 35, scope: !468)
!503 = !DILocation(line: 121, column: 12, scope: !468)
!504 = !DILocation(line: 121, column: 5, scope: !468)
!505 = !DILocation(line: 123, column: 5, scope: !468)
!506 = !{!507, !203, i64 8}
!507 = !{!"rax", !198, i64 0, !203, i64 8, !203, i64 16}
!508 = !DILocation(line: 124, column: 52, scope: !468)
!509 = !DILocation(line: 124, column: 5, scope: !468)
!510 = !DILocation(line: 125, column: 1, scope: !468)
!511 = distinct !DISubprogram(name: "lazyfreeFreeObjectFromBioThread", scope: !3, file: !3, line: 129, type: !391, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !512)
!512 = !{!513}
!513 = !DILocalVariable(name: "o", arg: 1, scope: !511, file: !3, line: 129, type: !35)
!514 = !DILocation(line: 129, column: 44, scope: !511)
!515 = !DILocation(line: 130, column: 5, scope: !511)
!516 = !DILocation(line: 131, column: 5, scope: !511)
!517 = !DILocation(line: 132, column: 1, scope: !511)
!518 = distinct !DISubprogram(name: "lazyfreeFreeDatabaseFromBioThread", scope: !3, file: !3, line: 139, type: !519, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !83, !83}
!521 = !{!522, !523, !524}
!522 = !DILocalVariable(name: "ht1", arg: 1, scope: !518, file: !3, line: 139, type: !83)
!523 = !DILocalVariable(name: "ht2", arg: 2, scope: !518, file: !3, line: 139, type: !83)
!524 = !DILocalVariable(name: "numkeys", scope: !518, file: !3, line: 140, type: !10)
!525 = !DILocation(line: 139, column: 46, scope: !518)
!526 = !DILocation(line: 139, column: 57, scope: !518)
!527 = !DILocation(line: 140, column: 22, scope: !518)
!528 = !DILocation(line: 140, column: 12, scope: !518)
!529 = !DILocation(line: 141, column: 5, scope: !518)
!530 = !DILocation(line: 142, column: 5, scope: !518)
!531 = !DILocation(line: 143, column: 5, scope: !518)
!532 = !DILocation(line: 144, column: 1, scope: !518)
!533 = distinct !DISubprogram(name: "lazyfreeFreeSlotsMapFromBioThread", scope: !3, file: !3, line: 148, type: !534, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !536)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !473}
!536 = !{!537, !538}
!537 = !DILocalVariable(name: "rt", arg: 1, scope: !533, file: !3, line: 148, type: !473)
!538 = !DILocalVariable(name: "len", scope: !533, file: !3, line: 149, type: !10)
!539 = !DILocation(line: 148, column: 45, scope: !533)
!540 = !DILocation(line: 149, column: 22, scope: !533)
!541 = !DILocation(line: 149, column: 12, scope: !533)
!542 = !DILocation(line: 150, column: 5, scope: !533)
!543 = !DILocation(line: 151, column: 5, scope: !533)
!544 = !DILocation(line: 152, column: 1, scope: !533)
