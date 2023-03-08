; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/redis-check-rdb.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/redis-check-rdb.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { %struct._rio*, %struct.redisObject*, i32, i64, i64, i64, i32, i32, [1024 x i8] }
%struct._rio = type { i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*)*, i32 (%struct._rio*)*, void (%struct._rio*, i8*, i64)*, i64, i64, i64, %union.anon }
%union.anon = type { %struct.anon.3 }
%struct.anon.3 = type { i32*, i32*, i32, i64, i8* }
%struct.redisObject = type { i32, i32, i8* }
%struct.redisServer = type { i32, i8*, i8*, i8**, i32, i32, i32, %struct.redisDb*, %struct.dict*, %struct.dict*, %struct.aeEventLoop*, i32, i32, i32, i32, i8*, i8*, i32, i32, [41 x i8], i32, i64, i32, %struct.dict*, %struct.dict*, %struct.list*, [2 x i32], i32, i32, [16 x i8*], i32, i8*, i32, [16 x i32], i32, i32, [16 x i32], i32, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.client*, %struct.rax*, i32, i64, [256 x i8], %struct.dict*, i64, i32, i32, i64, i64, i64, i64, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, %struct.list*, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, [3 x %struct.anon.9], i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, [3 x %struct.clientBufferLimitsConfig], i32, i32, i8*, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list*, i8*, i32, i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, i32, %struct.saveparam*, i32, i8*, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, [2 x i32], %struct.anon.10, %struct.redisOpArray, i8*, i32, i8*, i32, [41 x i8], [41 x i8], i64, i64, i32, i32, i8*, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, %struct.client*, %struct.client*, i32, i32, i64, i64, i64, i32, i32, i8*, i64, i32, i32, i32, i64, i32, i32, i32, i8*, [41 x i8], i64, i32, %struct.dict*, %struct.list*, i32, %struct.list*, i32, i32, i64, i32, i32, i32, i32, i64, i32, [6 x i32], %struct.list*, %struct.list*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, %struct.dict*, %struct.list*, i32, i32, i64, i8*, %struct.clusterState*, i32, i32, i32, i32, i8*, i32, i32, i32, %struct.lua_State*, %struct.client*, %struct.client*, %struct.dict*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.dict*, i8*, i8*, i32, i32, i32, i64, %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_* }
%struct.redisDb = type { %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, i32, i64, %struct.list* }
%struct.aeEventLoop = type { i32, i32, i64, i64, %struct.aeFileEvent*, %struct.aeFiredEvent*, %struct.aeTimeEvent*, i32, i8*, void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)* }
%struct.aeFileEvent = type { i32, void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)*, i8* }
%struct.aeFiredEvent = type { i32, i32 }
%struct.aeTimeEvent = type { i64, i64, i64, i32 (%struct.aeEventLoop*, i64, i8*)*, void (%struct.aeEventLoop*, i8*)*, i8*, %struct.aeTimeEvent*, %struct.aeTimeEvent* }
%struct.rax = type { %struct.raxNode*, i64, i64 }
%struct.raxNode = type { i32, [0 x i8] }
%struct.redisCommand = type { i8*, void (%struct.client*)*, i32, i8*, i32, i32* (%struct.redisCommand*, %struct.redisObject**, i32, i32*)*, i32, i32, i32, i64, i64 }
%struct.malloc_stats = type { i64, i64, i64, i64, i64 }
%struct.anon.9 = type { i64, i64, [16 x i64], i32 }
%struct.clientBufferLimitsConfig = type { i64, i64, i64 }
%struct.saveparam = type { i64, i32 }
%struct.anon.10 = type { i32, i64, i64 }
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
%struct.dictEntry = type { i8*, %union.anon.8, %struct.dictEntry* }
%union.anon.8 = type { i8* }
%struct.pthread_mutex_t_ = type opaque
%struct.sharedObjectsStruct = type { %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [10 x %struct.redisObject*], [10000 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], i8*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.siginfo_t = type { i32, i32, i32 }
%struct.sigaction = type { %union.anon.7, i64, i32, void ()* }
%union.anon.7 = type { void (i32)* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.4, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.4 = type { %struct.anon.6 }
%struct.anon.6 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct._mbstate_t = type { i32, %union.anon.2 }
%union.anon.2 = type { i32 }

@rdbCheckMode = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"read-type\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"read-expire\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"read-key\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"read-object-value\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"check-sum\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"read-len\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"read-aux\00", align 1
@rdb_check_doing_string = dso_local local_unnamed_addr global [8 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0)], align 16, !dbg !12
@.str.8 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"list-linked\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"set-hashtable\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"zset-v1\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"hash-hashtable\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"zset-v2\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"module-value\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"hash-zipmap\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"list-ziplist\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"set-intset\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"zset-ziplist\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"hash-ziplist\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"quicklist\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@rdb_type_string = dso_local local_unnamed_addr global [16 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0)], align 16, !dbg !17
@.str.23 = private unnamed_addr constant [22 x i8] c"[info] %lu keys read\0A\00", align 1
@rdbstate = common dso_local global %struct.anon zeroinitializer, align 8, !dbg !356
@.str.24 = private unnamed_addr constant [20 x i8] c"[info] %lu expires\0A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"[info] %lu already expired\0A\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"--- RDB ERROR DETECTED ---\0A\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"[offset %llu] %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"[additional info] While doing: %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"[additional info] Reading key '%s'\0A\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"[additional info] Reading type %d (%s)\0A\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"Server crash checking the specified RDB file!\00", align 1
@redis_check_rdb.rdb = internal global %struct._rio zeroinitializer, align 8, !dbg !22
@.str.33 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"REDIS\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"Wrong signature trying to load DB from file\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"Can't handle RDB format version %d\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"Selecting DB ID %d\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"AUX FIELD %s = '%s'\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"Invalid object type: %d\00", align 1
@server = external dso_local local_unnamed_addr global %struct.redisServer, align 8
@.str.40 = private unnamed_addr constant [63 x i8] c"RDB file was saved with checksum disabled: no check performed.\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"RDB CRC error\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"Checksum OK\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"Unexpected EOF reading RDB file\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"Usage: %s <rdb-file-name>\0A\00", align 1
@shared = external dso_local local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.45 = private unnamed_addr constant [21 x i8] c"Checking RDB file %s\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"\5Co/ RDB looks OK! \5Co/\00", align 1

; Function Attrs: noredzone nounwind
define dso_local void @rdbShowGenericInfo() local_unnamed_addr #0 !dbg !374 {
  %1 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 3), align 8, !dbg !375, !tbaa !376
  %2 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i64 %1) #7, !dbg !383
  %3 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 4), align 8, !dbg !384, !tbaa !385
  %4 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i64 %3) #7, !dbg !386
  %5 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 5), align 8, !dbg !387, !tbaa !388
  %6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i64 %5) #7, !dbg !389
  ret void, !dbg !390
}

; Function Attrs: noredzone
declare dso_local i32 @printf(i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @rdbCheckError(i8*, ...) local_unnamed_addr #0 !dbg !391 {
  %2 = alloca [1024 x i8], align 16
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !410
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %4) #4, !dbg !410
  %5 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !412
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #4, !dbg !412
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !414
  call void @llvm.va_start(i8* nonnull %5), !dbg !414
  %7 = call i32 @vsnprintf(i8* nonnull %4, i64 1024, i8* %0, %struct.__va_list_tag* nonnull %6) #7, !dbg !415
  call void @llvm.va_end(i8* nonnull %5), !dbg !416
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0)) #7, !dbg !417
  %9 = load %struct._rio*, %struct._rio** getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 0), align 8, !dbg !418, !tbaa !419
  %10 = icmp eq %struct._rio* %9, null, !dbg !420
  br i1 %10, label %14, label %11, !dbg !420

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds %struct._rio, %struct._rio* %9, i64 0, i32 6, !dbg !421
  %13 = load i64, i64* %12, align 8, !dbg !421, !tbaa !422
  br label %14, !dbg !420

; <label>:14:                                     ; preds = %1, %11
  %15 = phi i64 [ %13, %11 ], [ 0, %1 ], !dbg !420
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i64 %15, i8* nonnull %4) #7, !dbg !424
  %17 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 6), align 8, !dbg !425, !tbaa !426
  %18 = sext i32 %17 to i64, !dbg !427
  %19 = getelementptr inbounds [8 x i8*], [8 x i8*]* @rdb_check_doing_string, i64 0, i64 %18, !dbg !427
  %20 = load i8*, i8** %19, align 8, !dbg !427, !tbaa !428
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i64 0, i64 0), i8* %20) #7, !dbg !429
  %22 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 1), align 8, !dbg !430, !tbaa !432
  %23 = icmp eq %struct.redisObject* %22, null, !dbg !433
  br i1 %23, label %28, label %24, !dbg !434

; <label>:24:                                     ; preds = %14
  %25 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %22, i64 0, i32 2, !dbg !435
  %26 = load i8*, i8** %25, align 8, !dbg !435, !tbaa !436
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i64 0, i64 0), i8* %26) #7, !dbg !438
  br label %28, !dbg !438

; <label>:28:                                     ; preds = %14, %24
  %29 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 2), align 8, !dbg !439, !tbaa !441
  %30 = icmp eq i32 %29, -1, !dbg !442
  br i1 %30, label %40, label %31, !dbg !443

; <label>:31:                                     ; preds = %28
  %32 = icmp ult i32 %29, 16, !dbg !444
  br i1 %32, label %33, label %37, !dbg !445

; <label>:33:                                     ; preds = %31
  %34 = sext i32 %29 to i64, !dbg !446
  %35 = getelementptr inbounds [16 x i8*], [16 x i8*]* @rdb_type_string, i64 0, i64 %34, !dbg !446
  %36 = load i8*, i8** %35, align 8, !dbg !446, !tbaa !428
  br label %37, !dbg !445

; <label>:37:                                     ; preds = %31, %33
  %38 = phi i8* [ %36, %33 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), %31 ], !dbg !445
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i32 %29, i8* %38) #7, !dbg !447
  br label %40, !dbg !447

; <label>:40:                                     ; preds = %28, %37
  %41 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 3), align 8, !dbg !448, !tbaa !376
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i64 %41) #7, !dbg !450
  %43 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 4), align 8, !dbg !451, !tbaa !385
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i64 %43) #7, !dbg !452
  %45 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 5), align 8, !dbg !453, !tbaa !388
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i64 %45) #7, !dbg !454
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #4, !dbg !455
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %4) #4, !dbg !455
  ret void, !dbg !455
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: noredzone
declare dso_local i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: noredzone nounwind
define dso_local void @rdbCheckInfo(i8*, ...) local_unnamed_addr #0 !dbg !456 {
  %2 = alloca [1024 x i8], align 16
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !462
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %4) #4, !dbg !462
  %5 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !464
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #4, !dbg !464
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !466
  call void @llvm.va_start(i8* nonnull %5), !dbg !466
  %7 = call i32 @vsnprintf(i8* nonnull %4, i64 1024, i8* %0, %struct.__va_list_tag* nonnull %6) #7, !dbg !467
  call void @llvm.va_end(i8* nonnull %5), !dbg !468
  %8 = load %struct._rio*, %struct._rio** getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 0), align 8, !dbg !469, !tbaa !419
  %9 = icmp eq %struct._rio* %8, null, !dbg !470
  br i1 %9, label %13, label %10, !dbg !470

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct._rio, %struct._rio* %8, i64 0, i32 6, !dbg !471
  %12 = load i64, i64* %11, align 8, !dbg !471, !tbaa !422
  br label %13, !dbg !470

; <label>:13:                                     ; preds = %1, %10
  %14 = phi i64 [ %12, %10 ], [ 0, %1 ], !dbg !470
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i64 %14, i8* nonnull %4) #7, !dbg !472
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #4, !dbg !473
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %4) #4, !dbg !473
  ret void, !dbg !473
}

; Function Attrs: noredzone nounwind
define dso_local void @rdbCheckSetError(i8*, ...) local_unnamed_addr #0 !dbg !474 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !479
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #4, !dbg !479
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !481
  call void @llvm.va_start(i8* nonnull %3), !dbg !481
  %5 = call i32 @vsnprintf(i8* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 8, i64 0), i64 1024, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !482
  call void @llvm.va_end(i8* nonnull %3), !dbg !483
  store i32 1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 7), align 4, !dbg !484, !tbaa !485
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #4, !dbg !486
  ret void, !dbg !486
}

; Function Attrs: noredzone noreturn nounwind
define dso_local void @rdbCheckHandleCrash(i32, %struct.siginfo_t* nocapture readnone, i8* nocapture readnone) #5 !dbg !487 {
  tail call void (i8*, ...) @rdbCheckError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.32, i64 0, i64 0)) #8, !dbg !506
  tail call void @exit(i32 1) #9, !dbg !507
  unreachable, !dbg !507
}

; Function Attrs: noredzone noreturn
declare dso_local void @exit(i32) local_unnamed_addr #6

