; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/t_list.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/t_list.c"
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
%struct.quicklist = type { %struct.quicklistNode*, %struct.quicklistNode*, i64, i64, i32 }
%struct.quicklistNode = type { %struct.quicklistNode*, %struct.quicklistNode*, i8*, i32, i32 }
%struct.listTypeIterator = type { %struct.redisObject*, i8, i8, %struct.quicklistIter* }
%struct.quicklistIter = type { %struct.quicklist*, %struct.quicklistNode*, i8*, i64, i32 }
%struct.listTypeEntry = type { %struct.listTypeIterator*, %struct.quicklistEntry }
%struct.quicklistEntry = type { %struct.quicklist*, %struct.quicklistNode*, i8*, i8*, i64, i32, i32 }
%struct.streamID = type { i64, i64 }

@.str = private unnamed_addr constant [74 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/t_list.c\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Unknown list encoding\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"li->subject->encoding == li->encoding\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"sdsEncodedObject(o)\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"subject->type==OBJ_LIST\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"subject->encoding==OBJ_ENCODING_ZIPLIST\00", align 1
@server = external dso_local local_unnamed_addr global %struct.redisServer, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"Unsupported list conversion\00", align 1
@shared = external dso_local local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"lpush\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"rpush\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"after\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"linsert\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"lset\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"lpop\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"rpop\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"List encoding is not QUICKLIST!\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"ltrim\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"lrem\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"value != NULL\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"listTypeLength(key) > 0\00", align 1

; Function Attrs: noredzone nounwind
define dso_local void @listTypePush(%struct.redisObject* nocapture readonly, %struct.redisObject*, i32) local_unnamed_addr #0 !dbg !86 {
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !114
  %5 = load i32, i32* %4, align 8, !dbg !114
  %6 = and i32 %5, 240, !dbg !114
  %7 = icmp eq i32 %6, 144, !dbg !115
  br i1 %7, label %8, label %43, !dbg !116

; <label>:8:                                      ; preds = %3
  %9 = icmp ne i32 %2, 0, !dbg !117
  %10 = sext i1 %9 to i32, !dbg !118
  %11 = tail call %struct.redisObject* @getDecodedObject(%struct.redisObject* %1) #6, !dbg !120
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 2, !dbg !121
  %13 = load i8*, i8** %12, align 8, !dbg !121, !tbaa !122
  %14 = getelementptr inbounds i8, i8* %13, i64 -1, !dbg !140
  %15 = load i8, i8* %14, align 1, !dbg !140, !tbaa !141
  %16 = trunc i8 %15 to i3, !dbg !143
  switch i3 %16, label %38 [
    i3 0, label %17
    i3 1, label %20
    i3 2, label %24
    i3 3, label %29
    i3 -4, label %34
  ], !dbg !143

; <label>:17:                                     ; preds = %8
  %18 = lshr i8 %15, 3, !dbg !144
  %19 = zext i8 %18 to i64, !dbg !144
  br label %38, !dbg !146

; <label>:20:                                     ; preds = %8
  %21 = getelementptr inbounds i8, i8* %13, i64 -3, !dbg !147
  %22 = load i8, i8* %21, align 1, !dbg !148, !tbaa !141
  %23 = zext i8 %22 to i64, !dbg !147
  br label %38, !dbg !149

; <label>:24:                                     ; preds = %8
  %25 = getelementptr inbounds i8, i8* %13, i64 -5, !dbg !150
  %26 = bitcast i8* %25 to i16*, !dbg !151
  %27 = load i16, i16* %26, align 1, !dbg !151, !tbaa !152
  %28 = zext i16 %27 to i64, !dbg !150
  br label %38, !dbg !154

; <label>:29:                                     ; preds = %8
  %30 = getelementptr inbounds i8, i8* %13, i64 -9, !dbg !155
  %31 = bitcast i8* %30 to i32*, !dbg !156
  %32 = load i32, i32* %31, align 1, !dbg !156, !tbaa !157
  %33 = zext i32 %32 to i64, !dbg !155
  br label %38, !dbg !158

; <label>:34:                                     ; preds = %8
  %35 = getelementptr inbounds i8, i8* %13, i64 -17, !dbg !159
  %36 = bitcast i8* %35 to i64*, !dbg !160
  %37 = load i64, i64* %36, align 1, !dbg !160, !tbaa !161
  br label %38, !dbg !163

; <label>:38:                                     ; preds = %8, %17, %20, %24, %29, %34
  %39 = phi i64 [ %37, %34 ], [ %33, %29 ], [ %28, %24 ], [ %23, %20 ], [ %19, %17 ], [ 0, %8 ], !dbg !164
  %40 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !166
  %41 = bitcast i8** %40 to %struct.quicklist**, !dbg !166
  %42 = load %struct.quicklist*, %struct.quicklist** %41, align 8, !dbg !166, !tbaa !122
  tail call void @quicklistPush(%struct.quicklist* %42, i8* %13, i64 %39, i32 %10) #6, !dbg !167
  tail call void @decrRefCount(%struct.redisObject* %11) #6, !dbg !168
  ret void, !dbg !169

; <label>:43:                                     ; preds = %3
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !170
  tail call void @_exit(i32 1) #7, !dbg !170
  unreachable, !dbg !170
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @getDecodedObject(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @quicklistPush(%struct.quicklist*, i8*, i64, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local i8* @listPopSaver(i8*, i32) #0 !dbg !172 {
  %3 = zext i32 %1 to i64, !dbg !180
  %4 = tail call %struct.redisObject* @createStringObject(i8* %0, i64 %3) #6, !dbg !181
  %5 = bitcast %struct.redisObject* %4 to i8*, !dbg !181
  ret i8* %5, !dbg !182
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @listTypePop(%struct.redisObject* nocapture readonly, i32) local_unnamed_addr #0 !dbg !183 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.redisObject*, align 8
  %5 = bitcast i64* %3 to i8*, !dbg !195
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !195
  %6 = bitcast %struct.redisObject** %4 to i8*, !dbg !196
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8, !dbg !196
  store %struct.redisObject* null, %struct.redisObject** %4, align 8, !dbg !197, !tbaa !198
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !199
  %8 = load i32, i32* %7, align 8, !dbg !199
  %9 = and i32 %8, 240, !dbg !199
  %10 = icmp eq i32 %9, 144, !dbg !201
  br i1 %10, label %11, label %26, !dbg !202

; <label>:11:                                     ; preds = %2
  %12 = icmp ne i32 %1, 0, !dbg !203
  %13 = sext i1 %12 to i32, !dbg !204
  %14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !206
  %15 = bitcast i8** %14 to %struct.quicklist**, !dbg !206
  %16 = load %struct.quicklist*, %struct.quicklist** %15, align 8, !dbg !206, !tbaa !122
  %17 = bitcast %struct.redisObject** %4 to i8**, !dbg !209
  %18 = call i32 @quicklistPopCustom(%struct.quicklist* %16, i32 %13, i8** nonnull %17, i32* null, i64* nonnull %3, i8* (i8*, i32)* nonnull @listPopSaver) #6, !dbg !211
  %19 = icmp eq i32 %18, 0, !dbg !211
  %20 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !212
  %21 = icmp ne %struct.redisObject* %20, null, !dbg !212
  %22 = or i1 %19, %21, !dbg !215
  br i1 %22, label %27, label %23, !dbg !215

; <label>:23:                                     ; preds = %11
  %24 = load i64, i64* %3, align 8, !dbg !216, !tbaa !217
  %25 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %24) #6, !dbg !219
  store %struct.redisObject* %25, %struct.redisObject** %4, align 8, !dbg !220, !tbaa !198
  br label %27, !dbg !221

; <label>:26:                                     ; preds = %2
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !222
  tail call void @_exit(i32 1) #7, !dbg !222
  unreachable, !dbg !222

; <label>:27:                                     ; preds = %11, %23
  %28 = phi %struct.redisObject* [ %20, %11 ], [ %25, %23 ], !dbg !224
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8, !dbg !225
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !225
  ret %struct.redisObject* %28, !dbg !226
}

; Function Attrs: noredzone
declare dso_local i32 @quicklistPopCustom(%struct.quicklist*, i32, i8**, i32*, i64*, i8* (i8*, i32)*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObjectFromLongLong(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @listTypeLength(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !227 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !235
  %3 = load i32, i32* %2, align 8, !dbg !235
  %4 = and i32 %3, 240, !dbg !235
  %5 = icmp eq i32 %4, 144, !dbg !237
  br i1 %5, label %6, label %11, !dbg !238

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !239
  %8 = bitcast i8** %7 to %struct.quicklist**, !dbg !239
  %9 = load %struct.quicklist*, %struct.quicklist** %8, align 8, !dbg !239, !tbaa !122
  %10 = tail call i64 @quicklistCount(%struct.quicklist* %9) #6, !dbg !241
  ret i64 %10, !dbg !242

; <label>:11:                                     ; preds = %1
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !243
  tail call void @_exit(i32 1) #7, !dbg !243
  unreachable, !dbg !243
}

; Function Attrs: noredzone
declare dso_local i64 @quicklistCount(%struct.quicklist*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.listTypeIterator* @listTypeInitIterator(%struct.redisObject*, i64, i8 zeroext) local_unnamed_addr #0 !dbg !245 {
  %4 = tail call i8* @zmalloc(i64 24) #6, !dbg !277
  %5 = bitcast i8* %4 to %struct.redisObject**, !dbg !278
  store %struct.redisObject* %0, %struct.redisObject** %5, align 8, !dbg !279, !tbaa !280
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !282
  %7 = load i32, i32* %6, align 8, !dbg !282
  %8 = lshr i32 %7, 4, !dbg !282
  %9 = trunc i32 %8 to i8, !dbg !283
  %10 = and i8 %9, 15, !dbg !283
  %11 = getelementptr inbounds i8, i8* %4, i64 8, !dbg !284
  store i8 %10, i8* %11, align 8, !dbg !285, !tbaa !286
  %12 = getelementptr inbounds i8, i8* %4, i64 9, !dbg !287
  store i8 %2, i8* %12, align 1, !dbg !288, !tbaa !289
  %13 = getelementptr inbounds i8, i8* %4, i64 16, !dbg !290
  %14 = bitcast i8* %13 to %struct.quicklistIter**, !dbg !290
  store %struct.quicklistIter* null, %struct.quicklistIter** %14, align 8, !dbg !291, !tbaa !292
  %15 = icmp eq i8 %10, 9, !dbg !293
  br i1 %15, label %16, label %24, !dbg !295

; <label>:16:                                     ; preds = %3
  %17 = icmp eq i8 %2, 0, !dbg !296
  %18 = zext i1 %17 to i32, !dbg !297
  %19 = bitcast i8* %4 to %struct.listTypeIterator*, !dbg !277
  %20 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !300
  %21 = bitcast i8** %20 to %struct.quicklist**, !dbg !300
  %22 = load %struct.quicklist*, %struct.quicklist** %21, align 8, !dbg !300, !tbaa !122
  %23 = tail call %struct.quicklistIter* @quicklistGetIteratorAtIdx(%struct.quicklist* %22, i32 %18, i64 %1) #6, !dbg !302
  store %struct.quicklistIter* %23, %struct.quicklistIter** %14, align 8, !dbg !303, !tbaa !292
  ret %struct.listTypeIterator* %19, !dbg !304

; <label>:24:                                     ; preds = %3
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !305
  tail call void @_exit(i32 1) #7, !dbg !305
  unreachable, !dbg !305
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.quicklistIter* @quicklistGetIteratorAtIdx(%struct.quicklist*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @listTypeReleaseIterator(%struct.listTypeIterator*) local_unnamed_addr #0 !dbg !307 {
  %2 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %0, i64 0, i32 3, !dbg !313
  %3 = bitcast %struct.quicklistIter** %2 to i8**, !dbg !313
  %4 = load i8*, i8** %3, align 8, !dbg !313, !tbaa !292
  tail call void @zfree(i8* %4) #6, !dbg !314
  %5 = bitcast %struct.listTypeIterator* %0 to i8*, !dbg !315
  tail call void @zfree(i8* %5) #6, !dbg !316
  ret void, !dbg !317
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @listTypeNext(%struct.listTypeIterator*, %struct.listTypeEntry*) local_unnamed_addr #0 !dbg !318 {
  %3 = bitcast %struct.listTypeIterator* %0 to i32**, !dbg !342
  %4 = load i32*, i32** %3, align 8, !dbg !342, !tbaa !280
  %5 = load i32, i32* %4, align 8, !dbg !342
  %6 = lshr i32 %5, 4, !dbg !342
  %7 = and i32 %6, 15, !dbg !342
  %8 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %0, i64 0, i32 1, !dbg !342
  %9 = load i8, i8* %8, align 8, !dbg !342, !tbaa !286
  %10 = zext i8 %9 to i32, !dbg !342
  %11 = icmp eq i32 %7, %10, !dbg !342
  br i1 %11, label %13, label %12, !dbg !342

; <label>:12:                                     ; preds = %2
  tail call void @_serverAssert(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 114) #6, !dbg !342
  tail call void @_exit(i32 1) #7, !dbg !342
  unreachable, !dbg !342

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %1, i64 0, i32 0, !dbg !343
  store %struct.listTypeIterator* %0, %struct.listTypeIterator** %14, align 8, !dbg !344, !tbaa !345
  %15 = icmp eq i8 %9, 9, !dbg !348
  br i1 %15, label %16, label %21, !dbg !350

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %0, i64 0, i32 3, !dbg !351
  %18 = load %struct.quicklistIter*, %struct.quicklistIter** %17, align 8, !dbg !351, !tbaa !292
  %19 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %1, i64 0, i32 1, !dbg !353
  %20 = tail call i32 @quicklistNext(%struct.quicklistIter* %18, %struct.quicklistEntry* nonnull %19) #6, !dbg !354
  ret i32 %20, !dbg !355

; <label>:21:                                     ; preds = %13
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !356
  tail call void @_exit(i32 1) #7, !dbg !356
  unreachable, !dbg !356
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @quicklistNext(%struct.quicklistIter*, %struct.quicklistEntry*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @listTypeGet(%struct.listTypeEntry* nocapture readonly) local_unnamed_addr #0 !dbg !358 {
  %2 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 0, !dbg !366
  %3 = load %struct.listTypeIterator*, %struct.listTypeIterator** %2, align 8, !dbg !366, !tbaa !345
  %4 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %3, i64 0, i32 1, !dbg !368
  %5 = load i8, i8* %4, align 8, !dbg !368, !tbaa !286
  %6 = icmp eq i8 %5, 9, !dbg !369
  br i1 %6, label %7, label %20, !dbg !370

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 1, i32 3, !dbg !371
  %9 = load i8*, i8** %8, align 8, !dbg !371, !tbaa !374
  %10 = icmp eq i8* %9, null, !dbg !375
  br i1 %10, label %16, label %11, !dbg !376

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 1, i32 5, !dbg !377
  %13 = load i32, i32* %12, align 8, !dbg !377, !tbaa !379
  %14 = zext i32 %13 to i64, !dbg !380
  %15 = tail call %struct.redisObject* @createStringObject(i8* nonnull %9, i64 %14) #6, !dbg !381
  br label %21, !dbg !382

; <label>:16:                                     ; preds = %7
  %17 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 1, i32 4, !dbg !383
  %18 = load i64, i64* %17, align 8, !dbg !383, !tbaa !385
  %19 = tail call %struct.redisObject* @createStringObjectFromLongLong(i64 %18) #6, !dbg !386
  br label %21

; <label>:20:                                     ; preds = %1
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 136, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !387
  tail call void @_exit(i32 1) #7, !dbg !387
  unreachable, !dbg !387

; <label>:21:                                     ; preds = %11, %16
  %22 = phi %struct.redisObject* [ %15, %11 ], [ %19, %16 ], !dbg !389
  ret %struct.redisObject* %22, !dbg !390
}

; Function Attrs: noredzone nounwind
define dso_local void @listTypeInsert(%struct.listTypeEntry*, %struct.redisObject*, i32) local_unnamed_addr #0 !dbg !391 {
  %4 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 0, !dbg !405
  %5 = load %struct.listTypeIterator*, %struct.listTypeIterator** %4, align 8, !dbg !405, !tbaa !345
  %6 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %5, i64 0, i32 1, !dbg !406
  %7 = load i8, i8* %6, align 8, !dbg !406, !tbaa !286
  %8 = icmp eq i8 %7, 9, !dbg !407
  br i1 %8, label %9, label %48, !dbg !408

; <label>:9:                                      ; preds = %3
  %10 = tail call %struct.redisObject* @getDecodedObject(%struct.redisObject* %1) #6, !dbg !409
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i64 0, i32 2, !dbg !410
  %12 = load i8*, i8** %11, align 8, !dbg !410, !tbaa !122
  %13 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !414
  %14 = load i8, i8* %13, align 1, !dbg !414, !tbaa !141
  %15 = trunc i8 %14 to i3, !dbg !416
  switch i3 %15, label %37 [
    i3 0, label %16
    i3 1, label %19
    i3 2, label %23
    i3 3, label %28
    i3 -4, label %33
  ], !dbg !416

; <label>:16:                                     ; preds = %9
  %17 = lshr i8 %14, 3, !dbg !417
  %18 = zext i8 %17 to i64, !dbg !417
  br label %37, !dbg !418

; <label>:19:                                     ; preds = %9
  %20 = getelementptr inbounds i8, i8* %12, i64 -3, !dbg !419
  %21 = load i8, i8* %20, align 1, !dbg !420, !tbaa !141
  %22 = zext i8 %21 to i64, !dbg !419
  br label %37, !dbg !421

; <label>:23:                                     ; preds = %9
  %24 = getelementptr inbounds i8, i8* %12, i64 -5, !dbg !422
  %25 = bitcast i8* %24 to i16*, !dbg !423
  %26 = load i16, i16* %25, align 1, !dbg !423, !tbaa !152
  %27 = zext i16 %26 to i64, !dbg !422
  br label %37, !dbg !424

; <label>:28:                                     ; preds = %9
  %29 = getelementptr inbounds i8, i8* %12, i64 -9, !dbg !425
  %30 = bitcast i8* %29 to i32*, !dbg !426
  %31 = load i32, i32* %30, align 1, !dbg !426, !tbaa !157
  %32 = zext i32 %31 to i64, !dbg !425
  br label %37, !dbg !427

; <label>:33:                                     ; preds = %9
  %34 = getelementptr inbounds i8, i8* %12, i64 -17, !dbg !428
  %35 = bitcast i8* %34 to i64*, !dbg !429
  %36 = load i64, i64* %35, align 1, !dbg !429, !tbaa !161
  br label %37, !dbg !430

; <label>:37:                                     ; preds = %9, %16, %19, %23, %28, %33
  %38 = phi i64 [ %36, %33 ], [ %32, %28 ], [ %27, %23 ], [ %22, %19 ], [ %18, %16 ], [ 0, %9 ], !dbg !431
  switch i32 %2, label %47 [
    i32 1, label %39
    i32 0, label %43
  ], !dbg !433

; <label>:39:                                     ; preds = %37
  %40 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 1, !dbg !434
  %41 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %40, i64 0, i32 0, !dbg !437
  %42 = load %struct.quicklist*, %struct.quicklist** %41, align 8, !dbg !437, !tbaa !438
  tail call void @quicklistInsertAfter(%struct.quicklist* %42, %struct.quicklistEntry* nonnull %40, i8* %12, i64 %38) #6, !dbg !439
  br label %47, !dbg !440

; <label>:43:                                     ; preds = %37
  %44 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 1, !dbg !441
  %45 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %44, i64 0, i32 0, !dbg !444
  %46 = load %struct.quicklist*, %struct.quicklist** %45, align 8, !dbg !444, !tbaa !438
  tail call void @quicklistInsertBefore(%struct.quicklist* %46, %struct.quicklistEntry* nonnull %44, i8* %12, i64 %38) #6, !dbg !445
  br label %47, !dbg !446

; <label>:47:                                     ; preds = %37, %43, %39
  tail call void @decrRefCount(%struct.redisObject* %10) #6, !dbg !447
  ret void, !dbg !448

; <label>:48:                                     ; preds = %3
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 155, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !449
  tail call void @_exit(i32 1) #7, !dbg !449
  unreachable, !dbg !449
}

; Function Attrs: noredzone
declare dso_local void @quicklistInsertAfter(%struct.quicklist*, %struct.quicklistEntry*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @quicklistInsertBefore(%struct.quicklist*, %struct.quicklistEntry*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @listTypeEqual(%struct.listTypeEntry* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !451 {
  %3 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 0, !dbg !459
  %4 = load %struct.listTypeIterator*, %struct.listTypeIterator** %3, align 8, !dbg !459, !tbaa !345
  %5 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %4, i64 0, i32 1, !dbg !461
  %6 = load i8, i8* %5, align 8, !dbg !461, !tbaa !286
  %7 = icmp eq i8 %6, 9, !dbg !462
  br i1 %7, label %8, label %47, !dbg !463

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !464
  %10 = load i32, i32* %9, align 8, !dbg !464
  %11 = lshr i32 %10, 4, !dbg !464
  %12 = trunc i32 %11 to i4, !dbg !464
  switch i4 %12, label %13 [
    i4 0, label %14
    i4 -8, label %14
  ], !dbg !464

; <label>:13:                                     ; preds = %8
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 162) #6, !dbg !464
  tail call void @_exit(i32 1) #7, !dbg !464
  unreachable, !dbg !464

; <label>:14:                                     ; preds = %8, %8
  %15 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 1, i32 2, !dbg !466
  %16 = load i8*, i8** %15, align 8, !dbg !466, !tbaa !467
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !468
  %18 = load i8*, i8** %17, align 8, !dbg !468, !tbaa !122
  %19 = getelementptr inbounds i8, i8* %18, i64 -1, !dbg !471
  %20 = load i8, i8* %19, align 1, !dbg !471, !tbaa !141
  %21 = trunc i8 %20 to i3, !dbg !473
  switch i3 %21, label %43 [
    i3 0, label %22
    i3 1, label %25
    i3 2, label %29
    i3 3, label %34
    i3 -4, label %39
  ], !dbg !473

; <label>:22:                                     ; preds = %14
  %23 = lshr i8 %20, 3, !dbg !474
  %24 = zext i8 %23 to i64, !dbg !474
  br label %43, !dbg !475

; <label>:25:                                     ; preds = %14
  %26 = getelementptr inbounds i8, i8* %18, i64 -3, !dbg !476
  %27 = load i8, i8* %26, align 1, !dbg !477, !tbaa !141
  %28 = zext i8 %27 to i64, !dbg !476
  br label %43, !dbg !478

; <label>:29:                                     ; preds = %14
  %30 = getelementptr inbounds i8, i8* %18, i64 -5, !dbg !479
  %31 = bitcast i8* %30 to i16*, !dbg !480
  %32 = load i16, i16* %31, align 1, !dbg !480, !tbaa !152
  %33 = zext i16 %32 to i64, !dbg !479
  br label %43, !dbg !481

; <label>:34:                                     ; preds = %14
  %35 = getelementptr inbounds i8, i8* %18, i64 -9, !dbg !482
  %36 = bitcast i8* %35 to i32*, !dbg !483
  %37 = load i32, i32* %36, align 1, !dbg !483, !tbaa !157
  %38 = zext i32 %37 to i64, !dbg !482
  br label %43, !dbg !484

; <label>:39:                                     ; preds = %14
  %40 = getelementptr inbounds i8, i8* %18, i64 -17, !dbg !485
  %41 = bitcast i8* %40 to i64*, !dbg !486
  %42 = load i64, i64* %41, align 1, !dbg !486, !tbaa !161
  br label %43, !dbg !487

; <label>:43:                                     ; preds = %14, %22, %25, %29, %34, %39
  %44 = phi i64 [ %42, %39 ], [ %38, %34 ], [ %33, %29 ], [ %28, %25 ], [ %24, %22 ], [ 0, %14 ], !dbg !488
  %45 = trunc i64 %44 to i32, !dbg !489
  %46 = tail call i32 @quicklistCompare(i8* %16, i8* %18, i32 %45) #6, !dbg !490
  ret i32 %46, !dbg !491

; <label>:47:                                     ; preds = %2
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 165, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !492
  tail call void @_exit(i32 1) #7, !dbg !492
  unreachable, !dbg !492
}

; Function Attrs: noredzone
declare dso_local void @_serverAssertWithInfo(%struct.client*, %struct.redisObject*, i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @quicklistCompare(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @listTypeDelete(%struct.listTypeIterator* nocapture readonly, %struct.listTypeEntry*) local_unnamed_addr #0 !dbg !494 {
  %3 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %1, i64 0, i32 0, !dbg !502
  %4 = load %struct.listTypeIterator*, %struct.listTypeIterator** %3, align 8, !dbg !502, !tbaa !345
  %5 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %4, i64 0, i32 1, !dbg !504
  %6 = load i8, i8* %5, align 8, !dbg !504, !tbaa !286
  %7 = icmp eq i8 %6, 9, !dbg !505
  br i1 %7, label %8, label %12, !dbg !506

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %0, i64 0, i32 3, !dbg !507
  %10 = load %struct.quicklistIter*, %struct.quicklistIter** %9, align 8, !dbg !507, !tbaa !292
  %11 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %1, i64 0, i32 1, !dbg !509
  tail call void @quicklistDelEntry(%struct.quicklistIter* %10, %struct.quicklistEntry* nonnull %11) #6, !dbg !510
  ret void, !dbg !511

; <label>:12:                                     ; preds = %2
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 174, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !512
  tail call void @_exit(i32 1) #7, !dbg !512
  unreachable, !dbg !512
}

; Function Attrs: noredzone
declare dso_local void @quicklistDelEntry(%struct.quicklistIter*, %struct.quicklistEntry*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @listTypeConvert(%struct.redisObject*, i32) local_unnamed_addr #0 !dbg !514 {
  %3 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !526
  %4 = load i32, i32* %3, align 8, !dbg !526
  %5 = and i32 %4, 15, !dbg !526
  %6 = icmp eq i32 %5, 1, !dbg !526
  br i1 %6, label %8, label %7, !dbg !526

; <label>:7:                                      ; preds = %2
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 180) #6, !dbg !526
  tail call void @_exit(i32 1) #7, !dbg !526
  unreachable, !dbg !526

; <label>:8:                                      ; preds = %2
  %9 = and i32 %4, 240, !dbg !527
  %10 = icmp eq i32 %9, 80, !dbg !527
  br i1 %10, label %12, label %11, !dbg !527

; <label>:11:                                     ; preds = %8
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 181) #6, !dbg !527
  tail call void @_exit(i32 1) #7, !dbg !527
  unreachable, !dbg !527

; <label>:12:                                     ; preds = %8
  %13 = icmp eq i32 %1, 9, !dbg !528
  br i1 %13, label %14, label %24, !dbg !529

; <label>:14:                                     ; preds = %12
  %15 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 249), align 8, !dbg !530, !tbaa !531
  %16 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 250), align 4, !dbg !537, !tbaa !538
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !540
  %18 = load i8*, i8** %17, align 8, !dbg !540, !tbaa !122
  %19 = tail call %struct.quicklist* @quicklistCreateFromZiplist(i32 %15, i32 %16, i8* %18) #6, !dbg !541
  %20 = bitcast i8** %17 to %struct.quicklist**, !dbg !542
  store %struct.quicklist* %19, %struct.quicklist** %20, align 8, !dbg !542, !tbaa !122
  %21 = load i32, i32* %3, align 8, !dbg !543
  %22 = and i32 %21, -241, !dbg !543
  %23 = or i32 %22, 144, !dbg !543
  store i32 %23, i32* %3, align 8, !dbg !543
  ret void, !dbg !544

; <label>:24:                                     ; preds = %12
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 189, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !545
  tail call void @_exit(i32 1) #7, !dbg !545
  unreachable, !dbg !545
}

; Function Attrs: noredzone
declare dso_local %struct.quicklist* @quicklistCreateFromZiplist(i32, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @pushGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !547 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !788
  %4 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !788, !tbaa !789
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !793
  %6 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !793, !tbaa !794
  %7 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 1, !dbg !795
  %8 = load %struct.redisObject*, %struct.redisObject** %7, align 8, !dbg !795, !tbaa !198
  %9 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %4, %struct.redisObject* %8) #6, !dbg !796
  %10 = icmp eq %struct.redisObject* %9, null, !dbg !798
  br i1 %10, label %18, label %11, !dbg !800

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %9, i64 0, i32 0, !dbg !801
  %13 = load i32, i32* %12, align 8, !dbg !801
  %14 = and i32 %13, 15, !dbg !801
  %15 = icmp eq i32 %14, 1, !dbg !802
  br i1 %15, label %18, label %16, !dbg !803

; <label>:16:                                     ; preds = %11
  %17 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !804, !tbaa !806
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %17) #6, !dbg !808
  br label %84, !dbg !809

; <label>:18:                                     ; preds = %11, %2
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !811
  %20 = load i32, i32* %19, align 8, !dbg !811, !tbaa !814
  %21 = icmp sgt i32 %20, 2, !dbg !815
  br i1 %21, label %22, label %49, !dbg !816

; <label>:22:                                     ; preds = %18, %38
  %23 = phi i64 [ %44, %38 ], [ 2, %18 ]
  %24 = phi i1 [ %48, %38 ], [ %10, %18 ]
  %25 = phi %struct.redisObject* [ %39, %38 ], [ %9, %18 ]
  %26 = phi i32 [ %43, %38 ], [ 0, %18 ]
  br i1 %24, label %27, label %38, !dbg !817

; <label>:27:                                     ; preds = %22
  %28 = tail call %struct.redisObject* @createQuicklistObject() #6, !dbg !819
  %29 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %28, i64 0, i32 2, !dbg !822
  %30 = bitcast i8** %29 to %struct.quicklist**, !dbg !822
  %31 = load %struct.quicklist*, %struct.quicklist** %30, align 8, !dbg !822, !tbaa !122
  %32 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 249), align 8, !dbg !823, !tbaa !531
  %33 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 250), align 4, !dbg !824, !tbaa !538
  tail call void @quicklistSetOptions(%struct.quicklist* %31, i32 %32, i32 %33) #6, !dbg !825
  %34 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !826, !tbaa !789
  %35 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !827, !tbaa !794
  %36 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %35, i64 1, !dbg !828
  %37 = load %struct.redisObject*, %struct.redisObject** %36, align 8, !dbg !828, !tbaa !198
  tail call void @dbAdd(%struct.redisDb* %34, %struct.redisObject* %37, %struct.redisObject* %28) #6, !dbg !829
  br label %38, !dbg !830

; <label>:38:                                     ; preds = %22, %27
  %39 = phi %struct.redisObject* [ %25, %22 ], [ %28, %27 ], !dbg !831
  %40 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !832, !tbaa !794
  %41 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %40, i64 %23, !dbg !833
  %42 = load %struct.redisObject*, %struct.redisObject** %41, align 8, !dbg !833, !tbaa !198
  tail call void @listTypePush(%struct.redisObject* %39, %struct.redisObject* %42, i32 %1) #9, !dbg !834
  %43 = add nuw nsw i32 %26, 1, !dbg !835
  %44 = add nuw nsw i64 %23, 1, !dbg !836
  %45 = load i32, i32* %19, align 8, !dbg !811, !tbaa !814
  %46 = sext i32 %45 to i64, !dbg !815
  %47 = icmp slt i64 %44, %46, !dbg !815
  %48 = icmp eq %struct.redisObject* %39, null, !dbg !837
  br i1 %47, label %22, label %49, !dbg !816, !llvm.loop !838

; <label>:49:                                     ; preds = %38, %18
  %50 = phi i32 [ 0, %18 ], [ %43, %38 ], !dbg !840
  %51 = phi %struct.redisObject* [ %9, %18 ], [ %39, %38 ], !dbg !797
  %52 = phi i1 [ %10, %18 ], [ %48, %38 ], !dbg !837
  br i1 %52, label %64, label %53, !dbg !841

; <label>:53:                                     ; preds = %49
  %54 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %51, i64 0, i32 0, !dbg !844
  %55 = load i32, i32* %54, align 8, !dbg !844
  %56 = and i32 %55, 240, !dbg !844
  %57 = icmp eq i32 %56, 144, !dbg !845
  br i1 %57, label %59, label %58, !dbg !846

; <label>:58:                                     ; preds = %53
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !847
  tail call void @_exit(i32 1) #7, !dbg !847
  unreachable, !dbg !847

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %51, i64 0, i32 2, !dbg !848
  %61 = bitcast i8** %60 to %struct.quicklist**, !dbg !848
  %62 = load %struct.quicklist*, %struct.quicklist** %61, align 8, !dbg !848, !tbaa !122
  %63 = tail call i64 @quicklistCount(%struct.quicklist* %62) #6, !dbg !849
  br label %64, !dbg !841

; <label>:64:                                     ; preds = %49, %59
  %65 = phi i64 [ %63, %59 ], [ 0, %49 ], !dbg !841
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %65) #6, !dbg !850
  %66 = icmp eq i32 %50, 0, !dbg !851
  br i1 %66, label %80, label %67, !dbg !852

; <label>:67:                                     ; preds = %64
  %68 = icmp eq i32 %1, 0, !dbg !853
  %69 = select i1 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), !dbg !854
  %70 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !856, !tbaa !789
  %71 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !857, !tbaa !794
  %72 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %71, i64 1, !dbg !858
  %73 = load %struct.redisObject*, %struct.redisObject** %72, align 8, !dbg !858, !tbaa !198
  tail call void @signalModifiedKey(%struct.redisDb* %70, %struct.redisObject* %73) #6, !dbg !859
  %74 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !860, !tbaa !794
  %75 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %74, i64 1, !dbg !861
  %76 = load %struct.redisObject*, %struct.redisObject** %75, align 8, !dbg !861, !tbaa !198
  %77 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !862, !tbaa !789
  %78 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %77, i64 0, i32 5, !dbg !863
  %79 = load i32, i32* %78, align 8, !dbg !863, !tbaa !864
  tail call void @notifyKeyspaceEvent(i32 16, i8* %69, %struct.redisObject* %76, i32 %79) #6, !dbg !866
  br label %80, !dbg !867

; <label>:80:                                     ; preds = %64, %67
  %81 = zext i32 %50 to i64, !dbg !868
  %82 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !869, !tbaa !870
  %83 = add nsw i64 %82, %81, !dbg !869
  store i64 %83, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !869, !tbaa !870
  br label %84, !dbg !871

; <label>:84:                                     ; preds = %80, %16
  ret void, !dbg !871
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyWrite(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createQuicklistObject() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @quicklistSetOptions(%struct.quicklist*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @dbAdd(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @signalModifiedKey(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @notifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lpushCommand(%struct.client*) local_unnamed_addr #0 !dbg !872 {
  tail call void @pushGenericCommand(%struct.client* %0, i32 0) #9, !dbg !876
  ret void, !dbg !877
}

; Function Attrs: noredzone nounwind
define dso_local void @rpushCommand(%struct.client*) local_unnamed_addr #0 !dbg !878 {
  tail call void @pushGenericCommand(%struct.client* %0, i32 1) #9, !dbg !882
  ret void, !dbg !883
}

; Function Attrs: noredzone nounwind
define dso_local void @pushxGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !884 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !897
  %4 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !897, !tbaa !794
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 1, !dbg !899
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !899, !tbaa !198
  %7 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !900, !tbaa !901
  %8 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* %0, %struct.redisObject* %6, %struct.redisObject* %7) #6, !dbg !902
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !904
  br i1 %9, label %59, label %10, !dbg !905

; <label>:10:                                     ; preds = %2
  %11 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %8, i32 1) #6, !dbg !906
  %12 = icmp eq i32 %11, 0, !dbg !906
  br i1 %12, label %13, label %59, !dbg !907

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !909
  %15 = load i32, i32* %14, align 8, !dbg !909, !tbaa !814
  %16 = icmp sgt i32 %15, 2, !dbg !912
  br i1 %16, label %17, label %28, !dbg !913

; <label>:17:                                     ; preds = %13, %17
  %18 = phi i64 [ %24, %17 ], [ 2, %13 ]
  %19 = phi i32 [ %23, %17 ], [ 0, %13 ]
  %20 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !914, !tbaa !794
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 %18, !dbg !916
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !916, !tbaa !198
  tail call void @listTypePush(%struct.redisObject* nonnull %8, %struct.redisObject* %22, i32 %1) #9, !dbg !917
  %23 = add nuw nsw i32 %19, 1, !dbg !918
  %24 = add nuw nsw i64 %18, 1, !dbg !919
  %25 = load i32, i32* %14, align 8, !dbg !909, !tbaa !814
  %26 = sext i32 %25 to i64, !dbg !912
  %27 = icmp slt i64 %24, %26, !dbg !912
  br i1 %27, label %17, label %28, !dbg !913, !llvm.loop !920

; <label>:28:                                     ; preds = %17, %13
  %29 = phi i32 [ 0, %13 ], [ %23, %17 ], !dbg !922
  %30 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 0, !dbg !925
  %31 = load i32, i32* %30, align 8, !dbg !925
  %32 = and i32 %31, 240, !dbg !925
  %33 = icmp eq i32 %32, 144, !dbg !926
  br i1 %33, label %35, label %34, !dbg !927

; <label>:34:                                     ; preds = %28
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !928
  tail call void @_exit(i32 1) #7, !dbg !928
  unreachable, !dbg !928

; <label>:35:                                     ; preds = %28
  %36 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !929
  %37 = bitcast i8** %36 to %struct.quicklist**, !dbg !929
  %38 = load %struct.quicklist*, %struct.quicklist** %37, align 8, !dbg !929, !tbaa !122
  %39 = tail call i64 @quicklistCount(%struct.quicklist* %38) #6, !dbg !930
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %39) #6, !dbg !931
  %40 = icmp eq i32 %29, 0, !dbg !932
  br i1 %40, label %55, label %41, !dbg !933

