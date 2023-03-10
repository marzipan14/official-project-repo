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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @updateLFU(%struct.redisObject*) local_unnamed_addr #0 !dbg !62 {
  %2 = tail call i64 @LFUDecrAndReturn(%struct.redisObject* %0) #6, !dbg !79
  %3 = trunc i64 %2 to i8, !dbg !81
  %4 = tail call zeroext i8 @LFULogIncr(i8 zeroext %3) #6, !dbg !82
  %5 = zext i8 %4 to i64, !dbg !82
  %6 = tail call i64 @LFUGetTimeInMinutes() #6, !dbg !83
  %7 = shl i64 %6, 8, !dbg !84
  %8 = or i64 %7, %5, !dbg !85
  %9 = trunc i64 %8 to i32, !dbg !86
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !87
  %11 = load i32, i32* %10, align 8, !dbg !88
  %12 = shl i32 %9, 8, !dbg !88
  %13 = and i32 %11, 255, !dbg !88
  %14 = or i32 %12, %13, !dbg !88
  store i32 %14, i32* %10, align 8, !dbg !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
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
  %8 = tail call %struct.dictEntry* @dictFind(%struct.dict* %5, i8* %7) #6, !dbg !217
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
  %26 = tail call i64 @LFUDecrAndReturn(%struct.redisObject* %13) #6, !dbg !245
  %27 = trunc i64 %26 to i8, !dbg !247
  %28 = tail call zeroext i8 @LFULogIncr(i8 zeroext %27) #6, !dbg !248
  %29 = zext i8 %28 to i64, !dbg !248
  %30 = tail call i64 @LFUGetTimeInMinutes() #6, !dbg !249
  %31 = shl i64 %30, 8, !dbg !250
  %32 = or i64 %31, %29, !dbg !251
  %33 = trunc i64 %32 to i32, !dbg !252
  %34 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %13, i64 0, i32 0, !dbg !253
  %35 = load i32, i32* %34, align 8, !dbg !254
  %36 = shl i32 %33, 8, !dbg !254
  %37 = and i32 %35, 255, !dbg !254
  %38 = or i32 %36, %37, !dbg !254
  store i32 %38, i32* %34, align 8, !dbg !254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !255
  br label %46, !dbg !256

; <label>:39:                                     ; preds = %21
  %40 = tail call i32 @LRU_CLOCK() #6, !dbg !257
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %13, i64 0, i32 0, !dbg !259
  %42 = load i32, i32* %41, align 8, !dbg !260
  %43 = shl i32 %40, 8, !dbg !260
  %44 = and i32 %42, 255, !dbg !260
  %45 = or i32 %44, %43, !dbg !260
  store i32 %45, i32* %41, align 8, !dbg !260
  br label %46

; <label>:46:                                     ; preds = %3, %10, %39, %25
  %47 = phi %struct.redisObject* [ %13, %25 ], [ %13, %39 ], [ %13, %10 ], [ null, %3 ], !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  ret %struct.redisObject* %47, !dbg !263
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @LRU_CLOCK() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @lookupKeyReadWithFlags(%struct.redisDb*, %struct.redisObject*, i32) local_unnamed_addr #0 !dbg !264 {
  %4 = tail call i32 @expireIfNeeded(%struct.redisDb* %0, %struct.redisObject* %1) #8, !dbg !273
  %5 = icmp eq i32 %4, 1, !dbg !275
  br i1 %5, label %6, label %24, !dbg !276

; <label>:6:                                      ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !277, !tbaa !280
  %8 = icmp eq i8* %7, null, !dbg !281
  br i1 %8, label %28, label %9, !dbg !282

; <label>:9:                                      ; preds = %6
  %10 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !283, !tbaa !285
  %11 = icmp eq %struct.client* %10, null, !dbg !286
  %12 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !287
  %13 = icmp eq %struct.client* %10, %12, !dbg !288
  %14 = or i1 %11, %13, !dbg !289
  br i1 %14, label %24, label %15, !dbg !289

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 10, !dbg !290
  %17 = load %struct.redisCommand*, %struct.redisCommand** %16, align 8, !dbg !290, !tbaa !291
  %18 = icmp eq %struct.redisCommand* %17, null, !dbg !295
  br i1 %18, label %24, label %19, !dbg !296

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %17, i64 0, i32 4, !dbg !297
  %21 = load i32, i32* %20, align 8, !dbg !297, !tbaa !298
  %22 = and i32 %21, 2, !dbg !300
  %23 = icmp eq i32 %22, 0, !dbg !300
  br i1 %23, label %24, label %28, !dbg !301

; <label>:24:                                     ; preds = %19, %15, %9, %3
  %25 = tail call %struct.redisObject* @lookupKey(%struct.redisDb* %0, %struct.redisObject* %1, i32 %2) #8, !dbg !302
  %26 = icmp eq %struct.redisObject* %25, null, !dbg !304
  %27 = select i1 %26, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 76), !dbg !306
  br label %28, !dbg !306

; <label>:28:                                     ; preds = %24, %19, %6
  %29 = phi i64* [ getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), %6 ], [ getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), %19 ], [ %27, %24 ]
  %30 = phi %struct.redisObject* [ null, %6 ], [ null, %19 ], [ %25, %24 ], !dbg !307
  %31 = load i64, i64* %29, align 8, !dbg !308, !tbaa !310
  %32 = add nsw i64 %31, 1, !dbg !308
  store i64 %32, i64* %29, align 8, !dbg !308, !tbaa !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  ret %struct.redisObject* %30, !dbg !311
}

; Function Attrs: noredzone nounwind
define dso_local i32 @expireIfNeeded(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #0 !dbg !312 {
  %3 = tail call i32 @keyIsExpired(%struct.redisDb* %0, %struct.redisObject* %1) #8, !dbg !320
  %4 = icmp eq i32 %3, 0, !dbg !320
  br i1 %4, label %43, label %5, !dbg !322

; <label>:5:                                      ; preds = %2
  %6 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !323, !tbaa !280
  %7 = icmp eq i8* %6, null, !dbg !325
  br i1 %7, label %8, label %43, !dbg !326

; <label>:8:                                      ; preds = %5
  %9 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 72), align 8, !dbg !327, !tbaa !328
  %10 = add nsw i64 %9, 1, !dbg !327
  store i64 %10, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 72), align 8, !dbg !327, !tbaa !328
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 286), align 4, !dbg !329, !tbaa !330
  tail call void @propagateExpire(%struct.redisDb* %0, %struct.redisObject* %1, i32 %11) #8, !dbg !331
  %12 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 5, !dbg !332
  %13 = load i32, i32* %12, align 8, !dbg !332, !tbaa !333
  tail call void @notifyKeyspaceEvent(i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), %struct.redisObject* %1, i32 %13) #6, !dbg !334
  %14 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 286), align 4, !dbg !335, !tbaa !330
  %15 = icmp eq i32 %14, 0, !dbg !336
  br i1 %15, label %18, label %16, !dbg !336

; <label>:16:                                     ; preds = %8
  %17 = tail call i32 @dbAsyncDelete(%struct.redisDb* nonnull %0, %struct.redisObject* %1) #6, !dbg !337
  br label %43, !dbg !336

; <label>:18:                                     ; preds = %8
  %19 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !345
  %20 = load %struct.dict*, %struct.dict** %19, align 8, !dbg !345, !tbaa !347
  %21 = getelementptr inbounds %struct.dict, %struct.dict* %20, i64 0, i32 2, i64 0, i32 3, !dbg !345
  %22 = load i64, i64* %21, align 8, !dbg !345, !tbaa !348
  %23 = getelementptr inbounds %struct.dict, %struct.dict* %20, i64 0, i32 2, i64 1, i32 3, !dbg !345
  %24 = load i64, i64* %23, align 8, !dbg !345, !tbaa !348
  %25 = sub i64 0, %24, !dbg !350
  %26 = icmp eq i64 %22, %25, !dbg !350
  %27 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !351
  br i1 %26, label %31, label %28, !dbg !352

; <label>:28:                                     ; preds = %18
  %29 = load i8*, i8** %27, align 8, !dbg !353, !tbaa !215
  %30 = tail call i32 @dictDelete(%struct.dict* %20, i8* %29) #6, !dbg !354
  br label %31, !dbg !354

; <label>:31:                                     ; preds = %28, %18
  %32 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !355
  %33 = load %struct.dict*, %struct.dict** %32, align 8, !dbg !355, !tbaa !207
  %34 = load i8*, i8** %27, align 8, !dbg !357, !tbaa !215
  %35 = tail call i32 @dictDelete(%struct.dict* %33, i8* %34) #6, !dbg !358
  %36 = icmp eq i32 %35, 0, !dbg !359
  br i1 %36, label %37, label %41, !dbg !360

; <label>:37:                                     ; preds = %31
  %38 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !361, !tbaa !364
  %39 = icmp eq i32 %38, 0, !dbg !365
  br i1 %39, label %41, label %40, !dbg !366

; <label>:40:                                     ; preds = %37
  tail call void @slotToKeyUpdateKey(%struct.redisObject* nonnull %1, i32 0) #6, !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  br label %41, !dbg !374

; <label>:41:                                     ; preds = %31, %37, %40
  %42 = phi i32 [ 1, %37 ], [ 1, %40 ], [ 0, %31 ], !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !377
  br label %43, !dbg !336

; <label>:43:                                     ; preds = %16, %41, %5, %2
  %44 = phi i32 [ 0, %2 ], [ 1, %5 ], [ %17, %16 ], [ %42, %41 ], !dbg !378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  ret i32 %44, !dbg !379
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @lookupKeyRead(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #0 !dbg !380 {
  %3 = tail call i32 @expireIfNeeded(%struct.redisDb* %0, %struct.redisObject* %1) #6, !dbg !392
  %4 = icmp eq i32 %3, 1, !dbg !393
  br i1 %4, label %5, label %23, !dbg !394

; <label>:5:                                      ; preds = %2
  %6 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !395, !tbaa !280
  %7 = icmp eq i8* %6, null, !dbg !396
  br i1 %7, label %27, label %8, !dbg !397

; <label>:8:                                      ; preds = %5
  %9 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !398, !tbaa !285
  %10 = icmp eq %struct.client* %9, null, !dbg !399
  %11 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !400
  %12 = icmp eq %struct.client* %9, %11, !dbg !401
  %13 = or i1 %10, %12, !dbg !402
  br i1 %13, label %23, label %14, !dbg !402

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds %struct.client, %struct.client* %9, i64 0, i32 10, !dbg !403
  %16 = load %struct.redisCommand*, %struct.redisCommand** %15, align 8, !dbg !403, !tbaa !291
  %17 = icmp eq %struct.redisCommand* %16, null, !dbg !404
  br i1 %17, label %23, label %18, !dbg !405

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %16, i64 0, i32 4, !dbg !406
  %20 = load i32, i32* %19, align 8, !dbg !406, !tbaa !298
  %21 = and i32 %20, 2, !dbg !407
  %22 = icmp eq i32 %21, 0, !dbg !407
  br i1 %22, label %23, label %27, !dbg !408

; <label>:23:                                     ; preds = %18, %14, %8, %2
  %24 = tail call %struct.redisObject* @lookupKey(%struct.redisDb* %0, %struct.redisObject* %1, i32 0) #6, !dbg !409
  %25 = icmp eq %struct.redisObject* %24, null, !dbg !411
  %26 = select i1 %25, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 76), !dbg !412
  br label %27, !dbg !412

; <label>:27:                                     ; preds = %23, %18, %5
  %28 = phi i64* [ getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), %5 ], [ getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), %18 ], [ %26, %23 ]
  %29 = phi %struct.redisObject* [ null, %5 ], [ null, %18 ], [ %24, %23 ], !dbg !413
  %30 = load i64, i64* %28, align 8, !dbg !414, !tbaa !310
  %31 = add nsw i64 %30, 1, !dbg !414
  store i64 %31, i64* %28, align 8, !dbg !414, !tbaa !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  ret %struct.redisObject* %29, !dbg !416
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @lookupKeyWrite(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #0 !dbg !417 {
  %3 = tail call i32 @expireIfNeeded(%struct.redisDb* %0, %struct.redisObject* %1) #8, !dbg !423
  %4 = tail call %struct.redisObject* @lookupKey(%struct.redisDb* %0, %struct.redisObject* %1, i32 0) #8, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  ret %struct.redisObject* %4, !dbg !425
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @lookupKeyReadOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #0 !dbg !426 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !566
  %5 = load %struct.redisDb*, %struct.redisDb** %4, align 8, !dbg !566, !tbaa !567
  %6 = tail call i32 @expireIfNeeded(%struct.redisDb* %5, %struct.redisObject* %1) #6, !dbg !575
  %7 = icmp eq i32 %6, 1, !dbg !576
  br i1 %7, label %8, label %26, !dbg !577

; <label>:8:                                      ; preds = %3
  %9 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !578, !tbaa !280
  %10 = icmp eq i8* %9, null, !dbg !579
  br i1 %10, label %32, label %11, !dbg !580

; <label>:11:                                     ; preds = %8
  %12 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !581, !tbaa !285
  %13 = icmp eq %struct.client* %12, null, !dbg !582
  %14 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !583
  %15 = icmp eq %struct.client* %12, %14, !dbg !584
  %16 = or i1 %13, %15, !dbg !585
  br i1 %16, label %26, label %17, !dbg !585

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %struct.client, %struct.client* %12, i64 0, i32 10, !dbg !586
  %19 = load %struct.redisCommand*, %struct.redisCommand** %18, align 8, !dbg !586, !tbaa !291
  %20 = icmp eq %struct.redisCommand* %19, null, !dbg !587
  br i1 %20, label %26, label %21, !dbg !588

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %19, i64 0, i32 4, !dbg !589
  %23 = load i32, i32* %22, align 8, !dbg !589, !tbaa !298
  %24 = and i32 %23, 2, !dbg !590
  %25 = icmp eq i32 %24, 0, !dbg !590
  br i1 %25, label %26, label %32, !dbg !591

; <label>:26:                                     ; preds = %21, %17, %11, %3
  %27 = tail call %struct.redisObject* @lookupKey(%struct.redisDb* %5, %struct.redisObject* %1, i32 0) #6, !dbg !592
  %28 = icmp eq %struct.redisObject* %27, null, !dbg !594
  br i1 %28, label %32, label %29, !dbg !595

; <label>:29:                                     ; preds = %26
  %30 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 76), align 8, !dbg !596, !tbaa !597
  %31 = add nsw i64 %30, 1, !dbg !596
  store i64 %31, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 76), align 8, !dbg !596, !tbaa !597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !599
  br label %35

; <label>:32:                                     ; preds = %26, %21, %8
  %33 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), align 8, !dbg !601, !tbaa !602
  %34 = add nsw i64 %33, 1, !dbg !601
  store i64 %34, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), align 8, !dbg !601, !tbaa !602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !599
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %2) #6, !dbg !603
  br label %35, !dbg !603

; <label>:35:                                     ; preds = %29, %32
  %36 = phi %struct.redisObject* [ %27, %29 ], [ null, %32 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !605
  ret %struct.redisObject* %36, !dbg !605
}

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @lookupKeyWriteOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #0 !dbg !606 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !615
  %5 = load %struct.redisDb*, %struct.redisDb** %4, align 8, !dbg !615, !tbaa !567
  %6 = tail call i32 @expireIfNeeded(%struct.redisDb* %5, %struct.redisObject* %1) #6, !dbg !619
  %7 = tail call %struct.redisObject* @lookupKey(%struct.redisDb* %5, %struct.redisObject* %1, i32 0) #6, !dbg !620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !623
  br i1 %8, label %9, label %10, !dbg !625

; <label>:9:                                      ; preds = %3
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %2) #6, !dbg !626
  br label %10, !dbg !626

; <label>:10:                                     ; preds = %3, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  ret %struct.redisObject* %7, !dbg !627
}

; Function Attrs: noredzone nounwind
define dso_local void @dbAdd(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #0 !dbg !628 {
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !640
  %5 = load i8*, i8** %4, align 8, !dbg !640, !tbaa !215
  %6 = tail call i8* @sdsdup(i8* %5) #6, !dbg !641
  %7 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !643
  %8 = load %struct.dict*, %struct.dict** %7, align 8, !dbg !643, !tbaa !207
  %9 = bitcast %struct.redisObject* %2 to i8*, !dbg !644
  %10 = tail call i32 @dictAdd(%struct.dict* %8, i8* %6, i8* %9) #6, !dbg !645
  %11 = icmp eq i32 %10, 0, !dbg !647
  br i1 %11, label %13, label %12, !dbg !647

; <label>:12:                                     ; preds = %3
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 177) #6, !dbg !647
  tail call void @_exit(i32 1) #9, !dbg !647
  unreachable, !dbg !647

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 0, !dbg !648
  %15 = load i32, i32* %14, align 8, !dbg !648
  %16 = trunc i32 %15 to i4, !dbg !650
  switch i4 %16, label %18 [
    i4 1, label %17
    i4 3, label %17
  ], !dbg !650

; <label>:17:                                     ; preds = %13, %13
  tail call void @signalKeyAsReady(%struct.redisDb* nonnull %0, %struct.redisObject* nonnull %1) #6, !dbg !651
  br label %18, !dbg !651

; <label>:18:                                     ; preds = %13, %17
  %19 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !652, !tbaa !364
  %20 = icmp eq i32 %19, 0, !dbg !654
  br i1 %20, label %22, label %21, !dbg !655

; <label>:21:                                     ; preds = %18
  tail call void @slotToKeyUpdateKey(%struct.redisObject* nonnull %1, i32 1) #6, !dbg !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !662
  br label %22, !dbg !663

; <label>:22:                                     ; preds = %18, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !664
  ret void, !dbg !664
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
define dso_local void @slotToKeyAdd(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !657 {
  tail call void @slotToKeyUpdateKey(%struct.redisObject* %0, i32 1) #8, !dbg !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  ret void, !dbg !667
}

; Function Attrs: noredzone nounwind
define dso_local void @dbOverwrite(%struct.redisDb* nocapture readonly, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #0 !dbg !668 {
  %4 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !679
  %5 = load %struct.dict*, %struct.dict** %4, align 8, !dbg !679, !tbaa !207
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !680
  %7 = load i8*, i8** %6, align 8, !dbg !680, !tbaa !215
  %8 = tail call %struct.dictEntry* @dictFind(%struct.dict* %5, i8* %7) #6, !dbg !681
  %9 = icmp eq %struct.dictEntry* %8, null, !dbg !683
  br i1 %9, label %10, label %11, !dbg !683

; <label>:10:                                     ; preds = %3
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 192) #6, !dbg !683
  tail call void @_exit(i32 1) #9, !dbg !683
  unreachable, !dbg !683

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %8, i64 0, i32 1, i32 0, !dbg !685
  %13 = load i8*, i8** %12, align 8, !dbg !685
  %14 = bitcast i8* %13 to %struct.redisObject*, !dbg !686
  %15 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !688, !tbaa !239
  %16 = and i32 %15, 2, !dbg !690
  %17 = icmp eq i32 %16, 0, !dbg !690
  br i1 %17, label %26, label %18, !dbg !691

; <label>:18:                                     ; preds = %11
  %19 = bitcast i8* %13 to i32*, !dbg !692
  %20 = load i32, i32* %19, align 8, !dbg !692
  %21 = and i32 %20, -256, !dbg !694
  %22 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 0, !dbg !695
  %23 = load i32, i32* %22, align 8, !dbg !694
  %24 = and i32 %23, 255, !dbg !694
  %25 = or i32 %24, %21, !dbg !694
  store i32 %25, i32* %22, align 8, !dbg !694
  br label %26, !dbg !696

; <label>:26:                                     ; preds = %11, %18
  %27 = load %struct.dict*, %struct.dict** %4, align 8, !dbg !697, !tbaa !207
  %28 = getelementptr inbounds %struct.dict, %struct.dict* %27, i64 0, i32 0, !dbg !697
  %29 = load %struct.dictType*, %struct.dictType** %28, align 8, !dbg !697, !tbaa !700
  %30 = getelementptr inbounds %struct.dictType, %struct.dictType* %29, i64 0, i32 2, !dbg !697
  %31 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %30, align 8, !dbg !697, !tbaa !702
  %32 = icmp eq i8* (i8*, i8*)* %31, null, !dbg !697
  br i1 %32, label %38, label %33, !dbg !704

; <label>:33:                                     ; preds = %26
  %34 = getelementptr inbounds %struct.dict, %struct.dict* %27, i64 0, i32 1, !dbg !697
  %35 = load i8*, i8** %34, align 8, !dbg !697, !tbaa !705
  %36 = bitcast %struct.redisObject* %2 to i8*, !dbg !697
  %37 = tail call i8* %31(i8* %35, i8* %36) #6, !dbg !697
  store i8* %37, i8** %12, align 8, !dbg !697, !tbaa !222
  br label %40, !dbg !697

; <label>:38:                                     ; preds = %26
  %39 = bitcast i8** %12 to %struct.redisObject**, !dbg !697
  store %struct.redisObject* %2, %struct.redisObject** %39, align 8, !dbg !697, !tbaa !222
  br label %40

; <label>:40:                                     ; preds = %38, %33
  %41 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 287), align 8, !dbg !706, !tbaa !708
  %42 = icmp eq i32 %41, 0, !dbg !709
  br i1 %42, label %54, label %43, !dbg !710

; <label>:43:                                     ; preds = %40
  tail call void @freeObjAsync(%struct.redisObject* %14) #6, !dbg !711
  %44 = load %struct.dict*, %struct.dict** %4, align 8, !dbg !713, !tbaa !207
  %45 = getelementptr inbounds %struct.dict, %struct.dict* %44, i64 0, i32 0, !dbg !713
  %46 = load %struct.dictType*, %struct.dictType** %45, align 8, !dbg !713, !tbaa !700
  %47 = getelementptr inbounds %struct.dictType, %struct.dictType* %46, i64 0, i32 2, !dbg !713
  %48 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %47, align 8, !dbg !713, !tbaa !702
  %49 = icmp eq i8* (i8*, i8*)* %48, null, !dbg !713
  br i1 %49, label %54, label %50, !dbg !716

; <label>:50:                                     ; preds = %43
  %51 = getelementptr inbounds %struct.dict, %struct.dict* %44, i64 0, i32 1, !dbg !713
  %52 = load i8*, i8** %51, align 8, !dbg !713, !tbaa !705
  %53 = tail call i8* %48(i8* %52, i8* null) #6, !dbg !713
  br label %54, !dbg !713

; <label>:54:                                     ; preds = %43, %40, %50
  %55 = phi i8* [ %53, %50 ], [ %13, %40 ], [ null, %43 ], !dbg !717
  %56 = load %struct.dict*, %struct.dict** %4, align 8, !dbg !718, !tbaa !207
  %57 = getelementptr inbounds %struct.dict, %struct.dict* %56, i64 0, i32 0, !dbg !718
  %58 = load %struct.dictType*, %struct.dictType** %57, align 8, !dbg !718, !tbaa !700
  %59 = getelementptr inbounds %struct.dictType, %struct.dictType* %58, i64 0, i32 5, !dbg !718
  %60 = load void (i8*, i8*)*, void (i8*, i8*)** %59, align 8, !dbg !718, !tbaa !720
  %61 = icmp eq void (i8*, i8*)* %60, null, !dbg !718
  br i1 %61, label %65, label %62, !dbg !721

; <label>:62:                                     ; preds = %54
  %63 = getelementptr inbounds %struct.dict, %struct.dict* %56, i64 0, i32 1, !dbg !718
  %64 = load i8*, i8** %63, align 8, !dbg !718, !tbaa !705
  tail call void %60(i8* %64, i8* %55) #6, !dbg !718
  br label %65, !dbg !718

; <label>:65:                                     ; preds = %54, %62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  ret void, !dbg !722
}

; Function Attrs: noredzone
declare dso_local void @freeObjAsync(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @setKey(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #0 !dbg !723 {
  %4 = tail call i32 @expireIfNeeded(%struct.redisDb* %0, %struct.redisObject* %1) #6, !dbg !735
  %5 = tail call %struct.redisObject* @lookupKey(%struct.redisDb* %0, %struct.redisObject* %1, i32 0) #6, !dbg !736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !737
  %6 = icmp eq %struct.redisObject* %5, null, !dbg !738
  br i1 %6, label %7, label %8, !dbg !739

; <label>:7:                                      ; preds = %3
  tail call void @dbAdd(%struct.redisDb* %0, %struct.redisObject* %1, %struct.redisObject* %2) #8, !dbg !740
  br label %9, !dbg !742

; <label>:8:                                      ; preds = %3
  tail call void @dbOverwrite(%struct.redisDb* %0, %struct.redisObject* %1, %struct.redisObject* %2) #8, !dbg !743
  br label %9

; <label>:9:                                      ; preds = %8, %7
  tail call void @incrRefCount(%struct.redisObject* %2) #6, !dbg !745
  %10 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !753
  %11 = load %struct.dict*, %struct.dict** %10, align 8, !dbg !753, !tbaa !207
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !753
  %13 = load i8*, i8** %12, align 8, !dbg !753, !tbaa !215
  %14 = tail call %struct.dictEntry* @dictFind(%struct.dict* %11, i8* %13) #6, !dbg !753
  %15 = icmp eq %struct.dictEntry* %14, null, !dbg !753
  br i1 %15, label %16, label %17, !dbg !753

; <label>:16:                                     ; preds = %9
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 1068) #6, !dbg !753
  tail call void @_exit(i32 1) #9, !dbg !753
  unreachable, !dbg !753

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !754
  %19 = load %struct.dict*, %struct.dict** %18, align 8, !dbg !754, !tbaa !347
  %20 = load i8*, i8** %12, align 8, !dbg !755, !tbaa !215
  %21 = tail call i32 @dictDelete(%struct.dict* %19, i8* %20) #6, !dbg !756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !757
  tail call void @touchWatchedKey(%struct.redisDb* nonnull %0, %struct.redisObject* nonnull %1) #6, !dbg !767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  ret void, !dbg !769
}

; Function Attrs: noredzone
declare dso_local void @incrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @removeExpire(%struct.redisDb* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !747 {
  %3 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !772
  %4 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !772, !tbaa !207
  %5 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !772
  %6 = load i8*, i8** %5, align 8, !dbg !772, !tbaa !215
  %7 = tail call %struct.dictEntry* @dictFind(%struct.dict* %4, i8* %6) #6, !dbg !772
  %8 = icmp eq %struct.dictEntry* %7, null, !dbg !772
  br i1 %8, label %9, label %10, !dbg !772

; <label>:9:                                      ; preds = %2
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 1068) #6, !dbg !772
  tail call void @_exit(i32 1) #9, !dbg !772
  unreachable, !dbg !772

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !773
  %12 = load %struct.dict*, %struct.dict** %11, align 8, !dbg !773, !tbaa !347
  %13 = load i8*, i8** %5, align 8, !dbg !774, !tbaa !215
  %14 = tail call i32 @dictDelete(%struct.dict* %12, i8* %13) #6, !dbg !775
  %15 = icmp eq i32 %14, 0, !dbg !776
  %16 = zext i1 %15 to i32, !dbg !776
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !777
  ret i32 %16, !dbg !777
}

; Function Attrs: noredzone nounwind
define dso_local void @signalModifiedKey(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #0 !dbg !759 {
  tail call void @touchWatchedKey(%struct.redisDb* %0, %struct.redisObject* %1) #6, !dbg !780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !781
  ret void, !dbg !781
}

; Function Attrs: noredzone nounwind
define dso_local i32 @dbExists(%struct.redisDb* nocapture readonly, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !782 {
  %3 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !788
  %4 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !788, !tbaa !207
  %5 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !789
  %6 = load i8*, i8** %5, align 8, !dbg !789, !tbaa !215
  %7 = tail call %struct.dictEntry* @dictFind(%struct.dict* %4, i8* %6) #6, !dbg !790
  %8 = icmp ne %struct.dictEntry* %7, null, !dbg !791
  %9 = zext i1 %8 to i32, !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !792
  ret i32 %9, !dbg !792
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @dbRandomKey(%struct.redisDb*) local_unnamed_addr #0 !dbg !793 {
  %2 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !806
  %3 = load %struct.dict*, %struct.dict** %2, align 8, !dbg !806, !tbaa !207
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %3, i64 0, i32 2, i64 0, i32 3, !dbg !806
  %5 = load i64, i64* %4, align 8, !dbg !806, !tbaa !348
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %3, i64 0, i32 2, i64 1, i32 3, !dbg !806
  %7 = load i64, i64* %6, align 8, !dbg !806, !tbaa !348
  %8 = add i64 %7, %5, !dbg !806
  %9 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !807
  %10 = load %struct.dict*, %struct.dict** %9, align 8, !dbg !807, !tbaa !347
  %11 = getelementptr inbounds %struct.dict, %struct.dict* %10, i64 0, i32 2, i64 0, i32 3, !dbg !807
  %12 = load i64, i64* %11, align 8, !dbg !807, !tbaa !348
  %13 = getelementptr inbounds %struct.dict, %struct.dict* %10, i64 0, i32 2, i64 1, i32 3, !dbg !807
  %14 = load i64, i64* %13, align 8, !dbg !807, !tbaa !348
  %15 = add i64 %14, %12, !dbg !807
  %16 = icmp eq i64 %8, %15, !dbg !808
  %17 = tail call %struct.dictEntry* @dictGetRandomKey(%struct.dict* %3) #6, !dbg !809
  %18 = icmp eq %struct.dictEntry* %17, null, !dbg !811
  br i1 %18, label %69, label %19, !dbg !813

; <label>:19:                                     ; preds = %1, %65
  %20 = phi %struct.dictEntry* [ %67, %65 ], [ %17, %1 ]
  %21 = phi i32 [ %62, %65 ], [ 100, %1 ]
  %22 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %20, i64 0, i32 0, !dbg !814
  %23 = load i8*, i8** %22, align 8, !dbg !814, !tbaa !815
  %24 = getelementptr inbounds i8, i8* %23, i64 -1, !dbg !829
  %25 = load i8, i8* %24, align 1, !dbg !829, !tbaa !222
  %26 = trunc i8 %25 to i3, !dbg !831
  switch i3 %26, label %48 [
    i3 0, label %27
    i3 1, label %30
    i3 2, label %34
    i3 3, label %39
    i3 -4, label %44
  ], !dbg !831

; <label>:27:                                     ; preds = %19
  %28 = lshr i8 %25, 3, !dbg !832
  %29 = zext i8 %28 to i64, !dbg !832
  br label %48, !dbg !834

; <label>:30:                                     ; preds = %19
  %31 = getelementptr inbounds i8, i8* %23, i64 -3, !dbg !835
  %32 = load i8, i8* %31, align 1, !dbg !836, !tbaa !222
  %33 = zext i8 %32 to i64, !dbg !835
  br label %48, !dbg !837

; <label>:34:                                     ; preds = %19
  %35 = getelementptr inbounds i8, i8* %23, i64 -5, !dbg !838
  %36 = bitcast i8* %35 to i16*, !dbg !839
  %37 = load i16, i16* %36, align 1, !dbg !839, !tbaa !840
  %38 = zext i16 %37 to i64, !dbg !838
  br label %48, !dbg !842

; <label>:39:                                     ; preds = %19
  %40 = getelementptr inbounds i8, i8* %23, i64 -9, !dbg !843
  %41 = bitcast i8* %40 to i32*, !dbg !844
  %42 = load i32, i32* %41, align 1, !dbg !844, !tbaa !845
  %43 = zext i32 %42 to i64, !dbg !843
  br label %48, !dbg !846

; <label>:44:                                     ; preds = %19
  %45 = getelementptr inbounds i8, i8* %23, i64 -17, !dbg !847
  %46 = bitcast i8* %45 to i64*, !dbg !848
  %47 = load i64, i64* %46, align 1, !dbg !848, !tbaa !849
  br label %48, !dbg !850

; <label>:48:                                     ; preds = %19, %27, %30, %34, %39, %44
  %49 = phi i64 [ %47, %44 ], [ %43, %39 ], [ %38, %34 ], [ %33, %30 ], [ %29, %27 ], [ 0, %19 ], !dbg !851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !852
  %50 = tail call %struct.redisObject* @createStringObject(i8* %23, i64 %49) #6, !dbg !853
  %51 = load %struct.dict*, %struct.dict** %9, align 8, !dbg !855, !tbaa !347
  %52 = tail call %struct.dictEntry* @dictFind(%struct.dict* %51, i8* %23) #6, !dbg !857
  %53 = icmp eq %struct.dictEntry* %52, null, !dbg !857
  br i1 %53, label %69, label %54, !dbg !858

; <label>:54:                                     ; preds = %48
  %55 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !859
  %56 = icmp ne i8* %55, null, !dbg !862
  %57 = and i1 %16, %56, !dbg !863
  br i1 %57, label %58, label %61, !dbg !863

; <label>:58:                                     ; preds = %54
  %59 = add nsw i32 %21, -1, !dbg !864
  %60 = icmp eq i32 %59, 0, !dbg !865
  br i1 %60, label %69, label %61, !dbg !866

; <label>:61:                                     ; preds = %58, %54
  %62 = phi i32 [ %59, %58 ], [ %21, %54 ], !dbg !867
  %63 = tail call i32 @expireIfNeeded(%struct.redisDb* nonnull %0, %struct.redisObject* %50) #8, !dbg !868
  %64 = icmp eq i32 %63, 0, !dbg !868
  br i1 %64, label %69, label %65, !dbg !870

; <label>:65:                                     ; preds = %61
  tail call void @decrRefCount(%struct.redisObject* %50) #6, !dbg !871
  %66 = load %struct.dict*, %struct.dict** %2, align 8, !dbg !873, !tbaa !207
  %67 = tail call %struct.dictEntry* @dictGetRandomKey(%struct.dict* %66) #6, !dbg !809
  %68 = icmp eq %struct.dictEntry* %67, null, !dbg !811
  br i1 %68, label %69, label %19, !dbg !813

; <label>:69:                                     ; preds = %48, %61, %58, %65, %1
  %70 = phi %struct.redisObject* [ null, %1 ], [ null, %65 ], [ %50, %58 ], [ %50, %61 ], [ %50, %48 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  ret %struct.redisObject* %70, !dbg !874
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictGetRandomKey(%struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @dbSyncDelete(%struct.redisDb* nocapture readonly, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !339 {
  %3 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !877
  %4 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !877, !tbaa !347
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %4, i64 0, i32 2, i64 0, i32 3, !dbg !877
  %6 = load i64, i64* %5, align 8, !dbg !877, !tbaa !348
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %4, i64 0, i32 2, i64 1, i32 3, !dbg !877
  %8 = load i64, i64* %7, align 8, !dbg !877, !tbaa !348
  %9 = sub i64 0, %8, !dbg !878
  %10 = icmp eq i64 %6, %9, !dbg !878
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !879
  br i1 %10, label %15, label %12, !dbg !880

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %11, align 8, !dbg !881, !tbaa !215
  %14 = tail call i32 @dictDelete(%struct.dict* %4, i8* %13) #6, !dbg !882
  br label %15, !dbg !882

; <label>:15:                                     ; preds = %2, %12
  %16 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !883
  %17 = load %struct.dict*, %struct.dict** %16, align 8, !dbg !883, !tbaa !207
  %18 = load i8*, i8** %11, align 8, !dbg !884, !tbaa !215
  %19 = tail call i32 @dictDelete(%struct.dict* %17, i8* %18) #6, !dbg !885
  %20 = icmp eq i32 %19, 0, !dbg !886
  br i1 %20, label %21, label %25, !dbg !887

; <label>:21:                                     ; preds = %15
  %22 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !888, !tbaa !364
  %23 = icmp eq i32 %22, 0, !dbg !889
  br i1 %23, label %25, label %24, !dbg !890

; <label>:24:                                     ; preds = %21
  tail call void @slotToKeyUpdateKey(%struct.redisObject* nonnull %1, i32 0) #6, !dbg !893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !894
  br label %25, !dbg !895

; <label>:25:                                     ; preds = %15, %24, %21
  %26 = phi i32 [ 1, %21 ], [ 1, %24 ], [ 0, %15 ], !dbg !896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !897
  ret i32 %26, !dbg !897
}

; Function Attrs: noredzone
declare dso_local i32 @dictDelete(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @slotToKeyDel(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !368 {
  tail call void @slotToKeyUpdateKey(%struct.redisObject* %0, i32 0) #8, !dbg !899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !900
  ret void, !dbg !900
}

; Function Attrs: noredzone nounwind
define dso_local i32 @dbDelete(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #0 !dbg !901 {
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 287), align 8, !dbg !907, !tbaa !708
  %4 = icmp eq i32 %3, 0, !dbg !908
  br i1 %4, label %7, label %5, !dbg !908

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @dbAsyncDelete(%struct.redisDb* %0, %struct.redisObject* %1) #6, !dbg !909
  br label %32, !dbg !908

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !913
  %9 = load %struct.dict*, %struct.dict** %8, align 8, !dbg !913, !tbaa !347
  %10 = getelementptr inbounds %struct.dict, %struct.dict* %9, i64 0, i32 2, i64 0, i32 3, !dbg !913
  %11 = load i64, i64* %10, align 8, !dbg !913, !tbaa !348
  %12 = getelementptr inbounds %struct.dict, %struct.dict* %9, i64 0, i32 2, i64 1, i32 3, !dbg !913
  %13 = load i64, i64* %12, align 8, !dbg !913, !tbaa !348
  %14 = sub i64 0, %13, !dbg !914
  %15 = icmp eq i64 %11, %14, !dbg !914
  %16 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !915
  br i1 %15, label %20, label %17, !dbg !916

; <label>:17:                                     ; preds = %7
  %18 = load i8*, i8** %16, align 8, !dbg !917, !tbaa !215
  %19 = tail call i32 @dictDelete(%struct.dict* %9, i8* %18) #6, !dbg !918
  br label %20, !dbg !918

; <label>:20:                                     ; preds = %17, %7
  %21 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !919
  %22 = load %struct.dict*, %struct.dict** %21, align 8, !dbg !919, !tbaa !207
  %23 = load i8*, i8** %16, align 8, !dbg !920, !tbaa !215
  %24 = tail call i32 @dictDelete(%struct.dict* %22, i8* %23) #6, !dbg !921
  %25 = icmp eq i32 %24, 0, !dbg !922
  br i1 %25, label %26, label %30, !dbg !923

; <label>:26:                                     ; preds = %20
  %27 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !924, !tbaa !364
  %28 = icmp eq i32 %27, 0, !dbg !925
  br i1 %28, label %30, label %29, !dbg !926

; <label>:29:                                     ; preds = %26
  tail call void @slotToKeyUpdateKey(%struct.redisObject* nonnull %1, i32 0) #6, !dbg !929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !930
  br label %30, !dbg !931

; <label>:30:                                     ; preds = %20, %26, %29
  %31 = phi i32 [ 1, %26 ], [ 1, %29 ], [ 0, %20 ], !dbg !932
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !933
  br label %32, !dbg !908

; <label>:32:                                     ; preds = %30, %5
  %33 = phi i32 [ %6, %5 ], [ %31, %30 ], !dbg !908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !934
  ret i32 %33, !dbg !934
}

; Function Attrs: noredzone
declare dso_local i32 @dbAsyncDelete(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @dbUnshareStringValue(%struct.redisDb* nocapture readonly, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #0 !dbg !935 {
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 0, !dbg !948
  %5 = load i32, i32* %4, align 8, !dbg !948
  %6 = and i32 %5, 15, !dbg !948
  %7 = icmp eq i32 %6, 0, !dbg !948
  br i1 %7, label %9, label %8, !dbg !948

; <label>:8:                                      ; preds = %3
  tail call void @_serverAssert(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 318) #6, !dbg !948
  tail call void @_exit(i32 1) #9, !dbg !948
  unreachable, !dbg !948

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 1, !dbg !949
  %11 = load i32, i32* %10, align 4, !dbg !949, !tbaa !950
  %12 = icmp eq i32 %11, 1, !dbg !951
  %13 = and i32 %5, 240, !dbg !952
  %14 = icmp eq i32 %13, 0, !dbg !953
  %15 = and i1 %14, %12, !dbg !954
  br i1 %15, label %47, label %16, !dbg !954

; <label>:16:                                     ; preds = %9
  %17 = tail call %struct.redisObject* @getDecodedObject(%struct.redisObject* nonnull %2) #6, !dbg !955
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i64 0, i32 2, !dbg !957
  %19 = load i8*, i8** %18, align 8, !dbg !957, !tbaa !215
  %20 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !960
  %21 = load i8, i8* %20, align 1, !dbg !960, !tbaa !222
  %22 = trunc i8 %21 to i3, !dbg !962
  switch i3 %22, label %44 [
    i3 0, label %23
    i3 1, label %26
    i3 2, label %30
    i3 3, label %35
    i3 -4, label %40
  ], !dbg !962

; <label>:23:                                     ; preds = %16
  %24 = lshr i8 %21, 3, !dbg !963
  %25 = zext i8 %24 to i64, !dbg !963
  br label %44, !dbg !964

; <label>:26:                                     ; preds = %16
  %27 = getelementptr inbounds i8, i8* %19, i64 -3, !dbg !965
  %28 = load i8, i8* %27, align 1, !dbg !966, !tbaa !222
  %29 = zext i8 %28 to i64, !dbg !965
  br label %44, !dbg !967

; <label>:30:                                     ; preds = %16
  %31 = getelementptr inbounds i8, i8* %19, i64 -5, !dbg !968
  %32 = bitcast i8* %31 to i16*, !dbg !969
  %33 = load i16, i16* %32, align 1, !dbg !969, !tbaa !840
  %34 = zext i16 %33 to i64, !dbg !968
  br label %44, !dbg !970

; <label>:35:                                     ; preds = %16
  %36 = getelementptr inbounds i8, i8* %19, i64 -9, !dbg !971
  %37 = bitcast i8* %36 to i32*, !dbg !972
  %38 = load i32, i32* %37, align 1, !dbg !972, !tbaa !845
  %39 = zext i32 %38 to i64, !dbg !971
  br label %44, !dbg !973

; <label>:40:                                     ; preds = %16
  %41 = getelementptr inbounds i8, i8* %19, i64 -17, !dbg !974
  %42 = bitcast i8* %41 to i64*, !dbg !975
  %43 = load i64, i64* %42, align 1, !dbg !975, !tbaa !849
  br label %44, !dbg !976

; <label>:44:                                     ; preds = %16, %23, %26, %30, %35, %40
  %45 = phi i64 [ %43, %40 ], [ %39, %35 ], [ %34, %30 ], [ %29, %26 ], [ %25, %23 ], [ 0, %16 ], !dbg !977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  %46 = tail call %struct.redisObject* @createRawStringObject(i8* %19, i64 %45) #6, !dbg !979
  tail call void @decrRefCount(%struct.redisObject* %17) #6, !dbg !980
  tail call void @dbOverwrite(%struct.redisDb* %0, %struct.redisObject* %1, %struct.redisObject* %46) #8, !dbg !981
  br label %47, !dbg !982

; <label>:47:                                     ; preds = %9, %44
  %48 = phi %struct.redisObject* [ %46, %44 ], [ %2, %9 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !983
  ret %struct.redisObject* %48, !dbg !983
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @getDecodedObject(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createRawStringObject(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @emptyDb(i32, i32, void (i8*)*) local_unnamed_addr #0 !dbg !984 {
  %4 = and i32 %1, 1, !dbg !1000
  %5 = icmp slt i32 %0, -1, !dbg !1003
  br i1 %5, label %9, label %6, !dbg !1005

; <label>:6:                                      ; preds = %3
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !1006, !tbaa !1007
  %8 = icmp sgt i32 %7, %0, !dbg !1008
  br i1 %8, label %11, label %9, !dbg !1009

; <label>:9:                                      ; preds = %6, %3
  %10 = tail call i32* @__errno() #6, !dbg !1010
  store i32 22, i32* %10, align 4, !dbg !1012, !tbaa !845
  br label %61, !dbg !1013

; <label>:11:                                     ; preds = %6
  %12 = icmp eq i32 %0, -1, !dbg !1014
  %13 = add nsw i32 %7, -1, !dbg !1017
  %14 = select i1 %12, i32 0, i32 %0, !dbg !1020
  %15 = select i1 %12, i32 %13, i32 %0, !dbg !1020
  %16 = icmp sgt i32 %14, %15, !dbg !1022
  br i1 %16, label %21, label %17, !dbg !1024

; <label>:17:                                     ; preds = %11
  %18 = icmp eq i32 %4, 0
  %19 = sext i32 %14 to i64, !dbg !1024
  %20 = sext i32 %15 to i64, !dbg !1024
  br label %25, !dbg !1024

; <label>:21:                                     ; preds = %43, %11
  %22 = phi i64 [ 0, %11 ], [ %37, %43 ], !dbg !1025
  %23 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !1027, !tbaa !364
  %24 = icmp eq i32 %23, 0, !dbg !1029
  br i1 %24, label %59, label %46, !dbg !1030

; <label>:25:                                     ; preds = %43, %17
  %26 = phi i64 [ %44, %43 ], [ %19, %17 ]
  %27 = phi i64 [ %37, %43 ], [ 0, %17 ]
  %28 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !1031, !tbaa !1032
  %29 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %28, i64 %26, !dbg !1031
  %30 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %29, i64 0, i32 0, !dbg !1031
  %31 = load %struct.dict*, %struct.dict** %30, align 8, !dbg !1031, !tbaa !207
  %32 = getelementptr inbounds %struct.dict, %struct.dict* %31, i64 0, i32 2, i64 0, i32 3, !dbg !1031
  %33 = load i64, i64* %32, align 8, !dbg !1031, !tbaa !348
  %34 = getelementptr inbounds %struct.dict, %struct.dict* %31, i64 0, i32 2, i64 1, i32 3, !dbg !1031
  %35 = load i64, i64* %34, align 8, !dbg !1031, !tbaa !348
  %36 = add i64 %33, %27, !dbg !1031
  %37 = add i64 %36, %35, !dbg !1033
  br i1 %18, label %39, label %38, !dbg !1034

; <label>:38:                                     ; preds = %25
  tail call void @emptyDbAsync(%struct.redisDb* %29) #6, !dbg !1035
  br label %43, !dbg !1038

; <label>:39:                                     ; preds = %25
  tail call void @dictEmpty(%struct.dict* %31, void (i8*)* %2) #6, !dbg !1039
  %40 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !1041, !tbaa !1032
  %41 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %40, i64 %26, i32 1, !dbg !1042
  %42 = load %struct.dict*, %struct.dict** %41, align 8, !dbg !1042, !tbaa !347
  tail call void @dictEmpty(%struct.dict* %42, void (i8*)* %2) #6, !dbg !1043
  br label %43

; <label>:43:                                     ; preds = %38, %39
  %44 = add nsw i64 %26, 1, !dbg !1044
  %45 = icmp slt i64 %26, %20, !dbg !1022
  br i1 %45, label %25, label %21, !dbg !1024, !llvm.loop !1045

; <label>:46:                                     ; preds = %21
  %47 = icmp eq i32 %4, 0, !dbg !1047
  br i1 %47, label %49, label %48, !dbg !1050

; <label>:48:                                     ; preds = %46
  tail call void @slotToKeyFlushAsync() #6, !dbg !1051
  br label %59, !dbg !1053

; <label>:49:                                     ; preds = %46
  %50 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !1054, !tbaa !1060
  %51 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %50, i64 0, i32 10, !dbg !1061
  %52 = load %struct.rax*, %struct.rax** %51, align 8, !dbg !1061, !tbaa !1062
  tail call void @raxFree(%struct.rax* %52) #6, !dbg !1064
  %53 = tail call %struct.rax* @raxNew() #6, !dbg !1065
  %54 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !1066, !tbaa !1060
  %55 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %54, i64 0, i32 10, !dbg !1067
  store %struct.rax* %53, %struct.rax** %55, align 8, !dbg !1068, !tbaa !1062
  %56 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %54, i64 0, i32 9, i64 0, !dbg !1069
  %57 = bitcast i64* %56 to i8*, !dbg !1069
  %58 = tail call i8* @memset(i8* nonnull %57, i32 0, i64 131072) #6, !dbg !1070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1071
  br label %59

; <label>:59:                                     ; preds = %21, %48, %49
  br i1 %12, label %60, label %61, !dbg !1072

; <label>:60:                                     ; preds = %59
  tail call void @flushSlaveKeysWithExpireList() #6, !dbg !1073
  br label %61, !dbg !1073

; <label>:61:                                     ; preds = %59, %60, %9
  %62 = phi i64 [ -1, %9 ], [ %22, %60 ], [ %22, %59 ], !dbg !1075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1076
  ret i64 %62, !dbg !1076
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
define dso_local void @slotToKeyFlush() local_unnamed_addr #0 !dbg !1055 {
  %1 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !1077, !tbaa !1060
  %2 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %1, i64 0, i32 10, !dbg !1078
  %3 = load %struct.rax*, %struct.rax** %2, align 8, !dbg !1078, !tbaa !1062
  tail call void @raxFree(%struct.rax* %3) #6, !dbg !1079
  %4 = tail call %struct.rax* @raxNew() #6, !dbg !1080
  %5 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !1081, !tbaa !1060
  %6 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %5, i64 0, i32 10, !dbg !1082
  store %struct.rax* %4, %struct.rax** %6, align 8, !dbg !1083, !tbaa !1062
  %7 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %5, i64 0, i32 9, i64 0, !dbg !1084
  %8 = bitcast i64* %7 to i8*, !dbg !1084
  %9 = tail call i8* @memset(i8* nonnull %8, i32 0, i64 131072) #6, !dbg !1085
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1086
  ret void, !dbg !1086
}

; Function Attrs: noredzone
declare dso_local void @flushSlaveKeysWithExpireList() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @selectDb(%struct.client* nocapture, i32) local_unnamed_addr #0 !dbg !1087 {
  %3 = icmp sgt i32 %1, -1, !dbg !1095
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !1097
  %5 = icmp sgt i32 %4, %1, !dbg !1098
  %6 = and i1 %3, %5, !dbg !1099
  br i1 %6, label %7, label %12, !dbg !1099

; <label>:7:                                      ; preds = %2
  %8 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !1100, !tbaa !1032
  %9 = sext i32 %1 to i64, !dbg !1101
  %10 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %8, i64 %9, !dbg !1101
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1102
  store %struct.redisDb* %10, %struct.redisDb** %11, align 8, !dbg !1103, !tbaa !567
  br label %12, !dbg !1104

; <label>:12:                                     ; preds = %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], !dbg !1105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  ret i32 %13, !dbg !1106
}

; Function Attrs: noredzone
declare dso_local void @touchWatchedKey(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @signalFlushedDb(i32) local_unnamed_addr #0 !dbg !1107 {
  tail call void @touchWatchedKeysOnFlush(i32 %0) #6, !dbg !1113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1114
  ret void, !dbg !1114
}

; Function Attrs: noredzone
declare dso_local void @touchWatchedKeysOnFlush(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @getFlushCommandFlags(%struct.client*, i32* nocapture) local_unnamed_addr #0 !dbg !1115 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1123
  %4 = load i32, i32* %3, align 8, !dbg !1123, !tbaa !1125
  %5 = icmp sgt i32 %4, 1, !dbg !1126
  br i1 %5, label %6, label %19, !dbg !1127

; <label>:6:                                      ; preds = %2
  %7 = icmp eq i32 %4, 2, !dbg !1128
  br i1 %7, label %8, label %17, !dbg !1131

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1132
  %10 = load %struct.redisObject**, %struct.redisObject*** %9, align 8, !dbg !1132, !tbaa !1133
  %11 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %10, i64 1, !dbg !1134
  %12 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !1134, !tbaa !1135
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %12, i64 0, i32 2, !dbg !1136
  %14 = load i8*, i8** %13, align 8, !dbg !1136, !tbaa !215
  %15 = tail call i32 @strcasecmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !1137
  %16 = icmp eq i32 %15, 0, !dbg !1137
  br i1 %16, label %19, label %17, !dbg !1138

; <label>:17:                                     ; preds = %8, %6
  %18 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1139, !tbaa !1141
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %18) #6, !dbg !1143
  br label %21, !dbg !1144

; <label>:19:                                     ; preds = %2, %8
  %20 = phi i32 [ 1, %8 ], [ 0, %2 ]
  store i32 %20, i32* %1, align 4, !dbg !1145, !tbaa !845
  br label %21, !dbg !1146

; <label>:21:                                     ; preds = %19, %17
  %22 = phi i32 [ -1, %17 ], [ 0, %19 ], !dbg !1147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1148
  ret i32 %22, !dbg !1148
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @flushdbCommand(%struct.client*) local_unnamed_addr #0 !dbg !1149 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1157
  %3 = load i32, i32* %2, align 8, !dbg !1157, !tbaa !1125
  %4 = icmp sgt i32 %3, 1, !dbg !1158
  br i1 %4, label %5, label %18, !dbg !1159

; <label>:5:                                      ; preds = %1
  %6 = icmp eq i32 %3, 2, !dbg !1160
  br i1 %6, label %7, label %16, !dbg !1161

; <label>:7:                                      ; preds = %5
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1162
  %9 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1162, !tbaa !1133
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 1, !dbg !1163
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !1163, !tbaa !1135
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 2, !dbg !1164
  %13 = load i8*, i8** %12, align 8, !dbg !1164, !tbaa !215
  %14 = tail call i32 @strcasecmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !1165
  %15 = icmp eq i32 %14, 0, !dbg !1165
  br i1 %15, label %18, label %16, !dbg !1166

; <label>:16:                                     ; preds = %5, %7
  %17 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1167, !tbaa !1141
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %17) #6, !dbg !1168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1169
  br label %31, !dbg !1170

; <label>:18:                                     ; preds = %7, %1
  %19 = phi i32 [ 0, %1 ], [ 1, %7 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1169
  %20 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1171
  %21 = load %struct.redisDb*, %struct.redisDb** %20, align 8, !dbg !1171, !tbaa !567
  %22 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %21, i64 0, i32 5, !dbg !1172
  %23 = load i32, i32* %22, align 8, !dbg !1172, !tbaa !333
  tail call void @touchWatchedKeysOnFlush(i32 %23) #6, !dbg !1175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1176
  %24 = load %struct.redisDb*, %struct.redisDb** %20, align 8, !dbg !1177, !tbaa !567
  %25 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %24, i64 0, i32 5, !dbg !1178
  %26 = load i32, i32* %25, align 8, !dbg !1178, !tbaa !333
  %27 = tail call i64 @emptyDb(i32 %26, i32 %19, void (i8*)* null) #8, !dbg !1180
  %28 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1181, !tbaa !1182
  %29 = add nsw i64 %28, %27, !dbg !1181
  store i64 %29, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1181, !tbaa !1182
  %30 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1183, !tbaa !1184
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %30) #6, !dbg !1185
  br label %31, !dbg !1186

; <label>:31:                                     ; preds = %16, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1186
  ret void, !dbg !1186
}

; Function Attrs: noredzone nounwind
define dso_local void @flushallCommand(%struct.client*) local_unnamed_addr #0 !dbg !1187 {
  %2 = alloca %struct.rdbSaveInfo, align 8
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1208
  %4 = load i32, i32* %3, align 8, !dbg !1208, !tbaa !1125
  %5 = icmp sgt i32 %4, 1, !dbg !1209
  br i1 %5, label %6, label %19, !dbg !1210

; <label>:6:                                      ; preds = %1
  %7 = icmp eq i32 %4, 2, !dbg !1211
  br i1 %7, label %8, label %17, !dbg !1212

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1213
  %10 = load %struct.redisObject**, %struct.redisObject*** %9, align 8, !dbg !1213, !tbaa !1133
  %11 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %10, i64 1, !dbg !1214
  %12 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !1214, !tbaa !1135
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %12, i64 0, i32 2, !dbg !1215
  %14 = load i8*, i8** %13, align 8, !dbg !1215, !tbaa !215
  %15 = tail call i32 @strcasecmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !1216
  %16 = icmp eq i32 %15, 0, !dbg !1216
  br i1 %16, label %19, label %17, !dbg !1217

; <label>:17:                                     ; preds = %6, %8
  %18 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1218, !tbaa !1141
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %18) #6, !dbg !1219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1220
  br label %44, !dbg !1221

; <label>:19:                                     ; preds = %8, %1
  %20 = phi i32 [ 0, %1 ], [ 1, %8 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1220
  tail call void @touchWatchedKeysOnFlush(i32 -1) #6, !dbg !1224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1225
  %21 = tail call i64 @emptyDb(i32 -1, i32 %20, void (i8*)* null) #8, !dbg !1227
  %22 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1228, !tbaa !1182
  %23 = add nsw i64 %22, %21, !dbg !1228
  store i64 %23, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1228, !tbaa !1182
  %24 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1229, !tbaa !1184
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %24) #6, !dbg !1230
  %25 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !1231, !tbaa !226
  %26 = icmp eq i32 %25, -1, !dbg !1233
  br i1 %26, label %30, label %27, !dbg !1234

; <label>:27:                                     ; preds = %19
  %28 = tail call i32 @kill(i32 %25, i32 10) #6, !dbg !1235
  %29 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !1237, !tbaa !226
  tail call void @rdbRemoveTempFile(i32 %29) #6, !dbg !1238
  br label %30, !dbg !1239

; <label>:30:                                     ; preds = %19, %27
  %31 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 156), align 8, !dbg !1240, !tbaa !1241
  %32 = icmp sgt i32 %31, 0, !dbg !1242
  %33 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1243, !tbaa !1182
  br i1 %32, label %34, label %41, !dbg !1244

; <label>:34:                                     ; preds = %30
  %35 = bitcast %struct.rdbSaveInfo* %2 to i8*, !dbg !1245
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %35) #7, !dbg !1245
  %36 = call %struct.rdbSaveInfo* @rdbPopulateSaveInfo(%struct.rdbSaveInfo* nonnull %2) #6, !dbg !1247
  %37 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 157), align 8, !dbg !1249, !tbaa !1250
  %38 = call i32 @rdbSave(i8* %37, %struct.rdbSaveInfo* %36) #6, !dbg !1251
  %39 = shl i64 %33, 32, !dbg !1252
  %40 = ashr exact i64 %39, 32, !dbg !1252
  store i64 %40, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1253, !tbaa !1182
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %35) #7, !dbg !1254
  br label %41, !dbg !1255

; <label>:41:                                     ; preds = %30, %34
  %42 = phi i64 [ %40, %34 ], [ %33, %30 ], !dbg !1256
  %43 = add nsw i64 %42, 1, !dbg !1256
  store i64 %43, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1256, !tbaa !1182
  br label %44, !dbg !1257

; <label>:44:                                     ; preds = %17, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1257
  ret void, !dbg !1257
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
define dso_local void @delGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !1258 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1274
  %4 = load i32, i32* %3, align 8, !dbg !1274, !tbaa !1125
  %5 = icmp sgt i32 %4, 1, !dbg !1275
  br i1 %5, label %6, label %72, !dbg !1276

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %9 = icmp eq i32 %1, 0
  br label %10, !dbg !1276

; <label>:10:                                     ; preds = %6, %66
  %11 = phi i64 [ 1, %6 ], [ %68, %66 ]
  %12 = phi i32 [ 0, %6 ], [ %67, %66 ]
  %13 = load %struct.redisDb*, %struct.redisDb** %7, align 8, !dbg !1277, !tbaa !567
  %14 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1278, !tbaa !1133
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 %11, !dbg !1279
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !1279, !tbaa !1135
  %17 = tail call i32 @expireIfNeeded(%struct.redisDb* %13, %struct.redisObject* %16) #8, !dbg !1280
  %18 = load %struct.redisDb*, %struct.redisDb** %7, align 8, !dbg !1281, !tbaa !567
  %19 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1281, !tbaa !1133
  %20 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 %11, !dbg !1281
  %21 = load %struct.redisObject*, %struct.redisObject** %20, align 8, !dbg !1281, !tbaa !1135
  br i1 %9, label %24, label %22, !dbg !1282

; <label>:22:                                     ; preds = %10
  %23 = tail call i32 @dbAsyncDelete(%struct.redisDb* %18, %struct.redisObject* %21) #6, !dbg !1283
  br label %49, !dbg !1282

; <label>:24:                                     ; preds = %10
  %25 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %18, i64 0, i32 1, !dbg !1287
  %26 = load %struct.dict*, %struct.dict** %25, align 8, !dbg !1287, !tbaa !347
  %27 = getelementptr inbounds %struct.dict, %struct.dict* %26, i64 0, i32 2, i64 0, i32 3, !dbg !1287
  %28 = load i64, i64* %27, align 8, !dbg !1287, !tbaa !348
  %29 = getelementptr inbounds %struct.dict, %struct.dict* %26, i64 0, i32 2, i64 1, i32 3, !dbg !1287
  %30 = load i64, i64* %29, align 8, !dbg !1287, !tbaa !348
  %31 = sub i64 0, %30, !dbg !1288
  %32 = icmp eq i64 %28, %31, !dbg !1288
  %33 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %21, i64 0, i32 2, !dbg !1289
  br i1 %32, label %37, label %34, !dbg !1290

; <label>:34:                                     ; preds = %24
  %35 = load i8*, i8** %33, align 8, !dbg !1291, !tbaa !215
  %36 = tail call i32 @dictDelete(%struct.dict* %26, i8* %35) #6, !dbg !1292
  br label %37, !dbg !1292

; <label>:37:                                     ; preds = %34, %24
  %38 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %18, i64 0, i32 0, !dbg !1293
  %39 = load %struct.dict*, %struct.dict** %38, align 8, !dbg !1293, !tbaa !207
  %40 = load i8*, i8** %33, align 8, !dbg !1294, !tbaa !215
  %41 = tail call i32 @dictDelete(%struct.dict* %39, i8* %40) #6, !dbg !1295
  %42 = icmp eq i32 %41, 0, !dbg !1296
  br i1 %42, label %43, label %47, !dbg !1297

; <label>:43:                                     ; preds = %37
  %44 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !1298, !tbaa !364
  %45 = icmp eq i32 %44, 0, !dbg !1299
  br i1 %45, label %47, label %46, !dbg !1300

; <label>:46:                                     ; preds = %43
  tail call void @slotToKeyUpdateKey(%struct.redisObject* nonnull %21, i32 0) #6, !dbg !1303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1304
  br label %47, !dbg !1305

; <label>:47:                                     ; preds = %37, %43, %46
  %48 = phi i32 [ 1, %43 ], [ 1, %46 ], [ 0, %37 ], !dbg !1306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1307
  br label %49, !dbg !1282

; <label>:49:                                     ; preds = %47, %22
  %50 = phi i32 [ %23, %22 ], [ %48, %47 ], !dbg !1282
  %51 = icmp eq i32 %50, 0, !dbg !1309
  br i1 %51, label %66, label %52, !dbg !1311

; <label>:52:                                     ; preds = %49
  %53 = load %struct.redisDb*, %struct.redisDb** %7, align 8, !dbg !1312, !tbaa !567
  %54 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1314, !tbaa !1133
  %55 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %54, i64 %11, !dbg !1315
  %56 = load %struct.redisObject*, %struct.redisObject** %55, align 8, !dbg !1315, !tbaa !1135
  tail call void @touchWatchedKey(%struct.redisDb* %53, %struct.redisObject* %56) #6, !dbg !1319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1320
  %57 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1321, !tbaa !1133
  %58 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %57, i64 %11, !dbg !1322
  %59 = load %struct.redisObject*, %struct.redisObject** %58, align 8, !dbg !1322, !tbaa !1135
  %60 = load %struct.redisDb*, %struct.redisDb** %7, align 8, !dbg !1323, !tbaa !567
  %61 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %60, i64 0, i32 5, !dbg !1324
  %62 = load i32, i32* %61, align 8, !dbg !1324, !tbaa !333
  tail call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct.redisObject* %59, i32 %62) #6, !dbg !1325
  %63 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1326, !tbaa !1182
  %64 = add nsw i64 %63, 1, !dbg !1326
  store i64 %64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1326, !tbaa !1182
  %65 = add nsw i32 %12, 1, !dbg !1327
  br label %66, !dbg !1328

; <label>:66:                                     ; preds = %49, %52
  %67 = phi i32 [ %65, %52 ], [ %12, %49 ], !dbg !1329
  %68 = add nuw nsw i64 %11, 1, !dbg !1330
  %69 = load i32, i32* %3, align 8, !dbg !1274, !tbaa !1125
  %70 = sext i32 %69 to i64, !dbg !1275
  %71 = icmp slt i64 %68, %70, !dbg !1275
  br i1 %71, label %10, label %72, !dbg !1276, !llvm.loop !1331

; <label>:72:                                     ; preds = %66, %2
  %73 = phi i32 [ 0, %2 ], [ %67, %66 ], !dbg !1333
  %74 = sext i32 %73 to i64, !dbg !1334
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %74) #6, !dbg !1335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1336
  ret void, !dbg !1336
}

; Function Attrs: noredzone
declare dso_local void @notifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @delCommand(%struct.client*) local_unnamed_addr #0 !dbg !1337 {
  tail call void @delGenericCommand(%struct.client* %0, i32 0) #8, !dbg !1341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1342
  ret void, !dbg !1342
}

; Function Attrs: noredzone nounwind
define dso_local void @unlinkCommand(%struct.client*) local_unnamed_addr #0 !dbg !1343 {
  tail call void @delGenericCommand(%struct.client* %0, i32 1) #8, !dbg !1347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  ret void, !dbg !1348
}

; Function Attrs: noredzone nounwind
define dso_local void @existsCommand(%struct.client*) local_unnamed_addr #0 !dbg !1349 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1357
  %3 = load i32, i32* %2, align 8, !dbg !1357, !tbaa !1125
  %4 = icmp sgt i32 %3, 1, !dbg !1360
  br i1 %4, label %5, label %51, !dbg !1361

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %8, !dbg !1361

; <label>:8:                                      ; preds = %5, %39
  %9 = phi i64 [ 1, %5 ], [ %47, %39 ]
  %10 = phi i64 [ 0, %5 ], [ %46, %39 ]
  %11 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1362, !tbaa !567
  %12 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1365, !tbaa !1133
  %13 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %12, i64 %9, !dbg !1366
  %14 = load %struct.redisObject*, %struct.redisObject** %13, align 8, !dbg !1366, !tbaa !1135
  %15 = tail call i32 @expireIfNeeded(%struct.redisDb* %11, %struct.redisObject* %14) #6, !dbg !1374
  %16 = icmp eq i32 %15, 1, !dbg !1375
  br i1 %16, label %17, label %35, !dbg !1376

; <label>:17:                                     ; preds = %8
  %18 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !1377, !tbaa !280
  %19 = icmp eq i8* %18, null, !dbg !1378
  br i1 %19, label %39, label %20, !dbg !1379

; <label>:20:                                     ; preds = %17
  %21 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !1380, !tbaa !285
  %22 = icmp eq %struct.client* %21, null, !dbg !1381
  %23 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !1382
  %24 = icmp eq %struct.client* %21, %23, !dbg !1383
  %25 = or i1 %22, %24, !dbg !1384
  br i1 %25, label %35, label %26, !dbg !1384

; <label>:26:                                     ; preds = %20
  %27 = getelementptr inbounds %struct.client, %struct.client* %21, i64 0, i32 10, !dbg !1385
  %28 = load %struct.redisCommand*, %struct.redisCommand** %27, align 8, !dbg !1385, !tbaa !291
  %29 = icmp eq %struct.redisCommand* %28, null, !dbg !1386
  br i1 %29, label %35, label %30, !dbg !1387

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %28, i64 0, i32 4, !dbg !1388
  %32 = load i32, i32* %31, align 8, !dbg !1388, !tbaa !298
  %33 = and i32 %32, 2, !dbg !1389
  %34 = icmp eq i32 %33, 0, !dbg !1389
  br i1 %34, label %35, label %39, !dbg !1390

; <label>:35:                                     ; preds = %30, %26, %20, %8
  %36 = tail call %struct.redisObject* @lookupKey(%struct.redisDb* %11, %struct.redisObject* %14, i32 0) #6, !dbg !1391
  %37 = icmp eq %struct.redisObject* %36, null, !dbg !1393
  %38 = select i1 %37, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 76), !dbg !1394
  br label %39, !dbg !1394

; <label>:39:                                     ; preds = %35, %30, %17
  %40 = phi i64* [ getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), %17 ], [ getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), %30 ], [ %38, %35 ]
  %41 = phi %struct.redisObject* [ null, %17 ], [ null, %30 ], [ %36, %35 ], !dbg !1395
  %42 = load i64, i64* %40, align 8, !dbg !1396, !tbaa !310
  %43 = add nsw i64 %42, 1, !dbg !1396
  store i64 %43, i64* %40, align 8, !dbg !1396, !tbaa !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1398
  %44 = icmp ne %struct.redisObject* %41, null, !dbg !1399
  %45 = zext i1 %44 to i64, !dbg !1400
  %46 = add nuw nsw i64 %10, %45, !dbg !1400
  %47 = add nuw nsw i64 %9, 1, !dbg !1401
  %48 = load i32, i32* %2, align 8, !dbg !1357, !tbaa !1125
  %49 = sext i32 %48 to i64, !dbg !1360
  %50 = icmp slt i64 %47, %49, !dbg !1360
  br i1 %50, label %8, label %51, !dbg !1361, !llvm.loop !1402

; <label>:51:                                     ; preds = %39, %1
  %52 = phi i64 [ 0, %1 ], [ %46, %39 ], !dbg !1396
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %52) #6, !dbg !1404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1405
  ret void, !dbg !1405
}

; Function Attrs: noredzone nounwind
define dso_local void @selectCommand(%struct.client*) local_unnamed_addr #0 !dbg !1406 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !1411
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7, !dbg !1411
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1412
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1412, !tbaa !1133
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !1414
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1414, !tbaa !1135
  %8 = call i32 @getLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %7, i64* nonnull %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !1416
  %9 = icmp eq i32 %8, 0, !dbg !1417
  br i1 %9, label %10, label %31, !dbg !1418

; <label>:10:                                     ; preds = %1
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !1419, !tbaa !364
  %12 = icmp ne i32 %11, 0, !dbg !1421
  %13 = load i64, i64* %2, align 8, !dbg !1422
  %14 = icmp ne i64 %13, 0, !dbg !1423
  %15 = and i1 %12, %14, !dbg !1424
  br i1 %15, label %16, label %17, !dbg !1424

; <label>:16:                                     ; preds = %10
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !1425
  br label %31, !dbg !1427

; <label>:17:                                     ; preds = %10
  %18 = trunc i64 %13 to i32, !dbg !1428
  %19 = icmp sgt i32 %18, -1, !dbg !1433
  %20 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !1434
  %21 = icmp sgt i32 %20, %18, !dbg !1435
  %22 = and i1 %19, %21, !dbg !1436
  br i1 %22, label %24, label %23, !dbg !1436

; <label>:23:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !1438
  br label %31, !dbg !1440

; <label>:24:                                     ; preds = %17
  %25 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !1441, !tbaa !1032
  %26 = shl i64 %13, 32, !dbg !1442
  %27 = ashr exact i64 %26, 32, !dbg !1442
  %28 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %25, i64 %27, !dbg !1442
  %29 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1443
  store %struct.redisDb* %28, %struct.redisDb** %29, align 8, !dbg !1444, !tbaa !567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  %30 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1445, !tbaa !1184
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %30) #6, !dbg !1447
  br label %31

; <label>:31:                                     ; preds = %23, %24, %1, %16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7, !dbg !1448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1448
  ret void, !dbg !1448
}

; Function Attrs: noredzone
declare dso_local i32 @getLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @randomkeyCommand(%struct.client*) local_unnamed_addr #0 !dbg !1449 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1454
  %3 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1454, !tbaa !567
  %4 = tail call %struct.redisObject* @dbRandomKey(%struct.redisDb* %3) #8, !dbg !1456
  %5 = icmp eq %struct.redisObject* %4, null, !dbg !1458
  br i1 %5, label %6, label %8, !dbg !1459

; <label>:6:                                      ; preds = %1
  %7 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1460, !tbaa !1462
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %7) #6, !dbg !1463
  br label %9, !dbg !1464

; <label>:8:                                      ; preds = %1
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* nonnull %4) #6, !dbg !1465
  tail call void @decrRefCount(%struct.redisObject* nonnull %4) #6, !dbg !1466
  br label %9, !dbg !1467

; <label>:9:                                      ; preds = %8, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1467
  ret void, !dbg !1467
}

; Function Attrs: noredzone
declare dso_local void @addReplyBulk(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @keysCommand(%struct.client*) local_unnamed_addr #0 !dbg !1468 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1493
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1493, !tbaa !1133
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !1494
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !1494, !tbaa !1135
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %5, i64 0, i32 2, !dbg !1495
  %7 = load i8*, i8** %6, align 8, !dbg !1495, !tbaa !215
  %8 = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !1499
  %9 = load i8, i8* %8, align 1, !dbg !1499, !tbaa !222
  %10 = trunc i8 %9 to i3, !dbg !1501
  switch i3 %10, label %32 [
    i3 0, label %11
    i3 1, label %14
    i3 2, label %18
    i3 3, label %23
    i3 -4, label %28
  ], !dbg !1501

; <label>:11:                                     ; preds = %1
  %12 = lshr i8 %9, 3, !dbg !1502
  %13 = zext i8 %12 to i64, !dbg !1502
  br label %32, !dbg !1503

; <label>:14:                                     ; preds = %1
  %15 = getelementptr inbounds i8, i8* %7, i64 -3, !dbg !1504
  %16 = load i8, i8* %15, align 1, !dbg !1505, !tbaa !222
  %17 = zext i8 %16 to i64, !dbg !1504
  br label %32, !dbg !1506

; <label>:18:                                     ; preds = %1
  %19 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !1507
  %20 = bitcast i8* %19 to i16*, !dbg !1508
  %21 = load i16, i16* %20, align 1, !dbg !1508, !tbaa !840
  %22 = zext i16 %21 to i64, !dbg !1507
  br label %32, !dbg !1509

; <label>:23:                                     ; preds = %1
  %24 = getelementptr inbounds i8, i8* %7, i64 -9, !dbg !1510
  %25 = bitcast i8* %24 to i32*, !dbg !1511
  %26 = load i32, i32* %25, align 1, !dbg !1511, !tbaa !845
  %27 = zext i32 %26 to i64, !dbg !1510
  br label %32, !dbg !1512

; <label>:28:                                     ; preds = %1
  %29 = getelementptr inbounds i8, i8* %7, i64 -17, !dbg !1513
  %30 = bitcast i8* %29 to i64*, !dbg !1514
  %31 = load i64, i64* %30, align 1, !dbg !1514, !tbaa !849
  br label %32, !dbg !1515

; <label>:32:                                     ; preds = %1, %11, %14, %18, %23, %28
  %33 = phi i64 [ %31, %28 ], [ %27, %23 ], [ %22, %18 ], [ %17, %14 ], [ %13, %11 ], [ 0, %1 ], !dbg !1516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1517
  %34 = trunc i64 %33 to i32, !dbg !1518
  %35 = tail call i8* @addDeferredMultiBulkLength(%struct.client* nonnull %0) #6, !dbg !1521
  %36 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1523
  %37 = load %struct.redisDb*, %struct.redisDb** %36, align 8, !dbg !1523, !tbaa !567
  %38 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %37, i64 0, i32 0, !dbg !1524
  %39 = load %struct.dict*, %struct.dict** %38, align 8, !dbg !1524, !tbaa !207
  %40 = tail call %struct.dictIterator* @dictGetSafeIterator(%struct.dict* %39) #6, !dbg !1525
  %41 = load i8, i8* %7, align 1, !dbg !1527, !tbaa !222
  %42 = icmp eq i8 %41, 42, !dbg !1528
  br i1 %42, label %43, label %47, !dbg !1529

; <label>:43:                                     ; preds = %32
  %44 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1530
  %45 = load i8, i8* %44, align 1, !dbg !1530, !tbaa !222
  %46 = icmp eq i8 %45, 0, !dbg !1531
  br label %47

; <label>:47:                                     ; preds = %43, %32
  %48 = phi i1 [ false, %32 ], [ %46, %43 ], !dbg !1532
  %49 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %40) #6, !dbg !1533
  %50 = icmp eq %struct.dictEntry* %49, null, !dbg !1535
  br i1 %50, label %124, label %51, !dbg !1536

; <label>:51:                                     ; preds = %47, %120
  %52 = phi %struct.dictEntry* [ %122, %120 ], [ %49, %47 ]
  %53 = phi i64 [ %121, %120 ], [ 0, %47 ]
  %54 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %52, i64 0, i32 0, !dbg !1537
  %55 = load i8*, i8** %54, align 8, !dbg !1537, !tbaa !815
  %56 = getelementptr inbounds i8, i8* %55, i64 -1, !dbg !1539
  br i1 %48, label %86, label %57, !dbg !1543

; <label>:57:                                     ; preds = %51
  %58 = load i8, i8* %56, align 1, !dbg !1546, !tbaa !222
  %59 = trunc i8 %58 to i3, !dbg !1548
  switch i3 %59, label %81 [
    i3 0, label %60
    i3 1, label %63
    i3 2, label %67
    i3 3, label %72
    i3 -4, label %77
  ], !dbg !1548

; <label>:60:                                     ; preds = %57
  %61 = lshr i8 %58, 3, !dbg !1549
  %62 = zext i8 %61 to i64, !dbg !1549
  br label %81, !dbg !1550

; <label>:63:                                     ; preds = %57
  %64 = getelementptr inbounds i8, i8* %55, i64 -3, !dbg !1551
  %65 = load i8, i8* %64, align 1, !dbg !1552, !tbaa !222
  %66 = zext i8 %65 to i64, !dbg !1551
  br label %81, !dbg !1553

; <label>:67:                                     ; preds = %57
  %68 = getelementptr inbounds i8, i8* %55, i64 -5, !dbg !1554
  %69 = bitcast i8* %68 to i16*, !dbg !1555
  %70 = load i16, i16* %69, align 1, !dbg !1555, !tbaa !840
  %71 = zext i16 %70 to i64, !dbg !1554
  br label %81, !dbg !1556

; <label>:72:                                     ; preds = %57
  %73 = getelementptr inbounds i8, i8* %55, i64 -9, !dbg !1557
  %74 = bitcast i8* %73 to i32*, !dbg !1558
  %75 = load i32, i32* %74, align 1, !dbg !1558, !tbaa !845
  %76 = zext i32 %75 to i64, !dbg !1557
  br label %81, !dbg !1559

; <label>:77:                                     ; preds = %57
  %78 = getelementptr inbounds i8, i8* %55, i64 -17, !dbg !1560
  %79 = bitcast i8* %78 to i64*, !dbg !1561
  %80 = load i64, i64* %79, align 1, !dbg !1561, !tbaa !849
  br label %81, !dbg !1562

; <label>:81:                                     ; preds = %57, %60, %63, %67, %72, %77
  %82 = phi i64 [ %80, %77 ], [ %76, %72 ], [ %71, %67 ], [ %66, %63 ], [ %62, %60 ], [ 0, %57 ], !dbg !1563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1564
  %83 = trunc i64 %82 to i32, !dbg !1565
  %84 = tail call i32 @stringmatchlen(i8* %7, i32 %34, i8* nonnull %55, i32 %83, i32 0) #6, !dbg !1566
  %85 = icmp eq i32 %84, 0, !dbg !1566
  br i1 %85, label %120, label %86, !dbg !1567

; <label>:86:                                     ; preds = %51, %81
  %87 = load i8, i8* %56, align 1, !dbg !1539, !tbaa !222
  %88 = trunc i8 %87 to i3, !dbg !1570
  switch i3 %88, label %110 [
    i3 0, label %89
    i3 1, label %92
    i3 2, label %96
    i3 3, label %101
    i3 -4, label %106
  ], !dbg !1570

; <label>:89:                                     ; preds = %86
  %90 = lshr i8 %87, 3, !dbg !1571
  %91 = zext i8 %90 to i64, !dbg !1571
  br label %110, !dbg !1572

; <label>:92:                                     ; preds = %86
  %93 = getelementptr inbounds i8, i8* %55, i64 -3, !dbg !1573
  %94 = load i8, i8* %93, align 1, !dbg !1574, !tbaa !222
  %95 = zext i8 %94 to i64, !dbg !1573
  br label %110, !dbg !1575

; <label>:96:                                     ; preds = %86
  %97 = getelementptr inbounds i8, i8* %55, i64 -5, !dbg !1576
  %98 = bitcast i8* %97 to i16*, !dbg !1577
  %99 = load i16, i16* %98, align 1, !dbg !1577, !tbaa !840
  %100 = zext i16 %99 to i64, !dbg !1576
  br label %110, !dbg !1578

; <label>:101:                                    ; preds = %86
  %102 = getelementptr inbounds i8, i8* %55, i64 -9, !dbg !1579
  %103 = bitcast i8* %102 to i32*, !dbg !1580
  %104 = load i32, i32* %103, align 1, !dbg !1580, !tbaa !845
  %105 = zext i32 %104 to i64, !dbg !1579
  br label %110, !dbg !1581

; <label>:106:                                    ; preds = %86
  %107 = getelementptr inbounds i8, i8* %55, i64 -17, !dbg !1582
  %108 = bitcast i8* %107 to i64*, !dbg !1583
  %109 = load i64, i64* %108, align 1, !dbg !1583, !tbaa !849
  br label %110, !dbg !1584

; <label>:110:                                    ; preds = %86, %89, %92, %96, %101, %106
  %111 = phi i64 [ %109, %106 ], [ %105, %101 ], [ %100, %96 ], [ %95, %92 ], [ %91, %89 ], [ 0, %86 ], !dbg !1585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1586
  %112 = tail call %struct.redisObject* @createStringObject(i8* nonnull %55, i64 %111) #6, !dbg !1587
  %113 = load %struct.redisDb*, %struct.redisDb** %36, align 8, !dbg !1589, !tbaa !567
  %114 = tail call i32 @keyIsExpired(%struct.redisDb* %113, %struct.redisObject* %112) #8, !dbg !1591
  %115 = icmp eq i32 %114, 0, !dbg !1591
  br i1 %115, label %116, label %118, !dbg !1592

; <label>:116:                                    ; preds = %110
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %112) #6, !dbg !1593
  %117 = add i64 %53, 1, !dbg !1595
  br label %118, !dbg !1596

; <label>:118:                                    ; preds = %110, %116
  %119 = phi i64 [ %53, %110 ], [ %117, %116 ], !dbg !1597
  tail call void @decrRefCount(%struct.redisObject* %112) #6, !dbg !1598
  br label %120, !dbg !1599

; <label>:120:                                    ; preds = %81, %118
  %121 = phi i64 [ %119, %118 ], [ %53, %81 ], !dbg !1520
  %122 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %40) #6, !dbg !1533
  %123 = icmp eq %struct.dictEntry* %122, null, !dbg !1535
  br i1 %123, label %124, label %51, !dbg !1536, !llvm.loop !1600

; <label>:124:                                    ; preds = %120, %47
  %125 = phi i64 [ 0, %47 ], [ %121, %120 ], !dbg !1520
  tail call void @dictReleaseIterator(%struct.dictIterator* %40) #6, !dbg !1602
  tail call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %35, i64 %125) #6, !dbg !1603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1604
  ret void, !dbg !1604
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
define dso_local i32 @keyIsExpired(%struct.redisDb* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !1605 {
  %3 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !1623
  %4 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !1623, !tbaa !347
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %4, i64 0, i32 2, i64 0, i32 3, !dbg !1623
  %6 = load i64, i64* %5, align 8, !dbg !1623, !tbaa !348
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %4, i64 0, i32 2, i64 1, i32 3, !dbg !1623
  %8 = load i64, i64* %7, align 8, !dbg !1623, !tbaa !348
  %9 = sub i64 0, %8, !dbg !1625
  %10 = icmp eq i64 %6, %9, !dbg !1625
  br i1 %10, label %23, label %11, !dbg !1626

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !1627
  %13 = load i8*, i8** %12, align 8, !dbg !1627, !tbaa !215
  %14 = tail call %struct.dictEntry* @dictFind(%struct.dict* %4, i8* %13) #6, !dbg !1628
  %15 = icmp eq %struct.dictEntry* %14, null, !dbg !1630
  br i1 %15, label %23, label %16, !dbg !1631

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !1632
  %18 = load %struct.dict*, %struct.dict** %17, align 8, !dbg !1632, !tbaa !207
  %19 = load i8*, i8** %12, align 8, !dbg !1632, !tbaa !215
  %20 = tail call %struct.dictEntry* @dictFind(%struct.dict* %18, i8* %19) #6, !dbg !1632
  %21 = icmp eq %struct.dictEntry* %20, null, !dbg !1632
  br i1 %21, label %22, label %24, !dbg !1632

; <label>:22:                                     ; preds = %16
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 1101) #6, !dbg !1632
  tail call void @_exit(i32 1) #9, !dbg !1632
  unreachable, !dbg !1632

; <label>:23:                                     ; preds = %11, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1633
  br label %43, !dbg !1635

; <label>:24:                                     ; preds = %16
  %25 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %14, i64 0, i32 1, !dbg !1636
  %26 = bitcast %union.anon* %25 to i64*, !dbg !1636
  %27 = load i64, i64* %26, align 8, !dbg !1636, !tbaa !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1633
  %28 = icmp sgt i64 %27, -1, !dbg !1637
  %29 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !1639
  %30 = icmp eq i32 %29, 0, !dbg !1641
  %31 = and i1 %28, %30, !dbg !1635
  br i1 %31, label %32, label %43, !dbg !1635

; <label>:32:                                     ; preds = %24
  %33 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !1642, !tbaa !1643
  %34 = icmp eq %struct.client* %33, null, !dbg !1644
  br i1 %34, label %37, label %35, !dbg !1644

; <label>:35:                                     ; preds = %32
  %36 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 276), align 8, !dbg !1645, !tbaa !1646
  br label %39, !dbg !1644

; <label>:37:                                     ; preds = %32
  %38 = tail call i64 @mstime() #6, !dbg !1647
  br label %39, !dbg !1644

; <label>:39:                                     ; preds = %37, %35
  %40 = phi i64 [ %36, %35 ], [ %38, %37 ], !dbg !1644
  %41 = icmp sgt i64 %40, %27, !dbg !1649
  %42 = zext i1 %41 to i32, !dbg !1649
  br label %43

; <label>:43:                                     ; preds = %23, %24, %39
  %44 = phi i32 [ %42, %39 ], [ 0, %24 ], [ 0, %23 ], !dbg !1650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1651
  ret i32 %44, !dbg !1651
}

; Function Attrs: noredzone
declare dso_local void @dictReleaseIterator(%struct.dictIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @setDeferredMultiBulkLength(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @scanCallback(i8* nocapture readonly, %struct.dictEntry* nocapture readonly) #0 !dbg !1652 {
  %3 = bitcast i8* %0 to %struct.list**, !dbg !1681
  %4 = load %struct.list*, %struct.list** %3, align 8, !dbg !1681, !tbaa !1135
  %5 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1683
  %6 = bitcast i8* %5 to %struct.redisObject**, !dbg !1683
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1683, !tbaa !1135
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !1686
  br i1 %8, label %9, label %39, !dbg !1687

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 0, !dbg !1688
  %11 = load i8*, i8** %10, align 8, !dbg !1688, !tbaa !815
  %12 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !1692
  %13 = load i8, i8* %12, align 1, !dbg !1692, !tbaa !222
  %14 = trunc i8 %13 to i3, !dbg !1694
  switch i3 %14, label %36 [
    i3 0, label %15
    i3 1, label %18
    i3 2, label %22
    i3 3, label %27
    i3 -4, label %32
  ], !dbg !1694

; <label>:15:                                     ; preds = %9
  %16 = lshr i8 %13, 3, !dbg !1695
  %17 = zext i8 %16 to i64, !dbg !1695
  br label %36, !dbg !1696

; <label>:18:                                     ; preds = %9
  %19 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !1697
  %20 = load i8, i8* %19, align 1, !dbg !1698, !tbaa !222
  %21 = zext i8 %20 to i64, !dbg !1697
  br label %36, !dbg !1699

; <label>:22:                                     ; preds = %9
  %23 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !1700
  %24 = bitcast i8* %23 to i16*, !dbg !1701
  %25 = load i16, i16* %24, align 1, !dbg !1701, !tbaa !840
  %26 = zext i16 %25 to i64, !dbg !1700
  br label %36, !dbg !1702

; <label>:27:                                     ; preds = %9
  %28 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !1703
  %29 = bitcast i8* %28 to i32*, !dbg !1704
  %30 = load i32, i32* %29, align 1, !dbg !1704, !tbaa !845
  %31 = zext i32 %30 to i64, !dbg !1703
  br label %36, !dbg !1705

; <label>:32:                                     ; preds = %9
  %33 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !1706
  %34 = bitcast i8* %33 to i64*, !dbg !1707
  %35 = load i64, i64* %34, align 1, !dbg !1707, !tbaa !849
  br label %36, !dbg !1708

; <label>:36:                                     ; preds = %9, %15, %18, %22, %27, %32
  %37 = phi i64 [ %35, %32 ], [ %31, %27 ], [ %26, %22 ], [ %21, %18 ], [ %17, %15 ], [ 0, %9 ], !dbg !1709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1710
  %38 = tail call %struct.redisObject* @createStringObject(i8* %11, i64 %37) #6, !dbg !1711
  br label %169, !dbg !1713

; <label>:39:                                     ; preds = %2
  %40 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 0, !dbg !1714
  %41 = load i32, i32* %40, align 8, !dbg !1714
  %42 = trunc i32 %41 to i4, !dbg !1715
  switch i4 %42, label %168 [
    i4 2, label %43
    i4 4, label %73
    i4 3, label %132
  ], !dbg !1715

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 0, !dbg !1716
  %45 = load i8*, i8** %44, align 8, !dbg !1716, !tbaa !815
  %46 = getelementptr inbounds i8, i8* %45, i64 -1, !dbg !1720
  %47 = load i8, i8* %46, align 1, !dbg !1720, !tbaa !222
  %48 = trunc i8 %47 to i3, !dbg !1722
  switch i3 %48, label %70 [
    i3 0, label %49
    i3 1, label %52
    i3 2, label %56
    i3 3, label %61
    i3 -4, label %66
  ], !dbg !1722

; <label>:49:                                     ; preds = %43
  %50 = lshr i8 %47, 3, !dbg !1723
  %51 = zext i8 %50 to i64, !dbg !1723
  br label %70, !dbg !1724

; <label>:52:                                     ; preds = %43
  %53 = getelementptr inbounds i8, i8* %45, i64 -3, !dbg !1725
  %54 = load i8, i8* %53, align 1, !dbg !1726, !tbaa !222
  %55 = zext i8 %54 to i64, !dbg !1725
  br label %70, !dbg !1727

; <label>:56:                                     ; preds = %43
  %57 = getelementptr inbounds i8, i8* %45, i64 -5, !dbg !1728
  %58 = bitcast i8* %57 to i16*, !dbg !1729
  %59 = load i16, i16* %58, align 1, !dbg !1729, !tbaa !840
  %60 = zext i16 %59 to i64, !dbg !1728
  br label %70, !dbg !1730

; <label>:61:                                     ; preds = %43
  %62 = getelementptr inbounds i8, i8* %45, i64 -9, !dbg !1731
  %63 = bitcast i8* %62 to i32*, !dbg !1732
  %64 = load i32, i32* %63, align 1, !dbg !1732, !tbaa !845
  %65 = zext i32 %64 to i64, !dbg !1731
  br label %70, !dbg !1733

; <label>:66:                                     ; preds = %43
  %67 = getelementptr inbounds i8, i8* %45, i64 -17, !dbg !1734
  %68 = bitcast i8* %67 to i64*, !dbg !1735
  %69 = load i64, i64* %68, align 1, !dbg !1735, !tbaa !849
  br label %70, !dbg !1736

; <label>:70:                                     ; preds = %43, %49, %52, %56, %61, %66
  %71 = phi i64 [ %69, %66 ], [ %65, %61 ], [ %60, %56 ], [ %55, %52 ], [ %51, %49 ], [ 0, %43 ], !dbg !1737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1738
  %72 = tail call %struct.redisObject* @createStringObject(i8* %45, i64 %71) #6, !dbg !1739
  br label %169, !dbg !1740

; <label>:73:                                     ; preds = %39
  %74 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 0, !dbg !1741
  %75 = load i8*, i8** %74, align 8, !dbg !1741, !tbaa !815
  %76 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 1, i32 0, !dbg !1743
  %77 = load i8*, i8** %76, align 8, !dbg !1743, !tbaa !222
  %78 = getelementptr inbounds i8, i8* %75, i64 -1, !dbg !1747
  %79 = load i8, i8* %78, align 1, !dbg !1747, !tbaa !222
  %80 = trunc i8 %79 to i3, !dbg !1749
  switch i3 %80, label %102 [
    i3 0, label %81
    i3 1, label %84
    i3 2, label %88
    i3 3, label %93
    i3 -4, label %98
  ], !dbg !1749

; <label>:81:                                     ; preds = %73
  %82 = lshr i8 %79, 3, !dbg !1750
  %83 = zext i8 %82 to i64, !dbg !1750
  br label %102, !dbg !1751

; <label>:84:                                     ; preds = %73
  %85 = getelementptr inbounds i8, i8* %75, i64 -3, !dbg !1752
  %86 = load i8, i8* %85, align 1, !dbg !1753, !tbaa !222
  %87 = zext i8 %86 to i64, !dbg !1752
  br label %102, !dbg !1754

; <label>:88:                                     ; preds = %73
  %89 = getelementptr inbounds i8, i8* %75, i64 -5, !dbg !1755
  %90 = bitcast i8* %89 to i16*, !dbg !1756
  %91 = load i16, i16* %90, align 1, !dbg !1756, !tbaa !840
  %92 = zext i16 %91 to i64, !dbg !1755
  br label %102, !dbg !1757

; <label>:93:                                     ; preds = %73
  %94 = getelementptr inbounds i8, i8* %75, i64 -9, !dbg !1758
  %95 = bitcast i8* %94 to i32*, !dbg !1759
  %96 = load i32, i32* %95, align 1, !dbg !1759, !tbaa !845
  %97 = zext i32 %96 to i64, !dbg !1758
  br label %102, !dbg !1760

; <label>:98:                                     ; preds = %73
  %99 = getelementptr inbounds i8, i8* %75, i64 -17, !dbg !1761
  %100 = bitcast i8* %99 to i64*, !dbg !1762
  %101 = load i64, i64* %100, align 1, !dbg !1762, !tbaa !849
  br label %102, !dbg !1763

; <label>:102:                                    ; preds = %73, %81, %84, %88, %93, %98
  %103 = phi i64 [ %101, %98 ], [ %97, %93 ], [ %92, %88 ], [ %87, %84 ], [ %83, %81 ], [ 0, %73 ], !dbg !1764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1765
  %104 = tail call %struct.redisObject* @createStringObject(i8* %75, i64 %103) #6, !dbg !1766
  %105 = getelementptr inbounds i8, i8* %77, i64 -1, !dbg !1769
  %106 = load i8, i8* %105, align 1, !dbg !1769, !tbaa !222
  %107 = trunc i8 %106 to i3, !dbg !1771
  switch i3 %107, label %129 [
    i3 0, label %108
    i3 1, label %111
    i3 2, label %115
    i3 3, label %120
    i3 -4, label %125
  ], !dbg !1771

; <label>:108:                                    ; preds = %102
  %109 = lshr i8 %106, 3, !dbg !1772
  %110 = zext i8 %109 to i64, !dbg !1772
  br label %129, !dbg !1773

; <label>:111:                                    ; preds = %102
  %112 = getelementptr inbounds i8, i8* %77, i64 -3, !dbg !1774
  %113 = load i8, i8* %112, align 1, !dbg !1775, !tbaa !222
  %114 = zext i8 %113 to i64, !dbg !1774
  br label %129, !dbg !1776

; <label>:115:                                    ; preds = %102
  %116 = getelementptr inbounds i8, i8* %77, i64 -5, !dbg !1777
  %117 = bitcast i8* %116 to i16*, !dbg !1778
  %118 = load i16, i16* %117, align 1, !dbg !1778, !tbaa !840
  %119 = zext i16 %118 to i64, !dbg !1777
  br label %129, !dbg !1779

; <label>:120:                                    ; preds = %102
  %121 = getelementptr inbounds i8, i8* %77, i64 -9, !dbg !1780
  %122 = bitcast i8* %121 to i32*, !dbg !1781
  %123 = load i32, i32* %122, align 1, !dbg !1781, !tbaa !845
  %124 = zext i32 %123 to i64, !dbg !1780
  br label %129, !dbg !1782

; <label>:125:                                    ; preds = %102
  %126 = getelementptr inbounds i8, i8* %77, i64 -17, !dbg !1783
  %127 = bitcast i8* %126 to i64*, !dbg !1784
  %128 = load i64, i64* %127, align 1, !dbg !1784, !tbaa !849
  br label %129, !dbg !1785

; <label>:129:                                    ; preds = %102, %108, %111, %115, %120, %125
  %130 = phi i64 [ %128, %125 ], [ %124, %120 ], [ %119, %115 ], [ %114, %111 ], [ %110, %108 ], [ 0, %102 ], !dbg !1786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1787
  %131 = tail call %struct.redisObject* @createStringObject(i8* nonnull %77, i64 %130) #6, !dbg !1788
  br label %173, !dbg !1789

; <label>:132:                                    ; preds = %39
  %133 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 0, !dbg !1790
  %134 = load i8*, i8** %133, align 8, !dbg !1790, !tbaa !815
  %135 = getelementptr inbounds i8, i8* %134, i64 -1, !dbg !1794
  %136 = load i8, i8* %135, align 1, !dbg !1794, !tbaa !222
  %137 = trunc i8 %136 to i3, !dbg !1796
  switch i3 %137, label %159 [
    i3 0, label %138
    i3 1, label %141
    i3 2, label %145
    i3 3, label %150
    i3 -4, label %155
  ], !dbg !1796

; <label>:138:                                    ; preds = %132
  %139 = lshr i8 %136, 3, !dbg !1797
  %140 = zext i8 %139 to i64, !dbg !1797
  br label %159, !dbg !1798

; <label>:141:                                    ; preds = %132
  %142 = getelementptr inbounds i8, i8* %134, i64 -3, !dbg !1799
  %143 = load i8, i8* %142, align 1, !dbg !1800, !tbaa !222
  %144 = zext i8 %143 to i64, !dbg !1799
  br label %159, !dbg !1801

; <label>:145:                                    ; preds = %132
  %146 = getelementptr inbounds i8, i8* %134, i64 -5, !dbg !1802
  %147 = bitcast i8* %146 to i16*, !dbg !1803
  %148 = load i16, i16* %147, align 1, !dbg !1803, !tbaa !840
  %149 = zext i16 %148 to i64, !dbg !1802
  br label %159, !dbg !1804

; <label>:150:                                    ; preds = %132
  %151 = getelementptr inbounds i8, i8* %134, i64 -9, !dbg !1805
  %152 = bitcast i8* %151 to i32*, !dbg !1806
  %153 = load i32, i32* %152, align 1, !dbg !1806, !tbaa !845
  %154 = zext i32 %153 to i64, !dbg !1805
  br label %159, !dbg !1807

; <label>:155:                                    ; preds = %132
  %156 = getelementptr inbounds i8, i8* %134, i64 -17, !dbg !1808
  %157 = bitcast i8* %156 to i64*, !dbg !1809
  %158 = load i64, i64* %157, align 1, !dbg !1809, !tbaa !849
  br label %159, !dbg !1810

; <label>:159:                                    ; preds = %132, %138, %141, %145, %150, %155
  %160 = phi i64 [ %158, %155 ], [ %154, %150 ], [ %149, %145 ], [ %144, %141 ], [ %140, %138 ], [ 0, %132 ], !dbg !1811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1812
  %161 = tail call %struct.redisObject* @createStringObject(i8* %134, i64 %160) #6, !dbg !1813
  %162 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 1, i32 0, !dbg !1814
  %163 = bitcast i8** %162 to double**, !dbg !1814
  %164 = load double*, double** %163, align 8, !dbg !1814, !tbaa !222
  %165 = load double, double* %164, align 8, !dbg !1815, !tbaa !1816
  %166 = fpext double %165 to x86_fp80, !dbg !1815
  %167 = tail call %struct.redisObject* @createStringObjectFromLongDouble(x86_fp80 %166, i32 0) #6, !dbg !1817
  br label %173

; <label>:168:                                    ; preds = %39
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 587, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !1818
  tail call void @_exit(i32 1) #9, !dbg !1818
  unreachable, !dbg !1818

; <label>:169:                                    ; preds = %36, %70
  %170 = phi %struct.redisObject* [ %72, %70 ], [ %38, %36 ]
  %171 = bitcast %struct.redisObject* %170 to i8*, !dbg !1820
  %172 = tail call %struct.list* @listAddNodeTail(%struct.list* %4, i8* %171) #6, !dbg !1821
  br label %182, !dbg !1822

; <label>:173:                                    ; preds = %159, %129
  %174 = phi %struct.redisObject* [ %131, %129 ], [ %167, %159 ], !dbg !1823
  %175 = phi %struct.redisObject* [ %104, %129 ], [ %161, %159 ], !dbg !1823
  %176 = bitcast %struct.redisObject* %175 to i8*, !dbg !1820
  %177 = tail call %struct.list* @listAddNodeTail(%struct.list* %4, i8* %176) #6, !dbg !1821
  %178 = icmp eq %struct.redisObject* %174, null, !dbg !1824
  br i1 %178, label %182, label %179, !dbg !1822

; <label>:179:                                    ; preds = %173
  %180 = bitcast %struct.redisObject* %174 to i8*, !dbg !1826
  %181 = tail call %struct.list* @listAddNodeTail(%struct.list* %4, i8* %180) #6, !dbg !1827
  br label %182, !dbg !1827

; <label>:182:                                    ; preds = %169, %173, %179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1828
  ret void, !dbg !1828
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObjectFromLongDouble(x86_fp80, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @parseScanCursorOrReply(%struct.client*, %struct.redisObject* nocapture readonly, i64* nocapture) local_unnamed_addr #0 !dbg !1829 {
  %4 = alloca i8*, align 8
  %5 = bitcast i8** %4 to i8*, !dbg !1841
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !1841
  %6 = tail call i32* @__errno() #6, !dbg !1842
  store i32 0, i32* %6, align 4, !dbg !1843, !tbaa !845
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !1844
  %8 = load i8*, i8** %7, align 8, !dbg !1844, !tbaa !215
  %9 = call i64 @strtoul(i8* %8, i8** nonnull %4, i32 10) #6, !dbg !1846
  store i64 %9, i64* %2, align 8, !dbg !1847, !tbaa !849
  %10 = call i8* @__locale_ctype_ptr() #6, !dbg !1848
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1848
  %12 = load i8*, i8** %7, align 8, !dbg !1848, !tbaa !215
  %13 = load i8, i8* %12, align 1, !dbg !1848, !tbaa !222
  %14 = sext i8 %13 to i64, !dbg !1848
  %15 = getelementptr inbounds i8, i8* %11, i64 %14, !dbg !1848
  %16 = load i8, i8* %15, align 1, !dbg !1848, !tbaa !222
  %17 = and i8 %16, 8, !dbg !1848
  %18 = icmp eq i8 %17, 0, !dbg !1848
  br i1 %18, label %19, label %27, !dbg !1850

; <label>:19:                                     ; preds = %3
  %20 = load i8*, i8** %4, align 8, !dbg !1851, !tbaa !1135
  %21 = load i8, i8* %20, align 1, !dbg !1851, !tbaa !222
  %22 = icmp eq i8 %21, 0, !dbg !1852
  br i1 %22, label %23, label %27, !dbg !1853

; <label>:23:                                     ; preds = %19
  %24 = call i32* @__errno() #6, !dbg !1854
  %25 = load i32, i32* %24, align 4, !dbg !1854, !tbaa !845
  %26 = icmp eq i32 %25, 34, !dbg !1855
  br i1 %26, label %27, label %28, !dbg !1856

; <label>:27:                                     ; preds = %19, %3, %23
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !1857
  br label %28, !dbg !1859

; <label>:28:                                     ; preds = %23, %27
  %29 = phi i32 [ -1, %27 ], [ 0, %23 ], !dbg !1860
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !1861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1861
  ret i32 %29, !dbg !1861
}

; Function Attrs: noredzone
declare dso_local i64 @strtoul(i8*, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @scanGenericCommand(%struct.client*, %struct.redisObject*, i64) local_unnamed_addr #0 !dbg !1862 {
  %4 = alloca i64, align 8
  %5 = alloca [2 x i8*], align 16
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [21 x i8], align 16
  %11 = tail call %struct.list* @listCreate() #6, !dbg !1944
  %12 = bitcast i64* %4 to i8*, !dbg !1946
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #7, !dbg !1946
  store i64 10, i64* %4, align 8, !dbg !1947, !tbaa !849
  %13 = icmp eq %struct.redisObject* %1, null, !dbg !1951
  br i1 %13, label %21, label %14, !dbg !1951

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !1951
  %16 = load i32, i32* %15, align 8, !dbg !1951
  %17 = and i32 %16, 15, !dbg !1951
  %18 = add nsw i32 %17, -2, !dbg !1951
  %19 = icmp ult i32 %18, 3, !dbg !1951
  br i1 %19, label %21, label %20, !dbg !1951

; <label>:20:                                     ; preds = %14
  tail call void @_serverAssert(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 636) #6, !dbg !1951
  tail call void @_exit(i32 1) #9, !dbg !1951
  unreachable, !dbg !1951

; <label>:21:                                     ; preds = %14, %3
  %22 = select i1 %13, i32 2, i32 3, !dbg !1952
  %23 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1954
  %24 = load i32, i32* %23, align 8, !dbg !1954, !tbaa !1125
  %25 = icmp sgt i32 %24, %22, !dbg !1955
  br i1 %25, label %26, label %113, !dbg !1956

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %28 = zext i32 %22 to i64, !dbg !1956
  br label %29, !dbg !1956

; <label>:29:                                     ; preds = %26, %104
  %30 = phi i64 [ 10, %26 ], [ %105, %104 ]
  %31 = phi i32 [ %24, %26 ], [ %106, %104 ]
  %32 = phi i64 [ %28, %26 ], [ %110, %104 ]
  %33 = phi i32 [ 0, %26 ], [ %109, %104 ]
  %34 = phi i32 [ 0, %26 ], [ %108, %104 ]
  %35 = phi i8* [ null, %26 ], [ %107, %104 ]
  %36 = trunc i64 %32 to i32, !dbg !1957
  %37 = sub nsw i32 %31, %36, !dbg !1957
  %38 = load %struct.redisObject**, %struct.redisObject*** %27, align 8, !dbg !1960, !tbaa !1133
  %39 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %38, i64 %32, !dbg !1962
  %40 = load %struct.redisObject*, %struct.redisObject** %39, align 8, !dbg !1962, !tbaa !1135
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %40, i64 0, i32 2, !dbg !1963
  %42 = load i8*, i8** %41, align 8, !dbg !1963, !tbaa !215
  %43 = call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !1964
  %44 = icmp eq i32 %43, 0, !dbg !1964
  %45 = icmp sgt i32 %37, 1, !dbg !1965
  %46 = and i1 %45, %44, !dbg !1966
  br i1 %46, label %47, label %60, !dbg !1966

; <label>:47:                                     ; preds = %29
  %48 = add nuw nsw i64 %32, 1, !dbg !1967
  %49 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %38, i64 %48, !dbg !1970
  %50 = load %struct.redisObject*, %struct.redisObject** %49, align 8, !dbg !1970, !tbaa !1135
  %51 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %50, i64* nonnull %4, i8* null) #6, !dbg !1971
  %52 = icmp eq i32 %51, 0, !dbg !1972
  br i1 %52, label %53, label %324, !dbg !1973

; <label>:53:                                     ; preds = %47
  %54 = load i64, i64* %4, align 8, !dbg !1974, !tbaa !849
  %55 = icmp slt i64 %54, 1, !dbg !1976
  br i1 %55, label %58, label %56, !dbg !1977

; <label>:56:                                     ; preds = %53
  %57 = load i32, i32* %23, align 8, !dbg !1954, !tbaa !1125
  br label %104, !dbg !1977

; <label>:58:                                     ; preds = %53
  %59 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1978, !tbaa !1141
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %59) #6, !dbg !1980
  br label %324, !dbg !1981

; <label>:60:                                     ; preds = %29
  %61 = call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !1982
  %62 = icmp eq i32 %61, 0, !dbg !1982
  %63 = and i1 %45, %62, !dbg !1984
  br i1 %63, label %64, label %102, !dbg !1984

; <label>:64:                                     ; preds = %60
  %65 = add nuw nsw i64 %32, 1, !dbg !1985
  %66 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %38, i64 %65, !dbg !1987
  %67 = load %struct.redisObject*, %struct.redisObject** %66, align 8, !dbg !1987, !tbaa !1135
  %68 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %67, i64 0, i32 2, !dbg !1988
  %69 = load i8*, i8** %68, align 8, !dbg !1988, !tbaa !215
  %70 = getelementptr inbounds i8, i8* %69, i64 -1, !dbg !1991
  %71 = load i8, i8* %70, align 1, !dbg !1991, !tbaa !222
  %72 = trunc i8 %71 to i3, !dbg !1993
  switch i3 %72, label %94 [
    i3 0, label %73
    i3 1, label %76
    i3 2, label %80
    i3 3, label %85
    i3 -4, label %90
  ], !dbg !1993

; <label>:73:                                     ; preds = %64
  %74 = lshr i8 %71, 3, !dbg !1994
  %75 = zext i8 %74 to i64, !dbg !1994
  br label %94, !dbg !1995

; <label>:76:                                     ; preds = %64
  %77 = getelementptr inbounds i8, i8* %69, i64 -3, !dbg !1996
  %78 = load i8, i8* %77, align 1, !dbg !1997, !tbaa !222
  %79 = zext i8 %78 to i64, !dbg !1996
  br label %94, !dbg !1998

; <label>:80:                                     ; preds = %64
  %81 = getelementptr inbounds i8, i8* %69, i64 -5, !dbg !1999
  %82 = bitcast i8* %81 to i16*, !dbg !2000
  %83 = load i16, i16* %82, align 1, !dbg !2000, !tbaa !840
  %84 = zext i16 %83 to i64, !dbg !1999
  br label %94, !dbg !2001

; <label>:85:                                     ; preds = %64
  %86 = getelementptr inbounds i8, i8* %69, i64 -9, !dbg !2002
  %87 = bitcast i8* %86 to i32*, !dbg !2003
  %88 = load i32, i32* %87, align 1, !dbg !2003, !tbaa !845
  %89 = zext i32 %88 to i64, !dbg !2002
  br label %94, !dbg !2004

; <label>:90:                                     ; preds = %64
  %91 = getelementptr inbounds i8, i8* %69, i64 -17, !dbg !2005
  %92 = bitcast i8* %91 to i64*, !dbg !2006
  %93 = load i64, i64* %92, align 1, !dbg !2006, !tbaa !849
  br label %94, !dbg !2007

; <label>:94:                                     ; preds = %64, %73, %76, %80, %85, %90
  %95 = phi i64 [ %93, %90 ], [ %89, %85 ], [ %84, %80 ], [ %79, %76 ], [ %75, %73 ], [ 0, %64 ], !dbg !2008
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2009
  %96 = trunc i64 %95 to i32, !dbg !2010
  %97 = load i8, i8* %69, align 1, !dbg !2011, !tbaa !222
  %98 = icmp ne i8 %97, 42, !dbg !2012
  %99 = icmp ne i32 %96, 1, !dbg !2013
  %100 = or i1 %99, %98, !dbg !2014
  %101 = zext i1 %100 to i32, !dbg !2014
  br label %104

; <label>:102:                                    ; preds = %60
  %103 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !2015, !tbaa !1141
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %103) #6, !dbg !2017
  br label %324, !dbg !2018

; <label>:104:                                    ; preds = %56, %94
  %105 = phi i64 [ %30, %94 ], [ %54, %56 ]
  %106 = phi i32 [ %31, %94 ], [ %57, %56 ], !dbg !1954
  %107 = phi i8* [ %69, %94 ], [ %35, %56 ], !dbg !2019
  %108 = phi i32 [ %96, %94 ], [ %34, %56 ], !dbg !2019
  %109 = phi i32 [ %101, %94 ], [ %33, %56 ], !dbg !2019
  %110 = add nuw i64 %32, 2, !dbg !2019
  %111 = trunc i64 %110 to i32, !dbg !1955
  %112 = icmp sgt i32 %106, %111, !dbg !1955
  br i1 %112, label %29, label %113, !dbg !1956, !llvm.loop !2020

; <label>:113:                                    ; preds = %104, %21
  %114 = phi i64 [ 10, %21 ], [ %105, %104 ]
  %115 = phi i8* [ null, %21 ], [ %107, %104 ], !dbg !1948
  %116 = phi i32 [ 0, %21 ], [ %108, %104 ], !dbg !1949
  %117 = phi i32 [ 0, %21 ], [ %109, %104 ], !dbg !1950
  br i1 %13, label %118, label %123, !dbg !2023

; <label>:118:                                    ; preds = %113
  %119 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2024
  %120 = load %struct.redisDb*, %struct.redisDb** %119, align 8, !dbg !2024, !tbaa !567
  %121 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %120, i64 0, i32 0, !dbg !2026
  %122 = load %struct.dict*, %struct.dict** %121, align 8, !dbg !2026, !tbaa !207
  br label %143, !dbg !2027

; <label>:123:                                    ; preds = %113
  %124 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !2028
  %125 = load i32, i32* %124, align 8, !dbg !2028
  %126 = trunc i32 %125 to i8, !dbg !2029
  switch i8 %126, label %170 [
    i8 34, label %127
    i8 36, label %131
    i8 115, label %136
  ], !dbg !2029

; <label>:127:                                    ; preds = %123
  %128 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2030
  %129 = bitcast i8** %128 to %struct.dict**, !dbg !2030
  %130 = load %struct.dict*, %struct.dict** %129, align 8, !dbg !2030, !tbaa !215
  br label %143, !dbg !2032

; <label>:131:                                    ; preds = %123
  %132 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2033
  %133 = bitcast i8** %132 to %struct.dict**, !dbg !2033
  %134 = load %struct.dict*, %struct.dict** %133, align 8, !dbg !2033, !tbaa !215
  %135 = shl nsw i64 %114, 1, !dbg !2035
  store i64 %135, i64* %4, align 8, !dbg !2035, !tbaa !849
  br label %143, !dbg !2036

; <label>:136:                                    ; preds = %123
  %137 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2037
  %138 = bitcast i8** %137 to %struct.zset**, !dbg !2037
  %139 = load %struct.zset*, %struct.zset** %138, align 8, !dbg !2037, !tbaa !215
  %140 = getelementptr inbounds %struct.zset, %struct.zset* %139, i64 0, i32 0, !dbg !2039
  %141 = load %struct.dict*, %struct.dict** %140, align 8, !dbg !2039, !tbaa !2040
  %142 = shl nsw i64 %114, 1, !dbg !2042
  store i64 %142, i64* %4, align 8, !dbg !2042, !tbaa !849
  br label %143, !dbg !2043

; <label>:143:                                    ; preds = %127, %136, %131, %118
  %144 = phi i64 [ %114, %118 ], [ %114, %127 ], [ %135, %131 ], [ %142, %136 ]
  %145 = phi %struct.dict* [ %122, %118 ], [ %130, %127 ], [ %134, %131 ], [ %141, %136 ], !dbg !2044
  %146 = icmp eq %struct.dict* %145, null, !dbg !2045
  br i1 %146, label %147, label %150, !dbg !2046

; <label>:147:                                    ; preds = %143
  %148 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0
  %149 = load i32, i32* %148, align 8, !dbg !2047
  br label %170, !dbg !2046

; <label>:150:                                    ; preds = %143
  %151 = bitcast [2 x i8*]* %5 to i8*, !dbg !2048
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %151) #7, !dbg !2048
  %152 = mul nsw i64 %144, 10, !dbg !2050
  %153 = bitcast [2 x i8*]* %5 to %struct.list**, !dbg !2052
  store %struct.list* %11, %struct.list** %153, align 16, !dbg !2052, !tbaa !1135
  %154 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1, !dbg !2053
  %155 = bitcast i8** %154 to %struct.redisObject**, !dbg !2054
  store %struct.redisObject* %1, %struct.redisObject** %155, align 8, !dbg !2054, !tbaa !1135
  %156 = getelementptr inbounds %struct.list, %struct.list* %11, i64 0, i32 5
  br label %157, !dbg !2055

; <label>:157:                                    ; preds = %164, %150
  %158 = phi i64 [ %152, %150 ], [ %165, %164 ], !dbg !2056
  %159 = phi i64 [ %2, %150 ], [ %160, %164 ]
  %160 = call i64 @dictScan(%struct.dict* nonnull %145, i64 %159, void (i8*, %struct.dictEntry*)* nonnull @scanCallback, void (i8*, %struct.dictEntry**)* null, i8* nonnull %151) #6, !dbg !2057
  %161 = icmp eq i64 %160, 0, !dbg !2059
  %162 = icmp eq i64 %158, 0, !dbg !2060
  %163 = or i1 %162, %161, !dbg !2061
  br i1 %163, label %169, label %164, !dbg !2061

; <label>:164:                                    ; preds = %157
  %165 = add nsw i64 %158, -1, !dbg !2060
  %166 = load i64, i64* %156, align 8, !dbg !2062, !tbaa !2063
  %167 = load i64, i64* %4, align 8, !dbg !2065, !tbaa !849
  %168 = icmp ult i64 %166, %167, !dbg !2066
  br i1 %168, label %157, label %169, !dbg !2067, !llvm.loop !2068

; <label>:169:                                    ; preds = %157, %164
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %151) #7, !dbg !2070
  br label %220, !dbg !2071

; <label>:170:                                    ; preds = %123, %147
  %171 = phi i32 [ %149, %147 ], [ %125, %123 ], !dbg !2047
  %172 = trunc i32 %171 to i4, !dbg !2072
  switch i4 %172, label %219 [
    i4 2, label %173
    i4 4, label %191
    i4 3, label %191
  ], !dbg !2072

; <label>:173:                                    ; preds = %170
  %174 = bitcast i64* %6 to i8*, !dbg !2074
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %174) #7, !dbg !2074
  %175 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2075
  %176 = bitcast i8** %175 to %struct.intset**, !dbg !2075
  %177 = load %struct.intset*, %struct.intset** %176, align 8, !dbg !2075, !tbaa !215
  %178 = call zeroext i8 @intsetGet(%struct.intset* %177, i32 0, i64* nonnull %6) #6, !dbg !2077
  %179 = icmp eq i8 %178, 0, !dbg !2078
  br i1 %179, label %190, label %180, !dbg !2078

; <label>:180:                                    ; preds = %173, %180
  %181 = phi i32 [ %182, %180 ], [ 0, %173 ]
  %182 = add nuw nsw i32 %181, 1, !dbg !2079
  %183 = load i64, i64* %6, align 8, !dbg !2080, !tbaa !849
  %184 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %183) #6, !dbg !2081
  %185 = bitcast %struct.redisObject* %184 to i8*, !dbg !2081
  %186 = call %struct.list* @listAddNodeTail(%struct.list* %11, i8* %185) #6, !dbg !2082
  %187 = load %struct.intset*, %struct.intset** %176, align 8, !dbg !2075, !tbaa !215
  %188 = call zeroext i8 @intsetGet(%struct.intset* %187, i32 %182, i64* nonnull %6) #6, !dbg !2077
  %189 = icmp eq i8 %188, 0, !dbg !2078
  br i1 %189, label %190, label %180, !dbg !2078, !llvm.loop !2083

; <label>:190:                                    ; preds = %180, %173
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %174) #7, !dbg !2085
  br label %220, !dbg !2086

; <label>:191:                                    ; preds = %170, %170
  %192 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2087
  %193 = load i8*, i8** %192, align 8, !dbg !2087, !tbaa !215
  %194 = call i8* @ziplistIndex(i8* %193, i32 0) #6, !dbg !2088
  %195 = bitcast i8** %7 to i8*, !dbg !2090
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %195) #7, !dbg !2090
  %196 = bitcast i32* %8 to i8*, !dbg !2091
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %196) #7, !dbg !2091
  %197 = bitcast i64* %9 to i8*, !dbg !2092
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %197) #7, !dbg !2092
  %198 = icmp eq i8* %194, null, !dbg !2093
  br i1 %198, label %218, label %199, !dbg !2093

; <label>:199:                                    ; preds = %191, %211
  %200 = phi i8* [ %216, %211 ], [ %194, %191 ]
  %201 = call i32 @ziplistGet(i8* nonnull %200, i8** nonnull %7, i32* nonnull %8, i64* nonnull %9) #6, !dbg !2097
  %202 = load i8*, i8** %7, align 8, !dbg !2099, !tbaa !1135
  %203 = icmp eq i8* %202, null, !dbg !2100
  br i1 %203, label %208, label %204, !dbg !2101

; <label>:204:                                    ; preds = %199
  %205 = load i32, i32* %8, align 4, !dbg !2102, !tbaa !845
  %206 = zext i32 %205 to i64, !dbg !2102
  %207 = call %struct.redisObject* @createStringObject(i8* nonnull %202, i64 %206) #6, !dbg !2103
  br label %211, !dbg !2101

; <label>:208:                                    ; preds = %199
  %209 = load i64, i64* %9, align 8, !dbg !2104, !tbaa !310
  %210 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %209) #6, !dbg !2105
  br label %211, !dbg !2101

; <label>:211:                                    ; preds = %208, %204
  %212 = phi %struct.redisObject* [ %207, %204 ], [ %210, %208 ], !dbg !2101
  %213 = bitcast %struct.redisObject* %212 to i8*, !dbg !2101
  %214 = call %struct.list* @listAddNodeTail(%struct.list* %11, i8* %213) #6, !dbg !2106
  %215 = load i8*, i8** %192, align 8, !dbg !2107, !tbaa !215
  %216 = call i8* @ziplistNext(i8* %215, i8* nonnull %200) #6, !dbg !2108
  %217 = icmp eq i8* %216, null, !dbg !2093
  br i1 %217, label %218, label %199, !dbg !2093, !llvm.loop !2109

; <label>:218:                                    ; preds = %211, %191
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %197) #7, !dbg !2111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %196) #7, !dbg !2111
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %195) #7, !dbg !2111
  br label %220

; <label>:219:                                    ; preds = %170
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 735, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !2112
  call void @_exit(i32 1) #9, !dbg !2112
  unreachable, !dbg !2112

; <label>:220:                                    ; preds = %190, %218, %169
  %221 = phi i64 [ %160, %169 ], [ 0, %190 ], [ 0, %218 ], !dbg !2114
  %222 = getelementptr inbounds %struct.list, %struct.list* %11, i64 0, i32 0, !dbg !2115
  %223 = load %struct.listNode*, %struct.listNode** %222, align 8, !dbg !2115, !tbaa !2116
  %224 = icmp eq %struct.listNode* %223, null, !dbg !2118
  br i1 %224, label %312, label %225, !dbg !2118

; <label>:225:                                    ; preds = %220
  %226 = icmp eq i32 %117, 0
  %227 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %228 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 0
  %229 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0
  br label %230, !dbg !2118

; <label>:230:                                    ; preds = %225, %309
  %231 = phi %struct.listNode* [ %223, %225 ], [ %310, %309 ]
  %232 = getelementptr inbounds %struct.listNode, %struct.listNode* %231, i64 0, i32 2, !dbg !2119
  %233 = bitcast i8** %232 to %struct.redisObject**, !dbg !2119
  %234 = load %struct.redisObject*, %struct.redisObject** %233, align 8, !dbg !2119, !tbaa !2120
  %235 = getelementptr inbounds %struct.listNode, %struct.listNode* %231, i64 0, i32 1, !dbg !2123
  %236 = load %struct.listNode*, %struct.listNode** %235, align 8, !dbg !2123, !tbaa !2124
  br i1 %226, label %285, label %237, !dbg !2127

; <label>:237:                                    ; preds = %230
  %238 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %234, i64 0, i32 0, !dbg !2128
  %239 = load i32, i32* %238, align 8, !dbg !2128
  %240 = lshr i32 %239, 4, !dbg !2128
  %241 = trunc i32 %240 to i4, !dbg !2128
  switch i4 %241, label %274 [
    i4 0, label %242
    i4 -8, label %242
  ], !dbg !2128

; <label>:242:                                    ; preds = %237, %237
  %243 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %234, i64 0, i32 2, !dbg !2129
  %244 = load i8*, i8** %243, align 8, !dbg !2129, !tbaa !215
  %245 = getelementptr inbounds i8, i8* %244, i64 -1, !dbg !2134
  %246 = load i8, i8* %245, align 1, !dbg !2134, !tbaa !222
  %247 = trunc i8 %246 to i3, !dbg !2136
  switch i3 %247, label %269 [
    i3 0, label %248
    i3 1, label %251
    i3 2, label %255
    i3 3, label %260
    i3 -4, label %265
  ], !dbg !2136

; <label>:248:                                    ; preds = %242
  %249 = lshr i8 %246, 3, !dbg !2137
  %250 = zext i8 %249 to i64, !dbg !2137
  br label %269, !dbg !2138

; <label>:251:                                    ; preds = %242
  %252 = getelementptr inbounds i8, i8* %244, i64 -3, !dbg !2139
  %253 = load i8, i8* %252, align 1, !dbg !2140, !tbaa !222
  %254 = zext i8 %253 to i64, !dbg !2139
  br label %269, !dbg !2141

; <label>:255:                                    ; preds = %242
  %256 = getelementptr inbounds i8, i8* %244, i64 -5, !dbg !2142
  %257 = bitcast i8* %256 to i16*, !dbg !2143
  %258 = load i16, i16* %257, align 1, !dbg !2143, !tbaa !840
  %259 = zext i16 %258 to i64, !dbg !2142
  br label %269, !dbg !2144

; <label>:260:                                    ; preds = %242
  %261 = getelementptr inbounds i8, i8* %244, i64 -9, !dbg !2145
  %262 = bitcast i8* %261 to i32*, !dbg !2146
  %263 = load i32, i32* %262, align 1, !dbg !2146, !tbaa !845
  %264 = zext i32 %263 to i64, !dbg !2145
  br label %269, !dbg !2147

; <label>:265:                                    ; preds = %242
  %266 = getelementptr inbounds i8, i8* %244, i64 -17, !dbg !2148
  %267 = bitcast i8* %266 to i64*, !dbg !2149
  %268 = load i64, i64* %267, align 1, !dbg !2149, !tbaa !849
  br label %269, !dbg !2150

; <label>:269:                                    ; preds = %242, %248, %251, %255, %260, %265
  %270 = phi i64 [ %268, %265 ], [ %264, %260 ], [ %259, %255 ], [ %254, %251 ], [ %250, %248 ], [ 0, %242 ], !dbg !2151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2152
  %271 = trunc i64 %270 to i32, !dbg !2153
  %272 = call i32 @stringmatchlen(i8* %115, i32 %116, i8* %244, i32 %271, i32 0) #6, !dbg !2154
  %273 = icmp eq i32 %272, 0, !dbg !2154
  br label %285, !dbg !2155

; <label>:274:                                    ; preds = %237
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %228) #7, !dbg !2156
  %275 = and i32 %239, 240, !dbg !2158
  %276 = icmp eq i32 %275, 16, !dbg !2158
  br i1 %276, label %278, label %277, !dbg !2158

; <label>:277:                                    ; preds = %274
  call void @_serverAssert(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 754) #6, !dbg !2158
  call void @_exit(i32 1) #9, !dbg !2158
  unreachable, !dbg !2158

; <label>:278:                                    ; preds = %274
  %279 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %234, i64 0, i32 2, !dbg !2159
  %280 = bitcast i8** %279 to i64*, !dbg !2159
  %281 = load i64, i64* %280, align 8, !dbg !2159, !tbaa !215
  %282 = call i32 @ll2string(i8* nonnull %228, i64 21, i64 %281) #6, !dbg !2160
  %283 = call i32 @stringmatchlen(i8* %115, i32 %116, i8* nonnull %228, i32 %282, i32 0) #6, !dbg !2162
  %284 = icmp eq i32 %283, 0, !dbg !2162
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %228) #7, !dbg !2164
  br label %285

; <label>:285:                                    ; preds = %269, %230, %278
  %286 = phi i1 [ %284, %278 ], [ false, %230 ], [ %273, %269 ]
  %287 = xor i1 %286, true, !dbg !2165
  %288 = and i1 %13, %287, !dbg !2167
  br i1 %288, label %289, label %293, !dbg !2167

; <label>:289:                                    ; preds = %285
  %290 = load %struct.redisDb*, %struct.redisDb** %227, align 8, !dbg !2168, !tbaa !567
  %291 = call i32 @expireIfNeeded(%struct.redisDb* %290, %struct.redisObject* %234) #8, !dbg !2169
  %292 = icmp eq i32 %291, 0, !dbg !2169
  br i1 %292, label %295, label %294

; <label>:293:                                    ; preds = %285
  br i1 %286, label %294, label %295, !dbg !2170

; <label>:294:                                    ; preds = %293, %289
  call void @decrRefCount(%struct.redisObject* %234) #6, !dbg !2171
  call void @listDelNode(%struct.list* %11, %struct.listNode* nonnull %231) #6, !dbg !2174
  br label %295, !dbg !2175

; <label>:295:                                    ; preds = %293, %289, %294
  %296 = phi i1 [ true, %294 ], [ false, %293 ], [ false, %289 ]
  br i1 %13, label %309, label %297, !dbg !2176

; <label>:297:                                    ; preds = %295
  %298 = load i32, i32* %229, align 8, !dbg !2178
  %299 = and i32 %298, 15, !dbg !2178
  %300 = add nsw i32 %299, -3, !dbg !2179
  %301 = icmp ult i32 %300, 2, !dbg !2179
  br i1 %301, label %302, label %309, !dbg !2179

; <label>:302:                                    ; preds = %297
  %303 = getelementptr inbounds %struct.listNode, %struct.listNode* %236, i64 0, i32 1, !dbg !2180
  %304 = load %struct.listNode*, %struct.listNode** %303, align 8, !dbg !2180, !tbaa !2124
  br i1 %296, label %305, label %309, !dbg !2182

; <label>:305:                                    ; preds = %302
  %306 = getelementptr inbounds %struct.listNode, %struct.listNode* %236, i64 0, i32 2, !dbg !2183
  %307 = bitcast i8** %306 to %struct.redisObject**, !dbg !2183
  %308 = load %struct.redisObject*, %struct.redisObject** %307, align 8, !dbg !2183, !tbaa !2120
  call void @decrRefCount(%struct.redisObject* %308) #6, !dbg !2186
  call void @listDelNode(%struct.list* %11, %struct.listNode* nonnull %236) #6, !dbg !2187
  br label %309, !dbg !2188

; <label>:309:                                    ; preds = %297, %295, %302, %305
  %310 = phi %struct.listNode* [ %304, %305 ], [ %304, %302 ], [ %236, %295 ], [ %236, %297 ], !dbg !2189
  %311 = icmp eq %struct.listNode* %310, null, !dbg !2118
  br i1 %311, label %312, label %230, !dbg !2118, !llvm.loop !2190

; <label>:312:                                    ; preds = %309, %220
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 2) #6, !dbg !2192
  call void @addReplyBulkLongLong(%struct.client* %0, i64 %221) #6, !dbg !2193
  %313 = getelementptr inbounds %struct.list, %struct.list* %11, i64 0, i32 5, !dbg !2194
  %314 = load i64, i64* %313, align 8, !dbg !2194, !tbaa !2063
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 %314) #6, !dbg !2195
  %315 = load %struct.listNode*, %struct.listNode** %222, align 8, !dbg !2196, !tbaa !2116
  %316 = icmp eq %struct.listNode* %315, null, !dbg !2197
  br i1 %316, label %324, label %317, !dbg !2198

; <label>:317:                                    ; preds = %312, %317
  %318 = phi %struct.listNode* [ %322, %317 ], [ %315, %312 ]
  %319 = getelementptr inbounds %struct.listNode, %struct.listNode* %318, i64 0, i32 2, !dbg !2199
  %320 = bitcast i8** %319 to %struct.redisObject**, !dbg !2199
  %321 = load %struct.redisObject*, %struct.redisObject** %320, align 8, !dbg !2199, !tbaa !2120
  call void @addReplyBulk(%struct.client* %0, %struct.redisObject* %321) #6, !dbg !2201
  call void @decrRefCount(%struct.redisObject* %321) #6, !dbg !2202
  call void @listDelNode(%struct.list* nonnull %11, %struct.listNode* nonnull %318) #6, !dbg !2203
  %322 = load %struct.listNode*, %struct.listNode** %222, align 8, !dbg !2196, !tbaa !2116
  %323 = icmp eq %struct.listNode* %322, null, !dbg !2197
  br i1 %323, label %324, label %317, !dbg !2198, !llvm.loop !2204

; <label>:324:                                    ; preds = %47, %317, %312, %102, %58
  %325 = getelementptr inbounds %struct.list, %struct.list* %11, i64 0, i32 3, !dbg !2206
  store void (i8*)* @decrRefCountVoid, void (i8*)** %325, align 8, !dbg !2206, !tbaa !2207
  call void @listRelease(%struct.list* %11) #6, !dbg !2208
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #7, !dbg !2209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2209
  ret void, !dbg !2209
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
define dso_local void @scanCommand(%struct.client*) local_unnamed_addr #0 !dbg !2210 {
  %2 = alloca i8*, align 8
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2215
  %4 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2215, !tbaa !1133
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 1, !dbg !2217
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !2217, !tbaa !1135
  %7 = bitcast i8** %2 to i8*, !dbg !2221
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #7, !dbg !2221
  %8 = tail call i32* @__errno() #6, !dbg !2222
  store i32 0, i32* %8, align 4, !dbg !2223, !tbaa !845
  %9 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %6, i64 0, i32 2, !dbg !2224
  %10 = load i8*, i8** %9, align 8, !dbg !2224, !tbaa !215
  %11 = call i64 @strtoul(i8* %10, i8** nonnull %2, i32 10) #6, !dbg !2226
  %12 = call i8* @__locale_ctype_ptr() #6, !dbg !2227
  %13 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !2227
  %14 = load i8*, i8** %9, align 8, !dbg !2227, !tbaa !215
  %15 = load i8, i8* %14, align 1, !dbg !2227, !tbaa !222
  %16 = sext i8 %15 to i64, !dbg !2227
  %17 = getelementptr inbounds i8, i8* %13, i64 %16, !dbg !2227
  %18 = load i8, i8* %17, align 1, !dbg !2227, !tbaa !222
  %19 = and i8 %18, 8, !dbg !2227
  %20 = icmp eq i8 %19, 0, !dbg !2227
  br i1 %20, label %21, label %29, !dbg !2228

; <label>:21:                                     ; preds = %1
  %22 = load i8*, i8** %2, align 8, !dbg !2229, !tbaa !1135
  %23 = load i8, i8* %22, align 1, !dbg !2229, !tbaa !222
  %24 = icmp eq i8 %23, 0, !dbg !2230
  br i1 %24, label %25, label %29, !dbg !2231

; <label>:25:                                     ; preds = %21
  %26 = call i32* @__errno() #6, !dbg !2232
  %27 = load i32, i32* %26, align 4, !dbg !2232, !tbaa !845
  %28 = icmp eq i32 %27, 34, !dbg !2233
  br i1 %28, label %29, label %30, !dbg !2234

; <label>:29:                                     ; preds = %1, %21, %25
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !2235
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #7, !dbg !2236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2236
  br label %31, !dbg !2237

; <label>:30:                                     ; preds = %25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #7, !dbg !2236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2236
  call void @scanGenericCommand(%struct.client* nonnull %0, %struct.redisObject* null, i64 %11) #8, !dbg !2239
  br label %31, !dbg !2240

; <label>:31:                                     ; preds = %29, %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2240
  ret void, !dbg !2240
}

; Function Attrs: noredzone nounwind
define dso_local void @dbsizeCommand(%struct.client*) local_unnamed_addr #0 !dbg !2241 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2245
  %3 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !2245, !tbaa !567
  %4 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %3, i64 0, i32 0, !dbg !2245
  %5 = load %struct.dict*, %struct.dict** %4, align 8, !dbg !2245, !tbaa !207
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %5, i64 0, i32 2, i64 0, i32 3, !dbg !2245
  %7 = load i64, i64* %6, align 8, !dbg !2245, !tbaa !348
  %8 = getelementptr inbounds %struct.dict, %struct.dict* %5, i64 0, i32 2, i64 1, i32 3, !dbg !2245
  %9 = load i64, i64* %8, align 8, !dbg !2245, !tbaa !348
  %10 = add i64 %9, %7, !dbg !2245
  tail call void @addReplyLongLong(%struct.client* %0, i64 %10) #6, !dbg !2246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2247
  ret void, !dbg !2247
}

; Function Attrs: noredzone nounwind
define dso_local void @lastsaveCommand(%struct.client*) local_unnamed_addr #0 !dbg !2248 {
  %2 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 160), align 8, !dbg !2252, !tbaa !2253
  tail call void @addReplyLongLong(%struct.client* %0, i64 %2) #6, !dbg !2254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2255
  ret void, !dbg !2255
}

; Function Attrs: noredzone nounwind
define dso_local void @typeCommand(%struct.client*) local_unnamed_addr #0 !dbg !2256 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2601
  %3 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !2601, !tbaa !567
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2602
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !2602, !tbaa !1133
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !2603
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !2603, !tbaa !1135
  %8 = tail call i32 @expireIfNeeded(%struct.redisDb* %3, %struct.redisObject* %7) #6, !dbg !2608
  %9 = icmp eq i32 %8, 1, !dbg !2609
  br i1 %9, label %10, label %28, !dbg !2610

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !2611, !tbaa !280
  %12 = icmp eq i8* %11, null, !dbg !2612
  br i1 %12, label %41, label %13, !dbg !2613

; <label>:13:                                     ; preds = %10
  %14 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !2614, !tbaa !285
  %15 = icmp eq %struct.client* %14, null, !dbg !2615
  %16 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2616
  %17 = icmp eq %struct.client* %14, %16, !dbg !2617
  %18 = or i1 %15, %17, !dbg !2618
  br i1 %18, label %28, label %19, !dbg !2618

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds %struct.client, %struct.client* %14, i64 0, i32 10, !dbg !2619
  %21 = load %struct.redisCommand*, %struct.redisCommand** %20, align 8, !dbg !2619, !tbaa !291
  %22 = icmp eq %struct.redisCommand* %21, null, !dbg !2620
  br i1 %22, label %28, label %23, !dbg !2621

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %21, i64 0, i32 4, !dbg !2622
  %25 = load i32, i32* %24, align 8, !dbg !2622, !tbaa !298
  %26 = and i32 %25, 2, !dbg !2623
  %27 = icmp eq i32 %26, 0, !dbg !2623
  br i1 %27, label %28, label %41, !dbg !2624

; <label>:28:                                     ; preds = %23, %19, %13, %1
  %29 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %3, i64 0, i32 0, !dbg !2629
  %30 = load %struct.dict*, %struct.dict** %29, align 8, !dbg !2629, !tbaa !207
  %31 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !2630
  %32 = load i8*, i8** %31, align 8, !dbg !2630, !tbaa !215
  %33 = tail call %struct.dictEntry* @dictFind(%struct.dict* %30, i8* %32) #6, !dbg !2631
  %34 = icmp eq %struct.dictEntry* %33, null, !dbg !2633
  br i1 %34, label %35, label %36, !dbg !2634

; <label>:35:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2635
  br label %41, !dbg !2637

; <label>:36:                                     ; preds = %28
  %37 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %33, i64 0, i32 1, i32 0, !dbg !2638
  %38 = bitcast i8** %37 to %struct.redisObject**, !dbg !2638
  %39 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !2638, !tbaa !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2635
  %40 = icmp eq %struct.redisObject* %39, null, !dbg !2640
  br i1 %40, label %41, label %44, !dbg !2637

; <label>:41:                                     ; preds = %36, %35, %23, %10
  %42 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), align 8, !dbg !2641, !tbaa !602
  %43 = add nsw i64 %42, 1, !dbg !2641
  store i64 %43, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), align 8, !dbg !2641, !tbaa !602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2642
  br label %63, !dbg !2644

; <label>:44:                                     ; preds = %36
  %45 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 76), align 8, !dbg !2645, !tbaa !597
  %46 = add nsw i64 %45, 1, !dbg !2645
  store i64 %46, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 76), align 8, !dbg !2645, !tbaa !597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2642
  %47 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %39, i64 0, i32 0, !dbg !2646
  %48 = load i32, i32* %47, align 8, !dbg !2646
  %49 = trunc i32 %48 to i4, !dbg !2647
  switch i4 %49, label %62 [
    i4 0, label %63
    i4 1, label %50
    i4 2, label %51
    i4 3, label %52
    i4 4, label %53
    i4 6, label %54
    i4 5, label %55
  ], !dbg !2647

; <label>:50:                                     ; preds = %44
  br label %63, !dbg !2648

; <label>:51:                                     ; preds = %44
  br label %63, !dbg !2649

; <label>:52:                                     ; preds = %44
  br label %63, !dbg !2650

; <label>:53:                                     ; preds = %44
  br label %63, !dbg !2651

; <label>:54:                                     ; preds = %44
  br label %63, !dbg !2652

; <label>:55:                                     ; preds = %44
  %56 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %39, i64 0, i32 2, !dbg !2653
  %57 = bitcast i8** %56 to %struct.moduleValue**, !dbg !2653
  %58 = load %struct.moduleValue*, %struct.moduleValue** %57, align 8, !dbg !2653, !tbaa !215
  %59 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %58, i64 0, i32 0, !dbg !2655
  %60 = load %struct.RedisModuleType*, %struct.RedisModuleType** %59, align 8, !dbg !2655, !tbaa !2656
  %61 = getelementptr inbounds %struct.RedisModuleType, %struct.RedisModuleType* %60, i64 0, i32 11, i64 0, !dbg !2658
  br label %63, !dbg !2660

; <label>:62:                                     ; preds = %44
  br label %63, !dbg !2661

; <label>:63:                                     ; preds = %41, %44, %50, %51, %52, %53, %54, %55, %62
  %64 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), %62 ], [ %61, %55 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), %54 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), %53 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), %52 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), %51 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %50 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), %44 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), %41 ], !dbg !2662
  tail call void @addReplyStatus(%struct.client* nonnull %0, i8* nonnull %64) #6, !dbg !2663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2664
  ret void, !dbg !2664
}

; Function Attrs: noredzone
declare dso_local void @addReplyStatus(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @shutdownCommand(%struct.client*) local_unnamed_addr #0 !dbg !2665 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2671
  %3 = load i32, i32* %2, align 8, !dbg !2671, !tbaa !1125
  %4 = icmp sgt i32 %3, 2, !dbg !2673
  br i1 %4, label %5, label %7, !dbg !2674

; <label>:5:                                      ; preds = %1
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !2675, !tbaa !1141
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %6) #6, !dbg !2677
  br label %34, !dbg !2678

; <label>:7:                                      ; preds = %1
  %8 = icmp eq i32 %3, 2, !dbg !2679
  br i1 %8, label %9, label %23, !dbg !2681

; <label>:9:                                      ; preds = %7
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2682
  %11 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !2682, !tbaa !1133
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 1, !dbg !2685
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !2685, !tbaa !1135
  %14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %13, i64 0, i32 2, !dbg !2686
  %15 = load i8*, i8** %14, align 8, !dbg !2686, !tbaa !215
  %16 = tail call i32 @strcasecmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !2687
  %17 = icmp eq i32 %16, 0, !dbg !2687
  br i1 %17, label %23, label %18, !dbg !2688

; <label>:18:                                     ; preds = %9
  %19 = tail call i32 @strcasecmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !2689
  %20 = icmp eq i32 %19, 0, !dbg !2689
  br i1 %20, label %23, label %21, !dbg !2691

; <label>:21:                                     ; preds = %18
  %22 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !2692, !tbaa !1141
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %22) #6, !dbg !2694
  br label %34, !dbg !2695

; <label>:23:                                     ; preds = %18, %9, %7
  %24 = phi i32 [ 0, %7 ], [ 2, %9 ], [ 1, %18 ], !dbg !2696
  %25 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !2697, !tbaa !2699
  %26 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 20), align 4, !dbg !2700
  %27 = or i32 %26, %25, !dbg !2701
  %28 = icmp eq i32 %27, 0, !dbg !2701
  %29 = select i1 %28, i32 %24, i32 2, !dbg !2701
  %30 = tail call i32 (i32, ...) bitcast (i32 (...)* @prepareForShutdown to i32 (i32, ...)*)(i32 %29) #6, !dbg !2702
  %31 = icmp eq i32 %30, 0, !dbg !2704
  br i1 %31, label %32, label %33, !dbg !2705

; <label>:32:                                     ; preds = %23
  tail call void @exit(i32 0) #9, !dbg !2706
  unreachable, !dbg !2706

; <label>:33:                                     ; preds = %23
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0)) #6, !dbg !2707
  br label %34, !dbg !2708

; <label>:34:                                     ; preds = %33, %21, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2708
  ret void, !dbg !2708
}

; Function Attrs: noredzone
declare dso_local i32 @prepareForShutdown(...) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @renameGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !2709 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2719
  %4 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2719, !tbaa !1133
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 1, !dbg !2721
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !2721, !tbaa !1135
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %6, i64 0, i32 2, !dbg !2722
  %8 = load i8*, i8** %7, align 8, !dbg !2722, !tbaa !215
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 2, !dbg !2723
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !2723, !tbaa !1135
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i64 0, i32 2, !dbg !2724
  %12 = load i8*, i8** %11, align 8, !dbg !2724, !tbaa !215
  %13 = tail call i32 @sdscmp(i8* %8, i8* %12) #6, !dbg !2725
  %14 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2726, !tbaa !1133
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 1, !dbg !2728
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !2728, !tbaa !1135
  %17 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 15), align 8, !dbg !2729, !tbaa !2730
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2735
  %19 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !2735, !tbaa !567
  %20 = tail call i32 @expireIfNeeded(%struct.redisDb* %19, %struct.redisObject* %16) #6, !dbg !2739
  %21 = tail call %struct.redisObject* @lookupKey(%struct.redisDb* %19, %struct.redisObject* %16, i32 0) #6, !dbg !2740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2741
  %22 = icmp eq %struct.redisObject* %21, null, !dbg !2743
  br i1 %22, label %23, label %24, !dbg !2744

; <label>:23:                                     ; preds = %2
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %17) #6, !dbg !2745
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2746
  br label %178, !dbg !2748

; <label>:24:                                     ; preds = %2
  %25 = icmp eq i32 %13, 0, !dbg !2749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2746
  br i1 %25, label %26, label %31, !dbg !2750

; <label>:26:                                     ; preds = %24
  %27 = icmp eq i32 %1, 0, !dbg !2751
  %28 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !2754
  %29 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2755
  %30 = select i1 %27, %struct.redisObject* %29, %struct.redisObject* %28, !dbg !2751
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %30) #6, !dbg !2756
  br label %178, !dbg !2757

; <label>:31:                                     ; preds = %24
  tail call void @incrRefCount(%struct.redisObject* nonnull %21) #6, !dbg !2758
  %32 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !2759, !tbaa !567
  %33 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2760, !tbaa !1133
  %34 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %33, i64 1, !dbg !2761
  %35 = load %struct.redisObject*, %struct.redisObject** %34, align 8, !dbg !2761, !tbaa !1135
  %36 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %32, i64 0, i32 1, !dbg !2765
  %37 = load %struct.dict*, %struct.dict** %36, align 8, !dbg !2765, !tbaa !347
  %38 = getelementptr inbounds %struct.dict, %struct.dict* %37, i64 0, i32 2, i64 0, i32 3, !dbg !2765
  %39 = load i64, i64* %38, align 8, !dbg !2765, !tbaa !348
  %40 = getelementptr inbounds %struct.dict, %struct.dict* %37, i64 0, i32 2, i64 1, i32 3, !dbg !2765
  %41 = load i64, i64* %40, align 8, !dbg !2765, !tbaa !348
  %42 = sub i64 0, %41, !dbg !2766
  %43 = icmp eq i64 %39, %42, !dbg !2766
  br i1 %43, label %60, label %44, !dbg !2767

; <label>:44:                                     ; preds = %31
  %45 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %35, i64 0, i32 2, !dbg !2768
  %46 = load i8*, i8** %45, align 8, !dbg !2768, !tbaa !215
  %47 = tail call %struct.dictEntry* @dictFind(%struct.dict* %37, i8* %46) #6, !dbg !2769
  %48 = icmp eq %struct.dictEntry* %47, null, !dbg !2771
  br i1 %48, label %60, label %49, !dbg !2772

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %32, i64 0, i32 0, !dbg !2773
  %51 = load %struct.dict*, %struct.dict** %50, align 8, !dbg !2773, !tbaa !207
  %52 = load i8*, i8** %45, align 8, !dbg !2773, !tbaa !215
  %53 = tail call %struct.dictEntry* @dictFind(%struct.dict* %51, i8* %52) #6, !dbg !2773
  %54 = icmp eq %struct.dictEntry* %53, null, !dbg !2773
  br i1 %54, label %55, label %56, !dbg !2773

; <label>:55:                                     ; preds = %49
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 1101) #6, !dbg !2773
  tail call void @_exit(i32 1) #9, !dbg !2773
  unreachable, !dbg !2773

; <label>:56:                                     ; preds = %49
  %57 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %47, i64 0, i32 1, !dbg !2774
  %58 = bitcast %union.anon* %57 to i64*, !dbg !2774
  %59 = load i64, i64* %58, align 8, !dbg !2774, !tbaa !222
  br label %60, !dbg !2775

; <label>:60:                                     ; preds = %31, %44, %56
  %61 = phi i64 [ %59, %56 ], [ -1, %44 ], [ -1, %31 ], !dbg !2776
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2777
  %62 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !2779, !tbaa !567
  %63 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2781, !tbaa !1133
  %64 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %63, i64 2, !dbg !2782
  %65 = load %struct.redisObject*, %struct.redisObject** %64, align 8, !dbg !2782, !tbaa !1135
  %66 = tail call i32 @expireIfNeeded(%struct.redisDb* %62, %struct.redisObject* %65) #6, !dbg !2786
  %67 = tail call %struct.redisObject* @lookupKey(%struct.redisDb* %62, %struct.redisObject* %65, i32 0) #6, !dbg !2787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2788
  %68 = icmp eq %struct.redisObject* %67, null, !dbg !2789
  br i1 %68, label %107, label %69, !dbg !2790

; <label>:69:                                     ; preds = %60
  %70 = icmp eq i32 %1, 0, !dbg !2791
  br i1 %70, label %73, label %71, !dbg !2794

; <label>:71:                                     ; preds = %69
  tail call void @decrRefCount(%struct.redisObject* nonnull %21) #6, !dbg !2795
  %72 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !2797, !tbaa !2798
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %72) #6, !dbg !2799
  br label %178, !dbg !2800

; <label>:73:                                     ; preds = %69
  %74 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !2801, !tbaa !567
  %75 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2802, !tbaa !1133
  %76 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %75, i64 2, !dbg !2803
  %77 = load %struct.redisObject*, %struct.redisObject** %76, align 8, !dbg !2803, !tbaa !1135
  %78 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 287), align 8, !dbg !2807, !tbaa !708
  %79 = icmp eq i32 %78, 0, !dbg !2808
  br i1 %79, label %82, label %80, !dbg !2808

; <label>:80:                                     ; preds = %73
  %81 = tail call i32 @dbAsyncDelete(%struct.redisDb* %74, %struct.redisObject* %77) #6, !dbg !2809
  br label %106, !dbg !2808

; <label>:82:                                     ; preds = %73
  %83 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %74, i64 0, i32 1, !dbg !2813
  %84 = load %struct.dict*, %struct.dict** %83, align 8, !dbg !2813, !tbaa !347
  %85 = getelementptr inbounds %struct.dict, %struct.dict* %84, i64 0, i32 2, i64 0, i32 3, !dbg !2813
  %86 = load i64, i64* %85, align 8, !dbg !2813, !tbaa !348
  %87 = getelementptr inbounds %struct.dict, %struct.dict* %84, i64 0, i32 2, i64 1, i32 3, !dbg !2813
  %88 = load i64, i64* %87, align 8, !dbg !2813, !tbaa !348
  %89 = sub i64 0, %88, !dbg !2814
  %90 = icmp eq i64 %86, %89, !dbg !2814
  %91 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %77, i64 0, i32 2, !dbg !2815
  br i1 %90, label %95, label %92, !dbg !2816

; <label>:92:                                     ; preds = %82
  %93 = load i8*, i8** %91, align 8, !dbg !2817, !tbaa !215
  %94 = tail call i32 @dictDelete(%struct.dict* %84, i8* %93) #6, !dbg !2818
  br label %95, !dbg !2818

; <label>:95:                                     ; preds = %92, %82
  %96 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %74, i64 0, i32 0, !dbg !2819
  %97 = load %struct.dict*, %struct.dict** %96, align 8, !dbg !2819, !tbaa !207
  %98 = load i8*, i8** %91, align 8, !dbg !2820, !tbaa !215
  %99 = tail call i32 @dictDelete(%struct.dict* %97, i8* %98) #6, !dbg !2821
  %100 = icmp ne i32 %99, 0, !dbg !2822
  %101 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !2823
  %102 = icmp eq i32 %101, 0, !dbg !2824
  %103 = or i1 %100, %102, !dbg !2825
  br i1 %103, label %105, label %104, !dbg !2825

; <label>:104:                                    ; preds = %95
  tail call void @slotToKeyUpdateKey(%struct.redisObject* nonnull %77, i32 0) #6, !dbg !2828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2829
  br label %105, !dbg !2830

; <label>:105:                                    ; preds = %95, %104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2831
  br label %106, !dbg !2808

; <label>:106:                                    ; preds = %80, %105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2832
  br label %107, !dbg !2833

; <label>:107:                                    ; preds = %60, %106
  %108 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !2834, !tbaa !567
  %109 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2835, !tbaa !1133
  %110 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %109, i64 2, !dbg !2836
  %111 = load %struct.redisObject*, %struct.redisObject** %110, align 8, !dbg !2836, !tbaa !1135
  tail call void @dbAdd(%struct.redisDb* %108, %struct.redisObject* %111, %struct.redisObject* nonnull %21) #8, !dbg !2837
  %112 = icmp eq i64 %61, -1, !dbg !2838
  br i1 %112, label %118, label %113, !dbg !2840

; <label>:113:                                    ; preds = %107
  %114 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !2841, !tbaa !567
  %115 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2842, !tbaa !1133
  %116 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %115, i64 2, !dbg !2843
  %117 = load %struct.redisObject*, %struct.redisObject** %116, align 8, !dbg !2843, !tbaa !1135
  tail call void @setExpire(%struct.client* nonnull %0, %struct.redisDb* %114, %struct.redisObject* %117, i64 %61) #8, !dbg !2844
  br label %118, !dbg !2844

; <label>:118:                                    ; preds = %107, %113
  %119 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !2845, !tbaa !567
  %120 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2846, !tbaa !1133
  %121 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %120, i64 1, !dbg !2847
  %122 = load %struct.redisObject*, %struct.redisObject** %121, align 8, !dbg !2847, !tbaa !1135
  %123 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 287), align 8, !dbg !2851, !tbaa !708
  %124 = icmp eq i32 %123, 0, !dbg !2852
  br i1 %124, label %127, label %125, !dbg !2852

; <label>:125:                                    ; preds = %118
  %126 = tail call i32 @dbAsyncDelete(%struct.redisDb* %119, %struct.redisObject* %122) #6, !dbg !2853
  br label %151, !dbg !2852

; <label>:127:                                    ; preds = %118
  %128 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %119, i64 0, i32 1, !dbg !2857
  %129 = load %struct.dict*, %struct.dict** %128, align 8, !dbg !2857, !tbaa !347
  %130 = getelementptr inbounds %struct.dict, %struct.dict* %129, i64 0, i32 2, i64 0, i32 3, !dbg !2857
  %131 = load i64, i64* %130, align 8, !dbg !2857, !tbaa !348
  %132 = getelementptr inbounds %struct.dict, %struct.dict* %129, i64 0, i32 2, i64 1, i32 3, !dbg !2857
  %133 = load i64, i64* %132, align 8, !dbg !2857, !tbaa !348
  %134 = sub i64 0, %133, !dbg !2858
  %135 = icmp eq i64 %131, %134, !dbg !2858
  %136 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %122, i64 0, i32 2, !dbg !2859
  br i1 %135, label %140, label %137, !dbg !2860

; <label>:137:                                    ; preds = %127
  %138 = load i8*, i8** %136, align 8, !dbg !2861, !tbaa !215
  %139 = tail call i32 @dictDelete(%struct.dict* %129, i8* %138) #6, !dbg !2862
  br label %140, !dbg !2862

; <label>:140:                                    ; preds = %137, %127
  %141 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %119, i64 0, i32 0, !dbg !2863
  %142 = load %struct.dict*, %struct.dict** %141, align 8, !dbg !2863, !tbaa !207
  %143 = load i8*, i8** %136, align 8, !dbg !2864, !tbaa !215
  %144 = tail call i32 @dictDelete(%struct.dict* %142, i8* %143) #6, !dbg !2865
  %145 = icmp ne i32 %144, 0, !dbg !2866
  %146 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !2867
  %147 = icmp eq i32 %146, 0, !dbg !2868
  %148 = or i1 %145, %147, !dbg !2869
  br i1 %148, label %150, label %149, !dbg !2869

; <label>:149:                                    ; preds = %140
  tail call void @slotToKeyUpdateKey(%struct.redisObject* nonnull %122, i32 0) #6, !dbg !2872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2873
  br label %150, !dbg !2874

; <label>:150:                                    ; preds = %140, %149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2875
  br label %151, !dbg !2852

; <label>:151:                                    ; preds = %125, %150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2876
  %152 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !2877, !tbaa !567
  %153 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2878, !tbaa !1133
  %154 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %153, i64 1, !dbg !2879
  %155 = load %struct.redisObject*, %struct.redisObject** %154, align 8, !dbg !2879, !tbaa !1135
  tail call void @touchWatchedKey(%struct.redisDb* %152, %struct.redisObject* %155) #6, !dbg !2883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2884
  %156 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !2885, !tbaa !567
  %157 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2886, !tbaa !1133
  %158 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %157, i64 2, !dbg !2887
  %159 = load %struct.redisObject*, %struct.redisObject** %158, align 8, !dbg !2887, !tbaa !1135
  tail call void @touchWatchedKey(%struct.redisDb* %156, %struct.redisObject* %159) #6, !dbg !2891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2892
  %160 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2893, !tbaa !1133
  %161 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %160, i64 1, !dbg !2894
  %162 = load %struct.redisObject*, %struct.redisObject** %161, align 8, !dbg !2894, !tbaa !1135
  %163 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !2895, !tbaa !567
  %164 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %163, i64 0, i32 5, !dbg !2896
  %165 = load i32, i32* %164, align 8, !dbg !2896, !tbaa !333
  tail call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), %struct.redisObject* %162, i32 %165) #6, !dbg !2897
  %166 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2898, !tbaa !1133
  %167 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %166, i64 2, !dbg !2899
  %168 = load %struct.redisObject*, %struct.redisObject** %167, align 8, !dbg !2899, !tbaa !1135
  %169 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !2900, !tbaa !567
  %170 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %169, i64 0, i32 5, !dbg !2901
  %171 = load i32, i32* %170, align 8, !dbg !2901, !tbaa !333
  tail call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), %struct.redisObject* %168, i32 %171) #6, !dbg !2902
  %172 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2903, !tbaa !1182
  %173 = add nsw i64 %172, 1, !dbg !2903
  store i64 %173, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2903, !tbaa !1182
  %174 = icmp eq i32 %1, 0, !dbg !2904
  %175 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !2905
  %176 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2906
  %177 = select i1 %174, %struct.redisObject* %176, %struct.redisObject* %175, !dbg !2904
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %177) #6, !dbg !2907
  br label %178, !dbg !2908

; <label>:178:                                    ; preds = %23, %151, %71, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2908
  ret void, !dbg !2908
}

; Function Attrs: noredzone
declare dso_local i32 @sdscmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @getExpire(%struct.redisDb* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !1614 {
  %3 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !2911
  %4 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !2911, !tbaa !347
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %4, i64 0, i32 2, i64 0, i32 3, !dbg !2911
  %6 = load i64, i64* %5, align 8, !dbg !2911, !tbaa !348
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %4, i64 0, i32 2, i64 1, i32 3, !dbg !2911
  %8 = load i64, i64* %7, align 8, !dbg !2911, !tbaa !348
  %9 = sub i64 0, %8, !dbg !2912
  %10 = icmp eq i64 %6, %9, !dbg !2912
  br i1 %10, label %27, label %11, !dbg !2913

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2914
  %13 = load i8*, i8** %12, align 8, !dbg !2914, !tbaa !215
  %14 = tail call %struct.dictEntry* @dictFind(%struct.dict* %4, i8* %13) #6, !dbg !2915
  %15 = icmp eq %struct.dictEntry* %14, null, !dbg !2917
  br i1 %15, label %27, label %16, !dbg !2918

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !2919
  %18 = load %struct.dict*, %struct.dict** %17, align 8, !dbg !2919, !tbaa !207
  %19 = load i8*, i8** %12, align 8, !dbg !2919, !tbaa !215
  %20 = tail call %struct.dictEntry* @dictFind(%struct.dict* %18, i8* %19) #6, !dbg !2919
  %21 = icmp eq %struct.dictEntry* %20, null, !dbg !2919
  br i1 %21, label %22, label %23, !dbg !2919

; <label>:22:                                     ; preds = %16
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 1101) #6, !dbg !2919
  tail call void @_exit(i32 1) #9, !dbg !2919
  unreachable, !dbg !2919

; <label>:23:                                     ; preds = %16
  %24 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %14, i64 0, i32 1, !dbg !2920
  %25 = bitcast %union.anon* %24 to i64*, !dbg !2920
  %26 = load i64, i64* %25, align 8, !dbg !2920, !tbaa !222
  br label %27, !dbg !2921

; <label>:27:                                     ; preds = %2, %11, %23
  %28 = phi i64 [ %26, %23 ], [ -1, %11 ], [ -1, %2 ], !dbg !2922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2923
  ret i64 %28, !dbg !2923
}

; Function Attrs: noredzone nounwind
define dso_local void @setExpire(%struct.client* readonly, %struct.redisDb*, %struct.redisObject*, i64) local_unnamed_addr #0 !dbg !2924 {
  %5 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %1, i64 0, i32 0, !dbg !2939
  %6 = load %struct.dict*, %struct.dict** %5, align 8, !dbg !2939, !tbaa !207
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !2940
  %8 = load i8*, i8** %7, align 8, !dbg !2940, !tbaa !215
  %9 = tail call %struct.dictEntry* @dictFind(%struct.dict* %6, i8* %8) #6, !dbg !2941
  %10 = icmp eq %struct.dictEntry* %9, null, !dbg !2943
  br i1 %10, label %11, label %12, !dbg !2943

; <label>:11:                                     ; preds = %4
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 1081) #6, !dbg !2943
  tail call void @_exit(i32 1) #9, !dbg !2943
  unreachable, !dbg !2943

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %1, i64 0, i32 1, !dbg !2944
  %14 = load %struct.dict*, %struct.dict** %13, align 8, !dbg !2944, !tbaa !347
  %15 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %9, i64 0, i32 0, !dbg !2945
  %16 = load i8*, i8** %15, align 8, !dbg !2945, !tbaa !815
  %17 = tail call %struct.dictEntry* @dictAddOrFind(%struct.dict* %14, i8* %16) #6, !dbg !2946
  %18 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %17, i64 0, i32 1, !dbg !2948
  %19 = bitcast %union.anon* %18 to i64*, !dbg !2948
  store i64 %3, i64* %19, align 8, !dbg !2948, !tbaa !222
  %20 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !2950, !tbaa !280
  %21 = icmp ne i8* %20, null, !dbg !2951
  %22 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 211), align 4, !dbg !2952
  %23 = icmp eq i32 %22, 0, !dbg !2953
  %24 = and i1 %21, %23, !dbg !2954
  %25 = icmp ne %struct.client* %0, null, !dbg !2955
  %26 = and i1 %25, %24, !dbg !2957
  br i1 %26, label %27, label %33, !dbg !2957

; <label>:27:                                     ; preds = %12
  %28 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2958
  %29 = load i32, i32* %28, align 8, !dbg !2958, !tbaa !2959
  %30 = and i32 %29, 2, !dbg !2960
  %31 = icmp eq i32 %30, 0, !dbg !2960
  br i1 %31, label %32, label %33, !dbg !2961

; <label>:32:                                     ; preds = %27
  tail call void @rememberSlaveKeyWithExpire(%struct.redisDb* nonnull %1, %struct.redisObject* nonnull %2) #6, !dbg !2962
  br label %33, !dbg !2962

; <label>:33:                                     ; preds = %27, %32, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2963
  ret void, !dbg !2963
}

; Function Attrs: noredzone nounwind
define dso_local void @renameCommand(%struct.client*) local_unnamed_addr #0 !dbg !2964 {
  tail call void @renameGenericCommand(%struct.client* %0, i32 0) #8, !dbg !2968
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2969
  ret void, !dbg !2969
}

; Function Attrs: noredzone nounwind
define dso_local void @renamenxCommand(%struct.client*) local_unnamed_addr #0 !dbg !2970 {
  tail call void @renameGenericCommand(%struct.client* %0, i32 1) #8, !dbg !2974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2975
  ret void, !dbg !2975
}

; Function Attrs: noredzone nounwind
define dso_local void @moveCommand(%struct.client*) local_unnamed_addr #0 !dbg !2976 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !2986
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7, !dbg !2986
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !2987, !tbaa !364
  %5 = icmp eq i32 %4, 0, !dbg !2989
  br i1 %5, label %7, label %6, !dbg !2990

; <label>:6:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i64 0, i64 0)) #6, !dbg !2991
  br label %141, !dbg !2993

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2994
  %9 = load %struct.redisDb*, %struct.redisDb** %8, align 8, !dbg !2994, !tbaa !567
  %10 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %9, i64 0, i32 5, !dbg !2996
  %11 = load i32, i32* %10, align 8, !dbg !2996, !tbaa !333
  %12 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2998
  %13 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !2998, !tbaa !1133
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 2, !dbg !3000
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !3000, !tbaa !1135
  %16 = call i32 @getLongLongFromObject(%struct.redisObject* %15, i64* nonnull %2) #6, !dbg !3002
  %17 = icmp eq i32 %16, -1, !dbg !3003
  %18 = load i64, i64* %2, align 8, !dbg !3004
  %19 = add i64 %18, 2147483648, !dbg !3005
  %20 = icmp ugt i64 %19, 4294967295, !dbg !3005
  %21 = or i1 %17, %20, !dbg !3005
  br i1 %21, label %29, label %22, !dbg !3005

; <label>:22:                                     ; preds = %7
  %23 = trunc i64 %18 to i32, !dbg !3006
  %24 = icmp sgt i32 %23, -1, !dbg !3010
  %25 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !3011
  %26 = icmp sgt i32 %25, %23, !dbg !3012
  %27 = and i1 %24, %26, !dbg !3013
  br i1 %27, label %31, label %28, !dbg !3013

; <label>:28:                                     ; preds = %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3014
  br label %29, !dbg !3015

; <label>:29:                                     ; preds = %28, %7
  %30 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 18), align 8, !dbg !3016, !tbaa !3018
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %30) #6, !dbg !3019
  br label %141, !dbg !3020

; <label>:31:                                     ; preds = %22
  %32 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !3021, !tbaa !1032
  %33 = shl i64 %18, 32, !dbg !3022
  %34 = ashr exact i64 %33, 32, !dbg !3022
  %35 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %32, i64 %34, !dbg !3022
  store %struct.redisDb* %35, %struct.redisDb** %8, align 8, !dbg !3023, !tbaa !567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3014
  %36 = icmp sgt i32 %11, -1, !dbg !3028
  %37 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !3029
  %38 = icmp sgt i32 %37, %11, !dbg !3030
  %39 = and i1 %36, %38, !dbg !3031
  br i1 %39, label %40, label %43, !dbg !3031

; <label>:40:                                     ; preds = %31
  %41 = sext i32 %11 to i64, !dbg !3032
  %42 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %32, i64 %41, !dbg !3032
  store %struct.redisDb* %42, %struct.redisDb** %8, align 8, !dbg !3033, !tbaa !567
  br label %43, !dbg !3034

; <label>:43:                                     ; preds = %31, %40
  %44 = phi %struct.redisDb* [ %35, %31 ], [ %42, %40 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3035
  %45 = icmp eq %struct.redisDb* %9, %35, !dbg !3036
  br i1 %45, label %46, label %48, !dbg !3038

; <label>:46:                                     ; preds = %43
  %47 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 17), align 8, !dbg !3039, !tbaa !3041
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %47) #6, !dbg !3042
  br label %141, !dbg !3043

; <label>:48:                                     ; preds = %43
  %49 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !3044, !tbaa !1133
  %50 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %49, i64 1, !dbg !3045
  %51 = load %struct.redisObject*, %struct.redisObject** %50, align 8, !dbg !3045, !tbaa !1135
  %52 = call i32 @expireIfNeeded(%struct.redisDb* %44, %struct.redisObject* %51) #6, !dbg !3049
  %53 = call %struct.redisObject* @lookupKey(%struct.redisDb* %44, %struct.redisObject* %51, i32 0) #6, !dbg !3050
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3051
  %54 = icmp eq %struct.redisObject* %53, null, !dbg !3053
  br i1 %54, label %55, label %57, !dbg !3055

; <label>:55:                                     ; preds = %48
  %56 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !3056, !tbaa !2798
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %56) #6, !dbg !3058
  br label %141, !dbg !3059

; <label>:57:                                     ; preds = %48
  %58 = load %struct.redisDb*, %struct.redisDb** %8, align 8, !dbg !3060, !tbaa !567
  %59 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !3061, !tbaa !1133
  %60 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %59, i64 1, !dbg !3062
  %61 = load %struct.redisObject*, %struct.redisObject** %60, align 8, !dbg !3062, !tbaa !1135
  %62 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %58, i64 0, i32 1, !dbg !3066
  %63 = load %struct.dict*, %struct.dict** %62, align 8, !dbg !3066, !tbaa !347
  %64 = getelementptr inbounds %struct.dict, %struct.dict* %63, i64 0, i32 2, i64 0, i32 3, !dbg !3066
  %65 = load i64, i64* %64, align 8, !dbg !3066, !tbaa !348
  %66 = getelementptr inbounds %struct.dict, %struct.dict* %63, i64 0, i32 2, i64 1, i32 3, !dbg !3066
  %67 = load i64, i64* %66, align 8, !dbg !3066, !tbaa !348
  %68 = sub i64 0, %67, !dbg !3067
  %69 = icmp eq i64 %65, %68, !dbg !3067
  br i1 %69, label %86, label %70, !dbg !3068

; <label>:70:                                     ; preds = %57
  %71 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %61, i64 0, i32 2, !dbg !3069
  %72 = load i8*, i8** %71, align 8, !dbg !3069, !tbaa !215
  %73 = call %struct.dictEntry* @dictFind(%struct.dict* %63, i8* %72) #6, !dbg !3070
  %74 = icmp eq %struct.dictEntry* %73, null, !dbg !3072
  br i1 %74, label %86, label %75, !dbg !3073

; <label>:75:                                     ; preds = %70
  %76 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %58, i64 0, i32 0, !dbg !3074
  %77 = load %struct.dict*, %struct.dict** %76, align 8, !dbg !3074, !tbaa !207
  %78 = load i8*, i8** %71, align 8, !dbg !3074, !tbaa !215
  %79 = call %struct.dictEntry* @dictFind(%struct.dict* %77, i8* %78) #6, !dbg !3074
  %80 = icmp eq %struct.dictEntry* %79, null, !dbg !3074
  br i1 %80, label %81, label %82, !dbg !3074

; <label>:81:                                     ; preds = %75
  call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 1101) #6, !dbg !3074
  call void @_exit(i32 1) #9, !dbg !3074
  unreachable, !dbg !3074

; <label>:82:                                     ; preds = %75
  %83 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %73, i64 0, i32 1, !dbg !3075
  %84 = bitcast %union.anon* %83 to i64*, !dbg !3075
  %85 = load i64, i64* %84, align 8, !dbg !3075, !tbaa !222
  br label %86, !dbg !3076

; <label>:86:                                     ; preds = %57, %70, %82
  %87 = phi i64 [ %85, %82 ], [ -1, %70 ], [ -1, %57 ], !dbg !3077
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3078
  %88 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !3080, !tbaa !1133
  %89 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %88, i64 1, !dbg !3082
  %90 = load %struct.redisObject*, %struct.redisObject** %89, align 8, !dbg !3082, !tbaa !1135
  %91 = call i32 @expireIfNeeded(%struct.redisDb* %35, %struct.redisObject* %90) #6, !dbg !3086
  %92 = call %struct.redisObject* @lookupKey(%struct.redisDb* %35, %struct.redisObject* %90, i32 0) #6, !dbg !3087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3088
  %93 = icmp eq %struct.redisObject* %92, null, !dbg !3089
  br i1 %93, label %96, label %94, !dbg !3090

; <label>:94:                                     ; preds = %86
  %95 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !3091, !tbaa !2798
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %95) #6, !dbg !3093
  br label %141, !dbg !3094

; <label>:96:                                     ; preds = %86
  %97 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !3095, !tbaa !1133
  %98 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %97, i64 1, !dbg !3096
  %99 = load %struct.redisObject*, %struct.redisObject** %98, align 8, !dbg !3096, !tbaa !1135
  call void @dbAdd(%struct.redisDb* %35, %struct.redisObject* %99, %struct.redisObject* nonnull %53) #8, !dbg !3097
  %100 = icmp eq i64 %87, -1, !dbg !3098
  br i1 %100, label %105, label %101, !dbg !3100

; <label>:101:                                    ; preds = %96
  %102 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !3101, !tbaa !1133
  %103 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %102, i64 1, !dbg !3102
  %104 = load %struct.redisObject*, %struct.redisObject** %103, align 8, !dbg !3102, !tbaa !1135
  call void @setExpire(%struct.client* nonnull %0, %struct.redisDb* %35, %struct.redisObject* %104, i64 %87) #8, !dbg !3103
  br label %105, !dbg !3103

; <label>:105:                                    ; preds = %96, %101
  call void @incrRefCount(%struct.redisObject* nonnull %53) #6, !dbg !3104
  %106 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !3105, !tbaa !1133
  %107 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %106, i64 1, !dbg !3106
  %108 = load %struct.redisObject*, %struct.redisObject** %107, align 8, !dbg !3106, !tbaa !1135
  %109 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 287), align 8, !dbg !3110, !tbaa !708
  %110 = icmp eq i32 %109, 0, !dbg !3111
  br i1 %110, label %113, label %111, !dbg !3111

; <label>:111:                                    ; preds = %105
  %112 = call i32 @dbAsyncDelete(%struct.redisDb* %9, %struct.redisObject* %108) #6, !dbg !3112
  br label %137, !dbg !3111

; <label>:113:                                    ; preds = %105
  %114 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %9, i64 0, i32 1, !dbg !3116
  %115 = load %struct.dict*, %struct.dict** %114, align 8, !dbg !3116, !tbaa !347
  %116 = getelementptr inbounds %struct.dict, %struct.dict* %115, i64 0, i32 2, i64 0, i32 3, !dbg !3116
  %117 = load i64, i64* %116, align 8, !dbg !3116, !tbaa !348
  %118 = getelementptr inbounds %struct.dict, %struct.dict* %115, i64 0, i32 2, i64 1, i32 3, !dbg !3116
  %119 = load i64, i64* %118, align 8, !dbg !3116, !tbaa !348
  %120 = sub i64 0, %119, !dbg !3117
  %121 = icmp eq i64 %117, %120, !dbg !3117
  %122 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %108, i64 0, i32 2, !dbg !3118
  br i1 %121, label %126, label %123, !dbg !3119

; <label>:123:                                    ; preds = %113
  %124 = load i8*, i8** %122, align 8, !dbg !3120, !tbaa !215
  %125 = call i32 @dictDelete(%struct.dict* %115, i8* %124) #6, !dbg !3121
  br label %126, !dbg !3121

; <label>:126:                                    ; preds = %123, %113
  %127 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %9, i64 0, i32 0, !dbg !3122
  %128 = load %struct.dict*, %struct.dict** %127, align 8, !dbg !3122, !tbaa !207
  %129 = load i8*, i8** %122, align 8, !dbg !3123, !tbaa !215
  %130 = call i32 @dictDelete(%struct.dict* %128, i8* %129) #6, !dbg !3124
  %131 = icmp ne i32 %130, 0, !dbg !3125
  %132 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !3126
  %133 = icmp eq i32 %132, 0, !dbg !3127
  %134 = or i1 %131, %133, !dbg !3128
  br i1 %134, label %136, label %135, !dbg !3128

; <label>:135:                                    ; preds = %126
  call void @slotToKeyUpdateKey(%struct.redisObject* nonnull %108, i32 0) #6, !dbg !3131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3132
  br label %136, !dbg !3133

; <label>:136:                                    ; preds = %126, %135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3134
  br label %137, !dbg !3111

; <label>:137:                                    ; preds = %111, %136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3135
  %138 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3136, !tbaa !1182
  %139 = add nsw i64 %138, 1, !dbg !3136
  store i64 %139, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3136, !tbaa !1182
  %140 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !3137, !tbaa !3138
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %140) #6, !dbg !3139
  br label %141, !dbg !3140

; <label>:141:                                    ; preds = %137, %94, %55, %46, %29, %6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7, !dbg !3140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3140
  ret void, !dbg !3140
}

; Function Attrs: noredzone
declare dso_local i32 @getLongLongFromObject(%struct.redisObject*, i64*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @scanDatabaseForReadyLists(%struct.redisDb*) local_unnamed_addr #0 !dbg !3141 {
  %2 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 2, !dbg !3152
  %3 = load %struct.dict*, %struct.dict** %2, align 8, !dbg !3152, !tbaa !3153
  %4 = tail call %struct.dictIterator* @dictGetSafeIterator(%struct.dict* %3) #6, !dbg !3154
  %5 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %4) #6, !dbg !3156
  %6 = icmp eq %struct.dictEntry* %5, null, !dbg !3158
  br i1 %6, label %32, label %7, !dbg !3159

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0
  br label %9, !dbg !3159

; <label>:9:                                      ; preds = %7, %29
  %10 = phi %struct.dictEntry* [ %5, %7 ], [ %30, %29 ]
  %11 = bitcast %struct.dictEntry* %10 to %struct.redisObject**, !dbg !3160
  %12 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !3160, !tbaa !815
  %13 = load %struct.dict*, %struct.dict** %8, align 8, !dbg !3166, !tbaa !207
  %14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %12, i64 0, i32 2, !dbg !3167
  %15 = load i8*, i8** %14, align 8, !dbg !3167, !tbaa !215
  %16 = tail call %struct.dictEntry* @dictFind(%struct.dict* %13, i8* %15) #6, !dbg !3168
  %17 = icmp eq %struct.dictEntry* %16, null, !dbg !3170
  br i1 %17, label %18, label %19, !dbg !3171

; <label>:18:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3172
  br label %29, !dbg !3174

; <label>:19:                                     ; preds = %9
  %20 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %16, i64 0, i32 1, i32 0, !dbg !3176
  %21 = bitcast i8** %20 to %struct.redisObject**, !dbg !3176
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !3176, !tbaa !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3172
  %23 = icmp eq %struct.redisObject* %22, null, !dbg !3178
  br i1 %23, label %29, label %24, !dbg !3174

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %22, i64 0, i32 0, !dbg !3179
  %26 = load i32, i32* %25, align 8, !dbg !3179
  %27 = trunc i32 %26 to i4, !dbg !3180
  switch i4 %27, label %29 [
    i4 1, label %28
    i4 6, label %28
    i4 3, label %28
  ], !dbg !3180

; <label>:28:                                     ; preds = %24, %24, %24
  tail call void @signalKeyAsReady(%struct.redisDb* nonnull %0, %struct.redisObject* %12) #6, !dbg !3181
  br label %29, !dbg !3181

; <label>:29:                                     ; preds = %18, %24, %19, %28
  %30 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %4) #6, !dbg !3156
  %31 = icmp eq %struct.dictEntry* %30, null, !dbg !3158
  br i1 %31, label %32, label %9, !dbg !3159, !llvm.loop !3182

; <label>:32:                                     ; preds = %29, %1
  tail call void @dictReleaseIterator(%struct.dictIterator* %4) #6, !dbg !3184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3185
  ret void, !dbg !3185
}

; Function Attrs: noredzone nounwind
define dso_local i32 @dbSwapDatabases(i32, i32) local_unnamed_addr #0 !dbg !3186 {
  %3 = icmp slt i32 %0, 0, !dbg !3197
  br i1 %3, label %29, label %4, !dbg !3199

; <label>:4:                                      ; preds = %2
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !3200, !tbaa !1007
  %6 = icmp sgt i32 %5, %0, !dbg !3201
  %7 = icmp sgt i32 %1, -1, !dbg !3202
  %8 = and i1 %7, %6, !dbg !3203
  %9 = icmp sgt i32 %5, %1, !dbg !3204
  %10 = and i1 %9, %8, !dbg !3203
  br i1 %10, label %11, label %29, !dbg !3203

; <label>:11:                                     ; preds = %4
  %12 = icmp eq i32 %0, %1, !dbg !3205
  br i1 %12, label %29, label %13, !dbg !3207

; <label>:13:                                     ; preds = %11
  %14 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !3208, !tbaa !1032
  %15 = sext i32 %0 to i64, !dbg !3209
  %16 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %14, i64 %15, !dbg !3209
  %17 = bitcast %struct.redisDb* %16 to <2 x i64>*, !dbg !3209
  %18 = load <2 x i64>, <2 x i64>* %17, align 8, !dbg !3209
  %19 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %14, i64 %15, i32 6, !dbg !3209
  %20 = load i64, i64* %19, align 8, !dbg !3209
  %21 = sext i32 %1 to i64, !dbg !3212
  %22 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %14, i64 %21, !dbg !3212
  %23 = bitcast %struct.redisDb* %22 to <2 x i64>*, !dbg !3214
  %24 = load <2 x i64>, <2 x i64>* %23, align 8, !dbg !3214, !tbaa !1135
  %25 = bitcast %struct.redisDb* %16 to <2 x i64>*, !dbg !3215
  store <2 x i64> %24, <2 x i64>* %25, align 8, !dbg !3215, !tbaa !1135
  %26 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %14, i64 %21, i32 6, !dbg !3216
  %27 = load i64, i64* %26, align 8, !dbg !3216, !tbaa !3217
  store i64 %27, i64* %19, align 8, !dbg !3218, !tbaa !3217
  %28 = bitcast %struct.redisDb* %22 to <2 x i64>*, !dbg !3219
  store <2 x i64> %18, <2 x i64>* %28, align 8, !dbg !3219, !tbaa !1135
  store i64 %20, i64* %26, align 8, !dbg !3220, !tbaa !3217
  tail call void @scanDatabaseForReadyLists(%struct.redisDb* %16) #8, !dbg !3221
  tail call void @scanDatabaseForReadyLists(%struct.redisDb* %22) #8, !dbg !3222
  br label %29

; <label>:29:                                     ; preds = %11, %2, %4, %13
  %30 = phi i32 [ 0, %13 ], [ -1, %4 ], [ -1, %2 ], [ 0, %11 ], !dbg !3223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3224
  ret i32 %30, !dbg !3224
}

; Function Attrs: noredzone nounwind
define dso_local void @swapdbCommand(%struct.client*) local_unnamed_addr #0 !dbg !3225 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = bitcast i64* %2 to i8*, !dbg !3231
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7, !dbg !3231
  %5 = bitcast i64* %3 to i8*, !dbg !3231
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !3231
  %6 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !3232, !tbaa !364
  %7 = icmp eq i32 %6, 0, !dbg !3234
  br i1 %7, label %9, label %8, !dbg !3235

; <label>:8:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0)) #6, !dbg !3236
  br label %60, !dbg !3238

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3239
  %11 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !3239, !tbaa !1133
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 1, !dbg !3241
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !3241, !tbaa !1135
  %14 = call i32 @getLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %13, i64* nonnull %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0)) #6, !dbg !3243
  %15 = icmp eq i32 %14, 0, !dbg !3244
  br i1 %15, label %16, label %60, !dbg !3245

; <label>:16:                                     ; preds = %9
  %17 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !3246, !tbaa !1133
  %18 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %17, i64 2, !dbg !3248
  %19 = load %struct.redisObject*, %struct.redisObject** %18, align 8, !dbg !3248, !tbaa !1135
  %20 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %19, i64* nonnull %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !3250
  %21 = icmp eq i32 %20, 0, !dbg !3251
  br i1 %21, label %22, label %60, !dbg !3252

; <label>:22:                                     ; preds = %16
  %23 = load i64, i64* %2, align 8, !dbg !3253, !tbaa !849
  %24 = trunc i64 %23 to i32, !dbg !3253
  %25 = load i64, i64* %3, align 8, !dbg !3255, !tbaa !849
  %26 = trunc i64 %25 to i32, !dbg !3255
  %27 = icmp slt i32 %24, 0, !dbg !3259
  br i1 %27, label %55, label %28, !dbg !3260

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !3261, !tbaa !1007
  %30 = icmp sgt i32 %29, %24, !dbg !3262
  %31 = icmp sgt i32 %26, -1, !dbg !3263
  %32 = and i1 %31, %30, !dbg !3264
  %33 = icmp sgt i32 %29, %26, !dbg !3265
  %34 = and i1 %33, %32, !dbg !3264
  br i1 %34, label %35, label %55, !dbg !3264

; <label>:35:                                     ; preds = %28
  %36 = icmp eq i32 %24, %26, !dbg !3266
  br i1 %36, label %56, label %37, !dbg !3267

; <label>:37:                                     ; preds = %35
  %38 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !3268, !tbaa !1032
  %39 = shl i64 %23, 32, !dbg !3269
  %40 = ashr exact i64 %39, 32, !dbg !3269
  %41 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %38, i64 %40, !dbg !3269
  %42 = bitcast %struct.redisDb* %41 to <2 x i64>*, !dbg !3269
  %43 = load <2 x i64>, <2 x i64>* %42, align 8, !dbg !3269
  %44 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %38, i64 %40, i32 6, !dbg !3269
  %45 = load i64, i64* %44, align 8, !dbg !3269
  %46 = shl i64 %25, 32, !dbg !3272
  %47 = ashr exact i64 %46, 32, !dbg !3272
  %48 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %38, i64 %47, !dbg !3272
  %49 = bitcast %struct.redisDb* %48 to <2 x i64>*, !dbg !3274
  %50 = load <2 x i64>, <2 x i64>* %49, align 8, !dbg !3274, !tbaa !1135
  %51 = bitcast %struct.redisDb* %41 to <2 x i64>*, !dbg !3275
  store <2 x i64> %50, <2 x i64>* %51, align 8, !dbg !3275, !tbaa !1135
  %52 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %38, i64 %47, i32 6, !dbg !3276
  %53 = load i64, i64* %52, align 8, !dbg !3276, !tbaa !3217
  store i64 %53, i64* %44, align 8, !dbg !3277, !tbaa !3217
  %54 = bitcast %struct.redisDb* %48 to <2 x i64>*, !dbg !3278
  store <2 x i64> %43, <2 x i64>* %54, align 8, !dbg !3278, !tbaa !1135
  store i64 %45, i64* %52, align 8, !dbg !3279, !tbaa !3217
  call void @scanDatabaseForReadyLists(%struct.redisDb* %41) #6, !dbg !3280
  call void @scanDatabaseForReadyLists(%struct.redisDb* %48) #6, !dbg !3281
  br label %56

; <label>:55:                                     ; preds = %28, %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3282
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3283
  br label %60, !dbg !3285

; <label>:56:                                     ; preds = %37, %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3282
  %57 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3286, !tbaa !1182
  %58 = add nsw i64 %57, 1, !dbg !3286
  store i64 %58, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3286, !tbaa !1182
  %59 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !3288, !tbaa !1184
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %59) #6, !dbg !3289
  br label %60, !dbg !3290

; <label>:60:                                     ; preds = %16, %9, %56, %55, %8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !3290
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7, !dbg !3290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3290
  ret void, !dbg !3290
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictAddOrFind(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @rememberSlaveKeyWithExpire(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @propagateExpire(%struct.redisDb* nocapture readonly, %struct.redisObject*, i32) local_unnamed_addr #0 !dbg !3291 {
  %4 = alloca [2 x %struct.redisObject*], align 16
  %5 = bitcast [2 x %struct.redisObject*]* %4 to i8*, !dbg !3303
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !3303
  %6 = icmp eq i32 %2, 0, !dbg !3305
  %7 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 38), align 8, !dbg !3306
  %8 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 37), align 8, !dbg !3307
  %9 = select i1 %6, %struct.redisObject* %8, %struct.redisObject* %7, !dbg !3305
  %10 = getelementptr inbounds [2 x %struct.redisObject*], [2 x %struct.redisObject*]* %4, i64 0, i64 0, !dbg !3308
  store %struct.redisObject* %9, %struct.redisObject** %10, align 16, !dbg !3309, !tbaa !1135
  %11 = getelementptr inbounds [2 x %struct.redisObject*], [2 x %struct.redisObject*]* %4, i64 0, i64 1, !dbg !3310
  store %struct.redisObject* %1, %struct.redisObject** %11, align 8, !dbg !3311, !tbaa !1135
  tail call void @incrRefCount(%struct.redisObject* %9) #6, !dbg !3312
  tail call void @incrRefCount(%struct.redisObject* %1) #6, !dbg !3313
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !3314, !tbaa !3316
  %13 = icmp eq i32 %12, 0, !dbg !3317
  br i1 %13, label %14, label %16, !dbg !3318

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 5, !dbg !3319
  br label %20, !dbg !3318

; <label>:16:                                     ; preds = %3
  %17 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 56), align 8, !dbg !3320, !tbaa !3321
  %18 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 5, !dbg !3322
  %19 = load i32, i32* %18, align 8, !dbg !3322, !tbaa !333
  call void @feedAppendOnlyFile(%struct.redisCommand* %17, i32 %19, %struct.redisObject** nonnull %10, i32 2) #6, !dbg !3323
  br label %20, !dbg !3323

; <label>:20:                                     ; preds = %14, %16
  %21 = phi i32* [ %15, %14 ], [ %18, %16 ], !dbg !3319
  %22 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !3324, !tbaa !3325
  %23 = load i32, i32* %21, align 8, !dbg !3319, !tbaa !333
  call void @replicationFeedSlaves(%struct.list* %22, i32 %23, %struct.redisObject** nonnull %10, i32 2) #6, !dbg !3326
  %24 = load %struct.redisObject*, %struct.redisObject** %10, align 16, !dbg !3327, !tbaa !1135
  call void @decrRefCount(%struct.redisObject* %24) #6, !dbg !3328
  %25 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !3329, !tbaa !1135
  call void @decrRefCount(%struct.redisObject* %25) #6, !dbg !3330
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !3331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3331
  ret void, !dbg !3331
}

; Function Attrs: noredzone
declare dso_local void @feedAppendOnlyFile(%struct.redisCommand*, i32, %struct.redisObject**, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @replicationFeedSlaves(%struct.list*, i32, %struct.redisObject**, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @mstime() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32* @getKeysUsingCommandTable(%struct.redisCommand* nocapture readonly, %struct.redisObject** nocapture readnone, i32, i32* nocapture) local_unnamed_addr #0 !dbg !3332 {
  %5 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %0, i64 0, i32 6, !dbg !3347
  %6 = load i32, i32* %5, align 8, !dbg !3347, !tbaa !3349
  %7 = icmp eq i32 %6, 0, !dbg !3350
  br i1 %7, label %47, label %8, !dbg !3351

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %0, i64 0, i32 7, !dbg !3352
  %10 = load i32, i32* %9, align 4, !dbg !3352, !tbaa !3353
  %11 = icmp slt i32 %10, 0, !dbg !3355
  %12 = select i1 %11, i32 %2, i32 0, !dbg !3357
  %13 = add nsw i32 %12, %10, !dbg !3357
  %14 = sub i32 1, %6, !dbg !3358
  %15 = add i32 %14, %13, !dbg !3359
  %16 = sext i32 %15 to i64, !dbg !3360
  %17 = shl nsw i64 %16, 2, !dbg !3361
  %18 = tail call i8* @zmalloc(i64 %17) #6, !dbg !3362
  %19 = bitcast i8* %18 to i32*, !dbg !3362
  %20 = load i32, i32* %5, align 8, !dbg !3364, !tbaa !3349
  %21 = icmp sgt i32 %20, %13, !dbg !3367
  br i1 %21, label %47, label %22, !dbg !3369

; <label>:22:                                     ; preds = %8
  %23 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %0, i64 0, i32 8
  br label %24, !dbg !3369

; <label>:24:                                     ; preds = %22, %39
  %25 = phi i64 [ 0, %22 ], [ %40, %39 ]
  %26 = phi i32 [ %20, %22 ], [ %43, %39 ]
  %27 = icmp slt i32 %26, %2, !dbg !3370
  br i1 %27, label %39, label %28, !dbg !3373

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %0, i64 0, i32 4, !dbg !3374
  %30 = load i32, i32* %29, align 8, !dbg !3374, !tbaa !298
  %31 = and i32 %30, 8, !dbg !3377
  %32 = icmp eq i32 %31, 0, !dbg !3377
  br i1 %32, label %33, label %37, !dbg !3378

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %0, i64 0, i32 2, !dbg !3379
  %35 = load i32, i32* %34, align 8, !dbg !3379, !tbaa !3380
  %36 = icmp slt i32 %35, 0, !dbg !3381
  br i1 %36, label %37, label %38, !dbg !3382

; <label>:37:                                     ; preds = %28, %33
  tail call void @zfree(i8* %18) #6, !dbg !3383
  br label %47, !dbg !3385

; <label>:38:                                     ; preds = %33
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 1220, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.36, i64 0, i64 0)) #6, !dbg !3386
  tail call void @_exit(i32 1) #9, !dbg !3386
  unreachable, !dbg !3386

; <label>:39:                                     ; preds = %24
  %40 = add nuw i64 %25, 1, !dbg !3388
  %41 = getelementptr inbounds i32, i32* %19, i64 %25, !dbg !3389
  store i32 %26, i32* %41, align 4, !dbg !3390, !tbaa !845
  %42 = load i32, i32* %23, align 8, !dbg !3391, !tbaa !3392
  %43 = add nsw i32 %42, %26, !dbg !3393
  %44 = icmp sgt i32 %43, %13, !dbg !3367
  br i1 %44, label %45, label %24, !dbg !3369, !llvm.loop !3394

; <label>:45:                                     ; preds = %39
  %46 = trunc i64 %40 to i32, !dbg !3396
  br label %47, !dbg !3396

; <label>:47:                                     ; preds = %8, %45, %4, %37
  %48 = phi i32 [ 0, %37 ], [ 0, %4 ], [ 0, %8 ], [ %46, %45 ]
  %49 = phi i32* [ null, %37 ], [ null, %4 ], [ %19, %8 ], [ %19, %45 ], !dbg !3397
  store i32 %48, i32* %3, align 4, !dbg !3398, !tbaa !845
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3400
  ret i32* %49, !dbg !3400
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32* @getKeysFromCommand(%struct.redisCommand*, %struct.redisObject**, i32, i32*) local_unnamed_addr #0 !dbg !3401 {
  %5 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %0, i64 0, i32 4, !dbg !3411
  %6 = load i32, i32* %5, align 8, !dbg !3411, !tbaa !298
  %7 = and i32 %6, 16384, !dbg !3413
  %8 = icmp eq i32 %7, 0, !dbg !3413
  br i1 %8, label %11, label %9, !dbg !3414

; <label>:9:                                      ; preds = %4
  %10 = tail call i32* @moduleGetCommandKeysViaAPI(%struct.redisCommand* nonnull %0, %struct.redisObject** %1, i32 %2, i32* %3) #6, !dbg !3415
  br label %22, !dbg !3417

; <label>:11:                                     ; preds = %4
  %12 = and i32 %6, 8, !dbg !3418
  %13 = icmp eq i32 %12, 0, !dbg !3418
  br i1 %13, label %14, label %20, !dbg !3420

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %0, i64 0, i32 5, !dbg !3421
  %16 = load i32* (%struct.redisCommand*, %struct.redisObject**, i32, i32*)*, i32* (%struct.redisCommand*, %struct.redisObject**, i32, i32*)** %15, align 8, !dbg !3421, !tbaa !3422
  %17 = icmp eq i32* (%struct.redisCommand*, %struct.redisObject**, i32, i32*)* %16, null, !dbg !3423
  br i1 %17, label %20, label %18, !dbg !3424

; <label>:18:                                     ; preds = %14
  %19 = tail call i32* %16(%struct.redisCommand* nonnull %0, %struct.redisObject** %1, i32 %2, i32* %3) #6, !dbg !3425
  br label %22, !dbg !3427

; <label>:20:                                     ; preds = %14, %11
  %21 = tail call i32* @getKeysUsingCommandTable(%struct.redisCommand* nonnull %0, %struct.redisObject** undef, i32 %2, i32* %3) #8, !dbg !3428
  br label %22, !dbg !3430

; <label>:22:                                     ; preds = %20, %18, %9
  %23 = phi i32* [ %10, %9 ], [ %21, %20 ], [ %19, %18 ], !dbg !3431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3432
  ret i32* %23, !dbg !3432
}

; Function Attrs: noredzone
declare dso_local i32* @moduleGetCommandKeysViaAPI(%struct.redisCommand*, %struct.redisObject**, i32, i32*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @getKeysFreeResult(i32*) local_unnamed_addr #0 !dbg !3433 {
  %2 = bitcast i32* %0 to i8*, !dbg !3439
  tail call void @zfree(i8* %2) #6, !dbg !3440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3441
  ret void, !dbg !3441
}

; Function Attrs: noredzone nounwind
define dso_local i32* @zunionInterGetKeys(%struct.redisCommand* nocapture readnone, %struct.redisObject** nocapture readonly, i32, i32* nocapture) local_unnamed_addr #0 !dbg !3442 {
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 2, !dbg !3455
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !3455, !tbaa !1135
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %6, i64 0, i32 2, !dbg !3456
  %8 = load i8*, i8** %7, align 8, !dbg !3456, !tbaa !215
  %9 = tail call i32 @atoi(i8* %8) #6, !dbg !3457
  %10 = icmp slt i32 %9, 1, !dbg !3459
  %11 = add nsw i32 %2, -3, !dbg !3461
  %12 = icmp sgt i32 %9, %11, !dbg !3462
  %13 = or i1 %10, %12, !dbg !3463
  br i1 %13, label %98, label %14, !dbg !3463

; <label>:14:                                     ; preds = %4
  %15 = add nsw i32 %9, 1, !dbg !3464
  %16 = sext i32 %15 to i64, !dbg !3465
  %17 = shl nsw i64 %16, 2, !dbg !3466
  %18 = tail call i8* @zmalloc(i64 %17) #6, !dbg !3467
  %19 = bitcast i8* %18 to i32*, !dbg !3467
  %20 = zext i32 %9 to i64
  %21 = icmp ult i32 %9, 8, !dbg !3470
  br i1 %21, label %86, label %22, !dbg !3470

; <label>:22:                                     ; preds = %14
  %23 = and i64 %20, 4294967288, !dbg !3470
  %24 = add nsw i64 %23, -8, !dbg !3470
  %25 = lshr exact i64 %24, 3, !dbg !3470
  %26 = add nuw nsw i64 %25, 1, !dbg !3470
  %27 = and i64 %26, 3, !dbg !3470
  %28 = icmp ult i64 %24, 24, !dbg !3470
  br i1 %28, label %66, label %29, !dbg !3470

; <label>:29:                                     ; preds = %22
  %30 = sub nsw i64 %26, %27, !dbg !3470
  br label %31, !dbg !3470

; <label>:31:                                     ; preds = %31, %29
  %32 = phi i64 [ 0, %29 ], [ %62, %31 ], !dbg !3473
  %33 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %29 ], [ %63, %31 ], !dbg !3474
  %34 = phi i64 [ %30, %29 ], [ %64, %31 ]
  %35 = getelementptr inbounds i32, i32* %19, i64 %32, !dbg !3475
  %36 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>, !dbg !3474
  %37 = add <4 x i32> %33, <i32 7, i32 7, i32 7, i32 7>, !dbg !3474
  %38 = bitcast i32* %35 to <4 x i32>*, !dbg !3474
  store <4 x i32> %36, <4 x i32>* %38, align 4, !dbg !3474, !tbaa !845
  %39 = getelementptr inbounds i32, i32* %35, i64 4, !dbg !3474
  %40 = bitcast i32* %39 to <4 x i32>*, !dbg !3474
  store <4 x i32> %37, <4 x i32>* %40, align 4, !dbg !3474, !tbaa !845
  %41 = or i64 %32, 8, !dbg !3473
  %42 = getelementptr inbounds i32, i32* %19, i64 %41, !dbg !3475
  %43 = add <4 x i32> %33, <i32 11, i32 11, i32 11, i32 11>, !dbg !3474
  %44 = add <4 x i32> %33, <i32 15, i32 15, i32 15, i32 15>, !dbg !3474
  %45 = bitcast i32* %42 to <4 x i32>*, !dbg !3474
  store <4 x i32> %43, <4 x i32>* %45, align 4, !dbg !3474, !tbaa !845
  %46 = getelementptr inbounds i32, i32* %42, i64 4, !dbg !3474
  %47 = bitcast i32* %46 to <4 x i32>*, !dbg !3474
  store <4 x i32> %44, <4 x i32>* %47, align 4, !dbg !3474, !tbaa !845
  %48 = or i64 %32, 16, !dbg !3473
  %49 = getelementptr inbounds i32, i32* %19, i64 %48, !dbg !3475
  %50 = add <4 x i32> %33, <i32 19, i32 19, i32 19, i32 19>, !dbg !3474
  %51 = add <4 x i32> %33, <i32 23, i32 23, i32 23, i32 23>, !dbg !3474
  %52 = bitcast i32* %49 to <4 x i32>*, !dbg !3474
  store <4 x i32> %50, <4 x i32>* %52, align 4, !dbg !3474, !tbaa !845
  %53 = getelementptr inbounds i32, i32* %49, i64 4, !dbg !3474
  %54 = bitcast i32* %53 to <4 x i32>*, !dbg !3474
  store <4 x i32> %51, <4 x i32>* %54, align 4, !dbg !3474, !tbaa !845
  %55 = or i64 %32, 24, !dbg !3473
  %56 = getelementptr inbounds i32, i32* %19, i64 %55, !dbg !3475
  %57 = add <4 x i32> %33, <i32 27, i32 27, i32 27, i32 27>, !dbg !3474
  %58 = add <4 x i32> %33, <i32 31, i32 31, i32 31, i32 31>, !dbg !3474
  %59 = bitcast i32* %56 to <4 x i32>*, !dbg !3474
  store <4 x i32> %57, <4 x i32>* %59, align 4, !dbg !3474, !tbaa !845
  %60 = getelementptr inbounds i32, i32* %56, i64 4, !dbg !3474
  %61 = bitcast i32* %60 to <4 x i32>*, !dbg !3474
  store <4 x i32> %58, <4 x i32>* %61, align 4, !dbg !3474, !tbaa !845
  %62 = add i64 %32, 32, !dbg !3473
  %63 = add <4 x i32> %33, <i32 32, i32 32, i32 32, i32 32>, !dbg !3474
  %64 = add i64 %34, -4, !dbg !3473
  %65 = icmp eq i64 %64, 0, !dbg !3473
  br i1 %65, label %66, label %31, !dbg !3473, !llvm.loop !3476

; <label>:66:                                     ; preds = %31, %22
  %67 = phi i64 [ 0, %22 ], [ %62, %31 ]
  %68 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %22 ], [ %63, %31 ]
  %69 = icmp eq i64 %27, 0, !dbg !3473
  br i1 %69, label %84, label %70, !dbg !3473

; <label>:70:                                     ; preds = %66, %70
  %71 = phi i64 [ %80, %70 ], [ %67, %66 ], !dbg !3473
  %72 = phi <4 x i32> [ %81, %70 ], [ %68, %66 ], !dbg !3474
  %73 = phi i64 [ %82, %70 ], [ %27, %66 ]
  %74 = getelementptr inbounds i32, i32* %19, i64 %71, !dbg !3475
  %75 = add <4 x i32> %72, <i32 3, i32 3, i32 3, i32 3>, !dbg !3474
  %76 = add <4 x i32> %72, <i32 7, i32 7, i32 7, i32 7>, !dbg !3474
  %77 = bitcast i32* %74 to <4 x i32>*, !dbg !3474
  store <4 x i32> %75, <4 x i32>* %77, align 4, !dbg !3474, !tbaa !845
  %78 = getelementptr inbounds i32, i32* %74, i64 4, !dbg !3474
  %79 = bitcast i32* %78 to <4 x i32>*, !dbg !3474
  store <4 x i32> %76, <4 x i32>* %79, align 4, !dbg !3474, !tbaa !845
  %80 = add i64 %71, 8, !dbg !3473
  %81 = add <4 x i32> %72, <i32 8, i32 8, i32 8, i32 8>, !dbg !3474
  %82 = add i64 %73, -1, !dbg !3473
  %83 = icmp eq i64 %82, 0, !dbg !3473
  br i1 %83, label %84, label %70, !dbg !3473, !llvm.loop !3480

; <label>:84:                                     ; preds = %70, %66
  %85 = icmp eq i64 %23, %20
  br i1 %85, label %95, label %86, !dbg !3470

; <label>:86:                                     ; preds = %84, %14
  %87 = phi i64 [ 0, %14 ], [ %23, %84 ]
  br label %88, !dbg !3475

; <label>:88:                                     ; preds = %86, %88
  %89 = phi i64 [ %93, %88 ], [ %87, %86 ]
  %90 = getelementptr inbounds i32, i32* %19, i64 %89, !dbg !3475
  %91 = trunc i64 %89 to i32, !dbg !3474
  %92 = add i32 %91, 3, !dbg !3474
  store i32 %92, i32* %90, align 4, !dbg !3474, !tbaa !845
  %93 = add nuw nsw i64 %89, 1, !dbg !3473
  %94 = icmp eq i64 %93, %20, !dbg !3482
  br i1 %94, label %95, label %88, !dbg !3477, !llvm.loop !3483

; <label>:95:                                     ; preds = %88, %84
  %96 = sext i32 %9 to i64, !dbg !3485
  %97 = getelementptr inbounds i32, i32* %19, i64 %96, !dbg !3485
  store i32 1, i32* %97, align 4, !dbg !3486, !tbaa !845
  br label %98, !dbg !3487

; <label>:98:                                     ; preds = %4, %95
  %99 = phi i32 [ %15, %95 ], [ 0, %4 ]
  %100 = phi i32* [ %19, %95 ], [ null, %4 ], !dbg !3488
  store i32 %99, i32* %3, align 4, !dbg !3489, !tbaa !845
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3491
  ret i32* %100, !dbg !3491
}

; Function Attrs: noredzone
declare dso_local i32 @atoi(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32* @evalGetKeys(%struct.redisCommand* nocapture readnone, %struct.redisObject** nocapture readonly, i32, i32* nocapture) local_unnamed_addr #0 !dbg !3492 {
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 2, !dbg !3505
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !3505, !tbaa !1135
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %6, i64 0, i32 2, !dbg !3506
  %8 = load i8*, i8** %7, align 8, !dbg !3506, !tbaa !215
  %9 = tail call i32 @atoi(i8* %8) #6, !dbg !3507
  %10 = icmp slt i32 %9, 1, !dbg !3509
  %11 = add nsw i32 %2, -3, !dbg !3511
  %12 = icmp sgt i32 %9, %11, !dbg !3512
  %13 = or i1 %10, %12, !dbg !3513
  br i1 %13, label %14, label %15, !dbg !3513

; <label>:14:                                     ; preds = %4
  store i32 0, i32* %3, align 4, !dbg !3514, !tbaa !845
  br label %95, !dbg !3516

; <label>:15:                                     ; preds = %4
  %16 = sext i32 %9 to i64, !dbg !3517
  %17 = shl nsw i64 %16, 2, !dbg !3518
  %18 = tail call i8* @zmalloc(i64 %17) #6, !dbg !3519
  %19 = bitcast i8* %18 to i32*, !dbg !3519
  store i32 %9, i32* %3, align 4, !dbg !3521, !tbaa !845
  %20 = zext i32 %9 to i64
  %21 = icmp ult i32 %9, 8, !dbg !3523
  br i1 %21, label %86, label %22, !dbg !3523

; <label>:22:                                     ; preds = %15
  %23 = and i64 %20, 4294967288, !dbg !3523
  %24 = add nsw i64 %23, -8, !dbg !3523
  %25 = lshr exact i64 %24, 3, !dbg !3523
  %26 = add nuw nsw i64 %25, 1, !dbg !3523
  %27 = and i64 %26, 3, !dbg !3523
  %28 = icmp ult i64 %24, 24, !dbg !3523
  br i1 %28, label %66, label %29, !dbg !3523

; <label>:29:                                     ; preds = %22
  %30 = sub nsw i64 %26, %27, !dbg !3523
  br label %31, !dbg !3523

; <label>:31:                                     ; preds = %31, %29
  %32 = phi i64 [ 0, %29 ], [ %62, %31 ], !dbg !3526
  %33 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %29 ], [ %63, %31 ], !dbg !3527
  %34 = phi i64 [ %30, %29 ], [ %64, %31 ]
  %35 = getelementptr inbounds i32, i32* %19, i64 %32, !dbg !3528
  %36 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>, !dbg !3527
  %37 = add <4 x i32> %33, <i32 7, i32 7, i32 7, i32 7>, !dbg !3527
  %38 = bitcast i32* %35 to <4 x i32>*, !dbg !3527
  store <4 x i32> %36, <4 x i32>* %38, align 4, !dbg !3527, !tbaa !845
  %39 = getelementptr inbounds i32, i32* %35, i64 4, !dbg !3527
  %40 = bitcast i32* %39 to <4 x i32>*, !dbg !3527
  store <4 x i32> %37, <4 x i32>* %40, align 4, !dbg !3527, !tbaa !845
  %41 = or i64 %32, 8, !dbg !3526
  %42 = getelementptr inbounds i32, i32* %19, i64 %41, !dbg !3528
  %43 = add <4 x i32> %33, <i32 11, i32 11, i32 11, i32 11>, !dbg !3527
  %44 = add <4 x i32> %33, <i32 15, i32 15, i32 15, i32 15>, !dbg !3527
  %45 = bitcast i32* %42 to <4 x i32>*, !dbg !3527
  store <4 x i32> %43, <4 x i32>* %45, align 4, !dbg !3527, !tbaa !845
  %46 = getelementptr inbounds i32, i32* %42, i64 4, !dbg !3527
  %47 = bitcast i32* %46 to <4 x i32>*, !dbg !3527
  store <4 x i32> %44, <4 x i32>* %47, align 4, !dbg !3527, !tbaa !845
  %48 = or i64 %32, 16, !dbg !3526
  %49 = getelementptr inbounds i32, i32* %19, i64 %48, !dbg !3528
  %50 = add <4 x i32> %33, <i32 19, i32 19, i32 19, i32 19>, !dbg !3527
  %51 = add <4 x i32> %33, <i32 23, i32 23, i32 23, i32 23>, !dbg !3527
  %52 = bitcast i32* %49 to <4 x i32>*, !dbg !3527
  store <4 x i32> %50, <4 x i32>* %52, align 4, !dbg !3527, !tbaa !845
  %53 = getelementptr inbounds i32, i32* %49, i64 4, !dbg !3527
  %54 = bitcast i32* %53 to <4 x i32>*, !dbg !3527
  store <4 x i32> %51, <4 x i32>* %54, align 4, !dbg !3527, !tbaa !845
  %55 = or i64 %32, 24, !dbg !3526
  %56 = getelementptr inbounds i32, i32* %19, i64 %55, !dbg !3528
  %57 = add <4 x i32> %33, <i32 27, i32 27, i32 27, i32 27>, !dbg !3527
  %58 = add <4 x i32> %33, <i32 31, i32 31, i32 31, i32 31>, !dbg !3527
  %59 = bitcast i32* %56 to <4 x i32>*, !dbg !3527
  store <4 x i32> %57, <4 x i32>* %59, align 4, !dbg !3527, !tbaa !845
  %60 = getelementptr inbounds i32, i32* %56, i64 4, !dbg !3527
  %61 = bitcast i32* %60 to <4 x i32>*, !dbg !3527
  store <4 x i32> %58, <4 x i32>* %61, align 4, !dbg !3527, !tbaa !845
  %62 = add i64 %32, 32, !dbg !3526
  %63 = add <4 x i32> %33, <i32 32, i32 32, i32 32, i32 32>, !dbg !3527
  %64 = add i64 %34, -4, !dbg !3526
  %65 = icmp eq i64 %64, 0, !dbg !3526
  br i1 %65, label %66, label %31, !dbg !3526, !llvm.loop !3529

; <label>:66:                                     ; preds = %31, %22
  %67 = phi i64 [ 0, %22 ], [ %62, %31 ]
  %68 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %22 ], [ %63, %31 ]
  %69 = icmp eq i64 %27, 0, !dbg !3526
  br i1 %69, label %84, label %70, !dbg !3526

; <label>:70:                                     ; preds = %66, %70
  %71 = phi i64 [ %80, %70 ], [ %67, %66 ], !dbg !3526
  %72 = phi <4 x i32> [ %81, %70 ], [ %68, %66 ], !dbg !3527
  %73 = phi i64 [ %82, %70 ], [ %27, %66 ]
  %74 = getelementptr inbounds i32, i32* %19, i64 %71, !dbg !3528
  %75 = add <4 x i32> %72, <i32 3, i32 3, i32 3, i32 3>, !dbg !3527
  %76 = add <4 x i32> %72, <i32 7, i32 7, i32 7, i32 7>, !dbg !3527
  %77 = bitcast i32* %74 to <4 x i32>*, !dbg !3527
  store <4 x i32> %75, <4 x i32>* %77, align 4, !dbg !3527, !tbaa !845
  %78 = getelementptr inbounds i32, i32* %74, i64 4, !dbg !3527
  %79 = bitcast i32* %78 to <4 x i32>*, !dbg !3527
  store <4 x i32> %76, <4 x i32>* %79, align 4, !dbg !3527, !tbaa !845
  %80 = add i64 %71, 8, !dbg !3526
  %81 = add <4 x i32> %72, <i32 8, i32 8, i32 8, i32 8>, !dbg !3527
  %82 = add i64 %73, -1, !dbg !3526
  %83 = icmp eq i64 %82, 0, !dbg !3526
  br i1 %83, label %84, label %70, !dbg !3526, !llvm.loop !3532

; <label>:84:                                     ; preds = %70, %66
  %85 = icmp eq i64 %23, %20
  br i1 %85, label %95, label %86, !dbg !3523

; <label>:86:                                     ; preds = %84, %15
  %87 = phi i64 [ 0, %15 ], [ %23, %84 ]
  br label %88, !dbg !3528

; <label>:88:                                     ; preds = %86, %88
  %89 = phi i64 [ %93, %88 ], [ %87, %86 ]
  %90 = getelementptr inbounds i32, i32* %19, i64 %89, !dbg !3528
  %91 = trunc i64 %89 to i32, !dbg !3527
  %92 = add i32 %91, 3, !dbg !3527
  store i32 %92, i32* %90, align 4, !dbg !3527, !tbaa !845
  %93 = add nuw nsw i64 %89, 1, !dbg !3526
  %94 = icmp eq i64 %93, %20, !dbg !3533
  br i1 %94, label %95, label %88, !dbg !3530, !llvm.loop !3534

; <label>:95:                                     ; preds = %88, %84, %14
  %96 = phi i32* [ null, %14 ], [ %19, %84 ], [ %19, %88 ], !dbg !3535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3536
  ret i32* %96, !dbg !3536
}

; Function Attrs: noredzone nounwind
define dso_local i32* @sortGetKeys(%struct.redisCommand* nocapture readnone, %struct.redisObject** nocapture readonly, i32, i32* nocapture) local_unnamed_addr #0 !dbg !3537 {
  %5 = alloca [4 x %struct.anon.9], align 16
  %6 = tail call i8* @zmalloc(i64 8) #6, !dbg !3560
  %7 = bitcast i8* %6 to i32*, !dbg !3560
  store i32 1, i32* %7, align 4, !dbg !3562, !tbaa !845
  %8 = bitcast [4 x %struct.anon.9]* %5 to i8*, !dbg !3563
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %8) #7, !dbg !3563
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 64, i1 false), !dbg !3564
  %9 = getelementptr inbounds [4 x %struct.anon.9], [4 x %struct.anon.9]* %5, i64 0, i64 0, i32 0, !dbg !3564
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), i8** %9, align 16, !dbg !3564
  %10 = getelementptr inbounds [4 x %struct.anon.9], [4 x %struct.anon.9]* %5, i64 0, i64 0, i32 1, !dbg !3564
  store i32 2, i32* %10, align 8, !dbg !3564
  %11 = getelementptr inbounds [4 x %struct.anon.9], [4 x %struct.anon.9]* %5, i64 0, i64 1, i32 0, !dbg !3564
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i8** %11, align 16, !dbg !3564
  %12 = getelementptr inbounds [4 x %struct.anon.9], [4 x %struct.anon.9]* %5, i64 0, i64 1, i32 1, !dbg !3564
  store i32 1, i32* %12, align 8, !dbg !3564
  %13 = getelementptr inbounds [4 x %struct.anon.9], [4 x %struct.anon.9]* %5, i64 0, i64 2, i32 0, !dbg !3564
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0), i8** %13, align 16, !dbg !3564
  %14 = getelementptr inbounds [4 x %struct.anon.9], [4 x %struct.anon.9]* %5, i64 0, i64 2, i32 1, !dbg !3564
  store i32 1, i32* %14, align 8, !dbg !3564
  %15 = icmp sgt i32 %2, 2, !dbg !3566
  br i1 %15, label %16, label %53, !dbg !3569

; <label>:16:                                     ; preds = %4
  %17 = getelementptr inbounds i8, i8* %6, i64 4
  %18 = bitcast i8* %17 to i32*
  br label %19, !dbg !3569

; <label>:19:                                     ; preds = %48, %16
  %20 = phi i32 [ 0, %16 ], [ %50, %48 ]
  %21 = phi i32 [ 2, %16 ], [ %51, %48 ]
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %22
  %24 = load %struct.redisObject*, %struct.redisObject** %23, align 8, !tbaa !1135
  %25 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %24, i64 0, i32 2
  %26 = load i8*, i8** %25, align 8, !tbaa !215
  %27 = add nsw i32 %21, 1
  %28 = icmp sge i32 %27, %2
  br label %29, !dbg !3571

; <label>:29:                                     ; preds = %19, %43
  %30 = phi i64 [ 0, %19 ], [ %44, %43 ]
  %31 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %19 ], [ %46, %43 ]
  %32 = tail call i32 @strcasecmp(i8* %26, i8* nonnull %31) #10, !dbg !3574
  %33 = icmp eq i32 %32, 0, !dbg !3574
  br i1 %33, label %34, label %38, !dbg !3578

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds [4 x %struct.anon.9], [4 x %struct.anon.9]* %5, i64 0, i64 %30, i32 1, !dbg !3579
  %36 = load i32, i32* %35, align 8, !dbg !3579, !tbaa !3581
  %37 = add nsw i32 %36, %21, !dbg !3583
  br label %48, !dbg !3584

; <label>:38:                                     ; preds = %29
  %39 = tail call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !3585
  %40 = icmp ne i32 %39, 0, !dbg !3585
  %41 = or i1 %40, %28, !dbg !3587
  br i1 %41, label %43, label %42, !dbg !3587

; <label>:42:                                     ; preds = %38
  store i32 %27, i32* %18, align 4, !dbg !3588, !tbaa !845
  br label %48, !dbg !3590

; <label>:43:                                     ; preds = %38
  %44 = add nuw i64 %30, 1, !dbg !3591
  %45 = getelementptr inbounds [4 x %struct.anon.9], [4 x %struct.anon.9]* %5, i64 0, i64 %44, i32 0, !dbg !3592
  %46 = load i8*, i8** %45, align 16, !dbg !3592, !tbaa !3593
  %47 = icmp eq i8* %46, null, !dbg !3594
  br i1 %47, label %48, label %29, !dbg !3571, !llvm.loop !3595

; <label>:48:                                     ; preds = %43, %34, %42
  %49 = phi i32 [ %21, %42 ], [ %37, %34 ], [ %21, %43 ], !dbg !3597
  %50 = phi i32 [ 1, %42 ], [ %20, %34 ], [ %20, %43 ], !dbg !3598
  %51 = add nsw i32 %49, 1, !dbg !3599
  %52 = icmp slt i32 %51, %2, !dbg !3566
  br i1 %52, label %19, label %53, !dbg !3569, !llvm.loop !3600

; <label>:53:                                     ; preds = %48, %4
  %54 = phi i32 [ 0, %4 ], [ %50, %48 ], !dbg !3602
  %55 = add nsw i32 %54, 1, !dbg !3603
  store i32 %55, i32* %3, align 4, !dbg !3604, !tbaa !845
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %8) #7, !dbg !3605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3606
  ret i32* %7, !dbg !3606
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #2

; Function Attrs: noredzone nounwind
define dso_local i32* @migrateGetKeys(%struct.redisCommand* nocapture readnone, %struct.redisObject** nocapture readonly, i32, i32* nocapture) local_unnamed_addr #0 !dbg !3607 {
  %5 = icmp sgt i32 %2, 6, !dbg !3623
  br i1 %5, label %6, label %57, !dbg !3625

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 3
  %8 = sext i32 %2 to i64, !dbg !3627
  br label %9, !dbg !3627

; <label>:9:                                      ; preds = %6, %54
  %10 = phi i64 [ 6, %6 ], [ %55, %54 ]
  %11 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %10, !dbg !3630
  %12 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !3630, !tbaa !1135
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %12, i64 0, i32 2, !dbg !3634
  %14 = load i8*, i8** %13, align 8, !dbg !3634, !tbaa !215
  %15 = tail call i32 @strcasecmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0)) #10, !dbg !3635
  %16 = icmp eq i32 %15, 0, !dbg !3635
  br i1 %16, label %17, label %54, !dbg !3636

; <label>:17:                                     ; preds = %9
  %18 = load %struct.redisObject*, %struct.redisObject** %7, align 8, !dbg !3637, !tbaa !1135
  %19 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 2, !dbg !3638
  %20 = load i8*, i8** %19, align 8, !dbg !3638, !tbaa !215
  %21 = getelementptr inbounds i8, i8* %20, i64 -1, !dbg !3641
  %22 = load i8, i8* %21, align 1, !dbg !3641, !tbaa !222
  %23 = trunc i8 %22 to i3, !dbg !3643
  switch i3 %23, label %24 [
    i3 0, label %25
    i3 1, label %28
    i3 2, label %32
    i3 3, label %37
    i3 -4, label %42
  ], !dbg !3643

; <label>:24:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3644
  br label %49, !dbg !3645

; <label>:25:                                     ; preds = %17
  %26 = lshr i8 %22, 3, !dbg !3646
  %27 = zext i8 %26 to i64, !dbg !3646
  br label %46, !dbg !3647

; <label>:28:                                     ; preds = %17
  %29 = getelementptr inbounds i8, i8* %20, i64 -3, !dbg !3648
  %30 = load i8, i8* %29, align 1, !dbg !3649, !tbaa !222
  %31 = zext i8 %30 to i64, !dbg !3648
  br label %46, !dbg !3650

; <label>:32:                                     ; preds = %17
  %33 = getelementptr inbounds i8, i8* %20, i64 -5, !dbg !3651
  %34 = bitcast i8* %33 to i16*, !dbg !3652
  %35 = load i16, i16* %34, align 1, !dbg !3652, !tbaa !840
  %36 = zext i16 %35 to i64, !dbg !3651
  br label %46, !dbg !3653

; <label>:37:                                     ; preds = %17
  %38 = getelementptr inbounds i8, i8* %20, i64 -9, !dbg !3654
  %39 = bitcast i8* %38 to i32*, !dbg !3655
  %40 = load i32, i32* %39, align 1, !dbg !3655, !tbaa !845
  %41 = zext i32 %40 to i64, !dbg !3654
  br label %46, !dbg !3656

; <label>:42:                                     ; preds = %17
  %43 = getelementptr inbounds i8, i8* %20, i64 -17, !dbg !3657
  %44 = bitcast i8* %43 to i64*, !dbg !3658
  %45 = load i64, i64* %44, align 1, !dbg !3658, !tbaa !849
  br label %46, !dbg !3659

; <label>:46:                                     ; preds = %25, %28, %32, %37, %42
  %47 = phi i64 [ %45, %42 ], [ %41, %37 ], [ %36, %32 ], [ %31, %28 ], [ %27, %25 ], !dbg !3660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3644
  %48 = icmp eq i64 %47, 0, !dbg !3661
  br i1 %48, label %49, label %54, !dbg !3645

; <label>:49:                                     ; preds = %46, %24
  %50 = trunc i64 %10 to i32, !dbg !3626
  %51 = add nuw nsw i32 %50, 1, !dbg !3662
  %52 = sub nsw i32 %2, %51, !dbg !3664
  %53 = zext i32 %51 to i64, !dbg !3665
  br label %57, !dbg !3665

; <label>:54:                                     ; preds = %9, %46
  %55 = add nuw nsw i64 %10, 1, !dbg !3666
  %56 = icmp slt i64 %55, %8, !dbg !3667
  br i1 %56, label %9, label %57, !dbg !3627, !llvm.loop !3668

; <label>:57:                                     ; preds = %54, %49, %4
  %58 = phi i32 [ %52, %49 ], [ 1, %4 ], [ 1, %54 ], !dbg !3670
  %59 = phi i64 [ %53, %49 ], [ 3, %4 ], [ 3, %54 ]
  %60 = sext i32 %58 to i64, !dbg !3671
  %61 = shl nsw i64 %60, 2, !dbg !3672
  %62 = tail call i8* @zmalloc(i64 %61) #6, !dbg !3673
  %63 = bitcast i8* %62 to i32*, !dbg !3673
  %64 = icmp sgt i32 %58, 0, !dbg !3675
  br i1 %64, label %65, label %134, !dbg !3678

; <label>:65:                                     ; preds = %57
  %66 = zext i32 %58 to i64
  %67 = icmp ult i32 %58, 8, !dbg !3679
  br i1 %67, label %125, label %68, !dbg !3679

; <label>:68:                                     ; preds = %65
  %69 = and i64 %66, 4294967288, !dbg !3679
  %70 = insertelement <4 x i64> undef, i64 %59, i32 0, !dbg !3679
  %71 = shufflevector <4 x i64> %70, <4 x i64> undef, <4 x i32> zeroinitializer, !dbg !3679
  %72 = insertelement <4 x i64> undef, i64 %59, i32 0, !dbg !3679
  %73 = shufflevector <4 x i64> %72, <4 x i64> undef, <4 x i32> zeroinitializer, !dbg !3679
  %74 = add nsw i64 %69, -8, !dbg !3679
  %75 = lshr exact i64 %74, 3, !dbg !3679
  %76 = add nuw nsw i64 %75, 1, !dbg !3679
  %77 = and i64 %76, 1, !dbg !3679
  %78 = icmp eq i64 %74, 0, !dbg !3679
  br i1 %78, label %109, label %79, !dbg !3679

; <label>:79:                                     ; preds = %68
  %80 = sub nsw i64 %76, %77, !dbg !3679
  br label %81, !dbg !3679

; <label>:81:                                     ; preds = %81, %79
  %82 = phi i64 [ 0, %79 ], [ %105, %81 ], !dbg !3680
  %83 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %79 ], [ %106, %81 ]
  %84 = phi i64 [ %80, %79 ], [ %107, %81 ]
  %85 = add <4 x i64> %83, <i64 4, i64 4, i64 4, i64 4>
  %86 = add nuw nsw <4 x i64> %83, %71, !dbg !3679
  %87 = add nuw nsw <4 x i64> %85, %73, !dbg !3679
  %88 = getelementptr inbounds i32, i32* %63, i64 %82, !dbg !3681
  %89 = trunc <4 x i64> %86 to <4 x i32>, !dbg !3682
  %90 = trunc <4 x i64> %87 to <4 x i32>, !dbg !3682
  %91 = bitcast i32* %88 to <4 x i32>*, !dbg !3682
  store <4 x i32> %89, <4 x i32>* %91, align 4, !dbg !3682, !tbaa !845
  %92 = getelementptr inbounds i32, i32* %88, i64 4, !dbg !3682
  %93 = bitcast i32* %92 to <4 x i32>*, !dbg !3682
  store <4 x i32> %90, <4 x i32>* %93, align 4, !dbg !3682, !tbaa !845
  %94 = or i64 %82, 8, !dbg !3680
  %95 = add <4 x i64> %83, <i64 8, i64 8, i64 8, i64 8>
  %96 = add <4 x i64> %83, <i64 12, i64 12, i64 12, i64 12>
  %97 = add nuw nsw <4 x i64> %95, %71, !dbg !3679
  %98 = add nuw nsw <4 x i64> %96, %73, !dbg !3679
  %99 = getelementptr inbounds i32, i32* %63, i64 %94, !dbg !3681
  %100 = trunc <4 x i64> %97 to <4 x i32>, !dbg !3682
  %101 = trunc <4 x i64> %98 to <4 x i32>, !dbg !3682
  %102 = bitcast i32* %99 to <4 x i32>*, !dbg !3682
  store <4 x i32> %100, <4 x i32>* %102, align 4, !dbg !3682, !tbaa !845
  %103 = getelementptr inbounds i32, i32* %99, i64 4, !dbg !3682
  %104 = bitcast i32* %103 to <4 x i32>*, !dbg !3682
  store <4 x i32> %101, <4 x i32>* %104, align 4, !dbg !3682, !tbaa !845
  %105 = add i64 %82, 16, !dbg !3680
  %106 = add <4 x i64> %83, <i64 16, i64 16, i64 16, i64 16>
  %107 = add i64 %84, -2, !dbg !3680
  %108 = icmp eq i64 %107, 0, !dbg !3680
  br i1 %108, label %109, label %81, !dbg !3680, !llvm.loop !3683

; <label>:109:                                    ; preds = %81, %68
  %110 = phi i64 [ 0, %68 ], [ %105, %81 ]
  %111 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %68 ], [ %106, %81 ]
  %112 = icmp eq i64 %77, 0, !dbg !3680
  br i1 %112, label %123, label %113, !dbg !3680

; <label>:113:                                    ; preds = %109
  %114 = add <4 x i64> %111, <i64 4, i64 4, i64 4, i64 4>
  %115 = add nuw nsw <4 x i64> %111, %71, !dbg !3679
  %116 = add nuw nsw <4 x i64> %114, %73, !dbg !3679
  %117 = getelementptr inbounds i32, i32* %63, i64 %110, !dbg !3681
  %118 = trunc <4 x i64> %115 to <4 x i32>, !dbg !3682
  %119 = trunc <4 x i64> %116 to <4 x i32>, !dbg !3682
  %120 = bitcast i32* %117 to <4 x i32>*, !dbg !3682
  store <4 x i32> %118, <4 x i32>* %120, align 4, !dbg !3682, !tbaa !845
  %121 = getelementptr inbounds i32, i32* %117, i64 4, !dbg !3682
  %122 = bitcast i32* %121 to <4 x i32>*, !dbg !3682
  store <4 x i32> %119, <4 x i32>* %122, align 4, !dbg !3682, !tbaa !845
  br label %123

; <label>:123:                                    ; preds = %109, %113
  %124 = icmp eq i64 %69, %66
  br i1 %124, label %134, label %125, !dbg !3679

; <label>:125:                                    ; preds = %123, %65
  %126 = phi i64 [ 0, %65 ], [ %69, %123 ]
  br label %127, !dbg !3679

; <label>:127:                                    ; preds = %125, %127
  %128 = phi i64 [ %132, %127 ], [ %126, %125 ]
  %129 = add nuw nsw i64 %128, %59, !dbg !3679
  %130 = getelementptr inbounds i32, i32* %63, i64 %128, !dbg !3681
  %131 = trunc i64 %129 to i32, !dbg !3682
  store i32 %131, i32* %130, align 4, !dbg !3682, !tbaa !845
  %132 = add nuw nsw i64 %128, 1, !dbg !3680
  %133 = icmp eq i64 %132, %66, !dbg !3675
  br i1 %133, label %134, label %127, !dbg !3678, !llvm.loop !3685

; <label>:134:                                    ; preds = %127, %123, %57
  store i32 %58, i32* %3, align 4, !dbg !3686, !tbaa !845
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3687
  ret i32* %63, !dbg !3687
}

; Function Attrs: noredzone nounwind
define dso_local i32* @georadiusGetKeys(%struct.redisCommand* nocapture readnone, %struct.redisObject** nocapture readonly, i32, i32* nocapture) local_unnamed_addr #0 !dbg !3688 {
  %5 = icmp sgt i32 %2, 5, !dbg !3708
  br i1 %5, label %6, label %29, !dbg !3709

; <label>:6:                                      ; preds = %4, %24
  %7 = phi i32 [ %27, %24 ], [ 5, %4 ]
  %8 = phi i32 [ %25, %24 ], [ -1, %4 ]
  %9 = sext i32 %7 to i64, !dbg !3710
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %9, !dbg !3710
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !3710, !tbaa !1135
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 2, !dbg !3711
  %13 = load i8*, i8** %12, align 8, !dbg !3711, !tbaa !215
  %14 = tail call i32 @strcasecmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !3713
  %15 = icmp eq i32 %14, 0, !dbg !3713
  br i1 %15, label %19, label %16, !dbg !3715

; <label>:16:                                     ; preds = %6
  %17 = tail call i32 @strcasecmp(i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0)) #10, !dbg !3716
  %18 = icmp eq i32 %17, 0, !dbg !3716
  br i1 %18, label %19, label %24, !dbg !3717

; <label>:19:                                     ; preds = %16, %6
  %20 = add nsw i32 %7, 1, !dbg !3718
  %21 = icmp slt i32 %20, %2, !dbg !3719
  %22 = select i1 %21, i32 %20, i32 %8, !dbg !3720
  %23 = select i1 %21, i32 %20, i32 %7, !dbg !3720
  br label %24, !dbg !3720

; <label>:24:                                     ; preds = %19, %16
  %25 = phi i32 [ %8, %16 ], [ %22, %19 ], !dbg !3721
  %26 = phi i32 [ %7, %16 ], [ %23, %19 ], !dbg !3722
  %27 = add nsw i32 %26, 1, !dbg !3723
  %28 = icmp slt i32 %27, %2, !dbg !3708
  br i1 %28, label %6, label %29, !dbg !3709, !llvm.loop !3724

; <label>:29:                                     ; preds = %24, %4
  %30 = phi i32 [ -1, %4 ], [ %25, %24 ], !dbg !3706
  %31 = icmp eq i32 %30, -1, !dbg !3726
  %32 = select i1 %31, i32 1, i32 2, !dbg !3727
  %33 = shl nuw nsw i32 %32, 2, !dbg !3729
  %34 = zext i32 %33 to i64, !dbg !3729
  %35 = tail call i8* @zmalloc(i64 %34) #6, !dbg !3730
  %36 = bitcast i8* %35 to i32*, !dbg !3730
  store i32 1, i32* %36, align 4, !dbg !3732, !tbaa !845
  br i1 %31, label %40, label %37, !dbg !3733

; <label>:37:                                     ; preds = %29
  %38 = getelementptr inbounds i8, i8* %35, i64 4, !dbg !3734
  %39 = bitcast i8* %38 to i32*, !dbg !3734
  store i32 %30, i32* %39, align 4, !dbg !3737, !tbaa !845
  br label %40, !dbg !3738

; <label>:40:                                     ; preds = %29, %37
  store i32 %32, i32* %3, align 4, !dbg !3739, !tbaa !845
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3740
  ret i32* %36, !dbg !3740
}

; Function Attrs: noredzone nounwind
define dso_local i32* @xreadGetKeys(%struct.redisCommand* nocapture readnone, %struct.redisObject** nocapture readonly, i32, i32* nocapture) local_unnamed_addr #0 !dbg !3741 {
  %5 = icmp sgt i32 %2, 1, !dbg !3762
  br i1 %5, label %6, label %38, !dbg !3763

; <label>:6:                                      ; preds = %4, %34
  %7 = phi i32 [ %36, %34 ], [ 1, %4 ]
  %8 = sext i32 %7 to i64, !dbg !3764
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %8, !dbg !3764
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !3764, !tbaa !1135
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i64 0, i32 2, !dbg !3765
  %12 = load i8*, i8** %11, align 8, !dbg !3765, !tbaa !215
  %13 = tail call i32 @strcasecmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0)) #10, !dbg !3767
  %14 = icmp eq i32 %13, 0, !dbg !3767
  br i1 %14, label %15, label %17, !dbg !3769

; <label>:15:                                     ; preds = %6
  %16 = add nsw i32 %7, 1, !dbg !3770
  br label %34, !dbg !3772

; <label>:17:                                     ; preds = %6
  %18 = tail call i32 @strcasecmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !3773
  %19 = icmp eq i32 %18, 0, !dbg !3773
  br i1 %19, label %20, label %22, !dbg !3775

; <label>:20:                                     ; preds = %17
  %21 = add nsw i32 %7, 1, !dbg !3776
  br label %34, !dbg !3778

; <label>:22:                                     ; preds = %17
  %23 = tail call i32 @strcasecmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0)) #10, !dbg !3779
  %24 = icmp eq i32 %23, 0, !dbg !3779
  br i1 %24, label %25, label %27, !dbg !3781

; <label>:25:                                     ; preds = %22
  %26 = add nsw i32 %7, 2, !dbg !3782
  br label %34, !dbg !3784

; <label>:27:                                     ; preds = %22
  %28 = tail call i32 @strcasecmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0)) #10, !dbg !3785
  %29 = icmp eq i32 %28, 0, !dbg !3785
  br i1 %29, label %34, label %30, !dbg !3787

; <label>:30:                                     ; preds = %27
  %31 = tail call i32 @strcasecmp(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0)) #10, !dbg !3788
  %32 = icmp eq i32 %31, 0, !dbg !3788
  %33 = select i1 %32, i32 %7, i32 -1, !dbg !3790
  br label %38

; <label>:34:                                     ; preds = %27, %20, %25, %15
  %35 = phi i32 [ %16, %15 ], [ %21, %20 ], [ %26, %25 ], [ %7, %27 ]
  %36 = add nsw i32 %35, 1, !dbg !3792
  %37 = icmp slt i32 %36, %2, !dbg !3762
  br i1 %37, label %6, label %38, !dbg !3763, !llvm.loop !3793

; <label>:38:                                     ; preds = %34, %4, %30
  %39 = phi i32 [ %33, %30 ], [ -1, %4 ], [ -1, %34 ], !dbg !3760
  %40 = icmp eq i32 %39, -1, !dbg !3795
  %41 = xor i32 %39, -1, !dbg !3797
  %42 = add i32 %41, %2, !dbg !3797
  %43 = select i1 %40, i32 0, i32 %42, !dbg !3798
  %44 = icmp eq i32 %43, 0, !dbg !3799
  %45 = or i1 %40, %44, !dbg !3801
  %46 = xor i1 %45, true, !dbg !3801
  %47 = and i32 %43, 1, !dbg !3802
  %48 = icmp eq i32 %47, 0, !dbg !3802
  %49 = and i1 %48, %46, !dbg !3801
  br i1 %49, label %50, label %151, !dbg !3801

; <label>:50:                                     ; preds = %38
  %51 = sdiv i32 %43, 2, !dbg !3803
  %52 = sext i32 %51 to i64, !dbg !3804
  %53 = shl nsw i64 %52, 2, !dbg !3805
  %54 = tail call i8* @zmalloc(i64 %53) #6, !dbg !3806
  %55 = bitcast i8* %54 to i32*, !dbg !3806
  %56 = add i32 %39, 1, !dbg !3808
  %57 = sub i32 %2, %51, !dbg !3811
  %58 = icmp slt i32 %56, %57, !dbg !3812
  br i1 %58, label %59, label %151, !dbg !3813

; <label>:59:                                     ; preds = %50
  %60 = sext i32 %56 to i64, !dbg !3814
  %61 = add i32 %2, -2, !dbg !3814
  %62 = sub i32 %61, %51, !dbg !3814
  %63 = sub i32 %62, %39, !dbg !3814
  %64 = zext i32 %63 to i64, !dbg !3814
  %65 = add nuw nsw i64 %64, 1, !dbg !3814
  %66 = icmp ult i64 %65, 8, !dbg !3814
  br i1 %66, label %98, label %67, !dbg !3814

; <label>:67:                                     ; preds = %59
  %68 = add i32 %2, -2, !dbg !3814
  %69 = sub i32 %68, %51, !dbg !3814
  %70 = sub i32 %69, %39, !dbg !3814
  %71 = icmp slt i32 %70, 0, !dbg !3814
  br i1 %71, label %98, label %72, !dbg !3814

; <label>:72:                                     ; preds = %67
  %73 = add i32 %63, 1, !dbg !3814
  %74 = and i32 %73, 7, !dbg !3814
  %75 = zext i32 %74 to i64, !dbg !3814
  %76 = sub nsw i64 %65, %75, !dbg !3814
  %77 = add nsw i64 %76, %60, !dbg !3814
  %78 = trunc i64 %76 to i32, !dbg !3814
  %79 = add i32 %39, %78, !dbg !3814
  %80 = insertelement <4 x i32> undef, i32 %56, i32 0, !dbg !3814
  %81 = shufflevector <4 x i32> %80, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !3814
  %82 = add <4 x i32> %81, <i32 0, i32 1, i32 2, i32 3>, !dbg !3814
  br label %83, !dbg !3814

; <label>:83:                                     ; preds = %83, %72
  %84 = phi i64 [ 0, %72 ], [ %93, %83 ]
  %85 = phi <4 x i32> [ %82, %72 ], [ %94, %83 ], !dbg !3815
  %86 = shl i64 %84, 32, !dbg !3816
  %87 = ashr exact i64 %86, 32, !dbg !3816
  %88 = getelementptr inbounds i32, i32* %55, i64 %87, !dbg !3816
  %89 = add <4 x i32> %85, <i32 4, i32 4, i32 4, i32 4>, !dbg !3815
  %90 = bitcast i32* %88 to <4 x i32>*, !dbg !3815
  store <4 x i32> %85, <4 x i32>* %90, align 4, !dbg !3815, !tbaa !845
  %91 = getelementptr inbounds i32, i32* %88, i64 4, !dbg !3815
  %92 = bitcast i32* %91 to <4 x i32>*, !dbg !3815
  store <4 x i32> %89, <4 x i32>* %92, align 4, !dbg !3815, !tbaa !845
  %93 = add i64 %84, 8
  %94 = add <4 x i32> %85, <i32 8, i32 8, i32 8, i32 8>, !dbg !3815
  %95 = icmp eq i64 %93, %76
  br i1 %95, label %96, label %83, !llvm.loop !3817

; <label>:96:                                     ; preds = %83
  %97 = icmp eq i32 %74, 0
  br i1 %97, label %151, label %98, !dbg !3814

; <label>:98:                                     ; preds = %96, %67, %59
  %99 = phi i64 [ %60, %67 ], [ %60, %59 ], [ %77, %96 ]
  %100 = phi i32 [ %39, %67 ], [ %39, %59 ], [ %79, %96 ]
  %101 = sub i32 %2, %51, !dbg !3814
  %102 = trunc i64 %99 to i32, !dbg !3814
  %103 = sub i32 %101, %102, !dbg !3814
  %104 = xor i32 %51, -1, !dbg !3814
  %105 = add i32 %104, %2, !dbg !3814
  %106 = sub i32 %105, %102, !dbg !3814
  %107 = and i32 %103, 3, !dbg !3814
  %108 = icmp eq i32 %107, 0, !dbg !3814
  br i1 %108, label %122, label %109, !dbg !3814

; <label>:109:                                    ; preds = %98, %109
  %110 = phi i64 [ %117, %109 ], [ %99, %98 ]
  %111 = phi i32 [ %116, %109 ], [ %100, %98 ]
  %112 = phi i32 [ %118, %109 ], [ %107, %98 ]
  %113 = sub i32 %111, %39, !dbg !3814
  %114 = sext i32 %113 to i64, !dbg !3816
  %115 = getelementptr inbounds i32, i32* %55, i64 %114, !dbg !3816
  %116 = trunc i64 %110 to i32, !dbg !3815
  store i32 %116, i32* %115, align 4, !dbg !3815, !tbaa !845
  %117 = add nsw i64 %110, 1, !dbg !3808
  %118 = add i32 %112, -1, !dbg !3813
  %119 = icmp eq i32 %118, 0, !dbg !3813
  br i1 %119, label %120, label %109, !dbg !3813, !llvm.loop !3819

; <label>:120:                                    ; preds = %109
  %121 = trunc i64 %110 to i32, !dbg !3815
  br label %122, !dbg !3814

; <label>:122:                                    ; preds = %98, %120
  %123 = phi i64 [ %99, %98 ], [ %117, %120 ]
  %124 = phi i32 [ %100, %98 ], [ %121, %120 ]
  %125 = icmp ult i32 %106, 3, !dbg !3814
  br i1 %125, label %151, label %126, !dbg !3814

; <label>:126:                                    ; preds = %122, %126
  %127 = phi i64 [ %148, %126 ], [ %123, %122 ]
  %128 = phi i32 [ %147, %126 ], [ %124, %122 ]
  %129 = sub i32 %128, %39, !dbg !3814
  %130 = sext i32 %129 to i64, !dbg !3816
  %131 = getelementptr inbounds i32, i32* %55, i64 %130, !dbg !3816
  %132 = trunc i64 %127 to i32, !dbg !3815
  store i32 %132, i32* %131, align 4, !dbg !3815, !tbaa !845
  %133 = sub i32 %132, %39, !dbg !3814
  %134 = sext i32 %133 to i64, !dbg !3816
  %135 = getelementptr inbounds i32, i32* %55, i64 %134, !dbg !3816
  %136 = trunc i64 %127 to i32, !dbg !3815
  %137 = add i32 %136, 1, !dbg !3815
  store i32 %137, i32* %135, align 4, !dbg !3815, !tbaa !845
  %138 = sub i32 %137, %39, !dbg !3814
  %139 = sext i32 %138 to i64, !dbg !3816
  %140 = getelementptr inbounds i32, i32* %55, i64 %139, !dbg !3816
  %141 = trunc i64 %127 to i32, !dbg !3815
  %142 = add i32 %141, 2, !dbg !3815
  store i32 %142, i32* %140, align 4, !dbg !3815, !tbaa !845
  %143 = sub i32 %142, %39, !dbg !3814
  %144 = sext i32 %143 to i64, !dbg !3816
  %145 = getelementptr inbounds i32, i32* %55, i64 %144, !dbg !3816
  %146 = trunc i64 %127 to i32, !dbg !3815
  %147 = add i32 %146, 3, !dbg !3815
  store i32 %147, i32* %145, align 4, !dbg !3815, !tbaa !845
  %148 = add nsw i64 %127, 4, !dbg !3808
  %149 = trunc i64 %148 to i32, !dbg !3812
  %150 = icmp eq i32 %57, %149, !dbg !3812
  br i1 %150, label %151, label %126, !dbg !3813, !llvm.loop !3820

; <label>:151:                                    ; preds = %122, %126, %96, %50, %38
  %152 = phi i32 [ 0, %38 ], [ %51, %50 ], [ %51, %96 ], [ %51, %126 ], [ %51, %122 ]
  %153 = phi i32* [ null, %38 ], [ %55, %50 ], [ %55, %96 ], [ %55, %126 ], [ %55, %122 ], !dbg !3821
  store i32 %152, i32* %3, align 4, !dbg !3822, !tbaa !845
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3824
  ret i32* %153, !dbg !3824
}

; Function Attrs: noredzone nounwind
define dso_local void @slotToKeyUpdateKey(%struct.redisObject* nocapture readonly, i32) local_unnamed_addr #0 !dbg !3825 {
  %3 = alloca [64 x i8], align 16
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !3840
  %5 = load i8*, i8** %4, align 8, !dbg !3840, !tbaa !215
  %6 = getelementptr inbounds i8, i8* %5, i64 -1, !dbg !3843
  %7 = load i8, i8* %6, align 1, !dbg !3843, !tbaa !222
  %8 = trunc i8 %7 to i3, !dbg !3845
  switch i3 %8, label %30 [
    i3 0, label %9
    i3 1, label %12
    i3 2, label %16
    i3 3, label %21
    i3 -4, label %26
  ], !dbg !3845

; <label>:9:                                      ; preds = %2
  %10 = lshr i8 %7, 3, !dbg !3846
  %11 = zext i8 %10 to i64, !dbg !3846
  br label %30, !dbg !3847

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds i8, i8* %5, i64 -3, !dbg !3848
  %14 = load i8, i8* %13, align 1, !dbg !3849, !tbaa !222
  %15 = zext i8 %14 to i64, !dbg !3848
  br label %30, !dbg !3850

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds i8, i8* %5, i64 -5, !dbg !3851
  %18 = bitcast i8* %17 to i16*, !dbg !3852
  %19 = load i16, i16* %18, align 1, !dbg !3852, !tbaa !840
  %20 = zext i16 %19 to i64, !dbg !3851
  br label %30, !dbg !3853

; <label>:21:                                     ; preds = %2
  %22 = getelementptr inbounds i8, i8* %5, i64 -9, !dbg !3854
  %23 = bitcast i8* %22 to i32*, !dbg !3855
  %24 = load i32, i32* %23, align 1, !dbg !3855, !tbaa !845
  %25 = zext i32 %24 to i64, !dbg !3854
  br label %30, !dbg !3856

; <label>:26:                                     ; preds = %2
  %27 = getelementptr inbounds i8, i8* %5, i64 -17, !dbg !3857
  %28 = bitcast i8* %27 to i64*, !dbg !3858
  %29 = load i64, i64* %28, align 1, !dbg !3858, !tbaa !849
  br label %30, !dbg !3859

; <label>:30:                                     ; preds = %2, %9, %12, %16, %21, %26
  %31 = phi i64 [ %29, %26 ], [ %25, %21 ], [ %20, %16 ], [ %15, %12 ], [ %11, %9 ], [ 0, %2 ], !dbg !3860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3861
  %32 = trunc i64 %31 to i32, !dbg !3862
  %33 = tail call i32 @keyHashSlot(i8* %5, i32 %32) #6, !dbg !3863
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0, !dbg !3865
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %34) #7, !dbg !3865
  %35 = load i8*, i8** %4, align 8, !dbg !3868, !tbaa !215
  %36 = getelementptr inbounds i8, i8* %35, i64 -1, !dbg !3871
  %37 = load i8, i8* %36, align 1, !dbg !3871, !tbaa !222
  %38 = trunc i8 %37 to i3, !dbg !3873
  switch i3 %38, label %60 [
    i3 0, label %39
    i3 1, label %42
    i3 2, label %46
    i3 3, label %51
    i3 -4, label %56
  ], !dbg !3873

; <label>:39:                                     ; preds = %30
  %40 = lshr i8 %37, 3, !dbg !3874
  %41 = zext i8 %40 to i64, !dbg !3874
  br label %60, !dbg !3875

; <label>:42:                                     ; preds = %30
  %43 = getelementptr inbounds i8, i8* %35, i64 -3, !dbg !3876
  %44 = load i8, i8* %43, align 1, !dbg !3877, !tbaa !222
  %45 = zext i8 %44 to i64, !dbg !3876
  br label %60, !dbg !3878

; <label>:46:                                     ; preds = %30
  %47 = getelementptr inbounds i8, i8* %35, i64 -5, !dbg !3879
  %48 = bitcast i8* %47 to i16*, !dbg !3880
  %49 = load i16, i16* %48, align 1, !dbg !3880, !tbaa !840
  %50 = zext i16 %49 to i64, !dbg !3879
  br label %60, !dbg !3881

; <label>:51:                                     ; preds = %30
  %52 = getelementptr inbounds i8, i8* %35, i64 -9, !dbg !3882
  %53 = bitcast i8* %52 to i32*, !dbg !3883
  %54 = load i32, i32* %53, align 1, !dbg !3883, !tbaa !845
  %55 = zext i32 %54 to i64, !dbg !3882
  br label %60, !dbg !3884

; <label>:56:                                     ; preds = %30
  %57 = getelementptr inbounds i8, i8* %35, i64 -17, !dbg !3885
  %58 = bitcast i8* %57 to i64*, !dbg !3886
  %59 = load i64, i64* %58, align 1, !dbg !3886, !tbaa !849
  br label %60, !dbg !3887

; <label>:60:                                     ; preds = %30, %39, %42, %46, %51, %56
  %61 = phi i64 [ %59, %56 ], [ %55, %51 ], [ %50, %46 ], [ %45, %42 ], [ %41, %39 ], [ 0, %30 ], !dbg !3888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3889
  %62 = icmp ne i32 %1, 0, !dbg !3891
  %63 = select i1 %62, i64 1, i64 -1, !dbg !3891
  %64 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !3892, !tbaa !1060
  %65 = zext i32 %33 to i64, !dbg !3893
  %66 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %64, i64 0, i32 9, i64 %65, !dbg !3893
  %67 = load i64, i64* %66, align 8, !dbg !3894, !tbaa !849
  %68 = add i64 %67, %63, !dbg !3894
  store i64 %68, i64* %66, align 8, !dbg !3894, !tbaa !849
  %69 = add i64 %61, 2, !dbg !3895
  %70 = icmp ugt i64 %69, 64, !dbg !3897
  br i1 %70, label %71, label %73, !dbg !3898

; <label>:71:                                     ; preds = %60
  %72 = tail call i8* @zmalloc(i64 %69) #6, !dbg !3899
  br label %73, !dbg !3900

; <label>:73:                                     ; preds = %71, %60
  %74 = phi i8* [ %72, %71 ], [ %34, %60 ], !dbg !3901
  %75 = lshr i32 %33, 8, !dbg !3902
  %76 = trunc i32 %75 to i8, !dbg !3903
  store i8 %76, i8* %74, align 1, !dbg !3904, !tbaa !222
  %77 = trunc i32 %33 to i8, !dbg !3905
  %78 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !3906
  store i8 %77, i8* %78, align 1, !dbg !3907, !tbaa !222
  %79 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !3908
  %80 = load i8*, i8** %4, align 8, !dbg !3909, !tbaa !215
  %81 = call i8* @memcpy(i8* nonnull %79, i8* %80, i64 %61) #6, !dbg !3910
  %82 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !3911, !tbaa !1060
  %83 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %82, i64 0, i32 10, !dbg !3911
  %84 = load %struct.rax*, %struct.rax** %83, align 8, !dbg !3911, !tbaa !1062
  br i1 %62, label %85, label %87, !dbg !3914

; <label>:85:                                     ; preds = %73
  %86 = call i32 @raxInsert(%struct.rax* %84, i8* %74, i64 %69, i8* null, i8** null) #6, !dbg !3915
  br label %89, !dbg !3917

; <label>:87:                                     ; preds = %73
  %88 = call i32 @raxRemove(%struct.rax* %84, i8* %74, i64 %69, i8** null) #6, !dbg !3918
  br label %89

; <label>:89:                                     ; preds = %87, %85
  %90 = icmp eq i8* %74, %34, !dbg !3919
  br i1 %90, label %92, label %91, !dbg !3921

; <label>:91:                                     ; preds = %89
  call void @zfree(i8* %74) #6, !dbg !3922
  br label %92, !dbg !3922

; <label>:92:                                     ; preds = %89, %91
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %34) #7, !dbg !3923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3923
  ret void, !dbg !3923
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
define dso_local i32 @getKeysInSlot(i32, %struct.redisObject** nocapture, i32) local_unnamed_addr #0 !dbg !3924 {
  %4 = alloca %struct.raxIterator, align 8
  %5 = alloca [2 x i8], align 1
  %6 = bitcast %struct.raxIterator* %4 to i8*, !dbg !3985
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %6) #7, !dbg !3985
  %7 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0, !dbg !3987
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %7) #7, !dbg !3987
  %8 = lshr i32 %0, 8, !dbg !3989
  %9 = trunc i32 %8 to i8, !dbg !3990
  store i8 %9, i8* %7, align 1, !dbg !3991, !tbaa !222
  %10 = trunc i32 %0 to i8, !dbg !3992
  %11 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1, !dbg !3993
  store i8 %10, i8* %11, align 1, !dbg !3994, !tbaa !222
  %12 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !3995, !tbaa !1060
  %13 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %12, i64 0, i32 10, !dbg !3996
  %14 = load %struct.rax*, %struct.rax** %13, align 8, !dbg !3996, !tbaa !1062
  call void @raxStart(%struct.raxIterator* nonnull %4, %struct.rax* %14) #6, !dbg !3998
  %15 = call i32 @raxSeek(%struct.raxIterator* nonnull %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), i8* nonnull %7, i64 2) #6, !dbg !3999
  %16 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %4, i64 0, i32 2, !dbg !4000
  %17 = icmp eq i32 %2, 0, !dbg !4003
  br i1 %17, label %52, label %18, !dbg !4004

; <label>:18:                                     ; preds = %3
  %19 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %4, i64 0, i32 4
  br label %20, !dbg !4004

; <label>:20:                                     ; preds = %18, %37
  %21 = phi i64 [ 0, %18 ], [ %42, %37 ]
  %22 = phi i32 [ %2, %18 ], [ %24, %37 ]
  %23 = phi i32 [ 0, %18 ], [ %43, %37 ]
  %24 = add i32 %22, -1, !dbg !4003
  %25 = call i32 @raxNext(%struct.raxIterator* nonnull %4) #6, !dbg !4005
  %26 = icmp eq i32 %25, 0, !dbg !4004
  br i1 %26, label %50, label %27, !dbg !4006

; <label>:27:                                     ; preds = %20
  %28 = load i8*, i8** %16, align 8, !dbg !4000, !tbaa !4007
  %29 = load i8, i8* %28, align 1, !dbg !4010, !tbaa !222
  %30 = load i8, i8* %7, align 1, !dbg !4011, !tbaa !222
  %31 = icmp eq i8 %29, %30, !dbg !4012
  br i1 %31, label %32, label %48, !dbg !4013

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !4014
  %34 = load i8, i8* %33, align 1, !dbg !4014, !tbaa !222
  %35 = load i8, i8* %11, align 1, !dbg !4015, !tbaa !222
  %36 = icmp eq i8 %34, %35, !dbg !4016
  br i1 %36, label %37, label %46, !dbg !4017

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds i8, i8* %28, i64 2, !dbg !4018
  %39 = load i64, i64* %19, align 8, !dbg !4019, !tbaa !4020
  %40 = add i64 %39, -2, !dbg !4021
  %41 = call %struct.redisObject* @createStringObject(i8* nonnull %38, i64 %40) #6, !dbg !4022
  %42 = add nuw nsw i64 %21, 1, !dbg !4023
  %43 = add nuw nsw i32 %23, 1, !dbg !4023
  %44 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %21, !dbg !4024
  store %struct.redisObject* %41, %struct.redisObject** %44, align 8, !dbg !4025, !tbaa !1135
  %45 = icmp eq i32 %24, 0, !dbg !4003
  br i1 %45, label %52, label %20, !dbg !4004, !llvm.loop !4026

; <label>:46:                                     ; preds = %32
  %47 = trunc i64 %21 to i32, !dbg !4006
  br label %52, !dbg !4028

; <label>:48:                                     ; preds = %27
  %49 = trunc i64 %21 to i32, !dbg !4006
  br label %52, !dbg !4028

; <label>:50:                                     ; preds = %20
  %51 = trunc i64 %21 to i32, !dbg !4006
  br label %52, !dbg !4028

; <label>:52:                                     ; preds = %37, %46, %48, %50, %3
  %53 = phi i32 [ 0, %3 ], [ %47, %46 ], [ %49, %48 ], [ %51, %50 ], [ %43, %37 ], !dbg !4029
  call void @raxStop(%struct.raxIterator* nonnull %4) #6, !dbg !4028
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %7) #7, !dbg !4030
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %6) #7, !dbg !4030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4031
  ret i32 %53, !dbg !4031
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
define dso_local i32 @delKeysInSlot(i32) local_unnamed_addr #0 !dbg !4032 {
  %2 = alloca %struct.raxIterator, align 8
  %3 = alloca [2 x i8], align 1
  %4 = bitcast %struct.raxIterator* %2 to i8*, !dbg !4043
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %4) #7, !dbg !4043
  %5 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0, !dbg !4045
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %5) #7, !dbg !4045
  %6 = lshr i32 %0, 8, !dbg !4047
  %7 = trunc i32 %6 to i8, !dbg !4048
  store i8 %7, i8* %5, align 1, !dbg !4049, !tbaa !222
  %8 = trunc i32 %0 to i8, !dbg !4050
  %9 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1, !dbg !4051
  store i8 %8, i8* %9, align 1, !dbg !4052, !tbaa !222
  %10 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !4053, !tbaa !1060
  %11 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %10, i64 0, i32 10, !dbg !4054
  %12 = load %struct.rax*, %struct.rax** %11, align 8, !dbg !4054, !tbaa !1062
  call void @raxStart(%struct.raxIterator* nonnull %2, %struct.rax* %12) #6, !dbg !4056
  %13 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !4057, !tbaa !1060
  %14 = zext i32 %0 to i64, !dbg !4058
  %15 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %13, i64 0, i32 9, i64 %14, !dbg !4058
  %16 = load i64, i64* %15, align 8, !dbg !4058, !tbaa !849
  %17 = icmp eq i64 %16, 0, !dbg !4059
  br i1 %17, label %65, label %18, !dbg !4059

; <label>:18:                                     ; preds = %1
  %19 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %2, i64 0, i32 2
  %20 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %2, i64 0, i32 4
  br label %21, !dbg !4059

; <label>:21:                                     ; preds = %18, %59
  %22 = phi i32 [ 0, %18 ], [ %60, %59 ]
  %23 = call i32 @raxSeek(%struct.raxIterator* nonnull %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), i8* nonnull %5, i64 2) #6, !dbg !4060
  %24 = call i32 @raxNext(%struct.raxIterator* nonnull %2) #6, !dbg !4061
  %25 = load i8*, i8** %19, align 8, !dbg !4062, !tbaa !4007
  %26 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !4063
  %27 = load i64, i64* %20, align 8, !dbg !4064, !tbaa !4020
  %28 = add i64 %27, -2, !dbg !4065
  %29 = call %struct.redisObject* @createStringObject(i8* nonnull %26, i64 %28) #6, !dbg !4066
  %30 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !4068, !tbaa !1032
  %31 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 287), align 8, !dbg !4072, !tbaa !708
  %32 = icmp eq i32 %31, 0, !dbg !4073
  br i1 %32, label %35, label %33, !dbg !4073

; <label>:33:                                     ; preds = %21
  %34 = call i32 @dbAsyncDelete(%struct.redisDb* %30, %struct.redisObject* %29) #6, !dbg !4074
  br label %59, !dbg !4073

; <label>:35:                                     ; preds = %21
  %36 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %30, i64 0, i32 1, !dbg !4078
  %37 = load %struct.dict*, %struct.dict** %36, align 8, !dbg !4078, !tbaa !347
  %38 = getelementptr inbounds %struct.dict, %struct.dict* %37, i64 0, i32 2, i64 0, i32 3, !dbg !4078
  %39 = load i64, i64* %38, align 8, !dbg !4078, !tbaa !348
  %40 = getelementptr inbounds %struct.dict, %struct.dict* %37, i64 0, i32 2, i64 1, i32 3, !dbg !4078
  %41 = load i64, i64* %40, align 8, !dbg !4078, !tbaa !348
  %42 = sub i64 0, %41, !dbg !4079
  %43 = icmp eq i64 %39, %42, !dbg !4079
  %44 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %29, i64 0, i32 2, !dbg !4080
  br i1 %43, label %48, label %45, !dbg !4081

; <label>:45:                                     ; preds = %35
  %46 = load i8*, i8** %44, align 8, !dbg !4082, !tbaa !215
  %47 = call i32 @dictDelete(%struct.dict* %37, i8* %46) #6, !dbg !4083
  br label %48, !dbg !4083

; <label>:48:                                     ; preds = %45, %35
  %49 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %30, i64 0, i32 0, !dbg !4084
  %50 = load %struct.dict*, %struct.dict** %49, align 8, !dbg !4084, !tbaa !207
  %51 = load i8*, i8** %44, align 8, !dbg !4085, !tbaa !215
  %52 = call i32 @dictDelete(%struct.dict* %50, i8* %51) #6, !dbg !4086
  %53 = icmp ne i32 %52, 0, !dbg !4087
  %54 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !4088
  %55 = icmp eq i32 %54, 0, !dbg !4089
  %56 = or i1 %53, %55, !dbg !4090
  br i1 %56, label %58, label %57, !dbg !4090

; <label>:57:                                     ; preds = %48
  call void @slotToKeyUpdateKey(%struct.redisObject* nonnull %29, i32 0) #6, !dbg !4093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4094
  br label %58, !dbg !4095

; <label>:58:                                     ; preds = %48, %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4096
  br label %59, !dbg !4073

; <label>:59:                                     ; preds = %33, %58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4097
  call void @decrRefCount(%struct.redisObject* %29) #6, !dbg !4098
  %60 = add nuw nsw i32 %22, 1, !dbg !4099
  %61 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !4057, !tbaa !1060
  %62 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %61, i64 0, i32 9, i64 %14, !dbg !4058
  %63 = load i64, i64* %62, align 8, !dbg !4058, !tbaa !849
  %64 = icmp eq i64 %63, 0, !dbg !4059
  br i1 %64, label %65, label %21, !dbg !4059, !llvm.loop !4100

; <label>:65:                                     ; preds = %59, %1
  %66 = phi i32 [ 0, %1 ], [ %60, %59 ], !dbg !4102
  call void @raxStop(%struct.raxIterator* nonnull %2) #6, !dbg !4103
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %5) #7, !dbg !4104
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %4) #7, !dbg !4104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4105
  ret i32 %66, !dbg !4105
}

; Function Attrs: noredzone nounwind
define dso_local i32 @countKeysInSlot(i32) local_unnamed_addr #0 !dbg !4106 {
  %2 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !4110, !tbaa !1060
  %3 = zext i32 %0 to i64, !dbg !4111
  %4 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %2, i64 0, i32 9, i64 %3, !dbg !4111
  %5 = load i64, i64* %4, align 8, !dbg !4111, !tbaa !849
  %6 = trunc i64 %5 to i32, !dbg !4111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4112
  ret i32 %6, !dbg !4112
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nobuiltin noredzone noreturn nounwind }
attributes #10 = { nobuiltin noredzone nounwind readonly }

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
!255 = !DILocation(line: 50, column: 1, scope: !62, inlinedAt: !243)
!256 = !DILocation(line: 69, column: 13, scope: !244)
!257 = !DILocation(line: 70, column: 28, scope: !258)
!258 = distinct !DILexicalBlock(scope: !237, file: !1, line: 69, column: 20)
!259 = !DILocation(line: 70, column: 22, scope: !258)
!260 = !DILocation(line: 70, column: 26, scope: !258)
!261 = !DILocation(line: 0, scope: !262)
!262 = distinct !DILexicalBlock(scope: !202, file: !1, line: 74, column: 12)
!263 = !DILocation(line: 77, column: 1, scope: !90)
!264 = distinct !DISubprogram(name: "lookupKeyReadWithFlags", scope: !1, file: !1, line: 100, type: !91, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !265)
!265 = !{!266, !267, !268, !269}
!266 = !DILocalVariable(name: "db", arg: 1, scope: !264, file: !1, line: 100, type: !93)
!267 = !DILocalVariable(name: "key", arg: 2, scope: !264, file: !1, line: 100, type: !65)
!268 = !DILocalVariable(name: "flags", arg: 3, scope: !264, file: !1, line: 100, type: !8)
!269 = !DILocalVariable(name: "val", scope: !264, file: !1, line: 101, type: !65)
!270 = !DILocation(line: 100, column: 39, scope: !264)
!271 = !DILocation(line: 100, column: 49, scope: !264)
!272 = !DILocation(line: 100, column: 58, scope: !264)
!273 = !DILocation(line: 103, column: 9, scope: !274)
!274 = distinct !DILexicalBlock(scope: !264, file: !1, line: 103, column: 9)
!275 = !DILocation(line: 103, column: 32, scope: !274)
!276 = !DILocation(line: 103, column: 9, scope: !264)
!277 = !DILocation(line: 107, column: 20, scope: !278)
!278 = distinct !DILexicalBlock(scope: !279, file: !1, line: 107, column: 13)
!279 = distinct !DILexicalBlock(scope: !274, file: !1, line: 103, column: 38)
!280 = !{!227, !209, i64 2464}
!281 = !DILocation(line: 107, column: 31, scope: !278)
!282 = !DILocation(line: 107, column: 13, scope: !279)
!283 = !DILocation(line: 124, column: 20, scope: !284)
!284 = distinct !DILexicalBlock(scope: !279, file: !1, line: 124, column: 13)
!285 = !{!227, !209, i64 552}
!286 = !DILocation(line: 124, column: 13, scope: !284)
!287 = !DILocation(line: 125, column: 45, scope: !284)
!288 = !DILocation(line: 125, column: 35, scope: !284)
!289 = !DILocation(line: 124, column: 35, scope: !284)
!290 = !DILocation(line: 126, column: 36, scope: !284)
!291 = !{!292, !209, i64 80}
!292 = !{!"client", !228, i64 0, !212, i64 8, !209, i64 16, !209, i64 24, !209, i64 32, !228, i64 40, !209, i64 48, !228, i64 56, !212, i64 64, !209, i64 72, !209, i64 80, !209, i64 88, !212, i64 96, !212, i64 100, !228, i64 104, !209, i64 112, !213, i64 120, !228, i64 128, !228, i64 136, !228, i64 144, !228, i64 152, !212, i64 160, !212, i64 164, !212, i64 168, !212, i64 172, !212, i64 176, !228, i64 184, !228, i64 192, !209, i64 200, !213, i64 208, !213, i64 216, !213, i64 224, !213, i64 232, !213, i64 240, !210, i64 248, !212, i64 292, !210, i64 296, !212, i64 344, !293, i64 352, !212, i64 384, !294, i64 392, !213, i64 480, !209, i64 488, !209, i64 496, !209, i64 504, !209, i64 512, !209, i64 520, !212, i64 528, !210, i64 532}
!293 = !{!"multiState", !209, i64 0, !212, i64 8, !212, i64 12, !212, i64 16, !228, i64 24}
!294 = !{!"blockingState", !213, i64 0, !209, i64 8, !209, i64 16, !228, i64 24, !209, i64 32, !209, i64 40, !213, i64 48, !213, i64 56, !212, i64 64, !212, i64 68, !213, i64 72, !209, i64 80}
!295 = !DILocation(line: 126, column: 13, scope: !284)
!296 = !DILocation(line: 126, column: 40, scope: !284)
!297 = !DILocation(line: 127, column: 41, scope: !284)
!298 = !{!299, !212, i64 32}
!299 = !{!"redisCommand", !209, i64 0, !209, i64 8, !212, i64 16, !209, i64 24, !212, i64 32, !209, i64 40, !212, i64 48, !212, i64 52, !212, i64 56, !213, i64 64, !213, i64 72}
!300 = !DILocation(line: 127, column: 47, scope: !284)
!301 = !DILocation(line: 124, column: 13, scope: !279)
!302 = !DILocation(line: 133, column: 11, scope: !264)
!303 = !DILocation(line: 101, column: 11, scope: !264)
!304 = !DILocation(line: 134, column: 13, scope: !305)
!305 = distinct !DILexicalBlock(scope: !264, file: !1, line: 134, column: 9)
!306 = !DILocation(line: 135, column: 9, scope: !305)
!307 = !DILocation(line: 0, scope: !264)
!308 = !DILocation(line: 0, scope: !309)
!309 = distinct !DILexicalBlock(scope: !278, file: !1, line: 107, column: 40)
!310 = !{!213, !213, i64 0}
!311 = !DILocation(line: 139, column: 1, scope: !264)
!312 = distinct !DISubprogram(name: "expireIfNeeded", scope: !1, file: !1, line: 1167, type: !313, isLocal: false, isDefinition: true, scopeLine: 1167, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !315)
!313 = !DISubroutineType(types: !314)
!314 = !{!8, !93, !65}
!315 = !{!316, !317}
!316 = !DILocalVariable(name: "db", arg: 1, scope: !312, file: !1, line: 1167, type: !93)
!317 = !DILocalVariable(name: "key", arg: 2, scope: !312, file: !1, line: 1167, type: !65)
!318 = !DILocation(line: 1167, column: 29, scope: !312)
!319 = !DILocation(line: 1167, column: 39, scope: !312)
!320 = !DILocation(line: 1168, column: 10, scope: !321)
!321 = distinct !DILexicalBlock(scope: !312, file: !1, line: 1168, column: 9)
!322 = !DILocation(line: 1168, column: 9, scope: !312)
!323 = !DILocation(line: 1178, column: 16, scope: !324)
!324 = distinct !DILexicalBlock(scope: !312, file: !1, line: 1178, column: 9)
!325 = !DILocation(line: 1178, column: 27, scope: !324)
!326 = !DILocation(line: 1178, column: 9, scope: !312)
!327 = !DILocation(line: 1181, column: 28, scope: !312)
!328 = !{!227, !213, i64 1024}
!329 = !DILocation(line: 1182, column: 35, scope: !312)
!330 = !{!227, !212, i64 3084}
!331 = !DILocation(line: 1182, column: 5, scope: !312)
!332 = !DILocation(line: 1184, column: 27, scope: !312)
!333 = !{!208, !212, i64 40}
!334 = !DILocation(line: 1183, column: 5, scope: !312)
!335 = !DILocation(line: 1185, column: 19, scope: !312)
!336 = !DILocation(line: 1185, column: 12, scope: !312)
!337 = !DILocation(line: 1185, column: 42, scope: !312)
!338 = !DILocalVariable(name: "db", arg: 1, scope: !339, file: !1, line: 271, type: !93)
!339 = distinct !DISubprogram(name: "dbSyncDelete", scope: !1, file: !1, line: 271, type: !313, isLocal: false, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !340)
!340 = !{!338, !341}
!341 = !DILocalVariable(name: "key", arg: 2, scope: !339, file: !1, line: 271, type: !65)
!342 = !DILocation(line: 271, column: 27, scope: !339, inlinedAt: !343)
!343 = distinct !DILocation(line: 1186, column: 42, scope: !312)
!344 = !DILocation(line: 271, column: 37, scope: !339, inlinedAt: !343)
!345 = !DILocation(line: 274, column: 9, scope: !346, inlinedAt: !343)
!346 = distinct !DILexicalBlock(scope: !339, file: !1, line: 274, column: 9)
!347 = !{!208, !209, i64 8}
!348 = !{!349, !228, i64 24}
!349 = !{!"dictht", !209, i64 0, !228, i64 8, !228, i64 16, !228, i64 24}
!350 = !DILocation(line: 274, column: 31, scope: !346, inlinedAt: !343)
!351 = !DILocation(line: 0, scope: !346, inlinedAt: !343)
!352 = !DILocation(line: 274, column: 9, scope: !339, inlinedAt: !343)
!353 = !DILocation(line: 274, column: 64, scope: !346, inlinedAt: !343)
!354 = !DILocation(line: 274, column: 36, scope: !346, inlinedAt: !343)
!355 = !DILocation(line: 275, column: 24, scope: !356, inlinedAt: !343)
!356 = distinct !DILexicalBlock(scope: !339, file: !1, line: 275, column: 9)
!357 = !DILocation(line: 275, column: 34, scope: !356, inlinedAt: !343)
!358 = !DILocation(line: 275, column: 9, scope: !356, inlinedAt: !343)
!359 = !DILocation(line: 275, column: 39, scope: !356, inlinedAt: !343)
!360 = !DILocation(line: 275, column: 9, scope: !339, inlinedAt: !343)
!361 = !DILocation(line: 276, column: 20, scope: !362, inlinedAt: !343)
!362 = distinct !DILexicalBlock(scope: !363, file: !1, line: 276, column: 13)
!363 = distinct !DILexicalBlock(scope: !356, file: !1, line: 275, column: 51)
!364 = !{!227, !212, i64 2924}
!365 = !DILocation(line: 276, column: 13, scope: !362, inlinedAt: !343)
!366 = !DILocation(line: 276, column: 13, scope: !363, inlinedAt: !343)
!367 = !DILocalVariable(name: "key", arg: 1, scope: !368, file: !1, line: 1493, type: !65)
!368 = distinct !DISubprogram(name: "slotToKeyDel", scope: !1, file: !1, line: 1493, type: !63, isLocal: false, isDefinition: true, scopeLine: 1493, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !369)
!369 = !{!367}
!370 = !DILocation(line: 1493, column: 25, scope: !368, inlinedAt: !371)
!371 = distinct !DILocation(line: 276, column: 37, scope: !362, inlinedAt: !343)
!372 = !DILocation(line: 1494, column: 5, scope: !368, inlinedAt: !371)
!373 = !DILocation(line: 1495, column: 1, scope: !368, inlinedAt: !371)
!374 = !DILocation(line: 276, column: 37, scope: !362, inlinedAt: !343)
!375 = !DILocation(line: 0, scope: !376, inlinedAt: !343)
!376 = distinct !DILexicalBlock(scope: !356, file: !1, line: 278, column: 12)
!377 = !DILocation(line: 281, column: 1, scope: !339, inlinedAt: !343)
!378 = !DILocation(line: 0, scope: !321)
!379 = !DILocation(line: 1187, column: 1, scope: !312)
!380 = distinct !DISubprogram(name: "lookupKeyRead", scope: !1, file: !1, line: 143, type: !381, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !383)
!381 = !DISubroutineType(types: !382)
!382 = !{!65, !93, !65}
!383 = !{!384, !385}
!384 = !DILocalVariable(name: "db", arg: 1, scope: !380, file: !1, line: 143, type: !93)
!385 = !DILocalVariable(name: "key", arg: 2, scope: !380, file: !1, line: 143, type: !65)
!386 = !DILocation(line: 143, column: 30, scope: !380)
!387 = !DILocation(line: 143, column: 40, scope: !380)
!388 = !DILocation(line: 100, column: 39, scope: !264, inlinedAt: !389)
!389 = distinct !DILocation(line: 144, column: 12, scope: !380)
!390 = !DILocation(line: 100, column: 49, scope: !264, inlinedAt: !389)
!391 = !DILocation(line: 100, column: 58, scope: !264, inlinedAt: !389)
!392 = !DILocation(line: 103, column: 9, scope: !274, inlinedAt: !389)
!393 = !DILocation(line: 103, column: 32, scope: !274, inlinedAt: !389)
!394 = !DILocation(line: 103, column: 9, scope: !264, inlinedAt: !389)
!395 = !DILocation(line: 107, column: 20, scope: !278, inlinedAt: !389)
!396 = !DILocation(line: 107, column: 31, scope: !278, inlinedAt: !389)
!397 = !DILocation(line: 107, column: 13, scope: !279, inlinedAt: !389)
!398 = !DILocation(line: 124, column: 20, scope: !284, inlinedAt: !389)
!399 = !DILocation(line: 124, column: 13, scope: !284, inlinedAt: !389)
!400 = !DILocation(line: 125, column: 45, scope: !284, inlinedAt: !389)
!401 = !DILocation(line: 125, column: 35, scope: !284, inlinedAt: !389)
!402 = !DILocation(line: 124, column: 35, scope: !284, inlinedAt: !389)
!403 = !DILocation(line: 126, column: 36, scope: !284, inlinedAt: !389)
!404 = !DILocation(line: 126, column: 13, scope: !284, inlinedAt: !389)
!405 = !DILocation(line: 126, column: 40, scope: !284, inlinedAt: !389)
!406 = !DILocation(line: 127, column: 41, scope: !284, inlinedAt: !389)
!407 = !DILocation(line: 127, column: 47, scope: !284, inlinedAt: !389)
!408 = !DILocation(line: 124, column: 13, scope: !279, inlinedAt: !389)
!409 = !DILocation(line: 133, column: 11, scope: !264, inlinedAt: !389)
!410 = !DILocation(line: 101, column: 11, scope: !264, inlinedAt: !389)
!411 = !DILocation(line: 134, column: 13, scope: !305, inlinedAt: !389)
!412 = !DILocation(line: 135, column: 9, scope: !305, inlinedAt: !389)
!413 = !DILocation(line: 0, scope: !264, inlinedAt: !389)
!414 = !DILocation(line: 0, scope: !380)
!415 = !DILocation(line: 139, column: 1, scope: !264, inlinedAt: !389)
!416 = !DILocation(line: 144, column: 5, scope: !380)
!417 = distinct !DISubprogram(name: "lookupKeyWrite", scope: !1, file: !1, line: 152, type: !381, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !418)
!418 = !{!419, !420}
!419 = !DILocalVariable(name: "db", arg: 1, scope: !417, file: !1, line: 152, type: !93)
!420 = !DILocalVariable(name: "key", arg: 2, scope: !417, file: !1, line: 152, type: !65)
!421 = !DILocation(line: 152, column: 31, scope: !417)
!422 = !DILocation(line: 152, column: 41, scope: !417)
!423 = !DILocation(line: 153, column: 5, scope: !417)
!424 = !DILocation(line: 154, column: 12, scope: !417)
!425 = !DILocation(line: 154, column: 5, scope: !417)
!426 = distinct !DISubprogram(name: "lookupKeyReadOrReply", scope: !1, file: !1, line: 157, type: !427, isLocal: false, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !558)
!427 = !DISubroutineType(types: !428)
!428 = !{!65, !429, !65, !65}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !67, line: 780, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !67, line: 723, size: 135360, elements: !432)
!432 = !{!433, !434, !435, !436, !437, !439, !444, !445, !446, !447, !449, !473, !474, !475, !476, !477, !478, !480, !481, !484, !485, !486, !487, !488, !489, !490, !491, !496, !497, !498, !499, !500, !501, !502, !503, !507, !508, !512, !513, !529, !530, !547, !548, !549, !550, !551, !552, !553, !554}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !431, file: !67, line: 724, baseType: !53, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !431, file: !67, line: 725, baseType: !8, size: 32, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !431, file: !67, line: 726, baseType: !93, size: 64, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !431, file: !67, line: 727, baseType: !65, size: 64, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !431, file: !67, line: 728, baseType: !438, size: 64, offset: 256)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !15, line: 43, baseType: !9)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !431, file: !67, line: 729, baseType: !440, size: 64, offset: 320)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !441, line: 40, baseType: !442)
!441 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !443, line: 129, baseType: !11)
!443 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!444 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !431, file: !67, line: 730, baseType: !438, size: 64, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !431, file: !67, line: 734, baseType: !440, size: 64, offset: 448)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !431, file: !67, line: 735, baseType: !8, size: 32, offset: 512)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !431, file: !67, line: 736, baseType: !448, size: 64, offset: 576)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !431, file: !67, line: 737, baseType: !450, size: 64, offset: 640)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !67, line: 1307, size: 640, elements: !452)
!452 = !{!453, !454, !459, !460, !461, !462, !468, !469, !470, !471, !472}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !451, file: !67, line: 1308, baseType: !9, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !451, file: !67, line: 1309, baseType: !455, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !67, line: 1305, baseType: !457)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !429}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !451, file: !67, line: 1310, baseType: !8, size: 32, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !451, file: !67, line: 1311, baseType: !9, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !451, file: !67, line: 1312, baseType: !8, size: 32, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !451, file: !67, line: 1315, baseType: !463, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !67, line: 1306, baseType: !465)
!465 = !DISubroutineType(types: !466)
!466 = !{!467, !450, !448, !8, !467}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !451, file: !67, line: 1317, baseType: !8, size: 32, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !451, file: !67, line: 1318, baseType: !8, size: 32, offset: 416)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !451, file: !67, line: 1319, baseType: !8, size: 32, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !451, file: !67, line: 1320, baseType: !165, size: 64, offset: 512)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !451, file: !67, line: 1320, baseType: !165, size: 64, offset: 576)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !431, file: !67, line: 737, baseType: !450, size: 64, offset: 704)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !431, file: !67, line: 738, baseType: !8, size: 32, offset: 768)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !431, file: !67, line: 739, baseType: !8, size: 32, offset: 800)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !431, file: !67, line: 740, baseType: !12, size: 64, offset: 832)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !431, file: !67, line: 741, baseType: !167, size: 64, offset: 896)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !431, file: !67, line: 742, baseType: !479, size: 64, offset: 960)
!479 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !431, file: !67, line: 743, baseType: !440, size: 64, offset: 1024)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !431, file: !67, line: 745, baseType: !482, size: 64, offset: 1088)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !483, line: 34, baseType: !12)
!483 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!484 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !431, file: !67, line: 746, baseType: !482, size: 64, offset: 1152)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !431, file: !67, line: 747, baseType: !482, size: 64, offset: 1216)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !431, file: !67, line: 748, baseType: !8, size: 32, offset: 1280)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !431, file: !67, line: 749, baseType: !8, size: 32, offset: 1312)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !431, file: !67, line: 750, baseType: !8, size: 32, offset: 1344)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !431, file: !67, line: 751, baseType: !8, size: 32, offset: 1376)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !431, file: !67, line: 752, baseType: !8, size: 32, offset: 1408)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !431, file: !67, line: 753, baseType: !492, size: 64, offset: 1472)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !493, line: 173, baseType: !494)
!493 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !443, line: 100, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !443, line: 44, baseType: !12)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !431, file: !67, line: 754, baseType: !492, size: 64, offset: 1536)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !431, file: !67, line: 755, baseType: !438, size: 64, offset: 1600)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !431, file: !67, line: 756, baseType: !165, size: 64, offset: 1664)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !431, file: !67, line: 757, baseType: !165, size: 64, offset: 1728)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !431, file: !67, line: 758, baseType: !165, size: 64, offset: 1792)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !431, file: !67, line: 759, baseType: !165, size: 64, offset: 1856)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !431, file: !67, line: 760, baseType: !165, size: 64, offset: 1920)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !431, file: !67, line: 763, baseType: !504, size: 328, offset: 1984)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 328, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 41)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !431, file: !67, line: 764, baseType: !8, size: 32, offset: 2336)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !431, file: !67, line: 765, baseType: !509, size: 368, offset: 2368)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 368, elements: !510)
!510 = !{!511}
!511 = !DISubrange(count: 46)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !431, file: !67, line: 766, baseType: !8, size: 32, offset: 2752)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !431, file: !67, line: 767, baseType: !514, size: 256, offset: 2816)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !67, line: 673, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !67, line: 665, size: 256, elements: !516)
!516 = !{!517, !525, !526, !527, !528}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !515, file: !67, line: 666, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !67, line: 663, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !67, line: 659, size: 192, elements: !521)
!521 = !{!522, !523, !524}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !520, file: !67, line: 660, baseType: !448, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !520, file: !67, line: 661, baseType: !8, size: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !520, file: !67, line: 662, baseType: !450, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !515, file: !67, line: 667, baseType: !8, size: 32, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !515, file: !67, line: 668, baseType: !8, size: 32, offset: 96)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !515, file: !67, line: 671, baseType: !8, size: 32, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !515, file: !67, line: 672, baseType: !482, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !431, file: !67, line: 768, baseType: !8, size: 32, offset: 3072)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !431, file: !67, line: 769, baseType: !531, size: 704, offset: 3136)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !67, line: 703, baseType: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !67, line: 677, size: 704, elements: !533)
!533 = !{!534, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !532, file: !67, line: 679, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !67, line: 52, baseType: !165)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !532, file: !67, line: 683, baseType: !98, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !532, file: !67, line: 685, baseType: !65, size: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !532, file: !67, line: 689, baseType: !440, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !532, file: !67, line: 690, baseType: !65, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !532, file: !67, line: 691, baseType: !65, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !532, file: !67, line: 692, baseType: !535, size: 64, offset: 384)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !532, file: !67, line: 692, baseType: !535, size: 64, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !532, file: !67, line: 693, baseType: !8, size: 32, offset: 512)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !532, file: !67, line: 696, baseType: !8, size: 32, offset: 544)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !532, file: !67, line: 697, baseType: !165, size: 64, offset: 576)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !532, file: !67, line: 700, baseType: !4, size: 64, offset: 640)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !431, file: !67, line: 770, baseType: !165, size: 64, offset: 3840)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !431, file: !67, line: 771, baseType: !167, size: 64, offset: 3904)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !431, file: !67, line: 772, baseType: !98, size: 64, offset: 3968)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !431, file: !67, line: 773, baseType: !167, size: 64, offset: 4032)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !431, file: !67, line: 774, baseType: !438, size: 64, offset: 4096)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !431, file: !67, line: 775, baseType: !173, size: 64, offset: 4160)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !431, file: !67, line: 778, baseType: !8, size: 32, offset: 4224)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !431, file: !67, line: 779, baseType: !555, size: 131072, offset: 4256)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 131072, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 16384)
!558 = !{!559, !560, !561, !562}
!559 = !DILocalVariable(name: "c", arg: 1, scope: !426, file: !1, line: 157, type: !429)
!560 = !DILocalVariable(name: "key", arg: 2, scope: !426, file: !1, line: 157, type: !65)
!561 = !DILocalVariable(name: "reply", arg: 3, scope: !426, file: !1, line: 157, type: !65)
!562 = !DILocalVariable(name: "o", scope: !426, file: !1, line: 158, type: !65)
!563 = !DILocation(line: 157, column: 36, scope: !426)
!564 = !DILocation(line: 157, column: 45, scope: !426)
!565 = !DILocation(line: 157, column: 56, scope: !426)
!566 = !DILocation(line: 158, column: 32, scope: !426)
!567 = !{!292, !209, i64 16}
!568 = !DILocation(line: 143, column: 30, scope: !380, inlinedAt: !569)
!569 = distinct !DILocation(line: 158, column: 15, scope: !426)
!570 = !DILocation(line: 143, column: 40, scope: !380, inlinedAt: !569)
!571 = !DILocation(line: 100, column: 39, scope: !264, inlinedAt: !572)
!572 = distinct !DILocation(line: 144, column: 12, scope: !380, inlinedAt: !569)
!573 = !DILocation(line: 100, column: 49, scope: !264, inlinedAt: !572)
!574 = !DILocation(line: 100, column: 58, scope: !264, inlinedAt: !572)
!575 = !DILocation(line: 103, column: 9, scope: !274, inlinedAt: !572)
!576 = !DILocation(line: 103, column: 32, scope: !274, inlinedAt: !572)
!577 = !DILocation(line: 103, column: 9, scope: !264, inlinedAt: !572)
!578 = !DILocation(line: 107, column: 20, scope: !278, inlinedAt: !572)
!579 = !DILocation(line: 107, column: 31, scope: !278, inlinedAt: !572)
!580 = !DILocation(line: 107, column: 13, scope: !279, inlinedAt: !572)
!581 = !DILocation(line: 124, column: 20, scope: !284, inlinedAt: !572)
!582 = !DILocation(line: 124, column: 13, scope: !284, inlinedAt: !572)
!583 = !DILocation(line: 125, column: 45, scope: !284, inlinedAt: !572)
!584 = !DILocation(line: 125, column: 35, scope: !284, inlinedAt: !572)
!585 = !DILocation(line: 124, column: 35, scope: !284, inlinedAt: !572)
!586 = !DILocation(line: 126, column: 36, scope: !284, inlinedAt: !572)
!587 = !DILocation(line: 126, column: 13, scope: !284, inlinedAt: !572)
!588 = !DILocation(line: 126, column: 40, scope: !284, inlinedAt: !572)
!589 = !DILocation(line: 127, column: 41, scope: !284, inlinedAt: !572)
!590 = !DILocation(line: 127, column: 47, scope: !284, inlinedAt: !572)
!591 = !DILocation(line: 124, column: 13, scope: !279, inlinedAt: !572)
!592 = !DILocation(line: 133, column: 11, scope: !264, inlinedAt: !572)
!593 = !DILocation(line: 101, column: 11, scope: !264, inlinedAt: !572)
!594 = !DILocation(line: 134, column: 13, scope: !305, inlinedAt: !572)
!595 = !DILocation(line: 134, column: 9, scope: !264, inlinedAt: !572)
!596 = !DILocation(line: 137, column: 34, scope: !305, inlinedAt: !572)
!597 = !{!227, !213, i64 1056}
!598 = !DILocation(line: 139, column: 1, scope: !264, inlinedAt: !572)
!599 = !DILocation(line: 144, column: 5, scope: !380, inlinedAt: !569)
!600 = !DILocation(line: 158, column: 11, scope: !426)
!601 = !DILocation(line: 0, scope: !426)
!602 = !{!227, !213, i64 1064}
!603 = !DILocation(line: 159, column: 13, scope: !604)
!604 = distinct !DILexicalBlock(scope: !426, file: !1, line: 159, column: 9)
!605 = !DILocation(line: 160, column: 5, scope: !426)
!606 = distinct !DISubprogram(name: "lookupKeyWriteOrReply", scope: !1, file: !1, line: 163, type: !427, isLocal: false, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !607)
!607 = !{!608, !609, !610, !611}
!608 = !DILocalVariable(name: "c", arg: 1, scope: !606, file: !1, line: 163, type: !429)
!609 = !DILocalVariable(name: "key", arg: 2, scope: !606, file: !1, line: 163, type: !65)
!610 = !DILocalVariable(name: "reply", arg: 3, scope: !606, file: !1, line: 163, type: !65)
!611 = !DILocalVariable(name: "o", scope: !606, file: !1, line: 164, type: !65)
!612 = !DILocation(line: 163, column: 37, scope: !606)
!613 = !DILocation(line: 163, column: 46, scope: !606)
!614 = !DILocation(line: 163, column: 57, scope: !606)
!615 = !DILocation(line: 164, column: 33, scope: !606)
!616 = !DILocation(line: 152, column: 31, scope: !417, inlinedAt: !617)
!617 = distinct !DILocation(line: 164, column: 15, scope: !606)
!618 = !DILocation(line: 152, column: 41, scope: !417, inlinedAt: !617)
!619 = !DILocation(line: 153, column: 5, scope: !417, inlinedAt: !617)
!620 = !DILocation(line: 154, column: 12, scope: !417, inlinedAt: !617)
!621 = !DILocation(line: 154, column: 5, scope: !417, inlinedAt: !617)
!622 = !DILocation(line: 164, column: 11, scope: !606)
!623 = !DILocation(line: 165, column: 10, scope: !624)
!624 = distinct !DILexicalBlock(scope: !606, file: !1, line: 165, column: 9)
!625 = !DILocation(line: 165, column: 9, scope: !606)
!626 = !DILocation(line: 165, column: 13, scope: !624)
!627 = !DILocation(line: 166, column: 5, scope: !606)
!628 = distinct !DISubprogram(name: "dbAdd", scope: !1, file: !1, line: 173, type: !629, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !631)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !93, !65, !65}
!631 = !{!632, !633, !634, !635, !636}
!632 = !DILocalVariable(name: "db", arg: 1, scope: !628, file: !1, line: 173, type: !93)
!633 = !DILocalVariable(name: "key", arg: 2, scope: !628, file: !1, line: 173, type: !65)
!634 = !DILocalVariable(name: "val", arg: 3, scope: !628, file: !1, line: 173, type: !65)
!635 = !DILocalVariable(name: "copy", scope: !628, file: !1, line: 174, type: !438)
!636 = !DILocalVariable(name: "retval", scope: !628, file: !1, line: 175, type: !8)
!637 = !DILocation(line: 173, column: 21, scope: !628)
!638 = !DILocation(line: 173, column: 31, scope: !628)
!639 = !DILocation(line: 173, column: 42, scope: !628)
!640 = !DILocation(line: 174, column: 28, scope: !628)
!641 = !DILocation(line: 174, column: 16, scope: !628)
!642 = !DILocation(line: 174, column: 9, scope: !628)
!643 = !DILocation(line: 175, column: 30, scope: !628)
!644 = !DILocation(line: 175, column: 42, scope: !628)
!645 = !DILocation(line: 175, column: 18, scope: !628)
!646 = !DILocation(line: 175, column: 9, scope: !628)
!647 = !DILocation(line: 177, column: 5, scope: !628)
!648 = !DILocation(line: 178, column: 14, scope: !649)
!649 = distinct !DILexicalBlock(scope: !628, file: !1, line: 178, column: 9)
!650 = !DILocation(line: 178, column: 31, scope: !649)
!651 = !DILocation(line: 180, column: 9, scope: !649)
!652 = !DILocation(line: 181, column: 16, scope: !653)
!653 = distinct !DILexicalBlock(scope: !628, file: !1, line: 181, column: 9)
!654 = !DILocation(line: 181, column: 9, scope: !653)
!655 = !DILocation(line: 181, column: 9, scope: !628)
!656 = !DILocalVariable(name: "key", arg: 1, scope: !657, file: !1, line: 1489, type: !65)
!657 = distinct !DISubprogram(name: "slotToKeyAdd", scope: !1, file: !1, line: 1489, type: !63, isLocal: false, isDefinition: true, scopeLine: 1489, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !658)
!658 = !{!656}
!659 = !DILocation(line: 1489, column: 25, scope: !657, inlinedAt: !660)
!660 = distinct !DILocation(line: 181, column: 33, scope: !653)
!661 = !DILocation(line: 1490, column: 5, scope: !657, inlinedAt: !660)
!662 = !DILocation(line: 1491, column: 1, scope: !657, inlinedAt: !660)
!663 = !DILocation(line: 181, column: 33, scope: !653)
!664 = !DILocation(line: 182, column: 1, scope: !628)
!665 = !DILocation(line: 1489, column: 25, scope: !657)
!666 = !DILocation(line: 1490, column: 5, scope: !657)
!667 = !DILocation(line: 1491, column: 1, scope: !657)
!668 = distinct !DISubprogram(name: "dbOverwrite", scope: !1, file: !1, line: 189, type: !629, isLocal: false, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !669)
!669 = !{!670, !671, !672, !673, !674, !675}
!670 = !DILocalVariable(name: "db", arg: 1, scope: !668, file: !1, line: 189, type: !93)
!671 = !DILocalVariable(name: "key", arg: 2, scope: !668, file: !1, line: 189, type: !65)
!672 = !DILocalVariable(name: "val", arg: 3, scope: !668, file: !1, line: 189, type: !65)
!673 = !DILocalVariable(name: "de", scope: !668, file: !1, line: 190, type: !136)
!674 = !DILocalVariable(name: "auxentry", scope: !668, file: !1, line: 193, type: !137)
!675 = !DILocalVariable(name: "old", scope: !668, file: !1, line: 194, type: !65)
!676 = !DILocation(line: 189, column: 27, scope: !668)
!677 = !DILocation(line: 189, column: 37, scope: !668)
!678 = !DILocation(line: 189, column: 48, scope: !668)
!679 = !DILocation(line: 190, column: 34, scope: !668)
!680 = !DILocation(line: 190, column: 44, scope: !668)
!681 = !DILocation(line: 190, column: 21, scope: !668)
!682 = !DILocation(line: 190, column: 16, scope: !668)
!683 = !DILocation(line: 192, column: 5, scope: !668)
!684 = !DILocation(line: 193, column: 15, scope: !668)
!685 = !DILocation(line: 193, column: 26, scope: !668)
!686 = !DILocation(line: 194, column: 17, scope: !668)
!687 = !DILocation(line: 194, column: 11, scope: !668)
!688 = !DILocation(line: 195, column: 16, scope: !689)
!689 = distinct !DILexicalBlock(scope: !668, file: !1, line: 195, column: 9)
!690 = !DILocation(line: 195, column: 33, scope: !689)
!691 = !DILocation(line: 195, column: 9, scope: !668)
!692 = !DILocation(line: 196, column: 25, scope: !693)
!693 = distinct !DILexicalBlock(scope: !689, file: !1, line: 195, column: 55)
!694 = !DILocation(line: 196, column: 18, scope: !693)
!695 = !DILocation(line: 196, column: 14, scope: !693)
!696 = !DILocation(line: 197, column: 5, scope: !693)
!697 = !DILocation(line: 198, column: 5, scope: !698)
!698 = distinct !DILexicalBlock(scope: !699, file: !1, line: 198, column: 5)
!699 = distinct !DILexicalBlock(scope: !668, file: !1, line: 198, column: 5)
!700 = !{!701, !209, i64 0}
!701 = !{!"dict", !209, i64 0, !209, i64 8, !210, i64 16, !228, i64 80, !228, i64 88}
!702 = !{!703, !209, i64 16}
!703 = !{!"dictType", !209, i64 0, !209, i64 8, !209, i64 16, !209, i64 24, !209, i64 32, !209, i64 40}
!704 = !DILocation(line: 198, column: 5, scope: !699)
!705 = !{!701, !209, i64 8}
!706 = !DILocation(line: 200, column: 16, scope: !707)
!707 = distinct !DILexicalBlock(scope: !668, file: !1, line: 200, column: 9)
!708 = !{!227, !212, i64 3088}
!709 = !DILocation(line: 200, column: 9, scope: !707)
!710 = !DILocation(line: 200, column: 9, scope: !668)
!711 = !DILocation(line: 201, column: 9, scope: !712)
!712 = distinct !DILexicalBlock(scope: !707, file: !1, line: 200, column: 42)
!713 = !DILocation(line: 202, column: 9, scope: !714)
!714 = distinct !DILexicalBlock(scope: !715, file: !1, line: 202, column: 9)
!715 = distinct !DILexicalBlock(scope: !712, file: !1, line: 202, column: 9)
!716 = !DILocation(line: 202, column: 9, scope: !715)
!717 = !DILocation(line: 0, scope: !668)
!718 = !DILocation(line: 205, column: 5, scope: !719)
!719 = distinct !DILexicalBlock(scope: !668, file: !1, line: 205, column: 5)
!720 = !{!703, !209, i64 40}
!721 = !DILocation(line: 205, column: 5, scope: !668)
!722 = !DILocation(line: 206, column: 1, scope: !668)
!723 = distinct !DISubprogram(name: "setKey", scope: !1, file: !1, line: 216, type: !629, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !724)
!724 = !{!725, !726, !727}
!725 = !DILocalVariable(name: "db", arg: 1, scope: !723, file: !1, line: 216, type: !93)
!726 = !DILocalVariable(name: "key", arg: 2, scope: !723, file: !1, line: 216, type: !65)
!727 = !DILocalVariable(name: "val", arg: 3, scope: !723, file: !1, line: 216, type: !65)
!728 = !DILocation(line: 216, column: 22, scope: !723)
!729 = !DILocation(line: 216, column: 32, scope: !723)
!730 = !DILocation(line: 216, column: 43, scope: !723)
!731 = !DILocation(line: 152, column: 31, scope: !417, inlinedAt: !732)
!732 = distinct !DILocation(line: 217, column: 9, scope: !733)
!733 = distinct !DILexicalBlock(scope: !723, file: !1, line: 217, column: 9)
!734 = !DILocation(line: 152, column: 41, scope: !417, inlinedAt: !732)
!735 = !DILocation(line: 153, column: 5, scope: !417, inlinedAt: !732)
!736 = !DILocation(line: 154, column: 12, scope: !417, inlinedAt: !732)
!737 = !DILocation(line: 154, column: 5, scope: !417, inlinedAt: !732)
!738 = !DILocation(line: 217, column: 32, scope: !733)
!739 = !DILocation(line: 217, column: 9, scope: !723)
!740 = !DILocation(line: 218, column: 9, scope: !741)
!741 = distinct !DILexicalBlock(scope: !733, file: !1, line: 217, column: 41)
!742 = !DILocation(line: 219, column: 5, scope: !741)
!743 = !DILocation(line: 220, column: 9, scope: !744)
!744 = distinct !DILexicalBlock(scope: !733, file: !1, line: 219, column: 12)
!745 = !DILocation(line: 222, column: 5, scope: !723)
!746 = !DILocalVariable(name: "db", arg: 1, scope: !747, file: !1, line: 1065, type: !93)
!747 = distinct !DISubprogram(name: "removeExpire", scope: !1, file: !1, line: 1065, type: !313, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !748)
!748 = !{!746, !749}
!749 = !DILocalVariable(name: "key", arg: 2, scope: !747, file: !1, line: 1065, type: !65)
!750 = !DILocation(line: 1065, column: 27, scope: !747, inlinedAt: !751)
!751 = distinct !DILocation(line: 223, column: 5, scope: !723)
!752 = !DILocation(line: 1065, column: 37, scope: !747, inlinedAt: !751)
!753 = !DILocation(line: 1068, column: 5, scope: !747, inlinedAt: !751)
!754 = !DILocation(line: 1069, column: 27, scope: !747, inlinedAt: !751)
!755 = !DILocation(line: 1069, column: 40, scope: !747, inlinedAt: !751)
!756 = !DILocation(line: 1069, column: 12, scope: !747, inlinedAt: !751)
!757 = !DILocation(line: 1069, column: 5, scope: !747, inlinedAt: !751)
!758 = !DILocalVariable(name: "db", arg: 1, scope: !759, file: !1, line: 395, type: !93)
!759 = distinct !DISubprogram(name: "signalModifiedKey", scope: !1, file: !1, line: 395, type: !760, isLocal: false, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !762)
!760 = !DISubroutineType(types: !761)
!761 = !{null, !93, !65}
!762 = !{!758, !763}
!763 = !DILocalVariable(name: "key", arg: 2, scope: !759, file: !1, line: 395, type: !65)
!764 = !DILocation(line: 395, column: 33, scope: !759, inlinedAt: !765)
!765 = distinct !DILocation(line: 224, column: 5, scope: !723)
!766 = !DILocation(line: 395, column: 43, scope: !759, inlinedAt: !765)
!767 = !DILocation(line: 396, column: 5, scope: !759, inlinedAt: !765)
!768 = !DILocation(line: 397, column: 1, scope: !759, inlinedAt: !765)
!769 = !DILocation(line: 225, column: 1, scope: !723)
!770 = !DILocation(line: 1065, column: 27, scope: !747)
!771 = !DILocation(line: 1065, column: 37, scope: !747)
!772 = !DILocation(line: 1068, column: 5, scope: !747)
!773 = !DILocation(line: 1069, column: 27, scope: !747)
!774 = !DILocation(line: 1069, column: 40, scope: !747)
!775 = !DILocation(line: 1069, column: 12, scope: !747)
!776 = !DILocation(line: 1069, column: 45, scope: !747)
!777 = !DILocation(line: 1069, column: 5, scope: !747)
!778 = !DILocation(line: 395, column: 33, scope: !759)
!779 = !DILocation(line: 395, column: 43, scope: !759)
!780 = !DILocation(line: 396, column: 5, scope: !759)
!781 = !DILocation(line: 397, column: 1, scope: !759)
!782 = distinct !DISubprogram(name: "dbExists", scope: !1, file: !1, line: 227, type: !313, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !783)
!783 = !{!784, !785}
!784 = !DILocalVariable(name: "db", arg: 1, scope: !782, file: !1, line: 227, type: !93)
!785 = !DILocalVariable(name: "key", arg: 2, scope: !782, file: !1, line: 227, type: !65)
!786 = !DILocation(line: 227, column: 23, scope: !782)
!787 = !DILocation(line: 227, column: 33, scope: !782)
!788 = !DILocation(line: 228, column: 25, scope: !782)
!789 = !DILocation(line: 228, column: 35, scope: !782)
!790 = !DILocation(line: 228, column: 12, scope: !782)
!791 = !DILocation(line: 228, column: 40, scope: !782)
!792 = !DILocation(line: 228, column: 5, scope: !782)
!793 = distinct !DISubprogram(name: "dbRandomKey", scope: !1, file: !1, line: 235, type: !794, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !796)
!794 = !DISubroutineType(types: !795)
!795 = !{!65, !93}
!796 = !{!797, !798, !799, !800, !801, !803}
!797 = !DILocalVariable(name: "db", arg: 1, scope: !793, file: !1, line: 235, type: !93)
!798 = !DILocalVariable(name: "de", scope: !793, file: !1, line: 236, type: !136)
!799 = !DILocalVariable(name: "maxtries", scope: !793, file: !1, line: 237, type: !8)
!800 = !DILocalVariable(name: "allvolatile", scope: !793, file: !1, line: 238, type: !8)
!801 = !DILocalVariable(name: "key", scope: !802, file: !1, line: 241, type: !438)
!802 = distinct !DILexicalBlock(scope: !793, file: !1, line: 240, column: 14)
!803 = !DILocalVariable(name: "keyobj", scope: !802, file: !1, line: 242, type: !65)
!804 = !DILocation(line: 235, column: 28, scope: !793)
!805 = !DILocation(line: 237, column: 9, scope: !793)
!806 = !DILocation(line: 238, column: 23, scope: !793)
!807 = !DILocation(line: 238, column: 45, scope: !793)
!808 = !DILocation(line: 238, column: 42, scope: !793)
!809 = !DILocation(line: 244, column: 14, scope: !802)
!810 = !DILocation(line: 236, column: 16, scope: !793)
!811 = !DILocation(line: 245, column: 16, scope: !812)
!812 = distinct !DILexicalBlock(scope: !802, file: !1, line: 245, column: 13)
!813 = !DILocation(line: 245, column: 13, scope: !802)
!814 = !DILocation(line: 247, column: 15, scope: !802)
!815 = !{!816, !209, i64 0}
!816 = !{!"dictEntry", !209, i64 0, !210, i64 8, !209, i64 16}
!817 = !DILocation(line: 241, column: 13, scope: !802)
!818 = !DILocalVariable(name: "s", arg: 1, scope: !819, file: !15, line: 87, type: !824)
!819 = distinct !DISubprogram(name: "sdslen", scope: !15, file: !15, line: 87, type: !820, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !825)
!820 = !DISubroutineType(types: !821)
!821 = !{!822, !824}
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !823, line: 58, baseType: !11)
!823 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!825 = !{!818, !826}
!826 = !DILocalVariable(name: "flags", scope: !819, file: !15, line: 88, type: !22)
!827 = !DILocation(line: 87, column: 39, scope: !819, inlinedAt: !828)
!828 = distinct !DILocation(line: 248, column: 41, scope: !802)
!829 = !DILocation(line: 88, column: 27, scope: !819, inlinedAt: !828)
!830 = !DILocation(line: 88, column: 19, scope: !819, inlinedAt: !828)
!831 = !DILocation(line: 89, column: 5, scope: !819, inlinedAt: !828)
!832 = !DILocation(line: 91, column: 20, scope: !833, inlinedAt: !828)
!833 = distinct !DILexicalBlock(scope: !819, file: !15, line: 89, column: 33)
!834 = !DILocation(line: 91, column: 13, scope: !833, inlinedAt: !828)
!835 = !DILocation(line: 93, column: 20, scope: !833, inlinedAt: !828)
!836 = !DILocation(line: 93, column: 34, scope: !833, inlinedAt: !828)
!837 = !DILocation(line: 93, column: 13, scope: !833, inlinedAt: !828)
!838 = !DILocation(line: 95, column: 20, scope: !833, inlinedAt: !828)
!839 = !DILocation(line: 95, column: 35, scope: !833, inlinedAt: !828)
!840 = !{!841, !841, i64 0}
!841 = !{!"short", !210, i64 0}
!842 = !DILocation(line: 95, column: 13, scope: !833, inlinedAt: !828)
!843 = !DILocation(line: 97, column: 20, scope: !833, inlinedAt: !828)
!844 = !DILocation(line: 97, column: 35, scope: !833, inlinedAt: !828)
!845 = !{!212, !212, i64 0}
!846 = !DILocation(line: 97, column: 13, scope: !833, inlinedAt: !828)
!847 = !DILocation(line: 99, column: 20, scope: !833, inlinedAt: !828)
!848 = !DILocation(line: 99, column: 35, scope: !833, inlinedAt: !828)
!849 = !{!228, !228, i64 0}
!850 = !DILocation(line: 99, column: 13, scope: !833, inlinedAt: !828)
!851 = !DILocation(line: 0, scope: !833, inlinedAt: !828)
!852 = !DILocation(line: 102, column: 1, scope: !819, inlinedAt: !828)
!853 = !DILocation(line: 248, column: 18, scope: !802)
!854 = !DILocation(line: 242, column: 15, scope: !802)
!855 = !DILocation(line: 249, column: 26, scope: !856)
!856 = distinct !DILexicalBlock(scope: !802, file: !1, line: 249, column: 13)
!857 = !DILocation(line: 249, column: 13, scope: !856)
!858 = !DILocation(line: 249, column: 13, scope: !802)
!859 = !DILocation(line: 250, column: 39, scope: !860)
!860 = distinct !DILexicalBlock(scope: !861, file: !1, line: 250, column: 17)
!861 = distinct !DILexicalBlock(scope: !856, file: !1, line: 249, column: 40)
!862 = !DILocation(line: 250, column: 32, scope: !860)
!863 = !DILocation(line: 250, column: 29, scope: !860)
!864 = !DILocation(line: 250, column: 53, scope: !860)
!865 = !DILocation(line: 250, column: 64, scope: !860)
!866 = !DILocation(line: 250, column: 17, scope: !861)
!867 = !DILocation(line: 0, scope: !793)
!868 = !DILocation(line: 261, column: 17, scope: !869)
!869 = distinct !DILexicalBlock(scope: !861, file: !1, line: 261, column: 17)
!870 = !DILocation(line: 261, column: 17, scope: !861)
!871 = !DILocation(line: 262, column: 17, scope: !872)
!872 = distinct !DILexicalBlock(scope: !869, file: !1, line: 261, column: 44)
!873 = !DILocation(line: 244, column: 35, scope: !802)
!874 = !DILocation(line: 268, column: 1, scope: !793)
!875 = !DILocation(line: 271, column: 27, scope: !339)
!876 = !DILocation(line: 271, column: 37, scope: !339)
!877 = !DILocation(line: 274, column: 9, scope: !346)
!878 = !DILocation(line: 274, column: 31, scope: !346)
!879 = !DILocation(line: 0, scope: !346)
!880 = !DILocation(line: 274, column: 9, scope: !339)
!881 = !DILocation(line: 274, column: 64, scope: !346)
!882 = !DILocation(line: 274, column: 36, scope: !346)
!883 = !DILocation(line: 275, column: 24, scope: !356)
!884 = !DILocation(line: 275, column: 34, scope: !356)
!885 = !DILocation(line: 275, column: 9, scope: !356)
!886 = !DILocation(line: 275, column: 39, scope: !356)
!887 = !DILocation(line: 275, column: 9, scope: !339)
!888 = !DILocation(line: 276, column: 20, scope: !362)
!889 = !DILocation(line: 276, column: 13, scope: !362)
!890 = !DILocation(line: 276, column: 13, scope: !363)
!891 = !DILocation(line: 1493, column: 25, scope: !368, inlinedAt: !892)
!892 = distinct !DILocation(line: 276, column: 37, scope: !362)
!893 = !DILocation(line: 1494, column: 5, scope: !368, inlinedAt: !892)
!894 = !DILocation(line: 1495, column: 1, scope: !368, inlinedAt: !892)
!895 = !DILocation(line: 276, column: 37, scope: !362)
!896 = !DILocation(line: 0, scope: !376)
!897 = !DILocation(line: 281, column: 1, scope: !339)
!898 = !DILocation(line: 1493, column: 25, scope: !368)
!899 = !DILocation(line: 1494, column: 5, scope: !368)
!900 = !DILocation(line: 1495, column: 1, scope: !368)
!901 = distinct !DISubprogram(name: "dbDelete", scope: !1, file: !1, line: 285, type: !313, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !902)
!902 = !{!903, !904}
!903 = !DILocalVariable(name: "db", arg: 1, scope: !901, file: !1, line: 285, type: !93)
!904 = !DILocalVariable(name: "key", arg: 2, scope: !901, file: !1, line: 285, type: !65)
!905 = !DILocation(line: 285, column: 23, scope: !901)
!906 = !DILocation(line: 285, column: 33, scope: !901)
!907 = !DILocation(line: 286, column: 19, scope: !901)
!908 = !DILocation(line: 286, column: 12, scope: !901)
!909 = !DILocation(line: 286, column: 46, scope: !901)
!910 = !DILocation(line: 271, column: 27, scope: !339, inlinedAt: !911)
!911 = distinct !DILocation(line: 287, column: 46, scope: !901)
!912 = !DILocation(line: 271, column: 37, scope: !339, inlinedAt: !911)
!913 = !DILocation(line: 274, column: 9, scope: !346, inlinedAt: !911)
!914 = !DILocation(line: 274, column: 31, scope: !346, inlinedAt: !911)
!915 = !DILocation(line: 0, scope: !346, inlinedAt: !911)
!916 = !DILocation(line: 274, column: 9, scope: !339, inlinedAt: !911)
!917 = !DILocation(line: 274, column: 64, scope: !346, inlinedAt: !911)
!918 = !DILocation(line: 274, column: 36, scope: !346, inlinedAt: !911)
!919 = !DILocation(line: 275, column: 24, scope: !356, inlinedAt: !911)
!920 = !DILocation(line: 275, column: 34, scope: !356, inlinedAt: !911)
!921 = !DILocation(line: 275, column: 9, scope: !356, inlinedAt: !911)
!922 = !DILocation(line: 275, column: 39, scope: !356, inlinedAt: !911)
!923 = !DILocation(line: 275, column: 9, scope: !339, inlinedAt: !911)
!924 = !DILocation(line: 276, column: 20, scope: !362, inlinedAt: !911)
!925 = !DILocation(line: 276, column: 13, scope: !362, inlinedAt: !911)
!926 = !DILocation(line: 276, column: 13, scope: !363, inlinedAt: !911)
!927 = !DILocation(line: 1493, column: 25, scope: !368, inlinedAt: !928)
!928 = distinct !DILocation(line: 276, column: 37, scope: !362, inlinedAt: !911)
!929 = !DILocation(line: 1494, column: 5, scope: !368, inlinedAt: !928)
!930 = !DILocation(line: 1495, column: 1, scope: !368, inlinedAt: !928)
!931 = !DILocation(line: 276, column: 37, scope: !362, inlinedAt: !911)
!932 = !DILocation(line: 0, scope: !376, inlinedAt: !911)
!933 = !DILocation(line: 281, column: 1, scope: !339, inlinedAt: !911)
!934 = !DILocation(line: 286, column: 5, scope: !901)
!935 = distinct !DISubprogram(name: "dbUnshareStringValue", scope: !1, file: !1, line: 317, type: !936, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !938)
!936 = !DISubroutineType(types: !937)
!937 = !{!65, !93, !65, !65}
!938 = !{!939, !940, !941, !942}
!939 = !DILocalVariable(name: "db", arg: 1, scope: !935, file: !1, line: 317, type: !93)
!940 = !DILocalVariable(name: "key", arg: 2, scope: !935, file: !1, line: 317, type: !65)
!941 = !DILocalVariable(name: "o", arg: 3, scope: !935, file: !1, line: 317, type: !65)
!942 = !DILocalVariable(name: "decoded", scope: !943, file: !1, line: 320, type: !65)
!943 = distinct !DILexicalBlock(scope: !944, file: !1, line: 319, column: 62)
!944 = distinct !DILexicalBlock(scope: !935, file: !1, line: 319, column: 9)
!945 = !DILocation(line: 317, column: 37, scope: !935)
!946 = !DILocation(line: 317, column: 47, scope: !935)
!947 = !DILocation(line: 317, column: 58, scope: !935)
!948 = !DILocation(line: 318, column: 5, scope: !935)
!949 = !DILocation(line: 319, column: 12, scope: !944)
!950 = !{!216, !212, i64 4}
!951 = !DILocation(line: 319, column: 21, scope: !944)
!952 = !DILocation(line: 319, column: 32, scope: !944)
!953 = !DILocation(line: 319, column: 41, scope: !944)
!954 = !DILocation(line: 319, column: 26, scope: !944)
!955 = !DILocation(line: 320, column: 25, scope: !943)
!956 = !DILocation(line: 320, column: 15, scope: !943)
!957 = !DILocation(line: 321, column: 44, scope: !943)
!958 = !DILocation(line: 87, column: 39, scope: !819, inlinedAt: !959)
!959 = distinct !DILocation(line: 321, column: 49, scope: !943)
!960 = !DILocation(line: 88, column: 27, scope: !819, inlinedAt: !959)
!961 = !DILocation(line: 88, column: 19, scope: !819, inlinedAt: !959)
!962 = !DILocation(line: 89, column: 5, scope: !819, inlinedAt: !959)
!963 = !DILocation(line: 91, column: 20, scope: !833, inlinedAt: !959)
!964 = !DILocation(line: 91, column: 13, scope: !833, inlinedAt: !959)
!965 = !DILocation(line: 93, column: 20, scope: !833, inlinedAt: !959)
!966 = !DILocation(line: 93, column: 34, scope: !833, inlinedAt: !959)
!967 = !DILocation(line: 93, column: 13, scope: !833, inlinedAt: !959)
!968 = !DILocation(line: 95, column: 20, scope: !833, inlinedAt: !959)
!969 = !DILocation(line: 95, column: 35, scope: !833, inlinedAt: !959)
!970 = !DILocation(line: 95, column: 13, scope: !833, inlinedAt: !959)
!971 = !DILocation(line: 97, column: 20, scope: !833, inlinedAt: !959)
!972 = !DILocation(line: 97, column: 35, scope: !833, inlinedAt: !959)
!973 = !DILocation(line: 97, column: 13, scope: !833, inlinedAt: !959)
!974 = !DILocation(line: 99, column: 20, scope: !833, inlinedAt: !959)
!975 = !DILocation(line: 99, column: 35, scope: !833, inlinedAt: !959)
!976 = !DILocation(line: 99, column: 13, scope: !833, inlinedAt: !959)
!977 = !DILocation(line: 0, scope: !833, inlinedAt: !959)
!978 = !DILocation(line: 102, column: 1, scope: !819, inlinedAt: !959)
!979 = !DILocation(line: 321, column: 13, scope: !943)
!980 = !DILocation(line: 322, column: 9, scope: !943)
!981 = !DILocation(line: 323, column: 9, scope: !943)
!982 = !DILocation(line: 324, column: 5, scope: !943)
!983 = !DILocation(line: 325, column: 5, scope: !935)
!984 = distinct !DISubprogram(name: "emptyDb", scope: !1, file: !1, line: 342, type: !985, isLocal: false, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !987)
!985 = !DISubroutineType(types: !986)
!986 = !{!165, !8, !8, !187}
!987 = !{!988, !989, !990, !991, !992, !993, !994, !995}
!988 = !DILocalVariable(name: "dbnum", arg: 1, scope: !984, file: !1, line: 342, type: !8)
!989 = !DILocalVariable(name: "flags", arg: 2, scope: !984, file: !1, line: 342, type: !8)
!990 = !DILocalVariable(name: "callback", arg: 3, scope: !984, file: !1, line: 342, type: !187)
!991 = !DILocalVariable(name: "async", scope: !984, file: !1, line: 343, type: !8)
!992 = !DILocalVariable(name: "removed", scope: !984, file: !1, line: 344, type: !165)
!993 = !DILocalVariable(name: "startdb", scope: !984, file: !1, line: 351, type: !8)
!994 = !DILocalVariable(name: "enddb", scope: !984, file: !1, line: 351, type: !8)
!995 = !DILocalVariable(name: "j", scope: !996, file: !1, line: 359, type: !8)
!996 = distinct !DILexicalBlock(scope: !984, file: !1, line: 359, column: 5)
!997 = !DILocation(line: 342, column: 23, scope: !984)
!998 = !DILocation(line: 342, column: 34, scope: !984)
!999 = !DILocation(line: 342, column: 46, scope: !984)
!1000 = !DILocation(line: 343, column: 24, scope: !984)
!1001 = !DILocation(line: 343, column: 9, scope: !984)
!1002 = !DILocation(line: 344, column: 15, scope: !984)
!1003 = !DILocation(line: 346, column: 15, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !984, file: !1, line: 346, column: 9)
!1005 = !DILocation(line: 346, column: 20, scope: !1004)
!1006 = !DILocation(line: 346, column: 39, scope: !1004)
!1007 = !{!227, !212, i64 1792}
!1008 = !DILocation(line: 346, column: 29, scope: !1004)
!1009 = !DILocation(line: 346, column: 9, scope: !984)
!1010 = !DILocation(line: 347, column: 9, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 346, column: 46)
!1012 = !DILocation(line: 347, column: 15, scope: !1011)
!1013 = !DILocation(line: 348, column: 9, scope: !1011)
!1014 = !DILocation(line: 352, column: 15, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !984, file: !1, line: 352, column: 9)
!1016 = !DILocation(line: 351, column: 9, scope: !984)
!1017 = !DILocation(line: 354, column: 29, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 352, column: 22)
!1019 = !DILocation(line: 351, column: 18, scope: !984)
!1020 = !DILocation(line: 352, column: 9, scope: !984)
!1021 = !DILocation(line: 359, column: 14, scope: !996)
!1022 = !DILocation(line: 359, column: 29, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !996, file: !1, line: 359, column: 5)
!1024 = !DILocation(line: 359, column: 5, scope: !996)
!1025 = !DILocation(line: 0, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 359, column: 44)
!1027 = !DILocation(line: 368, column: 16, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !984, file: !1, line: 368, column: 9)
!1029 = !DILocation(line: 368, column: 9, scope: !1028)
!1030 = !DILocation(line: 368, column: 9, scope: !984)
!1031 = !DILocation(line: 360, column: 20, scope: !1026)
!1032 = !{!227, !209, i64 48}
!1033 = !DILocation(line: 360, column: 17, scope: !1026)
!1034 = !DILocation(line: 361, column: 13, scope: !1026)
!1035 = !DILocation(line: 362, column: 13, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !1, line: 361, column: 20)
!1037 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 361, column: 13)
!1038 = !DILocation(line: 363, column: 9, scope: !1036)
!1039 = !DILocation(line: 364, column: 13, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1037, file: !1, line: 363, column: 16)
!1041 = !DILocation(line: 365, column: 30, scope: !1040)
!1042 = !DILocation(line: 365, column: 36, scope: !1040)
!1043 = !DILocation(line: 365, column: 13, scope: !1040)
!1044 = !DILocation(line: 359, column: 40, scope: !1023)
!1045 = distinct !{!1045, !1024, !1046}
!1046 = !DILocation(line: 367, column: 5, scope: !996)
!1047 = !DILocation(line: 369, column: 13, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 369, column: 13)
!1049 = distinct !DILexicalBlock(scope: !1028, file: !1, line: 368, column: 33)
!1050 = !DILocation(line: 369, column: 13, scope: !1049)
!1051 = !DILocation(line: 370, column: 13, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 369, column: 20)
!1053 = !DILocation(line: 371, column: 9, scope: !1052)
!1054 = !DILocation(line: 1498, column: 20, scope: !1055, inlinedAt: !1058)
!1055 = distinct !DISubprogram(name: "slotToKeyFlush", scope: !1, file: !1, line: 1497, type: !1056, isLocal: false, isDefinition: true, scopeLine: 1497, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{null}
!1058 = distinct !DILocation(line: 372, column: 13, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 371, column: 16)
!1060 = !{!227, !209, i64 2944}
!1061 = !DILocation(line: 1498, column: 29, scope: !1055, inlinedAt: !1058)
!1062 = !{!1063, !209, i64 524328}
!1063 = !{!"clusterState", !209, i64 0, !228, i64 8, !212, i64 16, !212, i64 20, !209, i64 24, !209, i64 32, !210, i64 40, !210, i64 131112, !210, i64 262184, !210, i64 393256, !209, i64 524328, !213, i64 524336, !212, i64 524344, !212, i64 524348, !212, i64 524352, !228, i64 524360, !212, i64 524368, !213, i64 524376, !209, i64 524384, !213, i64 524392, !212, i64 524400, !228, i64 524408, !212, i64 524416, !210, i64 524424, !210, i64 524504, !213, i64 524584}
!1064 = !DILocation(line: 1498, column: 5, scope: !1055, inlinedAt: !1058)
!1065 = !DILocation(line: 1499, column: 37, scope: !1055, inlinedAt: !1058)
!1066 = !DILocation(line: 1499, column: 12, scope: !1055, inlinedAt: !1058)
!1067 = !DILocation(line: 1499, column: 21, scope: !1055, inlinedAt: !1058)
!1068 = !DILocation(line: 1499, column: 35, scope: !1055, inlinedAt: !1058)
!1069 = !DILocation(line: 1500, column: 12, scope: !1055, inlinedAt: !1058)
!1070 = !DILocation(line: 1500, column: 5, scope: !1055, inlinedAt: !1058)
!1071 = !DILocation(line: 1502, column: 1, scope: !1055, inlinedAt: !1058)
!1072 = !DILocation(line: 375, column: 9, scope: !984)
!1073 = !DILocation(line: 375, column: 22, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !984, file: !1, line: 375, column: 9)
!1075 = !DILocation(line: 0, scope: !984)
!1076 = !DILocation(line: 377, column: 1, scope: !984)
!1077 = !DILocation(line: 1498, column: 20, scope: !1055)
!1078 = !DILocation(line: 1498, column: 29, scope: !1055)
!1079 = !DILocation(line: 1498, column: 5, scope: !1055)
!1080 = !DILocation(line: 1499, column: 37, scope: !1055)
!1081 = !DILocation(line: 1499, column: 12, scope: !1055)
!1082 = !DILocation(line: 1499, column: 21, scope: !1055)
!1083 = !DILocation(line: 1499, column: 35, scope: !1055)
!1084 = !DILocation(line: 1500, column: 12, scope: !1055)
!1085 = !DILocation(line: 1500, column: 5, scope: !1055)
!1086 = !DILocation(line: 1502, column: 1, scope: !1055)
!1087 = distinct !DISubprogram(name: "selectDb", scope: !1, file: !1, line: 379, type: !1088, isLocal: false, isDefinition: true, scopeLine: 379, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1090)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!8, !429, !8}
!1090 = !{!1091, !1092}
!1091 = !DILocalVariable(name: "c", arg: 1, scope: !1087, file: !1, line: 379, type: !429)
!1092 = !DILocalVariable(name: "id", arg: 2, scope: !1087, file: !1, line: 379, type: !8)
!1093 = !DILocation(line: 379, column: 22, scope: !1087)
!1094 = !DILocation(line: 379, column: 29, scope: !1087)
!1095 = !DILocation(line: 380, column: 12, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 380, column: 9)
!1097 = !DILocation(line: 380, column: 32, scope: !1096)
!1098 = !DILocation(line: 380, column: 22, scope: !1096)
!1099 = !DILocation(line: 380, column: 16, scope: !1096)
!1100 = !DILocation(line: 382, column: 21, scope: !1087)
!1101 = !DILocation(line: 382, column: 14, scope: !1087)
!1102 = !DILocation(line: 382, column: 8, scope: !1087)
!1103 = !DILocation(line: 382, column: 11, scope: !1087)
!1104 = !DILocation(line: 383, column: 5, scope: !1087)
!1105 = !DILocation(line: 0, scope: !1087)
!1106 = !DILocation(line: 384, column: 1, scope: !1087)
!1107 = distinct !DISubprogram(name: "signalFlushedDb", scope: !1, file: !1, line: 399, type: !1108, isLocal: false, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1110)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{null, !8}
!1110 = !{!1111}
!1111 = !DILocalVariable(name: "dbid", arg: 1, scope: !1107, file: !1, line: 399, type: !8)
!1112 = !DILocation(line: 399, column: 26, scope: !1107)
!1113 = !DILocation(line: 400, column: 5, scope: !1107)
!1114 = !DILocation(line: 401, column: 1, scope: !1107)
!1115 = distinct !DISubprogram(name: "getFlushCommandFlags", scope: !1, file: !1, line: 415, type: !1116, isLocal: false, isDefinition: true, scopeLine: 415, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1118)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!8, !429, !467}
!1118 = !{!1119, !1120}
!1119 = !DILocalVariable(name: "c", arg: 1, scope: !1115, file: !1, line: 415, type: !429)
!1120 = !DILocalVariable(name: "flags", arg: 2, scope: !1115, file: !1, line: 415, type: !467)
!1121 = !DILocation(line: 415, column: 34, scope: !1115)
!1122 = !DILocation(line: 415, column: 42, scope: !1115)
!1123 = !DILocation(line: 417, column: 12, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1115, file: !1, line: 417, column: 9)
!1125 = !{!292, !212, i64 64}
!1126 = !DILocation(line: 417, column: 17, scope: !1124)
!1127 = !DILocation(line: 417, column: 9, scope: !1115)
!1128 = !DILocation(line: 418, column: 21, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !1, line: 418, column: 13)
!1130 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 417, column: 22)
!1131 = !DILocation(line: 418, column: 25, scope: !1129)
!1132 = !DILocation(line: 418, column: 42, scope: !1129)
!1133 = !{!292, !209, i64 72}
!1134 = !DILocation(line: 418, column: 39, scope: !1129)
!1135 = !{!209, !209, i64 0}
!1136 = !DILocation(line: 418, column: 51, scope: !1129)
!1137 = !DILocation(line: 418, column: 28, scope: !1129)
!1138 = !DILocation(line: 418, column: 13, scope: !1130)
!1139 = !DILocation(line: 419, column: 31, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1129, file: !1, line: 418, column: 65)
!1141 = !{!1142, !209, i64 128}
!1142 = !{!"sharedObjectsStruct", !209, i64 0, !209, i64 8, !209, i64 16, !209, i64 24, !209, i64 32, !209, i64 40, !209, i64 48, !209, i64 56, !209, i64 64, !209, i64 72, !209, i64 80, !209, i64 88, !209, i64 96, !209, i64 104, !209, i64 112, !209, i64 120, !209, i64 128, !209, i64 136, !209, i64 144, !209, i64 152, !209, i64 160, !209, i64 168, !209, i64 176, !209, i64 184, !209, i64 192, !209, i64 200, !209, i64 208, !209, i64 216, !209, i64 224, !209, i64 232, !209, i64 240, !209, i64 248, !209, i64 256, !209, i64 264, !209, i64 272, !209, i64 280, !209, i64 288, !209, i64 296, !209, i64 304, !209, i64 312, !209, i64 320, !209, i64 328, !209, i64 336, !209, i64 344, !209, i64 352, !209, i64 360, !210, i64 368, !210, i64 448, !210, i64 80448, !210, i64 80704, !209, i64 80960, !209, i64 80968}
!1143 = !DILocation(line: 419, column: 13, scope: !1140)
!1144 = !DILocation(line: 420, column: 13, scope: !1140)
!1145 = !DILocation(line: 0, scope: !1130)
!1146 = !DILocation(line: 426, column: 5, scope: !1115)
!1147 = !DILocation(line: 0, scope: !1115)
!1148 = !DILocation(line: 427, column: 1, scope: !1115)
!1149 = distinct !DISubprogram(name: "flushdbCommand", scope: !1, file: !1, line: 432, type: !457, isLocal: false, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1150)
!1150 = !{!1151, !1152}
!1151 = !DILocalVariable(name: "c", arg: 1, scope: !1149, file: !1, line: 432, type: !429)
!1152 = !DILocalVariable(name: "flags", scope: !1149, file: !1, line: 433, type: !8)
!1153 = !DILocation(line: 432, column: 29, scope: !1149)
!1154 = !DILocation(line: 415, column: 34, scope: !1115, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 435, column: 9, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 435, column: 9)
!1157 = !DILocation(line: 417, column: 12, scope: !1124, inlinedAt: !1155)
!1158 = !DILocation(line: 417, column: 17, scope: !1124, inlinedAt: !1155)
!1159 = !DILocation(line: 417, column: 9, scope: !1115, inlinedAt: !1155)
!1160 = !DILocation(line: 418, column: 21, scope: !1129, inlinedAt: !1155)
!1161 = !DILocation(line: 418, column: 25, scope: !1129, inlinedAt: !1155)
!1162 = !DILocation(line: 418, column: 42, scope: !1129, inlinedAt: !1155)
!1163 = !DILocation(line: 418, column: 39, scope: !1129, inlinedAt: !1155)
!1164 = !DILocation(line: 418, column: 51, scope: !1129, inlinedAt: !1155)
!1165 = !DILocation(line: 418, column: 28, scope: !1129, inlinedAt: !1155)
!1166 = !DILocation(line: 418, column: 13, scope: !1130, inlinedAt: !1155)
!1167 = !DILocation(line: 419, column: 31, scope: !1140, inlinedAt: !1155)
!1168 = !DILocation(line: 419, column: 13, scope: !1140, inlinedAt: !1155)
!1169 = !DILocation(line: 427, column: 1, scope: !1115, inlinedAt: !1155)
!1170 = !DILocation(line: 435, column: 9, scope: !1149)
!1171 = !DILocation(line: 436, column: 24, scope: !1149)
!1172 = !DILocation(line: 436, column: 28, scope: !1149)
!1173 = !DILocation(line: 399, column: 26, scope: !1107, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 436, column: 5, scope: !1149)
!1175 = !DILocation(line: 400, column: 5, scope: !1107, inlinedAt: !1174)
!1176 = !DILocation(line: 401, column: 1, scope: !1107, inlinedAt: !1174)
!1177 = !DILocation(line: 437, column: 32, scope: !1149)
!1178 = !DILocation(line: 437, column: 36, scope: !1149)
!1179 = !DILocation(line: 433, column: 9, scope: !1149)
!1180 = !DILocation(line: 437, column: 21, scope: !1149)
!1181 = !DILocation(line: 437, column: 18, scope: !1149)
!1182 = !{!227, !213, i64 2080}
!1183 = !DILocation(line: 438, column: 23, scope: !1149)
!1184 = !{!1142, !209, i64 8}
!1185 = !DILocation(line: 438, column: 5, scope: !1149)
!1186 = !DILocation(line: 439, column: 1, scope: !1149)
!1187 = distinct !DISubprogram(name: "flushallCommand", scope: !1, file: !1, line: 444, type: !457, isLocal: false, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1188)
!1188 = !{!1189, !1190, !1191, !1194, !1202}
!1189 = !DILocalVariable(name: "c", arg: 1, scope: !1187, file: !1, line: 444, type: !429)
!1190 = !DILocalVariable(name: "flags", scope: !1187, file: !1, line: 445, type: !8)
!1191 = !DILocalVariable(name: "saved_dirty", scope: !1192, file: !1, line: 458, type: !8)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !1, line: 455, column: 35)
!1193 = distinct !DILexicalBlock(scope: !1187, file: !1, line: 455, column: 9)
!1194 = !DILocalVariable(name: "rsi", scope: !1192, file: !1, line: 459, type: !1195)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "rdbSaveInfo", file: !67, line: 912, baseType: !1196)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rdbSaveInfo", file: !67, line: 904, size: 512, elements: !1197)
!1197 = !{!1198, !1199, !1200, !1201}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "repl_stream_db", scope: !1196, file: !67, line: 906, baseType: !8, size: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "repl_id_is_set", scope: !1196, file: !67, line: 909, baseType: !8, size: 32, offset: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "repl_id", scope: !1196, file: !67, line: 910, baseType: !504, size: 328, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "repl_offset", scope: !1196, file: !67, line: 911, baseType: !165, size: 64, offset: 448)
!1202 = !DILocalVariable(name: "rsiptr", scope: !1192, file: !1, line: 459, type: !1203)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1204 = !DILocation(line: 444, column: 30, scope: !1187)
!1205 = !DILocation(line: 415, column: 34, scope: !1115, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 447, column: 9, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1187, file: !1, line: 447, column: 9)
!1208 = !DILocation(line: 417, column: 12, scope: !1124, inlinedAt: !1206)
!1209 = !DILocation(line: 417, column: 17, scope: !1124, inlinedAt: !1206)
!1210 = !DILocation(line: 417, column: 9, scope: !1115, inlinedAt: !1206)
!1211 = !DILocation(line: 418, column: 21, scope: !1129, inlinedAt: !1206)
!1212 = !DILocation(line: 418, column: 25, scope: !1129, inlinedAt: !1206)
!1213 = !DILocation(line: 418, column: 42, scope: !1129, inlinedAt: !1206)
!1214 = !DILocation(line: 418, column: 39, scope: !1129, inlinedAt: !1206)
!1215 = !DILocation(line: 418, column: 51, scope: !1129, inlinedAt: !1206)
!1216 = !DILocation(line: 418, column: 28, scope: !1129, inlinedAt: !1206)
!1217 = !DILocation(line: 418, column: 13, scope: !1130, inlinedAt: !1206)
!1218 = !DILocation(line: 419, column: 31, scope: !1140, inlinedAt: !1206)
!1219 = !DILocation(line: 419, column: 13, scope: !1140, inlinedAt: !1206)
!1220 = !DILocation(line: 427, column: 1, scope: !1115, inlinedAt: !1206)
!1221 = !DILocation(line: 447, column: 9, scope: !1187)
!1222 = !DILocation(line: 399, column: 26, scope: !1107, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 448, column: 5, scope: !1187)
!1224 = !DILocation(line: 400, column: 5, scope: !1107, inlinedAt: !1223)
!1225 = !DILocation(line: 401, column: 1, scope: !1107, inlinedAt: !1223)
!1226 = !DILocation(line: 445, column: 9, scope: !1187)
!1227 = !DILocation(line: 449, column: 21, scope: !1187)
!1228 = !DILocation(line: 449, column: 18, scope: !1187)
!1229 = !DILocation(line: 450, column: 23, scope: !1187)
!1230 = !DILocation(line: 450, column: 5, scope: !1187)
!1231 = !DILocation(line: 451, column: 16, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1187, file: !1, line: 451, column: 9)
!1233 = !DILocation(line: 451, column: 30, scope: !1232)
!1234 = !DILocation(line: 451, column: 9, scope: !1187)
!1235 = !DILocation(line: 452, column: 9, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1232, file: !1, line: 451, column: 37)
!1237 = !DILocation(line: 453, column: 34, scope: !1236)
!1238 = !DILocation(line: 453, column: 9, scope: !1236)
!1239 = !DILocation(line: 454, column: 5, scope: !1236)
!1240 = !DILocation(line: 455, column: 16, scope: !1193)
!1241 = !{!227, !212, i64 2112}
!1242 = !DILocation(line: 455, column: 30, scope: !1193)
!1243 = !DILocation(line: 0, scope: !1187)
!1244 = !DILocation(line: 455, column: 9, scope: !1187)
!1245 = !DILocation(line: 459, column: 9, scope: !1192)
!1246 = !DILocation(line: 459, column: 21, scope: !1192)
!1247 = !DILocation(line: 460, column: 18, scope: !1192)
!1248 = !DILocation(line: 459, column: 27, scope: !1192)
!1249 = !DILocation(line: 461, column: 24, scope: !1192)
!1250 = !{!227, !209, i64 2120}
!1251 = !DILocation(line: 461, column: 9, scope: !1192)
!1252 = !DILocation(line: 462, column: 24, scope: !1192)
!1253 = !DILocation(line: 462, column: 22, scope: !1192)
!1254 = !DILocation(line: 463, column: 5, scope: !1193)
!1255 = !DILocation(line: 463, column: 5, scope: !1192)
!1256 = !DILocation(line: 464, column: 17, scope: !1187)
!1257 = !DILocation(line: 465, column: 1, scope: !1187)
!1258 = distinct !DISubprogram(name: "delGenericCommand", scope: !1, file: !1, line: 468, type: !1259, isLocal: false, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1261)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{null, !429, !8}
!1261 = !{!1262, !1263, !1264, !1265, !1266}
!1262 = !DILocalVariable(name: "c", arg: 1, scope: !1258, file: !1, line: 468, type: !429)
!1263 = !DILocalVariable(name: "lazy", arg: 2, scope: !1258, file: !1, line: 468, type: !8)
!1264 = !DILocalVariable(name: "numdel", scope: !1258, file: !1, line: 469, type: !8)
!1265 = !DILocalVariable(name: "j", scope: !1258, file: !1, line: 469, type: !8)
!1266 = !DILocalVariable(name: "deleted", scope: !1267, file: !1, line: 473, type: !8)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 471, column: 35)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !1, line: 471, column: 5)
!1269 = distinct !DILexicalBlock(scope: !1258, file: !1, line: 471, column: 5)
!1270 = !DILocation(line: 468, column: 32, scope: !1258)
!1271 = !DILocation(line: 468, column: 39, scope: !1258)
!1272 = !DILocation(line: 469, column: 9, scope: !1258)
!1273 = !DILocation(line: 469, column: 21, scope: !1258)
!1274 = !DILocation(line: 471, column: 24, scope: !1268)
!1275 = !DILocation(line: 471, column: 19, scope: !1268)
!1276 = !DILocation(line: 471, column: 5, scope: !1269)
!1277 = !DILocation(line: 472, column: 27, scope: !1267)
!1278 = !DILocation(line: 472, column: 33, scope: !1267)
!1279 = !DILocation(line: 472, column: 30, scope: !1267)
!1280 = !DILocation(line: 472, column: 9, scope: !1267)
!1281 = !DILocation(line: 0, scope: !1267)
!1282 = !DILocation(line: 473, column: 24, scope: !1267)
!1283 = !DILocation(line: 473, column: 31, scope: !1267)
!1284 = !DILocation(line: 271, column: 27, scope: !339, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 474, column: 31, scope: !1267)
!1286 = !DILocation(line: 271, column: 37, scope: !339, inlinedAt: !1285)
!1287 = !DILocation(line: 274, column: 9, scope: !346, inlinedAt: !1285)
!1288 = !DILocation(line: 274, column: 31, scope: !346, inlinedAt: !1285)
!1289 = !DILocation(line: 0, scope: !346, inlinedAt: !1285)
!1290 = !DILocation(line: 274, column: 9, scope: !339, inlinedAt: !1285)
!1291 = !DILocation(line: 274, column: 64, scope: !346, inlinedAt: !1285)
!1292 = !DILocation(line: 274, column: 36, scope: !346, inlinedAt: !1285)
!1293 = !DILocation(line: 275, column: 24, scope: !356, inlinedAt: !1285)
!1294 = !DILocation(line: 275, column: 34, scope: !356, inlinedAt: !1285)
!1295 = !DILocation(line: 275, column: 9, scope: !356, inlinedAt: !1285)
!1296 = !DILocation(line: 275, column: 39, scope: !356, inlinedAt: !1285)
!1297 = !DILocation(line: 275, column: 9, scope: !339, inlinedAt: !1285)
!1298 = !DILocation(line: 276, column: 20, scope: !362, inlinedAt: !1285)
!1299 = !DILocation(line: 276, column: 13, scope: !362, inlinedAt: !1285)
!1300 = !DILocation(line: 276, column: 13, scope: !363, inlinedAt: !1285)
!1301 = !DILocation(line: 1493, column: 25, scope: !368, inlinedAt: !1302)
!1302 = distinct !DILocation(line: 276, column: 37, scope: !362, inlinedAt: !1285)
!1303 = !DILocation(line: 1494, column: 5, scope: !368, inlinedAt: !1302)
!1304 = !DILocation(line: 1495, column: 1, scope: !368, inlinedAt: !1302)
!1305 = !DILocation(line: 276, column: 37, scope: !362, inlinedAt: !1285)
!1306 = !DILocation(line: 0, scope: !376, inlinedAt: !1285)
!1307 = !DILocation(line: 281, column: 1, scope: !339, inlinedAt: !1285)
!1308 = !DILocation(line: 473, column: 13, scope: !1267)
!1309 = !DILocation(line: 475, column: 13, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1267, file: !1, line: 475, column: 13)
!1311 = !DILocation(line: 475, column: 13, scope: !1267)
!1312 = !DILocation(line: 476, column: 34, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 475, column: 22)
!1314 = !DILocation(line: 476, column: 40, scope: !1313)
!1315 = !DILocation(line: 476, column: 37, scope: !1313)
!1316 = !DILocation(line: 395, column: 33, scope: !759, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 476, column: 13, scope: !1313)
!1318 = !DILocation(line: 395, column: 43, scope: !759, inlinedAt: !1317)
!1319 = !DILocation(line: 396, column: 5, scope: !759, inlinedAt: !1317)
!1320 = !DILocation(line: 397, column: 1, scope: !759, inlinedAt: !1317)
!1321 = !DILocation(line: 478, column: 26, scope: !1313)
!1322 = !DILocation(line: 478, column: 23, scope: !1313)
!1323 = !DILocation(line: 478, column: 37, scope: !1313)
!1324 = !DILocation(line: 478, column: 41, scope: !1313)
!1325 = !DILocation(line: 477, column: 13, scope: !1313)
!1326 = !DILocation(line: 479, column: 25, scope: !1313)
!1327 = !DILocation(line: 480, column: 19, scope: !1313)
!1328 = !DILocation(line: 481, column: 9, scope: !1313)
!1329 = !DILocation(line: 0, scope: !1258)
!1330 = !DILocation(line: 471, column: 31, scope: !1268)
!1331 = distinct !{!1331, !1276, !1332}
!1332 = !DILocation(line: 482, column: 5, scope: !1269)
!1333 = !DILocation(line: 0, scope: !1313)
!1334 = !DILocation(line: 483, column: 24, scope: !1258)
!1335 = !DILocation(line: 483, column: 5, scope: !1258)
!1336 = !DILocation(line: 484, column: 1, scope: !1258)
!1337 = distinct !DISubprogram(name: "delCommand", scope: !1, file: !1, line: 486, type: !457, isLocal: false, isDefinition: true, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1338)
!1338 = !{!1339}
!1339 = !DILocalVariable(name: "c", arg: 1, scope: !1337, file: !1, line: 486, type: !429)
!1340 = !DILocation(line: 486, column: 25, scope: !1337)
!1341 = !DILocation(line: 487, column: 5, scope: !1337)
!1342 = !DILocation(line: 488, column: 1, scope: !1337)
!1343 = distinct !DISubprogram(name: "unlinkCommand", scope: !1, file: !1, line: 490, type: !457, isLocal: false, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1344)
!1344 = !{!1345}
!1345 = !DILocalVariable(name: "c", arg: 1, scope: !1343, file: !1, line: 490, type: !429)
!1346 = !DILocation(line: 490, column: 28, scope: !1343)
!1347 = !DILocation(line: 491, column: 5, scope: !1343)
!1348 = !DILocation(line: 492, column: 1, scope: !1343)
!1349 = distinct !DISubprogram(name: "existsCommand", scope: !1, file: !1, line: 496, type: !457, isLocal: false, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1350)
!1350 = !{!1351, !1352, !1353}
!1351 = !DILocalVariable(name: "c", arg: 1, scope: !1349, file: !1, line: 496, type: !429)
!1352 = !DILocalVariable(name: "count", scope: !1349, file: !1, line: 497, type: !165)
!1353 = !DILocalVariable(name: "j", scope: !1349, file: !1, line: 498, type: !8)
!1354 = !DILocation(line: 496, column: 28, scope: !1349)
!1355 = !DILocation(line: 497, column: 15, scope: !1349)
!1356 = !DILocation(line: 498, column: 9, scope: !1349)
!1357 = !DILocation(line: 500, column: 24, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !1, line: 500, column: 5)
!1359 = distinct !DILexicalBlock(scope: !1349, file: !1, line: 500, column: 5)
!1360 = !DILocation(line: 500, column: 19, scope: !1358)
!1361 = !DILocation(line: 500, column: 5, scope: !1359)
!1362 = !DILocation(line: 501, column: 30, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !1, line: 501, column: 13)
!1364 = distinct !DILexicalBlock(scope: !1358, file: !1, line: 500, column: 35)
!1365 = !DILocation(line: 501, column: 36, scope: !1363)
!1366 = !DILocation(line: 501, column: 33, scope: !1363)
!1367 = !DILocation(line: 143, column: 30, scope: !380, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 501, column: 13, scope: !1363)
!1369 = !DILocation(line: 143, column: 40, scope: !380, inlinedAt: !1368)
!1370 = !DILocation(line: 100, column: 39, scope: !264, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 144, column: 12, scope: !380, inlinedAt: !1368)
!1372 = !DILocation(line: 100, column: 49, scope: !264, inlinedAt: !1371)
!1373 = !DILocation(line: 100, column: 58, scope: !264, inlinedAt: !1371)
!1374 = !DILocation(line: 103, column: 9, scope: !274, inlinedAt: !1371)
!1375 = !DILocation(line: 103, column: 32, scope: !274, inlinedAt: !1371)
!1376 = !DILocation(line: 103, column: 9, scope: !264, inlinedAt: !1371)
!1377 = !DILocation(line: 107, column: 20, scope: !278, inlinedAt: !1371)
!1378 = !DILocation(line: 107, column: 31, scope: !278, inlinedAt: !1371)
!1379 = !DILocation(line: 107, column: 13, scope: !279, inlinedAt: !1371)
!1380 = !DILocation(line: 124, column: 20, scope: !284, inlinedAt: !1371)
!1381 = !DILocation(line: 124, column: 13, scope: !284, inlinedAt: !1371)
!1382 = !DILocation(line: 125, column: 45, scope: !284, inlinedAt: !1371)
!1383 = !DILocation(line: 125, column: 35, scope: !284, inlinedAt: !1371)
!1384 = !DILocation(line: 124, column: 35, scope: !284, inlinedAt: !1371)
!1385 = !DILocation(line: 126, column: 36, scope: !284, inlinedAt: !1371)
!1386 = !DILocation(line: 126, column: 13, scope: !284, inlinedAt: !1371)
!1387 = !DILocation(line: 126, column: 40, scope: !284, inlinedAt: !1371)
!1388 = !DILocation(line: 127, column: 41, scope: !284, inlinedAt: !1371)
!1389 = !DILocation(line: 127, column: 47, scope: !284, inlinedAt: !1371)
!1390 = !DILocation(line: 124, column: 13, scope: !279, inlinedAt: !1371)
!1391 = !DILocation(line: 133, column: 11, scope: !264, inlinedAt: !1371)
!1392 = !DILocation(line: 101, column: 11, scope: !264, inlinedAt: !1371)
!1393 = !DILocation(line: 134, column: 13, scope: !305, inlinedAt: !1371)
!1394 = !DILocation(line: 135, column: 9, scope: !305, inlinedAt: !1371)
!1395 = !DILocation(line: 0, scope: !264, inlinedAt: !1371)
!1396 = !DILocation(line: 0, scope: !1363)
!1397 = !DILocation(line: 139, column: 1, scope: !264, inlinedAt: !1371)
!1398 = !DILocation(line: 144, column: 5, scope: !380, inlinedAt: !1368)
!1399 = !DILocation(line: 501, column: 13, scope: !1363)
!1400 = !DILocation(line: 501, column: 13, scope: !1364)
!1401 = !DILocation(line: 500, column: 31, scope: !1358)
!1402 = distinct !{!1402, !1361, !1403}
!1403 = !DILocation(line: 502, column: 5, scope: !1359)
!1404 = !DILocation(line: 503, column: 5, scope: !1349)
!1405 = !DILocation(line: 504, column: 1, scope: !1349)
!1406 = distinct !DISubprogram(name: "selectCommand", scope: !1, file: !1, line: 506, type: !457, isLocal: false, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1407)
!1407 = !{!1408, !1409}
!1408 = !DILocalVariable(name: "c", arg: 1, scope: !1406, file: !1, line: 506, type: !429)
!1409 = !DILocalVariable(name: "id", scope: !1406, file: !1, line: 507, type: !12)
!1410 = !DILocation(line: 506, column: 28, scope: !1406)
!1411 = !DILocation(line: 507, column: 5, scope: !1406)
!1412 = !DILocation(line: 509, column: 40, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1406, file: !1, line: 509, column: 9)
!1414 = !DILocation(line: 509, column: 37, scope: !1413)
!1415 = !DILocation(line: 507, column: 10, scope: !1406)
!1416 = !DILocation(line: 509, column: 9, scope: !1413)
!1417 = !DILocation(line: 510, column: 29, scope: !1413)
!1418 = !DILocation(line: 509, column: 9, scope: !1406)
!1419 = !DILocation(line: 513, column: 16, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1406, file: !1, line: 513, column: 9)
!1421 = !DILocation(line: 513, column: 9, scope: !1420)
!1422 = !DILocation(line: 513, column: 35, scope: !1420)
!1423 = !DILocation(line: 513, column: 38, scope: !1420)
!1424 = !DILocation(line: 513, column: 32, scope: !1420)
!1425 = !DILocation(line: 514, column: 9, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1420, file: !1, line: 513, column: 44)
!1427 = !DILocation(line: 515, column: 9, scope: !1426)
!1428 = !DILocation(line: 517, column: 20, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1406, file: !1, line: 517, column: 9)
!1430 = !DILocation(line: 379, column: 22, scope: !1087, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 517, column: 9, scope: !1429)
!1432 = !DILocation(line: 379, column: 29, scope: !1087, inlinedAt: !1431)
!1433 = !DILocation(line: 380, column: 12, scope: !1096, inlinedAt: !1431)
!1434 = !DILocation(line: 380, column: 32, scope: !1096, inlinedAt: !1431)
!1435 = !DILocation(line: 380, column: 22, scope: !1096, inlinedAt: !1431)
!1436 = !DILocation(line: 380, column: 16, scope: !1096, inlinedAt: !1431)
!1437 = !DILocation(line: 384, column: 1, scope: !1087, inlinedAt: !1431)
!1438 = !DILocation(line: 518, column: 9, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1429, file: !1, line: 517, column: 34)
!1440 = !DILocation(line: 519, column: 5, scope: !1439)
!1441 = !DILocation(line: 382, column: 21, scope: !1087, inlinedAt: !1431)
!1442 = !DILocation(line: 382, column: 14, scope: !1087, inlinedAt: !1431)
!1443 = !DILocation(line: 382, column: 8, scope: !1087, inlinedAt: !1431)
!1444 = !DILocation(line: 382, column: 11, scope: !1087, inlinedAt: !1431)
!1445 = !DILocation(line: 520, column: 27, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1429, file: !1, line: 519, column: 12)
!1447 = !DILocation(line: 520, column: 9, scope: !1446)
!1448 = !DILocation(line: 522, column: 1, scope: !1406)
!1449 = distinct !DISubprogram(name: "randomkeyCommand", scope: !1, file: !1, line: 524, type: !457, isLocal: false, isDefinition: true, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1450)
!1450 = !{!1451, !1452}
!1451 = !DILocalVariable(name: "c", arg: 1, scope: !1449, file: !1, line: 524, type: !429)
!1452 = !DILocalVariable(name: "key", scope: !1449, file: !1, line: 525, type: !65)
!1453 = !DILocation(line: 524, column: 31, scope: !1449)
!1454 = !DILocation(line: 527, column: 31, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1449, file: !1, line: 527, column: 9)
!1456 = !DILocation(line: 527, column: 16, scope: !1455)
!1457 = !DILocation(line: 525, column: 11, scope: !1449)
!1458 = !DILocation(line: 527, column: 36, scope: !1455)
!1459 = !DILocation(line: 527, column: 9, scope: !1449)
!1460 = !DILocation(line: 528, column: 27, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1455, file: !1, line: 527, column: 45)
!1462 = !{!1142, !209, i64 80}
!1463 = !DILocation(line: 528, column: 9, scope: !1461)
!1464 = !DILocation(line: 529, column: 9, scope: !1461)
!1465 = !DILocation(line: 532, column: 5, scope: !1449)
!1466 = !DILocation(line: 533, column: 5, scope: !1449)
!1467 = !DILocation(line: 534, column: 1, scope: !1449)
!1468 = distinct !DISubprogram(name: "keysCommand", scope: !1, file: !1, line: 536, type: !457, isLocal: false, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1469)
!1469 = !{!1470, !1471, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1491}
!1470 = !DILocalVariable(name: "c", arg: 1, scope: !1468, file: !1, line: 536, type: !429)
!1471 = !DILocalVariable(name: "di", scope: !1468, file: !1, line: 537, type: !1472)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !100, line: 95, baseType: !1474)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !100, line: 88, size: 384, elements: !1475)
!1475 = !{!1476, !1477, !1478, !1479, !1480, !1481, !1482}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1474, file: !100, line: 89, baseType: !98, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1474, file: !100, line: 90, baseType: !12, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !1474, file: !100, line: 91, baseType: !8, size: 32, offset: 128)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !1474, file: !100, line: 91, baseType: !8, size: 32, offset: 160)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1474, file: !100, line: 92, baseType: !136, size: 64, offset: 192)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !1474, file: !100, line: 92, baseType: !136, size: 64, offset: 256)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !1474, file: !100, line: 94, baseType: !165, size: 64, offset: 320)
!1483 = !DILocalVariable(name: "de", scope: !1468, file: !1, line: 538, type: !136)
!1484 = !DILocalVariable(name: "pattern", scope: !1468, file: !1, line: 539, type: !438)
!1485 = !DILocalVariable(name: "plen", scope: !1468, file: !1, line: 540, type: !8)
!1486 = !DILocalVariable(name: "allkeys", scope: !1468, file: !1, line: 540, type: !8)
!1487 = !DILocalVariable(name: "numkeys", scope: !1468, file: !1, line: 541, type: !11)
!1488 = !DILocalVariable(name: "replylen", scope: !1468, file: !1, line: 542, type: !4)
!1489 = !DILocalVariable(name: "key", scope: !1490, file: !1, line: 547, type: !438)
!1490 = distinct !DILexicalBlock(scope: !1468, file: !1, line: 546, column: 40)
!1491 = !DILocalVariable(name: "keyobj", scope: !1490, file: !1, line: 548, type: !65)
!1492 = !DILocation(line: 536, column: 26, scope: !1468)
!1493 = !DILocation(line: 539, column: 22, scope: !1468)
!1494 = !DILocation(line: 539, column: 19, scope: !1468)
!1495 = !DILocation(line: 539, column: 31, scope: !1468)
!1496 = !DILocation(line: 539, column: 9, scope: !1468)
!1497 = !DILocation(line: 87, column: 39, scope: !819, inlinedAt: !1498)
!1498 = distinct !DILocation(line: 540, column: 16, scope: !1468)
!1499 = !DILocation(line: 88, column: 27, scope: !819, inlinedAt: !1498)
!1500 = !DILocation(line: 88, column: 19, scope: !819, inlinedAt: !1498)
!1501 = !DILocation(line: 89, column: 5, scope: !819, inlinedAt: !1498)
!1502 = !DILocation(line: 91, column: 20, scope: !833, inlinedAt: !1498)
!1503 = !DILocation(line: 91, column: 13, scope: !833, inlinedAt: !1498)
!1504 = !DILocation(line: 93, column: 20, scope: !833, inlinedAt: !1498)
!1505 = !DILocation(line: 93, column: 34, scope: !833, inlinedAt: !1498)
!1506 = !DILocation(line: 93, column: 13, scope: !833, inlinedAt: !1498)
!1507 = !DILocation(line: 95, column: 20, scope: !833, inlinedAt: !1498)
!1508 = !DILocation(line: 95, column: 35, scope: !833, inlinedAt: !1498)
!1509 = !DILocation(line: 95, column: 13, scope: !833, inlinedAt: !1498)
!1510 = !DILocation(line: 97, column: 20, scope: !833, inlinedAt: !1498)
!1511 = !DILocation(line: 97, column: 35, scope: !833, inlinedAt: !1498)
!1512 = !DILocation(line: 97, column: 13, scope: !833, inlinedAt: !1498)
!1513 = !DILocation(line: 99, column: 20, scope: !833, inlinedAt: !1498)
!1514 = !DILocation(line: 99, column: 35, scope: !833, inlinedAt: !1498)
!1515 = !DILocation(line: 99, column: 13, scope: !833, inlinedAt: !1498)
!1516 = !DILocation(line: 0, scope: !833, inlinedAt: !1498)
!1517 = !DILocation(line: 102, column: 1, scope: !819, inlinedAt: !1498)
!1518 = !DILocation(line: 540, column: 16, scope: !1468)
!1519 = !DILocation(line: 540, column: 9, scope: !1468)
!1520 = !DILocation(line: 541, column: 19, scope: !1468)
!1521 = !DILocation(line: 542, column: 22, scope: !1468)
!1522 = !DILocation(line: 542, column: 11, scope: !1468)
!1523 = !DILocation(line: 544, column: 33, scope: !1468)
!1524 = !DILocation(line: 544, column: 37, scope: !1468)
!1525 = !DILocation(line: 544, column: 10, scope: !1468)
!1526 = !DILocation(line: 537, column: 19, scope: !1468)
!1527 = !DILocation(line: 545, column: 16, scope: !1468)
!1528 = !DILocation(line: 545, column: 27, scope: !1468)
!1529 = !DILocation(line: 545, column: 34, scope: !1468)
!1530 = !DILocation(line: 545, column: 37, scope: !1468)
!1531 = !DILocation(line: 545, column: 48, scope: !1468)
!1532 = !DILocation(line: 0, scope: !1468)
!1533 = !DILocation(line: 546, column: 17, scope: !1468)
!1534 = !DILocation(line: 538, column: 16, scope: !1468)
!1535 = !DILocation(line: 546, column: 31, scope: !1468)
!1536 = !DILocation(line: 546, column: 5, scope: !1468)
!1537 = !DILocation(line: 547, column: 19, scope: !1490)
!1538 = !DILocation(line: 547, column: 13, scope: !1490)
!1539 = !DILocation(line: 88, column: 27, scope: !819, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 551, column: 45, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !1, line: 550, column: 72)
!1542 = distinct !DILexicalBlock(scope: !1490, file: !1, line: 550, column: 13)
!1543 = !DILocation(line: 550, column: 21, scope: !1542)
!1544 = !DILocation(line: 87, column: 39, scope: !819, inlinedAt: !1545)
!1545 = distinct !DILocation(line: 550, column: 56, scope: !1542)
!1546 = !DILocation(line: 88, column: 27, scope: !819, inlinedAt: !1545)
!1547 = !DILocation(line: 88, column: 19, scope: !819, inlinedAt: !1545)
!1548 = !DILocation(line: 89, column: 5, scope: !819, inlinedAt: !1545)
!1549 = !DILocation(line: 91, column: 20, scope: !833, inlinedAt: !1545)
!1550 = !DILocation(line: 91, column: 13, scope: !833, inlinedAt: !1545)
!1551 = !DILocation(line: 93, column: 20, scope: !833, inlinedAt: !1545)
!1552 = !DILocation(line: 93, column: 34, scope: !833, inlinedAt: !1545)
!1553 = !DILocation(line: 93, column: 13, scope: !833, inlinedAt: !1545)
!1554 = !DILocation(line: 95, column: 20, scope: !833, inlinedAt: !1545)
!1555 = !DILocation(line: 95, column: 35, scope: !833, inlinedAt: !1545)
!1556 = !DILocation(line: 95, column: 13, scope: !833, inlinedAt: !1545)
!1557 = !DILocation(line: 97, column: 20, scope: !833, inlinedAt: !1545)
!1558 = !DILocation(line: 97, column: 35, scope: !833, inlinedAt: !1545)
!1559 = !DILocation(line: 97, column: 13, scope: !833, inlinedAt: !1545)
!1560 = !DILocation(line: 99, column: 20, scope: !833, inlinedAt: !1545)
!1561 = !DILocation(line: 99, column: 35, scope: !833, inlinedAt: !1545)
!1562 = !DILocation(line: 99, column: 13, scope: !833, inlinedAt: !1545)
!1563 = !DILocation(line: 0, scope: !833, inlinedAt: !1545)
!1564 = !DILocation(line: 102, column: 1, scope: !819, inlinedAt: !1545)
!1565 = !DILocation(line: 550, column: 56, scope: !1542)
!1566 = !DILocation(line: 550, column: 24, scope: !1542)
!1567 = !DILocation(line: 550, column: 13, scope: !1490)
!1568 = !DILocation(line: 87, column: 39, scope: !819, inlinedAt: !1540)
!1569 = !DILocation(line: 88, column: 19, scope: !819, inlinedAt: !1540)
!1570 = !DILocation(line: 89, column: 5, scope: !819, inlinedAt: !1540)
!1571 = !DILocation(line: 91, column: 20, scope: !833, inlinedAt: !1540)
!1572 = !DILocation(line: 91, column: 13, scope: !833, inlinedAt: !1540)
!1573 = !DILocation(line: 93, column: 20, scope: !833, inlinedAt: !1540)
!1574 = !DILocation(line: 93, column: 34, scope: !833, inlinedAt: !1540)
!1575 = !DILocation(line: 93, column: 13, scope: !833, inlinedAt: !1540)
!1576 = !DILocation(line: 95, column: 20, scope: !833, inlinedAt: !1540)
!1577 = !DILocation(line: 95, column: 35, scope: !833, inlinedAt: !1540)
!1578 = !DILocation(line: 95, column: 13, scope: !833, inlinedAt: !1540)
!1579 = !DILocation(line: 97, column: 20, scope: !833, inlinedAt: !1540)
!1580 = !DILocation(line: 97, column: 35, scope: !833, inlinedAt: !1540)
!1581 = !DILocation(line: 97, column: 13, scope: !833, inlinedAt: !1540)
!1582 = !DILocation(line: 99, column: 20, scope: !833, inlinedAt: !1540)
!1583 = !DILocation(line: 99, column: 35, scope: !833, inlinedAt: !1540)
!1584 = !DILocation(line: 99, column: 13, scope: !833, inlinedAt: !1540)
!1585 = !DILocation(line: 0, scope: !833, inlinedAt: !1540)
!1586 = !DILocation(line: 102, column: 1, scope: !819, inlinedAt: !1540)
!1587 = !DILocation(line: 551, column: 22, scope: !1541)
!1588 = !DILocation(line: 548, column: 15, scope: !1490)
!1589 = !DILocation(line: 552, column: 34, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1541, file: !1, line: 552, column: 17)
!1591 = !DILocation(line: 552, column: 18, scope: !1590)
!1592 = !DILocation(line: 552, column: 17, scope: !1541)
!1593 = !DILocation(line: 553, column: 17, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1590, file: !1, line: 552, column: 46)
!1595 = !DILocation(line: 554, column: 24, scope: !1594)
!1596 = !DILocation(line: 555, column: 13, scope: !1594)
!1597 = !DILocation(line: 0, scope: !1594)
!1598 = !DILocation(line: 556, column: 13, scope: !1541)
!1599 = !DILocation(line: 557, column: 9, scope: !1541)
!1600 = distinct !{!1600, !1536, !1601}
!1601 = !DILocation(line: 558, column: 5, scope: !1468)
!1602 = !DILocation(line: 559, column: 5, scope: !1468)
!1603 = !DILocation(line: 560, column: 5, scope: !1468)
!1604 = !DILocation(line: 561, column: 1, scope: !1468)
!1605 = distinct !DISubprogram(name: "keyIsExpired", scope: !1, file: !1, line: 1130, type: !313, isLocal: false, isDefinition: true, scopeLine: 1130, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1606)
!1606 = !{!1607, !1608, !1609, !1610}
!1607 = !DILocalVariable(name: "db", arg: 1, scope: !1605, file: !1, line: 1130, type: !93)
!1608 = !DILocalVariable(name: "key", arg: 2, scope: !1605, file: !1, line: 1130, type: !65)
!1609 = !DILocalVariable(name: "when", scope: !1605, file: !1, line: 1131, type: !535)
!1610 = !DILocalVariable(name: "now", scope: !1605, file: !1, line: 1143, type: !535)
!1611 = !DILocation(line: 1130, column: 27, scope: !1605)
!1612 = !DILocation(line: 1130, column: 37, scope: !1605)
!1613 = !DILocalVariable(name: "db", arg: 1, scope: !1614, file: !1, line: 1092, type: !93)
!1614 = distinct !DISubprogram(name: "getExpire", scope: !1, file: !1, line: 1092, type: !1615, isLocal: false, isDefinition: true, scopeLine: 1092, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1617)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!165, !93, !65}
!1617 = !{!1613, !1618, !1619}
!1618 = !DILocalVariable(name: "key", arg: 2, scope: !1614, file: !1, line: 1092, type: !65)
!1619 = !DILocalVariable(name: "de", scope: !1614, file: !1, line: 1093, type: !136)
!1620 = !DILocation(line: 1092, column: 30, scope: !1614, inlinedAt: !1621)
!1621 = distinct !DILocation(line: 1131, column: 21, scope: !1605)
!1622 = !DILocation(line: 1092, column: 40, scope: !1614, inlinedAt: !1621)
!1623 = !DILocation(line: 1096, column: 9, scope: !1624, inlinedAt: !1621)
!1624 = distinct !DILexicalBlock(scope: !1614, file: !1, line: 1096, column: 9)
!1625 = !DILocation(line: 1096, column: 31, scope: !1624, inlinedAt: !1621)
!1626 = !DILocation(line: 1096, column: 36, scope: !1624, inlinedAt: !1621)
!1627 = !DILocation(line: 1097, column: 40, scope: !1624, inlinedAt: !1621)
!1628 = !DILocation(line: 1097, column: 14, scope: !1624, inlinedAt: !1621)
!1629 = !DILocation(line: 1093, column: 16, scope: !1614, inlinedAt: !1621)
!1630 = !DILocation(line: 1097, column: 46, scope: !1624, inlinedAt: !1621)
!1631 = !DILocation(line: 1096, column: 9, scope: !1614, inlinedAt: !1621)
!1632 = !DILocation(line: 1101, column: 5, scope: !1614, inlinedAt: !1621)
!1633 = !DILocation(line: 1103, column: 1, scope: !1614, inlinedAt: !1621)
!1634 = !DILocation(line: 1131, column: 14, scope: !1605)
!1635 = !DILocation(line: 1133, column: 9, scope: !1605)
!1636 = !DILocation(line: 1102, column: 12, scope: !1614, inlinedAt: !1621)
!1637 = !DILocation(line: 1133, column: 14, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1605, file: !1, line: 1133, column: 9)
!1639 = !DILocation(line: 1136, column: 16, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1605, file: !1, line: 1136, column: 9)
!1641 = !DILocation(line: 1136, column: 9, scope: !1640)
!1642 = !DILocation(line: 1143, column: 27, scope: !1605)
!1643 = !{!227, !209, i64 3008}
!1644 = !DILocation(line: 1143, column: 20, scope: !1605)
!1645 = !DILocation(line: 1143, column: 47, scope: !1605)
!1646 = !{!227, !213, i64 3040}
!1647 = !DILocation(line: 1143, column: 64, scope: !1605)
!1648 = !DILocation(line: 1143, column: 14, scope: !1605)
!1649 = !DILocation(line: 1145, column: 16, scope: !1605)
!1650 = !DILocation(line: 0, scope: !1605)
!1651 = !DILocation(line: 1146, column: 1, scope: !1605)
!1652 = distinct !DISubprogram(name: "scanCallback", scope: !1, file: !1, line: 565, type: !1653, isLocal: false, isDefinition: true, scopeLine: 565, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1657)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{null, !4, !1655}
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!1657 = !{!1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1668, !1671, !1674, !1675}
!1658 = !DILocalVariable(name: "privdata", arg: 1, scope: !1652, file: !1, line: 565, type: !4)
!1659 = !DILocalVariable(name: "de", arg: 2, scope: !1652, file: !1, line: 565, type: !1655)
!1660 = !DILocalVariable(name: "pd", scope: !1652, file: !1, line: 566, type: !5)
!1661 = !DILocalVariable(name: "keys", scope: !1652, file: !1, line: 567, type: !167)
!1662 = !DILocalVariable(name: "o", scope: !1652, file: !1, line: 568, type: !65)
!1663 = !DILocalVariable(name: "key", scope: !1652, file: !1, line: 569, type: !65)
!1664 = !DILocalVariable(name: "val", scope: !1652, file: !1, line: 569, type: !65)
!1665 = !DILocalVariable(name: "sdskey", scope: !1666, file: !1, line: 572, type: !438)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !1, line: 571, column: 20)
!1667 = distinct !DILexicalBlock(scope: !1652, file: !1, line: 571, column: 9)
!1668 = !DILocalVariable(name: "keysds", scope: !1669, file: !1, line: 575, type: !438)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !1, line: 574, column: 36)
!1670 = distinct !DILexicalBlock(scope: !1667, file: !1, line: 574, column: 16)
!1671 = !DILocalVariable(name: "sdskey", scope: !1672, file: !1, line: 578, type: !438)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !1, line: 577, column: 37)
!1673 = distinct !DILexicalBlock(scope: !1670, file: !1, line: 577, column: 16)
!1674 = !DILocalVariable(name: "sdsval", scope: !1672, file: !1, line: 579, type: !438)
!1675 = !DILocalVariable(name: "sdskey", scope: !1676, file: !1, line: 583, type: !438)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !1, line: 582, column: 37)
!1677 = distinct !DILexicalBlock(scope: !1673, file: !1, line: 582, column: 16)
!1678 = !DILocation(line: 565, column: 25, scope: !1652)
!1679 = !DILocation(line: 565, column: 52, scope: !1652)
!1680 = !DILocation(line: 566, column: 12, scope: !1652)
!1681 = !DILocation(line: 567, column: 18, scope: !1652)
!1682 = !DILocation(line: 567, column: 11, scope: !1652)
!1683 = !DILocation(line: 568, column: 15, scope: !1652)
!1684 = !DILocation(line: 568, column: 11, scope: !1652)
!1685 = !DILocation(line: 569, column: 17, scope: !1652)
!1686 = !DILocation(line: 571, column: 11, scope: !1667)
!1687 = !DILocation(line: 571, column: 9, scope: !1652)
!1688 = !DILocation(line: 572, column: 22, scope: !1666)
!1689 = !DILocation(line: 572, column: 13, scope: !1666)
!1690 = !DILocation(line: 87, column: 39, scope: !819, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 573, column: 42, scope: !1666)
!1692 = !DILocation(line: 88, column: 27, scope: !819, inlinedAt: !1691)
!1693 = !DILocation(line: 88, column: 19, scope: !819, inlinedAt: !1691)
!1694 = !DILocation(line: 89, column: 5, scope: !819, inlinedAt: !1691)
!1695 = !DILocation(line: 91, column: 20, scope: !833, inlinedAt: !1691)
!1696 = !DILocation(line: 91, column: 13, scope: !833, inlinedAt: !1691)
!1697 = !DILocation(line: 93, column: 20, scope: !833, inlinedAt: !1691)
!1698 = !DILocation(line: 93, column: 34, scope: !833, inlinedAt: !1691)
!1699 = !DILocation(line: 93, column: 13, scope: !833, inlinedAt: !1691)
!1700 = !DILocation(line: 95, column: 20, scope: !833, inlinedAt: !1691)
!1701 = !DILocation(line: 95, column: 35, scope: !833, inlinedAt: !1691)
!1702 = !DILocation(line: 95, column: 13, scope: !833, inlinedAt: !1691)
!1703 = !DILocation(line: 97, column: 20, scope: !833, inlinedAt: !1691)
!1704 = !DILocation(line: 97, column: 35, scope: !833, inlinedAt: !1691)
!1705 = !DILocation(line: 97, column: 13, scope: !833, inlinedAt: !1691)
!1706 = !DILocation(line: 99, column: 20, scope: !833, inlinedAt: !1691)
!1707 = !DILocation(line: 99, column: 35, scope: !833, inlinedAt: !1691)
!1708 = !DILocation(line: 99, column: 13, scope: !833, inlinedAt: !1691)
!1709 = !DILocation(line: 0, scope: !833, inlinedAt: !1691)
!1710 = !DILocation(line: 102, column: 1, scope: !819, inlinedAt: !1691)
!1711 = !DILocation(line: 573, column: 15, scope: !1666)
!1712 = !DILocation(line: 569, column: 11, scope: !1652)
!1713 = !DILocation(line: 574, column: 5, scope: !1666)
!1714 = !DILocation(line: 574, column: 19, scope: !1670)
!1715 = !DILocation(line: 574, column: 16, scope: !1667)
!1716 = !DILocation(line: 575, column: 22, scope: !1669)
!1717 = !DILocation(line: 575, column: 13, scope: !1669)
!1718 = !DILocation(line: 87, column: 39, scope: !819, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 576, column: 41, scope: !1669)
!1720 = !DILocation(line: 88, column: 27, scope: !819, inlinedAt: !1719)
!1721 = !DILocation(line: 88, column: 19, scope: !819, inlinedAt: !1719)
!1722 = !DILocation(line: 89, column: 5, scope: !819, inlinedAt: !1719)
!1723 = !DILocation(line: 91, column: 20, scope: !833, inlinedAt: !1719)
!1724 = !DILocation(line: 91, column: 13, scope: !833, inlinedAt: !1719)
!1725 = !DILocation(line: 93, column: 20, scope: !833, inlinedAt: !1719)
!1726 = !DILocation(line: 93, column: 34, scope: !833, inlinedAt: !1719)
!1727 = !DILocation(line: 93, column: 13, scope: !833, inlinedAt: !1719)
!1728 = !DILocation(line: 95, column: 20, scope: !833, inlinedAt: !1719)
!1729 = !DILocation(line: 95, column: 35, scope: !833, inlinedAt: !1719)
!1730 = !DILocation(line: 95, column: 13, scope: !833, inlinedAt: !1719)
!1731 = !DILocation(line: 97, column: 20, scope: !833, inlinedAt: !1719)
!1732 = !DILocation(line: 97, column: 35, scope: !833, inlinedAt: !1719)
!1733 = !DILocation(line: 97, column: 13, scope: !833, inlinedAt: !1719)
!1734 = !DILocation(line: 99, column: 20, scope: !833, inlinedAt: !1719)
!1735 = !DILocation(line: 99, column: 35, scope: !833, inlinedAt: !1719)
!1736 = !DILocation(line: 99, column: 13, scope: !833, inlinedAt: !1719)
!1737 = !DILocation(line: 0, scope: !833, inlinedAt: !1719)
!1738 = !DILocation(line: 102, column: 1, scope: !819, inlinedAt: !1719)
!1739 = !DILocation(line: 576, column: 15, scope: !1669)
!1740 = !DILocation(line: 577, column: 5, scope: !1669)
!1741 = !DILocation(line: 578, column: 22, scope: !1672)
!1742 = !DILocation(line: 578, column: 13, scope: !1672)
!1743 = !DILocation(line: 579, column: 22, scope: !1672)
!1744 = !DILocation(line: 579, column: 13, scope: !1672)
!1745 = !DILocation(line: 87, column: 39, scope: !819, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 580, column: 41, scope: !1672)
!1747 = !DILocation(line: 88, column: 27, scope: !819, inlinedAt: !1746)
!1748 = !DILocation(line: 88, column: 19, scope: !819, inlinedAt: !1746)
!1749 = !DILocation(line: 89, column: 5, scope: !819, inlinedAt: !1746)
!1750 = !DILocation(line: 91, column: 20, scope: !833, inlinedAt: !1746)
!1751 = !DILocation(line: 91, column: 13, scope: !833, inlinedAt: !1746)
!1752 = !DILocation(line: 93, column: 20, scope: !833, inlinedAt: !1746)
!1753 = !DILocation(line: 93, column: 34, scope: !833, inlinedAt: !1746)
!1754 = !DILocation(line: 93, column: 13, scope: !833, inlinedAt: !1746)
!1755 = !DILocation(line: 95, column: 20, scope: !833, inlinedAt: !1746)
!1756 = !DILocation(line: 95, column: 35, scope: !833, inlinedAt: !1746)
!1757 = !DILocation(line: 95, column: 13, scope: !833, inlinedAt: !1746)
!1758 = !DILocation(line: 97, column: 20, scope: !833, inlinedAt: !1746)
!1759 = !DILocation(line: 97, column: 35, scope: !833, inlinedAt: !1746)
!1760 = !DILocation(line: 97, column: 13, scope: !833, inlinedAt: !1746)
!1761 = !DILocation(line: 99, column: 20, scope: !833, inlinedAt: !1746)
!1762 = !DILocation(line: 99, column: 35, scope: !833, inlinedAt: !1746)
!1763 = !DILocation(line: 99, column: 13, scope: !833, inlinedAt: !1746)
!1764 = !DILocation(line: 0, scope: !833, inlinedAt: !1746)
!1765 = !DILocation(line: 102, column: 1, scope: !819, inlinedAt: !1746)
!1766 = !DILocation(line: 580, column: 15, scope: !1672)
!1767 = !DILocation(line: 87, column: 39, scope: !819, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 581, column: 41, scope: !1672)
!1769 = !DILocation(line: 88, column: 27, scope: !819, inlinedAt: !1768)
!1770 = !DILocation(line: 88, column: 19, scope: !819, inlinedAt: !1768)
!1771 = !DILocation(line: 89, column: 5, scope: !819, inlinedAt: !1768)
!1772 = !DILocation(line: 91, column: 20, scope: !833, inlinedAt: !1768)
!1773 = !DILocation(line: 91, column: 13, scope: !833, inlinedAt: !1768)
!1774 = !DILocation(line: 93, column: 20, scope: !833, inlinedAt: !1768)
!1775 = !DILocation(line: 93, column: 34, scope: !833, inlinedAt: !1768)
!1776 = !DILocation(line: 93, column: 13, scope: !833, inlinedAt: !1768)
!1777 = !DILocation(line: 95, column: 20, scope: !833, inlinedAt: !1768)
!1778 = !DILocation(line: 95, column: 35, scope: !833, inlinedAt: !1768)
!1779 = !DILocation(line: 95, column: 13, scope: !833, inlinedAt: !1768)
!1780 = !DILocation(line: 97, column: 20, scope: !833, inlinedAt: !1768)
!1781 = !DILocation(line: 97, column: 35, scope: !833, inlinedAt: !1768)
!1782 = !DILocation(line: 97, column: 13, scope: !833, inlinedAt: !1768)
!1783 = !DILocation(line: 99, column: 20, scope: !833, inlinedAt: !1768)
!1784 = !DILocation(line: 99, column: 35, scope: !833, inlinedAt: !1768)
!1785 = !DILocation(line: 99, column: 13, scope: !833, inlinedAt: !1768)
!1786 = !DILocation(line: 0, scope: !833, inlinedAt: !1768)
!1787 = !DILocation(line: 102, column: 1, scope: !819, inlinedAt: !1768)
!1788 = !DILocation(line: 581, column: 15, scope: !1672)
!1789 = !DILocation(line: 582, column: 5, scope: !1672)
!1790 = !DILocation(line: 583, column: 22, scope: !1676)
!1791 = !DILocation(line: 583, column: 13, scope: !1676)
!1792 = !DILocation(line: 87, column: 39, scope: !819, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 584, column: 41, scope: !1676)
!1794 = !DILocation(line: 88, column: 27, scope: !819, inlinedAt: !1793)
!1795 = !DILocation(line: 88, column: 19, scope: !819, inlinedAt: !1793)
!1796 = !DILocation(line: 89, column: 5, scope: !819, inlinedAt: !1793)
!1797 = !DILocation(line: 91, column: 20, scope: !833, inlinedAt: !1793)
!1798 = !DILocation(line: 91, column: 13, scope: !833, inlinedAt: !1793)
!1799 = !DILocation(line: 93, column: 20, scope: !833, inlinedAt: !1793)
!1800 = !DILocation(line: 93, column: 34, scope: !833, inlinedAt: !1793)
!1801 = !DILocation(line: 93, column: 13, scope: !833, inlinedAt: !1793)
!1802 = !DILocation(line: 95, column: 20, scope: !833, inlinedAt: !1793)
!1803 = !DILocation(line: 95, column: 35, scope: !833, inlinedAt: !1793)
!1804 = !DILocation(line: 95, column: 13, scope: !833, inlinedAt: !1793)
!1805 = !DILocation(line: 97, column: 20, scope: !833, inlinedAt: !1793)
!1806 = !DILocation(line: 97, column: 35, scope: !833, inlinedAt: !1793)
!1807 = !DILocation(line: 97, column: 13, scope: !833, inlinedAt: !1793)
!1808 = !DILocation(line: 99, column: 20, scope: !833, inlinedAt: !1793)
!1809 = !DILocation(line: 99, column: 35, scope: !833, inlinedAt: !1793)
!1810 = !DILocation(line: 99, column: 13, scope: !833, inlinedAt: !1793)
!1811 = !DILocation(line: 0, scope: !833, inlinedAt: !1793)
!1812 = !DILocation(line: 102, column: 1, scope: !819, inlinedAt: !1793)
!1813 = !DILocation(line: 584, column: 15, scope: !1676)
!1814 = !DILocation(line: 585, column: 58, scope: !1676)
!1815 = !DILocation(line: 585, column: 48, scope: !1676)
!1816 = !{!229, !229, i64 0}
!1817 = !DILocation(line: 585, column: 15, scope: !1676)
!1818 = !DILocation(line: 587, column: 9, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1677, file: !1, line: 586, column: 12)
!1820 = !DILocation(line: 590, column: 27, scope: !1652)
!1821 = !DILocation(line: 590, column: 5, scope: !1652)
!1822 = !DILocation(line: 591, column: 9, scope: !1652)
!1823 = !DILocation(line: 0, scope: !1676)
!1824 = !DILocation(line: 591, column: 9, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1652, file: !1, line: 591, column: 9)
!1826 = !DILocation(line: 591, column: 36, scope: !1825)
!1827 = !DILocation(line: 591, column: 14, scope: !1825)
!1828 = !DILocation(line: 592, column: 1, scope: !1652)
!1829 = distinct !DISubprogram(name: "parseScanCursorOrReply", scope: !1, file: !1, line: 598, type: !1830, isLocal: false, isDefinition: true, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1833)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!8, !429, !65, !1832}
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!1833 = !{!1834, !1835, !1836, !1837}
!1834 = !DILocalVariable(name: "c", arg: 1, scope: !1829, file: !1, line: 598, type: !429)
!1835 = !DILocalVariable(name: "o", arg: 2, scope: !1829, file: !1, line: 598, type: !65)
!1836 = !DILocalVariable(name: "cursor", arg: 3, scope: !1829, file: !1, line: 598, type: !1832)
!1837 = !DILocalVariable(name: "eptr", scope: !1829, file: !1, line: 599, type: !9)
!1838 = !DILocation(line: 598, column: 36, scope: !1829)
!1839 = !DILocation(line: 598, column: 45, scope: !1829)
!1840 = !DILocation(line: 598, column: 63, scope: !1829)
!1841 = !DILocation(line: 599, column: 5, scope: !1829)
!1842 = !DILocation(line: 603, column: 5, scope: !1829)
!1843 = !DILocation(line: 603, column: 11, scope: !1829)
!1844 = !DILocation(line: 604, column: 26, scope: !1829)
!1845 = !DILocation(line: 599, column: 11, scope: !1829)
!1846 = !DILocation(line: 604, column: 15, scope: !1829)
!1847 = !DILocation(line: 604, column: 13, scope: !1829)
!1848 = !DILocation(line: 605, column: 9, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1829, file: !1, line: 605, column: 9)
!1850 = !DILocation(line: 605, column: 37, scope: !1849)
!1851 = !DILocation(line: 605, column: 40, scope: !1849)
!1852 = !DILocation(line: 605, column: 48, scope: !1849)
!1853 = !DILocation(line: 605, column: 56, scope: !1849)
!1854 = !DILocation(line: 605, column: 59, scope: !1849)
!1855 = !DILocation(line: 605, column: 65, scope: !1849)
!1856 = !DILocation(line: 605, column: 9, scope: !1829)
!1857 = !DILocation(line: 607, column: 9, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1849, file: !1, line: 606, column: 5)
!1859 = !DILocation(line: 608, column: 9, scope: !1858)
!1860 = !DILocation(line: 0, scope: !1829)
!1861 = !DILocation(line: 611, column: 1, scope: !1829)
!1862 = distinct !DISubprogram(name: "scanGenericCommand", scope: !1, file: !1, line: 624, type: !1863, isLocal: false, isDefinition: true, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1865)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{null, !429, !65, !11}
!1865 = !{!1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1911, !1915, !1916, !1919, !1920, !1924, !1925, !1926, !1927, !1929, !1930, !1938, !1939}
!1866 = !DILocalVariable(name: "c", arg: 1, scope: !1862, file: !1, line: 624, type: !429)
!1867 = !DILocalVariable(name: "o", arg: 2, scope: !1862, file: !1, line: 624, type: !65)
!1868 = !DILocalVariable(name: "cursor", arg: 3, scope: !1862, file: !1, line: 624, type: !11)
!1869 = !DILocalVariable(name: "i", scope: !1862, file: !1, line: 625, type: !8)
!1870 = !DILocalVariable(name: "j", scope: !1862, file: !1, line: 625, type: !8)
!1871 = !DILocalVariable(name: "keys", scope: !1862, file: !1, line: 626, type: !167)
!1872 = !DILocalVariable(name: "node", scope: !1862, file: !1, line: 627, type: !173)
!1873 = !DILocalVariable(name: "nextnode", scope: !1862, file: !1, line: 627, type: !173)
!1874 = !DILocalVariable(name: "count", scope: !1862, file: !1, line: 628, type: !12)
!1875 = !DILocalVariable(name: "pat", scope: !1862, file: !1, line: 629, type: !438)
!1876 = !DILocalVariable(name: "patlen", scope: !1862, file: !1, line: 630, type: !8)
!1877 = !DILocalVariable(name: "use_pattern", scope: !1862, file: !1, line: 630, type: !8)
!1878 = !DILocalVariable(name: "ht", scope: !1862, file: !1, line: 631, type: !98)
!1879 = !DILocalVariable(name: "zs", scope: !1880, file: !1, line: 690, type: !1885)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !1, line: 689, column: 77)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !1, line: 689, column: 16)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !1, line: 686, column: 16)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !1, line: 684, column: 16)
!1884 = distinct !DILexicalBlock(scope: !1862, file: !1, line: 682, column: 9)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "zset", file: !67, line: 829, baseType: !1887)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zset", file: !67, line: 826, size: 128, elements: !1888)
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !1887, file: !67, line: 827, baseType: !98, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "zsl", scope: !1887, file: !67, line: 828, baseType: !1891, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "zskiplist", file: !67, line: 824, baseType: !1893)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplist", file: !67, line: 820, size: 256, elements: !1894)
!1894 = !{!1895, !1908, !1909, !1910}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1893, file: !67, line: 821, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistNode", file: !67, line: 810, size: 192, elements: !1898)
!1898 = !{!1899, !1900, !1901, !1902}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "ele", scope: !1897, file: !67, line: 811, baseType: !438, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "score", scope: !1897, file: !67, line: 812, baseType: !7, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "backward", scope: !1897, file: !67, line: 813, baseType: !1896, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1897, file: !67, line: 817, baseType: !1903, offset: 192)
!1903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1904, elements: !27)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistLevel", file: !67, line: 814, size: 128, elements: !1905)
!1905 = !{!1906, !1907}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1904, file: !67, line: 815, baseType: !1896, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "span", scope: !1904, file: !67, line: 816, baseType: !11, size: 64, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1893, file: !67, line: 821, baseType: !1896, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1893, file: !67, line: 822, baseType: !11, size: 64, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1893, file: !67, line: 823, baseType: !8, size: 32, offset: 192)
!1911 = !DILocalVariable(name: "privdata", scope: !1912, file: !1, line: 696, type: !1914)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !1, line: 695, column: 13)
!1913 = distinct !DILexicalBlock(scope: !1862, file: !1, line: 695, column: 9)
!1914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !155)
!1915 = !DILocalVariable(name: "maxiterations", scope: !1912, file: !1, line: 701, type: !12)
!1916 = !DILocalVariable(name: "pos", scope: !1917, file: !1, line: 714, type: !8)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !1, line: 713, column: 36)
!1918 = distinct !DILexicalBlock(scope: !1913, file: !1, line: 713, column: 16)
!1919 = !DILocalVariable(name: "ll", scope: !1917, file: !1, line: 715, type: !147)
!1920 = !DILocalVariable(name: "p", scope: !1921, file: !1, line: 721, type: !1923)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !1, line: 720, column: 60)
!1922 = distinct !DILexicalBlock(scope: !1918, file: !1, line: 720, column: 16)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!1924 = !DILocalVariable(name: "vstr", scope: !1921, file: !1, line: 722, type: !1923)
!1925 = !DILocalVariable(name: "vlen", scope: !1921, file: !1, line: 723, type: !45)
!1926 = !DILocalVariable(name: "vll", scope: !1921, file: !1, line: 724, type: !165)
!1927 = !DILocalVariable(name: "kobj", scope: !1928, file: !1, line: 741, type: !65)
!1928 = distinct !DILexicalBlock(scope: !1862, file: !1, line: 740, column: 18)
!1929 = !DILocalVariable(name: "filter", scope: !1928, file: !1, line: 743, type: !8)
!1930 = !DILocalVariable(name: "buf", scope: !1931, file: !1, line: 751, type: !1935)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !1, line: 750, column: 20)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !1, line: 747, column: 17)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !1, line: 746, column: 37)
!1934 = distinct !DILexicalBlock(scope: !1928, file: !1, line: 746, column: 13)
!1935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 168, elements: !1936)
!1936 = !{!1937}
!1937 = !DISubrange(count: 21)
!1938 = !DILocalVariable(name: "len", scope: !1931, file: !1, line: 752, type: !8)
!1939 = !DILocalVariable(name: "kobj", scope: !1940, file: !1, line: 790, type: !65)
!1940 = distinct !DILexicalBlock(scope: !1862, file: !1, line: 789, column: 46)
!1941 = !DILocation(line: 624, column: 33, scope: !1862)
!1942 = !DILocation(line: 624, column: 42, scope: !1862)
!1943 = !DILocation(line: 624, column: 59, scope: !1862)
!1944 = !DILocation(line: 626, column: 18, scope: !1862)
!1945 = !DILocation(line: 626, column: 11, scope: !1862)
!1946 = !DILocation(line: 628, column: 5, scope: !1862)
!1947 = !DILocation(line: 628, column: 10, scope: !1862)
!1948 = !DILocation(line: 629, column: 9, scope: !1862)
!1949 = !DILocation(line: 630, column: 9, scope: !1862)
!1950 = !DILocation(line: 630, column: 21, scope: !1862)
!1951 = !DILocation(line: 635, column: 5, scope: !1862)
!1952 = !DILocation(line: 639, column: 9, scope: !1862)
!1953 = !DILocation(line: 625, column: 9, scope: !1862)
!1954 = !DILocation(line: 642, column: 19, scope: !1862)
!1955 = !DILocation(line: 642, column: 14, scope: !1862)
!1956 = !DILocation(line: 642, column: 5, scope: !1862)
!1957 = !DILocation(line: 643, column: 21, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1862, file: !1, line: 642, column: 25)
!1959 = !DILocation(line: 625, column: 12, scope: !1862)
!1960 = !DILocation(line: 644, column: 28, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1958, file: !1, line: 644, column: 13)
!1962 = !DILocation(line: 644, column: 25, scope: !1961)
!1963 = !DILocation(line: 644, column: 37, scope: !1961)
!1964 = !DILocation(line: 644, column: 14, scope: !1961)
!1965 = !DILocation(line: 644, column: 56, scope: !1961)
!1966 = !DILocation(line: 644, column: 51, scope: !1961)
!1967 = !DILocation(line: 645, column: 54, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !1, line: 645, column: 17)
!1969 = distinct !DILexicalBlock(scope: !1961, file: !1, line: 644, column: 62)
!1970 = !DILocation(line: 645, column: 45, scope: !1968)
!1971 = !DILocation(line: 645, column: 17, scope: !1968)
!1972 = !DILocation(line: 646, column: 17, scope: !1968)
!1973 = !DILocation(line: 645, column: 17, scope: !1969)
!1974 = !DILocation(line: 651, column: 17, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1969, file: !1, line: 651, column: 17)
!1976 = !DILocation(line: 651, column: 23, scope: !1975)
!1977 = !DILocation(line: 651, column: 17, scope: !1969)
!1978 = !DILocation(line: 652, column: 35, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1975, file: !1, line: 651, column: 28)
!1980 = !DILocation(line: 652, column: 17, scope: !1979)
!1981 = !DILocation(line: 653, column: 17, scope: !1979)
!1982 = !DILocation(line: 657, column: 21, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1961, file: !1, line: 657, column: 20)
!1984 = !DILocation(line: 657, column: 58, scope: !1983)
!1985 = !DILocation(line: 658, column: 28, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1983, file: !1, line: 657, column: 69)
!1987 = !DILocation(line: 658, column: 19, scope: !1986)
!1988 = !DILocation(line: 658, column: 33, scope: !1986)
!1989 = !DILocation(line: 87, column: 39, scope: !819, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 659, column: 22, scope: !1986)
!1991 = !DILocation(line: 88, column: 27, scope: !819, inlinedAt: !1990)
!1992 = !DILocation(line: 88, column: 19, scope: !819, inlinedAt: !1990)
!1993 = !DILocation(line: 89, column: 5, scope: !819, inlinedAt: !1990)
!1994 = !DILocation(line: 91, column: 20, scope: !833, inlinedAt: !1990)
!1995 = !DILocation(line: 91, column: 13, scope: !833, inlinedAt: !1990)
!1996 = !DILocation(line: 93, column: 20, scope: !833, inlinedAt: !1990)
!1997 = !DILocation(line: 93, column: 34, scope: !833, inlinedAt: !1990)
!1998 = !DILocation(line: 93, column: 13, scope: !833, inlinedAt: !1990)
!1999 = !DILocation(line: 95, column: 20, scope: !833, inlinedAt: !1990)
!2000 = !DILocation(line: 95, column: 35, scope: !833, inlinedAt: !1990)
!2001 = !DILocation(line: 95, column: 13, scope: !833, inlinedAt: !1990)
!2002 = !DILocation(line: 97, column: 20, scope: !833, inlinedAt: !1990)
!2003 = !DILocation(line: 97, column: 35, scope: !833, inlinedAt: !1990)
!2004 = !DILocation(line: 97, column: 13, scope: !833, inlinedAt: !1990)
!2005 = !DILocation(line: 99, column: 20, scope: !833, inlinedAt: !1990)
!2006 = !DILocation(line: 99, column: 35, scope: !833, inlinedAt: !1990)
!2007 = !DILocation(line: 99, column: 13, scope: !833, inlinedAt: !1990)
!2008 = !DILocation(line: 0, scope: !833, inlinedAt: !1990)
!2009 = !DILocation(line: 102, column: 1, scope: !819, inlinedAt: !1990)
!2010 = !DILocation(line: 659, column: 22, scope: !1986)
!2011 = !DILocation(line: 663, column: 29, scope: !1986)
!2012 = !DILocation(line: 663, column: 36, scope: !1986)
!2013 = !DILocation(line: 663, column: 53, scope: !1986)
!2014 = !DILocation(line: 663, column: 27, scope: !1986)
!2015 = !DILocation(line: 667, column: 31, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1983, file: !1, line: 666, column: 16)
!2017 = !DILocation(line: 667, column: 13, scope: !2016)
!2018 = !DILocation(line: 668, column: 13, scope: !2016)
!2019 = !DILocation(line: 0, scope: !1986)
!2020 = distinct !{!2020, !1956, !2021}
!2021 = !DILocation(line: 670, column: 5, scope: !1862)
!2022 = !DILocation(line: 631, column: 11, scope: !1862)
!2023 = !DILocation(line: 682, column: 9, scope: !1862)
!2024 = !DILocation(line: 683, column: 17, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1884, file: !1, line: 682, column: 20)
!2026 = !DILocation(line: 683, column: 21, scope: !2025)
!2027 = !DILocation(line: 684, column: 5, scope: !2025)
!2028 = !DILocation(line: 684, column: 19, scope: !1883)
!2029 = !DILocation(line: 684, column: 35, scope: !1883)
!2030 = !DILocation(line: 685, column: 17, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1883, file: !1, line: 684, column: 70)
!2032 = !DILocation(line: 686, column: 5, scope: !2031)
!2033 = !DILocation(line: 687, column: 17, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1882, file: !1, line: 686, column: 71)
!2035 = !DILocation(line: 688, column: 15, scope: !2034)
!2036 = !DILocation(line: 689, column: 5, scope: !2034)
!2037 = !DILocation(line: 690, column: 23, scope: !1880)
!2038 = !DILocation(line: 690, column: 15, scope: !1880)
!2039 = !DILocation(line: 691, column: 18, scope: !1880)
!2040 = !{!2041, !209, i64 0}
!2041 = !{!"zset", !209, i64 0, !209, i64 8}
!2042 = !DILocation(line: 692, column: 15, scope: !1880)
!2043 = !DILocation(line: 693, column: 5, scope: !1880)
!2044 = !DILocation(line: 0, scope: !1862)
!2045 = !DILocation(line: 695, column: 9, scope: !1913)
!2046 = !DILocation(line: 695, column: 9, scope: !1862)
!2047 = !DILocation(line: 713, column: 19, scope: !1918)
!2048 = !DILocation(line: 696, column: 9, scope: !1912)
!2049 = !DILocation(line: 696, column: 15, scope: !1912)
!2050 = !DILocation(line: 701, column: 35, scope: !1912)
!2051 = !DILocation(line: 701, column: 14, scope: !1912)
!2052 = !DILocation(line: 706, column: 21, scope: !1912)
!2053 = !DILocation(line: 707, column: 9, scope: !1912)
!2054 = !DILocation(line: 707, column: 21, scope: !1912)
!2055 = !DILocation(line: 708, column: 9, scope: !1912)
!2056 = !DILocation(line: 0, scope: !1912)
!2057 = !DILocation(line: 709, column: 22, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1912, file: !1, line: 708, column: 12)
!2059 = !DILocation(line: 710, column: 18, scope: !1912)
!2060 = !DILocation(line: 711, column: 28, scope: !1912)
!2061 = !DILocation(line: 710, column: 25, scope: !1912)
!2062 = !DILocation(line: 712, column: 15, scope: !1912)
!2063 = !{!2064, !228, i64 40}
!2064 = !{!"list", !209, i64 0, !209, i64 8, !209, i64 16, !209, i64 24, !209, i64 32, !228, i64 40}
!2065 = !DILocation(line: 712, column: 49, scope: !1912)
!2066 = !DILocation(line: 712, column: 32, scope: !1912)
!2067 = !DILocation(line: 710, column: 9, scope: !2058)
!2068 = distinct !{!2068, !2055, !2069}
!2069 = !DILocation(line: 712, column: 54, scope: !1912)
!2070 = !DILocation(line: 713, column: 5, scope: !1913)
!2071 = !DILocation(line: 713, column: 5, scope: !1912)
!2072 = !DILocation(line: 713, column: 16, scope: !1913)
!2073 = !DILocation(line: 714, column: 13, scope: !1917)
!2074 = !DILocation(line: 715, column: 9, scope: !1917)
!2075 = !DILocation(line: 717, column: 28, scope: !1917)
!2076 = !DILocation(line: 715, column: 17, scope: !1917)
!2077 = !DILocation(line: 717, column: 15, scope: !1917)
!2078 = !DILocation(line: 717, column: 9, scope: !1917)
!2079 = !DILocation(line: 717, column: 35, scope: !1917)
!2080 = !DILocation(line: 718, column: 65, scope: !1917)
!2081 = !DILocation(line: 718, column: 34, scope: !1917)
!2082 = !DILocation(line: 718, column: 13, scope: !1917)
!2083 = distinct !{!2083, !2078, !2084}
!2084 = !DILocation(line: 718, column: 68, scope: !1917)
!2085 = !DILocation(line: 720, column: 5, scope: !1918)
!2086 = !DILocation(line: 720, column: 5, scope: !1917)
!2087 = !DILocation(line: 721, column: 44, scope: !1921)
!2088 = !DILocation(line: 721, column: 28, scope: !1921)
!2089 = !DILocation(line: 721, column: 24, scope: !1921)
!2090 = !DILocation(line: 722, column: 9, scope: !1921)
!2091 = !DILocation(line: 723, column: 9, scope: !1921)
!2092 = !DILocation(line: 724, column: 9, scope: !1921)
!2093 = !DILocation(line: 726, column: 9, scope: !1921)
!2094 = !DILocation(line: 722, column: 24, scope: !1921)
!2095 = !DILocation(line: 723, column: 22, scope: !1921)
!2096 = !DILocation(line: 724, column: 19, scope: !1921)
!2097 = !DILocation(line: 727, column: 13, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !1921, file: !1, line: 726, column: 18)
!2099 = !DILocation(line: 729, column: 18, scope: !2098)
!2100 = !DILocation(line: 729, column: 23, scope: !2098)
!2101 = !DILocation(line: 729, column: 17, scope: !2098)
!2102 = !DILocation(line: 729, column: 65, scope: !2098)
!2103 = !DILocation(line: 729, column: 34, scope: !2098)
!2104 = !DILocation(line: 730, column: 65, scope: !2098)
!2105 = !DILocation(line: 730, column: 34, scope: !2098)
!2106 = !DILocation(line: 728, column: 13, scope: !2098)
!2107 = !DILocation(line: 731, column: 32, scope: !2098)
!2108 = !DILocation(line: 731, column: 17, scope: !2098)
!2109 = distinct !{!2109, !2093, !2110}
!2110 = !DILocation(line: 732, column: 9, scope: !1921)
!2111 = !DILocation(line: 734, column: 5, scope: !1922)
!2112 = !DILocation(line: 735, column: 9, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !1922, file: !1, line: 734, column: 12)
!2114 = !DILocation(line: 0, scope: !1921)
!2115 = !DILocation(line: 739, column: 12, scope: !1862)
!2116 = !{!2064, !209, i64 0}
!2117 = !DILocation(line: 627, column: 15, scope: !1862)
!2118 = !DILocation(line: 740, column: 5, scope: !1862)
!2119 = !DILocation(line: 741, column: 22, scope: !1928)
!2120 = !{!2121, !209, i64 16}
!2121 = !{!"listNode", !209, i64 0, !209, i64 8, !209, i64 16}
!2122 = !DILocation(line: 741, column: 15, scope: !1928)
!2123 = !DILocation(line: 742, column: 20, scope: !1928)
!2124 = !{!2121, !209, i64 8}
!2125 = !DILocation(line: 627, column: 22, scope: !1862)
!2126 = !DILocation(line: 743, column: 13, scope: !1928)
!2127 = !DILocation(line: 746, column: 21, scope: !1934)
!2128 = !DILocation(line: 747, column: 17, scope: !1932)
!2129 = !DILocation(line: 748, column: 56, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !1, line: 748, column: 21)
!2131 = distinct !DILexicalBlock(scope: !1932, file: !1, line: 747, column: 41)
!2132 = !DILocation(line: 87, column: 39, scope: !819, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 748, column: 61, scope: !2130)
!2134 = !DILocation(line: 88, column: 27, scope: !819, inlinedAt: !2133)
!2135 = !DILocation(line: 88, column: 19, scope: !819, inlinedAt: !2133)
!2136 = !DILocation(line: 89, column: 5, scope: !819, inlinedAt: !2133)
!2137 = !DILocation(line: 91, column: 20, scope: !833, inlinedAt: !2133)
!2138 = !DILocation(line: 91, column: 13, scope: !833, inlinedAt: !2133)
!2139 = !DILocation(line: 93, column: 20, scope: !833, inlinedAt: !2133)
!2140 = !DILocation(line: 93, column: 34, scope: !833, inlinedAt: !2133)
!2141 = !DILocation(line: 93, column: 13, scope: !833, inlinedAt: !2133)
!2142 = !DILocation(line: 95, column: 20, scope: !833, inlinedAt: !2133)
!2143 = !DILocation(line: 95, column: 35, scope: !833, inlinedAt: !2133)
!2144 = !DILocation(line: 95, column: 13, scope: !833, inlinedAt: !2133)
!2145 = !DILocation(line: 97, column: 20, scope: !833, inlinedAt: !2133)
!2146 = !DILocation(line: 97, column: 35, scope: !833, inlinedAt: !2133)
!2147 = !DILocation(line: 97, column: 13, scope: !833, inlinedAt: !2133)
!2148 = !DILocation(line: 99, column: 20, scope: !833, inlinedAt: !2133)
!2149 = !DILocation(line: 99, column: 35, scope: !833, inlinedAt: !2133)
!2150 = !DILocation(line: 99, column: 13, scope: !833, inlinedAt: !2133)
!2151 = !DILocation(line: 0, scope: !833, inlinedAt: !2133)
!2152 = !DILocation(line: 102, column: 1, scope: !819, inlinedAt: !2133)
!2153 = !DILocation(line: 748, column: 61, scope: !2130)
!2154 = !DILocation(line: 748, column: 22, scope: !2130)
!2155 = !DILocation(line: 748, column: 21, scope: !2131)
!2156 = !DILocation(line: 751, column: 17, scope: !1931)
!2157 = !DILocation(line: 751, column: 22, scope: !1931)
!2158 = !DILocation(line: 754, column: 17, scope: !1931)
!2159 = !DILocation(line: 755, column: 61, scope: !1931)
!2160 = !DILocation(line: 755, column: 23, scope: !1931)
!2161 = !DILocation(line: 752, column: 21, scope: !1931)
!2162 = !DILocation(line: 756, column: 22, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !1931, file: !1, line: 756, column: 21)
!2164 = !DILocation(line: 757, column: 13, scope: !1932)
!2165 = !DILocation(line: 761, column: 14, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !1928, file: !1, line: 761, column: 13)
!2167 = !DILocation(line: 761, column: 21, scope: !2166)
!2168 = !DILocation(line: 761, column: 55, scope: !2166)
!2169 = !DILocation(line: 761, column: 37, scope: !2166)
!2170 = !DILocation(line: 764, column: 13, scope: !1928)
!2171 = !DILocation(line: 765, column: 13, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !1, line: 764, column: 21)
!2173 = distinct !DILexicalBlock(scope: !1928, file: !1, line: 764, column: 13)
!2174 = !DILocation(line: 766, column: 13, scope: !2172)
!2175 = !DILocation(line: 767, column: 9, scope: !2172)
!2176 = !DILocation(line: 772, column: 15, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !1928, file: !1, line: 772, column: 13)
!2178 = !DILocation(line: 772, column: 22, scope: !2177)
!2179 = !DILocation(line: 772, column: 39, scope: !2177)
!2180 = !DILocation(line: 774, column: 24, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2177, file: !1, line: 772, column: 64)
!2182 = !DILocation(line: 775, column: 17, scope: !2181)
!2183 = !DILocation(line: 776, column: 24, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !1, line: 775, column: 25)
!2185 = distinct !DILexicalBlock(scope: !2181, file: !1, line: 775, column: 17)
!2186 = !DILocation(line: 777, column: 17, scope: !2184)
!2187 = !DILocation(line: 778, column: 17, scope: !2184)
!2188 = !DILocation(line: 779, column: 13, scope: !2184)
!2189 = !DILocation(line: 0, scope: !1928)
!2190 = distinct !{!2190, !2118, !2191}
!2191 = !DILocation(line: 782, column: 5, scope: !1862)
!2192 = !DILocation(line: 785, column: 5, scope: !1862)
!2193 = !DILocation(line: 786, column: 5, scope: !1862)
!2194 = !DILocation(line: 788, column: 29, scope: !1862)
!2195 = !DILocation(line: 788, column: 5, scope: !1862)
!2196 = !DILocation(line: 789, column: 20, scope: !1862)
!2197 = !DILocation(line: 789, column: 37, scope: !1862)
!2198 = !DILocation(line: 789, column: 5, scope: !1862)
!2199 = !DILocation(line: 790, column: 22, scope: !1940)
!2200 = !DILocation(line: 790, column: 15, scope: !1940)
!2201 = !DILocation(line: 791, column: 9, scope: !1940)
!2202 = !DILocation(line: 792, column: 9, scope: !1940)
!2203 = !DILocation(line: 793, column: 9, scope: !1940)
!2204 = distinct !{!2204, !2198, !2205}
!2205 = !DILocation(line: 794, column: 5, scope: !1862)
!2206 = !DILocation(line: 797, column: 5, scope: !1862)
!2207 = !{!2064, !209, i64 24}
!2208 = !DILocation(line: 798, column: 5, scope: !1862)
!2209 = !DILocation(line: 799, column: 1, scope: !1862)
!2210 = distinct !DISubprogram(name: "scanCommand", scope: !1, file: !1, line: 802, type: !457, isLocal: false, isDefinition: true, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2211)
!2211 = !{!2212, !2213}
!2212 = !DILocalVariable(name: "c", arg: 1, scope: !2210, file: !1, line: 802, type: !429)
!2213 = !DILocalVariable(name: "cursor", scope: !2210, file: !1, line: 803, type: !11)
!2214 = !DILocation(line: 802, column: 26, scope: !2210)
!2215 = !DILocation(line: 804, column: 37, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2210, file: !1, line: 804, column: 9)
!2217 = !DILocation(line: 804, column: 34, scope: !2216)
!2218 = !DILocation(line: 598, column: 36, scope: !1829, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 804, column: 9, scope: !2216)
!2220 = !DILocation(line: 598, column: 45, scope: !1829, inlinedAt: !2219)
!2221 = !DILocation(line: 599, column: 5, scope: !1829, inlinedAt: !2219)
!2222 = !DILocation(line: 603, column: 5, scope: !1829, inlinedAt: !2219)
!2223 = !DILocation(line: 603, column: 11, scope: !1829, inlinedAt: !2219)
!2224 = !DILocation(line: 604, column: 26, scope: !1829, inlinedAt: !2219)
!2225 = !DILocation(line: 599, column: 11, scope: !1829, inlinedAt: !2219)
!2226 = !DILocation(line: 604, column: 15, scope: !1829, inlinedAt: !2219)
!2227 = !DILocation(line: 605, column: 9, scope: !1849, inlinedAt: !2219)
!2228 = !DILocation(line: 605, column: 37, scope: !1849, inlinedAt: !2219)
!2229 = !DILocation(line: 605, column: 40, scope: !1849, inlinedAt: !2219)
!2230 = !DILocation(line: 605, column: 48, scope: !1849, inlinedAt: !2219)
!2231 = !DILocation(line: 605, column: 56, scope: !1849, inlinedAt: !2219)
!2232 = !DILocation(line: 605, column: 59, scope: !1849, inlinedAt: !2219)
!2233 = !DILocation(line: 605, column: 65, scope: !1849, inlinedAt: !2219)
!2234 = !DILocation(line: 605, column: 9, scope: !1829, inlinedAt: !2219)
!2235 = !DILocation(line: 607, column: 9, scope: !1858, inlinedAt: !2219)
!2236 = !DILocation(line: 611, column: 1, scope: !1829, inlinedAt: !2219)
!2237 = !DILocation(line: 804, column: 9, scope: !2210)
!2238 = !DILocation(line: 803, column: 19, scope: !2210)
!2239 = !DILocation(line: 805, column: 5, scope: !2210)
!2240 = !DILocation(line: 806, column: 1, scope: !2210)
!2241 = distinct !DISubprogram(name: "dbsizeCommand", scope: !1, file: !1, line: 808, type: !457, isLocal: false, isDefinition: true, scopeLine: 808, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2242)
!2242 = !{!2243}
!2243 = !DILocalVariable(name: "c", arg: 1, scope: !2241, file: !1, line: 808, type: !429)
!2244 = !DILocation(line: 808, column: 28, scope: !2241)
!2245 = !DILocation(line: 809, column: 24, scope: !2241)
!2246 = !DILocation(line: 809, column: 5, scope: !2241)
!2247 = !DILocation(line: 810, column: 1, scope: !2241)
!2248 = distinct !DISubprogram(name: "lastsaveCommand", scope: !1, file: !1, line: 812, type: !457, isLocal: false, isDefinition: true, scopeLine: 812, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2249)
!2249 = !{!2250}
!2250 = !DILocalVariable(name: "c", arg: 1, scope: !2248, file: !1, line: 812, type: !429)
!2251 = !DILocation(line: 812, column: 30, scope: !2248)
!2252 = !DILocation(line: 813, column: 31, scope: !2248)
!2253 = !{!227, !228, i64 2136}
!2254 = !DILocation(line: 813, column: 5, scope: !2248)
!2255 = !DILocation(line: 814, column: 1, scope: !2248)
!2256 = distinct !DISubprogram(name: "typeCommand", scope: !1, file: !1, line: 816, type: !457, isLocal: false, isDefinition: true, scopeLine: 816, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2257)
!2257 = !{!2258, !2259, !2260, !2261}
!2258 = !DILocalVariable(name: "c", arg: 1, scope: !2256, file: !1, line: 816, type: !429)
!2259 = !DILocalVariable(name: "o", scope: !2256, file: !1, line: 817, type: !65)
!2260 = !DILocalVariable(name: "type", scope: !2256, file: !1, line: 818, type: !9)
!2261 = !DILocalVariable(name: "mv", scope: !2262, file: !1, line: 832, type: !2266)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !1, line: 831, column: 26)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !1, line: 824, column: 25)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !1, line: 823, column: 12)
!2265 = distinct !DILexicalBlock(scope: !2256, file: !1, line: 821, column: 9)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleValue", file: !67, line: 550, baseType: !2268)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "moduleValue", file: !67, line: 547, size: 128, elements: !2269)
!2269 = !{!2270, !2599}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2268, file: !67, line: 548, baseType: !2271, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleType", file: !67, line: 530, baseType: !2273)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleType", file: !67, line: 517, size: 768, elements: !2274)
!2274 = !{!2275, !2276, !2279, !2554, !2559, !2564, !2569, !2582, !2584, !2589, !2594, !2595}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2273, file: !67, line: 518, baseType: !53, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2273, file: !67, line: 519, baseType: !2277, size: 64, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModule", file: !67, line: 496, flags: DIFlagFwdDecl)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "rdb_load", scope: !2273, file: !67, line: 520, baseType: !2280, size: 64, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeLoadFunc", file: !67, line: 506, baseType: !2281)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!4, !2284, !8}
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleIO", file: !67, line: 555, size: 384, elements: !2286)
!2286 = !{!2287, !2288, !2546, !2547, !2548, !2549, !2552}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !2285, file: !67, line: 556, baseType: !440, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "rio", scope: !2285, file: !67, line: 557, baseType: !2289, size: 64, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "rio", file: !2291, line: 87, baseType: !2292)
!2291 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rio.h", directory: "/root/.unikraft/apps/redis/build")
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rio", file: !2291, line: 39, size: 832, elements: !2293)
!2293 = !{!2294, !2299, !2303, !2307, !2311, !2315, !2316, !2317, !2318}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2292, file: !2291, line: 43, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!822, !2298, !4, !822}
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2292, file: !2291, line: 44, baseType: !2300, size: 64, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!822, !2298, !112, !822}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "tell", scope: !2292, file: !2291, line: 45, baseType: !2304, size: 64, offset: 128)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!492, !2298}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2292, file: !2291, line: 46, baseType: !2308, size: 64, offset: 192)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!8, !2298}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "update_cksum", scope: !2292, file: !2291, line: 52, baseType: !2312, size: 64, offset: 256)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{null, !2298, !112, !822}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "cksum", scope: !2292, file: !2291, line: 55, baseType: !53, size: 64, offset: 320)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "processed_bytes", scope: !2292, file: !2291, line: 58, baseType: !822, size: 64, offset: 384)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "max_processing_chunk", scope: !2292, file: !2291, line: 61, baseType: !822, size: 64, offset: 448)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !2292, file: !2291, line: 84, baseType: !2319, size: 320, offset: 512)
!2319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2292, file: !2291, line: 64, size: 320, elements: !2320)
!2320 = !{!2321, !2326, !2538}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2319, file: !2291, line: 69, baseType: !2322, size: 128)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2319, file: !2291, line: 66, size: 128, elements: !2323)
!2323 = !{!2324, !2325}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2322, file: !2291, line: 67, baseType: !438, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2322, file: !2291, line: 68, baseType: !492, size: 64, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2319, file: !2291, line: 75, baseType: !2327, size: 192)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2319, file: !2291, line: 71, size: 192, elements: !2328)
!2328 = !{!2329, !2536, !2537}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !2327, file: !2291, line: 72, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2332, line: 66, baseType: !2333)
!2332 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!2333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !2334, line: 287, baseType: !2335)
!2334 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !2334, line: 181, size: 1408, elements: !2336)
!2336 = !{!2337, !2338, !2339, !2340, !2342, !2343, !2348, !2349, !2350, !2504, !2510, !2515, !2519, !2520, !2521, !2522, !2524, !2526, !2527, !2528, !2529, !2530, !2534, !2535}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !2335, file: !2334, line: 182, baseType: !1923, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !2335, file: !2334, line: 183, baseType: !8, size: 32, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !2335, file: !2334, line: 184, baseType: !8, size: 32, offset: 96)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2335, file: !2334, line: 185, baseType: !2341, size: 16, offset: 128)
!2341 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !2335, file: !2334, line: 186, baseType: !2341, size: 16, offset: 144)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !2335, file: !2334, line: 187, baseType: !2344, size: 128, offset: 192)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !2334, line: 117, size: 128, elements: !2345)
!2345 = !{!2346, !2347}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !2344, file: !2334, line: 118, baseType: !1923, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !2344, file: !2334, line: 119, baseType: !8, size: 32, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !2335, file: !2334, line: 188, baseType: !8, size: 32, offset: 320)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !2335, file: !2334, line: 195, baseType: !4, size: 64, offset: 384)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !2335, file: !2334, line: 197, baseType: !2351, size: 64, offset: 448)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!2354, !2355, !4, !9, !8}
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !443, line: 145, baseType: !12)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !2334, line: 569, size: 14912, elements: !2357)
!2357 = !{!2358, !2359, !2361, !2362, !2363, !2364, !2368, !2369, !2372, !2373, !2377, !2391, !2392, !2393, !2395, !2396, !2397, !2472, !2491, !2492, !2495, !2502}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !2356, file: !2334, line: 571, baseType: !8, size: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !2356, file: !2334, line: 576, baseType: !2360, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !2356, file: !2334, line: 576, baseType: !2360, size: 64, offset: 128)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !2356, file: !2334, line: 576, baseType: !2360, size: 64, offset: 192)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !2356, file: !2334, line: 578, baseType: !8, size: 32, offset: 256)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !2356, file: !2334, line: 579, baseType: !2365, size: 200, offset: 288)
!2365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 200, elements: !2366)
!2366 = !{!2367}
!2367 = !DISubrange(count: 25)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !2356, file: !2334, line: 582, baseType: !8, size: 32, offset: 512)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !2356, file: !2334, line: 583, baseType: !2370, size: 64, offset: 576)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !2334, line: 40, flags: DIFlagFwdDecl)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !2356, file: !2334, line: 585, baseType: !8, size: 32, offset: 640)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !2356, file: !2334, line: 587, baseType: !2374, size: 64, offset: 704)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{null, !2355}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !2356, file: !2334, line: 590, baseType: !2378, size: 64, offset: 768)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !2334, line: 47, size: 256, elements: !2380)
!2380 = !{!2381, !2382, !2383, !2384, !2385, !2386}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2379, file: !2334, line: 49, baseType: !2378, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !2379, file: !2334, line: 50, baseType: !8, size: 32, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !2379, file: !2334, line: 50, baseType: !8, size: 32, offset: 96)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !2379, file: !2334, line: 50, baseType: !8, size: 32, offset: 128)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !2379, file: !2334, line: 50, baseType: !8, size: 32, offset: 160)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !2379, file: !2334, line: 51, baseType: !2387, size: 32, offset: 192)
!2387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2388, size: 32, elements: !2389)
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !2334, line: 25, baseType: !45)
!2389 = !{!2390}
!2390 = !DISubrange(count: 1)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !2356, file: !2334, line: 591, baseType: !8, size: 32, offset: 832)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !2356, file: !2334, line: 592, baseType: !2378, size: 64, offset: 896)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !2356, file: !2334, line: 593, baseType: !2394, size: 64, offset: 960)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !2356, file: !2334, line: 596, baseType: !8, size: 32, offset: 1024)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !2356, file: !2334, line: 597, baseType: !9, size: 64, offset: 1088)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !2356, file: !2334, line: 632, baseType: !2398, size: 2880, offset: 1152)
!2398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2356, file: !2334, line: 599, size: 2880, elements: !2399)
!2399 = !{!2400, !2463}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !2398, file: !2334, line: 622, baseType: !2401, size: 1728)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2398, file: !2334, line: 601, size: 1728, elements: !2402)
!2402 = !{!2403, !2404, !2405, !2409, !2421, !2422, !2423, !2432, !2446, !2447, !2448, !2452, !2456, !2457, !2458, !2459, !2460, !2461, !2462}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !2401, file: !2334, line: 603, baseType: !45, size: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !2401, file: !2334, line: 604, baseType: !9, size: 64, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !2401, file: !2334, line: 605, baseType: !2406, size: 208, offset: 128)
!2406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 208, elements: !2407)
!2407 = !{!2408}
!2408 = !DISubrange(count: 26)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !2401, file: !2334, line: 606, baseType: !2410, size: 288, offset: 352)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !2334, line: 55, size: 288, elements: !2411)
!2411 = !{!2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !2410, file: !2334, line: 57, baseType: !8, size: 32)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !2410, file: !2334, line: 58, baseType: !8, size: 32, offset: 32)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !2410, file: !2334, line: 59, baseType: !8, size: 32, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !2410, file: !2334, line: 60, baseType: !8, size: 32, offset: 96)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !2410, file: !2334, line: 61, baseType: !8, size: 32, offset: 128)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !2410, file: !2334, line: 62, baseType: !8, size: 32, offset: 160)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !2410, file: !2334, line: 63, baseType: !8, size: 32, offset: 192)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !2410, file: !2334, line: 64, baseType: !8, size: 32, offset: 224)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !2410, file: !2334, line: 65, baseType: !8, size: 32, offset: 256)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !2401, file: !2334, line: 607, baseType: !8, size: 32, offset: 640)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !2401, file: !2334, line: 608, baseType: !479, size: 64, offset: 704)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !2401, file: !2334, line: 609, baseType: !2424, size: 112, offset: 768)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !2334, line: 319, size: 112, elements: !2425)
!2425 = !{!2426, !2430, !2431}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !2424, file: !2334, line: 320, baseType: !2427, size: 48)
!2427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 48, elements: !2428)
!2428 = !{!2429}
!2429 = !DISubrange(count: 3)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !2424, file: !2334, line: 321, baseType: !2427, size: 48, offset: 48)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !2424, file: !2334, line: 322, baseType: !35, size: 16, offset: 96)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !2401, file: !2334, line: 610, baseType: !2433, size: 64, offset: 896)
!2433 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !443, line: 171, baseType: !2434)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !443, line: 163, size: 64, elements: !2435)
!2435 = !{!2436, !2437}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2434, file: !443, line: 165, baseType: !8, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2434, file: !443, line: 170, baseType: !2438, size: 32, offset: 32)
!2438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2434, file: !443, line: 166, size: 32, elements: !2439)
!2439 = !{!2440, !2442}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2438, file: !443, line: 168, baseType: !2441, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !823, line: 124, baseType: !45)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2438, file: !443, line: 169, baseType: !2443, size: 32)
!2443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !2444)
!2444 = !{!2445}
!2445 = !DISubrange(count: 4)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !2401, file: !2334, line: 611, baseType: !2433, size: 64, offset: 960)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !2401, file: !2334, line: 612, baseType: !2433, size: 64, offset: 1024)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !2401, file: !2334, line: 613, baseType: !2449, size: 64, offset: 1088)
!2449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !2450)
!2450 = !{!2451}
!2451 = !DISubrange(count: 8)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !2401, file: !2334, line: 614, baseType: !2453, size: 192, offset: 1152)
!2453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !2454)
!2454 = !{!2455}
!2455 = !DISubrange(count: 24)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !2401, file: !2334, line: 615, baseType: !8, size: 32, offset: 1344)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !2401, file: !2334, line: 616, baseType: !2433, size: 64, offset: 1376)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !2401, file: !2334, line: 617, baseType: !2433, size: 64, offset: 1440)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !2401, file: !2334, line: 618, baseType: !2433, size: 64, offset: 1504)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !2401, file: !2334, line: 619, baseType: !2433, size: 64, offset: 1568)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !2401, file: !2334, line: 620, baseType: !2433, size: 64, offset: 1632)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !2401, file: !2334, line: 621, baseType: !8, size: 32, offset: 1696)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !2398, file: !2334, line: 631, baseType: !2464, size: 2880)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2398, file: !2334, line: 626, size: 2880, elements: !2465)
!2465 = !{!2466, !2470}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !2464, file: !2334, line: 629, baseType: !2467, size: 1920)
!2467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1923, size: 1920, elements: !2468)
!2468 = !{!2469}
!2469 = !DISubrange(count: 30)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !2464, file: !2334, line: 630, baseType: !2471, size: 960, offset: 1920)
!2471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 960, elements: !2468)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !2356, file: !2334, line: 636, baseType: !2473, size: 64, offset: 4032)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !2334, line: 93, size: 6336, elements: !2475)
!2475 = !{!2476, !2477, !2478, !2483}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2474, file: !2334, line: 94, baseType: !2473, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !2474, file: !2334, line: 95, baseType: !8, size: 32, offset: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !2474, file: !2334, line: 97, baseType: !2479, size: 2048, offset: 128)
!2479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2480, size: 2048, elements: !2481)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!2481 = !{!2482}
!2482 = !DISubrange(count: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !2474, file: !2334, line: 98, baseType: !2484, size: 4160, offset: 2176)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !2334, line: 74, size: 4160, elements: !2485)
!2485 = !{!2486, !2488, !2489, !2490}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !2484, file: !2334, line: 75, baseType: !2487, size: 2048)
!2487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !2481)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !2484, file: !2334, line: 76, baseType: !2487, size: 2048, offset: 2048)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !2484, file: !2334, line: 78, baseType: !2388, size: 32, offset: 4096)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !2484, file: !2334, line: 81, baseType: !2388, size: 32, offset: 4128)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !2356, file: !2334, line: 637, baseType: !2474, size: 6336, offset: 4096)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !2356, file: !2334, line: 641, baseType: !2493, size: 64, offset: 10432)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !2356, file: !2334, line: 646, baseType: !2496, size: 192, offset: 10496)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !2334, line: 291, size: 192, elements: !2497)
!2497 = !{!2498, !2500, !2501}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2496, file: !2334, line: 293, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !2496, file: !2334, line: 294, baseType: !8, size: 32, offset: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !2496, file: !2334, line: 295, baseType: !2360, size: 64, offset: 128)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !2356, file: !2334, line: 648, baseType: !2503, size: 4224, offset: 10688)
!2503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2333, size: 4224, elements: !2428)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !2335, file: !2334, line: 199, baseType: !2505, size: 64, offset: 512)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!2354, !2355, !4, !2508, !8}
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !2335, file: !2334, line: 202, baseType: !2511, size: 64, offset: 576)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!2514, !2355, !4, !2514, !8}
!2514 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !443, line: 114, baseType: !12)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !2335, file: !2334, line: 203, baseType: !2516, size: 64, offset: 640)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!8, !2355, !4}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !2335, file: !2334, line: 206, baseType: !2344, size: 128, offset: 704)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !2335, file: !2334, line: 207, baseType: !1923, size: 64, offset: 832)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !2335, file: !2334, line: 208, baseType: !8, size: 32, offset: 896)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !2335, file: !2334, line: 211, baseType: !2523, size: 24, offset: 928)
!2523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 24, elements: !2428)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !2335, file: !2334, line: 212, baseType: !2525, size: 8, offset: 952)
!2525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8, elements: !2389)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !2335, file: !2334, line: 215, baseType: !2344, size: 128, offset: 960)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !2335, file: !2334, line: 218, baseType: !8, size: 32, offset: 1088)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2335, file: !2334, line: 219, baseType: !495, size: 64, offset: 1152)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2335, file: !2334, line: 222, baseType: !2355, size: 64, offset: 1216)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2335, file: !2334, line: 226, baseType: !2531, size: 32, offset: 1280)
!2531 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !443, line: 175, baseType: !2532)
!2532 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !2533, line: 12, baseType: !8)
!2533 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !2335, file: !2334, line: 228, baseType: !2433, size: 64, offset: 1312)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2335, file: !2334, line: 229, baseType: !8, size: 32, offset: 1376)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !2327, file: !2291, line: 73, baseType: !492, size: 64, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "autosync", scope: !2327, file: !2291, line: 74, baseType: !492, size: 64, offset: 128)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "fdset", scope: !2319, file: !2291, line: 83, baseType: !2539, size: 320)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2319, file: !2291, line: 77, size: 320, elements: !2540)
!2540 = !{!2541, !2542, !2543, !2544, !2545}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "fds", scope: !2539, file: !2291, line: 78, baseType: !467, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2539, file: !2291, line: 79, baseType: !467, size: 64, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "numfds", scope: !2539, file: !2291, line: 80, baseType: !8, size: 32, offset: 128)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2539, file: !2291, line: 81, baseType: !492, size: 64, offset: 192)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2539, file: !2291, line: 82, baseType: !438, size: 64, offset: 256)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2285, file: !67, line: 558, baseType: !2271, size: 64, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !2285, file: !67, line: 559, baseType: !8, size: 32, offset: 192)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !2285, file: !67, line: 560, baseType: !8, size: 32, offset: 224)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2285, file: !67, line: 562, baseType: !2550, size: 64, offset: 256)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCtx", file: !67, line: 499, flags: DIFlagFwdDecl)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2285, file: !67, line: 563, baseType: !2553, size: 64, offset: 320)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "rdb_save", scope: !2273, file: !67, line: 521, baseType: !2555, size: 64, offset: 192)
!2555 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeSaveFunc", file: !67, line: 507, baseType: !2556)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{null, !2284, !4}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "aof_rewrite", scope: !2273, file: !67, line: 522, baseType: !2560, size: 64, offset: 256)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeRewriteFunc", file: !67, line: 510, baseType: !2561)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{null, !2284, !2553, !4}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage", scope: !2273, file: !67, line: 523, baseType: !2565, size: 64, offset: 320)
!2565 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeMemUsageFunc", file: !67, line: 512, baseType: !2566)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!440, !112}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !2273, file: !67, line: 524, baseType: !2570, size: 64, offset: 384)
!2570 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeDigestFunc", file: !67, line: 511, baseType: !2571)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{null, !2574, !4}
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleDigest", file: !67, line: 583, size: 320, elements: !2576)
!2576 = !{!2577, !2581}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2575, file: !67, line: 584, baseType: !2578, size: 160)
!2578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 160, elements: !2579)
!2579 = !{!2580}
!2580 = !DISubrange(count: 20)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2575, file: !67, line: 585, baseType: !2578, size: 160, offset: 160)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2273, file: !67, line: 525, baseType: !2583, size: 64, offset: 448)
!2583 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeFreeFunc", file: !67, line: 513, baseType: !187)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "aux_load", scope: !2273, file: !67, line: 526, baseType: !2585, size: 64, offset: 512)
!2585 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeAuxLoadFunc", file: !67, line: 508, baseType: !2586)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!8, !2284, !8, !8}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "aux_save", scope: !2273, file: !67, line: 527, baseType: !2590, size: 64, offset: 576)
!2590 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeAuxSaveFunc", file: !67, line: 509, baseType: !2591)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{null, !2284, !8}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "aux_save_triggers", scope: !2273, file: !67, line: 528, baseType: !8, size: 32, offset: 640)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2273, file: !67, line: 529, baseType: !2596, size: 80, offset: 672)
!2596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 80, elements: !2597)
!2597 = !{!2598}
!2598 = !DISubrange(count: 10)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2268, file: !67, line: 549, baseType: !4, size: 64, offset: 64)
!2600 = !DILocation(line: 816, column: 26, scope: !2256)
!2601 = !DILocation(line: 820, column: 35, scope: !2256)
!2602 = !DILocation(line: 820, column: 41, scope: !2256)
!2603 = !DILocation(line: 820, column: 38, scope: !2256)
!2604 = !DILocation(line: 100, column: 39, scope: !264, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 820, column: 9, scope: !2256)
!2606 = !DILocation(line: 100, column: 49, scope: !264, inlinedAt: !2605)
!2607 = !DILocation(line: 100, column: 58, scope: !264, inlinedAt: !2605)
!2608 = !DILocation(line: 103, column: 9, scope: !274, inlinedAt: !2605)
!2609 = !DILocation(line: 103, column: 32, scope: !274, inlinedAt: !2605)
!2610 = !DILocation(line: 103, column: 9, scope: !264, inlinedAt: !2605)
!2611 = !DILocation(line: 107, column: 20, scope: !278, inlinedAt: !2605)
!2612 = !DILocation(line: 107, column: 31, scope: !278, inlinedAt: !2605)
!2613 = !DILocation(line: 107, column: 13, scope: !279, inlinedAt: !2605)
!2614 = !DILocation(line: 124, column: 20, scope: !284, inlinedAt: !2605)
!2615 = !DILocation(line: 124, column: 13, scope: !284, inlinedAt: !2605)
!2616 = !DILocation(line: 125, column: 45, scope: !284, inlinedAt: !2605)
!2617 = !DILocation(line: 125, column: 35, scope: !284, inlinedAt: !2605)
!2618 = !DILocation(line: 124, column: 35, scope: !284, inlinedAt: !2605)
!2619 = !DILocation(line: 126, column: 36, scope: !284, inlinedAt: !2605)
!2620 = !DILocation(line: 126, column: 13, scope: !284, inlinedAt: !2605)
!2621 = !DILocation(line: 126, column: 40, scope: !284, inlinedAt: !2605)
!2622 = !DILocation(line: 127, column: 41, scope: !284, inlinedAt: !2605)
!2623 = !DILocation(line: 127, column: 47, scope: !284, inlinedAt: !2605)
!2624 = !DILocation(line: 124, column: 13, scope: !279, inlinedAt: !2605)
!2625 = !DILocation(line: 55, column: 26, scope: !90, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 133, column: 11, scope: !264, inlinedAt: !2605)
!2627 = !DILocation(line: 55, column: 36, scope: !90, inlinedAt: !2626)
!2628 = !DILocation(line: 55, column: 45, scope: !90, inlinedAt: !2626)
!2629 = !DILocation(line: 56, column: 34, scope: !90, inlinedAt: !2626)
!2630 = !DILocation(line: 56, column: 44, scope: !90, inlinedAt: !2626)
!2631 = !DILocation(line: 56, column: 21, scope: !90, inlinedAt: !2626)
!2632 = !DILocation(line: 56, column: 16, scope: !90, inlinedAt: !2626)
!2633 = !DILocation(line: 57, column: 9, scope: !202, inlinedAt: !2626)
!2634 = !DILocation(line: 57, column: 9, scope: !90, inlinedAt: !2626)
!2635 = !DILocation(line: 77, column: 1, scope: !90, inlinedAt: !2626)
!2636 = !DILocation(line: 101, column: 11, scope: !264, inlinedAt: !2605)
!2637 = !DILocation(line: 134, column: 9, scope: !264, inlinedAt: !2605)
!2638 = !DILocation(line: 58, column: 21, scope: !201, inlinedAt: !2626)
!2639 = !DILocation(line: 58, column: 15, scope: !201, inlinedAt: !2626)
!2640 = !DILocation(line: 134, column: 13, scope: !305, inlinedAt: !2605)
!2641 = !DILocation(line: 0, scope: !2256)
!2642 = !DILocation(line: 139, column: 1, scope: !264, inlinedAt: !2605)
!2643 = !DILocation(line: 817, column: 11, scope: !2256)
!2644 = !DILocation(line: 821, column: 9, scope: !2256)
!2645 = !DILocation(line: 137, column: 34, scope: !305, inlinedAt: !2605)
!2646 = !DILocation(line: 824, column: 19, scope: !2264)
!2647 = !DILocation(line: 824, column: 9, scope: !2264)
!2648 = !DILocation(line: 826, column: 39, scope: !2263)
!2649 = !DILocation(line: 827, column: 37, scope: !2263)
!2650 = !DILocation(line: 828, column: 39, scope: !2263)
!2651 = !DILocation(line: 829, column: 39, scope: !2263)
!2652 = !DILocation(line: 830, column: 43, scope: !2263)
!2653 = !DILocation(line: 832, column: 34, scope: !2262)
!2654 = !DILocation(line: 832, column: 26, scope: !2262)
!2655 = !DILocation(line: 833, column: 24, scope: !2262)
!2656 = !{!2657, !209, i64 0}
!2657 = !{!"moduleValue", !209, i64 0, !209, i64 8}
!2658 = !DILocation(line: 833, column: 20, scope: !2262)
!2659 = !DILocation(line: 818, column: 11, scope: !2256)
!2660 = !DILocation(line: 834, column: 12, scope: !2263)
!2661 = !DILocation(line: 835, column: 36, scope: !2263)
!2662 = !DILocation(line: 0, scope: !2263)
!2663 = !DILocation(line: 838, column: 5, scope: !2256)
!2664 = !DILocation(line: 839, column: 1, scope: !2256)
!2665 = distinct !DISubprogram(name: "shutdownCommand", scope: !1, file: !1, line: 841, type: !457, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2666)
!2666 = !{!2667, !2668}
!2667 = !DILocalVariable(name: "c", arg: 1, scope: !2665, file: !1, line: 841, type: !429)
!2668 = !DILocalVariable(name: "flags", scope: !2665, file: !1, line: 842, type: !8)
!2669 = !DILocation(line: 841, column: 30, scope: !2665)
!2670 = !DILocation(line: 842, column: 9, scope: !2665)
!2671 = !DILocation(line: 844, column: 12, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2665, file: !1, line: 844, column: 9)
!2673 = !DILocation(line: 844, column: 17, scope: !2672)
!2674 = !DILocation(line: 844, column: 9, scope: !2665)
!2675 = !DILocation(line: 845, column: 27, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2672, file: !1, line: 844, column: 22)
!2677 = !DILocation(line: 845, column: 9, scope: !2676)
!2678 = !DILocation(line: 846, column: 9, scope: !2676)
!2679 = !DILocation(line: 847, column: 24, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2672, file: !1, line: 847, column: 16)
!2681 = !DILocation(line: 847, column: 16, scope: !2672)
!2682 = !DILocation(line: 848, column: 28, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !1, line: 848, column: 13)
!2684 = distinct !DILexicalBlock(scope: !2680, file: !1, line: 847, column: 30)
!2685 = !DILocation(line: 848, column: 25, scope: !2683)
!2686 = !DILocation(line: 848, column: 37, scope: !2683)
!2687 = !DILocation(line: 848, column: 14, scope: !2683)
!2688 = !DILocation(line: 848, column: 13, scope: !2684)
!2689 = !DILocation(line: 850, column: 21, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2683, file: !1, line: 850, column: 20)
!2691 = !DILocation(line: 850, column: 20, scope: !2683)
!2692 = !DILocation(line: 853, column: 31, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2690, file: !1, line: 852, column: 16)
!2694 = !DILocation(line: 853, column: 13, scope: !2693)
!2695 = !DILocation(line: 854, column: 13, scope: !2693)
!2696 = !DILocation(line: 0, scope: !2665)
!2697 = !DILocation(line: 863, column: 16, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2665, file: !1, line: 863, column: 9)
!2699 = !{!227, !212, i64 860}
!2700 = !DILocation(line: 863, column: 34, scope: !2698)
!2701 = !DILocation(line: 863, column: 24, scope: !2698)
!2702 = !DILocation(line: 865, column: 9, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2665, file: !1, line: 865, column: 9)
!2704 = !DILocation(line: 865, column: 35, scope: !2703)
!2705 = !DILocation(line: 865, column: 9, scope: !2665)
!2706 = !DILocation(line: 865, column: 44, scope: !2703)
!2707 = !DILocation(line: 866, column: 5, scope: !2665)
!2708 = !DILocation(line: 867, column: 1, scope: !2665)
!2709 = distinct !DISubprogram(name: "renameGenericCommand", scope: !1, file: !1, line: 869, type: !1259, isLocal: false, isDefinition: true, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2710)
!2710 = !{!2711, !2712, !2713, !2714, !2715}
!2711 = !DILocalVariable(name: "c", arg: 1, scope: !2709, file: !1, line: 869, type: !429)
!2712 = !DILocalVariable(name: "nx", arg: 2, scope: !2709, file: !1, line: 869, type: !8)
!2713 = !DILocalVariable(name: "o", scope: !2709, file: !1, line: 870, type: !65)
!2714 = !DILocalVariable(name: "expire", scope: !2709, file: !1, line: 871, type: !165)
!2715 = !DILocalVariable(name: "samekey", scope: !2709, file: !1, line: 872, type: !8)
!2716 = !DILocation(line: 869, column: 35, scope: !2709)
!2717 = !DILocation(line: 869, column: 42, scope: !2709)
!2718 = !DILocation(line: 872, column: 9, scope: !2709)
!2719 = !DILocation(line: 876, column: 19, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2709, file: !1, line: 876, column: 9)
!2721 = !DILocation(line: 876, column: 16, scope: !2720)
!2722 = !DILocation(line: 876, column: 28, scope: !2720)
!2723 = !DILocation(line: 876, column: 32, scope: !2720)
!2724 = !DILocation(line: 876, column: 44, scope: !2720)
!2725 = !DILocation(line: 876, column: 9, scope: !2720)
!2726 = !DILocation(line: 878, column: 41, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2709, file: !1, line: 878, column: 9)
!2728 = !DILocation(line: 878, column: 38, scope: !2727)
!2729 = !DILocation(line: 878, column: 56, scope: !2727)
!2730 = !{!1142, !209, i64 120}
!2731 = !DILocation(line: 163, column: 37, scope: !606, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 878, column: 14, scope: !2727)
!2733 = !DILocation(line: 163, column: 46, scope: !606, inlinedAt: !2732)
!2734 = !DILocation(line: 163, column: 57, scope: !606, inlinedAt: !2732)
!2735 = !DILocation(line: 164, column: 33, scope: !606, inlinedAt: !2732)
!2736 = !DILocation(line: 152, column: 31, scope: !417, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 164, column: 15, scope: !606, inlinedAt: !2732)
!2738 = !DILocation(line: 152, column: 41, scope: !417, inlinedAt: !2737)
!2739 = !DILocation(line: 153, column: 5, scope: !417, inlinedAt: !2737)
!2740 = !DILocation(line: 154, column: 12, scope: !417, inlinedAt: !2737)
!2741 = !DILocation(line: 154, column: 5, scope: !417, inlinedAt: !2737)
!2742 = !DILocation(line: 164, column: 11, scope: !606, inlinedAt: !2732)
!2743 = !DILocation(line: 165, column: 10, scope: !624, inlinedAt: !2732)
!2744 = !DILocation(line: 165, column: 9, scope: !606, inlinedAt: !2732)
!2745 = !DILocation(line: 165, column: 13, scope: !624, inlinedAt: !2732)
!2746 = !DILocation(line: 166, column: 5, scope: !606, inlinedAt: !2732)
!2747 = !DILocation(line: 870, column: 11, scope: !2709)
!2748 = !DILocation(line: 878, column: 9, scope: !2709)
!2749 = !DILocation(line: 876, column: 49, scope: !2720)
!2750 = !DILocation(line: 881, column: 9, scope: !2709)
!2751 = !DILocation(line: 882, column: 20, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !1, line: 881, column: 18)
!2753 = distinct !DILexicalBlock(scope: !2709, file: !1, line: 881, column: 9)
!2754 = !DILocation(line: 882, column: 32, scope: !2752)
!2755 = !DILocation(line: 882, column: 47, scope: !2752)
!2756 = !DILocation(line: 882, column: 9, scope: !2752)
!2757 = !DILocation(line: 883, column: 9, scope: !2752)
!2758 = !DILocation(line: 886, column: 5, scope: !2709)
!2759 = !DILocation(line: 887, column: 27, scope: !2709)
!2760 = !DILocation(line: 887, column: 33, scope: !2709)
!2761 = !DILocation(line: 887, column: 30, scope: !2709)
!2762 = !DILocation(line: 1092, column: 30, scope: !1614, inlinedAt: !2763)
!2763 = distinct !DILocation(line: 887, column: 14, scope: !2709)
!2764 = !DILocation(line: 1092, column: 40, scope: !1614, inlinedAt: !2763)
!2765 = !DILocation(line: 1096, column: 9, scope: !1624, inlinedAt: !2763)
!2766 = !DILocation(line: 1096, column: 31, scope: !1624, inlinedAt: !2763)
!2767 = !DILocation(line: 1096, column: 36, scope: !1624, inlinedAt: !2763)
!2768 = !DILocation(line: 1097, column: 40, scope: !1624, inlinedAt: !2763)
!2769 = !DILocation(line: 1097, column: 14, scope: !1624, inlinedAt: !2763)
!2770 = !DILocation(line: 1093, column: 16, scope: !1614, inlinedAt: !2763)
!2771 = !DILocation(line: 1097, column: 46, scope: !1624, inlinedAt: !2763)
!2772 = !DILocation(line: 1096, column: 9, scope: !1614, inlinedAt: !2763)
!2773 = !DILocation(line: 1101, column: 5, scope: !1614, inlinedAt: !2763)
!2774 = !DILocation(line: 1102, column: 12, scope: !1614, inlinedAt: !2763)
!2775 = !DILocation(line: 1102, column: 5, scope: !1614, inlinedAt: !2763)
!2776 = !DILocation(line: 0, scope: !1614, inlinedAt: !2763)
!2777 = !DILocation(line: 1103, column: 1, scope: !1614, inlinedAt: !2763)
!2778 = !DILocation(line: 871, column: 15, scope: !2709)
!2779 = !DILocation(line: 888, column: 27, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2709, file: !1, line: 888, column: 9)
!2781 = !DILocation(line: 888, column: 33, scope: !2780)
!2782 = !DILocation(line: 888, column: 30, scope: !2780)
!2783 = !DILocation(line: 152, column: 31, scope: !417, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 888, column: 9, scope: !2780)
!2785 = !DILocation(line: 152, column: 41, scope: !417, inlinedAt: !2784)
!2786 = !DILocation(line: 153, column: 5, scope: !417, inlinedAt: !2784)
!2787 = !DILocation(line: 154, column: 12, scope: !417, inlinedAt: !2784)
!2788 = !DILocation(line: 154, column: 5, scope: !417, inlinedAt: !2784)
!2789 = !DILocation(line: 888, column: 42, scope: !2780)
!2790 = !DILocation(line: 888, column: 9, scope: !2709)
!2791 = !DILocation(line: 889, column: 13, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !1, line: 889, column: 13)
!2793 = distinct !DILexicalBlock(scope: !2780, file: !1, line: 888, column: 51)
!2794 = !DILocation(line: 889, column: 13, scope: !2793)
!2795 = !DILocation(line: 890, column: 13, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2792, file: !1, line: 889, column: 17)
!2797 = !DILocation(line: 891, column: 31, scope: !2796)
!2798 = !{!1142, !209, i64 32}
!2799 = !DILocation(line: 891, column: 13, scope: !2796)
!2800 = !DILocation(line: 892, column: 13, scope: !2796)
!2801 = !DILocation(line: 896, column: 21, scope: !2793)
!2802 = !DILocation(line: 896, column: 27, scope: !2793)
!2803 = !DILocation(line: 896, column: 24, scope: !2793)
!2804 = !DILocation(line: 285, column: 23, scope: !901, inlinedAt: !2805)
!2805 = distinct !DILocation(line: 896, column: 9, scope: !2793)
!2806 = !DILocation(line: 285, column: 33, scope: !901, inlinedAt: !2805)
!2807 = !DILocation(line: 286, column: 19, scope: !901, inlinedAt: !2805)
!2808 = !DILocation(line: 286, column: 12, scope: !901, inlinedAt: !2805)
!2809 = !DILocation(line: 286, column: 46, scope: !901, inlinedAt: !2805)
!2810 = !DILocation(line: 271, column: 27, scope: !339, inlinedAt: !2811)
!2811 = distinct !DILocation(line: 287, column: 46, scope: !901, inlinedAt: !2805)
!2812 = !DILocation(line: 271, column: 37, scope: !339, inlinedAt: !2811)
!2813 = !DILocation(line: 274, column: 9, scope: !346, inlinedAt: !2811)
!2814 = !DILocation(line: 274, column: 31, scope: !346, inlinedAt: !2811)
!2815 = !DILocation(line: 0, scope: !346, inlinedAt: !2811)
!2816 = !DILocation(line: 274, column: 9, scope: !339, inlinedAt: !2811)
!2817 = !DILocation(line: 274, column: 64, scope: !346, inlinedAt: !2811)
!2818 = !DILocation(line: 274, column: 36, scope: !346, inlinedAt: !2811)
!2819 = !DILocation(line: 275, column: 24, scope: !356, inlinedAt: !2811)
!2820 = !DILocation(line: 275, column: 34, scope: !356, inlinedAt: !2811)
!2821 = !DILocation(line: 275, column: 9, scope: !356, inlinedAt: !2811)
!2822 = !DILocation(line: 275, column: 39, scope: !356, inlinedAt: !2811)
!2823 = !DILocation(line: 276, column: 20, scope: !362, inlinedAt: !2811)
!2824 = !DILocation(line: 276, column: 13, scope: !362, inlinedAt: !2811)
!2825 = !DILocation(line: 275, column: 9, scope: !339, inlinedAt: !2811)
!2826 = !DILocation(line: 1493, column: 25, scope: !368, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 276, column: 37, scope: !362, inlinedAt: !2811)
!2828 = !DILocation(line: 1494, column: 5, scope: !368, inlinedAt: !2827)
!2829 = !DILocation(line: 1495, column: 1, scope: !368, inlinedAt: !2827)
!2830 = !DILocation(line: 276, column: 37, scope: !362, inlinedAt: !2811)
!2831 = !DILocation(line: 281, column: 1, scope: !339, inlinedAt: !2811)
!2832 = !DILocation(line: 286, column: 5, scope: !901, inlinedAt: !2805)
!2833 = !DILocation(line: 897, column: 5, scope: !2793)
!2834 = !DILocation(line: 898, column: 14, scope: !2709)
!2835 = !DILocation(line: 898, column: 20, scope: !2709)
!2836 = !DILocation(line: 898, column: 17, scope: !2709)
!2837 = !DILocation(line: 898, column: 5, scope: !2709)
!2838 = !DILocation(line: 899, column: 16, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2709, file: !1, line: 899, column: 9)
!2840 = !DILocation(line: 899, column: 9, scope: !2709)
!2841 = !DILocation(line: 899, column: 38, scope: !2839)
!2842 = !DILocation(line: 899, column: 44, scope: !2839)
!2843 = !DILocation(line: 899, column: 41, scope: !2839)
!2844 = !DILocation(line: 899, column: 23, scope: !2839)
!2845 = !DILocation(line: 900, column: 17, scope: !2709)
!2846 = !DILocation(line: 900, column: 23, scope: !2709)
!2847 = !DILocation(line: 900, column: 20, scope: !2709)
!2848 = !DILocation(line: 285, column: 23, scope: !901, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 900, column: 5, scope: !2709)
!2850 = !DILocation(line: 285, column: 33, scope: !901, inlinedAt: !2849)
!2851 = !DILocation(line: 286, column: 19, scope: !901, inlinedAt: !2849)
!2852 = !DILocation(line: 286, column: 12, scope: !901, inlinedAt: !2849)
!2853 = !DILocation(line: 286, column: 46, scope: !901, inlinedAt: !2849)
!2854 = !DILocation(line: 271, column: 27, scope: !339, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 287, column: 46, scope: !901, inlinedAt: !2849)
!2856 = !DILocation(line: 271, column: 37, scope: !339, inlinedAt: !2855)
!2857 = !DILocation(line: 274, column: 9, scope: !346, inlinedAt: !2855)
!2858 = !DILocation(line: 274, column: 31, scope: !346, inlinedAt: !2855)
!2859 = !DILocation(line: 0, scope: !346, inlinedAt: !2855)
!2860 = !DILocation(line: 274, column: 9, scope: !339, inlinedAt: !2855)
!2861 = !DILocation(line: 274, column: 64, scope: !346, inlinedAt: !2855)
!2862 = !DILocation(line: 274, column: 36, scope: !346, inlinedAt: !2855)
!2863 = !DILocation(line: 275, column: 24, scope: !356, inlinedAt: !2855)
!2864 = !DILocation(line: 275, column: 34, scope: !356, inlinedAt: !2855)
!2865 = !DILocation(line: 275, column: 9, scope: !356, inlinedAt: !2855)
!2866 = !DILocation(line: 275, column: 39, scope: !356, inlinedAt: !2855)
!2867 = !DILocation(line: 276, column: 20, scope: !362, inlinedAt: !2855)
!2868 = !DILocation(line: 276, column: 13, scope: !362, inlinedAt: !2855)
!2869 = !DILocation(line: 275, column: 9, scope: !339, inlinedAt: !2855)
!2870 = !DILocation(line: 1493, column: 25, scope: !368, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 276, column: 37, scope: !362, inlinedAt: !2855)
!2872 = !DILocation(line: 1494, column: 5, scope: !368, inlinedAt: !2871)
!2873 = !DILocation(line: 1495, column: 1, scope: !368, inlinedAt: !2871)
!2874 = !DILocation(line: 276, column: 37, scope: !362, inlinedAt: !2855)
!2875 = !DILocation(line: 281, column: 1, scope: !339, inlinedAt: !2855)
!2876 = !DILocation(line: 286, column: 5, scope: !901, inlinedAt: !2849)
!2877 = !DILocation(line: 901, column: 26, scope: !2709)
!2878 = !DILocation(line: 901, column: 32, scope: !2709)
!2879 = !DILocation(line: 901, column: 29, scope: !2709)
!2880 = !DILocation(line: 395, column: 33, scope: !759, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 901, column: 5, scope: !2709)
!2882 = !DILocation(line: 395, column: 43, scope: !759, inlinedAt: !2881)
!2883 = !DILocation(line: 396, column: 5, scope: !759, inlinedAt: !2881)
!2884 = !DILocation(line: 397, column: 1, scope: !759, inlinedAt: !2881)
!2885 = !DILocation(line: 902, column: 26, scope: !2709)
!2886 = !DILocation(line: 902, column: 32, scope: !2709)
!2887 = !DILocation(line: 902, column: 29, scope: !2709)
!2888 = !DILocation(line: 395, column: 33, scope: !759, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 902, column: 5, scope: !2709)
!2890 = !DILocation(line: 395, column: 43, scope: !759, inlinedAt: !2889)
!2891 = !DILocation(line: 396, column: 5, scope: !759, inlinedAt: !2889)
!2892 = !DILocation(line: 397, column: 1, scope: !759, inlinedAt: !2889)
!2893 = !DILocation(line: 904, column: 12, scope: !2709)
!2894 = !DILocation(line: 904, column: 9, scope: !2709)
!2895 = !DILocation(line: 904, column: 23, scope: !2709)
!2896 = !DILocation(line: 904, column: 27, scope: !2709)
!2897 = !DILocation(line: 903, column: 5, scope: !2709)
!2898 = !DILocation(line: 906, column: 12, scope: !2709)
!2899 = !DILocation(line: 906, column: 9, scope: !2709)
!2900 = !DILocation(line: 906, column: 23, scope: !2709)
!2901 = !DILocation(line: 906, column: 27, scope: !2709)
!2902 = !DILocation(line: 905, column: 5, scope: !2709)
!2903 = !DILocation(line: 907, column: 17, scope: !2709)
!2904 = !DILocation(line: 908, column: 16, scope: !2709)
!2905 = !DILocation(line: 908, column: 28, scope: !2709)
!2906 = !DILocation(line: 908, column: 42, scope: !2709)
!2907 = !DILocation(line: 908, column: 5, scope: !2709)
!2908 = !DILocation(line: 909, column: 1, scope: !2709)
!2909 = !DILocation(line: 1092, column: 30, scope: !1614)
!2910 = !DILocation(line: 1092, column: 40, scope: !1614)
!2911 = !DILocation(line: 1096, column: 9, scope: !1624)
!2912 = !DILocation(line: 1096, column: 31, scope: !1624)
!2913 = !DILocation(line: 1096, column: 36, scope: !1624)
!2914 = !DILocation(line: 1097, column: 40, scope: !1624)
!2915 = !DILocation(line: 1097, column: 14, scope: !1624)
!2916 = !DILocation(line: 1093, column: 16, scope: !1614)
!2917 = !DILocation(line: 1097, column: 46, scope: !1624)
!2918 = !DILocation(line: 1096, column: 9, scope: !1614)
!2919 = !DILocation(line: 1101, column: 5, scope: !1614)
!2920 = !DILocation(line: 1102, column: 12, scope: !1614)
!2921 = !DILocation(line: 1102, column: 5, scope: !1614)
!2922 = !DILocation(line: 0, scope: !1614)
!2923 = !DILocation(line: 1103, column: 1, scope: !1614)
!2924 = distinct !DISubprogram(name: "setExpire", scope: !1, file: !1, line: 1076, type: !2925, isLocal: false, isDefinition: true, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2927)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{null, !429, !93, !65, !165}
!2927 = !{!2928, !2929, !2930, !2931, !2932, !2933, !2934}
!2928 = !DILocalVariable(name: "c", arg: 1, scope: !2924, file: !1, line: 1076, type: !429)
!2929 = !DILocalVariable(name: "db", arg: 2, scope: !2924, file: !1, line: 1076, type: !93)
!2930 = !DILocalVariable(name: "key", arg: 3, scope: !2924, file: !1, line: 1076, type: !65)
!2931 = !DILocalVariable(name: "when", arg: 4, scope: !2924, file: !1, line: 1076, type: !165)
!2932 = !DILocalVariable(name: "kde", scope: !2924, file: !1, line: 1077, type: !136)
!2933 = !DILocalVariable(name: "de", scope: !2924, file: !1, line: 1077, type: !136)
!2934 = !DILocalVariable(name: "writable_slave", scope: !2924, file: !1, line: 1085, type: !8)
!2935 = !DILocation(line: 1076, column: 24, scope: !2924)
!2936 = !DILocation(line: 1076, column: 36, scope: !2924)
!2937 = !DILocation(line: 1076, column: 46, scope: !2924)
!2938 = !DILocation(line: 1076, column: 61, scope: !2924)
!2939 = !DILocation(line: 1080, column: 24, scope: !2924)
!2940 = !DILocation(line: 1080, column: 34, scope: !2924)
!2941 = !DILocation(line: 1080, column: 11, scope: !2924)
!2942 = !DILocation(line: 1077, column: 16, scope: !2924)
!2943 = !DILocation(line: 1081, column: 5, scope: !2924)
!2944 = !DILocation(line: 1082, column: 28, scope: !2924)
!2945 = !DILocation(line: 1082, column: 36, scope: !2924)
!2946 = !DILocation(line: 1082, column: 10, scope: !2924)
!2947 = !DILocation(line: 1077, column: 22, scope: !2924)
!2948 = !DILocation(line: 1083, column: 5, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2924, file: !1, line: 1083, column: 5)
!2950 = !DILocation(line: 1085, column: 33, scope: !2924)
!2951 = !DILocation(line: 1085, column: 26, scope: !2924)
!2952 = !DILocation(line: 1085, column: 54, scope: !2924)
!2953 = !DILocation(line: 1085, column: 68, scope: !2924)
!2954 = !DILocation(line: 1085, column: 44, scope: !2924)
!2955 = !DILocation(line: 1086, column: 9, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2924, file: !1, line: 1086, column: 9)
!2957 = !DILocation(line: 1086, column: 11, scope: !2956)
!2958 = !DILocation(line: 1086, column: 37, scope: !2956)
!2959 = !{!292, !212, i64 160}
!2960 = !DILocation(line: 1086, column: 43, scope: !2956)
!2961 = !DILocation(line: 1086, column: 9, scope: !2924)
!2962 = !DILocation(line: 1087, column: 9, scope: !2956)
!2963 = !DILocation(line: 1088, column: 1, scope: !2924)
!2964 = distinct !DISubprogram(name: "renameCommand", scope: !1, file: !1, line: 911, type: !457, isLocal: false, isDefinition: true, scopeLine: 911, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2965)
!2965 = !{!2966}
!2966 = !DILocalVariable(name: "c", arg: 1, scope: !2964, file: !1, line: 911, type: !429)
!2967 = !DILocation(line: 911, column: 28, scope: !2964)
!2968 = !DILocation(line: 912, column: 5, scope: !2964)
!2969 = !DILocation(line: 913, column: 1, scope: !2964)
!2970 = distinct !DISubprogram(name: "renamenxCommand", scope: !1, file: !1, line: 915, type: !457, isLocal: false, isDefinition: true, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2971)
!2971 = !{!2972}
!2972 = !DILocalVariable(name: "c", arg: 1, scope: !2970, file: !1, line: 915, type: !429)
!2973 = !DILocation(line: 915, column: 30, scope: !2970)
!2974 = !DILocation(line: 916, column: 5, scope: !2970)
!2975 = !DILocation(line: 917, column: 1, scope: !2970)
!2976 = distinct !DISubprogram(name: "moveCommand", scope: !1, file: !1, line: 919, type: !457, isLocal: false, isDefinition: true, scopeLine: 919, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2977)
!2977 = !{!2978, !2979, !2980, !2981, !2982, !2983, !2984}
!2978 = !DILocalVariable(name: "c", arg: 1, scope: !2976, file: !1, line: 919, type: !429)
!2979 = !DILocalVariable(name: "o", scope: !2976, file: !1, line: 920, type: !65)
!2980 = !DILocalVariable(name: "src", scope: !2976, file: !1, line: 921, type: !93)
!2981 = !DILocalVariable(name: "dst", scope: !2976, file: !1, line: 921, type: !93)
!2982 = !DILocalVariable(name: "srcid", scope: !2976, file: !1, line: 922, type: !8)
!2983 = !DILocalVariable(name: "dbid", scope: !2976, file: !1, line: 923, type: !165)
!2984 = !DILocalVariable(name: "expire", scope: !2976, file: !1, line: 923, type: !165)
!2985 = !DILocation(line: 919, column: 26, scope: !2976)
!2986 = !DILocation(line: 923, column: 5, scope: !2976)
!2987 = !DILocation(line: 925, column: 16, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2976, file: !1, line: 925, column: 9)
!2989 = !DILocation(line: 925, column: 9, scope: !2988)
!2990 = !DILocation(line: 925, column: 9, scope: !2976)
!2991 = !DILocation(line: 926, column: 9, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2988, file: !1, line: 925, column: 33)
!2993 = !DILocation(line: 927, column: 9, scope: !2992)
!2994 = !DILocation(line: 931, column: 14, scope: !2976)
!2995 = !DILocation(line: 921, column: 14, scope: !2976)
!2996 = !DILocation(line: 932, column: 20, scope: !2976)
!2997 = !DILocation(line: 922, column: 9, scope: !2976)
!2998 = !DILocation(line: 934, column: 34, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2976, file: !1, line: 934, column: 9)
!3000 = !DILocation(line: 934, column: 31, scope: !2999)
!3001 = !DILocation(line: 923, column: 15, scope: !2976)
!3002 = !DILocation(line: 934, column: 9, scope: !2999)
!3003 = !DILocation(line: 934, column: 49, scope: !2999)
!3004 = !DILocation(line: 935, column: 9, scope: !2999)
!3005 = !DILocation(line: 934, column: 58, scope: !2999)
!3006 = !DILocation(line: 936, column: 20, scope: !2999)
!3007 = !DILocation(line: 379, column: 22, scope: !1087, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 936, column: 9, scope: !2999)
!3009 = !DILocation(line: 379, column: 29, scope: !1087, inlinedAt: !3008)
!3010 = !DILocation(line: 380, column: 12, scope: !1096, inlinedAt: !3008)
!3011 = !DILocation(line: 380, column: 32, scope: !1096, inlinedAt: !3008)
!3012 = !DILocation(line: 380, column: 22, scope: !1096, inlinedAt: !3008)
!3013 = !DILocation(line: 380, column: 16, scope: !1096, inlinedAt: !3008)
!3014 = !DILocation(line: 384, column: 1, scope: !1087, inlinedAt: !3008)
!3015 = !DILocation(line: 934, column: 9, scope: !2976)
!3016 = !DILocation(line: 938, column: 27, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !2999, file: !1, line: 937, column: 5)
!3018 = !{!1142, !209, i64 144}
!3019 = !DILocation(line: 938, column: 9, scope: !3017)
!3020 = !DILocation(line: 939, column: 9, scope: !3017)
!3021 = !DILocation(line: 382, column: 21, scope: !1087, inlinedAt: !3008)
!3022 = !DILocation(line: 382, column: 14, scope: !1087, inlinedAt: !3008)
!3023 = !DILocation(line: 382, column: 11, scope: !1087, inlinedAt: !3008)
!3024 = !DILocation(line: 921, column: 20, scope: !2976)
!3025 = !DILocation(line: 379, column: 22, scope: !1087, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 942, column: 5, scope: !2976)
!3027 = !DILocation(line: 379, column: 29, scope: !1087, inlinedAt: !3026)
!3028 = !DILocation(line: 380, column: 12, scope: !1096, inlinedAt: !3026)
!3029 = !DILocation(line: 380, column: 32, scope: !1096, inlinedAt: !3026)
!3030 = !DILocation(line: 380, column: 22, scope: !1096, inlinedAt: !3026)
!3031 = !DILocation(line: 380, column: 16, scope: !1096, inlinedAt: !3026)
!3032 = !DILocation(line: 382, column: 14, scope: !1087, inlinedAt: !3026)
!3033 = !DILocation(line: 382, column: 11, scope: !1087, inlinedAt: !3026)
!3034 = !DILocation(line: 383, column: 5, scope: !1087, inlinedAt: !3026)
!3035 = !DILocation(line: 384, column: 1, scope: !1087, inlinedAt: !3026)
!3036 = !DILocation(line: 946, column: 13, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !2976, file: !1, line: 946, column: 9)
!3038 = !DILocation(line: 946, column: 9, scope: !2976)
!3039 = !DILocation(line: 947, column: 27, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3037, file: !1, line: 946, column: 21)
!3041 = !{!1142, !209, i64 136}
!3042 = !DILocation(line: 947, column: 9, scope: !3040)
!3043 = !DILocation(line: 948, column: 9, scope: !3040)
!3044 = !DILocation(line: 952, column: 33, scope: !2976)
!3045 = !DILocation(line: 952, column: 30, scope: !2976)
!3046 = !DILocation(line: 152, column: 31, scope: !417, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 952, column: 9, scope: !2976)
!3048 = !DILocation(line: 152, column: 41, scope: !417, inlinedAt: !3047)
!3049 = !DILocation(line: 153, column: 5, scope: !417, inlinedAt: !3047)
!3050 = !DILocation(line: 154, column: 12, scope: !417, inlinedAt: !3047)
!3051 = !DILocation(line: 154, column: 5, scope: !417, inlinedAt: !3047)
!3052 = !DILocation(line: 920, column: 11, scope: !2976)
!3053 = !DILocation(line: 953, column: 10, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !2976, file: !1, line: 953, column: 9)
!3055 = !DILocation(line: 953, column: 9, scope: !2976)
!3056 = !DILocation(line: 954, column: 27, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3054, file: !1, line: 953, column: 13)
!3058 = !DILocation(line: 954, column: 9, scope: !3057)
!3059 = !DILocation(line: 955, column: 9, scope: !3057)
!3060 = !DILocation(line: 957, column: 27, scope: !2976)
!3061 = !DILocation(line: 957, column: 33, scope: !2976)
!3062 = !DILocation(line: 957, column: 30, scope: !2976)
!3063 = !DILocation(line: 1092, column: 30, scope: !1614, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 957, column: 14, scope: !2976)
!3065 = !DILocation(line: 1092, column: 40, scope: !1614, inlinedAt: !3064)
!3066 = !DILocation(line: 1096, column: 9, scope: !1624, inlinedAt: !3064)
!3067 = !DILocation(line: 1096, column: 31, scope: !1624, inlinedAt: !3064)
!3068 = !DILocation(line: 1096, column: 36, scope: !1624, inlinedAt: !3064)
!3069 = !DILocation(line: 1097, column: 40, scope: !1624, inlinedAt: !3064)
!3070 = !DILocation(line: 1097, column: 14, scope: !1624, inlinedAt: !3064)
!3071 = !DILocation(line: 1093, column: 16, scope: !1614, inlinedAt: !3064)
!3072 = !DILocation(line: 1097, column: 46, scope: !1624, inlinedAt: !3064)
!3073 = !DILocation(line: 1096, column: 9, scope: !1614, inlinedAt: !3064)
!3074 = !DILocation(line: 1101, column: 5, scope: !1614, inlinedAt: !3064)
!3075 = !DILocation(line: 1102, column: 12, scope: !1614, inlinedAt: !3064)
!3076 = !DILocation(line: 1102, column: 5, scope: !1614, inlinedAt: !3064)
!3077 = !DILocation(line: 0, scope: !1614, inlinedAt: !3064)
!3078 = !DILocation(line: 1103, column: 1, scope: !1614, inlinedAt: !3064)
!3079 = !DILocation(line: 923, column: 21, scope: !2976)
!3080 = !DILocation(line: 960, column: 31, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !2976, file: !1, line: 960, column: 9)
!3082 = !DILocation(line: 960, column: 28, scope: !3081)
!3083 = !DILocation(line: 152, column: 31, scope: !417, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 960, column: 9, scope: !3081)
!3085 = !DILocation(line: 152, column: 41, scope: !417, inlinedAt: !3084)
!3086 = !DILocation(line: 153, column: 5, scope: !417, inlinedAt: !3084)
!3087 = !DILocation(line: 154, column: 12, scope: !417, inlinedAt: !3084)
!3088 = !DILocation(line: 154, column: 5, scope: !417, inlinedAt: !3084)
!3089 = !DILocation(line: 960, column: 40, scope: !3081)
!3090 = !DILocation(line: 960, column: 9, scope: !2976)
!3091 = !DILocation(line: 961, column: 27, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3081, file: !1, line: 960, column: 49)
!3093 = !DILocation(line: 961, column: 9, scope: !3092)
!3094 = !DILocation(line: 962, column: 9, scope: !3092)
!3095 = !DILocation(line: 964, column: 18, scope: !2976)
!3096 = !DILocation(line: 964, column: 15, scope: !2976)
!3097 = !DILocation(line: 964, column: 5, scope: !2976)
!3098 = !DILocation(line: 965, column: 16, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !2976, file: !1, line: 965, column: 9)
!3100 = !DILocation(line: 965, column: 9, scope: !2976)
!3101 = !DILocation(line: 965, column: 42, scope: !3099)
!3102 = !DILocation(line: 965, column: 39, scope: !3099)
!3103 = !DILocation(line: 965, column: 23, scope: !3099)
!3104 = !DILocation(line: 966, column: 5, scope: !2976)
!3105 = !DILocation(line: 969, column: 21, scope: !2976)
!3106 = !DILocation(line: 969, column: 18, scope: !2976)
!3107 = !DILocation(line: 285, column: 23, scope: !901, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 969, column: 5, scope: !2976)
!3109 = !DILocation(line: 285, column: 33, scope: !901, inlinedAt: !3108)
!3110 = !DILocation(line: 286, column: 19, scope: !901, inlinedAt: !3108)
!3111 = !DILocation(line: 286, column: 12, scope: !901, inlinedAt: !3108)
!3112 = !DILocation(line: 286, column: 46, scope: !901, inlinedAt: !3108)
!3113 = !DILocation(line: 271, column: 27, scope: !339, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 287, column: 46, scope: !901, inlinedAt: !3108)
!3115 = !DILocation(line: 271, column: 37, scope: !339, inlinedAt: !3114)
!3116 = !DILocation(line: 274, column: 9, scope: !346, inlinedAt: !3114)
!3117 = !DILocation(line: 274, column: 31, scope: !346, inlinedAt: !3114)
!3118 = !DILocation(line: 0, scope: !346, inlinedAt: !3114)
!3119 = !DILocation(line: 274, column: 9, scope: !339, inlinedAt: !3114)
!3120 = !DILocation(line: 274, column: 64, scope: !346, inlinedAt: !3114)
!3121 = !DILocation(line: 274, column: 36, scope: !346, inlinedAt: !3114)
!3122 = !DILocation(line: 275, column: 24, scope: !356, inlinedAt: !3114)
!3123 = !DILocation(line: 275, column: 34, scope: !356, inlinedAt: !3114)
!3124 = !DILocation(line: 275, column: 9, scope: !356, inlinedAt: !3114)
!3125 = !DILocation(line: 275, column: 39, scope: !356, inlinedAt: !3114)
!3126 = !DILocation(line: 276, column: 20, scope: !362, inlinedAt: !3114)
!3127 = !DILocation(line: 276, column: 13, scope: !362, inlinedAt: !3114)
!3128 = !DILocation(line: 275, column: 9, scope: !339, inlinedAt: !3114)
!3129 = !DILocation(line: 1493, column: 25, scope: !368, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 276, column: 37, scope: !362, inlinedAt: !3114)
!3131 = !DILocation(line: 1494, column: 5, scope: !368, inlinedAt: !3130)
!3132 = !DILocation(line: 1495, column: 1, scope: !368, inlinedAt: !3130)
!3133 = !DILocation(line: 276, column: 37, scope: !362, inlinedAt: !3114)
!3134 = !DILocation(line: 281, column: 1, scope: !339, inlinedAt: !3114)
!3135 = !DILocation(line: 286, column: 5, scope: !901, inlinedAt: !3108)
!3136 = !DILocation(line: 970, column: 17, scope: !2976)
!3137 = !DILocation(line: 971, column: 23, scope: !2976)
!3138 = !{!1142, !209, i64 40}
!3139 = !DILocation(line: 971, column: 5, scope: !2976)
!3140 = !DILocation(line: 972, column: 1, scope: !2976)
!3141 = distinct !DISubprogram(name: "scanDatabaseForReadyLists", scope: !1, file: !1, line: 978, type: !3142, isLocal: false, isDefinition: true, scopeLine: 978, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3144)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{null, !93}
!3144 = !{!3145, !3146, !3147, !3148, !3150}
!3145 = !DILocalVariable(name: "db", arg: 1, scope: !3141, file: !1, line: 978, type: !93)
!3146 = !DILocalVariable(name: "de", scope: !3141, file: !1, line: 979, type: !136)
!3147 = !DILocalVariable(name: "di", scope: !3141, file: !1, line: 980, type: !1472)
!3148 = !DILocalVariable(name: "key", scope: !3149, file: !1, line: 982, type: !65)
!3149 = distinct !DILexicalBlock(scope: !3141, file: !1, line: 981, column: 40)
!3150 = !DILocalVariable(name: "value", scope: !3149, file: !1, line: 983, type: !65)
!3151 = !DILocation(line: 978, column: 41, scope: !3141)
!3152 = !DILocation(line: 980, column: 48, scope: !3141)
!3153 = !{!208, !209, i64 16}
!3154 = !DILocation(line: 980, column: 24, scope: !3141)
!3155 = !DILocation(line: 980, column: 19, scope: !3141)
!3156 = !DILocation(line: 981, column: 17, scope: !3141)
!3157 = !DILocation(line: 979, column: 16, scope: !3141)
!3158 = !DILocation(line: 981, column: 31, scope: !3141)
!3159 = !DILocation(line: 981, column: 5, scope: !3141)
!3160 = !DILocation(line: 982, column: 21, scope: !3149)
!3161 = !DILocation(line: 982, column: 15, scope: !3149)
!3162 = !DILocation(line: 55, column: 26, scope: !90, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 983, column: 23, scope: !3149)
!3164 = !DILocation(line: 55, column: 36, scope: !90, inlinedAt: !3163)
!3165 = !DILocation(line: 55, column: 45, scope: !90, inlinedAt: !3163)
!3166 = !DILocation(line: 56, column: 34, scope: !90, inlinedAt: !3163)
!3167 = !DILocation(line: 56, column: 44, scope: !90, inlinedAt: !3163)
!3168 = !DILocation(line: 56, column: 21, scope: !90, inlinedAt: !3163)
!3169 = !DILocation(line: 56, column: 16, scope: !90, inlinedAt: !3163)
!3170 = !DILocation(line: 57, column: 9, scope: !202, inlinedAt: !3163)
!3171 = !DILocation(line: 57, column: 9, scope: !90, inlinedAt: !3163)
!3172 = !DILocation(line: 77, column: 1, scope: !90, inlinedAt: !3163)
!3173 = !DILocation(line: 983, column: 15, scope: !3149)
!3174 = !DILocation(line: 984, column: 19, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3149, file: !1, line: 984, column: 13)
!3176 = !DILocation(line: 58, column: 21, scope: !201, inlinedAt: !3163)
!3177 = !DILocation(line: 58, column: 15, scope: !201, inlinedAt: !3163)
!3178 = !DILocation(line: 984, column: 13, scope: !3175)
!3179 = !DILocation(line: 984, column: 30, scope: !3175)
!3180 = !DILocation(line: 984, column: 47, scope: !3175)
!3181 = !DILocation(line: 987, column: 13, scope: !3175)
!3182 = distinct !{!3182, !3159, !3183}
!3183 = !DILocation(line: 988, column: 5, scope: !3141)
!3184 = !DILocation(line: 989, column: 5, scope: !3141)
!3185 = !DILocation(line: 990, column: 1, scope: !3141)
!3186 = distinct !DISubprogram(name: "dbSwapDatabases", scope: !1, file: !1, line: 1000, type: !3187, isLocal: false, isDefinition: true, scopeLine: 1000, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3189)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!8, !8, !8}
!3189 = !{!3190, !3191, !3192, !3193, !3194}
!3190 = !DILocalVariable(name: "id1", arg: 1, scope: !3186, file: !1, line: 1000, type: !8)
!3191 = !DILocalVariable(name: "id2", arg: 2, scope: !3186, file: !1, line: 1000, type: !8)
!3192 = !DILocalVariable(name: "aux", scope: !3186, file: !1, line: 1004, type: !94)
!3193 = !DILocalVariable(name: "db1", scope: !3186, file: !1, line: 1005, type: !93)
!3194 = !DILocalVariable(name: "db2", scope: !3186, file: !1, line: 1005, type: !93)
!3195 = !DILocation(line: 1000, column: 25, scope: !3186)
!3196 = !DILocation(line: 1000, column: 34, scope: !3186)
!3197 = !DILocation(line: 1001, column: 13, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3186, file: !1, line: 1001, column: 9)
!3199 = !DILocation(line: 1001, column: 17, scope: !3198)
!3200 = !DILocation(line: 1001, column: 34, scope: !3198)
!3201 = !DILocation(line: 1001, column: 24, scope: !3198)
!3202 = !DILocation(line: 1002, column: 13, scope: !3198)
!3203 = !DILocation(line: 1001, column: 40, scope: !3198)
!3204 = !DILocation(line: 1002, column: 24, scope: !3198)
!3205 = !DILocation(line: 1003, column: 13, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3186, file: !1, line: 1003, column: 9)
!3207 = !DILocation(line: 1003, column: 9, scope: !3186)
!3208 = !DILocation(line: 1004, column: 26, scope: !3186)
!3209 = !DILocation(line: 1004, column: 19, scope: !3186)
!3210 = !DILocation(line: 1004, column: 13, scope: !3186)
!3211 = !DILocation(line: 1005, column: 14, scope: !3186)
!3212 = !DILocation(line: 1005, column: 45, scope: !3186)
!3213 = !DILocation(line: 1005, column: 38, scope: !3186)
!3214 = !DILocation(line: 1010, column: 22, scope: !3186)
!3215 = !DILocation(line: 1010, column: 15, scope: !3186)
!3216 = !DILocation(line: 1012, column: 25, scope: !3186)
!3217 = !{!208, !213, i64 48}
!3218 = !DILocation(line: 1012, column: 18, scope: !3186)
!3219 = !DILocation(line: 1014, column: 15, scope: !3186)
!3220 = !DILocation(line: 1016, column: 18, scope: !3186)
!3221 = !DILocation(line: 1027, column: 5, scope: !3186)
!3222 = !DILocation(line: 1028, column: 5, scope: !3186)
!3223 = !DILocation(line: 0, scope: !3186)
!3224 = !DILocation(line: 1030, column: 1, scope: !3186)
!3225 = distinct !DISubprogram(name: "swapdbCommand", scope: !1, file: !1, line: 1033, type: !457, isLocal: false, isDefinition: true, scopeLine: 1033, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3226)
!3226 = !{!3227, !3228, !3229}
!3227 = !DILocalVariable(name: "c", arg: 1, scope: !3225, file: !1, line: 1033, type: !429)
!3228 = !DILocalVariable(name: "id1", scope: !3225, file: !1, line: 1034, type: !12)
!3229 = !DILocalVariable(name: "id2", scope: !3225, file: !1, line: 1034, type: !12)
!3230 = !DILocation(line: 1033, column: 28, scope: !3225)
!3231 = !DILocation(line: 1034, column: 5, scope: !3225)
!3232 = !DILocation(line: 1037, column: 16, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3225, file: !1, line: 1037, column: 9)
!3234 = !DILocation(line: 1037, column: 9, scope: !3233)
!3235 = !DILocation(line: 1037, column: 9, scope: !3225)
!3236 = !DILocation(line: 1038, column: 9, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3233, file: !1, line: 1037, column: 33)
!3238 = !DILocation(line: 1039, column: 9, scope: !3237)
!3239 = !DILocation(line: 1043, column: 40, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3225, file: !1, line: 1043, column: 9)
!3241 = !DILocation(line: 1043, column: 37, scope: !3240)
!3242 = !DILocation(line: 1034, column: 10, scope: !3225)
!3243 = !DILocation(line: 1043, column: 9, scope: !3240)
!3244 = !DILocation(line: 1044, column: 35, scope: !3240)
!3245 = !DILocation(line: 1043, column: 9, scope: !3225)
!3246 = !DILocation(line: 1047, column: 40, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3225, file: !1, line: 1047, column: 9)
!3248 = !DILocation(line: 1047, column: 37, scope: !3247)
!3249 = !DILocation(line: 1034, column: 15, scope: !3225)
!3250 = !DILocation(line: 1047, column: 9, scope: !3247)
!3251 = !DILocation(line: 1048, column: 36, scope: !3247)
!3252 = !DILocation(line: 1047, column: 9, scope: !3225)
!3253 = !DILocation(line: 1052, column: 25, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3225, file: !1, line: 1052, column: 9)
!3255 = !DILocation(line: 1052, column: 29, scope: !3254)
!3256 = !DILocation(line: 1000, column: 25, scope: !3186, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 1052, column: 9, scope: !3254)
!3258 = !DILocation(line: 1000, column: 34, scope: !3186, inlinedAt: !3257)
!3259 = !DILocation(line: 1001, column: 13, scope: !3198, inlinedAt: !3257)
!3260 = !DILocation(line: 1001, column: 17, scope: !3198, inlinedAt: !3257)
!3261 = !DILocation(line: 1001, column: 34, scope: !3198, inlinedAt: !3257)
!3262 = !DILocation(line: 1001, column: 24, scope: !3198, inlinedAt: !3257)
!3263 = !DILocation(line: 1002, column: 13, scope: !3198, inlinedAt: !3257)
!3264 = !DILocation(line: 1001, column: 40, scope: !3198, inlinedAt: !3257)
!3265 = !DILocation(line: 1002, column: 24, scope: !3198, inlinedAt: !3257)
!3266 = !DILocation(line: 1003, column: 13, scope: !3206, inlinedAt: !3257)
!3267 = !DILocation(line: 1003, column: 9, scope: !3186, inlinedAt: !3257)
!3268 = !DILocation(line: 1004, column: 26, scope: !3186, inlinedAt: !3257)
!3269 = !DILocation(line: 1004, column: 19, scope: !3186, inlinedAt: !3257)
!3270 = !DILocation(line: 1004, column: 13, scope: !3186, inlinedAt: !3257)
!3271 = !DILocation(line: 1005, column: 14, scope: !3186, inlinedAt: !3257)
!3272 = !DILocation(line: 1005, column: 45, scope: !3186, inlinedAt: !3257)
!3273 = !DILocation(line: 1005, column: 38, scope: !3186, inlinedAt: !3257)
!3274 = !DILocation(line: 1010, column: 22, scope: !3186, inlinedAt: !3257)
!3275 = !DILocation(line: 1010, column: 15, scope: !3186, inlinedAt: !3257)
!3276 = !DILocation(line: 1012, column: 25, scope: !3186, inlinedAt: !3257)
!3277 = !DILocation(line: 1012, column: 18, scope: !3186, inlinedAt: !3257)
!3278 = !DILocation(line: 1014, column: 15, scope: !3186, inlinedAt: !3257)
!3279 = !DILocation(line: 1016, column: 18, scope: !3186, inlinedAt: !3257)
!3280 = !DILocation(line: 1027, column: 5, scope: !3186, inlinedAt: !3257)
!3281 = !DILocation(line: 1028, column: 5, scope: !3186, inlinedAt: !3257)
!3282 = !DILocation(line: 1030, column: 1, scope: !3186, inlinedAt: !3257)
!3283 = !DILocation(line: 1053, column: 9, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3254, file: !1, line: 1052, column: 44)
!3285 = !DILocation(line: 1054, column: 9, scope: !3284)
!3286 = !DILocation(line: 1056, column: 21, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3254, file: !1, line: 1055, column: 12)
!3288 = !DILocation(line: 1057, column: 27, scope: !3287)
!3289 = !DILocation(line: 1057, column: 9, scope: !3287)
!3290 = !DILocation(line: 1059, column: 1, scope: !3225)
!3291 = distinct !DISubprogram(name: "propagateExpire", scope: !1, file: !1, line: 1113, type: !3292, isLocal: false, isDefinition: true, scopeLine: 1113, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3294)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{null, !93, !65, !8}
!3294 = !{!3295, !3296, !3297, !3298}
!3295 = !DILocalVariable(name: "db", arg: 1, scope: !3291, file: !1, line: 1113, type: !93)
!3296 = !DILocalVariable(name: "key", arg: 2, scope: !3291, file: !1, line: 1113, type: !65)
!3297 = !DILocalVariable(name: "lazy", arg: 3, scope: !3291, file: !1, line: 1113, type: !8)
!3298 = !DILocalVariable(name: "argv", scope: !3291, file: !1, line: 1114, type: !3299)
!3299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 128, elements: !155)
!3300 = !DILocation(line: 1113, column: 31, scope: !3291)
!3301 = !DILocation(line: 1113, column: 41, scope: !3291)
!3302 = !DILocation(line: 1113, column: 50, scope: !3291)
!3303 = !DILocation(line: 1114, column: 5, scope: !3291)
!3304 = !DILocation(line: 1114, column: 11, scope: !3291)
!3305 = !DILocation(line: 1116, column: 15, scope: !3291)
!3306 = !DILocation(line: 1116, column: 29, scope: !3291)
!3307 = !DILocation(line: 1116, column: 45, scope: !3291)
!3308 = !DILocation(line: 1116, column: 5, scope: !3291)
!3309 = !DILocation(line: 1116, column: 13, scope: !3291)
!3310 = !DILocation(line: 1117, column: 5, scope: !3291)
!3311 = !DILocation(line: 1117, column: 13, scope: !3291)
!3312 = !DILocation(line: 1118, column: 5, scope: !3291)
!3313 = !DILocation(line: 1119, column: 5, scope: !3291)
!3314 = !DILocation(line: 1121, column: 16, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3291, file: !1, line: 1121, column: 9)
!3316 = !{!227, !212, i64 1880}
!3317 = !DILocation(line: 1121, column: 26, scope: !3315)
!3318 = !DILocation(line: 1121, column: 9, scope: !3291)
!3319 = !DILocation(line: 1123, column: 45, scope: !3291)
!3320 = !DILocation(line: 1122, column: 35, scope: !3315)
!3321 = !{!227, !209, i64 896}
!3322 = !DILocation(line: 1122, column: 50, scope: !3315)
!3323 = !DILocation(line: 1122, column: 9, scope: !3315)
!3324 = !DILocation(line: 1123, column: 34, scope: !3291)
!3325 = !{!227, !209, i64 536}
!3326 = !DILocation(line: 1123, column: 5, scope: !3291)
!3327 = !DILocation(line: 1125, column: 18, scope: !3291)
!3328 = !DILocation(line: 1125, column: 5, scope: !3291)
!3329 = !DILocation(line: 1126, column: 18, scope: !3291)
!3330 = !DILocation(line: 1126, column: 5, scope: !3291)
!3331 = !DILocation(line: 1127, column: 1, scope: !3291)
!3332 = distinct !DISubprogram(name: "getKeysUsingCommandTable", scope: !1, file: !1, line: 1195, type: !465, isLocal: false, isDefinition: true, scopeLine: 1195, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3333)
!3333 = !{!3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341}
!3334 = !DILocalVariable(name: "cmd", arg: 1, scope: !3332, file: !1, line: 1195, type: !450)
!3335 = !DILocalVariable(name: "argv", arg: 2, scope: !3332, file: !1, line: 1195, type: !448)
!3336 = !DILocalVariable(name: "argc", arg: 3, scope: !3332, file: !1, line: 1195, type: !8)
!3337 = !DILocalVariable(name: "numkeys", arg: 4, scope: !3332, file: !1, line: 1195, type: !467)
!3338 = !DILocalVariable(name: "j", scope: !3332, file: !1, line: 1196, type: !8)
!3339 = !DILocalVariable(name: "i", scope: !3332, file: !1, line: 1196, type: !8)
!3340 = !DILocalVariable(name: "last", scope: !3332, file: !1, line: 1196, type: !8)
!3341 = !DILocalVariable(name: "keys", scope: !3332, file: !1, line: 1196, type: !467)
!3342 = !DILocation(line: 1195, column: 52, scope: !3332)
!3343 = !DILocation(line: 1195, column: 63, scope: !3332)
!3344 = !DILocation(line: 1195, column: 73, scope: !3332)
!3345 = !DILocation(line: 1195, column: 84, scope: !3332)
!3346 = !DILocation(line: 1196, column: 12, scope: !3332)
!3347 = !DILocation(line: 1199, column: 14, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3332, file: !1, line: 1199, column: 9)
!3349 = !{!299, !212, i64 48}
!3350 = !DILocation(line: 1199, column: 23, scope: !3348)
!3351 = !DILocation(line: 1199, column: 9, scope: !3332)
!3352 = !DILocation(line: 1204, column: 17, scope: !3332)
!3353 = !{!299, !212, i64 52}
!3354 = !DILocation(line: 1196, column: 19, scope: !3332)
!3355 = !DILocation(line: 1205, column: 14, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3332, file: !1, line: 1205, column: 9)
!3357 = !DILocation(line: 1205, column: 9, scope: !3332)
!3358 = !DILocation(line: 1206, column: 39, scope: !3332)
!3359 = !DILocation(line: 1206, column: 55, scope: !3332)
!3360 = !DILocation(line: 1206, column: 32, scope: !3332)
!3361 = !DILocation(line: 1206, column: 31, scope: !3332)
!3362 = !DILocation(line: 1206, column: 12, scope: !3332)
!3363 = !DILocation(line: 1196, column: 26, scope: !3332)
!3364 = !DILocation(line: 1207, column: 19, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3332, file: !1, line: 1207, column: 5)
!3366 = !DILocation(line: 1196, column: 9, scope: !3332)
!3367 = !DILocation(line: 1207, column: 31, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3365, file: !1, line: 1207, column: 5)
!3369 = !DILocation(line: 1207, column: 5, scope: !3365)
!3370 = !DILocation(line: 1208, column: 15, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !1, line: 1208, column: 13)
!3372 = distinct !DILexicalBlock(scope: !3368, file: !1, line: 1207, column: 59)
!3373 = !DILocation(line: 1208, column: 13, scope: !3372)
!3374 = !DILocation(line: 1215, column: 22, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !1, line: 1215, column: 17)
!3376 = distinct !DILexicalBlock(scope: !3371, file: !1, line: 1208, column: 24)
!3377 = !DILocation(line: 1215, column: 28, scope: !3375)
!3378 = !DILocation(line: 1215, column: 41, scope: !3375)
!3379 = !DILocation(line: 1215, column: 49, scope: !3375)
!3380 = !{!299, !212, i64 16}
!3381 = !DILocation(line: 1215, column: 55, scope: !3375)
!3382 = !DILocation(line: 1215, column: 17, scope: !3376)
!3383 = !DILocation(line: 1216, column: 17, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3375, file: !1, line: 1215, column: 60)
!3385 = !DILocation(line: 1218, column: 17, scope: !3384)
!3386 = !DILocation(line: 1220, column: 17, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3375, file: !1, line: 1219, column: 20)
!3388 = !DILocation(line: 1223, column: 15, scope: !3372)
!3389 = !DILocation(line: 1223, column: 9, scope: !3372)
!3390 = !DILocation(line: 1223, column: 19, scope: !3372)
!3391 = !DILocation(line: 1207, column: 50, scope: !3368)
!3392 = !{!299, !212, i64 56}
!3393 = !DILocation(line: 1207, column: 42, scope: !3368)
!3394 = distinct !{!3394, !3369, !3395}
!3395 = !DILocation(line: 1224, column: 5, scope: !3365)
!3396 = !DILocation(line: 1225, column: 14, scope: !3332)
!3397 = !DILocation(line: 0, scope: !3332)
!3398 = !DILocation(line: 0, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3348, file: !1, line: 1199, column: 29)
!3400 = !DILocation(line: 1227, column: 1, scope: !3332)
!3401 = distinct !DISubprogram(name: "getKeysFromCommand", scope: !1, file: !1, line: 1240, type: !465, isLocal: false, isDefinition: true, scopeLine: 1240, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3402)
!3402 = !{!3403, !3404, !3405, !3406}
!3403 = !DILocalVariable(name: "cmd", arg: 1, scope: !3401, file: !1, line: 1240, type: !450)
!3404 = !DILocalVariable(name: "argv", arg: 2, scope: !3401, file: !1, line: 1240, type: !448)
!3405 = !DILocalVariable(name: "argc", arg: 3, scope: !3401, file: !1, line: 1240, type: !8)
!3406 = !DILocalVariable(name: "numkeys", arg: 4, scope: !3401, file: !1, line: 1240, type: !467)
!3407 = !DILocation(line: 1240, column: 46, scope: !3401)
!3408 = !DILocation(line: 1240, column: 58, scope: !3401)
!3409 = !DILocation(line: 1240, column: 68, scope: !3401)
!3410 = !DILocation(line: 1240, column: 79, scope: !3401)
!3411 = !DILocation(line: 1241, column: 14, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3401, file: !1, line: 1241, column: 9)
!3413 = !DILocation(line: 1241, column: 20, scope: !3412)
!3414 = !DILocation(line: 1241, column: 9, scope: !3401)
!3415 = !DILocation(line: 1242, column: 16, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3412, file: !1, line: 1241, column: 42)
!3417 = !DILocation(line: 1242, column: 9, scope: !3416)
!3418 = !DILocation(line: 1243, column: 29, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3412, file: !1, line: 1243, column: 16)
!3420 = !DILocation(line: 1243, column: 43, scope: !3419)
!3421 = !DILocation(line: 1243, column: 51, scope: !3419)
!3422 = !{!299, !209, i64 40}
!3423 = !DILocation(line: 1243, column: 46, scope: !3419)
!3424 = !DILocation(line: 1243, column: 16, scope: !3412)
!3425 = !DILocation(line: 1244, column: 16, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3419, file: !1, line: 1243, column: 65)
!3427 = !DILocation(line: 1244, column: 9, scope: !3426)
!3428 = !DILocation(line: 1246, column: 16, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3419, file: !1, line: 1245, column: 12)
!3430 = !DILocation(line: 1246, column: 9, scope: !3429)
!3431 = !DILocation(line: 0, scope: !3426)
!3432 = !DILocation(line: 1248, column: 1, scope: !3401)
!3433 = distinct !DISubprogram(name: "getKeysFreeResult", scope: !1, file: !1, line: 1251, type: !3434, isLocal: false, isDefinition: true, scopeLine: 1251, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3436)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{null, !467}
!3436 = !{!3437}
!3437 = !DILocalVariable(name: "result", arg: 1, scope: !3433, file: !1, line: 1251, type: !467)
!3438 = !DILocation(line: 1251, column: 29, scope: !3433)
!3439 = !DILocation(line: 1252, column: 11, scope: !3433)
!3440 = !DILocation(line: 1252, column: 5, scope: !3433)
!3441 = !DILocation(line: 1253, column: 1, scope: !3433)
!3442 = distinct !DISubprogram(name: "zunionInterGetKeys", scope: !1, file: !1, line: 1258, type: !465, isLocal: false, isDefinition: true, scopeLine: 1258, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3443)
!3443 = !{!3444, !3445, !3446, !3447, !3448, !3449, !3450}
!3444 = !DILocalVariable(name: "cmd", arg: 1, scope: !3442, file: !1, line: 1258, type: !450)
!3445 = !DILocalVariable(name: "argv", arg: 2, scope: !3442, file: !1, line: 1258, type: !448)
!3446 = !DILocalVariable(name: "argc", arg: 3, scope: !3442, file: !1, line: 1258, type: !8)
!3447 = !DILocalVariable(name: "numkeys", arg: 4, scope: !3442, file: !1, line: 1258, type: !467)
!3448 = !DILocalVariable(name: "i", scope: !3442, file: !1, line: 1259, type: !8)
!3449 = !DILocalVariable(name: "num", scope: !3442, file: !1, line: 1259, type: !8)
!3450 = !DILocalVariable(name: "keys", scope: !3442, file: !1, line: 1259, type: !467)
!3451 = !DILocation(line: 1258, column: 46, scope: !3442)
!3452 = !DILocation(line: 1258, column: 58, scope: !3442)
!3453 = !DILocation(line: 1258, column: 68, scope: !3442)
!3454 = !DILocation(line: 1258, column: 79, scope: !3442)
!3455 = !DILocation(line: 1262, column: 16, scope: !3442)
!3456 = !DILocation(line: 1262, column: 25, scope: !3442)
!3457 = !DILocation(line: 1262, column: 11, scope: !3442)
!3458 = !DILocation(line: 1259, column: 12, scope: !3442)
!3459 = !DILocation(line: 1265, column: 13, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3442, file: !1, line: 1265, column: 9)
!3461 = !DILocation(line: 1265, column: 31, scope: !3460)
!3462 = !DILocation(line: 1265, column: 24, scope: !3460)
!3463 = !DILocation(line: 1265, column: 17, scope: !3460)
!3464 = !DILocation(line: 1273, column: 36, scope: !3442)
!3465 = !DILocation(line: 1273, column: 32, scope: !3442)
!3466 = !DILocation(line: 1273, column: 31, scope: !3442)
!3467 = !DILocation(line: 1273, column: 12, scope: !3442)
!3468 = !DILocation(line: 1259, column: 18, scope: !3442)
!3469 = !DILocation(line: 1259, column: 9, scope: !3442)
!3470 = !DILocation(line: 1276, column: 42, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3472, file: !1, line: 1276, column: 5)
!3472 = distinct !DILexicalBlock(scope: !3442, file: !1, line: 1276, column: 5)
!3473 = !DILocation(line: 1276, column: 27, scope: !3471)
!3474 = !DILocation(line: 1276, column: 39, scope: !3471)
!3475 = !DILocation(line: 1276, column: 31, scope: !3471)
!3476 = distinct !{!3476, !3477, !3478, !3479}
!3477 = !DILocation(line: 1276, column: 5, scope: !3472)
!3478 = !DILocation(line: 1276, column: 43, scope: !3472)
!3479 = !{!"llvm.loop.isvectorized", i32 1}
!3480 = distinct !{!3480, !3481}
!3481 = !{!"llvm.loop.unroll.disable"}
!3482 = !DILocation(line: 1276, column: 19, scope: !3471)
!3483 = distinct !{!3483, !3477, !3478, !3484, !3479}
!3484 = !{!"llvm.loop.unroll.runtime.disable"}
!3485 = !DILocation(line: 1279, column: 5, scope: !3442)
!3486 = !DILocation(line: 1279, column: 15, scope: !3442)
!3487 = !DILocation(line: 1281, column: 5, scope: !3442)
!3488 = !DILocation(line: 0, scope: !3442)
!3489 = !DILocation(line: 0, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3460, file: !1, line: 1265, column: 36)
!3491 = !DILocation(line: 1282, column: 1, scope: !3442)
!3492 = distinct !DISubprogram(name: "evalGetKeys", scope: !1, file: !1, line: 1287, type: !465, isLocal: false, isDefinition: true, scopeLine: 1287, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3493)
!3493 = !{!3494, !3495, !3496, !3497, !3498, !3499, !3500}
!3494 = !DILocalVariable(name: "cmd", arg: 1, scope: !3492, file: !1, line: 1287, type: !450)
!3495 = !DILocalVariable(name: "argv", arg: 2, scope: !3492, file: !1, line: 1287, type: !448)
!3496 = !DILocalVariable(name: "argc", arg: 3, scope: !3492, file: !1, line: 1287, type: !8)
!3497 = !DILocalVariable(name: "numkeys", arg: 4, scope: !3492, file: !1, line: 1287, type: !467)
!3498 = !DILocalVariable(name: "i", scope: !3492, file: !1, line: 1288, type: !8)
!3499 = !DILocalVariable(name: "num", scope: !3492, file: !1, line: 1288, type: !8)
!3500 = !DILocalVariable(name: "keys", scope: !3492, file: !1, line: 1288, type: !467)
!3501 = !DILocation(line: 1287, column: 39, scope: !3492)
!3502 = !DILocation(line: 1287, column: 51, scope: !3492)
!3503 = !DILocation(line: 1287, column: 61, scope: !3492)
!3504 = !DILocation(line: 1287, column: 72, scope: !3492)
!3505 = !DILocation(line: 1291, column: 16, scope: !3492)
!3506 = !DILocation(line: 1291, column: 25, scope: !3492)
!3507 = !DILocation(line: 1291, column: 11, scope: !3492)
!3508 = !DILocation(line: 1288, column: 12, scope: !3492)
!3509 = !DILocation(line: 1294, column: 13, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3492, file: !1, line: 1294, column: 9)
!3511 = !DILocation(line: 1294, column: 32, scope: !3510)
!3512 = !DILocation(line: 1294, column: 25, scope: !3510)
!3513 = !DILocation(line: 1294, column: 18, scope: !3510)
!3514 = !DILocation(line: 1295, column: 18, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3510, file: !1, line: 1294, column: 37)
!3516 = !DILocation(line: 1296, column: 9, scope: !3515)
!3517 = !DILocation(line: 1299, column: 32, scope: !3492)
!3518 = !DILocation(line: 1299, column: 31, scope: !3492)
!3519 = !DILocation(line: 1299, column: 12, scope: !3492)
!3520 = !DILocation(line: 1288, column: 18, scope: !3492)
!3521 = !DILocation(line: 1300, column: 14, scope: !3492)
!3522 = !DILocation(line: 1288, column: 9, scope: !3492)
!3523 = !DILocation(line: 1303, column: 42, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !1, line: 1303, column: 5)
!3525 = distinct !DILexicalBlock(scope: !3492, file: !1, line: 1303, column: 5)
!3526 = !DILocation(line: 1303, column: 27, scope: !3524)
!3527 = !DILocation(line: 1303, column: 39, scope: !3524)
!3528 = !DILocation(line: 1303, column: 31, scope: !3524)
!3529 = distinct !{!3529, !3530, !3531, !3479}
!3530 = !DILocation(line: 1303, column: 5, scope: !3525)
!3531 = !DILocation(line: 1303, column: 43, scope: !3525)
!3532 = distinct !{!3532, !3481}
!3533 = !DILocation(line: 1303, column: 19, scope: !3524)
!3534 = distinct !{!3534, !3530, !3531, !3484, !3479}
!3535 = !DILocation(line: 0, scope: !3492)
!3536 = !DILocation(line: 1306, column: 1, scope: !3492)
!3537 = distinct !DISubprogram(name: "sortGetKeys", scope: !1, file: !1, line: 1315, type: !465, isLocal: false, isDefinition: true, scopeLine: 1315, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3538)
!3538 = !{!3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548}
!3539 = !DILocalVariable(name: "cmd", arg: 1, scope: !3537, file: !1, line: 1315, type: !450)
!3540 = !DILocalVariable(name: "argv", arg: 2, scope: !3537, file: !1, line: 1315, type: !448)
!3541 = !DILocalVariable(name: "argc", arg: 3, scope: !3537, file: !1, line: 1315, type: !8)
!3542 = !DILocalVariable(name: "numkeys", arg: 4, scope: !3537, file: !1, line: 1315, type: !467)
!3543 = !DILocalVariable(name: "i", scope: !3537, file: !1, line: 1316, type: !8)
!3544 = !DILocalVariable(name: "j", scope: !3537, file: !1, line: 1316, type: !8)
!3545 = !DILocalVariable(name: "num", scope: !3537, file: !1, line: 1316, type: !8)
!3546 = !DILocalVariable(name: "keys", scope: !3537, file: !1, line: 1316, type: !467)
!3547 = !DILocalVariable(name: "found_store", scope: !3537, file: !1, line: 1316, type: !8)
!3548 = !DILocalVariable(name: "skiplist", scope: !3537, file: !1, line: 1331, type: !3549)
!3549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3550, size: 512, elements: !2444)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3537, file: !1, line: 1328, size: 128, elements: !3551)
!3551 = !{!3552, !3553}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3550, file: !1, line: 1329, baseType: !9, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !3550, file: !1, line: 1330, baseType: !8, size: 32, offset: 64)
!3554 = !DILocation(line: 1315, column: 39, scope: !3537)
!3555 = !DILocation(line: 1315, column: 51, scope: !3537)
!3556 = !DILocation(line: 1315, column: 61, scope: !3537)
!3557 = !DILocation(line: 1315, column: 72, scope: !3537)
!3558 = !DILocation(line: 1316, column: 27, scope: !3537)
!3559 = !DILocation(line: 1316, column: 15, scope: !3537)
!3560 = !DILocation(line: 1320, column: 12, scope: !3537)
!3561 = !DILocation(line: 1316, column: 21, scope: !3537)
!3562 = !DILocation(line: 1322, column: 17, scope: !3537)
!3563 = !DILocation(line: 1328, column: 5, scope: !3537)
!3564 = !DILocation(line: 1331, column: 7, scope: !3537)
!3565 = !DILocation(line: 1316, column: 9, scope: !3537)
!3566 = !DILocation(line: 1338, column: 19, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3568, file: !1, line: 1338, column: 5)
!3568 = distinct !DILexicalBlock(scope: !3537, file: !1, line: 1338, column: 5)
!3569 = !DILocation(line: 1338, column: 5, scope: !3568)
!3570 = !DILocation(line: 1316, column: 12, scope: !3537)
!3571 = !DILocation(line: 1339, column: 9, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !1, line: 1339, column: 9)
!3573 = distinct !DILexicalBlock(scope: !3567, file: !1, line: 1338, column: 32)
!3574 = !DILocation(line: 1340, column: 18, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3576, file: !1, line: 1340, column: 17)
!3576 = distinct !DILexicalBlock(scope: !3577, file: !1, line: 1339, column: 52)
!3577 = distinct !DILexicalBlock(scope: !3572, file: !1, line: 1339, column: 9)
!3578 = !DILocation(line: 1340, column: 17, scope: !3576)
!3579 = !DILocation(line: 1341, column: 34, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3575, file: !1, line: 1340, column: 61)
!3581 = !{!3582, !212, i64 8}
!3582 = !{!"", !209, i64 0, !212, i64 8}
!3583 = !DILocation(line: 1341, column: 19, scope: !3580)
!3584 = !DILocation(line: 1342, column: 17, scope: !3580)
!3585 = !DILocation(line: 1343, column: 25, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3575, file: !1, line: 1343, column: 24)
!3587 = !DILocation(line: 1343, column: 58, scope: !3586)
!3588 = !DILocation(line: 1348, column: 27, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3586, file: !1, line: 1343, column: 73)
!3590 = !DILocation(line: 1349, column: 17, scope: !3589)
!3591 = !DILocation(line: 1339, column: 48, scope: !3577)
!3592 = !DILocation(line: 1339, column: 33, scope: !3577)
!3593 = !{!3582, !209, i64 0}
!3594 = !DILocation(line: 1339, column: 38, scope: !3577)
!3595 = distinct !{!3595, !3571, !3596}
!3596 = !DILocation(line: 1351, column: 9, scope: !3572)
!3597 = !DILocation(line: 0, scope: !3568)
!3598 = !DILocation(line: 0, scope: !3537)
!3599 = !DILocation(line: 1338, column: 28, scope: !3567)
!3600 = distinct !{!3600, !3569, !3601}
!3601 = !DILocation(line: 1352, column: 5, scope: !3568)
!3602 = !DILocation(line: 0, scope: !3589)
!3603 = !DILocation(line: 1353, column: 20, scope: !3537)
!3604 = !DILocation(line: 1353, column: 14, scope: !3537)
!3605 = !DILocation(line: 1355, column: 1, scope: !3537)
!3606 = !DILocation(line: 1354, column: 5, scope: !3537)
!3607 = distinct !DISubprogram(name: "migrateGetKeys", scope: !1, file: !1, line: 1357, type: !465, isLocal: false, isDefinition: true, scopeLine: 1357, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3608)
!3608 = !{!3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616}
!3609 = !DILocalVariable(name: "cmd", arg: 1, scope: !3607, file: !1, line: 1357, type: !450)
!3610 = !DILocalVariable(name: "argv", arg: 2, scope: !3607, file: !1, line: 1357, type: !448)
!3611 = !DILocalVariable(name: "argc", arg: 3, scope: !3607, file: !1, line: 1357, type: !8)
!3612 = !DILocalVariable(name: "numkeys", arg: 4, scope: !3607, file: !1, line: 1357, type: !467)
!3613 = !DILocalVariable(name: "i", scope: !3607, file: !1, line: 1358, type: !8)
!3614 = !DILocalVariable(name: "num", scope: !3607, file: !1, line: 1358, type: !8)
!3615 = !DILocalVariable(name: "first", scope: !3607, file: !1, line: 1358, type: !8)
!3616 = !DILocalVariable(name: "keys", scope: !3607, file: !1, line: 1358, type: !467)
!3617 = !DILocation(line: 1357, column: 42, scope: !3607)
!3618 = !DILocation(line: 1357, column: 54, scope: !3607)
!3619 = !DILocation(line: 1357, column: 64, scope: !3607)
!3620 = !DILocation(line: 1357, column: 75, scope: !3607)
!3621 = !DILocation(line: 1358, column: 17, scope: !3607)
!3622 = !DILocation(line: 1358, column: 12, scope: !3607)
!3623 = !DILocation(line: 1366, column: 14, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3607, file: !1, line: 1366, column: 9)
!3625 = !DILocation(line: 1366, column: 9, scope: !3607)
!3626 = !DILocation(line: 1358, column: 9, scope: !3607)
!3627 = !DILocation(line: 1367, column: 9, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3629, file: !1, line: 1367, column: 9)
!3629 = distinct !DILexicalBlock(scope: !3624, file: !1, line: 1366, column: 19)
!3630 = !DILocation(line: 1368, column: 29, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3632, file: !1, line: 1368, column: 17)
!3632 = distinct !DILexicalBlock(scope: !3633, file: !1, line: 1367, column: 36)
!3633 = distinct !DILexicalBlock(scope: !3628, file: !1, line: 1367, column: 9)
!3634 = !DILocation(line: 1368, column: 38, scope: !3631)
!3635 = !DILocation(line: 1368, column: 18, scope: !3631)
!3636 = !DILocation(line: 1368, column: 50, scope: !3631)
!3637 = !DILocation(line: 1369, column: 24, scope: !3631)
!3638 = !DILocation(line: 1369, column: 33, scope: !3631)
!3639 = !DILocation(line: 87, column: 39, scope: !819, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 1369, column: 17, scope: !3631)
!3641 = !DILocation(line: 88, column: 27, scope: !819, inlinedAt: !3640)
!3642 = !DILocation(line: 88, column: 19, scope: !819, inlinedAt: !3640)
!3643 = !DILocation(line: 89, column: 5, scope: !819, inlinedAt: !3640)
!3644 = !DILocation(line: 102, column: 1, scope: !819, inlinedAt: !3640)
!3645 = !DILocation(line: 1368, column: 17, scope: !3632)
!3646 = !DILocation(line: 91, column: 20, scope: !833, inlinedAt: !3640)
!3647 = !DILocation(line: 91, column: 13, scope: !833, inlinedAt: !3640)
!3648 = !DILocation(line: 93, column: 20, scope: !833, inlinedAt: !3640)
!3649 = !DILocation(line: 93, column: 34, scope: !833, inlinedAt: !3640)
!3650 = !DILocation(line: 93, column: 13, scope: !833, inlinedAt: !3640)
!3651 = !DILocation(line: 95, column: 20, scope: !833, inlinedAt: !3640)
!3652 = !DILocation(line: 95, column: 35, scope: !833, inlinedAt: !3640)
!3653 = !DILocation(line: 95, column: 13, scope: !833, inlinedAt: !3640)
!3654 = !DILocation(line: 97, column: 20, scope: !833, inlinedAt: !3640)
!3655 = !DILocation(line: 97, column: 35, scope: !833, inlinedAt: !3640)
!3656 = !DILocation(line: 97, column: 13, scope: !833, inlinedAt: !3640)
!3657 = !DILocation(line: 99, column: 20, scope: !833, inlinedAt: !3640)
!3658 = !DILocation(line: 99, column: 35, scope: !833, inlinedAt: !3640)
!3659 = !DILocation(line: 99, column: 13, scope: !833, inlinedAt: !3640)
!3660 = !DILocation(line: 0, scope: !833, inlinedAt: !3640)
!3661 = !DILocation(line: 1369, column: 38, scope: !3631)
!3662 = !DILocation(line: 1371, column: 26, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3631, file: !1, line: 1370, column: 13)
!3664 = !DILocation(line: 1372, column: 27, scope: !3663)
!3665 = !DILocation(line: 1373, column: 17, scope: !3663)
!3666 = !DILocation(line: 1367, column: 32, scope: !3633)
!3667 = !DILocation(line: 1367, column: 23, scope: !3633)
!3668 = distinct !{!3668, !3627, !3669}
!3669 = !DILocation(line: 1375, column: 9, scope: !3628)
!3670 = !DILocation(line: 0, scope: !3607)
!3671 = !DILocation(line: 1378, column: 32, scope: !3607)
!3672 = !DILocation(line: 1378, column: 31, scope: !3607)
!3673 = !DILocation(line: 1378, column: 12, scope: !3607)
!3674 = !DILocation(line: 1358, column: 25, scope: !3607)
!3675 = !DILocation(line: 1379, column: 19, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3677, file: !1, line: 1379, column: 5)
!3677 = distinct !DILexicalBlock(scope: !3607, file: !1, line: 1379, column: 5)
!3678 = !DILocation(line: 1379, column: 5, scope: !3677)
!3679 = !DILocation(line: 1379, column: 46, scope: !3676)
!3680 = !DILocation(line: 1379, column: 27, scope: !3676)
!3681 = !DILocation(line: 1379, column: 31, scope: !3676)
!3682 = !DILocation(line: 1379, column: 39, scope: !3676)
!3683 = distinct !{!3683, !3678, !3684, !3479}
!3684 = !DILocation(line: 1379, column: 47, scope: !3677)
!3685 = distinct !{!3685, !3678, !3684, !3484, !3479}
!3686 = !DILocation(line: 1380, column: 14, scope: !3607)
!3687 = !DILocation(line: 1381, column: 5, scope: !3607)
!3688 = distinct !DISubprogram(name: "georadiusGetKeys", scope: !1, file: !1, line: 1388, type: !465, isLocal: false, isDefinition: true, scopeLine: 1388, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3689)
!3689 = !{!3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698}
!3690 = !DILocalVariable(name: "cmd", arg: 1, scope: !3688, file: !1, line: 1388, type: !450)
!3691 = !DILocalVariable(name: "argv", arg: 2, scope: !3688, file: !1, line: 1388, type: !448)
!3692 = !DILocalVariable(name: "argc", arg: 3, scope: !3688, file: !1, line: 1388, type: !8)
!3693 = !DILocalVariable(name: "numkeys", arg: 4, scope: !3688, file: !1, line: 1388, type: !467)
!3694 = !DILocalVariable(name: "i", scope: !3688, file: !1, line: 1389, type: !8)
!3695 = !DILocalVariable(name: "num", scope: !3688, file: !1, line: 1389, type: !8)
!3696 = !DILocalVariable(name: "keys", scope: !3688, file: !1, line: 1389, type: !467)
!3697 = !DILocalVariable(name: "stored_key", scope: !3688, file: !1, line: 1393, type: !8)
!3698 = !DILocalVariable(name: "arg", scope: !3699, file: !1, line: 1395, type: !9)
!3699 = distinct !DILexicalBlock(scope: !3700, file: !1, line: 1394, column: 32)
!3700 = distinct !DILexicalBlock(scope: !3701, file: !1, line: 1394, column: 5)
!3701 = distinct !DILexicalBlock(scope: !3688, file: !1, line: 1394, column: 5)
!3702 = !DILocation(line: 1388, column: 44, scope: !3688)
!3703 = !DILocation(line: 1388, column: 56, scope: !3688)
!3704 = !DILocation(line: 1388, column: 66, scope: !3688)
!3705 = !DILocation(line: 1388, column: 77, scope: !3688)
!3706 = !DILocation(line: 1393, column: 9, scope: !3688)
!3707 = !DILocation(line: 1389, column: 9, scope: !3688)
!3708 = !DILocation(line: 1394, column: 19, scope: !3700)
!3709 = !DILocation(line: 1394, column: 5, scope: !3701)
!3710 = !DILocation(line: 1395, column: 21, scope: !3699)
!3711 = !DILocation(line: 1395, column: 30, scope: !3699)
!3712 = !DILocation(line: 1395, column: 15, scope: !3699)
!3713 = !DILocation(line: 1400, column: 15, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3699, file: !1, line: 1400, column: 13)
!3715 = !DILocation(line: 1400, column: 40, scope: !3714)
!3716 = !DILocation(line: 1400, column: 44, scope: !3714)
!3717 = !DILocation(line: 1400, column: 74, scope: !3714)
!3718 = !DILocation(line: 1400, column: 80, scope: !3714)
!3719 = !DILocation(line: 1400, column: 84, scope: !3714)
!3720 = !DILocation(line: 1400, column: 13, scope: !3699)
!3721 = !DILocation(line: 0, scope: !3688)
!3722 = !DILocation(line: 0, scope: !3701)
!3723 = !DILocation(line: 1394, column: 28, scope: !3700)
!3724 = distinct !{!3724, !3709, !3725}
!3725 = !DILocation(line: 1404, column: 5, scope: !3701)
!3726 = !DILocation(line: 1405, column: 27, scope: !3688)
!3727 = !DILocation(line: 1405, column: 13, scope: !3688)
!3728 = !DILocation(line: 1389, column: 12, scope: !3688)
!3729 = !DILocation(line: 1411, column: 32, scope: !3688)
!3730 = !DILocation(line: 1411, column: 12, scope: !3688)
!3731 = !DILocation(line: 1389, column: 18, scope: !3688)
!3732 = !DILocation(line: 1414, column: 13, scope: !3688)
!3733 = !DILocation(line: 1415, column: 8, scope: !3688)
!3734 = !DILocation(line: 1416, column: 10, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3736, file: !1, line: 1415, column: 17)
!3736 = distinct !DILexicalBlock(scope: !3688, file: !1, line: 1415, column: 8)
!3737 = !DILocation(line: 1416, column: 18, scope: !3735)
!3738 = !DILocation(line: 1417, column: 5, scope: !3735)
!3739 = !DILocation(line: 1418, column: 14, scope: !3688)
!3740 = !DILocation(line: 1419, column: 5, scope: !3688)
!3741 = distinct !DISubprogram(name: "xreadGetKeys", scope: !1, file: !1, line: 1424, type: !465, isLocal: false, isDefinition: true, scopeLine: 1424, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3742)
!3742 = !{!3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751}
!3743 = !DILocalVariable(name: "cmd", arg: 1, scope: !3741, file: !1, line: 1424, type: !450)
!3744 = !DILocalVariable(name: "argv", arg: 2, scope: !3741, file: !1, line: 1424, type: !448)
!3745 = !DILocalVariable(name: "argc", arg: 3, scope: !3741, file: !1, line: 1424, type: !8)
!3746 = !DILocalVariable(name: "numkeys", arg: 4, scope: !3741, file: !1, line: 1424, type: !467)
!3747 = !DILocalVariable(name: "i", scope: !3741, file: !1, line: 1425, type: !8)
!3748 = !DILocalVariable(name: "num", scope: !3741, file: !1, line: 1425, type: !8)
!3749 = !DILocalVariable(name: "keys", scope: !3741, file: !1, line: 1425, type: !467)
!3750 = !DILocalVariable(name: "streams_pos", scope: !3741, file: !1, line: 1432, type: !8)
!3751 = !DILocalVariable(name: "arg", scope: !3752, file: !1, line: 1434, type: !9)
!3752 = distinct !DILexicalBlock(scope: !3753, file: !1, line: 1433, column: 32)
!3753 = distinct !DILexicalBlock(scope: !3754, file: !1, line: 1433, column: 5)
!3754 = distinct !DILexicalBlock(scope: !3741, file: !1, line: 1433, column: 5)
!3755 = !DILocation(line: 1424, column: 40, scope: !3741)
!3756 = !DILocation(line: 1424, column: 52, scope: !3741)
!3757 = !DILocation(line: 1424, column: 62, scope: !3741)
!3758 = !DILocation(line: 1424, column: 73, scope: !3741)
!3759 = !DILocation(line: 1425, column: 12, scope: !3741)
!3760 = !DILocation(line: 1432, column: 9, scope: !3741)
!3761 = !DILocation(line: 1425, column: 9, scope: !3741)
!3762 = !DILocation(line: 1433, column: 19, scope: !3753)
!3763 = !DILocation(line: 1433, column: 5, scope: !3754)
!3764 = !DILocation(line: 1434, column: 21, scope: !3752)
!3765 = !DILocation(line: 1434, column: 30, scope: !3752)
!3766 = !DILocation(line: 1434, column: 15, scope: !3752)
!3767 = !DILocation(line: 1435, column: 14, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3752, file: !1, line: 1435, column: 13)
!3769 = !DILocation(line: 1435, column: 13, scope: !3752)
!3770 = !DILocation(line: 1436, column: 14, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3768, file: !1, line: 1435, column: 40)
!3772 = !DILocation(line: 1437, column: 9, scope: !3771)
!3773 = !DILocation(line: 1437, column: 21, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3768, file: !1, line: 1437, column: 20)
!3775 = !DILocation(line: 1437, column: 20, scope: !3768)
!3776 = !DILocation(line: 1438, column: 14, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3774, file: !1, line: 1437, column: 47)
!3778 = !DILocation(line: 1439, column: 9, scope: !3777)
!3779 = !DILocation(line: 1439, column: 21, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3774, file: !1, line: 1439, column: 20)
!3781 = !DILocation(line: 1439, column: 20, scope: !3774)
!3782 = !DILocation(line: 1440, column: 15, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3780, file: !1, line: 1439, column: 47)
!3784 = !DILocation(line: 1441, column: 9, scope: !3783)
!3785 = !DILocation(line: 1441, column: 21, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3780, file: !1, line: 1441, column: 20)
!3787 = !DILocation(line: 1441, column: 20, scope: !3780)
!3788 = !DILocation(line: 1443, column: 21, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3786, file: !1, line: 1443, column: 20)
!3790 = !DILocation(line: 1445, column: 13, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3789, file: !1, line: 1443, column: 49)
!3792 = !DILocation(line: 1433, column: 28, scope: !3753)
!3793 = distinct !{!3793, !3763, !3794}
!3794 = !DILocation(line: 1449, column: 5, scope: !3754)
!3795 = !DILocation(line: 1450, column: 21, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3741, file: !1, line: 1450, column: 9)
!3797 = !DILocation(line: 1450, column: 53, scope: !3796)
!3798 = !DILocation(line: 1450, column: 9, scope: !3741)
!3799 = !DILocation(line: 1453, column: 34, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3741, file: !1, line: 1453, column: 9)
!3801 = !DILocation(line: 1453, column: 27, scope: !3800)
!3802 = !DILocation(line: 1453, column: 50, scope: !3800)
!3803 = !DILocation(line: 1457, column: 9, scope: !3741)
!3804 = !DILocation(line: 1460, column: 34, scope: !3741)
!3805 = !DILocation(line: 1460, column: 32, scope: !3741)
!3806 = !DILocation(line: 1460, column: 12, scope: !3741)
!3807 = !DILocation(line: 1425, column: 22, scope: !3741)
!3808 = !DILocation(line: 0, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3810, file: !1, line: 1461, column: 5)
!3810 = distinct !DILexicalBlock(scope: !3741, file: !1, line: 1461, column: 5)
!3811 = !DILocation(line: 1461, column: 37, scope: !3809)
!3812 = !DILocation(line: 1461, column: 31, scope: !3809)
!3813 = !DILocation(line: 1461, column: 5, scope: !3810)
!3814 = !DILocation(line: 1461, column: 66, scope: !3809)
!3815 = !DILocation(line: 1461, column: 70, scope: !3809)
!3816 = !DILocation(line: 1461, column: 48, scope: !3809)
!3817 = distinct !{!3817, !3813, !3818, !3479}
!3818 = !DILocation(line: 1461, column: 72, scope: !3810)
!3819 = distinct !{!3819, !3481}
!3820 = distinct !{!3820, !3813, !3818, !3479}
!3821 = !DILocation(line: 0, scope: !3741)
!3822 = !DILocation(line: 0, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3800, file: !1, line: 1453, column: 56)
!3824 = !DILocation(line: 1464, column: 1, scope: !3741)
!3825 = distinct !DISubprogram(name: "slotToKeyUpdateKey", scope: !1, file: !1, line: 1470, type: !3826, isLocal: false, isDefinition: true, scopeLine: 1470, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3828)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{null, !65, !8}
!3828 = !{!3829, !3830, !3831, !3832, !3836, !3837}
!3829 = !DILocalVariable(name: "key", arg: 1, scope: !3825, file: !1, line: 1470, type: !65)
!3830 = !DILocalVariable(name: "add", arg: 2, scope: !3825, file: !1, line: 1470, type: !8)
!3831 = !DILocalVariable(name: "hashslot", scope: !3825, file: !1, line: 1471, type: !45)
!3832 = !DILocalVariable(name: "buf", scope: !3825, file: !1, line: 1472, type: !3833)
!3833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, elements: !3834)
!3834 = !{!3835}
!3835 = !DISubrange(count: 64)
!3836 = !DILocalVariable(name: "indexed", scope: !3825, file: !1, line: 1473, type: !1923)
!3837 = !DILocalVariable(name: "keylen", scope: !3825, file: !1, line: 1474, type: !440)
!3838 = !DILocation(line: 1470, column: 31, scope: !3825)
!3839 = !DILocation(line: 1470, column: 40, scope: !3825)
!3840 = !DILocation(line: 1471, column: 46, scope: !3825)
!3841 = !DILocation(line: 87, column: 39, scope: !819, inlinedAt: !3842)
!3842 = distinct !DILocation(line: 1471, column: 50, scope: !3825)
!3843 = !DILocation(line: 88, column: 27, scope: !819, inlinedAt: !3842)
!3844 = !DILocation(line: 88, column: 19, scope: !819, inlinedAt: !3842)
!3845 = !DILocation(line: 89, column: 5, scope: !819, inlinedAt: !3842)
!3846 = !DILocation(line: 91, column: 20, scope: !833, inlinedAt: !3842)
!3847 = !DILocation(line: 91, column: 13, scope: !833, inlinedAt: !3842)
!3848 = !DILocation(line: 93, column: 20, scope: !833, inlinedAt: !3842)
!3849 = !DILocation(line: 93, column: 34, scope: !833, inlinedAt: !3842)
!3850 = !DILocation(line: 93, column: 13, scope: !833, inlinedAt: !3842)
!3851 = !DILocation(line: 95, column: 20, scope: !833, inlinedAt: !3842)
!3852 = !DILocation(line: 95, column: 35, scope: !833, inlinedAt: !3842)
!3853 = !DILocation(line: 95, column: 13, scope: !833, inlinedAt: !3842)
!3854 = !DILocation(line: 97, column: 20, scope: !833, inlinedAt: !3842)
!3855 = !DILocation(line: 97, column: 35, scope: !833, inlinedAt: !3842)
!3856 = !DILocation(line: 97, column: 13, scope: !833, inlinedAt: !3842)
!3857 = !DILocation(line: 99, column: 20, scope: !833, inlinedAt: !3842)
!3858 = !DILocation(line: 99, column: 35, scope: !833, inlinedAt: !3842)
!3859 = !DILocation(line: 99, column: 13, scope: !833, inlinedAt: !3842)
!3860 = !DILocation(line: 0, scope: !833, inlinedAt: !3842)
!3861 = !DILocation(line: 102, column: 1, scope: !819, inlinedAt: !3842)
!3862 = !DILocation(line: 1471, column: 50, scope: !3825)
!3863 = !DILocation(line: 1471, column: 29, scope: !3825)
!3864 = !DILocation(line: 1471, column: 18, scope: !3825)
!3865 = !DILocation(line: 1472, column: 5, scope: !3825)
!3866 = !DILocation(line: 1472, column: 19, scope: !3825)
!3867 = !DILocation(line: 1473, column: 20, scope: !3825)
!3868 = !DILocation(line: 1474, column: 33, scope: !3825)
!3869 = !DILocation(line: 87, column: 39, scope: !819, inlinedAt: !3870)
!3870 = distinct !DILocation(line: 1474, column: 21, scope: !3825)
!3871 = !DILocation(line: 88, column: 27, scope: !819, inlinedAt: !3870)
!3872 = !DILocation(line: 88, column: 19, scope: !819, inlinedAt: !3870)
!3873 = !DILocation(line: 89, column: 5, scope: !819, inlinedAt: !3870)
!3874 = !DILocation(line: 91, column: 20, scope: !833, inlinedAt: !3870)
!3875 = !DILocation(line: 91, column: 13, scope: !833, inlinedAt: !3870)
!3876 = !DILocation(line: 93, column: 20, scope: !833, inlinedAt: !3870)
!3877 = !DILocation(line: 93, column: 34, scope: !833, inlinedAt: !3870)
!3878 = !DILocation(line: 93, column: 13, scope: !833, inlinedAt: !3870)
!3879 = !DILocation(line: 95, column: 20, scope: !833, inlinedAt: !3870)
!3880 = !DILocation(line: 95, column: 35, scope: !833, inlinedAt: !3870)
!3881 = !DILocation(line: 95, column: 13, scope: !833, inlinedAt: !3870)
!3882 = !DILocation(line: 97, column: 20, scope: !833, inlinedAt: !3870)
!3883 = !DILocation(line: 97, column: 35, scope: !833, inlinedAt: !3870)
!3884 = !DILocation(line: 97, column: 13, scope: !833, inlinedAt: !3870)
!3885 = !DILocation(line: 99, column: 20, scope: !833, inlinedAt: !3870)
!3886 = !DILocation(line: 99, column: 35, scope: !833, inlinedAt: !3870)
!3887 = !DILocation(line: 99, column: 13, scope: !833, inlinedAt: !3870)
!3888 = !DILocation(line: 0, scope: !833, inlinedAt: !3870)
!3889 = !DILocation(line: 102, column: 1, scope: !819, inlinedAt: !3870)
!3890 = !DILocation(line: 1474, column: 12, scope: !3825)
!3891 = !DILocation(line: 1476, column: 51, scope: !3825)
!3892 = !DILocation(line: 1476, column: 12, scope: !3825)
!3893 = !DILocation(line: 1476, column: 5, scope: !3825)
!3894 = !DILocation(line: 1476, column: 48, scope: !3825)
!3895 = !DILocation(line: 1477, column: 15, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3825, file: !1, line: 1477, column: 9)
!3897 = !DILocation(line: 1477, column: 18, scope: !3896)
!3898 = !DILocation(line: 1477, column: 9, scope: !3825)
!3899 = !DILocation(line: 1477, column: 34, scope: !3896)
!3900 = !DILocation(line: 1477, column: 24, scope: !3896)
!3901 = !DILocation(line: 0, scope: !3825)
!3902 = !DILocation(line: 1478, column: 28, scope: !3825)
!3903 = !DILocation(line: 1478, column: 18, scope: !3825)
!3904 = !DILocation(line: 1478, column: 16, scope: !3825)
!3905 = !DILocation(line: 1479, column: 18, scope: !3825)
!3906 = !DILocation(line: 1479, column: 5, scope: !3825)
!3907 = !DILocation(line: 1479, column: 16, scope: !3825)
!3908 = !DILocation(line: 1480, column: 19, scope: !3825)
!3909 = !DILocation(line: 1480, column: 27, scope: !3825)
!3910 = !DILocation(line: 1480, column: 5, scope: !3825)
!3911 = !DILocation(line: 0, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3913, file: !1, line: 1483, column: 12)
!3913 = distinct !DILexicalBlock(scope: !3825, file: !1, line: 1481, column: 9)
!3914 = !DILocation(line: 1481, column: 9, scope: !3825)
!3915 = !DILocation(line: 1482, column: 9, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3913, file: !1, line: 1481, column: 14)
!3917 = !DILocation(line: 1483, column: 5, scope: !3916)
!3918 = !DILocation(line: 1484, column: 9, scope: !3912)
!3919 = !DILocation(line: 1486, column: 17, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3825, file: !1, line: 1486, column: 9)
!3921 = !DILocation(line: 1486, column: 9, scope: !3825)
!3922 = !DILocation(line: 1486, column: 25, scope: !3920)
!3923 = !DILocation(line: 1487, column: 1, scope: !3825)
!3924 = distinct !DISubprogram(name: "getKeysInSlot", scope: !1, file: !1, line: 1507, type: !3925, isLocal: false, isDefinition: true, scopeLine: 1507, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3927)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!45, !45, !448, !45}
!3927 = !{!3928, !3929, !3930, !3931, !3979, !3980}
!3928 = !DILocalVariable(name: "hashslot", arg: 1, scope: !3924, file: !1, line: 1507, type: !45)
!3929 = !DILocalVariable(name: "keys", arg: 2, scope: !3924, file: !1, line: 1507, type: !448)
!3930 = !DILocalVariable(name: "count", arg: 3, scope: !3924, file: !1, line: 1507, type: !45)
!3931 = !DILocalVariable(name: "iter", scope: !3924, file: !1, line: 1508, type: !3932)
!3932 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxIterator", file: !3933, line: 186, baseType: !3934)
!3933 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rax.h", directory: "/root/.unikraft/apps/redis/build")
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxIterator", file: !3933, line: 175, size: 3840, elements: !3935)
!3935 = !{!3936, !3937, !3955, !3956, !3957, !3958, !3959, !3963, !3964, !3973}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3934, file: !3933, line: 176, baseType: !8, size: 32)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3934, file: !3933, line: 177, baseType: !3938, size: 64, offset: 64)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !3933, line: 137, baseType: !3940)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !3933, line: 133, size: 192, elements: !3941)
!3941 = !{!3942, !3953, !3954}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3940, file: !3933, line: 134, baseType: !3943, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !3933, line: 131, baseType: !3945)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !3933, line: 98, size: 32, elements: !3946)
!3946 = !{!3947, !3948, !3949, !3950, !3951}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !3945, file: !3933, line: 99, baseType: !43, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !3945, file: !3933, line: 100, baseType: !43, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !3945, file: !3933, line: 101, baseType: !43, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3945, file: !3933, line: 102, baseType: !43, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3945, file: !3933, line: 130, baseType: !3952, offset: 32)
!3952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, elements: !27)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !3940, file: !3933, line: 135, baseType: !53, size: 64, offset: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !3940, file: !3933, line: 136, baseType: !53, size: 64, offset: 128)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3934, file: !3933, line: 178, baseType: !1923, size: 64, offset: 128)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3934, file: !3933, line: 179, baseType: !4, size: 64, offset: 192)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !3934, file: !3933, line: 180, baseType: !440, size: 64, offset: 256)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "key_max", scope: !3934, file: !3933, line: 181, baseType: !440, size: 64, offset: 320)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "key_static_string", scope: !3934, file: !3933, line: 182, baseType: !3960, size: 1024, offset: 384)
!3960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1024, elements: !3961)
!3961 = !{!3962}
!3962 = !DISubrange(count: 128)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3934, file: !3933, line: 183, baseType: !3943, size: 64, offset: 1408)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3934, file: !3933, line: 184, baseType: !3965, size: 2304, offset: 1472)
!3965 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxStack", file: !3933, line: 150, baseType: !3966)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxStack", file: !3933, line: 143, size: 2304, elements: !3967)
!3967 = !{!3968, !3969, !3970, !3971, !3972}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3966, file: !3933, line: 144, baseType: !5, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !3966, file: !3933, line: 145, baseType: !440, size: 64, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "maxitems", scope: !3966, file: !3933, line: 145, baseType: !440, size: 64, offset: 128)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "static_items", scope: !3966, file: !3933, line: 148, baseType: !2487, size: 2048, offset: 192)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "oom", scope: !3966, file: !3933, line: 149, baseType: !8, size: 32, offset: 2240)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "node_cb", scope: !3934, file: !3933, line: 185, baseType: !3974, size: 64, offset: 3776)
!3974 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNodeCallback", file: !3933, line: 165, baseType: !3975)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!8, !3978}
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3979 = !DILocalVariable(name: "j", scope: !3924, file: !1, line: 1509, type: !8)
!3980 = !DILocalVariable(name: "indexed", scope: !3924, file: !1, line: 1510, type: !3981)
!3981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 16, elements: !155)
!3982 = !DILocation(line: 1507, column: 41, scope: !3924)
!3983 = !DILocation(line: 1507, column: 58, scope: !3924)
!3984 = !DILocation(line: 1507, column: 77, scope: !3924)
!3985 = !DILocation(line: 1508, column: 5, scope: !3924)
!3986 = !DILocation(line: 1509, column: 9, scope: !3924)
!3987 = !DILocation(line: 1510, column: 5, scope: !3924)
!3988 = !DILocation(line: 1510, column: 19, scope: !3924)
!3989 = !DILocation(line: 1512, column: 28, scope: !3924)
!3990 = !DILocation(line: 1512, column: 18, scope: !3924)
!3991 = !DILocation(line: 1512, column: 16, scope: !3924)
!3992 = !DILocation(line: 1513, column: 18, scope: !3924)
!3993 = !DILocation(line: 1513, column: 5, scope: !3924)
!3994 = !DILocation(line: 1513, column: 16, scope: !3924)
!3995 = !DILocation(line: 1514, column: 27, scope: !3924)
!3996 = !DILocation(line: 1514, column: 36, scope: !3924)
!3997 = !DILocation(line: 1508, column: 17, scope: !3924)
!3998 = !DILocation(line: 1514, column: 5, scope: !3924)
!3999 = !DILocation(line: 1515, column: 5, scope: !3924)
!4000 = !DILocation(line: 1517, column: 18, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !4002, file: !1, line: 1517, column: 13)
!4002 = distinct !DILexicalBlock(scope: !3924, file: !1, line: 1516, column: 38)
!4003 = !DILocation(line: 1516, column: 16, scope: !3924)
!4004 = !DILocation(line: 1516, column: 19, scope: !3924)
!4005 = !DILocation(line: 1516, column: 22, scope: !3924)
!4006 = !DILocation(line: 1516, column: 5, scope: !3924)
!4007 = !{!4008, !209, i64 16}
!4008 = !{!"raxIterator", !212, i64 0, !209, i64 8, !209, i64 16, !209, i64 24, !228, i64 32, !228, i64 40, !210, i64 48, !209, i64 176, !4009, i64 184, !209, i64 472}
!4009 = !{!"raxStack", !209, i64 0, !228, i64 8, !228, i64 16, !210, i64 24, !212, i64 280}
!4010 = !DILocation(line: 1517, column: 13, scope: !4001)
!4011 = !DILocation(line: 1517, column: 28, scope: !4001)
!4012 = !DILocation(line: 1517, column: 25, scope: !4001)
!4013 = !DILocation(line: 1517, column: 39, scope: !4001)
!4014 = !DILocation(line: 1517, column: 42, scope: !4001)
!4015 = !DILocation(line: 1517, column: 57, scope: !4001)
!4016 = !DILocation(line: 1517, column: 54, scope: !4001)
!4017 = !DILocation(line: 1517, column: 13, scope: !4002)
!4018 = !DILocation(line: 1518, column: 55, scope: !4002)
!4019 = !DILocation(line: 1518, column: 63, scope: !4002)
!4020 = !{!4008, !228, i64 32}
!4021 = !DILocation(line: 1518, column: 70, scope: !4002)
!4022 = !DILocation(line: 1518, column: 21, scope: !4002)
!4023 = !DILocation(line: 1518, column: 15, scope: !4002)
!4024 = !DILocation(line: 1518, column: 9, scope: !4002)
!4025 = !DILocation(line: 1518, column: 19, scope: !4002)
!4026 = distinct !{!4026, !4006, !4027}
!4027 = !DILocation(line: 1519, column: 5, scope: !3924)
!4028 = !DILocation(line: 1520, column: 5, scope: !3924)
!4029 = !DILocation(line: 0, scope: !4002)
!4030 = !DILocation(line: 1522, column: 1, scope: !3924)
!4031 = !DILocation(line: 1521, column: 5, scope: !3924)
!4032 = distinct !DISubprogram(name: "delKeysInSlot", scope: !1, file: !1, line: 1526, type: !4033, isLocal: false, isDefinition: true, scopeLine: 1526, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4035)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!45, !45}
!4035 = !{!4036, !4037, !4038, !4039, !4040}
!4036 = !DILocalVariable(name: "hashslot", arg: 1, scope: !4032, file: !1, line: 1526, type: !45)
!4037 = !DILocalVariable(name: "iter", scope: !4032, file: !1, line: 1527, type: !3932)
!4038 = !DILocalVariable(name: "j", scope: !4032, file: !1, line: 1528, type: !8)
!4039 = !DILocalVariable(name: "indexed", scope: !4032, file: !1, line: 1529, type: !3981)
!4040 = !DILocalVariable(name: "key", scope: !4041, file: !1, line: 1538, type: !65)
!4041 = distinct !DILexicalBlock(scope: !4032, file: !1, line: 1534, column: 55)
!4042 = !DILocation(line: 1526, column: 41, scope: !4032)
!4043 = !DILocation(line: 1527, column: 5, scope: !4032)
!4044 = !DILocation(line: 1528, column: 9, scope: !4032)
!4045 = !DILocation(line: 1529, column: 5, scope: !4032)
!4046 = !DILocation(line: 1529, column: 19, scope: !4032)
!4047 = !DILocation(line: 1531, column: 28, scope: !4032)
!4048 = !DILocation(line: 1531, column: 18, scope: !4032)
!4049 = !DILocation(line: 1531, column: 16, scope: !4032)
!4050 = !DILocation(line: 1532, column: 18, scope: !4032)
!4051 = !DILocation(line: 1532, column: 5, scope: !4032)
!4052 = !DILocation(line: 1532, column: 16, scope: !4032)
!4053 = !DILocation(line: 1533, column: 27, scope: !4032)
!4054 = !DILocation(line: 1533, column: 36, scope: !4032)
!4055 = !DILocation(line: 1527, column: 17, scope: !4032)
!4056 = !DILocation(line: 1533, column: 5, scope: !4032)
!4057 = !DILocation(line: 1534, column: 18, scope: !4032)
!4058 = !DILocation(line: 1534, column: 11, scope: !4032)
!4059 = !DILocation(line: 1534, column: 5, scope: !4032)
!4060 = !DILocation(line: 1535, column: 9, scope: !4041)
!4061 = !DILocation(line: 1536, column: 9, scope: !4041)
!4062 = !DILocation(line: 1538, column: 52, scope: !4041)
!4063 = !DILocation(line: 1538, column: 55, scope: !4041)
!4064 = !DILocation(line: 1538, column: 63, scope: !4041)
!4065 = !DILocation(line: 1538, column: 70, scope: !4041)
!4066 = !DILocation(line: 1538, column: 21, scope: !4041)
!4067 = !DILocation(line: 1538, column: 15, scope: !4041)
!4068 = !DILocation(line: 1539, column: 26, scope: !4041)
!4069 = !DILocation(line: 285, column: 23, scope: !901, inlinedAt: !4070)
!4070 = distinct !DILocation(line: 1539, column: 9, scope: !4041)
!4071 = !DILocation(line: 285, column: 33, scope: !901, inlinedAt: !4070)
!4072 = !DILocation(line: 286, column: 19, scope: !901, inlinedAt: !4070)
!4073 = !DILocation(line: 286, column: 12, scope: !901, inlinedAt: !4070)
!4074 = !DILocation(line: 286, column: 46, scope: !901, inlinedAt: !4070)
!4075 = !DILocation(line: 271, column: 27, scope: !339, inlinedAt: !4076)
!4076 = distinct !DILocation(line: 287, column: 46, scope: !901, inlinedAt: !4070)
!4077 = !DILocation(line: 271, column: 37, scope: !339, inlinedAt: !4076)
!4078 = !DILocation(line: 274, column: 9, scope: !346, inlinedAt: !4076)
!4079 = !DILocation(line: 274, column: 31, scope: !346, inlinedAt: !4076)
!4080 = !DILocation(line: 0, scope: !346, inlinedAt: !4076)
!4081 = !DILocation(line: 274, column: 9, scope: !339, inlinedAt: !4076)
!4082 = !DILocation(line: 274, column: 64, scope: !346, inlinedAt: !4076)
!4083 = !DILocation(line: 274, column: 36, scope: !346, inlinedAt: !4076)
!4084 = !DILocation(line: 275, column: 24, scope: !356, inlinedAt: !4076)
!4085 = !DILocation(line: 275, column: 34, scope: !356, inlinedAt: !4076)
!4086 = !DILocation(line: 275, column: 9, scope: !356, inlinedAt: !4076)
!4087 = !DILocation(line: 275, column: 39, scope: !356, inlinedAt: !4076)
!4088 = !DILocation(line: 276, column: 20, scope: !362, inlinedAt: !4076)
!4089 = !DILocation(line: 276, column: 13, scope: !362, inlinedAt: !4076)
!4090 = !DILocation(line: 275, column: 9, scope: !339, inlinedAt: !4076)
!4091 = !DILocation(line: 1493, column: 25, scope: !368, inlinedAt: !4092)
!4092 = distinct !DILocation(line: 276, column: 37, scope: !362, inlinedAt: !4076)
!4093 = !DILocation(line: 1494, column: 5, scope: !368, inlinedAt: !4092)
!4094 = !DILocation(line: 1495, column: 1, scope: !368, inlinedAt: !4092)
!4095 = !DILocation(line: 276, column: 37, scope: !362, inlinedAt: !4076)
!4096 = !DILocation(line: 281, column: 1, scope: !339, inlinedAt: !4076)
!4097 = !DILocation(line: 286, column: 5, scope: !901, inlinedAt: !4070)
!4098 = !DILocation(line: 1540, column: 9, scope: !4041)
!4099 = !DILocation(line: 1541, column: 10, scope: !4041)
!4100 = distinct !{!4100, !4059, !4101}
!4101 = !DILocation(line: 1542, column: 5, scope: !4032)
!4102 = !DILocation(line: 0, scope: !4041)
!4103 = !DILocation(line: 1543, column: 5, scope: !4032)
!4104 = !DILocation(line: 1545, column: 1, scope: !4032)
!4105 = !DILocation(line: 1544, column: 5, scope: !4032)
!4106 = distinct !DISubprogram(name: "countKeysInSlot", scope: !1, file: !1, line: 1547, type: !4033, isLocal: false, isDefinition: true, scopeLine: 1547, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4107)
!4107 = !{!4108}
!4108 = !DILocalVariable(name: "hashslot", arg: 1, scope: !4106, file: !1, line: 1547, type: !45)
!4109 = !DILocation(line: 1547, column: 43, scope: !4106)
!4110 = !DILocation(line: 1548, column: 19, scope: !4106)
!4111 = !DILocation(line: 1548, column: 12, scope: !4106)
!4112 = !DILocation(line: 1548, column: 5, scope: !4106)
