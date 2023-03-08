; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sort.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sort.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.redisServer = type { i32, i8*, i8*, i8**, i32, i32, i32, %struct.redisDb*, %struct.dict*, %struct.dict*, %struct.aeEventLoop*, i32, i32, i32, i32, i8*, i8*, i32, i32, [41 x i8], i32, i64, i32, %struct.dict*, %struct.dict*, %struct.list*, [2 x i32], i32, i32, [16 x i8*], i32, i8*, i32, [16 x i32], i32, i32, [16 x i32], i32, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.client*, %struct.rax*, i32, i64, [256 x i8], %struct.dict*, i64, i32, i32, i64, i64, i64, i64, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, %struct.list*, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, [3 x %struct.anon], i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, [3 x %struct.clientBufferLimitsConfig], i32, i32, i8*, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list*, i8*, i32, i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, i32, %struct.saveparam*, i32, i8*, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, [2 x i32], %struct.anon.1, %struct.redisOpArray, i8*, i32, i8*, i32, [41 x i8], [41 x i8], i64, i64, i32, i32, i8*, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, %struct.client*, %struct.client*, i32, i32, i64, i64, i64, i32, i32, i8*, i64, i32, i32, i32, i64, i32, i32, i32, i8*, [41 x i8], i64, i32, %struct.dict*, %struct.list*, i32, %struct.list*, i32, i32, i64, i32, i32, i32, i32, i64, i32, [6 x i32], %struct.list*, %struct.list*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, %struct.dict*, %struct.list*, i32, i32, i64, i8*, %struct.clusterState*, i32, i32, i32, i32, i8*, i32, i32, i32, %struct.lua_State*, %struct.client*, %struct.client*, %struct.dict*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.dict*, i8*, i8*, i32, i32, i32, i64, %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_* }
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
%struct.anon.1 = type { i32, i64, i64 }
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
%struct._redisSortOperation = type { i32, %struct.redisObject* }
%struct.listTypeEntry = type { %struct.listTypeIterator*, %struct.quicklistEntry }
%struct.listTypeIterator = type { %struct.redisObject*, i8, i8, %struct.quicklistIter* }
%struct.quicklistIter = type { %struct.quicklist*, %struct.quicklistNode*, i8*, i64, i32 }
%struct.quicklist = type { %struct.quicklistNode*, %struct.quicklistNode*, i64, i64, i32 }
%struct.quicklistNode = type { %struct.quicklistNode*, %struct.quicklistNode*, i8*, i32, i32 }
%struct.quicklistEntry = type { %struct.quicklist*, %struct.quicklistNode*, i8*, i8*, i64, i32, i32 }
%struct.listIter = type { %struct.listNode*, i32 }
%struct.zset = type { %struct.dict*, %struct.zskiplist* }
%struct.zskiplist = type { %struct.zskiplistNode*, %struct.zskiplistNode*, i64, i32 }
%struct.zskiplistNode = type { i8*, double, %struct.zskiplistNode*, [0 x %struct.zskiplistLevel] }
%struct.zskiplistLevel = type { %struct.zskiplistNode*, i64 }
%struct._redisSortObject = type { %struct.redisObject*, %union.anon.0 }
%union.anon.0 = type { double }
%struct.setTypeIterator = type { %struct.redisObject*, i32, i32, %struct.dictIterator* }
%struct.dictIterator = type { %struct.dict*, i64, i32, i32, %struct.dictEntry*, %struct.dictEntry*, i64 }

