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

; Function Attrs: noredzone nounwind
define dso_local void @hashTypeTryConversion(%struct.redisObject*, %struct.redisObject** nocapture readonly, i32, i32) local_unnamed_addr #0 !dbg !125 {
  %5 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !149
  %6 = load i32, i32* %5, align 8, !dbg !149
  %7 = and i32 %6, 240, !dbg !149
  %8 = icmp ne i32 %7, 80, !dbg !151
  %9 = icmp sgt i32 %2, %3, !dbg !152
  %10 = or i1 %8, %9, !dbg !155
  br i1 %10, label %63, label %11, !dbg !155

; <label>:11:                                     ; preds = %4
  %12 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 242), align 8
  %13 = sext i32 %2 to i64, !dbg !157
  %14 = sext i32 %3 to i64, !dbg !157
  br label %15, !dbg !157

; <label>:15:                                     ; preds = %60, %11
  %16 = phi i64 [ %61, %60 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %16, !dbg !158
  %18 = bitcast %struct.redisObject** %17 to i32**, !dbg !158
  %19 = load i32*, i32** %18, align 8, !dbg !158, !tbaa !161
  %20 = load i32, i32* %19, align 8, !dbg !158
  %21 = lshr i32 %20, 4, !dbg !158
  %22 = trunc i32 %21 to i4, !dbg !158
  switch i4 %22, label %60 [
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
  switch i3 %29, label %60 [
    i3 0, label %30
    i3 1, label %33
    i3 2, label %37
    i3 3, label %42
    i3 -4, label %47
  ], !dbg !184

; <label>:30:                                     ; preds = %23
  %31 = lshr i8 %28, 3, !dbg !185
  %32 = zext i8 %31 to i64, !dbg !185
  br label %51, !dbg !187

; <label>:33:                                     ; preds = %23
  %34 = getelementptr inbounds i8, i8* %26, i64 -3, !dbg !188
  %35 = load i8, i8* %34, align 1, !dbg !189, !tbaa !182
  %36 = zext i8 %35 to i64, !dbg !188
  br label %51, !dbg !190

; <label>:37:                                     ; preds = %23
  %38 = getelementptr inbounds i8, i8* %26, i64 -5, !dbg !191
  %39 = bitcast i8* %38 to i16*, !dbg !192
  %40 = load i16, i16* %39, align 1, !dbg !192, !tbaa !193
  %41 = zext i16 %40 to i64, !dbg !191
  br label %51, !dbg !195

; <label>:42:                                     ; preds = %23
  %43 = getelementptr inbounds i8, i8* %26, i64 -9, !dbg !196
  %44 = bitcast i8* %43 to i32*, !dbg !197
  %45 = load i32, i32* %44, align 1, !dbg !197, !tbaa !198
  %46 = zext i32 %45 to i64, !dbg !196
  br label %51, !dbg !199

; <label>:47:                                     ; preds = %23
  %48 = getelementptr inbounds i8, i8* %26, i64 -17, !dbg !200
  %49 = bitcast i8* %48 to i64*, !dbg !201
  %50 = load i64, i64* %49, align 1, !dbg !201, !tbaa !202
  br label %51, !dbg !204

; <label>:51:                                     ; preds = %30, %33, %37, %42, %47
  %52 = phi i64 [ %50, %47 ], [ %46, %42 ], [ %41, %37 ], [ %36, %33 ], [ %32, %30 ], !dbg !205
  %53 = icmp ugt i64 %52, %12, !dbg !206
  br i1 %53, label %54, label %60, !dbg !207

; <label>:54:                                     ; preds = %51
  %55 = lshr i32 %6, 4, !dbg !218
  %56 = trunc i32 %55 to i4, !dbg !220
  switch i4 %56, label %58 [
    i4 5, label %59
    i4 2, label %57
  ], !dbg !220

; <label>:57:                                     ; preds = %54
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 504, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !221
  tail call void @_exit(i32 1) #7, !dbg !221
  unreachable, !dbg !221

; <label>:58:                                     ; preds = %54
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 506, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !224
  tail call void @_exit(i32 1) #7, !dbg !224
  unreachable, !dbg !224

; <label>:59:                                     ; preds = %54
  tail call void @hashTypeConvertZiplist(%struct.redisObject* nonnull %0, i32 2) #6, !dbg !226
  br label %63, !dbg !228

; <label>:60:                                     ; preds = %23, %15, %51
  %61 = add nsw i64 %16, 1, !dbg !229
  %62 = icmp slt i64 %16, %14, !dbg !152
  br i1 %62, label %15, label %63, !dbg !157, !llvm.loop !230

; <label>:63:                                     ; preds = %60, %4, %59
  ret void, !dbg !232
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local void @hashTypeConvert(%struct.redisObject*, i32) local_unnamed_addr #0 !dbg !209 {
  %3 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !235
  %4 = load i32, i32* %3, align 8, !dbg !235
  %5 = lshr i32 %4, 4, !dbg !235
  %6 = trunc i32 %5 to i4, !dbg !236
  switch i4 %6, label %9 [
    i4 5, label %7
    i4 2, label %8
  ], !dbg !236

; <label>:7:                                      ; preds = %2
  tail call void @hashTypeConvertZiplist(%struct.redisObject* nonnull %0, i32 %1) #8, !dbg !237
  ret void, !dbg !238

; <label>:8:                                      ; preds = %2
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 504, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !239
  tail call void @_exit(i32 1) #7, !dbg !239
  unreachable, !dbg !239

; <label>:9:                                      ; preds = %2
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 506, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !240
  tail call void @_exit(i32 1) #7, !dbg !240
  unreachable, !dbg !240
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @hashTypeGetFromZiplist(%struct.redisObject* nocapture readonly, i8*, i8**, i32*, i64*) local_unnamed_addr #0 !dbg !241 {
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !265
  %7 = load i32, i32* %6, align 8, !dbg !265
  %8 = and i32 %7, 240, !dbg !265
  %9 = icmp eq i32 %8, 80, !dbg !265
  br i1 %9, label %11, label %10, !dbg !265

; <label>:10:                                     ; preds = %5
  tail call void @_serverAssert(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 65) #6, !dbg !265
  tail call void @_exit(i32 1) #7, !dbg !265
  unreachable, !dbg !265

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !266
  %13 = load i8*, i8** %12, align 8, !dbg !266, !tbaa !166
  %14 = tail call i8* @ziplistIndex(i8* %13, i32 0) #6, !dbg !268
  %15 = icmp eq i8* %14, null, !dbg !269
  br i1 %15, label %54, label %16, !dbg !271

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !275
  %18 = load i8, i8* %17, align 1, !dbg !275, !tbaa !182
  %19 = trunc i8 %18 to i3, !dbg !277
  switch i3 %19, label %41 [
    i3 0, label %20
    i3 1, label %23
    i3 2, label %27
    i3 3, label %32
    i3 -4, label %37
  ], !dbg !277

; <label>:20:                                     ; preds = %16
  %21 = lshr i8 %18, 3, !dbg !278
  %22 = zext i8 %21 to i64, !dbg !278
  br label %41, !dbg !279

; <label>:23:                                     ; preds = %16
  %24 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !280
  %25 = load i8, i8* %24, align 1, !dbg !281, !tbaa !182
  %26 = zext i8 %25 to i64, !dbg !280
  br label %41, !dbg !282

; <label>:27:                                     ; preds = %16
  %28 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !283
  %29 = bitcast i8* %28 to i16*, !dbg !284
  %30 = load i16, i16* %29, align 1, !dbg !284, !tbaa !193
  %31 = zext i16 %30 to i64, !dbg !283
  br label %41, !dbg !285

; <label>:32:                                     ; preds = %16
  %33 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !286
  %34 = bitcast i8* %33 to i32*, !dbg !287
  %35 = load i32, i32* %34, align 1, !dbg !287, !tbaa !198
  %36 = zext i32 %35 to i64, !dbg !286
  br label %41, !dbg !288

; <label>:37:                                     ; preds = %16
  %38 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !289
  %39 = bitcast i8* %38 to i64*, !dbg !290
  %40 = load i64, i64* %39, align 1, !dbg !290, !tbaa !202
  br label %41, !dbg !291

; <label>:41:                                     ; preds = %16, %20, %23, %27, %32, %37
  %42 = phi i64 [ %40, %37 ], [ %36, %32 ], [ %31, %27 ], [ %26, %23 ], [ %22, %20 ], [ 0, %16 ], !dbg !292
  %43 = trunc i64 %42 to i32, !dbg !293
  %44 = tail call i8* @ziplistFind(i8* nonnull %14, i8* nonnull %1, i32 %43, i32 1) #6, !dbg !294
  %45 = icmp eq i8* %44, null, !dbg !295
  br i1 %45, label %54, label %46, !dbg !297

; <label>:46:                                     ; preds = %41
  %47 = tail call i8* @ziplistNext(i8* %13, i8* nonnull %44) #6, !dbg !298
  %48 = icmp eq i8* %47, null, !dbg !300
  br i1 %48, label %49, label %50, !dbg !300

; <label>:49:                                     ; preds = %46
  tail call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 74) #6, !dbg !300
  tail call void @_exit(i32 1) #7, !dbg !300
  unreachable, !dbg !300

; <label>:50:                                     ; preds = %46
  %51 = tail call i32 @ziplistGet(i8* nonnull %47, i8** %2, i32* %3, i64* %4) #6, !dbg !301
  %52 = icmp eq i32 %51, 0, !dbg !305
  br i1 %52, label %53, label %54, !dbg !305

; <label>:53:                                     ; preds = %50
  tail call void @_serverAssert(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 80) #6, !dbg !305
  tail call void @_exit(i32 1) #7, !dbg !305
  unreachable, !dbg !305

; <label>:54:                                     ; preds = %11, %41, %50
  %55 = phi i32 [ 0, %50 ], [ -1, %41 ], [ -1, %11 ], !dbg !306
  ret i32 %55, !dbg !307
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
define dso_local i8* @hashTypeGetFromHashTable(%struct.redisObject* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !308 {
  %3 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !317
  %4 = load i32, i32* %3, align 8, !dbg !317
  %5 = and i32 %4, 240, !dbg !317
  %6 = icmp eq i32 %5, 32, !dbg !317
  br i1 %6, label %8, label %7, !dbg !317

; <label>:7:                                      ; preds = %2
  tail call void @_serverAssert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 93) #6, !dbg !317
  tail call void @_exit(i32 1) #7, !dbg !317
  unreachable, !dbg !317

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !318
  %10 = bitcast i8** %9 to %struct.dict**, !dbg !318
  %11 = load %struct.dict*, %struct.dict** %10, align 8, !dbg !318, !tbaa !166
  %12 = tail call %struct.dictEntry* @dictFind(%struct.dict* %11, i8* %1) #6, !dbg !319
  %13 = icmp eq %struct.dictEntry* %12, null, !dbg !321
  br i1 %13, label %17, label %14, !dbg !323

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %12, i64 0, i32 1, i32 0, !dbg !324
  %16 = load i8*, i8** %15, align 8, !dbg !324, !tbaa !182
  br label %17, !dbg !325

; <label>:17:                                     ; preds = %8, %14
  %18 = phi i8* [ %16, %14 ], [ null, %8 ], !dbg !326
  ret i8* %18, !dbg !327
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @hashTypeGetValue(%struct.redisObject* nocapture readonly, i8*, i8**, i32*, i64*) local_unnamed_addr #0 !dbg !328 {
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !344
  %7 = load i32, i32* %6, align 8, !dbg !344
  %8 = lshr i32 %7, 4, !dbg !344
  %9 = trunc i32 %8 to i4, !dbg !345
  switch i4 %9, label %55 [
    i4 5, label %10
    i4 2, label %13
  ], !dbg !345

; <label>:10:                                     ; preds = %5
  store i8* null, i8** %2, align 8, !dbg !346, !tbaa !161
  %11 = tail call i32 @hashTypeGetFromZiplist(%struct.redisObject* nonnull %0, i8* %1, i8** %2, i32* %3, i64* %4) #8, !dbg !348
  %12 = icmp eq i32 %11, 0, !dbg !350
  br i1 %12, label %57, label %56, !dbg !351

; <label>:13:                                     ; preds = %5
  %14 = and i32 %7, 240, !dbg !356
  %15 = icmp eq i32 %14, 32, !dbg !356
  br i1 %15, label %17, label %16, !dbg !356

; <label>:16:                                     ; preds = %13
  tail call void @_serverAssert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 93) #6, !dbg !356
  tail call void @_exit(i32 1) #7, !dbg !356
  unreachable, !dbg !356

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !357
  %19 = bitcast i8** %18 to %struct.dict**, !dbg !357
  %20 = load %struct.dict*, %struct.dict** %19, align 8, !dbg !357, !tbaa !166
  %21 = tail call %struct.dictEntry* @dictFind(%struct.dict* %20, i8* %1) #6, !dbg !358
  %22 = icmp eq %struct.dictEntry* %21, null, !dbg !360
  br i1 %22, label %56, label %23, !dbg !361

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %21, i64 0, i32 1, i32 0, !dbg !362
  %25 = load i8*, i8** %24, align 8, !dbg !362, !tbaa !182
  %26 = icmp eq i8* %25, null, !dbg !364
  br i1 %26, label %56, label %27, !dbg !365

; <label>:27:                                     ; preds = %23
  store i8* %25, i8** %2, align 8, !dbg !366, !tbaa !161
  %28 = getelementptr inbounds i8, i8* %25, i64 -1, !dbg !370
  %29 = load i8, i8* %28, align 1, !dbg !370, !tbaa !182
  %30 = trunc i8 %29 to i3, !dbg !372
  switch i3 %30, label %52 [
    i3 0, label %31
    i3 1, label %34
    i3 2, label %38
    i3 3, label %43
    i3 -4, label %48
  ], !dbg !372

; <label>:31:                                     ; preds = %27
  %32 = lshr i8 %29, 3, !dbg !373
  %33 = zext i8 %32 to i64, !dbg !373
  br label %52, !dbg !374

; <label>:34:                                     ; preds = %27
  %35 = getelementptr inbounds i8, i8* %25, i64 -3, !dbg !375
  %36 = load i8, i8* %35, align 1, !dbg !376, !tbaa !182
  %37 = zext i8 %36 to i64, !dbg !375
  br label %52, !dbg !377

; <label>:38:                                     ; preds = %27
  %39 = getelementptr inbounds i8, i8* %25, i64 -5, !dbg !378
  %40 = bitcast i8* %39 to i16*, !dbg !379
  %41 = load i16, i16* %40, align 1, !dbg !379, !tbaa !193
  %42 = zext i16 %41 to i64, !dbg !378
  br label %52, !dbg !380

; <label>:43:                                     ; preds = %27
  %44 = getelementptr inbounds i8, i8* %25, i64 -9, !dbg !381
  %45 = bitcast i8* %44 to i32*, !dbg !382
  %46 = load i32, i32* %45, align 1, !dbg !382, !tbaa !198
  %47 = zext i32 %46 to i64, !dbg !381
  br label %52, !dbg !383

; <label>:48:                                     ; preds = %27
  %49 = getelementptr inbounds i8, i8* %25, i64 -17, !dbg !384
  %50 = bitcast i8* %49 to i64*, !dbg !385
  %51 = load i64, i64* %50, align 1, !dbg !385, !tbaa !202
  br label %52, !dbg !386

; <label>:52:                                     ; preds = %27, %31, %34, %38, %43, %48
  %53 = phi i64 [ %51, %48 ], [ %47, %43 ], [ %42, %38 ], [ %37, %34 ], [ %33, %31 ], [ 0, %27 ], !dbg !387
  %54 = trunc i64 %53 to i32, !dbg !388
  store i32 %54, i32* %3, align 4, !dbg !389, !tbaa !198
  br label %57

; <label>:55:                                     ; preds = %5
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 122, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !390
  tail call void @_exit(i32 1) #7, !dbg !390
  unreachable, !dbg !390

; <label>:56:                                     ; preds = %17, %23, %10
  br label %57, !dbg !392

; <label>:57:                                     ; preds = %52, %10, %56
  %58 = phi i32 [ -1, %56 ], [ 0, %10 ], [ 0, %52 ], !dbg !393
  ret i32 %58, !dbg !394
}

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @hashTypeGetValueObject(%struct.redisObject* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !395 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = bitcast i8** %3 to i8*, !dbg !406
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !406
  %7 = bitcast i32* %4 to i8*, !dbg !407
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #5, !dbg !407
  %8 = bitcast i64* %5 to i8*, !dbg !408
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !408
  %9 = call i32 @hashTypeGetValue(%struct.redisObject* %0, i8* %1, i8** nonnull %3, i32* nonnull %4, i64* nonnull %5) #8, !dbg !412
  %10 = icmp eq i32 %9, -1, !dbg !414
  br i1 %10, label %21, label %11, !dbg !415

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %3, align 8, !dbg !416, !tbaa !161
  %13 = icmp eq i8* %12, null, !dbg !416
  br i1 %13, label %18, label %14, !dbg !418

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %4, align 4, !dbg !419, !tbaa !198
  %16 = zext i32 %15 to i64, !dbg !419
  %17 = call %struct.redisObject* @createStringObject(i8* nonnull %12, i64 %16) #6, !dbg !420
  br label %21, !dbg !421

; <label>:18:                                     ; preds = %11
  %19 = load i64, i64* %5, align 8, !dbg !422, !tbaa !423
  %20 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %19) #6, !dbg !425
  br label %21, !dbg !426

; <label>:21:                                     ; preds = %2, %18, %14
  %22 = phi %struct.redisObject* [ %17, %14 ], [ %20, %18 ], [ null, %2 ], !dbg !427
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !428
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #5, !dbg !428
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !428
  ret %struct.redisObject* %22, !dbg !428
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObjectFromLongLong(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @hashTypeGetValueLength(%struct.redisObject* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !429 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !451
  %7 = load i32, i32* %6, align 8, !dbg !451
  %8 = lshr i32 %7, 4, !dbg !451
  %9 = trunc i32 %8 to i4, !dbg !452
  switch i4 %9, label %68 [
    i4 5, label %10
    i4 2, label %29
  ], !dbg !452

; <label>:10:                                     ; preds = %2
  %11 = bitcast i8** %3 to i8*, !dbg !453
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #5, !dbg !453
  store i8* null, i8** %3, align 8, !dbg !454, !tbaa !161
  %12 = bitcast i32* %4 to i8*, !dbg !455
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5, !dbg !455
  store i32 -1, i32* %4, align 4, !dbg !456, !tbaa !198
  %13 = bitcast i64* %5 to i8*, !dbg !457
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #5, !dbg !457
  store i64 9223372036854775807, i64* %5, align 8, !dbg !458, !tbaa !423
  %14 = call i32 @hashTypeGetFromZiplist(%struct.redisObject* nonnull %0, i8* %1, i8** nonnull %3, i32* nonnull %4, i64* nonnull %5) #8, !dbg !459
  %15 = icmp eq i32 %14, 0, !dbg !461
  br i1 %15, label %16, label %27, !dbg !462

; <label>:16:                                     ; preds = %10
  %17 = load i8*, i8** %3, align 8, !dbg !463, !tbaa !161
  %18 = icmp eq i8* %17, null, !dbg !463
  br i1 %18, label %21, label %19, !dbg !463

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %4, align 4, !dbg !464, !tbaa !198
  br label %24, !dbg !463

; <label>:21:                                     ; preds = %16
  %22 = load i64, i64* %5, align 8, !dbg !465, !tbaa !423
  %23 = call i32 @sdigits10(i64 %22) #6, !dbg !466
  br label %24, !dbg !463

; <label>:24:                                     ; preds = %21, %19
  %25 = phi i32 [ %20, %19 ], [ %23, %21 ], !dbg !463
  %26 = zext i32 %25 to i64, !dbg !463
  br label %27, !dbg !467

; <label>:27:                                     ; preds = %24, %10
  %28 = phi i64 [ %26, %24 ], [ 0, %10 ], !dbg !468
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #5, !dbg !469
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5, !dbg !469
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5, !dbg !469
  br label %69, !dbg !470

; <label>:29:                                     ; preds = %2
  %30 = and i32 %7, 240, !dbg !475
  %31 = icmp eq i32 %30, 32, !dbg !475
  br i1 %31, label %33, label %32, !dbg !475

; <label>:32:                                     ; preds = %29
  tail call void @_serverAssert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 93) #6, !dbg !475
  tail call void @_exit(i32 1) #7, !dbg !475
  unreachable, !dbg !475

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !476
  %35 = bitcast i8** %34 to %struct.dict**, !dbg !476
  %36 = load %struct.dict*, %struct.dict** %35, align 8, !dbg !476, !tbaa !166
  %37 = tail call %struct.dictEntry* @dictFind(%struct.dict* %36, i8* %1) #6, !dbg !477
  %38 = icmp eq %struct.dictEntry* %37, null, !dbg !479
  br i1 %38, label %69, label %39, !dbg !480

; <label>:39:                                     ; preds = %33
  %40 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %37, i64 0, i32 1, i32 0, !dbg !481
  %41 = load i8*, i8** %40, align 8, !dbg !481, !tbaa !182
  %42 = icmp eq i8* %41, null, !dbg !483
  br i1 %42, label %69, label %43, !dbg !484

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds i8, i8* %41, i64 -1, !dbg !487
  %45 = load i8, i8* %44, align 1, !dbg !487, !tbaa !182
  %46 = trunc i8 %45 to i3, !dbg !489
  switch i3 %46, label %69 [
    i3 0, label %47
    i3 1, label %50
    i3 2, label %54
    i3 3, label %59
    i3 -4, label %64
  ], !dbg !489

; <label>:47:                                     ; preds = %43
  %48 = lshr i8 %45, 3, !dbg !490
  %49 = zext i8 %48 to i64, !dbg !490
  br label %69, !dbg !491

; <label>:50:                                     ; preds = %43
  %51 = getelementptr inbounds i8, i8* %41, i64 -3, !dbg !492
  %52 = load i8, i8* %51, align 1, !dbg !493, !tbaa !182
  %53 = zext i8 %52 to i64, !dbg !492
  br label %69, !dbg !494

; <label>:54:                                     ; preds = %43
  %55 = getelementptr inbounds i8, i8* %41, i64 -5, !dbg !495
  %56 = bitcast i8* %55 to i16*, !dbg !496
  %57 = load i16, i16* %56, align 1, !dbg !496, !tbaa !193
  %58 = zext i16 %57 to i64, !dbg !495
  br label %69, !dbg !497

; <label>:59:                                     ; preds = %43
  %60 = getelementptr inbounds i8, i8* %41, i64 -9, !dbg !498
  %61 = bitcast i8* %60 to i32*, !dbg !499
  %62 = load i32, i32* %61, align 1, !dbg !499, !tbaa !198
  %63 = zext i32 %62 to i64, !dbg !498
  br label %69, !dbg !500

; <label>:64:                                     ; preds = %43
  %65 = getelementptr inbounds i8, i8* %41, i64 -17, !dbg !501
  %66 = bitcast i8* %65 to i64*, !dbg !502
  %67 = load i64, i64* %66, align 1, !dbg !502, !tbaa !202
  br label %69, !dbg !503

; <label>:68:                                     ; preds = %2
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 159, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !504
  tail call void @_exit(i32 1) #7, !dbg !504
  unreachable, !dbg !504

; <label>:69:                                     ; preds = %33, %64, %59, %54, %50, %47, %43, %39, %27
  %70 = phi i64 [ %28, %27 ], [ 0, %39 ], [ %67, %64 ], [ %63, %59 ], [ %58, %54 ], [ %53, %50 ], [ %49, %47 ], [ 0, %43 ], [ 0, %33 ], !dbg !506
  ret i64 %70, !dbg !507
}

; Function Attrs: noredzone
declare dso_local i32 @sdigits10(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @hashTypeExists(%struct.redisObject* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !508 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !521
  %7 = load i32, i32* %6, align 8, !dbg !521
  %8 = lshr i32 %7, 4, !dbg !521
  %9 = trunc i32 %8 to i4, !dbg !522
  switch i4 %9, label %30 [
    i4 5, label %10
    i4 2, label %16
  ], !dbg !522

; <label>:10:                                     ; preds = %2
  %11 = bitcast i8** %3 to i8*, !dbg !523
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #5, !dbg !523
  store i8* null, i8** %3, align 8, !dbg !524, !tbaa !161
  %12 = bitcast i32* %4 to i8*, !dbg !525
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5, !dbg !525
  store i32 -1, i32* %4, align 4, !dbg !526, !tbaa !198
  %13 = bitcast i64* %5 to i8*, !dbg !527
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #5, !dbg !527
  store i64 9223372036854775807, i64* %5, align 8, !dbg !528, !tbaa !423
  %14 = call i32 @hashTypeGetFromZiplist(%struct.redisObject* nonnull %0, i8* %1, i8** nonnull %3, i32* nonnull %4, i64* nonnull %5) #8, !dbg !529
  %15 = icmp eq i32 %14, 0, !dbg !531
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #5, !dbg !532
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5, !dbg !532
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5, !dbg !532
  br i1 %15, label %32, label %31

; <label>:16:                                     ; preds = %2
  %17 = and i32 %7, 240, !dbg !539
  %18 = icmp eq i32 %17, 32, !dbg !539
  br i1 %18, label %20, label %19, !dbg !539

; <label>:19:                                     ; preds = %16
  tail call void @_serverAssert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 93) #6, !dbg !539
  tail call void @_exit(i32 1) #7, !dbg !539
  unreachable, !dbg !539

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !540
  %22 = bitcast i8** %21 to %struct.dict**, !dbg !540
  %23 = load %struct.dict*, %struct.dict** %22, align 8, !dbg !540, !tbaa !166
  %24 = tail call %struct.dictEntry* @dictFind(%struct.dict* %23, i8* %1) #6, !dbg !541
  %25 = icmp eq %struct.dictEntry* %24, null, !dbg !543
  br i1 %25, label %31, label %26, !dbg !544

; <label>:26:                                     ; preds = %20
  %27 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %24, i64 0, i32 1, i32 0, !dbg !545
  %28 = load i8*, i8** %27, align 8, !dbg !545, !tbaa !182
  %29 = icmp eq i8* %28, null, !dbg !546
  br i1 %29, label %31, label %32, !dbg !547

; <label>:30:                                     ; preds = %2
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 176, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !548
  tail call void @_exit(i32 1) #7, !dbg !548
  unreachable, !dbg !548

; <label>:31:                                     ; preds = %10, %20, %26
  br label %32, !dbg !550

; <label>:32:                                     ; preds = %10, %26, %31
  %33 = phi i32 [ 0, %31 ], [ 1, %10 ], [ 1, %26 ], !dbg !551
  ret i32 %33, !dbg !552
}

; Function Attrs: noredzone nounwind
define dso_local i32 @hashTypeSet(%struct.redisObject*, i8*, i8*, i32) local_unnamed_addr #0 !dbg !553 {
  %5 = alloca i8*, align 8
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !579
  %7 = load i32, i32* %6, align 8, !dbg !579
  %8 = lshr i32 %7, 4, !dbg !579
  %9 = trunc i32 %8 to i4, !dbg !580
  switch i4 %9, label %201 [
    i4 5, label %10
    i4 2, label %168
  ], !dbg !580

; <label>:10:                                     ; preds = %4
  %11 = bitcast i8** %5 to i8*, !dbg !581
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #5, !dbg !581
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !582
  %13 = load i8*, i8** %12, align 8, !dbg !582, !tbaa !166
  %14 = tail call i8* @ziplistIndex(i8* %13, i32 0) #6, !dbg !584
  %15 = icmp eq i8* %14, null, !dbg !586
  %16 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !588
  br i1 %15, label %81, label %17, !dbg !592

; <label>:17:                                     ; preds = %10
  %18 = load i8, i8* %16, align 1, !dbg !596, !tbaa !182
  %19 = trunc i8 %18 to i3, !dbg !598
  switch i3 %19, label %41 [
    i3 0, label %20
    i3 1, label %23
    i3 2, label %27
    i3 3, label %32
    i3 -4, label %37
  ], !dbg !598

; <label>:20:                                     ; preds = %17
  %21 = lshr i8 %18, 3, !dbg !599
  %22 = zext i8 %21 to i64, !dbg !599
  br label %41, !dbg !600

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !601
  %25 = load i8, i8* %24, align 1, !dbg !602, !tbaa !182
  %26 = zext i8 %25 to i64, !dbg !601
  br label %41, !dbg !603

; <label>:27:                                     ; preds = %17
  %28 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !604
  %29 = bitcast i8* %28 to i16*, !dbg !605
  %30 = load i16, i16* %29, align 1, !dbg !605, !tbaa !193
  %31 = zext i16 %30 to i64, !dbg !604
  br label %41, !dbg !606

; <label>:32:                                     ; preds = %17
  %33 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !607
  %34 = bitcast i8* %33 to i32*, !dbg !608
  %35 = load i32, i32* %34, align 1, !dbg !608, !tbaa !198
  %36 = zext i32 %35 to i64, !dbg !607
  br label %41, !dbg !609

; <label>:37:                                     ; preds = %17
  %38 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !610
  %39 = bitcast i8* %38 to i64*, !dbg !611
  %40 = load i64, i64* %39, align 1, !dbg !611, !tbaa !202
  br label %41, !dbg !612

; <label>:41:                                     ; preds = %17, %20, %23, %27, %32, %37
  %42 = phi i64 [ %40, %37 ], [ %36, %32 ], [ %31, %27 ], [ %26, %23 ], [ %22, %20 ], [ 0, %17 ], !dbg !613
  %43 = trunc i64 %42 to i32, !dbg !614
  %44 = tail call i8* @ziplistFind(i8* nonnull %14, i8* nonnull %1, i32 %43, i32 1) #6, !dbg !615
  %45 = icmp eq i8* %44, null, !dbg !616
  br i1 %45, label %81, label %46, !dbg !618

; <label>:46:                                     ; preds = %41
  %47 = tail call i8* @ziplistNext(i8* %13, i8* nonnull %44) #6, !dbg !619
  store i8* %47, i8** %5, align 8, !dbg !622, !tbaa !161
  %48 = icmp eq i8* %47, null, !dbg !623
  br i1 %48, label %49, label %50, !dbg !623

; <label>:49:                                     ; preds = %46
  tail call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 215) #6, !dbg !623
  tail call void @_exit(i32 1) #7, !dbg !623
  unreachable, !dbg !623

; <label>:50:                                     ; preds = %46
  %51 = call i8* @ziplistDelete(i8* %13, i8** nonnull %5) #6, !dbg !624
  %52 = load i8*, i8** %5, align 8, !dbg !625, !tbaa !161
  %53 = getelementptr inbounds i8, i8* %2, i64 -1, !dbg !628
  %54 = load i8, i8* %53, align 1, !dbg !628, !tbaa !182
  %55 = trunc i8 %54 to i3, !dbg !630
  switch i3 %55, label %77 [
    i3 0, label %56
    i3 1, label %59
    i3 2, label %63
    i3 3, label %68
    i3 -4, label %73
  ], !dbg !630

; <label>:56:                                     ; preds = %50
  %57 = lshr i8 %54, 3, !dbg !631
  %58 = zext i8 %57 to i64, !dbg !631
  br label %77, !dbg !632

; <label>:59:                                     ; preds = %50
  %60 = getelementptr inbounds i8, i8* %2, i64 -3, !dbg !633
  %61 = load i8, i8* %60, align 1, !dbg !634, !tbaa !182
  %62 = zext i8 %61 to i64, !dbg !633
  br label %77, !dbg !635

; <label>:63:                                     ; preds = %50
  %64 = getelementptr inbounds i8, i8* %2, i64 -5, !dbg !636
  %65 = bitcast i8* %64 to i16*, !dbg !637
  %66 = load i16, i16* %65, align 1, !dbg !637, !tbaa !193
  %67 = zext i16 %66 to i64, !dbg !636
  br label %77, !dbg !638

; <label>:68:                                     ; preds = %50
  %69 = getelementptr inbounds i8, i8* %2, i64 -9, !dbg !639
  %70 = bitcast i8* %69 to i32*, !dbg !640
  %71 = load i32, i32* %70, align 1, !dbg !640, !tbaa !198
  %72 = zext i32 %71 to i64, !dbg !639
  br label %77, !dbg !641

; <label>:73:                                     ; preds = %50
  %74 = getelementptr inbounds i8, i8* %2, i64 -17, !dbg !642
  %75 = bitcast i8* %74 to i64*, !dbg !643
  %76 = load i64, i64* %75, align 1, !dbg !643, !tbaa !202
  br label %77, !dbg !644

; <label>:77:                                     ; preds = %73, %68, %63, %59, %56, %50
  %78 = phi i64 [ %76, %73 ], [ %72, %68 ], [ %67, %63 ], [ %62, %59 ], [ %58, %56 ], [ 0, %50 ], !dbg !645
  %79 = trunc i64 %78 to i32, !dbg !646
  %80 = call i8* @ziplistInsert(i8* %51, i8* %52, i8* nonnull %2, i32 %79) #6, !dbg !647
  br label %137, !dbg !648

; <label>:81:                                     ; preds = %10, %41
  %82 = load i8, i8* %16, align 1, !dbg !588, !tbaa !182
  %83 = trunc i8 %82 to i3, !dbg !651
  switch i3 %83, label %105 [
    i3 0, label %84
    i3 1, label %87
    i3 2, label %91
    i3 3, label %96
    i3 -4, label %101
  ], !dbg !651

; <label>:84:                                     ; preds = %81
  %85 = lshr i8 %82, 3, !dbg !652
  %86 = zext i8 %85 to i64, !dbg !652
  br label %105, !dbg !653

; <label>:87:                                     ; preds = %81
  %88 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !654
  %89 = load i8, i8* %88, align 1, !dbg !655, !tbaa !182
  %90 = zext i8 %89 to i64, !dbg !654
  br label %105, !dbg !656

; <label>:91:                                     ; preds = %81
  %92 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !657
  %93 = bitcast i8* %92 to i16*, !dbg !658
  %94 = load i16, i16* %93, align 1, !dbg !658, !tbaa !193
  %95 = zext i16 %94 to i64, !dbg !657
  br label %105, !dbg !659

; <label>:96:                                     ; preds = %81
  %97 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !660
  %98 = bitcast i8* %97 to i32*, !dbg !661
  %99 = load i32, i32* %98, align 1, !dbg !661, !tbaa !198
  %100 = zext i32 %99 to i64, !dbg !660
  br label %105, !dbg !662

; <label>:101:                                    ; preds = %81
  %102 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !663
  %103 = bitcast i8* %102 to i64*, !dbg !664
  %104 = load i64, i64* %103, align 1, !dbg !664, !tbaa !202
  br label %105, !dbg !665

; <label>:105:                                    ; preds = %81, %84, %87, %91, %96, %101
  %106 = phi i64 [ %104, %101 ], [ %100, %96 ], [ %95, %91 ], [ %90, %87 ], [ %86, %84 ], [ 0, %81 ], !dbg !666
  %107 = trunc i64 %106 to i32, !dbg !667
  %108 = tail call i8* @ziplistPush(i8* %13, i8* nonnull %1, i32 %107, i32 1) #6, !dbg !668
  %109 = getelementptr inbounds i8, i8* %2, i64 -1, !dbg !671
  %110 = load i8, i8* %109, align 1, !dbg !671, !tbaa !182
  %111 = trunc i8 %110 to i3, !dbg !673
  switch i3 %111, label %133 [
    i3 0, label %112
    i3 1, label %115
    i3 2, label %119
    i3 3, label %124
    i3 -4, label %129
  ], !dbg !673

; <label>:112:                                    ; preds = %105
  %113 = lshr i8 %110, 3, !dbg !674
  %114 = zext i8 %113 to i64, !dbg !674
  br label %133, !dbg !675

; <label>:115:                                    ; preds = %105
  %116 = getelementptr inbounds i8, i8* %2, i64 -3, !dbg !676
  %117 = load i8, i8* %116, align 1, !dbg !677, !tbaa !182
  %118 = zext i8 %117 to i64, !dbg !676
  br label %133, !dbg !678

; <label>:119:                                    ; preds = %105
  %120 = getelementptr inbounds i8, i8* %2, i64 -5, !dbg !679
  %121 = bitcast i8* %120 to i16*, !dbg !680
  %122 = load i16, i16* %121, align 1, !dbg !680, !tbaa !193
  %123 = zext i16 %122 to i64, !dbg !679
  br label %133, !dbg !681

; <label>:124:                                    ; preds = %105
  %125 = getelementptr inbounds i8, i8* %2, i64 -9, !dbg !682
  %126 = bitcast i8* %125 to i32*, !dbg !683
  %127 = load i32, i32* %126, align 1, !dbg !683, !tbaa !198
  %128 = zext i32 %127 to i64, !dbg !682
  br label %133, !dbg !684

; <label>:129:                                    ; preds = %105
  %130 = getelementptr inbounds i8, i8* %2, i64 -17, !dbg !685
  %131 = bitcast i8* %130 to i64*, !dbg !686
  %132 = load i64, i64* %131, align 1, !dbg !686, !tbaa !202
  br label %133, !dbg !687

; <label>:133:                                    ; preds = %105, %112, %115, %119, %124, %129
  %134 = phi i64 [ %132, %129 ], [ %128, %124 ], [ %123, %119 ], [ %118, %115 ], [ %114, %112 ], [ 0, %105 ], !dbg !688
  %135 = trunc i64 %134 to i32, !dbg !689
  %136 = tail call i8* @ziplistPush(i8* %108, i8* nonnull %2, i32 %135, i32 1) #6, !dbg !690
  br label %137, !dbg !691

; <label>:137:                                    ; preds = %77, %133
  %138 = phi i32 [ 1, %77 ], [ 0, %133 ]
  %139 = phi i8* [ %80, %77 ], [ %136, %133 ], !dbg !692
  store i8* %139, i8** %12, align 8, !dbg !693, !tbaa !166
  %140 = load i32, i32* %6, align 8, !dbg !706
  %141 = lshr i32 %140, 4, !dbg !706
  %142 = trunc i32 %141 to i4, !dbg !708
  switch i4 %142, label %155 [
    i4 5, label %143
    i4 2, label %147
  ], !dbg !708

; <label>:143:                                    ; preds = %137
  %144 = call i32 @ziplistLen(i8* %139) #6, !dbg !709
  %145 = lshr i32 %144, 1, !dbg !711
  %146 = zext i32 %145 to i64, !dbg !709
  br label %156, !dbg !712

; <label>:147:                                    ; preds = %137
  %148 = getelementptr inbounds i8, i8* %139, i64 40, !dbg !713
  %149 = bitcast i8* %148 to i64*, !dbg !713
  %150 = load i64, i64* %149, align 8, !dbg !713, !tbaa !716
  %151 = getelementptr inbounds i8, i8* %139, i64 72, !dbg !713
  %152 = bitcast i8* %151 to i64*, !dbg !713
  %153 = load i64, i64* %152, align 8, !dbg !713, !tbaa !716
  %154 = add i64 %153, %150, !dbg !713
  br label %156

; <label>:155:                                    ; preds = %137
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 319, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !718
  call void @_exit(i32 1) #7, !dbg !718
  unreachable, !dbg !718

; <label>:156:                                    ; preds = %143, %147
  %157 = phi i64 [ %146, %143 ], [ %154, %147 ], !dbg !720
  %158 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 241), align 8, !dbg !721, !tbaa !722
  %159 = icmp ugt i64 %157, %158, !dbg !728
  br i1 %159, label %160, label %167, !dbg !729

