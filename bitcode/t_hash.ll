; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/t_hash.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/t_hash.c"
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
%struct.sharedObjectsStruct = type { %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [10 x %struct.redisObject*], [10000 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], i8*, i8* }
%struct.hashTypeIterator = type { %struct.redisObject*, i32, i8*, i8*, %struct.dictIterator*, %struct.dictEntry* }
%struct.dictIterator = type { %struct.dict*, i64, i32, i32, %struct.dictEntry*, %struct.dictEntry*, i64 }

@server = external dso_local local_unnamed_addr global %struct.redisServer, align 8
@.str = private unnamed_addr constant [36 x i8] c"o->encoding == OBJ_ENCODING_ZIPLIST\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/t_hash.c\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"vptr != NULL\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"o->encoding == OBJ_ENCODING_HT\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Unknown hash encoding\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"vptr == NULL\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"hi->encoding == OBJ_ENCODING_ZIPLIST\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"hi->encoding == OBJ_ENCODING_HT\00", align 1
@shared = external dso_local local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@hashDictType = external dso_local global %struct.dictType, align 8
@.str.9 = private unnamed_addr constant [31 x i8] c"ziplist with dup elements dump\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Ziplist corruption detected\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Not implemented\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"hset\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"wrong number of arguments for HMSET\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"hash value is not an integer\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"increment or decrement would overflow\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"hincrby\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"hash value is not a float\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"increment would produce NaN or Infinity\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"hincrbyfloat\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"HSET\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"hdel\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"count == length\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @hashTypeTryConversion(%struct.redisObject*, %struct.redisObject** nocapture readonly, i32, i32) local_unnamed_addr #0 !dbg !125 {
  %5 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !149
  %6 = load i32, i32* %5, align 8, !dbg !149
  %7 = and i32 %6, 240, !dbg !149
  %8 = icmp ne i32 %7, 80, !dbg !151
  %9 = icmp sgt i32 %2, %3, !dbg !152
  %10 = or i1 %8, %9, !dbg !155
  br i1 %10, label %64, label %11, !dbg !155

; <label>:11:                                     ; preds = %4
  %12 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 242), align 8
  %13 = sext i32 %2 to i64, !dbg !157
  %14 = sext i32 %3 to i64, !dbg !157
  br label %15, !dbg !157

; <label>:15:                                     ; preds = %61, %11
  %16 = phi i64 [ %62, %61 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %16, !dbg !158
  %18 = bitcast %struct.redisObject** %17 to i32**, !dbg !158
  %19 = load i32*, i32** %18, align 8, !dbg !158, !tbaa !161
  %20 = load i32, i32* %19, align 8, !dbg !158
  %21 = lshr i32 %20, 4, !dbg !158
  %22 = trunc i32 %21 to i4, !dbg !158
  switch i4 %22, label %61 [
    i4 0, label %23
    i4 -8, label %23
  ], !dbg !158

; <label>:23:                                     ; preds = %15, %15
  %24 = getelementptr inbounds i32, i32* %19, i64 2, !dbg !165
  %25 = bitcast i32* %24 to i8**, !dbg !165
  %26 = load i8*, i8** %25, align 8, !dbg !165, !tbaa !166
  %27 = getelementptr inbounds i8, i8* %26, i64 -1, !dbg !181
  %28 = load i8, i8* %27, align 1, !dbg !181, !tbaa !182
  %29 = trunc i8 %28 to i3, !dbg !184
  switch i3 %29, label %30 [
    i3 0, label %31
    i3 1, label %34
    i3 2, label %38
    i3 3, label %43
    i3 -4, label %48
  ], !dbg !184

; <label>:30:                                     ; preds = %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !185
  br label %61, !dbg !186

; <label>:31:                                     ; preds = %23
  %32 = lshr i8 %28, 3, !dbg !187
  %33 = zext i8 %32 to i64, !dbg !187
  br label %52, !dbg !189

; <label>:34:                                     ; preds = %23
  %35 = getelementptr inbounds i8, i8* %26, i64 -3, !dbg !190
  %36 = load i8, i8* %35, align 1, !dbg !191, !tbaa !182
  %37 = zext i8 %36 to i64, !dbg !190
  br label %52, !dbg !192

; <label>:38:                                     ; preds = %23
  %39 = getelementptr inbounds i8, i8* %26, i64 -5, !dbg !193
  %40 = bitcast i8* %39 to i16*, !dbg !194
  %41 = load i16, i16* %40, align 1, !dbg !194, !tbaa !195
  %42 = zext i16 %41 to i64, !dbg !193
  br label %52, !dbg !197

; <label>:43:                                     ; preds = %23
  %44 = getelementptr inbounds i8, i8* %26, i64 -9, !dbg !198
  %45 = bitcast i8* %44 to i32*, !dbg !199
  %46 = load i32, i32* %45, align 1, !dbg !199, !tbaa !200
  %47 = zext i32 %46 to i64, !dbg !198
  br label %52, !dbg !201

; <label>:48:                                     ; preds = %23
  %49 = getelementptr inbounds i8, i8* %26, i64 -17, !dbg !202
  %50 = bitcast i8* %49 to i64*, !dbg !203
  %51 = load i64, i64* %50, align 1, !dbg !203, !tbaa !204
  br label %52, !dbg !206

; <label>:52:                                     ; preds = %31, %34, %38, %43, %48
  %53 = phi i64 [ %51, %48 ], [ %47, %43 ], [ %42, %38 ], [ %37, %34 ], [ %33, %31 ], !dbg !207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !185
  %54 = icmp ugt i64 %53, %12, !dbg !208
  br i1 %54, label %55, label %61, !dbg !186

; <label>:55:                                     ; preds = %52
  %56 = lshr i32 %6, 4, !dbg !219
  %57 = trunc i32 %56 to i4, !dbg !221
  switch i4 %57, label %59 [
    i4 5, label %60
    i4 2, label %58
  ], !dbg !221

; <label>:58:                                     ; preds = %55
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 504, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !222
  tail call void @_exit(i32 1) #7, !dbg !222
  unreachable, !dbg !222

; <label>:59:                                     ; preds = %55
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 506, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !225
  tail call void @_exit(i32 1) #7, !dbg !225
  unreachable, !dbg !225

; <label>:60:                                     ; preds = %55
  tail call void @hashTypeConvertZiplist(%struct.redisObject* nonnull %0, i32 2) #6, !dbg !227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !229
  br label %64, !dbg !230

; <label>:61:                                     ; preds = %30, %15, %52
  %62 = add nsw i64 %16, 1, !dbg !231
  %63 = icmp slt i64 %16, %14, !dbg !152
  br i1 %63, label %15, label %64, !dbg !157, !llvm.loop !232

; <label>:64:                                     ; preds = %61, %4, %60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  ret void, !dbg !234
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local void @hashTypeConvert(%struct.redisObject*, i32) local_unnamed_addr #0 !dbg !210 {
  %3 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !237
  %4 = load i32, i32* %3, align 8, !dbg !237
  %5 = lshr i32 %4, 4, !dbg !237
  %6 = trunc i32 %5 to i4, !dbg !238
  switch i4 %6, label %9 [
    i4 5, label %7
    i4 2, label %8
  ], !dbg !238

; <label>:7:                                      ; preds = %2
  tail call void @hashTypeConvertZiplist(%struct.redisObject* nonnull %0, i32 %1) #8, !dbg !239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !240
  ret void, !dbg !240

; <label>:8:                                      ; preds = %2
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 504, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !241
  tail call void @_exit(i32 1) #7, !dbg !241
  unreachable, !dbg !241

; <label>:9:                                      ; preds = %2
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 506, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !242
  tail call void @_exit(i32 1) #7, !dbg !242
  unreachable, !dbg !242
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @hashTypeGetFromZiplist(%struct.redisObject* nocapture readonly, i8*, i8**, i32*, i64*) local_unnamed_addr #0 !dbg !243 {
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !267
  %7 = load i32, i32* %6, align 8, !dbg !267
  %8 = and i32 %7, 240, !dbg !267
  %9 = icmp eq i32 %8, 80, !dbg !267
  br i1 %9, label %11, label %10, !dbg !267

; <label>:10:                                     ; preds = %5
  tail call void @_serverAssert(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 65) #6, !dbg !267
  tail call void @_exit(i32 1) #7, !dbg !267
  unreachable, !dbg !267

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !268
  %13 = load i8*, i8** %12, align 8, !dbg !268, !tbaa !166
  %14 = tail call i8* @ziplistIndex(i8* %13, i32 0) #6, !dbg !270
  %15 = icmp eq i8* %14, null, !dbg !271
  br i1 %15, label %54, label %16, !dbg !273

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !277
  %18 = load i8, i8* %17, align 1, !dbg !277, !tbaa !182
  %19 = trunc i8 %18 to i3, !dbg !279
  switch i3 %19, label %41 [
    i3 0, label %20
    i3 1, label %23
    i3 2, label %27
    i3 3, label %32
    i3 -4, label %37
  ], !dbg !279

; <label>:20:                                     ; preds = %16
  %21 = lshr i8 %18, 3, !dbg !280
  %22 = zext i8 %21 to i64, !dbg !280
  br label %41, !dbg !281

; <label>:23:                                     ; preds = %16
  %24 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !282
  %25 = load i8, i8* %24, align 1, !dbg !283, !tbaa !182
  %26 = zext i8 %25 to i64, !dbg !282
  br label %41, !dbg !284

; <label>:27:                                     ; preds = %16
  %28 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !285
  %29 = bitcast i8* %28 to i16*, !dbg !286
  %30 = load i16, i16* %29, align 1, !dbg !286, !tbaa !195
  %31 = zext i16 %30 to i64, !dbg !285
  br label %41, !dbg !287

; <label>:32:                                     ; preds = %16
  %33 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !288
  %34 = bitcast i8* %33 to i32*, !dbg !289
  %35 = load i32, i32* %34, align 1, !dbg !289, !tbaa !200
  %36 = zext i32 %35 to i64, !dbg !288
  br label %41, !dbg !290

; <label>:37:                                     ; preds = %16
  %38 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !291
  %39 = bitcast i8* %38 to i64*, !dbg !292
  %40 = load i64, i64* %39, align 1, !dbg !292, !tbaa !204
  br label %41, !dbg !293

; <label>:41:                                     ; preds = %16, %20, %23, %27, %32, %37
  %42 = phi i64 [ %40, %37 ], [ %36, %32 ], [ %31, %27 ], [ %26, %23 ], [ %22, %20 ], [ 0, %16 ], !dbg !294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !295
  %43 = trunc i64 %42 to i32, !dbg !296
  %44 = tail call i8* @ziplistFind(i8* nonnull %14, i8* nonnull %1, i32 %43, i32 1) #6, !dbg !297
  %45 = icmp eq i8* %44, null, !dbg !298
  br i1 %45, label %54, label %46, !dbg !300

; <label>:46:                                     ; preds = %41
  %47 = tail call i8* @ziplistNext(i8* %13, i8* nonnull %44) #6, !dbg !301
  %48 = icmp eq i8* %47, null, !dbg !303
  br i1 %48, label %49, label %50, !dbg !303

; <label>:49:                                     ; preds = %46
  tail call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 74) #6, !dbg !303
  tail call void @_exit(i32 1) #7, !dbg !303
  unreachable, !dbg !303

; <label>:50:                                     ; preds = %46
  %51 = tail call i32 @ziplistGet(i8* nonnull %47, i8** %2, i32* %3, i64* %4) #6, !dbg !304
  %52 = icmp eq i32 %51, 0, !dbg !308
  br i1 %52, label %53, label %54, !dbg !308

; <label>:53:                                     ; preds = %50
  tail call void @_serverAssert(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 80) #6, !dbg !308
  tail call void @_exit(i32 1) #7, !dbg !308
  unreachable, !dbg !308

; <label>:54:                                     ; preds = %11, %41, %50
  %55 = phi i32 [ 0, %50 ], [ -1, %41 ], [ -1, %11 ], !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !310
  ret i32 %55, !dbg !310
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @ziplistIndex(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @ziplistFind(i8*, i8*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @ziplistNext(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @ziplistGet(i8*, i8**, i32*, i64*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @hashTypeGetFromHashTable(%struct.redisObject* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !311 {
  %3 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !320
  %4 = load i32, i32* %3, align 8, !dbg !320
  %5 = and i32 %4, 240, !dbg !320
  %6 = icmp eq i32 %5, 32, !dbg !320
  br i1 %6, label %8, label %7, !dbg !320

; <label>:7:                                      ; preds = %2
  tail call void @_serverAssert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 93) #6, !dbg !320
  tail call void @_exit(i32 1) #7, !dbg !320
  unreachable, !dbg !320

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !321
  %10 = bitcast i8** %9 to %struct.dict**, !dbg !321
  %11 = load %struct.dict*, %struct.dict** %10, align 8, !dbg !321, !tbaa !166
  %12 = tail call %struct.dictEntry* @dictFind(%struct.dict* %11, i8* %1) #6, !dbg !322
  %13 = icmp eq %struct.dictEntry* %12, null, !dbg !324
  br i1 %13, label %17, label %14, !dbg !326

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %12, i64 0, i32 1, i32 0, !dbg !327
  %16 = load i8*, i8** %15, align 8, !dbg !327, !tbaa !182
  br label %17, !dbg !328

; <label>:17:                                     ; preds = %8, %14
  %18 = phi i8* [ %16, %14 ], [ null, %8 ], !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  ret i8* %18, !dbg !330
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @hashTypeGetValue(%struct.redisObject* nocapture readonly, i8*, i8**, i32*, i64*) local_unnamed_addr #0 !dbg !331 {
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !347
  %7 = load i32, i32* %6, align 8, !dbg !347
  %8 = lshr i32 %7, 4, !dbg !347
  %9 = trunc i32 %8 to i4, !dbg !348
  switch i4 %9, label %56 [
    i4 5, label %10
    i4 2, label %13
  ], !dbg !348

; <label>:10:                                     ; preds = %5
  store i8* null, i8** %2, align 8, !dbg !349, !tbaa !161
  %11 = tail call i32 @hashTypeGetFromZiplist(%struct.redisObject* nonnull %0, i8* %1, i8** %2, i32* %3, i64* %4) #8, !dbg !351
  %12 = icmp eq i32 %11, 0, !dbg !353
  br i1 %12, label %58, label %57, !dbg !354

; <label>:13:                                     ; preds = %5
  %14 = and i32 %7, 240, !dbg !359
  %15 = icmp eq i32 %14, 32, !dbg !359
  br i1 %15, label %17, label %16, !dbg !359

; <label>:16:                                     ; preds = %13
  tail call void @_serverAssert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 93) #6, !dbg !359
  tail call void @_exit(i32 1) #7, !dbg !359
  unreachable, !dbg !359

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !360
  %19 = bitcast i8** %18 to %struct.dict**, !dbg !360
  %20 = load %struct.dict*, %struct.dict** %19, align 8, !dbg !360, !tbaa !166
  %21 = tail call %struct.dictEntry* @dictFind(%struct.dict* %20, i8* %1) #6, !dbg !361
  %22 = icmp eq %struct.dictEntry* %21, null, !dbg !363
  br i1 %22, label %23, label %24, !dbg !364

; <label>:23:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  br label %57, !dbg !367

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %21, i64 0, i32 1, i32 0, !dbg !368
  %26 = load i8*, i8** %25, align 8, !dbg !368, !tbaa !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  %27 = icmp eq i8* %26, null, !dbg !369
  br i1 %27, label %57, label %28, !dbg !367

; <label>:28:                                     ; preds = %24
  store i8* %26, i8** %2, align 8, !dbg !370, !tbaa !161
  %29 = getelementptr inbounds i8, i8* %26, i64 -1, !dbg !374
  %30 = load i8, i8* %29, align 1, !dbg !374, !tbaa !182
  %31 = trunc i8 %30 to i3, !dbg !376
  switch i3 %31, label %53 [
    i3 0, label %32
    i3 1, label %35
    i3 2, label %39
    i3 3, label %44
    i3 -4, label %49
  ], !dbg !376

; <label>:32:                                     ; preds = %28
  %33 = lshr i8 %30, 3, !dbg !377
  %34 = zext i8 %33 to i64, !dbg !377
  br label %53, !dbg !378

; <label>:35:                                     ; preds = %28
  %36 = getelementptr inbounds i8, i8* %26, i64 -3, !dbg !379
  %37 = load i8, i8* %36, align 1, !dbg !380, !tbaa !182
  %38 = zext i8 %37 to i64, !dbg !379
  br label %53, !dbg !381

; <label>:39:                                     ; preds = %28
  %40 = getelementptr inbounds i8, i8* %26, i64 -5, !dbg !382
  %41 = bitcast i8* %40 to i16*, !dbg !383
  %42 = load i16, i16* %41, align 1, !dbg !383, !tbaa !195
  %43 = zext i16 %42 to i64, !dbg !382
  br label %53, !dbg !384

; <label>:44:                                     ; preds = %28
  %45 = getelementptr inbounds i8, i8* %26, i64 -9, !dbg !385
  %46 = bitcast i8* %45 to i32*, !dbg !386
  %47 = load i32, i32* %46, align 1, !dbg !386, !tbaa !200
  %48 = zext i32 %47 to i64, !dbg !385
  br label %53, !dbg !387

; <label>:49:                                     ; preds = %28
  %50 = getelementptr inbounds i8, i8* %26, i64 -17, !dbg !388
  %51 = bitcast i8* %50 to i64*, !dbg !389
  %52 = load i64, i64* %51, align 1, !dbg !389, !tbaa !204
  br label %53, !dbg !390

; <label>:53:                                     ; preds = %28, %32, %35, %39, %44, %49
  %54 = phi i64 [ %52, %49 ], [ %48, %44 ], [ %43, %39 ], [ %38, %35 ], [ %34, %32 ], [ 0, %28 ], !dbg !391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  %55 = trunc i64 %54 to i32, !dbg !393
  store i32 %55, i32* %3, align 4, !dbg !394, !tbaa !200
  br label %58

; <label>:56:                                     ; preds = %5
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 122, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !395
  tail call void @_exit(i32 1) #7, !dbg !395
  unreachable, !dbg !395

; <label>:57:                                     ; preds = %23, %24, %10
  br label %58, !dbg !397

; <label>:58:                                     ; preds = %53, %10, %57
  %59 = phi i32 [ -1, %57 ], [ 0, %10 ], [ 0, %53 ], !dbg !398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !399
  ret i32 %59, !dbg !399
}

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @hashTypeGetValueObject(%struct.redisObject* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !400 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = bitcast i8** %3 to i8*, !dbg !411
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !411
  %7 = bitcast i32* %4 to i8*, !dbg !412
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #5, !dbg !412
  %8 = bitcast i64* %5 to i8*, !dbg !413
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !413
  %9 = call i32 @hashTypeGetValue(%struct.redisObject* %0, i8* %1, i8** nonnull %3, i32* nonnull %4, i64* nonnull %5) #8, !dbg !417
  %10 = icmp eq i32 %9, -1, !dbg !419
  br i1 %10, label %21, label %11, !dbg !420

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %3, align 8, !dbg !421, !tbaa !161
  %13 = icmp eq i8* %12, null, !dbg !421
  br i1 %13, label %18, label %14, !dbg !423

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %4, align 4, !dbg !424, !tbaa !200
  %16 = zext i32 %15 to i64, !dbg !424
  %17 = call %struct.redisObject* @createStringObject(i8* nonnull %12, i64 %16) #6, !dbg !425
  br label %21, !dbg !426

; <label>:18:                                     ; preds = %11
  %19 = load i64, i64* %5, align 8, !dbg !427, !tbaa !428
  %20 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %19) #6, !dbg !430
  br label %21, !dbg !431

; <label>:21:                                     ; preds = %2, %18, %14
  %22 = phi %struct.redisObject* [ %17, %14 ], [ %20, %18 ], [ null, %2 ], !dbg !432
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !433
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #5, !dbg !433
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  ret %struct.redisObject* %22, !dbg !433
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObjectFromLongLong(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @hashTypeGetValueLength(%struct.redisObject* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !434 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !456
  %7 = load i32, i32* %6, align 8, !dbg !456
  %8 = lshr i32 %7, 4, !dbg !456
  %9 = trunc i32 %8 to i4, !dbg !457
  switch i4 %9, label %71 [
    i4 5, label %10
    i4 2, label %29
  ], !dbg !457

; <label>:10:                                     ; preds = %2
  %11 = bitcast i8** %3 to i8*, !dbg !458
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #5, !dbg !458
  store i8* null, i8** %3, align 8, !dbg !459, !tbaa !161
  %12 = bitcast i32* %4 to i8*, !dbg !460
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5, !dbg !460
  store i32 -1, i32* %4, align 4, !dbg !461, !tbaa !200
  %13 = bitcast i64* %5 to i8*, !dbg !462
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #5, !dbg !462
  store i64 9223372036854775807, i64* %5, align 8, !dbg !463, !tbaa !428
  %14 = call i32 @hashTypeGetFromZiplist(%struct.redisObject* nonnull %0, i8* %1, i8** nonnull %3, i32* nonnull %4, i64* nonnull %5) #8, !dbg !464
  %15 = icmp eq i32 %14, 0, !dbg !466
  br i1 %15, label %16, label %27, !dbg !467

; <label>:16:                                     ; preds = %10
  %17 = load i8*, i8** %3, align 8, !dbg !468, !tbaa !161
  %18 = icmp eq i8* %17, null, !dbg !468
  br i1 %18, label %21, label %19, !dbg !468

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %4, align 4, !dbg !469, !tbaa !200
  br label %24, !dbg !468

; <label>:21:                                     ; preds = %16
  %22 = load i64, i64* %5, align 8, !dbg !470, !tbaa !428
  %23 = call i32 @sdigits10(i64 %22) #6, !dbg !471
  br label %24, !dbg !468

; <label>:24:                                     ; preds = %21, %19
  %25 = phi i32 [ %20, %19 ], [ %23, %21 ], !dbg !468
  %26 = zext i32 %25 to i64, !dbg !468
  br label %27, !dbg !472

; <label>:27:                                     ; preds = %24, %10
  %28 = phi i64 [ %26, %24 ], [ 0, %10 ], !dbg !473
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #5, !dbg !474
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5, !dbg !474
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5, !dbg !474
  br label %72, !dbg !475

; <label>:29:                                     ; preds = %2
  %30 = and i32 %7, 240, !dbg !480
  %31 = icmp eq i32 %30, 32, !dbg !480
  br i1 %31, label %33, label %32, !dbg !480

; <label>:32:                                     ; preds = %29
  tail call void @_serverAssert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 93) #6, !dbg !480
  tail call void @_exit(i32 1) #7, !dbg !480
  unreachable, !dbg !480

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !481
  %35 = bitcast i8** %34 to %struct.dict**, !dbg !481
  %36 = load %struct.dict*, %struct.dict** %35, align 8, !dbg !481, !tbaa !166
  %37 = tail call %struct.dictEntry* @dictFind(%struct.dict* %36, i8* %1) #6, !dbg !482
  %38 = icmp eq %struct.dictEntry* %37, null, !dbg !484
  br i1 %38, label %39, label %40, !dbg !485

; <label>:39:                                     ; preds = %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  br label %72, !dbg !488

; <label>:40:                                     ; preds = %33
  %41 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %37, i64 0, i32 1, i32 0, !dbg !489
  %42 = load i8*, i8** %41, align 8, !dbg !489, !tbaa !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  %43 = icmp eq i8* %42, null, !dbg !490
  br i1 %43, label %72, label %44, !dbg !488

; <label>:44:                                     ; preds = %40
  %45 = getelementptr inbounds i8, i8* %42, i64 -1, !dbg !493
  %46 = load i8, i8* %45, align 1, !dbg !493, !tbaa !182
  %47 = trunc i8 %46 to i3, !dbg !495
  switch i3 %47, label %69 [
    i3 0, label %48
    i3 1, label %51
    i3 2, label %55
    i3 3, label %60
    i3 -4, label %65
  ], !dbg !495

; <label>:48:                                     ; preds = %44
  %49 = lshr i8 %46, 3, !dbg !496
  %50 = zext i8 %49 to i64, !dbg !496
  br label %69, !dbg !497

; <label>:51:                                     ; preds = %44
  %52 = getelementptr inbounds i8, i8* %42, i64 -3, !dbg !498
  %53 = load i8, i8* %52, align 1, !dbg !499, !tbaa !182
  %54 = zext i8 %53 to i64, !dbg !498
  br label %69, !dbg !500

; <label>:55:                                     ; preds = %44
  %56 = getelementptr inbounds i8, i8* %42, i64 -5, !dbg !501
  %57 = bitcast i8* %56 to i16*, !dbg !502
  %58 = load i16, i16* %57, align 1, !dbg !502, !tbaa !195
  %59 = zext i16 %58 to i64, !dbg !501
  br label %69, !dbg !503

; <label>:60:                                     ; preds = %44
  %61 = getelementptr inbounds i8, i8* %42, i64 -9, !dbg !504
  %62 = bitcast i8* %61 to i32*, !dbg !505
  %63 = load i32, i32* %62, align 1, !dbg !505, !tbaa !200
  %64 = zext i32 %63 to i64, !dbg !504
  br label %69, !dbg !506

; <label>:65:                                     ; preds = %44
  %66 = getelementptr inbounds i8, i8* %42, i64 -17, !dbg !507
  %67 = bitcast i8* %66 to i64*, !dbg !508
  %68 = load i64, i64* %67, align 1, !dbg !508, !tbaa !204
  br label %69, !dbg !509

; <label>:69:                                     ; preds = %44, %48, %51, %55, %60, %65
  %70 = phi i64 [ %68, %65 ], [ %64, %60 ], [ %59, %55 ], [ %54, %51 ], [ %50, %48 ], [ 0, %44 ], !dbg !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !511
  br label %72, !dbg !512

; <label>:71:                                     ; preds = %2
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 159, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !513
  tail call void @_exit(i32 1) #7, !dbg !513
  unreachable, !dbg !513

; <label>:72:                                     ; preds = %39, %69, %40, %27
  %73 = phi i64 [ %28, %27 ], [ %70, %69 ], [ 0, %40 ], [ 0, %39 ], !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  ret i64 %73, !dbg !516
}

; Function Attrs: noredzone
declare dso_local i32 @sdigits10(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @hashTypeExists(%struct.redisObject* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !517 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !530
  %7 = load i32, i32* %6, align 8, !dbg !530
  %8 = lshr i32 %7, 4, !dbg !530
  %9 = trunc i32 %8 to i4, !dbg !531
  switch i4 %9, label %31 [
    i4 5, label %10
    i4 2, label %16
  ], !dbg !531

; <label>:10:                                     ; preds = %2
  %11 = bitcast i8** %3 to i8*, !dbg !532
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #5, !dbg !532
  store i8* null, i8** %3, align 8, !dbg !533, !tbaa !161
  %12 = bitcast i32* %4 to i8*, !dbg !534
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5, !dbg !534
  store i32 -1, i32* %4, align 4, !dbg !535, !tbaa !200
  %13 = bitcast i64* %5 to i8*, !dbg !536
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #5, !dbg !536
  store i64 9223372036854775807, i64* %5, align 8, !dbg !537, !tbaa !428
  %14 = call i32 @hashTypeGetFromZiplist(%struct.redisObject* nonnull %0, i8* %1, i8** nonnull %3, i32* nonnull %4, i64* nonnull %5) #8, !dbg !538
  %15 = icmp eq i32 %14, 0, !dbg !540
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #5, !dbg !541
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5, !dbg !541
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5, !dbg !541
  br i1 %15, label %33, label %32

; <label>:16:                                     ; preds = %2
  %17 = and i32 %7, 240, !dbg !548
  %18 = icmp eq i32 %17, 32, !dbg !548
  br i1 %18, label %20, label %19, !dbg !548

; <label>:19:                                     ; preds = %16
  tail call void @_serverAssert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 93) #6, !dbg !548
  tail call void @_exit(i32 1) #7, !dbg !548
  unreachable, !dbg !548

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !549
  %22 = bitcast i8** %21 to %struct.dict**, !dbg !549
  %23 = load %struct.dict*, %struct.dict** %22, align 8, !dbg !549, !tbaa !166
  %24 = tail call %struct.dictEntry* @dictFind(%struct.dict* %23, i8* %1) #6, !dbg !550
  %25 = icmp eq %struct.dictEntry* %24, null, !dbg !552
  br i1 %25, label %26, label %27, !dbg !553

; <label>:26:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  br label %32, !dbg !555

; <label>:27:                                     ; preds = %20
  %28 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %24, i64 0, i32 1, i32 0, !dbg !556
  %29 = load i8*, i8** %28, align 8, !dbg !556, !tbaa !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  %30 = icmp eq i8* %29, null, !dbg !557
  br i1 %30, label %32, label %33, !dbg !555

; <label>:31:                                     ; preds = %2
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 176, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !558
  tail call void @_exit(i32 1) #7, !dbg !558
  unreachable, !dbg !558

; <label>:32:                                     ; preds = %10, %26, %27
  br label %33, !dbg !560

; <label>:33:                                     ; preds = %10, %27, %32
  %34 = phi i32 [ 0, %32 ], [ 1, %10 ], [ 1, %27 ], !dbg !561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !562
  ret i32 %34, !dbg !562
}

; Function Attrs: noredzone nounwind
define dso_local i32 @hashTypeSet(%struct.redisObject*, i8*, i8*, i32) local_unnamed_addr #0 !dbg !563 {
  %5 = alloca i8*, align 8
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !589
  %7 = load i32, i32* %6, align 8, !dbg !589
  %8 = lshr i32 %7, 4, !dbg !589
  %9 = trunc i32 %8 to i4, !dbg !590
  switch i4 %9, label %201 [
    i4 5, label %10
    i4 2, label %168
  ], !dbg !590

; <label>:10:                                     ; preds = %4
  %11 = bitcast i8** %5 to i8*, !dbg !591
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #5, !dbg !591
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !592
  %13 = load i8*, i8** %12, align 8, !dbg !592, !tbaa !166
  %14 = tail call i8* @ziplistIndex(i8* %13, i32 0) #6, !dbg !594
  %15 = icmp eq i8* %14, null, !dbg !596
  %16 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !598
  br i1 %15, label %81, label %17, !dbg !602

; <label>:17:                                     ; preds = %10
  %18 = load i8, i8* %16, align 1, !dbg !606, !tbaa !182
  %19 = trunc i8 %18 to i3, !dbg !608
  switch i3 %19, label %41 [
    i3 0, label %20
    i3 1, label %23
    i3 2, label %27
    i3 3, label %32
    i3 -4, label %37
  ], !dbg !608

; <label>:20:                                     ; preds = %17
  %21 = lshr i8 %18, 3, !dbg !609
  %22 = zext i8 %21 to i64, !dbg !609
  br label %41, !dbg !610

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !611
  %25 = load i8, i8* %24, align 1, !dbg !612, !tbaa !182
  %26 = zext i8 %25 to i64, !dbg !611
  br label %41, !dbg !613

; <label>:27:                                     ; preds = %17
  %28 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !614
  %29 = bitcast i8* %28 to i16*, !dbg !615
  %30 = load i16, i16* %29, align 1, !dbg !615, !tbaa !195
  %31 = zext i16 %30 to i64, !dbg !614
  br label %41, !dbg !616

; <label>:32:                                     ; preds = %17
  %33 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !617
  %34 = bitcast i8* %33 to i32*, !dbg !618
  %35 = load i32, i32* %34, align 1, !dbg !618, !tbaa !200
  %36 = zext i32 %35 to i64, !dbg !617
  br label %41, !dbg !619

; <label>:37:                                     ; preds = %17
  %38 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !620
  %39 = bitcast i8* %38 to i64*, !dbg !621
  %40 = load i64, i64* %39, align 1, !dbg !621, !tbaa !204
  br label %41, !dbg !622

; <label>:41:                                     ; preds = %17, %20, %23, %27, %32, %37
  %42 = phi i64 [ %40, %37 ], [ %36, %32 ], [ %31, %27 ], [ %26, %23 ], [ %22, %20 ], [ 0, %17 ], !dbg !623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  %43 = trunc i64 %42 to i32, !dbg !625
  %44 = tail call i8* @ziplistFind(i8* nonnull %14, i8* nonnull %1, i32 %43, i32 1) #6, !dbg !626
  %45 = icmp eq i8* %44, null, !dbg !627
  br i1 %45, label %81, label %46, !dbg !629

; <label>:46:                                     ; preds = %41
  %47 = tail call i8* @ziplistNext(i8* %13, i8* nonnull %44) #6, !dbg !630
  store i8* %47, i8** %5, align 8, !dbg !633, !tbaa !161
  %48 = icmp eq i8* %47, null, !dbg !634
  br i1 %48, label %49, label %50, !dbg !634

; <label>:49:                                     ; preds = %46
  tail call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 215) #6, !dbg !634
  tail call void @_exit(i32 1) #7, !dbg !634
  unreachable, !dbg !634

; <label>:50:                                     ; preds = %46
  %51 = call i8* @ziplistDelete(i8* %13, i8** nonnull %5) #6, !dbg !635
  %52 = load i8*, i8** %5, align 8, !dbg !636, !tbaa !161
  %53 = getelementptr inbounds i8, i8* %2, i64 -1, !dbg !639
  %54 = load i8, i8* %53, align 1, !dbg !639, !tbaa !182
  %55 = trunc i8 %54 to i3, !dbg !641
  switch i3 %55, label %77 [
    i3 0, label %56
    i3 1, label %59
    i3 2, label %63
    i3 3, label %68
    i3 -4, label %73
  ], !dbg !641

; <label>:56:                                     ; preds = %50
  %57 = lshr i8 %54, 3, !dbg !642
  %58 = zext i8 %57 to i64, !dbg !642
  br label %77, !dbg !643

; <label>:59:                                     ; preds = %50
  %60 = getelementptr inbounds i8, i8* %2, i64 -3, !dbg !644
  %61 = load i8, i8* %60, align 1, !dbg !645, !tbaa !182
  %62 = zext i8 %61 to i64, !dbg !644
  br label %77, !dbg !646

; <label>:63:                                     ; preds = %50
  %64 = getelementptr inbounds i8, i8* %2, i64 -5, !dbg !647
  %65 = bitcast i8* %64 to i16*, !dbg !648
  %66 = load i16, i16* %65, align 1, !dbg !648, !tbaa !195
  %67 = zext i16 %66 to i64, !dbg !647
  br label %77, !dbg !649

; <label>:68:                                     ; preds = %50
  %69 = getelementptr inbounds i8, i8* %2, i64 -9, !dbg !650
  %70 = bitcast i8* %69 to i32*, !dbg !651
  %71 = load i32, i32* %70, align 1, !dbg !651, !tbaa !200
  %72 = zext i32 %71 to i64, !dbg !650
  br label %77, !dbg !652

; <label>:73:                                     ; preds = %50
  %74 = getelementptr inbounds i8, i8* %2, i64 -17, !dbg !653
  %75 = bitcast i8* %74 to i64*, !dbg !654
  %76 = load i64, i64* %75, align 1, !dbg !654, !tbaa !204
  br label %77, !dbg !655

; <label>:77:                                     ; preds = %73, %68, %63, %59, %56, %50
  %78 = phi i64 [ %76, %73 ], [ %72, %68 ], [ %67, %63 ], [ %62, %59 ], [ %58, %56 ], [ 0, %50 ], !dbg !656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  %79 = trunc i64 %78 to i32, !dbg !658
  %80 = call i8* @ziplistInsert(i8* %51, i8* %52, i8* nonnull %2, i32 %79) #6, !dbg !659
  br label %137, !dbg !660

; <label>:81:                                     ; preds = %10, %41
  %82 = load i8, i8* %16, align 1, !dbg !598, !tbaa !182
  %83 = trunc i8 %82 to i3, !dbg !663
  switch i3 %83, label %105 [
    i3 0, label %84
    i3 1, label %87
    i3 2, label %91
    i3 3, label %96
    i3 -4, label %101
  ], !dbg !663

; <label>:84:                                     ; preds = %81
  %85 = lshr i8 %82, 3, !dbg !664
  %86 = zext i8 %85 to i64, !dbg !664
  br label %105, !dbg !665

; <label>:87:                                     ; preds = %81
  %88 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !666
  %89 = load i8, i8* %88, align 1, !dbg !667, !tbaa !182
  %90 = zext i8 %89 to i64, !dbg !666
  br label %105, !dbg !668

; <label>:91:                                     ; preds = %81
  %92 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !669
  %93 = bitcast i8* %92 to i16*, !dbg !670
  %94 = load i16, i16* %93, align 1, !dbg !670, !tbaa !195
  %95 = zext i16 %94 to i64, !dbg !669
  br label %105, !dbg !671

; <label>:96:                                     ; preds = %81
  %97 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !672
  %98 = bitcast i8* %97 to i32*, !dbg !673
  %99 = load i32, i32* %98, align 1, !dbg !673, !tbaa !200
  %100 = zext i32 %99 to i64, !dbg !672
  br label %105, !dbg !674

; <label>:101:                                    ; preds = %81
  %102 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !675
  %103 = bitcast i8* %102 to i64*, !dbg !676
  %104 = load i64, i64* %103, align 1, !dbg !676, !tbaa !204
  br label %105, !dbg !677

; <label>:105:                                    ; preds = %81, %84, %87, %91, %96, %101
  %106 = phi i64 [ %104, %101 ], [ %100, %96 ], [ %95, %91 ], [ %90, %87 ], [ %86, %84 ], [ 0, %81 ], !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  %107 = trunc i64 %106 to i32, !dbg !680
  %108 = tail call i8* @ziplistPush(i8* %13, i8* nonnull %1, i32 %107, i32 1) #6, !dbg !681
  %109 = getelementptr inbounds i8, i8* %2, i64 -1, !dbg !684
  %110 = load i8, i8* %109, align 1, !dbg !684, !tbaa !182
  %111 = trunc i8 %110 to i3, !dbg !686
  switch i3 %111, label %133 [
    i3 0, label %112
    i3 1, label %115
    i3 2, label %119
    i3 3, label %124
    i3 -4, label %129
  ], !dbg !686

; <label>:112:                                    ; preds = %105
  %113 = lshr i8 %110, 3, !dbg !687
  %114 = zext i8 %113 to i64, !dbg !687
  br label %133, !dbg !688

; <label>:115:                                    ; preds = %105
  %116 = getelementptr inbounds i8, i8* %2, i64 -3, !dbg !689
  %117 = load i8, i8* %116, align 1, !dbg !690, !tbaa !182
  %118 = zext i8 %117 to i64, !dbg !689
  br label %133, !dbg !691

; <label>:119:                                    ; preds = %105
  %120 = getelementptr inbounds i8, i8* %2, i64 -5, !dbg !692
  %121 = bitcast i8* %120 to i16*, !dbg !693
  %122 = load i16, i16* %121, align 1, !dbg !693, !tbaa !195
  %123 = zext i16 %122 to i64, !dbg !692
  br label %133, !dbg !694

; <label>:124:                                    ; preds = %105
  %125 = getelementptr inbounds i8, i8* %2, i64 -9, !dbg !695
  %126 = bitcast i8* %125 to i32*, !dbg !696
  %127 = load i32, i32* %126, align 1, !dbg !696, !tbaa !200
  %128 = zext i32 %127 to i64, !dbg !695
  br label %133, !dbg !697

; <label>:129:                                    ; preds = %105
  %130 = getelementptr inbounds i8, i8* %2, i64 -17, !dbg !698
  %131 = bitcast i8* %130 to i64*, !dbg !699
  %132 = load i64, i64* %131, align 1, !dbg !699, !tbaa !204
  br label %133, !dbg !700

; <label>:133:                                    ; preds = %105, %112, %115, %119, %124, %129
  %134 = phi i64 [ %132, %129 ], [ %128, %124 ], [ %123, %119 ], [ %118, %115 ], [ %114, %112 ], [ 0, %105 ], !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  %135 = trunc i64 %134 to i32, !dbg !703
  %136 = tail call i8* @ziplistPush(i8* %108, i8* nonnull %2, i32 %135, i32 1) #6, !dbg !704
  br label %137, !dbg !705

; <label>:137:                                    ; preds = %77, %133
  %138 = phi i32 [ 1, %77 ], [ 0, %133 ]
  %139 = phi i8* [ %80, %77 ], [ %136, %133 ], !dbg !706
  store i8* %139, i8** %12, align 8, !dbg !707, !tbaa !166
  %140 = load i32, i32* %6, align 8, !dbg !720
  %141 = lshr i32 %140, 4, !dbg !720
  %142 = trunc i32 %141 to i4, !dbg !722
  switch i4 %142, label %155 [
    i4 5, label %143
    i4 2, label %147
  ], !dbg !722

; <label>:143:                                    ; preds = %137
  %144 = call i32 @ziplistLen(i8* %139) #6, !dbg !723
  %145 = lshr i32 %144, 1, !dbg !725
  %146 = zext i32 %145 to i64, !dbg !723
  br label %156, !dbg !726

; <label>:147:                                    ; preds = %137
  %148 = getelementptr inbounds i8, i8* %139, i64 40, !dbg !727
  %149 = bitcast i8* %148 to i64*, !dbg !727
  %150 = load i64, i64* %149, align 8, !dbg !727, !tbaa !730
  %151 = getelementptr inbounds i8, i8* %139, i64 72, !dbg !727
  %152 = bitcast i8* %151 to i64*, !dbg !727
  %153 = load i64, i64* %152, align 8, !dbg !727, !tbaa !730
  %154 = add i64 %153, %150, !dbg !727
  br label %156

; <label>:155:                                    ; preds = %137
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 319, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !732
  call void @_exit(i32 1) #7, !dbg !732
  unreachable, !dbg !732

; <label>:156:                                    ; preds = %143, %147
  %157 = phi i64 [ %146, %143 ], [ %154, %147 ], !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  %158 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 241), align 8, !dbg !736, !tbaa !737
  %159 = icmp ugt i64 %157, %158, !dbg !743
  br i1 %159, label %160, label %167, !dbg !744

; <label>:160:                                    ; preds = %156
  %161 = load i32, i32* %6, align 8, !dbg !748
  %162 = lshr i32 %161, 4, !dbg !748
  %163 = trunc i32 %162 to i4, !dbg !749
  switch i4 %163, label %165 [
    i4 5, label %166
    i4 2, label %164
  ], !dbg !749

; <label>:164:                                    ; preds = %160
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 504, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !750
  call void @_exit(i32 1) #7, !dbg !750
  unreachable, !dbg !750

; <label>:165:                                    ; preds = %160
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 506, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !751
  call void @_exit(i32 1) #7, !dbg !751
  unreachable, !dbg !751

; <label>:166:                                    ; preds = %160
  call void @hashTypeConvertZiplist(%struct.redisObject* nonnull %0, i32 2) #6, !dbg !752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  br label %167, !dbg !754

; <label>:167:                                    ; preds = %166, %156
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5, !dbg !755
  br label %202, !dbg !756

; <label>:168:                                    ; preds = %4
  %169 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !757
  %170 = bitcast i8** %169 to %struct.dict**, !dbg !757
  %171 = load %struct.dict*, %struct.dict** %170, align 8, !dbg !757, !tbaa !166
  %172 = tail call %struct.dictEntry* @dictFind(%struct.dict* %171, i8* %1) #6, !dbg !758
  %173 = icmp eq %struct.dictEntry* %172, null, !dbg !760
  br i1 %173, label %184, label %174, !dbg !761

; <label>:174:                                    ; preds = %168
  %175 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %172, i64 0, i32 1, i32 0, !dbg !762
  %176 = load i8*, i8** %175, align 8, !dbg !762, !tbaa !182
  tail call void @sdsfree(i8* %176) #6, !dbg !764
  %177 = and i32 %3, 2, !dbg !765
  %178 = icmp eq i32 %177, 0, !dbg !765
  br i1 %178, label %179, label %181, !dbg !767

; <label>:179:                                    ; preds = %174
  %180 = tail call i8* @sdsdup(i8* %2) #6, !dbg !768
  br label %181

; <label>:181:                                    ; preds = %174, %179
  %182 = phi i8* [ %180, %179 ], [ %2, %174 ]
  %183 = phi i8* [ %2, %179 ], [ null, %174 ]
  store i8* %182, i8** %175, align 8, !dbg !770, !tbaa !182
  br label %202, !dbg !772

; <label>:184:                                    ; preds = %168
  %185 = and i32 %3, 1, !dbg !773
  %186 = icmp eq i32 %185, 0, !dbg !773
  br i1 %186, label %187, label %189, !dbg !775

; <label>:187:                                    ; preds = %184
  %188 = tail call i8* @sdsdup(i8* %1) #6, !dbg !776
  br label %189

; <label>:189:                                    ; preds = %184, %187
  %190 = phi i8* [ %1, %187 ], [ null, %184 ]
  %191 = phi i8* [ %188, %187 ], [ %1, %184 ], !dbg !779
  %192 = and i32 %3, 2, !dbg !780
  %193 = icmp eq i32 %192, 0, !dbg !780
  br i1 %193, label %194, label %196, !dbg !782

; <label>:194:                                    ; preds = %189
  %195 = tail call i8* @sdsdup(i8* %2) #6, !dbg !783
  br label %196

; <label>:196:                                    ; preds = %189, %194
  %197 = phi i8* [ %2, %194 ], [ null, %189 ]
  %198 = phi i8* [ %195, %194 ], [ %2, %189 ], !dbg !786
  %199 = load %struct.dict*, %struct.dict** %170, align 8, !dbg !787, !tbaa !166
  %200 = tail call i32 @dictAdd(%struct.dict* %199, i8* %191, i8* %198) #6, !dbg !788
  br label %202

; <label>:201:                                    ; preds = %4
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 267, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !789
  tail call void @_exit(i32 1) #7, !dbg !789
  unreachable, !dbg !789

; <label>:202:                                    ; preds = %181, %196, %167
  %203 = phi i8* [ %2, %167 ], [ %183, %181 ], [ %197, %196 ]
  %204 = phi i32 [ %138, %167 ], [ 1, %181 ], [ 0, %196 ], !dbg !791
  %205 = phi i8* [ %1, %167 ], [ %1, %181 ], [ %190, %196 ]
  %206 = and i32 %3, 1, !dbg !792
  %207 = icmp ne i32 %206, 0, !dbg !792
  %208 = icmp ne i8* %205, null, !dbg !794
  %209 = and i1 %207, %208, !dbg !795
  br i1 %209, label %210, label %211, !dbg !795

; <label>:210:                                    ; preds = %202
  call void @sdsfree(i8* nonnull %205) #6, !dbg !796
  br label %211, !dbg !796

; <label>:211:                                    ; preds = %210, %202
  %212 = and i32 %3, 2, !dbg !797
  %213 = icmp ne i32 %212, 0, !dbg !797
  %214 = icmp ne i8* %203, null, !dbg !799
  %215 = and i1 %213, %214, !dbg !800
  br i1 %215, label %216, label %217, !dbg !800

; <label>:216:                                    ; preds = %211
  call void @sdsfree(i8* nonnull %203) #6, !dbg !801
  br label %217, !dbg !801

; <label>:217:                                    ; preds = %216, %211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !802
  ret i32 %204, !dbg !802
}

; Function Attrs: noredzone
declare dso_local i8* @ziplistDelete(i8*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @ziplistInsert(i8*, i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @ziplistPush(i8*, i8*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @hashTypeLength(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !709 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !805
  %3 = load i32, i32* %2, align 8, !dbg !805
  %4 = lshr i32 %3, 4, !dbg !805
  %5 = trunc i32 %4 to i4, !dbg !806
  switch i4 %5, label %21 [
    i4 5, label %6
    i4 2, label %12
  ], !dbg !806

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !807
  %8 = load i8*, i8** %7, align 8, !dbg !807, !tbaa !166
  %9 = tail call i32 @ziplistLen(i8* %8) #6, !dbg !808
  %10 = lshr i32 %9, 1, !dbg !809
  %11 = zext i32 %10 to i64, !dbg !808
  br label %22, !dbg !810

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !811
  %14 = bitcast i8** %13 to %struct.dict**, !dbg !811
  %15 = load %struct.dict*, %struct.dict** %14, align 8, !dbg !811, !tbaa !166
  %16 = getelementptr inbounds %struct.dict, %struct.dict* %15, i64 0, i32 2, i64 0, i32 3, !dbg !811
  %17 = load i64, i64* %16, align 8, !dbg !811, !tbaa !730
  %18 = getelementptr inbounds %struct.dict, %struct.dict* %15, i64 0, i32 2, i64 1, i32 3, !dbg !811
  %19 = load i64, i64* %18, align 8, !dbg !811, !tbaa !730
  %20 = add i64 %19, %17, !dbg !811
  br label %22

; <label>:21:                                     ; preds = %1
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 319, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !812
  tail call void @_exit(i32 1) #7, !dbg !812
  unreachable, !dbg !812

; <label>:22:                                     ; preds = %12, %6
  %23 = phi i64 [ %11, %6 ], [ %20, %12 ], !dbg !813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !814
  ret i64 %23, !dbg !814
}

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsdup(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @dictAdd(%struct.dict*, i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @hashTypeDelete(%struct.redisObject* nocapture, i8*) local_unnamed_addr #0 !dbg !815 {
  %3 = alloca i8*, align 8
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !827
  %5 = load i32, i32* %4, align 8, !dbg !827
  %6 = lshr i32 %5, 4, !dbg !827
  %7 = trunc i32 %6 to i4, !dbg !828
  switch i4 %7, label %62 [
    i4 5, label %8
    i4 2, label %49
  ], !dbg !828

; <label>:8:                                      ; preds = %2
  %9 = bitcast i8** %3 to i8*, !dbg !829
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #5, !dbg !829
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !830
  %11 = load i8*, i8** %10, align 8, !dbg !830, !tbaa !166
  %12 = tail call i8* @ziplistIndex(i8* %11, i32 0) #6, !dbg !832
  store i8* %12, i8** %3, align 8, !dbg !834, !tbaa !161
  %13 = icmp eq i8* %12, null, !dbg !835
  br i1 %13, label %47, label %14, !dbg !837

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !841
  %16 = load i8, i8* %15, align 1, !dbg !841, !tbaa !182
  %17 = trunc i8 %16 to i3, !dbg !843
  switch i3 %17, label %39 [
    i3 0, label %18
    i3 1, label %21
    i3 2, label %25
    i3 3, label %30
    i3 -4, label %35
  ], !dbg !843

; <label>:18:                                     ; preds = %14
  %19 = lshr i8 %16, 3, !dbg !844
  %20 = zext i8 %19 to i64, !dbg !844
  br label %39, !dbg !845

; <label>:21:                                     ; preds = %14
  %22 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !846
  %23 = load i8, i8* %22, align 1, !dbg !847, !tbaa !182
  %24 = zext i8 %23 to i64, !dbg !846
  br label %39, !dbg !848

; <label>:25:                                     ; preds = %14
  %26 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !849
  %27 = bitcast i8* %26 to i16*, !dbg !850
  %28 = load i16, i16* %27, align 1, !dbg !850, !tbaa !195
  %29 = zext i16 %28 to i64, !dbg !849
  br label %39, !dbg !851

; <label>:30:                                     ; preds = %14
  %31 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !852
  %32 = bitcast i8* %31 to i32*, !dbg !853
  %33 = load i32, i32* %32, align 1, !dbg !853, !tbaa !200
  %34 = zext i32 %33 to i64, !dbg !852
  br label %39, !dbg !854

; <label>:35:                                     ; preds = %14
  %36 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !855
  %37 = bitcast i8* %36 to i64*, !dbg !856
  %38 = load i64, i64* %37, align 1, !dbg !856, !tbaa !204
  br label %39, !dbg !857

; <label>:39:                                     ; preds = %14, %18, %21, %25, %30, %35
  %40 = phi i64 [ %38, %35 ], [ %34, %30 ], [ %29, %25 ], [ %24, %21 ], [ %20, %18 ], [ 0, %14 ], !dbg !858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !859
  %41 = trunc i64 %40 to i32, !dbg !860
  %42 = tail call i8* @ziplistFind(i8* nonnull %12, i8* nonnull %1, i32 %41, i32 1) #6, !dbg !861
  store i8* %42, i8** %3, align 8, !dbg !862, !tbaa !161
  %43 = icmp eq i8* %42, null, !dbg !863
  br i1 %43, label %47, label %44, !dbg !865

; <label>:44:                                     ; preds = %39
  %45 = call i8* @ziplistDelete(i8* %11, i8** nonnull %3) #6, !dbg !866
  %46 = call i8* @ziplistDelete(i8* %45, i8** nonnull %3) #6, !dbg !868
  store i8* %46, i8** %10, align 8, !dbg !869, !tbaa !166
  br label %47, !dbg !870

; <label>:47:                                     ; preds = %39, %8, %44
  %48 = phi i32 [ 1, %44 ], [ 0, %39 ], [ 0, %8 ], !dbg !871
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #5, !dbg !872
  br label %63, !dbg !873

; <label>:49:                                     ; preds = %2
  %50 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !874
  %51 = bitcast i8** %50 to %struct.dict**, !dbg !874
  %52 = load %struct.dict*, %struct.dict** %51, align 8, !dbg !874, !tbaa !166
  %53 = tail call i32 @dictDelete(%struct.dict* %52, i8* %1) #6, !dbg !878
  %54 = icmp eq i32 %53, 0, !dbg !879
  br i1 %54, label %55, label %63, !dbg !880

; <label>:55:                                     ; preds = %49
  %56 = load %struct.dict*, %struct.dict** %51, align 8, !dbg !881, !tbaa !166
  %57 = tail call i32 @htNeedsResize(%struct.dict* %56) #6, !dbg !884
  %58 = icmp eq i32 %57, 0, !dbg !884
  br i1 %58, label %63, label %59, !dbg !885

; <label>:59:                                     ; preds = %55
  %60 = load %struct.dict*, %struct.dict** %51, align 8, !dbg !886, !tbaa !166
  %61 = tail call i32 @dictResize(%struct.dict* %60) #6, !dbg !887
  br label %63, !dbg !887

; <label>:62:                                     ; preds = %2
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 305, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !888
  tail call void @_exit(i32 1) #7, !dbg !888
  unreachable, !dbg !888

; <label>:63:                                     ; preds = %55, %59, %49, %47
  %64 = phi i32 [ %48, %47 ], [ 1, %59 ], [ 1, %55 ], [ 0, %49 ], !dbg !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  ret i32 %64, !dbg !890
}

; Function Attrs: noredzone
declare dso_local i32 @dictDelete(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @htNeedsResize(%struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @dictResize(%struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @ziplistLen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.hashTypeIterator* @hashTypeInitIterator(%struct.redisObject*) local_unnamed_addr #0 !dbg !891 {
  %2 = tail call i8* @zmalloc(i64 48) #6, !dbg !919
  %3 = bitcast i8* %2 to %struct.hashTypeIterator*, !dbg !919
  %4 = bitcast i8* %2 to %struct.redisObject**, !dbg !921
  store %struct.redisObject* %0, %struct.redisObject** %4, align 8, !dbg !922, !tbaa !923
  %5 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !925
  %6 = load i32, i32* %5, align 8, !dbg !925
  %7 = lshr i32 %6, 4, !dbg !925
  %8 = and i32 %7, 15, !dbg !925
  %9 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !926
  %10 = bitcast i8* %9 to i32*, !dbg !926
  store i32 %8, i32* %10, align 8, !dbg !927, !tbaa !928
  %11 = trunc i32 %7 to i4, !dbg !929
  switch i4 %11, label %22 [
    i4 5, label %12
    i4 2, label %15
  ], !dbg !929

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !930
  %14 = bitcast i8* %13 to <2 x i8*>*, !dbg !933
  store <2 x i8*> zeroinitializer, <2 x i8*>* %14, align 8, !dbg !933, !tbaa !161
  br label %23, !dbg !934

; <label>:15:                                     ; preds = %1
  %16 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !935
  %17 = bitcast i8** %16 to %struct.dict**, !dbg !935
  %18 = load %struct.dict*, %struct.dict** %17, align 8, !dbg !935, !tbaa !166
  %19 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %18) #6, !dbg !938
  %20 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !939
  %21 = bitcast i8* %20 to %struct.dictIterator**, !dbg !939
  store %struct.dictIterator* %19, %struct.dictIterator** %21, align 8, !dbg !940, !tbaa !941
  br label %23

; <label>:22:                                     ; preds = %1
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 335, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !942
  tail call void @_exit(i32 1) #7, !dbg !942
  unreachable, !dbg !942

; <label>:23:                                     ; preds = %15, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !944
  ret %struct.hashTypeIterator* %3, !dbg !944
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.dictIterator* @dictGetIterator(%struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hashTypeReleaseIterator(%struct.hashTypeIterator*) local_unnamed_addr #0 !dbg !945 {
  %2 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 1, !dbg !951
  %3 = load i32, i32* %2, align 8, !dbg !951, !tbaa !928
  %4 = icmp eq i32 %3, 2, !dbg !953
  br i1 %4, label %5, label %8, !dbg !954

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 4, !dbg !955
  %7 = load %struct.dictIterator*, %struct.dictIterator** %6, align 8, !dbg !955, !tbaa !941
  tail call void @dictReleaseIterator(%struct.dictIterator* %7) #6, !dbg !956
  br label %8, !dbg !956

; <label>:8:                                      ; preds = %5, %1
  %9 = bitcast %struct.hashTypeIterator* %0 to i8*, !dbg !957
  tail call void @zfree(i8* %9) #6, !dbg !958
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  ret void, !dbg !959
}

; Function Attrs: noredzone
declare dso_local void @dictReleaseIterator(%struct.dictIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @hashTypeNext(%struct.hashTypeIterator* nocapture) local_unnamed_addr #0 !dbg !960 {
  %2 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 1, !dbg !971
  %3 = load i32, i32* %2, align 8, !dbg !971, !tbaa !928
  switch i32 %3, label %37 [
    i32 5, label %4
    i32 2, label %31
  ], !dbg !972

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 0, !dbg !973
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !973, !tbaa !923
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %6, i64 0, i32 2, !dbg !974
  %8 = load i8*, i8** %7, align 8, !dbg !974, !tbaa !166
  %9 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 2, !dbg !976
  %10 = load i8*, i8** %9, align 8, !dbg !976, !tbaa !977
  %11 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 3, !dbg !979
  %12 = load i8*, i8** %11, align 8, !dbg !979, !tbaa !980
  %13 = icmp eq i8* %10, null, !dbg !982
  %14 = icmp eq i8* %12, null, !dbg !984
  br i1 %13, label %15, label %19, !dbg !986

; <label>:15:                                     ; preds = %4
  br i1 %14, label %17, label %16, !dbg !987

; <label>:16:                                     ; preds = %15
  tail call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 359) #6, !dbg !987
  tail call void @_exit(i32 1) #7, !dbg !987
  unreachable, !dbg !987

; <label>:17:                                     ; preds = %15
  %18 = tail call i8* @ziplistIndex(i8* %8, i32 0) #6, !dbg !989
  br label %23, !dbg !990

; <label>:19:                                     ; preds = %4
  br i1 %14, label %20, label %21, !dbg !991

; <label>:20:                                     ; preds = %19
  tail call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 363) #6, !dbg !991
  tail call void @_exit(i32 1) #7, !dbg !991
  unreachable, !dbg !991

; <label>:21:                                     ; preds = %19
  %22 = tail call i8* @ziplistNext(i8* %8, i8* nonnull %12) #6, !dbg !992
  br label %23

; <label>:23:                                     ; preds = %21, %17
  %24 = phi i8* [ %18, %17 ], [ %22, %21 ], !dbg !984
  %25 = icmp eq i8* %24, null, !dbg !993
  br i1 %25, label %39, label %26, !dbg !995

; <label>:26:                                     ; preds = %23
  %27 = tail call i8* @ziplistNext(i8* %8, i8* nonnull %24) #6, !dbg !996
  %28 = icmp eq i8* %27, null, !dbg !997
  br i1 %28, label %29, label %30, !dbg !997

; <label>:29:                                     ; preds = %26
  tail call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 370) #6, !dbg !997
  tail call void @_exit(i32 1) #7, !dbg !997
  unreachable, !dbg !997

; <label>:30:                                     ; preds = %26
  store i8* %24, i8** %9, align 8, !dbg !998, !tbaa !977
  store i8* %27, i8** %11, align 8, !dbg !999, !tbaa !980
  br label %38

; <label>:31:                                     ; preds = %1
  %32 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 4, !dbg !1000
  %33 = load %struct.dictIterator*, %struct.dictIterator** %32, align 8, !dbg !1000, !tbaa !941
  %34 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %33) #6, !dbg !1004
  %35 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 5, !dbg !1005
  store %struct.dictEntry* %34, %struct.dictEntry** %35, align 8, !dbg !1006, !tbaa !1007
  %36 = icmp eq %struct.dictEntry* %34, null, !dbg !1008
  br i1 %36, label %39, label %38, !dbg !1009

; <label>:37:                                     ; preds = %1
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 378, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1010
  tail call void @_exit(i32 1) #7, !dbg !1010
  unreachable, !dbg !1010

; <label>:38:                                     ; preds = %30, %31
  br label %39, !dbg !1012

; <label>:39:                                     ; preds = %31, %23, %38
  %40 = phi i32 [ 0, %38 ], [ -1, %23 ], [ -1, %31 ], !dbg !1013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1014
  ret i32 %40, !dbg !1014
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictNext(%struct.dictIterator*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hashTypeCurrentFromZiplist(%struct.hashTypeIterator* nocapture readonly, i32, i8**, i32*, i64*) local_unnamed_addr #0 !dbg !1015 {
  %6 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 1, !dbg !1030
  %7 = load i32, i32* %6, align 8, !dbg !1030, !tbaa !928
  %8 = icmp eq i32 %7, 5, !dbg !1030
  br i1 %8, label %10, label %9, !dbg !1030

; <label>:9:                                      ; preds = %5
  tail call void @_serverAssert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 392) #6, !dbg !1030
  tail call void @_exit(i32 1) #7, !dbg !1030
  unreachable, !dbg !1030

; <label>:10:                                     ; preds = %5
  %11 = and i32 %1, 1, !dbg !1031
  %12 = icmp eq i32 %11, 0, !dbg !1031
  br i1 %12, label %19, label %13, !dbg !1033

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 2, !dbg !1034
  %15 = load i8*, i8** %14, align 8, !dbg !1034, !tbaa !977
  %16 = tail call i32 @ziplistGet(i8* %15, i8** %2, i32* %3, i64* %4) #6, !dbg !1036
  %17 = icmp eq i32 %16, 0, !dbg !1038
  br i1 %17, label %18, label %25, !dbg !1038

; <label>:18:                                     ; preds = %13
  tail call void @_serverAssert(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 396) #6, !dbg !1038
  tail call void @_exit(i32 1) #7, !dbg !1038
  unreachable, !dbg !1038

; <label>:19:                                     ; preds = %10
  %20 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 3, !dbg !1039
  %21 = load i8*, i8** %20, align 8, !dbg !1039, !tbaa !980
  %22 = tail call i32 @ziplistGet(i8* %21, i8** %2, i32* %3, i64* %4) #6, !dbg !1041
  %23 = icmp eq i32 %22, 0, !dbg !1042
  br i1 %23, label %24, label %25, !dbg !1042

; <label>:24:                                     ; preds = %19
  tail call void @_serverAssert(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 399) #6, !dbg !1042
  tail call void @_exit(i32 1) #7, !dbg !1042
  unreachable, !dbg !1042

; <label>:25:                                     ; preds = %13, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1043
  ret void, !dbg !1043
}

; Function Attrs: noredzone nounwind
define dso_local i8* @hashTypeCurrentFromHashTable(%struct.hashTypeIterator* nocapture readonly, i32) local_unnamed_addr #0 !dbg !1044 {
  %3 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 1, !dbg !1052
  %4 = load i32, i32* %3, align 8, !dbg !1052, !tbaa !928
  %5 = icmp eq i32 %4, 2, !dbg !1052
  br i1 %5, label %7, label %6, !dbg !1052

; <label>:6:                                      ; preds = %2
  tail call void @_serverAssert(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 407) #6, !dbg !1052
  tail call void @_exit(i32 1) #7, !dbg !1052
  unreachable, !dbg !1052

; <label>:7:                                      ; preds = %2
  %8 = and i32 %1, 1, !dbg !1053
  %9 = icmp eq i32 %8, 0, !dbg !1053
  %10 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 5, !dbg !1055
  %11 = load %struct.dictEntry*, %struct.dictEntry** %10, align 8, !dbg !1055, !tbaa !1007
  %12 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %11, i64 0, i32 0, !dbg !1057
  %13 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %11, i64 0, i32 1, i32 0, !dbg !1059
  %14 = select i1 %9, i8** %13, i8** %12, !dbg !1060
  %15 = load i8*, i8** %14, align 8, !dbg !1055, !tbaa !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1061
  ret i8* %15, !dbg !1061
}

; Function Attrs: noredzone nounwind
define dso_local void @hashTypeCurrentObject(%struct.hashTypeIterator* nocapture readonly, i32, i8**, i32*, i64*) local_unnamed_addr #0 !dbg !1062 {
  %6 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 1, !dbg !1078
  %7 = load i32, i32* %6, align 8, !dbg !1078, !tbaa !928
  switch i32 %7, label %45 [
    i32 5, label %8
    i32 2, label %9
  ], !dbg !1079

; <label>:8:                                      ; preds = %5
  store i8* null, i8** %2, align 8, !dbg !1080, !tbaa !161
  tail call void @hashTypeCurrentFromZiplist(%struct.hashTypeIterator* nonnull %0, i32 %1, i8** %2, i32* %3, i64* %4) #8, !dbg !1082
  br label %46, !dbg !1083

; <label>:9:                                      ; preds = %5
  %10 = and i32 %1, 1, !dbg !1087
  %11 = icmp eq i32 %10, 0, !dbg !1087
  %12 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 5, !dbg !1088
  %13 = load %struct.dictEntry*, %struct.dictEntry** %12, align 8, !dbg !1088, !tbaa !1007
  %14 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %13, i64 0, i32 0, !dbg !1089
  %15 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %13, i64 0, i32 1, i32 0, !dbg !1090
  %16 = select i1 %11, i8** %15, i8** %14, !dbg !1091
  %17 = load i8*, i8** %16, align 8, !dbg !1088, !tbaa !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1092
  store i8* %17, i8** %2, align 8, !dbg !1094, !tbaa !161
  %18 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !1097
  %19 = load i8, i8* %18, align 1, !dbg !1097, !tbaa !182
  %20 = trunc i8 %19 to i3, !dbg !1099
  switch i3 %20, label %42 [
    i3 0, label %21
    i3 1, label %24
    i3 2, label %28
    i3 3, label %33
    i3 -4, label %38
  ], !dbg !1099

; <label>:21:                                     ; preds = %9
  %22 = lshr i8 %19, 3, !dbg !1100
  %23 = zext i8 %22 to i64, !dbg !1100
  br label %42, !dbg !1101

; <label>:24:                                     ; preds = %9
  %25 = getelementptr inbounds i8, i8* %17, i64 -3, !dbg !1102
  %26 = load i8, i8* %25, align 1, !dbg !1103, !tbaa !182
  %27 = zext i8 %26 to i64, !dbg !1102
  br label %42, !dbg !1104

; <label>:28:                                     ; preds = %9
  %29 = getelementptr inbounds i8, i8* %17, i64 -5, !dbg !1105
  %30 = bitcast i8* %29 to i16*, !dbg !1106
  %31 = load i16, i16* %30, align 1, !dbg !1106, !tbaa !195
  %32 = zext i16 %31 to i64, !dbg !1105
  br label %42, !dbg !1107

; <label>:33:                                     ; preds = %9
  %34 = getelementptr inbounds i8, i8* %17, i64 -9, !dbg !1108
  %35 = bitcast i8* %34 to i32*, !dbg !1109
  %36 = load i32, i32* %35, align 1, !dbg !1109, !tbaa !200
  %37 = zext i32 %36 to i64, !dbg !1108
  br label %42, !dbg !1110

; <label>:38:                                     ; preds = %9
  %39 = getelementptr inbounds i8, i8* %17, i64 -17, !dbg !1111
  %40 = bitcast i8* %39 to i64*, !dbg !1112
  %41 = load i64, i64* %40, align 1, !dbg !1112, !tbaa !204
  br label %42, !dbg !1113

; <label>:42:                                     ; preds = %9, %21, %24, %28, %33, %38
  %43 = phi i64 [ %41, %38 ], [ %37, %33 ], [ %32, %28 ], [ %27, %24 ], [ %23, %21 ], [ 0, %9 ], !dbg !1114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1115
  %44 = trunc i64 %43 to i32, !dbg !1116
  store i32 %44, i32* %3, align 4, !dbg !1117, !tbaa !200
  br label %46

; <label>:45:                                     ; preds = %5
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 435, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1118
  tail call void @_exit(i32 1) #7, !dbg !1118
  unreachable, !dbg !1118

; <label>:46:                                     ; preds = %42, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1120
  ret void, !dbg !1120
}

; Function Attrs: noredzone nounwind
define dso_local i8* @hashTypeCurrentObjectNewSds(%struct.hashTypeIterator* nocapture readonly, i32) local_unnamed_addr #0 !dbg !1121 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = bitcast i8** %3 to i8*, !dbg !1130
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1130
  %7 = bitcast i32* %4 to i8*, !dbg !1131
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #5, !dbg !1131
  %8 = bitcast i64* %5 to i8*, !dbg !1132
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !1132
  call void @hashTypeCurrentObject(%struct.hashTypeIterator* %0, i32 %1, i8** nonnull %3, i32* nonnull %4, i64* nonnull %5) #8, !dbg !1136
  %9 = load i8*, i8** %3, align 8, !dbg !1137, !tbaa !161
  %10 = icmp eq i8* %9, null, !dbg !1137
  br i1 %10, label %15, label %11, !dbg !1139

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %4, align 4, !dbg !1140, !tbaa !200
  %13 = zext i32 %12 to i64, !dbg !1140
  %14 = call i8* @sdsnewlen(i8* nonnull %9, i64 %13) #6, !dbg !1141
  br label %18, !dbg !1142

; <label>:15:                                     ; preds = %2
  %16 = load i64, i64* %5, align 8, !dbg !1143, !tbaa !428
  %17 = call i8* @sdsfromlonglong(i64 %16) #6, !dbg !1144
  br label %18, !dbg !1145

; <label>:18:                                     ; preds = %15, %11
  %19 = phi i8* [ %14, %11 ], [ %17, %15 ], !dbg !1146
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !1147
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #5, !dbg !1147
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1147
  ret i8* %19, !dbg !1147
}

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsfromlonglong(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @hashTypeLookupWriteOrCreate(%struct.client*, %struct.redisObject*) local_unnamed_addr #0 !dbg !1148 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1320
  %4 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !1320, !tbaa !1321
  %5 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %4, %struct.redisObject* %1) #6, !dbg !1325
  %6 = icmp eq %struct.redisObject* %5, null, !dbg !1327
  br i1 %6, label %7, label %10, !dbg !1329

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.redisObject* @createHashObject() #6, !dbg !1330
  %9 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !1332, !tbaa !1321
  tail call void @dbAdd(%struct.redisDb* %9, %struct.redisObject* %1, %struct.redisObject* %8) #6, !dbg !1333
  br label %17, !dbg !1334

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %5, i64 0, i32 0, !dbg !1335
  %12 = load i32, i32* %11, align 8, !dbg !1335
  %13 = and i32 %12, 15, !dbg !1335
  %14 = icmp eq i32 %13, 4, !dbg !1338
  br i1 %14, label %17, label %15, !dbg !1339

; <label>:15:                                     ; preds = %10
  %16 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !1340, !tbaa !1342
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %16) #6, !dbg !1344
  br label %17, !dbg !1345

; <label>:17:                                     ; preds = %7, %10, %15
  %18 = phi %struct.redisObject* [ null, %15 ], [ %8, %7 ], [ %5, %10 ], !dbg !1346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1347
  ret %struct.redisObject* %18, !dbg !1347
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyWrite(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createHashObject() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @dbAdd(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hashTypeConvertZiplist(%struct.redisObject*, i32) local_unnamed_addr #0 !dbg !1348 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1363
  %10 = load i32, i32* %9, align 8, !dbg !1363
  %11 = and i32 %10, 240, !dbg !1363
  %12 = icmp eq i32 %11, 80, !dbg !1363
  br i1 %12, label %14, label %13, !dbg !1363

; <label>:13:                                     ; preds = %2
  tail call void @_serverAssert(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 466) #6, !dbg !1363
  tail call void @_exit(i32 1) #7, !dbg !1363
  unreachable, !dbg !1363

; <label>:14:                                     ; preds = %2
  switch i32 %1, label %90 [
    i32 5, label %91
    i32 2, label %15
  ], !dbg !1364

; <label>:15:                                     ; preds = %14
  %16 = tail call i8* @zmalloc(i64 48) #6, !dbg !1367
  %17 = bitcast i8* %16 to %struct.hashTypeIterator*, !dbg !1367
  %18 = bitcast i8* %16 to %struct.redisObject**, !dbg !1369
  store %struct.redisObject* %0, %struct.redisObject** %18, align 8, !dbg !1370, !tbaa !923
  %19 = load i32, i32* %9, align 8, !dbg !1371
  %20 = lshr i32 %19, 4, !dbg !1371
  %21 = and i32 %20, 15, !dbg !1371
  %22 = getelementptr inbounds i8, i8* %16, i64 8, !dbg !1372
  %23 = bitcast i8* %22 to i32*, !dbg !1372
  store i32 %21, i32* %23, align 8, !dbg !1373, !tbaa !928
  %24 = trunc i32 %20 to i4, !dbg !1374
  switch i4 %24, label %35 [
    i4 5, label %25
    i4 2, label %28
  ], !dbg !1374

; <label>:25:                                     ; preds = %15
  %26 = getelementptr inbounds i8, i8* %16, i64 16, !dbg !1375
  %27 = bitcast i8* %26 to <2 x i8*>*, !dbg !1376
  store <2 x i8*> zeroinitializer, <2 x i8*>* %27, align 8, !dbg !1376, !tbaa !161
  br label %36, !dbg !1377

; <label>:28:                                     ; preds = %15
  %29 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1378
  %30 = bitcast i8** %29 to %struct.dict**, !dbg !1378
  %31 = load %struct.dict*, %struct.dict** %30, align 8, !dbg !1378, !tbaa !166
  %32 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %31) #6, !dbg !1379
  %33 = getelementptr inbounds i8, i8* %16, i64 32, !dbg !1380
  %34 = bitcast i8* %33 to %struct.dictIterator**, !dbg !1380
  store %struct.dictIterator* %32, %struct.dictIterator** %34, align 8, !dbg !1381, !tbaa !941
  br label %36

; <label>:35:                                     ; preds = %15
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 335, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1382
  tail call void @_exit(i32 1) #7, !dbg !1382
  unreachable, !dbg !1382

; <label>:36:                                     ; preds = %25, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1383
  %37 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @hashDictType, i8* null) #6, !dbg !1385
  %38 = bitcast i8** %6 to i8*
  %39 = bitcast i32* %7 to i8*
  %40 = bitcast i64* %8 to i8*
  %41 = bitcast i8** %3 to i8*
  %42 = bitcast i32* %4 to i8*
  %43 = bitcast i64* %5 to i8*
  br label %44, !dbg !1387

; <label>:44:                                     ; preds = %68, %36
  %45 = call i32 @hashTypeNext(%struct.hashTypeIterator* %17) #8, !dbg !1388
  %46 = icmp eq i32 %45, -1, !dbg !1389
  br i1 %46, label %76, label %47, !dbg !1387

; <label>:47:                                     ; preds = %44
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %38) #5, !dbg !1393
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %39) #5, !dbg !1394
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40) #5, !dbg !1395
  call void @hashTypeCurrentObject(%struct.hashTypeIterator* %17, i32 1, i8** nonnull %6, i32* nonnull %7, i64* nonnull %8) #6, !dbg !1399
  %48 = load i8*, i8** %6, align 8, !dbg !1400, !tbaa !161
  %49 = icmp eq i8* %48, null, !dbg !1400
  br i1 %49, label %54, label %50, !dbg !1401

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %7, align 4, !dbg !1402, !tbaa !200
  %52 = zext i32 %51 to i64, !dbg !1402
  %53 = call i8* @sdsnewlen(i8* nonnull %48, i64 %52) #6, !dbg !1403
  br label %57, !dbg !1404

; <label>:54:                                     ; preds = %47
  %55 = load i64, i64* %8, align 8, !dbg !1405, !tbaa !428
  %56 = call i8* @sdsfromlonglong(i64 %55) #6, !dbg !1406
  br label %57, !dbg !1407

; <label>:57:                                     ; preds = %50, %54
  %58 = phi i8* [ %53, %50 ], [ %56, %54 ], !dbg !1408
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #5, !dbg !1409
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %39) #5, !dbg !1409
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %38) #5, !dbg !1409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1409
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #5, !dbg !1414
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %42) #5, !dbg !1415
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %43) #5, !dbg !1416
  call void @hashTypeCurrentObject(%struct.hashTypeIterator* %17, i32 2, i8** nonnull %3, i32* nonnull %4, i64* nonnull %5) #6, !dbg !1420
  %59 = load i8*, i8** %3, align 8, !dbg !1421, !tbaa !161
  %60 = icmp eq i8* %59, null, !dbg !1421
  br i1 %60, label %65, label %61, !dbg !1422

; <label>:61:                                     ; preds = %57
  %62 = load i32, i32* %4, align 4, !dbg !1423, !tbaa !200
  %63 = zext i32 %62 to i64, !dbg !1423
  %64 = call i8* @sdsnewlen(i8* nonnull %59, i64 %63) #6, !dbg !1424
  br label %68, !dbg !1425

; <label>:65:                                     ; preds = %57
  %66 = load i64, i64* %5, align 8, !dbg !1426, !tbaa !428
  %67 = call i8* @sdsfromlonglong(i64 %66) #6, !dbg !1427
  br label %68, !dbg !1428

; <label>:68:                                     ; preds = %61, %65
  %69 = phi i8* [ %64, %61 ], [ %67, %65 ], !dbg !1429
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #5, !dbg !1430
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %42) #5, !dbg !1430
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #5, !dbg !1430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1430
  %70 = call i32 @dictAdd(%struct.dict* %37, i8* %58, i8* %69) #6, !dbg !1432
  %71 = icmp eq i32 %70, 0, !dbg !1434
  br i1 %71, label %44, label %72, !dbg !1436, !llvm.loop !1437

; <label>:72:                                     ; preds = %68
  %73 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1439
  %74 = load i8*, i8** %73, align 8, !dbg !1439, !tbaa !166
  %75 = call i64 @ziplistBlobLen(i8* %74) #6, !dbg !1441
  call void @serverLogHexDump(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* %74, i64 %75) #6, !dbg !1442
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 488, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !1443
  call void @_exit(i32 1) #7, !dbg !1443
  unreachable, !dbg !1443

; <label>:76:                                     ; preds = %44
  %77 = load i32, i32* %23, align 8, !dbg !1446, !tbaa !928
  %78 = icmp eq i32 %77, 2, !dbg !1447
  br i1 %78, label %79, label %83, !dbg !1448

; <label>:79:                                     ; preds = %76
  %80 = getelementptr inbounds i8, i8* %16, i64 32, !dbg !1449
  %81 = bitcast i8* %80 to %struct.dictIterator**, !dbg !1449
  %82 = load %struct.dictIterator*, %struct.dictIterator** %81, align 8, !dbg !1449, !tbaa !941
  call void @dictReleaseIterator(%struct.dictIterator* %82) #6, !dbg !1450
  br label %83, !dbg !1450

; <label>:83:                                     ; preds = %76, %79
  call void @zfree(i8* nonnull %16) #6, !dbg !1451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1452
  %84 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1453
  %85 = load i8*, i8** %84, align 8, !dbg !1453, !tbaa !166
  call void @zfree(i8* %85) #6, !dbg !1454
  %86 = load i32, i32* %9, align 8, !dbg !1455
  %87 = and i32 %86, -241, !dbg !1455
  %88 = or i32 %87, 32, !dbg !1455
  store i32 %88, i32* %9, align 8, !dbg !1455
  %89 = bitcast i8** %84 to %struct.dict**, !dbg !1456
  store %struct.dict* %37, %struct.dict** %89, align 8, !dbg !1456, !tbaa !166
  br label %91

; <label>:90:                                     ; preds = %14
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 496, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1457
  tail call void @_exit(i32 1) #7, !dbg !1457
  unreachable, !dbg !1457

; <label>:91:                                     ; preds = %14, %83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1459
  ret void, !dbg !1459
}

; Function Attrs: noredzone
declare dso_local %struct.dict* @dictCreate(%struct.dictType*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @serverLogHexDump(i32, i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @ziplistBlobLen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hsetnxCommand(%struct.client*) local_unnamed_addr #0 !dbg !1460 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1465
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1465, !tbaa !1467
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !1468
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !1468, !tbaa !161
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1472
  %7 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1472, !tbaa !1321
  %8 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %7, %struct.redisObject* %5) #6, !dbg !1473
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !1475
  br i1 %9, label %18, label %10, !dbg !1476

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 0, !dbg !1477
  %12 = load i32, i32* %11, align 8, !dbg !1477
  %13 = and i32 %12, 15, !dbg !1477
  %14 = icmp eq i32 %13, 4, !dbg !1478
  br i1 %14, label %15, label %16, !dbg !1479

; <label>:15:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  br label %22, !dbg !1482

; <label>:16:                                     ; preds = %10
  %17 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !1483, !tbaa !1342
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %17) #6, !dbg !1484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  br label %58, !dbg !1482

; <label>:18:                                     ; preds = %1
  %19 = tail call %struct.redisObject* @createHashObject() #6, !dbg !1485
  %20 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1486, !tbaa !1321
  tail call void @dbAdd(%struct.redisDb* %20, %struct.redisObject* %5, %struct.redisObject* %19) #6, !dbg !1487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  %21 = icmp eq %struct.redisObject* %19, null, !dbg !1488
  br i1 %21, label %58, label %22, !dbg !1482

; <label>:22:                                     ; preds = %15, %18
  %23 = phi %struct.redisObject* [ %8, %15 ], [ %19, %18 ]
  %24 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1489, !tbaa !1467
  tail call void @hashTypeTryConversion(%struct.redisObject* nonnull %23, %struct.redisObject** %24, i32 2, i32 3) #8, !dbg !1490
  %25 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1491, !tbaa !1467
  %26 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %25, i64 2, !dbg !1493
  %27 = load %struct.redisObject*, %struct.redisObject** %26, align 8, !dbg !1493, !tbaa !161
  %28 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %27, i64 0, i32 2, !dbg !1494
  %29 = load i8*, i8** %28, align 8, !dbg !1494, !tbaa !166
  %30 = tail call i32 @hashTypeExists(%struct.redisObject* nonnull %23, i8* %29) #8, !dbg !1495
  %31 = icmp eq i32 %30, 0, !dbg !1495
  br i1 %31, label %34, label %32, !dbg !1496

; <label>:32:                                     ; preds = %22
  %33 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1497, !tbaa !1499
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %33) #6, !dbg !1500
  br label %58, !dbg !1501

; <label>:34:                                     ; preds = %22
  %35 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1502, !tbaa !1467
  %36 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %35, i64 2, !dbg !1504
  %37 = load %struct.redisObject*, %struct.redisObject** %36, align 8, !dbg !1504, !tbaa !161
  %38 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %37, i64 0, i32 2, !dbg !1505
  %39 = load i8*, i8** %38, align 8, !dbg !1505, !tbaa !166
  %40 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %35, i64 3, !dbg !1506
  %41 = load %struct.redisObject*, %struct.redisObject** %40, align 8, !dbg !1506, !tbaa !161
  %42 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %41, i64 0, i32 2, !dbg !1507
  %43 = load i8*, i8** %42, align 8, !dbg !1507, !tbaa !166
  %44 = tail call i32 @hashTypeSet(%struct.redisObject* nonnull %23, i8* %39, i8* %43, i32 0) #8, !dbg !1508
  %45 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !1509, !tbaa !1510
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %45) #6, !dbg !1511
  %46 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1512, !tbaa !1321
  %47 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1513, !tbaa !1467
  %48 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %47, i64 1, !dbg !1514
  %49 = load %struct.redisObject*, %struct.redisObject** %48, align 8, !dbg !1514, !tbaa !161
  tail call void @signalModifiedKey(%struct.redisDb* %46, %struct.redisObject* %49) #6, !dbg !1515
  %50 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1516, !tbaa !1467
  %51 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %50, i64 1, !dbg !1517
  %52 = load %struct.redisObject*, %struct.redisObject** %51, align 8, !dbg !1517, !tbaa !161
  %53 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1518, !tbaa !1321
  %54 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %53, i64 0, i32 5, !dbg !1519
  %55 = load i32, i32* %54, align 8, !dbg !1519, !tbaa !1520
  tail call void @notifyKeyspaceEvent(i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %struct.redisObject* %52, i32 %55) #6, !dbg !1522
  %56 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1523, !tbaa !1524
  %57 = add nsw i64 %56, 1, !dbg !1523
  store i64 %57, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1523, !tbaa !1524
  br label %58

; <label>:58:                                     ; preds = %16, %32, %34, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1525
  ret void, !dbg !1525
}

; Function Attrs: noredzone
declare dso_local void @signalModifiedKey(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @notifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hsetCommand(%struct.client*) local_unnamed_addr #0 !dbg !1526 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1535
  %3 = load i32, i32* %2, align 8, !dbg !1535, !tbaa !1537
  %4 = srem i32 %3, 2, !dbg !1538
  %5 = icmp eq i32 %4, 1, !dbg !1539
  br i1 %5, label %6, label %7, !dbg !1540

; <label>:6:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !1541
  br label %84, !dbg !1543

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1544
  %9 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1544, !tbaa !1467
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 1, !dbg !1546
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !1546, !tbaa !161
  %12 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1550
  %13 = load %struct.redisDb*, %struct.redisDb** %12, align 8, !dbg !1550, !tbaa !1321
  %14 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %13, %struct.redisObject* %11) #6, !dbg !1551
  %15 = icmp eq %struct.redisObject* %14, null, !dbg !1553
  br i1 %15, label %24, label %16, !dbg !1554

; <label>:16:                                     ; preds = %7
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %14, i64 0, i32 0, !dbg !1555
  %18 = load i32, i32* %17, align 8, !dbg !1555
  %19 = and i32 %18, 15, !dbg !1555
  %20 = icmp eq i32 %19, 4, !dbg !1556
  br i1 %20, label %21, label %22, !dbg !1557

; <label>:21:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1558
  br label %28, !dbg !1560

; <label>:22:                                     ; preds = %16
  %23 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !1561, !tbaa !1342
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %23) #6, !dbg !1562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1558
  br label %84, !dbg !1560

; <label>:24:                                     ; preds = %7
  %25 = tail call %struct.redisObject* @createHashObject() #6, !dbg !1563
  %26 = load %struct.redisDb*, %struct.redisDb** %12, align 8, !dbg !1564, !tbaa !1321
  tail call void @dbAdd(%struct.redisDb* %26, %struct.redisObject* %11, %struct.redisObject* %25) #6, !dbg !1565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1558
  %27 = icmp eq %struct.redisObject* %25, null, !dbg !1566
  br i1 %27, label %84, label %28, !dbg !1560

; <label>:28:                                     ; preds = %21, %24
  %29 = phi %struct.redisObject* [ %14, %21 ], [ %25, %24 ]
  %30 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1567, !tbaa !1467
  %31 = load i32, i32* %2, align 8, !dbg !1568, !tbaa !1537
  %32 = add nsw i32 %31, -1, !dbg !1569
  tail call void @hashTypeTryConversion(%struct.redisObject* nonnull %29, %struct.redisObject** %30, i32 2, i32 %32) #8, !dbg !1570
  %33 = load i32, i32* %2, align 8, !dbg !1572, !tbaa !1537
  %34 = icmp sgt i32 %33, 2, !dbg !1575
  %35 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1576, !tbaa !1467
  br i1 %34, label %36, label %60, !dbg !1577

; <label>:36:                                     ; preds = %28, %36
  %37 = phi i64 [ %53, %36 ], [ 2, %28 ]
  %38 = phi %struct.redisObject** [ %57, %36 ], [ %35, %28 ]
  %39 = phi i32 [ %52, %36 ], [ 0, %28 ]
  %40 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %38, i64 %37, !dbg !1578
  %41 = load %struct.redisObject*, %struct.redisObject** %40, align 8, !dbg !1578, !tbaa !161
  %42 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %41, i64 0, i32 2, !dbg !1579
  %43 = load i8*, i8** %42, align 8, !dbg !1579, !tbaa !166
  %44 = or i64 %37, 1, !dbg !1580
  %45 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %38, i64 %44, !dbg !1581
  %46 = load %struct.redisObject*, %struct.redisObject** %45, align 8, !dbg !1581, !tbaa !161
  %47 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %46, i64 0, i32 2, !dbg !1582
  %48 = load i8*, i8** %47, align 8, !dbg !1582, !tbaa !166
  %49 = tail call i32 @hashTypeSet(%struct.redisObject* nonnull %29, i8* %43, i8* %48, i32 0) #8, !dbg !1583
  %50 = icmp eq i32 %49, 0, !dbg !1584
  %51 = zext i1 %50 to i32, !dbg !1584
  %52 = add nuw nsw i32 %39, %51, !dbg !1585
  %53 = add nuw i64 %37, 2, !dbg !1586
  %54 = load i32, i32* %2, align 8, !dbg !1572, !tbaa !1537
  %55 = trunc i64 %53 to i32, !dbg !1575
  %56 = icmp sgt i32 %54, %55, !dbg !1575
  %57 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1576, !tbaa !1467
  br i1 %56, label %36, label %58, !dbg !1577, !llvm.loop !1587

; <label>:58:                                     ; preds = %36
  %59 = zext i32 %52 to i64, !dbg !1589
  br label %60, !dbg !1589

; <label>:60:                                     ; preds = %58, %28
  %61 = phi i64 [ 0, %28 ], [ %59, %58 ]
  %62 = phi %struct.redisObject** [ %35, %28 ], [ %57, %58 ], !dbg !1576
  %63 = load %struct.redisObject*, %struct.redisObject** %62, align 8, !dbg !1589, !tbaa !161
  %64 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %63, i64 0, i32 2, !dbg !1590
  %65 = load i8*, i8** %64, align 8, !dbg !1590, !tbaa !166
  %66 = getelementptr inbounds i8, i8* %65, i64 1, !dbg !1592
  %67 = load i8, i8* %66, align 1, !dbg !1592, !tbaa !182
  switch i8 %67, label %69 [
    i8 115, label %68
    i8 83, label %68
  ], !dbg !1594

; <label>:68:                                     ; preds = %60, %60
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %61) #6, !dbg !1595
  br label %71, !dbg !1597

; <label>:69:                                     ; preds = %60
  %70 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1598, !tbaa !1600
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %70) #6, !dbg !1601
  br label %71

; <label>:71:                                     ; preds = %69, %68
  %72 = load %struct.redisDb*, %struct.redisDb** %12, align 8, !dbg !1602, !tbaa !1321
  %73 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1603, !tbaa !1467
  %74 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %73, i64 1, !dbg !1604
  %75 = load %struct.redisObject*, %struct.redisObject** %74, align 8, !dbg !1604, !tbaa !161
  tail call void @signalModifiedKey(%struct.redisDb* %72, %struct.redisObject* %75) #6, !dbg !1605
  %76 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1606, !tbaa !1467
  %77 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %76, i64 1, !dbg !1607
  %78 = load %struct.redisObject*, %struct.redisObject** %77, align 8, !dbg !1607, !tbaa !161
  %79 = load %struct.redisDb*, %struct.redisDb** %12, align 8, !dbg !1608, !tbaa !1321
  %80 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %79, i64 0, i32 5, !dbg !1609
  %81 = load i32, i32* %80, align 8, !dbg !1609, !tbaa !1520
  tail call void @notifyKeyspaceEvent(i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %struct.redisObject* %78, i32 %81) #6, !dbg !1610
  %82 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1611, !tbaa !1524
  %83 = add nsw i64 %82, 1, !dbg !1611
  store i64 %83, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1611, !tbaa !1524
  br label %84, !dbg !1612

; <label>:84:                                     ; preds = %22, %24, %71, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1612
  ret void, !dbg !1612
}

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hincrbyCommand(%struct.client*) local_unnamed_addr #0 !dbg !1613 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = bitcast i64* %2 to i8*, !dbg !1624
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1624
  %7 = bitcast i64* %3 to i8*, !dbg !1624
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !1624
  %8 = bitcast i8** %4 to i8*, !dbg !1625
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !1625
  %9 = bitcast i32* %5 to i8*, !dbg !1626
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #5, !dbg !1626
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1627
  %11 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1627, !tbaa !1467
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 3, !dbg !1629
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !1629, !tbaa !161
  %14 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %13, i64* nonnull %3, i8* null) #6, !dbg !1631
  %15 = icmp eq i32 %14, 0, !dbg !1632
  br i1 %15, label %16, label %93, !dbg !1633

; <label>:16:                                     ; preds = %1
  %17 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1634, !tbaa !1467
  %18 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %17, i64 1, !dbg !1636
  %19 = load %struct.redisObject*, %struct.redisObject** %18, align 8, !dbg !1636, !tbaa !161
  %20 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1640
  %21 = load %struct.redisDb*, %struct.redisDb** %20, align 8, !dbg !1640, !tbaa !1321
  %22 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %21, %struct.redisObject* %19) #6, !dbg !1641
  %23 = icmp eq %struct.redisObject* %22, null, !dbg !1643
  br i1 %23, label %32, label %24, !dbg !1644

; <label>:24:                                     ; preds = %16
  %25 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %22, i64 0, i32 0, !dbg !1645
  %26 = load i32, i32* %25, align 8, !dbg !1645
  %27 = and i32 %26, 15, !dbg !1645
  %28 = icmp eq i32 %27, 4, !dbg !1646
  br i1 %28, label %29, label %30, !dbg !1647

; <label>:29:                                     ; preds = %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1648
  br label %36, !dbg !1650

; <label>:30:                                     ; preds = %24
  %31 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !1651, !tbaa !1342
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %31) #6, !dbg !1652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1648
  br label %93, !dbg !1650

; <label>:32:                                     ; preds = %16
  %33 = call %struct.redisObject* @createHashObject() #6, !dbg !1653
  %34 = load %struct.redisDb*, %struct.redisDb** %20, align 8, !dbg !1654, !tbaa !1321
  call void @dbAdd(%struct.redisDb* %34, %struct.redisObject* %19, %struct.redisObject* %33) #6, !dbg !1655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1648
  %35 = icmp eq %struct.redisObject* %33, null, !dbg !1656
  br i1 %35, label %93, label %36, !dbg !1650

; <label>:36:                                     ; preds = %29, %32
  %37 = phi %struct.redisObject* [ %22, %29 ], [ %33, %32 ]
  %38 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1657, !tbaa !1467
  %39 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %38, i64 2, !dbg !1659
  %40 = load %struct.redisObject*, %struct.redisObject** %39, align 8, !dbg !1659, !tbaa !161
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %40, i64 0, i32 2, !dbg !1660
  %42 = load i8*, i8** %41, align 8, !dbg !1660, !tbaa !166
  %43 = call i32 @hashTypeGetValue(%struct.redisObject* nonnull %37, i8* %42, i8** nonnull %4, i32* nonnull %5, i64* nonnull %2) #8, !dbg !1664
  %44 = icmp eq i32 %43, 0, !dbg !1665
  br i1 %44, label %45, label %54, !dbg !1666

; <label>:45:                                     ; preds = %36
  %46 = load i8*, i8** %4, align 8, !dbg !1667, !tbaa !161
  %47 = icmp eq i8* %46, null, !dbg !1667
  br i1 %47, label %55, label %48, !dbg !1670

; <label>:48:                                     ; preds = %45
  %49 = load i32, i32* %5, align 4, !dbg !1671, !tbaa !200
  %50 = zext i32 %49 to i64, !dbg !1671
  %51 = call i32 @string2ll(i8* nonnull %46, i64 %50, i64* nonnull %2) #6, !dbg !1674
  %52 = icmp eq i32 %51, 0, !dbg !1675
  br i1 %52, label %53, label %55, !dbg !1676

; <label>:53:                                     ; preds = %48
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !1677
  br label %93, !dbg !1679

; <label>:54:                                     ; preds = %36
  store i64 0, i64* %2, align 8, !dbg !1680, !tbaa !428
  br label %55

; <label>:55:                                     ; preds = %45, %48, %54
  %56 = load i64, i64* %2, align 8, !dbg !1682, !tbaa !428
  %57 = load i64, i64* %3, align 8, !dbg !1684, !tbaa !428
  %58 = and i64 %57, %56, !dbg !1686
  %59 = icmp slt i64 %58, 0, !dbg !1686
  %60 = sub nsw i64 -9223372036854775808, %56, !dbg !1687
  %61 = icmp slt i64 %57, %60, !dbg !1688
  %62 = and i1 %61, %59, !dbg !1686
  br i1 %62, label %70, label %63, !dbg !1686

; <label>:63:                                     ; preds = %55
  %64 = icmp sgt i64 %57, 0, !dbg !1689
  %65 = icmp sgt i64 %56, 0, !dbg !1690
  %66 = and i1 %65, %64, !dbg !1691
  %67 = sub nsw i64 9223372036854775807, %56, !dbg !1692
  %68 = icmp sgt i64 %57, %67, !dbg !1693
  %69 = and i1 %68, %66, !dbg !1691
  br i1 %69, label %70, label %71, !dbg !1691

; <label>:70:                                     ; preds = %63, %55
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !1694
  br label %93, !dbg !1696

; <label>:71:                                     ; preds = %63
  %72 = add nsw i64 %57, %56, !dbg !1697
  store i64 %72, i64* %2, align 8, !dbg !1697, !tbaa !428
  %73 = call i8* @sdsfromlonglong(i64 %72) #6, !dbg !1698
  %74 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1700, !tbaa !1467
  %75 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %74, i64 2, !dbg !1701
  %76 = load %struct.redisObject*, %struct.redisObject** %75, align 8, !dbg !1701, !tbaa !161
  %77 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %76, i64 0, i32 2, !dbg !1702
  %78 = load i8*, i8** %77, align 8, !dbg !1702, !tbaa !166
  %79 = call i32 @hashTypeSet(%struct.redisObject* nonnull %37, i8* %78, i8* %73, i32 2) #8, !dbg !1703
  %80 = load i64, i64* %2, align 8, !dbg !1704, !tbaa !428
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %80) #6, !dbg !1705
  %81 = load %struct.redisDb*, %struct.redisDb** %20, align 8, !dbg !1706, !tbaa !1321
  %82 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1707, !tbaa !1467
  %83 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %82, i64 1, !dbg !1708
  %84 = load %struct.redisObject*, %struct.redisObject** %83, align 8, !dbg !1708, !tbaa !161
  call void @signalModifiedKey(%struct.redisDb* %81, %struct.redisObject* %84) #6, !dbg !1709
  %85 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1710, !tbaa !1467
  %86 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %85, i64 1, !dbg !1711
  %87 = load %struct.redisObject*, %struct.redisObject** %86, align 8, !dbg !1711, !tbaa !161
  %88 = load %struct.redisDb*, %struct.redisDb** %20, align 8, !dbg !1712, !tbaa !1321
  %89 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %88, i64 0, i32 5, !dbg !1713
  %90 = load i32, i32* %89, align 8, !dbg !1713, !tbaa !1520
  call void @notifyKeyspaceEvent(i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), %struct.redisObject* %87, i32 %90) #6, !dbg !1714
  %91 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1715, !tbaa !1524
  %92 = add nsw i64 %91, 1, !dbg !1715
  store i64 %92, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1715, !tbaa !1524
  br label %93, !dbg !1716

; <label>:93:                                     ; preds = %30, %32, %1, %71, %70, %53
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #5, !dbg !1716
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !1716
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !1716
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1716
  ret void, !dbg !1716
}

; Function Attrs: noredzone
declare dso_local i32 @getLongLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @string2ll(i8*, i64, i64*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hincrbyfloatCommand(%struct.client*) local_unnamed_addr #0 !dbg !1717 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [5120 x i8], align 16
  %8 = bitcast x86_fp80* %2 to i8*, !dbg !1735
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #5, !dbg !1735
  %9 = bitcast x86_fp80* %3 to i8*, !dbg !1735
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #5, !dbg !1735
  %10 = bitcast i64* %4 to i8*, !dbg !1736
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #5, !dbg !1736
  %11 = bitcast i8** %5 to i8*, !dbg !1737
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #5, !dbg !1737
  %12 = bitcast i32* %6 to i8*, !dbg !1738
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5, !dbg !1738
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1739
  %14 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !1739, !tbaa !1467
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 3, !dbg !1741
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !1741, !tbaa !161
  %17 = call i32 @getLongDoubleFromObjectOrReply(%struct.client* %0, %struct.redisObject* %16, x86_fp80* nonnull %3, i8* null) #6, !dbg !1743
  %18 = icmp eq i32 %17, 0, !dbg !1744
  br i1 %18, label %19, label %102, !dbg !1745

; <label>:19:                                     ; preds = %1
  %20 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !1746, !tbaa !1467
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 1, !dbg !1748
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !1748, !tbaa !161
  %23 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1752
  %24 = load %struct.redisDb*, %struct.redisDb** %23, align 8, !dbg !1752, !tbaa !1321
  %25 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %24, %struct.redisObject* %22) #6, !dbg !1753
  %26 = icmp eq %struct.redisObject* %25, null, !dbg !1755
  br i1 %26, label %35, label %27, !dbg !1756

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %25, i64 0, i32 0, !dbg !1757
  %29 = load i32, i32* %28, align 8, !dbg !1757
  %30 = and i32 %29, 15, !dbg !1757
  %31 = icmp eq i32 %30, 4, !dbg !1758
  br i1 %31, label %32, label %33, !dbg !1759

; <label>:32:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1760
  br label %39, !dbg !1762

; <label>:33:                                     ; preds = %27
  %34 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !1763, !tbaa !1342
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %34) #6, !dbg !1764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1760
  br label %102, !dbg !1762

; <label>:35:                                     ; preds = %19
  %36 = call %struct.redisObject* @createHashObject() #6, !dbg !1765
  %37 = load %struct.redisDb*, %struct.redisDb** %23, align 8, !dbg !1766, !tbaa !1321
  call void @dbAdd(%struct.redisDb* %37, %struct.redisObject* %22, %struct.redisObject* %36) #6, !dbg !1767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1760
  %38 = icmp eq %struct.redisObject* %36, null, !dbg !1768
  br i1 %38, label %102, label %39, !dbg !1762

; <label>:39:                                     ; preds = %32, %35
  %40 = phi %struct.redisObject* [ %25, %32 ], [ %36, %35 ]
  %41 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !1769, !tbaa !1467
  %42 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %41, i64 2, !dbg !1771
  %43 = load %struct.redisObject*, %struct.redisObject** %42, align 8, !dbg !1771, !tbaa !161
  %44 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %43, i64 0, i32 2, !dbg !1772
  %45 = load i8*, i8** %44, align 8, !dbg !1772, !tbaa !166
  %46 = call i32 @hashTypeGetValue(%struct.redisObject* nonnull %40, i8* %45, i8** nonnull %5, i32* nonnull %6, i64* nonnull %4) #8, !dbg !1776
  %47 = icmp eq i32 %46, 0, !dbg !1777
  br i1 %47, label %48, label %62, !dbg !1778

; <label>:48:                                     ; preds = %39
  %49 = load i8*, i8** %5, align 8, !dbg !1779, !tbaa !161
  %50 = icmp eq i8* %49, null, !dbg !1779
  br i1 %50, label %59, label %51, !dbg !1782

; <label>:51:                                     ; preds = %48
  %52 = load i32, i32* %6, align 4, !dbg !1783, !tbaa !200
  %53 = zext i32 %52 to i64, !dbg !1783
  %54 = call i32 @string2ld(i8* nonnull %49, i64 %53, x86_fp80* nonnull %2) #6, !dbg !1787
  %55 = icmp eq i32 %54, 0, !dbg !1788
  br i1 %55, label %58, label %56, !dbg !1789

; <label>:56:                                     ; preds = %51
  %57 = load x86_fp80, x86_fp80* %2, align 16, !dbg !1790, !tbaa !1791
  br label %63, !dbg !1789

; <label>:58:                                     ; preds = %51
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !1793
  br label %102, !dbg !1795

; <label>:59:                                     ; preds = %48
  %60 = load i64, i64* %4, align 8, !dbg !1796, !tbaa !428
  %61 = sitofp i64 %60 to x86_fp80, !dbg !1798
  store x86_fp80 %61, x86_fp80* %2, align 16, !dbg !1799, !tbaa !1791
  br label %63

; <label>:62:                                     ; preds = %39
  store x86_fp80 0xK00000000000000000000, x86_fp80* %2, align 16, !dbg !1800, !tbaa !1791
  br label %63

; <label>:63:                                     ; preds = %56, %59, %62
  %64 = phi x86_fp80 [ %57, %56 ], [ %61, %59 ], [ 0xK00000000000000000000, %62 ], !dbg !1790
  %65 = load x86_fp80, x86_fp80* %3, align 16, !dbg !1802, !tbaa !1791
  %66 = fadd x86_fp80 %65, %64, !dbg !1790
  store x86_fp80 %66, x86_fp80* %2, align 16, !dbg !1790, !tbaa !1791
  %67 = fptrunc x86_fp80 %66 to double, !dbg !1803
  %68 = call i32 @__fpclassifyd(double %67) #6, !dbg !1803
  %69 = icmp eq i32 %68, 0, !dbg !1803
  br i1 %69, label %75, label %70, !dbg !1805

; <label>:70:                                     ; preds = %63
  %71 = load x86_fp80, x86_fp80* %2, align 16, !dbg !1806, !tbaa !1791
  %72 = fptrunc x86_fp80 %71 to double, !dbg !1806
  %73 = call i32 @__fpclassifyd(double %72) #6, !dbg !1806
  %74 = icmp eq i32 %73, 1, !dbg !1806
  br i1 %74, label %75, label %76, !dbg !1807

; <label>:75:                                     ; preds = %70, %63
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !1808
  br label %102, !dbg !1810

; <label>:76:                                     ; preds = %70
  %77 = getelementptr inbounds [5120 x i8], [5120 x i8]* %7, i64 0, i64 0, !dbg !1811
  call void @llvm.lifetime.start.p0i8(i64 5120, i8* nonnull %77) #5, !dbg !1811
  %78 = load x86_fp80, x86_fp80* %2, align 16, !dbg !1813, !tbaa !1791
  %79 = call i32 @ld2string(i8* nonnull %77, i64 5120, x86_fp80 %78, i32 1) #6, !dbg !1814
  %80 = sext i32 %79 to i64, !dbg !1816
  %81 = call i8* @sdsnewlen(i8* nonnull %77, i64 %80) #6, !dbg !1817
  %82 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !1819, !tbaa !1467
  %83 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %82, i64 2, !dbg !1820
  %84 = load %struct.redisObject*, %struct.redisObject** %83, align 8, !dbg !1820, !tbaa !161
  %85 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %84, i64 0, i32 2, !dbg !1821
  %86 = load i8*, i8** %85, align 8, !dbg !1821, !tbaa !166
  %87 = call i32 @hashTypeSet(%struct.redisObject* nonnull %40, i8* %86, i8* %81, i32 2) #8, !dbg !1822
  call void @addReplyBulkCBuffer(%struct.client* nonnull %0, i8* nonnull %77, i64 %80) #6, !dbg !1823
  %88 = load %struct.redisDb*, %struct.redisDb** %23, align 8, !dbg !1824, !tbaa !1321
  %89 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !1825, !tbaa !1467
  %90 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %89, i64 1, !dbg !1826
  %91 = load %struct.redisObject*, %struct.redisObject** %90, align 8, !dbg !1826, !tbaa !161
  call void @signalModifiedKey(%struct.redisDb* %88, %struct.redisObject* %91) #6, !dbg !1827
  %92 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !1828, !tbaa !1467
  %93 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %92, i64 1, !dbg !1829
  %94 = load %struct.redisObject*, %struct.redisObject** %93, align 8, !dbg !1829, !tbaa !161
  %95 = load %struct.redisDb*, %struct.redisDb** %23, align 8, !dbg !1830, !tbaa !1321
  %96 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %95, i64 0, i32 5, !dbg !1831
  %97 = load i32, i32* %96, align 8, !dbg !1831, !tbaa !1520
  call void @notifyKeyspaceEvent(i32 64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), %struct.redisObject* %94, i32 %97) #6, !dbg !1832
  %98 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1833, !tbaa !1524
  %99 = add nsw i64 %98, 1, !dbg !1833
  store i64 %99, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1833, !tbaa !1524
  %100 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i64 4) #6, !dbg !1834
  %101 = call %struct.redisObject* @createRawStringObject(i8* nonnull %77, i64 %80) #6, !dbg !1836
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 0, %struct.redisObject* %100) #6, !dbg !1838
  call void @decrRefCount(%struct.redisObject* %100) #6, !dbg !1839
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 3, %struct.redisObject* %101) #6, !dbg !1840
  call void @decrRefCount(%struct.redisObject* %101) #6, !dbg !1841
  call void @llvm.lifetime.end.p0i8(i64 5120, i8* nonnull %77) #5, !dbg !1842
  br label %102, !dbg !1842

; <label>:102:                                    ; preds = %33, %35, %1, %76, %75, %58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5, !dbg !1842
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5, !dbg !1842
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #5, !dbg !1842
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #5, !dbg !1842
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #5, !dbg !1842
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1842
  ret void, !dbg !1842
}

; Function Attrs: noredzone
declare dso_local i32 @getLongDoubleFromObjectOrReply(%struct.client*, %struct.redisObject*, x86_fp80*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @string2ld(i8*, i64, x86_fp80*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @ld2string(i8*, i64, x86_fp80, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createRawStringObject(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @rewriteClientCommandArgument(%struct.client*, i32, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hgetCommand(%struct.client*) local_unnamed_addr #0 !dbg !1843 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1848
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1848, !tbaa !1467
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !1850
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !1850, !tbaa !161
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1851, !tbaa !1852
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #6, !dbg !1853
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !1855
  br i1 %8, label %18, label %9, !dbg !1856

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 4) #6, !dbg !1857
  %11 = icmp eq i32 %10, 0, !dbg !1857
  br i1 %11, label %12, label %18, !dbg !1858

; <label>:12:                                     ; preds = %9
  %13 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1859, !tbaa !1467
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 2, !dbg !1860
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !1860, !tbaa !161
  %16 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %15, i64 0, i32 2, !dbg !1861
  %17 = load i8*, i8** %16, align 8, !dbg !1861, !tbaa !166
  tail call fastcc void @addHashFieldToReply(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i8* %17) #8, !dbg !1862
  br label %18, !dbg !1863

; <label>:18:                                     ; preds = %1, %9, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1863
  ret void, !dbg !1863
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyReadOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @checkType(%struct.client*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @addHashFieldToReply(%struct.client*, %struct.redisObject* readonly, i8*) unnamed_addr #0 !dbg !1864 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = icmp eq %struct.redisObject* %1, null, !dbg !1883
  br i1 %7, label %8, label %10, !dbg !1885

; <label>:8:                                      ; preds = %3
  %9 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1886, !tbaa !1852
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %9) #6, !dbg !1888
  br label %77, !dbg !1889

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !1890
  %12 = load i32, i32* %11, align 8, !dbg !1890
  %13 = lshr i32 %12, 4, !dbg !1890
  %14 = trunc i32 %13 to i4, !dbg !1891
  switch i4 %14, label %76 [
    i4 5, label %15
    i4 2, label %32
  ], !dbg !1891

; <label>:15:                                     ; preds = %10
  %16 = bitcast i8** %4 to i8*, !dbg !1892
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #5, !dbg !1892
  store i8* null, i8** %4, align 8, !dbg !1893, !tbaa !161
  %17 = bitcast i32* %5 to i8*, !dbg !1894
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #5, !dbg !1894
  store i32 -1, i32* %5, align 4, !dbg !1895, !tbaa !200
  %18 = bitcast i64* %6 to i8*, !dbg !1896
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #5, !dbg !1896
  store i64 9223372036854775807, i64* %6, align 8, !dbg !1897, !tbaa !428
  %19 = call i32 @hashTypeGetFromZiplist(%struct.redisObject* nonnull %1, i8* %2, i8** nonnull %4, i32* nonnull %5, i64* nonnull %6) #8, !dbg !1898
  %20 = icmp slt i32 %19, 0, !dbg !1900
  br i1 %20, label %21, label %23, !dbg !1902

; <label>:21:                                     ; preds = %15
  %22 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1903, !tbaa !1852
  call void @addReply(%struct.client* %0, %struct.redisObject* %22) #6, !dbg !1905
  br label %31, !dbg !1906

; <label>:23:                                     ; preds = %15
  %24 = load i8*, i8** %4, align 8, !dbg !1907, !tbaa !161
  %25 = icmp eq i8* %24, null, !dbg !1907
  br i1 %25, label %29, label %26, !dbg !1910

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %5, align 4, !dbg !1911, !tbaa !200
  %28 = zext i32 %27 to i64, !dbg !1911
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* nonnull %24, i64 %28) #6, !dbg !1913
  br label %31, !dbg !1914

; <label>:29:                                     ; preds = %23
  %30 = load i64, i64* %6, align 8, !dbg !1915, !tbaa !428
  call void @addReplyBulkLongLong(%struct.client* %0, i64 %30) #6, !dbg !1917
  br label %31

; <label>:31:                                     ; preds = %26, %29, %21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #5, !dbg !1918
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #5, !dbg !1918
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #5, !dbg !1918
  br label %77, !dbg !1919

; <label>:32:                                     ; preds = %10
  %33 = and i32 %12, 240, !dbg !1923
  %34 = icmp eq i32 %33, 32, !dbg !1923
  br i1 %34, label %36, label %35, !dbg !1923

; <label>:35:                                     ; preds = %32
  tail call void @_serverAssert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 93) #6, !dbg !1923
  tail call void @_exit(i32 1) #7, !dbg !1923
  unreachable, !dbg !1923

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !1924
  %38 = bitcast i8** %37 to %struct.dict**, !dbg !1924
  %39 = load %struct.dict*, %struct.dict** %38, align 8, !dbg !1924, !tbaa !166
  %40 = tail call %struct.dictEntry* @dictFind(%struct.dict* %39, i8* %2) #6, !dbg !1925
  %41 = icmp eq %struct.dictEntry* %40, null, !dbg !1927
  br i1 %41, label %42, label %43, !dbg !1928

; <label>:42:                                     ; preds = %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  br label %47, !dbg !1931

; <label>:43:                                     ; preds = %36
  %44 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %40, i64 0, i32 1, i32 0, !dbg !1932
  %45 = load i8*, i8** %44, align 8, !dbg !1932, !tbaa !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  %46 = icmp eq i8* %45, null, !dbg !1933
  br i1 %46, label %47, label %49, !dbg !1931

; <label>:47:                                     ; preds = %42, %43
  %48 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1935, !tbaa !1852
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %48) #6, !dbg !1936
  br label %77, !dbg !1936

; <label>:49:                                     ; preds = %43
  %50 = getelementptr inbounds i8, i8* %45, i64 -1, !dbg !1939
  %51 = load i8, i8* %50, align 1, !dbg !1939, !tbaa !182
  %52 = trunc i8 %51 to i3, !dbg !1941
  switch i3 %52, label %74 [
    i3 0, label %53
    i3 1, label %56
    i3 2, label %60
    i3 3, label %65
    i3 -4, label %70
  ], !dbg !1941

; <label>:53:                                     ; preds = %49
  %54 = lshr i8 %51, 3, !dbg !1942
  %55 = zext i8 %54 to i64, !dbg !1942
  br label %74, !dbg !1943

; <label>:56:                                     ; preds = %49
  %57 = getelementptr inbounds i8, i8* %45, i64 -3, !dbg !1944
  %58 = load i8, i8* %57, align 1, !dbg !1945, !tbaa !182
  %59 = zext i8 %58 to i64, !dbg !1944
  br label %74, !dbg !1946

; <label>:60:                                     ; preds = %49
  %61 = getelementptr inbounds i8, i8* %45, i64 -5, !dbg !1947
  %62 = bitcast i8* %61 to i16*, !dbg !1948
  %63 = load i16, i16* %62, align 1, !dbg !1948, !tbaa !195
  %64 = zext i16 %63 to i64, !dbg !1947
  br label %74, !dbg !1949

; <label>:65:                                     ; preds = %49
  %66 = getelementptr inbounds i8, i8* %45, i64 -9, !dbg !1950
  %67 = bitcast i8* %66 to i32*, !dbg !1951
  %68 = load i32, i32* %67, align 1, !dbg !1951, !tbaa !200
  %69 = zext i32 %68 to i64, !dbg !1950
  br label %74, !dbg !1952

; <label>:70:                                     ; preds = %49
  %71 = getelementptr inbounds i8, i8* %45, i64 -17, !dbg !1953
  %72 = bitcast i8* %71 to i64*, !dbg !1954
  %73 = load i64, i64* %72, align 1, !dbg !1954, !tbaa !204
  br label %74, !dbg !1955

; <label>:74:                                     ; preds = %49, %53, %56, %60, %65, %70
  %75 = phi i64 [ %73, %70 ], [ %69, %65 ], [ %64, %60 ], [ %59, %56 ], [ %55, %53 ], [ 0, %49 ], !dbg !1956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1957
  tail call void @addReplyBulkCBuffer(%struct.client* %0, i8* nonnull %45, i64 %75) #6, !dbg !1958
  br label %77

; <label>:76:                                     ; preds = %10
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 675, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1959
  tail call void @_exit(i32 1) #7, !dbg !1959
  unreachable, !dbg !1959

; <label>:77:                                     ; preds = %31, %74, %47, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1961
  ret void, !dbg !1961
}

; Function Attrs: noredzone nounwind
define dso_local void @hmgetCommand(%struct.client*) local_unnamed_addr #0 !dbg !1962 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1968
  %3 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1968, !tbaa !1321
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1969
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1969, !tbaa !1467
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !1970
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1970, !tbaa !161
  %8 = tail call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %3, %struct.redisObject* %7) #6, !dbg !1971
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !1973
  br i1 %9, label %17, label %10, !dbg !1975

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 0, !dbg !1976
  %12 = load i32, i32* %11, align 8, !dbg !1976
  %13 = and i32 %12, 15, !dbg !1976
  %14 = icmp eq i32 %13, 4, !dbg !1977
  br i1 %14, label %17, label %15, !dbg !1978

; <label>:15:                                     ; preds = %10
  %16 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !1979, !tbaa !1342
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %16) #6, !dbg !1981
  br label %35, !dbg !1982

; <label>:17:                                     ; preds = %10, %1
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1983
  %19 = load i32, i32* %18, align 8, !dbg !1983, !tbaa !1537
  %20 = add nsw i32 %19, -2, !dbg !1984
  %21 = sext i32 %20 to i64, !dbg !1985
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %21) #6, !dbg !1986
  %22 = load i32, i32* %18, align 8, !dbg !1988, !tbaa !1537
  %23 = icmp sgt i32 %22, 2, !dbg !1991
  br i1 %23, label %24, label %35, !dbg !1992

; <label>:24:                                     ; preds = %17, %24
  %25 = phi i64 [ %31, %24 ], [ 2, %17 ]
  %26 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1993, !tbaa !1467
  %27 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 %25, !dbg !1995
  %28 = load %struct.redisObject*, %struct.redisObject** %27, align 8, !dbg !1995, !tbaa !161
  %29 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %28, i64 0, i32 2, !dbg !1996
  %30 = load i8*, i8** %29, align 8, !dbg !1996, !tbaa !166
  tail call fastcc void @addHashFieldToReply(%struct.client* nonnull %0, %struct.redisObject* %8, i8* %30) #8, !dbg !1997
  %31 = add nuw nsw i64 %25, 1, !dbg !1998
  %32 = load i32, i32* %18, align 8, !dbg !1988, !tbaa !1537
  %33 = sext i32 %32 to i64, !dbg !1991
  %34 = icmp slt i64 %31, %33, !dbg !1991
  br i1 %34, label %24, label %35, !dbg !1992, !llvm.loop !1999

; <label>:35:                                     ; preds = %24, %17, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2001
  ret void, !dbg !2001
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyRead(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hdelCommand(%struct.client*) local_unnamed_addr #0 !dbg !2002 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2012
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2012, !tbaa !1467
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !2014
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !2014, !tbaa !161
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !2015, !tbaa !1499
  %7 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #6, !dbg !2016
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !2018
  br i1 %8, label %94, label %9, !dbg !2019

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 4) #6, !dbg !2020
  %11 = icmp eq i32 %10, 0, !dbg !2020
  br i1 %11, label %12, label %94, !dbg !2021

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2023
  %14 = load i32, i32* %13, align 8, !dbg !2023, !tbaa !1537
  %15 = icmp sgt i32 %14, 2, !dbg !2026
  br i1 %15, label %16, label %92, !dbg !2027

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 0
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2
  %19 = bitcast i8** %18 to %struct.dict**
  br label %20, !dbg !2027

; <label>:20:                                     ; preds = %16, %58
  %21 = phi i64 [ 2, %16 ], [ %60, %58 ]
  %22 = phi i32 [ 0, %16 ], [ %59, %58 ]
  %23 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2028, !tbaa !1467
  %24 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %23, i64 %21, !dbg !2031
  %25 = load %struct.redisObject*, %struct.redisObject** %24, align 8, !dbg !2031, !tbaa !161
  %26 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %25, i64 0, i32 2, !dbg !2032
  %27 = load i8*, i8** %26, align 8, !dbg !2032, !tbaa !166
  %28 = tail call i32 @hashTypeDelete(%struct.redisObject* nonnull %7, i8* %27) #8, !dbg !2033
  %29 = icmp eq i32 %28, 0, !dbg !2033
  br i1 %29, label %58, label %30, !dbg !2034

; <label>:30:                                     ; preds = %20
  %31 = add nsw i32 %22, 1, !dbg !2035
  %32 = load i32, i32* %17, align 8, !dbg !2041
  %33 = lshr i32 %32, 4, !dbg !2041
  %34 = trunc i32 %33 to i4, !dbg !2042
  switch i4 %34, label %47 [
    i4 5, label %35
    i4 2, label %40
  ], !dbg !2042

; <label>:35:                                     ; preds = %30
  %36 = load i8*, i8** %18, align 8, !dbg !2043, !tbaa !166
  %37 = tail call i32 @ziplistLen(i8* %36) #6, !dbg !2044
  %38 = lshr i32 %37, 1, !dbg !2045
  %39 = zext i32 %38 to i64, !dbg !2044
  br label %48, !dbg !2046

; <label>:40:                                     ; preds = %30
  %41 = load %struct.dict*, %struct.dict** %19, align 8, !dbg !2047, !tbaa !166
  %42 = getelementptr inbounds %struct.dict, %struct.dict* %41, i64 0, i32 2, i64 0, i32 3, !dbg !2047
  %43 = load i64, i64* %42, align 8, !dbg !2047, !tbaa !730
  %44 = getelementptr inbounds %struct.dict, %struct.dict* %41, i64 0, i32 2, i64 1, i32 3, !dbg !2047
  %45 = load i64, i64* %44, align 8, !dbg !2047, !tbaa !730
  %46 = add i64 %45, %43, !dbg !2047
  br label %48

; <label>:47:                                     ; preds = %30
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 319, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2048
  tail call void @_exit(i32 1) #7, !dbg !2048
  unreachable, !dbg !2048

; <label>:48:                                     ; preds = %35, %40
  %49 = phi i64 [ %39, %35 ], [ %46, %40 ], !dbg !2049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2050
  %50 = icmp eq i64 %49, 0, !dbg !2051
  br i1 %50, label %51, label %58, !dbg !2052

; <label>:51:                                     ; preds = %48
  %52 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2053
  %53 = load %struct.redisDb*, %struct.redisDb** %52, align 8, !dbg !2053, !tbaa !1321
  %54 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2055, !tbaa !1467
  %55 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %54, i64 1, !dbg !2056
  %56 = load %struct.redisObject*, %struct.redisObject** %55, align 8, !dbg !2056, !tbaa !161
  %57 = tail call i32 @dbDelete(%struct.redisDb* %53, %struct.redisObject* %56) #6, !dbg !2057
  br label %64, !dbg !2058

; <label>:58:                                     ; preds = %20, %48
  %59 = phi i32 [ %31, %48 ], [ %22, %20 ], !dbg !2059
  %60 = add nuw nsw i64 %21, 1, !dbg !2060
  %61 = load i32, i32* %13, align 8, !dbg !2023, !tbaa !1537
  %62 = sext i32 %61 to i64, !dbg !2026
  %63 = icmp slt i64 %60, %62, !dbg !2026
  br i1 %63, label %20, label %64, !dbg !2027, !llvm.loop !2061

; <label>:64:                                     ; preds = %58, %51
  %65 = phi i32 [ %31, %51 ], [ %59, %58 ], !dbg !2059
  %66 = phi i32 [ 1, %51 ], [ 0, %58 ], !dbg !2059
  %67 = icmp eq i32 %65, 0, !dbg !2063
  br i1 %67, label %92, label %68, !dbg !2065

; <label>:68:                                     ; preds = %64
  %69 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2066
  %70 = load %struct.redisDb*, %struct.redisDb** %69, align 8, !dbg !2066, !tbaa !1321
  %71 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2068, !tbaa !1467
  %72 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %71, i64 1, !dbg !2069
  %73 = load %struct.redisObject*, %struct.redisObject** %72, align 8, !dbg !2069, !tbaa !161
  tail call void @signalModifiedKey(%struct.redisDb* %70, %struct.redisObject* %73) #6, !dbg !2070
  %74 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2071, !tbaa !1467
  %75 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %74, i64 1, !dbg !2072
  %76 = load %struct.redisObject*, %struct.redisObject** %75, align 8, !dbg !2072, !tbaa !161
  %77 = load %struct.redisDb*, %struct.redisDb** %69, align 8, !dbg !2073, !tbaa !1321
  %78 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %77, i64 0, i32 5, !dbg !2074
  %79 = load i32, i32* %78, align 8, !dbg !2074, !tbaa !1520
  tail call void @notifyKeyspaceEvent(i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), %struct.redisObject* %76, i32 %79) #6, !dbg !2075
  %80 = icmp eq i32 %66, 0, !dbg !2076
  br i1 %80, label %88, label %81, !dbg !2078

; <label>:81:                                     ; preds = %68
  %82 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2079, !tbaa !1467
  %83 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %82, i64 1, !dbg !2080
  %84 = load %struct.redisObject*, %struct.redisObject** %83, align 8, !dbg !2080, !tbaa !161
  %85 = load %struct.redisDb*, %struct.redisDb** %69, align 8, !dbg !2081, !tbaa !1321
  %86 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %85, i64 0, i32 5, !dbg !2082
  %87 = load i32, i32* %86, align 8, !dbg !2082, !tbaa !1520
  tail call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), %struct.redisObject* %84, i32 %87) #6, !dbg !2083
  br label %88, !dbg !2083

; <label>:88:                                     ; preds = %68, %81
  %89 = sext i32 %65 to i64, !dbg !2084
  %90 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2085, !tbaa !1524
  %91 = add nsw i64 %90, %89, !dbg !2085
  store i64 %91, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2085, !tbaa !1524
  br label %92, !dbg !2086

; <label>:92:                                     ; preds = %64, %12, %88
  %93 = phi i64 [ %89, %88 ], [ 0, %12 ], [ 0, %64 ], !dbg !2087
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %93) #6, !dbg !2088
  br label %94, !dbg !2089

; <label>:94:                                     ; preds = %1, %9, %92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2089
  ret void, !dbg !2089
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyWriteOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @dbDelete(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hlenCommand(%struct.client*) local_unnamed_addr #0 !dbg !2090 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2095
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2095, !tbaa !1467
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !2097
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !2097, !tbaa !161
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !2098, !tbaa !1499
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #6, !dbg !2099
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !2101
  br i1 %8, label %35, label %9, !dbg !2102

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 4) #6, !dbg !2103
  %11 = icmp eq i32 %10, 0, !dbg !2103
  br i1 %11, label %12, label %35, !dbg !2104

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 0, !dbg !2108
  %14 = load i32, i32* %13, align 8, !dbg !2108
  %15 = lshr i32 %14, 4, !dbg !2108
  %16 = trunc i32 %15 to i4, !dbg !2109
  switch i4 %16, label %32 [
    i4 5, label %17
    i4 2, label %23
  ], !dbg !2109

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !2110
  %19 = load i8*, i8** %18, align 8, !dbg !2110, !tbaa !166
  %20 = tail call i32 @ziplistLen(i8* %19) #6, !dbg !2111
  %21 = lshr i32 %20, 1, !dbg !2112
  %22 = zext i32 %21 to i64, !dbg !2111
  br label %33, !dbg !2113

; <label>:23:                                     ; preds = %12
  %24 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !2114
  %25 = bitcast i8** %24 to %struct.dict**, !dbg !2114
  %26 = load %struct.dict*, %struct.dict** %25, align 8, !dbg !2114, !tbaa !166
  %27 = getelementptr inbounds %struct.dict, %struct.dict* %26, i64 0, i32 2, i64 0, i32 3, !dbg !2114
  %28 = load i64, i64* %27, align 8, !dbg !2114, !tbaa !730
  %29 = getelementptr inbounds %struct.dict, %struct.dict* %26, i64 0, i32 2, i64 1, i32 3, !dbg !2114
  %30 = load i64, i64* %29, align 8, !dbg !2114, !tbaa !730
  %31 = add i64 %30, %28, !dbg !2114
  br label %33

; <label>:32:                                     ; preds = %12
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 319, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2115
  tail call void @_exit(i32 1) #7, !dbg !2115
  unreachable, !dbg !2115

; <label>:33:                                     ; preds = %17, %23
  %34 = phi i64 [ %22, %17 ], [ %31, %23 ], !dbg !2116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2117
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %34) #6, !dbg !2118
  br label %35, !dbg !2119

; <label>:35:                                     ; preds = %1, %9, %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2119
  ret void, !dbg !2119
}

; Function Attrs: noredzone nounwind
define dso_local void @hstrlenCommand(%struct.client*) local_unnamed_addr #0 !dbg !2120 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2125
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2125, !tbaa !1467
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !2127
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !2127, !tbaa !161
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !2128, !tbaa !1499
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #6, !dbg !2129
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !2131
  br i1 %8, label %19, label %9, !dbg !2132

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 4) #6, !dbg !2133
  %11 = icmp eq i32 %10, 0, !dbg !2133
  br i1 %11, label %12, label %19, !dbg !2134

; <label>:12:                                     ; preds = %9
  %13 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2135, !tbaa !1467
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 2, !dbg !2136
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !2136, !tbaa !161
  %16 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %15, i64 0, i32 2, !dbg !2137
  %17 = load i8*, i8** %16, align 8, !dbg !2137, !tbaa !166
  %18 = tail call i64 @hashTypeGetValueLength(%struct.redisObject* nonnull %7, i8* %17) #8, !dbg !2138
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %18) #6, !dbg !2139
  br label %19, !dbg !2140

; <label>:19:                                     ; preds = %1, %9, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2140
  ret void, !dbg !2140
}

; Function Attrs: noredzone nounwind
define dso_local void @genericHgetallCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !2141 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2156
  %4 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2156, !tbaa !1467
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 1, !dbg !2158
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !2158, !tbaa !161
  %7 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 13), align 8, !dbg !2159, !tbaa !2160
  %8 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %6, %struct.redisObject* %7) #6, !dbg !2161
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !2163
  br i1 %9, label %91, label %10, !dbg !2164

; <label>:10:                                     ; preds = %2
  %11 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %8, i32 4) #6, !dbg !2165
  %12 = icmp eq i32 %11, 0, !dbg !2165
  br i1 %12, label %13, label %91, !dbg !2166

; <label>:13:                                     ; preds = %10
  %14 = and i32 %1, 1, !dbg !2167
  %15 = icmp eq i32 %14, 0, !dbg !2167
  %16 = and i32 %1, 2, !dbg !2169
  %17 = icmp eq i32 %16, 0, !dbg !2169
  %18 = lshr exact i32 %16, 1, !dbg !2171
  %19 = add nuw nsw i32 %18, %14, !dbg !2171
  %20 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 0, !dbg !2175
  %21 = load i32, i32* %20, align 8, !dbg !2175
  %22 = lshr i32 %21, 4, !dbg !2175
  %23 = trunc i32 %22 to i4, !dbg !2176
  switch i4 %23, label %39 [
    i4 5, label %24
    i4 2, label %30
  ], !dbg !2176

; <label>:24:                                     ; preds = %13
  %25 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !2177
  %26 = load i8*, i8** %25, align 8, !dbg !2177, !tbaa !166
  %27 = tail call i32 @ziplistLen(i8* %26) #6, !dbg !2178
  %28 = lshr i32 %27, 1, !dbg !2179
  %29 = zext i32 %28 to i64, !dbg !2178
  br label %40, !dbg !2180

; <label>:30:                                     ; preds = %13
  %31 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !2181
  %32 = bitcast i8** %31 to %struct.dict**, !dbg !2181
  %33 = load %struct.dict*, %struct.dict** %32, align 8, !dbg !2181, !tbaa !166
  %34 = getelementptr inbounds %struct.dict, %struct.dict* %33, i64 0, i32 2, i64 0, i32 3, !dbg !2181
  %35 = load i64, i64* %34, align 8, !dbg !2181, !tbaa !730
  %36 = getelementptr inbounds %struct.dict, %struct.dict* %33, i64 0, i32 2, i64 1, i32 3, !dbg !2181
  %37 = load i64, i64* %36, align 8, !dbg !2181, !tbaa !730
  %38 = add i64 %37, %35, !dbg !2181
  br label %40

; <label>:39:                                     ; preds = %13
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 319, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2182
  tail call void @_exit(i32 1) #7, !dbg !2182
  unreachable, !dbg !2182

; <label>:40:                                     ; preds = %24, %30
  %41 = phi i64 [ %29, %24 ], [ %38, %30 ], !dbg !2183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2184
  %42 = trunc i64 %41 to i32, !dbg !2185
  %43 = mul i32 %19, %42, !dbg !2185
  %44 = sext i32 %43 to i64, !dbg !2187
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %44) #6, !dbg !2188
  %45 = tail call i8* @zmalloc(i64 48) #6, !dbg !2191
  %46 = bitcast i8* %45 to %struct.hashTypeIterator*, !dbg !2191
  %47 = bitcast i8* %45 to %struct.redisObject**, !dbg !2193
  store %struct.redisObject* %8, %struct.redisObject** %47, align 8, !dbg !2194, !tbaa !923
  %48 = load i32, i32* %20, align 8, !dbg !2195
  %49 = lshr i32 %48, 4, !dbg !2195
  %50 = and i32 %49, 15, !dbg !2195
  %51 = getelementptr inbounds i8, i8* %45, i64 8, !dbg !2196
  %52 = bitcast i8* %51 to i32*, !dbg !2196
  store i32 %50, i32* %52, align 8, !dbg !2197, !tbaa !928
  %53 = trunc i32 %49 to i4, !dbg !2198
  switch i4 %53, label %64 [
    i4 5, label %54
    i4 2, label %57
  ], !dbg !2198

; <label>:54:                                     ; preds = %40
  %55 = getelementptr inbounds i8, i8* %45, i64 16, !dbg !2199
  %56 = bitcast i8* %55 to <2 x i8*>*, !dbg !2200
  store <2 x i8*> zeroinitializer, <2 x i8*>* %56, align 8, !dbg !2200, !tbaa !161
  br label %65, !dbg !2201

; <label>:57:                                     ; preds = %40
  %58 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !2202
  %59 = bitcast i8** %58 to %struct.dict**, !dbg !2202
  %60 = load %struct.dict*, %struct.dict** %59, align 8, !dbg !2202, !tbaa !166
  %61 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %60) #6, !dbg !2203
  %62 = getelementptr inbounds i8, i8* %45, i64 32, !dbg !2204
  %63 = bitcast i8* %62 to %struct.dictIterator**, !dbg !2204
  store %struct.dictIterator* %61, %struct.dictIterator** %63, align 8, !dbg !2205, !tbaa !941
  br label %65

; <label>:64:                                     ; preds = %40
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 335, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2206
  tail call void @_exit(i32 1) #7, !dbg !2206
  unreachable, !dbg !2206

; <label>:65:                                     ; preds = %54, %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2207
  %66 = tail call i32 @hashTypeNext(%struct.hashTypeIterator* nonnull %46) #8, !dbg !2209
  %67 = icmp eq i32 %66, -1, !dbg !2210
  br i1 %67, label %80, label %68, !dbg !2211

; <label>:68:                                     ; preds = %65, %76
  %69 = phi i32 [ %77, %76 ], [ 0, %65 ]
  br i1 %15, label %72, label %70, !dbg !2212

; <label>:70:                                     ; preds = %68
  tail call fastcc void @addHashIteratorCursorToReply(%struct.client* %0, %struct.hashTypeIterator* %46, i32 1) #8, !dbg !2214
  %71 = add nsw i32 %69, 1, !dbg !2217
  br label %72, !dbg !2218

; <label>:72:                                     ; preds = %68, %70
  %73 = phi i32 [ %71, %70 ], [ %69, %68 ], !dbg !2219
  br i1 %17, label %76, label %74, !dbg !2220

; <label>:74:                                     ; preds = %72
  tail call fastcc void @addHashIteratorCursorToReply(%struct.client* %0, %struct.hashTypeIterator* %46, i32 2) #8, !dbg !2221
  %75 = add nsw i32 %73, 1, !dbg !2224
  br label %76, !dbg !2225

; <label>:76:                                     ; preds = %72, %74
  %77 = phi i32 [ %75, %74 ], [ %73, %72 ], !dbg !2226
  %78 = tail call i32 @hashTypeNext(%struct.hashTypeIterator* %46) #8, !dbg !2209
  %79 = icmp eq i32 %78, -1, !dbg !2210
  br i1 %79, label %80, label %68, !dbg !2211, !llvm.loop !2227

; <label>:80:                                     ; preds = %76, %65
  %81 = phi i32 [ 0, %65 ], [ %77, %76 ], !dbg !2229
  %82 = load i32, i32* %52, align 8, !dbg !2232, !tbaa !928
  %83 = icmp eq i32 %82, 2, !dbg !2233
  br i1 %83, label %84, label %88, !dbg !2234

; <label>:84:                                     ; preds = %80
  %85 = getelementptr inbounds i8, i8* %45, i64 32, !dbg !2235
  %86 = bitcast i8* %85 to %struct.dictIterator**, !dbg !2235
  %87 = load %struct.dictIterator*, %struct.dictIterator** %86, align 8, !dbg !2235, !tbaa !941
  tail call void @dictReleaseIterator(%struct.dictIterator* %87) #6, !dbg !2236
  br label %88, !dbg !2236

; <label>:88:                                     ; preds = %80, %84
  tail call void @zfree(i8* nonnull %45) #6, !dbg !2237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2238
  %89 = icmp eq i32 %81, %43, !dbg !2239
  br i1 %89, label %91, label %90, !dbg !2239

; <label>:90:                                     ; preds = %88
  tail call void @_serverAssert(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 798) #6, !dbg !2239
  tail call void @_exit(i32 1) #7, !dbg !2239
  unreachable, !dbg !2239

; <label>:91:                                     ; preds = %88, %2, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2240
  ret void, !dbg !2240
}

; Function Attrs: noredzone nounwind
define internal fastcc void @addHashIteratorCursorToReply(%struct.client*, %struct.hashTypeIterator* nocapture readonly, i32) unnamed_addr #0 !dbg !2241 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %1, i64 0, i32 1, !dbg !2259
  %8 = load i32, i32* %7, align 8, !dbg !2259, !tbaa !928
  switch i32 %8, label %56 [
    i32 5, label %9
    i32 2, label %21
  ], !dbg !2260

; <label>:9:                                      ; preds = %3
  %10 = bitcast i8** %4 to i8*, !dbg !2261
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #5, !dbg !2261
  store i8* null, i8** %4, align 8, !dbg !2262, !tbaa !161
  %11 = bitcast i32* %5 to i8*, !dbg !2263
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #5, !dbg !2263
  store i32 -1, i32* %5, align 4, !dbg !2264, !tbaa !200
  %12 = bitcast i64* %6 to i8*, !dbg !2265
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #5, !dbg !2265
  store i64 9223372036854775807, i64* %6, align 8, !dbg !2266, !tbaa !428
  call void @hashTypeCurrentFromZiplist(%struct.hashTypeIterator* nonnull %1, i32 %2, i8** nonnull %4, i32* nonnull %5, i64* nonnull %6) #8, !dbg !2267
  %13 = load i8*, i8** %4, align 8, !dbg !2268, !tbaa !161
  %14 = icmp eq i8* %13, null, !dbg !2268
  br i1 %14, label %18, label %15, !dbg !2270

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %5, align 4, !dbg !2271, !tbaa !200
  %17 = zext i32 %16 to i64, !dbg !2271
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* nonnull %13, i64 %17) #6, !dbg !2272
  br label %20, !dbg !2272

; <label>:18:                                     ; preds = %9
  %19 = load i64, i64* %6, align 8, !dbg !2273, !tbaa !428
  call void @addReplyBulkLongLong(%struct.client* %0, i64 %19) #6, !dbg !2274
  br label %20

; <label>:20:                                     ; preds = %18, %15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #5, !dbg !2275
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #5, !dbg !2275
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #5, !dbg !2275
  br label %57, !dbg !2276

; <label>:21:                                     ; preds = %3
  %22 = and i32 %2, 1, !dbg !2280
  %23 = icmp eq i32 %22, 0, !dbg !2280
  %24 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %1, i64 0, i32 5, !dbg !2281
  %25 = load %struct.dictEntry*, %struct.dictEntry** %24, align 8, !dbg !2281, !tbaa !1007
  %26 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %25, i64 0, i32 0, !dbg !2282
  %27 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %25, i64 0, i32 1, i32 0, !dbg !2283
  %28 = select i1 %23, i8** %27, i8** %26, !dbg !2284
  %29 = load i8*, i8** %28, align 8, !dbg !2281, !tbaa !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2285
  %30 = getelementptr inbounds i8, i8* %29, i64 -1, !dbg !2289
  %31 = load i8, i8* %30, align 1, !dbg !2289, !tbaa !182
  %32 = trunc i8 %31 to i3, !dbg !2291
  switch i3 %32, label %54 [
    i3 0, label %33
    i3 1, label %36
    i3 2, label %40
    i3 3, label %45
    i3 -4, label %50
  ], !dbg !2291

; <label>:33:                                     ; preds = %21
  %34 = lshr i8 %31, 3, !dbg !2292
  %35 = zext i8 %34 to i64, !dbg !2292
  br label %54, !dbg !2293

; <label>:36:                                     ; preds = %21
  %37 = getelementptr inbounds i8, i8* %29, i64 -3, !dbg !2294
  %38 = load i8, i8* %37, align 1, !dbg !2295, !tbaa !182
  %39 = zext i8 %38 to i64, !dbg !2294
  br label %54, !dbg !2296

; <label>:40:                                     ; preds = %21
  %41 = getelementptr inbounds i8, i8* %29, i64 -5, !dbg !2297
  %42 = bitcast i8* %41 to i16*, !dbg !2298
  %43 = load i16, i16* %42, align 1, !dbg !2298, !tbaa !195
  %44 = zext i16 %43 to i64, !dbg !2297
  br label %54, !dbg !2299

; <label>:45:                                     ; preds = %21
  %46 = getelementptr inbounds i8, i8* %29, i64 -9, !dbg !2300
  %47 = bitcast i8* %46 to i32*, !dbg !2301
  %48 = load i32, i32* %47, align 1, !dbg !2301, !tbaa !200
  %49 = zext i32 %48 to i64, !dbg !2300
  br label %54, !dbg !2302

; <label>:50:                                     ; preds = %21
  %51 = getelementptr inbounds i8, i8* %29, i64 -17, !dbg !2303
  %52 = bitcast i8* %51 to i64*, !dbg !2304
  %53 = load i64, i64* %52, align 1, !dbg !2304, !tbaa !204
  br label %54, !dbg !2305

; <label>:54:                                     ; preds = %21, %33, %36, %40, %45, %50
  %55 = phi i64 [ %53, %50 ], [ %49, %45 ], [ %44, %40 ], [ %39, %36 ], [ %35, %33 ], [ 0, %21 ], !dbg !2306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2307
  tail call void @addReplyBulkCBuffer(%struct.client* %0, i8* %29, i64 %55) #6, !dbg !2308
  br label %57

; <label>:56:                                     ; preds = %3
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 766, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2309
  tail call void @_exit(i32 1) #7, !dbg !2309
  unreachable, !dbg !2309

; <label>:57:                                     ; preds = %54, %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2311
  ret void, !dbg !2311
}

; Function Attrs: noredzone nounwind
define dso_local void @hkeysCommand(%struct.client*) local_unnamed_addr #0 !dbg !2312 {
  tail call void @genericHgetallCommand(%struct.client* %0, i32 1) #8, !dbg !2316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2317
  ret void, !dbg !2317
}

; Function Attrs: noredzone nounwind
define dso_local void @hvalsCommand(%struct.client*) local_unnamed_addr #0 !dbg !2318 {
  tail call void @genericHgetallCommand(%struct.client* %0, i32 2) #8, !dbg !2322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2323
  ret void, !dbg !2323
}

; Function Attrs: noredzone nounwind
define dso_local void @hgetallCommand(%struct.client*) local_unnamed_addr #0 !dbg !2324 {
  tail call void @genericHgetallCommand(%struct.client* %0, i32 3) #8, !dbg !2328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2329
  ret void, !dbg !2329
}

; Function Attrs: noredzone nounwind
define dso_local void @hexistsCommand(%struct.client*) local_unnamed_addr #0 !dbg !2330 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2335
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2335, !tbaa !1467
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !2337
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !2337, !tbaa !161
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !2338, !tbaa !1499
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #6, !dbg !2339
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !2341
  br i1 %8, label %23, label %9, !dbg !2342

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 4) #6, !dbg !2343
  %11 = icmp eq i32 %10, 0, !dbg !2343
  br i1 %11, label %12, label %23, !dbg !2344

; <label>:12:                                     ; preds = %9
  %13 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2345, !tbaa !1467
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 2, !dbg !2346
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !2346, !tbaa !161
  %16 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %15, i64 0, i32 2, !dbg !2347
  %17 = load i8*, i8** %16, align 8, !dbg !2347, !tbaa !166
  %18 = tail call i32 @hashTypeExists(%struct.redisObject* nonnull %7, i8* %17) #8, !dbg !2348
  %19 = icmp eq i32 %18, 0, !dbg !2348
  %20 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !2349
  %21 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !2350
  %22 = select i1 %19, %struct.redisObject* %21, %struct.redisObject* %20, !dbg !2348
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %22) #6, !dbg !2351
  br label %23, !dbg !2352

; <label>:23:                                     ; preds = %1, %9, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2352
  ret void, !dbg !2352
}

; Function Attrs: noredzone nounwind
define dso_local void @hscanCommand(%struct.client*) local_unnamed_addr #0 !dbg !2353 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !2359
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !2359
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2360
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !2360, !tbaa !1467
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 2, !dbg !2362
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !2362, !tbaa !161
  %8 = call i32 @parseScanCursorOrReply(%struct.client* %0, %struct.redisObject* %7, i64* nonnull %2) #6, !dbg !2364
  %9 = icmp eq i32 %8, -1, !dbg !2365
  br i1 %9, label %22, label %10, !dbg !2366

; <label>:10:                                     ; preds = %1
  %11 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !2367, !tbaa !1467
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 1, !dbg !2369
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !2369, !tbaa !161
  %14 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 45), align 8, !dbg !2370, !tbaa !2371
  %15 = call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* nonnull %0, %struct.redisObject* %13, %struct.redisObject* %14) #6, !dbg !2372
  %16 = icmp eq %struct.redisObject* %15, null, !dbg !2374
  br i1 %16, label %22, label %17, !dbg !2375

; <label>:17:                                     ; preds = %10
  %18 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %15, i32 4) #6, !dbg !2376
  %19 = icmp eq i32 %18, 0, !dbg !2376
  br i1 %19, label %20, label %22, !dbg !2377

; <label>:20:                                     ; preds = %17
  %21 = load i64, i64* %2, align 8, !dbg !2378, !tbaa !204
  call void @scanGenericCommand(%struct.client* nonnull %0, %struct.redisObject* nonnull %15, i64 %21) #6, !dbg !2379
  br label %22, !dbg !2380

; <label>:22:                                     ; preds = %10, %17, %1, %20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !2380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2380
  ret void, !dbg !2380
}

; Function Attrs: noredzone
declare dso_local i32 @parseScanCursorOrReply(%struct.client*, %struct.redisObject*, i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @scanGenericCommand(%struct.client*, %struct.redisObject*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nobuiltin noredzone noreturn nounwind }
attributes #8 = { nobuiltin noredzone }

!llvm.module.flags = !{!121, !122, !123}
!llvm.ident = !{!124}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/t_hash.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !7, !9, !78, !80, !81, !94, !104, !114}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !11, line: 82, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !11, line: 76, size: 768, elements: !13)
!13 = !{!14, !45, !46, !76, !77}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !12, file: !11, line: 77, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !11, line: 65, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !11, line: 58, size: 384, elements: !18)
!18 = !{!19, !30, !34, !35, !40, !44}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !17, file: !11, line: 59, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !28}
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !24, line: 60, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !26, line: 105, baseType: !27)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !17, file: !11, line: 60, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DISubroutineType(types: !33)
!33 = !{!4, !4, !28}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !17, file: !11, line: 61, baseType: !31, size: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !17, file: !11, line: 62, baseType: !36, size: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !4, !28, !28}
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !17, file: !11, line: 63, baseType: !41, size: 64, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !4, !4}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !17, file: !11, line: 64, baseType: !41, size: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !12, file: !11, line: 78, baseType: !4, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !12, file: !11, line: 79, baseType: !47, size: 512, offset: 128)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 512, elements: !74)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !11, line: 74, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !11, line: 69, size: 256, elements: !50)
!50 = !{!51, !71, !72, !73}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !49, file: !11, line: 70, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !11, line: 56, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !11, line: 47, size: 192, elements: !56)
!56 = !{!57, !58, !69}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !55, file: !11, line: 48, baseType: !4, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !55, file: !11, line: 54, baseType: !59, size: 64, offset: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !55, file: !11, line: 49, size: 64, elements: !60)
!60 = !{!61, !62, !63, !67}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !59, file: !11, line: 50, baseType: !4, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !59, file: !11, line: 51, baseType: !23, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !59, file: !11, line: 52, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !24, line: 56, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !26, line: 103, baseType: !66)
!66 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !59, file: !11, line: 53, baseType: !68, size: 64)
!68 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !55, file: !11, line: 55, baseType: !70, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !49, file: !11, line: 71, baseType: !27, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !49, file: !11, line: 72, baseType: !27, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !49, file: !11, line: 73, baseType: !27, size: 64, offset: 192)
!74 = !{!75}
!75 = !DISubrange(count: 2)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !12, file: !11, line: 80, baseType: !66, size: 64, offset: 640)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !12, file: !11, line: 81, baseType: !27, size: 64, offset: 704)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!80 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !83, line: 51, size: 24, elements: !84)
!83 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!84 = !{!85, !88, !89, !90}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !82, file: !83, line: 52, baseType: !86, size: 8)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !24, line: 24, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !26, line: 43, baseType: !6)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !82, file: !83, line: 53, baseType: !86, size: 8, offset: 8)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !82, file: !83, line: 54, baseType: !6, size: 8, offset: 16)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !82, file: !83, line: 55, baseType: !91, offset: 24)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: -1)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !83, line: 57, size: 40, elements: !96)
!96 = !{!97, !101, !102, !103}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !95, file: !83, line: 58, baseType: !98, size: 16)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !24, line: 36, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !26, line: 57, baseType: !100)
!100 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !95, file: !83, line: 59, baseType: !98, size: 16, offset: 16)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !95, file: !83, line: 60, baseType: !6, size: 8, offset: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !95, file: !83, line: 61, baseType: !91, offset: 40)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !83, line: 63, size: 72, elements: !106)
!106 = !{!107, !111, !112, !113}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !105, file: !83, line: 64, baseType: !108, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !24, line: 48, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !26, line: 79, baseType: !110)
!110 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !105, file: !83, line: 65, baseType: !108, size: 32, offset: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !83, line: 66, baseType: !6, size: 8, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !105, file: !83, line: 67, baseType: !91, offset: 72)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !83, line: 69, size: 136, elements: !116)
!116 = !{!117, !118, !119, !120}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !115, file: !83, line: 70, baseType: !23, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !115, file: !83, line: 71, baseType: !23, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !115, file: !83, line: 72, baseType: !6, size: 8, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !115, file: !83, line: 73, baseType: !91, offset: 136)
!121 = !{i32 2, !"Dwarf Version", i32 4}
!122 = !{i32 2, !"Debug Info Version", i32 3}
!123 = !{i32 1, !"wchar_size", i32 4}
!124 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!125 = distinct !DISubprogram(name: "hashTypeTryConversion", scope: !1, file: !1, line: 40, type: !126, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !139)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !128, !138, !39, !39}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !130, line: 622, baseType: !131)
!130 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !130, line: 614, size: 128, elements: !132)
!132 = !{!133, !134, !135, !136, !137}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !131, file: !130, line: 615, baseType: !110, size: 4, flags: DIFlagBitField, extraData: i64 0)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !131, file: !130, line: 616, baseType: !110, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !131, file: !130, line: 617, baseType: !110, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !131, file: !130, line: 620, baseType: !39, size: 32, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !131, file: !130, line: 621, baseType: !4, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!139 = !{!140, !141, !142, !143, !144}
!140 = !DILocalVariable(name: "o", arg: 1, scope: !125, file: !1, line: 40, type: !128)
!141 = !DILocalVariable(name: "argv", arg: 2, scope: !125, file: !1, line: 40, type: !138)
!142 = !DILocalVariable(name: "start", arg: 3, scope: !125, file: !1, line: 40, type: !39)
!143 = !DILocalVariable(name: "end", arg: 4, scope: !125, file: !1, line: 40, type: !39)
!144 = !DILocalVariable(name: "i", scope: !125, file: !1, line: 41, type: !39)
!145 = !DILocation(line: 40, column: 34, scope: !125)
!146 = !DILocation(line: 40, column: 44, scope: !125)
!147 = !DILocation(line: 40, column: 54, scope: !125)
!148 = !DILocation(line: 40, column: 65, scope: !125)
!149 = !DILocation(line: 43, column: 12, scope: !150)
!150 = distinct !DILexicalBlock(scope: !125, file: !1, line: 43, column: 9)
!151 = !DILocation(line: 43, column: 21, scope: !150)
!152 = !DILocation(line: 45, column: 23, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !1, line: 45, column: 5)
!154 = distinct !DILexicalBlock(scope: !125, file: !1, line: 45, column: 5)
!155 = !DILocation(line: 43, column: 9, scope: !125)
!156 = !DILocation(line: 41, column: 9, scope: !125)
!157 = !DILocation(line: 45, column: 5, scope: !154)
!158 = !DILocation(line: 46, column: 13, scope: !159)
!159 = distinct !DILexicalBlock(scope: !160, file: !1, line: 46, column: 13)
!160 = distinct !DILexicalBlock(scope: !153, file: !1, line: 45, column: 36)
!161 = !{!162, !162, i64 0}
!162 = !{!"any pointer", !163, i64 0}
!163 = !{!"omnipotent char", !164, i64 0}
!164 = !{!"Simple C/C++ TBAA"}
!165 = !DILocation(line: 47, column: 29, scope: !159)
!166 = !{!167, !162, i64 8}
!167 = !{!"redisObject", !168, i64 0, !168, i64 0, !168, i64 1, !168, i64 4, !162, i64 8}
!168 = !{!"int", !163, i64 0}
!169 = !DILocalVariable(name: "s", arg: 1, scope: !170, file: !83, line: 87, type: !175)
!170 = distinct !DISubprogram(name: "sdslen", scope: !83, file: !83, line: 87, type: !171, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !177)
!171 = !DISubroutineType(types: !172)
!172 = !{!173, !175}
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !174, line: 58, baseType: !27)
!174 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !83, line: 43, baseType: !7)
!177 = !{!169, !178}
!178 = !DILocalVariable(name: "flags", scope: !170, file: !83, line: 88, type: !6)
!179 = !DILocation(line: 87, column: 39, scope: !170, inlinedAt: !180)
!180 = distinct !DILocation(line: 47, column: 13, scope: !159)
!181 = !DILocation(line: 88, column: 27, scope: !170, inlinedAt: !180)
!182 = !{!163, !163, i64 0}
!183 = !DILocation(line: 88, column: 19, scope: !170, inlinedAt: !180)
!184 = !DILocation(line: 89, column: 5, scope: !170, inlinedAt: !180)
!185 = !DILocation(line: 102, column: 1, scope: !170, inlinedAt: !180)
!186 = !DILocation(line: 46, column: 13, scope: !160)
!187 = !DILocation(line: 91, column: 20, scope: !188, inlinedAt: !180)
!188 = distinct !DILexicalBlock(scope: !170, file: !83, line: 89, column: 33)
!189 = !DILocation(line: 91, column: 13, scope: !188, inlinedAt: !180)
!190 = !DILocation(line: 93, column: 20, scope: !188, inlinedAt: !180)
!191 = !DILocation(line: 93, column: 34, scope: !188, inlinedAt: !180)
!192 = !DILocation(line: 93, column: 13, scope: !188, inlinedAt: !180)
!193 = !DILocation(line: 95, column: 20, scope: !188, inlinedAt: !180)
!194 = !DILocation(line: 95, column: 35, scope: !188, inlinedAt: !180)
!195 = !{!196, !196, i64 0}
!196 = !{!"short", !163, i64 0}
!197 = !DILocation(line: 95, column: 13, scope: !188, inlinedAt: !180)
!198 = !DILocation(line: 97, column: 20, scope: !188, inlinedAt: !180)
!199 = !DILocation(line: 97, column: 35, scope: !188, inlinedAt: !180)
!200 = !{!168, !168, i64 0}
!201 = !DILocation(line: 97, column: 13, scope: !188, inlinedAt: !180)
!202 = !DILocation(line: 99, column: 20, scope: !188, inlinedAt: !180)
!203 = !DILocation(line: 99, column: 35, scope: !188, inlinedAt: !180)
!204 = !{!205, !205, i64 0}
!205 = !{!"long", !163, i64 0}
!206 = !DILocation(line: 99, column: 13, scope: !188, inlinedAt: !180)
!207 = !DILocation(line: 0, scope: !188, inlinedAt: !180)
!208 = !DILocation(line: 47, column: 34, scope: !159)
!209 = !DILocalVariable(name: "o", arg: 1, scope: !210, file: !1, line: 500, type: !128)
!210 = distinct !DISubprogram(name: "hashTypeConvert", scope: !1, file: !1, line: 500, type: !211, isLocal: false, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !213)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !128, !39}
!213 = !{!209, !214}
!214 = !DILocalVariable(name: "enc", arg: 2, scope: !210, file: !1, line: 500, type: !39)
!215 = !DILocation(line: 500, column: 28, scope: !210, inlinedAt: !216)
!216 = distinct !DILocation(line: 49, column: 13, scope: !217)
!217 = distinct !DILexicalBlock(scope: !159, file: !1, line: 48, column: 9)
!218 = !DILocation(line: 500, column: 35, scope: !210, inlinedAt: !216)
!219 = !DILocation(line: 501, column: 12, scope: !220, inlinedAt: !216)
!220 = distinct !DILexicalBlock(scope: !210, file: !1, line: 501, column: 9)
!221 = !DILocation(line: 501, column: 9, scope: !210, inlinedAt: !216)
!222 = !DILocation(line: 504, column: 9, scope: !223, inlinedAt: !216)
!223 = distinct !DILexicalBlock(scope: !224, file: !1, line: 503, column: 48)
!224 = distinct !DILexicalBlock(scope: !220, file: !1, line: 503, column: 16)
!225 = !DILocation(line: 506, column: 9, scope: !226, inlinedAt: !216)
!226 = distinct !DILexicalBlock(scope: !224, file: !1, line: 505, column: 12)
!227 = !DILocation(line: 502, column: 9, scope: !228, inlinedAt: !216)
!228 = distinct !DILexicalBlock(scope: !220, file: !1, line: 501, column: 46)
!229 = !DILocation(line: 508, column: 1, scope: !210, inlinedAt: !216)
!230 = !DILocation(line: 50, column: 13, scope: !217)
!231 = !DILocation(line: 45, column: 32, scope: !153)
!232 = distinct !{!232, !157, !233}
!233 = !DILocation(line: 52, column: 5, scope: !154)
!234 = !DILocation(line: 53, column: 1, scope: !125)
!235 = !DILocation(line: 500, column: 28, scope: !210)
!236 = !DILocation(line: 500, column: 35, scope: !210)
!237 = !DILocation(line: 501, column: 12, scope: !220)
!238 = !DILocation(line: 501, column: 9, scope: !210)
!239 = !DILocation(line: 502, column: 9, scope: !228)
!240 = !DILocation(line: 508, column: 1, scope: !210)
!241 = !DILocation(line: 504, column: 9, scope: !223)
!242 = !DILocation(line: 506, column: 9, scope: !226)
!243 = distinct !DISubprogram(name: "hashTypeGetFromZiplist", scope: !1, file: !1, line: 57, type: !244, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !250)
!244 = !DISubroutineType(types: !245)
!245 = !{!39, !128, !176, !246, !247, !248}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!250 = !{!251, !252, !253, !254, !255, !256, !257, !258, !259}
!251 = !DILocalVariable(name: "o", arg: 1, scope: !243, file: !1, line: 57, type: !128)
!252 = !DILocalVariable(name: "field", arg: 2, scope: !243, file: !1, line: 57, type: !176)
!253 = !DILocalVariable(name: "vstr", arg: 3, scope: !243, file: !1, line: 58, type: !246)
!254 = !DILocalVariable(name: "vlen", arg: 4, scope: !243, file: !1, line: 59, type: !247)
!255 = !DILocalVariable(name: "vll", arg: 5, scope: !243, file: !1, line: 60, type: !248)
!256 = !DILocalVariable(name: "zl", scope: !243, file: !1, line: 62, type: !5)
!257 = !DILocalVariable(name: "fptr", scope: !243, file: !1, line: 62, type: !5)
!258 = !DILocalVariable(name: "vptr", scope: !243, file: !1, line: 62, type: !5)
!259 = !DILocalVariable(name: "ret", scope: !243, file: !1, line: 63, type: !39)
!260 = !DILocation(line: 57, column: 34, scope: !243)
!261 = !DILocation(line: 57, column: 41, scope: !243)
!262 = !DILocation(line: 58, column: 44, scope: !243)
!263 = !DILocation(line: 59, column: 42, scope: !243)
!264 = !DILocation(line: 60, column: 39, scope: !243)
!265 = !DILocation(line: 62, column: 25, scope: !243)
!266 = !DILocation(line: 62, column: 39, scope: !243)
!267 = !DILocation(line: 65, column: 5, scope: !243)
!268 = !DILocation(line: 67, column: 13, scope: !243)
!269 = !DILocation(line: 62, column: 20, scope: !243)
!270 = !DILocation(line: 68, column: 12, scope: !243)
!271 = !DILocation(line: 69, column: 14, scope: !272)
!272 = distinct !DILexicalBlock(scope: !243, file: !1, line: 69, column: 9)
!273 = !DILocation(line: 69, column: 9, scope: !243)
!274 = !DILocation(line: 87, column: 39, scope: !170, inlinedAt: !275)
!275 = distinct !DILocation(line: 70, column: 57, scope: !276)
!276 = distinct !DILexicalBlock(scope: !272, file: !1, line: 69, column: 23)
!277 = !DILocation(line: 88, column: 27, scope: !170, inlinedAt: !275)
!278 = !DILocation(line: 88, column: 19, scope: !170, inlinedAt: !275)
!279 = !DILocation(line: 89, column: 5, scope: !170, inlinedAt: !275)
!280 = !DILocation(line: 91, column: 20, scope: !188, inlinedAt: !275)
!281 = !DILocation(line: 91, column: 13, scope: !188, inlinedAt: !275)
!282 = !DILocation(line: 93, column: 20, scope: !188, inlinedAt: !275)
!283 = !DILocation(line: 93, column: 34, scope: !188, inlinedAt: !275)
!284 = !DILocation(line: 93, column: 13, scope: !188, inlinedAt: !275)
!285 = !DILocation(line: 95, column: 20, scope: !188, inlinedAt: !275)
!286 = !DILocation(line: 95, column: 35, scope: !188, inlinedAt: !275)
!287 = !DILocation(line: 95, column: 13, scope: !188, inlinedAt: !275)
!288 = !DILocation(line: 97, column: 20, scope: !188, inlinedAt: !275)
!289 = !DILocation(line: 97, column: 35, scope: !188, inlinedAt: !275)
!290 = !DILocation(line: 97, column: 13, scope: !188, inlinedAt: !275)
!291 = !DILocation(line: 99, column: 20, scope: !188, inlinedAt: !275)
!292 = !DILocation(line: 99, column: 35, scope: !188, inlinedAt: !275)
!293 = !DILocation(line: 99, column: 13, scope: !188, inlinedAt: !275)
!294 = !DILocation(line: 0, scope: !188, inlinedAt: !275)
!295 = !DILocation(line: 102, column: 1, scope: !170, inlinedAt: !275)
!296 = !DILocation(line: 70, column: 57, scope: !276)
!297 = !DILocation(line: 70, column: 16, scope: !276)
!298 = !DILocation(line: 71, column: 18, scope: !299)
!299 = distinct !DILexicalBlock(scope: !276, file: !1, line: 71, column: 13)
!300 = !DILocation(line: 71, column: 13, scope: !276)
!301 = !DILocation(line: 73, column: 20, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !1, line: 71, column: 27)
!303 = !DILocation(line: 74, column: 13, scope: !302)
!304 = !DILocation(line: 79, column: 15, scope: !305)
!305 = distinct !DILexicalBlock(scope: !306, file: !1, line: 78, column: 23)
!306 = distinct !DILexicalBlock(scope: !243, file: !1, line: 78, column: 9)
!307 = !DILocation(line: 63, column: 9, scope: !243)
!308 = !DILocation(line: 80, column: 9, scope: !305)
!309 = !DILocation(line: 0, scope: !243)
!310 = !DILocation(line: 85, column: 1, scope: !243)
!311 = distinct !DISubprogram(name: "hashTypeGetFromHashTable", scope: !1, file: !1, line: 90, type: !312, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !314)
!312 = !DISubroutineType(types: !313)
!313 = !{!176, !128, !176}
!314 = !{!315, !316, !317}
!315 = !DILocalVariable(name: "o", arg: 1, scope: !311, file: !1, line: 90, type: !128)
!316 = !DILocalVariable(name: "field", arg: 2, scope: !311, file: !1, line: 90, type: !176)
!317 = !DILocalVariable(name: "de", scope: !311, file: !1, line: 91, type: !53)
!318 = !DILocation(line: 90, column: 36, scope: !311)
!319 = !DILocation(line: 90, column: 43, scope: !311)
!320 = !DILocation(line: 93, column: 5, scope: !311)
!321 = !DILocation(line: 95, column: 22, scope: !311)
!322 = !DILocation(line: 95, column: 10, scope: !311)
!323 = !DILocation(line: 91, column: 16, scope: !311)
!324 = !DILocation(line: 96, column: 12, scope: !325)
!325 = distinct !DILexicalBlock(scope: !311, file: !1, line: 96, column: 9)
!326 = !DILocation(line: 96, column: 9, scope: !311)
!327 = !DILocation(line: 97, column: 12, scope: !311)
!328 = !DILocation(line: 97, column: 5, scope: !311)
!329 = !DILocation(line: 0, scope: !311)
!330 = !DILocation(line: 98, column: 1, scope: !311)
!331 = distinct !DISubprogram(name: "hashTypeGetValue", scope: !1, file: !1, line: 109, type: !244, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !332)
!332 = !{!333, !334, !335, !336, !337, !338}
!333 = !DILocalVariable(name: "o", arg: 1, scope: !331, file: !1, line: 109, type: !128)
!334 = !DILocalVariable(name: "field", arg: 2, scope: !331, file: !1, line: 109, type: !176)
!335 = !DILocalVariable(name: "vstr", arg: 3, scope: !331, file: !1, line: 109, type: !246)
!336 = !DILocalVariable(name: "vlen", arg: 4, scope: !331, file: !1, line: 109, type: !247)
!337 = !DILocalVariable(name: "vll", arg: 5, scope: !331, file: !1, line: 109, type: !248)
!338 = !DILocalVariable(name: "value", scope: !339, file: !1, line: 115, type: !176)
!339 = distinct !DILexicalBlock(scope: !340, file: !1, line: 114, column: 48)
!340 = distinct !DILexicalBlock(scope: !341, file: !1, line: 114, column: 16)
!341 = distinct !DILexicalBlock(scope: !331, file: !1, line: 110, column: 9)
!342 = !DILocation(line: 109, column: 28, scope: !331)
!343 = !DILocation(line: 109, column: 35, scope: !331)
!344 = !DILocation(line: 109, column: 58, scope: !331)
!345 = !DILocation(line: 109, column: 78, scope: !331)
!346 = !DILocation(line: 109, column: 95, scope: !331)
!347 = !DILocation(line: 110, column: 12, scope: !341)
!348 = !DILocation(line: 110, column: 9, scope: !331)
!349 = !DILocation(line: 111, column: 15, scope: !350)
!350 = distinct !DILexicalBlock(scope: !341, file: !1, line: 110, column: 46)
!351 = !DILocation(line: 112, column: 13, scope: !352)
!352 = distinct !DILexicalBlock(scope: !350, file: !1, line: 112, column: 13)
!353 = !DILocation(line: 112, column: 63, scope: !352)
!354 = !DILocation(line: 112, column: 13, scope: !350)
!355 = !DILocation(line: 90, column: 36, scope: !311, inlinedAt: !356)
!356 = distinct !DILocation(line: 116, column: 22, scope: !357)
!357 = distinct !DILexicalBlock(scope: !339, file: !1, line: 116, column: 13)
!358 = !DILocation(line: 90, column: 43, scope: !311, inlinedAt: !356)
!359 = !DILocation(line: 93, column: 5, scope: !311, inlinedAt: !356)
!360 = !DILocation(line: 95, column: 22, scope: !311, inlinedAt: !356)
!361 = !DILocation(line: 95, column: 10, scope: !311, inlinedAt: !356)
!362 = !DILocation(line: 91, column: 16, scope: !311, inlinedAt: !356)
!363 = !DILocation(line: 96, column: 12, scope: !325, inlinedAt: !356)
!364 = !DILocation(line: 96, column: 9, scope: !311, inlinedAt: !356)
!365 = !DILocation(line: 98, column: 1, scope: !311, inlinedAt: !356)
!366 = !DILocation(line: 115, column: 13, scope: !339)
!367 = !DILocation(line: 116, column: 13, scope: !339)
!368 = !DILocation(line: 97, column: 12, scope: !311, inlinedAt: !356)
!369 = !DILocation(line: 116, column: 58, scope: !357)
!370 = !DILocation(line: 117, column: 19, scope: !371)
!371 = distinct !DILexicalBlock(scope: !357, file: !1, line: 116, column: 67)
!372 = !DILocation(line: 87, column: 39, scope: !170, inlinedAt: !373)
!373 = distinct !DILocation(line: 118, column: 21, scope: !371)
!374 = !DILocation(line: 88, column: 27, scope: !170, inlinedAt: !373)
!375 = !DILocation(line: 88, column: 19, scope: !170, inlinedAt: !373)
!376 = !DILocation(line: 89, column: 5, scope: !170, inlinedAt: !373)
!377 = !DILocation(line: 91, column: 20, scope: !188, inlinedAt: !373)
!378 = !DILocation(line: 91, column: 13, scope: !188, inlinedAt: !373)
!379 = !DILocation(line: 93, column: 20, scope: !188, inlinedAt: !373)
!380 = !DILocation(line: 93, column: 34, scope: !188, inlinedAt: !373)
!381 = !DILocation(line: 93, column: 13, scope: !188, inlinedAt: !373)
!382 = !DILocation(line: 95, column: 20, scope: !188, inlinedAt: !373)
!383 = !DILocation(line: 95, column: 35, scope: !188, inlinedAt: !373)
!384 = !DILocation(line: 95, column: 13, scope: !188, inlinedAt: !373)
!385 = !DILocation(line: 97, column: 20, scope: !188, inlinedAt: !373)
!386 = !DILocation(line: 97, column: 35, scope: !188, inlinedAt: !373)
!387 = !DILocation(line: 97, column: 13, scope: !188, inlinedAt: !373)
!388 = !DILocation(line: 99, column: 20, scope: !188, inlinedAt: !373)
!389 = !DILocation(line: 99, column: 35, scope: !188, inlinedAt: !373)
!390 = !DILocation(line: 99, column: 13, scope: !188, inlinedAt: !373)
!391 = !DILocation(line: 0, scope: !188, inlinedAt: !373)
!392 = !DILocation(line: 102, column: 1, scope: !170, inlinedAt: !373)
!393 = !DILocation(line: 118, column: 21, scope: !371)
!394 = !DILocation(line: 118, column: 19, scope: !371)
!395 = !DILocation(line: 122, column: 9, scope: !396)
!396 = distinct !DILexicalBlock(scope: !340, file: !1, line: 121, column: 12)
!397 = !DILocation(line: 124, column: 5, scope: !331)
!398 = !DILocation(line: 0, scope: !371)
!399 = !DILocation(line: 125, column: 1, scope: !331)
!400 = distinct !DISubprogram(name: "hashTypeGetValueObject", scope: !1, file: !1, line: 131, type: !401, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !403)
!401 = !DISubroutineType(types: !402)
!402 = !{!128, !128, !176}
!403 = !{!404, !405, !406, !407, !408}
!404 = !DILocalVariable(name: "o", arg: 1, scope: !400, file: !1, line: 131, type: !128)
!405 = !DILocalVariable(name: "field", arg: 2, scope: !400, file: !1, line: 131, type: !176)
!406 = !DILocalVariable(name: "vstr", scope: !400, file: !1, line: 132, type: !5)
!407 = !DILocalVariable(name: "vlen", scope: !400, file: !1, line: 133, type: !110)
!408 = !DILocalVariable(name: "vll", scope: !400, file: !1, line: 134, type: !249)
!409 = !DILocation(line: 131, column: 36, scope: !400)
!410 = !DILocation(line: 131, column: 43, scope: !400)
!411 = !DILocation(line: 132, column: 5, scope: !400)
!412 = !DILocation(line: 133, column: 5, scope: !400)
!413 = !DILocation(line: 134, column: 5, scope: !400)
!414 = !DILocation(line: 132, column: 20, scope: !400)
!415 = !DILocation(line: 133, column: 18, scope: !400)
!416 = !DILocation(line: 134, column: 15, scope: !400)
!417 = !DILocation(line: 136, column: 9, scope: !418)
!418 = distinct !DILexicalBlock(scope: !400, file: !1, line: 136, column: 9)
!419 = !DILocation(line: 136, column: 52, scope: !418)
!420 = !DILocation(line: 136, column: 9, scope: !400)
!421 = !DILocation(line: 137, column: 9, scope: !422)
!422 = distinct !DILexicalBlock(scope: !400, file: !1, line: 137, column: 9)
!423 = !DILocation(line: 137, column: 9, scope: !400)
!424 = !DILocation(line: 137, column: 53, scope: !422)
!425 = !DILocation(line: 137, column: 22, scope: !422)
!426 = !DILocation(line: 137, column: 15, scope: !422)
!427 = !DILocation(line: 138, column: 48, scope: !422)
!428 = !{!429, !429, i64 0}
!429 = !{!"long long", !163, i64 0}
!430 = !DILocation(line: 138, column: 17, scope: !422)
!431 = !DILocation(line: 138, column: 10, scope: !422)
!432 = !DILocation(line: 0, scope: !422)
!433 = !DILocation(line: 139, column: 1, scope: !400)
!434 = distinct !DISubprogram(name: "hashTypeGetValueLength", scope: !1, file: !1, line: 144, type: !435, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !441)
!435 = !DISubroutineType(types: !436)
!436 = !{!437, !128, !176}
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !438, line: 40, baseType: !439)
!438 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !440, line: 129, baseType: !27)
!440 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!441 = !{!442, !443, !444, !445, !448, !449, !450}
!442 = !DILocalVariable(name: "o", arg: 1, scope: !434, file: !1, line: 144, type: !128)
!443 = !DILocalVariable(name: "field", arg: 2, scope: !434, file: !1, line: 144, type: !176)
!444 = !DILocalVariable(name: "len", scope: !434, file: !1, line: 145, type: !437)
!445 = !DILocalVariable(name: "vstr", scope: !446, file: !1, line: 147, type: !5)
!446 = distinct !DILexicalBlock(scope: !447, file: !1, line: 146, column: 46)
!447 = distinct !DILexicalBlock(scope: !434, file: !1, line: 146, column: 9)
!448 = !DILocalVariable(name: "vlen", scope: !446, file: !1, line: 148, type: !110)
!449 = !DILocalVariable(name: "vll", scope: !446, file: !1, line: 149, type: !249)
!450 = !DILocalVariable(name: "aux", scope: !451, file: !1, line: 154, type: !176)
!451 = distinct !DILexicalBlock(scope: !452, file: !1, line: 153, column: 48)
!452 = distinct !DILexicalBlock(scope: !447, file: !1, line: 153, column: 16)
!453 = !DILocation(line: 144, column: 37, scope: !434)
!454 = !DILocation(line: 144, column: 44, scope: !434)
!455 = !DILocation(line: 145, column: 12, scope: !434)
!456 = !DILocation(line: 146, column: 12, scope: !447)
!457 = !DILocation(line: 146, column: 9, scope: !434)
!458 = !DILocation(line: 147, column: 9, scope: !446)
!459 = !DILocation(line: 147, column: 24, scope: !446)
!460 = !DILocation(line: 148, column: 9, scope: !446)
!461 = !DILocation(line: 148, column: 22, scope: !446)
!462 = !DILocation(line: 149, column: 9, scope: !446)
!463 = !DILocation(line: 149, column: 19, scope: !446)
!464 = !DILocation(line: 151, column: 13, scope: !465)
!465 = distinct !DILexicalBlock(scope: !446, file: !1, line: 151, column: 13)
!466 = !DILocation(line: 151, column: 66, scope: !465)
!467 = !DILocation(line: 151, column: 13, scope: !446)
!468 = !DILocation(line: 152, column: 19, scope: !465)
!469 = !DILocation(line: 152, column: 26, scope: !465)
!470 = !DILocation(line: 152, column: 43, scope: !465)
!471 = !DILocation(line: 152, column: 33, scope: !465)
!472 = !DILocation(line: 152, column: 13, scope: !465)
!473 = !DILocation(line: 0, scope: !434)
!474 = !DILocation(line: 153, column: 5, scope: !447)
!475 = !DILocation(line: 153, column: 5, scope: !446)
!476 = !DILocation(line: 90, column: 36, scope: !311, inlinedAt: !477)
!477 = distinct !DILocation(line: 156, column: 20, scope: !478)
!478 = distinct !DILexicalBlock(scope: !451, file: !1, line: 156, column: 13)
!479 = !DILocation(line: 90, column: 43, scope: !311, inlinedAt: !477)
!480 = !DILocation(line: 93, column: 5, scope: !311, inlinedAt: !477)
!481 = !DILocation(line: 95, column: 22, scope: !311, inlinedAt: !477)
!482 = !DILocation(line: 95, column: 10, scope: !311, inlinedAt: !477)
!483 = !DILocation(line: 91, column: 16, scope: !311, inlinedAt: !477)
!484 = !DILocation(line: 96, column: 12, scope: !325, inlinedAt: !477)
!485 = !DILocation(line: 96, column: 9, scope: !311, inlinedAt: !477)
!486 = !DILocation(line: 98, column: 1, scope: !311, inlinedAt: !477)
!487 = !DILocation(line: 154, column: 13, scope: !451)
!488 = !DILocation(line: 156, column: 13, scope: !451)
!489 = !DILocation(line: 97, column: 12, scope: !311, inlinedAt: !477)
!490 = !DILocation(line: 156, column: 56, scope: !478)
!491 = !DILocation(line: 87, column: 39, scope: !170, inlinedAt: !492)
!492 = distinct !DILocation(line: 157, column: 19, scope: !478)
!493 = !DILocation(line: 88, column: 27, scope: !170, inlinedAt: !492)
!494 = !DILocation(line: 88, column: 19, scope: !170, inlinedAt: !492)
!495 = !DILocation(line: 89, column: 5, scope: !170, inlinedAt: !492)
!496 = !DILocation(line: 91, column: 20, scope: !188, inlinedAt: !492)
!497 = !DILocation(line: 91, column: 13, scope: !188, inlinedAt: !492)
!498 = !DILocation(line: 93, column: 20, scope: !188, inlinedAt: !492)
!499 = !DILocation(line: 93, column: 34, scope: !188, inlinedAt: !492)
!500 = !DILocation(line: 93, column: 13, scope: !188, inlinedAt: !492)
!501 = !DILocation(line: 95, column: 20, scope: !188, inlinedAt: !492)
!502 = !DILocation(line: 95, column: 35, scope: !188, inlinedAt: !492)
!503 = !DILocation(line: 95, column: 13, scope: !188, inlinedAt: !492)
!504 = !DILocation(line: 97, column: 20, scope: !188, inlinedAt: !492)
!505 = !DILocation(line: 97, column: 35, scope: !188, inlinedAt: !492)
!506 = !DILocation(line: 97, column: 13, scope: !188, inlinedAt: !492)
!507 = !DILocation(line: 99, column: 20, scope: !188, inlinedAt: !492)
!508 = !DILocation(line: 99, column: 35, scope: !188, inlinedAt: !492)
!509 = !DILocation(line: 99, column: 13, scope: !188, inlinedAt: !492)
!510 = !DILocation(line: 0, scope: !188, inlinedAt: !492)
!511 = !DILocation(line: 102, column: 1, scope: !170, inlinedAt: !492)
!512 = !DILocation(line: 157, column: 13, scope: !478)
!513 = !DILocation(line: 159, column: 9, scope: !514)
!514 = distinct !DILexicalBlock(scope: !452, file: !1, line: 158, column: 12)
!515 = !DILocation(line: 0, scope: !478)
!516 = !DILocation(line: 161, column: 5, scope: !434)
!517 = distinct !DISubprogram(name: "hashTypeExists", scope: !1, file: !1, line: 166, type: !518, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !520)
!518 = !DISubroutineType(types: !519)
!519 = !{!39, !128, !176}
!520 = !{!521, !522, !523, !526, !527}
!521 = !DILocalVariable(name: "o", arg: 1, scope: !517, file: !1, line: 166, type: !128)
!522 = !DILocalVariable(name: "field", arg: 2, scope: !517, file: !1, line: 166, type: !176)
!523 = !DILocalVariable(name: "vstr", scope: !524, file: !1, line: 168, type: !5)
!524 = distinct !DILexicalBlock(scope: !525, file: !1, line: 167, column: 46)
!525 = distinct !DILexicalBlock(scope: !517, file: !1, line: 167, column: 9)
!526 = !DILocalVariable(name: "vlen", scope: !524, file: !1, line: 169, type: !110)
!527 = !DILocalVariable(name: "vll", scope: !524, file: !1, line: 170, type: !249)
!528 = !DILocation(line: 166, column: 26, scope: !517)
!529 = !DILocation(line: 166, column: 33, scope: !517)
!530 = !DILocation(line: 167, column: 12, scope: !525)
!531 = !DILocation(line: 167, column: 9, scope: !517)
!532 = !DILocation(line: 168, column: 9, scope: !524)
!533 = !DILocation(line: 168, column: 24, scope: !524)
!534 = !DILocation(line: 169, column: 9, scope: !524)
!535 = !DILocation(line: 169, column: 22, scope: !524)
!536 = !DILocation(line: 170, column: 9, scope: !524)
!537 = !DILocation(line: 170, column: 19, scope: !524)
!538 = !DILocation(line: 172, column: 13, scope: !539)
!539 = distinct !DILexicalBlock(scope: !524, file: !1, line: 172, column: 13)
!540 = !DILocation(line: 172, column: 66, scope: !539)
!541 = !DILocation(line: 173, column: 5, scope: !525)
!542 = !DILocation(line: 90, column: 36, scope: !311, inlinedAt: !543)
!543 = distinct !DILocation(line: 174, column: 13, scope: !544)
!544 = distinct !DILexicalBlock(scope: !545, file: !1, line: 174, column: 13)
!545 = distinct !DILexicalBlock(scope: !546, file: !1, line: 173, column: 48)
!546 = distinct !DILexicalBlock(scope: !525, file: !1, line: 173, column: 16)
!547 = !DILocation(line: 90, column: 43, scope: !311, inlinedAt: !543)
!548 = !DILocation(line: 93, column: 5, scope: !311, inlinedAt: !543)
!549 = !DILocation(line: 95, column: 22, scope: !311, inlinedAt: !543)
!550 = !DILocation(line: 95, column: 10, scope: !311, inlinedAt: !543)
!551 = !DILocation(line: 91, column: 16, scope: !311, inlinedAt: !543)
!552 = !DILocation(line: 96, column: 12, scope: !325, inlinedAt: !543)
!553 = !DILocation(line: 96, column: 9, scope: !311, inlinedAt: !543)
!554 = !DILocation(line: 98, column: 1, scope: !311, inlinedAt: !543)
!555 = !DILocation(line: 174, column: 13, scope: !545)
!556 = !DILocation(line: 97, column: 12, scope: !311, inlinedAt: !543)
!557 = !DILocation(line: 174, column: 48, scope: !544)
!558 = !DILocation(line: 176, column: 9, scope: !559)
!559 = distinct !DILexicalBlock(scope: !546, file: !1, line: 175, column: 12)
!560 = !DILocation(line: 178, column: 5, scope: !517)
!561 = !DILocation(line: 0, scope: !544)
!562 = !DILocation(line: 179, column: 1, scope: !517)
!563 = distinct !DISubprogram(name: "hashTypeSet", scope: !1, file: !1, line: 202, type: !564, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !566)
!564 = !DISubroutineType(types: !565)
!565 = !{!39, !128, !176, !176, !39}
!566 = !{!567, !568, !569, !570, !571, !572, !575, !576, !577, !580, !583}
!567 = !DILocalVariable(name: "o", arg: 1, scope: !563, file: !1, line: 202, type: !128)
!568 = !DILocalVariable(name: "field", arg: 2, scope: !563, file: !1, line: 202, type: !176)
!569 = !DILocalVariable(name: "value", arg: 3, scope: !563, file: !1, line: 202, type: !176)
!570 = !DILocalVariable(name: "flags", arg: 4, scope: !563, file: !1, line: 202, type: !39)
!571 = !DILocalVariable(name: "update", scope: !563, file: !1, line: 203, type: !39)
!572 = !DILocalVariable(name: "zl", scope: !573, file: !1, line: 206, type: !5)
!573 = distinct !DILexicalBlock(scope: !574, file: !1, line: 205, column: 46)
!574 = distinct !DILexicalBlock(scope: !563, file: !1, line: 205, column: 9)
!575 = !DILocalVariable(name: "fptr", scope: !573, file: !1, line: 206, type: !5)
!576 = !DILocalVariable(name: "vptr", scope: !573, file: !1, line: 206, type: !5)
!577 = !DILocalVariable(name: "de", scope: !578, file: !1, line: 240, type: !53)
!578 = distinct !DILexicalBlock(scope: !579, file: !1, line: 239, column: 48)
!579 = distinct !DILexicalBlock(scope: !574, file: !1, line: 239, column: 16)
!580 = !DILocalVariable(name: "f", scope: !581, file: !1, line: 251, type: !176)
!581 = distinct !DILexicalBlock(scope: !582, file: !1, line: 250, column: 16)
!582 = distinct !DILexicalBlock(scope: !578, file: !1, line: 241, column: 13)
!583 = !DILocalVariable(name: "v", scope: !581, file: !1, line: 251, type: !176)
!584 = !DILocation(line: 202, column: 23, scope: !563)
!585 = !DILocation(line: 202, column: 30, scope: !563)
!586 = !DILocation(line: 202, column: 41, scope: !563)
!587 = !DILocation(line: 202, column: 52, scope: !563)
!588 = !DILocation(line: 203, column: 9, scope: !563)
!589 = !DILocation(line: 205, column: 12, scope: !574)
!590 = !DILocation(line: 205, column: 9, scope: !563)
!591 = !DILocation(line: 206, column: 9, scope: !573)
!592 = !DILocation(line: 208, column: 17, scope: !573)
!593 = !DILocation(line: 206, column: 24, scope: !573)
!594 = !DILocation(line: 209, column: 16, scope: !573)
!595 = !DILocation(line: 206, column: 29, scope: !573)
!596 = !DILocation(line: 210, column: 18, scope: !597)
!597 = distinct !DILexicalBlock(scope: !573, file: !1, line: 210, column: 13)
!598 = !DILocation(line: 88, column: 27, scope: !170, inlinedAt: !599)
!599 = distinct !DILocation(line: 229, column: 57, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !1, line: 227, column: 22)
!601 = distinct !DILexicalBlock(scope: !573, file: !1, line: 227, column: 13)
!602 = !DILocation(line: 210, column: 13, scope: !573)
!603 = !DILocation(line: 87, column: 39, scope: !170, inlinedAt: !604)
!604 = distinct !DILocation(line: 211, column: 61, scope: !605)
!605 = distinct !DILexicalBlock(scope: !597, file: !1, line: 210, column: 27)
!606 = !DILocation(line: 88, column: 27, scope: !170, inlinedAt: !604)
!607 = !DILocation(line: 88, column: 19, scope: !170, inlinedAt: !604)
!608 = !DILocation(line: 89, column: 5, scope: !170, inlinedAt: !604)
!609 = !DILocation(line: 91, column: 20, scope: !188, inlinedAt: !604)
!610 = !DILocation(line: 91, column: 13, scope: !188, inlinedAt: !604)
!611 = !DILocation(line: 93, column: 20, scope: !188, inlinedAt: !604)
!612 = !DILocation(line: 93, column: 34, scope: !188, inlinedAt: !604)
!613 = !DILocation(line: 93, column: 13, scope: !188, inlinedAt: !604)
!614 = !DILocation(line: 95, column: 20, scope: !188, inlinedAt: !604)
!615 = !DILocation(line: 95, column: 35, scope: !188, inlinedAt: !604)
!616 = !DILocation(line: 95, column: 13, scope: !188, inlinedAt: !604)
!617 = !DILocation(line: 97, column: 20, scope: !188, inlinedAt: !604)
!618 = !DILocation(line: 97, column: 35, scope: !188, inlinedAt: !604)
!619 = !DILocation(line: 97, column: 13, scope: !188, inlinedAt: !604)
!620 = !DILocation(line: 99, column: 20, scope: !188, inlinedAt: !604)
!621 = !DILocation(line: 99, column: 35, scope: !188, inlinedAt: !604)
!622 = !DILocation(line: 99, column: 13, scope: !188, inlinedAt: !604)
!623 = !DILocation(line: 0, scope: !188, inlinedAt: !604)
!624 = !DILocation(line: 102, column: 1, scope: !170, inlinedAt: !604)
!625 = !DILocation(line: 211, column: 61, scope: !605)
!626 = !DILocation(line: 211, column: 20, scope: !605)
!627 = !DILocation(line: 212, column: 22, scope: !628)
!628 = distinct !DILexicalBlock(scope: !605, file: !1, line: 212, column: 17)
!629 = !DILocation(line: 212, column: 17, scope: !605)
!630 = !DILocation(line: 214, column: 24, scope: !631)
!631 = distinct !DILexicalBlock(scope: !628, file: !1, line: 212, column: 31)
!632 = !DILocation(line: 206, column: 36, scope: !573)
!633 = !DILocation(line: 214, column: 22, scope: !631)
!634 = !DILocation(line: 215, column: 17, scope: !631)
!635 = !DILocation(line: 219, column: 22, scope: !631)
!636 = !DILocation(line: 222, column: 40, scope: !631)
!637 = !DILocation(line: 87, column: 39, scope: !170, inlinedAt: !638)
!638 = distinct !DILocation(line: 223, column: 25, scope: !631)
!639 = !DILocation(line: 88, column: 27, scope: !170, inlinedAt: !638)
!640 = !DILocation(line: 88, column: 19, scope: !170, inlinedAt: !638)
!641 = !DILocation(line: 89, column: 5, scope: !170, inlinedAt: !638)
!642 = !DILocation(line: 91, column: 20, scope: !188, inlinedAt: !638)
!643 = !DILocation(line: 91, column: 13, scope: !188, inlinedAt: !638)
!644 = !DILocation(line: 93, column: 20, scope: !188, inlinedAt: !638)
!645 = !DILocation(line: 93, column: 34, scope: !188, inlinedAt: !638)
!646 = !DILocation(line: 93, column: 13, scope: !188, inlinedAt: !638)
!647 = !DILocation(line: 95, column: 20, scope: !188, inlinedAt: !638)
!648 = !DILocation(line: 95, column: 35, scope: !188, inlinedAt: !638)
!649 = !DILocation(line: 95, column: 13, scope: !188, inlinedAt: !638)
!650 = !DILocation(line: 97, column: 20, scope: !188, inlinedAt: !638)
!651 = !DILocation(line: 97, column: 35, scope: !188, inlinedAt: !638)
!652 = !DILocation(line: 97, column: 13, scope: !188, inlinedAt: !638)
!653 = !DILocation(line: 99, column: 20, scope: !188, inlinedAt: !638)
!654 = !DILocation(line: 99, column: 35, scope: !188, inlinedAt: !638)
!655 = !DILocation(line: 99, column: 13, scope: !188, inlinedAt: !638)
!656 = !DILocation(line: 0, scope: !188, inlinedAt: !638)
!657 = !DILocation(line: 102, column: 1, scope: !170, inlinedAt: !638)
!658 = !DILocation(line: 223, column: 25, scope: !631)
!659 = !DILocation(line: 222, column: 22, scope: !631)
!660 = !DILocation(line: 227, column: 13, scope: !573)
!661 = !DILocation(line: 87, column: 39, scope: !170, inlinedAt: !599)
!662 = !DILocation(line: 88, column: 19, scope: !170, inlinedAt: !599)
!663 = !DILocation(line: 89, column: 5, scope: !170, inlinedAt: !599)
!664 = !DILocation(line: 91, column: 20, scope: !188, inlinedAt: !599)
!665 = !DILocation(line: 91, column: 13, scope: !188, inlinedAt: !599)
!666 = !DILocation(line: 93, column: 20, scope: !188, inlinedAt: !599)
!667 = !DILocation(line: 93, column: 34, scope: !188, inlinedAt: !599)
!668 = !DILocation(line: 93, column: 13, scope: !188, inlinedAt: !599)
!669 = !DILocation(line: 95, column: 20, scope: !188, inlinedAt: !599)
!670 = !DILocation(line: 95, column: 35, scope: !188, inlinedAt: !599)
!671 = !DILocation(line: 95, column: 13, scope: !188, inlinedAt: !599)
!672 = !DILocation(line: 97, column: 20, scope: !188, inlinedAt: !599)
!673 = !DILocation(line: 97, column: 35, scope: !188, inlinedAt: !599)
!674 = !DILocation(line: 97, column: 13, scope: !188, inlinedAt: !599)
!675 = !DILocation(line: 99, column: 20, scope: !188, inlinedAt: !599)
!676 = !DILocation(line: 99, column: 35, scope: !188, inlinedAt: !599)
!677 = !DILocation(line: 99, column: 13, scope: !188, inlinedAt: !599)
!678 = !DILocation(line: 0, scope: !188, inlinedAt: !599)
!679 = !DILocation(line: 102, column: 1, scope: !170, inlinedAt: !599)
!680 = !DILocation(line: 229, column: 57, scope: !600)
!681 = !DILocation(line: 229, column: 18, scope: !600)
!682 = !DILocation(line: 87, column: 39, scope: !170, inlinedAt: !683)
!683 = distinct !DILocation(line: 231, column: 57, scope: !600)
!684 = !DILocation(line: 88, column: 27, scope: !170, inlinedAt: !683)
!685 = !DILocation(line: 88, column: 19, scope: !170, inlinedAt: !683)
!686 = !DILocation(line: 89, column: 5, scope: !170, inlinedAt: !683)
!687 = !DILocation(line: 91, column: 20, scope: !188, inlinedAt: !683)
!688 = !DILocation(line: 91, column: 13, scope: !188, inlinedAt: !683)
!689 = !DILocation(line: 93, column: 20, scope: !188, inlinedAt: !683)
!690 = !DILocation(line: 93, column: 34, scope: !188, inlinedAt: !683)
!691 = !DILocation(line: 93, column: 13, scope: !188, inlinedAt: !683)
!692 = !DILocation(line: 95, column: 20, scope: !188, inlinedAt: !683)
!693 = !DILocation(line: 95, column: 35, scope: !188, inlinedAt: !683)
!694 = !DILocation(line: 95, column: 13, scope: !188, inlinedAt: !683)
!695 = !DILocation(line: 97, column: 20, scope: !188, inlinedAt: !683)
!696 = !DILocation(line: 97, column: 35, scope: !188, inlinedAt: !683)
!697 = !DILocation(line: 97, column: 13, scope: !188, inlinedAt: !683)
!698 = !DILocation(line: 99, column: 20, scope: !188, inlinedAt: !683)
!699 = !DILocation(line: 99, column: 35, scope: !188, inlinedAt: !683)
!700 = !DILocation(line: 99, column: 13, scope: !188, inlinedAt: !683)
!701 = !DILocation(line: 0, scope: !188, inlinedAt: !683)
!702 = !DILocation(line: 102, column: 1, scope: !170, inlinedAt: !683)
!703 = !DILocation(line: 231, column: 57, scope: !600)
!704 = !DILocation(line: 231, column: 18, scope: !600)
!705 = !DILocation(line: 233, column: 9, scope: !600)
!706 = !DILocation(line: 0, scope: !600)
!707 = !DILocation(line: 234, column: 16, scope: !573)
!708 = !DILocalVariable(name: "o", arg: 1, scope: !709, file: !1, line: 311, type: !712)
!709 = distinct !DISubprogram(name: "hashTypeLength", scope: !1, file: !1, line: 311, type: !710, isLocal: false, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !714)
!710 = !DISubroutineType(types: !711)
!711 = !{!27, !712}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!714 = !{!708, !715}
!715 = !DILocalVariable(name: "length", scope: !709, file: !1, line: 312, type: !27)
!716 = !DILocation(line: 311, column: 42, scope: !709, inlinedAt: !717)
!717 = distinct !DILocation(line: 237, column: 13, scope: !718)
!718 = distinct !DILexicalBlock(scope: !573, file: !1, line: 237, column: 13)
!719 = !DILocation(line: 312, column: 19, scope: !709, inlinedAt: !717)
!720 = !DILocation(line: 314, column: 12, scope: !721, inlinedAt: !717)
!721 = distinct !DILexicalBlock(scope: !709, file: !1, line: 314, column: 9)
!722 = !DILocation(line: 314, column: 9, scope: !709, inlinedAt: !717)
!723 = !DILocation(line: 315, column: 18, scope: !724, inlinedAt: !717)
!724 = distinct !DILexicalBlock(scope: !721, file: !1, line: 314, column: 46)
!725 = !DILocation(line: 315, column: 37, scope: !724, inlinedAt: !717)
!726 = !DILocation(line: 316, column: 5, scope: !724, inlinedAt: !717)
!727 = !DILocation(line: 317, column: 18, scope: !728, inlinedAt: !717)
!728 = distinct !DILexicalBlock(scope: !729, file: !1, line: 316, column: 48)
!729 = distinct !DILexicalBlock(scope: !721, file: !1, line: 316, column: 16)
!730 = !{!731, !205, i64 24}
!731 = !{!"dictht", !162, i64 0, !205, i64 8, !205, i64 16, !205, i64 24}
!732 = !DILocation(line: 319, column: 9, scope: !733, inlinedAt: !717)
!733 = distinct !DILexicalBlock(scope: !729, file: !1, line: 318, column: 12)
!734 = !DILocation(line: 0, scope: !728, inlinedAt: !717)
!735 = !DILocation(line: 321, column: 5, scope: !709, inlinedAt: !717)
!736 = !DILocation(line: 237, column: 40, scope: !718)
!737 = !{!738, !205, i64 2800}
!738 = !{!"redisServer", !168, i64 0, !162, i64 8, !162, i64 16, !162, i64 24, !168, i64 32, !168, i64 36, !168, i64 40, !162, i64 48, !162, i64 56, !162, i64 64, !162, i64 72, !168, i64 80, !168, i64 84, !168, i64 88, !168, i64 92, !162, i64 96, !162, i64 104, !168, i64 112, !168, i64 116, !163, i64 120, !168, i64 164, !205, i64 168, !168, i64 176, !162, i64 184, !162, i64 192, !162, i64 200, !163, i64 208, !168, i64 216, !168, i64 220, !163, i64 224, !168, i64 352, !162, i64 360, !168, i64 368, !163, i64 372, !168, i64 436, !168, i64 440, !163, i64 444, !168, i64 508, !162, i64 512, !162, i64 520, !162, i64 528, !162, i64 536, !162, i64 544, !162, i64 552, !162, i64 560, !168, i64 568, !429, i64 576, !163, i64 584, !162, i64 840, !205, i64 848, !168, i64 856, !168, i64 860, !205, i64 864, !205, i64 872, !205, i64 880, !205, i64 888, !162, i64 896, !162, i64 904, !162, i64 912, !162, i64 920, !162, i64 928, !162, i64 936, !162, i64 944, !162, i64 952, !162, i64 960, !162, i64 968, !162, i64 976, !162, i64 984, !162, i64 992, !205, i64 1000, !429, i64 1008, !429, i64 1016, !429, i64 1024, !739, i64 1032, !429, i64 1040, !429, i64 1048, !429, i64 1056, !429, i64 1064, !429, i64 1072, !429, i64 1080, !429, i64 1088, !429, i64 1096, !429, i64 1104, !205, i64 1112, !429, i64 1120, !739, i64 1128, !429, i64 1136, !429, i64 1144, !429, i64 1152, !429, i64 1160, !162, i64 1168, !429, i64 1176, !429, i64 1184, !205, i64 1192, !740, i64 1200, !429, i64 1240, !429, i64 1248, !205, i64 1256, !205, i64 1264, !163, i64 1272, !168, i64 1728, !168, i64 1732, !168, i64 1736, !168, i64 1740, !168, i64 1744, !205, i64 1752, !168, i64 1760, !168, i64 1764, !168, i64 1768, !168, i64 1772, !205, i64 1776, !205, i64 1784, !168, i64 1792, !168, i64 1796, !168, i64 1800, !168, i64 1804, !163, i64 1808, !168, i64 1880, !168, i64 1884, !162, i64 1888, !168, i64 1896, !168, i64 1900, !205, i64 1904, !205, i64 1912, !205, i64 1920, !205, i64 1928, !168, i64 1936, !168, i64 1940, !162, i64 1944, !162, i64 1952, !168, i64 1960, !168, i64 1964, !205, i64 1968, !205, i64 1976, !205, i64 1984, !205, i64 1992, !168, i64 2000, !205, i64 2008, !168, i64 2016, !168, i64 2020, !168, i64 2024, !168, i64 2028, !168, i64 2032, !168, i64 2036, !168, i64 2040, !168, i64 2044, !168, i64 2048, !168, i64 2052, !168, i64 2056, !168, i64 2060, !168, i64 2064, !162, i64 2072, !429, i64 2080, !429, i64 2088, !168, i64 2096, !162, i64 2104, !168, i64 2112, !162, i64 2120, !168, i64 2128, !168, i64 2132, !205, i64 2136, !205, i64 2144, !205, i64 2152, !205, i64 2160, !168, i64 2168, !168, i64 2172, !168, i64 2176, !168, i64 2180, !168, i64 2184, !168, i64 2188, !163, i64 2192, !741, i64 2200, !742, i64 2224, !162, i64 2240, !168, i64 2248, !162, i64 2256, !168, i64 2264, !163, i64 2268, !163, i64 2309, !429, i64 2352, !429, i64 2360, !168, i64 2368, !168, i64 2372, !162, i64 2376, !429, i64 2384, !429, i64 2392, !429, i64 2400, !429, i64 2408, !205, i64 2416, !205, i64 2424, !168, i64 2432, !168, i64 2436, !168, i64 2440, !168, i64 2444, !168, i64 2448, !162, i64 2456, !162, i64 2464, !168, i64 2472, !168, i64 2476, !162, i64 2480, !162, i64 2488, !168, i64 2496, !168, i64 2500, !205, i64 2504, !205, i64 2512, !205, i64 2520, !168, i64 2528, !168, i64 2532, !162, i64 2536, !205, i64 2544, !168, i64 2552, !168, i64 2556, !168, i64 2560, !205, i64 2568, !168, i64 2576, !168, i64 2580, !168, i64 2584, !162, i64 2592, !163, i64 2600, !429, i64 2648, !168, i64 2656, !162, i64 2664, !162, i64 2672, !168, i64 2680, !162, i64 2688, !168, i64 2696, !168, i64 2700, !429, i64 2704, !168, i64 2712, !168, i64 2716, !168, i64 2720, !168, i64 2724, !429, i64 2728, !168, i64 2736, !163, i64 2740, !162, i64 2768, !162, i64 2776, !168, i64 2784, !168, i64 2788, !168, i64 2792, !168, i64 2796, !205, i64 2800, !205, i64 2808, !205, i64 2816, !205, i64 2824, !205, i64 2832, !205, i64 2840, !205, i64 2848, !205, i64 2856, !168, i64 2864, !168, i64 2868, !205, i64 2872, !205, i64 2880, !168, i64 2888, !429, i64 2896, !162, i64 2904, !162, i64 2912, !168, i64 2920, !168, i64 2924, !429, i64 2928, !162, i64 2936, !162, i64 2944, !168, i64 2952, !168, i64 2956, !168, i64 2960, !168, i64 2964, !162, i64 2968, !168, i64 2976, !168, i64 2980, !168, i64 2984, !162, i64 2992, !162, i64 3000, !162, i64 3008, !162, i64 3016, !429, i64 3024, !429, i64 3032, !429, i64 3040, !168, i64 3048, !168, i64 3052, !168, i64 3056, !168, i64 3060, !168, i64 3064, !168, i64 3068, !168, i64 3072, !168, i64 3076, !168, i64 3080, !168, i64 3084, !168, i64 3088, !429, i64 3096, !162, i64 3104, !162, i64 3112, !162, i64 3120, !168, i64 3128, !168, i64 3132, !168, i64 3136, !205, i64 3144, !162, i64 3152, !162, i64 3160, !162, i64 3168}
!739 = !{!"double", !163, i64 0}
!740 = !{!"malloc_stats", !205, i64 0, !205, i64 8, !205, i64 16, !205, i64 24, !205, i64 32}
!741 = !{!"", !168, i64 0, !205, i64 8, !429, i64 16}
!742 = !{!"redisOpArray", !162, i64 0, !168, i64 8}
!743 = !DILocation(line: 237, column: 31, scope: !718)
!744 = !DILocation(line: 237, column: 13, scope: !573)
!745 = !DILocation(line: 500, column: 28, scope: !210, inlinedAt: !746)
!746 = distinct !DILocation(line: 238, column: 13, scope: !718)
!747 = !DILocation(line: 500, column: 35, scope: !210, inlinedAt: !746)
!748 = !DILocation(line: 501, column: 12, scope: !220, inlinedAt: !746)
!749 = !DILocation(line: 501, column: 9, scope: !210, inlinedAt: !746)
!750 = !DILocation(line: 504, column: 9, scope: !223, inlinedAt: !746)
!751 = !DILocation(line: 506, column: 9, scope: !226, inlinedAt: !746)
!752 = !DILocation(line: 502, column: 9, scope: !228, inlinedAt: !746)
!753 = !DILocation(line: 508, column: 1, scope: !210, inlinedAt: !746)
!754 = !DILocation(line: 238, column: 13, scope: !718)
!755 = !DILocation(line: 239, column: 5, scope: !574)
!756 = !DILocation(line: 239, column: 5, scope: !573)
!757 = !DILocation(line: 240, column: 37, scope: !578)
!758 = !DILocation(line: 240, column: 25, scope: !578)
!759 = !DILocation(line: 240, column: 20, scope: !578)
!760 = !DILocation(line: 241, column: 13, scope: !582)
!761 = !DILocation(line: 241, column: 13, scope: !578)
!762 = !DILocation(line: 242, column: 21, scope: !763)
!763 = distinct !DILexicalBlock(scope: !582, file: !1, line: 241, column: 17)
!764 = !DILocation(line: 242, column: 13, scope: !763)
!765 = !DILocation(line: 243, column: 23, scope: !766)
!766 = distinct !DILexicalBlock(scope: !763, file: !1, line: 243, column: 17)
!767 = !DILocation(line: 243, column: 17, scope: !763)
!768 = !DILocation(line: 247, column: 34, scope: !769)
!769 = distinct !DILexicalBlock(scope: !766, file: !1, line: 246, column: 20)
!770 = !DILocation(line: 0, scope: !771)
!771 = distinct !DILexicalBlock(scope: !766, file: !1, line: 243, column: 46)
!772 = !DILocation(line: 250, column: 9, scope: !763)
!773 = !DILocation(line: 252, column: 23, scope: !774)
!774 = distinct !DILexicalBlock(scope: !581, file: !1, line: 252, column: 17)
!775 = !DILocation(line: 252, column: 17, scope: !581)
!776 = !DILocation(line: 256, column: 21, scope: !777)
!777 = distinct !DILexicalBlock(scope: !774, file: !1, line: 255, column: 20)
!778 = !DILocation(line: 251, column: 17, scope: !581)
!779 = !DILocation(line: 0, scope: !777)
!780 = !DILocation(line: 258, column: 23, scope: !781)
!781 = distinct !DILexicalBlock(scope: !581, file: !1, line: 258, column: 17)
!782 = !DILocation(line: 258, column: 17, scope: !581)
!783 = !DILocation(line: 262, column: 21, scope: !784)
!784 = distinct !DILexicalBlock(scope: !781, file: !1, line: 261, column: 20)
!785 = !DILocation(line: 251, column: 19, scope: !581)
!786 = !DILocation(line: 0, scope: !784)
!787 = !DILocation(line: 264, column: 24, scope: !581)
!788 = !DILocation(line: 264, column: 13, scope: !581)
!789 = !DILocation(line: 267, column: 9, scope: !790)
!790 = distinct !DILexicalBlock(scope: !579, file: !1, line: 266, column: 12)
!791 = !DILocation(line: 0, scope: !763)
!792 = !DILocation(line: 272, column: 15, scope: !793)
!793 = distinct !DILexicalBlock(scope: !563, file: !1, line: 272, column: 9)
!794 = !DILocation(line: 272, column: 40, scope: !793)
!795 = !DILocation(line: 272, column: 37, scope: !793)
!796 = !DILocation(line: 272, column: 47, scope: !793)
!797 = !DILocation(line: 273, column: 15, scope: !798)
!798 = distinct !DILexicalBlock(scope: !563, file: !1, line: 273, column: 9)
!799 = !DILocation(line: 273, column: 40, scope: !798)
!800 = !DILocation(line: 273, column: 37, scope: !798)
!801 = !DILocation(line: 273, column: 47, scope: !798)
!802 = !DILocation(line: 274, column: 5, scope: !563)
!803 = !DILocation(line: 311, column: 42, scope: !709)
!804 = !DILocation(line: 312, column: 19, scope: !709)
!805 = !DILocation(line: 314, column: 12, scope: !721)
!806 = !DILocation(line: 314, column: 9, scope: !709)
!807 = !DILocation(line: 315, column: 32, scope: !724)
!808 = !DILocation(line: 315, column: 18, scope: !724)
!809 = !DILocation(line: 315, column: 37, scope: !724)
!810 = !DILocation(line: 316, column: 5, scope: !724)
!811 = !DILocation(line: 317, column: 18, scope: !728)
!812 = !DILocation(line: 319, column: 9, scope: !733)
!813 = !DILocation(line: 0, scope: !728)
!814 = !DILocation(line: 321, column: 5, scope: !709)
!815 = distinct !DISubprogram(name: "hashTypeDelete", scope: !1, file: !1, line: 279, type: !518, isLocal: false, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !816)
!816 = !{!817, !818, !819, !820, !823}
!817 = !DILocalVariable(name: "o", arg: 1, scope: !815, file: !1, line: 279, type: !128)
!818 = !DILocalVariable(name: "field", arg: 2, scope: !815, file: !1, line: 279, type: !176)
!819 = !DILocalVariable(name: "deleted", scope: !815, file: !1, line: 280, type: !39)
!820 = !DILocalVariable(name: "zl", scope: !821, file: !1, line: 283, type: !5)
!821 = distinct !DILexicalBlock(scope: !822, file: !1, line: 282, column: 46)
!822 = distinct !DILexicalBlock(scope: !815, file: !1, line: 282, column: 9)
!823 = !DILocalVariable(name: "fptr", scope: !821, file: !1, line: 283, type: !5)
!824 = !DILocation(line: 279, column: 26, scope: !815)
!825 = !DILocation(line: 279, column: 33, scope: !815)
!826 = !DILocation(line: 280, column: 9, scope: !815)
!827 = !DILocation(line: 282, column: 12, scope: !822)
!828 = !DILocation(line: 282, column: 9, scope: !815)
!829 = !DILocation(line: 283, column: 9, scope: !821)
!830 = !DILocation(line: 285, column: 17, scope: !821)
!831 = !DILocation(line: 283, column: 24, scope: !821)
!832 = !DILocation(line: 286, column: 16, scope: !821)
!833 = !DILocation(line: 283, column: 29, scope: !821)
!834 = !DILocation(line: 286, column: 14, scope: !821)
!835 = !DILocation(line: 287, column: 18, scope: !836)
!836 = distinct !DILexicalBlock(scope: !821, file: !1, line: 287, column: 13)
!837 = !DILocation(line: 287, column: 13, scope: !821)
!838 = !DILocation(line: 87, column: 39, scope: !170, inlinedAt: !839)
!839 = distinct !DILocation(line: 288, column: 61, scope: !840)
!840 = distinct !DILexicalBlock(scope: !836, file: !1, line: 287, column: 27)
!841 = !DILocation(line: 88, column: 27, scope: !170, inlinedAt: !839)
!842 = !DILocation(line: 88, column: 19, scope: !170, inlinedAt: !839)
!843 = !DILocation(line: 89, column: 5, scope: !170, inlinedAt: !839)
!844 = !DILocation(line: 91, column: 20, scope: !188, inlinedAt: !839)
!845 = !DILocation(line: 91, column: 13, scope: !188, inlinedAt: !839)
!846 = !DILocation(line: 93, column: 20, scope: !188, inlinedAt: !839)
!847 = !DILocation(line: 93, column: 34, scope: !188, inlinedAt: !839)
!848 = !DILocation(line: 93, column: 13, scope: !188, inlinedAt: !839)
!849 = !DILocation(line: 95, column: 20, scope: !188, inlinedAt: !839)
!850 = !DILocation(line: 95, column: 35, scope: !188, inlinedAt: !839)
!851 = !DILocation(line: 95, column: 13, scope: !188, inlinedAt: !839)
!852 = !DILocation(line: 97, column: 20, scope: !188, inlinedAt: !839)
!853 = !DILocation(line: 97, column: 35, scope: !188, inlinedAt: !839)
!854 = !DILocation(line: 97, column: 13, scope: !188, inlinedAt: !839)
!855 = !DILocation(line: 99, column: 20, scope: !188, inlinedAt: !839)
!856 = !DILocation(line: 99, column: 35, scope: !188, inlinedAt: !839)
!857 = !DILocation(line: 99, column: 13, scope: !188, inlinedAt: !839)
!858 = !DILocation(line: 0, scope: !188, inlinedAt: !839)
!859 = !DILocation(line: 102, column: 1, scope: !170, inlinedAt: !839)
!860 = !DILocation(line: 288, column: 61, scope: !840)
!861 = !DILocation(line: 288, column: 20, scope: !840)
!862 = !DILocation(line: 288, column: 18, scope: !840)
!863 = !DILocation(line: 289, column: 22, scope: !864)
!864 = distinct !DILexicalBlock(scope: !840, file: !1, line: 289, column: 17)
!865 = !DILocation(line: 289, column: 17, scope: !840)
!866 = !DILocation(line: 290, column: 22, scope: !867)
!867 = distinct !DILexicalBlock(scope: !864, file: !1, line: 289, column: 31)
!868 = !DILocation(line: 291, column: 22, scope: !867)
!869 = !DILocation(line: 292, column: 24, scope: !867)
!870 = !DILocation(line: 294, column: 13, scope: !867)
!871 = !DILocation(line: 0, scope: !815)
!872 = !DILocation(line: 296, column: 5, scope: !822)
!873 = !DILocation(line: 296, column: 5, scope: !821)
!874 = !DILocation(line: 297, column: 34, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !1, line: 297, column: 13)
!876 = distinct !DILexicalBlock(scope: !877, file: !1, line: 296, column: 48)
!877 = distinct !DILexicalBlock(scope: !822, file: !1, line: 296, column: 16)
!878 = !DILocation(line: 297, column: 13, scope: !875)
!879 = !DILocation(line: 297, column: 46, scope: !875)
!880 = !DILocation(line: 297, column: 13, scope: !876)
!881 = !DILocation(line: 301, column: 34, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !1, line: 301, column: 17)
!883 = distinct !DILexicalBlock(scope: !875, file: !1, line: 297, column: 55)
!884 = !DILocation(line: 301, column: 17, scope: !882)
!885 = !DILocation(line: 301, column: 17, scope: !883)
!886 = !DILocation(line: 301, column: 54, scope: !882)
!887 = !DILocation(line: 301, column: 40, scope: !882)
!888 = !DILocation(line: 305, column: 9, scope: !889)
!889 = distinct !DILexicalBlock(scope: !877, file: !1, line: 304, column: 12)
!890 = !DILocation(line: 307, column: 5, scope: !815)
!891 = distinct !DISubprogram(name: "hashTypeInitIterator", scope: !1, file: !1, line: 324, type: !892, isLocal: false, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !915)
!892 = !DISubroutineType(types: !893)
!893 = !{!894, !128}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashTypeIterator", file: !130, line: 1375, baseType: !896)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 1367, size: 384, elements: !897)
!897 = !{!898, !899, !900, !901, !902, !914}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !896, file: !130, line: 1368, baseType: !128, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !896, file: !130, line: 1369, baseType: !39, size: 32, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "fptr", scope: !896, file: !130, line: 1371, baseType: !5, size: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "vptr", scope: !896, file: !130, line: 1371, baseType: !5, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !896, file: !130, line: 1373, baseType: !903, size: 64, offset: 256)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !11, line: 95, baseType: !905)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !11, line: 88, size: 384, elements: !906)
!906 = !{!907, !908, !909, !910, !911, !912, !913}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !905, file: !11, line: 89, baseType: !9, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !905, file: !11, line: 90, baseType: !66, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !905, file: !11, line: 91, baseType: !39, size: 32, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !905, file: !11, line: 91, baseType: !39, size: 32, offset: 160)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !905, file: !11, line: 92, baseType: !53, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !905, file: !11, line: 92, baseType: !53, size: 64, offset: 256)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !905, file: !11, line: 94, baseType: !249, size: 64, offset: 320)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !896, file: !130, line: 1374, baseType: !53, size: 64, offset: 320)
!915 = !{!916, !917}
!916 = !DILocalVariable(name: "subject", arg: 1, scope: !891, file: !1, line: 324, type: !128)
!917 = !DILocalVariable(name: "hi", scope: !891, file: !1, line: 325, type: !894)
!918 = !DILocation(line: 324, column: 46, scope: !891)
!919 = !DILocation(line: 325, column: 28, scope: !891)
!920 = !DILocation(line: 325, column: 23, scope: !891)
!921 = !DILocation(line: 326, column: 9, scope: !891)
!922 = !DILocation(line: 326, column: 17, scope: !891)
!923 = !{!924, !162, i64 0}
!924 = !{!"", !162, i64 0, !168, i64 8, !162, i64 16, !162, i64 24, !162, i64 32, !162, i64 40}
!925 = !DILocation(line: 327, column: 29, scope: !891)
!926 = !DILocation(line: 327, column: 9, scope: !891)
!927 = !DILocation(line: 327, column: 18, scope: !891)
!928 = !{!924, !168, i64 8}
!929 = !DILocation(line: 329, column: 9, scope: !891)
!930 = !DILocation(line: 330, column: 13, scope: !931)
!931 = distinct !DILexicalBlock(scope: !932, file: !1, line: 329, column: 47)
!932 = distinct !DILexicalBlock(scope: !891, file: !1, line: 329, column: 9)
!933 = !DILocation(line: 330, column: 18, scope: !931)
!934 = !DILocation(line: 332, column: 5, scope: !931)
!935 = !DILocation(line: 333, column: 43, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !1, line: 332, column: 49)
!937 = distinct !DILexicalBlock(scope: !932, file: !1, line: 332, column: 16)
!938 = !DILocation(line: 333, column: 18, scope: !936)
!939 = !DILocation(line: 333, column: 13, scope: !936)
!940 = !DILocation(line: 333, column: 16, scope: !936)
!941 = !{!924, !162, i64 32}
!942 = !DILocation(line: 335, column: 9, scope: !943)
!943 = distinct !DILexicalBlock(scope: !937, file: !1, line: 334, column: 12)
!944 = !DILocation(line: 337, column: 5, scope: !891)
!945 = distinct !DISubprogram(name: "hashTypeReleaseIterator", scope: !1, file: !1, line: 340, type: !946, isLocal: false, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !948)
!946 = !DISubroutineType(types: !947)
!947 = !{null, !894}
!948 = !{!949}
!949 = !DILocalVariable(name: "hi", arg: 1, scope: !945, file: !1, line: 340, type: !894)
!950 = !DILocation(line: 340, column: 48, scope: !945)
!951 = !DILocation(line: 341, column: 13, scope: !952)
!952 = distinct !DILexicalBlock(scope: !945, file: !1, line: 341, column: 9)
!953 = !DILocation(line: 341, column: 22, scope: !952)
!954 = !DILocation(line: 341, column: 9, scope: !945)
!955 = !DILocation(line: 342, column: 33, scope: !952)
!956 = !DILocation(line: 342, column: 9, scope: !952)
!957 = !DILocation(line: 343, column: 11, scope: !945)
!958 = !DILocation(line: 343, column: 5, scope: !945)
!959 = !DILocation(line: 344, column: 1, scope: !945)
!960 = distinct !DISubprogram(name: "hashTypeNext", scope: !1, file: !1, line: 348, type: !961, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !963)
!961 = !DISubroutineType(types: !962)
!962 = !{!39, !894}
!963 = !{!964, !965, !968, !969}
!964 = !DILocalVariable(name: "hi", arg: 1, scope: !960, file: !1, line: 348, type: !894)
!965 = !DILocalVariable(name: "zl", scope: !966, file: !1, line: 350, type: !5)
!966 = distinct !DILexicalBlock(scope: !967, file: !1, line: 349, column: 47)
!967 = distinct !DILexicalBlock(scope: !960, file: !1, line: 349, column: 9)
!968 = !DILocalVariable(name: "fptr", scope: !966, file: !1, line: 351, type: !5)
!969 = !DILocalVariable(name: "vptr", scope: !966, file: !1, line: 351, type: !5)
!970 = !DILocation(line: 348, column: 36, scope: !960)
!971 = !DILocation(line: 349, column: 13, scope: !967)
!972 = !DILocation(line: 349, column: 9, scope: !960)
!973 = !DILocation(line: 353, column: 18, scope: !966)
!974 = !DILocation(line: 353, column: 27, scope: !966)
!975 = !DILocation(line: 350, column: 24, scope: !966)
!976 = !DILocation(line: 354, column: 20, scope: !966)
!977 = !{!924, !162, i64 16}
!978 = !DILocation(line: 351, column: 24, scope: !966)
!979 = !DILocation(line: 355, column: 20, scope: !966)
!980 = !{!924, !162, i64 24}
!981 = !DILocation(line: 351, column: 31, scope: !966)
!982 = !DILocation(line: 357, column: 18, scope: !983)
!983 = distinct !DILexicalBlock(scope: !966, file: !1, line: 357, column: 13)
!984 = !DILocation(line: 0, scope: !985)
!985 = distinct !DILexicalBlock(scope: !983, file: !1, line: 361, column: 16)
!986 = !DILocation(line: 357, column: 13, scope: !966)
!987 = !DILocation(line: 359, column: 13, scope: !988)
!988 = distinct !DILexicalBlock(scope: !983, file: !1, line: 357, column: 27)
!989 = !DILocation(line: 360, column: 20, scope: !988)
!990 = !DILocation(line: 361, column: 9, scope: !988)
!991 = !DILocation(line: 363, column: 13, scope: !985)
!992 = !DILocation(line: 364, column: 20, scope: !985)
!993 = !DILocation(line: 366, column: 18, scope: !994)
!994 = distinct !DILexicalBlock(scope: !966, file: !1, line: 366, column: 13)
!995 = !DILocation(line: 366, column: 13, scope: !966)
!996 = !DILocation(line: 369, column: 16, scope: !966)
!997 = !DILocation(line: 370, column: 9, scope: !966)
!998 = !DILocation(line: 373, column: 18, scope: !966)
!999 = !DILocation(line: 374, column: 18, scope: !966)
!1000 = !DILocation(line: 376, column: 36, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 376, column: 13)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 375, column: 49)
!1003 = distinct !DILexicalBlock(scope: !967, file: !1, line: 375, column: 16)
!1004 = !DILocation(line: 376, column: 23, scope: !1001)
!1005 = !DILocation(line: 376, column: 18, scope: !1001)
!1006 = !DILocation(line: 376, column: 21, scope: !1001)
!1007 = !{!924, !162, i64 40}
!1008 = !DILocation(line: 376, column: 41, scope: !1001)
!1009 = !DILocation(line: 376, column: 13, scope: !1002)
!1010 = !DILocation(line: 378, column: 9, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 377, column: 12)
!1012 = !DILocation(line: 380, column: 5, scope: !960)
!1013 = !DILocation(line: 0, scope: !1001)
!1014 = !DILocation(line: 381, column: 1, scope: !960)
!1015 = distinct !DISubprogram(name: "hashTypeCurrentFromZiplist", scope: !1, file: !1, line: 385, type: !1016, isLocal: false, isDefinition: true, scopeLine: 389, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1018)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !894, !39, !246, !247, !248}
!1018 = !{!1019, !1020, !1021, !1022, !1023, !1024}
!1019 = !DILocalVariable(name: "hi", arg: 1, scope: !1015, file: !1, line: 385, type: !894)
!1020 = !DILocalVariable(name: "what", arg: 2, scope: !1015, file: !1, line: 385, type: !39)
!1021 = !DILocalVariable(name: "vstr", arg: 3, scope: !1015, file: !1, line: 386, type: !246)
!1022 = !DILocalVariable(name: "vlen", arg: 4, scope: !1015, file: !1, line: 387, type: !247)
!1023 = !DILocalVariable(name: "vll", arg: 5, scope: !1015, file: !1, line: 388, type: !248)
!1024 = !DILocalVariable(name: "ret", scope: !1015, file: !1, line: 390, type: !39)
!1025 = !DILocation(line: 385, column: 51, scope: !1015)
!1026 = !DILocation(line: 385, column: 59, scope: !1015)
!1027 = !DILocation(line: 386, column: 49, scope: !1015)
!1028 = !DILocation(line: 387, column: 47, scope: !1015)
!1029 = !DILocation(line: 388, column: 44, scope: !1015)
!1030 = !DILocation(line: 392, column: 5, scope: !1015)
!1031 = !DILocation(line: 394, column: 14, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 394, column: 9)
!1033 = !DILocation(line: 394, column: 9, scope: !1015)
!1034 = !DILocation(line: 395, column: 30, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 394, column: 30)
!1036 = !DILocation(line: 395, column: 15, scope: !1035)
!1037 = !DILocation(line: 390, column: 9, scope: !1015)
!1038 = !DILocation(line: 396, column: 9, scope: !1035)
!1039 = !DILocation(line: 398, column: 30, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 397, column: 12)
!1041 = !DILocation(line: 398, column: 15, scope: !1040)
!1042 = !DILocation(line: 399, column: 9, scope: !1040)
!1043 = !DILocation(line: 401, column: 1, scope: !1015)
!1044 = distinct !DISubprogram(name: "hashTypeCurrentFromHashTable", scope: !1, file: !1, line: 406, type: !1045, isLocal: false, isDefinition: true, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1047)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!176, !894, !39}
!1047 = !{!1048, !1049}
!1048 = !DILocalVariable(name: "hi", arg: 1, scope: !1044, file: !1, line: 406, type: !894)
!1049 = !DILocalVariable(name: "what", arg: 2, scope: !1044, file: !1, line: 406, type: !39)
!1050 = !DILocation(line: 406, column: 52, scope: !1044)
!1051 = !DILocation(line: 406, column: 60, scope: !1044)
!1052 = !DILocation(line: 407, column: 5, scope: !1044)
!1053 = !DILocation(line: 409, column: 14, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1044, file: !1, line: 409, column: 9)
!1055 = !DILocation(line: 0, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 411, column: 12)
!1057 = !DILocation(line: 410, column: 16, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 409, column: 30)
!1059 = !DILocation(line: 412, column: 16, scope: !1056)
!1060 = !DILocation(line: 409, column: 9, scope: !1044)
!1061 = !DILocation(line: 414, column: 1, scope: !1044)
!1062 = distinct !DISubprogram(name: "hashTypeCurrentObject", scope: !1, file: !1, line: 426, type: !1016, isLocal: false, isDefinition: true, scopeLine: 426, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1063)
!1063 = !{!1064, !1065, !1066, !1067, !1068, !1069}
!1064 = !DILocalVariable(name: "hi", arg: 1, scope: !1062, file: !1, line: 426, type: !894)
!1065 = !DILocalVariable(name: "what", arg: 2, scope: !1062, file: !1, line: 426, type: !39)
!1066 = !DILocalVariable(name: "vstr", arg: 3, scope: !1062, file: !1, line: 426, type: !246)
!1067 = !DILocalVariable(name: "vlen", arg: 4, scope: !1062, file: !1, line: 426, type: !247)
!1068 = !DILocalVariable(name: "vll", arg: 5, scope: !1062, file: !1, line: 426, type: !248)
!1069 = !DILocalVariable(name: "ele", scope: !1070, file: !1, line: 431, type: !176)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !1, line: 430, column: 49)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !1, line: 430, column: 16)
!1072 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 427, column: 9)
!1073 = !DILocation(line: 426, column: 46, scope: !1062)
!1074 = !DILocation(line: 426, column: 54, scope: !1062)
!1075 = !DILocation(line: 426, column: 76, scope: !1062)
!1076 = !DILocation(line: 426, column: 96, scope: !1062)
!1077 = !DILocation(line: 426, column: 113, scope: !1062)
!1078 = !DILocation(line: 427, column: 13, scope: !1072)
!1079 = !DILocation(line: 427, column: 9, scope: !1062)
!1080 = !DILocation(line: 428, column: 15, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1072, file: !1, line: 427, column: 47)
!1082 = !DILocation(line: 429, column: 9, scope: !1081)
!1083 = !DILocation(line: 430, column: 5, scope: !1081)
!1084 = !DILocation(line: 406, column: 52, scope: !1044, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 431, column: 19, scope: !1070)
!1086 = !DILocation(line: 406, column: 60, scope: !1044, inlinedAt: !1085)
!1087 = !DILocation(line: 409, column: 14, scope: !1054, inlinedAt: !1085)
!1088 = !DILocation(line: 0, scope: !1056, inlinedAt: !1085)
!1089 = !DILocation(line: 410, column: 16, scope: !1058, inlinedAt: !1085)
!1090 = !DILocation(line: 412, column: 16, scope: !1056, inlinedAt: !1085)
!1091 = !DILocation(line: 409, column: 9, scope: !1044, inlinedAt: !1085)
!1092 = !DILocation(line: 414, column: 1, scope: !1044, inlinedAt: !1085)
!1093 = !DILocation(line: 431, column: 13, scope: !1070)
!1094 = !DILocation(line: 432, column: 15, scope: !1070)
!1095 = !DILocation(line: 87, column: 39, scope: !170, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 433, column: 17, scope: !1070)
!1097 = !DILocation(line: 88, column: 27, scope: !170, inlinedAt: !1096)
!1098 = !DILocation(line: 88, column: 19, scope: !170, inlinedAt: !1096)
!1099 = !DILocation(line: 89, column: 5, scope: !170, inlinedAt: !1096)
!1100 = !DILocation(line: 91, column: 20, scope: !188, inlinedAt: !1096)
!1101 = !DILocation(line: 91, column: 13, scope: !188, inlinedAt: !1096)
!1102 = !DILocation(line: 93, column: 20, scope: !188, inlinedAt: !1096)
!1103 = !DILocation(line: 93, column: 34, scope: !188, inlinedAt: !1096)
!1104 = !DILocation(line: 93, column: 13, scope: !188, inlinedAt: !1096)
!1105 = !DILocation(line: 95, column: 20, scope: !188, inlinedAt: !1096)
!1106 = !DILocation(line: 95, column: 35, scope: !188, inlinedAt: !1096)
!1107 = !DILocation(line: 95, column: 13, scope: !188, inlinedAt: !1096)
!1108 = !DILocation(line: 97, column: 20, scope: !188, inlinedAt: !1096)
!1109 = !DILocation(line: 97, column: 35, scope: !188, inlinedAt: !1096)
!1110 = !DILocation(line: 97, column: 13, scope: !188, inlinedAt: !1096)
!1111 = !DILocation(line: 99, column: 20, scope: !188, inlinedAt: !1096)
!1112 = !DILocation(line: 99, column: 35, scope: !188, inlinedAt: !1096)
!1113 = !DILocation(line: 99, column: 13, scope: !188, inlinedAt: !1096)
!1114 = !DILocation(line: 0, scope: !188, inlinedAt: !1096)
!1115 = !DILocation(line: 102, column: 1, scope: !170, inlinedAt: !1096)
!1116 = !DILocation(line: 433, column: 17, scope: !1070)
!1117 = !DILocation(line: 433, column: 15, scope: !1070)
!1118 = !DILocation(line: 435, column: 9, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1071, file: !1, line: 434, column: 12)
!1120 = !DILocation(line: 437, column: 1, scope: !1062)
!1121 = distinct !DISubprogram(name: "hashTypeCurrentObjectNewSds", scope: !1, file: !1, line: 441, type: !1045, isLocal: false, isDefinition: true, scopeLine: 441, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1122)
!1122 = !{!1123, !1124, !1125, !1126, !1127}
!1123 = !DILocalVariable(name: "hi", arg: 1, scope: !1121, file: !1, line: 441, type: !894)
!1124 = !DILocalVariable(name: "what", arg: 2, scope: !1121, file: !1, line: 441, type: !39)
!1125 = !DILocalVariable(name: "vstr", scope: !1121, file: !1, line: 442, type: !5)
!1126 = !DILocalVariable(name: "vlen", scope: !1121, file: !1, line: 443, type: !110)
!1127 = !DILocalVariable(name: "vll", scope: !1121, file: !1, line: 444, type: !249)
!1128 = !DILocation(line: 441, column: 51, scope: !1121)
!1129 = !DILocation(line: 441, column: 59, scope: !1121)
!1130 = !DILocation(line: 442, column: 5, scope: !1121)
!1131 = !DILocation(line: 443, column: 5, scope: !1121)
!1132 = !DILocation(line: 444, column: 5, scope: !1121)
!1133 = !DILocation(line: 442, column: 20, scope: !1121)
!1134 = !DILocation(line: 443, column: 18, scope: !1121)
!1135 = !DILocation(line: 444, column: 15, scope: !1121)
!1136 = !DILocation(line: 446, column: 5, scope: !1121)
!1137 = !DILocation(line: 447, column: 9, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1121, file: !1, line: 447, column: 9)
!1139 = !DILocation(line: 447, column: 9, scope: !1121)
!1140 = !DILocation(line: 447, column: 37, scope: !1138)
!1141 = !DILocation(line: 447, column: 22, scope: !1138)
!1142 = !DILocation(line: 447, column: 15, scope: !1138)
!1143 = !DILocation(line: 448, column: 28, scope: !1121)
!1144 = !DILocation(line: 448, column: 12, scope: !1121)
!1145 = !DILocation(line: 448, column: 5, scope: !1121)
!1146 = !DILocation(line: 0, scope: !1121)
!1147 = !DILocation(line: 449, column: 1, scope: !1121)
!1148 = distinct !DISubprogram(name: "hashTypeLookupWriteOrCreate", scope: !1, file: !1, line: 451, type: !1149, isLocal: false, isDefinition: true, scopeLine: 451, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1314)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!128, !1151, !128}
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !130, line: 780, baseType: !1153)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !130, line: 723, size: 135360, elements: !1154)
!1154 = !{!1155, !1156, !1157, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1229, !1230, !1231, !1232, !1233, !1234, !1236, !1237, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1263, !1264, !1268, !1269, !1285, !1286, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1153, file: !130, line: 724, baseType: !23, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1153, file: !130, line: 725, baseType: !39, size: 32, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !1153, file: !130, line: 726, baseType: !1158, size: 64, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !130, line: 656, baseType: !1160)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !130, line: 647, size: 512, elements: !1161)
!1161 = !{!1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !1160, file: !130, line: 648, baseType: !9, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1160, file: !130, line: 649, baseType: !9, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !1160, file: !130, line: 650, baseType: !9, size: 64, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !1160, file: !130, line: 651, baseType: !9, size: 64, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1160, file: !130, line: 652, baseType: !9, size: 64, offset: 256)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1160, file: !130, line: 653, baseType: !39, size: 32, offset: 320)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !1160, file: !130, line: 654, baseType: !249, size: 64, offset: 384)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !1160, file: !130, line: 655, baseType: !1170, size: 64, offset: 448)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !1172, line: 54, baseType: !1173)
!1172 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !1172, line: 47, size: 384, elements: !1174)
!1174 = !{!1175, !1184, !1185, !1189, !1193, !1197}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1173, file: !1172, line: 48, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !1172, line: 40, baseType: !1178)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !1172, line: 36, size: 192, elements: !1179)
!1179 = !{!1180, !1182, !1183}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1178, file: !1172, line: 37, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1178, file: !1172, line: 38, baseType: !1181, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1178, file: !1172, line: 39, baseType: !4, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1173, file: !1172, line: 49, baseType: !1176, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !1173, file: !1172, line: 50, baseType: !1186, size: 64, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!4, !4}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1173, file: !1172, line: 51, baseType: !1190, size: 64, offset: 192)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{null, !4}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1173, file: !1172, line: 52, baseType: !1194, size: 64, offset: 256)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!39, !4, !4}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1173, file: !1172, line: 53, baseType: !27, size: 64, offset: 320)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1153, file: !130, line: 727, baseType: !128, size: 64, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !1153, file: !130, line: 728, baseType: !176, size: 64, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !1153, file: !130, line: 729, baseType: !437, size: 64, offset: 320)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !1153, file: !130, line: 730, baseType: !176, size: 64, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !1153, file: !130, line: 734, baseType: !437, size: 64, offset: 448)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1153, file: !130, line: 735, baseType: !39, size: 32, offset: 512)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1153, file: !130, line: 736, baseType: !138, size: 64, offset: 576)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1153, file: !130, line: 737, baseType: !1206, size: 64, offset: 640)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !130, line: 1307, size: 640, elements: !1208)
!1208 = !{!1209, !1210, !1215, !1216, !1217, !1218, !1224, !1225, !1226, !1227, !1228}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1207, file: !130, line: 1308, baseType: !7, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !1207, file: !130, line: 1309, baseType: !1211, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !130, line: 1305, baseType: !1213)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{null, !1151}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !1207, file: !130, line: 1310, baseType: !39, size: 32, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !1207, file: !130, line: 1311, baseType: !7, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1207, file: !130, line: 1312, baseType: !39, size: 32, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !1207, file: !130, line: 1315, baseType: !1219, size: 64, offset: 320)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !130, line: 1306, baseType: !1221)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!1223, !1206, !138, !39, !1223}
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !1207, file: !130, line: 1317, baseType: !39, size: 32, offset: 384)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !1207, file: !130, line: 1318, baseType: !39, size: 32, offset: 416)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !1207, file: !130, line: 1319, baseType: !39, size: 32, offset: 448)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !1207, file: !130, line: 1320, baseType: !249, size: 64, offset: 512)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !1207, file: !130, line: 1320, baseType: !249, size: 64, offset: 576)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !1153, file: !130, line: 737, baseType: !1206, size: 64, offset: 704)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !1153, file: !130, line: 738, baseType: !39, size: 32, offset: 768)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !1153, file: !130, line: 739, baseType: !39, size: 32, offset: 800)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !1153, file: !130, line: 740, baseType: !66, size: 64, offset: 832)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !1153, file: !130, line: 741, baseType: !1170, size: 64, offset: 896)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !1153, file: !130, line: 742, baseType: !1235, size: 64, offset: 960)
!1235 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !1153, file: !130, line: 743, baseType: !437, size: 64, offset: 1024)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1153, file: !130, line: 745, baseType: !1238, size: 64, offset: 1088)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1239, line: 34, baseType: !66)
!1239 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !1153, file: !130, line: 746, baseType: !1238, size: 64, offset: 1152)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !1153, file: !130, line: 747, baseType: !1238, size: 64, offset: 1216)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1153, file: !130, line: 748, baseType: !39, size: 32, offset: 1280)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !1153, file: !130, line: 749, baseType: !39, size: 32, offset: 1312)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !1153, file: !130, line: 750, baseType: !39, size: 32, offset: 1344)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !1153, file: !130, line: 751, baseType: !39, size: 32, offset: 1376)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !1153, file: !130, line: 752, baseType: !39, size: 32, offset: 1408)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !1153, file: !130, line: 753, baseType: !1248, size: 64, offset: 1472)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1249, line: 173, baseType: !1250)
!1249 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !440, line: 100, baseType: !1251)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !440, line: 44, baseType: !66)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !1153, file: !130, line: 754, baseType: !1248, size: 64, offset: 1536)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !1153, file: !130, line: 755, baseType: !176, size: 64, offset: 1600)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !1153, file: !130, line: 756, baseType: !249, size: 64, offset: 1664)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !1153, file: !130, line: 757, baseType: !249, size: 64, offset: 1728)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !1153, file: !130, line: 758, baseType: !249, size: 64, offset: 1792)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !1153, file: !130, line: 759, baseType: !249, size: 64, offset: 1856)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !1153, file: !130, line: 760, baseType: !249, size: 64, offset: 1920)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !1153, file: !130, line: 763, baseType: !1260, size: 328, offset: 1984)
!1260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 328, elements: !1261)
!1261 = !{!1262}
!1262 = !DISubrange(count: 41)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !1153, file: !130, line: 764, baseType: !39, size: 32, offset: 2336)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !1153, file: !130, line: 765, baseType: !1265, size: 368, offset: 2368)
!1265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 368, elements: !1266)
!1266 = !{!1267}
!1267 = !DISubrange(count: 46)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !1153, file: !130, line: 766, baseType: !39, size: 32, offset: 2752)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !1153, file: !130, line: 767, baseType: !1270, size: 256, offset: 2816)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !130, line: 673, baseType: !1271)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !130, line: 665, size: 256, elements: !1272)
!1272 = !{!1273, !1281, !1282, !1283, !1284}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !1271, file: !130, line: 666, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !130, line: 663, baseType: !1276)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !130, line: 659, size: 192, elements: !1277)
!1277 = !{!1278, !1279, !1280}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1276, file: !130, line: 660, baseType: !138, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1276, file: !130, line: 661, baseType: !39, size: 32, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1276, file: !130, line: 662, baseType: !1206, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1271, file: !130, line: 667, baseType: !39, size: 32, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1271, file: !130, line: 668, baseType: !39, size: 32, offset: 96)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !1271, file: !130, line: 671, baseType: !39, size: 32, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !1271, file: !130, line: 672, baseType: !1238, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !1153, file: !130, line: 768, baseType: !39, size: 32, offset: 3072)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !1153, file: !130, line: 769, baseType: !1287, size: 704, offset: 3136)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !130, line: 703, baseType: !1288)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !130, line: 677, size: 704, elements: !1289)
!1289 = !{!1290, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1288, file: !130, line: 679, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !130, line: 52, baseType: !249)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1288, file: !130, line: 683, baseType: !9, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1288, file: !130, line: 685, baseType: !128, size: 64, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !1288, file: !130, line: 689, baseType: !437, size: 64, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !1288, file: !130, line: 690, baseType: !128, size: 64, offset: 256)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !1288, file: !130, line: 691, baseType: !128, size: 64, offset: 320)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !1288, file: !130, line: 692, baseType: !1291, size: 64, offset: 384)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !1288, file: !130, line: 692, baseType: !1291, size: 64, offset: 448)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !1288, file: !130, line: 693, baseType: !39, size: 32, offset: 512)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !1288, file: !130, line: 696, baseType: !39, size: 32, offset: 544)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !1288, file: !130, line: 697, baseType: !249, size: 64, offset: 576)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !1288, file: !130, line: 700, baseType: !4, size: 64, offset: 640)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !1153, file: !130, line: 770, baseType: !249, size: 64, offset: 3840)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1153, file: !130, line: 771, baseType: !1170, size: 64, offset: 3904)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !1153, file: !130, line: 772, baseType: !9, size: 64, offset: 3968)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !1153, file: !130, line: 773, baseType: !1170, size: 64, offset: 4032)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !1153, file: !130, line: 774, baseType: !176, size: 64, offset: 4096)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !1153, file: !130, line: 775, baseType: !1176, size: 64, offset: 4160)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !1153, file: !130, line: 778, baseType: !39, size: 32, offset: 4224)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1153, file: !130, line: 779, baseType: !1311, size: 131072, offset: 4256)
!1311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 131072, elements: !1312)
!1312 = !{!1313}
!1313 = !DISubrange(count: 16384)
!1314 = !{!1315, !1316, !1317}
!1315 = !DILocalVariable(name: "c", arg: 1, scope: !1148, file: !1, line: 451, type: !1151)
!1316 = !DILocalVariable(name: "key", arg: 2, scope: !1148, file: !1, line: 451, type: !128)
!1317 = !DILocalVariable(name: "o", scope: !1148, file: !1, line: 452, type: !128)
!1318 = !DILocation(line: 451, column: 43, scope: !1148)
!1319 = !DILocation(line: 451, column: 52, scope: !1148)
!1320 = !DILocation(line: 452, column: 33, scope: !1148)
!1321 = !{!1322, !162, i64 16}
!1322 = !{!"client", !205, i64 0, !168, i64 8, !162, i64 16, !162, i64 24, !162, i64 32, !205, i64 40, !162, i64 48, !205, i64 56, !168, i64 64, !162, i64 72, !162, i64 80, !162, i64 88, !168, i64 96, !168, i64 100, !205, i64 104, !162, i64 112, !429, i64 120, !205, i64 128, !205, i64 136, !205, i64 144, !205, i64 152, !168, i64 160, !168, i64 164, !168, i64 168, !168, i64 172, !168, i64 176, !205, i64 184, !205, i64 192, !162, i64 200, !429, i64 208, !429, i64 216, !429, i64 224, !429, i64 232, !429, i64 240, !163, i64 248, !168, i64 292, !163, i64 296, !168, i64 344, !1323, i64 352, !168, i64 384, !1324, i64 392, !429, i64 480, !162, i64 488, !162, i64 496, !162, i64 504, !162, i64 512, !162, i64 520, !168, i64 528, !163, i64 532}
!1323 = !{!"multiState", !162, i64 0, !168, i64 8, !168, i64 12, !168, i64 16, !205, i64 24}
!1324 = !{!"blockingState", !429, i64 0, !162, i64 8, !162, i64 16, !205, i64 24, !162, i64 32, !162, i64 40, !429, i64 48, !429, i64 56, !168, i64 64, !168, i64 68, !429, i64 72, !162, i64 80}
!1325 = !DILocation(line: 452, column: 15, scope: !1148)
!1326 = !DILocation(line: 452, column: 11, scope: !1148)
!1327 = !DILocation(line: 453, column: 11, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1148, file: !1, line: 453, column: 9)
!1329 = !DILocation(line: 453, column: 9, scope: !1148)
!1330 = !DILocation(line: 454, column: 13, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1328, file: !1, line: 453, column: 20)
!1332 = !DILocation(line: 455, column: 18, scope: !1331)
!1333 = !DILocation(line: 455, column: 9, scope: !1331)
!1334 = !DILocation(line: 456, column: 5, scope: !1331)
!1335 = !DILocation(line: 457, column: 16, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !1, line: 457, column: 13)
!1337 = distinct !DILexicalBlock(scope: !1328, file: !1, line: 456, column: 12)
!1338 = !DILocation(line: 457, column: 21, scope: !1336)
!1339 = !DILocation(line: 457, column: 13, scope: !1337)
!1340 = !DILocation(line: 458, column: 31, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1336, file: !1, line: 457, column: 34)
!1342 = !{!1343, !162, i64 112}
!1343 = !{!"sharedObjectsStruct", !162, i64 0, !162, i64 8, !162, i64 16, !162, i64 24, !162, i64 32, !162, i64 40, !162, i64 48, !162, i64 56, !162, i64 64, !162, i64 72, !162, i64 80, !162, i64 88, !162, i64 96, !162, i64 104, !162, i64 112, !162, i64 120, !162, i64 128, !162, i64 136, !162, i64 144, !162, i64 152, !162, i64 160, !162, i64 168, !162, i64 176, !162, i64 184, !162, i64 192, !162, i64 200, !162, i64 208, !162, i64 216, !162, i64 224, !162, i64 232, !162, i64 240, !162, i64 248, !162, i64 256, !162, i64 264, !162, i64 272, !162, i64 280, !162, i64 288, !162, i64 296, !162, i64 304, !162, i64 312, !162, i64 320, !162, i64 328, !162, i64 336, !162, i64 344, !162, i64 352, !162, i64 360, !163, i64 368, !163, i64 448, !163, i64 80448, !163, i64 80704, !162, i64 80960, !162, i64 80968}
!1344 = !DILocation(line: 458, column: 13, scope: !1341)
!1345 = !DILocation(line: 459, column: 13, scope: !1341)
!1346 = !DILocation(line: 0, scope: !1341)
!1347 = !DILocation(line: 463, column: 1, scope: !1148)
!1348 = distinct !DISubprogram(name: "hashTypeConvertZiplist", scope: !1, file: !1, line: 465, type: !211, isLocal: false, isDefinition: true, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1349)
!1349 = !{!1350, !1351, !1352, !1356, !1357, !1358, !1360}
!1350 = !DILocalVariable(name: "o", arg: 1, scope: !1348, file: !1, line: 465, type: !128)
!1351 = !DILocalVariable(name: "enc", arg: 2, scope: !1348, file: !1, line: 465, type: !39)
!1352 = !DILocalVariable(name: "hi", scope: !1353, file: !1, line: 472, type: !894)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !1, line: 471, column: 40)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 471, column: 16)
!1355 = distinct !DILexicalBlock(scope: !1348, file: !1, line: 468, column: 9)
!1356 = !DILocalVariable(name: "dict", scope: !1353, file: !1, line: 473, type: !9)
!1357 = !DILocalVariable(name: "ret", scope: !1353, file: !1, line: 474, type: !39)
!1358 = !DILocalVariable(name: "key", scope: !1359, file: !1, line: 480, type: !176)
!1359 = distinct !DILexicalBlock(scope: !1353, file: !1, line: 479, column: 43)
!1360 = !DILocalVariable(name: "value", scope: !1359, file: !1, line: 480, type: !176)
!1361 = !DILocation(line: 465, column: 35, scope: !1348)
!1362 = !DILocation(line: 465, column: 42, scope: !1348)
!1363 = !DILocation(line: 466, column: 5, scope: !1348)
!1364 = !DILocation(line: 468, column: 9, scope: !1348)
!1365 = !DILocation(line: 324, column: 46, scope: !891, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 476, column: 14, scope: !1353)
!1367 = !DILocation(line: 325, column: 28, scope: !891, inlinedAt: !1366)
!1368 = !DILocation(line: 325, column: 23, scope: !891, inlinedAt: !1366)
!1369 = !DILocation(line: 326, column: 9, scope: !891, inlinedAt: !1366)
!1370 = !DILocation(line: 326, column: 17, scope: !891, inlinedAt: !1366)
!1371 = !DILocation(line: 327, column: 29, scope: !891, inlinedAt: !1366)
!1372 = !DILocation(line: 327, column: 9, scope: !891, inlinedAt: !1366)
!1373 = !DILocation(line: 327, column: 18, scope: !891, inlinedAt: !1366)
!1374 = !DILocation(line: 329, column: 9, scope: !891, inlinedAt: !1366)
!1375 = !DILocation(line: 330, column: 13, scope: !931, inlinedAt: !1366)
!1376 = !DILocation(line: 330, column: 18, scope: !931, inlinedAt: !1366)
!1377 = !DILocation(line: 332, column: 5, scope: !931, inlinedAt: !1366)
!1378 = !DILocation(line: 333, column: 43, scope: !936, inlinedAt: !1366)
!1379 = !DILocation(line: 333, column: 18, scope: !936, inlinedAt: !1366)
!1380 = !DILocation(line: 333, column: 13, scope: !936, inlinedAt: !1366)
!1381 = !DILocation(line: 333, column: 16, scope: !936, inlinedAt: !1366)
!1382 = !DILocation(line: 335, column: 9, scope: !943, inlinedAt: !1366)
!1383 = !DILocation(line: 337, column: 5, scope: !891, inlinedAt: !1366)
!1384 = !DILocation(line: 472, column: 27, scope: !1353)
!1385 = !DILocation(line: 477, column: 16, scope: !1353)
!1386 = !DILocation(line: 473, column: 15, scope: !1353)
!1387 = !DILocation(line: 479, column: 9, scope: !1353)
!1388 = !DILocation(line: 479, column: 16, scope: !1353)
!1389 = !DILocation(line: 479, column: 33, scope: !1353)
!1390 = !DILocation(line: 441, column: 51, scope: !1121, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 482, column: 19, scope: !1359)
!1392 = !DILocation(line: 441, column: 59, scope: !1121, inlinedAt: !1391)
!1393 = !DILocation(line: 442, column: 5, scope: !1121, inlinedAt: !1391)
!1394 = !DILocation(line: 443, column: 5, scope: !1121, inlinedAt: !1391)
!1395 = !DILocation(line: 444, column: 5, scope: !1121, inlinedAt: !1391)
!1396 = !DILocation(line: 442, column: 20, scope: !1121, inlinedAt: !1391)
!1397 = !DILocation(line: 443, column: 18, scope: !1121, inlinedAt: !1391)
!1398 = !DILocation(line: 444, column: 15, scope: !1121, inlinedAt: !1391)
!1399 = !DILocation(line: 446, column: 5, scope: !1121, inlinedAt: !1391)
!1400 = !DILocation(line: 447, column: 9, scope: !1138, inlinedAt: !1391)
!1401 = !DILocation(line: 447, column: 9, scope: !1121, inlinedAt: !1391)
!1402 = !DILocation(line: 447, column: 37, scope: !1138, inlinedAt: !1391)
!1403 = !DILocation(line: 447, column: 22, scope: !1138, inlinedAt: !1391)
!1404 = !DILocation(line: 447, column: 15, scope: !1138, inlinedAt: !1391)
!1405 = !DILocation(line: 448, column: 28, scope: !1121, inlinedAt: !1391)
!1406 = !DILocation(line: 448, column: 12, scope: !1121, inlinedAt: !1391)
!1407 = !DILocation(line: 448, column: 5, scope: !1121, inlinedAt: !1391)
!1408 = !DILocation(line: 0, scope: !1121, inlinedAt: !1391)
!1409 = !DILocation(line: 449, column: 1, scope: !1121, inlinedAt: !1391)
!1410 = !DILocation(line: 480, column: 17, scope: !1359)
!1411 = !DILocation(line: 441, column: 51, scope: !1121, inlinedAt: !1412)
!1412 = distinct !DILocation(line: 483, column: 21, scope: !1359)
!1413 = !DILocation(line: 441, column: 59, scope: !1121, inlinedAt: !1412)
!1414 = !DILocation(line: 442, column: 5, scope: !1121, inlinedAt: !1412)
!1415 = !DILocation(line: 443, column: 5, scope: !1121, inlinedAt: !1412)
!1416 = !DILocation(line: 444, column: 5, scope: !1121, inlinedAt: !1412)
!1417 = !DILocation(line: 442, column: 20, scope: !1121, inlinedAt: !1412)
!1418 = !DILocation(line: 443, column: 18, scope: !1121, inlinedAt: !1412)
!1419 = !DILocation(line: 444, column: 15, scope: !1121, inlinedAt: !1412)
!1420 = !DILocation(line: 446, column: 5, scope: !1121, inlinedAt: !1412)
!1421 = !DILocation(line: 447, column: 9, scope: !1138, inlinedAt: !1412)
!1422 = !DILocation(line: 447, column: 9, scope: !1121, inlinedAt: !1412)
!1423 = !DILocation(line: 447, column: 37, scope: !1138, inlinedAt: !1412)
!1424 = !DILocation(line: 447, column: 22, scope: !1138, inlinedAt: !1412)
!1425 = !DILocation(line: 447, column: 15, scope: !1138, inlinedAt: !1412)
!1426 = !DILocation(line: 448, column: 28, scope: !1121, inlinedAt: !1412)
!1427 = !DILocation(line: 448, column: 12, scope: !1121, inlinedAt: !1412)
!1428 = !DILocation(line: 448, column: 5, scope: !1121, inlinedAt: !1412)
!1429 = !DILocation(line: 0, scope: !1121, inlinedAt: !1412)
!1430 = !DILocation(line: 449, column: 1, scope: !1121, inlinedAt: !1412)
!1431 = !DILocation(line: 480, column: 22, scope: !1359)
!1432 = !DILocation(line: 484, column: 19, scope: !1359)
!1433 = !DILocation(line: 474, column: 13, scope: !1353)
!1434 = !DILocation(line: 485, column: 21, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1359, file: !1, line: 485, column: 17)
!1436 = !DILocation(line: 485, column: 17, scope: !1359)
!1437 = distinct !{!1437, !1387, !1438}
!1438 = !DILocation(line: 490, column: 9, scope: !1353)
!1439 = !DILocation(line: 487, column: 24, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1435, file: !1, line: 485, column: 33)
!1441 = !DILocation(line: 487, column: 28, scope: !1440)
!1442 = !DILocation(line: 486, column: 17, scope: !1440)
!1443 = !DILocation(line: 488, column: 17, scope: !1440)
!1444 = !DILocation(line: 340, column: 48, scope: !945, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 491, column: 9, scope: !1353)
!1446 = !DILocation(line: 341, column: 13, scope: !952, inlinedAt: !1445)
!1447 = !DILocation(line: 341, column: 22, scope: !952, inlinedAt: !1445)
!1448 = !DILocation(line: 341, column: 9, scope: !945, inlinedAt: !1445)
!1449 = !DILocation(line: 342, column: 33, scope: !952, inlinedAt: !1445)
!1450 = !DILocation(line: 342, column: 9, scope: !952, inlinedAt: !1445)
!1451 = !DILocation(line: 343, column: 5, scope: !945, inlinedAt: !1445)
!1452 = !DILocation(line: 344, column: 1, scope: !945, inlinedAt: !1445)
!1453 = !DILocation(line: 492, column: 18, scope: !1353)
!1454 = !DILocation(line: 492, column: 9, scope: !1353)
!1455 = !DILocation(line: 493, column: 21, scope: !1353)
!1456 = !DILocation(line: 494, column: 16, scope: !1353)
!1457 = !DILocation(line: 496, column: 9, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1354, file: !1, line: 495, column: 12)
!1459 = !DILocation(line: 498, column: 1, scope: !1348)
!1460 = distinct !DISubprogram(name: "hsetnxCommand", scope: !1, file: !1, line: 514, type: !1213, isLocal: false, isDefinition: true, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1461)
!1461 = !{!1462, !1463}
!1462 = !DILocalVariable(name: "c", arg: 1, scope: !1460, file: !1, line: 514, type: !1151)
!1463 = !DILocalVariable(name: "o", scope: !1460, file: !1, line: 515, type: !128)
!1464 = !DILocation(line: 514, column: 28, scope: !1460)
!1465 = !DILocation(line: 516, column: 47, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 516, column: 9)
!1467 = !{!1322, !162, i64 72}
!1468 = !DILocation(line: 516, column: 44, scope: !1466)
!1469 = !DILocation(line: 451, column: 43, scope: !1148, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 516, column: 14, scope: !1466)
!1471 = !DILocation(line: 451, column: 52, scope: !1148, inlinedAt: !1470)
!1472 = !DILocation(line: 452, column: 33, scope: !1148, inlinedAt: !1470)
!1473 = !DILocation(line: 452, column: 15, scope: !1148, inlinedAt: !1470)
!1474 = !DILocation(line: 452, column: 11, scope: !1148, inlinedAt: !1470)
!1475 = !DILocation(line: 453, column: 11, scope: !1328, inlinedAt: !1470)
!1476 = !DILocation(line: 453, column: 9, scope: !1148, inlinedAt: !1470)
!1477 = !DILocation(line: 457, column: 16, scope: !1336, inlinedAt: !1470)
!1478 = !DILocation(line: 457, column: 21, scope: !1336, inlinedAt: !1470)
!1479 = !DILocation(line: 457, column: 13, scope: !1337, inlinedAt: !1470)
!1480 = !DILocation(line: 463, column: 1, scope: !1148, inlinedAt: !1470)
!1481 = !DILocation(line: 515, column: 11, scope: !1460)
!1482 = !DILocation(line: 516, column: 9, scope: !1460)
!1483 = !DILocation(line: 458, column: 31, scope: !1341, inlinedAt: !1470)
!1484 = !DILocation(line: 458, column: 13, scope: !1341, inlinedAt: !1470)
!1485 = !DILocation(line: 454, column: 13, scope: !1331, inlinedAt: !1470)
!1486 = !DILocation(line: 455, column: 18, scope: !1331, inlinedAt: !1470)
!1487 = !DILocation(line: 455, column: 9, scope: !1331, inlinedAt: !1470)
!1488 = !DILocation(line: 516, column: 57, scope: !1466)
!1489 = !DILocation(line: 517, column: 32, scope: !1460)
!1490 = !DILocation(line: 517, column: 5, scope: !1460)
!1491 = !DILocation(line: 519, column: 30, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 519, column: 9)
!1493 = !DILocation(line: 519, column: 27, scope: !1492)
!1494 = !DILocation(line: 519, column: 39, scope: !1492)
!1495 = !DILocation(line: 519, column: 9, scope: !1492)
!1496 = !DILocation(line: 519, column: 9, scope: !1460)
!1497 = !DILocation(line: 520, column: 28, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1492, file: !1, line: 519, column: 45)
!1499 = !{!1343, !162, i64 32}
!1500 = !DILocation(line: 520, column: 9, scope: !1498)
!1501 = !DILocation(line: 521, column: 5, scope: !1498)
!1502 = !DILocation(line: 522, column: 26, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1492, file: !1, line: 521, column: 12)
!1504 = !DILocation(line: 522, column: 23, scope: !1503)
!1505 = !DILocation(line: 522, column: 35, scope: !1503)
!1506 = !DILocation(line: 522, column: 39, scope: !1503)
!1507 = !DILocation(line: 522, column: 51, scope: !1503)
!1508 = !DILocation(line: 522, column: 9, scope: !1503)
!1509 = !DILocation(line: 523, column: 28, scope: !1503)
!1510 = !{!1343, !162, i64 40}
!1511 = !DILocation(line: 523, column: 9, scope: !1503)
!1512 = !DILocation(line: 524, column: 30, scope: !1503)
!1513 = !DILocation(line: 524, column: 36, scope: !1503)
!1514 = !DILocation(line: 524, column: 33, scope: !1503)
!1515 = !DILocation(line: 524, column: 9, scope: !1503)
!1516 = !DILocation(line: 525, column: 51, scope: !1503)
!1517 = !DILocation(line: 525, column: 48, scope: !1503)
!1518 = !DILocation(line: 525, column: 62, scope: !1503)
!1519 = !DILocation(line: 525, column: 66, scope: !1503)
!1520 = !{!1521, !168, i64 40}
!1521 = !{!"redisDb", !162, i64 0, !162, i64 8, !162, i64 16, !162, i64 24, !162, i64 32, !168, i64 40, !429, i64 48, !162, i64 56}
!1522 = !DILocation(line: 525, column: 9, scope: !1503)
!1523 = !DILocation(line: 526, column: 21, scope: !1503)
!1524 = !{!738, !429, i64 2080}
!1525 = !DILocation(line: 528, column: 1, scope: !1460)
!1526 = distinct !DISubprogram(name: "hsetCommand", scope: !1, file: !1, line: 530, type: !1213, isLocal: false, isDefinition: true, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1527)
!1527 = !{!1528, !1529, !1530, !1531, !1532}
!1528 = !DILocalVariable(name: "c", arg: 1, scope: !1526, file: !1, line: 530, type: !1151)
!1529 = !DILocalVariable(name: "i", scope: !1526, file: !1, line: 531, type: !39)
!1530 = !DILocalVariable(name: "created", scope: !1526, file: !1, line: 531, type: !39)
!1531 = !DILocalVariable(name: "o", scope: !1526, file: !1, line: 532, type: !128)
!1532 = !DILocalVariable(name: "cmdname", scope: !1526, file: !1, line: 546, type: !7)
!1533 = !DILocation(line: 530, column: 26, scope: !1526)
!1534 = !DILocation(line: 531, column: 12, scope: !1526)
!1535 = !DILocation(line: 534, column: 13, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1526, file: !1, line: 534, column: 9)
!1537 = !{!1322, !168, i64 64}
!1538 = !DILocation(line: 534, column: 18, scope: !1536)
!1539 = !DILocation(line: 534, column: 23, scope: !1536)
!1540 = !DILocation(line: 534, column: 9, scope: !1526)
!1541 = !DILocation(line: 535, column: 9, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1536, file: !1, line: 534, column: 29)
!1543 = !DILocation(line: 536, column: 9, scope: !1542)
!1544 = !DILocation(line: 539, column: 47, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1526, file: !1, line: 539, column: 9)
!1546 = !DILocation(line: 539, column: 44, scope: !1545)
!1547 = !DILocation(line: 451, column: 43, scope: !1148, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 539, column: 14, scope: !1545)
!1549 = !DILocation(line: 451, column: 52, scope: !1148, inlinedAt: !1548)
!1550 = !DILocation(line: 452, column: 33, scope: !1148, inlinedAt: !1548)
!1551 = !DILocation(line: 452, column: 15, scope: !1148, inlinedAt: !1548)
!1552 = !DILocation(line: 452, column: 11, scope: !1148, inlinedAt: !1548)
!1553 = !DILocation(line: 453, column: 11, scope: !1328, inlinedAt: !1548)
!1554 = !DILocation(line: 453, column: 9, scope: !1148, inlinedAt: !1548)
!1555 = !DILocation(line: 457, column: 16, scope: !1336, inlinedAt: !1548)
!1556 = !DILocation(line: 457, column: 21, scope: !1336, inlinedAt: !1548)
!1557 = !DILocation(line: 457, column: 13, scope: !1337, inlinedAt: !1548)
!1558 = !DILocation(line: 463, column: 1, scope: !1148, inlinedAt: !1548)
!1559 = !DILocation(line: 532, column: 11, scope: !1526)
!1560 = !DILocation(line: 539, column: 9, scope: !1526)
!1561 = !DILocation(line: 458, column: 31, scope: !1341, inlinedAt: !1548)
!1562 = !DILocation(line: 458, column: 13, scope: !1341, inlinedAt: !1548)
!1563 = !DILocation(line: 454, column: 13, scope: !1331, inlinedAt: !1548)
!1564 = !DILocation(line: 455, column: 18, scope: !1331, inlinedAt: !1548)
!1565 = !DILocation(line: 455, column: 9, scope: !1331, inlinedAt: !1548)
!1566 = !DILocation(line: 539, column: 57, scope: !1545)
!1567 = !DILocation(line: 540, column: 32, scope: !1526)
!1568 = !DILocation(line: 540, column: 42, scope: !1526)
!1569 = !DILocation(line: 540, column: 46, scope: !1526)
!1570 = !DILocation(line: 540, column: 5, scope: !1526)
!1571 = !DILocation(line: 531, column: 9, scope: !1526)
!1572 = !DILocation(line: 542, column: 24, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !1, line: 542, column: 5)
!1574 = distinct !DILexicalBlock(scope: !1526, file: !1, line: 542, column: 5)
!1575 = !DILocation(line: 542, column: 19, scope: !1573)
!1576 = !DILocation(line: 0, scope: !1526)
!1577 = !DILocation(line: 542, column: 5, scope: !1574)
!1578 = !DILocation(line: 543, column: 35, scope: !1573)
!1579 = !DILocation(line: 543, column: 47, scope: !1573)
!1580 = !DILocation(line: 543, column: 60, scope: !1573)
!1581 = !DILocation(line: 543, column: 51, scope: !1573)
!1582 = !DILocation(line: 543, column: 65, scope: !1573)
!1583 = !DILocation(line: 543, column: 21, scope: !1573)
!1584 = !DILocation(line: 543, column: 20, scope: !1573)
!1585 = !DILocation(line: 543, column: 17, scope: !1573)
!1586 = !DILocation(line: 542, column: 32, scope: !1573)
!1587 = distinct !{!1587, !1577, !1588}
!1588 = !DILocation(line: 543, column: 82, scope: !1574)
!1589 = !DILocation(line: 546, column: 21, scope: !1526)
!1590 = !DILocation(line: 546, column: 33, scope: !1526)
!1591 = !DILocation(line: 546, column: 11, scope: !1526)
!1592 = !DILocation(line: 547, column: 9, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1526, file: !1, line: 547, column: 9)
!1594 = !DILocation(line: 547, column: 27, scope: !1593)
!1595 = !DILocation(line: 549, column: 9, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1593, file: !1, line: 547, column: 49)
!1597 = !DILocation(line: 550, column: 5, scope: !1596)
!1598 = !DILocation(line: 552, column: 28, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1593, file: !1, line: 550, column: 12)
!1600 = !{!1343, !162, i64 8}
!1601 = !DILocation(line: 552, column: 9, scope: !1599)
!1602 = !DILocation(line: 554, column: 26, scope: !1526)
!1603 = !DILocation(line: 554, column: 32, scope: !1526)
!1604 = !DILocation(line: 554, column: 29, scope: !1526)
!1605 = !DILocation(line: 554, column: 5, scope: !1526)
!1606 = !DILocation(line: 555, column: 47, scope: !1526)
!1607 = !DILocation(line: 555, column: 44, scope: !1526)
!1608 = !DILocation(line: 555, column: 58, scope: !1526)
!1609 = !DILocation(line: 555, column: 62, scope: !1526)
!1610 = !DILocation(line: 555, column: 5, scope: !1526)
!1611 = !DILocation(line: 556, column: 17, scope: !1526)
!1612 = !DILocation(line: 557, column: 1, scope: !1526)
!1613 = distinct !DISubprogram(name: "hincrbyCommand", scope: !1, file: !1, line: 559, type: !1213, isLocal: false, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1614)
!1614 = !{!1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622}
!1615 = !DILocalVariable(name: "c", arg: 1, scope: !1613, file: !1, line: 559, type: !1151)
!1616 = !DILocalVariable(name: "value", scope: !1613, file: !1, line: 560, type: !249)
!1617 = !DILocalVariable(name: "incr", scope: !1613, file: !1, line: 560, type: !249)
!1618 = !DILocalVariable(name: "oldvalue", scope: !1613, file: !1, line: 560, type: !249)
!1619 = !DILocalVariable(name: "o", scope: !1613, file: !1, line: 561, type: !128)
!1620 = !DILocalVariable(name: "new", scope: !1613, file: !1, line: 562, type: !176)
!1621 = !DILocalVariable(name: "vstr", scope: !1613, file: !1, line: 563, type: !5)
!1622 = !DILocalVariable(name: "vlen", scope: !1613, file: !1, line: 564, type: !110)
!1623 = !DILocation(line: 559, column: 29, scope: !1613)
!1624 = !DILocation(line: 560, column: 5, scope: !1613)
!1625 = !DILocation(line: 563, column: 5, scope: !1613)
!1626 = !DILocation(line: 564, column: 5, scope: !1613)
!1627 = !DILocation(line: 566, column: 43, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1613, file: !1, line: 566, column: 9)
!1629 = !DILocation(line: 566, column: 40, scope: !1628)
!1630 = !DILocation(line: 560, column: 22, scope: !1613)
!1631 = !DILocation(line: 566, column: 9, scope: !1628)
!1632 = !DILocation(line: 566, column: 63, scope: !1628)
!1633 = !DILocation(line: 566, column: 9, scope: !1613)
!1634 = !DILocation(line: 567, column: 47, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1613, file: !1, line: 567, column: 9)
!1636 = !DILocation(line: 567, column: 44, scope: !1635)
!1637 = !DILocation(line: 451, column: 43, scope: !1148, inlinedAt: !1638)
!1638 = distinct !DILocation(line: 567, column: 14, scope: !1635)
!1639 = !DILocation(line: 451, column: 52, scope: !1148, inlinedAt: !1638)
!1640 = !DILocation(line: 452, column: 33, scope: !1148, inlinedAt: !1638)
!1641 = !DILocation(line: 452, column: 15, scope: !1148, inlinedAt: !1638)
!1642 = !DILocation(line: 452, column: 11, scope: !1148, inlinedAt: !1638)
!1643 = !DILocation(line: 453, column: 11, scope: !1328, inlinedAt: !1638)
!1644 = !DILocation(line: 453, column: 9, scope: !1148, inlinedAt: !1638)
!1645 = !DILocation(line: 457, column: 16, scope: !1336, inlinedAt: !1638)
!1646 = !DILocation(line: 457, column: 21, scope: !1336, inlinedAt: !1638)
!1647 = !DILocation(line: 457, column: 13, scope: !1337, inlinedAt: !1638)
!1648 = !DILocation(line: 463, column: 1, scope: !1148, inlinedAt: !1638)
!1649 = !DILocation(line: 561, column: 11, scope: !1613)
!1650 = !DILocation(line: 567, column: 9, scope: !1613)
!1651 = !DILocation(line: 458, column: 31, scope: !1341, inlinedAt: !1638)
!1652 = !DILocation(line: 458, column: 13, scope: !1341, inlinedAt: !1638)
!1653 = !DILocation(line: 454, column: 13, scope: !1331, inlinedAt: !1638)
!1654 = !DILocation(line: 455, column: 18, scope: !1331, inlinedAt: !1638)
!1655 = !DILocation(line: 455, column: 9, scope: !1331, inlinedAt: !1638)
!1656 = !DILocation(line: 567, column: 57, scope: !1635)
!1657 = !DILocation(line: 568, column: 31, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1613, file: !1, line: 568, column: 9)
!1659 = !DILocation(line: 568, column: 28, scope: !1658)
!1660 = !DILocation(line: 568, column: 40, scope: !1658)
!1661 = !DILocation(line: 560, column: 15, scope: !1613)
!1662 = !DILocation(line: 563, column: 20, scope: !1613)
!1663 = !DILocation(line: 564, column: 18, scope: !1613)
!1664 = !DILocation(line: 568, column: 9, scope: !1658)
!1665 = !DILocation(line: 568, column: 64, scope: !1658)
!1666 = !DILocation(line: 568, column: 9, scope: !1613)
!1667 = !DILocation(line: 569, column: 13, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !1, line: 569, column: 13)
!1669 = distinct !DILexicalBlock(scope: !1658, file: !1, line: 568, column: 73)
!1670 = !DILocation(line: 569, column: 13, scope: !1669)
!1671 = !DILocation(line: 570, column: 39, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !1, line: 570, column: 17)
!1673 = distinct !DILexicalBlock(scope: !1668, file: !1, line: 569, column: 19)
!1674 = !DILocation(line: 570, column: 17, scope: !1672)
!1675 = !DILocation(line: 570, column: 52, scope: !1672)
!1676 = !DILocation(line: 570, column: 17, scope: !1673)
!1677 = !DILocation(line: 571, column: 17, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1672, file: !1, line: 570, column: 58)
!1679 = !DILocation(line: 572, column: 17, scope: !1678)
!1680 = !DILocation(line: 576, column: 15, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1658, file: !1, line: 575, column: 12)
!1682 = !DILocation(line: 579, column: 16, scope: !1613)
!1683 = !DILocation(line: 560, column: 28, scope: !1613)
!1684 = !DILocation(line: 580, column: 10, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1613, file: !1, line: 580, column: 9)
!1686 = !DILocation(line: 580, column: 19, scope: !1685)
!1687 = !DILocation(line: 580, column: 55, scope: !1685)
!1688 = !DILocation(line: 580, column: 43, scope: !1685)
!1689 = !DILocation(line: 581, column: 15, scope: !1685)
!1690 = !DILocation(line: 581, column: 31, scope: !1685)
!1691 = !DILocation(line: 581, column: 19, scope: !1685)
!1692 = !DILocation(line: 581, column: 55, scope: !1685)
!1693 = !DILocation(line: 581, column: 43, scope: !1685)
!1694 = !DILocation(line: 582, column: 9, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1685, file: !1, line: 581, column: 68)
!1696 = !DILocation(line: 583, column: 9, scope: !1695)
!1697 = !DILocation(line: 585, column: 11, scope: !1613)
!1698 = !DILocation(line: 586, column: 11, scope: !1613)
!1699 = !DILocation(line: 562, column: 9, scope: !1613)
!1700 = !DILocation(line: 587, column: 22, scope: !1613)
!1701 = !DILocation(line: 587, column: 19, scope: !1613)
!1702 = !DILocation(line: 587, column: 31, scope: !1613)
!1703 = !DILocation(line: 587, column: 5, scope: !1613)
!1704 = !DILocation(line: 588, column: 24, scope: !1613)
!1705 = !DILocation(line: 588, column: 5, scope: !1613)
!1706 = !DILocation(line: 589, column: 26, scope: !1613)
!1707 = !DILocation(line: 589, column: 32, scope: !1613)
!1708 = !DILocation(line: 589, column: 29, scope: !1613)
!1709 = !DILocation(line: 589, column: 5, scope: !1613)
!1710 = !DILocation(line: 590, column: 50, scope: !1613)
!1711 = !DILocation(line: 590, column: 47, scope: !1613)
!1712 = !DILocation(line: 590, column: 61, scope: !1613)
!1713 = !DILocation(line: 590, column: 65, scope: !1613)
!1714 = !DILocation(line: 590, column: 5, scope: !1613)
!1715 = !DILocation(line: 591, column: 17, scope: !1613)
!1716 = !DILocation(line: 592, column: 1, scope: !1613)
!1717 = distinct !DISubprogram(name: "hincrbyfloatCommand", scope: !1, file: !1, line: 594, type: !1213, isLocal: false, isDefinition: true, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1718)
!1718 = !{!1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1731, !1732, !1733}
!1719 = !DILocalVariable(name: "c", arg: 1, scope: !1717, file: !1, line: 594, type: !1151)
!1720 = !DILocalVariable(name: "value", scope: !1717, file: !1, line: 595, type: !80)
!1721 = !DILocalVariable(name: "incr", scope: !1717, file: !1, line: 595, type: !80)
!1722 = !DILocalVariable(name: "ll", scope: !1717, file: !1, line: 596, type: !249)
!1723 = !DILocalVariable(name: "o", scope: !1717, file: !1, line: 597, type: !128)
!1724 = !DILocalVariable(name: "new", scope: !1717, file: !1, line: 598, type: !176)
!1725 = !DILocalVariable(name: "vstr", scope: !1717, file: !1, line: 599, type: !5)
!1726 = !DILocalVariable(name: "vlen", scope: !1717, file: !1, line: 600, type: !110)
!1727 = !DILocalVariable(name: "buf", scope: !1717, file: !1, line: 623, type: !1728)
!1728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 40960, elements: !1729)
!1729 = !{!1730}
!1730 = !DISubrange(count: 5120)
!1731 = !DILocalVariable(name: "len", scope: !1717, file: !1, line: 624, type: !39)
!1732 = !DILocalVariable(name: "aux", scope: !1717, file: !1, line: 635, type: !128)
!1733 = !DILocalVariable(name: "newobj", scope: !1717, file: !1, line: 635, type: !128)
!1734 = !DILocation(line: 594, column: 34, scope: !1717)
!1735 = !DILocation(line: 595, column: 5, scope: !1717)
!1736 = !DILocation(line: 596, column: 5, scope: !1717)
!1737 = !DILocation(line: 599, column: 5, scope: !1717)
!1738 = !DILocation(line: 600, column: 5, scope: !1717)
!1739 = !DILocation(line: 602, column: 45, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1717, file: !1, line: 602, column: 9)
!1741 = !DILocation(line: 602, column: 42, scope: !1740)
!1742 = !DILocation(line: 595, column: 24, scope: !1717)
!1743 = !DILocation(line: 602, column: 9, scope: !1740)
!1744 = !DILocation(line: 602, column: 65, scope: !1740)
!1745 = !DILocation(line: 602, column: 9, scope: !1717)
!1746 = !DILocation(line: 603, column: 47, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1717, file: !1, line: 603, column: 9)
!1748 = !DILocation(line: 603, column: 44, scope: !1747)
!1749 = !DILocation(line: 451, column: 43, scope: !1148, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 603, column: 14, scope: !1747)
!1751 = !DILocation(line: 451, column: 52, scope: !1148, inlinedAt: !1750)
!1752 = !DILocation(line: 452, column: 33, scope: !1148, inlinedAt: !1750)
!1753 = !DILocation(line: 452, column: 15, scope: !1148, inlinedAt: !1750)
!1754 = !DILocation(line: 452, column: 11, scope: !1148, inlinedAt: !1750)
!1755 = !DILocation(line: 453, column: 11, scope: !1328, inlinedAt: !1750)
!1756 = !DILocation(line: 453, column: 9, scope: !1148, inlinedAt: !1750)
!1757 = !DILocation(line: 457, column: 16, scope: !1336, inlinedAt: !1750)
!1758 = !DILocation(line: 457, column: 21, scope: !1336, inlinedAt: !1750)
!1759 = !DILocation(line: 457, column: 13, scope: !1337, inlinedAt: !1750)
!1760 = !DILocation(line: 463, column: 1, scope: !1148, inlinedAt: !1750)
!1761 = !DILocation(line: 597, column: 11, scope: !1717)
!1762 = !DILocation(line: 603, column: 9, scope: !1717)
!1763 = !DILocation(line: 458, column: 31, scope: !1341, inlinedAt: !1750)
!1764 = !DILocation(line: 458, column: 13, scope: !1341, inlinedAt: !1750)
!1765 = !DILocation(line: 454, column: 13, scope: !1331, inlinedAt: !1750)
!1766 = !DILocation(line: 455, column: 18, scope: !1331, inlinedAt: !1750)
!1767 = !DILocation(line: 455, column: 9, scope: !1331, inlinedAt: !1750)
!1768 = !DILocation(line: 603, column: 57, scope: !1747)
!1769 = !DILocation(line: 604, column: 31, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1717, file: !1, line: 604, column: 9)
!1771 = !DILocation(line: 604, column: 28, scope: !1770)
!1772 = !DILocation(line: 604, column: 40, scope: !1770)
!1773 = !DILocation(line: 596, column: 15, scope: !1717)
!1774 = !DILocation(line: 599, column: 20, scope: !1717)
!1775 = !DILocation(line: 600, column: 18, scope: !1717)
!1776 = !DILocation(line: 604, column: 9, scope: !1770)
!1777 = !DILocation(line: 604, column: 61, scope: !1770)
!1778 = !DILocation(line: 604, column: 9, scope: !1717)
!1779 = !DILocation(line: 605, column: 13, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !1, line: 605, column: 13)
!1781 = distinct !DILexicalBlock(scope: !1770, file: !1, line: 604, column: 70)
!1782 = !DILocation(line: 605, column: 13, scope: !1781)
!1783 = !DILocation(line: 606, column: 39, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !1, line: 606, column: 17)
!1785 = distinct !DILexicalBlock(scope: !1780, file: !1, line: 605, column: 19)
!1786 = !DILocation(line: 595, column: 17, scope: !1717)
!1787 = !DILocation(line: 606, column: 17, scope: !1784)
!1788 = !DILocation(line: 606, column: 52, scope: !1784)
!1789 = !DILocation(line: 606, column: 17, scope: !1785)
!1790 = !DILocation(line: 617, column: 11, scope: !1717)
!1791 = !{!1792, !1792, i64 0}
!1792 = !{!"long double", !163, i64 0}
!1793 = !DILocation(line: 607, column: 17, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1784, file: !1, line: 606, column: 58)
!1795 = !DILocation(line: 608, column: 17, scope: !1794)
!1796 = !DILocation(line: 611, column: 34, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1780, file: !1, line: 610, column: 16)
!1798 = !DILocation(line: 611, column: 21, scope: !1797)
!1799 = !DILocation(line: 611, column: 19, scope: !1797)
!1800 = !DILocation(line: 614, column: 15, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1770, file: !1, line: 613, column: 12)
!1802 = !DILocation(line: 617, column: 14, scope: !1717)
!1803 = !DILocation(line: 618, column: 9, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1717, file: !1, line: 618, column: 9)
!1805 = !DILocation(line: 618, column: 22, scope: !1804)
!1806 = !DILocation(line: 618, column: 25, scope: !1804)
!1807 = !DILocation(line: 618, column: 9, scope: !1717)
!1808 = !DILocation(line: 619, column: 9, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1804, file: !1, line: 618, column: 39)
!1810 = !DILocation(line: 620, column: 9, scope: !1809)
!1811 = !DILocation(line: 623, column: 5, scope: !1717)
!1812 = !DILocation(line: 623, column: 10, scope: !1717)
!1813 = !DILocation(line: 624, column: 41, scope: !1717)
!1814 = !DILocation(line: 624, column: 15, scope: !1717)
!1815 = !DILocation(line: 624, column: 9, scope: !1717)
!1816 = !DILocation(line: 625, column: 25, scope: !1717)
!1817 = !DILocation(line: 625, column: 11, scope: !1717)
!1818 = !DILocation(line: 598, column: 9, scope: !1717)
!1819 = !DILocation(line: 626, column: 22, scope: !1717)
!1820 = !DILocation(line: 626, column: 19, scope: !1717)
!1821 = !DILocation(line: 626, column: 31, scope: !1717)
!1822 = !DILocation(line: 626, column: 5, scope: !1717)
!1823 = !DILocation(line: 627, column: 5, scope: !1717)
!1824 = !DILocation(line: 628, column: 26, scope: !1717)
!1825 = !DILocation(line: 628, column: 32, scope: !1717)
!1826 = !DILocation(line: 628, column: 29, scope: !1717)
!1827 = !DILocation(line: 628, column: 5, scope: !1717)
!1828 = !DILocation(line: 629, column: 55, scope: !1717)
!1829 = !DILocation(line: 629, column: 52, scope: !1717)
!1830 = !DILocation(line: 629, column: 66, scope: !1717)
!1831 = !DILocation(line: 629, column: 70, scope: !1717)
!1832 = !DILocation(line: 629, column: 5, scope: !1717)
!1833 = !DILocation(line: 630, column: 17, scope: !1717)
!1834 = !DILocation(line: 636, column: 11, scope: !1717)
!1835 = !DILocation(line: 635, column: 11, scope: !1717)
!1836 = !DILocation(line: 637, column: 14, scope: !1717)
!1837 = !DILocation(line: 635, column: 17, scope: !1717)
!1838 = !DILocation(line: 638, column: 5, scope: !1717)
!1839 = !DILocation(line: 639, column: 5, scope: !1717)
!1840 = !DILocation(line: 640, column: 5, scope: !1717)
!1841 = !DILocation(line: 641, column: 5, scope: !1717)
!1842 = !DILocation(line: 642, column: 1, scope: !1717)
!1843 = distinct !DISubprogram(name: "hgetCommand", scope: !1, file: !1, line: 679, type: !1213, isLocal: false, isDefinition: true, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1844)
!1844 = !{!1845, !1846}
!1845 = !DILocalVariable(name: "c", arg: 1, scope: !1843, file: !1, line: 679, type: !1151)
!1846 = !DILocalVariable(name: "o", scope: !1843, file: !1, line: 680, type: !128)
!1847 = !DILocation(line: 679, column: 26, scope: !1843)
!1848 = !DILocation(line: 682, column: 40, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1843, file: !1, line: 682, column: 9)
!1850 = !DILocation(line: 682, column: 37, scope: !1849)
!1851 = !DILocation(line: 682, column: 55, scope: !1849)
!1852 = !{!1343, !162, i64 80}
!1853 = !DILocation(line: 682, column: 14, scope: !1849)
!1854 = !DILocation(line: 680, column: 11, scope: !1843)
!1855 = !DILocation(line: 682, column: 66, scope: !1849)
!1856 = !DILocation(line: 682, column: 74, scope: !1849)
!1857 = !DILocation(line: 683, column: 9, scope: !1849)
!1858 = !DILocation(line: 682, column: 9, scope: !1843)
!1859 = !DILocation(line: 685, column: 34, scope: !1843)
!1860 = !DILocation(line: 685, column: 31, scope: !1843)
!1861 = !DILocation(line: 685, column: 43, scope: !1843)
!1862 = !DILocation(line: 685, column: 5, scope: !1843)
!1863 = !DILocation(line: 686, column: 1, scope: !1843)
!1864 = distinct !DISubprogram(name: "addHashFieldToReply", scope: !1, file: !1, line: 644, type: !1865, isLocal: true, isDefinition: true, scopeLine: 644, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1867)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{null, !1151, !128, !176}
!1867 = !{!1868, !1869, !1870, !1871, !1872, !1875, !1876, !1877}
!1868 = !DILocalVariable(name: "c", arg: 1, scope: !1864, file: !1, line: 644, type: !1151)
!1869 = !DILocalVariable(name: "o", arg: 2, scope: !1864, file: !1, line: 644, type: !128)
!1870 = !DILocalVariable(name: "field", arg: 3, scope: !1864, file: !1, line: 644, type: !176)
!1871 = !DILocalVariable(name: "ret", scope: !1864, file: !1, line: 645, type: !39)
!1872 = !DILocalVariable(name: "vstr", scope: !1873, file: !1, line: 653, type: !5)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !1, line: 652, column: 46)
!1874 = distinct !DILexicalBlock(scope: !1864, file: !1, line: 652, column: 9)
!1875 = !DILocalVariable(name: "vlen", scope: !1873, file: !1, line: 654, type: !110)
!1876 = !DILocalVariable(name: "vll", scope: !1873, file: !1, line: 655, type: !249)
!1877 = !DILocalVariable(name: "value", scope: !1878, file: !1, line: 669, type: !176)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !1, line: 668, column: 48)
!1879 = distinct !DILexicalBlock(scope: !1874, file: !1, line: 668, column: 16)
!1880 = !DILocation(line: 644, column: 41, scope: !1864)
!1881 = !DILocation(line: 644, column: 50, scope: !1864)
!1882 = !DILocation(line: 644, column: 57, scope: !1864)
!1883 = !DILocation(line: 647, column: 11, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1864, file: !1, line: 647, column: 9)
!1885 = !DILocation(line: 647, column: 9, scope: !1864)
!1886 = !DILocation(line: 648, column: 28, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1884, file: !1, line: 647, column: 20)
!1888 = !DILocation(line: 648, column: 9, scope: !1887)
!1889 = !DILocation(line: 649, column: 9, scope: !1887)
!1890 = !DILocation(line: 652, column: 12, scope: !1874)
!1891 = !DILocation(line: 652, column: 9, scope: !1864)
!1892 = !DILocation(line: 653, column: 9, scope: !1873)
!1893 = !DILocation(line: 653, column: 24, scope: !1873)
!1894 = !DILocation(line: 654, column: 9, scope: !1873)
!1895 = !DILocation(line: 654, column: 22, scope: !1873)
!1896 = !DILocation(line: 655, column: 9, scope: !1873)
!1897 = !DILocation(line: 655, column: 19, scope: !1873)
!1898 = !DILocation(line: 657, column: 15, scope: !1873)
!1899 = !DILocation(line: 645, column: 9, scope: !1864)
!1900 = !DILocation(line: 658, column: 17, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1873, file: !1, line: 658, column: 13)
!1902 = !DILocation(line: 658, column: 13, scope: !1873)
!1903 = !DILocation(line: 659, column: 32, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1901, file: !1, line: 658, column: 22)
!1905 = !DILocation(line: 659, column: 13, scope: !1904)
!1906 = !DILocation(line: 660, column: 9, scope: !1904)
!1907 = !DILocation(line: 661, column: 17, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !1, line: 661, column: 17)
!1909 = distinct !DILexicalBlock(scope: !1901, file: !1, line: 660, column: 16)
!1910 = !DILocation(line: 661, column: 17, scope: !1909)
!1911 = !DILocation(line: 662, column: 46, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1908, file: !1, line: 661, column: 23)
!1913 = !DILocation(line: 662, column: 17, scope: !1912)
!1914 = !DILocation(line: 663, column: 13, scope: !1912)
!1915 = !DILocation(line: 664, column: 41, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1908, file: !1, line: 663, column: 20)
!1917 = !DILocation(line: 664, column: 17, scope: !1916)
!1918 = !DILocation(line: 668, column: 5, scope: !1874)
!1919 = !DILocation(line: 668, column: 5, scope: !1873)
!1920 = !DILocation(line: 90, column: 36, scope: !311, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 669, column: 21, scope: !1878)
!1922 = !DILocation(line: 90, column: 43, scope: !311, inlinedAt: !1921)
!1923 = !DILocation(line: 93, column: 5, scope: !311, inlinedAt: !1921)
!1924 = !DILocation(line: 95, column: 22, scope: !311, inlinedAt: !1921)
!1925 = !DILocation(line: 95, column: 10, scope: !311, inlinedAt: !1921)
!1926 = !DILocation(line: 91, column: 16, scope: !311, inlinedAt: !1921)
!1927 = !DILocation(line: 96, column: 12, scope: !325, inlinedAt: !1921)
!1928 = !DILocation(line: 96, column: 9, scope: !311, inlinedAt: !1921)
!1929 = !DILocation(line: 98, column: 1, scope: !311, inlinedAt: !1921)
!1930 = !DILocation(line: 669, column: 13, scope: !1878)
!1931 = !DILocation(line: 670, column: 13, scope: !1878)
!1932 = !DILocation(line: 97, column: 12, scope: !311, inlinedAt: !1921)
!1933 = !DILocation(line: 670, column: 19, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1878, file: !1, line: 670, column: 13)
!1935 = !DILocation(line: 671, column: 32, scope: !1934)
!1936 = !DILocation(line: 671, column: 13, scope: !1934)
!1937 = !DILocation(line: 87, column: 39, scope: !170, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 673, column: 43, scope: !1934)
!1939 = !DILocation(line: 88, column: 27, scope: !170, inlinedAt: !1938)
!1940 = !DILocation(line: 88, column: 19, scope: !170, inlinedAt: !1938)
!1941 = !DILocation(line: 89, column: 5, scope: !170, inlinedAt: !1938)
!1942 = !DILocation(line: 91, column: 20, scope: !188, inlinedAt: !1938)
!1943 = !DILocation(line: 91, column: 13, scope: !188, inlinedAt: !1938)
!1944 = !DILocation(line: 93, column: 20, scope: !188, inlinedAt: !1938)
!1945 = !DILocation(line: 93, column: 34, scope: !188, inlinedAt: !1938)
!1946 = !DILocation(line: 93, column: 13, scope: !188, inlinedAt: !1938)
!1947 = !DILocation(line: 95, column: 20, scope: !188, inlinedAt: !1938)
!1948 = !DILocation(line: 95, column: 35, scope: !188, inlinedAt: !1938)
!1949 = !DILocation(line: 95, column: 13, scope: !188, inlinedAt: !1938)
!1950 = !DILocation(line: 97, column: 20, scope: !188, inlinedAt: !1938)
!1951 = !DILocation(line: 97, column: 35, scope: !188, inlinedAt: !1938)
!1952 = !DILocation(line: 97, column: 13, scope: !188, inlinedAt: !1938)
!1953 = !DILocation(line: 99, column: 20, scope: !188, inlinedAt: !1938)
!1954 = !DILocation(line: 99, column: 35, scope: !188, inlinedAt: !1938)
!1955 = !DILocation(line: 99, column: 13, scope: !188, inlinedAt: !1938)
!1956 = !DILocation(line: 0, scope: !188, inlinedAt: !1938)
!1957 = !DILocation(line: 102, column: 1, scope: !170, inlinedAt: !1938)
!1958 = !DILocation(line: 673, column: 13, scope: !1934)
!1959 = !DILocation(line: 675, column: 9, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1879, file: !1, line: 674, column: 12)
!1961 = !DILocation(line: 677, column: 1, scope: !1864)
!1962 = distinct !DISubprogram(name: "hmgetCommand", scope: !1, file: !1, line: 688, type: !1213, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1963)
!1963 = !{!1964, !1965, !1966}
!1964 = !DILocalVariable(name: "c", arg: 1, scope: !1962, file: !1, line: 688, type: !1151)
!1965 = !DILocalVariable(name: "o", scope: !1962, file: !1, line: 689, type: !128)
!1966 = !DILocalVariable(name: "i", scope: !1962, file: !1, line: 690, type: !39)
!1967 = !DILocation(line: 688, column: 27, scope: !1962)
!1968 = !DILocation(line: 694, column: 26, scope: !1962)
!1969 = !DILocation(line: 694, column: 33, scope: !1962)
!1970 = !DILocation(line: 694, column: 30, scope: !1962)
!1971 = !DILocation(line: 694, column: 9, scope: !1962)
!1972 = !DILocation(line: 689, column: 11, scope: !1962)
!1973 = !DILocation(line: 695, column: 11, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1962, file: !1, line: 695, column: 9)
!1975 = !DILocation(line: 695, column: 19, scope: !1974)
!1976 = !DILocation(line: 695, column: 25, scope: !1974)
!1977 = !DILocation(line: 695, column: 30, scope: !1974)
!1978 = !DILocation(line: 695, column: 9, scope: !1962)
!1979 = !DILocation(line: 696, column: 28, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1974, file: !1, line: 695, column: 43)
!1981 = !DILocation(line: 696, column: 9, scope: !1980)
!1982 = !DILocation(line: 697, column: 9, scope: !1980)
!1983 = !DILocation(line: 700, column: 32, scope: !1962)
!1984 = !DILocation(line: 700, column: 36, scope: !1962)
!1985 = !DILocation(line: 700, column: 29, scope: !1962)
!1986 = !DILocation(line: 700, column: 5, scope: !1962)
!1987 = !DILocation(line: 690, column: 9, scope: !1962)
!1988 = !DILocation(line: 701, column: 24, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !1, line: 701, column: 5)
!1990 = distinct !DILexicalBlock(scope: !1962, file: !1, line: 701, column: 5)
!1991 = !DILocation(line: 701, column: 19, scope: !1989)
!1992 = !DILocation(line: 701, column: 5, scope: !1990)
!1993 = !DILocation(line: 702, column: 38, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1989, file: !1, line: 701, column: 35)
!1995 = !DILocation(line: 702, column: 35, scope: !1994)
!1996 = !DILocation(line: 702, column: 47, scope: !1994)
!1997 = !DILocation(line: 702, column: 9, scope: !1994)
!1998 = !DILocation(line: 701, column: 31, scope: !1989)
!1999 = distinct !{!1999, !1992, !2000}
!2000 = !DILocation(line: 703, column: 5, scope: !1990)
!2001 = !DILocation(line: 704, column: 1, scope: !1962)
!2002 = distinct !DISubprogram(name: "hdelCommand", scope: !1, file: !1, line: 706, type: !1213, isLocal: false, isDefinition: true, scopeLine: 706, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2003)
!2003 = !{!2004, !2005, !2006, !2007, !2008}
!2004 = !DILocalVariable(name: "c", arg: 1, scope: !2002, file: !1, line: 706, type: !1151)
!2005 = !DILocalVariable(name: "o", scope: !2002, file: !1, line: 707, type: !128)
!2006 = !DILocalVariable(name: "j", scope: !2002, file: !1, line: 708, type: !39)
!2007 = !DILocalVariable(name: "deleted", scope: !2002, file: !1, line: 708, type: !39)
!2008 = !DILocalVariable(name: "keyremoved", scope: !2002, file: !1, line: 708, type: !39)
!2009 = !DILocation(line: 706, column: 26, scope: !2002)
!2010 = !DILocation(line: 708, column: 12, scope: !2002)
!2011 = !DILocation(line: 708, column: 25, scope: !2002)
!2012 = !DILocation(line: 710, column: 41, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2002, file: !1, line: 710, column: 9)
!2014 = !DILocation(line: 710, column: 38, scope: !2013)
!2015 = !DILocation(line: 710, column: 56, scope: !2013)
!2016 = !DILocation(line: 710, column: 14, scope: !2013)
!2017 = !DILocation(line: 707, column: 11, scope: !2002)
!2018 = !DILocation(line: 710, column: 64, scope: !2013)
!2019 = !DILocation(line: 710, column: 72, scope: !2013)
!2020 = !DILocation(line: 711, column: 9, scope: !2013)
!2021 = !DILocation(line: 710, column: 9, scope: !2002)
!2022 = !DILocation(line: 708, column: 9, scope: !2002)
!2023 = !DILocation(line: 713, column: 24, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !1, line: 713, column: 5)
!2025 = distinct !DILexicalBlock(scope: !2002, file: !1, line: 713, column: 5)
!2026 = !DILocation(line: 713, column: 19, scope: !2024)
!2027 = !DILocation(line: 713, column: 5, scope: !2025)
!2028 = !DILocation(line: 714, column: 33, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !1, line: 714, column: 13)
!2030 = distinct !DILexicalBlock(scope: !2024, file: !1, line: 713, column: 35)
!2031 = !DILocation(line: 714, column: 30, scope: !2029)
!2032 = !DILocation(line: 714, column: 42, scope: !2029)
!2033 = !DILocation(line: 714, column: 13, scope: !2029)
!2034 = !DILocation(line: 714, column: 13, scope: !2030)
!2035 = !DILocation(line: 715, column: 20, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2029, file: !1, line: 714, column: 48)
!2037 = !DILocation(line: 311, column: 42, scope: !709, inlinedAt: !2038)
!2038 = distinct !DILocation(line: 716, column: 17, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2036, file: !1, line: 716, column: 17)
!2040 = !DILocation(line: 312, column: 19, scope: !709, inlinedAt: !2038)
!2041 = !DILocation(line: 314, column: 12, scope: !721, inlinedAt: !2038)
!2042 = !DILocation(line: 314, column: 9, scope: !709, inlinedAt: !2038)
!2043 = !DILocation(line: 315, column: 32, scope: !724, inlinedAt: !2038)
!2044 = !DILocation(line: 315, column: 18, scope: !724, inlinedAt: !2038)
!2045 = !DILocation(line: 315, column: 37, scope: !724, inlinedAt: !2038)
!2046 = !DILocation(line: 316, column: 5, scope: !724, inlinedAt: !2038)
!2047 = !DILocation(line: 317, column: 18, scope: !728, inlinedAt: !2038)
!2048 = !DILocation(line: 319, column: 9, scope: !733, inlinedAt: !2038)
!2049 = !DILocation(line: 0, scope: !728, inlinedAt: !2038)
!2050 = !DILocation(line: 321, column: 5, scope: !709, inlinedAt: !2038)
!2051 = !DILocation(line: 716, column: 35, scope: !2039)
!2052 = !DILocation(line: 716, column: 17, scope: !2036)
!2053 = !DILocation(line: 717, column: 29, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2039, file: !1, line: 716, column: 41)
!2055 = !DILocation(line: 717, column: 35, scope: !2054)
!2056 = !DILocation(line: 717, column: 32, scope: !2054)
!2057 = !DILocation(line: 717, column: 17, scope: !2054)
!2058 = !DILocation(line: 719, column: 17, scope: !2054)
!2059 = !DILocation(line: 0, scope: !2002)
!2060 = !DILocation(line: 713, column: 31, scope: !2024)
!2061 = distinct !{!2061, !2027, !2062}
!2062 = !DILocation(line: 722, column: 5, scope: !2025)
!2063 = !DILocation(line: 723, column: 9, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2002, file: !1, line: 723, column: 9)
!2065 = !DILocation(line: 723, column: 9, scope: !2002)
!2066 = !DILocation(line: 724, column: 30, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2064, file: !1, line: 723, column: 18)
!2068 = !DILocation(line: 724, column: 36, scope: !2067)
!2069 = !DILocation(line: 724, column: 33, scope: !2067)
!2070 = !DILocation(line: 724, column: 9, scope: !2067)
!2071 = !DILocation(line: 725, column: 51, scope: !2067)
!2072 = !DILocation(line: 725, column: 48, scope: !2067)
!2073 = !DILocation(line: 725, column: 62, scope: !2067)
!2074 = !DILocation(line: 725, column: 66, scope: !2067)
!2075 = !DILocation(line: 725, column: 9, scope: !2067)
!2076 = !DILocation(line: 726, column: 13, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2067, file: !1, line: 726, column: 13)
!2078 = !DILocation(line: 726, column: 13, scope: !2067)
!2079 = !DILocation(line: 727, column: 57, scope: !2077)
!2080 = !DILocation(line: 727, column: 54, scope: !2077)
!2081 = !DILocation(line: 728, column: 36, scope: !2077)
!2082 = !DILocation(line: 728, column: 40, scope: !2077)
!2083 = !DILocation(line: 727, column: 13, scope: !2077)
!2084 = !DILocation(line: 729, column: 25, scope: !2067)
!2085 = !DILocation(line: 729, column: 22, scope: !2067)
!2086 = !DILocation(line: 730, column: 5, scope: !2067)
!2087 = !DILocation(line: 731, column: 24, scope: !2002)
!2088 = !DILocation(line: 731, column: 5, scope: !2002)
!2089 = !DILocation(line: 732, column: 1, scope: !2002)
!2090 = distinct !DISubprogram(name: "hlenCommand", scope: !1, file: !1, line: 734, type: !1213, isLocal: false, isDefinition: true, scopeLine: 734, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2091)
!2091 = !{!2092, !2093}
!2092 = !DILocalVariable(name: "c", arg: 1, scope: !2090, file: !1, line: 734, type: !1151)
!2093 = !DILocalVariable(name: "o", scope: !2090, file: !1, line: 735, type: !128)
!2094 = !DILocation(line: 734, column: 26, scope: !2090)
!2095 = !DILocation(line: 737, column: 40, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2090, file: !1, line: 737, column: 9)
!2097 = !DILocation(line: 737, column: 37, scope: !2096)
!2098 = !DILocation(line: 737, column: 55, scope: !2096)
!2099 = !DILocation(line: 737, column: 14, scope: !2096)
!2100 = !DILocation(line: 735, column: 11, scope: !2090)
!2101 = !DILocation(line: 737, column: 63, scope: !2096)
!2102 = !DILocation(line: 737, column: 71, scope: !2096)
!2103 = !DILocation(line: 738, column: 9, scope: !2096)
!2104 = !DILocation(line: 737, column: 9, scope: !2090)
!2105 = !DILocation(line: 311, column: 42, scope: !709, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 740, column: 24, scope: !2090)
!2107 = !DILocation(line: 312, column: 19, scope: !709, inlinedAt: !2106)
!2108 = !DILocation(line: 314, column: 12, scope: !721, inlinedAt: !2106)
!2109 = !DILocation(line: 314, column: 9, scope: !709, inlinedAt: !2106)
!2110 = !DILocation(line: 315, column: 32, scope: !724, inlinedAt: !2106)
!2111 = !DILocation(line: 315, column: 18, scope: !724, inlinedAt: !2106)
!2112 = !DILocation(line: 315, column: 37, scope: !724, inlinedAt: !2106)
!2113 = !DILocation(line: 316, column: 5, scope: !724, inlinedAt: !2106)
!2114 = !DILocation(line: 317, column: 18, scope: !728, inlinedAt: !2106)
!2115 = !DILocation(line: 319, column: 9, scope: !733, inlinedAt: !2106)
!2116 = !DILocation(line: 0, scope: !728, inlinedAt: !2106)
!2117 = !DILocation(line: 321, column: 5, scope: !709, inlinedAt: !2106)
!2118 = !DILocation(line: 740, column: 5, scope: !2090)
!2119 = !DILocation(line: 741, column: 1, scope: !2090)
!2120 = distinct !DISubprogram(name: "hstrlenCommand", scope: !1, file: !1, line: 743, type: !1213, isLocal: false, isDefinition: true, scopeLine: 743, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2121)
!2121 = !{!2122, !2123}
!2122 = !DILocalVariable(name: "c", arg: 1, scope: !2120, file: !1, line: 743, type: !1151)
!2123 = !DILocalVariable(name: "o", scope: !2120, file: !1, line: 744, type: !128)
!2124 = !DILocation(line: 743, column: 29, scope: !2120)
!2125 = !DILocation(line: 746, column: 40, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2120, file: !1, line: 746, column: 9)
!2127 = !DILocation(line: 746, column: 37, scope: !2126)
!2128 = !DILocation(line: 746, column: 55, scope: !2126)
!2129 = !DILocation(line: 746, column: 14, scope: !2126)
!2130 = !DILocation(line: 744, column: 11, scope: !2120)
!2131 = !DILocation(line: 746, column: 63, scope: !2126)
!2132 = !DILocation(line: 746, column: 71, scope: !2126)
!2133 = !DILocation(line: 747, column: 9, scope: !2126)
!2134 = !DILocation(line: 746, column: 9, scope: !2120)
!2135 = !DILocation(line: 748, column: 52, scope: !2120)
!2136 = !DILocation(line: 748, column: 49, scope: !2120)
!2137 = !DILocation(line: 748, column: 61, scope: !2120)
!2138 = !DILocation(line: 748, column: 24, scope: !2120)
!2139 = !DILocation(line: 748, column: 5, scope: !2120)
!2140 = !DILocation(line: 749, column: 1, scope: !2120)
!2141 = distinct !DISubprogram(name: "genericHgetallCommand", scope: !1, file: !1, line: 770, type: !2142, isLocal: false, isDefinition: true, scopeLine: 770, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2144)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{null, !1151, !39}
!2144 = !{!2145, !2146, !2147, !2148, !2149, !2150, !2151}
!2145 = !DILocalVariable(name: "c", arg: 1, scope: !2141, file: !1, line: 770, type: !1151)
!2146 = !DILocalVariable(name: "flags", arg: 2, scope: !2141, file: !1, line: 770, type: !39)
!2147 = !DILocalVariable(name: "o", scope: !2141, file: !1, line: 771, type: !128)
!2148 = !DILocalVariable(name: "hi", scope: !2141, file: !1, line: 772, type: !894)
!2149 = !DILocalVariable(name: "multiplier", scope: !2141, file: !1, line: 773, type: !39)
!2150 = !DILocalVariable(name: "length", scope: !2141, file: !1, line: 774, type: !39)
!2151 = !DILocalVariable(name: "count", scope: !2141, file: !1, line: 774, type: !39)
!2152 = !DILocation(line: 770, column: 36, scope: !2141)
!2153 = !DILocation(line: 770, column: 43, scope: !2141)
!2154 = !DILocation(line: 773, column: 9, scope: !2141)
!2155 = !DILocation(line: 774, column: 17, scope: !2141)
!2156 = !DILocation(line: 776, column: 40, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2141, file: !1, line: 776, column: 9)
!2158 = !DILocation(line: 776, column: 37, scope: !2157)
!2159 = !DILocation(line: 776, column: 55, scope: !2157)
!2160 = !{!1343, !162, i64 104}
!2161 = !DILocation(line: 776, column: 14, scope: !2157)
!2162 = !DILocation(line: 771, column: 11, scope: !2141)
!2163 = !DILocation(line: 776, column: 72, scope: !2157)
!2164 = !DILocation(line: 777, column: 9, scope: !2157)
!2165 = !DILocation(line: 777, column: 12, scope: !2157)
!2166 = !DILocation(line: 776, column: 9, scope: !2141)
!2167 = !DILocation(line: 779, column: 15, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2141, file: !1, line: 779, column: 9)
!2169 = !DILocation(line: 780, column: 15, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2141, file: !1, line: 780, column: 9)
!2171 = !DILocation(line: 780, column: 9, scope: !2141)
!2172 = !DILocation(line: 311, column: 42, scope: !709, inlinedAt: !2173)
!2173 = distinct !DILocation(line: 782, column: 14, scope: !2141)
!2174 = !DILocation(line: 312, column: 19, scope: !709, inlinedAt: !2173)
!2175 = !DILocation(line: 314, column: 12, scope: !721, inlinedAt: !2173)
!2176 = !DILocation(line: 314, column: 9, scope: !709, inlinedAt: !2173)
!2177 = !DILocation(line: 315, column: 32, scope: !724, inlinedAt: !2173)
!2178 = !DILocation(line: 315, column: 18, scope: !724, inlinedAt: !2173)
!2179 = !DILocation(line: 315, column: 37, scope: !724, inlinedAt: !2173)
!2180 = !DILocation(line: 316, column: 5, scope: !724, inlinedAt: !2173)
!2181 = !DILocation(line: 317, column: 18, scope: !728, inlinedAt: !2173)
!2182 = !DILocation(line: 319, column: 9, scope: !733, inlinedAt: !2173)
!2183 = !DILocation(line: 0, scope: !728, inlinedAt: !2173)
!2184 = !DILocation(line: 321, column: 5, scope: !709, inlinedAt: !2173)
!2185 = !DILocation(line: 782, column: 14, scope: !2141)
!2186 = !DILocation(line: 774, column: 9, scope: !2141)
!2187 = !DILocation(line: 783, column: 29, scope: !2141)
!2188 = !DILocation(line: 783, column: 5, scope: !2141)
!2189 = !DILocation(line: 324, column: 46, scope: !891, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 785, column: 10, scope: !2141)
!2191 = !DILocation(line: 325, column: 28, scope: !891, inlinedAt: !2190)
!2192 = !DILocation(line: 325, column: 23, scope: !891, inlinedAt: !2190)
!2193 = !DILocation(line: 326, column: 9, scope: !891, inlinedAt: !2190)
!2194 = !DILocation(line: 326, column: 17, scope: !891, inlinedAt: !2190)
!2195 = !DILocation(line: 327, column: 29, scope: !891, inlinedAt: !2190)
!2196 = !DILocation(line: 327, column: 9, scope: !891, inlinedAt: !2190)
!2197 = !DILocation(line: 327, column: 18, scope: !891, inlinedAt: !2190)
!2198 = !DILocation(line: 329, column: 9, scope: !891, inlinedAt: !2190)
!2199 = !DILocation(line: 330, column: 13, scope: !931, inlinedAt: !2190)
!2200 = !DILocation(line: 330, column: 18, scope: !931, inlinedAt: !2190)
!2201 = !DILocation(line: 332, column: 5, scope: !931, inlinedAt: !2190)
!2202 = !DILocation(line: 333, column: 43, scope: !936, inlinedAt: !2190)
!2203 = !DILocation(line: 333, column: 18, scope: !936, inlinedAt: !2190)
!2204 = !DILocation(line: 333, column: 13, scope: !936, inlinedAt: !2190)
!2205 = !DILocation(line: 333, column: 16, scope: !936, inlinedAt: !2190)
!2206 = !DILocation(line: 335, column: 9, scope: !943, inlinedAt: !2190)
!2207 = !DILocation(line: 337, column: 5, scope: !891, inlinedAt: !2190)
!2208 = !DILocation(line: 772, column: 23, scope: !2141)
!2209 = !DILocation(line: 786, column: 12, scope: !2141)
!2210 = !DILocation(line: 786, column: 29, scope: !2141)
!2211 = !DILocation(line: 786, column: 5, scope: !2141)
!2212 = !DILocation(line: 787, column: 13, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2141, file: !1, line: 786, column: 39)
!2214 = !DILocation(line: 788, column: 13, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !1, line: 787, column: 35)
!2216 = distinct !DILexicalBlock(scope: !2213, file: !1, line: 787, column: 13)
!2217 = !DILocation(line: 789, column: 18, scope: !2215)
!2218 = !DILocation(line: 790, column: 9, scope: !2215)
!2219 = !DILocation(line: 0, scope: !2141)
!2220 = !DILocation(line: 791, column: 13, scope: !2213)
!2221 = !DILocation(line: 792, column: 13, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !1, line: 791, column: 37)
!2223 = distinct !DILexicalBlock(scope: !2213, file: !1, line: 791, column: 13)
!2224 = !DILocation(line: 793, column: 18, scope: !2222)
!2225 = !DILocation(line: 794, column: 9, scope: !2222)
!2226 = !DILocation(line: 0, scope: !2215)
!2227 = distinct !{!2227, !2211, !2228}
!2228 = !DILocation(line: 795, column: 5, scope: !2141)
!2229 = !DILocation(line: 0, scope: !2222)
!2230 = !DILocation(line: 340, column: 48, scope: !945, inlinedAt: !2231)
!2231 = distinct !DILocation(line: 797, column: 5, scope: !2141)
!2232 = !DILocation(line: 341, column: 13, scope: !952, inlinedAt: !2231)
!2233 = !DILocation(line: 341, column: 22, scope: !952, inlinedAt: !2231)
!2234 = !DILocation(line: 341, column: 9, scope: !945, inlinedAt: !2231)
!2235 = !DILocation(line: 342, column: 33, scope: !952, inlinedAt: !2231)
!2236 = !DILocation(line: 342, column: 9, scope: !952, inlinedAt: !2231)
!2237 = !DILocation(line: 343, column: 5, scope: !945, inlinedAt: !2231)
!2238 = !DILocation(line: 344, column: 1, scope: !945, inlinedAt: !2231)
!2239 = !DILocation(line: 798, column: 5, scope: !2141)
!2240 = !DILocation(line: 799, column: 1, scope: !2141)
!2241 = distinct !DISubprogram(name: "addHashIteratorCursorToReply", scope: !1, file: !1, line: 751, type: !2242, isLocal: true, isDefinition: true, scopeLine: 751, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2244)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{null, !1151, !894, !39}
!2244 = !{!2245, !2246, !2247, !2248, !2251, !2252, !2253}
!2245 = !DILocalVariable(name: "c", arg: 1, scope: !2241, file: !1, line: 751, type: !1151)
!2246 = !DILocalVariable(name: "hi", arg: 2, scope: !2241, file: !1, line: 751, type: !894)
!2247 = !DILocalVariable(name: "what", arg: 3, scope: !2241, file: !1, line: 751, type: !39)
!2248 = !DILocalVariable(name: "vstr", scope: !2249, file: !1, line: 753, type: !5)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !1, line: 752, column: 47)
!2250 = distinct !DILexicalBlock(scope: !2241, file: !1, line: 752, column: 9)
!2251 = !DILocalVariable(name: "vlen", scope: !2249, file: !1, line: 754, type: !110)
!2252 = !DILocalVariable(name: "vll", scope: !2249, file: !1, line: 755, type: !249)
!2253 = !DILocalVariable(name: "value", scope: !2254, file: !1, line: 763, type: !176)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !1, line: 762, column: 49)
!2255 = distinct !DILexicalBlock(scope: !2250, file: !1, line: 762, column: 16)
!2256 = !DILocation(line: 751, column: 50, scope: !2241)
!2257 = !DILocation(line: 751, column: 71, scope: !2241)
!2258 = !DILocation(line: 751, column: 79, scope: !2241)
!2259 = !DILocation(line: 752, column: 13, scope: !2250)
!2260 = !DILocation(line: 752, column: 9, scope: !2241)
!2261 = !DILocation(line: 753, column: 9, scope: !2249)
!2262 = !DILocation(line: 753, column: 24, scope: !2249)
!2263 = !DILocation(line: 754, column: 9, scope: !2249)
!2264 = !DILocation(line: 754, column: 22, scope: !2249)
!2265 = !DILocation(line: 755, column: 9, scope: !2249)
!2266 = !DILocation(line: 755, column: 19, scope: !2249)
!2267 = !DILocation(line: 757, column: 9, scope: !2249)
!2268 = !DILocation(line: 758, column: 13, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2249, file: !1, line: 758, column: 13)
!2270 = !DILocation(line: 758, column: 13, scope: !2249)
!2271 = !DILocation(line: 759, column: 42, scope: !2269)
!2272 = !DILocation(line: 759, column: 13, scope: !2269)
!2273 = !DILocation(line: 761, column: 37, scope: !2269)
!2274 = !DILocation(line: 761, column: 13, scope: !2269)
!2275 = !DILocation(line: 762, column: 5, scope: !2250)
!2276 = !DILocation(line: 762, column: 5, scope: !2249)
!2277 = !DILocation(line: 406, column: 52, scope: !1044, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 763, column: 21, scope: !2254)
!2279 = !DILocation(line: 406, column: 60, scope: !1044, inlinedAt: !2278)
!2280 = !DILocation(line: 409, column: 14, scope: !1054, inlinedAt: !2278)
!2281 = !DILocation(line: 0, scope: !1056, inlinedAt: !2278)
!2282 = !DILocation(line: 410, column: 16, scope: !1058, inlinedAt: !2278)
!2283 = !DILocation(line: 412, column: 16, scope: !1056, inlinedAt: !2278)
!2284 = !DILocation(line: 409, column: 9, scope: !1044, inlinedAt: !2278)
!2285 = !DILocation(line: 414, column: 1, scope: !1044, inlinedAt: !2278)
!2286 = !DILocation(line: 763, column: 13, scope: !2254)
!2287 = !DILocation(line: 87, column: 39, scope: !170, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 764, column: 39, scope: !2254)
!2289 = !DILocation(line: 88, column: 27, scope: !170, inlinedAt: !2288)
!2290 = !DILocation(line: 88, column: 19, scope: !170, inlinedAt: !2288)
!2291 = !DILocation(line: 89, column: 5, scope: !170, inlinedAt: !2288)
!2292 = !DILocation(line: 91, column: 20, scope: !188, inlinedAt: !2288)
!2293 = !DILocation(line: 91, column: 13, scope: !188, inlinedAt: !2288)
!2294 = !DILocation(line: 93, column: 20, scope: !188, inlinedAt: !2288)
!2295 = !DILocation(line: 93, column: 34, scope: !188, inlinedAt: !2288)
!2296 = !DILocation(line: 93, column: 13, scope: !188, inlinedAt: !2288)
!2297 = !DILocation(line: 95, column: 20, scope: !188, inlinedAt: !2288)
!2298 = !DILocation(line: 95, column: 35, scope: !188, inlinedAt: !2288)
!2299 = !DILocation(line: 95, column: 13, scope: !188, inlinedAt: !2288)
!2300 = !DILocation(line: 97, column: 20, scope: !188, inlinedAt: !2288)
!2301 = !DILocation(line: 97, column: 35, scope: !188, inlinedAt: !2288)
!2302 = !DILocation(line: 97, column: 13, scope: !188, inlinedAt: !2288)
!2303 = !DILocation(line: 99, column: 20, scope: !188, inlinedAt: !2288)
!2304 = !DILocation(line: 99, column: 35, scope: !188, inlinedAt: !2288)
!2305 = !DILocation(line: 99, column: 13, scope: !188, inlinedAt: !2288)
!2306 = !DILocation(line: 0, scope: !188, inlinedAt: !2288)
!2307 = !DILocation(line: 102, column: 1, scope: !170, inlinedAt: !2288)
!2308 = !DILocation(line: 764, column: 9, scope: !2254)
!2309 = !DILocation(line: 766, column: 9, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2255, file: !1, line: 765, column: 12)
!2311 = !DILocation(line: 768, column: 1, scope: !2241)
!2312 = distinct !DISubprogram(name: "hkeysCommand", scope: !1, file: !1, line: 801, type: !1213, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2313)
!2313 = !{!2314}
!2314 = !DILocalVariable(name: "c", arg: 1, scope: !2312, file: !1, line: 801, type: !1151)
!2315 = !DILocation(line: 801, column: 27, scope: !2312)
!2316 = !DILocation(line: 802, column: 5, scope: !2312)
!2317 = !DILocation(line: 803, column: 1, scope: !2312)
!2318 = distinct !DISubprogram(name: "hvalsCommand", scope: !1, file: !1, line: 805, type: !1213, isLocal: false, isDefinition: true, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2319)
!2319 = !{!2320}
!2320 = !DILocalVariable(name: "c", arg: 1, scope: !2318, file: !1, line: 805, type: !1151)
!2321 = !DILocation(line: 805, column: 27, scope: !2318)
!2322 = !DILocation(line: 806, column: 5, scope: !2318)
!2323 = !DILocation(line: 807, column: 1, scope: !2318)
!2324 = distinct !DISubprogram(name: "hgetallCommand", scope: !1, file: !1, line: 809, type: !1213, isLocal: false, isDefinition: true, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2325)
!2325 = !{!2326}
!2326 = !DILocalVariable(name: "c", arg: 1, scope: !2324, file: !1, line: 809, type: !1151)
!2327 = !DILocation(line: 809, column: 29, scope: !2324)
!2328 = !DILocation(line: 810, column: 5, scope: !2324)
!2329 = !DILocation(line: 811, column: 1, scope: !2324)
!2330 = distinct !DISubprogram(name: "hexistsCommand", scope: !1, file: !1, line: 813, type: !1213, isLocal: false, isDefinition: true, scopeLine: 813, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2331)
!2331 = !{!2332, !2333}
!2332 = !DILocalVariable(name: "c", arg: 1, scope: !2330, file: !1, line: 813, type: !1151)
!2333 = !DILocalVariable(name: "o", scope: !2330, file: !1, line: 814, type: !128)
!2334 = !DILocation(line: 813, column: 29, scope: !2330)
!2335 = !DILocation(line: 815, column: 40, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2330, file: !1, line: 815, column: 9)
!2337 = !DILocation(line: 815, column: 37, scope: !2336)
!2338 = !DILocation(line: 815, column: 55, scope: !2336)
!2339 = !DILocation(line: 815, column: 14, scope: !2336)
!2340 = !DILocation(line: 814, column: 11, scope: !2330)
!2341 = !DILocation(line: 815, column: 63, scope: !2336)
!2342 = !DILocation(line: 815, column: 71, scope: !2336)
!2343 = !DILocation(line: 816, column: 9, scope: !2336)
!2344 = !DILocation(line: 815, column: 9, scope: !2330)
!2345 = !DILocation(line: 818, column: 37, scope: !2330)
!2346 = !DILocation(line: 818, column: 34, scope: !2330)
!2347 = !DILocation(line: 818, column: 46, scope: !2330)
!2348 = !DILocation(line: 818, column: 17, scope: !2330)
!2349 = !DILocation(line: 818, column: 60, scope: !2330)
!2350 = !DILocation(line: 818, column: 74, scope: !2330)
!2351 = !DILocation(line: 818, column: 5, scope: !2330)
!2352 = !DILocation(line: 819, column: 1, scope: !2330)
!2353 = distinct !DISubprogram(name: "hscanCommand", scope: !1, file: !1, line: 821, type: !1213, isLocal: false, isDefinition: true, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2354)
!2354 = !{!2355, !2356, !2357}
!2355 = !DILocalVariable(name: "c", arg: 1, scope: !2353, file: !1, line: 821, type: !1151)
!2356 = !DILocalVariable(name: "o", scope: !2353, file: !1, line: 822, type: !128)
!2357 = !DILocalVariable(name: "cursor", scope: !2353, file: !1, line: 823, type: !27)
!2358 = !DILocation(line: 821, column: 27, scope: !2353)
!2359 = !DILocation(line: 823, column: 5, scope: !2353)
!2360 = !DILocation(line: 825, column: 37, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2353, file: !1, line: 825, column: 9)
!2362 = !DILocation(line: 825, column: 34, scope: !2361)
!2363 = !DILocation(line: 823, column: 19, scope: !2353)
!2364 = !DILocation(line: 825, column: 9, scope: !2361)
!2365 = !DILocation(line: 825, column: 54, scope: !2361)
!2366 = !DILocation(line: 825, column: 9, scope: !2353)
!2367 = !DILocation(line: 826, column: 40, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2353, file: !1, line: 826, column: 9)
!2369 = !DILocation(line: 826, column: 37, scope: !2368)
!2370 = !DILocation(line: 826, column: 55, scope: !2368)
!2371 = !{!1343, !162, i64 360}
!2372 = !DILocation(line: 826, column: 14, scope: !2368)
!2373 = !DILocation(line: 822, column: 11, scope: !2353)
!2374 = !DILocation(line: 826, column: 67, scope: !2368)
!2375 = !DILocation(line: 826, column: 75, scope: !2368)
!2376 = !DILocation(line: 827, column: 9, scope: !2368)
!2377 = !DILocation(line: 826, column: 9, scope: !2353)
!2378 = !DILocation(line: 828, column: 28, scope: !2353)
!2379 = !DILocation(line: 828, column: 5, scope: !2353)
!2380 = !DILocation(line: 829, column: 1, scope: !2353)