@.str = private unnamed_addr constant [3 x i8] c"->\00", align 1
@server = external dso_local local_unnamed_addr global %struct.redisServer, align 8
@shared = external dso_local local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"asc\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"by\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"BY option of SORT denied in Cluster mode.\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"GET option of SORT denied in Cluster mode.\00", align 1
@.str.10 = private unnamed_addr constant [72 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sort.c\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Bad SORT type\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"ln != NULL\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Unknown type\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"j == vectorlen\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"1 != 1\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"One or more scores can't be converted into double\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"sop->type == SORT_OP_GET\00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sortstore\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct._redisSortOperation* @createSortOperation(i32, %struct.redisObject*) local_unnamed_addr #0 !dbg !149 {
  %3 = tail call i8* @zmalloc(i64 16) #6, !dbg !173
  %4 = bitcast i8* %3 to %struct._redisSortOperation*, !dbg !173
  %5 = bitcast i8* %3 to i32*, !dbg !175
  store i32 %0, i32* %5, align 8, !dbg !176, !tbaa !177
  %6 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !183
  %7 = bitcast i8* %6 to %struct.redisObject**, !dbg !183
  store %struct.redisObject* %1, %struct.redisObject** %7, align 8, !dbg !184, !tbaa !185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !186
  ret %struct._redisSortOperation* %4, !dbg !186
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @lookupKeyByPattern(%struct.redisDb*, %struct.redisObject* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !187 {
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !251
  %5 = load i8*, i8** %4, align 8, !dbg !251, !tbaa !252
  %6 = load i8, i8* %5, align 1, !dbg !255, !tbaa !257
  %7 = icmp eq i8 %6, 35, !dbg !258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  br i1 %7, label %8, label %13, !dbg !259

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !260
  %10 = load i8, i8* %9, align 1, !dbg !260, !tbaa !257
  %11 = icmp eq i8 %10, 0, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br i1 %11, label %12, label %13, !dbg !262

; <label>:12:                                     ; preds = %8
  tail call void @incrRefCount(%struct.redisObject* %2) #6, !dbg !263
  br label %169, !dbg !265

; <label>:13:                                     ; preds = %8, %3
  %14 = tail call %struct.redisObject* @getDecodedObject(%struct.redisObject* %2) #6, !dbg !266
  %15 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %14, i64 0, i32 2, !dbg !267
  %16 = load i8*, i8** %15, align 8, !dbg !267, !tbaa !252
  %17 = tail call i8* @strchr(i8* %5, i32 42) #6, !dbg !269
  %18 = icmp eq i8* %17, null, !dbg !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  br i1 %18, label %19, label %20, !dbg !273

; <label>:19:                                     ; preds = %13
  tail call void @decrRefCount(%struct.redisObject* %14) #6, !dbg !274
  br label %169, !dbg !276

; <label>:20:                                     ; preds = %13
  %21 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !277
  %22 = tail call i8* @strstr(i8* nonnull %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #6, !dbg !279
  %23 = icmp eq i8* %22, null, !dbg !281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  br i1 %23, label %63, label %24, !dbg !282

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds i8, i8* %22, i64 2, !dbg !283
  %26 = load i8, i8* %25, align 1, !dbg !284, !tbaa !257
  %27 = icmp eq i8 %26, 0, !dbg !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !286
  br i1 %27, label %63, label %28, !dbg !286

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds i8, i8* %5, i64 -1, !dbg !299
  %30 = load i8, i8* %29, align 1, !dbg !299, !tbaa !257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  %31 = trunc i8 %30 to i3, !dbg !301
  switch i3 %31, label %53 [
    i3 0, label %32
    i3 1, label %35
    i3 2, label %39
    i3 3, label %44
    i3 -4, label %49
  ], !dbg !301

; <label>:32:                                     ; preds = %28
  %33 = lshr i8 %30, 3, !dbg !302
  %34 = zext i8 %33 to i64, !dbg !302
  br label %53, !dbg !304

; <label>:35:                                     ; preds = %28
  %36 = getelementptr inbounds i8, i8* %5, i64 -3, !dbg !305
  %37 = load i8, i8* %36, align 1, !dbg !306, !tbaa !257
  %38 = zext i8 %37 to i64, !dbg !305
  br label %53, !dbg !307

; <label>:39:                                     ; preds = %28
  %40 = getelementptr inbounds i8, i8* %5, i64 -5, !dbg !308
  %41 = bitcast i8* %40 to i16*, !dbg !309
  %42 = load i16, i16* %41, align 1, !dbg !309, !tbaa !310
  %43 = zext i16 %42 to i64, !dbg !308
  br label %53, !dbg !312

; <label>:44:                                     ; preds = %28
  %45 = getelementptr inbounds i8, i8* %5, i64 -9, !dbg !313
  %46 = bitcast i8* %45 to i32*, !dbg !314
  %47 = load i32, i32* %46, align 1, !dbg !314, !tbaa !315
  %48 = zext i32 %47 to i64, !dbg !313
  br label %53, !dbg !316

; <label>:49:                                     ; preds = %28
  %50 = getelementptr inbounds i8, i8* %5, i64 -17, !dbg !317
  %51 = bitcast i8* %50 to i64*, !dbg !318
  %52 = load i64, i64* %51, align 1, !dbg !318, !tbaa !319
  br label %53, !dbg !321

; <label>:53:                                     ; preds = %28, %32, %35, %39, %44, %49
  %54 = phi i64 [ %52, %49 ], [ %48, %44 ], [ %43, %39 ], [ %38, %35 ], [ %34, %32 ], [ 0, %28 ], !dbg !322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  %55 = ptrtoint i8* %22 to i64, !dbg !325
  %56 = ptrtoint i8* %5 to i64, !dbg !325
  %57 = sub i64 %56, %55, !dbg !326
  %58 = add i64 %57, %54, !dbg !326
  %59 = trunc i64 %58 to i32, !dbg !327
  %60 = add i32 %59, -2, !dbg !327
  %61 = sext i32 %60 to i64, !dbg !329
  %62 = tail call %struct.redisObject* @createStringObject(i8* nonnull %25, i64 %61) #6, !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  br label %65, !dbg !331

; <label>:63:                                     ; preds = %24, %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %64 = ptrtoint i8* %5 to i64, !dbg !332
  br label %65

; <label>:65:                                     ; preds = %63, %53
  %66 = phi i64 [ %64, %63 ], [ %56, %53 ], !dbg !332
  %67 = phi %struct.redisObject* [ null, %63 ], [ %62, %53 ], !dbg !333
  %68 = phi i32 [ 0, %63 ], [ %60, %53 ], !dbg !334
  %69 = ptrtoint i8* %17 to i64, !dbg !332
  %70 = sub i64 %69, %66, !dbg !332
  %71 = trunc i64 %70 to i32, !dbg !336
  %72 = getelementptr inbounds i8, i8* %16, i64 -1, !dbg !340
  %73 = load i8, i8* %72, align 1, !dbg !340, !tbaa !257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  %74 = trunc i8 %73 to i3, !dbg !342
  switch i3 %74, label %96 [
    i3 0, label %75
    i3 1, label %78
    i3 2, label %82
    i3 3, label %87
    i3 -4, label %92
  ], !dbg !342

; <label>:75:                                     ; preds = %65
  %76 = lshr i8 %73, 3, !dbg !343
  %77 = zext i8 %76 to i64, !dbg !343
  br label %96, !dbg !344

; <label>:78:                                     ; preds = %65
  %79 = getelementptr inbounds i8, i8* %16, i64 -3, !dbg !345
  %80 = load i8, i8* %79, align 1, !dbg !346, !tbaa !257
  %81 = zext i8 %80 to i64, !dbg !345
  br label %96, !dbg !347

; <label>:82:                                     ; preds = %65
  %83 = getelementptr inbounds i8, i8* %16, i64 -5, !dbg !348
  %84 = bitcast i8* %83 to i16*, !dbg !349
  %85 = load i16, i16* %84, align 1, !dbg !349, !tbaa !310
  %86 = zext i16 %85 to i64, !dbg !348
  br label %96, !dbg !350

; <label>:87:                                     ; preds = %65
  %88 = getelementptr inbounds i8, i8* %16, i64 -9, !dbg !351
  %89 = bitcast i8* %88 to i32*, !dbg !352
  %90 = load i32, i32* %89, align 1, !dbg !352, !tbaa !315
  %91 = zext i32 %90 to i64, !dbg !351
  br label %96, !dbg !353

; <label>:92:                                     ; preds = %65
  %93 = getelementptr inbounds i8, i8* %16, i64 -17, !dbg !354
  %94 = bitcast i8* %93 to i64*, !dbg !355
  %95 = load i64, i64* %94, align 1, !dbg !355, !tbaa !319
  br label %96, !dbg !356

; <label>:96:                                     ; preds = %65, %75, %78, %82, %87, %92
  %97 = phi i64 [ %95, %92 ], [ %91, %87 ], [ %86, %82 ], [ %81, %78 ], [ %77, %75 ], [ 0, %65 ], !dbg !357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  %98 = trunc i64 %97 to i32, !dbg !359
  %99 = getelementptr inbounds i8, i8* %5, i64 -1, !dbg !363
  %100 = load i8, i8* %99, align 1, !dbg !363, !tbaa !257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  %101 = trunc i8 %100 to i3, !dbg !365
  switch i3 %101, label %123 [
    i3 0, label %102
    i3 1, label %105
    i3 2, label %109
    i3 3, label %114
    i3 -4, label %119
  ], !dbg !365

; <label>:102:                                    ; preds = %96
  %103 = lshr i8 %100, 3, !dbg !366
  %104 = zext i8 %103 to i64, !dbg !366
  br label %123, !dbg !367

; <label>:105:                                    ; preds = %96
  %106 = getelementptr inbounds i8, i8* %5, i64 -3, !dbg !368
  %107 = load i8, i8* %106, align 1, !dbg !369, !tbaa !257
  %108 = zext i8 %107 to i64, !dbg !368
  br label %123, !dbg !370

; <label>:109:                                    ; preds = %96
  %110 = getelementptr inbounds i8, i8* %5, i64 -5, !dbg !371
  %111 = bitcast i8* %110 to i16*, !dbg !372
  %112 = load i16, i16* %111, align 1, !dbg !372, !tbaa !310
  %113 = zext i16 %112 to i64, !dbg !371
  br label %123, !dbg !373

; <label>:114:                                    ; preds = %96
  %115 = getelementptr inbounds i8, i8* %5, i64 -9, !dbg !374
  %116 = bitcast i8* %115 to i32*, !dbg !375
  %117 = load i32, i32* %116, align 1, !dbg !375, !tbaa !315
  %118 = zext i32 %117 to i64, !dbg !374
  br label %123, !dbg !376

; <label>:119:                                    ; preds = %96
  %120 = getelementptr inbounds i8, i8* %5, i64 -17, !dbg !377
  %121 = bitcast i8* %120 to i64*, !dbg !378
  %122 = load i64, i64* %121, align 1, !dbg !378, !tbaa !319
  br label %123, !dbg !379

; <label>:123:                                    ; preds = %96, %102, %105, %109, %114, %119
  %124 = phi i64 [ %122, %119 ], [ %118, %114 ], [ %113, %109 ], [ %108, %105 ], [ %104, %102 ], [ 0, %96 ], !dbg !380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  %125 = shl i64 %70, 32, !dbg !382
  %126 = add i64 %125, 4294967296, !dbg !382
  %127 = lshr exact i64 %126, 32, !dbg !382
  %128 = sub i64 %124, %127, !dbg !383
  %129 = icmp ne i32 %68, 0, !dbg !384
  %130 = add nsw i32 %68, 2, !dbg !385
  %131 = select i1 %129, i32 %130, i32 0, !dbg !384
  %132 = trunc i64 %128 to i32, !dbg !386
  %133 = sub i32 %132, %131, !dbg !386
  %134 = add nsw i32 %98, %71, !dbg !388
  %135 = add nsw i32 %134, %133, !dbg !389
  %136 = sext i32 %135 to i64, !dbg !390
  %137 = tail call %struct.redisObject* @createStringObject(i8* null, i64 %136) #6, !dbg !391
  %138 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %137, i64 0, i32 2, !dbg !393
  %139 = load i8*, i8** %138, align 8, !dbg !393, !tbaa !252
  %140 = ashr exact i64 %125, 32, !dbg !395
  %141 = tail call i8* @memcpy(i8* %139, i8* nonnull %5, i64 %140) #6, !dbg !396
  %142 = getelementptr inbounds i8, i8* %139, i64 %140, !dbg !397
  %143 = shl i64 %97, 32, !dbg !398
  %144 = ashr exact i64 %143, 32, !dbg !398
  %145 = tail call i8* @memcpy(i8* %142, i8* nonnull %16, i64 %144) #6, !dbg !399
  %146 = getelementptr inbounds i8, i8* %142, i64 %144, !dbg !400
  %147 = sext i32 %133 to i64, !dbg !401
  %148 = tail call i8* @memcpy(i8* %146, i8* nonnull %21, i64 %147) #6, !dbg !402
  tail call void @decrRefCount(%struct.redisObject* %14) #6, !dbg !403
  %149 = tail call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %0, %struct.redisObject* %137) #6, !dbg !404
  %150 = icmp eq %struct.redisObject* %149, null, !dbg !406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !408
  br i1 %150, label %167, label %151, !dbg !408

; <label>:151:                                    ; preds = %123
  %152 = icmp eq %struct.redisObject* %67, null, !dbg !409
  %153 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %149, i64 0, i32 0, !dbg !411
  %154 = load i32, i32* %153, align 8, !dbg !411
  %155 = and i32 %154, 15, !dbg !411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  br i1 %152, label %158, label %156, !dbg !414

; <label>:156:                                    ; preds = %151
  %157 = icmp eq i32 %155, 4, !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  br i1 %157, label %161, label %167, !dbg !418

; <label>:158:                                    ; preds = %151
  %159 = icmp eq i32 %155, 0, !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  br i1 %159, label %160, label %167, !dbg !420

; <label>:160:                                    ; preds = %158
  tail call void @incrRefCount(%struct.redisObject* nonnull %149) #6, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call void @decrRefCount(%struct.redisObject* %137) #6, !dbg !422
  br label %165

; <label>:161:                                    ; preds = %156
  %162 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %67, i64 0, i32 2, !dbg !423
  %163 = load i8*, i8** %162, align 8, !dbg !423, !tbaa !252
  %164 = tail call %struct.redisObject* @hashTypeGetValueObject(%struct.redisObject* nonnull %149, i8* %163) #6, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  tail call void @decrRefCount(%struct.redisObject* %137) #6, !dbg !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  tail call void @decrRefCount(%struct.redisObject* nonnull %67) #6, !dbg !427
  br label %165, !dbg !427

; <label>:165:                                    ; preds = %160, %161
  %166 = phi %struct.redisObject* [ %164, %161 ], [ %149, %160 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  br label %169, !dbg !430

; <label>:167:                                    ; preds = %156, %158, %123
  tail call void @decrRefCount(%struct.redisObject* %137) #6, !dbg !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  br i1 %129, label %168, label %169, !dbg !432

; <label>:168:                                    ; preds = %167
  tail call void @decrRefCount(%struct.redisObject* %67) #6, !dbg !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  br label %169, !dbg !433

; <label>:169:                                    ; preds = %167, %168, %165, %19, %12
  %170 = phi %struct.redisObject* [ %2, %12 ], [ %166, %165 ], [ null, %19 ], [ null, %168 ], [ null, %167 ], !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  ret %struct.redisObject* %170, !dbg !437
}

; Function Attrs: noredzone
declare dso_local void @incrRefCount(%struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @getDecodedObject(%struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @strstr(i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyRead(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @hashTypeGetValueObject(%struct.redisObject*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @sortCompare(i8* nocapture readonly, i8* nocapture readonly) #0 !dbg !438 {
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 238), align 4, !dbg !462, !tbaa !464
  %4 = icmp eq i32 %3, 0, !dbg !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  br i1 %4, label %5, label %23, !dbg !472

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !473
  %7 = bitcast i8* %6 to double*, !dbg !476
  %8 = load double, double* %7, align 8, !dbg !476, !tbaa !257
  %9 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !477
  %10 = bitcast i8* %9 to double*, !dbg !478
  %11 = load double, double* %10, align 8, !dbg !478, !tbaa !257
  %12 = fcmp ogt double %8, %11, !dbg !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !480
  br i1 %12, label %13, label %14, !dbg !480

; <label>:13:                                     ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !482
  br label %63, !dbg !482

; <label>:14:                                     ; preds = %5
  %15 = fcmp olt double %8, %11, !dbg !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  br i1 %15, label %16, label %17, !dbg !486

; <label>:16:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  br label %63, !dbg !487

; <label>:17:                                     ; preds = %14
  %18 = bitcast i8* %0 to %struct.redisObject**, !dbg !489
  %19 = load %struct.redisObject*, %struct.redisObject** %18, align 8, !dbg !489, !tbaa !491
  %20 = bitcast i8* %1 to %struct.redisObject**, !dbg !493
  %21 = load %struct.redisObject*, %struct.redisObject** %20, align 8, !dbg !493, !tbaa !491
  %22 = tail call i32 @compareStringObjects(%struct.redisObject* %19, %struct.redisObject* %21) #6, !dbg !494
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %63

; <label>:23:                                     ; preds = %2
  %24 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 239), align 8, !dbg !495, !tbaa !498
  %25 = icmp eq i32 %24, 0, !dbg !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  br i1 %25, label %52, label %26, !dbg !500

; <label>:26:                                     ; preds = %23
  %27 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !501
  %28 = bitcast i8* %27 to %struct.redisObject**, !dbg !504
  %29 = load %struct.redisObject*, %struct.redisObject** %28, align 8, !dbg !504, !tbaa !257
  %30 = icmp eq %struct.redisObject* %29, null, !dbg !505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !506
  %31 = getelementptr inbounds i8, i8* %1, i64 8
  %32 = bitcast i8* %31 to %struct.redisObject**
  %33 = load %struct.redisObject*, %struct.redisObject** %32, align 8, !dbg !507, !tbaa !257
  br i1 %30, label %37, label %34, !dbg !506

; <label>:34:                                     ; preds = %26
  %35 = icmp eq %struct.redisObject* %33, null, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !509
  br i1 %35, label %36, label %41, !dbg !509

; <label>:36:                                     ; preds = %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  br label %39, !dbg !510

; <label>:37:                                     ; preds = %26
  %38 = icmp eq %struct.redisObject* %29, %33, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  br i1 %38, label %63, label %39, !dbg !510

; <label>:39:                                     ; preds = %36, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %40 = select i1 %30, i32 -1, i32 1, !dbg !515
  br label %63, !dbg !515

; <label>:41:                                     ; preds = %34
  %42 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 240), align 4, !dbg !517, !tbaa !520
  %43 = icmp eq i32 %42, 0, !dbg !521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  br i1 %43, label %46, label %44, !dbg !522

; <label>:44:                                     ; preds = %41
  %45 = tail call i32 @compareStringObjects(%struct.redisObject* nonnull %29, %struct.redisObject* nonnull %33) #6, !dbg !523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !525
  br label %63, !dbg !525

; <label>:46:                                     ; preds = %41
  %47 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %29, i64 0, i32 2, !dbg !526
  %48 = load i8*, i8** %47, align 8, !dbg !526, !tbaa !252
  %49 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %33, i64 0, i32 2, !dbg !528
  %50 = load i8*, i8** %49, align 8, !dbg !528, !tbaa !252
  %51 = tail call i32 @strcoll(i8* %48, i8* %50) #6, !dbg !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %63

; <label>:52:                                     ; preds = %23
  %53 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 240), align 4, !dbg !530, !tbaa !520
  %54 = icmp eq i32 %53, 0, !dbg !533
  %55 = bitcast i8* %0 to %struct.redisObject**, !dbg !534
  %56 = load %struct.redisObject*, %struct.redisObject** %55, align 8, !dbg !534, !tbaa !491
  %57 = bitcast i8* %1 to %struct.redisObject**, !dbg !534
  %58 = load %struct.redisObject*, %struct.redisObject** %57, align 8, !dbg !534, !tbaa !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  br i1 %54, label %61, label %59, !dbg !536

; <label>:59:                                     ; preds = %52
  %60 = tail call i32 @compareStringObjects(%struct.redisObject* %56, %struct.redisObject* %58) #6, !dbg !537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  br label %63, !dbg !539

; <label>:61:                                     ; preds = %52
  %62 = tail call i32 @collateStringObjects(%struct.redisObject* %56, %struct.redisObject* %58) #6, !dbg !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %63

; <label>:63:                                     ; preds = %37, %39, %44, %46, %61, %59, %13, %17, %16
  %64 = phi i32 [ %45, %44 ], [ %51, %46 ], [ %60, %59 ], [ %62, %61 ], [ 1, %13 ], [ -1, %16 ], [ %22, %17 ], [ %40, %39 ], [ 0, %37 ], !dbg !541
  %65 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 237), align 8, !dbg !542, !tbaa !543
  %66 = icmp eq i32 %65, 0, !dbg !544
  %67 = sub nsw i32 0, %64, !dbg !545
  %68 = select i1 %66, i32 %64, i32 %67, !dbg !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
  ret i32 %68, !dbg !546
}

; Function Attrs: noredzone
declare dso_local i32 @compareStringObjects(%struct.redisObject*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @strcoll(i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @collateStringObjects(%struct.redisObject*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @sortCommand(%struct.client*) local_unnamed_addr #0 !dbg !547 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.listTypeEntry, align 8
  %5 = alloca %struct.listTypeEntry, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.listIter, align 8
  %8 = alloca %struct.listIter, align 8
  %9 = bitcast i64* %2 to i8*, !dbg !853
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #7, !dbg !853
  store i64 0, i64* %2, align 8, !dbg !854, !tbaa !319
  %10 = bitcast i64* %3 to i8*, !dbg !853
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #7, !dbg !853
  store i64 -1, i64* %3, align 8, !dbg !855, !tbaa !319
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !862
  %12 = load %struct.redisDb*, %struct.redisDb** %11, align 8, !dbg !862, !tbaa !863
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !867
  %14 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !867, !tbaa !868
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 1, !dbg !869
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !869, !tbaa !870
  %17 = tail call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %12, %struct.redisObject* %16) #6, !dbg !871
  %18 = icmp ne %struct.redisObject* %17, null, !dbg !873
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  br i1 %18, label %19, label %30, !dbg !875

; <label>:19:                                     ; preds = %1
  %20 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i64 0, i32 0, !dbg !876
  %21 = load i32, i32* %20, align 8, !dbg !876
  %22 = and i32 %21, 15, !dbg !876
  %23 = icmp eq i32 %22, 2, !dbg !877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !878
  br i1 %23, label %30, label %24, !dbg !878

; <label>:24:                                     ; preds = %19
  %25 = icmp eq i32 %22, 1, !dbg !879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !880
  br i1 %25, label %30, label %26, !dbg !880

; <label>:26:                                     ; preds = %24
  %27 = icmp eq i32 %22, 3, !dbg !881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  br i1 %27, label %30, label %28, !dbg !882

; <label>:28:                                     ; preds = %26
  %29 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !883, !tbaa !885
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %29) #6, !dbg !887
  br label %735, !dbg !888

; <label>:30:                                     ; preds = %26, %24, %19, %1
  %31 = tail call %struct.list* @listCreate() #6, !dbg !889
  %32 = getelementptr inbounds %struct.list, %struct.list* %31, i64 0, i32 3, !dbg !891
  store void (i8*)* @zfree, void (i8*)** %32, align 8, !dbg !891, !tbaa !892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  br i1 %18, label %33, label %34, !dbg !895

; <label>:33:                                     ; preds = %30
  tail call void @incrRefCount(%struct.redisObject* nonnull %17) #6, !dbg !896
  br label %36, !dbg !896

; <label>:34:                                     ; preds = %30
  %35 = tail call %struct.redisObject* @createQuicklistObject() #6, !dbg !898
  br label %36

; <label>:36:                                     ; preds = %34, %33
  %37 = phi %struct.redisObject* [ %17, %33 ], [ %35, %34 ], !dbg !899
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !900
  %38 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !901
  %39 = load i32, i32* %38, align 8, !dbg !901, !tbaa !902
  %40 = icmp sgt i32 %39, 2, !dbg !903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !900
  br i1 %40, label %42, label %41, !dbg !900

; <label>:41:                                     ; preds = %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !905
  br label %151, !dbg !905

; <label>:42:                                     ; preds = %36, %137
  %43 = phi i32 [ %146, %137 ], [ %39, %36 ]
  %44 = phi i32 [ %144, %137 ], [ 0, %36 ]
  %45 = phi i32 [ %143, %137 ], [ 0, %36 ]
  %46 = phi i32 [ %145, %137 ], [ 2, %36 ]
  %47 = phi i32 [ %141, %137 ], [ 0, %36 ]
  %48 = phi i32 [ %140, %137 ], [ 0, %36 ]
  %49 = phi %struct.redisObject* [ %139, %137 ], [ null, %36 ]
  %50 = phi %struct.redisObject* [ %138, %137 ], [ null, %36 ]
  %51 = xor i32 %46, -1, !dbg !907
  %52 = add i32 %43, %51, !dbg !907
  %53 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !909, !tbaa !868
  %54 = sext i32 %46 to i64, !dbg !911
  %55 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %53, i64 %54, !dbg !911
  %56 = load %struct.redisObject*, %struct.redisObject** %55, align 8, !dbg !911, !tbaa !870
  %57 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %56, i64 0, i32 2, !dbg !912
  %58 = load i8*, i8** %57, align 8, !dbg !912, !tbaa !252
  %59 = call i32 @strcasecmp(i8* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !913
  %60 = icmp eq i32 %59, 0, !dbg !913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !914
  br i1 %60, label %137, label %61, !dbg !914

; <label>:61:                                     ; preds = %42
  %62 = call i32 @strcasecmp(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !915
  %63 = icmp eq i32 %62, 0, !dbg !915
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !917
  br i1 %63, label %137, label %64, !dbg !917

; <label>:64:                                     ; preds = %61
  %65 = call i32 @strcasecmp(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !918
  %66 = icmp eq i32 %65, 0, !dbg !918
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !920
  br i1 %66, label %137, label %67, !dbg !920

; <label>:67:                                     ; preds = %64
  %68 = call i32 @strcasecmp(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !921
  %69 = icmp eq i32 %68, 0, !dbg !921
  %70 = icmp sgt i32 %52, 1, !dbg !923
  %71 = and i1 %70, %69, !dbg !924
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  br i1 %71, label %72, label %87, !dbg !924

; <label>:72:                                     ; preds = %67
  %73 = add nsw i32 %46, 1, !dbg !925
  %74 = sext i32 %73 to i64, !dbg !928
  %75 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %53, i64 %74, !dbg !928
  %76 = load %struct.redisObject*, %struct.redisObject** %75, align 8, !dbg !928, !tbaa !870
  %77 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %76, i64* nonnull %2, i8* null) #6, !dbg !929
  %78 = icmp eq i32 %77, 0, !dbg !930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !931
  br i1 %78, label %79, label %148, !dbg !931

; <label>:79:                                     ; preds = %72
  %80 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !932, !tbaa !868
  %81 = add nsw i32 %46, 2, !dbg !933
  %82 = sext i32 %81 to i64, !dbg !934
  %83 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %80, i64 %82, !dbg !934
  %84 = load %struct.redisObject*, %struct.redisObject** %83, align 8, !dbg !934, !tbaa !870
  %85 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %84, i64* nonnull %3, i8* null) #6, !dbg !935
  %86 = icmp eq i32 %85, 0, !dbg !936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  br i1 %86, label %137, label %148, !dbg !937

; <label>:87:                                     ; preds = %67
  %88 = call i32 @strcasecmp(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !938
  %89 = icmp eq i32 %88, 0, !dbg !938
  %90 = icmp sgt i32 %52, 0, !dbg !940
  %91 = and i1 %90, %89, !dbg !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !941
  br i1 %91, label %92, label %97, !dbg !941

; <label>:92:                                     ; preds = %87
  %93 = add nsw i32 %46, 1, !dbg !942
  %94 = sext i32 %93 to i64, !dbg !944
  %95 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %53, i64 %94, !dbg !944
  %96 = load %struct.redisObject*, %struct.redisObject** %95, align 8, !dbg !944, !tbaa !870
  br label %137, !dbg !945

; <label>:97:                                     ; preds = %87
  %98 = call i32 @strcasecmp(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !946
  %99 = icmp eq i32 %98, 0, !dbg !946
  %100 = and i1 %90, %99, !dbg !948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !948
  br i1 %100, label %101, label %115, !dbg !948

; <label>:101:                                    ; preds = %97
  %102 = add nsw i32 %46, 1, !dbg !949
  %103 = sext i32 %102 to i64, !dbg !951
  %104 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %53, i64 %103, !dbg !951
  %105 = load %struct.redisObject*, %struct.redisObject** %104, align 8, !dbg !951, !tbaa !870
  %106 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %105, i64 0, i32 2, !dbg !952
  %107 = load i8*, i8** %106, align 8, !dbg !952, !tbaa !252
  %108 = call i8* @strchr(i8* %107, i32 42) #6, !dbg !954
  %109 = icmp eq i8* %108, null, !dbg !955
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !956
  br i1 %109, label %110, label %111, !dbg !956

; <label>:110:                                    ; preds = %101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !957
  br label %137, !dbg !957

; <label>:111:                                    ; preds = %101
  %112 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !959, !tbaa !962
  %113 = icmp eq i32 %112, 0, !dbg !963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !964
  br i1 %113, label %137, label %114, !dbg !964

; <label>:114:                                    ; preds = %111
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !965
  br label %148, !dbg !967

; <label>:115:                                    ; preds = %97
  %116 = call i32 @strcasecmp(i8* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !968
  %117 = icmp eq i32 %116, 0, !dbg !968
  %118 = and i1 %90, %117, !dbg !970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !970
  br i1 %118, label %119, label %135, !dbg !970

; <label>:119:                                    ; preds = %115
  %120 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !971, !tbaa !962
  %121 = icmp eq i32 %120, 0, !dbg !974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !975
  br i1 %121, label %123, label %122, !dbg !975

; <label>:122:                                    ; preds = %119
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !976
  br label %148, !dbg !978

; <label>:123:                                    ; preds = %119
  %124 = add nsw i32 %46, 1, !dbg !979
  %125 = sext i32 %124 to i64, !dbg !980
  %126 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %53, i64 %125, !dbg !980
  %127 = bitcast %struct.redisObject** %126 to i64*, !dbg !980
  %128 = load i64, i64* %127, align 8, !dbg !980, !tbaa !870
  %129 = call i8* @zmalloc(i64 16) #6, !dbg !984
  %130 = bitcast i8* %129 to i32*, !dbg !986
  store i32 0, i32* %130, align 8, !dbg !987, !tbaa !177
  %131 = getelementptr inbounds i8, i8* %129, i64 8, !dbg !988
  %132 = bitcast i8* %131 to i64*, !dbg !989
  store i64 %128, i64* %132, align 8, !dbg !989, !tbaa !185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !990
  %133 = call %struct.list* @listAddNodeTail(%struct.list* %31, i8* %129) #6, !dbg !991
  %134 = add nsw i32 %48, 1, !dbg !992
  br label %137

; <label>:135:                                    ; preds = %115
  %136 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !993, !tbaa !995
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %136) #6, !dbg !996
  br label %148, !dbg !997

; <label>:137:                                    ; preds = %110, %111, %79, %64, %61, %42, %92, %123
  %138 = phi %struct.redisObject* [ %96, %92 ], [ %50, %123 ], [ %50, %42 ], [ %50, %61 ], [ %50, %64 ], [ %50, %79 ], [ %50, %111 ], [ %50, %110 ], !dbg !998
  %139 = phi %struct.redisObject* [ %49, %92 ], [ %49, %123 ], [ %49, %42 ], [ %49, %61 ], [ %49, %64 ], [ %49, %79 ], [ %105, %111 ], [ %105, %110 ], !dbg !998
  %140 = phi i32 [ %48, %92 ], [ %134, %123 ], [ %48, %42 ], [ %48, %61 ], [ %48, %64 ], [ %48, %79 ], [ %48, %111 ], [ %48, %110 ], !dbg !998
  %141 = phi i32 [ %47, %92 ], [ %47, %123 ], [ %47, %42 ], [ %47, %61 ], [ %47, %64 ], [ %47, %79 ], [ %47, %111 ], [ 1, %110 ], !dbg !998
  %142 = phi i32 [ %93, %92 ], [ %124, %123 ], [ %46, %42 ], [ %46, %61 ], [ %46, %64 ], [ %81, %79 ], [ %102, %111 ], [ %102, %110 ], !dbg !998
  %143 = phi i32 [ %45, %92 ], [ %45, %123 ], [ %45, %42 ], [ %45, %61 ], [ 1, %64 ], [ %45, %79 ], [ %45, %111 ], [ %45, %110 ], !dbg !998
  %144 = phi i32 [ %44, %92 ], [ %44, %123 ], [ 0, %42 ], [ 1, %61 ], [ %44, %64 ], [ %44, %79 ], [ %44, %111 ], [ %44, %110 ], !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %145 = add nsw i32 %142, 1, !dbg !1001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1002
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %146 = load i32, i32* %38, align 8, !dbg !901, !tbaa !902
  %147 = icmp sgt i32 %146, %145, !dbg !903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !900
  br i1 %147, label %42, label %149, !dbg !900

; <label>:148:                                    ; preds = %72, %79, %135, %122, %114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !904
  call void @decrRefCount(%struct.redisObject* %37) #6, !dbg !1005
  call void @listRelease(%struct.list* %31) #6, !dbg !1008
  br label %735, !dbg !1009

; <label>:149:                                    ; preds = %137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !904
  %150 = icmp eq i32 %141, 0, !dbg !1010
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !905
  br i1 %150, label %151, label %159, !dbg !905

; <label>:151:                                    ; preds = %41, %149
  %152 = phi i32 [ 0, %41 ], [ %144, %149 ]
  %153 = phi i32 [ 0, %41 ], [ %143, %149 ]
  %154 = phi i32 [ 0, %41 ], [ %140, %149 ]
  %155 = phi %struct.redisObject* [ null, %41 ], [ %139, %149 ]
  %156 = phi %struct.redisObject* [ null, %41 ], [ %138, %149 ]
  %157 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %37, i64 0, i32 0
  %158 = load i32, i32* %157, align 8, !dbg !1011
  br label %172, !dbg !905

; <label>:159:                                    ; preds = %149
  %160 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %37, i64 0, i32 0, !dbg !1013
  %161 = load i32, i32* %160, align 8, !dbg !1013
  %162 = and i32 %161, 15, !dbg !1013
  %163 = icmp eq i32 %162, 2, !dbg !1014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1015
  br i1 %163, label %164, label %172, !dbg !1015

; <label>:164:                                    ; preds = %159
  %165 = icmp eq %struct.redisObject* %138, null, !dbg !1016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  br i1 %165, label %166, label %171, !dbg !1017

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1018
  %168 = load i32, i32* %167, align 8, !dbg !1018, !tbaa !1019
  %169 = and i32 %168, 256, !dbg !1020
  %170 = icmp eq i32 %169, 0, !dbg !1020
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1021
  br i1 %170, label %172, label %171, !dbg !1021

; <label>:171:                                    ; preds = %166, %164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  br label %172, !dbg !1022

; <label>:172:                                    ; preds = %151, %166, %171, %159
  %173 = phi i32 [ %152, %151 ], [ %144, %166 ], [ %144, %171 ], [ %144, %159 ]
  %174 = phi i32 [ %154, %151 ], [ %140, %166 ], [ %140, %171 ], [ %140, %159 ]
  %175 = phi %struct.redisObject* [ %156, %151 ], [ null, %166 ], [ %138, %171 ], [ %138, %159 ]
  %176 = phi i32* [ %157, %151 ], [ %160, %166 ], [ %160, %171 ], [ %160, %159 ], !dbg !1011
  %177 = phi i32 [ %158, %151 ], [ %161, %166 ], [ %161, %171 ], [ %161, %159 ], !dbg !1011
  %178 = phi %struct.redisObject* [ %155, %151 ], [ %139, %166 ], [ null, %171 ], [ %139, %159 ], !dbg !998
  %179 = phi i32 [ 0, %151 ], [ %141, %166 ], [ 0, %171 ], [ %141, %159 ], !dbg !998
  %180 = phi i32 [ %153, %151 ], [ %143, %166 ], [ 1, %171 ], [ %143, %159 ], !dbg !998
  %181 = and i32 %177, 15, !dbg !1011
  %182 = icmp eq i32 %181, 3, !dbg !1024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1025
  br i1 %182, label %183, label %185, !dbg !1025

; <label>:183:                                    ; preds = %172
  call void @zsetConvert(%struct.redisObject* nonnull %37, i32 7) #6, !dbg !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1026
  %184 = load i32, i32* %176, align 8, !dbg !1027
  br label %185, !dbg !1026

; <label>:185:                                    ; preds = %183, %172
  %186 = phi i32 [ %184, %183 ], [ %177, %172 ], !dbg !1027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  %187 = trunc i32 %186 to i4, !dbg !1028
  switch i4 %187, label %203 [
    i4 1, label %188
    i4 2, label %190
    i4 3, label %192
  ], !dbg !1028

; <label>:188:                                    ; preds = %185
  %189 = call i64 @listTypeLength(%struct.redisObject* nonnull %37) #6, !dbg !1029
  br label %204, !dbg !1031

; <label>:190:                                    ; preds = %185
  %191 = call i64 @setTypeSize(%struct.redisObject* nonnull %37) #6, !dbg !1032
  br label %204, !dbg !1033

; <label>:192:                                    ; preds = %185
  %193 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %37, i64 0, i32 2, !dbg !1034
  %194 = bitcast i8** %193 to %struct.zset**, !dbg !1034
  %195 = load %struct.zset*, %struct.zset** %194, align 8, !dbg !1034, !tbaa !252
  %196 = getelementptr inbounds %struct.zset, %struct.zset* %195, i64 0, i32 0, !dbg !1034
  %197 = load %struct.dict*, %struct.dict** %196, align 8, !dbg !1034, !tbaa !1035
  %198 = getelementptr inbounds %struct.dict, %struct.dict* %197, i64 0, i32 2, i64 0, i32 3, !dbg !1034
  %199 = load i64, i64* %198, align 8, !dbg !1034, !tbaa !1037
  %200 = getelementptr inbounds %struct.dict, %struct.dict* %197, i64 0, i32 2, i64 1, i32 3, !dbg !1034
  %201 = load i64, i64* %200, align 8, !dbg !1034, !tbaa !1037
  %202 = add i64 %201, %199, !dbg !1034
  br label %204, !dbg !1039

; <label>:203:                                    ; preds = %185
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0), i32 313, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !1041
  call void @_exit(i32 1) #9, !dbg !1041
  unreachable

; <label>:204:                                    ; preds = %192, %190, %188
  %205 = phi i64 [ %202, %192 ], [ %191, %190 ], [ %189, %188 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1042
  %206 = trunc i64 %205 to i32, !dbg !1042
  %207 = load i64, i64* %2, align 8, !dbg !1043, !tbaa !319
  %208 = icmp sgt i64 %207, 0, !dbg !1044
  %209 = select i1 %208, i64 %207, i64 0, !dbg !1044
  %210 = load i64, i64* %3, align 8, !dbg !1046, !tbaa !319
  %211 = icmp slt i64 %210, 0, !dbg !1047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1048
  br i1 %211, label %212, label %216, !dbg !1048

; <label>:212:                                    ; preds = %204
  %213 = shl i64 %205, 32, !dbg !1049
  %214 = add i64 %213, -4294967296, !dbg !1049
  %215 = ashr exact i64 %214, 32, !dbg !1049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1048
  br label %220, !dbg !1048

; <label>:216:                                    ; preds = %204
  %217 = add i64 %210, -1, !dbg !1050
  %218 = add i64 %217, %209, !dbg !1051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1048
  %219 = shl i64 %205, 32, !dbg !1052
  br label %220, !dbg !1048

; <label>:220:                                    ; preds = %216, %212
  %221 = phi i64 [ %219, %216 ], [ %213, %212 ], !dbg !1052
  %222 = phi i64 [ %218, %216 ], [ %215, %212 ], !dbg !1048
  %223 = ashr exact i64 %221, 32, !dbg !1052
  %224 = icmp slt i64 %209, %223, !dbg !1055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1056
  br i1 %224, label %230, label %225, !dbg !1056

; <label>:225:                                    ; preds = %220
  %226 = add i64 %221, -4294967296, !dbg !1057
  %227 = ashr exact i64 %226, 32, !dbg !1057
  %228 = add i64 %221, -8589934592, !dbg !1059
  %229 = ashr exact i64 %228, 32, !dbg !1059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1060
  br label %230, !dbg !1060

; <label>:230:                                    ; preds = %220, %225
  %231 = phi i64 [ %229, %225 ], [ %222, %220 ], !dbg !998
  %232 = phi i64 [ %227, %225 ], [ %209, %220 ], !dbg !998
  %233 = icmp slt i64 %231, %223, !dbg !1061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1063
  br i1 %233, label %237, label %234, !dbg !1063

; <label>:234:                                    ; preds = %230
  %235 = add i64 %221, -4294967296, !dbg !1064
  %236 = ashr exact i64 %235, 32, !dbg !1064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1065
  br label %237, !dbg !1065

; <label>:237:                                    ; preds = %230, %234
  %238 = phi i64 [ %236, %234 ], [ %231, %230 ], !dbg !1066
  %239 = load i32, i32* %176, align 8, !dbg !1067
  %240 = and i32 %239, 15, !dbg !1067
  %241 = icmp eq i32 %240, 3, !dbg !1069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1070
  br i1 %241, label %246, label %242, !dbg !1070

; <label>:242:                                    ; preds = %237
  %243 = icmp eq i32 %240, 1, !dbg !1071
  %244 = icmp ne i32 %179, 0, !dbg !1072
  %245 = and i1 %244, %243, !dbg !1073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1073
  br i1 %245, label %248, label %258, !dbg !1073

; <label>:246:                                    ; preds = %237
  %247 = icmp eq i32 %179, 0, !dbg !1072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1074
  br i1 %247, label %258, label %248, !dbg !1074

; <label>:248:                                    ; preds = %246, %242
  %249 = icmp eq i64 %232, 0, !dbg !1075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1076
  br i1 %249, label %250, label %254, !dbg !1076

; <label>:250:                                    ; preds = %248
  %251 = add i64 %221, -4294967296, !dbg !1077
  %252 = ashr exact i64 %251, 32, !dbg !1077
  %253 = icmp eq i64 %238, %252, !dbg !1078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1079
  br i1 %253, label %258, label %254, !dbg !1079

; <label>:254:                                    ; preds = %250, %248
  %255 = sub nsw i64 %238, %232, !dbg !1080
  %256 = trunc i64 %255 to i32, !dbg !1082
  %257 = add i32 %256, 1, !dbg !1082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1083
  br label %258, !dbg !1083

; <label>:258:                                    ; preds = %246, %250, %254, %242
  %259 = phi i32 [ %257, %254 ], [ %206, %250 ], [ %206, %246 ], [ %206, %242 ], !dbg !1042
  %260 = sext i32 %259 to i64, !dbg !1084
  %261 = shl nsw i64 %260, 4, !dbg !1085
  %262 = call i8* @zmalloc(i64 %261) #6, !dbg !1086
  %263 = bitcast i8* %262 to %struct._redisSortObject*, !dbg !1086
  %264 = load i32, i32* %176, align 8, !dbg !1088
  %265 = and i32 %264, 15, !dbg !1088
  %266 = icmp eq i32 %265, 1, !dbg !1089
  %267 = icmp ne i32 %179, 0, !dbg !1090
  %268 = and i1 %267, %266, !dbg !1091
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1091
  br i1 %268, label %269, label %302, !dbg !1091

; <label>:269:                                    ; preds = %258
  %270 = icmp slt i64 %238, %232, !dbg !1092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1093
  br i1 %270, label %487, label %271, !dbg !1093

; <label>:271:                                    ; preds = %269
  %272 = bitcast %struct.listTypeEntry* %4 to i8*, !dbg !1094
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %272) #7, !dbg !1094
  %273 = icmp ne i32 %173, 0, !dbg !1095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1095
  br i1 %273, label %274, label %278, !dbg !1095

; <label>:274:                                    ; preds = %271
  %275 = call i64 @listTypeLength(%struct.redisObject* nonnull %37) #6, !dbg !1096
  %276 = xor i64 %232, -1, !dbg !1097
  %277 = add i64 %275, %276, !dbg !1097
  br label %278, !dbg !1095

; <label>:278:                                    ; preds = %271, %274
  %279 = phi i64 [ %277, %274 ], [ %232, %271 ], !dbg !1095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1095
  %280 = xor i1 %273, true, !dbg !1098
  %281 = zext i1 %280 to i8, !dbg !1098
  %282 = call %struct.listTypeIterator* @listTypeInitIterator(%struct.redisObject* nonnull %37, i64 %279, i8 zeroext %281) #6, !dbg !1099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1101
  %283 = icmp sgt i32 %259, 0, !dbg !1102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1103
  br i1 %283, label %284, label %299, !dbg !1103

; <label>:284:                                    ; preds = %278, %289
  %285 = phi i64 [ %294, %289 ], [ 0, %278 ]
  %286 = phi i32 [ %295, %289 ], [ 0, %278 ]
  %287 = call i32 @listTypeNext(%struct.listTypeIterator* %282, %struct.listTypeEntry* nonnull %4) #6, !dbg !1105
  %288 = icmp eq i32 %287, 0, !dbg !1103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1101
  br i1 %288, label %297, label %289, !dbg !1101

; <label>:289:                                    ; preds = %284
  %290 = call %struct.redisObject* @listTypeGet(%struct.listTypeEntry* nonnull %4) #6, !dbg !1106
  %291 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %263, i64 %285, i32 0, !dbg !1108
  store %struct.redisObject* %290, %struct.redisObject** %291, align 8, !dbg !1109, !tbaa !491
  %292 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %263, i64 %285, i32 1, !dbg !1110
  %293 = bitcast %union.anon.0* %292 to %struct.redisObject**, !dbg !1111
  store %struct.redisObject* null, %struct.redisObject** %293, align 8, !dbg !1112, !tbaa !257
  %294 = add nuw nsw i64 %285, 1, !dbg !1113
  %295 = add nuw nsw i32 %286, 1, !dbg !1113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1101
  %296 = icmp slt i64 %294, %260, !dbg !1102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1103
  br i1 %296, label %284, label %299, !dbg !1103, !llvm.loop !1114

; <label>:297:                                    ; preds = %284
  %298 = trunc i64 %285 to i32, !dbg !1101
  br label %299, !dbg !1116

; <label>:299:                                    ; preds = %289, %297, %278
  %300 = phi i32 [ 0, %278 ], [ %298, %297 ], [ %295, %289 ], !dbg !1117
  call void @listTypeReleaseIterator(%struct.listTypeIterator* %282) #6, !dbg !1116
  %301 = sub nsw i64 %238, %232, !dbg !1118
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %272) #7, !dbg !1119
  br label %483, !dbg !1120

; <label>:302:                                    ; preds = %258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1121
  br i1 %266, label %303, label %321, !dbg !1121

; <label>:303:                                    ; preds = %302
  %304 = call %struct.listTypeIterator* @listTypeInitIterator(%struct.redisObject* nonnull %37, i64 0, i8 zeroext 1) #6, !dbg !1122
  %305 = bitcast %struct.listTypeEntry* %5 to i8*, !dbg !1124
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %305) #7, !dbg !1124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  %306 = call i32 @listTypeNext(%struct.listTypeIterator* %304, %struct.listTypeEntry* nonnull %5) #6, !dbg !1127
  %307 = icmp eq i32 %306, 0, !dbg !1125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  br i1 %307, label %319, label %308, !dbg !1125

; <label>:308:                                    ; preds = %303, %308
  %309 = phi i64 [ %314, %308 ], [ 0, %303 ]
  %310 = call %struct.redisObject* @listTypeGet(%struct.listTypeEntry* nonnull %5) #6, !dbg !1128
  %311 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %263, i64 %309, i32 0, !dbg !1130
  store %struct.redisObject* %310, %struct.redisObject** %311, align 8, !dbg !1131, !tbaa !491
  %312 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %263, i64 %309, i32 1, !dbg !1132
  %313 = bitcast %union.anon.0* %312 to %struct.redisObject**, !dbg !1133
  store %struct.redisObject* null, %struct.redisObject** %313, align 8, !dbg !1134, !tbaa !257
  %314 = add nuw i64 %309, 1, !dbg !1135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  %315 = call i32 @listTypeNext(%struct.listTypeIterator* %304, %struct.listTypeEntry* nonnull %5) #6, !dbg !1127
  %316 = icmp eq i32 %315, 0, !dbg !1125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  br i1 %316, label %317, label %308, !dbg !1125, !llvm.loop !1136

; <label>:317:                                    ; preds = %308
  %318 = trunc i64 %314 to i32, !dbg !1138
  br label %319, !dbg !1138

; <label>:319:                                    ; preds = %317, %303
  %320 = phi i32 [ 0, %303 ], [ %318, %317 ], !dbg !1139
  call void @listTypeReleaseIterator(%struct.listTypeIterator* %304) #6, !dbg !1138
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %305) #7, !dbg !1140
  br label %483, !dbg !1141

; <label>:321:                                    ; preds = %302
  %322 = icmp eq i32 %265, 2, !dbg !1142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1143
  br i1 %322, label %323, label %341, !dbg !1143

; <label>:323:                                    ; preds = %321
  %324 = call %struct.setTypeIterator* @setTypeInitIterator(%struct.redisObject* nonnull %37) #6, !dbg !1144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1146
  %325 = call i8* @setTypeNextObject(%struct.setTypeIterator* %324) #6, !dbg !1147
  %326 = icmp eq i8* %325, null, !dbg !1149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1146
  br i1 %326, label %339, label %327, !dbg !1146

; <label>:327:                                    ; preds = %323, %327
  %328 = phi i64 [ %334, %327 ], [ 0, %323 ]
  %329 = phi i8* [ %335, %327 ], [ %325, %323 ]
  %330 = call %struct.redisObject* @createObject(i32 0, i8* nonnull %329) #6, !dbg !1150
  %331 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %263, i64 %328, i32 0, !dbg !1152
  store %struct.redisObject* %330, %struct.redisObject** %331, align 8, !dbg !1153, !tbaa !491
  %332 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %263, i64 %328, i32 1, !dbg !1154
  %333 = bitcast %union.anon.0* %332 to %struct.redisObject**, !dbg !1155
  store %struct.redisObject* null, %struct.redisObject** %333, align 8, !dbg !1156, !tbaa !257
  %334 = add nuw i64 %328, 1, !dbg !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1146
  %335 = call i8* @setTypeNextObject(%struct.setTypeIterator* %324) #6, !dbg !1147
  %336 = icmp eq i8* %335, null, !dbg !1149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1146
  br i1 %336, label %337, label %327, !dbg !1146, !llvm.loop !1158

; <label>:337:                                    ; preds = %327
  %338 = trunc i64 %334 to i32, !dbg !1160
  br label %339, !dbg !1160

; <label>:339:                                    ; preds = %337, %323
  %340 = phi i32 [ 0, %323 ], [ %338, %337 ], !dbg !1161
  call void @setTypeReleaseIterator(%struct.setTypeIterator* %324) #6, !dbg !1160
  br label %483, !dbg !1162

; <label>:341:                                    ; preds = %321
  %342 = icmp eq i32 %265, 3, !dbg !1163
  %343 = and i1 %267, %342, !dbg !1164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1164
  br i1 %343, label %344, label %430, !dbg !1164

; <label>:344:                                    ; preds = %341
  %345 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %37, i64 0, i32 2, !dbg !1165
  %346 = bitcast i8** %345 to %struct.zset**, !dbg !1165
  %347 = load %struct.zset*, %struct.zset** %346, align 8, !dbg !1165, !tbaa !252
  %348 = getelementptr inbounds %struct.zset, %struct.zset* %347, i64 0, i32 1, !dbg !1167
  %349 = load %struct.zskiplist*, %struct.zskiplist** %348, align 8, !dbg !1167, !tbaa !1168
  %350 = icmp ne i32 %173, 0, !dbg !1171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  br i1 %350, label %351, label %365, !dbg !1172

; <label>:351:                                    ; preds = %344
  %352 = getelementptr inbounds %struct.zset, %struct.zset* %347, i64 0, i32 0, !dbg !1173
  %353 = load %struct.dict*, %struct.dict** %352, align 8, !dbg !1173, !tbaa !1035
  %354 = getelementptr inbounds %struct.dict, %struct.dict* %353, i64 0, i32 2, i64 0, i32 3, !dbg !1173
  %355 = load i64, i64* %354, align 8, !dbg !1173, !tbaa !1037
  %356 = getelementptr inbounds %struct.dict, %struct.dict* %353, i64 0, i32 2, i64 1, i32 3, !dbg !1173
  %357 = load i64, i64* %356, align 8, !dbg !1173, !tbaa !1037
  %358 = getelementptr inbounds %struct.zskiplist, %struct.zskiplist* %349, i64 0, i32 1, !dbg !1174
  %359 = load %struct.zskiplistNode*, %struct.zskiplistNode** %358, align 8, !dbg !1174, !tbaa !1175
  %360 = icmp sgt i64 %232, 0, !dbg !1178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1180
  br i1 %360, label %361, label %374, !dbg !1180

; <label>:361:                                    ; preds = %351
  %362 = sub i64 %355, %232, !dbg !1173
  %363 = add i64 %362, %357, !dbg !1182
  %364 = call %struct.zskiplistNode* @zslGetElementByRank(%struct.zskiplist* nonnull %349, i64 %363) #6, !dbg !1183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1184
  br label %374, !dbg !1184

; <label>:365:                                    ; preds = %344
  %366 = getelementptr inbounds %struct.zskiplist, %struct.zskiplist* %349, i64 0, i32 0, !dbg !1185
  %367 = load %struct.zskiplistNode*, %struct.zskiplistNode** %366, align 8, !dbg !1185, !tbaa !1187
  %368 = getelementptr inbounds %struct.zskiplistNode, %struct.zskiplistNode* %367, i64 0, i32 3, i64 0, i32 0, !dbg !1188
  %369 = load %struct.zskiplistNode*, %struct.zskiplistNode** %368, align 8, !dbg !1188, !tbaa !1189
  %370 = icmp sgt i64 %232, 0, !dbg !1191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1193
  br i1 %370, label %371, label %376, !dbg !1193

; <label>:371:                                    ; preds = %365
  %372 = add nsw i64 %232, 1, !dbg !1194
  %373 = call %struct.zskiplistNode* @zslGetElementByRank(%struct.zskiplist* nonnull %349, i64 %372) #6, !dbg !1195
  br label %374, !dbg !1196

; <label>:374:                                    ; preds = %351, %361, %371
  %375 = phi %struct.zskiplistNode* [ %373, %371 ], [ %364, %361 ], [ %359, %351 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1197
  br label %376, !dbg !1198

; <label>:376:                                    ; preds = %374, %365
  %377 = phi %struct.zskiplistNode* [ %369, %365 ], [ %375, %374 ], !dbg !1199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  %378 = icmp eq i32 %259, 0, !dbg !1198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  br i1 %378, label %427, label %379, !dbg !1198

; <label>:379:                                    ; preds = %376, %413
  %380 = phi i64 [ %419, %413 ], [ 0, %376 ]
  %381 = phi i32 [ %383, %413 ], [ %259, %376 ]
  %382 = phi %struct.zskiplistNode* [ %423, %413 ], [ %377, %376 ]
  %383 = add nsw i32 %381, -1, !dbg !1200
  %384 = icmp eq %struct.zskiplistNode* %382, null, !dbg !1201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1201
  br i1 %384, label %385, label %386, !dbg !1201

; <label>:385:                                    ; preds = %379
  call void @_serverAssertWithInfo(%struct.client* %0, %struct.redisObject* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0), i32 419) #6, !dbg !1201
  call void @_exit(i32 1) #9, !dbg !1201
  unreachable

; <label>:386:                                    ; preds = %379
  %387 = getelementptr inbounds %struct.zskiplistNode, %struct.zskiplistNode* %382, i64 0, i32 0, !dbg !1203
  %388 = load i8*, i8** %387, align 8, !dbg !1203, !tbaa !870
  %389 = getelementptr inbounds i8, i8* %388, i64 -1, !dbg !1207
  %390 = load i8, i8* %389, align 1, !dbg !1207, !tbaa !257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1209
  %391 = trunc i8 %390 to i3, !dbg !1209
  switch i3 %391, label %413 [
    i3 0, label %392
    i3 1, label %395
    i3 2, label %399
    i3 3, label %404
    i3 -4, label %409
  ], !dbg !1209

; <label>:392:                                    ; preds = %386
  %393 = lshr i8 %390, 3, !dbg !1210
  %394 = zext i8 %393 to i64, !dbg !1210
  br label %413, !dbg !1211

; <label>:395:                                    ; preds = %386
  %396 = getelementptr inbounds i8, i8* %388, i64 -3, !dbg !1212
  %397 = load i8, i8* %396, align 1, !dbg !1213, !tbaa !257
  %398 = zext i8 %397 to i64, !dbg !1212
  br label %413, !dbg !1214

; <label>:399:                                    ; preds = %386
  %400 = getelementptr inbounds i8, i8* %388, i64 -5, !dbg !1215
  %401 = bitcast i8* %400 to i16*, !dbg !1216
  %402 = load i16, i16* %401, align 1, !dbg !1216, !tbaa !310
  %403 = zext i16 %402 to i64, !dbg !1215
  br label %413, !dbg !1217

; <label>:404:                                    ; preds = %386
  %405 = getelementptr inbounds i8, i8* %388, i64 -9, !dbg !1218
  %406 = bitcast i8* %405 to i32*, !dbg !1219
  %407 = load i32, i32* %406, align 1, !dbg !1219, !tbaa !315
  %408 = zext i32 %407 to i64, !dbg !1218
  br label %413, !dbg !1220

; <label>:409:                                    ; preds = %386
  %410 = getelementptr inbounds i8, i8* %388, i64 -17, !dbg !1221
  %411 = bitcast i8* %410 to i64*, !dbg !1222
  %412 = load i64, i64* %411, align 1, !dbg !1222, !tbaa !319
  br label %413, !dbg !1223

; <label>:413:                                    ; preds = %386, %392, %395, %399, %404, %409
  %414 = phi i64 [ %412, %409 ], [ %408, %404 ], [ %403, %399 ], [ %398, %395 ], [ %394, %392 ], [ 0, %386 ], !dbg !1224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1226
  %415 = call %struct.redisObject* @createStringObject(i8* %388, i64 %414) #6, !dbg !1227
  %416 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %263, i64 %380, i32 0, !dbg !1228
  store %struct.redisObject* %415, %struct.redisObject** %416, align 8, !dbg !1229, !tbaa !491
  %417 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %263, i64 %380, i32 1, !dbg !1230
  %418 = bitcast %union.anon.0* %417 to %struct.redisObject**, !dbg !1231
  store %struct.redisObject* null, %struct.redisObject** %418, align 8, !dbg !1232, !tbaa !257
  %419 = add nuw nsw i64 %380, 1, !dbg !1233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1234
  %420 = getelementptr inbounds %struct.zskiplistNode, %struct.zskiplistNode* %382, i64 0, i32 3, i64 0, i32 0, !dbg !1235
  %421 = getelementptr inbounds %struct.zskiplistNode, %struct.zskiplistNode* %382, i64 0, i32 2, !dbg !1236
  %422 = select i1 %350, %struct.zskiplistNode** %421, %struct.zskiplistNode** %420, !dbg !1234
  %423 = load %struct.zskiplistNode*, %struct.zskiplistNode** %422, align 8, !dbg !1225, !tbaa !870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  %424 = icmp eq i32 %383, 0, !dbg !1198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  br i1 %424, label %425, label %379, !dbg !1198, !llvm.loop !1237

; <label>:425:                                    ; preds = %413
  %426 = trunc i64 %419 to i32, !dbg !1239
  br label %427, !dbg !1239

; <label>:427:                                    ; preds = %425, %376
  %428 = phi i32 [ 0, %376 ], [ %426, %425 ], !dbg !1225
  %429 = sub nsw i64 %238, %232, !dbg !1239
  br label %483, !dbg !1240

; <label>:430:                                    ; preds = %341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1241
  br i1 %342, label %431, label %482, !dbg !1241

; <label>:431:                                    ; preds = %430
  %432 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %37, i64 0, i32 2, !dbg !1242
  %433 = bitcast i8** %432 to %struct.zset**, !dbg !1242
  %434 = load %struct.zset*, %struct.zset** %433, align 8, !dbg !1242, !tbaa !252
  %435 = getelementptr inbounds %struct.zset, %struct.zset* %434, i64 0, i32 0, !dbg !1243
  %436 = load %struct.dict*, %struct.dict** %435, align 8, !dbg !1243, !tbaa !1035
  %437 = call %struct.dictIterator* @dictGetIterator(%struct.dict* %436) #6, !dbg !1245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  %438 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %437) #6, !dbg !1248
  %439 = icmp eq %struct.dictEntry* %438, null, !dbg !1250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  br i1 %439, label %480, label %440, !dbg !1247

; <label>:440:                                    ; preds = %431, %469
  %441 = phi i64 [ %475, %469 ], [ 0, %431 ]
  %442 = phi %struct.dictEntry* [ %476, %469 ], [ %438, %431 ]
  %443 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %442, i64 0, i32 0, !dbg !1251
  %444 = load i8*, i8** %443, align 8, !dbg !1251, !tbaa !1253
  %445 = getelementptr inbounds i8, i8* %444, i64 -1, !dbg !1258
  %446 = load i8, i8* %445, align 1, !dbg !1258, !tbaa !257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1260
  %447 = trunc i8 %446 to i3, !dbg !1260
  switch i3 %447, label %469 [
    i3 0, label %448
    i3 1, label %451
    i3 2, label %455
    i3 3, label %460
    i3 -4, label %465
  ], !dbg !1260

; <label>:448:                                    ; preds = %440
  %449 = lshr i8 %446, 3, !dbg !1261
  %450 = zext i8 %449 to i64, !dbg !1261
  br label %469, !dbg !1262

; <label>:451:                                    ; preds = %440
  %452 = getelementptr inbounds i8, i8* %444, i64 -3, !dbg !1263
  %453 = load i8, i8* %452, align 1, !dbg !1264, !tbaa !257
  %454 = zext i8 %453 to i64, !dbg !1263
  br label %469, !dbg !1265

; <label>:455:                                    ; preds = %440
  %456 = getelementptr inbounds i8, i8* %444, i64 -5, !dbg !1266
  %457 = bitcast i8* %456 to i16*, !dbg !1267
  %458 = load i16, i16* %457, align 1, !dbg !1267, !tbaa !310
  %459 = zext i16 %458 to i64, !dbg !1266
  br label %469, !dbg !1268

; <label>:460:                                    ; preds = %440
  %461 = getelementptr inbounds i8, i8* %444, i64 -9, !dbg !1269
  %462 = bitcast i8* %461 to i32*, !dbg !1270
  %463 = load i32, i32* %462, align 1, !dbg !1270, !tbaa !315
  %464 = zext i32 %463 to i64, !dbg !1269
  br label %469, !dbg !1271

; <label>:465:                                    ; preds = %440
  %466 = getelementptr inbounds i8, i8* %444, i64 -17, !dbg !1272
  %467 = bitcast i8* %466 to i64*, !dbg !1273
  %468 = load i64, i64* %467, align 1, !dbg !1273, !tbaa !319
  br label %469, !dbg !1274

; <label>:469:                                    ; preds = %440, %448, %451, %455, %460, %465
  %470 = phi i64 [ %468, %465 ], [ %464, %460 ], [ %459, %455 ], [ %454, %451 ], [ %450, %448 ], [ 0, %440 ], !dbg !1275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1277
  %471 = call %struct.redisObject* @createStringObject(i8* %444, i64 %470) #6, !dbg !1278
  %472 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %263, i64 %441, i32 0, !dbg !1279
  store %struct.redisObject* %471, %struct.redisObject** %472, align 8, !dbg !1280, !tbaa !491
  %473 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %263, i64 %441, i32 1, !dbg !1281
  %474 = bitcast %union.anon.0* %473 to %struct.redisObject**, !dbg !1282
  store %struct.redisObject* null, %struct.redisObject** %474, align 8, !dbg !1283, !tbaa !257
  %475 = add nuw i64 %441, 1, !dbg !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  %476 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %437) #6, !dbg !1248
  %477 = icmp eq %struct.dictEntry* %476, null, !dbg !1250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  br i1 %477, label %478, label %440, !dbg !1247, !llvm.loop !1285

; <label>:478:                                    ; preds = %469
  %479 = trunc i64 %475 to i32, !dbg !1287
  br label %480, !dbg !1287

; <label>:480:                                    ; preds = %478, %431
  %481 = phi i32 [ 0, %431 ], [ %479, %478 ], !dbg !1276
  call void @dictReleaseIterator(%struct.dictIterator* %437) #6, !dbg !1287
  br label %483

; <label>:482:                                    ; preds = %430
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0), i32 445, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !1288
  call void @_exit(i32 1) #9, !dbg !1288
  unreachable

; <label>:483:                                    ; preds = %299, %339, %480, %427, %319
  %484 = phi i32 [ %481, %480 ], [ %428, %427 ], [ %340, %339 ], [ %320, %319 ], [ %300, %299 ]
  %485 = phi i64 [ %238, %480 ], [ %429, %427 ], [ %238, %339 ], [ %238, %319 ], [ %301, %299 ]
  %486 = phi i64 [ %232, %480 ], [ 0, %427 ], [ %232, %339 ], [ %232, %319 ], [ 0, %299 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %487, !dbg !1290

; <label>:487:                                    ; preds = %483, %269
  %488 = phi i32 [ 0, %269 ], [ %484, %483 ], !dbg !1291
  %489 = phi i64 [ %238, %269 ], [ %485, %483 ], !dbg !1292
  %490 = phi i64 [ %232, %269 ], [ %486, %483 ], !dbg !1066
  %491 = icmp eq i32 %488, %259, !dbg !1290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1290
  br i1 %491, label %493, label %492, !dbg !1290

; <label>:492:                                    ; preds = %487
  call void @_serverAssertWithInfo(%struct.client* %0, %struct.redisObject* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0), i32 447) #6, !dbg !1290
  call void @_exit(i32 1) #9, !dbg !1290
  unreachable

; <label>:493:                                    ; preds = %487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1293
  br i1 %267, label %580, label %494, !dbg !1293

; <label>:494:                                    ; preds = %493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1294
  %495 = icmp sgt i32 %259, 0, !dbg !1295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1296
  br i1 %495, label %496, label %565, !dbg !1296

; <label>:496:                                    ; preds = %494
  %497 = icmp ne %struct.redisObject* %178, null
  %498 = icmp eq i32 %180, 0
  %499 = bitcast i8** %6 to i8*
  br label %500, !dbg !1296

; <label>:500:                                    ; preds = %496, %561
  %501 = phi i64 [ 0, %496 ], [ %563, %561 ]
  %502 = phi i32 [ 0, %496 ], [ %562, %561 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1297
  br i1 %497, label %503, label %509, !dbg !1297

; <label>:503:                                    ; preds = %500
  %504 = load %struct.redisDb*, %struct.redisDb** %11, align 8, !dbg !1298, !tbaa !863
  %505 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %263, i64 %501, i32 0, !dbg !1301
  %506 = load %struct.redisObject*, %struct.redisObject** %505, align 8, !dbg !1301, !tbaa !491
  %507 = call %struct.redisObject* @lookupKeyByPattern(%struct.redisDb* %504, %struct.redisObject* nonnull %178, %struct.redisObject* %506) #10, !dbg !1302
  %508 = icmp eq %struct.redisObject* %507, null, !dbg !1304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  br i1 %508, label %561, label %512, !dbg !1306

; <label>:509:                                    ; preds = %500
  %510 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %263, i64 %501, i32 0, !dbg !1307
  %511 = load %struct.redisObject*, %struct.redisObject** %510, align 8, !dbg !1307, !tbaa !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %512

; <label>:512:                                    ; preds = %503, %509
  %513 = phi %struct.redisObject* [ %507, %503 ], [ %511, %509 ], !dbg !1309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  br i1 %498, label %519, label %514, !dbg !1310

; <label>:514:                                    ; preds = %512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1311
  br i1 %497, label %515, label %559, !dbg !1311

; <label>:515:                                    ; preds = %514
  %516 = call %struct.redisObject* @getDecodedObject(%struct.redisObject* %513) #6, !dbg !1313
  %517 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %263, i64 %501, i32 1, !dbg !1315
  %518 = bitcast %union.anon.0* %517 to %struct.redisObject**, !dbg !1316
  store %struct.redisObject* %516, %struct.redisObject** %518, align 8, !dbg !1317, !tbaa !257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1319
  br label %557, !dbg !1319

; <label>:519:                                    ; preds = %512
  %520 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %513, i64 0, i32 0, !dbg !1320
  %521 = load i32, i32* %520, align 8, !dbg !1320
  %522 = lshr i32 %521, 4, !dbg !1320
  %523 = and i32 %522, 15, !dbg !1320
  %524 = icmp eq i32 %523, 0, !dbg !1320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1320
  br i1 %524, label %527, label %525, !dbg !1320

; <label>:525:                                    ; preds = %519
  %526 = icmp eq i32 %523, 8, !dbg !1320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1321
  br i1 %526, label %527, label %546, !dbg !1321

; <label>:527:                                    ; preds = %525, %519
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %499) #7, !dbg !1322
  %528 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %513, i64 0, i32 2, !dbg !1323
  %529 = load i8*, i8** %528, align 8, !dbg !1323, !tbaa !252
  %530 = call double @strtod(i8* %529, i8** nonnull %6) #6, !dbg !1325
  %531 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %263, i64 %501, i32 1, i32 0, !dbg !1326
  store double %530, double* %531, align 8, !dbg !1327, !tbaa !257
  %532 = load i8*, i8** %6, align 8, !dbg !1328, !tbaa !870
  %533 = load i8, i8* %532, align 1, !dbg !1328, !tbaa !257
  %534 = icmp eq i8 %533, 0, !dbg !1330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  br i1 %534, label %535, label %543, !dbg !1331

; <label>:535:                                    ; preds = %527
  %536 = call i32* @__errno() #6, !dbg !1332
  %537 = load i32, i32* %536, align 4, !dbg !1332, !tbaa !315
  %538 = icmp eq i32 %537, 34, !dbg !1333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1334
  br i1 %538, label %543, label %539, !dbg !1334

; <label>:539:                                    ; preds = %535
  %540 = load double, double* %531, align 8, !dbg !1335, !tbaa !257
  %541 = call i32 @__fpclassifyd(double %540) #6, !dbg !1335
  %542 = icmp eq i32 %541, 0, !dbg !1335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1336
  br i1 %542, label %543, label %544, !dbg !1336

; <label>:543:                                    ; preds = %527, %539, %535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1337
  br label %544, !dbg !1337

; <label>:544:                                    ; preds = %543, %539
  %545 = phi i32 [ 1, %543 ], [ %502, %539 ], !dbg !998
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %499) #7, !dbg !1339
  br label %555, !dbg !1340