; <label>:41:                                     ; preds = %35
  %42 = icmp eq i32 %1, 0, !dbg !934
  %43 = select i1 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), !dbg !935
  %44 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !937
  %45 = load %struct.redisDb*, %struct.redisDb** %44, align 8, !dbg !937, !tbaa !789
  %46 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !938, !tbaa !794
  %47 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %46, i64 1, !dbg !939
  %48 = load %struct.redisObject*, %struct.redisObject** %47, align 8, !dbg !939, !tbaa !198
  tail call void @signalModifiedKey(%struct.redisDb* %45, %struct.redisObject* %48) #6, !dbg !940
  %49 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !941, !tbaa !794
  %50 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %49, i64 1, !dbg !942
  %51 = load %struct.redisObject*, %struct.redisObject** %50, align 8, !dbg !942, !tbaa !198
  %52 = load %struct.redisDb*, %struct.redisDb** %44, align 8, !dbg !943, !tbaa !789
  %53 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %52, i64 0, i32 5, !dbg !944
  %54 = load i32, i32* %53, align 8, !dbg !944, !tbaa !864
  tail call void @notifyKeyspaceEvent(i32 16, i8* %43, %struct.redisObject* %51, i32 %54) #6, !dbg !945
  br label %55, !dbg !946

; <label>:55:                                     ; preds = %35, %41
  %56 = zext i32 %29 to i64, !dbg !947
  %57 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !948, !tbaa !870
  %58 = add nsw i64 %57, %56, !dbg !948
  store i64 %58, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !948, !tbaa !870
  br label %59, !dbg !949

; <label>:59:                                     ; preds = %2, %10, %55
  ret void, !dbg !949
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyWriteOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @checkType(%struct.client*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lpushxCommand(%struct.client*) local_unnamed_addr #0 !dbg !950 {
  tail call void @pushxGenericCommand(%struct.client* %0, i32 0) #9, !dbg !954
  ret void, !dbg !955
}

; Function Attrs: noredzone nounwind
define dso_local void @rpushxCommand(%struct.client*) local_unnamed_addr #0 !dbg !956 {
  tail call void @pushxGenericCommand(%struct.client* %0, i32 1) #9, !dbg !960
  ret void, !dbg !961
}

; Function Attrs: noredzone nounwind
define dso_local void @linsertCommand(%struct.client*) local_unnamed_addr #0 !dbg !962 {
  %2 = alloca %struct.listTypeEntry, align 8
  %3 = bitcast %struct.listTypeEntry* %2 to i8*, !dbg !971
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #8, !dbg !971
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !973
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !973, !tbaa !794
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 2, !dbg !975
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !975, !tbaa !198
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !976
  %9 = load i8*, i8** %8, align 8, !dbg !976, !tbaa !122
  %10 = tail call i32 @strcasecmp(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !977
  %11 = icmp eq i32 %10, 0, !dbg !978
  br i1 %11, label %17, label %12, !dbg !979

; <label>:12:                                     ; preds = %1
  %13 = tail call i32 @strcasecmp(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !980
  %14 = icmp eq i32 %13, 0, !dbg !982
  br i1 %14, label %17, label %15, !dbg !983

; <label>:15:                                     ; preds = %12
  %16 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !984, !tbaa !986
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %16) #6, !dbg !987
  br label %101, !dbg !988

; <label>:17:                                     ; preds = %12, %1
  %18 = phi i32 [ 1, %1 ], [ 0, %12 ], !dbg !989
  %19 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !992
  %20 = load %struct.redisObject*, %struct.redisObject** %19, align 8, !dbg !992, !tbaa !198
  %21 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !994, !tbaa !901
  %22 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* nonnull %0, %struct.redisObject* %20, %struct.redisObject* %21) #6, !dbg !995
  %23 = icmp eq %struct.redisObject* %22, null, !dbg !997
  br i1 %23, label %101, label %24, !dbg !998

; <label>:24:                                     ; preds = %17
  %25 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %22, i32 1) #6, !dbg !999
  %26 = icmp eq i32 %25, 0, !dbg !999
  br i1 %26, label %27, label %101, !dbg !1000

; <label>:27:                                     ; preds = %24
  %28 = tail call i8* @zmalloc(i64 24) #6, !dbg !1005
  %29 = bitcast i8* %28 to %struct.redisObject**, !dbg !1006
  store %struct.redisObject* %22, %struct.redisObject** %29, align 8, !dbg !1007, !tbaa !280
  %30 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %22, i64 0, i32 0, !dbg !1008
  %31 = load i32, i32* %30, align 8, !dbg !1008
  %32 = lshr i32 %31, 4, !dbg !1008
  %33 = trunc i32 %32 to i8, !dbg !1009
  %34 = and i8 %33, 15, !dbg !1009
  %35 = getelementptr inbounds i8, i8* %28, i64 8, !dbg !1010
  store i8 %34, i8* %35, align 8, !dbg !1011, !tbaa !286
  %36 = getelementptr inbounds i8, i8* %28, i64 9, !dbg !1012
  store i8 1, i8* %36, align 1, !dbg !1013, !tbaa !289
  %37 = getelementptr inbounds i8, i8* %28, i64 16, !dbg !1014
  %38 = bitcast i8* %37 to %struct.quicklistIter**, !dbg !1014
  store %struct.quicklistIter* null, %struct.quicklistIter** %38, align 8, !dbg !1015, !tbaa !292
  %39 = icmp eq i8 %34, 9, !dbg !1016
  br i1 %39, label %41, label %40, !dbg !1017

; <label>:40:                                     ; preds = %27
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1018
  tail call void @_exit(i32 1) #7, !dbg !1018
  unreachable, !dbg !1018

; <label>:41:                                     ; preds = %27
  %42 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %22, i64 0, i32 2, !dbg !1021
  %43 = bitcast i8** %42 to %struct.quicklist**, !dbg !1021
  %44 = load %struct.quicklist*, %struct.quicklist** %43, align 8, !dbg !1021, !tbaa !122
  %45 = tail call %struct.quicklistIter* @quicklistGetIteratorAtIdx(%struct.quicklist* %44, i32 0, i64 0) #6, !dbg !1022
  store %struct.quicklistIter* %45, %struct.quicklistIter** %38, align 8, !dbg !1023, !tbaa !292
  %46 = bitcast i8* %28 to i32**
  %47 = bitcast %struct.listTypeEntry* %2 to i8**
  %48 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %2, i64 0, i32 1
  br label %49, !dbg !1025

; <label>:49:                                     ; preds = %65, %41
  %50 = load i32*, i32** %46, align 8, !dbg !1030, !tbaa !280
  %51 = load i32, i32* %50, align 8, !dbg !1030
  %52 = lshr i32 %51, 4, !dbg !1030
  %53 = and i32 %52, 15, !dbg !1030
  %54 = load i8, i8* %35, align 8, !dbg !1030, !tbaa !286
  %55 = zext i8 %54 to i32, !dbg !1030
  %56 = icmp eq i32 %53, %55, !dbg !1030
  br i1 %56, label %58, label %57, !dbg !1030

; <label>:57:                                     ; preds = %49
  call void @_serverAssert(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 114) #6, !dbg !1030
  call void @_exit(i32 1) #7, !dbg !1030
  unreachable, !dbg !1030

; <label>:58:                                     ; preds = %49
  store i8* %28, i8** %47, align 8, !dbg !1031, !tbaa !345
  %59 = icmp eq i8 %54, 9, !dbg !1032
  br i1 %59, label %61, label %60, !dbg !1033

; <label>:60:                                     ; preds = %58
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1034
  call void @_exit(i32 1) #7, !dbg !1034
  unreachable, !dbg !1034

; <label>:61:                                     ; preds = %58
  %62 = load %struct.quicklistIter*, %struct.quicklistIter** %38, align 8, !dbg !1035, !tbaa !292
  %63 = call i32 @quicklistNext(%struct.quicklistIter* %62, %struct.quicklistEntry* nonnull %48) #6, !dbg !1036
  %64 = icmp eq i32 %63, 0, !dbg !1025
  br i1 %64, label %97, label %65, !dbg !1025

; <label>:65:                                     ; preds = %61
  %66 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1037, !tbaa !794
  %67 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %66, i64 3, !dbg !1040
  %68 = load %struct.redisObject*, %struct.redisObject** %67, align 8, !dbg !1040, !tbaa !198
  %69 = call i32 @listTypeEqual(%struct.listTypeEntry* nonnull %2, %struct.redisObject* %68) #9, !dbg !1041
  %70 = icmp eq i32 %69, 0, !dbg !1041
  br i1 %70, label %49, label %71, !dbg !1042, !llvm.loop !1043

; <label>:71:                                     ; preds = %65
  %72 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1045, !tbaa !794
  %73 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %72, i64 4, !dbg !1047
  %74 = load %struct.redisObject*, %struct.redisObject** %73, align 8, !dbg !1047, !tbaa !198
  call void @listTypeInsert(%struct.listTypeEntry* nonnull %2, %struct.redisObject* %74, i32 %18) #9, !dbg !1048
  %75 = bitcast i8* %37 to i8**, !dbg !1051
  %76 = load i8*, i8** %75, align 8, !dbg !1051, !tbaa !292
  call void @zfree(i8* %76) #6, !dbg !1052
  call void @zfree(i8* nonnull %28) #6, !dbg !1053
  %77 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1054
  %78 = load %struct.redisDb*, %struct.redisDb** %77, align 8, !dbg !1054, !tbaa !789
  %79 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1057, !tbaa !794
  %80 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %79, i64 1, !dbg !1058
  %81 = load %struct.redisObject*, %struct.redisObject** %80, align 8, !dbg !1058, !tbaa !198
  call void @signalModifiedKey(%struct.redisDb* %78, %struct.redisObject* %81) #6, !dbg !1059
  %82 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1060, !tbaa !794
  %83 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %82, i64 1, !dbg !1061
  %84 = load %struct.redisObject*, %struct.redisObject** %83, align 8, !dbg !1061, !tbaa !198
  %85 = load %struct.redisDb*, %struct.redisDb** %77, align 8, !dbg !1062, !tbaa !789
  %86 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %85, i64 0, i32 5, !dbg !1063
  %87 = load i32, i32* %86, align 8, !dbg !1063, !tbaa !864
  call void @notifyKeyspaceEvent(i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), %struct.redisObject* %84, i32 %87) #6, !dbg !1064
  %88 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1065, !tbaa !870
  %89 = add nsw i64 %88, 1, !dbg !1065
  store i64 %89, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1065, !tbaa !870
  %90 = load i32, i32* %30, align 8, !dbg !1068
  %91 = and i32 %90, 240, !dbg !1068
  %92 = icmp eq i32 %91, 144, !dbg !1069
  br i1 %92, label %94, label %93, !dbg !1070

; <label>:93:                                     ; preds = %71
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1071
  call void @_exit(i32 1) #7, !dbg !1071
  unreachable, !dbg !1071

; <label>:94:                                     ; preds = %71
  %95 = load %struct.quicklist*, %struct.quicklist** %43, align 8, !dbg !1072, !tbaa !122
  %96 = call i64 @quicklistCount(%struct.quicklist* %95) #6, !dbg !1073
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %96) #6, !dbg !1074
  br label %101, !dbg !1075

; <label>:97:                                     ; preds = %61
  %98 = bitcast i8* %37 to i8**, !dbg !1078
  %99 = load i8*, i8** %98, align 8, !dbg !1078, !tbaa !292
  call void @zfree(i8* %99) #6, !dbg !1079
  call void @zfree(i8* nonnull %28) #6, !dbg !1080
  %100 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 6), align 8, !dbg !1081, !tbaa !1083
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %100) #6, !dbg !1084
  br label %101, !dbg !1085

; <label>:101:                                    ; preds = %17, %24, %94, %97, %15
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #8, !dbg !1075
  ret void, !dbg !1075
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @llenCommand(%struct.client*) local_unnamed_addr #0 !dbg !1086 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1091
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1091, !tbaa !794
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !1092
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !1092, !tbaa !198
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1093, !tbaa !901
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #6, !dbg !1094
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !1096
  br i1 %8, label %23, label %9, !dbg !1098

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 1) #6, !dbg !1099
  %11 = icmp eq i32 %10, 0, !dbg !1099
  br i1 %11, label %12, label %23, !dbg !1100

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 0, !dbg !1103
  %14 = load i32, i32* %13, align 8, !dbg !1103
  %15 = and i32 %14, 240, !dbg !1103
  %16 = icmp eq i32 %15, 144, !dbg !1104
  br i1 %16, label %18, label %17, !dbg !1105

; <label>:17:                                     ; preds = %12
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1106
  tail call void @_exit(i32 1) #7, !dbg !1106
  unreachable, !dbg !1106

; <label>:18:                                     ; preds = %12
  %19 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !1107
  %20 = bitcast i8** %19 to %struct.quicklist**, !dbg !1107
  %21 = load %struct.quicklist*, %struct.quicklist** %20, align 8, !dbg !1107, !tbaa !122
  %22 = tail call i64 @quicklistCount(%struct.quicklist* %21) #6, !dbg !1108
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %22) #6, !dbg !1109
  br label %23, !dbg !1110

; <label>:23:                                     ; preds = %1, %9, %18
  ret void, !dbg !1110
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyReadOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lindexCommand(%struct.client*) local_unnamed_addr #0 !dbg !1111 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.quicklistEntry, align 8
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1121
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1121, !tbaa !794
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !1122
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1122, !tbaa !198
  %8 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1123, !tbaa !1124
  %9 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %7, %struct.redisObject* %8) #6, !dbg !1125
  %10 = icmp eq %struct.redisObject* %9, null, !dbg !1127
  br i1 %10, label %54, label %11, !dbg !1129

; <label>:11:                                     ; preds = %1
  %12 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %9, i32 1) #6, !dbg !1130
  %13 = icmp eq i32 %12, 0, !dbg !1130
  br i1 %13, label %14, label %54, !dbg !1131

; <label>:14:                                     ; preds = %11
  %15 = bitcast i64* %2 to i8*, !dbg !1132
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #8, !dbg !1132
  %16 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1134, !tbaa !794
  %17 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 2, !dbg !1136
  %18 = load %struct.redisObject*, %struct.redisObject** %17, align 8, !dbg !1136, !tbaa !198
  %19 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %18, i64* nonnull %2, i8* null) #6, !dbg !1138
  %20 = icmp eq i32 %19, 0, !dbg !1139
  br i1 %20, label %21, label %53, !dbg !1140

; <label>:21:                                     ; preds = %14
  %22 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %9, i64 0, i32 0, !dbg !1141
  %23 = load i32, i32* %22, align 8, !dbg !1141
  %24 = and i32 %23, 240, !dbg !1141
  %25 = icmp eq i32 %24, 144, !dbg !1142
  br i1 %25, label %26, label %52, !dbg !1143

; <label>:26:                                     ; preds = %21
  %27 = bitcast %struct.quicklistEntry* %3 to i8*, !dbg !1144
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %27) #8, !dbg !1144
  %28 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %9, i64 0, i32 2, !dbg !1145
  %29 = bitcast i8** %28 to %struct.quicklist**, !dbg !1145
  %30 = load %struct.quicklist*, %struct.quicklist** %29, align 8, !dbg !1145, !tbaa !122
  %31 = load i64, i64* %2, align 8, !dbg !1147, !tbaa !161
  %32 = call i32 @quicklistIndex(%struct.quicklist* %30, i64 %31, %struct.quicklistEntry* nonnull %3) #6, !dbg !1149
  %33 = icmp eq i32 %32, 0, !dbg !1149
  br i1 %33, label %49, label %34, !dbg !1150

; <label>:34:                                     ; preds = %26
  %35 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %3, i64 0, i32 3, !dbg !1151
  %36 = load i8*, i8** %35, align 8, !dbg !1151, !tbaa !1154
  %37 = icmp eq i8* %36, null, !dbg !1155
  br i1 %37, label %43, label %38, !dbg !1156

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %3, i64 0, i32 5, !dbg !1157
  %40 = load i32, i32* %39, align 8, !dbg !1157, !tbaa !1159
  %41 = zext i32 %40 to i64, !dbg !1160
  %42 = call %struct.redisObject* @createStringObject(i8* nonnull %36, i64 %41) #6, !dbg !1161
  br label %47, !dbg !1162

; <label>:43:                                     ; preds = %34
  %44 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %3, i64 0, i32 4, !dbg !1163
  %45 = load i64, i64* %44, align 8, !dbg !1163, !tbaa !1165
  %46 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %45) #6, !dbg !1166
  br label %47

; <label>:47:                                     ; preds = %43, %38
  %48 = phi %struct.redisObject* [ %42, %38 ], [ %46, %43 ], !dbg !1167
  call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %48) #6, !dbg !1168
  call void @decrRefCount(%struct.redisObject* %48) #6, !dbg !1169
  br label %51, !dbg !1170

; <label>:49:                                     ; preds = %26
  %50 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1171, !tbaa !1124
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %50) #6, !dbg !1173
  br label %51

; <label>:51:                                     ; preds = %49, %47
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %27) #8, !dbg !1174
  br label %53, !dbg !1175

; <label>:52:                                     ; preds = %21
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 337, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1176
  call void @_exit(i32 1) #7, !dbg !1176
  unreachable, !dbg !1176

; <label>:53:                                     ; preds = %14, %51
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #8, !dbg !1175
  br label %54

; <label>:54:                                     ; preds = %1, %11, %53
  ret void, !dbg !1175
}

; Function Attrs: noredzone
declare dso_local i32 @getLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @quicklistIndex(%struct.quicklist*, i64, %struct.quicklistEntry*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulk(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lsetCommand(%struct.client*) local_unnamed_addr #0 !dbg !1178 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1189
  %4 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !1189, !tbaa !794
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 1, !dbg !1190
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !1190, !tbaa !198
  %7 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 15), align 8, !dbg !1191, !tbaa !1192
  %8 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* %0, %struct.redisObject* %6, %struct.redisObject* %7) #6, !dbg !1193
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !1195
  br i1 %9, label %82, label %10, !dbg !1197

; <label>:10:                                     ; preds = %1
  %11 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %8, i32 1) #6, !dbg !1198
  %12 = icmp eq i32 %11, 0, !dbg !1198
  br i1 %12, label %13, label %82, !dbg !1199

; <label>:13:                                     ; preds = %10
  %14 = bitcast i64* %2 to i8*, !dbg !1200
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #8, !dbg !1200
  %15 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !1201, !tbaa !794
  %16 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 3, !dbg !1202
  %17 = load %struct.redisObject*, %struct.redisObject** %16, align 8, !dbg !1202, !tbaa !198
  %18 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 2, !dbg !1204
  %19 = load %struct.redisObject*, %struct.redisObject** %18, align 8, !dbg !1204, !tbaa !198
  %20 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %19, i64* nonnull %2, i8* null) #6, !dbg !1207
  %21 = icmp eq i32 %20, 0, !dbg !1208
  br i1 %21, label %22, label %81, !dbg !1209

; <label>:22:                                     ; preds = %13
  %23 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 0, !dbg !1210
  %24 = load i32, i32* %23, align 8, !dbg !1210
  %25 = and i32 %24, 240, !dbg !1210
  %26 = icmp eq i32 %25, 144, !dbg !1211
  br i1 %26, label %27, label %80, !dbg !1212

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !1213
  %29 = bitcast i8** %28 to %struct.quicklist**, !dbg !1213
  %30 = load %struct.quicklist*, %struct.quicklist** %29, align 8, !dbg !1213, !tbaa !122
  %31 = load i64, i64* %2, align 8, !dbg !1215, !tbaa !161
  %32 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i64 0, i32 2, !dbg !1216
  %33 = load i8*, i8** %32, align 8, !dbg !1216, !tbaa !122
  %34 = getelementptr inbounds i8, i8* %33, i64 -1, !dbg !1219
  %35 = load i8, i8* %34, align 1, !dbg !1219, !tbaa !141
  %36 = trunc i8 %35 to i3, !dbg !1221
  switch i3 %36, label %58 [
    i3 0, label %37
    i3 1, label %40
    i3 2, label %44
    i3 3, label %49
    i3 -4, label %54
  ], !dbg !1221

; <label>:37:                                     ; preds = %27
  %38 = lshr i8 %35, 3, !dbg !1222
  %39 = zext i8 %38 to i64, !dbg !1222
  br label %58, !dbg !1223

; <label>:40:                                     ; preds = %27
  %41 = getelementptr inbounds i8, i8* %33, i64 -3, !dbg !1224
  %42 = load i8, i8* %41, align 1, !dbg !1225, !tbaa !141
  %43 = zext i8 %42 to i64, !dbg !1224
  br label %58, !dbg !1226

; <label>:44:                                     ; preds = %27
  %45 = getelementptr inbounds i8, i8* %33, i64 -5, !dbg !1227
  %46 = bitcast i8* %45 to i16*, !dbg !1228
  %47 = load i16, i16* %46, align 1, !dbg !1228, !tbaa !152
  %48 = zext i16 %47 to i64, !dbg !1227
  br label %58, !dbg !1229

; <label>:49:                                     ; preds = %27
  %50 = getelementptr inbounds i8, i8* %33, i64 -9, !dbg !1230
  %51 = bitcast i8* %50 to i32*, !dbg !1231
  %52 = load i32, i32* %51, align 1, !dbg !1231, !tbaa !157
  %53 = zext i32 %52 to i64, !dbg !1230
  br label %58, !dbg !1232

; <label>:54:                                     ; preds = %27
  %55 = getelementptr inbounds i8, i8* %33, i64 -17, !dbg !1233
  %56 = bitcast i8* %55 to i64*, !dbg !1234
  %57 = load i64, i64* %56, align 1, !dbg !1234, !tbaa !161
  br label %58, !dbg !1235

; <label>:58:                                     ; preds = %27, %37, %40, %44, %49, %54
  %59 = phi i64 [ %57, %54 ], [ %53, %49 ], [ %48, %44 ], [ %43, %40 ], [ %39, %37 ], [ 0, %27 ], !dbg !1236
  %60 = trunc i64 %59 to i32, !dbg !1237
  %61 = call i32 @quicklistReplaceAtIndex(%struct.quicklist* %30, i64 %31, i8* %33, i32 %60) #6, !dbg !1238
  %62 = icmp eq i32 %61, 0, !dbg !1240
  br i1 %62, label %63, label %65, !dbg !1242

; <label>:63:                                     ; preds = %58
  %64 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 18), align 8, !dbg !1243, !tbaa !1245
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %64) #6, !dbg !1246
  br label %81, !dbg !1247

; <label>:65:                                     ; preds = %58
  %66 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1248, !tbaa !1250
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %66) #6, !dbg !1251
  %67 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1252
  %68 = load %struct.redisDb*, %struct.redisDb** %67, align 8, !dbg !1252, !tbaa !789
  %69 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !1253, !tbaa !794
  %70 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %69, i64 1, !dbg !1254
  %71 = load %struct.redisObject*, %struct.redisObject** %70, align 8, !dbg !1254, !tbaa !198
  call void @signalModifiedKey(%struct.redisDb* %68, %struct.redisObject* %71) #6, !dbg !1255
  %72 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !1256, !tbaa !794
  %73 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %72, i64 1, !dbg !1257
  %74 = load %struct.redisObject*, %struct.redisObject** %73, align 8, !dbg !1257, !tbaa !198
  %75 = load %struct.redisDb*, %struct.redisDb** %67, align 8, !dbg !1258, !tbaa !789
  %76 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %75, i64 0, i32 5, !dbg !1259
  %77 = load i32, i32* %76, align 8, !dbg !1259, !tbaa !864
  call void @notifyKeyspaceEvent(i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %struct.redisObject* %74, i32 %77) #6, !dbg !1260
  %78 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1261, !tbaa !870
  %79 = add nsw i64 %78, 1, !dbg !1261
  store i64 %79, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1261, !tbaa !870
  br label %81

; <label>:80:                                     ; preds = %22
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 363, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1262
  call void @_exit(i32 1) #7, !dbg !1262
  unreachable, !dbg !1262

; <label>:81:                                     ; preds = %63, %65, %13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #8, !dbg !1264
  br label %82

; <label>:82:                                     ; preds = %1, %10, %81
  ret void, !dbg !1264
}

; Function Attrs: noredzone
declare dso_local i32 @quicklistReplaceAtIndex(%struct.quicklist*, i64, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @popGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !1265 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.redisObject*, align 8
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1276
  %6 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !1276, !tbaa !794
  %7 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 1, !dbg !1277
  %8 = load %struct.redisObject*, %struct.redisObject** %7, align 8, !dbg !1277, !tbaa !198
  %9 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1278, !tbaa !1124
  %10 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* %0, %struct.redisObject* %8, %struct.redisObject* %9) #6, !dbg !1279
  %11 = icmp eq %struct.redisObject* %10, null, !dbg !1281
  br i1 %11, label %80, label %12, !dbg !1283

; <label>:12:                                     ; preds = %2
  %13 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %10, i32 1) #6, !dbg !1284
  %14 = icmp eq i32 %13, 0, !dbg !1284
  br i1 %14, label %15, label %80, !dbg !1285

; <label>:15:                                     ; preds = %12
  %16 = bitcast i64* %3 to i8*, !dbg !1289
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #8, !dbg !1289
  %17 = bitcast %struct.redisObject** %4 to i8*, !dbg !1290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #8, !dbg !1290
  store %struct.redisObject* null, %struct.redisObject** %4, align 8, !dbg !1291, !tbaa !198
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i64 0, i32 0, !dbg !1292
  %19 = load i32, i32* %18, align 8, !dbg !1292
  %20 = and i32 %19, 240, !dbg !1292
  %21 = icmp eq i32 %20, 144, !dbg !1293
  br i1 %21, label %22, label %37, !dbg !1294

; <label>:22:                                     ; preds = %15
  %23 = icmp ne i32 %1, 0, !dbg !1295
  %24 = sext i1 %23 to i32, !dbg !1296
  %25 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i64 0, i32 2, !dbg !1298
  %26 = bitcast i8** %25 to %struct.quicklist**, !dbg !1298
  %27 = load %struct.quicklist*, %struct.quicklist** %26, align 8, !dbg !1298, !tbaa !122
  %28 = bitcast %struct.redisObject** %4 to i8**, !dbg !1299
  %29 = call i32 @quicklistPopCustom(%struct.quicklist* %27, i32 %24, i8** nonnull %28, i32* null, i64* nonnull %3, i8* (i8*, i32)* nonnull @listPopSaver) #6, !dbg !1301
  %30 = icmp eq i32 %29, 0, !dbg !1301
  %31 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !1302
  %32 = icmp ne %struct.redisObject* %31, null, !dbg !1302
  %33 = or i1 %30, %32, !dbg !1303
  br i1 %33, label %38, label %34, !dbg !1303

; <label>:34:                                     ; preds = %22
  %35 = load i64, i64* %3, align 8, !dbg !1304, !tbaa !217
  %36 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %35) #6, !dbg !1305
  store %struct.redisObject* %36, %struct.redisObject** %4, align 8, !dbg !1306, !tbaa !198
  br label %38, !dbg !1307

; <label>:37:                                     ; preds = %15
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1308
  tail call void @_exit(i32 1) #7, !dbg !1308
  unreachable, !dbg !1308

; <label>:38:                                     ; preds = %22, %34
  %39 = phi %struct.redisObject* [ %31, %22 ], [ %36, %34 ], !dbg !1309
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #8, !dbg !1310
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #8, !dbg !1310
  %40 = icmp eq %struct.redisObject* %39, null, !dbg !1312
  br i1 %40, label %41, label %43, !dbg !1313

; <label>:41:                                     ; preds = %38
  %42 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1314, !tbaa !1124
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %42) #6, !dbg !1316
  br label %80, !dbg !1317

; <label>:43:                                     ; preds = %38
  %44 = icmp eq i32 %1, 0, !dbg !1318
  %45 = select i1 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), !dbg !1319
  call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* nonnull %39) #6, !dbg !1321
  call void @decrRefCount(%struct.redisObject* nonnull %39) #6, !dbg !1322
  %46 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !1323, !tbaa !794
  %47 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %46, i64 1, !dbg !1324
  %48 = load %struct.redisObject*, %struct.redisObject** %47, align 8, !dbg !1324, !tbaa !198
  %49 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1325
  %50 = load %struct.redisDb*, %struct.redisDb** %49, align 8, !dbg !1325, !tbaa !789
  %51 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %50, i64 0, i32 5, !dbg !1326
  %52 = load i32, i32* %51, align 8, !dbg !1326, !tbaa !864
  call void @notifyKeyspaceEvent(i32 16, i8* %45, %struct.redisObject* %48, i32 %52) #6, !dbg !1327
  %53 = load i32, i32* %18, align 8, !dbg !1331
  %54 = and i32 %53, 240, !dbg !1331
  %55 = icmp eq i32 %54, 144, !dbg !1332
  br i1 %55, label %57, label %56, !dbg !1333

; <label>:56:                                     ; preds = %43
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1334
  call void @_exit(i32 1) #7, !dbg !1334
  unreachable, !dbg !1334

; <label>:57:                                     ; preds = %43
  %58 = load %struct.quicklist*, %struct.quicklist** %26, align 8, !dbg !1335, !tbaa !122
  %59 = call i64 @quicklistCount(%struct.quicklist* %58) #6, !dbg !1336
  %60 = icmp eq i64 %59, 0, !dbg !1337
  br i1 %60, label %61, label %73, !dbg !1338

; <label>:61:                                     ; preds = %57
  %62 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !1339, !tbaa !794
  %63 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %62, i64 1, !dbg !1341
  %64 = load %struct.redisObject*, %struct.redisObject** %63, align 8, !dbg !1341, !tbaa !198
  %65 = load %struct.redisDb*, %struct.redisDb** %49, align 8, !dbg !1342, !tbaa !789
  %66 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %65, i64 0, i32 5, !dbg !1343
  %67 = load i32, i32* %66, align 8, !dbg !1343, !tbaa !864
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), %struct.redisObject* %64, i32 %67) #6, !dbg !1344
  %68 = load %struct.redisDb*, %struct.redisDb** %49, align 8, !dbg !1345, !tbaa !789
  %69 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !1346, !tbaa !794
  %70 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %69, i64 1, !dbg !1347
  %71 = load %struct.redisObject*, %struct.redisObject** %70, align 8, !dbg !1347, !tbaa !198
  %72 = call i32 @dbDelete(%struct.redisDb* %68, %struct.redisObject* %71) #6, !dbg !1348
  br label %73, !dbg !1349

; <label>:73:                                     ; preds = %61, %57
  %74 = load %struct.redisDb*, %struct.redisDb** %49, align 8, !dbg !1350, !tbaa !789
  %75 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !1351, !tbaa !794
  %76 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %75, i64 1, !dbg !1352
  %77 = load %struct.redisObject*, %struct.redisObject** %76, align 8, !dbg !1352, !tbaa !198
  call void @signalModifiedKey(%struct.redisDb* %74, %struct.redisObject* %77) #6, !dbg !1353
  %78 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1354, !tbaa !870
  %79 = add nsw i64 %78, 1, !dbg !1354
  store i64 %79, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1354, !tbaa !870
  br label %80

; <label>:80:                                     ; preds = %41, %73, %2, %12
  ret void, !dbg !1355
}

; Function Attrs: noredzone
declare dso_local i32 @dbDelete(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lpopCommand(%struct.client*) local_unnamed_addr #0 !dbg !1356 {
  tail call void @popGenericCommand(%struct.client* %0, i32 0) #9, !dbg !1360
  ret void, !dbg !1361
}

; Function Attrs: noredzone nounwind
define dso_local void @rpopCommand(%struct.client*) local_unnamed_addr #0 !dbg !1362 {
  tail call void @popGenericCommand(%struct.client* %0, i32 1) #9, !dbg !1366
  ret void, !dbg !1367
}

; Function Attrs: noredzone nounwind
define dso_local void @lrangeCommand(%struct.client*) local_unnamed_addr #0 !dbg !1368 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.listTypeEntry, align 8
  %5 = bitcast i64* %2 to i8*, !dbg !1384
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1384
  %6 = bitcast i64* %3 to i8*, !dbg !1384
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8, !dbg !1384
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1385
  %8 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1385, !tbaa !794
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 2, !dbg !1387
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !1387, !tbaa !198
  %11 = call i32 @getLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %10, i64* nonnull %2, i8* null) #6, !dbg !1389
  %12 = icmp eq i32 %11, 0, !dbg !1390
  br i1 %12, label %13, label %132, !dbg !1391

; <label>:13:                                     ; preds = %1
  %14 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1392, !tbaa !794
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 3, !dbg !1393
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !1393, !tbaa !198
  %17 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %16, i64* nonnull %3, i8* null) #6, !dbg !1395
  %18 = icmp eq i32 %17, 0, !dbg !1396
  br i1 %18, label %19, label %132, !dbg !1397

; <label>:19:                                     ; preds = %13
  %20 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1398, !tbaa !794
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 1, !dbg !1400
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !1400, !tbaa !198
  %23 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 13), align 8, !dbg !1401, !tbaa !1402
  %24 = call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* nonnull %0, %struct.redisObject* %22, %struct.redisObject* %23) #6, !dbg !1403
  %25 = icmp eq %struct.redisObject* %24, null, !dbg !1405
  br i1 %25, label %132, label %26, !dbg !1406

; <label>:26:                                     ; preds = %19
  %27 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %24, i32 1) #6, !dbg !1407
  %28 = icmp eq i32 %27, 0, !dbg !1407
  br i1 %28, label %29, label %132, !dbg !1408

; <label>:29:                                     ; preds = %26
  %30 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %24, i64 0, i32 0, !dbg !1411
  %31 = load i32, i32* %30, align 8, !dbg !1411
  %32 = and i32 %31, 240, !dbg !1411
  %33 = icmp eq i32 %32, 144, !dbg !1412
  br i1 %33, label %35, label %34, !dbg !1413

; <label>:34:                                     ; preds = %29
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1414
  call void @_exit(i32 1) #7, !dbg !1414
  unreachable, !dbg !1414

; <label>:35:                                     ; preds = %29
  %36 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %24, i64 0, i32 2, !dbg !1415
  %37 = bitcast i8** %36 to %struct.quicklist**, !dbg !1415
  %38 = load %struct.quicklist*, %struct.quicklist** %37, align 8, !dbg !1415, !tbaa !122
  %39 = call i64 @quicklistCount(%struct.quicklist* %38) #6, !dbg !1416
  %40 = load i64, i64* %2, align 8, !dbg !1418, !tbaa !161
  %41 = icmp slt i64 %40, 0, !dbg !1420
  br i1 %41, label %42, label %44, !dbg !1421

; <label>:42:                                     ; preds = %35
  %43 = add nsw i64 %40, %39, !dbg !1422
  store i64 %43, i64* %2, align 8, !dbg !1423, !tbaa !161
  br label %44, !dbg !1424

; <label>:44:                                     ; preds = %42, %35
  %45 = phi i64 [ %43, %42 ], [ %40, %35 ]
  %46 = load i64, i64* %3, align 8, !dbg !1425, !tbaa !161
  %47 = icmp slt i64 %46, 0, !dbg !1427
  br i1 %47, label %48, label %50, !dbg !1428

; <label>:48:                                     ; preds = %44
  %49 = add nsw i64 %46, %39, !dbg !1429
  store i64 %49, i64* %3, align 8, !dbg !1430, !tbaa !161
  br label %50, !dbg !1431

; <label>:50:                                     ; preds = %48, %44
  %51 = phi i64 [ %49, %48 ], [ %46, %44 ]
  %52 = icmp slt i64 %45, 0, !dbg !1432
  br i1 %52, label %53, label %54, !dbg !1434

; <label>:53:                                     ; preds = %50
  store i64 0, i64* %2, align 8, !dbg !1435, !tbaa !161
  br label %54, !dbg !1436

; <label>:54:                                     ; preds = %53, %50
  %55 = phi i64 [ 0, %53 ], [ %45, %50 ], !dbg !1437
  %56 = icmp sle i64 %55, %51, !dbg !1439
  %57 = icmp slt i64 %55, %39, !dbg !1440
  %58 = and i1 %57, %56, !dbg !1441
  br i1 %58, label %61, label %59, !dbg !1441

; <label>:59:                                     ; preds = %54
  %60 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 13), align 8, !dbg !1442, !tbaa !1402
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %60) #6, !dbg !1444
  br label %132, !dbg !1445

; <label>:61:                                     ; preds = %54
  %62 = icmp slt i64 %51, %39, !dbg !1446
  br i1 %62, label %65, label %63, !dbg !1448

; <label>:63:                                     ; preds = %61
  %64 = add nsw i64 %39, -1, !dbg !1449
  store i64 %64, i64* %3, align 8, !dbg !1450, !tbaa !161
  br label %65, !dbg !1451

; <label>:65:                                     ; preds = %61, %63
  %66 = phi i64 [ %51, %61 ], [ %64, %63 ], !dbg !1452
  %67 = sub nsw i64 %66, %55, !dbg !1453
  %68 = add nsw i64 %67, 1, !dbg !1454
  call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %68) #6, !dbg !1456
  %69 = load i32, i32* %30, align 8, !dbg !1457
  %70 = and i32 %69, 240, !dbg !1457
  %71 = icmp eq i32 %70, 144, !dbg !1458
  br i1 %71, label %72, label %131, !dbg !1459

; <label>:72:                                     ; preds = %65
  %73 = load i64, i64* %2, align 8, !dbg !1460, !tbaa !161
  %74 = call i8* @zmalloc(i64 24) #6, !dbg !1465
  %75 = bitcast i8* %74 to %struct.redisObject**, !dbg !1466
  store %struct.redisObject* %24, %struct.redisObject** %75, align 8, !dbg !1467, !tbaa !280
  %76 = load i32, i32* %30, align 8, !dbg !1468
  %77 = lshr i32 %76, 4, !dbg !1468
  %78 = trunc i32 %77 to i8, !dbg !1469
  %79 = and i8 %78, 15, !dbg !1469
  %80 = getelementptr inbounds i8, i8* %74, i64 8, !dbg !1470
  store i8 %79, i8* %80, align 8, !dbg !1471, !tbaa !286
  %81 = getelementptr inbounds i8, i8* %74, i64 9, !dbg !1472
  store i8 1, i8* %81, align 1, !dbg !1473, !tbaa !289
  %82 = getelementptr inbounds i8, i8* %74, i64 16, !dbg !1474
  %83 = bitcast i8* %82 to %struct.quicklistIter**, !dbg !1474
  store %struct.quicklistIter* null, %struct.quicklistIter** %83, align 8, !dbg !1475, !tbaa !292
  %84 = icmp eq i8 %79, 9, !dbg !1476
  br i1 %84, label %86, label %85, !dbg !1477

; <label>:85:                                     ; preds = %72
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1478
  call void @_exit(i32 1) #7, !dbg !1478
  unreachable, !dbg !1478

