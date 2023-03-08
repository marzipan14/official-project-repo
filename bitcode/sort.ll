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
  br i1 %7, label %8, label %13, !dbg !259

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !260
  %10 = load i8, i8* %9, align 1, !dbg !260, !tbaa !257
  %11 = icmp eq i8 %10, 0, !dbg !261
  br i1 %11, label %12, label %13, !dbg !262

; <label>:12:                                     ; preds = %8
  tail call void @incrRefCount(%struct.redisObject* %2) #6, !dbg !263
  br label %165, !dbg !265

; <label>:13:                                     ; preds = %8, %3
  %14 = tail call %struct.redisObject* @getDecodedObject(%struct.redisObject* %2) #6, !dbg !266
  %15 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %14, i64 0, i32 2, !dbg !267
  %16 = load i8*, i8** %15, align 8, !dbg !267, !tbaa !252
  %17 = tail call i8* @strchr(i8* %5, i32 42) #6, !dbg !269
  %18 = icmp eq i8* %17, null, !dbg !271
  br i1 %18, label %19, label %20, !dbg !273

; <label>:19:                                     ; preds = %13
  tail call void @decrRefCount(%struct.redisObject* %14) #6, !dbg !274
  br label %165, !dbg !276

; <label>:20:                                     ; preds = %13
  %21 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !277
  %22 = tail call i8* @strstr(i8* nonnull %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #6, !dbg !279
  %23 = icmp eq i8* %22, null, !dbg !281
  br i1 %23, label %63, label %24, !dbg !282

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds i8, i8* %22, i64 2, !dbg !283
  %26 = load i8, i8* %25, align 1, !dbg !284, !tbaa !257
  %27 = icmp eq i8 %26, 0, !dbg !285
  br i1 %27, label %63, label %28, !dbg !286

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds i8, i8* %5, i64 -1, !dbg !299
  %30 = load i8, i8* %29, align 1, !dbg !299, !tbaa !257
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
  %55 = ptrtoint i8* %22 to i64, !dbg !324
  %56 = ptrtoint i8* %5 to i64, !dbg !324
  %57 = sub i64 %56, %55, !dbg !325
  %58 = add i64 %57, %54, !dbg !325
  %59 = trunc i64 %58 to i32, !dbg !326
  %60 = add i32 %59, -2, !dbg !326
  %61 = sext i32 %60 to i64, !dbg !328
  %62 = tail call %struct.redisObject* @createStringObject(i8* nonnull %25, i64 %61) #6, !dbg !329
  br label %63, !dbg !330

; <label>:63:                                     ; preds = %20, %24, %53
  %64 = phi %struct.redisObject* [ %62, %53 ], [ null, %24 ], [ null, %20 ], !dbg !331
  %65 = phi i32 [ %60, %53 ], [ 0, %24 ], [ 0, %20 ], !dbg !332
  %66 = ptrtoint i8* %17 to i64, !dbg !334
  %67 = ptrtoint i8* %5 to i64, !dbg !334
  %68 = sub i64 %66, %67, !dbg !334
  %69 = trunc i64 %68 to i32, !dbg !335
  %70 = getelementptr inbounds i8, i8* %16, i64 -1, !dbg !339
  %71 = load i8, i8* %70, align 1, !dbg !339, !tbaa !257
  %72 = trunc i8 %71 to i3, !dbg !341
  switch i3 %72, label %94 [
    i3 0, label %73
    i3 1, label %76
    i3 2, label %80
    i3 3, label %85
    i3 -4, label %90
  ], !dbg !341

; <label>:73:                                     ; preds = %63
  %74 = lshr i8 %71, 3, !dbg !342
  %75 = zext i8 %74 to i64, !dbg !342
  br label %94, !dbg !343

; <label>:76:                                     ; preds = %63
  %77 = getelementptr inbounds i8, i8* %16, i64 -3, !dbg !344
  %78 = load i8, i8* %77, align 1, !dbg !345, !tbaa !257
  %79 = zext i8 %78 to i64, !dbg !344
  br label %94, !dbg !346

; <label>:80:                                     ; preds = %63
  %81 = getelementptr inbounds i8, i8* %16, i64 -5, !dbg !347
  %82 = bitcast i8* %81 to i16*, !dbg !348
  %83 = load i16, i16* %82, align 1, !dbg !348, !tbaa !310
  %84 = zext i16 %83 to i64, !dbg !347
  br label %94, !dbg !349

; <label>:85:                                     ; preds = %63
  %86 = getelementptr inbounds i8, i8* %16, i64 -9, !dbg !350
  %87 = bitcast i8* %86 to i32*, !dbg !351
  %88 = load i32, i32* %87, align 1, !dbg !351, !tbaa !315
  %89 = zext i32 %88 to i64, !dbg !350
  br label %94, !dbg !352

; <label>:90:                                     ; preds = %63
  %91 = getelementptr inbounds i8, i8* %16, i64 -17, !dbg !353
  %92 = bitcast i8* %91 to i64*, !dbg !354
  %93 = load i64, i64* %92, align 1, !dbg !354, !tbaa !319
  br label %94, !dbg !355

; <label>:94:                                     ; preds = %63, %73, %76, %80, %85, %90
  %95 = phi i64 [ %93, %90 ], [ %89, %85 ], [ %84, %80 ], [ %79, %76 ], [ %75, %73 ], [ 0, %63 ], !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  %96 = trunc i64 %95 to i32, !dbg !358
  %97 = getelementptr inbounds i8, i8* %5, i64 -1, !dbg !362
  %98 = load i8, i8* %97, align 1, !dbg !362, !tbaa !257
  %99 = trunc i8 %98 to i3, !dbg !364
  switch i3 %99, label %121 [
    i3 0, label %100
    i3 1, label %103
    i3 2, label %107
    i3 3, label %112
    i3 -4, label %117
  ], !dbg !364

; <label>:100:                                    ; preds = %94
  %101 = lshr i8 %98, 3, !dbg !365
  %102 = zext i8 %101 to i64, !dbg !365
  br label %121, !dbg !366

; <label>:103:                                    ; preds = %94
  %104 = getelementptr inbounds i8, i8* %5, i64 -3, !dbg !367
  %105 = load i8, i8* %104, align 1, !dbg !368, !tbaa !257
  %106 = zext i8 %105 to i64, !dbg !367
  br label %121, !dbg !369

; <label>:107:                                    ; preds = %94
  %108 = getelementptr inbounds i8, i8* %5, i64 -5, !dbg !370
  %109 = bitcast i8* %108 to i16*, !dbg !371
  %110 = load i16, i16* %109, align 1, !dbg !371, !tbaa !310
  %111 = zext i16 %110 to i64, !dbg !370
  br label %121, !dbg !372

; <label>:112:                                    ; preds = %94
  %113 = getelementptr inbounds i8, i8* %5, i64 -9, !dbg !373
  %114 = bitcast i8* %113 to i32*, !dbg !374
  %115 = load i32, i32* %114, align 1, !dbg !374, !tbaa !315
  %116 = zext i32 %115 to i64, !dbg !373
  br label %121, !dbg !375

; <label>:117:                                    ; preds = %94
  %118 = getelementptr inbounds i8, i8* %5, i64 -17, !dbg !376
  %119 = bitcast i8* %118 to i64*, !dbg !377
  %120 = load i64, i64* %119, align 1, !dbg !377, !tbaa !319
  br label %121, !dbg !378

; <label>:121:                                    ; preds = %94, %100, %103, %107, %112, %117
  %122 = phi i64 [ %120, %117 ], [ %116, %112 ], [ %111, %107 ], [ %106, %103 ], [ %102, %100 ], [ 0, %94 ], !dbg !379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !380
  %123 = shl i64 %68, 32, !dbg !381
  %124 = add i64 %123, 4294967296, !dbg !381
  %125 = lshr exact i64 %124, 32, !dbg !381
  %126 = sub i64 %122, %125, !dbg !382
  %127 = icmp ne i32 %65, 0, !dbg !383
  %128 = add nsw i32 %65, 2, !dbg !384
  %129 = select i1 %127, i32 %128, i32 0, !dbg !383
  %130 = trunc i64 %126 to i32, !dbg !385
  %131 = sub i32 %130, %129, !dbg !385
  %132 = add nsw i32 %96, %69, !dbg !387
  %133 = add nsw i32 %132, %131, !dbg !388
  %134 = sext i32 %133 to i64, !dbg !389
  %135 = tail call %struct.redisObject* @createStringObject(i8* null, i64 %134) #6, !dbg !390
  %136 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %135, i64 0, i32 2, !dbg !392
  %137 = load i8*, i8** %136, align 8, !dbg !392, !tbaa !252
  %138 = ashr exact i64 %123, 32, !dbg !394
  %139 = tail call i8* @memcpy(i8* %137, i8* nonnull %5, i64 %138) #6, !dbg !395
  %140 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !396
  %141 = shl i64 %95, 32, !dbg !397
  %142 = ashr exact i64 %141, 32, !dbg !397
  %143 = tail call i8* @memcpy(i8* %140, i8* nonnull %16, i64 %142) #6, !dbg !398
  %144 = getelementptr inbounds i8, i8* %140, i64 %142, !dbg !399
  %145 = sext i32 %131 to i64, !dbg !400
  %146 = tail call i8* @memcpy(i8* %144, i8* nonnull %21, i64 %145) #6, !dbg !401
  tail call void @decrRefCount(%struct.redisObject* %14) #6, !dbg !402
  %147 = tail call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %0, %struct.redisObject* %135) #6, !dbg !403
  %148 = icmp eq %struct.redisObject* %147, null, !dbg !405
  br i1 %148, label %163, label %149, !dbg !407

; <label>:149:                                    ; preds = %121
  %150 = icmp eq %struct.redisObject* %64, null, !dbg !408
  %151 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %147, i64 0, i32 0, !dbg !410
  %152 = load i32, i32* %151, align 8, !dbg !410
  %153 = and i32 %152, 15, !dbg !410
  br i1 %150, label %156, label %154, !dbg !413

; <label>:154:                                    ; preds = %149
  %155 = icmp eq i32 %153, 4, !dbg !414
  br i1 %155, label %159, label %163, !dbg !417

; <label>:156:                                    ; preds = %149
  %157 = icmp eq i32 %153, 0, !dbg !418
  br i1 %157, label %158, label %163, !dbg !419

; <label>:158:                                    ; preds = %156
  tail call void @incrRefCount(%struct.redisObject* nonnull %147) #6, !dbg !420
  tail call void @decrRefCount(%struct.redisObject* %135) #6, !dbg !421
  br label %165

; <label>:159:                                    ; preds = %154
  %160 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %64, i64 0, i32 2, !dbg !422
  %161 = load i8*, i8** %160, align 8, !dbg !422, !tbaa !252
  %162 = tail call %struct.redisObject* @hashTypeGetValueObject(%struct.redisObject* nonnull %147, i8* %161) #6, !dbg !423
  tail call void @decrRefCount(%struct.redisObject* %135) #6, !dbg !421
  tail call void @decrRefCount(%struct.redisObject* nonnull %64) #6, !dbg !424
  br label %165, !dbg !424

; <label>:163:                                    ; preds = %154, %156, %121
  tail call void @decrRefCount(%struct.redisObject* %135) #6, !dbg !426
  br i1 %127, label %164, label %165, !dbg !427

; <label>:164:                                    ; preds = %163
  tail call void @decrRefCount(%struct.redisObject* %64) #6, !dbg !428
  br label %165, !dbg !428

; <label>:165:                                    ; preds = %158, %163, %164, %159, %19, %12
  %166 = phi %struct.redisObject* [ %2, %12 ], [ null, %19 ], [ %162, %159 ], [ %147, %158 ], [ null, %164 ], [ null, %163 ], !dbg !430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  ret %struct.redisObject* %166, !dbg !431
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
define dso_local i32 @sortCompare(i8* nocapture readonly, i8* nocapture readonly) #0 !dbg !432 {
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 238), align 4, !dbg !456, !tbaa !458
  %4 = icmp eq i32 %3, 0, !dbg !465
  br i1 %4, label %5, label %21, !dbg !466

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !467
  %7 = bitcast i8* %6 to double*, !dbg !470
  %8 = load double, double* %7, align 8, !dbg !470, !tbaa !257
  %9 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !471
  %10 = bitcast i8* %9 to double*, !dbg !472
  %11 = load double, double* %10, align 8, !dbg !472, !tbaa !257
  %12 = fcmp ogt double %8, %11, !dbg !473
  br i1 %12, label %61, label %13, !dbg !474

; <label>:13:                                     ; preds = %5
  %14 = fcmp olt double %8, %11, !dbg !475
  br i1 %14, label %61, label %15, !dbg !477

; <label>:15:                                     ; preds = %13
  %16 = bitcast i8* %0 to %struct.redisObject**, !dbg !478
  %17 = load %struct.redisObject*, %struct.redisObject** %16, align 8, !dbg !478, !tbaa !480
  %18 = bitcast i8* %1 to %struct.redisObject**, !dbg !482
  %19 = load %struct.redisObject*, %struct.redisObject** %18, align 8, !dbg !482, !tbaa !480
  %20 = tail call i32 @compareStringObjects(%struct.redisObject* %17, %struct.redisObject* %19) #6, !dbg !483
  br label %61

; <label>:21:                                     ; preds = %2
  %22 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 239), align 8, !dbg !485, !tbaa !488
  %23 = icmp eq i32 %22, 0, !dbg !489
  br i1 %23, label %50, label %24, !dbg !490

; <label>:24:                                     ; preds = %21
  %25 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !491
  %26 = bitcast i8* %25 to %struct.redisObject**, !dbg !494
  %27 = load %struct.redisObject*, %struct.redisObject** %26, align 8, !dbg !494, !tbaa !257
  %28 = icmp eq %struct.redisObject* %27, null, !dbg !495
  %29 = getelementptr inbounds i8, i8* %1, i64 8
  %30 = bitcast i8* %29 to %struct.redisObject**
  %31 = load %struct.redisObject*, %struct.redisObject** %30, align 8, !dbg !496, !tbaa !257
  br i1 %28, label %34, label %32, !dbg !497

; <label>:32:                                     ; preds = %24
  %33 = icmp eq %struct.redisObject* %31, null, !dbg !498
  br i1 %33, label %34, label %39, !dbg !499

; <label>:34:                                     ; preds = %24, %32
  %35 = phi %struct.redisObject* [ null, %32 ], [ %31, %24 ], !dbg !500
  %36 = icmp eq %struct.redisObject* %27, %35, !dbg !503
  %37 = select i1 %28, i32 -1, i32 1, !dbg !504
  %38 = select i1 %36, i32 0, i32 %37, !dbg !506
  br label %61, !dbg !506

; <label>:39:                                     ; preds = %32
  %40 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 240), align 4, !dbg !507, !tbaa !510
  %41 = icmp eq i32 %40, 0, !dbg !511
  br i1 %41, label %44, label %42, !dbg !512

; <label>:42:                                     ; preds = %39
  %43 = tail call i32 @compareStringObjects(%struct.redisObject* nonnull %27, %struct.redisObject* nonnull %31) #6, !dbg !513
  br label %61, !dbg !515

; <label>:44:                                     ; preds = %39
  %45 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %27, i64 0, i32 2, !dbg !516
  %46 = load i8*, i8** %45, align 8, !dbg !516, !tbaa !252
  %47 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %31, i64 0, i32 2, !dbg !518
  %48 = load i8*, i8** %47, align 8, !dbg !518, !tbaa !252
  %49 = tail call i32 @strcoll(i8* %46, i8* %48) #6, !dbg !519
  br label %61

; <label>:50:                                     ; preds = %21
  %51 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 240), align 4, !dbg !520, !tbaa !510
  %52 = icmp eq i32 %51, 0, !dbg !523
  %53 = bitcast i8* %0 to %struct.redisObject**, !dbg !524
  %54 = load %struct.redisObject*, %struct.redisObject** %53, align 8, !dbg !524, !tbaa !480
  %55 = bitcast i8* %1 to %struct.redisObject**, !dbg !524
  %56 = load %struct.redisObject*, %struct.redisObject** %55, align 8, !dbg !524, !tbaa !480
  br i1 %52, label %59, label %57, !dbg !526

; <label>:57:                                     ; preds = %50
  %58 = tail call i32 @compareStringObjects(%struct.redisObject* %54, %struct.redisObject* %56) #6, !dbg !527
  br label %61, !dbg !529

; <label>:59:                                     ; preds = %50
  %60 = tail call i32 @collateStringObjects(%struct.redisObject* %54, %struct.redisObject* %56) #6, !dbg !530
  br label %61

; <label>:61:                                     ; preds = %34, %13, %5, %42, %44, %59, %57, %15
  %62 = phi i32 [ %43, %42 ], [ %49, %44 ], [ %58, %57 ], [ %60, %59 ], [ %20, %15 ], [ 1, %5 ], [ -1, %13 ], [ %38, %34 ], !dbg !531
  %63 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 237), align 8, !dbg !532, !tbaa !533
  %64 = icmp eq i32 %63, 0, !dbg !534
  %65 = sub nsw i32 0, %62, !dbg !535
  %66 = select i1 %64, i32 %62, i32 %65, !dbg !534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  ret i32 %66, !dbg !536
}