; <label>:160:                                    ; preds = %156
  %161 = load i32, i32* %6, align 8, !dbg !733
  %162 = lshr i32 %161, 4, !dbg !733
  %163 = trunc i32 %162 to i4, !dbg !734
  switch i4 %163, label %165 [
    i4 5, label %166
    i4 2, label %164
  ], !dbg !734

; <label>:164:                                    ; preds = %160
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 504, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !735
  call void @_exit(i32 1) #7, !dbg !735
  unreachable, !dbg !735

; <label>:165:                                    ; preds = %160
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 506, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !736
  call void @_exit(i32 1) #7, !dbg !736
  unreachable, !dbg !736

; <label>:166:                                    ; preds = %160
  call void @hashTypeConvertZiplist(%struct.redisObject* nonnull %0, i32 2) #6, !dbg !737
  br label %167, !dbg !738

; <label>:167:                                    ; preds = %166, %156
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5, !dbg !739
  br label %202, !dbg !740

; <label>:168:                                    ; preds = %4
  %169 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !741
  %170 = bitcast i8** %169 to %struct.dict**, !dbg !741
  %171 = load %struct.dict*, %struct.dict** %170, align 8, !dbg !741, !tbaa !166
  %172 = tail call %struct.dictEntry* @dictFind(%struct.dict* %171, i8* %1) #6, !dbg !742
  %173 = icmp eq %struct.dictEntry* %172, null, !dbg !744
  br i1 %173, label %184, label %174, !dbg !745

; <label>:174:                                    ; preds = %168
  %175 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %172, i64 0, i32 1, i32 0, !dbg !746
  %176 = load i8*, i8** %175, align 8, !dbg !746, !tbaa !182
  tail call void @sdsfree(i8* %176) #6, !dbg !748
  %177 = and i32 %3, 2, !dbg !749
  %178 = icmp eq i32 %177, 0, !dbg !749
  br i1 %178, label %179, label %181, !dbg !751

; <label>:179:                                    ; preds = %174
  %180 = tail call i8* @sdsdup(i8* %2) #6, !dbg !752
  br label %181

; <label>:181:                                    ; preds = %174, %179
  %182 = phi i8* [ %180, %179 ], [ %2, %174 ]
  %183 = phi i8* [ %2, %179 ], [ null, %174 ]
  store i8* %182, i8** %175, align 8, !dbg !754, !tbaa !182
  br label %202, !dbg !756

; <label>:184:                                    ; preds = %168
  %185 = and i32 %3, 1, !dbg !757
  %186 = icmp eq i32 %185, 0, !dbg !757
  br i1 %186, label %187, label %189, !dbg !759

; <label>:187:                                    ; preds = %184
  %188 = tail call i8* @sdsdup(i8* %1) #6, !dbg !760
  br label %189

; <label>:189:                                    ; preds = %184, %187
  %190 = phi i8* [ %1, %187 ], [ null, %184 ]
  %191 = phi i8* [ %188, %187 ], [ %1, %184 ], !dbg !763
  %192 = and i32 %3, 2, !dbg !764
  %193 = icmp eq i32 %192, 0, !dbg !764
  br i1 %193, label %194, label %196, !dbg !766

; <label>:194:                                    ; preds = %189
  %195 = tail call i8* @sdsdup(i8* %2) #6, !dbg !767
  br label %196

; <label>:196:                                    ; preds = %189, %194
  %197 = phi i8* [ %2, %194 ], [ null, %189 ]
  %198 = phi i8* [ %195, %194 ], [ %2, %189 ], !dbg !770
  %199 = load %struct.dict*, %struct.dict** %170, align 8, !dbg !771, !tbaa !166
  %200 = tail call i32 @dictAdd(%struct.dict* %199, i8* %191, i8* %198) #6, !dbg !772
  br label %202

; <label>:201:                                    ; preds = %4
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 267, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !773
  tail call void @_exit(i32 1) #7, !dbg !773
  unreachable, !dbg !773

; <label>:202:                                    ; preds = %181, %196, %167
  %203 = phi i8* [ %2, %167 ], [ %183, %181 ], [ %197, %196 ]
  %204 = phi i32 [ %138, %167 ], [ 1, %181 ], [ 0, %196 ], !dbg !775
  %205 = phi i8* [ %1, %167 ], [ %1, %181 ], [ %190, %196 ]
  %206 = and i32 %3, 1, !dbg !776
  %207 = icmp ne i32 %206, 0, !dbg !776
  %208 = icmp ne i8* %205, null, !dbg !778
  %209 = and i1 %207, %208, !dbg !779
  br i1 %209, label %210, label %211, !dbg !779

; <label>:210:                                    ; preds = %202
  call void @sdsfree(i8* nonnull %205) #6, !dbg !780
  br label %211, !dbg !780

; <label>:211:                                    ; preds = %210, %202
  %212 = and i32 %3, 2, !dbg !781
  %213 = icmp ne i32 %212, 0, !dbg !781
  %214 = icmp ne i8* %203, null, !dbg !783
  %215 = and i1 %213, %214, !dbg !784
  br i1 %215, label %216, label %217, !dbg !784

; <label>:216:                                    ; preds = %211
  call void @sdsfree(i8* nonnull %203) #6, !dbg !785
  br label %217, !dbg !785

; <label>:217:                                    ; preds = %216, %211
  ret i32 %204, !dbg !786
}

; Function Attrs: noredzone
declare dso_local i8* @ziplistDelete(i8*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @ziplistInsert(i8*, i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @ziplistPush(i8*, i8*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @hashTypeLength(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !695 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !789
  %3 = load i32, i32* %2, align 8, !dbg !789
  %4 = lshr i32 %3, 4, !dbg !789
  %5 = trunc i32 %4 to i4, !dbg !790
  switch i4 %5, label %21 [
    i4 5, label %6
    i4 2, label %12
  ], !dbg !790

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !791
  %8 = load i8*, i8** %7, align 8, !dbg !791, !tbaa !166
  %9 = tail call i32 @ziplistLen(i8* %8) #6, !dbg !792
  %10 = lshr i32 %9, 1, !dbg !793
  %11 = zext i32 %10 to i64, !dbg !792
  br label %22, !dbg !794

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !795
  %14 = bitcast i8** %13 to %struct.dict**, !dbg !795
  %15 = load %struct.dict*, %struct.dict** %14, align 8, !dbg !795, !tbaa !166
  %16 = getelementptr inbounds %struct.dict, %struct.dict* %15, i64 0, i32 2, i64 0, i32 3, !dbg !795
  %17 = load i64, i64* %16, align 8, !dbg !795, !tbaa !716
  %18 = getelementptr inbounds %struct.dict, %struct.dict* %15, i64 0, i32 2, i64 1, i32 3, !dbg !795
  %19 = load i64, i64* %18, align 8, !dbg !795, !tbaa !716
  %20 = add i64 %19, %17, !dbg !795
  br label %22

; <label>:21:                                     ; preds = %1
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 319, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !796
  tail call void @_exit(i32 1) #7, !dbg !796
  unreachable, !dbg !796

; <label>:22:                                     ; preds = %12, %6
  %23 = phi i64 [ %11, %6 ], [ %20, %12 ], !dbg !797
  ret i64 %23, !dbg !798
}

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsdup(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @dictAdd(%struct.dict*, i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @hashTypeDelete(%struct.redisObject* nocapture, i8*) local_unnamed_addr #0 !dbg !799 {
  %3 = alloca i8*, align 8
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !811
  %5 = load i32, i32* %4, align 8, !dbg !811
  %6 = lshr i32 %5, 4, !dbg !811
  %7 = trunc i32 %6 to i4, !dbg !812
  switch i4 %7, label %62 [
    i4 5, label %8
    i4 2, label %49
  ], !dbg !812

; <label>:8:                                      ; preds = %2
  %9 = bitcast i8** %3 to i8*, !dbg !813
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #5, !dbg !813
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !814
  %11 = load i8*, i8** %10, align 8, !dbg !814, !tbaa !166
  %12 = tail call i8* @ziplistIndex(i8* %11, i32 0) #6, !dbg !816
  store i8* %12, i8** %3, align 8, !dbg !818, !tbaa !161
  %13 = icmp eq i8* %12, null, !dbg !819
  br i1 %13, label %47, label %14, !dbg !821

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !825
  %16 = load i8, i8* %15, align 1, !dbg !825, !tbaa !182
  %17 = trunc i8 %16 to i3, !dbg !827
  switch i3 %17, label %39 [
    i3 0, label %18
    i3 1, label %21
    i3 2, label %25
    i3 3, label %30
    i3 -4, label %35
  ], !dbg !827

; <label>:18:                                     ; preds = %14
  %19 = lshr i8 %16, 3, !dbg !828
  %20 = zext i8 %19 to i64, !dbg !828
  br label %39, !dbg !829

; <label>:21:                                     ; preds = %14
  %22 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !830
  %23 = load i8, i8* %22, align 1, !dbg !831, !tbaa !182
  %24 = zext i8 %23 to i64, !dbg !830
  br label %39, !dbg !832

; <label>:25:                                     ; preds = %14
  %26 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !833
  %27 = bitcast i8* %26 to i16*, !dbg !834
  %28 = load i16, i16* %27, align 1, !dbg !834, !tbaa !193
  %29 = zext i16 %28 to i64, !dbg !833
  br label %39, !dbg !835

; <label>:30:                                     ; preds = %14
  %31 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !836
  %32 = bitcast i8* %31 to i32*, !dbg !837
  %33 = load i32, i32* %32, align 1, !dbg !837, !tbaa !198
  %34 = zext i32 %33 to i64, !dbg !836
  br label %39, !dbg !838

; <label>:35:                                     ; preds = %14
  %36 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !839
  %37 = bitcast i8* %36 to i64*, !dbg !840
  %38 = load i64, i64* %37, align 1, !dbg !840, !tbaa !202
  br label %39, !dbg !841

; <label>:39:                                     ; preds = %14, %18, %21, %25, %30, %35
  %40 = phi i64 [ %38, %35 ], [ %34, %30 ], [ %29, %25 ], [ %24, %21 ], [ %20, %18 ], [ 0, %14 ], !dbg !842
  %41 = trunc i64 %40 to i32, !dbg !843
  %42 = tail call i8* @ziplistFind(i8* nonnull %12, i8* nonnull %1, i32 %41, i32 1) #6, !dbg !844
  store i8* %42, i8** %3, align 8, !dbg !845, !tbaa !161
  %43 = icmp eq i8* %42, null, !dbg !846
  br i1 %43, label %47, label %44, !dbg !848

; <label>:44:                                     ; preds = %39
  %45 = call i8* @ziplistDelete(i8* %11, i8** nonnull %3) #6, !dbg !849
  %46 = call i8* @ziplistDelete(i8* %45, i8** nonnull %3) #6, !dbg !851
  store i8* %46, i8** %10, align 8, !dbg !852, !tbaa !166
  br label %47, !dbg !853

; <label>:47:                                     ; preds = %39, %8, %44
  %48 = phi i32 [ 1, %44 ], [ 0, %39 ], [ 0, %8 ], !dbg !854
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #5, !dbg !855
  br label %63, !dbg !856

; <label>:49:                                     ; preds = %2
  %50 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !857
  %51 = bitcast i8** %50 to %struct.dict**, !dbg !857
  %52 = load %struct.dict*, %struct.dict** %51, align 8, !dbg !857, !tbaa !166
  %53 = tail call i32 @dictDelete(%struct.dict* %52, i8* %1) #6, !dbg !861
  %54 = icmp eq i32 %53, 0, !dbg !862
  br i1 %54, label %55, label %63, !dbg !863

; <label>:55:                                     ; preds = %49
  %56 = load %struct.dict*, %struct.dict** %51, align 8, !dbg !864, !tbaa !166
  %57 = tail call i32 @htNeedsResize(%struct.dict* %56) #6, !dbg !867
  %58 = icmp eq i32 %57, 0, !dbg !867
  br i1 %58, label %63, label %59, !dbg !868

; <label>:59:                                     ; preds = %55
  %60 = load %struct.dict*, %struct.dict** %51, align 8, !dbg !869, !tbaa !166
  %61 = tail call i32 @dictResize(%struct.dict* %60) #6, !dbg !870
  br label %63, !dbg !870

; <label>:62:                                     ; preds = %2
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 305, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !871
  tail call void @_exit(i32 1) #7, !dbg !871
  unreachable, !dbg !871

; <label>:63:                                     ; preds = %55, %59, %49, %47
  %64 = phi i32 [ %48, %47 ], [ 1, %59 ], [ 1, %55 ], [ 0, %49 ], !dbg !854
  ret i32 %64, !dbg !873
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
define dso_local %struct.hashTypeIterator* @hashTypeInitIterator(%struct.redisObject*) local_unnamed_addr #0 !dbg !874 {
  %2 = tail call i8* @zmalloc(i64 48) #6, !dbg !902
  %3 = bitcast i8* %2 to %struct.hashTypeIterator*, !dbg !902
  %4 = bitcast i8* %2 to %struct.redisObject**, !dbg !904
  store %struct.redisObject* %0, %struct.redisObject** %4, align 8, !dbg !905, !tbaa !906
  %5 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !908
  %6 = load i32, i32* %5, align 8, !dbg !908
  %7 = lshr i32 %6, 4, !dbg !908
  %8 = and i32 %7, 15, !dbg !908
  %9 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !909
  %10 = bitcast i8* %9 to i32*, !dbg !909
  store i32 %8, i32* %10, align 8, !dbg !910, !tbaa !911
  %11 = trunc i32 %7 to i4, !dbg !912
  switch i4 %11, label %22 [
    i4 5, label %12
    i4 2, label %15
  ], !dbg !912

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !913
  %14 = bitcast i8* %13 to <2 x i8*>*, !dbg !916
  store <2 x i8*> zeroinitializer, <2 x i8*>* %14, align 8, !dbg !916, !tbaa !161
  br label %23, !dbg !917

; <label>:15:                                     ; preds = %1
  %16 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !918
  %17 = bitcast i8** %16 to %struct.dict**, !dbg !918
  %18 = load %struct.dict*, %struct.dict** %17, align 8, !dbg !918, !tbaa !166
  %19 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %18) #6, !dbg !921
  %20 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !922
  %21 = bitcast i8* %20 to %struct.dictIterator**, !dbg !922
  store %struct.dictIterator* %19, %struct.dictIterator** %21, align 8, !dbg !923, !tbaa !924
  br label %23

; <label>:22:                                     ; preds = %1
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 335, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !925
  tail call void @_exit(i32 1) #7, !dbg !925
  unreachable, !dbg !925

; <label>:23:                                     ; preds = %15, %12
  ret %struct.hashTypeIterator* %3, !dbg !927
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.dictIterator* @dictGetIterator(%struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hashTypeReleaseIterator(%struct.hashTypeIterator*) local_unnamed_addr #0 !dbg !928 {
  %2 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 1, !dbg !934
  %3 = load i32, i32* %2, align 8, !dbg !934, !tbaa !911
  %4 = icmp eq i32 %3, 2, !dbg !936
  br i1 %4, label %5, label %8, !dbg !937

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 4, !dbg !938
  %7 = load %struct.dictIterator*, %struct.dictIterator** %6, align 8, !dbg !938, !tbaa !924
  tail call void @dictReleaseIterator(%struct.dictIterator* %7) #6, !dbg !939
  br label %8, !dbg !939

; <label>:8:                                      ; preds = %5, %1
  %9 = bitcast %struct.hashTypeIterator* %0 to i8*, !dbg !940
  tail call void @zfree(i8* %9) #6, !dbg !941
  ret void, !dbg !942
}

; Function Attrs: noredzone
declare dso_local void @dictReleaseIterator(%struct.dictIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @hashTypeNext(%struct.hashTypeIterator* nocapture) local_unnamed_addr #0 !dbg !943 {
  %2 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 1, !dbg !954
  %3 = load i32, i32* %2, align 8, !dbg !954, !tbaa !911
  switch i32 %3, label %37 [
    i32 5, label %4
    i32 2, label %31
  ], !dbg !955

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 0, !dbg !956
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !956, !tbaa !906
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %6, i64 0, i32 2, !dbg !957
  %8 = load i8*, i8** %7, align 8, !dbg !957, !tbaa !166
  %9 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 2, !dbg !959
  %10 = load i8*, i8** %9, align 8, !dbg !959, !tbaa !960
  %11 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 3, !dbg !962
  %12 = load i8*, i8** %11, align 8, !dbg !962, !tbaa !963
  %13 = icmp eq i8* %10, null, !dbg !965
  %14 = icmp eq i8* %12, null, !dbg !967
  br i1 %13, label %15, label %19, !dbg !969

; <label>:15:                                     ; preds = %4
  br i1 %14, label %17, label %16, !dbg !970

; <label>:16:                                     ; preds = %15
  tail call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 359) #6, !dbg !970
  tail call void @_exit(i32 1) #7, !dbg !970
  unreachable, !dbg !970

; <label>:17:                                     ; preds = %15
  %18 = tail call i8* @ziplistIndex(i8* %8, i32 0) #6, !dbg !972
  br label %23, !dbg !973

; <label>:19:                                     ; preds = %4
  br i1 %14, label %20, label %21, !dbg !974

; <label>:20:                                     ; preds = %19
  tail call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 363) #6, !dbg !974
  tail call void @_exit(i32 1) #7, !dbg !974
  unreachable, !dbg !974

; <label>:21:                                     ; preds = %19
  %22 = tail call i8* @ziplistNext(i8* %8, i8* nonnull %12) #6, !dbg !975
  br label %23

; <label>:23:                                     ; preds = %21, %17
  %24 = phi i8* [ %18, %17 ], [ %22, %21 ], !dbg !967
  %25 = icmp eq i8* %24, null, !dbg !976
  br i1 %25, label %39, label %26, !dbg !978

; <label>:26:                                     ; preds = %23
  %27 = tail call i8* @ziplistNext(i8* %8, i8* nonnull %24) #6, !dbg !979
  %28 = icmp eq i8* %27, null, !dbg !980
  br i1 %28, label %29, label %30, !dbg !980

; <label>:29:                                     ; preds = %26
  tail call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 370) #6, !dbg !980
  tail call void @_exit(i32 1) #7, !dbg !980
  unreachable, !dbg !980

; <label>:30:                                     ; preds = %26
  store i8* %24, i8** %9, align 8, !dbg !981, !tbaa !960
  store i8* %27, i8** %11, align 8, !dbg !982, !tbaa !963
  br label %38

; <label>:31:                                     ; preds = %1
  %32 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 4, !dbg !983
  %33 = load %struct.dictIterator*, %struct.dictIterator** %32, align 8, !dbg !983, !tbaa !924
  %34 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %33) #6, !dbg !987
  %35 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 5, !dbg !988
  store %struct.dictEntry* %34, %struct.dictEntry** %35, align 8, !dbg !989, !tbaa !990
  %36 = icmp eq %struct.dictEntry* %34, null, !dbg !991
  br i1 %36, label %39, label %38, !dbg !992

; <label>:37:                                     ; preds = %1
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 378, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !993
  tail call void @_exit(i32 1) #7, !dbg !993
  unreachable, !dbg !993

; <label>:38:                                     ; preds = %30, %31
  br label %39, !dbg !995

; <label>:39:                                     ; preds = %31, %23, %38
  %40 = phi i32 [ 0, %38 ], [ -1, %23 ], [ -1, %31 ], !dbg !996
  ret i32 %40, !dbg !997
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictNext(%struct.dictIterator*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hashTypeCurrentFromZiplist(%struct.hashTypeIterator* nocapture readonly, i32, i8**, i32*, i64*) local_unnamed_addr #0 !dbg !998 {
  %6 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 1, !dbg !1013
  %7 = load i32, i32* %6, align 8, !dbg !1013, !tbaa !911
  %8 = icmp eq i32 %7, 5, !dbg !1013
  br i1 %8, label %10, label %9, !dbg !1013

; <label>:9:                                      ; preds = %5
  tail call void @_serverAssert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 392) #6, !dbg !1013
  tail call void @_exit(i32 1) #7, !dbg !1013
  unreachable, !dbg !1013

; <label>:10:                                     ; preds = %5
  %11 = and i32 %1, 1, !dbg !1014
  %12 = icmp eq i32 %11, 0, !dbg !1014
  br i1 %12, label %19, label %13, !dbg !1016

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 2, !dbg !1017
  %15 = load i8*, i8** %14, align 8, !dbg !1017, !tbaa !960
  %16 = tail call i32 @ziplistGet(i8* %15, i8** %2, i32* %3, i64* %4) #6, !dbg !1019
  %17 = icmp eq i32 %16, 0, !dbg !1021
  br i1 %17, label %18, label %25, !dbg !1021

; <label>:18:                                     ; preds = %13
  tail call void @_serverAssert(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 396) #6, !dbg !1021
  tail call void @_exit(i32 1) #7, !dbg !1021
  unreachable, !dbg !1021

; <label>:19:                                     ; preds = %10
  %20 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 3, !dbg !1022
  %21 = load i8*, i8** %20, align 8, !dbg !1022, !tbaa !963
  %22 = tail call i32 @ziplistGet(i8* %21, i8** %2, i32* %3, i64* %4) #6, !dbg !1024
  %23 = icmp eq i32 %22, 0, !dbg !1025
  br i1 %23, label %24, label %25, !dbg !1025

; <label>:24:                                     ; preds = %19
  tail call void @_serverAssert(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 399) #6, !dbg !1025
  tail call void @_exit(i32 1) #7, !dbg !1025
  unreachable, !dbg !1025

; <label>:25:                                     ; preds = %13, %19
  ret void, !dbg !1026
}

; Function Attrs: noredzone nounwind
define dso_local i8* @hashTypeCurrentFromHashTable(%struct.hashTypeIterator* nocapture readonly, i32) local_unnamed_addr #0 !dbg !1027 {
  %3 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 1, !dbg !1035
  %4 = load i32, i32* %3, align 8, !dbg !1035, !tbaa !911
  %5 = icmp eq i32 %4, 2, !dbg !1035
  br i1 %5, label %7, label %6, !dbg !1035

; <label>:6:                                      ; preds = %2
  tail call void @_serverAssert(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 407) #6, !dbg !1035
  tail call void @_exit(i32 1) #7, !dbg !1035
  unreachable, !dbg !1035

; <label>:7:                                      ; preds = %2
  %8 = and i32 %1, 1, !dbg !1036
  %9 = icmp eq i32 %8, 0, !dbg !1036
  %10 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 5, !dbg !1038
  %11 = load %struct.dictEntry*, %struct.dictEntry** %10, align 8, !dbg !1038, !tbaa !990
  %12 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %11, i64 0, i32 0, !dbg !1040
  %13 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %11, i64 0, i32 1, i32 0, !dbg !1042
  %14 = select i1 %9, i8** %13, i8** %12, !dbg !1043
  %15 = load i8*, i8** %14, align 8, !dbg !1038, !tbaa !182
  ret i8* %15, !dbg !1044
}

; Function Attrs: noredzone nounwind
define dso_local void @hashTypeCurrentObject(%struct.hashTypeIterator* nocapture readonly, i32, i8**, i32*, i64*) local_unnamed_addr #0 !dbg !1045 {
  %6 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 1, !dbg !1061
  %7 = load i32, i32* %6, align 8, !dbg !1061, !tbaa !911
  switch i32 %7, label %45 [
    i32 5, label %8
    i32 2, label %9
  ], !dbg !1062

; <label>:8:                                      ; preds = %5
  store i8* null, i8** %2, align 8, !dbg !1063, !tbaa !161
  tail call void @hashTypeCurrentFromZiplist(%struct.hashTypeIterator* nonnull %0, i32 %1, i8** %2, i32* %3, i64* %4) #8, !dbg !1065
  br label %46, !dbg !1066

; <label>:9:                                      ; preds = %5
  %10 = and i32 %1, 1, !dbg !1070
  %11 = icmp eq i32 %10, 0, !dbg !1070
  %12 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 5, !dbg !1071
  %13 = load %struct.dictEntry*, %struct.dictEntry** %12, align 8, !dbg !1071, !tbaa !990
  %14 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %13, i64 0, i32 0, !dbg !1072
  %15 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %13, i64 0, i32 1, i32 0, !dbg !1073
  %16 = select i1 %11, i8** %15, i8** %14, !dbg !1074
  %17 = load i8*, i8** %16, align 8, !dbg !1071, !tbaa !182
  store i8* %17, i8** %2, align 8, !dbg !1076, !tbaa !161
  %18 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !1079
  %19 = load i8, i8* %18, align 1, !dbg !1079, !tbaa !182
  %20 = trunc i8 %19 to i3, !dbg !1081
  switch i3 %20, label %42 [
    i3 0, label %21
    i3 1, label %24
    i3 2, label %28
    i3 3, label %33
    i3 -4, label %38
  ], !dbg !1081

; <label>:21:                                     ; preds = %9
  %22 = lshr i8 %19, 3, !dbg !1082
  %23 = zext i8 %22 to i64, !dbg !1082
  br label %42, !dbg !1083

; <label>:24:                                     ; preds = %9
  %25 = getelementptr inbounds i8, i8* %17, i64 -3, !dbg !1084
  %26 = load i8, i8* %25, align 1, !dbg !1085, !tbaa !182
  %27 = zext i8 %26 to i64, !dbg !1084
  br label %42, !dbg !1086

; <label>:28:                                     ; preds = %9
  %29 = getelementptr inbounds i8, i8* %17, i64 -5, !dbg !1087
  %30 = bitcast i8* %29 to i16*, !dbg !1088
  %31 = load i16, i16* %30, align 1, !dbg !1088, !tbaa !193
  %32 = zext i16 %31 to i64, !dbg !1087
  br label %42, !dbg !1089

; <label>:33:                                     ; preds = %9
  %34 = getelementptr inbounds i8, i8* %17, i64 -9, !dbg !1090
  %35 = bitcast i8* %34 to i32*, !dbg !1091
  %36 = load i32, i32* %35, align 1, !dbg !1091, !tbaa !198
  %37 = zext i32 %36 to i64, !dbg !1090
  br label %42, !dbg !1092

; <label>:38:                                     ; preds = %9
  %39 = getelementptr inbounds i8, i8* %17, i64 -17, !dbg !1093
  %40 = bitcast i8* %39 to i64*, !dbg !1094
  %41 = load i64, i64* %40, align 1, !dbg !1094, !tbaa !202
  br label %42, !dbg !1095

; <label>:42:                                     ; preds = %9, %21, %24, %28, %33, %38
  %43 = phi i64 [ %41, %38 ], [ %37, %33 ], [ %32, %28 ], [ %27, %24 ], [ %23, %21 ], [ 0, %9 ], !dbg !1096
  %44 = trunc i64 %43 to i32, !dbg !1097
  store i32 %44, i32* %3, align 4, !dbg !1098, !tbaa !198
  br label %46

; <label>:45:                                     ; preds = %5
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 435, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1099
  tail call void @_exit(i32 1) #7, !dbg !1099
  unreachable, !dbg !1099

; <label>:46:                                     ; preds = %42, %8
  ret void, !dbg !1101
}

; Function Attrs: noredzone nounwind
define dso_local i8* @hashTypeCurrentObjectNewSds(%struct.hashTypeIterator* nocapture readonly, i32) local_unnamed_addr #0 !dbg !1102 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = bitcast i8** %3 to i8*, !dbg !1111
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1111
  %7 = bitcast i32* %4 to i8*, !dbg !1112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #5, !dbg !1112
  %8 = bitcast i64* %5 to i8*, !dbg !1113
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !1113
  call void @hashTypeCurrentObject(%struct.hashTypeIterator* %0, i32 %1, i8** nonnull %3, i32* nonnull %4, i64* nonnull %5) #8, !dbg !1117
  %9 = load i8*, i8** %3, align 8, !dbg !1118, !tbaa !161
  %10 = icmp eq i8* %9, null, !dbg !1118
  br i1 %10, label %15, label %11, !dbg !1120

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %4, align 4, !dbg !1121, !tbaa !198
  %13 = zext i32 %12 to i64, !dbg !1121
  %14 = call i8* @sdsnewlen(i8* nonnull %9, i64 %13) #6, !dbg !1122
  br label %18, !dbg !1123

; <label>:15:                                     ; preds = %2
  %16 = load i64, i64* %5, align 8, !dbg !1124, !tbaa !423
  %17 = call i8* @sdsfromlonglong(i64 %16) #6, !dbg !1125
  br label %18, !dbg !1126

; <label>:18:                                     ; preds = %15, %11
  %19 = phi i8* [ %14, %11 ], [ %17, %15 ], !dbg !1127
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !1128
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #5, !dbg !1128
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1128
  ret i8* %19, !dbg !1128
}

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsfromlonglong(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @hashTypeLookupWriteOrCreate(%struct.client*, %struct.redisObject*) local_unnamed_addr #0 !dbg !1129 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1301
  %4 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !1301, !tbaa !1302
  %5 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %4, %struct.redisObject* %1) #6, !dbg !1306
  %6 = icmp eq %struct.redisObject* %5, null, !dbg !1308
  br i1 %6, label %7, label %10, !dbg !1310

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.redisObject* @createHashObject() #6, !dbg !1311
  %9 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !1313, !tbaa !1302
  tail call void @dbAdd(%struct.redisDb* %9, %struct.redisObject* %1, %struct.redisObject* %8) #6, !dbg !1314
  br label %17, !dbg !1315

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %5, i64 0, i32 0, !dbg !1316
  %12 = load i32, i32* %11, align 8, !dbg !1316
  %13 = and i32 %12, 15, !dbg !1316
  %14 = icmp eq i32 %13, 4, !dbg !1319
  br i1 %14, label %17, label %15, !dbg !1320

; <label>:15:                                     ; preds = %10
  %16 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !1321, !tbaa !1323
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %16) #6, !dbg !1325
  br label %17, !dbg !1326

; <label>:17:                                     ; preds = %7, %10, %15
  %18 = phi %struct.redisObject* [ null, %15 ], [ %8, %7 ], [ %5, %10 ], !dbg !1327
  ret %struct.redisObject* %18, !dbg !1328
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
define dso_local void @hashTypeConvertZiplist(%struct.redisObject*, i32) local_unnamed_addr #0 !dbg !1329 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1344
  %10 = load i32, i32* %9, align 8, !dbg !1344
  %11 = and i32 %10, 240, !dbg !1344
  %12 = icmp eq i32 %11, 80, !dbg !1344
  br i1 %12, label %14, label %13, !dbg !1344

; <label>:13:                                     ; preds = %2
  tail call void @_serverAssert(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 466) #6, !dbg !1344
  tail call void @_exit(i32 1) #7, !dbg !1344
  unreachable, !dbg !1344

; <label>:14:                                     ; preds = %2
  switch i32 %1, label %90 [
    i32 5, label %91
    i32 2, label %15
  ], !dbg !1345

; <label>:15:                                     ; preds = %14
  %16 = tail call i8* @zmalloc(i64 48) #6, !dbg !1348
  %17 = bitcast i8* %16 to %struct.hashTypeIterator*, !dbg !1348
  %18 = bitcast i8* %16 to %struct.redisObject**, !dbg !1350
  store %struct.redisObject* %0, %struct.redisObject** %18, align 8, !dbg !1351, !tbaa !906
  %19 = load i32, i32* %9, align 8, !dbg !1352
  %20 = lshr i32 %19, 4, !dbg !1352
  %21 = and i32 %20, 15, !dbg !1352
  %22 = getelementptr inbounds i8, i8* %16, i64 8, !dbg !1353
  %23 = bitcast i8* %22 to i32*, !dbg !1353
  store i32 %21, i32* %23, align 8, !dbg !1354, !tbaa !911
  %24 = trunc i32 %20 to i4, !dbg !1355
  switch i4 %24, label %35 [
    i4 5, label %25
    i4 2, label %28
  ], !dbg !1355

; <label>:25:                                     ; preds = %15
  %26 = getelementptr inbounds i8, i8* %16, i64 16, !dbg !1356
  %27 = bitcast i8* %26 to <2 x i8*>*, !dbg !1357
  store <2 x i8*> zeroinitializer, <2 x i8*>* %27, align 8, !dbg !1357, !tbaa !161
  br label %36, !dbg !1358

; <label>:28:                                     ; preds = %15
  %29 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1359
  %30 = bitcast i8** %29 to %struct.dict**, !dbg !1359
  %31 = load %struct.dict*, %struct.dict** %30, align 8, !dbg !1359, !tbaa !166
  %32 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %31) #6, !dbg !1360
  %33 = getelementptr inbounds i8, i8* %16, i64 32, !dbg !1361
  %34 = bitcast i8* %33 to %struct.dictIterator**, !dbg !1361
  store %struct.dictIterator* %32, %struct.dictIterator** %34, align 8, !dbg !1362, !tbaa !924
  br label %36

; <label>:35:                                     ; preds = %15
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 335, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1363
  tail call void @_exit(i32 1) #7, !dbg !1363
  unreachable, !dbg !1363

; <label>:36:                                     ; preds = %25, %28
  %37 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @hashDictType, i8* null) #6, !dbg !1365
  %38 = bitcast i8** %6 to i8*
  %39 = bitcast i32* %7 to i8*
  %40 = bitcast i64* %8 to i8*
  %41 = bitcast i8** %3 to i8*
  %42 = bitcast i32* %4 to i8*
  %43 = bitcast i64* %5 to i8*
  br label %44, !dbg !1367

; <label>:44:                                     ; preds = %68, %36
  %45 = call i32 @hashTypeNext(%struct.hashTypeIterator* %17) #8, !dbg !1368
  %46 = icmp eq i32 %45, -1, !dbg !1369
  br i1 %46, label %76, label %47, !dbg !1367

; <label>:47:                                     ; preds = %44
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %38) #5, !dbg !1373
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %39) #5, !dbg !1374
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40) #5, !dbg !1375
  call void @hashTypeCurrentObject(%struct.hashTypeIterator* %17, i32 1, i8** nonnull %6, i32* nonnull %7, i64* nonnull %8) #6, !dbg !1379
  %48 = load i8*, i8** %6, align 8, !dbg !1380, !tbaa !161
  %49 = icmp eq i8* %48, null, !dbg !1380
  br i1 %49, label %54, label %50, !dbg !1381

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %7, align 4, !dbg !1382, !tbaa !198
  %52 = zext i32 %51 to i64, !dbg !1382
  %53 = call i8* @sdsnewlen(i8* nonnull %48, i64 %52) #6, !dbg !1383
  br label %57, !dbg !1384

; <label>:54:                                     ; preds = %47
  %55 = load i64, i64* %8, align 8, !dbg !1385, !tbaa !423
  %56 = call i8* @sdsfromlonglong(i64 %55) #6, !dbg !1386
  br label %57, !dbg !1387

; <label>:57:                                     ; preds = %50, %54
  %58 = phi i8* [ %53, %50 ], [ %56, %54 ], !dbg !1388
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #5, !dbg !1389
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %39) #5, !dbg !1389
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %38) #5, !dbg !1389
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #5, !dbg !1394
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %42) #5, !dbg !1395
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %43) #5, !dbg !1396
  call void @hashTypeCurrentObject(%struct.hashTypeIterator* %17, i32 2, i8** nonnull %3, i32* nonnull %4, i64* nonnull %5) #6, !dbg !1400
  %59 = load i8*, i8** %3, align 8, !dbg !1401, !tbaa !161
  %60 = icmp eq i8* %59, null, !dbg !1401
  br i1 %60, label %65, label %61, !dbg !1402

; <label>:61:                                     ; preds = %57
  %62 = load i32, i32* %4, align 4, !dbg !1403, !tbaa !198
  %63 = zext i32 %62 to i64, !dbg !1403
  %64 = call i8* @sdsnewlen(i8* nonnull %59, i64 %63) #6, !dbg !1404
  br label %68, !dbg !1405

; <label>:65:                                     ; preds = %57
  %66 = load i64, i64* %5, align 8, !dbg !1406, !tbaa !423
  %67 = call i8* @sdsfromlonglong(i64 %66) #6, !dbg !1407
  br label %68, !dbg !1408

; <label>:68:                                     ; preds = %61, %65
  %69 = phi i8* [ %64, %61 ], [ %67, %65 ], !dbg !1409
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #5, !dbg !1410
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %42) #5, !dbg !1410
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #5, !dbg !1410
  %70 = call i32 @dictAdd(%struct.dict* %37, i8* %58, i8* %69) #6, !dbg !1412
  %71 = icmp eq i32 %70, 0, !dbg !1414
  br i1 %71, label %44, label %72, !dbg !1416, !llvm.loop !1417

; <label>:72:                                     ; preds = %68
  %73 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1419
  %74 = load i8*, i8** %73, align 8, !dbg !1419, !tbaa !166
  %75 = call i64 @ziplistBlobLen(i8* %74) #6, !dbg !1421
  call void @serverLogHexDump(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* %74, i64 %75) #6, !dbg !1422
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 488, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !1423
  call void @_exit(i32 1) #7, !dbg !1423
  unreachable, !dbg !1423

; <label>:76:                                     ; preds = %44
  %77 = load i32, i32* %23, align 8, !dbg !1426, !tbaa !911
  %78 = icmp eq i32 %77, 2, !dbg !1427
  br i1 %78, label %79, label %83, !dbg !1428

; <label>:79:                                     ; preds = %76
  %80 = getelementptr inbounds i8, i8* %16, i64 32, !dbg !1429
  %81 = bitcast i8* %80 to %struct.dictIterator**, !dbg !1429
  %82 = load %struct.dictIterator*, %struct.dictIterator** %81, align 8, !dbg !1429, !tbaa !924
  call void @dictReleaseIterator(%struct.dictIterator* %82) #6, !dbg !1430
  br label %83, !dbg !1430

; <label>:83:                                     ; preds = %76, %79
  call void @zfree(i8* nonnull %16) #6, !dbg !1431
  %84 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1432
  %85 = load i8*, i8** %84, align 8, !dbg !1432, !tbaa !166
  call void @zfree(i8* %85) #6, !dbg !1433
  %86 = load i32, i32* %9, align 8, !dbg !1434
  %87 = and i32 %86, -241, !dbg !1434
  %88 = or i32 %87, 32, !dbg !1434
  store i32 %88, i32* %9, align 8, !dbg !1434
  %89 = bitcast i8** %84 to %struct.dict**, !dbg !1435
  store %struct.dict* %37, %struct.dict** %89, align 8, !dbg !1435, !tbaa !166
  br label %91

; <label>:90:                                     ; preds = %14
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 496, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1436
  tail call void @_exit(i32 1) #7, !dbg !1436
  unreachable, !dbg !1436

; <label>:91:                                     ; preds = %14, %83
  ret void, !dbg !1438
}

; Function Attrs: noredzone
declare dso_local %struct.dict* @dictCreate(%struct.dictType*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @serverLogHexDump(i32, i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @ziplistBlobLen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hsetnxCommand(%struct.client*) local_unnamed_addr #0 !dbg !1439 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1444
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1444, !tbaa !1446
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !1447
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !1447, !tbaa !161
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1451
  %7 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1451, !tbaa !1302
  %8 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %7, %struct.redisObject* %5) #6, !dbg !1452
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !1454
  br i1 %9, label %17, label %10, !dbg !1455

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 0, !dbg !1456
  %12 = load i32, i32* %11, align 8, !dbg !1456
  %13 = and i32 %12, 15, !dbg !1456
  %14 = icmp eq i32 %13, 4, !dbg !1457
  br i1 %14, label %21, label %15, !dbg !1458

; <label>:15:                                     ; preds = %10
  %16 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !1459, !tbaa !1323
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %16) #6, !dbg !1460
  br label %57, !dbg !1462