; Function Attrs: noredzone nounwind
define dso_local void @rdbCheckSetupSignals() local_unnamed_addr #0 !dbg !508 {
  %1 = alloca %struct.sigaction, align 8
  %2 = bitcast %struct.sigaction* %1 to i8*, !dbg !524
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #4, !dbg !524
  %3 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i64 0, i32 1, !dbg !525
  %4 = call i32 @sigemptyset(i64* nonnull %3) #7, !dbg !526
  %5 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i64 0, i32 2, !dbg !527
  store i32 -1073741820, i32* %5, align 8, !dbg !528, !tbaa !529
  %6 = bitcast %struct.sigaction* %1 to void (i32, %struct.siginfo_t*, i8*)**, !dbg !531
  store void (i32, %struct.siginfo_t*, i8*)* @rdbCheckHandleCrash, void (i32, %struct.siginfo_t*, i8*)** %6, align 8, !dbg !532, !tbaa !533
  %7 = call i32 @sigaction(i32 11, %struct.sigaction* nonnull %1, %struct.sigaction* null) #7, !dbg !535
  %8 = call i32 @sigaction(i32 7, %struct.sigaction* nonnull %1, %struct.sigaction* null) #7, !dbg !536
  %9 = call i32 @sigaction(i32 8, %struct.sigaction* nonnull %1, %struct.sigaction* null) #7, !dbg !537
  %10 = call i32 @sigaction(i32 4, %struct.sigaction* nonnull %1, %struct.sigaction* null) #7, !dbg !538
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #4, !dbg !539
  ret void, !dbg !539
}

; Function Attrs: noredzone
declare dso_local i32 @sigemptyset(i64*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @redis_check_rdb(i8*, %struct.__sFILE*) local_unnamed_addr #0 !dbg !24 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !542
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %6) #4, !dbg !542
  %7 = tail call i64 @mstime() #7, !dbg !544
  %8 = icmp eq %struct.__sFILE* %1, null, !dbg !546
  br i1 %8, label %9, label %12, !dbg !547

; <label>:9:                                      ; preds = %2
  %10 = tail call %struct.__sFILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #7, !dbg !549
  %11 = icmp eq %struct.__sFILE* %10, null, !dbg !550
  br i1 %11, label %188, label %12, !dbg !551

; <label>:12:                                     ; preds = %9, %2
  %13 = phi %struct.__sFILE* [ %10, %9 ], [ %1, %2 ]
  tail call void @rioInitWithFile(%struct._rio* nonnull @redis_check_rdb.rdb, %struct.__sFILE* nonnull %13) #7, !dbg !552
  store %struct._rio* @redis_check_rdb.rdb, %struct._rio** getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 0), align 8, !dbg !553, !tbaa !419
  store void (%struct._rio*, i8*, i64)* @rdbLoadProgressCallback, void (%struct._rio*, i8*, i64)** getelementptr inbounds (%struct._rio, %struct._rio* @redis_check_rdb.rdb, i64 0, i32 4), align 8, !dbg !554, !tbaa !555
  br label %14

; <label>:14:                                     ; preds = %29, %12
  %15 = phi i64 [ %31, %29 ], [ 9, %12 ]
  %16 = phi i8* [ %30, %29 ], [ %6, %12 ]
  %17 = load i64, i64* getelementptr inbounds (%struct._rio, %struct._rio* @redis_check_rdb.rdb, i64 0, i32 7), align 8, !dbg !570, !tbaa !571
  %18 = icmp ne i64 %17, 0, !dbg !572
  %19 = icmp ult i64 %17, %15, !dbg !573
  %20 = and i1 %18, %19, !dbg !574
  %21 = select i1 %20, i64 %17, i64 %15, !dbg !574
  %22 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** getelementptr inbounds (%struct._rio, %struct._rio* @redis_check_rdb.rdb, i64 0, i32 0), align 8, !dbg !576, !tbaa !578
  %23 = call i64 %22(%struct._rio* nonnull @redis_check_rdb.rdb, i8* %16, i64 %21) #7, !dbg !579
  %24 = icmp eq i64 %23, 0, !dbg !580
  br i1 %24, label %180, label %25, !dbg !581

; <label>:25:                                     ; preds = %14
  %26 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** getelementptr inbounds (%struct._rio, %struct._rio* @redis_check_rdb.rdb, i64 0, i32 4), align 8, !dbg !582, !tbaa !555
  %27 = icmp eq void (%struct._rio*, i8*, i64)* %26, null, !dbg !584
  br i1 %27, label %29, label %28, !dbg !585

; <label>:28:                                     ; preds = %25
  call void %26(%struct._rio* nonnull @redis_check_rdb.rdb, i8* %16, i64 %21) #7, !dbg !586
  br label %29, !dbg !586

; <label>:29:                                     ; preds = %28, %25
  %30 = getelementptr inbounds i8, i8* %16, i64 %21, !dbg !587
  %31 = sub i64 %15, %21, !dbg !588
  %32 = load i64, i64* getelementptr inbounds (%struct._rio, %struct._rio* @redis_check_rdb.rdb, i64 0, i32 6), align 8, !dbg !589, !tbaa !422
  %33 = add i64 %32, %21, !dbg !589
  store i64 %33, i64* getelementptr inbounds (%struct._rio, %struct._rio* @redis_check_rdb.rdb, i64 0, i32 6), align 8, !dbg !589, !tbaa !422
  %34 = icmp eq i64 %31, 0, !dbg !590
  br i1 %34, label %35, label %14, !dbg !590

; <label>:35:                                     ; preds = %29
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 9, !dbg !591
  store i8 0, i8* %36, align 1, !dbg !592, !tbaa !533
  %37 = call i32 @memcmp(i8* nonnull %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i64 5) #7, !dbg !593
  %38 = icmp eq i32 %37, 0, !dbg !595
  br i1 %38, label %40, label %39, !dbg !596

; <label>:39:                                     ; preds = %35
  call void (i8*, ...) @rdbCheckError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.35, i64 0, i64 0)) #8, !dbg !597
  br label %185, !dbg !599

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 5, !dbg !600
  %42 = call i32 @atoi(i8* nonnull %41) #7, !dbg !601
  %43 = add i32 %42, -1, !dbg !603
  %44 = icmp ugt i32 %43, 8, !dbg !603
  br i1 %44, label %45, label %46, !dbg !603

; <label>:45:                                     ; preds = %40
  call void (i8*, ...) @rdbCheckError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.36, i64 0, i64 0), i32 %42) #8, !dbg !605
  br label %185, !dbg !607

; <label>:46:                                     ; preds = %40
  call void @startLoading(%struct.__sFILE* %13) #7, !dbg !609
  br label %47, !dbg !610

; <label>:47:                                     ; preds = %136, %46
  %48 = phi i64 [ -1, %46 ], [ %137, %136 ]
  br label %49, !dbg !611

; <label>:49:                                     ; preds = %111, %47
  store i32 1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 6), align 8, !dbg !611, !tbaa !426
  %50 = call i32 @rdbLoadType(%struct._rio* nonnull @redis_check_rdb.rdb) #7, !dbg !612
  switch i32 %50, label %112 [
    i32 -1, label %180
    i32 253, label %51
    i32 252, label %57
    i32 249, label %61
    i32 248, label %85
    i32 255, label %138
    i32 254, label %89
    i32 251, label %93
    i32 250, label %100
    i32 15, label %113
    i32 14, label %113
    i32 13, label %113
    i32 12, label %113
    i32 11, label %113
    i32 10, label %113
    i32 9, label %113
    i32 7, label %113
    i32 6, label %113
    i32 5, label %113
    i32 4, label %113
    i32 3, label %113
    i32 2, label %113
    i32 1, label %113
    i32 0, label %113
  ], !dbg !615

; <label>:51:                                     ; preds = %49
  store i32 2, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 6), align 8, !dbg !616, !tbaa !426
  %52 = call i64 @rdbLoadTime(%struct._rio* nonnull @redis_check_rdb.rdb) #7, !dbg !618
  %53 = icmp eq i64 %52, -1, !dbg !620
  %54 = mul nsw i64 %52, 1000, !dbg !621
  %55 = select i1 %53, i32 2, i32 4, !dbg !622
  %56 = select i1 %53, i64 -1, i64 %54, !dbg !622
  br label %133, !dbg !622

; <label>:57:                                     ; preds = %49
  store i32 2, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 6), align 8, !dbg !623, !tbaa !426
  %58 = call i64 @rdbLoadMillisecondTime(%struct._rio* nonnull @redis_check_rdb.rdb, i32 %42) #7, !dbg !625
  %59 = icmp eq i64 %58, -1, !dbg !627
  %60 = select i1 %59, i32 2, i32 4, !dbg !628
  br label %133, !dbg !628

; <label>:61:                                     ; preds = %49
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #4, !dbg !630
  br label %62

; <label>:62:                                     ; preds = %77, %61
  %63 = phi i64 [ %79, %77 ], [ 1, %61 ]
  %64 = phi i8* [ %78, %77 ], [ %4, %61 ]
  %65 = load i64, i64* getelementptr inbounds (%struct._rio, %struct._rio* @redis_check_rdb.rdb, i64 0, i32 7), align 8, !dbg !636, !tbaa !571
  %66 = icmp ne i64 %65, 0, !dbg !637
  %67 = icmp ult i64 %65, %63, !dbg !638
  %68 = and i1 %66, %67, !dbg !639
  %69 = select i1 %68, i64 %65, i64 %63, !dbg !639
  %70 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** getelementptr inbounds (%struct._rio, %struct._rio* @redis_check_rdb.rdb, i64 0, i32 0), align 8, !dbg !641, !tbaa !578
  %71 = call i64 %70(%struct._rio* nonnull @redis_check_rdb.rdb, i8* %64, i64 %69) #7, !dbg !642
  %72 = icmp eq i64 %71, 0, !dbg !643
  br i1 %72, label %83, label %73, !dbg !644

; <label>:73:                                     ; preds = %62
  %74 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** getelementptr inbounds (%struct._rio, %struct._rio* @redis_check_rdb.rdb, i64 0, i32 4), align 8, !dbg !645, !tbaa !555
  %75 = icmp eq void (%struct._rio*, i8*, i64)* %74, null, !dbg !646
  br i1 %75, label %77, label %76, !dbg !647

; <label>:76:                                     ; preds = %73
  call void %74(%struct._rio* nonnull @redis_check_rdb.rdb, i8* %64, i64 %69) #7, !dbg !648
  br label %77, !dbg !648

; <label>:77:                                     ; preds = %76, %73
  %78 = getelementptr inbounds i8, i8* %64, i64 %69, !dbg !649
  %79 = sub i64 %63, %69, !dbg !650
  %80 = load i64, i64* getelementptr inbounds (%struct._rio, %struct._rio* @redis_check_rdb.rdb, i64 0, i32 6), align 8, !dbg !651, !tbaa !422
  %81 = add i64 %80, %69, !dbg !651
  store i64 %81, i64* getelementptr inbounds (%struct._rio, %struct._rio* @redis_check_rdb.rdb, i64 0, i32 6), align 8, !dbg !651, !tbaa !422
  %82 = icmp eq i64 %79, 0, !dbg !652
  br i1 %82, label %83, label %62, !dbg !652

; <label>:83:                                     ; preds = %62, %77
  %84 = phi i32 [ 4, %77 ], [ 2, %62 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #4, !dbg !653
  br label %133

; <label>:85:                                     ; preds = %49
  %86 = call i64 @rdbLoadLen(%struct._rio* nonnull @redis_check_rdb.rdb, i32* null) #7, !dbg !654
  %87 = icmp eq i64 %86, -1, !dbg !657
  %88 = select i1 %87, i32 2, i32 4, !dbg !658
  br label %133, !dbg !658

; <label>:89:                                     ; preds = %49
  store i32 6, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 6), align 8, !dbg !659, !tbaa !426
  %90 = call i64 @rdbLoadLen(%struct._rio* nonnull @redis_check_rdb.rdb, i32* null) #7, !dbg !661
  %91 = icmp eq i64 %90, -1, !dbg !664
  br i1 %91, label %180, label %92, !dbg !665

; <label>:92:                                     ; preds = %89
  call void (i8*, ...) @rdbCheckInfo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i64 0, i64 0), i64 %90) #8, !dbg !666
  br label %111, !dbg !667

; <label>:93:                                     ; preds = %49
  store i32 6, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 6), align 8, !dbg !668, !tbaa !426
  %94 = call i64 @rdbLoadLen(%struct._rio* nonnull @redis_check_rdb.rdb, i32* null) #7, !dbg !669
  %95 = icmp eq i64 %94, -1, !dbg !672
  br i1 %95, label %180, label %96, !dbg !673

; <label>:96:                                     ; preds = %93
  %97 = call i64 @rdbLoadLen(%struct._rio* nonnull @redis_check_rdb.rdb, i32* null) #7, !dbg !674
  %98 = icmp eq i64 %97, -1, !dbg !677
  %99 = select i1 %98, i32 2, i32 4, !dbg !678
  br label %133, !dbg !678