; <label>:86:                                     ; preds = %72
  %87 = load %struct.quicklist*, %struct.quicklist** %37, align 8, !dbg !1481, !tbaa !122
  %88 = call %struct.quicklistIter* @quicklistGetIteratorAtIdx(%struct.quicklist* %87, i32 0, i64 %73) #6, !dbg !1482
  store %struct.quicklistIter* %88, %struct.quicklistIter** %83, align 8, !dbg !1483, !tbaa !292
  %89 = icmp eq i64 %68, 0, !dbg !1485
  br i1 %89, label %90, label %92, !dbg !1485

; <label>:90:                                     ; preds = %86
  %91 = bitcast %struct.quicklistIter* %88 to i8*, !dbg !1485
  br label %129, !dbg !1485

; <label>:92:                                     ; preds = %86
  %93 = bitcast %struct.listTypeEntry* %4 to i8*
  %94 = bitcast i8* %74 to i32**
  %95 = bitcast %struct.listTypeEntry* %4 to i8**
  %96 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %4, i64 0, i32 1
  %97 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %4, i64 0, i32 1, i32 3
  %98 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %4, i64 0, i32 1, i32 4
  %99 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %4, i64 0, i32 1, i32 5
  br label %100, !dbg !1485

; <label>:100:                                    ; preds = %92, %123
  %101 = phi i64 [ %67, %92 ], [ %124, %123 ]
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %93) #8, !dbg !1486
  %102 = load i32*, i32** %94, align 8, !dbg !1491, !tbaa !280
  %103 = load i32, i32* %102, align 8, !dbg !1491
  %104 = lshr i32 %103, 4, !dbg !1491
  %105 = and i32 %104, 15, !dbg !1491
  %106 = load i8, i8* %80, align 8, !dbg !1491, !tbaa !286
  %107 = zext i8 %106 to i32, !dbg !1491
  %108 = icmp eq i32 %105, %107, !dbg !1491
  br i1 %108, label %110, label %109, !dbg !1491

; <label>:109:                                    ; preds = %100
  call void @_serverAssert(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 114) #6, !dbg !1491
  call void @_exit(i32 1) #7, !dbg !1491
  unreachable, !dbg !1491

; <label>:110:                                    ; preds = %100
  store i8* %74, i8** %95, align 8, !dbg !1492, !tbaa !345
  %111 = icmp eq i8 %106, 9, !dbg !1493
  br i1 %111, label %113, label %112, !dbg !1494

; <label>:112:                                    ; preds = %110
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1495
  call void @_exit(i32 1) #7, !dbg !1495
  unreachable, !dbg !1495

; <label>:113:                                    ; preds = %110
  %114 = load %struct.quicklistIter*, %struct.quicklistIter** %83, align 8, !dbg !1496, !tbaa !292
  %115 = call i32 @quicklistNext(%struct.quicklistIter* %114, %struct.quicklistEntry* nonnull %96) #6, !dbg !1497
  %116 = load i8*, i8** %97, align 8, !dbg !1498, !tbaa !1154
  %117 = icmp eq i8* %116, null, !dbg !1500
  br i1 %117, label %121, label %118, !dbg !1501

; <label>:118:                                    ; preds = %113
  %119 = load i32, i32* %99, align 8, !dbg !1503, !tbaa !1159
  %120 = zext i32 %119 to i64, !dbg !1505
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* nonnull %116, i64 %120) #6, !dbg !1506
  br label %123, !dbg !1507

; <label>:121:                                    ; preds = %113
  %122 = load i64, i64* %98, align 8, !dbg !1508, !tbaa !1165
  call void @addReplyBulkLongLong(%struct.client* %0, i64 %122) #6, !dbg !1510
  br label %123

; <label>:123:                                    ; preds = %121, %118
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %93) #8, !dbg !1511
  %124 = add nsw i64 %101, -1, !dbg !1512
  %125 = icmp eq i64 %101, 0, !dbg !1485
  br i1 %125, label %126, label %100, !dbg !1485, !llvm.loop !1513

; <label>:126:                                    ; preds = %123
  %127 = bitcast i8* %82 to i8**
  %128 = load i8*, i8** %127, align 8, !dbg !1514, !tbaa !292
  br label %129, !dbg !1514

; <label>:129:                                    ; preds = %90, %126
  %130 = phi i8* [ %128, %126 ], [ %91, %90 ], !dbg !1514
  call void @zfree(i8* %130) #6, !dbg !1517
  call void @zfree(i8* nonnull %74) #6, !dbg !1518
  br label %132, !dbg !1519

; <label>:131:                                    ; preds = %65
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 440, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !1520
  call void @_exit(i32 1) #7, !dbg !1520
  unreachable, !dbg !1520

; <label>:132:                                    ; preds = %19, %26, %1, %13, %129, %59
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8, !dbg !1519
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1519
  ret void, !dbg !1519
}

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ltrimCommand(%struct.client*) local_unnamed_addr #0 !dbg !1522 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = bitcast i64* %2 to i8*, !dbg !1532
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8, !dbg !1532
  %5 = bitcast i64* %3 to i8*, !dbg !1532
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1532
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1533
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1533, !tbaa !794
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 2, !dbg !1535
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !1535, !tbaa !198
  %10 = call i32 @getLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %9, i64* nonnull %2, i8* null) #6, !dbg !1537
  %11 = icmp eq i32 %10, 0, !dbg !1538
  br i1 %11, label %12, label %114, !dbg !1539

; <label>:12:                                     ; preds = %1
  %13 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1540, !tbaa !794
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 3, !dbg !1541
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !1541, !tbaa !198
  %16 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %15, i64* nonnull %3, i8* null) #6, !dbg !1543
  %17 = icmp eq i32 %16, 0, !dbg !1544
  br i1 %17, label %18, label %114, !dbg !1545

; <label>:18:                                     ; preds = %12
  %19 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1546, !tbaa !794
  %20 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 1, !dbg !1548
  %21 = load %struct.redisObject*, %struct.redisObject** %20, align 8, !dbg !1548, !tbaa !198
  %22 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1549, !tbaa !1250
  %23 = call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* nonnull %0, %struct.redisObject* %21, %struct.redisObject* %22) #6, !dbg !1550
  %24 = icmp eq %struct.redisObject* %23, null, !dbg !1552
  br i1 %24, label %114, label %25, !dbg !1553

; <label>:25:                                     ; preds = %18
  %26 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %23, i32 1) #6, !dbg !1554
  %27 = icmp eq i32 %26, 0, !dbg !1554
  br i1 %27, label %28, label %114, !dbg !1555

; <label>:28:                                     ; preds = %25
  %29 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %23, i64 0, i32 0, !dbg !1558
  %30 = load i32, i32* %29, align 8, !dbg !1558
  %31 = and i32 %30, 240, !dbg !1558
  %32 = icmp eq i32 %31, 144, !dbg !1559
  br i1 %32, label %34, label %33, !dbg !1560

; <label>:33:                                     ; preds = %28
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1561
  call void @_exit(i32 1) #7, !dbg !1561
  unreachable, !dbg !1561

; <label>:34:                                     ; preds = %28
  %35 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %23, i64 0, i32 2, !dbg !1562
  %36 = bitcast i8** %35 to %struct.quicklist**, !dbg !1562
  %37 = load %struct.quicklist*, %struct.quicklist** %36, align 8, !dbg !1562, !tbaa !122
  %38 = call i64 @quicklistCount(%struct.quicklist* %37) #6, !dbg !1563
  %39 = load i64, i64* %2, align 8, !dbg !1565, !tbaa !161
  %40 = icmp slt i64 %39, 0, !dbg !1567
  br i1 %40, label %41, label %43, !dbg !1568

; <label>:41:                                     ; preds = %34
  %42 = add nsw i64 %39, %38, !dbg !1569
  store i64 %42, i64* %2, align 8, !dbg !1570, !tbaa !161
  br label %43, !dbg !1571

; <label>:43:                                     ; preds = %41, %34
  %44 = phi i64 [ %42, %41 ], [ %39, %34 ]
  %45 = load i64, i64* %3, align 8, !dbg !1572, !tbaa !161
  %46 = icmp slt i64 %45, 0, !dbg !1574
  br i1 %46, label %47, label %49, !dbg !1575

; <label>:47:                                     ; preds = %43
  %48 = add nsw i64 %45, %38, !dbg !1576
  store i64 %48, i64* %3, align 8, !dbg !1577, !tbaa !161
  br label %49, !dbg !1578

; <label>:49:                                     ; preds = %47, %43
  %50 = phi i64 [ %48, %47 ], [ %45, %43 ]
  %51 = icmp slt i64 %44, 0, !dbg !1579
  br i1 %51, label %52, label %53, !dbg !1581

; <label>:52:                                     ; preds = %49
  store i64 0, i64* %2, align 8, !dbg !1582, !tbaa !161
  br label %53, !dbg !1583

; <label>:53:                                     ; preds = %52, %49
  %54 = phi i64 [ 0, %52 ], [ %44, %49 ], !dbg !1584
  %55 = icmp sle i64 %54, %50, !dbg !1586
  %56 = icmp slt i64 %54, %38, !dbg !1587
  %57 = and i1 %56, %55, !dbg !1588
  br i1 %57, label %58, label %66, !dbg !1588

; <label>:58:                                     ; preds = %53
  %59 = icmp slt i64 %50, %38, !dbg !1589
  br i1 %59, label %62, label %60, !dbg !1592

; <label>:60:                                     ; preds = %58
  %61 = add nsw i64 %38, -1, !dbg !1593
  store i64 %61, i64* %3, align 8, !dbg !1594, !tbaa !161
  br label %62, !dbg !1595

; <label>:62:                                     ; preds = %58, %60
  %63 = phi i64 [ %50, %58 ], [ %61, %60 ], !dbg !1596
  %64 = xor i64 %63, -1, !dbg !1598
  %65 = add i64 %38, %64, !dbg !1598
  br label %66

; <label>:66:                                     ; preds = %53, %62
  %67 = phi i64 [ %54, %62 ], [ %38, %53 ], !dbg !1600
  %68 = phi i64 [ %65, %62 ], [ 0, %53 ], !dbg !1600
  %69 = load i32, i32* %29, align 8, !dbg !1601
  %70 = and i32 %69, 240, !dbg !1601
  %71 = icmp eq i32 %70, 144, !dbg !1603
  br i1 %71, label %72, label %93, !dbg !1604

; <label>:72:                                     ; preds = %66
  %73 = load %struct.quicklist*, %struct.quicklist** %36, align 8, !dbg !1605, !tbaa !122
  %74 = call i32 @quicklistDelRange(%struct.quicklist* %73, i64 0, i64 %67) #6, !dbg !1607
  %75 = load %struct.quicklist*, %struct.quicklist** %36, align 8, !dbg !1608, !tbaa !122
  %76 = sub nsw i64 0, %68, !dbg !1609
  %77 = call i32 @quicklistDelRange(%struct.quicklist* %75, i64 %76, i64 %68) #6, !dbg !1610
  %78 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1611, !tbaa !794
  %79 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %78, i64 1, !dbg !1612
  %80 = load %struct.redisObject*, %struct.redisObject** %79, align 8, !dbg !1612, !tbaa !198
  %81 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1613
  %82 = load %struct.redisDb*, %struct.redisDb** %81, align 8, !dbg !1613, !tbaa !789
  %83 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %82, i64 0, i32 5, !dbg !1614
  %84 = load i32, i32* %83, align 8, !dbg !1614, !tbaa !864
  call void @notifyKeyspaceEvent(i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), %struct.redisObject* %80, i32 %84) #6, !dbg !1615
  %85 = load i32, i32* %29, align 8, !dbg !1619
  %86 = and i32 %85, 240, !dbg !1619
  %87 = icmp eq i32 %86, 144, !dbg !1620
  br i1 %87, label %89, label %88, !dbg !1621

; <label>:88:                                     ; preds = %72
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1622
  call void @_exit(i32 1) #7, !dbg !1622
  unreachable, !dbg !1622

; <label>:89:                                     ; preds = %72
  %90 = load %struct.quicklist*, %struct.quicklist** %36, align 8, !dbg !1623, !tbaa !122
  %91 = call i64 @quicklistCount(%struct.quicklist* %90) #6, !dbg !1624
  %92 = icmp eq i64 %91, 0, !dbg !1625
  br i1 %92, label %94, label %106, !dbg !1626

; <label>:93:                                     ; preds = %66
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 477, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1627
  call void @_exit(i32 1) #7, !dbg !1627
  unreachable, !dbg !1627

; <label>:94:                                     ; preds = %89
  %95 = load %struct.redisDb*, %struct.redisDb** %81, align 8, !dbg !1629, !tbaa !789
  %96 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1631, !tbaa !794
  %97 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %96, i64 1, !dbg !1632
  %98 = load %struct.redisObject*, %struct.redisObject** %97, align 8, !dbg !1632, !tbaa !198
  %99 = call i32 @dbDelete(%struct.redisDb* %95, %struct.redisObject* %98) #6, !dbg !1633
  %100 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1634, !tbaa !794
  %101 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %100, i64 1, !dbg !1635
  %102 = load %struct.redisObject*, %struct.redisObject** %101, align 8, !dbg !1635, !tbaa !198
  %103 = load %struct.redisDb*, %struct.redisDb** %81, align 8, !dbg !1636, !tbaa !789
  %104 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %103, i64 0, i32 5, !dbg !1637
  %105 = load i32, i32* %104, align 8, !dbg !1637, !tbaa !864
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), %struct.redisObject* %102, i32 %105) #6, !dbg !1638
  br label %106, !dbg !1639

; <label>:106:                                    ; preds = %94, %89
  %107 = load %struct.redisDb*, %struct.redisDb** %81, align 8, !dbg !1640, !tbaa !789
  %108 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1641, !tbaa !794
  %109 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %108, i64 1, !dbg !1642
  %110 = load %struct.redisObject*, %struct.redisObject** %109, align 8, !dbg !1642, !tbaa !198
  call void @signalModifiedKey(%struct.redisDb* %107, %struct.redisObject* %110) #6, !dbg !1643
  %111 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1644, !tbaa !870
  %112 = add nsw i64 %111, 1, !dbg !1644
  store i64 %112, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1644, !tbaa !870
  %113 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1645, !tbaa !1250
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %113) #6, !dbg !1646
  br label %114, !dbg !1647

; <label>:114:                                    ; preds = %18, %25, %1, %12, %106
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1647
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8, !dbg !1647
  ret void, !dbg !1647
}

; Function Attrs: noredzone
declare dso_local i32 @quicklistDelRange(%struct.quicklist*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lremCommand(%struct.client*) local_unnamed_addr #0 !dbg !1648 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.listTypeEntry, align 8
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1658
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1658, !tbaa !794
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 3, !dbg !1659
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1659, !tbaa !198
  %8 = bitcast i64* %2 to i8*, !dbg !1661
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !1661
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 2, !dbg !1663
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !1663, !tbaa !198
  %11 = call i32 @getLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %10, i64* nonnull %2, i8* null) #6, !dbg !1666
  %12 = icmp eq i32 %11, 0, !dbg !1667
  br i1 %12, label %13, label %165, !dbg !1668

; <label>:13:                                     ; preds = %1
  %14 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1669, !tbaa !794
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 1, !dbg !1670
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !1670, !tbaa !198
  %17 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1671, !tbaa !901
  %18 = call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* nonnull %0, %struct.redisObject* %16, %struct.redisObject* %17) #6, !dbg !1672
  %19 = icmp eq %struct.redisObject* %18, null, !dbg !1674
  br i1 %19, label %165, label %20, !dbg !1676

; <label>:20:                                     ; preds = %13
  %21 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %18, i32 1) #6, !dbg !1677
  %22 = icmp eq i32 %21, 0, !dbg !1677
  br i1 %22, label %23, label %165, !dbg !1678

; <label>:23:                                     ; preds = %20
  %24 = load i64, i64* %2, align 8, !dbg !1679, !tbaa !161
  %25 = icmp slt i64 %24, 0, !dbg !1681
  br i1 %25, label %26, label %46, !dbg !1682

; <label>:26:                                     ; preds = %23
  %27 = sub nsw i64 0, %24, !dbg !1683
  store i64 %27, i64* %2, align 8, !dbg !1685, !tbaa !161
  %28 = call i8* @zmalloc(i64 24) #6, !dbg !1690
  %29 = bitcast i8* %28 to %struct.redisObject**, !dbg !1691
  store %struct.redisObject* %18, %struct.redisObject** %29, align 8, !dbg !1692, !tbaa !280
  %30 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 0, !dbg !1693
  %31 = load i32, i32* %30, align 8, !dbg !1693
  %32 = lshr i32 %31, 4, !dbg !1693
  %33 = trunc i32 %32 to i8, !dbg !1694
  %34 = and i8 %33, 15, !dbg !1694
  %35 = getelementptr inbounds i8, i8* %28, i64 8, !dbg !1695
  store i8 %34, i8* %35, align 8, !dbg !1696, !tbaa !286
  %36 = getelementptr inbounds i8, i8* %28, i64 9, !dbg !1697
  store i8 0, i8* %36, align 1, !dbg !1698, !tbaa !289
  %37 = getelementptr inbounds i8, i8* %28, i64 16, !dbg !1699
  %38 = bitcast i8* %37 to %struct.quicklistIter**, !dbg !1699
  store %struct.quicklistIter* null, %struct.quicklistIter** %38, align 8, !dbg !1700, !tbaa !292
  %39 = icmp eq i8 %34, 9, !dbg !1701
  br i1 %39, label %41, label %40, !dbg !1702

; <label>:40:                                     ; preds = %26
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1703
  call void @_exit(i32 1) #7, !dbg !1703
  unreachable, !dbg !1703

; <label>:41:                                     ; preds = %26
  %42 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 2, !dbg !1706
  %43 = bitcast i8** %42 to %struct.quicklist**, !dbg !1706
  %44 = load %struct.quicklist*, %struct.quicklist** %43, align 8, !dbg !1706, !tbaa !122
  %45 = call %struct.quicklistIter* @quicklistGetIteratorAtIdx(%struct.quicklist* %44, i32 1, i64 -1) #6, !dbg !1707
  br label %65, !dbg !1709

; <label>:46:                                     ; preds = %23
  %47 = call i8* @zmalloc(i64 24) #6, !dbg !1715
  %48 = bitcast i8* %47 to %struct.redisObject**, !dbg !1716
  store %struct.redisObject* %18, %struct.redisObject** %48, align 8, !dbg !1717, !tbaa !280
  %49 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 0, !dbg !1718
  %50 = load i32, i32* %49, align 8, !dbg !1718
  %51 = lshr i32 %50, 4, !dbg !1718
  %52 = trunc i32 %51 to i8, !dbg !1719
  %53 = and i8 %52, 15, !dbg !1719
  %54 = getelementptr inbounds i8, i8* %47, i64 8, !dbg !1720
  store i8 %53, i8* %54, align 8, !dbg !1721, !tbaa !286
  %55 = getelementptr inbounds i8, i8* %47, i64 9, !dbg !1722
  store i8 1, i8* %55, align 1, !dbg !1723, !tbaa !289
  %56 = getelementptr inbounds i8, i8* %47, i64 16, !dbg !1724
  %57 = bitcast i8* %56 to %struct.quicklistIter**, !dbg !1724
  store %struct.quicklistIter* null, %struct.quicklistIter** %57, align 8, !dbg !1725, !tbaa !292
  %58 = icmp eq i8 %53, 9, !dbg !1726
  br i1 %58, label %60, label %59, !dbg !1727

; <label>:59:                                     ; preds = %46
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1728
  call void @_exit(i32 1) #7, !dbg !1728
  unreachable, !dbg !1728

; <label>:60:                                     ; preds = %46
  %61 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 2, !dbg !1731
  %62 = bitcast i8** %61 to %struct.quicklist**, !dbg !1731
  %63 = load %struct.quicklist*, %struct.quicklist** %62, align 8, !dbg !1731, !tbaa !122
  %64 = call %struct.quicklistIter* @quicklistGetIteratorAtIdx(%struct.quicklist* %63, i32 0, i64 0) #6, !dbg !1732
  br label %65

; <label>:65:                                     ; preds = %60, %41
  %66 = phi %struct.quicklistIter** [ %57, %60 ], [ %38, %41 ]
  %67 = phi %struct.quicklistIter* [ %64, %60 ], [ %45, %41 ]
  %68 = phi i8* [ %54, %60 ], [ %35, %41 ], !dbg !1733
  %69 = phi i8* [ %47, %60 ], [ %28, %41 ]
  store %struct.quicklistIter* %67, %struct.quicklistIter** %66, align 8, !dbg !1735, !tbaa !292
  %70 = bitcast %struct.listTypeEntry* %3 to i8*, !dbg !1736
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %70) #8, !dbg !1736
  %71 = bitcast i8* %69 to i32**, !dbg !1733
  %72 = load i32*, i32** %71, align 8, !dbg !1733, !tbaa !280
  %73 = load i32, i32* %72, align 8, !dbg !1733
  %74 = lshr i32 %73, 4, !dbg !1733
  %75 = and i32 %74, 15, !dbg !1733
  %76 = load i8, i8* %68, align 8, !dbg !1733, !tbaa !286
  %77 = zext i8 %76 to i32, !dbg !1733
  %78 = icmp eq i32 %75, %77, !dbg !1733
  br i1 %78, label %79, label %85, !dbg !1733

; <label>:79:                                     ; preds = %65
  %80 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %3, i64 0, i32 0
  %81 = bitcast %struct.listTypeEntry* %3 to i8**
  %82 = getelementptr inbounds i8, i8* %69, i64 16
  %83 = bitcast i8* %82 to %struct.quicklistIter**
  %84 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %3, i64 0, i32 1
  br label %86, !dbg !1733

; <label>:85:                                     ; preds = %113, %65
  call void @_serverAssert(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 114) #6, !dbg !1733
  call void @_exit(i32 1) #7, !dbg !1733
  unreachable, !dbg !1733

; <label>:86:                                     ; preds = %79, %113
  %87 = phi i8 [ %76, %79 ], [ %119, %113 ]
  %88 = phi i64 [ 0, %79 ], [ %114, %113 ]
  store i8* %69, i8** %81, align 8, !dbg !1740, !tbaa !345
  %89 = icmp eq i8 %87, 9, !dbg !1741
  br i1 %89, label %91, label %90, !dbg !1742

; <label>:90:                                     ; preds = %86
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1743
  call void @_exit(i32 1) #7, !dbg !1743
  unreachable, !dbg !1743

; <label>:91:                                     ; preds = %86
  %92 = load %struct.quicklistIter*, %struct.quicklistIter** %83, align 8, !dbg !1744, !tbaa !292
  %93 = call i32 @quicklistNext(%struct.quicklistIter* %92, %struct.quicklistEntry* nonnull %84) #6, !dbg !1745
  %94 = icmp eq i32 %93, 0, !dbg !1746
  br i1 %94, label %122, label %95, !dbg !1746

; <label>:95:                                     ; preds = %91
  %96 = call i32 @listTypeEqual(%struct.listTypeEntry* nonnull %3, %struct.redisObject* %7) #9, !dbg !1747
  %97 = icmp eq i32 %96, 0, !dbg !1747
  br i1 %97, label %113, label %98, !dbg !1750

; <label>:98:                                     ; preds = %95
  %99 = load %struct.listTypeIterator*, %struct.listTypeIterator** %80, align 8, !dbg !1755, !tbaa !345
  %100 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %99, i64 0, i32 1, !dbg !1756
  %101 = load i8, i8* %100, align 8, !dbg !1756, !tbaa !286
  %102 = icmp eq i8 %101, 9, !dbg !1757
  br i1 %102, label %104, label %103, !dbg !1758

; <label>:103:                                    ; preds = %98
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 174, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1759
  call void @_exit(i32 1) #7, !dbg !1759
  unreachable, !dbg !1759

; <label>:104:                                    ; preds = %98
  %105 = load %struct.quicklistIter*, %struct.quicklistIter** %83, align 8, !dbg !1760, !tbaa !292
  call void @quicklistDelEntry(%struct.quicklistIter* %105, %struct.quicklistEntry* nonnull %84) #6, !dbg !1761
  %106 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1762, !tbaa !870
  %107 = add nsw i64 %106, 1, !dbg !1762
  store i64 %107, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1762, !tbaa !870
  %108 = add nsw i64 %88, 1, !dbg !1763
  %109 = load i64, i64* %2, align 8, !dbg !1764, !tbaa !161
  %110 = icmp ne i64 %109, 0, !dbg !1764
  %111 = icmp eq i64 %108, %109, !dbg !1766
  %112 = and i1 %110, %111, !dbg !1767
  br i1 %112, label %122, label %113, !dbg !1767

; <label>:113:                                    ; preds = %104, %95
  %114 = phi i64 [ %108, %104 ], [ %88, %95 ], !dbg !1768
  %115 = load i32*, i32** %71, align 8, !dbg !1733, !tbaa !280
  %116 = load i32, i32* %115, align 8, !dbg !1733
  %117 = lshr i32 %116, 4, !dbg !1733
  %118 = and i32 %117, 15, !dbg !1733
  %119 = load i8, i8* %68, align 8, !dbg !1733, !tbaa !286
  %120 = zext i8 %119 to i32, !dbg !1733
  %121 = icmp eq i32 %118, %120, !dbg !1733
  br i1 %121, label %86, label %85, !dbg !1733, !llvm.loop !1769

; <label>:122:                                    ; preds = %104, %91
  %123 = phi i64 [ %88, %91 ], [ %108, %104 ], !dbg !1768
  %124 = bitcast i8* %82 to i8**, !dbg !1773
  %125 = load i8*, i8** %124, align 8, !dbg !1773, !tbaa !292
  call void @zfree(i8* %125) #6, !dbg !1774
  call void @zfree(i8* nonnull %69) #6, !dbg !1775
  %126 = icmp eq i64 %123, 0, !dbg !1776
  br i1 %126, label %139, label %127, !dbg !1778

; <label>:127:                                    ; preds = %122
  %128 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1779
  %129 = load %struct.redisDb*, %struct.redisDb** %128, align 8, !dbg !1779, !tbaa !789
  %130 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1781, !tbaa !794
  %131 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %130, i64 1, !dbg !1782
  %132 = load %struct.redisObject*, %struct.redisObject** %131, align 8, !dbg !1782, !tbaa !198
  call void @signalModifiedKey(%struct.redisDb* %129, %struct.redisObject* %132) #6, !dbg !1783
  %133 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1784, !tbaa !794
  %134 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %133, i64 1, !dbg !1785
  %135 = load %struct.redisObject*, %struct.redisObject** %134, align 8, !dbg !1785, !tbaa !198
  %136 = load %struct.redisDb*, %struct.redisDb** %128, align 8, !dbg !1786, !tbaa !789
  %137 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %136, i64 0, i32 5, !dbg !1787
  %138 = load i32, i32* %137, align 8, !dbg !1787, !tbaa !864
  call void @notifyKeyspaceEvent(i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %struct.redisObject* %135, i32 %138) #6, !dbg !1788
  br label %139, !dbg !1789

; <label>:139:                                    ; preds = %122, %127
  %140 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 0, !dbg !1793
  %141 = load i32, i32* %140, align 8, !dbg !1793
  %142 = and i32 %141, 240, !dbg !1793
  %143 = icmp eq i32 %142, 144, !dbg !1794
  br i1 %143, label %145, label %144, !dbg !1795

; <label>:144:                                    ; preds = %139
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1796
  call void @_exit(i32 1) #7, !dbg !1796
  unreachable, !dbg !1796

; <label>:145:                                    ; preds = %139
  %146 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 2, !dbg !1797
  %147 = bitcast i8** %146 to %struct.quicklist**, !dbg !1797
  %148 = load %struct.quicklist*, %struct.quicklist** %147, align 8, !dbg !1797, !tbaa !122
  %149 = call i64 @quicklistCount(%struct.quicklist* %148) #6, !dbg !1798
  %150 = icmp eq i64 %149, 0, !dbg !1799
  br i1 %150, label %151, label %164, !dbg !1800

; <label>:151:                                    ; preds = %145
  %152 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1801
  %153 = load %struct.redisDb*, %struct.redisDb** %152, align 8, !dbg !1801, !tbaa !789
  %154 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1803, !tbaa !794
  %155 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %154, i64 1, !dbg !1804
  %156 = load %struct.redisObject*, %struct.redisObject** %155, align 8, !dbg !1804, !tbaa !198
  %157 = call i32 @dbDelete(%struct.redisDb* %153, %struct.redisObject* %156) #6, !dbg !1805
  %158 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1806, !tbaa !794
  %159 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %158, i64 1, !dbg !1807
  %160 = load %struct.redisObject*, %struct.redisObject** %159, align 8, !dbg !1807, !tbaa !198
  %161 = load %struct.redisDb*, %struct.redisDb** %152, align 8, !dbg !1808, !tbaa !789
  %162 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %161, i64 0, i32 5, !dbg !1809
  %163 = load i32, i32* %162, align 8, !dbg !1809, !tbaa !864
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), %struct.redisObject* %160, i32 %163) #6, !dbg !1810
  br label %164, !dbg !1811

; <label>:164:                                    ; preds = %151, %145
  call void @addReplyLongLong(%struct.client* %0, i64 %123) #6, !dbg !1812
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %70) #8, !dbg !1813
  br label %165, !dbg !1813

; <label>:165:                                    ; preds = %13, %20, %1, %164
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !1813
  ret void, !dbg !1813
}

; Function Attrs: noredzone nounwind
define dso_local void @rpoplpushHandlePush(%struct.client*, %struct.redisObject*, %struct.redisObject* readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !1814 {
  %5 = icmp eq %struct.redisObject* %2, null, !dbg !1826
  br i1 %5, label %8, label %6, !dbg !1828

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1829
  br label %17, !dbg !1828

; <label>:8:                                      ; preds = %4
  %9 = tail call %struct.redisObject* @createQuicklistObject() #6, !dbg !1830
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %9, i64 0, i32 2, !dbg !1832
  %11 = bitcast i8** %10 to %struct.quicklist**, !dbg !1832
  %12 = load %struct.quicklist*, %struct.quicklist** %11, align 8, !dbg !1832, !tbaa !122
  %13 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 249), align 8, !dbg !1833, !tbaa !531
  %14 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 250), align 4, !dbg !1834, !tbaa !538
  tail call void @quicklistSetOptions(%struct.quicklist* %12, i32 %13, i32 %14) #6, !dbg !1835
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1836
  %16 = load %struct.redisDb*, %struct.redisDb** %15, align 8, !dbg !1836, !tbaa !789
  tail call void @dbAdd(%struct.redisDb* %16, %struct.redisObject* %1, %struct.redisObject* %9) #6, !dbg !1837
  br label %17, !dbg !1838

; <label>:17:                                     ; preds = %6, %8
  %18 = phi %struct.redisDb** [ %7, %6 ], [ %15, %8 ], !dbg !1829
  %19 = phi %struct.redisObject* [ %2, %6 ], [ %9, %8 ]
  %20 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !1829, !tbaa !789
  tail call void @signalModifiedKey(%struct.redisDb* %20, %struct.redisObject* %1) #6, !dbg !1839
  tail call void @listTypePush(%struct.redisObject* %19, %struct.redisObject* %3, i32 0) #9, !dbg !1840
  %21 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !1841, !tbaa !789
  %22 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %21, i64 0, i32 5, !dbg !1842
  %23 = load i32, i32* %22, align 8, !dbg !1842, !tbaa !864
  tail call void @notifyKeyspaceEvent(i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), %struct.redisObject* %1, i32 %23) #6, !dbg !1843
  tail call void @addReplyBulk(%struct.client* %0, %struct.redisObject* %3) #6, !dbg !1844
  ret void, !dbg !1845
}

; Function Attrs: noredzone nounwind
define dso_local void @rpoplpushCommand(%struct.client*) local_unnamed_addr #0 !dbg !1846 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.redisObject*, align 8
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1856
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1856, !tbaa !794
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !1858
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1858, !tbaa !198
  %8 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1859, !tbaa !1124
  %9 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* %0, %struct.redisObject* %7, %struct.redisObject* %8) #6, !dbg !1860
  %10 = icmp eq %struct.redisObject* %9, null, !dbg !1862
  br i1 %10, label %98, label %11, !dbg !1863

; <label>:11:                                     ; preds = %1
  %12 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %9, i32 1) #6, !dbg !1864
  %13 = icmp eq i32 %12, 0, !dbg !1864
  br i1 %13, label %14, label %98, !dbg !1865

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %9, i64 0, i32 0, !dbg !1868
  %16 = load i32, i32* %15, align 8, !dbg !1868
  %17 = and i32 %16, 240, !dbg !1868
  %18 = icmp eq i32 %17, 144, !dbg !1869
  br i1 %18, label %20, label %19, !dbg !1870

; <label>:19:                                     ; preds = %14
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1871
  tail call void @_exit(i32 1) #7, !dbg !1871
  unreachable, !dbg !1871

; <label>:20:                                     ; preds = %14
  %21 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %9, i64 0, i32 2, !dbg !1872
  %22 = bitcast i8** %21 to %struct.quicklist**, !dbg !1872
  %23 = load %struct.quicklist*, %struct.quicklist** %22, align 8, !dbg !1872, !tbaa !122
  %24 = tail call i64 @quicklistCount(%struct.quicklist* %23) #6, !dbg !1873
  %25 = icmp eq i64 %24, 0, !dbg !1874
  br i1 %25, label %26, label %28, !dbg !1875

; <label>:26:                                     ; preds = %20
  %27 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1876, !tbaa !1124
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %27) #6, !dbg !1878
  br label %98, !dbg !1879

; <label>:28:                                     ; preds = %20
  %29 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1880
  %30 = load %struct.redisDb*, %struct.redisDb** %29, align 8, !dbg !1880, !tbaa !789
  %31 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1881, !tbaa !794
  %32 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %31, i64 2, !dbg !1882
  %33 = load %struct.redisObject*, %struct.redisObject** %32, align 8, !dbg !1882, !tbaa !198
  %34 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %30, %struct.redisObject* %33) #6, !dbg !1883
  %35 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1885, !tbaa !794
  %36 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %35, i64 1, !dbg !1886
  %37 = load %struct.redisObject*, %struct.redisObject** %36, align 8, !dbg !1886, !tbaa !198
  %38 = icmp eq %struct.redisObject* %34, null, !dbg !1888
  br i1 %38, label %42, label %39, !dbg !1890

; <label>:39:                                     ; preds = %28
  %40 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %34, i32 1) #6, !dbg !1891
  %41 = icmp eq i32 %40, 0, !dbg !1891
  br i1 %41, label %42, label %98, !dbg !1892

; <label>:42:                                     ; preds = %39, %28
  %43 = bitcast i64* %2 to i8*, !dbg !1896
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %43) #8, !dbg !1896
  %44 = bitcast %struct.redisObject** %3 to i8*, !dbg !1897
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44) #8, !dbg !1897
  store %struct.redisObject* null, %struct.redisObject** %3, align 8, !dbg !1898, !tbaa !198
  %45 = load i32, i32* %15, align 8, !dbg !1899
  %46 = and i32 %45, 240, !dbg !1899
  %47 = icmp eq i32 %46, 144, !dbg !1900
  br i1 %47, label %48, label %59, !dbg !1901

; <label>:48:                                     ; preds = %42
  %49 = load %struct.quicklist*, %struct.quicklist** %22, align 8, !dbg !1903, !tbaa !122
  %50 = bitcast %struct.redisObject** %3 to i8**, !dbg !1904
  %51 = call i32 @quicklistPopCustom(%struct.quicklist* %49, i32 -1, i8** nonnull %50, i32* null, i64* nonnull %2, i8* (i8*, i32)* nonnull @listPopSaver) #6, !dbg !1906
  %52 = icmp eq i32 %51, 0, !dbg !1906
  %53 = load %struct.redisObject*, %struct.redisObject** %3, align 8, !dbg !1907
  %54 = icmp ne %struct.redisObject* %53, null, !dbg !1907
  %55 = or i1 %52, %54, !dbg !1908
  br i1 %55, label %60, label %56, !dbg !1908

; <label>:56:                                     ; preds = %48
  %57 = load i64, i64* %2, align 8, !dbg !1909, !tbaa !217
  %58 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %57) #6, !dbg !1910
  store %struct.redisObject* %58, %struct.redisObject** %3, align 8, !dbg !1911, !tbaa !198
  br label %60, !dbg !1912

; <label>:59:                                     ; preds = %42
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1913
  tail call void @_exit(i32 1) #7, !dbg !1913
  unreachable, !dbg !1913

; <label>:60:                                     ; preds = %48, %56
  %61 = phi %struct.redisObject* [ %53, %48 ], [ %58, %56 ], !dbg !1914
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #8, !dbg !1915
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #8, !dbg !1915
  call void @incrRefCount(%struct.redisObject* %37) #6, !dbg !1917
  %62 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1918, !tbaa !794
  %63 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %62, i64 2, !dbg !1919
  %64 = load %struct.redisObject*, %struct.redisObject** %63, align 8, !dbg !1919, !tbaa !198
  call void @rpoplpushHandlePush(%struct.client* nonnull %0, %struct.redisObject* %64, %struct.redisObject* %34, %struct.redisObject* %61) #9, !dbg !1920
  call void @decrRefCount(%struct.redisObject* %61) #6, !dbg !1921
  %65 = load %struct.redisDb*, %struct.redisDb** %29, align 8, !dbg !1922, !tbaa !789
  %66 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %65, i64 0, i32 5, !dbg !1923
  %67 = load i32, i32* %66, align 8, !dbg !1923, !tbaa !864
  call void @notifyKeyspaceEvent(i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), %struct.redisObject* %37, i32 %67) #6, !dbg !1924
  %68 = load i32, i32* %15, align 8, !dbg !1928
  %69 = and i32 %68, 240, !dbg !1928
  %70 = icmp eq i32 %69, 144, !dbg !1929
  br i1 %70, label %72, label %71, !dbg !1930

; <label>:71:                                     ; preds = %60
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1931
  call void @_exit(i32 1) #7, !dbg !1931
  unreachable, !dbg !1931

; <label>:72:                                     ; preds = %60
  %73 = load %struct.quicklist*, %struct.quicklist** %22, align 8, !dbg !1932, !tbaa !122
  %74 = call i64 @quicklistCount(%struct.quicklist* %73) #6, !dbg !1933
  %75 = icmp eq i64 %74, 0, !dbg !1934
  br i1 %75, label %76, label %82, !dbg !1935