; <label>:17:                                     ; preds = %1
  %18 = tail call %struct.redisObject* @createHashObject() #6, !dbg !1463
  %19 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1464, !tbaa !1302
  tail call void @dbAdd(%struct.redisDb* %19, %struct.redisObject* %5, %struct.redisObject* %18) #6, !dbg !1465
  %20 = icmp eq %struct.redisObject* %18, null, !dbg !1466
  br i1 %20, label %57, label %21, !dbg !1462

; <label>:21:                                     ; preds = %10, %17
  %22 = phi %struct.redisObject* [ %18, %17 ], [ %8, %10 ]
  %23 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1467, !tbaa !1446
  tail call void @hashTypeTryConversion(%struct.redisObject* nonnull %22, %struct.redisObject** %23, i32 2, i32 3) #8, !dbg !1468
  %24 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1469, !tbaa !1446
  %25 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %24, i64 2, !dbg !1471
  %26 = load %struct.redisObject*, %struct.redisObject** %25, align 8, !dbg !1471, !tbaa !161
  %27 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %26, i64 0, i32 2, !dbg !1472
  %28 = load i8*, i8** %27, align 8, !dbg !1472, !tbaa !166
  %29 = tail call i32 @hashTypeExists(%struct.redisObject* nonnull %22, i8* %28) #8, !dbg !1473
  %30 = icmp eq i32 %29, 0, !dbg !1473
  br i1 %30, label %33, label %31, !dbg !1474

; <label>:31:                                     ; preds = %21
  %32 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1475, !tbaa !1477
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %32) #6, !dbg !1478
  br label %57, !dbg !1479

; <label>:33:                                     ; preds = %21
  %34 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1480, !tbaa !1446
  %35 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %34, i64 2, !dbg !1482
  %36 = load %struct.redisObject*, %struct.redisObject** %35, align 8, !dbg !1482, !tbaa !161
  %37 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %36, i64 0, i32 2, !dbg !1483
  %38 = load i8*, i8** %37, align 8, !dbg !1483, !tbaa !166
  %39 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %34, i64 3, !dbg !1484
  %40 = load %struct.redisObject*, %struct.redisObject** %39, align 8, !dbg !1484, !tbaa !161
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %40, i64 0, i32 2, !dbg !1485
  %42 = load i8*, i8** %41, align 8, !dbg !1485, !tbaa !166
  %43 = tail call i32 @hashTypeSet(%struct.redisObject* nonnull %22, i8* %38, i8* %42, i32 0) #8, !dbg !1486
  %44 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !1487, !tbaa !1488
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %44) #6, !dbg !1489
  %45 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1490, !tbaa !1302
  %46 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1491, !tbaa !1446
  %47 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %46, i64 1, !dbg !1492
  %48 = load %struct.redisObject*, %struct.redisObject** %47, align 8, !dbg !1492, !tbaa !161
  tail call void @signalModifiedKey(%struct.redisDb* %45, %struct.redisObject* %48) #6, !dbg !1493
  %49 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1494, !tbaa !1446
  %50 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %49, i64 1, !dbg !1495
  %51 = load %struct.redisObject*, %struct.redisObject** %50, align 8, !dbg !1495, !tbaa !161
  %52 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1496, !tbaa !1302
  %53 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %52, i64 0, i32 5, !dbg !1497
  %54 = load i32, i32* %53, align 8, !dbg !1497, !tbaa !1498
  tail call void @notifyKeyspaceEvent(i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %struct.redisObject* %51, i32 %54) #6, !dbg !1500
  %55 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1501, !tbaa !1502
  %56 = add nsw i64 %55, 1, !dbg !1501
  store i64 %56, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1501, !tbaa !1502
  br label %57

; <label>:57:                                     ; preds = %15, %31, %33, %17
  ret void, !dbg !1503
}

; Function Attrs: noredzone
declare dso_local void @signalModifiedKey(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @notifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hsetCommand(%struct.client*) local_unnamed_addr #0 !dbg !1504 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1513
  %3 = load i32, i32* %2, align 8, !dbg !1513, !tbaa !1515
  %4 = srem i32 %3, 2, !dbg !1516
  %5 = icmp eq i32 %4, 1, !dbg !1517
  br i1 %5, label %6, label %7, !dbg !1518

; <label>:6:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !1519
  br label %83, !dbg !1521

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1522
  %9 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1522, !tbaa !1446
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 1, !dbg !1524
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !1524, !tbaa !161
  %12 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1528
  %13 = load %struct.redisDb*, %struct.redisDb** %12, align 8, !dbg !1528, !tbaa !1302
  %14 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %13, %struct.redisObject* %11) #6, !dbg !1529
  %15 = icmp eq %struct.redisObject* %14, null, !dbg !1531
  br i1 %15, label %23, label %16, !dbg !1532

; <label>:16:                                     ; preds = %7
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %14, i64 0, i32 0, !dbg !1533
  %18 = load i32, i32* %17, align 8, !dbg !1533
  %19 = and i32 %18, 15, !dbg !1533
  %20 = icmp eq i32 %19, 4, !dbg !1534
  br i1 %20, label %27, label %21, !dbg !1535

; <label>:21:                                     ; preds = %16
  %22 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !1536, !tbaa !1323
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %22) #6, !dbg !1537
  br label %83, !dbg !1539

; <label>:23:                                     ; preds = %7
  %24 = tail call %struct.redisObject* @createHashObject() #6, !dbg !1540
  %25 = load %struct.redisDb*, %struct.redisDb** %12, align 8, !dbg !1541, !tbaa !1302
  tail call void @dbAdd(%struct.redisDb* %25, %struct.redisObject* %11, %struct.redisObject* %24) #6, !dbg !1542
  %26 = icmp eq %struct.redisObject* %24, null, !dbg !1543
  br i1 %26, label %83, label %27, !dbg !1539

; <label>:27:                                     ; preds = %16, %23
  %28 = phi %struct.redisObject* [ %24, %23 ], [ %14, %16 ]
  %29 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1544, !tbaa !1446
  %30 = load i32, i32* %2, align 8, !dbg !1545, !tbaa !1515
  %31 = add nsw i32 %30, -1, !dbg !1546
  tail call void @hashTypeTryConversion(%struct.redisObject* nonnull %28, %struct.redisObject** %29, i32 2, i32 %31) #8, !dbg !1547
  %32 = load i32, i32* %2, align 8, !dbg !1549, !tbaa !1515
  %33 = icmp sgt i32 %32, 2, !dbg !1552
  %34 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1553, !tbaa !1446
  br i1 %33, label %35, label %59, !dbg !1554

; <label>:35:                                     ; preds = %27, %35
  %36 = phi i64 [ %52, %35 ], [ 2, %27 ]
  %37 = phi %struct.redisObject** [ %56, %35 ], [ %34, %27 ]
  %38 = phi i32 [ %51, %35 ], [ 0, %27 ]
  %39 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %37, i64 %36, !dbg !1555
  %40 = load %struct.redisObject*, %struct.redisObject** %39, align 8, !dbg !1555, !tbaa !161
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %40, i64 0, i32 2, !dbg !1556
  %42 = load i8*, i8** %41, align 8, !dbg !1556, !tbaa !166
  %43 = or i64 %36, 1, !dbg !1557
  %44 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %37, i64 %43, !dbg !1558
  %45 = load %struct.redisObject*, %struct.redisObject** %44, align 8, !dbg !1558, !tbaa !161
  %46 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %45, i64 0, i32 2, !dbg !1559
  %47 = load i8*, i8** %46, align 8, !dbg !1559, !tbaa !166
  %48 = tail call i32 @hashTypeSet(%struct.redisObject* nonnull %28, i8* %42, i8* %47, i32 0) #8, !dbg !1560
  %49 = icmp eq i32 %48, 0, !dbg !1561
  %50 = zext i1 %49 to i32, !dbg !1561
  %51 = add nuw nsw i32 %38, %50, !dbg !1562
  %52 = add nuw i64 %36, 2, !dbg !1563
  %53 = load i32, i32* %2, align 8, !dbg !1549, !tbaa !1515
  %54 = trunc i64 %52 to i32, !dbg !1552
  %55 = icmp sgt i32 %53, %54, !dbg !1552
  %56 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1553, !tbaa !1446
  br i1 %55, label %35, label %57, !dbg !1554, !llvm.loop !1564

; <label>:57:                                     ; preds = %35
  %58 = zext i32 %51 to i64, !dbg !1566
  br label %59, !dbg !1566

; <label>:59:                                     ; preds = %57, %27
  %60 = phi i64 [ 0, %27 ], [ %58, %57 ]
  %61 = phi %struct.redisObject** [ %34, %27 ], [ %56, %57 ], !dbg !1553
  %62 = load %struct.redisObject*, %struct.redisObject** %61, align 8, !dbg !1566, !tbaa !161
  %63 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %62, i64 0, i32 2, !dbg !1567
  %64 = load i8*, i8** %63, align 8, !dbg !1567, !tbaa !166
  %65 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !1569
  %66 = load i8, i8* %65, align 1, !dbg !1569, !tbaa !182
  switch i8 %66, label %68 [
    i8 115, label %67
    i8 83, label %67
  ], !dbg !1571

; <label>:67:                                     ; preds = %59, %59
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %60) #6, !dbg !1572
  br label %70, !dbg !1574

; <label>:68:                                     ; preds = %59
  %69 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1575, !tbaa !1577
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %69) #6, !dbg !1578
  br label %70

; <label>:70:                                     ; preds = %68, %67
  %71 = load %struct.redisDb*, %struct.redisDb** %12, align 8, !dbg !1579, !tbaa !1302
  %72 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1580, !tbaa !1446
  %73 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %72, i64 1, !dbg !1581
  %74 = load %struct.redisObject*, %struct.redisObject** %73, align 8, !dbg !1581, !tbaa !161
  tail call void @signalModifiedKey(%struct.redisDb* %71, %struct.redisObject* %74) #6, !dbg !1582
  %75 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1583, !tbaa !1446
  %76 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %75, i64 1, !dbg !1584
  %77 = load %struct.redisObject*, %struct.redisObject** %76, align 8, !dbg !1584, !tbaa !161
  %78 = load %struct.redisDb*, %struct.redisDb** %12, align 8, !dbg !1585, !tbaa !1302
  %79 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %78, i64 0, i32 5, !dbg !1586
  %80 = load i32, i32* %79, align 8, !dbg !1586, !tbaa !1498
  tail call void @notifyKeyspaceEvent(i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %struct.redisObject* %77, i32 %80) #6, !dbg !1587
  %81 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1588, !tbaa !1502
  %82 = add nsw i64 %81, 1, !dbg !1588
  store i64 %82, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1588, !tbaa !1502
  br label %83, !dbg !1589

; <label>:83:                                     ; preds = %21, %23, %70, %6
  ret void, !dbg !1589
}

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hincrbyCommand(%struct.client*) local_unnamed_addr #0 !dbg !1590 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = bitcast i64* %2 to i8*, !dbg !1601
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1601
  %7 = bitcast i64* %3 to i8*, !dbg !1601
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !1601
  %8 = bitcast i8** %4 to i8*, !dbg !1602
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !1602
  %9 = bitcast i32* %5 to i8*, !dbg !1603
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #5, !dbg !1603
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1604
  %11 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1604, !tbaa !1446
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 3, !dbg !1606
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !1606, !tbaa !161
  %14 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %13, i64* nonnull %3, i8* null) #6, !dbg !1608
  %15 = icmp eq i32 %14, 0, !dbg !1609
  br i1 %15, label %16, label %92, !dbg !1610

; <label>:16:                                     ; preds = %1
  %17 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1611, !tbaa !1446
  %18 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %17, i64 1, !dbg !1613
  %19 = load %struct.redisObject*, %struct.redisObject** %18, align 8, !dbg !1613, !tbaa !161
  %20 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1617
  %21 = load %struct.redisDb*, %struct.redisDb** %20, align 8, !dbg !1617, !tbaa !1302
  %22 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %21, %struct.redisObject* %19) #6, !dbg !1618
  %23 = icmp eq %struct.redisObject* %22, null, !dbg !1620
  br i1 %23, label %31, label %24, !dbg !1621

; <label>:24:                                     ; preds = %16
  %25 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %22, i64 0, i32 0, !dbg !1622
  %26 = load i32, i32* %25, align 8, !dbg !1622
  %27 = and i32 %26, 15, !dbg !1622
  %28 = icmp eq i32 %27, 4, !dbg !1623
  br i1 %28, label %35, label %29, !dbg !1624

; <label>:29:                                     ; preds = %24
  %30 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !1625, !tbaa !1323
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %30) #6, !dbg !1626
  br label %92, !dbg !1628

; <label>:31:                                     ; preds = %16
  %32 = call %struct.redisObject* @createHashObject() #6, !dbg !1629
  %33 = load %struct.redisDb*, %struct.redisDb** %20, align 8, !dbg !1630, !tbaa !1302
  call void @dbAdd(%struct.redisDb* %33, %struct.redisObject* %19, %struct.redisObject* %32) #6, !dbg !1631
  %34 = icmp eq %struct.redisObject* %32, null, !dbg !1632
  br i1 %34, label %92, label %35, !dbg !1628

; <label>:35:                                     ; preds = %24, %31
  %36 = phi %struct.redisObject* [ %32, %31 ], [ %22, %24 ]
  %37 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1633, !tbaa !1446
  %38 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %37, i64 2, !dbg !1635
  %39 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !1635, !tbaa !161
  %40 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %39, i64 0, i32 2, !dbg !1636
  %41 = load i8*, i8** %40, align 8, !dbg !1636, !tbaa !166
  %42 = call i32 @hashTypeGetValue(%struct.redisObject* nonnull %36, i8* %41, i8** nonnull %4, i32* nonnull %5, i64* nonnull %2) #8, !dbg !1640
  %43 = icmp eq i32 %42, 0, !dbg !1641
  br i1 %43, label %44, label %53, !dbg !1642

; <label>:44:                                     ; preds = %35
  %45 = load i8*, i8** %4, align 8, !dbg !1643, !tbaa !161
  %46 = icmp eq i8* %45, null, !dbg !1643
  br i1 %46, label %54, label %47, !dbg !1646

; <label>:47:                                     ; preds = %44
  %48 = load i32, i32* %5, align 4, !dbg !1647, !tbaa !198
  %49 = zext i32 %48 to i64, !dbg !1647
  %50 = call i32 @string2ll(i8* nonnull %45, i64 %49, i64* nonnull %2) #6, !dbg !1650
  %51 = icmp eq i32 %50, 0, !dbg !1651
  br i1 %51, label %52, label %54, !dbg !1652

; <label>:52:                                     ; preds = %47
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !1653
  br label %92, !dbg !1655

; <label>:53:                                     ; preds = %35
  store i64 0, i64* %2, align 8, !dbg !1656, !tbaa !423
  br label %54

; <label>:54:                                     ; preds = %44, %47, %53
  %55 = load i64, i64* %2, align 8, !dbg !1658, !tbaa !423
  %56 = load i64, i64* %3, align 8, !dbg !1660, !tbaa !423
  %57 = and i64 %56, %55, !dbg !1662
  %58 = icmp slt i64 %57, 0, !dbg !1662
  %59 = sub nsw i64 -9223372036854775808, %55, !dbg !1663
  %60 = icmp slt i64 %56, %59, !dbg !1664
  %61 = and i1 %60, %58, !dbg !1662
  br i1 %61, label %69, label %62, !dbg !1662

; <label>:62:                                     ; preds = %54
  %63 = icmp sgt i64 %56, 0, !dbg !1665
  %64 = icmp sgt i64 %55, 0, !dbg !1666
  %65 = and i1 %64, %63, !dbg !1667
  %66 = sub nsw i64 9223372036854775807, %55, !dbg !1668
  %67 = icmp sgt i64 %56, %66, !dbg !1669
  %68 = and i1 %67, %65, !dbg !1667
  br i1 %68, label %69, label %70, !dbg !1667

; <label>:69:                                     ; preds = %62, %54
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !1670
  br label %92, !dbg !1672

; <label>:70:                                     ; preds = %62
  %71 = add nsw i64 %56, %55, !dbg !1673
  store i64 %71, i64* %2, align 8, !dbg !1673, !tbaa !423
  %72 = call i8* @sdsfromlonglong(i64 %71) #6, !dbg !1674
  %73 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1676, !tbaa !1446
  %74 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %73, i64 2, !dbg !1677
  %75 = load %struct.redisObject*, %struct.redisObject** %74, align 8, !dbg !1677, !tbaa !161
  %76 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %75, i64 0, i32 2, !dbg !1678
  %77 = load i8*, i8** %76, align 8, !dbg !1678, !tbaa !166
  %78 = call i32 @hashTypeSet(%struct.redisObject* nonnull %36, i8* %77, i8* %72, i32 2) #8, !dbg !1679
  %79 = load i64, i64* %2, align 8, !dbg !1680, !tbaa !423
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %79) #6, !dbg !1681
  %80 = load %struct.redisDb*, %struct.redisDb** %20, align 8, !dbg !1682, !tbaa !1302
  %81 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1683, !tbaa !1446
  %82 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %81, i64 1, !dbg !1684
  %83 = load %struct.redisObject*, %struct.redisObject** %82, align 8, !dbg !1684, !tbaa !161
  call void @signalModifiedKey(%struct.redisDb* %80, %struct.redisObject* %83) #6, !dbg !1685
  %84 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1686, !tbaa !1446
  %85 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %84, i64 1, !dbg !1687
  %86 = load %struct.redisObject*, %struct.redisObject** %85, align 8, !dbg !1687, !tbaa !161
  %87 = load %struct.redisDb*, %struct.redisDb** %20, align 8, !dbg !1688, !tbaa !1302
  %88 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %87, i64 0, i32 5, !dbg !1689
  %89 = load i32, i32* %88, align 8, !dbg !1689, !tbaa !1498
  call void @notifyKeyspaceEvent(i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), %struct.redisObject* %86, i32 %89) #6, !dbg !1690
  %90 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1691, !tbaa !1502
  %91 = add nsw i64 %90, 1, !dbg !1691
  store i64 %91, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1691, !tbaa !1502
  br label %92, !dbg !1692

; <label>:92:                                     ; preds = %29, %31, %1, %70, %69, %52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #5, !dbg !1692
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !1692
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !1692
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1692
  ret void, !dbg !1692
}

; Function Attrs: noredzone
declare dso_local i32 @getLongLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @string2ll(i8*, i64, i64*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hincrbyfloatCommand(%struct.client*) local_unnamed_addr #0 !dbg !1693 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [5120 x i8], align 16
  %8 = bitcast x86_fp80* %2 to i8*, !dbg !1711
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #5, !dbg !1711
  %9 = bitcast x86_fp80* %3 to i8*, !dbg !1711
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #5, !dbg !1711
  %10 = bitcast i64* %4 to i8*, !dbg !1712
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #5, !dbg !1712
  %11 = bitcast i8** %5 to i8*, !dbg !1713
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #5, !dbg !1713
  %12 = bitcast i32* %6 to i8*, !dbg !1714
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5, !dbg !1714
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1715
  %14 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !1715, !tbaa !1446
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 3, !dbg !1717
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !1717, !tbaa !161
  %17 = call i32 @getLongDoubleFromObjectOrReply(%struct.client* %0, %struct.redisObject* %16, x86_fp80* nonnull %3, i8* null) #6, !dbg !1719
  %18 = icmp eq i32 %17, 0, !dbg !1720
  br i1 %18, label %19, label %101, !dbg !1721

; <label>:19:                                     ; preds = %1
  %20 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !1722, !tbaa !1446
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 1, !dbg !1724
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !1724, !tbaa !161
  %23 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1728
  %24 = load %struct.redisDb*, %struct.redisDb** %23, align 8, !dbg !1728, !tbaa !1302
  %25 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %24, %struct.redisObject* %22) #6, !dbg !1729
  %26 = icmp eq %struct.redisObject* %25, null, !dbg !1731
  br i1 %26, label %34, label %27, !dbg !1732

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %25, i64 0, i32 0, !dbg !1733
  %29 = load i32, i32* %28, align 8, !dbg !1733
  %30 = and i32 %29, 15, !dbg !1733
  %31 = icmp eq i32 %30, 4, !dbg !1734
  br i1 %31, label %38, label %32, !dbg !1735

; <label>:32:                                     ; preds = %27
  %33 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !1736, !tbaa !1323
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %33) #6, !dbg !1737
  br label %101, !dbg !1739

; <label>:34:                                     ; preds = %19
  %35 = call %struct.redisObject* @createHashObject() #6, !dbg !1740
  %36 = load %struct.redisDb*, %struct.redisDb** %23, align 8, !dbg !1741, !tbaa !1302
  call void @dbAdd(%struct.redisDb* %36, %struct.redisObject* %22, %struct.redisObject* %35) #6, !dbg !1742
  %37 = icmp eq %struct.redisObject* %35, null, !dbg !1743
  br i1 %37, label %101, label %38, !dbg !1739

; <label>:38:                                     ; preds = %27, %34
  %39 = phi %struct.redisObject* [ %35, %34 ], [ %25, %27 ]
  %40 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !1744, !tbaa !1446
  %41 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %40, i64 2, !dbg !1746
  %42 = load %struct.redisObject*, %struct.redisObject** %41, align 8, !dbg !1746, !tbaa !161
  %43 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %42, i64 0, i32 2, !dbg !1747
  %44 = load i8*, i8** %43, align 8, !dbg !1747, !tbaa !166
  %45 = call i32 @hashTypeGetValue(%struct.redisObject* nonnull %39, i8* %44, i8** nonnull %5, i32* nonnull %6, i64* nonnull %4) #8, !dbg !1751
  %46 = icmp eq i32 %45, 0, !dbg !1752
  br i1 %46, label %47, label %61, !dbg !1753

; <label>:47:                                     ; preds = %38
  %48 = load i8*, i8** %5, align 8, !dbg !1754, !tbaa !161
  %49 = icmp eq i8* %48, null, !dbg !1754
  br i1 %49, label %58, label %50, !dbg !1757

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %6, align 4, !dbg !1758, !tbaa !198
  %52 = zext i32 %51 to i64, !dbg !1758
  %53 = call i32 @string2ld(i8* nonnull %48, i64 %52, x86_fp80* nonnull %2) #6, !dbg !1762
  %54 = icmp eq i32 %53, 0, !dbg !1763
  br i1 %54, label %57, label %55, !dbg !1764

; <label>:55:                                     ; preds = %50
  %56 = load x86_fp80, x86_fp80* %2, align 16, !dbg !1765, !tbaa !1766
  br label %62, !dbg !1764

; <label>:57:                                     ; preds = %50
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !1768
  br label %101, !dbg !1770

; <label>:58:                                     ; preds = %47
  %59 = load i64, i64* %4, align 8, !dbg !1771, !tbaa !423
  %60 = sitofp i64 %59 to x86_fp80, !dbg !1773
  store x86_fp80 %60, x86_fp80* %2, align 16, !dbg !1774, !tbaa !1766
  br label %62

; <label>:61:                                     ; preds = %38
  store x86_fp80 0xK00000000000000000000, x86_fp80* %2, align 16, !dbg !1775, !tbaa !1766
  br label %62

; <label>:62:                                     ; preds = %55, %58, %61
  %63 = phi x86_fp80 [ %56, %55 ], [ %60, %58 ], [ 0xK00000000000000000000, %61 ], !dbg !1765
  %64 = load x86_fp80, x86_fp80* %3, align 16, !dbg !1777, !tbaa !1766
  %65 = fadd x86_fp80 %64, %63, !dbg !1765
  store x86_fp80 %65, x86_fp80* %2, align 16, !dbg !1765, !tbaa !1766
  %66 = fptrunc x86_fp80 %65 to double, !dbg !1778
  %67 = call i32 @__fpclassifyd(double %66) #6, !dbg !1778
  %68 = icmp eq i32 %67, 0, !dbg !1778
  br i1 %68, label %74, label %69, !dbg !1780

; <label>:69:                                     ; preds = %62
  %70 = load x86_fp80, x86_fp80* %2, align 16, !dbg !1781, !tbaa !1766
  %71 = fptrunc x86_fp80 %70 to double, !dbg !1781
  %72 = call i32 @__fpclassifyd(double %71) #6, !dbg !1781
  %73 = icmp eq i32 %72, 1, !dbg !1781
  br i1 %73, label %74, label %75, !dbg !1782

; <label>:74:                                     ; preds = %69, %62
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !1783
  br label %101, !dbg !1785

; <label>:75:                                     ; preds = %69
  %76 = getelementptr inbounds [5120 x i8], [5120 x i8]* %7, i64 0, i64 0, !dbg !1786
  call void @llvm.lifetime.start.p0i8(i64 5120, i8* nonnull %76) #5, !dbg !1786
  %77 = load x86_fp80, x86_fp80* %2, align 16, !dbg !1788, !tbaa !1766
  %78 = call i32 @ld2string(i8* nonnull %76, i64 5120, x86_fp80 %77, i32 1) #6, !dbg !1789
  %79 = sext i32 %78 to i64, !dbg !1791
  %80 = call i8* @sdsnewlen(i8* nonnull %76, i64 %79) #6, !dbg !1792
  %81 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !1794, !tbaa !1446
  %82 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %81, i64 2, !dbg !1795
  %83 = load %struct.redisObject*, %struct.redisObject** %82, align 8, !dbg !1795, !tbaa !161
  %84 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %83, i64 0, i32 2, !dbg !1796
  %85 = load i8*, i8** %84, align 8, !dbg !1796, !tbaa !166
  %86 = call i32 @hashTypeSet(%struct.redisObject* nonnull %39, i8* %85, i8* %80, i32 2) #8, !dbg !1797
  call void @addReplyBulkCBuffer(%struct.client* nonnull %0, i8* nonnull %76, i64 %79) #6, !dbg !1798
  %87 = load %struct.redisDb*, %struct.redisDb** %23, align 8, !dbg !1799, !tbaa !1302
  %88 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !1800, !tbaa !1446
  %89 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %88, i64 1, !dbg !1801
  %90 = load %struct.redisObject*, %struct.redisObject** %89, align 8, !dbg !1801, !tbaa !161
  call void @signalModifiedKey(%struct.redisDb* %87, %struct.redisObject* %90) #6, !dbg !1802
  %91 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !1803, !tbaa !1446
  %92 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %91, i64 1, !dbg !1804
  %93 = load %struct.redisObject*, %struct.redisObject** %92, align 8, !dbg !1804, !tbaa !161
  %94 = load %struct.redisDb*, %struct.redisDb** %23, align 8, !dbg !1805, !tbaa !1302
  %95 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %94, i64 0, i32 5, !dbg !1806
  %96 = load i32, i32* %95, align 8, !dbg !1806, !tbaa !1498
  call void @notifyKeyspaceEvent(i32 64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), %struct.redisObject* %93, i32 %96) #6, !dbg !1807
  %97 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1808, !tbaa !1502
  %98 = add nsw i64 %97, 1, !dbg !1808
  store i64 %98, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1808, !tbaa !1502
  %99 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i64 4) #6, !dbg !1809
  %100 = call %struct.redisObject* @createRawStringObject(i8* nonnull %76, i64 %79) #6, !dbg !1811
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 0, %struct.redisObject* %99) #6, !dbg !1813
  call void @decrRefCount(%struct.redisObject* %99) #6, !dbg !1814
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 3, %struct.redisObject* %100) #6, !dbg !1815
  call void @decrRefCount(%struct.redisObject* %100) #6, !dbg !1816
  call void @llvm.lifetime.end.p0i8(i64 5120, i8* nonnull %76) #5, !dbg !1817
  br label %101, !dbg !1817

; <label>:101:                                    ; preds = %32, %34, %1, %75, %74, %57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5, !dbg !1817
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5, !dbg !1817
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #5, !dbg !1817
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #5, !dbg !1817
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #5, !dbg !1817
  ret void, !dbg !1817
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
define dso_local void @hgetCommand(%struct.client*) local_unnamed_addr #0 !dbg !1818 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1823
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1823, !tbaa !1446
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !1825
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !1825, !tbaa !161
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1826, !tbaa !1827
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #6, !dbg !1828
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !1830
  br i1 %8, label %18, label %9, !dbg !1831

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 4) #6, !dbg !1832
  %11 = icmp eq i32 %10, 0, !dbg !1832
  br i1 %11, label %12, label %18, !dbg !1833

; <label>:12:                                     ; preds = %9
  %13 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1834, !tbaa !1446
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 2, !dbg !1835
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !1835, !tbaa !161
  %16 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %15, i64 0, i32 2, !dbg !1836
  %17 = load i8*, i8** %16, align 8, !dbg !1836, !tbaa !166
  tail call fastcc void @addHashFieldToReply(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i8* %17) #8, !dbg !1837
  br label %18, !dbg !1838

; <label>:18:                                     ; preds = %1, %9, %12
  ret void, !dbg !1838
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyReadOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @checkType(%struct.client*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @addHashFieldToReply(%struct.client*, %struct.redisObject* readonly, i8*) unnamed_addr #0 !dbg !1839 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = icmp eq %struct.redisObject* %1, null, !dbg !1858
  br i1 %7, label %8, label %10, !dbg !1860

; <label>:8:                                      ; preds = %3
  %9 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1861, !tbaa !1827
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %9) #6, !dbg !1863
  br label %76, !dbg !1864

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !1865
  %12 = load i32, i32* %11, align 8, !dbg !1865
  %13 = lshr i32 %12, 4, !dbg !1865
  %14 = trunc i32 %13 to i4, !dbg !1866
  switch i4 %14, label %75 [
    i4 5, label %15
    i4 2, label %32
  ], !dbg !1866

; <label>:15:                                     ; preds = %10
  %16 = bitcast i8** %4 to i8*, !dbg !1867
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #5, !dbg !1867
  store i8* null, i8** %4, align 8, !dbg !1868, !tbaa !161
  %17 = bitcast i32* %5 to i8*, !dbg !1869
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #5, !dbg !1869
  store i32 -1, i32* %5, align 4, !dbg !1870, !tbaa !198
  %18 = bitcast i64* %6 to i8*, !dbg !1871
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #5, !dbg !1871
  store i64 9223372036854775807, i64* %6, align 8, !dbg !1872, !tbaa !423
  %19 = call i32 @hashTypeGetFromZiplist(%struct.redisObject* nonnull %1, i8* %2, i8** nonnull %4, i32* nonnull %5, i64* nonnull %6) #8, !dbg !1873
  %20 = icmp slt i32 %19, 0, !dbg !1875
  br i1 %20, label %21, label %23, !dbg !1877

; <label>:21:                                     ; preds = %15
  %22 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1878, !tbaa !1827
  call void @addReply(%struct.client* %0, %struct.redisObject* %22) #6, !dbg !1880
  br label %31, !dbg !1881

; <label>:23:                                     ; preds = %15
  %24 = load i8*, i8** %4, align 8, !dbg !1882, !tbaa !161
  %25 = icmp eq i8* %24, null, !dbg !1882
  br i1 %25, label %29, label %26, !dbg !1885

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %5, align 4, !dbg !1886, !tbaa !198
  %28 = zext i32 %27 to i64, !dbg !1886
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* nonnull %24, i64 %28) #6, !dbg !1888
  br label %31, !dbg !1889

; <label>:29:                                     ; preds = %23
  %30 = load i64, i64* %6, align 8, !dbg !1890, !tbaa !423
  call void @addReplyBulkLongLong(%struct.client* %0, i64 %30) #6, !dbg !1892
  br label %31

; <label>:31:                                     ; preds = %26, %29, %21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #5, !dbg !1893
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #5, !dbg !1893
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #5, !dbg !1893
  br label %76, !dbg !1894

; <label>:32:                                     ; preds = %10
  %33 = and i32 %12, 240, !dbg !1898
  %34 = icmp eq i32 %33, 32, !dbg !1898
  br i1 %34, label %36, label %35, !dbg !1898

; <label>:35:                                     ; preds = %32
  tail call void @_serverAssert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 93) #6, !dbg !1898
  tail call void @_exit(i32 1) #7, !dbg !1898
  unreachable, !dbg !1898

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !1899
  %38 = bitcast i8** %37 to %struct.dict**, !dbg !1899
  %39 = load %struct.dict*, %struct.dict** %38, align 8, !dbg !1899, !tbaa !166
  %40 = tail call %struct.dictEntry* @dictFind(%struct.dict* %39, i8* %2) #6, !dbg !1900
  %41 = icmp eq %struct.dictEntry* %40, null, !dbg !1902
  br i1 %41, label %46, label %42, !dbg !1903

; <label>:42:                                     ; preds = %36
  %43 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %40, i64 0, i32 1, i32 0, !dbg !1904
  %44 = load i8*, i8** %43, align 8, !dbg !1904, !tbaa !182
  %45 = icmp eq i8* %44, null, !dbg !1906
  br i1 %45, label %46, label %48, !dbg !1908

; <label>:46:                                     ; preds = %36, %42
  %47 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1909, !tbaa !1827
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %47) #6, !dbg !1910
  br label %76, !dbg !1910

; <label>:48:                                     ; preds = %42
  %49 = getelementptr inbounds i8, i8* %44, i64 -1, !dbg !1913
  %50 = load i8, i8* %49, align 1, !dbg !1913, !tbaa !182
  %51 = trunc i8 %50 to i3, !dbg !1915
  switch i3 %51, label %73 [
    i3 0, label %52
    i3 1, label %55
    i3 2, label %59
    i3 3, label %64
    i3 -4, label %69
  ], !dbg !1915

; <label>:52:                                     ; preds = %48
  %53 = lshr i8 %50, 3, !dbg !1916
  %54 = zext i8 %53 to i64, !dbg !1916
  br label %73, !dbg !1917

; <label>:55:                                     ; preds = %48
  %56 = getelementptr inbounds i8, i8* %44, i64 -3, !dbg !1918
  %57 = load i8, i8* %56, align 1, !dbg !1919, !tbaa !182
  %58 = zext i8 %57 to i64, !dbg !1918
  br label %73, !dbg !1920

; <label>:59:                                     ; preds = %48
  %60 = getelementptr inbounds i8, i8* %44, i64 -5, !dbg !1921
  %61 = bitcast i8* %60 to i16*, !dbg !1922
  %62 = load i16, i16* %61, align 1, !dbg !1922, !tbaa !193
  %63 = zext i16 %62 to i64, !dbg !1921
  br label %73, !dbg !1923

; <label>:64:                                     ; preds = %48
  %65 = getelementptr inbounds i8, i8* %44, i64 -9, !dbg !1924
  %66 = bitcast i8* %65 to i32*, !dbg !1925
  %67 = load i32, i32* %66, align 1, !dbg !1925, !tbaa !198
  %68 = zext i32 %67 to i64, !dbg !1924
  br label %73, !dbg !1926

; <label>:69:                                     ; preds = %48
  %70 = getelementptr inbounds i8, i8* %44, i64 -17, !dbg !1927
  %71 = bitcast i8* %70 to i64*, !dbg !1928
  %72 = load i64, i64* %71, align 1, !dbg !1928, !tbaa !202
  br label %73, !dbg !1929

; <label>:73:                                     ; preds = %48, %52, %55, %59, %64, %69
  %74 = phi i64 [ %72, %69 ], [ %68, %64 ], [ %63, %59 ], [ %58, %55 ], [ %54, %52 ], [ 0, %48 ], !dbg !1930
  tail call void @addReplyBulkCBuffer(%struct.client* %0, i8* nonnull %44, i64 %74) #6, !dbg !1931
  br label %76

; <label>:75:                                     ; preds = %10
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 675, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1932
  tail call void @_exit(i32 1) #7, !dbg !1932
  unreachable, !dbg !1932

; <label>:76:                                     ; preds = %31, %73, %46, %8
  ret void, !dbg !1934
}

; Function Attrs: noredzone nounwind
define dso_local void @hmgetCommand(%struct.client*) local_unnamed_addr #0 !dbg !1935 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1941
  %3 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1941, !tbaa !1302
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1942
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1942, !tbaa !1446
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !1943
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1943, !tbaa !161
  %8 = tail call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %3, %struct.redisObject* %7) #6, !dbg !1944
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !1946
  br i1 %9, label %17, label %10, !dbg !1948

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 0, !dbg !1949
  %12 = load i32, i32* %11, align 8, !dbg !1949
  %13 = and i32 %12, 15, !dbg !1949
  %14 = icmp eq i32 %13, 4, !dbg !1950
  br i1 %14, label %17, label %15, !dbg !1951

; <label>:15:                                     ; preds = %10
  %16 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !1952, !tbaa !1323
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %16) #6, !dbg !1954
  br label %35, !dbg !1955

; <label>:17:                                     ; preds = %10, %1
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1956
  %19 = load i32, i32* %18, align 8, !dbg !1956, !tbaa !1515
  %20 = add nsw i32 %19, -2, !dbg !1957
  %21 = sext i32 %20 to i64, !dbg !1958
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %21) #6, !dbg !1959
  %22 = load i32, i32* %18, align 8, !dbg !1961, !tbaa !1515
  %23 = icmp sgt i32 %22, 2, !dbg !1964
  br i1 %23, label %24, label %35, !dbg !1965

; <label>:24:                                     ; preds = %17, %24
  %25 = phi i64 [ %31, %24 ], [ 2, %17 ]
  %26 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1966, !tbaa !1446
  %27 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 %25, !dbg !1968
  %28 = load %struct.redisObject*, %struct.redisObject** %27, align 8, !dbg !1968, !tbaa !161
  %29 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %28, i64 0, i32 2, !dbg !1969
  %30 = load i8*, i8** %29, align 8, !dbg !1969, !tbaa !166
  tail call fastcc void @addHashFieldToReply(%struct.client* nonnull %0, %struct.redisObject* %8, i8* %30) #8, !dbg !1970
  %31 = add nuw nsw i64 %25, 1, !dbg !1971
  %32 = load i32, i32* %18, align 8, !dbg !1961, !tbaa !1515
  %33 = sext i32 %32 to i64, !dbg !1964
  %34 = icmp slt i64 %31, %33, !dbg !1964
  br i1 %34, label %24, label %35, !dbg !1965, !llvm.loop !1972

; <label>:35:                                     ; preds = %24, %17, %15
  ret void, !dbg !1974
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyRead(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hdelCommand(%struct.client*) local_unnamed_addr #0 !dbg !1975 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1985
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1985, !tbaa !1446
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !1987
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !1987, !tbaa !161
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1988, !tbaa !1477
  %7 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #6, !dbg !1989
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !1991
  br i1 %8, label %94, label %9, !dbg !1992

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 4) #6, !dbg !1993
  %11 = icmp eq i32 %10, 0, !dbg !1993
  br i1 %11, label %12, label %94, !dbg !1994

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1996
  %14 = load i32, i32* %13, align 8, !dbg !1996, !tbaa !1515
  %15 = icmp sgt i32 %14, 2, !dbg !1999
  br i1 %15, label %16, label %92, !dbg !2000

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 0
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2
  %19 = bitcast i8** %18 to %struct.dict**
  br label %20, !dbg !2000

; <label>:20:                                     ; preds = %16, %58
  %21 = phi i64 [ 2, %16 ], [ %60, %58 ]
  %22 = phi i32 [ 0, %16 ], [ %59, %58 ]
  %23 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2001, !tbaa !1446
  %24 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %23, i64 %21, !dbg !2004
  %25 = load %struct.redisObject*, %struct.redisObject** %24, align 8, !dbg !2004, !tbaa !161
  %26 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %25, i64 0, i32 2, !dbg !2005
  %27 = load i8*, i8** %26, align 8, !dbg !2005, !tbaa !166
  %28 = tail call i32 @hashTypeDelete(%struct.redisObject* nonnull %7, i8* %27) #8, !dbg !2006
  %29 = icmp eq i32 %28, 0, !dbg !2006
  br i1 %29, label %58, label %30, !dbg !2007