; <label>:546:                                    ; preds = %525
  %547 = icmp eq i32 %523, 1, !dbg !1341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1343
  br i1 %547, label %548, label %554, !dbg !1343

; <label>:548:                                    ; preds = %546
  %549 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %513, i64 0, i32 2, !dbg !1344
  %550 = bitcast i8** %549 to i64*, !dbg !1344
  %551 = load i64, i64* %550, align 8, !dbg !1344, !tbaa !252
  %552 = sitofp i64 %551 to double, !dbg !1346
  %553 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %263, i64 %501, i32 1, i32 0, !dbg !1347
  store double %552, double* %553, align 8, !dbg !1348, !tbaa !257
  br label %555

; <label>:554:                                    ; preds = %546
  call void @_serverAssertWithInfo(%struct.client* %0, %struct.redisObject* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0), i32 480) #6, !dbg !1349
  call void @_exit(i32 1) #9, !dbg !1349
  unreachable

; <label>:555:                                    ; preds = %544, %548
  %556 = phi i32 [ %545, %544 ], [ %502, %548 ], !dbg !998
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1319
  br i1 %497, label %557, label %561, !dbg !1319

; <label>:557:                                    ; preds = %515, %555
  %558 = phi i32 [ %502, %515 ], [ %556, %555 ]
  call void @decrRefCount(%struct.redisObject* %513) #6, !dbg !1351
  br label %559, !dbg !1354

; <label>:559:                                    ; preds = %514, %557
  %560 = phi i32 [ %558, %557 ], [ %502, %514 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1355
  br label %561, !dbg !1356

; <label>:561:                                    ; preds = %555, %559, %503
  %562 = phi i32 [ %502, %503 ], [ %556, %555 ], [ %560, %559 ], !dbg !858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1357
  %563 = add nuw nsw i64 %501, 1, !dbg !1358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1359
  %564 = icmp slt i64 %563, %260, !dbg !1295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1296
  br i1 %564, label %500, label %565, !dbg !1296, !llvm.loop !1360

; <label>:565:                                    ; preds = %561, %494
  %566 = phi i32 [ 0, %494 ], [ %562, %561 ], !dbg !858
  store i32 %173, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 237), align 8, !dbg !1362, !tbaa !543
  store i32 %180, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 238), align 4, !dbg !1363, !tbaa !464
  %567 = icmp ne %struct.redisObject* %178, null, !dbg !1364
  %568 = zext i1 %567 to i32, !dbg !1364
  store i32 %568, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 239), align 8, !dbg !1365, !tbaa !498
  %569 = icmp ne %struct.redisObject* %175, null, !dbg !1366
  %570 = zext i1 %569 to i32, !dbg !1366
  store i32 %570, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 240), align 4, !dbg !1367, !tbaa !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1368
  br i1 %567, label %571, label %578, !dbg !1368