; <label>:76:                                     ; preds = %72
  %77 = load %struct.redisDb*, %struct.redisDb** %29, align 8, !dbg !1936, !tbaa !789
  %78 = call i32 @dbDelete(%struct.redisDb* %77, %struct.redisObject* %37) #6, !dbg !1938
  %79 = load %struct.redisDb*, %struct.redisDb** %29, align 8, !dbg !1939, !tbaa !789
  %80 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %79, i64 0, i32 5, !dbg !1940
  %81 = load i32, i32* %80, align 8, !dbg !1940, !tbaa !864
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), %struct.redisObject* %37, i32 %81) #6, !dbg !1941
  br label %82, !dbg !1942

; <label>:82:                                     ; preds = %76, %72
  %83 = load %struct.redisDb*, %struct.redisDb** %29, align 8, !dbg !1943, !tbaa !789
  call void @signalModifiedKey(%struct.redisDb* %83, %struct.redisObject* %37) #6, !dbg !1944
  call void @decrRefCount(%struct.redisObject* %37) #6, !dbg !1945
  %84 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1946, !tbaa !870
  %85 = add nsw i64 %84, 1, !dbg !1946
  store i64 %85, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1946, !tbaa !870
  %86 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10, !dbg !1947
  %87 = load %struct.redisCommand*, %struct.redisCommand** %86, align 8, !dbg !1947, !tbaa !1949
  %88 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %87, i64 0, i32 1, !dbg !1950
  %89 = load void (%struct.client*)*, void (%struct.client*)** %88, align 8, !dbg !1950, !tbaa !1951
  %90 = icmp eq void (%struct.client*)* %89, @brpoplpushCommand, !dbg !1953
  br i1 %90, label %91, label %98, !dbg !1954

; <label>:91:                                     ; preds = %82
  %92 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 42), align 8, !dbg !1955, !tbaa !1957
  %93 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1958, !tbaa !794
  %94 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %93, i64 1, !dbg !1959
  %95 = load %struct.redisObject*, %struct.redisObject** %94, align 8, !dbg !1959, !tbaa !198
  %96 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %93, i64 2, !dbg !1960
  %97 = load %struct.redisObject*, %struct.redisObject** %96, align 8, !dbg !1960, !tbaa !198
  call void (%struct.client*, i32, ...) @rewriteClientCommandVector(%struct.client* nonnull %0, i32 3, %struct.redisObject* %92, %struct.redisObject* %95, %struct.redisObject* %97) #6, !dbg !1961
  br label %98, !dbg !1962

; <label>:98:                                     ; preds = %39, %26, %82, %91, %1, %11
  ret void, !dbg !1963
}

; Function Attrs: noredzone
declare dso_local void @incrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @brpoplpushCommand(%struct.client*) #0 !dbg !1964 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !1970
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !1970
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1971
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1971, !tbaa !794
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 3, !dbg !1973
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1973, !tbaa !198
  %8 = call i32 @getTimeoutFromObjectOrReply(%struct.client* %0, %struct.redisObject* %7, i64* nonnull %2, i32 0) #6, !dbg !1975
  %9 = icmp eq i32 %8, 0, !dbg !1976
  br i1 %9, label %10, label %50, !dbg !1977

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1978
  %12 = load %struct.redisDb*, %struct.redisDb** %11, align 8, !dbg !1978, !tbaa !789
  %13 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1979, !tbaa !794
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 1, !dbg !1980
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !1980, !tbaa !198
  %16 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %12, %struct.redisObject* %15) #6, !dbg !1981
  %17 = icmp eq %struct.redisObject* %16, null, !dbg !1983
  br i1 %17, label %18, label %31, !dbg !1985

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1986
  %20 = load i32, i32* %19, align 8, !dbg !1986, !tbaa !1989
  %21 = and i32 %20, 8, !dbg !1990
  %22 = icmp eq i32 %21, 0, !dbg !1990
  br i1 %22, label %25, label %23, !dbg !1991

; <label>:23:                                     ; preds = %18
  %24 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1992, !tbaa !1124
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %24) #6, !dbg !1994
  br label %50, !dbg !1995

; <label>:25:                                     ; preds = %18
  %26 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1996, !tbaa !794
  %27 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 1, !dbg !1998
  %28 = load i64, i64* %2, align 8, !dbg !1999, !tbaa !217
  %29 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 2, !dbg !2000
  %30 = load %struct.redisObject*, %struct.redisObject** %29, align 8, !dbg !2000, !tbaa !198
  call void @blockForKeys(%struct.client* nonnull %0, i32 1, %struct.redisObject** nonnull %27, i32 1, i64 %28, %struct.redisObject* %30, %struct.streamID* null) #6, !dbg !2001
  br label %50

; <label>:31:                                     ; preds = %10
  %32 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %16, i64 0, i32 0, !dbg !2002
  %33 = load i32, i32* %32, align 8, !dbg !2002
  %34 = and i32 %33, 15, !dbg !2002
  %35 = icmp eq i32 %34, 1, !dbg !2005
  br i1 %35, label %38, label %36, !dbg !2006

; <label>:36:                                     ; preds = %31
  %37 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !2007, !tbaa !806
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %37) #6, !dbg !2009
  br label %50, !dbg !2010

; <label>:38:                                     ; preds = %31
  %39 = and i32 %33, 240, !dbg !2014
  %40 = icmp eq i32 %39, 144, !dbg !2015
  br i1 %40, label %42, label %41, !dbg !2016

; <label>:41:                                     ; preds = %38
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2017
  call void @_exit(i32 1) #7, !dbg !2017
  unreachable, !dbg !2017

; <label>:42:                                     ; preds = %38
  %43 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %16, i64 0, i32 2, !dbg !2018
  %44 = bitcast i8** %43 to %struct.quicklist**, !dbg !2018
  %45 = load %struct.quicklist*, %struct.quicklist** %44, align 8, !dbg !2018, !tbaa !122
  %46 = call i64 @quicklistCount(%struct.quicklist* %45) #6, !dbg !2019
  %47 = icmp eq i64 %46, 0, !dbg !2020
  br i1 %47, label %48, label %49, !dbg !2020

; <label>:48:                                     ; preds = %42
  call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* nonnull %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 773) #6, !dbg !2020
  call void @_exit(i32 1) #7, !dbg !2020
  unreachable, !dbg !2020

; <label>:49:                                     ; preds = %42
  call void @rpoplpushCommand(%struct.client* nonnull %0) #9, !dbg !2021
  br label %50

; <label>:50:                                     ; preds = %25, %23, %49, %36, %1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !2022
  ret void, !dbg !2022
}

; Function Attrs: noredzone
declare dso_local void @rewriteClientCommandVector(%struct.client*, i32, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @serveClientBlockedOnList(%struct.client*, %struct.redisObject*, %struct.redisObject*, %struct.redisDb* nocapture readonly, %struct.redisObject*, i32) local_unnamed_addr #0 !dbg !2023 {
  %7 = alloca [3 x %struct.redisObject*], align 16
  %8 = bitcast [3 x %struct.redisObject*]* %7 to i8*, !dbg !2048
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #8, !dbg !2048
  %9 = icmp eq %struct.redisObject* %2, null, !dbg !2050
  br i1 %9, label %10, label %27, !dbg !2051

; <label>:10:                                     ; preds = %6
  %11 = icmp eq i32 %5, 0, !dbg !2052
  %12 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 40), align 8, !dbg !2053
  %13 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 39), align 8, !dbg !2054
  %14 = select i1 %11, %struct.redisObject* %12, %struct.redisObject* %13, !dbg !2055
  %15 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %7, i64 0, i64 0, !dbg !2056
  store %struct.redisObject* %14, %struct.redisObject** %15, align 16, !dbg !2057, !tbaa !198
  %16 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %7, i64 0, i64 1, !dbg !2058
  store %struct.redisObject* %1, %struct.redisObject** %16, align 8, !dbg !2059, !tbaa !198
  %17 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 59), align 8, !dbg !2060
  %18 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 60), align 8, !dbg !2061
  %19 = select i1 %11, %struct.redisCommand* %17, %struct.redisCommand* %18, !dbg !2062
  %20 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %3, i64 0, i32 5, !dbg !2063
  %21 = load i32, i32* %20, align 8, !dbg !2063, !tbaa !864
  call void @propagate(%struct.redisCommand* %19, i32 %21, %struct.redisObject** nonnull %15, i32 2, i32 3) #6, !dbg !2064
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 2) #6, !dbg !2065
  call void @addReplyBulk(%struct.client* %0, %struct.redisObject* %1) #6, !dbg !2066
  call void @addReplyBulk(%struct.client* %0, %struct.redisObject* %4) #6, !dbg !2067
  %22 = select i1 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), !dbg !2068
  %23 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2070
  %24 = load %struct.redisDb*, %struct.redisDb** %23, align 8, !dbg !2070, !tbaa !789
  %25 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %24, i64 0, i32 5, !dbg !2071
  %26 = load i32, i32* %25, align 8, !dbg !2071, !tbaa !864
  call void @notifyKeyspaceEvent(i32 16, i8* %22, %struct.redisObject* %1, i32 %26) #6, !dbg !2072
  br label %50, !dbg !2073

; <label>:27:                                     ; preds = %6
  %28 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2074
  %29 = load %struct.redisDb*, %struct.redisDb** %28, align 8, !dbg !2074, !tbaa !789
  %30 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %29, %struct.redisObject* nonnull %2) #6, !dbg !2075
  %31 = icmp eq %struct.redisObject* %30, null, !dbg !2077
  br i1 %31, label %35, label %32, !dbg !2079

; <label>:32:                                     ; preds = %27
  %33 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %30, i32 1) #6, !dbg !2080
  %34 = icmp eq i32 %33, 0, !dbg !2080
  br i1 %34, label %35, label %50, !dbg !2081

; <label>:35:                                     ; preds = %32, %27
  %36 = load i64, i64* bitcast (%struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 39) to i64*), align 8, !dbg !2082, !tbaa !2084
  %37 = bitcast [3 x %struct.redisObject*]* %7 to i64*, !dbg !2085
  store i64 %36, i64* %37, align 16, !dbg !2085, !tbaa !198
  %38 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %7, i64 0, i64 1, !dbg !2086
  store %struct.redisObject* %1, %struct.redisObject** %38, align 8, !dbg !2087, !tbaa !198
  %39 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 60), align 8, !dbg !2088, !tbaa !2089
  %40 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %3, i64 0, i32 5, !dbg !2090
  %41 = load i32, i32* %40, align 8, !dbg !2090, !tbaa !864
  %42 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %7, i64 0, i64 0, !dbg !2091
  call void @propagate(%struct.redisCommand* %39, i32 %41, %struct.redisObject** nonnull %42, i32 2, i32 3) #6, !dbg !2092
  call void @rpoplpushHandlePush(%struct.client* nonnull %0, %struct.redisObject* nonnull %2, %struct.redisObject* %30, %struct.redisObject* %4) #9, !dbg !2093
  %43 = load i64, i64* bitcast (%struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 41) to i64*), align 8, !dbg !2094, !tbaa !2095
  store i64 %43, i64* %37, align 16, !dbg !2096, !tbaa !198
  store %struct.redisObject* %2, %struct.redisObject** %38, align 8, !dbg !2097, !tbaa !198
  %44 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %7, i64 0, i64 2, !dbg !2098
  store %struct.redisObject* %4, %struct.redisObject** %44, align 16, !dbg !2099, !tbaa !198
  %45 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 58), align 8, !dbg !2100, !tbaa !2101
  %46 = load i32, i32* %40, align 8, !dbg !2102, !tbaa !864
  call void @propagate(%struct.redisCommand* %45, i32 %46, %struct.redisObject** nonnull %42, i32 3, i32 3) #6, !dbg !2103
  %47 = load %struct.redisDb*, %struct.redisDb** %28, align 8, !dbg !2104, !tbaa !789
  %48 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %47, i64 0, i32 5, !dbg !2105
  %49 = load i32, i32* %48, align 8, !dbg !2105, !tbaa !864
  call void @notifyKeyspaceEvent(i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), %struct.redisObject* %1, i32 %49) #6, !dbg !2106
  br label %50

; <label>:50:                                     ; preds = %10, %35, %32
  %51 = phi i32 [ -1, %32 ], [ 0, %35 ], [ 0, %10 ], !dbg !2107
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #8, !dbg !2109
  ret i32 %51, !dbg !2109
}

; Function Attrs: noredzone
declare dso_local void @propagate(%struct.redisCommand*, i32, %struct.redisObject**, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @blockingPopGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !2110 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.redisObject*, align 8
  %5 = alloca i64, align 8
  %6 = bitcast i64* %5 to i8*, !dbg !2130
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8, !dbg !2130
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2131
  %8 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !2131, !tbaa !794
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2133
  %10 = load i32, i32* %9, align 8, !dbg !2133, !tbaa !814
  %11 = add nsw i32 %10, -1, !dbg !2134
  %12 = sext i32 %11 to i64, !dbg !2135
  %13 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 %12, !dbg !2135
  %14 = load %struct.redisObject*, %struct.redisObject** %13, align 8, !dbg !2135, !tbaa !198
  %15 = call i32 @getTimeoutFromObjectOrReply(%struct.client* %0, %struct.redisObject* %14, i64* nonnull %5, i32 0) #6, !dbg !2137
  %16 = icmp eq i32 %15, 0, !dbg !2138
  br i1 %16, label %17, label %138, !dbg !2139

; <label>:17:                                     ; preds = %2
  %18 = load i32, i32* %9, align 8, !dbg !2141, !tbaa !814
  %19 = icmp sgt i32 %18, 2, !dbg !2142
  br i1 %19, label %20, label %125, !dbg !2143

; <label>:20:                                     ; preds = %17
  %21 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  br label %22, !dbg !2143

; <label>:22:                                     ; preds = %20, %119
  %23 = phi i64 [ 1, %20 ], [ %120, %119 ]
  %24 = load %struct.redisDb*, %struct.redisDb** %21, align 8, !dbg !2144, !tbaa !789
  %25 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !2145, !tbaa !794
  %26 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %25, i64 %23, !dbg !2146
  %27 = load %struct.redisObject*, %struct.redisObject** %26, align 8, !dbg !2146, !tbaa !198
  %28 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %24, %struct.redisObject* %27) #6, !dbg !2147
  %29 = icmp eq %struct.redisObject* %28, null, !dbg !2149
  br i1 %29, label %119, label %30, !dbg !2150

; <label>:30:                                     ; preds = %22
  %31 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %28, i64 0, i32 0, !dbg !2151
  %32 = load i32, i32* %31, align 8, !dbg !2151
  %33 = and i32 %32, 15, !dbg !2151
  %34 = icmp eq i32 %33, 1, !dbg !2152
  br i1 %34, label %37, label %35, !dbg !2153

; <label>:35:                                     ; preds = %30
  %36 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !2154, !tbaa !806
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %36) #6, !dbg !2156
  br label %138, !dbg !2157

; <label>:37:                                     ; preds = %30
  %38 = and i32 %32, 240, !dbg !2160
  %39 = icmp eq i32 %38, 144, !dbg !2161
  br i1 %39, label %41, label %40, !dbg !2162

; <label>:40:                                     ; preds = %37
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2163
  call void @_exit(i32 1) #7, !dbg !2163
  unreachable, !dbg !2163

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %28, i64 0, i32 2, !dbg !2164
  %43 = bitcast i8** %42 to %struct.quicklist**, !dbg !2164
  %44 = load %struct.quicklist*, %struct.quicklist** %43, align 8, !dbg !2164, !tbaa !122
  %45 = call i64 @quicklistCount(%struct.quicklist* %44) #6, !dbg !2165
  %46 = icmp eq i64 %45, 0, !dbg !2166
  br i1 %46, label %119, label %47, !dbg !2167

; <label>:47:                                     ; preds = %41
  %48 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %28, i64 0, i32 0, !dbg !2151
  %49 = bitcast i8** %42 to %struct.quicklist**, !dbg !2164
  %50 = and i64 %23, 4294967295, !dbg !2146
  %51 = icmp eq i32 %1, 0, !dbg !2168
  %52 = bitcast i64* %3 to i8*, !dbg !2172
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %52) #8, !dbg !2172
  %53 = bitcast %struct.redisObject** %4 to i8*, !dbg !2173
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53) #8, !dbg !2173
  store %struct.redisObject* null, %struct.redisObject** %4, align 8, !dbg !2174, !tbaa !198
  %54 = load i32, i32* %48, align 8, !dbg !2175
  %55 = and i32 %54, 240, !dbg !2175
  %56 = icmp eq i32 %55, 144, !dbg !2176
  br i1 %56, label %57, label %70, !dbg !2177

; <label>:57:                                     ; preds = %47
  %58 = icmp ne i32 %1, 0, !dbg !2178
  %59 = sext i1 %58 to i32, !dbg !2179
  %60 = load %struct.quicklist*, %struct.quicklist** %49, align 8, !dbg !2181, !tbaa !122
  %61 = bitcast %struct.redisObject** %4 to i8**, !dbg !2182
  %62 = call i32 @quicklistPopCustom(%struct.quicklist* %60, i32 %59, i8** nonnull %61, i32* null, i64* nonnull %3, i8* (i8*, i32)* nonnull @listPopSaver) #6, !dbg !2184
  %63 = icmp eq i32 %62, 0, !dbg !2184
  %64 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !2185
  %65 = icmp ne %struct.redisObject* %64, null, !dbg !2185
  %66 = or i1 %63, %65, !dbg !2186
  br i1 %66, label %71, label %67, !dbg !2186

; <label>:67:                                     ; preds = %57
  %68 = load i64, i64* %3, align 8, !dbg !2187, !tbaa !217
  %69 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %68) #6, !dbg !2188
  store %struct.redisObject* %69, %struct.redisObject** %4, align 8, !dbg !2189, !tbaa !198
  br label %71, !dbg !2190

; <label>:70:                                     ; preds = %47
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2191
  call void @_exit(i32 1) #7, !dbg !2191
  unreachable, !dbg !2191

; <label>:71:                                     ; preds = %57, %67
  %72 = phi %struct.redisObject* [ %64, %57 ], [ %69, %67 ], !dbg !2192
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #8, !dbg !2193
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %52) #8, !dbg !2193
  %73 = icmp eq %struct.redisObject* %72, null, !dbg !2195
  br i1 %73, label %74, label %75, !dbg !2195

; <label>:74:                                     ; preds = %71
  call void @_serverAssert(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 705) #6, !dbg !2195
  call void @_exit(i32 1) #7, !dbg !2195
  unreachable, !dbg !2195

; <label>:75:                                     ; preds = %71
  %76 = select i1 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), !dbg !2196
  call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 2) #6, !dbg !2198
  %77 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !2199, !tbaa !794
  %78 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %77, i64 %50, !dbg !2200
  %79 = load %struct.redisObject*, %struct.redisObject** %78, align 8, !dbg !2200, !tbaa !198
  call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %79) #6, !dbg !2201
  call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* nonnull %72) #6, !dbg !2202
  call void @decrRefCount(%struct.redisObject* nonnull %72) #6, !dbg !2203
  %80 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !2204, !tbaa !794
  %81 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %80, i64 %50, !dbg !2205
  %82 = load %struct.redisObject*, %struct.redisObject** %81, align 8, !dbg !2205, !tbaa !198
  %83 = load %struct.redisDb*, %struct.redisDb** %21, align 8, !dbg !2206, !tbaa !789
  %84 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %83, i64 0, i32 5, !dbg !2207
  %85 = load i32, i32* %84, align 8, !dbg !2207, !tbaa !864
  call void @notifyKeyspaceEvent(i32 16, i8* %76, %struct.redisObject* %82, i32 %85) #6, !dbg !2208
  %86 = load i32, i32* %48, align 8, !dbg !2212
  %87 = and i32 %86, 240, !dbg !2212
  %88 = icmp eq i32 %87, 144, !dbg !2213
  br i1 %88, label %90, label %89, !dbg !2214

; <label>:89:                                     ; preds = %75
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2215
  call void @_exit(i32 1) #7, !dbg !2215
  unreachable, !dbg !2215

; <label>:90:                                     ; preds = %75
  %91 = load %struct.quicklist*, %struct.quicklist** %49, align 8, !dbg !2216, !tbaa !122
  %92 = call i64 @quicklistCount(%struct.quicklist* %91) #6, !dbg !2217
  %93 = icmp eq i64 %92, 0, !dbg !2218
  br i1 %93, label %94, label %106, !dbg !2219

; <label>:94:                                     ; preds = %90
  %95 = load %struct.redisDb*, %struct.redisDb** %21, align 8, !dbg !2220, !tbaa !789
  %96 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !2222, !tbaa !794
  %97 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %96, i64 %50, !dbg !2223
  %98 = load %struct.redisObject*, %struct.redisObject** %97, align 8, !dbg !2223, !tbaa !198
  %99 = call i32 @dbDelete(%struct.redisDb* %95, %struct.redisObject* %98) #6, !dbg !2224
  %100 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !2225, !tbaa !794
  %101 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %100, i64 %50, !dbg !2226
  %102 = load %struct.redisObject*, %struct.redisObject** %101, align 8, !dbg !2226, !tbaa !198
  %103 = load %struct.redisDb*, %struct.redisDb** %21, align 8, !dbg !2227, !tbaa !789
  %104 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %103, i64 0, i32 5, !dbg !2228
  %105 = load i32, i32* %104, align 8, !dbg !2228, !tbaa !864
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), %struct.redisObject* %102, i32 %105) #6, !dbg !2229
  br label %106, !dbg !2230

; <label>:106:                                    ; preds = %94, %90
  %107 = load %struct.redisDb*, %struct.redisDb** %21, align 8, !dbg !2231, !tbaa !789
  %108 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !2232, !tbaa !794
  %109 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %108, i64 %50, !dbg !2233
  %110 = load %struct.redisObject*, %struct.redisObject** %109, align 8, !dbg !2233, !tbaa !198
  call void @signalModifiedKey(%struct.redisDb* %107, %struct.redisObject* %110) #6, !dbg !2234
  %111 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2235, !tbaa !870
  %112 = add nsw i64 %111, 1, !dbg !2235
  store i64 %112, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2235, !tbaa !870
  %113 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 40), align 8, !dbg !2236
  %114 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 39), align 8, !dbg !2237
  %115 = select i1 %51, %struct.redisObject* %113, %struct.redisObject* %114, !dbg !2238
  %116 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !2239, !tbaa !794
  %117 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %116, i64 %50, !dbg !2240
  %118 = load %struct.redisObject*, %struct.redisObject** %117, align 8, !dbg !2240, !tbaa !198
  call void (%struct.client*, i32, ...) @rewriteClientCommandVector(%struct.client* nonnull %0, i32 2, %struct.redisObject* %115, %struct.redisObject* %118) #6, !dbg !2241
  br label %138

; <label>:119:                                    ; preds = %41, %22
  %120 = add nuw nsw i64 %23, 1, !dbg !2242
  %121 = load i32, i32* %9, align 8, !dbg !2141, !tbaa !814
  %122 = add nsw i32 %121, -1, !dbg !2243
  %123 = sext i32 %122 to i64, !dbg !2142
  %124 = icmp slt i64 %120, %123, !dbg !2142
  br i1 %124, label %22, label %125, !dbg !2143, !llvm.loop !2244

; <label>:125:                                    ; preds = %119, %17
  %126 = phi i32 [ %18, %17 ], [ %121, %119 ], !dbg !2141
  %127 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2246
  %128 = load i32, i32* %127, align 8, !dbg !2246, !tbaa !1989
  %129 = and i32 %128, 8, !dbg !2248
  %130 = icmp eq i32 %129, 0, !dbg !2248
  br i1 %130, label %133, label %131, !dbg !2249

; <label>:131:                                    ; preds = %125
  %132 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !2250, !tbaa !2252
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %132) #6, !dbg !2253
  br label %138, !dbg !2254

; <label>:133:                                    ; preds = %125
  %134 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !2255, !tbaa !794
  %135 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %134, i64 1, !dbg !2256
  %136 = add nsw i32 %126, -2, !dbg !2257
  %137 = load i64, i64* %5, align 8, !dbg !2258, !tbaa !217
  call void @blockForKeys(%struct.client* nonnull %0, i32 1, %struct.redisObject** nonnull %135, i32 %136, i64 %137, %struct.redisObject* null, %struct.streamID* null) #6, !dbg !2259
  br label %138, !dbg !2260

; <label>:138:                                    ; preds = %2, %133, %131, %106, %35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8, !dbg !2260
  ret void, !dbg !2260
}

; Function Attrs: noredzone
declare dso_local i32 @getTimeoutFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @blockForKeys(%struct.client*, i32, %struct.redisObject**, i32, i64, %struct.redisObject*, %struct.streamID*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @blpopCommand(%struct.client*) local_unnamed_addr #0 !dbg !2261 {
  tail call void @blockingPopGenericCommand(%struct.client* %0, i32 0) #9, !dbg !2265
  ret void, !dbg !2266
}

; Function Attrs: noredzone nounwind
define dso_local void @brpopCommand(%struct.client*) local_unnamed_addr #0 !dbg !2267 {
  tail call void @blockingPopGenericCommand(%struct.client* %0, i32 1) #9, !dbg !2271
  ret void, !dbg !2272
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nobuiltin noredzone noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noredzone }
attributes #10 = { nobuiltin noredzone nounwind readonly }