; <label>:100:                                    ; preds = %49
  store i32 7, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 6), align 8, !dbg !679, !tbaa !426
  %101 = call %struct.redisObject* @rdbLoadStringObject(%struct._rio* nonnull @redis_check_rdb.rdb) #7, !dbg !680
  %102 = icmp eq %struct.redisObject* %101, null, !dbg !683
  br i1 %102, label %180, label %103, !dbg !684

; <label>:103:                                    ; preds = %100
  %104 = call %struct.redisObject* @rdbLoadStringObject(%struct._rio* nonnull @redis_check_rdb.rdb) #7, !dbg !685
  %105 = icmp eq %struct.redisObject* %104, null, !dbg !688
  br i1 %105, label %180, label %106, !dbg !689

; <label>:106:                                    ; preds = %103
  %107 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %101, i64 0, i32 2, !dbg !690
  %108 = load i8*, i8** %107, align 8, !dbg !690, !tbaa !436
  %109 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %104, i64 0, i32 2, !dbg !691
  %110 = load i8*, i8** %109, align 8, !dbg !691, !tbaa !436
  call void (i8*, ...) @rdbCheckInfo(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i64 0, i64 0), i8* %108, i8* %110) #8, !dbg !692
  call void @decrRefCount(%struct.redisObject* nonnull %101) #7, !dbg !693
  call void @decrRefCount(%struct.redisObject* nonnull %104) #7, !dbg !694
  br label %111, !dbg !695

; <label>:111:                                    ; preds = %106, %92
  br label %49, !dbg !608, !llvm.loop !696

; <label>:112:                                    ; preds = %49
  call void (i8*, ...) @rdbCheckError(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), i32 %50) #8, !dbg !698
  br label %185

; <label>:113:                                    ; preds = %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49
  store i32 %50, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 2), align 8, !dbg !702, !tbaa !441
  store i32 3, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 6), align 8, !dbg !703, !tbaa !426
  %114 = call %struct.redisObject* @rdbLoadStringObject(%struct._rio* nonnull @redis_check_rdb.rdb) #7, !dbg !704
  %115 = icmp eq %struct.redisObject* %114, null, !dbg !707
  br i1 %115, label %180, label %116, !dbg !708

; <label>:116:                                    ; preds = %113
  store %struct.redisObject* %114, %struct.redisObject** getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 1), align 8, !dbg !709, !tbaa !432
  %117 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 3), align 8, !dbg !710, !tbaa !376
  %118 = add i64 %117, 1, !dbg !710
  store i64 %118, i64* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 3), align 8, !dbg !710, !tbaa !376
  store i32 4, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 6), align 8, !dbg !711, !tbaa !426
  %119 = call %struct.redisObject* @rdbLoadObject(i32 %50, %struct._rio* nonnull @redis_check_rdb.rdb, %struct.redisObject* nonnull %114) #7, !dbg !712
  %120 = icmp eq %struct.redisObject* %119, null, !dbg !715
  br i1 %120, label %180, label %121, !dbg !716

; <label>:121:                                    ; preds = %116
  %122 = icmp ne i64 %48, -1, !dbg !717
  %123 = icmp slt i64 %48, %7, !dbg !719
  %124 = and i1 %122, %123, !dbg !720
  br i1 %124, label %125, label %128, !dbg !720

; <label>:125:                                    ; preds = %121
  %126 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 5), align 8, !dbg !721, !tbaa !388
  %127 = add i64 %126, 1, !dbg !721
  store i64 %127, i64* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 5), align 8, !dbg !721, !tbaa !388
  br label %128, !dbg !722

; <label>:128:                                    ; preds = %125, %121
  br i1 %122, label %129, label %132, !dbg !723

; <label>:129:                                    ; preds = %128
  %130 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 4), align 8, !dbg !724, !tbaa !385
  %131 = add i64 %130, 1, !dbg !724
  store i64 %131, i64* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 4), align 8, !dbg !724, !tbaa !385
  br label %132, !dbg !726

; <label>:132:                                    ; preds = %129, %128
  store %struct.redisObject* null, %struct.redisObject** getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 1), align 8, !dbg !727, !tbaa !432
  call void @decrRefCount(%struct.redisObject* nonnull %114) #7, !dbg !728
  call void @decrRefCount(%struct.redisObject* nonnull %119) #7, !dbg !729
  store i32 -1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 2), align 8, !dbg !730, !tbaa !441
  br label %136, !dbg !697

; <label>:133:                                    ; preds = %51, %96, %85, %57, %83
  %134 = phi i32 [ %84, %83 ], [ %60, %57 ], [ %88, %85 ], [ %99, %96 ], [ %55, %51 ]
  %135 = phi i64 [ %48, %83 ], [ %58, %57 ], [ %48, %85 ], [ %48, %96 ], [ %56, %51 ], !dbg !731
  switch i32 %134, label %188 [
    i32 0, label %136
    i32 4, label %136
    i32 5, label %138
    i32 2, label %180
    i32 3, label %185
  ]

; <label>:136:                                    ; preds = %133, %133, %132
  %137 = phi i64 [ -1, %132 ], [ %135, %133 ], [ %135, %133 ]
  br label %47, !dbg !611, !llvm.loop !696

; <label>:138:                                    ; preds = %133, %49
  %139 = icmp sgt i32 %42, 4, !dbg !732
  %140 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 159), align 4, !dbg !733
  %141 = icmp ne i32 %140, 0, !dbg !734
  %142 = and i1 %139, %141, !dbg !735
  br i1 %142, label %143, label %177, !dbg !735

; <label>:143:                                    ; preds = %138
  %144 = bitcast i64* %5 to i8*, !dbg !736
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %144) #4, !dbg !736
  %145 = load i64, i64* getelementptr inbounds (%struct._rio, %struct._rio* @redis_check_rdb.rdb, i64 0, i32 5), align 8, !dbg !737, !tbaa !738
  store i32 5, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 6), align 8, !dbg !740, !tbaa !426
  br label %146

; <label>:146:                                    ; preds = %162, %143
  %147 = phi i64 [ %164, %162 ], [ 8, %143 ]
  %148 = phi i8* [ %163, %162 ], [ %144, %143 ]
  %149 = load i64, i64* getelementptr inbounds (%struct._rio, %struct._rio* @redis_check_rdb.rdb, i64 0, i32 7), align 8, !dbg !746, !tbaa !571
  %150 = icmp ne i64 %149, 0, !dbg !747
  %151 = icmp ult i64 %149, %147, !dbg !748
  %152 = and i1 %150, %151, !dbg !749
  %153 = select i1 %152, i64 %149, i64 %147, !dbg !749
  %154 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** getelementptr inbounds (%struct._rio, %struct._rio* @redis_check_rdb.rdb, i64 0, i32 0), align 8, !dbg !751, !tbaa !578
  %155 = call i64 %154(%struct._rio* nonnull @redis_check_rdb.rdb, i8* %148, i64 %153) #7, !dbg !752
  %156 = icmp eq i64 %155, 0, !dbg !753
  br i1 %156, label %157, label %158, !dbg !754

; <label>:157:                                    ; preds = %146
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %144) #4, !dbg !755
  br label %180

; <label>:158:                                    ; preds = %146
  %159 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** getelementptr inbounds (%struct._rio, %struct._rio* @redis_check_rdb.rdb, i64 0, i32 4), align 8, !dbg !756, !tbaa !555
  %160 = icmp eq void (%struct._rio*, i8*, i64)* %159, null, !dbg !757
  br i1 %160, label %162, label %161, !dbg !758

; <label>:161:                                    ; preds = %158
  call void %159(%struct._rio* nonnull @redis_check_rdb.rdb, i8* %148, i64 %153) #7, !dbg !759
  br label %162, !dbg !759

; <label>:162:                                    ; preds = %161, %158
  %163 = getelementptr inbounds i8, i8* %148, i64 %153, !dbg !760
  %164 = sub i64 %147, %153, !dbg !761
  %165 = load i64, i64* getelementptr inbounds (%struct._rio, %struct._rio* @redis_check_rdb.rdb, i64 0, i32 6), align 8, !dbg !762, !tbaa !422
  %166 = add i64 %165, %153, !dbg !762
  store i64 %166, i64* getelementptr inbounds (%struct._rio, %struct._rio* @redis_check_rdb.rdb, i64 0, i32 6), align 8, !dbg !762, !tbaa !422
  %167 = icmp eq i64 %164, 0, !dbg !763
  br i1 %167, label %168, label %146, !dbg !763

; <label>:168:                                    ; preds = %162
  %169 = load i64, i64* %5, align 8, !dbg !764, !tbaa !766
  %170 = icmp eq i64 %169, 0, !dbg !768
  br i1 %170, label %171, label %172, !dbg !769

; <label>:171:                                    ; preds = %168
  call void (i8*, ...) @rdbCheckInfo(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.40, i64 0, i64 0)) #8, !dbg !770
  br label %175, !dbg !772

; <label>:172:                                    ; preds = %168
  %173 = icmp eq i64 %169, %145, !dbg !773
  br i1 %173, label %174, label %176, !dbg !775

; <label>:174:                                    ; preds = %172
  call void (i8*, ...) @rdbCheckInfo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0)) #8, !dbg !776
  br label %175

; <label>:175:                                    ; preds = %174, %171
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %144) #4, !dbg !755
  br label %177

; <label>:176:                                    ; preds = %172
  call void (i8*, ...) @rdbCheckError(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0)) #8, !dbg !778
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %144) #4, !dbg !755
  br label %185

; <label>:177:                                    ; preds = %175, %138
  br i1 %8, label %178, label %188, !dbg !780

; <label>:178:                                    ; preds = %177
  %179 = call i32 @fclose(%struct.__sFILE* %13) #7, !dbg !781
  br label %188, !dbg !781

; <label>:180:                                    ; preds = %14, %103, %100, %89, %49, %116, %113, %93, %133, %157
  %181 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 7), align 4, !dbg !783, !tbaa !485
  %182 = icmp eq i32 %181, 0, !dbg !785
  br i1 %182, label %184, label %183, !dbg !786

; <label>:183:                                    ; preds = %180
  call void (i8*, ...) @rdbCheckError(i8* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 8, i64 0)) #8, !dbg !787
  br label %185, !dbg !789

; <label>:184:                                    ; preds = %180
  call void (i8*, ...) @rdbCheckError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.43, i64 0, i64 0)) #8, !dbg !790
  br label %185

; <label>:185:                                    ; preds = %133, %176, %112, %183, %184, %45, %39
  br i1 %8, label %186, label %188, !dbg !792

; <label>:186:                                    ; preds = %185
  %187 = call i32 @fclose(%struct.__sFILE* %13) #7, !dbg !793
  br label %188, !dbg !793

; <label>:188:                                    ; preds = %133, %185, %186, %177, %178, %9
  %189 = phi i32 [ 1, %9 ], [ 0, %178 ], [ 0, %177 ], [ 1, %186 ], [ 1, %185 ], [ undef, %133 ]
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %6) #4, !dbg !795
  ret i32 %189, !dbg !795
}