; <label>:30:                                     ; preds = %20
  %31 = add nsw i32 %22, 1, !dbg !2008
  %32 = load i32, i32* %17, align 8, !dbg !2014
  %33 = lshr i32 %32, 4, !dbg !2014
  %34 = trunc i32 %33 to i4, !dbg !2015
  switch i4 %34, label %47 [
    i4 5, label %35
    i4 2, label %40
  ], !dbg !2015

; <label>:35:                                     ; preds = %30
  %36 = load i8*, i8** %18, align 8, !dbg !2016, !tbaa !166
  %37 = tail call i32 @ziplistLen(i8* %36) #6, !dbg !2017
  %38 = lshr i32 %37, 1, !dbg !2018
  %39 = zext i32 %38 to i64, !dbg !2017
  br label %48, !dbg !2019

; <label>:40:                                     ; preds = %30
  %41 = load %struct.dict*, %struct.dict** %19, align 8, !dbg !2020, !tbaa !166
  %42 = getelementptr inbounds %struct.dict, %struct.dict* %41, i64 0, i32 2, i64 0, i32 3, !dbg !2020
  %43 = load i64, i64* %42, align 8, !dbg !2020, !tbaa !716
  %44 = getelementptr inbounds %struct.dict, %struct.dict* %41, i64 0, i32 2, i64 1, i32 3, !dbg !2020
  %45 = load i64, i64* %44, align 8, !dbg !2020, !tbaa !716
  %46 = add i64 %45, %43, !dbg !2020
  br label %48

; <label>:47:                                     ; preds = %30
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 319, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2021
  tail call void @_exit(i32 1) #7, !dbg !2021
  unreachable, !dbg !2021

; <label>:48:                                     ; preds = %35, %40
  %49 = phi i64 [ %39, %35 ], [ %46, %40 ], !dbg !2022
  %50 = icmp eq i64 %49, 0, !dbg !2023
  br i1 %50, label %51, label %58, !dbg !2024

; <label>:51:                                     ; preds = %48
  %52 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2025
  %53 = load %struct.redisDb*, %struct.redisDb** %52, align 8, !dbg !2025, !tbaa !1302
  %54 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2027, !tbaa !1446
  %55 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %54, i64 1, !dbg !2028
  %56 = load %struct.redisObject*, %struct.redisObject** %55, align 8, !dbg !2028, !tbaa !161
  %57 = tail call i32 @dbDelete(%struct.redisDb* %53, %struct.redisObject* %56) #6, !dbg !2029
  br label %64, !dbg !2030

; <label>:58:                                     ; preds = %20, %48
  %59 = phi i32 [ %31, %48 ], [ %22, %20 ], !dbg !2031
  %60 = add nuw nsw i64 %21, 1, !dbg !2032
  %61 = load i32, i32* %13, align 8, !dbg !1996, !tbaa !1515
  %62 = sext i32 %61 to i64, !dbg !1999
  %63 = icmp slt i64 %60, %62, !dbg !1999
  br i1 %63, label %20, label %64, !dbg !2000, !llvm.loop !2033

; <label>:64:                                     ; preds = %58, %51
  %65 = phi i32 [ %31, %51 ], [ %59, %58 ], !dbg !2031
  %66 = phi i32 [ 1, %51 ], [ 0, %58 ], !dbg !2031
  %67 = icmp eq i32 %65, 0, !dbg !2035
  br i1 %67, label %92, label %68, !dbg !2037

; <label>:68:                                     ; preds = %64
  %69 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2038
  %70 = load %struct.redisDb*, %struct.redisDb** %69, align 8, !dbg !2038, !tbaa !1302
  %71 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2040, !tbaa !1446
  %72 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %71, i64 1, !dbg !2041
  %73 = load %struct.redisObject*, %struct.redisObject** %72, align 8, !dbg !2041, !tbaa !161
  tail call void @signalModifiedKey(%struct.redisDb* %70, %struct.redisObject* %73) #6, !dbg !2042
  %74 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2043, !tbaa !1446
  %75 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %74, i64 1, !dbg !2044
  %76 = load %struct.redisObject*, %struct.redisObject** %75, align 8, !dbg !2044, !tbaa !161
  %77 = load %struct.redisDb*, %struct.redisDb** %69, align 8, !dbg !2045, !tbaa !1302
  %78 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %77, i64 0, i32 5, !dbg !2046
  %79 = load i32, i32* %78, align 8, !dbg !2046, !tbaa !1498
  tail call void @notifyKeyspaceEvent(i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), %struct.redisObject* %76, i32 %79) #6, !dbg !2047
  %80 = icmp eq i32 %66, 0, !dbg !2048
  br i1 %80, label %88, label %81, !dbg !2050

; <label>:81:                                     ; preds = %68
  %82 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2051, !tbaa !1446
  %83 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %82, i64 1, !dbg !2052
  %84 = load %struct.redisObject*, %struct.redisObject** %83, align 8, !dbg !2052, !tbaa !161
  %85 = load %struct.redisDb*, %struct.redisDb** %69, align 8, !dbg !2053, !tbaa !1302
  %86 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %85, i64 0, i32 5, !dbg !2054
  %87 = load i32, i32* %86, align 8, !dbg !2054, !tbaa !1498
  tail call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), %struct.redisObject* %84, i32 %87) #6, !dbg !2055
  br label %88, !dbg !2055

; <label>:88:                                     ; preds = %68, %81
  %89 = sext i32 %65 to i64, !dbg !2056
  %90 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2057, !tbaa !1502
  %91 = add nsw i64 %90, %89, !dbg !2057
  store i64 %91, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2057, !tbaa !1502
  br label %92, !dbg !2058

; <label>:92:                                     ; preds = %64, %12, %88
  %93 = phi i64 [ %89, %88 ], [ 0, %12 ], [ 0, %64 ], !dbg !2059
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %93) #6, !dbg !2060
  br label %94, !dbg !2061

; <label>:94:                                     ; preds = %1, %9, %92
  ret void, !dbg !2061
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyWriteOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @dbDelete(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hlenCommand(%struct.client*) local_unnamed_addr #0 !dbg !2062 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2067
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2067, !tbaa !1446
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !2069
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !2069, !tbaa !161
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !2070, !tbaa !1477
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #6, !dbg !2071
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !2073
  br i1 %8, label %35, label %9, !dbg !2074

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 4) #6, !dbg !2075
  %11 = icmp eq i32 %10, 0, !dbg !2075
  br i1 %11, label %12, label %35, !dbg !2076

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 0, !dbg !2080
  %14 = load i32, i32* %13, align 8, !dbg !2080
  %15 = lshr i32 %14, 4, !dbg !2080
  %16 = trunc i32 %15 to i4, !dbg !2081
  switch i4 %16, label %32 [
    i4 5, label %17
    i4 2, label %23
  ], !dbg !2081

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !2082
  %19 = load i8*, i8** %18, align 8, !dbg !2082, !tbaa !166
  %20 = tail call i32 @ziplistLen(i8* %19) #6, !dbg !2083
  %21 = lshr i32 %20, 1, !dbg !2084
  %22 = zext i32 %21 to i64, !dbg !2083
  br label %33, !dbg !2085

; <label>:23:                                     ; preds = %12
  %24 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !2086
  %25 = bitcast i8** %24 to %struct.dict**, !dbg !2086
  %26 = load %struct.dict*, %struct.dict** %25, align 8, !dbg !2086, !tbaa !166
  %27 = getelementptr inbounds %struct.dict, %struct.dict* %26, i64 0, i32 2, i64 0, i32 3, !dbg !2086
  %28 = load i64, i64* %27, align 8, !dbg !2086, !tbaa !716
  %29 = getelementptr inbounds %struct.dict, %struct.dict* %26, i64 0, i32 2, i64 1, i32 3, !dbg !2086
  %30 = load i64, i64* %29, align 8, !dbg !2086, !tbaa !716
  %31 = add i64 %30, %28, !dbg !2086
  br label %33

; <label>:32:                                     ; preds = %12
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 319, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2087
  tail call void @_exit(i32 1) #7, !dbg !2087
  unreachable, !dbg !2087

; <label>:33:                                     ; preds = %17, %23
  %34 = phi i64 [ %22, %17 ], [ %31, %23 ], !dbg !2088
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %34) #6, !dbg !2089
  br label %35, !dbg !2090

; <label>:35:                                     ; preds = %1, %9, %33
  ret void, !dbg !2090
}

; Function Attrs: noredzone nounwind
define dso_local void @hstrlenCommand(%struct.client*) local_unnamed_addr #0 !dbg !2091 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2096
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2096, !tbaa !1446
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !2098
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !2098, !tbaa !161
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !2099, !tbaa !1477
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #6, !dbg !2100
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !2102
  br i1 %8, label %19, label %9, !dbg !2103

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 4) #6, !dbg !2104
  %11 = icmp eq i32 %10, 0, !dbg !2104
  br i1 %11, label %12, label %19, !dbg !2105

; <label>:12:                                     ; preds = %9
  %13 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2106, !tbaa !1446
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 2, !dbg !2107
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !2107, !tbaa !161
  %16 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %15, i64 0, i32 2, !dbg !2108
  %17 = load i8*, i8** %16, align 8, !dbg !2108, !tbaa !166
  %18 = tail call i64 @hashTypeGetValueLength(%struct.redisObject* nonnull %7, i8* %17) #8, !dbg !2109
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %18) #6, !dbg !2110
  br label %19, !dbg !2111

; <label>:19:                                     ; preds = %1, %9, %12
  ret void, !dbg !2111
}

; Function Attrs: noredzone nounwind
define dso_local void @genericHgetallCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !2112 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2127
  %4 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2127, !tbaa !1446
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 1, !dbg !2129
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !2129, !tbaa !161
  %7 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 13), align 8, !dbg !2130, !tbaa !2131
  %8 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %6, %struct.redisObject* %7) #6, !dbg !2132
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !2134
  br i1 %9, label %91, label %10, !dbg !2135

; <label>:10:                                     ; preds = %2
  %11 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %8, i32 4) #6, !dbg !2136
  %12 = icmp eq i32 %11, 0, !dbg !2136
  br i1 %12, label %13, label %91, !dbg !2137

; <label>:13:                                     ; preds = %10
  %14 = and i32 %1, 1, !dbg !2138
  %15 = icmp eq i32 %14, 0, !dbg !2138
  %16 = and i32 %1, 2, !dbg !2140
  %17 = icmp eq i32 %16, 0, !dbg !2140
  %18 = lshr exact i32 %16, 1, !dbg !2142
  %19 = add nuw nsw i32 %18, %14, !dbg !2142
  %20 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 0, !dbg !2146
  %21 = load i32, i32* %20, align 8, !dbg !2146
  %22 = lshr i32 %21, 4, !dbg !2146
  %23 = trunc i32 %22 to i4, !dbg !2147
  switch i4 %23, label %39 [
    i4 5, label %24
    i4 2, label %30
  ], !dbg !2147

; <label>:24:                                     ; preds = %13
  %25 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !2148
  %26 = load i8*, i8** %25, align 8, !dbg !2148, !tbaa !166
  %27 = tail call i32 @ziplistLen(i8* %26) #6, !dbg !2149
  %28 = lshr i32 %27, 1, !dbg !2150
  %29 = zext i32 %28 to i64, !dbg !2149
  br label %40, !dbg !2151

; <label>:30:                                     ; preds = %13
  %31 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !2152
  %32 = bitcast i8** %31 to %struct.dict**, !dbg !2152
  %33 = load %struct.dict*, %struct.dict** %32, align 8, !dbg !2152, !tbaa !166
  %34 = getelementptr inbounds %struct.dict, %struct.dict* %33, i64 0, i32 2, i64 0, i32 3, !dbg !2152
  %35 = load i64, i64* %34, align 8, !dbg !2152, !tbaa !716
  %36 = getelementptr inbounds %struct.dict, %struct.dict* %33, i64 0, i32 2, i64 1, i32 3, !dbg !2152
  %37 = load i64, i64* %36, align 8, !dbg !2152, !tbaa !716
  %38 = add i64 %37, %35, !dbg !2152
  br label %40

; <label>:39:                                     ; preds = %13
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 319, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2153
  tail call void @_exit(i32 1) #7, !dbg !2153
  unreachable, !dbg !2153

; <label>:40:                                     ; preds = %24, %30
  %41 = phi i64 [ %29, %24 ], [ %38, %30 ], !dbg !2154
  %42 = trunc i64 %41 to i32, !dbg !2155
  %43 = mul i32 %19, %42, !dbg !2155
  %44 = sext i32 %43 to i64, !dbg !2157
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %44) #6, !dbg !2158
  %45 = tail call i8* @zmalloc(i64 48) #6, !dbg !2161
  %46 = bitcast i8* %45 to %struct.hashTypeIterator*, !dbg !2161
  %47 = bitcast i8* %45 to %struct.redisObject**, !dbg !2163
  store %struct.redisObject* %8, %struct.redisObject** %47, align 8, !dbg !2164, !tbaa !906
  %48 = load i32, i32* %20, align 8, !dbg !2165
  %49 = lshr i32 %48, 4, !dbg !2165
  %50 = and i32 %49, 15, !dbg !2165
  %51 = getelementptr inbounds i8, i8* %45, i64 8, !dbg !2166
  %52 = bitcast i8* %51 to i32*, !dbg !2166
  store i32 %50, i32* %52, align 8, !dbg !2167, !tbaa !911
  %53 = trunc i32 %49 to i4, !dbg !2168
  switch i4 %53, label %64 [
    i4 5, label %54
    i4 2, label %57
  ], !dbg !2168

; <label>:54:                                     ; preds = %40
  %55 = getelementptr inbounds i8, i8* %45, i64 16, !dbg !2169
  %56 = bitcast i8* %55 to <2 x i8*>*, !dbg !2170
  store <2 x i8*> zeroinitializer, <2 x i8*>* %56, align 8, !dbg !2170, !tbaa !161
  br label %65, !dbg !2171

; <label>:57:                                     ; preds = %40
  %58 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !2172
  %59 = bitcast i8** %58 to %struct.dict**, !dbg !2172
  %60 = load %struct.dict*, %struct.dict** %59, align 8, !dbg !2172, !tbaa !166
  %61 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %60) #6, !dbg !2173
  %62 = getelementptr inbounds i8, i8* %45, i64 32, !dbg !2174
  %63 = bitcast i8* %62 to %struct.dictIterator**, !dbg !2174
  store %struct.dictIterator* %61, %struct.dictIterator** %63, align 8, !dbg !2175, !tbaa !924
  br label %65

; <label>:64:                                     ; preds = %40
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 335, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2176
  tail call void @_exit(i32 1) #7, !dbg !2176
  unreachable, !dbg !2176

; <label>:65:                                     ; preds = %54, %57
  %66 = tail call i32 @hashTypeNext(%struct.hashTypeIterator* nonnull %46) #8, !dbg !2178
  %67 = icmp eq i32 %66, -1, !dbg !2179
  br i1 %67, label %80, label %68, !dbg !2180

; <label>:68:                                     ; preds = %65, %76
  %69 = phi i32 [ %77, %76 ], [ 0, %65 ]
  br i1 %15, label %72, label %70, !dbg !2181

; <label>:70:                                     ; preds = %68
  tail call fastcc void @addHashIteratorCursorToReply(%struct.client* %0, %struct.hashTypeIterator* %46, i32 1) #8, !dbg !2183
  %71 = add nsw i32 %69, 1, !dbg !2186
  br label %72, !dbg !2187

; <label>:72:                                     ; preds = %68, %70
  %73 = phi i32 [ %71, %70 ], [ %69, %68 ], !dbg !2188
  br i1 %17, label %76, label %74, !dbg !2189

; <label>:74:                                     ; preds = %72
  tail call fastcc void @addHashIteratorCursorToReply(%struct.client* %0, %struct.hashTypeIterator* %46, i32 2) #8, !dbg !2190
  %75 = add nsw i32 %73, 1, !dbg !2193
  br label %76, !dbg !2194

; <label>:76:                                     ; preds = %72, %74
  %77 = phi i32 [ %75, %74 ], [ %73, %72 ], !dbg !2195
  %78 = tail call i32 @hashTypeNext(%struct.hashTypeIterator* %46) #8, !dbg !2178
  %79 = icmp eq i32 %78, -1, !dbg !2179
  br i1 %79, label %80, label %68, !dbg !2180, !llvm.loop !2196

; <label>:80:                                     ; preds = %76, %65
  %81 = phi i32 [ 0, %65 ], [ %77, %76 ], !dbg !2198
  %82 = load i32, i32* %52, align 8, !dbg !2201, !tbaa !911
  %83 = icmp eq i32 %82, 2, !dbg !2202
  br i1 %83, label %84, label %88, !dbg !2203

; <label>:84:                                     ; preds = %80
  %85 = getelementptr inbounds i8, i8* %45, i64 32, !dbg !2204
  %86 = bitcast i8* %85 to %struct.dictIterator**, !dbg !2204
  %87 = load %struct.dictIterator*, %struct.dictIterator** %86, align 8, !dbg !2204, !tbaa !924
  tail call void @dictReleaseIterator(%struct.dictIterator* %87) #6, !dbg !2205
  br label %88, !dbg !2205

; <label>:88:                                     ; preds = %80, %84
  tail call void @zfree(i8* nonnull %45) #6, !dbg !2206
  %89 = icmp eq i32 %81, %43, !dbg !2207
  br i1 %89, label %91, label %90, !dbg !2207

; <label>:90:                                     ; preds = %88
  tail call void @_serverAssert(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 798) #6, !dbg !2207
  tail call void @_exit(i32 1) #7, !dbg !2207
  unreachable, !dbg !2207

; <label>:91:                                     ; preds = %88, %2, %10
  ret void, !dbg !2208
}

; Function Attrs: noredzone nounwind
define internal fastcc void @addHashIteratorCursorToReply(%struct.client*, %struct.hashTypeIterator* nocapture readonly, i32) unnamed_addr #0 !dbg !2209 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %1, i64 0, i32 1, !dbg !2227
  %8 = load i32, i32* %7, align 8, !dbg !2227, !tbaa !911
  switch i32 %8, label %56 [
    i32 5, label %9
    i32 2, label %21
  ], !dbg !2228

; <label>:9:                                      ; preds = %3
  %10 = bitcast i8** %4 to i8*, !dbg !2229
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #5, !dbg !2229
  store i8* null, i8** %4, align 8, !dbg !2230, !tbaa !161
  %11 = bitcast i32* %5 to i8*, !dbg !2231
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #5, !dbg !2231
  store i32 -1, i32* %5, align 4, !dbg !2232, !tbaa !198
  %12 = bitcast i64* %6 to i8*, !dbg !2233
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #5, !dbg !2233
  store i64 9223372036854775807, i64* %6, align 8, !dbg !2234, !tbaa !423
  call void @hashTypeCurrentFromZiplist(%struct.hashTypeIterator* nonnull %1, i32 %2, i8** nonnull %4, i32* nonnull %5, i64* nonnull %6) #8, !dbg !2235
  %13 = load i8*, i8** %4, align 8, !dbg !2236, !tbaa !161
  %14 = icmp eq i8* %13, null, !dbg !2236
  br i1 %14, label %18, label %15, !dbg !2238

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %5, align 4, !dbg !2239, !tbaa !198
  %17 = zext i32 %16 to i64, !dbg !2239
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* nonnull %13, i64 %17) #6, !dbg !2240
  br label %20, !dbg !2240

; <label>:18:                                     ; preds = %9
  %19 = load i64, i64* %6, align 8, !dbg !2241, !tbaa !423
  call void @addReplyBulkLongLong(%struct.client* %0, i64 %19) #6, !dbg !2242
  br label %20

; <label>:20:                                     ; preds = %18, %15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #5, !dbg !2243
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #5, !dbg !2243
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #5, !dbg !2243
  br label %57, !dbg !2244

; <label>:21:                                     ; preds = %3
  %22 = and i32 %2, 1, !dbg !2248
  %23 = icmp eq i32 %22, 0, !dbg !2248
  %24 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %1, i64 0, i32 5, !dbg !2249
  %25 = load %struct.dictEntry*, %struct.dictEntry** %24, align 8, !dbg !2249, !tbaa !990
  %26 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %25, i64 0, i32 0, !dbg !2250
  %27 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %25, i64 0, i32 1, i32 0, !dbg !2251
  %28 = select i1 %23, i8** %27, i8** %26, !dbg !2252
  %29 = load i8*, i8** %28, align 8, !dbg !2249, !tbaa !182
  %30 = getelementptr inbounds i8, i8* %29, i64 -1, !dbg !2256
  %31 = load i8, i8* %30, align 1, !dbg !2256, !tbaa !182
  %32 = trunc i8 %31 to i3, !dbg !2258
  switch i3 %32, label %54 [
    i3 0, label %33
    i3 1, label %36
    i3 2, label %40
    i3 3, label %45
    i3 -4, label %50
  ], !dbg !2258

; <label>:33:                                     ; preds = %21
  %34 = lshr i8 %31, 3, !dbg !2259
  %35 = zext i8 %34 to i64, !dbg !2259
  br label %54, !dbg !2260

; <label>:36:                                     ; preds = %21
  %37 = getelementptr inbounds i8, i8* %29, i64 -3, !dbg !2261
  %38 = load i8, i8* %37, align 1, !dbg !2262, !tbaa !182
  %39 = zext i8 %38 to i64, !dbg !2261
  br label %54, !dbg !2263

; <label>:40:                                     ; preds = %21
  %41 = getelementptr inbounds i8, i8* %29, i64 -5, !dbg !2264
  %42 = bitcast i8* %41 to i16*, !dbg !2265
  %43 = load i16, i16* %42, align 1, !dbg !2265, !tbaa !193
  %44 = zext i16 %43 to i64, !dbg !2264
  br label %54, !dbg !2266

; <label>:45:                                     ; preds = %21
  %46 = getelementptr inbounds i8, i8* %29, i64 -9, !dbg !2267
  %47 = bitcast i8* %46 to i32*, !dbg !2268
  %48 = load i32, i32* %47, align 1, !dbg !2268, !tbaa !198
  %49 = zext i32 %48 to i64, !dbg !2267
  br label %54, !dbg !2269

; <label>:50:                                     ; preds = %21
  %51 = getelementptr inbounds i8, i8* %29, i64 -17, !dbg !2270
  %52 = bitcast i8* %51 to i64*, !dbg !2271
  %53 = load i64, i64* %52, align 1, !dbg !2271, !tbaa !202
  br label %54, !dbg !2272

; <label>:54:                                     ; preds = %21, %33, %36, %40, %45, %50
  %55 = phi i64 [ %53, %50 ], [ %49, %45 ], [ %44, %40 ], [ %39, %36 ], [ %35, %33 ], [ 0, %21 ], !dbg !2273
  tail call void @addReplyBulkCBuffer(%struct.client* %0, i8* %29, i64 %55) #6, !dbg !2274
  br label %57

; <label>:56:                                     ; preds = %3
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 766, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2275
  tail call void @_exit(i32 1) #7, !dbg !2275
  unreachable, !dbg !2275

; <label>:57:                                     ; preds = %54, %20
  ret void, !dbg !2277
}

; Function Attrs: noredzone nounwind
define dso_local void @hkeysCommand(%struct.client*) local_unnamed_addr #0 !dbg !2278 {
  tail call void @genericHgetallCommand(%struct.client* %0, i32 1) #8, !dbg !2282
  ret void, !dbg !2283
}

; Function Attrs: noredzone nounwind
define dso_local void @hvalsCommand(%struct.client*) local_unnamed_addr #0 !dbg !2284 {
  tail call void @genericHgetallCommand(%struct.client* %0, i32 2) #8, !dbg !2288
  ret void, !dbg !2289
}

; Function Attrs: noredzone nounwind
define dso_local void @hgetallCommand(%struct.client*) local_unnamed_addr #0 !dbg !2290 {
  tail call void @genericHgetallCommand(%struct.client* %0, i32 3) #8, !dbg !2294
  ret void, !dbg !2295
}

; Function Attrs: noredzone nounwind
define dso_local void @hexistsCommand(%struct.client*) local_unnamed_addr #0 !dbg !2296 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2301
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2301, !tbaa !1446
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !2303
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !2303, !tbaa !161
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !2304, !tbaa !1477
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #6, !dbg !2305
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !2307
  br i1 %8, label %23, label %9, !dbg !2308

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 4) #6, !dbg !2309
  %11 = icmp eq i32 %10, 0, !dbg !2309
  br i1 %11, label %12, label %23, !dbg !2310

; <label>:12:                                     ; preds = %9
  %13 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2311, !tbaa !1446
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 2, !dbg !2312
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !2312, !tbaa !161
  %16 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %15, i64 0, i32 2, !dbg !2313
  %17 = load i8*, i8** %16, align 8, !dbg !2313, !tbaa !166
  %18 = tail call i32 @hashTypeExists(%struct.redisObject* nonnull %7, i8* %17) #8, !dbg !2314
  %19 = icmp eq i32 %18, 0, !dbg !2314
  %20 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !2315
  %21 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !2316
  %22 = select i1 %19, %struct.redisObject* %21, %struct.redisObject* %20, !dbg !2314
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %22) #6, !dbg !2317
  br label %23, !dbg !2318

; <label>:23:                                     ; preds = %1, %9, %12
  ret void, !dbg !2318
}

; Function Attrs: noredzone nounwind
define dso_local void @hscanCommand(%struct.client*) local_unnamed_addr #0 !dbg !2319 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !2325
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !2325
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2326
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !2326, !tbaa !1446
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 2, !dbg !2328
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !2328, !tbaa !161
  %8 = call i32 @parseScanCursorOrReply(%struct.client* %0, %struct.redisObject* %7, i64* nonnull %2) #6, !dbg !2330
  %9 = icmp eq i32 %8, -1, !dbg !2331
  br i1 %9, label %22, label %10, !dbg !2332

; <label>:10:                                     ; preds = %1
  %11 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !2333, !tbaa !1446
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 1, !dbg !2335
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !2335, !tbaa !161
  %14 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 45), align 8, !dbg !2336, !tbaa !2337
  %15 = call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* nonnull %0, %struct.redisObject* %13, %struct.redisObject* %14) #6, !dbg !2338
  %16 = icmp eq %struct.redisObject* %15, null, !dbg !2340
  br i1 %16, label %22, label %17, !dbg !2341

; <label>:17:                                     ; preds = %10
  %18 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %15, i32 4) #6, !dbg !2342
  %19 = icmp eq i32 %18, 0, !dbg !2342
  br i1 %19, label %20, label %22, !dbg !2343

; <label>:20:                                     ; preds = %17
  %21 = load i64, i64* %2, align 8, !dbg !2344, !tbaa !202
  call void @scanGenericCommand(%struct.client* nonnull %0, %struct.redisObject* nonnull %15, i64 %21) #6, !dbg !2345
  br label %22, !dbg !2346