; Function Attrs: noredzone
declare dso_local i32 @compareStringObjects(%struct.redisObject*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @strcoll(i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @collateStringObjects(%struct.redisObject*, %struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @sortCommand(%struct.client*) local_unnamed_addr #0 !dbg !537 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.listTypeEntry, align 8
  %5 = alloca %struct.listTypeEntry, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.listIter, align 8
  %8 = alloca %struct.listIter, align 8
  %9 = bitcast i64* %2 to i8*, !dbg !843
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #7, !dbg !843
  store i64 0, i64* %2, align 8, !dbg !844, !tbaa !319
  %10 = bitcast i64* %3 to i8*, !dbg !843
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #7, !dbg !843
  store i64 -1, i64* %3, align 8, !dbg !845, !tbaa !319
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !852
  %12 = load %struct.redisDb*, %struct.redisDb** %11, align 8, !dbg !852, !tbaa !853
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !857
  %14 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !857, !tbaa !858
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 1, !dbg !859
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !859, !tbaa !860
  %17 = tail call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %12, %struct.redisObject* %16) #6, !dbg !861
  %18 = icmp eq %struct.redisObject* %17, null, !dbg !863
  br i1 %18, label %30, label %19, !dbg !865

; <label>:19:                                     ; preds = %1
  %20 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i64 0, i32 0, !dbg !866
  %21 = load i32, i32* %20, align 8, !dbg !866
  %22 = and i32 %21, 15, !dbg !866
  %23 = add nsw i32 %22, -1, !dbg !867
  %24 = icmp ult i32 %23, 3, !dbg !867
  br i1 %24, label %27, label %25, !dbg !867

; <label>:25:                                     ; preds = %19
  %26 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !868, !tbaa !870
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %26) #6, !dbg !872
  br label %710, !dbg !873

; <label>:27:                                     ; preds = %19
  %28 = tail call %struct.list* @listCreate() #6, !dbg !874
  %29 = getelementptr inbounds %struct.list, %struct.list* %28, i64 0, i32 3, !dbg !876
  store void (i8*)* @zfree, void (i8*)** %29, align 8, !dbg !876, !tbaa !877
  tail call void @incrRefCount(%struct.redisObject* nonnull %17) #6, !dbg !880
  br label %34, !dbg !880

; <label>:30:                                     ; preds = %1
  %31 = tail call %struct.list* @listCreate() #6, !dbg !874
  %32 = getelementptr inbounds %struct.list, %struct.list* %31, i64 0, i32 3, !dbg !876
  store void (i8*)* @zfree, void (i8*)** %32, align 8, !dbg !876, !tbaa !877
  %33 = tail call %struct.redisObject* @createQuicklistObject() #6, !dbg !882
  br label %34

; <label>:34:                                     ; preds = %30, %27
  %35 = phi %struct.list* [ %28, %27 ], [ %31, %30 ]
  %36 = phi %struct.redisObject* [ %17, %27 ], [ %33, %30 ], !dbg !883
  %37 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !884
  %38 = load i32, i32* %37, align 8, !dbg !884, !tbaa !885
  %39 = icmp sgt i32 %38, 2, !dbg !886
  br i1 %39, label %40, label %148, !dbg !887

; <label>:40:                                     ; preds = %34, %134
  %41 = phi i32 [ %143, %134 ], [ %38, %34 ]
  %42 = phi i32 [ %141, %134 ], [ 0, %34 ]
  %43 = phi i32 [ %140, %134 ], [ 0, %34 ]
  %44 = phi i32 [ %142, %134 ], [ 2, %34 ]
  %45 = phi i32 [ %138, %134 ], [ 0, %34 ]
  %46 = phi i32 [ %137, %134 ], [ 0, %34 ]
  %47 = phi %struct.redisObject* [ %136, %134 ], [ null, %34 ]
  %48 = phi %struct.redisObject* [ %135, %134 ], [ null, %34 ]
  %49 = xor i32 %44, -1, !dbg !888
  %50 = add i32 %41, %49, !dbg !888
  %51 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !890, !tbaa !858
  %52 = sext i32 %44 to i64, !dbg !892
  %53 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %51, i64 %52, !dbg !892
  %54 = load %struct.redisObject*, %struct.redisObject** %53, align 8, !dbg !892, !tbaa !860
  %55 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %54, i64 0, i32 2, !dbg !893
  %56 = load i8*, i8** %55, align 8, !dbg !893, !tbaa !252
  %57 = call i32 @strcasecmp(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !894
  %58 = icmp eq i32 %57, 0, !dbg !894
  br i1 %58, label %134, label %59, !dbg !895

; <label>:59:                                     ; preds = %40
  %60 = call i32 @strcasecmp(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !896
  %61 = icmp eq i32 %60, 0, !dbg !896
  br i1 %61, label %134, label %62, !dbg !898

; <label>:62:                                     ; preds = %59
  %63 = call i32 @strcasecmp(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !899
  %64 = icmp eq i32 %63, 0, !dbg !899
  br i1 %64, label %134, label %65, !dbg !901

; <label>:65:                                     ; preds = %62
  %66 = call i32 @strcasecmp(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !902
  %67 = icmp eq i32 %66, 0, !dbg !902
  %68 = icmp sgt i32 %50, 1, !dbg !904
  %69 = and i1 %68, %67, !dbg !905
  br i1 %69, label %70, label %85, !dbg !905

; <label>:70:                                     ; preds = %65
  %71 = add nsw i32 %44, 1, !dbg !906
  %72 = sext i32 %71 to i64, !dbg !909
  %73 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %51, i64 %72, !dbg !909
  %74 = load %struct.redisObject*, %struct.redisObject** %73, align 8, !dbg !909, !tbaa !860
  %75 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %74, i64* nonnull %2, i8* null) #6, !dbg !910
  %76 = icmp eq i32 %75, 0, !dbg !911
  br i1 %76, label %77, label %145, !dbg !912

; <label>:77:                                     ; preds = %70
  %78 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !913, !tbaa !858
  %79 = add nsw i32 %44, 2, !dbg !914
  %80 = sext i32 %79 to i64, !dbg !915
  %81 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %78, i64 %80, !dbg !915
  %82 = load %struct.redisObject*, %struct.redisObject** %81, align 8, !dbg !915, !tbaa !860
  %83 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %82, i64* nonnull %3, i8* null) #6, !dbg !916
  %84 = icmp eq i32 %83, 0, !dbg !917
  br i1 %84, label %134, label %145, !dbg !918

; <label>:85:                                     ; preds = %65
  %86 = call i32 @strcasecmp(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !919
  %87 = icmp eq i32 %86, 0, !dbg !919
  %88 = icmp sgt i32 %50, 0, !dbg !921
  %89 = and i1 %88, %87, !dbg !922
  br i1 %89, label %90, label %95, !dbg !922

; <label>:90:                                     ; preds = %85
  %91 = add nsw i32 %44, 1, !dbg !923
  %92 = sext i32 %91 to i64, !dbg !925
  %93 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %51, i64 %92, !dbg !925
  %94 = load %struct.redisObject*, %struct.redisObject** %93, align 8, !dbg !925, !tbaa !860
  br label %134, !dbg !926

; <label>:95:                                     ; preds = %85
  %96 = call i32 @strcasecmp(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !927
  %97 = icmp eq i32 %96, 0, !dbg !927
  %98 = and i1 %88, %97, !dbg !929
  br i1 %98, label %99, label %112, !dbg !929

; <label>:99:                                     ; preds = %95
  %100 = add nsw i32 %44, 1, !dbg !930
  %101 = sext i32 %100 to i64, !dbg !932
  %102 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %51, i64 %101, !dbg !932
  %103 = load %struct.redisObject*, %struct.redisObject** %102, align 8, !dbg !932, !tbaa !860
  %104 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %103, i64 0, i32 2, !dbg !933
  %105 = load i8*, i8** %104, align 8, !dbg !933, !tbaa !252
  %106 = call i8* @strchr(i8* %105, i32 42) #6, !dbg !935
  %107 = icmp eq i8* %106, null, !dbg !936
  br i1 %107, label %134, label %108, !dbg !937

; <label>:108:                                    ; preds = %99
  %109 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !938, !tbaa !941
  %110 = icmp eq i32 %109, 0, !dbg !942
  br i1 %110, label %134, label %111, !dbg !943

; <label>:111:                                    ; preds = %108
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !944
  br label %145, !dbg !946

; <label>:112:                                    ; preds = %95
  %113 = call i32 @strcasecmp(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !947
  %114 = icmp eq i32 %113, 0, !dbg !947
  %115 = and i1 %88, %114, !dbg !949
  br i1 %115, label %116, label %132, !dbg !949

; <label>:116:                                    ; preds = %112
  %117 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !950, !tbaa !941
  %118 = icmp eq i32 %117, 0, !dbg !953
  br i1 %118, label %120, label %119, !dbg !954

; <label>:119:                                    ; preds = %116
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !955
  br label %145, !dbg !957

; <label>:120:                                    ; preds = %116
  %121 = add nsw i32 %44, 1, !dbg !958
  %122 = sext i32 %121 to i64, !dbg !959
  %123 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %51, i64 %122, !dbg !959
  %124 = bitcast %struct.redisObject** %123 to i64*, !dbg !959
  %125 = load i64, i64* %124, align 8, !dbg !959, !tbaa !860
  %126 = call i8* @zmalloc(i64 16) #6, !dbg !963
  %127 = bitcast i8* %126 to i32*, !dbg !965
  store i32 0, i32* %127, align 8, !dbg !966, !tbaa !177
  %128 = getelementptr inbounds i8, i8* %126, i64 8, !dbg !967
  %129 = bitcast i8* %128 to i64*, !dbg !968
  store i64 %125, i64* %129, align 8, !dbg !968, !tbaa !185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  %130 = call %struct.list* @listAddNodeTail(%struct.list* %35, i8* %126) #6, !dbg !970
  %131 = add nsw i32 %46, 1, !dbg !971
  br label %134

; <label>:132:                                    ; preds = %112
  %133 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !972, !tbaa !974
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %133) #6, !dbg !975
  br label %145, !dbg !976

; <label>:134:                                    ; preds = %90, %120, %40, %59, %62, %77, %99, %108
  %135 = phi %struct.redisObject* [ %94, %90 ], [ %48, %120 ], [ %48, %40 ], [ %48, %59 ], [ %48, %62 ], [ %48, %77 ], [ %48, %99 ], [ %48, %108 ], !dbg !977
  %136 = phi %struct.redisObject* [ %47, %90 ], [ %47, %120 ], [ %47, %40 ], [ %47, %59 ], [ %47, %62 ], [ %47, %77 ], [ %103, %99 ], [ %103, %108 ], !dbg !977
  %137 = phi i32 [ %46, %90 ], [ %131, %120 ], [ %46, %40 ], [ %46, %59 ], [ %46, %62 ], [ %46, %77 ], [ %46, %99 ], [ %46, %108 ], !dbg !977
  %138 = phi i32 [ %45, %90 ], [ %45, %120 ], [ %45, %40 ], [ %45, %59 ], [ %45, %62 ], [ %45, %77 ], [ 1, %99 ], [ %45, %108 ], !dbg !977
  %139 = phi i32 [ %91, %90 ], [ %121, %120 ], [ %44, %40 ], [ %44, %59 ], [ %44, %62 ], [ %79, %77 ], [ %100, %99 ], [ %100, %108 ], !dbg !977
  %140 = phi i32 [ %43, %90 ], [ %43, %120 ], [ %43, %40 ], [ %43, %59 ], [ 1, %62 ], [ %43, %77 ], [ %43, %99 ], [ %43, %108 ], !dbg !977
  %141 = phi i32 [ %42, %90 ], [ %42, %120 ], [ 0, %40 ], [ 1, %59 ], [ %42, %62 ], [ %42, %77 ], [ %42, %99 ], [ %42, %108 ], !dbg !978
  %142 = add nsw i32 %139, 1, !dbg !980
  %143 = load i32, i32* %37, align 8, !dbg !884, !tbaa !885
  %144 = icmp sgt i32 %143, %142, !dbg !886
  br i1 %144, label %40, label %146, !dbg !887

; <label>:145:                                    ; preds = %70, %77, %132, %119, %111
  call void @decrRefCount(%struct.redisObject* %36) #6, !dbg !981
  call void @listRelease(%struct.list* %35) #6, !dbg !984
  br label %710, !dbg !985

; <label>:146:                                    ; preds = %134
  %147 = icmp eq i32 %138, 0, !dbg !986
  br i1 %147, label %148, label %156, !dbg !988

; <label>:148:                                    ; preds = %34, %146
  %149 = phi i32 [ %141, %146 ], [ 0, %34 ]
  %150 = phi i32 [ %140, %146 ], [ 0, %34 ]
  %151 = phi i32 [ %137, %146 ], [ 0, %34 ]
  %152 = phi %struct.redisObject* [ %136, %146 ], [ null, %34 ]
  %153 = phi %struct.redisObject* [ %135, %146 ], [ null, %34 ]
  %154 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %36, i64 0, i32 0
  %155 = load i32, i32* %154, align 8, !dbg !989
  br label %169, !dbg !988

; <label>:156:                                    ; preds = %146
  %157 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %36, i64 0, i32 0, !dbg !991
  %158 = load i32, i32* %157, align 8, !dbg !991
  %159 = and i32 %158, 15, !dbg !991
  %160 = icmp eq i32 %159, 2, !dbg !992
  br i1 %160, label %161, label %169, !dbg !993

; <label>:161:                                    ; preds = %156
  %162 = icmp eq %struct.redisObject* %135, null, !dbg !994
  br i1 %162, label %163, label %168, !dbg !995

; <label>:163:                                    ; preds = %161
  %164 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !996
  %165 = load i32, i32* %164, align 8, !dbg !996, !tbaa !997
  %166 = and i32 %165, 256, !dbg !998
  %167 = icmp eq i32 %166, 0, !dbg !998
  br i1 %167, label %169, label %168, !dbg !999

; <label>:168:                                    ; preds = %163, %161
  br label %169, !dbg !1000

; <label>:169:                                    ; preds = %148, %163, %168, %156
  %170 = phi i32 [ %149, %148 ], [ %141, %163 ], [ %141, %168 ], [ %141, %156 ]
  %171 = phi i32 [ %151, %148 ], [ %137, %163 ], [ %137, %168 ], [ %137, %156 ]
  %172 = phi %struct.redisObject* [ %153, %148 ], [ null, %163 ], [ %135, %168 ], [ %135, %156 ]
  %173 = phi i32* [ %154, %148 ], [ %157, %163 ], [ %157, %168 ], [ %157, %156 ], !dbg !989
  %174 = phi i32 [ %155, %148 ], [ %158, %163 ], [ %158, %168 ], [ %158, %156 ], !dbg !989
  %175 = phi %struct.redisObject* [ %152, %148 ], [ %136, %163 ], [ null, %168 ], [ %136, %156 ], !dbg !977
  %176 = phi i32 [ 0, %148 ], [ %138, %163 ], [ 0, %168 ], [ %138, %156 ], !dbg !977
  %177 = phi i32 [ %150, %148 ], [ %140, %163 ], [ 1, %168 ], [ %140, %156 ], !dbg !977
  %178 = and i32 %174, 15, !dbg !989
  %179 = icmp eq i32 %178, 3, !dbg !1002
  br i1 %179, label %180, label %182, !dbg !1003

; <label>:180:                                    ; preds = %169
  call void @zsetConvert(%struct.redisObject* nonnull %36, i32 7) #6, !dbg !1004
  %181 = load i32, i32* %173, align 8, !dbg !1005
  br label %182, !dbg !1004

; <label>:182:                                    ; preds = %180, %169
  %183 = phi i32 [ %181, %180 ], [ %174, %169 ], !dbg !1005
  %184 = trunc i32 %183 to i4, !dbg !1006
  switch i4 %184, label %200 [
    i4 1, label %185
    i4 2, label %187
    i4 3, label %189
  ], !dbg !1006

; <label>:185:                                    ; preds = %182
  %186 = call i64 @listTypeLength(%struct.redisObject* nonnull %36) #6, !dbg !1007
  br label %201, !dbg !1009

; <label>:187:                                    ; preds = %182
  %188 = call i64 @setTypeSize(%struct.redisObject* nonnull %36) #6, !dbg !1010
  br label %201, !dbg !1011

; <label>:189:                                    ; preds = %182
  %190 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %36, i64 0, i32 2, !dbg !1012
  %191 = bitcast i8** %190 to %struct.zset**, !dbg !1012
  %192 = load %struct.zset*, %struct.zset** %191, align 8, !dbg !1012, !tbaa !252
  %193 = getelementptr inbounds %struct.zset, %struct.zset* %192, i64 0, i32 0, !dbg !1012
  %194 = load %struct.dict*, %struct.dict** %193, align 8, !dbg !1012, !tbaa !1013
  %195 = getelementptr inbounds %struct.dict, %struct.dict* %194, i64 0, i32 2, i64 0, i32 3, !dbg !1012
  %196 = load i64, i64* %195, align 8, !dbg !1012, !tbaa !1015
  %197 = getelementptr inbounds %struct.dict, %struct.dict* %194, i64 0, i32 2, i64 1, i32 3, !dbg !1012
  %198 = load i64, i64* %197, align 8, !dbg !1012, !tbaa !1015
  %199 = add i64 %198, %196, !dbg !1012
  br label %201, !dbg !1017

; <label>:200:                                    ; preds = %182
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0), i32 313, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !1019
  call void @_exit(i32 1) #9, !dbg !1019
  unreachable, !dbg !1019

; <label>:201:                                    ; preds = %189, %187, %185
  %202 = phi i64 [ %199, %189 ], [ %188, %187 ], [ %186, %185 ]
  %203 = trunc i64 %202 to i32, !dbg !1020
  %204 = load i64, i64* %2, align 8, !dbg !1021, !tbaa !319
  %205 = icmp sgt i64 %204, 0, !dbg !1022
  %206 = select i1 %205, i64 %204, i64 0, !dbg !1022
  %207 = load i64, i64* %3, align 8, !dbg !1024, !tbaa !319
  %208 = icmp slt i64 %207, 0, !dbg !1025
  br i1 %208, label %209, label %213, !dbg !1026

; <label>:209:                                    ; preds = %201
  %210 = shl i64 %202, 32, !dbg !1027
  %211 = add i64 %210, -4294967296, !dbg !1027
  %212 = ashr exact i64 %211, 32, !dbg !1027
  br label %217, !dbg !1026

; <label>:213:                                    ; preds = %201
  %214 = add i64 %207, -1, !dbg !1028
  %215 = add i64 %214, %206, !dbg !1029
  %216 = shl i64 %202, 32, !dbg !1030
  br label %217, !dbg !1026

; <label>:217:                                    ; preds = %213, %209
  %218 = phi i64 [ %216, %213 ], [ %210, %209 ], !dbg !1030
  %219 = phi i64 [ %215, %213 ], [ %212, %209 ], !dbg !1026
  %220 = ashr exact i64 %218, 32, !dbg !1030
  %221 = icmp slt i64 %206, %220, !dbg !1033
  %222 = add i64 %218, -4294967296, !dbg !1034
  %223 = ashr exact i64 %222, 32, !dbg !1034
  %224 = add i64 %218, -8589934592, !dbg !1036
  %225 = ashr exact i64 %224, 32, !dbg !1036
  %226 = select i1 %221, i64 %219, i64 %225, !dbg !1037
  %227 = select i1 %221, i64 %206, i64 %223, !dbg !1037
  %228 = icmp slt i64 %226, %220, !dbg !1038
  %229 = select i1 %228, i64 %226, i64 %223, !dbg !1040
  %230 = load i32, i32* %173, align 8, !dbg !1041
  %231 = and i32 %230, 15, !dbg !1041
  %232 = icmp eq i32 %231, 3, !dbg !1043
  br i1 %232, label %237, label %233, !dbg !1044

; <label>:233:                                    ; preds = %217
  %234 = icmp eq i32 %231, 1, !dbg !1045
  %235 = icmp ne i32 %176, 0, !dbg !1046
  %236 = and i1 %235, %234, !dbg !1047
  br i1 %236, label %239, label %247, !dbg !1047

; <label>:237:                                    ; preds = %217
  %238 = icmp eq i32 %176, 0, !dbg !1046
  br i1 %238, label %247, label %239, !dbg !1048

; <label>:239:                                    ; preds = %237, %233
  %240 = icmp eq i64 %227, 0, !dbg !1049
  %241 = icmp eq i64 %229, %223, !dbg !1050
  %242 = and i1 %240, %241, !dbg !1051
  br i1 %242, label %247, label %243, !dbg !1051

; <label>:243:                                    ; preds = %239
  %244 = sub nsw i64 %229, %227, !dbg !1052
  %245 = trunc i64 %244 to i32, !dbg !1054
  %246 = add i32 %245, 1, !dbg !1054
  br label %247, !dbg !1055

; <label>:247:                                    ; preds = %239, %237, %243, %233
  %248 = phi i32 [ %246, %243 ], [ %203, %237 ], [ %203, %233 ], [ %203, %239 ], !dbg !1020
  %249 = sext i32 %248 to i64, !dbg !1056
  %250 = shl nsw i64 %249, 4, !dbg !1057
  %251 = call i8* @zmalloc(i64 %250) #6, !dbg !1058
  %252 = bitcast i8* %251 to %struct._redisSortObject*, !dbg !1058
  %253 = load i32, i32* %173, align 8, !dbg !1060
  %254 = and i32 %253, 15, !dbg !1060
  %255 = icmp eq i32 %254, 1, !dbg !1061
  %256 = icmp ne i32 %176, 0, !dbg !1062
  %257 = and i1 %256, %255, !dbg !1063
  br i1 %257, label %258, label %291, !dbg !1063

; <label>:258:                                    ; preds = %247
  %259 = icmp slt i64 %229, %227, !dbg !1064
  br i1 %259, label %470, label %260, !dbg !1065

; <label>:260:                                    ; preds = %258
  %261 = bitcast %struct.listTypeEntry* %4 to i8*, !dbg !1066
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %261) #7, !dbg !1066
  %262 = icmp ne i32 %170, 0, !dbg !1067
  br i1 %262, label %263, label %267, !dbg !1067

; <label>:263:                                    ; preds = %260
  %264 = call i64 @listTypeLength(%struct.redisObject* nonnull %36) #6, !dbg !1068
  %265 = xor i64 %227, -1, !dbg !1069
  %266 = add i64 %264, %265, !dbg !1069
  br label %267, !dbg !1067

; <label>:267:                                    ; preds = %260, %263
  %268 = phi i64 [ %266, %263 ], [ %227, %260 ], !dbg !1067
  %269 = xor i1 %262, true, !dbg !1070
  %270 = zext i1 %269 to i8, !dbg !1070
  %271 = call %struct.listTypeIterator* @listTypeInitIterator(%struct.redisObject* nonnull %36, i64 %268, i8 zeroext %270) #6, !dbg !1071
  %272 = icmp sgt i32 %248, 0, !dbg !1073
  br i1 %272, label %273, label %288, !dbg !1074

; <label>:273:                                    ; preds = %267, %278
  %274 = phi i64 [ %283, %278 ], [ 0, %267 ]
  %275 = phi i32 [ %284, %278 ], [ 0, %267 ]
  %276 = call i32 @listTypeNext(%struct.listTypeIterator* %271, %struct.listTypeEntry* nonnull %4) #6, !dbg !1076
  %277 = icmp eq i32 %276, 0, !dbg !1074
  br i1 %277, label %286, label %278, !dbg !1077

; <label>:278:                                    ; preds = %273
  %279 = call %struct.redisObject* @listTypeGet(%struct.listTypeEntry* nonnull %4) #6, !dbg !1078
  %280 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %252, i64 %274, i32 0, !dbg !1080
  store %struct.redisObject* %279, %struct.redisObject** %280, align 8, !dbg !1081, !tbaa !480
  %281 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %252, i64 %274, i32 1, !dbg !1082
  %282 = bitcast %union.anon.0* %281 to %struct.redisObject**, !dbg !1083
  store %struct.redisObject* null, %struct.redisObject** %282, align 8, !dbg !1084, !tbaa !257
  %283 = add nuw nsw i64 %274, 1, !dbg !1085
  %284 = add nuw nsw i32 %275, 1, !dbg !1085
  %285 = icmp slt i64 %283, %249, !dbg !1073
  br i1 %285, label %273, label %288, !dbg !1074, !llvm.loop !1086

; <label>:286:                                    ; preds = %273
  %287 = trunc i64 %274 to i32, !dbg !1077
  br label %288, !dbg !1088

; <label>:288:                                    ; preds = %278, %286, %267
  %289 = phi i32 [ 0, %267 ], [ %287, %286 ], [ %284, %278 ], !dbg !1089
  call void @listTypeReleaseIterator(%struct.listTypeIterator* %271) #6, !dbg !1088
  %290 = sub nsw i64 %229, %227, !dbg !1090
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %261) #7, !dbg !1091
  br label %470, !dbg !1092

; <label>:291:                                    ; preds = %247
  br i1 %255, label %292, label %310, !dbg !1093

; <label>:292:                                    ; preds = %291
  %293 = call %struct.listTypeIterator* @listTypeInitIterator(%struct.redisObject* nonnull %36, i64 0, i8 zeroext 1) #6, !dbg !1094
  %294 = bitcast %struct.listTypeEntry* %5 to i8*, !dbg !1096
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %294) #7, !dbg !1096
  %295 = call i32 @listTypeNext(%struct.listTypeIterator* %293, %struct.listTypeEntry* nonnull %5) #6, !dbg !1098
  %296 = icmp eq i32 %295, 0, !dbg !1099
  br i1 %296, label %308, label %297, !dbg !1099

; <label>:297:                                    ; preds = %292, %297
  %298 = phi i64 [ %303, %297 ], [ 0, %292 ]
  %299 = call %struct.redisObject* @listTypeGet(%struct.listTypeEntry* nonnull %5) #6, !dbg !1100
  %300 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %252, i64 %298, i32 0, !dbg !1102
  store %struct.redisObject* %299, %struct.redisObject** %300, align 8, !dbg !1103, !tbaa !480
  %301 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %252, i64 %298, i32 1, !dbg !1104
  %302 = bitcast %union.anon.0* %301 to %struct.redisObject**, !dbg !1105
  store %struct.redisObject* null, %struct.redisObject** %302, align 8, !dbg !1106, !tbaa !257
  %303 = add nuw i64 %298, 1, !dbg !1107
  %304 = call i32 @listTypeNext(%struct.listTypeIterator* %293, %struct.listTypeEntry* nonnull %5) #6, !dbg !1098
  %305 = icmp eq i32 %304, 0, !dbg !1099
  br i1 %305, label %306, label %297, !dbg !1099, !llvm.loop !1108

; <label>:306:                                    ; preds = %297
  %307 = trunc i64 %303 to i32, !dbg !1110
  br label %308, !dbg !1110

; <label>:308:                                    ; preds = %306, %292
  %309 = phi i32 [ 0, %292 ], [ %307, %306 ], !dbg !1111
  call void @listTypeReleaseIterator(%struct.listTypeIterator* %293) #6, !dbg !1110
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %294) #7, !dbg !1112
  br label %470, !dbg !1113

