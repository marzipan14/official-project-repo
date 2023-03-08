; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/db.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/db.c"
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
%struct.pthread_mutex_t_ = type opaque
%struct.sharedObjectsStruct = type { %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [10 x %struct.redisObject*], [10000 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], i8*, i8* }
%struct.rdbSaveInfo = type { i32, i32, [41 x i8], i64 }
%struct.dictIterator = type { %struct.dict*, i64, i32, i32, %struct.dictEntry*, %struct.dictEntry*, i64 }
%struct.zset = type { %struct.dict*, %struct.zskiplist* }
%struct.zskiplist = type { %struct.zskiplistNode*, %struct.zskiplistNode*, i64, i32 }
%struct.zskiplistNode = type { i8*, double, %struct.zskiplistNode*, [0 x %struct.zskiplistLevel] }
%struct.zskiplistLevel = type { %struct.zskiplistNode*, i64 }
%struct.intset = type { i32, i32, [0 x i8] }
%struct.moduleValue = type { %struct.RedisModuleType*, i8* }
%struct.RedisModuleType = type { i64, %struct.RedisModule*, i8* (%struct.RedisModuleIO*, i32)*, void (%struct.RedisModuleIO*, i8*)*, void (%struct.RedisModuleIO*, %struct.redisObject*, i8*)*, i64 (i8*)*, void (%struct.RedisModuleDigest*, i8*)*, void (i8*)*, i32 (%struct.RedisModuleIO*, i32, i32)*, void (%struct.RedisModuleIO*, i32)*, i32, [10 x i8] }
%struct.RedisModule = type opaque
%struct.RedisModuleIO = type { i64, %struct._rio*, %struct.RedisModuleType*, i32, i32, %struct.RedisModuleCtx*, %struct.redisObject* }
%struct._rio = type { i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*)*, i32 (%struct._rio*)*, void (%struct._rio*, i8*, i64)*, i64, i64, i64, %union.anon.1 }
%union.anon.1 = type { %struct.anon.5 }
%struct.anon.5 = type { i32*, i32*, i32, i64, i8* }
%struct.RedisModuleCtx = type opaque
%struct.RedisModuleDigest = type { [20 x i8], [20 x i8] }
%struct.anon.9 = type { i8*, i32 }
%struct.raxIterator = type { i32, %struct.rax*, i8*, i8*, i64, i64, [128 x i8], %struct.raxNode*, %struct.raxStack, i32 (%struct.raxNode**)* }
%struct.raxStack = type { i8**, i64, i64, [32 x i8*], i32 }

@server = external dso_local local_unnamed_addr global %struct.redisServer, align 8
@.str = private unnamed_addr constant [18 x i8] c"retval == DICT_OK\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/db.c\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"de != NULL\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"o->type == OBJ_STRING\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@shared = external dso_local local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"invalid DB index\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"SELECT is not allowed in cluster mode\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"DB index is out of range\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Type not handled in SCAN callback.\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"invalid cursor\00", align 1
@.str.11 = private unnamed_addr constant [78 x i8] c"o == NULL || o->type == OBJ_SET || o->type == OBJ_HASH || o->type == OBJ_ZSET\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Not handled encoding in SCAN.\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"kobj->encoding == OBJ_ENCODING_INT\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"zset\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"nosave\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"Errors trying to SHUTDOWN. Check logs.\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"rename_from\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"rename_to\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"MOVE is not allowed in cluster mode\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"SWAPDB is not allowed in cluster mode\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"invalid first DB index\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"invalid second DB index\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"dictFind(db->dict,key->ptr) != NULL\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"kde != NULL\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"expired\00", align 1
@.str.36 = private unnamed_addr constant [84 x i8] c"Redis built-in command declared keys positions not matching the arity requirements.\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"by\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"storedist\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"noack\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"streams\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c">=\00", align 1

; Function Attrs: noredzone nounwind
define dso_local void @updateLFU(%struct.redisObject*) local_unnamed_addr #0 !dbg !62 {
  %2 = tail call i64 @LFUDecrAndReturn(%struct.redisObject* %0) #7, !dbg !79
  %3 = trunc i64 %2 to i8, !dbg !81
  %4 = tail call zeroext i8 @LFULogIncr(i8 zeroext %3) #7, !dbg !82
  %5 = zext i8 %4 to i64, !dbg !82
  %6 = tail call i64 @LFUGetTimeInMinutes() #7, !dbg !83
  %7 = shl i64 %6, 8, !dbg !84
  %8 = or i64 %7, %5, !dbg !85
  %9 = trunc i64 %8 to i32, !dbg !86
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !87
  %11 = load i32, i32* %10, align 8, !dbg !88
  %12 = shl i32 %9, 8, !dbg !88
  %13 = and i32 %11, 255, !dbg !88
  %14 = or i32 %12, %13, !dbg !88
  store i32 %14, i32* %10, align 8, !dbg !88
  ret void, !dbg !89
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i64 @LFUDecrAndReturn(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i8 @LFULogIncr(i8 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @LFUGetTimeInMinutes() local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @lookupKey(%struct.redisDb* nocapture readonly, %struct.redisObject* nocapture readonly, i32) local_unnamed_addr #0 !dbg !90 {
  %4 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !206
  %5 = load %struct.dict*, %struct.dict** %4, align 8, !dbg !206, !tbaa !207
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !214
  %7 = load i8*, i8** %6, align 8, !dbg !214, !tbaa !215
  %8 = tail call %struct.dictEntry* @dictFind(%struct.dict* %5, i8* %7) #7, !dbg !217
  %9 = icmp eq %struct.dictEntry* %8, null, !dbg !219
  br i1 %9, label %46, label %10, !dbg !220

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %8, i64 0, i32 1, i32 0, !dbg !221
  %12 = bitcast i8** %11 to %struct.redisObject**, !dbg !221
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !221, !tbaa !222
  %14 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !224, !tbaa !226
  %15 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !233
  %16 = and i32 %15, %14, !dbg !234
  %17 = icmp eq i32 %16, -1, !dbg !234
  %18 = and i32 %2, 1, !dbg !235
  %19 = icmp eq i32 %18, 0, !dbg !235
  %20 = and i1 %19, %17, !dbg !234
  br i1 %20, label %21, label %46, !dbg !234

; <label>:21:                                     ; preds = %10
  %22 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !236, !tbaa !239
  %23 = and i32 %22, 2, !dbg !240
  %24 = icmp eq i32 %23, 0, !dbg !240
  br i1 %24, label %39, label %25, !dbg !241

; <label>:25:                                     ; preds = %21
  %26 = tail call i64 @LFUDecrAndReturn(%struct.redisObject* %13) #7, !dbg !245
  %27 = trunc i64 %26 to i8, !dbg !247
  %28 = tail call zeroext i8 @LFULogIncr(i8 zeroext %27) #7, !dbg !248
  %29 = zext i8 %28 to i64, !dbg !248
  %30 = tail call i64 @LFUGetTimeInMinutes() #7, !dbg !249
  %31 = shl i64 %30, 8, !dbg !250
  %32 = or i64 %31, %29, !dbg !251
  %33 = trunc i64 %32 to i32, !dbg !252
  %34 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %13, i64 0, i32 0, !dbg !253
  %35 = load i32, i32* %34, align 8, !dbg !254
  %36 = shl i32 %33, 8, !dbg !254
  %37 = and i32 %35, 255, !dbg !254
  %38 = or i32 %36, %37, !dbg !254
  store i32 %38, i32* %34, align 8, !dbg !254
  br label %46, !dbg !255

; <label>:39:                                     ; preds = %21
  %40 = tail call i32 @LRU_CLOCK() #7, !dbg !256
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %13, i64 0, i32 0, !dbg !258
  %42 = load i32, i32* %41, align 8, !dbg !259
  %43 = shl i32 %40, 8, !dbg !259
  %44 = and i32 %42, 255, !dbg !259
  %45 = or i32 %44, %43, !dbg !259
  store i32 %45, i32* %41, align 8, !dbg !259
  br label %46

; <label>:46:                                     ; preds = %3, %10, %39, %25
  %47 = phi %struct.redisObject* [ %13, %25 ], [ %13, %39 ], [ %13, %10 ], [ null, %3 ], !dbg !260
  ret %struct.redisObject* %47, !dbg !262
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @LRU_CLOCK() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @lookupKeyReadWithFlags(%struct.redisDb*, %struct.redisObject*, i32) local_unnamed_addr #0 !dbg !263 {
  %4 = tail call i32 @expireIfNeeded(%struct.redisDb* %0, %struct.redisObject* %1) #9, !dbg !272
  %5 = icmp eq i32 %4, 1, !dbg !274
  br i1 %5, label %6, label %24, !dbg !275

; <label>:6:                                      ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !276, !tbaa !279
  %8 = icmp eq i8* %7, null, !dbg !280
  br i1 %8, label %28, label %9, !dbg !281

; <label>:9:                                      ; preds = %6
  %10 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !282, !tbaa !284
  %11 = icmp eq %struct.client* %10, null, !dbg !285
  %12 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !286
  %13 = icmp eq %struct.client* %10, %12, !dbg !287
  %14 = or i1 %11, %13, !dbg !288
  br i1 %14, label %24, label %15, !dbg !288

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 10, !dbg !289
  %17 = load %struct.redisCommand*, %struct.redisCommand** %16, align 8, !dbg !289, !tbaa !290
  %18 = icmp eq %struct.redisCommand* %17, null, !dbg !294
  br i1 %18, label %24, label %19, !dbg !295

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %17, i64 0, i32 4, !dbg !296
  %21 = load i32, i32* %20, align 8, !dbg !296, !tbaa !297
  %22 = and i32 %21, 2, !dbg !299
  %23 = icmp eq i32 %22, 0, !dbg !299
  br i1 %23, label %24, label %28, !dbg !300

; <label>:24:                                     ; preds = %19, %15, %9, %3
  %25 = tail call %struct.redisObject* @lookupKey(%struct.redisDb* %0, %struct.redisObject* %1, i32 %2) #9, !dbg !301
  %26 = icmp eq %struct.redisObject* %25, null, !dbg !303
  %27 = select i1 %26, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 76), !dbg !305
  br label %28, !dbg !305

; <label>:28:                                     ; preds = %24, %19, %6
  %29 = phi i64* [ getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), %6 ], [ getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), %19 ], [ %27, %24 ]
  %30 = phi %struct.redisObject* [ null, %6 ], [ null, %19 ], [ %25, %24 ], !dbg !306
  %31 = load i64, i64* %29, align 8, !dbg !307, !tbaa !309
  %32 = add nsw i64 %31, 1, !dbg !307
  store i64 %32, i64* %29, align 8, !dbg !307, !tbaa !309
  ret %struct.redisObject* %30, !dbg !310
}

; Function Attrs: noredzone nounwind
define dso_local i32 @expireIfNeeded(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #0 !dbg !311 {
  %3 = tail call i32 @keyIsExpired(%struct.redisDb* %0, %struct.redisObject* %1) #9, !dbg !319
  %4 = icmp eq i32 %3, 0, !dbg !319
  br i1 %4, label %41, label %5, !dbg !321

; <label>:5:                                      ; preds = %2
  %6 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !322, !tbaa !279
  %7 = icmp eq i8* %6, null, !dbg !324
  br i1 %7, label %8, label %41, !dbg !325

; <label>:8:                                      ; preds = %5
  %9 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 72), align 8, !dbg !326, !tbaa !327
  %10 = add nsw i64 %9, 1, !dbg !326
  store i64 %10, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 72), align 8, !dbg !326, !tbaa !327
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 286), align 4, !dbg !328, !tbaa !329
  tail call void @propagateExpire(%struct.redisDb* %0, %struct.redisObject* %1, i32 %11) #9, !dbg !330
  %12 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 5, !dbg !331
  %13 = load i32, i32* %12, align 8, !dbg !331, !tbaa !332
  tail call void @notifyKeyspaceEvent(i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), %struct.redisObject* %1, i32 %13) #7, !dbg !333
  %14 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 286), align 4, !dbg !334, !tbaa !329
  %15 = icmp eq i32 %14, 0, !dbg !335
  br i1 %15, label %18, label %16, !dbg !335

; <label>:16:                                     ; preds = %8
  %17 = tail call i32 @dbAsyncDelete(%struct.redisDb* nonnull %0, %struct.redisObject* %1) #7, !dbg !336
  br label %41, !dbg !335

; <label>:18:                                     ; preds = %8
  %19 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !344
  %20 = load %struct.dict*, %struct.dict** %19, align 8, !dbg !344, !tbaa !346
  %21 = getelementptr inbounds %struct.dict, %struct.dict* %20, i64 0, i32 2, i64 0, i32 3, !dbg !344
  %22 = load i64, i64* %21, align 8, !dbg !344, !tbaa !347
  %23 = getelementptr inbounds %struct.dict, %struct.dict* %20, i64 0, i32 2, i64 1, i32 3, !dbg !344
  %24 = load i64, i64* %23, align 8, !dbg !344, !tbaa !347
  %25 = sub i64 0, %24, !dbg !349
  %26 = icmp eq i64 %22, %25, !dbg !349
  %27 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !350
  br i1 %26, label %31, label %28, !dbg !351

; <label>:28:                                     ; preds = %18
  %29 = load i8*, i8** %27, align 8, !dbg !352, !tbaa !215
  %30 = tail call i32 @dictDelete(%struct.dict* %20, i8* %29) #7, !dbg !353
  br label %31, !dbg !353

; <label>:31:                                     ; preds = %28, %18
  %32 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !354
  %33 = load %struct.dict*, %struct.dict** %32, align 8, !dbg !354, !tbaa !207
  %34 = load i8*, i8** %27, align 8, !dbg !356, !tbaa !215
  %35 = tail call i32 @dictDelete(%struct.dict* %33, i8* %34) #7, !dbg !357
  %36 = icmp eq i32 %35, 0, !dbg !358
  br i1 %36, label %37, label %41, !dbg !359

; <label>:37:                                     ; preds = %31
  %38 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !360, !tbaa !363
  %39 = icmp eq i32 %38, 0, !dbg !364
  br i1 %39, label %41, label %40, !dbg !365

; <label>:40:                                     ; preds = %37
  tail call void @slotToKeyUpdateKey(%struct.redisObject* nonnull %1, i32 0) #7, !dbg !371
  br label %41, !dbg !372

; <label>:41:                                     ; preds = %40, %37, %31, %16, %5, %2
  %42 = phi i32 [ 0, %2 ], [ 1, %5 ], [ %17, %16 ], [ 1, %37 ], [ 1, %40 ], [ 0, %31 ], !dbg !373
  ret i32 %42, !dbg !374
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @lookupKeyRead(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #0 !dbg !375 {
  %3 = tail call i32 @expireIfNeeded(%struct.redisDb* %0, %struct.redisObject* %1) #7, !dbg !387
  %4 = icmp eq i32 %3, 1, !dbg !388
  br i1 %4, label %5, label %23, !dbg !389

; <label>:5:                                      ; preds = %2
  %6 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !390, !tbaa !279
  %7 = icmp eq i8* %6, null, !dbg !391
  br i1 %7, label %27, label %8, !dbg !392

; <label>:8:                                      ; preds = %5
  %9 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !393, !tbaa !284
  %10 = icmp eq %struct.client* %9, null, !dbg !394
  %11 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !395
  %12 = icmp eq %struct.client* %9, %11, !dbg !396
  %13 = or i1 %10, %12, !dbg !397
  br i1 %13, label %23, label %14, !dbg !397

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds %struct.client, %struct.client* %9, i64 0, i32 10, !dbg !398
  %16 = load %struct.redisCommand*, %struct.redisCommand** %15, align 8, !dbg !398, !tbaa !290
  %17 = icmp eq %struct.redisCommand* %16, null, !dbg !399
  br i1 %17, label %23, label %18, !dbg !400

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %16, i64 0, i32 4, !dbg !401
  %20 = load i32, i32* %19, align 8, !dbg !401, !tbaa !297
  %21 = and i32 %20, 2, !dbg !402
  %22 = icmp eq i32 %21, 0, !dbg !402
  br i1 %22, label %23, label %27, !dbg !403

; <label>:23:                                     ; preds = %18, %14, %8, %2
  %24 = tail call %struct.redisObject* @lookupKey(%struct.redisDb* %0, %struct.redisObject* %1, i32 0) #7, !dbg !404
  %25 = icmp eq %struct.redisObject* %24, null, !dbg !406
  %26 = select i1 %25, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 76), !dbg !407
  br label %27, !dbg !407

; <label>:27:                                     ; preds = %23, %18, %5
  %28 = phi i64* [ getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), %5 ], [ getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), %18 ], [ %26, %23 ]
  %29 = phi %struct.redisObject* [ null, %5 ], [ null, %18 ], [ %24, %23 ], !dbg !408
  %30 = load i64, i64* %28, align 8, !dbg !409, !tbaa !309
  %31 = add nsw i64 %30, 1, !dbg !409
  store i64 %31, i64* %28, align 8, !dbg !409, !tbaa !309
  ret %struct.redisObject* %29, !dbg !410
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @lookupKeyWrite(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #0 !dbg !411 {
  %3 = tail call i32 @expireIfNeeded(%struct.redisDb* %0, %struct.redisObject* %1) #9, !dbg !417
  %4 = tail call %struct.redisObject* @lookupKey(%struct.redisDb* %0, %struct.redisObject* %1, i32 0) #9, !dbg !418
  ret %struct.redisObject* %4, !dbg !419
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @lookupKeyReadOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #0 !dbg !420 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !560
  %5 = load %struct.redisDb*, %struct.redisDb** %4, align 8, !dbg !560, !tbaa !561
  %6 = tail call i32 @expireIfNeeded(%struct.redisDb* %5, %struct.redisObject* %1) #7, !dbg !569
  %7 = icmp eq i32 %6, 1, !dbg !570
  br i1 %7, label %8, label %26, !dbg !571

; <label>:8:                                      ; preds = %3
  %9 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !572, !tbaa !279
  %10 = icmp eq i8* %9, null, !dbg !573
  br i1 %10, label %32, label %11, !dbg !574

; <label>:11:                                     ; preds = %8
  %12 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !575, !tbaa !284
  %13 = icmp eq %struct.client* %12, null, !dbg !576
  %14 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !577
  %15 = icmp eq %struct.client* %12, %14, !dbg !578
  %16 = or i1 %13, %15, !dbg !579
  br i1 %16, label %26, label %17, !dbg !579

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %struct.client, %struct.client* %12, i64 0, i32 10, !dbg !580
  %19 = load %struct.redisCommand*, %struct.redisCommand** %18, align 8, !dbg !580, !tbaa !290
  %20 = icmp eq %struct.redisCommand* %19, null, !dbg !581
  br i1 %20, label %26, label %21, !dbg !582

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %19, i64 0, i32 4, !dbg !583
  %23 = load i32, i32* %22, align 8, !dbg !583, !tbaa !297
  %24 = and i32 %23, 2, !dbg !584
  %25 = icmp eq i32 %24, 0, !dbg !584
  br i1 %25, label %26, label %32, !dbg !585

; <label>:26:                                     ; preds = %21, %17, %11, %3
  %27 = tail call %struct.redisObject* @lookupKey(%struct.redisDb* %5, %struct.redisObject* %1, i32 0) #7, !dbg !586
  %28 = icmp eq %struct.redisObject* %27, null, !dbg !588
  br i1 %28, label %32, label %29, !dbg !589

; <label>:29:                                     ; preds = %26
  %30 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 76), align 8, !dbg !590, !tbaa !591
  %31 = add nsw i64 %30, 1, !dbg !590
  store i64 %31, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 76), align 8, !dbg !590, !tbaa !591
  br label %35

; <label>:32:                                     ; preds = %26, %21, %8
  %33 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), align 8, !dbg !593, !tbaa !594
  %34 = add nsw i64 %33, 1, !dbg !593
  store i64 %34, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), align 8, !dbg !593, !tbaa !594
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %2) #7, !dbg !595
  br label %35, !dbg !595

; <label>:35:                                     ; preds = %29, %32
  %36 = phi %struct.redisObject* [ %27, %29 ], [ null, %32 ]
  ret %struct.redisObject* %36, !dbg !597
}

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @lookupKeyWriteOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #0 !dbg !598 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !607
  %5 = load %struct.redisDb*, %struct.redisDb** %4, align 8, !dbg !607, !tbaa !561
  %6 = tail call i32 @expireIfNeeded(%struct.redisDb* %5, %struct.redisObject* %1) #7, !dbg !611
  %7 = tail call %struct.redisObject* @lookupKey(%struct.redisDb* %5, %struct.redisObject* %1, i32 0) #7, !dbg !612
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !614
  br i1 %8, label %9, label %10, !dbg !616

; <label>:9:                                      ; preds = %3
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %2) #7, !dbg !617
  br label %10, !dbg !617

; <label>:10:                                     ; preds = %3, %9
  ret %struct.redisObject* %7, !dbg !618
}

; Function Attrs: noredzone nounwind
define dso_local void @dbAdd(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #0 !dbg !619 {
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !631
  %5 = load i8*, i8** %4, align 8, !dbg !631, !tbaa !215
  %6 = tail call i8* @sdsdup(i8* %5) #7, !dbg !632
  %7 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !634
  %8 = load %struct.dict*, %struct.dict** %7, align 8, !dbg !634, !tbaa !207
  %9 = bitcast %struct.redisObject* %2 to i8*, !dbg !635
  %10 = tail call i32 @dictAdd(%struct.dict* %8, i8* %6, i8* %9) #7, !dbg !636
  %11 = icmp eq i32 %10, 0, !dbg !638
  br i1 %11, label %13, label %12, !dbg !638

; <label>:12:                                     ; preds = %3
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 177) #7, !dbg !638
  tail call void @_exit(i32 1) #10, !dbg !638
  unreachable, !dbg !638

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 0, !dbg !639
  %15 = load i32, i32* %14, align 8, !dbg !639
  %16 = trunc i32 %15 to i4, !dbg !641
  switch i4 %16, label %18 [
    i4 1, label %17
    i4 3, label %17
  ], !dbg !641

; <label>:17:                                     ; preds = %13, %13
  tail call void @signalKeyAsReady(%struct.redisDb* nonnull %0, %struct.redisObject* nonnull %1) #7, !dbg !642
  br label %18, !dbg !642

; <label>:18:                                     ; preds = %13, %17
  %19 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !643, !tbaa !363
  %20 = icmp eq i32 %19, 0, !dbg !645
  br i1 %20, label %22, label %21, !dbg !646

; <label>:21:                                     ; preds = %18
  tail call void @slotToKeyUpdateKey(%struct.redisObject* nonnull %1, i32 1) #7, !dbg !652
  br label %22, !dbg !653

; <label>:22:                                     ; preds = %18, %21
  ret void, !dbg !654
}

; Function Attrs: noredzone
declare dso_local i8* @sdsdup(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @dictAdd(%struct.dict*, i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_serverAssertWithInfo(%struct.client*, %struct.redisObject*, i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @signalKeyAsReady(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @slotToKeyAdd(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !648 {
  tail call void @slotToKeyUpdateKey(%struct.redisObject* %0, i32 1) #9, !dbg !656
  ret void, !dbg !657
}

; Function Attrs: noredzone nounwind
define dso_local void @dbOverwrite(%struct.redisDb* nocapture readonly, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #0 !dbg !658 {
  %4 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !669
  %5 = load %struct.dict*, %struct.dict** %4, align 8, !dbg !669, !tbaa !207
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !670
  %7 = load i8*, i8** %6, align 8, !dbg !670, !tbaa !215
  %8 = tail call %struct.dictEntry* @dictFind(%struct.dict* %5, i8* %7) #7, !dbg !671
  %9 = icmp eq %struct.dictEntry* %8, null, !dbg !673
  br i1 %9, label %10, label %11, !dbg !673

; <label>:10:                                     ; preds = %3
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 192) #7, !dbg !673
  tail call void @_exit(i32 1) #10, !dbg !673
  unreachable, !dbg !673

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %8, i64 0, i32 1, i32 0, !dbg !675
  %13 = load i8*, i8** %12, align 8, !dbg !675
  %14 = bitcast i8* %13 to %struct.redisObject*, !dbg !676
  %15 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !678, !tbaa !239
  %16 = and i32 %15, 2, !dbg !680
  %17 = icmp eq i32 %16, 0, !dbg !680
  br i1 %17, label %26, label %18, !dbg !681

; <label>:18:                                     ; preds = %11
  %19 = bitcast i8* %13 to i32*, !dbg !682
  %20 = load i32, i32* %19, align 8, !dbg !682
  %21 = and i32 %20, -256, !dbg !684
  %22 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 0, !dbg !685
  %23 = load i32, i32* %22, align 8, !dbg !684
  %24 = and i32 %23, 255, !dbg !684
  %25 = or i32 %24, %21, !dbg !684
  store i32 %25, i32* %22, align 8, !dbg !684
  br label %26, !dbg !686

; <label>:26:                                     ; preds = %11, %18
  %27 = load %struct.dict*, %struct.dict** %4, align 8, !dbg !687, !tbaa !207
  %28 = getelementptr inbounds %struct.dict, %struct.dict* %27, i64 0, i32 0, !dbg !687
  %29 = load %struct.dictType*, %struct.dictType** %28, align 8, !dbg !687, !tbaa !690
  %30 = getelementptr inbounds %struct.dictType, %struct.dictType* %29, i64 0, i32 2, !dbg !687
  %31 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %30, align 8, !dbg !687, !tbaa !692
  %32 = icmp eq i8* (i8*, i8*)* %31, null, !dbg !687
  br i1 %32, label %38, label %33, !dbg !694

; <label>:33:                                     ; preds = %26
  %34 = getelementptr inbounds %struct.dict, %struct.dict* %27, i64 0, i32 1, !dbg !687
  %35 = load i8*, i8** %34, align 8, !dbg !687, !tbaa !695
  %36 = bitcast %struct.redisObject* %2 to i8*, !dbg !687
  %37 = tail call i8* %31(i8* %35, i8* %36) #7, !dbg !687
  store i8* %37, i8** %12, align 8, !dbg !687, !tbaa !222
  br label %40, !dbg !687

; <label>:38:                                     ; preds = %26
  %39 = bitcast i8** %12 to %struct.redisObject**, !dbg !687
  store %struct.redisObject* %2, %struct.redisObject** %39, align 8, !dbg !687, !tbaa !222
  br label %40

; <label>:40:                                     ; preds = %38, %33
  %41 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 287), align 8, !dbg !696, !tbaa !698
  %42 = icmp eq i32 %41, 0, !dbg !699
  br i1 %42, label %54, label %43, !dbg !700

; <label>:43:                                     ; preds = %40
  tail call void @freeObjAsync(%struct.redisObject* %14) #7, !dbg !701
  %44 = load %struct.dict*, %struct.dict** %4, align 8, !dbg !703, !tbaa !207
  %45 = getelementptr inbounds %struct.dict, %struct.dict* %44, i64 0, i32 0, !dbg !703
  %46 = load %struct.dictType*, %struct.dictType** %45, align 8, !dbg !703, !tbaa !690
  %47 = getelementptr inbounds %struct.dictType, %struct.dictType* %46, i64 0, i32 2, !dbg !703
  %48 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %47, align 8, !dbg !703, !tbaa !692
  %49 = icmp eq i8* (i8*, i8*)* %48, null, !dbg !703
  br i1 %49, label %54, label %50, !dbg !706

; <label>:50:                                     ; preds = %43
  %51 = getelementptr inbounds %struct.dict, %struct.dict* %44, i64 0, i32 1, !dbg !703
  %52 = load i8*, i8** %51, align 8, !dbg !703, !tbaa !695
  %53 = tail call i8* %48(i8* %52, i8* null) #7, !dbg !703
  br label %54, !dbg !703

; <label>:54:                                     ; preds = %43, %40, %50
  %55 = phi i8* [ %53, %50 ], [ %13, %40 ], [ null, %43 ], !dbg !707
  %56 = load %struct.dict*, %struct.dict** %4, align 8, !dbg !708, !tbaa !207
  %57 = getelementptr inbounds %struct.dict, %struct.dict* %56, i64 0, i32 0, !dbg !708
  %58 = load %struct.dictType*, %struct.dictType** %57, align 8, !dbg !708, !tbaa !690
  %59 = getelementptr inbounds %struct.dictType, %struct.dictType* %58, i64 0, i32 5, !dbg !708
  %60 = load void (i8*, i8*)*, void (i8*, i8*)** %59, align 8, !dbg !708, !tbaa !710
  %61 = icmp eq void (i8*, i8*)* %60, null, !dbg !708
  br i1 %61, label %65, label %62, !dbg !711

; <label>:62:                                     ; preds = %54
  %63 = getelementptr inbounds %struct.dict, %struct.dict* %56, i64 0, i32 1, !dbg !708
  %64 = load i8*, i8** %63, align 8, !dbg !708, !tbaa !695
  tail call void %60(i8* %64, i8* %55) #7, !dbg !708
  br label %65, !dbg !708

; <label>:65:                                     ; preds = %54, %62
  ret void, !dbg !712
}

; Function Attrs: noredzone
declare dso_local void @freeObjAsync(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @setKey(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #0 !dbg !713 {
  %4 = tail call i32 @expireIfNeeded(%struct.redisDb* %0, %struct.redisObject* %1) #7, !dbg !725
  %5 = tail call %struct.redisObject* @lookupKey(%struct.redisDb* %0, %struct.redisObject* %1, i32 0) #7, !dbg !726
  %6 = icmp eq %struct.redisObject* %5, null, !dbg !727
  br i1 %6, label %7, label %8, !dbg !728

; <label>:7:                                      ; preds = %3
  tail call void @dbAdd(%struct.redisDb* %0, %struct.redisObject* %1, %struct.redisObject* %2) #9, !dbg !729
  br label %9, !dbg !731

; <label>:8:                                      ; preds = %3
  tail call void @dbOverwrite(%struct.redisDb* %0, %struct.redisObject* %1, %struct.redisObject* %2) #9, !dbg !732
  br label %9

; <label>:9:                                      ; preds = %8, %7
  tail call void @incrRefCount(%struct.redisObject* %2) #7, !dbg !734
  %10 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !742
  %11 = load %struct.dict*, %struct.dict** %10, align 8, !dbg !742, !tbaa !207
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !742
  %13 = load i8*, i8** %12, align 8, !dbg !742, !tbaa !215
  %14 = tail call %struct.dictEntry* @dictFind(%struct.dict* %11, i8* %13) #7, !dbg !742
  %15 = icmp eq %struct.dictEntry* %14, null, !dbg !742
  br i1 %15, label %16, label %17, !dbg !742

; <label>:16:                                     ; preds = %9
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 1068) #7, !dbg !742
  tail call void @_exit(i32 1) #10, !dbg !742
  unreachable, !dbg !742

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !743
  %19 = load %struct.dict*, %struct.dict** %18, align 8, !dbg !743, !tbaa !346
  %20 = load i8*, i8** %12, align 8, !dbg !744, !tbaa !215
  %21 = tail call i32 @dictDelete(%struct.dict* %19, i8* %20) #7, !dbg !745
  tail call void @touchWatchedKey(%struct.redisDb* nonnull %0, %struct.redisObject* nonnull %1) #7, !dbg !755
  ret void, !dbg !756
}

; Function Attrs: noredzone
declare dso_local void @incrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @removeExpire(%struct.redisDb* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !736 {
  %3 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !759
  %4 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !759, !tbaa !207
  %5 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !759
  %6 = load i8*, i8** %5, align 8, !dbg !759, !tbaa !215
  %7 = tail call %struct.dictEntry* @dictFind(%struct.dict* %4, i8* %6) #7, !dbg !759
  %8 = icmp eq %struct.dictEntry* %7, null, !dbg !759
  br i1 %8, label %9, label %10, !dbg !759

; <label>:9:                                      ; preds = %2
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 1068) #7, !dbg !759
  tail call void @_exit(i32 1) #10, !dbg !759
  unreachable, !dbg !759

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !760
  %12 = load %struct.dict*, %struct.dict** %11, align 8, !dbg !760, !tbaa !346
  %13 = load i8*, i8** %5, align 8, !dbg !761, !tbaa !215
  %14 = tail call i32 @dictDelete(%struct.dict* %12, i8* %13) #7, !dbg !762
  %15 = icmp eq i32 %14, 0, !dbg !763
  %16 = zext i1 %15 to i32, !dbg !763
  ret i32 %16, !dbg !764
}

; Function Attrs: noredzone nounwind
define dso_local void @signalModifiedKey(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #0 !dbg !747 {
  tail call void @touchWatchedKey(%struct.redisDb* %0, %struct.redisObject* %1) #7, !dbg !767
  ret void, !dbg !768
}

; Function Attrs: noredzone nounwind
define dso_local i32 @dbExists(%struct.redisDb* nocapture readonly, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !769 {
  %3 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !775
  %4 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !775, !tbaa !207
  %5 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !776
  %6 = load i8*, i8** %5, align 8, !dbg !776, !tbaa !215
  %7 = tail call %struct.dictEntry* @dictFind(%struct.dict* %4, i8* %6) #7, !dbg !777
  %8 = icmp ne %struct.dictEntry* %7, null, !dbg !778
  %9 = zext i1 %8 to i32, !dbg !778
  ret i32 %9, !dbg !779
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @dbRandomKey(%struct.redisDb*) local_unnamed_addr #0 !dbg !780 {
  %2 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !793
  %3 = load %struct.dict*, %struct.dict** %2, align 8, !dbg !793, !tbaa !207
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %3, i64 0, i32 2, i64 0, i32 3, !dbg !793
  %5 = load i64, i64* %4, align 8, !dbg !793, !tbaa !347
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %3, i64 0, i32 2, i64 1, i32 3, !dbg !793
  %7 = load i64, i64* %6, align 8, !dbg !793, !tbaa !347
  %8 = add i64 %7, %5, !dbg !793
  %9 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !794
  %10 = load %struct.dict*, %struct.dict** %9, align 8, !dbg !794, !tbaa !346
  %11 = getelementptr inbounds %struct.dict, %struct.dict* %10, i64 0, i32 2, i64 0, i32 3, !dbg !794
  %12 = load i64, i64* %11, align 8, !dbg !794, !tbaa !347
  %13 = getelementptr inbounds %struct.dict, %struct.dict* %10, i64 0, i32 2, i64 1, i32 3, !dbg !794
  %14 = load i64, i64* %13, align 8, !dbg !794, !tbaa !347
  %15 = add i64 %14, %12, !dbg !794
  %16 = icmp eq i64 %8, %15, !dbg !795
  %17 = tail call %struct.dictEntry* @dictGetRandomKey(%struct.dict* %3) #7, !dbg !796
  %18 = icmp eq %struct.dictEntry* %17, null, !dbg !798
  br i1 %18, label %69, label %19, !dbg !800

; <label>:19:                                     ; preds = %1, %65
  %20 = phi %struct.dictEntry* [ %67, %65 ], [ %17, %1 ]
  %21 = phi i32 [ %62, %65 ], [ 100, %1 ]
  %22 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %20, i64 0, i32 0, !dbg !801
  %23 = load i8*, i8** %22, align 8, !dbg !801, !tbaa !802
  %24 = getelementptr inbounds i8, i8* %23, i64 -1, !dbg !816
  %25 = load i8, i8* %24, align 1, !dbg !816, !tbaa !222
  %26 = trunc i8 %25 to i3, !dbg !818
  switch i3 %26, label %48 [
    i3 0, label %27
    i3 1, label %30
    i3 2, label %34
    i3 3, label %39
    i3 -4, label %44
  ], !dbg !818

; <label>:27:                                     ; preds = %19
  %28 = lshr i8 %25, 3, !dbg !819
  %29 = zext i8 %28 to i64, !dbg !819
  br label %48, !dbg !821

; <label>:30:                                     ; preds = %19
  %31 = getelementptr inbounds i8, i8* %23, i64 -3, !dbg !822
  %32 = load i8, i8* %31, align 1, !dbg !823, !tbaa !222
  %33 = zext i8 %32 to i64, !dbg !822
  br label %48, !dbg !824

; <label>:34:                                     ; preds = %19
  %35 = getelementptr inbounds i8, i8* %23, i64 -5, !dbg !825
  %36 = bitcast i8* %35 to i16*, !dbg !826
  %37 = load i16, i16* %36, align 1, !dbg !826, !tbaa !827
  %38 = zext i16 %37 to i64, !dbg !825
  br label %48, !dbg !829

; <label>:39:                                     ; preds = %19
  %40 = getelementptr inbounds i8, i8* %23, i64 -9, !dbg !830
  %41 = bitcast i8* %40 to i32*, !dbg !831
  %42 = load i32, i32* %41, align 1, !dbg !831, !tbaa !832
  %43 = zext i32 %42 to i64, !dbg !830
  br label %48, !dbg !833

; <label>:44:                                     ; preds = %19
  %45 = getelementptr inbounds i8, i8* %23, i64 -17, !dbg !834
  %46 = bitcast i8* %45 to i64*, !dbg !835
  %47 = load i64, i64* %46, align 1, !dbg !835, !tbaa !836
  br label %48, !dbg !837

; <label>:48:                                     ; preds = %19, %27, %30, %34, %39, %44
  %49 = phi i64 [ %47, %44 ], [ %43, %39 ], [ %38, %34 ], [ %33, %30 ], [ %29, %27 ], [ 0, %19 ], !dbg !838
  %50 = tail call %struct.redisObject* @createStringObject(i8* %23, i64 %49) #7, !dbg !839
  %51 = load %struct.dict*, %struct.dict** %9, align 8, !dbg !841, !tbaa !346
  %52 = tail call %struct.dictEntry* @dictFind(%struct.dict* %51, i8* %23) #7, !dbg !843
  %53 = icmp eq %struct.dictEntry* %52, null, !dbg !843
  br i1 %53, label %69, label %54, !dbg !844

; <label>:54:                                     ; preds = %48
  %55 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !845
  %56 = icmp ne i8* %55, null, !dbg !848
  %57 = and i1 %16, %56, !dbg !849
  br i1 %57, label %58, label %61, !dbg !849

; <label>:58:                                     ; preds = %54
  %59 = add nsw i32 %21, -1, !dbg !850
  %60 = icmp eq i32 %59, 0, !dbg !851
  br i1 %60, label %69, label %61, !dbg !852

; <label>:61:                                     ; preds = %58, %54
  %62 = phi i32 [ %59, %58 ], [ %21, %54 ], !dbg !853
  %63 = tail call i32 @expireIfNeeded(%struct.redisDb* nonnull %0, %struct.redisObject* %50) #9, !dbg !854
  %64 = icmp eq i32 %63, 0, !dbg !854
  br i1 %64, label %69, label %65, !dbg !856

; <label>:65:                                     ; preds = %61
  tail call void @decrRefCount(%struct.redisObject* %50) #7, !dbg !857
  %66 = load %struct.dict*, %struct.dict** %2, align 8, !dbg !859, !tbaa !207
  %67 = tail call %struct.dictEntry* @dictGetRandomKey(%struct.dict* %66) #7, !dbg !796
  %68 = icmp eq %struct.dictEntry* %67, null, !dbg !798
  br i1 %68, label %69, label %19, !dbg !800

; <label>:69:                                     ; preds = %48, %61, %58, %65, %1
  %70 = phi %struct.redisObject* [ null, %1 ], [ null, %65 ], [ %50, %58 ], [ %50, %61 ], [ %50, %48 ]
  ret %struct.redisObject* %70, !dbg !860
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictGetRandomKey(%struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @dbSyncDelete(%struct.redisDb* nocapture readonly, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !338 {
  %3 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !863
  %4 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !863, !tbaa !346
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %4, i64 0, i32 2, i64 0, i32 3, !dbg !863
  %6 = load i64, i64* %5, align 8, !dbg !863, !tbaa !347
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %4, i64 0, i32 2, i64 1, i32 3, !dbg !863
  %8 = load i64, i64* %7, align 8, !dbg !863, !tbaa !347
  %9 = sub i64 0, %8, !dbg !864
  %10 = icmp eq i64 %6, %9, !dbg !864
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !865
  br i1 %10, label %15, label %12, !dbg !866

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %11, align 8, !dbg !867, !tbaa !215
  %14 = tail call i32 @dictDelete(%struct.dict* %4, i8* %13) #7, !dbg !868
  br label %15, !dbg !868

; <label>:15:                                     ; preds = %2, %12
  %16 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !869
  %17 = load %struct.dict*, %struct.dict** %16, align 8, !dbg !869, !tbaa !207
  %18 = load i8*, i8** %11, align 8, !dbg !870, !tbaa !215
  %19 = tail call i32 @dictDelete(%struct.dict* %17, i8* %18) #7, !dbg !871
  %20 = icmp eq i32 %19, 0, !dbg !872
  br i1 %20, label %21, label %25, !dbg !873

; <label>:21:                                     ; preds = %15
  %22 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !874, !tbaa !363
  %23 = icmp eq i32 %22, 0, !dbg !875
  br i1 %23, label %25, label %24, !dbg !876

; <label>:24:                                     ; preds = %21
  tail call void @slotToKeyUpdateKey(%struct.redisObject* nonnull %1, i32 0) #7, !dbg !879
  br label %25, !dbg !880

; <label>:25:                                     ; preds = %15, %24, %21
  %26 = phi i32 [ 1, %21 ], [ 1, %24 ], [ 0, %15 ], !dbg !881
  ret i32 %26, !dbg !883
}

; Function Attrs: noredzone
declare dso_local i32 @dictDelete(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @slotToKeyDel(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !367 {
  tail call void @slotToKeyUpdateKey(%struct.redisObject* %0, i32 0) #9, !dbg !885
  ret void, !dbg !886
}

; Function Attrs: noredzone nounwind
define dso_local i32 @dbDelete(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #0 !dbg !887 {
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 287), align 8, !dbg !893, !tbaa !698
  %4 = icmp eq i32 %3, 0, !dbg !894
  br i1 %4, label %7, label %5, !dbg !894

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @dbAsyncDelete(%struct.redisDb* %0, %struct.redisObject* %1) #7, !dbg !895
  br label %30, !dbg !894

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !899
  %9 = load %struct.dict*, %struct.dict** %8, align 8, !dbg !899, !tbaa !346
  %10 = getelementptr inbounds %struct.dict, %struct.dict* %9, i64 0, i32 2, i64 0, i32 3, !dbg !899
  %11 = load i64, i64* %10, align 8, !dbg !899, !tbaa !347
  %12 = getelementptr inbounds %struct.dict, %struct.dict* %9, i64 0, i32 2, i64 1, i32 3, !dbg !899
  %13 = load i64, i64* %12, align 8, !dbg !899, !tbaa !347
  %14 = sub i64 0, %13, !dbg !900
  %15 = icmp eq i64 %11, %14, !dbg !900
  %16 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !901
  br i1 %15, label %20, label %17, !dbg !902

; <label>:17:                                     ; preds = %7
  %18 = load i8*, i8** %16, align 8, !dbg !903, !tbaa !215
  %19 = tail call i32 @dictDelete(%struct.dict* %9, i8* %18) #7, !dbg !904
  br label %20, !dbg !904

; <label>:20:                                     ; preds = %17, %7
  %21 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !905
  %22 = load %struct.dict*, %struct.dict** %21, align 8, !dbg !905, !tbaa !207
  %23 = load i8*, i8** %16, align 8, !dbg !906, !tbaa !215
  %24 = tail call i32 @dictDelete(%struct.dict* %22, i8* %23) #7, !dbg !907
  %25 = icmp eq i32 %24, 0, !dbg !908
  br i1 %25, label %26, label %30, !dbg !909

; <label>:26:                                     ; preds = %20
  %27 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !910, !tbaa !363
  %28 = icmp eq i32 %27, 0, !dbg !911
  br i1 %28, label %30, label %29, !dbg !912

; <label>:29:                                     ; preds = %26
  tail call void @slotToKeyUpdateKey(%struct.redisObject* nonnull %1, i32 0) #7, !dbg !915
  br label %30, !dbg !916

; <label>:30:                                     ; preds = %29, %26, %20, %5
  %31 = phi i32 [ %6, %5 ], [ 1, %26 ], [ 1, %29 ], [ 0, %20 ], !dbg !894
  ret i32 %31, !dbg !917
}

; Function Attrs: noredzone
declare dso_local i32 @dbAsyncDelete(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @dbUnshareStringValue(%struct.redisDb* nocapture readonly, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #0 !dbg !918 {
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 0, !dbg !931
  %5 = load i32, i32* %4, align 8, !dbg !931
  %6 = and i32 %5, 15, !dbg !931
  %7 = icmp eq i32 %6, 0, !dbg !931
  br i1 %7, label %9, label %8, !dbg !931

; <label>:8:                                      ; preds = %3
  tail call void @_serverAssert(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 318) #7, !dbg !931
  tail call void @_exit(i32 1) #10, !dbg !931
  unreachable, !dbg !931

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 1, !dbg !932
  %11 = load i32, i32* %10, align 4, !dbg !932, !tbaa !933
  %12 = icmp eq i32 %11, 1, !dbg !934
  %13 = and i32 %5, 240, !dbg !935
  %14 = icmp eq i32 %13, 0, !dbg !936
  %15 = and i1 %14, %12, !dbg !937
  br i1 %15, label %47, label %16, !dbg !937

; <label>:16:                                     ; preds = %9
  %17 = tail call %struct.redisObject* @getDecodedObject(%struct.redisObject* nonnull %2) #7, !dbg !938
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i64 0, i32 2, !dbg !940
  %19 = load i8*, i8** %18, align 8, !dbg !940, !tbaa !215
  %20 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !943
  %21 = load i8, i8* %20, align 1, !dbg !943, !tbaa !222
  %22 = trunc i8 %21 to i3, !dbg !945
  switch i3 %22, label %44 [
    i3 0, label %23
    i3 1, label %26
    i3 2, label %30
    i3 3, label %35
    i3 -4, label %40
  ], !dbg !945

; <label>:23:                                     ; preds = %16
  %24 = lshr i8 %21, 3, !dbg !946
  %25 = zext i8 %24 to i64, !dbg !946
  br label %44, !dbg !947

; <label>:26:                                     ; preds = %16
  %27 = getelementptr inbounds i8, i8* %19, i64 -3, !dbg !948
  %28 = load i8, i8* %27, align 1, !dbg !949, !tbaa !222
  %29 = zext i8 %28 to i64, !dbg !948
  br label %44, !dbg !950

; <label>:30:                                     ; preds = %16
  %31 = getelementptr inbounds i8, i8* %19, i64 -5, !dbg !951
  %32 = bitcast i8* %31 to i16*, !dbg !952
  %33 = load i16, i16* %32, align 1, !dbg !952, !tbaa !827
  %34 = zext i16 %33 to i64, !dbg !951
  br label %44, !dbg !953

; <label>:35:                                     ; preds = %16
  %36 = getelementptr inbounds i8, i8* %19, i64 -9, !dbg !954
  %37 = bitcast i8* %36 to i32*, !dbg !955
  %38 = load i32, i32* %37, align 1, !dbg !955, !tbaa !832
  %39 = zext i32 %38 to i64, !dbg !954
  br label %44, !dbg !956

; <label>:40:                                     ; preds = %16
  %41 = getelementptr inbounds i8, i8* %19, i64 -17, !dbg !957
  %42 = bitcast i8* %41 to i64*, !dbg !958
  %43 = load i64, i64* %42, align 1, !dbg !958, !tbaa !836
  br label %44, !dbg !959

; <label>:44:                                     ; preds = %16, %23, %26, %30, %35, %40
  %45 = phi i64 [ %43, %40 ], [ %39, %35 ], [ %34, %30 ], [ %29, %26 ], [ %25, %23 ], [ 0, %16 ], !dbg !960
  %46 = tail call %struct.redisObject* @createRawStringObject(i8* %19, i64 %45) #7, !dbg !961
  tail call void @decrRefCount(%struct.redisObject* %17) #7, !dbg !962
  tail call void @dbOverwrite(%struct.redisDb* %0, %struct.redisObject* %1, %struct.redisObject* %46) #9, !dbg !963
  br label %47, !dbg !964

; <label>:47:                                     ; preds = %9, %44
  %48 = phi %struct.redisObject* [ %46, %44 ], [ %2, %9 ]
  ret %struct.redisObject* %48, !dbg !965
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @getDecodedObject(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createRawStringObject(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @emptyDb(i32, i32, void (i8*)*) local_unnamed_addr #0 !dbg !966 {
  %4 = and i32 %1, 1, !dbg !982
  %5 = icmp slt i32 %0, -1, !dbg !985
  br i1 %5, label %9, label %6, !dbg !987

; <label>:6:                                      ; preds = %3
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !988, !tbaa !989
  %8 = icmp sgt i32 %7, %0, !dbg !990
  br i1 %8, label %11, label %9, !dbg !991

; <label>:9:                                      ; preds = %6, %3
  %10 = tail call i32* @__errno() #7, !dbg !992
  store i32 22, i32* %10, align 4, !dbg !994, !tbaa !832
  br label %61, !dbg !995

; <label>:11:                                     ; preds = %6
  %12 = icmp eq i32 %0, -1, !dbg !996
  %13 = add nsw i32 %7, -1, !dbg !999
  %14 = select i1 %12, i32 0, i32 %0, !dbg !1002
  %15 = select i1 %12, i32 %13, i32 %0, !dbg !1002
  %16 = icmp sgt i32 %14, %15, !dbg !1004
  br i1 %16, label %21, label %17, !dbg !1006

; <label>:17:                                     ; preds = %11
  %18 = icmp eq i32 %4, 0
  %19 = sext i32 %14 to i64, !dbg !1006
  %20 = sext i32 %15 to i64, !dbg !1006
  br label %25, !dbg !1006

; <label>:21:                                     ; preds = %43, %11
  %22 = phi i64 [ 0, %11 ], [ %37, %43 ], !dbg !1007
  %23 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !1009, !tbaa !363
  %24 = icmp eq i32 %23, 0, !dbg !1011
  br i1 %24, label %59, label %46, !dbg !1012

; <label>:25:                                     ; preds = %43, %17
  %26 = phi i64 [ %44, %43 ], [ %19, %17 ]
  %27 = phi i64 [ %37, %43 ], [ 0, %17 ]
  %28 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !1013, !tbaa !1014
  %29 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %28, i64 %26, !dbg !1013
  %30 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %29, i64 0, i32 0, !dbg !1013
  %31 = load %struct.dict*, %struct.dict** %30, align 8, !dbg !1013, !tbaa !207
  %32 = getelementptr inbounds %struct.dict, %struct.dict* %31, i64 0, i32 2, i64 0, i32 3, !dbg !1013
  %33 = load i64, i64* %32, align 8, !dbg !1013, !tbaa !347
  %34 = getelementptr inbounds %struct.dict, %struct.dict* %31, i64 0, i32 2, i64 1, i32 3, !dbg !1013
  %35 = load i64, i64* %34, align 8, !dbg !1013, !tbaa !347
  %36 = add i64 %33, %27, !dbg !1013
  %37 = add i64 %36, %35, !dbg !1015
  br i1 %18, label %39, label %38, !dbg !1016

; <label>:38:                                     ; preds = %25
  tail call void @emptyDbAsync(%struct.redisDb* %29) #7, !dbg !1017
  br label %43, !dbg !1020

; <label>:39:                                     ; preds = %25
  tail call void @dictEmpty(%struct.dict* %31, void (i8*)* %2) #7, !dbg !1021
  %40 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !1023, !tbaa !1014
  %41 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %40, i64 %26, i32 1, !dbg !1024
  %42 = load %struct.dict*, %struct.dict** %41, align 8, !dbg !1024, !tbaa !346
  tail call void @dictEmpty(%struct.dict* %42, void (i8*)* %2) #7, !dbg !1025
  br label %43

; <label>:43:                                     ; preds = %38, %39
  %44 = add nsw i64 %26, 1, !dbg !1026
  %45 = icmp slt i64 %26, %20, !dbg !1004
  br i1 %45, label %25, label %21, !dbg !1006, !llvm.loop !1027

; <label>:46:                                     ; preds = %21
  %47 = icmp eq i32 %4, 0, !dbg !1029
  br i1 %47, label %49, label %48, !dbg !1032

; <label>:48:                                     ; preds = %46
  tail call void @slotToKeyFlushAsync() #7, !dbg !1033
  br label %59, !dbg !1035

; <label>:49:                                     ; preds = %46
  %50 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !1036, !tbaa !1042
  %51 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %50, i64 0, i32 10, !dbg !1043
  %52 = load %struct.rax*, %struct.rax** %51, align 8, !dbg !1043, !tbaa !1044
  tail call void @raxFree(%struct.rax* %52) #7, !dbg !1046
  %53 = tail call %struct.rax* @raxNew() #7, !dbg !1047
  %54 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !1048, !tbaa !1042
  %55 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %54, i64 0, i32 10, !dbg !1049
  store %struct.rax* %53, %struct.rax** %55, align 8, !dbg !1050, !tbaa !1044
  %56 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %54, i64 0, i32 9, i64 0, !dbg !1051
  %57 = bitcast i64* %56 to i8*, !dbg !1051
  %58 = tail call i8* @memset(i8* nonnull %57, i32 0, i64 131072) #7, !dbg !1052
  br label %59

; <label>:59:                                     ; preds = %21, %48, %49
  br i1 %12, label %60, label %61, !dbg !1053

; <label>:60:                                     ; preds = %59
  tail call void @flushSlaveKeysWithExpireList() #7, !dbg !1054
  br label %61, !dbg !1054

; <label>:61:                                     ; preds = %59, %60, %9
  %62 = phi i64 [ -1, %9 ], [ %22, %60 ], [ %22, %59 ], !dbg !1056
  ret i64 %62, !dbg !1057
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @emptyDbAsync(%struct.redisDb*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @dictEmpty(%struct.dict*, void (i8*)*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @slotToKeyFlushAsync() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @slotToKeyFlush() local_unnamed_addr #0 !dbg !1037 {
  %1 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !1058, !tbaa !1042
  %2 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %1, i64 0, i32 10, !dbg !1059
  %3 = load %struct.rax*, %struct.rax** %2, align 8, !dbg !1059, !tbaa !1044
  tail call void @raxFree(%struct.rax* %3) #7, !dbg !1060
  %4 = tail call %struct.rax* @raxNew() #7, !dbg !1061
  %5 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !1062, !tbaa !1042
  %6 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %5, i64 0, i32 10, !dbg !1063
  store %struct.rax* %4, %struct.rax** %6, align 8, !dbg !1064, !tbaa !1044
  %7 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %5, i64 0, i32 9, i64 0, !dbg !1065
  %8 = bitcast i64* %7 to i8*, !dbg !1065
  %9 = tail call i8* @memset(i8* nonnull %8, i32 0, i64 131072) #7, !dbg !1066
  ret void, !dbg !1067
}

; Function Attrs: noredzone
declare dso_local void @flushSlaveKeysWithExpireList() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @selectDb(%struct.client* nocapture, i32) local_unnamed_addr #0 !dbg !1068 {
  %3 = icmp sgt i32 %1, -1, !dbg !1076
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !1078
  %5 = icmp sgt i32 %4, %1, !dbg !1079
  %6 = and i1 %3, %5, !dbg !1080
  br i1 %6, label %7, label %12, !dbg !1080

; <label>:7:                                      ; preds = %2
  %8 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !1081, !tbaa !1014
  %9 = sext i32 %1 to i64, !dbg !1082
  %10 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %8, i64 %9, !dbg !1082
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1083
  store %struct.redisDb* %10, %struct.redisDb** %11, align 8, !dbg !1084, !tbaa !561
  br label %12, !dbg !1085

; <label>:12:                                     ; preds = %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], !dbg !1086
  ret i32 %13, !dbg !1087
}

; Function Attrs: noredzone
declare dso_local void @touchWatchedKey(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @signalFlushedDb(i32) local_unnamed_addr #0 !dbg !1088 {
  tail call void @touchWatchedKeysOnFlush(i32 %0) #7, !dbg !1094
  ret void, !dbg !1095
}

; Function Attrs: noredzone
declare dso_local void @touchWatchedKeysOnFlush(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @getFlushCommandFlags(%struct.client*, i32* nocapture) local_unnamed_addr #0 !dbg !1096 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1104
  %4 = load i32, i32* %3, align 8, !dbg !1104, !tbaa !1106
  %5 = icmp sgt i32 %4, 1, !dbg !1107
  br i1 %5, label %6, label %19, !dbg !1108

; <label>:6:                                      ; preds = %2
  %7 = icmp eq i32 %4, 2, !dbg !1109
  br i1 %7, label %8, label %17, !dbg !1112

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1113
  %10 = load %struct.redisObject**, %struct.redisObject*** %9, align 8, !dbg !1113, !tbaa !1114
  %11 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %10, i64 1, !dbg !1115
  %12 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !1115, !tbaa !1116
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %12, i64 0, i32 2, !dbg !1117
  %14 = load i8*, i8** %13, align 8, !dbg !1117, !tbaa !215
  %15 = tail call i32 @strcasecmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !1118
  %16 = icmp eq i32 %15, 0, !dbg !1118
  br i1 %16, label %19, label %17, !dbg !1119

; <label>:17:                                     ; preds = %8, %6
  %18 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1120, !tbaa !1122
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %18) #7, !dbg !1124
  br label %21, !dbg !1125

; <label>:19:                                     ; preds = %2, %8
  %20 = phi i32 [ 1, %8 ], [ 0, %2 ]
  store i32 %20, i32* %1, align 4, !dbg !1126, !tbaa !832
  br label %21, !dbg !1127

; <label>:21:                                     ; preds = %19, %17
  %22 = phi i32 [ -1, %17 ], [ 0, %19 ], !dbg !1128
  ret i32 %22, !dbg !1129
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @flushdbCommand(%struct.client*) local_unnamed_addr #0 !dbg !1130 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1138
  %3 = load i32, i32* %2, align 8, !dbg !1138, !tbaa !1106
  %4 = icmp sgt i32 %3, 1, !dbg !1139
  br i1 %4, label %5, label %18, !dbg !1140

; <label>:5:                                      ; preds = %1
  %6 = icmp eq i32 %3, 2, !dbg !1141
  br i1 %6, label %7, label %16, !dbg !1142

; <label>:7:                                      ; preds = %5
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1143
  %9 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1143, !tbaa !1114
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 1, !dbg !1144
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !1144, !tbaa !1116
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 2, !dbg !1145
  %13 = load i8*, i8** %12, align 8, !dbg !1145, !tbaa !215
  %14 = tail call i32 @strcasecmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !1146
  %15 = icmp eq i32 %14, 0, !dbg !1146
  br i1 %15, label %18, label %16, !dbg !1147

; <label>:16:                                     ; preds = %5, %7
  %17 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1148, !tbaa !1122
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %17) #7, !dbg !1149
  br label %31, !dbg !1150

; <label>:18:                                     ; preds = %7, %1
  %19 = phi i32 [ 0, %1 ], [ 1, %7 ]
  %20 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1151
  %21 = load %struct.redisDb*, %struct.redisDb** %20, align 8, !dbg !1151, !tbaa !561
  %22 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %21, i64 0, i32 5, !dbg !1152
  %23 = load i32, i32* %22, align 8, !dbg !1152, !tbaa !332
  tail call void @touchWatchedKeysOnFlush(i32 %23) #7, !dbg !1155
  %24 = load %struct.redisDb*, %struct.redisDb** %20, align 8, !dbg !1156, !tbaa !561
  %25 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %24, i64 0, i32 5, !dbg !1157
  %26 = load i32, i32* %25, align 8, !dbg !1157, !tbaa !332
  %27 = tail call i64 @emptyDb(i32 %26, i32 %19, void (i8*)* null) #9, !dbg !1159
  %28 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1160, !tbaa !1161
  %29 = add nsw i64 %28, %27, !dbg !1160
  store i64 %29, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1160, !tbaa !1161
  %30 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1162, !tbaa !1163
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %30) #7, !dbg !1164
  br label %31, !dbg !1165

; <label>:31:                                     ; preds = %16, %18
  ret void, !dbg !1165
}

; Function Attrs: noredzone nounwind
define dso_local void @flushallCommand(%struct.client*) local_unnamed_addr #0 !dbg !1166 {
  %2 = alloca %struct.rdbSaveInfo, align 8
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1187
  %4 = load i32, i32* %3, align 8, !dbg !1187, !tbaa !1106
  %5 = icmp sgt i32 %4, 1, !dbg !1188
  br i1 %5, label %6, label %19, !dbg !1189

; <label>:6:                                      ; preds = %1
  %7 = icmp eq i32 %4, 2, !dbg !1190
  br i1 %7, label %8, label %17, !dbg !1191

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1192
  %10 = load %struct.redisObject**, %struct.redisObject*** %9, align 8, !dbg !1192, !tbaa !1114
  %11 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %10, i64 1, !dbg !1193
  %12 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !1193, !tbaa !1116
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %12, i64 0, i32 2, !dbg !1194
  %14 = load i8*, i8** %13, align 8, !dbg !1194, !tbaa !215
  %15 = tail call i32 @strcasecmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !1195
  %16 = icmp eq i32 %15, 0, !dbg !1195
  br i1 %16, label %19, label %17, !dbg !1196

; <label>:17:                                     ; preds = %6, %8
  %18 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1197, !tbaa !1122
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %18) #7, !dbg !1198
  br label %44, !dbg !1199

; <label>:19:                                     ; preds = %8, %1
  %20 = phi i32 [ 0, %1 ], [ 1, %8 ]
  tail call void @touchWatchedKeysOnFlush(i32 -1) #7, !dbg !1202
  %21 = tail call i64 @emptyDb(i32 -1, i32 %20, void (i8*)* null) #9, !dbg !1204
  %22 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1205, !tbaa !1161
  %23 = add nsw i64 %22, %21, !dbg !1205
  store i64 %23, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1205, !tbaa !1161
  %24 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1206, !tbaa !1163
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %24) #7, !dbg !1207
  %25 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !1208, !tbaa !226
  %26 = icmp eq i32 %25, -1, !dbg !1210
  br i1 %26, label %30, label %27, !dbg !1211

; <label>:27:                                     ; preds = %19
  %28 = tail call i32 @kill(i32 %25, i32 10) #7, !dbg !1212
  %29 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !1214, !tbaa !226
  tail call void @rdbRemoveTempFile(i32 %29) #7, !dbg !1215
  br label %30, !dbg !1216

; <label>:30:                                     ; preds = %19, %27
  %31 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 156), align 8, !dbg !1217, !tbaa !1218
  %32 = icmp sgt i32 %31, 0, !dbg !1219
  %33 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1220, !tbaa !1161
  br i1 %32, label %34, label %41, !dbg !1221

; <label>:34:                                     ; preds = %30
  %35 = bitcast %struct.rdbSaveInfo* %2 to i8*, !dbg !1222
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %35) #8, !dbg !1222
  %36 = call %struct.rdbSaveInfo* @rdbPopulateSaveInfo(%struct.rdbSaveInfo* nonnull %2) #7, !dbg !1224
  %37 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 157), align 8, !dbg !1226, !tbaa !1227
  %38 = call i32 @rdbSave(i8* %37, %struct.rdbSaveInfo* %36) #7, !dbg !1228
  %39 = shl i64 %33, 32, !dbg !1229
  %40 = ashr exact i64 %39, 32, !dbg !1229
  store i64 %40, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1230, !tbaa !1161
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %35) #8, !dbg !1231
  br label %41, !dbg !1232

; <label>:41:                                     ; preds = %30, %34
  %42 = phi i64 [ %40, %34 ], [ %33, %30 ], !dbg !1233
  %43 = add nsw i64 %42, 1, !dbg !1233
  store i64 %43, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1233, !tbaa !1161
  br label %44, !dbg !1234

; <label>:44:                                     ; preds = %17, %41
  ret void, !dbg !1234
}

; Function Attrs: noredzone
declare dso_local i32 @kill(i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @rdbRemoveTempFile(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.rdbSaveInfo* @rdbPopulateSaveInfo(%struct.rdbSaveInfo*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @rdbSave(i8*, %struct.rdbSaveInfo*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @delGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !1235 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1251
  %4 = load i32, i32* %3, align 8, !dbg !1251, !tbaa !1106
  %5 = icmp sgt i32 %4, 1, !dbg !1252
  br i1 %5, label %6, label %68, !dbg !1253

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %9 = icmp eq i32 %1, 0
  br label %10, !dbg !1253

; <label>:10:                                     ; preds = %6, %62
  %11 = phi i64 [ 1, %6 ], [ %64, %62 ]
  %12 = phi i32 [ 0, %6 ], [ %63, %62 ]
  %13 = load %struct.redisDb*, %struct.redisDb** %7, align 8, !dbg !1254, !tbaa !561
  %14 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1255, !tbaa !1114
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 %11, !dbg !1256
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !1256, !tbaa !1116
  %17 = tail call i32 @expireIfNeeded(%struct.redisDb* %13, %struct.redisObject* %16) #9, !dbg !1257
  %18 = load %struct.redisDb*, %struct.redisDb** %7, align 8, !dbg !1258, !tbaa !561
  %19 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1258, !tbaa !1114
  %20 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 %11, !dbg !1258
  %21 = load %struct.redisObject*, %struct.redisObject** %20, align 8, !dbg !1258, !tbaa !1116
  br i1 %9, label %22, label %45, !dbg !1259

; <label>:22:                                     ; preds = %10
  %23 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %18, i64 0, i32 1, !dbg !1263
  %24 = load %struct.dict*, %struct.dict** %23, align 8, !dbg !1263, !tbaa !346
  %25 = getelementptr inbounds %struct.dict, %struct.dict* %24, i64 0, i32 2, i64 0, i32 3, !dbg !1263
  %26 = load i64, i64* %25, align 8, !dbg !1263, !tbaa !347
  %27 = getelementptr inbounds %struct.dict, %struct.dict* %24, i64 0, i32 2, i64 1, i32 3, !dbg !1263
  %28 = load i64, i64* %27, align 8, !dbg !1263, !tbaa !347
  %29 = sub i64 0, %28, !dbg !1264
  %30 = icmp eq i64 %26, %29, !dbg !1264
  %31 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %21, i64 0, i32 2, !dbg !1265
  br i1 %30, label %35, label %32, !dbg !1266

; <label>:32:                                     ; preds = %22
  %33 = load i8*, i8** %31, align 8, !dbg !1267, !tbaa !215
  %34 = tail call i32 @dictDelete(%struct.dict* %24, i8* %33) #7, !dbg !1268
  br label %35, !dbg !1268

; <label>:35:                                     ; preds = %32, %22
  %36 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %18, i64 0, i32 0, !dbg !1269
  %37 = load %struct.dict*, %struct.dict** %36, align 8, !dbg !1269, !tbaa !207
  %38 = load i8*, i8** %31, align 8, !dbg !1270, !tbaa !215
  %39 = tail call i32 @dictDelete(%struct.dict* %37, i8* %38) #7, !dbg !1271
  %40 = icmp eq i32 %39, 0, !dbg !1272
  br i1 %40, label %41, label %62, !dbg !1273

; <label>:41:                                     ; preds = %35
  %42 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !1274, !tbaa !363
  %43 = icmp eq i32 %42, 0, !dbg !1275
  br i1 %43, label %48, label %44, !dbg !1276

; <label>:44:                                     ; preds = %41
  tail call void @slotToKeyUpdateKey(%struct.redisObject* nonnull %21, i32 0) #7, !dbg !1279
  br label %48, !dbg !1280

; <label>:45:                                     ; preds = %10
  %46 = tail call i32 @dbAsyncDelete(%struct.redisDb* %18, %struct.redisObject* %21) #7, !dbg !1281
  %47 = icmp eq i32 %46, 0, !dbg !1283
  br i1 %47, label %62, label %48, !dbg !1285

; <label>:48:                                     ; preds = %44, %41, %45
  %49 = load %struct.redisDb*, %struct.redisDb** %7, align 8, !dbg !1286, !tbaa !561
  %50 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1288, !tbaa !1114
  %51 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %50, i64 %11, !dbg !1289
  %52 = load %struct.redisObject*, %struct.redisObject** %51, align 8, !dbg !1289, !tbaa !1116
  tail call void @touchWatchedKey(%struct.redisDb* %49, %struct.redisObject* %52) #7, !dbg !1293
  %53 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1294, !tbaa !1114
  %54 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %53, i64 %11, !dbg !1295
  %55 = load %struct.redisObject*, %struct.redisObject** %54, align 8, !dbg !1295, !tbaa !1116
  %56 = load %struct.redisDb*, %struct.redisDb** %7, align 8, !dbg !1296, !tbaa !561
  %57 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %56, i64 0, i32 5, !dbg !1297
  %58 = load i32, i32* %57, align 8, !dbg !1297, !tbaa !332
  tail call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct.redisObject* %55, i32 %58) #7, !dbg !1298
  %59 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1299, !tbaa !1161
  %60 = add nsw i64 %59, 1, !dbg !1299
  store i64 %60, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1299, !tbaa !1161
  %61 = add nsw i32 %12, 1, !dbg !1300
  br label %62, !dbg !1301

; <label>:62:                                     ; preds = %35, %45, %48
  %63 = phi i32 [ %61, %48 ], [ %12, %45 ], [ %12, %35 ], !dbg !1302
  %64 = add nuw nsw i64 %11, 1, !dbg !1303
  %65 = load i32, i32* %3, align 8, !dbg !1251, !tbaa !1106
  %66 = sext i32 %65 to i64, !dbg !1252
  %67 = icmp slt i64 %64, %66, !dbg !1252
  br i1 %67, label %10, label %68, !dbg !1253, !llvm.loop !1304

; <label>:68:                                     ; preds = %62, %2
  %69 = phi i32 [ 0, %2 ], [ %63, %62 ], !dbg !1306
  %70 = sext i32 %69 to i64, !dbg !1307
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %70) #7, !dbg !1308
  ret void, !dbg !1309
}

; Function Attrs: noredzone
declare dso_local void @notifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @delCommand(%struct.client*) local_unnamed_addr #0 !dbg !1310 {
  tail call void @delGenericCommand(%struct.client* %0, i32 0) #9, !dbg !1314
  ret void, !dbg !1315
}

; Function Attrs: noredzone nounwind
define dso_local void @unlinkCommand(%struct.client*) local_unnamed_addr #0 !dbg !1316 {
  tail call void @delGenericCommand(%struct.client* %0, i32 1) #9, !dbg !1320
  ret void, !dbg !1321
}

; Function Attrs: noredzone nounwind
define dso_local void @existsCommand(%struct.client*) local_unnamed_addr #0 !dbg !1322 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1330
  %3 = load i32, i32* %2, align 8, !dbg !1330, !tbaa !1106
  %4 = icmp sgt i32 %3, 1, !dbg !1333
  br i1 %4, label %5, label %51, !dbg !1334

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %8, !dbg !1334

; <label>:8:                                      ; preds = %5, %39
  %9 = phi i64 [ 1, %5 ], [ %47, %39 ]
  %10 = phi i64 [ 0, %5 ], [ %46, %39 ]
  %11 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1335, !tbaa !561
  %12 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1338, !tbaa !1114
  %13 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %12, i64 %9, !dbg !1339
  %14 = load %struct.redisObject*, %struct.redisObject** %13, align 8, !dbg !1339, !tbaa !1116
  %15 = tail call i32 @expireIfNeeded(%struct.redisDb* %11, %struct.redisObject* %14) #7, !dbg !1347
  %16 = icmp eq i32 %15, 1, !dbg !1348
  br i1 %16, label %17, label %35, !dbg !1349

; <label>:17:                                     ; preds = %8
  %18 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !1350, !tbaa !279
  %19 = icmp eq i8* %18, null, !dbg !1351
  br i1 %19, label %39, label %20, !dbg !1352

; <label>:20:                                     ; preds = %17
  %21 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !1353, !tbaa !284
  %22 = icmp eq %struct.client* %21, null, !dbg !1354
  %23 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !1355
  %24 = icmp eq %struct.client* %21, %23, !dbg !1356
  %25 = or i1 %22, %24, !dbg !1357
  br i1 %25, label %35, label %26, !dbg !1357

; <label>:26:                                     ; preds = %20
  %27 = getelementptr inbounds %struct.client, %struct.client* %21, i64 0, i32 10, !dbg !1358
  %28 = load %struct.redisCommand*, %struct.redisCommand** %27, align 8, !dbg !1358, !tbaa !290
  %29 = icmp eq %struct.redisCommand* %28, null, !dbg !1359
  br i1 %29, label %35, label %30, !dbg !1360

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %28, i64 0, i32 4, !dbg !1361
  %32 = load i32, i32* %31, align 8, !dbg !1361, !tbaa !297
  %33 = and i32 %32, 2, !dbg !1362
  %34 = icmp eq i32 %33, 0, !dbg !1362
  br i1 %34, label %35, label %39, !dbg !1363

; <label>:35:                                     ; preds = %30, %26, %20, %8
  %36 = tail call %struct.redisObject* @lookupKey(%struct.redisDb* %11, %struct.redisObject* %14, i32 0) #7, !dbg !1364
  %37 = icmp eq %struct.redisObject* %36, null, !dbg !1366
  %38 = select i1 %37, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 76), !dbg !1367
  br label %39, !dbg !1367

; <label>:39:                                     ; preds = %35, %30, %17
  %40 = phi i64* [ getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), %17 ], [ getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), %30 ], [ %38, %35 ]
  %41 = phi %struct.redisObject* [ null, %17 ], [ null, %30 ], [ %36, %35 ], !dbg !1368
  %42 = load i64, i64* %40, align 8, !dbg !1369, !tbaa !309
  %43 = add nsw i64 %42, 1, !dbg !1369
  store i64 %43, i64* %40, align 8, !dbg !1369, !tbaa !309
  %44 = icmp ne %struct.redisObject* %41, null, !dbg !1370
  %45 = zext i1 %44 to i64, !dbg !1371
  %46 = add nuw nsw i64 %10, %45, !dbg !1371
  %47 = add nuw nsw i64 %9, 1, !dbg !1372
  %48 = load i32, i32* %2, align 8, !dbg !1330, !tbaa !1106
  %49 = sext i32 %48 to i64, !dbg !1333
  %50 = icmp slt i64 %47, %49, !dbg !1333
  br i1 %50, label %8, label %51, !dbg !1334, !llvm.loop !1373

; <label>:51:                                     ; preds = %39, %1
  %52 = phi i64 [ 0, %1 ], [ %46, %39 ], !dbg !1369
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %52) #7, !dbg !1375
  ret void, !dbg !1376
}

; Function Attrs: noredzone nounwind
define dso_local void @selectCommand(%struct.client*) local_unnamed_addr #0 !dbg !1377 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !1382
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !1382
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1383
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1383, !tbaa !1114
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !1385
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1385, !tbaa !1116
  %8 = call i32 @getLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %7, i64* nonnull %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !1387
  %9 = icmp eq i32 %8, 0, !dbg !1388
  br i1 %9, label %10, label %31, !dbg !1389

; <label>:10:                                     ; preds = %1
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !1390, !tbaa !363
  %12 = icmp ne i32 %11, 0, !dbg !1392
  %13 = load i64, i64* %2, align 8, !dbg !1393
  %14 = icmp ne i64 %13, 0, !dbg !1394
  %15 = and i1 %12, %14, !dbg !1395
  br i1 %15, label %16, label %17, !dbg !1395

; <label>:16:                                     ; preds = %10
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !1396
  br label %31, !dbg !1398

; <label>:17:                                     ; preds = %10
  %18 = trunc i64 %13 to i32, !dbg !1399
  %19 = icmp sgt i32 %18, -1, !dbg !1404
  %20 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !1405
  %21 = icmp sgt i32 %20, %18, !dbg !1406
  %22 = and i1 %19, %21, !dbg !1407
  br i1 %22, label %24, label %23, !dbg !1407

; <label>:23:                                     ; preds = %17
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !1408
  br label %31, !dbg !1410

; <label>:24:                                     ; preds = %17
  %25 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !1411, !tbaa !1014
  %26 = shl i64 %13, 32, !dbg !1412
  %27 = ashr exact i64 %26, 32, !dbg !1412
  %28 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %25, i64 %27, !dbg !1412
  %29 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1413
  store %struct.redisDb* %28, %struct.redisDb** %29, align 8, !dbg !1414, !tbaa !561
  %30 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1415, !tbaa !1163
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %30) #7, !dbg !1417
  br label %31

; <label>:31:                                     ; preds = %23, %24, %1, %16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !1418
  ret void, !dbg !1418
}

; Function Attrs: noredzone
declare dso_local i32 @getLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @randomkeyCommand(%struct.client*) local_unnamed_addr #0 !dbg !1419 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1424
  %3 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1424, !tbaa !561
  %4 = tail call %struct.redisObject* @dbRandomKey(%struct.redisDb* %3) #9, !dbg !1426
  %5 = icmp eq %struct.redisObject* %4, null, !dbg !1428
  br i1 %5, label %6, label %8, !dbg !1429

; <label>:6:                                      ; preds = %1
  %7 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1430, !tbaa !1432
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %7) #7, !dbg !1433
  br label %9, !dbg !1434

; <label>:8:                                      ; preds = %1
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* nonnull %4) #7, !dbg !1435
  tail call void @decrRefCount(%struct.redisObject* nonnull %4) #7, !dbg !1436
  br label %9, !dbg !1437

; <label>:9:                                      ; preds = %8, %6
  ret void, !dbg !1437
}

; Function Attrs: noredzone
declare dso_local void @addReplyBulk(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @keysCommand(%struct.client*) local_unnamed_addr #0 !dbg !1438 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1463
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1463, !tbaa !1114
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !1464
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !1464, !tbaa !1116
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %5, i64 0, i32 2, !dbg !1465
  %7 = load i8*, i8** %6, align 8, !dbg !1465, !tbaa !215
  %8 = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !1469
  %9 = load i8, i8* %8, align 1, !dbg !1469, !tbaa !222
  %10 = trunc i8 %9 to i3, !dbg !1471
  switch i3 %10, label %32 [
    i3 0, label %11
    i3 1, label %14
    i3 2, label %18
    i3 3, label %23
    i3 -4, label %28
  ], !dbg !1471

; <label>:11:                                     ; preds = %1
  %12 = lshr i8 %9, 3, !dbg !1472
  %13 = zext i8 %12 to i64, !dbg !1472
  br label %32, !dbg !1473

; <label>:14:                                     ; preds = %1
  %15 = getelementptr inbounds i8, i8* %7, i64 -3, !dbg !1474
  %16 = load i8, i8* %15, align 1, !dbg !1475, !tbaa !222
  %17 = zext i8 %16 to i64, !dbg !1474
  br label %32, !dbg !1476

; <label>:18:                                     ; preds = %1
  %19 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !1477
  %20 = bitcast i8* %19 to i16*, !dbg !1478
  %21 = load i16, i16* %20, align 1, !dbg !1478, !tbaa !827
  %22 = zext i16 %21 to i64, !dbg !1477
  br label %32, !dbg !1479

; <label>:23:                                     ; preds = %1
  %24 = getelementptr inbounds i8, i8* %7, i64 -9, !dbg !1480
  %25 = bitcast i8* %24 to i32*, !dbg !1481
  %26 = load i32, i32* %25, align 1, !dbg !1481, !tbaa !832
  %27 = zext i32 %26 to i64, !dbg !1480
  br label %32, !dbg !1482

; <label>:28:                                     ; preds = %1
  %29 = getelementptr inbounds i8, i8* %7, i64 -17, !dbg !1483
  %30 = bitcast i8* %29 to i64*, !dbg !1484
  %31 = load i64, i64* %30, align 1, !dbg !1484, !tbaa !836
  br label %32, !dbg !1485

; <label>:32:                                     ; preds = %1, %11, %14, %18, %23, %28
  %33 = phi i64 [ %31, %28 ], [ %27, %23 ], [ %22, %18 ], [ %17, %14 ], [ %13, %11 ], [ 0, %1 ], !dbg !1486
  %34 = trunc i64 %33 to i32, !dbg !1487
  %35 = tail call i8* @addDeferredMultiBulkLength(%struct.client* nonnull %0) #7, !dbg !1490
  %36 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1492
  %37 = load %struct.redisDb*, %struct.redisDb** %36, align 8, !dbg !1492, !tbaa !561
  %38 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %37, i64 0, i32 0, !dbg !1493
  %39 = load %struct.dict*, %struct.dict** %38, align 8, !dbg !1493, !tbaa !207
  %40 = tail call %struct.dictIterator* @dictGetSafeIterator(%struct.dict* %39) #7, !dbg !1494
  %41 = load i8, i8* %7, align 1, !dbg !1496, !tbaa !222
  %42 = icmp eq i8 %41, 42, !dbg !1497
  br i1 %42, label %43, label %47, !dbg !1498

; <label>:43:                                     ; preds = %32
  %44 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1499
  %45 = load i8, i8* %44, align 1, !dbg !1499, !tbaa !222
  %46 = icmp eq i8 %45, 0, !dbg !1500
  br label %47

; <label>:47:                                     ; preds = %43, %32
  %48 = phi i1 [ false, %32 ], [ %46, %43 ], !dbg !1501
  %49 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %40) #7, !dbg !1502
  %50 = icmp eq %struct.dictEntry* %49, null, !dbg !1504
  br i1 %50, label %124, label %51, !dbg !1505

; <label>:51:                                     ; preds = %47, %120
  %52 = phi %struct.dictEntry* [ %122, %120 ], [ %49, %47 ]
  %53 = phi i64 [ %121, %120 ], [ 0, %47 ]
  %54 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %52, i64 0, i32 0, !dbg !1506
  %55 = load i8*, i8** %54, align 8, !dbg !1506, !tbaa !802
  %56 = getelementptr inbounds i8, i8* %55, i64 -1, !dbg !1508
  br i1 %48, label %86, label %57, !dbg !1512

; <label>:57:                                     ; preds = %51
  %58 = load i8, i8* %56, align 1, !dbg !1515, !tbaa !222
  %59 = trunc i8 %58 to i3, !dbg !1517
  switch i3 %59, label %81 [
    i3 0, label %60
    i3 1, label %63
    i3 2, label %67
    i3 3, label %72
    i3 -4, label %77
  ], !dbg !1517

; <label>:60:                                     ; preds = %57
  %61 = lshr i8 %58, 3, !dbg !1518
  %62 = zext i8 %61 to i64, !dbg !1518
  br label %81, !dbg !1519

; <label>:63:                                     ; preds = %57
  %64 = getelementptr inbounds i8, i8* %55, i64 -3, !dbg !1520
  %65 = load i8, i8* %64, align 1, !dbg !1521, !tbaa !222
  %66 = zext i8 %65 to i64, !dbg !1520
  br label %81, !dbg !1522

; <label>:67:                                     ; preds = %57
  %68 = getelementptr inbounds i8, i8* %55, i64 -5, !dbg !1523
  %69 = bitcast i8* %68 to i16*, !dbg !1524
  %70 = load i16, i16* %69, align 1, !dbg !1524, !tbaa !827
  %71 = zext i16 %70 to i64, !dbg !1523
  br label %81, !dbg !1525

; <label>:72:                                     ; preds = %57
  %73 = getelementptr inbounds i8, i8* %55, i64 -9, !dbg !1526
  %74 = bitcast i8* %73 to i32*, !dbg !1527
  %75 = load i32, i32* %74, align 1, !dbg !1527, !tbaa !832
  %76 = zext i32 %75 to i64, !dbg !1526
  br label %81, !dbg !1528

; <label>:77:                                     ; preds = %57
  %78 = getelementptr inbounds i8, i8* %55, i64 -17, !dbg !1529
  %79 = bitcast i8* %78 to i64*, !dbg !1530
  %80 = load i64, i64* %79, align 1, !dbg !1530, !tbaa !836
  br label %81, !dbg !1531

; <label>:81:                                     ; preds = %57, %60, %63, %67, %72, %77
  %82 = phi i64 [ %80, %77 ], [ %76, %72 ], [ %71, %67 ], [ %66, %63 ], [ %62, %60 ], [ 0, %57 ], !dbg !1532
  %83 = trunc i64 %82 to i32, !dbg !1533
  %84 = tail call i32 @stringmatchlen(i8* %7, i32 %34, i8* nonnull %55, i32 %83, i32 0) #7, !dbg !1534
  %85 = icmp eq i32 %84, 0, !dbg !1534
  br i1 %85, label %120, label %86, !dbg !1535

; <label>:86:                                     ; preds = %51, %81
  %87 = load i8, i8* %56, align 1, !dbg !1508, !tbaa !222
  %88 = trunc i8 %87 to i3, !dbg !1538
  switch i3 %88, label %110 [
    i3 0, label %89
    i3 1, label %92
    i3 2, label %96
    i3 3, label %101
    i3 -4, label %106
  ], !dbg !1538

; <label>:89:                                     ; preds = %86
  %90 = lshr i8 %87, 3, !dbg !1539
  %91 = zext i8 %90 to i64, !dbg !1539
  br label %110, !dbg !1540

; <label>:92:                                     ; preds = %86
  %93 = getelementptr inbounds i8, i8* %55, i64 -3, !dbg !1541
  %94 = load i8, i8* %93, align 1, !dbg !1542, !tbaa !222
  %95 = zext i8 %94 to i64, !dbg !1541
  br label %110, !dbg !1543

; <label>:96:                                     ; preds = %86
  %97 = getelementptr inbounds i8, i8* %55, i64 -5, !dbg !1544
  %98 = bitcast i8* %97 to i16*, !dbg !1545
  %99 = load i16, i16* %98, align 1, !dbg !1545, !tbaa !827
  %100 = zext i16 %99 to i64, !dbg !1544
  br label %110, !dbg !1546

; <label>:101:                                    ; preds = %86
  %102 = getelementptr inbounds i8, i8* %55, i64 -9, !dbg !1547
  %103 = bitcast i8* %102 to i32*, !dbg !1548
  %104 = load i32, i32* %103, align 1, !dbg !1548, !tbaa !832
  %105 = zext i32 %104 to i64, !dbg !1547
  br label %110, !dbg !1549

; <label>:106:                                    ; preds = %86
  %107 = getelementptr inbounds i8, i8* %55, i64 -17, !dbg !1550
  %108 = bitcast i8* %107 to i64*, !dbg !1551
  %109 = load i64, i64* %108, align 1, !dbg !1551, !tbaa !836
  br label %110, !dbg !1552

; <label>:110:                                    ; preds = %86, %89, %92, %96, %101, %106
  %111 = phi i64 [ %109, %106 ], [ %105, %101 ], [ %100, %96 ], [ %95, %92 ], [ %91, %89 ], [ 0, %86 ], !dbg !1553
  %112 = tail call %struct.redisObject* @createStringObject(i8* nonnull %55, i64 %111) #7, !dbg !1554
  %113 = load %struct.redisDb*, %struct.redisDb** %36, align 8, !dbg !1556, !tbaa !561
  %114 = tail call i32 @keyIsExpired(%struct.redisDb* %113, %struct.redisObject* %112) #9, !dbg !1558
  %115 = icmp eq i32 %114, 0, !dbg !1558
  br i1 %115, label %116, label %118, !dbg !1559

; <label>:116:                                    ; preds = %110
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %112) #7, !dbg !1560
  %117 = add i64 %53, 1, !dbg !1562
  br label %118, !dbg !1563

; <label>:118:                                    ; preds = %110, %116
  %119 = phi i64 [ %53, %110 ], [ %117, %116 ], !dbg !1564
  tail call void @decrRefCount(%struct.redisObject* %112) #7, !dbg !1565
  br label %120, !dbg !1566

; <label>:120:                                    ; preds = %81, %118
  %121 = phi i64 [ %119, %118 ], [ %53, %81 ], !dbg !1489
  %122 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %40) #7, !dbg !1502
  %123 = icmp eq %struct.dictEntry* %122, null, !dbg !1504
  br i1 %123, label %124, label %51, !dbg !1505, !llvm.loop !1567

; <label>:124:                                    ; preds = %120, %47
  %125 = phi i64 [ 0, %47 ], [ %121, %120 ], !dbg !1489
  tail call void @dictReleaseIterator(%struct.dictIterator* %40) #7, !dbg !1569
  tail call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %35, i64 %125) #7, !dbg !1570
  ret void, !dbg !1571
}

; Function Attrs: noredzone
declare dso_local i8* @addDeferredMultiBulkLength(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.dictIterator* @dictGetSafeIterator(%struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictNext(%struct.dictIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @stringmatchlen(i8*, i32, i8*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @keyIsExpired(%struct.redisDb* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !1572 {
  %3 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !1590
  %4 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !1590, !tbaa !346
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %4, i64 0, i32 2, i64 0, i32 3, !dbg !1590
  %6 = load i64, i64* %5, align 8, !dbg !1590, !tbaa !347
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %4, i64 0, i32 2, i64 1, i32 3, !dbg !1590
  %8 = load i64, i64* %7, align 8, !dbg !1590, !tbaa !347
  %9 = sub i64 0, %8, !dbg !1592
  %10 = icmp eq i64 %6, %9, !dbg !1592
  br i1 %10, label %42, label %11, !dbg !1593

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !1594
  %13 = load i8*, i8** %12, align 8, !dbg !1594, !tbaa !215
  %14 = tail call %struct.dictEntry* @dictFind(%struct.dict* %4, i8* %13) #7, !dbg !1595
  %15 = icmp eq %struct.dictEntry* %14, null, !dbg !1597
  br i1 %15, label %42, label %16, !dbg !1598

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !1599
  %18 = load %struct.dict*, %struct.dict** %17, align 8, !dbg !1599, !tbaa !207
  %19 = load i8*, i8** %12, align 8, !dbg !1599, !tbaa !215
  %20 = tail call %struct.dictEntry* @dictFind(%struct.dict* %18, i8* %19) #7, !dbg !1599
  %21 = icmp eq %struct.dictEntry* %20, null, !dbg !1599
  br i1 %21, label %22, label %23, !dbg !1599

; <label>:22:                                     ; preds = %16
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 1101) #7, !dbg !1599
  tail call void @_exit(i32 1) #10, !dbg !1599
  unreachable, !dbg !1599

; <label>:23:                                     ; preds = %16
  %24 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %14, i64 0, i32 1, !dbg !1600
  %25 = bitcast %union.anon* %24 to i64*, !dbg !1600
  %26 = load i64, i64* %25, align 8, !dbg !1600, !tbaa !222
  %27 = icmp sgt i64 %26, -1, !dbg !1602
  %28 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !1604
  %29 = icmp eq i32 %28, 0, !dbg !1606
  %30 = and i1 %27, %29, !dbg !1607
  br i1 %30, label %31, label %42, !dbg !1607

; <label>:31:                                     ; preds = %23
  %32 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !1608, !tbaa !1609
  %33 = icmp eq %struct.client* %32, null, !dbg !1610
  br i1 %33, label %36, label %34, !dbg !1610

; <label>:34:                                     ; preds = %31
  %35 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 276), align 8, !dbg !1611, !tbaa !1612
  br label %38, !dbg !1610

; <label>:36:                                     ; preds = %31
  %37 = tail call i64 @mstime() #7, !dbg !1613
  br label %38, !dbg !1610

; <label>:38:                                     ; preds = %36, %34
  %39 = phi i64 [ %35, %34 ], [ %37, %36 ], !dbg !1610
  %40 = icmp sgt i64 %39, %26, !dbg !1615
  %41 = zext i1 %40 to i32, !dbg !1615
  br label %42

; <label>:42:                                     ; preds = %2, %11, %23, %38
  %43 = phi i32 [ %41, %38 ], [ 0, %23 ], [ 0, %11 ], [ 0, %2 ], !dbg !1616
  ret i32 %43, !dbg !1617
}

; Function Attrs: noredzone
declare dso_local void @dictReleaseIterator(%struct.dictIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @setDeferredMultiBulkLength(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @scanCallback(i8* nocapture readonly, %struct.dictEntry* nocapture readonly) #0 !dbg !1618 {
  %3 = bitcast i8* %0 to %struct.list**, !dbg !1647
  %4 = load %struct.list*, %struct.list** %3, align 8, !dbg !1647, !tbaa !1116
  %5 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1649
  %6 = bitcast i8* %5 to %struct.redisObject**, !dbg !1649
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1649, !tbaa !1116
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !1652
  br i1 %8, label %9, label %39, !dbg !1653

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 0, !dbg !1654
  %11 = load i8*, i8** %10, align 8, !dbg !1654, !tbaa !802
  %12 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !1658
  %13 = load i8, i8* %12, align 1, !dbg !1658, !tbaa !222
  %14 = trunc i8 %13 to i3, !dbg !1660
  switch i3 %14, label %36 [
    i3 0, label %15
    i3 1, label %18
    i3 2, label %22
    i3 3, label %27
    i3 -4, label %32
  ], !dbg !1660

; <label>:15:                                     ; preds = %9
  %16 = lshr i8 %13, 3, !dbg !1661
  %17 = zext i8 %16 to i64, !dbg !1661
  br label %36, !dbg !1662

; <label>:18:                                     ; preds = %9
  %19 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !1663
  %20 = load i8, i8* %19, align 1, !dbg !1664, !tbaa !222
  %21 = zext i8 %20 to i64, !dbg !1663
  br label %36, !dbg !1665

; <label>:22:                                     ; preds = %9
  %23 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !1666
  %24 = bitcast i8* %23 to i16*, !dbg !1667
  %25 = load i16, i16* %24, align 1, !dbg !1667, !tbaa !827
  %26 = zext i16 %25 to i64, !dbg !1666
  br label %36, !dbg !1668

; <label>:27:                                     ; preds = %9
  %28 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !1669
  %29 = bitcast i8* %28 to i32*, !dbg !1670
  %30 = load i32, i32* %29, align 1, !dbg !1670, !tbaa !832
  %31 = zext i32 %30 to i64, !dbg !1669
  br label %36, !dbg !1671

; <label>:32:                                     ; preds = %9
  %33 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !1672
  %34 = bitcast i8* %33 to i64*, !dbg !1673
  %35 = load i64, i64* %34, align 1, !dbg !1673, !tbaa !836
  br label %36, !dbg !1674

; <label>:36:                                     ; preds = %9, %15, %18, %22, %27, %32
  %37 = phi i64 [ %35, %32 ], [ %31, %27 ], [ %26, %22 ], [ %21, %18 ], [ %17, %15 ], [ 0, %9 ], !dbg !1675
  %38 = tail call %struct.redisObject* @createStringObject(i8* %11, i64 %37) #7, !dbg !1676
  br label %169, !dbg !1678

; <label>:39:                                     ; preds = %2
  %40 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 0, !dbg !1679
  %41 = load i32, i32* %40, align 8, !dbg !1679
  %42 = trunc i32 %41 to i4, !dbg !1680
  switch i4 %42, label %168 [
    i4 2, label %43
    i4 4, label %73
    i4 3, label %132
  ], !dbg !1680

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 0, !dbg !1681
  %45 = load i8*, i8** %44, align 8, !dbg !1681, !tbaa !802
  %46 = getelementptr inbounds i8, i8* %45, i64 -1, !dbg !1685
  %47 = load i8, i8* %46, align 1, !dbg !1685, !tbaa !222
  %48 = trunc i8 %47 to i3, !dbg !1687
  switch i3 %48, label %70 [
    i3 0, label %49
    i3 1, label %52
    i3 2, label %56
    i3 3, label %61
    i3 -4, label %66
  ], !dbg !1687

; <label>:49:                                     ; preds = %43
  %50 = lshr i8 %47, 3, !dbg !1688
  %51 = zext i8 %50 to i64, !dbg !1688
  br label %70, !dbg !1689

; <label>:52:                                     ; preds = %43
  %53 = getelementptr inbounds i8, i8* %45, i64 -3, !dbg !1690
  %54 = load i8, i8* %53, align 1, !dbg !1691, !tbaa !222
  %55 = zext i8 %54 to i64, !dbg !1690
  br label %70, !dbg !1692

; <label>:56:                                     ; preds = %43
  %57 = getelementptr inbounds i8, i8* %45, i64 -5, !dbg !1693
  %58 = bitcast i8* %57 to i16*, !dbg !1694
  %59 = load i16, i16* %58, align 1, !dbg !1694, !tbaa !827
  %60 = zext i16 %59 to i64, !dbg !1693
  br label %70, !dbg !1695

; <label>:61:                                     ; preds = %43
  %62 = getelementptr inbounds i8, i8* %45, i64 -9, !dbg !1696
  %63 = bitcast i8* %62 to i32*, !dbg !1697
  %64 = load i32, i32* %63, align 1, !dbg !1697, !tbaa !832
  %65 = zext i32 %64 to i64, !dbg !1696
  br label %70, !dbg !1698

; <label>:66:                                     ; preds = %43
  %67 = getelementptr inbounds i8, i8* %45, i64 -17, !dbg !1699
  %68 = bitcast i8* %67 to i64*, !dbg !1700
  %69 = load i64, i64* %68, align 1, !dbg !1700, !tbaa !836
  br label %70, !dbg !1701

; <label>:70:                                     ; preds = %43, %49, %52, %56, %61, %66
  %71 = phi i64 [ %69, %66 ], [ %65, %61 ], [ %60, %56 ], [ %55, %52 ], [ %51, %49 ], [ 0, %43 ], !dbg !1702
  %72 = tail call %struct.redisObject* @createStringObject(i8* %45, i64 %71) #7, !dbg !1703
  br label %169, !dbg !1704

; <label>:73:                                     ; preds = %39
  %74 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 0, !dbg !1705
  %75 = load i8*, i8** %74, align 8, !dbg !1705, !tbaa !802
  %76 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 1, i32 0, !dbg !1707
  %77 = load i8*, i8** %76, align 8, !dbg !1707, !tbaa !222
  %78 = getelementptr inbounds i8, i8* %75, i64 -1, !dbg !1711
  %79 = load i8, i8* %78, align 1, !dbg !1711, !tbaa !222
  %80 = trunc i8 %79 to i3, !dbg !1713
  switch i3 %80, label %102 [
    i3 0, label %81
    i3 1, label %84
    i3 2, label %88
    i3 3, label %93
    i3 -4, label %98
  ], !dbg !1713

; <label>:81:                                     ; preds = %73
  %82 = lshr i8 %79, 3, !dbg !1714
  %83 = zext i8 %82 to i64, !dbg !1714
  br label %102, !dbg !1715

; <label>:84:                                     ; preds = %73
  %85 = getelementptr inbounds i8, i8* %75, i64 -3, !dbg !1716
  %86 = load i8, i8* %85, align 1, !dbg !1717, !tbaa !222
  %87 = zext i8 %86 to i64, !dbg !1716
  br label %102, !dbg !1718

; <label>:88:                                     ; preds = %73
  %89 = getelementptr inbounds i8, i8* %75, i64 -5, !dbg !1719
  %90 = bitcast i8* %89 to i16*, !dbg !1720
  %91 = load i16, i16* %90, align 1, !dbg !1720, !tbaa !827
  %92 = zext i16 %91 to i64, !dbg !1719
  br label %102, !dbg !1721

; <label>:93:                                     ; preds = %73
  %94 = getelementptr inbounds i8, i8* %75, i64 -9, !dbg !1722
  %95 = bitcast i8* %94 to i32*, !dbg !1723
  %96 = load i32, i32* %95, align 1, !dbg !1723, !tbaa !832
  %97 = zext i32 %96 to i64, !dbg !1722
  br label %102, !dbg !1724

; <label>:98:                                     ; preds = %73
  %99 = getelementptr inbounds i8, i8* %75, i64 -17, !dbg !1725
  %100 = bitcast i8* %99 to i64*, !dbg !1726
  %101 = load i64, i64* %100, align 1, !dbg !1726, !tbaa !836
  br label %102, !dbg !1727

; <label>:102:                                    ; preds = %73, %81, %84, %88, %93, %98
  %103 = phi i64 [ %101, %98 ], [ %97, %93 ], [ %92, %88 ], [ %87, %84 ], [ %83, %81 ], [ 0, %73 ], !dbg !1728
  %104 = tail call %struct.redisObject* @createStringObject(i8* %75, i64 %103) #7, !dbg !1729
  %105 = getelementptr inbounds i8, i8* %77, i64 -1, !dbg !1732
  %106 = load i8, i8* %105, align 1, !dbg !1732, !tbaa !222
  %107 = trunc i8 %106 to i3, !dbg !1734
  switch i3 %107, label %129 [
    i3 0, label %108
    i3 1, label %111
    i3 2, label %115
    i3 3, label %120
    i3 -4, label %125
  ], !dbg !1734

; <label>:108:                                    ; preds = %102
  %109 = lshr i8 %106, 3, !dbg !1735
  %110 = zext i8 %109 to i64, !dbg !1735
  br label %129, !dbg !1736

; <label>:111:                                    ; preds = %102
  %112 = getelementptr inbounds i8, i8* %77, i64 -3, !dbg !1737
  %113 = load i8, i8* %112, align 1, !dbg !1738, !tbaa !222
  %114 = zext i8 %113 to i64, !dbg !1737
  br label %129, !dbg !1739

; <label>:115:                                    ; preds = %102
  %116 = getelementptr inbounds i8, i8* %77, i64 -5, !dbg !1740
  %117 = bitcast i8* %116 to i16*, !dbg !1741
  %118 = load i16, i16* %117, align 1, !dbg !1741, !tbaa !827
  %119 = zext i16 %118 to i64, !dbg !1740
  br label %129, !dbg !1742

; <label>:120:                                    ; preds = %102
  %121 = getelementptr inbounds i8, i8* %77, i64 -9, !dbg !1743
  %122 = bitcast i8* %121 to i32*, !dbg !1744
  %123 = load i32, i32* %122, align 1, !dbg !1744, !tbaa !832
  %124 = zext i32 %123 to i64, !dbg !1743
  br label %129, !dbg !1745

; <label>:125:                                    ; preds = %102
  %126 = getelementptr inbounds i8, i8* %77, i64 -17, !dbg !1746
  %127 = bitcast i8* %126 to i64*, !dbg !1747
  %128 = load i64, i64* %127, align 1, !dbg !1747, !tbaa !836
  br label %129, !dbg !1748

; <label>:129:                                    ; preds = %102, %108, %111, %115, %120, %125
  %130 = phi i64 [ %128, %125 ], [ %124, %120 ], [ %119, %115 ], [ %114, %111 ], [ %110, %108 ], [ 0, %102 ], !dbg !1749
  %131 = tail call %struct.redisObject* @createStringObject(i8* nonnull %77, i64 %130) #7, !dbg !1750
  br label %173, !dbg !1751

; <label>:132:                                    ; preds = %39
  %133 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 0, !dbg !1752
  %134 = load i8*, i8** %133, align 8, !dbg !1752, !tbaa !802
  %135 = getelementptr inbounds i8, i8* %134, i64 -1, !dbg !1756
  %136 = load i8, i8* %135, align 1, !dbg !1756, !tbaa !222
  %137 = trunc i8 %136 to i3, !dbg !1758
  switch i3 %137, label %159 [
    i3 0, label %138
    i3 1, label %141
    i3 2, label %145
    i3 3, label %150
    i3 -4, label %155
  ], !dbg !1758

; <label>:138:                                    ; preds = %132
  %139 = lshr i8 %136, 3, !dbg !1759
  %140 = zext i8 %139 to i64, !dbg !1759
  br label %159, !dbg !1760

; <label>:141:                                    ; preds = %132
  %142 = getelementptr inbounds i8, i8* %134, i64 -3, !dbg !1761
  %143 = load i8, i8* %142, align 1, !dbg !1762, !tbaa !222
  %144 = zext i8 %143 to i64, !dbg !1761
  br label %159, !dbg !1763

; <label>:145:                                    ; preds = %132
  %146 = getelementptr inbounds i8, i8* %134, i64 -5, !dbg !1764
  %147 = bitcast i8* %146 to i16*, !dbg !1765
  %148 = load i16, i16* %147, align 1, !dbg !1765, !tbaa !827
  %149 = zext i16 %148 to i64, !dbg !1764
  br label %159, !dbg !1766

; <label>:150:                                    ; preds = %132
  %151 = getelementptr inbounds i8, i8* %134, i64 -9, !dbg !1767
  %152 = bitcast i8* %151 to i32*, !dbg !1768
  %153 = load i32, i32* %152, align 1, !dbg !1768, !tbaa !832
  %154 = zext i32 %153 to i64, !dbg !1767
  br label %159, !dbg !1769

; <label>:155:                                    ; preds = %132
  %156 = getelementptr inbounds i8, i8* %134, i64 -17, !dbg !1770
  %157 = bitcast i8* %156 to i64*, !dbg !1771
  %158 = load i64, i64* %157, align 1, !dbg !1771, !tbaa !836
  br label %159, !dbg !1772

; <label>:159:                                    ; preds = %132, %138, %141, %145, %150, %155
  %160 = phi i64 [ %158, %155 ], [ %154, %150 ], [ %149, %145 ], [ %144, %141 ], [ %140, %138 ], [ 0, %132 ], !dbg !1773
  %161 = tail call %struct.redisObject* @createStringObject(i8* %134, i64 %160) #7, !dbg !1774
  %162 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 1, i32 0, !dbg !1775
  %163 = bitcast i8** %162 to double**, !dbg !1775
  %164 = load double*, double** %163, align 8, !dbg !1775, !tbaa !222
  %165 = load double, double* %164, align 8, !dbg !1776, !tbaa !1777
  %166 = fpext double %165 to x86_fp80, !dbg !1776
  %167 = tail call %struct.redisObject* @createStringObjectFromLongDouble(x86_fp80 %166, i32 0) #7, !dbg !1778
  br label %173

; <label>:168:                                    ; preds = %39
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 587, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !1779
  tail call void @_exit(i32 1) #10, !dbg !1779
  unreachable, !dbg !1779

; <label>:169:                                    ; preds = %36, %70
  %170 = phi %struct.redisObject* [ %72, %70 ], [ %38, %36 ]
  %171 = bitcast %struct.redisObject* %170 to i8*, !dbg !1781
  %172 = tail call %struct.list* @listAddNodeTail(%struct.list* %4, i8* %171) #7, !dbg !1782
  br label %182, !dbg !1783

; <label>:173:                                    ; preds = %159, %129
  %174 = phi %struct.redisObject* [ %131, %129 ], [ %167, %159 ], !dbg !1784
  %175 = phi %struct.redisObject* [ %104, %129 ], [ %161, %159 ], !dbg !1784
  %176 = bitcast %struct.redisObject* %175 to i8*, !dbg !1781
  %177 = tail call %struct.list* @listAddNodeTail(%struct.list* %4, i8* %176) #7, !dbg !1782
  %178 = icmp eq %struct.redisObject* %174, null, !dbg !1785
  br i1 %178, label %182, label %179, !dbg !1783

; <label>:179:                                    ; preds = %173
  %180 = bitcast %struct.redisObject* %174 to i8*, !dbg !1787
  %181 = tail call %struct.list* @listAddNodeTail(%struct.list* %4, i8* %180) #7, !dbg !1788
  br label %182, !dbg !1788

; <label>:182:                                    ; preds = %169, %173, %179
  ret void, !dbg !1789
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObjectFromLongDouble(x86_fp80, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @parseScanCursorOrReply(%struct.client*, %struct.redisObject* nocapture readonly, i64* nocapture) local_unnamed_addr #0 !dbg !1790 {
  %4 = alloca i8*, align 8
  %5 = bitcast i8** %4 to i8*, !dbg !1802
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1802
  %6 = tail call i32* @__errno() #7, !dbg !1803
  store i32 0, i32* %6, align 4, !dbg !1804, !tbaa !832
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !1805
  %8 = load i8*, i8** %7, align 8, !dbg !1805, !tbaa !215
  %9 = call i64 @strtoul(i8* %8, i8** nonnull %4, i32 10) #7, !dbg !1807
  store i64 %9, i64* %2, align 8, !dbg !1808, !tbaa !836
  %10 = call i8* @__locale_ctype_ptr() #7, !dbg !1809
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1809
  %12 = load i8*, i8** %7, align 8, !dbg !1809, !tbaa !215
  %13 = load i8, i8* %12, align 1, !dbg !1809, !tbaa !222
  %14 = sext i8 %13 to i64, !dbg !1809
  %15 = getelementptr inbounds i8, i8* %11, i64 %14, !dbg !1809
  %16 = load i8, i8* %15, align 1, !dbg !1809, !tbaa !222
  %17 = and i8 %16, 8, !dbg !1809
  %18 = icmp eq i8 %17, 0, !dbg !1809
  br i1 %18, label %19, label %27, !dbg !1811

; <label>:19:                                     ; preds = %3
  %20 = load i8*, i8** %4, align 8, !dbg !1812, !tbaa !1116
  %21 = load i8, i8* %20, align 1, !dbg !1812, !tbaa !222
  %22 = icmp eq i8 %21, 0, !dbg !1813
  br i1 %22, label %23, label %27, !dbg !1814

; <label>:23:                                     ; preds = %19
  %24 = call i32* @__errno() #7, !dbg !1815
  %25 = load i32, i32* %24, align 4, !dbg !1815, !tbaa !832
  %26 = icmp eq i32 %25, 34, !dbg !1816
  br i1 %26, label %27, label %28, !dbg !1817

; <label>:27:                                     ; preds = %19, %3, %23
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !1818
  br label %28, !dbg !1820

; <label>:28:                                     ; preds = %23, %27
  %29 = phi i32 [ -1, %27 ], [ 0, %23 ], !dbg !1821
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1822
  ret i32 %29, !dbg !1822
}

; Function Attrs: noredzone
declare dso_local i64 @strtoul(i8*, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @scanGenericCommand(%struct.client*, %struct.redisObject*, i64) local_unnamed_addr #0 !dbg !1823 {
  %4 = alloca i64, align 8
  %5 = alloca [2 x i8*], align 16
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [21 x i8], align 16
  %11 = tail call %struct.list* @listCreate() #7, !dbg !1905
  %12 = bitcast i64* %4 to i8*, !dbg !1907
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #8, !dbg !1907
  store i64 10, i64* %4, align 8, !dbg !1908, !tbaa !836
  %13 = icmp eq %struct.redisObject* %1, null, !dbg !1912
  br i1 %13, label %21, label %14, !dbg !1912

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !1912
  %16 = load i32, i32* %15, align 8, !dbg !1912
  %17 = and i32 %16, 15, !dbg !1912
  %18 = add nsw i32 %17, -2, !dbg !1912
  %19 = icmp ult i32 %18, 3, !dbg !1912
  br i1 %19, label %21, label %20, !dbg !1912

; <label>:20:                                     ; preds = %14
  tail call void @_serverAssert(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 636) #7, !dbg !1912
  tail call void @_exit(i32 1) #10, !dbg !1912
  unreachable, !dbg !1912

; <label>:21:                                     ; preds = %14, %3
  %22 = select i1 %13, i32 2, i32 3, !dbg !1913
  %23 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1915
  %24 = load i32, i32* %23, align 8, !dbg !1915, !tbaa !1106
  %25 = icmp sgt i32 %24, %22, !dbg !1916
  br i1 %25, label %26, label %113, !dbg !1917

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %28 = zext i32 %22 to i64, !dbg !1917
  br label %29, !dbg !1917

; <label>:29:                                     ; preds = %26, %104
  %30 = phi i64 [ 10, %26 ], [ %105, %104 ]
  %31 = phi i32 [ %24, %26 ], [ %106, %104 ]
  %32 = phi i64 [ %28, %26 ], [ %110, %104 ]
  %33 = phi i32 [ 0, %26 ], [ %109, %104 ]
  %34 = phi i32 [ 0, %26 ], [ %108, %104 ]
  %35 = phi i8* [ null, %26 ], [ %107, %104 ]
  %36 = trunc i64 %32 to i32, !dbg !1918
  %37 = sub nsw i32 %31, %36, !dbg !1918
  %38 = load %struct.redisObject**, %struct.redisObject*** %27, align 8, !dbg !1921, !tbaa !1114
  %39 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %38, i64 %32, !dbg !1923
  %40 = load %struct.redisObject*, %struct.redisObject** %39, align 8, !dbg !1923, !tbaa !1116
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %40, i64 0, i32 2, !dbg !1924
  %42 = load i8*, i8** %41, align 8, !dbg !1924, !tbaa !215
  %43 = call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !1925
  %44 = icmp eq i32 %43, 0, !dbg !1925
  %45 = icmp sgt i32 %37, 1, !dbg !1926
  %46 = and i1 %45, %44, !dbg !1927
  br i1 %46, label %47, label %60, !dbg !1927

; <label>:47:                                     ; preds = %29
  %48 = add nuw nsw i64 %32, 1, !dbg !1928
  %49 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %38, i64 %48, !dbg !1931
  %50 = load %struct.redisObject*, %struct.redisObject** %49, align 8, !dbg !1931, !tbaa !1116
  %51 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %50, i64* nonnull %4, i8* null) #7, !dbg !1932
  %52 = icmp eq i32 %51, 0, !dbg !1933
  br i1 %52, label %53, label %324, !dbg !1934

; <label>:53:                                     ; preds = %47
  %54 = load i64, i64* %4, align 8, !dbg !1935, !tbaa !836
  %55 = icmp slt i64 %54, 1, !dbg !1937
  br i1 %55, label %58, label %56, !dbg !1938

; <label>:56:                                     ; preds = %53
  %57 = load i32, i32* %23, align 8, !dbg !1915, !tbaa !1106
  br label %104, !dbg !1938

; <label>:58:                                     ; preds = %53
  %59 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1939, !tbaa !1122
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %59) #7, !dbg !1941
  br label %324, !dbg !1942

; <label>:60:                                     ; preds = %29
  %61 = call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !1943
  %62 = icmp eq i32 %61, 0, !dbg !1943
  %63 = and i1 %45, %62, !dbg !1945
  br i1 %63, label %64, label %102, !dbg !1945

; <label>:64:                                     ; preds = %60
  %65 = add nuw nsw i64 %32, 1, !dbg !1946
  %66 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %38, i64 %65, !dbg !1948
  %67 = load %struct.redisObject*, %struct.redisObject** %66, align 8, !dbg !1948, !tbaa !1116
  %68 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %67, i64 0, i32 2, !dbg !1949
  %69 = load i8*, i8** %68, align 8, !dbg !1949, !tbaa !215
  %70 = getelementptr inbounds i8, i8* %69, i64 -1, !dbg !1952
  %71 = load i8, i8* %70, align 1, !dbg !1952, !tbaa !222
  %72 = trunc i8 %71 to i3, !dbg !1954
  switch i3 %72, label %94 [
    i3 0, label %73
    i3 1, label %76
    i3 2, label %80
    i3 3, label %85
    i3 -4, label %90
  ], !dbg !1954

; <label>:73:                                     ; preds = %64
  %74 = lshr i8 %71, 3, !dbg !1955
  %75 = zext i8 %74 to i64, !dbg !1955
  br label %94, !dbg !1956

; <label>:76:                                     ; preds = %64
  %77 = getelementptr inbounds i8, i8* %69, i64 -3, !dbg !1957
  %78 = load i8, i8* %77, align 1, !dbg !1958, !tbaa !222
  %79 = zext i8 %78 to i64, !dbg !1957
  br label %94, !dbg !1959

; <label>:80:                                     ; preds = %64
  %81 = getelementptr inbounds i8, i8* %69, i64 -5, !dbg !1960
  %82 = bitcast i8* %81 to i16*, !dbg !1961
  %83 = load i16, i16* %82, align 1, !dbg !1961, !tbaa !827
  %84 = zext i16 %83 to i64, !dbg !1960
  br label %94, !dbg !1962

; <label>:85:                                     ; preds = %64
  %86 = getelementptr inbounds i8, i8* %69, i64 -9, !dbg !1963
  %87 = bitcast i8* %86 to i32*, !dbg !1964
  %88 = load i32, i32* %87, align 1, !dbg !1964, !tbaa !832
  %89 = zext i32 %88 to i64, !dbg !1963
  br label %94, !dbg !1965

; <label>:90:                                     ; preds = %64
  %91 = getelementptr inbounds i8, i8* %69, i64 -17, !dbg !1966
  %92 = bitcast i8* %91 to i64*, !dbg !1967
  %93 = load i64, i64* %92, align 1, !dbg !1967, !tbaa !836
  br label %94, !dbg !1968

; <label>:94:                                     ; preds = %64, %73, %76, %80, %85, %90
  %95 = phi i64 [ %93, %90 ], [ %89, %85 ], [ %84, %80 ], [ %79, %76 ], [ %75, %73 ], [ 0, %64 ], !dbg !1969
  %96 = trunc i64 %95 to i32, !dbg !1970
  %97 = load i8, i8* %69, align 1, !dbg !1971, !tbaa !222
  %98 = icmp ne i8 %97, 42, !dbg !1972
  %99 = icmp ne i32 %96, 1, !dbg !1973
  %100 = or i1 %99, %98, !dbg !1974
  %101 = zext i1 %100 to i32, !dbg !1974
  br label %104

; <label>:102:                                    ; preds = %60
  %103 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1975, !tbaa !1122
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %103) #7, !dbg !1977
  br label %324, !dbg !1978

; <label>:104:                                    ; preds = %56, %94
  %105 = phi i64 [ %30, %94 ], [ %54, %56 ]
  %106 = phi i32 [ %31, %94 ], [ %57, %56 ], !dbg !1915
  %107 = phi i8* [ %69, %94 ], [ %35, %56 ], !dbg !1979
  %108 = phi i32 [ %96, %94 ], [ %34, %56 ], !dbg !1979
  %109 = phi i32 [ %101, %94 ], [ %33, %56 ], !dbg !1979
  %110 = add nuw i64 %32, 2, !dbg !1979
  %111 = trunc i64 %110 to i32, !dbg !1916
  %112 = icmp sgt i32 %106, %111, !dbg !1916
  br i1 %112, label %29, label %113, !dbg !1917, !llvm.loop !1980

; <label>:113:                                    ; preds = %104, %21
  %114 = phi i64 [ 10, %21 ], [ %105, %104 ]
  %115 = phi i8* [ null, %21 ], [ %107, %104 ], !dbg !1909
  %116 = phi i32 [ 0, %21 ], [ %108, %104 ], !dbg !1910
  %117 = phi i32 [ 0, %21 ], [ %109, %104 ], !dbg !1911
  br i1 %13, label %118, label %123, !dbg !1983

; <label>:118:                                    ; preds = %113
  %119 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1984
  %120 = load %struct.redisDb*, %struct.redisDb** %119, align 8, !dbg !1984, !tbaa !561
  %121 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %120, i64 0, i32 0, !dbg !1986
  %122 = load %struct.dict*, %struct.dict** %121, align 8, !dbg !1986, !tbaa !207
  br label %143, !dbg !1987

; <label>:123:                                    ; preds = %113
  %124 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !1988
  %125 = load i32, i32* %124, align 8, !dbg !1988
  %126 = trunc i32 %125 to i8, !dbg !1989
  switch i8 %126, label %170 [
    i8 34, label %127
    i8 36, label %131
    i8 115, label %136
  ], !dbg !1989

; <label>:127:                                    ; preds = %123
  %128 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !1990
  %129 = bitcast i8** %128 to %struct.dict**, !dbg !1990
  %130 = load %struct.dict*, %struct.dict** %129, align 8, !dbg !1990, !tbaa !215
  br label %143, !dbg !1992

; <label>:131:                                    ; preds = %123
  %132 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !1993
  %133 = bitcast i8** %132 to %struct.dict**, !dbg !1993
  %134 = load %struct.dict*, %struct.dict** %133, align 8, !dbg !1993, !tbaa !215
  %135 = shl nsw i64 %114, 1, !dbg !1995
  store i64 %135, i64* %4, align 8, !dbg !1995, !tbaa !836
  br label %143, !dbg !1996

; <label>:136:                                    ; preds = %123
  %137 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !1997
  %138 = bitcast i8** %137 to %struct.zset**, !dbg !1997
  %139 = load %struct.zset*, %struct.zset** %138, align 8, !dbg !1997, !tbaa !215
  %140 = getelementptr inbounds %struct.zset, %struct.zset* %139, i64 0, i32 0, !dbg !1999
  %141 = load %struct.dict*, %struct.dict** %140, align 8, !dbg !1999, !tbaa !2000
  %142 = shl nsw i64 %114, 1, !dbg !2002
  store i64 %142, i64* %4, align 8, !dbg !2002, !tbaa !836
  br label %143, !dbg !2003

; <label>:143:                                    ; preds = %127, %136, %131, %118
  %144 = phi i64 [ %114, %118 ], [ %114, %127 ], [ %135, %131 ], [ %142, %136 ]
  %145 = phi %struct.dict* [ %122, %118 ], [ %130, %127 ], [ %134, %131 ], [ %141, %136 ], !dbg !2004
  %146 = icmp eq %struct.dict* %145, null, !dbg !2005
  br i1 %146, label %147, label %150, !dbg !2006

; <label>:147:                                    ; preds = %143
  %148 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0
  %149 = load i32, i32* %148, align 8, !dbg !2007
  br label %170, !dbg !2006

; <label>:150:                                    ; preds = %143
  %151 = bitcast [2 x i8*]* %5 to i8*, !dbg !2008
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %151) #8, !dbg !2008
  %152 = mul nsw i64 %144, 10, !dbg !2010
  %153 = bitcast [2 x i8*]* %5 to %struct.list**, !dbg !2012
  store %struct.list* %11, %struct.list** %153, align 16, !dbg !2012, !tbaa !1116
  %154 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1, !dbg !2013
  %155 = bitcast i8** %154 to %struct.redisObject**, !dbg !2014
  store %struct.redisObject* %1, %struct.redisObject** %155, align 8, !dbg !2014, !tbaa !1116
  %156 = getelementptr inbounds %struct.list, %struct.list* %11, i64 0, i32 5
  br label %157, !dbg !2015

; <label>:157:                                    ; preds = %164, %150
  %158 = phi i64 [ %152, %150 ], [ %165, %164 ], !dbg !2016
  %159 = phi i64 [ %2, %150 ], [ %160, %164 ]
  %160 = call i64 @dictScan(%struct.dict* nonnull %145, i64 %159, void (i8*, %struct.dictEntry*)* nonnull @scanCallback, void (i8*, %struct.dictEntry**)* null, i8* nonnull %151) #7, !dbg !2017
  %161 = icmp eq i64 %160, 0, !dbg !2019
  %162 = icmp eq i64 %158, 0, !dbg !2020
  %163 = or i1 %162, %161, !dbg !2021
  br i1 %163, label %169, label %164, !dbg !2021

; <label>:164:                                    ; preds = %157
  %165 = add nsw i64 %158, -1, !dbg !2020
  %166 = load i64, i64* %156, align 8, !dbg !2022, !tbaa !2023
  %167 = load i64, i64* %4, align 8, !dbg !2025, !tbaa !836
  %168 = icmp ult i64 %166, %167, !dbg !2026
  br i1 %168, label %157, label %169, !dbg !2027, !llvm.loop !2028

; <label>:169:                                    ; preds = %157, %164
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %151) #8, !dbg !2030
  br label %220, !dbg !2031

; <label>:170:                                    ; preds = %123, %147
  %171 = phi i32 [ %149, %147 ], [ %125, %123 ], !dbg !2007
  %172 = trunc i32 %171 to i4, !dbg !2032
  switch i4 %172, label %219 [
    i4 2, label %173
    i4 4, label %191
    i4 3, label %191
  ], !dbg !2032

; <label>:173:                                    ; preds = %170
  %174 = bitcast i64* %6 to i8*, !dbg !2034
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %174) #8, !dbg !2034
  %175 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2035
  %176 = bitcast i8** %175 to %struct.intset**, !dbg !2035
  %177 = load %struct.intset*, %struct.intset** %176, align 8, !dbg !2035, !tbaa !215
  %178 = call zeroext i8 @intsetGet(%struct.intset* %177, i32 0, i64* nonnull %6) #7, !dbg !2037
  %179 = icmp eq i8 %178, 0, !dbg !2038
  br i1 %179, label %190, label %180, !dbg !2038

; <label>:180:                                    ; preds = %173, %180
  %181 = phi i32 [ %182, %180 ], [ 0, %173 ]
  %182 = add nuw nsw i32 %181, 1, !dbg !2039
  %183 = load i64, i64* %6, align 8, !dbg !2040, !tbaa !836
  %184 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %183) #7, !dbg !2041
  %185 = bitcast %struct.redisObject* %184 to i8*, !dbg !2041
  %186 = call %struct.list* @listAddNodeTail(%struct.list* %11, i8* %185) #7, !dbg !2042
  %187 = load %struct.intset*, %struct.intset** %176, align 8, !dbg !2035, !tbaa !215
  %188 = call zeroext i8 @intsetGet(%struct.intset* %187, i32 %182, i64* nonnull %6) #7, !dbg !2037
  %189 = icmp eq i8 %188, 0, !dbg !2038
  br i1 %189, label %190, label %180, !dbg !2038, !llvm.loop !2043

; <label>:190:                                    ; preds = %180, %173
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %174) #8, !dbg !2045
  br label %220, !dbg !2046

; <label>:191:                                    ; preds = %170, %170
  %192 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2047
  %193 = load i8*, i8** %192, align 8, !dbg !2047, !tbaa !215
  %194 = call i8* @ziplistIndex(i8* %193, i32 0) #7, !dbg !2048
  %195 = bitcast i8** %7 to i8*, !dbg !2050
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %195) #8, !dbg !2050
  %196 = bitcast i32* %8 to i8*, !dbg !2051
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %196) #8, !dbg !2051
  %197 = bitcast i64* %9 to i8*, !dbg !2052
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %197) #8, !dbg !2052
  %198 = icmp eq i8* %194, null, !dbg !2053
  br i1 %198, label %218, label %199, !dbg !2053

; <label>:199:                                    ; preds = %191, %211
  %200 = phi i8* [ %216, %211 ], [ %194, %191 ]
  %201 = call i32 @ziplistGet(i8* nonnull %200, i8** nonnull %7, i32* nonnull %8, i64* nonnull %9) #7, !dbg !2057
  %202 = load i8*, i8** %7, align 8, !dbg !2059, !tbaa !1116
  %203 = icmp eq i8* %202, null, !dbg !2060
  br i1 %203, label %208, label %204, !dbg !2061

; <label>:204:                                    ; preds = %199
  %205 = load i32, i32* %8, align 4, !dbg !2062, !tbaa !832
  %206 = zext i32 %205 to i64, !dbg !2062
  %207 = call %struct.redisObject* @createStringObject(i8* nonnull %202, i64 %206) #7, !dbg !2063
  br label %211, !dbg !2061

; <label>:208:                                    ; preds = %199
  %209 = load i64, i64* %9, align 8, !dbg !2064, !tbaa !309
  %210 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %209) #7, !dbg !2065
  br label %211, !dbg !2061

; <label>:211:                                    ; preds = %208, %204
  %212 = phi %struct.redisObject* [ %207, %204 ], [ %210, %208 ], !dbg !2061
  %213 = bitcast %struct.redisObject* %212 to i8*, !dbg !2061
  %214 = call %struct.list* @listAddNodeTail(%struct.list* %11, i8* %213) #7, !dbg !2066
  %215 = load i8*, i8** %192, align 8, !dbg !2067, !tbaa !215
  %216 = call i8* @ziplistNext(i8* %215, i8* nonnull %200) #7, !dbg !2068
  %217 = icmp eq i8* %216, null, !dbg !2053
  br i1 %217, label %218, label %199, !dbg !2053, !llvm.loop !2069

; <label>:218:                                    ; preds = %211, %191
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %197) #8, !dbg !2071
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %196) #8, !dbg !2071
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %195) #8, !dbg !2071
  br label %220

; <label>:219:                                    ; preds = %170
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 735, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !2072
  call void @_exit(i32 1) #10, !dbg !2072
  unreachable, !dbg !2072

; <label>:220:                                    ; preds = %190, %218, %169
  %221 = phi i64 [ %160, %169 ], [ 0, %190 ], [ 0, %218 ], !dbg !2074
  %222 = getelementptr inbounds %struct.list, %struct.list* %11, i64 0, i32 0, !dbg !2075
  %223 = load %struct.listNode*, %struct.listNode** %222, align 8, !dbg !2075, !tbaa !2076
  %224 = icmp eq %struct.listNode* %223, null, !dbg !2078
  br i1 %224, label %312, label %225, !dbg !2078

; <label>:225:                                    ; preds = %220
  %226 = icmp eq i32 %117, 0
  %227 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %228 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 0
  %229 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0
  br label %230, !dbg !2078

; <label>:230:                                    ; preds = %225, %309
  %231 = phi %struct.listNode* [ %223, %225 ], [ %310, %309 ]
  %232 = getelementptr inbounds %struct.listNode, %struct.listNode* %231, i64 0, i32 2, !dbg !2079
  %233 = bitcast i8** %232 to %struct.redisObject**, !dbg !2079
  %234 = load %struct.redisObject*, %struct.redisObject** %233, align 8, !dbg !2079, !tbaa !2080
  %235 = getelementptr inbounds %struct.listNode, %struct.listNode* %231, i64 0, i32 1, !dbg !2083
  %236 = load %struct.listNode*, %struct.listNode** %235, align 8, !dbg !2083, !tbaa !2084
  br i1 %226, label %285, label %237, !dbg !2087

; <label>:237:                                    ; preds = %230
  %238 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %234, i64 0, i32 0, !dbg !2088
  %239 = load i32, i32* %238, align 8, !dbg !2088
  %240 = lshr i32 %239, 4, !dbg !2088
  %241 = trunc i32 %240 to i4, !dbg !2088
  switch i4 %241, label %274 [
    i4 0, label %242
    i4 -8, label %242
  ], !dbg !2088

; <label>:242:                                    ; preds = %237, %237
  %243 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %234, i64 0, i32 2, !dbg !2089
  %244 = load i8*, i8** %243, align 8, !dbg !2089, !tbaa !215
  %245 = getelementptr inbounds i8, i8* %244, i64 -1, !dbg !2094
  %246 = load i8, i8* %245, align 1, !dbg !2094, !tbaa !222
  %247 = trunc i8 %246 to i3, !dbg !2096
  switch i3 %247, label %269 [
    i3 0, label %248
    i3 1, label %251
    i3 2, label %255
    i3 3, label %260
    i3 -4, label %265
  ], !dbg !2096

; <label>:248:                                    ; preds = %242
  %249 = lshr i8 %246, 3, !dbg !2097
  %250 = zext i8 %249 to i64, !dbg !2097
  br label %269, !dbg !2098

; <label>:251:                                    ; preds = %242
  %252 = getelementptr inbounds i8, i8* %244, i64 -3, !dbg !2099
  %253 = load i8, i8* %252, align 1, !dbg !2100, !tbaa !222
  %254 = zext i8 %253 to i64, !dbg !2099
  br label %269, !dbg !2101

; <label>:255:                                    ; preds = %242
  %256 = getelementptr inbounds i8, i8* %244, i64 -5, !dbg !2102
  %257 = bitcast i8* %256 to i16*, !dbg !2103
  %258 = load i16, i16* %257, align 1, !dbg !2103, !tbaa !827
  %259 = zext i16 %258 to i64, !dbg !2102
  br label %269, !dbg !2104

; <label>:260:                                    ; preds = %242
  %261 = getelementptr inbounds i8, i8* %244, i64 -9, !dbg !2105
  %262 = bitcast i8* %261 to i32*, !dbg !2106
  %263 = load i32, i32* %262, align 1, !dbg !2106, !tbaa !832
  %264 = zext i32 %263 to i64, !dbg !2105
  br label %269, !dbg !2107

; <label>:265:                                    ; preds = %242
  %266 = getelementptr inbounds i8, i8* %244, i64 -17, !dbg !2108
  %267 = bitcast i8* %266 to i64*, !dbg !2109
  %268 = load i64, i64* %267, align 1, !dbg !2109, !tbaa !836
  br label %269, !dbg !2110

; <label>:269:                                    ; preds = %242, %248, %251, %255, %260, %265
  %270 = phi i64 [ %268, %265 ], [ %264, %260 ], [ %259, %255 ], [ %254, %251 ], [ %250, %248 ], [ 0, %242 ], !dbg !2111
  %271 = trunc i64 %270 to i32, !dbg !2112
  %272 = call i32 @stringmatchlen(i8* %115, i32 %116, i8* %244, i32 %271, i32 0) #7, !dbg !2113
  %273 = icmp eq i32 %272, 0, !dbg !2113
  br label %285, !dbg !2114

; <label>:274:                                    ; preds = %237
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %228) #8, !dbg !2115
  %275 = and i32 %239, 240, !dbg !2117
  %276 = icmp eq i32 %275, 16, !dbg !2117
  br i1 %276, label %278, label %277, !dbg !2117

; <label>:277:                                    ; preds = %274
  call void @_serverAssert(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 754) #7, !dbg !2117
  call void @_exit(i32 1) #10, !dbg !2117
  unreachable, !dbg !2117

; <label>:278:                                    ; preds = %274
  %279 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %234, i64 0, i32 2, !dbg !2118
  %280 = bitcast i8** %279 to i64*, !dbg !2118
  %281 = load i64, i64* %280, align 8, !dbg !2118, !tbaa !215
  %282 = call i32 @ll2string(i8* nonnull %228, i64 21, i64 %281) #7, !dbg !2119
  %283 = call i32 @stringmatchlen(i8* %115, i32 %116, i8* nonnull %228, i32 %282, i32 0) #7, !dbg !2121
  %284 = icmp eq i32 %283, 0, !dbg !2121
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %228) #8, !dbg !2123
  br label %285

; <label>:285:                                    ; preds = %269, %230, %278
  %286 = phi i1 [ %284, %278 ], [ false, %230 ], [ %273, %269 ]
  %287 = xor i1 %286, true, !dbg !2124
  %288 = and i1 %13, %287, !dbg !2126
  br i1 %288, label %289, label %293, !dbg !2126

; <label>:289:                                    ; preds = %285
  %290 = load %struct.redisDb*, %struct.redisDb** %227, align 8, !dbg !2127, !tbaa !561
  %291 = call i32 @expireIfNeeded(%struct.redisDb* %290, %struct.redisObject* %234) #9, !dbg !2128
  %292 = icmp eq i32 %291, 0, !dbg !2128
  br i1 %292, label %295, label %294

; <label>:293:                                    ; preds = %285
  br i1 %286, label %294, label %295, !dbg !2129

; <label>:294:                                    ; preds = %293, %289
  call void @decrRefCount(%struct.redisObject* %234) #7, !dbg !2130
  call void @listDelNode(%struct.list* %11, %struct.listNode* nonnull %231) #7, !dbg !2133
  br label %295, !dbg !2134

; <label>:295:                                    ; preds = %293, %289, %294
  %296 = phi i1 [ true, %294 ], [ false, %293 ], [ false, %289 ]
  br i1 %13, label %309, label %297, !dbg !2135

; <label>:297:                                    ; preds = %295
  %298 = load i32, i32* %229, align 8, !dbg !2137
  %299 = and i32 %298, 15, !dbg !2137
  %300 = add nsw i32 %299, -3, !dbg !2138
  %301 = icmp ult i32 %300, 2, !dbg !2138
  br i1 %301, label %302, label %309, !dbg !2138

; <label>:302:                                    ; preds = %297
  %303 = getelementptr inbounds %struct.listNode, %struct.listNode* %236, i64 0, i32 1, !dbg !2139
  %304 = load %struct.listNode*, %struct.listNode** %303, align 8, !dbg !2139, !tbaa !2084
  br i1 %296, label %305, label %309, !dbg !2141

; <label>:305:                                    ; preds = %302
  %306 = getelementptr inbounds %struct.listNode, %struct.listNode* %236, i64 0, i32 2, !dbg !2142
  %307 = bitcast i8** %306 to %struct.redisObject**, !dbg !2142
  %308 = load %struct.redisObject*, %struct.redisObject** %307, align 8, !dbg !2142, !tbaa !2080
  call void @decrRefCount(%struct.redisObject* %308) #7, !dbg !2145
  call void @listDelNode(%struct.list* %11, %struct.listNode* nonnull %236) #7, !dbg !2146
  br label %309, !dbg !2147

; <label>:309:                                    ; preds = %297, %295, %302, %305
  %310 = phi %struct.listNode* [ %304, %305 ], [ %304, %302 ], [ %236, %295 ], [ %236, %297 ], !dbg !2148
  %311 = icmp eq %struct.listNode* %310, null, !dbg !2078
  br i1 %311, label %312, label %230, !dbg !2078, !llvm.loop !2149

; <label>:312:                                    ; preds = %309, %220
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 2) #7, !dbg !2151
  call void @addReplyBulkLongLong(%struct.client* %0, i64 %221) #7, !dbg !2152
  %313 = getelementptr inbounds %struct.list, %struct.list* %11, i64 0, i32 5, !dbg !2153
  %314 = load i64, i64* %313, align 8, !dbg !2153, !tbaa !2023
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 %314) #7, !dbg !2154
  %315 = load %struct.listNode*, %struct.listNode** %222, align 8, !dbg !2155, !tbaa !2076
  %316 = icmp eq %struct.listNode* %315, null, !dbg !2156
  br i1 %316, label %324, label %317, !dbg !2157

; <label>:317:                                    ; preds = %312, %317
  %318 = phi %struct.listNode* [ %322, %317 ], [ %315, %312 ]
  %319 = getelementptr inbounds %struct.listNode, %struct.listNode* %318, i64 0, i32 2, !dbg !2158
  %320 = bitcast i8** %319 to %struct.redisObject**, !dbg !2158
  %321 = load %struct.redisObject*, %struct.redisObject** %320, align 8, !dbg !2158, !tbaa !2080
  call void @addReplyBulk(%struct.client* %0, %struct.redisObject* %321) #7, !dbg !2160
  call void @decrRefCount(%struct.redisObject* %321) #7, !dbg !2161
  call void @listDelNode(%struct.list* nonnull %11, %struct.listNode* nonnull %318) #7, !dbg !2162
  %322 = load %struct.listNode*, %struct.listNode** %222, align 8, !dbg !2155, !tbaa !2076
  %323 = icmp eq %struct.listNode* %322, null, !dbg !2156
  br i1 %323, label %324, label %317, !dbg !2157, !llvm.loop !2163

; <label>:324:                                    ; preds = %47, %317, %312, %102, %58
  %325 = getelementptr inbounds %struct.list, %struct.list* %11, i64 0, i32 3, !dbg !2165
  store void (i8*)* @decrRefCountVoid, void (i8*)** %325, align 8, !dbg !2165, !tbaa !2166
  call void @listRelease(%struct.list* %11) #7, !dbg !2167
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #8, !dbg !2168
  ret void, !dbg !2168
}

; Function Attrs: noredzone
declare dso_local %struct.list* @listCreate() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @dictScan(%struct.dict*, i64, void (i8*, %struct.dictEntry*)*, void (i8*, %struct.dictEntry**)*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i8 @intsetGet(%struct.intset*, i32, i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObjectFromLongLong(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @ziplistIndex(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @ziplistGet(i8*, i8**, i32*, i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @ziplistNext(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @ll2string(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @listDelNode(%struct.list*, %struct.listNode*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @decrRefCountVoid(i8*) #3

; Function Attrs: noredzone
declare dso_local void @listRelease(%struct.list*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @scanCommand(%struct.client*) local_unnamed_addr #0 !dbg !2169 {
  %2 = alloca i8*, align 8
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2174
  %4 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2174, !tbaa !1114
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 1, !dbg !2176
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !2176, !tbaa !1116
  %7 = bitcast i8** %2 to i8*, !dbg !2180
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #8, !dbg !2180
  %8 = tail call i32* @__errno() #7, !dbg !2181
  store i32 0, i32* %8, align 4, !dbg !2182, !tbaa !832
  %9 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %6, i64 0, i32 2, !dbg !2183
  %10 = load i8*, i8** %9, align 8, !dbg !2183, !tbaa !215
  %11 = call i64 @strtoul(i8* %10, i8** nonnull %2, i32 10) #7, !dbg !2185
  %12 = call i8* @__locale_ctype_ptr() #7, !dbg !2186
  %13 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !2186
  %14 = load i8*, i8** %9, align 8, !dbg !2186, !tbaa !215
  %15 = load i8, i8* %14, align 1, !dbg !2186, !tbaa !222
  %16 = sext i8 %15 to i64, !dbg !2186
  %17 = getelementptr inbounds i8, i8* %13, i64 %16, !dbg !2186
  %18 = load i8, i8* %17, align 1, !dbg !2186, !tbaa !222
  %19 = and i8 %18, 8, !dbg !2186
  %20 = icmp eq i8 %19, 0, !dbg !2186
  br i1 %20, label %21, label %29, !dbg !2187

; <label>:21:                                     ; preds = %1
  %22 = load i8*, i8** %2, align 8, !dbg !2188, !tbaa !1116
  %23 = load i8, i8* %22, align 1, !dbg !2188, !tbaa !222
  %24 = icmp eq i8 %23, 0, !dbg !2189
  br i1 %24, label %25, label %29, !dbg !2190

; <label>:25:                                     ; preds = %21
  %26 = call i32* @__errno() #7, !dbg !2191
  %27 = load i32, i32* %26, align 4, !dbg !2191, !tbaa !832
  %28 = icmp eq i32 %27, 34, !dbg !2192
  br i1 %28, label %29, label %30, !dbg !2193

; <label>:29:                                     ; preds = %1, %21, %25
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !2194
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8, !dbg !2195
  br label %31, !dbg !2196

; <label>:30:                                     ; preds = %25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8, !dbg !2195
  call void @scanGenericCommand(%struct.client* nonnull %0, %struct.redisObject* null, i64 %11) #9, !dbg !2198
  br label %31, !dbg !2199

; <label>:31:                                     ; preds = %29, %30
  ret void, !dbg !2199
}

; Function Attrs: noredzone nounwind
define dso_local void @dbsizeCommand(%struct.client*) local_unnamed_addr #0 !dbg !2200 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2204
  %3 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !2204, !tbaa !561
  %4 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %3, i64 0, i32 0, !dbg !2204
  %5 = load %struct.dict*, %struct.dict** %4, align 8, !dbg !2204, !tbaa !207
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %5, i64 0, i32 2, i64 0, i32 3, !dbg !2204
  %7 = load i64, i64* %6, align 8, !dbg !2204, !tbaa !347
  %8 = getelementptr inbounds %struct.dict, %struct.dict* %5, i64 0, i32 2, i64 1, i32 3, !dbg !2204
  %9 = load i64, i64* %8, align 8, !dbg !2204, !tbaa !347
  %10 = add i64 %9, %7, !dbg !2204
  tail call void @addReplyLongLong(%struct.client* %0, i64 %10) #7, !dbg !2205
  ret void, !dbg !2206
}

; Function Attrs: noredzone nounwind
define dso_local void @lastsaveCommand(%struct.client*) local_unnamed_addr #0 !dbg !2207 {
  %2 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 160), align 8, !dbg !2211, !tbaa !2212
  tail call void @addReplyLongLong(%struct.client* %0, i64 %2) #7, !dbg !2213
  ret void, !dbg !2214
}

; Function Attrs: noredzone nounwind
define dso_local void @typeCommand(%struct.client*) local_unnamed_addr #0 !dbg !2215 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2560
  %3 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !2560, !tbaa !561
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2561
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !2561, !tbaa !1114
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !2562
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !2562, !tbaa !1116
  %8 = tail call i32 @expireIfNeeded(%struct.redisDb* %3, %struct.redisObject* %7) #7, !dbg !2567
  %9 = icmp eq i32 %8, 1, !dbg !2568
  br i1 %9, label %10, label %34, !dbg !2569

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !2570, !tbaa !279
  %12 = icmp eq i8* %11, null, !dbg !2571
  br i1 %12, label %13, label %16, !dbg !2572

; <label>:13:                                     ; preds = %10
  %14 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), align 8, !dbg !2573, !tbaa !594
  %15 = add nsw i64 %14, 1, !dbg !2573
  store i64 %15, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), align 8, !dbg !2573, !tbaa !594
  br label %68, !dbg !2574

; <label>:16:                                     ; preds = %10
  %17 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !2575, !tbaa !284
  %18 = icmp eq %struct.client* %17, null, !dbg !2576
  %19 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2577
  %20 = icmp eq %struct.client* %17, %19, !dbg !2578
  %21 = or i1 %18, %20, !dbg !2579
  br i1 %21, label %34, label %22, !dbg !2579

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.client, %struct.client* %17, i64 0, i32 10, !dbg !2580
  %24 = load %struct.redisCommand*, %struct.redisCommand** %23, align 8, !dbg !2580, !tbaa !290
  %25 = icmp eq %struct.redisCommand* %24, null, !dbg !2581
  br i1 %25, label %34, label %26, !dbg !2582

; <label>:26:                                     ; preds = %22
  %27 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %24, i64 0, i32 4, !dbg !2583
  %28 = load i32, i32* %27, align 8, !dbg !2583, !tbaa !297
  %29 = and i32 %28, 2, !dbg !2584
  %30 = icmp eq i32 %29, 0, !dbg !2584
  br i1 %30, label %34, label %31, !dbg !2585

; <label>:31:                                     ; preds = %26
  %32 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), align 8, !dbg !2586, !tbaa !594
  %33 = add nsw i64 %32, 1, !dbg !2586
  store i64 %33, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), align 8, !dbg !2586, !tbaa !594
  br label %68, !dbg !2588

; <label>:34:                                     ; preds = %26, %22, %16, %1
  %35 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %3, i64 0, i32 0, !dbg !2593
  %36 = load %struct.dict*, %struct.dict** %35, align 8, !dbg !2593, !tbaa !207
  %37 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !2594
  %38 = load i8*, i8** %37, align 8, !dbg !2594, !tbaa !215
  %39 = tail call %struct.dictEntry* @dictFind(%struct.dict* %36, i8* %38) #7, !dbg !2595
  %40 = icmp eq %struct.dictEntry* %39, null, !dbg !2597
  br i1 %40, label %46, label %41, !dbg !2598

; <label>:41:                                     ; preds = %34
  %42 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %39, i64 0, i32 1, i32 0, !dbg !2599
  %43 = bitcast i8** %42 to %struct.redisObject**, !dbg !2599
  %44 = load %struct.redisObject*, %struct.redisObject** %43, align 8, !dbg !2599, !tbaa !222
  %45 = icmp eq %struct.redisObject* %44, null, !dbg !2602
  br i1 %45, label %46, label %49, !dbg !2603

; <label>:46:                                     ; preds = %34, %41
  %47 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), align 8, !dbg !2604, !tbaa !594
  %48 = add nsw i64 %47, 1, !dbg !2604
  store i64 %48, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), align 8, !dbg !2604, !tbaa !594
  br label %68, !dbg !2605

; <label>:49:                                     ; preds = %41
  %50 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 76), align 8, !dbg !2606, !tbaa !591
  %51 = add nsw i64 %50, 1, !dbg !2606
  store i64 %51, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 76), align 8, !dbg !2606, !tbaa !591
  %52 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %44, i64 0, i32 0, !dbg !2608
  %53 = load i32, i32* %52, align 8, !dbg !2608
  %54 = trunc i32 %53 to i4, !dbg !2609
  switch i4 %54, label %67 [
    i4 0, label %68
    i4 1, label %55
    i4 2, label %56
    i4 3, label %57
    i4 4, label %58
    i4 6, label %59
    i4 5, label %60
  ], !dbg !2609

; <label>:55:                                     ; preds = %49
  br label %68, !dbg !2610

; <label>:56:                                     ; preds = %49
  br label %68, !dbg !2611

; <label>:57:                                     ; preds = %49
  br label %68, !dbg !2612

; <label>:58:                                     ; preds = %49
  br label %68, !dbg !2613

; <label>:59:                                     ; preds = %49
  br label %68, !dbg !2614

; <label>:60:                                     ; preds = %49
  %61 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %44, i64 0, i32 2, !dbg !2615
  %62 = bitcast i8** %61 to %struct.moduleValue**, !dbg !2615
  %63 = load %struct.moduleValue*, %struct.moduleValue** %62, align 8, !dbg !2615, !tbaa !215
  %64 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %63, i64 0, i32 0, !dbg !2617
  %65 = load %struct.RedisModuleType*, %struct.RedisModuleType** %64, align 8, !dbg !2617, !tbaa !2618
  %66 = getelementptr inbounds %struct.RedisModuleType, %struct.RedisModuleType* %65, i64 0, i32 11, i64 0, !dbg !2620
  br label %68, !dbg !2622

; <label>:67:                                     ; preds = %49
  br label %68, !dbg !2623

; <label>:68:                                     ; preds = %46, %31, %13, %49, %55, %56, %57, %58, %59, %60, %67
  %69 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), %67 ], [ %66, %60 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), %59 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), %58 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), %57 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), %56 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %55 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), %49 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), %13 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), %31 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), %46 ], !dbg !2624
  tail call void @addReplyStatus(%struct.client* nonnull %0, i8* nonnull %69) #7, !dbg !2625
  ret void, !dbg !2626
}

; Function Attrs: noredzone
declare dso_local void @addReplyStatus(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @shutdownCommand(%struct.client*) local_unnamed_addr #0 !dbg !2627 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2633
  %3 = load i32, i32* %2, align 8, !dbg !2633, !tbaa !1106
  %4 = icmp sgt i32 %3, 2, !dbg !2635
  br i1 %4, label %5, label %7, !dbg !2636

; <label>:5:                                      ; preds = %1
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !2637, !tbaa !1122
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %6) #7, !dbg !2639
  br label %34, !dbg !2640

; <label>:7:                                      ; preds = %1
  %8 = icmp eq i32 %3, 2, !dbg !2641
  br i1 %8, label %9, label %23, !dbg !2643

; <label>:9:                                      ; preds = %7
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2644
  %11 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !2644, !tbaa !1114
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 1, !dbg !2647
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !2647, !tbaa !1116
  %14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %13, i64 0, i32 2, !dbg !2648
  %15 = load i8*, i8** %14, align 8, !dbg !2648, !tbaa !215
  %16 = tail call i32 @strcasecmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0)) #11, !dbg !2649
  %17 = icmp eq i32 %16, 0, !dbg !2649
  br i1 %17, label %23, label %18, !dbg !2650

; <label>:18:                                     ; preds = %9
  %19 = tail call i32 @strcasecmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #11, !dbg !2651
  %20 = icmp eq i32 %19, 0, !dbg !2651
  br i1 %20, label %23, label %21, !dbg !2653

; <label>:21:                                     ; preds = %18
  %22 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !2654, !tbaa !1122
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %22) #7, !dbg !2656
  br label %34, !dbg !2657

; <label>:23:                                     ; preds = %18, %9, %7
  %24 = phi i32 [ 0, %7 ], [ 2, %9 ], [ 1, %18 ], !dbg !2658
  %25 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !2659, !tbaa !2661
  %26 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 20), align 4, !dbg !2662
  %27 = or i32 %26, %25, !dbg !2663
  %28 = icmp eq i32 %27, 0, !dbg !2663
  %29 = select i1 %28, i32 %24, i32 2, !dbg !2663
  %30 = tail call i32 (i32, ...) bitcast (i32 (...)* @prepareForShutdown to i32 (i32, ...)*)(i32 %29) #7, !dbg !2664
  %31 = icmp eq i32 %30, 0, !dbg !2666
  br i1 %31, label %32, label %33, !dbg !2667

; <label>:32:                                     ; preds = %23
  tail call void @exit(i32 0) #10, !dbg !2668
  unreachable, !dbg !2668

; <label>:33:                                     ; preds = %23
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0)) #7, !dbg !2669
  br label %34, !dbg !2670

; <label>:34:                                     ; preds = %33, %21, %5
  ret void, !dbg !2670
}

; Function Attrs: noredzone
declare dso_local i32 @prepareForShutdown(...) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @renameGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !2671 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2681
  %4 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2681, !tbaa !1114
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 1, !dbg !2683
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !2683, !tbaa !1116
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %6, i64 0, i32 2, !dbg !2684
  %8 = load i8*, i8** %7, align 8, !dbg !2684, !tbaa !215
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 2, !dbg !2685
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !2685, !tbaa !1116
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i64 0, i32 2, !dbg !2686
  %12 = load i8*, i8** %11, align 8, !dbg !2686, !tbaa !215
  %13 = tail call i32 @sdscmp(i8* %8, i8* %12) #7, !dbg !2687
  %14 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2688, !tbaa !1114
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 1, !dbg !2690
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !2690, !tbaa !1116
  %17 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 15), align 8, !dbg !2691, !tbaa !2692
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2697
  %19 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !2697, !tbaa !561
  %20 = tail call i32 @expireIfNeeded(%struct.redisDb* %19, %struct.redisObject* %16) #7, !dbg !2701
  %21 = tail call %struct.redisObject* @lookupKey(%struct.redisDb* %19, %struct.redisObject* %16, i32 0) #7, !dbg !2702
  %22 = icmp eq %struct.redisObject* %21, null, !dbg !2704
  br i1 %22, label %23, label %24, !dbg !2705

; <label>:23:                                     ; preds = %2
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %17) #7, !dbg !2706
  br label %175, !dbg !2708

; <label>:24:                                     ; preds = %2
  %25 = icmp eq i32 %13, 0, !dbg !2709
  br i1 %25, label %26, label %31, !dbg !2710

; <label>:26:                                     ; preds = %24
  %27 = icmp eq i32 %1, 0, !dbg !2711
  %28 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !2714
  %29 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2715
  %30 = select i1 %27, %struct.redisObject* %29, %struct.redisObject* %28, !dbg !2711
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %30) #7, !dbg !2716
  br label %175, !dbg !2717

; <label>:31:                                     ; preds = %24
  tail call void @incrRefCount(%struct.redisObject* nonnull %21) #7, !dbg !2718
  %32 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !2719, !tbaa !561
  %33 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2720, !tbaa !1114
  %34 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %33, i64 1, !dbg !2721
  %35 = load %struct.redisObject*, %struct.redisObject** %34, align 8, !dbg !2721, !tbaa !1116
  %36 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %32, i64 0, i32 1, !dbg !2725
  %37 = load %struct.dict*, %struct.dict** %36, align 8, !dbg !2725, !tbaa !346
  %38 = getelementptr inbounds %struct.dict, %struct.dict* %37, i64 0, i32 2, i64 0, i32 3, !dbg !2725
  %39 = load i64, i64* %38, align 8, !dbg !2725, !tbaa !347
  %40 = getelementptr inbounds %struct.dict, %struct.dict* %37, i64 0, i32 2, i64 1, i32 3, !dbg !2725
  %41 = load i64, i64* %40, align 8, !dbg !2725, !tbaa !347
  %42 = sub i64 0, %41, !dbg !2726
  %43 = icmp eq i64 %39, %42, !dbg !2726
  br i1 %43, label %60, label %44, !dbg !2727

; <label>:44:                                     ; preds = %31
  %45 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %35, i64 0, i32 2, !dbg !2728
  %46 = load i8*, i8** %45, align 8, !dbg !2728, !tbaa !215
  %47 = tail call %struct.dictEntry* @dictFind(%struct.dict* %37, i8* %46) #7, !dbg !2729
  %48 = icmp eq %struct.dictEntry* %47, null, !dbg !2731
  br i1 %48, label %60, label %49, !dbg !2732

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %32, i64 0, i32 0, !dbg !2733
  %51 = load %struct.dict*, %struct.dict** %50, align 8, !dbg !2733, !tbaa !207
  %52 = load i8*, i8** %45, align 8, !dbg !2733, !tbaa !215
  %53 = tail call %struct.dictEntry* @dictFind(%struct.dict* %51, i8* %52) #7, !dbg !2733
  %54 = icmp eq %struct.dictEntry* %53, null, !dbg !2733
  br i1 %54, label %55, label %56, !dbg !2733

; <label>:55:                                     ; preds = %49
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 1101) #7, !dbg !2733
  tail call void @_exit(i32 1) #10, !dbg !2733
  unreachable, !dbg !2733

; <label>:56:                                     ; preds = %49
  %57 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %47, i64 0, i32 1, !dbg !2734
  %58 = bitcast %union.anon* %57 to i64*, !dbg !2734
  %59 = load i64, i64* %58, align 8, !dbg !2734, !tbaa !222
  br label %60, !dbg !2735

; <label>:60:                                     ; preds = %31, %44, %56
  %61 = phi i64 [ %59, %56 ], [ -1, %44 ], [ -1, %31 ], !dbg !2736
  %62 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !2738, !tbaa !561
  %63 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2740, !tbaa !1114
  %64 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %63, i64 2, !dbg !2741
  %65 = load %struct.redisObject*, %struct.redisObject** %64, align 8, !dbg !2741, !tbaa !1116
  %66 = tail call i32 @expireIfNeeded(%struct.redisDb* %62, %struct.redisObject* %65) #7, !dbg !2745
  %67 = tail call %struct.redisObject* @lookupKey(%struct.redisDb* %62, %struct.redisObject* %65, i32 0) #7, !dbg !2746
  %68 = icmp eq %struct.redisObject* %67, null, !dbg !2747
  br i1 %68, label %105, label %69, !dbg !2748

; <label>:69:                                     ; preds = %60
  %70 = icmp eq i32 %1, 0, !dbg !2749
  br i1 %70, label %73, label %71, !dbg !2752

; <label>:71:                                     ; preds = %69
  tail call void @decrRefCount(%struct.redisObject* nonnull %21) #7, !dbg !2753
  %72 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !2755, !tbaa !2756
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %72) #7, !dbg !2757
  br label %175, !dbg !2758

; <label>:73:                                     ; preds = %69
  %74 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !2759, !tbaa !561
  %75 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2760, !tbaa !1114
  %76 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %75, i64 2, !dbg !2761
  %77 = load %struct.redisObject*, %struct.redisObject** %76, align 8, !dbg !2761, !tbaa !1116
  %78 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 287), align 8, !dbg !2765, !tbaa !698
  %79 = icmp eq i32 %78, 0, !dbg !2766
  br i1 %79, label %82, label %80, !dbg !2766

; <label>:80:                                     ; preds = %73
  %81 = tail call i32 @dbAsyncDelete(%struct.redisDb* %74, %struct.redisObject* %77) #7, !dbg !2767
  br label %105, !dbg !2766

; <label>:82:                                     ; preds = %73
  %83 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %74, i64 0, i32 1, !dbg !2771
  %84 = load %struct.dict*, %struct.dict** %83, align 8, !dbg !2771, !tbaa !346
  %85 = getelementptr inbounds %struct.dict, %struct.dict* %84, i64 0, i32 2, i64 0, i32 3, !dbg !2771
  %86 = load i64, i64* %85, align 8, !dbg !2771, !tbaa !347
  %87 = getelementptr inbounds %struct.dict, %struct.dict* %84, i64 0, i32 2, i64 1, i32 3, !dbg !2771
  %88 = load i64, i64* %87, align 8, !dbg !2771, !tbaa !347
  %89 = sub i64 0, %88, !dbg !2772
  %90 = icmp eq i64 %86, %89, !dbg !2772
  %91 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %77, i64 0, i32 2, !dbg !2773
  br i1 %90, label %95, label %92, !dbg !2774

; <label>:92:                                     ; preds = %82
  %93 = load i8*, i8** %91, align 8, !dbg !2775, !tbaa !215
  %94 = tail call i32 @dictDelete(%struct.dict* %84, i8* %93) #7, !dbg !2776
  br label %95, !dbg !2776

; <label>:95:                                     ; preds = %92, %82
  %96 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %74, i64 0, i32 0, !dbg !2777
  %97 = load %struct.dict*, %struct.dict** %96, align 8, !dbg !2777, !tbaa !207
  %98 = load i8*, i8** %91, align 8, !dbg !2778, !tbaa !215
  %99 = tail call i32 @dictDelete(%struct.dict* %97, i8* %98) #7, !dbg !2779
  %100 = icmp ne i32 %99, 0, !dbg !2780
  %101 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !2781
  %102 = icmp eq i32 %101, 0, !dbg !2782
  %103 = or i1 %100, %102, !dbg !2783
  br i1 %103, label %105, label %104, !dbg !2783

; <label>:104:                                    ; preds = %95
  tail call void @slotToKeyUpdateKey(%struct.redisObject* nonnull %77, i32 0) #7, !dbg !2786
  br label %105, !dbg !2787

; <label>:105:                                    ; preds = %95, %104, %80, %60
  %106 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !2788, !tbaa !561
  %107 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2789, !tbaa !1114
  %108 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %107, i64 2, !dbg !2790
  %109 = load %struct.redisObject*, %struct.redisObject** %108, align 8, !dbg !2790, !tbaa !1116
  tail call void @dbAdd(%struct.redisDb* %106, %struct.redisObject* %109, %struct.redisObject* nonnull %21) #9, !dbg !2791
  %110 = icmp eq i64 %61, -1, !dbg !2792
  br i1 %110, label %116, label %111, !dbg !2794

; <label>:111:                                    ; preds = %105
  %112 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !2795, !tbaa !561
  %113 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2796, !tbaa !1114
  %114 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %113, i64 2, !dbg !2797
  %115 = load %struct.redisObject*, %struct.redisObject** %114, align 8, !dbg !2797, !tbaa !1116
  tail call void @setExpire(%struct.client* nonnull %0, %struct.redisDb* %112, %struct.redisObject* %115, i64 %61) #9, !dbg !2798
  br label %116, !dbg !2798

; <label>:116:                                    ; preds = %105, %111
  %117 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !2799, !tbaa !561
  %118 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2800, !tbaa !1114
  %119 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %118, i64 1, !dbg !2801
  %120 = load %struct.redisObject*, %struct.redisObject** %119, align 8, !dbg !2801, !tbaa !1116
  %121 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 287), align 8, !dbg !2805, !tbaa !698
  %122 = icmp eq i32 %121, 0, !dbg !2806
  br i1 %122, label %125, label %123, !dbg !2806

; <label>:123:                                    ; preds = %116
  %124 = tail call i32 @dbAsyncDelete(%struct.redisDb* %117, %struct.redisObject* %120) #7, !dbg !2807
  br label %148, !dbg !2806

; <label>:125:                                    ; preds = %116
  %126 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %117, i64 0, i32 1, !dbg !2811
  %127 = load %struct.dict*, %struct.dict** %126, align 8, !dbg !2811, !tbaa !346
  %128 = getelementptr inbounds %struct.dict, %struct.dict* %127, i64 0, i32 2, i64 0, i32 3, !dbg !2811
  %129 = load i64, i64* %128, align 8, !dbg !2811, !tbaa !347
  %130 = getelementptr inbounds %struct.dict, %struct.dict* %127, i64 0, i32 2, i64 1, i32 3, !dbg !2811
  %131 = load i64, i64* %130, align 8, !dbg !2811, !tbaa !347
  %132 = sub i64 0, %131, !dbg !2812
  %133 = icmp eq i64 %129, %132, !dbg !2812
  %134 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %120, i64 0, i32 2, !dbg !2813
  br i1 %133, label %138, label %135, !dbg !2814

; <label>:135:                                    ; preds = %125
  %136 = load i8*, i8** %134, align 8, !dbg !2815, !tbaa !215
  %137 = tail call i32 @dictDelete(%struct.dict* %127, i8* %136) #7, !dbg !2816
  br label %138, !dbg !2816

; <label>:138:                                    ; preds = %135, %125
  %139 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %117, i64 0, i32 0, !dbg !2817
  %140 = load %struct.dict*, %struct.dict** %139, align 8, !dbg !2817, !tbaa !207
  %141 = load i8*, i8** %134, align 8, !dbg !2818, !tbaa !215
  %142 = tail call i32 @dictDelete(%struct.dict* %140, i8* %141) #7, !dbg !2819
  %143 = icmp ne i32 %142, 0, !dbg !2820
  %144 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !2821
  %145 = icmp eq i32 %144, 0, !dbg !2822
  %146 = or i1 %143, %145, !dbg !2823
  br i1 %146, label %148, label %147, !dbg !2823

; <label>:147:                                    ; preds = %138
  tail call void @slotToKeyUpdateKey(%struct.redisObject* nonnull %120, i32 0) #7, !dbg !2826
  br label %148, !dbg !2827

; <label>:148:                                    ; preds = %138, %123, %147
  %149 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !2828, !tbaa !561
  %150 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2829, !tbaa !1114
  %151 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %150, i64 1, !dbg !2830
  %152 = load %struct.redisObject*, %struct.redisObject** %151, align 8, !dbg !2830, !tbaa !1116
  tail call void @touchWatchedKey(%struct.redisDb* %149, %struct.redisObject* %152) #7, !dbg !2834
  %153 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !2835, !tbaa !561
  %154 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2836, !tbaa !1114
  %155 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %154, i64 2, !dbg !2837
  %156 = load %struct.redisObject*, %struct.redisObject** %155, align 8, !dbg !2837, !tbaa !1116
  tail call void @touchWatchedKey(%struct.redisDb* %153, %struct.redisObject* %156) #7, !dbg !2841
  %157 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2842, !tbaa !1114
  %158 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %157, i64 1, !dbg !2843
  %159 = load %struct.redisObject*, %struct.redisObject** %158, align 8, !dbg !2843, !tbaa !1116
  %160 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !2844, !tbaa !561
  %161 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %160, i64 0, i32 5, !dbg !2845
  %162 = load i32, i32* %161, align 8, !dbg !2845, !tbaa !332
  tail call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), %struct.redisObject* %159, i32 %162) #7, !dbg !2846
  %163 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2847, !tbaa !1114
  %164 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %163, i64 2, !dbg !2848
  %165 = load %struct.redisObject*, %struct.redisObject** %164, align 8, !dbg !2848, !tbaa !1116
  %166 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !2849, !tbaa !561
  %167 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %166, i64 0, i32 5, !dbg !2850
  %168 = load i32, i32* %167, align 8, !dbg !2850, !tbaa !332
  tail call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), %struct.redisObject* %165, i32 %168) #7, !dbg !2851
  %169 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2852, !tbaa !1161
  %170 = add nsw i64 %169, 1, !dbg !2852
  store i64 %170, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2852, !tbaa !1161
  %171 = icmp eq i32 %1, 0, !dbg !2853
  %172 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !2854
  %173 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2855
  %174 = select i1 %171, %struct.redisObject* %173, %struct.redisObject* %172, !dbg !2853
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %174) #7, !dbg !2856
  br label %175, !dbg !2857

; <label>:175:                                    ; preds = %23, %148, %71, %26
  ret void, !dbg !2857
}

; Function Attrs: noredzone
declare dso_local i32 @sdscmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @getExpire(%struct.redisDb* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !1581 {
  %3 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !2860
  %4 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !2860, !tbaa !346
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %4, i64 0, i32 2, i64 0, i32 3, !dbg !2860
  %6 = load i64, i64* %5, align 8, !dbg !2860, !tbaa !347
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %4, i64 0, i32 2, i64 1, i32 3, !dbg !2860
  %8 = load i64, i64* %7, align 8, !dbg !2860, !tbaa !347
  %9 = sub i64 0, %8, !dbg !2861
  %10 = icmp eq i64 %6, %9, !dbg !2861
  br i1 %10, label %27, label %11, !dbg !2862

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2863
  %13 = load i8*, i8** %12, align 8, !dbg !2863, !tbaa !215
  %14 = tail call %struct.dictEntry* @dictFind(%struct.dict* %4, i8* %13) #7, !dbg !2864
  %15 = icmp eq %struct.dictEntry* %14, null, !dbg !2866
  br i1 %15, label %27, label %16, !dbg !2867

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !2868
  %18 = load %struct.dict*, %struct.dict** %17, align 8, !dbg !2868, !tbaa !207
  %19 = load i8*, i8** %12, align 8, !dbg !2868, !tbaa !215
  %20 = tail call %struct.dictEntry* @dictFind(%struct.dict* %18, i8* %19) #7, !dbg !2868
  %21 = icmp eq %struct.dictEntry* %20, null, !dbg !2868
  br i1 %21, label %22, label %23, !dbg !2868

; <label>:22:                                     ; preds = %16
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 1101) #7, !dbg !2868
  tail call void @_exit(i32 1) #10, !dbg !2868
  unreachable, !dbg !2868

; <label>:23:                                     ; preds = %16
  %24 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %14, i64 0, i32 1, !dbg !2869
  %25 = bitcast %union.anon* %24 to i64*, !dbg !2869
  %26 = load i64, i64* %25, align 8, !dbg !2869, !tbaa !222
  br label %27, !dbg !2870

; <label>:27:                                     ; preds = %2, %11, %23
  %28 = phi i64 [ %26, %23 ], [ -1, %11 ], [ -1, %2 ], !dbg !2871
  ret i64 %28, !dbg !2872
}

; Function Attrs: noredzone nounwind
define dso_local void @setExpire(%struct.client* readonly, %struct.redisDb*, %struct.redisObject*, i64) local_unnamed_addr #0 !dbg !2873 {
  %5 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %1, i64 0, i32 0, !dbg !2888
  %6 = load %struct.dict*, %struct.dict** %5, align 8, !dbg !2888, !tbaa !207
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !2889
  %8 = load i8*, i8** %7, align 8, !dbg !2889, !tbaa !215
  %9 = tail call %struct.dictEntry* @dictFind(%struct.dict* %6, i8* %8) #7, !dbg !2890
  %10 = icmp eq %struct.dictEntry* %9, null, !dbg !2892
  br i1 %10, label %11, label %12, !dbg !2892

; <label>:11:                                     ; preds = %4
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 1081) #7, !dbg !2892
  tail call void @_exit(i32 1) #10, !dbg !2892
  unreachable, !dbg !2892

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %1, i64 0, i32 1, !dbg !2893
  %14 = load %struct.dict*, %struct.dict** %13, align 8, !dbg !2893, !tbaa !346
  %15 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %9, i64 0, i32 0, !dbg !2894
  %16 = load i8*, i8** %15, align 8, !dbg !2894, !tbaa !802
  %17 = tail call %struct.dictEntry* @dictAddOrFind(%struct.dict* %14, i8* %16) #7, !dbg !2895
  %18 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %17, i64 0, i32 1, !dbg !2897
  %19 = bitcast %union.anon* %18 to i64*, !dbg !2897
  store i64 %3, i64* %19, align 8, !dbg !2897, !tbaa !222
  %20 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !2899, !tbaa !279
  %21 = icmp ne i8* %20, null, !dbg !2900
  %22 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 211), align 4, !dbg !2901
  %23 = icmp eq i32 %22, 0, !dbg !2902
  %24 = and i1 %21, %23, !dbg !2903
  %25 = icmp ne %struct.client* %0, null, !dbg !2904
  %26 = and i1 %25, %24, !dbg !2906
  br i1 %26, label %27, label %33, !dbg !2906

; <label>:27:                                     ; preds = %12
  %28 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2907
  %29 = load i32, i32* %28, align 8, !dbg !2907, !tbaa !2908
  %30 = and i32 %29, 2, !dbg !2909
  %31 = icmp eq i32 %30, 0, !dbg !2909
  br i1 %31, label %32, label %33, !dbg !2910

; <label>:32:                                     ; preds = %27
  tail call void @rememberSlaveKeyWithExpire(%struct.redisDb* nonnull %1, %struct.redisObject* nonnull %2) #7, !dbg !2911
  br label %33, !dbg !2911

; <label>:33:                                     ; preds = %27, %32, %12
  ret void, !dbg !2912
}

; Function Attrs: noredzone nounwind
define dso_local void @renameCommand(%struct.client*) local_unnamed_addr #0 !dbg !2913 {
  tail call void @renameGenericCommand(%struct.client* %0, i32 0) #9, !dbg !2917
  ret void, !dbg !2918
}

; Function Attrs: noredzone nounwind
define dso_local void @renamenxCommand(%struct.client*) local_unnamed_addr #0 !dbg !2919 {
  tail call void @renameGenericCommand(%struct.client* %0, i32 1) #9, !dbg !2923
  ret void, !dbg !2924
}

; Function Attrs: noredzone nounwind
define dso_local void @moveCommand(%struct.client*) local_unnamed_addr #0 !dbg !2925 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !2935
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !2935
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !2936, !tbaa !363
  %5 = icmp eq i32 %4, 0, !dbg !2938
  br i1 %5, label %7, label %6, !dbg !2939

; <label>:6:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i64 0, i64 0)) #7, !dbg !2940
  br label %139, !dbg !2942

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2943
  %9 = load %struct.redisDb*, %struct.redisDb** %8, align 8, !dbg !2943, !tbaa !561
  %10 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %9, i64 0, i32 5, !dbg !2945
  %11 = load i32, i32* %10, align 8, !dbg !2945, !tbaa !332
  %12 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2947
  %13 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !2947, !tbaa !1114
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 2, !dbg !2949
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !2949, !tbaa !1116
  %16 = call i32 @getLongLongFromObject(%struct.redisObject* %15, i64* nonnull %2) #7, !dbg !2951
  %17 = icmp eq i32 %16, -1, !dbg !2952
  %18 = load i64, i64* %2, align 8, !dbg !2953
  %19 = add i64 %18, 2147483648, !dbg !2954
  %20 = icmp ugt i64 %19, 4294967295, !dbg !2954
  %21 = or i1 %17, %20, !dbg !2954
  br i1 %21, label %28, label %22, !dbg !2954

; <label>:22:                                     ; preds = %7
  %23 = trunc i64 %18 to i32, !dbg !2955
  %24 = icmp sgt i32 %23, -1, !dbg !2959
  %25 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !2960
  %26 = icmp sgt i32 %25, %23, !dbg !2961
  %27 = and i1 %24, %26, !dbg !2962
  br i1 %27, label %30, label %28, !dbg !2962

; <label>:28:                                     ; preds = %22, %7
  %29 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 18), align 8, !dbg !2963, !tbaa !2965
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %29) #7, !dbg !2966
  br label %139, !dbg !2967

; <label>:30:                                     ; preds = %22
  %31 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !2968, !tbaa !1014
  %32 = shl i64 %18, 32, !dbg !2969
  %33 = ashr exact i64 %32, 32, !dbg !2969
  %34 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %31, i64 %33, !dbg !2969
  store %struct.redisDb* %34, %struct.redisDb** %8, align 8, !dbg !2970, !tbaa !561
  %35 = icmp sgt i32 %11, -1, !dbg !2975
  %36 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !2976
  %37 = icmp sgt i32 %36, %11, !dbg !2977
  %38 = and i1 %35, %37, !dbg !2978
  br i1 %38, label %39, label %42, !dbg !2978

; <label>:39:                                     ; preds = %30
  %40 = sext i32 %11 to i64, !dbg !2979
  %41 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %31, i64 %40, !dbg !2979
  store %struct.redisDb* %41, %struct.redisDb** %8, align 8, !dbg !2980, !tbaa !561
  br label %42, !dbg !2981

; <label>:42:                                     ; preds = %30, %39
  %43 = phi %struct.redisDb* [ %34, %30 ], [ %41, %39 ]
  %44 = icmp eq %struct.redisDb* %9, %34, !dbg !2982
  br i1 %44, label %45, label %47, !dbg !2984

; <label>:45:                                     ; preds = %42
  %46 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 17), align 8, !dbg !2985, !tbaa !2987
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %46) #7, !dbg !2988
  br label %139, !dbg !2989

; <label>:47:                                     ; preds = %42
  %48 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !2990, !tbaa !1114
  %49 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %48, i64 1, !dbg !2991
  %50 = load %struct.redisObject*, %struct.redisObject** %49, align 8, !dbg !2991, !tbaa !1116
  %51 = call i32 @expireIfNeeded(%struct.redisDb* %43, %struct.redisObject* %50) #7, !dbg !2995
  %52 = call %struct.redisObject* @lookupKey(%struct.redisDb* %43, %struct.redisObject* %50, i32 0) #7, !dbg !2996
  %53 = icmp eq %struct.redisObject* %52, null, !dbg !2998
  br i1 %53, label %54, label %56, !dbg !3000

; <label>:54:                                     ; preds = %47
  %55 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !3001, !tbaa !2756
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %55) #7, !dbg !3003
  br label %139, !dbg !3004

; <label>:56:                                     ; preds = %47
  %57 = load %struct.redisDb*, %struct.redisDb** %8, align 8, !dbg !3005, !tbaa !561
  %58 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !3006, !tbaa !1114
  %59 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %58, i64 1, !dbg !3007
  %60 = load %struct.redisObject*, %struct.redisObject** %59, align 8, !dbg !3007, !tbaa !1116
  %61 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %57, i64 0, i32 1, !dbg !3011
  %62 = load %struct.dict*, %struct.dict** %61, align 8, !dbg !3011, !tbaa !346
  %63 = getelementptr inbounds %struct.dict, %struct.dict* %62, i64 0, i32 2, i64 0, i32 3, !dbg !3011
  %64 = load i64, i64* %63, align 8, !dbg !3011, !tbaa !347
  %65 = getelementptr inbounds %struct.dict, %struct.dict* %62, i64 0, i32 2, i64 1, i32 3, !dbg !3011
  %66 = load i64, i64* %65, align 8, !dbg !3011, !tbaa !347
  %67 = sub i64 0, %66, !dbg !3012
  %68 = icmp eq i64 %64, %67, !dbg !3012
  br i1 %68, label %85, label %69, !dbg !3013

; <label>:69:                                     ; preds = %56
  %70 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %60, i64 0, i32 2, !dbg !3014
  %71 = load i8*, i8** %70, align 8, !dbg !3014, !tbaa !215
  %72 = call %struct.dictEntry* @dictFind(%struct.dict* %62, i8* %71) #7, !dbg !3015
  %73 = icmp eq %struct.dictEntry* %72, null, !dbg !3017
  br i1 %73, label %85, label %74, !dbg !3018

; <label>:74:                                     ; preds = %69
  %75 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %57, i64 0, i32 0, !dbg !3019
  %76 = load %struct.dict*, %struct.dict** %75, align 8, !dbg !3019, !tbaa !207
  %77 = load i8*, i8** %70, align 8, !dbg !3019, !tbaa !215
  %78 = call %struct.dictEntry* @dictFind(%struct.dict* %76, i8* %77) #7, !dbg !3019
  %79 = icmp eq %struct.dictEntry* %78, null, !dbg !3019
  br i1 %79, label %80, label %81, !dbg !3019

; <label>:80:                                     ; preds = %74
  call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 1101) #7, !dbg !3019
  call void @_exit(i32 1) #10, !dbg !3019
  unreachable, !dbg !3019

; <label>:81:                                     ; preds = %74
  %82 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %72, i64 0, i32 1, !dbg !3020
  %83 = bitcast %union.anon* %82 to i64*, !dbg !3020
  %84 = load i64, i64* %83, align 8, !dbg !3020, !tbaa !222
  br label %85, !dbg !3021

; <label>:85:                                     ; preds = %56, %69, %81
  %86 = phi i64 [ %84, %81 ], [ -1, %69 ], [ -1, %56 ], !dbg !3022
  %87 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !3024, !tbaa !1114
  %88 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %87, i64 1, !dbg !3026
  %89 = load %struct.redisObject*, %struct.redisObject** %88, align 8, !dbg !3026, !tbaa !1116
  %90 = call i32 @expireIfNeeded(%struct.redisDb* %34, %struct.redisObject* %89) #7, !dbg !3030
  %91 = call %struct.redisObject* @lookupKey(%struct.redisDb* %34, %struct.redisObject* %89, i32 0) #7, !dbg !3031
  %92 = icmp eq %struct.redisObject* %91, null, !dbg !3032
  br i1 %92, label %95, label %93, !dbg !3033

; <label>:93:                                     ; preds = %85
  %94 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !3034, !tbaa !2756
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %94) #7, !dbg !3036
  br label %139, !dbg !3037

; <label>:95:                                     ; preds = %85
  %96 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !3038, !tbaa !1114
  %97 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %96, i64 1, !dbg !3039
  %98 = load %struct.redisObject*, %struct.redisObject** %97, align 8, !dbg !3039, !tbaa !1116
  call void @dbAdd(%struct.redisDb* %34, %struct.redisObject* %98, %struct.redisObject* nonnull %52) #9, !dbg !3040
  %99 = icmp eq i64 %86, -1, !dbg !3041
  br i1 %99, label %104, label %100, !dbg !3043

; <label>:100:                                    ; preds = %95
  %101 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !3044, !tbaa !1114
  %102 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %101, i64 1, !dbg !3045
  %103 = load %struct.redisObject*, %struct.redisObject** %102, align 8, !dbg !3045, !tbaa !1116
  call void @setExpire(%struct.client* nonnull %0, %struct.redisDb* %34, %struct.redisObject* %103, i64 %86) #9, !dbg !3046
  br label %104, !dbg !3046

; <label>:104:                                    ; preds = %95, %100
  call void @incrRefCount(%struct.redisObject* nonnull %52) #7, !dbg !3047
  %105 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !3048, !tbaa !1114
  %106 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %105, i64 1, !dbg !3049
  %107 = load %struct.redisObject*, %struct.redisObject** %106, align 8, !dbg !3049, !tbaa !1116
  %108 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 287), align 8, !dbg !3053, !tbaa !698
  %109 = icmp eq i32 %108, 0, !dbg !3054
  br i1 %109, label %112, label %110, !dbg !3054

; <label>:110:                                    ; preds = %104
  %111 = call i32 @dbAsyncDelete(%struct.redisDb* %9, %struct.redisObject* %107) #7, !dbg !3055
  br label %135, !dbg !3054

; <label>:112:                                    ; preds = %104
  %113 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %9, i64 0, i32 1, !dbg !3059
  %114 = load %struct.dict*, %struct.dict** %113, align 8, !dbg !3059, !tbaa !346
  %115 = getelementptr inbounds %struct.dict, %struct.dict* %114, i64 0, i32 2, i64 0, i32 3, !dbg !3059
  %116 = load i64, i64* %115, align 8, !dbg !3059, !tbaa !347
  %117 = getelementptr inbounds %struct.dict, %struct.dict* %114, i64 0, i32 2, i64 1, i32 3, !dbg !3059
  %118 = load i64, i64* %117, align 8, !dbg !3059, !tbaa !347
  %119 = sub i64 0, %118, !dbg !3060
  %120 = icmp eq i64 %116, %119, !dbg !3060
  %121 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %107, i64 0, i32 2, !dbg !3061
  br i1 %120, label %125, label %122, !dbg !3062

; <label>:122:                                    ; preds = %112
  %123 = load i8*, i8** %121, align 8, !dbg !3063, !tbaa !215
  %124 = call i32 @dictDelete(%struct.dict* %114, i8* %123) #7, !dbg !3064
  br label %125, !dbg !3064

; <label>:125:                                    ; preds = %122, %112
  %126 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %9, i64 0, i32 0, !dbg !3065
  %127 = load %struct.dict*, %struct.dict** %126, align 8, !dbg !3065, !tbaa !207
  %128 = load i8*, i8** %121, align 8, !dbg !3066, !tbaa !215
  %129 = call i32 @dictDelete(%struct.dict* %127, i8* %128) #7, !dbg !3067
  %130 = icmp ne i32 %129, 0, !dbg !3068
  %131 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !3069
  %132 = icmp eq i32 %131, 0, !dbg !3070
  %133 = or i1 %130, %132, !dbg !3071
  br i1 %133, label %135, label %134, !dbg !3071

; <label>:134:                                    ; preds = %125
  call void @slotToKeyUpdateKey(%struct.redisObject* nonnull %107, i32 0) #7, !dbg !3074
  br label %135, !dbg !3075

; <label>:135:                                    ; preds = %125, %110, %134
  %136 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3076, !tbaa !1161
  %137 = add nsw i64 %136, 1, !dbg !3076
  store i64 %137, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3076, !tbaa !1161
  %138 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !3077, !tbaa !3078
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %138) #7, !dbg !3079
  br label %139, !dbg !3080

; <label>:139:                                    ; preds = %135, %93, %54, %45, %28, %6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !3080
  ret void, !dbg !3080
}

; Function Attrs: noredzone
declare dso_local i32 @getLongLongFromObject(%struct.redisObject*, i64*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @scanDatabaseForReadyLists(%struct.redisDb*) local_unnamed_addr #0 !dbg !3081 {
  %2 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 2, !dbg !3092
  %3 = load %struct.dict*, %struct.dict** %2, align 8, !dbg !3092, !tbaa !3093
  %4 = tail call %struct.dictIterator* @dictGetSafeIterator(%struct.dict* %3) #7, !dbg !3094
  %5 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %4) #7, !dbg !3096
  %6 = icmp eq %struct.dictEntry* %5, null, !dbg !3098
  br i1 %6, label %31, label %7, !dbg !3099

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0
  br label %9, !dbg !3099

; <label>:9:                                      ; preds = %7, %28
  %10 = phi %struct.dictEntry* [ %5, %7 ], [ %29, %28 ]
  %11 = bitcast %struct.dictEntry* %10 to %struct.redisObject**, !dbg !3100
  %12 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !3100, !tbaa !802
  %13 = load %struct.dict*, %struct.dict** %8, align 8, !dbg !3106, !tbaa !207
  %14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %12, i64 0, i32 2, !dbg !3107
  %15 = load i8*, i8** %14, align 8, !dbg !3107, !tbaa !215
  %16 = tail call %struct.dictEntry* @dictFind(%struct.dict* %13, i8* %15) #7, !dbg !3108
  %17 = icmp eq %struct.dictEntry* %16, null, !dbg !3110
  br i1 %17, label %28, label %18, !dbg !3111

; <label>:18:                                     ; preds = %9
  %19 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %16, i64 0, i32 1, i32 0, !dbg !3112
  %20 = bitcast i8** %19 to %struct.redisObject**, !dbg !3112
  %21 = load %struct.redisObject*, %struct.redisObject** %20, align 8, !dbg !3112, !tbaa !222
  %22 = icmp eq %struct.redisObject* %21, null, !dbg !3115
  br i1 %22, label %28, label %23, !dbg !3117

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %21, i64 0, i32 0, !dbg !3118
  %25 = load i32, i32* %24, align 8, !dbg !3118
  %26 = trunc i32 %25 to i4, !dbg !3119
  switch i4 %26, label %28 [
    i4 1, label %27
    i4 6, label %27
    i4 3, label %27
  ], !dbg !3119

; <label>:27:                                     ; preds = %23, %23, %23
  tail call void @signalKeyAsReady(%struct.redisDb* nonnull %0, %struct.redisObject* %12) #7, !dbg !3120
  br label %28, !dbg !3120

; <label>:28:                                     ; preds = %9, %23, %18, %27
  %29 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %4) #7, !dbg !3096
  %30 = icmp eq %struct.dictEntry* %29, null, !dbg !3098
  br i1 %30, label %31, label %9, !dbg !3099, !llvm.loop !3121

; <label>:31:                                     ; preds = %28, %1
  tail call void @dictReleaseIterator(%struct.dictIterator* %4) #7, !dbg !3123
  ret void, !dbg !3124
}

; Function Attrs: noredzone nounwind
define dso_local i32 @dbSwapDatabases(i32, i32) local_unnamed_addr #0 !dbg !3125 {
  %3 = icmp slt i32 %0, 0, !dbg !3136
  br i1 %3, label %29, label %4, !dbg !3138

; <label>:4:                                      ; preds = %2
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !3139, !tbaa !989
  %6 = icmp sgt i32 %5, %0, !dbg !3140
  %7 = icmp sgt i32 %1, -1, !dbg !3141
  %8 = and i1 %7, %6, !dbg !3142
  %9 = icmp sgt i32 %5, %1, !dbg !3143
  %10 = and i1 %9, %8, !dbg !3142
  br i1 %10, label %11, label %29, !dbg !3142

; <label>:11:                                     ; preds = %4
  %12 = icmp eq i32 %0, %1, !dbg !3144
  br i1 %12, label %29, label %13, !dbg !3146

; <label>:13:                                     ; preds = %11
  %14 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !3147, !tbaa !1014
  %15 = sext i32 %0 to i64, !dbg !3148
  %16 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %14, i64 %15, !dbg !3148
  %17 = bitcast %struct.redisDb* %16 to <2 x i64>*, !dbg !3148
  %18 = load <2 x i64>, <2 x i64>* %17, align 8, !dbg !3148
  %19 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %14, i64 %15, i32 6, !dbg !3148
  %20 = load i64, i64* %19, align 8, !dbg !3148
  %21 = sext i32 %1 to i64, !dbg !3151
  %22 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %14, i64 %21, !dbg !3151
  %23 = bitcast %struct.redisDb* %22 to <2 x i64>*, !dbg !3153
  %24 = load <2 x i64>, <2 x i64>* %23, align 8, !dbg !3153, !tbaa !1116
  %25 = bitcast %struct.redisDb* %16 to <2 x i64>*, !dbg !3154
  store <2 x i64> %24, <2 x i64>* %25, align 8, !dbg !3154, !tbaa !1116
  %26 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %14, i64 %21, i32 6, !dbg !3155
  %27 = load i64, i64* %26, align 8, !dbg !3155, !tbaa !3156
  store i64 %27, i64* %19, align 8, !dbg !3157, !tbaa !3156
  %28 = bitcast %struct.redisDb* %22 to <2 x i64>*, !dbg !3158
  store <2 x i64> %18, <2 x i64>* %28, align 8, !dbg !3158, !tbaa !1116
  store i64 %20, i64* %26, align 8, !dbg !3159, !tbaa !3156
  tail call void @scanDatabaseForReadyLists(%struct.redisDb* %16) #9, !dbg !3160
  tail call void @scanDatabaseForReadyLists(%struct.redisDb* %22) #9, !dbg !3161
  br label %29

; <label>:29:                                     ; preds = %11, %2, %4, %13
  %30 = phi i32 [ 0, %13 ], [ -1, %4 ], [ -1, %2 ], [ 0, %11 ], !dbg !3162
  ret i32 %30, !dbg !3163
}

; Function Attrs: noredzone nounwind
define dso_local void @swapdbCommand(%struct.client*) local_unnamed_addr #0 !dbg !3164 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = bitcast i64* %2 to i8*, !dbg !3170
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8, !dbg !3170
  %5 = bitcast i64* %3 to i8*, !dbg !3170
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !3170
  %6 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !3171, !tbaa !363
  %7 = icmp eq i32 %6, 0, !dbg !3173
  br i1 %7, label %9, label %8, !dbg !3174

; <label>:8:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0)) #7, !dbg !3175
  br label %60, !dbg !3177

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3178
  %11 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !3178, !tbaa !1114
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 1, !dbg !3180
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !3180, !tbaa !1116
  %14 = call i32 @getLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %13, i64* nonnull %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0)) #7, !dbg !3182
  %15 = icmp eq i32 %14, 0, !dbg !3183
  br i1 %15, label %16, label %60, !dbg !3184

; <label>:16:                                     ; preds = %9
  %17 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !3185, !tbaa !1114
  %18 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %17, i64 2, !dbg !3187
  %19 = load %struct.redisObject*, %struct.redisObject** %18, align 8, !dbg !3187, !tbaa !1116
  %20 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %19, i64* nonnull %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0)) #7, !dbg !3189
  %21 = icmp eq i32 %20, 0, !dbg !3190
  br i1 %21, label %22, label %60, !dbg !3191

; <label>:22:                                     ; preds = %16
  %23 = load i64, i64* %2, align 8, !dbg !3192, !tbaa !836
  %24 = trunc i64 %23 to i32, !dbg !3192
  %25 = load i64, i64* %3, align 8, !dbg !3194, !tbaa !836
  %26 = trunc i64 %25 to i32, !dbg !3194
  %27 = icmp slt i32 %24, 0, !dbg !3198
  br i1 %27, label %55, label %28, !dbg !3199

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !3200, !tbaa !989
  %30 = icmp sgt i32 %29, %24, !dbg !3201
  %31 = icmp sgt i32 %26, -1, !dbg !3202
  %32 = and i1 %31, %30, !dbg !3203
  %33 = icmp sgt i32 %29, %26, !dbg !3204
  %34 = and i1 %33, %32, !dbg !3203
  br i1 %34, label %35, label %55, !dbg !3203

; <label>:35:                                     ; preds = %28
  %36 = icmp eq i32 %24, %26, !dbg !3205
  br i1 %36, label %56, label %37, !dbg !3206

; <label>:37:                                     ; preds = %35
  %38 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !3207, !tbaa !1014
  %39 = shl i64 %23, 32, !dbg !3208
  %40 = ashr exact i64 %39, 32, !dbg !3208
  %41 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %38, i64 %40, !dbg !3208
  %42 = bitcast %struct.redisDb* %41 to <2 x i64>*, !dbg !3208
  %43 = load <2 x i64>, <2 x i64>* %42, align 8, !dbg !3208
  %44 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %38, i64 %40, i32 6, !dbg !3208
  %45 = load i64, i64* %44, align 8, !dbg !3208
  %46 = shl i64 %25, 32, !dbg !3211
  %47 = ashr exact i64 %46, 32, !dbg !3211
  %48 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %38, i64 %47, !dbg !3211
  %49 = bitcast %struct.redisDb* %48 to <2 x i64>*, !dbg !3213
  %50 = load <2 x i64>, <2 x i64>* %49, align 8, !dbg !3213, !tbaa !1116
  %51 = bitcast %struct.redisDb* %41 to <2 x i64>*, !dbg !3214
  store <2 x i64> %50, <2 x i64>* %51, align 8, !dbg !3214, !tbaa !1116
  %52 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %38, i64 %47, i32 6, !dbg !3215
  %53 = load i64, i64* %52, align 8, !dbg !3215, !tbaa !3156
  store i64 %53, i64* %44, align 8, !dbg !3216, !tbaa !3156
  %54 = bitcast %struct.redisDb* %48 to <2 x i64>*, !dbg !3217
  store <2 x i64> %43, <2 x i64>* %54, align 8, !dbg !3217, !tbaa !1116
  store i64 %45, i64* %52, align 8, !dbg !3218, !tbaa !3156
  call void @scanDatabaseForReadyLists(%struct.redisDb* %41) #7, !dbg !3219
  call void @scanDatabaseForReadyLists(%struct.redisDb* %48) #7, !dbg !3220
  br label %56

; <label>:55:                                     ; preds = %28, %22
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !3221
  br label %60, !dbg !3223

; <label>:56:                                     ; preds = %37, %35
  %57 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3224, !tbaa !1161
  %58 = add nsw i64 %57, 1, !dbg !3224
  store i64 %58, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3224, !tbaa !1161
  %59 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !3226, !tbaa !1163
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %59) #7, !dbg !3227
  br label %60, !dbg !3228

; <label>:60:                                     ; preds = %16, %9, %56, %55, %8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !3228
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8, !dbg !3228
  ret void, !dbg !3228
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictAddOrFind(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @rememberSlaveKeyWithExpire(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @propagateExpire(%struct.redisDb* nocapture readonly, %struct.redisObject*, i32) local_unnamed_addr #0 !dbg !3229 {
  %4 = alloca [2 x %struct.redisObject*], align 16
  %5 = bitcast [2 x %struct.redisObject*]* %4 to i8*, !dbg !3241
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #8, !dbg !3241
  %6 = icmp eq i32 %2, 0, !dbg !3243
  %7 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 38), align 8, !dbg !3244
  %8 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 37), align 8, !dbg !3245
  %9 = select i1 %6, %struct.redisObject* %8, %struct.redisObject* %7, !dbg !3243
  %10 = getelementptr inbounds [2 x %struct.redisObject*], [2 x %struct.redisObject*]* %4, i64 0, i64 0, !dbg !3246
  store %struct.redisObject* %9, %struct.redisObject** %10, align 16, !dbg !3247, !tbaa !1116
  %11 = getelementptr inbounds [2 x %struct.redisObject*], [2 x %struct.redisObject*]* %4, i64 0, i64 1, !dbg !3248
  store %struct.redisObject* %1, %struct.redisObject** %11, align 8, !dbg !3249, !tbaa !1116
  tail call void @incrRefCount(%struct.redisObject* %9) #7, !dbg !3250
  tail call void @incrRefCount(%struct.redisObject* %1) #7, !dbg !3251
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !3252, !tbaa !3254
  %13 = icmp eq i32 %12, 0, !dbg !3255
  br i1 %13, label %14, label %16, !dbg !3256

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 5, !dbg !3257
  br label %20, !dbg !3256

; <label>:16:                                     ; preds = %3
  %17 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 56), align 8, !dbg !3258, !tbaa !3259
  %18 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 5, !dbg !3260
  %19 = load i32, i32* %18, align 8, !dbg !3260, !tbaa !332
  call void @feedAppendOnlyFile(%struct.redisCommand* %17, i32 %19, %struct.redisObject** nonnull %10, i32 2) #7, !dbg !3261
  br label %20, !dbg !3261

; <label>:20:                                     ; preds = %14, %16
  %21 = phi i32* [ %15, %14 ], [ %18, %16 ], !dbg !3257
  %22 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !3262, !tbaa !3263
  %23 = load i32, i32* %21, align 8, !dbg !3257, !tbaa !332
  call void @replicationFeedSlaves(%struct.list* %22, i32 %23, %struct.redisObject** nonnull %10, i32 2) #7, !dbg !3264
  %24 = load %struct.redisObject*, %struct.redisObject** %10, align 16, !dbg !3265, !tbaa !1116
  call void @decrRefCount(%struct.redisObject* %24) #7, !dbg !3266
  %25 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !3267, !tbaa !1116
  call void @decrRefCount(%struct.redisObject* %25) #7, !dbg !3268
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #8, !dbg !3269
  ret void, !dbg !3269
}

; Function Attrs: noredzone
declare dso_local void @feedAppendOnlyFile(%struct.redisCommand*, i32, %struct.redisObject**, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @replicationFeedSlaves(%struct.list*, i32, %struct.redisObject**, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @mstime() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32* @getKeysUsingCommandTable(%struct.redisCommand* nocapture readonly, %struct.redisObject** nocapture readnone, i32, i32* nocapture) local_unnamed_addr #0 !dbg !3270 {
  %5 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %0, i64 0, i32 6, !dbg !3285
  %6 = load i32, i32* %5, align 8, !dbg !3285, !tbaa !3287
  %7 = icmp eq i32 %6, 0, !dbg !3288
  br i1 %7, label %47, label %8, !dbg !3289

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %0, i64 0, i32 7, !dbg !3290
  %10 = load i32, i32* %9, align 4, !dbg !3290, !tbaa !3291
  %11 = icmp slt i32 %10, 0, !dbg !3293
  %12 = select i1 %11, i32 %2, i32 0, !dbg !3295
  %13 = add nsw i32 %12, %10, !dbg !3295
  %14 = sub i32 1, %6, !dbg !3296
  %15 = add i32 %14, %13, !dbg !3297
  %16 = sext i32 %15 to i64, !dbg !3298
  %17 = shl nsw i64 %16, 2, !dbg !3299
  %18 = tail call i8* @zmalloc(i64 %17) #7, !dbg !3300
  %19 = bitcast i8* %18 to i32*, !dbg !3300
  %20 = load i32, i32* %5, align 8, !dbg !3302, !tbaa !3287
  %21 = icmp sgt i32 %20, %13, !dbg !3305
  br i1 %21, label %47, label %22, !dbg !3307

; <label>:22:                                     ; preds = %8
  %23 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %0, i64 0, i32 8
  br label %24, !dbg !3307

; <label>:24:                                     ; preds = %22, %39
  %25 = phi i64 [ 0, %22 ], [ %40, %39 ]
  %26 = phi i32 [ %20, %22 ], [ %43, %39 ]
  %27 = icmp slt i32 %26, %2, !dbg !3308
  br i1 %27, label %39, label %28, !dbg !3311

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %0, i64 0, i32 4, !dbg !3312
  %30 = load i32, i32* %29, align 8, !dbg !3312, !tbaa !297
  %31 = and i32 %30, 8, !dbg !3315
  %32 = icmp eq i32 %31, 0, !dbg !3315
  br i1 %32, label %33, label %37, !dbg !3316

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %0, i64 0, i32 2, !dbg !3317
  %35 = load i32, i32* %34, align 8, !dbg !3317, !tbaa !3318
  %36 = icmp slt i32 %35, 0, !dbg !3319
  br i1 %36, label %37, label %38, !dbg !3320

; <label>:37:                                     ; preds = %28, %33
  tail call void @zfree(i8* %18) #7, !dbg !3321
  br label %47, !dbg !3323

; <label>:38:                                     ; preds = %33
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 1220, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.36, i64 0, i64 0)) #7, !dbg !3324
  tail call void @_exit(i32 1) #10, !dbg !3324
  unreachable, !dbg !3324

; <label>:39:                                     ; preds = %24
  %40 = add nuw i64 %25, 1, !dbg !3326
  %41 = getelementptr inbounds i32, i32* %19, i64 %25, !dbg !3327
  store i32 %26, i32* %41, align 4, !dbg !3328, !tbaa !832
  %42 = load i32, i32* %23, align 8, !dbg !3329, !tbaa !3330
  %43 = add nsw i32 %42, %26, !dbg !3331
  %44 = icmp sgt i32 %43, %13, !dbg !3305
  br i1 %44, label %45, label %24, !dbg !3307, !llvm.loop !3332

; <label>:45:                                     ; preds = %39
  %46 = trunc i64 %40 to i32, !dbg !3334
  br label %47, !dbg !3334

; <label>:47:                                     ; preds = %8, %45, %4, %37
  %48 = phi i32 [ 0, %37 ], [ 0, %4 ], [ 0, %8 ], [ %46, %45 ]
  %49 = phi i32* [ null, %37 ], [ null, %4 ], [ %19, %8 ], [ %19, %45 ], !dbg !3335
  store i32 %48, i32* %3, align 4, !dbg !3336, !tbaa !832
  ret i32* %49, !dbg !3338
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32* @getKeysFromCommand(%struct.redisCommand*, %struct.redisObject**, i32, i32*) local_unnamed_addr #0 !dbg !3339 {
  %5 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %0, i64 0, i32 4, !dbg !3349
  %6 = load i32, i32* %5, align 8, !dbg !3349, !tbaa !297
  %7 = and i32 %6, 16384, !dbg !3351
  %8 = icmp eq i32 %7, 0, !dbg !3351
  br i1 %8, label %11, label %9, !dbg !3352

; <label>:9:                                      ; preds = %4
  %10 = tail call i32* @moduleGetCommandKeysViaAPI(%struct.redisCommand* nonnull %0, %struct.redisObject** %1, i32 %2, i32* %3) #7, !dbg !3353
  br label %22, !dbg !3355

; <label>:11:                                     ; preds = %4
  %12 = and i32 %6, 8, !dbg !3356
  %13 = icmp eq i32 %12, 0, !dbg !3356
  br i1 %13, label %14, label %20, !dbg !3358

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %0, i64 0, i32 5, !dbg !3359
  %16 = load i32* (%struct.redisCommand*, %struct.redisObject**, i32, i32*)*, i32* (%struct.redisCommand*, %struct.redisObject**, i32, i32*)** %15, align 8, !dbg !3359, !tbaa !3360
  %17 = icmp eq i32* (%struct.redisCommand*, %struct.redisObject**, i32, i32*)* %16, null, !dbg !3361
  br i1 %17, label %20, label %18, !dbg !3362

; <label>:18:                                     ; preds = %14
  %19 = tail call i32* %16(%struct.redisCommand* nonnull %0, %struct.redisObject** %1, i32 %2, i32* %3) #7, !dbg !3363
  br label %22, !dbg !3365

; <label>:20:                                     ; preds = %14, %11
  %21 = tail call i32* @getKeysUsingCommandTable(%struct.redisCommand* nonnull %0, %struct.redisObject** undef, i32 %2, i32* %3) #9, !dbg !3366
  br label %22, !dbg !3368

; <label>:22:                                     ; preds = %20, %18, %9
  %23 = phi i32* [ %10, %9 ], [ %21, %20 ], [ %19, %18 ], !dbg !3369
  ret i32* %23, !dbg !3370
}

; Function Attrs: noredzone
declare dso_local i32* @moduleGetCommandKeysViaAPI(%struct.redisCommand*, %struct.redisObject**, i32, i32*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @getKeysFreeResult(i32*) local_unnamed_addr #0 !dbg !3371 {
  %2 = bitcast i32* %0 to i8*, !dbg !3377
  tail call void @zfree(i8* %2) #7, !dbg !3378
  ret void, !dbg !3379
}

; Function Attrs: noredzone nounwind
define dso_local i32* @zunionInterGetKeys(%struct.redisCommand* nocapture readnone, %struct.redisObject** nocapture readonly, i32, i32* nocapture) local_unnamed_addr #0 !dbg !3380 {
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 2, !dbg !3393
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !3393, !tbaa !1116
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %6, i64 0, i32 2, !dbg !3394
  %8 = load i8*, i8** %7, align 8, !dbg !3394, !tbaa !215
  %9 = tail call i32 @atoi(i8* %8) #7, !dbg !3395
  %10 = icmp slt i32 %9, 1, !dbg !3397
  %11 = add nsw i32 %2, -3, !dbg !3399
  %12 = icmp sgt i32 %9, %11, !dbg !3400
  %13 = or i1 %10, %12, !dbg !3401
  br i1 %13, label %98, label %14, !dbg !3401

; <label>:14:                                     ; preds = %4
  %15 = add nsw i32 %9, 1, !dbg !3402
  %16 = sext i32 %15 to i64, !dbg !3403
  %17 = shl nsw i64 %16, 2, !dbg !3404
  %18 = tail call i8* @zmalloc(i64 %17) #7, !dbg !3405
  %19 = bitcast i8* %18 to i32*, !dbg !3405
  %20 = zext i32 %9 to i64
  %21 = icmp ult i32 %9, 8, !dbg !3408
  br i1 %21, label %86, label %22, !dbg !3408

; <label>:22:                                     ; preds = %14
  %23 = and i64 %20, 4294967288, !dbg !3408
  %24 = add nsw i64 %23, -8, !dbg !3408
  %25 = lshr exact i64 %24, 3, !dbg !3408
  %26 = add nuw nsw i64 %25, 1, !dbg !3408
  %27 = and i64 %26, 3, !dbg !3408
  %28 = icmp ult i64 %24, 24, !dbg !3408
  br i1 %28, label %66, label %29, !dbg !3408

; <label>:29:                                     ; preds = %22
  %30 = sub nsw i64 %26, %27, !dbg !3408
  br label %31, !dbg !3408

; <label>:31:                                     ; preds = %31, %29
  %32 = phi i64 [ 0, %29 ], [ %62, %31 ], !dbg !3411
  %33 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %29 ], [ %63, %31 ], !dbg !3412
  %34 = phi i64 [ %30, %29 ], [ %64, %31 ]
  %35 = getelementptr inbounds i32, i32* %19, i64 %32, !dbg !3413
  %36 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>, !dbg !3412
  %37 = add <4 x i32> %33, <i32 7, i32 7, i32 7, i32 7>, !dbg !3412
  %38 = bitcast i32* %35 to <4 x i32>*, !dbg !3412
  store <4 x i32> %36, <4 x i32>* %38, align 4, !dbg !3412, !tbaa !832
  %39 = getelementptr inbounds i32, i32* %35, i64 4, !dbg !3412
  %40 = bitcast i32* %39 to <4 x i32>*, !dbg !3412
  store <4 x i32> %37, <4 x i32>* %40, align 4, !dbg !3412, !tbaa !832
  %41 = or i64 %32, 8, !dbg !3411
  %42 = getelementptr inbounds i32, i32* %19, i64 %41, !dbg !3413
  %43 = add <4 x i32> %33, <i32 11, i32 11, i32 11, i32 11>, !dbg !3412
  %44 = add <4 x i32> %33, <i32 15, i32 15, i32 15, i32 15>, !dbg !3412
  %45 = bitcast i32* %42 to <4 x i32>*, !dbg !3412
  store <4 x i32> %43, <4 x i32>* %45, align 4, !dbg !3412, !tbaa !832
  %46 = getelementptr inbounds i32, i32* %42, i64 4, !dbg !3412
  %47 = bitcast i32* %46 to <4 x i32>*, !dbg !3412
  store <4 x i32> %44, <4 x i32>* %47, align 4, !dbg !3412, !tbaa !832
  %48 = or i64 %32, 16, !dbg !3411
  %49 = getelementptr inbounds i32, i32* %19, i64 %48, !dbg !3413
  %50 = add <4 x i32> %33, <i32 19, i32 19, i32 19, i32 19>, !dbg !3412
  %51 = add <4 x i32> %33, <i32 23, i32 23, i32 23, i32 23>, !dbg !3412
  %52 = bitcast i32* %49 to <4 x i32>*, !dbg !3412
  store <4 x i32> %50, <4 x i32>* %52, align 4, !dbg !3412, !tbaa !832
  %53 = getelementptr inbounds i32, i32* %49, i64 4, !dbg !3412
  %54 = bitcast i32* %53 to <4 x i32>*, !dbg !3412
  store <4 x i32> %51, <4 x i32>* %54, align 4, !dbg !3412, !tbaa !832
  %55 = or i64 %32, 24, !dbg !3411
  %56 = getelementptr inbounds i32, i32* %19, i64 %55, !dbg !3413
  %57 = add <4 x i32> %33, <i32 27, i32 27, i32 27, i32 27>, !dbg !3412
  %58 = add <4 x i32> %33, <i32 31, i32 31, i32 31, i32 31>, !dbg !3412
  %59 = bitcast i32* %56 to <4 x i32>*, !dbg !3412
  store <4 x i32> %57, <4 x i32>* %59, align 4, !dbg !3412, !tbaa !832
  %60 = getelementptr inbounds i32, i32* %56, i64 4, !dbg !3412
  %61 = bitcast i32* %60 to <4 x i32>*, !dbg !3412
  store <4 x i32> %58, <4 x i32>* %61, align 4, !dbg !3412, !tbaa !832
  %62 = add i64 %32, 32, !dbg !3411
  %63 = add <4 x i32> %33, <i32 32, i32 32, i32 32, i32 32>, !dbg !3412
  %64 = add i64 %34, -4, !dbg !3411
  %65 = icmp eq i64 %64, 0, !dbg !3411
  br i1 %65, label %66, label %31, !dbg !3411, !llvm.loop !3414

; <label>:66:                                     ; preds = %31, %22
  %67 = phi i64 [ 0, %22 ], [ %62, %31 ]
  %68 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %22 ], [ %63, %31 ]
  %69 = icmp eq i64 %27, 0, !dbg !3411
  br i1 %69, label %84, label %70, !dbg !3411

; <label>:70:                                     ; preds = %66, %70
  %71 = phi i64 [ %80, %70 ], [ %67, %66 ], !dbg !3411
  %72 = phi <4 x i32> [ %81, %70 ], [ %68, %66 ], !dbg !3412
  %73 = phi i64 [ %82, %70 ], [ %27, %66 ]
  %74 = getelementptr inbounds i32, i32* %19, i64 %71, !dbg !3413
  %75 = add <4 x i32> %72, <i32 3, i32 3, i32 3, i32 3>, !dbg !3412
  %76 = add <4 x i32> %72, <i32 7, i32 7, i32 7, i32 7>, !dbg !3412
  %77 = bitcast i32* %74 to <4 x i32>*, !dbg !3412
  store <4 x i32> %75, <4 x i32>* %77, align 4, !dbg !3412, !tbaa !832
  %78 = getelementptr inbounds i32, i32* %74, i64 4, !dbg !3412
  %79 = bitcast i32* %78 to <4 x i32>*, !dbg !3412
  store <4 x i32> %76, <4 x i32>* %79, align 4, !dbg !3412, !tbaa !832
  %80 = add i64 %71, 8, !dbg !3411
  %81 = add <4 x i32> %72, <i32 8, i32 8, i32 8, i32 8>, !dbg !3412
  %82 = add i64 %73, -1, !dbg !3411
  %83 = icmp eq i64 %82, 0, !dbg !3411
  br i1 %83, label %84, label %70, !dbg !3411, !llvm.loop !3418

; <label>:84:                                     ; preds = %70, %66
  %85 = icmp eq i64 %23, %20
  br i1 %85, label %95, label %86, !dbg !3408

; <label>:86:                                     ; preds = %84, %14
  %87 = phi i64 [ 0, %14 ], [ %23, %84 ]
  br label %88, !dbg !3413

; <label>:88:                                     ; preds = %86, %88
  %89 = phi i64 [ %93, %88 ], [ %87, %86 ]
  %90 = getelementptr inbounds i32, i32* %19, i64 %89, !dbg !3413
  %91 = trunc i64 %89 to i32, !dbg !3412
  %92 = add i32 %91, 3, !dbg !3412
  store i32 %92, i32* %90, align 4, !dbg !3412, !tbaa !832
  %93 = add nuw nsw i64 %89, 1, !dbg !3411
  %94 = icmp eq i64 %93, %20, !dbg !3420
  br i1 %94, label %95, label %88, !dbg !3415, !llvm.loop !3421

; <label>:95:                                     ; preds = %88, %84
  %96 = sext i32 %9 to i64, !dbg !3423
  %97 = getelementptr inbounds i32, i32* %19, i64 %96, !dbg !3423
  store i32 1, i32* %97, align 4, !dbg !3424, !tbaa !832
  br label %98, !dbg !3425

; <label>:98:                                     ; preds = %4, %95
  %99 = phi i32 [ %15, %95 ], [ 0, %4 ]
  %100 = phi i32* [ %19, %95 ], [ null, %4 ], !dbg !3426
  store i32 %99, i32* %3, align 4, !dbg !3427, !tbaa !832
  ret i32* %100, !dbg !3429
}

; Function Attrs: noredzone
declare dso_local i32 @atoi(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32* @evalGetKeys(%struct.redisCommand* nocapture readnone, %struct.redisObject** nocapture readonly, i32, i32* nocapture) local_unnamed_addr #0 !dbg !3430 {
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 2, !dbg !3443
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !3443, !tbaa !1116
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %6, i64 0, i32 2, !dbg !3444
  %8 = load i8*, i8** %7, align 8, !dbg !3444, !tbaa !215
  %9 = tail call i32 @atoi(i8* %8) #7, !dbg !3445
  %10 = icmp slt i32 %9, 1, !dbg !3447
  %11 = add nsw i32 %2, -3, !dbg !3449
  %12 = icmp sgt i32 %9, %11, !dbg !3450
  %13 = or i1 %10, %12, !dbg !3451
  br i1 %13, label %14, label %15, !dbg !3451

; <label>:14:                                     ; preds = %4
  store i32 0, i32* %3, align 4, !dbg !3452, !tbaa !832
  br label %95, !dbg !3454

; <label>:15:                                     ; preds = %4
  %16 = sext i32 %9 to i64, !dbg !3455
  %17 = shl nsw i64 %16, 2, !dbg !3456
  %18 = tail call i8* @zmalloc(i64 %17) #7, !dbg !3457
  %19 = bitcast i8* %18 to i32*, !dbg !3457
  store i32 %9, i32* %3, align 4, !dbg !3459, !tbaa !832
  %20 = zext i32 %9 to i64
  %21 = icmp ult i32 %9, 8, !dbg !3461
  br i1 %21, label %86, label %22, !dbg !3461

; <label>:22:                                     ; preds = %15
  %23 = and i64 %20, 4294967288, !dbg !3461
  %24 = add nsw i64 %23, -8, !dbg !3461
  %25 = lshr exact i64 %24, 3, !dbg !3461
  %26 = add nuw nsw i64 %25, 1, !dbg !3461
  %27 = and i64 %26, 3, !dbg !3461
  %28 = icmp ult i64 %24, 24, !dbg !3461
  br i1 %28, label %66, label %29, !dbg !3461

; <label>:29:                                     ; preds = %22
  %30 = sub nsw i64 %26, %27, !dbg !3461
  br label %31, !dbg !3461

; <label>:31:                                     ; preds = %31, %29
  %32 = phi i64 [ 0, %29 ], [ %62, %31 ], !dbg !3464
  %33 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %29 ], [ %63, %31 ], !dbg !3465
  %34 = phi i64 [ %30, %29 ], [ %64, %31 ]
  %35 = getelementptr inbounds i32, i32* %19, i64 %32, !dbg !3466
  %36 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>, !dbg !3465
  %37 = add <4 x i32> %33, <i32 7, i32 7, i32 7, i32 7>, !dbg !3465
  %38 = bitcast i32* %35 to <4 x i32>*, !dbg !3465
  store <4 x i32> %36, <4 x i32>* %38, align 4, !dbg !3465, !tbaa !832
  %39 = getelementptr inbounds i32, i32* %35, i64 4, !dbg !3465
  %40 = bitcast i32* %39 to <4 x i32>*, !dbg !3465
  store <4 x i32> %37, <4 x i32>* %40, align 4, !dbg !3465, !tbaa !832
  %41 = or i64 %32, 8, !dbg !3464
  %42 = getelementptr inbounds i32, i32* %19, i64 %41, !dbg !3466
  %43 = add <4 x i32> %33, <i32 11, i32 11, i32 11, i32 11>, !dbg !3465
  %44 = add <4 x i32> %33, <i32 15, i32 15, i32 15, i32 15>, !dbg !3465
  %45 = bitcast i32* %42 to <4 x i32>*, !dbg !3465
  store <4 x i32> %43, <4 x i32>* %45, align 4, !dbg !3465, !tbaa !832
  %46 = getelementptr inbounds i32, i32* %42, i64 4, !dbg !3465
  %47 = bitcast i32* %46 to <4 x i32>*, !dbg !3465
  store <4 x i32> %44, <4 x i32>* %47, align 4, !dbg !3465, !tbaa !832
  %48 = or i64 %32, 16, !dbg !3464
  %49 = getelementptr inbounds i32, i32* %19, i64 %48, !dbg !3466
  %50 = add <4 x i32> %33, <i32 19, i32 19, i32 19, i32 19>, !dbg !3465
  %51 = add <4 x i32> %33, <i32 23, i32 23, i32 23, i32 23>, !dbg !3465
  %52 = bitcast i32* %49 to <4 x i32>*, !dbg !3465
  store <4 x i32> %50, <4 x i32>* %52, align 4, !dbg !3465, !tbaa !832
  %53 = getelementptr inbounds i32, i32* %49, i64 4, !dbg !3465
  %54 = bitcast i32* %53 to <4 x i32>*, !dbg !3465
  store <4 x i32> %51, <4 x i32>* %54, align 4, !dbg !3465, !tbaa !832
  %55 = or i64 %32, 24, !dbg !3464
  %56 = getelementptr inbounds i32, i32* %19, i64 %55, !dbg !3466
  %57 = add <4 x i32> %33, <i32 27, i32 27, i32 27, i32 27>, !dbg !3465
  %58 = add <4 x i32> %33, <i32 31, i32 31, i32 31, i32 31>, !dbg !3465
  %59 = bitcast i32* %56 to <4 x i32>*, !dbg !3465
  store <4 x i32> %57, <4 x i32>* %59, align 4, !dbg !3465, !tbaa !832
  %60 = getelementptr inbounds i32, i32* %56, i64 4, !dbg !3465
  %61 = bitcast i32* %60 to <4 x i32>*, !dbg !3465
  store <4 x i32> %58, <4 x i32>* %61, align 4, !dbg !3465, !tbaa !832
  %62 = add i64 %32, 32, !dbg !3464
  %63 = add <4 x i32> %33, <i32 32, i32 32, i32 32, i32 32>, !dbg !3465
  %64 = add i64 %34, -4, !dbg !3464
  %65 = icmp eq i64 %64, 0, !dbg !3464
  br i1 %65, label %66, label %31, !dbg !3464, !llvm.loop !3467

; <label>:66:                                     ; preds = %31, %22
  %67 = phi i64 [ 0, %22 ], [ %62, %31 ]
  %68 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %22 ], [ %63, %31 ]
  %69 = icmp eq i64 %27, 0, !dbg !3464
  br i1 %69, label %84, label %70, !dbg !3464

; <label>:70:                                     ; preds = %66, %70
  %71 = phi i64 [ %80, %70 ], [ %67, %66 ], !dbg !3464
  %72 = phi <4 x i32> [ %81, %70 ], [ %68, %66 ], !dbg !3465
  %73 = phi i64 [ %82, %70 ], [ %27, %66 ]
  %74 = getelementptr inbounds i32, i32* %19, i64 %71, !dbg !3466
  %75 = add <4 x i32> %72, <i32 3, i32 3, i32 3, i32 3>, !dbg !3465
  %76 = add <4 x i32> %72, <i32 7, i32 7, i32 7, i32 7>, !dbg !3465
  %77 = bitcast i32* %74 to <4 x i32>*, !dbg !3465
  store <4 x i32> %75, <4 x i32>* %77, align 4, !dbg !3465, !tbaa !832
  %78 = getelementptr inbounds i32, i32* %74, i64 4, !dbg !3465
  %79 = bitcast i32* %78 to <4 x i32>*, !dbg !3465
  store <4 x i32> %76, <4 x i32>* %79, align 4, !dbg !3465, !tbaa !832
  %80 = add i64 %71, 8, !dbg !3464
  %81 = add <4 x i32> %72, <i32 8, i32 8, i32 8, i32 8>, !dbg !3465
  %82 = add i64 %73, -1, !dbg !3464
  %83 = icmp eq i64 %82, 0, !dbg !3464
  br i1 %83, label %84, label %70, !dbg !3464, !llvm.loop !3470

; <label>:84:                                     ; preds = %70, %66
  %85 = icmp eq i64 %23, %20
  br i1 %85, label %95, label %86, !dbg !3461

; <label>:86:                                     ; preds = %84, %15
  %87 = phi i64 [ 0, %15 ], [ %23, %84 ]
  br label %88, !dbg !3466

; <label>:88:                                     ; preds = %86, %88
  %89 = phi i64 [ %93, %88 ], [ %87, %86 ]
  %90 = getelementptr inbounds i32, i32* %19, i64 %89, !dbg !3466
  %91 = trunc i64 %89 to i32, !dbg !3465
  %92 = add i32 %91, 3, !dbg !3465
  store i32 %92, i32* %90, align 4, !dbg !3465, !tbaa !832
  %93 = add nuw nsw i64 %89, 1, !dbg !3464
  %94 = icmp eq i64 %93, %20, !dbg !3471
  br i1 %94, label %95, label %88, !dbg !3468, !llvm.loop !3472

; <label>:95:                                     ; preds = %88, %84, %14
  %96 = phi i32* [ null, %14 ], [ %19, %84 ], [ %19, %88 ], !dbg !3473
  ret i32* %96, !dbg !3474
}

; Function Attrs: noredzone nounwind
define dso_local i32* @sortGetKeys(%struct.redisCommand* nocapture readnone, %struct.redisObject** nocapture readonly, i32, i32* nocapture) local_unnamed_addr #0 !dbg !3475 {
  %5 = alloca [4 x %struct.anon.9], align 16
  %6 = tail call i8* @zmalloc(i64 8) #7, !dbg !3498
  %7 = bitcast i8* %6 to i32*, !dbg !3498
  store i32 1, i32* %7, align 4, !dbg !3500, !tbaa !832
  %8 = bitcast [4 x %struct.anon.9]* %5 to i8*, !dbg !3501
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %8) #8, !dbg !3501
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 64, i1 false), !dbg !3502
  %9 = getelementptr inbounds [4 x %struct.anon.9], [4 x %struct.anon.9]* %5, i64 0, i64 0, i32 0, !dbg !3502
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), i8** %9, align 16, !dbg !3502
  %10 = getelementptr inbounds [4 x %struct.anon.9], [4 x %struct.anon.9]* %5, i64 0, i64 0, i32 1, !dbg !3502
  store i32 2, i32* %10, align 8, !dbg !3502
  %11 = getelementptr inbounds [4 x %struct.anon.9], [4 x %struct.anon.9]* %5, i64 0, i64 1, i32 0, !dbg !3502
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i8** %11, align 16, !dbg !3502
  %12 = getelementptr inbounds [4 x %struct.anon.9], [4 x %struct.anon.9]* %5, i64 0, i64 1, i32 1, !dbg !3502
  store i32 1, i32* %12, align 8, !dbg !3502
  %13 = getelementptr inbounds [4 x %struct.anon.9], [4 x %struct.anon.9]* %5, i64 0, i64 2, i32 0, !dbg !3502
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0), i8** %13, align 16, !dbg !3502
  %14 = getelementptr inbounds [4 x %struct.anon.9], [4 x %struct.anon.9]* %5, i64 0, i64 2, i32 1, !dbg !3502
  store i32 1, i32* %14, align 8, !dbg !3502
  %15 = icmp sgt i32 %2, 2, !dbg !3504
  br i1 %15, label %16, label %53, !dbg !3507

; <label>:16:                                     ; preds = %4
  %17 = getelementptr inbounds i8, i8* %6, i64 4
  %18 = bitcast i8* %17 to i32*
  br label %19, !dbg !3507

; <label>:19:                                     ; preds = %48, %16
  %20 = phi i32 [ 0, %16 ], [ %50, %48 ]
  %21 = phi i32 [ 2, %16 ], [ %51, %48 ]
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %22
  %24 = load %struct.redisObject*, %struct.redisObject** %23, align 8, !tbaa !1116
  %25 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %24, i64 0, i32 2
  %26 = load i8*, i8** %25, align 8, !tbaa !215
  %27 = add nsw i32 %21, 1
  %28 = icmp sge i32 %27, %2
  br label %29, !dbg !3509

; <label>:29:                                     ; preds = %19, %43
  %30 = phi i64 [ 0, %19 ], [ %44, %43 ]
  %31 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %19 ], [ %46, %43 ]
  %32 = tail call i32 @strcasecmp(i8* %26, i8* nonnull %31) #11, !dbg !3512
  %33 = icmp eq i32 %32, 0, !dbg !3512
  br i1 %33, label %34, label %38, !dbg !3516

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds [4 x %struct.anon.9], [4 x %struct.anon.9]* %5, i64 0, i64 %30, i32 1, !dbg !3517
  %36 = load i32, i32* %35, align 8, !dbg !3517, !tbaa !3519
  %37 = add nsw i32 %36, %21, !dbg !3521
  br label %48, !dbg !3522

; <label>:38:                                     ; preds = %29
  %39 = tail call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)) #11, !dbg !3523
  %40 = icmp ne i32 %39, 0, !dbg !3523
  %41 = or i1 %40, %28, !dbg !3525
  br i1 %41, label %43, label %42, !dbg !3525

; <label>:42:                                     ; preds = %38
  store i32 %27, i32* %18, align 4, !dbg !3526, !tbaa !832
  br label %48, !dbg !3528

; <label>:43:                                     ; preds = %38
  %44 = add nuw i64 %30, 1, !dbg !3529
  %45 = getelementptr inbounds [4 x %struct.anon.9], [4 x %struct.anon.9]* %5, i64 0, i64 %44, i32 0, !dbg !3530
  %46 = load i8*, i8** %45, align 16, !dbg !3530, !tbaa !3531
  %47 = icmp eq i8* %46, null, !dbg !3532
  br i1 %47, label %48, label %29, !dbg !3509, !llvm.loop !3533

; <label>:48:                                     ; preds = %43, %34, %42
  %49 = phi i32 [ %21, %42 ], [ %37, %34 ], [ %21, %43 ], !dbg !3535
  %50 = phi i32 [ 1, %42 ], [ %20, %34 ], [ %20, %43 ], !dbg !3536
  %51 = add nsw i32 %49, 1, !dbg !3537
  %52 = icmp slt i32 %51, %2, !dbg !3504
  br i1 %52, label %19, label %53, !dbg !3507, !llvm.loop !3538

; <label>:53:                                     ; preds = %48, %4
  %54 = phi i32 [ 0, %4 ], [ %50, %48 ], !dbg !3540
  %55 = add nsw i32 %54, 1, !dbg !3541
  store i32 %55, i32* %3, align 4, !dbg !3542, !tbaa !832
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %8) #8, !dbg !3543
  ret i32* %7, !dbg !3544
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #2

; Function Attrs: noredzone nounwind
define dso_local i32* @migrateGetKeys(%struct.redisCommand* nocapture readnone, %struct.redisObject** nocapture readonly, i32, i32* nocapture) local_unnamed_addr #0 !dbg !3545 {
  %5 = icmp sgt i32 %2, 6, !dbg !3561
  br i1 %5, label %6, label %56, !dbg !3563

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 3
  %8 = sext i32 %2 to i64, !dbg !3565
  br label %9, !dbg !3565

; <label>:9:                                      ; preds = %6, %53
  %10 = phi i64 [ 6, %6 ], [ %54, %53 ]
  %11 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %10, !dbg !3568
  %12 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !3568, !tbaa !1116
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %12, i64 0, i32 2, !dbg !3572
  %14 = load i8*, i8** %13, align 8, !dbg !3572, !tbaa !215
  %15 = tail call i32 @strcasecmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0)) #11, !dbg !3573
  %16 = icmp eq i32 %15, 0, !dbg !3573
  br i1 %16, label %17, label %53, !dbg !3574

; <label>:17:                                     ; preds = %9
  %18 = load %struct.redisObject*, %struct.redisObject** %7, align 8, !dbg !3575, !tbaa !1116
  %19 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 2, !dbg !3576
  %20 = load i8*, i8** %19, align 8, !dbg !3576, !tbaa !215
  %21 = getelementptr inbounds i8, i8* %20, i64 -1, !dbg !3579
  %22 = load i8, i8* %21, align 1, !dbg !3579, !tbaa !222
  %23 = trunc i8 %22 to i3, !dbg !3581
  switch i3 %23, label %48 [
    i3 0, label %24
    i3 1, label %27
    i3 2, label %31
    i3 3, label %36
    i3 -4, label %41
  ], !dbg !3581

; <label>:24:                                     ; preds = %17
  %25 = lshr i8 %22, 3, !dbg !3582
  %26 = zext i8 %25 to i64, !dbg !3582
  br label %45, !dbg !3583

; <label>:27:                                     ; preds = %17
  %28 = getelementptr inbounds i8, i8* %20, i64 -3, !dbg !3584
  %29 = load i8, i8* %28, align 1, !dbg !3585, !tbaa !222
  %30 = zext i8 %29 to i64, !dbg !3584
  br label %45, !dbg !3586

; <label>:31:                                     ; preds = %17
  %32 = getelementptr inbounds i8, i8* %20, i64 -5, !dbg !3587
  %33 = bitcast i8* %32 to i16*, !dbg !3588
  %34 = load i16, i16* %33, align 1, !dbg !3588, !tbaa !827
  %35 = zext i16 %34 to i64, !dbg !3587
  br label %45, !dbg !3589

; <label>:36:                                     ; preds = %17
  %37 = getelementptr inbounds i8, i8* %20, i64 -9, !dbg !3590
  %38 = bitcast i8* %37 to i32*, !dbg !3591
  %39 = load i32, i32* %38, align 1, !dbg !3591, !tbaa !832
  %40 = zext i32 %39 to i64, !dbg !3590
  br label %45, !dbg !3592

; <label>:41:                                     ; preds = %17
  %42 = getelementptr inbounds i8, i8* %20, i64 -17, !dbg !3593
  %43 = bitcast i8* %42 to i64*, !dbg !3594
  %44 = load i64, i64* %43, align 1, !dbg !3594, !tbaa !836
  br label %45, !dbg !3595

; <label>:45:                                     ; preds = %24, %27, %31, %36, %41
  %46 = phi i64 [ %44, %41 ], [ %40, %36 ], [ %35, %31 ], [ %30, %27 ], [ %26, %24 ], !dbg !3596
  %47 = icmp eq i64 %46, 0, !dbg !3597
  br i1 %47, label %48, label %53, !dbg !3598

; <label>:48:                                     ; preds = %17, %45
  %49 = trunc i64 %10 to i32, !dbg !3581
  %50 = add nuw nsw i32 %49, 1, !dbg !3599
  %51 = sub nsw i32 %2, %50, !dbg !3601
  %52 = zext i32 %50 to i64, !dbg !3602
  br label %56, !dbg !3602

; <label>:53:                                     ; preds = %9, %45
  %54 = add nuw nsw i64 %10, 1, !dbg !3603
  %55 = icmp slt i64 %54, %8, !dbg !3604
  br i1 %55, label %9, label %56, !dbg !3565, !llvm.loop !3605

; <label>:56:                                     ; preds = %53, %48, %4
  %57 = phi i32 [ %51, %48 ], [ 1, %4 ], [ 1, %53 ], !dbg !3607
  %58 = phi i64 [ %52, %48 ], [ 3, %4 ], [ 3, %53 ]
  %59 = sext i32 %57 to i64, !dbg !3608
  %60 = shl nsw i64 %59, 2, !dbg !3609
  %61 = tail call i8* @zmalloc(i64 %60) #7, !dbg !3610
  %62 = bitcast i8* %61 to i32*, !dbg !3610
  %63 = icmp sgt i32 %57, 0, !dbg !3612
  br i1 %63, label %64, label %133, !dbg !3615

; <label>:64:                                     ; preds = %56
  %65 = zext i32 %57 to i64
  %66 = icmp ult i32 %57, 8, !dbg !3616
  br i1 %66, label %124, label %67, !dbg !3616

; <label>:67:                                     ; preds = %64
  %68 = and i64 %65, 4294967288, !dbg !3616
  %69 = insertelement <4 x i64> undef, i64 %58, i32 0, !dbg !3616
  %70 = shufflevector <4 x i64> %69, <4 x i64> undef, <4 x i32> zeroinitializer, !dbg !3616
  %71 = insertelement <4 x i64> undef, i64 %58, i32 0, !dbg !3616
  %72 = shufflevector <4 x i64> %71, <4 x i64> undef, <4 x i32> zeroinitializer, !dbg !3616
  %73 = add nsw i64 %68, -8, !dbg !3616
  %74 = lshr exact i64 %73, 3, !dbg !3616
  %75 = add nuw nsw i64 %74, 1, !dbg !3616
  %76 = and i64 %75, 1, !dbg !3616
  %77 = icmp eq i64 %73, 0, !dbg !3616
  br i1 %77, label %108, label %78, !dbg !3616

; <label>:78:                                     ; preds = %67
  %79 = sub nsw i64 %75, %76, !dbg !3616
  br label %80, !dbg !3616

; <label>:80:                                     ; preds = %80, %78
  %81 = phi i64 [ 0, %78 ], [ %104, %80 ], !dbg !3617
  %82 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %78 ], [ %105, %80 ]
  %83 = phi i64 [ %79, %78 ], [ %106, %80 ]
  %84 = add <4 x i64> %82, <i64 4, i64 4, i64 4, i64 4>
  %85 = add nuw nsw <4 x i64> %82, %70, !dbg !3616
  %86 = add nuw nsw <4 x i64> %84, %72, !dbg !3616
  %87 = getelementptr inbounds i32, i32* %62, i64 %81, !dbg !3618
  %88 = trunc <4 x i64> %85 to <4 x i32>, !dbg !3619
  %89 = trunc <4 x i64> %86 to <4 x i32>, !dbg !3619
  %90 = bitcast i32* %87 to <4 x i32>*, !dbg !3619
  store <4 x i32> %88, <4 x i32>* %90, align 4, !dbg !3619, !tbaa !832
  %91 = getelementptr inbounds i32, i32* %87, i64 4, !dbg !3619
  %92 = bitcast i32* %91 to <4 x i32>*, !dbg !3619
  store <4 x i32> %89, <4 x i32>* %92, align 4, !dbg !3619, !tbaa !832
  %93 = or i64 %81, 8, !dbg !3617
  %94 = add <4 x i64> %82, <i64 8, i64 8, i64 8, i64 8>
  %95 = add <4 x i64> %82, <i64 12, i64 12, i64 12, i64 12>
  %96 = add nuw nsw <4 x i64> %94, %70, !dbg !3616
  %97 = add nuw nsw <4 x i64> %95, %72, !dbg !3616
  %98 = getelementptr inbounds i32, i32* %62, i64 %93, !dbg !3618
  %99 = trunc <4 x i64> %96 to <4 x i32>, !dbg !3619
  %100 = trunc <4 x i64> %97 to <4 x i32>, !dbg !3619
  %101 = bitcast i32* %98 to <4 x i32>*, !dbg !3619
  store <4 x i32> %99, <4 x i32>* %101, align 4, !dbg !3619, !tbaa !832
  %102 = getelementptr inbounds i32, i32* %98, i64 4, !dbg !3619
  %103 = bitcast i32* %102 to <4 x i32>*, !dbg !3619
  store <4 x i32> %100, <4 x i32>* %103, align 4, !dbg !3619, !tbaa !832
  %104 = add i64 %81, 16, !dbg !3617
  %105 = add <4 x i64> %82, <i64 16, i64 16, i64 16, i64 16>
  %106 = add i64 %83, -2, !dbg !3617
  %107 = icmp eq i64 %106, 0, !dbg !3617
  br i1 %107, label %108, label %80, !dbg !3617, !llvm.loop !3620

; <label>:108:                                    ; preds = %80, %67
  %109 = phi i64 [ 0, %67 ], [ %104, %80 ]
  %110 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %67 ], [ %105, %80 ]
  %111 = icmp eq i64 %76, 0, !dbg !3617
  br i1 %111, label %122, label %112, !dbg !3617

; <label>:112:                                    ; preds = %108
  %113 = add <4 x i64> %110, <i64 4, i64 4, i64 4, i64 4>
  %114 = add nuw nsw <4 x i64> %110, %70, !dbg !3616
  %115 = add nuw nsw <4 x i64> %113, %72, !dbg !3616
  %116 = getelementptr inbounds i32, i32* %62, i64 %109, !dbg !3618
  %117 = trunc <4 x i64> %114 to <4 x i32>, !dbg !3619
  %118 = trunc <4 x i64> %115 to <4 x i32>, !dbg !3619
  %119 = bitcast i32* %116 to <4 x i32>*, !dbg !3619
  store <4 x i32> %117, <4 x i32>* %119, align 4, !dbg !3619, !tbaa !832
  %120 = getelementptr inbounds i32, i32* %116, i64 4, !dbg !3619
  %121 = bitcast i32* %120 to <4 x i32>*, !dbg !3619
  store <4 x i32> %118, <4 x i32>* %121, align 4, !dbg !3619, !tbaa !832
  br label %122

; <label>:122:                                    ; preds = %108, %112
  %123 = icmp eq i64 %68, %65
  br i1 %123, label %133, label %124, !dbg !3616

; <label>:124:                                    ; preds = %122, %64
  %125 = phi i64 [ 0, %64 ], [ %68, %122 ]
  br label %126, !dbg !3616

; <label>:126:                                    ; preds = %124, %126
  %127 = phi i64 [ %131, %126 ], [ %125, %124 ]
  %128 = add nuw nsw i64 %127, %58, !dbg !3616
  %129 = getelementptr inbounds i32, i32* %62, i64 %127, !dbg !3618
  %130 = trunc i64 %128 to i32, !dbg !3619
  store i32 %130, i32* %129, align 4, !dbg !3619, !tbaa !832
  %131 = add nuw nsw i64 %127, 1, !dbg !3617
  %132 = icmp eq i64 %131, %65, !dbg !3612
  br i1 %132, label %133, label %126, !dbg !3615, !llvm.loop !3622

; <label>:133:                                    ; preds = %126, %122, %56
  store i32 %57, i32* %3, align 4, !dbg !3623, !tbaa !832
  ret i32* %62, !dbg !3624
}

; Function Attrs: noredzone nounwind
define dso_local i32* @georadiusGetKeys(%struct.redisCommand* nocapture readnone, %struct.redisObject** nocapture readonly, i32, i32* nocapture) local_unnamed_addr #0 !dbg !3625 {
  %5 = icmp sgt i32 %2, 5, !dbg !3645
  br i1 %5, label %6, label %29, !dbg !3646

; <label>:6:                                      ; preds = %4, %24
  %7 = phi i32 [ %27, %24 ], [ 5, %4 ]
  %8 = phi i32 [ %25, %24 ], [ -1, %4 ]
  %9 = sext i32 %7 to i64, !dbg !3647
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %9, !dbg !3647
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !3647, !tbaa !1116
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 2, !dbg !3648
  %13 = load i8*, i8** %12, align 8, !dbg !3648, !tbaa !215
  %14 = tail call i32 @strcasecmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)) #11, !dbg !3650
  %15 = icmp eq i32 %14, 0, !dbg !3650
  br i1 %15, label %19, label %16, !dbg !3652

; <label>:16:                                     ; preds = %6
  %17 = tail call i32 @strcasecmp(i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0)) #11, !dbg !3653
  %18 = icmp eq i32 %17, 0, !dbg !3653
  br i1 %18, label %19, label %24, !dbg !3654

; <label>:19:                                     ; preds = %16, %6
  %20 = add nsw i32 %7, 1, !dbg !3655
  %21 = icmp slt i32 %20, %2, !dbg !3656
  %22 = select i1 %21, i32 %20, i32 %8, !dbg !3657
  %23 = select i1 %21, i32 %20, i32 %7, !dbg !3657
  br label %24, !dbg !3657

; <label>:24:                                     ; preds = %19, %16
  %25 = phi i32 [ %8, %16 ], [ %22, %19 ], !dbg !3658
  %26 = phi i32 [ %7, %16 ], [ %23, %19 ], !dbg !3659
  %27 = add nsw i32 %26, 1, !dbg !3660
  %28 = icmp slt i32 %27, %2, !dbg !3645
  br i1 %28, label %6, label %29, !dbg !3646, !llvm.loop !3661

; <label>:29:                                     ; preds = %24, %4
  %30 = phi i32 [ -1, %4 ], [ %25, %24 ], !dbg !3643
  %31 = icmp eq i32 %30, -1, !dbg !3663
  %32 = select i1 %31, i32 1, i32 2, !dbg !3664
  %33 = shl nuw nsw i32 %32, 2, !dbg !3666
  %34 = zext i32 %33 to i64, !dbg !3666
  %35 = tail call i8* @zmalloc(i64 %34) #7, !dbg !3667
  %36 = bitcast i8* %35 to i32*, !dbg !3667
  store i32 1, i32* %36, align 4, !dbg !3669, !tbaa !832
  br i1 %31, label %40, label %37, !dbg !3670

; <label>:37:                                     ; preds = %29
  %38 = getelementptr inbounds i8, i8* %35, i64 4, !dbg !3671
  %39 = bitcast i8* %38 to i32*, !dbg !3671
  store i32 %30, i32* %39, align 4, !dbg !3674, !tbaa !832
  br label %40, !dbg !3675

; <label>:40:                                     ; preds = %29, %37
  store i32 %32, i32* %3, align 4, !dbg !3676, !tbaa !832
  ret i32* %36, !dbg !3677
}

; Function Attrs: noredzone nounwind
define dso_local i32* @xreadGetKeys(%struct.redisCommand* nocapture readnone, %struct.redisObject** nocapture readonly, i32, i32* nocapture) local_unnamed_addr #0 !dbg !3678 {
  %5 = icmp sgt i32 %2, 1, !dbg !3699
  br i1 %5, label %6, label %38, !dbg !3700

; <label>:6:                                      ; preds = %4, %34
  %7 = phi i32 [ %36, %34 ], [ 1, %4 ]
  %8 = sext i32 %7 to i64, !dbg !3701
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %8, !dbg !3701
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !3701, !tbaa !1116
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i64 0, i32 2, !dbg !3702
  %12 = load i8*, i8** %11, align 8, !dbg !3702, !tbaa !215
  %13 = tail call i32 @strcasecmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0)) #11, !dbg !3704
  %14 = icmp eq i32 %13, 0, !dbg !3704
  br i1 %14, label %15, label %17, !dbg !3706

; <label>:15:                                     ; preds = %6
  %16 = add nsw i32 %7, 1, !dbg !3707
  br label %34, !dbg !3709

; <label>:17:                                     ; preds = %6
  %18 = tail call i32 @strcasecmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !3710
  %19 = icmp eq i32 %18, 0, !dbg !3710
  br i1 %19, label %20, label %22, !dbg !3712

; <label>:20:                                     ; preds = %17
  %21 = add nsw i32 %7, 1, !dbg !3713
  br label %34, !dbg !3715

; <label>:22:                                     ; preds = %17
  %23 = tail call i32 @strcasecmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0)) #11, !dbg !3716
  %24 = icmp eq i32 %23, 0, !dbg !3716
  br i1 %24, label %25, label %27, !dbg !3718

; <label>:25:                                     ; preds = %22
  %26 = add nsw i32 %7, 2, !dbg !3719
  br label %34, !dbg !3721

; <label>:27:                                     ; preds = %22
  %28 = tail call i32 @strcasecmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0)) #11, !dbg !3722
  %29 = icmp eq i32 %28, 0, !dbg !3722
  br i1 %29, label %34, label %30, !dbg !3724

; <label>:30:                                     ; preds = %27
  %31 = tail call i32 @strcasecmp(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0)) #11, !dbg !3725
  %32 = icmp eq i32 %31, 0, !dbg !3725
  %33 = select i1 %32, i32 %7, i32 -1, !dbg !3727
  br label %38

; <label>:34:                                     ; preds = %27, %20, %25, %15
  %35 = phi i32 [ %16, %15 ], [ %21, %20 ], [ %26, %25 ], [ %7, %27 ]
  %36 = add nsw i32 %35, 1, !dbg !3729
  %37 = icmp slt i32 %36, %2, !dbg !3699
  br i1 %37, label %6, label %38, !dbg !3700, !llvm.loop !3730

; <label>:38:                                     ; preds = %34, %4, %30
  %39 = phi i32 [ %33, %30 ], [ -1, %4 ], [ -1, %34 ], !dbg !3697
  %40 = icmp eq i32 %39, -1, !dbg !3732
  %41 = xor i32 %39, -1, !dbg !3734
  %42 = add i32 %41, %2, !dbg !3734
  %43 = select i1 %40, i32 0, i32 %42, !dbg !3735
  %44 = icmp eq i32 %43, 0, !dbg !3736
  %45 = or i1 %40, %44, !dbg !3738
  %46 = xor i1 %45, true, !dbg !3738
  %47 = and i32 %43, 1, !dbg !3739
  %48 = icmp eq i32 %47, 0, !dbg !3739
  %49 = and i1 %48, %46, !dbg !3738
  br i1 %49, label %50, label %151, !dbg !3738

; <label>:50:                                     ; preds = %38
  %51 = sdiv i32 %43, 2, !dbg !3740
  %52 = sext i32 %51 to i64, !dbg !3741
  %53 = shl nsw i64 %52, 2, !dbg !3742
  %54 = tail call i8* @zmalloc(i64 %53) #7, !dbg !3743
  %55 = bitcast i8* %54 to i32*, !dbg !3743
  %56 = add i32 %39, 1, !dbg !3745
  %57 = sub i32 %2, %51, !dbg !3748
  %58 = icmp slt i32 %56, %57, !dbg !3749
  br i1 %58, label %59, label %151, !dbg !3750

; <label>:59:                                     ; preds = %50
  %60 = sext i32 %56 to i64, !dbg !3751
  %61 = add i32 %2, -2, !dbg !3751
  %62 = sub i32 %61, %51, !dbg !3751
  %63 = sub i32 %62, %39, !dbg !3751
  %64 = zext i32 %63 to i64, !dbg !3751
  %65 = add nuw nsw i64 %64, 1, !dbg !3751
  %66 = icmp ult i64 %65, 8, !dbg !3751
  br i1 %66, label %98, label %67, !dbg !3751

; <label>:67:                                     ; preds = %59
  %68 = add i32 %2, -2, !dbg !3751
  %69 = sub i32 %68, %51, !dbg !3751
  %70 = sub i32 %69, %39, !dbg !3751
  %71 = icmp slt i32 %70, 0, !dbg !3751
  br i1 %71, label %98, label %72, !dbg !3751

; <label>:72:                                     ; preds = %67
  %73 = add i32 %63, 1, !dbg !3751
  %74 = and i32 %73, 7, !dbg !3751
  %75 = zext i32 %74 to i64, !dbg !3751
  %76 = sub nsw i64 %65, %75, !dbg !3751
  %77 = add nsw i64 %76, %60, !dbg !3751
  %78 = trunc i64 %76 to i32, !dbg !3751
  %79 = add i32 %39, %78, !dbg !3751
  %80 = insertelement <4 x i32> undef, i32 %56, i32 0, !dbg !3751
  %81 = shufflevector <4 x i32> %80, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !3751
  %82 = add <4 x i32> %81, <i32 0, i32 1, i32 2, i32 3>, !dbg !3751
  br label %83, !dbg !3751

; <label>:83:                                     ; preds = %83, %72
  %84 = phi i64 [ 0, %72 ], [ %93, %83 ]
  %85 = phi <4 x i32> [ %82, %72 ], [ %94, %83 ], !dbg !3752
  %86 = shl i64 %84, 32, !dbg !3753
  %87 = ashr exact i64 %86, 32, !dbg !3753
  %88 = getelementptr inbounds i32, i32* %55, i64 %87, !dbg !3753
  %89 = add <4 x i32> %85, <i32 4, i32 4, i32 4, i32 4>, !dbg !3752
  %90 = bitcast i32* %88 to <4 x i32>*, !dbg !3752
  store <4 x i32> %85, <4 x i32>* %90, align 4, !dbg !3752, !tbaa !832
  %91 = getelementptr inbounds i32, i32* %88, i64 4, !dbg !3752
  %92 = bitcast i32* %91 to <4 x i32>*, !dbg !3752
  store <4 x i32> %89, <4 x i32>* %92, align 4, !dbg !3752, !tbaa !832
  %93 = add i64 %84, 8
  %94 = add <4 x i32> %85, <i32 8, i32 8, i32 8, i32 8>, !dbg !3752
  %95 = icmp eq i64 %93, %76
  br i1 %95, label %96, label %83, !llvm.loop !3754

; <label>:96:                                     ; preds = %83
  %97 = icmp eq i32 %74, 0
  br i1 %97, label %151, label %98, !dbg !3751

; <label>:98:                                     ; preds = %96, %67, %59
  %99 = phi i64 [ %60, %67 ], [ %60, %59 ], [ %77, %96 ]
  %100 = phi i32 [ %39, %67 ], [ %39, %59 ], [ %79, %96 ]
  %101 = sub i32 %2, %51, !dbg !3751
  %102 = trunc i64 %99 to i32, !dbg !3751
  %103 = sub i32 %101, %102, !dbg !3751
  %104 = xor i32 %51, -1, !dbg !3751
  %105 = add i32 %104, %2, !dbg !3751
  %106 = sub i32 %105, %102, !dbg !3751
  %107 = and i32 %103, 3, !dbg !3751
  %108 = icmp eq i32 %107, 0, !dbg !3751
  br i1 %108, label %122, label %109, !dbg !3751

; <label>:109:                                    ; preds = %98, %109
  %110 = phi i64 [ %117, %109 ], [ %99, %98 ]
  %111 = phi i32 [ %116, %109 ], [ %100, %98 ]
  %112 = phi i32 [ %118, %109 ], [ %107, %98 ]
  %113 = sub i32 %111, %39, !dbg !3751
  %114 = sext i32 %113 to i64, !dbg !3753
  %115 = getelementptr inbounds i32, i32* %55, i64 %114, !dbg !3753
  %116 = trunc i64 %110 to i32, !dbg !3752
  store i32 %116, i32* %115, align 4, !dbg !3752, !tbaa !832
  %117 = add nsw i64 %110, 1, !dbg !3745
  %118 = add i32 %112, -1, !dbg !3750
  %119 = icmp eq i32 %118, 0, !dbg !3750
  br i1 %119, label %120, label %109, !dbg !3750, !llvm.loop !3756

; <label>:120:                                    ; preds = %109
  %121 = trunc i64 %110 to i32, !dbg !3752
  br label %122, !dbg !3751

; <label>:122:                                    ; preds = %98, %120
  %123 = phi i64 [ %99, %98 ], [ %117, %120 ]
  %124 = phi i32 [ %100, %98 ], [ %121, %120 ]
  %125 = icmp ult i32 %106, 3, !dbg !3751
  br i1 %125, label %151, label %126, !dbg !3751

; <label>:126:                                    ; preds = %122, %126
  %127 = phi i64 [ %148, %126 ], [ %123, %122 ]
  %128 = phi i32 [ %147, %126 ], [ %124, %122 ]
  %129 = sub i32 %128, %39, !dbg !3751
  %130 = sext i32 %129 to i64, !dbg !3753
  %131 = getelementptr inbounds i32, i32* %55, i64 %130, !dbg !3753
  %132 = trunc i64 %127 to i32, !dbg !3752
  store i32 %132, i32* %131, align 4, !dbg !3752, !tbaa !832
  %133 = sub i32 %132, %39, !dbg !3751
  %134 = sext i32 %133 to i64, !dbg !3753
  %135 = getelementptr inbounds i32, i32* %55, i64 %134, !dbg !3753
  %136 = trunc i64 %127 to i32, !dbg !3752
  %137 = add i32 %136, 1, !dbg !3752
  store i32 %137, i32* %135, align 4, !dbg !3752, !tbaa !832
  %138 = sub i32 %137, %39, !dbg !3751
  %139 = sext i32 %138 to i64, !dbg !3753
  %140 = getelementptr inbounds i32, i32* %55, i64 %139, !dbg !3753
  %141 = trunc i64 %127 to i32, !dbg !3752
  %142 = add i32 %141, 2, !dbg !3752
  store i32 %142, i32* %140, align 4, !dbg !3752, !tbaa !832
  %143 = sub i32 %142, %39, !dbg !3751
  %144 = sext i32 %143 to i64, !dbg !3753
  %145 = getelementptr inbounds i32, i32* %55, i64 %144, !dbg !3753
  %146 = trunc i64 %127 to i32, !dbg !3752
  %147 = add i32 %146, 3, !dbg !3752
  store i32 %147, i32* %145, align 4, !dbg !3752, !tbaa !832
  %148 = add nsw i64 %127, 4, !dbg !3745
  %149 = trunc i64 %148 to i32, !dbg !3749
  %150 = icmp eq i32 %57, %149, !dbg !3749
  br i1 %150, label %151, label %126, !dbg !3750, !llvm.loop !3757

; <label>:151:                                    ; preds = %122, %126, %96, %50, %38
  %152 = phi i32 [ 0, %38 ], [ %51, %50 ], [ %51, %96 ], [ %51, %126 ], [ %51, %122 ]
  %153 = phi i32* [ null, %38 ], [ %55, %50 ], [ %55, %96 ], [ %55, %126 ], [ %55, %122 ], !dbg !3758
  store i32 %152, i32* %3, align 4, !dbg !3759, !tbaa !832
  ret i32* %153, !dbg !3761
}

; Function Attrs: noredzone nounwind
define dso_local void @slotToKeyUpdateKey(%struct.redisObject* nocapture readonly, i32) local_unnamed_addr #0 !dbg !3762 {
  %3 = alloca [64 x i8], align 16
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !3777
  %5 = load i8*, i8** %4, align 8, !dbg !3777, !tbaa !215
  %6 = getelementptr inbounds i8, i8* %5, i64 -1, !dbg !3780
  %7 = load i8, i8* %6, align 1, !dbg !3780, !tbaa !222
  %8 = trunc i8 %7 to i3, !dbg !3782
  switch i3 %8, label %30 [
    i3 0, label %9
    i3 1, label %12
    i3 2, label %16
    i3 3, label %21
    i3 -4, label %26
  ], !dbg !3782

; <label>:9:                                      ; preds = %2
  %10 = lshr i8 %7, 3, !dbg !3783
  %11 = zext i8 %10 to i64, !dbg !3783
  br label %30, !dbg !3784

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds i8, i8* %5, i64 -3, !dbg !3785
  %14 = load i8, i8* %13, align 1, !dbg !3786, !tbaa !222
  %15 = zext i8 %14 to i64, !dbg !3785
  br label %30, !dbg !3787

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds i8, i8* %5, i64 -5, !dbg !3788
  %18 = bitcast i8* %17 to i16*, !dbg !3789
  %19 = load i16, i16* %18, align 1, !dbg !3789, !tbaa !827
  %20 = zext i16 %19 to i64, !dbg !3788
  br label %30, !dbg !3790

; <label>:21:                                     ; preds = %2
  %22 = getelementptr inbounds i8, i8* %5, i64 -9, !dbg !3791
  %23 = bitcast i8* %22 to i32*, !dbg !3792
  %24 = load i32, i32* %23, align 1, !dbg !3792, !tbaa !832
  %25 = zext i32 %24 to i64, !dbg !3791
  br label %30, !dbg !3793

; <label>:26:                                     ; preds = %2
  %27 = getelementptr inbounds i8, i8* %5, i64 -17, !dbg !3794
  %28 = bitcast i8* %27 to i64*, !dbg !3795
  %29 = load i64, i64* %28, align 1, !dbg !3795, !tbaa !836
  br label %30, !dbg !3796

; <label>:30:                                     ; preds = %2, %9, %12, %16, %21, %26
  %31 = phi i64 [ %29, %26 ], [ %25, %21 ], [ %20, %16 ], [ %15, %12 ], [ %11, %9 ], [ 0, %2 ], !dbg !3797
  %32 = trunc i64 %31 to i32, !dbg !3798
  %33 = tail call i32 @keyHashSlot(i8* %5, i32 %32) #7, !dbg !3799
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0, !dbg !3801
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %34) #8, !dbg !3801
  %35 = load i8*, i8** %4, align 8, !dbg !3804, !tbaa !215
  %36 = getelementptr inbounds i8, i8* %35, i64 -1, !dbg !3807
  %37 = load i8, i8* %36, align 1, !dbg !3807, !tbaa !222
  %38 = trunc i8 %37 to i3, !dbg !3809
  switch i3 %38, label %60 [
    i3 0, label %39
    i3 1, label %42
    i3 2, label %46
    i3 3, label %51
    i3 -4, label %56
  ], !dbg !3809

; <label>:39:                                     ; preds = %30
  %40 = lshr i8 %37, 3, !dbg !3810
  %41 = zext i8 %40 to i64, !dbg !3810
  br label %60, !dbg !3811

; <label>:42:                                     ; preds = %30
  %43 = getelementptr inbounds i8, i8* %35, i64 -3, !dbg !3812
  %44 = load i8, i8* %43, align 1, !dbg !3813, !tbaa !222
  %45 = zext i8 %44 to i64, !dbg !3812
  br label %60, !dbg !3814

; <label>:46:                                     ; preds = %30
  %47 = getelementptr inbounds i8, i8* %35, i64 -5, !dbg !3815
  %48 = bitcast i8* %47 to i16*, !dbg !3816
  %49 = load i16, i16* %48, align 1, !dbg !3816, !tbaa !827
  %50 = zext i16 %49 to i64, !dbg !3815
  br label %60, !dbg !3817

; <label>:51:                                     ; preds = %30
  %52 = getelementptr inbounds i8, i8* %35, i64 -9, !dbg !3818
  %53 = bitcast i8* %52 to i32*, !dbg !3819
  %54 = load i32, i32* %53, align 1, !dbg !3819, !tbaa !832
  %55 = zext i32 %54 to i64, !dbg !3818
  br label %60, !dbg !3820

; <label>:56:                                     ; preds = %30
  %57 = getelementptr inbounds i8, i8* %35, i64 -17, !dbg !3821
  %58 = bitcast i8* %57 to i64*, !dbg !3822
  %59 = load i64, i64* %58, align 1, !dbg !3822, !tbaa !836
  br label %60, !dbg !3823

; <label>:60:                                     ; preds = %30, %39, %42, %46, %51, %56
  %61 = phi i64 [ %59, %56 ], [ %55, %51 ], [ %50, %46 ], [ %45, %42 ], [ %41, %39 ], [ 0, %30 ], !dbg !3824
  %62 = icmp ne i32 %1, 0, !dbg !3826
  %63 = select i1 %62, i64 1, i64 -1, !dbg !3826
  %64 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !3827, !tbaa !1042
  %65 = zext i32 %33 to i64, !dbg !3828
  %66 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %64, i64 0, i32 9, i64 %65, !dbg !3828
  %67 = load i64, i64* %66, align 8, !dbg !3829, !tbaa !836
  %68 = add i64 %67, %63, !dbg !3829
  store i64 %68, i64* %66, align 8, !dbg !3829, !tbaa !836
  %69 = add i64 %61, 2, !dbg !3830
  %70 = icmp ugt i64 %69, 64, !dbg !3832
  br i1 %70, label %71, label %73, !dbg !3833

; <label>:71:                                     ; preds = %60
  %72 = tail call i8* @zmalloc(i64 %69) #7, !dbg !3834
  br label %73, !dbg !3835

; <label>:73:                                     ; preds = %71, %60
  %74 = phi i8* [ %72, %71 ], [ %34, %60 ], !dbg !3836
  %75 = lshr i32 %33, 8, !dbg !3837
  %76 = trunc i32 %75 to i8, !dbg !3838
  store i8 %76, i8* %74, align 1, !dbg !3839, !tbaa !222
  %77 = trunc i32 %33 to i8, !dbg !3840
  %78 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !3841
  store i8 %77, i8* %78, align 1, !dbg !3842, !tbaa !222
  %79 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !3843
  %80 = load i8*, i8** %4, align 8, !dbg !3844, !tbaa !215
  %81 = call i8* @memcpy(i8* nonnull %79, i8* %80, i64 %61) #7, !dbg !3845
  %82 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !3846, !tbaa !1042
  %83 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %82, i64 0, i32 10, !dbg !3846
  %84 = load %struct.rax*, %struct.rax** %83, align 8, !dbg !3846, !tbaa !1044
  br i1 %62, label %85, label %87, !dbg !3849

; <label>:85:                                     ; preds = %73
  %86 = call i32 @raxInsert(%struct.rax* %84, i8* %74, i64 %69, i8* null, i8** null) #7, !dbg !3850
  br label %89, !dbg !3852

; <label>:87:                                     ; preds = %73
  %88 = call i32 @raxRemove(%struct.rax* %84, i8* %74, i64 %69, i8** null) #7, !dbg !3853
  br label %89

; <label>:89:                                     ; preds = %87, %85
  %90 = icmp eq i8* %74, %34, !dbg !3854
  br i1 %90, label %92, label %91, !dbg !3856

; <label>:91:                                     ; preds = %89
  call void @zfree(i8* %74) #7, !dbg !3857
  br label %92, !dbg !3857

; <label>:92:                                     ; preds = %89, %91
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %34) #8, !dbg !3858
  ret void, !dbg !3858
}

; Function Attrs: noredzone
declare dso_local i32 @keyHashSlot(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @raxInsert(%struct.rax*, i8*, i64, i8*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @raxRemove(%struct.rax*, i8*, i64, i8**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @raxFree(%struct.rax*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.rax* @raxNew() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @getKeysInSlot(i32, %struct.redisObject** nocapture, i32) local_unnamed_addr #0 !dbg !3859 {
  %4 = alloca %struct.raxIterator, align 8
  %5 = alloca [2 x i8], align 1
  %6 = bitcast %struct.raxIterator* %4 to i8*, !dbg !3920
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %6) #8, !dbg !3920
  %7 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0, !dbg !3922
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %7) #8, !dbg !3922
  %8 = lshr i32 %0, 8, !dbg !3924
  %9 = trunc i32 %8 to i8, !dbg !3925
  store i8 %9, i8* %7, align 1, !dbg !3926, !tbaa !222
  %10 = trunc i32 %0 to i8, !dbg !3927
  %11 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1, !dbg !3928
  store i8 %10, i8* %11, align 1, !dbg !3929, !tbaa !222
  %12 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !3930, !tbaa !1042
  %13 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %12, i64 0, i32 10, !dbg !3931
  %14 = load %struct.rax*, %struct.rax** %13, align 8, !dbg !3931, !tbaa !1044
  call void @raxStart(%struct.raxIterator* nonnull %4, %struct.rax* %14) #7, !dbg !3933
  %15 = call i32 @raxSeek(%struct.raxIterator* nonnull %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), i8* nonnull %7, i64 2) #7, !dbg !3934
  %16 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %4, i64 0, i32 2, !dbg !3935
  %17 = icmp eq i32 %2, 0, !dbg !3938
  br i1 %17, label %52, label %18, !dbg !3939

; <label>:18:                                     ; preds = %3
  %19 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %4, i64 0, i32 4
  br label %20, !dbg !3939

; <label>:20:                                     ; preds = %18, %37
  %21 = phi i64 [ 0, %18 ], [ %42, %37 ]
  %22 = phi i32 [ %2, %18 ], [ %24, %37 ]
  %23 = phi i32 [ 0, %18 ], [ %43, %37 ]
  %24 = add i32 %22, -1, !dbg !3938
  %25 = call i32 @raxNext(%struct.raxIterator* nonnull %4) #7, !dbg !3940
  %26 = icmp eq i32 %25, 0, !dbg !3939
  br i1 %26, label %50, label %27, !dbg !3941

; <label>:27:                                     ; preds = %20
  %28 = load i8*, i8** %16, align 8, !dbg !3935, !tbaa !3942
  %29 = load i8, i8* %28, align 1, !dbg !3945, !tbaa !222
  %30 = load i8, i8* %7, align 1, !dbg !3946, !tbaa !222
  %31 = icmp eq i8 %29, %30, !dbg !3947
  br i1 %31, label %32, label %48, !dbg !3948

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !3949
  %34 = load i8, i8* %33, align 1, !dbg !3949, !tbaa !222
  %35 = load i8, i8* %11, align 1, !dbg !3950, !tbaa !222
  %36 = icmp eq i8 %34, %35, !dbg !3951
  br i1 %36, label %37, label %46, !dbg !3952

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds i8, i8* %28, i64 2, !dbg !3953
  %39 = load i64, i64* %19, align 8, !dbg !3954, !tbaa !3955
  %40 = add i64 %39, -2, !dbg !3956
  %41 = call %struct.redisObject* @createStringObject(i8* nonnull %38, i64 %40) #7, !dbg !3957
  %42 = add nuw nsw i64 %21, 1, !dbg !3958
  %43 = add nuw nsw i32 %23, 1, !dbg !3958
  %44 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %21, !dbg !3959
  store %struct.redisObject* %41, %struct.redisObject** %44, align 8, !dbg !3960, !tbaa !1116
  %45 = icmp eq i32 %24, 0, !dbg !3938
  br i1 %45, label %52, label %20, !dbg !3939, !llvm.loop !3961

; <label>:46:                                     ; preds = %32
  %47 = trunc i64 %21 to i32, !dbg !3941
  br label %52, !dbg !3963

; <label>:48:                                     ; preds = %27
  %49 = trunc i64 %21 to i32, !dbg !3941
  br label %52, !dbg !3963

; <label>:50:                                     ; preds = %20
  %51 = trunc i64 %21 to i32, !dbg !3941
  br label %52, !dbg !3963

; <label>:52:                                     ; preds = %37, %46, %48, %50, %3
  %53 = phi i32 [ 0, %3 ], [ %47, %46 ], [ %49, %48 ], [ %51, %50 ], [ %43, %37 ], !dbg !3964
  call void @raxStop(%struct.raxIterator* nonnull %4) #7, !dbg !3963
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %7) #8, !dbg !3965
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %6) #8, !dbg !3965
  ret i32 %53, !dbg !3966
}

; Function Attrs: noredzone
declare dso_local void @raxStart(%struct.raxIterator*, %struct.rax*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @raxSeek(%struct.raxIterator*, i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @raxNext(%struct.raxIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @raxStop(%struct.raxIterator*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @delKeysInSlot(i32) local_unnamed_addr #0 !dbg !3967 {
  %2 = alloca %struct.raxIterator, align 8
  %3 = alloca [2 x i8], align 1
  %4 = bitcast %struct.raxIterator* %2 to i8*, !dbg !3978
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %4) #8, !dbg !3978
  %5 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0, !dbg !3980
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %5) #8, !dbg !3980
  %6 = lshr i32 %0, 8, !dbg !3982
  %7 = trunc i32 %6 to i8, !dbg !3983
  store i8 %7, i8* %5, align 1, !dbg !3984, !tbaa !222
  %8 = trunc i32 %0 to i8, !dbg !3985
  %9 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1, !dbg !3986
  store i8 %8, i8* %9, align 1, !dbg !3987, !tbaa !222
  %10 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !3988, !tbaa !1042
  %11 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %10, i64 0, i32 10, !dbg !3989
  %12 = load %struct.rax*, %struct.rax** %11, align 8, !dbg !3989, !tbaa !1044
  call void @raxStart(%struct.raxIterator* nonnull %2, %struct.rax* %12) #7, !dbg !3991
  %13 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !3992, !tbaa !1042
  %14 = zext i32 %0 to i64, !dbg !3993
  %15 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %13, i64 0, i32 9, i64 %14, !dbg !3993
  %16 = load i64, i64* %15, align 8, !dbg !3993, !tbaa !836
  %17 = icmp eq i64 %16, 0, !dbg !3994
  br i1 %17, label %64, label %18, !dbg !3994

; <label>:18:                                     ; preds = %1
  %19 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %2, i64 0, i32 2
  %20 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %2, i64 0, i32 4
  br label %21, !dbg !3994

; <label>:21:                                     ; preds = %18, %58
  %22 = phi i32 [ 0, %18 ], [ %59, %58 ]
  %23 = call i32 @raxSeek(%struct.raxIterator* nonnull %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), i8* nonnull %5, i64 2) #7, !dbg !3995
  %24 = call i32 @raxNext(%struct.raxIterator* nonnull %2) #7, !dbg !3996
  %25 = load i8*, i8** %19, align 8, !dbg !3997, !tbaa !3942
  %26 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !3998
  %27 = load i64, i64* %20, align 8, !dbg !3999, !tbaa !3955
  %28 = add i64 %27, -2, !dbg !4000
  %29 = call %struct.redisObject* @createStringObject(i8* nonnull %26, i64 %28) #7, !dbg !4001
  %30 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !4003, !tbaa !1014
  %31 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 287), align 8, !dbg !4007, !tbaa !698
  %32 = icmp eq i32 %31, 0, !dbg !4008
  br i1 %32, label %35, label %33, !dbg !4008

; <label>:33:                                     ; preds = %21
  %34 = call i32 @dbAsyncDelete(%struct.redisDb* %30, %struct.redisObject* %29) #7, !dbg !4009
  br label %58, !dbg !4008

; <label>:35:                                     ; preds = %21
  %36 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %30, i64 0, i32 1, !dbg !4013
  %37 = load %struct.dict*, %struct.dict** %36, align 8, !dbg !4013, !tbaa !346
  %38 = getelementptr inbounds %struct.dict, %struct.dict* %37, i64 0, i32 2, i64 0, i32 3, !dbg !4013
  %39 = load i64, i64* %38, align 8, !dbg !4013, !tbaa !347
  %40 = getelementptr inbounds %struct.dict, %struct.dict* %37, i64 0, i32 2, i64 1, i32 3, !dbg !4013
  %41 = load i64, i64* %40, align 8, !dbg !4013, !tbaa !347
  %42 = sub i64 0, %41, !dbg !4014
  %43 = icmp eq i64 %39, %42, !dbg !4014
  %44 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %29, i64 0, i32 2, !dbg !4015
  br i1 %43, label %48, label %45, !dbg !4016

; <label>:45:                                     ; preds = %35
  %46 = load i8*, i8** %44, align 8, !dbg !4017, !tbaa !215
  %47 = call i32 @dictDelete(%struct.dict* %37, i8* %46) #7, !dbg !4018
  br label %48, !dbg !4018

; <label>:48:                                     ; preds = %45, %35
  %49 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %30, i64 0, i32 0, !dbg !4019
  %50 = load %struct.dict*, %struct.dict** %49, align 8, !dbg !4019, !tbaa !207
  %51 = load i8*, i8** %44, align 8, !dbg !4020, !tbaa !215
  %52 = call i32 @dictDelete(%struct.dict* %50, i8* %51) #7, !dbg !4021
  %53 = icmp ne i32 %52, 0, !dbg !4022
  %54 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !4023
  %55 = icmp eq i32 %54, 0, !dbg !4024
  %56 = or i1 %53, %55, !dbg !4025
  br i1 %56, label %58, label %57, !dbg !4025

; <label>:57:                                     ; preds = %48
  call void @slotToKeyUpdateKey(%struct.redisObject* nonnull %29, i32 0) #7, !dbg !4028
  br label %58, !dbg !4029

; <label>:58:                                     ; preds = %48, %33, %57
  call void @decrRefCount(%struct.redisObject* %29) #7, !dbg !4030
  %59 = add nuw nsw i32 %22, 1, !dbg !4031
  %60 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !3992, !tbaa !1042
  %61 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %60, i64 0, i32 9, i64 %14, !dbg !3993
  %62 = load i64, i64* %61, align 8, !dbg !3993, !tbaa !836
  %63 = icmp eq i64 %62, 0, !dbg !3994
  br i1 %63, label %64, label %21, !dbg !3994, !llvm.loop !4032

; <label>:64:                                     ; preds = %58, %1
  %65 = phi i32 [ 0, %1 ], [ %59, %58 ], !dbg !4034
  call void @raxStop(%struct.raxIterator* nonnull %2) #7, !dbg !4035
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %5) #8, !dbg !4036
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %4) #8, !dbg !4036
  ret i32 %65, !dbg !4037
}

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @countKeysInSlot(i32) local_unnamed_addr #6 !dbg !4038 {
  %2 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !4042, !tbaa !1042
  %3 = zext i32 %0 to i64, !dbg !4043
  %4 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %2, i64 0, i32 9, i64 %3, !dbg !4043
  %5 = load i64, i64* %4, align 8, !dbg !4043, !tbaa !836
  %6 = trunc i64 %5 to i32, !dbg !4043
  ret i32 %6, !dbg !4044
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noredzone }
attributes #10 = { nobuiltin noredzone noreturn nounwind }
attributes #11 = { nobuiltin noredzone nounwind readonly }

!llvm.module.flags = !{!58, !59, !60}
!llvm.ident = !{!61}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/db.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !6, !8, !9, !11, !12, !13, !29, !39, !49}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !15, line: 51, size: 24, elements: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !{!17, !23, !24, !25}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !14, file: !15, line: 52, baseType: !18, size: 8)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !19, line: 24, baseType: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !21, line: 43, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !14, file: !15, line: 53, baseType: !18, size: 8, offset: 8)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !14, file: !15, line: 54, baseType: !22, size: 8, offset: 16)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !14, file: !15, line: 55, baseType: !26, offset: 24)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: -1)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !15, line: 57, size: 40, elements: !31)
!31 = !{!32, !36, !37, !38}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !30, file: !15, line: 58, baseType: !33, size: 16)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !19, line: 36, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !21, line: 57, baseType: !35)
!35 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !30, file: !15, line: 59, baseType: !33, size: 16, offset: 16)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !30, file: !15, line: 60, baseType: !22, size: 8, offset: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !30, file: !15, line: 61, baseType: !26, offset: 40)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !15, line: 63, size: 72, elements: !41)
!41 = !{!42, !46, !47, !48}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !40, file: !15, line: 64, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !19, line: 48, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !21, line: 79, baseType: !45)
!45 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !40, file: !15, line: 65, baseType: !43, size: 32, offset: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !40, file: !15, line: 66, baseType: !22, size: 8, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !40, file: !15, line: 67, baseType: !26, offset: 72)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !15, line: 69, size: 136, elements: !51)
!51 = !{!52, !55, !56, !57}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !50, file: !15, line: 70, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !19, line: 60, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !21, line: 105, baseType: !11)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !50, file: !15, line: 71, baseType: !53, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !50, file: !15, line: 72, baseType: !22, size: 8, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !50, file: !15, line: 73, baseType: !26, offset: 136)
!58 = !{i32 2, !"Dwarf Version", i32 4}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!62 = distinct !DISubprogram(name: "updateLFU", scope: !1, file: !1, line: 46, type: !63, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !75)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !65}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !67, line: 622, baseType: !68)
!67 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !67, line: 614, size: 128, elements: !69)
!69 = !{!70, !71, !72, !73, !74}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !67, line: 615, baseType: !45, size: 4, flags: DIFlagBitField, extraData: i64 0)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !68, file: !67, line: 616, baseType: !45, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !68, file: !67, line: 617, baseType: !45, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !68, file: !67, line: 620, baseType: !8, size: 32, offset: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !68, file: !67, line: 621, baseType: !4, size: 64, offset: 64)
!75 = !{!76, !77}
!76 = !DILocalVariable(name: "val", arg: 1, scope: !62, file: !1, line: 46, type: !65)
!77 = !DILocalVariable(name: "counter", scope: !62, file: !1, line: 47, type: !11)
!78 = !DILocation(line: 46, column: 22, scope: !62)
!79 = !DILocation(line: 47, column: 29, scope: !62)
!80 = !DILocation(line: 47, column: 19, scope: !62)
!81 = !DILocation(line: 48, column: 26, scope: !62)
!82 = !DILocation(line: 48, column: 15, scope: !62)
!83 = !DILocation(line: 49, column: 17, scope: !62)
!84 = !DILocation(line: 49, column: 38, scope: !62)
!85 = !DILocation(line: 49, column: 43, scope: !62)
!86 = !DILocation(line: 49, column: 16, scope: !62)
!87 = !DILocation(line: 49, column: 10, scope: !62)
!88 = !DILocation(line: 49, column: 14, scope: !62)
!89 = !DILocation(line: 50, column: 1, scope: !62)
!90 = distinct !DISubprogram(name: "lookupKey", scope: !1, file: !1, line: 55, type: !91, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !195)
!91 = !DISubroutineType(types: !92)
!92 = !{!65, !93, !65, !8}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !67, line: 656, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !67, line: 647, size: 512, elements: !96)
!96 = !{!97, !159, !160, !161, !162, !163, !164, !166}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !95, file: !67, line: 648, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !100, line: 82, baseType: !101)
!100 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !100, line: 76, size: 768, elements: !102)
!102 = !{!103, !128, !129, !157, !158}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !101, file: !100, line: 77, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !100, line: 65, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !100, line: 58, size: 384, elements: !107)
!107 = !{!108, !114, !118, !119, !123, !127}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !106, file: !100, line: 59, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!53, !112}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !106, file: !100, line: 60, baseType: !115, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!4, !4, !112}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !106, file: !100, line: 61, baseType: !115, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !106, file: !100, line: 62, baseType: !120, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!8, !4, !112, !112}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !106, file: !100, line: 63, baseType: !124, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !4, !4}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !106, file: !100, line: 64, baseType: !124, size: 64, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !101, file: !100, line: 78, baseType: !4, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !101, file: !100, line: 79, baseType: !130, size: 512, offset: 128)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 512, elements: !155)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !100, line: 74, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !100, line: 69, size: 256, elements: !133)
!133 = !{!134, !152, !153, !154}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !132, file: !100, line: 70, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !100, line: 56, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !100, line: 47, size: 192, elements: !139)
!139 = !{!140, !141, !150}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !138, file: !100, line: 48, baseType: !4, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !138, file: !100, line: 54, baseType: !142, size: 64, offset: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !138, file: !100, line: 49, size: 64, elements: !143)
!143 = !{!144, !145, !146, !149}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !142, file: !100, line: 50, baseType: !4, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !142, file: !100, line: 51, baseType: !53, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !142, file: !100, line: 52, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !19, line: 56, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !21, line: 103, baseType: !12)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !142, file: !100, line: 53, baseType: !7, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !138, file: !100, line: 55, baseType: !151, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !132, file: !100, line: 71, baseType: !11, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !132, file: !100, line: 72, baseType: !11, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !132, file: !100, line: 73, baseType: !11, size: 64, offset: 192)
!155 = !{!156}
!156 = !DISubrange(count: 2)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !101, file: !100, line: 80, baseType: !12, size: 64, offset: 640)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !101, file: !100, line: 81, baseType: !11, size: 64, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !95, file: !67, line: 649, baseType: !98, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !95, file: !67, line: 650, baseType: !98, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !95, file: !67, line: 651, baseType: !98, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !95, file: !67, line: 652, baseType: !98, size: 64, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !95, file: !67, line: 653, baseType: !8, size: 32, offset: 320)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !95, file: !67, line: 654, baseType: !165, size: 64, offset: 384)
!165 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !95, file: !67, line: 655, baseType: !167, size: 64, offset: 448)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !169, line: 54, baseType: !170)
!169 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !169, line: 47, size: 384, elements: !171)
!171 = !{!172, !181, !182, !186, !190, !194}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !170, file: !169, line: 48, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !169, line: 40, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !169, line: 36, size: 192, elements: !176)
!176 = !{!177, !179, !180}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !175, file: !169, line: 37, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !175, file: !169, line: 38, baseType: !178, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !175, file: !169, line: 39, baseType: !4, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !170, file: !169, line: 49, baseType: !173, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !170, file: !169, line: 50, baseType: !183, size: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!4, !4}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !170, file: !169, line: 51, baseType: !187, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !4}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !170, file: !169, line: 52, baseType: !191, size: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!8, !4, !4}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !170, file: !169, line: 53, baseType: !11, size: 64, offset: 320)
!195 = !{!196, !197, !198, !199, !200}
!196 = !DILocalVariable(name: "db", arg: 1, scope: !90, file: !1, line: 55, type: !93)
!197 = !DILocalVariable(name: "key", arg: 2, scope: !90, file: !1, line: 55, type: !65)
!198 = !DILocalVariable(name: "flags", arg: 3, scope: !90, file: !1, line: 55, type: !8)
!199 = !DILocalVariable(name: "de", scope: !90, file: !1, line: 56, type: !136)
!200 = !DILocalVariable(name: "val", scope: !201, file: !1, line: 58, type: !65)
!201 = distinct !DILexicalBlock(scope: !202, file: !1, line: 57, column: 13)
!202 = distinct !DILexicalBlock(scope: !90, file: !1, line: 57, column: 9)
!203 = !DILocation(line: 55, column: 26, scope: !90)
!204 = !DILocation(line: 55, column: 36, scope: !90)
!205 = !DILocation(line: 55, column: 45, scope: !90)
!206 = !DILocation(line: 56, column: 34, scope: !90)
!207 = !{!208, !209, i64 0}
!208 = !{!"redisDb", !209, i64 0, !209, i64 8, !209, i64 16, !209, i64 24, !209, i64 32, !212, i64 40, !213, i64 48, !209, i64 56}
!209 = !{!"any pointer", !210, i64 0}
!210 = !{!"omnipotent char", !211, i64 0}
!211 = !{!"Simple C/C++ TBAA"}
!212 = !{!"int", !210, i64 0}
!213 = !{!"long long", !210, i64 0}
!214 = !DILocation(line: 56, column: 44, scope: !90)
!215 = !{!216, !209, i64 8}
!216 = !{!"redisObject", !212, i64 0, !212, i64 0, !212, i64 1, !212, i64 4, !209, i64 8}
!217 = !DILocation(line: 56, column: 21, scope: !90)
!218 = !DILocation(line: 56, column: 16, scope: !90)
!219 = !DILocation(line: 57, column: 9, scope: !202)
!220 = !DILocation(line: 57, column: 9, scope: !90)
!221 = !DILocation(line: 58, column: 21, scope: !201)
!222 = !{!210, !210, i64 0}
!223 = !DILocation(line: 58, column: 15, scope: !201)
!224 = !DILocation(line: 63, column: 20, scope: !225)
!225 = distinct !DILexicalBlock(scope: !201, file: !1, line: 63, column: 13)
!226 = !{!227, !212, i64 2096}
!227 = !{!"redisServer", !212, i64 0, !209, i64 8, !209, i64 16, !209, i64 24, !212, i64 32, !212, i64 36, !212, i64 40, !209, i64 48, !209, i64 56, !209, i64 64, !209, i64 72, !212, i64 80, !212, i64 84, !212, i64 88, !212, i64 92, !209, i64 96, !209, i64 104, !212, i64 112, !212, i64 116, !210, i64 120, !212, i64 164, !228, i64 168, !212, i64 176, !209, i64 184, !209, i64 192, !209, i64 200, !210, i64 208, !212, i64 216, !212, i64 220, !210, i64 224, !212, i64 352, !209, i64 360, !212, i64 368, !210, i64 372, !212, i64 436, !212, i64 440, !210, i64 444, !212, i64 508, !209, i64 512, !209, i64 520, !209, i64 528, !209, i64 536, !209, i64 544, !209, i64 552, !209, i64 560, !212, i64 568, !213, i64 576, !210, i64 584, !209, i64 840, !228, i64 848, !212, i64 856, !212, i64 860, !228, i64 864, !228, i64 872, !228, i64 880, !228, i64 888, !209, i64 896, !209, i64 904, !209, i64 912, !209, i64 920, !209, i64 928, !209, i64 936, !209, i64 944, !209, i64 952, !209, i64 960, !209, i64 968, !209, i64 976, !209, i64 984, !209, i64 992, !228, i64 1000, !213, i64 1008, !213, i64 1016, !213, i64 1024, !229, i64 1032, !213, i64 1040, !213, i64 1048, !213, i64 1056, !213, i64 1064, !213, i64 1072, !213, i64 1080, !213, i64 1088, !213, i64 1096, !213, i64 1104, !228, i64 1112, !213, i64 1120, !229, i64 1128, !213, i64 1136, !213, i64 1144, !213, i64 1152, !213, i64 1160, !209, i64 1168, !213, i64 1176, !213, i64 1184, !228, i64 1192, !230, i64 1200, !213, i64 1240, !213, i64 1248, !228, i64 1256, !228, i64 1264, !210, i64 1272, !212, i64 1728, !212, i64 1732, !212, i64 1736, !212, i64 1740, !212, i64 1744, !228, i64 1752, !212, i64 1760, !212, i64 1764, !212, i64 1768, !212, i64 1772, !228, i64 1776, !228, i64 1784, !212, i64 1792, !212, i64 1796, !212, i64 1800, !212, i64 1804, !210, i64 1808, !212, i64 1880, !212, i64 1884, !209, i64 1888, !212, i64 1896, !212, i64 1900, !228, i64 1904, !228, i64 1912, !228, i64 1920, !228, i64 1928, !212, i64 1936, !212, i64 1940, !209, i64 1944, !209, i64 1952, !212, i64 1960, !212, i64 1964, !228, i64 1968, !228, i64 1976, !228, i64 1984, !228, i64 1992, !212, i64 2000, !228, i64 2008, !212, i64 2016, !212, i64 2020, !212, i64 2024, !212, i64 2028, !212, i64 2032, !212, i64 2036, !212, i64 2040, !212, i64 2044, !212, i64 2048, !212, i64 2052, !212, i64 2056, !212, i64 2060, !212, i64 2064, !209, i64 2072, !213, i64 2080, !213, i64 2088, !212, i64 2096, !209, i64 2104, !212, i64 2112, !209, i64 2120, !212, i64 2128, !212, i64 2132, !228, i64 2136, !228, i64 2144, !228, i64 2152, !228, i64 2160, !212, i64 2168, !212, i64 2172, !212, i64 2176, !212, i64 2180, !212, i64 2184, !212, i64 2188, !210, i64 2192, !231, i64 2200, !232, i64 2224, !209, i64 2240, !212, i64 2248, !209, i64 2256, !212, i64 2264, !210, i64 2268, !210, i64 2309, !213, i64 2352, !213, i64 2360, !212, i64 2368, !212, i64 2372, !209, i64 2376, !213, i64 2384, !213, i64 2392, !213, i64 2400, !213, i64 2408, !228, i64 2416, !228, i64 2424, !212, i64 2432, !212, i64 2436, !212, i64 2440, !212, i64 2444, !212, i64 2448, !209, i64 2456, !209, i64 2464, !212, i64 2472, !212, i64 2476, !209, i64 2480, !209, i64 2488, !212, i64 2496, !212, i64 2500, !228, i64 2504, !228, i64 2512, !228, i64 2520, !212, i64 2528, !212, i64 2532, !209, i64 2536, !228, i64 2544, !212, i64 2552, !212, i64 2556, !212, i64 2560, !228, i64 2568, !212, i64 2576, !212, i64 2580, !212, i64 2584, !209, i64 2592, !210, i64 2600, !213, i64 2648, !212, i64 2656, !209, i64 2664, !209, i64 2672, !212, i64 2680, !209, i64 2688, !212, i64 2696, !212, i64 2700, !213, i64 2704, !212, i64 2712, !212, i64 2716, !212, i64 2720, !212, i64 2724, !213, i64 2728, !212, i64 2736, !210, i64 2740, !209, i64 2768, !209, i64 2776, !212, i64 2784, !212, i64 2788, !212, i64 2792, !212, i64 2796, !228, i64 2800, !228, i64 2808, !228, i64 2816, !228, i64 2824, !228, i64 2832, !228, i64 2840, !228, i64 2848, !228, i64 2856, !212, i64 2864, !212, i64 2868, !228, i64 2872, !228, i64 2880, !212, i64 2888, !213, i64 2896, !209, i64 2904, !209, i64 2912, !212, i64 2920, !212, i64 2924, !213, i64 2928, !209, i64 2936, !209, i64 2944, !212, i64 2952, !212, i64 2956, !212, i64 2960, !212, i64 2964, !209, i64 2968, !212, i64 2976, !212, i64 2980, !212, i64 2984, !209, i64 2992, !209, i64 3000, !209, i64 3008, !209, i64 3016, !213, i64 3024, !213, i64 3032, !213, i64 3040, !212, i64 3048, !212, i64 3052, !212, i64 3056, !212, i64 3060, !212, i64 3064, !212, i64 3068, !212, i64 3072, !212, i64 3076, !212, i64 3080, !212, i64 3084, !212, i64 3088, !213, i64 3096, !209, i64 3104, !209, i64 3112, !209, i64 3120, !212, i64 3128, !212, i64 3132, !212, i64 3136, !228, i64 3144, !209, i64 3152, !209, i64 3160, !209, i64 3168}
!228 = !{!"long", !210, i64 0}
!229 = !{!"double", !210, i64 0}
!230 = !{!"malloc_stats", !228, i64 0, !228, i64 8, !228, i64 16, !228, i64 24, !228, i64 32}
!231 = !{!"", !212, i64 0, !228, i64 8, !213, i64 16}
!232 = !{!"redisOpArray", !209, i64 0, !212, i64 8}
!233 = !DILocation(line: 64, column: 20, scope: !225)
!234 = !DILocation(line: 63, column: 40, scope: !225)
!235 = !DILocation(line: 65, column: 21, scope: !225)
!236 = !DILocation(line: 67, column: 24, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !1, line: 67, column: 17)
!238 = distinct !DILexicalBlock(scope: !225, file: !1, line: 66, column: 9)
!239 = !{!227, !212, i64 2712}
!240 = !DILocation(line: 67, column: 41, scope: !237)
!241 = !DILocation(line: 67, column: 17, scope: !238)
!242 = !DILocation(line: 46, column: 22, scope: !62, inlinedAt: !243)
!243 = distinct !DILocation(line: 68, column: 17, scope: !244)
!244 = distinct !DILexicalBlock(scope: !237, file: !1, line: 67, column: 63)
!245 = !DILocation(line: 47, column: 29, scope: !62, inlinedAt: !243)
!246 = !DILocation(line: 47, column: 19, scope: !62, inlinedAt: !243)
!247 = !DILocation(line: 48, column: 26, scope: !62, inlinedAt: !243)
!248 = !DILocation(line: 48, column: 15, scope: !62, inlinedAt: !243)
!249 = !DILocation(line: 49, column: 17, scope: !62, inlinedAt: !243)
!250 = !DILocation(line: 49, column: 38, scope: !62, inlinedAt: !243)
!251 = !DILocation(line: 49, column: 43, scope: !62, inlinedAt: !243)
!252 = !DILocation(line: 49, column: 16, scope: !62, inlinedAt: !243)
!253 = !DILocation(line: 49, column: 10, scope: !62, inlinedAt: !243)
!254 = !DILocation(line: 49, column: 14, scope: !62, inlinedAt: !243)
!255 = !DILocation(line: 69, column: 13, scope: !244)
!256 = !DILocation(line: 70, column: 28, scope: !257)
!257 = distinct !DILexicalBlock(scope: !237, file: !1, line: 69, column: 20)
!258 = !DILocation(line: 70, column: 22, scope: !257)
!259 = !DILocation(line: 70, column: 26, scope: !257)
!260 = !DILocation(line: 0, scope: !261)
!261 = distinct !DILexicalBlock(scope: !202, file: !1, line: 74, column: 12)
!262 = !DILocation(line: 77, column: 1, scope: !90)
!263 = distinct !DISubprogram(name: "lookupKeyReadWithFlags", scope: !1, file: !1, line: 100, type: !91, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !264)
!264 = !{!265, !266, !267, !268}
!265 = !DILocalVariable(name: "db", arg: 1, scope: !263, file: !1, line: 100, type: !93)
!266 = !DILocalVariable(name: "key", arg: 2, scope: !263, file: !1, line: 100, type: !65)
!267 = !DILocalVariable(name: "flags", arg: 3, scope: !263, file: !1, line: 100, type: !8)
!268 = !DILocalVariable(name: "val", scope: !263, file: !1, line: 101, type: !65)
!269 = !DILocation(line: 100, column: 39, scope: !263)
!270 = !DILocation(line: 100, column: 49, scope: !263)
!271 = !DILocation(line: 100, column: 58, scope: !263)
!272 = !DILocation(line: 103, column: 9, scope: !273)
!273 = distinct !DILexicalBlock(scope: !263, file: !1, line: 103, column: 9)
!274 = !DILocation(line: 103, column: 32, scope: !273)
!275 = !DILocation(line: 103, column: 9, scope: !263)
!276 = !DILocation(line: 107, column: 20, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !1, line: 107, column: 13)
!278 = distinct !DILexicalBlock(scope: !273, file: !1, line: 103, column: 38)
!279 = !{!227, !209, i64 2464}
!280 = !DILocation(line: 107, column: 31, scope: !277)
!281 = !DILocation(line: 107, column: 13, scope: !278)
!282 = !DILocation(line: 124, column: 20, scope: !283)
!283 = distinct !DILexicalBlock(scope: !278, file: !1, line: 124, column: 13)
!284 = !{!227, !209, i64 552}
!285 = !DILocation(line: 124, column: 13, scope: !283)
!286 = !DILocation(line: 125, column: 45, scope: !283)
!287 = !DILocation(line: 125, column: 35, scope: !283)
!288 = !DILocation(line: 124, column: 35, scope: !283)
!289 = !DILocation(line: 126, column: 36, scope: !283)
!290 = !{!291, !209, i64 80}
!291 = !{!"client", !228, i64 0, !212, i64 8, !209, i64 16, !209, i64 24, !209, i64 32, !228, i64 40, !209, i64 48, !228, i64 56, !212, i64 64, !209, i64 72, !209, i64 80, !209, i64 88, !212, i64 96, !212, i64 100, !228, i64 104, !209, i64 112, !213, i64 120, !228, i64 128, !228, i64 136, !228, i64 144, !228, i64 152, !212, i64 160, !212, i64 164, !212, i64 168, !212, i64 172, !212, i64 176, !228, i64 184, !228, i64 192, !209, i64 200, !213, i64 208, !213, i64 216, !213, i64 224, !213, i64 232, !213, i64 240, !210, i64 248, !212, i64 292, !210, i64 296, !212, i64 344, !292, i64 352, !212, i64 384, !293, i64 392, !213, i64 480, !209, i64 488, !209, i64 496, !209, i64 504, !209, i64 512, !209, i64 520, !212, i64 528, !210, i64 532}
!292 = !{!"multiState", !209, i64 0, !212, i64 8, !212, i64 12, !212, i64 16, !228, i64 24}
!293 = !{!"blockingState", !213, i64 0, !209, i64 8, !209, i64 16, !228, i64 24, !209, i64 32, !209, i64 40, !213, i64 48, !213, i64 56, !212, i64 64, !212, i64 68, !213, i64 72, !209, i64 80}
!294 = !DILocation(line: 126, column: 13, scope: !283)
!295 = !DILocation(line: 126, column: 40, scope: !283)
!296 = !DILocation(line: 127, column: 41, scope: !283)
!297 = !{!298, !212, i64 32}
!298 = !{!"redisCommand", !209, i64 0, !209, i64 8, !212, i64 16, !209, i64 24, !212, i64 32, !209, i64 40, !212, i64 48, !212, i64 52, !212, i64 56, !213, i64 64, !213, i64 72}
!299 = !DILocation(line: 127, column: 47, scope: !283)
!300 = !DILocation(line: 124, column: 13, scope: !278)
!301 = !DILocation(line: 133, column: 11, scope: !263)
!302 = !DILocation(line: 101, column: 11, scope: !263)
!303 = !DILocation(line: 134, column: 13, scope: !304)
!304 = distinct !DILexicalBlock(scope: !263, file: !1, line: 134, column: 9)
!305 = !DILocation(line: 135, column: 9, scope: !304)
!306 = !DILocation(line: 0, scope: !263)
!307 = !DILocation(line: 0, scope: !308)
!308 = distinct !DILexicalBlock(scope: !277, file: !1, line: 107, column: 40)
!309 = !{!213, !213, i64 0}
!310 = !DILocation(line: 139, column: 1, scope: !263)
!311 = distinct !DISubprogram(name: "expireIfNeeded", scope: !1, file: !1, line: 1167, type: !312, isLocal: false, isDefinition: true, scopeLine: 1167, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !314)
!312 = !DISubroutineType(types: !313)
!313 = !{!8, !93, !65}
!314 = !{!315, !316}
!315 = !DILocalVariable(name: "db", arg: 1, scope: !311, file: !1, line: 1167, type: !93)
!316 = !DILocalVariable(name: "key", arg: 2, scope: !311, file: !1, line: 1167, type: !65)
!317 = !DILocation(line: 1167, column: 29, scope: !311)
!318 = !DILocation(line: 1167, column: 39, scope: !311)
!319 = !DILocation(line: 1168, column: 10, scope: !320)
!320 = distinct !DILexicalBlock(scope: !311, file: !1, line: 1168, column: 9)
!321 = !DILocation(line: 1168, column: 9, scope: !311)
!322 = !DILocation(line: 1178, column: 16, scope: !323)
!323 = distinct !DILexicalBlock(scope: !311, file: !1, line: 1178, column: 9)
!324 = !DILocation(line: 1178, column: 27, scope: !323)
!325 = !DILocation(line: 1178, column: 9, scope: !311)
!326 = !DILocation(line: 1181, column: 28, scope: !311)
!327 = !{!227, !213, i64 1024}
!328 = !DILocation(line: 1182, column: 35, scope: !311)
!329 = !{!227, !212, i64 3084}
!330 = !DILocation(line: 1182, column: 5, scope: !311)
!331 = !DILocation(line: 1184, column: 27, scope: !311)
!332 = !{!208, !212, i64 40}
!333 = !DILocation(line: 1183, column: 5, scope: !311)
!334 = !DILocation(line: 1185, column: 19, scope: !311)
!335 = !DILocation(line: 1185, column: 12, scope: !311)
!336 = !DILocation(line: 1185, column: 42, scope: !311)
!337 = !DILocalVariable(name: "db", arg: 1, scope: !338, file: !1, line: 271, type: !93)
!338 = distinct !DISubprogram(name: "dbSyncDelete", scope: !1, file: !1, line: 271, type: !312, isLocal: false, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !339)
!339 = !{!337, !340}
!340 = !DILocalVariable(name: "key", arg: 2, scope: !338, file: !1, line: 271, type: !65)
!341 = !DILocation(line: 271, column: 27, scope: !338, inlinedAt: !342)
!342 = distinct !DILocation(line: 1186, column: 42, scope: !311)
!343 = !DILocation(line: 271, column: 37, scope: !338, inlinedAt: !342)
!344 = !DILocation(line: 274, column: 9, scope: !345, inlinedAt: !342)
!345 = distinct !DILexicalBlock(scope: !338, file: !1, line: 274, column: 9)
!346 = !{!208, !209, i64 8}
!347 = !{!348, !228, i64 24}
!348 = !{!"dictht", !209, i64 0, !228, i64 8, !228, i64 16, !228, i64 24}
!349 = !DILocation(line: 274, column: 31, scope: !345, inlinedAt: !342)
!350 = !DILocation(line: 0, scope: !345, inlinedAt: !342)
!351 = !DILocation(line: 274, column: 9, scope: !338, inlinedAt: !342)
!352 = !DILocation(line: 274, column: 64, scope: !345, inlinedAt: !342)
!353 = !DILocation(line: 274, column: 36, scope: !345, inlinedAt: !342)
!354 = !DILocation(line: 275, column: 24, scope: !355, inlinedAt: !342)
!355 = distinct !DILexicalBlock(scope: !338, file: !1, line: 275, column: 9)
!356 = !DILocation(line: 275, column: 34, scope: !355, inlinedAt: !342)
!357 = !DILocation(line: 275, column: 9, scope: !355, inlinedAt: !342)
!358 = !DILocation(line: 275, column: 39, scope: !355, inlinedAt: !342)
!359 = !DILocation(line: 275, column: 9, scope: !338, inlinedAt: !342)
!360 = !DILocation(line: 276, column: 20, scope: !361, inlinedAt: !342)
!361 = distinct !DILexicalBlock(scope: !362, file: !1, line: 276, column: 13)
!362 = distinct !DILexicalBlock(scope: !355, file: !1, line: 275, column: 51)
!363 = !{!227, !212, i64 2924}
!364 = !DILocation(line: 276, column: 13, scope: !361, inlinedAt: !342)
!365 = !DILocation(line: 276, column: 13, scope: !362, inlinedAt: !342)
!366 = !DILocalVariable(name: "key", arg: 1, scope: !367, file: !1, line: 1493, type: !65)
!367 = distinct !DISubprogram(name: "slotToKeyDel", scope: !1, file: !1, line: 1493, type: !63, isLocal: false, isDefinition: true, scopeLine: 1493, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !368)
!368 = !{!366}
!369 = !DILocation(line: 1493, column: 25, scope: !367, inlinedAt: !370)
!370 = distinct !DILocation(line: 276, column: 37, scope: !361, inlinedAt: !342)
!371 = !DILocation(line: 1494, column: 5, scope: !367, inlinedAt: !370)
!372 = !DILocation(line: 276, column: 37, scope: !361, inlinedAt: !342)
!373 = !DILocation(line: 0, scope: !320)
!374 = !DILocation(line: 1187, column: 1, scope: !311)
!375 = distinct !DISubprogram(name: "lookupKeyRead", scope: !1, file: !1, line: 143, type: !376, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !378)
!376 = !DISubroutineType(types: !377)
!377 = !{!65, !93, !65}
!378 = !{!379, !380}
!379 = !DILocalVariable(name: "db", arg: 1, scope: !375, file: !1, line: 143, type: !93)
!380 = !DILocalVariable(name: "key", arg: 2, scope: !375, file: !1, line: 143, type: !65)
!381 = !DILocation(line: 143, column: 30, scope: !375)
!382 = !DILocation(line: 143, column: 40, scope: !375)
!383 = !DILocation(line: 100, column: 39, scope: !263, inlinedAt: !384)
!384 = distinct !DILocation(line: 144, column: 12, scope: !375)
!385 = !DILocation(line: 100, column: 49, scope: !263, inlinedAt: !384)
!386 = !DILocation(line: 100, column: 58, scope: !263, inlinedAt: !384)
!387 = !DILocation(line: 103, column: 9, scope: !273, inlinedAt: !384)
!388 = !DILocation(line: 103, column: 32, scope: !273, inlinedAt: !384)
!389 = !DILocation(line: 103, column: 9, scope: !263, inlinedAt: !384)
!390 = !DILocation(line: 107, column: 20, scope: !277, inlinedAt: !384)
!391 = !DILocation(line: 107, column: 31, scope: !277, inlinedAt: !384)
!392 = !DILocation(line: 107, column: 13, scope: !278, inlinedAt: !384)
!393 = !DILocation(line: 124, column: 20, scope: !283, inlinedAt: !384)
!394 = !DILocation(line: 124, column: 13, scope: !283, inlinedAt: !384)
!395 = !DILocation(line: 125, column: 45, scope: !283, inlinedAt: !384)
!396 = !DILocation(line: 125, column: 35, scope: !283, inlinedAt: !384)
!397 = !DILocation(line: 124, column: 35, scope: !283, inlinedAt: !384)
!398 = !DILocation(line: 126, column: 36, scope: !283, inlinedAt: !384)
!399 = !DILocation(line: 126, column: 13, scope: !283, inlinedAt: !384)
!400 = !DILocation(line: 126, column: 40, scope: !283, inlinedAt: !384)
!401 = !DILocation(line: 127, column: 41, scope: !283, inlinedAt: !384)
!402 = !DILocation(line: 127, column: 47, scope: !283, inlinedAt: !384)
!403 = !DILocation(line: 124, column: 13, scope: !278, inlinedAt: !384)
!404 = !DILocation(line: 133, column: 11, scope: !263, inlinedAt: !384)
!405 = !DILocation(line: 101, column: 11, scope: !263, inlinedAt: !384)
!406 = !DILocation(line: 134, column: 13, scope: !304, inlinedAt: !384)
!407 = !DILocation(line: 135, column: 9, scope: !304, inlinedAt: !384)
!408 = !DILocation(line: 0, scope: !263, inlinedAt: !384)
!409 = !DILocation(line: 0, scope: !375)
!410 = !DILocation(line: 144, column: 5, scope: !375)
!411 = distinct !DISubprogram(name: "lookupKeyWrite", scope: !1, file: !1, line: 152, type: !376, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !412)
!412 = !{!413, !414}
!413 = !DILocalVariable(name: "db", arg: 1, scope: !411, file: !1, line: 152, type: !93)
!414 = !DILocalVariable(name: "key", arg: 2, scope: !411, file: !1, line: 152, type: !65)
!415 = !DILocation(line: 152, column: 31, scope: !411)
!416 = !DILocation(line: 152, column: 41, scope: !411)
!417 = !DILocation(line: 153, column: 5, scope: !411)
!418 = !DILocation(line: 154, column: 12, scope: !411)
!419 = !DILocation(line: 154, column: 5, scope: !411)
!420 = distinct !DISubprogram(name: "lookupKeyReadOrReply", scope: !1, file: !1, line: 157, type: !421, isLocal: false, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !552)
!421 = !DISubroutineType(types: !422)
!422 = !{!65, !423, !65, !65}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !67, line: 780, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !67, line: 723, size: 135360, elements: !426)
!426 = !{!427, !428, !429, !430, !431, !433, !438, !439, !440, !441, !443, !467, !468, !469, !470, !471, !472, !474, !475, !478, !479, !480, !481, !482, !483, !484, !485, !490, !491, !492, !493, !494, !495, !496, !497, !501, !502, !506, !507, !523, !524, !541, !542, !543, !544, !545, !546, !547, !548}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !425, file: !67, line: 724, baseType: !53, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !425, file: !67, line: 725, baseType: !8, size: 32, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !425, file: !67, line: 726, baseType: !93, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !425, file: !67, line: 727, baseType: !65, size: 64, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !425, file: !67, line: 728, baseType: !432, size: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !15, line: 43, baseType: !9)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !425, file: !67, line: 729, baseType: !434, size: 64, offset: 320)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !435, line: 40, baseType: !436)
!435 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !437, line: 129, baseType: !11)
!437 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!438 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !425, file: !67, line: 730, baseType: !432, size: 64, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !425, file: !67, line: 734, baseType: !434, size: 64, offset: 448)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !425, file: !67, line: 735, baseType: !8, size: 32, offset: 512)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !425, file: !67, line: 736, baseType: !442, size: 64, offset: 576)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !425, file: !67, line: 737, baseType: !444, size: 64, offset: 640)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !67, line: 1307, size: 640, elements: !446)
!446 = !{!447, !448, !453, !454, !455, !456, !462, !463, !464, !465, !466}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !445, file: !67, line: 1308, baseType: !9, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !445, file: !67, line: 1309, baseType: !449, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !67, line: 1305, baseType: !451)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !423}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !445, file: !67, line: 1310, baseType: !8, size: 32, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !445, file: !67, line: 1311, baseType: !9, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !445, file: !67, line: 1312, baseType: !8, size: 32, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !445, file: !67, line: 1315, baseType: !457, size: 64, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !67, line: 1306, baseType: !459)
!459 = !DISubroutineType(types: !460)
!460 = !{!461, !444, !442, !8, !461}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !445, file: !67, line: 1317, baseType: !8, size: 32, offset: 384)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !445, file: !67, line: 1318, baseType: !8, size: 32, offset: 416)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !445, file: !67, line: 1319, baseType: !8, size: 32, offset: 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !445, file: !67, line: 1320, baseType: !165, size: 64, offset: 512)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !445, file: !67, line: 1320, baseType: !165, size: 64, offset: 576)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !425, file: !67, line: 737, baseType: !444, size: 64, offset: 704)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !425, file: !67, line: 738, baseType: !8, size: 32, offset: 768)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !425, file: !67, line: 739, baseType: !8, size: 32, offset: 800)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !425, file: !67, line: 740, baseType: !12, size: 64, offset: 832)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !425, file: !67, line: 741, baseType: !167, size: 64, offset: 896)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !425, file: !67, line: 742, baseType: !473, size: 64, offset: 960)
!473 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !425, file: !67, line: 743, baseType: !434, size: 64, offset: 1024)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !425, file: !67, line: 745, baseType: !476, size: 64, offset: 1088)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !477, line: 34, baseType: !12)
!477 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!478 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !425, file: !67, line: 746, baseType: !476, size: 64, offset: 1152)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !425, file: !67, line: 747, baseType: !476, size: 64, offset: 1216)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !425, file: !67, line: 748, baseType: !8, size: 32, offset: 1280)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !425, file: !67, line: 749, baseType: !8, size: 32, offset: 1312)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !425, file: !67, line: 750, baseType: !8, size: 32, offset: 1344)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !425, file: !67, line: 751, baseType: !8, size: 32, offset: 1376)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !425, file: !67, line: 752, baseType: !8, size: 32, offset: 1408)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !425, file: !67, line: 753, baseType: !486, size: 64, offset: 1472)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !487, line: 173, baseType: !488)
!487 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !437, line: 100, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !437, line: 44, baseType: !12)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !425, file: !67, line: 754, baseType: !486, size: 64, offset: 1536)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !425, file: !67, line: 755, baseType: !432, size: 64, offset: 1600)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !425, file: !67, line: 756, baseType: !165, size: 64, offset: 1664)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !425, file: !67, line: 757, baseType: !165, size: 64, offset: 1728)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !425, file: !67, line: 758, baseType: !165, size: 64, offset: 1792)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !425, file: !67, line: 759, baseType: !165, size: 64, offset: 1856)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !425, file: !67, line: 760, baseType: !165, size: 64, offset: 1920)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !425, file: !67, line: 763, baseType: !498, size: 328, offset: 1984)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 328, elements: !499)
!499 = !{!500}
!500 = !DISubrange(count: 41)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !425, file: !67, line: 764, baseType: !8, size: 32, offset: 2336)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !425, file: !67, line: 765, baseType: !503, size: 368, offset: 2368)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 368, elements: !504)
!504 = !{!505}
!505 = !DISubrange(count: 46)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !425, file: !67, line: 766, baseType: !8, size: 32, offset: 2752)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !425, file: !67, line: 767, baseType: !508, size: 256, offset: 2816)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !67, line: 673, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !67, line: 665, size: 256, elements: !510)
!510 = !{!511, !519, !520, !521, !522}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !509, file: !67, line: 666, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !67, line: 663, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !67, line: 659, size: 192, elements: !515)
!515 = !{!516, !517, !518}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !514, file: !67, line: 660, baseType: !442, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !514, file: !67, line: 661, baseType: !8, size: 32, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !514, file: !67, line: 662, baseType: !444, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !509, file: !67, line: 667, baseType: !8, size: 32, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !509, file: !67, line: 668, baseType: !8, size: 32, offset: 96)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !509, file: !67, line: 671, baseType: !8, size: 32, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !509, file: !67, line: 672, baseType: !476, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !425, file: !67, line: 768, baseType: !8, size: 32, offset: 3072)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !425, file: !67, line: 769, baseType: !525, size: 704, offset: 3136)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !67, line: 703, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !67, line: 677, size: 704, elements: !527)
!527 = !{!528, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !526, file: !67, line: 679, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !67, line: 52, baseType: !165)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !526, file: !67, line: 683, baseType: !98, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !526, file: !67, line: 685, baseType: !65, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !526, file: !67, line: 689, baseType: !434, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !526, file: !67, line: 690, baseType: !65, size: 64, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !526, file: !67, line: 691, baseType: !65, size: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !526, file: !67, line: 692, baseType: !529, size: 64, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !526, file: !67, line: 692, baseType: !529, size: 64, offset: 448)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !526, file: !67, line: 693, baseType: !8, size: 32, offset: 512)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !526, file: !67, line: 696, baseType: !8, size: 32, offset: 544)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !526, file: !67, line: 697, baseType: !165, size: 64, offset: 576)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !526, file: !67, line: 700, baseType: !4, size: 64, offset: 640)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !425, file: !67, line: 770, baseType: !165, size: 64, offset: 3840)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !425, file: !67, line: 771, baseType: !167, size: 64, offset: 3904)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !425, file: !67, line: 772, baseType: !98, size: 64, offset: 3968)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !425, file: !67, line: 773, baseType: !167, size: 64, offset: 4032)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !425, file: !67, line: 774, baseType: !432, size: 64, offset: 4096)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !425, file: !67, line: 775, baseType: !173, size: 64, offset: 4160)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !425, file: !67, line: 778, baseType: !8, size: 32, offset: 4224)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !425, file: !67, line: 779, baseType: !549, size: 131072, offset: 4256)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 131072, elements: !550)
!550 = !{!551}
!551 = !DISubrange(count: 16384)
!552 = !{!553, !554, !555, !556}
!553 = !DILocalVariable(name: "c", arg: 1, scope: !420, file: !1, line: 157, type: !423)
!554 = !DILocalVariable(name: "key", arg: 2, scope: !420, file: !1, line: 157, type: !65)
!555 = !DILocalVariable(name: "reply", arg: 3, scope: !420, file: !1, line: 157, type: !65)
!556 = !DILocalVariable(name: "o", scope: !420, file: !1, line: 158, type: !65)
!557 = !DILocation(line: 157, column: 36, scope: !420)
!558 = !DILocation(line: 157, column: 45, scope: !420)
!559 = !DILocation(line: 157, column: 56, scope: !420)
!560 = !DILocation(line: 158, column: 32, scope: !420)
!561 = !{!291, !209, i64 16}
!562 = !DILocation(line: 143, column: 30, scope: !375, inlinedAt: !563)
!563 = distinct !DILocation(line: 158, column: 15, scope: !420)
!564 = !DILocation(line: 143, column: 40, scope: !375, inlinedAt: !563)
!565 = !DILocation(line: 100, column: 39, scope: !263, inlinedAt: !566)
!566 = distinct !DILocation(line: 144, column: 12, scope: !375, inlinedAt: !563)
!567 = !DILocation(line: 100, column: 49, scope: !263, inlinedAt: !566)
!568 = !DILocation(line: 100, column: 58, scope: !263, inlinedAt: !566)
!569 = !DILocation(line: 103, column: 9, scope: !273, inlinedAt: !566)
!570 = !DILocation(line: 103, column: 32, scope: !273, inlinedAt: !566)
!571 = !DILocation(line: 103, column: 9, scope: !263, inlinedAt: !566)
!572 = !DILocation(line: 107, column: 20, scope: !277, inlinedAt: !566)
!573 = !DILocation(line: 107, column: 31, scope: !277, inlinedAt: !566)
!574 = !DILocation(line: 107, column: 13, scope: !278, inlinedAt: !566)
!575 = !DILocation(line: 124, column: 20, scope: !283, inlinedAt: !566)
!576 = !DILocation(line: 124, column: 13, scope: !283, inlinedAt: !566)
!577 = !DILocation(line: 125, column: 45, scope: !283, inlinedAt: !566)
!578 = !DILocation(line: 125, column: 35, scope: !283, inlinedAt: !566)
!579 = !DILocation(line: 124, column: 35, scope: !283, inlinedAt: !566)
!580 = !DILocation(line: 126, column: 36, scope: !283, inlinedAt: !566)
!581 = !DILocation(line: 126, column: 13, scope: !283, inlinedAt: !566)
!582 = !DILocation(line: 126, column: 40, scope: !283, inlinedAt: !566)
!583 = !DILocation(line: 127, column: 41, scope: !283, inlinedAt: !566)
!584 = !DILocation(line: 127, column: 47, scope: !283, inlinedAt: !566)
!585 = !DILocation(line: 124, column: 13, scope: !278, inlinedAt: !566)
!586 = !DILocation(line: 133, column: 11, scope: !263, inlinedAt: !566)
!587 = !DILocation(line: 101, column: 11, scope: !263, inlinedAt: !566)
!588 = !DILocation(line: 134, column: 13, scope: !304, inlinedAt: !566)
!589 = !DILocation(line: 134, column: 9, scope: !263, inlinedAt: !566)
!590 = !DILocation(line: 137, column: 34, scope: !304, inlinedAt: !566)
!591 = !{!227, !213, i64 1056}
!592 = !DILocation(line: 158, column: 11, scope: !420)
!593 = !DILocation(line: 0, scope: !420)
!594 = !{!227, !213, i64 1064}
!595 = !DILocation(line: 159, column: 13, scope: !596)
!596 = distinct !DILexicalBlock(scope: !420, file: !1, line: 159, column: 9)
!597 = !DILocation(line: 160, column: 5, scope: !420)
!598 = distinct !DISubprogram(name: "lookupKeyWriteOrReply", scope: !1, file: !1, line: 163, type: !421, isLocal: false, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !599)
!599 = !{!600, !601, !602, !603}
!600 = !DILocalVariable(name: "c", arg: 1, scope: !598, file: !1, line: 163, type: !423)
!601 = !DILocalVariable(name: "key", arg: 2, scope: !598, file: !1, line: 163, type: !65)
!602 = !DILocalVariable(name: "reply", arg: 3, scope: !598, file: !1, line: 163, type: !65)
!603 = !DILocalVariable(name: "o", scope: !598, file: !1, line: 164, type: !65)
!604 = !DILocation(line: 163, column: 37, scope: !598)
!605 = !DILocation(line: 163, column: 46, scope: !598)
!606 = !DILocation(line: 163, column: 57, scope: !598)
!607 = !DILocation(line: 164, column: 33, scope: !598)
!608 = !DILocation(line: 152, column: 31, scope: !411, inlinedAt: !609)
!609 = distinct !DILocation(line: 164, column: 15, scope: !598)
!610 = !DILocation(line: 152, column: 41, scope: !411, inlinedAt: !609)
!611 = !DILocation(line: 153, column: 5, scope: !411, inlinedAt: !609)
!612 = !DILocation(line: 154, column: 12, scope: !411, inlinedAt: !609)
!613 = !DILocation(line: 164, column: 11, scope: !598)
!614 = !DILocation(line: 165, column: 10, scope: !615)
!615 = distinct !DILexicalBlock(scope: !598, file: !1, line: 165, column: 9)
!616 = !DILocation(line: 165, column: 9, scope: !598)
!617 = !DILocation(line: 165, column: 13, scope: !615)
!618 = !DILocation(line: 166, column: 5, scope: !598)
!619 = distinct !DISubprogram(name: "dbAdd", scope: !1, file: !1, line: 173, type: !620, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !622)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !93, !65, !65}
!622 = !{!623, !624, !625, !626, !627}
!623 = !DILocalVariable(name: "db", arg: 1, scope: !619, file: !1, line: 173, type: !93)
!624 = !DILocalVariable(name: "key", arg: 2, scope: !619, file: !1, line: 173, type: !65)
!625 = !DILocalVariable(name: "val", arg: 3, scope: !619, file: !1, line: 173, type: !65)
!626 = !DILocalVariable(name: "copy", scope: !619, file: !1, line: 174, type: !432)
!627 = !DILocalVariable(name: "retval", scope: !619, file: !1, line: 175, type: !8)
!628 = !DILocation(line: 173, column: 21, scope: !619)
!629 = !DILocation(line: 173, column: 31, scope: !619)
!630 = !DILocation(line: 173, column: 42, scope: !619)
!631 = !DILocation(line: 174, column: 28, scope: !619)
!632 = !DILocation(line: 174, column: 16, scope: !619)
!633 = !DILocation(line: 174, column: 9, scope: !619)
!634 = !DILocation(line: 175, column: 30, scope: !619)
!635 = !DILocation(line: 175, column: 42, scope: !619)
!636 = !DILocation(line: 175, column: 18, scope: !619)
!637 = !DILocation(line: 175, column: 9, scope: !619)
!638 = !DILocation(line: 177, column: 5, scope: !619)
!639 = !DILocation(line: 178, column: 14, scope: !640)
!640 = distinct !DILexicalBlock(scope: !619, file: !1, line: 178, column: 9)
!641 = !DILocation(line: 178, column: 31, scope: !640)
!642 = !DILocation(line: 180, column: 9, scope: !640)
!643 = !DILocation(line: 181, column: 16, scope: !644)
!644 = distinct !DILexicalBlock(scope: !619, file: !1, line: 181, column: 9)
!645 = !DILocation(line: 181, column: 9, scope: !644)
!646 = !DILocation(line: 181, column: 9, scope: !619)
!647 = !DILocalVariable(name: "key", arg: 1, scope: !648, file: !1, line: 1489, type: !65)
!648 = distinct !DISubprogram(name: "slotToKeyAdd", scope: !1, file: !1, line: 1489, type: !63, isLocal: false, isDefinition: true, scopeLine: 1489, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !649)
!649 = !{!647}
!650 = !DILocation(line: 1489, column: 25, scope: !648, inlinedAt: !651)
!651 = distinct !DILocation(line: 181, column: 33, scope: !644)
!652 = !DILocation(line: 1490, column: 5, scope: !648, inlinedAt: !651)
!653 = !DILocation(line: 181, column: 33, scope: !644)
!654 = !DILocation(line: 182, column: 1, scope: !619)
!655 = !DILocation(line: 1489, column: 25, scope: !648)
!656 = !DILocation(line: 1490, column: 5, scope: !648)
!657 = !DILocation(line: 1491, column: 1, scope: !648)
!658 = distinct !DISubprogram(name: "dbOverwrite", scope: !1, file: !1, line: 189, type: !620, isLocal: false, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !659)
!659 = !{!660, !661, !662, !663, !664, !665}
!660 = !DILocalVariable(name: "db", arg: 1, scope: !658, file: !1, line: 189, type: !93)
!661 = !DILocalVariable(name: "key", arg: 2, scope: !658, file: !1, line: 189, type: !65)
!662 = !DILocalVariable(name: "val", arg: 3, scope: !658, file: !1, line: 189, type: !65)
!663 = !DILocalVariable(name: "de", scope: !658, file: !1, line: 190, type: !136)
!664 = !DILocalVariable(name: "auxentry", scope: !658, file: !1, line: 193, type: !137)
!665 = !DILocalVariable(name: "old", scope: !658, file: !1, line: 194, type: !65)
!666 = !DILocation(line: 189, column: 27, scope: !658)
!667 = !DILocation(line: 189, column: 37, scope: !658)
!668 = !DILocation(line: 189, column: 48, scope: !658)
!669 = !DILocation(line: 190, column: 34, scope: !658)
!670 = !DILocation(line: 190, column: 44, scope: !658)
!671 = !DILocation(line: 190, column: 21, scope: !658)
!672 = !DILocation(line: 190, column: 16, scope: !658)
!673 = !DILocation(line: 192, column: 5, scope: !658)
!674 = !DILocation(line: 193, column: 15, scope: !658)
!675 = !DILocation(line: 193, column: 26, scope: !658)
!676 = !DILocation(line: 194, column: 17, scope: !658)
!677 = !DILocation(line: 194, column: 11, scope: !658)
!678 = !DILocation(line: 195, column: 16, scope: !679)
!679 = distinct !DILexicalBlock(scope: !658, file: !1, line: 195, column: 9)
!680 = !DILocation(line: 195, column: 33, scope: !679)
!681 = !DILocation(line: 195, column: 9, scope: !658)
!682 = !DILocation(line: 196, column: 25, scope: !683)
!683 = distinct !DILexicalBlock(scope: !679, file: !1, line: 195, column: 55)
!684 = !DILocation(line: 196, column: 18, scope: !683)
!685 = !DILocation(line: 196, column: 14, scope: !683)
!686 = !DILocation(line: 197, column: 5, scope: !683)
!687 = !DILocation(line: 198, column: 5, scope: !688)
!688 = distinct !DILexicalBlock(scope: !689, file: !1, line: 198, column: 5)
!689 = distinct !DILexicalBlock(scope: !658, file: !1, line: 198, column: 5)
!690 = !{!691, !209, i64 0}
!691 = !{!"dict", !209, i64 0, !209, i64 8, !210, i64 16, !228, i64 80, !228, i64 88}
!692 = !{!693, !209, i64 16}
!693 = !{!"dictType", !209, i64 0, !209, i64 8, !209, i64 16, !209, i64 24, !209, i64 32, !209, i64 40}
!694 = !DILocation(line: 198, column: 5, scope: !689)
!695 = !{!691, !209, i64 8}
!696 = !DILocation(line: 200, column: 16, scope: !697)
!697 = distinct !DILexicalBlock(scope: !658, file: !1, line: 200, column: 9)
!698 = !{!227, !212, i64 3088}
!699 = !DILocation(line: 200, column: 9, scope: !697)
!700 = !DILocation(line: 200, column: 9, scope: !658)
!701 = !DILocation(line: 201, column: 9, scope: !702)
!702 = distinct !DILexicalBlock(scope: !697, file: !1, line: 200, column: 42)
!703 = !DILocation(line: 202, column: 9, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !1, line: 202, column: 9)
!705 = distinct !DILexicalBlock(scope: !702, file: !1, line: 202, column: 9)
!706 = !DILocation(line: 202, column: 9, scope: !705)
!707 = !DILocation(line: 0, scope: !658)
!708 = !DILocation(line: 205, column: 5, scope: !709)
!709 = distinct !DILexicalBlock(scope: !658, file: !1, line: 205, column: 5)
!710 = !{!693, !209, i64 40}
!711 = !DILocation(line: 205, column: 5, scope: !658)
!712 = !DILocation(line: 206, column: 1, scope: !658)
!713 = distinct !DISubprogram(name: "setKey", scope: !1, file: !1, line: 216, type: !620, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !714)
!714 = !{!715, !716, !717}
!715 = !DILocalVariable(name: "db", arg: 1, scope: !713, file: !1, line: 216, type: !93)
!716 = !DILocalVariable(name: "key", arg: 2, scope: !713, file: !1, line: 216, type: !65)
!717 = !DILocalVariable(name: "val", arg: 3, scope: !713, file: !1, line: 216, type: !65)
!718 = !DILocation(line: 216, column: 22, scope: !713)
!719 = !DILocation(line: 216, column: 32, scope: !713)
!720 = !DILocation(line: 216, column: 43, scope: !713)
!721 = !DILocation(line: 152, column: 31, scope: !411, inlinedAt: !722)
!722 = distinct !DILocation(line: 217, column: 9, scope: !723)
!723 = distinct !DILexicalBlock(scope: !713, file: !1, line: 217, column: 9)
!724 = !DILocation(line: 152, column: 41, scope: !411, inlinedAt: !722)
!725 = !DILocation(line: 153, column: 5, scope: !411, inlinedAt: !722)
!726 = !DILocation(line: 154, column: 12, scope: !411, inlinedAt: !722)
!727 = !DILocation(line: 217, column: 32, scope: !723)
!728 = !DILocation(line: 217, column: 9, scope: !713)
!729 = !DILocation(line: 218, column: 9, scope: !730)
!730 = distinct !DILexicalBlock(scope: !723, file: !1, line: 217, column: 41)
!731 = !DILocation(line: 219, column: 5, scope: !730)
!732 = !DILocation(line: 220, column: 9, scope: !733)
!733 = distinct !DILexicalBlock(scope: !723, file: !1, line: 219, column: 12)
!734 = !DILocation(line: 222, column: 5, scope: !713)
!735 = !DILocalVariable(name: "db", arg: 1, scope: !736, file: !1, line: 1065, type: !93)
!736 = distinct !DISubprogram(name: "removeExpire", scope: !1, file: !1, line: 1065, type: !312, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !737)
!737 = !{!735, !738}
!738 = !DILocalVariable(name: "key", arg: 2, scope: !736, file: !1, line: 1065, type: !65)
!739 = !DILocation(line: 1065, column: 27, scope: !736, inlinedAt: !740)
!740 = distinct !DILocation(line: 223, column: 5, scope: !713)
!741 = !DILocation(line: 1065, column: 37, scope: !736, inlinedAt: !740)
!742 = !DILocation(line: 1068, column: 5, scope: !736, inlinedAt: !740)
!743 = !DILocation(line: 1069, column: 27, scope: !736, inlinedAt: !740)
!744 = !DILocation(line: 1069, column: 40, scope: !736, inlinedAt: !740)
!745 = !DILocation(line: 1069, column: 12, scope: !736, inlinedAt: !740)
!746 = !DILocalVariable(name: "db", arg: 1, scope: !747, file: !1, line: 395, type: !93)
!747 = distinct !DISubprogram(name: "signalModifiedKey", scope: !1, file: !1, line: 395, type: !748, isLocal: false, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !750)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !93, !65}
!750 = !{!746, !751}
!751 = !DILocalVariable(name: "key", arg: 2, scope: !747, file: !1, line: 395, type: !65)
!752 = !DILocation(line: 395, column: 33, scope: !747, inlinedAt: !753)
!753 = distinct !DILocation(line: 224, column: 5, scope: !713)
!754 = !DILocation(line: 395, column: 43, scope: !747, inlinedAt: !753)
!755 = !DILocation(line: 396, column: 5, scope: !747, inlinedAt: !753)
!756 = !DILocation(line: 225, column: 1, scope: !713)
!757 = !DILocation(line: 1065, column: 27, scope: !736)
!758 = !DILocation(line: 1065, column: 37, scope: !736)
!759 = !DILocation(line: 1068, column: 5, scope: !736)
!760 = !DILocation(line: 1069, column: 27, scope: !736)
!761 = !DILocation(line: 1069, column: 40, scope: !736)
!762 = !DILocation(line: 1069, column: 12, scope: !736)
!763 = !DILocation(line: 1069, column: 45, scope: !736)
!764 = !DILocation(line: 1069, column: 5, scope: !736)
!765 = !DILocation(line: 395, column: 33, scope: !747)
!766 = !DILocation(line: 395, column: 43, scope: !747)
!767 = !DILocation(line: 396, column: 5, scope: !747)
!768 = !DILocation(line: 397, column: 1, scope: !747)
!769 = distinct !DISubprogram(name: "dbExists", scope: !1, file: !1, line: 227, type: !312, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !770)
!770 = !{!771, !772}
!771 = !DILocalVariable(name: "db", arg: 1, scope: !769, file: !1, line: 227, type: !93)
!772 = !DILocalVariable(name: "key", arg: 2, scope: !769, file: !1, line: 227, type: !65)
!773 = !DILocation(line: 227, column: 23, scope: !769)
!774 = !DILocation(line: 227, column: 33, scope: !769)
!775 = !DILocation(line: 228, column: 25, scope: !769)
!776 = !DILocation(line: 228, column: 35, scope: !769)
!777 = !DILocation(line: 228, column: 12, scope: !769)
!778 = !DILocation(line: 228, column: 40, scope: !769)
!779 = !DILocation(line: 228, column: 5, scope: !769)
!780 = distinct !DISubprogram(name: "dbRandomKey", scope: !1, file: !1, line: 235, type: !781, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !783)
!781 = !DISubroutineType(types: !782)
!782 = !{!65, !93}
!783 = !{!784, !785, !786, !787, !788, !790}
!784 = !DILocalVariable(name: "db", arg: 1, scope: !780, file: !1, line: 235, type: !93)
!785 = !DILocalVariable(name: "de", scope: !780, file: !1, line: 236, type: !136)
!786 = !DILocalVariable(name: "maxtries", scope: !780, file: !1, line: 237, type: !8)
!787 = !DILocalVariable(name: "allvolatile", scope: !780, file: !1, line: 238, type: !8)
!788 = !DILocalVariable(name: "key", scope: !789, file: !1, line: 241, type: !432)
!789 = distinct !DILexicalBlock(scope: !780, file: !1, line: 240, column: 14)
!790 = !DILocalVariable(name: "keyobj", scope: !789, file: !1, line: 242, type: !65)
!791 = !DILocation(line: 235, column: 28, scope: !780)
!792 = !DILocation(line: 237, column: 9, scope: !780)
!793 = !DILocation(line: 238, column: 23, scope: !780)
!794 = !DILocation(line: 238, column: 45, scope: !780)
!795 = !DILocation(line: 238, column: 42, scope: !780)
!796 = !DILocation(line: 244, column: 14, scope: !789)
!797 = !DILocation(line: 236, column: 16, scope: !780)
!798 = !DILocation(line: 245, column: 16, scope: !799)
!799 = distinct !DILexicalBlock(scope: !789, file: !1, line: 245, column: 13)
!800 = !DILocation(line: 245, column: 13, scope: !789)
!801 = !DILocation(line: 247, column: 15, scope: !789)
!802 = !{!803, !209, i64 0}
!803 = !{!"dictEntry", !209, i64 0, !210, i64 8, !209, i64 16}
!804 = !DILocation(line: 241, column: 13, scope: !789)
!805 = !DILocalVariable(name: "s", arg: 1, scope: !806, file: !15, line: 87, type: !811)
!806 = distinct !DISubprogram(name: "sdslen", scope: !15, file: !15, line: 87, type: !807, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !812)
!807 = !DISubroutineType(types: !808)
!808 = !{!809, !811}
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !810, line: 58, baseType: !11)
!810 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!812 = !{!805, !813}
!813 = !DILocalVariable(name: "flags", scope: !806, file: !15, line: 88, type: !22)
!814 = !DILocation(line: 87, column: 39, scope: !806, inlinedAt: !815)
!815 = distinct !DILocation(line: 248, column: 41, scope: !789)
!816 = !DILocation(line: 88, column: 27, scope: !806, inlinedAt: !815)
!817 = !DILocation(line: 88, column: 19, scope: !806, inlinedAt: !815)
!818 = !DILocation(line: 89, column: 5, scope: !806, inlinedAt: !815)
!819 = !DILocation(line: 91, column: 20, scope: !820, inlinedAt: !815)
!820 = distinct !DILexicalBlock(scope: !806, file: !15, line: 89, column: 33)
!821 = !DILocation(line: 91, column: 13, scope: !820, inlinedAt: !815)
!822 = !DILocation(line: 93, column: 20, scope: !820, inlinedAt: !815)
!823 = !DILocation(line: 93, column: 34, scope: !820, inlinedAt: !815)
!824 = !DILocation(line: 93, column: 13, scope: !820, inlinedAt: !815)
!825 = !DILocation(line: 95, column: 20, scope: !820, inlinedAt: !815)
!826 = !DILocation(line: 95, column: 35, scope: !820, inlinedAt: !815)
!827 = !{!828, !828, i64 0}
!828 = !{!"short", !210, i64 0}
!829 = !DILocation(line: 95, column: 13, scope: !820, inlinedAt: !815)
!830 = !DILocation(line: 97, column: 20, scope: !820, inlinedAt: !815)
!831 = !DILocation(line: 97, column: 35, scope: !820, inlinedAt: !815)
!832 = !{!212, !212, i64 0}
!833 = !DILocation(line: 97, column: 13, scope: !820, inlinedAt: !815)
!834 = !DILocation(line: 99, column: 20, scope: !820, inlinedAt: !815)
!835 = !DILocation(line: 99, column: 35, scope: !820, inlinedAt: !815)
!836 = !{!228, !228, i64 0}
!837 = !DILocation(line: 99, column: 13, scope: !820, inlinedAt: !815)
!838 = !DILocation(line: 0, scope: !820, inlinedAt: !815)
!839 = !DILocation(line: 248, column: 18, scope: !789)
!840 = !DILocation(line: 242, column: 15, scope: !789)
!841 = !DILocation(line: 249, column: 26, scope: !842)
!842 = distinct !DILexicalBlock(scope: !789, file: !1, line: 249, column: 13)
!843 = !DILocation(line: 249, column: 13, scope: !842)
!844 = !DILocation(line: 249, column: 13, scope: !789)
!845 = !DILocation(line: 250, column: 39, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !1, line: 250, column: 17)
!847 = distinct !DILexicalBlock(scope: !842, file: !1, line: 249, column: 40)
!848 = !DILocation(line: 250, column: 32, scope: !846)
!849 = !DILocation(line: 250, column: 29, scope: !846)
!850 = !DILocation(line: 250, column: 53, scope: !846)
!851 = !DILocation(line: 250, column: 64, scope: !846)
!852 = !DILocation(line: 250, column: 17, scope: !847)
!853 = !DILocation(line: 0, scope: !780)
!854 = !DILocation(line: 261, column: 17, scope: !855)
!855 = distinct !DILexicalBlock(scope: !847, file: !1, line: 261, column: 17)
!856 = !DILocation(line: 261, column: 17, scope: !847)
!857 = !DILocation(line: 262, column: 17, scope: !858)
!858 = distinct !DILexicalBlock(scope: !855, file: !1, line: 261, column: 44)
!859 = !DILocation(line: 244, column: 35, scope: !789)
!860 = !DILocation(line: 268, column: 1, scope: !780)
!861 = !DILocation(line: 271, column: 27, scope: !338)
!862 = !DILocation(line: 271, column: 37, scope: !338)
!863 = !DILocation(line: 274, column: 9, scope: !345)
!864 = !DILocation(line: 274, column: 31, scope: !345)
!865 = !DILocation(line: 0, scope: !345)
!866 = !DILocation(line: 274, column: 9, scope: !338)
!867 = !DILocation(line: 274, column: 64, scope: !345)
!868 = !DILocation(line: 274, column: 36, scope: !345)
!869 = !DILocation(line: 275, column: 24, scope: !355)
!870 = !DILocation(line: 275, column: 34, scope: !355)
!871 = !DILocation(line: 275, column: 9, scope: !355)
!872 = !DILocation(line: 275, column: 39, scope: !355)
!873 = !DILocation(line: 275, column: 9, scope: !338)
!874 = !DILocation(line: 276, column: 20, scope: !361)
!875 = !DILocation(line: 276, column: 13, scope: !361)
!876 = !DILocation(line: 276, column: 13, scope: !362)
!877 = !DILocation(line: 1493, column: 25, scope: !367, inlinedAt: !878)
!878 = distinct !DILocation(line: 276, column: 37, scope: !361)
!879 = !DILocation(line: 1494, column: 5, scope: !367, inlinedAt: !878)
!880 = !DILocation(line: 276, column: 37, scope: !361)
!881 = !DILocation(line: 0, scope: !882)
!882 = distinct !DILexicalBlock(scope: !355, file: !1, line: 278, column: 12)
!883 = !DILocation(line: 281, column: 1, scope: !338)
!884 = !DILocation(line: 1493, column: 25, scope: !367)
!885 = !DILocation(line: 1494, column: 5, scope: !367)
!886 = !DILocation(line: 1495, column: 1, scope: !367)
!887 = distinct !DISubprogram(name: "dbDelete", scope: !1, file: !1, line: 285, type: !312, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !888)
!888 = !{!889, !890}
!889 = !DILocalVariable(name: "db", arg: 1, scope: !887, file: !1, line: 285, type: !93)
!890 = !DILocalVariable(name: "key", arg: 2, scope: !887, file: !1, line: 285, type: !65)
!891 = !DILocation(line: 285, column: 23, scope: !887)
!892 = !DILocation(line: 285, column: 33, scope: !887)
!893 = !DILocation(line: 286, column: 19, scope: !887)
!894 = !DILocation(line: 286, column: 12, scope: !887)
!895 = !DILocation(line: 286, column: 46, scope: !887)
!896 = !DILocation(line: 271, column: 27, scope: !338, inlinedAt: !897)
!897 = distinct !DILocation(line: 287, column: 46, scope: !887)
!898 = !DILocation(line: 271, column: 37, scope: !338, inlinedAt: !897)
!899 = !DILocation(line: 274, column: 9, scope: !345, inlinedAt: !897)
!900 = !DILocation(line: 274, column: 31, scope: !345, inlinedAt: !897)
!901 = !DILocation(line: 0, scope: !345, inlinedAt: !897)
!902 = !DILocation(line: 274, column: 9, scope: !338, inlinedAt: !897)
!903 = !DILocation(line: 274, column: 64, scope: !345, inlinedAt: !897)
!904 = !DILocation(line: 274, column: 36, scope: !345, inlinedAt: !897)
!905 = !DILocation(line: 275, column: 24, scope: !355, inlinedAt: !897)
!906 = !DILocation(line: 275, column: 34, scope: !355, inlinedAt: !897)
!907 = !DILocation(line: 275, column: 9, scope: !355, inlinedAt: !897)
!908 = !DILocation(line: 275, column: 39, scope: !355, inlinedAt: !897)
!909 = !DILocation(line: 275, column: 9, scope: !338, inlinedAt: !897)
!910 = !DILocation(line: 276, column: 20, scope: !361, inlinedAt: !897)
!911 = !DILocation(line: 276, column: 13, scope: !361, inlinedAt: !897)
!912 = !DILocation(line: 276, column: 13, scope: !362, inlinedAt: !897)
!913 = !DILocation(line: 1493, column: 25, scope: !367, inlinedAt: !914)
!914 = distinct !DILocation(line: 276, column: 37, scope: !361, inlinedAt: !897)
!915 = !DILocation(line: 1494, column: 5, scope: !367, inlinedAt: !914)
!916 = !DILocation(line: 276, column: 37, scope: !361, inlinedAt: !897)
!917 = !DILocation(line: 286, column: 5, scope: !887)
!918 = distinct !DISubprogram(name: "dbUnshareStringValue", scope: !1, file: !1, line: 317, type: !919, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !921)
!919 = !DISubroutineType(types: !920)
!920 = !{!65, !93, !65, !65}
!921 = !{!922, !923, !924, !925}
!922 = !DILocalVariable(name: "db", arg: 1, scope: !918, file: !1, line: 317, type: !93)
!923 = !DILocalVariable(name: "key", arg: 2, scope: !918, file: !1, line: 317, type: !65)
!924 = !DILocalVariable(name: "o", arg: 3, scope: !918, file: !1, line: 317, type: !65)
!925 = !DILocalVariable(name: "decoded", scope: !926, file: !1, line: 320, type: !65)
!926 = distinct !DILexicalBlock(scope: !927, file: !1, line: 319, column: 62)
!927 = distinct !DILexicalBlock(scope: !918, file: !1, line: 319, column: 9)
!928 = !DILocation(line: 317, column: 37, scope: !918)
!929 = !DILocation(line: 317, column: 47, scope: !918)
!930 = !DILocation(line: 317, column: 58, scope: !918)
!931 = !DILocation(line: 318, column: 5, scope: !918)
!932 = !DILocation(line: 319, column: 12, scope: !927)
!933 = !{!216, !212, i64 4}
!934 = !DILocation(line: 319, column: 21, scope: !927)
!935 = !DILocation(line: 319, column: 32, scope: !927)
!936 = !DILocation(line: 319, column: 41, scope: !927)
!937 = !DILocation(line: 319, column: 26, scope: !927)
!938 = !DILocation(line: 320, column: 25, scope: !926)
!939 = !DILocation(line: 320, column: 15, scope: !926)
!940 = !DILocation(line: 321, column: 44, scope: !926)
!941 = !DILocation(line: 87, column: 39, scope: !806, inlinedAt: !942)
!942 = distinct !DILocation(line: 321, column: 49, scope: !926)
!943 = !DILocation(line: 88, column: 27, scope: !806, inlinedAt: !942)
!944 = !DILocation(line: 88, column: 19, scope: !806, inlinedAt: !942)
!945 = !DILocation(line: 89, column: 5, scope: !806, inlinedAt: !942)
!946 = !DILocation(line: 91, column: 20, scope: !820, inlinedAt: !942)
!947 = !DILocation(line: 91, column: 13, scope: !820, inlinedAt: !942)
!948 = !DILocation(line: 93, column: 20, scope: !820, inlinedAt: !942)
!949 = !DILocation(line: 93, column: 34, scope: !820, inlinedAt: !942)
!950 = !DILocation(line: 93, column: 13, scope: !820, inlinedAt: !942)
!951 = !DILocation(line: 95, column: 20, scope: !820, inlinedAt: !942)
!952 = !DILocation(line: 95, column: 35, scope: !820, inlinedAt: !942)
!953 = !DILocation(line: 95, column: 13, scope: !820, inlinedAt: !942)
!954 = !DILocation(line: 97, column: 20, scope: !820, inlinedAt: !942)
!955 = !DILocation(line: 97, column: 35, scope: !820, inlinedAt: !942)
!956 = !DILocation(line: 97, column: 13, scope: !820, inlinedAt: !942)
!957 = !DILocation(line: 99, column: 20, scope: !820, inlinedAt: !942)
!958 = !DILocation(line: 99, column: 35, scope: !820, inlinedAt: !942)
!959 = !DILocation(line: 99, column: 13, scope: !820, inlinedAt: !942)
!960 = !DILocation(line: 0, scope: !820, inlinedAt: !942)
!961 = !DILocation(line: 321, column: 13, scope: !926)
!962 = !DILocation(line: 322, column: 9, scope: !926)
!963 = !DILocation(line: 323, column: 9, scope: !926)
!964 = !DILocation(line: 324, column: 5, scope: !926)
!965 = !DILocation(line: 325, column: 5, scope: !918)
!966 = distinct !DISubprogram(name: "emptyDb", scope: !1, file: !1, line: 342, type: !967, isLocal: false, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !969)
!967 = !DISubroutineType(types: !968)
!968 = !{!165, !8, !8, !187}
!969 = !{!970, !971, !972, !973, !974, !975, !976, !977}
!970 = !DILocalVariable(name: "dbnum", arg: 1, scope: !966, file: !1, line: 342, type: !8)
!971 = !DILocalVariable(name: "flags", arg: 2, scope: !966, file: !1, line: 342, type: !8)
!972 = !DILocalVariable(name: "callback", arg: 3, scope: !966, file: !1, line: 342, type: !187)
!973 = !DILocalVariable(name: "async", scope: !966, file: !1, line: 343, type: !8)
!974 = !DILocalVariable(name: "removed", scope: !966, file: !1, line: 344, type: !165)
!975 = !DILocalVariable(name: "startdb", scope: !966, file: !1, line: 351, type: !8)
!976 = !DILocalVariable(name: "enddb", scope: !966, file: !1, line: 351, type: !8)
!977 = !DILocalVariable(name: "j", scope: !978, file: !1, line: 359, type: !8)
!978 = distinct !DILexicalBlock(scope: !966, file: !1, line: 359, column: 5)
!979 = !DILocation(line: 342, column: 23, scope: !966)
!980 = !DILocation(line: 342, column: 34, scope: !966)
!981 = !DILocation(line: 342, column: 46, scope: !966)
!982 = !DILocation(line: 343, column: 24, scope: !966)
!983 = !DILocation(line: 343, column: 9, scope: !966)
!984 = !DILocation(line: 344, column: 15, scope: !966)
!985 = !DILocation(line: 346, column: 15, scope: !986)
!986 = distinct !DILexicalBlock(scope: !966, file: !1, line: 346, column: 9)
!987 = !DILocation(line: 346, column: 20, scope: !986)
!988 = !DILocation(line: 346, column: 39, scope: !986)
!989 = !{!227, !212, i64 1792}
!990 = !DILocation(line: 346, column: 29, scope: !986)
!991 = !DILocation(line: 346, column: 9, scope: !966)
!992 = !DILocation(line: 347, column: 9, scope: !993)
!993 = distinct !DILexicalBlock(scope: !986, file: !1, line: 346, column: 46)
!994 = !DILocation(line: 347, column: 15, scope: !993)
!995 = !DILocation(line: 348, column: 9, scope: !993)
!996 = !DILocation(line: 352, column: 15, scope: !997)
!997 = distinct !DILexicalBlock(scope: !966, file: !1, line: 352, column: 9)
!998 = !DILocation(line: 351, column: 9, scope: !966)
!999 = !DILocation(line: 354, column: 29, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !997, file: !1, line: 352, column: 22)
!1001 = !DILocation(line: 351, column: 18, scope: !966)
!1002 = !DILocation(line: 352, column: 9, scope: !966)
!1003 = !DILocation(line: 359, column: 14, scope: !978)
!1004 = !DILocation(line: 359, column: 29, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !978, file: !1, line: 359, column: 5)
!1006 = !DILocation(line: 359, column: 5, scope: !978)
!1007 = !DILocation(line: 0, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1005, file: !1, line: 359, column: 44)
!1009 = !DILocation(line: 368, column: 16, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !966, file: !1, line: 368, column: 9)
!1011 = !DILocation(line: 368, column: 9, scope: !1010)
!1012 = !DILocation(line: 368, column: 9, scope: !966)
!1013 = !DILocation(line: 360, column: 20, scope: !1008)
!1014 = !{!227, !209, i64 48}
!1015 = !DILocation(line: 360, column: 17, scope: !1008)
!1016 = !DILocation(line: 361, column: 13, scope: !1008)
!1017 = !DILocation(line: 362, column: 13, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !1, line: 361, column: 20)
!1019 = distinct !DILexicalBlock(scope: !1008, file: !1, line: 361, column: 13)
!1020 = !DILocation(line: 363, column: 9, scope: !1018)
!1021 = !DILocation(line: 364, column: 13, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1019, file: !1, line: 363, column: 16)
!1023 = !DILocation(line: 365, column: 30, scope: !1022)
!1024 = !DILocation(line: 365, column: 36, scope: !1022)
!1025 = !DILocation(line: 365, column: 13, scope: !1022)
!1026 = !DILocation(line: 359, column: 40, scope: !1005)
!1027 = distinct !{!1027, !1006, !1028}
!1028 = !DILocation(line: 367, column: 5, scope: !978)
!1029 = !DILocation(line: 369, column: 13, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !1, line: 369, column: 13)
!1031 = distinct !DILexicalBlock(scope: !1010, file: !1, line: 368, column: 33)
!1032 = !DILocation(line: 369, column: 13, scope: !1031)
!1033 = !DILocation(line: 370, column: 13, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 369, column: 20)
!1035 = !DILocation(line: 371, column: 9, scope: !1034)
!1036 = !DILocation(line: 1498, column: 20, scope: !1037, inlinedAt: !1040)
!1037 = distinct !DISubprogram(name: "slotToKeyFlush", scope: !1, file: !1, line: 1497, type: !1038, isLocal: false, isDefinition: true, scopeLine: 1497, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{null}
!1040 = distinct !DILocation(line: 372, column: 13, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 371, column: 16)
!1042 = !{!227, !209, i64 2944}
!1043 = !DILocation(line: 1498, column: 29, scope: !1037, inlinedAt: !1040)
!1044 = !{!1045, !209, i64 524328}
!1045 = !{!"clusterState", !209, i64 0, !228, i64 8, !212, i64 16, !212, i64 20, !209, i64 24, !209, i64 32, !210, i64 40, !210, i64 131112, !210, i64 262184, !210, i64 393256, !209, i64 524328, !213, i64 524336, !212, i64 524344, !212, i64 524348, !212, i64 524352, !228, i64 524360, !212, i64 524368, !213, i64 524376, !209, i64 524384, !213, i64 524392, !212, i64 524400, !228, i64 524408, !212, i64 524416, !210, i64 524424, !210, i64 524504, !213, i64 524584}
!1046 = !DILocation(line: 1498, column: 5, scope: !1037, inlinedAt: !1040)
!1047 = !DILocation(line: 1499, column: 37, scope: !1037, inlinedAt: !1040)
!1048 = !DILocation(line: 1499, column: 12, scope: !1037, inlinedAt: !1040)
!1049 = !DILocation(line: 1499, column: 21, scope: !1037, inlinedAt: !1040)
!1050 = !DILocation(line: 1499, column: 35, scope: !1037, inlinedAt: !1040)
!1051 = !DILocation(line: 1500, column: 12, scope: !1037, inlinedAt: !1040)
!1052 = !DILocation(line: 1500, column: 5, scope: !1037, inlinedAt: !1040)
!1053 = !DILocation(line: 375, column: 9, scope: !966)
!1054 = !DILocation(line: 375, column: 22, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !966, file: !1, line: 375, column: 9)
!1056 = !DILocation(line: 0, scope: !966)
!1057 = !DILocation(line: 377, column: 1, scope: !966)
!1058 = !DILocation(line: 1498, column: 20, scope: !1037)
!1059 = !DILocation(line: 1498, column: 29, scope: !1037)
!1060 = !DILocation(line: 1498, column: 5, scope: !1037)
!1061 = !DILocation(line: 1499, column: 37, scope: !1037)
!1062 = !DILocation(line: 1499, column: 12, scope: !1037)
!1063 = !DILocation(line: 1499, column: 21, scope: !1037)
!1064 = !DILocation(line: 1499, column: 35, scope: !1037)
!1065 = !DILocation(line: 1500, column: 12, scope: !1037)
!1066 = !DILocation(line: 1500, column: 5, scope: !1037)
!1067 = !DILocation(line: 1502, column: 1, scope: !1037)
!1068 = distinct !DISubprogram(name: "selectDb", scope: !1, file: !1, line: 379, type: !1069, isLocal: false, isDefinition: true, scopeLine: 379, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1071)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!8, !423, !8}
!1071 = !{!1072, !1073}
!1072 = !DILocalVariable(name: "c", arg: 1, scope: !1068, file: !1, line: 379, type: !423)
!1073 = !DILocalVariable(name: "id", arg: 2, scope: !1068, file: !1, line: 379, type: !8)
!1074 = !DILocation(line: 379, column: 22, scope: !1068)
!1075 = !DILocation(line: 379, column: 29, scope: !1068)
!1076 = !DILocation(line: 380, column: 12, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1068, file: !1, line: 380, column: 9)
!1078 = !DILocation(line: 380, column: 32, scope: !1077)
!1079 = !DILocation(line: 380, column: 22, scope: !1077)
!1080 = !DILocation(line: 380, column: 16, scope: !1077)
!1081 = !DILocation(line: 382, column: 21, scope: !1068)
!1082 = !DILocation(line: 382, column: 14, scope: !1068)
!1083 = !DILocation(line: 382, column: 8, scope: !1068)
!1084 = !DILocation(line: 382, column: 11, scope: !1068)
!1085 = !DILocation(line: 383, column: 5, scope: !1068)
!1086 = !DILocation(line: 0, scope: !1068)
!1087 = !DILocation(line: 384, column: 1, scope: !1068)
!1088 = distinct !DISubprogram(name: "signalFlushedDb", scope: !1, file: !1, line: 399, type: !1089, isLocal: false, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1091)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{null, !8}
!1091 = !{!1092}
!1092 = !DILocalVariable(name: "dbid", arg: 1, scope: !1088, file: !1, line: 399, type: !8)
!1093 = !DILocation(line: 399, column: 26, scope: !1088)
!1094 = !DILocation(line: 400, column: 5, scope: !1088)
!1095 = !DILocation(line: 401, column: 1, scope: !1088)
!1096 = distinct !DISubprogram(name: "getFlushCommandFlags", scope: !1, file: !1, line: 415, type: !1097, isLocal: false, isDefinition: true, scopeLine: 415, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1099)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!8, !423, !461}
!1099 = !{!1100, !1101}
!1100 = !DILocalVariable(name: "c", arg: 1, scope: !1096, file: !1, line: 415, type: !423)
!1101 = !DILocalVariable(name: "flags", arg: 2, scope: !1096, file: !1, line: 415, type: !461)
!1102 = !DILocation(line: 415, column: 34, scope: !1096)
!1103 = !DILocation(line: 415, column: 42, scope: !1096)
!1104 = !DILocation(line: 417, column: 12, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1096, file: !1, line: 417, column: 9)
!1106 = !{!291, !212, i64 64}
!1107 = !DILocation(line: 417, column: 17, scope: !1105)
!1108 = !DILocation(line: 417, column: 9, scope: !1096)
!1109 = !DILocation(line: 418, column: 21, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 418, column: 13)
!1111 = distinct !DILexicalBlock(scope: !1105, file: !1, line: 417, column: 22)
!1112 = !DILocation(line: 418, column: 25, scope: !1110)
!1113 = !DILocation(line: 418, column: 42, scope: !1110)
!1114 = !{!291, !209, i64 72}
!1115 = !DILocation(line: 418, column: 39, scope: !1110)
!1116 = !{!209, !209, i64 0}
!1117 = !DILocation(line: 418, column: 51, scope: !1110)
!1118 = !DILocation(line: 418, column: 28, scope: !1110)
!1119 = !DILocation(line: 418, column: 13, scope: !1111)
!1120 = !DILocation(line: 419, column: 31, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1110, file: !1, line: 418, column: 65)
!1122 = !{!1123, !209, i64 128}
!1123 = !{!"sharedObjectsStruct", !209, i64 0, !209, i64 8, !209, i64 16, !209, i64 24, !209, i64 32, !209, i64 40, !209, i64 48, !209, i64 56, !209, i64 64, !209, i64 72, !209, i64 80, !209, i64 88, !209, i64 96, !209, i64 104, !209, i64 112, !209, i64 120, !209, i64 128, !209, i64 136, !209, i64 144, !209, i64 152, !209, i64 160, !209, i64 168, !209, i64 176, !209, i64 184, !209, i64 192, !209, i64 200, !209, i64 208, !209, i64 216, !209, i64 224, !209, i64 232, !209, i64 240, !209, i64 248, !209, i64 256, !209, i64 264, !209, i64 272, !209, i64 280, !209, i64 288, !209, i64 296, !209, i64 304, !209, i64 312, !209, i64 320, !209, i64 328, !209, i64 336, !209, i64 344, !209, i64 352, !209, i64 360, !210, i64 368, !210, i64 448, !210, i64 80448, !210, i64 80704, !209, i64 80960, !209, i64 80968}
!1124 = !DILocation(line: 419, column: 13, scope: !1121)
!1125 = !DILocation(line: 420, column: 13, scope: !1121)
!1126 = !DILocation(line: 0, scope: !1111)
!1127 = !DILocation(line: 426, column: 5, scope: !1096)
!1128 = !DILocation(line: 0, scope: !1096)
!1129 = !DILocation(line: 427, column: 1, scope: !1096)
!1130 = distinct !DISubprogram(name: "flushdbCommand", scope: !1, file: !1, line: 432, type: !451, isLocal: false, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1131)
!1131 = !{!1132, !1133}
!1132 = !DILocalVariable(name: "c", arg: 1, scope: !1130, file: !1, line: 432, type: !423)
!1133 = !DILocalVariable(name: "flags", scope: !1130, file: !1, line: 433, type: !8)
!1134 = !DILocation(line: 432, column: 29, scope: !1130)
!1135 = !DILocation(line: 415, column: 34, scope: !1096, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 435, column: 9, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1130, file: !1, line: 435, column: 9)
!1138 = !DILocation(line: 417, column: 12, scope: !1105, inlinedAt: !1136)
!1139 = !DILocation(line: 417, column: 17, scope: !1105, inlinedAt: !1136)
!1140 = !DILocation(line: 417, column: 9, scope: !1096, inlinedAt: !1136)
!1141 = !DILocation(line: 418, column: 21, scope: !1110, inlinedAt: !1136)
!1142 = !DILocation(line: 418, column: 25, scope: !1110, inlinedAt: !1136)
!1143 = !DILocation(line: 418, column: 42, scope: !1110, inlinedAt: !1136)
!1144 = !DILocation(line: 418, column: 39, scope: !1110, inlinedAt: !1136)
!1145 = !DILocation(line: 418, column: 51, scope: !1110, inlinedAt: !1136)
!1146 = !DILocation(line: 418, column: 28, scope: !1110, inlinedAt: !1136)
!1147 = !DILocation(line: 418, column: 13, scope: !1111, inlinedAt: !1136)
!1148 = !DILocation(line: 419, column: 31, scope: !1121, inlinedAt: !1136)
!1149 = !DILocation(line: 419, column: 13, scope: !1121, inlinedAt: !1136)
!1150 = !DILocation(line: 435, column: 9, scope: !1130)
!1151 = !DILocation(line: 436, column: 24, scope: !1130)
!1152 = !DILocation(line: 436, column: 28, scope: !1130)
!1153 = !DILocation(line: 399, column: 26, scope: !1088, inlinedAt: !1154)
!1154 = distinct !DILocation(line: 436, column: 5, scope: !1130)
!1155 = !DILocation(line: 400, column: 5, scope: !1088, inlinedAt: !1154)
!1156 = !DILocation(line: 437, column: 32, scope: !1130)
!1157 = !DILocation(line: 437, column: 36, scope: !1130)
!1158 = !DILocation(line: 433, column: 9, scope: !1130)
!1159 = !DILocation(line: 437, column: 21, scope: !1130)
!1160 = !DILocation(line: 437, column: 18, scope: !1130)
!1161 = !{!227, !213, i64 2080}
!1162 = !DILocation(line: 438, column: 23, scope: !1130)
!1163 = !{!1123, !209, i64 8}
!1164 = !DILocation(line: 438, column: 5, scope: !1130)
!1165 = !DILocation(line: 439, column: 1, scope: !1130)
!1166 = distinct !DISubprogram(name: "flushallCommand", scope: !1, file: !1, line: 444, type: !451, isLocal: false, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1167)
!1167 = !{!1168, !1169, !1170, !1173, !1181}
!1168 = !DILocalVariable(name: "c", arg: 1, scope: !1166, file: !1, line: 444, type: !423)
!1169 = !DILocalVariable(name: "flags", scope: !1166, file: !1, line: 445, type: !8)
!1170 = !DILocalVariable(name: "saved_dirty", scope: !1171, file: !1, line: 458, type: !8)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !1, line: 455, column: 35)
!1172 = distinct !DILexicalBlock(scope: !1166, file: !1, line: 455, column: 9)
!1173 = !DILocalVariable(name: "rsi", scope: !1171, file: !1, line: 459, type: !1174)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "rdbSaveInfo", file: !67, line: 912, baseType: !1175)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rdbSaveInfo", file: !67, line: 904, size: 512, elements: !1176)
!1176 = !{!1177, !1178, !1179, !1180}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "repl_stream_db", scope: !1175, file: !67, line: 906, baseType: !8, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "repl_id_is_set", scope: !1175, file: !67, line: 909, baseType: !8, size: 32, offset: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "repl_id", scope: !1175, file: !67, line: 910, baseType: !498, size: 328, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "repl_offset", scope: !1175, file: !67, line: 911, baseType: !165, size: 64, offset: 448)
!1181 = !DILocalVariable(name: "rsiptr", scope: !1171, file: !1, line: 459, type: !1182)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1183 = !DILocation(line: 444, column: 30, scope: !1166)
!1184 = !DILocation(line: 415, column: 34, scope: !1096, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 447, column: 9, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1166, file: !1, line: 447, column: 9)
!1187 = !DILocation(line: 417, column: 12, scope: !1105, inlinedAt: !1185)
!1188 = !DILocation(line: 417, column: 17, scope: !1105, inlinedAt: !1185)
!1189 = !DILocation(line: 417, column: 9, scope: !1096, inlinedAt: !1185)
!1190 = !DILocation(line: 418, column: 21, scope: !1110, inlinedAt: !1185)
!1191 = !DILocation(line: 418, column: 25, scope: !1110, inlinedAt: !1185)
!1192 = !DILocation(line: 418, column: 42, scope: !1110, inlinedAt: !1185)
!1193 = !DILocation(line: 418, column: 39, scope: !1110, inlinedAt: !1185)
!1194 = !DILocation(line: 418, column: 51, scope: !1110, inlinedAt: !1185)
!1195 = !DILocation(line: 418, column: 28, scope: !1110, inlinedAt: !1185)
!1196 = !DILocation(line: 418, column: 13, scope: !1111, inlinedAt: !1185)
!1197 = !DILocation(line: 419, column: 31, scope: !1121, inlinedAt: !1185)
!1198 = !DILocation(line: 419, column: 13, scope: !1121, inlinedAt: !1185)
!1199 = !DILocation(line: 447, column: 9, scope: !1166)
!1200 = !DILocation(line: 399, column: 26, scope: !1088, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 448, column: 5, scope: !1166)
!1202 = !DILocation(line: 400, column: 5, scope: !1088, inlinedAt: !1201)
!1203 = !DILocation(line: 445, column: 9, scope: !1166)
!1204 = !DILocation(line: 449, column: 21, scope: !1166)
!1205 = !DILocation(line: 449, column: 18, scope: !1166)
!1206 = !DILocation(line: 450, column: 23, scope: !1166)
!1207 = !DILocation(line: 450, column: 5, scope: !1166)
!1208 = !DILocation(line: 451, column: 16, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1166, file: !1, line: 451, column: 9)
!1210 = !DILocation(line: 451, column: 30, scope: !1209)
!1211 = !DILocation(line: 451, column: 9, scope: !1166)
!1212 = !DILocation(line: 452, column: 9, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1209, file: !1, line: 451, column: 37)
!1214 = !DILocation(line: 453, column: 34, scope: !1213)
!1215 = !DILocation(line: 453, column: 9, scope: !1213)
!1216 = !DILocation(line: 454, column: 5, scope: !1213)
!1217 = !DILocation(line: 455, column: 16, scope: !1172)
!1218 = !{!227, !212, i64 2112}
!1219 = !DILocation(line: 455, column: 30, scope: !1172)
!1220 = !DILocation(line: 0, scope: !1166)
!1221 = !DILocation(line: 455, column: 9, scope: !1166)
!1222 = !DILocation(line: 459, column: 9, scope: !1171)
!1223 = !DILocation(line: 459, column: 21, scope: !1171)
!1224 = !DILocation(line: 460, column: 18, scope: !1171)
!1225 = !DILocation(line: 459, column: 27, scope: !1171)
!1226 = !DILocation(line: 461, column: 24, scope: !1171)
!1227 = !{!227, !209, i64 2120}
!1228 = !DILocation(line: 461, column: 9, scope: !1171)
!1229 = !DILocation(line: 462, column: 24, scope: !1171)
!1230 = !DILocation(line: 462, column: 22, scope: !1171)
!1231 = !DILocation(line: 463, column: 5, scope: !1172)
!1232 = !DILocation(line: 463, column: 5, scope: !1171)
!1233 = !DILocation(line: 464, column: 17, scope: !1166)
!1234 = !DILocation(line: 465, column: 1, scope: !1166)
!1235 = distinct !DISubprogram(name: "delGenericCommand", scope: !1, file: !1, line: 468, type: !1236, isLocal: false, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1238)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{null, !423, !8}
!1238 = !{!1239, !1240, !1241, !1242, !1243}
!1239 = !DILocalVariable(name: "c", arg: 1, scope: !1235, file: !1, line: 468, type: !423)
!1240 = !DILocalVariable(name: "lazy", arg: 2, scope: !1235, file: !1, line: 468, type: !8)
!1241 = !DILocalVariable(name: "numdel", scope: !1235, file: !1, line: 469, type: !8)
!1242 = !DILocalVariable(name: "j", scope: !1235, file: !1, line: 469, type: !8)
!1243 = !DILocalVariable(name: "deleted", scope: !1244, file: !1, line: 473, type: !8)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !1, line: 471, column: 35)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !1, line: 471, column: 5)
!1246 = distinct !DILexicalBlock(scope: !1235, file: !1, line: 471, column: 5)
!1247 = !DILocation(line: 468, column: 32, scope: !1235)
!1248 = !DILocation(line: 468, column: 39, scope: !1235)
!1249 = !DILocation(line: 469, column: 9, scope: !1235)
!1250 = !DILocation(line: 469, column: 21, scope: !1235)
!1251 = !DILocation(line: 471, column: 24, scope: !1245)
!1252 = !DILocation(line: 471, column: 19, scope: !1245)
!1253 = !DILocation(line: 471, column: 5, scope: !1246)
!1254 = !DILocation(line: 472, column: 27, scope: !1244)
!1255 = !DILocation(line: 472, column: 33, scope: !1244)
!1256 = !DILocation(line: 472, column: 30, scope: !1244)
!1257 = !DILocation(line: 472, column: 9, scope: !1244)
!1258 = !DILocation(line: 0, scope: !1244)
!1259 = !DILocation(line: 473, column: 24, scope: !1244)
!1260 = !DILocation(line: 271, column: 27, scope: !338, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 474, column: 31, scope: !1244)
!1262 = !DILocation(line: 271, column: 37, scope: !338, inlinedAt: !1261)
!1263 = !DILocation(line: 274, column: 9, scope: !345, inlinedAt: !1261)
!1264 = !DILocation(line: 274, column: 31, scope: !345, inlinedAt: !1261)
!1265 = !DILocation(line: 0, scope: !345, inlinedAt: !1261)
!1266 = !DILocation(line: 274, column: 9, scope: !338, inlinedAt: !1261)
!1267 = !DILocation(line: 274, column: 64, scope: !345, inlinedAt: !1261)
!1268 = !DILocation(line: 274, column: 36, scope: !345, inlinedAt: !1261)
!1269 = !DILocation(line: 275, column: 24, scope: !355, inlinedAt: !1261)
!1270 = !DILocation(line: 275, column: 34, scope: !355, inlinedAt: !1261)
!1271 = !DILocation(line: 275, column: 9, scope: !355, inlinedAt: !1261)
!1272 = !DILocation(line: 275, column: 39, scope: !355, inlinedAt: !1261)
!1273 = !DILocation(line: 275, column: 9, scope: !338, inlinedAt: !1261)
!1274 = !DILocation(line: 276, column: 20, scope: !361, inlinedAt: !1261)
!1275 = !DILocation(line: 276, column: 13, scope: !361, inlinedAt: !1261)
!1276 = !DILocation(line: 276, column: 13, scope: !362, inlinedAt: !1261)
!1277 = !DILocation(line: 1493, column: 25, scope: !367, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 276, column: 37, scope: !361, inlinedAt: !1261)
!1279 = !DILocation(line: 1494, column: 5, scope: !367, inlinedAt: !1278)
!1280 = !DILocation(line: 276, column: 37, scope: !361, inlinedAt: !1261)
!1281 = !DILocation(line: 473, column: 31, scope: !1244)
!1282 = !DILocation(line: 473, column: 13, scope: !1244)
!1283 = !DILocation(line: 475, column: 13, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1244, file: !1, line: 475, column: 13)
!1285 = !DILocation(line: 475, column: 13, scope: !1244)
!1286 = !DILocation(line: 476, column: 34, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1284, file: !1, line: 475, column: 22)
!1288 = !DILocation(line: 476, column: 40, scope: !1287)
!1289 = !DILocation(line: 476, column: 37, scope: !1287)
!1290 = !DILocation(line: 395, column: 33, scope: !747, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 476, column: 13, scope: !1287)
!1292 = !DILocation(line: 395, column: 43, scope: !747, inlinedAt: !1291)
!1293 = !DILocation(line: 396, column: 5, scope: !747, inlinedAt: !1291)
!1294 = !DILocation(line: 478, column: 26, scope: !1287)
!1295 = !DILocation(line: 478, column: 23, scope: !1287)
!1296 = !DILocation(line: 478, column: 37, scope: !1287)
!1297 = !DILocation(line: 478, column: 41, scope: !1287)
!1298 = !DILocation(line: 477, column: 13, scope: !1287)
!1299 = !DILocation(line: 479, column: 25, scope: !1287)
!1300 = !DILocation(line: 480, column: 19, scope: !1287)
!1301 = !DILocation(line: 481, column: 9, scope: !1287)
!1302 = !DILocation(line: 0, scope: !1235)
!1303 = !DILocation(line: 471, column: 31, scope: !1245)
!1304 = distinct !{!1304, !1253, !1305}
!1305 = !DILocation(line: 482, column: 5, scope: !1246)
!1306 = !DILocation(line: 0, scope: !1287)
!1307 = !DILocation(line: 483, column: 24, scope: !1235)
!1308 = !DILocation(line: 483, column: 5, scope: !1235)
!1309 = !DILocation(line: 484, column: 1, scope: !1235)
!1310 = distinct !DISubprogram(name: "delCommand", scope: !1, file: !1, line: 486, type: !451, isLocal: false, isDefinition: true, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1311)
!1311 = !{!1312}
!1312 = !DILocalVariable(name: "c", arg: 1, scope: !1310, file: !1, line: 486, type: !423)
!1313 = !DILocation(line: 486, column: 25, scope: !1310)
!1314 = !DILocation(line: 487, column: 5, scope: !1310)
!1315 = !DILocation(line: 488, column: 1, scope: !1310)
!1316 = distinct !DISubprogram(name: "unlinkCommand", scope: !1, file: !1, line: 490, type: !451, isLocal: false, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1317)
!1317 = !{!1318}
!1318 = !DILocalVariable(name: "c", arg: 1, scope: !1316, file: !1, line: 490, type: !423)
!1319 = !DILocation(line: 490, column: 28, scope: !1316)
!1320 = !DILocation(line: 491, column: 5, scope: !1316)
!1321 = !DILocation(line: 492, column: 1, scope: !1316)
!1322 = distinct !DISubprogram(name: "existsCommand", scope: !1, file: !1, line: 496, type: !451, isLocal: false, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1323)
!1323 = !{!1324, !1325, !1326}
!1324 = !DILocalVariable(name: "c", arg: 1, scope: !1322, file: !1, line: 496, type: !423)
!1325 = !DILocalVariable(name: "count", scope: !1322, file: !1, line: 497, type: !165)
!1326 = !DILocalVariable(name: "j", scope: !1322, file: !1, line: 498, type: !8)
!1327 = !DILocation(line: 496, column: 28, scope: !1322)
!1328 = !DILocation(line: 497, column: 15, scope: !1322)
!1329 = !DILocation(line: 498, column: 9, scope: !1322)
!1330 = !DILocation(line: 500, column: 24, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !1, line: 500, column: 5)
!1332 = distinct !DILexicalBlock(scope: !1322, file: !1, line: 500, column: 5)
!1333 = !DILocation(line: 500, column: 19, scope: !1331)
!1334 = !DILocation(line: 500, column: 5, scope: !1332)
!1335 = !DILocation(line: 501, column: 30, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !1, line: 501, column: 13)
!1337 = distinct !DILexicalBlock(scope: !1331, file: !1, line: 500, column: 35)
!1338 = !DILocation(line: 501, column: 36, scope: !1336)
!1339 = !DILocation(line: 501, column: 33, scope: !1336)
!1340 = !DILocation(line: 143, column: 30, scope: !375, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 501, column: 13, scope: !1336)
!1342 = !DILocation(line: 143, column: 40, scope: !375, inlinedAt: !1341)
!1343 = !DILocation(line: 100, column: 39, scope: !263, inlinedAt: !1344)
!1344 = distinct !DILocation(line: 144, column: 12, scope: !375, inlinedAt: !1341)
!1345 = !DILocation(line: 100, column: 49, scope: !263, inlinedAt: !1344)
!1346 = !DILocation(line: 100, column: 58, scope: !263, inlinedAt: !1344)
!1347 = !DILocation(line: 103, column: 9, scope: !273, inlinedAt: !1344)
!1348 = !DILocation(line: 103, column: 32, scope: !273, inlinedAt: !1344)
!1349 = !DILocation(line: 103, column: 9, scope: !263, inlinedAt: !1344)
!1350 = !DILocation(line: 107, column: 20, scope: !277, inlinedAt: !1344)
!1351 = !DILocation(line: 107, column: 31, scope: !277, inlinedAt: !1344)
!1352 = !DILocation(line: 107, column: 13, scope: !278, inlinedAt: !1344)
!1353 = !DILocation(line: 124, column: 20, scope: !283, inlinedAt: !1344)
!1354 = !DILocation(line: 124, column: 13, scope: !283, inlinedAt: !1344)
!1355 = !DILocation(line: 125, column: 45, scope: !283, inlinedAt: !1344)
!1356 = !DILocation(line: 125, column: 35, scope: !283, inlinedAt: !1344)
!1357 = !DILocation(line: 124, column: 35, scope: !283, inlinedAt: !1344)
!1358 = !DILocation(line: 126, column: 36, scope: !283, inlinedAt: !1344)
!1359 = !DILocation(line: 126, column: 13, scope: !283, inlinedAt: !1344)
!1360 = !DILocation(line: 126, column: 40, scope: !283, inlinedAt: !1344)
!1361 = !DILocation(line: 127, column: 41, scope: !283, inlinedAt: !1344)
!1362 = !DILocation(line: 127, column: 47, scope: !283, inlinedAt: !1344)
!1363 = !DILocation(line: 124, column: 13, scope: !278, inlinedAt: !1344)
!1364 = !DILocation(line: 133, column: 11, scope: !263, inlinedAt: !1344)
!1365 = !DILocation(line: 101, column: 11, scope: !263, inlinedAt: !1344)
!1366 = !DILocation(line: 134, column: 13, scope: !304, inlinedAt: !1344)
!1367 = !DILocation(line: 135, column: 9, scope: !304, inlinedAt: !1344)
!1368 = !DILocation(line: 0, scope: !263, inlinedAt: !1344)
!1369 = !DILocation(line: 0, scope: !1336)
!1370 = !DILocation(line: 501, column: 13, scope: !1336)
!1371 = !DILocation(line: 501, column: 13, scope: !1337)
!1372 = !DILocation(line: 500, column: 31, scope: !1331)
!1373 = distinct !{!1373, !1334, !1374}
!1374 = !DILocation(line: 502, column: 5, scope: !1332)
!1375 = !DILocation(line: 503, column: 5, scope: !1322)
!1376 = !DILocation(line: 504, column: 1, scope: !1322)
!1377 = distinct !DISubprogram(name: "selectCommand", scope: !1, file: !1, line: 506, type: !451, isLocal: false, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1378)
!1378 = !{!1379, !1380}
!1379 = !DILocalVariable(name: "c", arg: 1, scope: !1377, file: !1, line: 506, type: !423)
!1380 = !DILocalVariable(name: "id", scope: !1377, file: !1, line: 507, type: !12)
!1381 = !DILocation(line: 506, column: 28, scope: !1377)
!1382 = !DILocation(line: 507, column: 5, scope: !1377)
!1383 = !DILocation(line: 509, column: 40, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1377, file: !1, line: 509, column: 9)
!1385 = !DILocation(line: 509, column: 37, scope: !1384)
!1386 = !DILocation(line: 507, column: 10, scope: !1377)
!1387 = !DILocation(line: 509, column: 9, scope: !1384)
!1388 = !DILocation(line: 510, column: 29, scope: !1384)
!1389 = !DILocation(line: 509, column: 9, scope: !1377)
!1390 = !DILocation(line: 513, column: 16, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1377, file: !1, line: 513, column: 9)
!1392 = !DILocation(line: 513, column: 9, scope: !1391)
!1393 = !DILocation(line: 513, column: 35, scope: !1391)
!1394 = !DILocation(line: 513, column: 38, scope: !1391)
!1395 = !DILocation(line: 513, column: 32, scope: !1391)
!1396 = !DILocation(line: 514, column: 9, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1391, file: !1, line: 513, column: 44)
!1398 = !DILocation(line: 515, column: 9, scope: !1397)
!1399 = !DILocation(line: 517, column: 20, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1377, file: !1, line: 517, column: 9)
!1401 = !DILocation(line: 379, column: 22, scope: !1068, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 517, column: 9, scope: !1400)
!1403 = !DILocation(line: 379, column: 29, scope: !1068, inlinedAt: !1402)
!1404 = !DILocation(line: 380, column: 12, scope: !1077, inlinedAt: !1402)
!1405 = !DILocation(line: 380, column: 32, scope: !1077, inlinedAt: !1402)
!1406 = !DILocation(line: 380, column: 22, scope: !1077, inlinedAt: !1402)
!1407 = !DILocation(line: 380, column: 16, scope: !1077, inlinedAt: !1402)
!1408 = !DILocation(line: 518, column: 9, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1400, file: !1, line: 517, column: 34)
!1410 = !DILocation(line: 519, column: 5, scope: !1409)
!1411 = !DILocation(line: 382, column: 21, scope: !1068, inlinedAt: !1402)
!1412 = !DILocation(line: 382, column: 14, scope: !1068, inlinedAt: !1402)
!1413 = !DILocation(line: 382, column: 8, scope: !1068, inlinedAt: !1402)
!1414 = !DILocation(line: 382, column: 11, scope: !1068, inlinedAt: !1402)
!1415 = !DILocation(line: 520, column: 27, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1400, file: !1, line: 519, column: 12)
!1417 = !DILocation(line: 520, column: 9, scope: !1416)
!1418 = !DILocation(line: 522, column: 1, scope: !1377)
!1419 = distinct !DISubprogram(name: "randomkeyCommand", scope: !1, file: !1, line: 524, type: !451, isLocal: false, isDefinition: true, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1420)
!1420 = !{!1421, !1422}
!1421 = !DILocalVariable(name: "c", arg: 1, scope: !1419, file: !1, line: 524, type: !423)
!1422 = !DILocalVariable(name: "key", scope: !1419, file: !1, line: 525, type: !65)
!1423 = !DILocation(line: 524, column: 31, scope: !1419)
!1424 = !DILocation(line: 527, column: 31, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1419, file: !1, line: 527, column: 9)
!1426 = !DILocation(line: 527, column: 16, scope: !1425)
!1427 = !DILocation(line: 525, column: 11, scope: !1419)
!1428 = !DILocation(line: 527, column: 36, scope: !1425)
!1429 = !DILocation(line: 527, column: 9, scope: !1419)
!1430 = !DILocation(line: 528, column: 27, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1425, file: !1, line: 527, column: 45)
!1432 = !{!1123, !209, i64 80}
!1433 = !DILocation(line: 528, column: 9, scope: !1431)
!1434 = !DILocation(line: 529, column: 9, scope: !1431)
!1435 = !DILocation(line: 532, column: 5, scope: !1419)
!1436 = !DILocation(line: 533, column: 5, scope: !1419)
!1437 = !DILocation(line: 534, column: 1, scope: !1419)
!1438 = distinct !DISubprogram(name: "keysCommand", scope: !1, file: !1, line: 536, type: !451, isLocal: false, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1439)
!1439 = !{!1440, !1441, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1461}
!1440 = !DILocalVariable(name: "c", arg: 1, scope: !1438, file: !1, line: 536, type: !423)
!1441 = !DILocalVariable(name: "di", scope: !1438, file: !1, line: 537, type: !1442)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !100, line: 95, baseType: !1444)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !100, line: 88, size: 384, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1449, !1450, !1451, !1452}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1444, file: !100, line: 89, baseType: !98, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1444, file: !100, line: 90, baseType: !12, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !1444, file: !100, line: 91, baseType: !8, size: 32, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !1444, file: !100, line: 91, baseType: !8, size: 32, offset: 160)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1444, file: !100, line: 92, baseType: !136, size: 64, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !1444, file: !100, line: 92, baseType: !136, size: 64, offset: 256)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !1444, file: !100, line: 94, baseType: !165, size: 64, offset: 320)
!1453 = !DILocalVariable(name: "de", scope: !1438, file: !1, line: 538, type: !136)
!1454 = !DILocalVariable(name: "pattern", scope: !1438, file: !1, line: 539, type: !432)
!1455 = !DILocalVariable(name: "plen", scope: !1438, file: !1, line: 540, type: !8)
!1456 = !DILocalVariable(name: "allkeys", scope: !1438, file: !1, line: 540, type: !8)
!1457 = !DILocalVariable(name: "numkeys", scope: !1438, file: !1, line: 541, type: !11)
!1458 = !DILocalVariable(name: "replylen", scope: !1438, file: !1, line: 542, type: !4)
!1459 = !DILocalVariable(name: "key", scope: !1460, file: !1, line: 547, type: !432)
!1460 = distinct !DILexicalBlock(scope: !1438, file: !1, line: 546, column: 40)
!1461 = !DILocalVariable(name: "keyobj", scope: !1460, file: !1, line: 548, type: !65)
!1462 = !DILocation(line: 536, column: 26, scope: !1438)
!1463 = !DILocation(line: 539, column: 22, scope: !1438)
!1464 = !DILocation(line: 539, column: 19, scope: !1438)
!1465 = !DILocation(line: 539, column: 31, scope: !1438)
!1466 = !DILocation(line: 539, column: 9, scope: !1438)
!1467 = !DILocation(line: 87, column: 39, scope: !806, inlinedAt: !1468)
!1468 = distinct !DILocation(line: 540, column: 16, scope: !1438)
!1469 = !DILocation(line: 88, column: 27, scope: !806, inlinedAt: !1468)
!1470 = !DILocation(line: 88, column: 19, scope: !806, inlinedAt: !1468)
!1471 = !DILocation(line: 89, column: 5, scope: !806, inlinedAt: !1468)
!1472 = !DILocation(line: 91, column: 20, scope: !820, inlinedAt: !1468)
!1473 = !DILocation(line: 91, column: 13, scope: !820, inlinedAt: !1468)
!1474 = !DILocation(line: 93, column: 20, scope: !820, inlinedAt: !1468)
!1475 = !DILocation(line: 93, column: 34, scope: !820, inlinedAt: !1468)
!1476 = !DILocation(line: 93, column: 13, scope: !820, inlinedAt: !1468)
!1477 = !DILocation(line: 95, column: 20, scope: !820, inlinedAt: !1468)
!1478 = !DILocation(line: 95, column: 35, scope: !820, inlinedAt: !1468)
!1479 = !DILocation(line: 95, column: 13, scope: !820, inlinedAt: !1468)
!1480 = !DILocation(line: 97, column: 20, scope: !820, inlinedAt: !1468)
!1481 = !DILocation(line: 97, column: 35, scope: !820, inlinedAt: !1468)
!1482 = !DILocation(line: 97, column: 13, scope: !820, inlinedAt: !1468)
!1483 = !DILocation(line: 99, column: 20, scope: !820, inlinedAt: !1468)
!1484 = !DILocation(line: 99, column: 35, scope: !820, inlinedAt: !1468)
!1485 = !DILocation(line: 99, column: 13, scope: !820, inlinedAt: !1468)
!1486 = !DILocation(line: 0, scope: !820, inlinedAt: !1468)
!1487 = !DILocation(line: 540, column: 16, scope: !1438)
!1488 = !DILocation(line: 540, column: 9, scope: !1438)
!1489 = !DILocation(line: 541, column: 19, scope: !1438)
!1490 = !DILocation(line: 542, column: 22, scope: !1438)
!1491 = !DILocation(line: 542, column: 11, scope: !1438)
!1492 = !DILocation(line: 544, column: 33, scope: !1438)
!1493 = !DILocation(line: 544, column: 37, scope: !1438)
!1494 = !DILocation(line: 544, column: 10, scope: !1438)
!1495 = !DILocation(line: 537, column: 19, scope: !1438)
!1496 = !DILocation(line: 545, column: 16, scope: !1438)
!1497 = !DILocation(line: 545, column: 27, scope: !1438)
!1498 = !DILocation(line: 545, column: 34, scope: !1438)
!1499 = !DILocation(line: 545, column: 37, scope: !1438)
!1500 = !DILocation(line: 545, column: 48, scope: !1438)
!1501 = !DILocation(line: 0, scope: !1438)
!1502 = !DILocation(line: 546, column: 17, scope: !1438)
!1503 = !DILocation(line: 538, column: 16, scope: !1438)
!1504 = !DILocation(line: 546, column: 31, scope: !1438)
!1505 = !DILocation(line: 546, column: 5, scope: !1438)
!1506 = !DILocation(line: 547, column: 19, scope: !1460)
!1507 = !DILocation(line: 547, column: 13, scope: !1460)
!1508 = !DILocation(line: 88, column: 27, scope: !806, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 551, column: 45, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !1, line: 550, column: 72)
!1511 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 550, column: 13)
!1512 = !DILocation(line: 550, column: 21, scope: !1511)
!1513 = !DILocation(line: 87, column: 39, scope: !806, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 550, column: 56, scope: !1511)
!1515 = !DILocation(line: 88, column: 27, scope: !806, inlinedAt: !1514)
!1516 = !DILocation(line: 88, column: 19, scope: !806, inlinedAt: !1514)
!1517 = !DILocation(line: 89, column: 5, scope: !806, inlinedAt: !1514)
!1518 = !DILocation(line: 91, column: 20, scope: !820, inlinedAt: !1514)
!1519 = !DILocation(line: 91, column: 13, scope: !820, inlinedAt: !1514)
!1520 = !DILocation(line: 93, column: 20, scope: !820, inlinedAt: !1514)
!1521 = !DILocation(line: 93, column: 34, scope: !820, inlinedAt: !1514)
!1522 = !DILocation(line: 93, column: 13, scope: !820, inlinedAt: !1514)
!1523 = !DILocation(line: 95, column: 20, scope: !820, inlinedAt: !1514)
!1524 = !DILocation(line: 95, column: 35, scope: !820, inlinedAt: !1514)
!1525 = !DILocation(line: 95, column: 13, scope: !820, inlinedAt: !1514)
!1526 = !DILocation(line: 97, column: 20, scope: !820, inlinedAt: !1514)
!1527 = !DILocation(line: 97, column: 35, scope: !820, inlinedAt: !1514)
!1528 = !DILocation(line: 97, column: 13, scope: !820, inlinedAt: !1514)
!1529 = !DILocation(line: 99, column: 20, scope: !820, inlinedAt: !1514)
!1530 = !DILocation(line: 99, column: 35, scope: !820, inlinedAt: !1514)
!1531 = !DILocation(line: 99, column: 13, scope: !820, inlinedAt: !1514)
!1532 = !DILocation(line: 0, scope: !820, inlinedAt: !1514)
!1533 = !DILocation(line: 550, column: 56, scope: !1511)
!1534 = !DILocation(line: 550, column: 24, scope: !1511)
!1535 = !DILocation(line: 550, column: 13, scope: !1460)
!1536 = !DILocation(line: 87, column: 39, scope: !806, inlinedAt: !1509)
!1537 = !DILocation(line: 88, column: 19, scope: !806, inlinedAt: !1509)
!1538 = !DILocation(line: 89, column: 5, scope: !806, inlinedAt: !1509)
!1539 = !DILocation(line: 91, column: 20, scope: !820, inlinedAt: !1509)
!1540 = !DILocation(line: 91, column: 13, scope: !820, inlinedAt: !1509)
!1541 = !DILocation(line: 93, column: 20, scope: !820, inlinedAt: !1509)
!1542 = !DILocation(line: 93, column: 34, scope: !820, inlinedAt: !1509)
!1543 = !DILocation(line: 93, column: 13, scope: !820, inlinedAt: !1509)
!1544 = !DILocation(line: 95, column: 20, scope: !820, inlinedAt: !1509)
!1545 = !DILocation(line: 95, column: 35, scope: !820, inlinedAt: !1509)
!1546 = !DILocation(line: 95, column: 13, scope: !820, inlinedAt: !1509)
!1547 = !DILocation(line: 97, column: 20, scope: !820, inlinedAt: !1509)
!1548 = !DILocation(line: 97, column: 35, scope: !820, inlinedAt: !1509)
!1549 = !DILocation(line: 97, column: 13, scope: !820, inlinedAt: !1509)
!1550 = !DILocation(line: 99, column: 20, scope: !820, inlinedAt: !1509)
!1551 = !DILocation(line: 99, column: 35, scope: !820, inlinedAt: !1509)
!1552 = !DILocation(line: 99, column: 13, scope: !820, inlinedAt: !1509)
!1553 = !DILocation(line: 0, scope: !820, inlinedAt: !1509)
!1554 = !DILocation(line: 551, column: 22, scope: !1510)
!1555 = !DILocation(line: 548, column: 15, scope: !1460)
!1556 = !DILocation(line: 552, column: 34, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1510, file: !1, line: 552, column: 17)
!1558 = !DILocation(line: 552, column: 18, scope: !1557)
!1559 = !DILocation(line: 552, column: 17, scope: !1510)
!1560 = !DILocation(line: 553, column: 17, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1557, file: !1, line: 552, column: 46)
!1562 = !DILocation(line: 554, column: 24, scope: !1561)
!1563 = !DILocation(line: 555, column: 13, scope: !1561)
!1564 = !DILocation(line: 0, scope: !1561)
!1565 = !DILocation(line: 556, column: 13, scope: !1510)
!1566 = !DILocation(line: 557, column: 9, scope: !1510)
!1567 = distinct !{!1567, !1505, !1568}
!1568 = !DILocation(line: 558, column: 5, scope: !1438)
!1569 = !DILocation(line: 559, column: 5, scope: !1438)
!1570 = !DILocation(line: 560, column: 5, scope: !1438)
!1571 = !DILocation(line: 561, column: 1, scope: !1438)
!1572 = distinct !DISubprogram(name: "keyIsExpired", scope: !1, file: !1, line: 1130, type: !312, isLocal: false, isDefinition: true, scopeLine: 1130, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1573)
!1573 = !{!1574, !1575, !1576, !1577}
!1574 = !DILocalVariable(name: "db", arg: 1, scope: !1572, file: !1, line: 1130, type: !93)
!1575 = !DILocalVariable(name: "key", arg: 2, scope: !1572, file: !1, line: 1130, type: !65)
!1576 = !DILocalVariable(name: "when", scope: !1572, file: !1, line: 1131, type: !529)
!1577 = !DILocalVariable(name: "now", scope: !1572, file: !1, line: 1143, type: !529)
!1578 = !DILocation(line: 1130, column: 27, scope: !1572)
!1579 = !DILocation(line: 1130, column: 37, scope: !1572)
!1580 = !DILocalVariable(name: "db", arg: 1, scope: !1581, file: !1, line: 1092, type: !93)
!1581 = distinct !DISubprogram(name: "getExpire", scope: !1, file: !1, line: 1092, type: !1582, isLocal: false, isDefinition: true, scopeLine: 1092, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1584)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!165, !93, !65}
!1584 = !{!1580, !1585, !1586}
!1585 = !DILocalVariable(name: "key", arg: 2, scope: !1581, file: !1, line: 1092, type: !65)
!1586 = !DILocalVariable(name: "de", scope: !1581, file: !1, line: 1093, type: !136)
!1587 = !DILocation(line: 1092, column: 30, scope: !1581, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 1131, column: 21, scope: !1572)
!1589 = !DILocation(line: 1092, column: 40, scope: !1581, inlinedAt: !1588)
!1590 = !DILocation(line: 1096, column: 9, scope: !1591, inlinedAt: !1588)
!1591 = distinct !DILexicalBlock(scope: !1581, file: !1, line: 1096, column: 9)
!1592 = !DILocation(line: 1096, column: 31, scope: !1591, inlinedAt: !1588)
!1593 = !DILocation(line: 1096, column: 36, scope: !1591, inlinedAt: !1588)
!1594 = !DILocation(line: 1097, column: 40, scope: !1591, inlinedAt: !1588)
!1595 = !DILocation(line: 1097, column: 14, scope: !1591, inlinedAt: !1588)
!1596 = !DILocation(line: 1093, column: 16, scope: !1581, inlinedAt: !1588)
!1597 = !DILocation(line: 1097, column: 46, scope: !1591, inlinedAt: !1588)
!1598 = !DILocation(line: 1096, column: 9, scope: !1581, inlinedAt: !1588)
!1599 = !DILocation(line: 1101, column: 5, scope: !1581, inlinedAt: !1588)
!1600 = !DILocation(line: 1102, column: 12, scope: !1581, inlinedAt: !1588)
!1601 = !DILocation(line: 1131, column: 14, scope: !1572)
!1602 = !DILocation(line: 1133, column: 14, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1572, file: !1, line: 1133, column: 9)
!1604 = !DILocation(line: 1136, column: 16, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1572, file: !1, line: 1136, column: 9)
!1606 = !DILocation(line: 1136, column: 9, scope: !1605)
!1607 = !DILocation(line: 1133, column: 9, scope: !1572)
!1608 = !DILocation(line: 1143, column: 27, scope: !1572)
!1609 = !{!227, !209, i64 3008}
!1610 = !DILocation(line: 1143, column: 20, scope: !1572)
!1611 = !DILocation(line: 1143, column: 47, scope: !1572)
!1612 = !{!227, !213, i64 3040}
!1613 = !DILocation(line: 1143, column: 64, scope: !1572)
!1614 = !DILocation(line: 1143, column: 14, scope: !1572)
!1615 = !DILocation(line: 1145, column: 16, scope: !1572)
!1616 = !DILocation(line: 0, scope: !1572)
!1617 = !DILocation(line: 1146, column: 1, scope: !1572)
!1618 = distinct !DISubprogram(name: "scanCallback", scope: !1, file: !1, line: 565, type: !1619, isLocal: false, isDefinition: true, scopeLine: 565, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1623)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{null, !4, !1621}
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!1623 = !{!1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1634, !1637, !1640, !1641}
!1624 = !DILocalVariable(name: "privdata", arg: 1, scope: !1618, file: !1, line: 565, type: !4)
!1625 = !DILocalVariable(name: "de", arg: 2, scope: !1618, file: !1, line: 565, type: !1621)
!1626 = !DILocalVariable(name: "pd", scope: !1618, file: !1, line: 566, type: !5)
!1627 = !DILocalVariable(name: "keys", scope: !1618, file: !1, line: 567, type: !167)
!1628 = !DILocalVariable(name: "o", scope: !1618, file: !1, line: 568, type: !65)
!1629 = !DILocalVariable(name: "key", scope: !1618, file: !1, line: 569, type: !65)
!1630 = !DILocalVariable(name: "val", scope: !1618, file: !1, line: 569, type: !65)
!1631 = !DILocalVariable(name: "sdskey", scope: !1632, file: !1, line: 572, type: !432)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !1, line: 571, column: 20)
!1633 = distinct !DILexicalBlock(scope: !1618, file: !1, line: 571, column: 9)
!1634 = !DILocalVariable(name: "keysds", scope: !1635, file: !1, line: 575, type: !432)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !1, line: 574, column: 36)
!1636 = distinct !DILexicalBlock(scope: !1633, file: !1, line: 574, column: 16)
!1637 = !DILocalVariable(name: "sdskey", scope: !1638, file: !1, line: 578, type: !432)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !1, line: 577, column: 37)
!1639 = distinct !DILexicalBlock(scope: !1636, file: !1, line: 577, column: 16)
!1640 = !DILocalVariable(name: "sdsval", scope: !1638, file: !1, line: 579, type: !432)
!1641 = !DILocalVariable(name: "sdskey", scope: !1642, file: !1, line: 583, type: !432)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !1, line: 582, column: 37)
!1643 = distinct !DILexicalBlock(scope: !1639, file: !1, line: 582, column: 16)
!1644 = !DILocation(line: 565, column: 25, scope: !1618)
!1645 = !DILocation(line: 565, column: 52, scope: !1618)
!1646 = !DILocation(line: 566, column: 12, scope: !1618)
!1647 = !DILocation(line: 567, column: 18, scope: !1618)
!1648 = !DILocation(line: 567, column: 11, scope: !1618)
!1649 = !DILocation(line: 568, column: 15, scope: !1618)
!1650 = !DILocation(line: 568, column: 11, scope: !1618)
!1651 = !DILocation(line: 569, column: 17, scope: !1618)
!1652 = !DILocation(line: 571, column: 11, scope: !1633)
!1653 = !DILocation(line: 571, column: 9, scope: !1618)
!1654 = !DILocation(line: 572, column: 22, scope: !1632)
!1655 = !DILocation(line: 572, column: 13, scope: !1632)
!1656 = !DILocation(line: 87, column: 39, scope: !806, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 573, column: 42, scope: !1632)
!1658 = !DILocation(line: 88, column: 27, scope: !806, inlinedAt: !1657)
!1659 = !DILocation(line: 88, column: 19, scope: !806, inlinedAt: !1657)
!1660 = !DILocation(line: 89, column: 5, scope: !806, inlinedAt: !1657)
!1661 = !DILocation(line: 91, column: 20, scope: !820, inlinedAt: !1657)
!1662 = !DILocation(line: 91, column: 13, scope: !820, inlinedAt: !1657)
!1663 = !DILocation(line: 93, column: 20, scope: !820, inlinedAt: !1657)
!1664 = !DILocation(line: 93, column: 34, scope: !820, inlinedAt: !1657)
!1665 = !DILocation(line: 93, column: 13, scope: !820, inlinedAt: !1657)
!1666 = !DILocation(line: 95, column: 20, scope: !820, inlinedAt: !1657)
!1667 = !DILocation(line: 95, column: 35, scope: !820, inlinedAt: !1657)
!1668 = !DILocation(line: 95, column: 13, scope: !820, inlinedAt: !1657)
!1669 = !DILocation(line: 97, column: 20, scope: !820, inlinedAt: !1657)
!1670 = !DILocation(line: 97, column: 35, scope: !820, inlinedAt: !1657)
!1671 = !DILocation(line: 97, column: 13, scope: !820, inlinedAt: !1657)
!1672 = !DILocation(line: 99, column: 20, scope: !820, inlinedAt: !1657)
!1673 = !DILocation(line: 99, column: 35, scope: !820, inlinedAt: !1657)
!1674 = !DILocation(line: 99, column: 13, scope: !820, inlinedAt: !1657)
!1675 = !DILocation(line: 0, scope: !820, inlinedAt: !1657)
!1676 = !DILocation(line: 573, column: 15, scope: !1632)
!1677 = !DILocation(line: 569, column: 11, scope: !1618)
!1678 = !DILocation(line: 574, column: 5, scope: !1632)
!1679 = !DILocation(line: 574, column: 19, scope: !1636)
!1680 = !DILocation(line: 574, column: 16, scope: !1633)
!1681 = !DILocation(line: 575, column: 22, scope: !1635)
!1682 = !DILocation(line: 575, column: 13, scope: !1635)
!1683 = !DILocation(line: 87, column: 39, scope: !806, inlinedAt: !1684)
!1684 = distinct !DILocation(line: 576, column: 41, scope: !1635)
!1685 = !DILocation(line: 88, column: 27, scope: !806, inlinedAt: !1684)
!1686 = !DILocation(line: 88, column: 19, scope: !806, inlinedAt: !1684)
!1687 = !DILocation(line: 89, column: 5, scope: !806, inlinedAt: !1684)
!1688 = !DILocation(line: 91, column: 20, scope: !820, inlinedAt: !1684)
!1689 = !DILocation(line: 91, column: 13, scope: !820, inlinedAt: !1684)
!1690 = !DILocation(line: 93, column: 20, scope: !820, inlinedAt: !1684)
!1691 = !DILocation(line: 93, column: 34, scope: !820, inlinedAt: !1684)
!1692 = !DILocation(line: 93, column: 13, scope: !820, inlinedAt: !1684)
!1693 = !DILocation(line: 95, column: 20, scope: !820, inlinedAt: !1684)
!1694 = !DILocation(line: 95, column: 35, scope: !820, inlinedAt: !1684)
!1695 = !DILocation(line: 95, column: 13, scope: !820, inlinedAt: !1684)
!1696 = !DILocation(line: 97, column: 20, scope: !820, inlinedAt: !1684)
!1697 = !DILocation(line: 97, column: 35, scope: !820, inlinedAt: !1684)
!1698 = !DILocation(line: 97, column: 13, scope: !820, inlinedAt: !1684)
!1699 = !DILocation(line: 99, column: 20, scope: !820, inlinedAt: !1684)
!1700 = !DILocation(line: 99, column: 35, scope: !820, inlinedAt: !1684)
!1701 = !DILocation(line: 99, column: 13, scope: !820, inlinedAt: !1684)
!1702 = !DILocation(line: 0, scope: !820, inlinedAt: !1684)
!1703 = !DILocation(line: 576, column: 15, scope: !1635)
!1704 = !DILocation(line: 577, column: 5, scope: !1635)
!1705 = !DILocation(line: 578, column: 22, scope: !1638)
!1706 = !DILocation(line: 578, column: 13, scope: !1638)
!1707 = !DILocation(line: 579, column: 22, scope: !1638)
!1708 = !DILocation(line: 579, column: 13, scope: !1638)
!1709 = !DILocation(line: 87, column: 39, scope: !806, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 580, column: 41, scope: !1638)
!1711 = !DILocation(line: 88, column: 27, scope: !806, inlinedAt: !1710)
!1712 = !DILocation(line: 88, column: 19, scope: !806, inlinedAt: !1710)
!1713 = !DILocation(line: 89, column: 5, scope: !806, inlinedAt: !1710)
!1714 = !DILocation(line: 91, column: 20, scope: !820, inlinedAt: !1710)
!1715 = !DILocation(line: 91, column: 13, scope: !820, inlinedAt: !1710)
!1716 = !DILocation(line: 93, column: 20, scope: !820, inlinedAt: !1710)
!1717 = !DILocation(line: 93, column: 34, scope: !820, inlinedAt: !1710)
!1718 = !DILocation(line: 93, column: 13, scope: !820, inlinedAt: !1710)
!1719 = !DILocation(line: 95, column: 20, scope: !820, inlinedAt: !1710)
!1720 = !DILocation(line: 95, column: 35, scope: !820, inlinedAt: !1710)
!1721 = !DILocation(line: 95, column: 13, scope: !820, inlinedAt: !1710)
!1722 = !DILocation(line: 97, column: 20, scope: !820, inlinedAt: !1710)
!1723 = !DILocation(line: 97, column: 35, scope: !820, inlinedAt: !1710)
!1724 = !DILocation(line: 97, column: 13, scope: !820, inlinedAt: !1710)
!1725 = !DILocation(line: 99, column: 20, scope: !820, inlinedAt: !1710)
!1726 = !DILocation(line: 99, column: 35, scope: !820, inlinedAt: !1710)
!1727 = !DILocation(line: 99, column: 13, scope: !820, inlinedAt: !1710)
!1728 = !DILocation(line: 0, scope: !820, inlinedAt: !1710)
!1729 = !DILocation(line: 580, column: 15, scope: !1638)
!1730 = !DILocation(line: 87, column: 39, scope: !806, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 581, column: 41, scope: !1638)
!1732 = !DILocation(line: 88, column: 27, scope: !806, inlinedAt: !1731)
!1733 = !DILocation(line: 88, column: 19, scope: !806, inlinedAt: !1731)
!1734 = !DILocation(line: 89, column: 5, scope: !806, inlinedAt: !1731)
!1735 = !DILocation(line: 91, column: 20, scope: !820, inlinedAt: !1731)
!1736 = !DILocation(line: 91, column: 13, scope: !820, inlinedAt: !1731)
!1737 = !DILocation(line: 93, column: 20, scope: !820, inlinedAt: !1731)
!1738 = !DILocation(line: 93, column: 34, scope: !820, inlinedAt: !1731)
!1739 = !DILocation(line: 93, column: 13, scope: !820, inlinedAt: !1731)
!1740 = !DILocation(line: 95, column: 20, scope: !820, inlinedAt: !1731)
!1741 = !DILocation(line: 95, column: 35, scope: !820, inlinedAt: !1731)
!1742 = !DILocation(line: 95, column: 13, scope: !820, inlinedAt: !1731)
!1743 = !DILocation(line: 97, column: 20, scope: !820, inlinedAt: !1731)
!1744 = !DILocation(line: 97, column: 35, scope: !820, inlinedAt: !1731)
!1745 = !DILocation(line: 97, column: 13, scope: !820, inlinedAt: !1731)
!1746 = !DILocation(line: 99, column: 20, scope: !820, inlinedAt: !1731)
!1747 = !DILocation(line: 99, column: 35, scope: !820, inlinedAt: !1731)
!1748 = !DILocation(line: 99, column: 13, scope: !820, inlinedAt: !1731)
!1749 = !DILocation(line: 0, scope: !820, inlinedAt: !1731)
!1750 = !DILocation(line: 581, column: 15, scope: !1638)
!1751 = !DILocation(line: 582, column: 5, scope: !1638)
!1752 = !DILocation(line: 583, column: 22, scope: !1642)
!1753 = !DILocation(line: 583, column: 13, scope: !1642)
!1754 = !DILocation(line: 87, column: 39, scope: !806, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 584, column: 41, scope: !1642)
!1756 = !DILocation(line: 88, column: 27, scope: !806, inlinedAt: !1755)
!1757 = !DILocation(line: 88, column: 19, scope: !806, inlinedAt: !1755)
!1758 = !DILocation(line: 89, column: 5, scope: !806, inlinedAt: !1755)
!1759 = !DILocation(line: 91, column: 20, scope: !820, inlinedAt: !1755)
!1760 = !DILocation(line: 91, column: 13, scope: !820, inlinedAt: !1755)
!1761 = !DILocation(line: 93, column: 20, scope: !820, inlinedAt: !1755)
!1762 = !DILocation(line: 93, column: 34, scope: !820, inlinedAt: !1755)
!1763 = !DILocation(line: 93, column: 13, scope: !820, inlinedAt: !1755)
!1764 = !DILocation(line: 95, column: 20, scope: !820, inlinedAt: !1755)
!1765 = !DILocation(line: 95, column: 35, scope: !820, inlinedAt: !1755)
!1766 = !DILocation(line: 95, column: 13, scope: !820, inlinedAt: !1755)
!1767 = !DILocation(line: 97, column: 20, scope: !820, inlinedAt: !1755)
!1768 = !DILocation(line: 97, column: 35, scope: !820, inlinedAt: !1755)
!1769 = !DILocation(line: 97, column: 13, scope: !820, inlinedAt: !1755)
!1770 = !DILocation(line: 99, column: 20, scope: !820, inlinedAt: !1755)
!1771 = !DILocation(line: 99, column: 35, scope: !820, inlinedAt: !1755)
!1772 = !DILocation(line: 99, column: 13, scope: !820, inlinedAt: !1755)
!1773 = !DILocation(line: 0, scope: !820, inlinedAt: !1755)
!1774 = !DILocation(line: 584, column: 15, scope: !1642)
!1775 = !DILocation(line: 585, column: 58, scope: !1642)
!1776 = !DILocation(line: 585, column: 48, scope: !1642)
!1777 = !{!229, !229, i64 0}
!1778 = !DILocation(line: 585, column: 15, scope: !1642)
!1779 = !DILocation(line: 587, column: 9, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1643, file: !1, line: 586, column: 12)
!1781 = !DILocation(line: 590, column: 27, scope: !1618)
!1782 = !DILocation(line: 590, column: 5, scope: !1618)
!1783 = !DILocation(line: 591, column: 9, scope: !1618)
!1784 = !DILocation(line: 0, scope: !1642)
!1785 = !DILocation(line: 591, column: 9, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1618, file: !1, line: 591, column: 9)
!1787 = !DILocation(line: 591, column: 36, scope: !1786)
!1788 = !DILocation(line: 591, column: 14, scope: !1786)
!1789 = !DILocation(line: 592, column: 1, scope: !1618)
!1790 = distinct !DISubprogram(name: "parseScanCursorOrReply", scope: !1, file: !1, line: 598, type: !1791, isLocal: false, isDefinition: true, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1794)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!8, !423, !65, !1793}
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!1794 = !{!1795, !1796, !1797, !1798}
!1795 = !DILocalVariable(name: "c", arg: 1, scope: !1790, file: !1, line: 598, type: !423)
!1796 = !DILocalVariable(name: "o", arg: 2, scope: !1790, file: !1, line: 598, type: !65)
!1797 = !DILocalVariable(name: "cursor", arg: 3, scope: !1790, file: !1, line: 598, type: !1793)
!1798 = !DILocalVariable(name: "eptr", scope: !1790, file: !1, line: 599, type: !9)
!1799 = !DILocation(line: 598, column: 36, scope: !1790)
!1800 = !DILocation(line: 598, column: 45, scope: !1790)
!1801 = !DILocation(line: 598, column: 63, scope: !1790)
!1802 = !DILocation(line: 599, column: 5, scope: !1790)
!1803 = !DILocation(line: 603, column: 5, scope: !1790)
!1804 = !DILocation(line: 603, column: 11, scope: !1790)
!1805 = !DILocation(line: 604, column: 26, scope: !1790)
!1806 = !DILocation(line: 599, column: 11, scope: !1790)
!1807 = !DILocation(line: 604, column: 15, scope: !1790)
!1808 = !DILocation(line: 604, column: 13, scope: !1790)
!1809 = !DILocation(line: 605, column: 9, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1790, file: !1, line: 605, column: 9)
!1811 = !DILocation(line: 605, column: 37, scope: !1810)
!1812 = !DILocation(line: 605, column: 40, scope: !1810)
!1813 = !DILocation(line: 605, column: 48, scope: !1810)
!1814 = !DILocation(line: 605, column: 56, scope: !1810)
!1815 = !DILocation(line: 605, column: 59, scope: !1810)
!1816 = !DILocation(line: 605, column: 65, scope: !1810)
!1817 = !DILocation(line: 605, column: 9, scope: !1790)
!1818 = !DILocation(line: 607, column: 9, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1810, file: !1, line: 606, column: 5)
!1820 = !DILocation(line: 608, column: 9, scope: !1819)
!1821 = !DILocation(line: 0, scope: !1790)
!1822 = !DILocation(line: 611, column: 1, scope: !1790)
!1823 = distinct !DISubprogram(name: "scanGenericCommand", scope: !1, file: !1, line: 624, type: !1824, isLocal: false, isDefinition: true, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1826)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{null, !423, !65, !11}
!1826 = !{!1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1872, !1876, !1877, !1880, !1881, !1885, !1886, !1887, !1888, !1890, !1891, !1899, !1900}
!1827 = !DILocalVariable(name: "c", arg: 1, scope: !1823, file: !1, line: 624, type: !423)
!1828 = !DILocalVariable(name: "o", arg: 2, scope: !1823, file: !1, line: 624, type: !65)
!1829 = !DILocalVariable(name: "cursor", arg: 3, scope: !1823, file: !1, line: 624, type: !11)
!1830 = !DILocalVariable(name: "i", scope: !1823, file: !1, line: 625, type: !8)
!1831 = !DILocalVariable(name: "j", scope: !1823, file: !1, line: 625, type: !8)
!1832 = !DILocalVariable(name: "keys", scope: !1823, file: !1, line: 626, type: !167)
!1833 = !DILocalVariable(name: "node", scope: !1823, file: !1, line: 627, type: !173)
!1834 = !DILocalVariable(name: "nextnode", scope: !1823, file: !1, line: 627, type: !173)
!1835 = !DILocalVariable(name: "count", scope: !1823, file: !1, line: 628, type: !12)
!1836 = !DILocalVariable(name: "pat", scope: !1823, file: !1, line: 629, type: !432)
!1837 = !DILocalVariable(name: "patlen", scope: !1823, file: !1, line: 630, type: !8)
!1838 = !DILocalVariable(name: "use_pattern", scope: !1823, file: !1, line: 630, type: !8)
!1839 = !DILocalVariable(name: "ht", scope: !1823, file: !1, line: 631, type: !98)
!1840 = !DILocalVariable(name: "zs", scope: !1841, file: !1, line: 690, type: !1846)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !1, line: 689, column: 77)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !1, line: 689, column: 16)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !1, line: 686, column: 16)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !1, line: 684, column: 16)
!1845 = distinct !DILexicalBlock(scope: !1823, file: !1, line: 682, column: 9)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "zset", file: !67, line: 829, baseType: !1848)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zset", file: !67, line: 826, size: 128, elements: !1849)
!1849 = !{!1850, !1851}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !1848, file: !67, line: 827, baseType: !98, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "zsl", scope: !1848, file: !67, line: 828, baseType: !1852, size: 64, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "zskiplist", file: !67, line: 824, baseType: !1854)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplist", file: !67, line: 820, size: 256, elements: !1855)
!1855 = !{!1856, !1869, !1870, !1871}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1854, file: !67, line: 821, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistNode", file: !67, line: 810, size: 192, elements: !1859)
!1859 = !{!1860, !1861, !1862, !1863}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "ele", scope: !1858, file: !67, line: 811, baseType: !432, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "score", scope: !1858, file: !67, line: 812, baseType: !7, size: 64, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "backward", scope: !1858, file: !67, line: 813, baseType: !1857, size: 64, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1858, file: !67, line: 817, baseType: !1864, offset: 192)
!1864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1865, elements: !27)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistLevel", file: !67, line: 814, size: 128, elements: !1866)
!1866 = !{!1867, !1868}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1865, file: !67, line: 815, baseType: !1857, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "span", scope: !1865, file: !67, line: 816, baseType: !11, size: 64, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1854, file: !67, line: 821, baseType: !1857, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1854, file: !67, line: 822, baseType: !11, size: 64, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1854, file: !67, line: 823, baseType: !8, size: 32, offset: 192)
!1872 = !DILocalVariable(name: "privdata", scope: !1873, file: !1, line: 696, type: !1875)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !1, line: 695, column: 13)
!1874 = distinct !DILexicalBlock(scope: !1823, file: !1, line: 695, column: 9)
!1875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !155)
!1876 = !DILocalVariable(name: "maxiterations", scope: !1873, file: !1, line: 701, type: !12)
!1877 = !DILocalVariable(name: "pos", scope: !1878, file: !1, line: 714, type: !8)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !1, line: 713, column: 36)
!1879 = distinct !DILexicalBlock(scope: !1874, file: !1, line: 713, column: 16)
!1880 = !DILocalVariable(name: "ll", scope: !1878, file: !1, line: 715, type: !147)
!1881 = !DILocalVariable(name: "p", scope: !1882, file: !1, line: 721, type: !1884)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !1, line: 720, column: 60)
!1883 = distinct !DILexicalBlock(scope: !1879, file: !1, line: 720, column: 16)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!1885 = !DILocalVariable(name: "vstr", scope: !1882, file: !1, line: 722, type: !1884)
!1886 = !DILocalVariable(name: "vlen", scope: !1882, file: !1, line: 723, type: !45)
!1887 = !DILocalVariable(name: "vll", scope: !1882, file: !1, line: 724, type: !165)
!1888 = !DILocalVariable(name: "kobj", scope: !1889, file: !1, line: 741, type: !65)
!1889 = distinct !DILexicalBlock(scope: !1823, file: !1, line: 740, column: 18)
!1890 = !DILocalVariable(name: "filter", scope: !1889, file: !1, line: 743, type: !8)
!1891 = !DILocalVariable(name: "buf", scope: !1892, file: !1, line: 751, type: !1896)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !1, line: 750, column: 20)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !1, line: 747, column: 17)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !1, line: 746, column: 37)
!1895 = distinct !DILexicalBlock(scope: !1889, file: !1, line: 746, column: 13)
!1896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 168, elements: !1897)
!1897 = !{!1898}
!1898 = !DISubrange(count: 21)
!1899 = !DILocalVariable(name: "len", scope: !1892, file: !1, line: 752, type: !8)
!1900 = !DILocalVariable(name: "kobj", scope: !1901, file: !1, line: 790, type: !65)
!1901 = distinct !DILexicalBlock(scope: !1823, file: !1, line: 789, column: 46)
!1902 = !DILocation(line: 624, column: 33, scope: !1823)
!1903 = !DILocation(line: 624, column: 42, scope: !1823)
!1904 = !DILocation(line: 624, column: 59, scope: !1823)
!1905 = !DILocation(line: 626, column: 18, scope: !1823)
!1906 = !DILocation(line: 626, column: 11, scope: !1823)
!1907 = !DILocation(line: 628, column: 5, scope: !1823)
!1908 = !DILocation(line: 628, column: 10, scope: !1823)
!1909 = !DILocation(line: 629, column: 9, scope: !1823)
!1910 = !DILocation(line: 630, column: 9, scope: !1823)
!1911 = !DILocation(line: 630, column: 21, scope: !1823)
!1912 = !DILocation(line: 635, column: 5, scope: !1823)
!1913 = !DILocation(line: 639, column: 9, scope: !1823)
!1914 = !DILocation(line: 625, column: 9, scope: !1823)
!1915 = !DILocation(line: 642, column: 19, scope: !1823)
!1916 = !DILocation(line: 642, column: 14, scope: !1823)
!1917 = !DILocation(line: 642, column: 5, scope: !1823)
!1918 = !DILocation(line: 643, column: 21, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1823, file: !1, line: 642, column: 25)
!1920 = !DILocation(line: 625, column: 12, scope: !1823)
!1921 = !DILocation(line: 644, column: 28, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1919, file: !1, line: 644, column: 13)
!1923 = !DILocation(line: 644, column: 25, scope: !1922)
!1924 = !DILocation(line: 644, column: 37, scope: !1922)
!1925 = !DILocation(line: 644, column: 14, scope: !1922)
!1926 = !DILocation(line: 644, column: 56, scope: !1922)
!1927 = !DILocation(line: 644, column: 51, scope: !1922)
!1928 = !DILocation(line: 645, column: 54, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !1, line: 645, column: 17)
!1930 = distinct !DILexicalBlock(scope: !1922, file: !1, line: 644, column: 62)
!1931 = !DILocation(line: 645, column: 45, scope: !1929)
!1932 = !DILocation(line: 645, column: 17, scope: !1929)
!1933 = !DILocation(line: 646, column: 17, scope: !1929)
!1934 = !DILocation(line: 645, column: 17, scope: !1930)
!1935 = !DILocation(line: 651, column: 17, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1930, file: !1, line: 651, column: 17)
!1937 = !DILocation(line: 651, column: 23, scope: !1936)
!1938 = !DILocation(line: 651, column: 17, scope: !1930)
!1939 = !DILocation(line: 652, column: 35, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1936, file: !1, line: 651, column: 28)
!1941 = !DILocation(line: 652, column: 17, scope: !1940)
!1942 = !DILocation(line: 653, column: 17, scope: !1940)
!1943 = !DILocation(line: 657, column: 21, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1922, file: !1, line: 657, column: 20)
!1945 = !DILocation(line: 657, column: 58, scope: !1944)
!1946 = !DILocation(line: 658, column: 28, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1944, file: !1, line: 657, column: 69)
!1948 = !DILocation(line: 658, column: 19, scope: !1947)
!1949 = !DILocation(line: 658, column: 33, scope: !1947)
!1950 = !DILocation(line: 87, column: 39, scope: !806, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 659, column: 22, scope: !1947)
!1952 = !DILocation(line: 88, column: 27, scope: !806, inlinedAt: !1951)
!1953 = !DILocation(line: 88, column: 19, scope: !806, inlinedAt: !1951)
!1954 = !DILocation(line: 89, column: 5, scope: !806, inlinedAt: !1951)
!1955 = !DILocation(line: 91, column: 20, scope: !820, inlinedAt: !1951)
!1956 = !DILocation(line: 91, column: 13, scope: !820, inlinedAt: !1951)
!1957 = !DILocation(line: 93, column: 20, scope: !820, inlinedAt: !1951)
!1958 = !DILocation(line: 93, column: 34, scope: !820, inlinedAt: !1951)
!1959 = !DILocation(line: 93, column: 13, scope: !820, inlinedAt: !1951)
!1960 = !DILocation(line: 95, column: 20, scope: !820, inlinedAt: !1951)
!1961 = !DILocation(line: 95, column: 35, scope: !820, inlinedAt: !1951)
!1962 = !DILocation(line: 95, column: 13, scope: !820, inlinedAt: !1951)
!1963 = !DILocation(line: 97, column: 20, scope: !820, inlinedAt: !1951)
!1964 = !DILocation(line: 97, column: 35, scope: !820, inlinedAt: !1951)
!1965 = !DILocation(line: 97, column: 13, scope: !820, inlinedAt: !1951)
!1966 = !DILocation(line: 99, column: 20, scope: !820, inlinedAt: !1951)
!1967 = !DILocation(line: 99, column: 35, scope: !820, inlinedAt: !1951)
!1968 = !DILocation(line: 99, column: 13, scope: !820, inlinedAt: !1951)
!1969 = !DILocation(line: 0, scope: !820, inlinedAt: !1951)
!1970 = !DILocation(line: 659, column: 22, scope: !1947)
!1971 = !DILocation(line: 663, column: 29, scope: !1947)
!1972 = !DILocation(line: 663, column: 36, scope: !1947)
!1973 = !DILocation(line: 663, column: 53, scope: !1947)
!1974 = !DILocation(line: 663, column: 27, scope: !1947)
!1975 = !DILocation(line: 667, column: 31, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1944, file: !1, line: 666, column: 16)
!1977 = !DILocation(line: 667, column: 13, scope: !1976)
!1978 = !DILocation(line: 668, column: 13, scope: !1976)
!1979 = !DILocation(line: 0, scope: !1947)
!1980 = distinct !{!1980, !1917, !1981}
!1981 = !DILocation(line: 670, column: 5, scope: !1823)
!1982 = !DILocation(line: 631, column: 11, scope: !1823)
!1983 = !DILocation(line: 682, column: 9, scope: !1823)
!1984 = !DILocation(line: 683, column: 17, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1845, file: !1, line: 682, column: 20)
!1986 = !DILocation(line: 683, column: 21, scope: !1985)
!1987 = !DILocation(line: 684, column: 5, scope: !1985)
!1988 = !DILocation(line: 684, column: 19, scope: !1844)
!1989 = !DILocation(line: 684, column: 35, scope: !1844)
!1990 = !DILocation(line: 685, column: 17, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1844, file: !1, line: 684, column: 70)
!1992 = !DILocation(line: 686, column: 5, scope: !1991)
!1993 = !DILocation(line: 687, column: 17, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1843, file: !1, line: 686, column: 71)
!1995 = !DILocation(line: 688, column: 15, scope: !1994)
!1996 = !DILocation(line: 689, column: 5, scope: !1994)
!1997 = !DILocation(line: 690, column: 23, scope: !1841)
!1998 = !DILocation(line: 690, column: 15, scope: !1841)
!1999 = !DILocation(line: 691, column: 18, scope: !1841)
!2000 = !{!2001, !209, i64 0}
!2001 = !{!"zset", !209, i64 0, !209, i64 8}
!2002 = !DILocation(line: 692, column: 15, scope: !1841)
!2003 = !DILocation(line: 693, column: 5, scope: !1841)
!2004 = !DILocation(line: 0, scope: !1823)
!2005 = !DILocation(line: 695, column: 9, scope: !1874)
!2006 = !DILocation(line: 695, column: 9, scope: !1823)
!2007 = !DILocation(line: 713, column: 19, scope: !1879)
!2008 = !DILocation(line: 696, column: 9, scope: !1873)
!2009 = !DILocation(line: 696, column: 15, scope: !1873)
!2010 = !DILocation(line: 701, column: 35, scope: !1873)
!2011 = !DILocation(line: 701, column: 14, scope: !1873)
!2012 = !DILocation(line: 706, column: 21, scope: !1873)
!2013 = !DILocation(line: 707, column: 9, scope: !1873)
!2014 = !DILocation(line: 707, column: 21, scope: !1873)
!2015 = !DILocation(line: 708, column: 9, scope: !1873)
!2016 = !DILocation(line: 0, scope: !1873)
!2017 = !DILocation(line: 709, column: 22, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1873, file: !1, line: 708, column: 12)
!2019 = !DILocation(line: 710, column: 18, scope: !1873)
!2020 = !DILocation(line: 711, column: 28, scope: !1873)
!2021 = !DILocation(line: 710, column: 25, scope: !1873)
!2022 = !DILocation(line: 712, column: 15, scope: !1873)
!2023 = !{!2024, !228, i64 40}
!2024 = !{!"list", !209, i64 0, !209, i64 8, !209, i64 16, !209, i64 24, !209, i64 32, !228, i64 40}
!2025 = !DILocation(line: 712, column: 49, scope: !1873)
!2026 = !DILocation(line: 712, column: 32, scope: !1873)
!2027 = !DILocation(line: 710, column: 9, scope: !2018)
!2028 = distinct !{!2028, !2015, !2029}
!2029 = !DILocation(line: 712, column: 54, scope: !1873)
!2030 = !DILocation(line: 713, column: 5, scope: !1874)
!2031 = !DILocation(line: 713, column: 5, scope: !1873)
!2032 = !DILocation(line: 713, column: 16, scope: !1874)
!2033 = !DILocation(line: 714, column: 13, scope: !1878)
!2034 = !DILocation(line: 715, column: 9, scope: !1878)
!2035 = !DILocation(line: 717, column: 28, scope: !1878)
!2036 = !DILocation(line: 715, column: 17, scope: !1878)
!2037 = !DILocation(line: 717, column: 15, scope: !1878)
!2038 = !DILocation(line: 717, column: 9, scope: !1878)
!2039 = !DILocation(line: 717, column: 35, scope: !1878)
!2040 = !DILocation(line: 718, column: 65, scope: !1878)
!2041 = !DILocation(line: 718, column: 34, scope: !1878)
!2042 = !DILocation(line: 718, column: 13, scope: !1878)
!2043 = distinct !{!2043, !2038, !2044}
!2044 = !DILocation(line: 718, column: 68, scope: !1878)
!2045 = !DILocation(line: 720, column: 5, scope: !1879)
!2046 = !DILocation(line: 720, column: 5, scope: !1878)
!2047 = !DILocation(line: 721, column: 44, scope: !1882)
!2048 = !DILocation(line: 721, column: 28, scope: !1882)
!2049 = !DILocation(line: 721, column: 24, scope: !1882)
!2050 = !DILocation(line: 722, column: 9, scope: !1882)
!2051 = !DILocation(line: 723, column: 9, scope: !1882)
!2052 = !DILocation(line: 724, column: 9, scope: !1882)
!2053 = !DILocation(line: 726, column: 9, scope: !1882)
!2054 = !DILocation(line: 722, column: 24, scope: !1882)
!2055 = !DILocation(line: 723, column: 22, scope: !1882)
!2056 = !DILocation(line: 724, column: 19, scope: !1882)
!2057 = !DILocation(line: 727, column: 13, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1882, file: !1, line: 726, column: 18)
!2059 = !DILocation(line: 729, column: 18, scope: !2058)
!2060 = !DILocation(line: 729, column: 23, scope: !2058)
!2061 = !DILocation(line: 729, column: 17, scope: !2058)
!2062 = !DILocation(line: 729, column: 65, scope: !2058)
!2063 = !DILocation(line: 729, column: 34, scope: !2058)
!2064 = !DILocation(line: 730, column: 65, scope: !2058)
!2065 = !DILocation(line: 730, column: 34, scope: !2058)
!2066 = !DILocation(line: 728, column: 13, scope: !2058)
!2067 = !DILocation(line: 731, column: 32, scope: !2058)
!2068 = !DILocation(line: 731, column: 17, scope: !2058)
!2069 = distinct !{!2069, !2053, !2070}
!2070 = !DILocation(line: 732, column: 9, scope: !1882)
!2071 = !DILocation(line: 734, column: 5, scope: !1883)
!2072 = !DILocation(line: 735, column: 9, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !1883, file: !1, line: 734, column: 12)
!2074 = !DILocation(line: 0, scope: !1882)
!2075 = !DILocation(line: 739, column: 12, scope: !1823)
!2076 = !{!2024, !209, i64 0}
!2077 = !DILocation(line: 627, column: 15, scope: !1823)
!2078 = !DILocation(line: 740, column: 5, scope: !1823)
!2079 = !DILocation(line: 741, column: 22, scope: !1889)
!2080 = !{!2081, !209, i64 16}
!2081 = !{!"listNode", !209, i64 0, !209, i64 8, !209, i64 16}
!2082 = !DILocation(line: 741, column: 15, scope: !1889)
!2083 = !DILocation(line: 742, column: 20, scope: !1889)
!2084 = !{!2081, !209, i64 8}
!2085 = !DILocation(line: 627, column: 22, scope: !1823)
!2086 = !DILocation(line: 743, column: 13, scope: !1889)
!2087 = !DILocation(line: 746, column: 21, scope: !1895)
!2088 = !DILocation(line: 747, column: 17, scope: !1893)
!2089 = !DILocation(line: 748, column: 56, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !1, line: 748, column: 21)
!2091 = distinct !DILexicalBlock(scope: !1893, file: !1, line: 747, column: 41)
!2092 = !DILocation(line: 87, column: 39, scope: !806, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 748, column: 61, scope: !2090)
!2094 = !DILocation(line: 88, column: 27, scope: !806, inlinedAt: !2093)
!2095 = !DILocation(line: 88, column: 19, scope: !806, inlinedAt: !2093)
!2096 = !DILocation(line: 89, column: 5, scope: !806, inlinedAt: !2093)
!2097 = !DILocation(line: 91, column: 20, scope: !820, inlinedAt: !2093)
!2098 = !DILocation(line: 91, column: 13, scope: !820, inlinedAt: !2093)
!2099 = !DILocation(line: 93, column: 20, scope: !820, inlinedAt: !2093)
!2100 = !DILocation(line: 93, column: 34, scope: !820, inlinedAt: !2093)
!2101 = !DILocation(line: 93, column: 13, scope: !820, inlinedAt: !2093)
!2102 = !DILocation(line: 95, column: 20, scope: !820, inlinedAt: !2093)
!2103 = !DILocation(line: 95, column: 35, scope: !820, inlinedAt: !2093)
!2104 = !DILocation(line: 95, column: 13, scope: !820, inlinedAt: !2093)
!2105 = !DILocation(line: 97, column: 20, scope: !820, inlinedAt: !2093)
!2106 = !DILocation(line: 97, column: 35, scope: !820, inlinedAt: !2093)
!2107 = !DILocation(line: 97, column: 13, scope: !820, inlinedAt: !2093)
!2108 = !DILocation(line: 99, column: 20, scope: !820, inlinedAt: !2093)
!2109 = !DILocation(line: 99, column: 35, scope: !820, inlinedAt: !2093)
!2110 = !DILocation(line: 99, column: 13, scope: !820, inlinedAt: !2093)
!2111 = !DILocation(line: 0, scope: !820, inlinedAt: !2093)
!2112 = !DILocation(line: 748, column: 61, scope: !2090)
!2113 = !DILocation(line: 748, column: 22, scope: !2090)
!2114 = !DILocation(line: 748, column: 21, scope: !2091)
!2115 = !DILocation(line: 751, column: 17, scope: !1892)
!2116 = !DILocation(line: 751, column: 22, scope: !1892)
!2117 = !DILocation(line: 754, column: 17, scope: !1892)
!2118 = !DILocation(line: 755, column: 61, scope: !1892)
!2119 = !DILocation(line: 755, column: 23, scope: !1892)
!2120 = !DILocation(line: 752, column: 21, scope: !1892)
!2121 = !DILocation(line: 756, column: 22, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !1892, file: !1, line: 756, column: 21)
!2123 = !DILocation(line: 757, column: 13, scope: !1893)
!2124 = !DILocation(line: 761, column: 14, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !1889, file: !1, line: 761, column: 13)
!2126 = !DILocation(line: 761, column: 21, scope: !2125)
!2127 = !DILocation(line: 761, column: 55, scope: !2125)
!2128 = !DILocation(line: 761, column: 37, scope: !2125)
!2129 = !DILocation(line: 764, column: 13, scope: !1889)
!2130 = !DILocation(line: 765, column: 13, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !1, line: 764, column: 21)
!2132 = distinct !DILexicalBlock(scope: !1889, file: !1, line: 764, column: 13)
!2133 = !DILocation(line: 766, column: 13, scope: !2131)
!2134 = !DILocation(line: 767, column: 9, scope: !2131)
!2135 = !DILocation(line: 772, column: 15, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !1889, file: !1, line: 772, column: 13)
!2137 = !DILocation(line: 772, column: 22, scope: !2136)
!2138 = !DILocation(line: 772, column: 39, scope: !2136)
!2139 = !DILocation(line: 774, column: 24, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2136, file: !1, line: 772, column: 64)
!2141 = !DILocation(line: 775, column: 17, scope: !2140)
!2142 = !DILocation(line: 776, column: 24, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !1, line: 775, column: 25)
!2144 = distinct !DILexicalBlock(scope: !2140, file: !1, line: 775, column: 17)
!2145 = !DILocation(line: 777, column: 17, scope: !2143)
!2146 = !DILocation(line: 778, column: 17, scope: !2143)
!2147 = !DILocation(line: 779, column: 13, scope: !2143)
!2148 = !DILocation(line: 0, scope: !1889)
!2149 = distinct !{!2149, !2078, !2150}
!2150 = !DILocation(line: 782, column: 5, scope: !1823)
!2151 = !DILocation(line: 785, column: 5, scope: !1823)
!2152 = !DILocation(line: 786, column: 5, scope: !1823)
!2153 = !DILocation(line: 788, column: 29, scope: !1823)
!2154 = !DILocation(line: 788, column: 5, scope: !1823)
!2155 = !DILocation(line: 789, column: 20, scope: !1823)
!2156 = !DILocation(line: 789, column: 37, scope: !1823)
!2157 = !DILocation(line: 789, column: 5, scope: !1823)
!2158 = !DILocation(line: 790, column: 22, scope: !1901)
!2159 = !DILocation(line: 790, column: 15, scope: !1901)
!2160 = !DILocation(line: 791, column: 9, scope: !1901)
!2161 = !DILocation(line: 792, column: 9, scope: !1901)
!2162 = !DILocation(line: 793, column: 9, scope: !1901)
!2163 = distinct !{!2163, !2157, !2164}
!2164 = !DILocation(line: 794, column: 5, scope: !1823)
!2165 = !DILocation(line: 797, column: 5, scope: !1823)
!2166 = !{!2024, !209, i64 24}
!2167 = !DILocation(line: 798, column: 5, scope: !1823)
!2168 = !DILocation(line: 799, column: 1, scope: !1823)
!2169 = distinct !DISubprogram(name: "scanCommand", scope: !1, file: !1, line: 802, type: !451, isLocal: false, isDefinition: true, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2170)
!2170 = !{!2171, !2172}
!2171 = !DILocalVariable(name: "c", arg: 1, scope: !2169, file: !1, line: 802, type: !423)
!2172 = !DILocalVariable(name: "cursor", scope: !2169, file: !1, line: 803, type: !11)
!2173 = !DILocation(line: 802, column: 26, scope: !2169)
!2174 = !DILocation(line: 804, column: 37, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2169, file: !1, line: 804, column: 9)
!2176 = !DILocation(line: 804, column: 34, scope: !2175)
!2177 = !DILocation(line: 598, column: 36, scope: !1790, inlinedAt: !2178)
!2178 = distinct !DILocation(line: 804, column: 9, scope: !2175)
!2179 = !DILocation(line: 598, column: 45, scope: !1790, inlinedAt: !2178)
!2180 = !DILocation(line: 599, column: 5, scope: !1790, inlinedAt: !2178)
!2181 = !DILocation(line: 603, column: 5, scope: !1790, inlinedAt: !2178)
!2182 = !DILocation(line: 603, column: 11, scope: !1790, inlinedAt: !2178)
!2183 = !DILocation(line: 604, column: 26, scope: !1790, inlinedAt: !2178)
!2184 = !DILocation(line: 599, column: 11, scope: !1790, inlinedAt: !2178)
!2185 = !DILocation(line: 604, column: 15, scope: !1790, inlinedAt: !2178)
!2186 = !DILocation(line: 605, column: 9, scope: !1810, inlinedAt: !2178)
!2187 = !DILocation(line: 605, column: 37, scope: !1810, inlinedAt: !2178)
!2188 = !DILocation(line: 605, column: 40, scope: !1810, inlinedAt: !2178)
!2189 = !DILocation(line: 605, column: 48, scope: !1810, inlinedAt: !2178)
!2190 = !DILocation(line: 605, column: 56, scope: !1810, inlinedAt: !2178)
!2191 = !DILocation(line: 605, column: 59, scope: !1810, inlinedAt: !2178)
!2192 = !DILocation(line: 605, column: 65, scope: !1810, inlinedAt: !2178)
!2193 = !DILocation(line: 605, column: 9, scope: !1790, inlinedAt: !2178)
!2194 = !DILocation(line: 607, column: 9, scope: !1819, inlinedAt: !2178)
!2195 = !DILocation(line: 611, column: 1, scope: !1790, inlinedAt: !2178)
!2196 = !DILocation(line: 804, column: 9, scope: !2169)
!2197 = !DILocation(line: 803, column: 19, scope: !2169)
!2198 = !DILocation(line: 805, column: 5, scope: !2169)
!2199 = !DILocation(line: 806, column: 1, scope: !2169)
!2200 = distinct !DISubprogram(name: "dbsizeCommand", scope: !1, file: !1, line: 808, type: !451, isLocal: false, isDefinition: true, scopeLine: 808, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2201)
!2201 = !{!2202}
!2202 = !DILocalVariable(name: "c", arg: 1, scope: !2200, file: !1, line: 808, type: !423)
!2203 = !DILocation(line: 808, column: 28, scope: !2200)
!2204 = !DILocation(line: 809, column: 24, scope: !2200)
!2205 = !DILocation(line: 809, column: 5, scope: !2200)
!2206 = !DILocation(line: 810, column: 1, scope: !2200)
!2207 = distinct !DISubprogram(name: "lastsaveCommand", scope: !1, file: !1, line: 812, type: !451, isLocal: false, isDefinition: true, scopeLine: 812, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2208)
!2208 = !{!2209}
!2209 = !DILocalVariable(name: "c", arg: 1, scope: !2207, file: !1, line: 812, type: !423)
!2210 = !DILocation(line: 812, column: 30, scope: !2207)
!2211 = !DILocation(line: 813, column: 31, scope: !2207)
!2212 = !{!227, !228, i64 2136}
!2213 = !DILocation(line: 813, column: 5, scope: !2207)
!2214 = !DILocation(line: 814, column: 1, scope: !2207)
!2215 = distinct !DISubprogram(name: "typeCommand", scope: !1, file: !1, line: 816, type: !451, isLocal: false, isDefinition: true, scopeLine: 816, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2216)
!2216 = !{!2217, !2218, !2219, !2220}
!2217 = !DILocalVariable(name: "c", arg: 1, scope: !2215, file: !1, line: 816, type: !423)
!2218 = !DILocalVariable(name: "o", scope: !2215, file: !1, line: 817, type: !65)
!2219 = !DILocalVariable(name: "type", scope: !2215, file: !1, line: 818, type: !9)
!2220 = !DILocalVariable(name: "mv", scope: !2221, file: !1, line: 832, type: !2225)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !1, line: 831, column: 26)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !1, line: 824, column: 25)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !1, line: 823, column: 12)
!2224 = distinct !DILexicalBlock(scope: !2215, file: !1, line: 821, column: 9)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleValue", file: !67, line: 550, baseType: !2227)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "moduleValue", file: !67, line: 547, size: 128, elements: !2228)
!2228 = !{!2229, !2558}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2227, file: !67, line: 548, baseType: !2230, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleType", file: !67, line: 530, baseType: !2232)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleType", file: !67, line: 517, size: 768, elements: !2233)
!2233 = !{!2234, !2235, !2238, !2513, !2518, !2523, !2528, !2541, !2543, !2548, !2553, !2554}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2232, file: !67, line: 518, baseType: !53, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2232, file: !67, line: 519, baseType: !2236, size: 64, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModule", file: !67, line: 496, flags: DIFlagFwdDecl)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "rdb_load", scope: !2232, file: !67, line: 520, baseType: !2239, size: 64, offset: 128)
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeLoadFunc", file: !67, line: 506, baseType: !2240)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!4, !2243, !8}
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleIO", file: !67, line: 555, size: 384, elements: !2245)
!2245 = !{!2246, !2247, !2505, !2506, !2507, !2508, !2511}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !2244, file: !67, line: 556, baseType: !434, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "rio", scope: !2244, file: !67, line: 557, baseType: !2248, size: 64, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_typedef, name: "rio", file: !2250, line: 87, baseType: !2251)
!2250 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rio.h", directory: "/root/.unikraft/apps/redis/build")
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rio", file: !2250, line: 39, size: 832, elements: !2252)
!2252 = !{!2253, !2258, !2262, !2266, !2270, !2274, !2275, !2276, !2277}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2251, file: !2250, line: 43, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!809, !2257, !4, !809}
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2251, file: !2250, line: 44, baseType: !2259, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!809, !2257, !112, !809}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "tell", scope: !2251, file: !2250, line: 45, baseType: !2263, size: 64, offset: 128)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!486, !2257}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2251, file: !2250, line: 46, baseType: !2267, size: 64, offset: 192)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!8, !2257}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "update_cksum", scope: !2251, file: !2250, line: 52, baseType: !2271, size: 64, offset: 256)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{null, !2257, !112, !809}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "cksum", scope: !2251, file: !2250, line: 55, baseType: !53, size: 64, offset: 320)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "processed_bytes", scope: !2251, file: !2250, line: 58, baseType: !809, size: 64, offset: 384)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "max_processing_chunk", scope: !2251, file: !2250, line: 61, baseType: !809, size: 64, offset: 448)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !2251, file: !2250, line: 84, baseType: !2278, size: 320, offset: 512)
!2278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2251, file: !2250, line: 64, size: 320, elements: !2279)
!2279 = !{!2280, !2285, !2497}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2278, file: !2250, line: 69, baseType: !2281, size: 128)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2278, file: !2250, line: 66, size: 128, elements: !2282)
!2282 = !{!2283, !2284}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2281, file: !2250, line: 67, baseType: !432, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2281, file: !2250, line: 68, baseType: !486, size: 64, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2278, file: !2250, line: 75, baseType: !2286, size: 192)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2278, file: !2250, line: 71, size: 192, elements: !2287)
!2287 = !{!2288, !2495, !2496}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !2286, file: !2250, line: 72, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2291, line: 66, baseType: !2292)
!2291 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !2293, line: 287, baseType: !2294)
!2293 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !2293, line: 181, size: 1408, elements: !2295)
!2295 = !{!2296, !2297, !2298, !2299, !2301, !2302, !2307, !2308, !2309, !2463, !2469, !2474, !2478, !2479, !2480, !2481, !2483, !2485, !2486, !2487, !2488, !2489, !2493, !2494}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !2294, file: !2293, line: 182, baseType: !1884, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !2294, file: !2293, line: 183, baseType: !8, size: 32, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !2294, file: !2293, line: 184, baseType: !8, size: 32, offset: 96)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2294, file: !2293, line: 185, baseType: !2300, size: 16, offset: 128)
!2300 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !2294, file: !2293, line: 186, baseType: !2300, size: 16, offset: 144)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !2294, file: !2293, line: 187, baseType: !2303, size: 128, offset: 192)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !2293, line: 117, size: 128, elements: !2304)
!2304 = !{!2305, !2306}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !2303, file: !2293, line: 118, baseType: !1884, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !2303, file: !2293, line: 119, baseType: !8, size: 32, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !2294, file: !2293, line: 188, baseType: !8, size: 32, offset: 320)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !2294, file: !2293, line: 195, baseType: !4, size: 64, offset: 384)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !2294, file: !2293, line: 197, baseType: !2310, size: 64, offset: 448)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!2313, !2314, !4, !9, !8}
!2313 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !437, line: 145, baseType: !12)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !2293, line: 569, size: 14912, elements: !2316)
!2316 = !{!2317, !2318, !2320, !2321, !2322, !2323, !2327, !2328, !2331, !2332, !2336, !2350, !2351, !2352, !2354, !2355, !2356, !2431, !2450, !2451, !2454, !2461}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !2315, file: !2293, line: 571, baseType: !8, size: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !2315, file: !2293, line: 576, baseType: !2319, size: 64, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !2315, file: !2293, line: 576, baseType: !2319, size: 64, offset: 128)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !2315, file: !2293, line: 576, baseType: !2319, size: 64, offset: 192)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !2315, file: !2293, line: 578, baseType: !8, size: 32, offset: 256)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !2315, file: !2293, line: 579, baseType: !2324, size: 200, offset: 288)
!2324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 200, elements: !2325)
!2325 = !{!2326}
!2326 = !DISubrange(count: 25)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !2315, file: !2293, line: 582, baseType: !8, size: 32, offset: 512)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !2315, file: !2293, line: 583, baseType: !2329, size: 64, offset: 576)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !2293, line: 40, flags: DIFlagFwdDecl)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !2315, file: !2293, line: 585, baseType: !8, size: 32, offset: 640)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !2315, file: !2293, line: 587, baseType: !2333, size: 64, offset: 704)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{null, !2314}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !2315, file: !2293, line: 590, baseType: !2337, size: 64, offset: 768)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !2293, line: 47, size: 256, elements: !2339)
!2339 = !{!2340, !2341, !2342, !2343, !2344, !2345}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2338, file: !2293, line: 49, baseType: !2337, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !2338, file: !2293, line: 50, baseType: !8, size: 32, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !2338, file: !2293, line: 50, baseType: !8, size: 32, offset: 96)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !2338, file: !2293, line: 50, baseType: !8, size: 32, offset: 128)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !2338, file: !2293, line: 50, baseType: !8, size: 32, offset: 160)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !2338, file: !2293, line: 51, baseType: !2346, size: 32, offset: 192)
!2346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2347, size: 32, elements: !2348)
!2347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !2293, line: 25, baseType: !45)
!2348 = !{!2349}
!2349 = !DISubrange(count: 1)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !2315, file: !2293, line: 591, baseType: !8, size: 32, offset: 832)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !2315, file: !2293, line: 592, baseType: !2337, size: 64, offset: 896)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !2315, file: !2293, line: 593, baseType: !2353, size: 64, offset: 960)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !2315, file: !2293, line: 596, baseType: !8, size: 32, offset: 1024)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !2315, file: !2293, line: 597, baseType: !9, size: 64, offset: 1088)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !2315, file: !2293, line: 632, baseType: !2357, size: 2880, offset: 1152)
!2357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2315, file: !2293, line: 599, size: 2880, elements: !2358)
!2358 = !{!2359, !2422}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !2357, file: !2293, line: 622, baseType: !2360, size: 1728)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2357, file: !2293, line: 601, size: 1728, elements: !2361)
!2361 = !{!2362, !2363, !2364, !2368, !2380, !2381, !2382, !2391, !2405, !2406, !2407, !2411, !2415, !2416, !2417, !2418, !2419, !2420, !2421}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !2360, file: !2293, line: 603, baseType: !45, size: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !2360, file: !2293, line: 604, baseType: !9, size: 64, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !2360, file: !2293, line: 605, baseType: !2365, size: 208, offset: 128)
!2365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 208, elements: !2366)
!2366 = !{!2367}
!2367 = !DISubrange(count: 26)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !2360, file: !2293, line: 606, baseType: !2369, size: 288, offset: 352)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !2293, line: 55, size: 288, elements: !2370)
!2370 = !{!2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !2369, file: !2293, line: 57, baseType: !8, size: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !2369, file: !2293, line: 58, baseType: !8, size: 32, offset: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !2369, file: !2293, line: 59, baseType: !8, size: 32, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !2369, file: !2293, line: 60, baseType: !8, size: 32, offset: 96)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !2369, file: !2293, line: 61, baseType: !8, size: 32, offset: 128)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !2369, file: !2293, line: 62, baseType: !8, size: 32, offset: 160)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !2369, file: !2293, line: 63, baseType: !8, size: 32, offset: 192)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !2369, file: !2293, line: 64, baseType: !8, size: 32, offset: 224)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !2369, file: !2293, line: 65, baseType: !8, size: 32, offset: 256)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !2360, file: !2293, line: 607, baseType: !8, size: 32, offset: 640)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !2360, file: !2293, line: 608, baseType: !473, size: 64, offset: 704)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !2360, file: !2293, line: 609, baseType: !2383, size: 112, offset: 768)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !2293, line: 319, size: 112, elements: !2384)
!2384 = !{!2385, !2389, !2390}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !2383, file: !2293, line: 320, baseType: !2386, size: 48)
!2386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 48, elements: !2387)
!2387 = !{!2388}
!2388 = !DISubrange(count: 3)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !2383, file: !2293, line: 321, baseType: !2386, size: 48, offset: 48)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !2383, file: !2293, line: 322, baseType: !35, size: 16, offset: 96)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !2360, file: !2293, line: 610, baseType: !2392, size: 64, offset: 896)
!2392 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !437, line: 171, baseType: !2393)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !437, line: 163, size: 64, elements: !2394)
!2394 = !{!2395, !2396}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2393, file: !437, line: 165, baseType: !8, size: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2393, file: !437, line: 170, baseType: !2397, size: 32, offset: 32)
!2397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2393, file: !437, line: 166, size: 32, elements: !2398)
!2398 = !{!2399, !2401}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2397, file: !437, line: 168, baseType: !2400, size: 32)
!2400 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !810, line: 124, baseType: !45)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2397, file: !437, line: 169, baseType: !2402, size: 32)
!2402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !2403)
!2403 = !{!2404}
!2404 = !DISubrange(count: 4)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !2360, file: !2293, line: 611, baseType: !2392, size: 64, offset: 960)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !2360, file: !2293, line: 612, baseType: !2392, size: 64, offset: 1024)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !2360, file: !2293, line: 613, baseType: !2408, size: 64, offset: 1088)
!2408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !2409)
!2409 = !{!2410}
!2410 = !DISubrange(count: 8)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !2360, file: !2293, line: 614, baseType: !2412, size: 192, offset: 1152)
!2412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !2413)
!2413 = !{!2414}
!2414 = !DISubrange(count: 24)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !2360, file: !2293, line: 615, baseType: !8, size: 32, offset: 1344)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !2360, file: !2293, line: 616, baseType: !2392, size: 64, offset: 1376)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !2360, file: !2293, line: 617, baseType: !2392, size: 64, offset: 1440)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !2360, file: !2293, line: 618, baseType: !2392, size: 64, offset: 1504)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !2360, file: !2293, line: 619, baseType: !2392, size: 64, offset: 1568)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !2360, file: !2293, line: 620, baseType: !2392, size: 64, offset: 1632)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !2360, file: !2293, line: 621, baseType: !8, size: 32, offset: 1696)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !2357, file: !2293, line: 631, baseType: !2423, size: 2880)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2357, file: !2293, line: 626, size: 2880, elements: !2424)
!2424 = !{!2425, !2429}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !2423, file: !2293, line: 629, baseType: !2426, size: 1920)
!2426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1884, size: 1920, elements: !2427)
!2427 = !{!2428}
!2428 = !DISubrange(count: 30)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !2423, file: !2293, line: 630, baseType: !2430, size: 960, offset: 1920)
!2430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 960, elements: !2427)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !2315, file: !2293, line: 636, baseType: !2432, size: 64, offset: 4032)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !2293, line: 93, size: 6336, elements: !2434)
!2434 = !{!2435, !2436, !2437, !2442}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2433, file: !2293, line: 94, baseType: !2432, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !2433, file: !2293, line: 95, baseType: !8, size: 32, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !2433, file: !2293, line: 97, baseType: !2438, size: 2048, offset: 128)
!2438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2439, size: 2048, elements: !2440)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!2440 = !{!2441}
!2441 = !DISubrange(count: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !2433, file: !2293, line: 98, baseType: !2443, size: 4160, offset: 2176)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !2293, line: 74, size: 4160, elements: !2444)
!2444 = !{!2445, !2447, !2448, !2449}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !2443, file: !2293, line: 75, baseType: !2446, size: 2048)
!2446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !2440)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !2443, file: !2293, line: 76, baseType: !2446, size: 2048, offset: 2048)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !2443, file: !2293, line: 78, baseType: !2347, size: 32, offset: 4096)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !2443, file: !2293, line: 81, baseType: !2347, size: 32, offset: 4128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !2315, file: !2293, line: 637, baseType: !2433, size: 6336, offset: 4096)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !2315, file: !2293, line: 641, baseType: !2452, size: 64, offset: 10432)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !2315, file: !2293, line: 646, baseType: !2455, size: 192, offset: 10496)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !2293, line: 291, size: 192, elements: !2456)
!2456 = !{!2457, !2459, !2460}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2455, file: !2293, line: 293, baseType: !2458, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !2455, file: !2293, line: 294, baseType: !8, size: 32, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !2455, file: !2293, line: 295, baseType: !2319, size: 64, offset: 128)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !2315, file: !2293, line: 648, baseType: !2462, size: 4224, offset: 10688)
!2462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2292, size: 4224, elements: !2387)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !2294, file: !2293, line: 199, baseType: !2464, size: 64, offset: 512)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!2313, !2314, !4, !2467, !8}
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !2294, file: !2293, line: 202, baseType: !2470, size: 64, offset: 576)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!2473, !2314, !4, !2473, !8}
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !437, line: 114, baseType: !12)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !2294, file: !2293, line: 203, baseType: !2475, size: 64, offset: 640)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!8, !2314, !4}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !2294, file: !2293, line: 206, baseType: !2303, size: 128, offset: 704)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !2294, file: !2293, line: 207, baseType: !1884, size: 64, offset: 832)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !2294, file: !2293, line: 208, baseType: !8, size: 32, offset: 896)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !2294, file: !2293, line: 211, baseType: !2482, size: 24, offset: 928)
!2482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 24, elements: !2387)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !2294, file: !2293, line: 212, baseType: !2484, size: 8, offset: 952)
!2484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8, elements: !2348)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !2294, file: !2293, line: 215, baseType: !2303, size: 128, offset: 960)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !2294, file: !2293, line: 218, baseType: !8, size: 32, offset: 1088)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2294, file: !2293, line: 219, baseType: !489, size: 64, offset: 1152)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2294, file: !2293, line: 222, baseType: !2314, size: 64, offset: 1216)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2294, file: !2293, line: 226, baseType: !2490, size: 32, offset: 1280)
!2490 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !437, line: 175, baseType: !2491)
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !2492, line: 12, baseType: !8)
!2492 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !2294, file: !2293, line: 228, baseType: !2392, size: 64, offset: 1312)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2294, file: !2293, line: 229, baseType: !8, size: 32, offset: 1376)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !2286, file: !2250, line: 73, baseType: !486, size: 64, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "autosync", scope: !2286, file: !2250, line: 74, baseType: !486, size: 64, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "fdset", scope: !2278, file: !2250, line: 83, baseType: !2498, size: 320)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2278, file: !2250, line: 77, size: 320, elements: !2499)
!2499 = !{!2500, !2501, !2502, !2503, !2504}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "fds", scope: !2498, file: !2250, line: 78, baseType: !461, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2498, file: !2250, line: 79, baseType: !461, size: 64, offset: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "numfds", scope: !2498, file: !2250, line: 80, baseType: !8, size: 32, offset: 128)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2498, file: !2250, line: 81, baseType: !486, size: 64, offset: 192)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2498, file: !2250, line: 82, baseType: !432, size: 64, offset: 256)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2244, file: !67, line: 558, baseType: !2230, size: 64, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !2244, file: !67, line: 559, baseType: !8, size: 32, offset: 192)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !2244, file: !67, line: 560, baseType: !8, size: 32, offset: 224)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2244, file: !67, line: 562, baseType: !2509, size: 64, offset: 256)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCtx", file: !67, line: 499, flags: DIFlagFwdDecl)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2244, file: !67, line: 563, baseType: !2512, size: 64, offset: 320)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "rdb_save", scope: !2232, file: !67, line: 521, baseType: !2514, size: 64, offset: 192)
!2514 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeSaveFunc", file: !67, line: 507, baseType: !2515)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{null, !2243, !4}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "aof_rewrite", scope: !2232, file: !67, line: 522, baseType: !2519, size: 64, offset: 256)
!2519 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeRewriteFunc", file: !67, line: 510, baseType: !2520)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{null, !2243, !2512, !4}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage", scope: !2232, file: !67, line: 523, baseType: !2524, size: 64, offset: 320)
!2524 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeMemUsageFunc", file: !67, line: 512, baseType: !2525)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!434, !112}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !2232, file: !67, line: 524, baseType: !2529, size: 64, offset: 384)
!2529 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeDigestFunc", file: !67, line: 511, baseType: !2530)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{null, !2533, !4}
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleDigest", file: !67, line: 583, size: 320, elements: !2535)
!2535 = !{!2536, !2540}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2534, file: !67, line: 584, baseType: !2537, size: 160)
!2537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 160, elements: !2538)
!2538 = !{!2539}
!2539 = !DISubrange(count: 20)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2534, file: !67, line: 585, baseType: !2537, size: 160, offset: 160)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2232, file: !67, line: 525, baseType: !2542, size: 64, offset: 448)
!2542 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeFreeFunc", file: !67, line: 513, baseType: !187)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "aux_load", scope: !2232, file: !67, line: 526, baseType: !2544, size: 64, offset: 512)
!2544 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeAuxLoadFunc", file: !67, line: 508, baseType: !2545)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!8, !2243, !8, !8}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "aux_save", scope: !2232, file: !67, line: 527, baseType: !2549, size: 64, offset: 576)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeAuxSaveFunc", file: !67, line: 509, baseType: !2550)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{null, !2243, !8}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "aux_save_triggers", scope: !2232, file: !67, line: 528, baseType: !8, size: 32, offset: 640)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2232, file: !67, line: 529, baseType: !2555, size: 80, offset: 672)
!2555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 80, elements: !2556)
!2556 = !{!2557}
!2557 = !DISubrange(count: 10)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2227, file: !67, line: 549, baseType: !4, size: 64, offset: 64)
!2559 = !DILocation(line: 816, column: 26, scope: !2215)
!2560 = !DILocation(line: 820, column: 35, scope: !2215)
!2561 = !DILocation(line: 820, column: 41, scope: !2215)
!2562 = !DILocation(line: 820, column: 38, scope: !2215)
!2563 = !DILocation(line: 100, column: 39, scope: !263, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 820, column: 9, scope: !2215)
!2565 = !DILocation(line: 100, column: 49, scope: !263, inlinedAt: !2564)
!2566 = !DILocation(line: 100, column: 58, scope: !263, inlinedAt: !2564)
!2567 = !DILocation(line: 103, column: 9, scope: !273, inlinedAt: !2564)
!2568 = !DILocation(line: 103, column: 32, scope: !273, inlinedAt: !2564)
!2569 = !DILocation(line: 103, column: 9, scope: !263, inlinedAt: !2564)
!2570 = !DILocation(line: 107, column: 20, scope: !277, inlinedAt: !2564)
!2571 = !DILocation(line: 107, column: 31, scope: !277, inlinedAt: !2564)
!2572 = !DILocation(line: 107, column: 13, scope: !278, inlinedAt: !2564)
!2573 = !DILocation(line: 108, column: 40, scope: !308, inlinedAt: !2564)
!2574 = !DILocation(line: 109, column: 13, scope: !308, inlinedAt: !2564)
!2575 = !DILocation(line: 124, column: 20, scope: !283, inlinedAt: !2564)
!2576 = !DILocation(line: 124, column: 13, scope: !283, inlinedAt: !2564)
!2577 = !DILocation(line: 125, column: 45, scope: !283, inlinedAt: !2564)
!2578 = !DILocation(line: 125, column: 35, scope: !283, inlinedAt: !2564)
!2579 = !DILocation(line: 124, column: 35, scope: !283, inlinedAt: !2564)
!2580 = !DILocation(line: 126, column: 36, scope: !283, inlinedAt: !2564)
!2581 = !DILocation(line: 126, column: 13, scope: !283, inlinedAt: !2564)
!2582 = !DILocation(line: 126, column: 40, scope: !283, inlinedAt: !2564)
!2583 = !DILocation(line: 127, column: 41, scope: !283, inlinedAt: !2564)
!2584 = !DILocation(line: 127, column: 47, scope: !283, inlinedAt: !2564)
!2585 = !DILocation(line: 124, column: 13, scope: !278, inlinedAt: !2564)
!2586 = !DILocation(line: 129, column: 40, scope: !2587, inlinedAt: !2564)
!2587 = distinct !DILexicalBlock(scope: !283, file: !1, line: 128, column: 9)
!2588 = !DILocation(line: 130, column: 13, scope: !2587, inlinedAt: !2564)
!2589 = !DILocation(line: 55, column: 26, scope: !90, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 133, column: 11, scope: !263, inlinedAt: !2564)
!2591 = !DILocation(line: 55, column: 36, scope: !90, inlinedAt: !2590)
!2592 = !DILocation(line: 55, column: 45, scope: !90, inlinedAt: !2590)
!2593 = !DILocation(line: 56, column: 34, scope: !90, inlinedAt: !2590)
!2594 = !DILocation(line: 56, column: 44, scope: !90, inlinedAt: !2590)
!2595 = !DILocation(line: 56, column: 21, scope: !90, inlinedAt: !2590)
!2596 = !DILocation(line: 56, column: 16, scope: !90, inlinedAt: !2590)
!2597 = !DILocation(line: 57, column: 9, scope: !202, inlinedAt: !2590)
!2598 = !DILocation(line: 57, column: 9, scope: !90, inlinedAt: !2590)
!2599 = !DILocation(line: 58, column: 21, scope: !201, inlinedAt: !2590)
!2600 = !DILocation(line: 58, column: 15, scope: !201, inlinedAt: !2590)
!2601 = !DILocation(line: 101, column: 11, scope: !263, inlinedAt: !2564)
!2602 = !DILocation(line: 134, column: 13, scope: !304, inlinedAt: !2564)
!2603 = !DILocation(line: 134, column: 9, scope: !263, inlinedAt: !2564)
!2604 = !DILocation(line: 135, column: 36, scope: !304, inlinedAt: !2564)
!2605 = !DILocation(line: 135, column: 9, scope: !304, inlinedAt: !2564)
!2606 = !DILocation(line: 137, column: 34, scope: !304, inlinedAt: !2564)
!2607 = !DILocation(line: 817, column: 11, scope: !2215)
!2608 = !DILocation(line: 824, column: 19, scope: !2223)
!2609 = !DILocation(line: 824, column: 9, scope: !2223)
!2610 = !DILocation(line: 826, column: 39, scope: !2222)
!2611 = !DILocation(line: 827, column: 37, scope: !2222)
!2612 = !DILocation(line: 828, column: 39, scope: !2222)
!2613 = !DILocation(line: 829, column: 39, scope: !2222)
!2614 = !DILocation(line: 830, column: 43, scope: !2222)
!2615 = !DILocation(line: 832, column: 34, scope: !2221)
!2616 = !DILocation(line: 832, column: 26, scope: !2221)
!2617 = !DILocation(line: 833, column: 24, scope: !2221)
!2618 = !{!2619, !209, i64 0}
!2619 = !{!"moduleValue", !209, i64 0, !209, i64 8}
!2620 = !DILocation(line: 833, column: 20, scope: !2221)
!2621 = !DILocation(line: 818, column: 11, scope: !2215)
!2622 = !DILocation(line: 834, column: 12, scope: !2222)
!2623 = !DILocation(line: 835, column: 36, scope: !2222)
!2624 = !DILocation(line: 0, scope: !2222)
!2625 = !DILocation(line: 838, column: 5, scope: !2215)
!2626 = !DILocation(line: 839, column: 1, scope: !2215)
!2627 = distinct !DISubprogram(name: "shutdownCommand", scope: !1, file: !1, line: 841, type: !451, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2628)
!2628 = !{!2629, !2630}
!2629 = !DILocalVariable(name: "c", arg: 1, scope: !2627, file: !1, line: 841, type: !423)
!2630 = !DILocalVariable(name: "flags", scope: !2627, file: !1, line: 842, type: !8)
!2631 = !DILocation(line: 841, column: 30, scope: !2627)
!2632 = !DILocation(line: 842, column: 9, scope: !2627)
!2633 = !DILocation(line: 844, column: 12, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2627, file: !1, line: 844, column: 9)
!2635 = !DILocation(line: 844, column: 17, scope: !2634)
!2636 = !DILocation(line: 844, column: 9, scope: !2627)
!2637 = !DILocation(line: 845, column: 27, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2634, file: !1, line: 844, column: 22)
!2639 = !DILocation(line: 845, column: 9, scope: !2638)
!2640 = !DILocation(line: 846, column: 9, scope: !2638)
!2641 = !DILocation(line: 847, column: 24, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2634, file: !1, line: 847, column: 16)
!2643 = !DILocation(line: 847, column: 16, scope: !2634)
!2644 = !DILocation(line: 848, column: 28, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !1, line: 848, column: 13)
!2646 = distinct !DILexicalBlock(scope: !2642, file: !1, line: 847, column: 30)
!2647 = !DILocation(line: 848, column: 25, scope: !2645)
!2648 = !DILocation(line: 848, column: 37, scope: !2645)
!2649 = !DILocation(line: 848, column: 14, scope: !2645)
!2650 = !DILocation(line: 848, column: 13, scope: !2646)
!2651 = !DILocation(line: 850, column: 21, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2645, file: !1, line: 850, column: 20)
!2653 = !DILocation(line: 850, column: 20, scope: !2645)
!2654 = !DILocation(line: 853, column: 31, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2652, file: !1, line: 852, column: 16)
!2656 = !DILocation(line: 853, column: 13, scope: !2655)
!2657 = !DILocation(line: 854, column: 13, scope: !2655)
!2658 = !DILocation(line: 0, scope: !2627)
!2659 = !DILocation(line: 863, column: 16, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2627, file: !1, line: 863, column: 9)
!2661 = !{!227, !212, i64 860}
!2662 = !DILocation(line: 863, column: 34, scope: !2660)
!2663 = !DILocation(line: 863, column: 24, scope: !2660)
!2664 = !DILocation(line: 865, column: 9, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2627, file: !1, line: 865, column: 9)
!2666 = !DILocation(line: 865, column: 35, scope: !2665)
!2667 = !DILocation(line: 865, column: 9, scope: !2627)
!2668 = !DILocation(line: 865, column: 44, scope: !2665)
!2669 = !DILocation(line: 866, column: 5, scope: !2627)
!2670 = !DILocation(line: 867, column: 1, scope: !2627)
!2671 = distinct !DISubprogram(name: "renameGenericCommand", scope: !1, file: !1, line: 869, type: !1236, isLocal: false, isDefinition: true, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2672)
!2672 = !{!2673, !2674, !2675, !2676, !2677}
!2673 = !DILocalVariable(name: "c", arg: 1, scope: !2671, file: !1, line: 869, type: !423)
!2674 = !DILocalVariable(name: "nx", arg: 2, scope: !2671, file: !1, line: 869, type: !8)
!2675 = !DILocalVariable(name: "o", scope: !2671, file: !1, line: 870, type: !65)
!2676 = !DILocalVariable(name: "expire", scope: !2671, file: !1, line: 871, type: !165)
!2677 = !DILocalVariable(name: "samekey", scope: !2671, file: !1, line: 872, type: !8)
!2678 = !DILocation(line: 869, column: 35, scope: !2671)
!2679 = !DILocation(line: 869, column: 42, scope: !2671)
!2680 = !DILocation(line: 872, column: 9, scope: !2671)
!2681 = !DILocation(line: 876, column: 19, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2671, file: !1, line: 876, column: 9)
!2683 = !DILocation(line: 876, column: 16, scope: !2682)
!2684 = !DILocation(line: 876, column: 28, scope: !2682)
!2685 = !DILocation(line: 876, column: 32, scope: !2682)
!2686 = !DILocation(line: 876, column: 44, scope: !2682)
!2687 = !DILocation(line: 876, column: 9, scope: !2682)
!2688 = !DILocation(line: 878, column: 41, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2671, file: !1, line: 878, column: 9)
!2690 = !DILocation(line: 878, column: 38, scope: !2689)
!2691 = !DILocation(line: 878, column: 56, scope: !2689)
!2692 = !{!1123, !209, i64 120}
!2693 = !DILocation(line: 163, column: 37, scope: !598, inlinedAt: !2694)
!2694 = distinct !DILocation(line: 878, column: 14, scope: !2689)
!2695 = !DILocation(line: 163, column: 46, scope: !598, inlinedAt: !2694)
!2696 = !DILocation(line: 163, column: 57, scope: !598, inlinedAt: !2694)
!2697 = !DILocation(line: 164, column: 33, scope: !598, inlinedAt: !2694)
!2698 = !DILocation(line: 152, column: 31, scope: !411, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 164, column: 15, scope: !598, inlinedAt: !2694)
!2700 = !DILocation(line: 152, column: 41, scope: !411, inlinedAt: !2699)
!2701 = !DILocation(line: 153, column: 5, scope: !411, inlinedAt: !2699)
!2702 = !DILocation(line: 154, column: 12, scope: !411, inlinedAt: !2699)
!2703 = !DILocation(line: 164, column: 11, scope: !598, inlinedAt: !2694)
!2704 = !DILocation(line: 165, column: 10, scope: !615, inlinedAt: !2694)
!2705 = !DILocation(line: 165, column: 9, scope: !598, inlinedAt: !2694)
!2706 = !DILocation(line: 165, column: 13, scope: !615, inlinedAt: !2694)
!2707 = !DILocation(line: 870, column: 11, scope: !2671)
!2708 = !DILocation(line: 878, column: 9, scope: !2671)
!2709 = !DILocation(line: 876, column: 49, scope: !2682)
!2710 = !DILocation(line: 881, column: 9, scope: !2671)
!2711 = !DILocation(line: 882, column: 20, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !1, line: 881, column: 18)
!2713 = distinct !DILexicalBlock(scope: !2671, file: !1, line: 881, column: 9)
!2714 = !DILocation(line: 882, column: 32, scope: !2712)
!2715 = !DILocation(line: 882, column: 47, scope: !2712)
!2716 = !DILocation(line: 882, column: 9, scope: !2712)
!2717 = !DILocation(line: 883, column: 9, scope: !2712)
!2718 = !DILocation(line: 886, column: 5, scope: !2671)
!2719 = !DILocation(line: 887, column: 27, scope: !2671)
!2720 = !DILocation(line: 887, column: 33, scope: !2671)
!2721 = !DILocation(line: 887, column: 30, scope: !2671)
!2722 = !DILocation(line: 1092, column: 30, scope: !1581, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 887, column: 14, scope: !2671)
!2724 = !DILocation(line: 1092, column: 40, scope: !1581, inlinedAt: !2723)
!2725 = !DILocation(line: 1096, column: 9, scope: !1591, inlinedAt: !2723)
!2726 = !DILocation(line: 1096, column: 31, scope: !1591, inlinedAt: !2723)
!2727 = !DILocation(line: 1096, column: 36, scope: !1591, inlinedAt: !2723)
!2728 = !DILocation(line: 1097, column: 40, scope: !1591, inlinedAt: !2723)
!2729 = !DILocation(line: 1097, column: 14, scope: !1591, inlinedAt: !2723)
!2730 = !DILocation(line: 1093, column: 16, scope: !1581, inlinedAt: !2723)
!2731 = !DILocation(line: 1097, column: 46, scope: !1591, inlinedAt: !2723)
!2732 = !DILocation(line: 1096, column: 9, scope: !1581, inlinedAt: !2723)
!2733 = !DILocation(line: 1101, column: 5, scope: !1581, inlinedAt: !2723)
!2734 = !DILocation(line: 1102, column: 12, scope: !1581, inlinedAt: !2723)
!2735 = !DILocation(line: 1102, column: 5, scope: !1581, inlinedAt: !2723)
!2736 = !DILocation(line: 0, scope: !1581, inlinedAt: !2723)
!2737 = !DILocation(line: 871, column: 15, scope: !2671)
!2738 = !DILocation(line: 888, column: 27, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2671, file: !1, line: 888, column: 9)
!2740 = !DILocation(line: 888, column: 33, scope: !2739)
!2741 = !DILocation(line: 888, column: 30, scope: !2739)
!2742 = !DILocation(line: 152, column: 31, scope: !411, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 888, column: 9, scope: !2739)
!2744 = !DILocation(line: 152, column: 41, scope: !411, inlinedAt: !2743)
!2745 = !DILocation(line: 153, column: 5, scope: !411, inlinedAt: !2743)
!2746 = !DILocation(line: 154, column: 12, scope: !411, inlinedAt: !2743)
!2747 = !DILocation(line: 888, column: 42, scope: !2739)
!2748 = !DILocation(line: 888, column: 9, scope: !2671)
!2749 = !DILocation(line: 889, column: 13, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !1, line: 889, column: 13)
!2751 = distinct !DILexicalBlock(scope: !2739, file: !1, line: 888, column: 51)
!2752 = !DILocation(line: 889, column: 13, scope: !2751)
!2753 = !DILocation(line: 890, column: 13, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2750, file: !1, line: 889, column: 17)
!2755 = !DILocation(line: 891, column: 31, scope: !2754)
!2756 = !{!1123, !209, i64 32}
!2757 = !DILocation(line: 891, column: 13, scope: !2754)
!2758 = !DILocation(line: 892, column: 13, scope: !2754)
!2759 = !DILocation(line: 896, column: 21, scope: !2751)
!2760 = !DILocation(line: 896, column: 27, scope: !2751)
!2761 = !DILocation(line: 896, column: 24, scope: !2751)
!2762 = !DILocation(line: 285, column: 23, scope: !887, inlinedAt: !2763)
!2763 = distinct !DILocation(line: 896, column: 9, scope: !2751)
!2764 = !DILocation(line: 285, column: 33, scope: !887, inlinedAt: !2763)
!2765 = !DILocation(line: 286, column: 19, scope: !887, inlinedAt: !2763)
!2766 = !DILocation(line: 286, column: 12, scope: !887, inlinedAt: !2763)
!2767 = !DILocation(line: 286, column: 46, scope: !887, inlinedAt: !2763)
!2768 = !DILocation(line: 271, column: 27, scope: !338, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 287, column: 46, scope: !887, inlinedAt: !2763)
!2770 = !DILocation(line: 271, column: 37, scope: !338, inlinedAt: !2769)
!2771 = !DILocation(line: 274, column: 9, scope: !345, inlinedAt: !2769)
!2772 = !DILocation(line: 274, column: 31, scope: !345, inlinedAt: !2769)
!2773 = !DILocation(line: 0, scope: !345, inlinedAt: !2769)
!2774 = !DILocation(line: 274, column: 9, scope: !338, inlinedAt: !2769)
!2775 = !DILocation(line: 274, column: 64, scope: !345, inlinedAt: !2769)
!2776 = !DILocation(line: 274, column: 36, scope: !345, inlinedAt: !2769)
!2777 = !DILocation(line: 275, column: 24, scope: !355, inlinedAt: !2769)
!2778 = !DILocation(line: 275, column: 34, scope: !355, inlinedAt: !2769)
!2779 = !DILocation(line: 275, column: 9, scope: !355, inlinedAt: !2769)
!2780 = !DILocation(line: 275, column: 39, scope: !355, inlinedAt: !2769)
!2781 = !DILocation(line: 276, column: 20, scope: !361, inlinedAt: !2769)
!2782 = !DILocation(line: 276, column: 13, scope: !361, inlinedAt: !2769)
!2783 = !DILocation(line: 275, column: 9, scope: !338, inlinedAt: !2769)
!2784 = !DILocation(line: 1493, column: 25, scope: !367, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 276, column: 37, scope: !361, inlinedAt: !2769)
!2786 = !DILocation(line: 1494, column: 5, scope: !367, inlinedAt: !2785)
!2787 = !DILocation(line: 276, column: 37, scope: !361, inlinedAt: !2769)
!2788 = !DILocation(line: 898, column: 14, scope: !2671)
!2789 = !DILocation(line: 898, column: 20, scope: !2671)
!2790 = !DILocation(line: 898, column: 17, scope: !2671)
!2791 = !DILocation(line: 898, column: 5, scope: !2671)
!2792 = !DILocation(line: 899, column: 16, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2671, file: !1, line: 899, column: 9)
!2794 = !DILocation(line: 899, column: 9, scope: !2671)
!2795 = !DILocation(line: 899, column: 38, scope: !2793)
!2796 = !DILocation(line: 899, column: 44, scope: !2793)
!2797 = !DILocation(line: 899, column: 41, scope: !2793)
!2798 = !DILocation(line: 899, column: 23, scope: !2793)
!2799 = !DILocation(line: 900, column: 17, scope: !2671)
!2800 = !DILocation(line: 900, column: 23, scope: !2671)
!2801 = !DILocation(line: 900, column: 20, scope: !2671)
!2802 = !DILocation(line: 285, column: 23, scope: !887, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 900, column: 5, scope: !2671)
!2804 = !DILocation(line: 285, column: 33, scope: !887, inlinedAt: !2803)
!2805 = !DILocation(line: 286, column: 19, scope: !887, inlinedAt: !2803)
!2806 = !DILocation(line: 286, column: 12, scope: !887, inlinedAt: !2803)
!2807 = !DILocation(line: 286, column: 46, scope: !887, inlinedAt: !2803)
!2808 = !DILocation(line: 271, column: 27, scope: !338, inlinedAt: !2809)
!2809 = distinct !DILocation(line: 287, column: 46, scope: !887, inlinedAt: !2803)
!2810 = !DILocation(line: 271, column: 37, scope: !338, inlinedAt: !2809)
!2811 = !DILocation(line: 274, column: 9, scope: !345, inlinedAt: !2809)
!2812 = !DILocation(line: 274, column: 31, scope: !345, inlinedAt: !2809)
!2813 = !DILocation(line: 0, scope: !345, inlinedAt: !2809)
!2814 = !DILocation(line: 274, column: 9, scope: !338, inlinedAt: !2809)
!2815 = !DILocation(line: 274, column: 64, scope: !345, inlinedAt: !2809)
!2816 = !DILocation(line: 274, column: 36, scope: !345, inlinedAt: !2809)
!2817 = !DILocation(line: 275, column: 24, scope: !355, inlinedAt: !2809)
!2818 = !DILocation(line: 275, column: 34, scope: !355, inlinedAt: !2809)
!2819 = !DILocation(line: 275, column: 9, scope: !355, inlinedAt: !2809)
!2820 = !DILocation(line: 275, column: 39, scope: !355, inlinedAt: !2809)
!2821 = !DILocation(line: 276, column: 20, scope: !361, inlinedAt: !2809)
!2822 = !DILocation(line: 276, column: 13, scope: !361, inlinedAt: !2809)
!2823 = !DILocation(line: 275, column: 9, scope: !338, inlinedAt: !2809)
!2824 = !DILocation(line: 1493, column: 25, scope: !367, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 276, column: 37, scope: !361, inlinedAt: !2809)
!2826 = !DILocation(line: 1494, column: 5, scope: !367, inlinedAt: !2825)
!2827 = !DILocation(line: 276, column: 37, scope: !361, inlinedAt: !2809)
!2828 = !DILocation(line: 901, column: 26, scope: !2671)
!2829 = !DILocation(line: 901, column: 32, scope: !2671)
!2830 = !DILocation(line: 901, column: 29, scope: !2671)
!2831 = !DILocation(line: 395, column: 33, scope: !747, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 901, column: 5, scope: !2671)
!2833 = !DILocation(line: 395, column: 43, scope: !747, inlinedAt: !2832)
!2834 = !DILocation(line: 396, column: 5, scope: !747, inlinedAt: !2832)
!2835 = !DILocation(line: 902, column: 26, scope: !2671)
!2836 = !DILocation(line: 902, column: 32, scope: !2671)
!2837 = !DILocation(line: 902, column: 29, scope: !2671)
!2838 = !DILocation(line: 395, column: 33, scope: !747, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 902, column: 5, scope: !2671)
!2840 = !DILocation(line: 395, column: 43, scope: !747, inlinedAt: !2839)
!2841 = !DILocation(line: 396, column: 5, scope: !747, inlinedAt: !2839)
!2842 = !DILocation(line: 904, column: 12, scope: !2671)
!2843 = !DILocation(line: 904, column: 9, scope: !2671)
!2844 = !DILocation(line: 904, column: 23, scope: !2671)
!2845 = !DILocation(line: 904, column: 27, scope: !2671)
!2846 = !DILocation(line: 903, column: 5, scope: !2671)
!2847 = !DILocation(line: 906, column: 12, scope: !2671)
!2848 = !DILocation(line: 906, column: 9, scope: !2671)
!2849 = !DILocation(line: 906, column: 23, scope: !2671)
!2850 = !DILocation(line: 906, column: 27, scope: !2671)
!2851 = !DILocation(line: 905, column: 5, scope: !2671)
!2852 = !DILocation(line: 907, column: 17, scope: !2671)
!2853 = !DILocation(line: 908, column: 16, scope: !2671)
!2854 = !DILocation(line: 908, column: 28, scope: !2671)
!2855 = !DILocation(line: 908, column: 42, scope: !2671)
!2856 = !DILocation(line: 908, column: 5, scope: !2671)
!2857 = !DILocation(line: 909, column: 1, scope: !2671)
!2858 = !DILocation(line: 1092, column: 30, scope: !1581)
!2859 = !DILocation(line: 1092, column: 40, scope: !1581)
!2860 = !DILocation(line: 1096, column: 9, scope: !1591)
!2861 = !DILocation(line: 1096, column: 31, scope: !1591)
!2862 = !DILocation(line: 1096, column: 36, scope: !1591)
!2863 = !DILocation(line: 1097, column: 40, scope: !1591)
!2864 = !DILocation(line: 1097, column: 14, scope: !1591)
!2865 = !DILocation(line: 1093, column: 16, scope: !1581)
!2866 = !DILocation(line: 1097, column: 46, scope: !1591)
!2867 = !DILocation(line: 1096, column: 9, scope: !1581)
!2868 = !DILocation(line: 1101, column: 5, scope: !1581)
!2869 = !DILocation(line: 1102, column: 12, scope: !1581)
!2870 = !DILocation(line: 1102, column: 5, scope: !1581)
!2871 = !DILocation(line: 0, scope: !1581)
!2872 = !DILocation(line: 1103, column: 1, scope: !1581)
!2873 = distinct !DISubprogram(name: "setExpire", scope: !1, file: !1, line: 1076, type: !2874, isLocal: false, isDefinition: true, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2876)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{null, !423, !93, !65, !165}
!2876 = !{!2877, !2878, !2879, !2880, !2881, !2882, !2883}
!2877 = !DILocalVariable(name: "c", arg: 1, scope: !2873, file: !1, line: 1076, type: !423)
!2878 = !DILocalVariable(name: "db", arg: 2, scope: !2873, file: !1, line: 1076, type: !93)
!2879 = !DILocalVariable(name: "key", arg: 3, scope: !2873, file: !1, line: 1076, type: !65)
!2880 = !DILocalVariable(name: "when", arg: 4, scope: !2873, file: !1, line: 1076, type: !165)
!2881 = !DILocalVariable(name: "kde", scope: !2873, file: !1, line: 1077, type: !136)
!2882 = !DILocalVariable(name: "de", scope: !2873, file: !1, line: 1077, type: !136)
!2883 = !DILocalVariable(name: "writable_slave", scope: !2873, file: !1, line: 1085, type: !8)
!2884 = !DILocation(line: 1076, column: 24, scope: !2873)
!2885 = !DILocation(line: 1076, column: 36, scope: !2873)
!2886 = !DILocation(line: 1076, column: 46, scope: !2873)
!2887 = !DILocation(line: 1076, column: 61, scope: !2873)
!2888 = !DILocation(line: 1080, column: 24, scope: !2873)
!2889 = !DILocation(line: 1080, column: 34, scope: !2873)
!2890 = !DILocation(line: 1080, column: 11, scope: !2873)
!2891 = !DILocation(line: 1077, column: 16, scope: !2873)
!2892 = !DILocation(line: 1081, column: 5, scope: !2873)
!2893 = !DILocation(line: 1082, column: 28, scope: !2873)
!2894 = !DILocation(line: 1082, column: 36, scope: !2873)
!2895 = !DILocation(line: 1082, column: 10, scope: !2873)
!2896 = !DILocation(line: 1077, column: 22, scope: !2873)
!2897 = !DILocation(line: 1083, column: 5, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2873, file: !1, line: 1083, column: 5)
!2899 = !DILocation(line: 1085, column: 33, scope: !2873)
!2900 = !DILocation(line: 1085, column: 26, scope: !2873)
!2901 = !DILocation(line: 1085, column: 54, scope: !2873)
!2902 = !DILocation(line: 1085, column: 68, scope: !2873)
!2903 = !DILocation(line: 1085, column: 44, scope: !2873)
!2904 = !DILocation(line: 1086, column: 9, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2873, file: !1, line: 1086, column: 9)
!2906 = !DILocation(line: 1086, column: 11, scope: !2905)
!2907 = !DILocation(line: 1086, column: 37, scope: !2905)
!2908 = !{!291, !212, i64 160}
!2909 = !DILocation(line: 1086, column: 43, scope: !2905)
!2910 = !DILocation(line: 1086, column: 9, scope: !2873)
!2911 = !DILocation(line: 1087, column: 9, scope: !2905)
!2912 = !DILocation(line: 1088, column: 1, scope: !2873)
!2913 = distinct !DISubprogram(name: "renameCommand", scope: !1, file: !1, line: 911, type: !451, isLocal: false, isDefinition: true, scopeLine: 911, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2914)
!2914 = !{!2915}
!2915 = !DILocalVariable(name: "c", arg: 1, scope: !2913, file: !1, line: 911, type: !423)
!2916 = !DILocation(line: 911, column: 28, scope: !2913)
!2917 = !DILocation(line: 912, column: 5, scope: !2913)
!2918 = !DILocation(line: 913, column: 1, scope: !2913)
!2919 = distinct !DISubprogram(name: "renamenxCommand", scope: !1, file: !1, line: 915, type: !451, isLocal: false, isDefinition: true, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2920)
!2920 = !{!2921}
!2921 = !DILocalVariable(name: "c", arg: 1, scope: !2919, file: !1, line: 915, type: !423)
!2922 = !DILocation(line: 915, column: 30, scope: !2919)
!2923 = !DILocation(line: 916, column: 5, scope: !2919)
!2924 = !DILocation(line: 917, column: 1, scope: !2919)
!2925 = distinct !DISubprogram(name: "moveCommand", scope: !1, file: !1, line: 919, type: !451, isLocal: false, isDefinition: true, scopeLine: 919, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2926)
!2926 = !{!2927, !2928, !2929, !2930, !2931, !2932, !2933}
!2927 = !DILocalVariable(name: "c", arg: 1, scope: !2925, file: !1, line: 919, type: !423)
!2928 = !DILocalVariable(name: "o", scope: !2925, file: !1, line: 920, type: !65)
!2929 = !DILocalVariable(name: "src", scope: !2925, file: !1, line: 921, type: !93)
!2930 = !DILocalVariable(name: "dst", scope: !2925, file: !1, line: 921, type: !93)
!2931 = !DILocalVariable(name: "srcid", scope: !2925, file: !1, line: 922, type: !8)
!2932 = !DILocalVariable(name: "dbid", scope: !2925, file: !1, line: 923, type: !165)
!2933 = !DILocalVariable(name: "expire", scope: !2925, file: !1, line: 923, type: !165)
!2934 = !DILocation(line: 919, column: 26, scope: !2925)
!2935 = !DILocation(line: 923, column: 5, scope: !2925)
!2936 = !DILocation(line: 925, column: 16, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2925, file: !1, line: 925, column: 9)
!2938 = !DILocation(line: 925, column: 9, scope: !2937)
!2939 = !DILocation(line: 925, column: 9, scope: !2925)
!2940 = !DILocation(line: 926, column: 9, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2937, file: !1, line: 925, column: 33)
!2942 = !DILocation(line: 927, column: 9, scope: !2941)
!2943 = !DILocation(line: 931, column: 14, scope: !2925)
!2944 = !DILocation(line: 921, column: 14, scope: !2925)
!2945 = !DILocation(line: 932, column: 20, scope: !2925)
!2946 = !DILocation(line: 922, column: 9, scope: !2925)
!2947 = !DILocation(line: 934, column: 34, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2925, file: !1, line: 934, column: 9)
!2949 = !DILocation(line: 934, column: 31, scope: !2948)
!2950 = !DILocation(line: 923, column: 15, scope: !2925)
!2951 = !DILocation(line: 934, column: 9, scope: !2948)
!2952 = !DILocation(line: 934, column: 49, scope: !2948)
!2953 = !DILocation(line: 935, column: 9, scope: !2948)
!2954 = !DILocation(line: 934, column: 58, scope: !2948)
!2955 = !DILocation(line: 936, column: 20, scope: !2948)
!2956 = !DILocation(line: 379, column: 22, scope: !1068, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 936, column: 9, scope: !2948)
!2958 = !DILocation(line: 379, column: 29, scope: !1068, inlinedAt: !2957)
!2959 = !DILocation(line: 380, column: 12, scope: !1077, inlinedAt: !2957)
!2960 = !DILocation(line: 380, column: 32, scope: !1077, inlinedAt: !2957)
!2961 = !DILocation(line: 380, column: 22, scope: !1077, inlinedAt: !2957)
!2962 = !DILocation(line: 380, column: 16, scope: !1077, inlinedAt: !2957)
!2963 = !DILocation(line: 938, column: 27, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2948, file: !1, line: 937, column: 5)
!2965 = !{!1123, !209, i64 144}
!2966 = !DILocation(line: 938, column: 9, scope: !2964)
!2967 = !DILocation(line: 939, column: 9, scope: !2964)
!2968 = !DILocation(line: 382, column: 21, scope: !1068, inlinedAt: !2957)
!2969 = !DILocation(line: 382, column: 14, scope: !1068, inlinedAt: !2957)
!2970 = !DILocation(line: 382, column: 11, scope: !1068, inlinedAt: !2957)
!2971 = !DILocation(line: 921, column: 20, scope: !2925)
!2972 = !DILocation(line: 379, column: 22, scope: !1068, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 942, column: 5, scope: !2925)
!2974 = !DILocation(line: 379, column: 29, scope: !1068, inlinedAt: !2973)
!2975 = !DILocation(line: 380, column: 12, scope: !1077, inlinedAt: !2973)
!2976 = !DILocation(line: 380, column: 32, scope: !1077, inlinedAt: !2973)
!2977 = !DILocation(line: 380, column: 22, scope: !1077, inlinedAt: !2973)
!2978 = !DILocation(line: 380, column: 16, scope: !1077, inlinedAt: !2973)
!2979 = !DILocation(line: 382, column: 14, scope: !1068, inlinedAt: !2973)
!2980 = !DILocation(line: 382, column: 11, scope: !1068, inlinedAt: !2973)
!2981 = !DILocation(line: 383, column: 5, scope: !1068, inlinedAt: !2973)
!2982 = !DILocation(line: 946, column: 13, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2925, file: !1, line: 946, column: 9)
!2984 = !DILocation(line: 946, column: 9, scope: !2925)
!2985 = !DILocation(line: 947, column: 27, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2983, file: !1, line: 946, column: 21)
!2987 = !{!1123, !209, i64 136}
!2988 = !DILocation(line: 947, column: 9, scope: !2986)
!2989 = !DILocation(line: 948, column: 9, scope: !2986)
!2990 = !DILocation(line: 952, column: 33, scope: !2925)
!2991 = !DILocation(line: 952, column: 30, scope: !2925)
!2992 = !DILocation(line: 152, column: 31, scope: !411, inlinedAt: !2993)
!2993 = distinct !DILocation(line: 952, column: 9, scope: !2925)
!2994 = !DILocation(line: 152, column: 41, scope: !411, inlinedAt: !2993)
!2995 = !DILocation(line: 153, column: 5, scope: !411, inlinedAt: !2993)
!2996 = !DILocation(line: 154, column: 12, scope: !411, inlinedAt: !2993)
!2997 = !DILocation(line: 920, column: 11, scope: !2925)
!2998 = !DILocation(line: 953, column: 10, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2925, file: !1, line: 953, column: 9)
!3000 = !DILocation(line: 953, column: 9, scope: !2925)
!3001 = !DILocation(line: 954, column: 27, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2999, file: !1, line: 953, column: 13)
!3003 = !DILocation(line: 954, column: 9, scope: !3002)
!3004 = !DILocation(line: 955, column: 9, scope: !3002)
!3005 = !DILocation(line: 957, column: 27, scope: !2925)
!3006 = !DILocation(line: 957, column: 33, scope: !2925)
!3007 = !DILocation(line: 957, column: 30, scope: !2925)
!3008 = !DILocation(line: 1092, column: 30, scope: !1581, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 957, column: 14, scope: !2925)
!3010 = !DILocation(line: 1092, column: 40, scope: !1581, inlinedAt: !3009)
!3011 = !DILocation(line: 1096, column: 9, scope: !1591, inlinedAt: !3009)
!3012 = !DILocation(line: 1096, column: 31, scope: !1591, inlinedAt: !3009)
!3013 = !DILocation(line: 1096, column: 36, scope: !1591, inlinedAt: !3009)
!3014 = !DILocation(line: 1097, column: 40, scope: !1591, inlinedAt: !3009)
!3015 = !DILocation(line: 1097, column: 14, scope: !1591, inlinedAt: !3009)
!3016 = !DILocation(line: 1093, column: 16, scope: !1581, inlinedAt: !3009)
!3017 = !DILocation(line: 1097, column: 46, scope: !1591, inlinedAt: !3009)
!3018 = !DILocation(line: 1096, column: 9, scope: !1581, inlinedAt: !3009)
!3019 = !DILocation(line: 1101, column: 5, scope: !1581, inlinedAt: !3009)
!3020 = !DILocation(line: 1102, column: 12, scope: !1581, inlinedAt: !3009)
!3021 = !DILocation(line: 1102, column: 5, scope: !1581, inlinedAt: !3009)
!3022 = !DILocation(line: 0, scope: !1581, inlinedAt: !3009)
!3023 = !DILocation(line: 923, column: 21, scope: !2925)
!3024 = !DILocation(line: 960, column: 31, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !2925, file: !1, line: 960, column: 9)
!3026 = !DILocation(line: 960, column: 28, scope: !3025)
!3027 = !DILocation(line: 152, column: 31, scope: !411, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 960, column: 9, scope: !3025)
!3029 = !DILocation(line: 152, column: 41, scope: !411, inlinedAt: !3028)
!3030 = !DILocation(line: 153, column: 5, scope: !411, inlinedAt: !3028)
!3031 = !DILocation(line: 154, column: 12, scope: !411, inlinedAt: !3028)
!3032 = !DILocation(line: 960, column: 40, scope: !3025)
!3033 = !DILocation(line: 960, column: 9, scope: !2925)
!3034 = !DILocation(line: 961, column: 27, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3025, file: !1, line: 960, column: 49)
!3036 = !DILocation(line: 961, column: 9, scope: !3035)
!3037 = !DILocation(line: 962, column: 9, scope: !3035)
!3038 = !DILocation(line: 964, column: 18, scope: !2925)
!3039 = !DILocation(line: 964, column: 15, scope: !2925)
!3040 = !DILocation(line: 964, column: 5, scope: !2925)
!3041 = !DILocation(line: 965, column: 16, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !2925, file: !1, line: 965, column: 9)
!3043 = !DILocation(line: 965, column: 9, scope: !2925)
!3044 = !DILocation(line: 965, column: 42, scope: !3042)
!3045 = !DILocation(line: 965, column: 39, scope: !3042)
!3046 = !DILocation(line: 965, column: 23, scope: !3042)
!3047 = !DILocation(line: 966, column: 5, scope: !2925)
!3048 = !DILocation(line: 969, column: 21, scope: !2925)
!3049 = !DILocation(line: 969, column: 18, scope: !2925)
!3050 = !DILocation(line: 285, column: 23, scope: !887, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 969, column: 5, scope: !2925)
!3052 = !DILocation(line: 285, column: 33, scope: !887, inlinedAt: !3051)
!3053 = !DILocation(line: 286, column: 19, scope: !887, inlinedAt: !3051)
!3054 = !DILocation(line: 286, column: 12, scope: !887, inlinedAt: !3051)
!3055 = !DILocation(line: 286, column: 46, scope: !887, inlinedAt: !3051)
!3056 = !DILocation(line: 271, column: 27, scope: !338, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 287, column: 46, scope: !887, inlinedAt: !3051)
!3058 = !DILocation(line: 271, column: 37, scope: !338, inlinedAt: !3057)
!3059 = !DILocation(line: 274, column: 9, scope: !345, inlinedAt: !3057)
!3060 = !DILocation(line: 274, column: 31, scope: !345, inlinedAt: !3057)
!3061 = !DILocation(line: 0, scope: !345, inlinedAt: !3057)
!3062 = !DILocation(line: 274, column: 9, scope: !338, inlinedAt: !3057)
!3063 = !DILocation(line: 274, column: 64, scope: !345, inlinedAt: !3057)
!3064 = !DILocation(line: 274, column: 36, scope: !345, inlinedAt: !3057)
!3065 = !DILocation(line: 275, column: 24, scope: !355, inlinedAt: !3057)
!3066 = !DILocation(line: 275, column: 34, scope: !355, inlinedAt: !3057)
!3067 = !DILocation(line: 275, column: 9, scope: !355, inlinedAt: !3057)
!3068 = !DILocation(line: 275, column: 39, scope: !355, inlinedAt: !3057)
!3069 = !DILocation(line: 276, column: 20, scope: !361, inlinedAt: !3057)
!3070 = !DILocation(line: 276, column: 13, scope: !361, inlinedAt: !3057)
!3071 = !DILocation(line: 275, column: 9, scope: !338, inlinedAt: !3057)
!3072 = !DILocation(line: 1493, column: 25, scope: !367, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 276, column: 37, scope: !361, inlinedAt: !3057)
!3074 = !DILocation(line: 1494, column: 5, scope: !367, inlinedAt: !3073)
!3075 = !DILocation(line: 276, column: 37, scope: !361, inlinedAt: !3057)
!3076 = !DILocation(line: 970, column: 17, scope: !2925)
!3077 = !DILocation(line: 971, column: 23, scope: !2925)
!3078 = !{!1123, !209, i64 40}
!3079 = !DILocation(line: 971, column: 5, scope: !2925)
!3080 = !DILocation(line: 972, column: 1, scope: !2925)
!3081 = distinct !DISubprogram(name: "scanDatabaseForReadyLists", scope: !1, file: !1, line: 978, type: !3082, isLocal: false, isDefinition: true, scopeLine: 978, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3084)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{null, !93}
!3084 = !{!3085, !3086, !3087, !3088, !3090}
!3085 = !DILocalVariable(name: "db", arg: 1, scope: !3081, file: !1, line: 978, type: !93)
!3086 = !DILocalVariable(name: "de", scope: !3081, file: !1, line: 979, type: !136)
!3087 = !DILocalVariable(name: "di", scope: !3081, file: !1, line: 980, type: !1442)
!3088 = !DILocalVariable(name: "key", scope: !3089, file: !1, line: 982, type: !65)
!3089 = distinct !DILexicalBlock(scope: !3081, file: !1, line: 981, column: 40)
!3090 = !DILocalVariable(name: "value", scope: !3089, file: !1, line: 983, type: !65)
!3091 = !DILocation(line: 978, column: 41, scope: !3081)
!3092 = !DILocation(line: 980, column: 48, scope: !3081)
!3093 = !{!208, !209, i64 16}
!3094 = !DILocation(line: 980, column: 24, scope: !3081)
!3095 = !DILocation(line: 980, column: 19, scope: !3081)
!3096 = !DILocation(line: 981, column: 17, scope: !3081)
!3097 = !DILocation(line: 979, column: 16, scope: !3081)
!3098 = !DILocation(line: 981, column: 31, scope: !3081)
!3099 = !DILocation(line: 981, column: 5, scope: !3081)
!3100 = !DILocation(line: 982, column: 21, scope: !3089)
!3101 = !DILocation(line: 982, column: 15, scope: !3089)
!3102 = !DILocation(line: 55, column: 26, scope: !90, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 983, column: 23, scope: !3089)
!3104 = !DILocation(line: 55, column: 36, scope: !90, inlinedAt: !3103)
!3105 = !DILocation(line: 55, column: 45, scope: !90, inlinedAt: !3103)
!3106 = !DILocation(line: 56, column: 34, scope: !90, inlinedAt: !3103)
!3107 = !DILocation(line: 56, column: 44, scope: !90, inlinedAt: !3103)
!3108 = !DILocation(line: 56, column: 21, scope: !90, inlinedAt: !3103)
!3109 = !DILocation(line: 56, column: 16, scope: !90, inlinedAt: !3103)
!3110 = !DILocation(line: 57, column: 9, scope: !202, inlinedAt: !3103)
!3111 = !DILocation(line: 57, column: 9, scope: !90, inlinedAt: !3103)
!3112 = !DILocation(line: 58, column: 21, scope: !201, inlinedAt: !3103)
!3113 = !DILocation(line: 58, column: 15, scope: !201, inlinedAt: !3103)
!3114 = !DILocation(line: 983, column: 15, scope: !3089)
!3115 = !DILocation(line: 984, column: 13, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3089, file: !1, line: 984, column: 13)
!3117 = !DILocation(line: 984, column: 19, scope: !3116)
!3118 = !DILocation(line: 984, column: 30, scope: !3116)
!3119 = !DILocation(line: 984, column: 47, scope: !3116)
!3120 = !DILocation(line: 987, column: 13, scope: !3116)
!3121 = distinct !{!3121, !3099, !3122}
!3122 = !DILocation(line: 988, column: 5, scope: !3081)
!3123 = !DILocation(line: 989, column: 5, scope: !3081)
!3124 = !DILocation(line: 990, column: 1, scope: !3081)
!3125 = distinct !DISubprogram(name: "dbSwapDatabases", scope: !1, file: !1, line: 1000, type: !3126, isLocal: false, isDefinition: true, scopeLine: 1000, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3128)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!8, !8, !8}
!3128 = !{!3129, !3130, !3131, !3132, !3133}
!3129 = !DILocalVariable(name: "id1", arg: 1, scope: !3125, file: !1, line: 1000, type: !8)
!3130 = !DILocalVariable(name: "id2", arg: 2, scope: !3125, file: !1, line: 1000, type: !8)
!3131 = !DILocalVariable(name: "aux", scope: !3125, file: !1, line: 1004, type: !94)
!3132 = !DILocalVariable(name: "db1", scope: !3125, file: !1, line: 1005, type: !93)
!3133 = !DILocalVariable(name: "db2", scope: !3125, file: !1, line: 1005, type: !93)
!3134 = !DILocation(line: 1000, column: 25, scope: !3125)
!3135 = !DILocation(line: 1000, column: 34, scope: !3125)
!3136 = !DILocation(line: 1001, column: 13, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3125, file: !1, line: 1001, column: 9)
!3138 = !DILocation(line: 1001, column: 17, scope: !3137)
!3139 = !DILocation(line: 1001, column: 34, scope: !3137)
!3140 = !DILocation(line: 1001, column: 24, scope: !3137)
!3141 = !DILocation(line: 1002, column: 13, scope: !3137)
!3142 = !DILocation(line: 1001, column: 40, scope: !3137)
!3143 = !DILocation(line: 1002, column: 24, scope: !3137)
!3144 = !DILocation(line: 1003, column: 13, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3125, file: !1, line: 1003, column: 9)
!3146 = !DILocation(line: 1003, column: 9, scope: !3125)
!3147 = !DILocation(line: 1004, column: 26, scope: !3125)
!3148 = !DILocation(line: 1004, column: 19, scope: !3125)
!3149 = !DILocation(line: 1004, column: 13, scope: !3125)
!3150 = !DILocation(line: 1005, column: 14, scope: !3125)
!3151 = !DILocation(line: 1005, column: 45, scope: !3125)
!3152 = !DILocation(line: 1005, column: 38, scope: !3125)
!3153 = !DILocation(line: 1010, column: 22, scope: !3125)
!3154 = !DILocation(line: 1010, column: 15, scope: !3125)
!3155 = !DILocation(line: 1012, column: 25, scope: !3125)
!3156 = !{!208, !213, i64 48}
!3157 = !DILocation(line: 1012, column: 18, scope: !3125)
!3158 = !DILocation(line: 1014, column: 15, scope: !3125)
!3159 = !DILocation(line: 1016, column: 18, scope: !3125)
!3160 = !DILocation(line: 1027, column: 5, scope: !3125)
!3161 = !DILocation(line: 1028, column: 5, scope: !3125)
!3162 = !DILocation(line: 0, scope: !3125)
!3163 = !DILocation(line: 1030, column: 1, scope: !3125)
!3164 = distinct !DISubprogram(name: "swapdbCommand", scope: !1, file: !1, line: 1033, type: !451, isLocal: false, isDefinition: true, scopeLine: 1033, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3165)
!3165 = !{!3166, !3167, !3168}
!3166 = !DILocalVariable(name: "c", arg: 1, scope: !3164, file: !1, line: 1033, type: !423)
!3167 = !DILocalVariable(name: "id1", scope: !3164, file: !1, line: 1034, type: !12)
!3168 = !DILocalVariable(name: "id2", scope: !3164, file: !1, line: 1034, type: !12)
!3169 = !DILocation(line: 1033, column: 28, scope: !3164)
!3170 = !DILocation(line: 1034, column: 5, scope: !3164)
!3171 = !DILocation(line: 1037, column: 16, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3164, file: !1, line: 1037, column: 9)
!3173 = !DILocation(line: 1037, column: 9, scope: !3172)
!3174 = !DILocation(line: 1037, column: 9, scope: !3164)
!3175 = !DILocation(line: 1038, column: 9, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3172, file: !1, line: 1037, column: 33)
!3177 = !DILocation(line: 1039, column: 9, scope: !3176)
!3178 = !DILocation(line: 1043, column: 40, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3164, file: !1, line: 1043, column: 9)
!3180 = !DILocation(line: 1043, column: 37, scope: !3179)
!3181 = !DILocation(line: 1034, column: 10, scope: !3164)
!3182 = !DILocation(line: 1043, column: 9, scope: !3179)
!3183 = !DILocation(line: 1044, column: 35, scope: !3179)
!3184 = !DILocation(line: 1043, column: 9, scope: !3164)
!3185 = !DILocation(line: 1047, column: 40, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3164, file: !1, line: 1047, column: 9)
!3187 = !DILocation(line: 1047, column: 37, scope: !3186)
!3188 = !DILocation(line: 1034, column: 15, scope: !3164)
!3189 = !DILocation(line: 1047, column: 9, scope: !3186)
!3190 = !DILocation(line: 1048, column: 36, scope: !3186)
!3191 = !DILocation(line: 1047, column: 9, scope: !3164)
!3192 = !DILocation(line: 1052, column: 25, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3164, file: !1, line: 1052, column: 9)
!3194 = !DILocation(line: 1052, column: 29, scope: !3193)
!3195 = !DILocation(line: 1000, column: 25, scope: !3125, inlinedAt: !3196)
!3196 = distinct !DILocation(line: 1052, column: 9, scope: !3193)
!3197 = !DILocation(line: 1000, column: 34, scope: !3125, inlinedAt: !3196)
!3198 = !DILocation(line: 1001, column: 13, scope: !3137, inlinedAt: !3196)
!3199 = !DILocation(line: 1001, column: 17, scope: !3137, inlinedAt: !3196)
!3200 = !DILocation(line: 1001, column: 34, scope: !3137, inlinedAt: !3196)
!3201 = !DILocation(line: 1001, column: 24, scope: !3137, inlinedAt: !3196)
!3202 = !DILocation(line: 1002, column: 13, scope: !3137, inlinedAt: !3196)
!3203 = !DILocation(line: 1001, column: 40, scope: !3137, inlinedAt: !3196)
!3204 = !DILocation(line: 1002, column: 24, scope: !3137, inlinedAt: !3196)
!3205 = !DILocation(line: 1003, column: 13, scope: !3145, inlinedAt: !3196)
!3206 = !DILocation(line: 1003, column: 9, scope: !3125, inlinedAt: !3196)
!3207 = !DILocation(line: 1004, column: 26, scope: !3125, inlinedAt: !3196)
!3208 = !DILocation(line: 1004, column: 19, scope: !3125, inlinedAt: !3196)
!3209 = !DILocation(line: 1004, column: 13, scope: !3125, inlinedAt: !3196)
!3210 = !DILocation(line: 1005, column: 14, scope: !3125, inlinedAt: !3196)
!3211 = !DILocation(line: 1005, column: 45, scope: !3125, inlinedAt: !3196)
!3212 = !DILocation(line: 1005, column: 38, scope: !3125, inlinedAt: !3196)
!3213 = !DILocation(line: 1010, column: 22, scope: !3125, inlinedAt: !3196)
!3214 = !DILocation(line: 1010, column: 15, scope: !3125, inlinedAt: !3196)
!3215 = !DILocation(line: 1012, column: 25, scope: !3125, inlinedAt: !3196)
!3216 = !DILocation(line: 1012, column: 18, scope: !3125, inlinedAt: !3196)
!3217 = !DILocation(line: 1014, column: 15, scope: !3125, inlinedAt: !3196)
!3218 = !DILocation(line: 1016, column: 18, scope: !3125, inlinedAt: !3196)
!3219 = !DILocation(line: 1027, column: 5, scope: !3125, inlinedAt: !3196)
!3220 = !DILocation(line: 1028, column: 5, scope: !3125, inlinedAt: !3196)
!3221 = !DILocation(line: 1053, column: 9, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3193, file: !1, line: 1052, column: 44)
!3223 = !DILocation(line: 1054, column: 9, scope: !3222)
!3224 = !DILocation(line: 1056, column: 21, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3193, file: !1, line: 1055, column: 12)
!3226 = !DILocation(line: 1057, column: 27, scope: !3225)
!3227 = !DILocation(line: 1057, column: 9, scope: !3225)
!3228 = !DILocation(line: 1059, column: 1, scope: !3164)
!3229 = distinct !DISubprogram(name: "propagateExpire", scope: !1, file: !1, line: 1113, type: !3230, isLocal: false, isDefinition: true, scopeLine: 1113, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3232)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{null, !93, !65, !8}
!3232 = !{!3233, !3234, !3235, !3236}
!3233 = !DILocalVariable(name: "db", arg: 1, scope: !3229, file: !1, line: 1113, type: !93)
!3234 = !DILocalVariable(name: "key", arg: 2, scope: !3229, file: !1, line: 1113, type: !65)
!3235 = !DILocalVariable(name: "lazy", arg: 3, scope: !3229, file: !1, line: 1113, type: !8)
!3236 = !DILocalVariable(name: "argv", scope: !3229, file: !1, line: 1114, type: !3237)
!3237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 128, elements: !155)
!3238 = !DILocation(line: 1113, column: 31, scope: !3229)
!3239 = !DILocation(line: 1113, column: 41, scope: !3229)
!3240 = !DILocation(line: 1113, column: 50, scope: !3229)
!3241 = !DILocation(line: 1114, column: 5, scope: !3229)
!3242 = !DILocation(line: 1114, column: 11, scope: !3229)
!3243 = !DILocation(line: 1116, column: 15, scope: !3229)
!3244 = !DILocation(line: 1116, column: 29, scope: !3229)
!3245 = !DILocation(line: 1116, column: 45, scope: !3229)
!3246 = !DILocation(line: 1116, column: 5, scope: !3229)
!3247 = !DILocation(line: 1116, column: 13, scope: !3229)
!3248 = !DILocation(line: 1117, column: 5, scope: !3229)
!3249 = !DILocation(line: 1117, column: 13, scope: !3229)
!3250 = !DILocation(line: 1118, column: 5, scope: !3229)
!3251 = !DILocation(line: 1119, column: 5, scope: !3229)
!3252 = !DILocation(line: 1121, column: 16, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3229, file: !1, line: 1121, column: 9)
!3254 = !{!227, !212, i64 1880}
!3255 = !DILocation(line: 1121, column: 26, scope: !3253)
!3256 = !DILocation(line: 1121, column: 9, scope: !3229)
!3257 = !DILocation(line: 1123, column: 45, scope: !3229)
!3258 = !DILocation(line: 1122, column: 35, scope: !3253)
!3259 = !{!227, !209, i64 896}
!3260 = !DILocation(line: 1122, column: 50, scope: !3253)
!3261 = !DILocation(line: 1122, column: 9, scope: !3253)
!3262 = !DILocation(line: 1123, column: 34, scope: !3229)
!3263 = !{!227, !209, i64 536}
!3264 = !DILocation(line: 1123, column: 5, scope: !3229)
!3265 = !DILocation(line: 1125, column: 18, scope: !3229)
!3266 = !DILocation(line: 1125, column: 5, scope: !3229)
!3267 = !DILocation(line: 1126, column: 18, scope: !3229)
!3268 = !DILocation(line: 1126, column: 5, scope: !3229)
!3269 = !DILocation(line: 1127, column: 1, scope: !3229)
!3270 = distinct !DISubprogram(name: "getKeysUsingCommandTable", scope: !1, file: !1, line: 1195, type: !459, isLocal: false, isDefinition: true, scopeLine: 1195, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3271)
!3271 = !{!3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279}
!3272 = !DILocalVariable(name: "cmd", arg: 1, scope: !3270, file: !1, line: 1195, type: !444)
!3273 = !DILocalVariable(name: "argv", arg: 2, scope: !3270, file: !1, line: 1195, type: !442)
!3274 = !DILocalVariable(name: "argc", arg: 3, scope: !3270, file: !1, line: 1195, type: !8)
!3275 = !DILocalVariable(name: "numkeys", arg: 4, scope: !3270, file: !1, line: 1195, type: !461)
!3276 = !DILocalVariable(name: "j", scope: !3270, file: !1, line: 1196, type: !8)
!3277 = !DILocalVariable(name: "i", scope: !3270, file: !1, line: 1196, type: !8)
!3278 = !DILocalVariable(name: "last", scope: !3270, file: !1, line: 1196, type: !8)
!3279 = !DILocalVariable(name: "keys", scope: !3270, file: !1, line: 1196, type: !461)
!3280 = !DILocation(line: 1195, column: 52, scope: !3270)
!3281 = !DILocation(line: 1195, column: 63, scope: !3270)
!3282 = !DILocation(line: 1195, column: 73, scope: !3270)
!3283 = !DILocation(line: 1195, column: 84, scope: !3270)
!3284 = !DILocation(line: 1196, column: 12, scope: !3270)
!3285 = !DILocation(line: 1199, column: 14, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3270, file: !1, line: 1199, column: 9)
!3287 = !{!298, !212, i64 48}
!3288 = !DILocation(line: 1199, column: 23, scope: !3286)
!3289 = !DILocation(line: 1199, column: 9, scope: !3270)
!3290 = !DILocation(line: 1204, column: 17, scope: !3270)
!3291 = !{!298, !212, i64 52}
!3292 = !DILocation(line: 1196, column: 19, scope: !3270)
!3293 = !DILocation(line: 1205, column: 14, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3270, file: !1, line: 1205, column: 9)
!3295 = !DILocation(line: 1205, column: 9, scope: !3270)
!3296 = !DILocation(line: 1206, column: 39, scope: !3270)
!3297 = !DILocation(line: 1206, column: 55, scope: !3270)
!3298 = !DILocation(line: 1206, column: 32, scope: !3270)
!3299 = !DILocation(line: 1206, column: 31, scope: !3270)
!3300 = !DILocation(line: 1206, column: 12, scope: !3270)
!3301 = !DILocation(line: 1196, column: 26, scope: !3270)
!3302 = !DILocation(line: 1207, column: 19, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3270, file: !1, line: 1207, column: 5)
!3304 = !DILocation(line: 1196, column: 9, scope: !3270)
!3305 = !DILocation(line: 1207, column: 31, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3303, file: !1, line: 1207, column: 5)
!3307 = !DILocation(line: 1207, column: 5, scope: !3303)
!3308 = !DILocation(line: 1208, column: 15, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3310, file: !1, line: 1208, column: 13)
!3310 = distinct !DILexicalBlock(scope: !3306, file: !1, line: 1207, column: 59)
!3311 = !DILocation(line: 1208, column: 13, scope: !3310)
!3312 = !DILocation(line: 1215, column: 22, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !1, line: 1215, column: 17)
!3314 = distinct !DILexicalBlock(scope: !3309, file: !1, line: 1208, column: 24)
!3315 = !DILocation(line: 1215, column: 28, scope: !3313)
!3316 = !DILocation(line: 1215, column: 41, scope: !3313)
!3317 = !DILocation(line: 1215, column: 49, scope: !3313)
!3318 = !{!298, !212, i64 16}
!3319 = !DILocation(line: 1215, column: 55, scope: !3313)
!3320 = !DILocation(line: 1215, column: 17, scope: !3314)
!3321 = !DILocation(line: 1216, column: 17, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3313, file: !1, line: 1215, column: 60)
!3323 = !DILocation(line: 1218, column: 17, scope: !3322)
!3324 = !DILocation(line: 1220, column: 17, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3313, file: !1, line: 1219, column: 20)
!3326 = !DILocation(line: 1223, column: 15, scope: !3310)
!3327 = !DILocation(line: 1223, column: 9, scope: !3310)
!3328 = !DILocation(line: 1223, column: 19, scope: !3310)
!3329 = !DILocation(line: 1207, column: 50, scope: !3306)
!3330 = !{!298, !212, i64 56}
!3331 = !DILocation(line: 1207, column: 42, scope: !3306)
!3332 = distinct !{!3332, !3307, !3333}
!3333 = !DILocation(line: 1224, column: 5, scope: !3303)
!3334 = !DILocation(line: 1225, column: 14, scope: !3270)
!3335 = !DILocation(line: 0, scope: !3270)
!3336 = !DILocation(line: 0, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3286, file: !1, line: 1199, column: 29)
!3338 = !DILocation(line: 1227, column: 1, scope: !3270)
!3339 = distinct !DISubprogram(name: "getKeysFromCommand", scope: !1, file: !1, line: 1240, type: !459, isLocal: false, isDefinition: true, scopeLine: 1240, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3340)
!3340 = !{!3341, !3342, !3343, !3344}
!3341 = !DILocalVariable(name: "cmd", arg: 1, scope: !3339, file: !1, line: 1240, type: !444)
!3342 = !DILocalVariable(name: "argv", arg: 2, scope: !3339, file: !1, line: 1240, type: !442)
!3343 = !DILocalVariable(name: "argc", arg: 3, scope: !3339, file: !1, line: 1240, type: !8)
!3344 = !DILocalVariable(name: "numkeys", arg: 4, scope: !3339, file: !1, line: 1240, type: !461)
!3345 = !DILocation(line: 1240, column: 46, scope: !3339)
!3346 = !DILocation(line: 1240, column: 58, scope: !3339)
!3347 = !DILocation(line: 1240, column: 68, scope: !3339)
!3348 = !DILocation(line: 1240, column: 79, scope: !3339)
!3349 = !DILocation(line: 1241, column: 14, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3339, file: !1, line: 1241, column: 9)
!3351 = !DILocation(line: 1241, column: 20, scope: !3350)
!3352 = !DILocation(line: 1241, column: 9, scope: !3339)
!3353 = !DILocation(line: 1242, column: 16, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3350, file: !1, line: 1241, column: 42)
!3355 = !DILocation(line: 1242, column: 9, scope: !3354)
!3356 = !DILocation(line: 1243, column: 29, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3350, file: !1, line: 1243, column: 16)
!3358 = !DILocation(line: 1243, column: 43, scope: !3357)
!3359 = !DILocation(line: 1243, column: 51, scope: !3357)
!3360 = !{!298, !209, i64 40}
!3361 = !DILocation(line: 1243, column: 46, scope: !3357)
!3362 = !DILocation(line: 1243, column: 16, scope: !3350)
!3363 = !DILocation(line: 1244, column: 16, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3357, file: !1, line: 1243, column: 65)
!3365 = !DILocation(line: 1244, column: 9, scope: !3364)
!3366 = !DILocation(line: 1246, column: 16, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3357, file: !1, line: 1245, column: 12)
!3368 = !DILocation(line: 1246, column: 9, scope: !3367)
!3369 = !DILocation(line: 0, scope: !3364)
!3370 = !DILocation(line: 1248, column: 1, scope: !3339)
!3371 = distinct !DISubprogram(name: "getKeysFreeResult", scope: !1, file: !1, line: 1251, type: !3372, isLocal: false, isDefinition: true, scopeLine: 1251, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3374)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{null, !461}
!3374 = !{!3375}
!3375 = !DILocalVariable(name: "result", arg: 1, scope: !3371, file: !1, line: 1251, type: !461)
!3376 = !DILocation(line: 1251, column: 29, scope: !3371)
!3377 = !DILocation(line: 1252, column: 11, scope: !3371)
!3378 = !DILocation(line: 1252, column: 5, scope: !3371)
!3379 = !DILocation(line: 1253, column: 1, scope: !3371)
!3380 = distinct !DISubprogram(name: "zunionInterGetKeys", scope: !1, file: !1, line: 1258, type: !459, isLocal: false, isDefinition: true, scopeLine: 1258, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3381)
!3381 = !{!3382, !3383, !3384, !3385, !3386, !3387, !3388}
!3382 = !DILocalVariable(name: "cmd", arg: 1, scope: !3380, file: !1, line: 1258, type: !444)
!3383 = !DILocalVariable(name: "argv", arg: 2, scope: !3380, file: !1, line: 1258, type: !442)
!3384 = !DILocalVariable(name: "argc", arg: 3, scope: !3380, file: !1, line: 1258, type: !8)
!3385 = !DILocalVariable(name: "numkeys", arg: 4, scope: !3380, file: !1, line: 1258, type: !461)
!3386 = !DILocalVariable(name: "i", scope: !3380, file: !1, line: 1259, type: !8)
!3387 = !DILocalVariable(name: "num", scope: !3380, file: !1, line: 1259, type: !8)
!3388 = !DILocalVariable(name: "keys", scope: !3380, file: !1, line: 1259, type: !461)
!3389 = !DILocation(line: 1258, column: 46, scope: !3380)
!3390 = !DILocation(line: 1258, column: 58, scope: !3380)
!3391 = !DILocation(line: 1258, column: 68, scope: !3380)
!3392 = !DILocation(line: 1258, column: 79, scope: !3380)
!3393 = !DILocation(line: 1262, column: 16, scope: !3380)
!3394 = !DILocation(line: 1262, column: 25, scope: !3380)
!3395 = !DILocation(line: 1262, column: 11, scope: !3380)
!3396 = !DILocation(line: 1259, column: 12, scope: !3380)
!3397 = !DILocation(line: 1265, column: 13, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3380, file: !1, line: 1265, column: 9)
!3399 = !DILocation(line: 1265, column: 31, scope: !3398)
!3400 = !DILocation(line: 1265, column: 24, scope: !3398)
!3401 = !DILocation(line: 1265, column: 17, scope: !3398)
!3402 = !DILocation(line: 1273, column: 36, scope: !3380)
!3403 = !DILocation(line: 1273, column: 32, scope: !3380)
!3404 = !DILocation(line: 1273, column: 31, scope: !3380)
!3405 = !DILocation(line: 1273, column: 12, scope: !3380)
!3406 = !DILocation(line: 1259, column: 18, scope: !3380)
!3407 = !DILocation(line: 1259, column: 9, scope: !3380)
!3408 = !DILocation(line: 1276, column: 42, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3410, file: !1, line: 1276, column: 5)
!3410 = distinct !DILexicalBlock(scope: !3380, file: !1, line: 1276, column: 5)
!3411 = !DILocation(line: 1276, column: 27, scope: !3409)
!3412 = !DILocation(line: 1276, column: 39, scope: !3409)
!3413 = !DILocation(line: 1276, column: 31, scope: !3409)
!3414 = distinct !{!3414, !3415, !3416, !3417}
!3415 = !DILocation(line: 1276, column: 5, scope: !3410)
!3416 = !DILocation(line: 1276, column: 43, scope: !3410)
!3417 = !{!"llvm.loop.isvectorized", i32 1}
!3418 = distinct !{!3418, !3419}
!3419 = !{!"llvm.loop.unroll.disable"}
!3420 = !DILocation(line: 1276, column: 19, scope: !3409)
!3421 = distinct !{!3421, !3415, !3416, !3422, !3417}
!3422 = !{!"llvm.loop.unroll.runtime.disable"}
!3423 = !DILocation(line: 1279, column: 5, scope: !3380)
!3424 = !DILocation(line: 1279, column: 15, scope: !3380)
!3425 = !DILocation(line: 1281, column: 5, scope: !3380)
!3426 = !DILocation(line: 0, scope: !3380)
!3427 = !DILocation(line: 0, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3398, file: !1, line: 1265, column: 36)
!3429 = !DILocation(line: 1282, column: 1, scope: !3380)
!3430 = distinct !DISubprogram(name: "evalGetKeys", scope: !1, file: !1, line: 1287, type: !459, isLocal: false, isDefinition: true, scopeLine: 1287, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3431)
!3431 = !{!3432, !3433, !3434, !3435, !3436, !3437, !3438}
!3432 = !DILocalVariable(name: "cmd", arg: 1, scope: !3430, file: !1, line: 1287, type: !444)
!3433 = !DILocalVariable(name: "argv", arg: 2, scope: !3430, file: !1, line: 1287, type: !442)
!3434 = !DILocalVariable(name: "argc", arg: 3, scope: !3430, file: !1, line: 1287, type: !8)
!3435 = !DILocalVariable(name: "numkeys", arg: 4, scope: !3430, file: !1, line: 1287, type: !461)
!3436 = !DILocalVariable(name: "i", scope: !3430, file: !1, line: 1288, type: !8)
!3437 = !DILocalVariable(name: "num", scope: !3430, file: !1, line: 1288, type: !8)
!3438 = !DILocalVariable(name: "keys", scope: !3430, file: !1, line: 1288, type: !461)
!3439 = !DILocation(line: 1287, column: 39, scope: !3430)
!3440 = !DILocation(line: 1287, column: 51, scope: !3430)
!3441 = !DILocation(line: 1287, column: 61, scope: !3430)
!3442 = !DILocation(line: 1287, column: 72, scope: !3430)
!3443 = !DILocation(line: 1291, column: 16, scope: !3430)
!3444 = !DILocation(line: 1291, column: 25, scope: !3430)
!3445 = !DILocation(line: 1291, column: 11, scope: !3430)
!3446 = !DILocation(line: 1288, column: 12, scope: !3430)
!3447 = !DILocation(line: 1294, column: 13, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3430, file: !1, line: 1294, column: 9)
!3449 = !DILocation(line: 1294, column: 32, scope: !3448)
!3450 = !DILocation(line: 1294, column: 25, scope: !3448)
!3451 = !DILocation(line: 1294, column: 18, scope: !3448)
!3452 = !DILocation(line: 1295, column: 18, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3448, file: !1, line: 1294, column: 37)
!3454 = !DILocation(line: 1296, column: 9, scope: !3453)
!3455 = !DILocation(line: 1299, column: 32, scope: !3430)
!3456 = !DILocation(line: 1299, column: 31, scope: !3430)
!3457 = !DILocation(line: 1299, column: 12, scope: !3430)
!3458 = !DILocation(line: 1288, column: 18, scope: !3430)
!3459 = !DILocation(line: 1300, column: 14, scope: !3430)
!3460 = !DILocation(line: 1288, column: 9, scope: !3430)
!3461 = !DILocation(line: 1303, column: 42, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3463, file: !1, line: 1303, column: 5)
!3463 = distinct !DILexicalBlock(scope: !3430, file: !1, line: 1303, column: 5)
!3464 = !DILocation(line: 1303, column: 27, scope: !3462)
!3465 = !DILocation(line: 1303, column: 39, scope: !3462)
!3466 = !DILocation(line: 1303, column: 31, scope: !3462)
!3467 = distinct !{!3467, !3468, !3469, !3417}
!3468 = !DILocation(line: 1303, column: 5, scope: !3463)
!3469 = !DILocation(line: 1303, column: 43, scope: !3463)
!3470 = distinct !{!3470, !3419}
!3471 = !DILocation(line: 1303, column: 19, scope: !3462)
!3472 = distinct !{!3472, !3468, !3469, !3422, !3417}
!3473 = !DILocation(line: 0, scope: !3430)
!3474 = !DILocation(line: 1306, column: 1, scope: !3430)
!3475 = distinct !DISubprogram(name: "sortGetKeys", scope: !1, file: !1, line: 1315, type: !459, isLocal: false, isDefinition: true, scopeLine: 1315, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3476)
!3476 = !{!3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486}
!3477 = !DILocalVariable(name: "cmd", arg: 1, scope: !3475, file: !1, line: 1315, type: !444)
!3478 = !DILocalVariable(name: "argv", arg: 2, scope: !3475, file: !1, line: 1315, type: !442)
!3479 = !DILocalVariable(name: "argc", arg: 3, scope: !3475, file: !1, line: 1315, type: !8)
!3480 = !DILocalVariable(name: "numkeys", arg: 4, scope: !3475, file: !1, line: 1315, type: !461)
!3481 = !DILocalVariable(name: "i", scope: !3475, file: !1, line: 1316, type: !8)
!3482 = !DILocalVariable(name: "j", scope: !3475, file: !1, line: 1316, type: !8)
!3483 = !DILocalVariable(name: "num", scope: !3475, file: !1, line: 1316, type: !8)
!3484 = !DILocalVariable(name: "keys", scope: !3475, file: !1, line: 1316, type: !461)
!3485 = !DILocalVariable(name: "found_store", scope: !3475, file: !1, line: 1316, type: !8)
!3486 = !DILocalVariable(name: "skiplist", scope: !3475, file: !1, line: 1331, type: !3487)
!3487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3488, size: 512, elements: !2403)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3475, file: !1, line: 1328, size: 128, elements: !3489)
!3489 = !{!3490, !3491}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3488, file: !1, line: 1329, baseType: !9, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !3488, file: !1, line: 1330, baseType: !8, size: 32, offset: 64)
!3492 = !DILocation(line: 1315, column: 39, scope: !3475)
!3493 = !DILocation(line: 1315, column: 51, scope: !3475)
!3494 = !DILocation(line: 1315, column: 61, scope: !3475)
!3495 = !DILocation(line: 1315, column: 72, scope: !3475)
!3496 = !DILocation(line: 1316, column: 27, scope: !3475)
!3497 = !DILocation(line: 1316, column: 15, scope: !3475)
!3498 = !DILocation(line: 1320, column: 12, scope: !3475)
!3499 = !DILocation(line: 1316, column: 21, scope: !3475)
!3500 = !DILocation(line: 1322, column: 17, scope: !3475)
!3501 = !DILocation(line: 1328, column: 5, scope: !3475)
!3502 = !DILocation(line: 1331, column: 7, scope: !3475)
!3503 = !DILocation(line: 1316, column: 9, scope: !3475)
!3504 = !DILocation(line: 1338, column: 19, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3506, file: !1, line: 1338, column: 5)
!3506 = distinct !DILexicalBlock(scope: !3475, file: !1, line: 1338, column: 5)
!3507 = !DILocation(line: 1338, column: 5, scope: !3506)
!3508 = !DILocation(line: 1316, column: 12, scope: !3475)
!3509 = !DILocation(line: 1339, column: 9, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3511, file: !1, line: 1339, column: 9)
!3511 = distinct !DILexicalBlock(scope: !3505, file: !1, line: 1338, column: 32)
!3512 = !DILocation(line: 1340, column: 18, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3514, file: !1, line: 1340, column: 17)
!3514 = distinct !DILexicalBlock(scope: !3515, file: !1, line: 1339, column: 52)
!3515 = distinct !DILexicalBlock(scope: !3510, file: !1, line: 1339, column: 9)
!3516 = !DILocation(line: 1340, column: 17, scope: !3514)
!3517 = !DILocation(line: 1341, column: 34, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3513, file: !1, line: 1340, column: 61)
!3519 = !{!3520, !212, i64 8}
!3520 = !{!"", !209, i64 0, !212, i64 8}
!3521 = !DILocation(line: 1341, column: 19, scope: !3518)
!3522 = !DILocation(line: 1342, column: 17, scope: !3518)
!3523 = !DILocation(line: 1343, column: 25, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3513, file: !1, line: 1343, column: 24)
!3525 = !DILocation(line: 1343, column: 58, scope: !3524)
!3526 = !DILocation(line: 1348, column: 27, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3524, file: !1, line: 1343, column: 73)
!3528 = !DILocation(line: 1349, column: 17, scope: !3527)
!3529 = !DILocation(line: 1339, column: 48, scope: !3515)
!3530 = !DILocation(line: 1339, column: 33, scope: !3515)
!3531 = !{!3520, !209, i64 0}
!3532 = !DILocation(line: 1339, column: 38, scope: !3515)
!3533 = distinct !{!3533, !3509, !3534}
!3534 = !DILocation(line: 1351, column: 9, scope: !3510)
!3535 = !DILocation(line: 0, scope: !3506)
!3536 = !DILocation(line: 0, scope: !3475)
!3537 = !DILocation(line: 1338, column: 28, scope: !3505)
!3538 = distinct !{!3538, !3507, !3539}
!3539 = !DILocation(line: 1352, column: 5, scope: !3506)
!3540 = !DILocation(line: 0, scope: !3527)
!3541 = !DILocation(line: 1353, column: 20, scope: !3475)
!3542 = !DILocation(line: 1353, column: 14, scope: !3475)
!3543 = !DILocation(line: 1355, column: 1, scope: !3475)
!3544 = !DILocation(line: 1354, column: 5, scope: !3475)
!3545 = distinct !DISubprogram(name: "migrateGetKeys", scope: !1, file: !1, line: 1357, type: !459, isLocal: false, isDefinition: true, scopeLine: 1357, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3546)
!3546 = !{!3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554}
!3547 = !DILocalVariable(name: "cmd", arg: 1, scope: !3545, file: !1, line: 1357, type: !444)
!3548 = !DILocalVariable(name: "argv", arg: 2, scope: !3545, file: !1, line: 1357, type: !442)
!3549 = !DILocalVariable(name: "argc", arg: 3, scope: !3545, file: !1, line: 1357, type: !8)
!3550 = !DILocalVariable(name: "numkeys", arg: 4, scope: !3545, file: !1, line: 1357, type: !461)
!3551 = !DILocalVariable(name: "i", scope: !3545, file: !1, line: 1358, type: !8)
!3552 = !DILocalVariable(name: "num", scope: !3545, file: !1, line: 1358, type: !8)
!3553 = !DILocalVariable(name: "first", scope: !3545, file: !1, line: 1358, type: !8)
!3554 = !DILocalVariable(name: "keys", scope: !3545, file: !1, line: 1358, type: !461)
!3555 = !DILocation(line: 1357, column: 42, scope: !3545)
!3556 = !DILocation(line: 1357, column: 54, scope: !3545)
!3557 = !DILocation(line: 1357, column: 64, scope: !3545)
!3558 = !DILocation(line: 1357, column: 75, scope: !3545)
!3559 = !DILocation(line: 1358, column: 17, scope: !3545)
!3560 = !DILocation(line: 1358, column: 12, scope: !3545)
!3561 = !DILocation(line: 1366, column: 14, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3545, file: !1, line: 1366, column: 9)
!3563 = !DILocation(line: 1366, column: 9, scope: !3545)
!3564 = !DILocation(line: 1358, column: 9, scope: !3545)
!3565 = !DILocation(line: 1367, column: 9, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3567, file: !1, line: 1367, column: 9)
!3567 = distinct !DILexicalBlock(scope: !3562, file: !1, line: 1366, column: 19)
!3568 = !DILocation(line: 1368, column: 29, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3570, file: !1, line: 1368, column: 17)
!3570 = distinct !DILexicalBlock(scope: !3571, file: !1, line: 1367, column: 36)
!3571 = distinct !DILexicalBlock(scope: !3566, file: !1, line: 1367, column: 9)
!3572 = !DILocation(line: 1368, column: 38, scope: !3569)
!3573 = !DILocation(line: 1368, column: 18, scope: !3569)
!3574 = !DILocation(line: 1368, column: 50, scope: !3569)
!3575 = !DILocation(line: 1369, column: 24, scope: !3569)
!3576 = !DILocation(line: 1369, column: 33, scope: !3569)
!3577 = !DILocation(line: 87, column: 39, scope: !806, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 1369, column: 17, scope: !3569)
!3579 = !DILocation(line: 88, column: 27, scope: !806, inlinedAt: !3578)
!3580 = !DILocation(line: 88, column: 19, scope: !806, inlinedAt: !3578)
!3581 = !DILocation(line: 89, column: 5, scope: !806, inlinedAt: !3578)
!3582 = !DILocation(line: 91, column: 20, scope: !820, inlinedAt: !3578)
!3583 = !DILocation(line: 91, column: 13, scope: !820, inlinedAt: !3578)
!3584 = !DILocation(line: 93, column: 20, scope: !820, inlinedAt: !3578)
!3585 = !DILocation(line: 93, column: 34, scope: !820, inlinedAt: !3578)
!3586 = !DILocation(line: 93, column: 13, scope: !820, inlinedAt: !3578)
!3587 = !DILocation(line: 95, column: 20, scope: !820, inlinedAt: !3578)
!3588 = !DILocation(line: 95, column: 35, scope: !820, inlinedAt: !3578)
!3589 = !DILocation(line: 95, column: 13, scope: !820, inlinedAt: !3578)
!3590 = !DILocation(line: 97, column: 20, scope: !820, inlinedAt: !3578)
!3591 = !DILocation(line: 97, column: 35, scope: !820, inlinedAt: !3578)
!3592 = !DILocation(line: 97, column: 13, scope: !820, inlinedAt: !3578)
!3593 = !DILocation(line: 99, column: 20, scope: !820, inlinedAt: !3578)
!3594 = !DILocation(line: 99, column: 35, scope: !820, inlinedAt: !3578)
!3595 = !DILocation(line: 99, column: 13, scope: !820, inlinedAt: !3578)
!3596 = !DILocation(line: 0, scope: !820, inlinedAt: !3578)
!3597 = !DILocation(line: 1369, column: 38, scope: !3569)
!3598 = !DILocation(line: 1368, column: 17, scope: !3570)
!3599 = !DILocation(line: 1371, column: 26, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3569, file: !1, line: 1370, column: 13)
!3601 = !DILocation(line: 1372, column: 27, scope: !3600)
!3602 = !DILocation(line: 1373, column: 17, scope: !3600)
!3603 = !DILocation(line: 1367, column: 32, scope: !3571)
!3604 = !DILocation(line: 1367, column: 23, scope: !3571)
!3605 = distinct !{!3605, !3565, !3606}
!3606 = !DILocation(line: 1375, column: 9, scope: !3566)
!3607 = !DILocation(line: 0, scope: !3545)
!3608 = !DILocation(line: 1378, column: 32, scope: !3545)
!3609 = !DILocation(line: 1378, column: 31, scope: !3545)
!3610 = !DILocation(line: 1378, column: 12, scope: !3545)
!3611 = !DILocation(line: 1358, column: 25, scope: !3545)
!3612 = !DILocation(line: 1379, column: 19, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3614, file: !1, line: 1379, column: 5)
!3614 = distinct !DILexicalBlock(scope: !3545, file: !1, line: 1379, column: 5)
!3615 = !DILocation(line: 1379, column: 5, scope: !3614)
!3616 = !DILocation(line: 1379, column: 46, scope: !3613)
!3617 = !DILocation(line: 1379, column: 27, scope: !3613)
!3618 = !DILocation(line: 1379, column: 31, scope: !3613)
!3619 = !DILocation(line: 1379, column: 39, scope: !3613)
!3620 = distinct !{!3620, !3615, !3621, !3417}
!3621 = !DILocation(line: 1379, column: 47, scope: !3614)
!3622 = distinct !{!3622, !3615, !3621, !3422, !3417}
!3623 = !DILocation(line: 1380, column: 14, scope: !3545)
!3624 = !DILocation(line: 1381, column: 5, scope: !3545)
!3625 = distinct !DISubprogram(name: "georadiusGetKeys", scope: !1, file: !1, line: 1388, type: !459, isLocal: false, isDefinition: true, scopeLine: 1388, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3626)
!3626 = !{!3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635}
!3627 = !DILocalVariable(name: "cmd", arg: 1, scope: !3625, file: !1, line: 1388, type: !444)
!3628 = !DILocalVariable(name: "argv", arg: 2, scope: !3625, file: !1, line: 1388, type: !442)
!3629 = !DILocalVariable(name: "argc", arg: 3, scope: !3625, file: !1, line: 1388, type: !8)
!3630 = !DILocalVariable(name: "numkeys", arg: 4, scope: !3625, file: !1, line: 1388, type: !461)
!3631 = !DILocalVariable(name: "i", scope: !3625, file: !1, line: 1389, type: !8)
!3632 = !DILocalVariable(name: "num", scope: !3625, file: !1, line: 1389, type: !8)
!3633 = !DILocalVariable(name: "keys", scope: !3625, file: !1, line: 1389, type: !461)
!3634 = !DILocalVariable(name: "stored_key", scope: !3625, file: !1, line: 1393, type: !8)
!3635 = !DILocalVariable(name: "arg", scope: !3636, file: !1, line: 1395, type: !9)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !1, line: 1394, column: 32)
!3637 = distinct !DILexicalBlock(scope: !3638, file: !1, line: 1394, column: 5)
!3638 = distinct !DILexicalBlock(scope: !3625, file: !1, line: 1394, column: 5)
!3639 = !DILocation(line: 1388, column: 44, scope: !3625)
!3640 = !DILocation(line: 1388, column: 56, scope: !3625)
!3641 = !DILocation(line: 1388, column: 66, scope: !3625)
!3642 = !DILocation(line: 1388, column: 77, scope: !3625)
!3643 = !DILocation(line: 1393, column: 9, scope: !3625)
!3644 = !DILocation(line: 1389, column: 9, scope: !3625)
!3645 = !DILocation(line: 1394, column: 19, scope: !3637)
!3646 = !DILocation(line: 1394, column: 5, scope: !3638)
!3647 = !DILocation(line: 1395, column: 21, scope: !3636)
!3648 = !DILocation(line: 1395, column: 30, scope: !3636)
!3649 = !DILocation(line: 1395, column: 15, scope: !3636)
!3650 = !DILocation(line: 1400, column: 15, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3636, file: !1, line: 1400, column: 13)
!3652 = !DILocation(line: 1400, column: 40, scope: !3651)
!3653 = !DILocation(line: 1400, column: 44, scope: !3651)
!3654 = !DILocation(line: 1400, column: 74, scope: !3651)
!3655 = !DILocation(line: 1400, column: 80, scope: !3651)
!3656 = !DILocation(line: 1400, column: 84, scope: !3651)
!3657 = !DILocation(line: 1400, column: 13, scope: !3636)
!3658 = !DILocation(line: 0, scope: !3625)
!3659 = !DILocation(line: 0, scope: !3638)
!3660 = !DILocation(line: 1394, column: 28, scope: !3637)
!3661 = distinct !{!3661, !3646, !3662}
!3662 = !DILocation(line: 1404, column: 5, scope: !3638)
!3663 = !DILocation(line: 1405, column: 27, scope: !3625)
!3664 = !DILocation(line: 1405, column: 13, scope: !3625)
!3665 = !DILocation(line: 1389, column: 12, scope: !3625)
!3666 = !DILocation(line: 1411, column: 32, scope: !3625)
!3667 = !DILocation(line: 1411, column: 12, scope: !3625)
!3668 = !DILocation(line: 1389, column: 18, scope: !3625)
!3669 = !DILocation(line: 1414, column: 13, scope: !3625)
!3670 = !DILocation(line: 1415, column: 8, scope: !3625)
!3671 = !DILocation(line: 1416, column: 10, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3673, file: !1, line: 1415, column: 17)
!3673 = distinct !DILexicalBlock(scope: !3625, file: !1, line: 1415, column: 8)
!3674 = !DILocation(line: 1416, column: 18, scope: !3672)
!3675 = !DILocation(line: 1417, column: 5, scope: !3672)
!3676 = !DILocation(line: 1418, column: 14, scope: !3625)
!3677 = !DILocation(line: 1419, column: 5, scope: !3625)
!3678 = distinct !DISubprogram(name: "xreadGetKeys", scope: !1, file: !1, line: 1424, type: !459, isLocal: false, isDefinition: true, scopeLine: 1424, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3679)
!3679 = !{!3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688}
!3680 = !DILocalVariable(name: "cmd", arg: 1, scope: !3678, file: !1, line: 1424, type: !444)
!3681 = !DILocalVariable(name: "argv", arg: 2, scope: !3678, file: !1, line: 1424, type: !442)
!3682 = !DILocalVariable(name: "argc", arg: 3, scope: !3678, file: !1, line: 1424, type: !8)
!3683 = !DILocalVariable(name: "numkeys", arg: 4, scope: !3678, file: !1, line: 1424, type: !461)
!3684 = !DILocalVariable(name: "i", scope: !3678, file: !1, line: 1425, type: !8)
!3685 = !DILocalVariable(name: "num", scope: !3678, file: !1, line: 1425, type: !8)
!3686 = !DILocalVariable(name: "keys", scope: !3678, file: !1, line: 1425, type: !461)
!3687 = !DILocalVariable(name: "streams_pos", scope: !3678, file: !1, line: 1432, type: !8)
!3688 = !DILocalVariable(name: "arg", scope: !3689, file: !1, line: 1434, type: !9)
!3689 = distinct !DILexicalBlock(scope: !3690, file: !1, line: 1433, column: 32)
!3690 = distinct !DILexicalBlock(scope: !3691, file: !1, line: 1433, column: 5)
!3691 = distinct !DILexicalBlock(scope: !3678, file: !1, line: 1433, column: 5)
!3692 = !DILocation(line: 1424, column: 40, scope: !3678)
!3693 = !DILocation(line: 1424, column: 52, scope: !3678)
!3694 = !DILocation(line: 1424, column: 62, scope: !3678)
!3695 = !DILocation(line: 1424, column: 73, scope: !3678)
!3696 = !DILocation(line: 1425, column: 12, scope: !3678)
!3697 = !DILocation(line: 1432, column: 9, scope: !3678)
!3698 = !DILocation(line: 1425, column: 9, scope: !3678)
!3699 = !DILocation(line: 1433, column: 19, scope: !3690)
!3700 = !DILocation(line: 1433, column: 5, scope: !3691)
!3701 = !DILocation(line: 1434, column: 21, scope: !3689)
!3702 = !DILocation(line: 1434, column: 30, scope: !3689)
!3703 = !DILocation(line: 1434, column: 15, scope: !3689)
!3704 = !DILocation(line: 1435, column: 14, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3689, file: !1, line: 1435, column: 13)
!3706 = !DILocation(line: 1435, column: 13, scope: !3689)
!3707 = !DILocation(line: 1436, column: 14, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3705, file: !1, line: 1435, column: 40)
!3709 = !DILocation(line: 1437, column: 9, scope: !3708)
!3710 = !DILocation(line: 1437, column: 21, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3705, file: !1, line: 1437, column: 20)
!3712 = !DILocation(line: 1437, column: 20, scope: !3705)
!3713 = !DILocation(line: 1438, column: 14, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3711, file: !1, line: 1437, column: 47)
!3715 = !DILocation(line: 1439, column: 9, scope: !3714)
!3716 = !DILocation(line: 1439, column: 21, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3711, file: !1, line: 1439, column: 20)
!3718 = !DILocation(line: 1439, column: 20, scope: !3711)
!3719 = !DILocation(line: 1440, column: 15, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3717, file: !1, line: 1439, column: 47)
!3721 = !DILocation(line: 1441, column: 9, scope: !3720)
!3722 = !DILocation(line: 1441, column: 21, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3717, file: !1, line: 1441, column: 20)
!3724 = !DILocation(line: 1441, column: 20, scope: !3717)
!3725 = !DILocation(line: 1443, column: 21, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3723, file: !1, line: 1443, column: 20)
!3727 = !DILocation(line: 1445, column: 13, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3726, file: !1, line: 1443, column: 49)
!3729 = !DILocation(line: 1433, column: 28, scope: !3690)
!3730 = distinct !{!3730, !3700, !3731}
!3731 = !DILocation(line: 1449, column: 5, scope: !3691)
!3732 = !DILocation(line: 1450, column: 21, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3678, file: !1, line: 1450, column: 9)
!3734 = !DILocation(line: 1450, column: 53, scope: !3733)
!3735 = !DILocation(line: 1450, column: 9, scope: !3678)
!3736 = !DILocation(line: 1453, column: 34, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3678, file: !1, line: 1453, column: 9)
!3738 = !DILocation(line: 1453, column: 27, scope: !3737)
!3739 = !DILocation(line: 1453, column: 50, scope: !3737)
!3740 = !DILocation(line: 1457, column: 9, scope: !3678)
!3741 = !DILocation(line: 1460, column: 34, scope: !3678)
!3742 = !DILocation(line: 1460, column: 32, scope: !3678)
!3743 = !DILocation(line: 1460, column: 12, scope: !3678)
!3744 = !DILocation(line: 1425, column: 22, scope: !3678)
!3745 = !DILocation(line: 0, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3747, file: !1, line: 1461, column: 5)
!3747 = distinct !DILexicalBlock(scope: !3678, file: !1, line: 1461, column: 5)
!3748 = !DILocation(line: 1461, column: 37, scope: !3746)
!3749 = !DILocation(line: 1461, column: 31, scope: !3746)
!3750 = !DILocation(line: 1461, column: 5, scope: !3747)
!3751 = !DILocation(line: 1461, column: 66, scope: !3746)
!3752 = !DILocation(line: 1461, column: 70, scope: !3746)
!3753 = !DILocation(line: 1461, column: 48, scope: !3746)
!3754 = distinct !{!3754, !3750, !3755, !3417}
!3755 = !DILocation(line: 1461, column: 72, scope: !3747)
!3756 = distinct !{!3756, !3419}
!3757 = distinct !{!3757, !3750, !3755, !3417}
!3758 = !DILocation(line: 0, scope: !3678)
!3759 = !DILocation(line: 0, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3737, file: !1, line: 1453, column: 56)
!3761 = !DILocation(line: 1464, column: 1, scope: !3678)
!3762 = distinct !DISubprogram(name: "slotToKeyUpdateKey", scope: !1, file: !1, line: 1470, type: !3763, isLocal: false, isDefinition: true, scopeLine: 1470, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3765)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{null, !65, !8}
!3765 = !{!3766, !3767, !3768, !3769, !3773, !3774}
!3766 = !DILocalVariable(name: "key", arg: 1, scope: !3762, file: !1, line: 1470, type: !65)
!3767 = !DILocalVariable(name: "add", arg: 2, scope: !3762, file: !1, line: 1470, type: !8)
!3768 = !DILocalVariable(name: "hashslot", scope: !3762, file: !1, line: 1471, type: !45)
!3769 = !DILocalVariable(name: "buf", scope: !3762, file: !1, line: 1472, type: !3770)
!3770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, elements: !3771)
!3771 = !{!3772}
!3772 = !DISubrange(count: 64)
!3773 = !DILocalVariable(name: "indexed", scope: !3762, file: !1, line: 1473, type: !1884)
!3774 = !DILocalVariable(name: "keylen", scope: !3762, file: !1, line: 1474, type: !434)
!3775 = !DILocation(line: 1470, column: 31, scope: !3762)
!3776 = !DILocation(line: 1470, column: 40, scope: !3762)
!3777 = !DILocation(line: 1471, column: 46, scope: !3762)
!3778 = !DILocation(line: 87, column: 39, scope: !806, inlinedAt: !3779)
!3779 = distinct !DILocation(line: 1471, column: 50, scope: !3762)
!3780 = !DILocation(line: 88, column: 27, scope: !806, inlinedAt: !3779)
!3781 = !DILocation(line: 88, column: 19, scope: !806, inlinedAt: !3779)
!3782 = !DILocation(line: 89, column: 5, scope: !806, inlinedAt: !3779)
!3783 = !DILocation(line: 91, column: 20, scope: !820, inlinedAt: !3779)
!3784 = !DILocation(line: 91, column: 13, scope: !820, inlinedAt: !3779)
!3785 = !DILocation(line: 93, column: 20, scope: !820, inlinedAt: !3779)
!3786 = !DILocation(line: 93, column: 34, scope: !820, inlinedAt: !3779)
!3787 = !DILocation(line: 93, column: 13, scope: !820, inlinedAt: !3779)
!3788 = !DILocation(line: 95, column: 20, scope: !820, inlinedAt: !3779)
!3789 = !DILocation(line: 95, column: 35, scope: !820, inlinedAt: !3779)
!3790 = !DILocation(line: 95, column: 13, scope: !820, inlinedAt: !3779)
!3791 = !DILocation(line: 97, column: 20, scope: !820, inlinedAt: !3779)
!3792 = !DILocation(line: 97, column: 35, scope: !820, inlinedAt: !3779)
!3793 = !DILocation(line: 97, column: 13, scope: !820, inlinedAt: !3779)
!3794 = !DILocation(line: 99, column: 20, scope: !820, inlinedAt: !3779)
!3795 = !DILocation(line: 99, column: 35, scope: !820, inlinedAt: !3779)
!3796 = !DILocation(line: 99, column: 13, scope: !820, inlinedAt: !3779)
!3797 = !DILocation(line: 0, scope: !820, inlinedAt: !3779)
!3798 = !DILocation(line: 1471, column: 50, scope: !3762)
!3799 = !DILocation(line: 1471, column: 29, scope: !3762)
!3800 = !DILocation(line: 1471, column: 18, scope: !3762)
!3801 = !DILocation(line: 1472, column: 5, scope: !3762)
!3802 = !DILocation(line: 1472, column: 19, scope: !3762)
!3803 = !DILocation(line: 1473, column: 20, scope: !3762)
!3804 = !DILocation(line: 1474, column: 33, scope: !3762)
!3805 = !DILocation(line: 87, column: 39, scope: !806, inlinedAt: !3806)
!3806 = distinct !DILocation(line: 1474, column: 21, scope: !3762)
!3807 = !DILocation(line: 88, column: 27, scope: !806, inlinedAt: !3806)
!3808 = !DILocation(line: 88, column: 19, scope: !806, inlinedAt: !3806)
!3809 = !DILocation(line: 89, column: 5, scope: !806, inlinedAt: !3806)
!3810 = !DILocation(line: 91, column: 20, scope: !820, inlinedAt: !3806)
!3811 = !DILocation(line: 91, column: 13, scope: !820, inlinedAt: !3806)
!3812 = !DILocation(line: 93, column: 20, scope: !820, inlinedAt: !3806)
!3813 = !DILocation(line: 93, column: 34, scope: !820, inlinedAt: !3806)
!3814 = !DILocation(line: 93, column: 13, scope: !820, inlinedAt: !3806)
!3815 = !DILocation(line: 95, column: 20, scope: !820, inlinedAt: !3806)
!3816 = !DILocation(line: 95, column: 35, scope: !820, inlinedAt: !3806)
!3817 = !DILocation(line: 95, column: 13, scope: !820, inlinedAt: !3806)
!3818 = !DILocation(line: 97, column: 20, scope: !820, inlinedAt: !3806)
!3819 = !DILocation(line: 97, column: 35, scope: !820, inlinedAt: !3806)
!3820 = !DILocation(line: 97, column: 13, scope: !820, inlinedAt: !3806)
!3821 = !DILocation(line: 99, column: 20, scope: !820, inlinedAt: !3806)
!3822 = !DILocation(line: 99, column: 35, scope: !820, inlinedAt: !3806)
!3823 = !DILocation(line: 99, column: 13, scope: !820, inlinedAt: !3806)
!3824 = !DILocation(line: 0, scope: !820, inlinedAt: !3806)
!3825 = !DILocation(line: 1474, column: 12, scope: !3762)
!3826 = !DILocation(line: 1476, column: 51, scope: !3762)
!3827 = !DILocation(line: 1476, column: 12, scope: !3762)
!3828 = !DILocation(line: 1476, column: 5, scope: !3762)
!3829 = !DILocation(line: 1476, column: 48, scope: !3762)
!3830 = !DILocation(line: 1477, column: 15, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3762, file: !1, line: 1477, column: 9)
!3832 = !DILocation(line: 1477, column: 18, scope: !3831)
!3833 = !DILocation(line: 1477, column: 9, scope: !3762)
!3834 = !DILocation(line: 1477, column: 34, scope: !3831)
!3835 = !DILocation(line: 1477, column: 24, scope: !3831)
!3836 = !DILocation(line: 0, scope: !3762)
!3837 = !DILocation(line: 1478, column: 28, scope: !3762)
!3838 = !DILocation(line: 1478, column: 18, scope: !3762)
!3839 = !DILocation(line: 1478, column: 16, scope: !3762)
!3840 = !DILocation(line: 1479, column: 18, scope: !3762)
!3841 = !DILocation(line: 1479, column: 5, scope: !3762)
!3842 = !DILocation(line: 1479, column: 16, scope: !3762)
!3843 = !DILocation(line: 1480, column: 19, scope: !3762)
!3844 = !DILocation(line: 1480, column: 27, scope: !3762)
!3845 = !DILocation(line: 1480, column: 5, scope: !3762)
!3846 = !DILocation(line: 0, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3848, file: !1, line: 1483, column: 12)
!3848 = distinct !DILexicalBlock(scope: !3762, file: !1, line: 1481, column: 9)
!3849 = !DILocation(line: 1481, column: 9, scope: !3762)
!3850 = !DILocation(line: 1482, column: 9, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3848, file: !1, line: 1481, column: 14)
!3852 = !DILocation(line: 1483, column: 5, scope: !3851)
!3853 = !DILocation(line: 1484, column: 9, scope: !3847)
!3854 = !DILocation(line: 1486, column: 17, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3762, file: !1, line: 1486, column: 9)
!3856 = !DILocation(line: 1486, column: 9, scope: !3762)
!3857 = !DILocation(line: 1486, column: 25, scope: !3855)
!3858 = !DILocation(line: 1487, column: 1, scope: !3762)
!3859 = distinct !DISubprogram(name: "getKeysInSlot", scope: !1, file: !1, line: 1507, type: !3860, isLocal: false, isDefinition: true, scopeLine: 1507, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3862)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!45, !45, !442, !45}
!3862 = !{!3863, !3864, !3865, !3866, !3914, !3915}
!3863 = !DILocalVariable(name: "hashslot", arg: 1, scope: !3859, file: !1, line: 1507, type: !45)
!3864 = !DILocalVariable(name: "keys", arg: 2, scope: !3859, file: !1, line: 1507, type: !442)
!3865 = !DILocalVariable(name: "count", arg: 3, scope: !3859, file: !1, line: 1507, type: !45)
!3866 = !DILocalVariable(name: "iter", scope: !3859, file: !1, line: 1508, type: !3867)
!3867 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxIterator", file: !3868, line: 186, baseType: !3869)
!3868 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rax.h", directory: "/root/.unikraft/apps/redis/build")
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxIterator", file: !3868, line: 175, size: 3840, elements: !3870)
!3870 = !{!3871, !3872, !3890, !3891, !3892, !3893, !3894, !3898, !3899, !3908}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3869, file: !3868, line: 176, baseType: !8, size: 32)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3869, file: !3868, line: 177, baseType: !3873, size: 64, offset: 64)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !3868, line: 137, baseType: !3875)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !3868, line: 133, size: 192, elements: !3876)
!3876 = !{!3877, !3888, !3889}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3875, file: !3868, line: 134, baseType: !3878, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !3868, line: 131, baseType: !3880)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !3868, line: 98, size: 32, elements: !3881)
!3881 = !{!3882, !3883, !3884, !3885, !3886}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !3880, file: !3868, line: 99, baseType: !43, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !3880, file: !3868, line: 100, baseType: !43, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !3880, file: !3868, line: 101, baseType: !43, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3880, file: !3868, line: 102, baseType: !43, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3880, file: !3868, line: 130, baseType: !3887, offset: 32)
!3887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, elements: !27)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !3875, file: !3868, line: 135, baseType: !53, size: 64, offset: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !3875, file: !3868, line: 136, baseType: !53, size: 64, offset: 128)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3869, file: !3868, line: 178, baseType: !1884, size: 64, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3869, file: !3868, line: 179, baseType: !4, size: 64, offset: 192)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !3869, file: !3868, line: 180, baseType: !434, size: 64, offset: 256)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "key_max", scope: !3869, file: !3868, line: 181, baseType: !434, size: 64, offset: 320)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "key_static_string", scope: !3869, file: !3868, line: 182, baseType: !3895, size: 1024, offset: 384)
!3895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1024, elements: !3896)
!3896 = !{!3897}
!3897 = !DISubrange(count: 128)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3869, file: !3868, line: 183, baseType: !3878, size: 64, offset: 1408)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3869, file: !3868, line: 184, baseType: !3900, size: 2304, offset: 1472)
!3900 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxStack", file: !3868, line: 150, baseType: !3901)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxStack", file: !3868, line: 143, size: 2304, elements: !3902)
!3902 = !{!3903, !3904, !3905, !3906, !3907}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3901, file: !3868, line: 144, baseType: !5, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !3901, file: !3868, line: 145, baseType: !434, size: 64, offset: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "maxitems", scope: !3901, file: !3868, line: 145, baseType: !434, size: 64, offset: 128)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "static_items", scope: !3901, file: !3868, line: 148, baseType: !2446, size: 2048, offset: 192)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "oom", scope: !3901, file: !3868, line: 149, baseType: !8, size: 32, offset: 2240)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "node_cb", scope: !3869, file: !3868, line: 185, baseType: !3909, size: 64, offset: 3776)
!3909 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNodeCallback", file: !3868, line: 165, baseType: !3910)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!8, !3913}
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3914 = !DILocalVariable(name: "j", scope: !3859, file: !1, line: 1509, type: !8)
!3915 = !DILocalVariable(name: "indexed", scope: !3859, file: !1, line: 1510, type: !3916)
!3916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 16, elements: !155)
!3917 = !DILocation(line: 1507, column: 41, scope: !3859)
!3918 = !DILocation(line: 1507, column: 58, scope: !3859)
!3919 = !DILocation(line: 1507, column: 77, scope: !3859)
!3920 = !DILocation(line: 1508, column: 5, scope: !3859)
!3921 = !DILocation(line: 1509, column: 9, scope: !3859)
!3922 = !DILocation(line: 1510, column: 5, scope: !3859)
!3923 = !DILocation(line: 1510, column: 19, scope: !3859)
!3924 = !DILocation(line: 1512, column: 28, scope: !3859)
!3925 = !DILocation(line: 1512, column: 18, scope: !3859)
!3926 = !DILocation(line: 1512, column: 16, scope: !3859)
!3927 = !DILocation(line: 1513, column: 18, scope: !3859)
!3928 = !DILocation(line: 1513, column: 5, scope: !3859)
!3929 = !DILocation(line: 1513, column: 16, scope: !3859)
!3930 = !DILocation(line: 1514, column: 27, scope: !3859)
!3931 = !DILocation(line: 1514, column: 36, scope: !3859)
!3932 = !DILocation(line: 1508, column: 17, scope: !3859)
!3933 = !DILocation(line: 1514, column: 5, scope: !3859)
!3934 = !DILocation(line: 1515, column: 5, scope: !3859)
!3935 = !DILocation(line: 1517, column: 18, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3937, file: !1, line: 1517, column: 13)
!3937 = distinct !DILexicalBlock(scope: !3859, file: !1, line: 1516, column: 38)
!3938 = !DILocation(line: 1516, column: 16, scope: !3859)
!3939 = !DILocation(line: 1516, column: 19, scope: !3859)
!3940 = !DILocation(line: 1516, column: 22, scope: !3859)
!3941 = !DILocation(line: 1516, column: 5, scope: !3859)
!3942 = !{!3943, !209, i64 16}
!3943 = !{!"raxIterator", !212, i64 0, !209, i64 8, !209, i64 16, !209, i64 24, !228, i64 32, !228, i64 40, !210, i64 48, !209, i64 176, !3944, i64 184, !209, i64 472}
!3944 = !{!"raxStack", !209, i64 0, !228, i64 8, !228, i64 16, !210, i64 24, !212, i64 280}
!3945 = !DILocation(line: 1517, column: 13, scope: !3936)
!3946 = !DILocation(line: 1517, column: 28, scope: !3936)
!3947 = !DILocation(line: 1517, column: 25, scope: !3936)
!3948 = !DILocation(line: 1517, column: 39, scope: !3936)
!3949 = !DILocation(line: 1517, column: 42, scope: !3936)
!3950 = !DILocation(line: 1517, column: 57, scope: !3936)
!3951 = !DILocation(line: 1517, column: 54, scope: !3936)
!3952 = !DILocation(line: 1517, column: 13, scope: !3937)
!3953 = !DILocation(line: 1518, column: 55, scope: !3937)
!3954 = !DILocation(line: 1518, column: 63, scope: !3937)
!3955 = !{!3943, !228, i64 32}
!3956 = !DILocation(line: 1518, column: 70, scope: !3937)
!3957 = !DILocation(line: 1518, column: 21, scope: !3937)
!3958 = !DILocation(line: 1518, column: 15, scope: !3937)
!3959 = !DILocation(line: 1518, column: 9, scope: !3937)
!3960 = !DILocation(line: 1518, column: 19, scope: !3937)
!3961 = distinct !{!3961, !3941, !3962}
!3962 = !DILocation(line: 1519, column: 5, scope: !3859)
!3963 = !DILocation(line: 1520, column: 5, scope: !3859)
!3964 = !DILocation(line: 0, scope: !3937)
!3965 = !DILocation(line: 1522, column: 1, scope: !3859)
!3966 = !DILocation(line: 1521, column: 5, scope: !3859)
!3967 = distinct !DISubprogram(name: "delKeysInSlot", scope: !1, file: !1, line: 1526, type: !3968, isLocal: false, isDefinition: true, scopeLine: 1526, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3970)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!45, !45}
!3970 = !{!3971, !3972, !3973, !3974, !3975}
!3971 = !DILocalVariable(name: "hashslot", arg: 1, scope: !3967, file: !1, line: 1526, type: !45)
!3972 = !DILocalVariable(name: "iter", scope: !3967, file: !1, line: 1527, type: !3867)
!3973 = !DILocalVariable(name: "j", scope: !3967, file: !1, line: 1528, type: !8)
!3974 = !DILocalVariable(name: "indexed", scope: !3967, file: !1, line: 1529, type: !3916)
!3975 = !DILocalVariable(name: "key", scope: !3976, file: !1, line: 1538, type: !65)
!3976 = distinct !DILexicalBlock(scope: !3967, file: !1, line: 1534, column: 55)
!3977 = !DILocation(line: 1526, column: 41, scope: !3967)
!3978 = !DILocation(line: 1527, column: 5, scope: !3967)
!3979 = !DILocation(line: 1528, column: 9, scope: !3967)
!3980 = !DILocation(line: 1529, column: 5, scope: !3967)
!3981 = !DILocation(line: 1529, column: 19, scope: !3967)
!3982 = !DILocation(line: 1531, column: 28, scope: !3967)
!3983 = !DILocation(line: 1531, column: 18, scope: !3967)
!3984 = !DILocation(line: 1531, column: 16, scope: !3967)
!3985 = !DILocation(line: 1532, column: 18, scope: !3967)
!3986 = !DILocation(line: 1532, column: 5, scope: !3967)
!3987 = !DILocation(line: 1532, column: 16, scope: !3967)
!3988 = !DILocation(line: 1533, column: 27, scope: !3967)
!3989 = !DILocation(line: 1533, column: 36, scope: !3967)
!3990 = !DILocation(line: 1527, column: 17, scope: !3967)
!3991 = !DILocation(line: 1533, column: 5, scope: !3967)
!3992 = !DILocation(line: 1534, column: 18, scope: !3967)
!3993 = !DILocation(line: 1534, column: 11, scope: !3967)
!3994 = !DILocation(line: 1534, column: 5, scope: !3967)
!3995 = !DILocation(line: 1535, column: 9, scope: !3976)
!3996 = !DILocation(line: 1536, column: 9, scope: !3976)
!3997 = !DILocation(line: 1538, column: 52, scope: !3976)
!3998 = !DILocation(line: 1538, column: 55, scope: !3976)
!3999 = !DILocation(line: 1538, column: 63, scope: !3976)
!4000 = !DILocation(line: 1538, column: 70, scope: !3976)
!4001 = !DILocation(line: 1538, column: 21, scope: !3976)
!4002 = !DILocation(line: 1538, column: 15, scope: !3976)
!4003 = !DILocation(line: 1539, column: 26, scope: !3976)
!4004 = !DILocation(line: 285, column: 23, scope: !887, inlinedAt: !4005)
!4005 = distinct !DILocation(line: 1539, column: 9, scope: !3976)
!4006 = !DILocation(line: 285, column: 33, scope: !887, inlinedAt: !4005)
!4007 = !DILocation(line: 286, column: 19, scope: !887, inlinedAt: !4005)
!4008 = !DILocation(line: 286, column: 12, scope: !887, inlinedAt: !4005)
!4009 = !DILocation(line: 286, column: 46, scope: !887, inlinedAt: !4005)
!4010 = !DILocation(line: 271, column: 27, scope: !338, inlinedAt: !4011)
!4011 = distinct !DILocation(line: 287, column: 46, scope: !887, inlinedAt: !4005)
!4012 = !DILocation(line: 271, column: 37, scope: !338, inlinedAt: !4011)
!4013 = !DILocation(line: 274, column: 9, scope: !345, inlinedAt: !4011)
!4014 = !DILocation(line: 274, column: 31, scope: !345, inlinedAt: !4011)
!4015 = !DILocation(line: 0, scope: !345, inlinedAt: !4011)
!4016 = !DILocation(line: 274, column: 9, scope: !338, inlinedAt: !4011)
!4017 = !DILocation(line: 274, column: 64, scope: !345, inlinedAt: !4011)
!4018 = !DILocation(line: 274, column: 36, scope: !345, inlinedAt: !4011)
!4019 = !DILocation(line: 275, column: 24, scope: !355, inlinedAt: !4011)
!4020 = !DILocation(line: 275, column: 34, scope: !355, inlinedAt: !4011)
!4021 = !DILocation(line: 275, column: 9, scope: !355, inlinedAt: !4011)
!4022 = !DILocation(line: 275, column: 39, scope: !355, inlinedAt: !4011)
!4023 = !DILocation(line: 276, column: 20, scope: !361, inlinedAt: !4011)
!4024 = !DILocation(line: 276, column: 13, scope: !361, inlinedAt: !4011)
!4025 = !DILocation(line: 275, column: 9, scope: !338, inlinedAt: !4011)
!4026 = !DILocation(line: 1493, column: 25, scope: !367, inlinedAt: !4027)
!4027 = distinct !DILocation(line: 276, column: 37, scope: !361, inlinedAt: !4011)
!4028 = !DILocation(line: 1494, column: 5, scope: !367, inlinedAt: !4027)
!4029 = !DILocation(line: 276, column: 37, scope: !361, inlinedAt: !4011)
!4030 = !DILocation(line: 1540, column: 9, scope: !3976)
!4031 = !DILocation(line: 1541, column: 10, scope: !3976)
!4032 = distinct !{!4032, !3994, !4033}
!4033 = !DILocation(line: 1542, column: 5, scope: !3967)
!4034 = !DILocation(line: 0, scope: !3976)
!4035 = !DILocation(line: 1543, column: 5, scope: !3967)
!4036 = !DILocation(line: 1545, column: 1, scope: !3967)
!4037 = !DILocation(line: 1544, column: 5, scope: !3967)
!4038 = distinct !DISubprogram(name: "countKeysInSlot", scope: !1, file: !1, line: 1547, type: !3968, isLocal: false, isDefinition: true, scopeLine: 1547, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4039)
!4039 = !{!4040}
!4040 = !DILocalVariable(name: "hashslot", arg: 1, scope: !4038, file: !1, line: 1547, type: !45)
!4041 = !DILocation(line: 1547, column: 43, scope: !4038)
!4042 = !DILocation(line: 1548, column: 19, scope: !4038)
!4043 = !DILocation(line: 1548, column: 12, scope: !4038)
!4044 = !DILocation(line: 1548, column: 5, scope: !4038)