; Function Attrs: noredzone
declare dso_local i64 @mstime() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.__sFILE* @fopen(i8*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @rioInitWithFile(%struct._rio*, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @rdbLoadProgressCallback(%struct._rio*, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @atoi(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @startLoading(%struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @rdbLoadType(%struct._rio*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @rdbLoadTime(%struct._rio*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @rdbLoadMillisecondTime(%struct._rio*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @rdbLoadLen(%struct._rio*, i32*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @rdbLoadStringObject(%struct._rio*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @rdbLoadObject(i32, %struct._rio*, %struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @fclose(%struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @redis_check_rdb_main(i32, i8** nocapture readonly, %struct.__sFILE*) local_unnamed_addr #0 !dbg !796 {
  %4 = alloca %struct.sigaction, align 8
  %5 = icmp ne i32 %0, 2, !dbg !808
  %6 = icmp eq %struct.__sFILE* %2, null, !dbg !810
  %7 = and i1 %5, %6, !dbg !811
  br i1 %7, label %8, label %14, !dbg !811

; <label>:8:                                      ; preds = %3
  %9 = tail call %struct._reent* @__getreent() #7, !dbg !812
  %10 = getelementptr inbounds %struct._reent, %struct._reent* %9, i64 0, i32 3, !dbg !812
  %11 = load %struct.__sFILE*, %struct.__sFILE** %10, align 8, !dbg !812, !tbaa !814
  %12 = load i8*, i8** %1, align 8, !dbg !819, !tbaa !428
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0), i8* %12) #7, !dbg !820
  tail call void @exit(i32 1) #9, !dbg !821
  unreachable, !dbg !821

; <label>:14:                                     ; preds = %3
  %15 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 47, i64 0), align 8, !dbg !822, !tbaa !428
  %16 = icmp eq %struct.redisObject* %15, null, !dbg !824
  br i1 %16, label %17, label %18, !dbg !825

; <label>:17:                                     ; preds = %14
  tail call void @createSharedObjects() #7, !dbg !826
  br label %18, !dbg !826

; <label>:18:                                     ; preds = %17, %14
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 55), align 8, !dbg !827, !tbaa !828
  store i32 1, i32* @rdbCheckMode, align 4, !dbg !835, !tbaa !836
  %19 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !837
  %20 = load i8*, i8** %19, align 8, !dbg !837, !tbaa !428
  tail call void (i8*, ...) @rdbCheckInfo(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i64 0, i64 0), i8* %20) #8, !dbg !838
  %21 = bitcast %struct.sigaction* %4 to i8*, !dbg !839
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %21) #4, !dbg !839
  %22 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i64 0, i32 1, !dbg !841
  %23 = call i32 @sigemptyset(i64* nonnull %22) #7, !dbg !842
  %24 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i64 0, i32 2, !dbg !843
  store i32 -1073741820, i32* %24, align 8, !dbg !844, !tbaa !529
  %25 = bitcast %struct.sigaction* %4 to void (i32, %struct.siginfo_t*, i8*)**, !dbg !845
  store void (i32, %struct.siginfo_t*, i8*)* @rdbCheckHandleCrash, void (i32, %struct.siginfo_t*, i8*)** %25, align 8, !dbg !846, !tbaa !533
  %26 = call i32 @sigaction(i32 11, %struct.sigaction* nonnull %4, %struct.sigaction* null) #7, !dbg !848
  %27 = call i32 @sigaction(i32 7, %struct.sigaction* nonnull %4, %struct.sigaction* null) #7, !dbg !849
  %28 = call i32 @sigaction(i32 8, %struct.sigaction* nonnull %4, %struct.sigaction* null) #7, !dbg !850
  %29 = call i32 @sigaction(i32 4, %struct.sigaction* nonnull %4, %struct.sigaction* null) #7, !dbg !851
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %21) #4, !dbg !852
  %30 = load i8*, i8** %19, align 8, !dbg !853, !tbaa !428
  %31 = call i32 @redis_check_rdb(i8* %30, %struct.__sFILE* %2) #8, !dbg !854
  %32 = icmp eq i32 %31, 0, !dbg !856
  br i1 %32, label %33, label %40, !dbg !858

; <label>:33:                                     ; preds = %18
  call void (i8*, ...) @rdbCheckInfo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !859
  %34 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 3), align 8, !dbg !861, !tbaa !376
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i64 %34) #7, !dbg !863
  %36 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 4), align 8, !dbg !864, !tbaa !385
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i64 %36) #7, !dbg !865
  %38 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i64 0, i32 5), align 8, !dbg !866, !tbaa !388
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i64 %38) #7, !dbg !867
  br label %40, !dbg !868

; <label>:40:                                     ; preds = %33, %18
  br i1 %6, label %44, label %41, !dbg !869

; <label>:41:                                     ; preds = %40
  %42 = xor i1 %32, true, !dbg !870
  %43 = sext i1 %42 to i32, !dbg !870
  ret i32 %43, !dbg !872

; <label>:44:                                     ; preds = %40
  call void @exit(i32 %31) #9, !dbg !873
  unreachable, !dbg !873
}

