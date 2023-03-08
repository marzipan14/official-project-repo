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
  %8 = icmp eq i32 %7, 80, !dbg !151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !153
  br i1 %8, label %9, label %71, !dbg !152

; <label>:9:                                      ; preds = %4
  %10 = icmp sgt i32 %2, %3, !dbg !155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !158
  br i1 %10, label %70, label %11, !dbg !158

; <label>:11:                                     ; preds = %9
  %12 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 242), align 8
  %13 = sext i32 %2 to i64, !dbg !158
  %14 = sext i32 %3 to i64, !dbg !158
  br label %15, !dbg !158

; <label>:15:                                     ; preds = %67, %11
  %16 = phi i64 [ %68, %67 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %16, !dbg !159
  %18 = bitcast %struct.redisObject** %17 to i32**, !dbg !159
  %19 = load i32*, i32** %18, align 8, !dbg !159, !tbaa !162
  %20 = load i32, i32* %19, align 8, !dbg !159
  %21 = lshr i32 %20, 4, !dbg !159
  %22 = and i32 %21, 15, !dbg !159
  %23 = icmp eq i32 %22, 0, !dbg !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !159
  br i1 %23, label %26, label %24, !dbg !159

; <label>:24:                                     ; preds = %15
  %25 = icmp eq i32 %22, 8, !dbg !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  br i1 %25, label %26, label %67, !dbg !166

; <label>:26:                                     ; preds = %24, %15
  %27 = getelementptr inbounds i32, i32* %19, i64 2, !dbg !167
  %28 = bitcast i32* %27 to i8**, !dbg !167
  %29 = load i8*, i8** %28, align 8, !dbg !167, !tbaa !168
  %30 = getelementptr inbounds i8, i8* %29, i64 -1, !dbg !183
  %31 = load i8, i8* %30, align 1, !dbg !183, !tbaa !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !186
  %32 = trunc i8 %31 to i3, !dbg !186
  switch i3 %32, label %54 [
    i3 0, label %33
    i3 1, label %36
    i3 2, label %40
    i3 3, label %45
    i3 -4, label %50
  ], !dbg !186

; <label>:33:                                     ; preds = %26
  %34 = lshr i8 %31, 3, !dbg !187
  %35 = zext i8 %34 to i64, !dbg !187
  br label %55, !dbg !189

; <label>:36:                                     ; preds = %26
  %37 = getelementptr inbounds i8, i8* %29, i64 -3, !dbg !190
  %38 = load i8, i8* %37, align 1, !dbg !191, !tbaa !184
  %39 = zext i8 %38 to i64, !dbg !190
  br label %55, !dbg !192

; <label>:40:                                     ; preds = %26
  %41 = getelementptr inbounds i8, i8* %29, i64 -5, !dbg !193
  %42 = bitcast i8* %41 to i16*, !dbg !194
  %43 = load i16, i16* %42, align 1, !dbg !194, !tbaa !195
  %44 = zext i16 %43 to i64, !dbg !193
  br label %55, !dbg !197

; <label>:45:                                     ; preds = %26
  %46 = getelementptr inbounds i8, i8* %29, i64 -9, !dbg !198
  %47 = bitcast i8* %46 to i32*, !dbg !199
  %48 = load i32, i32* %47, align 1, !dbg !199, !tbaa !200
  %49 = zext i32 %48 to i64, !dbg !198
  br label %55, !dbg !201

; <label>:50:                                     ; preds = %26
  %51 = getelementptr inbounds i8, i8* %29, i64 -17, !dbg !202
  %52 = bitcast i8* %51 to i64*, !dbg !203
  %53 = load i64, i64* %52, align 1, !dbg !203, !tbaa !204
  br label %55, !dbg !206

; <label>:54:                                     ; preds = %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !209
  br label %67, !dbg !209

; <label>:55:                                     ; preds = %33, %36, %40, %45, %50
  %56 = phi i64 [ %53, %50 ], [ %49, %45 ], [ %44, %40 ], [ %39, %36 ], [ %35, %33 ], !dbg !210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  %57 = icmp ugt i64 %56, %12, !dbg !212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !209
  br i1 %57, label %58, label %67, !dbg !209

; <label>:58:                                     ; preds = %55
  %59 = lshr i32 %6, 4, !dbg !223
  %60 = and i32 %59, 15, !dbg !223
  %61 = icmp eq i32 %60, 5, !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !226
  br i1 %61, label %66, label %62, !dbg !226

; <label>:62:                                     ; preds = %58
  %63 = icmp eq i32 %60, 2, !dbg !227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !229
  br i1 %63, label %64, label %65, !dbg !229

; <label>:64:                                     ; preds = %62
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 504, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !230
  tail call void @_exit(i32 1) #7, !dbg !230
  unreachable

; <label>:65:                                     ; preds = %62
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 506, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !232
  tail call void @_exit(i32 1) #7, !dbg !232
  unreachable

; <label>:66:                                     ; preds = %58
  tail call void @hashTypeConvertZiplist(%struct.redisObject* nonnull %0, i32 2) #6, !dbg !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !237
  br label %70, !dbg !237

; <label>:67:                                     ; preds = %54, %24, %55
  %68 = add nsw i64 %16, 1, !dbg !238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !239
  %69 = icmp slt i64 %16, %14, !dbg !155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !158
  br i1 %69, label %15, label %70, !dbg !158, !llvm.loop !240

; <label>:70:                                     ; preds = %67, %9, %66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !242
  br label %71, !dbg !242

; <label>:71:                                     ; preds = %4, %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !242
  ret void, !dbg !242
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local void @hashTypeConvert(%struct.redisObject*, i32) local_unnamed_addr #0 !dbg !214 {
  %3 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !245
  %4 = load i32, i32* %3, align 8, !dbg !245
  %5 = lshr i32 %4, 4, !dbg !245
  %6 = and i32 %5, 15, !dbg !245
  %7 = icmp eq i32 %6, 5, !dbg !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !247
  br i1 %7, label %8, label %9, !dbg !247

; <label>:8:                                      ; preds = %2
  tail call void @hashTypeConvertZiplist(%struct.redisObject* nonnull %0, i32 %1) #8, !dbg !248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !249
  ret void, !dbg !249

; <label>:9:                                      ; preds = %2
  %10 = icmp eq i32 %6, 2, !dbg !250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !251
  br i1 %10, label %11, label %12, !dbg !251

; <label>:11:                                     ; preds = %9
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 504, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !252
  tail call void @_exit(i32 1) #7, !dbg !252
  unreachable

; <label>:12:                                     ; preds = %9
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 506, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !253
  tail call void @_exit(i32 1) #7, !dbg !253
  unreachable
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @hashTypeGetFromZiplist(%struct.redisObject* nocapture readonly, i8*, i8**, i32*, i64*) local_unnamed_addr #0 !dbg !254 {
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !278
  %7 = load i32, i32* %6, align 8, !dbg !278
  %8 = and i32 %7, 240, !dbg !278
  %9 = icmp eq i32 %8, 80, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  br i1 %9, label %11, label %10, !dbg !278

; <label>:10:                                     ; preds = %5
  tail call void @_serverAssert(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 65) #6, !dbg !278
  tail call void @_exit(i32 1) #7, !dbg !278
  unreachable

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !279
  %13 = load i8*, i8** %12, align 8, !dbg !279, !tbaa !168
  %14 = tail call i8* @ziplistIndex(i8* %13, i32 0) #6, !dbg !281
  %15 = icmp eq i8* %14, null, !dbg !282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  br i1 %15, label %54, label %16, !dbg !284

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !288
  %18 = load i8, i8* %17, align 1, !dbg !288, !tbaa !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  %19 = trunc i8 %18 to i3, !dbg !290
  switch i3 %19, label %41 [
    i3 0, label %20
    i3 1, label %23
    i3 2, label %27
    i3 3, label %32
    i3 -4, label %37
  ], !dbg !290

; <label>:20:                                     ; preds = %16
  %21 = lshr i8 %18, 3, !dbg !291
  %22 = zext i8 %21 to i64, !dbg !291
  br label %41, !dbg !292

; <label>:23:                                     ; preds = %16
  %24 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !293
  %25 = load i8, i8* %24, align 1, !dbg !294, !tbaa !184
  %26 = zext i8 %25 to i64, !dbg !293
  br label %41, !dbg !295

; <label>:27:                                     ; preds = %16
  %28 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !296
  %29 = bitcast i8* %28 to i16*, !dbg !297
  %30 = load i16, i16* %29, align 1, !dbg !297, !tbaa !195
  %31 = zext i16 %30 to i64, !dbg !296
  br label %41, !dbg !298

; <label>:32:                                     ; preds = %16
  %33 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !299
  %34 = bitcast i8* %33 to i32*, !dbg !300
  %35 = load i32, i32* %34, align 1, !dbg !300, !tbaa !200
  %36 = zext i32 %35 to i64, !dbg !299
  br label %41, !dbg !301

; <label>:37:                                     ; preds = %16
  %38 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !302
  %39 = bitcast i8* %38 to i64*, !dbg !303
  %40 = load i64, i64* %39, align 1, !dbg !303, !tbaa !204
  br label %41, !dbg !304

; <label>:41:                                     ; preds = %16, %20, %23, %27, %32, %37
  %42 = phi i64 [ %40, %37 ], [ %36, %32 ], [ %31, %27 ], [ %26, %23 ], [ %22, %20 ], [ 0, %16 ], !dbg !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !307
  %43 = trunc i64 %42 to i32, !dbg !308
  %44 = tail call i8* @ziplistFind(i8* nonnull %14, i8* nonnull %1, i32 %43, i32 1) #6, !dbg !309
  %45 = icmp eq i8* %44, null, !dbg !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  br i1 %45, label %54, label %46, !dbg !312

; <label>:46:                                     ; preds = %41
  %47 = tail call i8* @ziplistNext(i8* %13, i8* nonnull %44) #6, !dbg !313
  %48 = icmp eq i8* %47, null, !dbg !315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !315
  br i1 %48, label %49, label %50, !dbg !315

; <label>:49:                                     ; preds = %46
  tail call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 74) #6, !dbg !315
  tail call void @_exit(i32 1) #7, !dbg !315
  unreachable

; <label>:50:                                     ; preds = %46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !316
  %51 = tail call i32 @ziplistGet(i8* nonnull %47, i8** %2, i32* %3, i64* %4) #6, !dbg !317
  %52 = icmp eq i32 %51, 0, !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !321
  br i1 %52, label %53, label %55, !dbg !321

; <label>:53:                                     ; preds = %50
  tail call void @_serverAssert(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 80) #6, !dbg !321
  tail call void @_exit(i32 1) #7, !dbg !321
  unreachable

; <label>:54:                                     ; preds = %41, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !316
  br label %55, !dbg !322

; <label>:55:                                     ; preds = %50, %54
  %56 = phi i32 [ -1, %54 ], [ 0, %50 ], !dbg !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  ret i32 %56, !dbg !325
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
define dso_local i8* @hashTypeGetFromHashTable(%struct.redisObject* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !326 {
  %3 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !335
  %4 = load i32, i32* %3, align 8, !dbg !335
  %5 = and i32 %4, 240, !dbg !335
  %6 = icmp eq i32 %5, 32, !dbg !335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  br i1 %6, label %8, label %7, !dbg !335

; <label>:7:                                      ; preds = %2
  tail call void @_serverAssert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 93) #6, !dbg !335
  tail call void @_exit(i32 1) #7, !dbg !335
  unreachable

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !336
  %10 = bitcast i8** %9 to %struct.dict**, !dbg !336
  %11 = load %struct.dict*, %struct.dict** %10, align 8, !dbg !336, !tbaa !168
  %12 = tail call %struct.dictEntry* @dictFind(%struct.dict* %11, i8* %1) #6, !dbg !337
  %13 = icmp eq %struct.dictEntry* %12, null, !dbg !339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !341
  br i1 %13, label %17, label %14, !dbg !341

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %12, i64 0, i32 1, i32 0, !dbg !342
  %16 = load i8*, i8** %15, align 8, !dbg !342, !tbaa !184
  br label %17, !dbg !343

; <label>:17:                                     ; preds = %8, %14
  %18 = phi i8* [ %16, %14 ], [ null, %8 ], !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !346
  ret i8* %18, !dbg !346
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @hashTypeGetValue(%struct.redisObject* nocapture readonly, i8*, i8**, i32*, i64*) local_unnamed_addr #0 !dbg !347 {
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !363
  %7 = load i32, i32* %6, align 8, !dbg !363
  %8 = lshr i32 %7, 4, !dbg !363
  %9 = and i32 %8, 15, !dbg !363
  %10 = icmp eq i32 %9, 5, !dbg !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  br i1 %10, label %11, label %14, !dbg !365

; <label>:11:                                     ; preds = %5
  store i8* null, i8** %2, align 8, !dbg !366, !tbaa !162
  %12 = tail call i32 @hashTypeGetFromZiplist(%struct.redisObject* nonnull %0, i8* %1, i8** %2, i32* %3, i64* %4) #8, !dbg !368
  %13 = icmp eq i32 %12, 0, !dbg !370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !371
  br i1 %13, label %62, label %61, !dbg !371

; <label>:14:                                     ; preds = %5
  %15 = icmp eq i32 %9, 2, !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  br i1 %15, label %16, label %60, !dbg !373

; <label>:16:                                     ; preds = %14
  %17 = and i32 %7, 240, !dbg !378
  %18 = icmp eq i32 %17, 32, !dbg !378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !378
  br i1 %18, label %20, label %19, !dbg !378

; <label>:19:                                     ; preds = %16
  tail call void @_serverAssert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 93) #6, !dbg !378
  tail call void @_exit(i32 1) #7, !dbg !378
  unreachable

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !379
  %22 = bitcast i8** %21 to %struct.dict**, !dbg !379
  %23 = load %struct.dict*, %struct.dict** %22, align 8, !dbg !379, !tbaa !168
  %24 = tail call %struct.dictEntry* @dictFind(%struct.dict* %23, i8* %1) #6, !dbg !380
  %25 = icmp eq %struct.dictEntry* %24, null, !dbg !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  br i1 %25, label %26, label %27, !dbg !383

; <label>:26:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  br label %59, !dbg !387

; <label>:27:                                     ; preds = %20
  %28 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %24, i64 0, i32 1, i32 0, !dbg !388
  %29 = load i8*, i8** %28, align 8, !dbg !388, !tbaa !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  %30 = icmp eq i8* %29, null, !dbg !390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  br i1 %30, label %59, label %31, !dbg !387

; <label>:31:                                     ; preds = %27
  store i8* %29, i8** %2, align 8, !dbg !391, !tbaa !162
  %32 = getelementptr inbounds i8, i8* %29, i64 -1, !dbg !395
  %33 = load i8, i8* %32, align 1, !dbg !395, !tbaa !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  %34 = trunc i8 %33 to i3, !dbg !397
  switch i3 %34, label %56 [
    i3 0, label %35
    i3 1, label %38
    i3 2, label %42
    i3 3, label %47
    i3 -4, label %52
  ], !dbg !397

; <label>:35:                                     ; preds = %31
  %36 = lshr i8 %33, 3, !dbg !398
  %37 = zext i8 %36 to i64, !dbg !398
  br label %56, !dbg !399

; <label>:38:                                     ; preds = %31
  %39 = getelementptr inbounds i8, i8* %29, i64 -3, !dbg !400
  %40 = load i8, i8* %39, align 1, !dbg !401, !tbaa !184
  %41 = zext i8 %40 to i64, !dbg !400
  br label %56, !dbg !402

; <label>:42:                                     ; preds = %31
  %43 = getelementptr inbounds i8, i8* %29, i64 -5, !dbg !403
  %44 = bitcast i8* %43 to i16*, !dbg !404
  %45 = load i16, i16* %44, align 1, !dbg !404, !tbaa !195
  %46 = zext i16 %45 to i64, !dbg !403
  br label %56, !dbg !405

; <label>:47:                                     ; preds = %31
  %48 = getelementptr inbounds i8, i8* %29, i64 -9, !dbg !406
  %49 = bitcast i8* %48 to i32*, !dbg !407
  %50 = load i32, i32* %49, align 1, !dbg !407, !tbaa !200
  %51 = zext i32 %50 to i64, !dbg !406
  br label %56, !dbg !408

; <label>:52:                                     ; preds = %31
  %53 = getelementptr inbounds i8, i8* %29, i64 -17, !dbg !409
  %54 = bitcast i8* %53 to i64*, !dbg !410
  %55 = load i64, i64* %54, align 1, !dbg !410, !tbaa !204
  br label %56, !dbg !411

; <label>:56:                                     ; preds = %31, %35, %38, %42, %47, %52
  %57 = phi i64 [ %55, %52 ], [ %51, %47 ], [ %46, %42 ], [ %41, %38 ], [ %37, %35 ], [ 0, %31 ], !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  %58 = trunc i64 %57 to i32, !dbg !415
  store i32 %58, i32* %3, align 4, !dbg !416, !tbaa !200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  br label %62

; <label>:59:                                     ; preds = %26, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %61

; <label>:60:                                     ; preds = %14
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 122, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !419
  tail call void @_exit(i32 1) #7, !dbg !419
  unreachable

; <label>:61:                                     ; preds = %59, %11
  br label %62, !dbg !421

; <label>:62:                                     ; preds = %11, %56, %61
  %63 = phi i32 [ -1, %61 ], [ 0, %56 ], [ 0, %11 ], !dbg !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  ret i32 %63, !dbg !422
}

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @hashTypeGetValueObject(%struct.redisObject* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !423 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = bitcast i8** %3 to i8*, !dbg !434
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !434
  %7 = bitcast i32* %4 to i8*, !dbg !435
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #5, !dbg !435
  %8 = bitcast i64* %5 to i8*, !dbg !436
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !436
  %9 = call i32 @hashTypeGetValue(%struct.redisObject* %0, i8* %1, i8** nonnull %3, i32* nonnull %4, i64* nonnull %5) #8, !dbg !440
  %10 = icmp eq i32 %9, -1, !dbg !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !443
  br i1 %10, label %21, label %11, !dbg !443

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %3, align 8, !dbg !444, !tbaa !162
  %13 = icmp eq i8* %12, null, !dbg !444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  br i1 %13, label %18, label %14, !dbg !446

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %4, align 4, !dbg !447, !tbaa !200
  %16 = zext i32 %15 to i64, !dbg !447
  %17 = call %struct.redisObject* @createStringObject(i8* nonnull %12, i64 %16) #6, !dbg !448
  br label %21, !dbg !449

; <label>:18:                                     ; preds = %11
  %19 = load i64, i64* %5, align 8, !dbg !450, !tbaa !451
  %20 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %19) #6, !dbg !453
  br label %21, !dbg !454

; <label>:21:                                     ; preds = %2, %18, %14
  %22 = phi %struct.redisObject* [ %17, %14 ], [ %20, %18 ], [ null, %2 ], !dbg !455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !456
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !457
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #5, !dbg !457
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  ret %struct.redisObject* %22, !dbg !457
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObjectFromLongLong(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @hashTypeGetValueLength(%struct.redisObject* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !458 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !480
  %7 = load i32, i32* %6, align 8, !dbg !480
  %8 = lshr i32 %7, 4, !dbg !480
  %9 = and i32 %8, 15, !dbg !480
  %10 = icmp eq i32 %9, 5, !dbg !481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !482
  br i1 %10, label %11, label %30, !dbg !482

; <label>:11:                                     ; preds = %2
  %12 = bitcast i8** %3 to i8*, !dbg !483
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #5, !dbg !483
  store i8* null, i8** %3, align 8, !dbg !484, !tbaa !162
  %13 = bitcast i32* %4 to i8*, !dbg !485
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #5, !dbg !485
  store i32 -1, i32* %4, align 4, !dbg !486, !tbaa !200
  %14 = bitcast i64* %5 to i8*, !dbg !487
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #5, !dbg !487
  store i64 9223372036854775807, i64* %5, align 8, !dbg !488, !tbaa !451
  %15 = call i32 @hashTypeGetFromZiplist(%struct.redisObject* nonnull %0, i8* %1, i8** nonnull %3, i32* nonnull %4, i64* nonnull %5) #8, !dbg !489
  %16 = icmp eq i32 %15, 0, !dbg !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !492
  br i1 %16, label %17, label %28, !dbg !492

; <label>:17:                                     ; preds = %11
  %18 = load i8*, i8** %3, align 8, !dbg !493, !tbaa !162
  %19 = icmp eq i8* %18, null, !dbg !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !493
  br i1 %19, label %22, label %20, !dbg !493

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %4, align 4, !dbg !494, !tbaa !200
  br label %25, !dbg !493

; <label>:22:                                     ; preds = %17
  %23 = load i64, i64* %5, align 8, !dbg !495, !tbaa !451
  %24 = call i32 @sdigits10(i64 %23) #6, !dbg !496
  br label %25, !dbg !493

; <label>:25:                                     ; preds = %22, %20
  %26 = phi i32 [ %21, %20 ], [ %24, %22 ], !dbg !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !493
  %27 = zext i32 %26 to i64, !dbg !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !497
  br label %28, !dbg !497

; <label>:28:                                     ; preds = %25, %11
  %29 = phi i64 [ %27, %25 ], [ 0, %11 ], !dbg !498
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #5, !dbg !499
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5, !dbg !499
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #5, !dbg !499
  br label %74, !dbg !500

; <label>:30:                                     ; preds = %2
  %31 = icmp eq i32 %9, 2, !dbg !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  br i1 %31, label %32, label %73, !dbg !502

; <label>:32:                                     ; preds = %30
  %33 = and i32 %7, 240, !dbg !507
  %34 = icmp eq i32 %33, 32, !dbg !507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  br i1 %34, label %36, label %35, !dbg !507

; <label>:35:                                     ; preds = %32
  tail call void @_serverAssert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 93) #6, !dbg !507
  tail call void @_exit(i32 1) #7, !dbg !507
  unreachable

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !508
  %38 = bitcast i8** %37 to %struct.dict**, !dbg !508
  %39 = load %struct.dict*, %struct.dict** %38, align 8, !dbg !508, !tbaa !168
  %40 = tail call %struct.dictEntry* @dictFind(%struct.dict* %39, i8* %1) #6, !dbg !509
  %41 = icmp eq %struct.dictEntry* %40, null, !dbg !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  br i1 %41, label %71, label %42, !dbg !512

; <label>:42:                                     ; preds = %36
  %43 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %40, i64 0, i32 1, i32 0, !dbg !513
  %44 = load i8*, i8** %43, align 8, !dbg !513, !tbaa !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  %45 = icmp eq i8* %44, null, !dbg !517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !518
  br i1 %45, label %74, label %46, !dbg !518

; <label>:46:                                     ; preds = %42
  %47 = getelementptr inbounds i8, i8* %44, i64 -1, !dbg !521
  %48 = load i8, i8* %47, align 1, !dbg !521, !tbaa !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  %49 = trunc i8 %48 to i3, !dbg !523
  switch i3 %49, label %71 [
    i3 0, label %50
    i3 1, label %53
    i3 2, label %57
    i3 3, label %62
    i3 -4, label %67
  ], !dbg !523

; <label>:50:                                     ; preds = %46
  %51 = lshr i8 %48, 3, !dbg !524
  %52 = zext i8 %51 to i64, !dbg !524
  br label %71, !dbg !525

; <label>:53:                                     ; preds = %46
  %54 = getelementptr inbounds i8, i8* %44, i64 -3, !dbg !526
  %55 = load i8, i8* %54, align 1, !dbg !527, !tbaa !184
  %56 = zext i8 %55 to i64, !dbg !526
  br label %71, !dbg !528

; <label>:57:                                     ; preds = %46
  %58 = getelementptr inbounds i8, i8* %44, i64 -5, !dbg !529
  %59 = bitcast i8* %58 to i16*, !dbg !530
  %60 = load i16, i16* %59, align 1, !dbg !530, !tbaa !195
  %61 = zext i16 %60 to i64, !dbg !529
  br label %71, !dbg !531

; <label>:62:                                     ; preds = %46
  %63 = getelementptr inbounds i8, i8* %44, i64 -9, !dbg !532
  %64 = bitcast i8* %63 to i32*, !dbg !533
  %65 = load i32, i32* %64, align 1, !dbg !533, !tbaa !200
  %66 = zext i32 %65 to i64, !dbg !532
  br label %71, !dbg !534

; <label>:67:                                     ; preds = %46
  %68 = getelementptr inbounds i8, i8* %44, i64 -17, !dbg !535
  %69 = bitcast i8* %68 to i64*, !dbg !536
  %70 = load i64, i64* %69, align 1, !dbg !536, !tbaa !204
  br label %71, !dbg !537

; <label>:71:                                     ; preds = %67, %62, %57, %53, %50, %46, %36
  %72 = phi i64 [ 0, %36 ], [ %70, %67 ], [ %66, %62 ], [ %61, %57 ], [ %56, %53 ], [ %52, %50 ], [ 0, %46 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !538
  br label %74

; <label>:73:                                     ; preds = %30
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 159, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !539
  tail call void @_exit(i32 1) #7, !dbg !539
  unreachable

; <label>:74:                                     ; preds = %42, %71, %28
  %75 = phi i64 [ %29, %28 ], [ 0, %42 ], [ %72, %71 ], !dbg !538
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !541
  ret i64 %75, !dbg !541
}

; Function Attrs: noredzone
declare dso_local i32 @sdigits10(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @hashTypeExists(%struct.redisObject* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !542 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !555
  %7 = load i32, i32* %6, align 8, !dbg !555
  %8 = lshr i32 %7, 4, !dbg !555
  %9 = and i32 %8, 15, !dbg !555
  %10 = icmp eq i32 %9, 5, !dbg !556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  br i1 %10, label %11, label %17, !dbg !557

; <label>:11:                                     ; preds = %2
  %12 = bitcast i8** %3 to i8*, !dbg !558
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #5, !dbg !558
  store i8* null, i8** %3, align 8, !dbg !559, !tbaa !162
  %13 = bitcast i32* %4 to i8*, !dbg !560
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #5, !dbg !560
  store i32 -1, i32* %4, align 4, !dbg !561, !tbaa !200
  %14 = bitcast i64* %5 to i8*, !dbg !562
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #5, !dbg !562
  store i64 9223372036854775807, i64* %5, align 8, !dbg !563, !tbaa !451
  %15 = call i32 @hashTypeGetFromZiplist(%struct.redisObject* nonnull %0, i8* %1, i8** nonnull %3, i32* nonnull %4, i64* nonnull %5) #8, !dbg !564
  %16 = icmp eq i32 %15, 0, !dbg !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !568
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #5, !dbg !569
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5, !dbg !569
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #5, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %16, label %38, label %35

; <label>:17:                                     ; preds = %2
  %18 = icmp eq i32 %9, 2, !dbg !570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  br i1 %18, label %19, label %34, !dbg !572

; <label>:19:                                     ; preds = %17
  %20 = and i32 %7, 240, !dbg !578
  %21 = icmp eq i32 %20, 32, !dbg !578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  br i1 %21, label %23, label %22, !dbg !578

; <label>:22:                                     ; preds = %19
  tail call void @_serverAssert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 93) #6, !dbg !578
  tail call void @_exit(i32 1) #7, !dbg !578
  unreachable

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !579
  %25 = bitcast i8** %24 to %struct.dict**, !dbg !579
  %26 = load %struct.dict*, %struct.dict** %25, align 8, !dbg !579, !tbaa !168
  %27 = tail call %struct.dictEntry* @dictFind(%struct.dict* %26, i8* %1) #6, !dbg !580
  %28 = icmp eq %struct.dictEntry* %27, null, !dbg !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  br i1 %28, label %29, label %30, !dbg !583

; <label>:29:                                     ; preds = %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  br label %35, !dbg !586

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %27, i64 0, i32 1, i32 0, !dbg !587
  %32 = load i8*, i8** %31, align 8, !dbg !587, !tbaa !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  %33 = icmp eq i8* %32, null, !dbg !589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  br i1 %33, label %35, label %36, !dbg !586

; <label>:34:                                     ; preds = %17
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 176, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !590
  tail call void @_exit(i32 1) #7, !dbg !590
  unreachable

; <label>:35:                                     ; preds = %11, %29, %30
  br label %36, !dbg !592

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i32 [ 0, %35 ], [ 1, %30 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !593
  br label %38, !dbg !594

; <label>:38:                                     ; preds = %36, %11
  %39 = phi i32 [ 1, %11 ], [ %37, %36 ], !dbg !593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  ret i32 %39, !dbg !594
}

; Function Attrs: noredzone nounwind
define dso_local i32 @hashTypeSet(%struct.redisObject*, i8*, i8*, i32) local_unnamed_addr #0 !dbg !595 {
  %5 = alloca i8*, align 8
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !621
  %7 = load i32, i32* %6, align 8, !dbg !621
  %8 = lshr i32 %7, 4, !dbg !621
  %9 = and i32 %8, 15, !dbg !621
  %10 = icmp eq i32 %9, 5, !dbg !622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  br i1 %10, label %11, label %175, !dbg !623

; <label>:11:                                     ; preds = %4
  %12 = bitcast i8** %5 to i8*, !dbg !624
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #5, !dbg !624
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !625
  %14 = load i8*, i8** %13, align 8, !dbg !625, !tbaa !168
  %15 = tail call i8* @ziplistIndex(i8* %14, i32 0) #6, !dbg !627
  %16 = icmp eq i8* %15, null, !dbg !629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  %17 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !632
  br i1 %16, label %82, label %18, !dbg !631

; <label>:18:                                     ; preds = %11
  %19 = load i8, i8* %17, align 1, !dbg !639, !tbaa !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  %20 = trunc i8 %19 to i3, !dbg !641
  switch i3 %20, label %42 [
    i3 0, label %21
    i3 1, label %24
    i3 2, label %28
    i3 3, label %33
    i3 -4, label %38
  ], !dbg !641

; <label>:21:                                     ; preds = %18
  %22 = lshr i8 %19, 3, !dbg !642
  %23 = zext i8 %22 to i64, !dbg !642
  br label %42, !dbg !643

; <label>:24:                                     ; preds = %18
  %25 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !644
  %26 = load i8, i8* %25, align 1, !dbg !645, !tbaa !184
  %27 = zext i8 %26 to i64, !dbg !644
  br label %42, !dbg !646

; <label>:28:                                     ; preds = %18
  %29 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !647
  %30 = bitcast i8* %29 to i16*, !dbg !648
  %31 = load i16, i16* %30, align 1, !dbg !648, !tbaa !195
  %32 = zext i16 %31 to i64, !dbg !647
  br label %42, !dbg !649

; <label>:33:                                     ; preds = %18
  %34 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !650
  %35 = bitcast i8* %34 to i32*, !dbg !651
  %36 = load i32, i32* %35, align 1, !dbg !651, !tbaa !200
  %37 = zext i32 %36 to i64, !dbg !650
  br label %42, !dbg !652

; <label>:38:                                     ; preds = %18
  %39 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !653
  %40 = bitcast i8* %39 to i64*, !dbg !654
  %41 = load i64, i64* %40, align 1, !dbg !654, !tbaa !204
  br label %42, !dbg !655

; <label>:42:                                     ; preds = %18, %21, %24, %28, %33, %38
  %43 = phi i64 [ %41, %38 ], [ %37, %33 ], [ %32, %28 ], [ %27, %24 ], [ %23, %21 ], [ 0, %18 ], !dbg !656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  %44 = trunc i64 %43 to i32, !dbg !659
  %45 = tail call i8* @ziplistFind(i8* nonnull %15, i8* nonnull %1, i32 %44, i32 1) #6, !dbg !660
  %46 = icmp eq i8* %45, null, !dbg !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !663
  br i1 %46, label %82, label %47, !dbg !663

; <label>:47:                                     ; preds = %42
  %48 = tail call i8* @ziplistNext(i8* %14, i8* nonnull %45) #6, !dbg !664
  store i8* %48, i8** %5, align 8, !dbg !667, !tbaa !162
  %49 = icmp eq i8* %48, null, !dbg !668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  br i1 %49, label %50, label %51, !dbg !668

; <label>:50:                                     ; preds = %47
  tail call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 215) #6, !dbg !668
  tail call void @_exit(i32 1) #7, !dbg !668
  unreachable

; <label>:51:                                     ; preds = %47
  %52 = call i8* @ziplistDelete(i8* %14, i8** nonnull %5) #6, !dbg !669
  %53 = load i8*, i8** %5, align 8, !dbg !670, !tbaa !162
  %54 = getelementptr inbounds i8, i8* %2, i64 -1, !dbg !673
  %55 = load i8, i8* %54, align 1, !dbg !673, !tbaa !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  %56 = trunc i8 %55 to i3, !dbg !675
  switch i3 %56, label %78 [
    i3 0, label %57
    i3 1, label %60
    i3 2, label %64
    i3 3, label %69
    i3 -4, label %74
  ], !dbg !675

; <label>:57:                                     ; preds = %51
  %58 = lshr i8 %55, 3, !dbg !676
  %59 = zext i8 %58 to i64, !dbg !676
  br label %78, !dbg !677

; <label>:60:                                     ; preds = %51
  %61 = getelementptr inbounds i8, i8* %2, i64 -3, !dbg !678
  %62 = load i8, i8* %61, align 1, !dbg !679, !tbaa !184
  %63 = zext i8 %62 to i64, !dbg !678
  br label %78, !dbg !680

; <label>:64:                                     ; preds = %51
  %65 = getelementptr inbounds i8, i8* %2, i64 -5, !dbg !681
  %66 = bitcast i8* %65 to i16*, !dbg !682
  %67 = load i16, i16* %66, align 1, !dbg !682, !tbaa !195
  %68 = zext i16 %67 to i64, !dbg !681
  br label %78, !dbg !683

; <label>:69:                                     ; preds = %51
  %70 = getelementptr inbounds i8, i8* %2, i64 -9, !dbg !684
  %71 = bitcast i8* %70 to i32*, !dbg !685
  %72 = load i32, i32* %71, align 1, !dbg !685, !tbaa !200
  %73 = zext i32 %72 to i64, !dbg !684
  br label %78, !dbg !686

; <label>:74:                                     ; preds = %51
  %75 = getelementptr inbounds i8, i8* %2, i64 -17, !dbg !687
  %76 = bitcast i8* %75 to i64*, !dbg !688
  %77 = load i64, i64* %76, align 1, !dbg !688, !tbaa !204
  br label %78, !dbg !689

; <label>:78:                                     ; preds = %51, %74, %69, %64, %60, %57
  %79 = phi i64 [ %77, %74 ], [ %73, %69 ], [ %68, %64 ], [ %63, %60 ], [ %59, %57 ], [ 0, %51 ], !dbg !690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  %80 = trunc i64 %79 to i32, !dbg !693
  %81 = call i8* @ziplistInsert(i8* %52, i8* %53, i8* nonnull %2, i32 %80) #6, !dbg !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !695
  br label %138, !dbg !696

; <label>:82:                                     ; preds = %11, %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  %83 = load i8, i8* %17, align 1, !dbg !632, !tbaa !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !699
  %84 = trunc i8 %83 to i3, !dbg !699
  switch i3 %84, label %106 [
    i3 0, label %85
    i3 1, label %88
    i3 2, label %92
    i3 3, label %97
    i3 -4, label %102
  ], !dbg !699

; <label>:85:                                     ; preds = %82
  %86 = lshr i8 %83, 3, !dbg !700
  %87 = zext i8 %86 to i64, !dbg !700
  br label %106, !dbg !701

; <label>:88:                                     ; preds = %82
  %89 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !702
  %90 = load i8, i8* %89, align 1, !dbg !703, !tbaa !184
  %91 = zext i8 %90 to i64, !dbg !702
  br label %106, !dbg !704

; <label>:92:                                     ; preds = %82
  %93 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !705
  %94 = bitcast i8* %93 to i16*, !dbg !706
  %95 = load i16, i16* %94, align 1, !dbg !706, !tbaa !195
  %96 = zext i16 %95 to i64, !dbg !705
  br label %106, !dbg !707

; <label>:97:                                     ; preds = %82
  %98 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !708
  %99 = bitcast i8* %98 to i32*, !dbg !709
  %100 = load i32, i32* %99, align 1, !dbg !709, !tbaa !200
  %101 = zext i32 %100 to i64, !dbg !708
  br label %106, !dbg !710

; <label>:102:                                    ; preds = %82
  %103 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !711
  %104 = bitcast i8* %103 to i64*, !dbg !712
  %105 = load i64, i64* %104, align 1, !dbg !712, !tbaa !204
  br label %106, !dbg !713

; <label>:106:                                    ; preds = %82, %85, %88, %92, %97, %102
  %107 = phi i64 [ %105, %102 ], [ %101, %97 ], [ %96, %92 ], [ %91, %88 ], [ %87, %85 ], [ 0, %82 ], !dbg !714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !716
  %108 = trunc i64 %107 to i32, !dbg !717
  %109 = tail call i8* @ziplistPush(i8* %14, i8* nonnull %1, i32 %108, i32 1) #6, !dbg !718
  %110 = getelementptr inbounds i8, i8* %2, i64 -1, !dbg !721
  %111 = load i8, i8* %110, align 1, !dbg !721, !tbaa !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  %112 = trunc i8 %111 to i3, !dbg !723
  switch i3 %112, label %134 [
    i3 0, label %113
    i3 1, label %116
    i3 2, label %120
    i3 3, label %125
    i3 -4, label %130
  ], !dbg !723

; <label>:113:                                    ; preds = %106
  %114 = lshr i8 %111, 3, !dbg !724
  %115 = zext i8 %114 to i64, !dbg !724
  br label %134, !dbg !725

; <label>:116:                                    ; preds = %106
  %117 = getelementptr inbounds i8, i8* %2, i64 -3, !dbg !726
  %118 = load i8, i8* %117, align 1, !dbg !727, !tbaa !184
  %119 = zext i8 %118 to i64, !dbg !726
  br label %134, !dbg !728

; <label>:120:                                    ; preds = %106
  %121 = getelementptr inbounds i8, i8* %2, i64 -5, !dbg !729
  %122 = bitcast i8* %121 to i16*, !dbg !730
  %123 = load i16, i16* %122, align 1, !dbg !730, !tbaa !195
  %124 = zext i16 %123 to i64, !dbg !729
  br label %134, !dbg !731

; <label>:125:                                    ; preds = %106
  %126 = getelementptr inbounds i8, i8* %2, i64 -9, !dbg !732
  %127 = bitcast i8* %126 to i32*, !dbg !733
  %128 = load i32, i32* %127, align 1, !dbg !733, !tbaa !200
  %129 = zext i32 %128 to i64, !dbg !732
  br label %134, !dbg !734

; <label>:130:                                    ; preds = %106
  %131 = getelementptr inbounds i8, i8* %2, i64 -17, !dbg !735
  %132 = bitcast i8* %131 to i64*, !dbg !736
  %133 = load i64, i64* %132, align 1, !dbg !736, !tbaa !204
  br label %134, !dbg !737

; <label>:134:                                    ; preds = %106, %113, %116, %120, %125, %130
  %135 = phi i64 [ %133, %130 ], [ %129, %125 ], [ %124, %120 ], [ %119, %116 ], [ %115, %113 ], [ 0, %106 ], !dbg !738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  %136 = trunc i64 %135 to i32, !dbg !740
  %137 = tail call i8* @ziplistPush(i8* %109, i8* nonnull %2, i32 %136, i32 1) #6, !dbg !741
  br label %138, !dbg !742

; <label>:138:                                    ; preds = %78, %134
  %139 = phi i32 [ 1, %78 ], [ 0, %134 ]
  %140 = phi i8* [ %81, %78 ], [ %137, %134 ], !dbg !715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !715
  store i8* %140, i8** %13, align 8, !dbg !743, !tbaa !168
  %141 = load i32, i32* %6, align 8, !dbg !756
  %142 = lshr i32 %141, 4, !dbg !756
  %143 = and i32 %142, 15, !dbg !756
  %144 = icmp eq i32 %143, 5, !dbg !758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !759
  br i1 %144, label %145, label %149, !dbg !759

; <label>:145:                                    ; preds = %138
  %146 = call i32 @ziplistLen(i8* %140) #6, !dbg !760
  %147 = lshr i32 %146, 1, !dbg !762
  %148 = zext i32 %147 to i64, !dbg !760
  br label %160, !dbg !763

; <label>:149:                                    ; preds = %138
  %150 = icmp eq i32 %143, 2, !dbg !764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  br i1 %150, label %151, label %159, !dbg !766

; <label>:151:                                    ; preds = %149
  %152 = getelementptr inbounds i8, i8* %140, i64 40, !dbg !767
  %153 = bitcast i8* %152 to i64*, !dbg !767
  %154 = load i64, i64* %153, align 8, !dbg !767, !tbaa !769
  %155 = getelementptr inbounds i8, i8* %140, i64 72, !dbg !767
  %156 = bitcast i8* %155 to i64*, !dbg !767
  %157 = load i64, i64* %156, align 8, !dbg !767, !tbaa !769
  %158 = add i64 %157, %154, !dbg !767
  br label %160

; <label>:159:                                    ; preds = %149
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 319, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !771
  call void @_exit(i32 1) #7, !dbg !771
  unreachable

; <label>:160:                                    ; preds = %145, %151
  %161 = phi i64 [ %148, %145 ], [ %158, %151 ], !dbg !773
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !774
  %162 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 241), align 8, !dbg !775, !tbaa !776
  %163 = icmp ugt i64 %161, %162, !dbg !782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  br i1 %163, label %164, label %174, !dbg !783

; <label>:164:                                    ; preds = %160
  %165 = load i32, i32* %6, align 8, !dbg !787
  %166 = lshr i32 %165, 4, !dbg !787
  %167 = and i32 %166, 15, !dbg !787
  %168 = icmp eq i32 %167, 5, !dbg !788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !789
  br i1 %168, label %173, label %169, !dbg !789

; <label>:169:                                    ; preds = %164
  %170 = icmp eq i32 %167, 2, !dbg !790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  br i1 %170, label %171, label %172, !dbg !791

; <label>:171:                                    ; preds = %169
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 504, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !792
  call void @_exit(i32 1) #7, !dbg !792
  unreachable

; <label>:172:                                    ; preds = %169
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 506, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !793
  call void @_exit(i32 1) #7, !dbg !793
  unreachable

; <label>:173:                                    ; preds = %164
  call void @hashTypeConvertZiplist(%struct.redisObject* nonnull %0, i32 2) #6, !dbg !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !796
  br label %174, !dbg !796

; <label>:174:                                    ; preds = %173, %160
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #5, !dbg !797
  br label %215, !dbg !798

; <label>:175:                                    ; preds = %4
  %176 = icmp eq i32 %9, 2, !dbg !799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  br i1 %176, label %177, label %214, !dbg !800

; <label>:177:                                    ; preds = %175
  %178 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !801
  %179 = bitcast i8** %178 to %struct.dict**, !dbg !801
  %180 = load %struct.dict*, %struct.dict** %179, align 8, !dbg !801, !tbaa !168
  %181 = tail call %struct.dictEntry* @dictFind(%struct.dict* %180, i8* %1) #6, !dbg !802
  %182 = icmp eq %struct.dictEntry* %181, null, !dbg !804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !805
  br i1 %182, label %193, label %183, !dbg !805

; <label>:183:                                    ; preds = %177
  %184 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %181, i64 0, i32 1, i32 0, !dbg !806
  %185 = load i8*, i8** %184, align 8, !dbg !806, !tbaa !184
  tail call void @sdsfree(i8* %185) #6, !dbg !808
  %186 = and i32 %3, 2, !dbg !809
  %187 = icmp eq i32 %186, 0, !dbg !809
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  br i1 %187, label %188, label %190, !dbg !811

; <label>:188:                                    ; preds = %183
  %189 = tail call i8* @sdsdup(i8* %2) #6, !dbg !812
  br label %190

; <label>:190:                                    ; preds = %183, %188
  %191 = phi i8* [ %189, %188 ], [ %2, %183 ]
  %192 = phi i8* [ %2, %188 ], [ null, %183 ]
  store i8* %191, i8** %184, align 8, !dbg !814, !tbaa !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %210, !dbg !816

; <label>:193:                                    ; preds = %177
  %194 = and i32 %3, 1, !dbg !817
  %195 = icmp eq i32 %194, 0, !dbg !817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  br i1 %195, label %196, label %198, !dbg !819

; <label>:196:                                    ; preds = %193
  %197 = tail call i8* @sdsdup(i8* %1) #6, !dbg !820
  br label %198

; <label>:198:                                    ; preds = %193, %196
  %199 = phi i8* [ %1, %196 ], [ null, %193 ]
  %200 = phi i8* [ %197, %196 ], [ %1, %193 ], !dbg !823
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %201 = and i32 %3, 2, !dbg !824
  %202 = icmp eq i32 %201, 0, !dbg !824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  br i1 %202, label %203, label %205, !dbg !826

; <label>:203:                                    ; preds = %198
  %204 = tail call i8* @sdsdup(i8* %2) #6, !dbg !827
  br label %205

; <label>:205:                                    ; preds = %198, %203
  %206 = phi i8* [ %2, %203 ], [ null, %198 ]
  %207 = phi i8* [ %204, %203 ], [ %2, %198 ], !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %208 = load %struct.dict*, %struct.dict** %179, align 8, !dbg !831, !tbaa !168
  %209 = tail call i32 @dictAdd(%struct.dict* %208, i8* %200, i8* %207) #6, !dbg !832
  br label %210

; <label>:210:                                    ; preds = %205, %190
  %211 = phi i8* [ %192, %190 ], [ %206, %205 ], !dbg !833
  %212 = phi i32 [ 1, %190 ], [ 0, %205 ], !dbg !835
  %213 = phi i8* [ %1, %190 ], [ %199, %205 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %215

; <label>:214:                                    ; preds = %175
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 267, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !836
  tail call void @_exit(i32 1) #7, !dbg !836
  unreachable

; <label>:215:                                    ; preds = %210, %174
  %216 = phi i8* [ %2, %174 ], [ %211, %210 ]
  %217 = phi i32 [ %139, %174 ], [ %212, %210 ], !dbg !838
  %218 = phi i8* [ %1, %174 ], [ %213, %210 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %219 = and i32 %3, 1, !dbg !839
  %220 = icmp ne i32 %219, 0, !dbg !839
  %221 = icmp ne i8* %218, null, !dbg !841
  %222 = and i1 %220, %221, !dbg !842
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  br i1 %222, label %223, label %224, !dbg !842

; <label>:223:                                    ; preds = %215
  call void @sdsfree(i8* nonnull %218) #6, !dbg !843
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !843
  br label %224, !dbg !843

; <label>:224:                                    ; preds = %223, %215
  %225 = and i32 %3, 2, !dbg !844
  %226 = icmp ne i32 %225, 0, !dbg !844
  %227 = icmp ne i8* %216, null, !dbg !846
  %228 = and i1 %226, %227, !dbg !847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !847
  br i1 %228, label %229, label %230, !dbg !847

; <label>:229:                                    ; preds = %224
  call void @sdsfree(i8* nonnull %216) #6, !dbg !848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  br label %230, !dbg !848

; <label>:230:                                    ; preds = %229, %224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !849
  ret i32 %217, !dbg !849
}

; Function Attrs: noredzone
declare dso_local i8* @ziplistDelete(i8*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @ziplistInsert(i8*, i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @ziplistPush(i8*, i8*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @hashTypeLength(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !745 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !852
  %3 = load i32, i32* %2, align 8, !dbg !852
  %4 = lshr i32 %3, 4, !dbg !852
  %5 = and i32 %4, 15, !dbg !852
  %6 = icmp eq i32 %5, 5, !dbg !853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !854
  br i1 %6, label %7, label %13, !dbg !854

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !855
  %9 = load i8*, i8** %8, align 8, !dbg !855, !tbaa !168
  %10 = tail call i32 @ziplistLen(i8* %9) #6, !dbg !856
  %11 = lshr i32 %10, 1, !dbg !857
  %12 = zext i32 %11 to i64, !dbg !856
  br label %25, !dbg !858

; <label>:13:                                     ; preds = %1
  %14 = icmp eq i32 %5, 2, !dbg !859
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !860
  br i1 %14, label %15, label %24, !dbg !860

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !861
  %17 = bitcast i8** %16 to %struct.dict**, !dbg !861
  %18 = load %struct.dict*, %struct.dict** %17, align 8, !dbg !861, !tbaa !168
  %19 = getelementptr inbounds %struct.dict, %struct.dict* %18, i64 0, i32 2, i64 0, i32 3, !dbg !861
  %20 = load i64, i64* %19, align 8, !dbg !861, !tbaa !769
  %21 = getelementptr inbounds %struct.dict, %struct.dict* %18, i64 0, i32 2, i64 1, i32 3, !dbg !861
  %22 = load i64, i64* %21, align 8, !dbg !861, !tbaa !769
  %23 = add i64 %22, %20, !dbg !861
  br label %25

; <label>:24:                                     ; preds = %13
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 319, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !862
  tail call void @_exit(i32 1) #7, !dbg !862
  unreachable

; <label>:25:                                     ; preds = %15, %7
  %26 = phi i64 [ %12, %7 ], [ %23, %15 ], !dbg !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  ret i64 %26, !dbg !864
}

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsdup(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @dictAdd(%struct.dict*, i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @hashTypeDelete(%struct.redisObject* nocapture, i8*) local_unnamed_addr #0 !dbg !865 {
  %3 = alloca i8*, align 8
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !877
  %5 = load i32, i32* %4, align 8, !dbg !877
  %6 = lshr i32 %5, 4, !dbg !877
  %7 = and i32 %6, 15, !dbg !877
  %8 = icmp eq i32 %7, 5, !dbg !878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !879
  br i1 %8, label %9, label %50, !dbg !879

; <label>:9:                                      ; preds = %2
  %10 = bitcast i8** %3 to i8*, !dbg !880
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #5, !dbg !880
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !881
  %12 = load i8*, i8** %11, align 8, !dbg !881, !tbaa !168
  %13 = tail call i8* @ziplistIndex(i8* %12, i32 0) #6, !dbg !883
  store i8* %13, i8** %3, align 8, !dbg !885, !tbaa !162
  %14 = icmp eq i8* %13, null, !dbg !886
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  br i1 %14, label %48, label %15, !dbg !888

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !892
  %17 = load i8, i8* %16, align 1, !dbg !892, !tbaa !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !894
  %18 = trunc i8 %17 to i3, !dbg !894
  switch i3 %18, label %40 [
    i3 0, label %19
    i3 1, label %22
    i3 2, label %26
    i3 3, label %31
    i3 -4, label %36
  ], !dbg !894

; <label>:19:                                     ; preds = %15
  %20 = lshr i8 %17, 3, !dbg !895
  %21 = zext i8 %20 to i64, !dbg !895
  br label %40, !dbg !896

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !897
  %24 = load i8, i8* %23, align 1, !dbg !898, !tbaa !184
  %25 = zext i8 %24 to i64, !dbg !897
  br label %40, !dbg !899

; <label>:26:                                     ; preds = %15
  %27 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !900
  %28 = bitcast i8* %27 to i16*, !dbg !901
  %29 = load i16, i16* %28, align 1, !dbg !901, !tbaa !195
  %30 = zext i16 %29 to i64, !dbg !900
  br label %40, !dbg !902

; <label>:31:                                     ; preds = %15
  %32 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !903
  %33 = bitcast i8* %32 to i32*, !dbg !904
  %34 = load i32, i32* %33, align 1, !dbg !904, !tbaa !200
  %35 = zext i32 %34 to i64, !dbg !903
  br label %40, !dbg !905

; <label>:36:                                     ; preds = %15
  %37 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !906
  %38 = bitcast i8* %37 to i64*, !dbg !907
  %39 = load i64, i64* %38, align 1, !dbg !907, !tbaa !204
  br label %40, !dbg !908

; <label>:40:                                     ; preds = %15, %19, %22, %26, %31, %36
  %41 = phi i64 [ %39, %36 ], [ %35, %31 ], [ %30, %26 ], [ %25, %22 ], [ %21, %19 ], [ 0, %15 ], !dbg !909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !911
  %42 = trunc i64 %41 to i32, !dbg !912
  %43 = tail call i8* @ziplistFind(i8* nonnull %13, i8* nonnull %1, i32 %42, i32 1) #6, !dbg !913
  store i8* %43, i8** %3, align 8, !dbg !914, !tbaa !162
  %44 = icmp eq i8* %43, null, !dbg !915
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !917
  br i1 %44, label %48, label %45, !dbg !917

; <label>:45:                                     ; preds = %40
  %46 = call i8* @ziplistDelete(i8* %12, i8** nonnull %3) #6, !dbg !918
  %47 = call i8* @ziplistDelete(i8* %46, i8** nonnull %3) #6, !dbg !920
  store i8* %47, i8** %11, align 8, !dbg !921, !tbaa !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !922
  br label %48, !dbg !922

; <label>:48:                                     ; preds = %40, %9, %45
  %49 = phi i32 [ 1, %45 ], [ 0, %40 ], [ 0, %9 ], !dbg !923
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #5, !dbg !924
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !925
  br label %66, !dbg !925

; <label>:50:                                     ; preds = %2
  %51 = icmp eq i32 %7, 2, !dbg !926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !928
  br i1 %51, label %52, label %65, !dbg !928

; <label>:52:                                     ; preds = %50
  %53 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !929
  %54 = bitcast i8** %53 to %struct.dict**, !dbg !929
  %55 = load %struct.dict*, %struct.dict** %54, align 8, !dbg !929, !tbaa !168
  %56 = tail call i32 @dictDelete(%struct.dict* %55, i8* %1) #6, !dbg !932
  %57 = icmp eq i32 %56, 0, !dbg !933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !934
  br i1 %57, label %58, label %66, !dbg !934

; <label>:58:                                     ; preds = %52
  %59 = load %struct.dict*, %struct.dict** %54, align 8, !dbg !935, !tbaa !168
  %60 = tail call i32 @htNeedsResize(%struct.dict* %59) #6, !dbg !938
  %61 = icmp eq i32 %60, 0, !dbg !938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !939
  br i1 %61, label %66, label %62, !dbg !939

; <label>:62:                                     ; preds = %58
  %63 = load %struct.dict*, %struct.dict** %54, align 8, !dbg !940, !tbaa !168
  %64 = tail call i32 @dictResize(%struct.dict* %63) #6, !dbg !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !941
  br label %66, !dbg !941

; <label>:65:                                     ; preds = %50
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 305, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !942
  tail call void @_exit(i32 1) #7, !dbg !942
  unreachable

; <label>:66:                                     ; preds = %58, %62, %52, %48
  %67 = phi i32 [ %49, %48 ], [ 1, %62 ], [ 1, %58 ], [ 0, %52 ], !dbg !923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !944
  ret i32 %67, !dbg !944
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
define dso_local %struct.hashTypeIterator* @hashTypeInitIterator(%struct.redisObject*) local_unnamed_addr #0 !dbg !945 {
  %2 = tail call i8* @zmalloc(i64 48) #6, !dbg !973
  %3 = bitcast i8* %2 to %struct.hashTypeIterator*, !dbg !973
  %4 = bitcast i8* %2 to %struct.redisObject**, !dbg !975
  store %struct.redisObject* %0, %struct.redisObject** %4, align 8, !dbg !976, !tbaa !977
  %5 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !979
  %6 = load i32, i32* %5, align 8, !dbg !979
  %7 = lshr i32 %6, 4, !dbg !979
  %8 = and i32 %7, 15, !dbg !979
  %9 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !980
  %10 = bitcast i8* %9 to i32*, !dbg !980
  store i32 %8, i32* %10, align 8, !dbg !981, !tbaa !982
  %11 = icmp eq i32 %8, 5, !dbg !983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !985
  br i1 %11, label %12, label %15, !dbg !985

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !986
  %14 = bitcast i8* %13 to <2 x i8*>*, !dbg !988
  store <2 x i8*> zeroinitializer, <2 x i8*>* %14, align 8, !dbg !988, !tbaa !162
  br label %25, !dbg !989

; <label>:15:                                     ; preds = %1
  %16 = icmp eq i32 %8, 2, !dbg !990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !992
  br i1 %16, label %17, label %24, !dbg !992

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !993
  %19 = bitcast i8** %18 to %struct.dict**, !dbg !993
  %20 = load %struct.dict*, %struct.dict** %19, align 8, !dbg !993, !tbaa !168
  %21 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %20) #6, !dbg !995
  %22 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !996
  %23 = bitcast i8* %22 to %struct.dictIterator**, !dbg !996
  store %struct.dictIterator* %21, %struct.dictIterator** %23, align 8, !dbg !997, !tbaa !998
  br label %25

; <label>:24:                                     ; preds = %15
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 335, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !999
  tail call void @_exit(i32 1) #7, !dbg !999
  unreachable

; <label>:25:                                     ; preds = %17, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1001
  ret %struct.hashTypeIterator* %3, !dbg !1001
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.dictIterator* @dictGetIterator(%struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hashTypeReleaseIterator(%struct.hashTypeIterator*) local_unnamed_addr #0 !dbg !1002 {
  %2 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 1, !dbg !1008
  %3 = load i32, i32* %2, align 8, !dbg !1008, !tbaa !982
  %4 = icmp eq i32 %3, 2, !dbg !1010
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1011
  br i1 %4, label %5, label %8, !dbg !1011

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 4, !dbg !1012
  %7 = load %struct.dictIterator*, %struct.dictIterator** %6, align 8, !dbg !1012, !tbaa !998
  tail call void @dictReleaseIterator(%struct.dictIterator* %7) #6, !dbg !1013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1013
  br label %8, !dbg !1013

; <label>:8:                                      ; preds = %5, %1
  %9 = bitcast %struct.hashTypeIterator* %0 to i8*, !dbg !1014
  tail call void @zfree(i8* %9) #6, !dbg !1015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1016
  ret void, !dbg !1016
}

; Function Attrs: noredzone
declare dso_local void @dictReleaseIterator(%struct.dictIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @hashTypeNext(%struct.hashTypeIterator* nocapture) local_unnamed_addr #0 !dbg !1017 {
  %2 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 1, !dbg !1028
  %3 = load i32, i32* %2, align 8, !dbg !1028, !tbaa !982
  %4 = icmp eq i32 %3, 5, !dbg !1029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1030
  br i1 %4, label %5, label %33, !dbg !1030

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 0, !dbg !1031
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1031, !tbaa !977
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !1032
  %9 = load i8*, i8** %8, align 8, !dbg !1032, !tbaa !168
  %10 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 2, !dbg !1034
  %11 = load i8*, i8** %10, align 8, !dbg !1034, !tbaa !1035
  %12 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 3, !dbg !1037
  %13 = load i8*, i8** %12, align 8, !dbg !1037, !tbaa !1038
  %14 = icmp eq i8* %11, null, !dbg !1040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1042
  %15 = icmp eq i8* %13, null, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1043
  br i1 %14, label %16, label %20, !dbg !1042

; <label>:16:                                     ; preds = %5
  br i1 %15, label %18, label %17, !dbg !1045

; <label>:17:                                     ; preds = %16
  tail call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 359) #6, !dbg !1045
  tail call void @_exit(i32 1) #7, !dbg !1045
  unreachable

; <label>:18:                                     ; preds = %16
  %19 = tail call i8* @ziplistIndex(i8* %9, i32 0) #6, !dbg !1047
  br label %24, !dbg !1048

; <label>:20:                                     ; preds = %5
  br i1 %15, label %21, label %22, !dbg !1049

; <label>:21:                                     ; preds = %20
  tail call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 363) #6, !dbg !1049
  tail call void @_exit(i32 1) #7, !dbg !1049
  unreachable

; <label>:22:                                     ; preds = %20
  %23 = tail call i8* @ziplistNext(i8* %9, i8* nonnull %13) #6, !dbg !1050
  br label %24

; <label>:24:                                     ; preds = %22, %18
  %25 = phi i8* [ %19, %18 ], [ %23, %22 ], !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %26 = icmp eq i8* %25, null, !dbg !1051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1053
  br i1 %26, label %27, label %28, !dbg !1053

; <label>:27:                                     ; preds = %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1054
  br label %43

; <label>:28:                                     ; preds = %24
  %29 = tail call i8* @ziplistNext(i8* %9, i8* nonnull %25) #6, !dbg !1055
  %30 = icmp eq i8* %29, null, !dbg !1056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1056
  br i1 %30, label %31, label %32, !dbg !1056

; <label>:31:                                     ; preds = %28
  tail call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 370) #6, !dbg !1056
  tail call void @_exit(i32 1) #7, !dbg !1056
  unreachable

; <label>:32:                                     ; preds = %28
  store i8* %25, i8** %10, align 8, !dbg !1057, !tbaa !1035
  store i8* %29, i8** %12, align 8, !dbg !1058, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %42

; <label>:33:                                     ; preds = %1
  %34 = icmp eq i32 %3, 2, !dbg !1060
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  br i1 %34, label %35, label %41, !dbg !1062

; <label>:35:                                     ; preds = %33
  %36 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 4, !dbg !1063
  %37 = load %struct.dictIterator*, %struct.dictIterator** %36, align 8, !dbg !1063, !tbaa !998
  %38 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %37) #6, !dbg !1066
  %39 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 5, !dbg !1067
  store %struct.dictEntry* %38, %struct.dictEntry** %39, align 8, !dbg !1068, !tbaa !1069
  %40 = icmp eq %struct.dictEntry* %38, null, !dbg !1070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1071
  br i1 %40, label %43, label %42, !dbg !1071

; <label>:41:                                     ; preds = %33
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 378, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1072
  tail call void @_exit(i32 1) #7, !dbg !1072
  unreachable

; <label>:42:                                     ; preds = %32, %35
  br label %43, !dbg !1074

; <label>:43:                                     ; preds = %35, %27, %42
  %44 = phi i32 [ 0, %42 ], [ -1, %27 ], [ -1, %35 ], !dbg !1075
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1076
  ret i32 %44, !dbg !1076
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictNext(%struct.dictIterator*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hashTypeCurrentFromZiplist(%struct.hashTypeIterator* nocapture readonly, i32, i8**, i32*, i64*) local_unnamed_addr #0 !dbg !1077 {
  %6 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 1, !dbg !1092
  %7 = load i32, i32* %6, align 8, !dbg !1092, !tbaa !982
  %8 = icmp eq i32 %7, 5, !dbg !1092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1092
  br i1 %8, label %10, label %9, !dbg !1092

; <label>:9:                                      ; preds = %5
  tail call void @_serverAssert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 392) #6, !dbg !1092
  tail call void @_exit(i32 1) #7, !dbg !1092
  unreachable

; <label>:10:                                     ; preds = %5
  %11 = and i32 %1, 1, !dbg !1093
  %12 = icmp eq i32 %11, 0, !dbg !1093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1095
  br i1 %12, label %19, label %13, !dbg !1095

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 2, !dbg !1096
  %15 = load i8*, i8** %14, align 8, !dbg !1096, !tbaa !1035
  %16 = tail call i32 @ziplistGet(i8* %15, i8** %2, i32* %3, i64* %4) #6, !dbg !1098
  %17 = icmp eq i32 %16, 0, !dbg !1100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1100
  br i1 %17, label %18, label %25, !dbg !1100

; <label>:18:                                     ; preds = %13
  tail call void @_serverAssert(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 396) #6, !dbg !1100
  tail call void @_exit(i32 1) #7, !dbg !1100
  unreachable

; <label>:19:                                     ; preds = %10
  %20 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 3, !dbg !1101
  %21 = load i8*, i8** %20, align 8, !dbg !1101, !tbaa !1038
  %22 = tail call i32 @ziplistGet(i8* %21, i8** %2, i32* %3, i64* %4) #6, !dbg !1103
  %23 = icmp eq i32 %22, 0, !dbg !1104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1104
  br i1 %23, label %24, label %25, !dbg !1104

; <label>:24:                                     ; preds = %19
  tail call void @_serverAssert(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 399) #6, !dbg !1104
  tail call void @_exit(i32 1) #7, !dbg !1104
  unreachable

; <label>:25:                                     ; preds = %13, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1105
  ret void, !dbg !1105
}

; Function Attrs: noredzone nounwind
define dso_local i8* @hashTypeCurrentFromHashTable(%struct.hashTypeIterator* nocapture readonly, i32) local_unnamed_addr #0 !dbg !1106 {
  %3 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 1, !dbg !1114
  %4 = load i32, i32* %3, align 8, !dbg !1114, !tbaa !982
  %5 = icmp eq i32 %4, 2, !dbg !1114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1114
  br i1 %5, label %7, label %6, !dbg !1114

; <label>:6:                                      ; preds = %2
  tail call void @_serverAssert(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 407) #6, !dbg !1114
  tail call void @_exit(i32 1) #7, !dbg !1114
  unreachable

; <label>:7:                                      ; preds = %2
  %8 = and i32 %1, 1, !dbg !1115
  %9 = icmp eq i32 %8, 0, !dbg !1115
  %10 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 5, !dbg !1117
  %11 = load %struct.dictEntry*, %struct.dictEntry** %10, align 8, !dbg !1117, !tbaa !1069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1119
  %12 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %11, i64 0, i32 1, i32 0, !dbg !1120
  %13 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %11, i64 0, i32 0, !dbg !1121
  %14 = select i1 %9, i8** %12, i8** %13, !dbg !1119
  %15 = load i8*, i8** %14, align 8, !dbg !1123, !tbaa !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1124
  ret i8* %15, !dbg !1124
}

; Function Attrs: noredzone nounwind
define dso_local void @hashTypeCurrentObject(%struct.hashTypeIterator* nocapture readonly, i32, i8**, i32*, i64*) local_unnamed_addr #0 !dbg !1125 {
  %6 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 1, !dbg !1141
  %7 = load i32, i32* %6, align 8, !dbg !1141, !tbaa !982
  %8 = icmp eq i32 %7, 5, !dbg !1142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1143
  br i1 %8, label %9, label %10, !dbg !1143

; <label>:9:                                      ; preds = %5
  store i8* null, i8** %2, align 8, !dbg !1144, !tbaa !162
  tail call void @hashTypeCurrentFromZiplist(%struct.hashTypeIterator* nonnull %0, i32 %1, i8** %2, i32* %3, i64* %4) #8, !dbg !1146
  br label %49, !dbg !1147

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i32 %7, 2, !dbg !1148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1149
  br i1 %11, label %12, label %48, !dbg !1149

; <label>:12:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1153
  %13 = and i32 %1, 1, !dbg !1154
  %14 = icmp eq i32 %13, 0, !dbg !1154
  %15 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %0, i64 0, i32 5, !dbg !1155
  %16 = load %struct.dictEntry*, %struct.dictEntry** %15, align 8, !dbg !1155, !tbaa !1069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1156
  %17 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %16, i64 0, i32 0, !dbg !1157
  %18 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %16, i64 0, i32 1, i32 0, !dbg !1158
  %19 = select i1 %14, i8** %18, i8** %17, !dbg !1156
  %20 = load i8*, i8** %19, align 8, !dbg !1159, !tbaa !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1160
  store i8* %20, i8** %2, align 8, !dbg !1162, !tbaa !162
  %21 = getelementptr inbounds i8, i8* %20, i64 -1, !dbg !1165
  %22 = load i8, i8* %21, align 1, !dbg !1165, !tbaa !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1167
  %23 = trunc i8 %22 to i3, !dbg !1167
  switch i3 %23, label %45 [
    i3 0, label %24
    i3 1, label %27
    i3 2, label %31
    i3 3, label %36
    i3 -4, label %41
  ], !dbg !1167

; <label>:24:                                     ; preds = %12
  %25 = lshr i8 %22, 3, !dbg !1168
  %26 = zext i8 %25 to i64, !dbg !1168
  br label %45, !dbg !1169

; <label>:27:                                     ; preds = %12
  %28 = getelementptr inbounds i8, i8* %20, i64 -3, !dbg !1170
  %29 = load i8, i8* %28, align 1, !dbg !1171, !tbaa !184
  %30 = zext i8 %29 to i64, !dbg !1170
  br label %45, !dbg !1172

; <label>:31:                                     ; preds = %12
  %32 = getelementptr inbounds i8, i8* %20, i64 -5, !dbg !1173
  %33 = bitcast i8* %32 to i16*, !dbg !1174
  %34 = load i16, i16* %33, align 1, !dbg !1174, !tbaa !195
  %35 = zext i16 %34 to i64, !dbg !1173
  br label %45, !dbg !1175

; <label>:36:                                     ; preds = %12
  %37 = getelementptr inbounds i8, i8* %20, i64 -9, !dbg !1176
  %38 = bitcast i8* %37 to i32*, !dbg !1177
  %39 = load i32, i32* %38, align 1, !dbg !1177, !tbaa !200
  %40 = zext i32 %39 to i64, !dbg !1176
  br label %45, !dbg !1178

; <label>:41:                                     ; preds = %12
  %42 = getelementptr inbounds i8, i8* %20, i64 -17, !dbg !1179
  %43 = bitcast i8* %42 to i64*, !dbg !1180
  %44 = load i64, i64* %43, align 1, !dbg !1180, !tbaa !204
  br label %45, !dbg !1181

; <label>:45:                                     ; preds = %12, %24, %27, %31, %36, %41
  %46 = phi i64 [ %44, %41 ], [ %40, %36 ], [ %35, %31 ], [ %30, %27 ], [ %26, %24 ], [ 0, %12 ], !dbg !1182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1183
  %47 = trunc i64 %46 to i32, !dbg !1184
  store i32 %47, i32* %3, align 4, !dbg !1185, !tbaa !200
  br label %49

; <label>:48:                                     ; preds = %10
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 435, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1186
  tail call void @_exit(i32 1) #7, !dbg !1186
  unreachable

; <label>:49:                                     ; preds = %45, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1188
  ret void, !dbg !1188
}

; Function Attrs: noredzone nounwind
define dso_local i8* @hashTypeCurrentObjectNewSds(%struct.hashTypeIterator* nocapture readonly, i32) local_unnamed_addr #0 !dbg !1189 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = bitcast i8** %3 to i8*, !dbg !1198
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1198
  %7 = bitcast i32* %4 to i8*, !dbg !1199
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #5, !dbg !1199
  %8 = bitcast i64* %5 to i8*, !dbg !1200
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !1200
  call void @hashTypeCurrentObject(%struct.hashTypeIterator* %0, i32 %1, i8** nonnull %3, i32* nonnull %4, i64* nonnull %5) #8, !dbg !1204
  %9 = load i8*, i8** %3, align 8, !dbg !1205, !tbaa !162
  %10 = icmp eq i8* %9, null, !dbg !1205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1207
  br i1 %10, label %15, label %11, !dbg !1207

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %4, align 4, !dbg !1208, !tbaa !200
  %13 = zext i32 %12 to i64, !dbg !1208
  %14 = call i8* @sdsnewlen(i8* nonnull %9, i64 %13) #6, !dbg !1209
  br label %18, !dbg !1210

; <label>:15:                                     ; preds = %2
  %16 = load i64, i64* %5, align 8, !dbg !1211, !tbaa !451
  %17 = call i8* @sdsfromlonglong(i64 %16) #6, !dbg !1212
  br label %18, !dbg !1213

; <label>:18:                                     ; preds = %15, %11
  %19 = phi i8* [ %14, %11 ], [ %17, %15 ], !dbg !1214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1215
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !1216
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #5, !dbg !1216
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1216
  ret i8* %19, !dbg !1216
}

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsfromlonglong(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @hashTypeLookupWriteOrCreate(%struct.client*, %struct.redisObject*) local_unnamed_addr #0 !dbg !1217 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1389
  %4 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !1389, !tbaa !1390
  %5 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %4, %struct.redisObject* %1) #6, !dbg !1394
  %6 = icmp eq %struct.redisObject* %5, null, !dbg !1396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1398
  br i1 %6, label %7, label %10, !dbg !1398

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.redisObject* @createHashObject() #6, !dbg !1399
  %9 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !1401, !tbaa !1390
  tail call void @dbAdd(%struct.redisDb* %9, %struct.redisObject* %1, %struct.redisObject* %8) #6, !dbg !1402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1403
  br label %17, !dbg !1403

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %5, i64 0, i32 0, !dbg !1404
  %12 = load i32, i32* %11, align 8, !dbg !1404
  %13 = and i32 %12, 15, !dbg !1404
  %14 = icmp eq i32 %13, 4, !dbg !1407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1408
  br i1 %14, label %17, label %15, !dbg !1408

; <label>:15:                                     ; preds = %10
  %16 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !1409, !tbaa !1411
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %16) #6, !dbg !1413
  br label %17, !dbg !1414

; <label>:17:                                     ; preds = %7, %10, %15
  %18 = phi %struct.redisObject* [ null, %15 ], [ %8, %7 ], [ %5, %10 ], !dbg !1415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1416
  ret %struct.redisObject* %18, !dbg !1416
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
define dso_local void @hashTypeConvertZiplist(%struct.redisObject*, i32) local_unnamed_addr #0 !dbg !1417 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1432
  %10 = load i32, i32* %9, align 8, !dbg !1432
  %11 = and i32 %10, 240, !dbg !1432
  %12 = icmp eq i32 %11, 80, !dbg !1432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1432
  br i1 %12, label %14, label %13, !dbg !1432

; <label>:13:                                     ; preds = %2
  tail call void @_serverAssert(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 466) #6, !dbg !1432
  tail call void @_exit(i32 1) #7, !dbg !1432
  unreachable

; <label>:14:                                     ; preds = %2
  %15 = icmp eq i32 %1, 5, !dbg !1433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1434
  br i1 %15, label %99, label %16, !dbg !1434

; <label>:16:                                     ; preds = %14
  %17 = icmp eq i32 %1, 2, !dbg !1435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1436
  br i1 %17, label %18, label %98, !dbg !1436

; <label>:18:                                     ; preds = %16
  %19 = tail call i8* @zmalloc(i64 48) #6, !dbg !1439
  %20 = bitcast i8* %19 to %struct.hashTypeIterator*, !dbg !1439
  %21 = bitcast i8* %19 to %struct.redisObject**, !dbg !1441
  store %struct.redisObject* %0, %struct.redisObject** %21, align 8, !dbg !1442, !tbaa !977
  %22 = load i32, i32* %9, align 8, !dbg !1443
  %23 = lshr i32 %22, 4, !dbg !1443
  %24 = and i32 %23, 15, !dbg !1443
  %25 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !1444
  %26 = bitcast i8* %25 to i32*, !dbg !1444
  store i32 %24, i32* %26, align 8, !dbg !1445, !tbaa !982
  %27 = icmp eq i32 %24, 5, !dbg !1446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1447
  br i1 %27, label %28, label %31, !dbg !1447

; <label>:28:                                     ; preds = %18
  %29 = getelementptr inbounds i8, i8* %19, i64 16, !dbg !1448
  %30 = bitcast i8* %29 to <2 x i8*>*, !dbg !1449
  store <2 x i8*> zeroinitializer, <2 x i8*>* %30, align 8, !dbg !1449, !tbaa !162
  br label %41, !dbg !1450

; <label>:31:                                     ; preds = %18
  %32 = icmp eq i32 %24, 2, !dbg !1451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1452
  br i1 %32, label %33, label %40, !dbg !1452

; <label>:33:                                     ; preds = %31
  %34 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1453
  %35 = bitcast i8** %34 to %struct.dict**, !dbg !1453
  %36 = load %struct.dict*, %struct.dict** %35, align 8, !dbg !1453, !tbaa !168
  %37 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %36) #6, !dbg !1454
  %38 = getelementptr inbounds i8, i8* %19, i64 32, !dbg !1455
  %39 = bitcast i8* %38 to %struct.dictIterator**, !dbg !1455
  store %struct.dictIterator* %37, %struct.dictIterator** %39, align 8, !dbg !1456, !tbaa !998
  br label %41

; <label>:40:                                     ; preds = %31
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 335, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1457
  tail call void @_exit(i32 1) #7, !dbg !1457
  unreachable

; <label>:41:                                     ; preds = %28, %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1458
  %42 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @hashDictType, i8* null) #6, !dbg !1460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1462
  %43 = call i32 @hashTypeNext(%struct.hashTypeIterator* nonnull %20) #8, !dbg !1463
  %44 = icmp eq i32 %43, -1, !dbg !1464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1462
  br i1 %44, label %84, label %45, !dbg !1462

; <label>:45:                                     ; preds = %41
  %46 = bitcast i8** %6 to i8*
  %47 = bitcast i32* %7 to i8*
  %48 = bitcast i64* %8 to i8*
  %49 = bitcast i8** %3 to i8*
  %50 = bitcast i32* %4 to i8*
  %51 = bitcast i64* %5 to i8*
  br label %52, !dbg !1462

; <label>:52:                                     ; preds = %45, %81
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %46) #5, !dbg !1468
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %47) #5, !dbg !1469
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %48) #5, !dbg !1470
  call void @hashTypeCurrentObject(%struct.hashTypeIterator* %20, i32 1, i8** nonnull %6, i32* nonnull %7, i64* nonnull %8) #6, !dbg !1474
  %53 = load i8*, i8** %6, align 8, !dbg !1475, !tbaa !162
  %54 = icmp eq i8* %53, null, !dbg !1475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1476
  br i1 %54, label %59, label %55, !dbg !1476

; <label>:55:                                     ; preds = %52
  %56 = load i32, i32* %7, align 4, !dbg !1477, !tbaa !200
  %57 = zext i32 %56 to i64, !dbg !1477
  %58 = call i8* @sdsnewlen(i8* nonnull %53, i64 %57) #6, !dbg !1478
  br label %62, !dbg !1479

; <label>:59:                                     ; preds = %52
  %60 = load i64, i64* %8, align 8, !dbg !1480, !tbaa !451
  %61 = call i8* @sdsfromlonglong(i64 %60) #6, !dbg !1481
  br label %62, !dbg !1482

; <label>:62:                                     ; preds = %55, %59
  %63 = phi i8* [ %58, %55 ], [ %61, %59 ], !dbg !1483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1484
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %48) #5, !dbg !1485
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %47) #5, !dbg !1485
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46) #5, !dbg !1485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1485
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %49) #5, !dbg !1490
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %50) #5, !dbg !1491
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %51) #5, !dbg !1492
  call void @hashTypeCurrentObject(%struct.hashTypeIterator* %20, i32 2, i8** nonnull %3, i32* nonnull %4, i64* nonnull %5) #6, !dbg !1496
  %64 = load i8*, i8** %3, align 8, !dbg !1497, !tbaa !162
  %65 = icmp eq i8* %64, null, !dbg !1497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1498
  br i1 %65, label %70, label %66, !dbg !1498

; <label>:66:                                     ; preds = %62
  %67 = load i32, i32* %4, align 4, !dbg !1499, !tbaa !200
  %68 = zext i32 %67 to i64, !dbg !1499
  %69 = call i8* @sdsnewlen(i8* nonnull %64, i64 %68) #6, !dbg !1500
  br label %73, !dbg !1501

; <label>:70:                                     ; preds = %62
  %71 = load i64, i64* %5, align 8, !dbg !1502, !tbaa !451
  %72 = call i8* @sdsfromlonglong(i64 %71) #6, !dbg !1503
  br label %73, !dbg !1504

; <label>:73:                                     ; preds = %66, %70
  %74 = phi i8* [ %69, %66 ], [ %72, %70 ], !dbg !1505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1484
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %51) #5, !dbg !1506
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %50) #5, !dbg !1506
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %49) #5, !dbg !1506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1506
  %75 = call i32 @dictAdd(%struct.dict* %42, i8* %63, i8* %74) #6, !dbg !1508
  %76 = icmp eq i32 %75, 0, !dbg !1510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1512
  br i1 %76, label %81, label %77, !dbg !1512

; <label>:77:                                     ; preds = %73
  %78 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1513
  %79 = load i8*, i8** %78, align 8, !dbg !1513, !tbaa !168
  %80 = call i64 @ziplistBlobLen(i8* %79) #6, !dbg !1515
  call void @serverLogHexDump(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* %79, i64 %80) #6, !dbg !1516
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 488, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !1517
  call void @_exit(i32 1) #7, !dbg !1517
  unreachable

; <label>:81:                                     ; preds = %73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1462
  %82 = call i32 @hashTypeNext(%struct.hashTypeIterator* %20) #8, !dbg !1463
  %83 = icmp eq i32 %82, -1, !dbg !1464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1462
  br i1 %83, label %84, label %52, !dbg !1462, !llvm.loop !1518

; <label>:84:                                     ; preds = %81, %41
  %85 = load i32, i32* %26, align 8, !dbg !1522, !tbaa !982
  %86 = icmp eq i32 %85, 2, !dbg !1523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1524
  br i1 %86, label %87, label %91, !dbg !1524

; <label>:87:                                     ; preds = %84
  %88 = getelementptr inbounds i8, i8* %19, i64 32, !dbg !1525
  %89 = bitcast i8* %88 to %struct.dictIterator**, !dbg !1525
  %90 = load %struct.dictIterator*, %struct.dictIterator** %89, align 8, !dbg !1525, !tbaa !998
  call void @dictReleaseIterator(%struct.dictIterator* %90) #6, !dbg !1526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1526
  br label %91, !dbg !1526

; <label>:91:                                     ; preds = %84, %87
  call void @zfree(i8* nonnull %19) #6, !dbg !1527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1528
  %92 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1529
  %93 = load i8*, i8** %92, align 8, !dbg !1529, !tbaa !168
  call void @zfree(i8* %93) #6, !dbg !1530
  %94 = load i32, i32* %9, align 8, !dbg !1531
  %95 = and i32 %94, -241, !dbg !1531
  %96 = or i32 %95, 32, !dbg !1531
  store i32 %96, i32* %9, align 8, !dbg !1531
  %97 = bitcast i8** %92 to %struct.dict**, !dbg !1532
  store %struct.dict* %42, %struct.dict** %97, align 8, !dbg !1532, !tbaa !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %99

; <label>:98:                                     ; preds = %16
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 496, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1533
  tail call void @_exit(i32 1) #7, !dbg !1533
  unreachable

; <label>:99:                                     ; preds = %14, %91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1535
  ret void, !dbg !1535
}

; Function Attrs: noredzone
declare dso_local %struct.dict* @dictCreate(%struct.dictType*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @serverLogHexDump(i32, i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @ziplistBlobLen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hsetnxCommand(%struct.client*) local_unnamed_addr #0 !dbg !1536 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1541
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1541, !tbaa !1543
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !1544
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !1544, !tbaa !162
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1548
  %7 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1548, !tbaa !1390
  %8 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %7, %struct.redisObject* %5) #6, !dbg !1549
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !1551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1552
  br i1 %9, label %18, label %10, !dbg !1552

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 0, !dbg !1553
  %12 = load i32, i32* %11, align 8, !dbg !1553
  %13 = and i32 %12, 15, !dbg !1553
  %14 = icmp eq i32 %13, 4, !dbg !1554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1555
  br i1 %14, label %15, label %16, !dbg !1555

; <label>:15:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1559
  br label %22, !dbg !1559

; <label>:16:                                     ; preds = %10
  %17 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !1560, !tbaa !1411
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %17) #6, !dbg !1561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1557
  br label %58, !dbg !1559

; <label>:18:                                     ; preds = %1
  %19 = tail call %struct.redisObject* @createHashObject() #6, !dbg !1563
  %20 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1564, !tbaa !1390
  tail call void @dbAdd(%struct.redisDb* %20, %struct.redisObject* %5, %struct.redisObject* %19) #6, !dbg !1565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1557
  %21 = icmp eq %struct.redisObject* %19, null, !dbg !1567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1559
  br i1 %21, label %59, label %22, !dbg !1559

; <label>:22:                                     ; preds = %15, %18
  %23 = phi %struct.redisObject* [ %8, %15 ], [ %19, %18 ]
  %24 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1568, !tbaa !1543
  tail call void @hashTypeTryConversion(%struct.redisObject* nonnull %23, %struct.redisObject** %24, i32 2, i32 3) #8, !dbg !1569
  %25 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1570, !tbaa !1543
  %26 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %25, i64 2, !dbg !1572
  %27 = load %struct.redisObject*, %struct.redisObject** %26, align 8, !dbg !1572, !tbaa !162
  %28 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %27, i64 0, i32 2, !dbg !1573
  %29 = load i8*, i8** %28, align 8, !dbg !1573, !tbaa !168
  %30 = tail call i32 @hashTypeExists(%struct.redisObject* nonnull %23, i8* %29) #8, !dbg !1574
  %31 = icmp eq i32 %30, 0, !dbg !1574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1575
  br i1 %31, label %34, label %32, !dbg !1575

; <label>:32:                                     ; preds = %22
  %33 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1576, !tbaa !1578
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %33) #6, !dbg !1579
  br label %58, !dbg !1580

; <label>:34:                                     ; preds = %22
  %35 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1581, !tbaa !1543
  %36 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %35, i64 2, !dbg !1583
  %37 = load %struct.redisObject*, %struct.redisObject** %36, align 8, !dbg !1583, !tbaa !162
  %38 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %37, i64 0, i32 2, !dbg !1584
  %39 = load i8*, i8** %38, align 8, !dbg !1584, !tbaa !168
  %40 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %35, i64 3, !dbg !1585
  %41 = load %struct.redisObject*, %struct.redisObject** %40, align 8, !dbg !1585, !tbaa !162
  %42 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %41, i64 0, i32 2, !dbg !1586
  %43 = load i8*, i8** %42, align 8, !dbg !1586, !tbaa !168
  %44 = tail call i32 @hashTypeSet(%struct.redisObject* nonnull %23, i8* %39, i8* %43, i32 0) #8, !dbg !1587
  %45 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !1588, !tbaa !1589
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %45) #6, !dbg !1590
  %46 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1591, !tbaa !1390
  %47 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1592, !tbaa !1543
  %48 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %47, i64 1, !dbg !1593
  %49 = load %struct.redisObject*, %struct.redisObject** %48, align 8, !dbg !1593, !tbaa !162
  tail call void @signalModifiedKey(%struct.redisDb* %46, %struct.redisObject* %49) #6, !dbg !1594
  %50 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1595, !tbaa !1543
  %51 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %50, i64 1, !dbg !1596
  %52 = load %struct.redisObject*, %struct.redisObject** %51, align 8, !dbg !1596, !tbaa !162
  %53 = load %struct.redisDb*, %struct.redisDb** %6, align 8, !dbg !1597, !tbaa !1390
  %54 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %53, i64 0, i32 5, !dbg !1598
  %55 = load i32, i32* %54, align 8, !dbg !1598, !tbaa !1599
  tail call void @notifyKeyspaceEvent(i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %struct.redisObject* %52, i32 %55) #6, !dbg !1601
  %56 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1602, !tbaa !1603
  %57 = add nsw i64 %56, 1, !dbg !1602
  store i64 %57, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1602, !tbaa !1603
  br label %58

; <label>:58:                                     ; preds = %32, %34, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %59, !dbg !1604

; <label>:59:                                     ; preds = %58, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1605
  ret void, !dbg !1605
}

; Function Attrs: noredzone
declare dso_local void @signalModifiedKey(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @notifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hsetCommand(%struct.client*) local_unnamed_addr #0 !dbg !1606 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1615
  %3 = load i32, i32* %2, align 8, !dbg !1615, !tbaa !1617
  %4 = srem i32 %3, 2, !dbg !1618
  %5 = icmp eq i32 %4, 1, !dbg !1619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1620
  br i1 %5, label %6, label %7, !dbg !1620

; <label>:6:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !1621
  br label %87, !dbg !1623

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1624
  %9 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1624, !tbaa !1543
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 1, !dbg !1626
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !1626, !tbaa !162
  %12 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1630
  %13 = load %struct.redisDb*, %struct.redisDb** %12, align 8, !dbg !1630, !tbaa !1390
  %14 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %13, %struct.redisObject* %11) #6, !dbg !1631
  %15 = icmp eq %struct.redisObject* %14, null, !dbg !1633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1634
  br i1 %15, label %24, label %16, !dbg !1634

; <label>:16:                                     ; preds = %7
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %14, i64 0, i32 0, !dbg !1635
  %18 = load i32, i32* %17, align 8, !dbg !1635
  %19 = and i32 %18, 15, !dbg !1635
  %20 = icmp eq i32 %19, 4, !dbg !1636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1637
  br i1 %20, label %21, label %22, !dbg !1637

; <label>:21:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1641
  br label %28, !dbg !1641

; <label>:22:                                     ; preds = %16
  %23 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !1642, !tbaa !1411
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %23) #6, !dbg !1643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1641
  br label %87, !dbg !1641

; <label>:24:                                     ; preds = %7
  %25 = tail call %struct.redisObject* @createHashObject() #6, !dbg !1645
  %26 = load %struct.redisDb*, %struct.redisDb** %12, align 8, !dbg !1646, !tbaa !1390
  tail call void @dbAdd(%struct.redisDb* %26, %struct.redisObject* %11, %struct.redisObject* %25) #6, !dbg !1647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1639
  %27 = icmp eq %struct.redisObject* %25, null, !dbg !1649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1641
  br i1 %27, label %87, label %28, !dbg !1641

; <label>:28:                                     ; preds = %21, %24
  %29 = phi %struct.redisObject* [ %14, %21 ], [ %25, %24 ]
  %30 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1650, !tbaa !1543
  %31 = load i32, i32* %2, align 8, !dbg !1651, !tbaa !1617
  %32 = add nsw i32 %31, -1, !dbg !1652
  tail call void @hashTypeTryConversion(%struct.redisObject* nonnull %29, %struct.redisObject** %30, i32 2, i32 %32) #8, !dbg !1653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1655
  %33 = load i32, i32* %2, align 8, !dbg !1657, !tbaa !1617
  %34 = icmp sgt i32 %33, 2, !dbg !1659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1660
  %35 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1661, !tbaa !1543
  br i1 %34, label %36, label %60, !dbg !1660

; <label>:36:                                     ; preds = %28, %36
  %37 = phi i64 [ %53, %36 ], [ 2, %28 ]
  %38 = phi %struct.redisObject** [ %57, %36 ], [ %35, %28 ]
  %39 = phi i32 [ %52, %36 ], [ 0, %28 ]
  %40 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %38, i64 %37, !dbg !1662
  %41 = load %struct.redisObject*, %struct.redisObject** %40, align 8, !dbg !1662, !tbaa !162
  %42 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %41, i64 0, i32 2, !dbg !1663
  %43 = load i8*, i8** %42, align 8, !dbg !1663, !tbaa !168
  %44 = or i64 %37, 1, !dbg !1664
  %45 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %38, i64 %44, !dbg !1665
  %46 = load %struct.redisObject*, %struct.redisObject** %45, align 8, !dbg !1665, !tbaa !162
  %47 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %46, i64 0, i32 2, !dbg !1666
  %48 = load i8*, i8** %47, align 8, !dbg !1666, !tbaa !168
  %49 = tail call i32 @hashTypeSet(%struct.redisObject* nonnull %29, i8* %43, i8* %48, i32 0) #8, !dbg !1667
  %50 = icmp eq i32 %49, 0, !dbg !1668
  %51 = zext i1 %50 to i32, !dbg !1668
  %52 = add nuw nsw i32 %39, %51, !dbg !1669
  %53 = add nuw i64 %37, 2, !dbg !1670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1671
  %54 = load i32, i32* %2, align 8, !dbg !1657, !tbaa !1617
  %55 = trunc i64 %53 to i32, !dbg !1659
  %56 = icmp sgt i32 %54, %55, !dbg !1659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1660
  %57 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1661, !tbaa !1543
  br i1 %56, label %36, label %58, !dbg !1660, !llvm.loop !1672

; <label>:58:                                     ; preds = %36
  %59 = zext i32 %52 to i64, !dbg !1674
  br label %60, !dbg !1674

; <label>:60:                                     ; preds = %58, %28
  %61 = phi i64 [ 0, %28 ], [ %59, %58 ]
  %62 = phi %struct.redisObject** [ %35, %28 ], [ %57, %58 ], !dbg !1661
  %63 = load %struct.redisObject*, %struct.redisObject** %62, align 8, !dbg !1674, !tbaa !162
  %64 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %63, i64 0, i32 2, !dbg !1675
  %65 = load i8*, i8** %64, align 8, !dbg !1675, !tbaa !168
  %66 = getelementptr inbounds i8, i8* %65, i64 1, !dbg !1677
  %67 = load i8, i8* %66, align 1, !dbg !1677, !tbaa !184
  %68 = icmp eq i8 %67, 115, !dbg !1679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1680
  br i1 %68, label %71, label %69, !dbg !1680

; <label>:69:                                     ; preds = %60
  %70 = icmp eq i8 %67, 83, !dbg !1681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1682
  br i1 %70, label %71, label %72, !dbg !1682

; <label>:71:                                     ; preds = %69, %60
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %61) #6, !dbg !1683
  br label %74, !dbg !1685

; <label>:72:                                     ; preds = %69
  %73 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1686, !tbaa !1688
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %73) #6, !dbg !1689
  br label %74

; <label>:74:                                     ; preds = %72, %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %75 = load %struct.redisDb*, %struct.redisDb** %12, align 8, !dbg !1690, !tbaa !1390
  %76 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1691, !tbaa !1543
  %77 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %76, i64 1, !dbg !1692
  %78 = load %struct.redisObject*, %struct.redisObject** %77, align 8, !dbg !1692, !tbaa !162
  tail call void @signalModifiedKey(%struct.redisDb* %75, %struct.redisObject* %78) #6, !dbg !1693
  %79 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !1694, !tbaa !1543
  %80 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %79, i64 1, !dbg !1695
  %81 = load %struct.redisObject*, %struct.redisObject** %80, align 8, !dbg !1695, !tbaa !162
  %82 = load %struct.redisDb*, %struct.redisDb** %12, align 8, !dbg !1696, !tbaa !1390
  %83 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %82, i64 0, i32 5, !dbg !1697
  %84 = load i32, i32* %83, align 8, !dbg !1697, !tbaa !1599
  tail call void @notifyKeyspaceEvent(i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %struct.redisObject* %81, i32 %84) #6, !dbg !1698
  %85 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1699, !tbaa !1603
  %86 = add nsw i64 %85, 1, !dbg !1699
  store i64 %86, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1699, !tbaa !1603
  br label %87, !dbg !1700

; <label>:87:                                     ; preds = %24, %22, %74, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1700
  ret void, !dbg !1700
}

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hincrbyCommand(%struct.client*) local_unnamed_addr #0 !dbg !1702 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = bitcast i64* %2 to i8*, !dbg !1713
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1713
  %7 = bitcast i64* %3 to i8*, !dbg !1713
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !1713
  %8 = bitcast i8** %4 to i8*, !dbg !1714
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !1714
  %9 = bitcast i32* %5 to i8*, !dbg !1715
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #5, !dbg !1715
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1716
  %11 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1716, !tbaa !1543
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 3, !dbg !1718
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !1718, !tbaa !162
  %14 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %13, i64* nonnull %3, i8* null) #6, !dbg !1720
  %15 = icmp eq i32 %14, 0, !dbg !1721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1722
  br i1 %15, label %16, label %93, !dbg !1722

; <label>:16:                                     ; preds = %1
  %17 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1723, !tbaa !1543
  %18 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %17, i64 1, !dbg !1725
  %19 = load %struct.redisObject*, %struct.redisObject** %18, align 8, !dbg !1725, !tbaa !162
  %20 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1729
  %21 = load %struct.redisDb*, %struct.redisDb** %20, align 8, !dbg !1729, !tbaa !1390
  %22 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %21, %struct.redisObject* %19) #6, !dbg !1730
  %23 = icmp eq %struct.redisObject* %22, null, !dbg !1732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1733
  br i1 %23, label %32, label %24, !dbg !1733

; <label>:24:                                     ; preds = %16
  %25 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %22, i64 0, i32 0, !dbg !1734
  %26 = load i32, i32* %25, align 8, !dbg !1734
  %27 = and i32 %26, 15, !dbg !1734
  %28 = icmp eq i32 %27, 4, !dbg !1735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1736
  br i1 %28, label %29, label %30, !dbg !1736

; <label>:29:                                     ; preds = %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1740
  br label %36, !dbg !1740

; <label>:30:                                     ; preds = %24
  %31 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !1741, !tbaa !1411
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %31) #6, !dbg !1742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1740
  br label %93, !dbg !1740

; <label>:32:                                     ; preds = %16
  %33 = call %struct.redisObject* @createHashObject() #6, !dbg !1744
  %34 = load %struct.redisDb*, %struct.redisDb** %20, align 8, !dbg !1745, !tbaa !1390
  call void @dbAdd(%struct.redisDb* %34, %struct.redisObject* %19, %struct.redisObject* %33) #6, !dbg !1746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1738
  %35 = icmp eq %struct.redisObject* %33, null, !dbg !1748
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1740
  br i1 %35, label %93, label %36, !dbg !1740

; <label>:36:                                     ; preds = %29, %32
  %37 = phi %struct.redisObject* [ %22, %29 ], [ %33, %32 ]
  %38 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1749, !tbaa !1543
  %39 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %38, i64 2, !dbg !1751
  %40 = load %struct.redisObject*, %struct.redisObject** %39, align 8, !dbg !1751, !tbaa !162
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %40, i64 0, i32 2, !dbg !1752
  %42 = load i8*, i8** %41, align 8, !dbg !1752, !tbaa !168
  %43 = call i32 @hashTypeGetValue(%struct.redisObject* nonnull %37, i8* %42, i8** nonnull %4, i32* nonnull %5, i64* nonnull %2) #8, !dbg !1756
  %44 = icmp eq i32 %43, 0, !dbg !1757
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1758
  br i1 %44, label %45, label %54, !dbg !1758

; <label>:45:                                     ; preds = %36
  %46 = load i8*, i8** %4, align 8, !dbg !1759, !tbaa !162
  %47 = icmp eq i8* %46, null, !dbg !1759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1762
  br i1 %47, label %55, label %48, !dbg !1762

; <label>:48:                                     ; preds = %45
  %49 = load i32, i32* %5, align 4, !dbg !1763, !tbaa !200
  %50 = zext i32 %49 to i64, !dbg !1763
  %51 = call i32 @string2ll(i8* nonnull %46, i64 %50, i64* nonnull %2) #6, !dbg !1766
  %52 = icmp eq i32 %51, 0, !dbg !1767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1768
  br i1 %52, label %53, label %55, !dbg !1768

; <label>:53:                                     ; preds = %48
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !1769
  br label %93, !dbg !1771

; <label>:54:                                     ; preds = %36
  store i64 0, i64* %2, align 8, !dbg !1772, !tbaa !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %55

; <label>:55:                                     ; preds = %45, %48, %54
  %56 = load i64, i64* %2, align 8, !dbg !1774, !tbaa !451
  %57 = load i64, i64* %3, align 8, !dbg !1776, !tbaa !451
  %58 = and i64 %57, %56, !dbg !1778
  %59 = icmp slt i64 %58, 0, !dbg !1778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1778
  br i1 %59, label %60, label %63, !dbg !1778

; <label>:60:                                     ; preds = %55
  %61 = sub nsw i64 -9223372036854775808, %56, !dbg !1779
  %62 = icmp slt i64 %57, %61, !dbg !1780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1781
  br i1 %62, label %70, label %63, !dbg !1781

; <label>:63:                                     ; preds = %60, %55
  %64 = icmp sgt i64 %57, 0, !dbg !1782
  %65 = icmp sgt i64 %56, 0, !dbg !1783
  %66 = and i1 %65, %64, !dbg !1784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1784
  br i1 %66, label %67, label %71, !dbg !1784

; <label>:67:                                     ; preds = %63
  %68 = sub nsw i64 9223372036854775807, %56, !dbg !1785
  %69 = icmp sgt i64 %57, %68, !dbg !1786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1787
  br i1 %69, label %70, label %71, !dbg !1787

; <label>:70:                                     ; preds = %67, %60
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !1788
  br label %93, !dbg !1790

; <label>:71:                                     ; preds = %67, %63
  %72 = add nsw i64 %57, %56, !dbg !1791
  store i64 %72, i64* %2, align 8, !dbg !1791, !tbaa !451
  %73 = call i8* @sdsfromlonglong(i64 %72) #6, !dbg !1792
  %74 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1794, !tbaa !1543
  %75 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %74, i64 2, !dbg !1795
  %76 = load %struct.redisObject*, %struct.redisObject** %75, align 8, !dbg !1795, !tbaa !162
  %77 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %76, i64 0, i32 2, !dbg !1796
  %78 = load i8*, i8** %77, align 8, !dbg !1796, !tbaa !168
  %79 = call i32 @hashTypeSet(%struct.redisObject* nonnull %37, i8* %78, i8* %73, i32 2) #8, !dbg !1797
  %80 = load i64, i64* %2, align 8, !dbg !1798, !tbaa !451
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %80) #6, !dbg !1799
  %81 = load %struct.redisDb*, %struct.redisDb** %20, align 8, !dbg !1800, !tbaa !1390
  %82 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1801, !tbaa !1543
  %83 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %82, i64 1, !dbg !1802
  %84 = load %struct.redisObject*, %struct.redisObject** %83, align 8, !dbg !1802, !tbaa !162
  call void @signalModifiedKey(%struct.redisDb* %81, %struct.redisObject* %84) #6, !dbg !1803
  %85 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1804, !tbaa !1543
  %86 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %85, i64 1, !dbg !1805
  %87 = load %struct.redisObject*, %struct.redisObject** %86, align 8, !dbg !1805, !tbaa !162
  %88 = load %struct.redisDb*, %struct.redisDb** %20, align 8, !dbg !1806, !tbaa !1390
  %89 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %88, i64 0, i32 5, !dbg !1807
  %90 = load i32, i32* %89, align 8, !dbg !1807, !tbaa !1599
  call void @notifyKeyspaceEvent(i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), %struct.redisObject* %87, i32 %90) #6, !dbg !1808
  %91 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1809, !tbaa !1603
  %92 = add nsw i64 %91, 1, !dbg !1809
  store i64 %92, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1809, !tbaa !1603
  br label %93, !dbg !1810

; <label>:93:                                     ; preds = %32, %30, %1, %71, %70, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1811
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #5, !dbg !1810
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !1810
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !1810
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1810
  ret void, !dbg !1810
}

; Function Attrs: noredzone
declare dso_local i32 @getLongLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @string2ll(i8*, i64, i64*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hincrbyfloatCommand(%struct.client*) local_unnamed_addr #0 !dbg !1812 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [5120 x i8], align 16
  %8 = bitcast x86_fp80* %2 to i8*, !dbg !1830
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #5, !dbg !1830
  %9 = bitcast x86_fp80* %3 to i8*, !dbg !1830
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #5, !dbg !1830
  %10 = bitcast i64* %4 to i8*, !dbg !1831
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #5, !dbg !1831
  %11 = bitcast i8** %5 to i8*, !dbg !1832
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #5, !dbg !1832
  %12 = bitcast i32* %6 to i8*, !dbg !1833
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5, !dbg !1833
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1834
  %14 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !1834, !tbaa !1543
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 3, !dbg !1836
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !1836, !tbaa !162
  %17 = call i32 @getLongDoubleFromObjectOrReply(%struct.client* %0, %struct.redisObject* %16, x86_fp80* nonnull %3, i8* null) #6, !dbg !1838
  %18 = icmp eq i32 %17, 0, !dbg !1839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1840
  br i1 %18, label %19, label %102, !dbg !1840

; <label>:19:                                     ; preds = %1
  %20 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !1841, !tbaa !1543
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 1, !dbg !1843
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !1843, !tbaa !162
  %23 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1847
  %24 = load %struct.redisDb*, %struct.redisDb** %23, align 8, !dbg !1847, !tbaa !1390
  %25 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %24, %struct.redisObject* %22) #6, !dbg !1848
  %26 = icmp eq %struct.redisObject* %25, null, !dbg !1850
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1851
  br i1 %26, label %35, label %27, !dbg !1851

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %25, i64 0, i32 0, !dbg !1852
  %29 = load i32, i32* %28, align 8, !dbg !1852
  %30 = and i32 %29, 15, !dbg !1852
  %31 = icmp eq i32 %30, 4, !dbg !1853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1854
  br i1 %31, label %32, label %33, !dbg !1854

; <label>:32:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1858
  br label %39, !dbg !1858

; <label>:33:                                     ; preds = %27
  %34 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !1859, !tbaa !1411
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %34) #6, !dbg !1860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1858
  br label %102, !dbg !1858

; <label>:35:                                     ; preds = %19
  %36 = call %struct.redisObject* @createHashObject() #6, !dbg !1862
  %37 = load %struct.redisDb*, %struct.redisDb** %23, align 8, !dbg !1863, !tbaa !1390
  call void @dbAdd(%struct.redisDb* %37, %struct.redisObject* %22, %struct.redisObject* %36) #6, !dbg !1864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1856
  %38 = icmp eq %struct.redisObject* %36, null, !dbg !1866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1858
  br i1 %38, label %102, label %39, !dbg !1858

; <label>:39:                                     ; preds = %32, %35
  %40 = phi %struct.redisObject* [ %25, %32 ], [ %36, %35 ]
  %41 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !1867, !tbaa !1543
  %42 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %41, i64 2, !dbg !1869
  %43 = load %struct.redisObject*, %struct.redisObject** %42, align 8, !dbg !1869, !tbaa !162
  %44 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %43, i64 0, i32 2, !dbg !1870
  %45 = load i8*, i8** %44, align 8, !dbg !1870, !tbaa !168
  %46 = call i32 @hashTypeGetValue(%struct.redisObject* nonnull %40, i8* %45, i8** nonnull %5, i32* nonnull %6, i64* nonnull %4) #8, !dbg !1874
  %47 = icmp eq i32 %46, 0, !dbg !1875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1876
  br i1 %47, label %48, label %62, !dbg !1876

; <label>:48:                                     ; preds = %39
  %49 = load i8*, i8** %5, align 8, !dbg !1877, !tbaa !162
  %50 = icmp eq i8* %49, null, !dbg !1877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1880
  br i1 %50, label %59, label %51, !dbg !1880

; <label>:51:                                     ; preds = %48
  %52 = load i32, i32* %6, align 4, !dbg !1881, !tbaa !200
  %53 = zext i32 %52 to i64, !dbg !1881
  %54 = call i32 @string2ld(i8* nonnull %49, i64 %53, x86_fp80* nonnull %2) #6, !dbg !1885
  %55 = icmp eq i32 %54, 0, !dbg !1886
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1887
  br i1 %55, label %58, label %56, !dbg !1887

; <label>:56:                                     ; preds = %51
  %57 = load x86_fp80, x86_fp80* %2, align 16, !dbg !1888, !tbaa !1889
  br label %63, !dbg !1887

; <label>:58:                                     ; preds = %51
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !1891
  br label %102, !dbg !1893

; <label>:59:                                     ; preds = %48
  %60 = load i64, i64* %4, align 8, !dbg !1894, !tbaa !451
  %61 = sitofp i64 %60 to x86_fp80, !dbg !1896
  store x86_fp80 %61, x86_fp80* %2, align 16, !dbg !1897, !tbaa !1889
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %63

; <label>:62:                                     ; preds = %39
  store x86_fp80 0xK00000000000000000000, x86_fp80* %2, align 16, !dbg !1898, !tbaa !1889
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %63

; <label>:63:                                     ; preds = %56, %59, %62
  %64 = phi x86_fp80 [ %57, %56 ], [ %61, %59 ], [ 0xK00000000000000000000, %62 ], !dbg !1888
  %65 = load x86_fp80, x86_fp80* %3, align 16, !dbg !1900, !tbaa !1889
  %66 = fadd x86_fp80 %65, %64, !dbg !1888
  store x86_fp80 %66, x86_fp80* %2, align 16, !dbg !1888, !tbaa !1889
  %67 = fptrunc x86_fp80 %66 to double, !dbg !1901
  %68 = call i32 @__fpclassifyd(double %67) #6, !dbg !1901
  %69 = icmp eq i32 %68, 0, !dbg !1901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1903
  br i1 %69, label %75, label %70, !dbg !1903

; <label>:70:                                     ; preds = %63
  %71 = load x86_fp80, x86_fp80* %2, align 16, !dbg !1904, !tbaa !1889
  %72 = fptrunc x86_fp80 %71 to double, !dbg !1904
  %73 = call i32 @__fpclassifyd(double %72) #6, !dbg !1904
  %74 = icmp eq i32 %73, 1, !dbg !1904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1905
  br i1 %74, label %75, label %76, !dbg !1905

; <label>:75:                                     ; preds = %70, %63
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !1906
  br label %102, !dbg !1908

; <label>:76:                                     ; preds = %70
  %77 = getelementptr inbounds [5120 x i8], [5120 x i8]* %7, i64 0, i64 0, !dbg !1909
  call void @llvm.lifetime.start.p0i8(i64 5120, i8* nonnull %77) #5, !dbg !1909
  %78 = load x86_fp80, x86_fp80* %2, align 16, !dbg !1911, !tbaa !1889
  %79 = call i32 @ld2string(i8* nonnull %77, i64 5120, x86_fp80 %78, i32 1) #6, !dbg !1912
  %80 = sext i32 %79 to i64, !dbg !1914
  %81 = call i8* @sdsnewlen(i8* nonnull %77, i64 %80) #6, !dbg !1915
  %82 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !1917, !tbaa !1543
  %83 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %82, i64 2, !dbg !1918
  %84 = load %struct.redisObject*, %struct.redisObject** %83, align 8, !dbg !1918, !tbaa !162
  %85 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %84, i64 0, i32 2, !dbg !1919
  %86 = load i8*, i8** %85, align 8, !dbg !1919, !tbaa !168
  %87 = call i32 @hashTypeSet(%struct.redisObject* nonnull %40, i8* %86, i8* %81, i32 2) #8, !dbg !1920
  call void @addReplyBulkCBuffer(%struct.client* nonnull %0, i8* nonnull %77, i64 %80) #6, !dbg !1921
  %88 = load %struct.redisDb*, %struct.redisDb** %23, align 8, !dbg !1922, !tbaa !1390
  %89 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !1923, !tbaa !1543
  %90 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %89, i64 1, !dbg !1924
  %91 = load %struct.redisObject*, %struct.redisObject** %90, align 8, !dbg !1924, !tbaa !162
  call void @signalModifiedKey(%struct.redisDb* %88, %struct.redisObject* %91) #6, !dbg !1925
  %92 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !1926, !tbaa !1543
  %93 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %92, i64 1, !dbg !1927
  %94 = load %struct.redisObject*, %struct.redisObject** %93, align 8, !dbg !1927, !tbaa !162
  %95 = load %struct.redisDb*, %struct.redisDb** %23, align 8, !dbg !1928, !tbaa !1390
  %96 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %95, i64 0, i32 5, !dbg !1929
  %97 = load i32, i32* %96, align 8, !dbg !1929, !tbaa !1599
  call void @notifyKeyspaceEvent(i32 64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), %struct.redisObject* %94, i32 %97) #6, !dbg !1930
  %98 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1931, !tbaa !1603
  %99 = add nsw i64 %98, 1, !dbg !1931
  store i64 %99, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1931, !tbaa !1603
  %100 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i64 4) #6, !dbg !1932
  %101 = call %struct.redisObject* @createRawStringObject(i8* nonnull %77, i64 %80) #6, !dbg !1934
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 0, %struct.redisObject* %100) #6, !dbg !1936
  call void @decrRefCount(%struct.redisObject* %100) #6, !dbg !1937
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 3, %struct.redisObject* %101) #6, !dbg !1938
  call void @decrRefCount(%struct.redisObject* %101) #6, !dbg !1939
  call void @llvm.lifetime.end.p0i8(i64 5120, i8* nonnull %77) #5, !dbg !1940
  br label %102, !dbg !1940

; <label>:102:                                    ; preds = %35, %33, %1, %76, %75, %58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1941
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5, !dbg !1940
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5, !dbg !1940
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #5, !dbg !1940
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #5, !dbg !1940
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #5, !dbg !1940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1940
  ret void, !dbg !1940
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
define dso_local void @hgetCommand(%struct.client*) local_unnamed_addr #0 !dbg !1942 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1947
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1947, !tbaa !1543
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !1949
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !1949, !tbaa !162
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1950, !tbaa !1951
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #6, !dbg !1952
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !1954
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1955
  br i1 %8, label %18, label %9, !dbg !1955

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 4) #6, !dbg !1956
  %11 = icmp eq i32 %10, 0, !dbg !1956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1957
  br i1 %11, label %12, label %18, !dbg !1957

; <label>:12:                                     ; preds = %9
  %13 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1958, !tbaa !1543
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 2, !dbg !1959
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !1959, !tbaa !162
  %16 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %15, i64 0, i32 2, !dbg !1960
  %17 = load i8*, i8** %16, align 8, !dbg !1960, !tbaa !168
  tail call fastcc void @addHashFieldToReply(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i8* %17) #8, !dbg !1961
  br label %18, !dbg !1962

; <label>:18:                                     ; preds = %1, %9, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1962
  ret void, !dbg !1962
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyReadOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @checkType(%struct.client*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @addHashFieldToReply(%struct.client*, %struct.redisObject* readonly, i8*) unnamed_addr #0 !dbg !1964 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = icmp eq %struct.redisObject* %1, null, !dbg !1983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1985
  br i1 %7, label %8, label %10, !dbg !1985

; <label>:8:                                      ; preds = %3
  %9 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1986, !tbaa !1951
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %9) #6, !dbg !1988
  br label %82, !dbg !1989

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !1990
  %12 = load i32, i32* %11, align 8, !dbg !1990
  %13 = lshr i32 %12, 4, !dbg !1990
  %14 = and i32 %13, 15, !dbg !1990
  %15 = icmp eq i32 %14, 5, !dbg !1991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1992
  br i1 %15, label %16, label %33, !dbg !1992

; <label>:16:                                     ; preds = %10
  %17 = bitcast i8** %4 to i8*, !dbg !1993
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #5, !dbg !1993
  store i8* null, i8** %4, align 8, !dbg !1994, !tbaa !162
  %18 = bitcast i32* %5 to i8*, !dbg !1995
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #5, !dbg !1995
  store i32 -1, i32* %5, align 4, !dbg !1996, !tbaa !200
  %19 = bitcast i64* %6 to i8*, !dbg !1997
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #5, !dbg !1997
  store i64 9223372036854775807, i64* %6, align 8, !dbg !1998, !tbaa !451
  %20 = call i32 @hashTypeGetFromZiplist(%struct.redisObject* nonnull %1, i8* %2, i8** nonnull %4, i32* nonnull %5, i64* nonnull %6) #8, !dbg !1999
  %21 = icmp slt i32 %20, 0, !dbg !2001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2003
  br i1 %21, label %22, label %24, !dbg !2003

; <label>:22:                                     ; preds = %16
  %23 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !2004, !tbaa !1951
  call void @addReply(%struct.client* %0, %struct.redisObject* %23) #6, !dbg !2006
  br label %32, !dbg !2007

; <label>:24:                                     ; preds = %16
  %25 = load i8*, i8** %4, align 8, !dbg !2008, !tbaa !162
  %26 = icmp eq i8* %25, null, !dbg !2008
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2011
  br i1 %26, label %30, label %27, !dbg !2011

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %5, align 4, !dbg !2012, !tbaa !200
  %29 = zext i32 %28 to i64, !dbg !2012
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* nonnull %25, i64 %29) #6, !dbg !2014
  br label %32, !dbg !2015

; <label>:30:                                     ; preds = %24
  %31 = load i64, i64* %6, align 8, !dbg !2016, !tbaa !451
  call void @addReplyBulkLongLong(%struct.client* %0, i64 %31) #6, !dbg !2018
  br label %32

; <label>:32:                                     ; preds = %27, %30, %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #5, !dbg !2019
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #5, !dbg !2019
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #5, !dbg !2019
  br label %81, !dbg !2020

; <label>:33:                                     ; preds = %10
  %34 = icmp eq i32 %14, 2, !dbg !2021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2022
  br i1 %34, label %35, label %80, !dbg !2022

; <label>:35:                                     ; preds = %33
  %36 = and i32 %12, 240, !dbg !2026
  %37 = icmp eq i32 %36, 32, !dbg !2026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2026
  br i1 %37, label %39, label %38, !dbg !2026

; <label>:38:                                     ; preds = %35
  tail call void @_serverAssert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 93) #6, !dbg !2026
  tail call void @_exit(i32 1) #7, !dbg !2026
  unreachable

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2027
  %41 = bitcast i8** %40 to %struct.dict**, !dbg !2027
  %42 = load %struct.dict*, %struct.dict** %41, align 8, !dbg !2027, !tbaa !168
  %43 = tail call %struct.dictEntry* @dictFind(%struct.dict* %42, i8* %2) #6, !dbg !2028
  %44 = icmp eq %struct.dictEntry* %43, null, !dbg !2030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2031
  br i1 %44, label %45, label %46, !dbg !2031

; <label>:45:                                     ; preds = %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2033
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2035
  br label %50, !dbg !2035

; <label>:46:                                     ; preds = %39
  %47 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %43, i64 0, i32 1, i32 0, !dbg !2036
  %48 = load i8*, i8** %47, align 8, !dbg !2036, !tbaa !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2033
  %49 = icmp eq i8* %48, null, !dbg !2038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2035
  br i1 %49, label %50, label %52, !dbg !2035

; <label>:50:                                     ; preds = %45, %46
  %51 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !2040, !tbaa !1951
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %51) #6, !dbg !2041
  br label %79, !dbg !2041

; <label>:52:                                     ; preds = %46
  %53 = getelementptr inbounds i8, i8* %48, i64 -1, !dbg !2044
  %54 = load i8, i8* %53, align 1, !dbg !2044, !tbaa !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2046
  %55 = trunc i8 %54 to i3, !dbg !2046
  switch i3 %55, label %77 [
    i3 0, label %56
    i3 1, label %59
    i3 2, label %63
    i3 3, label %68
    i3 -4, label %73
  ], !dbg !2046

; <label>:56:                                     ; preds = %52
  %57 = lshr i8 %54, 3, !dbg !2047
  %58 = zext i8 %57 to i64, !dbg !2047
  br label %77, !dbg !2048

; <label>:59:                                     ; preds = %52
  %60 = getelementptr inbounds i8, i8* %48, i64 -3, !dbg !2049
  %61 = load i8, i8* %60, align 1, !dbg !2050, !tbaa !184
  %62 = zext i8 %61 to i64, !dbg !2049
  br label %77, !dbg !2051

; <label>:63:                                     ; preds = %52
  %64 = getelementptr inbounds i8, i8* %48, i64 -5, !dbg !2052
  %65 = bitcast i8* %64 to i16*, !dbg !2053
  %66 = load i16, i16* %65, align 1, !dbg !2053, !tbaa !195
  %67 = zext i16 %66 to i64, !dbg !2052
  br label %77, !dbg !2054

; <label>:68:                                     ; preds = %52
  %69 = getelementptr inbounds i8, i8* %48, i64 -9, !dbg !2055
  %70 = bitcast i8* %69 to i32*, !dbg !2056
  %71 = load i32, i32* %70, align 1, !dbg !2056, !tbaa !200
  %72 = zext i32 %71 to i64, !dbg !2055
  br label %77, !dbg !2057

; <label>:73:                                     ; preds = %52
  %74 = getelementptr inbounds i8, i8* %48, i64 -17, !dbg !2058
  %75 = bitcast i8* %74 to i64*, !dbg !2059
  %76 = load i64, i64* %75, align 1, !dbg !2059, !tbaa !204
  br label %77, !dbg !2060

; <label>:77:                                     ; preds = %52, %56, %59, %63, %68, %73
  %78 = phi i64 [ %76, %73 ], [ %72, %68 ], [ %67, %63 ], [ %62, %59 ], [ %58, %56 ], [ 0, %52 ], !dbg !2061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2063
  tail call void @addReplyBulkCBuffer(%struct.client* %0, i8* nonnull %48, i64 %78) #6, !dbg !2064
  br label %79

; <label>:79:                                     ; preds = %77, %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %81

; <label>:80:                                     ; preds = %33
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 675, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2065
  tail call void @_exit(i32 1) #7, !dbg !2065
  unreachable

; <label>:81:                                     ; preds = %79, %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %82, !dbg !2067

; <label>:82:                                     ; preds = %81, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2067
  ret void, !dbg !2067
}

; Function Attrs: noredzone nounwind
define dso_local void @hmgetCommand(%struct.client*) local_unnamed_addr #0 !dbg !2069 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2075
  %3 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !2075, !tbaa !1390
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2076
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !2076, !tbaa !1543
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !2077
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !2077, !tbaa !162
  %8 = tail call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %3, %struct.redisObject* %7) #6, !dbg !2078
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !2080
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2082
  br i1 %9, label %17, label %10, !dbg !2082

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 0, !dbg !2083
  %12 = load i32, i32* %11, align 8, !dbg !2083
  %13 = and i32 %12, 15, !dbg !2083
  %14 = icmp eq i32 %13, 4, !dbg !2084
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2085
  br i1 %14, label %17, label %15, !dbg !2085

; <label>:15:                                     ; preds = %10
  %16 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !2086, !tbaa !1411
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %16) #6, !dbg !2088
  br label %35, !dbg !2089

; <label>:17:                                     ; preds = %10, %1
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2090
  %19 = load i32, i32* %18, align 8, !dbg !2090, !tbaa !1617
  %20 = add nsw i32 %19, -2, !dbg !2091
  %21 = sext i32 %20 to i64, !dbg !2092
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %21) #6, !dbg !2093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2095
  %22 = load i32, i32* %18, align 8, !dbg !2097, !tbaa !1617
  %23 = icmp sgt i32 %22, 2, !dbg !2099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2100
  br i1 %23, label %24, label %35, !dbg !2100

; <label>:24:                                     ; preds = %17, %24
  %25 = phi i64 [ %31, %24 ], [ 2, %17 ]
  %26 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !2101, !tbaa !1543
  %27 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 %25, !dbg !2103
  %28 = load %struct.redisObject*, %struct.redisObject** %27, align 8, !dbg !2103, !tbaa !162
  %29 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %28, i64 0, i32 2, !dbg !2104
  %30 = load i8*, i8** %29, align 8, !dbg !2104, !tbaa !168
  tail call fastcc void @addHashFieldToReply(%struct.client* nonnull %0, %struct.redisObject* %8, i8* %30) #8, !dbg !2105
  %31 = add nuw nsw i64 %25, 1, !dbg !2106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2107
  %32 = load i32, i32* %18, align 8, !dbg !2097, !tbaa !1617
  %33 = sext i32 %32 to i64, !dbg !2099
  %34 = icmp slt i64 %31, %33, !dbg !2099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2100
  br i1 %34, label %24, label %35, !dbg !2100, !llvm.loop !2108

; <label>:35:                                     ; preds = %24, %17, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2111
  ret void, !dbg !2111
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyRead(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hdelCommand(%struct.client*) local_unnamed_addr #0 !dbg !2112 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2122
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2122, !tbaa !1543
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !2124
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !2124, !tbaa !162
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !2125, !tbaa !1578
  %7 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #6, !dbg !2126
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !2128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2129
  br i1 %8, label %99, label %9, !dbg !2129

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 4) #6, !dbg !2130
  %11 = icmp eq i32 %10, 0, !dbg !2130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2131
  br i1 %11, label %12, label %99, !dbg !2131

; <label>:12:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2133
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2135
  %14 = load i32, i32* %13, align 8, !dbg !2135, !tbaa !1617
  %15 = icmp sgt i32 %14, 2, !dbg !2137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2138
  br i1 %15, label %16, label %95, !dbg !2138

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 0
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2
  %19 = bitcast i8** %18 to %struct.dict**
  br label %20, !dbg !2138

; <label>:20:                                     ; preds = %16, %61
  %21 = phi i64 [ 2, %16 ], [ %63, %61 ]
  %22 = phi i32 [ 0, %16 ], [ %62, %61 ]
  %23 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2139, !tbaa !1543
  %24 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %23, i64 %21, !dbg !2142
  %25 = load %struct.redisObject*, %struct.redisObject** %24, align 8, !dbg !2142, !tbaa !162
  %26 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %25, i64 0, i32 2, !dbg !2143
  %27 = load i8*, i8** %26, align 8, !dbg !2143, !tbaa !168
  %28 = tail call i32 @hashTypeDelete(%struct.redisObject* nonnull %7, i8* %27) #8, !dbg !2144
  %29 = icmp eq i32 %28, 0, !dbg !2144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2145
  br i1 %29, label %61, label %30, !dbg !2145

; <label>:30:                                     ; preds = %20
  %31 = add nsw i32 %22, 1, !dbg !2146
  %32 = load i32, i32* %17, align 8, !dbg !2152
  %33 = lshr i32 %32, 4, !dbg !2152
  %34 = and i32 %33, 15, !dbg !2152
  %35 = icmp eq i32 %34, 5, !dbg !2153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2154
  br i1 %35, label %36, label %41, !dbg !2154

; <label>:36:                                     ; preds = %30
  %37 = load i8*, i8** %18, align 8, !dbg !2155, !tbaa !168
  %38 = tail call i32 @ziplistLen(i8* %37) #6, !dbg !2156
  %39 = lshr i32 %38, 1, !dbg !2157
  %40 = zext i32 %39 to i64, !dbg !2156
  br label %51, !dbg !2158

; <label>:41:                                     ; preds = %30
  %42 = icmp eq i32 %34, 2, !dbg !2159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2160
  br i1 %42, label %43, label %50, !dbg !2160

; <label>:43:                                     ; preds = %41
  %44 = load %struct.dict*, %struct.dict** %19, align 8, !dbg !2161, !tbaa !168
  %45 = getelementptr inbounds %struct.dict, %struct.dict* %44, i64 0, i32 2, i64 0, i32 3, !dbg !2161
  %46 = load i64, i64* %45, align 8, !dbg !2161, !tbaa !769
  %47 = getelementptr inbounds %struct.dict, %struct.dict* %44, i64 0, i32 2, i64 1, i32 3, !dbg !2161
  %48 = load i64, i64* %47, align 8, !dbg !2161, !tbaa !769
  %49 = add i64 %48, %46, !dbg !2161
  br label %51

; <label>:50:                                     ; preds = %41
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 319, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2162
  tail call void @_exit(i32 1) #7, !dbg !2162
  unreachable

; <label>:51:                                     ; preds = %36, %43
  %52 = phi i64 [ %40, %36 ], [ %49, %43 ], !dbg !2163
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2164
  %53 = icmp eq i64 %52, 0, !dbg !2165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2166
  br i1 %53, label %54, label %61, !dbg !2166

; <label>:54:                                     ; preds = %51
  %55 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2167
  %56 = load %struct.redisDb*, %struct.redisDb** %55, align 8, !dbg !2167, !tbaa !1390
  %57 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2169, !tbaa !1543
  %58 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %57, i64 1, !dbg !2170
  %59 = load %struct.redisObject*, %struct.redisObject** %58, align 8, !dbg !2170, !tbaa !162
  %60 = tail call i32 @dbDelete(%struct.redisDb* %56, %struct.redisObject* %59) #6, !dbg !2171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2172
  br label %67, !dbg !2172

; <label>:61:                                     ; preds = %20, %51
  %62 = phi i32 [ %31, %51 ], [ %22, %20 ], !dbg !2173
  %63 = add nuw nsw i64 %21, 1, !dbg !2174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2175
  %64 = load i32, i32* %13, align 8, !dbg !2135, !tbaa !1617
  %65 = sext i32 %64 to i64, !dbg !2137
  %66 = icmp slt i64 %63, %65, !dbg !2137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2138
  br i1 %66, label %20, label %67, !dbg !2138, !llvm.loop !2176

; <label>:67:                                     ; preds = %61, %54
  %68 = phi i32 [ %31, %54 ], [ %62, %61 ], !dbg !2173
  %69 = phi i32 [ 1, %54 ], [ 0, %61 ], !dbg !2173
  %70 = icmp eq i32 %68, 0, !dbg !2178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2180
  br i1 %70, label %97, label %71, !dbg !2180

; <label>:71:                                     ; preds = %67
  %72 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2181
  %73 = load %struct.redisDb*, %struct.redisDb** %72, align 8, !dbg !2181, !tbaa !1390
  %74 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2183, !tbaa !1543
  %75 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %74, i64 1, !dbg !2184
  %76 = load %struct.redisObject*, %struct.redisObject** %75, align 8, !dbg !2184, !tbaa !162
  tail call void @signalModifiedKey(%struct.redisDb* %73, %struct.redisObject* %76) #6, !dbg !2185
  %77 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2186, !tbaa !1543
  %78 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %77, i64 1, !dbg !2187
  %79 = load %struct.redisObject*, %struct.redisObject** %78, align 8, !dbg !2187, !tbaa !162
  %80 = load %struct.redisDb*, %struct.redisDb** %72, align 8, !dbg !2188, !tbaa !1390
  %81 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %80, i64 0, i32 5, !dbg !2189
  %82 = load i32, i32* %81, align 8, !dbg !2189, !tbaa !1599
  tail call void @notifyKeyspaceEvent(i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), %struct.redisObject* %79, i32 %82) #6, !dbg !2190
  %83 = icmp eq i32 %69, 0, !dbg !2191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2193
  br i1 %83, label %91, label %84, !dbg !2193

; <label>:84:                                     ; preds = %71
  %85 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2194, !tbaa !1543
  %86 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %85, i64 1, !dbg !2195
  %87 = load %struct.redisObject*, %struct.redisObject** %86, align 8, !dbg !2195, !tbaa !162
  %88 = load %struct.redisDb*, %struct.redisDb** %72, align 8, !dbg !2196, !tbaa !1390
  %89 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %88, i64 0, i32 5, !dbg !2197
  %90 = load i32, i32* %89, align 8, !dbg !2197, !tbaa !1599
  tail call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), %struct.redisObject* %87, i32 %90) #6, !dbg !2198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2198
  br label %91, !dbg !2198

; <label>:91:                                     ; preds = %71, %84
  %92 = sext i32 %68 to i64, !dbg !2199
  %93 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2200, !tbaa !1603
  %94 = add nsw i64 %93, %92, !dbg !2200
  store i64 %94, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2200, !tbaa !1603
  br label %95, !dbg !2201

; <label>:95:                                     ; preds = %12, %91
  %96 = phi i64 [ %92, %91 ], [ 0, %12 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2202
  br label %97, !dbg !2203

; <label>:97:                                     ; preds = %95, %67
  %98 = phi i64 [ 0, %67 ], [ %96, %95 ], !dbg !2204
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %98) #6, !dbg !2203
  br label %99, !dbg !2205

; <label>:99:                                     ; preds = %1, %9, %97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2205
  ret void, !dbg !2205
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyWriteOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @dbDelete(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @hlenCommand(%struct.client*) local_unnamed_addr #0 !dbg !2207 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2212
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2212, !tbaa !1543
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !2214
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !2214, !tbaa !162
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !2215, !tbaa !1578
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #6, !dbg !2216
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !2218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2219
  br i1 %8, label %38, label %9, !dbg !2219

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 4) #6, !dbg !2220
  %11 = icmp eq i32 %10, 0, !dbg !2220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2221
  br i1 %11, label %12, label %38, !dbg !2221

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 0, !dbg !2225
  %14 = load i32, i32* %13, align 8, !dbg !2225
  %15 = lshr i32 %14, 4, !dbg !2225
  %16 = and i32 %15, 15, !dbg !2225
  %17 = icmp eq i32 %16, 5, !dbg !2226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2227
  br i1 %17, label %18, label %24, !dbg !2227

; <label>:18:                                     ; preds = %12
  %19 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !2228
  %20 = load i8*, i8** %19, align 8, !dbg !2228, !tbaa !168
  %21 = tail call i32 @ziplistLen(i8* %20) #6, !dbg !2229
  %22 = lshr i32 %21, 1, !dbg !2230
  %23 = zext i32 %22 to i64, !dbg !2229
  br label %36, !dbg !2231

; <label>:24:                                     ; preds = %12
  %25 = icmp eq i32 %16, 2, !dbg !2232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2233
  br i1 %25, label %26, label %35, !dbg !2233

; <label>:26:                                     ; preds = %24
  %27 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !2234
  %28 = bitcast i8** %27 to %struct.dict**, !dbg !2234
  %29 = load %struct.dict*, %struct.dict** %28, align 8, !dbg !2234, !tbaa !168
  %30 = getelementptr inbounds %struct.dict, %struct.dict* %29, i64 0, i32 2, i64 0, i32 3, !dbg !2234
  %31 = load i64, i64* %30, align 8, !dbg !2234, !tbaa !769
  %32 = getelementptr inbounds %struct.dict, %struct.dict* %29, i64 0, i32 2, i64 1, i32 3, !dbg !2234
  %33 = load i64, i64* %32, align 8, !dbg !2234, !tbaa !769
  %34 = add i64 %33, %31, !dbg !2234
  br label %36

; <label>:35:                                     ; preds = %24
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 319, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2235
  tail call void @_exit(i32 1) #7, !dbg !2235
  unreachable

; <label>:36:                                     ; preds = %18, %26
  %37 = phi i64 [ %23, %18 ], [ %34, %26 ], !dbg !2236
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2237
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %37) #6, !dbg !2238
  br label %38, !dbg !2239

; <label>:38:                                     ; preds = %1, %9, %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2239
  ret void, !dbg !2239
}

; Function Attrs: noredzone nounwind
define dso_local void @hstrlenCommand(%struct.client*) local_unnamed_addr #0 !dbg !2241 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2246
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2246, !tbaa !1543
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !2248
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !2248, !tbaa !162
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !2249, !tbaa !1578
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #6, !dbg !2250
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !2252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2253
  br i1 %8, label %19, label %9, !dbg !2253

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 4) #6, !dbg !2254
  %11 = icmp eq i32 %10, 0, !dbg !2254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2255
  br i1 %11, label %12, label %19, !dbg !2255

; <label>:12:                                     ; preds = %9
  %13 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2256, !tbaa !1543
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 2, !dbg !2257
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !2257, !tbaa !162
  %16 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %15, i64 0, i32 2, !dbg !2258
  %17 = load i8*, i8** %16, align 8, !dbg !2258, !tbaa !168
  %18 = tail call i64 @hashTypeGetValueLength(%struct.redisObject* nonnull %7, i8* %17) #8, !dbg !2259
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %18) #6, !dbg !2260
  br label %19, !dbg !2261

; <label>:19:                                     ; preds = %1, %9, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2261
  ret void, !dbg !2261
}

; Function Attrs: noredzone nounwind
define dso_local void @genericHgetallCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !2263 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2278
  %4 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2278, !tbaa !1543
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 1, !dbg !2280
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !2280, !tbaa !162
  %7 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 13), align 8, !dbg !2281, !tbaa !2282
  %8 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %6, %struct.redisObject* %7) #6, !dbg !2283
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !2285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2286
  br i1 %9, label %101, label %10, !dbg !2286

; <label>:10:                                     ; preds = %2
  %11 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %8, i32 4) #6, !dbg !2287
  %12 = icmp eq i32 %11, 0, !dbg !2287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2288
  br i1 %12, label %13, label %101, !dbg !2288

; <label>:13:                                     ; preds = %10
  %14 = and i32 %1, 1, !dbg !2289
  %15 = icmp ne i32 %14, 0, !dbg !2289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2291
  br i1 %15, label %16, label %17, !dbg !2291

; <label>:16:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2292
  br label %17, !dbg !2292

; <label>:17:                                     ; preds = %16, %13
  %18 = phi i32 [ 1, %16 ], [ 0, %13 ], !dbg !2293
  %19 = and i32 %1, 2, !dbg !2294
  %20 = icmp ne i32 %19, 0, !dbg !2294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  br i1 %20, label %21, label %23, !dbg !2296

; <label>:21:                                     ; preds = %17
  %22 = add nuw nsw i32 %18, 1, !dbg !2297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2298
  br label %23, !dbg !2298

; <label>:23:                                     ; preds = %21, %17
  %24 = phi i32 [ %22, %21 ], [ %18, %17 ], !dbg !2299
  %25 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 0, !dbg !2303
  %26 = load i32, i32* %25, align 8, !dbg !2303
  %27 = lshr i32 %26, 4, !dbg !2303
  %28 = and i32 %27, 15, !dbg !2303
  %29 = icmp eq i32 %28, 5, !dbg !2304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2305
  br i1 %29, label %30, label %36, !dbg !2305

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !2306
  %32 = load i8*, i8** %31, align 8, !dbg !2306, !tbaa !168
  %33 = tail call i32 @ziplistLen(i8* %32) #6, !dbg !2307
  %34 = lshr i32 %33, 1, !dbg !2308
  %35 = zext i32 %34 to i64, !dbg !2307
  br label %48, !dbg !2309

; <label>:36:                                     ; preds = %23
  %37 = icmp eq i32 %28, 2, !dbg !2310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2311
  br i1 %37, label %38, label %47, !dbg !2311

; <label>:38:                                     ; preds = %36
  %39 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !2312
  %40 = bitcast i8** %39 to %struct.dict**, !dbg !2312
  %41 = load %struct.dict*, %struct.dict** %40, align 8, !dbg !2312, !tbaa !168
  %42 = getelementptr inbounds %struct.dict, %struct.dict* %41, i64 0, i32 2, i64 0, i32 3, !dbg !2312
  %43 = load i64, i64* %42, align 8, !dbg !2312, !tbaa !769
  %44 = getelementptr inbounds %struct.dict, %struct.dict* %41, i64 0, i32 2, i64 1, i32 3, !dbg !2312
  %45 = load i64, i64* %44, align 8, !dbg !2312, !tbaa !769
  %46 = add i64 %45, %43, !dbg !2312
  br label %48

; <label>:47:                                     ; preds = %36
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 319, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2313
  tail call void @_exit(i32 1) #7, !dbg !2313
  unreachable

; <label>:48:                                     ; preds = %30, %38
  %49 = phi i64 [ %35, %30 ], [ %46, %38 ], !dbg !2314
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2315
  %50 = trunc i64 %49 to i32, !dbg !2316
  %51 = mul i32 %24, %50, !dbg !2316
  %52 = sext i32 %51 to i64, !dbg !2318
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %52) #6, !dbg !2319
  %53 = tail call i8* @zmalloc(i64 48) #6, !dbg !2322
  %54 = bitcast i8* %53 to %struct.hashTypeIterator*, !dbg !2322
  %55 = bitcast i8* %53 to %struct.redisObject**, !dbg !2324
  store %struct.redisObject* %8, %struct.redisObject** %55, align 8, !dbg !2325, !tbaa !977
  %56 = load i32, i32* %25, align 8, !dbg !2326
  %57 = lshr i32 %56, 4, !dbg !2326
  %58 = and i32 %57, 15, !dbg !2326
  %59 = getelementptr inbounds i8, i8* %53, i64 8, !dbg !2327
  %60 = bitcast i8* %59 to i32*, !dbg !2327
  store i32 %58, i32* %60, align 8, !dbg !2328, !tbaa !982
  %61 = icmp eq i32 %58, 5, !dbg !2329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2330
  br i1 %61, label %62, label %65, !dbg !2330

; <label>:62:                                     ; preds = %48
  %63 = getelementptr inbounds i8, i8* %53, i64 16, !dbg !2331
  %64 = bitcast i8* %63 to <2 x i8*>*, !dbg !2332
  store <2 x i8*> zeroinitializer, <2 x i8*>* %64, align 8, !dbg !2332, !tbaa !162
  br label %75, !dbg !2333

; <label>:65:                                     ; preds = %48
  %66 = icmp eq i32 %58, 2, !dbg !2334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2335
  br i1 %66, label %67, label %74, !dbg !2335

; <label>:67:                                     ; preds = %65
  %68 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !2336
  %69 = bitcast i8** %68 to %struct.dict**, !dbg !2336
  %70 = load %struct.dict*, %struct.dict** %69, align 8, !dbg !2336, !tbaa !168
  %71 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %70) #6, !dbg !2337
  %72 = getelementptr inbounds i8, i8* %53, i64 32, !dbg !2338
  %73 = bitcast i8* %72 to %struct.dictIterator**, !dbg !2338
  store %struct.dictIterator* %71, %struct.dictIterator** %73, align 8, !dbg !2339, !tbaa !998
  br label %75

; <label>:74:                                     ; preds = %65
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 335, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2340
  tail call void @_exit(i32 1) #7, !dbg !2340
  unreachable

; <label>:75:                                     ; preds = %62, %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2343
  %76 = tail call i32 @hashTypeNext(%struct.hashTypeIterator* nonnull %54) #8, !dbg !2344
  %77 = icmp eq i32 %76, -1, !dbg !2345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2343
  br i1 %77, label %90, label %78, !dbg !2343

; <label>:78:                                     ; preds = %75, %86
  %79 = phi i32 [ %87, %86 ], [ 0, %75 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2346
  br i1 %15, label %80, label %82, !dbg !2346

; <label>:80:                                     ; preds = %78
  tail call fastcc void @addHashIteratorCursorToReply(%struct.client* %0, %struct.hashTypeIterator* %54, i32 1) #8, !dbg !2348
  %81 = add nsw i32 %79, 1, !dbg !2351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2352
  br label %82, !dbg !2352

; <label>:82:                                     ; preds = %80, %78
  %83 = phi i32 [ %81, %80 ], [ %79, %78 ], !dbg !2293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2353
  br i1 %20, label %84, label %86, !dbg !2353

; <label>:84:                                     ; preds = %82
  tail call fastcc void @addHashIteratorCursorToReply(%struct.client* %0, %struct.hashTypeIterator* %54, i32 2) #8, !dbg !2354
  %85 = add nsw i32 %83, 1, !dbg !2357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2358
  br label %86, !dbg !2358

; <label>:86:                                     ; preds = %84, %82
  %87 = phi i32 [ %85, %84 ], [ %83, %82 ], !dbg !2359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2343
  %88 = tail call i32 @hashTypeNext(%struct.hashTypeIterator* %54) #8, !dbg !2344
  %89 = icmp eq i32 %88, -1, !dbg !2345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2343
  br i1 %89, label %90, label %78, !dbg !2343, !llvm.loop !2360

; <label>:90:                                     ; preds = %86, %75
  %91 = phi i32 [ 0, %75 ], [ %87, %86 ], !dbg !2362
  %92 = load i32, i32* %60, align 8, !dbg !2365, !tbaa !982
  %93 = icmp eq i32 %92, 2, !dbg !2366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2367
  br i1 %93, label %94, label %98, !dbg !2367

; <label>:94:                                     ; preds = %90
  %95 = getelementptr inbounds i8, i8* %53, i64 32, !dbg !2368
  %96 = bitcast i8* %95 to %struct.dictIterator**, !dbg !2368
  %97 = load %struct.dictIterator*, %struct.dictIterator** %96, align 8, !dbg !2368, !tbaa !998
  tail call void @dictReleaseIterator(%struct.dictIterator* %97) #6, !dbg !2369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2369
  br label %98, !dbg !2369

; <label>:98:                                     ; preds = %90, %94
  tail call void @zfree(i8* nonnull %53) #6, !dbg !2370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2371
  %99 = icmp eq i32 %91, %51, !dbg !2372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2372
  br i1 %99, label %101, label %100, !dbg !2372

; <label>:100:                                    ; preds = %98
  tail call void @_serverAssert(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 798) #6, !dbg !2372
  tail call void @_exit(i32 1) #7, !dbg !2372
  unreachable

; <label>:101:                                    ; preds = %98, %2, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2374
  ret void, !dbg !2374
}

; Function Attrs: noredzone nounwind
define internal fastcc void @addHashIteratorCursorToReply(%struct.client*, %struct.hashTypeIterator* nocapture readonly, i32) unnamed_addr #0 !dbg !2375 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %1, i64 0, i32 1, !dbg !2393
  %8 = load i32, i32* %7, align 8, !dbg !2393, !tbaa !982
  %9 = icmp eq i32 %8, 5, !dbg !2394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2395
  br i1 %9, label %10, label %22, !dbg !2395

; <label>:10:                                     ; preds = %3
  %11 = bitcast i8** %4 to i8*, !dbg !2396
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #5, !dbg !2396
  store i8* null, i8** %4, align 8, !dbg !2397, !tbaa !162
  %12 = bitcast i32* %5 to i8*, !dbg !2398
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5, !dbg !2398
  store i32 -1, i32* %5, align 4, !dbg !2399, !tbaa !200
  %13 = bitcast i64* %6 to i8*, !dbg !2400
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #5, !dbg !2400
  store i64 9223372036854775807, i64* %6, align 8, !dbg !2401, !tbaa !451
  call void @hashTypeCurrentFromZiplist(%struct.hashTypeIterator* nonnull %1, i32 %2, i8** nonnull %4, i32* nonnull %5, i64* nonnull %6) #8, !dbg !2402
  %14 = load i8*, i8** %4, align 8, !dbg !2403, !tbaa !162
  %15 = icmp eq i8* %14, null, !dbg !2403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2405
  br i1 %15, label %19, label %16, !dbg !2405

; <label>:16:                                     ; preds = %10
  %17 = load i32, i32* %5, align 4, !dbg !2406, !tbaa !200
  %18 = zext i32 %17 to i64, !dbg !2406
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* nonnull %14, i64 %18) #6, !dbg !2407
  br label %21, !dbg !2407

; <label>:19:                                     ; preds = %10
  %20 = load i64, i64* %6, align 8, !dbg !2408, !tbaa !451
  call void @addReplyBulkLongLong(%struct.client* %0, i64 %20) #6, !dbg !2409
  br label %21

; <label>:21:                                     ; preds = %19, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #5, !dbg !2410
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5, !dbg !2410
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5, !dbg !2410
  br label %60, !dbg !2411

; <label>:22:                                     ; preds = %3
  %23 = icmp eq i32 %8, 2, !dbg !2412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2413
  br i1 %23, label %24, label %59, !dbg !2413

; <label>:24:                                     ; preds = %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2417
  %25 = and i32 %2, 1, !dbg !2418
  %26 = icmp eq i32 %25, 0, !dbg !2418
  %27 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %1, i64 0, i32 5, !dbg !2419
  %28 = load %struct.dictEntry*, %struct.dictEntry** %27, align 8, !dbg !2419, !tbaa !1069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2420
  %29 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %28, i64 0, i32 0, !dbg !2421
  %30 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %28, i64 0, i32 1, i32 0, !dbg !2422
  %31 = select i1 %26, i8** %30, i8** %29, !dbg !2420
  %32 = load i8*, i8** %31, align 8, !dbg !2423, !tbaa !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2424
  %33 = getelementptr inbounds i8, i8* %32, i64 -1, !dbg !2428
  %34 = load i8, i8* %33, align 1, !dbg !2428, !tbaa !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2430
  %35 = trunc i8 %34 to i3, !dbg !2430
  switch i3 %35, label %57 [
    i3 0, label %36
    i3 1, label %39
    i3 2, label %43
    i3 3, label %48
    i3 -4, label %53
  ], !dbg !2430

; <label>:36:                                     ; preds = %24
  %37 = lshr i8 %34, 3, !dbg !2431
  %38 = zext i8 %37 to i64, !dbg !2431
  br label %57, !dbg !2432

; <label>:39:                                     ; preds = %24
  %40 = getelementptr inbounds i8, i8* %32, i64 -3, !dbg !2433
  %41 = load i8, i8* %40, align 1, !dbg !2434, !tbaa !184
  %42 = zext i8 %41 to i64, !dbg !2433
  br label %57, !dbg !2435

; <label>:43:                                     ; preds = %24
  %44 = getelementptr inbounds i8, i8* %32, i64 -5, !dbg !2436
  %45 = bitcast i8* %44 to i16*, !dbg !2437
  %46 = load i16, i16* %45, align 1, !dbg !2437, !tbaa !195
  %47 = zext i16 %46 to i64, !dbg !2436
  br label %57, !dbg !2438

; <label>:48:                                     ; preds = %24
  %49 = getelementptr inbounds i8, i8* %32, i64 -9, !dbg !2439
  %50 = bitcast i8* %49 to i32*, !dbg !2440
  %51 = load i32, i32* %50, align 1, !dbg !2440, !tbaa !200
  %52 = zext i32 %51 to i64, !dbg !2439
  br label %57, !dbg !2441

; <label>:53:                                     ; preds = %24
  %54 = getelementptr inbounds i8, i8* %32, i64 -17, !dbg !2442
  %55 = bitcast i8* %54 to i64*, !dbg !2443
  %56 = load i64, i64* %55, align 1, !dbg !2443, !tbaa !204
  br label %57, !dbg !2444

; <label>:57:                                     ; preds = %24, %36, %39, %43, %48, %53
  %58 = phi i64 [ %56, %53 ], [ %52, %48 ], [ %47, %43 ], [ %42, %39 ], [ %38, %36 ], [ 0, %24 ], !dbg !2445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2446
  tail call void @addReplyBulkCBuffer(%struct.client* %0, i8* %32, i64 %58) #6, !dbg !2447
  br label %60

; <label>:59:                                     ; preds = %22
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 766, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2448
  tail call void @_exit(i32 1) #7, !dbg !2448
  unreachable

; <label>:60:                                     ; preds = %57, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2450
  ret void, !dbg !2450
}

; Function Attrs: noredzone nounwind
define dso_local void @hkeysCommand(%struct.client*) local_unnamed_addr #0 !dbg !2451 {
  tail call void @genericHgetallCommand(%struct.client* %0, i32 1) #8, !dbg !2455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2456
  ret void, !dbg !2456
}

; Function Attrs: noredzone nounwind
define dso_local void @hvalsCommand(%struct.client*) local_unnamed_addr #0 !dbg !2457 {
  tail call void @genericHgetallCommand(%struct.client* %0, i32 2) #8, !dbg !2461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2462
  ret void, !dbg !2462
}

; Function Attrs: noredzone nounwind
define dso_local void @hgetallCommand(%struct.client*) local_unnamed_addr #0 !dbg !2463 {
  tail call void @genericHgetallCommand(%struct.client* %0, i32 3) #8, !dbg !2467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2468
  ret void, !dbg !2468
}

; Function Attrs: noredzone nounwind
define dso_local void @hexistsCommand(%struct.client*) local_unnamed_addr #0 !dbg !2469 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2474
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2474, !tbaa !1543
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !2476
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !2476, !tbaa !162
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !2477, !tbaa !1578
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #6, !dbg !2478
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !2480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2481
  br i1 %8, label %23, label %9, !dbg !2481

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 4) #6, !dbg !2482
  %11 = icmp eq i32 %10, 0, !dbg !2482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2483
  br i1 %11, label %12, label %23, !dbg !2483

; <label>:12:                                     ; preds = %9
  %13 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2484, !tbaa !1543
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 2, !dbg !2485
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !2485, !tbaa !162
  %16 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %15, i64 0, i32 2, !dbg !2486
  %17 = load i8*, i8** %16, align 8, !dbg !2486, !tbaa !168
  %18 = tail call i32 @hashTypeExists(%struct.redisObject* nonnull %7, i8* %17) #8, !dbg !2487
  %19 = icmp eq i32 %18, 0, !dbg !2487
  %20 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !2488
  %21 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !2489
  %22 = select i1 %19, %struct.redisObject* %21, %struct.redisObject* %20, !dbg !2487
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %22) #6, !dbg !2490
  br label %23, !dbg !2491

; <label>:23:                                     ; preds = %1, %9, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2491
  ret void, !dbg !2491
}

; Function Attrs: noredzone nounwind
define dso_local void @hscanCommand(%struct.client*) local_unnamed_addr #0 !dbg !2493 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !2499
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !2499
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2500
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !2500, !tbaa !1543
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 2, !dbg !2502
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !2502, !tbaa !162
  %8 = call i32 @parseScanCursorOrReply(%struct.client* %0, %struct.redisObject* %7, i64* nonnull %2) #6, !dbg !2504
  %9 = icmp eq i32 %8, -1, !dbg !2505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2506
  br i1 %9, label %22, label %10, !dbg !2506

; <label>:10:                                     ; preds = %1
  %11 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !2507, !tbaa !1543
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 1, !dbg !2509
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !2509, !tbaa !162
  %14 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 45), align 8, !dbg !2510, !tbaa !2511
  %15 = call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* nonnull %0, %struct.redisObject* %13, %struct.redisObject* %14) #6, !dbg !2512
  %16 = icmp eq %struct.redisObject* %15, null, !dbg !2514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2515
  br i1 %16, label %22, label %17, !dbg !2515

; <label>:17:                                     ; preds = %10
  %18 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %15, i32 4) #6, !dbg !2516
  %19 = icmp eq i32 %18, 0, !dbg !2516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2517
  br i1 %19, label %20, label %22, !dbg !2517

; <label>:20:                                     ; preds = %17
  %21 = load i64, i64* %2, align 8, !dbg !2518, !tbaa !204
  call void @scanGenericCommand(%struct.client* nonnull %0, %struct.redisObject* nonnull %15, i64 %21) #6, !dbg !2519
  br label %22, !dbg !2520

; <label>:22:                                     ; preds = %10, %17, %1, %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2521
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !2520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2520
  ret void, !dbg !2520
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
!152 = !DILocation(line: 43, column: 9, scope: !125)
!153 = !DILocation(line: 0, scope: !150)
!154 = !DILocation(line: 41, column: 9, scope: !125)
!155 = !DILocation(line: 45, column: 23, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !1, line: 45, column: 5)
!157 = distinct !DILexicalBlock(scope: !125, file: !1, line: 45, column: 5)
!158 = !DILocation(line: 45, column: 5, scope: !157)
!159 = !DILocation(line: 46, column: 13, scope: !160)
!160 = distinct !DILexicalBlock(scope: !161, file: !1, line: 46, column: 13)
!161 = distinct !DILexicalBlock(scope: !156, file: !1, line: 45, column: 36)
!162 = !{!163, !163, i64 0}
!163 = !{!"any pointer", !164, i64 0}
!164 = !{!"omnipotent char", !165, i64 0}
!165 = !{!"Simple C/C++ TBAA"}
!166 = !DILocation(line: 46, column: 39, scope: !160)
!167 = !DILocation(line: 47, column: 29, scope: !160)
!168 = !{!169, !163, i64 8}
!169 = !{!"redisObject", !170, i64 0, !170, i64 0, !170, i64 1, !170, i64 4, !163, i64 8}
!170 = !{!"int", !164, i64 0}
!171 = !DILocalVariable(name: "s", arg: 1, scope: !172, file: !83, line: 87, type: !177)
!172 = distinct !DISubprogram(name: "sdslen", scope: !83, file: !83, line: 87, type: !173, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !179)
!173 = !DISubroutineType(types: !174)
!174 = !{!175, !177}
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !176, line: 58, baseType: !27)
!176 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !83, line: 43, baseType: !7)
!179 = !{!171, !180}
!180 = !DILocalVariable(name: "flags", scope: !172, file: !83, line: 88, type: !6)
!181 = !DILocation(line: 87, column: 39, scope: !172, inlinedAt: !182)
!182 = distinct !DILocation(line: 47, column: 13, scope: !160)
!183 = !DILocation(line: 88, column: 27, scope: !172, inlinedAt: !182)
!184 = !{!164, !164, i64 0}
!185 = !DILocation(line: 88, column: 19, scope: !172, inlinedAt: !182)
!186 = !DILocation(line: 89, column: 5, scope: !172, inlinedAt: !182)
!187 = !DILocation(line: 91, column: 20, scope: !188, inlinedAt: !182)
!188 = distinct !DILexicalBlock(scope: !172, file: !83, line: 89, column: 33)
!189 = !DILocation(line: 91, column: 13, scope: !188, inlinedAt: !182)
!190 = !DILocation(line: 93, column: 20, scope: !188, inlinedAt: !182)
!191 = !DILocation(line: 93, column: 34, scope: !188, inlinedAt: !182)
!192 = !DILocation(line: 93, column: 13, scope: !188, inlinedAt: !182)
!193 = !DILocation(line: 95, column: 20, scope: !188, inlinedAt: !182)
!194 = !DILocation(line: 95, column: 35, scope: !188, inlinedAt: !182)
!195 = !{!196, !196, i64 0}
!196 = !{!"short", !164, i64 0}
!197 = !DILocation(line: 95, column: 13, scope: !188, inlinedAt: !182)
!198 = !DILocation(line: 97, column: 20, scope: !188, inlinedAt: !182)
!199 = !DILocation(line: 97, column: 35, scope: !188, inlinedAt: !182)
!200 = !{!170, !170, i64 0}
!201 = !DILocation(line: 97, column: 13, scope: !188, inlinedAt: !182)
!202 = !DILocation(line: 99, column: 20, scope: !188, inlinedAt: !182)
!203 = !DILocation(line: 99, column: 35, scope: !188, inlinedAt: !182)
!204 = !{!205, !205, i64 0}
!205 = !{!"long", !164, i64 0}
!206 = !DILocation(line: 99, column: 13, scope: !188, inlinedAt: !182)
!207 = !DILocation(line: 101, column: 5, scope: !172, inlinedAt: !182)
!208 = !DILocation(line: 102, column: 1, scope: !172, inlinedAt: !182)
!209 = !DILocation(line: 46, column: 13, scope: !161)
!210 = !DILocation(line: 0, scope: !188, inlinedAt: !182)
!211 = !DILocation(line: 0, scope: !160)
!212 = !DILocation(line: 47, column: 34, scope: !160)
!213 = !DILocalVariable(name: "o", arg: 1, scope: !214, file: !1, line: 500, type: !128)
!214 = distinct !DISubprogram(name: "hashTypeConvert", scope: !1, file: !1, line: 500, type: !215, isLocal: false, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !217)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !128, !39}
!217 = !{!213, !218}
!218 = !DILocalVariable(name: "enc", arg: 2, scope: !214, file: !1, line: 500, type: !39)
!219 = !DILocation(line: 500, column: 28, scope: !214, inlinedAt: !220)
!220 = distinct !DILocation(line: 49, column: 13, scope: !221)
!221 = distinct !DILexicalBlock(scope: !160, file: !1, line: 48, column: 9)
!222 = !DILocation(line: 500, column: 35, scope: !214, inlinedAt: !220)
!223 = !DILocation(line: 501, column: 12, scope: !224, inlinedAt: !220)
!224 = distinct !DILexicalBlock(scope: !214, file: !1, line: 501, column: 9)
!225 = !DILocation(line: 501, column: 21, scope: !224, inlinedAt: !220)
!226 = !DILocation(line: 501, column: 9, scope: !214, inlinedAt: !220)
!227 = !DILocation(line: 503, column: 28, scope: !228, inlinedAt: !220)
!228 = distinct !DILexicalBlock(scope: !224, file: !1, line: 503, column: 16)
!229 = !DILocation(line: 503, column: 16, scope: !224, inlinedAt: !220)
!230 = !DILocation(line: 504, column: 9, scope: !231, inlinedAt: !220)
!231 = distinct !DILexicalBlock(scope: !228, file: !1, line: 503, column: 48)
!232 = !DILocation(line: 506, column: 9, scope: !233, inlinedAt: !220)
!233 = distinct !DILexicalBlock(scope: !228, file: !1, line: 505, column: 12)
!234 = !DILocation(line: 502, column: 9, scope: !235, inlinedAt: !220)
!235 = distinct !DILexicalBlock(scope: !224, file: !1, line: 501, column: 46)
!236 = !DILocation(line: 508, column: 1, scope: !214, inlinedAt: !220)
!237 = !DILocation(line: 50, column: 13, scope: !221)
!238 = !DILocation(line: 45, column: 32, scope: !156)
!239 = !DILocation(line: 45, column: 5, scope: !156)
!240 = distinct !{!240, !158, !241}
!241 = !DILocation(line: 52, column: 5, scope: !157)
!242 = !DILocation(line: 53, column: 1, scope: !125)
!243 = !DILocation(line: 500, column: 28, scope: !214)
!244 = !DILocation(line: 500, column: 35, scope: !214)
!245 = !DILocation(line: 501, column: 12, scope: !224)
!246 = !DILocation(line: 501, column: 21, scope: !224)
!247 = !DILocation(line: 501, column: 9, scope: !214)
!248 = !DILocation(line: 502, column: 9, scope: !235)
!249 = !DILocation(line: 508, column: 1, scope: !214)
!250 = !DILocation(line: 503, column: 28, scope: !228)
!251 = !DILocation(line: 503, column: 16, scope: !224)
!252 = !DILocation(line: 504, column: 9, scope: !231)
!253 = !DILocation(line: 506, column: 9, scope: !233)
!254 = distinct !DISubprogram(name: "hashTypeGetFromZiplist", scope: !1, file: !1, line: 57, type: !255, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !261)
!255 = !DISubroutineType(types: !256)
!256 = !{!39, !128, !178, !257, !258, !259}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!261 = !{!262, !263, !264, !265, !266, !267, !268, !269, !270}
!262 = !DILocalVariable(name: "o", arg: 1, scope: !254, file: !1, line: 57, type: !128)
!263 = !DILocalVariable(name: "field", arg: 2, scope: !254, file: !1, line: 57, type: !178)
!264 = !DILocalVariable(name: "vstr", arg: 3, scope: !254, file: !1, line: 58, type: !257)
!265 = !DILocalVariable(name: "vlen", arg: 4, scope: !254, file: !1, line: 59, type: !258)
!266 = !DILocalVariable(name: "vll", arg: 5, scope: !254, file: !1, line: 60, type: !259)
!267 = !DILocalVariable(name: "zl", scope: !254, file: !1, line: 62, type: !5)
!268 = !DILocalVariable(name: "fptr", scope: !254, file: !1, line: 62, type: !5)
!269 = !DILocalVariable(name: "vptr", scope: !254, file: !1, line: 62, type: !5)
!270 = !DILocalVariable(name: "ret", scope: !254, file: !1, line: 63, type: !39)
!271 = !DILocation(line: 57, column: 34, scope: !254)
!272 = !DILocation(line: 57, column: 41, scope: !254)
!273 = !DILocation(line: 58, column: 44, scope: !254)
!274 = !DILocation(line: 59, column: 42, scope: !254)
!275 = !DILocation(line: 60, column: 39, scope: !254)
!276 = !DILocation(line: 62, column: 25, scope: !254)
!277 = !DILocation(line: 62, column: 39, scope: !254)
!278 = !DILocation(line: 65, column: 5, scope: !254)
!279 = !DILocation(line: 67, column: 13, scope: !254)
!280 = !DILocation(line: 62, column: 20, scope: !254)
!281 = !DILocation(line: 68, column: 12, scope: !254)
!282 = !DILocation(line: 69, column: 14, scope: !283)
!283 = distinct !DILexicalBlock(scope: !254, file: !1, line: 69, column: 9)
!284 = !DILocation(line: 69, column: 9, scope: !254)
!285 = !DILocation(line: 87, column: 39, scope: !172, inlinedAt: !286)
!286 = distinct !DILocation(line: 70, column: 57, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !1, line: 69, column: 23)
!288 = !DILocation(line: 88, column: 27, scope: !172, inlinedAt: !286)
!289 = !DILocation(line: 88, column: 19, scope: !172, inlinedAt: !286)
!290 = !DILocation(line: 89, column: 5, scope: !172, inlinedAt: !286)
!291 = !DILocation(line: 91, column: 20, scope: !188, inlinedAt: !286)
!292 = !DILocation(line: 91, column: 13, scope: !188, inlinedAt: !286)
!293 = !DILocation(line: 93, column: 20, scope: !188, inlinedAt: !286)
!294 = !DILocation(line: 93, column: 34, scope: !188, inlinedAt: !286)
!295 = !DILocation(line: 93, column: 13, scope: !188, inlinedAt: !286)
!296 = !DILocation(line: 95, column: 20, scope: !188, inlinedAt: !286)
!297 = !DILocation(line: 95, column: 35, scope: !188, inlinedAt: !286)
!298 = !DILocation(line: 95, column: 13, scope: !188, inlinedAt: !286)
!299 = !DILocation(line: 97, column: 20, scope: !188, inlinedAt: !286)
!300 = !DILocation(line: 97, column: 35, scope: !188, inlinedAt: !286)
!301 = !DILocation(line: 97, column: 13, scope: !188, inlinedAt: !286)
!302 = !DILocation(line: 99, column: 20, scope: !188, inlinedAt: !286)
!303 = !DILocation(line: 99, column: 35, scope: !188, inlinedAt: !286)
!304 = !DILocation(line: 99, column: 13, scope: !188, inlinedAt: !286)
!305 = !DILocation(line: 0, scope: !188, inlinedAt: !286)
!306 = !DILocation(line: 0, scope: !287)
!307 = !DILocation(line: 102, column: 1, scope: !172, inlinedAt: !286)
!308 = !DILocation(line: 70, column: 57, scope: !287)
!309 = !DILocation(line: 70, column: 16, scope: !287)
!310 = !DILocation(line: 71, column: 18, scope: !311)
!311 = distinct !DILexicalBlock(scope: !287, file: !1, line: 71, column: 13)
!312 = !DILocation(line: 71, column: 13, scope: !287)
!313 = !DILocation(line: 73, column: 20, scope: !314)
!314 = distinct !DILexicalBlock(scope: !311, file: !1, line: 71, column: 27)
!315 = !DILocation(line: 74, column: 13, scope: !314)
!316 = !DILocation(line: 78, column: 9, scope: !254)
!317 = !DILocation(line: 79, column: 15, scope: !318)
!318 = distinct !DILexicalBlock(scope: !319, file: !1, line: 78, column: 23)
!319 = distinct !DILexicalBlock(scope: !254, file: !1, line: 78, column: 9)
!320 = !DILocation(line: 63, column: 9, scope: !254)
!321 = !DILocation(line: 80, column: 9, scope: !318)
!322 = !DILocation(line: 84, column: 5, scope: !254)
!323 = !DILocation(line: 0, scope: !254)
!324 = !DILocation(line: 0, scope: !318)
!325 = !DILocation(line: 85, column: 1, scope: !254)
!326 = distinct !DISubprogram(name: "hashTypeGetFromHashTable", scope: !1, file: !1, line: 90, type: !327, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !329)
!327 = !DISubroutineType(types: !328)
!328 = !{!178, !128, !178}
!329 = !{!330, !331, !332}
!330 = !DILocalVariable(name: "o", arg: 1, scope: !326, file: !1, line: 90, type: !128)
!331 = !DILocalVariable(name: "field", arg: 2, scope: !326, file: !1, line: 90, type: !178)
!332 = !DILocalVariable(name: "de", scope: !326, file: !1, line: 91, type: !53)
!333 = !DILocation(line: 90, column: 36, scope: !326)
!334 = !DILocation(line: 90, column: 43, scope: !326)
!335 = !DILocation(line: 93, column: 5, scope: !326)
!336 = !DILocation(line: 95, column: 22, scope: !326)
!337 = !DILocation(line: 95, column: 10, scope: !326)
!338 = !DILocation(line: 91, column: 16, scope: !326)
!339 = !DILocation(line: 96, column: 12, scope: !340)
!340 = distinct !DILexicalBlock(scope: !326, file: !1, line: 96, column: 9)
!341 = !DILocation(line: 96, column: 9, scope: !326)
!342 = !DILocation(line: 97, column: 12, scope: !326)
!343 = !DILocation(line: 97, column: 5, scope: !326)
!344 = !DILocation(line: 0, scope: !326)
!345 = !DILocation(line: 0, scope: !340)
!346 = !DILocation(line: 98, column: 1, scope: !326)
!347 = distinct !DISubprogram(name: "hashTypeGetValue", scope: !1, file: !1, line: 109, type: !255, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !348)
!348 = !{!349, !350, !351, !352, !353, !354}
!349 = !DILocalVariable(name: "o", arg: 1, scope: !347, file: !1, line: 109, type: !128)
!350 = !DILocalVariable(name: "field", arg: 2, scope: !347, file: !1, line: 109, type: !178)
!351 = !DILocalVariable(name: "vstr", arg: 3, scope: !347, file: !1, line: 109, type: !257)
!352 = !DILocalVariable(name: "vlen", arg: 4, scope: !347, file: !1, line: 109, type: !258)
!353 = !DILocalVariable(name: "vll", arg: 5, scope: !347, file: !1, line: 109, type: !259)
!354 = !DILocalVariable(name: "value", scope: !355, file: !1, line: 115, type: !178)
!355 = distinct !DILexicalBlock(scope: !356, file: !1, line: 114, column: 48)
!356 = distinct !DILexicalBlock(scope: !357, file: !1, line: 114, column: 16)
!357 = distinct !DILexicalBlock(scope: !347, file: !1, line: 110, column: 9)
!358 = !DILocation(line: 109, column: 28, scope: !347)
!359 = !DILocation(line: 109, column: 35, scope: !347)
!360 = !DILocation(line: 109, column: 58, scope: !347)
!361 = !DILocation(line: 109, column: 78, scope: !347)
!362 = !DILocation(line: 109, column: 95, scope: !347)
!363 = !DILocation(line: 110, column: 12, scope: !357)
!364 = !DILocation(line: 110, column: 21, scope: !357)
!365 = !DILocation(line: 110, column: 9, scope: !347)
!366 = !DILocation(line: 111, column: 15, scope: !367)
!367 = distinct !DILexicalBlock(scope: !357, file: !1, line: 110, column: 46)
!368 = !DILocation(line: 112, column: 13, scope: !369)
!369 = distinct !DILexicalBlock(scope: !367, file: !1, line: 112, column: 13)
!370 = !DILocation(line: 112, column: 63, scope: !369)
!371 = !DILocation(line: 112, column: 13, scope: !367)
!372 = !DILocation(line: 114, column: 28, scope: !356)
!373 = !DILocation(line: 114, column: 16, scope: !357)
!374 = !DILocation(line: 90, column: 36, scope: !326, inlinedAt: !375)
!375 = distinct !DILocation(line: 116, column: 22, scope: !376)
!376 = distinct !DILexicalBlock(scope: !355, file: !1, line: 116, column: 13)
!377 = !DILocation(line: 90, column: 43, scope: !326, inlinedAt: !375)
!378 = !DILocation(line: 93, column: 5, scope: !326, inlinedAt: !375)
!379 = !DILocation(line: 95, column: 22, scope: !326, inlinedAt: !375)
!380 = !DILocation(line: 95, column: 10, scope: !326, inlinedAt: !375)
!381 = !DILocation(line: 91, column: 16, scope: !326, inlinedAt: !375)
!382 = !DILocation(line: 96, column: 12, scope: !340, inlinedAt: !375)
!383 = !DILocation(line: 96, column: 9, scope: !326, inlinedAt: !375)
!384 = !DILocation(line: 96, column: 21, scope: !340, inlinedAt: !375)
!385 = !DILocation(line: 98, column: 1, scope: !326, inlinedAt: !375)
!386 = !DILocation(line: 115, column: 13, scope: !355)
!387 = !DILocation(line: 116, column: 13, scope: !355)
!388 = !DILocation(line: 97, column: 12, scope: !326, inlinedAt: !375)
!389 = !DILocation(line: 97, column: 5, scope: !326, inlinedAt: !375)
!390 = !DILocation(line: 116, column: 58, scope: !376)
!391 = !DILocation(line: 117, column: 19, scope: !392)
!392 = distinct !DILexicalBlock(scope: !376, file: !1, line: 116, column: 67)
!393 = !DILocation(line: 87, column: 39, scope: !172, inlinedAt: !394)
!394 = distinct !DILocation(line: 118, column: 21, scope: !392)
!395 = !DILocation(line: 88, column: 27, scope: !172, inlinedAt: !394)
!396 = !DILocation(line: 88, column: 19, scope: !172, inlinedAt: !394)
!397 = !DILocation(line: 89, column: 5, scope: !172, inlinedAt: !394)
!398 = !DILocation(line: 91, column: 20, scope: !188, inlinedAt: !394)
!399 = !DILocation(line: 91, column: 13, scope: !188, inlinedAt: !394)
!400 = !DILocation(line: 93, column: 20, scope: !188, inlinedAt: !394)
!401 = !DILocation(line: 93, column: 34, scope: !188, inlinedAt: !394)
!402 = !DILocation(line: 93, column: 13, scope: !188, inlinedAt: !394)
!403 = !DILocation(line: 95, column: 20, scope: !188, inlinedAt: !394)
!404 = !DILocation(line: 95, column: 35, scope: !188, inlinedAt: !394)
!405 = !DILocation(line: 95, column: 13, scope: !188, inlinedAt: !394)
!406 = !DILocation(line: 97, column: 20, scope: !188, inlinedAt: !394)
!407 = !DILocation(line: 97, column: 35, scope: !188, inlinedAt: !394)
!408 = !DILocation(line: 97, column: 13, scope: !188, inlinedAt: !394)
!409 = !DILocation(line: 99, column: 20, scope: !188, inlinedAt: !394)
!410 = !DILocation(line: 99, column: 35, scope: !188, inlinedAt: !394)
!411 = !DILocation(line: 99, column: 13, scope: !188, inlinedAt: !394)
!412 = !DILocation(line: 0, scope: !188, inlinedAt: !394)
!413 = !DILocation(line: 0, scope: !392)
!414 = !DILocation(line: 102, column: 1, scope: !172, inlinedAt: !394)
!415 = !DILocation(line: 118, column: 21, scope: !392)
!416 = !DILocation(line: 118, column: 19, scope: !392)
!417 = !DILocation(line: 119, column: 13, scope: !392)
!418 = !DILocation(line: 121, column: 5, scope: !356)
!419 = !DILocation(line: 122, column: 9, scope: !420)
!420 = distinct !DILexicalBlock(scope: !356, file: !1, line: 121, column: 12)
!421 = !DILocation(line: 124, column: 5, scope: !347)
!422 = !DILocation(line: 125, column: 1, scope: !347)
!423 = distinct !DISubprogram(name: "hashTypeGetValueObject", scope: !1, file: !1, line: 131, type: !424, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !426)
!424 = !DISubroutineType(types: !425)
!425 = !{!128, !128, !178}
!426 = !{!427, !428, !429, !430, !431}
!427 = !DILocalVariable(name: "o", arg: 1, scope: !423, file: !1, line: 131, type: !128)
!428 = !DILocalVariable(name: "field", arg: 2, scope: !423, file: !1, line: 131, type: !178)
!429 = !DILocalVariable(name: "vstr", scope: !423, file: !1, line: 132, type: !5)
!430 = !DILocalVariable(name: "vlen", scope: !423, file: !1, line: 133, type: !110)
!431 = !DILocalVariable(name: "vll", scope: !423, file: !1, line: 134, type: !260)
!432 = !DILocation(line: 131, column: 36, scope: !423)
!433 = !DILocation(line: 131, column: 43, scope: !423)
!434 = !DILocation(line: 132, column: 5, scope: !423)
!435 = !DILocation(line: 133, column: 5, scope: !423)
!436 = !DILocation(line: 134, column: 5, scope: !423)
!437 = !DILocation(line: 132, column: 20, scope: !423)
!438 = !DILocation(line: 133, column: 18, scope: !423)
!439 = !DILocation(line: 134, column: 15, scope: !423)
!440 = !DILocation(line: 136, column: 9, scope: !441)
!441 = distinct !DILexicalBlock(scope: !423, file: !1, line: 136, column: 9)
!442 = !DILocation(line: 136, column: 52, scope: !441)
!443 = !DILocation(line: 136, column: 9, scope: !423)
!444 = !DILocation(line: 137, column: 9, scope: !445)
!445 = distinct !DILexicalBlock(scope: !423, file: !1, line: 137, column: 9)
!446 = !DILocation(line: 137, column: 9, scope: !423)
!447 = !DILocation(line: 137, column: 53, scope: !445)
!448 = !DILocation(line: 137, column: 22, scope: !445)
!449 = !DILocation(line: 137, column: 15, scope: !445)
!450 = !DILocation(line: 138, column: 48, scope: !445)
!451 = !{!452, !452, i64 0}
!452 = !{!"long long", !164, i64 0}
!453 = !DILocation(line: 138, column: 17, scope: !445)
!454 = !DILocation(line: 138, column: 10, scope: !445)
!455 = !DILocation(line: 0, scope: !445)
!456 = !DILocation(line: 0, scope: !441)
!457 = !DILocation(line: 139, column: 1, scope: !423)
!458 = distinct !DISubprogram(name: "hashTypeGetValueLength", scope: !1, file: !1, line: 144, type: !459, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !465)
!459 = !DISubroutineType(types: !460)
!460 = !{!461, !128, !178}
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !462, line: 40, baseType: !463)
!462 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !464, line: 129, baseType: !27)
!464 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!465 = !{!466, !467, !468, !469, !472, !473, !474}
!466 = !DILocalVariable(name: "o", arg: 1, scope: !458, file: !1, line: 144, type: !128)
!467 = !DILocalVariable(name: "field", arg: 2, scope: !458, file: !1, line: 144, type: !178)
!468 = !DILocalVariable(name: "len", scope: !458, file: !1, line: 145, type: !461)
!469 = !DILocalVariable(name: "vstr", scope: !470, file: !1, line: 147, type: !5)
!470 = distinct !DILexicalBlock(scope: !471, file: !1, line: 146, column: 46)
!471 = distinct !DILexicalBlock(scope: !458, file: !1, line: 146, column: 9)
!472 = !DILocalVariable(name: "vlen", scope: !470, file: !1, line: 148, type: !110)
!473 = !DILocalVariable(name: "vll", scope: !470, file: !1, line: 149, type: !260)
!474 = !DILocalVariable(name: "aux", scope: !475, file: !1, line: 154, type: !178)
!475 = distinct !DILexicalBlock(scope: !476, file: !1, line: 153, column: 48)
!476 = distinct !DILexicalBlock(scope: !471, file: !1, line: 153, column: 16)
!477 = !DILocation(line: 144, column: 37, scope: !458)
!478 = !DILocation(line: 144, column: 44, scope: !458)
!479 = !DILocation(line: 145, column: 12, scope: !458)
!480 = !DILocation(line: 146, column: 12, scope: !471)
!481 = !DILocation(line: 146, column: 21, scope: !471)
!482 = !DILocation(line: 146, column: 9, scope: !458)
!483 = !DILocation(line: 147, column: 9, scope: !470)
!484 = !DILocation(line: 147, column: 24, scope: !470)
!485 = !DILocation(line: 148, column: 9, scope: !470)
!486 = !DILocation(line: 148, column: 22, scope: !470)
!487 = !DILocation(line: 149, column: 9, scope: !470)
!488 = !DILocation(line: 149, column: 19, scope: !470)
!489 = !DILocation(line: 151, column: 13, scope: !490)
!490 = distinct !DILexicalBlock(scope: !470, file: !1, line: 151, column: 13)
!491 = !DILocation(line: 151, column: 66, scope: !490)
!492 = !DILocation(line: 151, column: 13, scope: !470)
!493 = !DILocation(line: 152, column: 19, scope: !490)
!494 = !DILocation(line: 152, column: 26, scope: !490)
!495 = !DILocation(line: 152, column: 43, scope: !490)
!496 = !DILocation(line: 152, column: 33, scope: !490)
!497 = !DILocation(line: 152, column: 13, scope: !490)
!498 = !DILocation(line: 0, scope: !458)
!499 = !DILocation(line: 153, column: 5, scope: !471)
!500 = !DILocation(line: 153, column: 5, scope: !470)
!501 = !DILocation(line: 153, column: 28, scope: !476)
!502 = !DILocation(line: 153, column: 16, scope: !471)
!503 = !DILocation(line: 90, column: 36, scope: !326, inlinedAt: !504)
!504 = distinct !DILocation(line: 156, column: 20, scope: !505)
!505 = distinct !DILexicalBlock(scope: !475, file: !1, line: 156, column: 13)
!506 = !DILocation(line: 90, column: 43, scope: !326, inlinedAt: !504)
!507 = !DILocation(line: 93, column: 5, scope: !326, inlinedAt: !504)
!508 = !DILocation(line: 95, column: 22, scope: !326, inlinedAt: !504)
!509 = !DILocation(line: 95, column: 10, scope: !326, inlinedAt: !504)
!510 = !DILocation(line: 91, column: 16, scope: !326, inlinedAt: !504)
!511 = !DILocation(line: 96, column: 12, scope: !340, inlinedAt: !504)
!512 = !DILocation(line: 96, column: 9, scope: !326, inlinedAt: !504)
!513 = !DILocation(line: 97, column: 12, scope: !326, inlinedAt: !504)
!514 = !DILocation(line: 97, column: 5, scope: !326, inlinedAt: !504)
!515 = !DILocation(line: 98, column: 1, scope: !326, inlinedAt: !504)
!516 = !DILocation(line: 154, column: 13, scope: !475)
!517 = !DILocation(line: 156, column: 56, scope: !505)
!518 = !DILocation(line: 156, column: 13, scope: !475)
!519 = !DILocation(line: 87, column: 39, scope: !172, inlinedAt: !520)
!520 = distinct !DILocation(line: 157, column: 19, scope: !505)
!521 = !DILocation(line: 88, column: 27, scope: !172, inlinedAt: !520)
!522 = !DILocation(line: 88, column: 19, scope: !172, inlinedAt: !520)
!523 = !DILocation(line: 89, column: 5, scope: !172, inlinedAt: !520)
!524 = !DILocation(line: 91, column: 20, scope: !188, inlinedAt: !520)
!525 = !DILocation(line: 91, column: 13, scope: !188, inlinedAt: !520)
!526 = !DILocation(line: 93, column: 20, scope: !188, inlinedAt: !520)
!527 = !DILocation(line: 93, column: 34, scope: !188, inlinedAt: !520)
!528 = !DILocation(line: 93, column: 13, scope: !188, inlinedAt: !520)
!529 = !DILocation(line: 95, column: 20, scope: !188, inlinedAt: !520)
!530 = !DILocation(line: 95, column: 35, scope: !188, inlinedAt: !520)
!531 = !DILocation(line: 95, column: 13, scope: !188, inlinedAt: !520)
!532 = !DILocation(line: 97, column: 20, scope: !188, inlinedAt: !520)
!533 = !DILocation(line: 97, column: 35, scope: !188, inlinedAt: !520)
!534 = !DILocation(line: 97, column: 13, scope: !188, inlinedAt: !520)
!535 = !DILocation(line: 99, column: 20, scope: !188, inlinedAt: !520)
!536 = !DILocation(line: 99, column: 35, scope: !188, inlinedAt: !520)
!537 = !DILocation(line: 99, column: 13, scope: !188, inlinedAt: !520)
!538 = !DILocation(line: 0, scope: !505)
!539 = !DILocation(line: 159, column: 9, scope: !540)
!540 = distinct !DILexicalBlock(scope: !476, file: !1, line: 158, column: 12)
!541 = !DILocation(line: 161, column: 5, scope: !458)
!542 = distinct !DISubprogram(name: "hashTypeExists", scope: !1, file: !1, line: 166, type: !543, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !545)
!543 = !DISubroutineType(types: !544)
!544 = !{!39, !128, !178}
!545 = !{!546, !547, !548, !551, !552}
!546 = !DILocalVariable(name: "o", arg: 1, scope: !542, file: !1, line: 166, type: !128)
!547 = !DILocalVariable(name: "field", arg: 2, scope: !542, file: !1, line: 166, type: !178)
!548 = !DILocalVariable(name: "vstr", scope: !549, file: !1, line: 168, type: !5)
!549 = distinct !DILexicalBlock(scope: !550, file: !1, line: 167, column: 46)
!550 = distinct !DILexicalBlock(scope: !542, file: !1, line: 167, column: 9)
!551 = !DILocalVariable(name: "vlen", scope: !549, file: !1, line: 169, type: !110)
!552 = !DILocalVariable(name: "vll", scope: !549, file: !1, line: 170, type: !260)
!553 = !DILocation(line: 166, column: 26, scope: !542)
!554 = !DILocation(line: 166, column: 33, scope: !542)
!555 = !DILocation(line: 167, column: 12, scope: !550)
!556 = !DILocation(line: 167, column: 21, scope: !550)
!557 = !DILocation(line: 167, column: 9, scope: !542)
!558 = !DILocation(line: 168, column: 9, scope: !549)
!559 = !DILocation(line: 168, column: 24, scope: !549)
!560 = !DILocation(line: 169, column: 9, scope: !549)
!561 = !DILocation(line: 169, column: 22, scope: !549)
!562 = !DILocation(line: 170, column: 9, scope: !549)
!563 = !DILocation(line: 170, column: 19, scope: !549)
!564 = !DILocation(line: 172, column: 13, scope: !565)
!565 = distinct !DILexicalBlock(scope: !549, file: !1, line: 172, column: 13)
!566 = !DILocation(line: 172, column: 66, scope: !565)
!567 = !DILocation(line: 172, column: 13, scope: !549)
!568 = !DILocation(line: 0, scope: !550)
!569 = !DILocation(line: 173, column: 5, scope: !550)
!570 = !DILocation(line: 173, column: 28, scope: !571)
!571 = distinct !DILexicalBlock(scope: !550, file: !1, line: 173, column: 16)
!572 = !DILocation(line: 173, column: 16, scope: !550)
!573 = !DILocation(line: 90, column: 36, scope: !326, inlinedAt: !574)
!574 = distinct !DILocation(line: 174, column: 13, scope: !575)
!575 = distinct !DILexicalBlock(scope: !576, file: !1, line: 174, column: 13)
!576 = distinct !DILexicalBlock(scope: !571, file: !1, line: 173, column: 48)
!577 = !DILocation(line: 90, column: 43, scope: !326, inlinedAt: !574)
!578 = !DILocation(line: 93, column: 5, scope: !326, inlinedAt: !574)
!579 = !DILocation(line: 95, column: 22, scope: !326, inlinedAt: !574)
!580 = !DILocation(line: 95, column: 10, scope: !326, inlinedAt: !574)
!581 = !DILocation(line: 91, column: 16, scope: !326, inlinedAt: !574)
!582 = !DILocation(line: 96, column: 12, scope: !340, inlinedAt: !574)
!583 = !DILocation(line: 96, column: 9, scope: !326, inlinedAt: !574)
!584 = !DILocation(line: 96, column: 21, scope: !340, inlinedAt: !574)
!585 = !DILocation(line: 98, column: 1, scope: !326, inlinedAt: !574)
!586 = !DILocation(line: 174, column: 13, scope: !576)
!587 = !DILocation(line: 97, column: 12, scope: !326, inlinedAt: !574)
!588 = !DILocation(line: 97, column: 5, scope: !326, inlinedAt: !574)
!589 = !DILocation(line: 174, column: 48, scope: !575)
!590 = !DILocation(line: 176, column: 9, scope: !591)
!591 = distinct !DILexicalBlock(scope: !571, file: !1, line: 175, column: 12)
!592 = !DILocation(line: 178, column: 5, scope: !542)
!593 = !DILocation(line: 0, scope: !575)
!594 = !DILocation(line: 179, column: 1, scope: !542)
!595 = distinct !DISubprogram(name: "hashTypeSet", scope: !1, file: !1, line: 202, type: !596, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !598)
!596 = !DISubroutineType(types: !597)
!597 = !{!39, !128, !178, !178, !39}
!598 = !{!599, !600, !601, !602, !603, !604, !607, !608, !609, !612, !615}
!599 = !DILocalVariable(name: "o", arg: 1, scope: !595, file: !1, line: 202, type: !128)
!600 = !DILocalVariable(name: "field", arg: 2, scope: !595, file: !1, line: 202, type: !178)
!601 = !DILocalVariable(name: "value", arg: 3, scope: !595, file: !1, line: 202, type: !178)
!602 = !DILocalVariable(name: "flags", arg: 4, scope: !595, file: !1, line: 202, type: !39)
!603 = !DILocalVariable(name: "update", scope: !595, file: !1, line: 203, type: !39)
!604 = !DILocalVariable(name: "zl", scope: !605, file: !1, line: 206, type: !5)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 205, column: 46)
!606 = distinct !DILexicalBlock(scope: !595, file: !1, line: 205, column: 9)
!607 = !DILocalVariable(name: "fptr", scope: !605, file: !1, line: 206, type: !5)
!608 = !DILocalVariable(name: "vptr", scope: !605, file: !1, line: 206, type: !5)
!609 = !DILocalVariable(name: "de", scope: !610, file: !1, line: 240, type: !53)
!610 = distinct !DILexicalBlock(scope: !611, file: !1, line: 239, column: 48)
!611 = distinct !DILexicalBlock(scope: !606, file: !1, line: 239, column: 16)
!612 = !DILocalVariable(name: "f", scope: !613, file: !1, line: 251, type: !178)
!613 = distinct !DILexicalBlock(scope: !614, file: !1, line: 250, column: 16)
!614 = distinct !DILexicalBlock(scope: !610, file: !1, line: 241, column: 13)
!615 = !DILocalVariable(name: "v", scope: !613, file: !1, line: 251, type: !178)
!616 = !DILocation(line: 202, column: 23, scope: !595)
!617 = !DILocation(line: 202, column: 30, scope: !595)
!618 = !DILocation(line: 202, column: 41, scope: !595)
!619 = !DILocation(line: 202, column: 52, scope: !595)
!620 = !DILocation(line: 203, column: 9, scope: !595)
!621 = !DILocation(line: 205, column: 12, scope: !606)
!622 = !DILocation(line: 205, column: 21, scope: !606)
!623 = !DILocation(line: 205, column: 9, scope: !595)
!624 = !DILocation(line: 206, column: 9, scope: !605)
!625 = !DILocation(line: 208, column: 17, scope: !605)
!626 = !DILocation(line: 206, column: 24, scope: !605)
!627 = !DILocation(line: 209, column: 16, scope: !605)
!628 = !DILocation(line: 206, column: 29, scope: !605)
!629 = !DILocation(line: 210, column: 18, scope: !630)
!630 = distinct !DILexicalBlock(scope: !605, file: !1, line: 210, column: 13)
!631 = !DILocation(line: 210, column: 13, scope: !605)
!632 = !DILocation(line: 88, column: 27, scope: !172, inlinedAt: !633)
!633 = distinct !DILocation(line: 229, column: 57, scope: !634)
!634 = distinct !DILexicalBlock(scope: !635, file: !1, line: 227, column: 22)
!635 = distinct !DILexicalBlock(scope: !605, file: !1, line: 227, column: 13)
!636 = !DILocation(line: 87, column: 39, scope: !172, inlinedAt: !637)
!637 = distinct !DILocation(line: 211, column: 61, scope: !638)
!638 = distinct !DILexicalBlock(scope: !630, file: !1, line: 210, column: 27)
!639 = !DILocation(line: 88, column: 27, scope: !172, inlinedAt: !637)
!640 = !DILocation(line: 88, column: 19, scope: !172, inlinedAt: !637)
!641 = !DILocation(line: 89, column: 5, scope: !172, inlinedAt: !637)
!642 = !DILocation(line: 91, column: 20, scope: !188, inlinedAt: !637)
!643 = !DILocation(line: 91, column: 13, scope: !188, inlinedAt: !637)
!644 = !DILocation(line: 93, column: 20, scope: !188, inlinedAt: !637)
!645 = !DILocation(line: 93, column: 34, scope: !188, inlinedAt: !637)
!646 = !DILocation(line: 93, column: 13, scope: !188, inlinedAt: !637)
!647 = !DILocation(line: 95, column: 20, scope: !188, inlinedAt: !637)
!648 = !DILocation(line: 95, column: 35, scope: !188, inlinedAt: !637)
!649 = !DILocation(line: 95, column: 13, scope: !188, inlinedAt: !637)
!650 = !DILocation(line: 97, column: 20, scope: !188, inlinedAt: !637)
!651 = !DILocation(line: 97, column: 35, scope: !188, inlinedAt: !637)
!652 = !DILocation(line: 97, column: 13, scope: !188, inlinedAt: !637)
!653 = !DILocation(line: 99, column: 20, scope: !188, inlinedAt: !637)
!654 = !DILocation(line: 99, column: 35, scope: !188, inlinedAt: !637)
!655 = !DILocation(line: 99, column: 13, scope: !188, inlinedAt: !637)
!656 = !DILocation(line: 0, scope: !188, inlinedAt: !637)
!657 = !DILocation(line: 0, scope: !638)
!658 = !DILocation(line: 102, column: 1, scope: !172, inlinedAt: !637)
!659 = !DILocation(line: 211, column: 61, scope: !638)
!660 = !DILocation(line: 211, column: 20, scope: !638)
!661 = !DILocation(line: 212, column: 22, scope: !662)
!662 = distinct !DILexicalBlock(scope: !638, file: !1, line: 212, column: 17)
!663 = !DILocation(line: 212, column: 17, scope: !638)
!664 = !DILocation(line: 214, column: 24, scope: !665)
!665 = distinct !DILexicalBlock(scope: !662, file: !1, line: 212, column: 31)
!666 = !DILocation(line: 206, column: 36, scope: !605)
!667 = !DILocation(line: 214, column: 22, scope: !665)
!668 = !DILocation(line: 215, column: 17, scope: !665)
!669 = !DILocation(line: 219, column: 22, scope: !665)
!670 = !DILocation(line: 222, column: 40, scope: !665)
!671 = !DILocation(line: 87, column: 39, scope: !172, inlinedAt: !672)
!672 = distinct !DILocation(line: 223, column: 25, scope: !665)
!673 = !DILocation(line: 88, column: 27, scope: !172, inlinedAt: !672)
!674 = !DILocation(line: 88, column: 19, scope: !172, inlinedAt: !672)
!675 = !DILocation(line: 89, column: 5, scope: !172, inlinedAt: !672)
!676 = !DILocation(line: 91, column: 20, scope: !188, inlinedAt: !672)
!677 = !DILocation(line: 91, column: 13, scope: !188, inlinedAt: !672)
!678 = !DILocation(line: 93, column: 20, scope: !188, inlinedAt: !672)
!679 = !DILocation(line: 93, column: 34, scope: !188, inlinedAt: !672)
!680 = !DILocation(line: 93, column: 13, scope: !188, inlinedAt: !672)
!681 = !DILocation(line: 95, column: 20, scope: !188, inlinedAt: !672)
!682 = !DILocation(line: 95, column: 35, scope: !188, inlinedAt: !672)
!683 = !DILocation(line: 95, column: 13, scope: !188, inlinedAt: !672)
!684 = !DILocation(line: 97, column: 20, scope: !188, inlinedAt: !672)
!685 = !DILocation(line: 97, column: 35, scope: !188, inlinedAt: !672)
!686 = !DILocation(line: 97, column: 13, scope: !188, inlinedAt: !672)
!687 = !DILocation(line: 99, column: 20, scope: !188, inlinedAt: !672)
!688 = !DILocation(line: 99, column: 35, scope: !188, inlinedAt: !672)
!689 = !DILocation(line: 99, column: 13, scope: !188, inlinedAt: !672)
!690 = !DILocation(line: 0, scope: !188, inlinedAt: !672)
!691 = !DILocation(line: 0, scope: !665)
!692 = !DILocation(line: 102, column: 1, scope: !172, inlinedAt: !672)
!693 = !DILocation(line: 223, column: 25, scope: !665)
!694 = !DILocation(line: 222, column: 22, scope: !665)
!695 = !DILocation(line: 224, column: 13, scope: !665)
!696 = !DILocation(line: 227, column: 13, scope: !605)
!697 = !DILocation(line: 87, column: 39, scope: !172, inlinedAt: !633)
!698 = !DILocation(line: 88, column: 19, scope: !172, inlinedAt: !633)
!699 = !DILocation(line: 89, column: 5, scope: !172, inlinedAt: !633)
!700 = !DILocation(line: 91, column: 20, scope: !188, inlinedAt: !633)
!701 = !DILocation(line: 91, column: 13, scope: !188, inlinedAt: !633)
!702 = !DILocation(line: 93, column: 20, scope: !188, inlinedAt: !633)
!703 = !DILocation(line: 93, column: 34, scope: !188, inlinedAt: !633)
!704 = !DILocation(line: 93, column: 13, scope: !188, inlinedAt: !633)
!705 = !DILocation(line: 95, column: 20, scope: !188, inlinedAt: !633)
!706 = !DILocation(line: 95, column: 35, scope: !188, inlinedAt: !633)
!707 = !DILocation(line: 95, column: 13, scope: !188, inlinedAt: !633)
!708 = !DILocation(line: 97, column: 20, scope: !188, inlinedAt: !633)
!709 = !DILocation(line: 97, column: 35, scope: !188, inlinedAt: !633)
!710 = !DILocation(line: 97, column: 13, scope: !188, inlinedAt: !633)
!711 = !DILocation(line: 99, column: 20, scope: !188, inlinedAt: !633)
!712 = !DILocation(line: 99, column: 35, scope: !188, inlinedAt: !633)
!713 = !DILocation(line: 99, column: 13, scope: !188, inlinedAt: !633)
!714 = !DILocation(line: 0, scope: !188, inlinedAt: !633)
!715 = !DILocation(line: 0, scope: !634)
!716 = !DILocation(line: 102, column: 1, scope: !172, inlinedAt: !633)
!717 = !DILocation(line: 229, column: 57, scope: !634)
!718 = !DILocation(line: 229, column: 18, scope: !634)
!719 = !DILocation(line: 87, column: 39, scope: !172, inlinedAt: !720)
!720 = distinct !DILocation(line: 231, column: 57, scope: !634)
!721 = !DILocation(line: 88, column: 27, scope: !172, inlinedAt: !720)
!722 = !DILocation(line: 88, column: 19, scope: !172, inlinedAt: !720)
!723 = !DILocation(line: 89, column: 5, scope: !172, inlinedAt: !720)
!724 = !DILocation(line: 91, column: 20, scope: !188, inlinedAt: !720)
!725 = !DILocation(line: 91, column: 13, scope: !188, inlinedAt: !720)
!726 = !DILocation(line: 93, column: 20, scope: !188, inlinedAt: !720)
!727 = !DILocation(line: 93, column: 34, scope: !188, inlinedAt: !720)
!728 = !DILocation(line: 93, column: 13, scope: !188, inlinedAt: !720)
!729 = !DILocation(line: 95, column: 20, scope: !188, inlinedAt: !720)
!730 = !DILocation(line: 95, column: 35, scope: !188, inlinedAt: !720)
!731 = !DILocation(line: 95, column: 13, scope: !188, inlinedAt: !720)
!732 = !DILocation(line: 97, column: 20, scope: !188, inlinedAt: !720)
!733 = !DILocation(line: 97, column: 35, scope: !188, inlinedAt: !720)
!734 = !DILocation(line: 97, column: 13, scope: !188, inlinedAt: !720)
!735 = !DILocation(line: 99, column: 20, scope: !188, inlinedAt: !720)
!736 = !DILocation(line: 99, column: 35, scope: !188, inlinedAt: !720)
!737 = !DILocation(line: 99, column: 13, scope: !188, inlinedAt: !720)
!738 = !DILocation(line: 0, scope: !188, inlinedAt: !720)
!739 = !DILocation(line: 102, column: 1, scope: !172, inlinedAt: !720)
!740 = !DILocation(line: 231, column: 57, scope: !634)
!741 = !DILocation(line: 231, column: 18, scope: !634)
!742 = !DILocation(line: 233, column: 9, scope: !634)
!743 = !DILocation(line: 234, column: 16, scope: !605)
!744 = !DILocalVariable(name: "o", arg: 1, scope: !745, file: !1, line: 311, type: !748)
!745 = distinct !DISubprogram(name: "hashTypeLength", scope: !1, file: !1, line: 311, type: !746, isLocal: false, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !750)
!746 = !DISubroutineType(types: !747)
!747 = !{!27, !748}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!750 = !{!744, !751}
!751 = !DILocalVariable(name: "length", scope: !745, file: !1, line: 312, type: !27)
!752 = !DILocation(line: 311, column: 42, scope: !745, inlinedAt: !753)
!753 = distinct !DILocation(line: 237, column: 13, scope: !754)
!754 = distinct !DILexicalBlock(scope: !605, file: !1, line: 237, column: 13)
!755 = !DILocation(line: 312, column: 19, scope: !745, inlinedAt: !753)
!756 = !DILocation(line: 314, column: 12, scope: !757, inlinedAt: !753)
!757 = distinct !DILexicalBlock(scope: !745, file: !1, line: 314, column: 9)
!758 = !DILocation(line: 314, column: 21, scope: !757, inlinedAt: !753)
!759 = !DILocation(line: 314, column: 9, scope: !745, inlinedAt: !753)
!760 = !DILocation(line: 315, column: 18, scope: !761, inlinedAt: !753)
!761 = distinct !DILexicalBlock(scope: !757, file: !1, line: 314, column: 46)
!762 = !DILocation(line: 315, column: 37, scope: !761, inlinedAt: !753)
!763 = !DILocation(line: 316, column: 5, scope: !761, inlinedAt: !753)
!764 = !DILocation(line: 316, column: 28, scope: !765, inlinedAt: !753)
!765 = distinct !DILexicalBlock(scope: !757, file: !1, line: 316, column: 16)
!766 = !DILocation(line: 316, column: 16, scope: !757, inlinedAt: !753)
!767 = !DILocation(line: 317, column: 18, scope: !768, inlinedAt: !753)
!768 = distinct !DILexicalBlock(scope: !765, file: !1, line: 316, column: 48)
!769 = !{!770, !205, i64 24}
!770 = !{!"dictht", !163, i64 0, !205, i64 8, !205, i64 16, !205, i64 24}
!771 = !DILocation(line: 319, column: 9, scope: !772, inlinedAt: !753)
!772 = distinct !DILexicalBlock(scope: !765, file: !1, line: 318, column: 12)
!773 = !DILocation(line: 0, scope: !768, inlinedAt: !753)
!774 = !DILocation(line: 321, column: 5, scope: !745, inlinedAt: !753)
!775 = !DILocation(line: 237, column: 40, scope: !754)
!776 = !{!777, !205, i64 2800}
!777 = !{!"redisServer", !170, i64 0, !163, i64 8, !163, i64 16, !163, i64 24, !170, i64 32, !170, i64 36, !170, i64 40, !163, i64 48, !163, i64 56, !163, i64 64, !163, i64 72, !170, i64 80, !170, i64 84, !170, i64 88, !170, i64 92, !163, i64 96, !163, i64 104, !170, i64 112, !170, i64 116, !164, i64 120, !170, i64 164, !205, i64 168, !170, i64 176, !163, i64 184, !163, i64 192, !163, i64 200, !164, i64 208, !170, i64 216, !170, i64 220, !164, i64 224, !170, i64 352, !163, i64 360, !170, i64 368, !164, i64 372, !170, i64 436, !170, i64 440, !164, i64 444, !170, i64 508, !163, i64 512, !163, i64 520, !163, i64 528, !163, i64 536, !163, i64 544, !163, i64 552, !163, i64 560, !170, i64 568, !452, i64 576, !164, i64 584, !163, i64 840, !205, i64 848, !170, i64 856, !170, i64 860, !205, i64 864, !205, i64 872, !205, i64 880, !205, i64 888, !163, i64 896, !163, i64 904, !163, i64 912, !163, i64 920, !163, i64 928, !163, i64 936, !163, i64 944, !163, i64 952, !163, i64 960, !163, i64 968, !163, i64 976, !163, i64 984, !163, i64 992, !205, i64 1000, !452, i64 1008, !452, i64 1016, !452, i64 1024, !778, i64 1032, !452, i64 1040, !452, i64 1048, !452, i64 1056, !452, i64 1064, !452, i64 1072, !452, i64 1080, !452, i64 1088, !452, i64 1096, !452, i64 1104, !205, i64 1112, !452, i64 1120, !778, i64 1128, !452, i64 1136, !452, i64 1144, !452, i64 1152, !452, i64 1160, !163, i64 1168, !452, i64 1176, !452, i64 1184, !205, i64 1192, !779, i64 1200, !452, i64 1240, !452, i64 1248, !205, i64 1256, !205, i64 1264, !164, i64 1272, !170, i64 1728, !170, i64 1732, !170, i64 1736, !170, i64 1740, !170, i64 1744, !205, i64 1752, !170, i64 1760, !170, i64 1764, !170, i64 1768, !170, i64 1772, !205, i64 1776, !205, i64 1784, !170, i64 1792, !170, i64 1796, !170, i64 1800, !170, i64 1804, !164, i64 1808, !170, i64 1880, !170, i64 1884, !163, i64 1888, !170, i64 1896, !170, i64 1900, !205, i64 1904, !205, i64 1912, !205, i64 1920, !205, i64 1928, !170, i64 1936, !170, i64 1940, !163, i64 1944, !163, i64 1952, !170, i64 1960, !170, i64 1964, !205, i64 1968, !205, i64 1976, !205, i64 1984, !205, i64 1992, !170, i64 2000, !205, i64 2008, !170, i64 2016, !170, i64 2020, !170, i64 2024, !170, i64 2028, !170, i64 2032, !170, i64 2036, !170, i64 2040, !170, i64 2044, !170, i64 2048, !170, i64 2052, !170, i64 2056, !170, i64 2060, !170, i64 2064, !163, i64 2072, !452, i64 2080, !452, i64 2088, !170, i64 2096, !163, i64 2104, !170, i64 2112, !163, i64 2120, !170, i64 2128, !170, i64 2132, !205, i64 2136, !205, i64 2144, !205, i64 2152, !205, i64 2160, !170, i64 2168, !170, i64 2172, !170, i64 2176, !170, i64 2180, !170, i64 2184, !170, i64 2188, !164, i64 2192, !780, i64 2200, !781, i64 2224, !163, i64 2240, !170, i64 2248, !163, i64 2256, !170, i64 2264, !164, i64 2268, !164, i64 2309, !452, i64 2352, !452, i64 2360, !170, i64 2368, !170, i64 2372, !163, i64 2376, !452, i64 2384, !452, i64 2392, !452, i64 2400, !452, i64 2408, !205, i64 2416, !205, i64 2424, !170, i64 2432, !170, i64 2436, !170, i64 2440, !170, i64 2444, !170, i64 2448, !163, i64 2456, !163, i64 2464, !170, i64 2472, !170, i64 2476, !163, i64 2480, !163, i64 2488, !170, i64 2496, !170, i64 2500, !205, i64 2504, !205, i64 2512, !205, i64 2520, !170, i64 2528, !170, i64 2532, !163, i64 2536, !205, i64 2544, !170, i64 2552, !170, i64 2556, !170, i64 2560, !205, i64 2568, !170, i64 2576, !170, i64 2580, !170, i64 2584, !163, i64 2592, !164, i64 2600, !452, i64 2648, !170, i64 2656, !163, i64 2664, !163, i64 2672, !170, i64 2680, !163, i64 2688, !170, i64 2696, !170, i64 2700, !452, i64 2704, !170, i64 2712, !170, i64 2716, !170, i64 2720, !170, i64 2724, !452, i64 2728, !170, i64 2736, !164, i64 2740, !163, i64 2768, !163, i64 2776, !170, i64 2784, !170, i64 2788, !170, i64 2792, !170, i64 2796, !205, i64 2800, !205, i64 2808, !205, i64 2816, !205, i64 2824, !205, i64 2832, !205, i64 2840, !205, i64 2848, !205, i64 2856, !170, i64 2864, !170, i64 2868, !205, i64 2872, !205, i64 2880, !170, i64 2888, !452, i64 2896, !163, i64 2904, !163, i64 2912, !170, i64 2920, !170, i64 2924, !452, i64 2928, !163, i64 2936, !163, i64 2944, !170, i64 2952, !170, i64 2956, !170, i64 2960, !170, i64 2964, !163, i64 2968, !170, i64 2976, !170, i64 2980, !170, i64 2984, !163, i64 2992, !163, i64 3000, !163, i64 3008, !163, i64 3016, !452, i64 3024, !452, i64 3032, !452, i64 3040, !170, i64 3048, !170, i64 3052, !170, i64 3056, !170, i64 3060, !170, i64 3064, !170, i64 3068, !170, i64 3072, !170, i64 3076, !170, i64 3080, !170, i64 3084, !170, i64 3088, !452, i64 3096, !163, i64 3104, !163, i64 3112, !163, i64 3120, !170, i64 3128, !170, i64 3132, !170, i64 3136, !205, i64 3144, !163, i64 3152, !163, i64 3160, !163, i64 3168}
!778 = !{!"double", !164, i64 0}
!779 = !{!"malloc_stats", !205, i64 0, !205, i64 8, !205, i64 16, !205, i64 24, !205, i64 32}
!780 = !{!"", !170, i64 0, !205, i64 8, !452, i64 16}
!781 = !{!"redisOpArray", !163, i64 0, !170, i64 8}
!782 = !DILocation(line: 237, column: 31, scope: !754)
!783 = !DILocation(line: 237, column: 13, scope: !605)
!784 = !DILocation(line: 500, column: 28, scope: !214, inlinedAt: !785)
!785 = distinct !DILocation(line: 238, column: 13, scope: !754)
!786 = !DILocation(line: 500, column: 35, scope: !214, inlinedAt: !785)
!787 = !DILocation(line: 501, column: 12, scope: !224, inlinedAt: !785)
!788 = !DILocation(line: 501, column: 21, scope: !224, inlinedAt: !785)
!789 = !DILocation(line: 501, column: 9, scope: !214, inlinedAt: !785)
!790 = !DILocation(line: 503, column: 28, scope: !228, inlinedAt: !785)
!791 = !DILocation(line: 503, column: 16, scope: !224, inlinedAt: !785)
!792 = !DILocation(line: 504, column: 9, scope: !231, inlinedAt: !785)
!793 = !DILocation(line: 506, column: 9, scope: !233, inlinedAt: !785)
!794 = !DILocation(line: 502, column: 9, scope: !235, inlinedAt: !785)
!795 = !DILocation(line: 508, column: 1, scope: !214, inlinedAt: !785)
!796 = !DILocation(line: 238, column: 13, scope: !754)
!797 = !DILocation(line: 239, column: 5, scope: !606)
!798 = !DILocation(line: 239, column: 5, scope: !605)
!799 = !DILocation(line: 239, column: 28, scope: !611)
!800 = !DILocation(line: 239, column: 16, scope: !606)
!801 = !DILocation(line: 240, column: 37, scope: !610)
!802 = !DILocation(line: 240, column: 25, scope: !610)
!803 = !DILocation(line: 240, column: 20, scope: !610)
!804 = !DILocation(line: 241, column: 13, scope: !614)
!805 = !DILocation(line: 241, column: 13, scope: !610)
!806 = !DILocation(line: 242, column: 21, scope: !807)
!807 = distinct !DILexicalBlock(scope: !614, file: !1, line: 241, column: 17)
!808 = !DILocation(line: 242, column: 13, scope: !807)
!809 = !DILocation(line: 243, column: 23, scope: !810)
!810 = distinct !DILexicalBlock(scope: !807, file: !1, line: 243, column: 17)
!811 = !DILocation(line: 243, column: 17, scope: !807)
!812 = !DILocation(line: 247, column: 34, scope: !813)
!813 = distinct !DILexicalBlock(scope: !810, file: !1, line: 246, column: 20)
!814 = !DILocation(line: 0, scope: !815)
!815 = distinct !DILexicalBlock(scope: !810, file: !1, line: 243, column: 46)
!816 = !DILocation(line: 250, column: 9, scope: !807)
!817 = !DILocation(line: 252, column: 23, scope: !818)
!818 = distinct !DILexicalBlock(scope: !613, file: !1, line: 252, column: 17)
!819 = !DILocation(line: 252, column: 17, scope: !613)
!820 = !DILocation(line: 256, column: 21, scope: !821)
!821 = distinct !DILexicalBlock(scope: !818, file: !1, line: 255, column: 20)
!822 = !DILocation(line: 251, column: 17, scope: !613)
!823 = !DILocation(line: 0, scope: !821)
!824 = !DILocation(line: 258, column: 23, scope: !825)
!825 = distinct !DILexicalBlock(scope: !613, file: !1, line: 258, column: 17)
!826 = !DILocation(line: 258, column: 17, scope: !613)
!827 = !DILocation(line: 262, column: 21, scope: !828)
!828 = distinct !DILexicalBlock(scope: !825, file: !1, line: 261, column: 20)
!829 = !DILocation(line: 251, column: 19, scope: !613)
!830 = !DILocation(line: 0, scope: !828)
!831 = !DILocation(line: 264, column: 24, scope: !613)
!832 = !DILocation(line: 264, column: 13, scope: !613)
!833 = !DILocation(line: 0, scope: !834)
!834 = distinct !DILexicalBlock(scope: !825, file: !1, line: 258, column: 46)
!835 = !DILocation(line: 0, scope: !595)
!836 = !DILocation(line: 267, column: 9, scope: !837)
!837 = distinct !DILexicalBlock(scope: !611, file: !1, line: 266, column: 12)
!838 = !DILocation(line: 0, scope: !807)
!839 = !DILocation(line: 272, column: 15, scope: !840)
!840 = distinct !DILexicalBlock(scope: !595, file: !1, line: 272, column: 9)
!841 = !DILocation(line: 272, column: 40, scope: !840)
!842 = !DILocation(line: 272, column: 37, scope: !840)
!843 = !DILocation(line: 272, column: 47, scope: !840)
!844 = !DILocation(line: 273, column: 15, scope: !845)
!845 = distinct !DILexicalBlock(scope: !595, file: !1, line: 273, column: 9)
!846 = !DILocation(line: 273, column: 40, scope: !845)
!847 = !DILocation(line: 273, column: 37, scope: !845)
!848 = !DILocation(line: 273, column: 47, scope: !845)
!849 = !DILocation(line: 274, column: 5, scope: !595)
!850 = !DILocation(line: 311, column: 42, scope: !745)
!851 = !DILocation(line: 312, column: 19, scope: !745)
!852 = !DILocation(line: 314, column: 12, scope: !757)
!853 = !DILocation(line: 314, column: 21, scope: !757)
!854 = !DILocation(line: 314, column: 9, scope: !745)
!855 = !DILocation(line: 315, column: 32, scope: !761)
!856 = !DILocation(line: 315, column: 18, scope: !761)
!857 = !DILocation(line: 315, column: 37, scope: !761)
!858 = !DILocation(line: 316, column: 5, scope: !761)
!859 = !DILocation(line: 316, column: 28, scope: !765)
!860 = !DILocation(line: 316, column: 16, scope: !757)
!861 = !DILocation(line: 317, column: 18, scope: !768)
!862 = !DILocation(line: 319, column: 9, scope: !772)
!863 = !DILocation(line: 0, scope: !768)
!864 = !DILocation(line: 321, column: 5, scope: !745)
!865 = distinct !DISubprogram(name: "hashTypeDelete", scope: !1, file: !1, line: 279, type: !543, isLocal: false, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !866)
!866 = !{!867, !868, !869, !870, !873}
!867 = !DILocalVariable(name: "o", arg: 1, scope: !865, file: !1, line: 279, type: !128)
!868 = !DILocalVariable(name: "field", arg: 2, scope: !865, file: !1, line: 279, type: !178)
!869 = !DILocalVariable(name: "deleted", scope: !865, file: !1, line: 280, type: !39)
!870 = !DILocalVariable(name: "zl", scope: !871, file: !1, line: 283, type: !5)
!871 = distinct !DILexicalBlock(scope: !872, file: !1, line: 282, column: 46)
!872 = distinct !DILexicalBlock(scope: !865, file: !1, line: 282, column: 9)
!873 = !DILocalVariable(name: "fptr", scope: !871, file: !1, line: 283, type: !5)
!874 = !DILocation(line: 279, column: 26, scope: !865)
!875 = !DILocation(line: 279, column: 33, scope: !865)
!876 = !DILocation(line: 280, column: 9, scope: !865)
!877 = !DILocation(line: 282, column: 12, scope: !872)
!878 = !DILocation(line: 282, column: 21, scope: !872)
!879 = !DILocation(line: 282, column: 9, scope: !865)
!880 = !DILocation(line: 283, column: 9, scope: !871)
!881 = !DILocation(line: 285, column: 17, scope: !871)
!882 = !DILocation(line: 283, column: 24, scope: !871)
!883 = !DILocation(line: 286, column: 16, scope: !871)
!884 = !DILocation(line: 283, column: 29, scope: !871)
!885 = !DILocation(line: 286, column: 14, scope: !871)
!886 = !DILocation(line: 287, column: 18, scope: !887)
!887 = distinct !DILexicalBlock(scope: !871, file: !1, line: 287, column: 13)
!888 = !DILocation(line: 287, column: 13, scope: !871)
!889 = !DILocation(line: 87, column: 39, scope: !172, inlinedAt: !890)
!890 = distinct !DILocation(line: 288, column: 61, scope: !891)
!891 = distinct !DILexicalBlock(scope: !887, file: !1, line: 287, column: 27)
!892 = !DILocation(line: 88, column: 27, scope: !172, inlinedAt: !890)
!893 = !DILocation(line: 88, column: 19, scope: !172, inlinedAt: !890)
!894 = !DILocation(line: 89, column: 5, scope: !172, inlinedAt: !890)
!895 = !DILocation(line: 91, column: 20, scope: !188, inlinedAt: !890)
!896 = !DILocation(line: 91, column: 13, scope: !188, inlinedAt: !890)
!897 = !DILocation(line: 93, column: 20, scope: !188, inlinedAt: !890)
!898 = !DILocation(line: 93, column: 34, scope: !188, inlinedAt: !890)
!899 = !DILocation(line: 93, column: 13, scope: !188, inlinedAt: !890)
!900 = !DILocation(line: 95, column: 20, scope: !188, inlinedAt: !890)
!901 = !DILocation(line: 95, column: 35, scope: !188, inlinedAt: !890)
!902 = !DILocation(line: 95, column: 13, scope: !188, inlinedAt: !890)
!903 = !DILocation(line: 97, column: 20, scope: !188, inlinedAt: !890)
!904 = !DILocation(line: 97, column: 35, scope: !188, inlinedAt: !890)
!905 = !DILocation(line: 97, column: 13, scope: !188, inlinedAt: !890)
!906 = !DILocation(line: 99, column: 20, scope: !188, inlinedAt: !890)
!907 = !DILocation(line: 99, column: 35, scope: !188, inlinedAt: !890)
!908 = !DILocation(line: 99, column: 13, scope: !188, inlinedAt: !890)
!909 = !DILocation(line: 0, scope: !188, inlinedAt: !890)
!910 = !DILocation(line: 0, scope: !891)
!911 = !DILocation(line: 102, column: 1, scope: !172, inlinedAt: !890)
!912 = !DILocation(line: 288, column: 61, scope: !891)
!913 = !DILocation(line: 288, column: 20, scope: !891)
!914 = !DILocation(line: 288, column: 18, scope: !891)
!915 = !DILocation(line: 289, column: 22, scope: !916)
!916 = distinct !DILexicalBlock(scope: !891, file: !1, line: 289, column: 17)
!917 = !DILocation(line: 289, column: 17, scope: !891)
!918 = !DILocation(line: 290, column: 22, scope: !919)
!919 = distinct !DILexicalBlock(scope: !916, file: !1, line: 289, column: 31)
!920 = !DILocation(line: 291, column: 22, scope: !919)
!921 = !DILocation(line: 292, column: 24, scope: !919)
!922 = !DILocation(line: 294, column: 13, scope: !919)
!923 = !DILocation(line: 0, scope: !865)
!924 = !DILocation(line: 296, column: 5, scope: !872)
!925 = !DILocation(line: 296, column: 5, scope: !871)
!926 = !DILocation(line: 296, column: 28, scope: !927)
!927 = distinct !DILexicalBlock(scope: !872, file: !1, line: 296, column: 16)
!928 = !DILocation(line: 296, column: 16, scope: !872)
!929 = !DILocation(line: 297, column: 34, scope: !930)
!930 = distinct !DILexicalBlock(scope: !931, file: !1, line: 297, column: 13)
!931 = distinct !DILexicalBlock(scope: !927, file: !1, line: 296, column: 48)
!932 = !DILocation(line: 297, column: 13, scope: !930)
!933 = !DILocation(line: 297, column: 46, scope: !930)
!934 = !DILocation(line: 297, column: 13, scope: !931)
!935 = !DILocation(line: 301, column: 34, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !1, line: 301, column: 17)
!937 = distinct !DILexicalBlock(scope: !930, file: !1, line: 297, column: 55)
!938 = !DILocation(line: 301, column: 17, scope: !936)
!939 = !DILocation(line: 301, column: 17, scope: !937)
!940 = !DILocation(line: 301, column: 54, scope: !936)
!941 = !DILocation(line: 301, column: 40, scope: !936)
!942 = !DILocation(line: 305, column: 9, scope: !943)
!943 = distinct !DILexicalBlock(scope: !927, file: !1, line: 304, column: 12)
!944 = !DILocation(line: 307, column: 5, scope: !865)
!945 = distinct !DISubprogram(name: "hashTypeInitIterator", scope: !1, file: !1, line: 324, type: !946, isLocal: false, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !969)
!946 = !DISubroutineType(types: !947)
!947 = !{!948, !128}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashTypeIterator", file: !130, line: 1375, baseType: !950)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 1367, size: 384, elements: !951)
!951 = !{!952, !953, !954, !955, !956, !968}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !950, file: !130, line: 1368, baseType: !128, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !950, file: !130, line: 1369, baseType: !39, size: 32, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "fptr", scope: !950, file: !130, line: 1371, baseType: !5, size: 64, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "vptr", scope: !950, file: !130, line: 1371, baseType: !5, size: 64, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !950, file: !130, line: 1373, baseType: !957, size: 64, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !11, line: 95, baseType: !959)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !11, line: 88, size: 384, elements: !960)
!960 = !{!961, !962, !963, !964, !965, !966, !967}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !959, file: !11, line: 89, baseType: !9, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !959, file: !11, line: 90, baseType: !66, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !959, file: !11, line: 91, baseType: !39, size: 32, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !959, file: !11, line: 91, baseType: !39, size: 32, offset: 160)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !959, file: !11, line: 92, baseType: !53, size: 64, offset: 192)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !959, file: !11, line: 92, baseType: !53, size: 64, offset: 256)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !959, file: !11, line: 94, baseType: !260, size: 64, offset: 320)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !950, file: !130, line: 1374, baseType: !53, size: 64, offset: 320)
!969 = !{!970, !971}
!970 = !DILocalVariable(name: "subject", arg: 1, scope: !945, file: !1, line: 324, type: !128)
!971 = !DILocalVariable(name: "hi", scope: !945, file: !1, line: 325, type: !948)
!972 = !DILocation(line: 324, column: 46, scope: !945)
!973 = !DILocation(line: 325, column: 28, scope: !945)
!974 = !DILocation(line: 325, column: 23, scope: !945)
!975 = !DILocation(line: 326, column: 9, scope: !945)
!976 = !DILocation(line: 326, column: 17, scope: !945)
!977 = !{!978, !163, i64 0}
!978 = !{!"", !163, i64 0, !170, i64 8, !163, i64 16, !163, i64 24, !163, i64 32, !163, i64 40}
!979 = !DILocation(line: 327, column: 29, scope: !945)
!980 = !DILocation(line: 327, column: 9, scope: !945)
!981 = !DILocation(line: 327, column: 18, scope: !945)
!982 = !{!978, !170, i64 8}
!983 = !DILocation(line: 329, column: 22, scope: !984)
!984 = distinct !DILexicalBlock(scope: !945, file: !1, line: 329, column: 9)
!985 = !DILocation(line: 329, column: 9, scope: !945)
!986 = !DILocation(line: 330, column: 13, scope: !987)
!987 = distinct !DILexicalBlock(scope: !984, file: !1, line: 329, column: 47)
!988 = !DILocation(line: 330, column: 18, scope: !987)
!989 = !DILocation(line: 332, column: 5, scope: !987)
!990 = !DILocation(line: 332, column: 29, scope: !991)
!991 = distinct !DILexicalBlock(scope: !984, file: !1, line: 332, column: 16)
!992 = !DILocation(line: 332, column: 16, scope: !984)
!993 = !DILocation(line: 333, column: 43, scope: !994)
!994 = distinct !DILexicalBlock(scope: !991, file: !1, line: 332, column: 49)
!995 = !DILocation(line: 333, column: 18, scope: !994)
!996 = !DILocation(line: 333, column: 13, scope: !994)
!997 = !DILocation(line: 333, column: 16, scope: !994)
!998 = !{!978, !163, i64 32}
!999 = !DILocation(line: 335, column: 9, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !991, file: !1, line: 334, column: 12)
!1001 = !DILocation(line: 337, column: 5, scope: !945)
!1002 = distinct !DISubprogram(name: "hashTypeReleaseIterator", scope: !1, file: !1, line: 340, type: !1003, isLocal: false, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1005)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{null, !948}
!1005 = !{!1006}
!1006 = !DILocalVariable(name: "hi", arg: 1, scope: !1002, file: !1, line: 340, type: !948)
!1007 = !DILocation(line: 340, column: 48, scope: !1002)
!1008 = !DILocation(line: 341, column: 13, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 341, column: 9)
!1010 = !DILocation(line: 341, column: 22, scope: !1009)
!1011 = !DILocation(line: 341, column: 9, scope: !1002)
!1012 = !DILocation(line: 342, column: 33, scope: !1009)
!1013 = !DILocation(line: 342, column: 9, scope: !1009)
!1014 = !DILocation(line: 343, column: 11, scope: !1002)
!1015 = !DILocation(line: 343, column: 5, scope: !1002)
!1016 = !DILocation(line: 344, column: 1, scope: !1002)
!1017 = distinct !DISubprogram(name: "hashTypeNext", scope: !1, file: !1, line: 348, type: !1018, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1020)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!39, !948}
!1020 = !{!1021, !1022, !1025, !1026}
!1021 = !DILocalVariable(name: "hi", arg: 1, scope: !1017, file: !1, line: 348, type: !948)
!1022 = !DILocalVariable(name: "zl", scope: !1023, file: !1, line: 350, type: !5)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 349, column: 47)
!1024 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 349, column: 9)
!1025 = !DILocalVariable(name: "fptr", scope: !1023, file: !1, line: 351, type: !5)
!1026 = !DILocalVariable(name: "vptr", scope: !1023, file: !1, line: 351, type: !5)
!1027 = !DILocation(line: 348, column: 36, scope: !1017)
!1028 = !DILocation(line: 349, column: 13, scope: !1024)
!1029 = !DILocation(line: 349, column: 22, scope: !1024)
!1030 = !DILocation(line: 349, column: 9, scope: !1017)
!1031 = !DILocation(line: 353, column: 18, scope: !1023)
!1032 = !DILocation(line: 353, column: 27, scope: !1023)
!1033 = !DILocation(line: 350, column: 24, scope: !1023)
!1034 = !DILocation(line: 354, column: 20, scope: !1023)
!1035 = !{!978, !163, i64 16}
!1036 = !DILocation(line: 351, column: 24, scope: !1023)
!1037 = !DILocation(line: 355, column: 20, scope: !1023)
!1038 = !{!978, !163, i64 24}
!1039 = !DILocation(line: 351, column: 31, scope: !1023)
!1040 = !DILocation(line: 357, column: 18, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 357, column: 13)
!1042 = !DILocation(line: 357, column: 13, scope: !1023)
!1043 = !DILocation(line: 0, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 361, column: 16)
!1045 = !DILocation(line: 359, column: 13, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 357, column: 27)
!1047 = !DILocation(line: 360, column: 20, scope: !1046)
!1048 = !DILocation(line: 361, column: 9, scope: !1046)
!1049 = !DILocation(line: 363, column: 13, scope: !1044)
!1050 = !DILocation(line: 364, column: 20, scope: !1044)
!1051 = !DILocation(line: 366, column: 18, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 366, column: 13)
!1053 = !DILocation(line: 366, column: 13, scope: !1023)
!1054 = !DILocation(line: 366, column: 27, scope: !1052)
!1055 = !DILocation(line: 369, column: 16, scope: !1023)
!1056 = !DILocation(line: 370, column: 9, scope: !1023)
!1057 = !DILocation(line: 373, column: 18, scope: !1023)
!1058 = !DILocation(line: 374, column: 18, scope: !1023)
!1059 = !DILocation(line: 375, column: 5, scope: !1024)
!1060 = !DILocation(line: 375, column: 29, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 375, column: 16)
!1062 = !DILocation(line: 375, column: 16, scope: !1024)
!1063 = !DILocation(line: 376, column: 36, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !1, line: 376, column: 13)
!1065 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 375, column: 49)
!1066 = !DILocation(line: 376, column: 23, scope: !1064)
!1067 = !DILocation(line: 376, column: 18, scope: !1064)
!1068 = !DILocation(line: 376, column: 21, scope: !1064)
!1069 = !{!978, !163, i64 40}
!1070 = !DILocation(line: 376, column: 41, scope: !1064)
!1071 = !DILocation(line: 376, column: 13, scope: !1065)
!1072 = !DILocation(line: 378, column: 9, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 377, column: 12)
!1074 = !DILocation(line: 380, column: 5, scope: !1017)
!1075 = !DILocation(line: 0, scope: !1064)
!1076 = !DILocation(line: 381, column: 1, scope: !1017)
!1077 = distinct !DISubprogram(name: "hashTypeCurrentFromZiplist", scope: !1, file: !1, line: 385, type: !1078, isLocal: false, isDefinition: true, scopeLine: 389, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1080)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{null, !948, !39, !257, !258, !259}
!1080 = !{!1081, !1082, !1083, !1084, !1085, !1086}
!1081 = !DILocalVariable(name: "hi", arg: 1, scope: !1077, file: !1, line: 385, type: !948)
!1082 = !DILocalVariable(name: "what", arg: 2, scope: !1077, file: !1, line: 385, type: !39)
!1083 = !DILocalVariable(name: "vstr", arg: 3, scope: !1077, file: !1, line: 386, type: !257)
!1084 = !DILocalVariable(name: "vlen", arg: 4, scope: !1077, file: !1, line: 387, type: !258)
!1085 = !DILocalVariable(name: "vll", arg: 5, scope: !1077, file: !1, line: 388, type: !259)
!1086 = !DILocalVariable(name: "ret", scope: !1077, file: !1, line: 390, type: !39)
!1087 = !DILocation(line: 385, column: 51, scope: !1077)
!1088 = !DILocation(line: 385, column: 59, scope: !1077)
!1089 = !DILocation(line: 386, column: 49, scope: !1077)
!1090 = !DILocation(line: 387, column: 47, scope: !1077)
!1091 = !DILocation(line: 388, column: 44, scope: !1077)
!1092 = !DILocation(line: 392, column: 5, scope: !1077)
!1093 = !DILocation(line: 394, column: 14, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 394, column: 9)
!1095 = !DILocation(line: 394, column: 9, scope: !1077)
!1096 = !DILocation(line: 395, column: 30, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1094, file: !1, line: 394, column: 30)
!1098 = !DILocation(line: 395, column: 15, scope: !1097)
!1099 = !DILocation(line: 390, column: 9, scope: !1077)
!1100 = !DILocation(line: 396, column: 9, scope: !1097)
!1101 = !DILocation(line: 398, column: 30, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1094, file: !1, line: 397, column: 12)
!1103 = !DILocation(line: 398, column: 15, scope: !1102)
!1104 = !DILocation(line: 399, column: 9, scope: !1102)
!1105 = !DILocation(line: 401, column: 1, scope: !1077)
!1106 = distinct !DISubprogram(name: "hashTypeCurrentFromHashTable", scope: !1, file: !1, line: 406, type: !1107, isLocal: false, isDefinition: true, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1109)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!178, !948, !39}
!1109 = !{!1110, !1111}
!1110 = !DILocalVariable(name: "hi", arg: 1, scope: !1106, file: !1, line: 406, type: !948)
!1111 = !DILocalVariable(name: "what", arg: 2, scope: !1106, file: !1, line: 406, type: !39)
!1112 = !DILocation(line: 406, column: 52, scope: !1106)
!1113 = !DILocation(line: 406, column: 60, scope: !1106)
!1114 = !DILocation(line: 407, column: 5, scope: !1106)
!1115 = !DILocation(line: 409, column: 14, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1106, file: !1, line: 409, column: 9)
!1117 = !DILocation(line: 0, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1116, file: !1, line: 411, column: 12)
!1119 = !DILocation(line: 409, column: 9, scope: !1106)
!1120 = !DILocation(line: 412, column: 16, scope: !1118)
!1121 = !DILocation(line: 410, column: 16, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1116, file: !1, line: 409, column: 30)
!1123 = !DILocation(line: 0, scope: !1122)
!1124 = !DILocation(line: 414, column: 1, scope: !1106)
!1125 = distinct !DISubprogram(name: "hashTypeCurrentObject", scope: !1, file: !1, line: 426, type: !1078, isLocal: false, isDefinition: true, scopeLine: 426, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1126)
!1126 = !{!1127, !1128, !1129, !1130, !1131, !1132}
!1127 = !DILocalVariable(name: "hi", arg: 1, scope: !1125, file: !1, line: 426, type: !948)
!1128 = !DILocalVariable(name: "what", arg: 2, scope: !1125, file: !1, line: 426, type: !39)
!1129 = !DILocalVariable(name: "vstr", arg: 3, scope: !1125, file: !1, line: 426, type: !257)
!1130 = !DILocalVariable(name: "vlen", arg: 4, scope: !1125, file: !1, line: 426, type: !258)
!1131 = !DILocalVariable(name: "vll", arg: 5, scope: !1125, file: !1, line: 426, type: !259)
!1132 = !DILocalVariable(name: "ele", scope: !1133, file: !1, line: 431, type: !178)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 430, column: 49)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !1, line: 430, column: 16)
!1135 = distinct !DILexicalBlock(scope: !1125, file: !1, line: 427, column: 9)
!1136 = !DILocation(line: 426, column: 46, scope: !1125)
!1137 = !DILocation(line: 426, column: 54, scope: !1125)
!1138 = !DILocation(line: 426, column: 76, scope: !1125)
!1139 = !DILocation(line: 426, column: 96, scope: !1125)
!1140 = !DILocation(line: 426, column: 113, scope: !1125)
!1141 = !DILocation(line: 427, column: 13, scope: !1135)
!1142 = !DILocation(line: 427, column: 22, scope: !1135)
!1143 = !DILocation(line: 427, column: 9, scope: !1125)
!1144 = !DILocation(line: 428, column: 15, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1135, file: !1, line: 427, column: 47)
!1146 = !DILocation(line: 429, column: 9, scope: !1145)
!1147 = !DILocation(line: 430, column: 5, scope: !1145)
!1148 = !DILocation(line: 430, column: 29, scope: !1134)
!1149 = !DILocation(line: 430, column: 16, scope: !1135)
!1150 = !DILocation(line: 406, column: 52, scope: !1106, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 431, column: 19, scope: !1133)
!1152 = !DILocation(line: 406, column: 60, scope: !1106, inlinedAt: !1151)
!1153 = !DILocation(line: 407, column: 5, scope: !1106, inlinedAt: !1151)
!1154 = !DILocation(line: 409, column: 14, scope: !1116, inlinedAt: !1151)
!1155 = !DILocation(line: 0, scope: !1118, inlinedAt: !1151)
!1156 = !DILocation(line: 409, column: 9, scope: !1106, inlinedAt: !1151)
!1157 = !DILocation(line: 410, column: 16, scope: !1122, inlinedAt: !1151)
!1158 = !DILocation(line: 412, column: 16, scope: !1118, inlinedAt: !1151)
!1159 = !DILocation(line: 0, scope: !1133)
!1160 = !DILocation(line: 414, column: 1, scope: !1106, inlinedAt: !1151)
!1161 = !DILocation(line: 431, column: 13, scope: !1133)
!1162 = !DILocation(line: 432, column: 15, scope: !1133)
!1163 = !DILocation(line: 87, column: 39, scope: !172, inlinedAt: !1164)
!1164 = distinct !DILocation(line: 433, column: 17, scope: !1133)
!1165 = !DILocation(line: 88, column: 27, scope: !172, inlinedAt: !1164)
!1166 = !DILocation(line: 88, column: 19, scope: !172, inlinedAt: !1164)
!1167 = !DILocation(line: 89, column: 5, scope: !172, inlinedAt: !1164)
!1168 = !DILocation(line: 91, column: 20, scope: !188, inlinedAt: !1164)
!1169 = !DILocation(line: 91, column: 13, scope: !188, inlinedAt: !1164)
!1170 = !DILocation(line: 93, column: 20, scope: !188, inlinedAt: !1164)
!1171 = !DILocation(line: 93, column: 34, scope: !188, inlinedAt: !1164)
!1172 = !DILocation(line: 93, column: 13, scope: !188, inlinedAt: !1164)
!1173 = !DILocation(line: 95, column: 20, scope: !188, inlinedAt: !1164)
!1174 = !DILocation(line: 95, column: 35, scope: !188, inlinedAt: !1164)
!1175 = !DILocation(line: 95, column: 13, scope: !188, inlinedAt: !1164)
!1176 = !DILocation(line: 97, column: 20, scope: !188, inlinedAt: !1164)
!1177 = !DILocation(line: 97, column: 35, scope: !188, inlinedAt: !1164)
!1178 = !DILocation(line: 97, column: 13, scope: !188, inlinedAt: !1164)
!1179 = !DILocation(line: 99, column: 20, scope: !188, inlinedAt: !1164)
!1180 = !DILocation(line: 99, column: 35, scope: !188, inlinedAt: !1164)
!1181 = !DILocation(line: 99, column: 13, scope: !188, inlinedAt: !1164)
!1182 = !DILocation(line: 0, scope: !188, inlinedAt: !1164)
!1183 = !DILocation(line: 102, column: 1, scope: !172, inlinedAt: !1164)
!1184 = !DILocation(line: 433, column: 17, scope: !1133)
!1185 = !DILocation(line: 433, column: 15, scope: !1133)
!1186 = !DILocation(line: 435, column: 9, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 434, column: 12)
!1188 = !DILocation(line: 437, column: 1, scope: !1125)
!1189 = distinct !DISubprogram(name: "hashTypeCurrentObjectNewSds", scope: !1, file: !1, line: 441, type: !1107, isLocal: false, isDefinition: true, scopeLine: 441, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1190)
!1190 = !{!1191, !1192, !1193, !1194, !1195}
!1191 = !DILocalVariable(name: "hi", arg: 1, scope: !1189, file: !1, line: 441, type: !948)
!1192 = !DILocalVariable(name: "what", arg: 2, scope: !1189, file: !1, line: 441, type: !39)
!1193 = !DILocalVariable(name: "vstr", scope: !1189, file: !1, line: 442, type: !5)
!1194 = !DILocalVariable(name: "vlen", scope: !1189, file: !1, line: 443, type: !110)
!1195 = !DILocalVariable(name: "vll", scope: !1189, file: !1, line: 444, type: !260)
!1196 = !DILocation(line: 441, column: 51, scope: !1189)
!1197 = !DILocation(line: 441, column: 59, scope: !1189)
!1198 = !DILocation(line: 442, column: 5, scope: !1189)
!1199 = !DILocation(line: 443, column: 5, scope: !1189)
!1200 = !DILocation(line: 444, column: 5, scope: !1189)
!1201 = !DILocation(line: 442, column: 20, scope: !1189)
!1202 = !DILocation(line: 443, column: 18, scope: !1189)
!1203 = !DILocation(line: 444, column: 15, scope: !1189)
!1204 = !DILocation(line: 446, column: 5, scope: !1189)
!1205 = !DILocation(line: 447, column: 9, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1189, file: !1, line: 447, column: 9)
!1207 = !DILocation(line: 447, column: 9, scope: !1189)
!1208 = !DILocation(line: 447, column: 37, scope: !1206)
!1209 = !DILocation(line: 447, column: 22, scope: !1206)
!1210 = !DILocation(line: 447, column: 15, scope: !1206)
!1211 = !DILocation(line: 448, column: 28, scope: !1189)
!1212 = !DILocation(line: 448, column: 12, scope: !1189)
!1213 = !DILocation(line: 448, column: 5, scope: !1189)
!1214 = !DILocation(line: 0, scope: !1189)
!1215 = !DILocation(line: 0, scope: !1206)
!1216 = !DILocation(line: 449, column: 1, scope: !1189)
!1217 = distinct !DISubprogram(name: "hashTypeLookupWriteOrCreate", scope: !1, file: !1, line: 451, type: !1218, isLocal: false, isDefinition: true, scopeLine: 451, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1383)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!128, !1220, !128}
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !130, line: 780, baseType: !1222)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !130, line: 723, size: 135360, elements: !1223)
!1223 = !{!1224, !1225, !1226, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1298, !1299, !1300, !1301, !1302, !1303, !1305, !1306, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1332, !1333, !1337, !1338, !1354, !1355, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1222, file: !130, line: 724, baseType: !23, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1222, file: !130, line: 725, baseType: !39, size: 32, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !1222, file: !130, line: 726, baseType: !1227, size: 64, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !130, line: 656, baseType: !1229)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !130, line: 647, size: 512, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !1229, file: !130, line: 648, baseType: !9, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1229, file: !130, line: 649, baseType: !9, size: 64, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !1229, file: !130, line: 650, baseType: !9, size: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !1229, file: !130, line: 651, baseType: !9, size: 64, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1229, file: !130, line: 652, baseType: !9, size: 64, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1229, file: !130, line: 653, baseType: !39, size: 32, offset: 320)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !1229, file: !130, line: 654, baseType: !260, size: 64, offset: 384)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !1229, file: !130, line: 655, baseType: !1239, size: 64, offset: 448)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !1241, line: 54, baseType: !1242)
!1241 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !1241, line: 47, size: 384, elements: !1243)
!1243 = !{!1244, !1253, !1254, !1258, !1262, !1266}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1242, file: !1241, line: 48, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !1241, line: 40, baseType: !1247)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !1241, line: 36, size: 192, elements: !1248)
!1248 = !{!1249, !1251, !1252}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1247, file: !1241, line: 37, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1247, file: !1241, line: 38, baseType: !1250, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1247, file: !1241, line: 39, baseType: !4, size: 64, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1242, file: !1241, line: 49, baseType: !1245, size: 64, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !1242, file: !1241, line: 50, baseType: !1255, size: 64, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!4, !4}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1242, file: !1241, line: 51, baseType: !1259, size: 64, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{null, !4}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1242, file: !1241, line: 52, baseType: !1263, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!39, !4, !4}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1242, file: !1241, line: 53, baseType: !27, size: 64, offset: 320)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1222, file: !130, line: 727, baseType: !128, size: 64, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !1222, file: !130, line: 728, baseType: !178, size: 64, offset: 256)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !1222, file: !130, line: 729, baseType: !461, size: 64, offset: 320)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !1222, file: !130, line: 730, baseType: !178, size: 64, offset: 384)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !1222, file: !130, line: 734, baseType: !461, size: 64, offset: 448)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1222, file: !130, line: 735, baseType: !39, size: 32, offset: 512)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1222, file: !130, line: 736, baseType: !138, size: 64, offset: 576)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1222, file: !130, line: 737, baseType: !1275, size: 64, offset: 640)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !130, line: 1307, size: 640, elements: !1277)
!1277 = !{!1278, !1279, !1284, !1285, !1286, !1287, !1293, !1294, !1295, !1296, !1297}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1276, file: !130, line: 1308, baseType: !7, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !1276, file: !130, line: 1309, baseType: !1280, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !130, line: 1305, baseType: !1282)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{null, !1220}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !1276, file: !130, line: 1310, baseType: !39, size: 32, offset: 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !1276, file: !130, line: 1311, baseType: !7, size: 64, offset: 192)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1276, file: !130, line: 1312, baseType: !39, size: 32, offset: 256)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !1276, file: !130, line: 1315, baseType: !1288, size: 64, offset: 320)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !130, line: 1306, baseType: !1290)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!1292, !1275, !138, !39, !1292}
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !1276, file: !130, line: 1317, baseType: !39, size: 32, offset: 384)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !1276, file: !130, line: 1318, baseType: !39, size: 32, offset: 416)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !1276, file: !130, line: 1319, baseType: !39, size: 32, offset: 448)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !1276, file: !130, line: 1320, baseType: !260, size: 64, offset: 512)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !1276, file: !130, line: 1320, baseType: !260, size: 64, offset: 576)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !1222, file: !130, line: 737, baseType: !1275, size: 64, offset: 704)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !1222, file: !130, line: 738, baseType: !39, size: 32, offset: 768)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !1222, file: !130, line: 739, baseType: !39, size: 32, offset: 800)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !1222, file: !130, line: 740, baseType: !66, size: 64, offset: 832)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !1222, file: !130, line: 741, baseType: !1239, size: 64, offset: 896)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !1222, file: !130, line: 742, baseType: !1304, size: 64, offset: 960)
!1304 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !1222, file: !130, line: 743, baseType: !461, size: 64, offset: 1024)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1222, file: !130, line: 745, baseType: !1307, size: 64, offset: 1088)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1308, line: 34, baseType: !66)
!1308 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !1222, file: !130, line: 746, baseType: !1307, size: 64, offset: 1152)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !1222, file: !130, line: 747, baseType: !1307, size: 64, offset: 1216)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1222, file: !130, line: 748, baseType: !39, size: 32, offset: 1280)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !1222, file: !130, line: 749, baseType: !39, size: 32, offset: 1312)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !1222, file: !130, line: 750, baseType: !39, size: 32, offset: 1344)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !1222, file: !130, line: 751, baseType: !39, size: 32, offset: 1376)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !1222, file: !130, line: 752, baseType: !39, size: 32, offset: 1408)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !1222, file: !130, line: 753, baseType: !1317, size: 64, offset: 1472)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1318, line: 173, baseType: !1319)
!1318 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !464, line: 100, baseType: !1320)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !464, line: 44, baseType: !66)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !1222, file: !130, line: 754, baseType: !1317, size: 64, offset: 1536)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !1222, file: !130, line: 755, baseType: !178, size: 64, offset: 1600)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !1222, file: !130, line: 756, baseType: !260, size: 64, offset: 1664)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !1222, file: !130, line: 757, baseType: !260, size: 64, offset: 1728)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !1222, file: !130, line: 758, baseType: !260, size: 64, offset: 1792)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !1222, file: !130, line: 759, baseType: !260, size: 64, offset: 1856)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !1222, file: !130, line: 760, baseType: !260, size: 64, offset: 1920)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !1222, file: !130, line: 763, baseType: !1329, size: 328, offset: 1984)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 328, elements: !1330)
!1330 = !{!1331}
!1331 = !DISubrange(count: 41)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !1222, file: !130, line: 764, baseType: !39, size: 32, offset: 2336)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !1222, file: !130, line: 765, baseType: !1334, size: 368, offset: 2368)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 368, elements: !1335)
!1335 = !{!1336}
!1336 = !DISubrange(count: 46)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !1222, file: !130, line: 766, baseType: !39, size: 32, offset: 2752)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !1222, file: !130, line: 767, baseType: !1339, size: 256, offset: 2816)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !130, line: 673, baseType: !1340)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !130, line: 665, size: 256, elements: !1341)
!1341 = !{!1342, !1350, !1351, !1352, !1353}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !1340, file: !130, line: 666, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !130, line: 663, baseType: !1345)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !130, line: 659, size: 192, elements: !1346)
!1346 = !{!1347, !1348, !1349}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1345, file: !130, line: 660, baseType: !138, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1345, file: !130, line: 661, baseType: !39, size: 32, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1345, file: !130, line: 662, baseType: !1275, size: 64, offset: 128)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1340, file: !130, line: 667, baseType: !39, size: 32, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1340, file: !130, line: 668, baseType: !39, size: 32, offset: 96)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !1340, file: !130, line: 671, baseType: !39, size: 32, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !1340, file: !130, line: 672, baseType: !1307, size: 64, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !1222, file: !130, line: 768, baseType: !39, size: 32, offset: 3072)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !1222, file: !130, line: 769, baseType: !1356, size: 704, offset: 3136)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !130, line: 703, baseType: !1357)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !130, line: 677, size: 704, elements: !1358)
!1358 = !{!1359, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1357, file: !130, line: 679, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !130, line: 52, baseType: !260)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1357, file: !130, line: 683, baseType: !9, size: 64, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1357, file: !130, line: 685, baseType: !128, size: 64, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !1357, file: !130, line: 689, baseType: !461, size: 64, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !1357, file: !130, line: 690, baseType: !128, size: 64, offset: 256)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !1357, file: !130, line: 691, baseType: !128, size: 64, offset: 320)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !1357, file: !130, line: 692, baseType: !1360, size: 64, offset: 384)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !1357, file: !130, line: 692, baseType: !1360, size: 64, offset: 448)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !1357, file: !130, line: 693, baseType: !39, size: 32, offset: 512)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !1357, file: !130, line: 696, baseType: !39, size: 32, offset: 544)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !1357, file: !130, line: 697, baseType: !260, size: 64, offset: 576)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !1357, file: !130, line: 700, baseType: !4, size: 64, offset: 640)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !1222, file: !130, line: 770, baseType: !260, size: 64, offset: 3840)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1222, file: !130, line: 771, baseType: !1239, size: 64, offset: 3904)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !1222, file: !130, line: 772, baseType: !9, size: 64, offset: 3968)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !1222, file: !130, line: 773, baseType: !1239, size: 64, offset: 4032)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !1222, file: !130, line: 774, baseType: !178, size: 64, offset: 4096)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !1222, file: !130, line: 775, baseType: !1245, size: 64, offset: 4160)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !1222, file: !130, line: 778, baseType: !39, size: 32, offset: 4224)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1222, file: !130, line: 779, baseType: !1380, size: 131072, offset: 4256)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 131072, elements: !1381)
!1381 = !{!1382}
!1382 = !DISubrange(count: 16384)
!1383 = !{!1384, !1385, !1386}
!1384 = !DILocalVariable(name: "c", arg: 1, scope: !1217, file: !1, line: 451, type: !1220)
!1385 = !DILocalVariable(name: "key", arg: 2, scope: !1217, file: !1, line: 451, type: !128)
!1386 = !DILocalVariable(name: "o", scope: !1217, file: !1, line: 452, type: !128)
!1387 = !DILocation(line: 451, column: 43, scope: !1217)
!1388 = !DILocation(line: 451, column: 52, scope: !1217)
!1389 = !DILocation(line: 452, column: 33, scope: !1217)
!1390 = !{!1391, !163, i64 16}
!1391 = !{!"client", !205, i64 0, !170, i64 8, !163, i64 16, !163, i64 24, !163, i64 32, !205, i64 40, !163, i64 48, !205, i64 56, !170, i64 64, !163, i64 72, !163, i64 80, !163, i64 88, !170, i64 96, !170, i64 100, !205, i64 104, !163, i64 112, !452, i64 120, !205, i64 128, !205, i64 136, !205, i64 144, !205, i64 152, !170, i64 160, !170, i64 164, !170, i64 168, !170, i64 172, !170, i64 176, !205, i64 184, !205, i64 192, !163, i64 200, !452, i64 208, !452, i64 216, !452, i64 224, !452, i64 232, !452, i64 240, !164, i64 248, !170, i64 292, !164, i64 296, !170, i64 344, !1392, i64 352, !170, i64 384, !1393, i64 392, !452, i64 480, !163, i64 488, !163, i64 496, !163, i64 504, !163, i64 512, !163, i64 520, !170, i64 528, !164, i64 532}
!1392 = !{!"multiState", !163, i64 0, !170, i64 8, !170, i64 12, !170, i64 16, !205, i64 24}
!1393 = !{!"blockingState", !452, i64 0, !163, i64 8, !163, i64 16, !205, i64 24, !163, i64 32, !163, i64 40, !452, i64 48, !452, i64 56, !170, i64 64, !170, i64 68, !452, i64 72, !163, i64 80}
!1394 = !DILocation(line: 452, column: 15, scope: !1217)
!1395 = !DILocation(line: 452, column: 11, scope: !1217)
!1396 = !DILocation(line: 453, column: 11, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1217, file: !1, line: 453, column: 9)
!1398 = !DILocation(line: 453, column: 9, scope: !1217)
!1399 = !DILocation(line: 454, column: 13, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1397, file: !1, line: 453, column: 20)
!1401 = !DILocation(line: 455, column: 18, scope: !1400)
!1402 = !DILocation(line: 455, column: 9, scope: !1400)
!1403 = !DILocation(line: 456, column: 5, scope: !1400)
!1404 = !DILocation(line: 457, column: 16, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !1, line: 457, column: 13)
!1406 = distinct !DILexicalBlock(scope: !1397, file: !1, line: 456, column: 12)
!1407 = !DILocation(line: 457, column: 21, scope: !1405)
!1408 = !DILocation(line: 457, column: 13, scope: !1406)
!1409 = !DILocation(line: 458, column: 31, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1405, file: !1, line: 457, column: 34)
!1411 = !{!1412, !163, i64 112}
!1412 = !{!"sharedObjectsStruct", !163, i64 0, !163, i64 8, !163, i64 16, !163, i64 24, !163, i64 32, !163, i64 40, !163, i64 48, !163, i64 56, !163, i64 64, !163, i64 72, !163, i64 80, !163, i64 88, !163, i64 96, !163, i64 104, !163, i64 112, !163, i64 120, !163, i64 128, !163, i64 136, !163, i64 144, !163, i64 152, !163, i64 160, !163, i64 168, !163, i64 176, !163, i64 184, !163, i64 192, !163, i64 200, !163, i64 208, !163, i64 216, !163, i64 224, !163, i64 232, !163, i64 240, !163, i64 248, !163, i64 256, !163, i64 264, !163, i64 272, !163, i64 280, !163, i64 288, !163, i64 296, !163, i64 304, !163, i64 312, !163, i64 320, !163, i64 328, !163, i64 336, !163, i64 344, !163, i64 352, !163, i64 360, !164, i64 368, !164, i64 448, !164, i64 80448, !164, i64 80704, !163, i64 80960, !163, i64 80968}
!1413 = !DILocation(line: 458, column: 13, scope: !1410)
!1414 = !DILocation(line: 459, column: 13, scope: !1410)
!1415 = !DILocation(line: 0, scope: !1410)
!1416 = !DILocation(line: 463, column: 1, scope: !1217)
!1417 = distinct !DISubprogram(name: "hashTypeConvertZiplist", scope: !1, file: !1, line: 465, type: !215, isLocal: false, isDefinition: true, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1418)
!1418 = !{!1419, !1420, !1421, !1425, !1426, !1427, !1429}
!1419 = !DILocalVariable(name: "o", arg: 1, scope: !1417, file: !1, line: 465, type: !128)
!1420 = !DILocalVariable(name: "enc", arg: 2, scope: !1417, file: !1, line: 465, type: !39)
!1421 = !DILocalVariable(name: "hi", scope: !1422, file: !1, line: 472, type: !948)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !1, line: 471, column: 40)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !1, line: 471, column: 16)
!1424 = distinct !DILexicalBlock(scope: !1417, file: !1, line: 468, column: 9)
!1425 = !DILocalVariable(name: "dict", scope: !1422, file: !1, line: 473, type: !9)
!1426 = !DILocalVariable(name: "ret", scope: !1422, file: !1, line: 474, type: !39)
!1427 = !DILocalVariable(name: "key", scope: !1428, file: !1, line: 480, type: !178)
!1428 = distinct !DILexicalBlock(scope: !1422, file: !1, line: 479, column: 43)
!1429 = !DILocalVariable(name: "value", scope: !1428, file: !1, line: 480, type: !178)
!1430 = !DILocation(line: 465, column: 35, scope: !1417)
!1431 = !DILocation(line: 465, column: 42, scope: !1417)
!1432 = !DILocation(line: 466, column: 5, scope: !1417)
!1433 = !DILocation(line: 468, column: 13, scope: !1424)
!1434 = !DILocation(line: 468, column: 9, scope: !1417)
!1435 = !DILocation(line: 471, column: 20, scope: !1423)
!1436 = !DILocation(line: 471, column: 16, scope: !1424)
!1437 = !DILocation(line: 324, column: 46, scope: !945, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 476, column: 14, scope: !1422)
!1439 = !DILocation(line: 325, column: 28, scope: !945, inlinedAt: !1438)
!1440 = !DILocation(line: 325, column: 23, scope: !945, inlinedAt: !1438)
!1441 = !DILocation(line: 326, column: 9, scope: !945, inlinedAt: !1438)
!1442 = !DILocation(line: 326, column: 17, scope: !945, inlinedAt: !1438)
!1443 = !DILocation(line: 327, column: 29, scope: !945, inlinedAt: !1438)
!1444 = !DILocation(line: 327, column: 9, scope: !945, inlinedAt: !1438)
!1445 = !DILocation(line: 327, column: 18, scope: !945, inlinedAt: !1438)
!1446 = !DILocation(line: 329, column: 22, scope: !984, inlinedAt: !1438)
!1447 = !DILocation(line: 329, column: 9, scope: !945, inlinedAt: !1438)
!1448 = !DILocation(line: 330, column: 13, scope: !987, inlinedAt: !1438)
!1449 = !DILocation(line: 330, column: 18, scope: !987, inlinedAt: !1438)
!1450 = !DILocation(line: 332, column: 5, scope: !987, inlinedAt: !1438)
!1451 = !DILocation(line: 332, column: 29, scope: !991, inlinedAt: !1438)
!1452 = !DILocation(line: 332, column: 16, scope: !984, inlinedAt: !1438)
!1453 = !DILocation(line: 333, column: 43, scope: !994, inlinedAt: !1438)
!1454 = !DILocation(line: 333, column: 18, scope: !994, inlinedAt: !1438)
!1455 = !DILocation(line: 333, column: 13, scope: !994, inlinedAt: !1438)
!1456 = !DILocation(line: 333, column: 16, scope: !994, inlinedAt: !1438)
!1457 = !DILocation(line: 335, column: 9, scope: !1000, inlinedAt: !1438)
!1458 = !DILocation(line: 337, column: 5, scope: !945, inlinedAt: !1438)
!1459 = !DILocation(line: 472, column: 27, scope: !1422)
!1460 = !DILocation(line: 477, column: 16, scope: !1422)
!1461 = !DILocation(line: 473, column: 15, scope: !1422)
!1462 = !DILocation(line: 479, column: 9, scope: !1422)
!1463 = !DILocation(line: 479, column: 16, scope: !1422)
!1464 = !DILocation(line: 479, column: 33, scope: !1422)
!1465 = !DILocation(line: 441, column: 51, scope: !1189, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 482, column: 19, scope: !1428)
!1467 = !DILocation(line: 441, column: 59, scope: !1189, inlinedAt: !1466)
!1468 = !DILocation(line: 442, column: 5, scope: !1189, inlinedAt: !1466)
!1469 = !DILocation(line: 443, column: 5, scope: !1189, inlinedAt: !1466)
!1470 = !DILocation(line: 444, column: 5, scope: !1189, inlinedAt: !1466)
!1471 = !DILocation(line: 442, column: 20, scope: !1189, inlinedAt: !1466)
!1472 = !DILocation(line: 443, column: 18, scope: !1189, inlinedAt: !1466)
!1473 = !DILocation(line: 444, column: 15, scope: !1189, inlinedAt: !1466)
!1474 = !DILocation(line: 446, column: 5, scope: !1189, inlinedAt: !1466)
!1475 = !DILocation(line: 447, column: 9, scope: !1206, inlinedAt: !1466)
!1476 = !DILocation(line: 447, column: 9, scope: !1189, inlinedAt: !1466)
!1477 = !DILocation(line: 447, column: 37, scope: !1206, inlinedAt: !1466)
!1478 = !DILocation(line: 447, column: 22, scope: !1206, inlinedAt: !1466)
!1479 = !DILocation(line: 447, column: 15, scope: !1206, inlinedAt: !1466)
!1480 = !DILocation(line: 448, column: 28, scope: !1189, inlinedAt: !1466)
!1481 = !DILocation(line: 448, column: 12, scope: !1189, inlinedAt: !1466)
!1482 = !DILocation(line: 448, column: 5, scope: !1189, inlinedAt: !1466)
!1483 = !DILocation(line: 0, scope: !1189, inlinedAt: !1466)
!1484 = !DILocation(line: 0, scope: !1428)
!1485 = !DILocation(line: 449, column: 1, scope: !1189, inlinedAt: !1466)
!1486 = !DILocation(line: 480, column: 17, scope: !1428)
!1487 = !DILocation(line: 441, column: 51, scope: !1189, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 483, column: 21, scope: !1428)
!1489 = !DILocation(line: 441, column: 59, scope: !1189, inlinedAt: !1488)
!1490 = !DILocation(line: 442, column: 5, scope: !1189, inlinedAt: !1488)
!1491 = !DILocation(line: 443, column: 5, scope: !1189, inlinedAt: !1488)
!1492 = !DILocation(line: 444, column: 5, scope: !1189, inlinedAt: !1488)
!1493 = !DILocation(line: 442, column: 20, scope: !1189, inlinedAt: !1488)
!1494 = !DILocation(line: 443, column: 18, scope: !1189, inlinedAt: !1488)
!1495 = !DILocation(line: 444, column: 15, scope: !1189, inlinedAt: !1488)
!1496 = !DILocation(line: 446, column: 5, scope: !1189, inlinedAt: !1488)
!1497 = !DILocation(line: 447, column: 9, scope: !1206, inlinedAt: !1488)
!1498 = !DILocation(line: 447, column: 9, scope: !1189, inlinedAt: !1488)
!1499 = !DILocation(line: 447, column: 37, scope: !1206, inlinedAt: !1488)
!1500 = !DILocation(line: 447, column: 22, scope: !1206, inlinedAt: !1488)
!1501 = !DILocation(line: 447, column: 15, scope: !1206, inlinedAt: !1488)
!1502 = !DILocation(line: 448, column: 28, scope: !1189, inlinedAt: !1488)
!1503 = !DILocation(line: 448, column: 12, scope: !1189, inlinedAt: !1488)
!1504 = !DILocation(line: 448, column: 5, scope: !1189, inlinedAt: !1488)
!1505 = !DILocation(line: 0, scope: !1189, inlinedAt: !1488)
!1506 = !DILocation(line: 449, column: 1, scope: !1189, inlinedAt: !1488)
!1507 = !DILocation(line: 480, column: 22, scope: !1428)
!1508 = !DILocation(line: 484, column: 19, scope: !1428)
!1509 = !DILocation(line: 474, column: 13, scope: !1422)
!1510 = !DILocation(line: 485, column: 21, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1428, file: !1, line: 485, column: 17)
!1512 = !DILocation(line: 485, column: 17, scope: !1428)
!1513 = !DILocation(line: 487, column: 24, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1511, file: !1, line: 485, column: 33)
!1515 = !DILocation(line: 487, column: 28, scope: !1514)
!1516 = !DILocation(line: 486, column: 17, scope: !1514)
!1517 = !DILocation(line: 488, column: 17, scope: !1514)
!1518 = distinct !{!1518, !1462, !1519}
!1519 = !DILocation(line: 490, column: 9, scope: !1422)
!1520 = !DILocation(line: 340, column: 48, scope: !1002, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 491, column: 9, scope: !1422)
!1522 = !DILocation(line: 341, column: 13, scope: !1009, inlinedAt: !1521)
!1523 = !DILocation(line: 341, column: 22, scope: !1009, inlinedAt: !1521)
!1524 = !DILocation(line: 341, column: 9, scope: !1002, inlinedAt: !1521)
!1525 = !DILocation(line: 342, column: 33, scope: !1009, inlinedAt: !1521)
!1526 = !DILocation(line: 342, column: 9, scope: !1009, inlinedAt: !1521)
!1527 = !DILocation(line: 343, column: 5, scope: !1002, inlinedAt: !1521)
!1528 = !DILocation(line: 344, column: 1, scope: !1002, inlinedAt: !1521)
!1529 = !DILocation(line: 492, column: 18, scope: !1422)
!1530 = !DILocation(line: 492, column: 9, scope: !1422)
!1531 = !DILocation(line: 493, column: 21, scope: !1422)
!1532 = !DILocation(line: 494, column: 16, scope: !1422)
!1533 = !DILocation(line: 496, column: 9, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1423, file: !1, line: 495, column: 12)
!1535 = !DILocation(line: 498, column: 1, scope: !1417)
!1536 = distinct !DISubprogram(name: "hsetnxCommand", scope: !1, file: !1, line: 514, type: !1282, isLocal: false, isDefinition: true, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1537)
!1537 = !{!1538, !1539}
!1538 = !DILocalVariable(name: "c", arg: 1, scope: !1536, file: !1, line: 514, type: !1220)
!1539 = !DILocalVariable(name: "o", scope: !1536, file: !1, line: 515, type: !128)
!1540 = !DILocation(line: 514, column: 28, scope: !1536)
!1541 = !DILocation(line: 516, column: 47, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1536, file: !1, line: 516, column: 9)
!1543 = !{!1391, !163, i64 72}
!1544 = !DILocation(line: 516, column: 44, scope: !1542)
!1545 = !DILocation(line: 451, column: 43, scope: !1217, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 516, column: 14, scope: !1542)
!1547 = !DILocation(line: 451, column: 52, scope: !1217, inlinedAt: !1546)
!1548 = !DILocation(line: 452, column: 33, scope: !1217, inlinedAt: !1546)
!1549 = !DILocation(line: 452, column: 15, scope: !1217, inlinedAt: !1546)
!1550 = !DILocation(line: 452, column: 11, scope: !1217, inlinedAt: !1546)
!1551 = !DILocation(line: 453, column: 11, scope: !1397, inlinedAt: !1546)
!1552 = !DILocation(line: 453, column: 9, scope: !1217, inlinedAt: !1546)
!1553 = !DILocation(line: 457, column: 16, scope: !1405, inlinedAt: !1546)
!1554 = !DILocation(line: 457, column: 21, scope: !1405, inlinedAt: !1546)
!1555 = !DILocation(line: 457, column: 13, scope: !1406, inlinedAt: !1546)
!1556 = !DILocation(line: 462, column: 5, scope: !1217, inlinedAt: !1546)
!1557 = !DILocation(line: 463, column: 1, scope: !1217, inlinedAt: !1546)
!1558 = !DILocation(line: 515, column: 11, scope: !1536)
!1559 = !DILocation(line: 516, column: 9, scope: !1536)
!1560 = !DILocation(line: 458, column: 31, scope: !1410, inlinedAt: !1546)
!1561 = !DILocation(line: 458, column: 13, scope: !1410, inlinedAt: !1546)
!1562 = !DILocation(line: 459, column: 13, scope: !1410, inlinedAt: !1546)
!1563 = !DILocation(line: 454, column: 13, scope: !1400, inlinedAt: !1546)
!1564 = !DILocation(line: 455, column: 18, scope: !1400, inlinedAt: !1546)
!1565 = !DILocation(line: 455, column: 9, scope: !1400, inlinedAt: !1546)
!1566 = !DILocation(line: 456, column: 5, scope: !1400, inlinedAt: !1546)
!1567 = !DILocation(line: 516, column: 57, scope: !1542)
!1568 = !DILocation(line: 517, column: 32, scope: !1536)
!1569 = !DILocation(line: 517, column: 5, scope: !1536)
!1570 = !DILocation(line: 519, column: 30, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1536, file: !1, line: 519, column: 9)
!1572 = !DILocation(line: 519, column: 27, scope: !1571)
!1573 = !DILocation(line: 519, column: 39, scope: !1571)
!1574 = !DILocation(line: 519, column: 9, scope: !1571)
!1575 = !DILocation(line: 519, column: 9, scope: !1536)
!1576 = !DILocation(line: 520, column: 28, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 519, column: 45)
!1578 = !{!1412, !163, i64 32}
!1579 = !DILocation(line: 520, column: 9, scope: !1577)
!1580 = !DILocation(line: 521, column: 5, scope: !1577)
!1581 = !DILocation(line: 522, column: 26, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 521, column: 12)
!1583 = !DILocation(line: 522, column: 23, scope: !1582)
!1584 = !DILocation(line: 522, column: 35, scope: !1582)
!1585 = !DILocation(line: 522, column: 39, scope: !1582)
!1586 = !DILocation(line: 522, column: 51, scope: !1582)
!1587 = !DILocation(line: 522, column: 9, scope: !1582)
!1588 = !DILocation(line: 523, column: 28, scope: !1582)
!1589 = !{!1412, !163, i64 40}
!1590 = !DILocation(line: 523, column: 9, scope: !1582)
!1591 = !DILocation(line: 524, column: 30, scope: !1582)
!1592 = !DILocation(line: 524, column: 36, scope: !1582)
!1593 = !DILocation(line: 524, column: 33, scope: !1582)
!1594 = !DILocation(line: 524, column: 9, scope: !1582)
!1595 = !DILocation(line: 525, column: 51, scope: !1582)
!1596 = !DILocation(line: 525, column: 48, scope: !1582)
!1597 = !DILocation(line: 525, column: 62, scope: !1582)
!1598 = !DILocation(line: 525, column: 66, scope: !1582)
!1599 = !{!1600, !170, i64 40}
!1600 = !{!"redisDb", !163, i64 0, !163, i64 8, !163, i64 16, !163, i64 24, !163, i64 32, !170, i64 40, !452, i64 48, !163, i64 56}
!1601 = !DILocation(line: 525, column: 9, scope: !1582)
!1602 = !DILocation(line: 526, column: 21, scope: !1582)
!1603 = !{!777, !452, i64 2080}
!1604 = !DILocation(line: 0, scope: !1542)
!1605 = !DILocation(line: 528, column: 1, scope: !1536)
!1606 = distinct !DISubprogram(name: "hsetCommand", scope: !1, file: !1, line: 530, type: !1282, isLocal: false, isDefinition: true, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1607)
!1607 = !{!1608, !1609, !1610, !1611, !1612}
!1608 = !DILocalVariable(name: "c", arg: 1, scope: !1606, file: !1, line: 530, type: !1220)
!1609 = !DILocalVariable(name: "i", scope: !1606, file: !1, line: 531, type: !39)
!1610 = !DILocalVariable(name: "created", scope: !1606, file: !1, line: 531, type: !39)
!1611 = !DILocalVariable(name: "o", scope: !1606, file: !1, line: 532, type: !128)
!1612 = !DILocalVariable(name: "cmdname", scope: !1606, file: !1, line: 546, type: !7)
!1613 = !DILocation(line: 530, column: 26, scope: !1606)
!1614 = !DILocation(line: 531, column: 12, scope: !1606)
!1615 = !DILocation(line: 534, column: 13, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1606, file: !1, line: 534, column: 9)
!1617 = !{!1391, !170, i64 64}
!1618 = !DILocation(line: 534, column: 18, scope: !1616)
!1619 = !DILocation(line: 534, column: 23, scope: !1616)
!1620 = !DILocation(line: 534, column: 9, scope: !1606)
!1621 = !DILocation(line: 535, column: 9, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1616, file: !1, line: 534, column: 29)
!1623 = !DILocation(line: 536, column: 9, scope: !1622)
!1624 = !DILocation(line: 539, column: 47, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1606, file: !1, line: 539, column: 9)
!1626 = !DILocation(line: 539, column: 44, scope: !1625)
!1627 = !DILocation(line: 451, column: 43, scope: !1217, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 539, column: 14, scope: !1625)
!1629 = !DILocation(line: 451, column: 52, scope: !1217, inlinedAt: !1628)
!1630 = !DILocation(line: 452, column: 33, scope: !1217, inlinedAt: !1628)
!1631 = !DILocation(line: 452, column: 15, scope: !1217, inlinedAt: !1628)
!1632 = !DILocation(line: 452, column: 11, scope: !1217, inlinedAt: !1628)
!1633 = !DILocation(line: 453, column: 11, scope: !1397, inlinedAt: !1628)
!1634 = !DILocation(line: 453, column: 9, scope: !1217, inlinedAt: !1628)
!1635 = !DILocation(line: 457, column: 16, scope: !1405, inlinedAt: !1628)
!1636 = !DILocation(line: 457, column: 21, scope: !1405, inlinedAt: !1628)
!1637 = !DILocation(line: 457, column: 13, scope: !1406, inlinedAt: !1628)
!1638 = !DILocation(line: 462, column: 5, scope: !1217, inlinedAt: !1628)
!1639 = !DILocation(line: 463, column: 1, scope: !1217, inlinedAt: !1628)
!1640 = !DILocation(line: 532, column: 11, scope: !1606)
!1641 = !DILocation(line: 539, column: 9, scope: !1606)
!1642 = !DILocation(line: 458, column: 31, scope: !1410, inlinedAt: !1628)
!1643 = !DILocation(line: 458, column: 13, scope: !1410, inlinedAt: !1628)
!1644 = !DILocation(line: 459, column: 13, scope: !1410, inlinedAt: !1628)
!1645 = !DILocation(line: 454, column: 13, scope: !1400, inlinedAt: !1628)
!1646 = !DILocation(line: 455, column: 18, scope: !1400, inlinedAt: !1628)
!1647 = !DILocation(line: 455, column: 9, scope: !1400, inlinedAt: !1628)
!1648 = !DILocation(line: 456, column: 5, scope: !1400, inlinedAt: !1628)
!1649 = !DILocation(line: 539, column: 57, scope: !1625)
!1650 = !DILocation(line: 540, column: 32, scope: !1606)
!1651 = !DILocation(line: 540, column: 42, scope: !1606)
!1652 = !DILocation(line: 540, column: 46, scope: !1606)
!1653 = !DILocation(line: 540, column: 5, scope: !1606)
!1654 = !DILocation(line: 531, column: 9, scope: !1606)
!1655 = !DILocation(line: 542, column: 10, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1606, file: !1, line: 542, column: 5)
!1657 = !DILocation(line: 542, column: 24, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1656, file: !1, line: 542, column: 5)
!1659 = !DILocation(line: 542, column: 19, scope: !1658)
!1660 = !DILocation(line: 542, column: 5, scope: !1656)
!1661 = !DILocation(line: 0, scope: !1606)
!1662 = !DILocation(line: 543, column: 35, scope: !1658)
!1663 = !DILocation(line: 543, column: 47, scope: !1658)
!1664 = !DILocation(line: 543, column: 60, scope: !1658)
!1665 = !DILocation(line: 543, column: 51, scope: !1658)
!1666 = !DILocation(line: 543, column: 65, scope: !1658)
!1667 = !DILocation(line: 543, column: 21, scope: !1658)
!1668 = !DILocation(line: 543, column: 20, scope: !1658)
!1669 = !DILocation(line: 543, column: 17, scope: !1658)
!1670 = !DILocation(line: 542, column: 32, scope: !1658)
!1671 = !DILocation(line: 542, column: 5, scope: !1658)
!1672 = distinct !{!1672, !1660, !1673}
!1673 = !DILocation(line: 543, column: 82, scope: !1656)
!1674 = !DILocation(line: 546, column: 21, scope: !1606)
!1675 = !DILocation(line: 546, column: 33, scope: !1606)
!1676 = !DILocation(line: 546, column: 11, scope: !1606)
!1677 = !DILocation(line: 547, column: 9, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1606, file: !1, line: 547, column: 9)
!1679 = !DILocation(line: 547, column: 20, scope: !1678)
!1680 = !DILocation(line: 547, column: 27, scope: !1678)
!1681 = !DILocation(line: 547, column: 41, scope: !1678)
!1682 = !DILocation(line: 547, column: 9, scope: !1606)
!1683 = !DILocation(line: 549, column: 9, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1678, file: !1, line: 547, column: 49)
!1685 = !DILocation(line: 550, column: 5, scope: !1684)
!1686 = !DILocation(line: 552, column: 28, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1678, file: !1, line: 550, column: 12)
!1688 = !{!1412, !163, i64 8}
!1689 = !DILocation(line: 552, column: 9, scope: !1687)
!1690 = !DILocation(line: 554, column: 26, scope: !1606)
!1691 = !DILocation(line: 554, column: 32, scope: !1606)
!1692 = !DILocation(line: 554, column: 29, scope: !1606)
!1693 = !DILocation(line: 554, column: 5, scope: !1606)
!1694 = !DILocation(line: 555, column: 47, scope: !1606)
!1695 = !DILocation(line: 555, column: 44, scope: !1606)
!1696 = !DILocation(line: 555, column: 58, scope: !1606)
!1697 = !DILocation(line: 555, column: 62, scope: !1606)
!1698 = !DILocation(line: 555, column: 5, scope: !1606)
!1699 = !DILocation(line: 556, column: 17, scope: !1606)
!1700 = !DILocation(line: 557, column: 1, scope: !1606)
!1701 = !DILocation(line: 0, scope: !1622)
!1702 = distinct !DISubprogram(name: "hincrbyCommand", scope: !1, file: !1, line: 559, type: !1282, isLocal: false, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1703)
!1703 = !{!1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711}
!1704 = !DILocalVariable(name: "c", arg: 1, scope: !1702, file: !1, line: 559, type: !1220)
!1705 = !DILocalVariable(name: "value", scope: !1702, file: !1, line: 560, type: !260)
!1706 = !DILocalVariable(name: "incr", scope: !1702, file: !1, line: 560, type: !260)
!1707 = !DILocalVariable(name: "oldvalue", scope: !1702, file: !1, line: 560, type: !260)
!1708 = !DILocalVariable(name: "o", scope: !1702, file: !1, line: 561, type: !128)
!1709 = !DILocalVariable(name: "new", scope: !1702, file: !1, line: 562, type: !178)
!1710 = !DILocalVariable(name: "vstr", scope: !1702, file: !1, line: 563, type: !5)
!1711 = !DILocalVariable(name: "vlen", scope: !1702, file: !1, line: 564, type: !110)
!1712 = !DILocation(line: 559, column: 29, scope: !1702)
!1713 = !DILocation(line: 560, column: 5, scope: !1702)
!1714 = !DILocation(line: 563, column: 5, scope: !1702)
!1715 = !DILocation(line: 564, column: 5, scope: !1702)
!1716 = !DILocation(line: 566, column: 43, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1702, file: !1, line: 566, column: 9)
!1718 = !DILocation(line: 566, column: 40, scope: !1717)
!1719 = !DILocation(line: 560, column: 22, scope: !1702)
!1720 = !DILocation(line: 566, column: 9, scope: !1717)
!1721 = !DILocation(line: 566, column: 63, scope: !1717)
!1722 = !DILocation(line: 566, column: 9, scope: !1702)
!1723 = !DILocation(line: 567, column: 47, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1702, file: !1, line: 567, column: 9)
!1725 = !DILocation(line: 567, column: 44, scope: !1724)
!1726 = !DILocation(line: 451, column: 43, scope: !1217, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 567, column: 14, scope: !1724)
!1728 = !DILocation(line: 451, column: 52, scope: !1217, inlinedAt: !1727)
!1729 = !DILocation(line: 452, column: 33, scope: !1217, inlinedAt: !1727)
!1730 = !DILocation(line: 452, column: 15, scope: !1217, inlinedAt: !1727)
!1731 = !DILocation(line: 452, column: 11, scope: !1217, inlinedAt: !1727)
!1732 = !DILocation(line: 453, column: 11, scope: !1397, inlinedAt: !1727)
!1733 = !DILocation(line: 453, column: 9, scope: !1217, inlinedAt: !1727)
!1734 = !DILocation(line: 457, column: 16, scope: !1405, inlinedAt: !1727)
!1735 = !DILocation(line: 457, column: 21, scope: !1405, inlinedAt: !1727)
!1736 = !DILocation(line: 457, column: 13, scope: !1406, inlinedAt: !1727)
!1737 = !DILocation(line: 462, column: 5, scope: !1217, inlinedAt: !1727)
!1738 = !DILocation(line: 463, column: 1, scope: !1217, inlinedAt: !1727)
!1739 = !DILocation(line: 561, column: 11, scope: !1702)
!1740 = !DILocation(line: 567, column: 9, scope: !1702)
!1741 = !DILocation(line: 458, column: 31, scope: !1410, inlinedAt: !1727)
!1742 = !DILocation(line: 458, column: 13, scope: !1410, inlinedAt: !1727)
!1743 = !DILocation(line: 459, column: 13, scope: !1410, inlinedAt: !1727)
!1744 = !DILocation(line: 454, column: 13, scope: !1400, inlinedAt: !1727)
!1745 = !DILocation(line: 455, column: 18, scope: !1400, inlinedAt: !1727)
!1746 = !DILocation(line: 455, column: 9, scope: !1400, inlinedAt: !1727)
!1747 = !DILocation(line: 456, column: 5, scope: !1400, inlinedAt: !1727)
!1748 = !DILocation(line: 567, column: 57, scope: !1724)
!1749 = !DILocation(line: 568, column: 31, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1702, file: !1, line: 568, column: 9)
!1751 = !DILocation(line: 568, column: 28, scope: !1750)
!1752 = !DILocation(line: 568, column: 40, scope: !1750)
!1753 = !DILocation(line: 560, column: 15, scope: !1702)
!1754 = !DILocation(line: 563, column: 20, scope: !1702)
!1755 = !DILocation(line: 564, column: 18, scope: !1702)
!1756 = !DILocation(line: 568, column: 9, scope: !1750)
!1757 = !DILocation(line: 568, column: 64, scope: !1750)
!1758 = !DILocation(line: 568, column: 9, scope: !1702)
!1759 = !DILocation(line: 569, column: 13, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !1, line: 569, column: 13)
!1761 = distinct !DILexicalBlock(scope: !1750, file: !1, line: 568, column: 73)
!1762 = !DILocation(line: 569, column: 13, scope: !1761)
!1763 = !DILocation(line: 570, column: 39, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !1, line: 570, column: 17)
!1765 = distinct !DILexicalBlock(scope: !1760, file: !1, line: 569, column: 19)
!1766 = !DILocation(line: 570, column: 17, scope: !1764)
!1767 = !DILocation(line: 570, column: 52, scope: !1764)
!1768 = !DILocation(line: 570, column: 17, scope: !1765)
!1769 = !DILocation(line: 571, column: 17, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1764, file: !1, line: 570, column: 58)
!1771 = !DILocation(line: 572, column: 17, scope: !1770)
!1772 = !DILocation(line: 576, column: 15, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1750, file: !1, line: 575, column: 12)
!1774 = !DILocation(line: 579, column: 16, scope: !1702)
!1775 = !DILocation(line: 560, column: 28, scope: !1702)
!1776 = !DILocation(line: 580, column: 10, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1702, file: !1, line: 580, column: 9)
!1778 = !DILocation(line: 580, column: 19, scope: !1777)
!1779 = !DILocation(line: 580, column: 55, scope: !1777)
!1780 = !DILocation(line: 580, column: 43, scope: !1777)
!1781 = !DILocation(line: 580, column: 67, scope: !1777)
!1782 = !DILocation(line: 581, column: 15, scope: !1777)
!1783 = !DILocation(line: 581, column: 31, scope: !1777)
!1784 = !DILocation(line: 581, column: 19, scope: !1777)
!1785 = !DILocation(line: 581, column: 55, scope: !1777)
!1786 = !DILocation(line: 581, column: 43, scope: !1777)
!1787 = !DILocation(line: 580, column: 9, scope: !1702)
!1788 = !DILocation(line: 582, column: 9, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1777, file: !1, line: 581, column: 68)
!1790 = !DILocation(line: 583, column: 9, scope: !1789)
!1791 = !DILocation(line: 585, column: 11, scope: !1702)
!1792 = !DILocation(line: 586, column: 11, scope: !1702)
!1793 = !DILocation(line: 562, column: 9, scope: !1702)
!1794 = !DILocation(line: 587, column: 22, scope: !1702)
!1795 = !DILocation(line: 587, column: 19, scope: !1702)
!1796 = !DILocation(line: 587, column: 31, scope: !1702)
!1797 = !DILocation(line: 587, column: 5, scope: !1702)
!1798 = !DILocation(line: 588, column: 24, scope: !1702)
!1799 = !DILocation(line: 588, column: 5, scope: !1702)
!1800 = !DILocation(line: 589, column: 26, scope: !1702)
!1801 = !DILocation(line: 589, column: 32, scope: !1702)
!1802 = !DILocation(line: 589, column: 29, scope: !1702)
!1803 = !DILocation(line: 589, column: 5, scope: !1702)
!1804 = !DILocation(line: 590, column: 50, scope: !1702)
!1805 = !DILocation(line: 590, column: 47, scope: !1702)
!1806 = !DILocation(line: 590, column: 61, scope: !1702)
!1807 = !DILocation(line: 590, column: 65, scope: !1702)
!1808 = !DILocation(line: 590, column: 5, scope: !1702)
!1809 = !DILocation(line: 591, column: 17, scope: !1702)
!1810 = !DILocation(line: 592, column: 1, scope: !1702)
!1811 = !DILocation(line: 0, scope: !1717)
!1812 = distinct !DISubprogram(name: "hincrbyfloatCommand", scope: !1, file: !1, line: 594, type: !1282, isLocal: false, isDefinition: true, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1813)
!1813 = !{!1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1826, !1827, !1828}
!1814 = !DILocalVariable(name: "c", arg: 1, scope: !1812, file: !1, line: 594, type: !1220)
!1815 = !DILocalVariable(name: "value", scope: !1812, file: !1, line: 595, type: !80)
!1816 = !DILocalVariable(name: "incr", scope: !1812, file: !1, line: 595, type: !80)
!1817 = !DILocalVariable(name: "ll", scope: !1812, file: !1, line: 596, type: !260)
!1818 = !DILocalVariable(name: "o", scope: !1812, file: !1, line: 597, type: !128)
!1819 = !DILocalVariable(name: "new", scope: !1812, file: !1, line: 598, type: !178)
!1820 = !DILocalVariable(name: "vstr", scope: !1812, file: !1, line: 599, type: !5)
!1821 = !DILocalVariable(name: "vlen", scope: !1812, file: !1, line: 600, type: !110)
!1822 = !DILocalVariable(name: "buf", scope: !1812, file: !1, line: 623, type: !1823)
!1823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 40960, elements: !1824)
!1824 = !{!1825}
!1825 = !DISubrange(count: 5120)
!1826 = !DILocalVariable(name: "len", scope: !1812, file: !1, line: 624, type: !39)
!1827 = !DILocalVariable(name: "aux", scope: !1812, file: !1, line: 635, type: !128)
!1828 = !DILocalVariable(name: "newobj", scope: !1812, file: !1, line: 635, type: !128)
!1829 = !DILocation(line: 594, column: 34, scope: !1812)
!1830 = !DILocation(line: 595, column: 5, scope: !1812)
!1831 = !DILocation(line: 596, column: 5, scope: !1812)
!1832 = !DILocation(line: 599, column: 5, scope: !1812)
!1833 = !DILocation(line: 600, column: 5, scope: !1812)
!1834 = !DILocation(line: 602, column: 45, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1812, file: !1, line: 602, column: 9)
!1836 = !DILocation(line: 602, column: 42, scope: !1835)
!1837 = !DILocation(line: 595, column: 24, scope: !1812)
!1838 = !DILocation(line: 602, column: 9, scope: !1835)
!1839 = !DILocation(line: 602, column: 65, scope: !1835)
!1840 = !DILocation(line: 602, column: 9, scope: !1812)
!1841 = !DILocation(line: 603, column: 47, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1812, file: !1, line: 603, column: 9)
!1843 = !DILocation(line: 603, column: 44, scope: !1842)
!1844 = !DILocation(line: 451, column: 43, scope: !1217, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 603, column: 14, scope: !1842)
!1846 = !DILocation(line: 451, column: 52, scope: !1217, inlinedAt: !1845)
!1847 = !DILocation(line: 452, column: 33, scope: !1217, inlinedAt: !1845)
!1848 = !DILocation(line: 452, column: 15, scope: !1217, inlinedAt: !1845)
!1849 = !DILocation(line: 452, column: 11, scope: !1217, inlinedAt: !1845)
!1850 = !DILocation(line: 453, column: 11, scope: !1397, inlinedAt: !1845)
!1851 = !DILocation(line: 453, column: 9, scope: !1217, inlinedAt: !1845)
!1852 = !DILocation(line: 457, column: 16, scope: !1405, inlinedAt: !1845)
!1853 = !DILocation(line: 457, column: 21, scope: !1405, inlinedAt: !1845)
!1854 = !DILocation(line: 457, column: 13, scope: !1406, inlinedAt: !1845)
!1855 = !DILocation(line: 462, column: 5, scope: !1217, inlinedAt: !1845)
!1856 = !DILocation(line: 463, column: 1, scope: !1217, inlinedAt: !1845)
!1857 = !DILocation(line: 597, column: 11, scope: !1812)
!1858 = !DILocation(line: 603, column: 9, scope: !1812)
!1859 = !DILocation(line: 458, column: 31, scope: !1410, inlinedAt: !1845)
!1860 = !DILocation(line: 458, column: 13, scope: !1410, inlinedAt: !1845)
!1861 = !DILocation(line: 459, column: 13, scope: !1410, inlinedAt: !1845)
!1862 = !DILocation(line: 454, column: 13, scope: !1400, inlinedAt: !1845)
!1863 = !DILocation(line: 455, column: 18, scope: !1400, inlinedAt: !1845)
!1864 = !DILocation(line: 455, column: 9, scope: !1400, inlinedAt: !1845)
!1865 = !DILocation(line: 456, column: 5, scope: !1400, inlinedAt: !1845)
!1866 = !DILocation(line: 603, column: 57, scope: !1842)
!1867 = !DILocation(line: 604, column: 31, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1812, file: !1, line: 604, column: 9)
!1869 = !DILocation(line: 604, column: 28, scope: !1868)
!1870 = !DILocation(line: 604, column: 40, scope: !1868)
!1871 = !DILocation(line: 596, column: 15, scope: !1812)
!1872 = !DILocation(line: 599, column: 20, scope: !1812)
!1873 = !DILocation(line: 600, column: 18, scope: !1812)
!1874 = !DILocation(line: 604, column: 9, scope: !1868)
!1875 = !DILocation(line: 604, column: 61, scope: !1868)
!1876 = !DILocation(line: 604, column: 9, scope: !1812)
!1877 = !DILocation(line: 605, column: 13, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !1, line: 605, column: 13)
!1879 = distinct !DILexicalBlock(scope: !1868, file: !1, line: 604, column: 70)
!1880 = !DILocation(line: 605, column: 13, scope: !1879)
!1881 = !DILocation(line: 606, column: 39, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !1, line: 606, column: 17)
!1883 = distinct !DILexicalBlock(scope: !1878, file: !1, line: 605, column: 19)
!1884 = !DILocation(line: 595, column: 17, scope: !1812)
!1885 = !DILocation(line: 606, column: 17, scope: !1882)
!1886 = !DILocation(line: 606, column: 52, scope: !1882)
!1887 = !DILocation(line: 606, column: 17, scope: !1883)
!1888 = !DILocation(line: 617, column: 11, scope: !1812)
!1889 = !{!1890, !1890, i64 0}
!1890 = !{!"long double", !164, i64 0}
!1891 = !DILocation(line: 607, column: 17, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1882, file: !1, line: 606, column: 58)
!1893 = !DILocation(line: 608, column: 17, scope: !1892)
!1894 = !DILocation(line: 611, column: 34, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1878, file: !1, line: 610, column: 16)
!1896 = !DILocation(line: 611, column: 21, scope: !1895)
!1897 = !DILocation(line: 611, column: 19, scope: !1895)
!1898 = !DILocation(line: 614, column: 15, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1868, file: !1, line: 613, column: 12)
!1900 = !DILocation(line: 617, column: 14, scope: !1812)
!1901 = !DILocation(line: 618, column: 9, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1812, file: !1, line: 618, column: 9)
!1903 = !DILocation(line: 618, column: 22, scope: !1902)
!1904 = !DILocation(line: 618, column: 25, scope: !1902)
!1905 = !DILocation(line: 618, column: 9, scope: !1812)
!1906 = !DILocation(line: 619, column: 9, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1902, file: !1, line: 618, column: 39)
!1908 = !DILocation(line: 620, column: 9, scope: !1907)
!1909 = !DILocation(line: 623, column: 5, scope: !1812)
!1910 = !DILocation(line: 623, column: 10, scope: !1812)
!1911 = !DILocation(line: 624, column: 41, scope: !1812)
!1912 = !DILocation(line: 624, column: 15, scope: !1812)
!1913 = !DILocation(line: 624, column: 9, scope: !1812)
!1914 = !DILocation(line: 625, column: 25, scope: !1812)
!1915 = !DILocation(line: 625, column: 11, scope: !1812)
!1916 = !DILocation(line: 598, column: 9, scope: !1812)
!1917 = !DILocation(line: 626, column: 22, scope: !1812)
!1918 = !DILocation(line: 626, column: 19, scope: !1812)
!1919 = !DILocation(line: 626, column: 31, scope: !1812)
!1920 = !DILocation(line: 626, column: 5, scope: !1812)
!1921 = !DILocation(line: 627, column: 5, scope: !1812)
!1922 = !DILocation(line: 628, column: 26, scope: !1812)
!1923 = !DILocation(line: 628, column: 32, scope: !1812)
!1924 = !DILocation(line: 628, column: 29, scope: !1812)
!1925 = !DILocation(line: 628, column: 5, scope: !1812)
!1926 = !DILocation(line: 629, column: 55, scope: !1812)
!1927 = !DILocation(line: 629, column: 52, scope: !1812)
!1928 = !DILocation(line: 629, column: 66, scope: !1812)
!1929 = !DILocation(line: 629, column: 70, scope: !1812)
!1930 = !DILocation(line: 629, column: 5, scope: !1812)
!1931 = !DILocation(line: 630, column: 17, scope: !1812)
!1932 = !DILocation(line: 636, column: 11, scope: !1812)
!1933 = !DILocation(line: 635, column: 11, scope: !1812)
!1934 = !DILocation(line: 637, column: 14, scope: !1812)
!1935 = !DILocation(line: 635, column: 17, scope: !1812)
!1936 = !DILocation(line: 638, column: 5, scope: !1812)
!1937 = !DILocation(line: 639, column: 5, scope: !1812)
!1938 = !DILocation(line: 640, column: 5, scope: !1812)
!1939 = !DILocation(line: 641, column: 5, scope: !1812)
!1940 = !DILocation(line: 642, column: 1, scope: !1812)
!1941 = !DILocation(line: 0, scope: !1835)
!1942 = distinct !DISubprogram(name: "hgetCommand", scope: !1, file: !1, line: 679, type: !1282, isLocal: false, isDefinition: true, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1943)
!1943 = !{!1944, !1945}
!1944 = !DILocalVariable(name: "c", arg: 1, scope: !1942, file: !1, line: 679, type: !1220)
!1945 = !DILocalVariable(name: "o", scope: !1942, file: !1, line: 680, type: !128)
!1946 = !DILocation(line: 679, column: 26, scope: !1942)
!1947 = !DILocation(line: 682, column: 40, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1942, file: !1, line: 682, column: 9)
!1949 = !DILocation(line: 682, column: 37, scope: !1948)
!1950 = !DILocation(line: 682, column: 55, scope: !1948)
!1951 = !{!1412, !163, i64 80}
!1952 = !DILocation(line: 682, column: 14, scope: !1948)
!1953 = !DILocation(line: 680, column: 11, scope: !1942)
!1954 = !DILocation(line: 682, column: 66, scope: !1948)
!1955 = !DILocation(line: 682, column: 74, scope: !1948)
!1956 = !DILocation(line: 683, column: 9, scope: !1948)
!1957 = !DILocation(line: 682, column: 9, scope: !1942)
!1958 = !DILocation(line: 685, column: 34, scope: !1942)
!1959 = !DILocation(line: 685, column: 31, scope: !1942)
!1960 = !DILocation(line: 685, column: 43, scope: !1942)
!1961 = !DILocation(line: 685, column: 5, scope: !1942)
!1962 = !DILocation(line: 686, column: 1, scope: !1942)
!1963 = !DILocation(line: 0, scope: !1948)
!1964 = distinct !DISubprogram(name: "addHashFieldToReply", scope: !1, file: !1, line: 644, type: !1965, isLocal: true, isDefinition: true, scopeLine: 644, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1967)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{null, !1220, !128, !178}
!1967 = !{!1968, !1969, !1970, !1971, !1972, !1975, !1976, !1977}
!1968 = !DILocalVariable(name: "c", arg: 1, scope: !1964, file: !1, line: 644, type: !1220)
!1969 = !DILocalVariable(name: "o", arg: 2, scope: !1964, file: !1, line: 644, type: !128)
!1970 = !DILocalVariable(name: "field", arg: 3, scope: !1964, file: !1, line: 644, type: !178)
!1971 = !DILocalVariable(name: "ret", scope: !1964, file: !1, line: 645, type: !39)
!1972 = !DILocalVariable(name: "vstr", scope: !1973, file: !1, line: 653, type: !5)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !1, line: 652, column: 46)
!1974 = distinct !DILexicalBlock(scope: !1964, file: !1, line: 652, column: 9)
!1975 = !DILocalVariable(name: "vlen", scope: !1973, file: !1, line: 654, type: !110)
!1976 = !DILocalVariable(name: "vll", scope: !1973, file: !1, line: 655, type: !260)
!1977 = !DILocalVariable(name: "value", scope: !1978, file: !1, line: 669, type: !178)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !1, line: 668, column: 48)
!1979 = distinct !DILexicalBlock(scope: !1974, file: !1, line: 668, column: 16)
!1980 = !DILocation(line: 644, column: 41, scope: !1964)
!1981 = !DILocation(line: 644, column: 50, scope: !1964)
!1982 = !DILocation(line: 644, column: 57, scope: !1964)
!1983 = !DILocation(line: 647, column: 11, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1964, file: !1, line: 647, column: 9)
!1985 = !DILocation(line: 647, column: 9, scope: !1964)
!1986 = !DILocation(line: 648, column: 28, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1984, file: !1, line: 647, column: 20)
!1988 = !DILocation(line: 648, column: 9, scope: !1987)
!1989 = !DILocation(line: 649, column: 9, scope: !1987)
!1990 = !DILocation(line: 652, column: 12, scope: !1974)
!1991 = !DILocation(line: 652, column: 21, scope: !1974)
!1992 = !DILocation(line: 652, column: 9, scope: !1964)
!1993 = !DILocation(line: 653, column: 9, scope: !1973)
!1994 = !DILocation(line: 653, column: 24, scope: !1973)
!1995 = !DILocation(line: 654, column: 9, scope: !1973)
!1996 = !DILocation(line: 654, column: 22, scope: !1973)
!1997 = !DILocation(line: 655, column: 9, scope: !1973)
!1998 = !DILocation(line: 655, column: 19, scope: !1973)
!1999 = !DILocation(line: 657, column: 15, scope: !1973)
!2000 = !DILocation(line: 645, column: 9, scope: !1964)
!2001 = !DILocation(line: 658, column: 17, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1973, file: !1, line: 658, column: 13)
!2003 = !DILocation(line: 658, column: 13, scope: !1973)
!2004 = !DILocation(line: 659, column: 32, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2002, file: !1, line: 658, column: 22)
!2006 = !DILocation(line: 659, column: 13, scope: !2005)
!2007 = !DILocation(line: 660, column: 9, scope: !2005)
!2008 = !DILocation(line: 661, column: 17, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !1, line: 661, column: 17)
!2010 = distinct !DILexicalBlock(scope: !2002, file: !1, line: 660, column: 16)
!2011 = !DILocation(line: 661, column: 17, scope: !2010)
!2012 = !DILocation(line: 662, column: 46, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2009, file: !1, line: 661, column: 23)
!2014 = !DILocation(line: 662, column: 17, scope: !2013)
!2015 = !DILocation(line: 663, column: 13, scope: !2013)
!2016 = !DILocation(line: 664, column: 41, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2009, file: !1, line: 663, column: 20)
!2018 = !DILocation(line: 664, column: 17, scope: !2017)
!2019 = !DILocation(line: 668, column: 5, scope: !1974)
!2020 = !DILocation(line: 668, column: 5, scope: !1973)
!2021 = !DILocation(line: 668, column: 28, scope: !1979)
!2022 = !DILocation(line: 668, column: 16, scope: !1974)
!2023 = !DILocation(line: 90, column: 36, scope: !326, inlinedAt: !2024)
!2024 = distinct !DILocation(line: 669, column: 21, scope: !1978)
!2025 = !DILocation(line: 90, column: 43, scope: !326, inlinedAt: !2024)
!2026 = !DILocation(line: 93, column: 5, scope: !326, inlinedAt: !2024)
!2027 = !DILocation(line: 95, column: 22, scope: !326, inlinedAt: !2024)
!2028 = !DILocation(line: 95, column: 10, scope: !326, inlinedAt: !2024)
!2029 = !DILocation(line: 91, column: 16, scope: !326, inlinedAt: !2024)
!2030 = !DILocation(line: 96, column: 12, scope: !340, inlinedAt: !2024)
!2031 = !DILocation(line: 96, column: 9, scope: !326, inlinedAt: !2024)
!2032 = !DILocation(line: 96, column: 21, scope: !340, inlinedAt: !2024)
!2033 = !DILocation(line: 98, column: 1, scope: !326, inlinedAt: !2024)
!2034 = !DILocation(line: 669, column: 13, scope: !1978)
!2035 = !DILocation(line: 670, column: 13, scope: !1978)
!2036 = !DILocation(line: 97, column: 12, scope: !326, inlinedAt: !2024)
!2037 = !DILocation(line: 97, column: 5, scope: !326, inlinedAt: !2024)
!2038 = !DILocation(line: 670, column: 19, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1978, file: !1, line: 670, column: 13)
!2040 = !DILocation(line: 671, column: 32, scope: !2039)
!2041 = !DILocation(line: 671, column: 13, scope: !2039)
!2042 = !DILocation(line: 87, column: 39, scope: !172, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 673, column: 43, scope: !2039)
!2044 = !DILocation(line: 88, column: 27, scope: !172, inlinedAt: !2043)
!2045 = !DILocation(line: 88, column: 19, scope: !172, inlinedAt: !2043)
!2046 = !DILocation(line: 89, column: 5, scope: !172, inlinedAt: !2043)
!2047 = !DILocation(line: 91, column: 20, scope: !188, inlinedAt: !2043)
!2048 = !DILocation(line: 91, column: 13, scope: !188, inlinedAt: !2043)
!2049 = !DILocation(line: 93, column: 20, scope: !188, inlinedAt: !2043)
!2050 = !DILocation(line: 93, column: 34, scope: !188, inlinedAt: !2043)
!2051 = !DILocation(line: 93, column: 13, scope: !188, inlinedAt: !2043)
!2052 = !DILocation(line: 95, column: 20, scope: !188, inlinedAt: !2043)
!2053 = !DILocation(line: 95, column: 35, scope: !188, inlinedAt: !2043)
!2054 = !DILocation(line: 95, column: 13, scope: !188, inlinedAt: !2043)
!2055 = !DILocation(line: 97, column: 20, scope: !188, inlinedAt: !2043)
!2056 = !DILocation(line: 97, column: 35, scope: !188, inlinedAt: !2043)
!2057 = !DILocation(line: 97, column: 13, scope: !188, inlinedAt: !2043)
!2058 = !DILocation(line: 99, column: 20, scope: !188, inlinedAt: !2043)
!2059 = !DILocation(line: 99, column: 35, scope: !188, inlinedAt: !2043)
!2060 = !DILocation(line: 99, column: 13, scope: !188, inlinedAt: !2043)
!2061 = !DILocation(line: 0, scope: !188, inlinedAt: !2043)
!2062 = !DILocation(line: 0, scope: !2039)
!2063 = !DILocation(line: 102, column: 1, scope: !172, inlinedAt: !2043)
!2064 = !DILocation(line: 673, column: 13, scope: !2039)
!2065 = !DILocation(line: 675, column: 9, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1979, file: !1, line: 674, column: 12)
!2067 = !DILocation(line: 677, column: 1, scope: !1964)
!2068 = !DILocation(line: 0, scope: !1987)
!2069 = distinct !DISubprogram(name: "hmgetCommand", scope: !1, file: !1, line: 688, type: !1282, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2070)
!2070 = !{!2071, !2072, !2073}
!2071 = !DILocalVariable(name: "c", arg: 1, scope: !2069, file: !1, line: 688, type: !1220)
!2072 = !DILocalVariable(name: "o", scope: !2069, file: !1, line: 689, type: !128)
!2073 = !DILocalVariable(name: "i", scope: !2069, file: !1, line: 690, type: !39)
!2074 = !DILocation(line: 688, column: 27, scope: !2069)
!2075 = !DILocation(line: 694, column: 26, scope: !2069)
!2076 = !DILocation(line: 694, column: 33, scope: !2069)
!2077 = !DILocation(line: 694, column: 30, scope: !2069)
!2078 = !DILocation(line: 694, column: 9, scope: !2069)
!2079 = !DILocation(line: 689, column: 11, scope: !2069)
!2080 = !DILocation(line: 695, column: 11, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2069, file: !1, line: 695, column: 9)
!2082 = !DILocation(line: 695, column: 19, scope: !2081)
!2083 = !DILocation(line: 695, column: 25, scope: !2081)
!2084 = !DILocation(line: 695, column: 30, scope: !2081)
!2085 = !DILocation(line: 695, column: 9, scope: !2069)
!2086 = !DILocation(line: 696, column: 28, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2081, file: !1, line: 695, column: 43)
!2088 = !DILocation(line: 696, column: 9, scope: !2087)
!2089 = !DILocation(line: 697, column: 9, scope: !2087)
!2090 = !DILocation(line: 700, column: 32, scope: !2069)
!2091 = !DILocation(line: 700, column: 36, scope: !2069)
!2092 = !DILocation(line: 700, column: 29, scope: !2069)
!2093 = !DILocation(line: 700, column: 5, scope: !2069)
!2094 = !DILocation(line: 690, column: 9, scope: !2069)
!2095 = !DILocation(line: 701, column: 10, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2069, file: !1, line: 701, column: 5)
!2097 = !DILocation(line: 701, column: 24, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2096, file: !1, line: 701, column: 5)
!2099 = !DILocation(line: 701, column: 19, scope: !2098)
!2100 = !DILocation(line: 701, column: 5, scope: !2096)
!2101 = !DILocation(line: 702, column: 38, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2098, file: !1, line: 701, column: 35)
!2103 = !DILocation(line: 702, column: 35, scope: !2102)
!2104 = !DILocation(line: 702, column: 47, scope: !2102)
!2105 = !DILocation(line: 702, column: 9, scope: !2102)
!2106 = !DILocation(line: 701, column: 31, scope: !2098)
!2107 = !DILocation(line: 701, column: 5, scope: !2098)
!2108 = distinct !{!2108, !2100, !2109}
!2109 = !DILocation(line: 703, column: 5, scope: !2096)
!2110 = !DILocation(line: 0, scope: !2087)
!2111 = !DILocation(line: 704, column: 1, scope: !2069)
!2112 = distinct !DISubprogram(name: "hdelCommand", scope: !1, file: !1, line: 706, type: !1282, isLocal: false, isDefinition: true, scopeLine: 706, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2113)
!2113 = !{!2114, !2115, !2116, !2117, !2118}
!2114 = !DILocalVariable(name: "c", arg: 1, scope: !2112, file: !1, line: 706, type: !1220)
!2115 = !DILocalVariable(name: "o", scope: !2112, file: !1, line: 707, type: !128)
!2116 = !DILocalVariable(name: "j", scope: !2112, file: !1, line: 708, type: !39)
!2117 = !DILocalVariable(name: "deleted", scope: !2112, file: !1, line: 708, type: !39)
!2118 = !DILocalVariable(name: "keyremoved", scope: !2112, file: !1, line: 708, type: !39)
!2119 = !DILocation(line: 706, column: 26, scope: !2112)
!2120 = !DILocation(line: 708, column: 12, scope: !2112)
!2121 = !DILocation(line: 708, column: 25, scope: !2112)
!2122 = !DILocation(line: 710, column: 41, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2112, file: !1, line: 710, column: 9)
!2124 = !DILocation(line: 710, column: 38, scope: !2123)
!2125 = !DILocation(line: 710, column: 56, scope: !2123)
!2126 = !DILocation(line: 710, column: 14, scope: !2123)
!2127 = !DILocation(line: 707, column: 11, scope: !2112)
!2128 = !DILocation(line: 710, column: 64, scope: !2123)
!2129 = !DILocation(line: 710, column: 72, scope: !2123)
!2130 = !DILocation(line: 711, column: 9, scope: !2123)
!2131 = !DILocation(line: 710, column: 9, scope: !2112)
!2132 = !DILocation(line: 708, column: 9, scope: !2112)
!2133 = !DILocation(line: 713, column: 10, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2112, file: !1, line: 713, column: 5)
!2135 = !DILocation(line: 713, column: 24, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2134, file: !1, line: 713, column: 5)
!2137 = !DILocation(line: 713, column: 19, scope: !2136)
!2138 = !DILocation(line: 713, column: 5, scope: !2134)
!2139 = !DILocation(line: 714, column: 33, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !1, line: 714, column: 13)
!2141 = distinct !DILexicalBlock(scope: !2136, file: !1, line: 713, column: 35)
!2142 = !DILocation(line: 714, column: 30, scope: !2140)
!2143 = !DILocation(line: 714, column: 42, scope: !2140)
!2144 = !DILocation(line: 714, column: 13, scope: !2140)
!2145 = !DILocation(line: 714, column: 13, scope: !2141)
!2146 = !DILocation(line: 715, column: 20, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2140, file: !1, line: 714, column: 48)
!2148 = !DILocation(line: 311, column: 42, scope: !745, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 716, column: 17, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2147, file: !1, line: 716, column: 17)
!2151 = !DILocation(line: 312, column: 19, scope: !745, inlinedAt: !2149)
!2152 = !DILocation(line: 314, column: 12, scope: !757, inlinedAt: !2149)
!2153 = !DILocation(line: 314, column: 21, scope: !757, inlinedAt: !2149)
!2154 = !DILocation(line: 314, column: 9, scope: !745, inlinedAt: !2149)
!2155 = !DILocation(line: 315, column: 32, scope: !761, inlinedAt: !2149)
!2156 = !DILocation(line: 315, column: 18, scope: !761, inlinedAt: !2149)
!2157 = !DILocation(line: 315, column: 37, scope: !761, inlinedAt: !2149)
!2158 = !DILocation(line: 316, column: 5, scope: !761, inlinedAt: !2149)
!2159 = !DILocation(line: 316, column: 28, scope: !765, inlinedAt: !2149)
!2160 = !DILocation(line: 316, column: 16, scope: !757, inlinedAt: !2149)
!2161 = !DILocation(line: 317, column: 18, scope: !768, inlinedAt: !2149)
!2162 = !DILocation(line: 319, column: 9, scope: !772, inlinedAt: !2149)
!2163 = !DILocation(line: 0, scope: !768, inlinedAt: !2149)
!2164 = !DILocation(line: 321, column: 5, scope: !745, inlinedAt: !2149)
!2165 = !DILocation(line: 716, column: 35, scope: !2150)
!2166 = !DILocation(line: 716, column: 17, scope: !2147)
!2167 = !DILocation(line: 717, column: 29, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2150, file: !1, line: 716, column: 41)
!2169 = !DILocation(line: 717, column: 35, scope: !2168)
!2170 = !DILocation(line: 717, column: 32, scope: !2168)
!2171 = !DILocation(line: 717, column: 17, scope: !2168)
!2172 = !DILocation(line: 719, column: 17, scope: !2168)
!2173 = !DILocation(line: 0, scope: !2112)
!2174 = !DILocation(line: 713, column: 31, scope: !2136)
!2175 = !DILocation(line: 713, column: 5, scope: !2136)
!2176 = distinct !{!2176, !2138, !2177}
!2177 = !DILocation(line: 722, column: 5, scope: !2134)
!2178 = !DILocation(line: 723, column: 9, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2112, file: !1, line: 723, column: 9)
!2180 = !DILocation(line: 723, column: 9, scope: !2112)
!2181 = !DILocation(line: 724, column: 30, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2179, file: !1, line: 723, column: 18)
!2183 = !DILocation(line: 724, column: 36, scope: !2182)
!2184 = !DILocation(line: 724, column: 33, scope: !2182)
!2185 = !DILocation(line: 724, column: 9, scope: !2182)
!2186 = !DILocation(line: 725, column: 51, scope: !2182)
!2187 = !DILocation(line: 725, column: 48, scope: !2182)
!2188 = !DILocation(line: 725, column: 62, scope: !2182)
!2189 = !DILocation(line: 725, column: 66, scope: !2182)
!2190 = !DILocation(line: 725, column: 9, scope: !2182)
!2191 = !DILocation(line: 726, column: 13, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2182, file: !1, line: 726, column: 13)
!2193 = !DILocation(line: 726, column: 13, scope: !2182)
!2194 = !DILocation(line: 727, column: 57, scope: !2192)
!2195 = !DILocation(line: 727, column: 54, scope: !2192)
!2196 = !DILocation(line: 728, column: 36, scope: !2192)
!2197 = !DILocation(line: 728, column: 40, scope: !2192)
!2198 = !DILocation(line: 727, column: 13, scope: !2192)
!2199 = !DILocation(line: 729, column: 25, scope: !2182)
!2200 = !DILocation(line: 729, column: 22, scope: !2182)
!2201 = !DILocation(line: 730, column: 5, scope: !2182)
!2202 = !DILocation(line: 0, scope: !2182)
!2203 = !DILocation(line: 731, column: 5, scope: !2112)
!2204 = !DILocation(line: 731, column: 24, scope: !2112)
!2205 = !DILocation(line: 732, column: 1, scope: !2112)
!2206 = !DILocation(line: 0, scope: !2123)
!2207 = distinct !DISubprogram(name: "hlenCommand", scope: !1, file: !1, line: 734, type: !1282, isLocal: false, isDefinition: true, scopeLine: 734, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2208)
!2208 = !{!2209, !2210}
!2209 = !DILocalVariable(name: "c", arg: 1, scope: !2207, file: !1, line: 734, type: !1220)
!2210 = !DILocalVariable(name: "o", scope: !2207, file: !1, line: 735, type: !128)
!2211 = !DILocation(line: 734, column: 26, scope: !2207)
!2212 = !DILocation(line: 737, column: 40, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2207, file: !1, line: 737, column: 9)
!2214 = !DILocation(line: 737, column: 37, scope: !2213)
!2215 = !DILocation(line: 737, column: 55, scope: !2213)
!2216 = !DILocation(line: 737, column: 14, scope: !2213)
!2217 = !DILocation(line: 735, column: 11, scope: !2207)
!2218 = !DILocation(line: 737, column: 63, scope: !2213)
!2219 = !DILocation(line: 737, column: 71, scope: !2213)
!2220 = !DILocation(line: 738, column: 9, scope: !2213)
!2221 = !DILocation(line: 737, column: 9, scope: !2207)
!2222 = !DILocation(line: 311, column: 42, scope: !745, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 740, column: 24, scope: !2207)
!2224 = !DILocation(line: 312, column: 19, scope: !745, inlinedAt: !2223)
!2225 = !DILocation(line: 314, column: 12, scope: !757, inlinedAt: !2223)
!2226 = !DILocation(line: 314, column: 21, scope: !757, inlinedAt: !2223)
!2227 = !DILocation(line: 314, column: 9, scope: !745, inlinedAt: !2223)
!2228 = !DILocation(line: 315, column: 32, scope: !761, inlinedAt: !2223)
!2229 = !DILocation(line: 315, column: 18, scope: !761, inlinedAt: !2223)
!2230 = !DILocation(line: 315, column: 37, scope: !761, inlinedAt: !2223)
!2231 = !DILocation(line: 316, column: 5, scope: !761, inlinedAt: !2223)
!2232 = !DILocation(line: 316, column: 28, scope: !765, inlinedAt: !2223)
!2233 = !DILocation(line: 316, column: 16, scope: !757, inlinedAt: !2223)
!2234 = !DILocation(line: 317, column: 18, scope: !768, inlinedAt: !2223)
!2235 = !DILocation(line: 319, column: 9, scope: !772, inlinedAt: !2223)
!2236 = !DILocation(line: 0, scope: !768, inlinedAt: !2223)
!2237 = !DILocation(line: 321, column: 5, scope: !745, inlinedAt: !2223)
!2238 = !DILocation(line: 740, column: 5, scope: !2207)
!2239 = !DILocation(line: 741, column: 1, scope: !2207)
!2240 = !DILocation(line: 0, scope: !2213)
!2241 = distinct !DISubprogram(name: "hstrlenCommand", scope: !1, file: !1, line: 743, type: !1282, isLocal: false, isDefinition: true, scopeLine: 743, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2242)
!2242 = !{!2243, !2244}
!2243 = !DILocalVariable(name: "c", arg: 1, scope: !2241, file: !1, line: 743, type: !1220)
!2244 = !DILocalVariable(name: "o", scope: !2241, file: !1, line: 744, type: !128)
!2245 = !DILocation(line: 743, column: 29, scope: !2241)
!2246 = !DILocation(line: 746, column: 40, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2241, file: !1, line: 746, column: 9)
!2248 = !DILocation(line: 746, column: 37, scope: !2247)
!2249 = !DILocation(line: 746, column: 55, scope: !2247)
!2250 = !DILocation(line: 746, column: 14, scope: !2247)
!2251 = !DILocation(line: 744, column: 11, scope: !2241)
!2252 = !DILocation(line: 746, column: 63, scope: !2247)
!2253 = !DILocation(line: 746, column: 71, scope: !2247)
!2254 = !DILocation(line: 747, column: 9, scope: !2247)
!2255 = !DILocation(line: 746, column: 9, scope: !2241)
!2256 = !DILocation(line: 748, column: 52, scope: !2241)
!2257 = !DILocation(line: 748, column: 49, scope: !2241)
!2258 = !DILocation(line: 748, column: 61, scope: !2241)
!2259 = !DILocation(line: 748, column: 24, scope: !2241)
!2260 = !DILocation(line: 748, column: 5, scope: !2241)
!2261 = !DILocation(line: 749, column: 1, scope: !2241)
!2262 = !DILocation(line: 0, scope: !2247)
!2263 = distinct !DISubprogram(name: "genericHgetallCommand", scope: !1, file: !1, line: 770, type: !2264, isLocal: false, isDefinition: true, scopeLine: 770, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2266)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{null, !1220, !39}
!2266 = !{!2267, !2268, !2269, !2270, !2271, !2272, !2273}
!2267 = !DILocalVariable(name: "c", arg: 1, scope: !2263, file: !1, line: 770, type: !1220)
!2268 = !DILocalVariable(name: "flags", arg: 2, scope: !2263, file: !1, line: 770, type: !39)
!2269 = !DILocalVariable(name: "o", scope: !2263, file: !1, line: 771, type: !128)
!2270 = !DILocalVariable(name: "hi", scope: !2263, file: !1, line: 772, type: !948)
!2271 = !DILocalVariable(name: "multiplier", scope: !2263, file: !1, line: 773, type: !39)
!2272 = !DILocalVariable(name: "length", scope: !2263, file: !1, line: 774, type: !39)
!2273 = !DILocalVariable(name: "count", scope: !2263, file: !1, line: 774, type: !39)
!2274 = !DILocation(line: 770, column: 36, scope: !2263)
!2275 = !DILocation(line: 770, column: 43, scope: !2263)
!2276 = !DILocation(line: 773, column: 9, scope: !2263)
!2277 = !DILocation(line: 774, column: 17, scope: !2263)
!2278 = !DILocation(line: 776, column: 40, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2263, file: !1, line: 776, column: 9)
!2280 = !DILocation(line: 776, column: 37, scope: !2279)
!2281 = !DILocation(line: 776, column: 55, scope: !2279)
!2282 = !{!1412, !163, i64 104}
!2283 = !DILocation(line: 776, column: 14, scope: !2279)
!2284 = !DILocation(line: 771, column: 11, scope: !2263)
!2285 = !DILocation(line: 776, column: 72, scope: !2279)
!2286 = !DILocation(line: 777, column: 9, scope: !2279)
!2287 = !DILocation(line: 777, column: 12, scope: !2279)
!2288 = !DILocation(line: 776, column: 9, scope: !2263)
!2289 = !DILocation(line: 779, column: 15, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2263, file: !1, line: 779, column: 9)
!2291 = !DILocation(line: 779, column: 9, scope: !2263)
!2292 = !DILocation(line: 779, column: 31, scope: !2290)
!2293 = !DILocation(line: 0, scope: !2263)
!2294 = !DILocation(line: 780, column: 15, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2263, file: !1, line: 780, column: 9)
!2296 = !DILocation(line: 780, column: 9, scope: !2263)
!2297 = !DILocation(line: 780, column: 43, scope: !2295)
!2298 = !DILocation(line: 780, column: 33, scope: !2295)
!2299 = !DILocation(line: 0, scope: !2290)
!2300 = !DILocation(line: 311, column: 42, scope: !745, inlinedAt: !2301)
!2301 = distinct !DILocation(line: 782, column: 14, scope: !2263)
!2302 = !DILocation(line: 312, column: 19, scope: !745, inlinedAt: !2301)
!2303 = !DILocation(line: 314, column: 12, scope: !757, inlinedAt: !2301)
!2304 = !DILocation(line: 314, column: 21, scope: !757, inlinedAt: !2301)
!2305 = !DILocation(line: 314, column: 9, scope: !745, inlinedAt: !2301)
!2306 = !DILocation(line: 315, column: 32, scope: !761, inlinedAt: !2301)
!2307 = !DILocation(line: 315, column: 18, scope: !761, inlinedAt: !2301)
!2308 = !DILocation(line: 315, column: 37, scope: !761, inlinedAt: !2301)
!2309 = !DILocation(line: 316, column: 5, scope: !761, inlinedAt: !2301)
!2310 = !DILocation(line: 316, column: 28, scope: !765, inlinedAt: !2301)
!2311 = !DILocation(line: 316, column: 16, scope: !757, inlinedAt: !2301)
!2312 = !DILocation(line: 317, column: 18, scope: !768, inlinedAt: !2301)
!2313 = !DILocation(line: 319, column: 9, scope: !772, inlinedAt: !2301)
!2314 = !DILocation(line: 0, scope: !768, inlinedAt: !2301)
!2315 = !DILocation(line: 321, column: 5, scope: !745, inlinedAt: !2301)
!2316 = !DILocation(line: 782, column: 14, scope: !2263)
!2317 = !DILocation(line: 774, column: 9, scope: !2263)
!2318 = !DILocation(line: 783, column: 29, scope: !2263)
!2319 = !DILocation(line: 783, column: 5, scope: !2263)
!2320 = !DILocation(line: 324, column: 46, scope: !945, inlinedAt: !2321)
!2321 = distinct !DILocation(line: 785, column: 10, scope: !2263)
!2322 = !DILocation(line: 325, column: 28, scope: !945, inlinedAt: !2321)
!2323 = !DILocation(line: 325, column: 23, scope: !945, inlinedAt: !2321)
!2324 = !DILocation(line: 326, column: 9, scope: !945, inlinedAt: !2321)
!2325 = !DILocation(line: 326, column: 17, scope: !945, inlinedAt: !2321)
!2326 = !DILocation(line: 327, column: 29, scope: !945, inlinedAt: !2321)
!2327 = !DILocation(line: 327, column: 9, scope: !945, inlinedAt: !2321)
!2328 = !DILocation(line: 327, column: 18, scope: !945, inlinedAt: !2321)
!2329 = !DILocation(line: 329, column: 22, scope: !984, inlinedAt: !2321)
!2330 = !DILocation(line: 329, column: 9, scope: !945, inlinedAt: !2321)
!2331 = !DILocation(line: 330, column: 13, scope: !987, inlinedAt: !2321)
!2332 = !DILocation(line: 330, column: 18, scope: !987, inlinedAt: !2321)
!2333 = !DILocation(line: 332, column: 5, scope: !987, inlinedAt: !2321)
!2334 = !DILocation(line: 332, column: 29, scope: !991, inlinedAt: !2321)
!2335 = !DILocation(line: 332, column: 16, scope: !984, inlinedAt: !2321)
!2336 = !DILocation(line: 333, column: 43, scope: !994, inlinedAt: !2321)
!2337 = !DILocation(line: 333, column: 18, scope: !994, inlinedAt: !2321)
!2338 = !DILocation(line: 333, column: 13, scope: !994, inlinedAt: !2321)
!2339 = !DILocation(line: 333, column: 16, scope: !994, inlinedAt: !2321)
!2340 = !DILocation(line: 335, column: 9, scope: !1000, inlinedAt: !2321)
!2341 = !DILocation(line: 337, column: 5, scope: !945, inlinedAt: !2321)
!2342 = !DILocation(line: 772, column: 23, scope: !2263)
!2343 = !DILocation(line: 786, column: 5, scope: !2263)
!2344 = !DILocation(line: 786, column: 12, scope: !2263)
!2345 = !DILocation(line: 786, column: 29, scope: !2263)
!2346 = !DILocation(line: 787, column: 13, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2263, file: !1, line: 786, column: 39)
!2348 = !DILocation(line: 788, column: 13, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !1, line: 787, column: 35)
!2350 = distinct !DILexicalBlock(scope: !2347, file: !1, line: 787, column: 13)
!2351 = !DILocation(line: 789, column: 18, scope: !2349)
!2352 = !DILocation(line: 790, column: 9, scope: !2349)
!2353 = !DILocation(line: 791, column: 13, scope: !2347)
!2354 = !DILocation(line: 792, column: 13, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !1, line: 791, column: 37)
!2356 = distinct !DILexicalBlock(scope: !2347, file: !1, line: 791, column: 13)
!2357 = !DILocation(line: 793, column: 18, scope: !2355)
!2358 = !DILocation(line: 794, column: 9, scope: !2355)
!2359 = !DILocation(line: 0, scope: !2349)
!2360 = distinct !{!2360, !2343, !2361}
!2361 = !DILocation(line: 795, column: 5, scope: !2263)
!2362 = !DILocation(line: 0, scope: !2355)
!2363 = !DILocation(line: 340, column: 48, scope: !1002, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 797, column: 5, scope: !2263)
!2365 = !DILocation(line: 341, column: 13, scope: !1009, inlinedAt: !2364)
!2366 = !DILocation(line: 341, column: 22, scope: !1009, inlinedAt: !2364)
!2367 = !DILocation(line: 341, column: 9, scope: !1002, inlinedAt: !2364)
!2368 = !DILocation(line: 342, column: 33, scope: !1009, inlinedAt: !2364)
!2369 = !DILocation(line: 342, column: 9, scope: !1009, inlinedAt: !2364)
!2370 = !DILocation(line: 343, column: 5, scope: !1002, inlinedAt: !2364)
!2371 = !DILocation(line: 344, column: 1, scope: !1002, inlinedAt: !2364)
!2372 = !DILocation(line: 798, column: 5, scope: !2263)
!2373 = !DILocation(line: 0, scope: !2279)
!2374 = !DILocation(line: 799, column: 1, scope: !2263)
!2375 = distinct !DISubprogram(name: "addHashIteratorCursorToReply", scope: !1, file: !1, line: 751, type: !2376, isLocal: true, isDefinition: true, scopeLine: 751, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2378)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{null, !1220, !948, !39}
!2378 = !{!2379, !2380, !2381, !2382, !2385, !2386, !2387}
!2379 = !DILocalVariable(name: "c", arg: 1, scope: !2375, file: !1, line: 751, type: !1220)
!2380 = !DILocalVariable(name: "hi", arg: 2, scope: !2375, file: !1, line: 751, type: !948)
!2381 = !DILocalVariable(name: "what", arg: 3, scope: !2375, file: !1, line: 751, type: !39)
!2382 = !DILocalVariable(name: "vstr", scope: !2383, file: !1, line: 753, type: !5)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !1, line: 752, column: 47)
!2384 = distinct !DILexicalBlock(scope: !2375, file: !1, line: 752, column: 9)
!2385 = !DILocalVariable(name: "vlen", scope: !2383, file: !1, line: 754, type: !110)
!2386 = !DILocalVariable(name: "vll", scope: !2383, file: !1, line: 755, type: !260)
!2387 = !DILocalVariable(name: "value", scope: !2388, file: !1, line: 763, type: !178)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !1, line: 762, column: 49)
!2389 = distinct !DILexicalBlock(scope: !2384, file: !1, line: 762, column: 16)
!2390 = !DILocation(line: 751, column: 50, scope: !2375)
!2391 = !DILocation(line: 751, column: 71, scope: !2375)
!2392 = !DILocation(line: 751, column: 79, scope: !2375)
!2393 = !DILocation(line: 752, column: 13, scope: !2384)
!2394 = !DILocation(line: 752, column: 22, scope: !2384)
!2395 = !DILocation(line: 752, column: 9, scope: !2375)
!2396 = !DILocation(line: 753, column: 9, scope: !2383)
!2397 = !DILocation(line: 753, column: 24, scope: !2383)
!2398 = !DILocation(line: 754, column: 9, scope: !2383)
!2399 = !DILocation(line: 754, column: 22, scope: !2383)
!2400 = !DILocation(line: 755, column: 9, scope: !2383)
!2401 = !DILocation(line: 755, column: 19, scope: !2383)
!2402 = !DILocation(line: 757, column: 9, scope: !2383)
!2403 = !DILocation(line: 758, column: 13, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2383, file: !1, line: 758, column: 13)
!2405 = !DILocation(line: 758, column: 13, scope: !2383)
!2406 = !DILocation(line: 759, column: 42, scope: !2404)
!2407 = !DILocation(line: 759, column: 13, scope: !2404)
!2408 = !DILocation(line: 761, column: 37, scope: !2404)
!2409 = !DILocation(line: 761, column: 13, scope: !2404)
!2410 = !DILocation(line: 762, column: 5, scope: !2384)
!2411 = !DILocation(line: 762, column: 5, scope: !2383)
!2412 = !DILocation(line: 762, column: 29, scope: !2389)
!2413 = !DILocation(line: 762, column: 16, scope: !2384)
!2414 = !DILocation(line: 406, column: 52, scope: !1106, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 763, column: 21, scope: !2388)
!2416 = !DILocation(line: 406, column: 60, scope: !1106, inlinedAt: !2415)
!2417 = !DILocation(line: 407, column: 5, scope: !1106, inlinedAt: !2415)
!2418 = !DILocation(line: 409, column: 14, scope: !1116, inlinedAt: !2415)
!2419 = !DILocation(line: 0, scope: !1118, inlinedAt: !2415)
!2420 = !DILocation(line: 409, column: 9, scope: !1106, inlinedAt: !2415)
!2421 = !DILocation(line: 410, column: 16, scope: !1122, inlinedAt: !2415)
!2422 = !DILocation(line: 412, column: 16, scope: !1118, inlinedAt: !2415)
!2423 = !DILocation(line: 0, scope: !2388)
!2424 = !DILocation(line: 414, column: 1, scope: !1106, inlinedAt: !2415)
!2425 = !DILocation(line: 763, column: 13, scope: !2388)
!2426 = !DILocation(line: 87, column: 39, scope: !172, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 764, column: 39, scope: !2388)
!2428 = !DILocation(line: 88, column: 27, scope: !172, inlinedAt: !2427)
!2429 = !DILocation(line: 88, column: 19, scope: !172, inlinedAt: !2427)
!2430 = !DILocation(line: 89, column: 5, scope: !172, inlinedAt: !2427)
!2431 = !DILocation(line: 91, column: 20, scope: !188, inlinedAt: !2427)
!2432 = !DILocation(line: 91, column: 13, scope: !188, inlinedAt: !2427)
!2433 = !DILocation(line: 93, column: 20, scope: !188, inlinedAt: !2427)
!2434 = !DILocation(line: 93, column: 34, scope: !188, inlinedAt: !2427)
!2435 = !DILocation(line: 93, column: 13, scope: !188, inlinedAt: !2427)
!2436 = !DILocation(line: 95, column: 20, scope: !188, inlinedAt: !2427)
!2437 = !DILocation(line: 95, column: 35, scope: !188, inlinedAt: !2427)
!2438 = !DILocation(line: 95, column: 13, scope: !188, inlinedAt: !2427)
!2439 = !DILocation(line: 97, column: 20, scope: !188, inlinedAt: !2427)
!2440 = !DILocation(line: 97, column: 35, scope: !188, inlinedAt: !2427)
!2441 = !DILocation(line: 97, column: 13, scope: !188, inlinedAt: !2427)
!2442 = !DILocation(line: 99, column: 20, scope: !188, inlinedAt: !2427)
!2443 = !DILocation(line: 99, column: 35, scope: !188, inlinedAt: !2427)
!2444 = !DILocation(line: 99, column: 13, scope: !188, inlinedAt: !2427)
!2445 = !DILocation(line: 0, scope: !188, inlinedAt: !2427)
!2446 = !DILocation(line: 102, column: 1, scope: !172, inlinedAt: !2427)
!2447 = !DILocation(line: 764, column: 9, scope: !2388)
!2448 = !DILocation(line: 766, column: 9, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2389, file: !1, line: 765, column: 12)
!2450 = !DILocation(line: 768, column: 1, scope: !2375)
!2451 = distinct !DISubprogram(name: "hkeysCommand", scope: !1, file: !1, line: 801, type: !1282, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2452)
!2452 = !{!2453}
!2453 = !DILocalVariable(name: "c", arg: 1, scope: !2451, file: !1, line: 801, type: !1220)
!2454 = !DILocation(line: 801, column: 27, scope: !2451)
!2455 = !DILocation(line: 802, column: 5, scope: !2451)
!2456 = !DILocation(line: 803, column: 1, scope: !2451)
!2457 = distinct !DISubprogram(name: "hvalsCommand", scope: !1, file: !1, line: 805, type: !1282, isLocal: false, isDefinition: true, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2458)
!2458 = !{!2459}
!2459 = !DILocalVariable(name: "c", arg: 1, scope: !2457, file: !1, line: 805, type: !1220)
!2460 = !DILocation(line: 805, column: 27, scope: !2457)
!2461 = !DILocation(line: 806, column: 5, scope: !2457)
!2462 = !DILocation(line: 807, column: 1, scope: !2457)
!2463 = distinct !DISubprogram(name: "hgetallCommand", scope: !1, file: !1, line: 809, type: !1282, isLocal: false, isDefinition: true, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2464)
!2464 = !{!2465}
!2465 = !DILocalVariable(name: "c", arg: 1, scope: !2463, file: !1, line: 809, type: !1220)
!2466 = !DILocation(line: 809, column: 29, scope: !2463)
!2467 = !DILocation(line: 810, column: 5, scope: !2463)
!2468 = !DILocation(line: 811, column: 1, scope: !2463)
!2469 = distinct !DISubprogram(name: "hexistsCommand", scope: !1, file: !1, line: 813, type: !1282, isLocal: false, isDefinition: true, scopeLine: 813, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2470)
!2470 = !{!2471, !2472}
!2471 = !DILocalVariable(name: "c", arg: 1, scope: !2469, file: !1, line: 813, type: !1220)
!2472 = !DILocalVariable(name: "o", scope: !2469, file: !1, line: 814, type: !128)
!2473 = !DILocation(line: 813, column: 29, scope: !2469)
!2474 = !DILocation(line: 815, column: 40, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2469, file: !1, line: 815, column: 9)
!2476 = !DILocation(line: 815, column: 37, scope: !2475)
!2477 = !DILocation(line: 815, column: 55, scope: !2475)
!2478 = !DILocation(line: 815, column: 14, scope: !2475)
!2479 = !DILocation(line: 814, column: 11, scope: !2469)
!2480 = !DILocation(line: 815, column: 63, scope: !2475)
!2481 = !DILocation(line: 815, column: 71, scope: !2475)
!2482 = !DILocation(line: 816, column: 9, scope: !2475)
!2483 = !DILocation(line: 815, column: 9, scope: !2469)
!2484 = !DILocation(line: 818, column: 37, scope: !2469)
!2485 = !DILocation(line: 818, column: 34, scope: !2469)
!2486 = !DILocation(line: 818, column: 46, scope: !2469)
!2487 = !DILocation(line: 818, column: 17, scope: !2469)
!2488 = !DILocation(line: 818, column: 60, scope: !2469)
!2489 = !DILocation(line: 818, column: 74, scope: !2469)
!2490 = !DILocation(line: 818, column: 5, scope: !2469)
!2491 = !DILocation(line: 819, column: 1, scope: !2469)
!2492 = !DILocation(line: 0, scope: !2475)
!2493 = distinct !DISubprogram(name: "hscanCommand", scope: !1, file: !1, line: 821, type: !1282, isLocal: false, isDefinition: true, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2494)
!2494 = !{!2495, !2496, !2497}
!2495 = !DILocalVariable(name: "c", arg: 1, scope: !2493, file: !1, line: 821, type: !1220)
!2496 = !DILocalVariable(name: "o", scope: !2493, file: !1, line: 822, type: !128)
!2497 = !DILocalVariable(name: "cursor", scope: !2493, file: !1, line: 823, type: !27)
!2498 = !DILocation(line: 821, column: 27, scope: !2493)
!2499 = !DILocation(line: 823, column: 5, scope: !2493)
!2500 = !DILocation(line: 825, column: 37, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2493, file: !1, line: 825, column: 9)
!2502 = !DILocation(line: 825, column: 34, scope: !2501)
!2503 = !DILocation(line: 823, column: 19, scope: !2493)
!2504 = !DILocation(line: 825, column: 9, scope: !2501)
!2505 = !DILocation(line: 825, column: 54, scope: !2501)
!2506 = !DILocation(line: 825, column: 9, scope: !2493)
!2507 = !DILocation(line: 826, column: 40, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2493, file: !1, line: 826, column: 9)
!2509 = !DILocation(line: 826, column: 37, scope: !2508)
!2510 = !DILocation(line: 826, column: 55, scope: !2508)
!2511 = !{!1412, !163, i64 360}
!2512 = !DILocation(line: 826, column: 14, scope: !2508)
!2513 = !DILocation(line: 822, column: 11, scope: !2493)
!2514 = !DILocation(line: 826, column: 67, scope: !2508)
!2515 = !DILocation(line: 826, column: 75, scope: !2508)
!2516 = !DILocation(line: 827, column: 9, scope: !2508)
!2517 = !DILocation(line: 826, column: 9, scope: !2493)
!2518 = !DILocation(line: 828, column: 28, scope: !2493)
!2519 = !DILocation(line: 828, column: 5, scope: !2493)
!2520 = !DILocation(line: 829, column: 1, scope: !2493)
!2521 = !DILocation(line: 0, scope: !2501)