; <label>:310:                                    ; preds = %291
  %311 = icmp eq i32 %254, 2, !dbg !1114
  br i1 %311, label %312, label %330, !dbg !1115

; <label>:312:                                    ; preds = %310
  %313 = call %struct.setTypeIterator* @setTypeInitIterator(%struct.redisObject* nonnull %36) #6, !dbg !1116
  %314 = call i8* @setTypeNextObject(%struct.setTypeIterator* %313) #6, !dbg !1118
  %315 = icmp eq i8* %314, null, !dbg !1120
  br i1 %315, label %328, label %316, !dbg !1121

; <label>:316:                                    ; preds = %312, %316
  %317 = phi i64 [ %323, %316 ], [ 0, %312 ]
  %318 = phi i8* [ %324, %316 ], [ %314, %312 ]
  %319 = call %struct.redisObject* @createObject(i32 0, i8* nonnull %318) #6, !dbg !1122
  %320 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %252, i64 %317, i32 0, !dbg !1124
  store %struct.redisObject* %319, %struct.redisObject** %320, align 8, !dbg !1125, !tbaa !480
  %321 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %252, i64 %317, i32 1, !dbg !1126
  %322 = bitcast %union.anon.0* %321 to %struct.redisObject**, !dbg !1127
  store %struct.redisObject* null, %struct.redisObject** %322, align 8, !dbg !1128, !tbaa !257
  %323 = add nuw i64 %317, 1, !dbg !1129
  %324 = call i8* @setTypeNextObject(%struct.setTypeIterator* %313) #6, !dbg !1118
  %325 = icmp eq i8* %324, null, !dbg !1120
  br i1 %325, label %326, label %316, !dbg !1121, !llvm.loop !1130

; <label>:326:                                    ; preds = %316
  %327 = trunc i64 %323 to i32, !dbg !1132
  br label %328, !dbg !1132

; <label>:328:                                    ; preds = %326, %312
  %329 = phi i32 [ 0, %312 ], [ %327, %326 ], !dbg !1133
  call void @setTypeReleaseIterator(%struct.setTypeIterator* %313) #6, !dbg !1132
  br label %470, !dbg !1134

; <label>:330:                                    ; preds = %310
  %331 = icmp eq i32 %254, 3, !dbg !1135
  %332 = and i1 %256, %331, !dbg !1136
  br i1 %332, label %333, label %417, !dbg !1136

; <label>:333:                                    ; preds = %330
  %334 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %36, i64 0, i32 2, !dbg !1137
  %335 = bitcast i8** %334 to %struct.zset**, !dbg !1137
  %336 = load %struct.zset*, %struct.zset** %335, align 8, !dbg !1137, !tbaa !252
  %337 = getelementptr inbounds %struct.zset, %struct.zset* %336, i64 0, i32 1, !dbg !1139
  %338 = load %struct.zskiplist*, %struct.zskiplist** %337, align 8, !dbg !1139, !tbaa !1140
  %339 = icmp ne i32 %170, 0, !dbg !1143
  br i1 %339, label %340, label %354, !dbg !1144

; <label>:340:                                    ; preds = %333
  %341 = getelementptr inbounds %struct.zset, %struct.zset* %336, i64 0, i32 0, !dbg !1145
  %342 = load %struct.dict*, %struct.dict** %341, align 8, !dbg !1145, !tbaa !1013
  %343 = getelementptr inbounds %struct.zskiplist, %struct.zskiplist* %338, i64 0, i32 1, !dbg !1146
  %344 = load %struct.zskiplistNode*, %struct.zskiplistNode** %343, align 8, !dbg !1146, !tbaa !1147
  %345 = icmp sgt i64 %227, 0, !dbg !1150
  br i1 %345, label %346, label %363, !dbg !1152

; <label>:346:                                    ; preds = %340
  %347 = getelementptr inbounds %struct.dict, %struct.dict* %342, i64 0, i32 2, i64 0, i32 3, !dbg !1145
  %348 = load i64, i64* %347, align 8, !dbg !1145, !tbaa !1015
  %349 = getelementptr inbounds %struct.dict, %struct.dict* %342, i64 0, i32 2, i64 1, i32 3, !dbg !1145
  %350 = load i64, i64* %349, align 8, !dbg !1145, !tbaa !1015
  %351 = sub i64 %348, %227, !dbg !1145
  %352 = add i64 %351, %350, !dbg !1154
  %353 = call %struct.zskiplistNode* @zslGetElementByRank(%struct.zskiplist* nonnull %338, i64 %352) #6, !dbg !1155
  br label %363, !dbg !1156

; <label>:354:                                    ; preds = %333
  %355 = getelementptr inbounds %struct.zskiplist, %struct.zskiplist* %338, i64 0, i32 0, !dbg !1157
  %356 = load %struct.zskiplistNode*, %struct.zskiplistNode** %355, align 8, !dbg !1157, !tbaa !1159
  %357 = getelementptr inbounds %struct.zskiplistNode, %struct.zskiplistNode* %356, i64 0, i32 3, i64 0, i32 0, !dbg !1160
  %358 = load %struct.zskiplistNode*, %struct.zskiplistNode** %357, align 8, !dbg !1160, !tbaa !1161
  %359 = icmp sgt i64 %227, 0, !dbg !1163
  br i1 %359, label %360, label %363, !dbg !1165

; <label>:360:                                    ; preds = %354
  %361 = add nsw i64 %227, 1, !dbg !1166
  %362 = call %struct.zskiplistNode* @zslGetElementByRank(%struct.zskiplist* nonnull %338, i64 %361) #6, !dbg !1167
  br label %363, !dbg !1168

; <label>:363:                                    ; preds = %340, %346, %354, %360
  %364 = phi %struct.zskiplistNode* [ %362, %360 ], [ %358, %354 ], [ %353, %346 ], [ %344, %340 ], !dbg !1169
  %365 = icmp eq i32 %248, 0, !dbg !1170
  br i1 %365, label %414, label %366, !dbg !1170

; <label>:366:                                    ; preds = %363, %400
  %367 = phi i64 [ %406, %400 ], [ 0, %363 ]
  %368 = phi i32 [ %370, %400 ], [ %248, %363 ]
  %369 = phi %struct.zskiplistNode* [ %410, %400 ], [ %364, %363 ]
  %370 = add nsw i32 %368, -1, !dbg !1171
  %371 = icmp eq %struct.zskiplistNode* %369, null, !dbg !1172
  br i1 %371, label %372, label %373, !dbg !1172

; <label>:372:                                    ; preds = %366
  call void @_serverAssertWithInfo(%struct.client* %0, %struct.redisObject* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0), i32 419) #6, !dbg !1172
  call void @_exit(i32 1) #9, !dbg !1172
  unreachable, !dbg !1172

; <label>:373:                                    ; preds = %366
  %374 = getelementptr inbounds %struct.zskiplistNode, %struct.zskiplistNode* %369, i64 0, i32 0, !dbg !1174
  %375 = load i8*, i8** %374, align 8, !dbg !1174, !tbaa !860
  %376 = getelementptr inbounds i8, i8* %375, i64 -1, !dbg !1178
  %377 = load i8, i8* %376, align 1, !dbg !1178, !tbaa !257
  %378 = trunc i8 %377 to i3, !dbg !1180
  switch i3 %378, label %400 [
    i3 0, label %379
    i3 1, label %382
    i3 2, label %386
    i3 3, label %391
    i3 -4, label %396
  ], !dbg !1180

; <label>:379:                                    ; preds = %373
  %380 = lshr i8 %377, 3, !dbg !1181
  %381 = zext i8 %380 to i64, !dbg !1181
  br label %400, !dbg !1182

; <label>:382:                                    ; preds = %373
  %383 = getelementptr inbounds i8, i8* %375, i64 -3, !dbg !1183
  %384 = load i8, i8* %383, align 1, !dbg !1184, !tbaa !257
  %385 = zext i8 %384 to i64, !dbg !1183
  br label %400, !dbg !1185

; <label>:386:                                    ; preds = %373
  %387 = getelementptr inbounds i8, i8* %375, i64 -5, !dbg !1186
  %388 = bitcast i8* %387 to i16*, !dbg !1187
  %389 = load i16, i16* %388, align 1, !dbg !1187, !tbaa !310
  %390 = zext i16 %389 to i64, !dbg !1186
  br label %400, !dbg !1188

; <label>:391:                                    ; preds = %373
  %392 = getelementptr inbounds i8, i8* %375, i64 -9, !dbg !1189
  %393 = bitcast i8* %392 to i32*, !dbg !1190
  %394 = load i32, i32* %393, align 1, !dbg !1190, !tbaa !315
  %395 = zext i32 %394 to i64, !dbg !1189
  br label %400, !dbg !1191

; <label>:396:                                    ; preds = %373
  %397 = getelementptr inbounds i8, i8* %375, i64 -17, !dbg !1192
  %398 = bitcast i8* %397 to i64*, !dbg !1193
  %399 = load i64, i64* %398, align 1, !dbg !1193, !tbaa !319
  br label %400, !dbg !1194

; <label>:400:                                    ; preds = %373, %379, %382, %386, %391, %396
  %401 = phi i64 [ %399, %396 ], [ %395, %391 ], [ %390, %386 ], [ %385, %382 ], [ %381, %379 ], [ 0, %373 ], !dbg !1195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1196
  %402 = call %struct.redisObject* @createStringObject(i8* %375, i64 %401) #6, !dbg !1197
  %403 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %252, i64 %367, i32 0, !dbg !1198
  store %struct.redisObject* %402, %struct.redisObject** %403, align 8, !dbg !1199, !tbaa !480
  %404 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %252, i64 %367, i32 1, !dbg !1200
  %405 = bitcast %union.anon.0* %404 to %struct.redisObject**, !dbg !1201
  store %struct.redisObject* null, %struct.redisObject** %405, align 8, !dbg !1202, !tbaa !257
  %406 = add nuw nsw i64 %367, 1, !dbg !1203
  %407 = getelementptr inbounds %struct.zskiplistNode, %struct.zskiplistNode* %369, i64 0, i32 2, !dbg !1204
  %408 = getelementptr inbounds %struct.zskiplistNode, %struct.zskiplistNode* %369, i64 0, i32 3, i64 0, i32 0, !dbg !1205
  %409 = select i1 %339, %struct.zskiplistNode** %407, %struct.zskiplistNode** %408, !dbg !1206
  %410 = load %struct.zskiplistNode*, %struct.zskiplistNode** %409, align 8, !dbg !1206, !tbaa !860
  %411 = icmp eq i32 %370, 0, !dbg !1170
  br i1 %411, label %412, label %366, !dbg !1170, !llvm.loop !1207

; <label>:412:                                    ; preds = %400
  %413 = trunc i64 %406 to i32, !dbg !1209
  br label %414, !dbg !1209

; <label>:414:                                    ; preds = %412, %363
  %415 = phi i32 [ 0, %363 ], [ %413, %412 ], !dbg !1210
  %416 = sub nsw i64 %229, %227, !dbg !1209
  br label %470, !dbg !1211

; <label>:417:                                    ; preds = %330
  br i1 %331, label %418, label %469, !dbg !1212

; <label>:418:                                    ; preds = %417
  %419 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %36, i64 0, i32 2, !dbg !1213
  %420 = bitcast i8** %419 to %struct.zset**, !dbg !1213
  %421 = load %struct.zset*, %struct.zset** %420, align 8, !dbg !1213, !tbaa !252
  %422 = getelementptr inbounds %struct.zset, %struct.zset* %421, i64 0, i32 0, !dbg !1214
  %423 = load %struct.dict*, %struct.dict** %422, align 8, !dbg !1214, !tbaa !1013
  %424 = call %struct.dictIterator* @dictGetIterator(%struct.dict* %423) #6, !dbg !1216
  %425 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %424) #6, !dbg !1218
  %426 = icmp eq %struct.dictEntry* %425, null, !dbg !1220
  br i1 %426, label %467, label %427, !dbg !1221

; <label>:427:                                    ; preds = %418, %456
  %428 = phi i64 [ %462, %456 ], [ 0, %418 ]
  %429 = phi %struct.dictEntry* [ %463, %456 ], [ %425, %418 ]
  %430 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %429, i64 0, i32 0, !dbg !1222
  %431 = load i8*, i8** %430, align 8, !dbg !1222, !tbaa !1224
  %432 = getelementptr inbounds i8, i8* %431, i64 -1, !dbg !1229
  %433 = load i8, i8* %432, align 1, !dbg !1229, !tbaa !257
  %434 = trunc i8 %433 to i3, !dbg !1231
  switch i3 %434, label %456 [
    i3 0, label %435
    i3 1, label %438
    i3 2, label %442
    i3 3, label %447
    i3 -4, label %452
  ], !dbg !1231

; <label>:435:                                    ; preds = %427
  %436 = lshr i8 %433, 3, !dbg !1232
  %437 = zext i8 %436 to i64, !dbg !1232
  br label %456, !dbg !1233

; <label>:438:                                    ; preds = %427
  %439 = getelementptr inbounds i8, i8* %431, i64 -3, !dbg !1234
  %440 = load i8, i8* %439, align 1, !dbg !1235, !tbaa !257
  %441 = zext i8 %440 to i64, !dbg !1234
  br label %456, !dbg !1236

; <label>:442:                                    ; preds = %427
  %443 = getelementptr inbounds i8, i8* %431, i64 -5, !dbg !1237
  %444 = bitcast i8* %443 to i16*, !dbg !1238
  %445 = load i16, i16* %444, align 1, !dbg !1238, !tbaa !310
  %446 = zext i16 %445 to i64, !dbg !1237
  br label %456, !dbg !1239

; <label>:447:                                    ; preds = %427
  %448 = getelementptr inbounds i8, i8* %431, i64 -9, !dbg !1240
  %449 = bitcast i8* %448 to i32*, !dbg !1241
  %450 = load i32, i32* %449, align 1, !dbg !1241, !tbaa !315
  %451 = zext i32 %450 to i64, !dbg !1240
  br label %456, !dbg !1242

; <label>:452:                                    ; preds = %427
  %453 = getelementptr inbounds i8, i8* %431, i64 -17, !dbg !1243
  %454 = bitcast i8* %453 to i64*, !dbg !1244
  %455 = load i64, i64* %454, align 1, !dbg !1244, !tbaa !319
  br label %456, !dbg !1245

; <label>:456:                                    ; preds = %427, %435, %438, %442, %447, %452
  %457 = phi i64 [ %455, %452 ], [ %451, %447 ], [ %446, %442 ], [ %441, %438 ], [ %437, %435 ], [ 0, %427 ], !dbg !1246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  %458 = call %struct.redisObject* @createStringObject(i8* %431, i64 %457) #6, !dbg !1248
  %459 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %252, i64 %428, i32 0, !dbg !1249
  store %struct.redisObject* %458, %struct.redisObject** %459, align 8, !dbg !1250, !tbaa !480
  %460 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %252, i64 %428, i32 1, !dbg !1251
  %461 = bitcast %union.anon.0* %460 to %struct.redisObject**, !dbg !1252
  store %struct.redisObject* null, %struct.redisObject** %461, align 8, !dbg !1253, !tbaa !257
  %462 = add nuw i64 %428, 1, !dbg !1254
  %463 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %424) #6, !dbg !1218
  %464 = icmp eq %struct.dictEntry* %463, null, !dbg !1220
  br i1 %464, label %465, label %427, !dbg !1221, !llvm.loop !1255

; <label>:465:                                    ; preds = %456
  %466 = trunc i64 %462 to i32, !dbg !1257
  br label %467, !dbg !1257

; <label>:467:                                    ; preds = %465, %418
  %468 = phi i32 [ 0, %418 ], [ %466, %465 ], !dbg !1258
  call void @dictReleaseIterator(%struct.dictIterator* %424) #6, !dbg !1257
  br label %470

; <label>:469:                                    ; preds = %417
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0), i32 445, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !1259
  call void @_exit(i32 1) #9, !dbg !1259
  unreachable, !dbg !1259

; <label>:470:                                    ; preds = %258, %308, %414, %467, %328, %288
  %471 = phi i32 [ %289, %288 ], [ 0, %258 ], [ %309, %308 ], [ %329, %328 ], [ %415, %414 ], [ %468, %467 ], !dbg !1261
  %472 = phi i64 [ %290, %288 ], [ %229, %258 ], [ %229, %308 ], [ %229, %328 ], [ %416, %414 ], [ %229, %467 ], !dbg !1262
  %473 = phi i64 [ 0, %288 ], [ %227, %258 ], [ %227, %308 ], [ %227, %328 ], [ 0, %414 ], [ %227, %467 ], !dbg !1034
  %474 = icmp eq i32 %471, %248, !dbg !1263
  br i1 %474, label %476, label %475, !dbg !1263

; <label>:475:                                    ; preds = %470
  call void @_serverAssertWithInfo(%struct.client* %0, %struct.redisObject* %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0), i32 447) #6, !dbg !1263
  call void @_exit(i32 1) #9, !dbg !1263
  unreachable, !dbg !1263

; <label>:476:                                    ; preds = %470
  br i1 %256, label %555, label %477, !dbg !1264

; <label>:477:                                    ; preds = %476
  %478 = icmp sgt i32 %248, 0, !dbg !1265
  br i1 %478, label %479, label %541, !dbg !1266

; <label>:479:                                    ; preds = %477
  %480 = icmp ne %struct.redisObject* %175, null
  %481 = icmp eq i32 %177, 0
  %482 = bitcast i8** %6 to i8*
  br label %483, !dbg !1266

; <label>:483:                                    ; preds = %479, %537
  %484 = phi i64 [ 0, %479 ], [ %539, %537 ]
  %485 = phi i32 [ 0, %479 ], [ %538, %537 ]
  br i1 %480, label %486, label %492, !dbg !1267

; <label>:486:                                    ; preds = %483
  %487 = load %struct.redisDb*, %struct.redisDb** %11, align 8, !dbg !1268, !tbaa !853
  %488 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %252, i64 %484, i32 0, !dbg !1271
  %489 = load %struct.redisObject*, %struct.redisObject** %488, align 8, !dbg !1271, !tbaa !480
  %490 = call %struct.redisObject* @lookupKeyByPattern(%struct.redisDb* %487, %struct.redisObject* nonnull %175, %struct.redisObject* %489) #10, !dbg !1272
  %491 = icmp eq %struct.redisObject* %490, null, !dbg !1274
  br i1 %491, label %537, label %495, !dbg !1276

; <label>:492:                                    ; preds = %483
  %493 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %252, i64 %484, i32 0, !dbg !1277
  %494 = load %struct.redisObject*, %struct.redisObject** %493, align 8, !dbg !1277, !tbaa !480
  br label %495

; <label>:495:                                    ; preds = %486, %492
  %496 = phi %struct.redisObject* [ %490, %486 ], [ %494, %492 ], !dbg !1279
  br i1 %481, label %502, label %497, !dbg !1280

; <label>:497:                                    ; preds = %495
  br i1 %480, label %498, label %537, !dbg !1281

; <label>:498:                                    ; preds = %497
  %499 = call %struct.redisObject* @getDecodedObject(%struct.redisObject* %496) #6, !dbg !1283
  %500 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %252, i64 %484, i32 1, !dbg !1285
  %501 = bitcast %union.anon.0* %500 to %struct.redisObject**, !dbg !1286
  store %struct.redisObject* %499, %struct.redisObject** %501, align 8, !dbg !1287, !tbaa !257
  br label %535, !dbg !1288

; <label>:502:                                    ; preds = %495
  %503 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %496, i64 0, i32 0, !dbg !1289
  %504 = load i32, i32* %503, align 8, !dbg !1289
  %505 = lshr i32 %504, 4, !dbg !1289
  %506 = trunc i32 %505 to i4, !dbg !1289
  switch i4 %506, label %532 [
    i4 0, label %507
    i4 -8, label %507
    i4 1, label %526
  ], !dbg !1289

; <label>:507:                                    ; preds = %502, %502
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %482) #7, !dbg !1290
  %508 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %496, i64 0, i32 2, !dbg !1291
  %509 = load i8*, i8** %508, align 8, !dbg !1291, !tbaa !252
  %510 = call double @strtod(i8* %509, i8** nonnull %6) #6, !dbg !1293
  %511 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %252, i64 %484, i32 1, i32 0, !dbg !1294
  store double %510, double* %511, align 8, !dbg !1295, !tbaa !257
  %512 = load i8*, i8** %6, align 8, !dbg !1296, !tbaa !860
  %513 = load i8, i8* %512, align 1, !dbg !1296, !tbaa !257
  %514 = icmp eq i8 %513, 0, !dbg !1298
  br i1 %514, label %515, label %523, !dbg !1299

; <label>:515:                                    ; preds = %507
  %516 = call i32* @__errno() #6, !dbg !1300
  %517 = load i32, i32* %516, align 4, !dbg !1300, !tbaa !315
  %518 = icmp eq i32 %517, 34, !dbg !1301
  br i1 %518, label %523, label %519, !dbg !1302

; <label>:519:                                    ; preds = %515
  %520 = load double, double* %511, align 8, !dbg !1303, !tbaa !257
  %521 = call i32 @__fpclassifyd(double %520) #6, !dbg !1303
  %522 = icmp eq i32 %521, 0, !dbg !1303
  br i1 %522, label %523, label %524, !dbg !1304

; <label>:523:                                    ; preds = %507, %519, %515
  br label %524, !dbg !1305