!llvm.module.flags = !{!82, !83, !84}
!llvm.ident = !{!85}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/t_list.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !6, !9, !38, !39, !54, !64, !73}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklist", file: !11, line: 80, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/quicklist.h", directory: "/root/.unikraft/apps/redis/build")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklist", file: !11, line: 73, size: 320, elements: !13)
!13 = !{!14, !31, !32, !34, !35, !37}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !12, file: !11, line: 74, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistNode", file: !11, line: 55, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistNode", file: !11, line: 44, size: 256, elements: !18)
!18 = !{!19, !21, !22, !23, !25, !26, !27, !28, !29, !30}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !17, file: !11, line: 45, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !17, file: !11, line: 46, baseType: !20, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "zl", scope: !17, file: !11, line: 47, baseType: !7, size: 64, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !17, file: !11, line: 48, baseType: !24, size: 32, offset: 192)
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !17, file: !11, line: 49, baseType: !24, size: 16, offset: 224, flags: DIFlagBitField, extraData: i64 224)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !17, file: !11, line: 50, baseType: !24, size: 2, offset: 240, flags: DIFlagBitField, extraData: i64 224)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !17, file: !11, line: 51, baseType: !24, size: 2, offset: 242, flags: DIFlagBitField, extraData: i64 224)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "recompress", scope: !17, file: !11, line: 52, baseType: !24, size: 1, offset: 244, flags: DIFlagBitField, extraData: i64 224)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "attempted_compress", scope: !17, file: !11, line: 53, baseType: !24, size: 1, offset: 245, flags: DIFlagBitField, extraData: i64 224)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !17, file: !11, line: 54, baseType: !24, size: 10, offset: 246, flags: DIFlagBitField, extraData: i64 224)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !12, file: !11, line: 75, baseType: !15, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !12, file: !11, line: 76, baseType: !33, size: 64, offset: 128)
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !12, file: !11, line: 77, baseType: !33, size: 64, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !12, file: !11, line: 78, baseType: !36, size: 16, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !12, file: !11, line: 79, baseType: !24, size: 16, offset: 272, flags: DIFlagBitField, extraData: i64 256)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !41, line: 51, size: 24, elements: !42)
!41 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!42 = !{!43, !48, !49, !50}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !40, file: !41, line: 52, baseType: !44, size: 8)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !45, line: 24, baseType: !46)
!45 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !47, line: 43, baseType: !8)
!47 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!48 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !40, file: !41, line: 53, baseType: !44, size: 8, offset: 8)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !40, file: !41, line: 54, baseType: !8, size: 8, offset: 16)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !40, file: !41, line: 55, baseType: !51, offset: 24)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: -1)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !41, line: 57, size: 40, elements: !56)
!56 = !{!57, !61, !62, !63}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !55, file: !41, line: 58, baseType: !58, size: 16)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !45, line: 36, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !47, line: 57, baseType: !60)
!60 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !55, file: !41, line: 59, baseType: !58, size: 16, offset: 16)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !55, file: !41, line: 60, baseType: !8, size: 8, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !55, file: !41, line: 61, baseType: !51, offset: 40)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !41, line: 63, size: 72, elements: !66)
!66 = !{!67, !70, !71, !72}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !65, file: !41, line: 64, baseType: !68, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !45, line: 48, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !47, line: 79, baseType: !24)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !65, file: !41, line: 65, baseType: !68, size: 32, offset: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !65, file: !41, line: 66, baseType: !8, size: 8, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !65, file: !41, line: 67, baseType: !51, offset: 72)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !41, line: 69, size: 136, elements: !75)
!75 = !{!76, !79, !80, !81}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !74, file: !41, line: 70, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !45, line: 60, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !47, line: 105, baseType: !33)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !74, file: !41, line: 71, baseType: !77, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !74, file: !41, line: 72, baseType: !8, size: 8, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !74, file: !41, line: 73, baseType: !51, offset: 136)
!82 = !{i32 2, !"Dwarf Version", i32 4}
!83 = !{i32 2, !"Debug Info Version", i32 3}
!84 = !{i32 1, !"wchar_size", i32 4}
!85 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!86 = distinct !DISubprogram(name: "listTypePush", scope: !1, file: !1, line: 41, type: !87, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !99)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !89, !89, !36}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !91, line: 622, baseType: !92)
!91 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !91, line: 614, size: 128, elements: !93)
!93 = !{!94, !95, !96, !97, !98}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !92, file: !91, line: 615, baseType: !24, size: 4, flags: DIFlagBitField, extraData: i64 0)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !92, file: !91, line: 616, baseType: !24, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !92, file: !91, line: 617, baseType: !24, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !92, file: !91, line: 620, baseType: !36, size: 32, offset: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !92, file: !91, line: 621, baseType: !38, size: 64, offset: 64)
!99 = !{!100, !101, !102, !103, !106}
!100 = !DILocalVariable(name: "subject", arg: 1, scope: !86, file: !1, line: 41, type: !89)
!101 = !DILocalVariable(name: "value", arg: 2, scope: !86, file: !1, line: 41, type: !89)
!102 = !DILocalVariable(name: "where", arg: 3, scope: !86, file: !1, line: 41, type: !36)
!103 = !DILocalVariable(name: "pos", scope: !104, file: !1, line: 43, type: !36)
!104 = distinct !DILexicalBlock(scope: !105, file: !1, line: 42, column: 54)
!105 = distinct !DILexicalBlock(scope: !86, file: !1, line: 42, column: 9)
!106 = !DILocalVariable(name: "len", scope: !104, file: !1, line: 45, type: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !108, line: 40, baseType: !109)
!108 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !110, line: 129, baseType: !33)
!110 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!111 = !DILocation(line: 41, column: 25, scope: !86)
!112 = !DILocation(line: 41, column: 40, scope: !86)
!113 = !DILocation(line: 41, column: 51, scope: !86)
!114 = !DILocation(line: 42, column: 18, scope: !105)
!115 = !DILocation(line: 42, column: 27, scope: !105)
!116 = !DILocation(line: 42, column: 9, scope: !86)
!117 = !DILocation(line: 43, column: 26, scope: !104)
!118 = !DILocation(line: 43, column: 19, scope: !104)
!119 = !DILocation(line: 43, column: 13, scope: !104)
!120 = !DILocation(line: 44, column: 17, scope: !104)
!121 = !DILocation(line: 45, column: 36, scope: !104)
!122 = !{!123, !127, i64 8}
!123 = !{!"redisObject", !124, i64 0, !124, i64 0, !124, i64 1, !124, i64 4, !127, i64 8}
!124 = !{!"int", !125, i64 0}
!125 = !{!"omnipotent char", !126, i64 0}
!126 = !{!"Simple C/C++ TBAA"}
!127 = !{!"any pointer", !125, i64 0}
!128 = !DILocalVariable(name: "s", arg: 1, scope: !129, file: !41, line: 87, type: !134)
!129 = distinct !DISubprogram(name: "sdslen", scope: !41, file: !41, line: 87, type: !130, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !136)
!130 = !DISubroutineType(types: !131)
!131 = !{!132, !134}
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !133, line: 58, baseType: !33)
!133 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !41, line: 43, baseType: !4)
!136 = !{!128, !137}
!137 = !DILocalVariable(name: "flags", scope: !129, file: !41, line: 88, type: !8)
!138 = !DILocation(line: 87, column: 39, scope: !129, inlinedAt: !139)
!139 = distinct !DILocation(line: 45, column: 22, scope: !104)
!140 = !DILocation(line: 88, column: 27, scope: !129, inlinedAt: !139)
!141 = !{!125, !125, i64 0}
!142 = !DILocation(line: 88, column: 19, scope: !129, inlinedAt: !139)
!143 = !DILocation(line: 89, column: 5, scope: !129, inlinedAt: !139)
!144 = !DILocation(line: 91, column: 20, scope: !145, inlinedAt: !139)
!145 = distinct !DILexicalBlock(scope: !129, file: !41, line: 89, column: 33)
!146 = !DILocation(line: 91, column: 13, scope: !145, inlinedAt: !139)
!147 = !DILocation(line: 93, column: 20, scope: !145, inlinedAt: !139)
!148 = !DILocation(line: 93, column: 34, scope: !145, inlinedAt: !139)
!149 = !DILocation(line: 93, column: 13, scope: !145, inlinedAt: !139)
!150 = !DILocation(line: 95, column: 20, scope: !145, inlinedAt: !139)
!151 = !DILocation(line: 95, column: 35, scope: !145, inlinedAt: !139)
!152 = !{!153, !153, i64 0}
!153 = !{!"short", !125, i64 0}
!154 = !DILocation(line: 95, column: 13, scope: !145, inlinedAt: !139)
!155 = !DILocation(line: 97, column: 20, scope: !145, inlinedAt: !139)
!156 = !DILocation(line: 97, column: 35, scope: !145, inlinedAt: !139)
!157 = !{!124, !124, i64 0}
!158 = !DILocation(line: 97, column: 13, scope: !145, inlinedAt: !139)
!159 = !DILocation(line: 99, column: 20, scope: !145, inlinedAt: !139)
!160 = !DILocation(line: 99, column: 35, scope: !145, inlinedAt: !139)
!161 = !{!162, !162, i64 0}
!162 = !{!"long", !125, i64 0}
!163 = !DILocation(line: 99, column: 13, scope: !145, inlinedAt: !139)
!164 = !DILocation(line: 0, scope: !145, inlinedAt: !139)
!165 = !DILocation(line: 45, column: 16, scope: !104)
!166 = !DILocation(line: 46, column: 32, scope: !104)
!167 = !DILocation(line: 46, column: 9, scope: !104)
!168 = !DILocation(line: 47, column: 9, scope: !104)
!169 = !DILocation(line: 51, column: 1, scope: !86)
!170 = !DILocation(line: 49, column: 9, scope: !171)
!171 = distinct !DILexicalBlock(scope: !105, file: !1, line: 48, column: 12)
!172 = distinct !DISubprogram(name: "listPopSaver", scope: !1, file: !1, line: 53, type: !173, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !175)
!173 = !DISubroutineType(types: !174)
!174 = !{!38, !7, !24}
!175 = !{!176, !177}
!176 = !DILocalVariable(name: "data", arg: 1, scope: !172, file: !1, line: 53, type: !7)
!177 = !DILocalVariable(name: "sz", arg: 2, scope: !172, file: !1, line: 53, type: !24)
!178 = !DILocation(line: 53, column: 35, scope: !172)
!179 = !DILocation(line: 53, column: 54, scope: !172)
!180 = !DILocation(line: 54, column: 43, scope: !172)
!181 = !DILocation(line: 54, column: 12, scope: !172)
!182 = !DILocation(line: 54, column: 5, scope: !172)
!183 = distinct !DISubprogram(name: "listTypePop", scope: !1, file: !1, line: 57, type: !184, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !186)
!184 = !DISubroutineType(types: !185)
!185 = !{!89, !89, !36}
!186 = !{!187, !188, !189, !191, !192}
!187 = !DILocalVariable(name: "subject", arg: 1, scope: !183, file: !1, line: 57, type: !89)
!188 = !DILocalVariable(name: "where", arg: 2, scope: !183, file: !1, line: 57, type: !36)
!189 = !DILocalVariable(name: "vlong", scope: !183, file: !1, line: 58, type: !190)
!190 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!191 = !DILocalVariable(name: "value", scope: !183, file: !1, line: 59, type: !89)
!192 = !DILocalVariable(name: "ql_where", scope: !183, file: !1, line: 61, type: !36)
!193 = !DILocation(line: 57, column: 25, scope: !183)
!194 = !DILocation(line: 57, column: 38, scope: !183)
!195 = !DILocation(line: 58, column: 5, scope: !183)
!196 = !DILocation(line: 59, column: 5, scope: !183)
!197 = !DILocation(line: 59, column: 11, scope: !183)
!198 = !{!127, !127, i64 0}
!199 = !DILocation(line: 62, column: 18, scope: !200)
!200 = distinct !DILexicalBlock(scope: !183, file: !1, line: 62, column: 9)
!201 = !DILocation(line: 62, column: 27, scope: !200)
!202 = !DILocation(line: 62, column: 9, scope: !183)
!203 = !DILocation(line: 61, column: 26, scope: !183)
!204 = !DILocation(line: 61, column: 20, scope: !183)
!205 = !DILocation(line: 61, column: 9, scope: !183)
!206 = !DILocation(line: 63, column: 41, scope: !207)
!207 = distinct !DILexicalBlock(scope: !208, file: !1, line: 63, column: 13)
!208 = distinct !DILexicalBlock(scope: !200, file: !1, line: 62, column: 54)
!209 = !DILocation(line: 63, column: 56, scope: !207)
!210 = !DILocation(line: 58, column: 15, scope: !183)
!211 = !DILocation(line: 63, column: 13, scope: !207)
!212 = !DILocation(line: 65, column: 18, scope: !213)
!213 = distinct !DILexicalBlock(scope: !214, file: !1, line: 65, column: 17)
!214 = distinct !DILexicalBlock(scope: !207, file: !1, line: 64, column: 61)
!215 = !DILocation(line: 63, column: 13, scope: !208)
!216 = !DILocation(line: 66, column: 56, scope: !213)
!217 = !{!218, !218, i64 0}
!218 = !{!"long long", !125, i64 0}
!219 = !DILocation(line: 66, column: 25, scope: !213)
!220 = !DILocation(line: 66, column: 23, scope: !213)
!221 = !DILocation(line: 66, column: 17, scope: !213)
!222 = !DILocation(line: 69, column: 9, scope: !223)
!223 = distinct !DILexicalBlock(scope: !200, file: !1, line: 68, column: 12)
!224 = !DILocation(line: 71, column: 12, scope: !183)
!225 = !DILocation(line: 72, column: 1, scope: !183)
!226 = !DILocation(line: 71, column: 5, scope: !183)
!227 = distinct !DISubprogram(name: "listTypeLength", scope: !1, file: !1, line: 74, type: !228, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !232)
!228 = !DISubroutineType(types: !229)
!229 = !{!33, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!232 = !{!233}
!233 = !DILocalVariable(name: "subject", arg: 1, scope: !227, file: !1, line: 74, type: !230)
!234 = !DILocation(line: 74, column: 42, scope: !227)
!235 = !DILocation(line: 75, column: 18, scope: !236)
!236 = distinct !DILexicalBlock(scope: !227, file: !1, line: 75, column: 9)
!237 = !DILocation(line: 75, column: 27, scope: !236)
!238 = !DILocation(line: 75, column: 9, scope: !227)
!239 = !DILocation(line: 76, column: 40, scope: !240)
!240 = distinct !DILexicalBlock(scope: !236, file: !1, line: 75, column: 54)
!241 = !DILocation(line: 76, column: 16, scope: !240)
!242 = !DILocation(line: 76, column: 9, scope: !240)
!243 = !DILocation(line: 78, column: 9, scope: !244)
!244 = distinct !DILexicalBlock(scope: !236, file: !1, line: 77, column: 12)
!245 = distinct !DISubprogram(name: "listTypeInitIterator", scope: !1, file: !1, line: 83, type: !246, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !268)
!246 = !DISubroutineType(types: !247)
!247 = !{!248, !89, !266, !8}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "listTypeIterator", file: !91, line: 1347, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 1342, size: 192, elements: !251)
!251 = !{!252, !253, !254, !255}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !250, file: !91, line: 1343, baseType: !89, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !250, file: !91, line: 1344, baseType: !8, size: 8, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !250, file: !91, line: 1345, baseType: !8, size: 8, offset: 72)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !250, file: !91, line: 1346, baseType: !256, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistIter", file: !11, line: 88, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistIter", file: !11, line: 82, size: 320, elements: !259)
!259 = !{!260, !263, !264, !265, !267}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !258, file: !11, line: 83, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !258, file: !11, line: 84, baseType: !15, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !258, file: !11, line: 85, baseType: !7, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !258, file: !11, line: 86, baseType: !266, size: 64, offset: 192)
!266 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !258, file: !11, line: 87, baseType: !36, size: 32, offset: 256)
!268 = !{!269, !270, !271, !272, !273}
!269 = !DILocalVariable(name: "subject", arg: 1, scope: !245, file: !1, line: 83, type: !89)
!270 = !DILocalVariable(name: "index", arg: 2, scope: !245, file: !1, line: 83, type: !266)
!271 = !DILocalVariable(name: "direction", arg: 3, scope: !245, file: !1, line: 84, type: !8)
!272 = !DILocalVariable(name: "li", scope: !245, file: !1, line: 85, type: !248)
!273 = !DILocalVariable(name: "iter_direction", scope: !245, file: !1, line: 92, type: !36)
!274 = !DILocation(line: 83, column: 46, scope: !245)
!275 = !DILocation(line: 83, column: 60, scope: !245)
!276 = !DILocation(line: 84, column: 54, scope: !245)
!277 = !DILocation(line: 85, column: 28, scope: !245)
!278 = !DILocation(line: 86, column: 9, scope: !245)
!279 = !DILocation(line: 86, column: 17, scope: !245)
!280 = !{!281, !127, i64 0}
!281 = !{!"", !127, i64 0, !125, i64 8, !125, i64 9, !127, i64 16}
!282 = !DILocation(line: 87, column: 29, scope: !245)
!283 = !DILocation(line: 87, column: 20, scope: !245)
!284 = !DILocation(line: 87, column: 9, scope: !245)
!285 = !DILocation(line: 87, column: 18, scope: !245)
!286 = !{!281, !125, i64 8}
!287 = !DILocation(line: 88, column: 9, scope: !245)
!288 = !DILocation(line: 88, column: 19, scope: !245)
!289 = !{!281, !125, i64 9}
!290 = !DILocation(line: 89, column: 9, scope: !245)
!291 = !DILocation(line: 89, column: 14, scope: !245)
!292 = !{!281, !127, i64 16}
!293 = !DILocation(line: 94, column: 22, scope: !294)
!294 = distinct !DILexicalBlock(scope: !245, file: !1, line: 94, column: 9)
!295 = !DILocation(line: 94, column: 9, scope: !245)
!296 = !DILocation(line: 93, column: 19, scope: !245)
!297 = !DILocation(line: 93, column: 9, scope: !245)
!298 = !DILocation(line: 92, column: 9, scope: !245)
!299 = !DILocation(line: 85, column: 23, scope: !245)
!300 = !DILocation(line: 95, column: 59, scope: !301)
!301 = distinct !DILexicalBlock(scope: !294, file: !1, line: 94, column: 49)
!302 = !DILocation(line: 95, column: 20, scope: !301)
!303 = !DILocation(line: 95, column: 18, scope: !301)
!304 = !DILocation(line: 100, column: 5, scope: !245)
!305 = !DILocation(line: 98, column: 9, scope: !306)
!306 = distinct !DILexicalBlock(scope: !294, file: !1, line: 97, column: 12)
!307 = distinct !DISubprogram(name: "listTypeReleaseIterator", scope: !1, file: !1, line: 104, type: !308, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !310)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !248}
!310 = !{!311}
!311 = !DILocalVariable(name: "li", arg: 1, scope: !307, file: !1, line: 104, type: !248)
!312 = !DILocation(line: 104, column: 48, scope: !307)
!313 = !DILocation(line: 105, column: 15, scope: !307)
!314 = !DILocation(line: 105, column: 5, scope: !307)
!315 = !DILocation(line: 106, column: 11, scope: !307)
!316 = !DILocation(line: 106, column: 5, scope: !307)
!317 = !DILocation(line: 107, column: 1, scope: !307)
!318 = distinct !DISubprogram(name: "listTypeNext", scope: !1, file: !1, line: 112, type: !319, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !337)
!319 = !DISubroutineType(types: !320)
!320 = !{!36, !248, !321}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "listTypeEntry", file: !91, line: 1353, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 1350, size: 448, elements: !324)
!324 = !{!325, !326}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "li", scope: !323, file: !91, line: 1351, baseType: !248, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !323, file: !91, line: 1352, baseType: !327, size: 384, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistEntry", file: !11, line: 98, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistEntry", file: !11, line: 90, size: 384, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335, !336}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !328, file: !11, line: 91, baseType: !261, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !328, file: !11, line: 92, baseType: !15, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !328, file: !11, line: 93, baseType: !7, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !328, file: !11, line: 94, baseType: !7, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "longval", scope: !328, file: !11, line: 95, baseType: !190, size: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !328, file: !11, line: 96, baseType: !24, size: 32, offset: 320)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !328, file: !11, line: 97, baseType: !36, size: 32, offset: 352)
!337 = !{!338, !339}
!338 = !DILocalVariable(name: "li", arg: 1, scope: !318, file: !1, line: 112, type: !248)
!339 = !DILocalVariable(name: "entry", arg: 2, scope: !318, file: !1, line: 112, type: !321)
!340 = !DILocation(line: 112, column: 36, scope: !318)
!341 = !DILocation(line: 112, column: 55, scope: !318)
!342 = !DILocation(line: 114, column: 5, scope: !318)
!343 = !DILocation(line: 116, column: 12, scope: !318)
!344 = !DILocation(line: 116, column: 15, scope: !318)
!345 = !{!346, !127, i64 0}
!346 = !{!"", !127, i64 0, !347, i64 8}
!347 = !{!"quicklistEntry", !127, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !218, i64 32, !124, i64 40, !124, i64 44}
!348 = !DILocation(line: 117, column: 22, scope: !349)
!349 = distinct !DILexicalBlock(scope: !318, file: !1, line: 117, column: 9)
!350 = !DILocation(line: 117, column: 9, scope: !318)
!351 = !DILocation(line: 118, column: 34, scope: !352)
!352 = distinct !DILexicalBlock(scope: !349, file: !1, line: 117, column: 49)
!353 = !DILocation(line: 118, column: 48, scope: !352)
!354 = !DILocation(line: 118, column: 16, scope: !352)
!355 = !DILocation(line: 118, column: 9, scope: !352)
!356 = !DILocation(line: 120, column: 9, scope: !357)
!357 = distinct !DILexicalBlock(scope: !349, file: !1, line: 119, column: 12)
!358 = distinct !DISubprogram(name: "listTypeGet", scope: !1, file: !1, line: 126, type: !359, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !361)
!359 = !DISubroutineType(types: !360)
!360 = !{!89, !321}
!361 = !{!362, !363}
!362 = !DILocalVariable(name: "entry", arg: 1, scope: !358, file: !1, line: 126, type: !321)
!363 = !DILocalVariable(name: "value", scope: !358, file: !1, line: 127, type: !89)
!364 = !DILocation(line: 126, column: 34, scope: !358)
!365 = !DILocation(line: 127, column: 11, scope: !358)
!366 = !DILocation(line: 128, column: 16, scope: !367)
!367 = distinct !DILexicalBlock(scope: !358, file: !1, line: 128, column: 9)
!368 = !DILocation(line: 128, column: 20, scope: !367)
!369 = !DILocation(line: 128, column: 29, scope: !367)
!370 = !DILocation(line: 128, column: 9, scope: !358)
!371 = !DILocation(line: 129, column: 26, scope: !372)
!372 = distinct !DILexicalBlock(scope: !373, file: !1, line: 129, column: 13)
!373 = distinct !DILexicalBlock(scope: !367, file: !1, line: 128, column: 56)
!374 = !{!346, !127, i64 32}
!375 = !DILocation(line: 129, column: 13, scope: !372)
!376 = !DILocation(line: 129, column: 13, scope: !373)
!377 = !DILocation(line: 131, column: 53, scope: !378)
!378 = distinct !DILexicalBlock(scope: !372, file: !1, line: 129, column: 33)
!379 = !{!346, !124, i64 48}
!380 = !DILocation(line: 131, column: 40, scope: !378)
!381 = !DILocation(line: 130, column: 21, scope: !378)
!382 = !DILocation(line: 132, column: 9, scope: !378)
!383 = !DILocation(line: 133, column: 65, scope: !384)
!384 = distinct !DILexicalBlock(scope: !372, file: !1, line: 132, column: 16)
!385 = !{!346, !218, i64 40}
!386 = !DILocation(line: 133, column: 21, scope: !384)
!387 = !DILocation(line: 136, column: 9, scope: !388)
!388 = distinct !DILexicalBlock(scope: !367, file: !1, line: 135, column: 12)
!389 = !DILocation(line: 0, scope: !384)
!390 = !DILocation(line: 138, column: 5, scope: !358)
!391 = distinct !DISubprogram(name: "listTypeInsert", scope: !1, file: !1, line: 141, type: !392, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !394)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !321, !89, !36}
!394 = !{!395, !396, !397, !398, !401}
!395 = !DILocalVariable(name: "entry", arg: 1, scope: !391, file: !1, line: 141, type: !321)
!396 = !DILocalVariable(name: "value", arg: 2, scope: !391, file: !1, line: 141, type: !89)
!397 = !DILocalVariable(name: "where", arg: 3, scope: !391, file: !1, line: 141, type: !36)
!398 = !DILocalVariable(name: "str", scope: !399, file: !1, line: 144, type: !135)
!399 = distinct !DILexicalBlock(scope: !400, file: !1, line: 142, column: 56)
!400 = distinct !DILexicalBlock(scope: !391, file: !1, line: 142, column: 9)
!401 = !DILocalVariable(name: "len", scope: !399, file: !1, line: 145, type: !107)
!402 = !DILocation(line: 141, column: 36, scope: !391)
!403 = !DILocation(line: 141, column: 49, scope: !391)
!404 = !DILocation(line: 141, column: 60, scope: !391)
!405 = !DILocation(line: 142, column: 16, scope: !400)
!406 = !DILocation(line: 142, column: 20, scope: !400)
!407 = !DILocation(line: 142, column: 29, scope: !400)
!408 = !DILocation(line: 142, column: 9, scope: !391)
!409 = !DILocation(line: 143, column: 17, scope: !399)
!410 = !DILocation(line: 144, column: 26, scope: !399)
!411 = !DILocation(line: 144, column: 13, scope: !399)
!412 = !DILocation(line: 87, column: 39, scope: !129, inlinedAt: !413)
!413 = distinct !DILocation(line: 145, column: 22, scope: !399)
!414 = !DILocation(line: 88, column: 27, scope: !129, inlinedAt: !413)
!415 = !DILocation(line: 88, column: 19, scope: !129, inlinedAt: !413)
!416 = !DILocation(line: 89, column: 5, scope: !129, inlinedAt: !413)
!417 = !DILocation(line: 91, column: 20, scope: !145, inlinedAt: !413)
!418 = !DILocation(line: 91, column: 13, scope: !145, inlinedAt: !413)
!419 = !DILocation(line: 93, column: 20, scope: !145, inlinedAt: !413)
!420 = !DILocation(line: 93, column: 34, scope: !145, inlinedAt: !413)
!421 = !DILocation(line: 93, column: 13, scope: !145, inlinedAt: !413)
!422 = !DILocation(line: 95, column: 20, scope: !145, inlinedAt: !413)
!423 = !DILocation(line: 95, column: 35, scope: !145, inlinedAt: !413)
!424 = !DILocation(line: 95, column: 13, scope: !145, inlinedAt: !413)
!425 = !DILocation(line: 97, column: 20, scope: !145, inlinedAt: !413)
!426 = !DILocation(line: 97, column: 35, scope: !145, inlinedAt: !413)
!427 = !DILocation(line: 97, column: 13, scope: !145, inlinedAt: !413)
!428 = !DILocation(line: 99, column: 20, scope: !145, inlinedAt: !413)
!429 = !DILocation(line: 99, column: 35, scope: !145, inlinedAt: !413)
!430 = !DILocation(line: 99, column: 13, scope: !145, inlinedAt: !413)
!431 = !DILocation(line: 0, scope: !145, inlinedAt: !413)
!432 = !DILocation(line: 145, column: 16, scope: !399)
!433 = !DILocation(line: 146, column: 13, scope: !399)
!434 = !DILocation(line: 147, column: 54, scope: !435)
!435 = distinct !DILexicalBlock(scope: !436, file: !1, line: 146, column: 33)
!436 = distinct !DILexicalBlock(scope: !399, file: !1, line: 146, column: 13)
!437 = !DILocation(line: 147, column: 60, scope: !435)
!438 = !{!346, !127, i64 8}
!439 = !DILocation(line: 147, column: 13, scope: !435)
!440 = !DILocation(line: 149, column: 9, scope: !435)
!441 = !DILocation(line: 150, column: 55, scope: !442)
!442 = distinct !DILexicalBlock(scope: !443, file: !1, line: 149, column: 40)
!443 = distinct !DILexicalBlock(scope: !436, file: !1, line: 149, column: 20)
!444 = !DILocation(line: 150, column: 61, scope: !442)
!445 = !DILocation(line: 150, column: 13, scope: !442)
!446 = !DILocation(line: 152, column: 9, scope: !442)
!447 = !DILocation(line: 153, column: 9, scope: !399)
!448 = !DILocation(line: 157, column: 1, scope: !391)
!449 = !DILocation(line: 155, column: 9, scope: !450)
!450 = distinct !DILexicalBlock(scope: !400, file: !1, line: 154, column: 12)
!451 = distinct !DISubprogram(name: "listTypeEqual", scope: !1, file: !1, line: 160, type: !452, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !454)
!452 = !DISubroutineType(types: !453)
!453 = !{!36, !321, !89}
!454 = !{!455, !456}
!455 = !DILocalVariable(name: "entry", arg: 1, scope: !451, file: !1, line: 160, type: !321)
!456 = !DILocalVariable(name: "o", arg: 2, scope: !451, file: !1, line: 160, type: !89)
!457 = !DILocation(line: 160, column: 34, scope: !451)
!458 = !DILocation(line: 160, column: 47, scope: !451)
!459 = !DILocation(line: 161, column: 16, scope: !460)
!460 = distinct !DILexicalBlock(scope: !451, file: !1, line: 161, column: 9)
!461 = !DILocation(line: 161, column: 20, scope: !460)
!462 = !DILocation(line: 161, column: 29, scope: !460)
!463 = !DILocation(line: 161, column: 9, scope: !451)
!464 = !DILocation(line: 162, column: 9, scope: !465)
!465 = distinct !DILexicalBlock(scope: !460, file: !1, line: 161, column: 56)
!466 = !DILocation(line: 163, column: 46, scope: !465)
!467 = !{!346, !127, i64 24}
!468 = !DILocation(line: 163, column: 52, scope: !465)
!469 = !DILocation(line: 87, column: 39, scope: !129, inlinedAt: !470)
!470 = distinct !DILocation(line: 163, column: 56, scope: !465)
!471 = !DILocation(line: 88, column: 27, scope: !129, inlinedAt: !470)
!472 = !DILocation(line: 88, column: 19, scope: !129, inlinedAt: !470)
!473 = !DILocation(line: 89, column: 5, scope: !129, inlinedAt: !470)
!474 = !DILocation(line: 91, column: 20, scope: !145, inlinedAt: !470)
!475 = !DILocation(line: 91, column: 13, scope: !145, inlinedAt: !470)
!476 = !DILocation(line: 93, column: 20, scope: !145, inlinedAt: !470)
!477 = !DILocation(line: 93, column: 34, scope: !145, inlinedAt: !470)
!478 = !DILocation(line: 93, column: 13, scope: !145, inlinedAt: !470)
!479 = !DILocation(line: 95, column: 20, scope: !145, inlinedAt: !470)
!480 = !DILocation(line: 95, column: 35, scope: !145, inlinedAt: !470)
!481 = !DILocation(line: 95, column: 13, scope: !145, inlinedAt: !470)
!482 = !DILocation(line: 97, column: 20, scope: !145, inlinedAt: !470)
!483 = !DILocation(line: 97, column: 35, scope: !145, inlinedAt: !470)
!484 = !DILocation(line: 97, column: 13, scope: !145, inlinedAt: !470)
!485 = !DILocation(line: 99, column: 20, scope: !145, inlinedAt: !470)
!486 = !DILocation(line: 99, column: 35, scope: !145, inlinedAt: !470)
!487 = !DILocation(line: 99, column: 13, scope: !145, inlinedAt: !470)
!488 = !DILocation(line: 0, scope: !145, inlinedAt: !470)
!489 = !DILocation(line: 163, column: 56, scope: !465)
!490 = !DILocation(line: 163, column: 16, scope: !465)
!491 = !DILocation(line: 163, column: 9, scope: !465)
!492 = !DILocation(line: 165, column: 9, scope: !493)
!493 = distinct !DILexicalBlock(scope: !460, file: !1, line: 164, column: 12)
!494 = distinct !DISubprogram(name: "listTypeDelete", scope: !1, file: !1, line: 170, type: !495, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !497)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !248, !321}
!497 = !{!498, !499}
!498 = !DILocalVariable(name: "iter", arg: 1, scope: !494, file: !1, line: 170, type: !248)
!499 = !DILocalVariable(name: "entry", arg: 2, scope: !494, file: !1, line: 170, type: !321)
!500 = !DILocation(line: 170, column: 39, scope: !494)
!501 = !DILocation(line: 170, column: 60, scope: !494)
!502 = !DILocation(line: 171, column: 16, scope: !503)
!503 = distinct !DILexicalBlock(scope: !494, file: !1, line: 171, column: 9)
!504 = !DILocation(line: 171, column: 20, scope: !503)
!505 = !DILocation(line: 171, column: 29, scope: !503)
!506 = !DILocation(line: 171, column: 9, scope: !494)
!507 = !DILocation(line: 172, column: 33, scope: !508)
!508 = distinct !DILexicalBlock(scope: !503, file: !1, line: 171, column: 56)
!509 = !DILocation(line: 172, column: 47, scope: !508)
!510 = !DILocation(line: 172, column: 9, scope: !508)
!511 = !DILocation(line: 176, column: 1, scope: !494)
!512 = !DILocation(line: 174, column: 9, scope: !513)
!513 = distinct !DILexicalBlock(scope: !503, file: !1, line: 173, column: 12)
!514 = distinct !DISubprogram(name: "listTypeConvert", scope: !1, file: !1, line: 179, type: !515, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !517)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !89, !36}
!517 = !{!518, !519, !520, !523}
!518 = !DILocalVariable(name: "subject", arg: 1, scope: !514, file: !1, line: 179, type: !89)
!519 = !DILocalVariable(name: "enc", arg: 2, scope: !514, file: !1, line: 179, type: !36)
!520 = !DILocalVariable(name: "zlen", scope: !521, file: !1, line: 184, type: !107)
!521 = distinct !DILexicalBlock(scope: !522, file: !1, line: 183, column: 40)
!522 = distinct !DILexicalBlock(scope: !514, file: !1, line: 183, column: 9)
!523 = !DILocalVariable(name: "depth", scope: !521, file: !1, line: 185, type: !36)
!524 = !DILocation(line: 179, column: 28, scope: !514)
!525 = !DILocation(line: 179, column: 41, scope: !514)
!526 = !DILocation(line: 180, column: 5, scope: !514)
!527 = !DILocation(line: 181, column: 5, scope: !514)
!528 = !DILocation(line: 183, column: 13, scope: !522)
!529 = !DILocation(line: 183, column: 9, scope: !514)
!530 = !DILocation(line: 184, column: 30, scope: !521)
!531 = !{!532, !124, i64 2864}
!532 = !{!"redisServer", !124, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !124, i64 32, !124, i64 36, !124, i64 40, !127, i64 48, !127, i64 56, !127, i64 64, !127, i64 72, !124, i64 80, !124, i64 84, !124, i64 88, !124, i64 92, !127, i64 96, !127, i64 104, !124, i64 112, !124, i64 116, !125, i64 120, !124, i64 164, !162, i64 168, !124, i64 176, !127, i64 184, !127, i64 192, !127, i64 200, !125, i64 208, !124, i64 216, !124, i64 220, !125, i64 224, !124, i64 352, !127, i64 360, !124, i64 368, !125, i64 372, !124, i64 436, !124, i64 440, !125, i64 444, !124, i64 508, !127, i64 512, !127, i64 520, !127, i64 528, !127, i64 536, !127, i64 544, !127, i64 552, !127, i64 560, !124, i64 568, !218, i64 576, !125, i64 584, !127, i64 840, !162, i64 848, !124, i64 856, !124, i64 860, !162, i64 864, !162, i64 872, !162, i64 880, !162, i64 888, !127, i64 896, !127, i64 904, !127, i64 912, !127, i64 920, !127, i64 928, !127, i64 936, !127, i64 944, !127, i64 952, !127, i64 960, !127, i64 968, !127, i64 976, !127, i64 984, !127, i64 992, !162, i64 1000, !218, i64 1008, !218, i64 1016, !218, i64 1024, !533, i64 1032, !218, i64 1040, !218, i64 1048, !218, i64 1056, !218, i64 1064, !218, i64 1072, !218, i64 1080, !218, i64 1088, !218, i64 1096, !218, i64 1104, !162, i64 1112, !218, i64 1120, !533, i64 1128, !218, i64 1136, !218, i64 1144, !218, i64 1152, !218, i64 1160, !127, i64 1168, !218, i64 1176, !218, i64 1184, !162, i64 1192, !534, i64 1200, !218, i64 1240, !218, i64 1248, !162, i64 1256, !162, i64 1264, !125, i64 1272, !124, i64 1728, !124, i64 1732, !124, i64 1736, !124, i64 1740, !124, i64 1744, !162, i64 1752, !124, i64 1760, !124, i64 1764, !124, i64 1768, !124, i64 1772, !162, i64 1776, !162, i64 1784, !124, i64 1792, !124, i64 1796, !124, i64 1800, !124, i64 1804, !125, i64 1808, !124, i64 1880, !124, i64 1884, !127, i64 1888, !124, i64 1896, !124, i64 1900, !162, i64 1904, !162, i64 1912, !162, i64 1920, !162, i64 1928, !124, i64 1936, !124, i64 1940, !127, i64 1944, !127, i64 1952, !124, i64 1960, !124, i64 1964, !162, i64 1968, !162, i64 1976, !162, i64 1984, !162, i64 1992, !124, i64 2000, !162, i64 2008, !124, i64 2016, !124, i64 2020, !124, i64 2024, !124, i64 2028, !124, i64 2032, !124, i64 2036, !124, i64 2040, !124, i64 2044, !124, i64 2048, !124, i64 2052, !124, i64 2056, !124, i64 2060, !124, i64 2064, !127, i64 2072, !218, i64 2080, !218, i64 2088, !124, i64 2096, !127, i64 2104, !124, i64 2112, !127, i64 2120, !124, i64 2128, !124, i64 2132, !162, i64 2136, !162, i64 2144, !162, i64 2152, !162, i64 2160, !124, i64 2168, !124, i64 2172, !124, i64 2176, !124, i64 2180, !124, i64 2184, !124, i64 2188, !125, i64 2192, !535, i64 2200, !536, i64 2224, !127, i64 2240, !124, i64 2248, !127, i64 2256, !124, i64 2264, !125, i64 2268, !125, i64 2309, !218, i64 2352, !218, i64 2360, !124, i64 2368, !124, i64 2372, !127, i64 2376, !218, i64 2384, !218, i64 2392, !218, i64 2400, !218, i64 2408, !162, i64 2416, !162, i64 2424, !124, i64 2432, !124, i64 2436, !124, i64 2440, !124, i64 2444, !124, i64 2448, !127, i64 2456, !127, i64 2464, !124, i64 2472, !124, i64 2476, !127, i64 2480, !127, i64 2488, !124, i64 2496, !124, i64 2500, !162, i64 2504, !162, i64 2512, !162, i64 2520, !124, i64 2528, !124, i64 2532, !127, i64 2536, !162, i64 2544, !124, i64 2552, !124, i64 2556, !124, i64 2560, !162, i64 2568, !124, i64 2576, !124, i64 2580, !124, i64 2584, !127, i64 2592, !125, i64 2600, !218, i64 2648, !124, i64 2656, !127, i64 2664, !127, i64 2672, !124, i64 2680, !127, i64 2688, !124, i64 2696, !124, i64 2700, !218, i64 2704, !124, i64 2712, !124, i64 2716, !124, i64 2720, !124, i64 2724, !218, i64 2728, !124, i64 2736, !125, i64 2740, !127, i64 2768, !127, i64 2776, !124, i64 2784, !124, i64 2788, !124, i64 2792, !124, i64 2796, !162, i64 2800, !162, i64 2808, !162, i64 2816, !162, i64 2824, !162, i64 2832, !162, i64 2840, !162, i64 2848, !162, i64 2856, !124, i64 2864, !124, i64 2868, !162, i64 2872, !162, i64 2880, !124, i64 2888, !218, i64 2896, !127, i64 2904, !127, i64 2912, !124, i64 2920, !124, i64 2924, !218, i64 2928, !127, i64 2936, !127, i64 2944, !124, i64 2952, !124, i64 2956, !124, i64 2960, !124, i64 2964, !127, i64 2968, !124, i64 2976, !124, i64 2980, !124, i64 2984, !127, i64 2992, !127, i64 3000, !127, i64 3008, !127, i64 3016, !218, i64 3024, !218, i64 3032, !218, i64 3040, !124, i64 3048, !124, i64 3052, !124, i64 3056, !124, i64 3060, !124, i64 3064, !124, i64 3068, !124, i64 3072, !124, i64 3076, !124, i64 3080, !124, i64 3084, !124, i64 3088, !218, i64 3096, !127, i64 3104, !127, i64 3112, !127, i64 3120, !124, i64 3128, !124, i64 3132, !124, i64 3136, !162, i64 3144, !127, i64 3152, !127, i64 3160, !127, i64 3168}
!533 = !{!"double", !125, i64 0}
!534 = !{!"malloc_stats", !162, i64 0, !162, i64 8, !162, i64 16, !162, i64 24, !162, i64 32}
!535 = !{!"", !124, i64 0, !162, i64 8, !218, i64 16}
!536 = !{!"redisOpArray", !127, i64 0, !124, i64 8}
!537 = !DILocation(line: 185, column: 28, scope: !521)
!538 = !{!532, !124, i64 2868}
!539 = !DILocation(line: 185, column: 13, scope: !521)
!540 = !DILocation(line: 186, column: 73, scope: !521)
!541 = !DILocation(line: 186, column: 24, scope: !521)
!542 = !DILocation(line: 186, column: 22, scope: !521)
!543 = !DILocation(line: 187, column: 27, scope: !521)
!544 = !DILocation(line: 191, column: 1, scope: !514)
!545 = !DILocation(line: 189, column: 9, scope: !546)
!546 = distinct !DILexicalBlock(scope: !522, file: !1, line: 188, column: 12)
!547 = distinct !DISubprogram(name: "pushGenericCommand", scope: !1, file: !1, line: 197, type: !548, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !776)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !550, !36}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !91, line: 780, baseType: !552)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !91, line: 723, size: 135360, elements: !553)
!553 = !{!554, !555, !556, !659, !660, !661, !662, !663, !664, !665, !667, !691, !692, !693, !694, !695, !696, !698, !699, !702, !703, !704, !705, !706, !707, !708, !709, !714, !715, !716, !717, !718, !719, !720, !721, !725, !726, !730, !731, !747, !748, !765, !766, !767, !768, !769, !770, !771, !772}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !552, file: !91, line: 724, baseType: !77, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !552, file: !91, line: 725, baseType: !36, size: 32, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !552, file: !91, line: 726, baseType: !557, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !91, line: 656, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !91, line: 647, size: 512, elements: !560)
!560 = !{!561, !624, !625, !626, !627, !628, !629, !630}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !559, file: !91, line: 648, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !564, line: 82, baseType: !565)
!564 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !564, line: 76, size: 768, elements: !566)
!566 = !{!567, !592, !593, !622, !623}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !565, file: !564, line: 77, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !564, line: 65, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !564, line: 58, size: 384, elements: !571)
!571 = !{!572, !578, !582, !583, !587, !591}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !570, file: !564, line: 59, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!77, !576}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !570, file: !564, line: 60, baseType: !579, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!38, !38, !576}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !570, file: !564, line: 61, baseType: !579, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !570, file: !564, line: 62, baseType: !584, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!36, !38, !576, !576}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !570, file: !564, line: 63, baseType: !588, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !38, !38}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !570, file: !564, line: 64, baseType: !588, size: 64, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !565, file: !564, line: 78, baseType: !38, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !565, file: !564, line: 79, baseType: !594, size: 512, offset: 128)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, size: 512, elements: !620)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !564, line: 74, baseType: !596)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !564, line: 69, size: 256, elements: !597)
!597 = !{!598, !617, !618, !619}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !596, file: !564, line: 70, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !564, line: 56, baseType: !602)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !564, line: 47, size: 192, elements: !603)
!603 = !{!604, !605, !615}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !602, file: !564, line: 48, baseType: !38, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !602, file: !564, line: 54, baseType: !606, size: 64, offset: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !602, file: !564, line: 49, size: 64, elements: !607)
!607 = !{!608, !609, !610, !613}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !606, file: !564, line: 50, baseType: !38, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !606, file: !564, line: 51, baseType: !77, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !606, file: !564, line: 52, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !45, line: 56, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !47, line: 103, baseType: !266)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !606, file: !564, line: 53, baseType: !614, size: 64)
!614 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !602, file: !564, line: 55, baseType: !616, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !596, file: !564, line: 71, baseType: !33, size: 64, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !596, file: !564, line: 72, baseType: !33, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !596, file: !564, line: 73, baseType: !33, size: 64, offset: 192)
!620 = !{!621}
!621 = !DISubrange(count: 2)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !565, file: !564, line: 80, baseType: !266, size: 64, offset: 640)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !565, file: !564, line: 81, baseType: !33, size: 64, offset: 704)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !559, file: !91, line: 649, baseType: !562, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !559, file: !91, line: 650, baseType: !562, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !559, file: !91, line: 651, baseType: !562, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !559, file: !91, line: 652, baseType: !562, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !559, file: !91, line: 653, baseType: !36, size: 32, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !559, file: !91, line: 654, baseType: !190, size: 64, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !559, file: !91, line: 655, baseType: !631, size: 64, offset: 448)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !633, line: 54, baseType: !634)
!633 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !633, line: 47, size: 384, elements: !635)
!635 = !{!636, !645, !646, !650, !654, !658}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !634, file: !633, line: 48, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !633, line: 40, baseType: !639)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !633, line: 36, size: 192, elements: !640)
!640 = !{!641, !643, !644}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !639, file: !633, line: 37, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !639, file: !633, line: 38, baseType: !642, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !639, file: !633, line: 39, baseType: !38, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !634, file: !633, line: 49, baseType: !637, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !634, file: !633, line: 50, baseType: !647, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!38, !38}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !634, file: !633, line: 51, baseType: !651, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !38}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !634, file: !633, line: 52, baseType: !655, size: 64, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!36, !38, !38}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !634, file: !633, line: 53, baseType: !33, size: 64, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !552, file: !91, line: 727, baseType: !89, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !552, file: !91, line: 728, baseType: !135, size: 64, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !552, file: !91, line: 729, baseType: !107, size: 64, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !552, file: !91, line: 730, baseType: !135, size: 64, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !552, file: !91, line: 734, baseType: !107, size: 64, offset: 448)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !552, file: !91, line: 735, baseType: !36, size: 32, offset: 512)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !552, file: !91, line: 736, baseType: !666, size: 64, offset: 576)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !552, file: !91, line: 737, baseType: !668, size: 64, offset: 640)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !91, line: 1307, size: 640, elements: !670)
!670 = !{!671, !672, !677, !678, !679, !680, !686, !687, !688, !689, !690}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !669, file: !91, line: 1308, baseType: !4, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !669, file: !91, line: 1309, baseType: !673, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !91, line: 1305, baseType: !675)
!675 = !DISubroutineType(types: !676)
!676 = !{null, !550}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !669, file: !91, line: 1310, baseType: !36, size: 32, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !669, file: !91, line: 1311, baseType: !4, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !669, file: !91, line: 1312, baseType: !36, size: 32, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !669, file: !91, line: 1315, baseType: !681, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !91, line: 1306, baseType: !683)
!683 = !DISubroutineType(types: !684)
!684 = !{!685, !668, !666, !36, !685}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !669, file: !91, line: 1317, baseType: !36, size: 32, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !669, file: !91, line: 1318, baseType: !36, size: 32, offset: 416)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !669, file: !91, line: 1319, baseType: !36, size: 32, offset: 448)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !669, file: !91, line: 1320, baseType: !190, size: 64, offset: 512)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !669, file: !91, line: 1320, baseType: !190, size: 64, offset: 576)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !552, file: !91, line: 737, baseType: !668, size: 64, offset: 704)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !552, file: !91, line: 738, baseType: !36, size: 32, offset: 768)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !552, file: !91, line: 739, baseType: !36, size: 32, offset: 800)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !552, file: !91, line: 740, baseType: !266, size: 64, offset: 832)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !552, file: !91, line: 741, baseType: !631, size: 64, offset: 896)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !552, file: !91, line: 742, baseType: !697, size: 64, offset: 960)
!697 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !552, file: !91, line: 743, baseType: !107, size: 64, offset: 1024)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !552, file: !91, line: 745, baseType: !700, size: 64, offset: 1088)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !701, line: 34, baseType: !266)
!701 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!702 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !552, file: !91, line: 746, baseType: !700, size: 64, offset: 1152)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !552, file: !91, line: 747, baseType: !700, size: 64, offset: 1216)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !552, file: !91, line: 748, baseType: !36, size: 32, offset: 1280)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !552, file: !91, line: 749, baseType: !36, size: 32, offset: 1312)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !552, file: !91, line: 750, baseType: !36, size: 32, offset: 1344)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !552, file: !91, line: 751, baseType: !36, size: 32, offset: 1376)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !552, file: !91, line: 752, baseType: !36, size: 32, offset: 1408)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !552, file: !91, line: 753, baseType: !710, size: 64, offset: 1472)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !711, line: 173, baseType: !712)
!711 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !110, line: 100, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !110, line: 44, baseType: !266)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !552, file: !91, line: 754, baseType: !710, size: 64, offset: 1536)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !552, file: !91, line: 755, baseType: !135, size: 64, offset: 1600)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !552, file: !91, line: 756, baseType: !190, size: 64, offset: 1664)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !552, file: !91, line: 757, baseType: !190, size: 64, offset: 1728)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !552, file: !91, line: 758, baseType: !190, size: 64, offset: 1792)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !552, file: !91, line: 759, baseType: !190, size: 64, offset: 1856)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !552, file: !91, line: 760, baseType: !190, size: 64, offset: 1920)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !552, file: !91, line: 763, baseType: !722, size: 328, offset: 1984)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 328, elements: !723)
!723 = !{!724}
!724 = !DISubrange(count: 41)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !552, file: !91, line: 764, baseType: !36, size: 32, offset: 2336)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !552, file: !91, line: 765, baseType: !727, size: 368, offset: 2368)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 368, elements: !728)
!728 = !{!729}
!729 = !DISubrange(count: 46)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !552, file: !91, line: 766, baseType: !36, size: 32, offset: 2752)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !552, file: !91, line: 767, baseType: !732, size: 256, offset: 2816)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !91, line: 673, baseType: !733)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !91, line: 665, size: 256, elements: !734)
!734 = !{!735, !743, !744, !745, !746}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !733, file: !91, line: 666, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !91, line: 663, baseType: !738)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !91, line: 659, size: 192, elements: !739)
!739 = !{!740, !741, !742}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !738, file: !91, line: 660, baseType: !666, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !738, file: !91, line: 661, baseType: !36, size: 32, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !738, file: !91, line: 662, baseType: !668, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !733, file: !91, line: 667, baseType: !36, size: 32, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !733, file: !91, line: 668, baseType: !36, size: 32, offset: 96)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !733, file: !91, line: 671, baseType: !36, size: 32, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !733, file: !91, line: 672, baseType: !700, size: 64, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !552, file: !91, line: 768, baseType: !36, size: 32, offset: 3072)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !552, file: !91, line: 769, baseType: !749, size: 704, offset: 3136)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !91, line: 703, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !91, line: 677, size: 704, elements: !751)
!751 = !{!752, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !750, file: !91, line: 679, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !91, line: 52, baseType: !190)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !750, file: !91, line: 683, baseType: !562, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !750, file: !91, line: 685, baseType: !89, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !750, file: !91, line: 689, baseType: !107, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !750, file: !91, line: 690, baseType: !89, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !750, file: !91, line: 691, baseType: !89, size: 64, offset: 320)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !750, file: !91, line: 692, baseType: !753, size: 64, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !750, file: !91, line: 692, baseType: !753, size: 64, offset: 448)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !750, file: !91, line: 693, baseType: !36, size: 32, offset: 512)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !750, file: !91, line: 696, baseType: !36, size: 32, offset: 544)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !750, file: !91, line: 697, baseType: !190, size: 64, offset: 576)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !750, file: !91, line: 700, baseType: !38, size: 64, offset: 640)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !552, file: !91, line: 770, baseType: !190, size: 64, offset: 3840)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !552, file: !91, line: 771, baseType: !631, size: 64, offset: 3904)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !552, file: !91, line: 772, baseType: !562, size: 64, offset: 3968)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !552, file: !91, line: 773, baseType: !631, size: 64, offset: 4032)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !552, file: !91, line: 774, baseType: !135, size: 64, offset: 4096)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !552, file: !91, line: 775, baseType: !637, size: 64, offset: 4160)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !552, file: !91, line: 778, baseType: !36, size: 32, offset: 4224)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !552, file: !91, line: 779, baseType: !773, size: 131072, offset: 4256)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 131072, elements: !774)
!774 = !{!775}
!775 = !DISubrange(count: 16384)
!776 = !{!777, !778, !779, !780, !781, !782}
!777 = !DILocalVariable(name: "c", arg: 1, scope: !547, file: !1, line: 197, type: !550)
!778 = !DILocalVariable(name: "where", arg: 2, scope: !547, file: !1, line: 197, type: !36)
!779 = !DILocalVariable(name: "j", scope: !547, file: !1, line: 198, type: !36)
!780 = !DILocalVariable(name: "pushed", scope: !547, file: !1, line: 198, type: !36)
!781 = !DILocalVariable(name: "lobj", scope: !547, file: !1, line: 199, type: !89)
!782 = !DILocalVariable(name: "event", scope: !783, file: !1, line: 218, type: !4)
!783 = distinct !DILexicalBlock(scope: !784, file: !1, line: 217, column: 17)
!784 = distinct !DILexicalBlock(scope: !547, file: !1, line: 217, column: 9)
!785 = !DILocation(line: 197, column: 33, scope: !547)
!786 = !DILocation(line: 197, column: 40, scope: !547)
!787 = !DILocation(line: 198, column: 12, scope: !547)
!788 = !DILocation(line: 199, column: 36, scope: !547)
!789 = !{!790, !127, i64 16}
!790 = !{!"client", !162, i64 0, !124, i64 8, !127, i64 16, !127, i64 24, !127, i64 32, !162, i64 40, !127, i64 48, !162, i64 56, !124, i64 64, !127, i64 72, !127, i64 80, !127, i64 88, !124, i64 96, !124, i64 100, !162, i64 104, !127, i64 112, !218, i64 120, !162, i64 128, !162, i64 136, !162, i64 144, !162, i64 152, !124, i64 160, !124, i64 164, !124, i64 168, !124, i64 172, !124, i64 176, !162, i64 184, !162, i64 192, !127, i64 200, !218, i64 208, !218, i64 216, !218, i64 224, !218, i64 232, !218, i64 240, !125, i64 248, !124, i64 292, !125, i64 296, !124, i64 344, !791, i64 352, !124, i64 384, !792, i64 392, !218, i64 480, !127, i64 488, !127, i64 496, !127, i64 504, !127, i64 512, !127, i64 520, !124, i64 528, !125, i64 532}
!791 = !{!"multiState", !127, i64 0, !124, i64 8, !124, i64 12, !124, i64 16, !162, i64 24}
!792 = !{!"blockingState", !218, i64 0, !127, i64 8, !127, i64 16, !162, i64 24, !127, i64 32, !127, i64 40, !218, i64 48, !218, i64 56, !124, i64 64, !124, i64 68, !218, i64 72, !127, i64 80}
!793 = !DILocation(line: 199, column: 42, scope: !547)
!794 = !{!790, !127, i64 72}
!795 = !DILocation(line: 199, column: 39, scope: !547)
!796 = !DILocation(line: 199, column: 18, scope: !547)
!797 = !DILocation(line: 199, column: 11, scope: !547)
!798 = !DILocation(line: 201, column: 9, scope: !799)
!799 = distinct !DILexicalBlock(scope: !547, file: !1, line: 201, column: 9)
!800 = !DILocation(line: 201, column: 14, scope: !799)
!801 = !DILocation(line: 201, column: 23, scope: !799)
!802 = !DILocation(line: 201, column: 28, scope: !799)
!803 = !DILocation(line: 201, column: 9, scope: !547)
!804 = !DILocation(line: 202, column: 27, scope: !805)
!805 = distinct !DILexicalBlock(scope: !799, file: !1, line: 201, column: 41)
!806 = !{!807, !127, i64 112}
!807 = !{!"sharedObjectsStruct", !127, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !127, i64 32, !127, i64 40, !127, i64 48, !127, i64 56, !127, i64 64, !127, i64 72, !127, i64 80, !127, i64 88, !127, i64 96, !127, i64 104, !127, i64 112, !127, i64 120, !127, i64 128, !127, i64 136, !127, i64 144, !127, i64 152, !127, i64 160, !127, i64 168, !127, i64 176, !127, i64 184, !127, i64 192, !127, i64 200, !127, i64 208, !127, i64 216, !127, i64 224, !127, i64 232, !127, i64 240, !127, i64 248, !127, i64 256, !127, i64 264, !127, i64 272, !127, i64 280, !127, i64 288, !127, i64 296, !127, i64 304, !127, i64 312, !127, i64 320, !127, i64 328, !127, i64 336, !127, i64 344, !127, i64 352, !127, i64 360, !125, i64 368, !125, i64 448, !125, i64 80448, !125, i64 80704, !127, i64 80960, !127, i64 80968}
!808 = !DILocation(line: 202, column: 9, scope: !805)
!809 = !DILocation(line: 203, column: 9, scope: !805)
!810 = !DILocation(line: 198, column: 9, scope: !547)
!811 = !DILocation(line: 206, column: 24, scope: !812)
!812 = distinct !DILexicalBlock(scope: !813, file: !1, line: 206, column: 5)
!813 = distinct !DILexicalBlock(scope: !547, file: !1, line: 206, column: 5)
!814 = !{!790, !124, i64 64}
!815 = !DILocation(line: 206, column: 19, scope: !812)
!816 = !DILocation(line: 206, column: 5, scope: !813)
!817 = !DILocation(line: 207, column: 13, scope: !818)
!818 = distinct !DILexicalBlock(scope: !812, file: !1, line: 206, column: 35)
!819 = !DILocation(line: 208, column: 20, scope: !820)
!820 = distinct !DILexicalBlock(scope: !821, file: !1, line: 207, column: 20)
!821 = distinct !DILexicalBlock(scope: !818, file: !1, line: 207, column: 13)
!822 = !DILocation(line: 209, column: 39, scope: !820)
!823 = !DILocation(line: 209, column: 51, scope: !820)
!824 = !DILocation(line: 210, column: 40, scope: !820)
!825 = !DILocation(line: 209, column: 13, scope: !820)
!826 = !DILocation(line: 211, column: 22, scope: !820)
!827 = !DILocation(line: 211, column: 28, scope: !820)
!828 = !DILocation(line: 211, column: 25, scope: !820)
!829 = !DILocation(line: 211, column: 13, scope: !820)
!830 = !DILocation(line: 212, column: 9, scope: !820)
!831 = !DILocation(line: 0, scope: !820)
!832 = !DILocation(line: 213, column: 30, scope: !818)
!833 = !DILocation(line: 213, column: 27, scope: !818)
!834 = !DILocation(line: 213, column: 9, scope: !818)
!835 = !DILocation(line: 214, column: 15, scope: !818)
!836 = !DILocation(line: 206, column: 31, scope: !812)
!837 = !DILocation(line: 0, scope: !547)
!838 = distinct !{!838, !816, !839}
!839 = !DILocation(line: 215, column: 5, scope: !813)
!840 = !DILocation(line: 0, scope: !818)
!841 = !DILocation(line: 216, column: 26, scope: !547)
!842 = !DILocation(line: 74, column: 42, scope: !227, inlinedAt: !843)
!843 = distinct !DILocation(line: 216, column: 33, scope: !547)
!844 = !DILocation(line: 75, column: 18, scope: !236, inlinedAt: !843)
!845 = !DILocation(line: 75, column: 27, scope: !236, inlinedAt: !843)
!846 = !DILocation(line: 75, column: 9, scope: !227, inlinedAt: !843)
!847 = !DILocation(line: 78, column: 9, scope: !244, inlinedAt: !843)
!848 = !DILocation(line: 76, column: 40, scope: !240, inlinedAt: !843)
!849 = !DILocation(line: 76, column: 16, scope: !240, inlinedAt: !843)
!850 = !DILocation(line: 216, column: 5, scope: !547)
!851 = !DILocation(line: 217, column: 9, scope: !784)
!852 = !DILocation(line: 217, column: 9, scope: !547)
!853 = !DILocation(line: 218, column: 30, scope: !783)
!854 = !DILocation(line: 218, column: 23, scope: !783)
!855 = !DILocation(line: 218, column: 15, scope: !783)
!856 = !DILocation(line: 220, column: 30, scope: !783)
!857 = !DILocation(line: 220, column: 36, scope: !783)
!858 = !DILocation(line: 220, column: 33, scope: !783)
!859 = !DILocation(line: 220, column: 9, scope: !783)
!860 = !DILocation(line: 221, column: 50, scope: !783)
!861 = !DILocation(line: 221, column: 47, scope: !783)
!862 = !DILocation(line: 221, column: 61, scope: !783)
!863 = !DILocation(line: 221, column: 65, scope: !783)
!864 = !{!865, !124, i64 40}
!865 = !{!"redisDb", !127, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !127, i64 32, !124, i64 40, !218, i64 48, !127, i64 56}
!866 = !DILocation(line: 221, column: 9, scope: !783)
!867 = !DILocation(line: 222, column: 5, scope: !783)
!868 = !DILocation(line: 223, column: 21, scope: !547)
!869 = !DILocation(line: 223, column: 18, scope: !547)
!870 = !{!532, !218, i64 2080}
!871 = !DILocation(line: 224, column: 1, scope: !547)
!872 = distinct !DISubprogram(name: "lpushCommand", scope: !1, file: !1, line: 226, type: !675, isLocal: false, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !873)
!873 = !{!874}
!874 = !DILocalVariable(name: "c", arg: 1, scope: !872, file: !1, line: 226, type: !550)
!875 = !DILocation(line: 226, column: 27, scope: !872)
!876 = !DILocation(line: 227, column: 5, scope: !872)
!877 = !DILocation(line: 228, column: 1, scope: !872)
!878 = distinct !DISubprogram(name: "rpushCommand", scope: !1, file: !1, line: 230, type: !675, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !879)
!879 = !{!880}
!880 = !DILocalVariable(name: "c", arg: 1, scope: !878, file: !1, line: 230, type: !550)
!881 = !DILocation(line: 230, column: 27, scope: !878)
!882 = !DILocation(line: 231, column: 5, scope: !878)
!883 = !DILocation(line: 232, column: 1, scope: !878)
!884 = distinct !DISubprogram(name: "pushxGenericCommand", scope: !1, file: !1, line: 234, type: !548, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !885)
!885 = !{!886, !887, !888, !889, !890, !891}
!886 = !DILocalVariable(name: "c", arg: 1, scope: !884, file: !1, line: 234, type: !550)
!887 = !DILocalVariable(name: "where", arg: 2, scope: !884, file: !1, line: 234, type: !36)
!888 = !DILocalVariable(name: "j", scope: !884, file: !1, line: 235, type: !36)
!889 = !DILocalVariable(name: "pushed", scope: !884, file: !1, line: 235, type: !36)
!890 = !DILocalVariable(name: "subject", scope: !884, file: !1, line: 236, type: !89)
!891 = !DILocalVariable(name: "event", scope: !892, file: !1, line: 249, type: !4)
!892 = distinct !DILexicalBlock(scope: !893, file: !1, line: 248, column: 17)
!893 = distinct !DILexicalBlock(scope: !884, file: !1, line: 248, column: 9)
!894 = !DILocation(line: 234, column: 34, scope: !884)
!895 = !DILocation(line: 234, column: 41, scope: !884)
!896 = !DILocation(line: 235, column: 12, scope: !884)
!897 = !DILocation(line: 238, column: 47, scope: !898)
!898 = distinct !DILexicalBlock(scope: !884, file: !1, line: 238, column: 9)
!899 = !DILocation(line: 238, column: 44, scope: !898)
!900 = !DILocation(line: 238, column: 62, scope: !898)
!901 = !{!807, !127, i64 32}
!902 = !DILocation(line: 238, column: 20, scope: !898)
!903 = !DILocation(line: 236, column: 11, scope: !884)
!904 = !DILocation(line: 238, column: 70, scope: !898)
!905 = !DILocation(line: 238, column: 78, scope: !898)
!906 = !DILocation(line: 239, column: 9, scope: !898)
!907 = !DILocation(line: 238, column: 9, scope: !884)
!908 = !DILocation(line: 235, column: 9, scope: !884)
!909 = !DILocation(line: 241, column: 24, scope: !910)
!910 = distinct !DILexicalBlock(scope: !911, file: !1, line: 241, column: 5)
!911 = distinct !DILexicalBlock(scope: !884, file: !1, line: 241, column: 5)
!912 = !DILocation(line: 241, column: 19, scope: !910)
!913 = !DILocation(line: 241, column: 5, scope: !911)
!914 = !DILocation(line: 242, column: 33, scope: !915)
!915 = distinct !DILexicalBlock(scope: !910, file: !1, line: 241, column: 35)
!916 = !DILocation(line: 242, column: 30, scope: !915)
!917 = !DILocation(line: 242, column: 9, scope: !915)
!918 = !DILocation(line: 243, column: 15, scope: !915)
!919 = !DILocation(line: 241, column: 31, scope: !910)
!920 = distinct !{!920, !913, !921}
!921 = !DILocation(line: 244, column: 5, scope: !911)
!922 = !DILocation(line: 0, scope: !915)
!923 = !DILocation(line: 74, column: 42, scope: !227, inlinedAt: !924)
!924 = distinct !DILocation(line: 246, column: 24, scope: !884)
!925 = !DILocation(line: 75, column: 18, scope: !236, inlinedAt: !924)
!926 = !DILocation(line: 75, column: 27, scope: !236, inlinedAt: !924)
!927 = !DILocation(line: 75, column: 9, scope: !227, inlinedAt: !924)
!928 = !DILocation(line: 78, column: 9, scope: !244, inlinedAt: !924)
!929 = !DILocation(line: 76, column: 40, scope: !240, inlinedAt: !924)
!930 = !DILocation(line: 76, column: 16, scope: !240, inlinedAt: !924)
!931 = !DILocation(line: 246, column: 5, scope: !884)
!932 = !DILocation(line: 248, column: 9, scope: !893)
!933 = !DILocation(line: 248, column: 9, scope: !884)
!934 = !DILocation(line: 249, column: 30, scope: !892)
!935 = !DILocation(line: 249, column: 23, scope: !892)
!936 = !DILocation(line: 249, column: 15, scope: !892)
!937 = !DILocation(line: 250, column: 30, scope: !892)
!938 = !DILocation(line: 250, column: 36, scope: !892)
!939 = !DILocation(line: 250, column: 33, scope: !892)
!940 = !DILocation(line: 250, column: 9, scope: !892)
!941 = !DILocation(line: 251, column: 50, scope: !892)
!942 = !DILocation(line: 251, column: 47, scope: !892)
!943 = !DILocation(line: 251, column: 61, scope: !892)
!944 = !DILocation(line: 251, column: 65, scope: !892)
!945 = !DILocation(line: 251, column: 9, scope: !892)
!946 = !DILocation(line: 252, column: 5, scope: !892)
!947 = !DILocation(line: 253, column: 21, scope: !884)
!948 = !DILocation(line: 253, column: 18, scope: !884)
!949 = !DILocation(line: 254, column: 1, scope: !884)
!950 = distinct !DISubprogram(name: "lpushxCommand", scope: !1, file: !1, line: 256, type: !675, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !951)
!951 = !{!952}
!952 = !DILocalVariable(name: "c", arg: 1, scope: !950, file: !1, line: 256, type: !550)
!953 = !DILocation(line: 256, column: 28, scope: !950)
!954 = !DILocation(line: 257, column: 5, scope: !950)
!955 = !DILocation(line: 258, column: 1, scope: !950)
!956 = distinct !DISubprogram(name: "rpushxCommand", scope: !1, file: !1, line: 260, type: !675, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !957)
!957 = !{!958}
!958 = !DILocalVariable(name: "c", arg: 1, scope: !956, file: !1, line: 260, type: !550)
!959 = !DILocation(line: 260, column: 28, scope: !956)
!960 = !DILocation(line: 261, column: 5, scope: !956)
!961 = !DILocation(line: 262, column: 1, scope: !956)
!962 = distinct !DISubprogram(name: "linsertCommand", scope: !1, file: !1, line: 264, type: !675, isLocal: false, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !963)
!963 = !{!964, !965, !966, !967, !968, !969}
!964 = !DILocalVariable(name: "c", arg: 1, scope: !962, file: !1, line: 264, type: !550)
!965 = !DILocalVariable(name: "where", scope: !962, file: !1, line: 265, type: !36)
!966 = !DILocalVariable(name: "subject", scope: !962, file: !1, line: 266, type: !89)
!967 = !DILocalVariable(name: "iter", scope: !962, file: !1, line: 267, type: !248)
!968 = !DILocalVariable(name: "entry", scope: !962, file: !1, line: 268, type: !322)
!969 = !DILocalVariable(name: "inserted", scope: !962, file: !1, line: 269, type: !36)
!970 = !DILocation(line: 264, column: 29, scope: !962)
!971 = !DILocation(line: 268, column: 5, scope: !962)
!972 = !DILocation(line: 269, column: 9, scope: !962)
!973 = !DILocation(line: 271, column: 23, scope: !974)
!974 = distinct !DILexicalBlock(scope: !962, file: !1, line: 271, column: 9)
!975 = !DILocation(line: 271, column: 20, scope: !974)
!976 = !DILocation(line: 271, column: 32, scope: !974)
!977 = !DILocation(line: 271, column: 9, scope: !974)
!978 = !DILocation(line: 271, column: 45, scope: !974)
!979 = !DILocation(line: 271, column: 9, scope: !962)
!980 = !DILocation(line: 273, column: 16, scope: !981)
!981 = distinct !DILexicalBlock(scope: !974, file: !1, line: 273, column: 16)
!982 = !DILocation(line: 273, column: 53, scope: !981)
!983 = !DILocation(line: 273, column: 16, scope: !974)
!984 = !DILocation(line: 276, column: 27, scope: !985)
!985 = distinct !DILexicalBlock(scope: !981, file: !1, line: 275, column: 12)
!986 = !{!807, !127, i64 128}
!987 = !DILocation(line: 276, column: 9, scope: !985)
!988 = !DILocation(line: 277, column: 9, scope: !985)
!989 = !DILocation(line: 0, scope: !990)
!990 = distinct !DILexicalBlock(scope: !981, file: !1, line: 273, column: 59)
!991 = !DILocation(line: 265, column: 9, scope: !962)
!992 = !DILocation(line: 280, column: 44, scope: !993)
!993 = distinct !DILexicalBlock(scope: !962, file: !1, line: 280, column: 9)
!994 = !DILocation(line: 280, column: 62, scope: !993)
!995 = !DILocation(line: 280, column: 20, scope: !993)
!996 = !DILocation(line: 266, column: 11, scope: !962)
!997 = !DILocation(line: 280, column: 70, scope: !993)
!998 = !DILocation(line: 280, column: 78, scope: !993)
!999 = !DILocation(line: 281, column: 9, scope: !993)
!1000 = !DILocation(line: 280, column: 9, scope: !962)
!1001 = !DILocation(line: 83, column: 46, scope: !245, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 284, column: 12, scope: !962)
!1003 = !DILocation(line: 83, column: 60, scope: !245, inlinedAt: !1002)
!1004 = !DILocation(line: 84, column: 54, scope: !245, inlinedAt: !1002)
!1005 = !DILocation(line: 85, column: 28, scope: !245, inlinedAt: !1002)
!1006 = !DILocation(line: 86, column: 9, scope: !245, inlinedAt: !1002)
!1007 = !DILocation(line: 86, column: 17, scope: !245, inlinedAt: !1002)
!1008 = !DILocation(line: 87, column: 29, scope: !245, inlinedAt: !1002)
!1009 = !DILocation(line: 87, column: 20, scope: !245, inlinedAt: !1002)
!1010 = !DILocation(line: 87, column: 9, scope: !245, inlinedAt: !1002)
!1011 = !DILocation(line: 87, column: 18, scope: !245, inlinedAt: !1002)
!1012 = !DILocation(line: 88, column: 9, scope: !245, inlinedAt: !1002)
!1013 = !DILocation(line: 88, column: 19, scope: !245, inlinedAt: !1002)
!1014 = !DILocation(line: 89, column: 9, scope: !245, inlinedAt: !1002)
!1015 = !DILocation(line: 89, column: 14, scope: !245, inlinedAt: !1002)
!1016 = !DILocation(line: 94, column: 22, scope: !294, inlinedAt: !1002)
!1017 = !DILocation(line: 94, column: 9, scope: !245, inlinedAt: !1002)
!1018 = !DILocation(line: 98, column: 9, scope: !306, inlinedAt: !1002)
!1019 = !DILocation(line: 92, column: 9, scope: !245, inlinedAt: !1002)
!1020 = !DILocation(line: 85, column: 23, scope: !245, inlinedAt: !1002)
!1021 = !DILocation(line: 95, column: 59, scope: !301, inlinedAt: !1002)
!1022 = !DILocation(line: 95, column: 20, scope: !301, inlinedAt: !1002)
!1023 = !DILocation(line: 95, column: 18, scope: !301, inlinedAt: !1002)
!1024 = !DILocation(line: 267, column: 23, scope: !962)
!1025 = !DILocation(line: 285, column: 5, scope: !962)
!1026 = !DILocation(line: 268, column: 19, scope: !962)
!1027 = !DILocation(line: 112, column: 36, scope: !318, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 285, column: 12, scope: !962)
!1029 = !DILocation(line: 112, column: 55, scope: !318, inlinedAt: !1028)
!1030 = !DILocation(line: 114, column: 5, scope: !318, inlinedAt: !1028)
!1031 = !DILocation(line: 116, column: 15, scope: !318, inlinedAt: !1028)
!1032 = !DILocation(line: 117, column: 22, scope: !349, inlinedAt: !1028)
!1033 = !DILocation(line: 117, column: 9, scope: !318, inlinedAt: !1028)
!1034 = !DILocation(line: 120, column: 9, scope: !357, inlinedAt: !1028)
!1035 = !DILocation(line: 118, column: 34, scope: !352, inlinedAt: !1028)
!1036 = !DILocation(line: 118, column: 16, scope: !352, inlinedAt: !1028)
!1037 = !DILocation(line: 286, column: 37, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !1, line: 286, column: 13)
!1039 = distinct !DILexicalBlock(scope: !962, file: !1, line: 285, column: 39)
!1040 = !DILocation(line: 286, column: 34, scope: !1038)
!1041 = !DILocation(line: 286, column: 13, scope: !1038)
!1042 = !DILocation(line: 286, column: 13, scope: !1039)
!1043 = distinct !{!1043, !1025, !1044}
!1044 = !DILocation(line: 291, column: 5, scope: !962)
!1045 = !DILocation(line: 287, column: 38, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 286, column: 47)
!1047 = !DILocation(line: 287, column: 35, scope: !1046)
!1048 = !DILocation(line: 287, column: 13, scope: !1046)
!1049 = !DILocation(line: 104, column: 48, scope: !307, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 292, column: 5, scope: !962)
!1051 = !DILocation(line: 105, column: 15, scope: !307, inlinedAt: !1050)
!1052 = !DILocation(line: 105, column: 5, scope: !307, inlinedAt: !1050)
!1053 = !DILocation(line: 106, column: 5, scope: !307, inlinedAt: !1050)
!1054 = !DILocation(line: 295, column: 30, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 294, column: 19)
!1056 = distinct !DILexicalBlock(scope: !962, file: !1, line: 294, column: 9)
!1057 = !DILocation(line: 295, column: 36, scope: !1055)
!1058 = !DILocation(line: 295, column: 33, scope: !1055)
!1059 = !DILocation(line: 295, column: 9, scope: !1055)
!1060 = !DILocation(line: 297, column: 32, scope: !1055)
!1061 = !DILocation(line: 297, column: 29, scope: !1055)
!1062 = !DILocation(line: 297, column: 43, scope: !1055)
!1063 = !DILocation(line: 297, column: 47, scope: !1055)
!1064 = !DILocation(line: 296, column: 9, scope: !1055)
!1065 = !DILocation(line: 298, column: 21, scope: !1055)
!1066 = !DILocation(line: 74, column: 42, scope: !227, inlinedAt: !1067)
!1067 = distinct !DILocation(line: 305, column: 24, scope: !962)
!1068 = !DILocation(line: 75, column: 18, scope: !236, inlinedAt: !1067)
!1069 = !DILocation(line: 75, column: 27, scope: !236, inlinedAt: !1067)
!1070 = !DILocation(line: 75, column: 9, scope: !227, inlinedAt: !1067)
!1071 = !DILocation(line: 78, column: 9, scope: !244, inlinedAt: !1067)
!1072 = !DILocation(line: 76, column: 40, scope: !240, inlinedAt: !1067)
!1073 = !DILocation(line: 76, column: 16, scope: !240, inlinedAt: !1067)
!1074 = !DILocation(line: 305, column: 5, scope: !962)
!1075 = !DILocation(line: 306, column: 1, scope: !962)
!1076 = !DILocation(line: 104, column: 48, scope: !307, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 292, column: 5, scope: !962)
!1078 = !DILocation(line: 105, column: 15, scope: !307, inlinedAt: !1077)
!1079 = !DILocation(line: 105, column: 5, scope: !307, inlinedAt: !1077)
!1080 = !DILocation(line: 106, column: 5, scope: !307, inlinedAt: !1077)
!1081 = !DILocation(line: 301, column: 27, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 299, column: 12)
!1083 = !{!807, !127, i64 48}
!1084 = !DILocation(line: 301, column: 9, scope: !1082)
!1085 = !DILocation(line: 302, column: 9, scope: !1082)
!1086 = distinct !DISubprogram(name: "llenCommand", scope: !1, file: !1, line: 308, type: !675, isLocal: false, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1087)
!1087 = !{!1088, !1089}
!1088 = !DILocalVariable(name: "c", arg: 1, scope: !1086, file: !1, line: 308, type: !550)
!1089 = !DILocalVariable(name: "o", scope: !1086, file: !1, line: 309, type: !89)
!1090 = !DILocation(line: 308, column: 26, scope: !1086)
!1091 = !DILocation(line: 309, column: 41, scope: !1086)
!1092 = !DILocation(line: 309, column: 38, scope: !1086)
!1093 = !DILocation(line: 309, column: 56, scope: !1086)
!1094 = !DILocation(line: 309, column: 15, scope: !1086)
!1095 = !DILocation(line: 309, column: 11, scope: !1086)
!1096 = !DILocation(line: 310, column: 11, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 310, column: 9)
!1098 = !DILocation(line: 310, column: 19, scope: !1097)
!1099 = !DILocation(line: 310, column: 22, scope: !1097)
!1100 = !DILocation(line: 310, column: 9, scope: !1086)
!1101 = !DILocation(line: 74, column: 42, scope: !227, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 311, column: 24, scope: !1086)
!1103 = !DILocation(line: 75, column: 18, scope: !236, inlinedAt: !1102)
!1104 = !DILocation(line: 75, column: 27, scope: !236, inlinedAt: !1102)
!1105 = !DILocation(line: 75, column: 9, scope: !227, inlinedAt: !1102)
!1106 = !DILocation(line: 78, column: 9, scope: !244, inlinedAt: !1102)
!1107 = !DILocation(line: 76, column: 40, scope: !240, inlinedAt: !1102)
!1108 = !DILocation(line: 76, column: 16, scope: !240, inlinedAt: !1102)
!1109 = !DILocation(line: 311, column: 5, scope: !1086)
!1110 = !DILocation(line: 312, column: 1, scope: !1086)
!1111 = distinct !DISubprogram(name: "lindexCommand", scope: !1, file: !1, line: 314, type: !675, isLocal: false, isDefinition: true, scopeLine: 314, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1112)
!1112 = !{!1113, !1114, !1115, !1116, !1117}
!1113 = !DILocalVariable(name: "c", arg: 1, scope: !1111, file: !1, line: 314, type: !550)
!1114 = !DILocalVariable(name: "o", scope: !1111, file: !1, line: 315, type: !89)
!1115 = !DILocalVariable(name: "index", scope: !1111, file: !1, line: 317, type: !266)
!1116 = !DILocalVariable(name: "value", scope: !1111, file: !1, line: 318, type: !89)
!1117 = !DILocalVariable(name: "entry", scope: !1118, file: !1, line: 324, type: !327)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !1, line: 323, column: 48)
!1119 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 323, column: 9)
!1120 = !DILocation(line: 314, column: 28, scope: !1111)
!1121 = !DILocation(line: 315, column: 41, scope: !1111)
!1122 = !DILocation(line: 315, column: 38, scope: !1111)
!1123 = !DILocation(line: 315, column: 56, scope: !1111)
!1124 = !{!807, !127, i64 80}
!1125 = !DILocation(line: 315, column: 15, scope: !1111)
!1126 = !DILocation(line: 315, column: 11, scope: !1111)
!1127 = !DILocation(line: 316, column: 11, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 316, column: 9)
!1129 = !DILocation(line: 316, column: 19, scope: !1128)
!1130 = !DILocation(line: 316, column: 22, scope: !1128)
!1131 = !DILocation(line: 316, column: 9, scope: !1111)
!1132 = !DILocation(line: 317, column: 5, scope: !1111)
!1133 = !DILocation(line: 318, column: 11, scope: !1111)
!1134 = !DILocation(line: 320, column: 41, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 320, column: 9)
!1136 = !DILocation(line: 320, column: 38, scope: !1135)
!1137 = !DILocation(line: 317, column: 10, scope: !1111)
!1138 = !DILocation(line: 320, column: 10, scope: !1135)
!1139 = !DILocation(line: 320, column: 64, scope: !1135)
!1140 = !DILocation(line: 320, column: 9, scope: !1111)
!1141 = !DILocation(line: 323, column: 12, scope: !1119)
!1142 = !DILocation(line: 323, column: 21, scope: !1119)
!1143 = !DILocation(line: 323, column: 9, scope: !1111)
!1144 = !DILocation(line: 324, column: 9, scope: !1118)
!1145 = !DILocation(line: 325, column: 31, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1118, file: !1, line: 325, column: 13)
!1147 = !DILocation(line: 325, column: 36, scope: !1146)
!1148 = !DILocation(line: 324, column: 24, scope: !1118)
!1149 = !DILocation(line: 325, column: 13, scope: !1146)
!1150 = !DILocation(line: 325, column: 13, scope: !1118)
!1151 = !DILocation(line: 326, column: 23, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 326, column: 17)
!1153 = distinct !DILexicalBlock(scope: !1146, file: !1, line: 325, column: 52)
!1154 = !{!347, !127, i64 24}
!1155 = !DILocation(line: 326, column: 17, scope: !1152)
!1156 = !DILocation(line: 326, column: 17, scope: !1153)
!1157 = !DILocation(line: 327, column: 69, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1152, file: !1, line: 326, column: 30)
!1159 = !{!347, !124, i64 40}
!1160 = !DILocation(line: 327, column: 63, scope: !1158)
!1161 = !DILocation(line: 327, column: 25, scope: !1158)
!1162 = !DILocation(line: 328, column: 13, scope: !1158)
!1163 = !DILocation(line: 329, column: 62, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1152, file: !1, line: 328, column: 20)
!1165 = !{!347, !218, i64 32}
!1166 = !DILocation(line: 329, column: 25, scope: !1164)
!1167 = !DILocation(line: 0, scope: !1164)
!1168 = !DILocation(line: 331, column: 13, scope: !1153)
!1169 = !DILocation(line: 332, column: 13, scope: !1153)
!1170 = !DILocation(line: 333, column: 9, scope: !1153)
!1171 = !DILocation(line: 334, column: 31, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1146, file: !1, line: 333, column: 16)
!1173 = !DILocation(line: 334, column: 13, scope: !1172)
!1174 = !DILocation(line: 336, column: 5, scope: !1119)
!1175 = !DILocation(line: 339, column: 1, scope: !1111)
!1176 = !DILocation(line: 337, column: 9, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1119, file: !1, line: 336, column: 12)
!1178 = distinct !DISubprogram(name: "lsetCommand", scope: !1, file: !1, line: 341, type: !675, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1179)
!1179 = !{!1180, !1181, !1182, !1183, !1184, !1187}
!1180 = !DILocalVariable(name: "c", arg: 1, scope: !1178, file: !1, line: 341, type: !550)
!1181 = !DILocalVariable(name: "o", scope: !1178, file: !1, line: 342, type: !89)
!1182 = !DILocalVariable(name: "index", scope: !1178, file: !1, line: 344, type: !266)
!1183 = !DILocalVariable(name: "value", scope: !1178, file: !1, line: 345, type: !89)
!1184 = !DILocalVariable(name: "ql", scope: !1185, file: !1, line: 351, type: !9)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !1, line: 350, column: 48)
!1186 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 350, column: 9)
!1187 = !DILocalVariable(name: "replaced", scope: !1185, file: !1, line: 352, type: !36)
!1188 = !DILocation(line: 341, column: 26, scope: !1178)
!1189 = !DILocation(line: 342, column: 42, scope: !1178)
!1190 = !DILocation(line: 342, column: 39, scope: !1178)
!1191 = !DILocation(line: 342, column: 57, scope: !1178)
!1192 = !{!807, !127, i64 120}
!1193 = !DILocation(line: 342, column: 15, scope: !1178)
!1194 = !DILocation(line: 342, column: 11, scope: !1178)
!1195 = !DILocation(line: 343, column: 11, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 343, column: 9)
!1197 = !DILocation(line: 343, column: 19, scope: !1196)
!1198 = !DILocation(line: 343, column: 22, scope: !1196)
!1199 = !DILocation(line: 343, column: 9, scope: !1178)
!1200 = !DILocation(line: 344, column: 5, scope: !1178)
!1201 = !DILocation(line: 345, column: 22, scope: !1178)
!1202 = !DILocation(line: 345, column: 19, scope: !1178)
!1203 = !DILocation(line: 345, column: 11, scope: !1178)
!1204 = !DILocation(line: 347, column: 38, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 347, column: 9)
!1206 = !DILocation(line: 344, column: 10, scope: !1178)
!1207 = !DILocation(line: 347, column: 10, scope: !1205)
!1208 = !DILocation(line: 347, column: 64, scope: !1205)
!1209 = !DILocation(line: 347, column: 9, scope: !1178)
!1210 = !DILocation(line: 350, column: 12, scope: !1186)
!1211 = !DILocation(line: 350, column: 21, scope: !1186)
!1212 = !DILocation(line: 350, column: 9, scope: !1178)
!1213 = !DILocation(line: 351, column: 28, scope: !1185)
!1214 = !DILocation(line: 351, column: 20, scope: !1185)
!1215 = !DILocation(line: 352, column: 52, scope: !1185)
!1216 = !DILocation(line: 353, column: 55, scope: !1185)
!1217 = !DILocation(line: 87, column: 39, scope: !129, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 353, column: 60, scope: !1185)
!1219 = !DILocation(line: 88, column: 27, scope: !129, inlinedAt: !1218)
!1220 = !DILocation(line: 88, column: 19, scope: !129, inlinedAt: !1218)
!1221 = !DILocation(line: 89, column: 5, scope: !129, inlinedAt: !1218)
!1222 = !DILocation(line: 91, column: 20, scope: !145, inlinedAt: !1218)
!1223 = !DILocation(line: 91, column: 13, scope: !145, inlinedAt: !1218)
!1224 = !DILocation(line: 93, column: 20, scope: !145, inlinedAt: !1218)
!1225 = !DILocation(line: 93, column: 34, scope: !145, inlinedAt: !1218)
!1226 = !DILocation(line: 93, column: 13, scope: !145, inlinedAt: !1218)
!1227 = !DILocation(line: 95, column: 20, scope: !145, inlinedAt: !1218)
!1228 = !DILocation(line: 95, column: 35, scope: !145, inlinedAt: !1218)
!1229 = !DILocation(line: 95, column: 13, scope: !145, inlinedAt: !1218)
!1230 = !DILocation(line: 97, column: 20, scope: !145, inlinedAt: !1218)
!1231 = !DILocation(line: 97, column: 35, scope: !145, inlinedAt: !1218)
!1232 = !DILocation(line: 97, column: 13, scope: !145, inlinedAt: !1218)
!1233 = !DILocation(line: 99, column: 20, scope: !145, inlinedAt: !1218)
!1234 = !DILocation(line: 99, column: 35, scope: !145, inlinedAt: !1218)
!1235 = !DILocation(line: 99, column: 13, scope: !145, inlinedAt: !1218)
!1236 = !DILocation(line: 0, scope: !145, inlinedAt: !1218)
!1237 = !DILocation(line: 353, column: 60, scope: !1185)
!1238 = !DILocation(line: 352, column: 24, scope: !1185)
!1239 = !DILocation(line: 352, column: 13, scope: !1185)
!1240 = !DILocation(line: 354, column: 14, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 354, column: 13)
!1242 = !DILocation(line: 354, column: 13, scope: !1185)
!1243 = !DILocation(line: 355, column: 31, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1241, file: !1, line: 354, column: 24)
!1245 = !{!807, !127, i64 144}
!1246 = !DILocation(line: 355, column: 13, scope: !1244)
!1247 = !DILocation(line: 356, column: 9, scope: !1244)
!1248 = !DILocation(line: 357, column: 31, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1241, file: !1, line: 356, column: 16)
!1250 = !{!807, !127, i64 8}
!1251 = !DILocation(line: 357, column: 13, scope: !1249)
!1252 = !DILocation(line: 358, column: 34, scope: !1249)
!1253 = !DILocation(line: 358, column: 40, scope: !1249)
!1254 = !DILocation(line: 358, column: 37, scope: !1249)
!1255 = !DILocation(line: 358, column: 13, scope: !1249)
!1256 = !DILocation(line: 359, column: 55, scope: !1249)
!1257 = !DILocation(line: 359, column: 52, scope: !1249)
!1258 = !DILocation(line: 359, column: 66, scope: !1249)
!1259 = !DILocation(line: 359, column: 70, scope: !1249)
!1260 = !DILocation(line: 359, column: 13, scope: !1249)
!1261 = !DILocation(line: 360, column: 25, scope: !1249)
!1262 = !DILocation(line: 363, column: 9, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1186, file: !1, line: 362, column: 12)
!1264 = !DILocation(line: 365, column: 1, scope: !1178)
!1265 = distinct !DISubprogram(name: "popGenericCommand", scope: !1, file: !1, line: 367, type: !548, isLocal: false, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1266)
!1266 = !{!1267, !1268, !1269, !1270, !1271}
!1267 = !DILocalVariable(name: "c", arg: 1, scope: !1265, file: !1, line: 367, type: !550)
!1268 = !DILocalVariable(name: "where", arg: 2, scope: !1265, file: !1, line: 367, type: !36)
!1269 = !DILocalVariable(name: "o", scope: !1265, file: !1, line: 368, type: !89)
!1270 = !DILocalVariable(name: "value", scope: !1265, file: !1, line: 371, type: !89)
!1271 = !DILocalVariable(name: "event", scope: !1272, file: !1, line: 375, type: !4)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !1, line: 374, column: 12)
!1273 = distinct !DILexicalBlock(scope: !1265, file: !1, line: 372, column: 9)
!1274 = !DILocation(line: 367, column: 32, scope: !1265)
!1275 = !DILocation(line: 367, column: 39, scope: !1265)
!1276 = !DILocation(line: 368, column: 42, scope: !1265)
!1277 = !DILocation(line: 368, column: 39, scope: !1265)
!1278 = !DILocation(line: 368, column: 57, scope: !1265)
!1279 = !DILocation(line: 368, column: 15, scope: !1265)
!1280 = !DILocation(line: 368, column: 11, scope: !1265)
!1281 = !DILocation(line: 369, column: 11, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1265, file: !1, line: 369, column: 9)
!1283 = !DILocation(line: 369, column: 19, scope: !1282)
!1284 = !DILocation(line: 369, column: 22, scope: !1282)
!1285 = !DILocation(line: 369, column: 9, scope: !1265)
!1286 = !DILocation(line: 57, column: 25, scope: !183, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 371, column: 19, scope: !1265)
!1288 = !DILocation(line: 57, column: 38, scope: !183, inlinedAt: !1287)
!1289 = !DILocation(line: 58, column: 5, scope: !183, inlinedAt: !1287)
!1290 = !DILocation(line: 59, column: 5, scope: !183, inlinedAt: !1287)
!1291 = !DILocation(line: 59, column: 11, scope: !183, inlinedAt: !1287)
!1292 = !DILocation(line: 62, column: 18, scope: !200, inlinedAt: !1287)
!1293 = !DILocation(line: 62, column: 27, scope: !200, inlinedAt: !1287)
!1294 = !DILocation(line: 62, column: 9, scope: !183, inlinedAt: !1287)
!1295 = !DILocation(line: 61, column: 26, scope: !183, inlinedAt: !1287)
!1296 = !DILocation(line: 61, column: 20, scope: !183, inlinedAt: !1287)
!1297 = !DILocation(line: 61, column: 9, scope: !183, inlinedAt: !1287)
!1298 = !DILocation(line: 63, column: 41, scope: !207, inlinedAt: !1287)
!1299 = !DILocation(line: 63, column: 56, scope: !207, inlinedAt: !1287)
!1300 = !DILocation(line: 58, column: 15, scope: !183, inlinedAt: !1287)
!1301 = !DILocation(line: 63, column: 13, scope: !207, inlinedAt: !1287)
!1302 = !DILocation(line: 65, column: 18, scope: !213, inlinedAt: !1287)
!1303 = !DILocation(line: 63, column: 13, scope: !208, inlinedAt: !1287)
!1304 = !DILocation(line: 66, column: 56, scope: !213, inlinedAt: !1287)
!1305 = !DILocation(line: 66, column: 25, scope: !213, inlinedAt: !1287)
!1306 = !DILocation(line: 66, column: 23, scope: !213, inlinedAt: !1287)
!1307 = !DILocation(line: 66, column: 17, scope: !213, inlinedAt: !1287)
!1308 = !DILocation(line: 69, column: 9, scope: !223, inlinedAt: !1287)
!1309 = !DILocation(line: 71, column: 12, scope: !183, inlinedAt: !1287)
!1310 = !DILocation(line: 72, column: 1, scope: !183, inlinedAt: !1287)
!1311 = !DILocation(line: 371, column: 11, scope: !1265)
!1312 = !DILocation(line: 372, column: 15, scope: !1273)
!1313 = !DILocation(line: 372, column: 9, scope: !1265)
!1314 = !DILocation(line: 373, column: 27, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1273, file: !1, line: 372, column: 24)
!1316 = !DILocation(line: 373, column: 9, scope: !1315)
!1317 = !DILocation(line: 374, column: 5, scope: !1315)
!1318 = !DILocation(line: 375, column: 30, scope: !1272)
!1319 = !DILocation(line: 375, column: 23, scope: !1272)
!1320 = !DILocation(line: 375, column: 15, scope: !1272)
!1321 = !DILocation(line: 377, column: 9, scope: !1272)
!1322 = !DILocation(line: 378, column: 9, scope: !1272)
!1323 = !DILocation(line: 379, column: 50, scope: !1272)
!1324 = !DILocation(line: 379, column: 47, scope: !1272)
!1325 = !DILocation(line: 379, column: 61, scope: !1272)
!1326 = !DILocation(line: 379, column: 65, scope: !1272)
!1327 = !DILocation(line: 379, column: 9, scope: !1272)
!1328 = !DILocation(line: 74, column: 42, scope: !227, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 380, column: 13, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 380, column: 13)
!1331 = !DILocation(line: 75, column: 18, scope: !236, inlinedAt: !1329)
!1332 = !DILocation(line: 75, column: 27, scope: !236, inlinedAt: !1329)
!1333 = !DILocation(line: 75, column: 9, scope: !227, inlinedAt: !1329)
!1334 = !DILocation(line: 78, column: 9, scope: !244, inlinedAt: !1329)
!1335 = !DILocation(line: 76, column: 40, scope: !240, inlinedAt: !1329)
!1336 = !DILocation(line: 76, column: 16, scope: !240, inlinedAt: !1329)
!1337 = !DILocation(line: 380, column: 31, scope: !1330)
!1338 = !DILocation(line: 380, column: 13, scope: !1272)
!1339 = !DILocation(line: 382, column: 36, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1330, file: !1, line: 380, column: 37)
!1341 = !DILocation(line: 382, column: 33, scope: !1340)
!1342 = !DILocation(line: 382, column: 47, scope: !1340)
!1343 = !DILocation(line: 382, column: 51, scope: !1340)
!1344 = !DILocation(line: 381, column: 13, scope: !1340)
!1345 = !DILocation(line: 383, column: 25, scope: !1340)
!1346 = !DILocation(line: 383, column: 31, scope: !1340)
!1347 = !DILocation(line: 383, column: 28, scope: !1340)
!1348 = !DILocation(line: 383, column: 13, scope: !1340)
!1349 = !DILocation(line: 384, column: 9, scope: !1340)
!1350 = !DILocation(line: 385, column: 30, scope: !1272)
!1351 = !DILocation(line: 385, column: 36, scope: !1272)
!1352 = !DILocation(line: 385, column: 33, scope: !1272)
!1353 = !DILocation(line: 385, column: 9, scope: !1272)
!1354 = !DILocation(line: 386, column: 21, scope: !1272)
!1355 = !DILocation(line: 388, column: 1, scope: !1265)
!1356 = distinct !DISubprogram(name: "lpopCommand", scope: !1, file: !1, line: 390, type: !675, isLocal: false, isDefinition: true, scopeLine: 390, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1357)
!1357 = !{!1358}
!1358 = !DILocalVariable(name: "c", arg: 1, scope: !1356, file: !1, line: 390, type: !550)
!1359 = !DILocation(line: 390, column: 26, scope: !1356)
!1360 = !DILocation(line: 391, column: 5, scope: !1356)
!1361 = !DILocation(line: 392, column: 1, scope: !1356)
!1362 = distinct !DISubprogram(name: "rpopCommand", scope: !1, file: !1, line: 394, type: !675, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1363)
!1363 = !{!1364}
!1364 = !DILocalVariable(name: "c", arg: 1, scope: !1362, file: !1, line: 394, type: !550)
!1365 = !DILocation(line: 394, column: 26, scope: !1362)
!1366 = !DILocation(line: 395, column: 5, scope: !1362)
!1367 = !DILocation(line: 396, column: 1, scope: !1362)
!1368 = distinct !DISubprogram(name: "lrangeCommand", scope: !1, file: !1, line: 398, type: !675, isLocal: false, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1369)
!1369 = !{!1370, !1371, !1372, !1373, !1374, !1375, !1376, !1379, !1381}
!1370 = !DILocalVariable(name: "c", arg: 1, scope: !1368, file: !1, line: 398, type: !550)
!1371 = !DILocalVariable(name: "o", scope: !1368, file: !1, line: 399, type: !89)
!1372 = !DILocalVariable(name: "start", scope: !1368, file: !1, line: 400, type: !266)
!1373 = !DILocalVariable(name: "end", scope: !1368, file: !1, line: 400, type: !266)
!1374 = !DILocalVariable(name: "llen", scope: !1368, file: !1, line: 400, type: !266)
!1375 = !DILocalVariable(name: "rangelen", scope: !1368, file: !1, line: 400, type: !266)
!1376 = !DILocalVariable(name: "iter", scope: !1377, file: !1, line: 426, type: !248)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 425, column: 48)
!1378 = distinct !DILexicalBlock(scope: !1368, file: !1, line: 425, column: 9)
!1379 = !DILocalVariable(name: "entry", scope: !1380, file: !1, line: 429, type: !322)
!1380 = distinct !DILexicalBlock(scope: !1377, file: !1, line: 428, column: 27)
!1381 = !DILocalVariable(name: "qe", scope: !1380, file: !1, line: 431, type: !1382)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!1383 = !DILocation(line: 398, column: 28, scope: !1368)
!1384 = !DILocation(line: 400, column: 5, scope: !1368)
!1385 = !DILocation(line: 402, column: 41, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1368, file: !1, line: 402, column: 9)
!1387 = !DILocation(line: 402, column: 38, scope: !1386)
!1388 = !DILocation(line: 400, column: 10, scope: !1368)
!1389 = !DILocation(line: 402, column: 10, scope: !1386)
!1390 = !DILocation(line: 402, column: 64, scope: !1386)
!1391 = !DILocation(line: 402, column: 73, scope: !1386)
!1392 = !DILocation(line: 403, column: 41, scope: !1386)
!1393 = !DILocation(line: 403, column: 38, scope: !1386)
!1394 = !DILocation(line: 400, column: 17, scope: !1368)
!1395 = !DILocation(line: 403, column: 10, scope: !1386)
!1396 = !DILocation(line: 403, column: 62, scope: !1386)
!1397 = !DILocation(line: 402, column: 9, scope: !1368)
!1398 = !DILocation(line: 405, column: 40, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1368, file: !1, line: 405, column: 9)
!1400 = !DILocation(line: 405, column: 37, scope: !1399)
!1401 = !DILocation(line: 405, column: 55, scope: !1399)
!1402 = !{!807, !127, i64 104}
!1403 = !DILocation(line: 405, column: 14, scope: !1399)
!1404 = !DILocation(line: 399, column: 11, scope: !1368)
!1405 = !DILocation(line: 405, column: 72, scope: !1399)
!1406 = !DILocation(line: 406, column: 10, scope: !1399)
!1407 = !DILocation(line: 406, column: 13, scope: !1399)
!1408 = !DILocation(line: 405, column: 9, scope: !1368)
!1409 = !DILocation(line: 74, column: 42, scope: !227, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 407, column: 12, scope: !1368)
!1411 = !DILocation(line: 75, column: 18, scope: !236, inlinedAt: !1410)
!1412 = !DILocation(line: 75, column: 27, scope: !236, inlinedAt: !1410)
!1413 = !DILocation(line: 75, column: 9, scope: !227, inlinedAt: !1410)
!1414 = !DILocation(line: 78, column: 9, scope: !244, inlinedAt: !1410)
!1415 = !DILocation(line: 76, column: 40, scope: !240, inlinedAt: !1410)
!1416 = !DILocation(line: 76, column: 16, scope: !240, inlinedAt: !1410)
!1417 = !DILocation(line: 400, column: 22, scope: !1368)
!1418 = !DILocation(line: 410, column: 9, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1368, file: !1, line: 410, column: 9)
!1420 = !DILocation(line: 410, column: 15, scope: !1419)
!1421 = !DILocation(line: 410, column: 9, scope: !1368)
!1422 = !DILocation(line: 410, column: 32, scope: !1419)
!1423 = !DILocation(line: 410, column: 26, scope: !1419)
!1424 = !DILocation(line: 410, column: 20, scope: !1419)
!1425 = !DILocation(line: 411, column: 9, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1368, file: !1, line: 411, column: 9)
!1427 = !DILocation(line: 411, column: 13, scope: !1426)
!1428 = !DILocation(line: 411, column: 9, scope: !1368)
!1429 = !DILocation(line: 411, column: 28, scope: !1426)
!1430 = !DILocation(line: 411, column: 22, scope: !1426)
!1431 = !DILocation(line: 411, column: 18, scope: !1426)
!1432 = !DILocation(line: 412, column: 15, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1368, file: !1, line: 412, column: 9)
!1434 = !DILocation(line: 412, column: 9, scope: !1368)
!1435 = !DILocation(line: 412, column: 26, scope: !1433)
!1436 = !DILocation(line: 412, column: 20, scope: !1433)
!1437 = !DILocation(line: 416, column: 9, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1368, file: !1, line: 416, column: 9)
!1439 = !DILocation(line: 416, column: 15, scope: !1438)
!1440 = !DILocation(line: 416, column: 30, scope: !1438)
!1441 = !DILocation(line: 416, column: 21, scope: !1438)
!1442 = !DILocation(line: 417, column: 27, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1438, file: !1, line: 416, column: 39)
!1444 = !DILocation(line: 417, column: 9, scope: !1443)
!1445 = !DILocation(line: 418, column: 9, scope: !1443)
!1446 = !DILocation(line: 420, column: 13, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1368, file: !1, line: 420, column: 9)
!1448 = !DILocation(line: 420, column: 9, scope: !1368)
!1449 = !DILocation(line: 420, column: 32, scope: !1447)
!1450 = !DILocation(line: 420, column: 26, scope: !1447)
!1451 = !DILocation(line: 420, column: 22, scope: !1447)
!1452 = !DILocation(line: 421, column: 17, scope: !1368)
!1453 = !DILocation(line: 421, column: 20, scope: !1368)
!1454 = !DILocation(line: 421, column: 27, scope: !1368)
!1455 = !DILocation(line: 400, column: 28, scope: !1368)
!1456 = !DILocation(line: 424, column: 5, scope: !1368)
!1457 = !DILocation(line: 425, column: 12, scope: !1378)
!1458 = !DILocation(line: 425, column: 21, scope: !1378)
!1459 = !DILocation(line: 425, column: 9, scope: !1368)
!1460 = !DILocation(line: 426, column: 58, scope: !1377)
!1461 = !DILocation(line: 83, column: 46, scope: !245, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 426, column: 34, scope: !1377)
!1463 = !DILocation(line: 83, column: 60, scope: !245, inlinedAt: !1462)
!1464 = !DILocation(line: 84, column: 54, scope: !245, inlinedAt: !1462)
!1465 = !DILocation(line: 85, column: 28, scope: !245, inlinedAt: !1462)
!1466 = !DILocation(line: 86, column: 9, scope: !245, inlinedAt: !1462)
!1467 = !DILocation(line: 86, column: 17, scope: !245, inlinedAt: !1462)
!1468 = !DILocation(line: 87, column: 29, scope: !245, inlinedAt: !1462)
!1469 = !DILocation(line: 87, column: 20, scope: !245, inlinedAt: !1462)
!1470 = !DILocation(line: 87, column: 9, scope: !245, inlinedAt: !1462)
!1471 = !DILocation(line: 87, column: 18, scope: !245, inlinedAt: !1462)
!1472 = !DILocation(line: 88, column: 9, scope: !245, inlinedAt: !1462)
!1473 = !DILocation(line: 88, column: 19, scope: !245, inlinedAt: !1462)
!1474 = !DILocation(line: 89, column: 9, scope: !245, inlinedAt: !1462)
!1475 = !DILocation(line: 89, column: 14, scope: !245, inlinedAt: !1462)
!1476 = !DILocation(line: 94, column: 22, scope: !294, inlinedAt: !1462)
!1477 = !DILocation(line: 94, column: 9, scope: !245, inlinedAt: !1462)
!1478 = !DILocation(line: 98, column: 9, scope: !306, inlinedAt: !1462)
!1479 = !DILocation(line: 92, column: 9, scope: !245, inlinedAt: !1462)
!1480 = !DILocation(line: 85, column: 23, scope: !245, inlinedAt: !1462)
!1481 = !DILocation(line: 95, column: 59, scope: !301, inlinedAt: !1462)
!1482 = !DILocation(line: 95, column: 20, scope: !301, inlinedAt: !1462)
!1483 = !DILocation(line: 95, column: 18, scope: !301, inlinedAt: !1462)
!1484 = !DILocation(line: 426, column: 27, scope: !1377)
!1485 = !DILocation(line: 428, column: 9, scope: !1377)
!1486 = !DILocation(line: 429, column: 13, scope: !1380)
!1487 = !DILocation(line: 429, column: 27, scope: !1380)
!1488 = !DILocation(line: 112, column: 36, scope: !318, inlinedAt: !1489)
!1489 = distinct !DILocation(line: 430, column: 13, scope: !1380)
!1490 = !DILocation(line: 112, column: 55, scope: !318, inlinedAt: !1489)
!1491 = !DILocation(line: 114, column: 5, scope: !318, inlinedAt: !1489)
!1492 = !DILocation(line: 116, column: 15, scope: !318, inlinedAt: !1489)
!1493 = !DILocation(line: 117, column: 22, scope: !349, inlinedAt: !1489)
!1494 = !DILocation(line: 117, column: 9, scope: !318, inlinedAt: !1489)
!1495 = !DILocation(line: 120, column: 9, scope: !357, inlinedAt: !1489)
!1496 = !DILocation(line: 118, column: 34, scope: !352, inlinedAt: !1489)
!1497 = !DILocation(line: 118, column: 16, scope: !352, inlinedAt: !1489)
!1498 = !DILocation(line: 432, column: 21, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1380, file: !1, line: 432, column: 17)
!1500 = !DILocation(line: 432, column: 17, scope: !1499)
!1501 = !DILocation(line: 432, column: 17, scope: !1380)
!1502 = !DILocation(line: 431, column: 29, scope: !1380)
!1503 = !DILocation(line: 433, column: 53, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1499, file: !1, line: 432, column: 28)
!1505 = !DILocation(line: 433, column: 49, scope: !1504)
!1506 = !DILocation(line: 433, column: 17, scope: !1504)
!1507 = !DILocation(line: 434, column: 13, scope: !1504)
!1508 = !DILocation(line: 435, column: 44, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1499, file: !1, line: 434, column: 20)
!1510 = !DILocation(line: 435, column: 17, scope: !1509)
!1511 = !DILocation(line: 437, column: 9, scope: !1377)
!1512 = !DILocation(line: 428, column: 23, scope: !1377)
!1513 = distinct !{!1513, !1485, !1511}
!1514 = !DILocation(line: 105, column: 15, scope: !307, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 438, column: 9, scope: !1377)
!1516 = !DILocation(line: 104, column: 48, scope: !307, inlinedAt: !1515)
!1517 = !DILocation(line: 105, column: 5, scope: !307, inlinedAt: !1515)
!1518 = !DILocation(line: 106, column: 5, scope: !307, inlinedAt: !1515)
!1519 = !DILocation(line: 442, column: 1, scope: !1368)
!1520 = !DILocation(line: 440, column: 9, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 439, column: 12)
!1522 = distinct !DISubprogram(name: "ltrimCommand", scope: !1, file: !1, line: 444, type: !675, isLocal: false, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1523)
!1523 = !{!1524, !1525, !1526, !1527, !1528, !1529, !1530}
!1524 = !DILocalVariable(name: "c", arg: 1, scope: !1522, file: !1, line: 444, type: !550)
!1525 = !DILocalVariable(name: "o", scope: !1522, file: !1, line: 445, type: !89)
!1526 = !DILocalVariable(name: "start", scope: !1522, file: !1, line: 446, type: !266)
!1527 = !DILocalVariable(name: "end", scope: !1522, file: !1, line: 446, type: !266)
!1528 = !DILocalVariable(name: "llen", scope: !1522, file: !1, line: 446, type: !266)
!1529 = !DILocalVariable(name: "ltrim", scope: !1522, file: !1, line: 446, type: !266)
!1530 = !DILocalVariable(name: "rtrim", scope: !1522, file: !1, line: 446, type: !266)
!1531 = !DILocation(line: 444, column: 27, scope: !1522)
!1532 = !DILocation(line: 446, column: 5, scope: !1522)
!1533 = !DILocation(line: 448, column: 41, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 448, column: 9)
!1535 = !DILocation(line: 448, column: 38, scope: !1534)
!1536 = !DILocation(line: 446, column: 10, scope: !1522)
!1537 = !DILocation(line: 448, column: 10, scope: !1534)
!1538 = !DILocation(line: 448, column: 64, scope: !1534)
!1539 = !DILocation(line: 448, column: 73, scope: !1534)
!1540 = !DILocation(line: 449, column: 41, scope: !1534)
!1541 = !DILocation(line: 449, column: 38, scope: !1534)
!1542 = !DILocation(line: 446, column: 17, scope: !1522)
!1543 = !DILocation(line: 449, column: 10, scope: !1534)
!1544 = !DILocation(line: 449, column: 62, scope: !1534)
!1545 = !DILocation(line: 448, column: 9, scope: !1522)
!1546 = !DILocation(line: 451, column: 41, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 451, column: 9)
!1548 = !DILocation(line: 451, column: 38, scope: !1547)
!1549 = !DILocation(line: 451, column: 56, scope: !1547)
!1550 = !DILocation(line: 451, column: 14, scope: !1547)
!1551 = !DILocation(line: 445, column: 11, scope: !1522)
!1552 = !DILocation(line: 451, column: 61, scope: !1547)
!1553 = !DILocation(line: 451, column: 69, scope: !1547)
!1554 = !DILocation(line: 452, column: 9, scope: !1547)
!1555 = !DILocation(line: 451, column: 9, scope: !1522)
!1556 = !DILocation(line: 74, column: 42, scope: !227, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 453, column: 12, scope: !1522)
!1558 = !DILocation(line: 75, column: 18, scope: !236, inlinedAt: !1557)
!1559 = !DILocation(line: 75, column: 27, scope: !236, inlinedAt: !1557)
!1560 = !DILocation(line: 75, column: 9, scope: !227, inlinedAt: !1557)
!1561 = !DILocation(line: 78, column: 9, scope: !244, inlinedAt: !1557)
!1562 = !DILocation(line: 76, column: 40, scope: !240, inlinedAt: !1557)
!1563 = !DILocation(line: 76, column: 16, scope: !240, inlinedAt: !1557)
!1564 = !DILocation(line: 446, column: 22, scope: !1522)
!1565 = !DILocation(line: 456, column: 9, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 456, column: 9)
!1567 = !DILocation(line: 456, column: 15, scope: !1566)
!1568 = !DILocation(line: 456, column: 9, scope: !1522)
!1569 = !DILocation(line: 456, column: 32, scope: !1566)
!1570 = !DILocation(line: 456, column: 26, scope: !1566)
!1571 = !DILocation(line: 456, column: 20, scope: !1566)
!1572 = !DILocation(line: 457, column: 9, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 457, column: 9)
!1574 = !DILocation(line: 457, column: 13, scope: !1573)
!1575 = !DILocation(line: 457, column: 9, scope: !1522)
!1576 = !DILocation(line: 457, column: 28, scope: !1573)
!1577 = !DILocation(line: 457, column: 22, scope: !1573)
!1578 = !DILocation(line: 457, column: 18, scope: !1573)
!1579 = !DILocation(line: 458, column: 15, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 458, column: 9)
!1581 = !DILocation(line: 458, column: 9, scope: !1522)
!1582 = !DILocation(line: 458, column: 26, scope: !1580)
!1583 = !DILocation(line: 458, column: 20, scope: !1580)
!1584 = !DILocation(line: 462, column: 9, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 462, column: 9)
!1586 = !DILocation(line: 462, column: 15, scope: !1585)
!1587 = !DILocation(line: 462, column: 30, scope: !1585)
!1588 = !DILocation(line: 462, column: 21, scope: !1585)
!1589 = !DILocation(line: 467, column: 17, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !1, line: 467, column: 13)
!1591 = distinct !DILexicalBlock(scope: !1585, file: !1, line: 466, column: 12)
!1592 = !DILocation(line: 467, column: 13, scope: !1591)
!1593 = !DILocation(line: 467, column: 36, scope: !1590)
!1594 = !DILocation(line: 467, column: 30, scope: !1590)
!1595 = !DILocation(line: 467, column: 26, scope: !1590)
!1596 = !DILocation(line: 469, column: 22, scope: !1591)
!1597 = !DILocation(line: 446, column: 28, scope: !1522)
!1598 = !DILocation(line: 469, column: 25, scope: !1591)
!1599 = !DILocation(line: 446, column: 35, scope: !1522)
!1600 = !DILocation(line: 0, scope: !1591)
!1601 = !DILocation(line: 473, column: 12, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 473, column: 9)
!1603 = !DILocation(line: 473, column: 21, scope: !1602)
!1604 = !DILocation(line: 473, column: 9, scope: !1522)
!1605 = !DILocation(line: 474, column: 30, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1602, file: !1, line: 473, column: 48)
!1607 = !DILocation(line: 474, column: 9, scope: !1606)
!1608 = !DILocation(line: 475, column: 30, scope: !1606)
!1609 = !DILocation(line: 475, column: 34, scope: !1606)
!1610 = !DILocation(line: 475, column: 9, scope: !1606)
!1611 = !DILocation(line: 480, column: 48, scope: !1522)
!1612 = !DILocation(line: 480, column: 45, scope: !1522)
!1613 = !DILocation(line: 480, column: 59, scope: !1522)
!1614 = !DILocation(line: 480, column: 63, scope: !1522)
!1615 = !DILocation(line: 480, column: 5, scope: !1522)
!1616 = !DILocation(line: 74, column: 42, scope: !227, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 481, column: 9, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 481, column: 9)
!1619 = !DILocation(line: 75, column: 18, scope: !236, inlinedAt: !1617)
!1620 = !DILocation(line: 75, column: 27, scope: !236, inlinedAt: !1617)
!1621 = !DILocation(line: 75, column: 9, scope: !227, inlinedAt: !1617)
!1622 = !DILocation(line: 78, column: 9, scope: !244, inlinedAt: !1617)
!1623 = !DILocation(line: 76, column: 40, scope: !240, inlinedAt: !1617)
!1624 = !DILocation(line: 76, column: 16, scope: !240, inlinedAt: !1617)
!1625 = !DILocation(line: 481, column: 27, scope: !1618)
!1626 = !DILocation(line: 481, column: 9, scope: !1522)
!1627 = !DILocation(line: 477, column: 9, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1602, file: !1, line: 476, column: 12)
!1629 = !DILocation(line: 482, column: 21, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1618, file: !1, line: 481, column: 33)
!1631 = !DILocation(line: 482, column: 27, scope: !1630)
!1632 = !DILocation(line: 482, column: 24, scope: !1630)
!1633 = !DILocation(line: 482, column: 9, scope: !1630)
!1634 = !DILocation(line: 483, column: 53, scope: !1630)
!1635 = !DILocation(line: 483, column: 50, scope: !1630)
!1636 = !DILocation(line: 483, column: 64, scope: !1630)
!1637 = !DILocation(line: 483, column: 68, scope: !1630)
!1638 = !DILocation(line: 483, column: 9, scope: !1630)
!1639 = !DILocation(line: 484, column: 5, scope: !1630)
!1640 = !DILocation(line: 485, column: 26, scope: !1522)
!1641 = !DILocation(line: 485, column: 32, scope: !1522)
!1642 = !DILocation(line: 485, column: 29, scope: !1522)
!1643 = !DILocation(line: 485, column: 5, scope: !1522)
!1644 = !DILocation(line: 486, column: 17, scope: !1522)
!1645 = !DILocation(line: 487, column: 23, scope: !1522)
!1646 = !DILocation(line: 487, column: 5, scope: !1522)
!1647 = !DILocation(line: 488, column: 1, scope: !1522)
!1648 = distinct !DISubprogram(name: "lremCommand", scope: !1, file: !1, line: 490, type: !675, isLocal: false, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1649)
!1649 = !{!1650, !1651, !1652, !1653, !1654, !1655, !1656}
!1650 = !DILocalVariable(name: "c", arg: 1, scope: !1648, file: !1, line: 490, type: !550)
!1651 = !DILocalVariable(name: "subject", scope: !1648, file: !1, line: 491, type: !89)
!1652 = !DILocalVariable(name: "obj", scope: !1648, file: !1, line: 491, type: !89)
!1653 = !DILocalVariable(name: "toremove", scope: !1648, file: !1, line: 493, type: !266)
!1654 = !DILocalVariable(name: "removed", scope: !1648, file: !1, line: 494, type: !266)
!1655 = !DILocalVariable(name: "li", scope: !1648, file: !1, line: 502, type: !248)
!1656 = !DILocalVariable(name: "entry", scope: !1648, file: !1, line: 510, type: !322)
!1657 = !DILocation(line: 490, column: 26, scope: !1648)
!1658 = !DILocation(line: 492, column: 14, scope: !1648)
!1659 = !DILocation(line: 492, column: 11, scope: !1648)
!1660 = !DILocation(line: 491, column: 21, scope: !1648)
!1661 = !DILocation(line: 493, column: 5, scope: !1648)
!1662 = !DILocation(line: 494, column: 10, scope: !1648)
!1663 = !DILocation(line: 496, column: 38, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1648, file: !1, line: 496, column: 9)
!1665 = !DILocation(line: 493, column: 10, scope: !1648)
!1666 = !DILocation(line: 496, column: 10, scope: !1664)
!1667 = !DILocation(line: 496, column: 67, scope: !1664)
!1668 = !DILocation(line: 496, column: 9, scope: !1648)
!1669 = !DILocation(line: 499, column: 42, scope: !1648)
!1670 = !DILocation(line: 499, column: 39, scope: !1648)
!1671 = !DILocation(line: 499, column: 57, scope: !1648)
!1672 = !DILocation(line: 499, column: 15, scope: !1648)
!1673 = !DILocation(line: 491, column: 11, scope: !1648)
!1674 = !DILocation(line: 500, column: 17, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1648, file: !1, line: 500, column: 9)
!1676 = !DILocation(line: 500, column: 25, scope: !1675)
!1677 = !DILocation(line: 500, column: 28, scope: !1675)
!1678 = !DILocation(line: 500, column: 9, scope: !1648)
!1679 = !DILocation(line: 503, column: 9, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1648, file: !1, line: 503, column: 9)
!1681 = !DILocation(line: 503, column: 18, scope: !1680)
!1682 = !DILocation(line: 503, column: 9, scope: !1648)
!1683 = !DILocation(line: 504, column: 20, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1680, file: !1, line: 503, column: 23)
!1685 = !DILocation(line: 504, column: 18, scope: !1684)
!1686 = !DILocation(line: 83, column: 46, scope: !245, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 505, column: 14, scope: !1684)
!1688 = !DILocation(line: 83, column: 60, scope: !245, inlinedAt: !1687)
!1689 = !DILocation(line: 84, column: 54, scope: !245, inlinedAt: !1687)
!1690 = !DILocation(line: 85, column: 28, scope: !245, inlinedAt: !1687)
!1691 = !DILocation(line: 86, column: 9, scope: !245, inlinedAt: !1687)
!1692 = !DILocation(line: 86, column: 17, scope: !245, inlinedAt: !1687)
!1693 = !DILocation(line: 87, column: 29, scope: !245, inlinedAt: !1687)
!1694 = !DILocation(line: 87, column: 20, scope: !245, inlinedAt: !1687)
!1695 = !DILocation(line: 87, column: 9, scope: !245, inlinedAt: !1687)
!1696 = !DILocation(line: 87, column: 18, scope: !245, inlinedAt: !1687)
!1697 = !DILocation(line: 88, column: 9, scope: !245, inlinedAt: !1687)
!1698 = !DILocation(line: 88, column: 19, scope: !245, inlinedAt: !1687)
!1699 = !DILocation(line: 89, column: 9, scope: !245, inlinedAt: !1687)
!1700 = !DILocation(line: 89, column: 14, scope: !245, inlinedAt: !1687)
!1701 = !DILocation(line: 94, column: 22, scope: !294, inlinedAt: !1687)
!1702 = !DILocation(line: 94, column: 9, scope: !245, inlinedAt: !1687)
!1703 = !DILocation(line: 98, column: 9, scope: !306, inlinedAt: !1687)
!1704 = !DILocation(line: 92, column: 9, scope: !245, inlinedAt: !1687)
!1705 = !DILocation(line: 85, column: 23, scope: !245, inlinedAt: !1687)
!1706 = !DILocation(line: 95, column: 59, scope: !301, inlinedAt: !1687)
!1707 = !DILocation(line: 95, column: 20, scope: !301, inlinedAt: !1687)
!1708 = !DILocation(line: 502, column: 23, scope: !1648)
!1709 = !DILocation(line: 506, column: 5, scope: !1684)
!1710 = !DILocation(line: 83, column: 46, scope: !245, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 507, column: 14, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1680, file: !1, line: 506, column: 12)
!1713 = !DILocation(line: 83, column: 60, scope: !245, inlinedAt: !1711)
!1714 = !DILocation(line: 84, column: 54, scope: !245, inlinedAt: !1711)
!1715 = !DILocation(line: 85, column: 28, scope: !245, inlinedAt: !1711)
!1716 = !DILocation(line: 86, column: 9, scope: !245, inlinedAt: !1711)
!1717 = !DILocation(line: 86, column: 17, scope: !245, inlinedAt: !1711)
!1718 = !DILocation(line: 87, column: 29, scope: !245, inlinedAt: !1711)
!1719 = !DILocation(line: 87, column: 20, scope: !245, inlinedAt: !1711)
!1720 = !DILocation(line: 87, column: 9, scope: !245, inlinedAt: !1711)
!1721 = !DILocation(line: 87, column: 18, scope: !245, inlinedAt: !1711)
!1722 = !DILocation(line: 88, column: 9, scope: !245, inlinedAt: !1711)
!1723 = !DILocation(line: 88, column: 19, scope: !245, inlinedAt: !1711)
!1724 = !DILocation(line: 89, column: 9, scope: !245, inlinedAt: !1711)
!1725 = !DILocation(line: 89, column: 14, scope: !245, inlinedAt: !1711)
!1726 = !DILocation(line: 94, column: 22, scope: !294, inlinedAt: !1711)
!1727 = !DILocation(line: 94, column: 9, scope: !245, inlinedAt: !1711)
!1728 = !DILocation(line: 98, column: 9, scope: !306, inlinedAt: !1711)
!1729 = !DILocation(line: 92, column: 9, scope: !245, inlinedAt: !1711)
!1730 = !DILocation(line: 85, column: 23, scope: !245, inlinedAt: !1711)
!1731 = !DILocation(line: 95, column: 59, scope: !301, inlinedAt: !1711)
!1732 = !DILocation(line: 95, column: 20, scope: !301, inlinedAt: !1711)
!1733 = !DILocation(line: 114, column: 5, scope: !318, inlinedAt: !1734)
!1734 = distinct !DILocation(line: 511, column: 12, scope: !1648)
!1735 = !DILocation(line: 95, column: 18, scope: !301, inlinedAt: !1711)
!1736 = !DILocation(line: 510, column: 5, scope: !1648)
!1737 = !DILocation(line: 510, column: 19, scope: !1648)
!1738 = !DILocation(line: 112, column: 36, scope: !318, inlinedAt: !1734)
!1739 = !DILocation(line: 112, column: 55, scope: !318, inlinedAt: !1734)
!1740 = !DILocation(line: 116, column: 15, scope: !318, inlinedAt: !1734)
!1741 = !DILocation(line: 117, column: 22, scope: !349, inlinedAt: !1734)
!1742 = !DILocation(line: 117, column: 9, scope: !318, inlinedAt: !1734)
!1743 = !DILocation(line: 120, column: 9, scope: !357, inlinedAt: !1734)
!1744 = !DILocation(line: 118, column: 34, scope: !352, inlinedAt: !1734)
!1745 = !DILocation(line: 118, column: 16, scope: !352, inlinedAt: !1734)
!1746 = !DILocation(line: 511, column: 5, scope: !1648)
!1747 = !DILocation(line: 512, column: 13, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !1, line: 512, column: 13)
!1749 = distinct !DILexicalBlock(scope: !1648, file: !1, line: 511, column: 37)
!1750 = !DILocation(line: 512, column: 13, scope: !1749)
!1751 = !DILocation(line: 170, column: 39, scope: !494, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 513, column: 13, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1748, file: !1, line: 512, column: 40)
!1754 = !DILocation(line: 170, column: 60, scope: !494, inlinedAt: !1752)
!1755 = !DILocation(line: 171, column: 16, scope: !503, inlinedAt: !1752)
!1756 = !DILocation(line: 171, column: 20, scope: !503, inlinedAt: !1752)
!1757 = !DILocation(line: 171, column: 29, scope: !503, inlinedAt: !1752)
!1758 = !DILocation(line: 171, column: 9, scope: !494, inlinedAt: !1752)
!1759 = !DILocation(line: 174, column: 9, scope: !513, inlinedAt: !1752)
!1760 = !DILocation(line: 172, column: 33, scope: !508, inlinedAt: !1752)
!1761 = !DILocation(line: 172, column: 9, scope: !508, inlinedAt: !1752)
!1762 = !DILocation(line: 514, column: 25, scope: !1753)
!1763 = !DILocation(line: 515, column: 20, scope: !1753)
!1764 = !DILocation(line: 516, column: 17, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1753, file: !1, line: 516, column: 17)
!1766 = !DILocation(line: 516, column: 37, scope: !1765)
!1767 = !DILocation(line: 516, column: 26, scope: !1765)
!1768 = !DILocation(line: 0, scope: !1648)
!1769 = distinct !{!1769, !1746, !1770}
!1770 = !DILocation(line: 518, column: 5, scope: !1648)
!1771 = !DILocation(line: 104, column: 48, scope: !307, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 519, column: 5, scope: !1648)
!1773 = !DILocation(line: 105, column: 15, scope: !307, inlinedAt: !1772)
!1774 = !DILocation(line: 105, column: 5, scope: !307, inlinedAt: !1772)
!1775 = !DILocation(line: 106, column: 5, scope: !307, inlinedAt: !1772)
!1776 = !DILocation(line: 521, column: 9, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1648, file: !1, line: 521, column: 9)
!1778 = !DILocation(line: 521, column: 9, scope: !1648)
!1779 = !DILocation(line: 522, column: 30, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1777, file: !1, line: 521, column: 18)
!1781 = !DILocation(line: 522, column: 36, scope: !1780)
!1782 = !DILocation(line: 522, column: 33, scope: !1780)
!1783 = !DILocation(line: 522, column: 9, scope: !1780)
!1784 = !DILocation(line: 523, column: 51, scope: !1780)
!1785 = !DILocation(line: 523, column: 48, scope: !1780)
!1786 = !DILocation(line: 523, column: 62, scope: !1780)
!1787 = !DILocation(line: 523, column: 66, scope: !1780)
!1788 = !DILocation(line: 523, column: 9, scope: !1780)
!1789 = !DILocation(line: 524, column: 5, scope: !1780)
!1790 = !DILocation(line: 74, column: 42, scope: !227, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 526, column: 9, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1648, file: !1, line: 526, column: 9)
!1793 = !DILocation(line: 75, column: 18, scope: !236, inlinedAt: !1791)
!1794 = !DILocation(line: 75, column: 27, scope: !236, inlinedAt: !1791)
!1795 = !DILocation(line: 75, column: 9, scope: !227, inlinedAt: !1791)
!1796 = !DILocation(line: 78, column: 9, scope: !244, inlinedAt: !1791)
!1797 = !DILocation(line: 76, column: 40, scope: !240, inlinedAt: !1791)
!1798 = !DILocation(line: 76, column: 16, scope: !240, inlinedAt: !1791)
!1799 = !DILocation(line: 526, column: 33, scope: !1792)
!1800 = !DILocation(line: 526, column: 9, scope: !1648)
!1801 = !DILocation(line: 527, column: 21, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1792, file: !1, line: 526, column: 39)
!1803 = !DILocation(line: 527, column: 27, scope: !1802)
!1804 = !DILocation(line: 527, column: 24, scope: !1802)
!1805 = !DILocation(line: 527, column: 9, scope: !1802)
!1806 = !DILocation(line: 528, column: 53, scope: !1802)
!1807 = !DILocation(line: 528, column: 50, scope: !1802)
!1808 = !DILocation(line: 528, column: 64, scope: !1802)
!1809 = !DILocation(line: 528, column: 68, scope: !1802)
!1810 = !DILocation(line: 528, column: 9, scope: !1802)
!1811 = !DILocation(line: 529, column: 5, scope: !1802)
!1812 = !DILocation(line: 531, column: 5, scope: !1648)
!1813 = !DILocation(line: 532, column: 1, scope: !1648)
!1814 = distinct !DISubprogram(name: "rpoplpushHandlePush", scope: !1, file: !1, line: 550, type: !1815, isLocal: false, isDefinition: true, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1817)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{null, !550, !89, !89, !89}
!1817 = !{!1818, !1819, !1820, !1821}
!1818 = !DILocalVariable(name: "c", arg: 1, scope: !1814, file: !1, line: 550, type: !550)
!1819 = !DILocalVariable(name: "dstkey", arg: 2, scope: !1814, file: !1, line: 550, type: !89)
!1820 = !DILocalVariable(name: "dstobj", arg: 3, scope: !1814, file: !1, line: 550, type: !89)
!1821 = !DILocalVariable(name: "value", arg: 4, scope: !1814, file: !1, line: 550, type: !89)
!1822 = !DILocation(line: 550, column: 34, scope: !1814)
!1823 = !DILocation(line: 550, column: 43, scope: !1814)
!1824 = !DILocation(line: 550, column: 57, scope: !1814)
!1825 = !DILocation(line: 550, column: 71, scope: !1814)
!1826 = !DILocation(line: 552, column: 10, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1814, file: !1, line: 552, column: 9)
!1828 = !DILocation(line: 552, column: 9, scope: !1814)
!1829 = !DILocation(line: 558, column: 26, scope: !1814)
!1830 = !DILocation(line: 553, column: 18, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1827, file: !1, line: 552, column: 18)
!1832 = !DILocation(line: 554, column: 37, scope: !1831)
!1833 = !DILocation(line: 554, column: 49, scope: !1831)
!1834 = !DILocation(line: 555, column: 36, scope: !1831)
!1835 = !DILocation(line: 554, column: 9, scope: !1831)
!1836 = !DILocation(line: 556, column: 18, scope: !1831)
!1837 = !DILocation(line: 556, column: 9, scope: !1831)
!1838 = !DILocation(line: 557, column: 5, scope: !1831)
!1839 = !DILocation(line: 558, column: 5, scope: !1814)
!1840 = !DILocation(line: 559, column: 5, scope: !1814)
!1841 = !DILocation(line: 560, column: 55, scope: !1814)
!1842 = !DILocation(line: 560, column: 59, scope: !1814)
!1843 = !DILocation(line: 560, column: 5, scope: !1814)
!1844 = !DILocation(line: 562, column: 5, scope: !1814)
!1845 = !DILocation(line: 563, column: 1, scope: !1814)
!1846 = distinct !DISubprogram(name: "rpoplpushCommand", scope: !1, file: !1, line: 565, type: !675, isLocal: false, isDefinition: true, scopeLine: 565, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1847)
!1847 = !{!1848, !1849, !1850, !1851, !1854}
!1848 = !DILocalVariable(name: "c", arg: 1, scope: !1846, file: !1, line: 565, type: !550)
!1849 = !DILocalVariable(name: "sobj", scope: !1846, file: !1, line: 566, type: !89)
!1850 = !DILocalVariable(name: "value", scope: !1846, file: !1, line: 566, type: !89)
!1851 = !DILocalVariable(name: "dobj", scope: !1852, file: !1, line: 575, type: !89)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !1, line: 574, column: 12)
!1853 = distinct !DILexicalBlock(scope: !1846, file: !1, line: 570, column: 9)
!1854 = !DILocalVariable(name: "touchedkey", scope: !1852, file: !1, line: 576, type: !89)
!1855 = !DILocation(line: 565, column: 31, scope: !1846)
!1856 = !DILocation(line: 567, column: 44, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1846, file: !1, line: 567, column: 9)
!1858 = !DILocation(line: 567, column: 41, scope: !1857)
!1859 = !DILocation(line: 567, column: 59, scope: !1857)
!1860 = !DILocation(line: 567, column: 17, scope: !1857)
!1861 = !DILocation(line: 566, column: 11, scope: !1846)
!1862 = !DILocation(line: 567, column: 70, scope: !1857)
!1863 = !DILocation(line: 567, column: 78, scope: !1857)
!1864 = !DILocation(line: 568, column: 9, scope: !1857)
!1865 = !DILocation(line: 567, column: 9, scope: !1846)
!1866 = !DILocation(line: 74, column: 42, scope: !227, inlinedAt: !1867)
!1867 = distinct !DILocation(line: 570, column: 9, scope: !1853)
!1868 = !DILocation(line: 75, column: 18, scope: !236, inlinedAt: !1867)
!1869 = !DILocation(line: 75, column: 27, scope: !236, inlinedAt: !1867)
!1870 = !DILocation(line: 75, column: 9, scope: !227, inlinedAt: !1867)
!1871 = !DILocation(line: 78, column: 9, scope: !244, inlinedAt: !1867)
!1872 = !DILocation(line: 76, column: 40, scope: !240, inlinedAt: !1867)
!1873 = !DILocation(line: 76, column: 16, scope: !240, inlinedAt: !1867)
!1874 = !DILocation(line: 570, column: 30, scope: !1853)
!1875 = !DILocation(line: 570, column: 9, scope: !1846)
!1876 = !DILocation(line: 573, column: 27, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1853, file: !1, line: 570, column: 36)
!1878 = !DILocation(line: 573, column: 9, scope: !1877)
!1879 = !DILocation(line: 574, column: 5, scope: !1877)
!1880 = !DILocation(line: 575, column: 40, scope: !1852)
!1881 = !DILocation(line: 575, column: 46, scope: !1852)
!1882 = !DILocation(line: 575, column: 43, scope: !1852)
!1883 = !DILocation(line: 575, column: 22, scope: !1852)
!1884 = !DILocation(line: 575, column: 15, scope: !1852)
!1885 = !DILocation(line: 576, column: 31, scope: !1852)
!1886 = !DILocation(line: 576, column: 28, scope: !1852)
!1887 = !DILocation(line: 576, column: 15, scope: !1852)
!1888 = !DILocation(line: 578, column: 13, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1852, file: !1, line: 578, column: 13)
!1890 = !DILocation(line: 578, column: 18, scope: !1889)
!1891 = !DILocation(line: 578, column: 21, scope: !1889)
!1892 = !DILocation(line: 578, column: 13, scope: !1852)
!1893 = !DILocation(line: 57, column: 25, scope: !183, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 579, column: 17, scope: !1852)
!1895 = !DILocation(line: 57, column: 38, scope: !183, inlinedAt: !1894)
!1896 = !DILocation(line: 58, column: 5, scope: !183, inlinedAt: !1894)
!1897 = !DILocation(line: 59, column: 5, scope: !183, inlinedAt: !1894)
!1898 = !DILocation(line: 59, column: 11, scope: !183, inlinedAt: !1894)
!1899 = !DILocation(line: 62, column: 18, scope: !200, inlinedAt: !1894)
!1900 = !DILocation(line: 62, column: 27, scope: !200, inlinedAt: !1894)
!1901 = !DILocation(line: 62, column: 9, scope: !183, inlinedAt: !1894)
!1902 = !DILocation(line: 61, column: 9, scope: !183, inlinedAt: !1894)
!1903 = !DILocation(line: 63, column: 41, scope: !207, inlinedAt: !1894)
!1904 = !DILocation(line: 63, column: 56, scope: !207, inlinedAt: !1894)
!1905 = !DILocation(line: 58, column: 15, scope: !183, inlinedAt: !1894)
!1906 = !DILocation(line: 63, column: 13, scope: !207, inlinedAt: !1894)
!1907 = !DILocation(line: 65, column: 18, scope: !213, inlinedAt: !1894)
!1908 = !DILocation(line: 63, column: 13, scope: !208, inlinedAt: !1894)
!1909 = !DILocation(line: 66, column: 56, scope: !213, inlinedAt: !1894)
!1910 = !DILocation(line: 66, column: 25, scope: !213, inlinedAt: !1894)
!1911 = !DILocation(line: 66, column: 23, scope: !213, inlinedAt: !1894)
!1912 = !DILocation(line: 66, column: 17, scope: !213, inlinedAt: !1894)
!1913 = !DILocation(line: 69, column: 9, scope: !223, inlinedAt: !1894)
!1914 = !DILocation(line: 71, column: 12, scope: !183, inlinedAt: !1894)
!1915 = !DILocation(line: 72, column: 1, scope: !183, inlinedAt: !1894)
!1916 = !DILocation(line: 566, column: 18, scope: !1846)
!1917 = !DILocation(line: 583, column: 9, scope: !1852)
!1918 = !DILocation(line: 584, column: 34, scope: !1852)
!1919 = !DILocation(line: 584, column: 31, scope: !1852)
!1920 = !DILocation(line: 584, column: 9, scope: !1852)
!1921 = !DILocation(line: 587, column: 9, scope: !1852)
!1922 = !DILocation(line: 590, column: 62, scope: !1852)
!1923 = !DILocation(line: 590, column: 66, scope: !1852)
!1924 = !DILocation(line: 590, column: 9, scope: !1852)
!1925 = !DILocation(line: 74, column: 42, scope: !227, inlinedAt: !1926)
!1926 = distinct !DILocation(line: 591, column: 13, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1852, file: !1, line: 591, column: 13)
!1928 = !DILocation(line: 75, column: 18, scope: !236, inlinedAt: !1926)
!1929 = !DILocation(line: 75, column: 27, scope: !236, inlinedAt: !1926)
!1930 = !DILocation(line: 75, column: 9, scope: !227, inlinedAt: !1926)
!1931 = !DILocation(line: 78, column: 9, scope: !244, inlinedAt: !1926)
!1932 = !DILocation(line: 76, column: 40, scope: !240, inlinedAt: !1926)
!1933 = !DILocation(line: 76, column: 16, scope: !240, inlinedAt: !1926)
!1934 = !DILocation(line: 591, column: 34, scope: !1927)
!1935 = !DILocation(line: 591, column: 13, scope: !1852)
!1936 = !DILocation(line: 592, column: 25, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1927, file: !1, line: 591, column: 40)
!1938 = !DILocation(line: 592, column: 13, scope: !1937)
!1939 = !DILocation(line: 594, column: 47, scope: !1937)
!1940 = !DILocation(line: 594, column: 51, scope: !1937)
!1941 = !DILocation(line: 593, column: 13, scope: !1937)
!1942 = !DILocation(line: 595, column: 9, scope: !1937)
!1943 = !DILocation(line: 596, column: 30, scope: !1852)
!1944 = !DILocation(line: 596, column: 9, scope: !1852)
!1945 = !DILocation(line: 597, column: 9, scope: !1852)
!1946 = !DILocation(line: 598, column: 21, scope: !1852)
!1947 = !DILocation(line: 599, column: 16, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1852, file: !1, line: 599, column: 13)
!1949 = !{!790, !127, i64 80}
!1950 = !DILocation(line: 599, column: 21, scope: !1948)
!1951 = !{!1952, !127, i64 8}
!1952 = !{!"redisCommand", !127, i64 0, !127, i64 8, !124, i64 16, !127, i64 24, !124, i64 32, !127, i64 40, !124, i64 48, !124, i64 52, !124, i64 56, !218, i64 64, !218, i64 72}
!1953 = !DILocation(line: 599, column: 26, scope: !1948)
!1954 = !DILocation(line: 599, column: 13, scope: !1852)
!1955 = !DILocation(line: 600, column: 51, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1948, file: !1, line: 599, column: 48)
!1957 = !{!807, !127, i64 336}
!1958 = !DILocation(line: 600, column: 64, scope: !1956)
!1959 = !DILocation(line: 600, column: 61, scope: !1956)
!1960 = !DILocation(line: 600, column: 72, scope: !1956)
!1961 = !DILocation(line: 600, column: 13, scope: !1956)
!1962 = !DILocation(line: 601, column: 9, scope: !1956)
!1963 = !DILocation(line: 603, column: 1, scope: !1846)
!1964 = distinct !DISubprogram(name: "brpoplpushCommand", scope: !1, file: !1, line: 750, type: !675, isLocal: false, isDefinition: true, scopeLine: 750, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1965)
!1965 = !{!1966, !1967, !1968}
!1966 = !DILocalVariable(name: "c", arg: 1, scope: !1964, file: !1, line: 750, type: !550)
!1967 = !DILocalVariable(name: "timeout", scope: !1964, file: !1, line: 751, type: !753)
!1968 = !DILocalVariable(name: "key", scope: !1964, file: !1, line: 756, type: !89)
!1969 = !DILocation(line: 750, column: 32, scope: !1964)
!1970 = !DILocation(line: 751, column: 5, scope: !1964)
!1971 = !DILocation(line: 753, column: 42, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1964, file: !1, line: 753, column: 9)
!1973 = !DILocation(line: 753, column: 39, scope: !1972)
!1974 = !DILocation(line: 751, column: 14, scope: !1964)
!1975 = !DILocation(line: 753, column: 9, scope: !1972)
!1976 = !DILocation(line: 754, column: 9, scope: !1972)
!1977 = !DILocation(line: 753, column: 9, scope: !1964)
!1978 = !DILocation(line: 756, column: 35, scope: !1964)
!1979 = !DILocation(line: 756, column: 42, scope: !1964)
!1980 = !DILocation(line: 756, column: 39, scope: !1964)
!1981 = !DILocation(line: 756, column: 17, scope: !1964)
!1982 = !DILocation(line: 756, column: 11, scope: !1964)
!1983 = !DILocation(line: 758, column: 13, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1964, file: !1, line: 758, column: 9)
!1985 = !DILocation(line: 758, column: 9, scope: !1964)
!1986 = !DILocation(line: 759, column: 16, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !1, line: 759, column: 13)
!1988 = distinct !DILexicalBlock(scope: !1984, file: !1, line: 758, column: 22)
!1989 = !{!790, !124, i64 160}
!1990 = !DILocation(line: 759, column: 22, scope: !1987)
!1991 = !DILocation(line: 759, column: 13, scope: !1988)
!1992 = !DILocation(line: 762, column: 32, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1987, file: !1, line: 759, column: 38)
!1994 = !DILocation(line: 762, column: 13, scope: !1993)
!1995 = !DILocation(line: 763, column: 9, scope: !1993)
!1996 = !DILocation(line: 765, column: 44, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1987, file: !1, line: 763, column: 16)
!1998 = !DILocation(line: 765, column: 49, scope: !1997)
!1999 = !DILocation(line: 765, column: 55, scope: !1997)
!2000 = !DILocation(line: 765, column: 63, scope: !1997)
!2001 = !DILocation(line: 765, column: 13, scope: !1997)
!2002 = !DILocation(line: 768, column: 18, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !1, line: 768, column: 13)
!2004 = distinct !DILexicalBlock(scope: !1984, file: !1, line: 767, column: 12)
!2005 = !DILocation(line: 768, column: 23, scope: !2003)
!2006 = !DILocation(line: 768, column: 13, scope: !2004)
!2007 = !DILocation(line: 769, column: 32, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2003, file: !1, line: 768, column: 36)
!2009 = !DILocation(line: 769, column: 13, scope: !2008)
!2010 = !DILocation(line: 770, column: 9, scope: !2008)
!2011 = !DILocation(line: 74, column: 42, scope: !227, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 773, column: 13, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2003, file: !1, line: 770, column: 16)
!2014 = !DILocation(line: 75, column: 18, scope: !236, inlinedAt: !2012)
!2015 = !DILocation(line: 75, column: 27, scope: !236, inlinedAt: !2012)
!2016 = !DILocation(line: 75, column: 9, scope: !227, inlinedAt: !2012)
!2017 = !DILocation(line: 78, column: 9, scope: !244, inlinedAt: !2012)
!2018 = !DILocation(line: 76, column: 40, scope: !240, inlinedAt: !2012)
!2019 = !DILocation(line: 76, column: 16, scope: !240, inlinedAt: !2012)
!2020 = !DILocation(line: 773, column: 13, scope: !2013)
!2021 = !DILocation(line: 774, column: 13, scope: !2013)
!2022 = !DILocation(line: 777, column: 1, scope: !1964)
!2023 = distinct !DISubprogram(name: "serveClientBlockedOnList", scope: !1, file: !1, line: 628, type: !2024, isLocal: false, isDefinition: true, scopeLine: 629, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2026)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!36, !550, !89, !89, !557, !89, !36}
!2026 = !{!2027, !2028, !2029, !2030, !2031, !2032, !2033, !2037, !2040}
!2027 = !DILocalVariable(name: "receiver", arg: 1, scope: !2023, file: !1, line: 628, type: !550)
!2028 = !DILocalVariable(name: "key", arg: 2, scope: !2023, file: !1, line: 628, type: !89)
!2029 = !DILocalVariable(name: "dstkey", arg: 3, scope: !2023, file: !1, line: 628, type: !89)
!2030 = !DILocalVariable(name: "db", arg: 4, scope: !2023, file: !1, line: 628, type: !557)
!2031 = !DILocalVariable(name: "value", arg: 5, scope: !2023, file: !1, line: 628, type: !89)
!2032 = !DILocalVariable(name: "where", arg: 6, scope: !2023, file: !1, line: 628, type: !36)
!2033 = !DILocalVariable(name: "argv", scope: !2023, file: !1, line: 630, type: !2034)
!2034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 192, elements: !2035)
!2035 = !{!2036}
!2036 = !DISubrange(count: 3)
!2037 = !DILocalVariable(name: "event", scope: !2038, file: !1, line: 647, type: !4)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !1, line: 632, column: 25)
!2039 = distinct !DILexicalBlock(scope: !2023, file: !1, line: 632, column: 9)
!2040 = !DILocalVariable(name: "dstobj", scope: !2041, file: !1, line: 651, type: !89)
!2041 = distinct !DILexicalBlock(scope: !2039, file: !1, line: 649, column: 12)
!2042 = !DILocation(line: 628, column: 38, scope: !2023)
!2043 = !DILocation(line: 628, column: 54, scope: !2023)
!2044 = !DILocation(line: 628, column: 65, scope: !2023)
!2045 = !DILocation(line: 628, column: 82, scope: !2023)
!2046 = !DILocation(line: 628, column: 92, scope: !2023)
!2047 = !DILocation(line: 628, column: 103, scope: !2023)
!2048 = !DILocation(line: 630, column: 5, scope: !2023)
!2049 = !DILocation(line: 630, column: 11, scope: !2023)
!2050 = !DILocation(line: 632, column: 16, scope: !2039)
!2051 = !DILocation(line: 632, column: 9, scope: !2023)
!2052 = !DILocation(line: 634, column: 26, scope: !2038)
!2053 = !DILocation(line: 634, column: 49, scope: !2038)
!2054 = !DILocation(line: 635, column: 50, scope: !2038)
!2055 = !DILocation(line: 634, column: 19, scope: !2038)
!2056 = !DILocation(line: 634, column: 9, scope: !2038)
!2057 = !DILocation(line: 634, column: 17, scope: !2038)
!2058 = !DILocation(line: 636, column: 9, scope: !2038)
!2059 = !DILocation(line: 636, column: 17, scope: !2038)
!2060 = !DILocation(line: 638, column: 20, scope: !2038)
!2061 = !DILocation(line: 638, column: 41, scope: !2038)
!2062 = !DILocation(line: 637, column: 19, scope: !2038)
!2063 = !DILocation(line: 639, column: 17, scope: !2038)
!2064 = !DILocation(line: 637, column: 9, scope: !2038)
!2065 = !DILocation(line: 642, column: 9, scope: !2038)
!2066 = !DILocation(line: 643, column: 9, scope: !2038)
!2067 = !DILocation(line: 644, column: 9, scope: !2038)
!2068 = !DILocation(line: 647, column: 23, scope: !2038)
!2069 = !DILocation(line: 647, column: 15, scope: !2038)
!2070 = !DILocation(line: 648, column: 61, scope: !2038)
!2071 = !DILocation(line: 648, column: 65, scope: !2038)
!2072 = !DILocation(line: 648, column: 9, scope: !2038)
!2073 = !DILocation(line: 649, column: 5, scope: !2038)
!2074 = !DILocation(line: 652, column: 38, scope: !2041)
!2075 = !DILocation(line: 652, column: 13, scope: !2041)
!2076 = !DILocation(line: 651, column: 15, scope: !2041)
!2077 = !DILocation(line: 653, column: 15, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2041, file: !1, line: 653, column: 13)
!2079 = !DILocation(line: 653, column: 22, scope: !2078)
!2080 = !DILocation(line: 654, column: 14, scope: !2078)
!2081 = !DILocation(line: 653, column: 13, scope: !2041)
!2082 = !DILocation(line: 657, column: 30, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2078, file: !1, line: 655, column: 9)
!2084 = !{!807, !127, i64 312}
!2085 = !DILocation(line: 657, column: 21, scope: !2083)
!2086 = !DILocation(line: 658, column: 13, scope: !2083)
!2087 = !DILocation(line: 658, column: 21, scope: !2083)
!2088 = !DILocation(line: 659, column: 30, scope: !2083)
!2089 = !{!532, !127, i64 928}
!2090 = !DILocation(line: 660, column: 21, scope: !2083)
!2091 = !DILocation(line: 660, column: 24, scope: !2083)
!2092 = !DILocation(line: 659, column: 13, scope: !2083)
!2093 = !DILocation(line: 663, column: 13, scope: !2083)
!2094 = !DILocation(line: 666, column: 30, scope: !2083)
!2095 = !{!807, !127, i64 328}
!2096 = !DILocation(line: 666, column: 21, scope: !2083)
!2097 = !DILocation(line: 667, column: 21, scope: !2083)
!2098 = !DILocation(line: 668, column: 13, scope: !2083)
!2099 = !DILocation(line: 668, column: 21, scope: !2083)
!2100 = !DILocation(line: 669, column: 30, scope: !2083)
!2101 = !{!532, !127, i64 912}
!2102 = !DILocation(line: 670, column: 21, scope: !2083)
!2103 = !DILocation(line: 669, column: 13, scope: !2083)
!2104 = !DILocation(line: 675, column: 66, scope: !2083)
!2105 = !DILocation(line: 675, column: 70, scope: !2083)
!2106 = !DILocation(line: 675, column: 13, scope: !2083)
!2107 = !DILocation(line: 0, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2078, file: !1, line: 676, column: 16)
!2109 = !DILocation(line: 683, column: 1, scope: !2023)
!2110 = distinct !DISubprogram(name: "blockingPopGenericCommand", scope: !1, file: !1, line: 686, type: !548, isLocal: false, isDefinition: true, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2111)
!2111 = !{!2112, !2113, !2114, !2115, !2116, !2117, !2127}
!2112 = !DILocalVariable(name: "c", arg: 1, scope: !2110, file: !1, line: 686, type: !550)
!2113 = !DILocalVariable(name: "where", arg: 2, scope: !2110, file: !1, line: 686, type: !36)
!2114 = !DILocalVariable(name: "o", scope: !2110, file: !1, line: 687, type: !89)
!2115 = !DILocalVariable(name: "timeout", scope: !2110, file: !1, line: 688, type: !753)
!2116 = !DILocalVariable(name: "j", scope: !2110, file: !1, line: 689, type: !36)
!2117 = !DILocalVariable(name: "event", scope: !2118, file: !1, line: 703, type: !4)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !1, line: 701, column: 45)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !1, line: 701, column: 21)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !1, line: 700, column: 20)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !1, line: 697, column: 17)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !1, line: 696, column: 24)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !1, line: 696, column: 13)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !1, line: 694, column: 37)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !1, line: 694, column: 5)
!2126 = distinct !DILexicalBlock(scope: !2110, file: !1, line: 694, column: 5)
!2127 = !DILocalVariable(name: "value", scope: !2118, file: !1, line: 704, type: !89)
!2128 = !DILocation(line: 686, column: 40, scope: !2110)
!2129 = !DILocation(line: 686, column: 47, scope: !2110)
!2130 = !DILocation(line: 688, column: 5, scope: !2110)
!2131 = !DILocation(line: 691, column: 42, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2110, file: !1, line: 691, column: 9)
!2133 = !DILocation(line: 691, column: 50, scope: !2132)
!2134 = !DILocation(line: 691, column: 54, scope: !2132)
!2135 = !DILocation(line: 691, column: 39, scope: !2132)
!2136 = !DILocation(line: 688, column: 14, scope: !2110)
!2137 = !DILocation(line: 691, column: 9, scope: !2132)
!2138 = !DILocation(line: 692, column: 9, scope: !2132)
!2139 = !DILocation(line: 691, column: 9, scope: !2110)
!2140 = !DILocation(line: 689, column: 9, scope: !2110)
!2141 = !DILocation(line: 694, column: 24, scope: !2125)
!2142 = !DILocation(line: 694, column: 19, scope: !2125)
!2143 = !DILocation(line: 694, column: 5, scope: !2126)
!2144 = !DILocation(line: 695, column: 31, scope: !2124)
!2145 = !DILocation(line: 695, column: 37, scope: !2124)
!2146 = !DILocation(line: 695, column: 34, scope: !2124)
!2147 = !DILocation(line: 695, column: 13, scope: !2124)
!2148 = !DILocation(line: 687, column: 11, scope: !2110)
!2149 = !DILocation(line: 696, column: 15, scope: !2123)
!2150 = !DILocation(line: 696, column: 13, scope: !2124)
!2151 = !DILocation(line: 697, column: 20, scope: !2121)
!2152 = !DILocation(line: 697, column: 25, scope: !2121)
!2153 = !DILocation(line: 697, column: 17, scope: !2122)
!2154 = !DILocation(line: 698, column: 35, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2121, file: !1, line: 697, column: 38)
!2156 = !DILocation(line: 698, column: 17, scope: !2155)
!2157 = !DILocation(line: 699, column: 17, scope: !2155)
!2158 = !DILocation(line: 74, column: 42, scope: !227, inlinedAt: !2159)
!2159 = distinct !DILocation(line: 701, column: 21, scope: !2119)
!2160 = !DILocation(line: 75, column: 18, scope: !236, inlinedAt: !2159)
!2161 = !DILocation(line: 75, column: 27, scope: !236, inlinedAt: !2159)
!2162 = !DILocation(line: 75, column: 9, scope: !227, inlinedAt: !2159)
!2163 = !DILocation(line: 78, column: 9, scope: !244, inlinedAt: !2159)
!2164 = !DILocation(line: 76, column: 40, scope: !240, inlinedAt: !2159)
!2165 = !DILocation(line: 76, column: 16, scope: !240, inlinedAt: !2159)
!2166 = !DILocation(line: 701, column: 39, scope: !2119)
!2167 = !DILocation(line: 701, column: 21, scope: !2120)
!2168 = !DILocation(line: 703, column: 42, scope: !2118)
!2169 = !DILocation(line: 57, column: 25, scope: !183, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 704, column: 35, scope: !2118)
!2171 = !DILocation(line: 57, column: 38, scope: !183, inlinedAt: !2170)
!2172 = !DILocation(line: 58, column: 5, scope: !183, inlinedAt: !2170)
!2173 = !DILocation(line: 59, column: 5, scope: !183, inlinedAt: !2170)
!2174 = !DILocation(line: 59, column: 11, scope: !183, inlinedAt: !2170)
!2175 = !DILocation(line: 62, column: 18, scope: !200, inlinedAt: !2170)
!2176 = !DILocation(line: 62, column: 27, scope: !200, inlinedAt: !2170)
!2177 = !DILocation(line: 62, column: 9, scope: !183, inlinedAt: !2170)
!2178 = !DILocation(line: 61, column: 26, scope: !183, inlinedAt: !2170)
!2179 = !DILocation(line: 61, column: 20, scope: !183, inlinedAt: !2170)
!2180 = !DILocation(line: 61, column: 9, scope: !183, inlinedAt: !2170)
!2181 = !DILocation(line: 63, column: 41, scope: !207, inlinedAt: !2170)
!2182 = !DILocation(line: 63, column: 56, scope: !207, inlinedAt: !2170)
!2183 = !DILocation(line: 58, column: 15, scope: !183, inlinedAt: !2170)
!2184 = !DILocation(line: 63, column: 13, scope: !207, inlinedAt: !2170)
!2185 = !DILocation(line: 65, column: 18, scope: !213, inlinedAt: !2170)
!2186 = !DILocation(line: 63, column: 13, scope: !208, inlinedAt: !2170)
!2187 = !DILocation(line: 66, column: 56, scope: !213, inlinedAt: !2170)
!2188 = !DILocation(line: 66, column: 25, scope: !213, inlinedAt: !2170)
!2189 = !DILocation(line: 66, column: 23, scope: !213, inlinedAt: !2170)
!2190 = !DILocation(line: 66, column: 17, scope: !213, inlinedAt: !2170)
!2191 = !DILocation(line: 69, column: 9, scope: !223, inlinedAt: !2170)
!2192 = !DILocation(line: 71, column: 12, scope: !183, inlinedAt: !2170)
!2193 = !DILocation(line: 72, column: 1, scope: !183, inlinedAt: !2170)
!2194 = !DILocation(line: 704, column: 27, scope: !2118)
!2195 = !DILocation(line: 705, column: 21, scope: !2118)
!2196 = !DILocation(line: 703, column: 35, scope: !2118)
!2197 = !DILocation(line: 703, column: 27, scope: !2118)
!2198 = !DILocation(line: 707, column: 21, scope: !2118)
!2199 = !DILocation(line: 708, column: 39, scope: !2118)
!2200 = !DILocation(line: 708, column: 36, scope: !2118)
!2201 = !DILocation(line: 708, column: 21, scope: !2118)
!2202 = !DILocation(line: 709, column: 21, scope: !2118)
!2203 = !DILocation(line: 710, column: 21, scope: !2118)
!2204 = !DILocation(line: 712, column: 44, scope: !2118)
!2205 = !DILocation(line: 712, column: 41, scope: !2118)
!2206 = !DILocation(line: 712, column: 55, scope: !2118)
!2207 = !DILocation(line: 712, column: 59, scope: !2118)
!2208 = !DILocation(line: 711, column: 21, scope: !2118)
!2209 = !DILocation(line: 74, column: 42, scope: !227, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 713, column: 25, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2118, file: !1, line: 713, column: 25)
!2212 = !DILocation(line: 75, column: 18, scope: !236, inlinedAt: !2210)
!2213 = !DILocation(line: 75, column: 27, scope: !236, inlinedAt: !2210)
!2214 = !DILocation(line: 75, column: 9, scope: !227, inlinedAt: !2210)
!2215 = !DILocation(line: 78, column: 9, scope: !244, inlinedAt: !2210)
!2216 = !DILocation(line: 76, column: 40, scope: !240, inlinedAt: !2210)
!2217 = !DILocation(line: 76, column: 16, scope: !240, inlinedAt: !2210)
!2218 = !DILocation(line: 713, column: 43, scope: !2211)
!2219 = !DILocation(line: 713, column: 25, scope: !2118)
!2220 = !DILocation(line: 714, column: 37, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2211, file: !1, line: 713, column: 49)
!2222 = !DILocation(line: 714, column: 43, scope: !2221)
!2223 = !DILocation(line: 714, column: 40, scope: !2221)
!2224 = !DILocation(line: 714, column: 25, scope: !2221)
!2225 = !DILocation(line: 716, column: 48, scope: !2221)
!2226 = !DILocation(line: 716, column: 45, scope: !2221)
!2227 = !DILocation(line: 716, column: 59, scope: !2221)
!2228 = !DILocation(line: 716, column: 63, scope: !2221)
!2229 = !DILocation(line: 715, column: 25, scope: !2221)
!2230 = !DILocation(line: 717, column: 21, scope: !2221)
!2231 = !DILocation(line: 718, column: 42, scope: !2118)
!2232 = !DILocation(line: 718, column: 48, scope: !2118)
!2233 = !DILocation(line: 718, column: 45, scope: !2118)
!2234 = !DILocation(line: 718, column: 21, scope: !2118)
!2235 = !DILocation(line: 719, column: 33, scope: !2118)
!2236 = !DILocation(line: 723, column: 55, scope: !2118)
!2237 = !DILocation(line: 723, column: 69, scope: !2118)
!2238 = !DILocation(line: 723, column: 25, scope: !2118)
!2239 = !DILocation(line: 724, column: 28, scope: !2118)
!2240 = !DILocation(line: 724, column: 25, scope: !2118)
!2241 = !DILocation(line: 722, column: 21, scope: !2118)
!2242 = !DILocation(line: 694, column: 33, scope: !2125)
!2243 = !DILocation(line: 694, column: 28, scope: !2125)
!2244 = distinct !{!2244, !2143, !2245}
!2245 = !DILocation(line: 729, column: 5, scope: !2126)
!2246 = !DILocation(line: 733, column: 12, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2110, file: !1, line: 733, column: 9)
!2248 = !DILocation(line: 733, column: 18, scope: !2247)
!2249 = !DILocation(line: 733, column: 9, scope: !2110)
!2250 = !DILocation(line: 734, column: 27, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2247, file: !1, line: 733, column: 34)
!2252 = !{!807, !127, i64 88}
!2253 = !DILocation(line: 734, column: 9, scope: !2251)
!2254 = !DILocation(line: 735, column: 9, scope: !2251)
!2255 = !DILocation(line: 739, column: 36, scope: !2110)
!2256 = !DILocation(line: 739, column: 41, scope: !2110)
!2257 = !DILocation(line: 739, column: 53, scope: !2110)
!2258 = !DILocation(line: 739, column: 57, scope: !2110)
!2259 = !DILocation(line: 739, column: 5, scope: !2110)
!2260 = !DILocation(line: 740, column: 1, scope: !2110)
!2261 = distinct !DISubprogram(name: "blpopCommand", scope: !1, file: !1, line: 742, type: !675, isLocal: false, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2262)
!2262 = !{!2263}
!2263 = !DILocalVariable(name: "c", arg: 1, scope: !2261, file: !1, line: 742, type: !550)
!2264 = !DILocation(line: 742, column: 27, scope: !2261)
!2265 = !DILocation(line: 743, column: 5, scope: !2261)
!2266 = !DILocation(line: 744, column: 1, scope: !2261)
!2267 = distinct !DISubprogram(name: "brpopCommand", scope: !1, file: !1, line: 746, type: !675, isLocal: false, isDefinition: true, scopeLine: 746, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2268)
!2268 = !{!2269}
!2269 = !DILocalVariable(name: "c", arg: 1, scope: !2267, file: !1, line: 746, type: !550)
!2270 = !DILocation(line: 746, column: 27, scope: !2267)
!2271 = !DILocation(line: 747, column: 5, scope: !2267)
!2272 = !DILocation(line: 748, column: 1, scope: !2267)