; <label>:571:                                    ; preds = %565
  %572 = icmp eq i64 %490, 0, !dbg !1370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1371
  br i1 %572, label %573, label %577, !dbg !1371

; <label>:573:                                    ; preds = %571
  %574 = add nsw i32 %259, -1, !dbg !1372
  %575 = sext i32 %574 to i64, !dbg !1373
  %576 = icmp eq i64 %489, %575, !dbg !1374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1375
  br i1 %576, label %578, label %577, !dbg !1375

; <label>:577:                                    ; preds = %573, %571
  call void @pqsort(i8* %262, i64 %260, i64 16, i32 (i8*, i8*)* nonnull @sortCompare, i64 %490, i64 %489) #6, !dbg !1376
  br label %579, !dbg !1376

; <label>:578:                                    ; preds = %573, %565
  call void @qsort(i8* %262, i64 %260, i64 16, i32 (i8*, i8*)* nonnull @sortCompare) #6, !dbg !1377
  br label %579

; <label>:579:                                    ; preds = %578, %577
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %580, !dbg !1378

; <label>:580:                                    ; preds = %579, %493
  %581 = phi i32 [ 0, %493 ], [ %566, %579 ], !dbg !858
  %582 = icmp ne i32 %174, 0, !dbg !1378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1378
  br i1 %582, label %583, label %588, !dbg !1378

; <label>:583:                                    ; preds = %580
  %584 = sext i32 %174 to i64, !dbg !1379
  %585 = add i64 %489, 1, !dbg !1380
  %586 = sub i64 %585, %490, !dbg !1381
  %587 = mul nsw i64 %586, %584, !dbg !1382
  br label %591, !dbg !1378

; <label>:588:                                    ; preds = %580
  %589 = add i64 %489, 1, !dbg !1383
  %590 = sub i64 %589, %490, !dbg !1384
  br label %591, !dbg !1378

; <label>:591:                                    ; preds = %588, %583
  %592 = phi i64 [ %587, %583 ], [ %590, %588 ], !dbg !1378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1378
  %593 = trunc i64 %592 to i32, !dbg !1378
  %594 = icmp eq i32 %581, 0, !dbg !1385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1386
  br i1 %594, label %596, label %595, !dbg !1386

; <label>:595:                                    ; preds = %591
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !1387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1389
  br label %708, !dbg !1389

; <label>:596:                                    ; preds = %591
  %597 = icmp eq %struct.redisObject* %175, null, !dbg !1390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1391
  br i1 %597, label %598, label %642, !dbg !1391

; <label>:598:                                    ; preds = %596
  %599 = and i64 %592, 4294967295, !dbg !1392
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 %599) #6, !dbg !1393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1394
  %600 = shl i64 %490, 32, !dbg !1395
  %601 = ashr exact i64 %600, 32, !dbg !1395
  %602 = icmp slt i64 %489, %601, !dbg !1396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1397
  br i1 %602, label %708, label %603, !dbg !1397

; <label>:603:                                    ; preds = %598
  %604 = bitcast %struct.listIter* %7 to i8*
  %605 = shl i64 %490, 32, !dbg !1397
  %606 = ashr exact i64 %605, 32, !dbg !1397
  br label %607, !dbg !1397

; <label>:607:                                    ; preds = %603, %639
  %608 = phi i64 [ %606, %603 ], [ %640, %639 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %604) #7, !dbg !1398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1399
  br i1 %582, label %612, label %609, !dbg !1399

; <label>:609:                                    ; preds = %607
  %610 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %263, i64 %608, i32 0, !dbg !1400
  %611 = load %struct.redisObject*, %struct.redisObject** %610, align 8, !dbg !1400, !tbaa !491
  call void @addReplyBulk(%struct.client* %0, %struct.redisObject* %611) #6, !dbg !1402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1402
  br label %612, !dbg !1402

; <label>:612:                                    ; preds = %609, %607
  call void @listRewind(%struct.list* %31, %struct.listIter* nonnull %7) #6, !dbg !1404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1405
  %613 = call %struct.listNode* @listNext(%struct.listIter* nonnull %7) #6, !dbg !1406
  %614 = icmp eq %struct.listNode* %613, null, !dbg !1405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1405
  br i1 %614, label %639, label %615, !dbg !1405

; <label>:615:                                    ; preds = %612
  %616 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %263, i64 %608, i32 0
  br label %617, !dbg !1405

; <label>:617:                                    ; preds = %615, %636
  %618 = phi %struct.listNode* [ %613, %615 ], [ %637, %636 ]
  %619 = getelementptr inbounds %struct.listNode, %struct.listNode* %618, i64 0, i32 2, !dbg !1408
  %620 = bitcast i8** %619 to %struct._redisSortOperation**, !dbg !1408
  %621 = load %struct._redisSortOperation*, %struct._redisSortOperation** %620, align 8, !dbg !1408, !tbaa !1409
  %622 = load %struct.redisDb*, %struct.redisDb** %11, align 8, !dbg !1412, !tbaa !863
  %623 = getelementptr inbounds %struct._redisSortOperation, %struct._redisSortOperation* %621, i64 0, i32 1, !dbg !1413
  %624 = load %struct.redisObject*, %struct.redisObject** %623, align 8, !dbg !1413, !tbaa !185
  %625 = load %struct.redisObject*, %struct.redisObject** %616, align 8, !dbg !1414, !tbaa !491
  %626 = call %struct.redisObject* @lookupKeyByPattern(%struct.redisDb* %622, %struct.redisObject* %624, %struct.redisObject* %625) #10, !dbg !1415
  %627 = getelementptr inbounds %struct._redisSortOperation, %struct._redisSortOperation* %621, i64 0, i32 0, !dbg !1417
  %628 = load i32, i32* %627, align 8, !dbg !1417, !tbaa !177
  %629 = icmp eq i32 %628, 0, !dbg !1419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1420
  br i1 %629, label %630, label %635, !dbg !1420

; <label>:630:                                    ; preds = %617
  %631 = icmp eq %struct.redisObject* %626, null, !dbg !1421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1424
  br i1 %631, label %632, label %634, !dbg !1424

; <label>:632:                                    ; preds = %630
  %633 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1425, !tbaa !1427
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %633) #6, !dbg !1428
  br label %636, !dbg !1429

; <label>:634:                                    ; preds = %630
  call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* nonnull %626) #6, !dbg !1430
  call void @decrRefCount(%struct.redisObject* nonnull %626) #6, !dbg !1432
  br label %636

; <label>:635:                                    ; preds = %617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1433
  call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0), i32 529) #6, !dbg !1433
  call void @_exit(i32 1) #9, !dbg !1433
  unreachable

; <label>:636:                                    ; preds = %632, %634
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1405
  %637 = call %struct.listNode* @listNext(%struct.listIter* nonnull %7) #6, !dbg !1406
  %638 = icmp eq %struct.listNode* %637, null, !dbg !1405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1405
  br i1 %638, label %639, label %617, !dbg !1405, !llvm.loop !1435

; <label>:639:                                    ; preds = %636, %612
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %604) #7, !dbg !1437
  %640 = add i64 %608, 1, !dbg !1438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  %641 = icmp slt i64 %489, %640, !dbg !1396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1397
  br i1 %641, label %708, label %607, !dbg !1397, !llvm.loop !1440

; <label>:642:                                    ; preds = %596
  %643 = call %struct.redisObject* @createQuicklistObject() #6, !dbg !1442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1444
  %644 = shl i64 %490, 32, !dbg !1445
  %645 = ashr exact i64 %644, 32, !dbg !1445
  %646 = icmp slt i64 %489, %645, !dbg !1446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1447
  br i1 %646, label %686, label %647, !dbg !1447

; <label>:647:                                    ; preds = %642
  %648 = bitcast %struct.listIter* %8 to i8*
  %649 = shl i64 %490, 32, !dbg !1447
  %650 = ashr exact i64 %649, 32, !dbg !1447
  br label %651, !dbg !1447

; <label>:651:                                    ; preds = %647, %683
  %652 = phi i64 [ %650, %647 ], [ %684, %683 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %648) #7, !dbg !1448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1449
  br i1 %582, label %656, label %653, !dbg !1449

; <label>:653:                                    ; preds = %651
  %654 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %263, i64 %652, i32 0, !dbg !1450
  %655 = load %struct.redisObject*, %struct.redisObject** %654, align 8, !dbg !1450, !tbaa !491
  call void @listTypePush(%struct.redisObject* %643, %struct.redisObject* %655, i32 1) #6, !dbg !1452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1453
  br label %683, !dbg !1453

; <label>:656:                                    ; preds = %651
  call void @listRewind(%struct.list* %31, %struct.listIter* nonnull %8) #6, !dbg !1455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1456
  %657 = call %struct.listNode* @listNext(%struct.listIter* nonnull %8) #6, !dbg !1457
  %658 = icmp eq %struct.listNode* %657, null, !dbg !1456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1456
  br i1 %658, label %683, label %659, !dbg !1456

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %263, i64 %652, i32 0
  br label %661, !dbg !1456

; <label>:661:                                    ; preds = %659, %678
  %662 = phi %struct.listNode* [ %657, %659 ], [ %680, %678 ]
  %663 = getelementptr inbounds %struct.listNode, %struct.listNode* %662, i64 0, i32 2, !dbg !1459
  %664 = bitcast i8** %663 to %struct._redisSortOperation**, !dbg !1459
  %665 = load %struct._redisSortOperation*, %struct._redisSortOperation** %664, align 8, !dbg !1459, !tbaa !1409
  %666 = load %struct.redisDb*, %struct.redisDb** %11, align 8, !dbg !1461, !tbaa !863
  %667 = getelementptr inbounds %struct._redisSortOperation, %struct._redisSortOperation* %665, i64 0, i32 1, !dbg !1462
  %668 = load %struct.redisObject*, %struct.redisObject** %667, align 8, !dbg !1462, !tbaa !185
  %669 = load %struct.redisObject*, %struct.redisObject** %660, align 8, !dbg !1463, !tbaa !491
  %670 = call %struct.redisObject* @lookupKeyByPattern(%struct.redisDb* %666, %struct.redisObject* %668, %struct.redisObject* %669) #10, !dbg !1464
  %671 = getelementptr inbounds %struct._redisSortOperation, %struct._redisSortOperation* %665, i64 0, i32 0, !dbg !1466
  %672 = load i32, i32* %671, align 8, !dbg !1466, !tbaa !177
  %673 = icmp eq i32 %672, 0, !dbg !1468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1469
  br i1 %673, label %674, label %682, !dbg !1469

; <label>:674:                                    ; preds = %661
  %675 = icmp eq %struct.redisObject* %670, null, !dbg !1470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1473
  br i1 %675, label %676, label %678, !dbg !1473

; <label>:676:                                    ; preds = %674
  %677 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i64 0, i64 0), i64 0) #6, !dbg !1474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1475
  br label %678, !dbg !1475

; <label>:678:                                    ; preds = %674, %676
  %679 = phi %struct.redisObject* [ %670, %674 ], [ %677, %676 ], !dbg !1476
  call void @listTypePush(%struct.redisObject* %643, %struct.redisObject* %679, i32 1) #6, !dbg !1477
  call void @decrRefCount(%struct.redisObject* %679) #6, !dbg !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1456
  %680 = call %struct.listNode* @listNext(%struct.listIter* nonnull %8) #6, !dbg !1457
  %681 = icmp eq %struct.listNode* %680, null, !dbg !1456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1456
  br i1 %681, label %683, label %661, !dbg !1456, !llvm.loop !1480

; <label>:682:                                    ; preds = %661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1482
  call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0), i32 560) #6, !dbg !1482
  call void @_exit(i32 1) #9, !dbg !1482
  unreachable

; <label>:683:                                    ; preds = %678, %656, %653
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %648) #7, !dbg !1484
  %684 = add i64 %652, 1, !dbg !1485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1486
  %685 = icmp slt i64 %489, %684, !dbg !1446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1447
  br i1 %685, label %686, label %651, !dbg !1447, !llvm.loop !1487

; <label>:686:                                    ; preds = %683, %642
  %687 = icmp eq i32 %593, 0, !dbg !1489
  %688 = load %struct.redisDb*, %struct.redisDb** %11, align 8, !dbg !1491, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  br i1 %687, label %694, label %689, !dbg !1493

; <label>:689:                                    ; preds = %686
  call void @setKey(%struct.redisDb* %688, %struct.redisObject* nonnull %175, %struct.redisObject* %643) #6, !dbg !1494
  %690 = load %struct.redisDb*, %struct.redisDb** %11, align 8, !dbg !1496, !tbaa !863
  %691 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %690, i64 0, i32 5, !dbg !1497
  %692 = load i32, i32* %691, align 8, !dbg !1497, !tbaa !1498
  call void @notifyKeyspaceEvent(i32 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), %struct.redisObject* nonnull %175, i32 %692) #6, !dbg !1500
  %693 = and i64 %592, 4294967295, !dbg !1501
  br label %702, !dbg !1502

; <label>:694:                                    ; preds = %686
  %695 = call i32 @dbDelete(%struct.redisDb* %688, %struct.redisObject* nonnull %175) #6, !dbg !1503
  %696 = icmp eq i32 %695, 0, !dbg !1503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1504
  br i1 %696, label %706, label %697, !dbg !1504

; <label>:697:                                    ; preds = %694
  %698 = load %struct.redisDb*, %struct.redisDb** %11, align 8, !dbg !1505, !tbaa !863
  call void @signalModifiedKey(%struct.redisDb* %698, %struct.redisObject* nonnull %175) #6, !dbg !1507
  %699 = load %struct.redisDb*, %struct.redisDb** %11, align 8, !dbg !1508, !tbaa !863
  %700 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %699, i64 0, i32 5, !dbg !1509
  %701 = load i32, i32* %700, align 8, !dbg !1509, !tbaa !1498
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), %struct.redisObject* nonnull %175, i32 %701) #6, !dbg !1510
  br label %702, !dbg !1511

; <label>:702:                                    ; preds = %689, %697
  %703 = phi i64 [ 1, %697 ], [ %693, %689 ]
  %704 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1512, !tbaa !1513
  %705 = add nsw i64 %704, %703, !dbg !1512
  store i64 %705, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1512, !tbaa !1513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1512
  br label %706, !dbg !1514

; <label>:706:                                    ; preds = %702, %694
  call void @decrRefCount(%struct.redisObject* %643) #6, !dbg !1514
  %707 = and i64 %592, 4294967295, !dbg !1515
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %707) #6, !dbg !1516
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %708

; <label>:708:                                    ; preds = %639, %598, %706, %595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1517
  %709 = icmp sgt i32 %259, 0, !dbg !1519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1521
  br i1 %709, label %710, label %733, !dbg !1521

; <label>:710:                                    ; preds = %708
  %711 = zext i32 %259 to i64
  br label %712, !dbg !1522

; <label>:712:                                    ; preds = %712, %710
  %713 = phi i64 [ 0, %710 ], [ %716, %712 ]
  %714 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %263, i64 %713, i32 0, !dbg !1523
  %715 = load %struct.redisObject*, %struct.redisObject** %714, align 8, !dbg !1523, !tbaa !491
  call void @decrRefCount(%struct.redisObject* %715) #6, !dbg !1524
  %716 = add nuw nsw i64 %713, 1, !dbg !1525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1521
  %717 = icmp eq i64 %716, %711, !dbg !1519
  br i1 %717, label %718, label %712, !dbg !1521, !llvm.loop !1527

; <label>:718:                                    ; preds = %712
  call void @decrRefCount(%struct.redisObject* %37) #6, !dbg !1529
  call void @listRelease(%struct.list* %31) #6, !dbg !1530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1533
  br i1 %709, label %719, label %734, !dbg !1533

; <label>:719:                                    ; preds = %718
  %720 = icmp eq i32 %180, 0
  %721 = zext i32 %259 to i64
  br label %722, !dbg !1533