; <label>:524:                                    ; preds = %523, %519
  %525 = phi i32 [ 1, %523 ], [ %485, %519 ], !dbg !977
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %482) #7, !dbg !1307
  br label %533, !dbg !1308

; <label>:526:                                    ; preds = %502
  %527 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %496, i64 0, i32 2, !dbg !1309
  %528 = bitcast i8** %527 to i64*, !dbg !1309
  %529 = load i64, i64* %528, align 8, !dbg !1309, !tbaa !252
  %530 = sitofp i64 %529 to double, !dbg !1312
  %531 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %252, i64 %484, i32 1, i32 0, !dbg !1313
  store double %530, double* %531, align 8, !dbg !1314, !tbaa !257
  br label %533

; <label>:532:                                    ; preds = %502
  call void @_serverAssertWithInfo(%struct.client* %0, %struct.redisObject* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0), i32 480) #6, !dbg !1315
  call void @_exit(i32 1) #9, !dbg !1315
  unreachable, !dbg !1315

; <label>:533:                                    ; preds = %524, %526
  %534 = phi i32 [ %525, %524 ], [ %485, %526 ], !dbg !977
  br i1 %480, label %535, label %537, !dbg !1288

; <label>:535:                                    ; preds = %498, %533
  %536 = phi i32 [ %485, %498 ], [ %534, %533 ]
  call void @decrRefCount(%struct.redisObject* %496) #6, !dbg !1317
  br label %537, !dbg !1320

; <label>:537:                                    ; preds = %497, %533, %535, %486
  %538 = phi i32 [ %485, %486 ], [ %536, %535 ], [ %534, %533 ], [ %485, %497 ], !dbg !848
  %539 = add nuw nsw i64 %484, 1, !dbg !1321
  %540 = icmp slt i64 %539, %249, !dbg !1265
  br i1 %540, label %483, label %541, !dbg !1266, !llvm.loop !1322

; <label>:541:                                    ; preds = %537, %477
  %542 = phi i32 [ 0, %477 ], [ %538, %537 ], !dbg !848
  store i32 %170, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 237), align 8, !dbg !1324, !tbaa !533
  store i32 %177, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 238), align 4, !dbg !1325, !tbaa !458
  %543 = icmp ne %struct.redisObject* %175, null, !dbg !1326
  %544 = zext i1 %543 to i32, !dbg !1326
  store i32 %544, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 239), align 8, !dbg !1327, !tbaa !488
  %545 = icmp ne %struct.redisObject* %172, null, !dbg !1328
  %546 = zext i1 %545 to i32, !dbg !1328
  store i32 %546, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 240), align 4, !dbg !1329, !tbaa !510
  br i1 %543, label %547, label %554, !dbg !1330

; <label>:547:                                    ; preds = %541
  %548 = icmp eq i64 %473, 0, !dbg !1332
  br i1 %548, label %549, label %553, !dbg !1333

; <label>:549:                                    ; preds = %547
  %550 = add nsw i32 %248, -1, !dbg !1334
  %551 = sext i32 %550 to i64, !dbg !1335
  %552 = icmp eq i64 %472, %551, !dbg !1336
  br i1 %552, label %554, label %553, !dbg !1337

; <label>:553:                                    ; preds = %549, %547
  call void @pqsort(i8* %251, i64 %249, i64 16, i32 (i8*, i8*)* nonnull @sortCompare, i64 %473, i64 %472) #6, !dbg !1338
  br label %555, !dbg !1338

; <label>:554:                                    ; preds = %549, %541
  call void @qsort(i8* %251, i64 %249, i64 16, i32 (i8*, i8*)* nonnull @sortCompare) #6, !dbg !1339
  br label %555

; <label>:555:                                    ; preds = %553, %554, %476
  %556 = phi i32 [ 0, %476 ], [ %542, %553 ], [ %542, %554 ], !dbg !848
  %557 = icmp ne i32 %171, 0, !dbg !1340
  br i1 %557, label %558, label %563, !dbg !1340

; <label>:558:                                    ; preds = %555
  %559 = sext i32 %171 to i64, !dbg !1341
  %560 = add i64 %472, 1, !dbg !1342
  %561 = sub i64 %560, %473, !dbg !1343
  %562 = mul nsw i64 %561, %559, !dbg !1344
  br label %566, !dbg !1340

; <label>:563:                                    ; preds = %555
  %564 = add i64 %472, 1, !dbg !1345
  %565 = sub i64 %564, %473, !dbg !1346
  br label %566, !dbg !1340

; <label>:566:                                    ; preds = %563, %558
  %567 = phi i64 [ %562, %558 ], [ %565, %563 ], !dbg !1340
  %568 = trunc i64 %567 to i32, !dbg !1340
  %569 = icmp eq i32 %556, 0, !dbg !1347
  br i1 %569, label %571, label %570, !dbg !1348

; <label>:570:                                    ; preds = %566
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !1349
  br label %683, !dbg !1351

; <label>:571:                                    ; preds = %566
  %572 = icmp eq %struct.redisObject* %172, null, !dbg !1352
  br i1 %572, label %573, label %617, !dbg !1353

; <label>:573:                                    ; preds = %571
  %574 = and i64 %567, 4294967295, !dbg !1354
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 %574) #6, !dbg !1355
  %575 = shl i64 %473, 32, !dbg !1356
  %576 = ashr exact i64 %575, 32, !dbg !1356
  %577 = icmp slt i64 %472, %576, !dbg !1357
  br i1 %577, label %683, label %578, !dbg !1358

; <label>:578:                                    ; preds = %573
  %579 = bitcast %struct.listIter* %7 to i8*
  %580 = shl i64 %473, 32, !dbg !1358
  %581 = ashr exact i64 %580, 32, !dbg !1358
  br label %582, !dbg !1358

; <label>:582:                                    ; preds = %578, %614
  %583 = phi i64 [ %581, %578 ], [ %615, %614 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %579) #7, !dbg !1359
  br i1 %557, label %587, label %584, !dbg !1360

; <label>:584:                                    ; preds = %582
  %585 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %252, i64 %583, i32 0, !dbg !1361
  %586 = load %struct.redisObject*, %struct.redisObject** %585, align 8, !dbg !1361, !tbaa !480
  call void @addReplyBulk(%struct.client* %0, %struct.redisObject* %586) #6, !dbg !1363
  br label %587, !dbg !1363

; <label>:587:                                    ; preds = %584, %582
  call void @listRewind(%struct.list* %35, %struct.listIter* nonnull %7) #6, !dbg !1365
  %588 = call %struct.listNode* @listNext(%struct.listIter* nonnull %7) #6, !dbg !1366
  %589 = icmp eq %struct.listNode* %588, null, !dbg !1368
  br i1 %589, label %614, label %590, !dbg !1368

; <label>:590:                                    ; preds = %587
  %591 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %252, i64 %583, i32 0
  br label %592, !dbg !1368

; <label>:592:                                    ; preds = %590, %611
  %593 = phi %struct.listNode* [ %588, %590 ], [ %612, %611 ]
  %594 = getelementptr inbounds %struct.listNode, %struct.listNode* %593, i64 0, i32 2, !dbg !1369
  %595 = bitcast i8** %594 to %struct._redisSortOperation**, !dbg !1369
  %596 = load %struct._redisSortOperation*, %struct._redisSortOperation** %595, align 8, !dbg !1369, !tbaa !1370
  %597 = load %struct.redisDb*, %struct.redisDb** %11, align 8, !dbg !1373, !tbaa !853
  %598 = getelementptr inbounds %struct._redisSortOperation, %struct._redisSortOperation* %596, i64 0, i32 1, !dbg !1374
  %599 = load %struct.redisObject*, %struct.redisObject** %598, align 8, !dbg !1374, !tbaa !185
  %600 = load %struct.redisObject*, %struct.redisObject** %591, align 8, !dbg !1375, !tbaa !480
  %601 = call %struct.redisObject* @lookupKeyByPattern(%struct.redisDb* %597, %struct.redisObject* %599, %struct.redisObject* %600) #10, !dbg !1376
  %602 = getelementptr inbounds %struct._redisSortOperation, %struct._redisSortOperation* %596, i64 0, i32 0, !dbg !1378
  %603 = load i32, i32* %602, align 8, !dbg !1378, !tbaa !177
  %604 = icmp eq i32 %603, 0, !dbg !1380
  br i1 %604, label %605, label %610, !dbg !1381

; <label>:605:                                    ; preds = %592
  %606 = icmp eq %struct.redisObject* %601, null, !dbg !1382
  br i1 %606, label %607, label %609, !dbg !1385

; <label>:607:                                    ; preds = %605
  %608 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1386, !tbaa !1388
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %608) #6, !dbg !1389
  br label %611, !dbg !1390

; <label>:609:                                    ; preds = %605
  call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* nonnull %601) #6, !dbg !1391
  call void @decrRefCount(%struct.redisObject* nonnull %601) #6, !dbg !1393
  br label %611

; <label>:610:                                    ; preds = %592
  call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0), i32 529) #6, !dbg !1394
  call void @_exit(i32 1) #9, !dbg !1394
  unreachable, !dbg !1394

; <label>:611:                                    ; preds = %607, %609
  %612 = call %struct.listNode* @listNext(%struct.listIter* nonnull %7) #6, !dbg !1366
  %613 = icmp eq %struct.listNode* %612, null, !dbg !1368
  br i1 %613, label %614, label %592, !dbg !1368, !llvm.loop !1396

; <label>:614:                                    ; preds = %611, %587
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %579) #7, !dbg !1398
  %615 = add i64 %583, 1, !dbg !1399
  %616 = icmp slt i64 %472, %615, !dbg !1357
  br i1 %616, label %683, label %582, !dbg !1358, !llvm.loop !1400

; <label>:617:                                    ; preds = %571
  %618 = call %struct.redisObject* @createQuicklistObject() #6, !dbg !1402
  %619 = shl i64 %473, 32, !dbg !1404
  %620 = ashr exact i64 %619, 32, !dbg !1404
  %621 = icmp slt i64 %472, %620, !dbg !1405
  br i1 %621, label %661, label %622, !dbg !1406

; <label>:622:                                    ; preds = %617
  %623 = bitcast %struct.listIter* %8 to i8*
  %624 = shl i64 %473, 32, !dbg !1406
  %625 = ashr exact i64 %624, 32, !dbg !1406
  br label %626, !dbg !1406

; <label>:626:                                    ; preds = %622, %658
  %627 = phi i64 [ %625, %622 ], [ %659, %658 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %623) #7, !dbg !1407
  br i1 %557, label %631, label %628, !dbg !1408

; <label>:628:                                    ; preds = %626
  %629 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %252, i64 %627, i32 0, !dbg !1409
  %630 = load %struct.redisObject*, %struct.redisObject** %629, align 8, !dbg !1409, !tbaa !480
  call void @listTypePush(%struct.redisObject* %618, %struct.redisObject* %630, i32 1) #6, !dbg !1411
  br label %658, !dbg !1412

; <label>:631:                                    ; preds = %626
  call void @listRewind(%struct.list* %35, %struct.listIter* nonnull %8) #6, !dbg !1414
  %632 = call %struct.listNode* @listNext(%struct.listIter* nonnull %8) #6, !dbg !1415
  %633 = icmp eq %struct.listNode* %632, null, !dbg !1417
  br i1 %633, label %658, label %634, !dbg !1417

; <label>:634:                                    ; preds = %631
  %635 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %252, i64 %627, i32 0
  br label %636, !dbg !1417

; <label>:636:                                    ; preds = %634, %653
  %637 = phi %struct.listNode* [ %632, %634 ], [ %655, %653 ]
  %638 = getelementptr inbounds %struct.listNode, %struct.listNode* %637, i64 0, i32 2, !dbg !1418
  %639 = bitcast i8** %638 to %struct._redisSortOperation**, !dbg !1418
  %640 = load %struct._redisSortOperation*, %struct._redisSortOperation** %639, align 8, !dbg !1418, !tbaa !1370
  %641 = load %struct.redisDb*, %struct.redisDb** %11, align 8, !dbg !1420, !tbaa !853
  %642 = getelementptr inbounds %struct._redisSortOperation, %struct._redisSortOperation* %640, i64 0, i32 1, !dbg !1421
  %643 = load %struct.redisObject*, %struct.redisObject** %642, align 8, !dbg !1421, !tbaa !185
  %644 = load %struct.redisObject*, %struct.redisObject** %635, align 8, !dbg !1422, !tbaa !480
  %645 = call %struct.redisObject* @lookupKeyByPattern(%struct.redisDb* %641, %struct.redisObject* %643, %struct.redisObject* %644) #10, !dbg !1423
  %646 = getelementptr inbounds %struct._redisSortOperation, %struct._redisSortOperation* %640, i64 0, i32 0, !dbg !1425
  %647 = load i32, i32* %646, align 8, !dbg !1425, !tbaa !177
  %648 = icmp eq i32 %647, 0, !dbg !1427
  br i1 %648, label %649, label %657, !dbg !1428

; <label>:649:                                    ; preds = %636
  %650 = icmp eq %struct.redisObject* %645, null, !dbg !1429
  br i1 %650, label %651, label %653, !dbg !1432

; <label>:651:                                    ; preds = %649
  %652 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i64 0, i64 0), i64 0) #6, !dbg !1433
  br label %653, !dbg !1434

; <label>:653:                                    ; preds = %649, %651
  %654 = phi %struct.redisObject* [ %645, %649 ], [ %652, %651 ], !dbg !1435
  call void @listTypePush(%struct.redisObject* %618, %struct.redisObject* %654, i32 1) #6, !dbg !1436
  call void @decrRefCount(%struct.redisObject* %654) #6, !dbg !1437
  %655 = call %struct.listNode* @listNext(%struct.listIter* nonnull %8) #6, !dbg !1415
  %656 = icmp eq %struct.listNode* %655, null, !dbg !1417
  br i1 %656, label %658, label %636, !dbg !1417, !llvm.loop !1438

; <label>:657:                                    ; preds = %636
  call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0), i32 560) #6, !dbg !1440
  call void @_exit(i32 1) #9, !dbg !1440
  unreachable, !dbg !1440

; <label>:658:                                    ; preds = %653, %631, %628
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %623) #7, !dbg !1442
  %659 = add i64 %627, 1, !dbg !1443
  %660 = icmp slt i64 %472, %659, !dbg !1405
  br i1 %660, label %661, label %626, !dbg !1406, !llvm.loop !1444

; <label>:661:                                    ; preds = %658, %617
  %662 = icmp eq i32 %568, 0, !dbg !1446
  %663 = load %struct.redisDb*, %struct.redisDb** %11, align 8, !dbg !1448, !tbaa !853
  br i1 %662, label %669, label %664, !dbg !1450

; <label>:664:                                    ; preds = %661
  call void @setKey(%struct.redisDb* %663, %struct.redisObject* nonnull %172, %struct.redisObject* %618) #6, !dbg !1451
  %665 = load %struct.redisDb*, %struct.redisDb** %11, align 8, !dbg !1453, !tbaa !853
  %666 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %665, i64 0, i32 5, !dbg !1454
  %667 = load i32, i32* %666, align 8, !dbg !1454, !tbaa !1455
  call void @notifyKeyspaceEvent(i32 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), %struct.redisObject* nonnull %172, i32 %667) #6, !dbg !1457
  %668 = and i64 %567, 4294967295, !dbg !1458
  br label %677, !dbg !1459

; <label>:669:                                    ; preds = %661
  %670 = call i32 @dbDelete(%struct.redisDb* %663, %struct.redisObject* nonnull %172) #6, !dbg !1460
  %671 = icmp eq i32 %670, 0, !dbg !1460
  br i1 %671, label %681, label %672, !dbg !1461

; <label>:672:                                    ; preds = %669
  %673 = load %struct.redisDb*, %struct.redisDb** %11, align 8, !dbg !1462, !tbaa !853
  call void @signalModifiedKey(%struct.redisDb* %673, %struct.redisObject* nonnull %172) #6, !dbg !1464
  %674 = load %struct.redisDb*, %struct.redisDb** %11, align 8, !dbg !1465, !tbaa !853
  %675 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %674, i64 0, i32 5, !dbg !1466
  %676 = load i32, i32* %675, align 8, !dbg !1466, !tbaa !1455
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), %struct.redisObject* nonnull %172, i32 %676) #6, !dbg !1467
  br label %677, !dbg !1468

; <label>:677:                                    ; preds = %664, %672
  %678 = phi i64 [ 1, %672 ], [ %668, %664 ]
  %679 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1469, !tbaa !1470
  %680 = add nsw i64 %679, %678, !dbg !1469
  store i64 %680, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1469, !tbaa !1470
  br label %681, !dbg !1471

; <label>:681:                                    ; preds = %677, %669
  call void @decrRefCount(%struct.redisObject* %618) #6, !dbg !1471
  %682 = and i64 %567, 4294967295, !dbg !1472
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %682) #6, !dbg !1473
  br label %683

; <label>:683:                                    ; preds = %614, %573, %681, %570
  %684 = icmp sgt i32 %248, 0, !dbg !1474
  br i1 %684, label %685, label %708, !dbg !1477

; <label>:685:                                    ; preds = %683
  %686 = zext i32 %248 to i64
  br label %687, !dbg !1478

; <label>:687:                                    ; preds = %687, %685
  %688 = phi i64 [ 0, %685 ], [ %691, %687 ]
  %689 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %252, i64 %688, i32 0, !dbg !1479
  %690 = load %struct.redisObject*, %struct.redisObject** %689, align 8, !dbg !1479, !tbaa !480
  call void @decrRefCount(%struct.redisObject* %690) #6, !dbg !1480
  %691 = add nuw nsw i64 %688, 1, !dbg !1481
  %692 = icmp eq i64 %691, %686, !dbg !1474
  br i1 %692, label %693, label %687, !dbg !1477, !llvm.loop !1482

; <label>:693:                                    ; preds = %687
  call void @decrRefCount(%struct.redisObject* %36) #6, !dbg !1484
  call void @listRelease(%struct.list* %35) #6, !dbg !1485
  br i1 %684, label %694, label %709, !dbg !1486

; <label>:694:                                    ; preds = %693
  %695 = icmp eq i32 %177, 0
  %696 = zext i32 %248 to i64
  br label %697, !dbg !1486

; <label>:697:                                    ; preds = %705, %694
  %698 = phi i64 [ 0, %694 ], [ %706, %705 ]
  br i1 %695, label %705, label %699, !dbg !1488

; <label>:699:                                    ; preds = %697
  %700 = getelementptr inbounds %struct._redisSortObject, %struct._redisSortObject* %252, i64 %698, i32 1, !dbg !1492
  %701 = bitcast %union.anon.0* %700 to %struct.redisObject**, !dbg !1493
  %702 = load %struct.redisObject*, %struct.redisObject** %701, align 8, !dbg !1493, !tbaa !257
  %703 = icmp eq %struct.redisObject* %702, null, !dbg !1494
  br i1 %703, label %705, label %704, !dbg !1495

; <label>:704:                                    ; preds = %699
  call void @decrRefCount(%struct.redisObject* nonnull %702) #6, !dbg !1496
  br label %705, !dbg !1496

; <label>:705:                                    ; preds = %699, %697, %704
  %706 = add nuw nsw i64 %698, 1, !dbg !1497
  %707 = icmp eq i64 %706, %696, !dbg !1498
  br i1 %707, label %709, label %697, !dbg !1486, !llvm.loop !1499

; <label>:708:                                    ; preds = %683
  call void @decrRefCount(%struct.redisObject* %36) #6, !dbg !1484
  call void @listRelease(%struct.list* %35) #6, !dbg !1485
  br label %709

; <label>:709:                                    ; preds = %705, %708, %693
  call void @zfree(i8* %251) #6, !dbg !1501
  br label %710, !dbg !1502