; <label>:22:                                     ; preds = %10, %17, %1, %20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !2346
  ret void, !dbg !2346
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
!185 = !DILocation(line: 91, column: 20, scope: !186, inlinedAt: !180)
!186 = distinct !DILexicalBlock(scope: !170, file: !83, line: 89, column: 33)
!187 = !DILocation(line: 91, column: 13, scope: !186, inlinedAt: !180)
!188 = !DILocation(line: 93, column: 20, scope: !186, inlinedAt: !180)
!189 = !DILocation(line: 93, column: 34, scope: !186, inlinedAt: !180)
!190 = !DILocation(line: 93, column: 13, scope: !186, inlinedAt: !180)
!191 = !DILocation(line: 95, column: 20, scope: !186, inlinedAt: !180)
!192 = !DILocation(line: 95, column: 35, scope: !186, inlinedAt: !180)
!193 = !{!194, !194, i64 0}
!194 = !{!"short", !163, i64 0}
!195 = !DILocation(line: 95, column: 13, scope: !186, inlinedAt: !180)
!196 = !DILocation(line: 97, column: 20, scope: !186, inlinedAt: !180)
!197 = !DILocation(line: 97, column: 35, scope: !186, inlinedAt: !180)
!198 = !{!168, !168, i64 0}
!199 = !DILocation(line: 97, column: 13, scope: !186, inlinedAt: !180)
!200 = !DILocation(line: 99, column: 20, scope: !186, inlinedAt: !180)
!201 = !DILocation(line: 99, column: 35, scope: !186, inlinedAt: !180)
!202 = !{!203, !203, i64 0}
!203 = !{!"long", !163, i64 0}
!204 = !DILocation(line: 99, column: 13, scope: !186, inlinedAt: !180)
!205 = !DILocation(line: 0, scope: !186, inlinedAt: !180)
!206 = !DILocation(line: 47, column: 34, scope: !159)
!207 = !DILocation(line: 46, column: 13, scope: !160)
!208 = !DILocalVariable(name: "o", arg: 1, scope: !209, file: !1, line: 500, type: !128)
!209 = distinct !DISubprogram(name: "hashTypeConvert", scope: !1, file: !1, line: 500, type: !210, isLocal: false, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !212)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !128, !39}
!212 = !{!208, !213}
!213 = !DILocalVariable(name: "enc", arg: 2, scope: !209, file: !1, line: 500, type: !39)
!214 = !DILocation(line: 500, column: 28, scope: !209, inlinedAt: !215)
!215 = distinct !DILocation(line: 49, column: 13, scope: !216)
!216 = distinct !DILexicalBlock(scope: !159, file: !1, line: 48, column: 9)
!217 = !DILocation(line: 500, column: 35, scope: !209, inlinedAt: !215)
!218 = !DILocation(line: 501, column: 12, scope: !219, inlinedAt: !215)
!219 = distinct !DILexicalBlock(scope: !209, file: !1, line: 501, column: 9)
!220 = !DILocation(line: 501, column: 9, scope: !209, inlinedAt: !215)
!221 = !DILocation(line: 504, column: 9, scope: !222, inlinedAt: !215)
!222 = distinct !DILexicalBlock(scope: !223, file: !1, line: 503, column: 48)
!223 = distinct !DILexicalBlock(scope: !219, file: !1, line: 503, column: 16)
!224 = !DILocation(line: 506, column: 9, scope: !225, inlinedAt: !215)
!225 = distinct !DILexicalBlock(scope: !223, file: !1, line: 505, column: 12)
!226 = !DILocation(line: 502, column: 9, scope: !227, inlinedAt: !215)
!227 = distinct !DILexicalBlock(scope: !219, file: !1, line: 501, column: 46)
!228 = !DILocation(line: 50, column: 13, scope: !216)
!229 = !DILocation(line: 45, column: 32, scope: !153)
!230 = distinct !{!230, !157, !231}
!231 = !DILocation(line: 52, column: 5, scope: !154)
!232 = !DILocation(line: 53, column: 1, scope: !125)
!233 = !DILocation(line: 500, column: 28, scope: !209)
!234 = !DILocation(line: 500, column: 35, scope: !209)
!235 = !DILocation(line: 501, column: 12, scope: !219)
!236 = !DILocation(line: 501, column: 9, scope: !209)
!237 = !DILocation(line: 502, column: 9, scope: !227)
!238 = !DILocation(line: 508, column: 1, scope: !209)
!239 = !DILocation(line: 504, column: 9, scope: !222)
!240 = !DILocation(line: 506, column: 9, scope: !225)
!241 = distinct !DISubprogram(name: "hashTypeGetFromZiplist", scope: !1, file: !1, line: 57, type: !242, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !248)
!242 = !DISubroutineType(types: !243)
!243 = !{!39, !128, !176, !244, !245, !246}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !257}
!249 = !DILocalVariable(name: "o", arg: 1, scope: !241, file: !1, line: 57, type: !128)
!250 = !DILocalVariable(name: "field", arg: 2, scope: !241, file: !1, line: 57, type: !176)
!251 = !DILocalVariable(name: "vstr", arg: 3, scope: !241, file: !1, line: 58, type: !244)
!252 = !DILocalVariable(name: "vlen", arg: 4, scope: !241, file: !1, line: 59, type: !245)
!253 = !DILocalVariable(name: "vll", arg: 5, scope: !241, file: !1, line: 60, type: !246)
!254 = !DILocalVariable(name: "zl", scope: !241, file: !1, line: 62, type: !5)
!255 = !DILocalVariable(name: "fptr", scope: !241, file: !1, line: 62, type: !5)
!256 = !DILocalVariable(name: "vptr", scope: !241, file: !1, line: 62, type: !5)
!257 = !DILocalVariable(name: "ret", scope: !241, file: !1, line: 63, type: !39)
!258 = !DILocation(line: 57, column: 34, scope: !241)
!259 = !DILocation(line: 57, column: 41, scope: !241)
!260 = !DILocation(line: 58, column: 44, scope: !241)
!261 = !DILocation(line: 59, column: 42, scope: !241)
!262 = !DILocation(line: 60, column: 39, scope: !241)
!263 = !DILocation(line: 62, column: 25, scope: !241)
!264 = !DILocation(line: 62, column: 39, scope: !241)
!265 = !DILocation(line: 65, column: 5, scope: !241)
!266 = !DILocation(line: 67, column: 13, scope: !241)
!267 = !DILocation(line: 62, column: 20, scope: !241)
!268 = !DILocation(line: 68, column: 12, scope: !241)
!269 = !DILocation(line: 69, column: 14, scope: !270)
!270 = distinct !DILexicalBlock(scope: !241, file: !1, line: 69, column: 9)
!271 = !DILocation(line: 69, column: 9, scope: !241)
!272 = !DILocation(line: 87, column: 39, scope: !170, inlinedAt: !273)
!273 = distinct !DILocation(line: 70, column: 57, scope: !274)
!274 = distinct !DILexicalBlock(scope: !270, file: !1, line: 69, column: 23)
!275 = !DILocation(line: 88, column: 27, scope: !170, inlinedAt: !273)
!276 = !DILocation(line: 88, column: 19, scope: !170, inlinedAt: !273)
!277 = !DILocation(line: 89, column: 5, scope: !170, inlinedAt: !273)
!278 = !DILocation(line: 91, column: 20, scope: !186, inlinedAt: !273)
!279 = !DILocation(line: 91, column: 13, scope: !186, inlinedAt: !273)
!280 = !DILocation(line: 93, column: 20, scope: !186, inlinedAt: !273)
!281 = !DILocation(line: 93, column: 34, scope: !186, inlinedAt: !273)
!282 = !DILocation(line: 93, column: 13, scope: !186, inlinedAt: !273)
!283 = !DILocation(line: 95, column: 20, scope: !186, inlinedAt: !273)
!284 = !DILocation(line: 95, column: 35, scope: !186, inlinedAt: !273)
!285 = !DILocation(line: 95, column: 13, scope: !186, inlinedAt: !273)
!286 = !DILocation(line: 97, column: 20, scope: !186, inlinedAt: !273)
!287 = !DILocation(line: 97, column: 35, scope: !186, inlinedAt: !273)
!288 = !DILocation(line: 97, column: 13, scope: !186, inlinedAt: !273)
!289 = !DILocation(line: 99, column: 20, scope: !186, inlinedAt: !273)
!290 = !DILocation(line: 99, column: 35, scope: !186, inlinedAt: !273)
!291 = !DILocation(line: 99, column: 13, scope: !186, inlinedAt: !273)
!292 = !DILocation(line: 0, scope: !186, inlinedAt: !273)
!293 = !DILocation(line: 70, column: 57, scope: !274)
!294 = !DILocation(line: 70, column: 16, scope: !274)
!295 = !DILocation(line: 71, column: 18, scope: !296)
!296 = distinct !DILexicalBlock(scope: !274, file: !1, line: 71, column: 13)
!297 = !DILocation(line: 71, column: 13, scope: !274)
!298 = !DILocation(line: 73, column: 20, scope: !299)
!299 = distinct !DILexicalBlock(scope: !296, file: !1, line: 71, column: 27)
!300 = !DILocation(line: 74, column: 13, scope: !299)
!301 = !DILocation(line: 79, column: 15, scope: !302)
!302 = distinct !DILexicalBlock(scope: !303, file: !1, line: 78, column: 23)
!303 = distinct !DILexicalBlock(scope: !241, file: !1, line: 78, column: 9)
!304 = !DILocation(line: 63, column: 9, scope: !241)
!305 = !DILocation(line: 80, column: 9, scope: !302)
!306 = !DILocation(line: 0, scope: !241)
!307 = !DILocation(line: 85, column: 1, scope: !241)
!308 = distinct !DISubprogram(name: "hashTypeGetFromHashTable", scope: !1, file: !1, line: 90, type: !309, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !311)
!309 = !DISubroutineType(types: !310)
!310 = !{!176, !128, !176}
!311 = !{!312, !313, !314}
!312 = !DILocalVariable(name: "o", arg: 1, scope: !308, file: !1, line: 90, type: !128)
!313 = !DILocalVariable(name: "field", arg: 2, scope: !308, file: !1, line: 90, type: !176)
!314 = !DILocalVariable(name: "de", scope: !308, file: !1, line: 91, type: !53)
!315 = !DILocation(line: 90, column: 36, scope: !308)
!316 = !DILocation(line: 90, column: 43, scope: !308)
!317 = !DILocation(line: 93, column: 5, scope: !308)
!318 = !DILocation(line: 95, column: 22, scope: !308)
!319 = !DILocation(line: 95, column: 10, scope: !308)
!320 = !DILocation(line: 91, column: 16, scope: !308)
!321 = !DILocation(line: 96, column: 12, scope: !322)
!322 = distinct !DILexicalBlock(scope: !308, file: !1, line: 96, column: 9)
!323 = !DILocation(line: 96, column: 9, scope: !308)
!324 = !DILocation(line: 97, column: 12, scope: !308)
!325 = !DILocation(line: 97, column: 5, scope: !308)
!326 = !DILocation(line: 0, scope: !308)
!327 = !DILocation(line: 98, column: 1, scope: !308)
!328 = distinct !DISubprogram(name: "hashTypeGetValue", scope: !1, file: !1, line: 109, type: !242, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !329)
!329 = !{!330, !331, !332, !333, !334, !335}
!330 = !DILocalVariable(name: "o", arg: 1, scope: !328, file: !1, line: 109, type: !128)
!331 = !DILocalVariable(name: "field", arg: 2, scope: !328, file: !1, line: 109, type: !176)
!332 = !DILocalVariable(name: "vstr", arg: 3, scope: !328, file: !1, line: 109, type: !244)
!333 = !DILocalVariable(name: "vlen", arg: 4, scope: !328, file: !1, line: 109, type: !245)
!334 = !DILocalVariable(name: "vll", arg: 5, scope: !328, file: !1, line: 109, type: !246)
!335 = !DILocalVariable(name: "value", scope: !336, file: !1, line: 115, type: !176)
!336 = distinct !DILexicalBlock(scope: !337, file: !1, line: 114, column: 48)
!337 = distinct !DILexicalBlock(scope: !338, file: !1, line: 114, column: 16)
!338 = distinct !DILexicalBlock(scope: !328, file: !1, line: 110, column: 9)
!339 = !DILocation(line: 109, column: 28, scope: !328)
!340 = !DILocation(line: 109, column: 35, scope: !328)
!341 = !DILocation(line: 109, column: 58, scope: !328)
!342 = !DILocation(line: 109, column: 78, scope: !328)
!343 = !DILocation(line: 109, column: 95, scope: !328)
!344 = !DILocation(line: 110, column: 12, scope: !338)
!345 = !DILocation(line: 110, column: 9, scope: !328)
!346 = !DILocation(line: 111, column: 15, scope: !347)
!347 = distinct !DILexicalBlock(scope: !338, file: !1, line: 110, column: 46)
!348 = !DILocation(line: 112, column: 13, scope: !349)
!349 = distinct !DILexicalBlock(scope: !347, file: !1, line: 112, column: 13)
!350 = !DILocation(line: 112, column: 63, scope: !349)
!351 = !DILocation(line: 112, column: 13, scope: !347)
!352 = !DILocation(line: 90, column: 36, scope: !308, inlinedAt: !353)
!353 = distinct !DILocation(line: 116, column: 22, scope: !354)
!354 = distinct !DILexicalBlock(scope: !336, file: !1, line: 116, column: 13)
!355 = !DILocation(line: 90, column: 43, scope: !308, inlinedAt: !353)
!356 = !DILocation(line: 93, column: 5, scope: !308, inlinedAt: !353)
!357 = !DILocation(line: 95, column: 22, scope: !308, inlinedAt: !353)
!358 = !DILocation(line: 95, column: 10, scope: !308, inlinedAt: !353)
!359 = !DILocation(line: 91, column: 16, scope: !308, inlinedAt: !353)
!360 = !DILocation(line: 96, column: 12, scope: !322, inlinedAt: !353)
!361 = !DILocation(line: 96, column: 9, scope: !308, inlinedAt: !353)
!362 = !DILocation(line: 97, column: 12, scope: !308, inlinedAt: !353)
!363 = !DILocation(line: 115, column: 13, scope: !336)
!364 = !DILocation(line: 116, column: 58, scope: !354)
!365 = !DILocation(line: 116, column: 13, scope: !336)
!366 = !DILocation(line: 117, column: 19, scope: !367)
!367 = distinct !DILexicalBlock(scope: !354, file: !1, line: 116, column: 67)
!368 = !DILocation(line: 87, column: 39, scope: !170, inlinedAt: !369)
!369 = distinct !DILocation(line: 118, column: 21, scope: !367)
!370 = !DILocation(line: 88, column: 27, scope: !170, inlinedAt: !369)
!371 = !DILocation(line: 88, column: 19, scope: !170, inlinedAt: !369)
!372 = !DILocation(line: 89, column: 5, scope: !170, inlinedAt: !369)
!373 = !DILocation(line: 91, column: 20, scope: !186, inlinedAt: !369)
!374 = !DILocation(line: 91, column: 13, scope: !186, inlinedAt: !369)
!375 = !DILocation(line: 93, column: 20, scope: !186, inlinedAt: !369)
!376 = !DILocation(line: 93, column: 34, scope: !186, inlinedAt: !369)
!377 = !DILocation(line: 93, column: 13, scope: !186, inlinedAt: !369)
!378 = !DILocation(line: 95, column: 20, scope: !186, inlinedAt: !369)
!379 = !DILocation(line: 95, column: 35, scope: !186, inlinedAt: !369)
!380 = !DILocation(line: 95, column: 13, scope: !186, inlinedAt: !369)
!381 = !DILocation(line: 97, column: 20, scope: !186, inlinedAt: !369)
!382 = !DILocation(line: 97, column: 35, scope: !186, inlinedAt: !369)
!383 = !DILocation(line: 97, column: 13, scope: !186, inlinedAt: !369)
!384 = !DILocation(line: 99, column: 20, scope: !186, inlinedAt: !369)
!385 = !DILocation(line: 99, column: 35, scope: !186, inlinedAt: !369)
!386 = !DILocation(line: 99, column: 13, scope: !186, inlinedAt: !369)
!387 = !DILocation(line: 0, scope: !186, inlinedAt: !369)
!388 = !DILocation(line: 118, column: 21, scope: !367)
!389 = !DILocation(line: 118, column: 19, scope: !367)
!390 = !DILocation(line: 122, column: 9, scope: !391)
!391 = distinct !DILexicalBlock(scope: !337, file: !1, line: 121, column: 12)
!392 = !DILocation(line: 124, column: 5, scope: !328)
!393 = !DILocation(line: 0, scope: !367)
!394 = !DILocation(line: 125, column: 1, scope: !328)
!395 = distinct !DISubprogram(name: "hashTypeGetValueObject", scope: !1, file: !1, line: 131, type: !396, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !398)
!396 = !DISubroutineType(types: !397)
!397 = !{!128, !128, !176}
!398 = !{!399, !400, !401, !402, !403}
!399 = !DILocalVariable(name: "o", arg: 1, scope: !395, file: !1, line: 131, type: !128)
!400 = !DILocalVariable(name: "field", arg: 2, scope: !395, file: !1, line: 131, type: !176)
!401 = !DILocalVariable(name: "vstr", scope: !395, file: !1, line: 132, type: !5)
!402 = !DILocalVariable(name: "vlen", scope: !395, file: !1, line: 133, type: !110)
!403 = !DILocalVariable(name: "vll", scope: !395, file: !1, line: 134, type: !247)
!404 = !DILocation(line: 131, column: 36, scope: !395)
!405 = !DILocation(line: 131, column: 43, scope: !395)
!406 = !DILocation(line: 132, column: 5, scope: !395)
!407 = !DILocation(line: 133, column: 5, scope: !395)
!408 = !DILocation(line: 134, column: 5, scope: !395)
!409 = !DILocation(line: 132, column: 20, scope: !395)
!410 = !DILocation(line: 133, column: 18, scope: !395)
!411 = !DILocation(line: 134, column: 15, scope: !395)
!412 = !DILocation(line: 136, column: 9, scope: !413)
!413 = distinct !DILexicalBlock(scope: !395, file: !1, line: 136, column: 9)
!414 = !DILocation(line: 136, column: 52, scope: !413)
!415 = !DILocation(line: 136, column: 9, scope: !395)
!416 = !DILocation(line: 137, column: 9, scope: !417)
!417 = distinct !DILexicalBlock(scope: !395, file: !1, line: 137, column: 9)
!418 = !DILocation(line: 137, column: 9, scope: !395)
!419 = !DILocation(line: 137, column: 53, scope: !417)
!420 = !DILocation(line: 137, column: 22, scope: !417)
!421 = !DILocation(line: 137, column: 15, scope: !417)
!422 = !DILocation(line: 138, column: 48, scope: !417)
!423 = !{!424, !424, i64 0}
!424 = !{!"long long", !163, i64 0}
!425 = !DILocation(line: 138, column: 17, scope: !417)
!426 = !DILocation(line: 138, column: 10, scope: !417)
!427 = !DILocation(line: 0, scope: !417)
!428 = !DILocation(line: 139, column: 1, scope: !395)
!429 = distinct !DISubprogram(name: "hashTypeGetValueLength", scope: !1, file: !1, line: 144, type: !430, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !436)
!430 = !DISubroutineType(types: !431)
!431 = !{!432, !128, !176}
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !433, line: 40, baseType: !434)
!433 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !435, line: 129, baseType: !27)
!435 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!436 = !{!437, !438, !439, !440, !443, !444, !445}
!437 = !DILocalVariable(name: "o", arg: 1, scope: !429, file: !1, line: 144, type: !128)
!438 = !DILocalVariable(name: "field", arg: 2, scope: !429, file: !1, line: 144, type: !176)
!439 = !DILocalVariable(name: "len", scope: !429, file: !1, line: 145, type: !432)
!440 = !DILocalVariable(name: "vstr", scope: !441, file: !1, line: 147, type: !5)
!441 = distinct !DILexicalBlock(scope: !442, file: !1, line: 146, column: 46)
!442 = distinct !DILexicalBlock(scope: !429, file: !1, line: 146, column: 9)
!443 = !DILocalVariable(name: "vlen", scope: !441, file: !1, line: 148, type: !110)
!444 = !DILocalVariable(name: "vll", scope: !441, file: !1, line: 149, type: !247)
!445 = !DILocalVariable(name: "aux", scope: !446, file: !1, line: 154, type: !176)
!446 = distinct !DILexicalBlock(scope: !447, file: !1, line: 153, column: 48)
!447 = distinct !DILexicalBlock(scope: !442, file: !1, line: 153, column: 16)
!448 = !DILocation(line: 144, column: 37, scope: !429)
!449 = !DILocation(line: 144, column: 44, scope: !429)
!450 = !DILocation(line: 145, column: 12, scope: !429)
!451 = !DILocation(line: 146, column: 12, scope: !442)
!452 = !DILocation(line: 146, column: 9, scope: !429)
!453 = !DILocation(line: 147, column: 9, scope: !441)
!454 = !DILocation(line: 147, column: 24, scope: !441)
!455 = !DILocation(line: 148, column: 9, scope: !441)
!456 = !DILocation(line: 148, column: 22, scope: !441)
!457 = !DILocation(line: 149, column: 9, scope: !441)
!458 = !DILocation(line: 149, column: 19, scope: !441)
!459 = !DILocation(line: 151, column: 13, scope: !460)
!460 = distinct !DILexicalBlock(scope: !441, file: !1, line: 151, column: 13)
!461 = !DILocation(line: 151, column: 66, scope: !460)
!462 = !DILocation(line: 151, column: 13, scope: !441)
!463 = !DILocation(line: 152, column: 19, scope: !460)
!464 = !DILocation(line: 152, column: 26, scope: !460)
!465 = !DILocation(line: 152, column: 43, scope: !460)
!466 = !DILocation(line: 152, column: 33, scope: !460)
!467 = !DILocation(line: 152, column: 13, scope: !460)
!468 = !DILocation(line: 0, scope: !429)
!469 = !DILocation(line: 153, column: 5, scope: !442)
!470 = !DILocation(line: 153, column: 5, scope: !441)
!471 = !DILocation(line: 90, column: 36, scope: !308, inlinedAt: !472)
!472 = distinct !DILocation(line: 156, column: 20, scope: !473)
!473 = distinct !DILexicalBlock(scope: !446, file: !1, line: 156, column: 13)
!474 = !DILocation(line: 90, column: 43, scope: !308, inlinedAt: !472)
!475 = !DILocation(line: 93, column: 5, scope: !308, inlinedAt: !472)
!476 = !DILocation(line: 95, column: 22, scope: !308, inlinedAt: !472)
!477 = !DILocation(line: 95, column: 10, scope: !308, inlinedAt: !472)
!478 = !DILocation(line: 91, column: 16, scope: !308, inlinedAt: !472)
!479 = !DILocation(line: 96, column: 12, scope: !322, inlinedAt: !472)
!480 = !DILocation(line: 96, column: 9, scope: !308, inlinedAt: !472)
!481 = !DILocation(line: 97, column: 12, scope: !308, inlinedAt: !472)
!482 = !DILocation(line: 154, column: 13, scope: !446)
!483 = !DILocation(line: 156, column: 56, scope: !473)
!484 = !DILocation(line: 156, column: 13, scope: !446)
!485 = !DILocation(line: 87, column: 39, scope: !170, inlinedAt: !486)
!486 = distinct !DILocation(line: 157, column: 19, scope: !473)
!487 = !DILocation(line: 88, column: 27, scope: !170, inlinedAt: !486)
!488 = !DILocation(line: 88, column: 19, scope: !170, inlinedAt: !486)
!489 = !DILocation(line: 89, column: 5, scope: !170, inlinedAt: !486)
!490 = !DILocation(line: 91, column: 20, scope: !186, inlinedAt: !486)
!491 = !DILocation(line: 91, column: 13, scope: !186, inlinedAt: !486)
!492 = !DILocation(line: 93, column: 20, scope: !186, inlinedAt: !486)
!493 = !DILocation(line: 93, column: 34, scope: !186, inlinedAt: !486)
!494 = !DILocation(line: 93, column: 13, scope: !186, inlinedAt: !486)
!495 = !DILocation(line: 95, column: 20, scope: !186, inlinedAt: !486)
!496 = !DILocation(line: 95, column: 35, scope: !186, inlinedAt: !486)
!497 = !DILocation(line: 95, column: 13, scope: !186, inlinedAt: !486)
!498 = !DILocation(line: 97, column: 20, scope: !186, inlinedAt: !486)
!499 = !DILocation(line: 97, column: 35, scope: !186, inlinedAt: !486)
!500 = !DILocation(line: 97, column: 13, scope: !186, inlinedAt: !486)
!501 = !DILocation(line: 99, column: 20, scope: !186, inlinedAt: !486)
!502 = !DILocation(line: 99, column: 35, scope: !186, inlinedAt: !486)
!503 = !DILocation(line: 99, column: 13, scope: !186, inlinedAt: !486)
!504 = !DILocation(line: 159, column: 9, scope: !505)
!505 = distinct !DILexicalBlock(scope: !447, file: !1, line: 158, column: 12)
!506 = !DILocation(line: 0, scope: !473)
!507 = !DILocation(line: 161, column: 5, scope: !429)
!508 = distinct !DISubprogram(name: "hashTypeExists", scope: !1, file: !1, line: 166, type: !509, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !511)
!509 = !DISubroutineType(types: !510)
!510 = !{!39, !128, !176}
!511 = !{!512, !513, !514, !517, !518}
!512 = !DILocalVariable(name: "o", arg: 1, scope: !508, file: !1, line: 166, type: !128)
!513 = !DILocalVariable(name: "field", arg: 2, scope: !508, file: !1, line: 166, type: !176)
!514 = !DILocalVariable(name: "vstr", scope: !515, file: !1, line: 168, type: !5)
!515 = distinct !DILexicalBlock(scope: !516, file: !1, line: 167, column: 46)
!516 = distinct !DILexicalBlock(scope: !508, file: !1, line: 167, column: 9)
!517 = !DILocalVariable(name: "vlen", scope: !515, file: !1, line: 169, type: !110)
!518 = !DILocalVariable(name: "vll", scope: !515, file: !1, line: 170, type: !247)
!519 = !DILocation(line: 166, column: 26, scope: !508)
!520 = !DILocation(line: 166, column: 33, scope: !508)
!521 = !DILocation(line: 167, column: 12, scope: !516)
!522 = !DILocation(line: 167, column: 9, scope: !508)
!523 = !DILocation(line: 168, column: 9, scope: !515)
!524 = !DILocation(line: 168, column: 24, scope: !515)
!525 = !DILocation(line: 169, column: 9, scope: !515)
!526 = !DILocation(line: 169, column: 22, scope: !515)
!527 = !DILocation(line: 170, column: 9, scope: !515)
!528 = !DILocation(line: 170, column: 19, scope: !515)
!529 = !DILocation(line: 172, column: 13, scope: !530)
!530 = distinct !DILexicalBlock(scope: !515, file: !1, line: 172, column: 13)
!531 = !DILocation(line: 172, column: 66, scope: !530)
!532 = !DILocation(line: 173, column: 5, scope: !516)
!533 = !DILocation(line: 90, column: 36, scope: !308, inlinedAt: !534)
!534 = distinct !DILocation(line: 174, column: 13, scope: !535)
!535 = distinct !DILexicalBlock(scope: !536, file: !1, line: 174, column: 13)
!536 = distinct !DILexicalBlock(scope: !537, file: !1, line: 173, column: 48)
!537 = distinct !DILexicalBlock(scope: !516, file: !1, line: 173, column: 16)
!538 = !DILocation(line: 90, column: 43, scope: !308, inlinedAt: !534)
!539 = !DILocation(line: 93, column: 5, scope: !308, inlinedAt: !534)
!540 = !DILocation(line: 95, column: 22, scope: !308, inlinedAt: !534)
!541 = !DILocation(line: 95, column: 10, scope: !308, inlinedAt: !534)
!542 = !DILocation(line: 91, column: 16, scope: !308, inlinedAt: !534)
!543 = !DILocation(line: 96, column: 12, scope: !322, inlinedAt: !534)
!544 = !DILocation(line: 96, column: 9, scope: !308, inlinedAt: !534)
!545 = !DILocation(line: 97, column: 12, scope: !308, inlinedAt: !534)
!546 = !DILocation(line: 174, column: 48, scope: !535)
!547 = !DILocation(line: 174, column: 13, scope: !536)
!548 = !DILocation(line: 176, column: 9, scope: !549)
!549 = distinct !DILexicalBlock(scope: !537, file: !1, line: 175, column: 12)
!550 = !DILocation(line: 178, column: 5, scope: !508)
!551 = !DILocation(line: 0, scope: !535)
!552 = !DILocation(line: 179, column: 1, scope: !508)
!553 = distinct !DISubprogram(name: "hashTypeSet", scope: !1, file: !1, line: 202, type: !554, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !556)
!554 = !DISubroutineType(types: !555)
!555 = !{!39, !128, !176, !176, !39}
!556 = !{!557, !558, !559, !560, !561, !562, !565, !566, !567, !570, !573}
!557 = !DILocalVariable(name: "o", arg: 1, scope: !553, file: !1, line: 202, type: !128)
!558 = !DILocalVariable(name: "field", arg: 2, scope: !553, file: !1, line: 202, type: !176)
!559 = !DILocalVariable(name: "value", arg: 3, scope: !553, file: !1, line: 202, type: !176)
!560 = !DILocalVariable(name: "flags", arg: 4, scope: !553, file: !1, line: 202, type: !39)
!561 = !DILocalVariable(name: "update", scope: !553, file: !1, line: 203, type: !39)
!562 = !DILocalVariable(name: "zl", scope: !563, file: !1, line: 206, type: !5)
!563 = distinct !DILexicalBlock(scope: !564, file: !1, line: 205, column: 46)
!564 = distinct !DILexicalBlock(scope: !553, file: !1, line: 205, column: 9)
!565 = !DILocalVariable(name: "fptr", scope: !563, file: !1, line: 206, type: !5)
!566 = !DILocalVariable(name: "vptr", scope: !563, file: !1, line: 206, type: !5)
!567 = !DILocalVariable(name: "de", scope: !568, file: !1, line: 240, type: !53)
!568 = distinct !DILexicalBlock(scope: !569, file: !1, line: 239, column: 48)
!569 = distinct !DILexicalBlock(scope: !564, file: !1, line: 239, column: 16)
!570 = !DILocalVariable(name: "f", scope: !571, file: !1, line: 251, type: !176)
!571 = distinct !DILexicalBlock(scope: !572, file: !1, line: 250, column: 16)
!572 = distinct !DILexicalBlock(scope: !568, file: !1, line: 241, column: 13)
!573 = !DILocalVariable(name: "v", scope: !571, file: !1, line: 251, type: !176)
!574 = !DILocation(line: 202, column: 23, scope: !553)
!575 = !DILocation(line: 202, column: 30, scope: !553)
!576 = !DILocation(line: 202, column: 41, scope: !553)
!577 = !DILocation(line: 202, column: 52, scope: !553)
!578 = !DILocation(line: 203, column: 9, scope: !553)
!579 = !DILocation(line: 205, column: 12, scope: !564)
!580 = !DILocation(line: 205, column: 9, scope: !553)
!581 = !DILocation(line: 206, column: 9, scope: !563)
!582 = !DILocation(line: 208, column: 17, scope: !563)
!583 = !DILocation(line: 206, column: 24, scope: !563)
!584 = !DILocation(line: 209, column: 16, scope: !563)
!585 = !DILocation(line: 206, column: 29, scope: !563)
!586 = !DILocation(line: 210, column: 18, scope: !587)
!587 = distinct !DILexicalBlock(scope: !563, file: !1, line: 210, column: 13)
!588 = !DILocation(line: 88, column: 27, scope: !170, inlinedAt: !589)
!589 = distinct !DILocation(line: 229, column: 57, scope: !590)
!590 = distinct !DILexicalBlock(scope: !591, file: !1, line: 227, column: 22)
!591 = distinct !DILexicalBlock(scope: !563, file: !1, line: 227, column: 13)
!592 = !DILocation(line: 210, column: 13, scope: !563)
!593 = !DILocation(line: 87, column: 39, scope: !170, inlinedAt: !594)
!594 = distinct !DILocation(line: 211, column: 61, scope: !595)
!595 = distinct !DILexicalBlock(scope: !587, file: !1, line: 210, column: 27)
!596 = !DILocation(line: 88, column: 27, scope: !170, inlinedAt: !594)
!597 = !DILocation(line: 88, column: 19, scope: !170, inlinedAt: !594)
!598 = !DILocation(line: 89, column: 5, scope: !170, inlinedAt: !594)
!599 = !DILocation(line: 91, column: 20, scope: !186, inlinedAt: !594)
!600 = !DILocation(line: 91, column: 13, scope: !186, inlinedAt: !594)
!601 = !DILocation(line: 93, column: 20, scope: !186, inlinedAt: !594)
!602 = !DILocation(line: 93, column: 34, scope: !186, inlinedAt: !594)
!603 = !DILocation(line: 93, column: 13, scope: !186, inlinedAt: !594)
!604 = !DILocation(line: 95, column: 20, scope: !186, inlinedAt: !594)
!605 = !DILocation(line: 95, column: 35, scope: !186, inlinedAt: !594)
!606 = !DILocation(line: 95, column: 13, scope: !186, inlinedAt: !594)
!607 = !DILocation(line: 97, column: 20, scope: !186, inlinedAt: !594)
!608 = !DILocation(line: 97, column: 35, scope: !186, inlinedAt: !594)
!609 = !DILocation(line: 97, column: 13, scope: !186, inlinedAt: !594)
!610 = !DILocation(line: 99, column: 20, scope: !186, inlinedAt: !594)
!611 = !DILocation(line: 99, column: 35, scope: !186, inlinedAt: !594)
!612 = !DILocation(line: 99, column: 13, scope: !186, inlinedAt: !594)
!613 = !DILocation(line: 0, scope: !186, inlinedAt: !594)
!614 = !DILocation(line: 211, column: 61, scope: !595)
!615 = !DILocation(line: 211, column: 20, scope: !595)
!616 = !DILocation(line: 212, column: 22, scope: !617)
!617 = distinct !DILexicalBlock(scope: !595, file: !1, line: 212, column: 17)
!618 = !DILocation(line: 212, column: 17, scope: !595)
!619 = !DILocation(line: 214, column: 24, scope: !620)
!620 = distinct !DILexicalBlock(scope: !617, file: !1, line: 212, column: 31)
!621 = !DILocation(line: 206, column: 36, scope: !563)
!622 = !DILocation(line: 214, column: 22, scope: !620)
!623 = !DILocation(line: 215, column: 17, scope: !620)
!624 = !DILocation(line: 219, column: 22, scope: !620)
!625 = !DILocation(line: 222, column: 40, scope: !620)
!626 = !DILocation(line: 87, column: 39, scope: !170, inlinedAt: !627)
!627 = distinct !DILocation(line: 223, column: 25, scope: !620)
!628 = !DILocation(line: 88, column: 27, scope: !170, inlinedAt: !627)
!629 = !DILocation(line: 88, column: 19, scope: !170, inlinedAt: !627)
!630 = !DILocation(line: 89, column: 5, scope: !170, inlinedAt: !627)
!631 = !DILocation(line: 91, column: 20, scope: !186, inlinedAt: !627)
!632 = !DILocation(line: 91, column: 13, scope: !186, inlinedAt: !627)
!633 = !DILocation(line: 93, column: 20, scope: !186, inlinedAt: !627)
!634 = !DILocation(line: 93, column: 34, scope: !186, inlinedAt: !627)
!635 = !DILocation(line: 93, column: 13, scope: !186, inlinedAt: !627)
!636 = !DILocation(line: 95, column: 20, scope: !186, inlinedAt: !627)
!637 = !DILocation(line: 95, column: 35, scope: !186, inlinedAt: !627)
!638 = !DILocation(line: 95, column: 13, scope: !186, inlinedAt: !627)
!639 = !DILocation(line: 97, column: 20, scope: !186, inlinedAt: !627)
!640 = !DILocation(line: 97, column: 35, scope: !186, inlinedAt: !627)
!641 = !DILocation(line: 97, column: 13, scope: !186, inlinedAt: !627)
!642 = !DILocation(line: 99, column: 20, scope: !186, inlinedAt: !627)
!643 = !DILocation(line: 99, column: 35, scope: !186, inlinedAt: !627)
!644 = !DILocation(line: 99, column: 13, scope: !186, inlinedAt: !627)
!645 = !DILocation(line: 0, scope: !186, inlinedAt: !627)
!646 = !DILocation(line: 223, column: 25, scope: !620)
!647 = !DILocation(line: 222, column: 22, scope: !620)
!648 = !DILocation(line: 227, column: 13, scope: !563)
!649 = !DILocation(line: 87, column: 39, scope: !170, inlinedAt: !589)
!650 = !DILocation(line: 88, column: 19, scope: !170, inlinedAt: !589)
!651 = !DILocation(line: 89, column: 5, scope: !170, inlinedAt: !589)
!652 = !DILocation(line: 91, column: 20, scope: !186, inlinedAt: !589)
!653 = !DILocation(line: 91, column: 13, scope: !186, inlinedAt: !589)
!654 = !DILocation(line: 93, column: 20, scope: !186, inlinedAt: !589)
!655 = !DILocation(line: 93, column: 34, scope: !186, inlinedAt: !589)
!656 = !DILocation(line: 93, column: 13, scope: !186, inlinedAt: !589)
!657 = !DILocation(line: 95, column: 20, scope: !186, inlinedAt: !589)
!658 = !DILocation(line: 95, column: 35, scope: !186, inlinedAt: !589)
!659 = !DILocation(line: 95, column: 13, scope: !186, inlinedAt: !589)
!660 = !DILocation(line: 97, column: 20, scope: !186, inlinedAt: !589)
!661 = !DILocation(line: 97, column: 35, scope: !186, inlinedAt: !589)
!662 = !DILocation(line: 97, column: 13, scope: !186, inlinedAt: !589)
!663 = !DILocation(line: 99, column: 20, scope: !186, inlinedAt: !589)
!664 = !DILocation(line: 99, column: 35, scope: !186, inlinedAt: !589)
!665 = !DILocation(line: 99, column: 13, scope: !186, inlinedAt: !589)
!666 = !DILocation(line: 0, scope: !186, inlinedAt: !589)
!667 = !DILocation(line: 229, column: 57, scope: !590)
!668 = !DILocation(line: 229, column: 18, scope: !590)
!669 = !DILocation(line: 87, column: 39, scope: !170, inlinedAt: !670)
!670 = distinct !DILocation(line: 231, column: 57, scope: !590)
!671 = !DILocation(line: 88, column: 27, scope: !170, inlinedAt: !670)
!672 = !DILocation(line: 88, column: 19, scope: !170, inlinedAt: !670)
!673 = !DILocation(line: 89, column: 5, scope: !170, inlinedAt: !670)
!674 = !DILocation(line: 91, column: 20, scope: !186, inlinedAt: !670)
!675 = !DILocation(line: 91, column: 13, scope: !186, inlinedAt: !670)
!676 = !DILocation(line: 93, column: 20, scope: !186, inlinedAt: !670)
!677 = !DILocation(line: 93, column: 34, scope: !186, inlinedAt: !670)
!678 = !DILocation(line: 93, column: 13, scope: !186, inlinedAt: !670)
!679 = !DILocation(line: 95, column: 20, scope: !186, inlinedAt: !670)
!680 = !DILocation(line: 95, column: 35, scope: !186, inlinedAt: !670)
!681 = !DILocation(line: 95, column: 13, scope: !186, inlinedAt: !670)
!682 = !DILocation(line: 97, column: 20, scope: !186, inlinedAt: !670)
!683 = !DILocation(line: 97, column: 35, scope: !186, inlinedAt: !670)
!684 = !DILocation(line: 97, column: 13, scope: !186, inlinedAt: !670)
!685 = !DILocation(line: 99, column: 20, scope: !186, inlinedAt: !670)
!686 = !DILocation(line: 99, column: 35, scope: !186, inlinedAt: !670)
!687 = !DILocation(line: 99, column: 13, scope: !186, inlinedAt: !670)
!688 = !DILocation(line: 0, scope: !186, inlinedAt: !670)
!689 = !DILocation(line: 231, column: 57, scope: !590)
!690 = !DILocation(line: 231, column: 18, scope: !590)
!691 = !DILocation(line: 233, column: 9, scope: !590)
!692 = !DILocation(line: 0, scope: !590)
!693 = !DILocation(line: 234, column: 16, scope: !563)
!694 = !DILocalVariable(name: "o", arg: 1, scope: !695, file: !1, line: 311, type: !698)
!695 = distinct !DISubprogram(name: "hashTypeLength", scope: !1, file: !1, line: 311, type: !696, isLocal: false, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !700)
!696 = !DISubroutineType(types: !697)
!697 = !{!27, !698}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!700 = !{!694, !701}
!701 = !DILocalVariable(name: "length", scope: !695, file: !1, line: 312, type: !27)
!702 = !DILocation(line: 311, column: 42, scope: !695, inlinedAt: !703)
!703 = distinct !DILocation(line: 237, column: 13, scope: !704)
!704 = distinct !DILexicalBlock(scope: !563, file: !1, line: 237, column: 13)
!705 = !DILocation(line: 312, column: 19, scope: !695, inlinedAt: !703)
!706 = !DILocation(line: 314, column: 12, scope: !707, inlinedAt: !703)
!707 = distinct !DILexicalBlock(scope: !695, file: !1, line: 314, column: 9)
!708 = !DILocation(line: 314, column: 9, scope: !695, inlinedAt: !703)
!709 = !DILocation(line: 315, column: 18, scope: !710, inlinedAt: !703)
!710 = distinct !DILexicalBlock(scope: !707, file: !1, line: 314, column: 46)
!711 = !DILocation(line: 315, column: 37, scope: !710, inlinedAt: !703)
!712 = !DILocation(line: 316, column: 5, scope: !710, inlinedAt: !703)
!713 = !DILocation(line: 317, column: 18, scope: !714, inlinedAt: !703)
!714 = distinct !DILexicalBlock(scope: !715, file: !1, line: 316, column: 48)
!715 = distinct !DILexicalBlock(scope: !707, file: !1, line: 316, column: 16)
!716 = !{!717, !203, i64 24}
!717 = !{!"dictht", !162, i64 0, !203, i64 8, !203, i64 16, !203, i64 24}
!718 = !DILocation(line: 319, column: 9, scope: !719, inlinedAt: !703)
!719 = distinct !DILexicalBlock(scope: !715, file: !1, line: 318, column: 12)
!720 = !DILocation(line: 0, scope: !714, inlinedAt: !703)
!721 = !DILocation(line: 237, column: 40, scope: !704)
!722 = !{!723, !203, i64 2800}
!723 = !{!"redisServer", !168, i64 0, !162, i64 8, !162, i64 16, !162, i64 24, !168, i64 32, !168, i64 36, !168, i64 40, !162, i64 48, !162, i64 56, !162, i64 64, !162, i64 72, !168, i64 80, !168, i64 84, !168, i64 88, !168, i64 92, !162, i64 96, !162, i64 104, !168, i64 112, !168, i64 116, !163, i64 120, !168, i64 164, !203, i64 168, !168, i64 176, !162, i64 184, !162, i64 192, !162, i64 200, !163, i64 208, !168, i64 216, !168, i64 220, !163, i64 224, !168, i64 352, !162, i64 360, !168, i64 368, !163, i64 372, !168, i64 436, !168, i64 440, !163, i64 444, !168, i64 508, !162, i64 512, !162, i64 520, !162, i64 528, !162, i64 536, !162, i64 544, !162, i64 552, !162, i64 560, !168, i64 568, !424, i64 576, !163, i64 584, !162, i64 840, !203, i64 848, !168, i64 856, !168, i64 860, !203, i64 864, !203, i64 872, !203, i64 880, !203, i64 888, !162, i64 896, !162, i64 904, !162, i64 912, !162, i64 920, !162, i64 928, !162, i64 936, !162, i64 944, !162, i64 952, !162, i64 960, !162, i64 968, !162, i64 976, !162, i64 984, !162, i64 992, !203, i64 1000, !424, i64 1008, !424, i64 1016, !424, i64 1024, !724, i64 1032, !424, i64 1040, !424, i64 1048, !424, i64 1056, !424, i64 1064, !424, i64 1072, !424, i64 1080, !424, i64 1088, !424, i64 1096, !424, i64 1104, !203, i64 1112, !424, i64 1120, !724, i64 1128, !424, i64 1136, !424, i64 1144, !424, i64 1152, !424, i64 1160, !162, i64 1168, !424, i64 1176, !424, i64 1184, !203, i64 1192, !725, i64 1200, !424, i64 1240, !424, i64 1248, !203, i64 1256, !203, i64 1264, !163, i64 1272, !168, i64 1728, !168, i64 1732, !168, i64 1736, !168, i64 1740, !168, i64 1744, !203, i64 1752, !168, i64 1760, !168, i64 1764, !168, i64 1768, !168, i64 1772, !203, i64 1776, !203, i64 1784, !168, i64 1792, !168, i64 1796, !168, i64 1800, !168, i64 1804, !163, i64 1808, !168, i64 1880, !168, i64 1884, !162, i64 1888, !168, i64 1896, !168, i64 1900, !203, i64 1904, !203, i64 1912, !203, i64 1920, !203, i64 1928, !168, i64 1936, !168, i64 1940, !162, i64 1944, !162, i64 1952, !168, i64 1960, !168, i64 1964, !203, i64 1968, !203, i64 1976, !203, i64 1984, !203, i64 1992, !168, i64 2000, !203, i64 2008, !168, i64 2016, !168, i64 2020, !168, i64 2024, !168, i64 2028, !168, i64 2032, !168, i64 2036, !168, i64 2040, !168, i64 2044, !168, i64 2048, !168, i64 2052, !168, i64 2056, !168, i64 2060, !168, i64 2064, !162, i64 2072, !424, i64 2080, !424, i64 2088, !168, i64 2096, !162, i64 2104, !168, i64 2112, !162, i64 2120, !168, i64 2128, !168, i64 2132, !203, i64 2136, !203, i64 2144, !203, i64 2152, !203, i64 2160, !168, i64 2168, !168, i64 2172, !168, i64 2176, !168, i64 2180, !168, i64 2184, !168, i64 2188, !163, i64 2192, !726, i64 2200, !727, i64 2224, !162, i64 2240, !168, i64 2248, !162, i64 2256, !168, i64 2264, !163, i64 2268, !163, i64 2309, !424, i64 2352, !424, i64 2360, !168, i64 2368, !168, i64 2372, !162, i64 2376, !424, i64 2384, !424, i64 2392, !424, i64 2400, !424, i64 2408, !203, i64 2416, !203, i64 2424, !168, i64 2432, !168, i64 2436, !168, i64 2440, !168, i64 2444, !168, i64 2448, !162, i64 2456, !162, i64 2464, !168, i64 2472, !168, i64 2476, !162, i64 2480, !162, i64 2488, !168, i64 2496, !168, i64 2500, !203, i64 2504, !203, i64 2512, !203, i64 2520, !168, i64 2528, !168, i64 2532, !162, i64 2536, !203, i64 2544, !168, i64 2552, !168, i64 2556, !168, i64 2560, !203, i64 2568, !168, i64 2576, !168, i64 2580, !168, i64 2584, !162, i64 2592, !163, i64 2600, !424, i64 2648, !168, i64 2656, !162, i64 2664, !162, i64 2672, !168, i64 2680, !162, i64 2688, !168, i64 2696, !168, i64 2700, !424, i64 2704, !168, i64 2712, !168, i64 2716, !168, i64 2720, !168, i64 2724, !424, i64 2728, !168, i64 2736, !163, i64 2740, !162, i64 2768, !162, i64 2776, !168, i64 2784, !168, i64 2788, !168, i64 2792, !168, i64 2796, !203, i64 2800, !203, i64 2808, !203, i64 2816, !203, i64 2824, !203, i64 2832, !203, i64 2840, !203, i64 2848, !203, i64 2856, !168, i64 2864, !168, i64 2868, !203, i64 2872, !203, i64 2880, !168, i64 2888, !424, i64 2896, !162, i64 2904, !162, i64 2912, !168, i64 2920, !168, i64 2924, !424, i64 2928, !162, i64 2936, !162, i64 2944, !168, i64 2952, !168, i64 2956, !168, i64 2960, !168, i64 2964, !162, i64 2968, !168, i64 2976, !168, i64 2980, !168, i64 2984, !162, i64 2992, !162, i64 3000, !162, i64 3008, !162, i64 3016, !424, i64 3024, !424, i64 3032, !424, i64 3040, !168, i64 3048, !168, i64 3052, !168, i64 3056, !168, i64 3060, !168, i64 3064, !168, i64 3068, !168, i64 3072, !168, i64 3076, !168, i64 3080, !168, i64 3084, !168, i64 3088, !424, i64 3096, !162, i64 3104, !162, i64 3112, !162, i64 3120, !168, i64 3128, !168, i64 3132, !168, i64 3136, !203, i64 3144, !162, i64 3152, !162, i64 3160, !162, i64 3168}
!724 = !{!"double", !163, i64 0}
!725 = !{!"malloc_stats", !203, i64 0, !203, i64 8, !203, i64 16, !203, i64 24, !203, i64 32}
!726 = !{!"", !168, i64 0, !203, i64 8, !424, i64 16}
!727 = !{!"redisOpArray", !162, i64 0, !168, i64 8}
!728 = !DILocation(line: 237, column: 31, scope: !704)
!729 = !DILocation(line: 237, column: 13, scope: !563)
!730 = !DILocation(line: 500, column: 28, scope: !209, inlinedAt: !731)
!731 = distinct !DILocation(line: 238, column: 13, scope: !704)
!732 = !DILocation(line: 500, column: 35, scope: !209, inlinedAt: !731)
!733 = !DILocation(line: 501, column: 12, scope: !219, inlinedAt: !731)
!734 = !DILocation(line: 501, column: 9, scope: !209, inlinedAt: !731)
!735 = !DILocation(line: 504, column: 9, scope: !222, inlinedAt: !731)
!736 = !DILocation(line: 506, column: 9, scope: !225, inlinedAt: !731)
!737 = !DILocation(line: 502, column: 9, scope: !227, inlinedAt: !731)
!738 = !DILocation(line: 238, column: 13, scope: !704)
!739 = !DILocation(line: 239, column: 5, scope: !564)
!740 = !DILocation(line: 239, column: 5, scope: !563)
!741 = !DILocation(line: 240, column: 37, scope: !568)
!742 = !DILocation(line: 240, column: 25, scope: !568)
!743 = !DILocation(line: 240, column: 20, scope: !568)
!744 = !DILocation(line: 241, column: 13, scope: !572)
!745 = !DILocation(line: 241, column: 13, scope: !568)
!746 = !DILocation(line: 242, column: 21, scope: !747)
!747 = distinct !DILexicalBlock(scope: !572, file: !1, line: 241, column: 17)
!748 = !DILocation(line: 242, column: 13, scope: !747)
!749 = !DILocation(line: 243, column: 23, scope: !750)
!750 = distinct !DILexicalBlock(scope: !747, file: !1, line: 243, column: 17)
!751 = !DILocation(line: 243, column: 17, scope: !747)
!752 = !DILocation(line: 247, column: 34, scope: !753)
!753 = distinct !DILexicalBlock(scope: !750, file: !1, line: 246, column: 20)
!754 = !DILocation(line: 0, scope: !755)
!755 = distinct !DILexicalBlock(scope: !750, file: !1, line: 243, column: 46)
!756 = !DILocation(line: 250, column: 9, scope: !747)
!757 = !DILocation(line: 252, column: 23, scope: !758)
!758 = distinct !DILexicalBlock(scope: !571, file: !1, line: 252, column: 17)
!759 = !DILocation(line: 252, column: 17, scope: !571)
!760 = !DILocation(line: 256, column: 21, scope: !761)
!761 = distinct !DILexicalBlock(scope: !758, file: !1, line: 255, column: 20)
!762 = !DILocation(line: 251, column: 17, scope: !571)
!763 = !DILocation(line: 0, scope: !761)
!764 = !DILocation(line: 258, column: 23, scope: !765)
!765 = distinct !DILexicalBlock(scope: !571, file: !1, line: 258, column: 17)
!766 = !DILocation(line: 258, column: 17, scope: !571)
!767 = !DILocation(line: 262, column: 21, scope: !768)
!768 = distinct !DILexicalBlock(scope: !765, file: !1, line: 261, column: 20)
!769 = !DILocation(line: 251, column: 19, scope: !571)
!770 = !DILocation(line: 0, scope: !768)
!771 = !DILocation(line: 264, column: 24, scope: !571)
!772 = !DILocation(line: 264, column: 13, scope: !571)
!773 = !DILocation(line: 267, column: 9, scope: !774)
!774 = distinct !DILexicalBlock(scope: !569, file: !1, line: 266, column: 12)
!775 = !DILocation(line: 0, scope: !747)
!776 = !DILocation(line: 272, column: 15, scope: !777)
!777 = distinct !DILexicalBlock(scope: !553, file: !1, line: 272, column: 9)
!778 = !DILocation(line: 272, column: 40, scope: !777)
!779 = !DILocation(line: 272, column: 37, scope: !777)
!780 = !DILocation(line: 272, column: 47, scope: !777)
!781 = !DILocation(line: 273, column: 15, scope: !782)
!782 = distinct !DILexicalBlock(scope: !553, file: !1, line: 273, column: 9)
!783 = !DILocation(line: 273, column: 40, scope: !782)
!784 = !DILocation(line: 273, column: 37, scope: !782)
!785 = !DILocation(line: 273, column: 47, scope: !782)
!786 = !DILocation(line: 274, column: 5, scope: !553)
!787 = !DILocation(line: 311, column: 42, scope: !695)
!788 = !DILocation(line: 312, column: 19, scope: !695)
!789 = !DILocation(line: 314, column: 12, scope: !707)
!790 = !DILocation(line: 314, column: 9, scope: !695)
!791 = !DILocation(line: 315, column: 32, scope: !710)
!792 = !DILocation(line: 315, column: 18, scope: !710)
!793 = !DILocation(line: 315, column: 37, scope: !710)
!794 = !DILocation(line: 316, column: 5, scope: !710)
!795 = !DILocation(line: 317, column: 18, scope: !714)
!796 = !DILocation(line: 319, column: 9, scope: !719)
!797 = !DILocation(line: 0, scope: !714)
!798 = !DILocation(line: 321, column: 5, scope: !695)
!799 = distinct !DISubprogram(name: "hashTypeDelete", scope: !1, file: !1, line: 279, type: !509, isLocal: false, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !800)
!800 = !{!801, !802, !803, !804, !807}
!801 = !DILocalVariable(name: "o", arg: 1, scope: !799, file: !1, line: 279, type: !128)
!802 = !DILocalVariable(name: "field", arg: 2, scope: !799, file: !1, line: 279, type: !176)
!803 = !DILocalVariable(name: "deleted", scope: !799, file: !1, line: 280, type: !39)
!804 = !DILocalVariable(name: "zl", scope: !805, file: !1, line: 283, type: !5)
!805 = distinct !DILexicalBlock(scope: !806, file: !1, line: 282, column: 46)
!806 = distinct !DILexicalBlock(scope: !799, file: !1, line: 282, column: 9)
!807 = !DILocalVariable(name: "fptr", scope: !805, file: !1, line: 283, type: !5)
!808 = !DILocation(line: 279, column: 26, scope: !799)
!809 = !DILocation(line: 279, column: 33, scope: !799)
!810 = !DILocation(line: 280, column: 9, scope: !799)
!811 = !DILocation(line: 282, column: 12, scope: !806)
!812 = !DILocation(line: 282, column: 9, scope: !799)
!813 = !DILocation(line: 283, column: 9, scope: !805)
!814 = !DILocation(line: 285, column: 17, scope: !805)
!815 = !DILocation(line: 283, column: 24, scope: !805)
!816 = !DILocation(line: 286, column: 16, scope: !805)
!817 = !DILocation(line: 283, column: 29, scope: !805)
!818 = !DILocation(line: 286, column: 14, scope: !805)
!819 = !DILocation(line: 287, column: 18, scope: !820)
!820 = distinct !DILexicalBlock(scope: !805, file: !1, line: 287, column: 13)
!821 = !DILocation(line: 287, column: 13, scope: !805)
!822 = !DILocation(line: 87, column: 39, scope: !170, inlinedAt: !823)
!823 = distinct !DILocation(line: 288, column: 61, scope: !824)
!824 = distinct !DILexicalBlock(scope: !820, file: !1, line: 287, column: 27)
!825 = !DILocation(line: 88, column: 27, scope: !170, inlinedAt: !823)
!826 = !DILocation(line: 88, column: 19, scope: !170, inlinedAt: !823)
!827 = !DILocation(line: 89, column: 5, scope: !170, inlinedAt: !823)
!828 = !DILocation(line: 91, column: 20, scope: !186, inlinedAt: !823)
!829 = !DILocation(line: 91, column: 13, scope: !186, inlinedAt: !823)
!830 = !DILocation(line: 93, column: 20, scope: !186, inlinedAt: !823)
!831 = !DILocation(line: 93, column: 34, scope: !186, inlinedAt: !823)
!832 = !DILocation(line: 93, column: 13, scope: !186, inlinedAt: !823)
!833 = !DILocation(line: 95, column: 20, scope: !186, inlinedAt: !823)
!834 = !DILocation(line: 95, column: 35, scope: !186, inlinedAt: !823)
!835 = !DILocation(line: 95, column: 13, scope: !186, inlinedAt: !823)
!836 = !DILocation(line: 97, column: 20, scope: !186, inlinedAt: !823)
!837 = !DILocation(line: 97, column: 35, scope: !186, inlinedAt: !823)
!838 = !DILocation(line: 97, column: 13, scope: !186, inlinedAt: !823)
!839 = !DILocation(line: 99, column: 20, scope: !186, inlinedAt: !823)
!840 = !DILocation(line: 99, column: 35, scope: !186, inlinedAt: !823)
!841 = !DILocation(line: 99, column: 13, scope: !186, inlinedAt: !823)
!842 = !DILocation(line: 0, scope: !186, inlinedAt: !823)
!843 = !DILocation(line: 288, column: 61, scope: !824)
!844 = !DILocation(line: 288, column: 20, scope: !824)
!845 = !DILocation(line: 288, column: 18, scope: !824)
!846 = !DILocation(line: 289, column: 22, scope: !847)
!847 = distinct !DILexicalBlock(scope: !824, file: !1, line: 289, column: 17)
!848 = !DILocation(line: 289, column: 17, scope: !824)
!849 = !DILocation(line: 290, column: 22, scope: !850)
!850 = distinct !DILexicalBlock(scope: !847, file: !1, line: 289, column: 31)
!851 = !DILocation(line: 291, column: 22, scope: !850)
!852 = !DILocation(line: 292, column: 24, scope: !850)
!853 = !DILocation(line: 294, column: 13, scope: !850)
!854 = !DILocation(line: 0, scope: !799)
!855 = !DILocation(line: 296, column: 5, scope: !806)
!856 = !DILocation(line: 296, column: 5, scope: !805)
!857 = !DILocation(line: 297, column: 34, scope: !858)
!858 = distinct !DILexicalBlock(scope: !859, file: !1, line: 297, column: 13)
!859 = distinct !DILexicalBlock(scope: !860, file: !1, line: 296, column: 48)
!860 = distinct !DILexicalBlock(scope: !806, file: !1, line: 296, column: 16)
!861 = !DILocation(line: 297, column: 13, scope: !858)
!862 = !DILocation(line: 297, column: 46, scope: !858)
!863 = !DILocation(line: 297, column: 13, scope: !859)
!864 = !DILocation(line: 301, column: 34, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !1, line: 301, column: 17)
!866 = distinct !DILexicalBlock(scope: !858, file: !1, line: 297, column: 55)
!867 = !DILocation(line: 301, column: 17, scope: !865)
!868 = !DILocation(line: 301, column: 17, scope: !866)
!869 = !DILocation(line: 301, column: 54, scope: !865)
!870 = !DILocation(line: 301, column: 40, scope: !865)
!871 = !DILocation(line: 305, column: 9, scope: !872)
!872 = distinct !DILexicalBlock(scope: !860, file: !1, line: 304, column: 12)
!873 = !DILocation(line: 307, column: 5, scope: !799)
!874 = distinct !DISubprogram(name: "hashTypeInitIterator", scope: !1, file: !1, line: 324, type: !875, isLocal: false, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !898)
!875 = !DISubroutineType(types: !876)
!876 = !{!877, !128}
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashTypeIterator", file: !130, line: 1375, baseType: !879)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 1367, size: 384, elements: !880)
!880 = !{!881, !882, !883, !884, !885, !897}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !879, file: !130, line: 1368, baseType: !128, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !879, file: !130, line: 1369, baseType: !39, size: 32, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "fptr", scope: !879, file: !130, line: 1371, baseType: !5, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "vptr", scope: !879, file: !130, line: 1371, baseType: !5, size: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !879, file: !130, line: 1373, baseType: !886, size: 64, offset: 256)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !11, line: 95, baseType: !888)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !11, line: 88, size: 384, elements: !889)
!889 = !{!890, !891, !892, !893, !894, !895, !896}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !888, file: !11, line: 89, baseType: !9, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !888, file: !11, line: 90, baseType: !66, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !888, file: !11, line: 91, baseType: !39, size: 32, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !888, file: !11, line: 91, baseType: !39, size: 32, offset: 160)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !888, file: !11, line: 92, baseType: !53, size: 64, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !888, file: !11, line: 92, baseType: !53, size: 64, offset: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !888, file: !11, line: 94, baseType: !247, size: 64, offset: 320)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !879, file: !130, line: 1374, baseType: !53, size: 64, offset: 320)
!898 = !{!899, !900}
!899 = !DILocalVariable(name: "subject", arg: 1, scope: !874, file: !1, line: 324, type: !128)
!900 = !DILocalVariable(name: "hi", scope: !874, file: !1, line: 325, type: !877)
!901 = !DILocation(line: 324, column: 46, scope: !874)
!902 = !DILocation(line: 325, column: 28, scope: !874)
!903 = !DILocation(line: 325, column: 23, scope: !874)
!904 = !DILocation(line: 326, column: 9, scope: !874)
!905 = !DILocation(line: 326, column: 17, scope: !874)
!906 = !{!907, !162, i64 0}
!907 = !{!"", !162, i64 0, !168, i64 8, !162, i64 16, !162, i64 24, !162, i64 32, !162, i64 40}
!908 = !DILocation(line: 327, column: 29, scope: !874)
!909 = !DILocation(line: 327, column: 9, scope: !874)
!910 = !DILocation(line: 327, column: 18, scope: !874)
!911 = !{!907, !168, i64 8}
!912 = !DILocation(line: 329, column: 9, scope: !874)
!913 = !DILocation(line: 330, column: 13, scope: !914)
!914 = distinct !DILexicalBlock(scope: !915, file: !1, line: 329, column: 47)
!915 = distinct !DILexicalBlock(scope: !874, file: !1, line: 329, column: 9)
!916 = !DILocation(line: 330, column: 18, scope: !914)
!917 = !DILocation(line: 332, column: 5, scope: !914)
!918 = !DILocation(line: 333, column: 43, scope: !919)
!919 = distinct !DILexicalBlock(scope: !920, file: !1, line: 332, column: 49)
!920 = distinct !DILexicalBlock(scope: !915, file: !1, line: 332, column: 16)
!921 = !DILocation(line: 333, column: 18, scope: !919)
!922 = !DILocation(line: 333, column: 13, scope: !919)
!923 = !DILocation(line: 333, column: 16, scope: !919)
!924 = !{!907, !162, i64 32}
!925 = !DILocation(line: 335, column: 9, scope: !926)
!926 = distinct !DILexicalBlock(scope: !920, file: !1, line: 334, column: 12)
!927 = !DILocation(line: 337, column: 5, scope: !874)
!928 = distinct !DISubprogram(name: "hashTypeReleaseIterator", scope: !1, file: !1, line: 340, type: !929, isLocal: false, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !931)
!929 = !DISubroutineType(types: !930)
!930 = !{null, !877}
!931 = !{!932}
!932 = !DILocalVariable(name: "hi", arg: 1, scope: !928, file: !1, line: 340, type: !877)
!933 = !DILocation(line: 340, column: 48, scope: !928)
!934 = !DILocation(line: 341, column: 13, scope: !935)
!935 = distinct !DILexicalBlock(scope: !928, file: !1, line: 341, column: 9)
!936 = !DILocation(line: 341, column: 22, scope: !935)
!937 = !DILocation(line: 341, column: 9, scope: !928)
!938 = !DILocation(line: 342, column: 33, scope: !935)
!939 = !DILocation(line: 342, column: 9, scope: !935)
!940 = !DILocation(line: 343, column: 11, scope: !928)
!941 = !DILocation(line: 343, column: 5, scope: !928)
!942 = !DILocation(line: 344, column: 1, scope: !928)
!943 = distinct !DISubprogram(name: "hashTypeNext", scope: !1, file: !1, line: 348, type: !944, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !946)
!944 = !DISubroutineType(types: !945)
!945 = !{!39, !877}
!946 = !{!947, !948, !951, !952}
!947 = !DILocalVariable(name: "hi", arg: 1, scope: !943, file: !1, line: 348, type: !877)
!948 = !DILocalVariable(name: "zl", scope: !949, file: !1, line: 350, type: !5)
!949 = distinct !DILexicalBlock(scope: !950, file: !1, line: 349, column: 47)
!950 = distinct !DILexicalBlock(scope: !943, file: !1, line: 349, column: 9)
!951 = !DILocalVariable(name: "fptr", scope: !949, file: !1, line: 351, type: !5)
!952 = !DILocalVariable(name: "vptr", scope: !949, file: !1, line: 351, type: !5)
!953 = !DILocation(line: 348, column: 36, scope: !943)
!954 = !DILocation(line: 349, column: 13, scope: !950)
!955 = !DILocation(line: 349, column: 9, scope: !943)
!956 = !DILocation(line: 353, column: 18, scope: !949)
!957 = !DILocation(line: 353, column: 27, scope: !949)
!958 = !DILocation(line: 350, column: 24, scope: !949)
!959 = !DILocation(line: 354, column: 20, scope: !949)
!960 = !{!907, !162, i64 16}
!961 = !DILocation(line: 351, column: 24, scope: !949)
!962 = !DILocation(line: 355, column: 20, scope: !949)
!963 = !{!907, !162, i64 24}
!964 = !DILocation(line: 351, column: 31, scope: !949)
!965 = !DILocation(line: 357, column: 18, scope: !966)
!966 = distinct !DILexicalBlock(scope: !949, file: !1, line: 357, column: 13)
!967 = !DILocation(line: 0, scope: !968)
!968 = distinct !DILexicalBlock(scope: !966, file: !1, line: 361, column: 16)
!969 = !DILocation(line: 357, column: 13, scope: !949)
!970 = !DILocation(line: 359, column: 13, scope: !971)
!971 = distinct !DILexicalBlock(scope: !966, file: !1, line: 357, column: 27)
!972 = !DILocation(line: 360, column: 20, scope: !971)
!973 = !DILocation(line: 361, column: 9, scope: !971)
!974 = !DILocation(line: 363, column: 13, scope: !968)
!975 = !DILocation(line: 364, column: 20, scope: !968)
!976 = !DILocation(line: 366, column: 18, scope: !977)
!977 = distinct !DILexicalBlock(scope: !949, file: !1, line: 366, column: 13)
!978 = !DILocation(line: 366, column: 13, scope: !949)
!979 = !DILocation(line: 369, column: 16, scope: !949)
!980 = !DILocation(line: 370, column: 9, scope: !949)
!981 = !DILocation(line: 373, column: 18, scope: !949)
!982 = !DILocation(line: 374, column: 18, scope: !949)
!983 = !DILocation(line: 376, column: 36, scope: !984)
!984 = distinct !DILexicalBlock(scope: !985, file: !1, line: 376, column: 13)
!985 = distinct !DILexicalBlock(scope: !986, file: !1, line: 375, column: 49)
!986 = distinct !DILexicalBlock(scope: !950, file: !1, line: 375, column: 16)
!987 = !DILocation(line: 376, column: 23, scope: !984)
!988 = !DILocation(line: 376, column: 18, scope: !984)
!989 = !DILocation(line: 376, column: 21, scope: !984)
!990 = !{!907, !162, i64 40}
!991 = !DILocation(line: 376, column: 41, scope: !984)
!992 = !DILocation(line: 376, column: 13, scope: !985)
!993 = !DILocation(line: 378, column: 9, scope: !994)
!994 = distinct !DILexicalBlock(scope: !986, file: !1, line: 377, column: 12)
!995 = !DILocation(line: 380, column: 5, scope: !943)
!996 = !DILocation(line: 0, scope: !984)
!997 = !DILocation(line: 381, column: 1, scope: !943)
!998 = distinct !DISubprogram(name: "hashTypeCurrentFromZiplist", scope: !1, file: !1, line: 385, type: !999, isLocal: false, isDefinition: true, scopeLine: 389, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1001)
!999 = !DISubroutineType(types: !1000)
!1000 = !{null, !877, !39, !244, !245, !246}
!1001 = !{!1002, !1003, !1004, !1005, !1006, !1007}
!1002 = !DILocalVariable(name: "hi", arg: 1, scope: !998, file: !1, line: 385, type: !877)
!1003 = !DILocalVariable(name: "what", arg: 2, scope: !998, file: !1, line: 385, type: !39)
!1004 = !DILocalVariable(name: "vstr", arg: 3, scope: !998, file: !1, line: 386, type: !244)
!1005 = !DILocalVariable(name: "vlen", arg: 4, scope: !998, file: !1, line: 387, type: !245)
!1006 = !DILocalVariable(name: "vll", arg: 5, scope: !998, file: !1, line: 388, type: !246)
!1007 = !DILocalVariable(name: "ret", scope: !998, file: !1, line: 390, type: !39)
!1008 = !DILocation(line: 385, column: 51, scope: !998)
!1009 = !DILocation(line: 385, column: 59, scope: !998)
!1010 = !DILocation(line: 386, column: 49, scope: !998)
!1011 = !DILocation(line: 387, column: 47, scope: !998)
!1012 = !DILocation(line: 388, column: 44, scope: !998)
!1013 = !DILocation(line: 392, column: 5, scope: !998)
!1014 = !DILocation(line: 394, column: 14, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !998, file: !1, line: 394, column: 9)
!1016 = !DILocation(line: 394, column: 9, scope: !998)
!1017 = !DILocation(line: 395, column: 30, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 394, column: 30)
!1019 = !DILocation(line: 395, column: 15, scope: !1018)
!1020 = !DILocation(line: 390, column: 9, scope: !998)
!1021 = !DILocation(line: 396, column: 9, scope: !1018)
!1022 = !DILocation(line: 398, column: 30, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 397, column: 12)
!1024 = !DILocation(line: 398, column: 15, scope: !1023)
!1025 = !DILocation(line: 399, column: 9, scope: !1023)
!1026 = !DILocation(line: 401, column: 1, scope: !998)
!1027 = distinct !DISubprogram(name: "hashTypeCurrentFromHashTable", scope: !1, file: !1, line: 406, type: !1028, isLocal: false, isDefinition: true, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1030)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!176, !877, !39}
!1030 = !{!1031, !1032}
!1031 = !DILocalVariable(name: "hi", arg: 1, scope: !1027, file: !1, line: 406, type: !877)
!1032 = !DILocalVariable(name: "what", arg: 2, scope: !1027, file: !1, line: 406, type: !39)
!1033 = !DILocation(line: 406, column: 52, scope: !1027)
!1034 = !DILocation(line: 406, column: 60, scope: !1027)
!1035 = !DILocation(line: 407, column: 5, scope: !1027)
!1036 = !DILocation(line: 409, column: 14, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1027, file: !1, line: 409, column: 9)
!1038 = !DILocation(line: 0, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1037, file: !1, line: 411, column: 12)
!1040 = !DILocation(line: 410, column: 16, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1037, file: !1, line: 409, column: 30)
!1042 = !DILocation(line: 412, column: 16, scope: !1039)
!1043 = !DILocation(line: 409, column: 9, scope: !1027)
!1044 = !DILocation(line: 414, column: 1, scope: !1027)
!1045 = distinct !DISubprogram(name: "hashTypeCurrentObject", scope: !1, file: !1, line: 426, type: !999, isLocal: false, isDefinition: true, scopeLine: 426, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1046)
!1046 = !{!1047, !1048, !1049, !1050, !1051, !1052}
!1047 = !DILocalVariable(name: "hi", arg: 1, scope: !1045, file: !1, line: 426, type: !877)
!1048 = !DILocalVariable(name: "what", arg: 2, scope: !1045, file: !1, line: 426, type: !39)
!1049 = !DILocalVariable(name: "vstr", arg: 3, scope: !1045, file: !1, line: 426, type: !244)
!1050 = !DILocalVariable(name: "vlen", arg: 4, scope: !1045, file: !1, line: 426, type: !245)
!1051 = !DILocalVariable(name: "vll", arg: 5, scope: !1045, file: !1, line: 426, type: !246)
!1052 = !DILocalVariable(name: "ele", scope: !1053, file: !1, line: 431, type: !176)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 430, column: 49)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 430, column: 16)
!1055 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 427, column: 9)
!1056 = !DILocation(line: 426, column: 46, scope: !1045)
!1057 = !DILocation(line: 426, column: 54, scope: !1045)
!1058 = !DILocation(line: 426, column: 76, scope: !1045)
!1059 = !DILocation(line: 426, column: 96, scope: !1045)
!1060 = !DILocation(line: 426, column: 113, scope: !1045)
!1061 = !DILocation(line: 427, column: 13, scope: !1055)
!1062 = !DILocation(line: 427, column: 9, scope: !1045)
!1063 = !DILocation(line: 428, column: 15, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 427, column: 47)
!1065 = !DILocation(line: 429, column: 9, scope: !1064)
!1066 = !DILocation(line: 430, column: 5, scope: !1064)
!1067 = !DILocation(line: 406, column: 52, scope: !1027, inlinedAt: !1068)
!1068 = distinct !DILocation(line: 431, column: 19, scope: !1053)
!1069 = !DILocation(line: 406, column: 60, scope: !1027, inlinedAt: !1068)
!1070 = !DILocation(line: 409, column: 14, scope: !1037, inlinedAt: !1068)
!1071 = !DILocation(line: 0, scope: !1039, inlinedAt: !1068)
!1072 = !DILocation(line: 410, column: 16, scope: !1041, inlinedAt: !1068)
!1073 = !DILocation(line: 412, column: 16, scope: !1039, inlinedAt: !1068)
!1074 = !DILocation(line: 409, column: 9, scope: !1027, inlinedAt: !1068)
!1075 = !DILocation(line: 431, column: 13, scope: !1053)
!1076 = !DILocation(line: 432, column: 15, scope: !1053)
!1077 = !DILocation(line: 87, column: 39, scope: !170, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 433, column: 17, scope: !1053)
!1079 = !DILocation(line: 88, column: 27, scope: !170, inlinedAt: !1078)
!1080 = !DILocation(line: 88, column: 19, scope: !170, inlinedAt: !1078)
!1081 = !DILocation(line: 89, column: 5, scope: !170, inlinedAt: !1078)
!1082 = !DILocation(line: 91, column: 20, scope: !186, inlinedAt: !1078)
!1083 = !DILocation(line: 91, column: 13, scope: !186, inlinedAt: !1078)
!1084 = !DILocation(line: 93, column: 20, scope: !186, inlinedAt: !1078)
!1085 = !DILocation(line: 93, column: 34, scope: !186, inlinedAt: !1078)
!1086 = !DILocation(line: 93, column: 13, scope: !186, inlinedAt: !1078)
!1087 = !DILocation(line: 95, column: 20, scope: !186, inlinedAt: !1078)
!1088 = !DILocation(line: 95, column: 35, scope: !186, inlinedAt: !1078)
!1089 = !DILocation(line: 95, column: 13, scope: !186, inlinedAt: !1078)
!1090 = !DILocation(line: 97, column: 20, scope: !186, inlinedAt: !1078)
!1091 = !DILocation(line: 97, column: 35, scope: !186, inlinedAt: !1078)
!1092 = !DILocation(line: 97, column: 13, scope: !186, inlinedAt: !1078)
!1093 = !DILocation(line: 99, column: 20, scope: !186, inlinedAt: !1078)
!1094 = !DILocation(line: 99, column: 35, scope: !186, inlinedAt: !1078)
!1095 = !DILocation(line: 99, column: 13, scope: !186, inlinedAt: !1078)
!1096 = !DILocation(line: 0, scope: !186, inlinedAt: !1078)
!1097 = !DILocation(line: 433, column: 17, scope: !1053)
!1098 = !DILocation(line: 433, column: 15, scope: !1053)
!1099 = !DILocation(line: 435, column: 9, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 434, column: 12)
!1101 = !DILocation(line: 437, column: 1, scope: !1045)
!1102 = distinct !DISubprogram(name: "hashTypeCurrentObjectNewSds", scope: !1, file: !1, line: 441, type: !1028, isLocal: false, isDefinition: true, scopeLine: 441, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1103)
!1103 = !{!1104, !1105, !1106, !1107, !1108}
!1104 = !DILocalVariable(name: "hi", arg: 1, scope: !1102, file: !1, line: 441, type: !877)
!1105 = !DILocalVariable(name: "what", arg: 2, scope: !1102, file: !1, line: 441, type: !39)
!1106 = !DILocalVariable(name: "vstr", scope: !1102, file: !1, line: 442, type: !5)
!1107 = !DILocalVariable(name: "vlen", scope: !1102, file: !1, line: 443, type: !110)
!1108 = !DILocalVariable(name: "vll", scope: !1102, file: !1, line: 444, type: !247)
!1109 = !DILocation(line: 441, column: 51, scope: !1102)
!1110 = !DILocation(line: 441, column: 59, scope: !1102)
!1111 = !DILocation(line: 442, column: 5, scope: !1102)
!1112 = !DILocation(line: 443, column: 5, scope: !1102)
!1113 = !DILocation(line: 444, column: 5, scope: !1102)
!1114 = !DILocation(line: 442, column: 20, scope: !1102)
!1115 = !DILocation(line: 443, column: 18, scope: !1102)
!1116 = !DILocation(line: 444, column: 15, scope: !1102)
!1117 = !DILocation(line: 446, column: 5, scope: !1102)
!1118 = !DILocation(line: 447, column: 9, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1102, file: !1, line: 447, column: 9)
!1120 = !DILocation(line: 447, column: 9, scope: !1102)
!1121 = !DILocation(line: 447, column: 37, scope: !1119)
!1122 = !DILocation(line: 447, column: 22, scope: !1119)
!1123 = !DILocation(line: 447, column: 15, scope: !1119)
!1124 = !DILocation(line: 448, column: 28, scope: !1102)
!1125 = !DILocation(line: 448, column: 12, scope: !1102)
!1126 = !DILocation(line: 448, column: 5, scope: !1102)
!1127 = !DILocation(line: 0, scope: !1102)
!1128 = !DILocation(line: 449, column: 1, scope: !1102)
!1129 = distinct !DISubprogram(name: "hashTypeLookupWriteOrCreate", scope: !1, file: !1, line: 451, type: !1130, isLocal: false, isDefinition: true, scopeLine: 451, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1295)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!128, !1132, !128}
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !130, line: 780, baseType: !1134)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !130, line: 723, size: 135360, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1210, !1211, !1212, !1213, !1214, !1215, !1217, !1218, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1244, !1245, !1249, !1250, !1266, !1267, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1134, file: !130, line: 724, baseType: !23, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1134, file: !130, line: 725, baseType: !39, size: 32, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !1134, file: !130, line: 726, baseType: !1139, size: 64, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !130, line: 656, baseType: !1141)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !130, line: 647, size: 512, elements: !1142)
!1142 = !{!1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !1141, file: !130, line: 648, baseType: !9, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1141, file: !130, line: 649, baseType: !9, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !1141, file: !130, line: 650, baseType: !9, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !1141, file: !130, line: 651, baseType: !9, size: 64, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1141, file: !130, line: 652, baseType: !9, size: 64, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1141, file: !130, line: 653, baseType: !39, size: 32, offset: 320)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !1141, file: !130, line: 654, baseType: !247, size: 64, offset: 384)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !1141, file: !130, line: 655, baseType: !1151, size: 64, offset: 448)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !1153, line: 54, baseType: !1154)
!1153 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !1153, line: 47, size: 384, elements: !1155)
!1155 = !{!1156, !1165, !1166, !1170, !1174, !1178}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1154, file: !1153, line: 48, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !1153, line: 40, baseType: !1159)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !1153, line: 36, size: 192, elements: !1160)
!1160 = !{!1161, !1163, !1164}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1159, file: !1153, line: 37, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1159, file: !1153, line: 38, baseType: !1162, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1159, file: !1153, line: 39, baseType: !4, size: 64, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1154, file: !1153, line: 49, baseType: !1157, size: 64, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !1154, file: !1153, line: 50, baseType: !1167, size: 64, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!4, !4}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1154, file: !1153, line: 51, baseType: !1171, size: 64, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{null, !4}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1154, file: !1153, line: 52, baseType: !1175, size: 64, offset: 256)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!39, !4, !4}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1154, file: !1153, line: 53, baseType: !27, size: 64, offset: 320)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1134, file: !130, line: 727, baseType: !128, size: 64, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !1134, file: !130, line: 728, baseType: !176, size: 64, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !1134, file: !130, line: 729, baseType: !432, size: 64, offset: 320)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !1134, file: !130, line: 730, baseType: !176, size: 64, offset: 384)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !1134, file: !130, line: 734, baseType: !432, size: 64, offset: 448)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1134, file: !130, line: 735, baseType: !39, size: 32, offset: 512)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1134, file: !130, line: 736, baseType: !138, size: 64, offset: 576)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1134, file: !130, line: 737, baseType: !1187, size: 64, offset: 640)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !130, line: 1307, size: 640, elements: !1189)
!1189 = !{!1190, !1191, !1196, !1197, !1198, !1199, !1205, !1206, !1207, !1208, !1209}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1188, file: !130, line: 1308, baseType: !7, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !1188, file: !130, line: 1309, baseType: !1192, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !130, line: 1305, baseType: !1194)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !1132}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !1188, file: !130, line: 1310, baseType: !39, size: 32, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !1188, file: !130, line: 1311, baseType: !7, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1188, file: !130, line: 1312, baseType: !39, size: 32, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !1188, file: !130, line: 1315, baseType: !1200, size: 64, offset: 320)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !130, line: 1306, baseType: !1202)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!1204, !1187, !138, !39, !1204}
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !1188, file: !130, line: 1317, baseType: !39, size: 32, offset: 384)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !1188, file: !130, line: 1318, baseType: !39, size: 32, offset: 416)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !1188, file: !130, line: 1319, baseType: !39, size: 32, offset: 448)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !1188, file: !130, line: 1320, baseType: !247, size: 64, offset: 512)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !1188, file: !130, line: 1320, baseType: !247, size: 64, offset: 576)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !1134, file: !130, line: 737, baseType: !1187, size: 64, offset: 704)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !1134, file: !130, line: 738, baseType: !39, size: 32, offset: 768)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !1134, file: !130, line: 739, baseType: !39, size: 32, offset: 800)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !1134, file: !130, line: 740, baseType: !66, size: 64, offset: 832)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !1134, file: !130, line: 741, baseType: !1151, size: 64, offset: 896)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !1134, file: !130, line: 742, baseType: !1216, size: 64, offset: 960)
!1216 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !1134, file: !130, line: 743, baseType: !432, size: 64, offset: 1024)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1134, file: !130, line: 745, baseType: !1219, size: 64, offset: 1088)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1220, line: 34, baseType: !66)
!1220 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !1134, file: !130, line: 746, baseType: !1219, size: 64, offset: 1152)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !1134, file: !130, line: 747, baseType: !1219, size: 64, offset: 1216)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1134, file: !130, line: 748, baseType: !39, size: 32, offset: 1280)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !1134, file: !130, line: 749, baseType: !39, size: 32, offset: 1312)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !1134, file: !130, line: 750, baseType: !39, size: 32, offset: 1344)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !1134, file: !130, line: 751, baseType: !39, size: 32, offset: 1376)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !1134, file: !130, line: 752, baseType: !39, size: 32, offset: 1408)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !1134, file: !130, line: 753, baseType: !1229, size: 64, offset: 1472)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1230, line: 173, baseType: !1231)
!1230 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !435, line: 100, baseType: !1232)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !435, line: 44, baseType: !66)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !1134, file: !130, line: 754, baseType: !1229, size: 64, offset: 1536)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !1134, file: !130, line: 755, baseType: !176, size: 64, offset: 1600)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !1134, file: !130, line: 756, baseType: !247, size: 64, offset: 1664)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !1134, file: !130, line: 757, baseType: !247, size: 64, offset: 1728)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !1134, file: !130, line: 758, baseType: !247, size: 64, offset: 1792)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !1134, file: !130, line: 759, baseType: !247, size: 64, offset: 1856)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !1134, file: !130, line: 760, baseType: !247, size: 64, offset: 1920)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !1134, file: !130, line: 763, baseType: !1241, size: 328, offset: 1984)
!1241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 328, elements: !1242)
!1242 = !{!1243}
!1243 = !DISubrange(count: 41)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !1134, file: !130, line: 764, baseType: !39, size: 32, offset: 2336)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !1134, file: !130, line: 765, baseType: !1246, size: 368, offset: 2368)
!1246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 368, elements: !1247)
!1247 = !{!1248}
!1248 = !DISubrange(count: 46)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !1134, file: !130, line: 766, baseType: !39, size: 32, offset: 2752)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !1134, file: !130, line: 767, baseType: !1251, size: 256, offset: 2816)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !130, line: 673, baseType: !1252)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !130, line: 665, size: 256, elements: !1253)
!1253 = !{!1254, !1262, !1263, !1264, !1265}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !1252, file: !130, line: 666, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !130, line: 663, baseType: !1257)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !130, line: 659, size: 192, elements: !1258)
!1258 = !{!1259, !1260, !1261}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1257, file: !130, line: 660, baseType: !138, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1257, file: !130, line: 661, baseType: !39, size: 32, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1257, file: !130, line: 662, baseType: !1187, size: 64, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1252, file: !130, line: 667, baseType: !39, size: 32, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1252, file: !130, line: 668, baseType: !39, size: 32, offset: 96)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !1252, file: !130, line: 671, baseType: !39, size: 32, offset: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !1252, file: !130, line: 672, baseType: !1219, size: 64, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !1134, file: !130, line: 768, baseType: !39, size: 32, offset: 3072)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !1134, file: !130, line: 769, baseType: !1268, size: 704, offset: 3136)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !130, line: 703, baseType: !1269)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !130, line: 677, size: 704, elements: !1270)
!1270 = !{!1271, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1269, file: !130, line: 679, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !130, line: 52, baseType: !247)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1269, file: !130, line: 683, baseType: !9, size: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1269, file: !130, line: 685, baseType: !128, size: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !1269, file: !130, line: 689, baseType: !432, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !1269, file: !130, line: 690, baseType: !128, size: 64, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !1269, file: !130, line: 691, baseType: !128, size: 64, offset: 320)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !1269, file: !130, line: 692, baseType: !1272, size: 64, offset: 384)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !1269, file: !130, line: 692, baseType: !1272, size: 64, offset: 448)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !1269, file: !130, line: 693, baseType: !39, size: 32, offset: 512)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !1269, file: !130, line: 696, baseType: !39, size: 32, offset: 544)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !1269, file: !130, line: 697, baseType: !247, size: 64, offset: 576)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !1269, file: !130, line: 700, baseType: !4, size: 64, offset: 640)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !1134, file: !130, line: 770, baseType: !247, size: 64, offset: 3840)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1134, file: !130, line: 771, baseType: !1151, size: 64, offset: 3904)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !1134, file: !130, line: 772, baseType: !9, size: 64, offset: 3968)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !1134, file: !130, line: 773, baseType: !1151, size: 64, offset: 4032)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !1134, file: !130, line: 774, baseType: !176, size: 64, offset: 4096)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !1134, file: !130, line: 775, baseType: !1157, size: 64, offset: 4160)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !1134, file: !130, line: 778, baseType: !39, size: 32, offset: 4224)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1134, file: !130, line: 779, baseType: !1292, size: 131072, offset: 4256)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 131072, elements: !1293)
!1293 = !{!1294}
!1294 = !DISubrange(count: 16384)
!1295 = !{!1296, !1297, !1298}
!1296 = !DILocalVariable(name: "c", arg: 1, scope: !1129, file: !1, line: 451, type: !1132)
!1297 = !DILocalVariable(name: "key", arg: 2, scope: !1129, file: !1, line: 451, type: !128)
!1298 = !DILocalVariable(name: "o", scope: !1129, file: !1, line: 452, type: !128)
!1299 = !DILocation(line: 451, column: 43, scope: !1129)
!1300 = !DILocation(line: 451, column: 52, scope: !1129)
!1301 = !DILocation(line: 452, column: 33, scope: !1129)
!1302 = !{!1303, !162, i64 16}
!1303 = !{!"client", !203, i64 0, !168, i64 8, !162, i64 16, !162, i64 24, !162, i64 32, !203, i64 40, !162, i64 48, !203, i64 56, !168, i64 64, !162, i64 72, !162, i64 80, !162, i64 88, !168, i64 96, !168, i64 100, !203, i64 104, !162, i64 112, !424, i64 120, !203, i64 128, !203, i64 136, !203, i64 144, !203, i64 152, !168, i64 160, !168, i64 164, !168, i64 168, !168, i64 172, !168, i64 176, !203, i64 184, !203, i64 192, !162, i64 200, !424, i64 208, !424, i64 216, !424, i64 224, !424, i64 232, !424, i64 240, !163, i64 248, !168, i64 292, !163, i64 296, !168, i64 344, !1304, i64 352, !168, i64 384, !1305, i64 392, !424, i64 480, !162, i64 488, !162, i64 496, !162, i64 504, !162, i64 512, !162, i64 520, !168, i64 528, !163, i64 532}
!1304 = !{!"multiState", !162, i64 0, !168, i64 8, !168, i64 12, !168, i64 16, !203, i64 24}
!1305 = !{!"blockingState", !424, i64 0, !162, i64 8, !162, i64 16, !203, i64 24, !162, i64 32, !162, i64 40, !424, i64 48, !424, i64 56, !168, i64 64, !168, i64 68, !424, i64 72, !162, i64 80}
!1306 = !DILocation(line: 452, column: 15, scope: !1129)
!1307 = !DILocation(line: 452, column: 11, scope: !1129)
!1308 = !DILocation(line: 453, column: 11, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1129, file: !1, line: 453, column: 9)
!1310 = !DILocation(line: 453, column: 9, scope: !1129)
!1311 = !DILocation(line: 454, column: 13, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1309, file: !1, line: 453, column: 20)
!1313 = !DILocation(line: 455, column: 18, scope: !1312)
!1314 = !DILocation(line: 455, column: 9, scope: !1312)
!1315 = !DILocation(line: 456, column: 5, scope: !1312)
!1316 = !DILocation(line: 457, column: 16, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !1, line: 457, column: 13)
!1318 = distinct !DILexicalBlock(scope: !1309, file: !1, line: 456, column: 12)
!1319 = !DILocation(line: 457, column: 21, scope: !1317)
!1320 = !DILocation(line: 457, column: 13, scope: !1318)
!1321 = !DILocation(line: 458, column: 31, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1317, file: !1, line: 457, column: 34)
!1323 = !{!1324, !162, i64 112}
!1324 = !{!"sharedObjectsStruct", !162, i64 0, !162, i64 8, !162, i64 16, !162, i64 24, !162, i64 32, !162, i64 40, !162, i64 48, !162, i64 56, !162, i64 64, !162, i64 72, !162, i64 80, !162, i64 88, !162, i64 96, !162, i64 104, !162, i64 112, !162, i64 120, !162, i64 128, !162, i64 136, !162, i64 144, !162, i64 152, !162, i64 160, !162, i64 168, !162, i64 176, !162, i64 184, !162, i64 192, !162, i64 200, !162, i64 208, !162, i64 216, !162, i64 224, !162, i64 232, !162, i64 240, !162, i64 248, !162, i64 256, !162, i64 264, !162, i64 272, !162, i64 280, !162, i64 288, !162, i64 296, !162, i64 304, !162, i64 312, !162, i64 320, !162, i64 328, !162, i64 336, !162, i64 344, !162, i64 352, !162, i64 360, !163, i64 368, !163, i64 448, !163, i64 80448, !163, i64 80704, !162, i64 80960, !162, i64 80968}
!1325 = !DILocation(line: 458, column: 13, scope: !1322)
!1326 = !DILocation(line: 459, column: 13, scope: !1322)
!1327 = !DILocation(line: 0, scope: !1322)
!1328 = !DILocation(line: 463, column: 1, scope: !1129)
!1329 = distinct !DISubprogram(name: "hashTypeConvertZiplist", scope: !1, file: !1, line: 465, type: !210, isLocal: false, isDefinition: true, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1330)
!1330 = !{!1331, !1332, !1333, !1337, !1338, !1339, !1341}
!1331 = !DILocalVariable(name: "o", arg: 1, scope: !1329, file: !1, line: 465, type: !128)
!1332 = !DILocalVariable(name: "enc", arg: 2, scope: !1329, file: !1, line: 465, type: !39)
!1333 = !DILocalVariable(name: "hi", scope: !1334, file: !1, line: 472, type: !877)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !1, line: 471, column: 40)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !1, line: 471, column: 16)
!1336 = distinct !DILexicalBlock(scope: !1329, file: !1, line: 468, column: 9)
!1337 = !DILocalVariable(name: "dict", scope: !1334, file: !1, line: 473, type: !9)
!1338 = !DILocalVariable(name: "ret", scope: !1334, file: !1, line: 474, type: !39)
!1339 = !DILocalVariable(name: "key", scope: !1340, file: !1, line: 480, type: !176)
!1340 = distinct !DILexicalBlock(scope: !1334, file: !1, line: 479, column: 43)
!1341 = !DILocalVariable(name: "value", scope: !1340, file: !1, line: 480, type: !176)
!1342 = !DILocation(line: 465, column: 35, scope: !1329)
!1343 = !DILocation(line: 465, column: 42, scope: !1329)
!1344 = !DILocation(line: 466, column: 5, scope: !1329)
!1345 = !DILocation(line: 468, column: 9, scope: !1329)
!1346 = !DILocation(line: 324, column: 46, scope: !874, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 476, column: 14, scope: !1334)
!1348 = !DILocation(line: 325, column: 28, scope: !874, inlinedAt: !1347)
!1349 = !DILocation(line: 325, column: 23, scope: !874, inlinedAt: !1347)
!1350 = !DILocation(line: 326, column: 9, scope: !874, inlinedAt: !1347)
!1351 = !DILocation(line: 326, column: 17, scope: !874, inlinedAt: !1347)
!1352 = !DILocation(line: 327, column: 29, scope: !874, inlinedAt: !1347)
!1353 = !DILocation(line: 327, column: 9, scope: !874, inlinedAt: !1347)
!1354 = !DILocation(line: 327, column: 18, scope: !874, inlinedAt: !1347)
!1355 = !DILocation(line: 329, column: 9, scope: !874, inlinedAt: !1347)
!1356 = !DILocation(line: 330, column: 13, scope: !914, inlinedAt: !1347)
!1357 = !DILocation(line: 330, column: 18, scope: !914, inlinedAt: !1347)
!1358 = !DILocation(line: 332, column: 5, scope: !914, inlinedAt: !1347)
!1359 = !DILocation(line: 333, column: 43, scope: !919, inlinedAt: !1347)
!1360 = !DILocation(line: 333, column: 18, scope: !919, inlinedAt: !1347)
!1361 = !DILocation(line: 333, column: 13, scope: !919, inlinedAt: !1347)
!1362 = !DILocation(line: 333, column: 16, scope: !919, inlinedAt: !1347)
!1363 = !DILocation(line: 335, column: 9, scope: !926, inlinedAt: !1347)
!1364 = !DILocation(line: 472, column: 27, scope: !1334)
!1365 = !DILocation(line: 477, column: 16, scope: !1334)
!1366 = !DILocation(line: 473, column: 15, scope: !1334)
!1367 = !DILocation(line: 479, column: 9, scope: !1334)
!1368 = !DILocation(line: 479, column: 16, scope: !1334)
!1369 = !DILocation(line: 479, column: 33, scope: !1334)
!1370 = !DILocation(line: 441, column: 51, scope: !1102, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 482, column: 19, scope: !1340)
!1372 = !DILocation(line: 441, column: 59, scope: !1102, inlinedAt: !1371)
!1373 = !DILocation(line: 442, column: 5, scope: !1102, inlinedAt: !1371)
!1374 = !DILocation(line: 443, column: 5, scope: !1102, inlinedAt: !1371)
!1375 = !DILocation(line: 444, column: 5, scope: !1102, inlinedAt: !1371)
!1376 = !DILocation(line: 442, column: 20, scope: !1102, inlinedAt: !1371)
!1377 = !DILocation(line: 443, column: 18, scope: !1102, inlinedAt: !1371)
!1378 = !DILocation(line: 444, column: 15, scope: !1102, inlinedAt: !1371)
!1379 = !DILocation(line: 446, column: 5, scope: !1102, inlinedAt: !1371)
!1380 = !DILocation(line: 447, column: 9, scope: !1119, inlinedAt: !1371)
!1381 = !DILocation(line: 447, column: 9, scope: !1102, inlinedAt: !1371)
!1382 = !DILocation(line: 447, column: 37, scope: !1119, inlinedAt: !1371)
!1383 = !DILocation(line: 447, column: 22, scope: !1119, inlinedAt: !1371)
!1384 = !DILocation(line: 447, column: 15, scope: !1119, inlinedAt: !1371)
!1385 = !DILocation(line: 448, column: 28, scope: !1102, inlinedAt: !1371)
!1386 = !DILocation(line: 448, column: 12, scope: !1102, inlinedAt: !1371)
!1387 = !DILocation(line: 448, column: 5, scope: !1102, inlinedAt: !1371)
!1388 = !DILocation(line: 0, scope: !1102, inlinedAt: !1371)
!1389 = !DILocation(line: 449, column: 1, scope: !1102, inlinedAt: !1371)
!1390 = !DILocation(line: 480, column: 17, scope: !1340)
!1391 = !DILocation(line: 441, column: 51, scope: !1102, inlinedAt: !1392)
!1392 = distinct !DILocation(line: 483, column: 21, scope: !1340)
!1393 = !DILocation(line: 441, column: 59, scope: !1102, inlinedAt: !1392)
!1394 = !DILocation(line: 442, column: 5, scope: !1102, inlinedAt: !1392)
!1395 = !DILocation(line: 443, column: 5, scope: !1102, inlinedAt: !1392)
!1396 = !DILocation(line: 444, column: 5, scope: !1102, inlinedAt: !1392)
!1397 = !DILocation(line: 442, column: 20, scope: !1102, inlinedAt: !1392)
!1398 = !DILocation(line: 443, column: 18, scope: !1102, inlinedAt: !1392)
!1399 = !DILocation(line: 444, column: 15, scope: !1102, inlinedAt: !1392)
!1400 = !DILocation(line: 446, column: 5, scope: !1102, inlinedAt: !1392)
!1401 = !DILocation(line: 447, column: 9, scope: !1119, inlinedAt: !1392)
!1402 = !DILocation(line: 447, column: 9, scope: !1102, inlinedAt: !1392)
!1403 = !DILocation(line: 447, column: 37, scope: !1119, inlinedAt: !1392)
!1404 = !DILocation(line: 447, column: 22, scope: !1119, inlinedAt: !1392)
!1405 = !DILocation(line: 447, column: 15, scope: !1119, inlinedAt: !1392)
!1406 = !DILocation(line: 448, column: 28, scope: !1102, inlinedAt: !1392)
!1407 = !DILocation(line: 448, column: 12, scope: !1102, inlinedAt: !1392)
!1408 = !DILocation(line: 448, column: 5, scope: !1102, inlinedAt: !1392)
!1409 = !DILocation(line: 0, scope: !1102, inlinedAt: !1392)
!1410 = !DILocation(line: 449, column: 1, scope: !1102, inlinedAt: !1392)
!1411 = !DILocation(line: 480, column: 22, scope: !1340)
!1412 = !DILocation(line: 484, column: 19, scope: !1340)
!1413 = !DILocation(line: 474, column: 13, scope: !1334)
!1414 = !DILocation(line: 485, column: 21, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1340, file: !1, line: 485, column: 17)
!1416 = !DILocation(line: 485, column: 17, scope: !1340)
!1417 = distinct !{!1417, !1367, !1418}
!1418 = !DILocation(line: 490, column: 9, scope: !1334)
!1419 = !DILocation(line: 487, column: 24, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1415, file: !1, line: 485, column: 33)
!1421 = !DILocation(line: 487, column: 28, scope: !1420)
!1422 = !DILocation(line: 486, column: 17, scope: !1420)
!1423 = !DILocation(line: 488, column: 17, scope: !1420)
!1424 = !DILocation(line: 340, column: 48, scope: !928, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 491, column: 9, scope: !1334)
!1426 = !DILocation(line: 341, column: 13, scope: !935, inlinedAt: !1425)
!1427 = !DILocation(line: 341, column: 22, scope: !935, inlinedAt: !1425)
!1428 = !DILocation(line: 341, column: 9, scope: !928, inlinedAt: !1425)
!1429 = !DILocation(line: 342, column: 33, scope: !935, inlinedAt: !1425)
!1430 = !DILocation(line: 342, column: 9, scope: !935, inlinedAt: !1425)
!1431 = !DILocation(line: 343, column: 5, scope: !928, inlinedAt: !1425)
!1432 = !DILocation(line: 492, column: 18, scope: !1334)
!1433 = !DILocation(line: 492, column: 9, scope: !1334)
!1434 = !DILocation(line: 493, column: 21, scope: !1334)
!1435 = !DILocation(line: 494, column: 16, scope: !1334)
!1436 = !DILocation(line: 496, column: 9, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1335, file: !1, line: 495, column: 12)
!1438 = !DILocation(line: 498, column: 1, scope: !1329)
!1439 = distinct !DISubprogram(name: "hsetnxCommand", scope: !1, file: !1, line: 514, type: !1194, isLocal: false, isDefinition: true, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1440)
!1440 = !{!1441, !1442}
!1441 = !DILocalVariable(name: "c", arg: 1, scope: !1439, file: !1, line: 514, type: !1132)
!1442 = !DILocalVariable(name: "o", scope: !1439, file: !1, line: 515, type: !128)
!1443 = !DILocation(line: 514, column: 28, scope: !1439)
!1444 = !DILocation(line: 516, column: 47, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1439, file: !1, line: 516, column: 9)
!1446 = !{!1303, !162, i64 72}
!1447 = !DILocation(line: 516, column: 44, scope: !1445)
!1448 = !DILocation(line: 451, column: 43, scope: !1129, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 516, column: 14, scope: !1445)
!1450 = !DILocation(line: 451, column: 52, scope: !1129, inlinedAt: !1449)
!1451 = !DILocation(line: 452, column: 33, scope: !1129, inlinedAt: !1449)
!1452 = !DILocation(line: 452, column: 15, scope: !1129, inlinedAt: !1449)
!1453 = !DILocation(line: 452, column: 11, scope: !1129, inlinedAt: !1449)
!1454 = !DILocation(line: 453, column: 11, scope: !1309, inlinedAt: !1449)
!1455 = !DILocation(line: 453, column: 9, scope: !1129, inlinedAt: !1449)
!1456 = !DILocation(line: 457, column: 16, scope: !1317, inlinedAt: !1449)
!1457 = !DILocation(line: 457, column: 21, scope: !1317, inlinedAt: !1449)
!1458 = !DILocation(line: 457, column: 13, scope: !1318, inlinedAt: !1449)
!1459 = !DILocation(line: 458, column: 31, scope: !1322, inlinedAt: !1449)
!1460 = !DILocation(line: 458, column: 13, scope: !1322, inlinedAt: !1449)
!1461 = !DILocation(line: 515, column: 11, scope: !1439)
!1462 = !DILocation(line: 516, column: 9, scope: !1439)
!1463 = !DILocation(line: 454, column: 13, scope: !1312, inlinedAt: !1449)
!1464 = !DILocation(line: 455, column: 18, scope: !1312, inlinedAt: !1449)
!1465 = !DILocation(line: 455, column: 9, scope: !1312, inlinedAt: !1449)
!1466 = !DILocation(line: 516, column: 57, scope: !1445)
!1467 = !DILocation(line: 517, column: 32, scope: !1439)
!1468 = !DILocation(line: 517, column: 5, scope: !1439)
!1469 = !DILocation(line: 519, column: 30, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1439, file: !1, line: 519, column: 9)
!1471 = !DILocation(line: 519, column: 27, scope: !1470)
!1472 = !DILocation(line: 519, column: 39, scope: !1470)
!1473 = !DILocation(line: 519, column: 9, scope: !1470)
!1474 = !DILocation(line: 519, column: 9, scope: !1439)
!1475 = !DILocation(line: 520, column: 28, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1470, file: !1, line: 519, column: 45)
!1477 = !{!1324, !162, i64 32}
!1478 = !DILocation(line: 520, column: 9, scope: !1476)
!1479 = !DILocation(line: 521, column: 5, scope: !1476)
!1480 = !DILocation(line: 522, column: 26, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1470, file: !1, line: 521, column: 12)
!1482 = !DILocation(line: 522, column: 23, scope: !1481)
!1483 = !DILocation(line: 522, column: 35, scope: !1481)
!1484 = !DILocation(line: 522, column: 39, scope: !1481)
!1485 = !DILocation(line: 522, column: 51, scope: !1481)
!1486 = !DILocation(line: 522, column: 9, scope: !1481)
!1487 = !DILocation(line: 523, column: 28, scope: !1481)
!1488 = !{!1324, !162, i64 40}
!1489 = !DILocation(line: 523, column: 9, scope: !1481)
!1490 = !DILocation(line: 524, column: 30, scope: !1481)
!1491 = !DILocation(line: 524, column: 36, scope: !1481)
!1492 = !DILocation(line: 524, column: 33, scope: !1481)
!1493 = !DILocation(line: 524, column: 9, scope: !1481)
!1494 = !DILocation(line: 525, column: 51, scope: !1481)
!1495 = !DILocation(line: 525, column: 48, scope: !1481)
!1496 = !DILocation(line: 525, column: 62, scope: !1481)
!1497 = !DILocation(line: 525, column: 66, scope: !1481)
!1498 = !{!1499, !168, i64 40}
!1499 = !{!"redisDb", !162, i64 0, !162, i64 8, !162, i64 16, !162, i64 24, !162, i64 32, !168, i64 40, !424, i64 48, !162, i64 56}
!1500 = !DILocation(line: 525, column: 9, scope: !1481)
!1501 = !DILocation(line: 526, column: 21, scope: !1481)
!1502 = !{!723, !424, i64 2080}
!1503 = !DILocation(line: 528, column: 1, scope: !1439)
!1504 = distinct !DISubprogram(name: "hsetCommand", scope: !1, file: !1, line: 530, type: !1194, isLocal: false, isDefinition: true, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1505)
!1505 = !{!1506, !1507, !1508, !1509, !1510}
!1506 = !DILocalVariable(name: "c", arg: 1, scope: !1504, file: !1, line: 530, type: !1132)
!1507 = !DILocalVariable(name: "i", scope: !1504, file: !1, line: 531, type: !39)
!1508 = !DILocalVariable(name: "created", scope: !1504, file: !1, line: 531, type: !39)
!1509 = !DILocalVariable(name: "o", scope: !1504, file: !1, line: 532, type: !128)
!1510 = !DILocalVariable(name: "cmdname", scope: !1504, file: !1, line: 546, type: !7)
!1511 = !DILocation(line: 530, column: 26, scope: !1504)
!1512 = !DILocation(line: 531, column: 12, scope: !1504)
!1513 = !DILocation(line: 534, column: 13, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1504, file: !1, line: 534, column: 9)
!1515 = !{!1303, !168, i64 64}
!1516 = !DILocation(line: 534, column: 18, scope: !1514)
!1517 = !DILocation(line: 534, column: 23, scope: !1514)
!1518 = !DILocation(line: 534, column: 9, scope: !1504)
!1519 = !DILocation(line: 535, column: 9, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1514, file: !1, line: 534, column: 29)
!1521 = !DILocation(line: 536, column: 9, scope: !1520)
!1522 = !DILocation(line: 539, column: 47, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1504, file: !1, line: 539, column: 9)
!1524 = !DILocation(line: 539, column: 44, scope: !1523)
!1525 = !DILocation(line: 451, column: 43, scope: !1129, inlinedAt: !1526)
!1526 = distinct !DILocation(line: 539, column: 14, scope: !1523)
!1527 = !DILocation(line: 451, column: 52, scope: !1129, inlinedAt: !1526)
!1528 = !DILocation(line: 452, column: 33, scope: !1129, inlinedAt: !1526)
!1529 = !DILocation(line: 452, column: 15, scope: !1129, inlinedAt: !1526)
!1530 = !DILocation(line: 452, column: 11, scope: !1129, inlinedAt: !1526)
!1531 = !DILocation(line: 453, column: 11, scope: !1309, inlinedAt: !1526)
!1532 = !DILocation(line: 453, column: 9, scope: !1129, inlinedAt: !1526)
!1533 = !DILocation(line: 457, column: 16, scope: !1317, inlinedAt: !1526)
!1534 = !DILocation(line: 457, column: 21, scope: !1317, inlinedAt: !1526)
!1535 = !DILocation(line: 457, column: 13, scope: !1318, inlinedAt: !1526)
!1536 = !DILocation(line: 458, column: 31, scope: !1322, inlinedAt: !1526)
!1537 = !DILocation(line: 458, column: 13, scope: !1322, inlinedAt: !1526)
!1538 = !DILocation(line: 532, column: 11, scope: !1504)
!1539 = !DILocation(line: 539, column: 9, scope: !1504)
!1540 = !DILocation(line: 454, column: 13, scope: !1312, inlinedAt: !1526)
!1541 = !DILocation(line: 455, column: 18, scope: !1312, inlinedAt: !1526)
!1542 = !DILocation(line: 455, column: 9, scope: !1312, inlinedAt: !1526)
!1543 = !DILocation(line: 539, column: 57, scope: !1523)
!1544 = !DILocation(line: 540, column: 32, scope: !1504)
!1545 = !DILocation(line: 540, column: 42, scope: !1504)
!1546 = !DILocation(line: 540, column: 46, scope: !1504)
!1547 = !DILocation(line: 540, column: 5, scope: !1504)
!1548 = !DILocation(line: 531, column: 9, scope: !1504)
!1549 = !DILocation(line: 542, column: 24, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !1, line: 542, column: 5)
!1551 = distinct !DILexicalBlock(scope: !1504, file: !1, line: 542, column: 5)
!1552 = !DILocation(line: 542, column: 19, scope: !1550)
!1553 = !DILocation(line: 0, scope: !1504)
!1554 = !DILocation(line: 542, column: 5, scope: !1551)
!1555 = !DILocation(line: 543, column: 35, scope: !1550)
!1556 = !DILocation(line: 543, column: 47, scope: !1550)
!1557 = !DILocation(line: 543, column: 60, scope: !1550)
!1558 = !DILocation(line: 543, column: 51, scope: !1550)
!1559 = !DILocation(line: 543, column: 65, scope: !1550)
!1560 = !DILocation(line: 543, column: 21, scope: !1550)
!1561 = !DILocation(line: 543, column: 20, scope: !1550)
!1562 = !DILocation(line: 543, column: 17, scope: !1550)
!1563 = !DILocation(line: 542, column: 32, scope: !1550)
!1564 = distinct !{!1564, !1554, !1565}
!1565 = !DILocation(line: 543, column: 82, scope: !1551)
!1566 = !DILocation(line: 546, column: 21, scope: !1504)
!1567 = !DILocation(line: 546, column: 33, scope: !1504)
!1568 = !DILocation(line: 546, column: 11, scope: !1504)
!1569 = !DILocation(line: 547, column: 9, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1504, file: !1, line: 547, column: 9)
!1571 = !DILocation(line: 547, column: 27, scope: !1570)
!1572 = !DILocation(line: 549, column: 9, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1570, file: !1, line: 547, column: 49)
!1574 = !DILocation(line: 550, column: 5, scope: !1573)
!1575 = !DILocation(line: 552, column: 28, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1570, file: !1, line: 550, column: 12)
!1577 = !{!1324, !162, i64 8}
!1578 = !DILocation(line: 552, column: 9, scope: !1576)
!1579 = !DILocation(line: 554, column: 26, scope: !1504)
!1580 = !DILocation(line: 554, column: 32, scope: !1504)
!1581 = !DILocation(line: 554, column: 29, scope: !1504)
!1582 = !DILocation(line: 554, column: 5, scope: !1504)
!1583 = !DILocation(line: 555, column: 47, scope: !1504)
!1584 = !DILocation(line: 555, column: 44, scope: !1504)
!1585 = !DILocation(line: 555, column: 58, scope: !1504)
!1586 = !DILocation(line: 555, column: 62, scope: !1504)
!1587 = !DILocation(line: 555, column: 5, scope: !1504)
!1588 = !DILocation(line: 556, column: 17, scope: !1504)
!1589 = !DILocation(line: 557, column: 1, scope: !1504)
!1590 = distinct !DISubprogram(name: "hincrbyCommand", scope: !1, file: !1, line: 559, type: !1194, isLocal: false, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1591)
!1591 = !{!1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599}
!1592 = !DILocalVariable(name: "c", arg: 1, scope: !1590, file: !1, line: 559, type: !1132)
!1593 = !DILocalVariable(name: "value", scope: !1590, file: !1, line: 560, type: !247)
!1594 = !DILocalVariable(name: "incr", scope: !1590, file: !1, line: 560, type: !247)
!1595 = !DILocalVariable(name: "oldvalue", scope: !1590, file: !1, line: 560, type: !247)
!1596 = !DILocalVariable(name: "o", scope: !1590, file: !1, line: 561, type: !128)
!1597 = !DILocalVariable(name: "new", scope: !1590, file: !1, line: 562, type: !176)
!1598 = !DILocalVariable(name: "vstr", scope: !1590, file: !1, line: 563, type: !5)
!1599 = !DILocalVariable(name: "vlen", scope: !1590, file: !1, line: 564, type: !110)
!1600 = !DILocation(line: 559, column: 29, scope: !1590)
!1601 = !DILocation(line: 560, column: 5, scope: !1590)
!1602 = !DILocation(line: 563, column: 5, scope: !1590)
!1603 = !DILocation(line: 564, column: 5, scope: !1590)
!1604 = !DILocation(line: 566, column: 43, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1590, file: !1, line: 566, column: 9)
!1606 = !DILocation(line: 566, column: 40, scope: !1605)
!1607 = !DILocation(line: 560, column: 22, scope: !1590)
!1608 = !DILocation(line: 566, column: 9, scope: !1605)
!1609 = !DILocation(line: 566, column: 63, scope: !1605)
!1610 = !DILocation(line: 566, column: 9, scope: !1590)
!1611 = !DILocation(line: 567, column: 47, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1590, file: !1, line: 567, column: 9)
!1613 = !DILocation(line: 567, column: 44, scope: !1612)
!1614 = !DILocation(line: 451, column: 43, scope: !1129, inlinedAt: !1615)
!1615 = distinct !DILocation(line: 567, column: 14, scope: !1612)
!1616 = !DILocation(line: 451, column: 52, scope: !1129, inlinedAt: !1615)
!1617 = !DILocation(line: 452, column: 33, scope: !1129, inlinedAt: !1615)
!1618 = !DILocation(line: 452, column: 15, scope: !1129, inlinedAt: !1615)
!1619 = !DILocation(line: 452, column: 11, scope: !1129, inlinedAt: !1615)
!1620 = !DILocation(line: 453, column: 11, scope: !1309, inlinedAt: !1615)
!1621 = !DILocation(line: 453, column: 9, scope: !1129, inlinedAt: !1615)
!1622 = !DILocation(line: 457, column: 16, scope: !1317, inlinedAt: !1615)
!1623 = !DILocation(line: 457, column: 21, scope: !1317, inlinedAt: !1615)
!1624 = !DILocation(line: 457, column: 13, scope: !1318, inlinedAt: !1615)
!1625 = !DILocation(line: 458, column: 31, scope: !1322, inlinedAt: !1615)
!1626 = !DILocation(line: 458, column: 13, scope: !1322, inlinedAt: !1615)
!1627 = !DILocation(line: 561, column: 11, scope: !1590)
!1628 = !DILocation(line: 567, column: 9, scope: !1590)
!1629 = !DILocation(line: 454, column: 13, scope: !1312, inlinedAt: !1615)
!1630 = !DILocation(line: 455, column: 18, scope: !1312, inlinedAt: !1615)
!1631 = !DILocation(line: 455, column: 9, scope: !1312, inlinedAt: !1615)
!1632 = !DILocation(line: 567, column: 57, scope: !1612)
!1633 = !DILocation(line: 568, column: 31, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1590, file: !1, line: 568, column: 9)
!1635 = !DILocation(line: 568, column: 28, scope: !1634)
!1636 = !DILocation(line: 568, column: 40, scope: !1634)
!1637 = !DILocation(line: 560, column: 15, scope: !1590)
!1638 = !DILocation(line: 563, column: 20, scope: !1590)
!1639 = !DILocation(line: 564, column: 18, scope: !1590)
!1640 = !DILocation(line: 568, column: 9, scope: !1634)
!1641 = !DILocation(line: 568, column: 64, scope: !1634)
!1642 = !DILocation(line: 568, column: 9, scope: !1590)
!1643 = !DILocation(line: 569, column: 13, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !1, line: 569, column: 13)
!1645 = distinct !DILexicalBlock(scope: !1634, file: !1, line: 568, column: 73)
!1646 = !DILocation(line: 569, column: 13, scope: !1645)
!1647 = !DILocation(line: 570, column: 39, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !1, line: 570, column: 17)
!1649 = distinct !DILexicalBlock(scope: !1644, file: !1, line: 569, column: 19)
!1650 = !DILocation(line: 570, column: 17, scope: !1648)
!1651 = !DILocation(line: 570, column: 52, scope: !1648)
!1652 = !DILocation(line: 570, column: 17, scope: !1649)
!1653 = !DILocation(line: 571, column: 17, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1648, file: !1, line: 570, column: 58)
!1655 = !DILocation(line: 572, column: 17, scope: !1654)
!1656 = !DILocation(line: 576, column: 15, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1634, file: !1, line: 575, column: 12)
!1658 = !DILocation(line: 579, column: 16, scope: !1590)
!1659 = !DILocation(line: 560, column: 28, scope: !1590)
!1660 = !DILocation(line: 580, column: 10, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1590, file: !1, line: 580, column: 9)
!1662 = !DILocation(line: 580, column: 19, scope: !1661)
!1663 = !DILocation(line: 580, column: 55, scope: !1661)
!1664 = !DILocation(line: 580, column: 43, scope: !1661)
!1665 = !DILocation(line: 581, column: 15, scope: !1661)
!1666 = !DILocation(line: 581, column: 31, scope: !1661)
!1667 = !DILocation(line: 581, column: 19, scope: !1661)
!1668 = !DILocation(line: 581, column: 55, scope: !1661)
!1669 = !DILocation(line: 581, column: 43, scope: !1661)
!1670 = !DILocation(line: 582, column: 9, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1661, file: !1, line: 581, column: 68)
!1672 = !DILocation(line: 583, column: 9, scope: !1671)
!1673 = !DILocation(line: 585, column: 11, scope: !1590)
!1674 = !DILocation(line: 586, column: 11, scope: !1590)
!1675 = !DILocation(line: 562, column: 9, scope: !1590)
!1676 = !DILocation(line: 587, column: 22, scope: !1590)
!1677 = !DILocation(line: 587, column: 19, scope: !1590)
!1678 = !DILocation(line: 587, column: 31, scope: !1590)
!1679 = !DILocation(line: 587, column: 5, scope: !1590)
!1680 = !DILocation(line: 588, column: 24, scope: !1590)
!1681 = !DILocation(line: 588, column: 5, scope: !1590)
!1682 = !DILocation(line: 589, column: 26, scope: !1590)
!1683 = !DILocation(line: 589, column: 32, scope: !1590)
!1684 = !DILocation(line: 589, column: 29, scope: !1590)
!1685 = !DILocation(line: 589, column: 5, scope: !1590)
!1686 = !DILocation(line: 590, column: 50, scope: !1590)
!1687 = !DILocation(line: 590, column: 47, scope: !1590)
!1688 = !DILocation(line: 590, column: 61, scope: !1590)
!1689 = !DILocation(line: 590, column: 65, scope: !1590)
!1690 = !DILocation(line: 590, column: 5, scope: !1590)
!1691 = !DILocation(line: 591, column: 17, scope: !1590)
!1692 = !DILocation(line: 592, column: 1, scope: !1590)
!1693 = distinct !DISubprogram(name: "hincrbyfloatCommand", scope: !1, file: !1, line: 594, type: !1194, isLocal: false, isDefinition: true, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1694)
!1694 = !{!1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1707, !1708, !1709}
!1695 = !DILocalVariable(name: "c", arg: 1, scope: !1693, file: !1, line: 594, type: !1132)
!1696 = !DILocalVariable(name: "value", scope: !1693, file: !1, line: 595, type: !80)
!1697 = !DILocalVariable(name: "incr", scope: !1693, file: !1, line: 595, type: !80)
!1698 = !DILocalVariable(name: "ll", scope: !1693, file: !1, line: 596, type: !247)
!1699 = !DILocalVariable(name: "o", scope: !1693, file: !1, line: 597, type: !128)
!1700 = !DILocalVariable(name: "new", scope: !1693, file: !1, line: 598, type: !176)
!1701 = !DILocalVariable(name: "vstr", scope: !1693, file: !1, line: 599, type: !5)
!1702 = !DILocalVariable(name: "vlen", scope: !1693, file: !1, line: 600, type: !110)
!1703 = !DILocalVariable(name: "buf", scope: !1693, file: !1, line: 623, type: !1704)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 40960, elements: !1705)
!1705 = !{!1706}
!1706 = !DISubrange(count: 5120)
!1707 = !DILocalVariable(name: "len", scope: !1693, file: !1, line: 624, type: !39)
!1708 = !DILocalVariable(name: "aux", scope: !1693, file: !1, line: 635, type: !128)
!1709 = !DILocalVariable(name: "newobj", scope: !1693, file: !1, line: 635, type: !128)
!1710 = !DILocation(line: 594, column: 34, scope: !1693)
!1711 = !DILocation(line: 595, column: 5, scope: !1693)
!1712 = !DILocation(line: 596, column: 5, scope: !1693)
!1713 = !DILocation(line: 599, column: 5, scope: !1693)
!1714 = !DILocation(line: 600, column: 5, scope: !1693)
!1715 = !DILocation(line: 602, column: 45, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1693, file: !1, line: 602, column: 9)
!1717 = !DILocation(line: 602, column: 42, scope: !1716)
!1718 = !DILocation(line: 595, column: 24, scope: !1693)
!1719 = !DILocation(line: 602, column: 9, scope: !1716)
!1720 = !DILocation(line: 602, column: 65, scope: !1716)
!1721 = !DILocation(line: 602, column: 9, scope: !1693)
!1722 = !DILocation(line: 603, column: 47, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1693, file: !1, line: 603, column: 9)
!1724 = !DILocation(line: 603, column: 44, scope: !1723)
!1725 = !DILocation(line: 451, column: 43, scope: !1129, inlinedAt: !1726)
!1726 = distinct !DILocation(line: 603, column: 14, scope: !1723)
!1727 = !DILocation(line: 451, column: 52, scope: !1129, inlinedAt: !1726)
!1728 = !DILocation(line: 452, column: 33, scope: !1129, inlinedAt: !1726)
!1729 = !DILocation(line: 452, column: 15, scope: !1129, inlinedAt: !1726)
!1730 = !DILocation(line: 452, column: 11, scope: !1129, inlinedAt: !1726)
!1731 = !DILocation(line: 453, column: 11, scope: !1309, inlinedAt: !1726)
!1732 = !DILocation(line: 453, column: 9, scope: !1129, inlinedAt: !1726)
!1733 = !DILocation(line: 457, column: 16, scope: !1317, inlinedAt: !1726)
!1734 = !DILocation(line: 457, column: 21, scope: !1317, inlinedAt: !1726)
!1735 = !DILocation(line: 457, column: 13, scope: !1318, inlinedAt: !1726)
!1736 = !DILocation(line: 458, column: 31, scope: !1322, inlinedAt: !1726)
!1737 = !DILocation(line: 458, column: 13, scope: !1322, inlinedAt: !1726)
!1738 = !DILocation(line: 597, column: 11, scope: !1693)
!1739 = !DILocation(line: 603, column: 9, scope: !1693)
!1740 = !DILocation(line: 454, column: 13, scope: !1312, inlinedAt: !1726)
!1741 = !DILocation(line: 455, column: 18, scope: !1312, inlinedAt: !1726)
!1742 = !DILocation(line: 455, column: 9, scope: !1312, inlinedAt: !1726)
!1743 = !DILocation(line: 603, column: 57, scope: !1723)
!1744 = !DILocation(line: 604, column: 31, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1693, file: !1, line: 604, column: 9)
!1746 = !DILocation(line: 604, column: 28, scope: !1745)
!1747 = !DILocation(line: 604, column: 40, scope: !1745)
!1748 = !DILocation(line: 596, column: 15, scope: !1693)
!1749 = !DILocation(line: 599, column: 20, scope: !1693)
!1750 = !DILocation(line: 600, column: 18, scope: !1693)
!1751 = !DILocation(line: 604, column: 9, scope: !1745)
!1752 = !DILocation(line: 604, column: 61, scope: !1745)
!1753 = !DILocation(line: 604, column: 9, scope: !1693)
!1754 = !DILocation(line: 605, column: 13, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !1, line: 605, column: 13)
!1756 = distinct !DILexicalBlock(scope: !1745, file: !1, line: 604, column: 70)
!1757 = !DILocation(line: 605, column: 13, scope: !1756)
!1758 = !DILocation(line: 606, column: 39, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !1, line: 606, column: 17)
!1760 = distinct !DILexicalBlock(scope: !1755, file: !1, line: 605, column: 19)
!1761 = !DILocation(line: 595, column: 17, scope: !1693)
!1762 = !DILocation(line: 606, column: 17, scope: !1759)
!1763 = !DILocation(line: 606, column: 52, scope: !1759)
!1764 = !DILocation(line: 606, column: 17, scope: !1760)
!1765 = !DILocation(line: 617, column: 11, scope: !1693)
!1766 = !{!1767, !1767, i64 0}
!1767 = !{!"long double", !163, i64 0}
!1768 = !DILocation(line: 607, column: 17, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1759, file: !1, line: 606, column: 58)
!1770 = !DILocation(line: 608, column: 17, scope: !1769)
!1771 = !DILocation(line: 611, column: 34, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1755, file: !1, line: 610, column: 16)
!1773 = !DILocation(line: 611, column: 21, scope: !1772)
!1774 = !DILocation(line: 611, column: 19, scope: !1772)
!1775 = !DILocation(line: 614, column: 15, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1745, file: !1, line: 613, column: 12)
!1777 = !DILocation(line: 617, column: 14, scope: !1693)
!1778 = !DILocation(line: 618, column: 9, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1693, file: !1, line: 618, column: 9)
!1780 = !DILocation(line: 618, column: 22, scope: !1779)
!1781 = !DILocation(line: 618, column: 25, scope: !1779)
!1782 = !DILocation(line: 618, column: 9, scope: !1693)
!1783 = !DILocation(line: 619, column: 9, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1779, file: !1, line: 618, column: 39)
!1785 = !DILocation(line: 620, column: 9, scope: !1784)
!1786 = !DILocation(line: 623, column: 5, scope: !1693)
!1787 = !DILocation(line: 623, column: 10, scope: !1693)
!1788 = !DILocation(line: 624, column: 41, scope: !1693)
!1789 = !DILocation(line: 624, column: 15, scope: !1693)
!1790 = !DILocation(line: 624, column: 9, scope: !1693)
!1791 = !DILocation(line: 625, column: 25, scope: !1693)
!1792 = !DILocation(line: 625, column: 11, scope: !1693)
!1793 = !DILocation(line: 598, column: 9, scope: !1693)
!1794 = !DILocation(line: 626, column: 22, scope: !1693)
!1795 = !DILocation(line: 626, column: 19, scope: !1693)
!1796 = !DILocation(line: 626, column: 31, scope: !1693)
!1797 = !DILocation(line: 626, column: 5, scope: !1693)
!1798 = !DILocation(line: 627, column: 5, scope: !1693)
!1799 = !DILocation(line: 628, column: 26, scope: !1693)
!1800 = !DILocation(line: 628, column: 32, scope: !1693)
!1801 = !DILocation(line: 628, column: 29, scope: !1693)
!1802 = !DILocation(line: 628, column: 5, scope: !1693)
!1803 = !DILocation(line: 629, column: 55, scope: !1693)
!1804 = !DILocation(line: 629, column: 52, scope: !1693)
!1805 = !DILocation(line: 629, column: 66, scope: !1693)
!1806 = !DILocation(line: 629, column: 70, scope: !1693)
!1807 = !DILocation(line: 629, column: 5, scope: !1693)
!1808 = !DILocation(line: 630, column: 17, scope: !1693)
!1809 = !DILocation(line: 636, column: 11, scope: !1693)
!1810 = !DILocation(line: 635, column: 11, scope: !1693)
!1811 = !DILocation(line: 637, column: 14, scope: !1693)
!1812 = !DILocation(line: 635, column: 17, scope: !1693)
!1813 = !DILocation(line: 638, column: 5, scope: !1693)
!1814 = !DILocation(line: 639, column: 5, scope: !1693)
!1815 = !DILocation(line: 640, column: 5, scope: !1693)
!1816 = !DILocation(line: 641, column: 5, scope: !1693)
!1817 = !DILocation(line: 642, column: 1, scope: !1693)
!1818 = distinct !DISubprogram(name: "hgetCommand", scope: !1, file: !1, line: 679, type: !1194, isLocal: false, isDefinition: true, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1819)
!1819 = !{!1820, !1821}
!1820 = !DILocalVariable(name: "c", arg: 1, scope: !1818, file: !1, line: 679, type: !1132)
!1821 = !DILocalVariable(name: "o", scope: !1818, file: !1, line: 680, type: !128)
!1822 = !DILocation(line: 679, column: 26, scope: !1818)
!1823 = !DILocation(line: 682, column: 40, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1818, file: !1, line: 682, column: 9)
!1825 = !DILocation(line: 682, column: 37, scope: !1824)
!1826 = !DILocation(line: 682, column: 55, scope: !1824)
!1827 = !{!1324, !162, i64 80}
!1828 = !DILocation(line: 682, column: 14, scope: !1824)
!1829 = !DILocation(line: 680, column: 11, scope: !1818)
!1830 = !DILocation(line: 682, column: 66, scope: !1824)
!1831 = !DILocation(line: 682, column: 74, scope: !1824)
!1832 = !DILocation(line: 683, column: 9, scope: !1824)
!1833 = !DILocation(line: 682, column: 9, scope: !1818)
!1834 = !DILocation(line: 685, column: 34, scope: !1818)
!1835 = !DILocation(line: 685, column: 31, scope: !1818)
!1836 = !DILocation(line: 685, column: 43, scope: !1818)
!1837 = !DILocation(line: 685, column: 5, scope: !1818)
!1838 = !DILocation(line: 686, column: 1, scope: !1818)
!1839 = distinct !DISubprogram(name: "addHashFieldToReply", scope: !1, file: !1, line: 644, type: !1840, isLocal: true, isDefinition: true, scopeLine: 644, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1842)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{null, !1132, !128, !176}
!1842 = !{!1843, !1844, !1845, !1846, !1847, !1850, !1851, !1852}
!1843 = !DILocalVariable(name: "c", arg: 1, scope: !1839, file: !1, line: 644, type: !1132)
!1844 = !DILocalVariable(name: "o", arg: 2, scope: !1839, file: !1, line: 644, type: !128)
!1845 = !DILocalVariable(name: "field", arg: 3, scope: !1839, file: !1, line: 644, type: !176)
!1846 = !DILocalVariable(name: "ret", scope: !1839, file: !1, line: 645, type: !39)
!1847 = !DILocalVariable(name: "vstr", scope: !1848, file: !1, line: 653, type: !5)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !1, line: 652, column: 46)
!1849 = distinct !DILexicalBlock(scope: !1839, file: !1, line: 652, column: 9)
!1850 = !DILocalVariable(name: "vlen", scope: !1848, file: !1, line: 654, type: !110)
!1851 = !DILocalVariable(name: "vll", scope: !1848, file: !1, line: 655, type: !247)
!1852 = !DILocalVariable(name: "value", scope: !1853, file: !1, line: 669, type: !176)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !1, line: 668, column: 48)
!1854 = distinct !DILexicalBlock(scope: !1849, file: !1, line: 668, column: 16)
!1855 = !DILocation(line: 644, column: 41, scope: !1839)
!1856 = !DILocation(line: 644, column: 50, scope: !1839)
!1857 = !DILocation(line: 644, column: 57, scope: !1839)
!1858 = !DILocation(line: 647, column: 11, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1839, file: !1, line: 647, column: 9)
!1860 = !DILocation(line: 647, column: 9, scope: !1839)
!1861 = !DILocation(line: 648, column: 28, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1859, file: !1, line: 647, column: 20)
!1863 = !DILocation(line: 648, column: 9, scope: !1862)
!1864 = !DILocation(line: 649, column: 9, scope: !1862)
!1865 = !DILocation(line: 652, column: 12, scope: !1849)
!1866 = !DILocation(line: 652, column: 9, scope: !1839)
!1867 = !DILocation(line: 653, column: 9, scope: !1848)
!1868 = !DILocation(line: 653, column: 24, scope: !1848)
!1869 = !DILocation(line: 654, column: 9, scope: !1848)
!1870 = !DILocation(line: 654, column: 22, scope: !1848)
!1871 = !DILocation(line: 655, column: 9, scope: !1848)
!1872 = !DILocation(line: 655, column: 19, scope: !1848)
!1873 = !DILocation(line: 657, column: 15, scope: !1848)
!1874 = !DILocation(line: 645, column: 9, scope: !1839)
!1875 = !DILocation(line: 658, column: 17, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1848, file: !1, line: 658, column: 13)
!1877 = !DILocation(line: 658, column: 13, scope: !1848)
!1878 = !DILocation(line: 659, column: 32, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1876, file: !1, line: 658, column: 22)
!1880 = !DILocation(line: 659, column: 13, scope: !1879)
!1881 = !DILocation(line: 660, column: 9, scope: !1879)
!1882 = !DILocation(line: 661, column: 17, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !1, line: 661, column: 17)
!1884 = distinct !DILexicalBlock(scope: !1876, file: !1, line: 660, column: 16)
!1885 = !DILocation(line: 661, column: 17, scope: !1884)
!1886 = !DILocation(line: 662, column: 46, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1883, file: !1, line: 661, column: 23)
!1888 = !DILocation(line: 662, column: 17, scope: !1887)
!1889 = !DILocation(line: 663, column: 13, scope: !1887)
!1890 = !DILocation(line: 664, column: 41, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1883, file: !1, line: 663, column: 20)
!1892 = !DILocation(line: 664, column: 17, scope: !1891)
!1893 = !DILocation(line: 668, column: 5, scope: !1849)
!1894 = !DILocation(line: 668, column: 5, scope: !1848)
!1895 = !DILocation(line: 90, column: 36, scope: !308, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 669, column: 21, scope: !1853)
!1897 = !DILocation(line: 90, column: 43, scope: !308, inlinedAt: !1896)
!1898 = !DILocation(line: 93, column: 5, scope: !308, inlinedAt: !1896)
!1899 = !DILocation(line: 95, column: 22, scope: !308, inlinedAt: !1896)
!1900 = !DILocation(line: 95, column: 10, scope: !308, inlinedAt: !1896)
!1901 = !DILocation(line: 91, column: 16, scope: !308, inlinedAt: !1896)
!1902 = !DILocation(line: 96, column: 12, scope: !322, inlinedAt: !1896)
!1903 = !DILocation(line: 96, column: 9, scope: !308, inlinedAt: !1896)
!1904 = !DILocation(line: 97, column: 12, scope: !308, inlinedAt: !1896)
!1905 = !DILocation(line: 669, column: 13, scope: !1853)
!1906 = !DILocation(line: 670, column: 19, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1853, file: !1, line: 670, column: 13)
!1908 = !DILocation(line: 670, column: 13, scope: !1853)
!1909 = !DILocation(line: 671, column: 32, scope: !1907)
!1910 = !DILocation(line: 671, column: 13, scope: !1907)
!1911 = !DILocation(line: 87, column: 39, scope: !170, inlinedAt: !1912)
!1912 = distinct !DILocation(line: 673, column: 43, scope: !1907)
!1913 = !DILocation(line: 88, column: 27, scope: !170, inlinedAt: !1912)
!1914 = !DILocation(line: 88, column: 19, scope: !170, inlinedAt: !1912)
!1915 = !DILocation(line: 89, column: 5, scope: !170, inlinedAt: !1912)
!1916 = !DILocation(line: 91, column: 20, scope: !186, inlinedAt: !1912)
!1917 = !DILocation(line: 91, column: 13, scope: !186, inlinedAt: !1912)
!1918 = !DILocation(line: 93, column: 20, scope: !186, inlinedAt: !1912)
!1919 = !DILocation(line: 93, column: 34, scope: !186, inlinedAt: !1912)
!1920 = !DILocation(line: 93, column: 13, scope: !186, inlinedAt: !1912)
!1921 = !DILocation(line: 95, column: 20, scope: !186, inlinedAt: !1912)
!1922 = !DILocation(line: 95, column: 35, scope: !186, inlinedAt: !1912)
!1923 = !DILocation(line: 95, column: 13, scope: !186, inlinedAt: !1912)
!1924 = !DILocation(line: 97, column: 20, scope: !186, inlinedAt: !1912)
!1925 = !DILocation(line: 97, column: 35, scope: !186, inlinedAt: !1912)
!1926 = !DILocation(line: 97, column: 13, scope: !186, inlinedAt: !1912)
!1927 = !DILocation(line: 99, column: 20, scope: !186, inlinedAt: !1912)
!1928 = !DILocation(line: 99, column: 35, scope: !186, inlinedAt: !1912)
!1929 = !DILocation(line: 99, column: 13, scope: !186, inlinedAt: !1912)
!1930 = !DILocation(line: 0, scope: !186, inlinedAt: !1912)
!1931 = !DILocation(line: 673, column: 13, scope: !1907)
!1932 = !DILocation(line: 675, column: 9, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1854, file: !1, line: 674, column: 12)
!1934 = !DILocation(line: 677, column: 1, scope: !1839)
!1935 = distinct !DISubprogram(name: "hmgetCommand", scope: !1, file: !1, line: 688, type: !1194, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1936)
!1936 = !{!1937, !1938, !1939}
!1937 = !DILocalVariable(name: "c", arg: 1, scope: !1935, file: !1, line: 688, type: !1132)
!1938 = !DILocalVariable(name: "o", scope: !1935, file: !1, line: 689, type: !128)
!1939 = !DILocalVariable(name: "i", scope: !1935, file: !1, line: 690, type: !39)
!1940 = !DILocation(line: 688, column: 27, scope: !1935)
!1941 = !DILocation(line: 694, column: 26, scope: !1935)
!1942 = !DILocation(line: 694, column: 33, scope: !1935)
!1943 = !DILocation(line: 694, column: 30, scope: !1935)
!1944 = !DILocation(line: 694, column: 9, scope: !1935)
!1945 = !DILocation(line: 689, column: 11, scope: !1935)
!1946 = !DILocation(line: 695, column: 11, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1935, file: !1, line: 695, column: 9)
!1948 = !DILocation(line: 695, column: 19, scope: !1947)
!1949 = !DILocation(line: 695, column: 25, scope: !1947)
!1950 = !DILocation(line: 695, column: 30, scope: !1947)
!1951 = !DILocation(line: 695, column: 9, scope: !1935)
!1952 = !DILocation(line: 696, column: 28, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1947, file: !1, line: 695, column: 43)
!1954 = !DILocation(line: 696, column: 9, scope: !1953)
!1955 = !DILocation(line: 697, column: 9, scope: !1953)
!1956 = !DILocation(line: 700, column: 32, scope: !1935)
!1957 = !DILocation(line: 700, column: 36, scope: !1935)
!1958 = !DILocation(line: 700, column: 29, scope: !1935)
!1959 = !DILocation(line: 700, column: 5, scope: !1935)
!1960 = !DILocation(line: 690, column: 9, scope: !1935)
!1961 = !DILocation(line: 701, column: 24, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !1, line: 701, column: 5)
!1963 = distinct !DILexicalBlock(scope: !1935, file: !1, line: 701, column: 5)
!1964 = !DILocation(line: 701, column: 19, scope: !1962)
!1965 = !DILocation(line: 701, column: 5, scope: !1963)
!1966 = !DILocation(line: 702, column: 38, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1962, file: !1, line: 701, column: 35)
!1968 = !DILocation(line: 702, column: 35, scope: !1967)
!1969 = !DILocation(line: 702, column: 47, scope: !1967)
!1970 = !DILocation(line: 702, column: 9, scope: !1967)
!1971 = !DILocation(line: 701, column: 31, scope: !1962)
!1972 = distinct !{!1972, !1965, !1973}
!1973 = !DILocation(line: 703, column: 5, scope: !1963)
!1974 = !DILocation(line: 704, column: 1, scope: !1935)
!1975 = distinct !DISubprogram(name: "hdelCommand", scope: !1, file: !1, line: 706, type: !1194, isLocal: false, isDefinition: true, scopeLine: 706, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1976)
!1976 = !{!1977, !1978, !1979, !1980, !1981}
!1977 = !DILocalVariable(name: "c", arg: 1, scope: !1975, file: !1, line: 706, type: !1132)
!1978 = !DILocalVariable(name: "o", scope: !1975, file: !1, line: 707, type: !128)
!1979 = !DILocalVariable(name: "j", scope: !1975, file: !1, line: 708, type: !39)
!1980 = !DILocalVariable(name: "deleted", scope: !1975, file: !1, line: 708, type: !39)
!1981 = !DILocalVariable(name: "keyremoved", scope: !1975, file: !1, line: 708, type: !39)
!1982 = !DILocation(line: 706, column: 26, scope: !1975)
!1983 = !DILocation(line: 708, column: 12, scope: !1975)
!1984 = !DILocation(line: 708, column: 25, scope: !1975)
!1985 = !DILocation(line: 710, column: 41, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1975, file: !1, line: 710, column: 9)
!1987 = !DILocation(line: 710, column: 38, scope: !1986)
!1988 = !DILocation(line: 710, column: 56, scope: !1986)
!1989 = !DILocation(line: 710, column: 14, scope: !1986)
!1990 = !DILocation(line: 707, column: 11, scope: !1975)
!1991 = !DILocation(line: 710, column: 64, scope: !1986)
!1992 = !DILocation(line: 710, column: 72, scope: !1986)
!1993 = !DILocation(line: 711, column: 9, scope: !1986)
!1994 = !DILocation(line: 710, column: 9, scope: !1975)
!1995 = !DILocation(line: 708, column: 9, scope: !1975)
!1996 = !DILocation(line: 713, column: 24, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !1, line: 713, column: 5)
!1998 = distinct !DILexicalBlock(scope: !1975, file: !1, line: 713, column: 5)
!1999 = !DILocation(line: 713, column: 19, scope: !1997)
!2000 = !DILocation(line: 713, column: 5, scope: !1998)
!2001 = !DILocation(line: 714, column: 33, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !1, line: 714, column: 13)
!2003 = distinct !DILexicalBlock(scope: !1997, file: !1, line: 713, column: 35)
!2004 = !DILocation(line: 714, column: 30, scope: !2002)
!2005 = !DILocation(line: 714, column: 42, scope: !2002)
!2006 = !DILocation(line: 714, column: 13, scope: !2002)
!2007 = !DILocation(line: 714, column: 13, scope: !2003)
!2008 = !DILocation(line: 715, column: 20, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2002, file: !1, line: 714, column: 48)
!2010 = !DILocation(line: 311, column: 42, scope: !695, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 716, column: 17, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2009, file: !1, line: 716, column: 17)
!2013 = !DILocation(line: 312, column: 19, scope: !695, inlinedAt: !2011)
!2014 = !DILocation(line: 314, column: 12, scope: !707, inlinedAt: !2011)
!2015 = !DILocation(line: 314, column: 9, scope: !695, inlinedAt: !2011)
!2016 = !DILocation(line: 315, column: 32, scope: !710, inlinedAt: !2011)
!2017 = !DILocation(line: 315, column: 18, scope: !710, inlinedAt: !2011)
!2018 = !DILocation(line: 315, column: 37, scope: !710, inlinedAt: !2011)
!2019 = !DILocation(line: 316, column: 5, scope: !710, inlinedAt: !2011)
!2020 = !DILocation(line: 317, column: 18, scope: !714, inlinedAt: !2011)
!2021 = !DILocation(line: 319, column: 9, scope: !719, inlinedAt: !2011)
!2022 = !DILocation(line: 0, scope: !714, inlinedAt: !2011)
!2023 = !DILocation(line: 716, column: 35, scope: !2012)
!2024 = !DILocation(line: 716, column: 17, scope: !2009)
!2025 = !DILocation(line: 717, column: 29, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2012, file: !1, line: 716, column: 41)
!2027 = !DILocation(line: 717, column: 35, scope: !2026)
!2028 = !DILocation(line: 717, column: 32, scope: !2026)
!2029 = !DILocation(line: 717, column: 17, scope: !2026)
!2030 = !DILocation(line: 719, column: 17, scope: !2026)
!2031 = !DILocation(line: 0, scope: !1975)
!2032 = !DILocation(line: 713, column: 31, scope: !1997)
!2033 = distinct !{!2033, !2000, !2034}
!2034 = !DILocation(line: 722, column: 5, scope: !1998)
!2035 = !DILocation(line: 723, column: 9, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !1975, file: !1, line: 723, column: 9)
!2037 = !DILocation(line: 723, column: 9, scope: !1975)
!2038 = !DILocation(line: 724, column: 30, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2036, file: !1, line: 723, column: 18)
!2040 = !DILocation(line: 724, column: 36, scope: !2039)
!2041 = !DILocation(line: 724, column: 33, scope: !2039)
!2042 = !DILocation(line: 724, column: 9, scope: !2039)
!2043 = !DILocation(line: 725, column: 51, scope: !2039)
!2044 = !DILocation(line: 725, column: 48, scope: !2039)
!2045 = !DILocation(line: 725, column: 62, scope: !2039)
!2046 = !DILocation(line: 725, column: 66, scope: !2039)
!2047 = !DILocation(line: 725, column: 9, scope: !2039)
!2048 = !DILocation(line: 726, column: 13, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2039, file: !1, line: 726, column: 13)
!2050 = !DILocation(line: 726, column: 13, scope: !2039)
!2051 = !DILocation(line: 727, column: 57, scope: !2049)
!2052 = !DILocation(line: 727, column: 54, scope: !2049)
!2053 = !DILocation(line: 728, column: 36, scope: !2049)
!2054 = !DILocation(line: 728, column: 40, scope: !2049)
!2055 = !DILocation(line: 727, column: 13, scope: !2049)
!2056 = !DILocation(line: 729, column: 25, scope: !2039)
!2057 = !DILocation(line: 729, column: 22, scope: !2039)
!2058 = !DILocation(line: 730, column: 5, scope: !2039)
!2059 = !DILocation(line: 731, column: 24, scope: !1975)
!2060 = !DILocation(line: 731, column: 5, scope: !1975)
!2061 = !DILocation(line: 732, column: 1, scope: !1975)
!2062 = distinct !DISubprogram(name: "hlenCommand", scope: !1, file: !1, line: 734, type: !1194, isLocal: false, isDefinition: true, scopeLine: 734, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2063)
!2063 = !{!2064, !2065}
!2064 = !DILocalVariable(name: "c", arg: 1, scope: !2062, file: !1, line: 734, type: !1132)
!2065 = !DILocalVariable(name: "o", scope: !2062, file: !1, line: 735, type: !128)
!2066 = !DILocation(line: 734, column: 26, scope: !2062)
!2067 = !DILocation(line: 737, column: 40, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2062, file: !1, line: 737, column: 9)
!2069 = !DILocation(line: 737, column: 37, scope: !2068)
!2070 = !DILocation(line: 737, column: 55, scope: !2068)
!2071 = !DILocation(line: 737, column: 14, scope: !2068)
!2072 = !DILocation(line: 735, column: 11, scope: !2062)
!2073 = !DILocation(line: 737, column: 63, scope: !2068)
!2074 = !DILocation(line: 737, column: 71, scope: !2068)
!2075 = !DILocation(line: 738, column: 9, scope: !2068)
!2076 = !DILocation(line: 737, column: 9, scope: !2062)
!2077 = !DILocation(line: 311, column: 42, scope: !695, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 740, column: 24, scope: !2062)
!2079 = !DILocation(line: 312, column: 19, scope: !695, inlinedAt: !2078)
!2080 = !DILocation(line: 314, column: 12, scope: !707, inlinedAt: !2078)
!2081 = !DILocation(line: 314, column: 9, scope: !695, inlinedAt: !2078)
!2082 = !DILocation(line: 315, column: 32, scope: !710, inlinedAt: !2078)
!2083 = !DILocation(line: 315, column: 18, scope: !710, inlinedAt: !2078)
!2084 = !DILocation(line: 315, column: 37, scope: !710, inlinedAt: !2078)
!2085 = !DILocation(line: 316, column: 5, scope: !710, inlinedAt: !2078)
!2086 = !DILocation(line: 317, column: 18, scope: !714, inlinedAt: !2078)
!2087 = !DILocation(line: 319, column: 9, scope: !719, inlinedAt: !2078)
!2088 = !DILocation(line: 0, scope: !714, inlinedAt: !2078)
!2089 = !DILocation(line: 740, column: 5, scope: !2062)
!2090 = !DILocation(line: 741, column: 1, scope: !2062)
!2091 = distinct !DISubprogram(name: "hstrlenCommand", scope: !1, file: !1, line: 743, type: !1194, isLocal: false, isDefinition: true, scopeLine: 743, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2092)
!2092 = !{!2093, !2094}
!2093 = !DILocalVariable(name: "c", arg: 1, scope: !2091, file: !1, line: 743, type: !1132)
!2094 = !DILocalVariable(name: "o", scope: !2091, file: !1, line: 744, type: !128)
!2095 = !DILocation(line: 743, column: 29, scope: !2091)
!2096 = !DILocation(line: 746, column: 40, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2091, file: !1, line: 746, column: 9)
!2098 = !DILocation(line: 746, column: 37, scope: !2097)
!2099 = !DILocation(line: 746, column: 55, scope: !2097)
!2100 = !DILocation(line: 746, column: 14, scope: !2097)
!2101 = !DILocation(line: 744, column: 11, scope: !2091)
!2102 = !DILocation(line: 746, column: 63, scope: !2097)
!2103 = !DILocation(line: 746, column: 71, scope: !2097)
!2104 = !DILocation(line: 747, column: 9, scope: !2097)
!2105 = !DILocation(line: 746, column: 9, scope: !2091)
!2106 = !DILocation(line: 748, column: 52, scope: !2091)
!2107 = !DILocation(line: 748, column: 49, scope: !2091)
!2108 = !DILocation(line: 748, column: 61, scope: !2091)
!2109 = !DILocation(line: 748, column: 24, scope: !2091)
!2110 = !DILocation(line: 748, column: 5, scope: !2091)
!2111 = !DILocation(line: 749, column: 1, scope: !2091)
!2112 = distinct !DISubprogram(name: "genericHgetallCommand", scope: !1, file: !1, line: 770, type: !2113, isLocal: false, isDefinition: true, scopeLine: 770, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2115)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{null, !1132, !39}
!2115 = !{!2116, !2117, !2118, !2119, !2120, !2121, !2122}
!2116 = !DILocalVariable(name: "c", arg: 1, scope: !2112, file: !1, line: 770, type: !1132)
!2117 = !DILocalVariable(name: "flags", arg: 2, scope: !2112, file: !1, line: 770, type: !39)
!2118 = !DILocalVariable(name: "o", scope: !2112, file: !1, line: 771, type: !128)
!2119 = !DILocalVariable(name: "hi", scope: !2112, file: !1, line: 772, type: !877)
!2120 = !DILocalVariable(name: "multiplier", scope: !2112, file: !1, line: 773, type: !39)
!2121 = !DILocalVariable(name: "length", scope: !2112, file: !1, line: 774, type: !39)
!2122 = !DILocalVariable(name: "count", scope: !2112, file: !1, line: 774, type: !39)
!2123 = !DILocation(line: 770, column: 36, scope: !2112)
!2124 = !DILocation(line: 770, column: 43, scope: !2112)
!2125 = !DILocation(line: 773, column: 9, scope: !2112)
!2126 = !DILocation(line: 774, column: 17, scope: !2112)
!2127 = !DILocation(line: 776, column: 40, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2112, file: !1, line: 776, column: 9)
!2129 = !DILocation(line: 776, column: 37, scope: !2128)
!2130 = !DILocation(line: 776, column: 55, scope: !2128)
!2131 = !{!1324, !162, i64 104}
!2132 = !DILocation(line: 776, column: 14, scope: !2128)
!2133 = !DILocation(line: 771, column: 11, scope: !2112)
!2134 = !DILocation(line: 776, column: 72, scope: !2128)
!2135 = !DILocation(line: 777, column: 9, scope: !2128)
!2136 = !DILocation(line: 777, column: 12, scope: !2128)
!2137 = !DILocation(line: 776, column: 9, scope: !2112)
!2138 = !DILocation(line: 779, column: 15, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2112, file: !1, line: 779, column: 9)
!2140 = !DILocation(line: 780, column: 15, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2112, file: !1, line: 780, column: 9)
!2142 = !DILocation(line: 780, column: 9, scope: !2112)
!2143 = !DILocation(line: 311, column: 42, scope: !695, inlinedAt: !2144)
!2144 = distinct !DILocation(line: 782, column: 14, scope: !2112)
!2145 = !DILocation(line: 312, column: 19, scope: !695, inlinedAt: !2144)
!2146 = !DILocation(line: 314, column: 12, scope: !707, inlinedAt: !2144)
!2147 = !DILocation(line: 314, column: 9, scope: !695, inlinedAt: !2144)
!2148 = !DILocation(line: 315, column: 32, scope: !710, inlinedAt: !2144)
!2149 = !DILocation(line: 315, column: 18, scope: !710, inlinedAt: !2144)
!2150 = !DILocation(line: 315, column: 37, scope: !710, inlinedAt: !2144)
!2151 = !DILocation(line: 316, column: 5, scope: !710, inlinedAt: !2144)
!2152 = !DILocation(line: 317, column: 18, scope: !714, inlinedAt: !2144)
!2153 = !DILocation(line: 319, column: 9, scope: !719, inlinedAt: !2144)
!2154 = !DILocation(line: 0, scope: !714, inlinedAt: !2144)
!2155 = !DILocation(line: 782, column: 14, scope: !2112)
!2156 = !DILocation(line: 774, column: 9, scope: !2112)
!2157 = !DILocation(line: 783, column: 29, scope: !2112)
!2158 = !DILocation(line: 783, column: 5, scope: !2112)
!2159 = !DILocation(line: 324, column: 46, scope: !874, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 785, column: 10, scope: !2112)
!2161 = !DILocation(line: 325, column: 28, scope: !874, inlinedAt: !2160)
!2162 = !DILocation(line: 325, column: 23, scope: !874, inlinedAt: !2160)
!2163 = !DILocation(line: 326, column: 9, scope: !874, inlinedAt: !2160)
!2164 = !DILocation(line: 326, column: 17, scope: !874, inlinedAt: !2160)
!2165 = !DILocation(line: 327, column: 29, scope: !874, inlinedAt: !2160)
!2166 = !DILocation(line: 327, column: 9, scope: !874, inlinedAt: !2160)
!2167 = !DILocation(line: 327, column: 18, scope: !874, inlinedAt: !2160)
!2168 = !DILocation(line: 329, column: 9, scope: !874, inlinedAt: !2160)
!2169 = !DILocation(line: 330, column: 13, scope: !914, inlinedAt: !2160)
!2170 = !DILocation(line: 330, column: 18, scope: !914, inlinedAt: !2160)
!2171 = !DILocation(line: 332, column: 5, scope: !914, inlinedAt: !2160)
!2172 = !DILocation(line: 333, column: 43, scope: !919, inlinedAt: !2160)
!2173 = !DILocation(line: 333, column: 18, scope: !919, inlinedAt: !2160)
!2174 = !DILocation(line: 333, column: 13, scope: !919, inlinedAt: !2160)
!2175 = !DILocation(line: 333, column: 16, scope: !919, inlinedAt: !2160)
!2176 = !DILocation(line: 335, column: 9, scope: !926, inlinedAt: !2160)
!2177 = !DILocation(line: 772, column: 23, scope: !2112)
!2178 = !DILocation(line: 786, column: 12, scope: !2112)
!2179 = !DILocation(line: 786, column: 29, scope: !2112)
!2180 = !DILocation(line: 786, column: 5, scope: !2112)
!2181 = !DILocation(line: 787, column: 13, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2112, file: !1, line: 786, column: 39)
!2183 = !DILocation(line: 788, column: 13, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !1, line: 787, column: 35)
!2185 = distinct !DILexicalBlock(scope: !2182, file: !1, line: 787, column: 13)
!2186 = !DILocation(line: 789, column: 18, scope: !2184)
!2187 = !DILocation(line: 790, column: 9, scope: !2184)
!2188 = !DILocation(line: 0, scope: !2112)
!2189 = !DILocation(line: 791, column: 13, scope: !2182)
!2190 = !DILocation(line: 792, column: 13, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !1, line: 791, column: 37)
!2192 = distinct !DILexicalBlock(scope: !2182, file: !1, line: 791, column: 13)
!2193 = !DILocation(line: 793, column: 18, scope: !2191)
!2194 = !DILocation(line: 794, column: 9, scope: !2191)
!2195 = !DILocation(line: 0, scope: !2184)
!2196 = distinct !{!2196, !2180, !2197}
!2197 = !DILocation(line: 795, column: 5, scope: !2112)
!2198 = !DILocation(line: 0, scope: !2191)
!2199 = !DILocation(line: 340, column: 48, scope: !928, inlinedAt: !2200)
!2200 = distinct !DILocation(line: 797, column: 5, scope: !2112)
!2201 = !DILocation(line: 341, column: 13, scope: !935, inlinedAt: !2200)
!2202 = !DILocation(line: 341, column: 22, scope: !935, inlinedAt: !2200)
!2203 = !DILocation(line: 341, column: 9, scope: !928, inlinedAt: !2200)
!2204 = !DILocation(line: 342, column: 33, scope: !935, inlinedAt: !2200)
!2205 = !DILocation(line: 342, column: 9, scope: !935, inlinedAt: !2200)
!2206 = !DILocation(line: 343, column: 5, scope: !928, inlinedAt: !2200)
!2207 = !DILocation(line: 798, column: 5, scope: !2112)
!2208 = !DILocation(line: 799, column: 1, scope: !2112)
!2209 = distinct !DISubprogram(name: "addHashIteratorCursorToReply", scope: !1, file: !1, line: 751, type: !2210, isLocal: true, isDefinition: true, scopeLine: 751, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2212)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{null, !1132, !877, !39}
!2212 = !{!2213, !2214, !2215, !2216, !2219, !2220, !2221}
!2213 = !DILocalVariable(name: "c", arg: 1, scope: !2209, file: !1, line: 751, type: !1132)
!2214 = !DILocalVariable(name: "hi", arg: 2, scope: !2209, file: !1, line: 751, type: !877)
!2215 = !DILocalVariable(name: "what", arg: 3, scope: !2209, file: !1, line: 751, type: !39)
!2216 = !DILocalVariable(name: "vstr", scope: !2217, file: !1, line: 753, type: !5)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !1, line: 752, column: 47)
!2218 = distinct !DILexicalBlock(scope: !2209, file: !1, line: 752, column: 9)
!2219 = !DILocalVariable(name: "vlen", scope: !2217, file: !1, line: 754, type: !110)
!2220 = !DILocalVariable(name: "vll", scope: !2217, file: !1, line: 755, type: !247)
!2221 = !DILocalVariable(name: "value", scope: !2222, file: !1, line: 763, type: !176)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !1, line: 762, column: 49)
!2223 = distinct !DILexicalBlock(scope: !2218, file: !1, line: 762, column: 16)
!2224 = !DILocation(line: 751, column: 50, scope: !2209)
!2225 = !DILocation(line: 751, column: 71, scope: !2209)
!2226 = !DILocation(line: 751, column: 79, scope: !2209)
!2227 = !DILocation(line: 752, column: 13, scope: !2218)
!2228 = !DILocation(line: 752, column: 9, scope: !2209)
!2229 = !DILocation(line: 753, column: 9, scope: !2217)
!2230 = !DILocation(line: 753, column: 24, scope: !2217)
!2231 = !DILocation(line: 754, column: 9, scope: !2217)
!2232 = !DILocation(line: 754, column: 22, scope: !2217)
!2233 = !DILocation(line: 755, column: 9, scope: !2217)
!2234 = !DILocation(line: 755, column: 19, scope: !2217)
!2235 = !DILocation(line: 757, column: 9, scope: !2217)
!2236 = !DILocation(line: 758, column: 13, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2217, file: !1, line: 758, column: 13)
!2238 = !DILocation(line: 758, column: 13, scope: !2217)
!2239 = !DILocation(line: 759, column: 42, scope: !2237)
!2240 = !DILocation(line: 759, column: 13, scope: !2237)
!2241 = !DILocation(line: 761, column: 37, scope: !2237)
!2242 = !DILocation(line: 761, column: 13, scope: !2237)
!2243 = !DILocation(line: 762, column: 5, scope: !2218)
!2244 = !DILocation(line: 762, column: 5, scope: !2217)
!2245 = !DILocation(line: 406, column: 52, scope: !1027, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 763, column: 21, scope: !2222)
!2247 = !DILocation(line: 406, column: 60, scope: !1027, inlinedAt: !2246)
!2248 = !DILocation(line: 409, column: 14, scope: !1037, inlinedAt: !2246)
!2249 = !DILocation(line: 0, scope: !1039, inlinedAt: !2246)
!2250 = !DILocation(line: 410, column: 16, scope: !1041, inlinedAt: !2246)
!2251 = !DILocation(line: 412, column: 16, scope: !1039, inlinedAt: !2246)
!2252 = !DILocation(line: 409, column: 9, scope: !1027, inlinedAt: !2246)
!2253 = !DILocation(line: 763, column: 13, scope: !2222)
!2254 = !DILocation(line: 87, column: 39, scope: !170, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 764, column: 39, scope: !2222)
!2256 = !DILocation(line: 88, column: 27, scope: !170, inlinedAt: !2255)
!2257 = !DILocation(line: 88, column: 19, scope: !170, inlinedAt: !2255)
!2258 = !DILocation(line: 89, column: 5, scope: !170, inlinedAt: !2255)
!2259 = !DILocation(line: 91, column: 20, scope: !186, inlinedAt: !2255)
!2260 = !DILocation(line: 91, column: 13, scope: !186, inlinedAt: !2255)
!2261 = !DILocation(line: 93, column: 20, scope: !186, inlinedAt: !2255)
!2262 = !DILocation(line: 93, column: 34, scope: !186, inlinedAt: !2255)
!2263 = !DILocation(line: 93, column: 13, scope: !186, inlinedAt: !2255)
!2264 = !DILocation(line: 95, column: 20, scope: !186, inlinedAt: !2255)
!2265 = !DILocation(line: 95, column: 35, scope: !186, inlinedAt: !2255)
!2266 = !DILocation(line: 95, column: 13, scope: !186, inlinedAt: !2255)
!2267 = !DILocation(line: 97, column: 20, scope: !186, inlinedAt: !2255)
!2268 = !DILocation(line: 97, column: 35, scope: !186, inlinedAt: !2255)
!2269 = !DILocation(line: 97, column: 13, scope: !186, inlinedAt: !2255)
!2270 = !DILocation(line: 99, column: 20, scope: !186, inlinedAt: !2255)
!2271 = !DILocation(line: 99, column: 35, scope: !186, inlinedAt: !2255)
!2272 = !DILocation(line: 99, column: 13, scope: !186, inlinedAt: !2255)
!2273 = !DILocation(line: 0, scope: !186, inlinedAt: !2255)
!2274 = !DILocation(line: 764, column: 9, scope: !2222)
!2275 = !DILocation(line: 766, column: 9, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2223, file: !1, line: 765, column: 12)
!2277 = !DILocation(line: 768, column: 1, scope: !2209)
!2278 = distinct !DISubprogram(name: "hkeysCommand", scope: !1, file: !1, line: 801, type: !1194, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2279)
!2279 = !{!2280}
!2280 = !DILocalVariable(name: "c", arg: 1, scope: !2278, file: !1, line: 801, type: !1132)
!2281 = !DILocation(line: 801, column: 27, scope: !2278)
!2282 = !DILocation(line: 802, column: 5, scope: !2278)
!2283 = !DILocation(line: 803, column: 1, scope: !2278)
!2284 = distinct !DISubprogram(name: "hvalsCommand", scope: !1, file: !1, line: 805, type: !1194, isLocal: false, isDefinition: true, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2285)
!2285 = !{!2286}
!2286 = !DILocalVariable(name: "c", arg: 1, scope: !2284, file: !1, line: 805, type: !1132)
!2287 = !DILocation(line: 805, column: 27, scope: !2284)
!2288 = !DILocation(line: 806, column: 5, scope: !2284)
!2289 = !DILocation(line: 807, column: 1, scope: !2284)
!2290 = distinct !DISubprogram(name: "hgetallCommand", scope: !1, file: !1, line: 809, type: !1194, isLocal: false, isDefinition: true, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2291)
!2291 = !{!2292}
!2292 = !DILocalVariable(name: "c", arg: 1, scope: !2290, file: !1, line: 809, type: !1132)
!2293 = !DILocation(line: 809, column: 29, scope: !2290)
!2294 = !DILocation(line: 810, column: 5, scope: !2290)
!2295 = !DILocation(line: 811, column: 1, scope: !2290)
!2296 = distinct !DISubprogram(name: "hexistsCommand", scope: !1, file: !1, line: 813, type: !1194, isLocal: false, isDefinition: true, scopeLine: 813, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2297)
!2297 = !{!2298, !2299}
!2298 = !DILocalVariable(name: "c", arg: 1, scope: !2296, file: !1, line: 813, type: !1132)
!2299 = !DILocalVariable(name: "o", scope: !2296, file: !1, line: 814, type: !128)
!2300 = !DILocation(line: 813, column: 29, scope: !2296)
!2301 = !DILocation(line: 815, column: 40, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2296, file: !1, line: 815, column: 9)
!2303 = !DILocation(line: 815, column: 37, scope: !2302)
!2304 = !DILocation(line: 815, column: 55, scope: !2302)
!2305 = !DILocation(line: 815, column: 14, scope: !2302)
!2306 = !DILocation(line: 814, column: 11, scope: !2296)
!2307 = !DILocation(line: 815, column: 63, scope: !2302)
!2308 = !DILocation(line: 815, column: 71, scope: !2302)
!2309 = !DILocation(line: 816, column: 9, scope: !2302)
!2310 = !DILocation(line: 815, column: 9, scope: !2296)
!2311 = !DILocation(line: 818, column: 37, scope: !2296)
!2312 = !DILocation(line: 818, column: 34, scope: !2296)
!2313 = !DILocation(line: 818, column: 46, scope: !2296)
!2314 = !DILocation(line: 818, column: 17, scope: !2296)
!2315 = !DILocation(line: 818, column: 60, scope: !2296)
!2316 = !DILocation(line: 818, column: 74, scope: !2296)
!2317 = !DILocation(line: 818, column: 5, scope: !2296)
!2318 = !DILocation(line: 819, column: 1, scope: !2296)
!2319 = distinct !DISubprogram(name: "hscanCommand", scope: !1, file: !1, line: 821, type: !1194, isLocal: false, isDefinition: true, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2320)
!2320 = !{!2321, !2322, !2323}
!2321 = !DILocalVariable(name: "c", arg: 1, scope: !2319, file: !1, line: 821, type: !1132)
!2322 = !DILocalVariable(name: "o", scope: !2319, file: !1, line: 822, type: !128)
!2323 = !DILocalVariable(name: "cursor", scope: !2319, file: !1, line: 823, type: !27)
!2324 = !DILocation(line: 821, column: 27, scope: !2319)
!2325 = !DILocation(line: 823, column: 5, scope: !2319)
!2326 = !DILocation(line: 825, column: 37, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2319, file: !1, line: 825, column: 9)
!2328 = !DILocation(line: 825, column: 34, scope: !2327)
!2329 = !DILocation(line: 823, column: 19, scope: !2319)
!2330 = !DILocation(line: 825, column: 9, scope: !2327)
!2331 = !DILocation(line: 825, column: 54, scope: !2327)
!2332 = !DILocation(line: 825, column: 9, scope: !2319)
!2333 = !DILocation(line: 826, column: 40, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2319, file: !1, line: 826, column: 9)
!2335 = !DILocation(line: 826, column: 37, scope: !2334)
!2336 = !DILocation(line: 826, column: 55, scope: !2334)
!2337 = !{!1324, !162, i64 360}
!2338 = !DILocation(line: 826, column: 14, scope: !2334)
!2339 = !DILocation(line: 822, column: 11, scope: !2319)
!2340 = !DILocation(line: 826, column: 67, scope: !2334)
!2341 = !DILocation(line: 826, column: 75, scope: !2334)
!2342 = !DILocation(line: 827, column: 9, scope: !2334)
!2343 = !DILocation(line: 826, column: 9, scope: !2319)
!2344 = !DILocation(line: 828, column: 28, scope: !2319)
!2345 = !DILocation(line: 828, column: 5, scope: !2319)
!2346 = !DILocation(line: 829, column: 1, scope: !2319)