; <label>:722:                                    ; preds = %730, %719
  %723 = phi i64 [ 0, %719 ], [ %731, %730 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1534
  br i1 %720, label %730, label %724, !dbg !1534

; <label>:724:                                    ; preds = %722
  %725 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %263, i64 %723, i32 1, !dbg !1538
  %726 = bitcast %union.anon.0* %725 to %struct.redisObject**, !dbg !1539
  %727 = load %struct.redisObject*, %struct.redisObject** %726, align 8, !dbg !1539, !tbaa !257
  %728 = icmp eq %struct.redisObject* %727, null, !dbg !1540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1541
  br i1 %728, label %730, label %729, !dbg !1541

; <label>:729:                                    ; preds = %724
  call void @decrRefCount(%struct.redisObject* nonnull %727) #6, !dbg !1542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1542
  br label %730, !dbg !1542

; <label>:730:                                    ; preds = %724, %722, %729
  %731 = add nuw nsw i64 %723, 1, !dbg !1543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1533
  %732 = icmp eq i64 %731, %721, !dbg !1545
  br i1 %732, label %734, label %722, !dbg !1533, !llvm.loop !1546

; <label>:733:                                    ; preds = %708
  call void @decrRefCount(%struct.redisObject* %37) #6, !dbg !1529
  call void @listRelease(%struct.list* %31) #6, !dbg !1530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1533
  br label %734

; <label>:734:                                    ; preds = %730, %733, %718
  call void @zfree(i8* %262) #6, !dbg !1548
  br label %735, !dbg !1549

; <label>:735:                                    ; preds = %734, %148, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1550
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #7, !dbg !1549
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #7, !dbg !1549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1549
  ret void, !dbg !1549
}

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.list* @listCreate() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) #2

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createQuicklistObject() local_unnamed_addr #2

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @getLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @listRelease(%struct.list*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @zsetConvert(%struct.redisObject*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @listTypeLength(%struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @setTypeSize(%struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local %struct.listTypeIterator* @listTypeInitIterator(%struct.redisObject*, i64, i8 zeroext) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @listTypeNext(%struct.listTypeIterator*, %struct.listTypeEntry*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @listTypeGet(%struct.listTypeEntry*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @listTypeReleaseIterator(%struct.listTypeIterator*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.setTypeIterator* @setTypeInitIterator(%struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @setTypeNextObject(%struct.setTypeIterator*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createObject(i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @setTypeReleaseIterator(%struct.setTypeIterator*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.zskiplistNode* @zslGetElementByRank(%struct.zskiplist*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @_serverAssertWithInfo(%struct.client*, %struct.redisObject*, i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.dictIterator* @dictGetIterator(%struct.dict*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictNext(%struct.dictIterator*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @dictReleaseIterator(%struct.dictIterator*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @pqsort(i8*, i64, i64, i32 (i8*, i8*)*, i64, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @addReplyBulk(%struct.client*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @listRewind(%struct.list*, %struct.listIter*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listNext(%struct.listIter*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @listTypePush(%struct.redisObject*, %struct.redisObject*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @setKey(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @notifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @dbDelete(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @signalModifiedKey(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone nounwind readonly }
attributes #9 = { nobuiltin noredzone noreturn nounwind }
attributes #10 = { nobuiltin noredzone }

!llvm.module.flags = !{!145, !146, !147}
!llvm.ident = !{!148}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sort.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !68, !107, !118, !128, !138}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "zset", file: !7, line: 829, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zset", file: !7, line: 826, size: 128, elements: !9)
!9 = !{!10, !80}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !8, file: !7, line: 827, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !13, line: 82, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !13, line: 76, size: 768, elements: !15)
!15 = !{!16, !47, !48, !78, !79}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !14, file: !13, line: 77, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !13, line: 65, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !13, line: 58, size: 384, elements: !20)
!20 = !{!21, !32, !36, !37, !42, !46}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !19, file: !13, line: 59, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !30}
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !26, line: 60, baseType: !27)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !28, line: 105, baseType: !29)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!29 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !19, file: !13, line: 60, baseType: !33, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DISubroutineType(types: !35)
!35 = !{!4, !4, !30}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !19, file: !13, line: 61, baseType: !33, size: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !19, file: !13, line: 62, baseType: !38, size: 64, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!41, !4, !30, !30}
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !19, file: !13, line: 63, baseType: !43, size: 64, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !4, !4}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !19, file: !13, line: 64, baseType: !43, size: 64, offset: 320)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !14, file: !13, line: 78, baseType: !4, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !14, file: !13, line: 79, baseType: !49, size: 512, offset: 128)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 512, elements: !76)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !13, line: 74, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !13, line: 69, size: 256, elements: !52)
!52 = !{!53, !73, !74, !75}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !51, file: !13, line: 70, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !13, line: 56, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !13, line: 47, size: 192, elements: !58)
!58 = !{!59, !60, !71}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !57, file: !13, line: 48, baseType: !4, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !57, file: !13, line: 54, baseType: !61, size: 64, offset: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !57, file: !13, line: 49, size: 64, elements: !62)
!62 = !{!63, !64, !65, !69}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !61, file: !13, line: 50, baseType: !4, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !61, file: !13, line: 51, baseType: !25, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !61, file: !13, line: 52, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !26, line: 56, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !28, line: 103, baseType: !68)
!68 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !61, file: !13, line: 53, baseType: !70, size: 64)
!70 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !57, file: !13, line: 55, baseType: !72, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !51, file: !13, line: 71, baseType: !29, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !51, file: !13, line: 72, baseType: !29, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !51, file: !13, line: 73, baseType: !29, size: 64, offset: 192)
!76 = !{!77}
!77 = !DISubrange(count: 2)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !14, file: !13, line: 80, baseType: !68, size: 64, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !14, file: !13, line: 81, baseType: !29, size: 64, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "zsl", scope: !8, file: !7, line: 828, baseType: !81, size: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "zskiplist", file: !7, line: 824, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplist", file: !7, line: 820, size: 256, elements: !84)
!84 = !{!85, !104, !105, !106}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !83, file: !7, line: 821, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistNode", file: !7, line: 810, size: 192, elements: !88)
!88 = !{!89, !94, !95, !96}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "ele", scope: !87, file: !7, line: 811, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !91, line: 43, baseType: !92)
!91 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "score", scope: !87, file: !7, line: 812, baseType: !70, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "backward", scope: !87, file: !7, line: 813, baseType: !86, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !87, file: !7, line: 817, baseType: !97, offset: 192)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, elements: !102)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistLevel", file: !7, line: 814, size: 128, elements: !99)
!99 = !{!100, !101}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !98, file: !7, line: 815, baseType: !86, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "span", scope: !98, file: !7, line: 816, baseType: !29, size: 64, offset: 64)
!102 = !{!103}
!103 = !DISubrange(count: -1)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !83, file: !7, line: 821, baseType: !86, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !83, file: !7, line: 822, baseType: !29, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !83, file: !7, line: 823, baseType: !41, size: 32, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !91, line: 51, size: 24, elements: !109)
!109 = !{!110, !114, !115, !116}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !108, file: !91, line: 52, baseType: !111, size: 8)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !26, line: 24, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !28, line: 43, baseType: !113)
!113 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !108, file: !91, line: 53, baseType: !111, size: 8, offset: 8)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !108, file: !91, line: 54, baseType: !113, size: 8, offset: 16)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !108, file: !91, line: 55, baseType: !117, offset: 24)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, elements: !102)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !91, line: 57, size: 40, elements: !120)
!120 = !{!121, !125, !126, !127}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !119, file: !91, line: 58, baseType: !122, size: 16)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !26, line: 36, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !28, line: 57, baseType: !124)
!124 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !119, file: !91, line: 59, baseType: !122, size: 16, offset: 16)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !119, file: !91, line: 60, baseType: !113, size: 8, offset: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !119, file: !91, line: 61, baseType: !117, offset: 40)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !91, line: 63, size: 72, elements: !130)
!130 = !{!131, !135, !136, !137}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !129, file: !91, line: 64, baseType: !132, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !26, line: 48, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !28, line: 79, baseType: !134)
!134 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !129, file: !91, line: 65, baseType: !132, size: 32, offset: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !91, line: 66, baseType: !113, size: 8, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !129, file: !91, line: 67, baseType: !117, offset: 72)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !91, line: 69, size: 136, elements: !140)
!140 = !{!141, !142, !143, !144}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !139, file: !91, line: 70, baseType: !25, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !139, file: !91, line: 71, baseType: !25, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !139, file: !91, line: 72, baseType: !113, size: 8, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !139, file: !91, line: 73, baseType: !117, offset: 136)
!145 = !{i32 2, !"Dwarf Version", i32 4}
!146 = !{i32 2, !"Debug Info Version", i32 3}
!147 = !{i32 1, !"wchar_size", i32 4}
!148 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!149 = distinct !DISubprogram(name: "createSortOperation", scope: !1, file: !1, line: 38, type: !150, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !167)
!150 = !DISubroutineType(types: !151)
!151 = !{!152, !41, !158}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisSortOperation", file: !7, line: 1339, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_redisSortOperation", file: !7, line: 1336, size: 128, elements: !155)
!155 = !{!156, !157}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !154, file: !7, line: 1337, baseType: !41, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !154, file: !7, line: 1338, baseType: !158, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !7, line: 622, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !7, line: 614, size: 128, elements: !161)
!161 = !{!162, !163, !164, !165, !166}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !160, file: !7, line: 615, baseType: !134, size: 4, flags: DIFlagBitField, extraData: i64 0)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !160, file: !7, line: 616, baseType: !134, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !160, file: !7, line: 617, baseType: !134, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !160, file: !7, line: 620, baseType: !41, size: 32, offset: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !160, file: !7, line: 621, baseType: !4, size: 64, offset: 64)
!167 = !{!168, !169, !170}
!168 = !DILocalVariable(name: "type", arg: 1, scope: !149, file: !1, line: 38, type: !41)
!169 = !DILocalVariable(name: "pattern", arg: 2, scope: !149, file: !1, line: 38, type: !158)
!170 = !DILocalVariable(name: "so", scope: !149, file: !1, line: 39, type: !152)
!171 = !DILocation(line: 38, column: 45, scope: !149)
!172 = !DILocation(line: 38, column: 57, scope: !149)
!173 = !DILocation(line: 39, column: 30, scope: !149)
!174 = !DILocation(line: 39, column: 25, scope: !149)
!175 = !DILocation(line: 40, column: 9, scope: !149)
!176 = !DILocation(line: 40, column: 14, scope: !149)
!177 = !{!178, !179, i64 0}
!178 = !{!"_redisSortOperation", !179, i64 0, !182, i64 8}
!179 = !{!"int", !180, i64 0}
!180 = !{!"omnipotent char", !181, i64 0}
!181 = !{!"Simple C/C++ TBAA"}
!182 = !{!"any pointer", !180, i64 0}
!183 = !DILocation(line: 41, column: 9, scope: !149)
!184 = !DILocation(line: 41, column: 17, scope: !149)
!185 = !{!178, !182, i64 8}
!186 = !DILocation(line: 42, column: 5, scope: !149)
!187 = distinct !DISubprogram(name: "lookupKeyByPattern", scope: !1, file: !1, line: 61, type: !188, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !231)
!188 = !DISubroutineType(types: !189)
!189 = !{!158, !190, !158, !158}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !7, line: 656, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !7, line: 647, size: 512, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !199, !200, !202}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !192, file: !7, line: 648, baseType: !11, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !192, file: !7, line: 649, baseType: !11, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !192, file: !7, line: 650, baseType: !11, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !192, file: !7, line: 651, baseType: !11, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !192, file: !7, line: 652, baseType: !11, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !192, file: !7, line: 653, baseType: !41, size: 32, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !192, file: !7, line: 654, baseType: !201, size: 64, offset: 384)
!201 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !192, file: !7, line: 655, baseType: !203, size: 64, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !205, line: 54, baseType: !206)
!205 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !205, line: 47, size: 384, elements: !207)
!207 = !{!208, !217, !218, !222, !226, !230}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !206, file: !205, line: 48, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !205, line: 40, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !205, line: 36, size: 192, elements: !212)
!212 = !{!213, !215, !216}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !211, file: !205, line: 37, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !211, file: !205, line: 38, baseType: !214, size: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !211, file: !205, line: 39, baseType: !4, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !206, file: !205, line: 49, baseType: !209, size: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !206, file: !205, line: 50, baseType: !219, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!4, !4}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !206, file: !205, line: 51, baseType: !223, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !4}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !206, file: !205, line: 52, baseType: !227, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!41, !4, !4}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !206, file: !205, line: 53, baseType: !29, size: 64, offset: 320)
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246}
!232 = !DILocalVariable(name: "db", arg: 1, scope: !187, file: !1, line: 61, type: !190)
!233 = !DILocalVariable(name: "pattern", arg: 2, scope: !187, file: !1, line: 61, type: !158)
!234 = !DILocalVariable(name: "subst", arg: 3, scope: !187, file: !1, line: 61, type: !158)
!235 = !DILocalVariable(name: "p", scope: !187, file: !1, line: 62, type: !92)
!236 = !DILocalVariable(name: "f", scope: !187, file: !1, line: 62, type: !92)
!237 = !DILocalVariable(name: "k", scope: !187, file: !1, line: 62, type: !92)
!238 = !DILocalVariable(name: "spat", scope: !187, file: !1, line: 63, type: !90)
!239 = !DILocalVariable(name: "ssub", scope: !187, file: !1, line: 63, type: !90)
!240 = !DILocalVariable(name: "keyobj", scope: !187, file: !1, line: 64, type: !158)
!241 = !DILocalVariable(name: "fieldobj", scope: !187, file: !1, line: 64, type: !158)
!242 = !DILocalVariable(name: "o", scope: !187, file: !1, line: 64, type: !158)
!243 = !DILocalVariable(name: "prefixlen", scope: !187, file: !1, line: 65, type: !41)
!244 = !DILocalVariable(name: "sublen", scope: !187, file: !1, line: 65, type: !41)
!245 = !DILocalVariable(name: "postfixlen", scope: !187, file: !1, line: 65, type: !41)
!246 = !DILocalVariable(name: "fieldlen", scope: !187, file: !1, line: 65, type: !41)
!247 = !DILocation(line: 61, column: 35, scope: !187)
!248 = !DILocation(line: 61, column: 45, scope: !187)
!249 = !DILocation(line: 61, column: 60, scope: !187)
!250 = !DILocation(line: 64, column: 20, scope: !187)
!251 = !DILocation(line: 69, column: 21, scope: !187)
!252 = !{!253, !182, i64 8}
!253 = !{!"redisObject", !179, i64 0, !179, i64 0, !179, i64 1, !179, i64 4, !182, i64 8}
!254 = !DILocation(line: 63, column: 9, scope: !187)
!255 = !DILocation(line: 70, column: 9, scope: !256)
!256 = distinct !DILexicalBlock(scope: !187, file: !1, line: 70, column: 9)
!257 = !{!180, !180, i64 0}
!258 = !DILocation(line: 70, column: 17, scope: !256)
!259 = !DILocation(line: 70, column: 24, scope: !256)
!260 = !DILocation(line: 70, column: 27, scope: !256)
!261 = !DILocation(line: 70, column: 35, scope: !256)
!262 = !DILocation(line: 70, column: 9, scope: !187)
!263 = !DILocation(line: 71, column: 9, scope: !264)
!264 = distinct !DILexicalBlock(scope: !256, file: !1, line: 70, column: 44)
!265 = !DILocation(line: 72, column: 9, scope: !264)
!266 = !DILocation(line: 78, column: 13, scope: !187)
!267 = !DILocation(line: 79, column: 19, scope: !187)
!268 = !DILocation(line: 63, column: 15, scope: !187)
!269 = !DILocation(line: 83, column: 9, scope: !187)
!270 = !DILocation(line: 62, column: 11, scope: !187)
!271 = !DILocation(line: 84, column: 10, scope: !272)
!272 = distinct !DILexicalBlock(scope: !187, file: !1, line: 84, column: 9)
!273 = !DILocation(line: 84, column: 9, scope: !187)
!274 = !DILocation(line: 85, column: 9, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !1, line: 84, column: 13)
!276 = !DILocation(line: 86, column: 9, scope: !275)
!277 = !DILocation(line: 90, column: 22, scope: !278)
!278 = distinct !DILexicalBlock(scope: !187, file: !1, line: 90, column: 9)
!279 = !DILocation(line: 90, column: 14, scope: !278)
!280 = !DILocation(line: 62, column: 15, scope: !187)
!281 = !DILocation(line: 90, column: 33, scope: !278)
!282 = !DILocation(line: 90, column: 41, scope: !278)
!283 = !DILocation(line: 90, column: 47, scope: !278)
!284 = !DILocation(line: 90, column: 44, scope: !278)
!285 = !DILocation(line: 90, column: 51, scope: !278)
!286 = !DILocation(line: 90, column: 9, scope: !187)
!287 = !DILocalVariable(name: "s", arg: 1, scope: !288, file: !91, line: 87, type: !293)
!288 = distinct !DISubprogram(name: "sdslen", scope: !91, file: !91, line: 87, type: !289, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !294)
!289 = !DISubroutineType(types: !290)
!290 = !{!291, !293}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !292, line: 58, baseType: !29)
!292 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!294 = !{!287, !295}
!295 = !DILocalVariable(name: "flags", scope: !288, file: !91, line: 88, type: !113)
!296 = !DILocation(line: 87, column: 39, scope: !288, inlinedAt: !297)
!297 = distinct !DILocation(line: 91, column: 20, scope: !298)
!298 = distinct !DILexicalBlock(scope: !278, file: !1, line: 90, column: 60)
!299 = !DILocation(line: 88, column: 27, scope: !288, inlinedAt: !297)
!300 = !DILocation(line: 88, column: 19, scope: !288, inlinedAt: !297)
!301 = !DILocation(line: 89, column: 5, scope: !288, inlinedAt: !297)
!302 = !DILocation(line: 91, column: 20, scope: !303, inlinedAt: !297)
!303 = distinct !DILexicalBlock(scope: !288, file: !91, line: 89, column: 33)
!304 = !DILocation(line: 91, column: 13, scope: !303, inlinedAt: !297)
!305 = !DILocation(line: 93, column: 20, scope: !303, inlinedAt: !297)
!306 = !DILocation(line: 93, column: 34, scope: !303, inlinedAt: !297)
!307 = !DILocation(line: 93, column: 13, scope: !303, inlinedAt: !297)
!308 = !DILocation(line: 95, column: 20, scope: !303, inlinedAt: !297)
!309 = !DILocation(line: 95, column: 35, scope: !303, inlinedAt: !297)
!310 = !{!311, !311, i64 0}
!311 = !{!"short", !180, i64 0}
!312 = !DILocation(line: 95, column: 13, scope: !303, inlinedAt: !297)
!313 = !DILocation(line: 97, column: 20, scope: !303, inlinedAt: !297)
!314 = !DILocation(line: 97, column: 35, scope: !303, inlinedAt: !297)
!315 = !{!179, !179, i64 0}
!316 = !DILocation(line: 97, column: 13, scope: !303, inlinedAt: !297)
!317 = !DILocation(line: 99, column: 20, scope: !303, inlinedAt: !297)
!318 = !DILocation(line: 99, column: 35, scope: !303, inlinedAt: !297)
!319 = !{!320, !320, i64 0}
!320 = !{!"long", !180, i64 0}
!321 = !DILocation(line: 99, column: 13, scope: !303, inlinedAt: !297)
!322 = !DILocation(line: 0, scope: !303, inlinedAt: !297)
!323 = !DILocation(line: 0, scope: !298)
!324 = !DILocation(line: 102, column: 1, scope: !288, inlinedAt: !297)
!325 = !DILocation(line: 91, column: 35, scope: !298)
!326 = !DILocation(line: 91, column: 32, scope: !298)
!327 = !DILocation(line: 91, column: 20, scope: !298)
!328 = !DILocation(line: 65, column: 40, scope: !187)
!329 = !DILocation(line: 92, column: 43, scope: !298)
!330 = !DILocation(line: 92, column: 20, scope: !298)
!331 = !DILocation(line: 93, column: 5, scope: !298)
!332 = !DILocation(line: 98, column: 18, scope: !187)
!333 = !DILocation(line: 0, scope: !187)
!334 = !DILocation(line: 0, scope: !335)
!335 = distinct !DILexicalBlock(scope: !278, file: !1, line: 93, column: 12)
!336 = !DILocation(line: 98, column: 17, scope: !187)
!337 = !DILocation(line: 65, column: 9, scope: !187)
!338 = !DILocation(line: 87, column: 39, scope: !288, inlinedAt: !339)
!339 = distinct !DILocation(line: 99, column: 14, scope: !187)
!340 = !DILocation(line: 88, column: 27, scope: !288, inlinedAt: !339)
!341 = !DILocation(line: 88, column: 19, scope: !288, inlinedAt: !339)
!342 = !DILocation(line: 89, column: 5, scope: !288, inlinedAt: !339)
!343 = !DILocation(line: 91, column: 20, scope: !303, inlinedAt: !339)
!344 = !DILocation(line: 91, column: 13, scope: !303, inlinedAt: !339)
!345 = !DILocation(line: 93, column: 20, scope: !303, inlinedAt: !339)
!346 = !DILocation(line: 93, column: 34, scope: !303, inlinedAt: !339)
!347 = !DILocation(line: 93, column: 13, scope: !303, inlinedAt: !339)
!348 = !DILocation(line: 95, column: 20, scope: !303, inlinedAt: !339)
!349 = !DILocation(line: 95, column: 35, scope: !303, inlinedAt: !339)
!350 = !DILocation(line: 95, column: 13, scope: !303, inlinedAt: !339)
!351 = !DILocation(line: 97, column: 20, scope: !303, inlinedAt: !339)
!352 = !DILocation(line: 97, column: 35, scope: !303, inlinedAt: !339)
!353 = !DILocation(line: 97, column: 13, scope: !303, inlinedAt: !339)
!354 = !DILocation(line: 99, column: 20, scope: !303, inlinedAt: !339)
!355 = !DILocation(line: 99, column: 35, scope: !303, inlinedAt: !339)
!356 = !DILocation(line: 99, column: 13, scope: !303, inlinedAt: !339)
!357 = !DILocation(line: 0, scope: !303, inlinedAt: !339)
!358 = !DILocation(line: 102, column: 1, scope: !288, inlinedAt: !339)
!359 = !DILocation(line: 99, column: 14, scope: !187)
!360 = !DILocation(line: 65, column: 20, scope: !187)
!361 = !DILocation(line: 87, column: 39, scope: !288, inlinedAt: !362)
!362 = distinct !DILocation(line: 100, column: 18, scope: !187)
!363 = !DILocation(line: 88, column: 27, scope: !288, inlinedAt: !362)
!364 = !DILocation(line: 88, column: 19, scope: !288, inlinedAt: !362)
!365 = !DILocation(line: 89, column: 5, scope: !288, inlinedAt: !362)
!366 = !DILocation(line: 91, column: 20, scope: !303, inlinedAt: !362)
!367 = !DILocation(line: 91, column: 13, scope: !303, inlinedAt: !362)
!368 = !DILocation(line: 93, column: 20, scope: !303, inlinedAt: !362)
!369 = !DILocation(line: 93, column: 34, scope: !303, inlinedAt: !362)
!370 = !DILocation(line: 93, column: 13, scope: !303, inlinedAt: !362)
!371 = !DILocation(line: 95, column: 20, scope: !303, inlinedAt: !362)
!372 = !DILocation(line: 95, column: 35, scope: !303, inlinedAt: !362)
!373 = !DILocation(line: 95, column: 13, scope: !303, inlinedAt: !362)
!374 = !DILocation(line: 97, column: 20, scope: !303, inlinedAt: !362)
!375 = !DILocation(line: 97, column: 35, scope: !303, inlinedAt: !362)
!376 = !DILocation(line: 97, column: 13, scope: !303, inlinedAt: !362)
!377 = !DILocation(line: 99, column: 20, scope: !303, inlinedAt: !362)
!378 = !DILocation(line: 99, column: 35, scope: !303, inlinedAt: !362)
!379 = !DILocation(line: 99, column: 13, scope: !303, inlinedAt: !362)
!380 = !DILocation(line: 0, scope: !303, inlinedAt: !362)
!381 = !DILocation(line: 102, column: 1, scope: !288, inlinedAt: !362)
!382 = !DILocation(line: 100, column: 31, scope: !187)
!383 = !DILocation(line: 100, column: 30, scope: !187)
!384 = !DILocation(line: 100, column: 46, scope: !187)
!385 = !DILocation(line: 100, column: 65, scope: !187)
!386 = !DILocation(line: 100, column: 18, scope: !187)
!387 = !DILocation(line: 65, column: 28, scope: !187)
!388 = !DILocation(line: 101, column: 47, scope: !187)
!389 = !DILocation(line: 101, column: 54, scope: !187)
!390 = !DILocation(line: 101, column: 38, scope: !187)
!391 = !DILocation(line: 101, column: 14, scope: !187)
!392 = !DILocation(line: 64, column: 11, scope: !187)
!393 = !DILocation(line: 102, column: 17, scope: !187)
!394 = !DILocation(line: 62, column: 19, scope: !187)
!395 = !DILocation(line: 103, column: 19, scope: !187)
!396 = !DILocation(line: 103, column: 5, scope: !187)
!397 = !DILocation(line: 104, column: 13, scope: !187)
!398 = !DILocation(line: 104, column: 29, scope: !187)
!399 = !DILocation(line: 104, column: 5, scope: !187)
!400 = !DILocation(line: 105, column: 23, scope: !187)
!401 = !DILocation(line: 105, column: 35, scope: !187)
!402 = !DILocation(line: 105, column: 5, scope: !187)
!403 = !DILocation(line: 106, column: 5, scope: !187)
!404 = !DILocation(line: 109, column: 9, scope: !187)
!405 = !DILocation(line: 64, column: 38, scope: !187)
!406 = !DILocation(line: 110, column: 11, scope: !407)
!407 = distinct !DILexicalBlock(scope: !187, file: !1, line: 110, column: 9)
!408 = !DILocation(line: 110, column: 9, scope: !187)
!409 = !DILocation(line: 112, column: 9, scope: !410)
!410 = distinct !DILexicalBlock(scope: !187, file: !1, line: 112, column: 9)
!411 = !DILocation(line: 0, scope: !412)
!412 = distinct !DILexicalBlock(scope: !413, file: !1, line: 119, column: 13)
!413 = distinct !DILexicalBlock(scope: !410, file: !1, line: 118, column: 12)
!414 = !DILocation(line: 112, column: 9, scope: !187)
!415 = !DILocation(line: 113, column: 21, scope: !416)
!416 = distinct !DILexicalBlock(scope: !417, file: !1, line: 113, column: 13)
!417 = distinct !DILexicalBlock(scope: !410, file: !1, line: 112, column: 19)
!418 = !DILocation(line: 113, column: 13, scope: !417)
!419 = !DILocation(line: 119, column: 21, scope: !412)
!420 = !DILocation(line: 119, column: 13, scope: !413)
!421 = !DILocation(line: 123, column: 9, scope: !413)
!422 = !DILocation(line: 125, column: 5, scope: !187)
!423 = !DILocation(line: 117, column: 49, scope: !417)
!424 = !DILocation(line: 117, column: 13, scope: !417)
!425 = !DILocation(line: 118, column: 5, scope: !417)
!426 = !DILocation(line: 126, column: 9, scope: !187)
!427 = !DILocation(line: 126, column: 19, scope: !428)
!428 = distinct !DILexicalBlock(scope: !187, file: !1, line: 126, column: 9)
!429 = !DILocation(line: 0, scope: !428)
!430 = !DILocation(line: 127, column: 5, scope: !187)
!431 = !DILocation(line: 130, column: 5, scope: !187)
!432 = !DILocation(line: 131, column: 9, scope: !187)
!433 = !DILocation(line: 131, column: 19, scope: !434)
!434 = distinct !DILexicalBlock(scope: !187, file: !1, line: 131, column: 9)
!435 = !DILocation(line: 0, scope: !275)
!436 = !DILocation(line: 0, scope: !264)
!437 = !DILocation(line: 133, column: 1, scope: !187)
!438 = distinct !DISubprogram(name: "sortCompare", scope: !1, file: !1, line: 138, type: !439, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !441)
!439 = !DISubroutineType(types: !440)
!440 = !{!41, !30, !30}
!441 = !{!442, !443, !444, !456, !457}
!442 = !DILocalVariable(name: "s1", arg: 1, scope: !438, file: !1, line: 138, type: !30)
!443 = !DILocalVariable(name: "s2", arg: 2, scope: !438, file: !1, line: 138, type: !30)
!444 = !DILocalVariable(name: "so1", scope: !438, file: !1, line: 139, type: !445)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisSortObject", file: !7, line: 1334, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_redisSortObject", file: !7, line: 1328, size: 128, elements: !449)
!449 = !{!450, !451}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !448, file: !7, line: 1329, baseType: !158, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !448, file: !7, line: 1333, baseType: !452, size: 64, offset: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !448, file: !7, line: 1330, size: 64, elements: !453)
!453 = !{!454, !455}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "score", scope: !452, file: !7, line: 1331, baseType: !70, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "cmpobj", scope: !452, file: !7, line: 1332, baseType: !158, size: 64)
!456 = !DILocalVariable(name: "so2", scope: !438, file: !1, line: 139, type: !445)
!457 = !DILocalVariable(name: "cmp", scope: !438, file: !1, line: 140, type: !41)
!458 = !DILocation(line: 138, column: 29, scope: !438)
!459 = !DILocation(line: 138, column: 45, scope: !438)
!460 = !DILocation(line: 139, column: 28, scope: !438)
!461 = !DILocation(line: 139, column: 39, scope: !438)
!462 = !DILocation(line: 142, column: 17, scope: !463)
!463 = distinct !DILexicalBlock(scope: !438, file: !1, line: 142, column: 9)
!464 = !{!465, !179, i64 2788}
!465 = !{!"redisServer", !179, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !179, i64 32, !179, i64 36, !179, i64 40, !182, i64 48, !182, i64 56, !182, i64 64, !182, i64 72, !179, i64 80, !179, i64 84, !179, i64 88, !179, i64 92, !182, i64 96, !182, i64 104, !179, i64 112, !179, i64 116, !180, i64 120, !179, i64 164, !320, i64 168, !179, i64 176, !182, i64 184, !182, i64 192, !182, i64 200, !180, i64 208, !179, i64 216, !179, i64 220, !180, i64 224, !179, i64 352, !182, i64 360, !179, i64 368, !180, i64 372, !179, i64 436, !179, i64 440, !180, i64 444, !179, i64 508, !182, i64 512, !182, i64 520, !182, i64 528, !182, i64 536, !182, i64 544, !182, i64 552, !182, i64 560, !179, i64 568, !466, i64 576, !180, i64 584, !182, i64 840, !320, i64 848, !179, i64 856, !179, i64 860, !320, i64 864, !320, i64 872, !320, i64 880, !320, i64 888, !182, i64 896, !182, i64 904, !182, i64 912, !182, i64 920, !182, i64 928, !182, i64 936, !182, i64 944, !182, i64 952, !182, i64 960, !182, i64 968, !182, i64 976, !182, i64 984, !182, i64 992, !320, i64 1000, !466, i64 1008, !466, i64 1016, !466, i64 1024, !467, i64 1032, !466, i64 1040, !466, i64 1048, !466, i64 1056, !466, i64 1064, !466, i64 1072, !466, i64 1080, !466, i64 1088, !466, i64 1096, !466, i64 1104, !320, i64 1112, !466, i64 1120, !467, i64 1128, !466, i64 1136, !466, i64 1144, !466, i64 1152, !466, i64 1160, !182, i64 1168, !466, i64 1176, !466, i64 1184, !320, i64 1192, !468, i64 1200, !466, i64 1240, !466, i64 1248, !320, i64 1256, !320, i64 1264, !180, i64 1272, !179, i64 1728, !179, i64 1732, !179, i64 1736, !179, i64 1740, !179, i64 1744, !320, i64 1752, !179, i64 1760, !179, i64 1764, !179, i64 1768, !179, i64 1772, !320, i64 1776, !320, i64 1784, !179, i64 1792, !179, i64 1796, !179, i64 1800, !179, i64 1804, !180, i64 1808, !179, i64 1880, !179, i64 1884, !182, i64 1888, !179, i64 1896, !179, i64 1900, !320, i64 1904, !320, i64 1912, !320, i64 1920, !320, i64 1928, !179, i64 1936, !179, i64 1940, !182, i64 1944, !182, i64 1952, !179, i64 1960, !179, i64 1964, !320, i64 1968, !320, i64 1976, !320, i64 1984, !320, i64 1992, !179, i64 2000, !320, i64 2008, !179, i64 2016, !179, i64 2020, !179, i64 2024, !179, i64 2028, !179, i64 2032, !179, i64 2036, !179, i64 2040, !179, i64 2044, !179, i64 2048, !179, i64 2052, !179, i64 2056, !179, i64 2060, !179, i64 2064, !182, i64 2072, !466, i64 2080, !466, i64 2088, !179, i64 2096, !182, i64 2104, !179, i64 2112, !182, i64 2120, !179, i64 2128, !179, i64 2132, !320, i64 2136, !320, i64 2144, !320, i64 2152, !320, i64 2160, !179, i64 2168, !179, i64 2172, !179, i64 2176, !179, i64 2180, !179, i64 2184, !179, i64 2188, !180, i64 2192, !469, i64 2200, !470, i64 2224, !182, i64 2240, !179, i64 2248, !182, i64 2256, !179, i64 2264, !180, i64 2268, !180, i64 2309, !466, i64 2352, !466, i64 2360, !179, i64 2368, !179, i64 2372, !182, i64 2376, !466, i64 2384, !466, i64 2392, !466, i64 2400, !466, i64 2408, !320, i64 2416, !320, i64 2424, !179, i64 2432, !179, i64 2436, !179, i64 2440, !179, i64 2444, !179, i64 2448, !182, i64 2456, !182, i64 2464, !179, i64 2472, !179, i64 2476, !182, i64 2480, !182, i64 2488, !179, i64 2496, !179, i64 2500, !320, i64 2504, !320, i64 2512, !320, i64 2520, !179, i64 2528, !179, i64 2532, !182, i64 2536, !320, i64 2544, !179, i64 2552, !179, i64 2556, !179, i64 2560, !320, i64 2568, !179, i64 2576, !179, i64 2580, !179, i64 2584, !182, i64 2592, !180, i64 2600, !466, i64 2648, !179, i64 2656, !182, i64 2664, !182, i64 2672, !179, i64 2680, !182, i64 2688, !179, i64 2696, !179, i64 2700, !466, i64 2704, !179, i64 2712, !179, i64 2716, !179, i64 2720, !179, i64 2724, !466, i64 2728, !179, i64 2736, !180, i64 2740, !182, i64 2768, !182, i64 2776, !179, i64 2784, !179, i64 2788, !179, i64 2792, !179, i64 2796, !320, i64 2800, !320, i64 2808, !320, i64 2816, !320, i64 2824, !320, i64 2832, !320, i64 2840, !320, i64 2848, !320, i64 2856, !179, i64 2864, !179, i64 2868, !320, i64 2872, !320, i64 2880, !179, i64 2888, !466, i64 2896, !182, i64 2904, !182, i64 2912, !179, i64 2920, !179, i64 2924, !466, i64 2928, !182, i64 2936, !182, i64 2944, !179, i64 2952, !179, i64 2956, !179, i64 2960, !179, i64 2964, !182, i64 2968, !179, i64 2976, !179, i64 2980, !179, i64 2984, !182, i64 2992, !182, i64 3000, !182, i64 3008, !182, i64 3016, !466, i64 3024, !466, i64 3032, !466, i64 3040, !179, i64 3048, !179, i64 3052, !179, i64 3056, !179, i64 3060, !179, i64 3064, !179, i64 3068, !179, i64 3072, !179, i64 3076, !179, i64 3080, !179, i64 3084, !179, i64 3088, !466, i64 3096, !182, i64 3104, !182, i64 3112, !182, i64 3120, !179, i64 3128, !179, i64 3132, !179, i64 3136, !320, i64 3144, !182, i64 3152, !182, i64 3160, !182, i64 3168}
!466 = !{!"long long", !180, i64 0}
!467 = !{!"double", !180, i64 0}
!468 = !{!"malloc_stats", !320, i64 0, !320, i64 8, !320, i64 16, !320, i64 24, !320, i64 32}
!469 = !{!"", !179, i64 0, !320, i64 8, !466, i64 16}
!470 = !{!"redisOpArray", !182, i64 0, !179, i64 8}
!471 = !DILocation(line: 142, column: 10, scope: !463)
!472 = !DILocation(line: 142, column: 9, scope: !438)
!473 = !DILocation(line: 144, column: 18, scope: !474)
!474 = distinct !DILexicalBlock(scope: !475, file: !1, line: 144, column: 13)
!475 = distinct !DILexicalBlock(scope: !463, file: !1, line: 142, column: 29)
!476 = !DILocation(line: 144, column: 20, scope: !474)
!477 = !DILocation(line: 144, column: 33, scope: !474)
!478 = !DILocation(line: 144, column: 35, scope: !474)
!479 = !DILocation(line: 144, column: 26, scope: !474)
!480 = !DILocation(line: 144, column: 13, scope: !475)
!481 = !DILocation(line: 140, column: 9, scope: !438)
!482 = !DILocation(line: 146, column: 9, scope: !483)
!483 = distinct !DILexicalBlock(scope: !474, file: !1, line: 144, column: 42)
!484 = !DILocation(line: 146, column: 33, scope: !485)
!485 = distinct !DILexicalBlock(scope: !474, file: !1, line: 146, column: 20)
!486 = !DILocation(line: 146, column: 20, scope: !474)
!487 = !DILocation(line: 148, column: 9, scope: !488)
!488 = distinct !DILexicalBlock(scope: !485, file: !1, line: 146, column: 49)
!489 = !DILocation(line: 152, column: 45, scope: !490)
!490 = distinct !DILexicalBlock(scope: !485, file: !1, line: 148, column: 16)
!491 = !{!492, !182, i64 0}
!492 = !{!"_redisSortObject", !182, i64 0, !180, i64 8}
!493 = !DILocation(line: 152, column: 54, scope: !490)
!494 = !DILocation(line: 152, column: 19, scope: !490)
!495 = !DILocation(line: 156, column: 20, scope: !496)
!496 = distinct !DILexicalBlock(scope: !497, file: !1, line: 156, column: 13)
!497 = distinct !DILexicalBlock(scope: !463, file: !1, line: 154, column: 12)
!498 = !{!465, !179, i64 2792}
!499 = !DILocation(line: 156, column: 13, scope: !496)
!500 = !DILocation(line: 156, column: 13, scope: !497)
!501 = !DILocation(line: 157, column: 23, scope: !502)
!502 = distinct !DILexicalBlock(scope: !503, file: !1, line: 157, column: 17)
!503 = distinct !DILexicalBlock(scope: !496, file: !1, line: 156, column: 36)
!504 = !DILocation(line: 157, column: 25, scope: !502)
!505 = !DILocation(line: 157, column: 18, scope: !502)
!506 = !DILocation(line: 157, column: 32, scope: !502)
!507 = !DILocation(line: 0, scope: !502)
!508 = !DILocation(line: 157, column: 36, scope: !502)
!509 = !DILocation(line: 157, column: 17, scope: !503)
!510 = !DILocation(line: 159, column: 21, scope: !511)
!511 = distinct !DILexicalBlock(scope: !502, file: !1, line: 157, column: 51)
!512 = !DILocation(line: 0, scope: !513)
!513 = distinct !DILexicalBlock(scope: !511, file: !1, line: 159, column: 21)
!514 = !DILocation(line: 159, column: 35, scope: !513)
!515 = !DILocation(line: 162, column: 21, scope: !516)
!516 = distinct !DILexicalBlock(scope: !513, file: !1, line: 161, column: 26)
!517 = !DILocation(line: 167, column: 28, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !1, line: 167, column: 21)
!519 = distinct !DILexicalBlock(scope: !502, file: !1, line: 165, column: 20)
!520 = !{!465, !179, i64 2796}
!521 = !DILocation(line: 167, column: 21, scope: !518)
!522 = !DILocation(line: 167, column: 21, scope: !519)
!523 = !DILocation(line: 168, column: 27, scope: !524)
!524 = distinct !DILexicalBlock(scope: !518, file: !1, line: 167, column: 40)
!525 = !DILocation(line: 169, column: 17, scope: !524)
!526 = !DILocation(line: 172, column: 50, scope: !527)
!527 = distinct !DILexicalBlock(scope: !518, file: !1, line: 169, column: 24)
!528 = !DILocation(line: 172, column: 69, scope: !527)
!529 = !DILocation(line: 172, column: 27, scope: !527)
!530 = !DILocation(line: 177, column: 24, scope: !531)
!531 = distinct !DILexicalBlock(scope: !532, file: !1, line: 177, column: 17)
!532 = distinct !DILexicalBlock(scope: !496, file: !1, line: 175, column: 16)
!533 = !DILocation(line: 177, column: 17, scope: !531)
!534 = !DILocation(line: 0, scope: !535)
!535 = distinct !DILexicalBlock(scope: !531, file: !1, line: 179, column: 20)
!536 = !DILocation(line: 177, column: 17, scope: !532)
!537 = !DILocation(line: 178, column: 23, scope: !538)
!538 = distinct !DILexicalBlock(scope: !531, file: !1, line: 177, column: 36)
!539 = !DILocation(line: 179, column: 13, scope: !538)
!540 = !DILocation(line: 180, column: 23, scope: !535)
!541 = !DILocation(line: 0, scope: !490)
!542 = !DILocation(line: 184, column: 19, scope: !438)
!543 = !{!465, !179, i64 2784}
!544 = !DILocation(line: 184, column: 12, scope: !438)
!545 = !DILocation(line: 184, column: 31, scope: !438)
!546 = !DILocation(line: 184, column: 5, scope: !438)
!547 = distinct !DISubprogram(name: "sortCommand", scope: !1, file: !1, line: 189, type: !548, isLocal: false, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !676)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !550}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !7, line: 780, baseType: !552)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !7, line: 723, size: 135360, elements: !553)
!553 = !{!554, !555, !556, !557, !558, !559, !564, !565, !566, !567, !569, !591, !592, !593, !594, !595, !596, !598, !599, !602, !603, !604, !605, !606, !607, !608, !609, !614, !615, !616, !617, !618, !619, !620, !621, !625, !626, !630, !631, !647, !648, !665, !666, !667, !668, !669, !670, !671, !672}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !552, file: !7, line: 724, baseType: !25, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !552, file: !7, line: 725, baseType: !41, size: 32, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !552, file: !7, line: 726, baseType: !190, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !552, file: !7, line: 727, baseType: !158, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !552, file: !7, line: 728, baseType: !90, size: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !552, file: !7, line: 729, baseType: !560, size: 64, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !561, line: 40, baseType: !562)
!561 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !563, line: 129, baseType: !29)
!563 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!564 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !552, file: !7, line: 730, baseType: !90, size: 64, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !552, file: !7, line: 734, baseType: !560, size: 64, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !552, file: !7, line: 735, baseType: !41, size: 32, offset: 512)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !552, file: !7, line: 736, baseType: !568, size: 64, offset: 576)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !552, file: !7, line: 737, baseType: !570, size: 64, offset: 640)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !7, line: 1307, size: 640, elements: !572)
!572 = !{!573, !574, !577, !578, !579, !580, !586, !587, !588, !589, !590}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !571, file: !7, line: 1308, baseType: !92, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !571, file: !7, line: 1309, baseType: !575, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !7, line: 1305, baseType: !548)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !571, file: !7, line: 1310, baseType: !41, size: 32, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !571, file: !7, line: 1311, baseType: !92, size: 64, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !571, file: !7, line: 1312, baseType: !41, size: 32, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !571, file: !7, line: 1315, baseType: !581, size: 64, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !7, line: 1306, baseType: !583)
!583 = !DISubroutineType(types: !584)
!584 = !{!585, !570, !568, !41, !585}
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !571, file: !7, line: 1317, baseType: !41, size: 32, offset: 384)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !571, file: !7, line: 1318, baseType: !41, size: 32, offset: 416)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !571, file: !7, line: 1319, baseType: !41, size: 32, offset: 448)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !571, file: !7, line: 1320, baseType: !201, size: 64, offset: 512)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !571, file: !7, line: 1320, baseType: !201, size: 64, offset: 576)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !552, file: !7, line: 737, baseType: !570, size: 64, offset: 704)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !552, file: !7, line: 738, baseType: !41, size: 32, offset: 768)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !552, file: !7, line: 739, baseType: !41, size: 32, offset: 800)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !552, file: !7, line: 740, baseType: !68, size: 64, offset: 832)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !552, file: !7, line: 741, baseType: !203, size: 64, offset: 896)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !552, file: !7, line: 742, baseType: !597, size: 64, offset: 960)
!597 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !552, file: !7, line: 743, baseType: !560, size: 64, offset: 1024)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !552, file: !7, line: 745, baseType: !600, size: 64, offset: 1088)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !601, line: 34, baseType: !68)
!601 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!602 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !552, file: !7, line: 746, baseType: !600, size: 64, offset: 1152)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !552, file: !7, line: 747, baseType: !600, size: 64, offset: 1216)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !552, file: !7, line: 748, baseType: !41, size: 32, offset: 1280)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !552, file: !7, line: 749, baseType: !41, size: 32, offset: 1312)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !552, file: !7, line: 750, baseType: !41, size: 32, offset: 1344)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !552, file: !7, line: 751, baseType: !41, size: 32, offset: 1376)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !552, file: !7, line: 752, baseType: !41, size: 32, offset: 1408)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !552, file: !7, line: 753, baseType: !610, size: 64, offset: 1472)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !611, line: 173, baseType: !612)
!611 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !563, line: 100, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !563, line: 44, baseType: !68)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !552, file: !7, line: 754, baseType: !610, size: 64, offset: 1536)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !552, file: !7, line: 755, baseType: !90, size: 64, offset: 1600)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !552, file: !7, line: 756, baseType: !201, size: 64, offset: 1664)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !552, file: !7, line: 757, baseType: !201, size: 64, offset: 1728)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !552, file: !7, line: 758, baseType: !201, size: 64, offset: 1792)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !552, file: !7, line: 759, baseType: !201, size: 64, offset: 1856)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !552, file: !7, line: 760, baseType: !201, size: 64, offset: 1920)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !552, file: !7, line: 763, baseType: !622, size: 328, offset: 1984)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 328, elements: !623)
!623 = !{!624}
!624 = !DISubrange(count: 41)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !552, file: !7, line: 764, baseType: !41, size: 32, offset: 2336)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !552, file: !7, line: 765, baseType: !627, size: 368, offset: 2368)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 368, elements: !628)
!628 = !{!629}
!629 = !DISubrange(count: 46)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !552, file: !7, line: 766, baseType: !41, size: 32, offset: 2752)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !552, file: !7, line: 767, baseType: !632, size: 256, offset: 2816)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !7, line: 673, baseType: !633)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !7, line: 665, size: 256, elements: !634)
!634 = !{!635, !643, !644, !645, !646}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !633, file: !7, line: 666, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !7, line: 663, baseType: !638)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !7, line: 659, size: 192, elements: !639)
!639 = !{!640, !641, !642}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !638, file: !7, line: 660, baseType: !568, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !638, file: !7, line: 661, baseType: !41, size: 32, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !638, file: !7, line: 662, baseType: !570, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !633, file: !7, line: 667, baseType: !41, size: 32, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !633, file: !7, line: 668, baseType: !41, size: 32, offset: 96)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !633, file: !7, line: 671, baseType: !41, size: 32, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !633, file: !7, line: 672, baseType: !600, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !552, file: !7, line: 768, baseType: !41, size: 32, offset: 3072)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !552, file: !7, line: 769, baseType: !649, size: 704, offset: 3136)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !7, line: 703, baseType: !650)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !7, line: 677, size: 704, elements: !651)
!651 = !{!652, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !650, file: !7, line: 679, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !7, line: 52, baseType: !201)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !650, file: !7, line: 683, baseType: !11, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !650, file: !7, line: 685, baseType: !158, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !650, file: !7, line: 689, baseType: !560, size: 64, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !650, file: !7, line: 690, baseType: !158, size: 64, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !650, file: !7, line: 691, baseType: !158, size: 64, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !650, file: !7, line: 692, baseType: !653, size: 64, offset: 384)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !650, file: !7, line: 692, baseType: !653, size: 64, offset: 448)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !650, file: !7, line: 693, baseType: !41, size: 32, offset: 512)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !650, file: !7, line: 696, baseType: !41, size: 32, offset: 544)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !650, file: !7, line: 697, baseType: !201, size: 64, offset: 576)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !650, file: !7, line: 700, baseType: !4, size: 64, offset: 640)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !552, file: !7, line: 770, baseType: !201, size: 64, offset: 3840)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !552, file: !7, line: 771, baseType: !203, size: 64, offset: 3904)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !552, file: !7, line: 772, baseType: !11, size: 64, offset: 3968)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !552, file: !7, line: 773, baseType: !203, size: 64, offset: 4032)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !552, file: !7, line: 774, baseType: !90, size: 64, offset: 4096)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !552, file: !7, line: 775, baseType: !209, size: 64, offset: 4160)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !552, file: !7, line: 778, baseType: !41, size: 32, offset: 4224)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !552, file: !7, line: 779, baseType: !673, size: 131072, offset: 4256)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 131072, elements: !674)
!674 = !{!675}
!675 = !DISubrange(count: 16384)
!676 = !{!677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !697, !699, !749, !765, !768, !769, !791, !792, !795, !796, !799, !800, !801, !804, !807, !808, !809, !810, !816, !821, !828, !834, !836, !837, !839, !843, !844, !848}
!677 = !DILocalVariable(name: "c", arg: 1, scope: !547, file: !1, line: 189, type: !550)
!678 = !DILocalVariable(name: "operations", scope: !547, file: !1, line: 190, type: !203)
!679 = !DILocalVariable(name: "outputlen", scope: !547, file: !1, line: 191, type: !134)
!680 = !DILocalVariable(name: "desc", scope: !547, file: !1, line: 192, type: !41)
!681 = !DILocalVariable(name: "alpha", scope: !547, file: !1, line: 192, type: !41)
!682 = !DILocalVariable(name: "limit_start", scope: !547, file: !1, line: 193, type: !68)
!683 = !DILocalVariable(name: "limit_count", scope: !547, file: !1, line: 193, type: !68)
!684 = !DILocalVariable(name: "start", scope: !547, file: !1, line: 193, type: !68)
!685 = !DILocalVariable(name: "end", scope: !547, file: !1, line: 193, type: !68)
!686 = !DILocalVariable(name: "j", scope: !547, file: !1, line: 194, type: !41)
!687 = !DILocalVariable(name: "dontsort", scope: !547, file: !1, line: 194, type: !41)
!688 = !DILocalVariable(name: "vectorlen", scope: !547, file: !1, line: 194, type: !41)
!689 = !DILocalVariable(name: "getop", scope: !547, file: !1, line: 195, type: !41)
!690 = !DILocalVariable(name: "int_conversion_error", scope: !547, file: !1, line: 196, type: !41)
!691 = !DILocalVariable(name: "syntax_error", scope: !547, file: !1, line: 197, type: !41)
!692 = !DILocalVariable(name: "sortval", scope: !547, file: !1, line: 198, type: !158)
!693 = !DILocalVariable(name: "sortby", scope: !547, file: !1, line: 198, type: !158)
!694 = !DILocalVariable(name: "storekey", scope: !547, file: !1, line: 198, type: !158)
!695 = !DILocalVariable(name: "vector", scope: !547, file: !1, line: 199, type: !696)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!697 = !DILocalVariable(name: "leftargs", scope: !698, file: !1, line: 227, type: !41)
!698 = distinct !DILexicalBlock(scope: !547, file: !1, line: 226, column: 24)
!699 = !DILocalVariable(name: "li", scope: !700, file: !1, line: 354, type: !704)
!700 = distinct !DILexicalBlock(scope: !701, file: !1, line: 353, column: 27)
!701 = distinct !DILexicalBlock(scope: !702, file: !1, line: 353, column: 13)
!702 = distinct !DILexicalBlock(scope: !703, file: !1, line: 346, column: 48)
!703 = distinct !DILexicalBlock(scope: !547, file: !1, line: 346, column: 9)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "listTypeIterator", file: !7, line: 1347, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 1342, size: 192, elements: !707)
!707 = !{!708, !709, !710, !711}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !706, file: !7, line: 1343, baseType: !158, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !706, file: !7, line: 1344, baseType: !113, size: 8, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !706, file: !7, line: 1345, baseType: !113, size: 8, offset: 72)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !706, file: !7, line: 1346, baseType: !712, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistIter", file: !714, line: 88, baseType: !715)
!714 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/quicklist.h", directory: "/root/.unikraft/apps/redis/build")
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistIter", file: !714, line: 82, size: 320, elements: !716)
!716 = !{!717, !745, !746, !747, !748}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !715, file: !714, line: 83, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklist", file: !714, line: 80, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklist", file: !714, line: 73, size: 320, elements: !722)
!722 = !{!723, !740, !741, !742, !743, !744}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !721, file: !714, line: 74, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistNode", file: !714, line: 55, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistNode", file: !714, line: 44, size: 256, elements: !727)
!727 = !{!728, !730, !731, !733, !734, !735, !736, !737, !738, !739}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !726, file: !714, line: 45, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !726, file: !714, line: 46, baseType: !729, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "zl", scope: !726, file: !714, line: 47, baseType: !732, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !726, file: !714, line: 48, baseType: !134, size: 32, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !726, file: !714, line: 49, baseType: !134, size: 16, offset: 224, flags: DIFlagBitField, extraData: i64 224)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !726, file: !714, line: 50, baseType: !134, size: 2, offset: 240, flags: DIFlagBitField, extraData: i64 224)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !726, file: !714, line: 51, baseType: !134, size: 2, offset: 242, flags: DIFlagBitField, extraData: i64 224)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "recompress", scope: !726, file: !714, line: 52, baseType: !134, size: 1, offset: 244, flags: DIFlagBitField, extraData: i64 224)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "attempted_compress", scope: !726, file: !714, line: 53, baseType: !134, size: 1, offset: 245, flags: DIFlagBitField, extraData: i64 224)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !726, file: !714, line: 54, baseType: !134, size: 10, offset: 246, flags: DIFlagBitField, extraData: i64 224)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !721, file: !714, line: 75, baseType: !724, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !721, file: !714, line: 76, baseType: !29, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !721, file: !714, line: 77, baseType: !29, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !721, file: !714, line: 78, baseType: !41, size: 16, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !721, file: !714, line: 79, baseType: !134, size: 16, offset: 272, flags: DIFlagBitField, extraData: i64 256)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !715, file: !714, line: 84, baseType: !724, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !715, file: !714, line: 85, baseType: !732, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !715, file: !714, line: 86, baseType: !68, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !715, file: !714, line: 87, baseType: !41, size: 32, offset: 256)
!749 = !DILocalVariable(name: "entry", scope: !700, file: !1, line: 355, type: !750)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "listTypeEntry", file: !7, line: 1353, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 1350, size: 448, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "li", scope: !751, file: !7, line: 1351, baseType: !704, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !751, file: !7, line: 1352, baseType: !755, size: 384, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistEntry", file: !714, line: 98, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistEntry", file: !714, line: 90, size: 384, elements: !757)
!757 = !{!758, !759, !760, !761, !762, !763, !764}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !756, file: !714, line: 91, baseType: !718, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !756, file: !714, line: 92, baseType: !724, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !756, file: !714, line: 93, baseType: !732, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !756, file: !714, line: 94, baseType: !732, size: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "longval", scope: !756, file: !714, line: 95, baseType: !201, size: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !756, file: !714, line: 96, baseType: !134, size: 32, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !756, file: !714, line: 97, baseType: !41, size: 32, offset: 352)
!765 = !DILocalVariable(name: "li", scope: !766, file: !1, line: 372, type: !704)
!766 = distinct !DILexicalBlock(scope: !767, file: !1, line: 371, column: 43)
!767 = distinct !DILexicalBlock(scope: !703, file: !1, line: 371, column: 16)
!768 = !DILocalVariable(name: "entry", scope: !766, file: !1, line: 373, type: !750)
!769 = !DILocalVariable(name: "si", scope: !770, file: !1, line: 382, type: !772)
!770 = distinct !DILexicalBlock(scope: !771, file: !1, line: 381, column: 42)
!771 = distinct !DILexicalBlock(scope: !767, file: !1, line: 381, column: 16)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "setTypeIterator", file: !7, line: 1361, baseType: !774)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 1356, size: 192, elements: !775)
!775 = !{!776, !777, !778, !779}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !774, file: !7, line: 1357, baseType: !158, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !774, file: !7, line: 1358, baseType: !41, size: 32, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ii", scope: !774, file: !7, line: 1359, baseType: !41, size: 32, offset: 96)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !774, file: !7, line: 1360, baseType: !780, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !13, line: 95, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !13, line: 88, size: 384, elements: !783)
!783 = !{!784, !785, !786, !787, !788, !789, !790}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !782, file: !13, line: 89, baseType: !11, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !782, file: !13, line: 90, baseType: !68, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !782, file: !13, line: 91, baseType: !41, size: 32, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !782, file: !13, line: 91, baseType: !41, size: 32, offset: 160)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !782, file: !13, line: 92, baseType: !55, size: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !782, file: !13, line: 92, baseType: !55, size: 64, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !782, file: !13, line: 94, baseType: !201, size: 64, offset: 320)
!791 = !DILocalVariable(name: "sdsele", scope: !770, file: !1, line: 383, type: !90)
!792 = !DILocalVariable(name: "zs", scope: !793, file: !1, line: 399, type: !5)
!793 = distinct !DILexicalBlock(scope: !794, file: !1, line: 391, column: 55)
!794 = distinct !DILexicalBlock(scope: !771, file: !1, line: 391, column: 16)
!795 = !DILocalVariable(name: "zsl", scope: !793, file: !1, line: 400, type: !81)
!796 = !DILocalVariable(name: "ln", scope: !793, file: !1, line: 401, type: !797)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "zskiplistNode", file: !7, line: 818, baseType: !87)
!799 = !DILocalVariable(name: "sdsele", scope: !793, file: !1, line: 402, type: !90)
!800 = !DILocalVariable(name: "rangelen", scope: !793, file: !1, line: 403, type: !41)
!801 = !DILocalVariable(name: "zsetlen", scope: !802, file: !1, line: 407, type: !68)
!802 = distinct !DILexicalBlock(scope: !803, file: !1, line: 406, column: 19)
!803 = distinct !DILexicalBlock(scope: !793, file: !1, line: 406, column: 13)
!804 = !DILocalVariable(name: "set", scope: !805, file: !1, line: 431, type: !11)
!805 = distinct !DILexicalBlock(scope: !806, file: !1, line: 430, column: 43)
!806 = distinct !DILexicalBlock(scope: !794, file: !1, line: 430, column: 16)
!807 = !DILocalVariable(name: "di", scope: !805, file: !1, line: 432, type: !780)
!808 = !DILocalVariable(name: "setele", scope: !805, file: !1, line: 433, type: !55)
!809 = !DILocalVariable(name: "sdsele", scope: !805, file: !1, line: 434, type: !90)
!810 = !DILocalVariable(name: "byval", scope: !811, file: !1, line: 452, type: !158)
!811 = distinct !DILexicalBlock(scope: !812, file: !1, line: 451, column: 41)
!812 = distinct !DILexicalBlock(scope: !813, file: !1, line: 451, column: 9)
!813 = distinct !DILexicalBlock(scope: !814, file: !1, line: 451, column: 9)
!814 = distinct !DILexicalBlock(scope: !815, file: !1, line: 450, column: 20)
!815 = distinct !DILexicalBlock(scope: !547, file: !1, line: 450, column: 9)
!816 = !DILocalVariable(name: "eptr", scope: !817, file: !1, line: 466, type: !92)
!817 = distinct !DILexicalBlock(scope: !818, file: !1, line: 465, column: 46)
!818 = distinct !DILexicalBlock(scope: !819, file: !1, line: 465, column: 21)
!819 = distinct !DILexicalBlock(scope: !820, file: !1, line: 464, column: 20)
!820 = distinct !DILexicalBlock(scope: !811, file: !1, line: 462, column: 17)
!821 = !DILocalVariable(name: "ln", scope: !822, file: !1, line: 510, type: !209)
!822 = distinct !DILexicalBlock(scope: !823, file: !1, line: 509, column: 40)
!823 = distinct !DILexicalBlock(scope: !824, file: !1, line: 509, column: 9)
!824 = distinct !DILexicalBlock(scope: !825, file: !1, line: 509, column: 9)
!825 = distinct !DILexicalBlock(scope: !826, file: !1, line: 506, column: 34)
!826 = distinct !DILexicalBlock(scope: !827, file: !1, line: 506, column: 16)
!827 = distinct !DILexicalBlock(scope: !547, file: !1, line: 504, column: 9)
!828 = !DILocalVariable(name: "li", scope: !822, file: !1, line: 511, type: !829)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !205, line: 45, baseType: !830)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !205, line: 42, size: 128, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !830, file: !205, line: 43, baseType: !209, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !830, file: !205, line: 44, baseType: !41, size: 32, offset: 64)
!834 = !DILocalVariable(name: "sop", scope: !835, file: !1, line: 516, type: !152)
!835 = distinct !DILexicalBlock(scope: !822, file: !1, line: 515, column: 41)
!836 = !DILocalVariable(name: "val", scope: !835, file: !1, line: 517, type: !158)
!837 = !DILocalVariable(name: "sobj", scope: !838, file: !1, line: 534, type: !158)
!838 = distinct !DILexicalBlock(scope: !826, file: !1, line: 533, column: 12)
!839 = !DILocalVariable(name: "ln", scope: !840, file: !1, line: 538, type: !209)
!840 = distinct !DILexicalBlock(scope: !841, file: !1, line: 537, column: 40)
!841 = distinct !DILexicalBlock(scope: !842, file: !1, line: 537, column: 9)
!842 = distinct !DILexicalBlock(scope: !838, file: !1, line: 537, column: 9)
!843 = !DILocalVariable(name: "li", scope: !840, file: !1, line: 539, type: !829)
!844 = !DILocalVariable(name: "sop", scope: !845, file: !1, line: 546, type: !152)
!845 = distinct !DILexicalBlock(scope: !846, file: !1, line: 545, column: 45)
!846 = distinct !DILexicalBlock(scope: !847, file: !1, line: 543, column: 20)
!847 = distinct !DILexicalBlock(scope: !840, file: !1, line: 541, column: 17)
!848 = !DILocalVariable(name: "val", scope: !845, file: !1, line: 547, type: !158)
!849 = !DILocation(line: 189, column: 26, scope: !547)
!850 = !DILocation(line: 191, column: 18, scope: !547)
!851 = !DILocation(line: 192, column: 9, scope: !547)
!852 = !DILocation(line: 192, column: 19, scope: !547)
!853 = !DILocation(line: 193, column: 5, scope: !547)
!854 = !DILocation(line: 193, column: 10, scope: !547)
!855 = !DILocation(line: 193, column: 27, scope: !547)
!856 = !DILocation(line: 194, column: 12, scope: !547)
!857 = !DILocation(line: 195, column: 9, scope: !547)
!858 = !DILocation(line: 196, column: 9, scope: !547)
!859 = !DILocation(line: 197, column: 9, scope: !547)
!860 = !DILocation(line: 198, column: 21, scope: !547)
!861 = !DILocation(line: 198, column: 37, scope: !547)
!862 = !DILocation(line: 202, column: 32, scope: !547)
!863 = !{!864, !182, i64 16}
!864 = !{!"client", !320, i64 0, !179, i64 8, !182, i64 16, !182, i64 24, !182, i64 32, !320, i64 40, !182, i64 48, !320, i64 56, !179, i64 64, !182, i64 72, !182, i64 80, !182, i64 88, !179, i64 96, !179, i64 100, !320, i64 104, !182, i64 112, !466, i64 120, !320, i64 128, !320, i64 136, !320, i64 144, !320, i64 152, !179, i64 160, !179, i64 164, !179, i64 168, !179, i64 172, !179, i64 176, !320, i64 184, !320, i64 192, !182, i64 200, !466, i64 208, !466, i64 216, !466, i64 224, !466, i64 232, !466, i64 240, !180, i64 248, !179, i64 292, !180, i64 296, !179, i64 344, !865, i64 352, !179, i64 384, !866, i64 392, !466, i64 480, !182, i64 488, !182, i64 496, !182, i64 504, !182, i64 512, !182, i64 520, !179, i64 528, !180, i64 532}
!865 = !{!"multiState", !182, i64 0, !179, i64 8, !179, i64 12, !179, i64 16, !320, i64 24}
!866 = !{!"blockingState", !466, i64 0, !182, i64 8, !182, i64 16, !320, i64 24, !182, i64 32, !182, i64 40, !466, i64 48, !466, i64 56, !179, i64 64, !179, i64 68, !466, i64 72, !182, i64 80}
!867 = !DILocation(line: 202, column: 38, scope: !547)
!868 = !{!864, !182, i64 72}
!869 = !DILocation(line: 202, column: 35, scope: !547)
!870 = !{!182, !182, i64 0}
!871 = !DILocation(line: 202, column: 15, scope: !547)
!872 = !DILocation(line: 198, column: 11, scope: !547)
!873 = !DILocation(line: 203, column: 9, scope: !874)
!874 = distinct !DILexicalBlock(scope: !547, file: !1, line: 203, column: 9)
!875 = !DILocation(line: 203, column: 17, scope: !874)
!876 = !DILocation(line: 203, column: 29, scope: !874)
!877 = !DILocation(line: 203, column: 34, scope: !874)
!878 = !DILocation(line: 203, column: 45, scope: !874)
!879 = !DILocation(line: 204, column: 34, scope: !874)
!880 = !DILocation(line: 204, column: 46, scope: !874)
!881 = !DILocation(line: 205, column: 34, scope: !874)
!882 = !DILocation(line: 203, column: 9, scope: !547)
!883 = !DILocation(line: 207, column: 27, scope: !884)
!884 = distinct !DILexicalBlock(scope: !874, file: !1, line: 206, column: 5)
!885 = !{!886, !182, i64 112}
!886 = !{!"sharedObjectsStruct", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !182, i64 32, !182, i64 40, !182, i64 48, !182, i64 56, !182, i64 64, !182, i64 72, !182, i64 80, !182, i64 88, !182, i64 96, !182, i64 104, !182, i64 112, !182, i64 120, !182, i64 128, !182, i64 136, !182, i64 144, !182, i64 152, !182, i64 160, !182, i64 168, !182, i64 176, !182, i64 184, !182, i64 192, !182, i64 200, !182, i64 208, !182, i64 216, !182, i64 224, !182, i64 232, !182, i64 240, !182, i64 248, !182, i64 256, !182, i64 264, !182, i64 272, !182, i64 280, !182, i64 288, !182, i64 296, !182, i64 304, !182, i64 312, !182, i64 320, !182, i64 328, !182, i64 336, !182, i64 344, !182, i64 352, !182, i64 360, !180, i64 368, !180, i64 448, !180, i64 80448, !180, i64 80704, !182, i64 80960, !182, i64 80968}
!887 = !DILocation(line: 207, column: 9, scope: !884)
!888 = !DILocation(line: 208, column: 9, scope: !884)
!889 = !DILocation(line: 213, column: 18, scope: !547)
!890 = !DILocation(line: 190, column: 11, scope: !547)
!891 = !DILocation(line: 214, column: 5, scope: !547)
!892 = !{!893, !182, i64 24}
!893 = !{!"list", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !182, i64 32, !320, i64 40}
!894 = !DILocation(line: 194, column: 9, scope: !547)
!895 = !DILocation(line: 220, column: 9, scope: !547)
!896 = !DILocation(line: 221, column: 9, scope: !897)
!897 = distinct !DILexicalBlock(scope: !547, file: !1, line: 220, column: 9)
!898 = !DILocation(line: 223, column: 19, scope: !897)
!899 = !DILocation(line: 0, scope: !897)
!900 = !DILocation(line: 226, column: 5, scope: !547)
!901 = !DILocation(line: 226, column: 18, scope: !547)
!902 = !{!864, !179, i64 64}
!903 = !DILocation(line: 226, column: 13, scope: !547)
!904 = !DILocation(line: 282, column: 9, scope: !547)
!905 = !DILocation(line: 294, column: 18, scope: !906)
!906 = distinct !DILexicalBlock(scope: !547, file: !1, line: 294, column: 9)
!907 = !DILocation(line: 227, column: 33, scope: !698)
!908 = !DILocation(line: 227, column: 13, scope: !698)
!909 = !DILocation(line: 228, column: 28, scope: !910)
!910 = distinct !DILexicalBlock(scope: !698, file: !1, line: 228, column: 13)
!911 = !DILocation(line: 228, column: 25, scope: !910)
!912 = !DILocation(line: 228, column: 37, scope: !910)
!913 = !DILocation(line: 228, column: 14, scope: !910)
!914 = !DILocation(line: 228, column: 13, scope: !698)
!915 = !DILocation(line: 230, column: 21, scope: !916)
!916 = distinct !DILexicalBlock(scope: !910, file: !1, line: 230, column: 20)
!917 = !DILocation(line: 230, column: 20, scope: !910)
!918 = !DILocation(line: 232, column: 21, scope: !919)
!919 = distinct !DILexicalBlock(scope: !916, file: !1, line: 232, column: 20)
!920 = !DILocation(line: 232, column: 20, scope: !916)
!921 = !DILocation(line: 234, column: 21, scope: !922)
!922 = distinct !DILexicalBlock(scope: !919, file: !1, line: 234, column: 20)
!923 = !DILocation(line: 234, column: 69, scope: !922)
!924 = !DILocation(line: 234, column: 57, scope: !922)
!925 = !DILocation(line: 235, column: 55, scope: !926)
!926 = distinct !DILexicalBlock(scope: !927, file: !1, line: 235, column: 17)
!927 = distinct !DILexicalBlock(scope: !922, file: !1, line: 234, column: 75)
!928 = !DILocation(line: 235, column: 46, scope: !926)
!929 = !DILocation(line: 235, column: 18, scope: !926)
!930 = !DILocation(line: 236, column: 18, scope: !926)
!931 = !DILocation(line: 236, column: 27, scope: !926)
!932 = !DILocation(line: 237, column: 49, scope: !926)
!933 = !DILocation(line: 237, column: 55, scope: !926)
!934 = !DILocation(line: 237, column: 46, scope: !926)
!935 = !DILocation(line: 237, column: 18, scope: !926)
!936 = !DILocation(line: 238, column: 18, scope: !926)
!937 = !DILocation(line: 235, column: 17, scope: !927)
!938 = !DILocation(line: 244, column: 21, scope: !939)
!939 = distinct !DILexicalBlock(scope: !922, file: !1, line: 244, column: 20)
!940 = !DILocation(line: 244, column: 69, scope: !939)
!941 = !DILocation(line: 244, column: 57, scope: !939)
!942 = !DILocation(line: 245, column: 33, scope: !943)
!943 = distinct !DILexicalBlock(scope: !939, file: !1, line: 244, column: 75)
!944 = !DILocation(line: 245, column: 24, scope: !943)
!945 = !DILocation(line: 247, column: 9, scope: !943)
!946 = !DILocation(line: 247, column: 21, scope: !947)
!947 = distinct !DILexicalBlock(scope: !939, file: !1, line: 247, column: 20)
!948 = !DILocation(line: 247, column: 54, scope: !947)
!949 = !DILocation(line: 248, column: 31, scope: !950)
!950 = distinct !DILexicalBlock(scope: !947, file: !1, line: 247, column: 72)
!951 = !DILocation(line: 248, column: 22, scope: !950)
!952 = !DILocation(line: 251, column: 38, scope: !953)
!953 = distinct !DILexicalBlock(scope: !950, file: !1, line: 251, column: 17)
!954 = !DILocation(line: 251, column: 17, scope: !953)
!955 = !DILocation(line: 251, column: 47, scope: !953)
!956 = !DILocation(line: 251, column: 17, scope: !950)
!957 = !DILocation(line: 253, column: 13, scope: !958)
!958 = distinct !DILexicalBlock(scope: !953, file: !1, line: 251, column: 56)
!959 = !DILocation(line: 256, column: 28, scope: !960)
!960 = distinct !DILexicalBlock(scope: !961, file: !1, line: 256, column: 21)
!961 = distinct !DILexicalBlock(scope: !953, file: !1, line: 253, column: 20)
!962 = !{!465, !179, i64 2924}
!963 = !DILocation(line: 256, column: 21, scope: !960)
!964 = !DILocation(line: 256, column: 21, scope: !961)
!965 = !DILocation(line: 257, column: 21, scope: !966)
!966 = distinct !DILexicalBlock(scope: !960, file: !1, line: 256, column: 45)
!967 = !DILocation(line: 259, column: 21, scope: !966)
!968 = !DILocation(line: 263, column: 21, scope: !969)
!969 = distinct !DILexicalBlock(scope: !947, file: !1, line: 263, column: 20)
!970 = !DILocation(line: 263, column: 55, scope: !969)
!971 = !DILocation(line: 264, column: 24, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !1, line: 264, column: 17)
!973 = distinct !DILexicalBlock(scope: !969, file: !1, line: 263, column: 73)
!974 = !DILocation(line: 264, column: 17, scope: !972)
!975 = !DILocation(line: 264, column: 17, scope: !973)
!976 = !DILocation(line: 265, column: 17, scope: !977)
!977 = distinct !DILexicalBlock(scope: !972, file: !1, line: 264, column: 41)
!978 = !DILocation(line: 267, column: 17, scope: !977)
!979 = !DILocation(line: 270, column: 38, scope: !973)
!980 = !DILocation(line: 270, column: 29, scope: !973)
!981 = !DILocation(line: 38, column: 45, scope: !149, inlinedAt: !982)
!982 = distinct !DILocation(line: 269, column: 40, scope: !973)
!983 = !DILocation(line: 38, column: 57, scope: !149, inlinedAt: !982)
!984 = !DILocation(line: 39, column: 30, scope: !149, inlinedAt: !982)
!985 = !DILocation(line: 39, column: 25, scope: !149, inlinedAt: !982)
!986 = !DILocation(line: 40, column: 9, scope: !149, inlinedAt: !982)
!987 = !DILocation(line: 40, column: 14, scope: !149, inlinedAt: !982)
!988 = !DILocation(line: 41, column: 9, scope: !149, inlinedAt: !982)
!989 = !DILocation(line: 41, column: 17, scope: !149, inlinedAt: !982)
!990 = !DILocation(line: 42, column: 5, scope: !149, inlinedAt: !982)
!991 = !DILocation(line: 269, column: 13, scope: !973)
!992 = !DILocation(line: 271, column: 18, scope: !973)
!993 = !DILocation(line: 274, column: 31, scope: !994)
!994 = distinct !DILexicalBlock(scope: !969, file: !1, line: 273, column: 16)
!995 = !{!886, !182, i64 128}
!996 = !DILocation(line: 274, column: 13, scope: !994)
!997 = !DILocation(line: 276, column: 13, scope: !994)
!998 = !DILocation(line: 0, scope: !547)
!999 = !DILocation(line: 0, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !910, file: !1, line: 228, column: 49)
!1001 = !DILocation(line: 278, column: 10, scope: !698)
!1002 = !DILocation(line: 279, column: 5, scope: !547)
!1003 = !DILocation(line: 0, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !926, file: !1, line: 239, column: 13)
!1005 = !DILocation(line: 283, column: 9, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 282, column: 23)
!1007 = distinct !DILexicalBlock(scope: !547, file: !1, line: 282, column: 9)
!1008 = !DILocation(line: 284, column: 9, scope: !1006)
!1009 = !DILocation(line: 285, column: 9, scope: !1006)
!1010 = !DILocation(line: 294, column: 9, scope: !906)
!1011 = !DILocation(line: 305, column: 18, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !547, file: !1, line: 305, column: 9)
!1013 = !DILocation(line: 295, column: 18, scope: !906)
!1014 = !DILocation(line: 295, column: 23, scope: !906)
!1015 = !DILocation(line: 295, column: 34, scope: !906)
!1016 = !DILocation(line: 296, column: 10, scope: !906)
!1017 = !DILocation(line: 296, column: 19, scope: !906)
!1018 = !DILocation(line: 296, column: 25, scope: !906)
!1019 = !{!864, !179, i64 160}
!1020 = !DILocation(line: 296, column: 31, scope: !906)
!1021 = !DILocation(line: 294, column: 9, scope: !547)
!1022 = !DILocation(line: 302, column: 5, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !906, file: !1, line: 297, column: 5)
!1024 = !DILocation(line: 305, column: 23, scope: !1012)
!1025 = !DILocation(line: 305, column: 9, scope: !547)
!1026 = !DILocation(line: 306, column: 9, scope: !1012)
!1027 = !DILocation(line: 309, column: 21, scope: !547)
!1028 = !DILocation(line: 309, column: 5, scope: !547)
!1029 = !DILocation(line: 310, column: 32, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !547, file: !1, line: 309, column: 27)
!1031 = !DILocation(line: 310, column: 57, scope: !1030)
!1032 = !DILocation(line: 311, column: 32, scope: !1030)
!1033 = !DILocation(line: 311, column: 54, scope: !1030)
!1034 = !DILocation(line: 312, column: 32, scope: !1030)
!1035 = !{!1036, !182, i64 0}
!1036 = !{!"zset", !182, i64 0, !182, i64 8}
!1037 = !{!1038, !320, i64 24}
!1038 = !{!"dictht", !182, i64 0, !320, i64 8, !320, i64 16, !320, i64 24}
!1039 = !DILocation(line: 312, column: 71, scope: !1030)
!1040 = !DILocation(line: 194, column: 26, scope: !547)
!1041 = !DILocation(line: 313, column: 29, scope: !1030)
!1042 = !DILocation(line: 0, scope: !1030)
!1043 = !DILocation(line: 317, column: 14, scope: !547)
!1044 = !DILocation(line: 317, column: 13, scope: !547)
!1045 = !DILocation(line: 193, column: 45, scope: !547)
!1046 = !DILocation(line: 318, column: 12, scope: !547)
!1047 = !DILocation(line: 318, column: 24, scope: !547)
!1048 = !DILocation(line: 318, column: 11, scope: !547)
!1049 = !DILocation(line: 318, column: 31, scope: !547)
!1050 = !DILocation(line: 318, column: 50, scope: !547)
!1051 = !DILocation(line: 318, column: 62, scope: !547)
!1052 = !DILocation(line: 319, column: 18, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !547, file: !1, line: 319, column: 9)
!1054 = !DILocation(line: 193, column: 52, scope: !547)
!1055 = !DILocation(line: 319, column: 15, scope: !1053)
!1056 = !DILocation(line: 319, column: 9, scope: !547)
!1057 = !DILocation(line: 320, column: 17, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1053, file: !1, line: 319, column: 29)
!1059 = !DILocation(line: 321, column: 15, scope: !1058)
!1060 = !DILocation(line: 322, column: 5, scope: !1058)
!1061 = !DILocation(line: 323, column: 13, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !547, file: !1, line: 323, column: 9)
!1063 = !DILocation(line: 323, column: 9, scope: !547)
!1064 = !DILocation(line: 323, column: 33, scope: !1062)
!1065 = !DILocation(line: 323, column: 27, scope: !1062)
!1066 = !DILocation(line: 0, scope: !1058)
!1067 = !DILocation(line: 335, column: 19, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !547, file: !1, line: 335, column: 9)
!1069 = !DILocation(line: 335, column: 24, scope: !1068)
!1070 = !DILocation(line: 335, column: 36, scope: !1068)
!1071 = !DILocation(line: 335, column: 53, scope: !1068)
!1072 = !DILocation(line: 336, column: 9, scope: !1068)
!1073 = !DILocation(line: 335, column: 66, scope: !1068)
!1074 = !DILocation(line: 336, column: 18, scope: !1068)
!1075 = !DILocation(line: 337, column: 16, scope: !1068)
!1076 = !DILocation(line: 337, column: 21, scope: !1068)
!1077 = !DILocation(line: 337, column: 31, scope: !1068)
!1078 = !DILocation(line: 337, column: 28, scope: !1068)
!1079 = !DILocation(line: 335, column: 9, scope: !547)
!1080 = !DILocation(line: 339, column: 24, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1068, file: !1, line: 338, column: 5)
!1082 = !DILocation(line: 339, column: 21, scope: !1081)
!1083 = !DILocation(line: 340, column: 5, scope: !1081)
!1084 = !DILocation(line: 343, column: 46, scope: !547)
!1085 = !DILocation(line: 343, column: 45, scope: !547)
!1086 = !DILocation(line: 343, column: 14, scope: !547)
!1087 = !DILocation(line: 199, column: 22, scope: !547)
!1088 = !DILocation(line: 346, column: 18, scope: !703)
!1089 = !DILocation(line: 346, column: 23, scope: !703)
!1090 = !DILocation(line: 346, column: 38, scope: !703)
!1091 = !DILocation(line: 346, column: 35, scope: !703)
!1092 = !DILocation(line: 353, column: 17, scope: !701)
!1093 = !DILocation(line: 353, column: 13, scope: !702)
!1094 = !DILocation(line: 355, column: 13, scope: !700)
!1095 = !DILocation(line: 357, column: 21, scope: !700)
!1096 = !DILocation(line: 357, column: 35, scope: !700)
!1097 = !DILocation(line: 357, column: 67, scope: !700)
!1098 = !DILocation(line: 358, column: 21, scope: !700)
!1099 = !DILocation(line: 356, column: 18, scope: !700)
!1100 = !DILocation(line: 354, column: 31, scope: !700)
!1101 = !DILocation(line: 360, column: 13, scope: !700)
!1102 = !DILocation(line: 360, column: 21, scope: !700)
!1103 = !DILocation(line: 360, column: 33, scope: !700)
!1104 = !DILocation(line: 355, column: 27, scope: !700)
!1105 = !DILocation(line: 360, column: 36, scope: !700)
!1106 = !DILocation(line: 361, column: 33, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !700, file: !1, line: 360, column: 61)
!1108 = !DILocation(line: 361, column: 27, scope: !1107)
!1109 = !DILocation(line: 361, column: 31, scope: !1107)
!1110 = !DILocation(line: 362, column: 27, scope: !1107)
!1111 = !DILocation(line: 363, column: 29, scope: !1107)
!1112 = !DILocation(line: 363, column: 36, scope: !1107)
!1113 = !DILocation(line: 364, column: 18, scope: !1107)
!1114 = distinct !{!1114, !1101, !1115}
!1115 = !DILocation(line: 365, column: 13, scope: !700)
!1116 = !DILocation(line: 366, column: 13, scope: !700)
!1117 = !DILocation(line: 0, scope: !1107)
!1118 = !DILocation(line: 368, column: 17, scope: !700)
!1119 = !DILocation(line: 370, column: 9, scope: !701)
!1120 = !DILocation(line: 370, column: 9, scope: !700)
!1121 = !DILocation(line: 371, column: 16, scope: !703)
!1122 = !DILocation(line: 372, column: 32, scope: !766)
!1123 = !DILocation(line: 372, column: 27, scope: !766)
!1124 = !DILocation(line: 373, column: 9, scope: !766)
!1125 = !DILocation(line: 374, column: 9, scope: !766)
!1126 = !DILocation(line: 373, column: 23, scope: !766)
!1127 = !DILocation(line: 374, column: 15, scope: !766)
!1128 = !DILocation(line: 375, column: 29, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !766, file: !1, line: 374, column: 40)
!1130 = !DILocation(line: 375, column: 23, scope: !1129)
!1131 = !DILocation(line: 375, column: 27, scope: !1129)
!1132 = !DILocation(line: 376, column: 23, scope: !1129)
!1133 = !DILocation(line: 377, column: 25, scope: !1129)
!1134 = !DILocation(line: 377, column: 32, scope: !1129)
!1135 = !DILocation(line: 378, column: 14, scope: !1129)
!1136 = distinct !{!1136, !1125, !1137}
!1137 = !DILocation(line: 379, column: 9, scope: !766)
!1138 = !DILocation(line: 380, column: 9, scope: !766)
!1139 = !DILocation(line: 0, scope: !1129)
!1140 = !DILocation(line: 381, column: 5, scope: !767)
!1141 = !DILocation(line: 381, column: 5, scope: !766)
!1142 = !DILocation(line: 381, column: 30, scope: !771)
!1143 = !DILocation(line: 381, column: 16, scope: !767)
!1144 = !DILocation(line: 382, column: 31, scope: !770)
!1145 = !DILocation(line: 382, column: 26, scope: !770)
!1146 = !DILocation(line: 384, column: 9, scope: !770)
!1147 = !DILocation(line: 384, column: 25, scope: !770)
!1148 = !DILocation(line: 383, column: 13, scope: !770)
!1149 = !DILocation(line: 384, column: 48, scope: !770)
!1150 = !DILocation(line: 385, column: 29, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !770, file: !1, line: 384, column: 57)
!1152 = !DILocation(line: 385, column: 23, scope: !1151)
!1153 = !DILocation(line: 385, column: 27, scope: !1151)
!1154 = !DILocation(line: 386, column: 23, scope: !1151)
!1155 = !DILocation(line: 387, column: 25, scope: !1151)
!1156 = !DILocation(line: 387, column: 32, scope: !1151)
!1157 = !DILocation(line: 388, column: 14, scope: !1151)
!1158 = distinct !{!1158, !1146, !1159}
!1159 = !DILocation(line: 389, column: 9, scope: !770)
!1160 = !DILocation(line: 390, column: 9, scope: !770)
!1161 = !DILocation(line: 0, scope: !1151)
!1162 = !DILocation(line: 391, column: 5, scope: !770)
!1163 = !DILocation(line: 391, column: 30, scope: !794)
!1164 = !DILocation(line: 391, column: 42, scope: !794)
!1165 = !DILocation(line: 399, column: 29, scope: !793)
!1166 = !DILocation(line: 399, column: 15, scope: !793)
!1167 = !DILocation(line: 400, column: 30, scope: !793)
!1168 = !{!1036, !182, i64 8}
!1169 = !DILocation(line: 400, column: 20, scope: !793)
!1170 = !DILocation(line: 403, column: 13, scope: !793)
!1171 = !DILocation(line: 406, column: 13, scope: !803)
!1172 = !DILocation(line: 406, column: 13, scope: !793)
!1173 = !DILocation(line: 407, column: 28, scope: !802)
!1174 = !DILocation(line: 409, column: 23, scope: !802)
!1175 = !{!1176, !182, i64 8}
!1176 = !{!"zskiplist", !182, i64 0, !182, i64 8, !320, i64 16, !179, i64 24}
!1177 = !DILocation(line: 401, column: 24, scope: !793)
!1178 = !DILocation(line: 410, column: 23, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !802, file: !1, line: 410, column: 17)
!1180 = !DILocation(line: 410, column: 17, scope: !802)
!1181 = !DILocation(line: 407, column: 18, scope: !802)
!1182 = !DILocation(line: 411, column: 53, scope: !1179)
!1183 = !DILocation(line: 411, column: 22, scope: !1179)
!1184 = !DILocation(line: 411, column: 17, scope: !1179)
!1185 = !DILocation(line: 413, column: 23, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !803, file: !1, line: 412, column: 16)
!1187 = !{!1176, !182, i64 0}
!1188 = !DILocation(line: 413, column: 40, scope: !1186)
!1189 = !{!1190, !182, i64 0}
!1190 = !{!"zskiplistLevel", !182, i64 0, !320, i64 8}
!1191 = !DILocation(line: 414, column: 23, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1186, file: !1, line: 414, column: 17)
!1193 = !DILocation(line: 414, column: 17, scope: !1186)
!1194 = !DILocation(line: 415, column: 51, scope: !1192)
!1195 = !DILocation(line: 415, column: 22, scope: !1192)
!1196 = !DILocation(line: 415, column: 17, scope: !1192)
!1197 = !DILocation(line: 0, scope: !802)
!1198 = !DILocation(line: 418, column: 9, scope: !793)
!1199 = !DILocation(line: 0, scope: !1186)
!1200 = !DILocation(line: 418, column: 23, scope: !793)
!1201 = !DILocation(line: 419, column: 13, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !793, file: !1, line: 418, column: 27)
!1203 = !DILocation(line: 420, column: 26, scope: !1202)
!1204 = !DILocation(line: 402, column: 13, scope: !793)
!1205 = !DILocation(line: 87, column: 39, scope: !288, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 421, column: 55, scope: !1202)
!1207 = !DILocation(line: 88, column: 27, scope: !288, inlinedAt: !1206)
!1208 = !DILocation(line: 88, column: 19, scope: !288, inlinedAt: !1206)
!1209 = !DILocation(line: 89, column: 5, scope: !288, inlinedAt: !1206)
!1210 = !DILocation(line: 91, column: 20, scope: !303, inlinedAt: !1206)
!1211 = !DILocation(line: 91, column: 13, scope: !303, inlinedAt: !1206)
!1212 = !DILocation(line: 93, column: 20, scope: !303, inlinedAt: !1206)
!1213 = !DILocation(line: 93, column: 34, scope: !303, inlinedAt: !1206)
!1214 = !DILocation(line: 93, column: 13, scope: !303, inlinedAt: !1206)
!1215 = !DILocation(line: 95, column: 20, scope: !303, inlinedAt: !1206)
!1216 = !DILocation(line: 95, column: 35, scope: !303, inlinedAt: !1206)
!1217 = !DILocation(line: 95, column: 13, scope: !303, inlinedAt: !1206)
!1218 = !DILocation(line: 97, column: 20, scope: !303, inlinedAt: !1206)
!1219 = !DILocation(line: 97, column: 35, scope: !303, inlinedAt: !1206)
!1220 = !DILocation(line: 97, column: 13, scope: !303, inlinedAt: !1206)
!1221 = !DILocation(line: 99, column: 20, scope: !303, inlinedAt: !1206)
!1222 = !DILocation(line: 99, column: 35, scope: !303, inlinedAt: !1206)
!1223 = !DILocation(line: 99, column: 13, scope: !303, inlinedAt: !1206)
!1224 = !DILocation(line: 0, scope: !303, inlinedAt: !1206)
!1225 = !DILocation(line: 0, scope: !1202)
!1226 = !DILocation(line: 102, column: 1, scope: !288, inlinedAt: !1206)
!1227 = !DILocation(line: 421, column: 29, scope: !1202)
!1228 = !DILocation(line: 421, column: 23, scope: !1202)
!1229 = !DILocation(line: 421, column: 27, scope: !1202)
!1230 = !DILocation(line: 422, column: 23, scope: !1202)
!1231 = !DILocation(line: 423, column: 25, scope: !1202)
!1232 = !DILocation(line: 423, column: 32, scope: !1202)
!1233 = !DILocation(line: 424, column: 14, scope: !1202)
!1234 = !DILocation(line: 425, column: 18, scope: !1202)
!1235 = !DILocation(line: 425, column: 53, scope: !1202)
!1236 = !DILocation(line: 425, column: 29, scope: !1202)
!1237 = distinct !{!1237, !1198, !1238}
!1238 = !DILocation(line: 426, column: 9, scope: !793)
!1239 = !DILocation(line: 428, column: 13, scope: !793)
!1240 = !DILocation(line: 430, column: 5, scope: !793)
!1241 = !DILocation(line: 430, column: 16, scope: !794)
!1242 = !DILocation(line: 431, column: 38, scope: !805)
!1243 = !DILocation(line: 431, column: 44, scope: !805)
!1244 = !DILocation(line: 431, column: 15, scope: !805)
!1245 = !DILocation(line: 435, column: 14, scope: !805)
!1246 = !DILocation(line: 432, column: 23, scope: !805)
!1247 = !DILocation(line: 436, column: 9, scope: !805)
!1248 = !DILocation(line: 436, column: 25, scope: !805)
!1249 = !DILocation(line: 433, column: 20, scope: !805)
!1250 = !DILocation(line: 436, column: 39, scope: !805)
!1251 = !DILocation(line: 437, column: 23, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !805, file: !1, line: 436, column: 48)
!1253 = !{!1254, !182, i64 0}
!1254 = !{!"dictEntry", !182, i64 0, !180, i64 8, !182, i64 16}
!1255 = !DILocation(line: 434, column: 13, scope: !805)
!1256 = !DILocation(line: 87, column: 39, scope: !288, inlinedAt: !1257)
!1257 = distinct !DILocation(line: 438, column: 55, scope: !1252)
!1258 = !DILocation(line: 88, column: 27, scope: !288, inlinedAt: !1257)
!1259 = !DILocation(line: 88, column: 19, scope: !288, inlinedAt: !1257)
!1260 = !DILocation(line: 89, column: 5, scope: !288, inlinedAt: !1257)
!1261 = !DILocation(line: 91, column: 20, scope: !303, inlinedAt: !1257)
!1262 = !DILocation(line: 91, column: 13, scope: !303, inlinedAt: !1257)
!1263 = !DILocation(line: 93, column: 20, scope: !303, inlinedAt: !1257)
!1264 = !DILocation(line: 93, column: 34, scope: !303, inlinedAt: !1257)
!1265 = !DILocation(line: 93, column: 13, scope: !303, inlinedAt: !1257)
!1266 = !DILocation(line: 95, column: 20, scope: !303, inlinedAt: !1257)
!1267 = !DILocation(line: 95, column: 35, scope: !303, inlinedAt: !1257)
!1268 = !DILocation(line: 95, column: 13, scope: !303, inlinedAt: !1257)
!1269 = !DILocation(line: 97, column: 20, scope: !303, inlinedAt: !1257)
!1270 = !DILocation(line: 97, column: 35, scope: !303, inlinedAt: !1257)
!1271 = !DILocation(line: 97, column: 13, scope: !303, inlinedAt: !1257)
!1272 = !DILocation(line: 99, column: 20, scope: !303, inlinedAt: !1257)
!1273 = !DILocation(line: 99, column: 35, scope: !303, inlinedAt: !1257)
!1274 = !DILocation(line: 99, column: 13, scope: !303, inlinedAt: !1257)
!1275 = !DILocation(line: 0, scope: !303, inlinedAt: !1257)
!1276 = !DILocation(line: 0, scope: !1252)
!1277 = !DILocation(line: 102, column: 1, scope: !288, inlinedAt: !1257)
!1278 = !DILocation(line: 438, column: 29, scope: !1252)
!1279 = !DILocation(line: 438, column: 23, scope: !1252)
!1280 = !DILocation(line: 438, column: 27, scope: !1252)
!1281 = !DILocation(line: 439, column: 23, scope: !1252)
!1282 = !DILocation(line: 440, column: 25, scope: !1252)
!1283 = !DILocation(line: 440, column: 32, scope: !1252)
!1284 = !DILocation(line: 441, column: 14, scope: !1252)
!1285 = distinct !{!1285, !1247, !1286}
!1286 = !DILocation(line: 442, column: 9, scope: !805)
!1287 = !DILocation(line: 443, column: 9, scope: !805)
!1288 = !DILocation(line: 445, column: 9, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !806, file: !1, line: 444, column: 12)
!1290 = !DILocation(line: 447, column: 5, scope: !547)
!1291 = !DILocation(line: 344, column: 7, scope: !547)
!1292 = !DILocation(line: 0, scope: !1062)
!1293 = !DILocation(line: 450, column: 9, scope: !547)
!1294 = !DILocation(line: 451, column: 14, scope: !813)
!1295 = !DILocation(line: 451, column: 23, scope: !812)
!1296 = !DILocation(line: 451, column: 9, scope: !813)
!1297 = !DILocation(line: 453, column: 17, scope: !811)
!1298 = !DILocation(line: 455, column: 47, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !1, line: 453, column: 25)
!1300 = distinct !DILexicalBlock(scope: !811, file: !1, line: 453, column: 17)
!1301 = !DILocation(line: 455, column: 67, scope: !1299)
!1302 = !DILocation(line: 455, column: 25, scope: !1299)
!1303 = !DILocation(line: 452, column: 19, scope: !811)
!1304 = !DILocation(line: 456, column: 22, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1299, file: !1, line: 456, column: 21)
!1306 = !DILocation(line: 456, column: 21, scope: !1299)
!1307 = !DILocation(line: 459, column: 35, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1300, file: !1, line: 457, column: 20)
!1309 = !DILocation(line: 0, scope: !1308)
!1310 = !DILocation(line: 462, column: 17, scope: !811)
!1311 = !DILocation(line: 463, column: 21, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !820, file: !1, line: 462, column: 24)
!1313 = !DILocation(line: 463, column: 50, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1312, file: !1, line: 463, column: 21)
!1315 = !DILocation(line: 463, column: 39, scope: !1314)
!1316 = !DILocation(line: 463, column: 41, scope: !1314)
!1317 = !DILocation(line: 463, column: 48, scope: !1314)
!1318 = !DILocation(line: 463, column: 29, scope: !1314)
!1319 = !DILocation(line: 486, column: 17, scope: !811)
!1320 = !DILocation(line: 465, column: 21, scope: !818)
!1321 = !DILocation(line: 465, column: 21, scope: !819)
!1322 = !DILocation(line: 466, column: 21, scope: !817)
!1323 = !DILocation(line: 468, column: 55, scope: !817)
!1324 = !DILocation(line: 466, column: 27, scope: !817)
!1325 = !DILocation(line: 468, column: 41, scope: !817)
!1326 = !DILocation(line: 468, column: 33, scope: !817)
!1327 = !DILocation(line: 468, column: 39, scope: !817)
!1328 = !DILocation(line: 469, column: 25, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !817, file: !1, line: 469, column: 25)
!1330 = !DILocation(line: 469, column: 33, scope: !1329)
!1331 = !DILocation(line: 469, column: 41, scope: !1329)
!1332 = !DILocation(line: 469, column: 44, scope: !1329)
!1333 = !DILocation(line: 469, column: 50, scope: !1329)
!1334 = !DILocation(line: 469, column: 60, scope: !1329)
!1335 = !DILocation(line: 470, column: 25, scope: !1329)
!1336 = !DILocation(line: 469, column: 25, scope: !817)
!1337 = !DILocation(line: 473, column: 21, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1329, file: !1, line: 471, column: 21)
!1339 = !DILocation(line: 474, column: 17, scope: !818)
!1340 = !DILocation(line: 474, column: 17, scope: !817)
!1341 = !DILocation(line: 474, column: 44, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !818, file: !1, line: 474, column: 28)
!1343 = !DILocation(line: 474, column: 28, scope: !818)
!1344 = !DILocation(line: 478, column: 54, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1342, file: !1, line: 474, column: 65)
!1346 = !DILocation(line: 478, column: 41, scope: !1345)
!1347 = !DILocation(line: 478, column: 33, scope: !1345)
!1348 = !DILocation(line: 478, column: 39, scope: !1345)
!1349 = !DILocation(line: 480, column: 21, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1342, file: !1, line: 479, column: 24)
!1351 = !DILocation(line: 487, column: 17, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !1, line: 486, column: 25)
!1353 = distinct !DILexicalBlock(scope: !811, file: !1, line: 486, column: 17)
!1354 = !DILocation(line: 488, column: 13, scope: !1352)
!1355 = !DILocation(line: 0, scope: !1352)
!1356 = !DILocation(line: 489, column: 9, scope: !812)
!1357 = !DILocation(line: 0, scope: !1305)
!1358 = !DILocation(line: 451, column: 37, scope: !812)
!1359 = !DILocation(line: 451, column: 9, scope: !812)
!1360 = distinct !{!1360, !1296, !1361}
!1361 = !DILocation(line: 489, column: 9, scope: !813)
!1362 = !DILocation(line: 491, column: 26, scope: !814)
!1363 = !DILocation(line: 492, column: 27, scope: !814)
!1364 = !DILocation(line: 493, column: 33, scope: !814)
!1365 = !DILocation(line: 493, column: 31, scope: !814)
!1366 = !DILocation(line: 494, column: 29, scope: !814)
!1367 = !DILocation(line: 494, column: 27, scope: !814)
!1368 = !DILocation(line: 495, column: 20, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !814, file: !1, line: 495, column: 13)
!1370 = !DILocation(line: 495, column: 30, scope: !1369)
!1371 = !DILocation(line: 495, column: 35, scope: !1369)
!1372 = !DILocation(line: 495, column: 54, scope: !1369)
!1373 = !DILocation(line: 495, column: 45, scope: !1369)
!1374 = !DILocation(line: 495, column: 42, scope: !1369)
!1375 = !DILocation(line: 495, column: 13, scope: !814)
!1376 = !DILocation(line: 496, column: 13, scope: !1369)
!1377 = !DILocation(line: 498, column: 13, scope: !1369)
!1378 = !DILocation(line: 503, column: 17, scope: !547)
!1379 = !DILocation(line: 503, column: 25, scope: !547)
!1380 = !DILocation(line: 503, column: 35, scope: !547)
!1381 = !DILocation(line: 503, column: 41, scope: !547)
!1382 = !DILocation(line: 503, column: 30, scope: !547)
!1383 = !DILocation(line: 503, column: 50, scope: !547)
!1384 = !DILocation(line: 503, column: 56, scope: !547)
!1385 = !DILocation(line: 504, column: 9, scope: !827)
!1386 = !DILocation(line: 504, column: 9, scope: !547)
!1387 = !DILocation(line: 505, column: 9, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !827, file: !1, line: 504, column: 31)
!1389 = !DILocation(line: 506, column: 5, scope: !1388)
!1390 = !DILocation(line: 506, column: 25, scope: !826)
!1391 = !DILocation(line: 506, column: 16, scope: !827)
!1392 = !DILocation(line: 508, column: 32, scope: !825)
!1393 = !DILocation(line: 508, column: 9, scope: !825)
!1394 = !DILocation(line: 509, column: 14, scope: !824)
!1395 = !DILocation(line: 509, column: 25, scope: !823)
!1396 = !DILocation(line: 509, column: 27, scope: !823)
!1397 = !DILocation(line: 509, column: 9, scope: !824)
!1398 = !DILocation(line: 511, column: 13, scope: !822)
!1399 = !DILocation(line: 513, column: 17, scope: !822)
!1400 = !DILocation(line: 513, column: 50, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !822, file: !1, line: 513, column: 17)
!1402 = !DILocation(line: 513, column: 25, scope: !1401)
!1403 = !DILocation(line: 511, column: 22, scope: !822)
!1404 = !DILocation(line: 514, column: 13, scope: !822)
!1405 = !DILocation(line: 515, column: 13, scope: !822)
!1406 = !DILocation(line: 515, column: 25, scope: !822)
!1407 = !DILocation(line: 510, column: 23, scope: !822)
!1408 = !DILocation(line: 516, column: 47, scope: !835)
!1409 = !{!1410, !182, i64 16}
!1410 = !{!"listNode", !182, i64 0, !182, i64 8, !182, i64 16}
!1411 = !DILocation(line: 516, column: 37, scope: !835)
!1412 = !DILocation(line: 517, column: 51, scope: !835)
!1413 = !DILocation(line: 517, column: 59, scope: !835)
!1414 = !DILocation(line: 518, column: 31, scope: !835)
!1415 = !DILocation(line: 517, column: 29, scope: !835)
!1416 = !DILocation(line: 517, column: 23, scope: !835)
!1417 = !DILocation(line: 520, column: 26, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !835, file: !1, line: 520, column: 21)
!1419 = !DILocation(line: 520, column: 31, scope: !1418)
!1420 = !DILocation(line: 520, column: 21, scope: !835)
!1421 = !DILocation(line: 521, column: 26, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !1, line: 521, column: 25)
!1423 = distinct !DILexicalBlock(scope: !1418, file: !1, line: 520, column: 47)
!1424 = !DILocation(line: 521, column: 25, scope: !1423)
!1425 = !DILocation(line: 522, column: 43, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1422, file: !1, line: 521, column: 31)
!1427 = !{!886, !182, i64 80}
!1428 = !DILocation(line: 522, column: 25, scope: !1426)
!1429 = !DILocation(line: 523, column: 21, scope: !1426)
!1430 = !DILocation(line: 524, column: 25, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1422, file: !1, line: 523, column: 28)
!1432 = !DILocation(line: 525, column: 25, scope: !1431)
!1433 = !DILocation(line: 529, column: 21, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1418, file: !1, line: 527, column: 24)
!1435 = distinct !{!1435, !1405, !1436}
!1436 = !DILocation(line: 531, column: 13, scope: !822)
!1437 = !DILocation(line: 532, column: 9, scope: !823)
!1438 = !DILocation(line: 509, column: 36, scope: !823)
!1439 = !DILocation(line: 509, column: 9, scope: !823)
!1440 = distinct !{!1440, !1397, !1441}
!1441 = !DILocation(line: 532, column: 9, scope: !824)
!1442 = !DILocation(line: 534, column: 22, scope: !838)
!1443 = !DILocation(line: 534, column: 15, scope: !838)
!1444 = !DILocation(line: 537, column: 14, scope: !842)
!1445 = !DILocation(line: 537, column: 25, scope: !841)
!1446 = !DILocation(line: 537, column: 27, scope: !841)
!1447 = !DILocation(line: 537, column: 9, scope: !842)
!1448 = !DILocation(line: 539, column: 13, scope: !840)
!1449 = !DILocation(line: 541, column: 17, scope: !840)
!1450 = !DILocation(line: 542, column: 45, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !847, file: !1, line: 541, column: 25)
!1452 = !DILocation(line: 542, column: 17, scope: !1451)
!1453 = !DILocation(line: 543, column: 13, scope: !1451)
!1454 = !DILocation(line: 539, column: 22, scope: !840)
!1455 = !DILocation(line: 544, column: 17, scope: !846)
!1456 = !DILocation(line: 545, column: 17, scope: !846)
!1457 = !DILocation(line: 545, column: 29, scope: !846)
!1458 = !DILocation(line: 538, column: 23, scope: !840)
!1459 = !DILocation(line: 546, column: 51, scope: !845)
!1460 = !DILocation(line: 546, column: 41, scope: !845)
!1461 = !DILocation(line: 547, column: 55, scope: !845)
!1462 = !DILocation(line: 547, column: 63, scope: !845)
!1463 = !DILocation(line: 548, column: 35, scope: !845)
!1464 = !DILocation(line: 547, column: 33, scope: !845)
!1465 = !DILocation(line: 547, column: 27, scope: !845)
!1466 = !DILocation(line: 550, column: 30, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !845, file: !1, line: 550, column: 25)
!1468 = !DILocation(line: 550, column: 35, scope: !1467)
!1469 = !DILocation(line: 550, column: 25, scope: !845)
!1470 = !DILocation(line: 551, column: 30, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !1, line: 551, column: 29)
!1472 = distinct !DILexicalBlock(scope: !1467, file: !1, line: 550, column: 51)
!1473 = !DILocation(line: 551, column: 29, scope: !1472)
!1474 = !DILocation(line: 551, column: 41, scope: !1471)
!1475 = !DILocation(line: 551, column: 35, scope: !1471)
!1476 = !DILocation(line: 0, scope: !1471)
!1477 = !DILocation(line: 556, column: 25, scope: !1472)
!1478 = !DILocation(line: 557, column: 25, scope: !1472)
!1479 = !DILocation(line: 558, column: 21, scope: !1472)
!1480 = distinct !{!1480, !1456, !1481}
!1481 = !DILocation(line: 562, column: 17, scope: !846)
!1482 = !DILocation(line: 560, column: 25, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1467, file: !1, line: 558, column: 28)
!1484 = !DILocation(line: 564, column: 9, scope: !841)
!1485 = !DILocation(line: 537, column: 36, scope: !841)
!1486 = !DILocation(line: 537, column: 9, scope: !841)
!1487 = distinct !{!1487, !1447, !1488}
!1488 = !DILocation(line: 564, column: 9, scope: !842)
!1489 = !DILocation(line: 565, column: 13, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !838, file: !1, line: 565, column: 13)
!1491 = !DILocation(line: 0, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1490, file: !1, line: 570, column: 20)
!1493 = !DILocation(line: 565, column: 13, scope: !838)
!1494 = !DILocation(line: 566, column: 13, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1490, file: !1, line: 565, column: 24)
!1496 = !DILocation(line: 568, column: 36, scope: !1495)
!1497 = !DILocation(line: 568, column: 40, scope: !1495)
!1498 = !{!1499, !179, i64 40}
!1499 = !{!"redisDb", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !182, i64 32, !179, i64 40, !466, i64 48, !182, i64 56}
!1500 = !DILocation(line: 567, column: 13, scope: !1495)
!1501 = !DILocation(line: 569, column: 29, scope: !1495)
!1502 = !DILocation(line: 570, column: 9, scope: !1495)
!1503 = !DILocation(line: 570, column: 20, scope: !1492)
!1504 = !DILocation(line: 570, column: 20, scope: !1490)
!1505 = !DILocation(line: 571, column: 34, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1492, file: !1, line: 570, column: 46)
!1507 = !DILocation(line: 571, column: 13, scope: !1506)
!1508 = !DILocation(line: 572, column: 66, scope: !1506)
!1509 = !DILocation(line: 572, column: 70, scope: !1506)
!1510 = !DILocation(line: 572, column: 13, scope: !1506)
!1511 = !DILocation(line: 574, column: 9, scope: !1506)
!1512 = !DILocation(line: 0, scope: !1495)
!1513 = !{!465, !466, i64 2080}
!1514 = !DILocation(line: 575, column: 9, scope: !838)
!1515 = !DILocation(line: 576, column: 28, scope: !838)
!1516 = !DILocation(line: 576, column: 9, scope: !838)
!1517 = !DILocation(line: 580, column: 10, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !547, file: !1, line: 580, column: 5)
!1519 = !DILocation(line: 580, column: 19, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1518, file: !1, line: 580, column: 5)
!1521 = !DILocation(line: 580, column: 5, scope: !1518)
!1522 = !DILocation(line: 581, column: 22, scope: !1520)
!1523 = !DILocation(line: 581, column: 32, scope: !1520)
!1524 = !DILocation(line: 581, column: 9, scope: !1520)
!1525 = !DILocation(line: 580, column: 33, scope: !1520)
!1526 = !DILocation(line: 580, column: 5, scope: !1520)
!1527 = distinct !{!1527, !1521, !1528}
!1528 = !DILocation(line: 581, column: 35, scope: !1518)
!1529 = !DILocation(line: 583, column: 5, scope: !547)
!1530 = !DILocation(line: 584, column: 5, scope: !547)
!1531 = !DILocation(line: 585, column: 10, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !547, file: !1, line: 585, column: 5)
!1533 = !DILocation(line: 585, column: 5, scope: !1532)
!1534 = !DILocation(line: 586, column: 19, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !1, line: 586, column: 13)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !1, line: 585, column: 37)
!1537 = distinct !DILexicalBlock(scope: !1532, file: !1, line: 585, column: 5)
!1538 = !DILocation(line: 586, column: 32, scope: !1535)
!1539 = !DILocation(line: 586, column: 34, scope: !1535)
!1540 = !DILocation(line: 586, column: 22, scope: !1535)
!1541 = !DILocation(line: 586, column: 13, scope: !1536)
!1542 = !DILocation(line: 587, column: 13, scope: !1535)
!1543 = !DILocation(line: 585, column: 33, scope: !1537)
!1544 = !DILocation(line: 585, column: 5, scope: !1537)
!1545 = !DILocation(line: 585, column: 19, scope: !1537)
!1546 = distinct !{!1546, !1533, !1547}
!1547 = !DILocation(line: 588, column: 5, scope: !1532)
!1548 = !DILocation(line: 589, column: 5, scope: !547)
!1549 = !DILocation(line: 590, column: 1, scope: !547)
!1550 = !DILocation(line: 0, scope: !884)