; <label>:710:                                    ; preds = %709, %145, %25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #7, !dbg !1502
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #7, !dbg !1502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1502
  ret void, !dbg !1502
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
!323 = !DILocation(line: 102, column: 1, scope: !288, inlinedAt: !297)
!324 = !DILocation(line: 91, column: 35, scope: !298)
!325 = !DILocation(line: 91, column: 32, scope: !298)
!326 = !DILocation(line: 91, column: 20, scope: !298)
!327 = !DILocation(line: 65, column: 40, scope: !187)
!328 = !DILocation(line: 92, column: 43, scope: !298)
!329 = !DILocation(line: 92, column: 20, scope: !298)
!330 = !DILocation(line: 93, column: 5, scope: !298)
!331 = !DILocation(line: 0, scope: !187)
!332 = !DILocation(line: 0, scope: !333)
!333 = distinct !DILexicalBlock(scope: !278, file: !1, line: 93, column: 12)
!334 = !DILocation(line: 98, column: 18, scope: !187)
!335 = !DILocation(line: 98, column: 17, scope: !187)
!336 = !DILocation(line: 65, column: 9, scope: !187)
!337 = !DILocation(line: 87, column: 39, scope: !288, inlinedAt: !338)
!338 = distinct !DILocation(line: 99, column: 14, scope: !187)
!339 = !DILocation(line: 88, column: 27, scope: !288, inlinedAt: !338)
!340 = !DILocation(line: 88, column: 19, scope: !288, inlinedAt: !338)
!341 = !DILocation(line: 89, column: 5, scope: !288, inlinedAt: !338)
!342 = !DILocation(line: 91, column: 20, scope: !303, inlinedAt: !338)
!343 = !DILocation(line: 91, column: 13, scope: !303, inlinedAt: !338)
!344 = !DILocation(line: 93, column: 20, scope: !303, inlinedAt: !338)
!345 = !DILocation(line: 93, column: 34, scope: !303, inlinedAt: !338)
!346 = !DILocation(line: 93, column: 13, scope: !303, inlinedAt: !338)
!347 = !DILocation(line: 95, column: 20, scope: !303, inlinedAt: !338)
!348 = !DILocation(line: 95, column: 35, scope: !303, inlinedAt: !338)
!349 = !DILocation(line: 95, column: 13, scope: !303, inlinedAt: !338)
!350 = !DILocation(line: 97, column: 20, scope: !303, inlinedAt: !338)
!351 = !DILocation(line: 97, column: 35, scope: !303, inlinedAt: !338)
!352 = !DILocation(line: 97, column: 13, scope: !303, inlinedAt: !338)
!353 = !DILocation(line: 99, column: 20, scope: !303, inlinedAt: !338)
!354 = !DILocation(line: 99, column: 35, scope: !303, inlinedAt: !338)
!355 = !DILocation(line: 99, column: 13, scope: !303, inlinedAt: !338)
!356 = !DILocation(line: 0, scope: !303, inlinedAt: !338)
!357 = !DILocation(line: 102, column: 1, scope: !288, inlinedAt: !338)
!358 = !DILocation(line: 99, column: 14, scope: !187)
!359 = !DILocation(line: 65, column: 20, scope: !187)
!360 = !DILocation(line: 87, column: 39, scope: !288, inlinedAt: !361)
!361 = distinct !DILocation(line: 100, column: 18, scope: !187)
!362 = !DILocation(line: 88, column: 27, scope: !288, inlinedAt: !361)
!363 = !DILocation(line: 88, column: 19, scope: !288, inlinedAt: !361)
!364 = !DILocation(line: 89, column: 5, scope: !288, inlinedAt: !361)
!365 = !DILocation(line: 91, column: 20, scope: !303, inlinedAt: !361)
!366 = !DILocation(line: 91, column: 13, scope: !303, inlinedAt: !361)
!367 = !DILocation(line: 93, column: 20, scope: !303, inlinedAt: !361)
!368 = !DILocation(line: 93, column: 34, scope: !303, inlinedAt: !361)
!369 = !DILocation(line: 93, column: 13, scope: !303, inlinedAt: !361)
!370 = !DILocation(line: 95, column: 20, scope: !303, inlinedAt: !361)
!371 = !DILocation(line: 95, column: 35, scope: !303, inlinedAt: !361)
!372 = !DILocation(line: 95, column: 13, scope: !303, inlinedAt: !361)
!373 = !DILocation(line: 97, column: 20, scope: !303, inlinedAt: !361)
!374 = !DILocation(line: 97, column: 35, scope: !303, inlinedAt: !361)
!375 = !DILocation(line: 97, column: 13, scope: !303, inlinedAt: !361)
!376 = !DILocation(line: 99, column: 20, scope: !303, inlinedAt: !361)
!377 = !DILocation(line: 99, column: 35, scope: !303, inlinedAt: !361)
!378 = !DILocation(line: 99, column: 13, scope: !303, inlinedAt: !361)
!379 = !DILocation(line: 0, scope: !303, inlinedAt: !361)
!380 = !DILocation(line: 102, column: 1, scope: !288, inlinedAt: !361)
!381 = !DILocation(line: 100, column: 31, scope: !187)
!382 = !DILocation(line: 100, column: 30, scope: !187)
!383 = !DILocation(line: 100, column: 46, scope: !187)
!384 = !DILocation(line: 100, column: 65, scope: !187)
!385 = !DILocation(line: 100, column: 18, scope: !187)
!386 = !DILocation(line: 65, column: 28, scope: !187)
!387 = !DILocation(line: 101, column: 47, scope: !187)
!388 = !DILocation(line: 101, column: 54, scope: !187)
!389 = !DILocation(line: 101, column: 38, scope: !187)
!390 = !DILocation(line: 101, column: 14, scope: !187)
!391 = !DILocation(line: 64, column: 11, scope: !187)
!392 = !DILocation(line: 102, column: 17, scope: !187)
!393 = !DILocation(line: 62, column: 19, scope: !187)
!394 = !DILocation(line: 103, column: 19, scope: !187)
!395 = !DILocation(line: 103, column: 5, scope: !187)
!396 = !DILocation(line: 104, column: 13, scope: !187)
!397 = !DILocation(line: 104, column: 29, scope: !187)
!398 = !DILocation(line: 104, column: 5, scope: !187)
!399 = !DILocation(line: 105, column: 23, scope: !187)
!400 = !DILocation(line: 105, column: 35, scope: !187)
!401 = !DILocation(line: 105, column: 5, scope: !187)
!402 = !DILocation(line: 106, column: 5, scope: !187)
!403 = !DILocation(line: 109, column: 9, scope: !187)
!404 = !DILocation(line: 64, column: 38, scope: !187)
!405 = !DILocation(line: 110, column: 11, scope: !406)
!406 = distinct !DILexicalBlock(scope: !187, file: !1, line: 110, column: 9)
!407 = !DILocation(line: 110, column: 9, scope: !187)
!408 = !DILocation(line: 112, column: 9, scope: !409)
!409 = distinct !DILexicalBlock(scope: !187, file: !1, line: 112, column: 9)
!410 = !DILocation(line: 0, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !1, line: 119, column: 13)
!412 = distinct !DILexicalBlock(scope: !409, file: !1, line: 118, column: 12)
!413 = !DILocation(line: 112, column: 9, scope: !187)
!414 = !DILocation(line: 113, column: 21, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !1, line: 113, column: 13)
!416 = distinct !DILexicalBlock(scope: !409, file: !1, line: 112, column: 19)
!417 = !DILocation(line: 113, column: 13, scope: !416)
!418 = !DILocation(line: 119, column: 21, scope: !411)
!419 = !DILocation(line: 119, column: 13, scope: !412)
!420 = !DILocation(line: 123, column: 9, scope: !412)
!421 = !DILocation(line: 125, column: 5, scope: !187)
!422 = !DILocation(line: 117, column: 49, scope: !416)
!423 = !DILocation(line: 117, column: 13, scope: !416)
!424 = !DILocation(line: 126, column: 19, scope: !425)
!425 = distinct !DILexicalBlock(scope: !187, file: !1, line: 126, column: 9)
!426 = !DILocation(line: 130, column: 5, scope: !187)
!427 = !DILocation(line: 131, column: 9, scope: !187)
!428 = !DILocation(line: 131, column: 19, scope: !429)
!429 = distinct !DILexicalBlock(scope: !187, file: !1, line: 131, column: 9)
!430 = !DILocation(line: 0, scope: !275)
!431 = !DILocation(line: 133, column: 1, scope: !187)
!432 = distinct !DISubprogram(name: "sortCompare", scope: !1, file: !1, line: 138, type: !433, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !435)
!433 = !DISubroutineType(types: !434)
!434 = !{!41, !30, !30}
!435 = !{!436, !437, !438, !450, !451}
!436 = !DILocalVariable(name: "s1", arg: 1, scope: !432, file: !1, line: 138, type: !30)
!437 = !DILocalVariable(name: "s2", arg: 2, scope: !432, file: !1, line: 138, type: !30)
!438 = !DILocalVariable(name: "so1", scope: !432, file: !1, line: 139, type: !439)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisSortObject", file: !7, line: 1334, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_redisSortObject", file: !7, line: 1328, size: 128, elements: !443)
!443 = !{!444, !445}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !442, file: !7, line: 1329, baseType: !158, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !442, file: !7, line: 1333, baseType: !446, size: 64, offset: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !7, line: 1330, size: 64, elements: !447)
!447 = !{!448, !449}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "score", scope: !446, file: !7, line: 1331, baseType: !70, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "cmpobj", scope: !446, file: !7, line: 1332, baseType: !158, size: 64)
!450 = !DILocalVariable(name: "so2", scope: !432, file: !1, line: 139, type: !439)
!451 = !DILocalVariable(name: "cmp", scope: !432, file: !1, line: 140, type: !41)
!452 = !DILocation(line: 138, column: 29, scope: !432)
!453 = !DILocation(line: 138, column: 45, scope: !432)
!454 = !DILocation(line: 139, column: 28, scope: !432)
!455 = !DILocation(line: 139, column: 39, scope: !432)
!456 = !DILocation(line: 142, column: 17, scope: !457)
!457 = distinct !DILexicalBlock(scope: !432, file: !1, line: 142, column: 9)
!458 = !{!459, !179, i64 2788}
!459 = !{!"redisServer", !179, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !179, i64 32, !179, i64 36, !179, i64 40, !182, i64 48, !182, i64 56, !182, i64 64, !182, i64 72, !179, i64 80, !179, i64 84, !179, i64 88, !179, i64 92, !182, i64 96, !182, i64 104, !179, i64 112, !179, i64 116, !180, i64 120, !179, i64 164, !320, i64 168, !179, i64 176, !182, i64 184, !182, i64 192, !182, i64 200, !180, i64 208, !179, i64 216, !179, i64 220, !180, i64 224, !179, i64 352, !182, i64 360, !179, i64 368, !180, i64 372, !179, i64 436, !179, i64 440, !180, i64 444, !179, i64 508, !182, i64 512, !182, i64 520, !182, i64 528, !182, i64 536, !182, i64 544, !182, i64 552, !182, i64 560, !179, i64 568, !460, i64 576, !180, i64 584, !182, i64 840, !320, i64 848, !179, i64 856, !179, i64 860, !320, i64 864, !320, i64 872, !320, i64 880, !320, i64 888, !182, i64 896, !182, i64 904, !182, i64 912, !182, i64 920, !182, i64 928, !182, i64 936, !182, i64 944, !182, i64 952, !182, i64 960, !182, i64 968, !182, i64 976, !182, i64 984, !182, i64 992, !320, i64 1000, !460, i64 1008, !460, i64 1016, !460, i64 1024, !461, i64 1032, !460, i64 1040, !460, i64 1048, !460, i64 1056, !460, i64 1064, !460, i64 1072, !460, i64 1080, !460, i64 1088, !460, i64 1096, !460, i64 1104, !320, i64 1112, !460, i64 1120, !461, i64 1128, !460, i64 1136, !460, i64 1144, !460, i64 1152, !460, i64 1160, !182, i64 1168, !460, i64 1176, !460, i64 1184, !320, i64 1192, !462, i64 1200, !460, i64 1240, !460, i64 1248, !320, i64 1256, !320, i64 1264, !180, i64 1272, !179, i64 1728, !179, i64 1732, !179, i64 1736, !179, i64 1740, !179, i64 1744, !320, i64 1752, !179, i64 1760, !179, i64 1764, !179, i64 1768, !179, i64 1772, !320, i64 1776, !320, i64 1784, !179, i64 1792, !179, i64 1796, !179, i64 1800, !179, i64 1804, !180, i64 1808, !179, i64 1880, !179, i64 1884, !182, i64 1888, !179, i64 1896, !179, i64 1900, !320, i64 1904, !320, i64 1912, !320, i64 1920, !320, i64 1928, !179, i64 1936, !179, i64 1940, !182, i64 1944, !182, i64 1952, !179, i64 1960, !179, i64 1964, !320, i64 1968, !320, i64 1976, !320, i64 1984, !320, i64 1992, !179, i64 2000, !320, i64 2008, !179, i64 2016, !179, i64 2020, !179, i64 2024, !179, i64 2028, !179, i64 2032, !179, i64 2036, !179, i64 2040, !179, i64 2044, !179, i64 2048, !179, i64 2052, !179, i64 2056, !179, i64 2060, !179, i64 2064, !182, i64 2072, !460, i64 2080, !460, i64 2088, !179, i64 2096, !182, i64 2104, !179, i64 2112, !182, i64 2120, !179, i64 2128, !179, i64 2132, !320, i64 2136, !320, i64 2144, !320, i64 2152, !320, i64 2160, !179, i64 2168, !179, i64 2172, !179, i64 2176, !179, i64 2180, !179, i64 2184, !179, i64 2188, !180, i64 2192, !463, i64 2200, !464, i64 2224, !182, i64 2240, !179, i64 2248, !182, i64 2256, !179, i64 2264, !180, i64 2268, !180, i64 2309, !460, i64 2352, !460, i64 2360, !179, i64 2368, !179, i64 2372, !182, i64 2376, !460, i64 2384, !460, i64 2392, !460, i64 2400, !460, i64 2408, !320, i64 2416, !320, i64 2424, !179, i64 2432, !179, i64 2436, !179, i64 2440, !179, i64 2444, !179, i64 2448, !182, i64 2456, !182, i64 2464, !179, i64 2472, !179, i64 2476, !182, i64 2480, !182, i64 2488, !179, i64 2496, !179, i64 2500, !320, i64 2504, !320, i64 2512, !320, i64 2520, !179, i64 2528, !179, i64 2532, !182, i64 2536, !320, i64 2544, !179, i64 2552, !179, i64 2556, !179, i64 2560, !320, i64 2568, !179, i64 2576, !179, i64 2580, !179, i64 2584, !182, i64 2592, !180, i64 2600, !460, i64 2648, !179, i64 2656, !182, i64 2664, !182, i64 2672, !179, i64 2680, !182, i64 2688, !179, i64 2696, !179, i64 2700, !460, i64 2704, !179, i64 2712, !179, i64 2716, !179, i64 2720, !179, i64 2724, !460, i64 2728, !179, i64 2736, !180, i64 2740, !182, i64 2768, !182, i64 2776, !179, i64 2784, !179, i64 2788, !179, i64 2792, !179, i64 2796, !320, i64 2800, !320, i64 2808, !320, i64 2816, !320, i64 2824, !320, i64 2832, !320, i64 2840, !320, i64 2848, !320, i64 2856, !179, i64 2864, !179, i64 2868, !320, i64 2872, !320, i64 2880, !179, i64 2888, !460, i64 2896, !182, i64 2904, !182, i64 2912, !179, i64 2920, !179, i64 2924, !460, i64 2928, !182, i64 2936, !182, i64 2944, !179, i64 2952, !179, i64 2956, !179, i64 2960, !179, i64 2964, !182, i64 2968, !179, i64 2976, !179, i64 2980, !179, i64 2984, !182, i64 2992, !182, i64 3000, !182, i64 3008, !182, i64 3016, !460, i64 3024, !460, i64 3032, !460, i64 3040, !179, i64 3048, !179, i64 3052, !179, i64 3056, !179, i64 3060, !179, i64 3064, !179, i64 3068, !179, i64 3072, !179, i64 3076, !179, i64 3080, !179, i64 3084, !179, i64 3088, !460, i64 3096, !182, i64 3104, !182, i64 3112, !182, i64 3120, !179, i64 3128, !179, i64 3132, !179, i64 3136, !320, i64 3144, !182, i64 3152, !182, i64 3160, !182, i64 3168}
!460 = !{!"long long", !180, i64 0}
!461 = !{!"double", !180, i64 0}
!462 = !{!"malloc_stats", !320, i64 0, !320, i64 8, !320, i64 16, !320, i64 24, !320, i64 32}
!463 = !{!"", !179, i64 0, !320, i64 8, !460, i64 16}
!464 = !{!"redisOpArray", !182, i64 0, !179, i64 8}
!465 = !DILocation(line: 142, column: 10, scope: !457)
!466 = !DILocation(line: 142, column: 9, scope: !432)
!467 = !DILocation(line: 144, column: 18, scope: !468)
!468 = distinct !DILexicalBlock(scope: !469, file: !1, line: 144, column: 13)
!469 = distinct !DILexicalBlock(scope: !457, file: !1, line: 142, column: 29)
!470 = !DILocation(line: 144, column: 20, scope: !468)
!471 = !DILocation(line: 144, column: 33, scope: !468)
!472 = !DILocation(line: 144, column: 35, scope: !468)
!473 = !DILocation(line: 144, column: 26, scope: !468)
!474 = !DILocation(line: 144, column: 13, scope: !469)
!475 = !DILocation(line: 146, column: 33, scope: !476)
!476 = distinct !DILexicalBlock(scope: !468, file: !1, line: 146, column: 20)
!477 = !DILocation(line: 146, column: 20, scope: !468)
!478 = !DILocation(line: 152, column: 45, scope: !479)
!479 = distinct !DILexicalBlock(scope: !476, file: !1, line: 148, column: 16)
!480 = !{!481, !182, i64 0}
!481 = !{!"_redisSortObject", !182, i64 0, !180, i64 8}
!482 = !DILocation(line: 152, column: 54, scope: !479)
!483 = !DILocation(line: 152, column: 19, scope: !479)
!484 = !DILocation(line: 140, column: 9, scope: !432)
!485 = !DILocation(line: 156, column: 20, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !1, line: 156, column: 13)
!487 = distinct !DILexicalBlock(scope: !457, file: !1, line: 154, column: 12)
!488 = !{!459, !179, i64 2792}
!489 = !DILocation(line: 156, column: 13, scope: !486)
!490 = !DILocation(line: 156, column: 13, scope: !487)
!491 = !DILocation(line: 157, column: 23, scope: !492)
!492 = distinct !DILexicalBlock(scope: !493, file: !1, line: 157, column: 17)
!493 = distinct !DILexicalBlock(scope: !486, file: !1, line: 156, column: 36)
!494 = !DILocation(line: 157, column: 25, scope: !492)
!495 = !DILocation(line: 157, column: 18, scope: !492)
!496 = !DILocation(line: 0, scope: !492)
!497 = !DILocation(line: 157, column: 32, scope: !492)
!498 = !DILocation(line: 157, column: 36, scope: !492)
!499 = !DILocation(line: 157, column: 17, scope: !493)
!500 = !DILocation(line: 159, column: 45, scope: !501)
!501 = distinct !DILexicalBlock(scope: !502, file: !1, line: 159, column: 21)
!502 = distinct !DILexicalBlock(scope: !492, file: !1, line: 157, column: 51)
!503 = !DILocation(line: 159, column: 35, scope: !501)
!504 = !DILocation(line: 162, column: 21, scope: !505)
!505 = distinct !DILexicalBlock(scope: !501, file: !1, line: 161, column: 26)
!506 = !DILocation(line: 159, column: 21, scope: !502)
!507 = !DILocation(line: 167, column: 28, scope: !508)
!508 = distinct !DILexicalBlock(scope: !509, file: !1, line: 167, column: 21)
!509 = distinct !DILexicalBlock(scope: !492, file: !1, line: 165, column: 20)
!510 = !{!459, !179, i64 2796}
!511 = !DILocation(line: 167, column: 21, scope: !508)
!512 = !DILocation(line: 167, column: 21, scope: !509)
!513 = !DILocation(line: 168, column: 27, scope: !514)
!514 = distinct !DILexicalBlock(scope: !508, file: !1, line: 167, column: 40)
!515 = !DILocation(line: 169, column: 17, scope: !514)
!516 = !DILocation(line: 172, column: 50, scope: !517)
!517 = distinct !DILexicalBlock(scope: !508, file: !1, line: 169, column: 24)
!518 = !DILocation(line: 172, column: 69, scope: !517)
!519 = !DILocation(line: 172, column: 27, scope: !517)
!520 = !DILocation(line: 177, column: 24, scope: !521)
!521 = distinct !DILexicalBlock(scope: !522, file: !1, line: 177, column: 17)
!522 = distinct !DILexicalBlock(scope: !486, file: !1, line: 175, column: 16)
!523 = !DILocation(line: 177, column: 17, scope: !521)
!524 = !DILocation(line: 0, scope: !525)
!525 = distinct !DILexicalBlock(scope: !521, file: !1, line: 179, column: 20)
!526 = !DILocation(line: 177, column: 17, scope: !522)
!527 = !DILocation(line: 178, column: 23, scope: !528)
!528 = distinct !DILexicalBlock(scope: !521, file: !1, line: 177, column: 36)
!529 = !DILocation(line: 179, column: 13, scope: !528)
!530 = !DILocation(line: 180, column: 23, scope: !525)
!531 = !DILocation(line: 0, scope: !479)
!532 = !DILocation(line: 184, column: 19, scope: !432)
!533 = !{!459, !179, i64 2784}
!534 = !DILocation(line: 184, column: 12, scope: !432)
!535 = !DILocation(line: 184, column: 31, scope: !432)
!536 = !DILocation(line: 184, column: 5, scope: !432)
!537 = distinct !DISubprogram(name: "sortCommand", scope: !1, file: !1, line: 189, type: !538, isLocal: false, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !666)
!538 = !DISubroutineType(types: !539)
!539 = !{null, !540}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !7, line: 780, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !7, line: 723, size: 135360, elements: !543)
!543 = !{!544, !545, !546, !547, !548, !549, !554, !555, !556, !557, !559, !581, !582, !583, !584, !585, !586, !588, !589, !592, !593, !594, !595, !596, !597, !598, !599, !604, !605, !606, !607, !608, !609, !610, !611, !615, !616, !620, !621, !637, !638, !655, !656, !657, !658, !659, !660, !661, !662}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !542, file: !7, line: 724, baseType: !25, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !542, file: !7, line: 725, baseType: !41, size: 32, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !542, file: !7, line: 726, baseType: !190, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !542, file: !7, line: 727, baseType: !158, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !542, file: !7, line: 728, baseType: !90, size: 64, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !542, file: !7, line: 729, baseType: !550, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !551, line: 40, baseType: !552)
!551 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !553, line: 129, baseType: !29)
!553 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!554 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !542, file: !7, line: 730, baseType: !90, size: 64, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !542, file: !7, line: 734, baseType: !550, size: 64, offset: 448)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !542, file: !7, line: 735, baseType: !41, size: 32, offset: 512)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !542, file: !7, line: 736, baseType: !558, size: 64, offset: 576)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !542, file: !7, line: 737, baseType: !560, size: 64, offset: 640)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !7, line: 1307, size: 640, elements: !562)
!562 = !{!563, !564, !567, !568, !569, !570, !576, !577, !578, !579, !580}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !561, file: !7, line: 1308, baseType: !92, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !561, file: !7, line: 1309, baseType: !565, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !7, line: 1305, baseType: !538)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !561, file: !7, line: 1310, baseType: !41, size: 32, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !561, file: !7, line: 1311, baseType: !92, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !561, file: !7, line: 1312, baseType: !41, size: 32, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !561, file: !7, line: 1315, baseType: !571, size: 64, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !7, line: 1306, baseType: !573)
!573 = !DISubroutineType(types: !574)
!574 = !{!575, !560, !558, !41, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !561, file: !7, line: 1317, baseType: !41, size: 32, offset: 384)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !561, file: !7, line: 1318, baseType: !41, size: 32, offset: 416)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !561, file: !7, line: 1319, baseType: !41, size: 32, offset: 448)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !561, file: !7, line: 1320, baseType: !201, size: 64, offset: 512)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !561, file: !7, line: 1320, baseType: !201, size: 64, offset: 576)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !542, file: !7, line: 737, baseType: !560, size: 64, offset: 704)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !542, file: !7, line: 738, baseType: !41, size: 32, offset: 768)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !542, file: !7, line: 739, baseType: !41, size: 32, offset: 800)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !542, file: !7, line: 740, baseType: !68, size: 64, offset: 832)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !542, file: !7, line: 741, baseType: !203, size: 64, offset: 896)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !542, file: !7, line: 742, baseType: !587, size: 64, offset: 960)
!587 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !542, file: !7, line: 743, baseType: !550, size: 64, offset: 1024)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !542, file: !7, line: 745, baseType: !590, size: 64, offset: 1088)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !591, line: 34, baseType: !68)
!591 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!592 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !542, file: !7, line: 746, baseType: !590, size: 64, offset: 1152)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !542, file: !7, line: 747, baseType: !590, size: 64, offset: 1216)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !542, file: !7, line: 748, baseType: !41, size: 32, offset: 1280)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !542, file: !7, line: 749, baseType: !41, size: 32, offset: 1312)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !542, file: !7, line: 750, baseType: !41, size: 32, offset: 1344)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !542, file: !7, line: 751, baseType: !41, size: 32, offset: 1376)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !542, file: !7, line: 752, baseType: !41, size: 32, offset: 1408)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !542, file: !7, line: 753, baseType: !600, size: 64, offset: 1472)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !601, line: 173, baseType: !602)
!601 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !553, line: 100, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !553, line: 44, baseType: !68)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !542, file: !7, line: 754, baseType: !600, size: 64, offset: 1536)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !542, file: !7, line: 755, baseType: !90, size: 64, offset: 1600)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !542, file: !7, line: 756, baseType: !201, size: 64, offset: 1664)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !542, file: !7, line: 757, baseType: !201, size: 64, offset: 1728)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !542, file: !7, line: 758, baseType: !201, size: 64, offset: 1792)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !542, file: !7, line: 759, baseType: !201, size: 64, offset: 1856)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !542, file: !7, line: 760, baseType: !201, size: 64, offset: 1920)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !542, file: !7, line: 763, baseType: !612, size: 328, offset: 1984)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 328, elements: !613)
!613 = !{!614}
!614 = !DISubrange(count: 41)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !542, file: !7, line: 764, baseType: !41, size: 32, offset: 2336)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !542, file: !7, line: 765, baseType: !617, size: 368, offset: 2368)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 368, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 46)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !542, file: !7, line: 766, baseType: !41, size: 32, offset: 2752)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !542, file: !7, line: 767, baseType: !622, size: 256, offset: 2816)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !7, line: 673, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !7, line: 665, size: 256, elements: !624)
!624 = !{!625, !633, !634, !635, !636}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !623, file: !7, line: 666, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !7, line: 663, baseType: !628)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !7, line: 659, size: 192, elements: !629)
!629 = !{!630, !631, !632}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !628, file: !7, line: 660, baseType: !558, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !628, file: !7, line: 661, baseType: !41, size: 32, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !628, file: !7, line: 662, baseType: !560, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !623, file: !7, line: 667, baseType: !41, size: 32, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !623, file: !7, line: 668, baseType: !41, size: 32, offset: 96)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !623, file: !7, line: 671, baseType: !41, size: 32, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !623, file: !7, line: 672, baseType: !590, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !542, file: !7, line: 768, baseType: !41, size: 32, offset: 3072)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !542, file: !7, line: 769, baseType: !639, size: 704, offset: 3136)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !7, line: 703, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !7, line: 677, size: 704, elements: !641)
!641 = !{!642, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !640, file: !7, line: 679, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !7, line: 52, baseType: !201)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !640, file: !7, line: 683, baseType: !11, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !640, file: !7, line: 685, baseType: !158, size: 64, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !640, file: !7, line: 689, baseType: !550, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !640, file: !7, line: 690, baseType: !158, size: 64, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !640, file: !7, line: 691, baseType: !158, size: 64, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !640, file: !7, line: 692, baseType: !643, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !640, file: !7, line: 692, baseType: !643, size: 64, offset: 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !640, file: !7, line: 693, baseType: !41, size: 32, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !640, file: !7, line: 696, baseType: !41, size: 32, offset: 544)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !640, file: !7, line: 697, baseType: !201, size: 64, offset: 576)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !640, file: !7, line: 700, baseType: !4, size: 64, offset: 640)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !542, file: !7, line: 770, baseType: !201, size: 64, offset: 3840)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !542, file: !7, line: 771, baseType: !203, size: 64, offset: 3904)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !542, file: !7, line: 772, baseType: !11, size: 64, offset: 3968)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !542, file: !7, line: 773, baseType: !203, size: 64, offset: 4032)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !542, file: !7, line: 774, baseType: !90, size: 64, offset: 4096)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !542, file: !7, line: 775, baseType: !209, size: 64, offset: 4160)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !542, file: !7, line: 778, baseType: !41, size: 32, offset: 4224)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !542, file: !7, line: 779, baseType: !663, size: 131072, offset: 4256)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 131072, elements: !664)
!664 = !{!665}
!665 = !DISubrange(count: 16384)
!666 = !{!667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !687, !689, !739, !755, !758, !759, !781, !782, !785, !786, !789, !790, !791, !794, !797, !798, !799, !800, !806, !811, !818, !824, !826, !827, !829, !833, !834, !838}
!667 = !DILocalVariable(name: "c", arg: 1, scope: !537, file: !1, line: 189, type: !540)
!668 = !DILocalVariable(name: "operations", scope: !537, file: !1, line: 190, type: !203)
!669 = !DILocalVariable(name: "outputlen", scope: !537, file: !1, line: 191, type: !134)
!670 = !DILocalVariable(name: "desc", scope: !537, file: !1, line: 192, type: !41)
!671 = !DILocalVariable(name: "alpha", scope: !537, file: !1, line: 192, type: !41)
!672 = !DILocalVariable(name: "limit_start", scope: !537, file: !1, line: 193, type: !68)
!673 = !DILocalVariable(name: "limit_count", scope: !537, file: !1, line: 193, type: !68)
!674 = !DILocalVariable(name: "start", scope: !537, file: !1, line: 193, type: !68)
!675 = !DILocalVariable(name: "end", scope: !537, file: !1, line: 193, type: !68)
!676 = !DILocalVariable(name: "j", scope: !537, file: !1, line: 194, type: !41)
!677 = !DILocalVariable(name: "dontsort", scope: !537, file: !1, line: 194, type: !41)
!678 = !DILocalVariable(name: "vectorlen", scope: !537, file: !1, line: 194, type: !41)
!679 = !DILocalVariable(name: "getop", scope: !537, file: !1, line: 195, type: !41)
!680 = !DILocalVariable(name: "int_conversion_error", scope: !537, file: !1, line: 196, type: !41)
!681 = !DILocalVariable(name: "syntax_error", scope: !537, file: !1, line: 197, type: !41)
!682 = !DILocalVariable(name: "sortval", scope: !537, file: !1, line: 198, type: !158)
!683 = !DILocalVariable(name: "sortby", scope: !537, file: !1, line: 198, type: !158)
!684 = !DILocalVariable(name: "storekey", scope: !537, file: !1, line: 198, type: !158)
!685 = !DILocalVariable(name: "vector", scope: !537, file: !1, line: 199, type: !686)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!687 = !DILocalVariable(name: "leftargs", scope: !688, file: !1, line: 227, type: !41)
!688 = distinct !DILexicalBlock(scope: !537, file: !1, line: 226, column: 24)
!689 = !DILocalVariable(name: "li", scope: !690, file: !1, line: 354, type: !694)
!690 = distinct !DILexicalBlock(scope: !691, file: !1, line: 353, column: 27)
!691 = distinct !DILexicalBlock(scope: !692, file: !1, line: 353, column: 13)
!692 = distinct !DILexicalBlock(scope: !693, file: !1, line: 346, column: 48)
!693 = distinct !DILexicalBlock(scope: !537, file: !1, line: 346, column: 9)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "listTypeIterator", file: !7, line: 1347, baseType: !696)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 1342, size: 192, elements: !697)
!697 = !{!698, !699, !700, !701}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !696, file: !7, line: 1343, baseType: !158, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !696, file: !7, line: 1344, baseType: !113, size: 8, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !696, file: !7, line: 1345, baseType: !113, size: 8, offset: 72)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !696, file: !7, line: 1346, baseType: !702, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistIter", file: !704, line: 88, baseType: !705)
!704 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/quicklist.h", directory: "/root/.unikraft/apps/redis/build")
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistIter", file: !704, line: 82, size: 320, elements: !706)
!706 = !{!707, !735, !736, !737, !738}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !705, file: !704, line: 83, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !710)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklist", file: !704, line: 80, baseType: !711)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklist", file: !704, line: 73, size: 320, elements: !712)
!712 = !{!713, !730, !731, !732, !733, !734}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !711, file: !704, line: 74, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistNode", file: !704, line: 55, baseType: !716)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistNode", file: !704, line: 44, size: 256, elements: !717)
!717 = !{!718, !720, !721, !723, !724, !725, !726, !727, !728, !729}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !716, file: !704, line: 45, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !716, file: !704, line: 46, baseType: !719, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "zl", scope: !716, file: !704, line: 47, baseType: !722, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !716, file: !704, line: 48, baseType: !134, size: 32, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !716, file: !704, line: 49, baseType: !134, size: 16, offset: 224, flags: DIFlagBitField, extraData: i64 224)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !716, file: !704, line: 50, baseType: !134, size: 2, offset: 240, flags: DIFlagBitField, extraData: i64 224)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !716, file: !704, line: 51, baseType: !134, size: 2, offset: 242, flags: DIFlagBitField, extraData: i64 224)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "recompress", scope: !716, file: !704, line: 52, baseType: !134, size: 1, offset: 244, flags: DIFlagBitField, extraData: i64 224)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "attempted_compress", scope: !716, file: !704, line: 53, baseType: !134, size: 1, offset: 245, flags: DIFlagBitField, extraData: i64 224)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !716, file: !704, line: 54, baseType: !134, size: 10, offset: 246, flags: DIFlagBitField, extraData: i64 224)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !711, file: !704, line: 75, baseType: !714, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !711, file: !704, line: 76, baseType: !29, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !711, file: !704, line: 77, baseType: !29, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !711, file: !704, line: 78, baseType: !41, size: 16, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !711, file: !704, line: 79, baseType: !134, size: 16, offset: 272, flags: DIFlagBitField, extraData: i64 256)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !705, file: !704, line: 84, baseType: !714, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !705, file: !704, line: 85, baseType: !722, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !705, file: !704, line: 86, baseType: !68, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !705, file: !704, line: 87, baseType: !41, size: 32, offset: 256)
!739 = !DILocalVariable(name: "entry", scope: !690, file: !1, line: 355, type: !740)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "listTypeEntry", file: !7, line: 1353, baseType: !741)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 1350, size: 448, elements: !742)
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "li", scope: !741, file: !7, line: 1351, baseType: !694, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !741, file: !7, line: 1352, baseType: !745, size: 384, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistEntry", file: !704, line: 98, baseType: !746)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistEntry", file: !704, line: 90, size: 384, elements: !747)
!747 = !{!748, !749, !750, !751, !752, !753, !754}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !746, file: !704, line: 91, baseType: !708, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !746, file: !704, line: 92, baseType: !714, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !746, file: !704, line: 93, baseType: !722, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !746, file: !704, line: 94, baseType: !722, size: 64, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "longval", scope: !746, file: !704, line: 95, baseType: !201, size: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !746, file: !704, line: 96, baseType: !134, size: 32, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !746, file: !704, line: 97, baseType: !41, size: 32, offset: 352)
!755 = !DILocalVariable(name: "li", scope: !756, file: !1, line: 372, type: !694)
!756 = distinct !DILexicalBlock(scope: !757, file: !1, line: 371, column: 43)
!757 = distinct !DILexicalBlock(scope: !693, file: !1, line: 371, column: 16)
!758 = !DILocalVariable(name: "entry", scope: !756, file: !1, line: 373, type: !740)
!759 = !DILocalVariable(name: "si", scope: !760, file: !1, line: 382, type: !762)
!760 = distinct !DILexicalBlock(scope: !761, file: !1, line: 381, column: 42)
!761 = distinct !DILexicalBlock(scope: !757, file: !1, line: 381, column: 16)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "setTypeIterator", file: !7, line: 1361, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 1356, size: 192, elements: !765)
!765 = !{!766, !767, !768, !769}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !764, file: !7, line: 1357, baseType: !158, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !764, file: !7, line: 1358, baseType: !41, size: 32, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "ii", scope: !764, file: !7, line: 1359, baseType: !41, size: 32, offset: 96)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !764, file: !7, line: 1360, baseType: !770, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !13, line: 95, baseType: !772)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !13, line: 88, size: 384, elements: !773)
!773 = !{!774, !775, !776, !777, !778, !779, !780}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !772, file: !13, line: 89, baseType: !11, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !772, file: !13, line: 90, baseType: !68, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !772, file: !13, line: 91, baseType: !41, size: 32, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !772, file: !13, line: 91, baseType: !41, size: 32, offset: 160)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !772, file: !13, line: 92, baseType: !55, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !772, file: !13, line: 92, baseType: !55, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !772, file: !13, line: 94, baseType: !201, size: 64, offset: 320)
!781 = !DILocalVariable(name: "sdsele", scope: !760, file: !1, line: 383, type: !90)
!782 = !DILocalVariable(name: "zs", scope: !783, file: !1, line: 399, type: !5)
!783 = distinct !DILexicalBlock(scope: !784, file: !1, line: 391, column: 55)
!784 = distinct !DILexicalBlock(scope: !761, file: !1, line: 391, column: 16)
!785 = !DILocalVariable(name: "zsl", scope: !783, file: !1, line: 400, type: !81)
!786 = !DILocalVariable(name: "ln", scope: !783, file: !1, line: 401, type: !787)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "zskiplistNode", file: !7, line: 818, baseType: !87)
!789 = !DILocalVariable(name: "sdsele", scope: !783, file: !1, line: 402, type: !90)
!790 = !DILocalVariable(name: "rangelen", scope: !783, file: !1, line: 403, type: !41)
!791 = !DILocalVariable(name: "zsetlen", scope: !792, file: !1, line: 407, type: !68)
!792 = distinct !DILexicalBlock(scope: !793, file: !1, line: 406, column: 19)
!793 = distinct !DILexicalBlock(scope: !783, file: !1, line: 406, column: 13)
!794 = !DILocalVariable(name: "set", scope: !795, file: !1, line: 431, type: !11)
!795 = distinct !DILexicalBlock(scope: !796, file: !1, line: 430, column: 43)
!796 = distinct !DILexicalBlock(scope: !784, file: !1, line: 430, column: 16)
!797 = !DILocalVariable(name: "di", scope: !795, file: !1, line: 432, type: !770)
!798 = !DILocalVariable(name: "setele", scope: !795, file: !1, line: 433, type: !55)
!799 = !DILocalVariable(name: "sdsele", scope: !795, file: !1, line: 434, type: !90)
!800 = !DILocalVariable(name: "byval", scope: !801, file: !1, line: 452, type: !158)
!801 = distinct !DILexicalBlock(scope: !802, file: !1, line: 451, column: 41)
!802 = distinct !DILexicalBlock(scope: !803, file: !1, line: 451, column: 9)
!803 = distinct !DILexicalBlock(scope: !804, file: !1, line: 451, column: 9)
!804 = distinct !DILexicalBlock(scope: !805, file: !1, line: 450, column: 20)
!805 = distinct !DILexicalBlock(scope: !537, file: !1, line: 450, column: 9)
!806 = !DILocalVariable(name: "eptr", scope: !807, file: !1, line: 466, type: !92)
!807 = distinct !DILexicalBlock(scope: !808, file: !1, line: 465, column: 46)
!808 = distinct !DILexicalBlock(scope: !809, file: !1, line: 465, column: 21)
!809 = distinct !DILexicalBlock(scope: !810, file: !1, line: 464, column: 20)
!810 = distinct !DILexicalBlock(scope: !801, file: !1, line: 462, column: 17)
!811 = !DILocalVariable(name: "ln", scope: !812, file: !1, line: 510, type: !209)
!812 = distinct !DILexicalBlock(scope: !813, file: !1, line: 509, column: 40)
!813 = distinct !DILexicalBlock(scope: !814, file: !1, line: 509, column: 9)
!814 = distinct !DILexicalBlock(scope: !815, file: !1, line: 509, column: 9)
!815 = distinct !DILexicalBlock(scope: !816, file: !1, line: 506, column: 34)
!816 = distinct !DILexicalBlock(scope: !817, file: !1, line: 506, column: 16)
!817 = distinct !DILexicalBlock(scope: !537, file: !1, line: 504, column: 9)
!818 = !DILocalVariable(name: "li", scope: !812, file: !1, line: 511, type: !819)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !205, line: 45, baseType: !820)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !205, line: 42, size: 128, elements: !821)
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !820, file: !205, line: 43, baseType: !209, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !820, file: !205, line: 44, baseType: !41, size: 32, offset: 64)
!824 = !DILocalVariable(name: "sop", scope: !825, file: !1, line: 516, type: !152)
!825 = distinct !DILexicalBlock(scope: !812, file: !1, line: 515, column: 41)
!826 = !DILocalVariable(name: "val", scope: !825, file: !1, line: 517, type: !158)
!827 = !DILocalVariable(name: "sobj", scope: !828, file: !1, line: 534, type: !158)
!828 = distinct !DILexicalBlock(scope: !816, file: !1, line: 533, column: 12)
!829 = !DILocalVariable(name: "ln", scope: !830, file: !1, line: 538, type: !209)
!830 = distinct !DILexicalBlock(scope: !831, file: !1, line: 537, column: 40)
!831 = distinct !DILexicalBlock(scope: !832, file: !1, line: 537, column: 9)
!832 = distinct !DILexicalBlock(scope: !828, file: !1, line: 537, column: 9)
!833 = !DILocalVariable(name: "li", scope: !830, file: !1, line: 539, type: !819)
!834 = !DILocalVariable(name: "sop", scope: !835, file: !1, line: 546, type: !152)
!835 = distinct !DILexicalBlock(scope: !836, file: !1, line: 545, column: 45)
!836 = distinct !DILexicalBlock(scope: !837, file: !1, line: 543, column: 20)
!837 = distinct !DILexicalBlock(scope: !830, file: !1, line: 541, column: 17)
!838 = !DILocalVariable(name: "val", scope: !835, file: !1, line: 547, type: !158)
!839 = !DILocation(line: 189, column: 26, scope: !537)
!840 = !DILocation(line: 191, column: 18, scope: !537)
!841 = !DILocation(line: 192, column: 9, scope: !537)
!842 = !DILocation(line: 192, column: 19, scope: !537)
!843 = !DILocation(line: 193, column: 5, scope: !537)
!844 = !DILocation(line: 193, column: 10, scope: !537)
!845 = !DILocation(line: 193, column: 27, scope: !537)
!846 = !DILocation(line: 194, column: 12, scope: !537)
!847 = !DILocation(line: 195, column: 9, scope: !537)
!848 = !DILocation(line: 196, column: 9, scope: !537)
!849 = !DILocation(line: 197, column: 9, scope: !537)
!850 = !DILocation(line: 198, column: 21, scope: !537)
!851 = !DILocation(line: 198, column: 37, scope: !537)
!852 = !DILocation(line: 202, column: 32, scope: !537)
!853 = !{!854, !182, i64 16}
!854 = !{!"client", !320, i64 0, !179, i64 8, !182, i64 16, !182, i64 24, !182, i64 32, !320, i64 40, !182, i64 48, !320, i64 56, !179, i64 64, !182, i64 72, !182, i64 80, !182, i64 88, !179, i64 96, !179, i64 100, !320, i64 104, !182, i64 112, !460, i64 120, !320, i64 128, !320, i64 136, !320, i64 144, !320, i64 152, !179, i64 160, !179, i64 164, !179, i64 168, !179, i64 172, !179, i64 176, !320, i64 184, !320, i64 192, !182, i64 200, !460, i64 208, !460, i64 216, !460, i64 224, !460, i64 232, !460, i64 240, !180, i64 248, !179, i64 292, !180, i64 296, !179, i64 344, !855, i64 352, !179, i64 384, !856, i64 392, !460, i64 480, !182, i64 488, !182, i64 496, !182, i64 504, !182, i64 512, !182, i64 520, !179, i64 528, !180, i64 532}
!855 = !{!"multiState", !182, i64 0, !179, i64 8, !179, i64 12, !179, i64 16, !320, i64 24}
!856 = !{!"blockingState", !460, i64 0, !182, i64 8, !182, i64 16, !320, i64 24, !182, i64 32, !182, i64 40, !460, i64 48, !460, i64 56, !179, i64 64, !179, i64 68, !460, i64 72, !182, i64 80}
!857 = !DILocation(line: 202, column: 38, scope: !537)
!858 = !{!854, !182, i64 72}
!859 = !DILocation(line: 202, column: 35, scope: !537)
!860 = !{!182, !182, i64 0}
!861 = !DILocation(line: 202, column: 15, scope: !537)
!862 = !DILocation(line: 198, column: 11, scope: !537)
!863 = !DILocation(line: 203, column: 9, scope: !864)
!864 = distinct !DILexicalBlock(scope: !537, file: !1, line: 203, column: 9)
!865 = !DILocation(line: 203, column: 17, scope: !864)
!866 = !DILocation(line: 203, column: 29, scope: !864)
!867 = !DILocation(line: 203, column: 45, scope: !864)
!868 = !DILocation(line: 207, column: 27, scope: !869)
!869 = distinct !DILexicalBlock(scope: !864, file: !1, line: 206, column: 5)
!870 = !{!871, !182, i64 112}
!871 = !{!"sharedObjectsStruct", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !182, i64 32, !182, i64 40, !182, i64 48, !182, i64 56, !182, i64 64, !182, i64 72, !182, i64 80, !182, i64 88, !182, i64 96, !182, i64 104, !182, i64 112, !182, i64 120, !182, i64 128, !182, i64 136, !182, i64 144, !182, i64 152, !182, i64 160, !182, i64 168, !182, i64 176, !182, i64 184, !182, i64 192, !182, i64 200, !182, i64 208, !182, i64 216, !182, i64 224, !182, i64 232, !182, i64 240, !182, i64 248, !182, i64 256, !182, i64 264, !182, i64 272, !182, i64 280, !182, i64 288, !182, i64 296, !182, i64 304, !182, i64 312, !182, i64 320, !182, i64 328, !182, i64 336, !182, i64 344, !182, i64 352, !182, i64 360, !180, i64 368, !180, i64 448, !180, i64 80448, !180, i64 80704, !182, i64 80960, !182, i64 80968}
!872 = !DILocation(line: 207, column: 9, scope: !869)
!873 = !DILocation(line: 208, column: 9, scope: !869)
!874 = !DILocation(line: 213, column: 18, scope: !537)
!875 = !DILocation(line: 190, column: 11, scope: !537)
!876 = !DILocation(line: 214, column: 5, scope: !537)
!877 = !{!878, !182, i64 24}
!878 = !{!"list", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !182, i64 32, !320, i64 40}
!879 = !DILocation(line: 194, column: 9, scope: !537)
!880 = !DILocation(line: 221, column: 9, scope: !881)
!881 = distinct !DILexicalBlock(scope: !537, file: !1, line: 220, column: 9)
!882 = !DILocation(line: 223, column: 19, scope: !881)
!883 = !DILocation(line: 0, scope: !881)
!884 = !DILocation(line: 226, column: 18, scope: !537)
!885 = !{!854, !179, i64 64}
!886 = !DILocation(line: 226, column: 13, scope: !537)
!887 = !DILocation(line: 226, column: 5, scope: !537)
!888 = !DILocation(line: 227, column: 33, scope: !688)
!889 = !DILocation(line: 227, column: 13, scope: !688)
!890 = !DILocation(line: 228, column: 28, scope: !891)
!891 = distinct !DILexicalBlock(scope: !688, file: !1, line: 228, column: 13)
!892 = !DILocation(line: 228, column: 25, scope: !891)
!893 = !DILocation(line: 228, column: 37, scope: !891)
!894 = !DILocation(line: 228, column: 14, scope: !891)
!895 = !DILocation(line: 228, column: 13, scope: !688)
!896 = !DILocation(line: 230, column: 21, scope: !897)
!897 = distinct !DILexicalBlock(scope: !891, file: !1, line: 230, column: 20)
!898 = !DILocation(line: 230, column: 20, scope: !891)
!899 = !DILocation(line: 232, column: 21, scope: !900)
!900 = distinct !DILexicalBlock(scope: !897, file: !1, line: 232, column: 20)
!901 = !DILocation(line: 232, column: 20, scope: !897)
!902 = !DILocation(line: 234, column: 21, scope: !903)
!903 = distinct !DILexicalBlock(scope: !900, file: !1, line: 234, column: 20)
!904 = !DILocation(line: 234, column: 69, scope: !903)
!905 = !DILocation(line: 234, column: 57, scope: !903)
!906 = !DILocation(line: 235, column: 55, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !1, line: 235, column: 17)
!908 = distinct !DILexicalBlock(scope: !903, file: !1, line: 234, column: 75)
!909 = !DILocation(line: 235, column: 46, scope: !907)
!910 = !DILocation(line: 235, column: 18, scope: !907)
!911 = !DILocation(line: 236, column: 18, scope: !907)
!912 = !DILocation(line: 236, column: 27, scope: !907)
!913 = !DILocation(line: 237, column: 49, scope: !907)
!914 = !DILocation(line: 237, column: 55, scope: !907)
!915 = !DILocation(line: 237, column: 46, scope: !907)
!916 = !DILocation(line: 237, column: 18, scope: !907)
!917 = !DILocation(line: 238, column: 18, scope: !907)
!918 = !DILocation(line: 235, column: 17, scope: !908)
!919 = !DILocation(line: 244, column: 21, scope: !920)
!920 = distinct !DILexicalBlock(scope: !903, file: !1, line: 244, column: 20)
!921 = !DILocation(line: 244, column: 69, scope: !920)
!922 = !DILocation(line: 244, column: 57, scope: !920)
!923 = !DILocation(line: 245, column: 33, scope: !924)
!924 = distinct !DILexicalBlock(scope: !920, file: !1, line: 244, column: 75)
!925 = !DILocation(line: 245, column: 24, scope: !924)
!926 = !DILocation(line: 247, column: 9, scope: !924)
!927 = !DILocation(line: 247, column: 21, scope: !928)
!928 = distinct !DILexicalBlock(scope: !920, file: !1, line: 247, column: 20)
!929 = !DILocation(line: 247, column: 54, scope: !928)
!930 = !DILocation(line: 248, column: 31, scope: !931)
!931 = distinct !DILexicalBlock(scope: !928, file: !1, line: 247, column: 72)
!932 = !DILocation(line: 248, column: 22, scope: !931)
!933 = !DILocation(line: 251, column: 38, scope: !934)
!934 = distinct !DILexicalBlock(scope: !931, file: !1, line: 251, column: 17)
!935 = !DILocation(line: 251, column: 17, scope: !934)
!936 = !DILocation(line: 251, column: 47, scope: !934)
!937 = !DILocation(line: 251, column: 17, scope: !931)
!938 = !DILocation(line: 256, column: 28, scope: !939)
!939 = distinct !DILexicalBlock(scope: !940, file: !1, line: 256, column: 21)
!940 = distinct !DILexicalBlock(scope: !934, file: !1, line: 253, column: 20)
!941 = !{!459, !179, i64 2924}
!942 = !DILocation(line: 256, column: 21, scope: !939)
!943 = !DILocation(line: 256, column: 21, scope: !940)
!944 = !DILocation(line: 257, column: 21, scope: !945)
!945 = distinct !DILexicalBlock(scope: !939, file: !1, line: 256, column: 45)
!946 = !DILocation(line: 259, column: 21, scope: !945)
!947 = !DILocation(line: 263, column: 21, scope: !948)
!948 = distinct !DILexicalBlock(scope: !928, file: !1, line: 263, column: 20)
!949 = !DILocation(line: 263, column: 55, scope: !948)
!950 = !DILocation(line: 264, column: 24, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !1, line: 264, column: 17)
!952 = distinct !DILexicalBlock(scope: !948, file: !1, line: 263, column: 73)
!953 = !DILocation(line: 264, column: 17, scope: !951)
!954 = !DILocation(line: 264, column: 17, scope: !952)
!955 = !DILocation(line: 265, column: 17, scope: !956)
!956 = distinct !DILexicalBlock(scope: !951, file: !1, line: 264, column: 41)
!957 = !DILocation(line: 267, column: 17, scope: !956)
!958 = !DILocation(line: 270, column: 38, scope: !952)
!959 = !DILocation(line: 270, column: 29, scope: !952)
!960 = !DILocation(line: 38, column: 45, scope: !149, inlinedAt: !961)
!961 = distinct !DILocation(line: 269, column: 40, scope: !952)
!962 = !DILocation(line: 38, column: 57, scope: !149, inlinedAt: !961)
!963 = !DILocation(line: 39, column: 30, scope: !149, inlinedAt: !961)
!964 = !DILocation(line: 39, column: 25, scope: !149, inlinedAt: !961)
!965 = !DILocation(line: 40, column: 9, scope: !149, inlinedAt: !961)
!966 = !DILocation(line: 40, column: 14, scope: !149, inlinedAt: !961)
!967 = !DILocation(line: 41, column: 9, scope: !149, inlinedAt: !961)
!968 = !DILocation(line: 41, column: 17, scope: !149, inlinedAt: !961)
!969 = !DILocation(line: 42, column: 5, scope: !149, inlinedAt: !961)
!970 = !DILocation(line: 269, column: 13, scope: !952)
!971 = !DILocation(line: 271, column: 18, scope: !952)
!972 = !DILocation(line: 274, column: 31, scope: !973)
!973 = distinct !DILexicalBlock(scope: !948, file: !1, line: 273, column: 16)
!974 = !{!871, !182, i64 128}
!975 = !DILocation(line: 274, column: 13, scope: !973)
!976 = !DILocation(line: 276, column: 13, scope: !973)
!977 = !DILocation(line: 0, scope: !537)
!978 = !DILocation(line: 0, scope: !979)
!979 = distinct !DILexicalBlock(scope: !891, file: !1, line: 228, column: 49)
!980 = !DILocation(line: 278, column: 10, scope: !688)
!981 = !DILocation(line: 283, column: 9, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !1, line: 282, column: 23)
!983 = distinct !DILexicalBlock(scope: !537, file: !1, line: 282, column: 9)
!984 = !DILocation(line: 284, column: 9, scope: !982)
!985 = !DILocation(line: 285, column: 9, scope: !982)
!986 = !DILocation(line: 294, column: 9, scope: !987)
!987 = distinct !DILexicalBlock(scope: !537, file: !1, line: 294, column: 9)
!988 = !DILocation(line: 294, column: 18, scope: !987)
!989 = !DILocation(line: 305, column: 18, scope: !990)
!990 = distinct !DILexicalBlock(scope: !537, file: !1, line: 305, column: 9)
!991 = !DILocation(line: 295, column: 18, scope: !987)
!992 = !DILocation(line: 295, column: 23, scope: !987)
!993 = !DILocation(line: 295, column: 34, scope: !987)
!994 = !DILocation(line: 296, column: 10, scope: !987)
!995 = !DILocation(line: 296, column: 19, scope: !987)
!996 = !DILocation(line: 296, column: 25, scope: !987)
!997 = !{!854, !179, i64 160}
!998 = !DILocation(line: 296, column: 31, scope: !987)
!999 = !DILocation(line: 294, column: 9, scope: !537)
!1000 = !DILocation(line: 302, column: 5, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !987, file: !1, line: 297, column: 5)
!1002 = !DILocation(line: 305, column: 23, scope: !990)
!1003 = !DILocation(line: 305, column: 9, scope: !537)
!1004 = !DILocation(line: 306, column: 9, scope: !990)
!1005 = !DILocation(line: 309, column: 21, scope: !537)
!1006 = !DILocation(line: 309, column: 5, scope: !537)
!1007 = !DILocation(line: 310, column: 32, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !537, file: !1, line: 309, column: 27)
!1009 = !DILocation(line: 310, column: 57, scope: !1008)
!1010 = !DILocation(line: 311, column: 32, scope: !1008)
!1011 = !DILocation(line: 311, column: 54, scope: !1008)
!1012 = !DILocation(line: 312, column: 32, scope: !1008)
!1013 = !{!1014, !182, i64 0}
!1014 = !{!"zset", !182, i64 0, !182, i64 8}
!1015 = !{!1016, !320, i64 24}
!1016 = !{!"dictht", !182, i64 0, !320, i64 8, !320, i64 16, !320, i64 24}
!1017 = !DILocation(line: 312, column: 71, scope: !1008)
!1018 = !DILocation(line: 194, column: 26, scope: !537)
!1019 = !DILocation(line: 313, column: 29, scope: !1008)
!1020 = !DILocation(line: 0, scope: !1008)
!1021 = !DILocation(line: 317, column: 14, scope: !537)
!1022 = !DILocation(line: 317, column: 13, scope: !537)
!1023 = !DILocation(line: 193, column: 45, scope: !537)
!1024 = !DILocation(line: 318, column: 12, scope: !537)
!1025 = !DILocation(line: 318, column: 24, scope: !537)
!1026 = !DILocation(line: 318, column: 11, scope: !537)
!1027 = !DILocation(line: 318, column: 31, scope: !537)
!1028 = !DILocation(line: 318, column: 50, scope: !537)
!1029 = !DILocation(line: 318, column: 62, scope: !537)
!1030 = !DILocation(line: 319, column: 18, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !537, file: !1, line: 319, column: 9)
!1032 = !DILocation(line: 193, column: 52, scope: !537)
!1033 = !DILocation(line: 319, column: 15, scope: !1031)
!1034 = !DILocation(line: 0, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1031, file: !1, line: 319, column: 29)
!1036 = !DILocation(line: 321, column: 15, scope: !1035)
!1037 = !DILocation(line: 319, column: 9, scope: !537)
!1038 = !DILocation(line: 323, column: 13, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !537, file: !1, line: 323, column: 9)
!1040 = !DILocation(line: 323, column: 9, scope: !537)
!1041 = !DILocation(line: 335, column: 19, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !537, file: !1, line: 335, column: 9)
!1043 = !DILocation(line: 335, column: 24, scope: !1042)
!1044 = !DILocation(line: 335, column: 36, scope: !1042)
!1045 = !DILocation(line: 335, column: 53, scope: !1042)
!1046 = !DILocation(line: 336, column: 9, scope: !1042)
!1047 = !DILocation(line: 335, column: 66, scope: !1042)
!1048 = !DILocation(line: 336, column: 18, scope: !1042)
!1049 = !DILocation(line: 337, column: 16, scope: !1042)
!1050 = !DILocation(line: 337, column: 28, scope: !1042)
!1051 = !DILocation(line: 337, column: 21, scope: !1042)
!1052 = !DILocation(line: 339, column: 24, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 338, column: 5)
!1054 = !DILocation(line: 339, column: 21, scope: !1053)
!1055 = !DILocation(line: 340, column: 5, scope: !1053)
!1056 = !DILocation(line: 343, column: 46, scope: !537)
!1057 = !DILocation(line: 343, column: 45, scope: !537)
!1058 = !DILocation(line: 343, column: 14, scope: !537)
!1059 = !DILocation(line: 199, column: 22, scope: !537)
!1060 = !DILocation(line: 346, column: 18, scope: !693)
!1061 = !DILocation(line: 346, column: 23, scope: !693)
!1062 = !DILocation(line: 346, column: 38, scope: !693)
!1063 = !DILocation(line: 346, column: 35, scope: !693)
!1064 = !DILocation(line: 353, column: 17, scope: !691)
!1065 = !DILocation(line: 353, column: 13, scope: !692)
!1066 = !DILocation(line: 355, column: 13, scope: !690)
!1067 = !DILocation(line: 357, column: 21, scope: !690)
!1068 = !DILocation(line: 357, column: 35, scope: !690)
!1069 = !DILocation(line: 357, column: 67, scope: !690)
!1070 = !DILocation(line: 358, column: 21, scope: !690)
!1071 = !DILocation(line: 356, column: 18, scope: !690)
!1072 = !DILocation(line: 354, column: 31, scope: !690)
!1073 = !DILocation(line: 360, column: 21, scope: !690)
!1074 = !DILocation(line: 360, column: 33, scope: !690)
!1075 = !DILocation(line: 355, column: 27, scope: !690)
!1076 = !DILocation(line: 360, column: 36, scope: !690)
!1077 = !DILocation(line: 360, column: 13, scope: !690)
!1078 = !DILocation(line: 361, column: 33, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !690, file: !1, line: 360, column: 61)
!1080 = !DILocation(line: 361, column: 27, scope: !1079)
!1081 = !DILocation(line: 361, column: 31, scope: !1079)
!1082 = !DILocation(line: 362, column: 27, scope: !1079)
!1083 = !DILocation(line: 363, column: 29, scope: !1079)
!1084 = !DILocation(line: 363, column: 36, scope: !1079)
!1085 = !DILocation(line: 364, column: 18, scope: !1079)
!1086 = distinct !{!1086, !1077, !1087}
!1087 = !DILocation(line: 365, column: 13, scope: !690)
!1088 = !DILocation(line: 366, column: 13, scope: !690)
!1089 = !DILocation(line: 0, scope: !1079)
!1090 = !DILocation(line: 368, column: 17, scope: !690)
!1091 = !DILocation(line: 370, column: 9, scope: !691)
!1092 = !DILocation(line: 370, column: 9, scope: !690)
!1093 = !DILocation(line: 371, column: 16, scope: !693)
!1094 = !DILocation(line: 372, column: 32, scope: !756)
!1095 = !DILocation(line: 372, column: 27, scope: !756)
!1096 = !DILocation(line: 373, column: 9, scope: !756)
!1097 = !DILocation(line: 373, column: 23, scope: !756)
!1098 = !DILocation(line: 374, column: 15, scope: !756)
!1099 = !DILocation(line: 374, column: 9, scope: !756)
!1100 = !DILocation(line: 375, column: 29, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !756, file: !1, line: 374, column: 40)
!1102 = !DILocation(line: 375, column: 23, scope: !1101)
!1103 = !DILocation(line: 375, column: 27, scope: !1101)
!1104 = !DILocation(line: 376, column: 23, scope: !1101)
!1105 = !DILocation(line: 377, column: 25, scope: !1101)
!1106 = !DILocation(line: 377, column: 32, scope: !1101)
!1107 = !DILocation(line: 378, column: 14, scope: !1101)
!1108 = distinct !{!1108, !1099, !1109}
!1109 = !DILocation(line: 379, column: 9, scope: !756)
!1110 = !DILocation(line: 380, column: 9, scope: !756)
!1111 = !DILocation(line: 0, scope: !1101)
!1112 = !DILocation(line: 381, column: 5, scope: !757)
!1113 = !DILocation(line: 381, column: 5, scope: !756)
!1114 = !DILocation(line: 381, column: 30, scope: !761)
!1115 = !DILocation(line: 381, column: 16, scope: !757)
!1116 = !DILocation(line: 382, column: 31, scope: !760)
!1117 = !DILocation(line: 382, column: 26, scope: !760)
!1118 = !DILocation(line: 384, column: 25, scope: !760)
!1119 = !DILocation(line: 383, column: 13, scope: !760)
!1120 = !DILocation(line: 384, column: 48, scope: !760)
!1121 = !DILocation(line: 384, column: 9, scope: !760)
!1122 = !DILocation(line: 385, column: 29, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !760, file: !1, line: 384, column: 57)
!1124 = !DILocation(line: 385, column: 23, scope: !1123)
!1125 = !DILocation(line: 385, column: 27, scope: !1123)
!1126 = !DILocation(line: 386, column: 23, scope: !1123)
!1127 = !DILocation(line: 387, column: 25, scope: !1123)
!1128 = !DILocation(line: 387, column: 32, scope: !1123)
!1129 = !DILocation(line: 388, column: 14, scope: !1123)
!1130 = distinct !{!1130, !1121, !1131}
!1131 = !DILocation(line: 389, column: 9, scope: !760)
!1132 = !DILocation(line: 390, column: 9, scope: !760)
!1133 = !DILocation(line: 0, scope: !1123)
!1134 = !DILocation(line: 391, column: 5, scope: !760)
!1135 = !DILocation(line: 391, column: 30, scope: !784)
!1136 = !DILocation(line: 391, column: 42, scope: !784)
!1137 = !DILocation(line: 399, column: 29, scope: !783)
!1138 = !DILocation(line: 399, column: 15, scope: !783)
!1139 = !DILocation(line: 400, column: 30, scope: !783)
!1140 = !{!1014, !182, i64 8}
!1141 = !DILocation(line: 400, column: 20, scope: !783)
!1142 = !DILocation(line: 403, column: 13, scope: !783)
!1143 = !DILocation(line: 406, column: 13, scope: !793)
!1144 = !DILocation(line: 406, column: 13, scope: !783)
!1145 = !DILocation(line: 407, column: 28, scope: !792)
!1146 = !DILocation(line: 409, column: 23, scope: !792)
!1147 = !{!1148, !182, i64 8}
!1148 = !{!"zskiplist", !182, i64 0, !182, i64 8, !320, i64 16, !179, i64 24}
!1149 = !DILocation(line: 401, column: 24, scope: !783)
!1150 = !DILocation(line: 410, column: 23, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !792, file: !1, line: 410, column: 17)
!1152 = !DILocation(line: 410, column: 17, scope: !792)
!1153 = !DILocation(line: 407, column: 18, scope: !792)
!1154 = !DILocation(line: 411, column: 53, scope: !1151)
!1155 = !DILocation(line: 411, column: 22, scope: !1151)
!1156 = !DILocation(line: 411, column: 17, scope: !1151)
!1157 = !DILocation(line: 413, column: 23, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !793, file: !1, line: 412, column: 16)
!1159 = !{!1148, !182, i64 0}
!1160 = !DILocation(line: 413, column: 40, scope: !1158)
!1161 = !{!1162, !182, i64 0}
!1162 = !{!"zskiplistLevel", !182, i64 0, !320, i64 8}
!1163 = !DILocation(line: 414, column: 23, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1158, file: !1, line: 414, column: 17)
!1165 = !DILocation(line: 414, column: 17, scope: !1158)
!1166 = !DILocation(line: 415, column: 51, scope: !1164)
!1167 = !DILocation(line: 415, column: 22, scope: !1164)
!1168 = !DILocation(line: 415, column: 17, scope: !1164)
!1169 = !DILocation(line: 0, scope: !1158)
!1170 = !DILocation(line: 418, column: 9, scope: !783)
!1171 = !DILocation(line: 418, column: 23, scope: !783)
!1172 = !DILocation(line: 419, column: 13, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !783, file: !1, line: 418, column: 27)
!1174 = !DILocation(line: 420, column: 26, scope: !1173)
!1175 = !DILocation(line: 402, column: 13, scope: !783)
!1176 = !DILocation(line: 87, column: 39, scope: !288, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 421, column: 55, scope: !1173)
!1178 = !DILocation(line: 88, column: 27, scope: !288, inlinedAt: !1177)
!1179 = !DILocation(line: 88, column: 19, scope: !288, inlinedAt: !1177)
!1180 = !DILocation(line: 89, column: 5, scope: !288, inlinedAt: !1177)
!1181 = !DILocation(line: 91, column: 20, scope: !303, inlinedAt: !1177)
!1182 = !DILocation(line: 91, column: 13, scope: !303, inlinedAt: !1177)
!1183 = !DILocation(line: 93, column: 20, scope: !303, inlinedAt: !1177)
!1184 = !DILocation(line: 93, column: 34, scope: !303, inlinedAt: !1177)
!1185 = !DILocation(line: 93, column: 13, scope: !303, inlinedAt: !1177)
!1186 = !DILocation(line: 95, column: 20, scope: !303, inlinedAt: !1177)
!1187 = !DILocation(line: 95, column: 35, scope: !303, inlinedAt: !1177)
!1188 = !DILocation(line: 95, column: 13, scope: !303, inlinedAt: !1177)
!1189 = !DILocation(line: 97, column: 20, scope: !303, inlinedAt: !1177)
!1190 = !DILocation(line: 97, column: 35, scope: !303, inlinedAt: !1177)
!1191 = !DILocation(line: 97, column: 13, scope: !303, inlinedAt: !1177)
!1192 = !DILocation(line: 99, column: 20, scope: !303, inlinedAt: !1177)
!1193 = !DILocation(line: 99, column: 35, scope: !303, inlinedAt: !1177)
!1194 = !DILocation(line: 99, column: 13, scope: !303, inlinedAt: !1177)
!1195 = !DILocation(line: 0, scope: !303, inlinedAt: !1177)
!1196 = !DILocation(line: 102, column: 1, scope: !288, inlinedAt: !1177)
!1197 = !DILocation(line: 421, column: 29, scope: !1173)
!1198 = !DILocation(line: 421, column: 23, scope: !1173)
!1199 = !DILocation(line: 421, column: 27, scope: !1173)
!1200 = !DILocation(line: 422, column: 23, scope: !1173)
!1201 = !DILocation(line: 423, column: 25, scope: !1173)
!1202 = !DILocation(line: 423, column: 32, scope: !1173)
!1203 = !DILocation(line: 424, column: 14, scope: !1173)
!1204 = !DILocation(line: 425, column: 29, scope: !1173)
!1205 = !DILocation(line: 425, column: 53, scope: !1173)
!1206 = !DILocation(line: 425, column: 18, scope: !1173)
!1207 = distinct !{!1207, !1170, !1208}
!1208 = !DILocation(line: 426, column: 9, scope: !783)
!1209 = !DILocation(line: 428, column: 13, scope: !783)
!1210 = !DILocation(line: 0, scope: !1173)
!1211 = !DILocation(line: 430, column: 5, scope: !783)
!1212 = !DILocation(line: 430, column: 16, scope: !784)
!1213 = !DILocation(line: 431, column: 38, scope: !795)
!1214 = !DILocation(line: 431, column: 44, scope: !795)
!1215 = !DILocation(line: 431, column: 15, scope: !795)
!1216 = !DILocation(line: 435, column: 14, scope: !795)
!1217 = !DILocation(line: 432, column: 23, scope: !795)
!1218 = !DILocation(line: 436, column: 25, scope: !795)
!1219 = !DILocation(line: 433, column: 20, scope: !795)
!1220 = !DILocation(line: 436, column: 39, scope: !795)
!1221 = !DILocation(line: 436, column: 9, scope: !795)
!1222 = !DILocation(line: 437, column: 23, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !795, file: !1, line: 436, column: 48)
!1224 = !{!1225, !182, i64 0}
!1225 = !{!"dictEntry", !182, i64 0, !180, i64 8, !182, i64 16}
!1226 = !DILocation(line: 434, column: 13, scope: !795)
!1227 = !DILocation(line: 87, column: 39, scope: !288, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 438, column: 55, scope: !1223)
!1229 = !DILocation(line: 88, column: 27, scope: !288, inlinedAt: !1228)
!1230 = !DILocation(line: 88, column: 19, scope: !288, inlinedAt: !1228)
!1231 = !DILocation(line: 89, column: 5, scope: !288, inlinedAt: !1228)
!1232 = !DILocation(line: 91, column: 20, scope: !303, inlinedAt: !1228)
!1233 = !DILocation(line: 91, column: 13, scope: !303, inlinedAt: !1228)
!1234 = !DILocation(line: 93, column: 20, scope: !303, inlinedAt: !1228)
!1235 = !DILocation(line: 93, column: 34, scope: !303, inlinedAt: !1228)
!1236 = !DILocation(line: 93, column: 13, scope: !303, inlinedAt: !1228)
!1237 = !DILocation(line: 95, column: 20, scope: !303, inlinedAt: !1228)
!1238 = !DILocation(line: 95, column: 35, scope: !303, inlinedAt: !1228)
!1239 = !DILocation(line: 95, column: 13, scope: !303, inlinedAt: !1228)
!1240 = !DILocation(line: 97, column: 20, scope: !303, inlinedAt: !1228)
!1241 = !DILocation(line: 97, column: 35, scope: !303, inlinedAt: !1228)
!1242 = !DILocation(line: 97, column: 13, scope: !303, inlinedAt: !1228)
!1243 = !DILocation(line: 99, column: 20, scope: !303, inlinedAt: !1228)
!1244 = !DILocation(line: 99, column: 35, scope: !303, inlinedAt: !1228)
!1245 = !DILocation(line: 99, column: 13, scope: !303, inlinedAt: !1228)
!1246 = !DILocation(line: 0, scope: !303, inlinedAt: !1228)
!1247 = !DILocation(line: 102, column: 1, scope: !288, inlinedAt: !1228)
!1248 = !DILocation(line: 438, column: 29, scope: !1223)
!1249 = !DILocation(line: 438, column: 23, scope: !1223)
!1250 = !DILocation(line: 438, column: 27, scope: !1223)
!1251 = !DILocation(line: 439, column: 23, scope: !1223)
!1252 = !DILocation(line: 440, column: 25, scope: !1223)
!1253 = !DILocation(line: 440, column: 32, scope: !1223)
!1254 = !DILocation(line: 441, column: 14, scope: !1223)
!1255 = distinct !{!1255, !1221, !1256}
!1256 = !DILocation(line: 442, column: 9, scope: !795)
!1257 = !DILocation(line: 443, column: 9, scope: !795)
!1258 = !DILocation(line: 0, scope: !1223)
!1259 = !DILocation(line: 445, column: 9, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !796, file: !1, line: 444, column: 12)
!1261 = !DILocation(line: 344, column: 7, scope: !537)
!1262 = !DILocation(line: 0, scope: !1039)
!1263 = !DILocation(line: 447, column: 5, scope: !537)
!1264 = !DILocation(line: 450, column: 9, scope: !537)
!1265 = !DILocation(line: 451, column: 23, scope: !802)
!1266 = !DILocation(line: 451, column: 9, scope: !803)
!1267 = !DILocation(line: 453, column: 17, scope: !801)
!1268 = !DILocation(line: 455, column: 47, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !1, line: 453, column: 25)
!1270 = distinct !DILexicalBlock(scope: !801, file: !1, line: 453, column: 17)
!1271 = !DILocation(line: 455, column: 67, scope: !1269)
!1272 = !DILocation(line: 455, column: 25, scope: !1269)
!1273 = !DILocation(line: 452, column: 19, scope: !801)
!1274 = !DILocation(line: 456, column: 22, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1269, file: !1, line: 456, column: 21)
!1276 = !DILocation(line: 456, column: 21, scope: !1269)
!1277 = !DILocation(line: 459, column: 35, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1270, file: !1, line: 457, column: 20)
!1279 = !DILocation(line: 0, scope: !1278)
!1280 = !DILocation(line: 462, column: 17, scope: !801)
!1281 = !DILocation(line: 463, column: 21, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !810, file: !1, line: 462, column: 24)
!1283 = !DILocation(line: 463, column: 50, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1282, file: !1, line: 463, column: 21)
!1285 = !DILocation(line: 463, column: 39, scope: !1284)
!1286 = !DILocation(line: 463, column: 41, scope: !1284)
!1287 = !DILocation(line: 463, column: 48, scope: !1284)
!1288 = !DILocation(line: 486, column: 17, scope: !801)
!1289 = !DILocation(line: 465, column: 21, scope: !808)
!1290 = !DILocation(line: 466, column: 21, scope: !807)
!1291 = !DILocation(line: 468, column: 55, scope: !807)
!1292 = !DILocation(line: 466, column: 27, scope: !807)
!1293 = !DILocation(line: 468, column: 41, scope: !807)
!1294 = !DILocation(line: 468, column: 33, scope: !807)
!1295 = !DILocation(line: 468, column: 39, scope: !807)
!1296 = !DILocation(line: 469, column: 25, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !807, file: !1, line: 469, column: 25)
!1298 = !DILocation(line: 469, column: 33, scope: !1297)
!1299 = !DILocation(line: 469, column: 41, scope: !1297)
!1300 = !DILocation(line: 469, column: 44, scope: !1297)
!1301 = !DILocation(line: 469, column: 50, scope: !1297)
!1302 = !DILocation(line: 469, column: 60, scope: !1297)
!1303 = !DILocation(line: 470, column: 25, scope: !1297)
!1304 = !DILocation(line: 469, column: 25, scope: !807)
!1305 = !DILocation(line: 473, column: 21, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1297, file: !1, line: 471, column: 21)
!1307 = !DILocation(line: 474, column: 17, scope: !808)
!1308 = !DILocation(line: 474, column: 17, scope: !807)
!1309 = !DILocation(line: 478, column: 54, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !1, line: 474, column: 65)
!1311 = distinct !DILexicalBlock(scope: !808, file: !1, line: 474, column: 28)
!1312 = !DILocation(line: 478, column: 41, scope: !1310)
!1313 = !DILocation(line: 478, column: 33, scope: !1310)
!1314 = !DILocation(line: 478, column: 39, scope: !1310)
!1315 = !DILocation(line: 480, column: 21, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1311, file: !1, line: 479, column: 24)
!1317 = !DILocation(line: 487, column: 17, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !1, line: 486, column: 25)
!1319 = distinct !DILexicalBlock(scope: !801, file: !1, line: 486, column: 17)
!1320 = !DILocation(line: 488, column: 13, scope: !1318)
!1321 = !DILocation(line: 451, column: 37, scope: !802)
!1322 = distinct !{!1322, !1266, !1323}
!1323 = !DILocation(line: 489, column: 9, scope: !803)
!1324 = !DILocation(line: 491, column: 26, scope: !804)
!1325 = !DILocation(line: 492, column: 27, scope: !804)
!1326 = !DILocation(line: 493, column: 33, scope: !804)
!1327 = !DILocation(line: 493, column: 31, scope: !804)
!1328 = !DILocation(line: 494, column: 29, scope: !804)
!1329 = !DILocation(line: 494, column: 27, scope: !804)
!1330 = !DILocation(line: 495, column: 20, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !804, file: !1, line: 495, column: 13)
!1332 = !DILocation(line: 495, column: 30, scope: !1331)
!1333 = !DILocation(line: 495, column: 35, scope: !1331)
!1334 = !DILocation(line: 495, column: 54, scope: !1331)
!1335 = !DILocation(line: 495, column: 45, scope: !1331)
!1336 = !DILocation(line: 495, column: 42, scope: !1331)
!1337 = !DILocation(line: 495, column: 13, scope: !804)
!1338 = !DILocation(line: 496, column: 13, scope: !1331)
!1339 = !DILocation(line: 498, column: 13, scope: !1331)
!1340 = !DILocation(line: 503, column: 17, scope: !537)
!1341 = !DILocation(line: 503, column: 25, scope: !537)
!1342 = !DILocation(line: 503, column: 35, scope: !537)
!1343 = !DILocation(line: 503, column: 41, scope: !537)
!1344 = !DILocation(line: 503, column: 30, scope: !537)
!1345 = !DILocation(line: 503, column: 50, scope: !537)
!1346 = !DILocation(line: 503, column: 56, scope: !537)
!1347 = !DILocation(line: 504, column: 9, scope: !817)
!1348 = !DILocation(line: 504, column: 9, scope: !537)
!1349 = !DILocation(line: 505, column: 9, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !817, file: !1, line: 504, column: 31)
!1351 = !DILocation(line: 506, column: 5, scope: !1350)
!1352 = !DILocation(line: 506, column: 25, scope: !816)
!1353 = !DILocation(line: 506, column: 16, scope: !817)
!1354 = !DILocation(line: 508, column: 32, scope: !815)
!1355 = !DILocation(line: 508, column: 9, scope: !815)
!1356 = !DILocation(line: 509, column: 25, scope: !813)
!1357 = !DILocation(line: 509, column: 27, scope: !813)
!1358 = !DILocation(line: 509, column: 9, scope: !814)
!1359 = !DILocation(line: 511, column: 13, scope: !812)
!1360 = !DILocation(line: 513, column: 17, scope: !812)
!1361 = !DILocation(line: 513, column: 50, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !812, file: !1, line: 513, column: 17)
!1363 = !DILocation(line: 513, column: 25, scope: !1362)
!1364 = !DILocation(line: 511, column: 22, scope: !812)
!1365 = !DILocation(line: 514, column: 13, scope: !812)
!1366 = !DILocation(line: 515, column: 25, scope: !812)
!1367 = !DILocation(line: 510, column: 23, scope: !812)
!1368 = !DILocation(line: 515, column: 13, scope: !812)
!1369 = !DILocation(line: 516, column: 47, scope: !825)
!1370 = !{!1371, !182, i64 16}
!1371 = !{!"listNode", !182, i64 0, !182, i64 8, !182, i64 16}
!1372 = !DILocation(line: 516, column: 37, scope: !825)
!1373 = !DILocation(line: 517, column: 51, scope: !825)
!1374 = !DILocation(line: 517, column: 59, scope: !825)
!1375 = !DILocation(line: 518, column: 31, scope: !825)
!1376 = !DILocation(line: 517, column: 29, scope: !825)
!1377 = !DILocation(line: 517, column: 23, scope: !825)
!1378 = !DILocation(line: 520, column: 26, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !825, file: !1, line: 520, column: 21)
!1380 = !DILocation(line: 520, column: 31, scope: !1379)
!1381 = !DILocation(line: 520, column: 21, scope: !825)
!1382 = !DILocation(line: 521, column: 26, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !1, line: 521, column: 25)
!1384 = distinct !DILexicalBlock(scope: !1379, file: !1, line: 520, column: 47)
!1385 = !DILocation(line: 521, column: 25, scope: !1384)
!1386 = !DILocation(line: 522, column: 43, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !1, line: 521, column: 31)
!1388 = !{!871, !182, i64 80}
!1389 = !DILocation(line: 522, column: 25, scope: !1387)
!1390 = !DILocation(line: 523, column: 21, scope: !1387)
!1391 = !DILocation(line: 524, column: 25, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1383, file: !1, line: 523, column: 28)
!1393 = !DILocation(line: 525, column: 25, scope: !1392)
!1394 = !DILocation(line: 529, column: 21, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1379, file: !1, line: 527, column: 24)
!1396 = distinct !{!1396, !1368, !1397}
!1397 = !DILocation(line: 531, column: 13, scope: !812)
!1398 = !DILocation(line: 532, column: 9, scope: !813)
!1399 = !DILocation(line: 509, column: 36, scope: !813)
!1400 = distinct !{!1400, !1358, !1401}
!1401 = !DILocation(line: 532, column: 9, scope: !814)
!1402 = !DILocation(line: 534, column: 22, scope: !828)
!1403 = !DILocation(line: 534, column: 15, scope: !828)
!1404 = !DILocation(line: 537, column: 25, scope: !831)
!1405 = !DILocation(line: 537, column: 27, scope: !831)
!1406 = !DILocation(line: 537, column: 9, scope: !832)
!1407 = !DILocation(line: 539, column: 13, scope: !830)
!1408 = !DILocation(line: 541, column: 17, scope: !830)
!1409 = !DILocation(line: 542, column: 45, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !837, file: !1, line: 541, column: 25)
!1411 = !DILocation(line: 542, column: 17, scope: !1410)
!1412 = !DILocation(line: 543, column: 13, scope: !1410)
!1413 = !DILocation(line: 539, column: 22, scope: !830)
!1414 = !DILocation(line: 544, column: 17, scope: !836)
!1415 = !DILocation(line: 545, column: 29, scope: !836)
!1416 = !DILocation(line: 538, column: 23, scope: !830)
!1417 = !DILocation(line: 545, column: 17, scope: !836)
!1418 = !DILocation(line: 546, column: 51, scope: !835)
!1419 = !DILocation(line: 546, column: 41, scope: !835)
!1420 = !DILocation(line: 547, column: 55, scope: !835)
!1421 = !DILocation(line: 547, column: 63, scope: !835)
!1422 = !DILocation(line: 548, column: 35, scope: !835)
!1423 = !DILocation(line: 547, column: 33, scope: !835)
!1424 = !DILocation(line: 547, column: 27, scope: !835)
!1425 = !DILocation(line: 550, column: 30, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !835, file: !1, line: 550, column: 25)
!1427 = !DILocation(line: 550, column: 35, scope: !1426)
!1428 = !DILocation(line: 550, column: 25, scope: !835)
!1429 = !DILocation(line: 551, column: 30, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !1, line: 551, column: 29)
!1431 = distinct !DILexicalBlock(scope: !1426, file: !1, line: 550, column: 51)
!1432 = !DILocation(line: 551, column: 29, scope: !1431)
!1433 = !DILocation(line: 551, column: 41, scope: !1430)
!1434 = !DILocation(line: 551, column: 35, scope: !1430)
!1435 = !DILocation(line: 0, scope: !1430)
!1436 = !DILocation(line: 556, column: 25, scope: !1431)
!1437 = !DILocation(line: 557, column: 25, scope: !1431)
!1438 = distinct !{!1438, !1417, !1439}
!1439 = !DILocation(line: 562, column: 17, scope: !836)
!1440 = !DILocation(line: 560, column: 25, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1426, file: !1, line: 558, column: 28)
!1442 = !DILocation(line: 564, column: 9, scope: !831)
!1443 = !DILocation(line: 537, column: 36, scope: !831)
!1444 = distinct !{!1444, !1406, !1445}
!1445 = !DILocation(line: 564, column: 9, scope: !832)
!1446 = !DILocation(line: 565, column: 13, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !828, file: !1, line: 565, column: 13)
!1448 = !DILocation(line: 0, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1447, file: !1, line: 570, column: 20)
!1450 = !DILocation(line: 565, column: 13, scope: !828)
!1451 = !DILocation(line: 566, column: 13, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1447, file: !1, line: 565, column: 24)
!1453 = !DILocation(line: 568, column: 36, scope: !1452)
!1454 = !DILocation(line: 568, column: 40, scope: !1452)
!1455 = !{!1456, !179, i64 40}
!1456 = !{!"redisDb", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !182, i64 32, !179, i64 40, !460, i64 48, !182, i64 56}
!1457 = !DILocation(line: 567, column: 13, scope: !1452)
!1458 = !DILocation(line: 569, column: 29, scope: !1452)
!1459 = !DILocation(line: 570, column: 9, scope: !1452)
!1460 = !DILocation(line: 570, column: 20, scope: !1449)
!1461 = !DILocation(line: 570, column: 20, scope: !1447)
!1462 = !DILocation(line: 571, column: 34, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1449, file: !1, line: 570, column: 46)
!1464 = !DILocation(line: 571, column: 13, scope: !1463)
!1465 = !DILocation(line: 572, column: 66, scope: !1463)
!1466 = !DILocation(line: 572, column: 70, scope: !1463)
!1467 = !DILocation(line: 572, column: 13, scope: !1463)
!1468 = !DILocation(line: 574, column: 9, scope: !1463)
!1469 = !DILocation(line: 0, scope: !1452)
!1470 = !{!459, !460, i64 2080}
!1471 = !DILocation(line: 575, column: 9, scope: !828)
!1472 = !DILocation(line: 576, column: 28, scope: !828)
!1473 = !DILocation(line: 576, column: 9, scope: !828)
!1474 = !DILocation(line: 580, column: 19, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !1, line: 580, column: 5)
!1476 = distinct !DILexicalBlock(scope: !537, file: !1, line: 580, column: 5)
!1477 = !DILocation(line: 580, column: 5, scope: !1476)
!1478 = !DILocation(line: 581, column: 22, scope: !1475)
!1479 = !DILocation(line: 581, column: 32, scope: !1475)
!1480 = !DILocation(line: 581, column: 9, scope: !1475)
!1481 = !DILocation(line: 580, column: 33, scope: !1475)
!1482 = distinct !{!1482, !1477, !1483}
!1483 = !DILocation(line: 581, column: 35, scope: !1476)
!1484 = !DILocation(line: 583, column: 5, scope: !537)
!1485 = !DILocation(line: 584, column: 5, scope: !537)
!1486 = !DILocation(line: 585, column: 5, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !537, file: !1, line: 585, column: 5)
!1488 = !DILocation(line: 586, column: 19, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !1, line: 586, column: 13)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !1, line: 585, column: 37)
!1491 = distinct !DILexicalBlock(scope: !1487, file: !1, line: 585, column: 5)
!1492 = !DILocation(line: 586, column: 32, scope: !1489)
!1493 = !DILocation(line: 586, column: 34, scope: !1489)
!1494 = !DILocation(line: 586, column: 22, scope: !1489)
!1495 = !DILocation(line: 586, column: 13, scope: !1490)
!1496 = !DILocation(line: 587, column: 13, scope: !1489)
!1497 = !DILocation(line: 585, column: 33, scope: !1491)
!1498 = !DILocation(line: 585, column: 19, scope: !1491)
!1499 = distinct !{!1499, !1486, !1500}
!1500 = !DILocation(line: 588, column: 5, scope: !1487)
!1501 = !DILocation(line: 589, column: 5, scope: !537)
!1502 = !DILocation(line: 590, column: 1, scope: !537)
