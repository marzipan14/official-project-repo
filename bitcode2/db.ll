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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  br i1 %9, label %46, label %10, !dbg !220

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %8, i64 0, i32 1, i32 0, !dbg !221
  %12 = bitcast i8** %11 to %struct.redisObject**, !dbg !221
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !221, !tbaa !222
  %14 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !224, !tbaa !226
  %15 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !233
  %16 = and i32 %15, %14, !dbg !234
  %17 = icmp eq i32 %16, -1, !dbg !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  br i1 %17, label %18, label %46, !dbg !234

; <label>:18:                                     ; preds = %10
  %19 = and i32 %2, 1, !dbg !235
  %20 = icmp eq i32 %19, 0, !dbg !235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !236
  br i1 %20, label %21, label %46, !dbg !236

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !237, !tbaa !240
  %23 = and i32 %22, 2, !dbg !241
  %24 = icmp eq i32 %23, 0, !dbg !241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !242
  br i1 %24, label %39, label %25, !dbg !242

; <label>:25:                                     ; preds = %21
  %26 = tail call i64 @LFUDecrAndReturn(%struct.redisObject* %13) #6, !dbg !246
  %27 = trunc i64 %26 to i8, !dbg !248
  %28 = tail call zeroext i8 @LFULogIncr(i8 zeroext %27) #6, !dbg !249
  %29 = zext i8 %28 to i64, !dbg !249
  %30 = tail call i64 @LFUGetTimeInMinutes() #6, !dbg !250
  %31 = shl i64 %30, 8, !dbg !251
  %32 = or i64 %31, %29, !dbg !252
  %33 = trunc i64 %32 to i32, !dbg !253
  %34 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %13, i64 0, i32 0, !dbg !254
  %35 = load i32, i32* %34, align 8, !dbg !255
  %36 = shl i32 %33, 8, !dbg !255
  %37 = and i32 %35, 255, !dbg !255
  %38 = or i32 %36, %37, !dbg !255
  store i32 %38, i32* %34, align 8, !dbg !255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !257
  br label %46, !dbg !257

; <label>:39:                                     ; preds = %21
  %40 = tail call i32 @LRU_CLOCK() #6, !dbg !258
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %13, i64 0, i32 0, !dbg !260
  %42 = load i32, i32* %41, align 8, !dbg !261
  %43 = shl i32 %40, 8, !dbg !261
  %44 = and i32 %42, 255, !dbg !261
  %45 = or i32 %44, %43, !dbg !261
  store i32 %45, i32* %41, align 8, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %46

; <label>:46:                                     ; preds = %3, %10, %39, %25, %18
  %47 = phi %struct.redisObject* [ %13, %18 ], [ %13, %25 ], [ %13, %39 ], [ %13, %10 ], [ null, %3 ], !dbg !262
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  ret %struct.redisObject* %47, !dbg !264
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @LRU_CLOCK() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @lookupKeyReadWithFlags(%struct.redisDb*, %struct.redisObject*, i32) local_unnamed_addr #0 !dbg !265 {
  %4 = tail call i32 @expireIfNeeded(%struct.redisDb* %0, %struct.redisObject* %1) #8, !dbg !274
  %5 = icmp eq i32 %4, 1, !dbg !276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  br i1 %5, label %6, label %30, !dbg !277

; <label>:6:                                      ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !278, !tbaa !281
  %8 = icmp eq i8* %7, null, !dbg !282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  br i1 %8, label %9, label %12, !dbg !283

; <label>:9:                                      ; preds = %6
  %10 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), align 8, !dbg !284, !tbaa !286
  %11 = add nsw i64 %10, 1, !dbg !284
  store i64 %11, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), align 8, !dbg !284, !tbaa !286
  br label %38, !dbg !287

; <label>:12:                                     ; preds = %6
  %13 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !288, !tbaa !290
  %14 = icmp eq %struct.client* %13, null, !dbg !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !292
  br i1 %14, label %30, label %15, !dbg !292

; <label>:15:                                     ; preds = %12
  %16 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !293, !tbaa !294
  %17 = icmp eq %struct.client* %13, %16, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !296
  br i1 %17, label %30, label %18, !dbg !296

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds %struct.client, %struct.client* %13, i64 0, i32 10, !dbg !297
  %20 = load %struct.redisCommand*, %struct.redisCommand** %19, align 8, !dbg !297, !tbaa !298
  %21 = icmp eq %struct.redisCommand* %20, null, !dbg !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  br i1 %21, label %30, label %22, !dbg !303

; <label>:22:                                     ; preds = %18
  %23 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %20, i64 0, i32 4, !dbg !304
  %24 = load i32, i32* %23, align 8, !dbg !304, !tbaa !305
  %25 = and i32 %24, 2, !dbg !307
  %26 = icmp eq i32 %25, 0, !dbg !307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  br i1 %26, label %30, label %27, !dbg !308

; <label>:27:                                     ; preds = %22
  %28 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), align 8, !dbg !309, !tbaa !286
  %29 = add nsw i64 %28, 1, !dbg !309
  store i64 %29, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), align 8, !dbg !309, !tbaa !286
  br label %38, !dbg !311

; <label>:30:                                     ; preds = %22, %18, %15, %12, %3
  %31 = tail call %struct.redisObject* @lookupKey(%struct.redisDb* %0, %struct.redisObject* %1, i32 %2) #8, !dbg !312
  %32 = icmp eq %struct.redisObject* %31, null, !dbg !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !316
  %33 = select i1 %32, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 76), !dbg !316
  %34 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 77), align 8, !dbg !317
  %35 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 76), align 8, !dbg !317
  %36 = select i1 %32, i64 %34, i64 %35, !dbg !317
  %37 = add nsw i64 %36, 1, !dbg !317
  store i64 %37, i64* %33, align 8, !dbg !317, !tbaa !318
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %38, !dbg !319

; <label>:38:                                     ; preds = %30, %27, %9
  %39 = phi %struct.redisObject* [ null, %9 ], [ null, %27 ], [ %31, %30 ], !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  ret %struct.redisObject* %39, !dbg !322
}

; Function Attrs: noredzone nounwind
define dso_local i32 @expireIfNeeded(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #0 !dbg !323 {
  %3 = tail call i64 @getExpire(%struct.redisDb* %0, %struct.redisObject* %1) #6, !dbg !342
  %4 = icmp slt i64 %3, 0, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !346
  br i1 %4, label %15, label %5, !dbg !346

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !347, !tbaa !349
  %7 = icmp eq i32 %6, 0, !dbg !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  br i1 %7, label %8, label %15, !dbg !351

; <label>:8:                                      ; preds = %5
  %9 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !352, !tbaa !353
  %10 = icmp eq %struct.client* %9, null, !dbg !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  br i1 %10, label %13, label %11, !dbg !354

; <label>:11:                                     ; preds = %8
  %12 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 276), align 8, !dbg !355, !tbaa !356
  br label %16, !dbg !354

; <label>:13:                                     ; preds = %8
  %14 = tail call i64 @mstime() #6, !dbg !357
  br label %16, !dbg !354

; <label>:15:                                     ; preds = %5, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  br label %59, !dbg !360

; <label>:16:                                     ; preds = %11, %13
  %17 = phi i64 [ %12, %11 ], [ %14, %13 ], !dbg !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  %18 = icmp sgt i64 %17, %3, !dbg !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  br i1 %18, label %19, label %59, !dbg !360

; <label>:19:                                     ; preds = %16
  %20 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !363, !tbaa !281
  %21 = icmp eq i8* %20, null, !dbg !365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  br i1 %21, label %22, label %59, !dbg !366

; <label>:22:                                     ; preds = %19
  %23 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 72), align 8, !dbg !367, !tbaa !368
  %24 = add nsw i64 %23, 1, !dbg !367
  store i64 %24, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 72), align 8, !dbg !367, !tbaa !368
  %25 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 286), align 4, !dbg !369, !tbaa !370
  tail call void @propagateExpire(%struct.redisDb* %0, %struct.redisObject* %1, i32 %25) #8, !dbg !371
  %26 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 5, !dbg !372
  %27 = load i32, i32* %26, align 8, !dbg !372, !tbaa !373
  tail call void @notifyKeyspaceEvent(i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), %struct.redisObject* %1, i32 %27) #6, !dbg !374
  %28 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 286), align 4, !dbg !375, !tbaa !370
  %29 = icmp eq i32 %28, 0, !dbg !376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  br i1 %29, label %32, label %30, !dbg !376

; <label>:30:                                     ; preds = %22
  %31 = tail call i32 @dbAsyncDelete(%struct.redisDb* nonnull %0, %struct.redisObject* %1) #6, !dbg !377
  br label %57, !dbg !376

; <label>:32:                                     ; preds = %22
  %33 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !385
  %34 = load %struct.dict*, %struct.dict** %33, align 8, !dbg !385, !tbaa !387
  %35 = getelementptr inbounds %struct.dict, %struct.dict* %34, i64 0, i32 2, i64 0, i32 3, !dbg !385
  %36 = load i64, i64* %35, align 8, !dbg !385, !tbaa !388
  %37 = getelementptr inbounds %struct.dict, %struct.dict* %34, i64 0, i32 2, i64 1, i32 3, !dbg !385
  %38 = load i64, i64* %37, align 8, !dbg !385, !tbaa !388
  %39 = sub i64 0, %38, !dbg !390
  %40 = icmp eq i64 %36, %39, !dbg !390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !392
  br i1 %40, label %45, label %42, !dbg !391

; <label>:42:                                     ; preds = %32
  %43 = load i8*, i8** %41, align 8, !dbg !393, !tbaa !215
  %44 = tail call i32 @dictDelete(%struct.dict* %34, i8* %43) #6, !dbg !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  br label %45, !dbg !394

; <label>:45:                                     ; preds = %42, %32
  %46 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !395
  %47 = load %struct.dict*, %struct.dict** %46, align 8, !dbg !395, !tbaa !207
  %48 = load i8*, i8** %41, align 8, !dbg !397, !tbaa !215
  %49 = tail call i32 @dictDelete(%struct.dict* %47, i8* %48) #6, !dbg !398
  %50 = icmp eq i32 %49, 0, !dbg !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  br i1 %50, label %51, label %55, !dbg !400

; <label>:51:                                     ; preds = %45
  %52 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !401, !tbaa !404
  %53 = icmp eq i32 %52, 0, !dbg !405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  br i1 %53, label %55, label %54, !dbg !406

; <label>:54:                                     ; preds = %51
  tail call void @slotToKeyUpdateKey(%struct.redisObject* nonnull %1, i32 0) #6, !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  br label %55, !dbg !414

; <label>:55:                                     ; preds = %45, %51, %54
  %56 = phi i32 [ 1, %54 ], [ 1, %51 ], [ 0, %45 ], !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  br label %57, !dbg !376

; <label>:57:                                     ; preds = %55, %30
  %58 = phi i32 [ %31, %30 ], [ %56, %55 ], !dbg !376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  br label %59, !dbg !419

; <label>:59:                                     ; preds = %19, %15, %16, %57
  %60 = phi i32 [ %58, %57 ], [ 0, %16 ], [ 0, %15 ], [ 1, %19 ], !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  ret i32 %60, !dbg !420
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @lookupKeyRead(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #0 !dbg !421 {
  %3 = tail call %struct.redisObject* @lookupKeyReadWithFlags(%struct.redisDb* %0, %struct.redisObject* %1, i32 0) #8, !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  ret %struct.redisObject* %3, !dbg !430
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @lookupKeyWrite(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #0 !dbg !431 {
  %3 = tail call i32 @expireIfNeeded(%struct.redisDb* %0, %struct.redisObject* %1) #8, !dbg !437
  %4 = tail call %struct.redisObject* @lookupKey(%struct.redisDb* %0, %struct.redisObject* %1, i32 0) #8, !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  ret %struct.redisObject* %4, !dbg !439
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @lookupKeyReadOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #0 !dbg !440 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !579
  %5 = load %struct.redisDb*, %struct.redisDb** %4, align 8, !dbg !579, !tbaa !580
  %6 = tail call %struct.redisObject* @lookupKeyReadWithFlags(%struct.redisDb* %5, %struct.redisObject* %1, i32 0) #6, !dbg !584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  %7 = icmp eq %struct.redisObject* %6, null, !dbg !587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  br i1 %7, label %8, label %9, !dbg !589

; <label>:8:                                      ; preds = %3
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %2) #6, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !590
  br label %9, !dbg !590

; <label>:9:                                      ; preds = %3, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  ret %struct.redisObject* %6, !dbg !591
}

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @lookupKeyWriteOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #0 !dbg !592 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !601
  %5 = load %struct.redisDb*, %struct.redisDb** %4, align 8, !dbg !601, !tbaa !580
  %6 = tail call i32 @expireIfNeeded(%struct.redisDb* %5, %struct.redisObject* %1) #6, !dbg !605
  %7 = tail call %struct.redisObject* @lookupKey(%struct.redisDb* %5, %struct.redisObject* %1, i32 0) #6, !dbg !606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !611
  br i1 %8, label %9, label %10, !dbg !611

; <label>:9:                                      ; preds = %3
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %2) #6, !dbg !612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !612
  br label %10, !dbg !612

; <label>:10:                                     ; preds = %3, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !613
  ret %struct.redisObject* %7, !dbg !613
}

; Function Attrs: noredzone nounwind
define dso_local void @dbAdd(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #0 !dbg !614 {
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !626
  %5 = load i8*, i8** %4, align 8, !dbg !626, !tbaa !215
  %6 = tail call i8* @sdsdup(i8* %5) #6, !dbg !627
  %7 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !629
  %8 = load %struct.dict*, %struct.dict** %7, align 8, !dbg !629, !tbaa !207
  %9 = bitcast %struct.redisObject* %2 to i8*, !dbg !630
  %10 = tail call i32 @dictAdd(%struct.dict* %8, i8* %6, i8* %9) #6, !dbg !631
  %11 = icmp eq i32 %10, 0, !dbg !633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  br i1 %11, label %13, label %12, !dbg !633

; <label>:12:                                     ; preds = %3
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 177) #6, !dbg !633
  tail call void @_exit(i32 1) #9, !dbg !633
  unreachable

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 0, !dbg !634
  %15 = load i32, i32* %14, align 8, !dbg !634
  %16 = and i32 %15, 15, !dbg !634
  %17 = icmp eq i32 %16, 1, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  br i1 %17, label %20, label %18, !dbg !637

; <label>:18:                                     ; preds = %13
  %19 = icmp eq i32 %16, 3, !dbg !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  br i1 %19, label %20, label %21, !dbg !639

; <label>:20:                                     ; preds = %18, %13
  tail call void @signalKeyAsReady(%struct.redisDb* nonnull %0, %struct.redisObject* nonnull %1) #6, !dbg !640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  br label %21, !dbg !640

; <label>:21:                                     ; preds = %20, %18
  %22 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !641, !tbaa !404
  %23 = icmp eq i32 %22, 0, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !644
  br i1 %23, label %25, label %24, !dbg !644

; <label>:24:                                     ; preds = %21
  tail call void @slotToKeyUpdateKey(%struct.redisObject* nonnull %1, i32 1) #6, !dbg !650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !652
  br label %25, !dbg !652

; <label>:25:                                     ; preds = %21, %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  ret void, !dbg !653
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
define dso_local void @slotToKeyAdd(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !646 {
  tail call void @slotToKeyUpdateKey(%struct.redisObject* %0, i32 1) #8, !dbg !655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !656
  ret void, !dbg !656
}

; Function Attrs: noredzone nounwind
define dso_local void @dbOverwrite(%struct.redisDb* nocapture readonly, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #0 !dbg !657 {
  %4 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !668
  %5 = load %struct.dict*, %struct.dict** %4, align 8, !dbg !668, !tbaa !207
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !669
  %7 = load i8*, i8** %6, align 8, !dbg !669, !tbaa !215
  %8 = tail call %struct.dictEntry* @dictFind(%struct.dict* %5, i8* %7) #6, !dbg !670
  %9 = icmp eq %struct.dictEntry* %8, null, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  br i1 %9, label %10, label %11, !dbg !672

; <label>:10:                                     ; preds = %3
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 192) #6, !dbg !672
  tail call void @_exit(i32 1) #9, !dbg !672
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %8, i64 0, i32 1, i32 0, !dbg !674
  %13 = load i8*, i8** %12, align 8, !dbg !674
  %14 = bitcast i8* %13 to %struct.redisObject*, !dbg !675
  %15 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !677, !tbaa !240
  %16 = and i32 %15, 2, !dbg !679
  %17 = icmp eq i32 %16, 0, !dbg !679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !680
  br i1 %17, label %26, label %18, !dbg !680

; <label>:18:                                     ; preds = %11
  %19 = bitcast i8* %13 to i32*, !dbg !681
  %20 = load i32, i32* %19, align 8, !dbg !681
  %21 = and i32 %20, -256, !dbg !683
  %22 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 0, !dbg !684
  %23 = load i32, i32* %22, align 8, !dbg !683
  %24 = and i32 %23, 255, !dbg !683
  %25 = or i32 %24, %21, !dbg !683
  store i32 %25, i32* %22, align 8, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  br label %26, !dbg !685

; <label>:26:                                     ; preds = %11, %18
  %27 = load %struct.dict*, %struct.dict** %4, align 8, !dbg !686, !tbaa !207
  %28 = getelementptr inbounds %struct.dict, %struct.dict* %27, i64 0, i32 0, !dbg !686
  %29 = load %struct.dictType*, %struct.dictType** %28, align 8, !dbg !686, !tbaa !689
  %30 = getelementptr inbounds %struct.dictType, %struct.dictType* %29, i64 0, i32 2, !dbg !686
  %31 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %30, align 8, !dbg !686, !tbaa !691
  %32 = icmp eq i8* (i8*, i8*)* %31, null, !dbg !686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  br i1 %32, label %38, label %33, !dbg !693

; <label>:33:                                     ; preds = %26
  %34 = getelementptr inbounds %struct.dict, %struct.dict* %27, i64 0, i32 1, !dbg !686
  %35 = load i8*, i8** %34, align 8, !dbg !686, !tbaa !694
  %36 = bitcast %struct.redisObject* %2 to i8*, !dbg !686
  %37 = tail call i8* %31(i8* %35, i8* %36) #6, !dbg !686
  store i8* %37, i8** %12, align 8, !dbg !686, !tbaa !222
  br label %40, !dbg !686

; <label>:38:                                     ; preds = %26
  %39 = bitcast i8** %12 to %struct.redisObject**, !dbg !686
  store %struct.redisObject* %2, %struct.redisObject** %39, align 8, !dbg !686, !tbaa !222
  br label %40

; <label>:40:                                     ; preds = %38, %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 287), align 8, !dbg !695, !tbaa !697
  %42 = icmp eq i32 %41, 0, !dbg !698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !699
  br i1 %42, label %56, label %43, !dbg !699

; <label>:43:                                     ; preds = %40
  tail call void @freeObjAsync(%struct.redisObject* %14) #6, !dbg !700
  %44 = load %struct.dict*, %struct.dict** %4, align 8, !dbg !702, !tbaa !207
  %45 = getelementptr inbounds %struct.dict, %struct.dict* %44, i64 0, i32 0, !dbg !702
  %46 = load %struct.dictType*, %struct.dictType** %45, align 8, !dbg !702, !tbaa !689
  %47 = getelementptr inbounds %struct.dictType, %struct.dictType* %46, i64 0, i32 2, !dbg !702
  %48 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %47, align 8, !dbg !702, !tbaa !691
  %49 = icmp eq i8* (i8*, i8*)* %48, null, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !705
  br i1 %49, label %54, label %50, !dbg !705

; <label>:50:                                     ; preds = %43
  %51 = getelementptr inbounds %struct.dict, %struct.dict* %44, i64 0, i32 1, !dbg !702
  %52 = load i8*, i8** %51, align 8, !dbg !702, !tbaa !694
  %53 = tail call i8* %48(i8* %52, i8* null) #6, !dbg !702
  br label %54, !dbg !702

; <label>:54:                                     ; preds = %43, %50
  %55 = phi i8* [ %53, %50 ], [ null, %43 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %56, !dbg !706

; <label>:56:                                     ; preds = %54, %40
  %57 = phi i8* [ %13, %40 ], [ %55, %54 ], !dbg !708
  %58 = load %struct.dict*, %struct.dict** %4, align 8, !dbg !706, !tbaa !207
  %59 = getelementptr inbounds %struct.dict, %struct.dict* %58, i64 0, i32 0, !dbg !706
  %60 = load %struct.dictType*, %struct.dictType** %59, align 8, !dbg !706, !tbaa !689
  %61 = getelementptr inbounds %struct.dictType, %struct.dictType* %60, i64 0, i32 5, !dbg !706
  %62 = load void (i8*, i8*)*, void (i8*, i8*)** %61, align 8, !dbg !706, !tbaa !709
  %63 = icmp eq void (i8*, i8*)* %62, null, !dbg !706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  br i1 %63, label %67, label %64, !dbg !710

; <label>:64:                                     ; preds = %56
  %65 = getelementptr inbounds %struct.dict, %struct.dict* %58, i64 0, i32 1, !dbg !706
  %66 = load i8*, i8** %65, align 8, !dbg !706, !tbaa !694
  tail call void %62(i8* %66, i8* %57) #6, !dbg !706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !706
  br label %67, !dbg !706

; <label>:67:                                     ; preds = %56, %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !711
  ret void, !dbg !711
}

; Function Attrs: noredzone
declare dso_local void @freeObjAsync(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @setKey(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #0 !dbg !712 {
  %4 = tail call i32 @expireIfNeeded(%struct.redisDb* %0, %struct.redisObject* %1) #6, !dbg !724
  %5 = tail call %struct.redisObject* @lookupKey(%struct.redisDb* %0, %struct.redisObject* %1, i32 0) #6, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  %6 = icmp eq %struct.redisObject* %5, null, !dbg !727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !728
  br i1 %6, label %7, label %8, !dbg !728

; <label>:7:                                      ; preds = %3
  tail call void @dbAdd(%struct.redisDb* %0, %struct.redisObject* %1, %struct.redisObject* %2) #8, !dbg !729
  br label %9, !dbg !731

; <label>:8:                                      ; preds = %3
  tail call void @dbOverwrite(%struct.redisDb* %0, %struct.redisObject* %1, %struct.redisObject* %2) #8, !dbg !732
  br label %9

; <label>:9:                                      ; preds = %8, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call void @incrRefCount(%struct.redisObject* %2) #6, !dbg !734
  %10 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !742
  %11 = load %struct.dict*, %struct.dict** %10, align 8, !dbg !742, !tbaa !207
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !742
  %13 = load i8*, i8** %12, align 8, !dbg !742, !tbaa !215
  %14 = tail call %struct.dictEntry* @dictFind(%struct.dict* %11, i8* %13) #6, !dbg !742
  %15 = icmp eq %struct.dictEntry* %14, null, !dbg !742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  br i1 %15, label %16, label %17, !dbg !742

; <label>:16:                                     ; preds = %9
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 1068) #6, !dbg !742
  tail call void @_exit(i32 1) #9, !dbg !742
  unreachable

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !743
  %19 = load %struct.dict*, %struct.dict** %18, align 8, !dbg !743, !tbaa !387
  %20 = load i8*, i8** %12, align 8, !dbg !744, !tbaa !215
  %21 = tail call i32 @dictDelete(%struct.dict* %19, i8* %20) #6, !dbg !745
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !746
  tail call void @touchWatchedKey(%struct.redisDb* nonnull %0, %struct.redisObject* nonnull %1) #6, !dbg !756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !757
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !758
  ret void, !dbg !758
}

; Function Attrs: noredzone
declare dso_local void @incrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @removeExpire(%struct.redisDb* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !736 {
  %3 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !761
  %4 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !761, !tbaa !207
  %5 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !761
  %6 = load i8*, i8** %5, align 8, !dbg !761, !tbaa !215
  %7 = tail call %struct.dictEntry* @dictFind(%struct.dict* %4, i8* %6) #6, !dbg !761
  %8 = icmp eq %struct.dictEntry* %7, null, !dbg !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !761
  br i1 %8, label %9, label %10, !dbg !761

; <label>:9:                                      ; preds = %2
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 1068) #6, !dbg !761
  tail call void @_exit(i32 1) #9, !dbg !761
  unreachable

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !762
  %12 = load %struct.dict*, %struct.dict** %11, align 8, !dbg !762, !tbaa !387
  %13 = load i8*, i8** %5, align 8, !dbg !763, !tbaa !215
  %14 = tail call i32 @dictDelete(%struct.dict* %12, i8* %13) #6, !dbg !764
  %15 = icmp eq i32 %14, 0, !dbg !765
  %16 = zext i1 %15 to i32, !dbg !765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  ret i32 %16, !dbg !766
}

; Function Attrs: noredzone nounwind
define dso_local void @signalModifiedKey(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #0 !dbg !748 {
  tail call void @touchWatchedKey(%struct.redisDb* %0, %struct.redisObject* %1) #6, !dbg !769
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !770
  ret void, !dbg !770
}

; Function Attrs: noredzone nounwind
define dso_local i32 @dbExists(%struct.redisDb* nocapture readonly, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !771 {
  %3 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !777
  %4 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !777, !tbaa !207
  %5 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !778
  %6 = load i8*, i8** %5, align 8, !dbg !778, !tbaa !215
  %7 = tail call %struct.dictEntry* @dictFind(%struct.dict* %4, i8* %6) #6, !dbg !779
  %8 = icmp ne %struct.dictEntry* %7, null, !dbg !780
  %9 = zext i1 %8 to i32, !dbg !780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !781
  ret i32 %9, !dbg !781
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @dbRandomKey(%struct.redisDb*) local_unnamed_addr #0 !dbg !782 {
  %2 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !795
  %3 = load %struct.dict*, %struct.dict** %2, align 8, !dbg !795, !tbaa !207
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %3, i64 0, i32 2, i64 0, i32 3, !dbg !795
  %5 = load i64, i64* %4, align 8, !dbg !795, !tbaa !388
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %3, i64 0, i32 2, i64 1, i32 3, !dbg !795
  %7 = load i64, i64* %6, align 8, !dbg !795, !tbaa !388
  %8 = add i64 %7, %5, !dbg !795
  %9 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !796
  %10 = load %struct.dict*, %struct.dict** %9, align 8, !dbg !796, !tbaa !387
  %11 = getelementptr inbounds %struct.dict, %struct.dict* %10, i64 0, i32 2, i64 0, i32 3, !dbg !796
  %12 = load i64, i64* %11, align 8, !dbg !796, !tbaa !388
  %13 = getelementptr inbounds %struct.dict, %struct.dict* %10, i64 0, i32 2, i64 1, i32 3, !dbg !796
  %14 = load i64, i64* %13, align 8, !dbg !796, !tbaa !388
  %15 = add i64 %14, %12, !dbg !796
  %16 = icmp eq i64 %8, %15, !dbg !797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !798
  %17 = tail call %struct.dictEntry* @dictGetRandomKey(%struct.dict* %3) #6, !dbg !799
  %18 = icmp eq %struct.dictEntry* %17, null, !dbg !801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !803
  br i1 %18, label %69, label %19, !dbg !803

; <label>:19:                                     ; preds = %1, %65
  %20 = phi %struct.dictEntry* [ %67, %65 ], [ %17, %1 ]
  %21 = phi i32 [ %62, %65 ], [ 100, %1 ]
  %22 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %20, i64 0, i32 0, !dbg !804
  %23 = load i8*, i8** %22, align 8, !dbg !804, !tbaa !805
  %24 = getelementptr inbounds i8, i8* %23, i64 -1, !dbg !819
  %25 = load i8, i8* %24, align 1, !dbg !819, !tbaa !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !821
  %26 = trunc i8 %25 to i3, !dbg !821
  switch i3 %26, label %48 [
    i3 0, label %27
    i3 1, label %30
    i3 2, label %34
    i3 3, label %39
    i3 -4, label %44
  ], !dbg !821

; <label>:27:                                     ; preds = %19
  %28 = lshr i8 %25, 3, !dbg !822
  %29 = zext i8 %28 to i64, !dbg !822
  br label %48, !dbg !824

; <label>:30:                                     ; preds = %19
  %31 = getelementptr inbounds i8, i8* %23, i64 -3, !dbg !825
  %32 = load i8, i8* %31, align 1, !dbg !826, !tbaa !222
  %33 = zext i8 %32 to i64, !dbg !825
  br label %48, !dbg !827

; <label>:34:                                     ; preds = %19
  %35 = getelementptr inbounds i8, i8* %23, i64 -5, !dbg !828
  %36 = bitcast i8* %35 to i16*, !dbg !829
  %37 = load i16, i16* %36, align 1, !dbg !829, !tbaa !830
  %38 = zext i16 %37 to i64, !dbg !828
  br label %48, !dbg !832

; <label>:39:                                     ; preds = %19
  %40 = getelementptr inbounds i8, i8* %23, i64 -9, !dbg !833
  %41 = bitcast i8* %40 to i32*, !dbg !834
  %42 = load i32, i32* %41, align 1, !dbg !834, !tbaa !835
  %43 = zext i32 %42 to i64, !dbg !833
  br label %48, !dbg !836

; <label>:44:                                     ; preds = %19
  %45 = getelementptr inbounds i8, i8* %23, i64 -17, !dbg !837
  %46 = bitcast i8* %45 to i64*, !dbg !838
  %47 = load i64, i64* %46, align 1, !dbg !838, !tbaa !839
  br label %48, !dbg !840

; <label>:48:                                     ; preds = %19, %27, %30, %34, %39, %44
  %49 = phi i64 [ %47, %44 ], [ %43, %39 ], [ %38, %34 ], [ %33, %30 ], [ %29, %27 ], [ 0, %19 ], !dbg !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !843
  %50 = tail call %struct.redisObject* @createStringObject(i8* %23, i64 %49) #6, !dbg !844
  %51 = load %struct.dict*, %struct.dict** %9, align 8, !dbg !846, !tbaa !387
  %52 = tail call %struct.dictEntry* @dictFind(%struct.dict* %51, i8* %23) #6, !dbg !848
  %53 = icmp eq %struct.dictEntry* %52, null, !dbg !848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !849
  br i1 %53, label %69, label %54, !dbg !849

; <label>:54:                                     ; preds = %48
  %55 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !850
  %56 = icmp ne i8* %55, null, !dbg !853
  %57 = and i1 %16, %56, !dbg !854
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !854
  br i1 %57, label %58, label %61, !dbg !854

; <label>:58:                                     ; preds = %54
  %59 = add nsw i32 %21, -1, !dbg !855
  %60 = icmp eq i32 %59, 0, !dbg !856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  br i1 %60, label %69, label %61, !dbg !857

; <label>:61:                                     ; preds = %58, %54
  %62 = phi i32 [ %59, %58 ], [ %21, %54 ], !dbg !858
  %63 = tail call i32 @expireIfNeeded(%struct.redisDb* nonnull %0, %struct.redisObject* %50) #8, !dbg !859
  %64 = icmp eq i32 %63, 0, !dbg !859
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !861
  br i1 %64, label %69, label %65, !dbg !861

; <label>:65:                                     ; preds = %61
  tail call void @decrRefCount(%struct.redisObject* %50) #6, !dbg !862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %66 = load %struct.dict*, %struct.dict** %2, align 8, !dbg !865, !tbaa !207
  %67 = tail call %struct.dictEntry* @dictGetRandomKey(%struct.dict* %66) #6, !dbg !799
  %68 = icmp eq %struct.dictEntry* %67, null, !dbg !801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !803
  br i1 %68, label %69, label %19, !dbg !803

; <label>:69:                                     ; preds = %48, %61, %58, %65, %1
  %70 = phi %struct.redisObject* [ null, %1 ], [ %50, %48 ], [ %50, %61 ], [ %50, %58 ], [ null, %65 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !866
  ret %struct.redisObject* %70, !dbg !866
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictGetRandomKey(%struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @dbSyncDelete(%struct.redisDb* nocapture readonly, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !379 {
  %3 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !869
  %4 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !869, !tbaa !387
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %4, i64 0, i32 2, i64 0, i32 3, !dbg !869
  %6 = load i64, i64* %5, align 8, !dbg !869, !tbaa !388
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %4, i64 0, i32 2, i64 1, i32 3, !dbg !869
  %8 = load i64, i64* %7, align 8, !dbg !869, !tbaa !388
  %9 = sub i64 0, %8, !dbg !870
  %10 = icmp eq i64 %6, %9, !dbg !870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !871
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !872
  br i1 %10, label %15, label %12, !dbg !871

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %11, align 8, !dbg !873, !tbaa !215
  %14 = tail call i32 @dictDelete(%struct.dict* %4, i8* %13) #6, !dbg !874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  br label %15, !dbg !874

; <label>:15:                                     ; preds = %2, %12
  %16 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !875
  %17 = load %struct.dict*, %struct.dict** %16, align 8, !dbg !875, !tbaa !207
  %18 = load i8*, i8** %11, align 8, !dbg !876, !tbaa !215
  %19 = tail call i32 @dictDelete(%struct.dict* %17, i8* %18) #6, !dbg !877
  %20 = icmp eq i32 %19, 0, !dbg !878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !879
  br i1 %20, label %21, label %25, !dbg !879

; <label>:21:                                     ; preds = %15
  %22 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !880, !tbaa !404
  %23 = icmp eq i32 %22, 0, !dbg !881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  br i1 %23, label %25, label %24, !dbg !882

; <label>:24:                                     ; preds = %21
  tail call void @slotToKeyUpdateKey(%struct.redisObject* nonnull %1, i32 0) #6, !dbg !885
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !887
  br label %25, !dbg !887

; <label>:25:                                     ; preds = %15, %24, %21
  %26 = phi i32 [ 1, %21 ], [ 1, %24 ], [ 0, %15 ], !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !889
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  ret i32 %26, !dbg !890
}

; Function Attrs: noredzone
declare dso_local i32 @dictDelete(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @slotToKeyDel(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !408 {
  tail call void @slotToKeyUpdateKey(%struct.redisObject* %0, i32 0) #8, !dbg !892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !893
  ret void, !dbg !893
}

; Function Attrs: noredzone nounwind
define dso_local i32 @dbDelete(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #0 !dbg !894 {
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 287), align 8, !dbg !900, !tbaa !697
  %4 = icmp eq i32 %3, 0, !dbg !901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !901
  br i1 %4, label %7, label %5, !dbg !901

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @dbAsyncDelete(%struct.redisDb* %0, %struct.redisObject* %1) #6, !dbg !902
  br label %32, !dbg !901

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !906
  %9 = load %struct.dict*, %struct.dict** %8, align 8, !dbg !906, !tbaa !387
  %10 = getelementptr inbounds %struct.dict, %struct.dict* %9, i64 0, i32 2, i64 0, i32 3, !dbg !906
  %11 = load i64, i64* %10, align 8, !dbg !906, !tbaa !388
  %12 = getelementptr inbounds %struct.dict, %struct.dict* %9, i64 0, i32 2, i64 1, i32 3, !dbg !906
  %13 = load i64, i64* %12, align 8, !dbg !906, !tbaa !388
  %14 = sub i64 0, %13, !dbg !907
  %15 = icmp eq i64 %11, %14, !dbg !907
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !908
  %16 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !909
  br i1 %15, label %20, label %17, !dbg !908

; <label>:17:                                     ; preds = %7
  %18 = load i8*, i8** %16, align 8, !dbg !910, !tbaa !215
  %19 = tail call i32 @dictDelete(%struct.dict* %9, i8* %18) #6, !dbg !911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !911
  br label %20, !dbg !911

; <label>:20:                                     ; preds = %17, %7
  %21 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !912
  %22 = load %struct.dict*, %struct.dict** %21, align 8, !dbg !912, !tbaa !207
  %23 = load i8*, i8** %16, align 8, !dbg !913, !tbaa !215
  %24 = tail call i32 @dictDelete(%struct.dict* %22, i8* %23) #6, !dbg !914
  %25 = icmp eq i32 %24, 0, !dbg !915
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !916
  br i1 %25, label %26, label %30, !dbg !916

; <label>:26:                                     ; preds = %20
  %27 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !917, !tbaa !404
  %28 = icmp eq i32 %27, 0, !dbg !918
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !919
  br i1 %28, label %30, label %29, !dbg !919

; <label>:29:                                     ; preds = %26
  tail call void @slotToKeyUpdateKey(%struct.redisObject* nonnull %1, i32 0) #6, !dbg !922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  br label %30, !dbg !924

; <label>:30:                                     ; preds = %20, %26, %29
  %31 = phi i32 [ 1, %29 ], [ 1, %26 ], [ 0, %20 ], !dbg !925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !927
  br label %32, !dbg !901

; <label>:32:                                     ; preds = %30, %5
  %33 = phi i32 [ %6, %5 ], [ %31, %30 ], !dbg !901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !928
  ret i32 %33, !dbg !928
}

; Function Attrs: noredzone
declare dso_local i32 @dbAsyncDelete(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @dbUnshareStringValue(%struct.redisDb* nocapture readonly, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #0 !dbg !929 {
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 0, !dbg !942
  %5 = load i32, i32* %4, align 8, !dbg !942
  %6 = and i32 %5, 15, !dbg !942
  %7 = icmp eq i32 %6, 0, !dbg !942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  br i1 %7, label %9, label %8, !dbg !942

; <label>:8:                                      ; preds = %3
  tail call void @_serverAssert(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 318) #6, !dbg !942
  tail call void @_exit(i32 1) #9, !dbg !942
  unreachable

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 1, !dbg !943
  %11 = load i32, i32* %10, align 4, !dbg !943, !tbaa !944
  %12 = icmp eq i32 %11, 1, !dbg !945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  br i1 %12, label %13, label %16, !dbg !946

; <label>:13:                                     ; preds = %9
  %14 = and i32 %5, 240, !dbg !947
  %15 = icmp eq i32 %14, 0, !dbg !948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !949
  br i1 %15, label %47, label %16, !dbg !949

; <label>:16:                                     ; preds = %13, %9
  %17 = tail call %struct.redisObject* @getDecodedObject(%struct.redisObject* nonnull %2) #6, !dbg !950
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i64 0, i32 2, !dbg !952
  %19 = load i8*, i8** %18, align 8, !dbg !952, !tbaa !215
  %20 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !955
  %21 = load i8, i8* %20, align 1, !dbg !955, !tbaa !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !957
  %22 = trunc i8 %21 to i3, !dbg !957
  switch i3 %22, label %44 [
    i3 0, label %23
    i3 1, label %26
    i3 2, label %30
    i3 3, label %35
    i3 -4, label %40
  ], !dbg !957

; <label>:23:                                     ; preds = %16
  %24 = lshr i8 %21, 3, !dbg !958
  %25 = zext i8 %24 to i64, !dbg !958
  br label %44, !dbg !959

; <label>:26:                                     ; preds = %16
  %27 = getelementptr inbounds i8, i8* %19, i64 -3, !dbg !960
  %28 = load i8, i8* %27, align 1, !dbg !961, !tbaa !222
  %29 = zext i8 %28 to i64, !dbg !960
  br label %44, !dbg !962

; <label>:30:                                     ; preds = %16
  %31 = getelementptr inbounds i8, i8* %19, i64 -5, !dbg !963
  %32 = bitcast i8* %31 to i16*, !dbg !964
  %33 = load i16, i16* %32, align 1, !dbg !964, !tbaa !830
  %34 = zext i16 %33 to i64, !dbg !963
  br label %44, !dbg !965

; <label>:35:                                     ; preds = %16
  %36 = getelementptr inbounds i8, i8* %19, i64 -9, !dbg !966
  %37 = bitcast i8* %36 to i32*, !dbg !967
  %38 = load i32, i32* %37, align 1, !dbg !967, !tbaa !835
  %39 = zext i32 %38 to i64, !dbg !966
  br label %44, !dbg !968

; <label>:40:                                     ; preds = %16
  %41 = getelementptr inbounds i8, i8* %19, i64 -17, !dbg !969
  %42 = bitcast i8* %41 to i64*, !dbg !970
  %43 = load i64, i64* %42, align 1, !dbg !970, !tbaa !839
  br label %44, !dbg !971

; <label>:44:                                     ; preds = %16, %23, %26, %30, %35, %40
  %45 = phi i64 [ %43, %40 ], [ %39, %35 ], [ %34, %30 ], [ %29, %26 ], [ %25, %23 ], [ 0, %16 ], !dbg !972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !974
  %46 = tail call %struct.redisObject* @createRawStringObject(i8* %19, i64 %45) #6, !dbg !975
  tail call void @decrRefCount(%struct.redisObject* %17) #6, !dbg !976
  tail call void @dbOverwrite(%struct.redisDb* %0, %struct.redisObject* %1, %struct.redisObject* %46) #8, !dbg !977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  br label %47, !dbg !978

; <label>:47:                                     ; preds = %13, %44
  %48 = phi %struct.redisObject* [ %46, %44 ], [ %2, %13 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  ret %struct.redisObject* %48, !dbg !979
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @getDecodedObject(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createRawStringObject(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @emptyDb(i32, i32, void (i8*)*) local_unnamed_addr #0 !dbg !980 {
  %4 = and i32 %1, 1, !dbg !996
  %5 = icmp slt i32 %0, -1, !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1001
  br i1 %5, label %9, label %6, !dbg !1001

; <label>:6:                                      ; preds = %3
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !1002, !tbaa !1003
  %8 = icmp sgt i32 %7, %0, !dbg !1004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1005
  br i1 %8, label %11, label %9, !dbg !1005

; <label>:9:                                      ; preds = %6, %3
  %10 = tail call i32* @__errno() #6, !dbg !1006
  store i32 22, i32* %10, align 4, !dbg !1008, !tbaa !835
  br label %64, !dbg !1009

; <label>:11:                                     ; preds = %6
  %12 = icmp eq i32 %0, -1, !dbg !1010
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1012
  br i1 %12, label %15, label %13, !dbg !1012

; <label>:13:                                     ; preds = %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  %14 = sext i32 %0 to i64, !dbg !1017
  br label %18, !dbg !1017

; <label>:15:                                     ; preds = %11
  %16 = add nsw i32 %7, -1, !dbg !1018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1020
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1016
  %17 = icmp slt i32 %7, 1, !dbg !1021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  br i1 %17, label %23, label %18, !dbg !1017

; <label>:18:                                     ; preds = %13, %15
  %19 = phi i32 [ %0, %13 ], [ %16, %15 ]
  %20 = phi i64 [ %14, %13 ], [ 0, %15 ]
  %21 = icmp eq i32 %4, 0
  %22 = sext i32 %19 to i64, !dbg !1017
  br label %27, !dbg !1017

; <label>:23:                                     ; preds = %45, %15
  %24 = phi i64 [ 0, %15 ], [ %39, %45 ], !dbg !1023
  %25 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !1025, !tbaa !404
  %26 = icmp eq i32 %25, 0, !dbg !1027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  br i1 %26, label %62, label %48, !dbg !1028

; <label>:27:                                     ; preds = %45, %18
  %28 = phi i64 [ %46, %45 ], [ %20, %18 ]
  %29 = phi i64 [ %39, %45 ], [ 0, %18 ]
  %30 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !1029, !tbaa !1030
  %31 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %30, i64 %28, !dbg !1029
  %32 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %31, i64 0, i32 0, !dbg !1029
  %33 = load %struct.dict*, %struct.dict** %32, align 8, !dbg !1029, !tbaa !207
  %34 = getelementptr inbounds %struct.dict, %struct.dict* %33, i64 0, i32 2, i64 0, i32 3, !dbg !1029
  %35 = load i64, i64* %34, align 8, !dbg !1029, !tbaa !388
  %36 = getelementptr inbounds %struct.dict, %struct.dict* %33, i64 0, i32 2, i64 1, i32 3, !dbg !1029
  %37 = load i64, i64* %36, align 8, !dbg !1029, !tbaa !388
  %38 = add i64 %35, %29, !dbg !1029
  %39 = add i64 %38, %37, !dbg !1031
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  br i1 %21, label %41, label %40, !dbg !1032

; <label>:40:                                     ; preds = %27
  tail call void @emptyDbAsync(%struct.redisDb* %31) #6, !dbg !1033
  br label %45, !dbg !1036

; <label>:41:                                     ; preds = %27
  tail call void @dictEmpty(%struct.dict* %33, void (i8*)* %2) #6, !dbg !1037
  %42 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !1039, !tbaa !1030
  %43 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %42, i64 %28, i32 1, !dbg !1040
  %44 = load %struct.dict*, %struct.dict** %43, align 8, !dbg !1040, !tbaa !387
  tail call void @dictEmpty(%struct.dict* %44, void (i8*)* %2) #6, !dbg !1041
  br label %45

; <label>:45:                                     ; preds = %40, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %46 = add nsw i64 %28, 1, !dbg !1042
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1043
  %47 = icmp slt i64 %28, %22, !dbg !1021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  br i1 %47, label %27, label %23, !dbg !1017, !llvm.loop !1044

; <label>:48:                                     ; preds = %23
  %49 = icmp eq i32 %4, 0, !dbg !1046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1049
  br i1 %49, label %51, label %50, !dbg !1049

; <label>:50:                                     ; preds = %48
  tail call void @slotToKeyFlushAsync() #6, !dbg !1050
  br label %61, !dbg !1052

; <label>:51:                                     ; preds = %48
  %52 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !1053, !tbaa !1059
  %53 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %52, i64 0, i32 10, !dbg !1060
  %54 = load %struct.rax*, %struct.rax** %53, align 8, !dbg !1060, !tbaa !1061
  tail call void @raxFree(%struct.rax* %54) #6, !dbg !1063
  %55 = tail call %struct.rax* @raxNew() #6, !dbg !1064
  %56 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !1065, !tbaa !1059
  %57 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %56, i64 0, i32 10, !dbg !1066
  store %struct.rax* %55, %struct.rax** %57, align 8, !dbg !1067, !tbaa !1061
  %58 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %56, i64 0, i32 9, i64 0, !dbg !1068
  %59 = bitcast i64* %58 to i8*, !dbg !1068
  %60 = tail call i8* @memset(i8* nonnull %59, i32 0, i64 131072) #6, !dbg !1069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1070
  br label %61

; <label>:61:                                     ; preds = %51, %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %62, !dbg !1071

; <label>:62:                                     ; preds = %61, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1071
  br i1 %12, label %63, label %64, !dbg !1071

; <label>:63:                                     ; preds = %62
  tail call void @flushSlaveKeysWithExpireList() #6, !dbg !1072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1072
  br label %64, !dbg !1072

; <label>:64:                                     ; preds = %62, %63, %9
  %65 = phi i64 [ -1, %9 ], [ %24, %63 ], [ %24, %62 ], !dbg !1074
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1075
  ret i64 %65, !dbg !1075
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
define dso_local void @slotToKeyFlush() local_unnamed_addr #0 !dbg !1054 {
  %1 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !1076, !tbaa !1059
  %2 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %1, i64 0, i32 10, !dbg !1077
  %3 = load %struct.rax*, %struct.rax** %2, align 8, !dbg !1077, !tbaa !1061
  tail call void @raxFree(%struct.rax* %3) #6, !dbg !1078
  %4 = tail call %struct.rax* @raxNew() #6, !dbg !1079
  %5 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !1080, !tbaa !1059
  %6 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %5, i64 0, i32 10, !dbg !1081
  store %struct.rax* %4, %struct.rax** %6, align 8, !dbg !1082, !tbaa !1061
  %7 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %5, i64 0, i32 9, i64 0, !dbg !1083
  %8 = bitcast i64* %7 to i8*, !dbg !1083
  %9 = tail call i8* @memset(i8* nonnull %8, i32 0, i64 131072) #6, !dbg !1084
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1085
  ret void, !dbg !1085
}

; Function Attrs: noredzone
declare dso_local void @flushSlaveKeysWithExpireList() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @selectDb(%struct.client* nocapture, i32) local_unnamed_addr #0 !dbg !1086 {
  %3 = icmp slt i32 %1, 0, !dbg !1094
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1096
  br i1 %3, label %12, label %4, !dbg !1096

; <label>:4:                                      ; preds = %2
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !1097, !tbaa !1003
  %6 = icmp sgt i32 %5, %1, !dbg !1098
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1099
  br i1 %6, label %7, label %12, !dbg !1099

; <label>:7:                                      ; preds = %4
  %8 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !1100, !tbaa !1030
  %9 = sext i32 %1 to i64, !dbg !1101
  %10 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %8, i64 %9, !dbg !1101
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1102
  store %struct.redisDb* %10, %struct.redisDb** %11, align 8, !dbg !1103, !tbaa !580
  br label %12, !dbg !1104

; <label>:12:                                     ; preds = %2, %4, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %4 ], [ -1, %2 ], !dbg !1105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1107
  ret i32 %13, !dbg !1107
}

; Function Attrs: noredzone
declare dso_local void @touchWatchedKey(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @signalFlushedDb(i32) local_unnamed_addr #0 !dbg !1108 {
  tail call void @touchWatchedKeysOnFlush(i32 %0) #6, !dbg !1114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1115
  ret void, !dbg !1115
}

; Function Attrs: noredzone
declare dso_local void @touchWatchedKeysOnFlush(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @getFlushCommandFlags(%struct.client*, i32* nocapture) local_unnamed_addr #0 !dbg !1116 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1124
  %4 = load i32, i32* %3, align 8, !dbg !1124, !tbaa !1126
  %5 = icmp sgt i32 %4, 1, !dbg !1127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1128
  br i1 %5, label %6, label %19, !dbg !1128

; <label>:6:                                      ; preds = %2
  %7 = icmp eq i32 %4, 2, !dbg !1129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1132
  br i1 %7, label %8, label %17, !dbg !1132

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1133
  %10 = load %struct.redisObject**, %struct.redisObject*** %9, align 8, !dbg !1133, !tbaa !1134
  %11 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %10, i64 1, !dbg !1135
  %12 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !1135, !tbaa !1136
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %12, i64 0, i32 2, !dbg !1137
  %14 = load i8*, i8** %13, align 8, !dbg !1137, !tbaa !215
  %15 = tail call i32 @strcasecmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !1138
  %16 = icmp eq i32 %15, 0, !dbg !1138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1139
  br i1 %16, label %19, label %17, !dbg !1139

; <label>:17:                                     ; preds = %8, %6
  %18 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1140, !tbaa !1142
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %18) #6, !dbg !1144
  br label %21, !dbg !1145

; <label>:19:                                     ; preds = %2, %8
  %20 = phi i32 [ 1, %8 ], [ 0, %2 ]
  store i32 %20, i32* %1, align 4, !dbg !1146, !tbaa !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %21, !dbg !1147

; <label>:21:                                     ; preds = %19, %17
  %22 = phi i32 [ -1, %17 ], [ 0, %19 ], !dbg !1148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1150
  ret i32 %22, !dbg !1150
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @flushdbCommand(%struct.client*) local_unnamed_addr #0 !dbg !1151 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1159
  %3 = load i32, i32* %2, align 8, !dbg !1159, !tbaa !1126
  %4 = icmp sgt i32 %3, 1, !dbg !1160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1161
  br i1 %4, label %5, label %18, !dbg !1161

; <label>:5:                                      ; preds = %1
  %6 = icmp eq i32 %3, 2, !dbg !1162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1163
  br i1 %6, label %7, label %16, !dbg !1163

; <label>:7:                                      ; preds = %5
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1164
  %9 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1164, !tbaa !1134
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 1, !dbg !1165
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !1165, !tbaa !1136
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 2, !dbg !1166
  %13 = load i8*, i8** %12, align 8, !dbg !1166, !tbaa !215
  %14 = tail call i32 @strcasecmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !1167
  %15 = icmp eq i32 %14, 0, !dbg !1167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1168
  br i1 %15, label %18, label %16, !dbg !1168

; <label>:16:                                     ; preds = %5, %7
  %17 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1169, !tbaa !1142
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %17) #6, !dbg !1170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1173
  br label %31, !dbg !1174

; <label>:18:                                     ; preds = %1, %7
  %19 = phi i32 [ 1, %7 ], [ 0, %1 ], !dbg !1175
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1173
  %20 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1177
  %21 = load %struct.redisDb*, %struct.redisDb** %20, align 8, !dbg !1177, !tbaa !580
  %22 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %21, i64 0, i32 5, !dbg !1178
  %23 = load i32, i32* %22, align 8, !dbg !1178, !tbaa !373
  tail call void @touchWatchedKeysOnFlush(i32 %23) #6, !dbg !1181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1182
  %24 = load %struct.redisDb*, %struct.redisDb** %20, align 8, !dbg !1183, !tbaa !580
  %25 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %24, i64 0, i32 5, !dbg !1184
  %26 = load i32, i32* %25, align 8, !dbg !1184, !tbaa !373
  %27 = tail call i64 @emptyDb(i32 %26, i32 %19, void (i8*)* null) #8, !dbg !1186
  %28 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1187, !tbaa !1188
  %29 = add nsw i64 %28, %27, !dbg !1187
  store i64 %29, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1187, !tbaa !1188
  %30 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1189, !tbaa !1190
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %30) #6, !dbg !1191
  br label %31, !dbg !1192

; <label>:31:                                     ; preds = %18, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1192
  ret void, !dbg !1192
}

; Function Attrs: noredzone nounwind
define dso_local void @flushallCommand(%struct.client*) local_unnamed_addr #0 !dbg !1193 {
  %2 = alloca %struct.rdbSaveInfo, align 8
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1214
  %4 = load i32, i32* %3, align 8, !dbg !1214, !tbaa !1126
  %5 = icmp sgt i32 %4, 1, !dbg !1215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1216
  br i1 %5, label %6, label %19, !dbg !1216

; <label>:6:                                      ; preds = %1
  %7 = icmp eq i32 %4, 2, !dbg !1217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  br i1 %7, label %8, label %17, !dbg !1218

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1219
  %10 = load %struct.redisObject**, %struct.redisObject*** %9, align 8, !dbg !1219, !tbaa !1134
  %11 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %10, i64 1, !dbg !1220
  %12 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !1220, !tbaa !1136
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %12, i64 0, i32 2, !dbg !1221
  %14 = load i8*, i8** %13, align 8, !dbg !1221, !tbaa !215
  %15 = tail call i32 @strcasecmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !1222
  %16 = icmp eq i32 %15, 0, !dbg !1222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1223
  br i1 %16, label %19, label %17, !dbg !1223

; <label>:17:                                     ; preds = %6, %8
  %18 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1224, !tbaa !1142
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %18) #6, !dbg !1225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  br label %44, !dbg !1229

; <label>:19:                                     ; preds = %1, %8
  %20 = phi i32 [ 1, %8 ], [ 0, %1 ], !dbg !1230
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  tail call void @touchWatchedKeysOnFlush(i32 -1) #6, !dbg !1234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  %21 = tail call i64 @emptyDb(i32 -1, i32 %20, void (i8*)* null) #8, !dbg !1237
  %22 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1238, !tbaa !1188
  %23 = add nsw i64 %22, %21, !dbg !1238
  store i64 %23, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1238, !tbaa !1188
  %24 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1239, !tbaa !1190
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %24) #6, !dbg !1240
  %25 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !1241, !tbaa !226
  %26 = icmp eq i32 %25, -1, !dbg !1243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1244
  br i1 %26, label %30, label %27, !dbg !1244

; <label>:27:                                     ; preds = %19
  %28 = tail call i32 @kill(i32 %25, i32 10) #6, !dbg !1245
  %29 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !1247, !tbaa !226
  tail call void @rdbRemoveTempFile(i32 %29) #6, !dbg !1248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1249
  br label %30, !dbg !1249

; <label>:30:                                     ; preds = %19, %27
  %31 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 156), align 8, !dbg !1250, !tbaa !1251
  %32 = icmp sgt i32 %31, 0, !dbg !1252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1253
  %33 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1254, !tbaa !1188
  br i1 %32, label %34, label %41, !dbg !1253

; <label>:34:                                     ; preds = %30
  %35 = bitcast %struct.rdbSaveInfo* %2 to i8*, !dbg !1255
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %35) #7, !dbg !1255
  %36 = call %struct.rdbSaveInfo* @rdbPopulateSaveInfo(%struct.rdbSaveInfo* nonnull %2) #6, !dbg !1257
  %37 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 157), align 8, !dbg !1259, !tbaa !1260
  %38 = call i32 @rdbSave(i8* %37, %struct.rdbSaveInfo* %36) #6, !dbg !1261
  %39 = shl i64 %33, 32, !dbg !1262
  %40 = ashr exact i64 %39, 32, !dbg !1262
  store i64 %40, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1263, !tbaa !1188
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %35) #7, !dbg !1264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1265
  br label %41, !dbg !1265

; <label>:41:                                     ; preds = %30, %34
  %42 = phi i64 [ %40, %34 ], [ %33, %30 ], !dbg !1266
  %43 = add nsw i64 %42, 1, !dbg !1266
  store i64 %43, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1266, !tbaa !1188
  br label %44, !dbg !1267

; <label>:44:                                     ; preds = %41, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1267
  ret void, !dbg !1267
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
define dso_local void @delGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !1268 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1284
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1285
  %4 = load i32, i32* %3, align 8, !dbg !1285, !tbaa !1126
  %5 = icmp sgt i32 %4, 1, !dbg !1286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1287
  br i1 %5, label %6, label %72, !dbg !1287

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %9 = icmp eq i32 %1, 0
  br label %10, !dbg !1287

; <label>:10:                                     ; preds = %6, %66
  %11 = phi i64 [ 1, %6 ], [ %68, %66 ]
  %12 = phi i32 [ 0, %6 ], [ %67, %66 ]
  %13 = load %struct.redisDb*, %struct.redisDb** %7, align 8, !dbg !1288, !tbaa !580
  %14 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1289, !tbaa !1134
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 %11, !dbg !1290
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !1290, !tbaa !1136
  %17 = tail call i32 @expireIfNeeded(%struct.redisDb* %13, %struct.redisObject* %16) #8, !dbg !1291
  %18 = load %struct.redisDb*, %struct.redisDb** %7, align 8, !dbg !1292, !tbaa !580
  %19 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1292, !tbaa !1134
  %20 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 %11, !dbg !1292
  %21 = load %struct.redisObject*, %struct.redisObject** %20, align 8, !dbg !1292, !tbaa !1136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1293
  br i1 %9, label %24, label %22, !dbg !1293

; <label>:22:                                     ; preds = %10
  %23 = tail call i32 @dbAsyncDelete(%struct.redisDb* %18, %struct.redisObject* %21) #6, !dbg !1294
  br label %49, !dbg !1293

; <label>:24:                                     ; preds = %10
  %25 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %18, i64 0, i32 1, !dbg !1298
  %26 = load %struct.dict*, %struct.dict** %25, align 8, !dbg !1298, !tbaa !387
  %27 = getelementptr inbounds %struct.dict, %struct.dict* %26, i64 0, i32 2, i64 0, i32 3, !dbg !1298
  %28 = load i64, i64* %27, align 8, !dbg !1298, !tbaa !388
  %29 = getelementptr inbounds %struct.dict, %struct.dict* %26, i64 0, i32 2, i64 1, i32 3, !dbg !1298
  %30 = load i64, i64* %29, align 8, !dbg !1298, !tbaa !388
  %31 = sub i64 0, %30, !dbg !1299
  %32 = icmp eq i64 %28, %31, !dbg !1299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1300
  %33 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %21, i64 0, i32 2, !dbg !1301
  br i1 %32, label %37, label %34, !dbg !1300

; <label>:34:                                     ; preds = %24
  %35 = load i8*, i8** %33, align 8, !dbg !1302, !tbaa !215
  %36 = tail call i32 @dictDelete(%struct.dict* %26, i8* %35) #6, !dbg !1303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1303
  br label %37, !dbg !1303

; <label>:37:                                     ; preds = %34, %24
  %38 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %18, i64 0, i32 0, !dbg !1304
  %39 = load %struct.dict*, %struct.dict** %38, align 8, !dbg !1304, !tbaa !207
  %40 = load i8*, i8** %33, align 8, !dbg !1305, !tbaa !215
  %41 = tail call i32 @dictDelete(%struct.dict* %39, i8* %40) #6, !dbg !1306
  %42 = icmp eq i32 %41, 0, !dbg !1307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1308
  br i1 %42, label %43, label %47, !dbg !1308

; <label>:43:                                     ; preds = %37
  %44 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !1309, !tbaa !404
  %45 = icmp eq i32 %44, 0, !dbg !1310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1311
  br i1 %45, label %47, label %46, !dbg !1311

; <label>:46:                                     ; preds = %43
  tail call void @slotToKeyUpdateKey(%struct.redisObject* nonnull %21, i32 0) #6, !dbg !1314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1316
  br label %47, !dbg !1316

; <label>:47:                                     ; preds = %37, %43, %46
  %48 = phi i32 [ 1, %46 ], [ 1, %43 ], [ 0, %37 ], !dbg !1317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1318
  br label %49, !dbg !1293

; <label>:49:                                     ; preds = %47, %22
  %50 = phi i32 [ %23, %22 ], [ %48, %47 ], !dbg !1293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1293
  %51 = icmp eq i32 %50, 0, !dbg !1320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1322
  br i1 %51, label %66, label %52, !dbg !1322

; <label>:52:                                     ; preds = %49
  %53 = load %struct.redisDb*, %struct.redisDb** %7, align 8, !dbg !1323, !tbaa !580
  %54 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1325, !tbaa !1134
  %55 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %54, i64 %11, !dbg !1326
  %56 = load %struct.redisObject*, %struct.redisObject** %55, align 8, !dbg !1326, !tbaa !1136
  tail call void @touchWatchedKey(%struct.redisDb* %53, %struct.redisObject* %56) #6, !dbg !1330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  %57 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1332, !tbaa !1134
  %58 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %57, i64 %11, !dbg !1333
  %59 = load %struct.redisObject*, %struct.redisObject** %58, align 8, !dbg !1333, !tbaa !1136
  %60 = load %struct.redisDb*, %struct.redisDb** %7, align 8, !dbg !1334, !tbaa !580
  %61 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %60, i64 0, i32 5, !dbg !1335
  %62 = load i32, i32* %61, align 8, !dbg !1335, !tbaa !373
  tail call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct.redisObject* %59, i32 %62) #6, !dbg !1336
  %63 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1337, !tbaa !1188
  %64 = add nsw i64 %63, 1, !dbg !1337
  store i64 %64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1337, !tbaa !1188
  %65 = add nsw i32 %12, 1, !dbg !1338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1339
  br label %66, !dbg !1339

; <label>:66:                                     ; preds = %49, %52
  %67 = phi i32 [ %65, %52 ], [ %12, %49 ], !dbg !1340
  %68 = add nuw nsw i64 %11, 1, !dbg !1341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1342
  %69 = load i32, i32* %3, align 8, !dbg !1285, !tbaa !1126
  %70 = sext i32 %69 to i64, !dbg !1286
  %71 = icmp slt i64 %68, %70, !dbg !1286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1287
  br i1 %71, label %10, label %72, !dbg !1287, !llvm.loop !1343

; <label>:72:                                     ; preds = %66, %2
  %73 = phi i32 [ 0, %2 ], [ %67, %66 ], !dbg !1345
  %74 = sext i32 %73 to i64, !dbg !1346
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %74) #6, !dbg !1347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  ret void, !dbg !1348
}

; Function Attrs: noredzone
declare dso_local void @notifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @delCommand(%struct.client*) local_unnamed_addr #0 !dbg !1349 {
  tail call void @delGenericCommand(%struct.client* %0, i32 0) #8, !dbg !1353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1354
  ret void, !dbg !1354
}

; Function Attrs: noredzone nounwind
define dso_local void @unlinkCommand(%struct.client*) local_unnamed_addr #0 !dbg !1355 {
  tail call void @delGenericCommand(%struct.client* %0, i32 1) #8, !dbg !1359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1360
  ret void, !dbg !1360
}

; Function Attrs: noredzone nounwind
define dso_local void @existsCommand(%struct.client*) local_unnamed_addr #0 !dbg !1361 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1369
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1371
  %3 = load i32, i32* %2, align 8, !dbg !1371, !tbaa !1126
  %4 = icmp sgt i32 %3, 1, !dbg !1373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1374
  br i1 %4, label %5, label %25, !dbg !1374

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %8, !dbg !1374

; <label>:8:                                      ; preds = %5, %19
  %9 = phi i64 [ 1, %5 ], [ %21, %19 ]
  %10 = phi i64 [ 0, %5 ], [ %20, %19 ]
  %11 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1375, !tbaa !580
  %12 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1378, !tbaa !1134
  %13 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %12, i64 %9, !dbg !1379
  %14 = load %struct.redisObject*, %struct.redisObject** %13, align 8, !dbg !1379, !tbaa !1136
  %15 = tail call %struct.redisObject* @lookupKeyReadWithFlags(%struct.redisDb* %11, %struct.redisObject* %14, i32 0) #6, !dbg !1383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1384
  %16 = icmp eq %struct.redisObject* %15, null, !dbg !1385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1386
  br i1 %16, label %19, label %17, !dbg !1386

; <label>:17:                                     ; preds = %8
  %18 = add nsw i64 %10, 1, !dbg !1387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1388
  br label %19, !dbg !1388

; <label>:19:                                     ; preds = %8, %17
  %20 = phi i64 [ %18, %17 ], [ %10, %8 ], !dbg !1389
  %21 = add nuw nsw i64 %9, 1, !dbg !1390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1391
  %22 = load i32, i32* %2, align 8, !dbg !1371, !tbaa !1126
  %23 = sext i32 %22 to i64, !dbg !1373
  %24 = icmp slt i64 %21, %23, !dbg !1373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1374
  br i1 %24, label %8, label %25, !dbg !1374, !llvm.loop !1392

; <label>:25:                                     ; preds = %19, %1
  %26 = phi i64 [ 0, %1 ], [ %20, %19 ], !dbg !1394
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %26) #6, !dbg !1395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1396
  ret void, !dbg !1396
}

; Function Attrs: noredzone nounwind
define dso_local void @selectCommand(%struct.client*) local_unnamed_addr #0 !dbg !1397 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !1402
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7, !dbg !1402
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1403
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1403, !tbaa !1134
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !1405
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1405, !tbaa !1136
  %8 = call i32 @getLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %7, i64* nonnull %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !1407
  %9 = icmp eq i32 %8, 0, !dbg !1408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1409
  br i1 %9, label %10, label %32, !dbg !1409

; <label>:10:                                     ; preds = %1
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !1410, !tbaa !404
  %12 = icmp ne i32 %11, 0, !dbg !1412
  %13 = load i64, i64* %2, align 8, !dbg !1413
  %14 = icmp ne i64 %13, 0, !dbg !1414
  %15 = and i1 %12, %14, !dbg !1415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1415
  br i1 %15, label %16, label %17, !dbg !1415

; <label>:16:                                     ; preds = %10
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !1416
  br label %32, !dbg !1418

; <label>:17:                                     ; preds = %10
  %18 = trunc i64 %13 to i32, !dbg !1419
  %19 = icmp slt i32 %18, 0, !dbg !1424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1425
  br i1 %19, label %23, label %20, !dbg !1425

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !1426, !tbaa !1003
  %22 = icmp sgt i32 %21, %18, !dbg !1427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1428
  br i1 %22, label %24, label %23, !dbg !1428

; <label>:23:                                     ; preds = %17, %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1431
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !1432
  br label %31, !dbg !1434

; <label>:24:                                     ; preds = %20
  %25 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !1435, !tbaa !1030
  %26 = shl i64 %13, 32, !dbg !1436
  %27 = ashr exact i64 %26, 32, !dbg !1436
  %28 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %25, i64 %27, !dbg !1436
  %29 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1437
  store %struct.redisDb* %28, %struct.redisDb** %29, align 8, !dbg !1438, !tbaa !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1431
  %30 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1440, !tbaa !1190
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %30) #6, !dbg !1442
  br label %31

; <label>:31:                                     ; preds = %24, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %32, !dbg !1443

; <label>:32:                                     ; preds = %1, %31, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1444
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7, !dbg !1443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1443
  ret void, !dbg !1443
}

; Function Attrs: noredzone
declare dso_local i32 @getLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @randomkeyCommand(%struct.client*) local_unnamed_addr #0 !dbg !1445 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1450
  %3 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1450, !tbaa !580
  %4 = tail call %struct.redisObject* @dbRandomKey(%struct.redisDb* %3) #8, !dbg !1452
  %5 = icmp eq %struct.redisObject* %4, null, !dbg !1454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1455
  br i1 %5, label %6, label %8, !dbg !1455

; <label>:6:                                      ; preds = %1
  %7 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1456, !tbaa !1458
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %7) #6, !dbg !1459
  br label %9, !dbg !1460

; <label>:8:                                      ; preds = %1
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* nonnull %4) #6, !dbg !1461
  tail call void @decrRefCount(%struct.redisObject* nonnull %4) #6, !dbg !1462
  br label %9, !dbg !1463

; <label>:9:                                      ; preds = %8, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1463
  ret void, !dbg !1463
}

; Function Attrs: noredzone
declare dso_local void @addReplyBulk(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @keysCommand(%struct.client*) local_unnamed_addr #0 !dbg !1465 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1490
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1490, !tbaa !1134
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !1491
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !1491, !tbaa !1136
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %5, i64 0, i32 2, !dbg !1492
  %7 = load i8*, i8** %6, align 8, !dbg !1492, !tbaa !215
  %8 = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !1496
  %9 = load i8, i8* %8, align 1, !dbg !1496, !tbaa !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1498
  %10 = trunc i8 %9 to i3, !dbg !1498
  switch i3 %10, label %32 [
    i3 0, label %11
    i3 1, label %14
    i3 2, label %18
    i3 3, label %23
    i3 -4, label %28
  ], !dbg !1498

; <label>:11:                                     ; preds = %1
  %12 = lshr i8 %9, 3, !dbg !1499
  %13 = zext i8 %12 to i64, !dbg !1499
  br label %32, !dbg !1500

; <label>:14:                                     ; preds = %1
  %15 = getelementptr inbounds i8, i8* %7, i64 -3, !dbg !1501
  %16 = load i8, i8* %15, align 1, !dbg !1502, !tbaa !222
  %17 = zext i8 %16 to i64, !dbg !1501
  br label %32, !dbg !1503

; <label>:18:                                     ; preds = %1
  %19 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !1504
  %20 = bitcast i8* %19 to i16*, !dbg !1505
  %21 = load i16, i16* %20, align 1, !dbg !1505, !tbaa !830
  %22 = zext i16 %21 to i64, !dbg !1504
  br label %32, !dbg !1506

; <label>:23:                                     ; preds = %1
  %24 = getelementptr inbounds i8, i8* %7, i64 -9, !dbg !1507
  %25 = bitcast i8* %24 to i32*, !dbg !1508
  %26 = load i32, i32* %25, align 1, !dbg !1508, !tbaa !835
  %27 = zext i32 %26 to i64, !dbg !1507
  br label %32, !dbg !1509

; <label>:28:                                     ; preds = %1
  %29 = getelementptr inbounds i8, i8* %7, i64 -17, !dbg !1510
  %30 = bitcast i8* %29 to i64*, !dbg !1511
  %31 = load i64, i64* %30, align 1, !dbg !1511, !tbaa !839
  br label %32, !dbg !1512

; <label>:32:                                     ; preds = %1, %11, %14, %18, %23, %28
  %33 = phi i64 [ %31, %28 ], [ %27, %23 ], [ %22, %18 ], [ %17, %14 ], [ %13, %11 ], [ 0, %1 ], !dbg !1513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1515
  %34 = trunc i64 %33 to i32, !dbg !1516
  %35 = tail call i8* @addDeferredMultiBulkLength(%struct.client* nonnull %0) #6, !dbg !1519
  %36 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1521
  %37 = load %struct.redisDb*, %struct.redisDb** %36, align 8, !dbg !1521, !tbaa !580
  %38 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %37, i64 0, i32 0, !dbg !1522
  %39 = load %struct.dict*, %struct.dict** %38, align 8, !dbg !1522, !tbaa !207
  %40 = tail call %struct.dictIterator* @dictGetSafeIterator(%struct.dict* %39) #6, !dbg !1523
  %41 = load i8, i8* %7, align 1, !dbg !1525, !tbaa !222
  %42 = icmp eq i8 %41, 42, !dbg !1526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1527
  br i1 %42, label %43, label %47, !dbg !1527

; <label>:43:                                     ; preds = %32
  %44 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1528
  %45 = load i8, i8* %44, align 1, !dbg !1528, !tbaa !222
  %46 = icmp eq i8 %45, 0, !dbg !1529
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %47

; <label>:47:                                     ; preds = %43, %32
  %48 = phi i1 [ false, %32 ], [ %46, %43 ], !dbg !1514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1530
  %49 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %40) #6, !dbg !1531
  %50 = icmp eq %struct.dictEntry* %49, null, !dbg !1533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1530
  br i1 %50, label %138, label %51, !dbg !1530

; <label>:51:                                     ; preds = %47, %134
  %52 = phi %struct.dictEntry* [ %136, %134 ], [ %49, %47 ]
  %53 = phi i64 [ %135, %134 ], [ 0, %47 ]
  %54 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %52, i64 0, i32 0, !dbg !1534
  %55 = load i8*, i8** %54, align 8, !dbg !1534, !tbaa !805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1536
  %56 = getelementptr inbounds i8, i8* %55, i64 -1, !dbg !1538
  br i1 %48, label %86, label %57, !dbg !1536

; <label>:57:                                     ; preds = %51
  %58 = load i8, i8* %56, align 1, !dbg !1543, !tbaa !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1545
  %59 = trunc i8 %58 to i3, !dbg !1545
  switch i3 %59, label %81 [
    i3 0, label %60
    i3 1, label %63
    i3 2, label %67
    i3 3, label %72
    i3 -4, label %77
  ], !dbg !1545

; <label>:60:                                     ; preds = %57
  %61 = lshr i8 %58, 3, !dbg !1546
  %62 = zext i8 %61 to i64, !dbg !1546
  br label %81, !dbg !1547

; <label>:63:                                     ; preds = %57
  %64 = getelementptr inbounds i8, i8* %55, i64 -3, !dbg !1548
  %65 = load i8, i8* %64, align 1, !dbg !1549, !tbaa !222
  %66 = zext i8 %65 to i64, !dbg !1548
  br label %81, !dbg !1550

; <label>:67:                                     ; preds = %57
  %68 = getelementptr inbounds i8, i8* %55, i64 -5, !dbg !1551
  %69 = bitcast i8* %68 to i16*, !dbg !1552
  %70 = load i16, i16* %69, align 1, !dbg !1552, !tbaa !830
  %71 = zext i16 %70 to i64, !dbg !1551
  br label %81, !dbg !1553

; <label>:72:                                     ; preds = %57
  %73 = getelementptr inbounds i8, i8* %55, i64 -9, !dbg !1554
  %74 = bitcast i8* %73 to i32*, !dbg !1555
  %75 = load i32, i32* %74, align 1, !dbg !1555, !tbaa !835
  %76 = zext i32 %75 to i64, !dbg !1554
  br label %81, !dbg !1556

; <label>:77:                                     ; preds = %57
  %78 = getelementptr inbounds i8, i8* %55, i64 -17, !dbg !1557
  %79 = bitcast i8* %78 to i64*, !dbg !1558
  %80 = load i64, i64* %79, align 1, !dbg !1558, !tbaa !839
  br label %81, !dbg !1559

; <label>:81:                                     ; preds = %57, %60, %63, %67, %72, %77
  %82 = phi i64 [ %80, %77 ], [ %76, %72 ], [ %71, %67 ], [ %66, %63 ], [ %62, %60 ], [ 0, %57 ], !dbg !1560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1562
  %83 = trunc i64 %82 to i32, !dbg !1563
  %84 = tail call i32 @stringmatchlen(i8* %7, i32 %34, i8* nonnull %55, i32 %83, i32 0) #6, !dbg !1564
  %85 = icmp eq i32 %84, 0, !dbg !1564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  br i1 %85, label %134, label %86, !dbg !1565

; <label>:86:                                     ; preds = %51, %81
  %87 = load i8, i8* %56, align 1, !dbg !1538, !tbaa !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1568
  %88 = trunc i8 %87 to i3, !dbg !1568
  switch i3 %88, label %110 [
    i3 0, label %89
    i3 1, label %92
    i3 2, label %96
    i3 3, label %101
    i3 -4, label %106
  ], !dbg !1568

; <label>:89:                                     ; preds = %86
  %90 = lshr i8 %87, 3, !dbg !1569
  %91 = zext i8 %90 to i64, !dbg !1569
  br label %110, !dbg !1570

; <label>:92:                                     ; preds = %86
  %93 = getelementptr inbounds i8, i8* %55, i64 -3, !dbg !1571
  %94 = load i8, i8* %93, align 1, !dbg !1572, !tbaa !222
  %95 = zext i8 %94 to i64, !dbg !1571
  br label %110, !dbg !1573

; <label>:96:                                     ; preds = %86
  %97 = getelementptr inbounds i8, i8* %55, i64 -5, !dbg !1574
  %98 = bitcast i8* %97 to i16*, !dbg !1575
  %99 = load i16, i16* %98, align 1, !dbg !1575, !tbaa !830
  %100 = zext i16 %99 to i64, !dbg !1574
  br label %110, !dbg !1576

; <label>:101:                                    ; preds = %86
  %102 = getelementptr inbounds i8, i8* %55, i64 -9, !dbg !1577
  %103 = bitcast i8* %102 to i32*, !dbg !1578
  %104 = load i32, i32* %103, align 1, !dbg !1578, !tbaa !835
  %105 = zext i32 %104 to i64, !dbg !1577
  br label %110, !dbg !1579

; <label>:106:                                    ; preds = %86
  %107 = getelementptr inbounds i8, i8* %55, i64 -17, !dbg !1580
  %108 = bitcast i8* %107 to i64*, !dbg !1581
  %109 = load i64, i64* %108, align 1, !dbg !1581, !tbaa !839
  br label %110, !dbg !1582

; <label>:110:                                    ; preds = %86, %89, %92, %96, %101, %106
  %111 = phi i64 [ %109, %106 ], [ %105, %101 ], [ %100, %96 ], [ %95, %92 ], [ %91, %89 ], [ 0, %86 ], !dbg !1583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1585
  %112 = tail call %struct.redisObject* @createStringObject(i8* nonnull %55, i64 %111) #6, !dbg !1586
  %113 = load %struct.redisDb*, %struct.redisDb** %36, align 8, !dbg !1588, !tbaa !580
  %114 = tail call i64 @getExpire(%struct.redisDb* %113, %struct.redisObject* %112) #6, !dbg !1593
  %115 = icmp slt i64 %114, 0, !dbg !1595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1596
  br i1 %115, label %126, label %116, !dbg !1596

; <label>:116:                                    ; preds = %110
  %117 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !1597, !tbaa !349
  %118 = icmp eq i32 %117, 0, !dbg !1598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1599
  br i1 %118, label %119, label %126, !dbg !1599

; <label>:119:                                    ; preds = %116
  %120 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !1600, !tbaa !353
  %121 = icmp eq %struct.client* %120, null, !dbg !1601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1601
  br i1 %121, label %124, label %122, !dbg !1601

; <label>:122:                                    ; preds = %119
  %123 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 276), align 8, !dbg !1602, !tbaa !356
  br label %127, !dbg !1601

; <label>:124:                                    ; preds = %119
  %125 = tail call i64 @mstime() #6, !dbg !1603
  br label %127, !dbg !1601

; <label>:126:                                    ; preds = %116, %110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1606
  br label %130, !dbg !1606

; <label>:127:                                    ; preds = %122, %124
  %128 = phi i64 [ %123, %122 ], [ %125, %124 ], !dbg !1601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1601
  %129 = icmp sgt i64 %128, %114, !dbg !1608
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1606
  br i1 %129, label %132, label %130, !dbg !1606

; <label>:130:                                    ; preds = %127, %126
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %112) #6, !dbg !1609
  %131 = add i64 %53, 1, !dbg !1611
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1612
  br label %132, !dbg !1612

; <label>:132:                                    ; preds = %127, %130
  %133 = phi i64 [ %53, %127 ], [ %131, %130 ], !dbg !1613
  tail call void @decrRefCount(%struct.redisObject* %112) #6, !dbg !1614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1615
  br label %134, !dbg !1615

; <label>:134:                                    ; preds = %81, %132
  %135 = phi i64 [ %133, %132 ], [ %53, %81 ], !dbg !1518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1530
  %136 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %40) #6, !dbg !1531
  %137 = icmp eq %struct.dictEntry* %136, null, !dbg !1533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1530
  br i1 %137, label %138, label %51, !dbg !1530, !llvm.loop !1616

; <label>:138:                                    ; preds = %134, %47
  %139 = phi i64 [ 0, %47 ], [ %135, %134 ], !dbg !1518
  tail call void @dictReleaseIterator(%struct.dictIterator* %40) #6, !dbg !1618
  tail call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %35, i64 %139) #6, !dbg !1619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1620
  ret void, !dbg !1620
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
define dso_local i32 @keyIsExpired(%struct.redisDb* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !332 {
  %3 = tail call i64 @getExpire(%struct.redisDb* %0, %struct.redisObject* %1) #8, !dbg !1623
  %4 = icmp slt i64 %3, 0, !dbg !1625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1626
  br i1 %4, label %19, label %5, !dbg !1626

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !1627, !tbaa !349
  %7 = icmp eq i32 %6, 0, !dbg !1628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1629
  br i1 %7, label %8, label %19, !dbg !1629

; <label>:8:                                      ; preds = %5
  %9 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !1630, !tbaa !353
  %10 = icmp eq %struct.client* %9, null, !dbg !1631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1631
  br i1 %10, label %13, label %11, !dbg !1631

; <label>:11:                                     ; preds = %8
  %12 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 276), align 8, !dbg !1632, !tbaa !356
  br label %15, !dbg !1631

; <label>:13:                                     ; preds = %8
  %14 = tail call i64 @mstime() #6, !dbg !1633
  br label %15, !dbg !1631

; <label>:15:                                     ; preds = %13, %11
  %16 = phi i64 [ %12, %11 ], [ %14, %13 ], !dbg !1631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1631
  %17 = icmp sgt i64 %16, %3, !dbg !1635
  %18 = zext i1 %17 to i32, !dbg !1635
  br label %19

; <label>:19:                                     ; preds = %5, %2, %15
  %20 = phi i32 [ %18, %15 ], [ 0, %2 ], [ 0, %5 ], !dbg !1636
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1637
  ret i32 %20, !dbg !1637
}

; Function Attrs: noredzone
declare dso_local void @dictReleaseIterator(%struct.dictIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @setDeferredMultiBulkLength(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @scanCallback(i8* nocapture readonly, %struct.dictEntry* nocapture readonly) #0 !dbg !1638 {
  %3 = bitcast i8* %0 to %struct.list**, !dbg !1667
  %4 = load %struct.list*, %struct.list** %3, align 8, !dbg !1667, !tbaa !1136
  %5 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1669
  %6 = bitcast i8* %5 to %struct.redisObject**, !dbg !1669
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1669, !tbaa !1136
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !1672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1673
  br i1 %8, label %9, label %39, !dbg !1673

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 0, !dbg !1674
  %11 = load i8*, i8** %10, align 8, !dbg !1674, !tbaa !805
  %12 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !1678
  %13 = load i8, i8* %12, align 1, !dbg !1678, !tbaa !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1680
  %14 = trunc i8 %13 to i3, !dbg !1680
  switch i3 %14, label %36 [
    i3 0, label %15
    i3 1, label %18
    i3 2, label %22
    i3 3, label %27
    i3 -4, label %32
  ], !dbg !1680

; <label>:15:                                     ; preds = %9
  %16 = lshr i8 %13, 3, !dbg !1681
  %17 = zext i8 %16 to i64, !dbg !1681
  br label %36, !dbg !1682

; <label>:18:                                     ; preds = %9
  %19 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !1683
  %20 = load i8, i8* %19, align 1, !dbg !1684, !tbaa !222
  %21 = zext i8 %20 to i64, !dbg !1683
  br label %36, !dbg !1685

; <label>:22:                                     ; preds = %9
  %23 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !1686
  %24 = bitcast i8* %23 to i16*, !dbg !1687
  %25 = load i16, i16* %24, align 1, !dbg !1687, !tbaa !830
  %26 = zext i16 %25 to i64, !dbg !1686
  br label %36, !dbg !1688

; <label>:27:                                     ; preds = %9
  %28 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !1689
  %29 = bitcast i8* %28 to i32*, !dbg !1690
  %30 = load i32, i32* %29, align 1, !dbg !1690, !tbaa !835
  %31 = zext i32 %30 to i64, !dbg !1689
  br label %36, !dbg !1691

; <label>:32:                                     ; preds = %9
  %33 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !1692
  %34 = bitcast i8* %33 to i64*, !dbg !1693
  %35 = load i64, i64* %34, align 1, !dbg !1693, !tbaa !839
  br label %36, !dbg !1694

; <label>:36:                                     ; preds = %9, %15, %18, %22, %27, %32
  %37 = phi i64 [ %35, %32 ], [ %31, %27 ], [ %26, %22 ], [ %21, %18 ], [ %17, %15 ], [ 0, %9 ], !dbg !1695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1697
  %38 = tail call %struct.redisObject* @createStringObject(i8* %11, i64 %37) #6, !dbg !1698
  br label %174, !dbg !1700

; <label>:39:                                     ; preds = %2
  %40 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 0, !dbg !1701
  %41 = load i32, i32* %40, align 8, !dbg !1701
  %42 = and i32 %41, 15, !dbg !1701
  %43 = icmp eq i32 %42, 2, !dbg !1702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1703
  br i1 %43, label %44, label %74, !dbg !1703

; <label>:44:                                     ; preds = %39
  %45 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 0, !dbg !1704
  %46 = load i8*, i8** %45, align 8, !dbg !1704, !tbaa !805
  %47 = getelementptr inbounds i8, i8* %46, i64 -1, !dbg !1708
  %48 = load i8, i8* %47, align 1, !dbg !1708, !tbaa !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1710
  %49 = trunc i8 %48 to i3, !dbg !1710
  switch i3 %49, label %71 [
    i3 0, label %50
    i3 1, label %53
    i3 2, label %57
    i3 3, label %62
    i3 -4, label %67
  ], !dbg !1710

; <label>:50:                                     ; preds = %44
  %51 = lshr i8 %48, 3, !dbg !1711
  %52 = zext i8 %51 to i64, !dbg !1711
  br label %71, !dbg !1712

; <label>:53:                                     ; preds = %44
  %54 = getelementptr inbounds i8, i8* %46, i64 -3, !dbg !1713
  %55 = load i8, i8* %54, align 1, !dbg !1714, !tbaa !222
  %56 = zext i8 %55 to i64, !dbg !1713
  br label %71, !dbg !1715

; <label>:57:                                     ; preds = %44
  %58 = getelementptr inbounds i8, i8* %46, i64 -5, !dbg !1716
  %59 = bitcast i8* %58 to i16*, !dbg !1717
  %60 = load i16, i16* %59, align 1, !dbg !1717, !tbaa !830
  %61 = zext i16 %60 to i64, !dbg !1716
  br label %71, !dbg !1718

; <label>:62:                                     ; preds = %44
  %63 = getelementptr inbounds i8, i8* %46, i64 -9, !dbg !1719
  %64 = bitcast i8* %63 to i32*, !dbg !1720
  %65 = load i32, i32* %64, align 1, !dbg !1720, !tbaa !835
  %66 = zext i32 %65 to i64, !dbg !1719
  br label %71, !dbg !1721

; <label>:67:                                     ; preds = %44
  %68 = getelementptr inbounds i8, i8* %46, i64 -17, !dbg !1722
  %69 = bitcast i8* %68 to i64*, !dbg !1723
  %70 = load i64, i64* %69, align 1, !dbg !1723, !tbaa !839
  br label %71, !dbg !1724

; <label>:71:                                     ; preds = %44, %50, %53, %57, %62, %67
  %72 = phi i64 [ %70, %67 ], [ %66, %62 ], [ %61, %57 ], [ %56, %53 ], [ %52, %50 ], [ 0, %44 ], !dbg !1725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1727
  %73 = tail call %struct.redisObject* @createStringObject(i8* %46, i64 %72) #6, !dbg !1728
  br label %174, !dbg !1729

; <label>:74:                                     ; preds = %39
  %75 = icmp eq i32 %42, 4, !dbg !1730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1731
  br i1 %75, label %76, label %135, !dbg !1731

; <label>:76:                                     ; preds = %74
  %77 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 0, !dbg !1732
  %78 = load i8*, i8** %77, align 8, !dbg !1732, !tbaa !805
  %79 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 1, i32 0, !dbg !1734
  %80 = load i8*, i8** %79, align 8, !dbg !1734, !tbaa !222
  %81 = getelementptr inbounds i8, i8* %78, i64 -1, !dbg !1738
  %82 = load i8, i8* %81, align 1, !dbg !1738, !tbaa !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1740
  %83 = trunc i8 %82 to i3, !dbg !1740
  switch i3 %83, label %105 [
    i3 0, label %84
    i3 1, label %87
    i3 2, label %91
    i3 3, label %96
    i3 -4, label %101
  ], !dbg !1740

; <label>:84:                                     ; preds = %76
  %85 = lshr i8 %82, 3, !dbg !1741
  %86 = zext i8 %85 to i64, !dbg !1741
  br label %105, !dbg !1742

; <label>:87:                                     ; preds = %76
  %88 = getelementptr inbounds i8, i8* %78, i64 -3, !dbg !1743
  %89 = load i8, i8* %88, align 1, !dbg !1744, !tbaa !222
  %90 = zext i8 %89 to i64, !dbg !1743
  br label %105, !dbg !1745

; <label>:91:                                     ; preds = %76
  %92 = getelementptr inbounds i8, i8* %78, i64 -5, !dbg !1746
  %93 = bitcast i8* %92 to i16*, !dbg !1747
  %94 = load i16, i16* %93, align 1, !dbg !1747, !tbaa !830
  %95 = zext i16 %94 to i64, !dbg !1746
  br label %105, !dbg !1748

; <label>:96:                                     ; preds = %76
  %97 = getelementptr inbounds i8, i8* %78, i64 -9, !dbg !1749
  %98 = bitcast i8* %97 to i32*, !dbg !1750
  %99 = load i32, i32* %98, align 1, !dbg !1750, !tbaa !835
  %100 = zext i32 %99 to i64, !dbg !1749
  br label %105, !dbg !1751

; <label>:101:                                    ; preds = %76
  %102 = getelementptr inbounds i8, i8* %78, i64 -17, !dbg !1752
  %103 = bitcast i8* %102 to i64*, !dbg !1753
  %104 = load i64, i64* %103, align 1, !dbg !1753, !tbaa !839
  br label %105, !dbg !1754

; <label>:105:                                    ; preds = %76, %84, %87, %91, %96, %101
  %106 = phi i64 [ %104, %101 ], [ %100, %96 ], [ %95, %91 ], [ %90, %87 ], [ %86, %84 ], [ 0, %76 ], !dbg !1755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1757
  %107 = tail call %struct.redisObject* @createStringObject(i8* %78, i64 %106) #6, !dbg !1758
  %108 = getelementptr inbounds i8, i8* %80, i64 -1, !dbg !1761
  %109 = load i8, i8* %108, align 1, !dbg !1761, !tbaa !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1763
  %110 = trunc i8 %109 to i3, !dbg !1763
  switch i3 %110, label %132 [
    i3 0, label %111
    i3 1, label %114
    i3 2, label %118
    i3 3, label %123
    i3 -4, label %128
  ], !dbg !1763

; <label>:111:                                    ; preds = %105
  %112 = lshr i8 %109, 3, !dbg !1764
  %113 = zext i8 %112 to i64, !dbg !1764
  br label %132, !dbg !1765

; <label>:114:                                    ; preds = %105
  %115 = getelementptr inbounds i8, i8* %80, i64 -3, !dbg !1766
  %116 = load i8, i8* %115, align 1, !dbg !1767, !tbaa !222
  %117 = zext i8 %116 to i64, !dbg !1766
  br label %132, !dbg !1768

; <label>:118:                                    ; preds = %105
  %119 = getelementptr inbounds i8, i8* %80, i64 -5, !dbg !1769
  %120 = bitcast i8* %119 to i16*, !dbg !1770
  %121 = load i16, i16* %120, align 1, !dbg !1770, !tbaa !830
  %122 = zext i16 %121 to i64, !dbg !1769
  br label %132, !dbg !1771

; <label>:123:                                    ; preds = %105
  %124 = getelementptr inbounds i8, i8* %80, i64 -9, !dbg !1772
  %125 = bitcast i8* %124 to i32*, !dbg !1773
  %126 = load i32, i32* %125, align 1, !dbg !1773, !tbaa !835
  %127 = zext i32 %126 to i64, !dbg !1772
  br label %132, !dbg !1774

; <label>:128:                                    ; preds = %105
  %129 = getelementptr inbounds i8, i8* %80, i64 -17, !dbg !1775
  %130 = bitcast i8* %129 to i64*, !dbg !1776
  %131 = load i64, i64* %130, align 1, !dbg !1776, !tbaa !839
  br label %132, !dbg !1777

; <label>:132:                                    ; preds = %105, %111, %114, %118, %123, %128
  %133 = phi i64 [ %131, %128 ], [ %127, %123 ], [ %122, %118 ], [ %117, %114 ], [ %113, %111 ], [ 0, %105 ], !dbg !1778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1779
  %134 = tail call %struct.redisObject* @createStringObject(i8* nonnull %80, i64 %133) #6, !dbg !1780
  br label %178, !dbg !1781

; <label>:135:                                    ; preds = %74
  %136 = icmp eq i32 %42, 3, !dbg !1782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1783
  br i1 %136, label %137, label %173, !dbg !1783

; <label>:137:                                    ; preds = %135
  %138 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 0, !dbg !1784
  %139 = load i8*, i8** %138, align 8, !dbg !1784, !tbaa !805
  %140 = getelementptr inbounds i8, i8* %139, i64 -1, !dbg !1788
  %141 = load i8, i8* %140, align 1, !dbg !1788, !tbaa !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1790
  %142 = trunc i8 %141 to i3, !dbg !1790
  switch i3 %142, label %164 [
    i3 0, label %143
    i3 1, label %146
    i3 2, label %150
    i3 3, label %155
    i3 -4, label %160
  ], !dbg !1790

; <label>:143:                                    ; preds = %137
  %144 = lshr i8 %141, 3, !dbg !1791
  %145 = zext i8 %144 to i64, !dbg !1791
  br label %164, !dbg !1792

; <label>:146:                                    ; preds = %137
  %147 = getelementptr inbounds i8, i8* %139, i64 -3, !dbg !1793
  %148 = load i8, i8* %147, align 1, !dbg !1794, !tbaa !222
  %149 = zext i8 %148 to i64, !dbg !1793
  br label %164, !dbg !1795

; <label>:150:                                    ; preds = %137
  %151 = getelementptr inbounds i8, i8* %139, i64 -5, !dbg !1796
  %152 = bitcast i8* %151 to i16*, !dbg !1797
  %153 = load i16, i16* %152, align 1, !dbg !1797, !tbaa !830
  %154 = zext i16 %153 to i64, !dbg !1796
  br label %164, !dbg !1798

; <label>:155:                                    ; preds = %137
  %156 = getelementptr inbounds i8, i8* %139, i64 -9, !dbg !1799
  %157 = bitcast i8* %156 to i32*, !dbg !1800
  %158 = load i32, i32* %157, align 1, !dbg !1800, !tbaa !835
  %159 = zext i32 %158 to i64, !dbg !1799
  br label %164, !dbg !1801

; <label>:160:                                    ; preds = %137
  %161 = getelementptr inbounds i8, i8* %139, i64 -17, !dbg !1802
  %162 = bitcast i8* %161 to i64*, !dbg !1803
  %163 = load i64, i64* %162, align 1, !dbg !1803, !tbaa !839
  br label %164, !dbg !1804

; <label>:164:                                    ; preds = %137, %143, %146, %150, %155, %160
  %165 = phi i64 [ %163, %160 ], [ %159, %155 ], [ %154, %150 ], [ %149, %146 ], [ %145, %143 ], [ 0, %137 ], !dbg !1805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1807
  %166 = tail call %struct.redisObject* @createStringObject(i8* %139, i64 %165) #6, !dbg !1808
  %167 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 1, i32 0, !dbg !1809
  %168 = bitcast i8** %167 to double**, !dbg !1809
  %169 = load double*, double** %168, align 8, !dbg !1809, !tbaa !222
  %170 = load double, double* %169, align 8, !dbg !1810, !tbaa !1811
  %171 = fpext double %170 to x86_fp80, !dbg !1810
  %172 = tail call %struct.redisObject* @createStringObjectFromLongDouble(x86_fp80 %171, i32 0) #6, !dbg !1812
  br label %178

; <label>:173:                                    ; preds = %135
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 587, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !1813
  tail call void @_exit(i32 1) #9, !dbg !1813
  unreachable

; <label>:174:                                    ; preds = %36, %71
  %175 = phi %struct.redisObject* [ %73, %71 ], [ %38, %36 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1726
  %176 = bitcast %struct.redisObject* %175 to i8*, !dbg !1815
  %177 = tail call %struct.list* @listAddNodeTail(%struct.list* %4, i8* %176) #6, !dbg !1816
  br label %187, !dbg !1817

; <label>:178:                                    ; preds = %164, %132
  %179 = phi %struct.redisObject* [ %134, %132 ], [ %172, %164 ], !dbg !1806
  %180 = phi %struct.redisObject* [ %107, %132 ], [ %166, %164 ], !dbg !1806
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %181 = bitcast %struct.redisObject* %180 to i8*, !dbg !1815
  %182 = tail call %struct.list* @listAddNodeTail(%struct.list* %4, i8* %181) #6, !dbg !1816
  %183 = icmp eq %struct.redisObject* %179, null, !dbg !1818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1817
  br i1 %183, label %188, label %184, !dbg !1817

; <label>:184:                                    ; preds = %178
  %185 = bitcast %struct.redisObject* %179 to i8*, !dbg !1820
  %186 = tail call %struct.list* @listAddNodeTail(%struct.list* %4, i8* %185) #6, !dbg !1821
  br label %187, !dbg !1821

; <label>:187:                                    ; preds = %184, %174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1822
  br label %188, !dbg !1823

; <label>:188:                                    ; preds = %187, %178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1823
  ret void, !dbg !1823
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObjectFromLongDouble(x86_fp80, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @parseScanCursorOrReply(%struct.client*, %struct.redisObject* nocapture readonly, i64* nocapture) local_unnamed_addr #0 !dbg !1824 {
  %4 = alloca i8*, align 8
  %5 = bitcast i8** %4 to i8*, !dbg !1836
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !1836
  %6 = tail call i32* @__errno() #6, !dbg !1837
  store i32 0, i32* %6, align 4, !dbg !1838, !tbaa !835
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !1839
  %8 = load i8*, i8** %7, align 8, !dbg !1839, !tbaa !215
  %9 = call i64 @strtoul(i8* %8, i8** nonnull %4, i32 10) #6, !dbg !1841
  store i64 %9, i64* %2, align 8, !dbg !1842, !tbaa !839
  %10 = call i8* @__locale_ctype_ptr() #6, !dbg !1843
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1843
  %12 = load i8*, i8** %7, align 8, !dbg !1843, !tbaa !215
  %13 = load i8, i8* %12, align 1, !dbg !1843, !tbaa !222
  %14 = sext i8 %13 to i64, !dbg !1843
  %15 = getelementptr inbounds i8, i8* %11, i64 %14, !dbg !1843
  %16 = load i8, i8* %15, align 1, !dbg !1843, !tbaa !222
  %17 = and i8 %16, 8, !dbg !1843
  %18 = icmp eq i8 %17, 0, !dbg !1843
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1845
  br i1 %18, label %19, label %27, !dbg !1845

; <label>:19:                                     ; preds = %3
  %20 = load i8*, i8** %4, align 8, !dbg !1846, !tbaa !1136
  %21 = load i8, i8* %20, align 1, !dbg !1846, !tbaa !222
  %22 = icmp eq i8 %21, 0, !dbg !1847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1848
  br i1 %22, label %23, label %27, !dbg !1848

; <label>:23:                                     ; preds = %19
  %24 = call i32* @__errno() #6, !dbg !1849
  %25 = load i32, i32* %24, align 4, !dbg !1849, !tbaa !835
  %26 = icmp eq i32 %25, 34, !dbg !1850
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1851
  br i1 %26, label %27, label %28, !dbg !1851

; <label>:27:                                     ; preds = %19, %3, %23
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !1852
  br label %28, !dbg !1854

; <label>:28:                                     ; preds = %23, %27
  %29 = phi i32 [ -1, %27 ], [ 0, %23 ], !dbg !1855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1856
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !1857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1857
  ret i32 %29, !dbg !1857
}

; Function Attrs: noredzone
declare dso_local i64 @strtoul(i8*, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @scanGenericCommand(%struct.client*, %struct.redisObject*, i64) local_unnamed_addr #0 !dbg !1858 {
  %4 = alloca i64, align 8
  %5 = alloca [2 x i8*], align 16
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [21 x i8], align 16
  %11 = tail call %struct.list* @listCreate() #6, !dbg !1940
  %12 = bitcast i64* %4 to i8*, !dbg !1942
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #7, !dbg !1942
  store i64 10, i64* %4, align 8, !dbg !1943, !tbaa !839
  %13 = icmp eq %struct.redisObject* %1, null, !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1947
  br i1 %13, label %24, label %14, !dbg !1947

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !1947
  %16 = load i32, i32* %15, align 8, !dbg !1947
  %17 = and i32 %16, 15, !dbg !1947
  %18 = icmp eq i32 %17, 2, !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1947
  br i1 %18, label %24, label %19, !dbg !1947

; <label>:19:                                     ; preds = %14
  %20 = icmp eq i32 %17, 4, !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1947
  br i1 %20, label %24, label %21, !dbg !1947

; <label>:21:                                     ; preds = %19
  %22 = icmp eq i32 %17, 3, !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1947
  br i1 %22, label %24, label %23, !dbg !1947

; <label>:23:                                     ; preds = %21
  tail call void @_serverAssert(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 636) #6, !dbg !1947
  tail call void @_exit(i32 1) #9, !dbg !1947
  unreachable

; <label>:24:                                     ; preds = %3, %14, %19, %21
  %25 = select i1 %13, i32 2, i32 3, !dbg !1948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1950
  %26 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1951
  %27 = load i32, i32* %26, align 8, !dbg !1951, !tbaa !1126
  %28 = icmp sgt i32 %27, %25, !dbg !1952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1950
  br i1 %28, label %29, label %116, !dbg !1950

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %31 = zext i32 %25 to i64, !dbg !1950
  br label %32, !dbg !1950

; <label>:32:                                     ; preds = %29, %107
  %33 = phi i64 [ 10, %29 ], [ %108, %107 ]
  %34 = phi i32 [ %27, %29 ], [ %109, %107 ]
  %35 = phi i64 [ %31, %29 ], [ %113, %107 ]
  %36 = phi i32 [ 0, %29 ], [ %112, %107 ]
  %37 = phi i32 [ 0, %29 ], [ %111, %107 ]
  %38 = phi i8* [ null, %29 ], [ %110, %107 ]
  %39 = trunc i64 %35 to i32, !dbg !1953
  %40 = sub nsw i32 %34, %39, !dbg !1953
  %41 = load %struct.redisObject**, %struct.redisObject*** %30, align 8, !dbg !1956, !tbaa !1134
  %42 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %41, i64 %35, !dbg !1958
  %43 = load %struct.redisObject*, %struct.redisObject** %42, align 8, !dbg !1958, !tbaa !1136
  %44 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %43, i64 0, i32 2, !dbg !1959
  %45 = load i8*, i8** %44, align 8, !dbg !1959, !tbaa !215
  %46 = call i32 @strcasecmp(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !1960
  %47 = icmp eq i32 %46, 0, !dbg !1960
  %48 = icmp sgt i32 %40, 1, !dbg !1961
  %49 = and i1 %48, %47, !dbg !1962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1962
  br i1 %49, label %50, label %63, !dbg !1962

; <label>:50:                                     ; preds = %32
  %51 = add nuw nsw i64 %35, 1, !dbg !1963
  %52 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %41, i64 %51, !dbg !1966
  %53 = load %struct.redisObject*, %struct.redisObject** %52, align 8, !dbg !1966, !tbaa !1136
  %54 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %53, i64* nonnull %4, i8* null) #6, !dbg !1967
  %55 = icmp eq i32 %54, 0, !dbg !1968
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1969
  br i1 %55, label %56, label %359, !dbg !1969

; <label>:56:                                     ; preds = %50
  %57 = load i64, i64* %4, align 8, !dbg !1970, !tbaa !839
  %58 = icmp slt i64 %57, 1, !dbg !1972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1973
  br i1 %58, label %59, label %61, !dbg !1973

; <label>:59:                                     ; preds = %56
  %60 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1974, !tbaa !1142
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %60) #6, !dbg !1976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1977
  br label %359, !dbg !1977

; <label>:61:                                     ; preds = %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1978
  %62 = load i32, i32* %26, align 8, !dbg !1951, !tbaa !1126
  br label %107, !dbg !1978

; <label>:63:                                     ; preds = %32
  %64 = call i32 @strcasecmp(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !1979
  %65 = icmp eq i32 %64, 0, !dbg !1979
  %66 = and i1 %48, %65, !dbg !1981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1981
  br i1 %66, label %67, label %105, !dbg !1981

; <label>:67:                                     ; preds = %63
  %68 = add nuw nsw i64 %35, 1, !dbg !1982
  %69 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %41, i64 %68, !dbg !1984
  %70 = load %struct.redisObject*, %struct.redisObject** %69, align 8, !dbg !1984, !tbaa !1136
  %71 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %70, i64 0, i32 2, !dbg !1985
  %72 = load i8*, i8** %71, align 8, !dbg !1985, !tbaa !215
  %73 = getelementptr inbounds i8, i8* %72, i64 -1, !dbg !1988
  %74 = load i8, i8* %73, align 1, !dbg !1988, !tbaa !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1990
  %75 = trunc i8 %74 to i3, !dbg !1990
  switch i3 %75, label %97 [
    i3 0, label %76
    i3 1, label %79
    i3 2, label %83
    i3 3, label %88
    i3 -4, label %93
  ], !dbg !1990

; <label>:76:                                     ; preds = %67
  %77 = lshr i8 %74, 3, !dbg !1991
  %78 = zext i8 %77 to i64, !dbg !1991
  br label %97, !dbg !1992

; <label>:79:                                     ; preds = %67
  %80 = getelementptr inbounds i8, i8* %72, i64 -3, !dbg !1993
  %81 = load i8, i8* %80, align 1, !dbg !1994, !tbaa !222
  %82 = zext i8 %81 to i64, !dbg !1993
  br label %97, !dbg !1995

; <label>:83:                                     ; preds = %67
  %84 = getelementptr inbounds i8, i8* %72, i64 -5, !dbg !1996
  %85 = bitcast i8* %84 to i16*, !dbg !1997
  %86 = load i16, i16* %85, align 1, !dbg !1997, !tbaa !830
  %87 = zext i16 %86 to i64, !dbg !1996
  br label %97, !dbg !1998

; <label>:88:                                     ; preds = %67
  %89 = getelementptr inbounds i8, i8* %72, i64 -9, !dbg !1999
  %90 = bitcast i8* %89 to i32*, !dbg !2000
  %91 = load i32, i32* %90, align 1, !dbg !2000, !tbaa !835
  %92 = zext i32 %91 to i64, !dbg !1999
  br label %97, !dbg !2001

; <label>:93:                                     ; preds = %67
  %94 = getelementptr inbounds i8, i8* %72, i64 -17, !dbg !2002
  %95 = bitcast i8* %94 to i64*, !dbg !2003
  %96 = load i64, i64* %95, align 1, !dbg !2003, !tbaa !839
  br label %97, !dbg !2004

; <label>:97:                                     ; preds = %67, %76, %79, %83, %88, %93
  %98 = phi i64 [ %96, %93 ], [ %92, %88 ], [ %87, %83 ], [ %82, %79 ], [ %78, %76 ], [ 0, %67 ], !dbg !2005
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2007
  %99 = trunc i64 %98 to i32, !dbg !2008
  %100 = load i8, i8* %72, align 1, !dbg !2009, !tbaa !222
  %101 = icmp ne i8 %100, 42, !dbg !2010
  %102 = icmp ne i32 %99, 1, !dbg !2011
  %103 = or i1 %102, %101, !dbg !2012
  %104 = zext i1 %103 to i32, !dbg !2012
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %107

; <label>:105:                                    ; preds = %63
  %106 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !2013, !tbaa !1142
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %106) #6, !dbg !2015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2016
  br label %359, !dbg !2016

; <label>:107:                                    ; preds = %97, %61
  %108 = phi i64 [ %57, %61 ], [ %33, %97 ]
  %109 = phi i32 [ %62, %61 ], [ %34, %97 ], !dbg !1951
  %110 = phi i8* [ %38, %61 ], [ %72, %97 ], !dbg !2006
  %111 = phi i32 [ %37, %61 ], [ %99, %97 ], !dbg !2006
  %112 = phi i32 [ %36, %61 ], [ %104, %97 ], !dbg !2006
  %113 = add nuw i64 %35, 2, !dbg !2006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1950
  %114 = trunc i64 %113 to i32, !dbg !1952
  %115 = icmp sgt i32 %109, %114, !dbg !1952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1950
  br i1 %115, label %32, label %116, !dbg !1950, !llvm.loop !2017

; <label>:116:                                    ; preds = %107, %24
  %117 = phi i64 [ 10, %24 ], [ %108, %107 ]
  %118 = phi i8* [ null, %24 ], [ %110, %107 ], !dbg !1944
  %119 = phi i32 [ 0, %24 ], [ %111, %107 ], !dbg !1945
  %120 = phi i32 [ 0, %24 ], [ %112, %107 ], !dbg !1946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2020
  br i1 %13, label %121, label %126, !dbg !2020

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2021
  %123 = load %struct.redisDb*, %struct.redisDb** %122, align 8, !dbg !2021, !tbaa !580
  %124 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %123, i64 0, i32 0, !dbg !2023
  %125 = load %struct.dict*, %struct.dict** %124, align 8, !dbg !2023, !tbaa !207
  br label %163, !dbg !2024

; <label>:126:                                    ; preds = %116
  %127 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !2025
  %128 = load i32, i32* %127, align 8, !dbg !2025
  %129 = and i32 %128, 15, !dbg !2025
  %130 = icmp eq i32 %129, 2, !dbg !2026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2027
  br i1 %130, label %131, label %139, !dbg !2027

; <label>:131:                                    ; preds = %126
  %132 = and i32 %128, 240, !dbg !2028
  %133 = icmp eq i32 %132, 32, !dbg !2029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2030
  br i1 %133, label %135, label %134, !dbg !2030

; <label>:134:                                    ; preds = %131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2031
  br label %149, !dbg !2031

; <label>:135:                                    ; preds = %131
  %136 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2032
  %137 = bitcast i8** %136 to %struct.dict**, !dbg !2032
  %138 = load %struct.dict*, %struct.dict** %137, align 8, !dbg !2032, !tbaa !215
  br label %163, !dbg !2034

; <label>:139:                                    ; preds = %126
  %140 = icmp eq i32 %129, 4, !dbg !2035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2031
  br i1 %140, label %141, label %150, !dbg !2031

; <label>:141:                                    ; preds = %139
  %142 = and i32 %128, 240, !dbg !2036
  %143 = icmp eq i32 %142, 32, !dbg !2037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2038
  br i1 %143, label %144, label %149, !dbg !2038

; <label>:144:                                    ; preds = %141
  %145 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2039
  %146 = bitcast i8** %145 to %struct.dict**, !dbg !2039
  %147 = load %struct.dict*, %struct.dict** %146, align 8, !dbg !2039, !tbaa !215
  %148 = shl nsw i64 %117, 1, !dbg !2041
  store i64 %148, i64* %4, align 8, !dbg !2041, !tbaa !839
  br label %163, !dbg !2042

; <label>:149:                                    ; preds = %134, %141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2043
  br label %162, !dbg !2043

; <label>:150:                                    ; preds = %139
  %151 = icmp eq i32 %129, 3, !dbg !2044
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2043
  br i1 %151, label %152, label %162, !dbg !2043

; <label>:152:                                    ; preds = %150
  %153 = and i32 %128, 240, !dbg !2045
  %154 = icmp eq i32 %153, 112, !dbg !2046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2047
  br i1 %154, label %155, label %162, !dbg !2047

; <label>:155:                                    ; preds = %152
  %156 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2048
  %157 = bitcast i8** %156 to %struct.zset**, !dbg !2048
  %158 = load %struct.zset*, %struct.zset** %157, align 8, !dbg !2048, !tbaa !215
  %159 = getelementptr inbounds %struct.zset, %struct.zset* %158, i64 0, i32 0, !dbg !2050
  %160 = load %struct.dict*, %struct.dict** %159, align 8, !dbg !2050, !tbaa !2051
  %161 = shl nsw i64 %117, 1, !dbg !2053
  store i64 %161, i64* %4, align 8, !dbg !2053, !tbaa !839
  br label %163, !dbg !2054

; <label>:162:                                    ; preds = %152, %150, %149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2055
  br label %190, !dbg !2055

; <label>:163:                                    ; preds = %135, %155, %144, %121
  %164 = phi i64 [ %117, %121 ], [ %117, %135 ], [ %148, %144 ], [ %161, %155 ]
  %165 = phi %struct.dict* [ %125, %121 ], [ %138, %135 ], [ %147, %144 ], [ %160, %155 ], !dbg !2056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  %166 = icmp eq %struct.dict* %165, null, !dbg !2058
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2055
  br i1 %166, label %167, label %170, !dbg !2055

; <label>:167:                                    ; preds = %163
  %168 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0
  %169 = load i32, i32* %168, align 8, !dbg !2059
  br label %190, !dbg !2055

; <label>:170:                                    ; preds = %163
  %171 = bitcast [2 x i8*]* %5 to i8*, !dbg !2060
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %171) #7, !dbg !2060
  %172 = mul nsw i64 %164, 10, !dbg !2062
  %173 = bitcast [2 x i8*]* %5 to %struct.list**, !dbg !2064
  store %struct.list* %11, %struct.list** %173, align 16, !dbg !2064, !tbaa !1136
  %174 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1, !dbg !2065
  %175 = bitcast i8** %174 to %struct.redisObject**, !dbg !2066
  store %struct.redisObject* %1, %struct.redisObject** %175, align 8, !dbg !2066, !tbaa !1136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2067
  %176 = getelementptr inbounds %struct.list, %struct.list* %11, i64 0, i32 5
  br label %177, !dbg !2067

; <label>:177:                                    ; preds = %184, %170
  %178 = phi i64 [ %172, %170 ], [ %185, %184 ], !dbg !2068
  %179 = phi i64 [ %2, %170 ], [ %180, %184 ]
  %180 = call i64 @dictScan(%struct.dict* nonnull %165, i64 %179, void (i8*, %struct.dictEntry*)* nonnull @scanCallback, void (i8*, %struct.dictEntry**)* null, i8* nonnull %171) #6, !dbg !2069
  %181 = icmp eq i64 %180, 0, !dbg !2071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2072
  br i1 %181, label %189, label %182, !dbg !2072

; <label>:182:                                    ; preds = %177
  %183 = icmp eq i64 %178, 0, !dbg !2073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2074
  br i1 %183, label %189, label %184, !dbg !2074

; <label>:184:                                    ; preds = %182
  %185 = add nsw i64 %178, -1, !dbg !2073
  %186 = load i64, i64* %176, align 8, !dbg !2075, !tbaa !2076
  %187 = load i64, i64* %4, align 8, !dbg !2078, !tbaa !839
  %188 = icmp ult i64 %186, %187, !dbg !2079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2080
  br i1 %188, label %177, label %189, !dbg !2080, !llvm.loop !2081

; <label>:189:                                    ; preds = %182, %177, %184
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %171) #7, !dbg !2083
  br label %245, !dbg !2084

; <label>:190:                                    ; preds = %167, %162
  %191 = phi i32 [ %169, %167 ], [ %128, %162 ], !dbg !2059
  %192 = and i32 %191, 15, !dbg !2059
  %193 = icmp eq i32 %192, 2, !dbg !2085
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2086
  br i1 %193, label %194, label %212, !dbg !2086

; <label>:194:                                    ; preds = %190
  %195 = bitcast i64* %6 to i8*, !dbg !2088
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %195) #7, !dbg !2088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2089
  %196 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2090
  %197 = bitcast i8** %196 to %struct.intset**, !dbg !2090
  %198 = load %struct.intset*, %struct.intset** %197, align 8, !dbg !2090, !tbaa !215
  %199 = call zeroext i8 @intsetGet(%struct.intset* %198, i32 0, i64* nonnull %6) #6, !dbg !2092
  %200 = icmp eq i8 %199, 0, !dbg !2089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2089
  br i1 %200, label %211, label %201, !dbg !2089

; <label>:201:                                    ; preds = %194, %201
  %202 = phi i32 [ %203, %201 ], [ 0, %194 ]
  %203 = add nuw nsw i32 %202, 1, !dbg !2093
  %204 = load i64, i64* %6, align 8, !dbg !2094, !tbaa !839
  %205 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %204) #6, !dbg !2095
  %206 = bitcast %struct.redisObject* %205 to i8*, !dbg !2095
  %207 = call %struct.list* @listAddNodeTail(%struct.list* %11, i8* %206) #6, !dbg !2096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2089
  %208 = load %struct.intset*, %struct.intset** %197, align 8, !dbg !2090, !tbaa !215
  %209 = call zeroext i8 @intsetGet(%struct.intset* %208, i32 %203, i64* nonnull %6) #6, !dbg !2092
  %210 = icmp eq i8 %209, 0, !dbg !2089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2089
  br i1 %210, label %211, label %201, !dbg !2089, !llvm.loop !2097

; <label>:211:                                    ; preds = %201, %194
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %195) #7, !dbg !2099
  br label %245, !dbg !2100

; <label>:212:                                    ; preds = %190
  %213 = icmp eq i32 %192, 4, !dbg !2101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2102
  br i1 %213, label %216, label %214, !dbg !2102

; <label>:214:                                    ; preds = %212
  %215 = icmp eq i32 %192, 3, !dbg !2103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2104
  br i1 %215, label %216, label %244, !dbg !2104

; <label>:216:                                    ; preds = %214, %212
  %217 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2105
  %218 = load i8*, i8** %217, align 8, !dbg !2105, !tbaa !215
  %219 = call i8* @ziplistIndex(i8* %218, i32 0) #6, !dbg !2106
  %220 = bitcast i8** %7 to i8*, !dbg !2108
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %220) #7, !dbg !2108
  %221 = bitcast i32* %8 to i8*, !dbg !2109
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %221) #7, !dbg !2109
  %222 = bitcast i64* %9 to i8*, !dbg !2110
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %222) #7, !dbg !2110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2111
  %223 = icmp eq i8* %219, null, !dbg !2111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2111
  br i1 %223, label %243, label %224, !dbg !2111

; <label>:224:                                    ; preds = %216, %236
  %225 = phi i8* [ %241, %236 ], [ %219, %216 ]
  %226 = call i32 @ziplistGet(i8* nonnull %225, i8** nonnull %7, i32* nonnull %8, i64* nonnull %9) #6, !dbg !2115
  %227 = load i8*, i8** %7, align 8, !dbg !2117, !tbaa !1136
  %228 = icmp eq i8* %227, null, !dbg !2118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2119
  br i1 %228, label %233, label %229, !dbg !2119

; <label>:229:                                    ; preds = %224
  %230 = load i32, i32* %8, align 4, !dbg !2120, !tbaa !835
  %231 = zext i32 %230 to i64, !dbg !2120
  %232 = call %struct.redisObject* @createStringObject(i8* nonnull %227, i64 %231) #6, !dbg !2121
  br label %236, !dbg !2119

; <label>:233:                                    ; preds = %224
  %234 = load i64, i64* %9, align 8, !dbg !2122, !tbaa !318
  %235 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %234) #6, !dbg !2123
  br label %236, !dbg !2119

; <label>:236:                                    ; preds = %233, %229
  %237 = phi %struct.redisObject* [ %232, %229 ], [ %235, %233 ], !dbg !2119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2119
  %238 = bitcast %struct.redisObject* %237 to i8*, !dbg !2119
  %239 = call %struct.list* @listAddNodeTail(%struct.list* %11, i8* %238) #6, !dbg !2124
  %240 = load i8*, i8** %217, align 8, !dbg !2125, !tbaa !215
  %241 = call i8* @ziplistNext(i8* %240, i8* nonnull %225) #6, !dbg !2126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2111
  %242 = icmp eq i8* %241, null, !dbg !2111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2111
  br i1 %242, label %243, label %224, !dbg !2111, !llvm.loop !2127

; <label>:243:                                    ; preds = %236, %216
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %222) #7, !dbg !2129
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %221) #7, !dbg !2129
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %220) #7, !dbg !2129
  br label %245

; <label>:244:                                    ; preds = %214
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 735, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !2130
  call void @_exit(i32 1) #9, !dbg !2130
  unreachable

; <label>:245:                                    ; preds = %211, %243, %189
  %246 = phi i64 [ %180, %189 ], [ 0, %211 ], [ 0, %243 ], !dbg !2132
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %247 = getelementptr inbounds %struct.list, %struct.list* %11, i64 0, i32 0, !dbg !2133
  %248 = load %struct.listNode*, %struct.listNode** %247, align 8, !dbg !2133, !tbaa !2134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2136
  %249 = icmp eq %struct.listNode* %248, null, !dbg !2136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2136
  br i1 %249, label %347, label %250, !dbg !2136

; <label>:250:                                    ; preds = %245
  %251 = icmp eq i32 %120, 0
  %252 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %253 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0
  %254 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 0
  br label %255, !dbg !2136

; <label>:255:                                    ; preds = %250, %344
  %256 = phi %struct.listNode* [ %248, %250 ], [ %345, %344 ]
  %257 = getelementptr inbounds %struct.listNode, %struct.listNode* %256, i64 0, i32 2, !dbg !2137
  %258 = bitcast i8** %257 to %struct.redisObject**, !dbg !2137
  %259 = load %struct.redisObject*, %struct.redisObject** %258, align 8, !dbg !2137, !tbaa !2138
  %260 = getelementptr inbounds %struct.listNode, %struct.listNode* %256, i64 0, i32 1, !dbg !2141
  %261 = load %struct.listNode*, %struct.listNode** %260, align 8, !dbg !2141, !tbaa !2142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2145
  br i1 %251, label %318, label %262, !dbg !2145

; <label>:262:                                    ; preds = %255
  %263 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %259, i64 0, i32 0, !dbg !2146
  %264 = load i32, i32* %263, align 8, !dbg !2146
  %265 = lshr i32 %264, 4, !dbg !2146
  %266 = and i32 %265, 15, !dbg !2146
  %267 = icmp eq i32 %266, 0, !dbg !2146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2146
  br i1 %267, label %270, label %268, !dbg !2146

; <label>:268:                                    ; preds = %262
  %269 = icmp eq i32 %266, 8, !dbg !2146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2147
  br i1 %269, label %270, label %303, !dbg !2147

; <label>:270:                                    ; preds = %268, %262
  %271 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %259, i64 0, i32 2, !dbg !2148
  %272 = load i8*, i8** %271, align 8, !dbg !2148, !tbaa !215
  %273 = getelementptr inbounds i8, i8* %272, i64 -1, !dbg !2153
  %274 = load i8, i8* %273, align 1, !dbg !2153, !tbaa !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2155
  %275 = trunc i8 %274 to i3, !dbg !2155
  switch i3 %275, label %297 [
    i3 0, label %276
    i3 1, label %279
    i3 2, label %283
    i3 3, label %288
    i3 -4, label %293
  ], !dbg !2155

; <label>:276:                                    ; preds = %270
  %277 = lshr i8 %274, 3, !dbg !2156
  %278 = zext i8 %277 to i64, !dbg !2156
  br label %297, !dbg !2157

; <label>:279:                                    ; preds = %270
  %280 = getelementptr inbounds i8, i8* %272, i64 -3, !dbg !2158
  %281 = load i8, i8* %280, align 1, !dbg !2159, !tbaa !222
  %282 = zext i8 %281 to i64, !dbg !2158
  br label %297, !dbg !2160

; <label>:283:                                    ; preds = %270
  %284 = getelementptr inbounds i8, i8* %272, i64 -5, !dbg !2161
  %285 = bitcast i8* %284 to i16*, !dbg !2162
  %286 = load i16, i16* %285, align 1, !dbg !2162, !tbaa !830
  %287 = zext i16 %286 to i64, !dbg !2161
  br label %297, !dbg !2163

; <label>:288:                                    ; preds = %270
  %289 = getelementptr inbounds i8, i8* %272, i64 -9, !dbg !2164
  %290 = bitcast i8* %289 to i32*, !dbg !2165
  %291 = load i32, i32* %290, align 1, !dbg !2165, !tbaa !835
  %292 = zext i32 %291 to i64, !dbg !2164
  br label %297, !dbg !2166

; <label>:293:                                    ; preds = %270
  %294 = getelementptr inbounds i8, i8* %272, i64 -17, !dbg !2167
  %295 = bitcast i8* %294 to i64*, !dbg !2168
  %296 = load i64, i64* %295, align 1, !dbg !2168, !tbaa !839
  br label %297, !dbg !2169

; <label>:297:                                    ; preds = %270, %276, %279, %283, %288, %293
  %298 = phi i64 [ %296, %293 ], [ %292, %288 ], [ %287, %283 ], [ %282, %279 ], [ %278, %276 ], [ 0, %270 ], !dbg !2170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2172
  %299 = trunc i64 %298 to i32, !dbg !2173
  %300 = call i32 @stringmatchlen(i8* %118, i32 %119, i8* %272, i32 %299, i32 0) #6, !dbg !2174
  %301 = icmp eq i32 %300, 0, !dbg !2174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2175
  br i1 %301, label %302, label %318, !dbg !2175

; <label>:302:                                    ; preds = %297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2177
  br label %326, !dbg !2177

; <label>:303:                                    ; preds = %268
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %254) #7, !dbg !2179
  %304 = load i32, i32* %263, align 8, !dbg !2181
  %305 = and i32 %304, 240, !dbg !2181
  %306 = icmp eq i32 %305, 16, !dbg !2181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2181
  br i1 %306, label %308, label %307, !dbg !2181

; <label>:307:                                    ; preds = %303
  call void @_serverAssert(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 754) #6, !dbg !2181
  call void @_exit(i32 1) #9, !dbg !2181
  unreachable

; <label>:308:                                    ; preds = %303
  %309 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %259, i64 0, i32 2, !dbg !2182
  %310 = bitcast i8** %309 to i64*, !dbg !2182
  %311 = load i64, i64* %310, align 8, !dbg !2182, !tbaa !215
  %312 = call i32 @ll2string(i8* nonnull %254, i64 21, i64 %311) #6, !dbg !2183
  %313 = call i32 @stringmatchlen(i8* %118, i32 %119, i8* nonnull %254, i32 %312, i32 0) #6, !dbg !2185
  %314 = icmp eq i32 %313, 0, !dbg !2185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2187
  br i1 %314, label %315, label %316, !dbg !2187

; <label>:315:                                    ; preds = %308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2188
  br label %316, !dbg !2188

; <label>:316:                                    ; preds = %308, %315
  %317 = phi i32 [ 0, %308 ], [ 1, %315 ], !dbg !2189
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %254) #7, !dbg !2190
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %318

; <label>:318:                                    ; preds = %297, %255, %316
  %319 = phi i32 [ 0, %297 ], [ %317, %316 ], [ 0, %255 ], !dbg !2191
  %320 = icmp eq i32 %319, 0, !dbg !2192
  %321 = and i1 %13, %320, !dbg !2177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2177
  br i1 %321, label %322, label %327, !dbg !2177

; <label>:322:                                    ; preds = %318
  %323 = load %struct.redisDb*, %struct.redisDb** %252, align 8, !dbg !2193, !tbaa !580
  %324 = call i32 @expireIfNeeded(%struct.redisDb* %323, %struct.redisObject* %259) #8, !dbg !2194
  %325 = icmp eq i32 %324, 0, !dbg !2194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2196
  br i1 %325, label %329, label %326, !dbg !2195

; <label>:326:                                    ; preds = %322, %302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2197
  br label %328, !dbg !2197

; <label>:327:                                    ; preds = %318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2197
  br i1 %320, label %329, label %328, !dbg !2197

; <label>:328:                                    ; preds = %327, %326
  call void @decrRefCount(%struct.redisObject* %259) #6, !dbg !2198
  call void @listDelNode(%struct.list* %11, %struct.listNode* nonnull %256) #6, !dbg !2201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2202
  br label %329, !dbg !2202

; <label>:329:                                    ; preds = %327, %322, %328
  %330 = phi i1 [ true, %328 ], [ false, %327 ], [ false, %322 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2203
  br i1 %13, label %344, label %331, !dbg !2203

; <label>:331:                                    ; preds = %329
  %332 = load i32, i32* %253, align 8, !dbg !2205
  %333 = and i32 %332, 15, !dbg !2205
  %334 = icmp eq i32 %333, 3, !dbg !2206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2207
  br i1 %334, label %337, label %335, !dbg !2207

; <label>:335:                                    ; preds = %331
  %336 = icmp eq i32 %333, 4, !dbg !2208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2209
  br i1 %336, label %337, label %344, !dbg !2209

; <label>:337:                                    ; preds = %335, %331
  %338 = getelementptr inbounds %struct.listNode, %struct.listNode* %261, i64 0, i32 1, !dbg !2210
  %339 = load %struct.listNode*, %struct.listNode** %338, align 8, !dbg !2210, !tbaa !2142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2212
  br i1 %330, label %340, label %344, !dbg !2212

; <label>:340:                                    ; preds = %337
  %341 = getelementptr inbounds %struct.listNode, %struct.listNode* %261, i64 0, i32 2, !dbg !2213
  %342 = bitcast i8** %341 to %struct.redisObject**, !dbg !2213
  %343 = load %struct.redisObject*, %struct.redisObject** %342, align 8, !dbg !2213, !tbaa !2138
  call void @decrRefCount(%struct.redisObject* %343) #6, !dbg !2216
  call void @listDelNode(%struct.list* %11, %struct.listNode* nonnull %261) #6, !dbg !2217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2218
  br label %344, !dbg !2218

; <label>:344:                                    ; preds = %329, %337, %340, %335
  %345 = phi %struct.listNode* [ %339, %340 ], [ %339, %337 ], [ %261, %335 ], [ %261, %329 ], !dbg !2191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2136
  %346 = icmp eq %struct.listNode* %345, null, !dbg !2136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2136
  br i1 %346, label %347, label %255, !dbg !2136, !llvm.loop !2219

; <label>:347:                                    ; preds = %344, %245
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 2) #6, !dbg !2221
  call void @addReplyBulkLongLong(%struct.client* %0, i64 %246) #6, !dbg !2222
  %348 = getelementptr inbounds %struct.list, %struct.list* %11, i64 0, i32 5, !dbg !2223
  %349 = load i64, i64* %348, align 8, !dbg !2223, !tbaa !2076
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 %349) #6, !dbg !2224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2225
  %350 = load %struct.listNode*, %struct.listNode** %247, align 8, !dbg !2226, !tbaa !2134
  %351 = icmp eq %struct.listNode* %350, null, !dbg !2227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2225
  br i1 %351, label %359, label %352, !dbg !2225

; <label>:352:                                    ; preds = %347, %352
  %353 = phi %struct.listNode* [ %357, %352 ], [ %350, %347 ]
  %354 = getelementptr inbounds %struct.listNode, %struct.listNode* %353, i64 0, i32 2, !dbg !2228
  %355 = bitcast i8** %354 to %struct.redisObject**, !dbg !2228
  %356 = load %struct.redisObject*, %struct.redisObject** %355, align 8, !dbg !2228, !tbaa !2138
  call void @addReplyBulk(%struct.client* %0, %struct.redisObject* %356) #6, !dbg !2230
  call void @decrRefCount(%struct.redisObject* %356) #6, !dbg !2231
  call void @listDelNode(%struct.list* nonnull %11, %struct.listNode* nonnull %353) #6, !dbg !2232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2225
  %357 = load %struct.listNode*, %struct.listNode** %247, align 8, !dbg !2226, !tbaa !2134
  %358 = icmp eq %struct.listNode* %357, null, !dbg !2227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2225
  br i1 %358, label %359, label %352, !dbg !2225, !llvm.loop !2233

; <label>:359:                                    ; preds = %50, %352, %347, %105, %59
  %360 = getelementptr inbounds %struct.list, %struct.list* %11, i64 0, i32 3, !dbg !2235
  store void (i8*)* @decrRefCountVoid, void (i8*)** %360, align 8, !dbg !2235, !tbaa !2236
  call void @listRelease(%struct.list* %11) #6, !dbg !2237
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #7, !dbg !2238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2238
  ret void, !dbg !2238
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
define dso_local void @scanCommand(%struct.client*) local_unnamed_addr #0 !dbg !2239 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !2244
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7, !dbg !2244
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2245
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !2245, !tbaa !1134
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !2247
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !2247, !tbaa !1136
  %8 = call i32 @parseScanCursorOrReply(%struct.client* %0, %struct.redisObject* %7, i64* nonnull %2) #8, !dbg !2249
  %9 = icmp eq i32 %8, -1, !dbg !2250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2251
  br i1 %9, label %12, label %10, !dbg !2251

; <label>:10:                                     ; preds = %1
  %11 = load i64, i64* %2, align 8, !dbg !2252, !tbaa !839
  tail call void @scanGenericCommand(%struct.client* nonnull %0, %struct.redisObject* null, i64 %11) #8, !dbg !2253
  br label %12, !dbg !2254

; <label>:12:                                     ; preds = %1, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2255
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7, !dbg !2254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2254
  ret void, !dbg !2254
}

; Function Attrs: noredzone nounwind
define dso_local void @dbsizeCommand(%struct.client*) local_unnamed_addr #0 !dbg !2256 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2260
  %3 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !2260, !tbaa !580
  %4 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %3, i64 0, i32 0, !dbg !2260
  %5 = load %struct.dict*, %struct.dict** %4, align 8, !dbg !2260, !tbaa !207
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %5, i64 0, i32 2, i64 0, i32 3, !dbg !2260
  %7 = load i64, i64* %6, align 8, !dbg !2260, !tbaa !388
  %8 = getelementptr inbounds %struct.dict, %struct.dict* %5, i64 0, i32 2, i64 1, i32 3, !dbg !2260
  %9 = load i64, i64* %8, align 8, !dbg !2260, !tbaa !388
  %10 = add i64 %9, %7, !dbg !2260
  tail call void @addReplyLongLong(%struct.client* %0, i64 %10) #6, !dbg !2261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2262
  ret void, !dbg !2262
}

; Function Attrs: noredzone nounwind
define dso_local void @lastsaveCommand(%struct.client*) local_unnamed_addr #0 !dbg !2263 {
  %2 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 160), align 8, !dbg !2267, !tbaa !2268
  tail call void @addReplyLongLong(%struct.client* %0, i64 %2) #6, !dbg !2269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2270
  ret void, !dbg !2270
}

; Function Attrs: noredzone nounwind
define dso_local void @typeCommand(%struct.client*) local_unnamed_addr #0 !dbg !2271 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2616
  %3 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !2616, !tbaa !580
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2617
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !2617, !tbaa !1134
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !2618
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !2618, !tbaa !1136
  %8 = tail call %struct.redisObject* @lookupKeyReadWithFlags(%struct.redisDb* %3, %struct.redisObject* %7, i32 1) #8, !dbg !2619
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !2621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2622
  br i1 %9, label %27, label %10, !dbg !2622

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 0, !dbg !2623
  %12 = load i32, i32* %11, align 8, !dbg !2623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2624
  %13 = trunc i32 %12 to i4, !dbg !2624
  switch i4 %13, label %26 [
    i4 0, label %27
    i4 1, label %14
    i4 2, label %15
    i4 3, label %16
    i4 4, label %17
    i4 6, label %18
    i4 5, label %19
  ], !dbg !2624

; <label>:14:                                     ; preds = %10
  br label %27, !dbg !2625

; <label>:15:                                     ; preds = %10
  br label %27, !dbg !2626

; <label>:16:                                     ; preds = %10
  br label %27, !dbg !2627

; <label>:17:                                     ; preds = %10
  br label %27, !dbg !2628

; <label>:18:                                     ; preds = %10
  br label %27, !dbg !2629

; <label>:19:                                     ; preds = %10
  %20 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !2630
  %21 = bitcast i8** %20 to %struct.moduleValue**, !dbg !2630
  %22 = load %struct.moduleValue*, %struct.moduleValue** %21, align 8, !dbg !2630, !tbaa !215
  %23 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %22, i64 0, i32 0, !dbg !2632
  %24 = load %struct.RedisModuleType*, %struct.RedisModuleType** %23, align 8, !dbg !2632, !tbaa !2633
  %25 = getelementptr inbounds %struct.RedisModuleType, %struct.RedisModuleType* %24, i64 0, i32 11, i64 0, !dbg !2635
  br label %27, !dbg !2637

; <label>:26:                                     ; preds = %10
  br label %27, !dbg !2638

; <label>:27:                                     ; preds = %10, %1, %14, %15, %16, %17, %18, %19, %26
  %28 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), %26 ], [ %25, %19 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), %18 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), %17 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), %16 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), %15 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %14 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), %1 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), %10 ], !dbg !2639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2640
  tail call void @addReplyStatus(%struct.client* nonnull %0, i8* nonnull %28) #6, !dbg !2642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  ret void, !dbg !2643
}

; Function Attrs: noredzone
declare dso_local void @addReplyStatus(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @shutdownCommand(%struct.client*) local_unnamed_addr #0 !dbg !2644 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2650
  %3 = load i32, i32* %2, align 8, !dbg !2650, !tbaa !1126
  %4 = icmp sgt i32 %3, 2, !dbg !2652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2653
  br i1 %4, label %5, label %7, !dbg !2653

; <label>:5:                                      ; preds = %1
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !2654, !tbaa !1142
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %6) #6, !dbg !2656
  br label %38, !dbg !2657

; <label>:7:                                      ; preds = %1
  %8 = icmp eq i32 %3, 2, !dbg !2658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2660
  br i1 %8, label %9, label %25, !dbg !2660

; <label>:9:                                      ; preds = %7
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2661
  %11 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !2661, !tbaa !1134
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 1, !dbg !2664
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !2664, !tbaa !1136
  %14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %13, i64 0, i32 2, !dbg !2665
  %15 = load i8*, i8** %14, align 8, !dbg !2665, !tbaa !215
  %16 = tail call i32 @strcasecmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !2666
  %17 = icmp eq i32 %16, 0, !dbg !2666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2667
  br i1 %17, label %23, label %18, !dbg !2667

; <label>:18:                                     ; preds = %9
  %19 = tail call i32 @strcasecmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !2668
  %20 = icmp eq i32 %19, 0, !dbg !2668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2670
  br i1 %20, label %23, label %21, !dbg !2670

; <label>:21:                                     ; preds = %18
  %22 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !2671, !tbaa !1142
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %22) #6, !dbg !2673
  br label %38, !dbg !2674

; <label>:23:                                     ; preds = %18, %9
  %24 = phi i32 [ 2, %9 ], [ 1, %18 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %25, !dbg !2675

; <label>:25:                                     ; preds = %23, %7
  %26 = phi i32 [ 0, %7 ], [ %24, %23 ], !dbg !2677
  %27 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !2675, !tbaa !349
  %28 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 20), align 4, !dbg !2678
  %29 = or i32 %28, %27, !dbg !2679
  %30 = icmp eq i32 %29, 0, !dbg !2679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2679
  br i1 %30, label %32, label %31, !dbg !2679

; <label>:31:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2680
  br label %32, !dbg !2680

; <label>:32:                                     ; preds = %25, %31
  %33 = phi i32 [ 2, %31 ], [ %26, %25 ], !dbg !2681
  %34 = tail call i32 (i32, ...) bitcast (i32 (...)* @prepareForShutdown to i32 (i32, ...)*)(i32 %33) #6, !dbg !2683
  %35 = icmp eq i32 %34, 0, !dbg !2685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2686
  br i1 %35, label %36, label %37, !dbg !2686

; <label>:36:                                     ; preds = %32
  tail call void @exit(i32 0) #9, !dbg !2687
  unreachable

; <label>:37:                                     ; preds = %32
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0)) #6, !dbg !2688
  br label %38, !dbg !2689

; <label>:38:                                     ; preds = %37, %21, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2689
  ret void, !dbg !2689
}

; Function Attrs: noredzone
declare dso_local i32 @prepareForShutdown(...) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @renameGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !2691 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2701
  %4 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2701, !tbaa !1134
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 1, !dbg !2703
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !2703, !tbaa !1136
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %6, i64 0, i32 2, !dbg !2704
  %8 = load i8*, i8** %7, align 8, !dbg !2704, !tbaa !215
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 2, !dbg !2705
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !2705, !tbaa !1136
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i64 0, i32 2, !dbg !2706
  %12 = load i8*, i8** %11, align 8, !dbg !2706, !tbaa !215
  %13 = tail call i32 @sdscmp(i8* %8, i8* %12) #6, !dbg !2707
  %14 = icmp eq i32 %13, 0, !dbg !2708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2709
  br i1 %14, label %15, label %16, !dbg !2709

; <label>:15:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2710
  br label %16, !dbg !2710

; <label>:16:                                     ; preds = %15, %2
  %17 = phi i32 [ 1, %15 ], [ 0, %2 ], !dbg !2711
  %18 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2712, !tbaa !1134
  %19 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %18, i64 1, !dbg !2714
  %20 = load %struct.redisObject*, %struct.redisObject** %19, align 8, !dbg !2714, !tbaa !1136
  %21 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 15), align 8, !dbg !2715, !tbaa !2716
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2721
  %23 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !2721, !tbaa !580
  %24 = tail call i32 @expireIfNeeded(%struct.redisDb* %23, %struct.redisObject* %20) #6, !dbg !2725
  %25 = tail call %struct.redisObject* @lookupKey(%struct.redisDb* %23, %struct.redisObject* %20, i32 0) #6, !dbg !2726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2727
  %26 = icmp eq %struct.redisObject* %25, null, !dbg !2729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2730
  br i1 %26, label %27, label %28, !dbg !2730

; <label>:27:                                     ; preds = %16
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %21) #6, !dbg !2731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2734
  br label %101, !dbg !2735

; <label>:28:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2734
  %29 = icmp eq i32 %17, 0, !dbg !2736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2738
  br i1 %29, label %35, label %30, !dbg !2738

; <label>:30:                                     ; preds = %28
  %31 = icmp eq i32 %1, 0, !dbg !2739
  %32 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !2741
  %33 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2742
  %34 = select i1 %31, %struct.redisObject* %33, %struct.redisObject* %32, !dbg !2739
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %34) #6, !dbg !2743
  br label %101, !dbg !2744

; <label>:35:                                     ; preds = %28
  tail call void @incrRefCount(%struct.redisObject* nonnull %25) #6, !dbg !2745
  %36 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !2746, !tbaa !580
  %37 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2747, !tbaa !1134
  %38 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %37, i64 1, !dbg !2748
  %39 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !2748, !tbaa !1136
  %40 = tail call i64 @getExpire(%struct.redisDb* %36, %struct.redisObject* %39) #8, !dbg !2749
  %41 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !2751, !tbaa !580
  %42 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2753, !tbaa !1134
  %43 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %42, i64 2, !dbg !2754
  %44 = load %struct.redisObject*, %struct.redisObject** %43, align 8, !dbg !2754, !tbaa !1136
  %45 = tail call i32 @expireIfNeeded(%struct.redisDb* %41, %struct.redisObject* %44) #6, !dbg !2758
  %46 = tail call %struct.redisObject* @lookupKey(%struct.redisDb* %41, %struct.redisObject* %44, i32 0) #6, !dbg !2759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2760
  %47 = icmp eq %struct.redisObject* %46, null, !dbg !2761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2762
  br i1 %47, label %58, label %48, !dbg !2762

; <label>:48:                                     ; preds = %35
  %49 = icmp eq i32 %1, 0, !dbg !2763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2766
  br i1 %49, label %52, label %50, !dbg !2766

; <label>:50:                                     ; preds = %48
  tail call void @decrRefCount(%struct.redisObject* nonnull %25) #6, !dbg !2767
  %51 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !2769, !tbaa !2770
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %51) #6, !dbg !2771
  br label %101, !dbg !2772

; <label>:52:                                     ; preds = %48
  %53 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !2773, !tbaa !580
  %54 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2774, !tbaa !1134
  %55 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %54, i64 2, !dbg !2775
  %56 = load %struct.redisObject*, %struct.redisObject** %55, align 8, !dbg !2775, !tbaa !1136
  %57 = tail call i32 @dbDelete(%struct.redisDb* %53, %struct.redisObject* %56) #8, !dbg !2776
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2777
  br label %58, !dbg !2777

; <label>:58:                                     ; preds = %35, %52
  %59 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !2778, !tbaa !580
  %60 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2779, !tbaa !1134
  %61 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %60, i64 2, !dbg !2780
  %62 = load %struct.redisObject*, %struct.redisObject** %61, align 8, !dbg !2780, !tbaa !1136
  tail call void @dbAdd(%struct.redisDb* %59, %struct.redisObject* %62, %struct.redisObject* nonnull %25) #8, !dbg !2781
  %63 = icmp eq i64 %40, -1, !dbg !2782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2784
  br i1 %63, label %69, label %64, !dbg !2784

; <label>:64:                                     ; preds = %58
  %65 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !2785, !tbaa !580
  %66 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2786, !tbaa !1134
  %67 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %66, i64 2, !dbg !2787
  %68 = load %struct.redisObject*, %struct.redisObject** %67, align 8, !dbg !2787, !tbaa !1136
  tail call void @setExpire(%struct.client* nonnull %0, %struct.redisDb* %65, %struct.redisObject* %68, i64 %40) #8, !dbg !2788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2788
  br label %69, !dbg !2788

; <label>:69:                                     ; preds = %58, %64
  %70 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !2789, !tbaa !580
  %71 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2790, !tbaa !1134
  %72 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %71, i64 1, !dbg !2791
  %73 = load %struct.redisObject*, %struct.redisObject** %72, align 8, !dbg !2791, !tbaa !1136
  %74 = tail call i32 @dbDelete(%struct.redisDb* %70, %struct.redisObject* %73) #8, !dbg !2792
  %75 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !2793, !tbaa !580
  %76 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2794, !tbaa !1134
  %77 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %76, i64 1, !dbg !2795
  %78 = load %struct.redisObject*, %struct.redisObject** %77, align 8, !dbg !2795, !tbaa !1136
  tail call void @touchWatchedKey(%struct.redisDb* %75, %struct.redisObject* %78) #6, !dbg !2799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2800
  %79 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !2801, !tbaa !580
  %80 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2802, !tbaa !1134
  %81 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %80, i64 2, !dbg !2803
  %82 = load %struct.redisObject*, %struct.redisObject** %81, align 8, !dbg !2803, !tbaa !1136
  tail call void @touchWatchedKey(%struct.redisDb* %79, %struct.redisObject* %82) #6, !dbg !2807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2808
  %83 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2809, !tbaa !1134
  %84 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %83, i64 1, !dbg !2810
  %85 = load %struct.redisObject*, %struct.redisObject** %84, align 8, !dbg !2810, !tbaa !1136
  %86 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !2811, !tbaa !580
  %87 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %86, i64 0, i32 5, !dbg !2812
  %88 = load i32, i32* %87, align 8, !dbg !2812, !tbaa !373
  tail call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), %struct.redisObject* %85, i32 %88) #6, !dbg !2813
  %89 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2814, !tbaa !1134
  %90 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %89, i64 2, !dbg !2815
  %91 = load %struct.redisObject*, %struct.redisObject** %90, align 8, !dbg !2815, !tbaa !1136
  %92 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !2816, !tbaa !580
  %93 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %92, i64 0, i32 5, !dbg !2817
  %94 = load i32, i32* %93, align 8, !dbg !2817, !tbaa !373
  tail call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), %struct.redisObject* %91, i32 %94) #6, !dbg !2818
  %95 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2819, !tbaa !1188
  %96 = add nsw i64 %95, 1, !dbg !2819
  store i64 %96, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2819, !tbaa !1188
  %97 = icmp eq i32 %1, 0, !dbg !2820
  %98 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !2821
  %99 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2822
  %100 = select i1 %97, %struct.redisObject* %99, %struct.redisObject* %98, !dbg !2820
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %100) #6, !dbg !2823
  br label %101, !dbg !2824

; <label>:101:                                    ; preds = %69, %50, %30, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2825
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2824
  ret void, !dbg !2824
}

; Function Attrs: noredzone
declare dso_local i32 @sdscmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @getExpire(%struct.redisDb* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !2826 {
  %3 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 1, !dbg !2835
  %4 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !2835, !tbaa !387
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %4, i64 0, i32 2, i64 0, i32 3, !dbg !2835
  %6 = load i64, i64* %5, align 8, !dbg !2835, !tbaa !388
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %4, i64 0, i32 2, i64 1, i32 3, !dbg !2835
  %8 = load i64, i64* %7, align 8, !dbg !2835, !tbaa !388
  %9 = sub i64 0, %8, !dbg !2837
  %10 = icmp eq i64 %6, %9, !dbg !2837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2838
  br i1 %10, label %27, label %11, !dbg !2838

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2839
  %13 = load i8*, i8** %12, align 8, !dbg !2839, !tbaa !215
  %14 = tail call %struct.dictEntry* @dictFind(%struct.dict* %4, i8* %13) #6, !dbg !2840
  %15 = icmp eq %struct.dictEntry* %14, null, !dbg !2842
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2843
  br i1 %15, label %27, label %16, !dbg !2843

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0, !dbg !2844
  %18 = load %struct.dict*, %struct.dict** %17, align 8, !dbg !2844, !tbaa !207
  %19 = load i8*, i8** %12, align 8, !dbg !2844, !tbaa !215
  %20 = tail call %struct.dictEntry* @dictFind(%struct.dict* %18, i8* %19) #6, !dbg !2844
  %21 = icmp eq %struct.dictEntry* %20, null, !dbg !2844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2844
  br i1 %21, label %22, label %23, !dbg !2844

; <label>:22:                                     ; preds = %16
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 1101) #6, !dbg !2844
  tail call void @_exit(i32 1) #9, !dbg !2844
  unreachable

; <label>:23:                                     ; preds = %16
  %24 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %14, i64 0, i32 1, !dbg !2845
  %25 = bitcast %union.anon* %24 to i64*, !dbg !2845
  %26 = load i64, i64* %25, align 8, !dbg !2845, !tbaa !222
  br label %27, !dbg !2846

; <label>:27:                                     ; preds = %2, %11, %23
  %28 = phi i64 [ %26, %23 ], [ -1, %11 ], [ -1, %2 ], !dbg !2847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2849
  ret i64 %28, !dbg !2849
}

; Function Attrs: noredzone nounwind
define dso_local void @setExpire(%struct.client* readonly, %struct.redisDb*, %struct.redisObject*, i64) local_unnamed_addr #0 !dbg !2850 {
  %5 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %1, i64 0, i32 0, !dbg !2865
  %6 = load %struct.dict*, %struct.dict** %5, align 8, !dbg !2865, !tbaa !207
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !2866
  %8 = load i8*, i8** %7, align 8, !dbg !2866, !tbaa !215
  %9 = tail call %struct.dictEntry* @dictFind(%struct.dict* %6, i8* %8) #6, !dbg !2867
  %10 = icmp eq %struct.dictEntry* %9, null, !dbg !2869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2869
  br i1 %10, label %11, label %12, !dbg !2869

; <label>:11:                                     ; preds = %4
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 1081) #6, !dbg !2869
  tail call void @_exit(i32 1) #9, !dbg !2869
  unreachable

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %1, i64 0, i32 1, !dbg !2870
  %14 = load %struct.dict*, %struct.dict** %13, align 8, !dbg !2870, !tbaa !387
  %15 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %9, i64 0, i32 0, !dbg !2871
  %16 = load i8*, i8** %15, align 8, !dbg !2871, !tbaa !805
  %17 = tail call %struct.dictEntry* @dictAddOrFind(%struct.dict* %14, i8* %16) #6, !dbg !2872
  %18 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %17, i64 0, i32 1, !dbg !2874
  %19 = bitcast %union.anon* %18 to i64*, !dbg !2874
  store i64 %3, i64* %19, align 8, !dbg !2874, !tbaa !222
  %20 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !2876, !tbaa !281
  %21 = icmp ne i8* %20, null, !dbg !2877
  %22 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 211), align 4, !dbg !2878
  %23 = icmp eq i32 %22, 0, !dbg !2879
  %24 = and i1 %21, %23, !dbg !2880
  %25 = icmp ne %struct.client* %0, null, !dbg !2881
  %26 = and i1 %25, %24, !dbg !2883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2883
  br i1 %26, label %27, label %33, !dbg !2883

; <label>:27:                                     ; preds = %12
  %28 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2884
  %29 = load i32, i32* %28, align 8, !dbg !2884, !tbaa !2885
  %30 = and i32 %29, 2, !dbg !2886
  %31 = icmp eq i32 %30, 0, !dbg !2886
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2887
  br i1 %31, label %32, label %33, !dbg !2887

; <label>:32:                                     ; preds = %27
  tail call void @rememberSlaveKeyWithExpire(%struct.redisDb* nonnull %1, %struct.redisObject* nonnull %2) #6, !dbg !2888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2888
  br label %33, !dbg !2888

; <label>:33:                                     ; preds = %27, %32, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2889
  ret void, !dbg !2889
}

; Function Attrs: noredzone nounwind
define dso_local void @renameCommand(%struct.client*) local_unnamed_addr #0 !dbg !2890 {
  tail call void @renameGenericCommand(%struct.client* %0, i32 0) #8, !dbg !2894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2895
  ret void, !dbg !2895
}

; Function Attrs: noredzone nounwind
define dso_local void @renamenxCommand(%struct.client*) local_unnamed_addr #0 !dbg !2896 {
  tail call void @renameGenericCommand(%struct.client* %0, i32 1) #8, !dbg !2900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2901
  ret void, !dbg !2901
}

; Function Attrs: noredzone nounwind
define dso_local void @moveCommand(%struct.client*) local_unnamed_addr #0 !dbg !2902 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !2912
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7, !dbg !2912
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !2913, !tbaa !404
  %5 = icmp eq i32 %4, 0, !dbg !2915
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2916
  br i1 %5, label %7, label %6, !dbg !2916

; <label>:6:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i64 0, i64 0)) #6, !dbg !2917
  br label %87, !dbg !2919

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2920
  %9 = load %struct.redisDb*, %struct.redisDb** %8, align 8, !dbg !2920, !tbaa !580
  %10 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %9, i64 0, i32 5, !dbg !2922
  %11 = load i32, i32* %10, align 8, !dbg !2922, !tbaa !373
  %12 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2924
  %13 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !2924, !tbaa !1134
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 2, !dbg !2926
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !2926, !tbaa !1136
  %16 = call i32 @getLongLongFromObject(%struct.redisObject* %15, i64* nonnull %2) #6, !dbg !2928
  %17 = icmp eq i32 %16, -1, !dbg !2929
  %18 = load i64, i64* %2, align 8, !dbg !2930
  %19 = add i64 %18, 2147483648, !dbg !2931
  %20 = icmp ugt i64 %19, 4294967295, !dbg !2931
  %21 = or i1 %17, %20, !dbg !2931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2931
  br i1 %21, label %29, label %22, !dbg !2931

; <label>:22:                                     ; preds = %7
  %23 = trunc i64 %18 to i32, !dbg !2932
  %24 = icmp slt i32 %23, 0, !dbg !2936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2937
  br i1 %24, label %28, label %25, !dbg !2937

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !2938, !tbaa !1003
  %27 = icmp sgt i32 %26, %23, !dbg !2939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2940
  br i1 %27, label %31, label %28, !dbg !2940

; <label>:28:                                     ; preds = %22, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2943
  br label %29, !dbg !2943

; <label>:29:                                     ; preds = %28, %7
  %30 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 18), align 8, !dbg !2944, !tbaa !2946
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %30) #6, !dbg !2947
  br label %87, !dbg !2948

; <label>:31:                                     ; preds = %25
  %32 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !2949, !tbaa !1030
  %33 = shl i64 %18, 32, !dbg !2950
  %34 = ashr exact i64 %33, 32, !dbg !2950
  %35 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %32, i64 %34, !dbg !2950
  store %struct.redisDb* %35, %struct.redisDb** %8, align 8, !dbg !2951, !tbaa !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2943
  %36 = icmp slt i32 %11, 0, !dbg !2957
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2958
  br i1 %36, label %42, label %37, !dbg !2958

; <label>:37:                                     ; preds = %31
  %38 = icmp sgt i32 %26, %11, !dbg !2959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2960
  br i1 %38, label %39, label %42, !dbg !2960

; <label>:39:                                     ; preds = %37
  %40 = sext i32 %11 to i64, !dbg !2961
  %41 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %32, i64 %40, !dbg !2961
  store %struct.redisDb* %41, %struct.redisDb** %8, align 8, !dbg !2962, !tbaa !580
  br label %42, !dbg !2963

; <label>:42:                                     ; preds = %31, %37, %39
  %43 = phi %struct.redisDb* [ %41, %39 ], [ %35, %37 ], [ %35, %31 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2964
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2965
  %44 = icmp eq %struct.redisDb* %9, %35, !dbg !2966
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2968
  br i1 %44, label %45, label %47, !dbg !2968

; <label>:45:                                     ; preds = %42
  %46 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 17), align 8, !dbg !2969, !tbaa !2971
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %46) #6, !dbg !2972
  br label %87, !dbg !2973

; <label>:47:                                     ; preds = %42
  %48 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !2974, !tbaa !1134
  %49 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %48, i64 1, !dbg !2975
  %50 = load %struct.redisObject*, %struct.redisObject** %49, align 8, !dbg !2975, !tbaa !1136
  %51 = call i32 @expireIfNeeded(%struct.redisDb* %43, %struct.redisObject* %50) #6, !dbg !2979
  %52 = call %struct.redisObject* @lookupKey(%struct.redisDb* %43, %struct.redisObject* %50, i32 0) #6, !dbg !2980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2981
  %53 = icmp eq %struct.redisObject* %52, null, !dbg !2983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2985
  br i1 %53, label %54, label %56, !dbg !2985

; <label>:54:                                     ; preds = %47
  %55 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !2986, !tbaa !2770
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %55) #6, !dbg !2988
  br label %87, !dbg !2989

; <label>:56:                                     ; preds = %47
  %57 = load %struct.redisDb*, %struct.redisDb** %8, align 8, !dbg !2990, !tbaa !580
  %58 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !2991, !tbaa !1134
  %59 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %58, i64 1, !dbg !2992
  %60 = load %struct.redisObject*, %struct.redisObject** %59, align 8, !dbg !2992, !tbaa !1136
  %61 = call i64 @getExpire(%struct.redisDb* %57, %struct.redisObject* %60) #8, !dbg !2993
  %62 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !2995, !tbaa !1134
  %63 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %62, i64 1, !dbg !2997
  %64 = load %struct.redisObject*, %struct.redisObject** %63, align 8, !dbg !2997, !tbaa !1136
  %65 = call i32 @expireIfNeeded(%struct.redisDb* %35, %struct.redisObject* %64) #6, !dbg !3001
  %66 = call %struct.redisObject* @lookupKey(%struct.redisDb* %35, %struct.redisObject* %64, i32 0) #6, !dbg !3002
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3003
  %67 = icmp eq %struct.redisObject* %66, null, !dbg !3004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3005
  br i1 %67, label %70, label %68, !dbg !3005

; <label>:68:                                     ; preds = %56
  %69 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !3006, !tbaa !2770
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %69) #6, !dbg !3008
  br label %87, !dbg !3009

; <label>:70:                                     ; preds = %56
  %71 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !3010, !tbaa !1134
  %72 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %71, i64 1, !dbg !3011
  %73 = load %struct.redisObject*, %struct.redisObject** %72, align 8, !dbg !3011, !tbaa !1136
  call void @dbAdd(%struct.redisDb* %35, %struct.redisObject* %73, %struct.redisObject* nonnull %52) #8, !dbg !3012
  %74 = icmp eq i64 %61, -1, !dbg !3013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3015
  br i1 %74, label %79, label %75, !dbg !3015

; <label>:75:                                     ; preds = %70
  %76 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !3016, !tbaa !1134
  %77 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %76, i64 1, !dbg !3017
  %78 = load %struct.redisObject*, %struct.redisObject** %77, align 8, !dbg !3017, !tbaa !1136
  call void @setExpire(%struct.client* nonnull %0, %struct.redisDb* %35, %struct.redisObject* %78, i64 %61) #8, !dbg !3018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3018
  br label %79, !dbg !3018

; <label>:79:                                     ; preds = %70, %75
  call void @incrRefCount(%struct.redisObject* nonnull %52) #6, !dbg !3019
  %80 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !3020, !tbaa !1134
  %81 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %80, i64 1, !dbg !3021
  %82 = load %struct.redisObject*, %struct.redisObject** %81, align 8, !dbg !3021, !tbaa !1136
  %83 = call i32 @dbDelete(%struct.redisDb* %9, %struct.redisObject* %82) #8, !dbg !3022
  %84 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3023, !tbaa !1188
  %85 = add nsw i64 %84, 1, !dbg !3023
  store i64 %85, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3023, !tbaa !1188
  %86 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !3024, !tbaa !3025
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %86) #6, !dbg !3026
  br label %87, !dbg !3027

; <label>:87:                                     ; preds = %79, %68, %54, %45, %29, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3028
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7, !dbg !3027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3027
  ret void, !dbg !3027
}

; Function Attrs: noredzone
declare dso_local i32 @getLongLongFromObject(%struct.redisObject*, i64*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @scanDatabaseForReadyLists(%struct.redisDb*) local_unnamed_addr #0 !dbg !3029 {
  %2 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 2, !dbg !3040
  %3 = load %struct.dict*, %struct.dict** %2, align 8, !dbg !3040, !tbaa !3041
  %4 = tail call %struct.dictIterator* @dictGetSafeIterator(%struct.dict* %3) #6, !dbg !3042
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3044
  %5 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %4) #6, !dbg !3045
  %6 = icmp eq %struct.dictEntry* %5, null, !dbg !3047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3044
  br i1 %6, label %43, label %7, !dbg !3044

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 0
  br label %9, !dbg !3044

; <label>:9:                                      ; preds = %7, %40
  %10 = phi %struct.dictEntry* [ %5, %7 ], [ %41, %40 ]
  %11 = bitcast %struct.dictEntry* %10 to %struct.redisObject**, !dbg !3048
  %12 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !3048, !tbaa !805
  %13 = load %struct.dict*, %struct.dict** %8, align 8, !dbg !3054, !tbaa !207
  %14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %12, i64 0, i32 2, !dbg !3055
  %15 = load i8*, i8** %14, align 8, !dbg !3055, !tbaa !215
  %16 = tail call %struct.dictEntry* @dictFind(%struct.dict* %13, i8* %15) #6, !dbg !3056
  %17 = icmp eq %struct.dictEntry* %16, null, !dbg !3058
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3059
  br i1 %17, label %27, label %18, !dbg !3059

; <label>:18:                                     ; preds = %9
  %19 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %16, i64 0, i32 1, i32 0, !dbg !3060
  %20 = bitcast i8** %19 to %struct.redisObject**, !dbg !3060
  %21 = load %struct.redisObject*, %struct.redisObject** %20, align 8, !dbg !3060, !tbaa !222
  %22 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !3062, !tbaa !226
  %23 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !3063
  %24 = and i32 %23, %22, !dbg !3064
  %25 = icmp eq i32 %24, -1, !dbg !3064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3064
  br i1 %25, label %26, label %28, !dbg !3064

; <label>:26:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3065
  br label %28

; <label>:27:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3069
  br label %40, !dbg !3069

; <label>:28:                                     ; preds = %18, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3067
  %29 = icmp eq %struct.redisObject* %21, null, !dbg !3071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3069
  br i1 %29, label %40, label %30, !dbg !3069

; <label>:30:                                     ; preds = %28
  %31 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %21, i64 0, i32 0, !dbg !3072
  %32 = load i32, i32* %31, align 8, !dbg !3072
  %33 = and i32 %32, 15, !dbg !3072
  %34 = icmp eq i32 %33, 1, !dbg !3073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3074
  br i1 %34, label %39, label %35, !dbg !3074

; <label>:35:                                     ; preds = %30
  %36 = icmp eq i32 %33, 6, !dbg !3075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3076
  br i1 %36, label %39, label %37, !dbg !3076

; <label>:37:                                     ; preds = %35
  %38 = icmp eq i32 %33, 3, !dbg !3077
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3078
  br i1 %38, label %39, label %40, !dbg !3078

; <label>:39:                                     ; preds = %37, %35, %30
  tail call void @signalKeyAsReady(%struct.redisDb* nonnull %0, %struct.redisObject* %12) #6, !dbg !3079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3079
  br label %40, !dbg !3079

; <label>:40:                                     ; preds = %27, %28, %39, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3044
  %41 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %4) #6, !dbg !3045
  %42 = icmp eq %struct.dictEntry* %41, null, !dbg !3047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3044
  br i1 %42, label %43, label %9, !dbg !3044, !llvm.loop !3080

; <label>:43:                                     ; preds = %40, %1
  tail call void @dictReleaseIterator(%struct.dictIterator* %4) #6, !dbg !3082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3083
  ret void, !dbg !3083
}

; Function Attrs: noredzone nounwind
define dso_local i32 @dbSwapDatabases(i32, i32) local_unnamed_addr #0 !dbg !3084 {
  %3 = icmp slt i32 %0, 0, !dbg !3095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3097
  br i1 %3, label %29, label %4, !dbg !3097

; <label>:4:                                      ; preds = %2
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !3098, !tbaa !1003
  %6 = icmp sle i32 %5, %0, !dbg !3099
  %7 = icmp slt i32 %1, 0, !dbg !3100
  %8 = or i1 %7, %6, !dbg !3101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3101
  br i1 %8, label %29, label %9, !dbg !3101

; <label>:9:                                      ; preds = %4
  %10 = icmp sgt i32 %5, %1, !dbg !3102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3103
  br i1 %10, label %11, label %29, !dbg !3103

; <label>:11:                                     ; preds = %9
  %12 = icmp eq i32 %0, %1, !dbg !3104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3106
  br i1 %12, label %29, label %13, !dbg !3106

; <label>:13:                                     ; preds = %11
  %14 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !3107, !tbaa !1030
  %15 = sext i32 %0 to i64, !dbg !3108
  %16 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %14, i64 %15, !dbg !3108
  %17 = bitcast %struct.redisDb* %16 to <2 x i64>*, !dbg !3108
  %18 = load <2 x i64>, <2 x i64>* %17, align 8, !dbg !3108
  %19 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %14, i64 %15, i32 6, !dbg !3108
  %20 = load i64, i64* %19, align 8, !dbg !3108
  %21 = sext i32 %1 to i64, !dbg !3111
  %22 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %14, i64 %21, !dbg !3111
  %23 = bitcast %struct.redisDb* %22 to <2 x i64>*, !dbg !3113
  %24 = load <2 x i64>, <2 x i64>* %23, align 8, !dbg !3113, !tbaa !1136
  %25 = bitcast %struct.redisDb* %16 to <2 x i64>*, !dbg !3114
  store <2 x i64> %24, <2 x i64>* %25, align 8, !dbg !3114, !tbaa !1136
  %26 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %14, i64 %21, i32 6, !dbg !3115
  %27 = load i64, i64* %26, align 8, !dbg !3115, !tbaa !3116
  store i64 %27, i64* %19, align 8, !dbg !3117, !tbaa !3116
  %28 = bitcast %struct.redisDb* %22 to <2 x i64>*, !dbg !3118
  store <2 x i64> %18, <2 x i64>* %28, align 8, !dbg !3118, !tbaa !1136
  store i64 %20, i64* %26, align 8, !dbg !3119, !tbaa !3116
  tail call void @scanDatabaseForReadyLists(%struct.redisDb* %16) #8, !dbg !3120
  tail call void @scanDatabaseForReadyLists(%struct.redisDb* %22) #8, !dbg !3121
  br label %29

; <label>:29:                                     ; preds = %11, %2, %4, %9, %13
  %30 = phi i32 [ 0, %13 ], [ -1, %9 ], [ -1, %4 ], [ -1, %2 ], [ 0, %11 ], !dbg !3122
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3123
  ret i32 %30, !dbg !3123
}

; Function Attrs: noredzone nounwind
define dso_local void @swapdbCommand(%struct.client*) local_unnamed_addr #0 !dbg !3124 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = bitcast i64* %2 to i8*, !dbg !3130
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7, !dbg !3130
  %5 = bitcast i64* %3 to i8*, !dbg !3130
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !3130
  %6 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !3131, !tbaa !404
  %7 = icmp eq i32 %6, 0, !dbg !3133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3134
  br i1 %7, label %9, label %8, !dbg !3134

; <label>:8:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0)) #6, !dbg !3135
  br label %34, !dbg !3137

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3138
  %11 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !3138, !tbaa !1134
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 1, !dbg !3140
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !3140, !tbaa !1136
  %14 = call i32 @getLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %13, i64* nonnull %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0)) #6, !dbg !3142
  %15 = icmp eq i32 %14, 0, !dbg !3143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3144
  br i1 %15, label %16, label %34, !dbg !3144

; <label>:16:                                     ; preds = %9
  %17 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !3145, !tbaa !1134
  %18 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %17, i64 2, !dbg !3147
  %19 = load %struct.redisObject*, %struct.redisObject** %18, align 8, !dbg !3147, !tbaa !1136
  %20 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %19, i64* nonnull %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !3149
  %21 = icmp eq i32 %20, 0, !dbg !3150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3151
  br i1 %21, label %22, label %34, !dbg !3151

; <label>:22:                                     ; preds = %16
  %23 = load i64, i64* %2, align 8, !dbg !3152, !tbaa !839
  %24 = trunc i64 %23 to i32, !dbg !3152
  %25 = load i64, i64* %3, align 8, !dbg !3154, !tbaa !839
  %26 = trunc i64 %25 to i32, !dbg !3154
  %27 = call i32 @dbSwapDatabases(i32 %24, i32 %26) #8, !dbg !3155
  %28 = icmp eq i32 %27, -1, !dbg !3156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3157
  br i1 %28, label %29, label %30, !dbg !3157

; <label>:29:                                     ; preds = %22
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3158
  br label %34, !dbg !3160

; <label>:30:                                     ; preds = %22
  %31 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3161, !tbaa !1188
  %32 = add nsw i64 %31, 1, !dbg !3161
  store i64 %32, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3161, !tbaa !1188
  %33 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !3163, !tbaa !1190
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %33) #6, !dbg !3164
  br label %34, !dbg !3165

; <label>:34:                                     ; preds = %16, %9, %30, %29, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3166
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !3165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7, !dbg !3165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3165
  ret void, !dbg !3165
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictAddOrFind(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @rememberSlaveKeyWithExpire(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @propagateExpire(%struct.redisDb* nocapture readonly, %struct.redisObject*, i32) local_unnamed_addr #0 !dbg !3167 {
  %4 = alloca [2 x %struct.redisObject*], align 16
  %5 = bitcast [2 x %struct.redisObject*]* %4 to i8*, !dbg !3179
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !3179
  %6 = icmp eq i32 %2, 0, !dbg !3181
  %7 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 38), align 8, !dbg !3182
  %8 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 37), align 8, !dbg !3183
  %9 = select i1 %6, %struct.redisObject* %8, %struct.redisObject* %7, !dbg !3181
  %10 = getelementptr inbounds [2 x %struct.redisObject*], [2 x %struct.redisObject*]* %4, i64 0, i64 0, !dbg !3184
  store %struct.redisObject* %9, %struct.redisObject** %10, align 16, !dbg !3185, !tbaa !1136
  %11 = getelementptr inbounds [2 x %struct.redisObject*], [2 x %struct.redisObject*]* %4, i64 0, i64 1, !dbg !3186
  store %struct.redisObject* %1, %struct.redisObject** %11, align 8, !dbg !3187, !tbaa !1136
  tail call void @incrRefCount(%struct.redisObject* %9) #6, !dbg !3188
  tail call void @incrRefCount(%struct.redisObject* %1) #6, !dbg !3189
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !3190, !tbaa !3192
  %13 = icmp eq i32 %12, 0, !dbg !3193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3194
  br i1 %13, label %14, label %16, !dbg !3194

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 5, !dbg !3195
  br label %20, !dbg !3194

; <label>:16:                                     ; preds = %3
  %17 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 56), align 8, !dbg !3196, !tbaa !3197
  %18 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 5, !dbg !3198
  %19 = load i32, i32* %18, align 8, !dbg !3198, !tbaa !373
  call void @feedAppendOnlyFile(%struct.redisCommand* %17, i32 %19, %struct.redisObject** nonnull %10, i32 2) #6, !dbg !3199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3199
  br label %20, !dbg !3199

; <label>:20:                                     ; preds = %14, %16
  %21 = phi i32* [ %15, %14 ], [ %18, %16 ], !dbg !3195
  %22 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !3200, !tbaa !3201
  %23 = load i32, i32* %21, align 8, !dbg !3195, !tbaa !373
  call void @replicationFeedSlaves(%struct.list* %22, i32 %23, %struct.redisObject** nonnull %10, i32 2) #6, !dbg !3202
  %24 = load %struct.redisObject*, %struct.redisObject** %10, align 16, !dbg !3203, !tbaa !1136
  call void @decrRefCount(%struct.redisObject* %24) #6, !dbg !3204
  %25 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !3205, !tbaa !1136
  call void @decrRefCount(%struct.redisObject* %25) #6, !dbg !3206
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !3207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3207
  ret void, !dbg !3207
}

; Function Attrs: noredzone
declare dso_local void @feedAppendOnlyFile(%struct.redisCommand*, i32, %struct.redisObject**, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @replicationFeedSlaves(%struct.list*, i32, %struct.redisObject**, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @mstime() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32* @getKeysUsingCommandTable(%struct.redisCommand* nocapture readonly, %struct.redisObject** nocapture readnone, i32, i32* nocapture) local_unnamed_addr #0 !dbg !3208 {
  %5 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %0, i64 0, i32 6, !dbg !3223
  %6 = load i32, i32* %5, align 8, !dbg !3223, !tbaa !3225
  %7 = icmp eq i32 %6, 0, !dbg !3226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3227
  br i1 %7, label %49, label %8, !dbg !3227

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %0, i64 0, i32 7, !dbg !3228
  %10 = load i32, i32* %9, align 4, !dbg !3228, !tbaa !3229
  %11 = icmp slt i32 %10, 0, !dbg !3231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3233
  br i1 %11, label %12, label %14, !dbg !3233

; <label>:12:                                     ; preds = %8
  %13 = add nsw i32 %10, %2, !dbg !3234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3235
  br label %14, !dbg !3235

; <label>:14:                                     ; preds = %12, %8
  %15 = phi i32 [ %13, %12 ], [ %10, %8 ], !dbg !3236
  %16 = sub i32 1, %6, !dbg !3237
  %17 = add i32 %16, %15, !dbg !3238
  %18 = sext i32 %17 to i64, !dbg !3239
  %19 = shl nsw i64 %18, 2, !dbg !3240
  %20 = tail call i8* @zmalloc(i64 %19) #6, !dbg !3241
  %21 = bitcast i8* %20 to i32*, !dbg !3241
  %22 = load i32, i32* %5, align 8, !dbg !3243, !tbaa !3225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3246
  %23 = icmp sgt i32 %22, %15, !dbg !3247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3249
  br i1 %23, label %49, label %24, !dbg !3249

; <label>:24:                                     ; preds = %14
  %25 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %0, i64 0, i32 8
  br label %26, !dbg !3249

; <label>:26:                                     ; preds = %24, %41
  %27 = phi i64 [ 0, %24 ], [ %42, %41 ]
  %28 = phi i32 [ %22, %24 ], [ %45, %41 ]
  %29 = icmp slt i32 %28, %2, !dbg !3250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3253
  br i1 %29, label %41, label %30, !dbg !3253

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %0, i64 0, i32 4, !dbg !3254
  %32 = load i32, i32* %31, align 8, !dbg !3254, !tbaa !305
  %33 = and i32 %32, 8, !dbg !3257
  %34 = icmp eq i32 %33, 0, !dbg !3257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3258
  br i1 %34, label %35, label %39, !dbg !3258

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %0, i64 0, i32 2, !dbg !3259
  %37 = load i32, i32* %36, align 8, !dbg !3259, !tbaa !3260
  %38 = icmp slt i32 %37, 0, !dbg !3261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3262
  br i1 %38, label %39, label %40, !dbg !3262

; <label>:39:                                     ; preds = %30, %35
  tail call void @zfree(i8* %20) #6, !dbg !3263
  br label %49, !dbg !3265

; <label>:40:                                     ; preds = %35
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 1220, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.36, i64 0, i64 0)) #6, !dbg !3266
  tail call void @_exit(i32 1) #9, !dbg !3266
  unreachable

; <label>:41:                                     ; preds = %26
  %42 = add nuw i64 %27, 1, !dbg !3268
  %43 = getelementptr inbounds i32, i32* %21, i64 %27, !dbg !3269
  store i32 %28, i32* %43, align 4, !dbg !3270, !tbaa !835
  %44 = load i32, i32* %25, align 8, !dbg !3271, !tbaa !3272
  %45 = add nsw i32 %44, %28, !dbg !3273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3274
  %46 = icmp sgt i32 %45, %15, !dbg !3247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3249
  br i1 %46, label %47, label %26, !dbg !3249, !llvm.loop !3275

; <label>:47:                                     ; preds = %41
  %48 = trunc i64 %42 to i32, !dbg !3277
  br label %49, !dbg !3277

; <label>:49:                                     ; preds = %14, %47, %4, %39
  %50 = phi i32 [ 0, %39 ], [ 0, %4 ], [ 0, %14 ], [ %48, %47 ]
  %51 = phi i32* [ null, %39 ], [ null, %4 ], [ %21, %14 ], [ %21, %47 ], !dbg !3236
  store i32 %50, i32* %3, align 4, !dbg !3278, !tbaa !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3280
  ret i32* %51, !dbg !3280
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32* @getKeysFromCommand(%struct.redisCommand*, %struct.redisObject**, i32, i32*) local_unnamed_addr #0 !dbg !3281 {
  %5 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %0, i64 0, i32 4, !dbg !3291
  %6 = load i32, i32* %5, align 8, !dbg !3291, !tbaa !305
  %7 = and i32 %6, 16384, !dbg !3293
  %8 = icmp eq i32 %7, 0, !dbg !3293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3294
  br i1 %8, label %11, label %9, !dbg !3294

; <label>:9:                                      ; preds = %4
  %10 = tail call i32* @moduleGetCommandKeysViaAPI(%struct.redisCommand* nonnull %0, %struct.redisObject** %1, i32 %2, i32* %3) #6, !dbg !3295
  br label %22, !dbg !3297

; <label>:11:                                     ; preds = %4
  %12 = and i32 %6, 8, !dbg !3298
  %13 = icmp eq i32 %12, 0, !dbg !3298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3300
  br i1 %13, label %14, label %20, !dbg !3300

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %0, i64 0, i32 5, !dbg !3301
  %16 = load i32* (%struct.redisCommand*, %struct.redisObject**, i32, i32*)*, i32* (%struct.redisCommand*, %struct.redisObject**, i32, i32*)** %15, align 8, !dbg !3301, !tbaa !3302
  %17 = icmp eq i32* (%struct.redisCommand*, %struct.redisObject**, i32, i32*)* %16, null, !dbg !3303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3304
  br i1 %17, label %20, label %18, !dbg !3304

; <label>:18:                                     ; preds = %14
  %19 = tail call i32* %16(%struct.redisCommand* nonnull %0, %struct.redisObject** %1, i32 %2, i32* %3) #6, !dbg !3305
  br label %22, !dbg !3307

; <label>:20:                                     ; preds = %14, %11
  %21 = tail call i32* @getKeysUsingCommandTable(%struct.redisCommand* nonnull %0, %struct.redisObject** undef, i32 %2, i32* %3) #8, !dbg !3308
  br label %22, !dbg !3310

; <label>:22:                                     ; preds = %20, %18, %9
  %23 = phi i32* [ %10, %9 ], [ %21, %20 ], [ %19, %18 ], !dbg !3311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3313
  ret i32* %23, !dbg !3313
}

; Function Attrs: noredzone
declare dso_local i32* @moduleGetCommandKeysViaAPI(%struct.redisCommand*, %struct.redisObject**, i32, i32*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @getKeysFreeResult(i32*) local_unnamed_addr #0 !dbg !3314 {
  %2 = bitcast i32* %0 to i8*, !dbg !3320
  tail call void @zfree(i8* %2) #6, !dbg !3321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3322
  ret void, !dbg !3322
}

; Function Attrs: noredzone nounwind
define dso_local i32* @zunionInterGetKeys(%struct.redisCommand* nocapture readnone, %struct.redisObject** nocapture readonly, i32, i32* nocapture) local_unnamed_addr #0 !dbg !3323 {
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 2, !dbg !3336
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !3336, !tbaa !1136
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %6, i64 0, i32 2, !dbg !3337
  %8 = load i8*, i8** %7, align 8, !dbg !3337, !tbaa !215
  %9 = tail call i32 @atoi(i8* %8) #6, !dbg !3338
  %10 = icmp slt i32 %9, 1, !dbg !3340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3342
  br i1 %10, label %62, label %11, !dbg !3342

; <label>:11:                                     ; preds = %4
  %12 = add nsw i32 %2, -3, !dbg !3343
  %13 = icmp sgt i32 %9, %12, !dbg !3344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3345
  br i1 %13, label %62, label %14, !dbg !3345

; <label>:14:                                     ; preds = %11
  %15 = add nsw i32 %9, 1, !dbg !3346
  %16 = sext i32 %15 to i64, !dbg !3347
  %17 = shl nsw i64 %16, 2, !dbg !3348
  %18 = tail call i8* @zmalloc(i64 %17) #6, !dbg !3349
  %19 = bitcast i8* %18 to i32*, !dbg !3349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3354
  %20 = zext i32 %9 to i64
  %21 = add nsw i64 %20, -1, !dbg !3355
  %22 = and i64 %20, 3, !dbg !3355
  %23 = icmp ult i64 %21, 3, !dbg !3355
  br i1 %23, label %47, label %24, !dbg !3355

; <label>:24:                                     ; preds = %14
  %25 = sub nsw i64 %20, %22, !dbg !3355
  br label %26, !dbg !3355

; <label>:26:                                     ; preds = %26, %24
  %27 = phi i64 [ 0, %24 ], [ %44, %26 ]
  %28 = phi i64 [ %25, %24 ], [ %45, %26 ]
  %29 = getelementptr inbounds i32, i32* %19, i64 %27, !dbg !3357
  %30 = trunc i64 %27 to i32, !dbg !3358
  %31 = or i32 %30, 3, !dbg !3358
  store i32 %31, i32* %29, align 4, !dbg !3358, !tbaa !835
  %32 = or i64 %27, 1, !dbg !3359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3354
  %33 = getelementptr inbounds i32, i32* %19, i64 %32, !dbg !3357
  %34 = trunc i64 %32 to i32, !dbg !3358
  %35 = add i32 %34, 3, !dbg !3358
  store i32 %35, i32* %33, align 4, !dbg !3358, !tbaa !835
  %36 = or i64 %27, 2, !dbg !3359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3354
  %37 = getelementptr inbounds i32, i32* %19, i64 %36, !dbg !3357
  %38 = trunc i64 %36 to i32, !dbg !3358
  %39 = add i32 %38, 3, !dbg !3358
  store i32 %39, i32* %37, align 4, !dbg !3358, !tbaa !835
  %40 = or i64 %27, 3, !dbg !3359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3354
  %41 = getelementptr inbounds i32, i32* %19, i64 %40, !dbg !3357
  %42 = trunc i64 %40 to i32, !dbg !3358
  %43 = add i32 %42, 3, !dbg !3358
  store i32 %43, i32* %41, align 4, !dbg !3358, !tbaa !835
  %44 = add nuw nsw i64 %27, 4, !dbg !3359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3354
  %45 = add i64 %28, -4, !dbg !3354
  %46 = icmp eq i64 %45, 0, !dbg !3354
  br i1 %46, label %47, label %26, !dbg !3354, !llvm.loop !3361

; <label>:47:                                     ; preds = %26, %14
  %48 = phi i64 [ 0, %14 ], [ %44, %26 ]
  %49 = icmp eq i64 %22, 0, !dbg !3354
  br i1 %49, label %59, label %50, !dbg !3354

; <label>:50:                                     ; preds = %47, %50
  %51 = phi i64 [ %56, %50 ], [ %48, %47 ]
  %52 = phi i64 [ %57, %50 ], [ %22, %47 ]
  %53 = getelementptr inbounds i32, i32* %19, i64 %51, !dbg !3357
  %54 = trunc i64 %51 to i32, !dbg !3358
  %55 = add i32 %54, 3, !dbg !3358
  store i32 %55, i32* %53, align 4, !dbg !3358, !tbaa !835
  %56 = add nuw nsw i64 %51, 1, !dbg !3359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3354
  %57 = add i64 %52, -1, !dbg !3354
  %58 = icmp eq i64 %57, 0, !dbg !3354
  br i1 %58, label %59, label %50, !dbg !3354, !llvm.loop !3363

; <label>:59:                                     ; preds = %50, %47
  %60 = sext i32 %9 to i64, !dbg !3365
  %61 = getelementptr inbounds i32, i32* %19, i64 %60, !dbg !3365
  store i32 1, i32* %61, align 4, !dbg !3366, !tbaa !835
  br label %62, !dbg !3367

; <label>:62:                                     ; preds = %4, %11, %59
  %63 = phi i32 [ %15, %59 ], [ 0, %11 ], [ 0, %4 ]
  %64 = phi i32* [ %19, %59 ], [ null, %11 ], [ null, %4 ], !dbg !3368
  store i32 %63, i32* %3, align 4, !dbg !3369, !tbaa !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3371
  ret i32* %64, !dbg !3371
}

; Function Attrs: noredzone
declare dso_local i32 @atoi(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32* @evalGetKeys(%struct.redisCommand* nocapture readnone, %struct.redisObject** nocapture readonly, i32, i32* nocapture) local_unnamed_addr #0 !dbg !3372 {
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 2, !dbg !3385
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !3385, !tbaa !1136
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %6, i64 0, i32 2, !dbg !3386
  %8 = load i8*, i8** %7, align 8, !dbg !3386, !tbaa !215
  %9 = tail call i32 @atoi(i8* %8) #6, !dbg !3387
  %10 = icmp slt i32 %9, 1, !dbg !3389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3391
  br i1 %10, label %14, label %11, !dbg !3391

; <label>:11:                                     ; preds = %4
  %12 = add nsw i32 %2, -3, !dbg !3392
  %13 = icmp sgt i32 %9, %12, !dbg !3393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3394
  br i1 %13, label %14, label %15, !dbg !3394

; <label>:14:                                     ; preds = %11, %4
  store i32 0, i32* %3, align 4, !dbg !3395, !tbaa !835
  br label %59, !dbg !3397

; <label>:15:                                     ; preds = %11
  %16 = sext i32 %9 to i64, !dbg !3398
  %17 = shl nsw i64 %16, 2, !dbg !3399
  %18 = tail call i8* @zmalloc(i64 %17) #6, !dbg !3400
  %19 = bitcast i8* %18 to i32*, !dbg !3400
  store i32 %9, i32* %3, align 4, !dbg !3402, !tbaa !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3406
  %20 = zext i32 %9 to i64
  %21 = add nsw i64 %20, -1, !dbg !3407
  %22 = and i64 %20, 3, !dbg !3407
  %23 = icmp ult i64 %21, 3, !dbg !3407
  br i1 %23, label %47, label %24, !dbg !3407

; <label>:24:                                     ; preds = %15
  %25 = sub nsw i64 %20, %22, !dbg !3407
  br label %26, !dbg !3407

; <label>:26:                                     ; preds = %26, %24
  %27 = phi i64 [ 0, %24 ], [ %44, %26 ]
  %28 = phi i64 [ %25, %24 ], [ %45, %26 ]
  %29 = getelementptr inbounds i32, i32* %19, i64 %27, !dbg !3409
  %30 = trunc i64 %27 to i32, !dbg !3410
  %31 = or i32 %30, 3, !dbg !3410
  store i32 %31, i32* %29, align 4, !dbg !3410, !tbaa !835
  %32 = or i64 %27, 1, !dbg !3411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3406
  %33 = getelementptr inbounds i32, i32* %19, i64 %32, !dbg !3409
  %34 = trunc i64 %32 to i32, !dbg !3410
  %35 = add i32 %34, 3, !dbg !3410
  store i32 %35, i32* %33, align 4, !dbg !3410, !tbaa !835
  %36 = or i64 %27, 2, !dbg !3411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3406
  %37 = getelementptr inbounds i32, i32* %19, i64 %36, !dbg !3409
  %38 = trunc i64 %36 to i32, !dbg !3410
  %39 = add i32 %38, 3, !dbg !3410
  store i32 %39, i32* %37, align 4, !dbg !3410, !tbaa !835
  %40 = or i64 %27, 3, !dbg !3411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3406
  %41 = getelementptr inbounds i32, i32* %19, i64 %40, !dbg !3409
  %42 = trunc i64 %40 to i32, !dbg !3410
  %43 = add i32 %42, 3, !dbg !3410
  store i32 %43, i32* %41, align 4, !dbg !3410, !tbaa !835
  %44 = add nuw nsw i64 %27, 4, !dbg !3411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3406
  %45 = add i64 %28, -4, !dbg !3406
  %46 = icmp eq i64 %45, 0, !dbg !3406
  br i1 %46, label %47, label %26, !dbg !3406, !llvm.loop !3413

; <label>:47:                                     ; preds = %26, %15
  %48 = phi i64 [ 0, %15 ], [ %44, %26 ]
  %49 = icmp eq i64 %22, 0, !dbg !3406
  br i1 %49, label %59, label %50, !dbg !3406

; <label>:50:                                     ; preds = %47, %50
  %51 = phi i64 [ %56, %50 ], [ %48, %47 ]
  %52 = phi i64 [ %57, %50 ], [ %22, %47 ]
  %53 = getelementptr inbounds i32, i32* %19, i64 %51, !dbg !3409
  %54 = trunc i64 %51 to i32, !dbg !3410
  %55 = add i32 %54, 3, !dbg !3410
  store i32 %55, i32* %53, align 4, !dbg !3410, !tbaa !835
  %56 = add nuw nsw i64 %51, 1, !dbg !3411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3406
  %57 = add i64 %52, -1, !dbg !3406
  %58 = icmp eq i64 %57, 0, !dbg !3406
  br i1 %58, label %59, label %50, !dbg !3406, !llvm.loop !3415

; <label>:59:                                     ; preds = %47, %50, %14
  %60 = phi i32* [ null, %14 ], [ %19, %50 ], [ %19, %47 ], !dbg !3416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3418
  ret i32* %60, !dbg !3418
}

; Function Attrs: noredzone nounwind
define dso_local i32* @sortGetKeys(%struct.redisCommand* nocapture readnone, %struct.redisObject** nocapture readonly, i32, i32* nocapture) local_unnamed_addr #0 !dbg !3419 {
  %5 = alloca [4 x %struct.anon.9], align 16
  %6 = tail call i8* @zmalloc(i64 8) #6, !dbg !3442
  %7 = bitcast i8* %6 to i32*, !dbg !3442
  store i32 1, i32* %7, align 4, !dbg !3444, !tbaa !835
  %8 = bitcast [4 x %struct.anon.9]* %5 to i8*, !dbg !3445
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %8) #7, !dbg !3445
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 64, i1 false), !dbg !3446
  %9 = getelementptr inbounds [4 x %struct.anon.9], [4 x %struct.anon.9]* %5, i64 0, i64 0, i32 0, !dbg !3446
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), i8** %9, align 16, !dbg !3446
  %10 = getelementptr inbounds [4 x %struct.anon.9], [4 x %struct.anon.9]* %5, i64 0, i64 0, i32 1, !dbg !3446
  store i32 2, i32* %10, align 8, !dbg !3446
  %11 = getelementptr inbounds [4 x %struct.anon.9], [4 x %struct.anon.9]* %5, i64 0, i64 1, i32 0, !dbg !3446
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i8** %11, align 16, !dbg !3446
  %12 = getelementptr inbounds [4 x %struct.anon.9], [4 x %struct.anon.9]* %5, i64 0, i64 1, i32 1, !dbg !3446
  store i32 1, i32* %12, align 8, !dbg !3446
  %13 = getelementptr inbounds [4 x %struct.anon.9], [4 x %struct.anon.9]* %5, i64 0, i64 2, i32 0, !dbg !3446
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0), i8** %13, align 16, !dbg !3446
  %14 = getelementptr inbounds [4 x %struct.anon.9], [4 x %struct.anon.9]* %5, i64 0, i64 2, i32 1, !dbg !3446
  store i32 1, i32* %14, align 8, !dbg !3446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3448
  %15 = icmp sgt i32 %2, 2, !dbg !3450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3452
  br i1 %15, label %16, label %56, !dbg !3452

; <label>:16:                                     ; preds = %4
  %17 = getelementptr inbounds i8, i8* %6, i64 4
  %18 = bitcast i8* %17 to i32*
  br label %19, !dbg !3452

; <label>:19:                                     ; preds = %51, %16
  %20 = phi i32 [ 0, %16 ], [ %53, %51 ]
  %21 = phi i32 [ 2, %16 ], [ %54, %51 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3457
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %22
  %24 = add nsw i32 %21, 1
  %25 = icmp slt i32 %24, %2
  %26 = load %struct.redisObject*, %struct.redisObject** %23, align 8, !dbg !3458, !tbaa !1136
  %27 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %26, i64 0, i32 2
  %28 = load i8*, i8** %27, align 8, !dbg !3462, !tbaa !215
  br label %29, !dbg !3457

; <label>:29:                                     ; preds = %19, %43
  %30 = phi i64 [ 0, %19 ], [ %44, %43 ]
  %31 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %19 ], [ %46, %43 ]
  %32 = tail call i32 @strcasecmp(i8* %28, i8* nonnull %31) #10, !dbg !3463
  %33 = icmp eq i32 %32, 0, !dbg !3463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3464
  br i1 %33, label %34, label %38, !dbg !3464

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds [4 x %struct.anon.9], [4 x %struct.anon.9]* %5, i64 0, i64 %30, i32 1, !dbg !3465
  %36 = load i32, i32* %35, align 8, !dbg !3465, !tbaa !3467
  %37 = add nsw i32 %36, %21, !dbg !3469
  br label %48, !dbg !3470

; <label>:38:                                     ; preds = %29
  %39 = tail call i32 @strcasecmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !3471
  %40 = icmp eq i32 %39, 0, !dbg !3471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3473
  br i1 %40, label %41, label %43, !dbg !3473

; <label>:41:                                     ; preds = %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3474
  br i1 %25, label %42, label %43, !dbg !3474

; <label>:42:                                     ; preds = %41
  store i32 %24, i32* %18, align 4, !dbg !3475, !tbaa !835
  br label %48, !dbg !3477

; <label>:43:                                     ; preds = %38, %41
  %44 = add nuw i64 %30, 1, !dbg !3478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3479
  %45 = getelementptr inbounds [4 x %struct.anon.9], [4 x %struct.anon.9]* %5, i64 0, i64 %44, i32 0, !dbg !3480
  %46 = load i8*, i8** %45, align 16, !dbg !3480, !tbaa !3481
  %47 = icmp eq i8* %46, null, !dbg !3482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3457
  br i1 %47, label %51, label %29, !dbg !3457, !llvm.loop !3483

; <label>:48:                                     ; preds = %42, %34
  %49 = phi i32 [ %37, %34 ], [ %21, %42 ]
  %50 = phi i32 [ %20, %34 ], [ 1, %42 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3485
  br label %51, !dbg !3486

; <label>:51:                                     ; preds = %43, %48
  %52 = phi i32 [ %49, %48 ], [ %21, %43 ], !dbg !3487
  %53 = phi i32 [ %50, %48 ], [ %20, %43 ], !dbg !3488
  %54 = add nsw i32 %52, 1, !dbg !3486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3489
  %55 = icmp slt i32 %54, %2, !dbg !3450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3452
  br i1 %55, label %19, label %56, !dbg !3452, !llvm.loop !3490

; <label>:56:                                     ; preds = %51, %4
  %57 = phi i32 [ 0, %4 ], [ %53, %51 ], !dbg !3485
  %58 = add nsw i32 %57, 1, !dbg !3492
  store i32 %58, i32* %3, align 4, !dbg !3493, !tbaa !835
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %8) #7, !dbg !3494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3495
  ret i32* %7, !dbg !3495
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #2

; Function Attrs: noredzone nounwind
define dso_local i32* @migrateGetKeys(%struct.redisCommand* nocapture readnone, %struct.redisObject** nocapture readonly, i32, i32* nocapture) local_unnamed_addr #0 !dbg !3496 {
  %5 = icmp sgt i32 %2, 6, !dbg !3512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3514
  br i1 %5, label %6, label %57, !dbg !3514

; <label>:6:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3519
  %7 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 3
  %8 = sext i32 %2 to i64, !dbg !3519
  br label %9, !dbg !3519

; <label>:9:                                      ; preds = %6, %54
  %10 = phi i64 [ 6, %6 ], [ %55, %54 ]
  %11 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %10, !dbg !3520
  %12 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !3520, !tbaa !1136
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %12, i64 0, i32 2, !dbg !3524
  %14 = load i8*, i8** %13, align 8, !dbg !3524, !tbaa !215
  %15 = tail call i32 @strcasecmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0)) #10, !dbg !3525
  %16 = icmp eq i32 %15, 0, !dbg !3525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3526
  br i1 %16, label %17, label %54, !dbg !3526

; <label>:17:                                     ; preds = %9
  %18 = load %struct.redisObject*, %struct.redisObject** %7, align 8, !dbg !3527, !tbaa !1136
  %19 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 2, !dbg !3528
  %20 = load i8*, i8** %19, align 8, !dbg !3528, !tbaa !215
  %21 = getelementptr inbounds i8, i8* %20, i64 -1, !dbg !3531
  %22 = load i8, i8* %21, align 1, !dbg !3531, !tbaa !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3533
  %23 = trunc i8 %22 to i3, !dbg !3533
  switch i3 %23, label %45 [
    i3 0, label %24
    i3 1, label %27
    i3 2, label %31
    i3 3, label %36
    i3 -4, label %41
  ], !dbg !3533

; <label>:24:                                     ; preds = %17
  %25 = lshr i8 %22, 3, !dbg !3534
  %26 = zext i8 %25 to i64, !dbg !3534
  br label %46, !dbg !3535

; <label>:27:                                     ; preds = %17
  %28 = getelementptr inbounds i8, i8* %20, i64 -3, !dbg !3536
  %29 = load i8, i8* %28, align 1, !dbg !3537, !tbaa !222
  %30 = zext i8 %29 to i64, !dbg !3536
  br label %46, !dbg !3538

; <label>:31:                                     ; preds = %17
  %32 = getelementptr inbounds i8, i8* %20, i64 -5, !dbg !3539
  %33 = bitcast i8* %32 to i16*, !dbg !3540
  %34 = load i16, i16* %33, align 1, !dbg !3540, !tbaa !830
  %35 = zext i16 %34 to i64, !dbg !3539
  br label %46, !dbg !3541

; <label>:36:                                     ; preds = %17
  %37 = getelementptr inbounds i8, i8* %20, i64 -9, !dbg !3542
  %38 = bitcast i8* %37 to i32*, !dbg !3543
  %39 = load i32, i32* %38, align 1, !dbg !3543, !tbaa !835
  %40 = zext i32 %39 to i64, !dbg !3542
  br label %46, !dbg !3544

; <label>:41:                                     ; preds = %17
  %42 = getelementptr inbounds i8, i8* %20, i64 -17, !dbg !3545
  %43 = bitcast i8* %42 to i64*, !dbg !3546
  %44 = load i64, i64* %43, align 1, !dbg !3546, !tbaa !839
  br label %46, !dbg !3547

; <label>:45:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3550
  br label %49, !dbg !3550

; <label>:46:                                     ; preds = %24, %27, %31, %36, %41
  %47 = phi i64 [ %44, %41 ], [ %40, %36 ], [ %35, %31 ], [ %30, %27 ], [ %26, %24 ], !dbg !3551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3549
  %48 = icmp eq i64 %47, 0, !dbg !3553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3550
  br i1 %48, label %49, label %54, !dbg !3550

; <label>:49:                                     ; preds = %46, %45
  %50 = trunc i64 %10 to i32, !dbg !3515
  %51 = add nuw nsw i32 %50, 1, !dbg !3554
  %52 = sub nsw i32 %2, %51, !dbg !3556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3557
  %53 = zext i32 %51 to i64, !dbg !3557
  br label %57, !dbg !3557

; <label>:54:                                     ; preds = %9, %46
  %55 = add nuw nsw i64 %10, 1, !dbg !3558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3559
  %56 = icmp slt i64 %55, %8, !dbg !3560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3519
  br i1 %56, label %9, label %57, !dbg !3519, !llvm.loop !3561

; <label>:57:                                     ; preds = %54, %49, %4
  %58 = phi i32 [ %52, %49 ], [ 1, %4 ], [ 1, %54 ], !dbg !3563
  %59 = phi i64 [ %53, %49 ], [ 3, %4 ], [ 3, %54 ]
  %60 = sext i32 %58 to i64, !dbg !3564
  %61 = shl nsw i64 %60, 2, !dbg !3565
  %62 = tail call i8* @zmalloc(i64 %61) #6, !dbg !3566
  %63 = bitcast i8* %62 to i32*, !dbg !3566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3568
  %64 = icmp sgt i32 %58, 0, !dbg !3570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3572
  br i1 %64, label %65, label %105, !dbg !3572

; <label>:65:                                     ; preds = %57
  %66 = zext i32 %58 to i64
  %67 = add nsw i64 %66, -1, !dbg !3573
  %68 = and i64 %66, 3, !dbg !3573
  %69 = icmp ult i64 %67, 3, !dbg !3573
  br i1 %69, label %93, label %70, !dbg !3573

; <label>:70:                                     ; preds = %65
  %71 = sub nsw i64 %66, %68, !dbg !3573
  br label %72, !dbg !3573

; <label>:72:                                     ; preds = %72, %70
  %73 = phi i64 [ 0, %70 ], [ %90, %72 ]
  %74 = phi i64 [ %71, %70 ], [ %91, %72 ]
  %75 = add nuw nsw i64 %73, %59, !dbg !3573
  %76 = getelementptr inbounds i32, i32* %63, i64 %73, !dbg !3574
  %77 = trunc i64 %75 to i32, !dbg !3575
  store i32 %77, i32* %76, align 4, !dbg !3575, !tbaa !835
  %78 = or i64 %73, 1, !dbg !3576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3572
  %79 = add nuw nsw i64 %78, %59, !dbg !3573
  %80 = getelementptr inbounds i32, i32* %63, i64 %78, !dbg !3574
  %81 = trunc i64 %79 to i32, !dbg !3575
  store i32 %81, i32* %80, align 4, !dbg !3575, !tbaa !835
  %82 = or i64 %73, 2, !dbg !3576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3572
  %83 = add nuw nsw i64 %82, %59, !dbg !3573
  %84 = getelementptr inbounds i32, i32* %63, i64 %82, !dbg !3574
  %85 = trunc i64 %83 to i32, !dbg !3575
  store i32 %85, i32* %84, align 4, !dbg !3575, !tbaa !835
  %86 = or i64 %73, 3, !dbg !3576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3572
  %87 = add nuw nsw i64 %86, %59, !dbg !3573
  %88 = getelementptr inbounds i32, i32* %63, i64 %86, !dbg !3574
  %89 = trunc i64 %87 to i32, !dbg !3575
  store i32 %89, i32* %88, align 4, !dbg !3575, !tbaa !835
  %90 = add nuw nsw i64 %73, 4, !dbg !3576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3572
  %91 = add i64 %74, -4, !dbg !3572
  %92 = icmp eq i64 %91, 0, !dbg !3572
  br i1 %92, label %93, label %72, !dbg !3572, !llvm.loop !3578

; <label>:93:                                     ; preds = %72, %65
  %94 = phi i64 [ 0, %65 ], [ %90, %72 ]
  %95 = icmp eq i64 %68, 0, !dbg !3572
  br i1 %95, label %105, label %96, !dbg !3572

; <label>:96:                                     ; preds = %93, %96
  %97 = phi i64 [ %102, %96 ], [ %94, %93 ]
  %98 = phi i64 [ %103, %96 ], [ %68, %93 ]
  %99 = add nuw nsw i64 %97, %59, !dbg !3573
  %100 = getelementptr inbounds i32, i32* %63, i64 %97, !dbg !3574
  %101 = trunc i64 %99 to i32, !dbg !3575
  store i32 %101, i32* %100, align 4, !dbg !3575, !tbaa !835
  %102 = add nuw nsw i64 %97, 1, !dbg !3576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3572
  %103 = add i64 %98, -1, !dbg !3572
  %104 = icmp eq i64 %103, 0, !dbg !3572
  br i1 %104, label %105, label %96, !dbg !3572, !llvm.loop !3580

; <label>:105:                                    ; preds = %93, %96, %57
  store i32 %58, i32* %3, align 4, !dbg !3581, !tbaa !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3582
  ret i32* %63, !dbg !3582
}

; Function Attrs: noredzone nounwind
define dso_local i32* @georadiusGetKeys(%struct.redisCommand* nocapture readnone, %struct.redisObject** nocapture readonly, i32, i32* nocapture) local_unnamed_addr #0 !dbg !3583 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3603
  %5 = icmp sgt i32 %2, 5, !dbg !3604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3605
  br i1 %5, label %6, label %28, !dbg !3605

; <label>:6:                                      ; preds = %4, %23
  %7 = phi i32 [ %26, %23 ], [ 5, %4 ]
  %8 = phi i32 [ %24, %23 ], [ -1, %4 ]
  %9 = sext i32 %7 to i64, !dbg !3606
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %9, !dbg !3606
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !3606, !tbaa !1136
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 2, !dbg !3607
  %13 = load i8*, i8** %12, align 8, !dbg !3607, !tbaa !215
  %14 = tail call i32 @strcasecmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !3609
  %15 = icmp eq i32 %14, 0, !dbg !3609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3611
  br i1 %15, label %19, label %16, !dbg !3611

; <label>:16:                                     ; preds = %6
  %17 = tail call i32 @strcasecmp(i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0)) #10, !dbg !3612
  %18 = icmp eq i32 %17, 0, !dbg !3612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3613
  br i1 %18, label %19, label %23, !dbg !3613

; <label>:19:                                     ; preds = %16, %6
  %20 = add nsw i32 %7, 1, !dbg !3614
  %21 = icmp slt i32 %20, %2, !dbg !3615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3616
  br i1 %21, label %22, label %23, !dbg !3616

; <label>:22:                                     ; preds = %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3617
  br label %23, !dbg !3617

; <label>:23:                                     ; preds = %16, %22, %19
  %24 = phi i32 [ %8, %16 ], [ %20, %22 ], [ %8, %19 ], !dbg !3619
  %25 = phi i32 [ %7, %16 ], [ %20, %22 ], [ %7, %19 ], !dbg !3620
  %26 = add nsw i32 %25, 1, !dbg !3621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3622
  %27 = icmp slt i32 %26, %2, !dbg !3604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3605
  br i1 %27, label %6, label %28, !dbg !3605, !llvm.loop !3623

; <label>:28:                                     ; preds = %23, %4
  %29 = phi i32 [ -1, %4 ], [ %24, %23 ], !dbg !3601
  %30 = icmp eq i32 %29, -1, !dbg !3625
  %31 = select i1 %30, i32 1, i32 2, !dbg !3626
  %32 = shl nuw nsw i32 %31, 2, !dbg !3628
  %33 = zext i32 %32 to i64, !dbg !3628
  %34 = tail call i8* @zmalloc(i64 %33) #6, !dbg !3629
  %35 = bitcast i8* %34 to i32*, !dbg !3629
  store i32 1, i32* %35, align 4, !dbg !3631, !tbaa !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3632
  br i1 %30, label %39, label %36, !dbg !3632

; <label>:36:                                     ; preds = %28
  %37 = getelementptr inbounds i8, i8* %34, i64 4, !dbg !3633
  %38 = bitcast i8* %37 to i32*, !dbg !3633
  store i32 %29, i32* %38, align 4, !dbg !3636, !tbaa !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3637
  br label %39, !dbg !3637

; <label>:39:                                     ; preds = %28, %36
  store i32 %31, i32* %3, align 4, !dbg !3638, !tbaa !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3639
  ret i32* %35, !dbg !3639
}

; Function Attrs: noredzone nounwind
define dso_local i32* @xreadGetKeys(%struct.redisCommand* nocapture readnone, %struct.redisObject** nocapture readonly, i32, i32* nocapture) local_unnamed_addr #0 !dbg !3640 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3661
  %5 = icmp sgt i32 %2, 1, !dbg !3662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3663
  br i1 %5, label %7, label %6, !dbg !3663

; <label>:6:                                      ; preds = %28, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3664
  br label %37, !dbg !3664

; <label>:7:                                      ; preds = %4, %28
  %8 = phi i32 [ %30, %28 ], [ 1, %4 ]
  %9 = sext i32 %8 to i64, !dbg !3665
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %9, !dbg !3665
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !3665, !tbaa !1136
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 2, !dbg !3666
  %13 = load i8*, i8** %12, align 8, !dbg !3666, !tbaa !215
  %14 = tail call i32 @strcasecmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0)) #10, !dbg !3668
  %15 = icmp eq i32 %14, 0, !dbg !3668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3670
  br i1 %15, label %25, label %16, !dbg !3670

; <label>:16:                                     ; preds = %7
  %17 = tail call i32 @strcasecmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !3671
  %18 = icmp eq i32 %17, 0, !dbg !3671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3673
  br i1 %18, label %25, label %19, !dbg !3673

; <label>:19:                                     ; preds = %16
  %20 = tail call i32 @strcasecmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0)) #10, !dbg !3674
  %21 = icmp eq i32 %20, 0, !dbg !3674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3676
  br i1 %21, label %25, label %22, !dbg !3676

; <label>:22:                                     ; preds = %19
  %23 = tail call i32 @strcasecmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0)) #10, !dbg !3677
  %24 = icmp eq i32 %23, 0, !dbg !3677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3679
  br i1 %24, label %28, label %32, !dbg !3679

; <label>:25:                                     ; preds = %19, %16, %7
  %26 = phi i32 [ 1, %7 ], [ 1, %16 ], [ 2, %19 ]
  %27 = add nsw i32 %8, %26, !dbg !3680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3680
  br label %28, !dbg !3682

; <label>:28:                                     ; preds = %25, %22
  %29 = phi i32 [ %8, %22 ], [ %27, %25 ], !dbg !3683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3682
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %30 = add nsw i32 %29, 1, !dbg !3685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3686
  %31 = icmp slt i32 %30, %2, !dbg !3662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3663
  br i1 %31, label %7, label %6, !dbg !3663, !llvm.loop !3687

; <label>:32:                                     ; preds = %22
  %33 = tail call i32 @strcasecmp(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0)) #10, !dbg !3689
  %34 = icmp ne i32 %33, 0, !dbg !3689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3692
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %35 = icmp eq i32 %8, -1, !dbg !3694
  %36 = or i1 %35, %34, !dbg !3694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3664
  br i1 %36, label %37, label %38, !dbg !3664

; <label>:37:                                     ; preds = %32, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3696
  br label %84, !dbg !3696

; <label>:38:                                     ; preds = %32
  %39 = xor i32 %8, -1, !dbg !3698
  %40 = add i32 %39, %2, !dbg !3698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3699
  %41 = icmp eq i32 %40, 0, !dbg !3700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3696
  br i1 %41, label %84, label %42, !dbg !3696

; <label>:42:                                     ; preds = %38
  %43 = and i32 %40, 1, !dbg !3701
  %44 = icmp eq i32 %43, 0, !dbg !3701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3702
  br i1 %44, label %45, label %84, !dbg !3702

; <label>:45:                                     ; preds = %42
  %46 = sdiv i32 %40, 2, !dbg !3703
  %47 = sext i32 %46 to i64, !dbg !3704
  %48 = shl nsw i64 %47, 2, !dbg !3705
  %49 = tail call i8* @zmalloc(i64 %48) #6, !dbg !3706
  %50 = bitcast i8* %49 to i32*, !dbg !3706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3708
  %51 = add i32 %8, 1, !dbg !3710
  %52 = sub i32 %2, %46, !dbg !3712
  %53 = icmp slt i32 %51, %52, !dbg !3713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3714
  br i1 %53, label %54, label %84, !dbg !3714

; <label>:54:                                     ; preds = %45
  %55 = sext i32 %51 to i64, !dbg !3715
  %56 = xor i32 %46, 1, !dbg !3715
  %57 = add i32 %56, %2, !dbg !3715
  %58 = sub i32 %57, %8, !dbg !3715
  %59 = add i32 %2, -2, !dbg !3715
  %60 = sub i32 %59, %46, !dbg !3715
  %61 = and i32 %58, 1, !dbg !3715
  %62 = icmp eq i32 %61, 0, !dbg !3715
  br i1 %62, label %65, label %63, !dbg !3715

; <label>:63:                                     ; preds = %54
  store i32 %51, i32* %50, align 4, !dbg !3716, !tbaa !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3717
  %64 = add nsw i64 %55, 1, !dbg !3710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3714
  br label %65, !dbg !3714

; <label>:65:                                     ; preds = %54, %63
  %66 = phi i64 [ %55, %54 ], [ %64, %63 ]
  %67 = phi i32 [ %8, %54 ], [ %51, %63 ]
  %68 = icmp eq i32 %60, %8, !dbg !3715
  br i1 %68, label %84, label %69, !dbg !3715

; <label>:69:                                     ; preds = %65, %69
  %70 = phi i64 [ %81, %69 ], [ %66, %65 ]
  %71 = phi i32 [ %80, %69 ], [ %67, %65 ]
  %72 = sub i32 %71, %8, !dbg !3715
  %73 = sext i32 %72 to i64, !dbg !3718
  %74 = getelementptr inbounds i32, i32* %50, i64 %73, !dbg !3718
  %75 = trunc i64 %70 to i32, !dbg !3716
  store i32 %75, i32* %74, align 4, !dbg !3716, !tbaa !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3714
  %76 = sub i32 %75, %8, !dbg !3715
  %77 = sext i32 %76 to i64, !dbg !3718
  %78 = getelementptr inbounds i32, i32* %50, i64 %77, !dbg !3718
  %79 = trunc i64 %70 to i32, !dbg !3716
  %80 = add i32 %79, 1, !dbg !3716
  store i32 %80, i32* %78, align 4, !dbg !3716, !tbaa !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3717
  %81 = add nsw i64 %70, 2, !dbg !3710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3714
  %82 = trunc i64 %81 to i32, !dbg !3713
  %83 = icmp eq i32 %52, %82, !dbg !3713
  br i1 %83, label %84, label %69, !dbg !3714, !llvm.loop !3719

; <label>:84:                                     ; preds = %65, %69, %45, %38, %42, %37
  %85 = phi i32 [ 0, %37 ], [ 0, %42 ], [ 0, %38 ], [ %46, %45 ], [ %46, %69 ], [ %46, %65 ]
  %86 = phi i32* [ null, %37 ], [ null, %42 ], [ null, %38 ], [ %50, %45 ], [ %50, %69 ], [ %50, %65 ], !dbg !3721
  store i32 %85, i32* %3, align 4, !dbg !3722, !tbaa !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3724
  ret i32* %86, !dbg !3724
}

; Function Attrs: noredzone nounwind
define dso_local void @slotToKeyUpdateKey(%struct.redisObject* nocapture readonly, i32) local_unnamed_addr #0 !dbg !3725 {
  %3 = alloca [64 x i8], align 16
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !3740
  %5 = load i8*, i8** %4, align 8, !dbg !3740, !tbaa !215
  %6 = getelementptr inbounds i8, i8* %5, i64 -1, !dbg !3743
  %7 = load i8, i8* %6, align 1, !dbg !3743, !tbaa !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3745
  %8 = trunc i8 %7 to i3, !dbg !3745
  switch i3 %8, label %30 [
    i3 0, label %9
    i3 1, label %12
    i3 2, label %16
    i3 3, label %21
    i3 -4, label %26
  ], !dbg !3745

; <label>:9:                                      ; preds = %2
  %10 = lshr i8 %7, 3, !dbg !3746
  %11 = zext i8 %10 to i64, !dbg !3746
  br label %30, !dbg !3747

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds i8, i8* %5, i64 -3, !dbg !3748
  %14 = load i8, i8* %13, align 1, !dbg !3749, !tbaa !222
  %15 = zext i8 %14 to i64, !dbg !3748
  br label %30, !dbg !3750

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds i8, i8* %5, i64 -5, !dbg !3751
  %18 = bitcast i8* %17 to i16*, !dbg !3752
  %19 = load i16, i16* %18, align 1, !dbg !3752, !tbaa !830
  %20 = zext i16 %19 to i64, !dbg !3751
  br label %30, !dbg !3753

; <label>:21:                                     ; preds = %2
  %22 = getelementptr inbounds i8, i8* %5, i64 -9, !dbg !3754
  %23 = bitcast i8* %22 to i32*, !dbg !3755
  %24 = load i32, i32* %23, align 1, !dbg !3755, !tbaa !835
  %25 = zext i32 %24 to i64, !dbg !3754
  br label %30, !dbg !3756

; <label>:26:                                     ; preds = %2
  %27 = getelementptr inbounds i8, i8* %5, i64 -17, !dbg !3757
  %28 = bitcast i8* %27 to i64*, !dbg !3758
  %29 = load i64, i64* %28, align 1, !dbg !3758, !tbaa !839
  br label %30, !dbg !3759

; <label>:30:                                     ; preds = %2, %9, %12, %16, %21, %26
  %31 = phi i64 [ %29, %26 ], [ %25, %21 ], [ %20, %16 ], [ %15, %12 ], [ %11, %9 ], [ 0, %2 ], !dbg !3760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3762
  %32 = trunc i64 %31 to i32, !dbg !3763
  %33 = tail call i32 @keyHashSlot(i8* %5, i32 %32) #6, !dbg !3764
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0, !dbg !3766
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %34) #7, !dbg !3766
  %35 = load i8*, i8** %4, align 8, !dbg !3769, !tbaa !215
  %36 = getelementptr inbounds i8, i8* %35, i64 -1, !dbg !3772
  %37 = load i8, i8* %36, align 1, !dbg !3772, !tbaa !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3774
  %38 = trunc i8 %37 to i3, !dbg !3774
  switch i3 %38, label %60 [
    i3 0, label %39
    i3 1, label %42
    i3 2, label %46
    i3 3, label %51
    i3 -4, label %56
  ], !dbg !3774

; <label>:39:                                     ; preds = %30
  %40 = lshr i8 %37, 3, !dbg !3775
  %41 = zext i8 %40 to i64, !dbg !3775
  br label %60, !dbg !3776

; <label>:42:                                     ; preds = %30
  %43 = getelementptr inbounds i8, i8* %35, i64 -3, !dbg !3777
  %44 = load i8, i8* %43, align 1, !dbg !3778, !tbaa !222
  %45 = zext i8 %44 to i64, !dbg !3777
  br label %60, !dbg !3779

; <label>:46:                                     ; preds = %30
  %47 = getelementptr inbounds i8, i8* %35, i64 -5, !dbg !3780
  %48 = bitcast i8* %47 to i16*, !dbg !3781
  %49 = load i16, i16* %48, align 1, !dbg !3781, !tbaa !830
  %50 = zext i16 %49 to i64, !dbg !3780
  br label %60, !dbg !3782

; <label>:51:                                     ; preds = %30
  %52 = getelementptr inbounds i8, i8* %35, i64 -9, !dbg !3783
  %53 = bitcast i8* %52 to i32*, !dbg !3784
  %54 = load i32, i32* %53, align 1, !dbg !3784, !tbaa !835
  %55 = zext i32 %54 to i64, !dbg !3783
  br label %60, !dbg !3785

; <label>:56:                                     ; preds = %30
  %57 = getelementptr inbounds i8, i8* %35, i64 -17, !dbg !3786
  %58 = bitcast i8* %57 to i64*, !dbg !3787
  %59 = load i64, i64* %58, align 1, !dbg !3787, !tbaa !839
  br label %60, !dbg !3788

; <label>:60:                                     ; preds = %30, %39, %42, %46, %51, %56
  %61 = phi i64 [ %59, %56 ], [ %55, %51 ], [ %50, %46 ], [ %45, %42 ], [ %41, %39 ], [ 0, %30 ], !dbg !3789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3790
  %62 = icmp ne i32 %1, 0, !dbg !3792
  %63 = select i1 %62, i64 1, i64 -1, !dbg !3792
  %64 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !3793, !tbaa !1059
  %65 = zext i32 %33 to i64, !dbg !3794
  %66 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %64, i64 0, i32 9, i64 %65, !dbg !3794
  %67 = load i64, i64* %66, align 8, !dbg !3795, !tbaa !839
  %68 = add i64 %67, %63, !dbg !3795
  store i64 %68, i64* %66, align 8, !dbg !3795, !tbaa !839
  %69 = add i64 %61, 2, !dbg !3796
  %70 = icmp ugt i64 %69, 64, !dbg !3798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3799
  br i1 %70, label %71, label %73, !dbg !3799

; <label>:71:                                     ; preds = %60
  %72 = tail call i8* @zmalloc(i64 %69) #6, !dbg !3800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3801
  br label %73, !dbg !3801

; <label>:73:                                     ; preds = %71, %60
  %74 = phi i8* [ %72, %71 ], [ %34, %60 ], !dbg !3761
  %75 = lshr i32 %33, 8, !dbg !3802
  %76 = trunc i32 %75 to i8, !dbg !3803
  store i8 %76, i8* %74, align 1, !dbg !3804, !tbaa !222
  %77 = trunc i32 %33 to i8, !dbg !3805
  %78 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !3806
  store i8 %77, i8* %78, align 1, !dbg !3807, !tbaa !222
  %79 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !3808
  %80 = load i8*, i8** %4, align 8, !dbg !3809, !tbaa !215
  %81 = call i8* @memcpy(i8* nonnull %79, i8* %80, i64 %61) #6, !dbg !3810
  %82 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !3811, !tbaa !1059
  %83 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %82, i64 0, i32 10, !dbg !3811
  %84 = load %struct.rax*, %struct.rax** %83, align 8, !dbg !3811, !tbaa !1061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3814
  br i1 %62, label %85, label %87, !dbg !3814

; <label>:85:                                     ; preds = %73
  %86 = call i32 @raxInsert(%struct.rax* %84, i8* %74, i64 %69, i8* null, i8** null) #6, !dbg !3815
  br label %89, !dbg !3817

; <label>:87:                                     ; preds = %73
  %88 = call i32 @raxRemove(%struct.rax* %84, i8* %74, i64 %69, i8** null) #6, !dbg !3818
  br label %89

; <label>:89:                                     ; preds = %87, %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %90 = icmp eq i8* %74, %34, !dbg !3819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3821
  br i1 %90, label %92, label %91, !dbg !3821

; <label>:91:                                     ; preds = %89
  call void @zfree(i8* %74) #6, !dbg !3822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3822
  br label %92, !dbg !3822

; <label>:92:                                     ; preds = %89, %91
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %34) #7, !dbg !3823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3823
  ret void, !dbg !3823
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
define dso_local i32 @getKeysInSlot(i32, %struct.redisObject** nocapture, i32) local_unnamed_addr #0 !dbg !3824 {
  %4 = alloca %struct.raxIterator, align 8
  %5 = alloca [2 x i8], align 1
  %6 = bitcast %struct.raxIterator* %4 to i8*, !dbg !3885
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %6) #7, !dbg !3885
  %7 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0, !dbg !3887
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %7) #7, !dbg !3887
  %8 = lshr i32 %0, 8, !dbg !3889
  %9 = trunc i32 %8 to i8, !dbg !3890
  store i8 %9, i8* %7, align 1, !dbg !3891, !tbaa !222
  %10 = trunc i32 %0 to i8, !dbg !3892
  %11 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1, !dbg !3893
  store i8 %10, i8* %11, align 1, !dbg !3894, !tbaa !222
  %12 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !3895, !tbaa !1059
  %13 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %12, i64 0, i32 10, !dbg !3896
  %14 = load %struct.rax*, %struct.rax** %13, align 8, !dbg !3896, !tbaa !1061
  call void @raxStart(%struct.raxIterator* nonnull %4, %struct.rax* %14) #6, !dbg !3898
  %15 = call i32 @raxSeek(%struct.raxIterator* nonnull %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), i8* nonnull %7, i64 2) #6, !dbg !3899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3900
  %16 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %4, i64 0, i32 2, !dbg !3901
  %17 = icmp eq i32 %2, 0, !dbg !3904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3905
  br i1 %17, label %52, label %18, !dbg !3905

; <label>:18:                                     ; preds = %3
  %19 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %4, i64 0, i32 4
  br label %20, !dbg !3905

; <label>:20:                                     ; preds = %18, %37
  %21 = phi i64 [ 0, %18 ], [ %42, %37 ]
  %22 = phi i32 [ %2, %18 ], [ %24, %37 ]
  %23 = phi i32 [ 0, %18 ], [ %43, %37 ]
  %24 = add i32 %22, -1, !dbg !3904
  %25 = call i32 @raxNext(%struct.raxIterator* nonnull %4) #6, !dbg !3906
  %26 = icmp eq i32 %25, 0, !dbg !3905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3900
  br i1 %26, label %50, label %27, !dbg !3900

; <label>:27:                                     ; preds = %20
  %28 = load i8*, i8** %16, align 8, !dbg !3901, !tbaa !3907
  %29 = load i8, i8* %28, align 1, !dbg !3910, !tbaa !222
  %30 = load i8, i8* %7, align 1, !dbg !3911, !tbaa !222
  %31 = icmp eq i8 %29, %30, !dbg !3912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3913
  br i1 %31, label %32, label %48, !dbg !3913

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !3914
  %34 = load i8, i8* %33, align 1, !dbg !3914, !tbaa !222
  %35 = load i8, i8* %11, align 1, !dbg !3915, !tbaa !222
  %36 = icmp eq i8 %34, %35, !dbg !3916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3917
  br i1 %36, label %37, label %46, !dbg !3917

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds i8, i8* %28, i64 2, !dbg !3918
  %39 = load i64, i64* %19, align 8, !dbg !3919, !tbaa !3920
  %40 = add i64 %39, -2, !dbg !3921
  %41 = call %struct.redisObject* @createStringObject(i8* nonnull %38, i64 %40) #6, !dbg !3922
  %42 = add nuw nsw i64 %21, 1, !dbg !3923
  %43 = add nuw nsw i32 %23, 1, !dbg !3923
  %44 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %21, !dbg !3924
  store %struct.redisObject* %41, %struct.redisObject** %44, align 8, !dbg !3925, !tbaa !1136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3900
  %45 = icmp eq i32 %24, 0, !dbg !3904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3905
  br i1 %45, label %52, label %20, !dbg !3905, !llvm.loop !3926

; <label>:46:                                     ; preds = %32
  %47 = trunc i64 %21 to i32, !dbg !3900
  br label %52, !dbg !3928

; <label>:48:                                     ; preds = %27
  %49 = trunc i64 %21 to i32, !dbg !3900
  br label %52, !dbg !3928

; <label>:50:                                     ; preds = %20
  %51 = trunc i64 %21 to i32, !dbg !3900
  br label %52, !dbg !3928

; <label>:52:                                     ; preds = %37, %46, %48, %50, %3
  %53 = phi i32 [ 0, %3 ], [ %47, %46 ], [ %49, %48 ], [ %51, %50 ], [ %43, %37 ], !dbg !3929
  call void @raxStop(%struct.raxIterator* nonnull %4) #6, !dbg !3928
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %7) #7, !dbg !3930
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %6) #7, !dbg !3930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3931
  ret i32 %53, !dbg !3931
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
define dso_local i32 @delKeysInSlot(i32) local_unnamed_addr #0 !dbg !3932 {
  %2 = alloca %struct.raxIterator, align 8
  %3 = alloca [2 x i8], align 1
  %4 = bitcast %struct.raxIterator* %2 to i8*, !dbg !3943
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %4) #7, !dbg !3943
  %5 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0, !dbg !3945
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %5) #7, !dbg !3945
  %6 = lshr i32 %0, 8, !dbg !3947
  %7 = trunc i32 %6 to i8, !dbg !3948
  store i8 %7, i8* %5, align 1, !dbg !3949, !tbaa !222
  %8 = trunc i32 %0 to i8, !dbg !3950
  %9 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1, !dbg !3951
  store i8 %8, i8* %9, align 1, !dbg !3952, !tbaa !222
  %10 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !3953, !tbaa !1059
  %11 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %10, i64 0, i32 10, !dbg !3954
  %12 = load %struct.rax*, %struct.rax** %11, align 8, !dbg !3954, !tbaa !1061
  call void @raxStart(%struct.raxIterator* nonnull %2, %struct.rax* %12) #6, !dbg !3956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3957
  %13 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !3958, !tbaa !1059
  %14 = zext i32 %0 to i64, !dbg !3959
  %15 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %13, i64 0, i32 9, i64 %14, !dbg !3959
  %16 = load i64, i64* %15, align 8, !dbg !3959, !tbaa !839
  %17 = icmp eq i64 %16, 0, !dbg !3957
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3957
  br i1 %17, label %37, label %18, !dbg !3957

; <label>:18:                                     ; preds = %1
  %19 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %2, i64 0, i32 2
  %20 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %2, i64 0, i32 4
  br label %21, !dbg !3957

; <label>:21:                                     ; preds = %18, %21
  %22 = phi i32 [ 0, %18 ], [ %32, %21 ]
  %23 = call i32 @raxSeek(%struct.raxIterator* nonnull %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), i8* nonnull %5, i64 2) #6, !dbg !3960
  %24 = call i32 @raxNext(%struct.raxIterator* nonnull %2) #6, !dbg !3961
  %25 = load i8*, i8** %19, align 8, !dbg !3962, !tbaa !3907
  %26 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !3963
  %27 = load i64, i64* %20, align 8, !dbg !3964, !tbaa !3920
  %28 = add i64 %27, -2, !dbg !3965
  %29 = call %struct.redisObject* @createStringObject(i8* nonnull %26, i64 %28) #6, !dbg !3966
  %30 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !3968, !tbaa !1030
  %31 = call i32 @dbDelete(%struct.redisDb* %30, %struct.redisObject* %29) #8, !dbg !3969
  call void @decrRefCount(%struct.redisObject* %29) #6, !dbg !3970
  %32 = add nuw nsw i32 %22, 1, !dbg !3971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3957
  %33 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !3958, !tbaa !1059
  %34 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %33, i64 0, i32 9, i64 %14, !dbg !3959
  %35 = load i64, i64* %34, align 8, !dbg !3959, !tbaa !839
  %36 = icmp eq i64 %35, 0, !dbg !3957
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3957
  br i1 %36, label %37, label %21, !dbg !3957, !llvm.loop !3972

; <label>:37:                                     ; preds = %21, %1
  %38 = phi i32 [ 0, %1 ], [ %32, %21 ], !dbg !3974
  call void @raxStop(%struct.raxIterator* nonnull %2) #6, !dbg !3975
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %5) #7, !dbg !3976
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %4) #7, !dbg !3976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3977
  ret i32 %38, !dbg !3977
}

; Function Attrs: noredzone nounwind
define dso_local i32 @countKeysInSlot(i32) local_unnamed_addr #0 !dbg !3978 {
  %2 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !3982, !tbaa !1059
  %3 = zext i32 %0 to i64, !dbg !3983
  %4 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %2, i64 0, i32 9, i64 %3, !dbg !3983
  %5 = load i64, i64* %4, align 8, !dbg !3983, !tbaa !839
  %6 = trunc i64 %5 to i32, !dbg !3983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3984
  ret i32 %6, !dbg !3984
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
!236 = !DILocation(line: 63, column: 13, scope: !201)
!237 = !DILocation(line: 67, column: 24, scope: !238)
!238 = distinct !DILexicalBlock(scope: !239, file: !1, line: 67, column: 17)
!239 = distinct !DILexicalBlock(scope: !225, file: !1, line: 66, column: 9)
!240 = !{!227, !212, i64 2712}
!241 = !DILocation(line: 67, column: 41, scope: !238)
!242 = !DILocation(line: 67, column: 17, scope: !239)
!243 = !DILocation(line: 46, column: 22, scope: !62, inlinedAt: !244)
!244 = distinct !DILocation(line: 68, column: 17, scope: !245)
!245 = distinct !DILexicalBlock(scope: !238, file: !1, line: 67, column: 63)
!246 = !DILocation(line: 47, column: 29, scope: !62, inlinedAt: !244)
!247 = !DILocation(line: 47, column: 19, scope: !62, inlinedAt: !244)
!248 = !DILocation(line: 48, column: 26, scope: !62, inlinedAt: !244)
!249 = !DILocation(line: 48, column: 15, scope: !62, inlinedAt: !244)
!250 = !DILocation(line: 49, column: 17, scope: !62, inlinedAt: !244)
!251 = !DILocation(line: 49, column: 38, scope: !62, inlinedAt: !244)
!252 = !DILocation(line: 49, column: 43, scope: !62, inlinedAt: !244)
!253 = !DILocation(line: 49, column: 16, scope: !62, inlinedAt: !244)
!254 = !DILocation(line: 49, column: 10, scope: !62, inlinedAt: !244)
!255 = !DILocation(line: 49, column: 14, scope: !62, inlinedAt: !244)
!256 = !DILocation(line: 50, column: 1, scope: !62, inlinedAt: !244)
!257 = !DILocation(line: 69, column: 13, scope: !245)
!258 = !DILocation(line: 70, column: 28, scope: !259)
!259 = distinct !DILexicalBlock(scope: !238, file: !1, line: 69, column: 20)
!260 = !DILocation(line: 70, column: 22, scope: !259)
!261 = !DILocation(line: 70, column: 26, scope: !259)
!262 = !DILocation(line: 0, scope: !263)
!263 = distinct !DILexicalBlock(scope: !202, file: !1, line: 74, column: 12)
!264 = !DILocation(line: 77, column: 1, scope: !90)
!265 = distinct !DISubprogram(name: "lookupKeyReadWithFlags", scope: !1, file: !1, line: 100, type: !91, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !266)
!266 = !{!267, !268, !269, !270}
!267 = !DILocalVariable(name: "db", arg: 1, scope: !265, file: !1, line: 100, type: !93)
!268 = !DILocalVariable(name: "key", arg: 2, scope: !265, file: !1, line: 100, type: !65)
!269 = !DILocalVariable(name: "flags", arg: 3, scope: !265, file: !1, line: 100, type: !8)
!270 = !DILocalVariable(name: "val", scope: !265, file: !1, line: 101, type: !65)
!271 = !DILocation(line: 100, column: 39, scope: !265)
!272 = !DILocation(line: 100, column: 49, scope: !265)
!273 = !DILocation(line: 100, column: 58, scope: !265)
!274 = !DILocation(line: 103, column: 9, scope: !275)
!275 = distinct !DILexicalBlock(scope: !265, file: !1, line: 103, column: 9)
!276 = !DILocation(line: 103, column: 32, scope: !275)
!277 = !DILocation(line: 103, column: 9, scope: !265)
!278 = !DILocation(line: 107, column: 20, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !1, line: 107, column: 13)
!280 = distinct !DILexicalBlock(scope: !275, file: !1, line: 103, column: 38)
!281 = !{!227, !209, i64 2464}
!282 = !DILocation(line: 107, column: 31, scope: !279)
!283 = !DILocation(line: 107, column: 13, scope: !280)
!284 = !DILocation(line: 108, column: 40, scope: !285)
!285 = distinct !DILexicalBlock(scope: !279, file: !1, line: 107, column: 40)
!286 = !{!227, !213, i64 1064}
!287 = !DILocation(line: 109, column: 13, scope: !285)
!288 = !DILocation(line: 124, column: 20, scope: !289)
!289 = distinct !DILexicalBlock(scope: !280, file: !1, line: 124, column: 13)
!290 = !{!227, !209, i64 552}
!291 = !DILocation(line: 124, column: 13, scope: !289)
!292 = !DILocation(line: 124, column: 35, scope: !289)
!293 = !DILocation(line: 125, column: 45, scope: !289)
!294 = !{!227, !209, i64 2480}
!295 = !DILocation(line: 125, column: 35, scope: !289)
!296 = !DILocation(line: 125, column: 52, scope: !289)
!297 = !DILocation(line: 126, column: 36, scope: !289)
!298 = !{!299, !209, i64 80}
!299 = !{!"client", !228, i64 0, !212, i64 8, !209, i64 16, !209, i64 24, !209, i64 32, !228, i64 40, !209, i64 48, !228, i64 56, !212, i64 64, !209, i64 72, !209, i64 80, !209, i64 88, !212, i64 96, !212, i64 100, !228, i64 104, !209, i64 112, !213, i64 120, !228, i64 128, !228, i64 136, !228, i64 144, !228, i64 152, !212, i64 160, !212, i64 164, !212, i64 168, !212, i64 172, !212, i64 176, !228, i64 184, !228, i64 192, !209, i64 200, !213, i64 208, !213, i64 216, !213, i64 224, !213, i64 232, !213, i64 240, !210, i64 248, !212, i64 292, !210, i64 296, !212, i64 344, !300, i64 352, !212, i64 384, !301, i64 392, !213, i64 480, !209, i64 488, !209, i64 496, !209, i64 504, !209, i64 512, !209, i64 520, !212, i64 528, !210, i64 532}
!300 = !{!"multiState", !209, i64 0, !212, i64 8, !212, i64 12, !212, i64 16, !228, i64 24}
!301 = !{!"blockingState", !213, i64 0, !209, i64 8, !209, i64 16, !228, i64 24, !209, i64 32, !209, i64 40, !213, i64 48, !213, i64 56, !212, i64 64, !212, i64 68, !213, i64 72, !209, i64 80}
!302 = !DILocation(line: 126, column: 13, scope: !289)
!303 = !DILocation(line: 126, column: 40, scope: !289)
!304 = !DILocation(line: 127, column: 41, scope: !289)
!305 = !{!306, !212, i64 32}
!306 = !{!"redisCommand", !209, i64 0, !209, i64 8, !212, i64 16, !209, i64 24, !212, i64 32, !209, i64 40, !212, i64 48, !212, i64 52, !212, i64 56, !213, i64 64, !213, i64 72}
!307 = !DILocation(line: 127, column: 47, scope: !289)
!308 = !DILocation(line: 124, column: 13, scope: !280)
!309 = !DILocation(line: 129, column: 40, scope: !310)
!310 = distinct !DILexicalBlock(scope: !289, file: !1, line: 128, column: 9)
!311 = !DILocation(line: 130, column: 13, scope: !310)
!312 = !DILocation(line: 133, column: 11, scope: !265)
!313 = !DILocation(line: 101, column: 11, scope: !265)
!314 = !DILocation(line: 134, column: 13, scope: !315)
!315 = distinct !DILexicalBlock(scope: !265, file: !1, line: 134, column: 9)
!316 = !DILocation(line: 134, column: 9, scope: !265)
!317 = !DILocation(line: 0, scope: !315)
!318 = !{!213, !213, i64 0}
!319 = !DILocation(line: 138, column: 5, scope: !265)
!320 = !DILocation(line: 0, scope: !265)
!321 = !DILocation(line: 0, scope: !285)
!322 = !DILocation(line: 139, column: 1, scope: !265)
!323 = distinct !DISubprogram(name: "expireIfNeeded", scope: !1, file: !1, line: 1167, type: !324, isLocal: false, isDefinition: true, scopeLine: 1167, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !326)
!324 = !DISubroutineType(types: !325)
!325 = !{!8, !93, !65}
!326 = !{!327, !328}
!327 = !DILocalVariable(name: "db", arg: 1, scope: !323, file: !1, line: 1167, type: !93)
!328 = !DILocalVariable(name: "key", arg: 2, scope: !323, file: !1, line: 1167, type: !65)
!329 = !DILocation(line: 1167, column: 29, scope: !323)
!330 = !DILocation(line: 1167, column: 39, scope: !323)
!331 = !DILocalVariable(name: "db", arg: 1, scope: !332, file: !1, line: 1130, type: !93)
!332 = distinct !DISubprogram(name: "keyIsExpired", scope: !1, file: !1, line: 1130, type: !324, isLocal: false, isDefinition: true, scopeLine: 1130, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !333)
!333 = !{!331, !334, !335, !337}
!334 = !DILocalVariable(name: "key", arg: 2, scope: !332, file: !1, line: 1130, type: !65)
!335 = !DILocalVariable(name: "when", scope: !332, file: !1, line: 1131, type: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !67, line: 52, baseType: !165)
!337 = !DILocalVariable(name: "now", scope: !332, file: !1, line: 1143, type: !336)
!338 = !DILocation(line: 1130, column: 27, scope: !332, inlinedAt: !339)
!339 = distinct !DILocation(line: 1168, column: 10, scope: !340)
!340 = distinct !DILexicalBlock(scope: !323, file: !1, line: 1168, column: 9)
!341 = !DILocation(line: 1130, column: 37, scope: !332, inlinedAt: !339)
!342 = !DILocation(line: 1131, column: 21, scope: !332, inlinedAt: !339)
!343 = !DILocation(line: 1131, column: 14, scope: !332, inlinedAt: !339)
!344 = !DILocation(line: 1133, column: 14, scope: !345, inlinedAt: !339)
!345 = distinct !DILexicalBlock(scope: !332, file: !1, line: 1133, column: 9)
!346 = !DILocation(line: 1133, column: 9, scope: !332, inlinedAt: !339)
!347 = !DILocation(line: 1136, column: 16, scope: !348, inlinedAt: !339)
!348 = distinct !DILexicalBlock(scope: !332, file: !1, line: 1136, column: 9)
!349 = !{!227, !212, i64 860}
!350 = !DILocation(line: 1136, column: 9, scope: !348, inlinedAt: !339)
!351 = !DILocation(line: 1136, column: 9, scope: !332, inlinedAt: !339)
!352 = !DILocation(line: 1143, column: 27, scope: !332, inlinedAt: !339)
!353 = !{!227, !209, i64 3008}
!354 = !DILocation(line: 1143, column: 20, scope: !332, inlinedAt: !339)
!355 = !DILocation(line: 1143, column: 47, scope: !332, inlinedAt: !339)
!356 = !{!227, !213, i64 3040}
!357 = !DILocation(line: 1143, column: 64, scope: !332, inlinedAt: !339)
!358 = !DILocation(line: 0, scope: !340)
!359 = !DILocation(line: 1146, column: 1, scope: !332, inlinedAt: !339)
!360 = !DILocation(line: 1168, column: 9, scope: !323)
!361 = !DILocation(line: 1143, column: 14, scope: !332, inlinedAt: !339)
!362 = !DILocation(line: 1145, column: 16, scope: !332, inlinedAt: !339)
!363 = !DILocation(line: 1178, column: 16, scope: !364)
!364 = distinct !DILexicalBlock(scope: !323, file: !1, line: 1178, column: 9)
!365 = !DILocation(line: 1178, column: 27, scope: !364)
!366 = !DILocation(line: 1178, column: 9, scope: !323)
!367 = !DILocation(line: 1181, column: 28, scope: !323)
!368 = !{!227, !213, i64 1024}
!369 = !DILocation(line: 1182, column: 35, scope: !323)
!370 = !{!227, !212, i64 3084}
!371 = !DILocation(line: 1182, column: 5, scope: !323)
!372 = !DILocation(line: 1184, column: 27, scope: !323)
!373 = !{!208, !212, i64 40}
!374 = !DILocation(line: 1183, column: 5, scope: !323)
!375 = !DILocation(line: 1185, column: 19, scope: !323)
!376 = !DILocation(line: 1185, column: 12, scope: !323)
!377 = !DILocation(line: 1185, column: 42, scope: !323)
!378 = !DILocalVariable(name: "db", arg: 1, scope: !379, file: !1, line: 271, type: !93)
!379 = distinct !DISubprogram(name: "dbSyncDelete", scope: !1, file: !1, line: 271, type: !324, isLocal: false, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !380)
!380 = !{!378, !381}
!381 = !DILocalVariable(name: "key", arg: 2, scope: !379, file: !1, line: 271, type: !65)
!382 = !DILocation(line: 271, column: 27, scope: !379, inlinedAt: !383)
!383 = distinct !DILocation(line: 1186, column: 42, scope: !323)
!384 = !DILocation(line: 271, column: 37, scope: !379, inlinedAt: !383)
!385 = !DILocation(line: 274, column: 9, scope: !386, inlinedAt: !383)
!386 = distinct !DILexicalBlock(scope: !379, file: !1, line: 274, column: 9)
!387 = !{!208, !209, i64 8}
!388 = !{!389, !228, i64 24}
!389 = !{!"dictht", !209, i64 0, !228, i64 8, !228, i64 16, !228, i64 24}
!390 = !DILocation(line: 274, column: 31, scope: !386, inlinedAt: !383)
!391 = !DILocation(line: 274, column: 9, scope: !379, inlinedAt: !383)
!392 = !DILocation(line: 0, scope: !386, inlinedAt: !383)
!393 = !DILocation(line: 274, column: 64, scope: !386, inlinedAt: !383)
!394 = !DILocation(line: 274, column: 36, scope: !386, inlinedAt: !383)
!395 = !DILocation(line: 275, column: 24, scope: !396, inlinedAt: !383)
!396 = distinct !DILexicalBlock(scope: !379, file: !1, line: 275, column: 9)
!397 = !DILocation(line: 275, column: 34, scope: !396, inlinedAt: !383)
!398 = !DILocation(line: 275, column: 9, scope: !396, inlinedAt: !383)
!399 = !DILocation(line: 275, column: 39, scope: !396, inlinedAt: !383)
!400 = !DILocation(line: 275, column: 9, scope: !379, inlinedAt: !383)
!401 = !DILocation(line: 276, column: 20, scope: !402, inlinedAt: !383)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 276, column: 13)
!403 = distinct !DILexicalBlock(scope: !396, file: !1, line: 275, column: 51)
!404 = !{!227, !212, i64 2924}
!405 = !DILocation(line: 276, column: 13, scope: !402, inlinedAt: !383)
!406 = !DILocation(line: 276, column: 13, scope: !403, inlinedAt: !383)
!407 = !DILocalVariable(name: "key", arg: 1, scope: !408, file: !1, line: 1493, type: !65)
!408 = distinct !DISubprogram(name: "slotToKeyDel", scope: !1, file: !1, line: 1493, type: !63, isLocal: false, isDefinition: true, scopeLine: 1493, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !409)
!409 = !{!407}
!410 = !DILocation(line: 1493, column: 25, scope: !408, inlinedAt: !411)
!411 = distinct !DILocation(line: 276, column: 37, scope: !402, inlinedAt: !383)
!412 = !DILocation(line: 1494, column: 5, scope: !408, inlinedAt: !411)
!413 = !DILocation(line: 1495, column: 1, scope: !408, inlinedAt: !411)
!414 = !DILocation(line: 276, column: 37, scope: !402, inlinedAt: !383)
!415 = !DILocation(line: 0, scope: !416, inlinedAt: !383)
!416 = distinct !DILexicalBlock(scope: !396, file: !1, line: 278, column: 12)
!417 = !DILocation(line: 0, scope: !323)
!418 = !DILocation(line: 281, column: 1, scope: !379, inlinedAt: !383)
!419 = !DILocation(line: 1185, column: 5, scope: !323)
!420 = !DILocation(line: 1187, column: 1, scope: !323)
!421 = distinct !DISubprogram(name: "lookupKeyRead", scope: !1, file: !1, line: 143, type: !422, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !424)
!422 = !DISubroutineType(types: !423)
!423 = !{!65, !93, !65}
!424 = !{!425, !426}
!425 = !DILocalVariable(name: "db", arg: 1, scope: !421, file: !1, line: 143, type: !93)
!426 = !DILocalVariable(name: "key", arg: 2, scope: !421, file: !1, line: 143, type: !65)
!427 = !DILocation(line: 143, column: 30, scope: !421)
!428 = !DILocation(line: 143, column: 40, scope: !421)
!429 = !DILocation(line: 144, column: 12, scope: !421)
!430 = !DILocation(line: 144, column: 5, scope: !421)
!431 = distinct !DISubprogram(name: "lookupKeyWrite", scope: !1, file: !1, line: 152, type: !422, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !432)
!432 = !{!433, !434}
!433 = !DILocalVariable(name: "db", arg: 1, scope: !431, file: !1, line: 152, type: !93)
!434 = !DILocalVariable(name: "key", arg: 2, scope: !431, file: !1, line: 152, type: !65)
!435 = !DILocation(line: 152, column: 31, scope: !431)
!436 = !DILocation(line: 152, column: 41, scope: !431)
!437 = !DILocation(line: 153, column: 5, scope: !431)
!438 = !DILocation(line: 154, column: 12, scope: !431)
!439 = !DILocation(line: 154, column: 5, scope: !431)
!440 = distinct !DISubprogram(name: "lookupKeyReadOrReply", scope: !1, file: !1, line: 157, type: !441, isLocal: false, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !571)
!441 = !DISubroutineType(types: !442)
!442 = !{!65, !443, !65, !65}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !67, line: 780, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !67, line: 723, size: 135360, elements: !446)
!446 = !{!447, !448, !449, !450, !451, !453, !458, !459, !460, !461, !463, !487, !488, !489, !490, !491, !492, !494, !495, !498, !499, !500, !501, !502, !503, !504, !505, !510, !511, !512, !513, !514, !515, !516, !517, !521, !522, !526, !527, !543, !544, !560, !561, !562, !563, !564, !565, !566, !567}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !445, file: !67, line: 724, baseType: !53, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !445, file: !67, line: 725, baseType: !8, size: 32, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !445, file: !67, line: 726, baseType: !93, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !445, file: !67, line: 727, baseType: !65, size: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !445, file: !67, line: 728, baseType: !452, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !15, line: 43, baseType: !9)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !445, file: !67, line: 729, baseType: !454, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !455, line: 40, baseType: !456)
!455 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !457, line: 129, baseType: !11)
!457 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!458 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !445, file: !67, line: 730, baseType: !452, size: 64, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !445, file: !67, line: 734, baseType: !454, size: 64, offset: 448)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !445, file: !67, line: 735, baseType: !8, size: 32, offset: 512)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !445, file: !67, line: 736, baseType: !462, size: 64, offset: 576)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !445, file: !67, line: 737, baseType: !464, size: 64, offset: 640)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !67, line: 1307, size: 640, elements: !466)
!466 = !{!467, !468, !473, !474, !475, !476, !482, !483, !484, !485, !486}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !465, file: !67, line: 1308, baseType: !9, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !465, file: !67, line: 1309, baseType: !469, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !67, line: 1305, baseType: !471)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !443}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !465, file: !67, line: 1310, baseType: !8, size: 32, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !465, file: !67, line: 1311, baseType: !9, size: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !465, file: !67, line: 1312, baseType: !8, size: 32, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !465, file: !67, line: 1315, baseType: !477, size: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !67, line: 1306, baseType: !479)
!479 = !DISubroutineType(types: !480)
!480 = !{!481, !464, !462, !8, !481}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !465, file: !67, line: 1317, baseType: !8, size: 32, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !465, file: !67, line: 1318, baseType: !8, size: 32, offset: 416)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !465, file: !67, line: 1319, baseType: !8, size: 32, offset: 448)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !465, file: !67, line: 1320, baseType: !165, size: 64, offset: 512)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !465, file: !67, line: 1320, baseType: !165, size: 64, offset: 576)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !445, file: !67, line: 737, baseType: !464, size: 64, offset: 704)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !445, file: !67, line: 738, baseType: !8, size: 32, offset: 768)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !445, file: !67, line: 739, baseType: !8, size: 32, offset: 800)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !445, file: !67, line: 740, baseType: !12, size: 64, offset: 832)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !445, file: !67, line: 741, baseType: !167, size: 64, offset: 896)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !445, file: !67, line: 742, baseType: !493, size: 64, offset: 960)
!493 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !445, file: !67, line: 743, baseType: !454, size: 64, offset: 1024)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !445, file: !67, line: 745, baseType: !496, size: 64, offset: 1088)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !497, line: 34, baseType: !12)
!497 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!498 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !445, file: !67, line: 746, baseType: !496, size: 64, offset: 1152)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !445, file: !67, line: 747, baseType: !496, size: 64, offset: 1216)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !445, file: !67, line: 748, baseType: !8, size: 32, offset: 1280)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !445, file: !67, line: 749, baseType: !8, size: 32, offset: 1312)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !445, file: !67, line: 750, baseType: !8, size: 32, offset: 1344)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !445, file: !67, line: 751, baseType: !8, size: 32, offset: 1376)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !445, file: !67, line: 752, baseType: !8, size: 32, offset: 1408)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !445, file: !67, line: 753, baseType: !506, size: 64, offset: 1472)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !507, line: 173, baseType: !508)
!507 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !457, line: 100, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !457, line: 44, baseType: !12)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !445, file: !67, line: 754, baseType: !506, size: 64, offset: 1536)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !445, file: !67, line: 755, baseType: !452, size: 64, offset: 1600)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !445, file: !67, line: 756, baseType: !165, size: 64, offset: 1664)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !445, file: !67, line: 757, baseType: !165, size: 64, offset: 1728)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !445, file: !67, line: 758, baseType: !165, size: 64, offset: 1792)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !445, file: !67, line: 759, baseType: !165, size: 64, offset: 1856)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !445, file: !67, line: 760, baseType: !165, size: 64, offset: 1920)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !445, file: !67, line: 763, baseType: !518, size: 328, offset: 1984)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 328, elements: !519)
!519 = !{!520}
!520 = !DISubrange(count: 41)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !445, file: !67, line: 764, baseType: !8, size: 32, offset: 2336)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !445, file: !67, line: 765, baseType: !523, size: 368, offset: 2368)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 368, elements: !524)
!524 = !{!525}
!525 = !DISubrange(count: 46)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !445, file: !67, line: 766, baseType: !8, size: 32, offset: 2752)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !445, file: !67, line: 767, baseType: !528, size: 256, offset: 2816)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !67, line: 673, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !67, line: 665, size: 256, elements: !530)
!530 = !{!531, !539, !540, !541, !542}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !529, file: !67, line: 666, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !67, line: 663, baseType: !534)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !67, line: 659, size: 192, elements: !535)
!535 = !{!536, !537, !538}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !534, file: !67, line: 660, baseType: !462, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !534, file: !67, line: 661, baseType: !8, size: 32, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !534, file: !67, line: 662, baseType: !464, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !529, file: !67, line: 667, baseType: !8, size: 32, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !529, file: !67, line: 668, baseType: !8, size: 32, offset: 96)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !529, file: !67, line: 671, baseType: !8, size: 32, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !529, file: !67, line: 672, baseType: !496, size: 64, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !445, file: !67, line: 768, baseType: !8, size: 32, offset: 3072)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !445, file: !67, line: 769, baseType: !545, size: 704, offset: 3136)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !67, line: 703, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !67, line: 677, size: 704, elements: !547)
!547 = !{!548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !546, file: !67, line: 679, baseType: !336, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !546, file: !67, line: 683, baseType: !98, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !546, file: !67, line: 685, baseType: !65, size: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !546, file: !67, line: 689, baseType: !454, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !546, file: !67, line: 690, baseType: !65, size: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !546, file: !67, line: 691, baseType: !65, size: 64, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !546, file: !67, line: 692, baseType: !336, size: 64, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !546, file: !67, line: 692, baseType: !336, size: 64, offset: 448)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !546, file: !67, line: 693, baseType: !8, size: 32, offset: 512)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !546, file: !67, line: 696, baseType: !8, size: 32, offset: 544)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !546, file: !67, line: 697, baseType: !165, size: 64, offset: 576)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !546, file: !67, line: 700, baseType: !4, size: 64, offset: 640)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !445, file: !67, line: 770, baseType: !165, size: 64, offset: 3840)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !445, file: !67, line: 771, baseType: !167, size: 64, offset: 3904)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !445, file: !67, line: 772, baseType: !98, size: 64, offset: 3968)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !445, file: !67, line: 773, baseType: !167, size: 64, offset: 4032)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !445, file: !67, line: 774, baseType: !452, size: 64, offset: 4096)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !445, file: !67, line: 775, baseType: !173, size: 64, offset: 4160)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !445, file: !67, line: 778, baseType: !8, size: 32, offset: 4224)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !445, file: !67, line: 779, baseType: !568, size: 131072, offset: 4256)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 131072, elements: !569)
!569 = !{!570}
!570 = !DISubrange(count: 16384)
!571 = !{!572, !573, !574, !575}
!572 = !DILocalVariable(name: "c", arg: 1, scope: !440, file: !1, line: 157, type: !443)
!573 = !DILocalVariable(name: "key", arg: 2, scope: !440, file: !1, line: 157, type: !65)
!574 = !DILocalVariable(name: "reply", arg: 3, scope: !440, file: !1, line: 157, type: !65)
!575 = !DILocalVariable(name: "o", scope: !440, file: !1, line: 158, type: !65)
!576 = !DILocation(line: 157, column: 36, scope: !440)
!577 = !DILocation(line: 157, column: 45, scope: !440)
!578 = !DILocation(line: 157, column: 56, scope: !440)
!579 = !DILocation(line: 158, column: 32, scope: !440)
!580 = !{!299, !209, i64 16}
!581 = !DILocation(line: 143, column: 30, scope: !421, inlinedAt: !582)
!582 = distinct !DILocation(line: 158, column: 15, scope: !440)
!583 = !DILocation(line: 143, column: 40, scope: !421, inlinedAt: !582)
!584 = !DILocation(line: 144, column: 12, scope: !421, inlinedAt: !582)
!585 = !DILocation(line: 144, column: 5, scope: !421, inlinedAt: !582)
!586 = !DILocation(line: 158, column: 11, scope: !440)
!587 = !DILocation(line: 159, column: 10, scope: !588)
!588 = distinct !DILexicalBlock(scope: !440, file: !1, line: 159, column: 9)
!589 = !DILocation(line: 159, column: 9, scope: !440)
!590 = !DILocation(line: 159, column: 13, scope: !588)
!591 = !DILocation(line: 160, column: 5, scope: !440)
!592 = distinct !DISubprogram(name: "lookupKeyWriteOrReply", scope: !1, file: !1, line: 163, type: !441, isLocal: false, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !593)
!593 = !{!594, !595, !596, !597}
!594 = !DILocalVariable(name: "c", arg: 1, scope: !592, file: !1, line: 163, type: !443)
!595 = !DILocalVariable(name: "key", arg: 2, scope: !592, file: !1, line: 163, type: !65)
!596 = !DILocalVariable(name: "reply", arg: 3, scope: !592, file: !1, line: 163, type: !65)
!597 = !DILocalVariable(name: "o", scope: !592, file: !1, line: 164, type: !65)
!598 = !DILocation(line: 163, column: 37, scope: !592)
!599 = !DILocation(line: 163, column: 46, scope: !592)
!600 = !DILocation(line: 163, column: 57, scope: !592)
!601 = !DILocation(line: 164, column: 33, scope: !592)
!602 = !DILocation(line: 152, column: 31, scope: !431, inlinedAt: !603)
!603 = distinct !DILocation(line: 164, column: 15, scope: !592)
!604 = !DILocation(line: 152, column: 41, scope: !431, inlinedAt: !603)
!605 = !DILocation(line: 153, column: 5, scope: !431, inlinedAt: !603)
!606 = !DILocation(line: 154, column: 12, scope: !431, inlinedAt: !603)
!607 = !DILocation(line: 154, column: 5, scope: !431, inlinedAt: !603)
!608 = !DILocation(line: 164, column: 11, scope: !592)
!609 = !DILocation(line: 165, column: 10, scope: !610)
!610 = distinct !DILexicalBlock(scope: !592, file: !1, line: 165, column: 9)
!611 = !DILocation(line: 165, column: 9, scope: !592)
!612 = !DILocation(line: 165, column: 13, scope: !610)
!613 = !DILocation(line: 166, column: 5, scope: !592)
!614 = distinct !DISubprogram(name: "dbAdd", scope: !1, file: !1, line: 173, type: !615, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !617)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !93, !65, !65}
!617 = !{!618, !619, !620, !621, !622}
!618 = !DILocalVariable(name: "db", arg: 1, scope: !614, file: !1, line: 173, type: !93)
!619 = !DILocalVariable(name: "key", arg: 2, scope: !614, file: !1, line: 173, type: !65)
!620 = !DILocalVariable(name: "val", arg: 3, scope: !614, file: !1, line: 173, type: !65)
!621 = !DILocalVariable(name: "copy", scope: !614, file: !1, line: 174, type: !452)
!622 = !DILocalVariable(name: "retval", scope: !614, file: !1, line: 175, type: !8)
!623 = !DILocation(line: 173, column: 21, scope: !614)
!624 = !DILocation(line: 173, column: 31, scope: !614)
!625 = !DILocation(line: 173, column: 42, scope: !614)
!626 = !DILocation(line: 174, column: 28, scope: !614)
!627 = !DILocation(line: 174, column: 16, scope: !614)
!628 = !DILocation(line: 174, column: 9, scope: !614)
!629 = !DILocation(line: 175, column: 30, scope: !614)
!630 = !DILocation(line: 175, column: 42, scope: !614)
!631 = !DILocation(line: 175, column: 18, scope: !614)
!632 = !DILocation(line: 175, column: 9, scope: !614)
!633 = !DILocation(line: 177, column: 5, scope: !614)
!634 = !DILocation(line: 178, column: 14, scope: !635)
!635 = distinct !DILexicalBlock(scope: !614, file: !1, line: 178, column: 9)
!636 = !DILocation(line: 178, column: 19, scope: !635)
!637 = !DILocation(line: 178, column: 31, scope: !635)
!638 = !DILocation(line: 179, column: 19, scope: !635)
!639 = !DILocation(line: 178, column: 9, scope: !614)
!640 = !DILocation(line: 180, column: 9, scope: !635)
!641 = !DILocation(line: 181, column: 16, scope: !642)
!642 = distinct !DILexicalBlock(scope: !614, file: !1, line: 181, column: 9)
!643 = !DILocation(line: 181, column: 9, scope: !642)
!644 = !DILocation(line: 181, column: 9, scope: !614)
!645 = !DILocalVariable(name: "key", arg: 1, scope: !646, file: !1, line: 1489, type: !65)
!646 = distinct !DISubprogram(name: "slotToKeyAdd", scope: !1, file: !1, line: 1489, type: !63, isLocal: false, isDefinition: true, scopeLine: 1489, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !647)
!647 = !{!645}
!648 = !DILocation(line: 1489, column: 25, scope: !646, inlinedAt: !649)
!649 = distinct !DILocation(line: 181, column: 33, scope: !642)
!650 = !DILocation(line: 1490, column: 5, scope: !646, inlinedAt: !649)
!651 = !DILocation(line: 1491, column: 1, scope: !646, inlinedAt: !649)
!652 = !DILocation(line: 181, column: 33, scope: !642)
!653 = !DILocation(line: 182, column: 1, scope: !614)
!654 = !DILocation(line: 1489, column: 25, scope: !646)
!655 = !DILocation(line: 1490, column: 5, scope: !646)
!656 = !DILocation(line: 1491, column: 1, scope: !646)
!657 = distinct !DISubprogram(name: "dbOverwrite", scope: !1, file: !1, line: 189, type: !615, isLocal: false, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !658)
!658 = !{!659, !660, !661, !662, !663, !664}
!659 = !DILocalVariable(name: "db", arg: 1, scope: !657, file: !1, line: 189, type: !93)
!660 = !DILocalVariable(name: "key", arg: 2, scope: !657, file: !1, line: 189, type: !65)
!661 = !DILocalVariable(name: "val", arg: 3, scope: !657, file: !1, line: 189, type: !65)
!662 = !DILocalVariable(name: "de", scope: !657, file: !1, line: 190, type: !136)
!663 = !DILocalVariable(name: "auxentry", scope: !657, file: !1, line: 193, type: !137)
!664 = !DILocalVariable(name: "old", scope: !657, file: !1, line: 194, type: !65)
!665 = !DILocation(line: 189, column: 27, scope: !657)
!666 = !DILocation(line: 189, column: 37, scope: !657)
!667 = !DILocation(line: 189, column: 48, scope: !657)
!668 = !DILocation(line: 190, column: 34, scope: !657)
!669 = !DILocation(line: 190, column: 44, scope: !657)
!670 = !DILocation(line: 190, column: 21, scope: !657)
!671 = !DILocation(line: 190, column: 16, scope: !657)
!672 = !DILocation(line: 192, column: 5, scope: !657)
!673 = !DILocation(line: 193, column: 15, scope: !657)
!674 = !DILocation(line: 193, column: 26, scope: !657)
!675 = !DILocation(line: 194, column: 17, scope: !657)
!676 = !DILocation(line: 194, column: 11, scope: !657)
!677 = !DILocation(line: 195, column: 16, scope: !678)
!678 = distinct !DILexicalBlock(scope: !657, file: !1, line: 195, column: 9)
!679 = !DILocation(line: 195, column: 33, scope: !678)
!680 = !DILocation(line: 195, column: 9, scope: !657)
!681 = !DILocation(line: 196, column: 25, scope: !682)
!682 = distinct !DILexicalBlock(scope: !678, file: !1, line: 195, column: 55)
!683 = !DILocation(line: 196, column: 18, scope: !682)
!684 = !DILocation(line: 196, column: 14, scope: !682)
!685 = !DILocation(line: 197, column: 5, scope: !682)
!686 = !DILocation(line: 198, column: 5, scope: !687)
!687 = distinct !DILexicalBlock(scope: !688, file: !1, line: 198, column: 5)
!688 = distinct !DILexicalBlock(scope: !657, file: !1, line: 198, column: 5)
!689 = !{!690, !209, i64 0}
!690 = !{!"dict", !209, i64 0, !209, i64 8, !210, i64 16, !228, i64 80, !228, i64 88}
!691 = !{!692, !209, i64 16}
!692 = !{!"dictType", !209, i64 0, !209, i64 8, !209, i64 16, !209, i64 24, !209, i64 32, !209, i64 40}
!693 = !DILocation(line: 198, column: 5, scope: !688)
!694 = !{!690, !209, i64 8}
!695 = !DILocation(line: 200, column: 16, scope: !696)
!696 = distinct !DILexicalBlock(scope: !657, file: !1, line: 200, column: 9)
!697 = !{!227, !212, i64 3088}
!698 = !DILocation(line: 200, column: 9, scope: !696)
!699 = !DILocation(line: 200, column: 9, scope: !657)
!700 = !DILocation(line: 201, column: 9, scope: !701)
!701 = distinct !DILexicalBlock(scope: !696, file: !1, line: 200, column: 42)
!702 = !DILocation(line: 202, column: 9, scope: !703)
!703 = distinct !DILexicalBlock(scope: !704, file: !1, line: 202, column: 9)
!704 = distinct !DILexicalBlock(scope: !701, file: !1, line: 202, column: 9)
!705 = !DILocation(line: 202, column: 9, scope: !704)
!706 = !DILocation(line: 205, column: 5, scope: !707)
!707 = distinct !DILexicalBlock(scope: !657, file: !1, line: 205, column: 5)
!708 = !DILocation(line: 0, scope: !657)
!709 = !{!692, !209, i64 40}
!710 = !DILocation(line: 205, column: 5, scope: !657)
!711 = !DILocation(line: 206, column: 1, scope: !657)
!712 = distinct !DISubprogram(name: "setKey", scope: !1, file: !1, line: 216, type: !615, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !713)
!713 = !{!714, !715, !716}
!714 = !DILocalVariable(name: "db", arg: 1, scope: !712, file: !1, line: 216, type: !93)
!715 = !DILocalVariable(name: "key", arg: 2, scope: !712, file: !1, line: 216, type: !65)
!716 = !DILocalVariable(name: "val", arg: 3, scope: !712, file: !1, line: 216, type: !65)
!717 = !DILocation(line: 216, column: 22, scope: !712)
!718 = !DILocation(line: 216, column: 32, scope: !712)
!719 = !DILocation(line: 216, column: 43, scope: !712)
!720 = !DILocation(line: 152, column: 31, scope: !431, inlinedAt: !721)
!721 = distinct !DILocation(line: 217, column: 9, scope: !722)
!722 = distinct !DILexicalBlock(scope: !712, file: !1, line: 217, column: 9)
!723 = !DILocation(line: 152, column: 41, scope: !431, inlinedAt: !721)
!724 = !DILocation(line: 153, column: 5, scope: !431, inlinedAt: !721)
!725 = !DILocation(line: 154, column: 12, scope: !431, inlinedAt: !721)
!726 = !DILocation(line: 154, column: 5, scope: !431, inlinedAt: !721)
!727 = !DILocation(line: 217, column: 32, scope: !722)
!728 = !DILocation(line: 217, column: 9, scope: !712)
!729 = !DILocation(line: 218, column: 9, scope: !730)
!730 = distinct !DILexicalBlock(scope: !722, file: !1, line: 217, column: 41)
!731 = !DILocation(line: 219, column: 5, scope: !730)
!732 = !DILocation(line: 220, column: 9, scope: !733)
!733 = distinct !DILexicalBlock(scope: !722, file: !1, line: 219, column: 12)
!734 = !DILocation(line: 222, column: 5, scope: !712)
!735 = !DILocalVariable(name: "db", arg: 1, scope: !736, file: !1, line: 1065, type: !93)
!736 = distinct !DISubprogram(name: "removeExpire", scope: !1, file: !1, line: 1065, type: !324, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !737)
!737 = !{!735, !738}
!738 = !DILocalVariable(name: "key", arg: 2, scope: !736, file: !1, line: 1065, type: !65)
!739 = !DILocation(line: 1065, column: 27, scope: !736, inlinedAt: !740)
!740 = distinct !DILocation(line: 223, column: 5, scope: !712)
!741 = !DILocation(line: 1065, column: 37, scope: !736, inlinedAt: !740)
!742 = !DILocation(line: 1068, column: 5, scope: !736, inlinedAt: !740)
!743 = !DILocation(line: 1069, column: 27, scope: !736, inlinedAt: !740)
!744 = !DILocation(line: 1069, column: 40, scope: !736, inlinedAt: !740)
!745 = !DILocation(line: 1069, column: 12, scope: !736, inlinedAt: !740)
!746 = !DILocation(line: 1069, column: 5, scope: !736, inlinedAt: !740)
!747 = !DILocalVariable(name: "db", arg: 1, scope: !748, file: !1, line: 395, type: !93)
!748 = distinct !DISubprogram(name: "signalModifiedKey", scope: !1, file: !1, line: 395, type: !749, isLocal: false, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !751)
!749 = !DISubroutineType(types: !750)
!750 = !{null, !93, !65}
!751 = !{!747, !752}
!752 = !DILocalVariable(name: "key", arg: 2, scope: !748, file: !1, line: 395, type: !65)
!753 = !DILocation(line: 395, column: 33, scope: !748, inlinedAt: !754)
!754 = distinct !DILocation(line: 224, column: 5, scope: !712)
!755 = !DILocation(line: 395, column: 43, scope: !748, inlinedAt: !754)
!756 = !DILocation(line: 396, column: 5, scope: !748, inlinedAt: !754)
!757 = !DILocation(line: 397, column: 1, scope: !748, inlinedAt: !754)
!758 = !DILocation(line: 225, column: 1, scope: !712)
!759 = !DILocation(line: 1065, column: 27, scope: !736)
!760 = !DILocation(line: 1065, column: 37, scope: !736)
!761 = !DILocation(line: 1068, column: 5, scope: !736)
!762 = !DILocation(line: 1069, column: 27, scope: !736)
!763 = !DILocation(line: 1069, column: 40, scope: !736)
!764 = !DILocation(line: 1069, column: 12, scope: !736)
!765 = !DILocation(line: 1069, column: 45, scope: !736)
!766 = !DILocation(line: 1069, column: 5, scope: !736)
!767 = !DILocation(line: 395, column: 33, scope: !748)
!768 = !DILocation(line: 395, column: 43, scope: !748)
!769 = !DILocation(line: 396, column: 5, scope: !748)
!770 = !DILocation(line: 397, column: 1, scope: !748)
!771 = distinct !DISubprogram(name: "dbExists", scope: !1, file: !1, line: 227, type: !324, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !772)
!772 = !{!773, !774}
!773 = !DILocalVariable(name: "db", arg: 1, scope: !771, file: !1, line: 227, type: !93)
!774 = !DILocalVariable(name: "key", arg: 2, scope: !771, file: !1, line: 227, type: !65)
!775 = !DILocation(line: 227, column: 23, scope: !771)
!776 = !DILocation(line: 227, column: 33, scope: !771)
!777 = !DILocation(line: 228, column: 25, scope: !771)
!778 = !DILocation(line: 228, column: 35, scope: !771)
!779 = !DILocation(line: 228, column: 12, scope: !771)
!780 = !DILocation(line: 228, column: 40, scope: !771)
!781 = !DILocation(line: 228, column: 5, scope: !771)
!782 = distinct !DISubprogram(name: "dbRandomKey", scope: !1, file: !1, line: 235, type: !783, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !785)
!783 = !DISubroutineType(types: !784)
!784 = !{!65, !93}
!785 = !{!786, !787, !788, !789, !790, !792}
!786 = !DILocalVariable(name: "db", arg: 1, scope: !782, file: !1, line: 235, type: !93)
!787 = !DILocalVariable(name: "de", scope: !782, file: !1, line: 236, type: !136)
!788 = !DILocalVariable(name: "maxtries", scope: !782, file: !1, line: 237, type: !8)
!789 = !DILocalVariable(name: "allvolatile", scope: !782, file: !1, line: 238, type: !8)
!790 = !DILocalVariable(name: "key", scope: !791, file: !1, line: 241, type: !452)
!791 = distinct !DILexicalBlock(scope: !782, file: !1, line: 240, column: 14)
!792 = !DILocalVariable(name: "keyobj", scope: !791, file: !1, line: 242, type: !65)
!793 = !DILocation(line: 235, column: 28, scope: !782)
!794 = !DILocation(line: 237, column: 9, scope: !782)
!795 = !DILocation(line: 238, column: 23, scope: !782)
!796 = !DILocation(line: 238, column: 45, scope: !782)
!797 = !DILocation(line: 238, column: 42, scope: !782)
!798 = !DILocation(line: 240, column: 5, scope: !782)
!799 = !DILocation(line: 244, column: 14, scope: !791)
!800 = !DILocation(line: 236, column: 16, scope: !782)
!801 = !DILocation(line: 245, column: 16, scope: !802)
!802 = distinct !DILexicalBlock(scope: !791, file: !1, line: 245, column: 13)
!803 = !DILocation(line: 245, column: 13, scope: !791)
!804 = !DILocation(line: 247, column: 15, scope: !791)
!805 = !{!806, !209, i64 0}
!806 = !{!"dictEntry", !209, i64 0, !210, i64 8, !209, i64 16}
!807 = !DILocation(line: 241, column: 13, scope: !791)
!808 = !DILocalVariable(name: "s", arg: 1, scope: !809, file: !15, line: 87, type: !814)
!809 = distinct !DISubprogram(name: "sdslen", scope: !15, file: !15, line: 87, type: !810, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !815)
!810 = !DISubroutineType(types: !811)
!811 = !{!812, !814}
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !813, line: 58, baseType: !11)
!813 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!815 = !{!808, !816}
!816 = !DILocalVariable(name: "flags", scope: !809, file: !15, line: 88, type: !22)
!817 = !DILocation(line: 87, column: 39, scope: !809, inlinedAt: !818)
!818 = distinct !DILocation(line: 248, column: 41, scope: !791)
!819 = !DILocation(line: 88, column: 27, scope: !809, inlinedAt: !818)
!820 = !DILocation(line: 88, column: 19, scope: !809, inlinedAt: !818)
!821 = !DILocation(line: 89, column: 5, scope: !809, inlinedAt: !818)
!822 = !DILocation(line: 91, column: 20, scope: !823, inlinedAt: !818)
!823 = distinct !DILexicalBlock(scope: !809, file: !15, line: 89, column: 33)
!824 = !DILocation(line: 91, column: 13, scope: !823, inlinedAt: !818)
!825 = !DILocation(line: 93, column: 20, scope: !823, inlinedAt: !818)
!826 = !DILocation(line: 93, column: 34, scope: !823, inlinedAt: !818)
!827 = !DILocation(line: 93, column: 13, scope: !823, inlinedAt: !818)
!828 = !DILocation(line: 95, column: 20, scope: !823, inlinedAt: !818)
!829 = !DILocation(line: 95, column: 35, scope: !823, inlinedAt: !818)
!830 = !{!831, !831, i64 0}
!831 = !{!"short", !210, i64 0}
!832 = !DILocation(line: 95, column: 13, scope: !823, inlinedAt: !818)
!833 = !DILocation(line: 97, column: 20, scope: !823, inlinedAt: !818)
!834 = !DILocation(line: 97, column: 35, scope: !823, inlinedAt: !818)
!835 = !{!212, !212, i64 0}
!836 = !DILocation(line: 97, column: 13, scope: !823, inlinedAt: !818)
!837 = !DILocation(line: 99, column: 20, scope: !823, inlinedAt: !818)
!838 = !DILocation(line: 99, column: 35, scope: !823, inlinedAt: !818)
!839 = !{!228, !228, i64 0}
!840 = !DILocation(line: 99, column: 13, scope: !823, inlinedAt: !818)
!841 = !DILocation(line: 0, scope: !823, inlinedAt: !818)
!842 = !DILocation(line: 0, scope: !791)
!843 = !DILocation(line: 102, column: 1, scope: !809, inlinedAt: !818)
!844 = !DILocation(line: 248, column: 18, scope: !791)
!845 = !DILocation(line: 242, column: 15, scope: !791)
!846 = !DILocation(line: 249, column: 26, scope: !847)
!847 = distinct !DILexicalBlock(scope: !791, file: !1, line: 249, column: 13)
!848 = !DILocation(line: 249, column: 13, scope: !847)
!849 = !DILocation(line: 249, column: 13, scope: !791)
!850 = !DILocation(line: 250, column: 39, scope: !851)
!851 = distinct !DILexicalBlock(scope: !852, file: !1, line: 250, column: 17)
!852 = distinct !DILexicalBlock(scope: !847, file: !1, line: 249, column: 40)
!853 = !DILocation(line: 250, column: 32, scope: !851)
!854 = !DILocation(line: 250, column: 29, scope: !851)
!855 = !DILocation(line: 250, column: 53, scope: !851)
!856 = !DILocation(line: 250, column: 64, scope: !851)
!857 = !DILocation(line: 250, column: 17, scope: !852)
!858 = !DILocation(line: 0, scope: !782)
!859 = !DILocation(line: 261, column: 17, scope: !860)
!860 = distinct !DILexicalBlock(scope: !852, file: !1, line: 261, column: 17)
!861 = !DILocation(line: 261, column: 17, scope: !852)
!862 = !DILocation(line: 262, column: 17, scope: !863)
!863 = distinct !DILexicalBlock(scope: !860, file: !1, line: 261, column: 44)
!864 = !DILocation(line: 263, column: 17, scope: !863)
!865 = !DILocation(line: 244, column: 35, scope: !791)
!866 = !DILocation(line: 268, column: 1, scope: !782)
!867 = !DILocation(line: 271, column: 27, scope: !379)
!868 = !DILocation(line: 271, column: 37, scope: !379)
!869 = !DILocation(line: 274, column: 9, scope: !386)
!870 = !DILocation(line: 274, column: 31, scope: !386)
!871 = !DILocation(line: 274, column: 9, scope: !379)
!872 = !DILocation(line: 0, scope: !386)
!873 = !DILocation(line: 274, column: 64, scope: !386)
!874 = !DILocation(line: 274, column: 36, scope: !386)
!875 = !DILocation(line: 275, column: 24, scope: !396)
!876 = !DILocation(line: 275, column: 34, scope: !396)
!877 = !DILocation(line: 275, column: 9, scope: !396)
!878 = !DILocation(line: 275, column: 39, scope: !396)
!879 = !DILocation(line: 275, column: 9, scope: !379)
!880 = !DILocation(line: 276, column: 20, scope: !402)
!881 = !DILocation(line: 276, column: 13, scope: !402)
!882 = !DILocation(line: 276, column: 13, scope: !403)
!883 = !DILocation(line: 1493, column: 25, scope: !408, inlinedAt: !884)
!884 = distinct !DILocation(line: 276, column: 37, scope: !402)
!885 = !DILocation(line: 1494, column: 5, scope: !408, inlinedAt: !884)
!886 = !DILocation(line: 1495, column: 1, scope: !408, inlinedAt: !884)
!887 = !DILocation(line: 276, column: 37, scope: !402)
!888 = !DILocation(line: 0, scope: !416)
!889 = !DILocation(line: 0, scope: !403)
!890 = !DILocation(line: 281, column: 1, scope: !379)
!891 = !DILocation(line: 1493, column: 25, scope: !408)
!892 = !DILocation(line: 1494, column: 5, scope: !408)
!893 = !DILocation(line: 1495, column: 1, scope: !408)
!894 = distinct !DISubprogram(name: "dbDelete", scope: !1, file: !1, line: 285, type: !324, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !895)
!895 = !{!896, !897}
!896 = !DILocalVariable(name: "db", arg: 1, scope: !894, file: !1, line: 285, type: !93)
!897 = !DILocalVariable(name: "key", arg: 2, scope: !894, file: !1, line: 285, type: !65)
!898 = !DILocation(line: 285, column: 23, scope: !894)
!899 = !DILocation(line: 285, column: 33, scope: !894)
!900 = !DILocation(line: 286, column: 19, scope: !894)
!901 = !DILocation(line: 286, column: 12, scope: !894)
!902 = !DILocation(line: 286, column: 46, scope: !894)
!903 = !DILocation(line: 271, column: 27, scope: !379, inlinedAt: !904)
!904 = distinct !DILocation(line: 287, column: 46, scope: !894)
!905 = !DILocation(line: 271, column: 37, scope: !379, inlinedAt: !904)
!906 = !DILocation(line: 274, column: 9, scope: !386, inlinedAt: !904)
!907 = !DILocation(line: 274, column: 31, scope: !386, inlinedAt: !904)
!908 = !DILocation(line: 274, column: 9, scope: !379, inlinedAt: !904)
!909 = !DILocation(line: 0, scope: !386, inlinedAt: !904)
!910 = !DILocation(line: 274, column: 64, scope: !386, inlinedAt: !904)
!911 = !DILocation(line: 274, column: 36, scope: !386, inlinedAt: !904)
!912 = !DILocation(line: 275, column: 24, scope: !396, inlinedAt: !904)
!913 = !DILocation(line: 275, column: 34, scope: !396, inlinedAt: !904)
!914 = !DILocation(line: 275, column: 9, scope: !396, inlinedAt: !904)
!915 = !DILocation(line: 275, column: 39, scope: !396, inlinedAt: !904)
!916 = !DILocation(line: 275, column: 9, scope: !379, inlinedAt: !904)
!917 = !DILocation(line: 276, column: 20, scope: !402, inlinedAt: !904)
!918 = !DILocation(line: 276, column: 13, scope: !402, inlinedAt: !904)
!919 = !DILocation(line: 276, column: 13, scope: !403, inlinedAt: !904)
!920 = !DILocation(line: 1493, column: 25, scope: !408, inlinedAt: !921)
!921 = distinct !DILocation(line: 276, column: 37, scope: !402, inlinedAt: !904)
!922 = !DILocation(line: 1494, column: 5, scope: !408, inlinedAt: !921)
!923 = !DILocation(line: 1495, column: 1, scope: !408, inlinedAt: !921)
!924 = !DILocation(line: 276, column: 37, scope: !402, inlinedAt: !904)
!925 = !DILocation(line: 0, scope: !416, inlinedAt: !904)
!926 = !DILocation(line: 0, scope: !894)
!927 = !DILocation(line: 281, column: 1, scope: !379, inlinedAt: !904)
!928 = !DILocation(line: 286, column: 5, scope: !894)
!929 = distinct !DISubprogram(name: "dbUnshareStringValue", scope: !1, file: !1, line: 317, type: !930, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !932)
!930 = !DISubroutineType(types: !931)
!931 = !{!65, !93, !65, !65}
!932 = !{!933, !934, !935, !936}
!933 = !DILocalVariable(name: "db", arg: 1, scope: !929, file: !1, line: 317, type: !93)
!934 = !DILocalVariable(name: "key", arg: 2, scope: !929, file: !1, line: 317, type: !65)
!935 = !DILocalVariable(name: "o", arg: 3, scope: !929, file: !1, line: 317, type: !65)
!936 = !DILocalVariable(name: "decoded", scope: !937, file: !1, line: 320, type: !65)
!937 = distinct !DILexicalBlock(scope: !938, file: !1, line: 319, column: 62)
!938 = distinct !DILexicalBlock(scope: !929, file: !1, line: 319, column: 9)
!939 = !DILocation(line: 317, column: 37, scope: !929)
!940 = !DILocation(line: 317, column: 47, scope: !929)
!941 = !DILocation(line: 317, column: 58, scope: !929)
!942 = !DILocation(line: 318, column: 5, scope: !929)
!943 = !DILocation(line: 319, column: 12, scope: !938)
!944 = !{!216, !212, i64 4}
!945 = !DILocation(line: 319, column: 21, scope: !938)
!946 = !DILocation(line: 319, column: 26, scope: !938)
!947 = !DILocation(line: 319, column: 32, scope: !938)
!948 = !DILocation(line: 319, column: 41, scope: !938)
!949 = !DILocation(line: 319, column: 9, scope: !929)
!950 = !DILocation(line: 320, column: 25, scope: !937)
!951 = !DILocation(line: 320, column: 15, scope: !937)
!952 = !DILocation(line: 321, column: 44, scope: !937)
!953 = !DILocation(line: 87, column: 39, scope: !809, inlinedAt: !954)
!954 = distinct !DILocation(line: 321, column: 49, scope: !937)
!955 = !DILocation(line: 88, column: 27, scope: !809, inlinedAt: !954)
!956 = !DILocation(line: 88, column: 19, scope: !809, inlinedAt: !954)
!957 = !DILocation(line: 89, column: 5, scope: !809, inlinedAt: !954)
!958 = !DILocation(line: 91, column: 20, scope: !823, inlinedAt: !954)
!959 = !DILocation(line: 91, column: 13, scope: !823, inlinedAt: !954)
!960 = !DILocation(line: 93, column: 20, scope: !823, inlinedAt: !954)
!961 = !DILocation(line: 93, column: 34, scope: !823, inlinedAt: !954)
!962 = !DILocation(line: 93, column: 13, scope: !823, inlinedAt: !954)
!963 = !DILocation(line: 95, column: 20, scope: !823, inlinedAt: !954)
!964 = !DILocation(line: 95, column: 35, scope: !823, inlinedAt: !954)
!965 = !DILocation(line: 95, column: 13, scope: !823, inlinedAt: !954)
!966 = !DILocation(line: 97, column: 20, scope: !823, inlinedAt: !954)
!967 = !DILocation(line: 97, column: 35, scope: !823, inlinedAt: !954)
!968 = !DILocation(line: 97, column: 13, scope: !823, inlinedAt: !954)
!969 = !DILocation(line: 99, column: 20, scope: !823, inlinedAt: !954)
!970 = !DILocation(line: 99, column: 35, scope: !823, inlinedAt: !954)
!971 = !DILocation(line: 99, column: 13, scope: !823, inlinedAt: !954)
!972 = !DILocation(line: 0, scope: !823, inlinedAt: !954)
!973 = !DILocation(line: 0, scope: !937)
!974 = !DILocation(line: 102, column: 1, scope: !809, inlinedAt: !954)
!975 = !DILocation(line: 321, column: 13, scope: !937)
!976 = !DILocation(line: 322, column: 9, scope: !937)
!977 = !DILocation(line: 323, column: 9, scope: !937)
!978 = !DILocation(line: 324, column: 5, scope: !937)
!979 = !DILocation(line: 325, column: 5, scope: !929)
!980 = distinct !DISubprogram(name: "emptyDb", scope: !1, file: !1, line: 342, type: !981, isLocal: false, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !983)
!981 = !DISubroutineType(types: !982)
!982 = !{!165, !8, !8, !187}
!983 = !{!984, !985, !986, !987, !988, !989, !990, !991}
!984 = !DILocalVariable(name: "dbnum", arg: 1, scope: !980, file: !1, line: 342, type: !8)
!985 = !DILocalVariable(name: "flags", arg: 2, scope: !980, file: !1, line: 342, type: !8)
!986 = !DILocalVariable(name: "callback", arg: 3, scope: !980, file: !1, line: 342, type: !187)
!987 = !DILocalVariable(name: "async", scope: !980, file: !1, line: 343, type: !8)
!988 = !DILocalVariable(name: "removed", scope: !980, file: !1, line: 344, type: !165)
!989 = !DILocalVariable(name: "startdb", scope: !980, file: !1, line: 351, type: !8)
!990 = !DILocalVariable(name: "enddb", scope: !980, file: !1, line: 351, type: !8)
!991 = !DILocalVariable(name: "j", scope: !992, file: !1, line: 359, type: !8)
!992 = distinct !DILexicalBlock(scope: !980, file: !1, line: 359, column: 5)
!993 = !DILocation(line: 342, column: 23, scope: !980)
!994 = !DILocation(line: 342, column: 34, scope: !980)
!995 = !DILocation(line: 342, column: 46, scope: !980)
!996 = !DILocation(line: 343, column: 24, scope: !980)
!997 = !DILocation(line: 343, column: 9, scope: !980)
!998 = !DILocation(line: 344, column: 15, scope: !980)
!999 = !DILocation(line: 346, column: 15, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !980, file: !1, line: 346, column: 9)
!1001 = !DILocation(line: 346, column: 20, scope: !1000)
!1002 = !DILocation(line: 346, column: 39, scope: !1000)
!1003 = !{!227, !212, i64 1792}
!1004 = !DILocation(line: 346, column: 29, scope: !1000)
!1005 = !DILocation(line: 346, column: 9, scope: !980)
!1006 = !DILocation(line: 347, column: 9, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 346, column: 46)
!1008 = !DILocation(line: 347, column: 15, scope: !1007)
!1009 = !DILocation(line: 348, column: 9, scope: !1007)
!1010 = !DILocation(line: 352, column: 15, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !980, file: !1, line: 352, column: 9)
!1012 = !DILocation(line: 352, column: 9, scope: !980)
!1013 = !DILocation(line: 351, column: 18, scope: !980)
!1014 = !DILocation(line: 351, column: 9, scope: !980)
!1015 = !DILocation(line: 359, column: 14, scope: !992)
!1016 = !DILocation(line: 359, column: 10, scope: !992)
!1017 = !DILocation(line: 359, column: 5, scope: !992)
!1018 = !DILocation(line: 354, column: 29, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1011, file: !1, line: 352, column: 22)
!1020 = !DILocation(line: 355, column: 5, scope: !1019)
!1021 = !DILocation(line: 359, column: 29, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !992, file: !1, line: 359, column: 5)
!1023 = !DILocation(line: 0, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1022, file: !1, line: 359, column: 44)
!1025 = !DILocation(line: 368, column: 16, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !980, file: !1, line: 368, column: 9)
!1027 = !DILocation(line: 368, column: 9, scope: !1026)
!1028 = !DILocation(line: 368, column: 9, scope: !980)
!1029 = !DILocation(line: 360, column: 20, scope: !1024)
!1030 = !{!227, !209, i64 48}
!1031 = !DILocation(line: 360, column: 17, scope: !1024)
!1032 = !DILocation(line: 361, column: 13, scope: !1024)
!1033 = !DILocation(line: 362, column: 13, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !1, line: 361, column: 20)
!1035 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 361, column: 13)
!1036 = !DILocation(line: 363, column: 9, scope: !1034)
!1037 = !DILocation(line: 364, column: 13, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1035, file: !1, line: 363, column: 16)
!1039 = !DILocation(line: 365, column: 30, scope: !1038)
!1040 = !DILocation(line: 365, column: 36, scope: !1038)
!1041 = !DILocation(line: 365, column: 13, scope: !1038)
!1042 = !DILocation(line: 359, column: 40, scope: !1022)
!1043 = !DILocation(line: 359, column: 5, scope: !1022)
!1044 = distinct !{!1044, !1017, !1045}
!1045 = !DILocation(line: 367, column: 5, scope: !992)
!1046 = !DILocation(line: 369, column: 13, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 369, column: 13)
!1048 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 368, column: 33)
!1049 = !DILocation(line: 369, column: 13, scope: !1048)
!1050 = !DILocation(line: 370, column: 13, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1047, file: !1, line: 369, column: 20)
!1052 = !DILocation(line: 371, column: 9, scope: !1051)
!1053 = !DILocation(line: 1498, column: 20, scope: !1054, inlinedAt: !1057)
!1054 = distinct !DISubprogram(name: "slotToKeyFlush", scope: !1, file: !1, line: 1497, type: !1055, isLocal: false, isDefinition: true, scopeLine: 1497, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null}
!1057 = distinct !DILocation(line: 372, column: 13, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1047, file: !1, line: 371, column: 16)
!1059 = !{!227, !209, i64 2944}
!1060 = !DILocation(line: 1498, column: 29, scope: !1054, inlinedAt: !1057)
!1061 = !{!1062, !209, i64 524328}
!1062 = !{!"clusterState", !209, i64 0, !228, i64 8, !212, i64 16, !212, i64 20, !209, i64 24, !209, i64 32, !210, i64 40, !210, i64 131112, !210, i64 262184, !210, i64 393256, !209, i64 524328, !213, i64 524336, !212, i64 524344, !212, i64 524348, !212, i64 524352, !228, i64 524360, !212, i64 524368, !213, i64 524376, !209, i64 524384, !213, i64 524392, !212, i64 524400, !228, i64 524408, !212, i64 524416, !210, i64 524424, !210, i64 524504, !213, i64 524584}
!1063 = !DILocation(line: 1498, column: 5, scope: !1054, inlinedAt: !1057)
!1064 = !DILocation(line: 1499, column: 37, scope: !1054, inlinedAt: !1057)
!1065 = !DILocation(line: 1499, column: 12, scope: !1054, inlinedAt: !1057)
!1066 = !DILocation(line: 1499, column: 21, scope: !1054, inlinedAt: !1057)
!1067 = !DILocation(line: 1499, column: 35, scope: !1054, inlinedAt: !1057)
!1068 = !DILocation(line: 1500, column: 12, scope: !1054, inlinedAt: !1057)
!1069 = !DILocation(line: 1500, column: 5, scope: !1054, inlinedAt: !1057)
!1070 = !DILocation(line: 1502, column: 1, scope: !1054, inlinedAt: !1057)
!1071 = !DILocation(line: 375, column: 9, scope: !980)
!1072 = !DILocation(line: 375, column: 22, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !980, file: !1, line: 375, column: 9)
!1074 = !DILocation(line: 0, scope: !980)
!1075 = !DILocation(line: 377, column: 1, scope: !980)
!1076 = !DILocation(line: 1498, column: 20, scope: !1054)
!1077 = !DILocation(line: 1498, column: 29, scope: !1054)
!1078 = !DILocation(line: 1498, column: 5, scope: !1054)
!1079 = !DILocation(line: 1499, column: 37, scope: !1054)
!1080 = !DILocation(line: 1499, column: 12, scope: !1054)
!1081 = !DILocation(line: 1499, column: 21, scope: !1054)
!1082 = !DILocation(line: 1499, column: 35, scope: !1054)
!1083 = !DILocation(line: 1500, column: 12, scope: !1054)
!1084 = !DILocation(line: 1500, column: 5, scope: !1054)
!1085 = !DILocation(line: 1502, column: 1, scope: !1054)
!1086 = distinct !DISubprogram(name: "selectDb", scope: !1, file: !1, line: 379, type: !1087, isLocal: false, isDefinition: true, scopeLine: 379, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1089)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!8, !443, !8}
!1089 = !{!1090, !1091}
!1090 = !DILocalVariable(name: "c", arg: 1, scope: !1086, file: !1, line: 379, type: !443)
!1091 = !DILocalVariable(name: "id", arg: 2, scope: !1086, file: !1, line: 379, type: !8)
!1092 = !DILocation(line: 379, column: 22, scope: !1086)
!1093 = !DILocation(line: 379, column: 29, scope: !1086)
!1094 = !DILocation(line: 380, column: 12, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 380, column: 9)
!1096 = !DILocation(line: 380, column: 16, scope: !1095)
!1097 = !DILocation(line: 380, column: 32, scope: !1095)
!1098 = !DILocation(line: 380, column: 22, scope: !1095)
!1099 = !DILocation(line: 380, column: 9, scope: !1086)
!1100 = !DILocation(line: 382, column: 21, scope: !1086)
!1101 = !DILocation(line: 382, column: 14, scope: !1086)
!1102 = !DILocation(line: 382, column: 8, scope: !1086)
!1103 = !DILocation(line: 382, column: 11, scope: !1086)
!1104 = !DILocation(line: 383, column: 5, scope: !1086)
!1105 = !DILocation(line: 0, scope: !1086)
!1106 = !DILocation(line: 0, scope: !1095)
!1107 = !DILocation(line: 384, column: 1, scope: !1086)
!1108 = distinct !DISubprogram(name: "signalFlushedDb", scope: !1, file: !1, line: 399, type: !1109, isLocal: false, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1111)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null, !8}
!1111 = !{!1112}
!1112 = !DILocalVariable(name: "dbid", arg: 1, scope: !1108, file: !1, line: 399, type: !8)
!1113 = !DILocation(line: 399, column: 26, scope: !1108)
!1114 = !DILocation(line: 400, column: 5, scope: !1108)
!1115 = !DILocation(line: 401, column: 1, scope: !1108)
!1116 = distinct !DISubprogram(name: "getFlushCommandFlags", scope: !1, file: !1, line: 415, type: !1117, isLocal: false, isDefinition: true, scopeLine: 415, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1119)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!8, !443, !481}
!1119 = !{!1120, !1121}
!1120 = !DILocalVariable(name: "c", arg: 1, scope: !1116, file: !1, line: 415, type: !443)
!1121 = !DILocalVariable(name: "flags", arg: 2, scope: !1116, file: !1, line: 415, type: !481)
!1122 = !DILocation(line: 415, column: 34, scope: !1116)
!1123 = !DILocation(line: 415, column: 42, scope: !1116)
!1124 = !DILocation(line: 417, column: 12, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1116, file: !1, line: 417, column: 9)
!1126 = !{!299, !212, i64 64}
!1127 = !DILocation(line: 417, column: 17, scope: !1125)
!1128 = !DILocation(line: 417, column: 9, scope: !1116)
!1129 = !DILocation(line: 418, column: 21, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !1, line: 418, column: 13)
!1131 = distinct !DILexicalBlock(scope: !1125, file: !1, line: 417, column: 22)
!1132 = !DILocation(line: 418, column: 25, scope: !1130)
!1133 = !DILocation(line: 418, column: 42, scope: !1130)
!1134 = !{!299, !209, i64 72}
!1135 = !DILocation(line: 418, column: 39, scope: !1130)
!1136 = !{!209, !209, i64 0}
!1137 = !DILocation(line: 418, column: 51, scope: !1130)
!1138 = !DILocation(line: 418, column: 28, scope: !1130)
!1139 = !DILocation(line: 418, column: 13, scope: !1131)
!1140 = !DILocation(line: 419, column: 31, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1130, file: !1, line: 418, column: 65)
!1142 = !{!1143, !209, i64 128}
!1143 = !{!"sharedObjectsStruct", !209, i64 0, !209, i64 8, !209, i64 16, !209, i64 24, !209, i64 32, !209, i64 40, !209, i64 48, !209, i64 56, !209, i64 64, !209, i64 72, !209, i64 80, !209, i64 88, !209, i64 96, !209, i64 104, !209, i64 112, !209, i64 120, !209, i64 128, !209, i64 136, !209, i64 144, !209, i64 152, !209, i64 160, !209, i64 168, !209, i64 176, !209, i64 184, !209, i64 192, !209, i64 200, !209, i64 208, !209, i64 216, !209, i64 224, !209, i64 232, !209, i64 240, !209, i64 248, !209, i64 256, !209, i64 264, !209, i64 272, !209, i64 280, !209, i64 288, !209, i64 296, !209, i64 304, !209, i64 312, !209, i64 320, !209, i64 328, !209, i64 336, !209, i64 344, !209, i64 352, !209, i64 360, !210, i64 368, !210, i64 448, !210, i64 80448, !210, i64 80704, !209, i64 80960, !209, i64 80968}
!1144 = !DILocation(line: 419, column: 13, scope: !1141)
!1145 = !DILocation(line: 420, column: 13, scope: !1141)
!1146 = !DILocation(line: 0, scope: !1131)
!1147 = !DILocation(line: 426, column: 5, scope: !1116)
!1148 = !DILocation(line: 0, scope: !1116)
!1149 = !DILocation(line: 0, scope: !1141)
!1150 = !DILocation(line: 427, column: 1, scope: !1116)
!1151 = distinct !DISubprogram(name: "flushdbCommand", scope: !1, file: !1, line: 432, type: !471, isLocal: false, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1152)
!1152 = !{!1153, !1154}
!1153 = !DILocalVariable(name: "c", arg: 1, scope: !1151, file: !1, line: 432, type: !443)
!1154 = !DILocalVariable(name: "flags", scope: !1151, file: !1, line: 433, type: !8)
!1155 = !DILocation(line: 432, column: 29, scope: !1151)
!1156 = !DILocation(line: 415, column: 34, scope: !1116, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 435, column: 9, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 435, column: 9)
!1159 = !DILocation(line: 417, column: 12, scope: !1125, inlinedAt: !1157)
!1160 = !DILocation(line: 417, column: 17, scope: !1125, inlinedAt: !1157)
!1161 = !DILocation(line: 417, column: 9, scope: !1116, inlinedAt: !1157)
!1162 = !DILocation(line: 418, column: 21, scope: !1130, inlinedAt: !1157)
!1163 = !DILocation(line: 418, column: 25, scope: !1130, inlinedAt: !1157)
!1164 = !DILocation(line: 418, column: 42, scope: !1130, inlinedAt: !1157)
!1165 = !DILocation(line: 418, column: 39, scope: !1130, inlinedAt: !1157)
!1166 = !DILocation(line: 418, column: 51, scope: !1130, inlinedAt: !1157)
!1167 = !DILocation(line: 418, column: 28, scope: !1130, inlinedAt: !1157)
!1168 = !DILocation(line: 418, column: 13, scope: !1131, inlinedAt: !1157)
!1169 = !DILocation(line: 419, column: 31, scope: !1141, inlinedAt: !1157)
!1170 = !DILocation(line: 419, column: 13, scope: !1141, inlinedAt: !1157)
!1171 = !DILocation(line: 420, column: 13, scope: !1141, inlinedAt: !1157)
!1172 = !DILocation(line: 427, column: 1, scope: !1116, inlinedAt: !1157)
!1173 = !DILocation(line: 435, column: 9, scope: !1151)
!1174 = !DILocation(line: 435, column: 50, scope: !1158)
!1175 = !DILocation(line: 0, scope: !1158)
!1176 = !DILocation(line: 426, column: 5, scope: !1116, inlinedAt: !1157)
!1177 = !DILocation(line: 436, column: 24, scope: !1151)
!1178 = !DILocation(line: 436, column: 28, scope: !1151)
!1179 = !DILocation(line: 399, column: 26, scope: !1108, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 436, column: 5, scope: !1151)
!1181 = !DILocation(line: 400, column: 5, scope: !1108, inlinedAt: !1180)
!1182 = !DILocation(line: 401, column: 1, scope: !1108, inlinedAt: !1180)
!1183 = !DILocation(line: 437, column: 32, scope: !1151)
!1184 = !DILocation(line: 437, column: 36, scope: !1151)
!1185 = !DILocation(line: 433, column: 9, scope: !1151)
!1186 = !DILocation(line: 437, column: 21, scope: !1151)
!1187 = !DILocation(line: 437, column: 18, scope: !1151)
!1188 = !{!227, !213, i64 2080}
!1189 = !DILocation(line: 438, column: 23, scope: !1151)
!1190 = !{!1143, !209, i64 8}
!1191 = !DILocation(line: 438, column: 5, scope: !1151)
!1192 = !DILocation(line: 439, column: 1, scope: !1151)
!1193 = distinct !DISubprogram(name: "flushallCommand", scope: !1, file: !1, line: 444, type: !471, isLocal: false, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1194)
!1194 = !{!1195, !1196, !1197, !1200, !1208}
!1195 = !DILocalVariable(name: "c", arg: 1, scope: !1193, file: !1, line: 444, type: !443)
!1196 = !DILocalVariable(name: "flags", scope: !1193, file: !1, line: 445, type: !8)
!1197 = !DILocalVariable(name: "saved_dirty", scope: !1198, file: !1, line: 458, type: !8)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !1, line: 455, column: 35)
!1199 = distinct !DILexicalBlock(scope: !1193, file: !1, line: 455, column: 9)
!1200 = !DILocalVariable(name: "rsi", scope: !1198, file: !1, line: 459, type: !1201)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "rdbSaveInfo", file: !67, line: 912, baseType: !1202)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rdbSaveInfo", file: !67, line: 904, size: 512, elements: !1203)
!1203 = !{!1204, !1205, !1206, !1207}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "repl_stream_db", scope: !1202, file: !67, line: 906, baseType: !8, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "repl_id_is_set", scope: !1202, file: !67, line: 909, baseType: !8, size: 32, offset: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "repl_id", scope: !1202, file: !67, line: 910, baseType: !518, size: 328, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "repl_offset", scope: !1202, file: !67, line: 911, baseType: !165, size: 64, offset: 448)
!1208 = !DILocalVariable(name: "rsiptr", scope: !1198, file: !1, line: 459, type: !1209)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1210 = !DILocation(line: 444, column: 30, scope: !1193)
!1211 = !DILocation(line: 415, column: 34, scope: !1116, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 447, column: 9, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1193, file: !1, line: 447, column: 9)
!1214 = !DILocation(line: 417, column: 12, scope: !1125, inlinedAt: !1212)
!1215 = !DILocation(line: 417, column: 17, scope: !1125, inlinedAt: !1212)
!1216 = !DILocation(line: 417, column: 9, scope: !1116, inlinedAt: !1212)
!1217 = !DILocation(line: 418, column: 21, scope: !1130, inlinedAt: !1212)
!1218 = !DILocation(line: 418, column: 25, scope: !1130, inlinedAt: !1212)
!1219 = !DILocation(line: 418, column: 42, scope: !1130, inlinedAt: !1212)
!1220 = !DILocation(line: 418, column: 39, scope: !1130, inlinedAt: !1212)
!1221 = !DILocation(line: 418, column: 51, scope: !1130, inlinedAt: !1212)
!1222 = !DILocation(line: 418, column: 28, scope: !1130, inlinedAt: !1212)
!1223 = !DILocation(line: 418, column: 13, scope: !1131, inlinedAt: !1212)
!1224 = !DILocation(line: 419, column: 31, scope: !1141, inlinedAt: !1212)
!1225 = !DILocation(line: 419, column: 13, scope: !1141, inlinedAt: !1212)
!1226 = !DILocation(line: 420, column: 13, scope: !1141, inlinedAt: !1212)
!1227 = !DILocation(line: 427, column: 1, scope: !1116, inlinedAt: !1212)
!1228 = !DILocation(line: 447, column: 9, scope: !1193)
!1229 = !DILocation(line: 447, column: 50, scope: !1213)
!1230 = !DILocation(line: 0, scope: !1213)
!1231 = !DILocation(line: 426, column: 5, scope: !1116, inlinedAt: !1212)
!1232 = !DILocation(line: 399, column: 26, scope: !1108, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 448, column: 5, scope: !1193)
!1234 = !DILocation(line: 400, column: 5, scope: !1108, inlinedAt: !1233)
!1235 = !DILocation(line: 401, column: 1, scope: !1108, inlinedAt: !1233)
!1236 = !DILocation(line: 445, column: 9, scope: !1193)
!1237 = !DILocation(line: 449, column: 21, scope: !1193)
!1238 = !DILocation(line: 449, column: 18, scope: !1193)
!1239 = !DILocation(line: 450, column: 23, scope: !1193)
!1240 = !DILocation(line: 450, column: 5, scope: !1193)
!1241 = !DILocation(line: 451, column: 16, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1193, file: !1, line: 451, column: 9)
!1243 = !DILocation(line: 451, column: 30, scope: !1242)
!1244 = !DILocation(line: 451, column: 9, scope: !1193)
!1245 = !DILocation(line: 452, column: 9, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1242, file: !1, line: 451, column: 37)
!1247 = !DILocation(line: 453, column: 34, scope: !1246)
!1248 = !DILocation(line: 453, column: 9, scope: !1246)
!1249 = !DILocation(line: 454, column: 5, scope: !1246)
!1250 = !DILocation(line: 455, column: 16, scope: !1199)
!1251 = !{!227, !212, i64 2112}
!1252 = !DILocation(line: 455, column: 30, scope: !1199)
!1253 = !DILocation(line: 455, column: 9, scope: !1193)
!1254 = !DILocation(line: 0, scope: !1193)
!1255 = !DILocation(line: 459, column: 9, scope: !1198)
!1256 = !DILocation(line: 459, column: 21, scope: !1198)
!1257 = !DILocation(line: 460, column: 18, scope: !1198)
!1258 = !DILocation(line: 459, column: 27, scope: !1198)
!1259 = !DILocation(line: 461, column: 24, scope: !1198)
!1260 = !{!227, !209, i64 2120}
!1261 = !DILocation(line: 461, column: 9, scope: !1198)
!1262 = !DILocation(line: 462, column: 24, scope: !1198)
!1263 = !DILocation(line: 462, column: 22, scope: !1198)
!1264 = !DILocation(line: 463, column: 5, scope: !1199)
!1265 = !DILocation(line: 463, column: 5, scope: !1198)
!1266 = !DILocation(line: 464, column: 17, scope: !1193)
!1267 = !DILocation(line: 465, column: 1, scope: !1193)
!1268 = distinct !DISubprogram(name: "delGenericCommand", scope: !1, file: !1, line: 468, type: !1269, isLocal: false, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1271)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{null, !443, !8}
!1271 = !{!1272, !1273, !1274, !1275, !1276}
!1272 = !DILocalVariable(name: "c", arg: 1, scope: !1268, file: !1, line: 468, type: !443)
!1273 = !DILocalVariable(name: "lazy", arg: 2, scope: !1268, file: !1, line: 468, type: !8)
!1274 = !DILocalVariable(name: "numdel", scope: !1268, file: !1, line: 469, type: !8)
!1275 = !DILocalVariable(name: "j", scope: !1268, file: !1, line: 469, type: !8)
!1276 = !DILocalVariable(name: "deleted", scope: !1277, file: !1, line: 473, type: !8)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !1, line: 471, column: 35)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !1, line: 471, column: 5)
!1279 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 471, column: 5)
!1280 = !DILocation(line: 468, column: 32, scope: !1268)
!1281 = !DILocation(line: 468, column: 39, scope: !1268)
!1282 = !DILocation(line: 469, column: 9, scope: !1268)
!1283 = !DILocation(line: 469, column: 21, scope: !1268)
!1284 = !DILocation(line: 471, column: 10, scope: !1279)
!1285 = !DILocation(line: 471, column: 24, scope: !1278)
!1286 = !DILocation(line: 471, column: 19, scope: !1278)
!1287 = !DILocation(line: 471, column: 5, scope: !1279)
!1288 = !DILocation(line: 472, column: 27, scope: !1277)
!1289 = !DILocation(line: 472, column: 33, scope: !1277)
!1290 = !DILocation(line: 472, column: 30, scope: !1277)
!1291 = !DILocation(line: 472, column: 9, scope: !1277)
!1292 = !DILocation(line: 0, scope: !1277)
!1293 = !DILocation(line: 473, column: 24, scope: !1277)
!1294 = !DILocation(line: 473, column: 31, scope: !1277)
!1295 = !DILocation(line: 271, column: 27, scope: !379, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 474, column: 31, scope: !1277)
!1297 = !DILocation(line: 271, column: 37, scope: !379, inlinedAt: !1296)
!1298 = !DILocation(line: 274, column: 9, scope: !386, inlinedAt: !1296)
!1299 = !DILocation(line: 274, column: 31, scope: !386, inlinedAt: !1296)
!1300 = !DILocation(line: 274, column: 9, scope: !379, inlinedAt: !1296)
!1301 = !DILocation(line: 0, scope: !386, inlinedAt: !1296)
!1302 = !DILocation(line: 274, column: 64, scope: !386, inlinedAt: !1296)
!1303 = !DILocation(line: 274, column: 36, scope: !386, inlinedAt: !1296)
!1304 = !DILocation(line: 275, column: 24, scope: !396, inlinedAt: !1296)
!1305 = !DILocation(line: 275, column: 34, scope: !396, inlinedAt: !1296)
!1306 = !DILocation(line: 275, column: 9, scope: !396, inlinedAt: !1296)
!1307 = !DILocation(line: 275, column: 39, scope: !396, inlinedAt: !1296)
!1308 = !DILocation(line: 275, column: 9, scope: !379, inlinedAt: !1296)
!1309 = !DILocation(line: 276, column: 20, scope: !402, inlinedAt: !1296)
!1310 = !DILocation(line: 276, column: 13, scope: !402, inlinedAt: !1296)
!1311 = !DILocation(line: 276, column: 13, scope: !403, inlinedAt: !1296)
!1312 = !DILocation(line: 1493, column: 25, scope: !408, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 276, column: 37, scope: !402, inlinedAt: !1296)
!1314 = !DILocation(line: 1494, column: 5, scope: !408, inlinedAt: !1313)
!1315 = !DILocation(line: 1495, column: 1, scope: !408, inlinedAt: !1313)
!1316 = !DILocation(line: 276, column: 37, scope: !402, inlinedAt: !1296)
!1317 = !DILocation(line: 0, scope: !416, inlinedAt: !1296)
!1318 = !DILocation(line: 281, column: 1, scope: !379, inlinedAt: !1296)
!1319 = !DILocation(line: 473, column: 13, scope: !1277)
!1320 = !DILocation(line: 475, column: 13, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1277, file: !1, line: 475, column: 13)
!1322 = !DILocation(line: 475, column: 13, scope: !1277)
!1323 = !DILocation(line: 476, column: 34, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1321, file: !1, line: 475, column: 22)
!1325 = !DILocation(line: 476, column: 40, scope: !1324)
!1326 = !DILocation(line: 476, column: 37, scope: !1324)
!1327 = !DILocation(line: 395, column: 33, scope: !748, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 476, column: 13, scope: !1324)
!1329 = !DILocation(line: 395, column: 43, scope: !748, inlinedAt: !1328)
!1330 = !DILocation(line: 396, column: 5, scope: !748, inlinedAt: !1328)
!1331 = !DILocation(line: 397, column: 1, scope: !748, inlinedAt: !1328)
!1332 = !DILocation(line: 478, column: 26, scope: !1324)
!1333 = !DILocation(line: 478, column: 23, scope: !1324)
!1334 = !DILocation(line: 478, column: 37, scope: !1324)
!1335 = !DILocation(line: 478, column: 41, scope: !1324)
!1336 = !DILocation(line: 477, column: 13, scope: !1324)
!1337 = !DILocation(line: 479, column: 25, scope: !1324)
!1338 = !DILocation(line: 480, column: 19, scope: !1324)
!1339 = !DILocation(line: 481, column: 9, scope: !1324)
!1340 = !DILocation(line: 0, scope: !1268)
!1341 = !DILocation(line: 471, column: 31, scope: !1278)
!1342 = !DILocation(line: 471, column: 5, scope: !1278)
!1343 = distinct !{!1343, !1287, !1344}
!1344 = !DILocation(line: 482, column: 5, scope: !1279)
!1345 = !DILocation(line: 0, scope: !1324)
!1346 = !DILocation(line: 483, column: 24, scope: !1268)
!1347 = !DILocation(line: 483, column: 5, scope: !1268)
!1348 = !DILocation(line: 484, column: 1, scope: !1268)
!1349 = distinct !DISubprogram(name: "delCommand", scope: !1, file: !1, line: 486, type: !471, isLocal: false, isDefinition: true, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1350)
!1350 = !{!1351}
!1351 = !DILocalVariable(name: "c", arg: 1, scope: !1349, file: !1, line: 486, type: !443)
!1352 = !DILocation(line: 486, column: 25, scope: !1349)
!1353 = !DILocation(line: 487, column: 5, scope: !1349)
!1354 = !DILocation(line: 488, column: 1, scope: !1349)
!1355 = distinct !DISubprogram(name: "unlinkCommand", scope: !1, file: !1, line: 490, type: !471, isLocal: false, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1356)
!1356 = !{!1357}
!1357 = !DILocalVariable(name: "c", arg: 1, scope: !1355, file: !1, line: 490, type: !443)
!1358 = !DILocation(line: 490, column: 28, scope: !1355)
!1359 = !DILocation(line: 491, column: 5, scope: !1355)
!1360 = !DILocation(line: 492, column: 1, scope: !1355)
!1361 = distinct !DISubprogram(name: "existsCommand", scope: !1, file: !1, line: 496, type: !471, isLocal: false, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1362)
!1362 = !{!1363, !1364, !1365}
!1363 = !DILocalVariable(name: "c", arg: 1, scope: !1361, file: !1, line: 496, type: !443)
!1364 = !DILocalVariable(name: "count", scope: !1361, file: !1, line: 497, type: !165)
!1365 = !DILocalVariable(name: "j", scope: !1361, file: !1, line: 498, type: !8)
!1366 = !DILocation(line: 496, column: 28, scope: !1361)
!1367 = !DILocation(line: 497, column: 15, scope: !1361)
!1368 = !DILocation(line: 498, column: 9, scope: !1361)
!1369 = !DILocation(line: 500, column: 10, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1361, file: !1, line: 500, column: 5)
!1371 = !DILocation(line: 500, column: 24, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 500, column: 5)
!1373 = !DILocation(line: 500, column: 19, scope: !1372)
!1374 = !DILocation(line: 500, column: 5, scope: !1370)
!1375 = !DILocation(line: 501, column: 30, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !1, line: 501, column: 13)
!1377 = distinct !DILexicalBlock(scope: !1372, file: !1, line: 500, column: 35)
!1378 = !DILocation(line: 501, column: 36, scope: !1376)
!1379 = !DILocation(line: 501, column: 33, scope: !1376)
!1380 = !DILocation(line: 143, column: 30, scope: !421, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 501, column: 13, scope: !1376)
!1382 = !DILocation(line: 143, column: 40, scope: !421, inlinedAt: !1381)
!1383 = !DILocation(line: 144, column: 12, scope: !421, inlinedAt: !1381)
!1384 = !DILocation(line: 144, column: 5, scope: !421, inlinedAt: !1381)
!1385 = !DILocation(line: 501, column: 13, scope: !1376)
!1386 = !DILocation(line: 501, column: 13, scope: !1377)
!1387 = !DILocation(line: 501, column: 51, scope: !1376)
!1388 = !DILocation(line: 501, column: 46, scope: !1376)
!1389 = !DILocation(line: 0, scope: !1361)
!1390 = !DILocation(line: 500, column: 31, scope: !1372)
!1391 = !DILocation(line: 500, column: 5, scope: !1372)
!1392 = distinct !{!1392, !1374, !1393}
!1393 = !DILocation(line: 502, column: 5, scope: !1370)
!1394 = !DILocation(line: 0, scope: !1376)
!1395 = !DILocation(line: 503, column: 5, scope: !1361)
!1396 = !DILocation(line: 504, column: 1, scope: !1361)
!1397 = distinct !DISubprogram(name: "selectCommand", scope: !1, file: !1, line: 506, type: !471, isLocal: false, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1398)
!1398 = !{!1399, !1400}
!1399 = !DILocalVariable(name: "c", arg: 1, scope: !1397, file: !1, line: 506, type: !443)
!1400 = !DILocalVariable(name: "id", scope: !1397, file: !1, line: 507, type: !12)
!1401 = !DILocation(line: 506, column: 28, scope: !1397)
!1402 = !DILocation(line: 507, column: 5, scope: !1397)
!1403 = !DILocation(line: 509, column: 40, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1397, file: !1, line: 509, column: 9)
!1405 = !DILocation(line: 509, column: 37, scope: !1404)
!1406 = !DILocation(line: 507, column: 10, scope: !1397)
!1407 = !DILocation(line: 509, column: 9, scope: !1404)
!1408 = !DILocation(line: 510, column: 29, scope: !1404)
!1409 = !DILocation(line: 509, column: 9, scope: !1397)
!1410 = !DILocation(line: 513, column: 16, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1397, file: !1, line: 513, column: 9)
!1412 = !DILocation(line: 513, column: 9, scope: !1411)
!1413 = !DILocation(line: 513, column: 35, scope: !1411)
!1414 = !DILocation(line: 513, column: 38, scope: !1411)
!1415 = !DILocation(line: 513, column: 32, scope: !1411)
!1416 = !DILocation(line: 514, column: 9, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1411, file: !1, line: 513, column: 44)
!1418 = !DILocation(line: 515, column: 9, scope: !1417)
!1419 = !DILocation(line: 517, column: 20, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1397, file: !1, line: 517, column: 9)
!1421 = !DILocation(line: 379, column: 22, scope: !1086, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 517, column: 9, scope: !1420)
!1423 = !DILocation(line: 379, column: 29, scope: !1086, inlinedAt: !1422)
!1424 = !DILocation(line: 380, column: 12, scope: !1095, inlinedAt: !1422)
!1425 = !DILocation(line: 380, column: 16, scope: !1095, inlinedAt: !1422)
!1426 = !DILocation(line: 380, column: 32, scope: !1095, inlinedAt: !1422)
!1427 = !DILocation(line: 380, column: 22, scope: !1095, inlinedAt: !1422)
!1428 = !DILocation(line: 380, column: 9, scope: !1086, inlinedAt: !1422)
!1429 = !DILocation(line: 381, column: 9, scope: !1095, inlinedAt: !1422)
!1430 = !DILocation(line: 384, column: 1, scope: !1086, inlinedAt: !1422)
!1431 = !DILocation(line: 517, column: 9, scope: !1397)
!1432 = !DILocation(line: 518, column: 9, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1420, file: !1, line: 517, column: 34)
!1434 = !DILocation(line: 519, column: 5, scope: !1433)
!1435 = !DILocation(line: 382, column: 21, scope: !1086, inlinedAt: !1422)
!1436 = !DILocation(line: 382, column: 14, scope: !1086, inlinedAt: !1422)
!1437 = !DILocation(line: 382, column: 8, scope: !1086, inlinedAt: !1422)
!1438 = !DILocation(line: 382, column: 11, scope: !1086, inlinedAt: !1422)
!1439 = !DILocation(line: 383, column: 5, scope: !1086, inlinedAt: !1422)
!1440 = !DILocation(line: 520, column: 27, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1420, file: !1, line: 519, column: 12)
!1442 = !DILocation(line: 520, column: 9, scope: !1441)
!1443 = !DILocation(line: 522, column: 1, scope: !1397)
!1444 = !DILocation(line: 0, scope: !1404)
!1445 = distinct !DISubprogram(name: "randomkeyCommand", scope: !1, file: !1, line: 524, type: !471, isLocal: false, isDefinition: true, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1446)
!1446 = !{!1447, !1448}
!1447 = !DILocalVariable(name: "c", arg: 1, scope: !1445, file: !1, line: 524, type: !443)
!1448 = !DILocalVariable(name: "key", scope: !1445, file: !1, line: 525, type: !65)
!1449 = !DILocation(line: 524, column: 31, scope: !1445)
!1450 = !DILocation(line: 527, column: 31, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1445, file: !1, line: 527, column: 9)
!1452 = !DILocation(line: 527, column: 16, scope: !1451)
!1453 = !DILocation(line: 525, column: 11, scope: !1445)
!1454 = !DILocation(line: 527, column: 36, scope: !1451)
!1455 = !DILocation(line: 527, column: 9, scope: !1445)
!1456 = !DILocation(line: 528, column: 27, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1451, file: !1, line: 527, column: 45)
!1458 = !{!1143, !209, i64 80}
!1459 = !DILocation(line: 528, column: 9, scope: !1457)
!1460 = !DILocation(line: 529, column: 9, scope: !1457)
!1461 = !DILocation(line: 532, column: 5, scope: !1445)
!1462 = !DILocation(line: 533, column: 5, scope: !1445)
!1463 = !DILocation(line: 534, column: 1, scope: !1445)
!1464 = !DILocation(line: 0, scope: !1457)
!1465 = distinct !DISubprogram(name: "keysCommand", scope: !1, file: !1, line: 536, type: !471, isLocal: false, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1466)
!1466 = !{!1467, !1468, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1488}
!1467 = !DILocalVariable(name: "c", arg: 1, scope: !1465, file: !1, line: 536, type: !443)
!1468 = !DILocalVariable(name: "di", scope: !1465, file: !1, line: 537, type: !1469)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !100, line: 95, baseType: !1471)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !100, line: 88, size: 384, elements: !1472)
!1472 = !{!1473, !1474, !1475, !1476, !1477, !1478, !1479}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1471, file: !100, line: 89, baseType: !98, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1471, file: !100, line: 90, baseType: !12, size: 64, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !1471, file: !100, line: 91, baseType: !8, size: 32, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !1471, file: !100, line: 91, baseType: !8, size: 32, offset: 160)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1471, file: !100, line: 92, baseType: !136, size: 64, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !1471, file: !100, line: 92, baseType: !136, size: 64, offset: 256)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !1471, file: !100, line: 94, baseType: !165, size: 64, offset: 320)
!1480 = !DILocalVariable(name: "de", scope: !1465, file: !1, line: 538, type: !136)
!1481 = !DILocalVariable(name: "pattern", scope: !1465, file: !1, line: 539, type: !452)
!1482 = !DILocalVariable(name: "plen", scope: !1465, file: !1, line: 540, type: !8)
!1483 = !DILocalVariable(name: "allkeys", scope: !1465, file: !1, line: 540, type: !8)
!1484 = !DILocalVariable(name: "numkeys", scope: !1465, file: !1, line: 541, type: !11)
!1485 = !DILocalVariable(name: "replylen", scope: !1465, file: !1, line: 542, type: !4)
!1486 = !DILocalVariable(name: "key", scope: !1487, file: !1, line: 547, type: !452)
!1487 = distinct !DILexicalBlock(scope: !1465, file: !1, line: 546, column: 40)
!1488 = !DILocalVariable(name: "keyobj", scope: !1487, file: !1, line: 548, type: !65)
!1489 = !DILocation(line: 536, column: 26, scope: !1465)
!1490 = !DILocation(line: 539, column: 22, scope: !1465)
!1491 = !DILocation(line: 539, column: 19, scope: !1465)
!1492 = !DILocation(line: 539, column: 31, scope: !1465)
!1493 = !DILocation(line: 539, column: 9, scope: !1465)
!1494 = !DILocation(line: 87, column: 39, scope: !809, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 540, column: 16, scope: !1465)
!1496 = !DILocation(line: 88, column: 27, scope: !809, inlinedAt: !1495)
!1497 = !DILocation(line: 88, column: 19, scope: !809, inlinedAt: !1495)
!1498 = !DILocation(line: 89, column: 5, scope: !809, inlinedAt: !1495)
!1499 = !DILocation(line: 91, column: 20, scope: !823, inlinedAt: !1495)
!1500 = !DILocation(line: 91, column: 13, scope: !823, inlinedAt: !1495)
!1501 = !DILocation(line: 93, column: 20, scope: !823, inlinedAt: !1495)
!1502 = !DILocation(line: 93, column: 34, scope: !823, inlinedAt: !1495)
!1503 = !DILocation(line: 93, column: 13, scope: !823, inlinedAt: !1495)
!1504 = !DILocation(line: 95, column: 20, scope: !823, inlinedAt: !1495)
!1505 = !DILocation(line: 95, column: 35, scope: !823, inlinedAt: !1495)
!1506 = !DILocation(line: 95, column: 13, scope: !823, inlinedAt: !1495)
!1507 = !DILocation(line: 97, column: 20, scope: !823, inlinedAt: !1495)
!1508 = !DILocation(line: 97, column: 35, scope: !823, inlinedAt: !1495)
!1509 = !DILocation(line: 97, column: 13, scope: !823, inlinedAt: !1495)
!1510 = !DILocation(line: 99, column: 20, scope: !823, inlinedAt: !1495)
!1511 = !DILocation(line: 99, column: 35, scope: !823, inlinedAt: !1495)
!1512 = !DILocation(line: 99, column: 13, scope: !823, inlinedAt: !1495)
!1513 = !DILocation(line: 0, scope: !823, inlinedAt: !1495)
!1514 = !DILocation(line: 0, scope: !1465)
!1515 = !DILocation(line: 102, column: 1, scope: !809, inlinedAt: !1495)
!1516 = !DILocation(line: 540, column: 16, scope: !1465)
!1517 = !DILocation(line: 540, column: 9, scope: !1465)
!1518 = !DILocation(line: 541, column: 19, scope: !1465)
!1519 = !DILocation(line: 542, column: 22, scope: !1465)
!1520 = !DILocation(line: 542, column: 11, scope: !1465)
!1521 = !DILocation(line: 544, column: 33, scope: !1465)
!1522 = !DILocation(line: 544, column: 37, scope: !1465)
!1523 = !DILocation(line: 544, column: 10, scope: !1465)
!1524 = !DILocation(line: 537, column: 19, scope: !1465)
!1525 = !DILocation(line: 545, column: 16, scope: !1465)
!1526 = !DILocation(line: 545, column: 27, scope: !1465)
!1527 = !DILocation(line: 545, column: 34, scope: !1465)
!1528 = !DILocation(line: 545, column: 37, scope: !1465)
!1529 = !DILocation(line: 545, column: 48, scope: !1465)
!1530 = !DILocation(line: 546, column: 5, scope: !1465)
!1531 = !DILocation(line: 546, column: 17, scope: !1465)
!1532 = !DILocation(line: 538, column: 16, scope: !1465)
!1533 = !DILocation(line: 546, column: 31, scope: !1465)
!1534 = !DILocation(line: 547, column: 19, scope: !1487)
!1535 = !DILocation(line: 547, column: 13, scope: !1487)
!1536 = !DILocation(line: 550, column: 21, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1487, file: !1, line: 550, column: 13)
!1538 = !DILocation(line: 88, column: 27, scope: !809, inlinedAt: !1539)
!1539 = distinct !DILocation(line: 551, column: 45, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1537, file: !1, line: 550, column: 72)
!1541 = !DILocation(line: 87, column: 39, scope: !809, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 550, column: 56, scope: !1537)
!1543 = !DILocation(line: 88, column: 27, scope: !809, inlinedAt: !1542)
!1544 = !DILocation(line: 88, column: 19, scope: !809, inlinedAt: !1542)
!1545 = !DILocation(line: 89, column: 5, scope: !809, inlinedAt: !1542)
!1546 = !DILocation(line: 91, column: 20, scope: !823, inlinedAt: !1542)
!1547 = !DILocation(line: 91, column: 13, scope: !823, inlinedAt: !1542)
!1548 = !DILocation(line: 93, column: 20, scope: !823, inlinedAt: !1542)
!1549 = !DILocation(line: 93, column: 34, scope: !823, inlinedAt: !1542)
!1550 = !DILocation(line: 93, column: 13, scope: !823, inlinedAt: !1542)
!1551 = !DILocation(line: 95, column: 20, scope: !823, inlinedAt: !1542)
!1552 = !DILocation(line: 95, column: 35, scope: !823, inlinedAt: !1542)
!1553 = !DILocation(line: 95, column: 13, scope: !823, inlinedAt: !1542)
!1554 = !DILocation(line: 97, column: 20, scope: !823, inlinedAt: !1542)
!1555 = !DILocation(line: 97, column: 35, scope: !823, inlinedAt: !1542)
!1556 = !DILocation(line: 97, column: 13, scope: !823, inlinedAt: !1542)
!1557 = !DILocation(line: 99, column: 20, scope: !823, inlinedAt: !1542)
!1558 = !DILocation(line: 99, column: 35, scope: !823, inlinedAt: !1542)
!1559 = !DILocation(line: 99, column: 13, scope: !823, inlinedAt: !1542)
!1560 = !DILocation(line: 0, scope: !823, inlinedAt: !1542)
!1561 = !DILocation(line: 0, scope: !1537)
!1562 = !DILocation(line: 102, column: 1, scope: !809, inlinedAt: !1542)
!1563 = !DILocation(line: 550, column: 56, scope: !1537)
!1564 = !DILocation(line: 550, column: 24, scope: !1537)
!1565 = !DILocation(line: 550, column: 13, scope: !1487)
!1566 = !DILocation(line: 87, column: 39, scope: !809, inlinedAt: !1539)
!1567 = !DILocation(line: 88, column: 19, scope: !809, inlinedAt: !1539)
!1568 = !DILocation(line: 89, column: 5, scope: !809, inlinedAt: !1539)
!1569 = !DILocation(line: 91, column: 20, scope: !823, inlinedAt: !1539)
!1570 = !DILocation(line: 91, column: 13, scope: !823, inlinedAt: !1539)
!1571 = !DILocation(line: 93, column: 20, scope: !823, inlinedAt: !1539)
!1572 = !DILocation(line: 93, column: 34, scope: !823, inlinedAt: !1539)
!1573 = !DILocation(line: 93, column: 13, scope: !823, inlinedAt: !1539)
!1574 = !DILocation(line: 95, column: 20, scope: !823, inlinedAt: !1539)
!1575 = !DILocation(line: 95, column: 35, scope: !823, inlinedAt: !1539)
!1576 = !DILocation(line: 95, column: 13, scope: !823, inlinedAt: !1539)
!1577 = !DILocation(line: 97, column: 20, scope: !823, inlinedAt: !1539)
!1578 = !DILocation(line: 97, column: 35, scope: !823, inlinedAt: !1539)
!1579 = !DILocation(line: 97, column: 13, scope: !823, inlinedAt: !1539)
!1580 = !DILocation(line: 99, column: 20, scope: !823, inlinedAt: !1539)
!1581 = !DILocation(line: 99, column: 35, scope: !823, inlinedAt: !1539)
!1582 = !DILocation(line: 99, column: 13, scope: !823, inlinedAt: !1539)
!1583 = !DILocation(line: 0, scope: !823, inlinedAt: !1539)
!1584 = !DILocation(line: 0, scope: !1540)
!1585 = !DILocation(line: 102, column: 1, scope: !809, inlinedAt: !1539)
!1586 = !DILocation(line: 551, column: 22, scope: !1540)
!1587 = !DILocation(line: 548, column: 15, scope: !1487)
!1588 = !DILocation(line: 552, column: 34, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1540, file: !1, line: 552, column: 17)
!1590 = !DILocation(line: 1130, column: 27, scope: !332, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 552, column: 18, scope: !1589)
!1592 = !DILocation(line: 1130, column: 37, scope: !332, inlinedAt: !1591)
!1593 = !DILocation(line: 1131, column: 21, scope: !332, inlinedAt: !1591)
!1594 = !DILocation(line: 1131, column: 14, scope: !332, inlinedAt: !1591)
!1595 = !DILocation(line: 1133, column: 14, scope: !345, inlinedAt: !1591)
!1596 = !DILocation(line: 1133, column: 9, scope: !332, inlinedAt: !1591)
!1597 = !DILocation(line: 1136, column: 16, scope: !348, inlinedAt: !1591)
!1598 = !DILocation(line: 1136, column: 9, scope: !348, inlinedAt: !1591)
!1599 = !DILocation(line: 1136, column: 9, scope: !332, inlinedAt: !1591)
!1600 = !DILocation(line: 1143, column: 27, scope: !332, inlinedAt: !1591)
!1601 = !DILocation(line: 1143, column: 20, scope: !332, inlinedAt: !1591)
!1602 = !DILocation(line: 1143, column: 47, scope: !332, inlinedAt: !1591)
!1603 = !DILocation(line: 1143, column: 64, scope: !332, inlinedAt: !1591)
!1604 = !DILocation(line: 0, scope: !1589)
!1605 = !DILocation(line: 1146, column: 1, scope: !332, inlinedAt: !1591)
!1606 = !DILocation(line: 552, column: 17, scope: !1540)
!1607 = !DILocation(line: 1143, column: 14, scope: !332, inlinedAt: !1591)
!1608 = !DILocation(line: 1145, column: 16, scope: !332, inlinedAt: !1591)
!1609 = !DILocation(line: 553, column: 17, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1589, file: !1, line: 552, column: 46)
!1611 = !DILocation(line: 554, column: 24, scope: !1610)
!1612 = !DILocation(line: 555, column: 13, scope: !1610)
!1613 = !DILocation(line: 0, scope: !1610)
!1614 = !DILocation(line: 556, column: 13, scope: !1540)
!1615 = !DILocation(line: 557, column: 9, scope: !1540)
!1616 = distinct !{!1616, !1530, !1617}
!1617 = !DILocation(line: 558, column: 5, scope: !1465)
!1618 = !DILocation(line: 559, column: 5, scope: !1465)
!1619 = !DILocation(line: 560, column: 5, scope: !1465)
!1620 = !DILocation(line: 561, column: 1, scope: !1465)
!1621 = !DILocation(line: 1130, column: 27, scope: !332)
!1622 = !DILocation(line: 1130, column: 37, scope: !332)
!1623 = !DILocation(line: 1131, column: 21, scope: !332)
!1624 = !DILocation(line: 1131, column: 14, scope: !332)
!1625 = !DILocation(line: 1133, column: 14, scope: !345)
!1626 = !DILocation(line: 1133, column: 9, scope: !332)
!1627 = !DILocation(line: 1136, column: 16, scope: !348)
!1628 = !DILocation(line: 1136, column: 9, scope: !348)
!1629 = !DILocation(line: 1136, column: 9, scope: !332)
!1630 = !DILocation(line: 1143, column: 27, scope: !332)
!1631 = !DILocation(line: 1143, column: 20, scope: !332)
!1632 = !DILocation(line: 1143, column: 47, scope: !332)
!1633 = !DILocation(line: 1143, column: 64, scope: !332)
!1634 = !DILocation(line: 1143, column: 14, scope: !332)
!1635 = !DILocation(line: 1145, column: 16, scope: !332)
!1636 = !DILocation(line: 0, scope: !332)
!1637 = !DILocation(line: 1146, column: 1, scope: !332)
!1638 = distinct !DISubprogram(name: "scanCallback", scope: !1, file: !1, line: 565, type: !1639, isLocal: false, isDefinition: true, scopeLine: 565, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1643)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{null, !4, !1641}
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!1643 = !{!1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1654, !1657, !1660, !1661}
!1644 = !DILocalVariable(name: "privdata", arg: 1, scope: !1638, file: !1, line: 565, type: !4)
!1645 = !DILocalVariable(name: "de", arg: 2, scope: !1638, file: !1, line: 565, type: !1641)
!1646 = !DILocalVariable(name: "pd", scope: !1638, file: !1, line: 566, type: !5)
!1647 = !DILocalVariable(name: "keys", scope: !1638, file: !1, line: 567, type: !167)
!1648 = !DILocalVariable(name: "o", scope: !1638, file: !1, line: 568, type: !65)
!1649 = !DILocalVariable(name: "key", scope: !1638, file: !1, line: 569, type: !65)
!1650 = !DILocalVariable(name: "val", scope: !1638, file: !1, line: 569, type: !65)
!1651 = !DILocalVariable(name: "sdskey", scope: !1652, file: !1, line: 572, type: !452)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !1, line: 571, column: 20)
!1653 = distinct !DILexicalBlock(scope: !1638, file: !1, line: 571, column: 9)
!1654 = !DILocalVariable(name: "keysds", scope: !1655, file: !1, line: 575, type: !452)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !1, line: 574, column: 36)
!1656 = distinct !DILexicalBlock(scope: !1653, file: !1, line: 574, column: 16)
!1657 = !DILocalVariable(name: "sdskey", scope: !1658, file: !1, line: 578, type: !452)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !1, line: 577, column: 37)
!1659 = distinct !DILexicalBlock(scope: !1656, file: !1, line: 577, column: 16)
!1660 = !DILocalVariable(name: "sdsval", scope: !1658, file: !1, line: 579, type: !452)
!1661 = !DILocalVariable(name: "sdskey", scope: !1662, file: !1, line: 583, type: !452)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !1, line: 582, column: 37)
!1663 = distinct !DILexicalBlock(scope: !1659, file: !1, line: 582, column: 16)
!1664 = !DILocation(line: 565, column: 25, scope: !1638)
!1665 = !DILocation(line: 565, column: 52, scope: !1638)
!1666 = !DILocation(line: 566, column: 12, scope: !1638)
!1667 = !DILocation(line: 567, column: 18, scope: !1638)
!1668 = !DILocation(line: 567, column: 11, scope: !1638)
!1669 = !DILocation(line: 568, column: 15, scope: !1638)
!1670 = !DILocation(line: 568, column: 11, scope: !1638)
!1671 = !DILocation(line: 569, column: 17, scope: !1638)
!1672 = !DILocation(line: 571, column: 11, scope: !1653)
!1673 = !DILocation(line: 571, column: 9, scope: !1638)
!1674 = !DILocation(line: 572, column: 22, scope: !1652)
!1675 = !DILocation(line: 572, column: 13, scope: !1652)
!1676 = !DILocation(line: 87, column: 39, scope: !809, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 573, column: 42, scope: !1652)
!1678 = !DILocation(line: 88, column: 27, scope: !809, inlinedAt: !1677)
!1679 = !DILocation(line: 88, column: 19, scope: !809, inlinedAt: !1677)
!1680 = !DILocation(line: 89, column: 5, scope: !809, inlinedAt: !1677)
!1681 = !DILocation(line: 91, column: 20, scope: !823, inlinedAt: !1677)
!1682 = !DILocation(line: 91, column: 13, scope: !823, inlinedAt: !1677)
!1683 = !DILocation(line: 93, column: 20, scope: !823, inlinedAt: !1677)
!1684 = !DILocation(line: 93, column: 34, scope: !823, inlinedAt: !1677)
!1685 = !DILocation(line: 93, column: 13, scope: !823, inlinedAt: !1677)
!1686 = !DILocation(line: 95, column: 20, scope: !823, inlinedAt: !1677)
!1687 = !DILocation(line: 95, column: 35, scope: !823, inlinedAt: !1677)
!1688 = !DILocation(line: 95, column: 13, scope: !823, inlinedAt: !1677)
!1689 = !DILocation(line: 97, column: 20, scope: !823, inlinedAt: !1677)
!1690 = !DILocation(line: 97, column: 35, scope: !823, inlinedAt: !1677)
!1691 = !DILocation(line: 97, column: 13, scope: !823, inlinedAt: !1677)
!1692 = !DILocation(line: 99, column: 20, scope: !823, inlinedAt: !1677)
!1693 = !DILocation(line: 99, column: 35, scope: !823, inlinedAt: !1677)
!1694 = !DILocation(line: 99, column: 13, scope: !823, inlinedAt: !1677)
!1695 = !DILocation(line: 0, scope: !823, inlinedAt: !1677)
!1696 = !DILocation(line: 0, scope: !1652)
!1697 = !DILocation(line: 102, column: 1, scope: !809, inlinedAt: !1677)
!1698 = !DILocation(line: 573, column: 15, scope: !1652)
!1699 = !DILocation(line: 569, column: 11, scope: !1638)
!1700 = !DILocation(line: 574, column: 5, scope: !1652)
!1701 = !DILocation(line: 574, column: 19, scope: !1656)
!1702 = !DILocation(line: 574, column: 24, scope: !1656)
!1703 = !DILocation(line: 574, column: 16, scope: !1653)
!1704 = !DILocation(line: 575, column: 22, scope: !1655)
!1705 = !DILocation(line: 575, column: 13, scope: !1655)
!1706 = !DILocation(line: 87, column: 39, scope: !809, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 576, column: 41, scope: !1655)
!1708 = !DILocation(line: 88, column: 27, scope: !809, inlinedAt: !1707)
!1709 = !DILocation(line: 88, column: 19, scope: !809, inlinedAt: !1707)
!1710 = !DILocation(line: 89, column: 5, scope: !809, inlinedAt: !1707)
!1711 = !DILocation(line: 91, column: 20, scope: !823, inlinedAt: !1707)
!1712 = !DILocation(line: 91, column: 13, scope: !823, inlinedAt: !1707)
!1713 = !DILocation(line: 93, column: 20, scope: !823, inlinedAt: !1707)
!1714 = !DILocation(line: 93, column: 34, scope: !823, inlinedAt: !1707)
!1715 = !DILocation(line: 93, column: 13, scope: !823, inlinedAt: !1707)
!1716 = !DILocation(line: 95, column: 20, scope: !823, inlinedAt: !1707)
!1717 = !DILocation(line: 95, column: 35, scope: !823, inlinedAt: !1707)
!1718 = !DILocation(line: 95, column: 13, scope: !823, inlinedAt: !1707)
!1719 = !DILocation(line: 97, column: 20, scope: !823, inlinedAt: !1707)
!1720 = !DILocation(line: 97, column: 35, scope: !823, inlinedAt: !1707)
!1721 = !DILocation(line: 97, column: 13, scope: !823, inlinedAt: !1707)
!1722 = !DILocation(line: 99, column: 20, scope: !823, inlinedAt: !1707)
!1723 = !DILocation(line: 99, column: 35, scope: !823, inlinedAt: !1707)
!1724 = !DILocation(line: 99, column: 13, scope: !823, inlinedAt: !1707)
!1725 = !DILocation(line: 0, scope: !823, inlinedAt: !1707)
!1726 = !DILocation(line: 0, scope: !1655)
!1727 = !DILocation(line: 102, column: 1, scope: !809, inlinedAt: !1707)
!1728 = !DILocation(line: 576, column: 15, scope: !1655)
!1729 = !DILocation(line: 577, column: 5, scope: !1655)
!1730 = !DILocation(line: 577, column: 24, scope: !1659)
!1731 = !DILocation(line: 577, column: 16, scope: !1656)
!1732 = !DILocation(line: 578, column: 22, scope: !1658)
!1733 = !DILocation(line: 578, column: 13, scope: !1658)
!1734 = !DILocation(line: 579, column: 22, scope: !1658)
!1735 = !DILocation(line: 579, column: 13, scope: !1658)
!1736 = !DILocation(line: 87, column: 39, scope: !809, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 580, column: 41, scope: !1658)
!1738 = !DILocation(line: 88, column: 27, scope: !809, inlinedAt: !1737)
!1739 = !DILocation(line: 88, column: 19, scope: !809, inlinedAt: !1737)
!1740 = !DILocation(line: 89, column: 5, scope: !809, inlinedAt: !1737)
!1741 = !DILocation(line: 91, column: 20, scope: !823, inlinedAt: !1737)
!1742 = !DILocation(line: 91, column: 13, scope: !823, inlinedAt: !1737)
!1743 = !DILocation(line: 93, column: 20, scope: !823, inlinedAt: !1737)
!1744 = !DILocation(line: 93, column: 34, scope: !823, inlinedAt: !1737)
!1745 = !DILocation(line: 93, column: 13, scope: !823, inlinedAt: !1737)
!1746 = !DILocation(line: 95, column: 20, scope: !823, inlinedAt: !1737)
!1747 = !DILocation(line: 95, column: 35, scope: !823, inlinedAt: !1737)
!1748 = !DILocation(line: 95, column: 13, scope: !823, inlinedAt: !1737)
!1749 = !DILocation(line: 97, column: 20, scope: !823, inlinedAt: !1737)
!1750 = !DILocation(line: 97, column: 35, scope: !823, inlinedAt: !1737)
!1751 = !DILocation(line: 97, column: 13, scope: !823, inlinedAt: !1737)
!1752 = !DILocation(line: 99, column: 20, scope: !823, inlinedAt: !1737)
!1753 = !DILocation(line: 99, column: 35, scope: !823, inlinedAt: !1737)
!1754 = !DILocation(line: 99, column: 13, scope: !823, inlinedAt: !1737)
!1755 = !DILocation(line: 0, scope: !823, inlinedAt: !1737)
!1756 = !DILocation(line: 0, scope: !1658)
!1757 = !DILocation(line: 102, column: 1, scope: !809, inlinedAt: !1737)
!1758 = !DILocation(line: 580, column: 15, scope: !1658)
!1759 = !DILocation(line: 87, column: 39, scope: !809, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 581, column: 41, scope: !1658)
!1761 = !DILocation(line: 88, column: 27, scope: !809, inlinedAt: !1760)
!1762 = !DILocation(line: 88, column: 19, scope: !809, inlinedAt: !1760)
!1763 = !DILocation(line: 89, column: 5, scope: !809, inlinedAt: !1760)
!1764 = !DILocation(line: 91, column: 20, scope: !823, inlinedAt: !1760)
!1765 = !DILocation(line: 91, column: 13, scope: !823, inlinedAt: !1760)
!1766 = !DILocation(line: 93, column: 20, scope: !823, inlinedAt: !1760)
!1767 = !DILocation(line: 93, column: 34, scope: !823, inlinedAt: !1760)
!1768 = !DILocation(line: 93, column: 13, scope: !823, inlinedAt: !1760)
!1769 = !DILocation(line: 95, column: 20, scope: !823, inlinedAt: !1760)
!1770 = !DILocation(line: 95, column: 35, scope: !823, inlinedAt: !1760)
!1771 = !DILocation(line: 95, column: 13, scope: !823, inlinedAt: !1760)
!1772 = !DILocation(line: 97, column: 20, scope: !823, inlinedAt: !1760)
!1773 = !DILocation(line: 97, column: 35, scope: !823, inlinedAt: !1760)
!1774 = !DILocation(line: 97, column: 13, scope: !823, inlinedAt: !1760)
!1775 = !DILocation(line: 99, column: 20, scope: !823, inlinedAt: !1760)
!1776 = !DILocation(line: 99, column: 35, scope: !823, inlinedAt: !1760)
!1777 = !DILocation(line: 99, column: 13, scope: !823, inlinedAt: !1760)
!1778 = !DILocation(line: 0, scope: !823, inlinedAt: !1760)
!1779 = !DILocation(line: 102, column: 1, scope: !809, inlinedAt: !1760)
!1780 = !DILocation(line: 581, column: 15, scope: !1658)
!1781 = !DILocation(line: 582, column: 5, scope: !1658)
!1782 = !DILocation(line: 582, column: 24, scope: !1663)
!1783 = !DILocation(line: 582, column: 16, scope: !1659)
!1784 = !DILocation(line: 583, column: 22, scope: !1662)
!1785 = !DILocation(line: 583, column: 13, scope: !1662)
!1786 = !DILocation(line: 87, column: 39, scope: !809, inlinedAt: !1787)
!1787 = distinct !DILocation(line: 584, column: 41, scope: !1662)
!1788 = !DILocation(line: 88, column: 27, scope: !809, inlinedAt: !1787)
!1789 = !DILocation(line: 88, column: 19, scope: !809, inlinedAt: !1787)
!1790 = !DILocation(line: 89, column: 5, scope: !809, inlinedAt: !1787)
!1791 = !DILocation(line: 91, column: 20, scope: !823, inlinedAt: !1787)
!1792 = !DILocation(line: 91, column: 13, scope: !823, inlinedAt: !1787)
!1793 = !DILocation(line: 93, column: 20, scope: !823, inlinedAt: !1787)
!1794 = !DILocation(line: 93, column: 34, scope: !823, inlinedAt: !1787)
!1795 = !DILocation(line: 93, column: 13, scope: !823, inlinedAt: !1787)
!1796 = !DILocation(line: 95, column: 20, scope: !823, inlinedAt: !1787)
!1797 = !DILocation(line: 95, column: 35, scope: !823, inlinedAt: !1787)
!1798 = !DILocation(line: 95, column: 13, scope: !823, inlinedAt: !1787)
!1799 = !DILocation(line: 97, column: 20, scope: !823, inlinedAt: !1787)
!1800 = !DILocation(line: 97, column: 35, scope: !823, inlinedAt: !1787)
!1801 = !DILocation(line: 97, column: 13, scope: !823, inlinedAt: !1787)
!1802 = !DILocation(line: 99, column: 20, scope: !823, inlinedAt: !1787)
!1803 = !DILocation(line: 99, column: 35, scope: !823, inlinedAt: !1787)
!1804 = !DILocation(line: 99, column: 13, scope: !823, inlinedAt: !1787)
!1805 = !DILocation(line: 0, scope: !823, inlinedAt: !1787)
!1806 = !DILocation(line: 0, scope: !1662)
!1807 = !DILocation(line: 102, column: 1, scope: !809, inlinedAt: !1787)
!1808 = !DILocation(line: 584, column: 15, scope: !1662)
!1809 = !DILocation(line: 585, column: 58, scope: !1662)
!1810 = !DILocation(line: 585, column: 48, scope: !1662)
!1811 = !{!229, !229, i64 0}
!1812 = !DILocation(line: 585, column: 15, scope: !1662)
!1813 = !DILocation(line: 587, column: 9, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1663, file: !1, line: 586, column: 12)
!1815 = !DILocation(line: 590, column: 27, scope: !1638)
!1816 = !DILocation(line: 590, column: 5, scope: !1638)
!1817 = !DILocation(line: 591, column: 9, scope: !1638)
!1818 = !DILocation(line: 591, column: 9, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1638, file: !1, line: 591, column: 9)
!1820 = !DILocation(line: 591, column: 36, scope: !1819)
!1821 = !DILocation(line: 591, column: 14, scope: !1819)
!1822 = !DILocation(line: 0, scope: !1819)
!1823 = !DILocation(line: 592, column: 1, scope: !1638)
!1824 = distinct !DISubprogram(name: "parseScanCursorOrReply", scope: !1, file: !1, line: 598, type: !1825, isLocal: false, isDefinition: true, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1828)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!8, !443, !65, !1827}
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!1828 = !{!1829, !1830, !1831, !1832}
!1829 = !DILocalVariable(name: "c", arg: 1, scope: !1824, file: !1, line: 598, type: !443)
!1830 = !DILocalVariable(name: "o", arg: 2, scope: !1824, file: !1, line: 598, type: !65)
!1831 = !DILocalVariable(name: "cursor", arg: 3, scope: !1824, file: !1, line: 598, type: !1827)
!1832 = !DILocalVariable(name: "eptr", scope: !1824, file: !1, line: 599, type: !9)
!1833 = !DILocation(line: 598, column: 36, scope: !1824)
!1834 = !DILocation(line: 598, column: 45, scope: !1824)
!1835 = !DILocation(line: 598, column: 63, scope: !1824)
!1836 = !DILocation(line: 599, column: 5, scope: !1824)
!1837 = !DILocation(line: 603, column: 5, scope: !1824)
!1838 = !DILocation(line: 603, column: 11, scope: !1824)
!1839 = !DILocation(line: 604, column: 26, scope: !1824)
!1840 = !DILocation(line: 599, column: 11, scope: !1824)
!1841 = !DILocation(line: 604, column: 15, scope: !1824)
!1842 = !DILocation(line: 604, column: 13, scope: !1824)
!1843 = !DILocation(line: 605, column: 9, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1824, file: !1, line: 605, column: 9)
!1845 = !DILocation(line: 605, column: 37, scope: !1844)
!1846 = !DILocation(line: 605, column: 40, scope: !1844)
!1847 = !DILocation(line: 605, column: 48, scope: !1844)
!1848 = !DILocation(line: 605, column: 56, scope: !1844)
!1849 = !DILocation(line: 605, column: 59, scope: !1844)
!1850 = !DILocation(line: 605, column: 65, scope: !1844)
!1851 = !DILocation(line: 605, column: 9, scope: !1824)
!1852 = !DILocation(line: 607, column: 9, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1844, file: !1, line: 606, column: 5)
!1854 = !DILocation(line: 608, column: 9, scope: !1853)
!1855 = !DILocation(line: 0, scope: !1824)
!1856 = !DILocation(line: 0, scope: !1853)
!1857 = !DILocation(line: 611, column: 1, scope: !1824)
!1858 = distinct !DISubprogram(name: "scanGenericCommand", scope: !1, file: !1, line: 624, type: !1859, isLocal: false, isDefinition: true, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1861)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{null, !443, !65, !11}
!1861 = !{!1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1907, !1911, !1912, !1915, !1916, !1920, !1921, !1922, !1923, !1925, !1926, !1934, !1935}
!1862 = !DILocalVariable(name: "c", arg: 1, scope: !1858, file: !1, line: 624, type: !443)
!1863 = !DILocalVariable(name: "o", arg: 2, scope: !1858, file: !1, line: 624, type: !65)
!1864 = !DILocalVariable(name: "cursor", arg: 3, scope: !1858, file: !1, line: 624, type: !11)
!1865 = !DILocalVariable(name: "i", scope: !1858, file: !1, line: 625, type: !8)
!1866 = !DILocalVariable(name: "j", scope: !1858, file: !1, line: 625, type: !8)
!1867 = !DILocalVariable(name: "keys", scope: !1858, file: !1, line: 626, type: !167)
!1868 = !DILocalVariable(name: "node", scope: !1858, file: !1, line: 627, type: !173)
!1869 = !DILocalVariable(name: "nextnode", scope: !1858, file: !1, line: 627, type: !173)
!1870 = !DILocalVariable(name: "count", scope: !1858, file: !1, line: 628, type: !12)
!1871 = !DILocalVariable(name: "pat", scope: !1858, file: !1, line: 629, type: !452)
!1872 = !DILocalVariable(name: "patlen", scope: !1858, file: !1, line: 630, type: !8)
!1873 = !DILocalVariable(name: "use_pattern", scope: !1858, file: !1, line: 630, type: !8)
!1874 = !DILocalVariable(name: "ht", scope: !1858, file: !1, line: 631, type: !98)
!1875 = !DILocalVariable(name: "zs", scope: !1876, file: !1, line: 690, type: !1881)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !1, line: 689, column: 77)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !1, line: 689, column: 16)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !1, line: 686, column: 16)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !1, line: 684, column: 16)
!1880 = distinct !DILexicalBlock(scope: !1858, file: !1, line: 682, column: 9)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "zset", file: !67, line: 829, baseType: !1883)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zset", file: !67, line: 826, size: 128, elements: !1884)
!1884 = !{!1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !1883, file: !67, line: 827, baseType: !98, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "zsl", scope: !1883, file: !67, line: 828, baseType: !1887, size: 64, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_typedef, name: "zskiplist", file: !67, line: 824, baseType: !1889)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplist", file: !67, line: 820, size: 256, elements: !1890)
!1890 = !{!1891, !1904, !1905, !1906}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1889, file: !67, line: 821, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistNode", file: !67, line: 810, size: 192, elements: !1894)
!1894 = !{!1895, !1896, !1897, !1898}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "ele", scope: !1893, file: !67, line: 811, baseType: !452, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "score", scope: !1893, file: !67, line: 812, baseType: !7, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "backward", scope: !1893, file: !67, line: 813, baseType: !1892, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1893, file: !67, line: 817, baseType: !1899, offset: 192)
!1899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1900, elements: !27)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistLevel", file: !67, line: 814, size: 128, elements: !1901)
!1901 = !{!1902, !1903}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1900, file: !67, line: 815, baseType: !1892, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "span", scope: !1900, file: !67, line: 816, baseType: !11, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1889, file: !67, line: 821, baseType: !1892, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1889, file: !67, line: 822, baseType: !11, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1889, file: !67, line: 823, baseType: !8, size: 32, offset: 192)
!1907 = !DILocalVariable(name: "privdata", scope: !1908, file: !1, line: 696, type: !1910)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !1, line: 695, column: 13)
!1909 = distinct !DILexicalBlock(scope: !1858, file: !1, line: 695, column: 9)
!1910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !155)
!1911 = !DILocalVariable(name: "maxiterations", scope: !1908, file: !1, line: 701, type: !12)
!1912 = !DILocalVariable(name: "pos", scope: !1913, file: !1, line: 714, type: !8)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !1, line: 713, column: 36)
!1914 = distinct !DILexicalBlock(scope: !1909, file: !1, line: 713, column: 16)
!1915 = !DILocalVariable(name: "ll", scope: !1913, file: !1, line: 715, type: !147)
!1916 = !DILocalVariable(name: "p", scope: !1917, file: !1, line: 721, type: !1919)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !1, line: 720, column: 60)
!1918 = distinct !DILexicalBlock(scope: !1914, file: !1, line: 720, column: 16)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!1920 = !DILocalVariable(name: "vstr", scope: !1917, file: !1, line: 722, type: !1919)
!1921 = !DILocalVariable(name: "vlen", scope: !1917, file: !1, line: 723, type: !45)
!1922 = !DILocalVariable(name: "vll", scope: !1917, file: !1, line: 724, type: !165)
!1923 = !DILocalVariable(name: "kobj", scope: !1924, file: !1, line: 741, type: !65)
!1924 = distinct !DILexicalBlock(scope: !1858, file: !1, line: 740, column: 18)
!1925 = !DILocalVariable(name: "filter", scope: !1924, file: !1, line: 743, type: !8)
!1926 = !DILocalVariable(name: "buf", scope: !1927, file: !1, line: 751, type: !1931)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !1, line: 750, column: 20)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !1, line: 747, column: 17)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !1, line: 746, column: 37)
!1930 = distinct !DILexicalBlock(scope: !1924, file: !1, line: 746, column: 13)
!1931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 168, elements: !1932)
!1932 = !{!1933}
!1933 = !DISubrange(count: 21)
!1934 = !DILocalVariable(name: "len", scope: !1927, file: !1, line: 752, type: !8)
!1935 = !DILocalVariable(name: "kobj", scope: !1936, file: !1, line: 790, type: !65)
!1936 = distinct !DILexicalBlock(scope: !1858, file: !1, line: 789, column: 46)
!1937 = !DILocation(line: 624, column: 33, scope: !1858)
!1938 = !DILocation(line: 624, column: 42, scope: !1858)
!1939 = !DILocation(line: 624, column: 59, scope: !1858)
!1940 = !DILocation(line: 626, column: 18, scope: !1858)
!1941 = !DILocation(line: 626, column: 11, scope: !1858)
!1942 = !DILocation(line: 628, column: 5, scope: !1858)
!1943 = !DILocation(line: 628, column: 10, scope: !1858)
!1944 = !DILocation(line: 629, column: 9, scope: !1858)
!1945 = !DILocation(line: 630, column: 9, scope: !1858)
!1946 = !DILocation(line: 630, column: 21, scope: !1858)
!1947 = !DILocation(line: 635, column: 5, scope: !1858)
!1948 = !DILocation(line: 639, column: 9, scope: !1858)
!1949 = !DILocation(line: 625, column: 9, scope: !1858)
!1950 = !DILocation(line: 642, column: 5, scope: !1858)
!1951 = !DILocation(line: 642, column: 19, scope: !1858)
!1952 = !DILocation(line: 642, column: 14, scope: !1858)
!1953 = !DILocation(line: 643, column: 21, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1858, file: !1, line: 642, column: 25)
!1955 = !DILocation(line: 625, column: 12, scope: !1858)
!1956 = !DILocation(line: 644, column: 28, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1954, file: !1, line: 644, column: 13)
!1958 = !DILocation(line: 644, column: 25, scope: !1957)
!1959 = !DILocation(line: 644, column: 37, scope: !1957)
!1960 = !DILocation(line: 644, column: 14, scope: !1957)
!1961 = !DILocation(line: 644, column: 56, scope: !1957)
!1962 = !DILocation(line: 644, column: 51, scope: !1957)
!1963 = !DILocation(line: 645, column: 54, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !1, line: 645, column: 17)
!1965 = distinct !DILexicalBlock(scope: !1957, file: !1, line: 644, column: 62)
!1966 = !DILocation(line: 645, column: 45, scope: !1964)
!1967 = !DILocation(line: 645, column: 17, scope: !1964)
!1968 = !DILocation(line: 646, column: 17, scope: !1964)
!1969 = !DILocation(line: 645, column: 17, scope: !1965)
!1970 = !DILocation(line: 651, column: 17, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1965, file: !1, line: 651, column: 17)
!1972 = !DILocation(line: 651, column: 23, scope: !1971)
!1973 = !DILocation(line: 651, column: 17, scope: !1965)
!1974 = !DILocation(line: 652, column: 35, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1971, file: !1, line: 651, column: 28)
!1976 = !DILocation(line: 652, column: 17, scope: !1975)
!1977 = !DILocation(line: 653, column: 17, scope: !1975)
!1978 = !DILocation(line: 657, column: 9, scope: !1965)
!1979 = !DILocation(line: 657, column: 21, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1957, file: !1, line: 657, column: 20)
!1981 = !DILocation(line: 657, column: 58, scope: !1980)
!1982 = !DILocation(line: 658, column: 28, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1980, file: !1, line: 657, column: 69)
!1984 = !DILocation(line: 658, column: 19, scope: !1983)
!1985 = !DILocation(line: 658, column: 33, scope: !1983)
!1986 = !DILocation(line: 87, column: 39, scope: !809, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 659, column: 22, scope: !1983)
!1988 = !DILocation(line: 88, column: 27, scope: !809, inlinedAt: !1987)
!1989 = !DILocation(line: 88, column: 19, scope: !809, inlinedAt: !1987)
!1990 = !DILocation(line: 89, column: 5, scope: !809, inlinedAt: !1987)
!1991 = !DILocation(line: 91, column: 20, scope: !823, inlinedAt: !1987)
!1992 = !DILocation(line: 91, column: 13, scope: !823, inlinedAt: !1987)
!1993 = !DILocation(line: 93, column: 20, scope: !823, inlinedAt: !1987)
!1994 = !DILocation(line: 93, column: 34, scope: !823, inlinedAt: !1987)
!1995 = !DILocation(line: 93, column: 13, scope: !823, inlinedAt: !1987)
!1996 = !DILocation(line: 95, column: 20, scope: !823, inlinedAt: !1987)
!1997 = !DILocation(line: 95, column: 35, scope: !823, inlinedAt: !1987)
!1998 = !DILocation(line: 95, column: 13, scope: !823, inlinedAt: !1987)
!1999 = !DILocation(line: 97, column: 20, scope: !823, inlinedAt: !1987)
!2000 = !DILocation(line: 97, column: 35, scope: !823, inlinedAt: !1987)
!2001 = !DILocation(line: 97, column: 13, scope: !823, inlinedAt: !1987)
!2002 = !DILocation(line: 99, column: 20, scope: !823, inlinedAt: !1987)
!2003 = !DILocation(line: 99, column: 35, scope: !823, inlinedAt: !1987)
!2004 = !DILocation(line: 99, column: 13, scope: !823, inlinedAt: !1987)
!2005 = !DILocation(line: 0, scope: !823, inlinedAt: !1987)
!2006 = !DILocation(line: 0, scope: !1983)
!2007 = !DILocation(line: 102, column: 1, scope: !809, inlinedAt: !1987)
!2008 = !DILocation(line: 659, column: 22, scope: !1983)
!2009 = !DILocation(line: 663, column: 29, scope: !1983)
!2010 = !DILocation(line: 663, column: 36, scope: !1983)
!2011 = !DILocation(line: 663, column: 53, scope: !1983)
!2012 = !DILocation(line: 663, column: 27, scope: !1983)
!2013 = !DILocation(line: 667, column: 31, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1980, file: !1, line: 666, column: 16)
!2015 = !DILocation(line: 667, column: 13, scope: !2014)
!2016 = !DILocation(line: 668, column: 13, scope: !2014)
!2017 = distinct !{!2017, !1950, !2018}
!2018 = !DILocation(line: 670, column: 5, scope: !1858)
!2019 = !DILocation(line: 631, column: 11, scope: !1858)
!2020 = !DILocation(line: 682, column: 9, scope: !1858)
!2021 = !DILocation(line: 683, column: 17, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1880, file: !1, line: 682, column: 20)
!2023 = !DILocation(line: 683, column: 21, scope: !2022)
!2024 = !DILocation(line: 684, column: 5, scope: !2022)
!2025 = !DILocation(line: 684, column: 19, scope: !1879)
!2026 = !DILocation(line: 684, column: 24, scope: !1879)
!2027 = !DILocation(line: 684, column: 35, scope: !1879)
!2028 = !DILocation(line: 684, column: 41, scope: !1879)
!2029 = !DILocation(line: 684, column: 50, scope: !1879)
!2030 = !DILocation(line: 684, column: 16, scope: !1880)
!2031 = !DILocation(line: 686, column: 36, scope: !1878)
!2032 = !DILocation(line: 685, column: 17, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !1879, file: !1, line: 684, column: 70)
!2034 = !DILocation(line: 686, column: 5, scope: !2033)
!2035 = !DILocation(line: 686, column: 24, scope: !1878)
!2036 = !DILocation(line: 686, column: 42, scope: !1878)
!2037 = !DILocation(line: 686, column: 51, scope: !1878)
!2038 = !DILocation(line: 686, column: 16, scope: !1879)
!2039 = !DILocation(line: 687, column: 17, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1878, file: !1, line: 686, column: 71)
!2041 = !DILocation(line: 688, column: 15, scope: !2040)
!2042 = !DILocation(line: 689, column: 5, scope: !2040)
!2043 = !DILocation(line: 689, column: 36, scope: !1877)
!2044 = !DILocation(line: 689, column: 24, scope: !1877)
!2045 = !DILocation(line: 689, column: 42, scope: !1877)
!2046 = !DILocation(line: 689, column: 51, scope: !1877)
!2047 = !DILocation(line: 689, column: 16, scope: !1878)
!2048 = !DILocation(line: 690, column: 23, scope: !1876)
!2049 = !DILocation(line: 690, column: 15, scope: !1876)
!2050 = !DILocation(line: 691, column: 18, scope: !1876)
!2051 = !{!2052, !209, i64 0}
!2052 = !{!"zset", !209, i64 0, !209, i64 8}
!2053 = !DILocation(line: 692, column: 15, scope: !1876)
!2054 = !DILocation(line: 693, column: 5, scope: !1876)
!2055 = !DILocation(line: 695, column: 9, scope: !1858)
!2056 = !DILocation(line: 0, scope: !1858)
!2057 = !DILocation(line: 0, scope: !2022)
!2058 = !DILocation(line: 695, column: 9, scope: !1909)
!2059 = !DILocation(line: 713, column: 19, scope: !1914)
!2060 = !DILocation(line: 696, column: 9, scope: !1908)
!2061 = !DILocation(line: 696, column: 15, scope: !1908)
!2062 = !DILocation(line: 701, column: 35, scope: !1908)
!2063 = !DILocation(line: 701, column: 14, scope: !1908)
!2064 = !DILocation(line: 706, column: 21, scope: !1908)
!2065 = !DILocation(line: 707, column: 9, scope: !1908)
!2066 = !DILocation(line: 707, column: 21, scope: !1908)
!2067 = !DILocation(line: 708, column: 9, scope: !1908)
!2068 = !DILocation(line: 0, scope: !1908)
!2069 = !DILocation(line: 709, column: 22, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !1908, file: !1, line: 708, column: 12)
!2071 = !DILocation(line: 710, column: 18, scope: !1908)
!2072 = !DILocation(line: 710, column: 25, scope: !1908)
!2073 = !DILocation(line: 711, column: 28, scope: !1908)
!2074 = !DILocation(line: 711, column: 31, scope: !1908)
!2075 = !DILocation(line: 712, column: 15, scope: !1908)
!2076 = !{!2077, !228, i64 40}
!2077 = !{!"list", !209, i64 0, !209, i64 8, !209, i64 16, !209, i64 24, !209, i64 32, !228, i64 40}
!2078 = !DILocation(line: 712, column: 49, scope: !1908)
!2079 = !DILocation(line: 712, column: 32, scope: !1908)
!2080 = !DILocation(line: 710, column: 9, scope: !2070)
!2081 = distinct !{!2081, !2067, !2082}
!2082 = !DILocation(line: 712, column: 54, scope: !1908)
!2083 = !DILocation(line: 713, column: 5, scope: !1909)
!2084 = !DILocation(line: 713, column: 5, scope: !1908)
!2085 = !DILocation(line: 713, column: 24, scope: !1914)
!2086 = !DILocation(line: 713, column: 16, scope: !1909)
!2087 = !DILocation(line: 714, column: 13, scope: !1913)
!2088 = !DILocation(line: 715, column: 9, scope: !1913)
!2089 = !DILocation(line: 717, column: 9, scope: !1913)
!2090 = !DILocation(line: 717, column: 28, scope: !1913)
!2091 = !DILocation(line: 715, column: 17, scope: !1913)
!2092 = !DILocation(line: 717, column: 15, scope: !1913)
!2093 = !DILocation(line: 717, column: 35, scope: !1913)
!2094 = !DILocation(line: 718, column: 65, scope: !1913)
!2095 = !DILocation(line: 718, column: 34, scope: !1913)
!2096 = !DILocation(line: 718, column: 13, scope: !1913)
!2097 = distinct !{!2097, !2089, !2098}
!2098 = !DILocation(line: 718, column: 68, scope: !1913)
!2099 = !DILocation(line: 720, column: 5, scope: !1914)
!2100 = !DILocation(line: 720, column: 5, scope: !1913)
!2101 = !DILocation(line: 720, column: 24, scope: !1918)
!2102 = !DILocation(line: 720, column: 36, scope: !1918)
!2103 = !DILocation(line: 720, column: 47, scope: !1918)
!2104 = !DILocation(line: 720, column: 16, scope: !1914)
!2105 = !DILocation(line: 721, column: 44, scope: !1917)
!2106 = !DILocation(line: 721, column: 28, scope: !1917)
!2107 = !DILocation(line: 721, column: 24, scope: !1917)
!2108 = !DILocation(line: 722, column: 9, scope: !1917)
!2109 = !DILocation(line: 723, column: 9, scope: !1917)
!2110 = !DILocation(line: 724, column: 9, scope: !1917)
!2111 = !DILocation(line: 726, column: 9, scope: !1917)
!2112 = !DILocation(line: 722, column: 24, scope: !1917)
!2113 = !DILocation(line: 723, column: 22, scope: !1917)
!2114 = !DILocation(line: 724, column: 19, scope: !1917)
!2115 = !DILocation(line: 727, column: 13, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !1917, file: !1, line: 726, column: 18)
!2117 = !DILocation(line: 729, column: 18, scope: !2116)
!2118 = !DILocation(line: 729, column: 23, scope: !2116)
!2119 = !DILocation(line: 729, column: 17, scope: !2116)
!2120 = !DILocation(line: 729, column: 65, scope: !2116)
!2121 = !DILocation(line: 729, column: 34, scope: !2116)
!2122 = !DILocation(line: 730, column: 65, scope: !2116)
!2123 = !DILocation(line: 730, column: 34, scope: !2116)
!2124 = !DILocation(line: 728, column: 13, scope: !2116)
!2125 = !DILocation(line: 731, column: 32, scope: !2116)
!2126 = !DILocation(line: 731, column: 17, scope: !2116)
!2127 = distinct !{!2127, !2111, !2128}
!2128 = !DILocation(line: 732, column: 9, scope: !1917)
!2129 = !DILocation(line: 734, column: 5, scope: !1918)
!2130 = !DILocation(line: 735, column: 9, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !1918, file: !1, line: 734, column: 12)
!2132 = !DILocation(line: 0, scope: !1917)
!2133 = !DILocation(line: 739, column: 12, scope: !1858)
!2134 = !{!2077, !209, i64 0}
!2135 = !DILocation(line: 627, column: 15, scope: !1858)
!2136 = !DILocation(line: 740, column: 5, scope: !1858)
!2137 = !DILocation(line: 741, column: 22, scope: !1924)
!2138 = !{!2139, !209, i64 16}
!2139 = !{!"listNode", !209, i64 0, !209, i64 8, !209, i64 16}
!2140 = !DILocation(line: 741, column: 15, scope: !1924)
!2141 = !DILocation(line: 742, column: 20, scope: !1924)
!2142 = !{!2139, !209, i64 8}
!2143 = !DILocation(line: 627, column: 22, scope: !1858)
!2144 = !DILocation(line: 743, column: 13, scope: !1924)
!2145 = !DILocation(line: 746, column: 21, scope: !1930)
!2146 = !DILocation(line: 747, column: 17, scope: !1928)
!2147 = !DILocation(line: 747, column: 17, scope: !1929)
!2148 = !DILocation(line: 748, column: 56, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !1, line: 748, column: 21)
!2150 = distinct !DILexicalBlock(scope: !1928, file: !1, line: 747, column: 41)
!2151 = !DILocation(line: 87, column: 39, scope: !809, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 748, column: 61, scope: !2149)
!2153 = !DILocation(line: 88, column: 27, scope: !809, inlinedAt: !2152)
!2154 = !DILocation(line: 88, column: 19, scope: !809, inlinedAt: !2152)
!2155 = !DILocation(line: 89, column: 5, scope: !809, inlinedAt: !2152)
!2156 = !DILocation(line: 91, column: 20, scope: !823, inlinedAt: !2152)
!2157 = !DILocation(line: 91, column: 13, scope: !823, inlinedAt: !2152)
!2158 = !DILocation(line: 93, column: 20, scope: !823, inlinedAt: !2152)
!2159 = !DILocation(line: 93, column: 34, scope: !823, inlinedAt: !2152)
!2160 = !DILocation(line: 93, column: 13, scope: !823, inlinedAt: !2152)
!2161 = !DILocation(line: 95, column: 20, scope: !823, inlinedAt: !2152)
!2162 = !DILocation(line: 95, column: 35, scope: !823, inlinedAt: !2152)
!2163 = !DILocation(line: 95, column: 13, scope: !823, inlinedAt: !2152)
!2164 = !DILocation(line: 97, column: 20, scope: !823, inlinedAt: !2152)
!2165 = !DILocation(line: 97, column: 35, scope: !823, inlinedAt: !2152)
!2166 = !DILocation(line: 97, column: 13, scope: !823, inlinedAt: !2152)
!2167 = !DILocation(line: 99, column: 20, scope: !823, inlinedAt: !2152)
!2168 = !DILocation(line: 99, column: 35, scope: !823, inlinedAt: !2152)
!2169 = !DILocation(line: 99, column: 13, scope: !823, inlinedAt: !2152)
!2170 = !DILocation(line: 0, scope: !823, inlinedAt: !2152)
!2171 = !DILocation(line: 0, scope: !2149)
!2172 = !DILocation(line: 102, column: 1, scope: !809, inlinedAt: !2152)
!2173 = !DILocation(line: 748, column: 61, scope: !2149)
!2174 = !DILocation(line: 748, column: 22, scope: !2149)
!2175 = !DILocation(line: 748, column: 21, scope: !2150)
!2176 = !DILocation(line: 749, column: 21, scope: !2149)
!2177 = !DILocation(line: 761, column: 21, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !1924, file: !1, line: 761, column: 13)
!2179 = !DILocation(line: 751, column: 17, scope: !1927)
!2180 = !DILocation(line: 751, column: 22, scope: !1927)
!2181 = !DILocation(line: 754, column: 17, scope: !1927)
!2182 = !DILocation(line: 755, column: 61, scope: !1927)
!2183 = !DILocation(line: 755, column: 23, scope: !1927)
!2184 = !DILocation(line: 752, column: 21, scope: !1927)
!2185 = !DILocation(line: 756, column: 22, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !1927, file: !1, line: 756, column: 21)
!2187 = !DILocation(line: 756, column: 21, scope: !1927)
!2188 = !DILocation(line: 756, column: 64, scope: !2186)
!2189 = !DILocation(line: 0, scope: !2186)
!2190 = !DILocation(line: 757, column: 13, scope: !1928)
!2191 = !DILocation(line: 0, scope: !1924)
!2192 = !DILocation(line: 761, column: 14, scope: !2178)
!2193 = !DILocation(line: 761, column: 55, scope: !2178)
!2194 = !DILocation(line: 761, column: 37, scope: !2178)
!2195 = !DILocation(line: 761, column: 13, scope: !1924)
!2196 = !DILocation(line: 0, scope: !2178)
!2197 = !DILocation(line: 764, column: 13, scope: !1924)
!2198 = !DILocation(line: 765, column: 13, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !1, line: 764, column: 21)
!2200 = distinct !DILexicalBlock(scope: !1924, file: !1, line: 764, column: 13)
!2201 = !DILocation(line: 766, column: 13, scope: !2199)
!2202 = !DILocation(line: 767, column: 9, scope: !2199)
!2203 = !DILocation(line: 772, column: 15, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !1924, file: !1, line: 772, column: 13)
!2205 = !DILocation(line: 772, column: 22, scope: !2204)
!2206 = !DILocation(line: 772, column: 27, scope: !2204)
!2207 = !DILocation(line: 772, column: 39, scope: !2204)
!2208 = !DILocation(line: 772, column: 50, scope: !2204)
!2209 = !DILocation(line: 772, column: 13, scope: !1924)
!2210 = !DILocation(line: 774, column: 24, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2204, file: !1, line: 772, column: 64)
!2212 = !DILocation(line: 775, column: 17, scope: !2211)
!2213 = !DILocation(line: 776, column: 24, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !1, line: 775, column: 25)
!2215 = distinct !DILexicalBlock(scope: !2211, file: !1, line: 775, column: 17)
!2216 = !DILocation(line: 777, column: 17, scope: !2214)
!2217 = !DILocation(line: 778, column: 17, scope: !2214)
!2218 = !DILocation(line: 779, column: 13, scope: !2214)
!2219 = distinct !{!2219, !2136, !2220}
!2220 = !DILocation(line: 782, column: 5, scope: !1858)
!2221 = !DILocation(line: 785, column: 5, scope: !1858)
!2222 = !DILocation(line: 786, column: 5, scope: !1858)
!2223 = !DILocation(line: 788, column: 29, scope: !1858)
!2224 = !DILocation(line: 788, column: 5, scope: !1858)
!2225 = !DILocation(line: 789, column: 5, scope: !1858)
!2226 = !DILocation(line: 789, column: 20, scope: !1858)
!2227 = !DILocation(line: 789, column: 37, scope: !1858)
!2228 = !DILocation(line: 790, column: 22, scope: !1936)
!2229 = !DILocation(line: 790, column: 15, scope: !1936)
!2230 = !DILocation(line: 791, column: 9, scope: !1936)
!2231 = !DILocation(line: 792, column: 9, scope: !1936)
!2232 = !DILocation(line: 793, column: 9, scope: !1936)
!2233 = distinct !{!2233, !2225, !2234}
!2234 = !DILocation(line: 794, column: 5, scope: !1858)
!2235 = !DILocation(line: 797, column: 5, scope: !1858)
!2236 = !{!2077, !209, i64 24}
!2237 = !DILocation(line: 798, column: 5, scope: !1858)
!2238 = !DILocation(line: 799, column: 1, scope: !1858)
!2239 = distinct !DISubprogram(name: "scanCommand", scope: !1, file: !1, line: 802, type: !471, isLocal: false, isDefinition: true, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2240)
!2240 = !{!2241, !2242}
!2241 = !DILocalVariable(name: "c", arg: 1, scope: !2239, file: !1, line: 802, type: !443)
!2242 = !DILocalVariable(name: "cursor", scope: !2239, file: !1, line: 803, type: !11)
!2243 = !DILocation(line: 802, column: 26, scope: !2239)
!2244 = !DILocation(line: 803, column: 5, scope: !2239)
!2245 = !DILocation(line: 804, column: 37, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2239, file: !1, line: 804, column: 9)
!2247 = !DILocation(line: 804, column: 34, scope: !2246)
!2248 = !DILocation(line: 803, column: 19, scope: !2239)
!2249 = !DILocation(line: 804, column: 9, scope: !2246)
!2250 = !DILocation(line: 804, column: 54, scope: !2246)
!2251 = !DILocation(line: 804, column: 9, scope: !2239)
!2252 = !DILocation(line: 805, column: 31, scope: !2239)
!2253 = !DILocation(line: 805, column: 5, scope: !2239)
!2254 = !DILocation(line: 806, column: 1, scope: !2239)
!2255 = !DILocation(line: 0, scope: !2246)
!2256 = distinct !DISubprogram(name: "dbsizeCommand", scope: !1, file: !1, line: 808, type: !471, isLocal: false, isDefinition: true, scopeLine: 808, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2257)
!2257 = !{!2258}
!2258 = !DILocalVariable(name: "c", arg: 1, scope: !2256, file: !1, line: 808, type: !443)
!2259 = !DILocation(line: 808, column: 28, scope: !2256)
!2260 = !DILocation(line: 809, column: 24, scope: !2256)
!2261 = !DILocation(line: 809, column: 5, scope: !2256)
!2262 = !DILocation(line: 810, column: 1, scope: !2256)
!2263 = distinct !DISubprogram(name: "lastsaveCommand", scope: !1, file: !1, line: 812, type: !471, isLocal: false, isDefinition: true, scopeLine: 812, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2264)
!2264 = !{!2265}
!2265 = !DILocalVariable(name: "c", arg: 1, scope: !2263, file: !1, line: 812, type: !443)
!2266 = !DILocation(line: 812, column: 30, scope: !2263)
!2267 = !DILocation(line: 813, column: 31, scope: !2263)
!2268 = !{!227, !228, i64 2136}
!2269 = !DILocation(line: 813, column: 5, scope: !2263)
!2270 = !DILocation(line: 814, column: 1, scope: !2263)
!2271 = distinct !DISubprogram(name: "typeCommand", scope: !1, file: !1, line: 816, type: !471, isLocal: false, isDefinition: true, scopeLine: 816, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2272)
!2272 = !{!2273, !2274, !2275, !2276}
!2273 = !DILocalVariable(name: "c", arg: 1, scope: !2271, file: !1, line: 816, type: !443)
!2274 = !DILocalVariable(name: "o", scope: !2271, file: !1, line: 817, type: !65)
!2275 = !DILocalVariable(name: "type", scope: !2271, file: !1, line: 818, type: !9)
!2276 = !DILocalVariable(name: "mv", scope: !2277, file: !1, line: 832, type: !2281)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !1, line: 831, column: 26)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !1, line: 824, column: 25)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !1, line: 823, column: 12)
!2280 = distinct !DILexicalBlock(scope: !2271, file: !1, line: 821, column: 9)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleValue", file: !67, line: 550, baseType: !2283)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "moduleValue", file: !67, line: 547, size: 128, elements: !2284)
!2284 = !{!2285, !2614}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2283, file: !67, line: 548, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleType", file: !67, line: 530, baseType: !2288)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleType", file: !67, line: 517, size: 768, elements: !2289)
!2289 = !{!2290, !2291, !2294, !2569, !2574, !2579, !2584, !2597, !2599, !2604, !2609, !2610}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2288, file: !67, line: 518, baseType: !53, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2288, file: !67, line: 519, baseType: !2292, size: 64, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModule", file: !67, line: 496, flags: DIFlagFwdDecl)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "rdb_load", scope: !2288, file: !67, line: 520, baseType: !2295, size: 64, offset: 128)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeLoadFunc", file: !67, line: 506, baseType: !2296)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!4, !2299, !8}
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleIO", file: !67, line: 555, size: 384, elements: !2301)
!2301 = !{!2302, !2303, !2561, !2562, !2563, !2564, !2567}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !2300, file: !67, line: 556, baseType: !454, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "rio", scope: !2300, file: !67, line: 557, baseType: !2304, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "rio", file: !2306, line: 87, baseType: !2307)
!2306 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rio.h", directory: "/root/.unikraft/apps/redis/build")
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rio", file: !2306, line: 39, size: 832, elements: !2308)
!2308 = !{!2309, !2314, !2318, !2322, !2326, !2330, !2331, !2332, !2333}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2307, file: !2306, line: 43, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!812, !2313, !4, !812}
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2307, file: !2306, line: 44, baseType: !2315, size: 64, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!812, !2313, !112, !812}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "tell", scope: !2307, file: !2306, line: 45, baseType: !2319, size: 64, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!506, !2313}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2307, file: !2306, line: 46, baseType: !2323, size: 64, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!8, !2313}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "update_cksum", scope: !2307, file: !2306, line: 52, baseType: !2327, size: 64, offset: 256)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{null, !2313, !112, !812}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "cksum", scope: !2307, file: !2306, line: 55, baseType: !53, size: 64, offset: 320)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "processed_bytes", scope: !2307, file: !2306, line: 58, baseType: !812, size: 64, offset: 384)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "max_processing_chunk", scope: !2307, file: !2306, line: 61, baseType: !812, size: 64, offset: 448)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !2307, file: !2306, line: 84, baseType: !2334, size: 320, offset: 512)
!2334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2307, file: !2306, line: 64, size: 320, elements: !2335)
!2335 = !{!2336, !2341, !2553}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2334, file: !2306, line: 69, baseType: !2337, size: 128)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2334, file: !2306, line: 66, size: 128, elements: !2338)
!2338 = !{!2339, !2340}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2337, file: !2306, line: 67, baseType: !452, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2337, file: !2306, line: 68, baseType: !506, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2334, file: !2306, line: 75, baseType: !2342, size: 192)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2334, file: !2306, line: 71, size: 192, elements: !2343)
!2343 = !{!2344, !2551, !2552}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !2342, file: !2306, line: 72, baseType: !2345, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2347, line: 66, baseType: !2348)
!2347 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !2349, line: 287, baseType: !2350)
!2349 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !2349, line: 181, size: 1408, elements: !2351)
!2351 = !{!2352, !2353, !2354, !2355, !2357, !2358, !2363, !2364, !2365, !2519, !2525, !2530, !2534, !2535, !2536, !2537, !2539, !2541, !2542, !2543, !2544, !2545, !2549, !2550}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !2350, file: !2349, line: 182, baseType: !1919, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !2350, file: !2349, line: 183, baseType: !8, size: 32, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !2350, file: !2349, line: 184, baseType: !8, size: 32, offset: 96)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2350, file: !2349, line: 185, baseType: !2356, size: 16, offset: 128)
!2356 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !2350, file: !2349, line: 186, baseType: !2356, size: 16, offset: 144)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !2350, file: !2349, line: 187, baseType: !2359, size: 128, offset: 192)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !2349, line: 117, size: 128, elements: !2360)
!2360 = !{!2361, !2362}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !2359, file: !2349, line: 118, baseType: !1919, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !2359, file: !2349, line: 119, baseType: !8, size: 32, offset: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !2350, file: !2349, line: 188, baseType: !8, size: 32, offset: 320)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !2350, file: !2349, line: 195, baseType: !4, size: 64, offset: 384)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !2350, file: !2349, line: 197, baseType: !2366, size: 64, offset: 448)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!2369, !2370, !4, !9, !8}
!2369 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !457, line: 145, baseType: !12)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !2349, line: 569, size: 14912, elements: !2372)
!2372 = !{!2373, !2374, !2376, !2377, !2378, !2379, !2383, !2384, !2387, !2388, !2392, !2406, !2407, !2408, !2410, !2411, !2412, !2487, !2506, !2507, !2510, !2517}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !2371, file: !2349, line: 571, baseType: !8, size: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !2371, file: !2349, line: 576, baseType: !2375, size: 64, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !2371, file: !2349, line: 576, baseType: !2375, size: 64, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !2371, file: !2349, line: 576, baseType: !2375, size: 64, offset: 192)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !2371, file: !2349, line: 578, baseType: !8, size: 32, offset: 256)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !2371, file: !2349, line: 579, baseType: !2380, size: 200, offset: 288)
!2380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 200, elements: !2381)
!2381 = !{!2382}
!2382 = !DISubrange(count: 25)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !2371, file: !2349, line: 582, baseType: !8, size: 32, offset: 512)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !2371, file: !2349, line: 583, baseType: !2385, size: 64, offset: 576)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !2349, line: 40, flags: DIFlagFwdDecl)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !2371, file: !2349, line: 585, baseType: !8, size: 32, offset: 640)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !2371, file: !2349, line: 587, baseType: !2389, size: 64, offset: 704)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{null, !2370}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !2371, file: !2349, line: 590, baseType: !2393, size: 64, offset: 768)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !2349, line: 47, size: 256, elements: !2395)
!2395 = !{!2396, !2397, !2398, !2399, !2400, !2401}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2394, file: !2349, line: 49, baseType: !2393, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !2394, file: !2349, line: 50, baseType: !8, size: 32, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !2394, file: !2349, line: 50, baseType: !8, size: 32, offset: 96)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !2394, file: !2349, line: 50, baseType: !8, size: 32, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !2394, file: !2349, line: 50, baseType: !8, size: 32, offset: 160)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !2394, file: !2349, line: 51, baseType: !2402, size: 32, offset: 192)
!2402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2403, size: 32, elements: !2404)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !2349, line: 25, baseType: !45)
!2404 = !{!2405}
!2405 = !DISubrange(count: 1)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !2371, file: !2349, line: 591, baseType: !8, size: 32, offset: 832)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !2371, file: !2349, line: 592, baseType: !2393, size: 64, offset: 896)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !2371, file: !2349, line: 593, baseType: !2409, size: 64, offset: 960)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !2371, file: !2349, line: 596, baseType: !8, size: 32, offset: 1024)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !2371, file: !2349, line: 597, baseType: !9, size: 64, offset: 1088)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !2371, file: !2349, line: 632, baseType: !2413, size: 2880, offset: 1152)
!2413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2371, file: !2349, line: 599, size: 2880, elements: !2414)
!2414 = !{!2415, !2478}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !2413, file: !2349, line: 622, baseType: !2416, size: 1728)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2413, file: !2349, line: 601, size: 1728, elements: !2417)
!2417 = !{!2418, !2419, !2420, !2424, !2436, !2437, !2438, !2447, !2461, !2462, !2463, !2467, !2471, !2472, !2473, !2474, !2475, !2476, !2477}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !2416, file: !2349, line: 603, baseType: !45, size: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !2416, file: !2349, line: 604, baseType: !9, size: 64, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !2416, file: !2349, line: 605, baseType: !2421, size: 208, offset: 128)
!2421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 208, elements: !2422)
!2422 = !{!2423}
!2423 = !DISubrange(count: 26)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !2416, file: !2349, line: 606, baseType: !2425, size: 288, offset: 352)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !2349, line: 55, size: 288, elements: !2426)
!2426 = !{!2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !2425, file: !2349, line: 57, baseType: !8, size: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !2425, file: !2349, line: 58, baseType: !8, size: 32, offset: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !2425, file: !2349, line: 59, baseType: !8, size: 32, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !2425, file: !2349, line: 60, baseType: !8, size: 32, offset: 96)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !2425, file: !2349, line: 61, baseType: !8, size: 32, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !2425, file: !2349, line: 62, baseType: !8, size: 32, offset: 160)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !2425, file: !2349, line: 63, baseType: !8, size: 32, offset: 192)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !2425, file: !2349, line: 64, baseType: !8, size: 32, offset: 224)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !2425, file: !2349, line: 65, baseType: !8, size: 32, offset: 256)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !2416, file: !2349, line: 607, baseType: !8, size: 32, offset: 640)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !2416, file: !2349, line: 608, baseType: !493, size: 64, offset: 704)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !2416, file: !2349, line: 609, baseType: !2439, size: 112, offset: 768)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !2349, line: 319, size: 112, elements: !2440)
!2440 = !{!2441, !2445, !2446}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !2439, file: !2349, line: 320, baseType: !2442, size: 48)
!2442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 48, elements: !2443)
!2443 = !{!2444}
!2444 = !DISubrange(count: 3)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !2439, file: !2349, line: 321, baseType: !2442, size: 48, offset: 48)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !2439, file: !2349, line: 322, baseType: !35, size: 16, offset: 96)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !2416, file: !2349, line: 610, baseType: !2448, size: 64, offset: 896)
!2448 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !457, line: 171, baseType: !2449)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !457, line: 163, size: 64, elements: !2450)
!2450 = !{!2451, !2452}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2449, file: !457, line: 165, baseType: !8, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2449, file: !457, line: 170, baseType: !2453, size: 32, offset: 32)
!2453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2449, file: !457, line: 166, size: 32, elements: !2454)
!2454 = !{!2455, !2457}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2453, file: !457, line: 168, baseType: !2456, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !813, line: 124, baseType: !45)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2453, file: !457, line: 169, baseType: !2458, size: 32)
!2458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !2459)
!2459 = !{!2460}
!2460 = !DISubrange(count: 4)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !2416, file: !2349, line: 611, baseType: !2448, size: 64, offset: 960)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !2416, file: !2349, line: 612, baseType: !2448, size: 64, offset: 1024)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !2416, file: !2349, line: 613, baseType: !2464, size: 64, offset: 1088)
!2464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !2465)
!2465 = !{!2466}
!2466 = !DISubrange(count: 8)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !2416, file: !2349, line: 614, baseType: !2468, size: 192, offset: 1152)
!2468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !2469)
!2469 = !{!2470}
!2470 = !DISubrange(count: 24)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !2416, file: !2349, line: 615, baseType: !8, size: 32, offset: 1344)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !2416, file: !2349, line: 616, baseType: !2448, size: 64, offset: 1376)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !2416, file: !2349, line: 617, baseType: !2448, size: 64, offset: 1440)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !2416, file: !2349, line: 618, baseType: !2448, size: 64, offset: 1504)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !2416, file: !2349, line: 619, baseType: !2448, size: 64, offset: 1568)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !2416, file: !2349, line: 620, baseType: !2448, size: 64, offset: 1632)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !2416, file: !2349, line: 621, baseType: !8, size: 32, offset: 1696)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !2413, file: !2349, line: 631, baseType: !2479, size: 2880)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2413, file: !2349, line: 626, size: 2880, elements: !2480)
!2480 = !{!2481, !2485}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !2479, file: !2349, line: 629, baseType: !2482, size: 1920)
!2482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1919, size: 1920, elements: !2483)
!2483 = !{!2484}
!2484 = !DISubrange(count: 30)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !2479, file: !2349, line: 630, baseType: !2486, size: 960, offset: 1920)
!2486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 960, elements: !2483)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !2371, file: !2349, line: 636, baseType: !2488, size: 64, offset: 4032)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !2349, line: 93, size: 6336, elements: !2490)
!2490 = !{!2491, !2492, !2493, !2498}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2489, file: !2349, line: 94, baseType: !2488, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !2489, file: !2349, line: 95, baseType: !8, size: 32, offset: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !2489, file: !2349, line: 97, baseType: !2494, size: 2048, offset: 128)
!2494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2495, size: 2048, elements: !2496)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!2496 = !{!2497}
!2497 = !DISubrange(count: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !2489, file: !2349, line: 98, baseType: !2499, size: 4160, offset: 2176)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !2349, line: 74, size: 4160, elements: !2500)
!2500 = !{!2501, !2503, !2504, !2505}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !2499, file: !2349, line: 75, baseType: !2502, size: 2048)
!2502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !2496)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !2499, file: !2349, line: 76, baseType: !2502, size: 2048, offset: 2048)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !2499, file: !2349, line: 78, baseType: !2403, size: 32, offset: 4096)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !2499, file: !2349, line: 81, baseType: !2403, size: 32, offset: 4128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !2371, file: !2349, line: 637, baseType: !2489, size: 6336, offset: 4096)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !2371, file: !2349, line: 641, baseType: !2508, size: 64, offset: 10432)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !2371, file: !2349, line: 646, baseType: !2511, size: 192, offset: 10496)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !2349, line: 291, size: 192, elements: !2512)
!2512 = !{!2513, !2515, !2516}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2511, file: !2349, line: 293, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !2511, file: !2349, line: 294, baseType: !8, size: 32, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !2511, file: !2349, line: 295, baseType: !2375, size: 64, offset: 128)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !2371, file: !2349, line: 648, baseType: !2518, size: 4224, offset: 10688)
!2518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2348, size: 4224, elements: !2443)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !2350, file: !2349, line: 199, baseType: !2520, size: 64, offset: 512)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!2369, !2370, !4, !2523, !8}
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !2350, file: !2349, line: 202, baseType: !2526, size: 64, offset: 576)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!2529, !2370, !4, !2529, !8}
!2529 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !457, line: 114, baseType: !12)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !2350, file: !2349, line: 203, baseType: !2531, size: 64, offset: 640)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!8, !2370, !4}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !2350, file: !2349, line: 206, baseType: !2359, size: 128, offset: 704)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !2350, file: !2349, line: 207, baseType: !1919, size: 64, offset: 832)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !2350, file: !2349, line: 208, baseType: !8, size: 32, offset: 896)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !2350, file: !2349, line: 211, baseType: !2538, size: 24, offset: 928)
!2538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 24, elements: !2443)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !2350, file: !2349, line: 212, baseType: !2540, size: 8, offset: 952)
!2540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8, elements: !2404)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !2350, file: !2349, line: 215, baseType: !2359, size: 128, offset: 960)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !2350, file: !2349, line: 218, baseType: !8, size: 32, offset: 1088)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2350, file: !2349, line: 219, baseType: !509, size: 64, offset: 1152)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2350, file: !2349, line: 222, baseType: !2370, size: 64, offset: 1216)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2350, file: !2349, line: 226, baseType: !2546, size: 32, offset: 1280)
!2546 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !457, line: 175, baseType: !2547)
!2547 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !2548, line: 12, baseType: !8)
!2548 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !2350, file: !2349, line: 228, baseType: !2448, size: 64, offset: 1312)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2350, file: !2349, line: 229, baseType: !8, size: 32, offset: 1376)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !2342, file: !2306, line: 73, baseType: !506, size: 64, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "autosync", scope: !2342, file: !2306, line: 74, baseType: !506, size: 64, offset: 128)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "fdset", scope: !2334, file: !2306, line: 83, baseType: !2554, size: 320)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2334, file: !2306, line: 77, size: 320, elements: !2555)
!2555 = !{!2556, !2557, !2558, !2559, !2560}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "fds", scope: !2554, file: !2306, line: 78, baseType: !481, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2554, file: !2306, line: 79, baseType: !481, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "numfds", scope: !2554, file: !2306, line: 80, baseType: !8, size: 32, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2554, file: !2306, line: 81, baseType: !506, size: 64, offset: 192)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2554, file: !2306, line: 82, baseType: !452, size: 64, offset: 256)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2300, file: !67, line: 558, baseType: !2286, size: 64, offset: 128)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !2300, file: !67, line: 559, baseType: !8, size: 32, offset: 192)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !2300, file: !67, line: 560, baseType: !8, size: 32, offset: 224)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2300, file: !67, line: 562, baseType: !2565, size: 64, offset: 256)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCtx", file: !67, line: 499, flags: DIFlagFwdDecl)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2300, file: !67, line: 563, baseType: !2568, size: 64, offset: 320)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "rdb_save", scope: !2288, file: !67, line: 521, baseType: !2570, size: 64, offset: 192)
!2570 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeSaveFunc", file: !67, line: 507, baseType: !2571)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{null, !2299, !4}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "aof_rewrite", scope: !2288, file: !67, line: 522, baseType: !2575, size: 64, offset: 256)
!2575 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeRewriteFunc", file: !67, line: 510, baseType: !2576)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{null, !2299, !2568, !4}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage", scope: !2288, file: !67, line: 523, baseType: !2580, size: 64, offset: 320)
!2580 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeMemUsageFunc", file: !67, line: 512, baseType: !2581)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!454, !112}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !2288, file: !67, line: 524, baseType: !2585, size: 64, offset: 384)
!2585 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeDigestFunc", file: !67, line: 511, baseType: !2586)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{null, !2589, !4}
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleDigest", file: !67, line: 583, size: 320, elements: !2591)
!2591 = !{!2592, !2596}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2590, file: !67, line: 584, baseType: !2593, size: 160)
!2593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 160, elements: !2594)
!2594 = !{!2595}
!2595 = !DISubrange(count: 20)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2590, file: !67, line: 585, baseType: !2593, size: 160, offset: 160)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2288, file: !67, line: 525, baseType: !2598, size: 64, offset: 448)
!2598 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeFreeFunc", file: !67, line: 513, baseType: !187)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "aux_load", scope: !2288, file: !67, line: 526, baseType: !2600, size: 64, offset: 512)
!2600 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeAuxLoadFunc", file: !67, line: 508, baseType: !2601)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!8, !2299, !8, !8}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "aux_save", scope: !2288, file: !67, line: 527, baseType: !2605, size: 64, offset: 576)
!2605 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeAuxSaveFunc", file: !67, line: 509, baseType: !2606)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{null, !2299, !8}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "aux_save_triggers", scope: !2288, file: !67, line: 528, baseType: !8, size: 32, offset: 640)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2288, file: !67, line: 529, baseType: !2611, size: 80, offset: 672)
!2611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 80, elements: !2612)
!2612 = !{!2613}
!2613 = !DISubrange(count: 10)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2283, file: !67, line: 549, baseType: !4, size: 64, offset: 64)
!2615 = !DILocation(line: 816, column: 26, scope: !2271)
!2616 = !DILocation(line: 820, column: 35, scope: !2271)
!2617 = !DILocation(line: 820, column: 41, scope: !2271)
!2618 = !DILocation(line: 820, column: 38, scope: !2271)
!2619 = !DILocation(line: 820, column: 9, scope: !2271)
!2620 = !DILocation(line: 817, column: 11, scope: !2271)
!2621 = !DILocation(line: 821, column: 11, scope: !2280)
!2622 = !DILocation(line: 821, column: 9, scope: !2271)
!2623 = !DILocation(line: 824, column: 19, scope: !2279)
!2624 = !DILocation(line: 824, column: 9, scope: !2279)
!2625 = !DILocation(line: 826, column: 39, scope: !2278)
!2626 = !DILocation(line: 827, column: 37, scope: !2278)
!2627 = !DILocation(line: 828, column: 39, scope: !2278)
!2628 = !DILocation(line: 829, column: 39, scope: !2278)
!2629 = !DILocation(line: 830, column: 43, scope: !2278)
!2630 = !DILocation(line: 832, column: 34, scope: !2277)
!2631 = !DILocation(line: 832, column: 26, scope: !2277)
!2632 = !DILocation(line: 833, column: 24, scope: !2277)
!2633 = !{!2634, !209, i64 0}
!2634 = !{!"moduleValue", !209, i64 0, !209, i64 8}
!2635 = !DILocation(line: 833, column: 20, scope: !2277)
!2636 = !DILocation(line: 818, column: 11, scope: !2271)
!2637 = !DILocation(line: 834, column: 12, scope: !2278)
!2638 = !DILocation(line: 835, column: 36, scope: !2278)
!2639 = !DILocation(line: 0, scope: !2278)
!2640 = !DILocation(line: 0, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2280, file: !1, line: 821, column: 20)
!2642 = !DILocation(line: 838, column: 5, scope: !2271)
!2643 = !DILocation(line: 839, column: 1, scope: !2271)
!2644 = distinct !DISubprogram(name: "shutdownCommand", scope: !1, file: !1, line: 841, type: !471, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2645)
!2645 = !{!2646, !2647}
!2646 = !DILocalVariable(name: "c", arg: 1, scope: !2644, file: !1, line: 841, type: !443)
!2647 = !DILocalVariable(name: "flags", scope: !2644, file: !1, line: 842, type: !8)
!2648 = !DILocation(line: 841, column: 30, scope: !2644)
!2649 = !DILocation(line: 842, column: 9, scope: !2644)
!2650 = !DILocation(line: 844, column: 12, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2644, file: !1, line: 844, column: 9)
!2652 = !DILocation(line: 844, column: 17, scope: !2651)
!2653 = !DILocation(line: 844, column: 9, scope: !2644)
!2654 = !DILocation(line: 845, column: 27, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2651, file: !1, line: 844, column: 22)
!2656 = !DILocation(line: 845, column: 9, scope: !2655)
!2657 = !DILocation(line: 846, column: 9, scope: !2655)
!2658 = !DILocation(line: 847, column: 24, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2651, file: !1, line: 847, column: 16)
!2660 = !DILocation(line: 847, column: 16, scope: !2651)
!2661 = !DILocation(line: 848, column: 28, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !1, line: 848, column: 13)
!2663 = distinct !DILexicalBlock(scope: !2659, file: !1, line: 847, column: 30)
!2664 = !DILocation(line: 848, column: 25, scope: !2662)
!2665 = !DILocation(line: 848, column: 37, scope: !2662)
!2666 = !DILocation(line: 848, column: 14, scope: !2662)
!2667 = !DILocation(line: 848, column: 13, scope: !2663)
!2668 = !DILocation(line: 850, column: 21, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2662, file: !1, line: 850, column: 20)
!2670 = !DILocation(line: 850, column: 20, scope: !2662)
!2671 = !DILocation(line: 853, column: 31, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2669, file: !1, line: 852, column: 16)
!2673 = !DILocation(line: 853, column: 13, scope: !2672)
!2674 = !DILocation(line: 854, column: 13, scope: !2672)
!2675 = !DILocation(line: 863, column: 16, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2644, file: !1, line: 863, column: 9)
!2677 = !DILocation(line: 0, scope: !2644)
!2678 = !DILocation(line: 863, column: 34, scope: !2676)
!2679 = !DILocation(line: 863, column: 24, scope: !2676)
!2680 = !DILocation(line: 864, column: 9, scope: !2676)
!2681 = !DILocation(line: 0, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2669, file: !1, line: 850, column: 57)
!2683 = !DILocation(line: 865, column: 9, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2644, file: !1, line: 865, column: 9)
!2685 = !DILocation(line: 865, column: 35, scope: !2684)
!2686 = !DILocation(line: 865, column: 9, scope: !2644)
!2687 = !DILocation(line: 865, column: 44, scope: !2684)
!2688 = !DILocation(line: 866, column: 5, scope: !2644)
!2689 = !DILocation(line: 867, column: 1, scope: !2644)
!2690 = !DILocation(line: 0, scope: !2655)
!2691 = distinct !DISubprogram(name: "renameGenericCommand", scope: !1, file: !1, line: 869, type: !1269, isLocal: false, isDefinition: true, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2692)
!2692 = !{!2693, !2694, !2695, !2696, !2697}
!2693 = !DILocalVariable(name: "c", arg: 1, scope: !2691, file: !1, line: 869, type: !443)
!2694 = !DILocalVariable(name: "nx", arg: 2, scope: !2691, file: !1, line: 869, type: !8)
!2695 = !DILocalVariable(name: "o", scope: !2691, file: !1, line: 870, type: !65)
!2696 = !DILocalVariable(name: "expire", scope: !2691, file: !1, line: 871, type: !165)
!2697 = !DILocalVariable(name: "samekey", scope: !2691, file: !1, line: 872, type: !8)
!2698 = !DILocation(line: 869, column: 35, scope: !2691)
!2699 = !DILocation(line: 869, column: 42, scope: !2691)
!2700 = !DILocation(line: 872, column: 9, scope: !2691)
!2701 = !DILocation(line: 876, column: 19, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2691, file: !1, line: 876, column: 9)
!2703 = !DILocation(line: 876, column: 16, scope: !2702)
!2704 = !DILocation(line: 876, column: 28, scope: !2702)
!2705 = !DILocation(line: 876, column: 32, scope: !2702)
!2706 = !DILocation(line: 876, column: 44, scope: !2702)
!2707 = !DILocation(line: 876, column: 9, scope: !2702)
!2708 = !DILocation(line: 876, column: 49, scope: !2702)
!2709 = !DILocation(line: 876, column: 9, scope: !2691)
!2710 = !DILocation(line: 876, column: 55, scope: !2702)
!2711 = !DILocation(line: 0, scope: !2691)
!2712 = !DILocation(line: 878, column: 41, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2691, file: !1, line: 878, column: 9)
!2714 = !DILocation(line: 878, column: 38, scope: !2713)
!2715 = !DILocation(line: 878, column: 56, scope: !2713)
!2716 = !{!1143, !209, i64 120}
!2717 = !DILocation(line: 163, column: 37, scope: !592, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 878, column: 14, scope: !2713)
!2719 = !DILocation(line: 163, column: 46, scope: !592, inlinedAt: !2718)
!2720 = !DILocation(line: 163, column: 57, scope: !592, inlinedAt: !2718)
!2721 = !DILocation(line: 164, column: 33, scope: !592, inlinedAt: !2718)
!2722 = !DILocation(line: 152, column: 31, scope: !431, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 164, column: 15, scope: !592, inlinedAt: !2718)
!2724 = !DILocation(line: 152, column: 41, scope: !431, inlinedAt: !2723)
!2725 = !DILocation(line: 153, column: 5, scope: !431, inlinedAt: !2723)
!2726 = !DILocation(line: 154, column: 12, scope: !431, inlinedAt: !2723)
!2727 = !DILocation(line: 154, column: 5, scope: !431, inlinedAt: !2723)
!2728 = !DILocation(line: 164, column: 11, scope: !592, inlinedAt: !2718)
!2729 = !DILocation(line: 165, column: 10, scope: !610, inlinedAt: !2718)
!2730 = !DILocation(line: 165, column: 9, scope: !592, inlinedAt: !2718)
!2731 = !DILocation(line: 165, column: 13, scope: !610, inlinedAt: !2718)
!2732 = !DILocation(line: 166, column: 5, scope: !592, inlinedAt: !2718)
!2733 = !DILocation(line: 870, column: 11, scope: !2691)
!2734 = !DILocation(line: 878, column: 9, scope: !2691)
!2735 = !DILocation(line: 879, column: 9, scope: !2713)
!2736 = !DILocation(line: 881, column: 9, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2691, file: !1, line: 881, column: 9)
!2738 = !DILocation(line: 881, column: 9, scope: !2691)
!2739 = !DILocation(line: 882, column: 20, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2737, file: !1, line: 881, column: 18)
!2741 = !DILocation(line: 882, column: 32, scope: !2740)
!2742 = !DILocation(line: 882, column: 47, scope: !2740)
!2743 = !DILocation(line: 882, column: 9, scope: !2740)
!2744 = !DILocation(line: 883, column: 9, scope: !2740)
!2745 = !DILocation(line: 886, column: 5, scope: !2691)
!2746 = !DILocation(line: 887, column: 27, scope: !2691)
!2747 = !DILocation(line: 887, column: 33, scope: !2691)
!2748 = !DILocation(line: 887, column: 30, scope: !2691)
!2749 = !DILocation(line: 887, column: 14, scope: !2691)
!2750 = !DILocation(line: 871, column: 15, scope: !2691)
!2751 = !DILocation(line: 888, column: 27, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2691, file: !1, line: 888, column: 9)
!2753 = !DILocation(line: 888, column: 33, scope: !2752)
!2754 = !DILocation(line: 888, column: 30, scope: !2752)
!2755 = !DILocation(line: 152, column: 31, scope: !431, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 888, column: 9, scope: !2752)
!2757 = !DILocation(line: 152, column: 41, scope: !431, inlinedAt: !2756)
!2758 = !DILocation(line: 153, column: 5, scope: !431, inlinedAt: !2756)
!2759 = !DILocation(line: 154, column: 12, scope: !431, inlinedAt: !2756)
!2760 = !DILocation(line: 154, column: 5, scope: !431, inlinedAt: !2756)
!2761 = !DILocation(line: 888, column: 42, scope: !2752)
!2762 = !DILocation(line: 888, column: 9, scope: !2691)
!2763 = !DILocation(line: 889, column: 13, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !1, line: 889, column: 13)
!2765 = distinct !DILexicalBlock(scope: !2752, file: !1, line: 888, column: 51)
!2766 = !DILocation(line: 889, column: 13, scope: !2765)
!2767 = !DILocation(line: 890, column: 13, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2764, file: !1, line: 889, column: 17)
!2769 = !DILocation(line: 891, column: 31, scope: !2768)
!2770 = !{!1143, !209, i64 32}
!2771 = !DILocation(line: 891, column: 13, scope: !2768)
!2772 = !DILocation(line: 892, column: 13, scope: !2768)
!2773 = !DILocation(line: 896, column: 21, scope: !2765)
!2774 = !DILocation(line: 896, column: 27, scope: !2765)
!2775 = !DILocation(line: 896, column: 24, scope: !2765)
!2776 = !DILocation(line: 896, column: 9, scope: !2765)
!2777 = !DILocation(line: 897, column: 5, scope: !2765)
!2778 = !DILocation(line: 898, column: 14, scope: !2691)
!2779 = !DILocation(line: 898, column: 20, scope: !2691)
!2780 = !DILocation(line: 898, column: 17, scope: !2691)
!2781 = !DILocation(line: 898, column: 5, scope: !2691)
!2782 = !DILocation(line: 899, column: 16, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2691, file: !1, line: 899, column: 9)
!2784 = !DILocation(line: 899, column: 9, scope: !2691)
!2785 = !DILocation(line: 899, column: 38, scope: !2783)
!2786 = !DILocation(line: 899, column: 44, scope: !2783)
!2787 = !DILocation(line: 899, column: 41, scope: !2783)
!2788 = !DILocation(line: 899, column: 23, scope: !2783)
!2789 = !DILocation(line: 900, column: 17, scope: !2691)
!2790 = !DILocation(line: 900, column: 23, scope: !2691)
!2791 = !DILocation(line: 900, column: 20, scope: !2691)
!2792 = !DILocation(line: 900, column: 5, scope: !2691)
!2793 = !DILocation(line: 901, column: 26, scope: !2691)
!2794 = !DILocation(line: 901, column: 32, scope: !2691)
!2795 = !DILocation(line: 901, column: 29, scope: !2691)
!2796 = !DILocation(line: 395, column: 33, scope: !748, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 901, column: 5, scope: !2691)
!2798 = !DILocation(line: 395, column: 43, scope: !748, inlinedAt: !2797)
!2799 = !DILocation(line: 396, column: 5, scope: !748, inlinedAt: !2797)
!2800 = !DILocation(line: 397, column: 1, scope: !748, inlinedAt: !2797)
!2801 = !DILocation(line: 902, column: 26, scope: !2691)
!2802 = !DILocation(line: 902, column: 32, scope: !2691)
!2803 = !DILocation(line: 902, column: 29, scope: !2691)
!2804 = !DILocation(line: 395, column: 33, scope: !748, inlinedAt: !2805)
!2805 = distinct !DILocation(line: 902, column: 5, scope: !2691)
!2806 = !DILocation(line: 395, column: 43, scope: !748, inlinedAt: !2805)
!2807 = !DILocation(line: 396, column: 5, scope: !748, inlinedAt: !2805)
!2808 = !DILocation(line: 397, column: 1, scope: !748, inlinedAt: !2805)
!2809 = !DILocation(line: 904, column: 12, scope: !2691)
!2810 = !DILocation(line: 904, column: 9, scope: !2691)
!2811 = !DILocation(line: 904, column: 23, scope: !2691)
!2812 = !DILocation(line: 904, column: 27, scope: !2691)
!2813 = !DILocation(line: 903, column: 5, scope: !2691)
!2814 = !DILocation(line: 906, column: 12, scope: !2691)
!2815 = !DILocation(line: 906, column: 9, scope: !2691)
!2816 = !DILocation(line: 906, column: 23, scope: !2691)
!2817 = !DILocation(line: 906, column: 27, scope: !2691)
!2818 = !DILocation(line: 905, column: 5, scope: !2691)
!2819 = !DILocation(line: 907, column: 17, scope: !2691)
!2820 = !DILocation(line: 908, column: 16, scope: !2691)
!2821 = !DILocation(line: 908, column: 28, scope: !2691)
!2822 = !DILocation(line: 908, column: 42, scope: !2691)
!2823 = !DILocation(line: 908, column: 5, scope: !2691)
!2824 = !DILocation(line: 909, column: 1, scope: !2691)
!2825 = !DILocation(line: 0, scope: !2713)
!2826 = distinct !DISubprogram(name: "getExpire", scope: !1, file: !1, line: 1092, type: !2827, isLocal: false, isDefinition: true, scopeLine: 1092, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2829)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!165, !93, !65}
!2829 = !{!2830, !2831, !2832}
!2830 = !DILocalVariable(name: "db", arg: 1, scope: !2826, file: !1, line: 1092, type: !93)
!2831 = !DILocalVariable(name: "key", arg: 2, scope: !2826, file: !1, line: 1092, type: !65)
!2832 = !DILocalVariable(name: "de", scope: !2826, file: !1, line: 1093, type: !136)
!2833 = !DILocation(line: 1092, column: 30, scope: !2826)
!2834 = !DILocation(line: 1092, column: 40, scope: !2826)
!2835 = !DILocation(line: 1096, column: 9, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2826, file: !1, line: 1096, column: 9)
!2837 = !DILocation(line: 1096, column: 31, scope: !2836)
!2838 = !DILocation(line: 1096, column: 36, scope: !2836)
!2839 = !DILocation(line: 1097, column: 40, scope: !2836)
!2840 = !DILocation(line: 1097, column: 14, scope: !2836)
!2841 = !DILocation(line: 1093, column: 16, scope: !2826)
!2842 = !DILocation(line: 1097, column: 46, scope: !2836)
!2843 = !DILocation(line: 1096, column: 9, scope: !2826)
!2844 = !DILocation(line: 1101, column: 5, scope: !2826)
!2845 = !DILocation(line: 1102, column: 12, scope: !2826)
!2846 = !DILocation(line: 1102, column: 5, scope: !2826)
!2847 = !DILocation(line: 0, scope: !2826)
!2848 = !DILocation(line: 0, scope: !2836)
!2849 = !DILocation(line: 1103, column: 1, scope: !2826)
!2850 = distinct !DISubprogram(name: "setExpire", scope: !1, file: !1, line: 1076, type: !2851, isLocal: false, isDefinition: true, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{null, !443, !93, !65, !165}
!2853 = !{!2854, !2855, !2856, !2857, !2858, !2859, !2860}
!2854 = !DILocalVariable(name: "c", arg: 1, scope: !2850, file: !1, line: 1076, type: !443)
!2855 = !DILocalVariable(name: "db", arg: 2, scope: !2850, file: !1, line: 1076, type: !93)
!2856 = !DILocalVariable(name: "key", arg: 3, scope: !2850, file: !1, line: 1076, type: !65)
!2857 = !DILocalVariable(name: "when", arg: 4, scope: !2850, file: !1, line: 1076, type: !165)
!2858 = !DILocalVariable(name: "kde", scope: !2850, file: !1, line: 1077, type: !136)
!2859 = !DILocalVariable(name: "de", scope: !2850, file: !1, line: 1077, type: !136)
!2860 = !DILocalVariable(name: "writable_slave", scope: !2850, file: !1, line: 1085, type: !8)
!2861 = !DILocation(line: 1076, column: 24, scope: !2850)
!2862 = !DILocation(line: 1076, column: 36, scope: !2850)
!2863 = !DILocation(line: 1076, column: 46, scope: !2850)
!2864 = !DILocation(line: 1076, column: 61, scope: !2850)
!2865 = !DILocation(line: 1080, column: 24, scope: !2850)
!2866 = !DILocation(line: 1080, column: 34, scope: !2850)
!2867 = !DILocation(line: 1080, column: 11, scope: !2850)
!2868 = !DILocation(line: 1077, column: 16, scope: !2850)
!2869 = !DILocation(line: 1081, column: 5, scope: !2850)
!2870 = !DILocation(line: 1082, column: 28, scope: !2850)
!2871 = !DILocation(line: 1082, column: 36, scope: !2850)
!2872 = !DILocation(line: 1082, column: 10, scope: !2850)
!2873 = !DILocation(line: 1077, column: 22, scope: !2850)
!2874 = !DILocation(line: 1083, column: 5, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2850, file: !1, line: 1083, column: 5)
!2876 = !DILocation(line: 1085, column: 33, scope: !2850)
!2877 = !DILocation(line: 1085, column: 26, scope: !2850)
!2878 = !DILocation(line: 1085, column: 54, scope: !2850)
!2879 = !DILocation(line: 1085, column: 68, scope: !2850)
!2880 = !DILocation(line: 1085, column: 44, scope: !2850)
!2881 = !DILocation(line: 1086, column: 9, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2850, file: !1, line: 1086, column: 9)
!2883 = !DILocation(line: 1086, column: 11, scope: !2882)
!2884 = !DILocation(line: 1086, column: 37, scope: !2882)
!2885 = !{!299, !212, i64 160}
!2886 = !DILocation(line: 1086, column: 43, scope: !2882)
!2887 = !DILocation(line: 1086, column: 9, scope: !2850)
!2888 = !DILocation(line: 1087, column: 9, scope: !2882)
!2889 = !DILocation(line: 1088, column: 1, scope: !2850)
!2890 = distinct !DISubprogram(name: "renameCommand", scope: !1, file: !1, line: 911, type: !471, isLocal: false, isDefinition: true, scopeLine: 911, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2891)
!2891 = !{!2892}
!2892 = !DILocalVariable(name: "c", arg: 1, scope: !2890, file: !1, line: 911, type: !443)
!2893 = !DILocation(line: 911, column: 28, scope: !2890)
!2894 = !DILocation(line: 912, column: 5, scope: !2890)
!2895 = !DILocation(line: 913, column: 1, scope: !2890)
!2896 = distinct !DISubprogram(name: "renamenxCommand", scope: !1, file: !1, line: 915, type: !471, isLocal: false, isDefinition: true, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2897)
!2897 = !{!2898}
!2898 = !DILocalVariable(name: "c", arg: 1, scope: !2896, file: !1, line: 915, type: !443)
!2899 = !DILocation(line: 915, column: 30, scope: !2896)
!2900 = !DILocation(line: 916, column: 5, scope: !2896)
!2901 = !DILocation(line: 917, column: 1, scope: !2896)
!2902 = distinct !DISubprogram(name: "moveCommand", scope: !1, file: !1, line: 919, type: !471, isLocal: false, isDefinition: true, scopeLine: 919, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2903)
!2903 = !{!2904, !2905, !2906, !2907, !2908, !2909, !2910}
!2904 = !DILocalVariable(name: "c", arg: 1, scope: !2902, file: !1, line: 919, type: !443)
!2905 = !DILocalVariable(name: "o", scope: !2902, file: !1, line: 920, type: !65)
!2906 = !DILocalVariable(name: "src", scope: !2902, file: !1, line: 921, type: !93)
!2907 = !DILocalVariable(name: "dst", scope: !2902, file: !1, line: 921, type: !93)
!2908 = !DILocalVariable(name: "srcid", scope: !2902, file: !1, line: 922, type: !8)
!2909 = !DILocalVariable(name: "dbid", scope: !2902, file: !1, line: 923, type: !165)
!2910 = !DILocalVariable(name: "expire", scope: !2902, file: !1, line: 923, type: !165)
!2911 = !DILocation(line: 919, column: 26, scope: !2902)
!2912 = !DILocation(line: 923, column: 5, scope: !2902)
!2913 = !DILocation(line: 925, column: 16, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2902, file: !1, line: 925, column: 9)
!2915 = !DILocation(line: 925, column: 9, scope: !2914)
!2916 = !DILocation(line: 925, column: 9, scope: !2902)
!2917 = !DILocation(line: 926, column: 9, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2914, file: !1, line: 925, column: 33)
!2919 = !DILocation(line: 927, column: 9, scope: !2918)
!2920 = !DILocation(line: 931, column: 14, scope: !2902)
!2921 = !DILocation(line: 921, column: 14, scope: !2902)
!2922 = !DILocation(line: 932, column: 20, scope: !2902)
!2923 = !DILocation(line: 922, column: 9, scope: !2902)
!2924 = !DILocation(line: 934, column: 34, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2902, file: !1, line: 934, column: 9)
!2926 = !DILocation(line: 934, column: 31, scope: !2925)
!2927 = !DILocation(line: 923, column: 15, scope: !2902)
!2928 = !DILocation(line: 934, column: 9, scope: !2925)
!2929 = !DILocation(line: 934, column: 49, scope: !2925)
!2930 = !DILocation(line: 935, column: 9, scope: !2925)
!2931 = !DILocation(line: 934, column: 58, scope: !2925)
!2932 = !DILocation(line: 936, column: 20, scope: !2925)
!2933 = !DILocation(line: 379, column: 22, scope: !1086, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 936, column: 9, scope: !2925)
!2935 = !DILocation(line: 379, column: 29, scope: !1086, inlinedAt: !2934)
!2936 = !DILocation(line: 380, column: 12, scope: !1095, inlinedAt: !2934)
!2937 = !DILocation(line: 380, column: 16, scope: !1095, inlinedAt: !2934)
!2938 = !DILocation(line: 380, column: 32, scope: !1095, inlinedAt: !2934)
!2939 = !DILocation(line: 380, column: 22, scope: !1095, inlinedAt: !2934)
!2940 = !DILocation(line: 380, column: 9, scope: !1086, inlinedAt: !2934)
!2941 = !DILocation(line: 381, column: 9, scope: !1095, inlinedAt: !2934)
!2942 = !DILocation(line: 384, column: 1, scope: !1086, inlinedAt: !2934)
!2943 = !DILocation(line: 934, column: 9, scope: !2902)
!2944 = !DILocation(line: 938, column: 27, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2925, file: !1, line: 937, column: 5)
!2946 = !{!1143, !209, i64 144}
!2947 = !DILocation(line: 938, column: 9, scope: !2945)
!2948 = !DILocation(line: 939, column: 9, scope: !2945)
!2949 = !DILocation(line: 382, column: 21, scope: !1086, inlinedAt: !2934)
!2950 = !DILocation(line: 382, column: 14, scope: !1086, inlinedAt: !2934)
!2951 = !DILocation(line: 382, column: 11, scope: !1086, inlinedAt: !2934)
!2952 = !DILocation(line: 383, column: 5, scope: !1086, inlinedAt: !2934)
!2953 = !DILocation(line: 921, column: 20, scope: !2902)
!2954 = !DILocation(line: 379, column: 22, scope: !1086, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 942, column: 5, scope: !2902)
!2956 = !DILocation(line: 379, column: 29, scope: !1086, inlinedAt: !2955)
!2957 = !DILocation(line: 380, column: 12, scope: !1095, inlinedAt: !2955)
!2958 = !DILocation(line: 380, column: 16, scope: !1095, inlinedAt: !2955)
!2959 = !DILocation(line: 380, column: 22, scope: !1095, inlinedAt: !2955)
!2960 = !DILocation(line: 380, column: 9, scope: !1086, inlinedAt: !2955)
!2961 = !DILocation(line: 382, column: 14, scope: !1086, inlinedAt: !2955)
!2962 = !DILocation(line: 382, column: 11, scope: !1086, inlinedAt: !2955)
!2963 = !DILocation(line: 383, column: 5, scope: !1086, inlinedAt: !2955)
!2964 = !DILocation(line: 0, scope: !2902)
!2965 = !DILocation(line: 384, column: 1, scope: !1086, inlinedAt: !2955)
!2966 = !DILocation(line: 946, column: 13, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2902, file: !1, line: 946, column: 9)
!2968 = !DILocation(line: 946, column: 9, scope: !2902)
!2969 = !DILocation(line: 947, column: 27, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2967, file: !1, line: 946, column: 21)
!2971 = !{!1143, !209, i64 136}
!2972 = !DILocation(line: 947, column: 9, scope: !2970)
!2973 = !DILocation(line: 948, column: 9, scope: !2970)
!2974 = !DILocation(line: 952, column: 33, scope: !2902)
!2975 = !DILocation(line: 952, column: 30, scope: !2902)
!2976 = !DILocation(line: 152, column: 31, scope: !431, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 952, column: 9, scope: !2902)
!2978 = !DILocation(line: 152, column: 41, scope: !431, inlinedAt: !2977)
!2979 = !DILocation(line: 153, column: 5, scope: !431, inlinedAt: !2977)
!2980 = !DILocation(line: 154, column: 12, scope: !431, inlinedAt: !2977)
!2981 = !DILocation(line: 154, column: 5, scope: !431, inlinedAt: !2977)
!2982 = !DILocation(line: 920, column: 11, scope: !2902)
!2983 = !DILocation(line: 953, column: 10, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2902, file: !1, line: 953, column: 9)
!2985 = !DILocation(line: 953, column: 9, scope: !2902)
!2986 = !DILocation(line: 954, column: 27, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2984, file: !1, line: 953, column: 13)
!2988 = !DILocation(line: 954, column: 9, scope: !2987)
!2989 = !DILocation(line: 955, column: 9, scope: !2987)
!2990 = !DILocation(line: 957, column: 27, scope: !2902)
!2991 = !DILocation(line: 957, column: 33, scope: !2902)
!2992 = !DILocation(line: 957, column: 30, scope: !2902)
!2993 = !DILocation(line: 957, column: 14, scope: !2902)
!2994 = !DILocation(line: 923, column: 21, scope: !2902)
!2995 = !DILocation(line: 960, column: 31, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2902, file: !1, line: 960, column: 9)
!2997 = !DILocation(line: 960, column: 28, scope: !2996)
!2998 = !DILocation(line: 152, column: 31, scope: !431, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 960, column: 9, scope: !2996)
!3000 = !DILocation(line: 152, column: 41, scope: !431, inlinedAt: !2999)
!3001 = !DILocation(line: 153, column: 5, scope: !431, inlinedAt: !2999)
!3002 = !DILocation(line: 154, column: 12, scope: !431, inlinedAt: !2999)
!3003 = !DILocation(line: 154, column: 5, scope: !431, inlinedAt: !2999)
!3004 = !DILocation(line: 960, column: 40, scope: !2996)
!3005 = !DILocation(line: 960, column: 9, scope: !2902)
!3006 = !DILocation(line: 961, column: 27, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2996, file: !1, line: 960, column: 49)
!3008 = !DILocation(line: 961, column: 9, scope: !3007)
!3009 = !DILocation(line: 962, column: 9, scope: !3007)
!3010 = !DILocation(line: 964, column: 18, scope: !2902)
!3011 = !DILocation(line: 964, column: 15, scope: !2902)
!3012 = !DILocation(line: 964, column: 5, scope: !2902)
!3013 = !DILocation(line: 965, column: 16, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !2902, file: !1, line: 965, column: 9)
!3015 = !DILocation(line: 965, column: 9, scope: !2902)
!3016 = !DILocation(line: 965, column: 42, scope: !3014)
!3017 = !DILocation(line: 965, column: 39, scope: !3014)
!3018 = !DILocation(line: 965, column: 23, scope: !3014)
!3019 = !DILocation(line: 966, column: 5, scope: !2902)
!3020 = !DILocation(line: 969, column: 21, scope: !2902)
!3021 = !DILocation(line: 969, column: 18, scope: !2902)
!3022 = !DILocation(line: 969, column: 5, scope: !2902)
!3023 = !DILocation(line: 970, column: 17, scope: !2902)
!3024 = !DILocation(line: 971, column: 23, scope: !2902)
!3025 = !{!1143, !209, i64 40}
!3026 = !DILocation(line: 971, column: 5, scope: !2902)
!3027 = !DILocation(line: 972, column: 1, scope: !2902)
!3028 = !DILocation(line: 0, scope: !2918)
!3029 = distinct !DISubprogram(name: "scanDatabaseForReadyLists", scope: !1, file: !1, line: 978, type: !3030, isLocal: false, isDefinition: true, scopeLine: 978, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3032)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{null, !93}
!3032 = !{!3033, !3034, !3035, !3036, !3038}
!3033 = !DILocalVariable(name: "db", arg: 1, scope: !3029, file: !1, line: 978, type: !93)
!3034 = !DILocalVariable(name: "de", scope: !3029, file: !1, line: 979, type: !136)
!3035 = !DILocalVariable(name: "di", scope: !3029, file: !1, line: 980, type: !1469)
!3036 = !DILocalVariable(name: "key", scope: !3037, file: !1, line: 982, type: !65)
!3037 = distinct !DILexicalBlock(scope: !3029, file: !1, line: 981, column: 40)
!3038 = !DILocalVariable(name: "value", scope: !3037, file: !1, line: 983, type: !65)
!3039 = !DILocation(line: 978, column: 41, scope: !3029)
!3040 = !DILocation(line: 980, column: 48, scope: !3029)
!3041 = !{!208, !209, i64 16}
!3042 = !DILocation(line: 980, column: 24, scope: !3029)
!3043 = !DILocation(line: 980, column: 19, scope: !3029)
!3044 = !DILocation(line: 981, column: 5, scope: !3029)
!3045 = !DILocation(line: 981, column: 17, scope: !3029)
!3046 = !DILocation(line: 979, column: 16, scope: !3029)
!3047 = !DILocation(line: 981, column: 31, scope: !3029)
!3048 = !DILocation(line: 982, column: 21, scope: !3037)
!3049 = !DILocation(line: 982, column: 15, scope: !3037)
!3050 = !DILocation(line: 55, column: 26, scope: !90, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 983, column: 23, scope: !3037)
!3052 = !DILocation(line: 55, column: 36, scope: !90, inlinedAt: !3051)
!3053 = !DILocation(line: 55, column: 45, scope: !90, inlinedAt: !3051)
!3054 = !DILocation(line: 56, column: 34, scope: !90, inlinedAt: !3051)
!3055 = !DILocation(line: 56, column: 44, scope: !90, inlinedAt: !3051)
!3056 = !DILocation(line: 56, column: 21, scope: !90, inlinedAt: !3051)
!3057 = !DILocation(line: 56, column: 16, scope: !90, inlinedAt: !3051)
!3058 = !DILocation(line: 57, column: 9, scope: !202, inlinedAt: !3051)
!3059 = !DILocation(line: 57, column: 9, scope: !90, inlinedAt: !3051)
!3060 = !DILocation(line: 58, column: 21, scope: !201, inlinedAt: !3051)
!3061 = !DILocation(line: 58, column: 15, scope: !201, inlinedAt: !3051)
!3062 = !DILocation(line: 63, column: 20, scope: !225, inlinedAt: !3051)
!3063 = !DILocation(line: 64, column: 20, scope: !225, inlinedAt: !3051)
!3064 = !DILocation(line: 63, column: 40, scope: !225, inlinedAt: !3051)
!3065 = !DILocation(line: 63, column: 13, scope: !201, inlinedAt: !3051)
!3066 = !DILocation(line: 75, column: 9, scope: !263, inlinedAt: !3051)
!3067 = !DILocation(line: 77, column: 1, scope: !90, inlinedAt: !3051)
!3068 = !DILocation(line: 983, column: 15, scope: !3037)
!3069 = !DILocation(line: 984, column: 19, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3037, file: !1, line: 984, column: 13)
!3071 = !DILocation(line: 984, column: 13, scope: !3070)
!3072 = !DILocation(line: 984, column: 30, scope: !3070)
!3073 = !DILocation(line: 984, column: 35, scope: !3070)
!3074 = !DILocation(line: 984, column: 47, scope: !3070)
!3075 = !DILocation(line: 985, column: 35, scope: !3070)
!3076 = !DILocation(line: 985, column: 49, scope: !3070)
!3077 = !DILocation(line: 986, column: 35, scope: !3070)
!3078 = !DILocation(line: 984, column: 13, scope: !3037)
!3079 = !DILocation(line: 987, column: 13, scope: !3070)
!3080 = distinct !{!3080, !3044, !3081}
!3081 = !DILocation(line: 988, column: 5, scope: !3029)
!3082 = !DILocation(line: 989, column: 5, scope: !3029)
!3083 = !DILocation(line: 990, column: 1, scope: !3029)
!3084 = distinct !DISubprogram(name: "dbSwapDatabases", scope: !1, file: !1, line: 1000, type: !3085, isLocal: false, isDefinition: true, scopeLine: 1000, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3087)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!8, !8, !8}
!3087 = !{!3088, !3089, !3090, !3091, !3092}
!3088 = !DILocalVariable(name: "id1", arg: 1, scope: !3084, file: !1, line: 1000, type: !8)
!3089 = !DILocalVariable(name: "id2", arg: 2, scope: !3084, file: !1, line: 1000, type: !8)
!3090 = !DILocalVariable(name: "aux", scope: !3084, file: !1, line: 1004, type: !94)
!3091 = !DILocalVariable(name: "db1", scope: !3084, file: !1, line: 1005, type: !93)
!3092 = !DILocalVariable(name: "db2", scope: !3084, file: !1, line: 1005, type: !93)
!3093 = !DILocation(line: 1000, column: 25, scope: !3084)
!3094 = !DILocation(line: 1000, column: 34, scope: !3084)
!3095 = !DILocation(line: 1001, column: 13, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3084, file: !1, line: 1001, column: 9)
!3097 = !DILocation(line: 1001, column: 17, scope: !3096)
!3098 = !DILocation(line: 1001, column: 34, scope: !3096)
!3099 = !DILocation(line: 1001, column: 24, scope: !3096)
!3100 = !DILocation(line: 1002, column: 13, scope: !3096)
!3101 = !DILocation(line: 1001, column: 40, scope: !3096)
!3102 = !DILocation(line: 1002, column: 24, scope: !3096)
!3103 = !DILocation(line: 1001, column: 9, scope: !3084)
!3104 = !DILocation(line: 1003, column: 13, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3084, file: !1, line: 1003, column: 9)
!3106 = !DILocation(line: 1003, column: 9, scope: !3084)
!3107 = !DILocation(line: 1004, column: 26, scope: !3084)
!3108 = !DILocation(line: 1004, column: 19, scope: !3084)
!3109 = !DILocation(line: 1004, column: 13, scope: !3084)
!3110 = !DILocation(line: 1005, column: 14, scope: !3084)
!3111 = !DILocation(line: 1005, column: 45, scope: !3084)
!3112 = !DILocation(line: 1005, column: 38, scope: !3084)
!3113 = !DILocation(line: 1010, column: 22, scope: !3084)
!3114 = !DILocation(line: 1010, column: 15, scope: !3084)
!3115 = !DILocation(line: 1012, column: 25, scope: !3084)
!3116 = !{!208, !213, i64 48}
!3117 = !DILocation(line: 1012, column: 18, scope: !3084)
!3118 = !DILocation(line: 1014, column: 15, scope: !3084)
!3119 = !DILocation(line: 1016, column: 18, scope: !3084)
!3120 = !DILocation(line: 1027, column: 5, scope: !3084)
!3121 = !DILocation(line: 1028, column: 5, scope: !3084)
!3122 = !DILocation(line: 0, scope: !3084)
!3123 = !DILocation(line: 1030, column: 1, scope: !3084)
!3124 = distinct !DISubprogram(name: "swapdbCommand", scope: !1, file: !1, line: 1033, type: !471, isLocal: false, isDefinition: true, scopeLine: 1033, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3125)
!3125 = !{!3126, !3127, !3128}
!3126 = !DILocalVariable(name: "c", arg: 1, scope: !3124, file: !1, line: 1033, type: !443)
!3127 = !DILocalVariable(name: "id1", scope: !3124, file: !1, line: 1034, type: !12)
!3128 = !DILocalVariable(name: "id2", scope: !3124, file: !1, line: 1034, type: !12)
!3129 = !DILocation(line: 1033, column: 28, scope: !3124)
!3130 = !DILocation(line: 1034, column: 5, scope: !3124)
!3131 = !DILocation(line: 1037, column: 16, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3124, file: !1, line: 1037, column: 9)
!3133 = !DILocation(line: 1037, column: 9, scope: !3132)
!3134 = !DILocation(line: 1037, column: 9, scope: !3124)
!3135 = !DILocation(line: 1038, column: 9, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3132, file: !1, line: 1037, column: 33)
!3137 = !DILocation(line: 1039, column: 9, scope: !3136)
!3138 = !DILocation(line: 1043, column: 40, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3124, file: !1, line: 1043, column: 9)
!3140 = !DILocation(line: 1043, column: 37, scope: !3139)
!3141 = !DILocation(line: 1034, column: 10, scope: !3124)
!3142 = !DILocation(line: 1043, column: 9, scope: !3139)
!3143 = !DILocation(line: 1044, column: 35, scope: !3139)
!3144 = !DILocation(line: 1043, column: 9, scope: !3124)
!3145 = !DILocation(line: 1047, column: 40, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3124, file: !1, line: 1047, column: 9)
!3147 = !DILocation(line: 1047, column: 37, scope: !3146)
!3148 = !DILocation(line: 1034, column: 15, scope: !3124)
!3149 = !DILocation(line: 1047, column: 9, scope: !3146)
!3150 = !DILocation(line: 1048, column: 36, scope: !3146)
!3151 = !DILocation(line: 1047, column: 9, scope: !3124)
!3152 = !DILocation(line: 1052, column: 25, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3124, file: !1, line: 1052, column: 9)
!3154 = !DILocation(line: 1052, column: 29, scope: !3153)
!3155 = !DILocation(line: 1052, column: 9, scope: !3153)
!3156 = !DILocation(line: 1052, column: 34, scope: !3153)
!3157 = !DILocation(line: 1052, column: 9, scope: !3124)
!3158 = !DILocation(line: 1053, column: 9, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3153, file: !1, line: 1052, column: 44)
!3160 = !DILocation(line: 1054, column: 9, scope: !3159)
!3161 = !DILocation(line: 1056, column: 21, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3153, file: !1, line: 1055, column: 12)
!3163 = !DILocation(line: 1057, column: 27, scope: !3162)
!3164 = !DILocation(line: 1057, column: 9, scope: !3162)
!3165 = !DILocation(line: 1059, column: 1, scope: !3124)
!3166 = !DILocation(line: 0, scope: !3136)
!3167 = distinct !DISubprogram(name: "propagateExpire", scope: !1, file: !1, line: 1113, type: !3168, isLocal: false, isDefinition: true, scopeLine: 1113, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3170)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{null, !93, !65, !8}
!3170 = !{!3171, !3172, !3173, !3174}
!3171 = !DILocalVariable(name: "db", arg: 1, scope: !3167, file: !1, line: 1113, type: !93)
!3172 = !DILocalVariable(name: "key", arg: 2, scope: !3167, file: !1, line: 1113, type: !65)
!3173 = !DILocalVariable(name: "lazy", arg: 3, scope: !3167, file: !1, line: 1113, type: !8)
!3174 = !DILocalVariable(name: "argv", scope: !3167, file: !1, line: 1114, type: !3175)
!3175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 128, elements: !155)
!3176 = !DILocation(line: 1113, column: 31, scope: !3167)
!3177 = !DILocation(line: 1113, column: 41, scope: !3167)
!3178 = !DILocation(line: 1113, column: 50, scope: !3167)
!3179 = !DILocation(line: 1114, column: 5, scope: !3167)
!3180 = !DILocation(line: 1114, column: 11, scope: !3167)
!3181 = !DILocation(line: 1116, column: 15, scope: !3167)
!3182 = !DILocation(line: 1116, column: 29, scope: !3167)
!3183 = !DILocation(line: 1116, column: 45, scope: !3167)
!3184 = !DILocation(line: 1116, column: 5, scope: !3167)
!3185 = !DILocation(line: 1116, column: 13, scope: !3167)
!3186 = !DILocation(line: 1117, column: 5, scope: !3167)
!3187 = !DILocation(line: 1117, column: 13, scope: !3167)
!3188 = !DILocation(line: 1118, column: 5, scope: !3167)
!3189 = !DILocation(line: 1119, column: 5, scope: !3167)
!3190 = !DILocation(line: 1121, column: 16, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3167, file: !1, line: 1121, column: 9)
!3192 = !{!227, !212, i64 1880}
!3193 = !DILocation(line: 1121, column: 26, scope: !3191)
!3194 = !DILocation(line: 1121, column: 9, scope: !3167)
!3195 = !DILocation(line: 1123, column: 45, scope: !3167)
!3196 = !DILocation(line: 1122, column: 35, scope: !3191)
!3197 = !{!227, !209, i64 896}
!3198 = !DILocation(line: 1122, column: 50, scope: !3191)
!3199 = !DILocation(line: 1122, column: 9, scope: !3191)
!3200 = !DILocation(line: 1123, column: 34, scope: !3167)
!3201 = !{!227, !209, i64 536}
!3202 = !DILocation(line: 1123, column: 5, scope: !3167)
!3203 = !DILocation(line: 1125, column: 18, scope: !3167)
!3204 = !DILocation(line: 1125, column: 5, scope: !3167)
!3205 = !DILocation(line: 1126, column: 18, scope: !3167)
!3206 = !DILocation(line: 1126, column: 5, scope: !3167)
!3207 = !DILocation(line: 1127, column: 1, scope: !3167)
!3208 = distinct !DISubprogram(name: "getKeysUsingCommandTable", scope: !1, file: !1, line: 1195, type: !479, isLocal: false, isDefinition: true, scopeLine: 1195, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3209)
!3209 = !{!3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217}
!3210 = !DILocalVariable(name: "cmd", arg: 1, scope: !3208, file: !1, line: 1195, type: !464)
!3211 = !DILocalVariable(name: "argv", arg: 2, scope: !3208, file: !1, line: 1195, type: !462)
!3212 = !DILocalVariable(name: "argc", arg: 3, scope: !3208, file: !1, line: 1195, type: !8)
!3213 = !DILocalVariable(name: "numkeys", arg: 4, scope: !3208, file: !1, line: 1195, type: !481)
!3214 = !DILocalVariable(name: "j", scope: !3208, file: !1, line: 1196, type: !8)
!3215 = !DILocalVariable(name: "i", scope: !3208, file: !1, line: 1196, type: !8)
!3216 = !DILocalVariable(name: "last", scope: !3208, file: !1, line: 1196, type: !8)
!3217 = !DILocalVariable(name: "keys", scope: !3208, file: !1, line: 1196, type: !481)
!3218 = !DILocation(line: 1195, column: 52, scope: !3208)
!3219 = !DILocation(line: 1195, column: 63, scope: !3208)
!3220 = !DILocation(line: 1195, column: 73, scope: !3208)
!3221 = !DILocation(line: 1195, column: 84, scope: !3208)
!3222 = !DILocation(line: 1196, column: 12, scope: !3208)
!3223 = !DILocation(line: 1199, column: 14, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3208, file: !1, line: 1199, column: 9)
!3225 = !{!306, !212, i64 48}
!3226 = !DILocation(line: 1199, column: 23, scope: !3224)
!3227 = !DILocation(line: 1199, column: 9, scope: !3208)
!3228 = !DILocation(line: 1204, column: 17, scope: !3208)
!3229 = !{!306, !212, i64 52}
!3230 = !DILocation(line: 1196, column: 19, scope: !3208)
!3231 = !DILocation(line: 1205, column: 14, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3208, file: !1, line: 1205, column: 9)
!3233 = !DILocation(line: 1205, column: 9, scope: !3208)
!3234 = !DILocation(line: 1205, column: 30, scope: !3232)
!3235 = !DILocation(line: 1205, column: 19, scope: !3232)
!3236 = !DILocation(line: 0, scope: !3208)
!3237 = !DILocation(line: 1206, column: 39, scope: !3208)
!3238 = !DILocation(line: 1206, column: 55, scope: !3208)
!3239 = !DILocation(line: 1206, column: 32, scope: !3208)
!3240 = !DILocation(line: 1206, column: 31, scope: !3208)
!3241 = !DILocation(line: 1206, column: 12, scope: !3208)
!3242 = !DILocation(line: 1196, column: 26, scope: !3208)
!3243 = !DILocation(line: 1207, column: 19, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3208, file: !1, line: 1207, column: 5)
!3245 = !DILocation(line: 1196, column: 9, scope: !3208)
!3246 = !DILocation(line: 1207, column: 10, scope: !3244)
!3247 = !DILocation(line: 1207, column: 31, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3244, file: !1, line: 1207, column: 5)
!3249 = !DILocation(line: 1207, column: 5, scope: !3244)
!3250 = !DILocation(line: 1208, column: 15, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !1, line: 1208, column: 13)
!3252 = distinct !DILexicalBlock(scope: !3248, file: !1, line: 1207, column: 59)
!3253 = !DILocation(line: 1208, column: 13, scope: !3252)
!3254 = !DILocation(line: 1215, column: 22, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !1, line: 1215, column: 17)
!3256 = distinct !DILexicalBlock(scope: !3251, file: !1, line: 1208, column: 24)
!3257 = !DILocation(line: 1215, column: 28, scope: !3255)
!3258 = !DILocation(line: 1215, column: 41, scope: !3255)
!3259 = !DILocation(line: 1215, column: 49, scope: !3255)
!3260 = !{!306, !212, i64 16}
!3261 = !DILocation(line: 1215, column: 55, scope: !3255)
!3262 = !DILocation(line: 1215, column: 17, scope: !3256)
!3263 = !DILocation(line: 1216, column: 17, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3255, file: !1, line: 1215, column: 60)
!3265 = !DILocation(line: 1218, column: 17, scope: !3264)
!3266 = !DILocation(line: 1220, column: 17, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3255, file: !1, line: 1219, column: 20)
!3268 = !DILocation(line: 1223, column: 15, scope: !3252)
!3269 = !DILocation(line: 1223, column: 9, scope: !3252)
!3270 = !DILocation(line: 1223, column: 19, scope: !3252)
!3271 = !DILocation(line: 1207, column: 50, scope: !3248)
!3272 = !{!306, !212, i64 56}
!3273 = !DILocation(line: 1207, column: 42, scope: !3248)
!3274 = !DILocation(line: 1207, column: 5, scope: !3248)
!3275 = distinct !{!3275, !3249, !3276}
!3276 = !DILocation(line: 1224, column: 5, scope: !3244)
!3277 = !DILocation(line: 1225, column: 14, scope: !3208)
!3278 = !DILocation(line: 0, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3224, file: !1, line: 1199, column: 29)
!3280 = !DILocation(line: 1227, column: 1, scope: !3208)
!3281 = distinct !DISubprogram(name: "getKeysFromCommand", scope: !1, file: !1, line: 1240, type: !479, isLocal: false, isDefinition: true, scopeLine: 1240, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3282)
!3282 = !{!3283, !3284, !3285, !3286}
!3283 = !DILocalVariable(name: "cmd", arg: 1, scope: !3281, file: !1, line: 1240, type: !464)
!3284 = !DILocalVariable(name: "argv", arg: 2, scope: !3281, file: !1, line: 1240, type: !462)
!3285 = !DILocalVariable(name: "argc", arg: 3, scope: !3281, file: !1, line: 1240, type: !8)
!3286 = !DILocalVariable(name: "numkeys", arg: 4, scope: !3281, file: !1, line: 1240, type: !481)
!3287 = !DILocation(line: 1240, column: 46, scope: !3281)
!3288 = !DILocation(line: 1240, column: 58, scope: !3281)
!3289 = !DILocation(line: 1240, column: 68, scope: !3281)
!3290 = !DILocation(line: 1240, column: 79, scope: !3281)
!3291 = !DILocation(line: 1241, column: 14, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3281, file: !1, line: 1241, column: 9)
!3293 = !DILocation(line: 1241, column: 20, scope: !3292)
!3294 = !DILocation(line: 1241, column: 9, scope: !3281)
!3295 = !DILocation(line: 1242, column: 16, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3292, file: !1, line: 1241, column: 42)
!3297 = !DILocation(line: 1242, column: 9, scope: !3296)
!3298 = !DILocation(line: 1243, column: 29, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3292, file: !1, line: 1243, column: 16)
!3300 = !DILocation(line: 1243, column: 43, scope: !3299)
!3301 = !DILocation(line: 1243, column: 51, scope: !3299)
!3302 = !{!306, !209, i64 40}
!3303 = !DILocation(line: 1243, column: 46, scope: !3299)
!3304 = !DILocation(line: 1243, column: 16, scope: !3292)
!3305 = !DILocation(line: 1244, column: 16, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3299, file: !1, line: 1243, column: 65)
!3307 = !DILocation(line: 1244, column: 9, scope: !3306)
!3308 = !DILocation(line: 1246, column: 16, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3299, file: !1, line: 1245, column: 12)
!3310 = !DILocation(line: 1246, column: 9, scope: !3309)
!3311 = !DILocation(line: 0, scope: !3306)
!3312 = !DILocation(line: 0, scope: !3296)
!3313 = !DILocation(line: 1248, column: 1, scope: !3281)
!3314 = distinct !DISubprogram(name: "getKeysFreeResult", scope: !1, file: !1, line: 1251, type: !3315, isLocal: false, isDefinition: true, scopeLine: 1251, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3317)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{null, !481}
!3317 = !{!3318}
!3318 = !DILocalVariable(name: "result", arg: 1, scope: !3314, file: !1, line: 1251, type: !481)
!3319 = !DILocation(line: 1251, column: 29, scope: !3314)
!3320 = !DILocation(line: 1252, column: 11, scope: !3314)
!3321 = !DILocation(line: 1252, column: 5, scope: !3314)
!3322 = !DILocation(line: 1253, column: 1, scope: !3314)
!3323 = distinct !DISubprogram(name: "zunionInterGetKeys", scope: !1, file: !1, line: 1258, type: !479, isLocal: false, isDefinition: true, scopeLine: 1258, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3324)
!3324 = !{!3325, !3326, !3327, !3328, !3329, !3330, !3331}
!3325 = !DILocalVariable(name: "cmd", arg: 1, scope: !3323, file: !1, line: 1258, type: !464)
!3326 = !DILocalVariable(name: "argv", arg: 2, scope: !3323, file: !1, line: 1258, type: !462)
!3327 = !DILocalVariable(name: "argc", arg: 3, scope: !3323, file: !1, line: 1258, type: !8)
!3328 = !DILocalVariable(name: "numkeys", arg: 4, scope: !3323, file: !1, line: 1258, type: !481)
!3329 = !DILocalVariable(name: "i", scope: !3323, file: !1, line: 1259, type: !8)
!3330 = !DILocalVariable(name: "num", scope: !3323, file: !1, line: 1259, type: !8)
!3331 = !DILocalVariable(name: "keys", scope: !3323, file: !1, line: 1259, type: !481)
!3332 = !DILocation(line: 1258, column: 46, scope: !3323)
!3333 = !DILocation(line: 1258, column: 58, scope: !3323)
!3334 = !DILocation(line: 1258, column: 68, scope: !3323)
!3335 = !DILocation(line: 1258, column: 79, scope: !3323)
!3336 = !DILocation(line: 1262, column: 16, scope: !3323)
!3337 = !DILocation(line: 1262, column: 25, scope: !3323)
!3338 = !DILocation(line: 1262, column: 11, scope: !3323)
!3339 = !DILocation(line: 1259, column: 12, scope: !3323)
!3340 = !DILocation(line: 1265, column: 13, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3323, file: !1, line: 1265, column: 9)
!3342 = !DILocation(line: 1265, column: 17, scope: !3341)
!3343 = !DILocation(line: 1265, column: 31, scope: !3341)
!3344 = !DILocation(line: 1265, column: 24, scope: !3341)
!3345 = !DILocation(line: 1265, column: 9, scope: !3323)
!3346 = !DILocation(line: 1273, column: 36, scope: !3323)
!3347 = !DILocation(line: 1273, column: 32, scope: !3323)
!3348 = !DILocation(line: 1273, column: 31, scope: !3323)
!3349 = !DILocation(line: 1273, column: 12, scope: !3323)
!3350 = !DILocation(line: 1259, column: 18, scope: !3323)
!3351 = !DILocation(line: 1259, column: 9, scope: !3323)
!3352 = !DILocation(line: 1276, column: 10, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3323, file: !1, line: 1276, column: 5)
!3354 = !DILocation(line: 1276, column: 5, scope: !3353)
!3355 = !DILocation(line: 1276, column: 42, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3353, file: !1, line: 1276, column: 5)
!3357 = !DILocation(line: 1276, column: 31, scope: !3356)
!3358 = !DILocation(line: 1276, column: 39, scope: !3356)
!3359 = !DILocation(line: 1276, column: 27, scope: !3356)
!3360 = !DILocation(line: 1276, column: 5, scope: !3356)
!3361 = distinct !{!3361, !3354, !3362}
!3362 = !DILocation(line: 1276, column: 43, scope: !3353)
!3363 = distinct !{!3363, !3364}
!3364 = !{!"llvm.loop.unroll.disable"}
!3365 = !DILocation(line: 1279, column: 5, scope: !3323)
!3366 = !DILocation(line: 1279, column: 15, scope: !3323)
!3367 = !DILocation(line: 1281, column: 5, scope: !3323)
!3368 = !DILocation(line: 0, scope: !3323)
!3369 = !DILocation(line: 0, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3341, file: !1, line: 1265, column: 36)
!3371 = !DILocation(line: 1282, column: 1, scope: !3323)
!3372 = distinct !DISubprogram(name: "evalGetKeys", scope: !1, file: !1, line: 1287, type: !479, isLocal: false, isDefinition: true, scopeLine: 1287, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3373)
!3373 = !{!3374, !3375, !3376, !3377, !3378, !3379, !3380}
!3374 = !DILocalVariable(name: "cmd", arg: 1, scope: !3372, file: !1, line: 1287, type: !464)
!3375 = !DILocalVariable(name: "argv", arg: 2, scope: !3372, file: !1, line: 1287, type: !462)
!3376 = !DILocalVariable(name: "argc", arg: 3, scope: !3372, file: !1, line: 1287, type: !8)
!3377 = !DILocalVariable(name: "numkeys", arg: 4, scope: !3372, file: !1, line: 1287, type: !481)
!3378 = !DILocalVariable(name: "i", scope: !3372, file: !1, line: 1288, type: !8)
!3379 = !DILocalVariable(name: "num", scope: !3372, file: !1, line: 1288, type: !8)
!3380 = !DILocalVariable(name: "keys", scope: !3372, file: !1, line: 1288, type: !481)
!3381 = !DILocation(line: 1287, column: 39, scope: !3372)
!3382 = !DILocation(line: 1287, column: 51, scope: !3372)
!3383 = !DILocation(line: 1287, column: 61, scope: !3372)
!3384 = !DILocation(line: 1287, column: 72, scope: !3372)
!3385 = !DILocation(line: 1291, column: 16, scope: !3372)
!3386 = !DILocation(line: 1291, column: 25, scope: !3372)
!3387 = !DILocation(line: 1291, column: 11, scope: !3372)
!3388 = !DILocation(line: 1288, column: 12, scope: !3372)
!3389 = !DILocation(line: 1294, column: 13, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3372, file: !1, line: 1294, column: 9)
!3391 = !DILocation(line: 1294, column: 18, scope: !3390)
!3392 = !DILocation(line: 1294, column: 32, scope: !3390)
!3393 = !DILocation(line: 1294, column: 25, scope: !3390)
!3394 = !DILocation(line: 1294, column: 9, scope: !3372)
!3395 = !DILocation(line: 1295, column: 18, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3390, file: !1, line: 1294, column: 37)
!3397 = !DILocation(line: 1296, column: 9, scope: !3396)
!3398 = !DILocation(line: 1299, column: 32, scope: !3372)
!3399 = !DILocation(line: 1299, column: 31, scope: !3372)
!3400 = !DILocation(line: 1299, column: 12, scope: !3372)
!3401 = !DILocation(line: 1288, column: 18, scope: !3372)
!3402 = !DILocation(line: 1300, column: 14, scope: !3372)
!3403 = !DILocation(line: 1288, column: 9, scope: !3372)
!3404 = !DILocation(line: 1303, column: 10, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3372, file: !1, line: 1303, column: 5)
!3406 = !DILocation(line: 1303, column: 5, scope: !3405)
!3407 = !DILocation(line: 1303, column: 42, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3405, file: !1, line: 1303, column: 5)
!3409 = !DILocation(line: 1303, column: 31, scope: !3408)
!3410 = !DILocation(line: 1303, column: 39, scope: !3408)
!3411 = !DILocation(line: 1303, column: 27, scope: !3408)
!3412 = !DILocation(line: 1303, column: 5, scope: !3408)
!3413 = distinct !{!3413, !3406, !3414}
!3414 = !DILocation(line: 1303, column: 43, scope: !3405)
!3415 = distinct !{!3415, !3364}
!3416 = !DILocation(line: 0, scope: !3372)
!3417 = !DILocation(line: 0, scope: !3396)
!3418 = !DILocation(line: 1306, column: 1, scope: !3372)
!3419 = distinct !DISubprogram(name: "sortGetKeys", scope: !1, file: !1, line: 1315, type: !479, isLocal: false, isDefinition: true, scopeLine: 1315, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3420)
!3420 = !{!3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430}
!3421 = !DILocalVariable(name: "cmd", arg: 1, scope: !3419, file: !1, line: 1315, type: !464)
!3422 = !DILocalVariable(name: "argv", arg: 2, scope: !3419, file: !1, line: 1315, type: !462)
!3423 = !DILocalVariable(name: "argc", arg: 3, scope: !3419, file: !1, line: 1315, type: !8)
!3424 = !DILocalVariable(name: "numkeys", arg: 4, scope: !3419, file: !1, line: 1315, type: !481)
!3425 = !DILocalVariable(name: "i", scope: !3419, file: !1, line: 1316, type: !8)
!3426 = !DILocalVariable(name: "j", scope: !3419, file: !1, line: 1316, type: !8)
!3427 = !DILocalVariable(name: "num", scope: !3419, file: !1, line: 1316, type: !8)
!3428 = !DILocalVariable(name: "keys", scope: !3419, file: !1, line: 1316, type: !481)
!3429 = !DILocalVariable(name: "found_store", scope: !3419, file: !1, line: 1316, type: !8)
!3430 = !DILocalVariable(name: "skiplist", scope: !3419, file: !1, line: 1331, type: !3431)
!3431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3432, size: 512, elements: !2459)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3419, file: !1, line: 1328, size: 128, elements: !3433)
!3433 = !{!3434, !3435}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3432, file: !1, line: 1329, baseType: !9, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !3432, file: !1, line: 1330, baseType: !8, size: 32, offset: 64)
!3436 = !DILocation(line: 1315, column: 39, scope: !3419)
!3437 = !DILocation(line: 1315, column: 51, scope: !3419)
!3438 = !DILocation(line: 1315, column: 61, scope: !3419)
!3439 = !DILocation(line: 1315, column: 72, scope: !3419)
!3440 = !DILocation(line: 1316, column: 27, scope: !3419)
!3441 = !DILocation(line: 1316, column: 15, scope: !3419)
!3442 = !DILocation(line: 1320, column: 12, scope: !3419)
!3443 = !DILocation(line: 1316, column: 21, scope: !3419)
!3444 = !DILocation(line: 1322, column: 17, scope: !3419)
!3445 = !DILocation(line: 1328, column: 5, scope: !3419)
!3446 = !DILocation(line: 1331, column: 7, scope: !3419)
!3447 = !DILocation(line: 1316, column: 9, scope: !3419)
!3448 = !DILocation(line: 1338, column: 10, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3419, file: !1, line: 1338, column: 5)
!3450 = !DILocation(line: 1338, column: 19, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3449, file: !1, line: 1338, column: 5)
!3452 = !DILocation(line: 1338, column: 5, scope: !3449)
!3453 = !DILocation(line: 1316, column: 12, scope: !3419)
!3454 = !DILocation(line: 1339, column: 14, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3456, file: !1, line: 1339, column: 9)
!3456 = distinct !DILexicalBlock(scope: !3451, file: !1, line: 1338, column: 32)
!3457 = !DILocation(line: 1339, column: 9, scope: !3455)
!3458 = !DILocation(line: 1340, column: 29, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3460, file: !1, line: 1340, column: 17)
!3460 = distinct !DILexicalBlock(scope: !3461, file: !1, line: 1339, column: 52)
!3461 = distinct !DILexicalBlock(scope: !3455, file: !1, line: 1339, column: 9)
!3462 = !DILocation(line: 1340, column: 38, scope: !3459)
!3463 = !DILocation(line: 1340, column: 18, scope: !3459)
!3464 = !DILocation(line: 1340, column: 17, scope: !3460)
!3465 = !DILocation(line: 1341, column: 34, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3459, file: !1, line: 1340, column: 61)
!3467 = !{!3468, !212, i64 8}
!3468 = !{!"", !209, i64 0, !212, i64 8}
!3469 = !DILocation(line: 1341, column: 19, scope: !3466)
!3470 = !DILocation(line: 1342, column: 17, scope: !3466)
!3471 = !DILocation(line: 1343, column: 25, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3459, file: !1, line: 1343, column: 24)
!3473 = !DILocation(line: 1343, column: 58, scope: !3472)
!3474 = !DILocation(line: 1343, column: 24, scope: !3459)
!3475 = !DILocation(line: 1348, column: 27, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3472, file: !1, line: 1343, column: 73)
!3477 = !DILocation(line: 1349, column: 17, scope: !3476)
!3478 = !DILocation(line: 1339, column: 48, scope: !3461)
!3479 = !DILocation(line: 1339, column: 9, scope: !3461)
!3480 = !DILocation(line: 1339, column: 33, scope: !3461)
!3481 = !{!3468, !209, i64 0}
!3482 = !DILocation(line: 1339, column: 38, scope: !3461)
!3483 = distinct !{!3483, !3457, !3484}
!3484 = !DILocation(line: 1351, column: 9, scope: !3455)
!3485 = !DILocation(line: 0, scope: !3476)
!3486 = !DILocation(line: 1338, column: 28, scope: !3451)
!3487 = !DILocation(line: 0, scope: !3449)
!3488 = !DILocation(line: 0, scope: !3419)
!3489 = !DILocation(line: 1338, column: 5, scope: !3451)
!3490 = distinct !{!3490, !3452, !3491}
!3491 = !DILocation(line: 1352, column: 5, scope: !3449)
!3492 = !DILocation(line: 1353, column: 20, scope: !3419)
!3493 = !DILocation(line: 1353, column: 14, scope: !3419)
!3494 = !DILocation(line: 1355, column: 1, scope: !3419)
!3495 = !DILocation(line: 1354, column: 5, scope: !3419)
!3496 = distinct !DISubprogram(name: "migrateGetKeys", scope: !1, file: !1, line: 1357, type: !479, isLocal: false, isDefinition: true, scopeLine: 1357, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3497)
!3497 = !{!3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505}
!3498 = !DILocalVariable(name: "cmd", arg: 1, scope: !3496, file: !1, line: 1357, type: !464)
!3499 = !DILocalVariable(name: "argv", arg: 2, scope: !3496, file: !1, line: 1357, type: !462)
!3500 = !DILocalVariable(name: "argc", arg: 3, scope: !3496, file: !1, line: 1357, type: !8)
!3501 = !DILocalVariable(name: "numkeys", arg: 4, scope: !3496, file: !1, line: 1357, type: !481)
!3502 = !DILocalVariable(name: "i", scope: !3496, file: !1, line: 1358, type: !8)
!3503 = !DILocalVariable(name: "num", scope: !3496, file: !1, line: 1358, type: !8)
!3504 = !DILocalVariable(name: "first", scope: !3496, file: !1, line: 1358, type: !8)
!3505 = !DILocalVariable(name: "keys", scope: !3496, file: !1, line: 1358, type: !481)
!3506 = !DILocation(line: 1357, column: 42, scope: !3496)
!3507 = !DILocation(line: 1357, column: 54, scope: !3496)
!3508 = !DILocation(line: 1357, column: 64, scope: !3496)
!3509 = !DILocation(line: 1357, column: 75, scope: !3496)
!3510 = !DILocation(line: 1358, column: 17, scope: !3496)
!3511 = !DILocation(line: 1358, column: 12, scope: !3496)
!3512 = !DILocation(line: 1366, column: 14, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3496, file: !1, line: 1366, column: 9)
!3514 = !DILocation(line: 1366, column: 9, scope: !3496)
!3515 = !DILocation(line: 1358, column: 9, scope: !3496)
!3516 = !DILocation(line: 1367, column: 14, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3518, file: !1, line: 1367, column: 9)
!3518 = distinct !DILexicalBlock(scope: !3513, file: !1, line: 1366, column: 19)
!3519 = !DILocation(line: 1367, column: 9, scope: !3517)
!3520 = !DILocation(line: 1368, column: 29, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3522, file: !1, line: 1368, column: 17)
!3522 = distinct !DILexicalBlock(scope: !3523, file: !1, line: 1367, column: 36)
!3523 = distinct !DILexicalBlock(scope: !3517, file: !1, line: 1367, column: 9)
!3524 = !DILocation(line: 1368, column: 38, scope: !3521)
!3525 = !DILocation(line: 1368, column: 18, scope: !3521)
!3526 = !DILocation(line: 1368, column: 50, scope: !3521)
!3527 = !DILocation(line: 1369, column: 24, scope: !3521)
!3528 = !DILocation(line: 1369, column: 33, scope: !3521)
!3529 = !DILocation(line: 87, column: 39, scope: !809, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 1369, column: 17, scope: !3521)
!3531 = !DILocation(line: 88, column: 27, scope: !809, inlinedAt: !3530)
!3532 = !DILocation(line: 88, column: 19, scope: !809, inlinedAt: !3530)
!3533 = !DILocation(line: 89, column: 5, scope: !809, inlinedAt: !3530)
!3534 = !DILocation(line: 91, column: 20, scope: !823, inlinedAt: !3530)
!3535 = !DILocation(line: 91, column: 13, scope: !823, inlinedAt: !3530)
!3536 = !DILocation(line: 93, column: 20, scope: !823, inlinedAt: !3530)
!3537 = !DILocation(line: 93, column: 34, scope: !823, inlinedAt: !3530)
!3538 = !DILocation(line: 93, column: 13, scope: !823, inlinedAt: !3530)
!3539 = !DILocation(line: 95, column: 20, scope: !823, inlinedAt: !3530)
!3540 = !DILocation(line: 95, column: 35, scope: !823, inlinedAt: !3530)
!3541 = !DILocation(line: 95, column: 13, scope: !823, inlinedAt: !3530)
!3542 = !DILocation(line: 97, column: 20, scope: !823, inlinedAt: !3530)
!3543 = !DILocation(line: 97, column: 35, scope: !823, inlinedAt: !3530)
!3544 = !DILocation(line: 97, column: 13, scope: !823, inlinedAt: !3530)
!3545 = !DILocation(line: 99, column: 20, scope: !823, inlinedAt: !3530)
!3546 = !DILocation(line: 99, column: 35, scope: !823, inlinedAt: !3530)
!3547 = !DILocation(line: 99, column: 13, scope: !823, inlinedAt: !3530)
!3548 = !DILocation(line: 101, column: 5, scope: !809, inlinedAt: !3530)
!3549 = !DILocation(line: 102, column: 1, scope: !809, inlinedAt: !3530)
!3550 = !DILocation(line: 1368, column: 17, scope: !3522)
!3551 = !DILocation(line: 0, scope: !823, inlinedAt: !3530)
!3552 = !DILocation(line: 0, scope: !3521)
!3553 = !DILocation(line: 1369, column: 38, scope: !3521)
!3554 = !DILocation(line: 1371, column: 26, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3521, file: !1, line: 1370, column: 13)
!3556 = !DILocation(line: 1372, column: 27, scope: !3555)
!3557 = !DILocation(line: 1373, column: 17, scope: !3555)
!3558 = !DILocation(line: 1367, column: 32, scope: !3523)
!3559 = !DILocation(line: 1367, column: 9, scope: !3523)
!3560 = !DILocation(line: 1367, column: 23, scope: !3523)
!3561 = distinct !{!3561, !3519, !3562}
!3562 = !DILocation(line: 1375, column: 9, scope: !3517)
!3563 = !DILocation(line: 0, scope: !3496)
!3564 = !DILocation(line: 1378, column: 32, scope: !3496)
!3565 = !DILocation(line: 1378, column: 31, scope: !3496)
!3566 = !DILocation(line: 1378, column: 12, scope: !3496)
!3567 = !DILocation(line: 1358, column: 25, scope: !3496)
!3568 = !DILocation(line: 1379, column: 10, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3496, file: !1, line: 1379, column: 5)
!3570 = !DILocation(line: 1379, column: 19, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3569, file: !1, line: 1379, column: 5)
!3572 = !DILocation(line: 1379, column: 5, scope: !3569)
!3573 = !DILocation(line: 1379, column: 46, scope: !3571)
!3574 = !DILocation(line: 1379, column: 31, scope: !3571)
!3575 = !DILocation(line: 1379, column: 39, scope: !3571)
!3576 = !DILocation(line: 1379, column: 27, scope: !3571)
!3577 = !DILocation(line: 1379, column: 5, scope: !3571)
!3578 = distinct !{!3578, !3572, !3579}
!3579 = !DILocation(line: 1379, column: 47, scope: !3569)
!3580 = distinct !{!3580, !3364}
!3581 = !DILocation(line: 1380, column: 14, scope: !3496)
!3582 = !DILocation(line: 1381, column: 5, scope: !3496)
!3583 = distinct !DISubprogram(name: "georadiusGetKeys", scope: !1, file: !1, line: 1388, type: !479, isLocal: false, isDefinition: true, scopeLine: 1388, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3584)
!3584 = !{!3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593}
!3585 = !DILocalVariable(name: "cmd", arg: 1, scope: !3583, file: !1, line: 1388, type: !464)
!3586 = !DILocalVariable(name: "argv", arg: 2, scope: !3583, file: !1, line: 1388, type: !462)
!3587 = !DILocalVariable(name: "argc", arg: 3, scope: !3583, file: !1, line: 1388, type: !8)
!3588 = !DILocalVariable(name: "numkeys", arg: 4, scope: !3583, file: !1, line: 1388, type: !481)
!3589 = !DILocalVariable(name: "i", scope: !3583, file: !1, line: 1389, type: !8)
!3590 = !DILocalVariable(name: "num", scope: !3583, file: !1, line: 1389, type: !8)
!3591 = !DILocalVariable(name: "keys", scope: !3583, file: !1, line: 1389, type: !481)
!3592 = !DILocalVariable(name: "stored_key", scope: !3583, file: !1, line: 1393, type: !8)
!3593 = !DILocalVariable(name: "arg", scope: !3594, file: !1, line: 1395, type: !9)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !1, line: 1394, column: 32)
!3595 = distinct !DILexicalBlock(scope: !3596, file: !1, line: 1394, column: 5)
!3596 = distinct !DILexicalBlock(scope: !3583, file: !1, line: 1394, column: 5)
!3597 = !DILocation(line: 1388, column: 44, scope: !3583)
!3598 = !DILocation(line: 1388, column: 56, scope: !3583)
!3599 = !DILocation(line: 1388, column: 66, scope: !3583)
!3600 = !DILocation(line: 1388, column: 77, scope: !3583)
!3601 = !DILocation(line: 1393, column: 9, scope: !3583)
!3602 = !DILocation(line: 1389, column: 9, scope: !3583)
!3603 = !DILocation(line: 1394, column: 10, scope: !3596)
!3604 = !DILocation(line: 1394, column: 19, scope: !3595)
!3605 = !DILocation(line: 1394, column: 5, scope: !3596)
!3606 = !DILocation(line: 1395, column: 21, scope: !3594)
!3607 = !DILocation(line: 1395, column: 30, scope: !3594)
!3608 = !DILocation(line: 1395, column: 15, scope: !3594)
!3609 = !DILocation(line: 1400, column: 15, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3594, file: !1, line: 1400, column: 13)
!3611 = !DILocation(line: 1400, column: 40, scope: !3610)
!3612 = !DILocation(line: 1400, column: 44, scope: !3610)
!3613 = !DILocation(line: 1400, column: 74, scope: !3610)
!3614 = !DILocation(line: 1400, column: 80, scope: !3610)
!3615 = !DILocation(line: 1400, column: 84, scope: !3610)
!3616 = !DILocation(line: 1400, column: 13, scope: !3594)
!3617 = !DILocation(line: 1403, column: 9, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3610, file: !1, line: 1400, column: 93)
!3619 = !DILocation(line: 0, scope: !3583)
!3620 = !DILocation(line: 0, scope: !3596)
!3621 = !DILocation(line: 1394, column: 28, scope: !3595)
!3622 = !DILocation(line: 1394, column: 5, scope: !3595)
!3623 = distinct !{!3623, !3605, !3624}
!3624 = !DILocation(line: 1404, column: 5, scope: !3596)
!3625 = !DILocation(line: 1405, column: 27, scope: !3583)
!3626 = !DILocation(line: 1405, column: 13, scope: !3583)
!3627 = !DILocation(line: 1389, column: 12, scope: !3583)
!3628 = !DILocation(line: 1411, column: 32, scope: !3583)
!3629 = !DILocation(line: 1411, column: 12, scope: !3583)
!3630 = !DILocation(line: 1389, column: 18, scope: !3583)
!3631 = !DILocation(line: 1414, column: 13, scope: !3583)
!3632 = !DILocation(line: 1415, column: 8, scope: !3583)
!3633 = !DILocation(line: 1416, column: 10, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3635, file: !1, line: 1415, column: 17)
!3635 = distinct !DILexicalBlock(scope: !3583, file: !1, line: 1415, column: 8)
!3636 = !DILocation(line: 1416, column: 18, scope: !3634)
!3637 = !DILocation(line: 1417, column: 5, scope: !3634)
!3638 = !DILocation(line: 1418, column: 14, scope: !3583)
!3639 = !DILocation(line: 1419, column: 5, scope: !3583)
!3640 = distinct !DISubprogram(name: "xreadGetKeys", scope: !1, file: !1, line: 1424, type: !479, isLocal: false, isDefinition: true, scopeLine: 1424, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3641)
!3641 = !{!3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650}
!3642 = !DILocalVariable(name: "cmd", arg: 1, scope: !3640, file: !1, line: 1424, type: !464)
!3643 = !DILocalVariable(name: "argv", arg: 2, scope: !3640, file: !1, line: 1424, type: !462)
!3644 = !DILocalVariable(name: "argc", arg: 3, scope: !3640, file: !1, line: 1424, type: !8)
!3645 = !DILocalVariable(name: "numkeys", arg: 4, scope: !3640, file: !1, line: 1424, type: !481)
!3646 = !DILocalVariable(name: "i", scope: !3640, file: !1, line: 1425, type: !8)
!3647 = !DILocalVariable(name: "num", scope: !3640, file: !1, line: 1425, type: !8)
!3648 = !DILocalVariable(name: "keys", scope: !3640, file: !1, line: 1425, type: !481)
!3649 = !DILocalVariable(name: "streams_pos", scope: !3640, file: !1, line: 1432, type: !8)
!3650 = !DILocalVariable(name: "arg", scope: !3651, file: !1, line: 1434, type: !9)
!3651 = distinct !DILexicalBlock(scope: !3652, file: !1, line: 1433, column: 32)
!3652 = distinct !DILexicalBlock(scope: !3653, file: !1, line: 1433, column: 5)
!3653 = distinct !DILexicalBlock(scope: !3640, file: !1, line: 1433, column: 5)
!3654 = !DILocation(line: 1424, column: 40, scope: !3640)
!3655 = !DILocation(line: 1424, column: 52, scope: !3640)
!3656 = !DILocation(line: 1424, column: 62, scope: !3640)
!3657 = !DILocation(line: 1424, column: 73, scope: !3640)
!3658 = !DILocation(line: 1425, column: 12, scope: !3640)
!3659 = !DILocation(line: 1432, column: 9, scope: !3640)
!3660 = !DILocation(line: 1425, column: 9, scope: !3640)
!3661 = !DILocation(line: 1433, column: 10, scope: !3653)
!3662 = !DILocation(line: 1433, column: 19, scope: !3652)
!3663 = !DILocation(line: 1433, column: 5, scope: !3653)
!3664 = !DILocation(line: 1450, column: 9, scope: !3640)
!3665 = !DILocation(line: 1434, column: 21, scope: !3651)
!3666 = !DILocation(line: 1434, column: 30, scope: !3651)
!3667 = !DILocation(line: 1434, column: 15, scope: !3651)
!3668 = !DILocation(line: 1435, column: 14, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3651, file: !1, line: 1435, column: 13)
!3670 = !DILocation(line: 1435, column: 13, scope: !3651)
!3671 = !DILocation(line: 1437, column: 21, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3669, file: !1, line: 1437, column: 20)
!3673 = !DILocation(line: 1437, column: 20, scope: !3669)
!3674 = !DILocation(line: 1439, column: 21, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3672, file: !1, line: 1439, column: 20)
!3676 = !DILocation(line: 1439, column: 20, scope: !3672)
!3677 = !DILocation(line: 1441, column: 21, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3675, file: !1, line: 1441, column: 20)
!3679 = !DILocation(line: 1441, column: 20, scope: !3675)
!3680 = !DILocation(line: 0, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3672, file: !1, line: 1437, column: 47)
!3682 = !DILocation(line: 1449, column: 5, scope: !3652)
!3683 = !DILocation(line: 0, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3669, file: !1, line: 1435, column: 40)
!3685 = !DILocation(line: 1433, column: 28, scope: !3652)
!3686 = !DILocation(line: 1433, column: 5, scope: !3652)
!3687 = distinct !{!3687, !3663, !3688}
!3688 = !DILocation(line: 1449, column: 5, scope: !3653)
!3689 = !DILocation(line: 1443, column: 21, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3678, file: !1, line: 1443, column: 20)
!3691 = !DILocation(line: 1443, column: 20, scope: !3678)
!3692 = !DILocation(line: 0, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3690, file: !1, line: 1446, column: 16)
!3694 = !DILocation(line: 1450, column: 21, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3640, file: !1, line: 1450, column: 9)
!3696 = !DILocation(line: 1453, column: 27, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3640, file: !1, line: 1453, column: 9)
!3698 = !DILocation(line: 1450, column: 53, scope: !3695)
!3699 = !DILocation(line: 1450, column: 28, scope: !3695)
!3700 = !DILocation(line: 1453, column: 34, scope: !3697)
!3701 = !DILocation(line: 1453, column: 50, scope: !3697)
!3702 = !DILocation(line: 1453, column: 9, scope: !3640)
!3703 = !DILocation(line: 1457, column: 9, scope: !3640)
!3704 = !DILocation(line: 1460, column: 34, scope: !3640)
!3705 = !DILocation(line: 1460, column: 32, scope: !3640)
!3706 = !DILocation(line: 1460, column: 12, scope: !3640)
!3707 = !DILocation(line: 1425, column: 22, scope: !3640)
!3708 = !DILocation(line: 1461, column: 10, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3640, file: !1, line: 1461, column: 5)
!3710 = !DILocation(line: 0, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3709, file: !1, line: 1461, column: 5)
!3712 = !DILocation(line: 1461, column: 37, scope: !3711)
!3713 = !DILocation(line: 1461, column: 31, scope: !3711)
!3714 = !DILocation(line: 1461, column: 5, scope: !3709)
!3715 = !DILocation(line: 1461, column: 66, scope: !3711)
!3716 = !DILocation(line: 1461, column: 70, scope: !3711)
!3717 = !DILocation(line: 1461, column: 5, scope: !3711)
!3718 = !DILocation(line: 1461, column: 48, scope: !3711)
!3719 = distinct !{!3719, !3714, !3720}
!3720 = !DILocation(line: 1461, column: 72, scope: !3709)
!3721 = !DILocation(line: 0, scope: !3640)
!3722 = !DILocation(line: 0, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3697, file: !1, line: 1453, column: 56)
!3724 = !DILocation(line: 1464, column: 1, scope: !3640)
!3725 = distinct !DISubprogram(name: "slotToKeyUpdateKey", scope: !1, file: !1, line: 1470, type: !3726, isLocal: false, isDefinition: true, scopeLine: 1470, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3728)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{null, !65, !8}
!3728 = !{!3729, !3730, !3731, !3732, !3736, !3737}
!3729 = !DILocalVariable(name: "key", arg: 1, scope: !3725, file: !1, line: 1470, type: !65)
!3730 = !DILocalVariable(name: "add", arg: 2, scope: !3725, file: !1, line: 1470, type: !8)
!3731 = !DILocalVariable(name: "hashslot", scope: !3725, file: !1, line: 1471, type: !45)
!3732 = !DILocalVariable(name: "buf", scope: !3725, file: !1, line: 1472, type: !3733)
!3733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, elements: !3734)
!3734 = !{!3735}
!3735 = !DISubrange(count: 64)
!3736 = !DILocalVariable(name: "indexed", scope: !3725, file: !1, line: 1473, type: !1919)
!3737 = !DILocalVariable(name: "keylen", scope: !3725, file: !1, line: 1474, type: !454)
!3738 = !DILocation(line: 1470, column: 31, scope: !3725)
!3739 = !DILocation(line: 1470, column: 40, scope: !3725)
!3740 = !DILocation(line: 1471, column: 46, scope: !3725)
!3741 = !DILocation(line: 87, column: 39, scope: !809, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 1471, column: 50, scope: !3725)
!3743 = !DILocation(line: 88, column: 27, scope: !809, inlinedAt: !3742)
!3744 = !DILocation(line: 88, column: 19, scope: !809, inlinedAt: !3742)
!3745 = !DILocation(line: 89, column: 5, scope: !809, inlinedAt: !3742)
!3746 = !DILocation(line: 91, column: 20, scope: !823, inlinedAt: !3742)
!3747 = !DILocation(line: 91, column: 13, scope: !823, inlinedAt: !3742)
!3748 = !DILocation(line: 93, column: 20, scope: !823, inlinedAt: !3742)
!3749 = !DILocation(line: 93, column: 34, scope: !823, inlinedAt: !3742)
!3750 = !DILocation(line: 93, column: 13, scope: !823, inlinedAt: !3742)
!3751 = !DILocation(line: 95, column: 20, scope: !823, inlinedAt: !3742)
!3752 = !DILocation(line: 95, column: 35, scope: !823, inlinedAt: !3742)
!3753 = !DILocation(line: 95, column: 13, scope: !823, inlinedAt: !3742)
!3754 = !DILocation(line: 97, column: 20, scope: !823, inlinedAt: !3742)
!3755 = !DILocation(line: 97, column: 35, scope: !823, inlinedAt: !3742)
!3756 = !DILocation(line: 97, column: 13, scope: !823, inlinedAt: !3742)
!3757 = !DILocation(line: 99, column: 20, scope: !823, inlinedAt: !3742)
!3758 = !DILocation(line: 99, column: 35, scope: !823, inlinedAt: !3742)
!3759 = !DILocation(line: 99, column: 13, scope: !823, inlinedAt: !3742)
!3760 = !DILocation(line: 0, scope: !823, inlinedAt: !3742)
!3761 = !DILocation(line: 0, scope: !3725)
!3762 = !DILocation(line: 102, column: 1, scope: !809, inlinedAt: !3742)
!3763 = !DILocation(line: 1471, column: 50, scope: !3725)
!3764 = !DILocation(line: 1471, column: 29, scope: !3725)
!3765 = !DILocation(line: 1471, column: 18, scope: !3725)
!3766 = !DILocation(line: 1472, column: 5, scope: !3725)
!3767 = !DILocation(line: 1472, column: 19, scope: !3725)
!3768 = !DILocation(line: 1473, column: 20, scope: !3725)
!3769 = !DILocation(line: 1474, column: 33, scope: !3725)
!3770 = !DILocation(line: 87, column: 39, scope: !809, inlinedAt: !3771)
!3771 = distinct !DILocation(line: 1474, column: 21, scope: !3725)
!3772 = !DILocation(line: 88, column: 27, scope: !809, inlinedAt: !3771)
!3773 = !DILocation(line: 88, column: 19, scope: !809, inlinedAt: !3771)
!3774 = !DILocation(line: 89, column: 5, scope: !809, inlinedAt: !3771)
!3775 = !DILocation(line: 91, column: 20, scope: !823, inlinedAt: !3771)
!3776 = !DILocation(line: 91, column: 13, scope: !823, inlinedAt: !3771)
!3777 = !DILocation(line: 93, column: 20, scope: !823, inlinedAt: !3771)
!3778 = !DILocation(line: 93, column: 34, scope: !823, inlinedAt: !3771)
!3779 = !DILocation(line: 93, column: 13, scope: !823, inlinedAt: !3771)
!3780 = !DILocation(line: 95, column: 20, scope: !823, inlinedAt: !3771)
!3781 = !DILocation(line: 95, column: 35, scope: !823, inlinedAt: !3771)
!3782 = !DILocation(line: 95, column: 13, scope: !823, inlinedAt: !3771)
!3783 = !DILocation(line: 97, column: 20, scope: !823, inlinedAt: !3771)
!3784 = !DILocation(line: 97, column: 35, scope: !823, inlinedAt: !3771)
!3785 = !DILocation(line: 97, column: 13, scope: !823, inlinedAt: !3771)
!3786 = !DILocation(line: 99, column: 20, scope: !823, inlinedAt: !3771)
!3787 = !DILocation(line: 99, column: 35, scope: !823, inlinedAt: !3771)
!3788 = !DILocation(line: 99, column: 13, scope: !823, inlinedAt: !3771)
!3789 = !DILocation(line: 0, scope: !823, inlinedAt: !3771)
!3790 = !DILocation(line: 102, column: 1, scope: !809, inlinedAt: !3771)
!3791 = !DILocation(line: 1474, column: 12, scope: !3725)
!3792 = !DILocation(line: 1476, column: 51, scope: !3725)
!3793 = !DILocation(line: 1476, column: 12, scope: !3725)
!3794 = !DILocation(line: 1476, column: 5, scope: !3725)
!3795 = !DILocation(line: 1476, column: 48, scope: !3725)
!3796 = !DILocation(line: 1477, column: 15, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3725, file: !1, line: 1477, column: 9)
!3798 = !DILocation(line: 1477, column: 18, scope: !3797)
!3799 = !DILocation(line: 1477, column: 9, scope: !3725)
!3800 = !DILocation(line: 1477, column: 34, scope: !3797)
!3801 = !DILocation(line: 1477, column: 24, scope: !3797)
!3802 = !DILocation(line: 1478, column: 28, scope: !3725)
!3803 = !DILocation(line: 1478, column: 18, scope: !3725)
!3804 = !DILocation(line: 1478, column: 16, scope: !3725)
!3805 = !DILocation(line: 1479, column: 18, scope: !3725)
!3806 = !DILocation(line: 1479, column: 5, scope: !3725)
!3807 = !DILocation(line: 1479, column: 16, scope: !3725)
!3808 = !DILocation(line: 1480, column: 19, scope: !3725)
!3809 = !DILocation(line: 1480, column: 27, scope: !3725)
!3810 = !DILocation(line: 1480, column: 5, scope: !3725)
!3811 = !DILocation(line: 0, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3813, file: !1, line: 1483, column: 12)
!3813 = distinct !DILexicalBlock(scope: !3725, file: !1, line: 1481, column: 9)
!3814 = !DILocation(line: 1481, column: 9, scope: !3725)
!3815 = !DILocation(line: 1482, column: 9, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3813, file: !1, line: 1481, column: 14)
!3817 = !DILocation(line: 1483, column: 5, scope: !3816)
!3818 = !DILocation(line: 1484, column: 9, scope: !3812)
!3819 = !DILocation(line: 1486, column: 17, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3725, file: !1, line: 1486, column: 9)
!3821 = !DILocation(line: 1486, column: 9, scope: !3725)
!3822 = !DILocation(line: 1486, column: 25, scope: !3820)
!3823 = !DILocation(line: 1487, column: 1, scope: !3725)
!3824 = distinct !DISubprogram(name: "getKeysInSlot", scope: !1, file: !1, line: 1507, type: !3825, isLocal: false, isDefinition: true, scopeLine: 1507, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3827)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!45, !45, !462, !45}
!3827 = !{!3828, !3829, !3830, !3831, !3879, !3880}
!3828 = !DILocalVariable(name: "hashslot", arg: 1, scope: !3824, file: !1, line: 1507, type: !45)
!3829 = !DILocalVariable(name: "keys", arg: 2, scope: !3824, file: !1, line: 1507, type: !462)
!3830 = !DILocalVariable(name: "count", arg: 3, scope: !3824, file: !1, line: 1507, type: !45)
!3831 = !DILocalVariable(name: "iter", scope: !3824, file: !1, line: 1508, type: !3832)
!3832 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxIterator", file: !3833, line: 186, baseType: !3834)
!3833 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rax.h", directory: "/root/.unikraft/apps/redis/build")
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxIterator", file: !3833, line: 175, size: 3840, elements: !3835)
!3835 = !{!3836, !3837, !3855, !3856, !3857, !3858, !3859, !3863, !3864, !3873}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3834, file: !3833, line: 176, baseType: !8, size: 32)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3834, file: !3833, line: 177, baseType: !3838, size: 64, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !3833, line: 137, baseType: !3840)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !3833, line: 133, size: 192, elements: !3841)
!3841 = !{!3842, !3853, !3854}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3840, file: !3833, line: 134, baseType: !3843, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !3833, line: 131, baseType: !3845)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !3833, line: 98, size: 32, elements: !3846)
!3846 = !{!3847, !3848, !3849, !3850, !3851}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !3845, file: !3833, line: 99, baseType: !43, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !3845, file: !3833, line: 100, baseType: !43, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !3845, file: !3833, line: 101, baseType: !43, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3845, file: !3833, line: 102, baseType: !43, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3845, file: !3833, line: 130, baseType: !3852, offset: 32)
!3852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, elements: !27)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !3840, file: !3833, line: 135, baseType: !53, size: 64, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !3840, file: !3833, line: 136, baseType: !53, size: 64, offset: 128)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3834, file: !3833, line: 178, baseType: !1919, size: 64, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3834, file: !3833, line: 179, baseType: !4, size: 64, offset: 192)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !3834, file: !3833, line: 180, baseType: !454, size: 64, offset: 256)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "key_max", scope: !3834, file: !3833, line: 181, baseType: !454, size: 64, offset: 320)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "key_static_string", scope: !3834, file: !3833, line: 182, baseType: !3860, size: 1024, offset: 384)
!3860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1024, elements: !3861)
!3861 = !{!3862}
!3862 = !DISubrange(count: 128)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3834, file: !3833, line: 183, baseType: !3843, size: 64, offset: 1408)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3834, file: !3833, line: 184, baseType: !3865, size: 2304, offset: 1472)
!3865 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxStack", file: !3833, line: 150, baseType: !3866)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxStack", file: !3833, line: 143, size: 2304, elements: !3867)
!3867 = !{!3868, !3869, !3870, !3871, !3872}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3866, file: !3833, line: 144, baseType: !5, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !3866, file: !3833, line: 145, baseType: !454, size: 64, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "maxitems", scope: !3866, file: !3833, line: 145, baseType: !454, size: 64, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "static_items", scope: !3866, file: !3833, line: 148, baseType: !2502, size: 2048, offset: 192)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "oom", scope: !3866, file: !3833, line: 149, baseType: !8, size: 32, offset: 2240)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "node_cb", scope: !3834, file: !3833, line: 185, baseType: !3874, size: 64, offset: 3776)
!3874 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNodeCallback", file: !3833, line: 165, baseType: !3875)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!8, !3878}
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3879 = !DILocalVariable(name: "j", scope: !3824, file: !1, line: 1509, type: !8)
!3880 = !DILocalVariable(name: "indexed", scope: !3824, file: !1, line: 1510, type: !3881)
!3881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 16, elements: !155)
!3882 = !DILocation(line: 1507, column: 41, scope: !3824)
!3883 = !DILocation(line: 1507, column: 58, scope: !3824)
!3884 = !DILocation(line: 1507, column: 77, scope: !3824)
!3885 = !DILocation(line: 1508, column: 5, scope: !3824)
!3886 = !DILocation(line: 1509, column: 9, scope: !3824)
!3887 = !DILocation(line: 1510, column: 5, scope: !3824)
!3888 = !DILocation(line: 1510, column: 19, scope: !3824)
!3889 = !DILocation(line: 1512, column: 28, scope: !3824)
!3890 = !DILocation(line: 1512, column: 18, scope: !3824)
!3891 = !DILocation(line: 1512, column: 16, scope: !3824)
!3892 = !DILocation(line: 1513, column: 18, scope: !3824)
!3893 = !DILocation(line: 1513, column: 5, scope: !3824)
!3894 = !DILocation(line: 1513, column: 16, scope: !3824)
!3895 = !DILocation(line: 1514, column: 27, scope: !3824)
!3896 = !DILocation(line: 1514, column: 36, scope: !3824)
!3897 = !DILocation(line: 1508, column: 17, scope: !3824)
!3898 = !DILocation(line: 1514, column: 5, scope: !3824)
!3899 = !DILocation(line: 1515, column: 5, scope: !3824)
!3900 = !DILocation(line: 1516, column: 5, scope: !3824)
!3901 = !DILocation(line: 1517, column: 18, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3903, file: !1, line: 1517, column: 13)
!3903 = distinct !DILexicalBlock(scope: !3824, file: !1, line: 1516, column: 38)
!3904 = !DILocation(line: 1516, column: 16, scope: !3824)
!3905 = !DILocation(line: 1516, column: 19, scope: !3824)
!3906 = !DILocation(line: 1516, column: 22, scope: !3824)
!3907 = !{!3908, !209, i64 16}
!3908 = !{!"raxIterator", !212, i64 0, !209, i64 8, !209, i64 16, !209, i64 24, !228, i64 32, !228, i64 40, !210, i64 48, !209, i64 176, !3909, i64 184, !209, i64 472}
!3909 = !{!"raxStack", !209, i64 0, !228, i64 8, !228, i64 16, !210, i64 24, !212, i64 280}
!3910 = !DILocation(line: 1517, column: 13, scope: !3902)
!3911 = !DILocation(line: 1517, column: 28, scope: !3902)
!3912 = !DILocation(line: 1517, column: 25, scope: !3902)
!3913 = !DILocation(line: 1517, column: 39, scope: !3902)
!3914 = !DILocation(line: 1517, column: 42, scope: !3902)
!3915 = !DILocation(line: 1517, column: 57, scope: !3902)
!3916 = !DILocation(line: 1517, column: 54, scope: !3902)
!3917 = !DILocation(line: 1517, column: 13, scope: !3903)
!3918 = !DILocation(line: 1518, column: 55, scope: !3903)
!3919 = !DILocation(line: 1518, column: 63, scope: !3903)
!3920 = !{!3908, !228, i64 32}
!3921 = !DILocation(line: 1518, column: 70, scope: !3903)
!3922 = !DILocation(line: 1518, column: 21, scope: !3903)
!3923 = !DILocation(line: 1518, column: 15, scope: !3903)
!3924 = !DILocation(line: 1518, column: 9, scope: !3903)
!3925 = !DILocation(line: 1518, column: 19, scope: !3903)
!3926 = distinct !{!3926, !3900, !3927}
!3927 = !DILocation(line: 1519, column: 5, scope: !3824)
!3928 = !DILocation(line: 1520, column: 5, scope: !3824)
!3929 = !DILocation(line: 0, scope: !3903)
!3930 = !DILocation(line: 1522, column: 1, scope: !3824)
!3931 = !DILocation(line: 1521, column: 5, scope: !3824)
!3932 = distinct !DISubprogram(name: "delKeysInSlot", scope: !1, file: !1, line: 1526, type: !3933, isLocal: false, isDefinition: true, scopeLine: 1526, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3935)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!45, !45}
!3935 = !{!3936, !3937, !3938, !3939, !3940}
!3936 = !DILocalVariable(name: "hashslot", arg: 1, scope: !3932, file: !1, line: 1526, type: !45)
!3937 = !DILocalVariable(name: "iter", scope: !3932, file: !1, line: 1527, type: !3832)
!3938 = !DILocalVariable(name: "j", scope: !3932, file: !1, line: 1528, type: !8)
!3939 = !DILocalVariable(name: "indexed", scope: !3932, file: !1, line: 1529, type: !3881)
!3940 = !DILocalVariable(name: "key", scope: !3941, file: !1, line: 1538, type: !65)
!3941 = distinct !DILexicalBlock(scope: !3932, file: !1, line: 1534, column: 55)
!3942 = !DILocation(line: 1526, column: 41, scope: !3932)
!3943 = !DILocation(line: 1527, column: 5, scope: !3932)
!3944 = !DILocation(line: 1528, column: 9, scope: !3932)
!3945 = !DILocation(line: 1529, column: 5, scope: !3932)
!3946 = !DILocation(line: 1529, column: 19, scope: !3932)
!3947 = !DILocation(line: 1531, column: 28, scope: !3932)
!3948 = !DILocation(line: 1531, column: 18, scope: !3932)
!3949 = !DILocation(line: 1531, column: 16, scope: !3932)
!3950 = !DILocation(line: 1532, column: 18, scope: !3932)
!3951 = !DILocation(line: 1532, column: 5, scope: !3932)
!3952 = !DILocation(line: 1532, column: 16, scope: !3932)
!3953 = !DILocation(line: 1533, column: 27, scope: !3932)
!3954 = !DILocation(line: 1533, column: 36, scope: !3932)
!3955 = !DILocation(line: 1527, column: 17, scope: !3932)
!3956 = !DILocation(line: 1533, column: 5, scope: !3932)
!3957 = !DILocation(line: 1534, column: 5, scope: !3932)
!3958 = !DILocation(line: 1534, column: 18, scope: !3932)
!3959 = !DILocation(line: 1534, column: 11, scope: !3932)
!3960 = !DILocation(line: 1535, column: 9, scope: !3941)
!3961 = !DILocation(line: 1536, column: 9, scope: !3941)
!3962 = !DILocation(line: 1538, column: 52, scope: !3941)
!3963 = !DILocation(line: 1538, column: 55, scope: !3941)
!3964 = !DILocation(line: 1538, column: 63, scope: !3941)
!3965 = !DILocation(line: 1538, column: 70, scope: !3941)
!3966 = !DILocation(line: 1538, column: 21, scope: !3941)
!3967 = !DILocation(line: 1538, column: 15, scope: !3941)
!3968 = !DILocation(line: 1539, column: 26, scope: !3941)
!3969 = !DILocation(line: 1539, column: 9, scope: !3941)
!3970 = !DILocation(line: 1540, column: 9, scope: !3941)
!3971 = !DILocation(line: 1541, column: 10, scope: !3941)
!3972 = distinct !{!3972, !3957, !3973}
!3973 = !DILocation(line: 1542, column: 5, scope: !3932)
!3974 = !DILocation(line: 0, scope: !3941)
!3975 = !DILocation(line: 1543, column: 5, scope: !3932)
!3976 = !DILocation(line: 1545, column: 1, scope: !3932)
!3977 = !DILocation(line: 1544, column: 5, scope: !3932)
!3978 = distinct !DISubprogram(name: "countKeysInSlot", scope: !1, file: !1, line: 1547, type: !3933, isLocal: false, isDefinition: true, scopeLine: 1547, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3979)
!3979 = !{!3980}
!3980 = !DILocalVariable(name: "hashslot", arg: 1, scope: !3978, file: !1, line: 1547, type: !45)
!3981 = !DILocation(line: 1547, column: 43, scope: !3978)
!3982 = !DILocation(line: 1548, column: 19, scope: !3978)
!3983 = !DILocation(line: 1548, column: 12, scope: !3978)
!3984 = !DILocation(line: 1548, column: 5, scope: !3978)