; Function Attrs: noredzone
declare dso_local i32 @fprintf(%struct.__sFILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @createSharedObjects() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }
attributes #5 = { noredzone noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!370, !371, !372}
!llvm.ident = !{!373}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "rdbCheckMode", scope: !2, file: !3, line: 37, type: !27, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !11)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/redis-check-rdb.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !7, !9, !10}
!6 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !{!0, !12, !17, !22, !356}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "rdb_check_doing_string", scope: !2, file: !3, line: 62, type: !14, isLocal: false, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 8)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "rdb_type_string", scope: !2, file: !3, line: 73, type: !19, isLocal: false, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 16)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "rdb", scope: !24, file: !3, line: 184, type: !297, isLocal: true, isDefinition: true)
!24 = distinct !DISubprogram(name: "redis_check_rdb", scope: !3, file: !3, line: 179, type: !25, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !243)
!25 = !DISubroutineType(types: !26)
!26 = !{!27, !7, !28}
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !30, line: 66, baseType: !31)
!30 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !32, line: 287, baseType: !33)
!32 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !32, line: 181, size: 1408, elements: !34)
!34 = !{!35, !38, !39, !40, !42, !43, !48, !49, !50, !210, !216, !221, !225, !226, !227, !228, !230, !232, !233, !234, !236, !237, !241, !242}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !33, file: !32, line: 182, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !33, file: !32, line: 183, baseType: !27, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !33, file: !32, line: 184, baseType: !27, size: 32, offset: 96)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !33, file: !32, line: 185, baseType: !41, size: 16, offset: 128)
!41 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !33, file: !32, line: 186, baseType: !41, size: 16, offset: 144)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !33, file: !32, line: 187, baseType: !44, size: 128, offset: 192)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !32, line: 117, size: 128, elements: !45)
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !44, file: !32, line: 118, baseType: !36, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !44, file: !32, line: 119, baseType: !27, size: 32, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !33, file: !32, line: 188, baseType: !27, size: 32, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !33, file: !32, line: 195, baseType: !10, size: 64, offset: 384)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !33, file: !32, line: 197, baseType: !51, size: 64, offset: 448)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !57, !10, !7, !27}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !55, line: 145, baseType: !56)
!55 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!56 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !32, line: 569, size: 14912, elements: !59)
!59 = !{!60, !61, !63, !64, !65, !66, !70, !71, !74, !75, !79, !93, !94, !95, !97, !98, !99, !174, !195, !196, !201, !208}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !58, file: !32, line: 571, baseType: !27, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !58, file: !32, line: 576, baseType: !62, size: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !58, file: !32, line: 576, baseType: !62, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !58, file: !32, line: 576, baseType: !62, size: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !58, file: !32, line: 578, baseType: !27, size: 32, offset: 256)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !58, file: !32, line: 579, baseType: !67, size: 200, offset: 288)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 200, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 25)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !58, file: !32, line: 582, baseType: !27, size: 32, offset: 512)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !58, file: !32, line: 583, baseType: !72, size: 64, offset: 576)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !32, line: 40, flags: DIFlagFwdDecl)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !58, file: !32, line: 585, baseType: !27, size: 32, offset: 640)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !58, file: !32, line: 587, baseType: !76, size: 64, offset: 704)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !57}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !58, file: !32, line: 590, baseType: !80, size: 64, offset: 768)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !32, line: 47, size: 256, elements: !82)
!82 = !{!83, !84, !85, !86, !87, !88}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !81, file: !32, line: 49, baseType: !80, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !81, file: !32, line: 50, baseType: !27, size: 32, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !81, file: !32, line: 50, baseType: !27, size: 32, offset: 96)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !81, file: !32, line: 50, baseType: !27, size: 32, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !81, file: !32, line: 50, baseType: !27, size: 32, offset: 160)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !81, file: !32, line: 51, baseType: !89, size: 32, offset: 192)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 32, elements: !91)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !32, line: 25, baseType: !9)
!91 = !{!92}
!92 = !DISubrange(count: 1)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !58, file: !32, line: 591, baseType: !27, size: 32, offset: 832)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !58, file: !32, line: 592, baseType: !80, size: 64, offset: 896)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !58, file: !32, line: 593, baseType: !96, size: 64, offset: 960)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !58, file: !32, line: 596, baseType: !27, size: 32, offset: 1024)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !58, file: !32, line: 597, baseType: !7, size: 64, offset: 1088)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !58, file: !32, line: 632, baseType: !100, size: 2880, offset: 1152)
!100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !58, file: !32, line: 599, size: 2880, elements: !101)
!101 = !{!102, !165}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !100, file: !32, line: 622, baseType: !103, size: 1728)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !100, file: !32, line: 601, size: 1728, elements: !104)
!104 = !{!105, !106, !107, !111, !123, !124, !125, !135, !150, !151, !152, !154, !158, !159, !160, !161, !162, !163, !164}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !103, file: !32, line: 603, baseType: !9, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !103, file: !32, line: 604, baseType: !7, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !103, file: !32, line: 605, baseType: !108, size: 208, offset: 128)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 208, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 26)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !103, file: !32, line: 606, baseType: !112, size: 288, offset: 352)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !32, line: 55, size: 288, elements: !113)
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !112, file: !32, line: 57, baseType: !27, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !112, file: !32, line: 58, baseType: !27, size: 32, offset: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !112, file: !32, line: 59, baseType: !27, size: 32, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !112, file: !32, line: 60, baseType: !27, size: 32, offset: 96)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !112, file: !32, line: 61, baseType: !27, size: 32, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !112, file: !32, line: 62, baseType: !27, size: 32, offset: 160)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !112, file: !32, line: 63, baseType: !27, size: 32, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !112, file: !32, line: 64, baseType: !27, size: 32, offset: 224)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !112, file: !32, line: 65, baseType: !27, size: 32, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !103, file: !32, line: 607, baseType: !27, size: 32, offset: 640)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !103, file: !32, line: 608, baseType: !6, size: 64, offset: 704)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !103, file: !32, line: 609, baseType: !126, size: 112, offset: 768)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !32, line: 319, size: 112, elements: !127)
!127 = !{!128, !133, !134}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !126, file: !32, line: 320, baseType: !129, size: 48)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 48, elements: !131)
!130 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!131 = !{!132}
!132 = !DISubrange(count: 3)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !126, file: !32, line: 321, baseType: !129, size: 48, offset: 48)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !126, file: !32, line: 322, baseType: !130, size: 16, offset: 96)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !103, file: !32, line: 610, baseType: !136, size: 64, offset: 896)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !55, line: 171, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 163, size: 64, elements: !138)
!138 = !{!139, !140}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !137, file: !55, line: 165, baseType: !27, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !137, file: !55, line: 170, baseType: !141, size: 32, offset: 32)
!141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !137, file: !55, line: 166, size: 32, elements: !142)
!142 = !{!143, !146}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !141, file: !55, line: 168, baseType: !144, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !145, line: 124, baseType: !9)
!145 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !141, file: !55, line: 169, baseType: !147, size: 32)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 32, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 4)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !103, file: !32, line: 611, baseType: !136, size: 64, offset: 960)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !103, file: !32, line: 612, baseType: !136, size: 64, offset: 1024)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !103, file: !32, line: 613, baseType: !153, size: 64, offset: 1088)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !15)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !103, file: !32, line: 614, baseType: !155, size: 192, offset: 1152)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 192, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 24)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !103, file: !32, line: 615, baseType: !27, size: 32, offset: 1344)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !103, file: !32, line: 616, baseType: !136, size: 64, offset: 1376)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !103, file: !32, line: 617, baseType: !136, size: 64, offset: 1440)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !103, file: !32, line: 618, baseType: !136, size: 64, offset: 1504)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !103, file: !32, line: 619, baseType: !136, size: 64, offset: 1568)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !103, file: !32, line: 620, baseType: !136, size: 64, offset: 1632)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !103, file: !32, line: 621, baseType: !27, size: 32, offset: 1696)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !100, file: !32, line: 631, baseType: !166, size: 2880)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !100, file: !32, line: 626, size: 2880, elements: !167)
!167 = !{!168, !172}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !166, file: !32, line: 629, baseType: !169, size: 1920)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 1920, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 30)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !166, file: !32, line: 630, baseType: !173, size: 960, offset: 1920)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 960, elements: !170)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !58, file: !32, line: 636, baseType: !175, size: 64, offset: 4032)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !32, line: 93, size: 6336, elements: !177)
!177 = !{!178, !179, !180, !187}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !176, file: !32, line: 94, baseType: !175, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !176, file: !32, line: 95, baseType: !27, size: 32, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !176, file: !32, line: 97, baseType: !181, size: 2048, offset: 128)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 2048, elements: !185)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{null}
!185 = !{!186}
!186 = !DISubrange(count: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !176, file: !32, line: 98, baseType: !188, size: 4160, offset: 2176)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !32, line: 74, size: 4160, elements: !189)
!189 = !{!190, !192, !193, !194}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !188, file: !32, line: 75, baseType: !191, size: 2048)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2048, elements: !185)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !188, file: !32, line: 76, baseType: !191, size: 2048, offset: 2048)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !188, file: !32, line: 78, baseType: !90, size: 32, offset: 4096)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !188, file: !32, line: 81, baseType: !90, size: 32, offset: 4128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !58, file: !32, line: 637, baseType: !176, size: 6336, offset: 4096)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !58, file: !32, line: 641, baseType: !197, size: 64, offset: 10432)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !27}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !58, file: !32, line: 646, baseType: !202, size: 192, offset: 10496)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !32, line: 291, size: 192, elements: !203)
!203 = !{!204, !206, !207}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !202, file: !32, line: 293, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !202, file: !32, line: 294, baseType: !27, size: 32, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !202, file: !32, line: 295, baseType: !62, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !58, file: !32, line: 648, baseType: !209, size: 4224, offset: 10688)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 4224, elements: !131)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !33, file: !32, line: 199, baseType: !211, size: 64, offset: 512)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!54, !57, !10, !214, !27}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !33, file: !32, line: 202, baseType: !217, size: 64, offset: 576)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!220, !57, !10, !220, !27}
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !55, line: 114, baseType: !56)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !33, file: !32, line: 203, baseType: !222, size: 64, offset: 640)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!27, !57, !10}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !33, file: !32, line: 206, baseType: !44, size: 128, offset: 704)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !33, file: !32, line: 207, baseType: !36, size: 64, offset: 832)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !33, file: !32, line: 208, baseType: !27, size: 32, offset: 896)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !33, file: !32, line: 211, baseType: !229, size: 24, offset: 928)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 24, elements: !131)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !33, file: !32, line: 212, baseType: !231, size: 8, offset: 952)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8, elements: !91)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !33, file: !32, line: 215, baseType: !44, size: 128, offset: 960)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !33, file: !32, line: 218, baseType: !27, size: 32, offset: 1088)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !33, file: !32, line: 219, baseType: !235, size: 64, offset: 1152)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !55, line: 44, baseType: !56)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !33, file: !32, line: 222, baseType: !57, size: 64, offset: 1216)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !33, file: !32, line: 226, baseType: !238, size: 32, offset: 1280)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !55, line: 175, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !240, line: 12, baseType: !27)
!240 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !33, file: !32, line: 228, baseType: !136, size: 64, offset: 1312)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !33, file: !32, line: 229, baseType: !27, size: 32, offset: 1376)
!243 = !{!244, !245, !246, !252, !253, !254, !258, !260, !261, !262, !274, !275, !282, !288, !289, !292, !293, !296}
!244 = !DILocalVariable(name: "rdbfilename", arg: 1, scope: !24, file: !3, line: 179, type: !7)
!245 = !DILocalVariable(name: "fp", arg: 2, scope: !24, file: !3, line: 179, type: !28)
!246 = !DILocalVariable(name: "dbid", scope: !24, file: !3, line: 180, type: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !248, line: 60, baseType: !249)
!248 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !250, line: 105, baseType: !251)
!250 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!251 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!252 = !DILocalVariable(name: "type", scope: !24, file: !3, line: 181, type: !27)
!253 = !DILocalVariable(name: "rdbver", scope: !24, file: !3, line: 181, type: !27)
!254 = !DILocalVariable(name: "buf", scope: !24, file: !3, line: 182, type: !255)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 1024)
!258 = !DILocalVariable(name: "expiretime", scope: !24, file: !3, line: 183, type: !259)
!259 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!260 = !DILocalVariable(name: "now", scope: !24, file: !3, line: 183, type: !259)
!261 = !DILocalVariable(name: "closefile", scope: !24, file: !3, line: 186, type: !27)
!262 = !DILocalVariable(name: "key", scope: !263, file: !3, line: 207, type: !264)
!263 = distinct !DILexicalBlock(scope: !24, file: !3, line: 206, column: 14)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !266, line: 622, baseType: !267)
!266 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !266, line: 614, size: 128, elements: !268)
!268 = !{!269, !270, !271, !272, !273}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !267, file: !266, line: 615, baseType: !9, size: 4, flags: DIFlagBitField, extraData: i64 0)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !267, file: !266, line: 616, baseType: !9, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !267, file: !266, line: 617, baseType: !9, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !267, file: !266, line: 620, baseType: !27, size: 32, offset: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !267, file: !266, line: 621, baseType: !10, size: 64, offset: 64)
!274 = !DILocalVariable(name: "val", scope: !263, file: !3, line: 207, type: !264)
!275 = !DILocalVariable(name: "byte", scope: !276, file: !3, line: 230, type: !280)
!276 = distinct !DILexicalBlock(scope: !277, file: !3, line: 228, column: 45)
!277 = distinct !DILexicalBlock(scope: !278, file: !3, line: 228, column: 20)
!278 = distinct !DILexicalBlock(scope: !279, file: !3, line: 222, column: 20)
!279 = distinct !DILexicalBlock(scope: !263, file: !3, line: 214, column: 13)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !248, line: 24, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !250, line: 43, baseType: !37)
!282 = !DILocalVariable(name: "db_size", scope: !283, file: !3, line: 250, type: !247)
!283 = distinct !DILexicalBlock(scope: !284, file: !3, line: 247, column: 49)
!284 = distinct !DILexicalBlock(scope: !285, file: !3, line: 247, column: 20)
!285 = distinct !DILexicalBlock(scope: !286, file: !3, line: 240, column: 20)
!286 = distinct !DILexicalBlock(scope: !287, file: !3, line: 237, column: 20)
!287 = distinct !DILexicalBlock(scope: !277, file: !3, line: 233, column: 20)
!288 = !DILocalVariable(name: "expires_size", scope: !283, file: !3, line: 250, type: !247)
!289 = !DILocalVariable(name: "auxkey", scope: !290, file: !3, line: 263, type: !264)
!290 = distinct !DILexicalBlock(scope: !291, file: !3, line: 257, column: 44)
!291 = distinct !DILexicalBlock(scope: !284, file: !3, line: 257, column: 20)
!292 = !DILocalVariable(name: "auxval", scope: !290, file: !3, line: 263, type: !264)
!293 = !DILocalVariable(name: "cksum", scope: !294, file: !3, line: 301, type: !247)
!294 = distinct !DILexicalBlock(scope: !295, file: !3, line: 300, column: 45)
!295 = distinct !DILexicalBlock(scope: !24, file: !3, line: 300, column: 9)
!296 = !DILocalVariable(name: "expected", scope: !294, file: !3, line: 301, type: !247)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "rio", file: !298, line: 87, baseType: !299)
!298 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rio.h", directory: "/root/.unikraft/apps/redis/build")
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rio", file: !298, line: 39, size: 832, elements: !300)
!300 = !{!301, !307, !313, !320, !324, !328, !329, !330, !331}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !299, file: !298, line: 43, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!305, !306, !10, !305}
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !145, line: 58, baseType: !251)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !299, file: !298, line: 44, baseType: !308, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!305, !306, !311, !305}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tell", scope: !299, file: !298, line: 45, baseType: !314, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!317, !306}
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !318, line: 173, baseType: !319)
!318 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !55, line: 100, baseType: !235)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !299, file: !298, line: 46, baseType: !321, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!27, !306}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "update_cksum", scope: !299, file: !298, line: 52, baseType: !325, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !306, !311, !305}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "cksum", scope: !299, file: !298, line: 55, baseType: !247, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "processed_bytes", scope: !299, file: !298, line: 58, baseType: !305, size: 64, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "max_processing_chunk", scope: !299, file: !298, line: 61, baseType: !305, size: 64, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !299, file: !298, line: 84, baseType: !332, size: 320, offset: 512)
!332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !299, file: !298, line: 64, size: 320, elements: !333)
!333 = !{!334, !341, !347}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !332, file: !298, line: 69, baseType: !335, size: 128)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !332, file: !298, line: 66, size: 128, elements: !336)
!336 = !{!337, !340}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !335, file: !298, line: 67, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !339, line: 43, baseType: !7)
!339 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!340 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !335, file: !298, line: 68, baseType: !317, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !332, file: !298, line: 75, baseType: !342, size: 192)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !332, file: !298, line: 71, size: 192, elements: !343)
!343 = !{!344, !345, !346}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !342, file: !298, line: 72, baseType: !28, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !342, file: !298, line: 73, baseType: !317, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "autosync", scope: !342, file: !298, line: 74, baseType: !317, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "fdset", scope: !332, file: !298, line: 83, baseType: !348, size: 320)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !332, file: !298, line: 77, size: 320, elements: !349)
!349 = !{!350, !352, !353, !354, !355}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "fds", scope: !348, file: !298, line: 78, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !348, file: !298, line: 79, baseType: !351, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "numfds", scope: !348, file: !298, line: 80, baseType: !27, size: 32, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !348, file: !298, line: 81, baseType: !317, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !348, file: !298, line: 82, baseType: !338, size: 64, offset: 256)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(name: "rdbstate", scope: !2, file: !3, line: 49, type: !358, isLocal: false, isDefinition: true)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 39, size: 8640, elements: !359)
!359 = !{!360, !362, !363, !364, !365, !366, !367, !368, !369}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "rio", scope: !358, file: !3, line: 40, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !358, file: !3, line: 41, baseType: !264, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "key_type", scope: !358, file: !3, line: 42, baseType: !27, size: 32, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !358, file: !3, line: 43, baseType: !251, size: 64, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !358, file: !3, line: 44, baseType: !251, size: 64, offset: 256)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "already_expired", scope: !358, file: !3, line: 45, baseType: !251, size: 64, offset: 320)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "doing", scope: !358, file: !3, line: 46, baseType: !27, size: 32, offset: 384)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "error_set", scope: !358, file: !3, line: 47, baseType: !27, size: 32, offset: 416)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !358, file: !3, line: 48, baseType: !255, size: 8192, offset: 448)
!370 = !{i32 2, !"Dwarf Version", i32 4}
!371 = !{i32 2, !"Debug Info Version", i32 3}
!372 = !{i32 1, !"wchar_size", i32 4}
!373 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!374 = distinct !DISubprogram(name: "rdbShowGenericInfo", scope: !3, file: !3, line: 92, type: !183, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!375 = !DILocation(line: 93, column: 47, scope: !374)
!376 = !{!377, !382, i64 24}
!377 = !{!"", !378, i64 0, !378, i64 8, !381, i64 16, !382, i64 24, !382, i64 32, !382, i64 40, !381, i64 48, !381, i64 52, !379, i64 56}
!378 = !{!"any pointer", !379, i64 0}
!379 = !{!"omnipotent char", !380, i64 0}
!380 = !{!"Simple C/C++ TBAA"}
!381 = !{!"int", !379, i64 0}
!382 = !{!"long", !379, i64 0}
!383 = !DILocation(line: 93, column: 5, scope: !374)
!384 = !DILocation(line: 94, column: 45, scope: !374)
!385 = !{!377, !382, i64 32}
!386 = !DILocation(line: 94, column: 5, scope: !374)
!387 = !DILocation(line: 95, column: 53, scope: !374)
!388 = !{!377, !382, i64 40}
!389 = !DILocation(line: 95, column: 5, scope: !374)
!390 = !DILocation(line: 96, column: 1, scope: !374)
!391 = distinct !DISubprogram(name: "rdbCheckError", scope: !3, file: !3, line: 100, type: !392, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !394)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !214, null}
!394 = !{!395, !396, !397}
!395 = !DILocalVariable(name: "fmt", arg: 1, scope: !391, file: !3, line: 100, type: !214)
!396 = !DILocalVariable(name: "msg", scope: !391, file: !3, line: 101, type: !255)
!397 = !DILocalVariable(name: "ap", scope: !391, file: !3, line: 102, type: !398)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !30, line: 46, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !400, line: 51, baseType: !401)
!400 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 102, baseType: !402)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 192, elements: !91)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 102, size: 192, elements: !404)
!404 = !{!405, !406, !407, !408}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !403, file: !3, line: 102, baseType: !9, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !403, file: !3, line: 102, baseType: !9, size: 32, offset: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !403, file: !3, line: 102, baseType: !10, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !403, file: !3, line: 102, baseType: !10, size: 64, offset: 128)
!409 = !DILocation(line: 100, column: 32, scope: !391)
!410 = !DILocation(line: 101, column: 5, scope: !391)
!411 = !DILocation(line: 101, column: 10, scope: !391)
!412 = !DILocation(line: 102, column: 5, scope: !391)
!413 = !DILocation(line: 102, column: 13, scope: !391)
!414 = !DILocation(line: 104, column: 5, scope: !391)
!415 = !DILocation(line: 105, column: 5, scope: !391)
!416 = !DILocation(line: 106, column: 5, scope: !391)
!417 = !DILocation(line: 108, column: 5, scope: !391)
!418 = !DILocation(line: 110, column: 40, scope: !391)
!419 = !{!377, !378, i64 0}
!420 = !DILocation(line: 110, column: 31, scope: !391)
!421 = !DILocation(line: 111, column: 27, scope: !391)
!422 = !{!423, !382, i64 48}
!423 = !{!"_rio", !378, i64 0, !378, i64 8, !378, i64 16, !378, i64 24, !378, i64 32, !382, i64 40, !382, i64 48, !382, i64 56, !379, i64 64}
!424 = !DILocation(line: 109, column: 5, scope: !391)
!425 = !DILocation(line: 113, column: 41, scope: !391)
!426 = !{!377, !381, i64 48}
!427 = !DILocation(line: 113, column: 9, scope: !391)
!428 = !{!378, !378, i64 0}
!429 = !DILocation(line: 112, column: 5, scope: !391)
!430 = !DILocation(line: 114, column: 18, scope: !431)
!431 = distinct !DILexicalBlock(scope: !391, file: !3, line: 114, column: 9)
!432 = !{!377, !378, i64 8}
!433 = !DILocation(line: 114, column: 9, scope: !431)
!434 = !DILocation(line: 114, column: 9, scope: !391)
!435 = !DILocation(line: 116, column: 34, scope: !431)
!436 = !{!437, !378, i64 8}
!437 = !{!"redisObject", !381, i64 0, !381, i64 0, !381, i64 1, !381, i64 4, !378, i64 8}
!438 = !DILocation(line: 115, column: 9, scope: !431)
!439 = !DILocation(line: 117, column: 18, scope: !440)
!440 = distinct !DILexicalBlock(scope: !391, file: !3, line: 117, column: 9)
!441 = !{!377, !381, i64 16}
!442 = !DILocation(line: 117, column: 27, scope: !440)
!443 = !DILocation(line: 117, column: 9, scope: !391)
!444 = !DILocation(line: 120, column: 42, scope: !440)
!445 = !DILocation(line: 120, column: 13, scope: !440)
!446 = !DILocation(line: 122, column: 17, scope: !440)
!447 = !DILocation(line: 118, column: 9, scope: !440)
!448 = !DILocation(line: 93, column: 47, scope: !374, inlinedAt: !449)
!449 = distinct !DILocation(line: 123, column: 5, scope: !391)
!450 = !DILocation(line: 93, column: 5, scope: !374, inlinedAt: !449)
!451 = !DILocation(line: 94, column: 45, scope: !374, inlinedAt: !449)
!452 = !DILocation(line: 94, column: 5, scope: !374, inlinedAt: !449)
!453 = !DILocation(line: 95, column: 53, scope: !374, inlinedAt: !449)
!454 = !DILocation(line: 95, column: 5, scope: !374, inlinedAt: !449)
!455 = !DILocation(line: 124, column: 1, scope: !391)
!456 = distinct !DISubprogram(name: "rdbCheckInfo", scope: !3, file: !3, line: 127, type: !392, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !457)
!457 = !{!458, !459, !460}
!458 = !DILocalVariable(name: "fmt", arg: 1, scope: !456, file: !3, line: 127, type: !214)
!459 = !DILocalVariable(name: "msg", scope: !456, file: !3, line: 128, type: !255)
!460 = !DILocalVariable(name: "ap", scope: !456, file: !3, line: 129, type: !398)
!461 = !DILocation(line: 127, column: 31, scope: !456)
!462 = !DILocation(line: 128, column: 5, scope: !456)
!463 = !DILocation(line: 128, column: 10, scope: !456)
!464 = !DILocation(line: 129, column: 5, scope: !456)
!465 = !DILocation(line: 129, column: 13, scope: !456)
!466 = !DILocation(line: 131, column: 5, scope: !456)
!467 = !DILocation(line: 132, column: 5, scope: !456)
!468 = !DILocation(line: 133, column: 5, scope: !456)
!469 = !DILocation(line: 136, column: 40, scope: !456)
!470 = !DILocation(line: 136, column: 31, scope: !456)
!471 = !DILocation(line: 137, column: 27, scope: !456)
!472 = !DILocation(line: 135, column: 5, scope: !456)
!473 = !DILocation(line: 138, column: 1, scope: !456)
!474 = distinct !DISubprogram(name: "rdbCheckSetError", scope: !3, file: !3, line: 142, type: !392, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !475)
!475 = !{!476, !477}
!476 = !DILocalVariable(name: "fmt", arg: 1, scope: !474, file: !3, line: 142, type: !214)
!477 = !DILocalVariable(name: "ap", scope: !474, file: !3, line: 143, type: !398)
!478 = !DILocation(line: 142, column: 35, scope: !474)
!479 = !DILocation(line: 143, column: 5, scope: !474)
!480 = !DILocation(line: 143, column: 13, scope: !474)
!481 = !DILocation(line: 145, column: 5, scope: !474)
!482 = !DILocation(line: 146, column: 5, scope: !474)
!483 = !DILocation(line: 147, column: 5, scope: !474)
!484 = !DILocation(line: 148, column: 24, scope: !474)
!485 = !{!377, !381, i64 52}
!486 = !DILocation(line: 149, column: 1, scope: !474)
!487 = distinct !DISubprogram(name: "rdbCheckHandleCrash", scope: !3, file: !3, line: 154, type: !488, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !499)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !27, !490, !10}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !492, line: 72, baseType: !493)
!492 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !492, line: 68, size: 96, elements: !494)
!494 = !{!495, !496, !497}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !493, file: !492, line: 69, baseType: !27, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !493, file: !492, line: 70, baseType: !27, size: 32, offset: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !493, file: !492, line: 71, baseType: !498, size: 32, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !492, line: 61, baseType: !27)
!499 = !{!500, !501, !502}
!500 = !DILocalVariable(name: "sig", arg: 1, scope: !487, file: !3, line: 154, type: !27)
!501 = !DILocalVariable(name: "info", arg: 2, scope: !487, file: !3, line: 154, type: !490)
!502 = !DILocalVariable(name: "secret", arg: 3, scope: !487, file: !3, line: 154, type: !10)
!503 = !DILocation(line: 154, column: 30, scope: !487)
!504 = !DILocation(line: 154, column: 46, scope: !487)
!505 = !DILocation(line: 154, column: 58, scope: !487)
!506 = !DILocation(line: 159, column: 5, scope: !487)
!507 = !DILocation(line: 160, column: 5, scope: !487)
!508 = distinct !DISubprogram(name: "rdbCheckSetupSignals", scope: !3, file: !3, line: 163, type: !183, isLocal: false, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !509)
!509 = !{!510}
!510 = !DILocalVariable(name: "act", scope: !508, file: !3, line: 164, type: !511)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !492, line: 74, size: 256, elements: !512)
!512 = !{!513, !519, !522, !523}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "__sa_handler", scope: !511, file: !492, line: 78, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !511, file: !492, line: 75, size: 64, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !514, file: !492, line: 76, baseType: !198, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !514, file: !492, line: 77, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !511, file: !492, line: 79, baseType: !520, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !492, line: 64, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !492, line: 63, baseType: !251)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !511, file: !492, line: 80, baseType: !27, size: 32, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !511, file: !492, line: 81, baseType: !182, size: 64, offset: 192)
!524 = !DILocation(line: 164, column: 5, scope: !508)
!525 = !DILocation(line: 166, column: 22, scope: !508)
!526 = !DILocation(line: 166, column: 5, scope: !508)
!527 = !DILocation(line: 167, column: 9, scope: !508)
!528 = !DILocation(line: 167, column: 18, scope: !508)
!529 = !{!530, !381, i64 16}
!530 = !{!"sigaction", !379, i64 0, !382, i64 8, !381, i64 16, !378, i64 24}
!531 = !DILocation(line: 168, column: 9, scope: !508)
!532 = !DILocation(line: 168, column: 22, scope: !508)
!533 = !{!379, !379, i64 0}
!534 = !DILocation(line: 164, column: 22, scope: !508)
!535 = !DILocation(line: 169, column: 5, scope: !508)
!536 = !DILocation(line: 170, column: 5, scope: !508)
!537 = !DILocation(line: 171, column: 5, scope: !508)
!538 = !DILocation(line: 172, column: 5, scope: !508)
!539 = !DILocation(line: 173, column: 1, scope: !508)
!540 = !DILocation(line: 179, column: 27, scope: !24)
!541 = !DILocation(line: 179, column: 46, scope: !24)
!542 = !DILocation(line: 182, column: 5, scope: !24)
!543 = !DILocation(line: 182, column: 10, scope: !24)
!544 = !DILocation(line: 183, column: 33, scope: !24)
!545 = !DILocation(line: 183, column: 27, scope: !24)
!546 = !DILocation(line: 186, column: 25, scope: !24)
!547 = !DILocation(line: 187, column: 20, scope: !548)
!548 = distinct !DILexicalBlock(scope: !24, file: !3, line: 187, column: 9)
!549 = !DILocation(line: 187, column: 29, scope: !548)
!550 = !DILocation(line: 187, column: 53, scope: !548)
!551 = !DILocation(line: 187, column: 9, scope: !24)
!552 = !DILocation(line: 189, column: 5, scope: !24)
!553 = !DILocation(line: 190, column: 18, scope: !24)
!554 = !DILocation(line: 191, column: 22, scope: !24)
!555 = !{!423, !378, i64 32}
!556 = !DILocalVariable(name: "r", arg: 1, scope: !557, file: !298, line: 106, type: !361)
!557 = distinct !DISubprogram(name: "rioRead", scope: !298, file: !298, line: 106, type: !558, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !560)
!558 = !DISubroutineType(types: !559)
!559 = !{!305, !361, !10, !305}
!560 = !{!556, !561, !562, !563}
!561 = !DILocalVariable(name: "buf", arg: 2, scope: !557, file: !298, line: 106, type: !10)
!562 = !DILocalVariable(name: "len", arg: 3, scope: !557, file: !298, line: 106, type: !305)
!563 = !DILocalVariable(name: "bytes_to_read", scope: !564, file: !298, line: 108, type: !305)
!564 = distinct !DILexicalBlock(scope: !557, file: !298, line: 107, column: 17)
!565 = !DILocation(line: 106, column: 35, scope: !557, inlinedAt: !566)
!566 = distinct !DILocation(line: 192, column: 9, scope: !567)
!567 = distinct !DILexicalBlock(scope: !24, file: !3, line: 192, column: 9)
!568 = !DILocation(line: 106, column: 44, scope: !557, inlinedAt: !566)
!569 = !DILocation(line: 106, column: 56, scope: !557, inlinedAt: !566)
!570 = !DILocation(line: 108, column: 36, scope: !564, inlinedAt: !566)
!571 = !{!423, !382, i64 56}
!572 = !DILocation(line: 108, column: 33, scope: !564, inlinedAt: !566)
!573 = !DILocation(line: 108, column: 84, scope: !564, inlinedAt: !566)
!574 = !DILocation(line: 108, column: 57, scope: !564, inlinedAt: !566)
!575 = !DILocation(line: 108, column: 16, scope: !564, inlinedAt: !566)
!576 = !DILocation(line: 109, column: 16, scope: !577, inlinedAt: !566)
!577 = distinct !DILexicalBlock(scope: !564, file: !298, line: 109, column: 13)
!578 = !{!423, !378, i64 0}
!579 = !DILocation(line: 109, column: 13, scope: !577, inlinedAt: !566)
!580 = !DILocation(line: 109, column: 42, scope: !577, inlinedAt: !566)
!581 = !DILocation(line: 109, column: 13, scope: !564, inlinedAt: !566)
!582 = !DILocation(line: 111, column: 16, scope: !583, inlinedAt: !566)
!583 = distinct !DILexicalBlock(scope: !564, file: !298, line: 111, column: 13)
!584 = !DILocation(line: 111, column: 13, scope: !583, inlinedAt: !566)
!585 = !DILocation(line: 111, column: 13, scope: !564, inlinedAt: !566)
!586 = !DILocation(line: 111, column: 30, scope: !583, inlinedAt: !566)
!587 = !DILocation(line: 112, column: 26, scope: !564, inlinedAt: !566)
!588 = !DILocation(line: 113, column: 13, scope: !564, inlinedAt: !566)
!589 = !DILocation(line: 114, column: 28, scope: !564, inlinedAt: !566)
!590 = !DILocation(line: 107, column: 5, scope: !557, inlinedAt: !566)
!591 = !DILocation(line: 193, column: 5, scope: !24)
!592 = !DILocation(line: 193, column: 12, scope: !24)
!593 = !DILocation(line: 194, column: 9, scope: !594)
!594 = distinct !DILexicalBlock(scope: !24, file: !3, line: 194, column: 9)
!595 = !DILocation(line: 194, column: 31, scope: !594)
!596 = !DILocation(line: 194, column: 9, scope: !24)
!597 = !DILocation(line: 195, column: 9, scope: !598)
!598 = distinct !DILexicalBlock(scope: !594, file: !3, line: 194, column: 37)
!599 = !DILocation(line: 196, column: 9, scope: !598)
!600 = !DILocation(line: 198, column: 22, scope: !24)
!601 = !DILocation(line: 198, column: 14, scope: !24)
!602 = !DILocation(line: 181, column: 15, scope: !24)
!603 = !DILocation(line: 199, column: 20, scope: !604)
!604 = distinct !DILexicalBlock(scope: !24, file: !3, line: 199, column: 9)
!605 = !DILocation(line: 200, column: 9, scope: !606)
!606 = distinct !DILexicalBlock(scope: !604, file: !3, line: 199, column: 45)
!607 = !DILocation(line: 201, column: 9, scope: !606)
!608 = !DILocation(line: 183, column: 15, scope: !24)
!609 = !DILocation(line: 205, column: 5, scope: !24)
!610 = !DILocation(line: 206, column: 5, scope: !24)
!611 = !DILocation(line: 210, column: 24, scope: !263)
!612 = !DILocation(line: 211, column: 21, scope: !613)
!613 = distinct !DILexicalBlock(scope: !263, file: !3, line: 211, column: 13)
!614 = !DILocation(line: 181, column: 9, scope: !24)
!615 = !DILocation(line: 211, column: 13, scope: !263)
!616 = !DILocation(line: 215, column: 28, scope: !617)
!617 = distinct !DILexicalBlock(scope: !279, file: !3, line: 214, column: 44)
!618 = !DILocation(line: 219, column: 31, scope: !619)
!619 = distinct !DILexicalBlock(scope: !617, file: !3, line: 219, column: 17)
!620 = !DILocation(line: 219, column: 50, scope: !619)
!621 = !DILocation(line: 220, column: 24, scope: !617)
!622 = !DILocation(line: 219, column: 17, scope: !617)
!623 = !DILocation(line: 225, column: 28, scope: !624)
!624 = distinct !DILexicalBlock(scope: !278, file: !3, line: 222, column: 54)
!625 = !DILocation(line: 226, column: 31, scope: !626)
!626 = distinct !DILexicalBlock(scope: !624, file: !3, line: 226, column: 17)
!627 = !DILocation(line: 226, column: 69, scope: !626)
!628 = !DILocation(line: 226, column: 76, scope: !626)
!629 = !DILocation(line: 230, column: 21, scope: !276)
!630 = !DILocation(line: 230, column: 13, scope: !276)
!631 = !DILocation(line: 106, column: 35, scope: !557, inlinedAt: !632)
!632 = distinct !DILocation(line: 231, column: 17, scope: !633)
!633 = distinct !DILexicalBlock(scope: !276, file: !3, line: 231, column: 17)
!634 = !DILocation(line: 106, column: 44, scope: !557, inlinedAt: !632)
!635 = !DILocation(line: 106, column: 56, scope: !557, inlinedAt: !632)
!636 = !DILocation(line: 108, column: 36, scope: !564, inlinedAt: !632)
!637 = !DILocation(line: 108, column: 33, scope: !564, inlinedAt: !632)
!638 = !DILocation(line: 108, column: 84, scope: !564, inlinedAt: !632)
!639 = !DILocation(line: 108, column: 57, scope: !564, inlinedAt: !632)
!640 = !DILocation(line: 108, column: 16, scope: !564, inlinedAt: !632)
!641 = !DILocation(line: 109, column: 16, scope: !577, inlinedAt: !632)
!642 = !DILocation(line: 109, column: 13, scope: !577, inlinedAt: !632)
!643 = !DILocation(line: 109, column: 42, scope: !577, inlinedAt: !632)
!644 = !DILocation(line: 109, column: 13, scope: !564, inlinedAt: !632)
!645 = !DILocation(line: 111, column: 16, scope: !583, inlinedAt: !632)
!646 = !DILocation(line: 111, column: 13, scope: !583, inlinedAt: !632)
!647 = !DILocation(line: 111, column: 13, scope: !564, inlinedAt: !632)
!648 = !DILocation(line: 111, column: 30, scope: !583, inlinedAt: !632)
!649 = !DILocation(line: 112, column: 26, scope: !564, inlinedAt: !632)
!650 = !DILocation(line: 113, column: 13, scope: !564, inlinedAt: !632)
!651 = !DILocation(line: 114, column: 28, scope: !564, inlinedAt: !632)
!652 = !DILocation(line: 107, column: 5, scope: !557, inlinedAt: !632)
!653 = !DILocation(line: 233, column: 9, scope: !277)
!654 = !DILocation(line: 235, column: 17, scope: !655)
!655 = distinct !DILexicalBlock(scope: !656, file: !3, line: 235, column: 17)
!656 = distinct !DILexicalBlock(scope: !287, file: !3, line: 233, column: 45)
!657 = !DILocation(line: 235, column: 39, scope: !655)
!658 = !DILocation(line: 235, column: 54, scope: !655)
!659 = !DILocation(line: 242, column: 28, scope: !660)
!660 = distinct !DILexicalBlock(scope: !285, file: !3, line: 240, column: 49)
!661 = !DILocation(line: 243, column: 25, scope: !662)
!662 = distinct !DILexicalBlock(scope: !660, file: !3, line: 243, column: 17)
!663 = !DILocation(line: 180, column: 14, scope: !24)
!664 = !DILocation(line: 243, column: 48, scope: !662)
!665 = !DILocation(line: 243, column: 17, scope: !660)
!666 = !DILocation(line: 245, column: 13, scope: !660)
!667 = !DILocation(line: 246, column: 13, scope: !660)
!668 = !DILocation(line: 251, column: 28, scope: !283)
!669 = !DILocation(line: 252, column: 28, scope: !670)
!670 = distinct !DILexicalBlock(scope: !283, file: !3, line: 252, column: 17)
!671 = !DILocation(line: 250, column: 22, scope: !283)
!672 = !DILocation(line: 252, column: 51, scope: !670)
!673 = !DILocation(line: 252, column: 17, scope: !283)
!674 = !DILocation(line: 254, column: 33, scope: !675)
!675 = distinct !DILexicalBlock(scope: !283, file: !3, line: 254, column: 17)
!676 = !DILocation(line: 250, column: 31, scope: !283)
!677 = !DILocation(line: 254, column: 56, scope: !675)
!678 = !DILocation(line: 255, column: 17, scope: !675)
!679 = !DILocation(line: 264, column: 28, scope: !290)
!680 = !DILocation(line: 265, column: 27, scope: !681)
!681 = distinct !DILexicalBlock(scope: !290, file: !3, line: 265, column: 17)
!682 = !DILocation(line: 263, column: 19, scope: !290)
!683 = !DILocation(line: 265, column: 54, scope: !681)
!684 = !DILocation(line: 265, column: 17, scope: !290)
!685 = !DILocation(line: 266, column: 27, scope: !686)
!686 = distinct !DILexicalBlock(scope: !290, file: !3, line: 266, column: 17)
!687 = !DILocation(line: 263, column: 28, scope: !290)
!688 = !DILocation(line: 266, column: 54, scope: !686)
!689 = !DILocation(line: 266, column: 17, scope: !290)
!690 = !DILocation(line: 269, column: 32, scope: !290)
!691 = !DILocation(line: 269, column: 52, scope: !290)
!692 = !DILocation(line: 268, column: 13, scope: !290)
!693 = !DILocation(line: 270, column: 13, scope: !290)
!694 = !DILocation(line: 271, column: 13, scope: !290)
!695 = !DILocation(line: 272, column: 13, scope: !290)
!696 = distinct !{!696, !610, !697}
!697 = !DILocation(line: 298, column: 5, scope: !24)
!698 = !DILocation(line: 275, column: 17, scope: !699)
!699 = distinct !DILexicalBlock(scope: !700, file: !3, line: 274, column: 41)
!700 = distinct !DILexicalBlock(scope: !701, file: !3, line: 274, column: 17)
!701 = distinct !DILexicalBlock(scope: !291, file: !3, line: 273, column: 16)
!702 = !DILocation(line: 278, column: 31, scope: !701)
!703 = !DILocation(line: 282, column: 24, scope: !263)
!704 = !DILocation(line: 283, column: 20, scope: !705)
!705 = distinct !DILexicalBlock(scope: !263, file: !3, line: 283, column: 13)
!706 = !DILocation(line: 207, column: 15, scope: !263)
!707 = !DILocation(line: 283, column: 47, scope: !705)
!708 = !DILocation(line: 283, column: 13, scope: !263)
!709 = !DILocation(line: 284, column: 22, scope: !263)
!710 = !DILocation(line: 285, column: 22, scope: !263)
!711 = !DILocation(line: 287, column: 24, scope: !263)
!712 = !DILocation(line: 288, column: 20, scope: !713)
!713 = distinct !DILexicalBlock(scope: !263, file: !3, line: 288, column: 13)
!714 = !DILocation(line: 207, column: 21, scope: !263)
!715 = !DILocation(line: 288, column: 50, scope: !713)
!716 = !DILocation(line: 288, column: 13, scope: !263)
!717 = !DILocation(line: 290, column: 24, scope: !718)
!718 = distinct !DILexicalBlock(scope: !263, file: !3, line: 290, column: 13)
!719 = !DILocation(line: 290, column: 44, scope: !718)
!720 = !DILocation(line: 290, column: 30, scope: !718)
!721 = !DILocation(line: 291, column: 37, scope: !718)
!722 = !DILocation(line: 291, column: 13, scope: !718)
!723 = !DILocation(line: 292, column: 13, scope: !263)
!724 = !DILocation(line: 292, column: 47, scope: !725)
!725 = distinct !DILexicalBlock(scope: !263, file: !3, line: 292, column: 13)
!726 = !DILocation(line: 292, column: 31, scope: !725)
!727 = !DILocation(line: 293, column: 22, scope: !263)
!728 = !DILocation(line: 294, column: 9, scope: !263)
!729 = !DILocation(line: 295, column: 9, scope: !263)
!730 = !DILocation(line: 296, column: 27, scope: !263)
!731 = !DILocation(line: 0, scope: !24)
!732 = !DILocation(line: 300, column: 16, scope: !295)
!733 = !DILocation(line: 300, column: 31, scope: !295)
!734 = !DILocation(line: 300, column: 24, scope: !295)
!735 = !DILocation(line: 300, column: 21, scope: !295)
!736 = !DILocation(line: 301, column: 9, scope: !294)
!737 = !DILocation(line: 301, column: 40, scope: !294)
!738 = !{!423, !382, i64 40}
!739 = !DILocation(line: 301, column: 25, scope: !294)
!740 = !DILocation(line: 303, column: 24, scope: !294)
!741 = !DILocation(line: 106, column: 35, scope: !557, inlinedAt: !742)
!742 = distinct !DILocation(line: 304, column: 13, scope: !743)
!743 = distinct !DILexicalBlock(scope: !294, file: !3, line: 304, column: 13)
!744 = !DILocation(line: 106, column: 44, scope: !557, inlinedAt: !742)
!745 = !DILocation(line: 106, column: 56, scope: !557, inlinedAt: !742)
!746 = !DILocation(line: 108, column: 36, scope: !564, inlinedAt: !742)
!747 = !DILocation(line: 108, column: 33, scope: !564, inlinedAt: !742)
!748 = !DILocation(line: 108, column: 84, scope: !564, inlinedAt: !742)
!749 = !DILocation(line: 108, column: 57, scope: !564, inlinedAt: !742)
!750 = !DILocation(line: 108, column: 16, scope: !564, inlinedAt: !742)
!751 = !DILocation(line: 109, column: 16, scope: !577, inlinedAt: !742)
!752 = !DILocation(line: 109, column: 13, scope: !577, inlinedAt: !742)
!753 = !DILocation(line: 109, column: 42, scope: !577, inlinedAt: !742)
!754 = !DILocation(line: 109, column: 13, scope: !564, inlinedAt: !742)
!755 = !DILocation(line: 314, column: 5, scope: !295)
!756 = !DILocation(line: 111, column: 16, scope: !583, inlinedAt: !742)
!757 = !DILocation(line: 111, column: 13, scope: !583, inlinedAt: !742)
!758 = !DILocation(line: 111, column: 13, scope: !564, inlinedAt: !742)
!759 = !DILocation(line: 111, column: 30, scope: !583, inlinedAt: !742)
!760 = !DILocation(line: 112, column: 26, scope: !564, inlinedAt: !742)
!761 = !DILocation(line: 113, column: 13, scope: !564, inlinedAt: !742)
!762 = !DILocation(line: 114, column: 28, scope: !564, inlinedAt: !742)
!763 = !DILocation(line: 107, column: 5, scope: !557, inlinedAt: !742)
!764 = !DILocation(line: 306, column: 13, scope: !765)
!765 = distinct !DILexicalBlock(scope: !294, file: !3, line: 306, column: 13)
!766 = !{!382, !382, i64 0}
!767 = !DILocation(line: 301, column: 18, scope: !294)
!768 = !DILocation(line: 306, column: 19, scope: !765)
!769 = !DILocation(line: 306, column: 13, scope: !294)
!770 = !DILocation(line: 307, column: 13, scope: !771)
!771 = distinct !DILexicalBlock(scope: !765, file: !3, line: 306, column: 25)
!772 = !DILocation(line: 308, column: 9, scope: !771)
!773 = !DILocation(line: 308, column: 26, scope: !774)
!774 = distinct !DILexicalBlock(scope: !765, file: !3, line: 308, column: 20)
!775 = !DILocation(line: 308, column: 20, scope: !765)
!776 = !DILocation(line: 312, column: 13, scope: !777)
!777 = distinct !DILexicalBlock(scope: !774, file: !3, line: 311, column: 16)
!778 = !DILocation(line: 309, column: 13, scope: !779)
!779 = distinct !DILexicalBlock(scope: !774, file: !3, line: 308, column: 39)
!780 = !DILocation(line: 316, column: 9, scope: !24)
!781 = !DILocation(line: 316, column: 20, scope: !782)
!782 = distinct !DILexicalBlock(scope: !24, file: !3, line: 316, column: 9)
!783 = !DILocation(line: 320, column: 18, scope: !784)
!784 = distinct !DILexicalBlock(scope: !24, file: !3, line: 320, column: 9)
!785 = !DILocation(line: 320, column: 9, scope: !784)
!786 = !DILocation(line: 320, column: 9, scope: !24)
!787 = !DILocation(line: 321, column: 9, scope: !788)
!788 = distinct !DILexicalBlock(scope: !784, file: !3, line: 320, column: 29)
!789 = !DILocation(line: 322, column: 5, scope: !788)
!790 = !DILocation(line: 323, column: 9, scope: !791)
!791 = distinct !DILexicalBlock(scope: !784, file: !3, line: 322, column: 12)
!792 = !DILocation(line: 326, column: 9, scope: !24)
!793 = !DILocation(line: 326, column: 20, scope: !794)
!794 = distinct !DILexicalBlock(scope: !24, file: !3, line: 326, column: 9)
!795 = !DILocation(line: 328, column: 1, scope: !24)
!796 = distinct !DISubprogram(name: "redis_check_rdb_main", scope: !3, file: !3, line: 342, type: !797, isLocal: false, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !800)
!797 = !DISubroutineType(types: !798)
!798 = !{!27, !27, !799, !28}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!800 = !{!801, !802, !803, !804}
!801 = !DILocalVariable(name: "argc", arg: 1, scope: !796, file: !3, line: 342, type: !27)
!802 = !DILocalVariable(name: "argv", arg: 2, scope: !796, file: !3, line: 342, type: !799)
!803 = !DILocalVariable(name: "fp", arg: 3, scope: !796, file: !3, line: 342, type: !28)
!804 = !DILocalVariable(name: "retval", scope: !796, file: !3, line: 356, type: !27)
!805 = !DILocation(line: 342, column: 30, scope: !796)
!806 = !DILocation(line: 342, column: 43, scope: !796)
!807 = !DILocation(line: 342, column: 55, scope: !796)
!808 = !DILocation(line: 343, column: 14, scope: !809)
!809 = distinct !DILexicalBlock(scope: !796, file: !3, line: 343, column: 9)
!810 = !DILocation(line: 343, column: 25, scope: !809)
!811 = !DILocation(line: 343, column: 19, scope: !809)
!812 = !DILocation(line: 344, column: 17, scope: !813)
!813 = distinct !DILexicalBlock(scope: !809, file: !3, line: 343, column: 34)
!814 = !{!815, !378, i64 24}
!815 = !{!"_reent", !381, i64 0, !378, i64 8, !378, i64 16, !378, i64 24, !381, i64 32, !379, i64 36, !381, i64 64, !378, i64 72, !381, i64 80, !378, i64 88, !378, i64 96, !381, i64 104, !378, i64 112, !378, i64 120, !381, i64 128, !378, i64 136, !379, i64 144, !378, i64 504, !816, i64 512, !378, i64 1304, !818, i64 1312, !379, i64 1336}
!816 = !{!"_atexit", !378, i64 0, !381, i64 8, !379, i64 16, !817, i64 272}
!817 = !{!"_on_exit_args", !379, i64 0, !379, i64 256, !381, i64 512, !381, i64 516}
!818 = !{!"_glue", !378, i64 0, !381, i64 8, !378, i64 16}
!819 = !DILocation(line: 344, column: 56, scope: !813)
!820 = !DILocation(line: 344, column: 9, scope: !813)
!821 = !DILocation(line: 345, column: 9, scope: !813)
!822 = !DILocation(line: 350, column: 9, scope: !823)
!823 = distinct !DILexicalBlock(scope: !796, file: !3, line: 350, column: 9)
!824 = !DILocation(line: 350, column: 28, scope: !823)
!825 = !DILocation(line: 350, column: 9, scope: !796)
!826 = !DILocation(line: 351, column: 9, scope: !823)
!827 = !DILocation(line: 352, column: 50, scope: !796)
!828 = !{!829, !382, i64 888}
!829 = !{!"redisServer", !381, i64 0, !378, i64 8, !378, i64 16, !378, i64 24, !381, i64 32, !381, i64 36, !381, i64 40, !378, i64 48, !378, i64 56, !378, i64 64, !378, i64 72, !381, i64 80, !381, i64 84, !381, i64 88, !381, i64 92, !378, i64 96, !378, i64 104, !381, i64 112, !381, i64 116, !379, i64 120, !381, i64 164, !382, i64 168, !381, i64 176, !378, i64 184, !378, i64 192, !378, i64 200, !379, i64 208, !381, i64 216, !381, i64 220, !379, i64 224, !381, i64 352, !378, i64 360, !381, i64 368, !379, i64 372, !381, i64 436, !381, i64 440, !379, i64 444, !381, i64 508, !378, i64 512, !378, i64 520, !378, i64 528, !378, i64 536, !378, i64 544, !378, i64 552, !378, i64 560, !381, i64 568, !830, i64 576, !379, i64 584, !378, i64 840, !382, i64 848, !381, i64 856, !381, i64 860, !382, i64 864, !382, i64 872, !382, i64 880, !382, i64 888, !378, i64 896, !378, i64 904, !378, i64 912, !378, i64 920, !378, i64 928, !378, i64 936, !378, i64 944, !378, i64 952, !378, i64 960, !378, i64 968, !378, i64 976, !378, i64 984, !378, i64 992, !382, i64 1000, !830, i64 1008, !830, i64 1016, !830, i64 1024, !831, i64 1032, !830, i64 1040, !830, i64 1048, !830, i64 1056, !830, i64 1064, !830, i64 1072, !830, i64 1080, !830, i64 1088, !830, i64 1096, !830, i64 1104, !382, i64 1112, !830, i64 1120, !831, i64 1128, !830, i64 1136, !830, i64 1144, !830, i64 1152, !830, i64 1160, !378, i64 1168, !830, i64 1176, !830, i64 1184, !382, i64 1192, !832, i64 1200, !830, i64 1240, !830, i64 1248, !382, i64 1256, !382, i64 1264, !379, i64 1272, !381, i64 1728, !381, i64 1732, !381, i64 1736, !381, i64 1740, !381, i64 1744, !382, i64 1752, !381, i64 1760, !381, i64 1764, !381, i64 1768, !381, i64 1772, !382, i64 1776, !382, i64 1784, !381, i64 1792, !381, i64 1796, !381, i64 1800, !381, i64 1804, !379, i64 1808, !381, i64 1880, !381, i64 1884, !378, i64 1888, !381, i64 1896, !381, i64 1900, !382, i64 1904, !382, i64 1912, !382, i64 1920, !382, i64 1928, !381, i64 1936, !381, i64 1940, !378, i64 1944, !378, i64 1952, !381, i64 1960, !381, i64 1964, !382, i64 1968, !382, i64 1976, !382, i64 1984, !382, i64 1992, !381, i64 2000, !382, i64 2008, !381, i64 2016, !381, i64 2020, !381, i64 2024, !381, i64 2028, !381, i64 2032, !381, i64 2036, !381, i64 2040, !381, i64 2044, !381, i64 2048, !381, i64 2052, !381, i64 2056, !381, i64 2060, !381, i64 2064, !378, i64 2072, !830, i64 2080, !830, i64 2088, !381, i64 2096, !378, i64 2104, !381, i64 2112, !378, i64 2120, !381, i64 2128, !381, i64 2132, !382, i64 2136, !382, i64 2144, !382, i64 2152, !382, i64 2160, !381, i64 2168, !381, i64 2172, !381, i64 2176, !381, i64 2180, !381, i64 2184, !381, i64 2188, !379, i64 2192, !833, i64 2200, !834, i64 2224, !378, i64 2240, !381, i64 2248, !378, i64 2256, !381, i64 2264, !379, i64 2268, !379, i64 2309, !830, i64 2352, !830, i64 2360, !381, i64 2368, !381, i64 2372, !378, i64 2376, !830, i64 2384, !830, i64 2392, !830, i64 2400, !830, i64 2408, !382, i64 2416, !382, i64 2424, !381, i64 2432, !381, i64 2436, !381, i64 2440, !381, i64 2444, !381, i64 2448, !378, i64 2456, !378, i64 2464, !381, i64 2472, !381, i64 2476, !378, i64 2480, !378, i64 2488, !381, i64 2496, !381, i64 2500, !382, i64 2504, !382, i64 2512, !382, i64 2520, !381, i64 2528, !381, i64 2532, !378, i64 2536, !382, i64 2544, !381, i64 2552, !381, i64 2556, !381, i64 2560, !382, i64 2568, !381, i64 2576, !381, i64 2580, !381, i64 2584, !378, i64 2592, !379, i64 2600, !830, i64 2648, !381, i64 2656, !378, i64 2664, !378, i64 2672, !381, i64 2680, !378, i64 2688, !381, i64 2696, !381, i64 2700, !830, i64 2704, !381, i64 2712, !381, i64 2716, !381, i64 2720, !381, i64 2724, !830, i64 2728, !381, i64 2736, !379, i64 2740, !378, i64 2768, !378, i64 2776, !381, i64 2784, !381, i64 2788, !381, i64 2792, !381, i64 2796, !382, i64 2800, !382, i64 2808, !382, i64 2816, !382, i64 2824, !382, i64 2832, !382, i64 2840, !382, i64 2848, !382, i64 2856, !381, i64 2864, !381, i64 2868, !382, i64 2872, !382, i64 2880, !381, i64 2888, !830, i64 2896, !378, i64 2904, !378, i64 2912, !381, i64 2920, !381, i64 2924, !830, i64 2928, !378, i64 2936, !378, i64 2944, !381, i64 2952, !381, i64 2956, !381, i64 2960, !381, i64 2964, !378, i64 2968, !381, i64 2976, !381, i64 2980, !381, i64 2984, !378, i64 2992, !378, i64 3000, !378, i64 3008, !378, i64 3016, !830, i64 3024, !830, i64 3032, !830, i64 3040, !381, i64 3048, !381, i64 3052, !381, i64 3056, !381, i64 3060, !381, i64 3064, !381, i64 3068, !381, i64 3072, !381, i64 3076, !381, i64 3080, !381, i64 3084, !381, i64 3088, !830, i64 3096, !378, i64 3104, !378, i64 3112, !378, i64 3120, !381, i64 3128, !381, i64 3132, !381, i64 3136, !382, i64 3144, !378, i64 3152, !378, i64 3160, !378, i64 3168}
!830 = !{!"long long", !379, i64 0}
!831 = !{!"double", !379, i64 0}
!832 = !{!"malloc_stats", !382, i64 0, !382, i64 8, !382, i64 16, !382, i64 24, !382, i64 32}
!833 = !{!"", !381, i64 0, !382, i64 8, !830, i64 16}
!834 = !{!"redisOpArray", !378, i64 0, !381, i64 8}
!835 = !DILocation(line: 353, column: 18, scope: !796)
!836 = !{!381, !381, i64 0}
!837 = !DILocation(line: 354, column: 42, scope: !796)
!838 = !DILocation(line: 354, column: 5, scope: !796)
!839 = !DILocation(line: 164, column: 5, scope: !508, inlinedAt: !840)
!840 = distinct !DILocation(line: 355, column: 5, scope: !796)
!841 = !DILocation(line: 166, column: 22, scope: !508, inlinedAt: !840)
!842 = !DILocation(line: 166, column: 5, scope: !508, inlinedAt: !840)
!843 = !DILocation(line: 167, column: 9, scope: !508, inlinedAt: !840)
!844 = !DILocation(line: 167, column: 18, scope: !508, inlinedAt: !840)
!845 = !DILocation(line: 168, column: 9, scope: !508, inlinedAt: !840)
!846 = !DILocation(line: 168, column: 22, scope: !508, inlinedAt: !840)
!847 = !DILocation(line: 164, column: 22, scope: !508, inlinedAt: !840)
!848 = !DILocation(line: 169, column: 5, scope: !508, inlinedAt: !840)
!849 = !DILocation(line: 170, column: 5, scope: !508, inlinedAt: !840)
!850 = !DILocation(line: 171, column: 5, scope: !508, inlinedAt: !840)
!851 = !DILocation(line: 172, column: 5, scope: !508, inlinedAt: !840)
!852 = !DILocation(line: 173, column: 1, scope: !508, inlinedAt: !840)
!853 = !DILocation(line: 356, column: 34, scope: !796)
!854 = !DILocation(line: 356, column: 18, scope: !796)
!855 = !DILocation(line: 356, column: 9, scope: !796)
!856 = !DILocation(line: 357, column: 16, scope: !857)
!857 = distinct !DILexicalBlock(scope: !796, file: !3, line: 357, column: 9)
!858 = !DILocation(line: 357, column: 9, scope: !796)
!859 = !DILocation(line: 358, column: 9, scope: !860)
!860 = distinct !DILexicalBlock(scope: !857, file: !3, line: 357, column: 22)
!861 = !DILocation(line: 93, column: 47, scope: !374, inlinedAt: !862)
!862 = distinct !DILocation(line: 359, column: 9, scope: !860)
!863 = !DILocation(line: 93, column: 5, scope: !374, inlinedAt: !862)
!864 = !DILocation(line: 94, column: 45, scope: !374, inlinedAt: !862)
!865 = !DILocation(line: 94, column: 5, scope: !374, inlinedAt: !862)
!866 = !DILocation(line: 95, column: 53, scope: !374, inlinedAt: !862)
!867 = !DILocation(line: 95, column: 5, scope: !374, inlinedAt: !862)
!868 = !DILocation(line: 360, column: 5, scope: !860)
!869 = !DILocation(line: 361, column: 9, scope: !796)
!870 = !DILocation(line: 361, column: 20, scope: !871)
!871 = distinct !DILexicalBlock(scope: !796, file: !3, line: 361, column: 9)
!872 = !DILocation(line: 361, column: 13, scope: !871)
!873 = !DILocation(line: 362, column: 5, scope: !796)
