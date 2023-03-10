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
@__A_VARIABLE = internal global i32 0

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !165
  %40 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !167
  %41 = bitcast i8** %40 to %struct.quicklist**, !dbg !167
  %42 = load %struct.quicklist*, %struct.quicklist** %41, align 8, !dbg !167, !tbaa !122
  tail call void @quicklistPush(%struct.quicklist* %42, i8* %13, i64 %39, i32 %10) #6, !dbg !168
  tail call void @decrRefCount(%struct.redisObject* %11) #6, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  ret void, !dbg !170

; <label>:43:                                     ; preds = %3
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !171
  tail call void @_exit(i32 1) #7, !dbg !171
  unreachable, !dbg !171
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
define dso_local i8* @listPopSaver(i8*, i32) #0 !dbg !173 {
  %3 = zext i32 %1 to i64, !dbg !181
  %4 = tail call %struct.redisObject* @createStringObject(i8* %0, i64 %3) #6, !dbg !182
  %5 = bitcast %struct.redisObject* %4 to i8*, !dbg !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !183
  ret i8* %5, !dbg !183
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @listTypePop(%struct.redisObject* nocapture readonly, i32) local_unnamed_addr #0 !dbg !184 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.redisObject*, align 8
  %5 = bitcast i64* %3 to i8*, !dbg !196
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !196
  %6 = bitcast %struct.redisObject** %4 to i8*, !dbg !197
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8, !dbg !197
  store %struct.redisObject* null, %struct.redisObject** %4, align 8, !dbg !198, !tbaa !199
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !200
  %8 = load i32, i32* %7, align 8, !dbg !200
  %9 = and i32 %8, 240, !dbg !200
  %10 = icmp eq i32 %9, 144, !dbg !202
  br i1 %10, label %11, label %26, !dbg !203

; <label>:11:                                     ; preds = %2
  %12 = icmp ne i32 %1, 0, !dbg !204
  %13 = sext i1 %12 to i32, !dbg !205
  %14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !207
  %15 = bitcast i8** %14 to %struct.quicklist**, !dbg !207
  %16 = load %struct.quicklist*, %struct.quicklist** %15, align 8, !dbg !207, !tbaa !122
  %17 = bitcast %struct.redisObject** %4 to i8**, !dbg !210
  %18 = call i32 @quicklistPopCustom(%struct.quicklist* %16, i32 %13, i8** nonnull %17, i32* null, i64* nonnull %3, i8* (i8*, i32)* nonnull @listPopSaver) #6, !dbg !212
  %19 = icmp eq i32 %18, 0, !dbg !212
  %20 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !213
  %21 = icmp ne %struct.redisObject* %20, null, !dbg !213
  %22 = or i1 %19, %21, !dbg !216
  br i1 %22, label %27, label %23, !dbg !216

; <label>:23:                                     ; preds = %11
  %24 = load i64, i64* %3, align 8, !dbg !217, !tbaa !218
  %25 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %24) #6, !dbg !220
  store %struct.redisObject* %25, %struct.redisObject** %4, align 8, !dbg !221, !tbaa !199
  br label %27, !dbg !222

; <label>:26:                                     ; preds = %2
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !223
  tail call void @_exit(i32 1) #7, !dbg !223
  unreachable, !dbg !223

; <label>:27:                                     ; preds = %11, %23
  %28 = phi %struct.redisObject* [ %20, %11 ], [ %25, %23 ], !dbg !225
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8, !dbg !226
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  ret %struct.redisObject* %28, !dbg !227
}

; Function Attrs: noredzone
declare dso_local i32 @quicklistPopCustom(%struct.quicklist*, i32, i8**, i32*, i64*, i8* (i8*, i32)*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObjectFromLongLong(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @listTypeLength(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !228 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !236
  %3 = load i32, i32* %2, align 8, !dbg !236
  %4 = and i32 %3, 240, !dbg !236
  %5 = icmp eq i32 %4, 144, !dbg !238
  br i1 %5, label %6, label %11, !dbg !239

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !240
  %8 = bitcast i8** %7 to %struct.quicklist**, !dbg !240
  %9 = load %struct.quicklist*, %struct.quicklist** %8, align 8, !dbg !240, !tbaa !122
  %10 = tail call i64 @quicklistCount(%struct.quicklist* %9) #6, !dbg !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !243
  ret i64 %10, !dbg !243

; <label>:11:                                     ; preds = %1
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !244
  tail call void @_exit(i32 1) #7, !dbg !244
  unreachable, !dbg !244
}

; Function Attrs: noredzone
declare dso_local i64 @quicklistCount(%struct.quicklist*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.listTypeIterator* @listTypeInitIterator(%struct.redisObject*, i64, i8 zeroext) local_unnamed_addr #0 !dbg !246 {
  %4 = tail call i8* @zmalloc(i64 24) #6, !dbg !278
  %5 = bitcast i8* %4 to %struct.redisObject**, !dbg !279
  store %struct.redisObject* %0, %struct.redisObject** %5, align 8, !dbg !280, !tbaa !281
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !283
  %7 = load i32, i32* %6, align 8, !dbg !283
  %8 = lshr i32 %7, 4, !dbg !283
  %9 = trunc i32 %8 to i8, !dbg !284
  %10 = and i8 %9, 15, !dbg !284
  %11 = getelementptr inbounds i8, i8* %4, i64 8, !dbg !285
  store i8 %10, i8* %11, align 8, !dbg !286, !tbaa !287
  %12 = getelementptr inbounds i8, i8* %4, i64 9, !dbg !288
  store i8 %2, i8* %12, align 1, !dbg !289, !tbaa !290
  %13 = getelementptr inbounds i8, i8* %4, i64 16, !dbg !291
  %14 = bitcast i8* %13 to %struct.quicklistIter**, !dbg !291
  store %struct.quicklistIter* null, %struct.quicklistIter** %14, align 8, !dbg !292, !tbaa !293
  %15 = icmp eq i8 %10, 9, !dbg !294
  br i1 %15, label %16, label %24, !dbg !296

; <label>:16:                                     ; preds = %3
  %17 = icmp eq i8 %2, 0, !dbg !297
  %18 = zext i1 %17 to i32, !dbg !298
  %19 = bitcast i8* %4 to %struct.listTypeIterator*, !dbg !278
  %20 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !301
  %21 = bitcast i8** %20 to %struct.quicklist**, !dbg !301
  %22 = load %struct.quicklist*, %struct.quicklist** %21, align 8, !dbg !301, !tbaa !122
  %23 = tail call %struct.quicklistIter* @quicklistGetIteratorAtIdx(%struct.quicklist* %22, i32 %18, i64 %1) #6, !dbg !303
  store %struct.quicklistIter* %23, %struct.quicklistIter** %14, align 8, !dbg !304, !tbaa !293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  ret %struct.listTypeIterator* %19, !dbg !305

; <label>:24:                                     ; preds = %3
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !306
  tail call void @_exit(i32 1) #7, !dbg !306
  unreachable, !dbg !306
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.quicklistIter* @quicklistGetIteratorAtIdx(%struct.quicklist*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @listTypeReleaseIterator(%struct.listTypeIterator*) local_unnamed_addr #0 !dbg !308 {
  %2 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %0, i64 0, i32 3, !dbg !314
  %3 = bitcast %struct.quicklistIter** %2 to i8**, !dbg !314
  %4 = load i8*, i8** %3, align 8, !dbg !314, !tbaa !293
  tail call void @zfree(i8* %4) #6, !dbg !315
  %5 = bitcast %struct.listTypeIterator* %0 to i8*, !dbg !316
  tail call void @zfree(i8* %5) #6, !dbg !317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  ret void, !dbg !318
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @listTypeNext(%struct.listTypeIterator*, %struct.listTypeEntry*) local_unnamed_addr #0 !dbg !319 {
  %3 = bitcast %struct.listTypeIterator* %0 to i32**, !dbg !343
  %4 = load i32*, i32** %3, align 8, !dbg !343, !tbaa !281
  %5 = load i32, i32* %4, align 8, !dbg !343
  %6 = lshr i32 %5, 4, !dbg !343
  %7 = and i32 %6, 15, !dbg !343
  %8 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %0, i64 0, i32 1, !dbg !343
  %9 = load i8, i8* %8, align 8, !dbg !343, !tbaa !287
  %10 = zext i8 %9 to i32, !dbg !343
  %11 = icmp eq i32 %7, %10, !dbg !343
  br i1 %11, label %13, label %12, !dbg !343

; <label>:12:                                     ; preds = %2
  tail call void @_serverAssert(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 114) #6, !dbg !343
  tail call void @_exit(i32 1) #7, !dbg !343
  unreachable, !dbg !343

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %1, i64 0, i32 0, !dbg !344
  store %struct.listTypeIterator* %0, %struct.listTypeIterator** %14, align 8, !dbg !345, !tbaa !346
  %15 = icmp eq i8 %9, 9, !dbg !349
  br i1 %15, label %16, label %21, !dbg !351

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %0, i64 0, i32 3, !dbg !352
  %18 = load %struct.quicklistIter*, %struct.quicklistIter** %17, align 8, !dbg !352, !tbaa !293
  %19 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %1, i64 0, i32 1, !dbg !354
  %20 = tail call i32 @quicklistNext(%struct.quicklistIter* %18, %struct.quicklistEntry* nonnull %19) #6, !dbg !355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  ret i32 %20, !dbg !356

; <label>:21:                                     ; preds = %13
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !357
  tail call void @_exit(i32 1) #7, !dbg !357
  unreachable, !dbg !357
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @quicklistNext(%struct.quicklistIter*, %struct.quicklistEntry*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @listTypeGet(%struct.listTypeEntry* nocapture readonly) local_unnamed_addr #0 !dbg !359 {
  %2 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 0, !dbg !367
  %3 = load %struct.listTypeIterator*, %struct.listTypeIterator** %2, align 8, !dbg !367, !tbaa !346
  %4 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %3, i64 0, i32 1, !dbg !369
  %5 = load i8, i8* %4, align 8, !dbg !369, !tbaa !287
  %6 = icmp eq i8 %5, 9, !dbg !370
  br i1 %6, label %7, label %20, !dbg !371

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 1, i32 3, !dbg !372
  %9 = load i8*, i8** %8, align 8, !dbg !372, !tbaa !375
  %10 = icmp eq i8* %9, null, !dbg !376
  br i1 %10, label %16, label %11, !dbg !377

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 1, i32 5, !dbg !378
  %13 = load i32, i32* %12, align 8, !dbg !378, !tbaa !380
  %14 = zext i32 %13 to i64, !dbg !381
  %15 = tail call %struct.redisObject* @createStringObject(i8* nonnull %9, i64 %14) #6, !dbg !382
  br label %21, !dbg !383

; <label>:16:                                     ; preds = %7
  %17 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 1, i32 4, !dbg !384
  %18 = load i64, i64* %17, align 8, !dbg !384, !tbaa !386
  %19 = tail call %struct.redisObject* @createStringObjectFromLongLong(i64 %18) #6, !dbg !387
  br label %21

; <label>:20:                                     ; preds = %1
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 136, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !388
  tail call void @_exit(i32 1) #7, !dbg !388
  unreachable, !dbg !388

; <label>:21:                                     ; preds = %11, %16
  %22 = phi %struct.redisObject* [ %15, %11 ], [ %19, %16 ], !dbg !390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  ret %struct.redisObject* %22, !dbg !391
}

; Function Attrs: noredzone nounwind
define dso_local void @listTypeInsert(%struct.listTypeEntry*, %struct.redisObject*, i32) local_unnamed_addr #0 !dbg !392 {
  %4 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 0, !dbg !406
  %5 = load %struct.listTypeIterator*, %struct.listTypeIterator** %4, align 8, !dbg !406, !tbaa !346
  %6 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %5, i64 0, i32 1, !dbg !407
  %7 = load i8, i8* %6, align 8, !dbg !407, !tbaa !287
  %8 = icmp eq i8 %7, 9, !dbg !408
  br i1 %8, label %9, label %48, !dbg !409

; <label>:9:                                      ; preds = %3
  %10 = tail call %struct.redisObject* @getDecodedObject(%struct.redisObject* %1) #6, !dbg !410
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i64 0, i32 2, !dbg !411
  %12 = load i8*, i8** %11, align 8, !dbg !411, !tbaa !122
  %13 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !415
  %14 = load i8, i8* %13, align 1, !dbg !415, !tbaa !141
  %15 = trunc i8 %14 to i3, !dbg !417
  switch i3 %15, label %37 [
    i3 0, label %16
    i3 1, label %19
    i3 2, label %23
    i3 3, label %28
    i3 -4, label %33
  ], !dbg !417

; <label>:16:                                     ; preds = %9
  %17 = lshr i8 %14, 3, !dbg !418
  %18 = zext i8 %17 to i64, !dbg !418
  br label %37, !dbg !419

; <label>:19:                                     ; preds = %9
  %20 = getelementptr inbounds i8, i8* %12, i64 -3, !dbg !420
  %21 = load i8, i8* %20, align 1, !dbg !421, !tbaa !141
  %22 = zext i8 %21 to i64, !dbg !420
  br label %37, !dbg !422

; <label>:23:                                     ; preds = %9
  %24 = getelementptr inbounds i8, i8* %12, i64 -5, !dbg !423
  %25 = bitcast i8* %24 to i16*, !dbg !424
  %26 = load i16, i16* %25, align 1, !dbg !424, !tbaa !152
  %27 = zext i16 %26 to i64, !dbg !423
  br label %37, !dbg !425

; <label>:28:                                     ; preds = %9
  %29 = getelementptr inbounds i8, i8* %12, i64 -9, !dbg !426
  %30 = bitcast i8* %29 to i32*, !dbg !427
  %31 = load i32, i32* %30, align 1, !dbg !427, !tbaa !157
  %32 = zext i32 %31 to i64, !dbg !426
  br label %37, !dbg !428

; <label>:33:                                     ; preds = %9
  %34 = getelementptr inbounds i8, i8* %12, i64 -17, !dbg !429
  %35 = bitcast i8* %34 to i64*, !dbg !430
  %36 = load i64, i64* %35, align 1, !dbg !430, !tbaa !161
  br label %37, !dbg !431

; <label>:37:                                     ; preds = %9, %16, %19, %23, %28, %33
  %38 = phi i64 [ %36, %33 ], [ %32, %28 ], [ %27, %23 ], [ %22, %19 ], [ %18, %16 ], [ 0, %9 ], !dbg !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  switch i32 %2, label %47 [
    i32 1, label %39
    i32 0, label %43
  ], !dbg !435

; <label>:39:                                     ; preds = %37
  %40 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 1, !dbg !436
  %41 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %40, i64 0, i32 0, !dbg !439
  %42 = load %struct.quicklist*, %struct.quicklist** %41, align 8, !dbg !439, !tbaa !440
  tail call void @quicklistInsertAfter(%struct.quicklist* %42, %struct.quicklistEntry* nonnull %40, i8* %12, i64 %38) #6, !dbg !441
  br label %47, !dbg !442

; <label>:43:                                     ; preds = %37
  %44 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 1, !dbg !443
  %45 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %44, i64 0, i32 0, !dbg !446
  %46 = load %struct.quicklist*, %struct.quicklist** %45, align 8, !dbg !446, !tbaa !440
  tail call void @quicklistInsertBefore(%struct.quicklist* %46, %struct.quicklistEntry* nonnull %44, i8* %12, i64 %38) #6, !dbg !447
  br label %47, !dbg !448

; <label>:47:                                     ; preds = %37, %43, %39
  tail call void @decrRefCount(%struct.redisObject* %10) #6, !dbg !449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  ret void, !dbg !450

; <label>:48:                                     ; preds = %3
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 155, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !451
  tail call void @_exit(i32 1) #7, !dbg !451
  unreachable, !dbg !451
}

; Function Attrs: noredzone
declare dso_local void @quicklistInsertAfter(%struct.quicklist*, %struct.quicklistEntry*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @quicklistInsertBefore(%struct.quicklist*, %struct.quicklistEntry*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @listTypeEqual(%struct.listTypeEntry* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !453 {
  %3 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 0, !dbg !461
  %4 = load %struct.listTypeIterator*, %struct.listTypeIterator** %3, align 8, !dbg !461, !tbaa !346
  %5 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %4, i64 0, i32 1, !dbg !463
  %6 = load i8, i8* %5, align 8, !dbg !463, !tbaa !287
  %7 = icmp eq i8 %6, 9, !dbg !464
  br i1 %7, label %8, label %47, !dbg !465

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !466
  %10 = load i32, i32* %9, align 8, !dbg !466
  %11 = lshr i32 %10, 4, !dbg !466
  %12 = trunc i32 %11 to i4, !dbg !466
  switch i4 %12, label %13 [
    i4 0, label %14
    i4 -8, label %14
  ], !dbg !466

; <label>:13:                                     ; preds = %8
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 162) #6, !dbg !466
  tail call void @_exit(i32 1) #7, !dbg !466
  unreachable, !dbg !466

; <label>:14:                                     ; preds = %8, %8
  %15 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 1, i32 2, !dbg !468
  %16 = load i8*, i8** %15, align 8, !dbg !468, !tbaa !469
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !470
  %18 = load i8*, i8** %17, align 8, !dbg !470, !tbaa !122
  %19 = getelementptr inbounds i8, i8* %18, i64 -1, !dbg !473
  %20 = load i8, i8* %19, align 1, !dbg !473, !tbaa !141
  %21 = trunc i8 %20 to i3, !dbg !475
  switch i3 %21, label %43 [
    i3 0, label %22
    i3 1, label %25
    i3 2, label %29
    i3 3, label %34
    i3 -4, label %39
  ], !dbg !475

; <label>:22:                                     ; preds = %14
  %23 = lshr i8 %20, 3, !dbg !476
  %24 = zext i8 %23 to i64, !dbg !476
  br label %43, !dbg !477

; <label>:25:                                     ; preds = %14
  %26 = getelementptr inbounds i8, i8* %18, i64 -3, !dbg !478
  %27 = load i8, i8* %26, align 1, !dbg !479, !tbaa !141
  %28 = zext i8 %27 to i64, !dbg !478
  br label %43, !dbg !480

; <label>:29:                                     ; preds = %14
  %30 = getelementptr inbounds i8, i8* %18, i64 -5, !dbg !481
  %31 = bitcast i8* %30 to i16*, !dbg !482
  %32 = load i16, i16* %31, align 1, !dbg !482, !tbaa !152
  %33 = zext i16 %32 to i64, !dbg !481
  br label %43, !dbg !483

; <label>:34:                                     ; preds = %14
  %35 = getelementptr inbounds i8, i8* %18, i64 -9, !dbg !484
  %36 = bitcast i8* %35 to i32*, !dbg !485
  %37 = load i32, i32* %36, align 1, !dbg !485, !tbaa !157
  %38 = zext i32 %37 to i64, !dbg !484
  br label %43, !dbg !486

; <label>:39:                                     ; preds = %14
  %40 = getelementptr inbounds i8, i8* %18, i64 -17, !dbg !487
  %41 = bitcast i8* %40 to i64*, !dbg !488
  %42 = load i64, i64* %41, align 1, !dbg !488, !tbaa !161
  br label %43, !dbg !489

; <label>:43:                                     ; preds = %14, %22, %25, %29, %34, %39
  %44 = phi i64 [ %42, %39 ], [ %38, %34 ], [ %33, %29 ], [ %28, %25 ], [ %24, %22 ], [ 0, %14 ], !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  %45 = trunc i64 %44 to i32, !dbg !492
  %46 = tail call i32 @quicklistCompare(i8* %16, i8* %18, i32 %45) #6, !dbg !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !494
  ret i32 %46, !dbg !494

; <label>:47:                                     ; preds = %2
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 165, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !495
  tail call void @_exit(i32 1) #7, !dbg !495
  unreachable, !dbg !495
}

; Function Attrs: noredzone
declare dso_local void @_serverAssertWithInfo(%struct.client*, %struct.redisObject*, i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @quicklistCompare(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @listTypeDelete(%struct.listTypeIterator* nocapture readonly, %struct.listTypeEntry*) local_unnamed_addr #0 !dbg !497 {
  %3 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %1, i64 0, i32 0, !dbg !505
  %4 = load %struct.listTypeIterator*, %struct.listTypeIterator** %3, align 8, !dbg !505, !tbaa !346
  %5 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %4, i64 0, i32 1, !dbg !507
  %6 = load i8, i8* %5, align 8, !dbg !507, !tbaa !287
  %7 = icmp eq i8 %6, 9, !dbg !508
  br i1 %7, label %8, label %12, !dbg !509

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %0, i64 0, i32 3, !dbg !510
  %10 = load %struct.quicklistIter*, %struct.quicklistIter** %9, align 8, !dbg !510, !tbaa !293
  %11 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %1, i64 0, i32 1, !dbg !512
  tail call void @quicklistDelEntry(%struct.quicklistIter* %10, %struct.quicklistEntry* nonnull %11) #6, !dbg !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  ret void, !dbg !514

; <label>:12:                                     ; preds = %2
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 174, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !515
  tail call void @_exit(i32 1) #7, !dbg !515
  unreachable, !dbg !515
}

; Function Attrs: noredzone
declare dso_local void @quicklistDelEntry(%struct.quicklistIter*, %struct.quicklistEntry*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @listTypeConvert(%struct.redisObject*, i32) local_unnamed_addr #0 !dbg !517 {
  %3 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !529
  %4 = load i32, i32* %3, align 8, !dbg !529
  %5 = and i32 %4, 15, !dbg !529
  %6 = icmp eq i32 %5, 1, !dbg !529
  br i1 %6, label %8, label %7, !dbg !529

; <label>:7:                                      ; preds = %2
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 180) #6, !dbg !529
  tail call void @_exit(i32 1) #7, !dbg !529
  unreachable, !dbg !529

; <label>:8:                                      ; preds = %2
  %9 = and i32 %4, 240, !dbg !530
  %10 = icmp eq i32 %9, 80, !dbg !530
  br i1 %10, label %12, label %11, !dbg !530

; <label>:11:                                     ; preds = %8
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 181) #6, !dbg !530
  tail call void @_exit(i32 1) #7, !dbg !530
  unreachable, !dbg !530

; <label>:12:                                     ; preds = %8
  %13 = icmp eq i32 %1, 9, !dbg !531
  br i1 %13, label %14, label %24, !dbg !532

; <label>:14:                                     ; preds = %12
  %15 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 249), align 8, !dbg !533, !tbaa !534
  %16 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 250), align 4, !dbg !540, !tbaa !541
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !543
  %18 = load i8*, i8** %17, align 8, !dbg !543, !tbaa !122
  %19 = tail call %struct.quicklist* @quicklistCreateFromZiplist(i32 %15, i32 %16, i8* %18) #6, !dbg !544
  %20 = bitcast i8** %17 to %struct.quicklist**, !dbg !545
  store %struct.quicklist* %19, %struct.quicklist** %20, align 8, !dbg !545, !tbaa !122
  %21 = load i32, i32* %3, align 8, !dbg !546
  %22 = and i32 %21, -241, !dbg !546
  %23 = or i32 %22, 144, !dbg !546
  store i32 %23, i32* %3, align 8, !dbg !546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  ret void, !dbg !547

; <label>:24:                                     ; preds = %12
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 189, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !548
  tail call void @_exit(i32 1) #7, !dbg !548
  unreachable, !dbg !548
}

; Function Attrs: noredzone
declare dso_local %struct.quicklist* @quicklistCreateFromZiplist(i32, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @pushGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !550 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !791
  %4 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !791, !tbaa !792
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !796
  %6 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !796, !tbaa !797
  %7 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 1, !dbg !798
  %8 = load %struct.redisObject*, %struct.redisObject** %7, align 8, !dbg !798, !tbaa !199
  %9 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %4, %struct.redisObject* %8) #6, !dbg !799
  %10 = icmp eq %struct.redisObject* %9, null, !dbg !801
  br i1 %10, label %18, label %11, !dbg !803

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %9, i64 0, i32 0, !dbg !804
  %13 = load i32, i32* %12, align 8, !dbg !804
  %14 = and i32 %13, 15, !dbg !804
  %15 = icmp eq i32 %14, 1, !dbg !805
  br i1 %15, label %18, label %16, !dbg !806

; <label>:16:                                     ; preds = %11
  %17 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !807, !tbaa !809
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %17) #6, !dbg !811
  br label %84, !dbg !812

; <label>:18:                                     ; preds = %11, %2
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !814
  %20 = load i32, i32* %19, align 8, !dbg !814, !tbaa !817
  %21 = icmp sgt i32 %20, 2, !dbg !818
  br i1 %21, label %22, label %49, !dbg !819

; <label>:22:                                     ; preds = %18, %38
  %23 = phi i64 [ %44, %38 ], [ 2, %18 ]
  %24 = phi i1 [ %48, %38 ], [ %10, %18 ]
  %25 = phi %struct.redisObject* [ %39, %38 ], [ %9, %18 ]
  %26 = phi i32 [ %43, %38 ], [ 0, %18 ]
  br i1 %24, label %27, label %38, !dbg !820

; <label>:27:                                     ; preds = %22
  %28 = tail call %struct.redisObject* @createQuicklistObject() #6, !dbg !822
  %29 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %28, i64 0, i32 2, !dbg !825
  %30 = bitcast i8** %29 to %struct.quicklist**, !dbg !825
  %31 = load %struct.quicklist*, %struct.quicklist** %30, align 8, !dbg !825, !tbaa !122
  %32 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 249), align 8, !dbg !826, !tbaa !534
  %33 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 250), align 4, !dbg !827, !tbaa !541
  tail call void @quicklistSetOptions(%struct.quicklist* %31, i32 %32, i32 %33) #6, !dbg !828
  %34 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !829, !tbaa !792
  %35 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !830, !tbaa !797
  %36 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %35, i64 1, !dbg !831
  %37 = load %struct.redisObject*, %struct.redisObject** %36, align 8, !dbg !831, !tbaa !199
  tail call void @dbAdd(%struct.redisDb* %34, %struct.redisObject* %37, %struct.redisObject* %28) #6, !dbg !832
  br label %38, !dbg !833

; <label>:38:                                     ; preds = %22, %27
  %39 = phi %struct.redisObject* [ %25, %22 ], [ %28, %27 ], !dbg !834
  %40 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !835, !tbaa !797
  %41 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %40, i64 %23, !dbg !836
  %42 = load %struct.redisObject*, %struct.redisObject** %41, align 8, !dbg !836, !tbaa !199
  tail call void @listTypePush(%struct.redisObject* %39, %struct.redisObject* %42, i32 %1) #9, !dbg !837
  %43 = add nuw nsw i32 %26, 1, !dbg !838
  %44 = add nuw nsw i64 %23, 1, !dbg !839
  %45 = load i32, i32* %19, align 8, !dbg !814, !tbaa !817
  %46 = sext i32 %45 to i64, !dbg !818
  %47 = icmp slt i64 %44, %46, !dbg !818
  %48 = icmp eq %struct.redisObject* %39, null, !dbg !840
  br i1 %47, label %22, label %49, !dbg !819, !llvm.loop !841

; <label>:49:                                     ; preds = %38, %18
  %50 = phi i32 [ 0, %18 ], [ %43, %38 ], !dbg !843
  %51 = phi %struct.redisObject* [ %9, %18 ], [ %39, %38 ], !dbg !800
  %52 = phi i1 [ %10, %18 ], [ %48, %38 ], !dbg !840
  br i1 %52, label %64, label %53, !dbg !844

; <label>:53:                                     ; preds = %49
  %54 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %51, i64 0, i32 0, !dbg !847
  %55 = load i32, i32* %54, align 8, !dbg !847
  %56 = and i32 %55, 240, !dbg !847
  %57 = icmp eq i32 %56, 144, !dbg !848
  br i1 %57, label %59, label %58, !dbg !849

; <label>:58:                                     ; preds = %53
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !850
  tail call void @_exit(i32 1) #7, !dbg !850
  unreachable, !dbg !850

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %51, i64 0, i32 2, !dbg !851
  %61 = bitcast i8** %60 to %struct.quicklist**, !dbg !851
  %62 = load %struct.quicklist*, %struct.quicklist** %61, align 8, !dbg !851, !tbaa !122
  %63 = tail call i64 @quicklistCount(%struct.quicklist* %62) #6, !dbg !852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !853
  br label %64, !dbg !844

; <label>:64:                                     ; preds = %49, %59
  %65 = phi i64 [ %63, %59 ], [ 0, %49 ], !dbg !844
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %65) #6, !dbg !854
  %66 = icmp eq i32 %50, 0, !dbg !855
  br i1 %66, label %80, label %67, !dbg !856

; <label>:67:                                     ; preds = %64
  %68 = icmp eq i32 %1, 0, !dbg !857
  %69 = select i1 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), !dbg !858
  %70 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !860, !tbaa !792
  %71 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !861, !tbaa !797
  %72 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %71, i64 1, !dbg !862
  %73 = load %struct.redisObject*, %struct.redisObject** %72, align 8, !dbg !862, !tbaa !199
  tail call void @signalModifiedKey(%struct.redisDb* %70, %struct.redisObject* %73) #6, !dbg !863
  %74 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !864, !tbaa !797
  %75 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %74, i64 1, !dbg !865
  %76 = load %struct.redisObject*, %struct.redisObject** %75, align 8, !dbg !865, !tbaa !199
  %77 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !866, !tbaa !792
  %78 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %77, i64 0, i32 5, !dbg !867
  %79 = load i32, i32* %78, align 8, !dbg !867, !tbaa !868
  tail call void @notifyKeyspaceEvent(i32 16, i8* %69, %struct.redisObject* %76, i32 %79) #6, !dbg !870
  br label %80, !dbg !871

; <label>:80:                                     ; preds = %64, %67
  %81 = zext i32 %50 to i64, !dbg !872
  %82 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !873, !tbaa !874
  %83 = add nsw i64 %82, %81, !dbg !873
  store i64 %83, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !873, !tbaa !874
  br label %84, !dbg !875

; <label>:84:                                     ; preds = %80, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  ret void, !dbg !875
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
define dso_local void @lpushCommand(%struct.client*) local_unnamed_addr #0 !dbg !876 {
  tail call void @pushGenericCommand(%struct.client* %0, i32 0) #9, !dbg !880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  ret void, !dbg !881
}

; Function Attrs: noredzone nounwind
define dso_local void @rpushCommand(%struct.client*) local_unnamed_addr #0 !dbg !882 {
  tail call void @pushGenericCommand(%struct.client* %0, i32 1) #9, !dbg !886
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !887
  ret void, !dbg !887
}

; Function Attrs: noredzone nounwind
define dso_local void @pushxGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !888 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !901
  %4 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !901, !tbaa !797
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 1, !dbg !903
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !903, !tbaa !199
  %7 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !904, !tbaa !905
  %8 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* %0, %struct.redisObject* %6, %struct.redisObject* %7) #6, !dbg !906
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !908
  br i1 %9, label %59, label %10, !dbg !909

; <label>:10:                                     ; preds = %2
  %11 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %8, i32 1) #6, !dbg !910
  %12 = icmp eq i32 %11, 0, !dbg !910
  br i1 %12, label %13, label %59, !dbg !911

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !913
  %15 = load i32, i32* %14, align 8, !dbg !913, !tbaa !817
  %16 = icmp sgt i32 %15, 2, !dbg !916
  br i1 %16, label %17, label %28, !dbg !917

; <label>:17:                                     ; preds = %13, %17
  %18 = phi i64 [ %24, %17 ], [ 2, %13 ]
  %19 = phi i32 [ %23, %17 ], [ 0, %13 ]
  %20 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !918, !tbaa !797
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 %18, !dbg !920
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !920, !tbaa !199
  tail call void @listTypePush(%struct.redisObject* nonnull %8, %struct.redisObject* %22, i32 %1) #9, !dbg !921
  %23 = add nuw nsw i32 %19, 1, !dbg !922
  %24 = add nuw nsw i64 %18, 1, !dbg !923
  %25 = load i32, i32* %14, align 8, !dbg !913, !tbaa !817
  %26 = sext i32 %25 to i64, !dbg !916
  %27 = icmp slt i64 %24, %26, !dbg !916
  br i1 %27, label %17, label %28, !dbg !917, !llvm.loop !924

; <label>:28:                                     ; preds = %17, %13
  %29 = phi i32 [ 0, %13 ], [ %23, %17 ], !dbg !926
  %30 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 0, !dbg !929
  %31 = load i32, i32* %30, align 8, !dbg !929
  %32 = and i32 %31, 240, !dbg !929
  %33 = icmp eq i32 %32, 144, !dbg !930
  br i1 %33, label %35, label %34, !dbg !931

; <label>:34:                                     ; preds = %28
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !932
  tail call void @_exit(i32 1) #7, !dbg !932
  unreachable, !dbg !932

; <label>:35:                                     ; preds = %28
  %36 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !933
  %37 = bitcast i8** %36 to %struct.quicklist**, !dbg !933
  %38 = load %struct.quicklist*, %struct.quicklist** %37, align 8, !dbg !933, !tbaa !122
  %39 = tail call i64 @quicklistCount(%struct.quicklist* %38) #6, !dbg !934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %39) #6, !dbg !936
  %40 = icmp eq i32 %29, 0, !dbg !937
  br i1 %40, label %55, label %41, !dbg !938

; <label>:41:                                     ; preds = %35
  %42 = icmp eq i32 %1, 0, !dbg !939
  %43 = select i1 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), !dbg !940
  %44 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !942
  %45 = load %struct.redisDb*, %struct.redisDb** %44, align 8, !dbg !942, !tbaa !792
  %46 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !943, !tbaa !797
  %47 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %46, i64 1, !dbg !944
  %48 = load %struct.redisObject*, %struct.redisObject** %47, align 8, !dbg !944, !tbaa !199
  tail call void @signalModifiedKey(%struct.redisDb* %45, %struct.redisObject* %48) #6, !dbg !945
  %49 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !946, !tbaa !797
  %50 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %49, i64 1, !dbg !947
  %51 = load %struct.redisObject*, %struct.redisObject** %50, align 8, !dbg !947, !tbaa !199
  %52 = load %struct.redisDb*, %struct.redisDb** %44, align 8, !dbg !948, !tbaa !792
  %53 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %52, i64 0, i32 5, !dbg !949
  %54 = load i32, i32* %53, align 8, !dbg !949, !tbaa !868
  tail call void @notifyKeyspaceEvent(i32 16, i8* %43, %struct.redisObject* %51, i32 %54) #6, !dbg !950
  br label %55, !dbg !951

; <label>:55:                                     ; preds = %35, %41
  %56 = zext i32 %29 to i64, !dbg !952
  %57 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !953, !tbaa !874
  %58 = add nsw i64 %57, %56, !dbg !953
  store i64 %58, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !953, !tbaa !874
  br label %59, !dbg !954

; <label>:59:                                     ; preds = %2, %10, %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !954
  ret void, !dbg !954
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyWriteOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @checkType(%struct.client*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lpushxCommand(%struct.client*) local_unnamed_addr #0 !dbg !955 {
  tail call void @pushxGenericCommand(%struct.client* %0, i32 0) #9, !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !960
  ret void, !dbg !960
}

; Function Attrs: noredzone nounwind
define dso_local void @rpushxCommand(%struct.client*) local_unnamed_addr #0 !dbg !961 {
  tail call void @pushxGenericCommand(%struct.client* %0, i32 1) #9, !dbg !965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !966
  ret void, !dbg !966
}

; Function Attrs: noredzone nounwind
define dso_local void @linsertCommand(%struct.client*) local_unnamed_addr #0 !dbg !967 {
  %2 = alloca %struct.listTypeEntry, align 8
  %3 = bitcast %struct.listTypeEntry* %2 to i8*, !dbg !976
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #8, !dbg !976
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !978
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !978, !tbaa !797
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 2, !dbg !980
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !980, !tbaa !199
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !981
  %9 = load i8*, i8** %8, align 8, !dbg !981, !tbaa !122
  %10 = tail call i32 @strcasecmp(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !982
  %11 = icmp eq i32 %10, 0, !dbg !983
  br i1 %11, label %17, label %12, !dbg !984

; <label>:12:                                     ; preds = %1
  %13 = tail call i32 @strcasecmp(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !985
  %14 = icmp eq i32 %13, 0, !dbg !987
  br i1 %14, label %17, label %15, !dbg !988

; <label>:15:                                     ; preds = %12
  %16 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !989, !tbaa !991
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %16) #6, !dbg !992
  br label %101, !dbg !993

; <label>:17:                                     ; preds = %12, %1
  %18 = phi i32 [ 1, %1 ], [ 0, %12 ], !dbg !994
  %19 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !997
  %20 = load %struct.redisObject*, %struct.redisObject** %19, align 8, !dbg !997, !tbaa !199
  %21 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !999, !tbaa !905
  %22 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* nonnull %0, %struct.redisObject* %20, %struct.redisObject* %21) #6, !dbg !1000
  %23 = icmp eq %struct.redisObject* %22, null, !dbg !1002
  br i1 %23, label %101, label %24, !dbg !1003

; <label>:24:                                     ; preds = %17
  %25 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %22, i32 1) #6, !dbg !1004
  %26 = icmp eq i32 %25, 0, !dbg !1004
  br i1 %26, label %27, label %101, !dbg !1005

; <label>:27:                                     ; preds = %24
  %28 = tail call i8* @zmalloc(i64 24) #6, !dbg !1010
  %29 = bitcast i8* %28 to %struct.redisObject**, !dbg !1011
  store %struct.redisObject* %22, %struct.redisObject** %29, align 8, !dbg !1012, !tbaa !281
  %30 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %22, i64 0, i32 0, !dbg !1013
  %31 = load i32, i32* %30, align 8, !dbg !1013
  %32 = lshr i32 %31, 4, !dbg !1013
  %33 = trunc i32 %32 to i8, !dbg !1014
  %34 = and i8 %33, 15, !dbg !1014
  %35 = getelementptr inbounds i8, i8* %28, i64 8, !dbg !1015
  store i8 %34, i8* %35, align 8, !dbg !1016, !tbaa !287
  %36 = getelementptr inbounds i8, i8* %28, i64 9, !dbg !1017
  store i8 1, i8* %36, align 1, !dbg !1018, !tbaa !290
  %37 = getelementptr inbounds i8, i8* %28, i64 16, !dbg !1019
  %38 = bitcast i8* %37 to %struct.quicklistIter**, !dbg !1019
  store %struct.quicklistIter* null, %struct.quicklistIter** %38, align 8, !dbg !1020, !tbaa !293
  %39 = icmp eq i8 %34, 9, !dbg !1021
  br i1 %39, label %41, label %40, !dbg !1022

; <label>:40:                                     ; preds = %27
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1023
  tail call void @_exit(i32 1) #7, !dbg !1023
  unreachable, !dbg !1023

; <label>:41:                                     ; preds = %27
  %42 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %22, i64 0, i32 2, !dbg !1026
  %43 = bitcast i8** %42 to %struct.quicklist**, !dbg !1026
  %44 = load %struct.quicklist*, %struct.quicklist** %43, align 8, !dbg !1026, !tbaa !122
  %45 = tail call %struct.quicklistIter* @quicklistGetIteratorAtIdx(%struct.quicklist* %44, i32 0, i64 0) #6, !dbg !1027
  store %struct.quicklistIter* %45, %struct.quicklistIter** %38, align 8, !dbg !1028, !tbaa !293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1029
  %46 = bitcast i8* %28 to i32**
  %47 = bitcast %struct.listTypeEntry* %2 to i8**
  %48 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %2, i64 0, i32 1
  br label %49, !dbg !1031

; <label>:49:                                     ; preds = %65, %41
  %50 = load i32*, i32** %46, align 8, !dbg !1036, !tbaa !281
  %51 = load i32, i32* %50, align 8, !dbg !1036
  %52 = lshr i32 %51, 4, !dbg !1036
  %53 = and i32 %52, 15, !dbg !1036
  %54 = load i8, i8* %35, align 8, !dbg !1036, !tbaa !287
  %55 = zext i8 %54 to i32, !dbg !1036
  %56 = icmp eq i32 %53, %55, !dbg !1036
  br i1 %56, label %58, label %57, !dbg !1036

; <label>:57:                                     ; preds = %49
  call void @_serverAssert(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 114) #6, !dbg !1036
  call void @_exit(i32 1) #7, !dbg !1036
  unreachable, !dbg !1036

; <label>:58:                                     ; preds = %49
  store i8* %28, i8** %47, align 8, !dbg !1037, !tbaa !346
  %59 = icmp eq i8 %54, 9, !dbg !1038
  br i1 %59, label %61, label %60, !dbg !1039

; <label>:60:                                     ; preds = %58
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1040
  call void @_exit(i32 1) #7, !dbg !1040
  unreachable, !dbg !1040

; <label>:61:                                     ; preds = %58
  %62 = load %struct.quicklistIter*, %struct.quicklistIter** %38, align 8, !dbg !1041, !tbaa !293
  %63 = call i32 @quicklistNext(%struct.quicklistIter* %62, %struct.quicklistEntry* nonnull %48) #6, !dbg !1042
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1043
  %64 = icmp eq i32 %63, 0, !dbg !1031
  br i1 %64, label %97, label %65, !dbg !1031

; <label>:65:                                     ; preds = %61
  %66 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1044, !tbaa !797
  %67 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %66, i64 3, !dbg !1047
  %68 = load %struct.redisObject*, %struct.redisObject** %67, align 8, !dbg !1047, !tbaa !199
  %69 = call i32 @listTypeEqual(%struct.listTypeEntry* nonnull %2, %struct.redisObject* %68) #9, !dbg !1048
  %70 = icmp eq i32 %69, 0, !dbg !1048
  br i1 %70, label %49, label %71, !dbg !1049, !llvm.loop !1050

; <label>:71:                                     ; preds = %65
  %72 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1052, !tbaa !797
  %73 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %72, i64 4, !dbg !1054
  %74 = load %struct.redisObject*, %struct.redisObject** %73, align 8, !dbg !1054, !tbaa !199
  call void @listTypeInsert(%struct.listTypeEntry* nonnull %2, %struct.redisObject* %74, i32 %18) #9, !dbg !1055
  %75 = bitcast i8* %37 to i8**, !dbg !1058
  %76 = load i8*, i8** %75, align 8, !dbg !1058, !tbaa !293
  call void @zfree(i8* %76) #6, !dbg !1059
  call void @zfree(i8* nonnull %28) #6, !dbg !1060
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1061
  %77 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1062
  %78 = load %struct.redisDb*, %struct.redisDb** %77, align 8, !dbg !1062, !tbaa !792
  %79 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1065, !tbaa !797
  %80 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %79, i64 1, !dbg !1066
  %81 = load %struct.redisObject*, %struct.redisObject** %80, align 8, !dbg !1066, !tbaa !199
  call void @signalModifiedKey(%struct.redisDb* %78, %struct.redisObject* %81) #6, !dbg !1067
  %82 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1068, !tbaa !797
  %83 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %82, i64 1, !dbg !1069
  %84 = load %struct.redisObject*, %struct.redisObject** %83, align 8, !dbg !1069, !tbaa !199
  %85 = load %struct.redisDb*, %struct.redisDb** %77, align 8, !dbg !1070, !tbaa !792
  %86 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %85, i64 0, i32 5, !dbg !1071
  %87 = load i32, i32* %86, align 8, !dbg !1071, !tbaa !868
  call void @notifyKeyspaceEvent(i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), %struct.redisObject* %84, i32 %87) #6, !dbg !1072
  %88 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1073, !tbaa !874
  %89 = add nsw i64 %88, 1, !dbg !1073
  store i64 %89, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1073, !tbaa !874
  %90 = load i32, i32* %30, align 8, !dbg !1076
  %91 = and i32 %90, 240, !dbg !1076
  %92 = icmp eq i32 %91, 144, !dbg !1077
  br i1 %92, label %94, label %93, !dbg !1078

; <label>:93:                                     ; preds = %71
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1079
  call void @_exit(i32 1) #7, !dbg !1079
  unreachable, !dbg !1079

; <label>:94:                                     ; preds = %71
  %95 = load %struct.quicklist*, %struct.quicklist** %43, align 8, !dbg !1080, !tbaa !122
  %96 = call i64 @quicklistCount(%struct.quicklist* %95) #6, !dbg !1081
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1082
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %96) #6, !dbg !1083
  br label %101, !dbg !1084

; <label>:97:                                     ; preds = %61
  %98 = bitcast i8* %37 to i8**, !dbg !1087
  %99 = load i8*, i8** %98, align 8, !dbg !1087, !tbaa !293
  call void @zfree(i8* %99) #6, !dbg !1088
  call void @zfree(i8* nonnull %28) #6, !dbg !1089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1090
  %100 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 6), align 8, !dbg !1091, !tbaa !1093
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %100) #6, !dbg !1094
  br label %101, !dbg !1095

; <label>:101:                                    ; preds = %17, %24, %94, %97, %15
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #8, !dbg !1084
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1084
  ret void, !dbg !1084
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @llenCommand(%struct.client*) local_unnamed_addr #0 !dbg !1096 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1101
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1101, !tbaa !797
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !1102
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !1102, !tbaa !199
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1103, !tbaa !905
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #6, !dbg !1104
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !1106
  br i1 %8, label %23, label %9, !dbg !1108

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 1) #6, !dbg !1109
  %11 = icmp eq i32 %10, 0, !dbg !1109
  br i1 %11, label %12, label %23, !dbg !1110

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 0, !dbg !1113
  %14 = load i32, i32* %13, align 8, !dbg !1113
  %15 = and i32 %14, 240, !dbg !1113
  %16 = icmp eq i32 %15, 144, !dbg !1114
  br i1 %16, label %18, label %17, !dbg !1115

; <label>:17:                                     ; preds = %12
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1116
  tail call void @_exit(i32 1) #7, !dbg !1116
  unreachable, !dbg !1116

; <label>:18:                                     ; preds = %12
  %19 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !1117
  %20 = bitcast i8** %19 to %struct.quicklist**, !dbg !1117
  %21 = load %struct.quicklist*, %struct.quicklist** %20, align 8, !dbg !1117, !tbaa !122
  %22 = tail call i64 @quicklistCount(%struct.quicklist* %21) #6, !dbg !1118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1119
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %22) #6, !dbg !1120
  br label %23, !dbg !1121

; <label>:23:                                     ; preds = %1, %9, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1121
  ret void, !dbg !1121
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyReadOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lindexCommand(%struct.client*) local_unnamed_addr #0 !dbg !1122 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.quicklistEntry, align 8
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1132
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1132, !tbaa !797
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !1133
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1133, !tbaa !199
  %8 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1134, !tbaa !1135
  %9 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %7, %struct.redisObject* %8) #6, !dbg !1136
  %10 = icmp eq %struct.redisObject* %9, null, !dbg !1138
  br i1 %10, label %54, label %11, !dbg !1140

; <label>:11:                                     ; preds = %1
  %12 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %9, i32 1) #6, !dbg !1141
  %13 = icmp eq i32 %12, 0, !dbg !1141
  br i1 %13, label %14, label %54, !dbg !1142

; <label>:14:                                     ; preds = %11
  %15 = bitcast i64* %2 to i8*, !dbg !1143
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #8, !dbg !1143
  %16 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1145, !tbaa !797
  %17 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 2, !dbg !1147
  %18 = load %struct.redisObject*, %struct.redisObject** %17, align 8, !dbg !1147, !tbaa !199
  %19 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %18, i64* nonnull %2, i8* null) #6, !dbg !1149
  %20 = icmp eq i32 %19, 0, !dbg !1150
  br i1 %20, label %21, label %53, !dbg !1151

; <label>:21:                                     ; preds = %14
  %22 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %9, i64 0, i32 0, !dbg !1152
  %23 = load i32, i32* %22, align 8, !dbg !1152
  %24 = and i32 %23, 240, !dbg !1152
  %25 = icmp eq i32 %24, 144, !dbg !1153
  br i1 %25, label %26, label %52, !dbg !1154

; <label>:26:                                     ; preds = %21
  %27 = bitcast %struct.quicklistEntry* %3 to i8*, !dbg !1155
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %27) #8, !dbg !1155
  %28 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %9, i64 0, i32 2, !dbg !1156
  %29 = bitcast i8** %28 to %struct.quicklist**, !dbg !1156
  %30 = load %struct.quicklist*, %struct.quicklist** %29, align 8, !dbg !1156, !tbaa !122
  %31 = load i64, i64* %2, align 8, !dbg !1158, !tbaa !161
  %32 = call i32 @quicklistIndex(%struct.quicklist* %30, i64 %31, %struct.quicklistEntry* nonnull %3) #6, !dbg !1160
  %33 = icmp eq i32 %32, 0, !dbg !1160
  br i1 %33, label %49, label %34, !dbg !1161

; <label>:34:                                     ; preds = %26
  %35 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %3, i64 0, i32 3, !dbg !1162
  %36 = load i8*, i8** %35, align 8, !dbg !1162, !tbaa !1165
  %37 = icmp eq i8* %36, null, !dbg !1166
  br i1 %37, label %43, label %38, !dbg !1167

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %3, i64 0, i32 5, !dbg !1168
  %40 = load i32, i32* %39, align 8, !dbg !1168, !tbaa !1170
  %41 = zext i32 %40 to i64, !dbg !1171
  %42 = call %struct.redisObject* @createStringObject(i8* nonnull %36, i64 %41) #6, !dbg !1172
  br label %47, !dbg !1173

; <label>:43:                                     ; preds = %34
  %44 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %3, i64 0, i32 4, !dbg !1174
  %45 = load i64, i64* %44, align 8, !dbg !1174, !tbaa !1176
  %46 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %45) #6, !dbg !1177
  br label %47

; <label>:47:                                     ; preds = %43, %38
  %48 = phi %struct.redisObject* [ %42, %38 ], [ %46, %43 ], !dbg !1178
  call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %48) #6, !dbg !1179
  call void @decrRefCount(%struct.redisObject* %48) #6, !dbg !1180
  br label %51, !dbg !1181

; <label>:49:                                     ; preds = %26
  %50 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1182, !tbaa !1135
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %50) #6, !dbg !1184
  br label %51

; <label>:51:                                     ; preds = %49, %47
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %27) #8, !dbg !1185
  br label %53, !dbg !1186

; <label>:52:                                     ; preds = %21
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 337, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1187
  call void @_exit(i32 1) #7, !dbg !1187
  unreachable, !dbg !1187

; <label>:53:                                     ; preds = %14, %51
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #8, !dbg !1186
  br label %54

; <label>:54:                                     ; preds = %1, %11, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1186
  ret void, !dbg !1186
}

; Function Attrs: noredzone
declare dso_local i32 @getLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @quicklistIndex(%struct.quicklist*, i64, %struct.quicklistEntry*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulk(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lsetCommand(%struct.client*) local_unnamed_addr #0 !dbg !1189 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1200
  %4 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !1200, !tbaa !797
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 1, !dbg !1201
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !1201, !tbaa !199
  %7 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 15), align 8, !dbg !1202, !tbaa !1203
  %8 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* %0, %struct.redisObject* %6, %struct.redisObject* %7) #6, !dbg !1204
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !1206
  br i1 %9, label %82, label %10, !dbg !1208

; <label>:10:                                     ; preds = %1
  %11 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %8, i32 1) #6, !dbg !1209
  %12 = icmp eq i32 %11, 0, !dbg !1209
  br i1 %12, label %13, label %82, !dbg !1210

; <label>:13:                                     ; preds = %10
  %14 = bitcast i64* %2 to i8*, !dbg !1211
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #8, !dbg !1211
  %15 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !1212, !tbaa !797
  %16 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 3, !dbg !1213
  %17 = load %struct.redisObject*, %struct.redisObject** %16, align 8, !dbg !1213, !tbaa !199
  %18 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 2, !dbg !1215
  %19 = load %struct.redisObject*, %struct.redisObject** %18, align 8, !dbg !1215, !tbaa !199
  %20 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %19, i64* nonnull %2, i8* null) #6, !dbg !1218
  %21 = icmp eq i32 %20, 0, !dbg !1219
  br i1 %21, label %22, label %81, !dbg !1220

; <label>:22:                                     ; preds = %13
  %23 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 0, !dbg !1221
  %24 = load i32, i32* %23, align 8, !dbg !1221
  %25 = and i32 %24, 240, !dbg !1221
  %26 = icmp eq i32 %25, 144, !dbg !1222
  br i1 %26, label %27, label %80, !dbg !1223

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !1224
  %29 = bitcast i8** %28 to %struct.quicklist**, !dbg !1224
  %30 = load %struct.quicklist*, %struct.quicklist** %29, align 8, !dbg !1224, !tbaa !122
  %31 = load i64, i64* %2, align 8, !dbg !1226, !tbaa !161
  %32 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i64 0, i32 2, !dbg !1227
  %33 = load i8*, i8** %32, align 8, !dbg !1227, !tbaa !122
  %34 = getelementptr inbounds i8, i8* %33, i64 -1, !dbg !1230
  %35 = load i8, i8* %34, align 1, !dbg !1230, !tbaa !141
  %36 = trunc i8 %35 to i3, !dbg !1232
  switch i3 %36, label %58 [
    i3 0, label %37
    i3 1, label %40
    i3 2, label %44
    i3 3, label %49
    i3 -4, label %54
  ], !dbg !1232

; <label>:37:                                     ; preds = %27
  %38 = lshr i8 %35, 3, !dbg !1233
  %39 = zext i8 %38 to i64, !dbg !1233
  br label %58, !dbg !1234

; <label>:40:                                     ; preds = %27
  %41 = getelementptr inbounds i8, i8* %33, i64 -3, !dbg !1235
  %42 = load i8, i8* %41, align 1, !dbg !1236, !tbaa !141
  %43 = zext i8 %42 to i64, !dbg !1235
  br label %58, !dbg !1237

; <label>:44:                                     ; preds = %27
  %45 = getelementptr inbounds i8, i8* %33, i64 -5, !dbg !1238
  %46 = bitcast i8* %45 to i16*, !dbg !1239
  %47 = load i16, i16* %46, align 1, !dbg !1239, !tbaa !152
  %48 = zext i16 %47 to i64, !dbg !1238
  br label %58, !dbg !1240

; <label>:49:                                     ; preds = %27
  %50 = getelementptr inbounds i8, i8* %33, i64 -9, !dbg !1241
  %51 = bitcast i8* %50 to i32*, !dbg !1242
  %52 = load i32, i32* %51, align 1, !dbg !1242, !tbaa !157
  %53 = zext i32 %52 to i64, !dbg !1241
  br label %58, !dbg !1243

; <label>:54:                                     ; preds = %27
  %55 = getelementptr inbounds i8, i8* %33, i64 -17, !dbg !1244
  %56 = bitcast i8* %55 to i64*, !dbg !1245
  %57 = load i64, i64* %56, align 1, !dbg !1245, !tbaa !161
  br label %58, !dbg !1246

; <label>:58:                                     ; preds = %27, %37, %40, %44, %49, %54
  %59 = phi i64 [ %57, %54 ], [ %53, %49 ], [ %48, %44 ], [ %43, %40 ], [ %39, %37 ], [ 0, %27 ], !dbg !1247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1248
  %60 = trunc i64 %59 to i32, !dbg !1249
  %61 = call i32 @quicklistReplaceAtIndex(%struct.quicklist* %30, i64 %31, i8* %33, i32 %60) #6, !dbg !1250
  %62 = icmp eq i32 %61, 0, !dbg !1252
  br i1 %62, label %63, label %65, !dbg !1254

; <label>:63:                                     ; preds = %58
  %64 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 18), align 8, !dbg !1255, !tbaa !1257
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %64) #6, !dbg !1258
  br label %81, !dbg !1259

; <label>:65:                                     ; preds = %58
  %66 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1260, !tbaa !1262
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %66) #6, !dbg !1263
  %67 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1264
  %68 = load %struct.redisDb*, %struct.redisDb** %67, align 8, !dbg !1264, !tbaa !792
  %69 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !1265, !tbaa !797
  %70 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %69, i64 1, !dbg !1266
  %71 = load %struct.redisObject*, %struct.redisObject** %70, align 8, !dbg !1266, !tbaa !199
  call void @signalModifiedKey(%struct.redisDb* %68, %struct.redisObject* %71) #6, !dbg !1267
  %72 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !1268, !tbaa !797
  %73 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %72, i64 1, !dbg !1269
  %74 = load %struct.redisObject*, %struct.redisObject** %73, align 8, !dbg !1269, !tbaa !199
  %75 = load %struct.redisDb*, %struct.redisDb** %67, align 8, !dbg !1270, !tbaa !792
  %76 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %75, i64 0, i32 5, !dbg !1271
  %77 = load i32, i32* %76, align 8, !dbg !1271, !tbaa !868
  call void @notifyKeyspaceEvent(i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %struct.redisObject* %74, i32 %77) #6, !dbg !1272
  %78 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1273, !tbaa !874
  %79 = add nsw i64 %78, 1, !dbg !1273
  store i64 %79, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1273, !tbaa !874
  br label %81

; <label>:80:                                     ; preds = %22
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 363, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1274
  call void @_exit(i32 1) #7, !dbg !1274
  unreachable, !dbg !1274

; <label>:81:                                     ; preds = %63, %65, %13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #8, !dbg !1276
  br label %82

; <label>:82:                                     ; preds = %1, %10, %81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  ret void, !dbg !1276
}

; Function Attrs: noredzone
declare dso_local i32 @quicklistReplaceAtIndex(%struct.quicklist*, i64, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @popGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !1277 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.redisObject*, align 8
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1288
  %6 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !1288, !tbaa !797
  %7 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 1, !dbg !1289
  %8 = load %struct.redisObject*, %struct.redisObject** %7, align 8, !dbg !1289, !tbaa !199
  %9 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1290, !tbaa !1135
  %10 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* %0, %struct.redisObject* %8, %struct.redisObject* %9) #6, !dbg !1291
  %11 = icmp eq %struct.redisObject* %10, null, !dbg !1293
  br i1 %11, label %80, label %12, !dbg !1295

; <label>:12:                                     ; preds = %2
  %13 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %10, i32 1) #6, !dbg !1296
  %14 = icmp eq i32 %13, 0, !dbg !1296
  br i1 %14, label %15, label %80, !dbg !1297

; <label>:15:                                     ; preds = %12
  %16 = bitcast i64* %3 to i8*, !dbg !1301
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #8, !dbg !1301
  %17 = bitcast %struct.redisObject** %4 to i8*, !dbg !1302
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #8, !dbg !1302
  store %struct.redisObject* null, %struct.redisObject** %4, align 8, !dbg !1303, !tbaa !199
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i64 0, i32 0, !dbg !1304
  %19 = load i32, i32* %18, align 8, !dbg !1304
  %20 = and i32 %19, 240, !dbg !1304
  %21 = icmp eq i32 %20, 144, !dbg !1305
  br i1 %21, label %22, label %37, !dbg !1306

; <label>:22:                                     ; preds = %15
  %23 = icmp ne i32 %1, 0, !dbg !1307
  %24 = sext i1 %23 to i32, !dbg !1308
  %25 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i64 0, i32 2, !dbg !1310
  %26 = bitcast i8** %25 to %struct.quicklist**, !dbg !1310
  %27 = load %struct.quicklist*, %struct.quicklist** %26, align 8, !dbg !1310, !tbaa !122
  %28 = bitcast %struct.redisObject** %4 to i8**, !dbg !1311
  %29 = call i32 @quicklistPopCustom(%struct.quicklist* %27, i32 %24, i8** nonnull %28, i32* null, i64* nonnull %3, i8* (i8*, i32)* nonnull @listPopSaver) #6, !dbg !1313
  %30 = icmp eq i32 %29, 0, !dbg !1313
  %31 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !1314
  %32 = icmp ne %struct.redisObject* %31, null, !dbg !1314
  %33 = or i1 %30, %32, !dbg !1315
  br i1 %33, label %38, label %34, !dbg !1315

; <label>:34:                                     ; preds = %22
  %35 = load i64, i64* %3, align 8, !dbg !1316, !tbaa !218
  %36 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %35) #6, !dbg !1317
  store %struct.redisObject* %36, %struct.redisObject** %4, align 8, !dbg !1318, !tbaa !199
  br label %38, !dbg !1319

; <label>:37:                                     ; preds = %15
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1320
  tail call void @_exit(i32 1) #7, !dbg !1320
  unreachable, !dbg !1320

; <label>:38:                                     ; preds = %22, %34
  %39 = phi %struct.redisObject* [ %31, %22 ], [ %36, %34 ], !dbg !1321
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #8, !dbg !1322
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #8, !dbg !1322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  %40 = icmp eq %struct.redisObject* %39, null, !dbg !1325
  br i1 %40, label %41, label %43, !dbg !1326

; <label>:41:                                     ; preds = %38
  %42 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1327, !tbaa !1135
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %42) #6, !dbg !1329
  br label %80, !dbg !1330

; <label>:43:                                     ; preds = %38
  %44 = icmp eq i32 %1, 0, !dbg !1331
  %45 = select i1 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), !dbg !1332
  call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* nonnull %39) #6, !dbg !1334
  call void @decrRefCount(%struct.redisObject* nonnull %39) #6, !dbg !1335
  %46 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !1336, !tbaa !797
  %47 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %46, i64 1, !dbg !1337
  %48 = load %struct.redisObject*, %struct.redisObject** %47, align 8, !dbg !1337, !tbaa !199
  %49 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1338
  %50 = load %struct.redisDb*, %struct.redisDb** %49, align 8, !dbg !1338, !tbaa !792
  %51 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %50, i64 0, i32 5, !dbg !1339
  %52 = load i32, i32* %51, align 8, !dbg !1339, !tbaa !868
  call void @notifyKeyspaceEvent(i32 16, i8* %45, %struct.redisObject* %48, i32 %52) #6, !dbg !1340
  %53 = load i32, i32* %18, align 8, !dbg !1344
  %54 = and i32 %53, 240, !dbg !1344
  %55 = icmp eq i32 %54, 144, !dbg !1345
  br i1 %55, label %57, label %56, !dbg !1346

; <label>:56:                                     ; preds = %43
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1347
  call void @_exit(i32 1) #7, !dbg !1347
  unreachable, !dbg !1347

; <label>:57:                                     ; preds = %43
  %58 = load %struct.quicklist*, %struct.quicklist** %26, align 8, !dbg !1348, !tbaa !122
  %59 = call i64 @quicklistCount(%struct.quicklist* %58) #6, !dbg !1349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1350
  %60 = icmp eq i64 %59, 0, !dbg !1351
  br i1 %60, label %61, label %73, !dbg !1352

; <label>:61:                                     ; preds = %57
  %62 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !1353, !tbaa !797
  %63 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %62, i64 1, !dbg !1355
  %64 = load %struct.redisObject*, %struct.redisObject** %63, align 8, !dbg !1355, !tbaa !199
  %65 = load %struct.redisDb*, %struct.redisDb** %49, align 8, !dbg !1356, !tbaa !792
  %66 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %65, i64 0, i32 5, !dbg !1357
  %67 = load i32, i32* %66, align 8, !dbg !1357, !tbaa !868
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), %struct.redisObject* %64, i32 %67) #6, !dbg !1358
  %68 = load %struct.redisDb*, %struct.redisDb** %49, align 8, !dbg !1359, !tbaa !792
  %69 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !1360, !tbaa !797
  %70 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %69, i64 1, !dbg !1361
  %71 = load %struct.redisObject*, %struct.redisObject** %70, align 8, !dbg !1361, !tbaa !199
  %72 = call i32 @dbDelete(%struct.redisDb* %68, %struct.redisObject* %71) #6, !dbg !1362
  br label %73, !dbg !1363

; <label>:73:                                     ; preds = %61, %57
  %74 = load %struct.redisDb*, %struct.redisDb** %49, align 8, !dbg !1364, !tbaa !792
  %75 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !1365, !tbaa !797
  %76 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %75, i64 1, !dbg !1366
  %77 = load %struct.redisObject*, %struct.redisObject** %76, align 8, !dbg !1366, !tbaa !199
  call void @signalModifiedKey(%struct.redisDb* %74, %struct.redisObject* %77) #6, !dbg !1367
  %78 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1368, !tbaa !874
  %79 = add nsw i64 %78, 1, !dbg !1368
  store i64 %79, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1368, !tbaa !874
  br label %80

; <label>:80:                                     ; preds = %41, %73, %2, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1369
  ret void, !dbg !1369
}

; Function Attrs: noredzone
declare dso_local i32 @dbDelete(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lpopCommand(%struct.client*) local_unnamed_addr #0 !dbg !1370 {
  tail call void @popGenericCommand(%struct.client* %0, i32 0) #9, !dbg !1374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1375
  ret void, !dbg !1375
}

; Function Attrs: noredzone nounwind
define dso_local void @rpopCommand(%struct.client*) local_unnamed_addr #0 !dbg !1376 {
  tail call void @popGenericCommand(%struct.client* %0, i32 1) #9, !dbg !1380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1381
  ret void, !dbg !1381
}

; Function Attrs: noredzone nounwind
define dso_local void @lrangeCommand(%struct.client*) local_unnamed_addr #0 !dbg !1382 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.listTypeEntry, align 8
  %5 = bitcast i64* %2 to i8*, !dbg !1398
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1398
  %6 = bitcast i64* %3 to i8*, !dbg !1398
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8, !dbg !1398
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1399
  %8 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1399, !tbaa !797
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 2, !dbg !1401
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !1401, !tbaa !199
  %11 = call i32 @getLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %10, i64* nonnull %2, i8* null) #6, !dbg !1403
  %12 = icmp eq i32 %11, 0, !dbg !1404
  br i1 %12, label %13, label %132, !dbg !1405

; <label>:13:                                     ; preds = %1
  %14 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1406, !tbaa !797
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 3, !dbg !1407
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !1407, !tbaa !199
  %17 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %16, i64* nonnull %3, i8* null) #6, !dbg !1409
  %18 = icmp eq i32 %17, 0, !dbg !1410
  br i1 %18, label %19, label %132, !dbg !1411

; <label>:19:                                     ; preds = %13
  %20 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1412, !tbaa !797
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 1, !dbg !1414
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !1414, !tbaa !199
  %23 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 13), align 8, !dbg !1415, !tbaa !1416
  %24 = call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* nonnull %0, %struct.redisObject* %22, %struct.redisObject* %23) #6, !dbg !1417
  %25 = icmp eq %struct.redisObject* %24, null, !dbg !1419
  br i1 %25, label %132, label %26, !dbg !1420

; <label>:26:                                     ; preds = %19
  %27 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %24, i32 1) #6, !dbg !1421
  %28 = icmp eq i32 %27, 0, !dbg !1421
  br i1 %28, label %29, label %132, !dbg !1422

; <label>:29:                                     ; preds = %26
  %30 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %24, i64 0, i32 0, !dbg !1425
  %31 = load i32, i32* %30, align 8, !dbg !1425
  %32 = and i32 %31, 240, !dbg !1425
  %33 = icmp eq i32 %32, 144, !dbg !1426
  br i1 %33, label %35, label %34, !dbg !1427

; <label>:34:                                     ; preds = %29
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1428
  call void @_exit(i32 1) #7, !dbg !1428
  unreachable, !dbg !1428

; <label>:35:                                     ; preds = %29
  %36 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %24, i64 0, i32 2, !dbg !1429
  %37 = bitcast i8** %36 to %struct.quicklist**, !dbg !1429
  %38 = load %struct.quicklist*, %struct.quicklist** %37, align 8, !dbg !1429, !tbaa !122
  %39 = call i64 @quicklistCount(%struct.quicklist* %38) #6, !dbg !1430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1431
  %40 = load i64, i64* %2, align 8, !dbg !1433, !tbaa !161
  %41 = icmp slt i64 %40, 0, !dbg !1435
  br i1 %41, label %42, label %44, !dbg !1436

; <label>:42:                                     ; preds = %35
  %43 = add nsw i64 %40, %39, !dbg !1437
  store i64 %43, i64* %2, align 8, !dbg !1438, !tbaa !161
  br label %44, !dbg !1439

; <label>:44:                                     ; preds = %42, %35
  %45 = phi i64 [ %43, %42 ], [ %40, %35 ]
  %46 = load i64, i64* %3, align 8, !dbg !1440, !tbaa !161
  %47 = icmp slt i64 %46, 0, !dbg !1442
  br i1 %47, label %48, label %50, !dbg !1443

; <label>:48:                                     ; preds = %44
  %49 = add nsw i64 %46, %39, !dbg !1444
  store i64 %49, i64* %3, align 8, !dbg !1445, !tbaa !161
  br label %50, !dbg !1446

; <label>:50:                                     ; preds = %48, %44
  %51 = phi i64 [ %49, %48 ], [ %46, %44 ]
  %52 = icmp slt i64 %45, 0, !dbg !1447
  br i1 %52, label %53, label %54, !dbg !1449

; <label>:53:                                     ; preds = %50
  store i64 0, i64* %2, align 8, !dbg !1450, !tbaa !161
  br label %54, !dbg !1451

; <label>:54:                                     ; preds = %53, %50
  %55 = phi i64 [ 0, %53 ], [ %45, %50 ], !dbg !1452
  %56 = icmp sle i64 %55, %51, !dbg !1454
  %57 = icmp slt i64 %55, %39, !dbg !1455
  %58 = and i1 %57, %56, !dbg !1456
  br i1 %58, label %61, label %59, !dbg !1456

; <label>:59:                                     ; preds = %54
  %60 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 13), align 8, !dbg !1457, !tbaa !1416
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %60) #6, !dbg !1459
  br label %132, !dbg !1460

; <label>:61:                                     ; preds = %54
  %62 = icmp slt i64 %51, %39, !dbg !1461
  br i1 %62, label %65, label %63, !dbg !1463

; <label>:63:                                     ; preds = %61
  %64 = add nsw i64 %39, -1, !dbg !1464
  store i64 %64, i64* %3, align 8, !dbg !1465, !tbaa !161
  br label %65, !dbg !1466

; <label>:65:                                     ; preds = %61, %63
  %66 = phi i64 [ %51, %61 ], [ %64, %63 ], !dbg !1467
  %67 = sub nsw i64 %66, %55, !dbg !1468
  %68 = add nsw i64 %67, 1, !dbg !1469
  call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %68) #6, !dbg !1471
  %69 = load i32, i32* %30, align 8, !dbg !1472
  %70 = and i32 %69, 240, !dbg !1472
  %71 = icmp eq i32 %70, 144, !dbg !1473
  br i1 %71, label %72, label %131, !dbg !1474

; <label>:72:                                     ; preds = %65
  %73 = load i64, i64* %2, align 8, !dbg !1475, !tbaa !161
  %74 = call i8* @zmalloc(i64 24) #6, !dbg !1480
  %75 = bitcast i8* %74 to %struct.redisObject**, !dbg !1481
  store %struct.redisObject* %24, %struct.redisObject** %75, align 8, !dbg !1482, !tbaa !281
  %76 = load i32, i32* %30, align 8, !dbg !1483
  %77 = lshr i32 %76, 4, !dbg !1483
  %78 = trunc i32 %77 to i8, !dbg !1484
  %79 = and i8 %78, 15, !dbg !1484
  %80 = getelementptr inbounds i8, i8* %74, i64 8, !dbg !1485
  store i8 %79, i8* %80, align 8, !dbg !1486, !tbaa !287
  %81 = getelementptr inbounds i8, i8* %74, i64 9, !dbg !1487
  store i8 1, i8* %81, align 1, !dbg !1488, !tbaa !290
  %82 = getelementptr inbounds i8, i8* %74, i64 16, !dbg !1489
  %83 = bitcast i8* %82 to %struct.quicklistIter**, !dbg !1489
  store %struct.quicklistIter* null, %struct.quicklistIter** %83, align 8, !dbg !1490, !tbaa !293
  %84 = icmp eq i8 %79, 9, !dbg !1491
  br i1 %84, label %86, label %85, !dbg !1492

; <label>:85:                                     ; preds = %72
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1493
  call void @_exit(i32 1) #7, !dbg !1493
  unreachable, !dbg !1493

; <label>:86:                                     ; preds = %72
  %87 = load %struct.quicklist*, %struct.quicklist** %37, align 8, !dbg !1496, !tbaa !122
  %88 = call %struct.quicklistIter* @quicklistGetIteratorAtIdx(%struct.quicklist* %87, i32 0, i64 %73) #6, !dbg !1497
  store %struct.quicklistIter* %88, %struct.quicklistIter** %83, align 8, !dbg !1498, !tbaa !293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1499
  %89 = icmp eq i64 %68, 0, !dbg !1501
  br i1 %89, label %90, label %92, !dbg !1501

; <label>:90:                                     ; preds = %86
  %91 = bitcast %struct.quicklistIter* %88 to i8*, !dbg !1501
  br label %129, !dbg !1501

; <label>:92:                                     ; preds = %86
  %93 = bitcast %struct.listTypeEntry* %4 to i8*
  %94 = bitcast i8* %74 to i32**
  %95 = bitcast %struct.listTypeEntry* %4 to i8**
  %96 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %4, i64 0, i32 1
  %97 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %4, i64 0, i32 1, i32 3
  %98 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %4, i64 0, i32 1, i32 4
  %99 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %4, i64 0, i32 1, i32 5
  br label %100, !dbg !1501

; <label>:100:                                    ; preds = %92, %123
  %101 = phi i64 [ %67, %92 ], [ %124, %123 ]
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %93) #8, !dbg !1502
  %102 = load i32*, i32** %94, align 8, !dbg !1507, !tbaa !281
  %103 = load i32, i32* %102, align 8, !dbg !1507
  %104 = lshr i32 %103, 4, !dbg !1507
  %105 = and i32 %104, 15, !dbg !1507
  %106 = load i8, i8* %80, align 8, !dbg !1507, !tbaa !287
  %107 = zext i8 %106 to i32, !dbg !1507
  %108 = icmp eq i32 %105, %107, !dbg !1507
  br i1 %108, label %110, label %109, !dbg !1507

; <label>:109:                                    ; preds = %100
  call void @_serverAssert(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 114) #6, !dbg !1507
  call void @_exit(i32 1) #7, !dbg !1507
  unreachable, !dbg !1507

; <label>:110:                                    ; preds = %100
  store i8* %74, i8** %95, align 8, !dbg !1508, !tbaa !346
  %111 = icmp eq i8 %106, 9, !dbg !1509
  br i1 %111, label %113, label %112, !dbg !1510

; <label>:112:                                    ; preds = %110
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1511
  call void @_exit(i32 1) #7, !dbg !1511
  unreachable, !dbg !1511

; <label>:113:                                    ; preds = %110
  %114 = load %struct.quicklistIter*, %struct.quicklistIter** %83, align 8, !dbg !1512, !tbaa !293
  %115 = call i32 @quicklistNext(%struct.quicklistIter* %114, %struct.quicklistEntry* nonnull %96) #6, !dbg !1513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1514
  %116 = load i8*, i8** %97, align 8, !dbg !1515, !tbaa !1165
  %117 = icmp eq i8* %116, null, !dbg !1517
  br i1 %117, label %121, label %118, !dbg !1518

; <label>:118:                                    ; preds = %113
  %119 = load i32, i32* %99, align 8, !dbg !1520, !tbaa !1170
  %120 = zext i32 %119 to i64, !dbg !1522
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* nonnull %116, i64 %120) #6, !dbg !1523
  br label %123, !dbg !1524

; <label>:121:                                    ; preds = %113
  %122 = load i64, i64* %98, align 8, !dbg !1525, !tbaa !1176
  call void @addReplyBulkLongLong(%struct.client* %0, i64 %122) #6, !dbg !1527
  br label %123

; <label>:123:                                    ; preds = %121, %118
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %93) #8, !dbg !1528
  %124 = add nsw i64 %101, -1, !dbg !1529
  %125 = icmp eq i64 %101, 0, !dbg !1501
  br i1 %125, label %126, label %100, !dbg !1501, !llvm.loop !1530

; <label>:126:                                    ; preds = %123
  %127 = bitcast i8* %82 to i8**
  %128 = load i8*, i8** %127, align 8, !dbg !1531, !tbaa !293
  br label %129, !dbg !1531

; <label>:129:                                    ; preds = %90, %126
  %130 = phi i8* [ %128, %126 ], [ %91, %90 ], !dbg !1531
  call void @zfree(i8* %130) #6, !dbg !1534
  call void @zfree(i8* nonnull %74) #6, !dbg !1535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1536
  br label %132, !dbg !1537

; <label>:131:                                    ; preds = %65
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 440, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !1538
  call void @_exit(i32 1) #7, !dbg !1538
  unreachable, !dbg !1538

; <label>:132:                                    ; preds = %19, %26, %1, %13, %129, %59
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8, !dbg !1537
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1537
  ret void, !dbg !1537
}

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ltrimCommand(%struct.client*) local_unnamed_addr #0 !dbg !1540 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = bitcast i64* %2 to i8*, !dbg !1550
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8, !dbg !1550
  %5 = bitcast i64* %3 to i8*, !dbg !1550
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1550
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1551
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1551, !tbaa !797
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 2, !dbg !1553
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !1553, !tbaa !199
  %10 = call i32 @getLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %9, i64* nonnull %2, i8* null) #6, !dbg !1555
  %11 = icmp eq i32 %10, 0, !dbg !1556
  br i1 %11, label %12, label %114, !dbg !1557

; <label>:12:                                     ; preds = %1
  %13 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1558, !tbaa !797
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 3, !dbg !1559
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !1559, !tbaa !199
  %16 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %15, i64* nonnull %3, i8* null) #6, !dbg !1561
  %17 = icmp eq i32 %16, 0, !dbg !1562
  br i1 %17, label %18, label %114, !dbg !1563

; <label>:18:                                     ; preds = %12
  %19 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1564, !tbaa !797
  %20 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 1, !dbg !1566
  %21 = load %struct.redisObject*, %struct.redisObject** %20, align 8, !dbg !1566, !tbaa !199
  %22 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1567, !tbaa !1262
  %23 = call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* nonnull %0, %struct.redisObject* %21, %struct.redisObject* %22) #6, !dbg !1568
  %24 = icmp eq %struct.redisObject* %23, null, !dbg !1570
  br i1 %24, label %114, label %25, !dbg !1571

; <label>:25:                                     ; preds = %18
  %26 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %23, i32 1) #6, !dbg !1572
  %27 = icmp eq i32 %26, 0, !dbg !1572
  br i1 %27, label %28, label %114, !dbg !1573

; <label>:28:                                     ; preds = %25
  %29 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %23, i64 0, i32 0, !dbg !1576
  %30 = load i32, i32* %29, align 8, !dbg !1576
  %31 = and i32 %30, 240, !dbg !1576
  %32 = icmp eq i32 %31, 144, !dbg !1577
  br i1 %32, label %34, label %33, !dbg !1578

; <label>:33:                                     ; preds = %28
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1579
  call void @_exit(i32 1) #7, !dbg !1579
  unreachable, !dbg !1579

; <label>:34:                                     ; preds = %28
  %35 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %23, i64 0, i32 2, !dbg !1580
  %36 = bitcast i8** %35 to %struct.quicklist**, !dbg !1580
  %37 = load %struct.quicklist*, %struct.quicklist** %36, align 8, !dbg !1580, !tbaa !122
  %38 = call i64 @quicklistCount(%struct.quicklist* %37) #6, !dbg !1581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1582
  %39 = load i64, i64* %2, align 8, !dbg !1584, !tbaa !161
  %40 = icmp slt i64 %39, 0, !dbg !1586
  br i1 %40, label %41, label %43, !dbg !1587

; <label>:41:                                     ; preds = %34
  %42 = add nsw i64 %39, %38, !dbg !1588
  store i64 %42, i64* %2, align 8, !dbg !1589, !tbaa !161
  br label %43, !dbg !1590

; <label>:43:                                     ; preds = %41, %34
  %44 = phi i64 [ %42, %41 ], [ %39, %34 ]
  %45 = load i64, i64* %3, align 8, !dbg !1591, !tbaa !161
  %46 = icmp slt i64 %45, 0, !dbg !1593
  br i1 %46, label %47, label %49, !dbg !1594

; <label>:47:                                     ; preds = %43
  %48 = add nsw i64 %45, %38, !dbg !1595
  store i64 %48, i64* %3, align 8, !dbg !1596, !tbaa !161
  br label %49, !dbg !1597

; <label>:49:                                     ; preds = %47, %43
  %50 = phi i64 [ %48, %47 ], [ %45, %43 ]
  %51 = icmp slt i64 %44, 0, !dbg !1598
  br i1 %51, label %52, label %53, !dbg !1600

; <label>:52:                                     ; preds = %49
  store i64 0, i64* %2, align 8, !dbg !1601, !tbaa !161
  br label %53, !dbg !1602

; <label>:53:                                     ; preds = %52, %49
  %54 = phi i64 [ 0, %52 ], [ %44, %49 ], !dbg !1603
  %55 = icmp sle i64 %54, %50, !dbg !1605
  %56 = icmp slt i64 %54, %38, !dbg !1606
  %57 = and i1 %56, %55, !dbg !1607
  br i1 %57, label %58, label %66, !dbg !1607

; <label>:58:                                     ; preds = %53
  %59 = icmp slt i64 %50, %38, !dbg !1608
  br i1 %59, label %62, label %60, !dbg !1611

; <label>:60:                                     ; preds = %58
  %61 = add nsw i64 %38, -1, !dbg !1612
  store i64 %61, i64* %3, align 8, !dbg !1613, !tbaa !161
  br label %62, !dbg !1614

; <label>:62:                                     ; preds = %58, %60
  %63 = phi i64 [ %50, %58 ], [ %61, %60 ], !dbg !1615
  %64 = xor i64 %63, -1, !dbg !1617
  %65 = add i64 %38, %64, !dbg !1617
  br label %66

; <label>:66:                                     ; preds = %53, %62
  %67 = phi i64 [ %54, %62 ], [ %38, %53 ], !dbg !1619
  %68 = phi i64 [ %65, %62 ], [ 0, %53 ], !dbg !1619
  %69 = load i32, i32* %29, align 8, !dbg !1620
  %70 = and i32 %69, 240, !dbg !1620
  %71 = icmp eq i32 %70, 144, !dbg !1622
  br i1 %71, label %72, label %93, !dbg !1623

; <label>:72:                                     ; preds = %66
  %73 = load %struct.quicklist*, %struct.quicklist** %36, align 8, !dbg !1624, !tbaa !122
  %74 = call i32 @quicklistDelRange(%struct.quicklist* %73, i64 0, i64 %67) #6, !dbg !1626
  %75 = load %struct.quicklist*, %struct.quicklist** %36, align 8, !dbg !1627, !tbaa !122
  %76 = sub nsw i64 0, %68, !dbg !1628
  %77 = call i32 @quicklistDelRange(%struct.quicklist* %75, i64 %76, i64 %68) #6, !dbg !1629
  %78 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1630, !tbaa !797
  %79 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %78, i64 1, !dbg !1631
  %80 = load %struct.redisObject*, %struct.redisObject** %79, align 8, !dbg !1631, !tbaa !199
  %81 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1632
  %82 = load %struct.redisDb*, %struct.redisDb** %81, align 8, !dbg !1632, !tbaa !792
  %83 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %82, i64 0, i32 5, !dbg !1633
  %84 = load i32, i32* %83, align 8, !dbg !1633, !tbaa !868
  call void @notifyKeyspaceEvent(i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), %struct.redisObject* %80, i32 %84) #6, !dbg !1634
  %85 = load i32, i32* %29, align 8, !dbg !1638
  %86 = and i32 %85, 240, !dbg !1638
  %87 = icmp eq i32 %86, 144, !dbg !1639
  br i1 %87, label %89, label %88, !dbg !1640

; <label>:88:                                     ; preds = %72
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1641
  call void @_exit(i32 1) #7, !dbg !1641
  unreachable, !dbg !1641

; <label>:89:                                     ; preds = %72
  %90 = load %struct.quicklist*, %struct.quicklist** %36, align 8, !dbg !1642, !tbaa !122
  %91 = call i64 @quicklistCount(%struct.quicklist* %90) #6, !dbg !1643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1644
  %92 = icmp eq i64 %91, 0, !dbg !1645
  br i1 %92, label %94, label %106, !dbg !1646

; <label>:93:                                     ; preds = %66
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 477, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1647
  call void @_exit(i32 1) #7, !dbg !1647
  unreachable, !dbg !1647

; <label>:94:                                     ; preds = %89
  %95 = load %struct.redisDb*, %struct.redisDb** %81, align 8, !dbg !1649, !tbaa !792
  %96 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1651, !tbaa !797
  %97 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %96, i64 1, !dbg !1652
  %98 = load %struct.redisObject*, %struct.redisObject** %97, align 8, !dbg !1652, !tbaa !199
  %99 = call i32 @dbDelete(%struct.redisDb* %95, %struct.redisObject* %98) #6, !dbg !1653
  %100 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1654, !tbaa !797
  %101 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %100, i64 1, !dbg !1655
  %102 = load %struct.redisObject*, %struct.redisObject** %101, align 8, !dbg !1655, !tbaa !199
  %103 = load %struct.redisDb*, %struct.redisDb** %81, align 8, !dbg !1656, !tbaa !792
  %104 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %103, i64 0, i32 5, !dbg !1657
  %105 = load i32, i32* %104, align 8, !dbg !1657, !tbaa !868
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), %struct.redisObject* %102, i32 %105) #6, !dbg !1658
  br label %106, !dbg !1659

; <label>:106:                                    ; preds = %94, %89
  %107 = load %struct.redisDb*, %struct.redisDb** %81, align 8, !dbg !1660, !tbaa !792
  %108 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1661, !tbaa !797
  %109 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %108, i64 1, !dbg !1662
  %110 = load %struct.redisObject*, %struct.redisObject** %109, align 8, !dbg !1662, !tbaa !199
  call void @signalModifiedKey(%struct.redisDb* %107, %struct.redisObject* %110) #6, !dbg !1663
  %111 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1664, !tbaa !874
  %112 = add nsw i64 %111, 1, !dbg !1664
  store i64 %112, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1664, !tbaa !874
  %113 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1665, !tbaa !1262
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %113) #6, !dbg !1666
  br label %114, !dbg !1667

; <label>:114:                                    ; preds = %18, %25, %1, %12, %106
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1667
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8, !dbg !1667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1667
  ret void, !dbg !1667
}

; Function Attrs: noredzone
declare dso_local i32 @quicklistDelRange(%struct.quicklist*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lremCommand(%struct.client*) local_unnamed_addr #0 !dbg !1668 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.listTypeEntry, align 8
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1678
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1678, !tbaa !797
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 3, !dbg !1679
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1679, !tbaa !199
  %8 = bitcast i64* %2 to i8*, !dbg !1681
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !1681
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 2, !dbg !1683
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !1683, !tbaa !199
  %11 = call i32 @getLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %10, i64* nonnull %2, i8* null) #6, !dbg !1686
  %12 = icmp eq i32 %11, 0, !dbg !1687
  br i1 %12, label %13, label %165, !dbg !1688

; <label>:13:                                     ; preds = %1
  %14 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1689, !tbaa !797
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 1, !dbg !1690
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !1690, !tbaa !199
  %17 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1691, !tbaa !905
  %18 = call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* nonnull %0, %struct.redisObject* %16, %struct.redisObject* %17) #6, !dbg !1692
  %19 = icmp eq %struct.redisObject* %18, null, !dbg !1694
  br i1 %19, label %165, label %20, !dbg !1696

; <label>:20:                                     ; preds = %13
  %21 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %18, i32 1) #6, !dbg !1697
  %22 = icmp eq i32 %21, 0, !dbg !1697
  br i1 %22, label %23, label %165, !dbg !1698

; <label>:23:                                     ; preds = %20
  %24 = load i64, i64* %2, align 8, !dbg !1699, !tbaa !161
  %25 = icmp slt i64 %24, 0, !dbg !1701
  br i1 %25, label %26, label %46, !dbg !1702

; <label>:26:                                     ; preds = %23
  %27 = sub nsw i64 0, %24, !dbg !1703
  store i64 %27, i64* %2, align 8, !dbg !1705, !tbaa !161
  %28 = call i8* @zmalloc(i64 24) #6, !dbg !1710
  %29 = bitcast i8* %28 to %struct.redisObject**, !dbg !1711
  store %struct.redisObject* %18, %struct.redisObject** %29, align 8, !dbg !1712, !tbaa !281
  %30 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 0, !dbg !1713
  %31 = load i32, i32* %30, align 8, !dbg !1713
  %32 = lshr i32 %31, 4, !dbg !1713
  %33 = trunc i32 %32 to i8, !dbg !1714
  %34 = and i8 %33, 15, !dbg !1714
  %35 = getelementptr inbounds i8, i8* %28, i64 8, !dbg !1715
  store i8 %34, i8* %35, align 8, !dbg !1716, !tbaa !287
  %36 = getelementptr inbounds i8, i8* %28, i64 9, !dbg !1717
  store i8 0, i8* %36, align 1, !dbg !1718, !tbaa !290
  %37 = getelementptr inbounds i8, i8* %28, i64 16, !dbg !1719
  %38 = bitcast i8* %37 to %struct.quicklistIter**, !dbg !1719
  store %struct.quicklistIter* null, %struct.quicklistIter** %38, align 8, !dbg !1720, !tbaa !293
  %39 = icmp eq i8 %34, 9, !dbg !1721
  br i1 %39, label %41, label %40, !dbg !1722

; <label>:40:                                     ; preds = %26
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1723
  call void @_exit(i32 1) #7, !dbg !1723
  unreachable, !dbg !1723

; <label>:41:                                     ; preds = %26
  %42 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 2, !dbg !1726
  %43 = bitcast i8** %42 to %struct.quicklist**, !dbg !1726
  %44 = load %struct.quicklist*, %struct.quicklist** %43, align 8, !dbg !1726, !tbaa !122
  %45 = call %struct.quicklistIter* @quicklistGetIteratorAtIdx(%struct.quicklist* %44, i32 1, i64 -1) #6, !dbg !1727
  br label %65, !dbg !1729

; <label>:46:                                     ; preds = %23
  %47 = call i8* @zmalloc(i64 24) #6, !dbg !1735
  %48 = bitcast i8* %47 to %struct.redisObject**, !dbg !1736
  store %struct.redisObject* %18, %struct.redisObject** %48, align 8, !dbg !1737, !tbaa !281
  %49 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 0, !dbg !1738
  %50 = load i32, i32* %49, align 8, !dbg !1738
  %51 = lshr i32 %50, 4, !dbg !1738
  %52 = trunc i32 %51 to i8, !dbg !1739
  %53 = and i8 %52, 15, !dbg !1739
  %54 = getelementptr inbounds i8, i8* %47, i64 8, !dbg !1740
  store i8 %53, i8* %54, align 8, !dbg !1741, !tbaa !287
  %55 = getelementptr inbounds i8, i8* %47, i64 9, !dbg !1742
  store i8 1, i8* %55, align 1, !dbg !1743, !tbaa !290
  %56 = getelementptr inbounds i8, i8* %47, i64 16, !dbg !1744
  %57 = bitcast i8* %56 to %struct.quicklistIter**, !dbg !1744
  store %struct.quicklistIter* null, %struct.quicklistIter** %57, align 8, !dbg !1745, !tbaa !293
  %58 = icmp eq i8 %53, 9, !dbg !1746
  br i1 %58, label %60, label %59, !dbg !1747

; <label>:59:                                     ; preds = %46
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1748
  call void @_exit(i32 1) #7, !dbg !1748
  unreachable, !dbg !1748

; <label>:60:                                     ; preds = %46
  %61 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 2, !dbg !1751
  %62 = bitcast i8** %61 to %struct.quicklist**, !dbg !1751
  %63 = load %struct.quicklist*, %struct.quicklist** %62, align 8, !dbg !1751, !tbaa !122
  %64 = call %struct.quicklistIter* @quicklistGetIteratorAtIdx(%struct.quicklist* %63, i32 0, i64 0) #6, !dbg !1752
  br label %65

; <label>:65:                                     ; preds = %60, %41
  %66 = phi %struct.quicklistIter** [ %57, %60 ], [ %38, %41 ]
  %67 = phi %struct.quicklistIter* [ %64, %60 ], [ %45, %41 ]
  %68 = phi i8* [ %54, %60 ], [ %35, %41 ], !dbg !1753
  %69 = phi i8* [ %47, %60 ], [ %28, %41 ]
  store %struct.quicklistIter* %67, %struct.quicklistIter** %66, align 8, !dbg !1755, !tbaa !293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1756
  %70 = bitcast %struct.listTypeEntry* %3 to i8*, !dbg !1757
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %70) #8, !dbg !1757
  %71 = bitcast i8* %69 to i32**, !dbg !1753
  %72 = load i32*, i32** %71, align 8, !dbg !1753, !tbaa !281
  %73 = load i32, i32* %72, align 8, !dbg !1753
  %74 = lshr i32 %73, 4, !dbg !1753
  %75 = and i32 %74, 15, !dbg !1753
  %76 = load i8, i8* %68, align 8, !dbg !1753, !tbaa !287
  %77 = zext i8 %76 to i32, !dbg !1753
  %78 = icmp eq i32 %75, %77, !dbg !1753
  br i1 %78, label %79, label %85, !dbg !1753

; <label>:79:                                     ; preds = %65
  %80 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %3, i64 0, i32 0
  %81 = bitcast %struct.listTypeEntry* %3 to i8**
  %82 = getelementptr inbounds i8, i8* %69, i64 16
  %83 = bitcast i8* %82 to %struct.quicklistIter**
  %84 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %3, i64 0, i32 1
  br label %86, !dbg !1753

; <label>:85:                                     ; preds = %113, %65
  call void @_serverAssert(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 114) #6, !dbg !1753
  call void @_exit(i32 1) #7, !dbg !1753
  unreachable, !dbg !1753

; <label>:86:                                     ; preds = %79, %113
  %87 = phi i8 [ %76, %79 ], [ %119, %113 ]
  %88 = phi i64 [ 0, %79 ], [ %114, %113 ]
  store i8* %69, i8** %81, align 8, !dbg !1761, !tbaa !346
  %89 = icmp eq i8 %87, 9, !dbg !1762
  br i1 %89, label %91, label %90, !dbg !1763

; <label>:90:                                     ; preds = %86
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1764
  call void @_exit(i32 1) #7, !dbg !1764
  unreachable, !dbg !1764

; <label>:91:                                     ; preds = %86
  %92 = load %struct.quicklistIter*, %struct.quicklistIter** %83, align 8, !dbg !1765, !tbaa !293
  %93 = call i32 @quicklistNext(%struct.quicklistIter* %92, %struct.quicklistEntry* nonnull %84) #6, !dbg !1766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1767
  %94 = icmp eq i32 %93, 0, !dbg !1768
  br i1 %94, label %122, label %95, !dbg !1768

; <label>:95:                                     ; preds = %91
  %96 = call i32 @listTypeEqual(%struct.listTypeEntry* nonnull %3, %struct.redisObject* %7) #9, !dbg !1769
  %97 = icmp eq i32 %96, 0, !dbg !1769
  br i1 %97, label %113, label %98, !dbg !1772

; <label>:98:                                     ; preds = %95
  %99 = load %struct.listTypeIterator*, %struct.listTypeIterator** %80, align 8, !dbg !1777, !tbaa !346
  %100 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %99, i64 0, i32 1, !dbg !1778
  %101 = load i8, i8* %100, align 8, !dbg !1778, !tbaa !287
  %102 = icmp eq i8 %101, 9, !dbg !1779
  br i1 %102, label %104, label %103, !dbg !1780

; <label>:103:                                    ; preds = %98
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 174, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1781
  call void @_exit(i32 1) #7, !dbg !1781
  unreachable, !dbg !1781

; <label>:104:                                    ; preds = %98
  %105 = load %struct.quicklistIter*, %struct.quicklistIter** %83, align 8, !dbg !1782, !tbaa !293
  call void @quicklistDelEntry(%struct.quicklistIter* %105, %struct.quicklistEntry* nonnull %84) #6, !dbg !1783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1784
  %106 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1785, !tbaa !874
  %107 = add nsw i64 %106, 1, !dbg !1785
  store i64 %107, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1785, !tbaa !874
  %108 = add nsw i64 %88, 1, !dbg !1786
  %109 = load i64, i64* %2, align 8, !dbg !1787, !tbaa !161
  %110 = icmp ne i64 %109, 0, !dbg !1787
  %111 = icmp eq i64 %108, %109, !dbg !1789
  %112 = and i1 %110, %111, !dbg !1790
  br i1 %112, label %122, label %113, !dbg !1790

; <label>:113:                                    ; preds = %104, %95
  %114 = phi i64 [ %108, %104 ], [ %88, %95 ], !dbg !1791
  %115 = load i32*, i32** %71, align 8, !dbg !1753, !tbaa !281
  %116 = load i32, i32* %115, align 8, !dbg !1753
  %117 = lshr i32 %116, 4, !dbg !1753
  %118 = and i32 %117, 15, !dbg !1753
  %119 = load i8, i8* %68, align 8, !dbg !1753, !tbaa !287
  %120 = zext i8 %119 to i32, !dbg !1753
  %121 = icmp eq i32 %118, %120, !dbg !1753
  br i1 %121, label %86, label %85, !dbg !1753, !llvm.loop !1792

; <label>:122:                                    ; preds = %104, %91
  %123 = phi i64 [ %88, %91 ], [ %108, %104 ], !dbg !1791
  %124 = bitcast i8* %82 to i8**, !dbg !1796
  %125 = load i8*, i8** %124, align 8, !dbg !1796, !tbaa !293
  call void @zfree(i8* %125) #6, !dbg !1797
  call void @zfree(i8* nonnull %69) #6, !dbg !1798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1799
  %126 = icmp eq i64 %123, 0, !dbg !1800
  br i1 %126, label %139, label %127, !dbg !1802

; <label>:127:                                    ; preds = %122
  %128 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1803
  %129 = load %struct.redisDb*, %struct.redisDb** %128, align 8, !dbg !1803, !tbaa !792
  %130 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1805, !tbaa !797
  %131 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %130, i64 1, !dbg !1806
  %132 = load %struct.redisObject*, %struct.redisObject** %131, align 8, !dbg !1806, !tbaa !199
  call void @signalModifiedKey(%struct.redisDb* %129, %struct.redisObject* %132) #6, !dbg !1807
  %133 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1808, !tbaa !797
  %134 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %133, i64 1, !dbg !1809
  %135 = load %struct.redisObject*, %struct.redisObject** %134, align 8, !dbg !1809, !tbaa !199
  %136 = load %struct.redisDb*, %struct.redisDb** %128, align 8, !dbg !1810, !tbaa !792
  %137 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %136, i64 0, i32 5, !dbg !1811
  %138 = load i32, i32* %137, align 8, !dbg !1811, !tbaa !868
  call void @notifyKeyspaceEvent(i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %struct.redisObject* %135, i32 %138) #6, !dbg !1812
  br label %139, !dbg !1813

; <label>:139:                                    ; preds = %122, %127
  %140 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 0, !dbg !1817
  %141 = load i32, i32* %140, align 8, !dbg !1817
  %142 = and i32 %141, 240, !dbg !1817
  %143 = icmp eq i32 %142, 144, !dbg !1818
  br i1 %143, label %145, label %144, !dbg !1819

; <label>:144:                                    ; preds = %139
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1820
  call void @_exit(i32 1) #7, !dbg !1820
  unreachable, !dbg !1820

; <label>:145:                                    ; preds = %139
  %146 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 2, !dbg !1821
  %147 = bitcast i8** %146 to %struct.quicklist**, !dbg !1821
  %148 = load %struct.quicklist*, %struct.quicklist** %147, align 8, !dbg !1821, !tbaa !122
  %149 = call i64 @quicklistCount(%struct.quicklist* %148) #6, !dbg !1822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1823
  %150 = icmp eq i64 %149, 0, !dbg !1824
  br i1 %150, label %151, label %164, !dbg !1825

; <label>:151:                                    ; preds = %145
  %152 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1826
  %153 = load %struct.redisDb*, %struct.redisDb** %152, align 8, !dbg !1826, !tbaa !792
  %154 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1828, !tbaa !797
  %155 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %154, i64 1, !dbg !1829
  %156 = load %struct.redisObject*, %struct.redisObject** %155, align 8, !dbg !1829, !tbaa !199
  %157 = call i32 @dbDelete(%struct.redisDb* %153, %struct.redisObject* %156) #6, !dbg !1830
  %158 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1831, !tbaa !797
  %159 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %158, i64 1, !dbg !1832
  %160 = load %struct.redisObject*, %struct.redisObject** %159, align 8, !dbg !1832, !tbaa !199
  %161 = load %struct.redisDb*, %struct.redisDb** %152, align 8, !dbg !1833, !tbaa !792
  %162 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %161, i64 0, i32 5, !dbg !1834
  %163 = load i32, i32* %162, align 8, !dbg !1834, !tbaa !868
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), %struct.redisObject* %160, i32 %163) #6, !dbg !1835
  br label %164, !dbg !1836

; <label>:164:                                    ; preds = %151, %145
  call void @addReplyLongLong(%struct.client* %0, i64 %123) #6, !dbg !1837
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %70) #8, !dbg !1838
  br label %165, !dbg !1838

; <label>:165:                                    ; preds = %13, %20, %1, %164
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !1838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1838
  ret void, !dbg !1838
}

; Function Attrs: noredzone nounwind
define dso_local void @rpoplpushHandlePush(%struct.client*, %struct.redisObject*, %struct.redisObject* readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !1839 {
  %5 = icmp eq %struct.redisObject* %2, null, !dbg !1851
  br i1 %5, label %8, label %6, !dbg !1853

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1854
  br label %17, !dbg !1853

; <label>:8:                                      ; preds = %4
  %9 = tail call %struct.redisObject* @createQuicklistObject() #6, !dbg !1855
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %9, i64 0, i32 2, !dbg !1857
  %11 = bitcast i8** %10 to %struct.quicklist**, !dbg !1857
  %12 = load %struct.quicklist*, %struct.quicklist** %11, align 8, !dbg !1857, !tbaa !122
  %13 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 249), align 8, !dbg !1858, !tbaa !534
  %14 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 250), align 4, !dbg !1859, !tbaa !541
  tail call void @quicklistSetOptions(%struct.quicklist* %12, i32 %13, i32 %14) #6, !dbg !1860
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1861
  %16 = load %struct.redisDb*, %struct.redisDb** %15, align 8, !dbg !1861, !tbaa !792
  tail call void @dbAdd(%struct.redisDb* %16, %struct.redisObject* %1, %struct.redisObject* %9) #6, !dbg !1862
  br label %17, !dbg !1863

; <label>:17:                                     ; preds = %6, %8
  %18 = phi %struct.redisDb** [ %7, %6 ], [ %15, %8 ], !dbg !1854
  %19 = phi %struct.redisObject* [ %2, %6 ], [ %9, %8 ]
  %20 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !1854, !tbaa !792
  tail call void @signalModifiedKey(%struct.redisDb* %20, %struct.redisObject* %1) #6, !dbg !1864
  tail call void @listTypePush(%struct.redisObject* %19, %struct.redisObject* %3, i32 0) #9, !dbg !1865
  %21 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !1866, !tbaa !792
  %22 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %21, i64 0, i32 5, !dbg !1867
  %23 = load i32, i32* %22, align 8, !dbg !1867, !tbaa !868
  tail call void @notifyKeyspaceEvent(i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), %struct.redisObject* %1, i32 %23) #6, !dbg !1868
  tail call void @addReplyBulk(%struct.client* %0, %struct.redisObject* %3) #6, !dbg !1869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1870
  ret void, !dbg !1870
}

; Function Attrs: noredzone nounwind
define dso_local void @rpoplpushCommand(%struct.client*) local_unnamed_addr #0 !dbg !1871 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.redisObject*, align 8
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1881
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1881, !tbaa !797
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !1883
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1883, !tbaa !199
  %8 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1884, !tbaa !1135
  %9 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* %0, %struct.redisObject* %7, %struct.redisObject* %8) #6, !dbg !1885
  %10 = icmp eq %struct.redisObject* %9, null, !dbg !1887
  br i1 %10, label %98, label %11, !dbg !1888

; <label>:11:                                     ; preds = %1
  %12 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %9, i32 1) #6, !dbg !1889
  %13 = icmp eq i32 %12, 0, !dbg !1889
  br i1 %13, label %14, label %98, !dbg !1890

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %9, i64 0, i32 0, !dbg !1893
  %16 = load i32, i32* %15, align 8, !dbg !1893
  %17 = and i32 %16, 240, !dbg !1893
  %18 = icmp eq i32 %17, 144, !dbg !1894
  br i1 %18, label %20, label %19, !dbg !1895

; <label>:19:                                     ; preds = %14
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1896
  tail call void @_exit(i32 1) #7, !dbg !1896
  unreachable, !dbg !1896

; <label>:20:                                     ; preds = %14
  %21 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %9, i64 0, i32 2, !dbg !1897
  %22 = bitcast i8** %21 to %struct.quicklist**, !dbg !1897
  %23 = load %struct.quicklist*, %struct.quicklist** %22, align 8, !dbg !1897, !tbaa !122
  %24 = tail call i64 @quicklistCount(%struct.quicklist* %23) #6, !dbg !1898
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1899
  %25 = icmp eq i64 %24, 0, !dbg !1900
  br i1 %25, label %26, label %28, !dbg !1901

; <label>:26:                                     ; preds = %20
  %27 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1902, !tbaa !1135
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %27) #6, !dbg !1904
  br label %98, !dbg !1905

; <label>:28:                                     ; preds = %20
  %29 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1906
  %30 = load %struct.redisDb*, %struct.redisDb** %29, align 8, !dbg !1906, !tbaa !792
  %31 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1907, !tbaa !797
  %32 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %31, i64 2, !dbg !1908
  %33 = load %struct.redisObject*, %struct.redisObject** %32, align 8, !dbg !1908, !tbaa !199
  %34 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %30, %struct.redisObject* %33) #6, !dbg !1909
  %35 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1911, !tbaa !797
  %36 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %35, i64 1, !dbg !1912
  %37 = load %struct.redisObject*, %struct.redisObject** %36, align 8, !dbg !1912, !tbaa !199
  %38 = icmp eq %struct.redisObject* %34, null, !dbg !1914
  br i1 %38, label %42, label %39, !dbg !1916

; <label>:39:                                     ; preds = %28
  %40 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %34, i32 1) #6, !dbg !1917
  %41 = icmp eq i32 %40, 0, !dbg !1917
  br i1 %41, label %42, label %98, !dbg !1918

; <label>:42:                                     ; preds = %39, %28
  %43 = bitcast i64* %2 to i8*, !dbg !1922
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %43) #8, !dbg !1922
  %44 = bitcast %struct.redisObject** %3 to i8*, !dbg !1923
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44) #8, !dbg !1923
  store %struct.redisObject* null, %struct.redisObject** %3, align 8, !dbg !1924, !tbaa !199
  %45 = load i32, i32* %15, align 8, !dbg !1925
  %46 = and i32 %45, 240, !dbg !1925
  %47 = icmp eq i32 %46, 144, !dbg !1926
  br i1 %47, label %48, label %59, !dbg !1927

; <label>:48:                                     ; preds = %42
  %49 = load %struct.quicklist*, %struct.quicklist** %22, align 8, !dbg !1929, !tbaa !122
  %50 = bitcast %struct.redisObject** %3 to i8**, !dbg !1930
  %51 = call i32 @quicklistPopCustom(%struct.quicklist* %49, i32 -1, i8** nonnull %50, i32* null, i64* nonnull %2, i8* (i8*, i32)* nonnull @listPopSaver) #6, !dbg !1932
  %52 = icmp eq i32 %51, 0, !dbg !1932
  %53 = load %struct.redisObject*, %struct.redisObject** %3, align 8, !dbg !1933
  %54 = icmp ne %struct.redisObject* %53, null, !dbg !1933
  %55 = or i1 %52, %54, !dbg !1934
  br i1 %55, label %60, label %56, !dbg !1934

; <label>:56:                                     ; preds = %48
  %57 = load i64, i64* %2, align 8, !dbg !1935, !tbaa !218
  %58 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %57) #6, !dbg !1936
  store %struct.redisObject* %58, %struct.redisObject** %3, align 8, !dbg !1937, !tbaa !199
  br label %60, !dbg !1938

; <label>:59:                                     ; preds = %42
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1939
  tail call void @_exit(i32 1) #7, !dbg !1939
  unreachable, !dbg !1939

; <label>:60:                                     ; preds = %48, %56
  %61 = phi %struct.redisObject* [ %53, %48 ], [ %58, %56 ], !dbg !1940
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #8, !dbg !1941
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #8, !dbg !1941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1942
  call void @incrRefCount(%struct.redisObject* %37) #6, !dbg !1944
  %62 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1945, !tbaa !797
  %63 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %62, i64 2, !dbg !1946
  %64 = load %struct.redisObject*, %struct.redisObject** %63, align 8, !dbg !1946, !tbaa !199
  call void @rpoplpushHandlePush(%struct.client* nonnull %0, %struct.redisObject* %64, %struct.redisObject* %34, %struct.redisObject* %61) #9, !dbg !1947
  call void @decrRefCount(%struct.redisObject* %61) #6, !dbg !1948
  %65 = load %struct.redisDb*, %struct.redisDb** %29, align 8, !dbg !1949, !tbaa !792
  %66 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %65, i64 0, i32 5, !dbg !1950
  %67 = load i32, i32* %66, align 8, !dbg !1950, !tbaa !868
  call void @notifyKeyspaceEvent(i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), %struct.redisObject* %37, i32 %67) #6, !dbg !1951
  %68 = load i32, i32* %15, align 8, !dbg !1955
  %69 = and i32 %68, 240, !dbg !1955
  %70 = icmp eq i32 %69, 144, !dbg !1956
  br i1 %70, label %72, label %71, !dbg !1957

; <label>:71:                                     ; preds = %60
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1958
  call void @_exit(i32 1) #7, !dbg !1958
  unreachable, !dbg !1958

; <label>:72:                                     ; preds = %60
  %73 = load %struct.quicklist*, %struct.quicklist** %22, align 8, !dbg !1959, !tbaa !122
  %74 = call i64 @quicklistCount(%struct.quicklist* %73) #6, !dbg !1960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1961
  %75 = icmp eq i64 %74, 0, !dbg !1962
  br i1 %75, label %76, label %82, !dbg !1963

; <label>:76:                                     ; preds = %72
  %77 = load %struct.redisDb*, %struct.redisDb** %29, align 8, !dbg !1964, !tbaa !792
  %78 = call i32 @dbDelete(%struct.redisDb* %77, %struct.redisObject* %37) #6, !dbg !1966
  %79 = load %struct.redisDb*, %struct.redisDb** %29, align 8, !dbg !1967, !tbaa !792
  %80 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %79, i64 0, i32 5, !dbg !1968
  %81 = load i32, i32* %80, align 8, !dbg !1968, !tbaa !868
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), %struct.redisObject* %37, i32 %81) #6, !dbg !1969
  br label %82, !dbg !1970

; <label>:82:                                     ; preds = %76, %72
  %83 = load %struct.redisDb*, %struct.redisDb** %29, align 8, !dbg !1971, !tbaa !792
  call void @signalModifiedKey(%struct.redisDb* %83, %struct.redisObject* %37) #6, !dbg !1972
  call void @decrRefCount(%struct.redisObject* %37) #6, !dbg !1973
  %84 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1974, !tbaa !874
  %85 = add nsw i64 %84, 1, !dbg !1974
  store i64 %85, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1974, !tbaa !874
  %86 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10, !dbg !1975
  %87 = load %struct.redisCommand*, %struct.redisCommand** %86, align 8, !dbg !1975, !tbaa !1977
  %88 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %87, i64 0, i32 1, !dbg !1978
  %89 = load void (%struct.client*)*, void (%struct.client*)** %88, align 8, !dbg !1978, !tbaa !1979
  %90 = icmp eq void (%struct.client*)* %89, @brpoplpushCommand, !dbg !1981
  br i1 %90, label %91, label %98, !dbg !1982

; <label>:91:                                     ; preds = %82
  %92 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 42), align 8, !dbg !1983, !tbaa !1985
  %93 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1986, !tbaa !797
  %94 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %93, i64 1, !dbg !1987
  %95 = load %struct.redisObject*, %struct.redisObject** %94, align 8, !dbg !1987, !tbaa !199
  %96 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %93, i64 2, !dbg !1988
  %97 = load %struct.redisObject*, %struct.redisObject** %96, align 8, !dbg !1988, !tbaa !199
  call void (%struct.client*, i32, ...) @rewriteClientCommandVector(%struct.client* nonnull %0, i32 3, %struct.redisObject* %92, %struct.redisObject* %95, %struct.redisObject* %97) #6, !dbg !1989
  br label %98, !dbg !1990

; <label>:98:                                     ; preds = %39, %26, %82, %91, %1, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1991
  ret void, !dbg !1991
}

; Function Attrs: noredzone
declare dso_local void @incrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @brpoplpushCommand(%struct.client*) #0 !dbg !1992 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !1998
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !1998
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1999
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1999, !tbaa !797
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 3, !dbg !2001
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !2001, !tbaa !199
  %8 = call i32 @getTimeoutFromObjectOrReply(%struct.client* %0, %struct.redisObject* %7, i64* nonnull %2, i32 0) #6, !dbg !2003
  %9 = icmp eq i32 %8, 0, !dbg !2004
  br i1 %9, label %10, label %50, !dbg !2005

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2006
  %12 = load %struct.redisDb*, %struct.redisDb** %11, align 8, !dbg !2006, !tbaa !792
  %13 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !2007, !tbaa !797
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 1, !dbg !2008
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !2008, !tbaa !199
  %16 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %12, %struct.redisObject* %15) #6, !dbg !2009
  %17 = icmp eq %struct.redisObject* %16, null, !dbg !2011
  br i1 %17, label %18, label %31, !dbg !2013

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2014
  %20 = load i32, i32* %19, align 8, !dbg !2014, !tbaa !2017
  %21 = and i32 %20, 8, !dbg !2018
  %22 = icmp eq i32 %21, 0, !dbg !2018
  br i1 %22, label %25, label %23, !dbg !2019

; <label>:23:                                     ; preds = %18
  %24 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !2020, !tbaa !1135
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %24) #6, !dbg !2022
  br label %50, !dbg !2023

; <label>:25:                                     ; preds = %18
  %26 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !2024, !tbaa !797
  %27 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 1, !dbg !2026
  %28 = load i64, i64* %2, align 8, !dbg !2027, !tbaa !218
  %29 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 2, !dbg !2028
  %30 = load %struct.redisObject*, %struct.redisObject** %29, align 8, !dbg !2028, !tbaa !199
  call void @blockForKeys(%struct.client* nonnull %0, i32 1, %struct.redisObject** nonnull %27, i32 1, i64 %28, %struct.redisObject* %30, %struct.streamID* null) #6, !dbg !2029
  br label %50

; <label>:31:                                     ; preds = %10
  %32 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %16, i64 0, i32 0, !dbg !2030
  %33 = load i32, i32* %32, align 8, !dbg !2030
  %34 = and i32 %33, 15, !dbg !2030
  %35 = icmp eq i32 %34, 1, !dbg !2033
  br i1 %35, label %38, label %36, !dbg !2034

; <label>:36:                                     ; preds = %31
  %37 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !2035, !tbaa !809
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %37) #6, !dbg !2037
  br label %50, !dbg !2038

; <label>:38:                                     ; preds = %31
  %39 = and i32 %33, 240, !dbg !2042
  %40 = icmp eq i32 %39, 144, !dbg !2043
  br i1 %40, label %42, label %41, !dbg !2044

; <label>:41:                                     ; preds = %38
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2045
  call void @_exit(i32 1) #7, !dbg !2045
  unreachable, !dbg !2045

; <label>:42:                                     ; preds = %38
  %43 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %16, i64 0, i32 2, !dbg !2046
  %44 = bitcast i8** %43 to %struct.quicklist**, !dbg !2046
  %45 = load %struct.quicklist*, %struct.quicklist** %44, align 8, !dbg !2046, !tbaa !122
  %46 = call i64 @quicklistCount(%struct.quicklist* %45) #6, !dbg !2047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2048
  %47 = icmp eq i64 %46, 0, !dbg !2049
  br i1 %47, label %48, label %49, !dbg !2049

; <label>:48:                                     ; preds = %42
  call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* nonnull %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 773) #6, !dbg !2049
  call void @_exit(i32 1) #7, !dbg !2049
  unreachable, !dbg !2049

; <label>:49:                                     ; preds = %42
  call void @rpoplpushCommand(%struct.client* nonnull %0) #9, !dbg !2050
  br label %50

; <label>:50:                                     ; preds = %25, %23, %49, %36, %1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !2051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2051
  ret void, !dbg !2051
}

; Function Attrs: noredzone
declare dso_local void @rewriteClientCommandVector(%struct.client*, i32, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @serveClientBlockedOnList(%struct.client*, %struct.redisObject*, %struct.redisObject*, %struct.redisDb* nocapture readonly, %struct.redisObject*, i32) local_unnamed_addr #0 !dbg !2052 {
  %7 = alloca [3 x %struct.redisObject*], align 16
  %8 = bitcast [3 x %struct.redisObject*]* %7 to i8*, !dbg !2077
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #8, !dbg !2077
  %9 = icmp eq %struct.redisObject* %2, null, !dbg !2079
  br i1 %9, label %10, label %27, !dbg !2080

; <label>:10:                                     ; preds = %6
  %11 = icmp eq i32 %5, 0, !dbg !2081
  %12 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 40), align 8, !dbg !2082
  %13 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 39), align 8, !dbg !2083
  %14 = select i1 %11, %struct.redisObject* %12, %struct.redisObject* %13, !dbg !2084
  %15 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %7, i64 0, i64 0, !dbg !2085
  store %struct.redisObject* %14, %struct.redisObject** %15, align 16, !dbg !2086, !tbaa !199
  %16 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %7, i64 0, i64 1, !dbg !2087
  store %struct.redisObject* %1, %struct.redisObject** %16, align 8, !dbg !2088, !tbaa !199
  %17 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 59), align 8, !dbg !2089
  %18 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 60), align 8, !dbg !2090
  %19 = select i1 %11, %struct.redisCommand* %17, %struct.redisCommand* %18, !dbg !2091
  %20 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %3, i64 0, i32 5, !dbg !2092
  %21 = load i32, i32* %20, align 8, !dbg !2092, !tbaa !868
  call void @propagate(%struct.redisCommand* %19, i32 %21, %struct.redisObject** nonnull %15, i32 2, i32 3) #6, !dbg !2093
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 2) #6, !dbg !2094
  call void @addReplyBulk(%struct.client* %0, %struct.redisObject* %1) #6, !dbg !2095
  call void @addReplyBulk(%struct.client* %0, %struct.redisObject* %4) #6, !dbg !2096
  %22 = select i1 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), !dbg !2097
  %23 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2099
  %24 = load %struct.redisDb*, %struct.redisDb** %23, align 8, !dbg !2099, !tbaa !792
  %25 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %24, i64 0, i32 5, !dbg !2100
  %26 = load i32, i32* %25, align 8, !dbg !2100, !tbaa !868
  call void @notifyKeyspaceEvent(i32 16, i8* %22, %struct.redisObject* %1, i32 %26) #6, !dbg !2101
  br label %50, !dbg !2102

; <label>:27:                                     ; preds = %6
  %28 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2103
  %29 = load %struct.redisDb*, %struct.redisDb** %28, align 8, !dbg !2103, !tbaa !792
  %30 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %29, %struct.redisObject* nonnull %2) #6, !dbg !2104
  %31 = icmp eq %struct.redisObject* %30, null, !dbg !2106
  br i1 %31, label %35, label %32, !dbg !2108

; <label>:32:                                     ; preds = %27
  %33 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %30, i32 1) #6, !dbg !2109
  %34 = icmp eq i32 %33, 0, !dbg !2109
  br i1 %34, label %35, label %50, !dbg !2110

; <label>:35:                                     ; preds = %32, %27
  %36 = load i64, i64* bitcast (%struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 39) to i64*), align 8, !dbg !2111, !tbaa !2113
  %37 = bitcast [3 x %struct.redisObject*]* %7 to i64*, !dbg !2114
  store i64 %36, i64* %37, align 16, !dbg !2114, !tbaa !199
  %38 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %7, i64 0, i64 1, !dbg !2115
  store %struct.redisObject* %1, %struct.redisObject** %38, align 8, !dbg !2116, !tbaa !199
  %39 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 60), align 8, !dbg !2117, !tbaa !2118
  %40 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %3, i64 0, i32 5, !dbg !2119
  %41 = load i32, i32* %40, align 8, !dbg !2119, !tbaa !868
  %42 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %7, i64 0, i64 0, !dbg !2120
  call void @propagate(%struct.redisCommand* %39, i32 %41, %struct.redisObject** nonnull %42, i32 2, i32 3) #6, !dbg !2121
  call void @rpoplpushHandlePush(%struct.client* nonnull %0, %struct.redisObject* nonnull %2, %struct.redisObject* %30, %struct.redisObject* %4) #9, !dbg !2122
  %43 = load i64, i64* bitcast (%struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 41) to i64*), align 8, !dbg !2123, !tbaa !2124
  store i64 %43, i64* %37, align 16, !dbg !2125, !tbaa !199
  store %struct.redisObject* %2, %struct.redisObject** %38, align 8, !dbg !2126, !tbaa !199
  %44 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %7, i64 0, i64 2, !dbg !2127
  store %struct.redisObject* %4, %struct.redisObject** %44, align 16, !dbg !2128, !tbaa !199
  %45 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 58), align 8, !dbg !2129, !tbaa !2130
  %46 = load i32, i32* %40, align 8, !dbg !2131, !tbaa !868
  call void @propagate(%struct.redisCommand* %45, i32 %46, %struct.redisObject** nonnull %42, i32 3, i32 3) #6, !dbg !2132
  %47 = load %struct.redisDb*, %struct.redisDb** %28, align 8, !dbg !2133, !tbaa !792
  %48 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %47, i64 0, i32 5, !dbg !2134
  %49 = load i32, i32* %48, align 8, !dbg !2134, !tbaa !868
  call void @notifyKeyspaceEvent(i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), %struct.redisObject* %1, i32 %49) #6, !dbg !2135
  br label %50

; <label>:50:                                     ; preds = %10, %35, %32
  %51 = phi i32 [ -1, %32 ], [ 0, %35 ], [ 0, %10 ], !dbg !2136
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #8, !dbg !2138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2138
  ret i32 %51, !dbg !2138
}

; Function Attrs: noredzone
declare dso_local void @propagate(%struct.redisCommand*, i32, %struct.redisObject**, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @blockingPopGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !2139 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.redisObject*, align 8
  %5 = alloca i64, align 8
  %6 = bitcast i64* %5 to i8*, !dbg !2159
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8, !dbg !2159
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2160
  %8 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !2160, !tbaa !797
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2162
  %10 = load i32, i32* %9, align 8, !dbg !2162, !tbaa !817
  %11 = add nsw i32 %10, -1, !dbg !2163
  %12 = sext i32 %11 to i64, !dbg !2164
  %13 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 %12, !dbg !2164
  %14 = load %struct.redisObject*, %struct.redisObject** %13, align 8, !dbg !2164, !tbaa !199
  %15 = call i32 @getTimeoutFromObjectOrReply(%struct.client* %0, %struct.redisObject* %14, i64* nonnull %5, i32 0) #6, !dbg !2166
  %16 = icmp eq i32 %15, 0, !dbg !2167
  br i1 %16, label %17, label %138, !dbg !2168

; <label>:17:                                     ; preds = %2
  %18 = load i32, i32* %9, align 8, !dbg !2170, !tbaa !817
  %19 = icmp sgt i32 %18, 2, !dbg !2171
  br i1 %19, label %20, label %125, !dbg !2172

; <label>:20:                                     ; preds = %17
  %21 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  br label %22, !dbg !2172

; <label>:22:                                     ; preds = %20, %119
  %23 = phi i64 [ 1, %20 ], [ %120, %119 ]
  %24 = load %struct.redisDb*, %struct.redisDb** %21, align 8, !dbg !2173, !tbaa !792
  %25 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !2174, !tbaa !797
  %26 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %25, i64 %23, !dbg !2175
  %27 = load %struct.redisObject*, %struct.redisObject** %26, align 8, !dbg !2175, !tbaa !199
  %28 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %24, %struct.redisObject* %27) #6, !dbg !2176
  %29 = icmp eq %struct.redisObject* %28, null, !dbg !2178
  br i1 %29, label %119, label %30, !dbg !2179

; <label>:30:                                     ; preds = %22
  %31 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %28, i64 0, i32 0, !dbg !2180
  %32 = load i32, i32* %31, align 8, !dbg !2180
  %33 = and i32 %32, 15, !dbg !2180
  %34 = icmp eq i32 %33, 1, !dbg !2181
  br i1 %34, label %37, label %35, !dbg !2182

; <label>:35:                                     ; preds = %30
  %36 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !2183, !tbaa !809
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %36) #6, !dbg !2185
  br label %138, !dbg !2186

; <label>:37:                                     ; preds = %30
  %38 = and i32 %32, 240, !dbg !2189
  %39 = icmp eq i32 %38, 144, !dbg !2190
  br i1 %39, label %41, label %40, !dbg !2191

; <label>:40:                                     ; preds = %37
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2192
  call void @_exit(i32 1) #7, !dbg !2192
  unreachable, !dbg !2192

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %28, i64 0, i32 2, !dbg !2193
  %43 = bitcast i8** %42 to %struct.quicklist**, !dbg !2193
  %44 = load %struct.quicklist*, %struct.quicklist** %43, align 8, !dbg !2193, !tbaa !122
  %45 = call i64 @quicklistCount(%struct.quicklist* %44) #6, !dbg !2194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2195
  %46 = icmp eq i64 %45, 0, !dbg !2196
  br i1 %46, label %119, label %47, !dbg !2197

; <label>:47:                                     ; preds = %41
  %48 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %28, i64 0, i32 0, !dbg !2180
  %49 = bitcast i8** %42 to %struct.quicklist**, !dbg !2193
  %50 = and i64 %23, 4294967295, !dbg !2175
  %51 = icmp eq i32 %1, 0, !dbg !2198
  %52 = bitcast i64* %3 to i8*, !dbg !2202
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %52) #8, !dbg !2202
  %53 = bitcast %struct.redisObject** %4 to i8*, !dbg !2203
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53) #8, !dbg !2203
  store %struct.redisObject* null, %struct.redisObject** %4, align 8, !dbg !2204, !tbaa !199
  %54 = load i32, i32* %48, align 8, !dbg !2205
  %55 = and i32 %54, 240, !dbg !2205
  %56 = icmp eq i32 %55, 144, !dbg !2206
  br i1 %56, label %57, label %70, !dbg !2207

; <label>:57:                                     ; preds = %47
  %58 = icmp ne i32 %1, 0, !dbg !2208
  %59 = sext i1 %58 to i32, !dbg !2209
  %60 = load %struct.quicklist*, %struct.quicklist** %49, align 8, !dbg !2211, !tbaa !122
  %61 = bitcast %struct.redisObject** %4 to i8**, !dbg !2212
  %62 = call i32 @quicklistPopCustom(%struct.quicklist* %60, i32 %59, i8** nonnull %61, i32* null, i64* nonnull %3, i8* (i8*, i32)* nonnull @listPopSaver) #6, !dbg !2214
  %63 = icmp eq i32 %62, 0, !dbg !2214
  %64 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !2215
  %65 = icmp ne %struct.redisObject* %64, null, !dbg !2215
  %66 = or i1 %63, %65, !dbg !2216
  br i1 %66, label %71, label %67, !dbg !2216

; <label>:67:                                     ; preds = %57
  %68 = load i64, i64* %3, align 8, !dbg !2217, !tbaa !218
  %69 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %68) #6, !dbg !2218
  store %struct.redisObject* %69, %struct.redisObject** %4, align 8, !dbg !2219, !tbaa !199
  br label %71, !dbg !2220

; <label>:70:                                     ; preds = %47
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2221
  call void @_exit(i32 1) #7, !dbg !2221
  unreachable, !dbg !2221

; <label>:71:                                     ; preds = %57, %67
  %72 = phi %struct.redisObject* [ %64, %57 ], [ %69, %67 ], !dbg !2222
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #8, !dbg !2223
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %52) #8, !dbg !2223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2224
  %73 = icmp eq %struct.redisObject* %72, null, !dbg !2226
  br i1 %73, label %74, label %75, !dbg !2226

; <label>:74:                                     ; preds = %71
  call void @_serverAssert(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 705) #6, !dbg !2226
  call void @_exit(i32 1) #7, !dbg !2226
  unreachable, !dbg !2226

; <label>:75:                                     ; preds = %71
  %76 = select i1 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), !dbg !2227
  call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 2) #6, !dbg !2229
  %77 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !2230, !tbaa !797
  %78 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %77, i64 %50, !dbg !2231
  %79 = load %struct.redisObject*, %struct.redisObject** %78, align 8, !dbg !2231, !tbaa !199
  call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %79) #6, !dbg !2232
  call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* nonnull %72) #6, !dbg !2233
  call void @decrRefCount(%struct.redisObject* nonnull %72) #6, !dbg !2234
  %80 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !2235, !tbaa !797
  %81 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %80, i64 %50, !dbg !2236
  %82 = load %struct.redisObject*, %struct.redisObject** %81, align 8, !dbg !2236, !tbaa !199
  %83 = load %struct.redisDb*, %struct.redisDb** %21, align 8, !dbg !2237, !tbaa !792
  %84 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %83, i64 0, i32 5, !dbg !2238
  %85 = load i32, i32* %84, align 8, !dbg !2238, !tbaa !868
  call void @notifyKeyspaceEvent(i32 16, i8* %76, %struct.redisObject* %82, i32 %85) #6, !dbg !2239
  %86 = load i32, i32* %48, align 8, !dbg !2243
  %87 = and i32 %86, 240, !dbg !2243
  %88 = icmp eq i32 %87, 144, !dbg !2244
  br i1 %88, label %90, label %89, !dbg !2245

; <label>:89:                                     ; preds = %75
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2246
  call void @_exit(i32 1) #7, !dbg !2246
  unreachable, !dbg !2246

; <label>:90:                                     ; preds = %75
  %91 = load %struct.quicklist*, %struct.quicklist** %49, align 8, !dbg !2247, !tbaa !122
  %92 = call i64 @quicklistCount(%struct.quicklist* %91) #6, !dbg !2248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2249
  %93 = icmp eq i64 %92, 0, !dbg !2250
  br i1 %93, label %94, label %106, !dbg !2251

; <label>:94:                                     ; preds = %90
  %95 = load %struct.redisDb*, %struct.redisDb** %21, align 8, !dbg !2252, !tbaa !792
  %96 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !2254, !tbaa !797
  %97 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %96, i64 %50, !dbg !2255
  %98 = load %struct.redisObject*, %struct.redisObject** %97, align 8, !dbg !2255, !tbaa !199
  %99 = call i32 @dbDelete(%struct.redisDb* %95, %struct.redisObject* %98) #6, !dbg !2256
  %100 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !2257, !tbaa !797
  %101 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %100, i64 %50, !dbg !2258
  %102 = load %struct.redisObject*, %struct.redisObject** %101, align 8, !dbg !2258, !tbaa !199
  %103 = load %struct.redisDb*, %struct.redisDb** %21, align 8, !dbg !2259, !tbaa !792
  %104 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %103, i64 0, i32 5, !dbg !2260
  %105 = load i32, i32* %104, align 8, !dbg !2260, !tbaa !868
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), %struct.redisObject* %102, i32 %105) #6, !dbg !2261
  br label %106, !dbg !2262

; <label>:106:                                    ; preds = %94, %90
  %107 = load %struct.redisDb*, %struct.redisDb** %21, align 8, !dbg !2263, !tbaa !792
  %108 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !2264, !tbaa !797
  %109 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %108, i64 %50, !dbg !2265
  %110 = load %struct.redisObject*, %struct.redisObject** %109, align 8, !dbg !2265, !tbaa !199
  call void @signalModifiedKey(%struct.redisDb* %107, %struct.redisObject* %110) #6, !dbg !2266
  %111 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2267, !tbaa !874
  %112 = add nsw i64 %111, 1, !dbg !2267
  store i64 %112, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2267, !tbaa !874
  %113 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 40), align 8, !dbg !2268
  %114 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 39), align 8, !dbg !2269
  %115 = select i1 %51, %struct.redisObject* %113, %struct.redisObject* %114, !dbg !2270
  %116 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !2271, !tbaa !797
  %117 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %116, i64 %50, !dbg !2272
  %118 = load %struct.redisObject*, %struct.redisObject** %117, align 8, !dbg !2272, !tbaa !199
  call void (%struct.client*, i32, ...) @rewriteClientCommandVector(%struct.client* nonnull %0, i32 2, %struct.redisObject* %115, %struct.redisObject* %118) #6, !dbg !2273
  br label %138

; <label>:119:                                    ; preds = %41, %22
  %120 = add nuw nsw i64 %23, 1, !dbg !2274
  %121 = load i32, i32* %9, align 8, !dbg !2170, !tbaa !817
  %122 = add nsw i32 %121, -1, !dbg !2275
  %123 = sext i32 %122 to i64, !dbg !2171
  %124 = icmp slt i64 %120, %123, !dbg !2171
  br i1 %124, label %22, label %125, !dbg !2172, !llvm.loop !2276

; <label>:125:                                    ; preds = %119, %17
  %126 = phi i32 [ %18, %17 ], [ %121, %119 ], !dbg !2170
  %127 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2278
  %128 = load i32, i32* %127, align 8, !dbg !2278, !tbaa !2017
  %129 = and i32 %128, 8, !dbg !2280
  %130 = icmp eq i32 %129, 0, !dbg !2280
  br i1 %130, label %133, label %131, !dbg !2281

; <label>:131:                                    ; preds = %125
  %132 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !2282, !tbaa !2284
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %132) #6, !dbg !2285
  br label %138, !dbg !2286

; <label>:133:                                    ; preds = %125
  %134 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !2287, !tbaa !797
  %135 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %134, i64 1, !dbg !2288
  %136 = add nsw i32 %126, -2, !dbg !2289
  %137 = load i64, i64* %5, align 8, !dbg !2290, !tbaa !218
  call void @blockForKeys(%struct.client* nonnull %0, i32 1, %struct.redisObject** nonnull %135, i32 %136, i64 %137, %struct.redisObject* null, %struct.streamID* null) #6, !dbg !2291
  br label %138, !dbg !2292

; <label>:138:                                    ; preds = %2, %133, %131, %106, %35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8, !dbg !2292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2292
  ret void, !dbg !2292
}

; Function Attrs: noredzone
declare dso_local i32 @getTimeoutFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @blockForKeys(%struct.client*, i32, %struct.redisObject**, i32, i64, %struct.redisObject*, %struct.streamID*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @blpopCommand(%struct.client*) local_unnamed_addr #0 !dbg !2293 {
  tail call void @blockingPopGenericCommand(%struct.client* %0, i32 0) #9, !dbg !2297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2298
  ret void, !dbg !2298
}

; Function Attrs: noredzone nounwind
define dso_local void @brpopCommand(%struct.client*) local_unnamed_addr #0 !dbg !2299 {
  tail call void @blockingPopGenericCommand(%struct.client* %0, i32 1) #9, !dbg !2303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2304
  ret void, !dbg !2304
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
!165 = !DILocation(line: 102, column: 1, scope: !129, inlinedAt: !139)
!166 = !DILocation(line: 45, column: 16, scope: !104)
!167 = !DILocation(line: 46, column: 32, scope: !104)
!168 = !DILocation(line: 46, column: 9, scope: !104)
!169 = !DILocation(line: 47, column: 9, scope: !104)
!170 = !DILocation(line: 51, column: 1, scope: !86)
!171 = !DILocation(line: 49, column: 9, scope: !172)
!172 = distinct !DILexicalBlock(scope: !105, file: !1, line: 48, column: 12)
!173 = distinct !DISubprogram(name: "listPopSaver", scope: !1, file: !1, line: 53, type: !174, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !176)
!174 = !DISubroutineType(types: !175)
!175 = !{!38, !7, !24}
!176 = !{!177, !178}
!177 = !DILocalVariable(name: "data", arg: 1, scope: !173, file: !1, line: 53, type: !7)
!178 = !DILocalVariable(name: "sz", arg: 2, scope: !173, file: !1, line: 53, type: !24)
!179 = !DILocation(line: 53, column: 35, scope: !173)
!180 = !DILocation(line: 53, column: 54, scope: !173)
!181 = !DILocation(line: 54, column: 43, scope: !173)
!182 = !DILocation(line: 54, column: 12, scope: !173)
!183 = !DILocation(line: 54, column: 5, scope: !173)
!184 = distinct !DISubprogram(name: "listTypePop", scope: !1, file: !1, line: 57, type: !185, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !187)
!185 = !DISubroutineType(types: !186)
!186 = !{!89, !89, !36}
!187 = !{!188, !189, !190, !192, !193}
!188 = !DILocalVariable(name: "subject", arg: 1, scope: !184, file: !1, line: 57, type: !89)
!189 = !DILocalVariable(name: "where", arg: 2, scope: !184, file: !1, line: 57, type: !36)
!190 = !DILocalVariable(name: "vlong", scope: !184, file: !1, line: 58, type: !191)
!191 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!192 = !DILocalVariable(name: "value", scope: !184, file: !1, line: 59, type: !89)
!193 = !DILocalVariable(name: "ql_where", scope: !184, file: !1, line: 61, type: !36)
!194 = !DILocation(line: 57, column: 25, scope: !184)
!195 = !DILocation(line: 57, column: 38, scope: !184)
!196 = !DILocation(line: 58, column: 5, scope: !184)
!197 = !DILocation(line: 59, column: 5, scope: !184)
!198 = !DILocation(line: 59, column: 11, scope: !184)
!199 = !{!127, !127, i64 0}
!200 = !DILocation(line: 62, column: 18, scope: !201)
!201 = distinct !DILexicalBlock(scope: !184, file: !1, line: 62, column: 9)
!202 = !DILocation(line: 62, column: 27, scope: !201)
!203 = !DILocation(line: 62, column: 9, scope: !184)
!204 = !DILocation(line: 61, column: 26, scope: !184)
!205 = !DILocation(line: 61, column: 20, scope: !184)
!206 = !DILocation(line: 61, column: 9, scope: !184)
!207 = !DILocation(line: 63, column: 41, scope: !208)
!208 = distinct !DILexicalBlock(scope: !209, file: !1, line: 63, column: 13)
!209 = distinct !DILexicalBlock(scope: !201, file: !1, line: 62, column: 54)
!210 = !DILocation(line: 63, column: 56, scope: !208)
!211 = !DILocation(line: 58, column: 15, scope: !184)
!212 = !DILocation(line: 63, column: 13, scope: !208)
!213 = !DILocation(line: 65, column: 18, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !1, line: 65, column: 17)
!215 = distinct !DILexicalBlock(scope: !208, file: !1, line: 64, column: 61)
!216 = !DILocation(line: 63, column: 13, scope: !209)
!217 = !DILocation(line: 66, column: 56, scope: !214)
!218 = !{!219, !219, i64 0}
!219 = !{!"long long", !125, i64 0}
!220 = !DILocation(line: 66, column: 25, scope: !214)
!221 = !DILocation(line: 66, column: 23, scope: !214)
!222 = !DILocation(line: 66, column: 17, scope: !214)
!223 = !DILocation(line: 69, column: 9, scope: !224)
!224 = distinct !DILexicalBlock(scope: !201, file: !1, line: 68, column: 12)
!225 = !DILocation(line: 71, column: 12, scope: !184)
!226 = !DILocation(line: 72, column: 1, scope: !184)
!227 = !DILocation(line: 71, column: 5, scope: !184)
!228 = distinct !DISubprogram(name: "listTypeLength", scope: !1, file: !1, line: 74, type: !229, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !233)
!229 = !DISubroutineType(types: !230)
!230 = !{!33, !231}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!233 = !{!234}
!234 = !DILocalVariable(name: "subject", arg: 1, scope: !228, file: !1, line: 74, type: !231)
!235 = !DILocation(line: 74, column: 42, scope: !228)
!236 = !DILocation(line: 75, column: 18, scope: !237)
!237 = distinct !DILexicalBlock(scope: !228, file: !1, line: 75, column: 9)
!238 = !DILocation(line: 75, column: 27, scope: !237)
!239 = !DILocation(line: 75, column: 9, scope: !228)
!240 = !DILocation(line: 76, column: 40, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !1, line: 75, column: 54)
!242 = !DILocation(line: 76, column: 16, scope: !241)
!243 = !DILocation(line: 76, column: 9, scope: !241)
!244 = !DILocation(line: 78, column: 9, scope: !245)
!245 = distinct !DILexicalBlock(scope: !237, file: !1, line: 77, column: 12)
!246 = distinct !DISubprogram(name: "listTypeInitIterator", scope: !1, file: !1, line: 83, type: !247, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !269)
!247 = !DISubroutineType(types: !248)
!248 = !{!249, !89, !267, !8}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "listTypeIterator", file: !91, line: 1347, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 1342, size: 192, elements: !252)
!252 = !{!253, !254, !255, !256}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !251, file: !91, line: 1343, baseType: !89, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !251, file: !91, line: 1344, baseType: !8, size: 8, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !251, file: !91, line: 1345, baseType: !8, size: 8, offset: 72)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !251, file: !91, line: 1346, baseType: !257, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistIter", file: !11, line: 88, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistIter", file: !11, line: 82, size: 320, elements: !260)
!260 = !{!261, !264, !265, !266, !268}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !259, file: !11, line: 83, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !259, file: !11, line: 84, baseType: !15, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !259, file: !11, line: 85, baseType: !7, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !259, file: !11, line: 86, baseType: !267, size: 64, offset: 192)
!267 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !259, file: !11, line: 87, baseType: !36, size: 32, offset: 256)
!269 = !{!270, !271, !272, !273, !274}
!270 = !DILocalVariable(name: "subject", arg: 1, scope: !246, file: !1, line: 83, type: !89)
!271 = !DILocalVariable(name: "index", arg: 2, scope: !246, file: !1, line: 83, type: !267)
!272 = !DILocalVariable(name: "direction", arg: 3, scope: !246, file: !1, line: 84, type: !8)
!273 = !DILocalVariable(name: "li", scope: !246, file: !1, line: 85, type: !249)
!274 = !DILocalVariable(name: "iter_direction", scope: !246, file: !1, line: 92, type: !36)
!275 = !DILocation(line: 83, column: 46, scope: !246)
!276 = !DILocation(line: 83, column: 60, scope: !246)
!277 = !DILocation(line: 84, column: 54, scope: !246)
!278 = !DILocation(line: 85, column: 28, scope: !246)
!279 = !DILocation(line: 86, column: 9, scope: !246)
!280 = !DILocation(line: 86, column: 17, scope: !246)
!281 = !{!282, !127, i64 0}
!282 = !{!"", !127, i64 0, !125, i64 8, !125, i64 9, !127, i64 16}
!283 = !DILocation(line: 87, column: 29, scope: !246)
!284 = !DILocation(line: 87, column: 20, scope: !246)
!285 = !DILocation(line: 87, column: 9, scope: !246)
!286 = !DILocation(line: 87, column: 18, scope: !246)
!287 = !{!282, !125, i64 8}
!288 = !DILocation(line: 88, column: 9, scope: !246)
!289 = !DILocation(line: 88, column: 19, scope: !246)
!290 = !{!282, !125, i64 9}
!291 = !DILocation(line: 89, column: 9, scope: !246)
!292 = !DILocation(line: 89, column: 14, scope: !246)
!293 = !{!282, !127, i64 16}
!294 = !DILocation(line: 94, column: 22, scope: !295)
!295 = distinct !DILexicalBlock(scope: !246, file: !1, line: 94, column: 9)
!296 = !DILocation(line: 94, column: 9, scope: !246)
!297 = !DILocation(line: 93, column: 19, scope: !246)
!298 = !DILocation(line: 93, column: 9, scope: !246)
!299 = !DILocation(line: 92, column: 9, scope: !246)
!300 = !DILocation(line: 85, column: 23, scope: !246)
!301 = !DILocation(line: 95, column: 59, scope: !302)
!302 = distinct !DILexicalBlock(scope: !295, file: !1, line: 94, column: 49)
!303 = !DILocation(line: 95, column: 20, scope: !302)
!304 = !DILocation(line: 95, column: 18, scope: !302)
!305 = !DILocation(line: 100, column: 5, scope: !246)
!306 = !DILocation(line: 98, column: 9, scope: !307)
!307 = distinct !DILexicalBlock(scope: !295, file: !1, line: 97, column: 12)
!308 = distinct !DISubprogram(name: "listTypeReleaseIterator", scope: !1, file: !1, line: 104, type: !309, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !311)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !249}
!311 = !{!312}
!312 = !DILocalVariable(name: "li", arg: 1, scope: !308, file: !1, line: 104, type: !249)
!313 = !DILocation(line: 104, column: 48, scope: !308)
!314 = !DILocation(line: 105, column: 15, scope: !308)
!315 = !DILocation(line: 105, column: 5, scope: !308)
!316 = !DILocation(line: 106, column: 11, scope: !308)
!317 = !DILocation(line: 106, column: 5, scope: !308)
!318 = !DILocation(line: 107, column: 1, scope: !308)
!319 = distinct !DISubprogram(name: "listTypeNext", scope: !1, file: !1, line: 112, type: !320, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !338)
!320 = !DISubroutineType(types: !321)
!321 = !{!36, !249, !322}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "listTypeEntry", file: !91, line: 1353, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 1350, size: 448, elements: !325)
!325 = !{!326, !327}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "li", scope: !324, file: !91, line: 1351, baseType: !249, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !324, file: !91, line: 1352, baseType: !328, size: 384, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistEntry", file: !11, line: 98, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistEntry", file: !11, line: 90, size: 384, elements: !330)
!330 = !{!331, !332, !333, !334, !335, !336, !337}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !329, file: !11, line: 91, baseType: !262, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !329, file: !11, line: 92, baseType: !15, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !329, file: !11, line: 93, baseType: !7, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !329, file: !11, line: 94, baseType: !7, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "longval", scope: !329, file: !11, line: 95, baseType: !191, size: 64, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !329, file: !11, line: 96, baseType: !24, size: 32, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !329, file: !11, line: 97, baseType: !36, size: 32, offset: 352)
!338 = !{!339, !340}
!339 = !DILocalVariable(name: "li", arg: 1, scope: !319, file: !1, line: 112, type: !249)
!340 = !DILocalVariable(name: "entry", arg: 2, scope: !319, file: !1, line: 112, type: !322)
!341 = !DILocation(line: 112, column: 36, scope: !319)
!342 = !DILocation(line: 112, column: 55, scope: !319)
!343 = !DILocation(line: 114, column: 5, scope: !319)
!344 = !DILocation(line: 116, column: 12, scope: !319)
!345 = !DILocation(line: 116, column: 15, scope: !319)
!346 = !{!347, !127, i64 0}
!347 = !{!"", !127, i64 0, !348, i64 8}
!348 = !{!"quicklistEntry", !127, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !219, i64 32, !124, i64 40, !124, i64 44}
!349 = !DILocation(line: 117, column: 22, scope: !350)
!350 = distinct !DILexicalBlock(scope: !319, file: !1, line: 117, column: 9)
!351 = !DILocation(line: 117, column: 9, scope: !319)
!352 = !DILocation(line: 118, column: 34, scope: !353)
!353 = distinct !DILexicalBlock(scope: !350, file: !1, line: 117, column: 49)
!354 = !DILocation(line: 118, column: 48, scope: !353)
!355 = !DILocation(line: 118, column: 16, scope: !353)
!356 = !DILocation(line: 118, column: 9, scope: !353)
!357 = !DILocation(line: 120, column: 9, scope: !358)
!358 = distinct !DILexicalBlock(scope: !350, file: !1, line: 119, column: 12)
!359 = distinct !DISubprogram(name: "listTypeGet", scope: !1, file: !1, line: 126, type: !360, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !362)
!360 = !DISubroutineType(types: !361)
!361 = !{!89, !322}
!362 = !{!363, !364}
!363 = !DILocalVariable(name: "entry", arg: 1, scope: !359, file: !1, line: 126, type: !322)
!364 = !DILocalVariable(name: "value", scope: !359, file: !1, line: 127, type: !89)
!365 = !DILocation(line: 126, column: 34, scope: !359)
!366 = !DILocation(line: 127, column: 11, scope: !359)
!367 = !DILocation(line: 128, column: 16, scope: !368)
!368 = distinct !DILexicalBlock(scope: !359, file: !1, line: 128, column: 9)
!369 = !DILocation(line: 128, column: 20, scope: !368)
!370 = !DILocation(line: 128, column: 29, scope: !368)
!371 = !DILocation(line: 128, column: 9, scope: !359)
!372 = !DILocation(line: 129, column: 26, scope: !373)
!373 = distinct !DILexicalBlock(scope: !374, file: !1, line: 129, column: 13)
!374 = distinct !DILexicalBlock(scope: !368, file: !1, line: 128, column: 56)
!375 = !{!347, !127, i64 32}
!376 = !DILocation(line: 129, column: 13, scope: !373)
!377 = !DILocation(line: 129, column: 13, scope: !374)
!378 = !DILocation(line: 131, column: 53, scope: !379)
!379 = distinct !DILexicalBlock(scope: !373, file: !1, line: 129, column: 33)
!380 = !{!347, !124, i64 48}
!381 = !DILocation(line: 131, column: 40, scope: !379)
!382 = !DILocation(line: 130, column: 21, scope: !379)
!383 = !DILocation(line: 132, column: 9, scope: !379)
!384 = !DILocation(line: 133, column: 65, scope: !385)
!385 = distinct !DILexicalBlock(scope: !373, file: !1, line: 132, column: 16)
!386 = !{!347, !219, i64 40}
!387 = !DILocation(line: 133, column: 21, scope: !385)
!388 = !DILocation(line: 136, column: 9, scope: !389)
!389 = distinct !DILexicalBlock(scope: !368, file: !1, line: 135, column: 12)
!390 = !DILocation(line: 0, scope: !385)
!391 = !DILocation(line: 138, column: 5, scope: !359)
!392 = distinct !DISubprogram(name: "listTypeInsert", scope: !1, file: !1, line: 141, type: !393, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !395)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !322, !89, !36}
!395 = !{!396, !397, !398, !399, !402}
!396 = !DILocalVariable(name: "entry", arg: 1, scope: !392, file: !1, line: 141, type: !322)
!397 = !DILocalVariable(name: "value", arg: 2, scope: !392, file: !1, line: 141, type: !89)
!398 = !DILocalVariable(name: "where", arg: 3, scope: !392, file: !1, line: 141, type: !36)
!399 = !DILocalVariable(name: "str", scope: !400, file: !1, line: 144, type: !135)
!400 = distinct !DILexicalBlock(scope: !401, file: !1, line: 142, column: 56)
!401 = distinct !DILexicalBlock(scope: !392, file: !1, line: 142, column: 9)
!402 = !DILocalVariable(name: "len", scope: !400, file: !1, line: 145, type: !107)
!403 = !DILocation(line: 141, column: 36, scope: !392)
!404 = !DILocation(line: 141, column: 49, scope: !392)
!405 = !DILocation(line: 141, column: 60, scope: !392)
!406 = !DILocation(line: 142, column: 16, scope: !401)
!407 = !DILocation(line: 142, column: 20, scope: !401)
!408 = !DILocation(line: 142, column: 29, scope: !401)
!409 = !DILocation(line: 142, column: 9, scope: !392)
!410 = !DILocation(line: 143, column: 17, scope: !400)
!411 = !DILocation(line: 144, column: 26, scope: !400)
!412 = !DILocation(line: 144, column: 13, scope: !400)
!413 = !DILocation(line: 87, column: 39, scope: !129, inlinedAt: !414)
!414 = distinct !DILocation(line: 145, column: 22, scope: !400)
!415 = !DILocation(line: 88, column: 27, scope: !129, inlinedAt: !414)
!416 = !DILocation(line: 88, column: 19, scope: !129, inlinedAt: !414)
!417 = !DILocation(line: 89, column: 5, scope: !129, inlinedAt: !414)
!418 = !DILocation(line: 91, column: 20, scope: !145, inlinedAt: !414)
!419 = !DILocation(line: 91, column: 13, scope: !145, inlinedAt: !414)
!420 = !DILocation(line: 93, column: 20, scope: !145, inlinedAt: !414)
!421 = !DILocation(line: 93, column: 34, scope: !145, inlinedAt: !414)
!422 = !DILocation(line: 93, column: 13, scope: !145, inlinedAt: !414)
!423 = !DILocation(line: 95, column: 20, scope: !145, inlinedAt: !414)
!424 = !DILocation(line: 95, column: 35, scope: !145, inlinedAt: !414)
!425 = !DILocation(line: 95, column: 13, scope: !145, inlinedAt: !414)
!426 = !DILocation(line: 97, column: 20, scope: !145, inlinedAt: !414)
!427 = !DILocation(line: 97, column: 35, scope: !145, inlinedAt: !414)
!428 = !DILocation(line: 97, column: 13, scope: !145, inlinedAt: !414)
!429 = !DILocation(line: 99, column: 20, scope: !145, inlinedAt: !414)
!430 = !DILocation(line: 99, column: 35, scope: !145, inlinedAt: !414)
!431 = !DILocation(line: 99, column: 13, scope: !145, inlinedAt: !414)
!432 = !DILocation(line: 0, scope: !145, inlinedAt: !414)
!433 = !DILocation(line: 102, column: 1, scope: !129, inlinedAt: !414)
!434 = !DILocation(line: 145, column: 16, scope: !400)
!435 = !DILocation(line: 146, column: 13, scope: !400)
!436 = !DILocation(line: 147, column: 54, scope: !437)
!437 = distinct !DILexicalBlock(scope: !438, file: !1, line: 146, column: 33)
!438 = distinct !DILexicalBlock(scope: !400, file: !1, line: 146, column: 13)
!439 = !DILocation(line: 147, column: 60, scope: !437)
!440 = !{!347, !127, i64 8}
!441 = !DILocation(line: 147, column: 13, scope: !437)
!442 = !DILocation(line: 149, column: 9, scope: !437)
!443 = !DILocation(line: 150, column: 55, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !1, line: 149, column: 40)
!445 = distinct !DILexicalBlock(scope: !438, file: !1, line: 149, column: 20)
!446 = !DILocation(line: 150, column: 61, scope: !444)
!447 = !DILocation(line: 150, column: 13, scope: !444)
!448 = !DILocation(line: 152, column: 9, scope: !444)
!449 = !DILocation(line: 153, column: 9, scope: !400)
!450 = !DILocation(line: 157, column: 1, scope: !392)
!451 = !DILocation(line: 155, column: 9, scope: !452)
!452 = distinct !DILexicalBlock(scope: !401, file: !1, line: 154, column: 12)
!453 = distinct !DISubprogram(name: "listTypeEqual", scope: !1, file: !1, line: 160, type: !454, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{!36, !322, !89}
!456 = !{!457, !458}
!457 = !DILocalVariable(name: "entry", arg: 1, scope: !453, file: !1, line: 160, type: !322)
!458 = !DILocalVariable(name: "o", arg: 2, scope: !453, file: !1, line: 160, type: !89)
!459 = !DILocation(line: 160, column: 34, scope: !453)
!460 = !DILocation(line: 160, column: 47, scope: !453)
!461 = !DILocation(line: 161, column: 16, scope: !462)
!462 = distinct !DILexicalBlock(scope: !453, file: !1, line: 161, column: 9)
!463 = !DILocation(line: 161, column: 20, scope: !462)
!464 = !DILocation(line: 161, column: 29, scope: !462)
!465 = !DILocation(line: 161, column: 9, scope: !453)
!466 = !DILocation(line: 162, column: 9, scope: !467)
!467 = distinct !DILexicalBlock(scope: !462, file: !1, line: 161, column: 56)
!468 = !DILocation(line: 163, column: 46, scope: !467)
!469 = !{!347, !127, i64 24}
!470 = !DILocation(line: 163, column: 52, scope: !467)
!471 = !DILocation(line: 87, column: 39, scope: !129, inlinedAt: !472)
!472 = distinct !DILocation(line: 163, column: 56, scope: !467)
!473 = !DILocation(line: 88, column: 27, scope: !129, inlinedAt: !472)
!474 = !DILocation(line: 88, column: 19, scope: !129, inlinedAt: !472)
!475 = !DILocation(line: 89, column: 5, scope: !129, inlinedAt: !472)
!476 = !DILocation(line: 91, column: 20, scope: !145, inlinedAt: !472)
!477 = !DILocation(line: 91, column: 13, scope: !145, inlinedAt: !472)
!478 = !DILocation(line: 93, column: 20, scope: !145, inlinedAt: !472)
!479 = !DILocation(line: 93, column: 34, scope: !145, inlinedAt: !472)
!480 = !DILocation(line: 93, column: 13, scope: !145, inlinedAt: !472)
!481 = !DILocation(line: 95, column: 20, scope: !145, inlinedAt: !472)
!482 = !DILocation(line: 95, column: 35, scope: !145, inlinedAt: !472)
!483 = !DILocation(line: 95, column: 13, scope: !145, inlinedAt: !472)
!484 = !DILocation(line: 97, column: 20, scope: !145, inlinedAt: !472)
!485 = !DILocation(line: 97, column: 35, scope: !145, inlinedAt: !472)
!486 = !DILocation(line: 97, column: 13, scope: !145, inlinedAt: !472)
!487 = !DILocation(line: 99, column: 20, scope: !145, inlinedAt: !472)
!488 = !DILocation(line: 99, column: 35, scope: !145, inlinedAt: !472)
!489 = !DILocation(line: 99, column: 13, scope: !145, inlinedAt: !472)
!490 = !DILocation(line: 0, scope: !145, inlinedAt: !472)
!491 = !DILocation(line: 102, column: 1, scope: !129, inlinedAt: !472)
!492 = !DILocation(line: 163, column: 56, scope: !467)
!493 = !DILocation(line: 163, column: 16, scope: !467)
!494 = !DILocation(line: 163, column: 9, scope: !467)
!495 = !DILocation(line: 165, column: 9, scope: !496)
!496 = distinct !DILexicalBlock(scope: !462, file: !1, line: 164, column: 12)
!497 = distinct !DISubprogram(name: "listTypeDelete", scope: !1, file: !1, line: 170, type: !498, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !500)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !249, !322}
!500 = !{!501, !502}
!501 = !DILocalVariable(name: "iter", arg: 1, scope: !497, file: !1, line: 170, type: !249)
!502 = !DILocalVariable(name: "entry", arg: 2, scope: !497, file: !1, line: 170, type: !322)
!503 = !DILocation(line: 170, column: 39, scope: !497)
!504 = !DILocation(line: 170, column: 60, scope: !497)
!505 = !DILocation(line: 171, column: 16, scope: !506)
!506 = distinct !DILexicalBlock(scope: !497, file: !1, line: 171, column: 9)
!507 = !DILocation(line: 171, column: 20, scope: !506)
!508 = !DILocation(line: 171, column: 29, scope: !506)
!509 = !DILocation(line: 171, column: 9, scope: !497)
!510 = !DILocation(line: 172, column: 33, scope: !511)
!511 = distinct !DILexicalBlock(scope: !506, file: !1, line: 171, column: 56)
!512 = !DILocation(line: 172, column: 47, scope: !511)
!513 = !DILocation(line: 172, column: 9, scope: !511)
!514 = !DILocation(line: 176, column: 1, scope: !497)
!515 = !DILocation(line: 174, column: 9, scope: !516)
!516 = distinct !DILexicalBlock(scope: !506, file: !1, line: 173, column: 12)
!517 = distinct !DISubprogram(name: "listTypeConvert", scope: !1, file: !1, line: 179, type: !518, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !520)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !89, !36}
!520 = !{!521, !522, !523, !526}
!521 = !DILocalVariable(name: "subject", arg: 1, scope: !517, file: !1, line: 179, type: !89)
!522 = !DILocalVariable(name: "enc", arg: 2, scope: !517, file: !1, line: 179, type: !36)
!523 = !DILocalVariable(name: "zlen", scope: !524, file: !1, line: 184, type: !107)
!524 = distinct !DILexicalBlock(scope: !525, file: !1, line: 183, column: 40)
!525 = distinct !DILexicalBlock(scope: !517, file: !1, line: 183, column: 9)
!526 = !DILocalVariable(name: "depth", scope: !524, file: !1, line: 185, type: !36)
!527 = !DILocation(line: 179, column: 28, scope: !517)
!528 = !DILocation(line: 179, column: 41, scope: !517)
!529 = !DILocation(line: 180, column: 5, scope: !517)
!530 = !DILocation(line: 181, column: 5, scope: !517)
!531 = !DILocation(line: 183, column: 13, scope: !525)
!532 = !DILocation(line: 183, column: 9, scope: !517)
!533 = !DILocation(line: 184, column: 30, scope: !524)
!534 = !{!535, !124, i64 2864}
!535 = !{!"redisServer", !124, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !124, i64 32, !124, i64 36, !124, i64 40, !127, i64 48, !127, i64 56, !127, i64 64, !127, i64 72, !124, i64 80, !124, i64 84, !124, i64 88, !124, i64 92, !127, i64 96, !127, i64 104, !124, i64 112, !124, i64 116, !125, i64 120, !124, i64 164, !162, i64 168, !124, i64 176, !127, i64 184, !127, i64 192, !127, i64 200, !125, i64 208, !124, i64 216, !124, i64 220, !125, i64 224, !124, i64 352, !127, i64 360, !124, i64 368, !125, i64 372, !124, i64 436, !124, i64 440, !125, i64 444, !124, i64 508, !127, i64 512, !127, i64 520, !127, i64 528, !127, i64 536, !127, i64 544, !127, i64 552, !127, i64 560, !124, i64 568, !219, i64 576, !125, i64 584, !127, i64 840, !162, i64 848, !124, i64 856, !124, i64 860, !162, i64 864, !162, i64 872, !162, i64 880, !162, i64 888, !127, i64 896, !127, i64 904, !127, i64 912, !127, i64 920, !127, i64 928, !127, i64 936, !127, i64 944, !127, i64 952, !127, i64 960, !127, i64 968, !127, i64 976, !127, i64 984, !127, i64 992, !162, i64 1000, !219, i64 1008, !219, i64 1016, !219, i64 1024, !536, i64 1032, !219, i64 1040, !219, i64 1048, !219, i64 1056, !219, i64 1064, !219, i64 1072, !219, i64 1080, !219, i64 1088, !219, i64 1096, !219, i64 1104, !162, i64 1112, !219, i64 1120, !536, i64 1128, !219, i64 1136, !219, i64 1144, !219, i64 1152, !219, i64 1160, !127, i64 1168, !219, i64 1176, !219, i64 1184, !162, i64 1192, !537, i64 1200, !219, i64 1240, !219, i64 1248, !162, i64 1256, !162, i64 1264, !125, i64 1272, !124, i64 1728, !124, i64 1732, !124, i64 1736, !124, i64 1740, !124, i64 1744, !162, i64 1752, !124, i64 1760, !124, i64 1764, !124, i64 1768, !124, i64 1772, !162, i64 1776, !162, i64 1784, !124, i64 1792, !124, i64 1796, !124, i64 1800, !124, i64 1804, !125, i64 1808, !124, i64 1880, !124, i64 1884, !127, i64 1888, !124, i64 1896, !124, i64 1900, !162, i64 1904, !162, i64 1912, !162, i64 1920, !162, i64 1928, !124, i64 1936, !124, i64 1940, !127, i64 1944, !127, i64 1952, !124, i64 1960, !124, i64 1964, !162, i64 1968, !162, i64 1976, !162, i64 1984, !162, i64 1992, !124, i64 2000, !162, i64 2008, !124, i64 2016, !124, i64 2020, !124, i64 2024, !124, i64 2028, !124, i64 2032, !124, i64 2036, !124, i64 2040, !124, i64 2044, !124, i64 2048, !124, i64 2052, !124, i64 2056, !124, i64 2060, !124, i64 2064, !127, i64 2072, !219, i64 2080, !219, i64 2088, !124, i64 2096, !127, i64 2104, !124, i64 2112, !127, i64 2120, !124, i64 2128, !124, i64 2132, !162, i64 2136, !162, i64 2144, !162, i64 2152, !162, i64 2160, !124, i64 2168, !124, i64 2172, !124, i64 2176, !124, i64 2180, !124, i64 2184, !124, i64 2188, !125, i64 2192, !538, i64 2200, !539, i64 2224, !127, i64 2240, !124, i64 2248, !127, i64 2256, !124, i64 2264, !125, i64 2268, !125, i64 2309, !219, i64 2352, !219, i64 2360, !124, i64 2368, !124, i64 2372, !127, i64 2376, !219, i64 2384, !219, i64 2392, !219, i64 2400, !219, i64 2408, !162, i64 2416, !162, i64 2424, !124, i64 2432, !124, i64 2436, !124, i64 2440, !124, i64 2444, !124, i64 2448, !127, i64 2456, !127, i64 2464, !124, i64 2472, !124, i64 2476, !127, i64 2480, !127, i64 2488, !124, i64 2496, !124, i64 2500, !162, i64 2504, !162, i64 2512, !162, i64 2520, !124, i64 2528, !124, i64 2532, !127, i64 2536, !162, i64 2544, !124, i64 2552, !124, i64 2556, !124, i64 2560, !162, i64 2568, !124, i64 2576, !124, i64 2580, !124, i64 2584, !127, i64 2592, !125, i64 2600, !219, i64 2648, !124, i64 2656, !127, i64 2664, !127, i64 2672, !124, i64 2680, !127, i64 2688, !124, i64 2696, !124, i64 2700, !219, i64 2704, !124, i64 2712, !124, i64 2716, !124, i64 2720, !124, i64 2724, !219, i64 2728, !124, i64 2736, !125, i64 2740, !127, i64 2768, !127, i64 2776, !124, i64 2784, !124, i64 2788, !124, i64 2792, !124, i64 2796, !162, i64 2800, !162, i64 2808, !162, i64 2816, !162, i64 2824, !162, i64 2832, !162, i64 2840, !162, i64 2848, !162, i64 2856, !124, i64 2864, !124, i64 2868, !162, i64 2872, !162, i64 2880, !124, i64 2888, !219, i64 2896, !127, i64 2904, !127, i64 2912, !124, i64 2920, !124, i64 2924, !219, i64 2928, !127, i64 2936, !127, i64 2944, !124, i64 2952, !124, i64 2956, !124, i64 2960, !124, i64 2964, !127, i64 2968, !124, i64 2976, !124, i64 2980, !124, i64 2984, !127, i64 2992, !127, i64 3000, !127, i64 3008, !127, i64 3016, !219, i64 3024, !219, i64 3032, !219, i64 3040, !124, i64 3048, !124, i64 3052, !124, i64 3056, !124, i64 3060, !124, i64 3064, !124, i64 3068, !124, i64 3072, !124, i64 3076, !124, i64 3080, !124, i64 3084, !124, i64 3088, !219, i64 3096, !127, i64 3104, !127, i64 3112, !127, i64 3120, !124, i64 3128, !124, i64 3132, !124, i64 3136, !162, i64 3144, !127, i64 3152, !127, i64 3160, !127, i64 3168}
!536 = !{!"double", !125, i64 0}
!537 = !{!"malloc_stats", !162, i64 0, !162, i64 8, !162, i64 16, !162, i64 24, !162, i64 32}
!538 = !{!"", !124, i64 0, !162, i64 8, !219, i64 16}
!539 = !{!"redisOpArray", !127, i64 0, !124, i64 8}
!540 = !DILocation(line: 185, column: 28, scope: !524)
!541 = !{!535, !124, i64 2868}
!542 = !DILocation(line: 185, column: 13, scope: !524)
!543 = !DILocation(line: 186, column: 73, scope: !524)
!544 = !DILocation(line: 186, column: 24, scope: !524)
!545 = !DILocation(line: 186, column: 22, scope: !524)
!546 = !DILocation(line: 187, column: 27, scope: !524)
!547 = !DILocation(line: 191, column: 1, scope: !517)
!548 = !DILocation(line: 189, column: 9, scope: !549)
!549 = distinct !DILexicalBlock(scope: !525, file: !1, line: 188, column: 12)
!550 = distinct !DISubprogram(name: "pushGenericCommand", scope: !1, file: !1, line: 197, type: !551, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !779)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !553, !36}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !91, line: 780, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !91, line: 723, size: 135360, elements: !556)
!556 = !{!557, !558, !559, !662, !663, !664, !665, !666, !667, !668, !670, !694, !695, !696, !697, !698, !699, !701, !702, !705, !706, !707, !708, !709, !710, !711, !712, !717, !718, !719, !720, !721, !722, !723, !724, !728, !729, !733, !734, !750, !751, !768, !769, !770, !771, !772, !773, !774, !775}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !555, file: !91, line: 724, baseType: !77, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !555, file: !91, line: 725, baseType: !36, size: 32, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !555, file: !91, line: 726, baseType: !560, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !91, line: 656, baseType: !562)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !91, line: 647, size: 512, elements: !563)
!563 = !{!564, !627, !628, !629, !630, !631, !632, !633}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !562, file: !91, line: 648, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !567, line: 82, baseType: !568)
!567 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !567, line: 76, size: 768, elements: !569)
!569 = !{!570, !595, !596, !625, !626}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !568, file: !567, line: 77, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !567, line: 65, baseType: !573)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !567, line: 58, size: 384, elements: !574)
!574 = !{!575, !581, !585, !586, !590, !594}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !573, file: !567, line: 59, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!77, !579}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !573, file: !567, line: 60, baseType: !582, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!38, !38, !579}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !573, file: !567, line: 61, baseType: !582, size: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !573, file: !567, line: 62, baseType: !587, size: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!36, !38, !579, !579}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !573, file: !567, line: 63, baseType: !591, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !38, !38}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !573, file: !567, line: 64, baseType: !591, size: 64, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !568, file: !567, line: 78, baseType: !38, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !568, file: !567, line: 79, baseType: !597, size: 512, offset: 128)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 512, elements: !623)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !567, line: 74, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !567, line: 69, size: 256, elements: !600)
!600 = !{!601, !620, !621, !622}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !599, file: !567, line: 70, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !567, line: 56, baseType: !605)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !567, line: 47, size: 192, elements: !606)
!606 = !{!607, !608, !618}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !605, file: !567, line: 48, baseType: !38, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !605, file: !567, line: 54, baseType: !609, size: 64, offset: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !605, file: !567, line: 49, size: 64, elements: !610)
!610 = !{!611, !612, !613, !616}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !609, file: !567, line: 50, baseType: !38, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !609, file: !567, line: 51, baseType: !77, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !609, file: !567, line: 52, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !45, line: 56, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !47, line: 103, baseType: !267)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !609, file: !567, line: 53, baseType: !617, size: 64)
!617 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !605, file: !567, line: 55, baseType: !619, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !599, file: !567, line: 71, baseType: !33, size: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !599, file: !567, line: 72, baseType: !33, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !599, file: !567, line: 73, baseType: !33, size: 64, offset: 192)
!623 = !{!624}
!624 = !DISubrange(count: 2)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !568, file: !567, line: 80, baseType: !267, size: 64, offset: 640)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !568, file: !567, line: 81, baseType: !33, size: 64, offset: 704)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !562, file: !91, line: 649, baseType: !565, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !562, file: !91, line: 650, baseType: !565, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !562, file: !91, line: 651, baseType: !565, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !562, file: !91, line: 652, baseType: !565, size: 64, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !562, file: !91, line: 653, baseType: !36, size: 32, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !562, file: !91, line: 654, baseType: !191, size: 64, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !562, file: !91, line: 655, baseType: !634, size: 64, offset: 448)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !636, line: 54, baseType: !637)
!636 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !636, line: 47, size: 384, elements: !638)
!638 = !{!639, !648, !649, !653, !657, !661}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !637, file: !636, line: 48, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !636, line: 40, baseType: !642)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !636, line: 36, size: 192, elements: !643)
!643 = !{!644, !646, !647}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !642, file: !636, line: 37, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !642, file: !636, line: 38, baseType: !645, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !642, file: !636, line: 39, baseType: !38, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !637, file: !636, line: 49, baseType: !640, size: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !637, file: !636, line: 50, baseType: !650, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!38, !38}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !637, file: !636, line: 51, baseType: !654, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !38}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !637, file: !636, line: 52, baseType: !658, size: 64, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!36, !38, !38}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !637, file: !636, line: 53, baseType: !33, size: 64, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !555, file: !91, line: 727, baseType: !89, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !555, file: !91, line: 728, baseType: !135, size: 64, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !555, file: !91, line: 729, baseType: !107, size: 64, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !555, file: !91, line: 730, baseType: !135, size: 64, offset: 384)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !555, file: !91, line: 734, baseType: !107, size: 64, offset: 448)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !555, file: !91, line: 735, baseType: !36, size: 32, offset: 512)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !555, file: !91, line: 736, baseType: !669, size: 64, offset: 576)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !555, file: !91, line: 737, baseType: !671, size: 64, offset: 640)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !91, line: 1307, size: 640, elements: !673)
!673 = !{!674, !675, !680, !681, !682, !683, !689, !690, !691, !692, !693}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !672, file: !91, line: 1308, baseType: !4, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !672, file: !91, line: 1309, baseType: !676, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !91, line: 1305, baseType: !678)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !553}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !672, file: !91, line: 1310, baseType: !36, size: 32, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !672, file: !91, line: 1311, baseType: !4, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !672, file: !91, line: 1312, baseType: !36, size: 32, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !672, file: !91, line: 1315, baseType: !684, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !91, line: 1306, baseType: !686)
!686 = !DISubroutineType(types: !687)
!687 = !{!688, !671, !669, !36, !688}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !672, file: !91, line: 1317, baseType: !36, size: 32, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !672, file: !91, line: 1318, baseType: !36, size: 32, offset: 416)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !672, file: !91, line: 1319, baseType: !36, size: 32, offset: 448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !672, file: !91, line: 1320, baseType: !191, size: 64, offset: 512)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !672, file: !91, line: 1320, baseType: !191, size: 64, offset: 576)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !555, file: !91, line: 737, baseType: !671, size: 64, offset: 704)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !555, file: !91, line: 738, baseType: !36, size: 32, offset: 768)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !555, file: !91, line: 739, baseType: !36, size: 32, offset: 800)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !555, file: !91, line: 740, baseType: !267, size: 64, offset: 832)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !555, file: !91, line: 741, baseType: !634, size: 64, offset: 896)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !555, file: !91, line: 742, baseType: !700, size: 64, offset: 960)
!700 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !555, file: !91, line: 743, baseType: !107, size: 64, offset: 1024)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !555, file: !91, line: 745, baseType: !703, size: 64, offset: 1088)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !704, line: 34, baseType: !267)
!704 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!705 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !555, file: !91, line: 746, baseType: !703, size: 64, offset: 1152)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !555, file: !91, line: 747, baseType: !703, size: 64, offset: 1216)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !555, file: !91, line: 748, baseType: !36, size: 32, offset: 1280)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !555, file: !91, line: 749, baseType: !36, size: 32, offset: 1312)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !555, file: !91, line: 750, baseType: !36, size: 32, offset: 1344)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !555, file: !91, line: 751, baseType: !36, size: 32, offset: 1376)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !555, file: !91, line: 752, baseType: !36, size: 32, offset: 1408)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !555, file: !91, line: 753, baseType: !713, size: 64, offset: 1472)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !714, line: 173, baseType: !715)
!714 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !110, line: 100, baseType: !716)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !110, line: 44, baseType: !267)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !555, file: !91, line: 754, baseType: !713, size: 64, offset: 1536)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !555, file: !91, line: 755, baseType: !135, size: 64, offset: 1600)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !555, file: !91, line: 756, baseType: !191, size: 64, offset: 1664)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !555, file: !91, line: 757, baseType: !191, size: 64, offset: 1728)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !555, file: !91, line: 758, baseType: !191, size: 64, offset: 1792)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !555, file: !91, line: 759, baseType: !191, size: 64, offset: 1856)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !555, file: !91, line: 760, baseType: !191, size: 64, offset: 1920)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !555, file: !91, line: 763, baseType: !725, size: 328, offset: 1984)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 328, elements: !726)
!726 = !{!727}
!727 = !DISubrange(count: 41)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !555, file: !91, line: 764, baseType: !36, size: 32, offset: 2336)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !555, file: !91, line: 765, baseType: !730, size: 368, offset: 2368)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 368, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 46)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !555, file: !91, line: 766, baseType: !36, size: 32, offset: 2752)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !555, file: !91, line: 767, baseType: !735, size: 256, offset: 2816)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !91, line: 673, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !91, line: 665, size: 256, elements: !737)
!737 = !{!738, !746, !747, !748, !749}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !736, file: !91, line: 666, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !91, line: 663, baseType: !741)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !91, line: 659, size: 192, elements: !742)
!742 = !{!743, !744, !745}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !741, file: !91, line: 660, baseType: !669, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !741, file: !91, line: 661, baseType: !36, size: 32, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !741, file: !91, line: 662, baseType: !671, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !736, file: !91, line: 667, baseType: !36, size: 32, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !736, file: !91, line: 668, baseType: !36, size: 32, offset: 96)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !736, file: !91, line: 671, baseType: !36, size: 32, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !736, file: !91, line: 672, baseType: !703, size: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !555, file: !91, line: 768, baseType: !36, size: 32, offset: 3072)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !555, file: !91, line: 769, baseType: !752, size: 704, offset: 3136)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !91, line: 703, baseType: !753)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !91, line: 677, size: 704, elements: !754)
!754 = !{!755, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !753, file: !91, line: 679, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !91, line: 52, baseType: !191)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !753, file: !91, line: 683, baseType: !565, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !753, file: !91, line: 685, baseType: !89, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !753, file: !91, line: 689, baseType: !107, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !753, file: !91, line: 690, baseType: !89, size: 64, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !753, file: !91, line: 691, baseType: !89, size: 64, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !753, file: !91, line: 692, baseType: !756, size: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !753, file: !91, line: 692, baseType: !756, size: 64, offset: 448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !753, file: !91, line: 693, baseType: !36, size: 32, offset: 512)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !753, file: !91, line: 696, baseType: !36, size: 32, offset: 544)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !753, file: !91, line: 697, baseType: !191, size: 64, offset: 576)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !753, file: !91, line: 700, baseType: !38, size: 64, offset: 640)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !555, file: !91, line: 770, baseType: !191, size: 64, offset: 3840)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !555, file: !91, line: 771, baseType: !634, size: 64, offset: 3904)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !555, file: !91, line: 772, baseType: !565, size: 64, offset: 3968)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !555, file: !91, line: 773, baseType: !634, size: 64, offset: 4032)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !555, file: !91, line: 774, baseType: !135, size: 64, offset: 4096)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !555, file: !91, line: 775, baseType: !640, size: 64, offset: 4160)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !555, file: !91, line: 778, baseType: !36, size: 32, offset: 4224)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !555, file: !91, line: 779, baseType: !776, size: 131072, offset: 4256)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 131072, elements: !777)
!777 = !{!778}
!778 = !DISubrange(count: 16384)
!779 = !{!780, !781, !782, !783, !784, !785}
!780 = !DILocalVariable(name: "c", arg: 1, scope: !550, file: !1, line: 197, type: !553)
!781 = !DILocalVariable(name: "where", arg: 2, scope: !550, file: !1, line: 197, type: !36)
!782 = !DILocalVariable(name: "j", scope: !550, file: !1, line: 198, type: !36)
!783 = !DILocalVariable(name: "pushed", scope: !550, file: !1, line: 198, type: !36)
!784 = !DILocalVariable(name: "lobj", scope: !550, file: !1, line: 199, type: !89)
!785 = !DILocalVariable(name: "event", scope: !786, file: !1, line: 218, type: !4)
!786 = distinct !DILexicalBlock(scope: !787, file: !1, line: 217, column: 17)
!787 = distinct !DILexicalBlock(scope: !550, file: !1, line: 217, column: 9)
!788 = !DILocation(line: 197, column: 33, scope: !550)
!789 = !DILocation(line: 197, column: 40, scope: !550)
!790 = !DILocation(line: 198, column: 12, scope: !550)
!791 = !DILocation(line: 199, column: 36, scope: !550)
!792 = !{!793, !127, i64 16}
!793 = !{!"client", !162, i64 0, !124, i64 8, !127, i64 16, !127, i64 24, !127, i64 32, !162, i64 40, !127, i64 48, !162, i64 56, !124, i64 64, !127, i64 72, !127, i64 80, !127, i64 88, !124, i64 96, !124, i64 100, !162, i64 104, !127, i64 112, !219, i64 120, !162, i64 128, !162, i64 136, !162, i64 144, !162, i64 152, !124, i64 160, !124, i64 164, !124, i64 168, !124, i64 172, !124, i64 176, !162, i64 184, !162, i64 192, !127, i64 200, !219, i64 208, !219, i64 216, !219, i64 224, !219, i64 232, !219, i64 240, !125, i64 248, !124, i64 292, !125, i64 296, !124, i64 344, !794, i64 352, !124, i64 384, !795, i64 392, !219, i64 480, !127, i64 488, !127, i64 496, !127, i64 504, !127, i64 512, !127, i64 520, !124, i64 528, !125, i64 532}
!794 = !{!"multiState", !127, i64 0, !124, i64 8, !124, i64 12, !124, i64 16, !162, i64 24}
!795 = !{!"blockingState", !219, i64 0, !127, i64 8, !127, i64 16, !162, i64 24, !127, i64 32, !127, i64 40, !219, i64 48, !219, i64 56, !124, i64 64, !124, i64 68, !219, i64 72, !127, i64 80}
!796 = !DILocation(line: 199, column: 42, scope: !550)
!797 = !{!793, !127, i64 72}
!798 = !DILocation(line: 199, column: 39, scope: !550)
!799 = !DILocation(line: 199, column: 18, scope: !550)
!800 = !DILocation(line: 199, column: 11, scope: !550)
!801 = !DILocation(line: 201, column: 9, scope: !802)
!802 = distinct !DILexicalBlock(scope: !550, file: !1, line: 201, column: 9)
!803 = !DILocation(line: 201, column: 14, scope: !802)
!804 = !DILocation(line: 201, column: 23, scope: !802)
!805 = !DILocation(line: 201, column: 28, scope: !802)
!806 = !DILocation(line: 201, column: 9, scope: !550)
!807 = !DILocation(line: 202, column: 27, scope: !808)
!808 = distinct !DILexicalBlock(scope: !802, file: !1, line: 201, column: 41)
!809 = !{!810, !127, i64 112}
!810 = !{!"sharedObjectsStruct", !127, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !127, i64 32, !127, i64 40, !127, i64 48, !127, i64 56, !127, i64 64, !127, i64 72, !127, i64 80, !127, i64 88, !127, i64 96, !127, i64 104, !127, i64 112, !127, i64 120, !127, i64 128, !127, i64 136, !127, i64 144, !127, i64 152, !127, i64 160, !127, i64 168, !127, i64 176, !127, i64 184, !127, i64 192, !127, i64 200, !127, i64 208, !127, i64 216, !127, i64 224, !127, i64 232, !127, i64 240, !127, i64 248, !127, i64 256, !127, i64 264, !127, i64 272, !127, i64 280, !127, i64 288, !127, i64 296, !127, i64 304, !127, i64 312, !127, i64 320, !127, i64 328, !127, i64 336, !127, i64 344, !127, i64 352, !127, i64 360, !125, i64 368, !125, i64 448, !125, i64 80448, !125, i64 80704, !127, i64 80960, !127, i64 80968}
!811 = !DILocation(line: 202, column: 9, scope: !808)
!812 = !DILocation(line: 203, column: 9, scope: !808)
!813 = !DILocation(line: 198, column: 9, scope: !550)
!814 = !DILocation(line: 206, column: 24, scope: !815)
!815 = distinct !DILexicalBlock(scope: !816, file: !1, line: 206, column: 5)
!816 = distinct !DILexicalBlock(scope: !550, file: !1, line: 206, column: 5)
!817 = !{!793, !124, i64 64}
!818 = !DILocation(line: 206, column: 19, scope: !815)
!819 = !DILocation(line: 206, column: 5, scope: !816)
!820 = !DILocation(line: 207, column: 13, scope: !821)
!821 = distinct !DILexicalBlock(scope: !815, file: !1, line: 206, column: 35)
!822 = !DILocation(line: 208, column: 20, scope: !823)
!823 = distinct !DILexicalBlock(scope: !824, file: !1, line: 207, column: 20)
!824 = distinct !DILexicalBlock(scope: !821, file: !1, line: 207, column: 13)
!825 = !DILocation(line: 209, column: 39, scope: !823)
!826 = !DILocation(line: 209, column: 51, scope: !823)
!827 = !DILocation(line: 210, column: 40, scope: !823)
!828 = !DILocation(line: 209, column: 13, scope: !823)
!829 = !DILocation(line: 211, column: 22, scope: !823)
!830 = !DILocation(line: 211, column: 28, scope: !823)
!831 = !DILocation(line: 211, column: 25, scope: !823)
!832 = !DILocation(line: 211, column: 13, scope: !823)
!833 = !DILocation(line: 212, column: 9, scope: !823)
!834 = !DILocation(line: 0, scope: !823)
!835 = !DILocation(line: 213, column: 30, scope: !821)
!836 = !DILocation(line: 213, column: 27, scope: !821)
!837 = !DILocation(line: 213, column: 9, scope: !821)
!838 = !DILocation(line: 214, column: 15, scope: !821)
!839 = !DILocation(line: 206, column: 31, scope: !815)
!840 = !DILocation(line: 0, scope: !550)
!841 = distinct !{!841, !819, !842}
!842 = !DILocation(line: 215, column: 5, scope: !816)
!843 = !DILocation(line: 0, scope: !821)
!844 = !DILocation(line: 216, column: 26, scope: !550)
!845 = !DILocation(line: 74, column: 42, scope: !228, inlinedAt: !846)
!846 = distinct !DILocation(line: 216, column: 33, scope: !550)
!847 = !DILocation(line: 75, column: 18, scope: !237, inlinedAt: !846)
!848 = !DILocation(line: 75, column: 27, scope: !237, inlinedAt: !846)
!849 = !DILocation(line: 75, column: 9, scope: !228, inlinedAt: !846)
!850 = !DILocation(line: 78, column: 9, scope: !245, inlinedAt: !846)
!851 = !DILocation(line: 76, column: 40, scope: !241, inlinedAt: !846)
!852 = !DILocation(line: 76, column: 16, scope: !241, inlinedAt: !846)
!853 = !DILocation(line: 76, column: 9, scope: !241, inlinedAt: !846)
!854 = !DILocation(line: 216, column: 5, scope: !550)
!855 = !DILocation(line: 217, column: 9, scope: !787)
!856 = !DILocation(line: 217, column: 9, scope: !550)
!857 = !DILocation(line: 218, column: 30, scope: !786)
!858 = !DILocation(line: 218, column: 23, scope: !786)
!859 = !DILocation(line: 218, column: 15, scope: !786)
!860 = !DILocation(line: 220, column: 30, scope: !786)
!861 = !DILocation(line: 220, column: 36, scope: !786)
!862 = !DILocation(line: 220, column: 33, scope: !786)
!863 = !DILocation(line: 220, column: 9, scope: !786)
!864 = !DILocation(line: 221, column: 50, scope: !786)
!865 = !DILocation(line: 221, column: 47, scope: !786)
!866 = !DILocation(line: 221, column: 61, scope: !786)
!867 = !DILocation(line: 221, column: 65, scope: !786)
!868 = !{!869, !124, i64 40}
!869 = !{!"redisDb", !127, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !127, i64 32, !124, i64 40, !219, i64 48, !127, i64 56}
!870 = !DILocation(line: 221, column: 9, scope: !786)
!871 = !DILocation(line: 222, column: 5, scope: !786)
!872 = !DILocation(line: 223, column: 21, scope: !550)
!873 = !DILocation(line: 223, column: 18, scope: !550)
!874 = !{!535, !219, i64 2080}
!875 = !DILocation(line: 224, column: 1, scope: !550)
!876 = distinct !DISubprogram(name: "lpushCommand", scope: !1, file: !1, line: 226, type: !678, isLocal: false, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !877)
!877 = !{!878}
!878 = !DILocalVariable(name: "c", arg: 1, scope: !876, file: !1, line: 226, type: !553)
!879 = !DILocation(line: 226, column: 27, scope: !876)
!880 = !DILocation(line: 227, column: 5, scope: !876)
!881 = !DILocation(line: 228, column: 1, scope: !876)
!882 = distinct !DISubprogram(name: "rpushCommand", scope: !1, file: !1, line: 230, type: !678, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !883)
!883 = !{!884}
!884 = !DILocalVariable(name: "c", arg: 1, scope: !882, file: !1, line: 230, type: !553)
!885 = !DILocation(line: 230, column: 27, scope: !882)
!886 = !DILocation(line: 231, column: 5, scope: !882)
!887 = !DILocation(line: 232, column: 1, scope: !882)
!888 = distinct !DISubprogram(name: "pushxGenericCommand", scope: !1, file: !1, line: 234, type: !551, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !889)
!889 = !{!890, !891, !892, !893, !894, !895}
!890 = !DILocalVariable(name: "c", arg: 1, scope: !888, file: !1, line: 234, type: !553)
!891 = !DILocalVariable(name: "where", arg: 2, scope: !888, file: !1, line: 234, type: !36)
!892 = !DILocalVariable(name: "j", scope: !888, file: !1, line: 235, type: !36)
!893 = !DILocalVariable(name: "pushed", scope: !888, file: !1, line: 235, type: !36)
!894 = !DILocalVariable(name: "subject", scope: !888, file: !1, line: 236, type: !89)
!895 = !DILocalVariable(name: "event", scope: !896, file: !1, line: 249, type: !4)
!896 = distinct !DILexicalBlock(scope: !897, file: !1, line: 248, column: 17)
!897 = distinct !DILexicalBlock(scope: !888, file: !1, line: 248, column: 9)
!898 = !DILocation(line: 234, column: 34, scope: !888)
!899 = !DILocation(line: 234, column: 41, scope: !888)
!900 = !DILocation(line: 235, column: 12, scope: !888)
!901 = !DILocation(line: 238, column: 47, scope: !902)
!902 = distinct !DILexicalBlock(scope: !888, file: !1, line: 238, column: 9)
!903 = !DILocation(line: 238, column: 44, scope: !902)
!904 = !DILocation(line: 238, column: 62, scope: !902)
!905 = !{!810, !127, i64 32}
!906 = !DILocation(line: 238, column: 20, scope: !902)
!907 = !DILocation(line: 236, column: 11, scope: !888)
!908 = !DILocation(line: 238, column: 70, scope: !902)
!909 = !DILocation(line: 238, column: 78, scope: !902)
!910 = !DILocation(line: 239, column: 9, scope: !902)
!911 = !DILocation(line: 238, column: 9, scope: !888)
!912 = !DILocation(line: 235, column: 9, scope: !888)
!913 = !DILocation(line: 241, column: 24, scope: !914)
!914 = distinct !DILexicalBlock(scope: !915, file: !1, line: 241, column: 5)
!915 = distinct !DILexicalBlock(scope: !888, file: !1, line: 241, column: 5)
!916 = !DILocation(line: 241, column: 19, scope: !914)
!917 = !DILocation(line: 241, column: 5, scope: !915)
!918 = !DILocation(line: 242, column: 33, scope: !919)
!919 = distinct !DILexicalBlock(scope: !914, file: !1, line: 241, column: 35)
!920 = !DILocation(line: 242, column: 30, scope: !919)
!921 = !DILocation(line: 242, column: 9, scope: !919)
!922 = !DILocation(line: 243, column: 15, scope: !919)
!923 = !DILocation(line: 241, column: 31, scope: !914)
!924 = distinct !{!924, !917, !925}
!925 = !DILocation(line: 244, column: 5, scope: !915)
!926 = !DILocation(line: 0, scope: !919)
!927 = !DILocation(line: 74, column: 42, scope: !228, inlinedAt: !928)
!928 = distinct !DILocation(line: 246, column: 24, scope: !888)
!929 = !DILocation(line: 75, column: 18, scope: !237, inlinedAt: !928)
!930 = !DILocation(line: 75, column: 27, scope: !237, inlinedAt: !928)
!931 = !DILocation(line: 75, column: 9, scope: !228, inlinedAt: !928)
!932 = !DILocation(line: 78, column: 9, scope: !245, inlinedAt: !928)
!933 = !DILocation(line: 76, column: 40, scope: !241, inlinedAt: !928)
!934 = !DILocation(line: 76, column: 16, scope: !241, inlinedAt: !928)
!935 = !DILocation(line: 76, column: 9, scope: !241, inlinedAt: !928)
!936 = !DILocation(line: 246, column: 5, scope: !888)
!937 = !DILocation(line: 248, column: 9, scope: !897)
!938 = !DILocation(line: 248, column: 9, scope: !888)
!939 = !DILocation(line: 249, column: 30, scope: !896)
!940 = !DILocation(line: 249, column: 23, scope: !896)
!941 = !DILocation(line: 249, column: 15, scope: !896)
!942 = !DILocation(line: 250, column: 30, scope: !896)
!943 = !DILocation(line: 250, column: 36, scope: !896)
!944 = !DILocation(line: 250, column: 33, scope: !896)
!945 = !DILocation(line: 250, column: 9, scope: !896)
!946 = !DILocation(line: 251, column: 50, scope: !896)
!947 = !DILocation(line: 251, column: 47, scope: !896)
!948 = !DILocation(line: 251, column: 61, scope: !896)
!949 = !DILocation(line: 251, column: 65, scope: !896)
!950 = !DILocation(line: 251, column: 9, scope: !896)
!951 = !DILocation(line: 252, column: 5, scope: !896)
!952 = !DILocation(line: 253, column: 21, scope: !888)
!953 = !DILocation(line: 253, column: 18, scope: !888)
!954 = !DILocation(line: 254, column: 1, scope: !888)
!955 = distinct !DISubprogram(name: "lpushxCommand", scope: !1, file: !1, line: 256, type: !678, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !956)
!956 = !{!957}
!957 = !DILocalVariable(name: "c", arg: 1, scope: !955, file: !1, line: 256, type: !553)
!958 = !DILocation(line: 256, column: 28, scope: !955)
!959 = !DILocation(line: 257, column: 5, scope: !955)
!960 = !DILocation(line: 258, column: 1, scope: !955)
!961 = distinct !DISubprogram(name: "rpushxCommand", scope: !1, file: !1, line: 260, type: !678, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !962)
!962 = !{!963}
!963 = !DILocalVariable(name: "c", arg: 1, scope: !961, file: !1, line: 260, type: !553)
!964 = !DILocation(line: 260, column: 28, scope: !961)
!965 = !DILocation(line: 261, column: 5, scope: !961)
!966 = !DILocation(line: 262, column: 1, scope: !961)
!967 = distinct !DISubprogram(name: "linsertCommand", scope: !1, file: !1, line: 264, type: !678, isLocal: false, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !968)
!968 = !{!969, !970, !971, !972, !973, !974}
!969 = !DILocalVariable(name: "c", arg: 1, scope: !967, file: !1, line: 264, type: !553)
!970 = !DILocalVariable(name: "where", scope: !967, file: !1, line: 265, type: !36)
!971 = !DILocalVariable(name: "subject", scope: !967, file: !1, line: 266, type: !89)
!972 = !DILocalVariable(name: "iter", scope: !967, file: !1, line: 267, type: !249)
!973 = !DILocalVariable(name: "entry", scope: !967, file: !1, line: 268, type: !323)
!974 = !DILocalVariable(name: "inserted", scope: !967, file: !1, line: 269, type: !36)
!975 = !DILocation(line: 264, column: 29, scope: !967)
!976 = !DILocation(line: 268, column: 5, scope: !967)
!977 = !DILocation(line: 269, column: 9, scope: !967)
!978 = !DILocation(line: 271, column: 23, scope: !979)
!979 = distinct !DILexicalBlock(scope: !967, file: !1, line: 271, column: 9)
!980 = !DILocation(line: 271, column: 20, scope: !979)
!981 = !DILocation(line: 271, column: 32, scope: !979)
!982 = !DILocation(line: 271, column: 9, scope: !979)
!983 = !DILocation(line: 271, column: 45, scope: !979)
!984 = !DILocation(line: 271, column: 9, scope: !967)
!985 = !DILocation(line: 273, column: 16, scope: !986)
!986 = distinct !DILexicalBlock(scope: !979, file: !1, line: 273, column: 16)
!987 = !DILocation(line: 273, column: 53, scope: !986)
!988 = !DILocation(line: 273, column: 16, scope: !979)
!989 = !DILocation(line: 276, column: 27, scope: !990)
!990 = distinct !DILexicalBlock(scope: !986, file: !1, line: 275, column: 12)
!991 = !{!810, !127, i64 128}
!992 = !DILocation(line: 276, column: 9, scope: !990)
!993 = !DILocation(line: 277, column: 9, scope: !990)
!994 = !DILocation(line: 0, scope: !995)
!995 = distinct !DILexicalBlock(scope: !986, file: !1, line: 273, column: 59)
!996 = !DILocation(line: 265, column: 9, scope: !967)
!997 = !DILocation(line: 280, column: 44, scope: !998)
!998 = distinct !DILexicalBlock(scope: !967, file: !1, line: 280, column: 9)
!999 = !DILocation(line: 280, column: 62, scope: !998)
!1000 = !DILocation(line: 280, column: 20, scope: !998)
!1001 = !DILocation(line: 266, column: 11, scope: !967)
!1002 = !DILocation(line: 280, column: 70, scope: !998)
!1003 = !DILocation(line: 280, column: 78, scope: !998)
!1004 = !DILocation(line: 281, column: 9, scope: !998)
!1005 = !DILocation(line: 280, column: 9, scope: !967)
!1006 = !DILocation(line: 83, column: 46, scope: !246, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 284, column: 12, scope: !967)
!1008 = !DILocation(line: 83, column: 60, scope: !246, inlinedAt: !1007)
!1009 = !DILocation(line: 84, column: 54, scope: !246, inlinedAt: !1007)
!1010 = !DILocation(line: 85, column: 28, scope: !246, inlinedAt: !1007)
!1011 = !DILocation(line: 86, column: 9, scope: !246, inlinedAt: !1007)
!1012 = !DILocation(line: 86, column: 17, scope: !246, inlinedAt: !1007)
!1013 = !DILocation(line: 87, column: 29, scope: !246, inlinedAt: !1007)
!1014 = !DILocation(line: 87, column: 20, scope: !246, inlinedAt: !1007)
!1015 = !DILocation(line: 87, column: 9, scope: !246, inlinedAt: !1007)
!1016 = !DILocation(line: 87, column: 18, scope: !246, inlinedAt: !1007)
!1017 = !DILocation(line: 88, column: 9, scope: !246, inlinedAt: !1007)
!1018 = !DILocation(line: 88, column: 19, scope: !246, inlinedAt: !1007)
!1019 = !DILocation(line: 89, column: 9, scope: !246, inlinedAt: !1007)
!1020 = !DILocation(line: 89, column: 14, scope: !246, inlinedAt: !1007)
!1021 = !DILocation(line: 94, column: 22, scope: !295, inlinedAt: !1007)
!1022 = !DILocation(line: 94, column: 9, scope: !246, inlinedAt: !1007)
!1023 = !DILocation(line: 98, column: 9, scope: !307, inlinedAt: !1007)
!1024 = !DILocation(line: 92, column: 9, scope: !246, inlinedAt: !1007)
!1025 = !DILocation(line: 85, column: 23, scope: !246, inlinedAt: !1007)
!1026 = !DILocation(line: 95, column: 59, scope: !302, inlinedAt: !1007)
!1027 = !DILocation(line: 95, column: 20, scope: !302, inlinedAt: !1007)
!1028 = !DILocation(line: 95, column: 18, scope: !302, inlinedAt: !1007)
!1029 = !DILocation(line: 100, column: 5, scope: !246, inlinedAt: !1007)
!1030 = !DILocation(line: 267, column: 23, scope: !967)
!1031 = !DILocation(line: 285, column: 5, scope: !967)
!1032 = !DILocation(line: 268, column: 19, scope: !967)
!1033 = !DILocation(line: 112, column: 36, scope: !319, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 285, column: 12, scope: !967)
!1035 = !DILocation(line: 112, column: 55, scope: !319, inlinedAt: !1034)
!1036 = !DILocation(line: 114, column: 5, scope: !319, inlinedAt: !1034)
!1037 = !DILocation(line: 116, column: 15, scope: !319, inlinedAt: !1034)
!1038 = !DILocation(line: 117, column: 22, scope: !350, inlinedAt: !1034)
!1039 = !DILocation(line: 117, column: 9, scope: !319, inlinedAt: !1034)
!1040 = !DILocation(line: 120, column: 9, scope: !358, inlinedAt: !1034)
!1041 = !DILocation(line: 118, column: 34, scope: !353, inlinedAt: !1034)
!1042 = !DILocation(line: 118, column: 16, scope: !353, inlinedAt: !1034)
!1043 = !DILocation(line: 118, column: 9, scope: !353, inlinedAt: !1034)
!1044 = !DILocation(line: 286, column: 37, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 286, column: 13)
!1046 = distinct !DILexicalBlock(scope: !967, file: !1, line: 285, column: 39)
!1047 = !DILocation(line: 286, column: 34, scope: !1045)
!1048 = !DILocation(line: 286, column: 13, scope: !1045)
!1049 = !DILocation(line: 286, column: 13, scope: !1046)
!1050 = distinct !{!1050, !1031, !1051}
!1051 = !DILocation(line: 291, column: 5, scope: !967)
!1052 = !DILocation(line: 287, column: 38, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 286, column: 47)
!1054 = !DILocation(line: 287, column: 35, scope: !1053)
!1055 = !DILocation(line: 287, column: 13, scope: !1053)
!1056 = !DILocation(line: 104, column: 48, scope: !308, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 292, column: 5, scope: !967)
!1058 = !DILocation(line: 105, column: 15, scope: !308, inlinedAt: !1057)
!1059 = !DILocation(line: 105, column: 5, scope: !308, inlinedAt: !1057)
!1060 = !DILocation(line: 106, column: 5, scope: !308, inlinedAt: !1057)
!1061 = !DILocation(line: 107, column: 1, scope: !308, inlinedAt: !1057)
!1062 = !DILocation(line: 295, column: 30, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !1, line: 294, column: 19)
!1064 = distinct !DILexicalBlock(scope: !967, file: !1, line: 294, column: 9)
!1065 = !DILocation(line: 295, column: 36, scope: !1063)
!1066 = !DILocation(line: 295, column: 33, scope: !1063)
!1067 = !DILocation(line: 295, column: 9, scope: !1063)
!1068 = !DILocation(line: 297, column: 32, scope: !1063)
!1069 = !DILocation(line: 297, column: 29, scope: !1063)
!1070 = !DILocation(line: 297, column: 43, scope: !1063)
!1071 = !DILocation(line: 297, column: 47, scope: !1063)
!1072 = !DILocation(line: 296, column: 9, scope: !1063)
!1073 = !DILocation(line: 298, column: 21, scope: !1063)
!1074 = !DILocation(line: 74, column: 42, scope: !228, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 305, column: 24, scope: !967)
!1076 = !DILocation(line: 75, column: 18, scope: !237, inlinedAt: !1075)
!1077 = !DILocation(line: 75, column: 27, scope: !237, inlinedAt: !1075)
!1078 = !DILocation(line: 75, column: 9, scope: !228, inlinedAt: !1075)
!1079 = !DILocation(line: 78, column: 9, scope: !245, inlinedAt: !1075)
!1080 = !DILocation(line: 76, column: 40, scope: !241, inlinedAt: !1075)
!1081 = !DILocation(line: 76, column: 16, scope: !241, inlinedAt: !1075)
!1082 = !DILocation(line: 76, column: 9, scope: !241, inlinedAt: !1075)
!1083 = !DILocation(line: 305, column: 5, scope: !967)
!1084 = !DILocation(line: 306, column: 1, scope: !967)
!1085 = !DILocation(line: 104, column: 48, scope: !308, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 292, column: 5, scope: !967)
!1087 = !DILocation(line: 105, column: 15, scope: !308, inlinedAt: !1086)
!1088 = !DILocation(line: 105, column: 5, scope: !308, inlinedAt: !1086)
!1089 = !DILocation(line: 106, column: 5, scope: !308, inlinedAt: !1086)
!1090 = !DILocation(line: 107, column: 1, scope: !308, inlinedAt: !1086)
!1091 = !DILocation(line: 301, column: 27, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1064, file: !1, line: 299, column: 12)
!1093 = !{!810, !127, i64 48}
!1094 = !DILocation(line: 301, column: 9, scope: !1092)
!1095 = !DILocation(line: 302, column: 9, scope: !1092)
!1096 = distinct !DISubprogram(name: "llenCommand", scope: !1, file: !1, line: 308, type: !678, isLocal: false, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1097)
!1097 = !{!1098, !1099}
!1098 = !DILocalVariable(name: "c", arg: 1, scope: !1096, file: !1, line: 308, type: !553)
!1099 = !DILocalVariable(name: "o", scope: !1096, file: !1, line: 309, type: !89)
!1100 = !DILocation(line: 308, column: 26, scope: !1096)
!1101 = !DILocation(line: 309, column: 41, scope: !1096)
!1102 = !DILocation(line: 309, column: 38, scope: !1096)
!1103 = !DILocation(line: 309, column: 56, scope: !1096)
!1104 = !DILocation(line: 309, column: 15, scope: !1096)
!1105 = !DILocation(line: 309, column: 11, scope: !1096)
!1106 = !DILocation(line: 310, column: 11, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1096, file: !1, line: 310, column: 9)
!1108 = !DILocation(line: 310, column: 19, scope: !1107)
!1109 = !DILocation(line: 310, column: 22, scope: !1107)
!1110 = !DILocation(line: 310, column: 9, scope: !1096)
!1111 = !DILocation(line: 74, column: 42, scope: !228, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 311, column: 24, scope: !1096)
!1113 = !DILocation(line: 75, column: 18, scope: !237, inlinedAt: !1112)
!1114 = !DILocation(line: 75, column: 27, scope: !237, inlinedAt: !1112)
!1115 = !DILocation(line: 75, column: 9, scope: !228, inlinedAt: !1112)
!1116 = !DILocation(line: 78, column: 9, scope: !245, inlinedAt: !1112)
!1117 = !DILocation(line: 76, column: 40, scope: !241, inlinedAt: !1112)
!1118 = !DILocation(line: 76, column: 16, scope: !241, inlinedAt: !1112)
!1119 = !DILocation(line: 76, column: 9, scope: !241, inlinedAt: !1112)
!1120 = !DILocation(line: 311, column: 5, scope: !1096)
!1121 = !DILocation(line: 312, column: 1, scope: !1096)
!1122 = distinct !DISubprogram(name: "lindexCommand", scope: !1, file: !1, line: 314, type: !678, isLocal: false, isDefinition: true, scopeLine: 314, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1123)
!1123 = !{!1124, !1125, !1126, !1127, !1128}
!1124 = !DILocalVariable(name: "c", arg: 1, scope: !1122, file: !1, line: 314, type: !553)
!1125 = !DILocalVariable(name: "o", scope: !1122, file: !1, line: 315, type: !89)
!1126 = !DILocalVariable(name: "index", scope: !1122, file: !1, line: 317, type: !267)
!1127 = !DILocalVariable(name: "value", scope: !1122, file: !1, line: 318, type: !89)
!1128 = !DILocalVariable(name: "entry", scope: !1129, file: !1, line: 324, type: !328)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !1, line: 323, column: 48)
!1130 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 323, column: 9)
!1131 = !DILocation(line: 314, column: 28, scope: !1122)
!1132 = !DILocation(line: 315, column: 41, scope: !1122)
!1133 = !DILocation(line: 315, column: 38, scope: !1122)
!1134 = !DILocation(line: 315, column: 56, scope: !1122)
!1135 = !{!810, !127, i64 80}
!1136 = !DILocation(line: 315, column: 15, scope: !1122)
!1137 = !DILocation(line: 315, column: 11, scope: !1122)
!1138 = !DILocation(line: 316, column: 11, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 316, column: 9)
!1140 = !DILocation(line: 316, column: 19, scope: !1139)
!1141 = !DILocation(line: 316, column: 22, scope: !1139)
!1142 = !DILocation(line: 316, column: 9, scope: !1122)
!1143 = !DILocation(line: 317, column: 5, scope: !1122)
!1144 = !DILocation(line: 318, column: 11, scope: !1122)
!1145 = !DILocation(line: 320, column: 41, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 320, column: 9)
!1147 = !DILocation(line: 320, column: 38, scope: !1146)
!1148 = !DILocation(line: 317, column: 10, scope: !1122)
!1149 = !DILocation(line: 320, column: 10, scope: !1146)
!1150 = !DILocation(line: 320, column: 64, scope: !1146)
!1151 = !DILocation(line: 320, column: 9, scope: !1122)
!1152 = !DILocation(line: 323, column: 12, scope: !1130)
!1153 = !DILocation(line: 323, column: 21, scope: !1130)
!1154 = !DILocation(line: 323, column: 9, scope: !1122)
!1155 = !DILocation(line: 324, column: 9, scope: !1129)
!1156 = !DILocation(line: 325, column: 31, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1129, file: !1, line: 325, column: 13)
!1158 = !DILocation(line: 325, column: 36, scope: !1157)
!1159 = !DILocation(line: 324, column: 24, scope: !1129)
!1160 = !DILocation(line: 325, column: 13, scope: !1157)
!1161 = !DILocation(line: 325, column: 13, scope: !1129)
!1162 = !DILocation(line: 326, column: 23, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !1, line: 326, column: 17)
!1164 = distinct !DILexicalBlock(scope: !1157, file: !1, line: 325, column: 52)
!1165 = !{!348, !127, i64 24}
!1166 = !DILocation(line: 326, column: 17, scope: !1163)
!1167 = !DILocation(line: 326, column: 17, scope: !1164)
!1168 = !DILocation(line: 327, column: 69, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 326, column: 30)
!1170 = !{!348, !124, i64 40}
!1171 = !DILocation(line: 327, column: 63, scope: !1169)
!1172 = !DILocation(line: 327, column: 25, scope: !1169)
!1173 = !DILocation(line: 328, column: 13, scope: !1169)
!1174 = !DILocation(line: 329, column: 62, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 328, column: 20)
!1176 = !{!348, !219, i64 32}
!1177 = !DILocation(line: 329, column: 25, scope: !1175)
!1178 = !DILocation(line: 0, scope: !1175)
!1179 = !DILocation(line: 331, column: 13, scope: !1164)
!1180 = !DILocation(line: 332, column: 13, scope: !1164)
!1181 = !DILocation(line: 333, column: 9, scope: !1164)
!1182 = !DILocation(line: 334, column: 31, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1157, file: !1, line: 333, column: 16)
!1184 = !DILocation(line: 334, column: 13, scope: !1183)
!1185 = !DILocation(line: 336, column: 5, scope: !1130)
!1186 = !DILocation(line: 339, column: 1, scope: !1122)
!1187 = !DILocation(line: 337, column: 9, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1130, file: !1, line: 336, column: 12)
!1189 = distinct !DISubprogram(name: "lsetCommand", scope: !1, file: !1, line: 341, type: !678, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1190)
!1190 = !{!1191, !1192, !1193, !1194, !1195, !1198}
!1191 = !DILocalVariable(name: "c", arg: 1, scope: !1189, file: !1, line: 341, type: !553)
!1192 = !DILocalVariable(name: "o", scope: !1189, file: !1, line: 342, type: !89)
!1193 = !DILocalVariable(name: "index", scope: !1189, file: !1, line: 344, type: !267)
!1194 = !DILocalVariable(name: "value", scope: !1189, file: !1, line: 345, type: !89)
!1195 = !DILocalVariable(name: "ql", scope: !1196, file: !1, line: 351, type: !9)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !1, line: 350, column: 48)
!1197 = distinct !DILexicalBlock(scope: !1189, file: !1, line: 350, column: 9)
!1198 = !DILocalVariable(name: "replaced", scope: !1196, file: !1, line: 352, type: !36)
!1199 = !DILocation(line: 341, column: 26, scope: !1189)
!1200 = !DILocation(line: 342, column: 42, scope: !1189)
!1201 = !DILocation(line: 342, column: 39, scope: !1189)
!1202 = !DILocation(line: 342, column: 57, scope: !1189)
!1203 = !{!810, !127, i64 120}
!1204 = !DILocation(line: 342, column: 15, scope: !1189)
!1205 = !DILocation(line: 342, column: 11, scope: !1189)
!1206 = !DILocation(line: 343, column: 11, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1189, file: !1, line: 343, column: 9)
!1208 = !DILocation(line: 343, column: 19, scope: !1207)
!1209 = !DILocation(line: 343, column: 22, scope: !1207)
!1210 = !DILocation(line: 343, column: 9, scope: !1189)
!1211 = !DILocation(line: 344, column: 5, scope: !1189)
!1212 = !DILocation(line: 345, column: 22, scope: !1189)
!1213 = !DILocation(line: 345, column: 19, scope: !1189)
!1214 = !DILocation(line: 345, column: 11, scope: !1189)
!1215 = !DILocation(line: 347, column: 38, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1189, file: !1, line: 347, column: 9)
!1217 = !DILocation(line: 344, column: 10, scope: !1189)
!1218 = !DILocation(line: 347, column: 10, scope: !1216)
!1219 = !DILocation(line: 347, column: 64, scope: !1216)
!1220 = !DILocation(line: 347, column: 9, scope: !1189)
!1221 = !DILocation(line: 350, column: 12, scope: !1197)
!1222 = !DILocation(line: 350, column: 21, scope: !1197)
!1223 = !DILocation(line: 350, column: 9, scope: !1189)
!1224 = !DILocation(line: 351, column: 28, scope: !1196)
!1225 = !DILocation(line: 351, column: 20, scope: !1196)
!1226 = !DILocation(line: 352, column: 52, scope: !1196)
!1227 = !DILocation(line: 353, column: 55, scope: !1196)
!1228 = !DILocation(line: 87, column: 39, scope: !129, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 353, column: 60, scope: !1196)
!1230 = !DILocation(line: 88, column: 27, scope: !129, inlinedAt: !1229)
!1231 = !DILocation(line: 88, column: 19, scope: !129, inlinedAt: !1229)
!1232 = !DILocation(line: 89, column: 5, scope: !129, inlinedAt: !1229)
!1233 = !DILocation(line: 91, column: 20, scope: !145, inlinedAt: !1229)
!1234 = !DILocation(line: 91, column: 13, scope: !145, inlinedAt: !1229)
!1235 = !DILocation(line: 93, column: 20, scope: !145, inlinedAt: !1229)
!1236 = !DILocation(line: 93, column: 34, scope: !145, inlinedAt: !1229)
!1237 = !DILocation(line: 93, column: 13, scope: !145, inlinedAt: !1229)
!1238 = !DILocation(line: 95, column: 20, scope: !145, inlinedAt: !1229)
!1239 = !DILocation(line: 95, column: 35, scope: !145, inlinedAt: !1229)
!1240 = !DILocation(line: 95, column: 13, scope: !145, inlinedAt: !1229)
!1241 = !DILocation(line: 97, column: 20, scope: !145, inlinedAt: !1229)
!1242 = !DILocation(line: 97, column: 35, scope: !145, inlinedAt: !1229)
!1243 = !DILocation(line: 97, column: 13, scope: !145, inlinedAt: !1229)
!1244 = !DILocation(line: 99, column: 20, scope: !145, inlinedAt: !1229)
!1245 = !DILocation(line: 99, column: 35, scope: !145, inlinedAt: !1229)
!1246 = !DILocation(line: 99, column: 13, scope: !145, inlinedAt: !1229)
!1247 = !DILocation(line: 0, scope: !145, inlinedAt: !1229)
!1248 = !DILocation(line: 102, column: 1, scope: !129, inlinedAt: !1229)
!1249 = !DILocation(line: 353, column: 60, scope: !1196)
!1250 = !DILocation(line: 352, column: 24, scope: !1196)
!1251 = !DILocation(line: 352, column: 13, scope: !1196)
!1252 = !DILocation(line: 354, column: 14, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1196, file: !1, line: 354, column: 13)
!1254 = !DILocation(line: 354, column: 13, scope: !1196)
!1255 = !DILocation(line: 355, column: 31, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1253, file: !1, line: 354, column: 24)
!1257 = !{!810, !127, i64 144}
!1258 = !DILocation(line: 355, column: 13, scope: !1256)
!1259 = !DILocation(line: 356, column: 9, scope: !1256)
!1260 = !DILocation(line: 357, column: 31, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1253, file: !1, line: 356, column: 16)
!1262 = !{!810, !127, i64 8}
!1263 = !DILocation(line: 357, column: 13, scope: !1261)
!1264 = !DILocation(line: 358, column: 34, scope: !1261)
!1265 = !DILocation(line: 358, column: 40, scope: !1261)
!1266 = !DILocation(line: 358, column: 37, scope: !1261)
!1267 = !DILocation(line: 358, column: 13, scope: !1261)
!1268 = !DILocation(line: 359, column: 55, scope: !1261)
!1269 = !DILocation(line: 359, column: 52, scope: !1261)
!1270 = !DILocation(line: 359, column: 66, scope: !1261)
!1271 = !DILocation(line: 359, column: 70, scope: !1261)
!1272 = !DILocation(line: 359, column: 13, scope: !1261)
!1273 = !DILocation(line: 360, column: 25, scope: !1261)
!1274 = !DILocation(line: 363, column: 9, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1197, file: !1, line: 362, column: 12)
!1276 = !DILocation(line: 365, column: 1, scope: !1189)
!1277 = distinct !DISubprogram(name: "popGenericCommand", scope: !1, file: !1, line: 367, type: !551, isLocal: false, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1278)
!1278 = !{!1279, !1280, !1281, !1282, !1283}
!1279 = !DILocalVariable(name: "c", arg: 1, scope: !1277, file: !1, line: 367, type: !553)
!1280 = !DILocalVariable(name: "where", arg: 2, scope: !1277, file: !1, line: 367, type: !36)
!1281 = !DILocalVariable(name: "o", scope: !1277, file: !1, line: 368, type: !89)
!1282 = !DILocalVariable(name: "value", scope: !1277, file: !1, line: 371, type: !89)
!1283 = !DILocalVariable(name: "event", scope: !1284, file: !1, line: 375, type: !4)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !1, line: 374, column: 12)
!1285 = distinct !DILexicalBlock(scope: !1277, file: !1, line: 372, column: 9)
!1286 = !DILocation(line: 367, column: 32, scope: !1277)
!1287 = !DILocation(line: 367, column: 39, scope: !1277)
!1288 = !DILocation(line: 368, column: 42, scope: !1277)
!1289 = !DILocation(line: 368, column: 39, scope: !1277)
!1290 = !DILocation(line: 368, column: 57, scope: !1277)
!1291 = !DILocation(line: 368, column: 15, scope: !1277)
!1292 = !DILocation(line: 368, column: 11, scope: !1277)
!1293 = !DILocation(line: 369, column: 11, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1277, file: !1, line: 369, column: 9)
!1295 = !DILocation(line: 369, column: 19, scope: !1294)
!1296 = !DILocation(line: 369, column: 22, scope: !1294)
!1297 = !DILocation(line: 369, column: 9, scope: !1277)
!1298 = !DILocation(line: 57, column: 25, scope: !184, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 371, column: 19, scope: !1277)
!1300 = !DILocation(line: 57, column: 38, scope: !184, inlinedAt: !1299)
!1301 = !DILocation(line: 58, column: 5, scope: !184, inlinedAt: !1299)
!1302 = !DILocation(line: 59, column: 5, scope: !184, inlinedAt: !1299)
!1303 = !DILocation(line: 59, column: 11, scope: !184, inlinedAt: !1299)
!1304 = !DILocation(line: 62, column: 18, scope: !201, inlinedAt: !1299)
!1305 = !DILocation(line: 62, column: 27, scope: !201, inlinedAt: !1299)
!1306 = !DILocation(line: 62, column: 9, scope: !184, inlinedAt: !1299)
!1307 = !DILocation(line: 61, column: 26, scope: !184, inlinedAt: !1299)
!1308 = !DILocation(line: 61, column: 20, scope: !184, inlinedAt: !1299)
!1309 = !DILocation(line: 61, column: 9, scope: !184, inlinedAt: !1299)
!1310 = !DILocation(line: 63, column: 41, scope: !208, inlinedAt: !1299)
!1311 = !DILocation(line: 63, column: 56, scope: !208, inlinedAt: !1299)
!1312 = !DILocation(line: 58, column: 15, scope: !184, inlinedAt: !1299)
!1313 = !DILocation(line: 63, column: 13, scope: !208, inlinedAt: !1299)
!1314 = !DILocation(line: 65, column: 18, scope: !214, inlinedAt: !1299)
!1315 = !DILocation(line: 63, column: 13, scope: !209, inlinedAt: !1299)
!1316 = !DILocation(line: 66, column: 56, scope: !214, inlinedAt: !1299)
!1317 = !DILocation(line: 66, column: 25, scope: !214, inlinedAt: !1299)
!1318 = !DILocation(line: 66, column: 23, scope: !214, inlinedAt: !1299)
!1319 = !DILocation(line: 66, column: 17, scope: !214, inlinedAt: !1299)
!1320 = !DILocation(line: 69, column: 9, scope: !224, inlinedAt: !1299)
!1321 = !DILocation(line: 71, column: 12, scope: !184, inlinedAt: !1299)
!1322 = !DILocation(line: 72, column: 1, scope: !184, inlinedAt: !1299)
!1323 = !DILocation(line: 71, column: 5, scope: !184, inlinedAt: !1299)
!1324 = !DILocation(line: 371, column: 11, scope: !1277)
!1325 = !DILocation(line: 372, column: 15, scope: !1285)
!1326 = !DILocation(line: 372, column: 9, scope: !1277)
!1327 = !DILocation(line: 373, column: 27, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1285, file: !1, line: 372, column: 24)
!1329 = !DILocation(line: 373, column: 9, scope: !1328)
!1330 = !DILocation(line: 374, column: 5, scope: !1328)
!1331 = !DILocation(line: 375, column: 30, scope: !1284)
!1332 = !DILocation(line: 375, column: 23, scope: !1284)
!1333 = !DILocation(line: 375, column: 15, scope: !1284)
!1334 = !DILocation(line: 377, column: 9, scope: !1284)
!1335 = !DILocation(line: 378, column: 9, scope: !1284)
!1336 = !DILocation(line: 379, column: 50, scope: !1284)
!1337 = !DILocation(line: 379, column: 47, scope: !1284)
!1338 = !DILocation(line: 379, column: 61, scope: !1284)
!1339 = !DILocation(line: 379, column: 65, scope: !1284)
!1340 = !DILocation(line: 379, column: 9, scope: !1284)
!1341 = !DILocation(line: 74, column: 42, scope: !228, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 380, column: 13, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1284, file: !1, line: 380, column: 13)
!1344 = !DILocation(line: 75, column: 18, scope: !237, inlinedAt: !1342)
!1345 = !DILocation(line: 75, column: 27, scope: !237, inlinedAt: !1342)
!1346 = !DILocation(line: 75, column: 9, scope: !228, inlinedAt: !1342)
!1347 = !DILocation(line: 78, column: 9, scope: !245, inlinedAt: !1342)
!1348 = !DILocation(line: 76, column: 40, scope: !241, inlinedAt: !1342)
!1349 = !DILocation(line: 76, column: 16, scope: !241, inlinedAt: !1342)
!1350 = !DILocation(line: 76, column: 9, scope: !241, inlinedAt: !1342)
!1351 = !DILocation(line: 380, column: 31, scope: !1343)
!1352 = !DILocation(line: 380, column: 13, scope: !1284)
!1353 = !DILocation(line: 382, column: 36, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 380, column: 37)
!1355 = !DILocation(line: 382, column: 33, scope: !1354)
!1356 = !DILocation(line: 382, column: 47, scope: !1354)
!1357 = !DILocation(line: 382, column: 51, scope: !1354)
!1358 = !DILocation(line: 381, column: 13, scope: !1354)
!1359 = !DILocation(line: 383, column: 25, scope: !1354)
!1360 = !DILocation(line: 383, column: 31, scope: !1354)
!1361 = !DILocation(line: 383, column: 28, scope: !1354)
!1362 = !DILocation(line: 383, column: 13, scope: !1354)
!1363 = !DILocation(line: 384, column: 9, scope: !1354)
!1364 = !DILocation(line: 385, column: 30, scope: !1284)
!1365 = !DILocation(line: 385, column: 36, scope: !1284)
!1366 = !DILocation(line: 385, column: 33, scope: !1284)
!1367 = !DILocation(line: 385, column: 9, scope: !1284)
!1368 = !DILocation(line: 386, column: 21, scope: !1284)
!1369 = !DILocation(line: 388, column: 1, scope: !1277)
!1370 = distinct !DISubprogram(name: "lpopCommand", scope: !1, file: !1, line: 390, type: !678, isLocal: false, isDefinition: true, scopeLine: 390, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1371)
!1371 = !{!1372}
!1372 = !DILocalVariable(name: "c", arg: 1, scope: !1370, file: !1, line: 390, type: !553)
!1373 = !DILocation(line: 390, column: 26, scope: !1370)
!1374 = !DILocation(line: 391, column: 5, scope: !1370)
!1375 = !DILocation(line: 392, column: 1, scope: !1370)
!1376 = distinct !DISubprogram(name: "rpopCommand", scope: !1, file: !1, line: 394, type: !678, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1377)
!1377 = !{!1378}
!1378 = !DILocalVariable(name: "c", arg: 1, scope: !1376, file: !1, line: 394, type: !553)
!1379 = !DILocation(line: 394, column: 26, scope: !1376)
!1380 = !DILocation(line: 395, column: 5, scope: !1376)
!1381 = !DILocation(line: 396, column: 1, scope: !1376)
!1382 = distinct !DISubprogram(name: "lrangeCommand", scope: !1, file: !1, line: 398, type: !678, isLocal: false, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1383)
!1383 = !{!1384, !1385, !1386, !1387, !1388, !1389, !1390, !1393, !1395}
!1384 = !DILocalVariable(name: "c", arg: 1, scope: !1382, file: !1, line: 398, type: !553)
!1385 = !DILocalVariable(name: "o", scope: !1382, file: !1, line: 399, type: !89)
!1386 = !DILocalVariable(name: "start", scope: !1382, file: !1, line: 400, type: !267)
!1387 = !DILocalVariable(name: "end", scope: !1382, file: !1, line: 400, type: !267)
!1388 = !DILocalVariable(name: "llen", scope: !1382, file: !1, line: 400, type: !267)
!1389 = !DILocalVariable(name: "rangelen", scope: !1382, file: !1, line: 400, type: !267)
!1390 = !DILocalVariable(name: "iter", scope: !1391, file: !1, line: 426, type: !249)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !1, line: 425, column: 48)
!1392 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 425, column: 9)
!1393 = !DILocalVariable(name: "entry", scope: !1394, file: !1, line: 429, type: !323)
!1394 = distinct !DILexicalBlock(scope: !1391, file: !1, line: 428, column: 27)
!1395 = !DILocalVariable(name: "qe", scope: !1394, file: !1, line: 431, type: !1396)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!1397 = !DILocation(line: 398, column: 28, scope: !1382)
!1398 = !DILocation(line: 400, column: 5, scope: !1382)
!1399 = !DILocation(line: 402, column: 41, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 402, column: 9)
!1401 = !DILocation(line: 402, column: 38, scope: !1400)
!1402 = !DILocation(line: 400, column: 10, scope: !1382)
!1403 = !DILocation(line: 402, column: 10, scope: !1400)
!1404 = !DILocation(line: 402, column: 64, scope: !1400)
!1405 = !DILocation(line: 402, column: 73, scope: !1400)
!1406 = !DILocation(line: 403, column: 41, scope: !1400)
!1407 = !DILocation(line: 403, column: 38, scope: !1400)
!1408 = !DILocation(line: 400, column: 17, scope: !1382)
!1409 = !DILocation(line: 403, column: 10, scope: !1400)
!1410 = !DILocation(line: 403, column: 62, scope: !1400)
!1411 = !DILocation(line: 402, column: 9, scope: !1382)
!1412 = !DILocation(line: 405, column: 40, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 405, column: 9)
!1414 = !DILocation(line: 405, column: 37, scope: !1413)
!1415 = !DILocation(line: 405, column: 55, scope: !1413)
!1416 = !{!810, !127, i64 104}
!1417 = !DILocation(line: 405, column: 14, scope: !1413)
!1418 = !DILocation(line: 399, column: 11, scope: !1382)
!1419 = !DILocation(line: 405, column: 72, scope: !1413)
!1420 = !DILocation(line: 406, column: 10, scope: !1413)
!1421 = !DILocation(line: 406, column: 13, scope: !1413)
!1422 = !DILocation(line: 405, column: 9, scope: !1382)
!1423 = !DILocation(line: 74, column: 42, scope: !228, inlinedAt: !1424)
!1424 = distinct !DILocation(line: 407, column: 12, scope: !1382)
!1425 = !DILocation(line: 75, column: 18, scope: !237, inlinedAt: !1424)
!1426 = !DILocation(line: 75, column: 27, scope: !237, inlinedAt: !1424)
!1427 = !DILocation(line: 75, column: 9, scope: !228, inlinedAt: !1424)
!1428 = !DILocation(line: 78, column: 9, scope: !245, inlinedAt: !1424)
!1429 = !DILocation(line: 76, column: 40, scope: !241, inlinedAt: !1424)
!1430 = !DILocation(line: 76, column: 16, scope: !241, inlinedAt: !1424)
!1431 = !DILocation(line: 76, column: 9, scope: !241, inlinedAt: !1424)
!1432 = !DILocation(line: 400, column: 22, scope: !1382)
!1433 = !DILocation(line: 410, column: 9, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 410, column: 9)
!1435 = !DILocation(line: 410, column: 15, scope: !1434)
!1436 = !DILocation(line: 410, column: 9, scope: !1382)
!1437 = !DILocation(line: 410, column: 32, scope: !1434)
!1438 = !DILocation(line: 410, column: 26, scope: !1434)
!1439 = !DILocation(line: 410, column: 20, scope: !1434)
!1440 = !DILocation(line: 411, column: 9, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 411, column: 9)
!1442 = !DILocation(line: 411, column: 13, scope: !1441)
!1443 = !DILocation(line: 411, column: 9, scope: !1382)
!1444 = !DILocation(line: 411, column: 28, scope: !1441)
!1445 = !DILocation(line: 411, column: 22, scope: !1441)
!1446 = !DILocation(line: 411, column: 18, scope: !1441)
!1447 = !DILocation(line: 412, column: 15, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 412, column: 9)
!1449 = !DILocation(line: 412, column: 9, scope: !1382)
!1450 = !DILocation(line: 412, column: 26, scope: !1448)
!1451 = !DILocation(line: 412, column: 20, scope: !1448)
!1452 = !DILocation(line: 416, column: 9, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 416, column: 9)
!1454 = !DILocation(line: 416, column: 15, scope: !1453)
!1455 = !DILocation(line: 416, column: 30, scope: !1453)
!1456 = !DILocation(line: 416, column: 21, scope: !1453)
!1457 = !DILocation(line: 417, column: 27, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1453, file: !1, line: 416, column: 39)
!1459 = !DILocation(line: 417, column: 9, scope: !1458)
!1460 = !DILocation(line: 418, column: 9, scope: !1458)
!1461 = !DILocation(line: 420, column: 13, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 420, column: 9)
!1463 = !DILocation(line: 420, column: 9, scope: !1382)
!1464 = !DILocation(line: 420, column: 32, scope: !1462)
!1465 = !DILocation(line: 420, column: 26, scope: !1462)
!1466 = !DILocation(line: 420, column: 22, scope: !1462)
!1467 = !DILocation(line: 421, column: 17, scope: !1382)
!1468 = !DILocation(line: 421, column: 20, scope: !1382)
!1469 = !DILocation(line: 421, column: 27, scope: !1382)
!1470 = !DILocation(line: 400, column: 28, scope: !1382)
!1471 = !DILocation(line: 424, column: 5, scope: !1382)
!1472 = !DILocation(line: 425, column: 12, scope: !1392)
!1473 = !DILocation(line: 425, column: 21, scope: !1392)
!1474 = !DILocation(line: 425, column: 9, scope: !1382)
!1475 = !DILocation(line: 426, column: 58, scope: !1391)
!1476 = !DILocation(line: 83, column: 46, scope: !246, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 426, column: 34, scope: !1391)
!1478 = !DILocation(line: 83, column: 60, scope: !246, inlinedAt: !1477)
!1479 = !DILocation(line: 84, column: 54, scope: !246, inlinedAt: !1477)
!1480 = !DILocation(line: 85, column: 28, scope: !246, inlinedAt: !1477)
!1481 = !DILocation(line: 86, column: 9, scope: !246, inlinedAt: !1477)
!1482 = !DILocation(line: 86, column: 17, scope: !246, inlinedAt: !1477)
!1483 = !DILocation(line: 87, column: 29, scope: !246, inlinedAt: !1477)
!1484 = !DILocation(line: 87, column: 20, scope: !246, inlinedAt: !1477)
!1485 = !DILocation(line: 87, column: 9, scope: !246, inlinedAt: !1477)
!1486 = !DILocation(line: 87, column: 18, scope: !246, inlinedAt: !1477)
!1487 = !DILocation(line: 88, column: 9, scope: !246, inlinedAt: !1477)
!1488 = !DILocation(line: 88, column: 19, scope: !246, inlinedAt: !1477)
!1489 = !DILocation(line: 89, column: 9, scope: !246, inlinedAt: !1477)
!1490 = !DILocation(line: 89, column: 14, scope: !246, inlinedAt: !1477)
!1491 = !DILocation(line: 94, column: 22, scope: !295, inlinedAt: !1477)
!1492 = !DILocation(line: 94, column: 9, scope: !246, inlinedAt: !1477)
!1493 = !DILocation(line: 98, column: 9, scope: !307, inlinedAt: !1477)
!1494 = !DILocation(line: 92, column: 9, scope: !246, inlinedAt: !1477)
!1495 = !DILocation(line: 85, column: 23, scope: !246, inlinedAt: !1477)
!1496 = !DILocation(line: 95, column: 59, scope: !302, inlinedAt: !1477)
!1497 = !DILocation(line: 95, column: 20, scope: !302, inlinedAt: !1477)
!1498 = !DILocation(line: 95, column: 18, scope: !302, inlinedAt: !1477)
!1499 = !DILocation(line: 100, column: 5, scope: !246, inlinedAt: !1477)
!1500 = !DILocation(line: 426, column: 27, scope: !1391)
!1501 = !DILocation(line: 428, column: 9, scope: !1391)
!1502 = !DILocation(line: 429, column: 13, scope: !1394)
!1503 = !DILocation(line: 429, column: 27, scope: !1394)
!1504 = !DILocation(line: 112, column: 36, scope: !319, inlinedAt: !1505)
!1505 = distinct !DILocation(line: 430, column: 13, scope: !1394)
!1506 = !DILocation(line: 112, column: 55, scope: !319, inlinedAt: !1505)
!1507 = !DILocation(line: 114, column: 5, scope: !319, inlinedAt: !1505)
!1508 = !DILocation(line: 116, column: 15, scope: !319, inlinedAt: !1505)
!1509 = !DILocation(line: 117, column: 22, scope: !350, inlinedAt: !1505)
!1510 = !DILocation(line: 117, column: 9, scope: !319, inlinedAt: !1505)
!1511 = !DILocation(line: 120, column: 9, scope: !358, inlinedAt: !1505)
!1512 = !DILocation(line: 118, column: 34, scope: !353, inlinedAt: !1505)
!1513 = !DILocation(line: 118, column: 16, scope: !353, inlinedAt: !1505)
!1514 = !DILocation(line: 118, column: 9, scope: !353, inlinedAt: !1505)
!1515 = !DILocation(line: 432, column: 21, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1394, file: !1, line: 432, column: 17)
!1517 = !DILocation(line: 432, column: 17, scope: !1516)
!1518 = !DILocation(line: 432, column: 17, scope: !1394)
!1519 = !DILocation(line: 431, column: 29, scope: !1394)
!1520 = !DILocation(line: 433, column: 53, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1516, file: !1, line: 432, column: 28)
!1522 = !DILocation(line: 433, column: 49, scope: !1521)
!1523 = !DILocation(line: 433, column: 17, scope: !1521)
!1524 = !DILocation(line: 434, column: 13, scope: !1521)
!1525 = !DILocation(line: 435, column: 44, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1516, file: !1, line: 434, column: 20)
!1527 = !DILocation(line: 435, column: 17, scope: !1526)
!1528 = !DILocation(line: 437, column: 9, scope: !1391)
!1529 = !DILocation(line: 428, column: 23, scope: !1391)
!1530 = distinct !{!1530, !1501, !1528}
!1531 = !DILocation(line: 105, column: 15, scope: !308, inlinedAt: !1532)
!1532 = distinct !DILocation(line: 438, column: 9, scope: !1391)
!1533 = !DILocation(line: 104, column: 48, scope: !308, inlinedAt: !1532)
!1534 = !DILocation(line: 105, column: 5, scope: !308, inlinedAt: !1532)
!1535 = !DILocation(line: 106, column: 5, scope: !308, inlinedAt: !1532)
!1536 = !DILocation(line: 107, column: 1, scope: !308, inlinedAt: !1532)
!1537 = !DILocation(line: 442, column: 1, scope: !1382)
!1538 = !DILocation(line: 440, column: 9, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1392, file: !1, line: 439, column: 12)
!1540 = distinct !DISubprogram(name: "ltrimCommand", scope: !1, file: !1, line: 444, type: !678, isLocal: false, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1541)
!1541 = !{!1542, !1543, !1544, !1545, !1546, !1547, !1548}
!1542 = !DILocalVariable(name: "c", arg: 1, scope: !1540, file: !1, line: 444, type: !553)
!1543 = !DILocalVariable(name: "o", scope: !1540, file: !1, line: 445, type: !89)
!1544 = !DILocalVariable(name: "start", scope: !1540, file: !1, line: 446, type: !267)
!1545 = !DILocalVariable(name: "end", scope: !1540, file: !1, line: 446, type: !267)
!1546 = !DILocalVariable(name: "llen", scope: !1540, file: !1, line: 446, type: !267)
!1547 = !DILocalVariable(name: "ltrim", scope: !1540, file: !1, line: 446, type: !267)
!1548 = !DILocalVariable(name: "rtrim", scope: !1540, file: !1, line: 446, type: !267)
!1549 = !DILocation(line: 444, column: 27, scope: !1540)
!1550 = !DILocation(line: 446, column: 5, scope: !1540)
!1551 = !DILocation(line: 448, column: 41, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1540, file: !1, line: 448, column: 9)
!1553 = !DILocation(line: 448, column: 38, scope: !1552)
!1554 = !DILocation(line: 446, column: 10, scope: !1540)
!1555 = !DILocation(line: 448, column: 10, scope: !1552)
!1556 = !DILocation(line: 448, column: 64, scope: !1552)
!1557 = !DILocation(line: 448, column: 73, scope: !1552)
!1558 = !DILocation(line: 449, column: 41, scope: !1552)
!1559 = !DILocation(line: 449, column: 38, scope: !1552)
!1560 = !DILocation(line: 446, column: 17, scope: !1540)
!1561 = !DILocation(line: 449, column: 10, scope: !1552)
!1562 = !DILocation(line: 449, column: 62, scope: !1552)
!1563 = !DILocation(line: 448, column: 9, scope: !1540)
!1564 = !DILocation(line: 451, column: 41, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1540, file: !1, line: 451, column: 9)
!1566 = !DILocation(line: 451, column: 38, scope: !1565)
!1567 = !DILocation(line: 451, column: 56, scope: !1565)
!1568 = !DILocation(line: 451, column: 14, scope: !1565)
!1569 = !DILocation(line: 445, column: 11, scope: !1540)
!1570 = !DILocation(line: 451, column: 61, scope: !1565)
!1571 = !DILocation(line: 451, column: 69, scope: !1565)
!1572 = !DILocation(line: 452, column: 9, scope: !1565)
!1573 = !DILocation(line: 451, column: 9, scope: !1540)
!1574 = !DILocation(line: 74, column: 42, scope: !228, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 453, column: 12, scope: !1540)
!1576 = !DILocation(line: 75, column: 18, scope: !237, inlinedAt: !1575)
!1577 = !DILocation(line: 75, column: 27, scope: !237, inlinedAt: !1575)
!1578 = !DILocation(line: 75, column: 9, scope: !228, inlinedAt: !1575)
!1579 = !DILocation(line: 78, column: 9, scope: !245, inlinedAt: !1575)
!1580 = !DILocation(line: 76, column: 40, scope: !241, inlinedAt: !1575)
!1581 = !DILocation(line: 76, column: 16, scope: !241, inlinedAt: !1575)
!1582 = !DILocation(line: 76, column: 9, scope: !241, inlinedAt: !1575)
!1583 = !DILocation(line: 446, column: 22, scope: !1540)
!1584 = !DILocation(line: 456, column: 9, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1540, file: !1, line: 456, column: 9)
!1586 = !DILocation(line: 456, column: 15, scope: !1585)
!1587 = !DILocation(line: 456, column: 9, scope: !1540)
!1588 = !DILocation(line: 456, column: 32, scope: !1585)
!1589 = !DILocation(line: 456, column: 26, scope: !1585)
!1590 = !DILocation(line: 456, column: 20, scope: !1585)
!1591 = !DILocation(line: 457, column: 9, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1540, file: !1, line: 457, column: 9)
!1593 = !DILocation(line: 457, column: 13, scope: !1592)
!1594 = !DILocation(line: 457, column: 9, scope: !1540)
!1595 = !DILocation(line: 457, column: 28, scope: !1592)
!1596 = !DILocation(line: 457, column: 22, scope: !1592)
!1597 = !DILocation(line: 457, column: 18, scope: !1592)
!1598 = !DILocation(line: 458, column: 15, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1540, file: !1, line: 458, column: 9)
!1600 = !DILocation(line: 458, column: 9, scope: !1540)
!1601 = !DILocation(line: 458, column: 26, scope: !1599)
!1602 = !DILocation(line: 458, column: 20, scope: !1599)
!1603 = !DILocation(line: 462, column: 9, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1540, file: !1, line: 462, column: 9)
!1605 = !DILocation(line: 462, column: 15, scope: !1604)
!1606 = !DILocation(line: 462, column: 30, scope: !1604)
!1607 = !DILocation(line: 462, column: 21, scope: !1604)
!1608 = !DILocation(line: 467, column: 17, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !1, line: 467, column: 13)
!1610 = distinct !DILexicalBlock(scope: !1604, file: !1, line: 466, column: 12)
!1611 = !DILocation(line: 467, column: 13, scope: !1610)
!1612 = !DILocation(line: 467, column: 36, scope: !1609)
!1613 = !DILocation(line: 467, column: 30, scope: !1609)
!1614 = !DILocation(line: 467, column: 26, scope: !1609)
!1615 = !DILocation(line: 469, column: 22, scope: !1610)
!1616 = !DILocation(line: 446, column: 28, scope: !1540)
!1617 = !DILocation(line: 469, column: 25, scope: !1610)
!1618 = !DILocation(line: 446, column: 35, scope: !1540)
!1619 = !DILocation(line: 0, scope: !1610)
!1620 = !DILocation(line: 473, column: 12, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1540, file: !1, line: 473, column: 9)
!1622 = !DILocation(line: 473, column: 21, scope: !1621)
!1623 = !DILocation(line: 473, column: 9, scope: !1540)
!1624 = !DILocation(line: 474, column: 30, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1621, file: !1, line: 473, column: 48)
!1626 = !DILocation(line: 474, column: 9, scope: !1625)
!1627 = !DILocation(line: 475, column: 30, scope: !1625)
!1628 = !DILocation(line: 475, column: 34, scope: !1625)
!1629 = !DILocation(line: 475, column: 9, scope: !1625)
!1630 = !DILocation(line: 480, column: 48, scope: !1540)
!1631 = !DILocation(line: 480, column: 45, scope: !1540)
!1632 = !DILocation(line: 480, column: 59, scope: !1540)
!1633 = !DILocation(line: 480, column: 63, scope: !1540)
!1634 = !DILocation(line: 480, column: 5, scope: !1540)
!1635 = !DILocation(line: 74, column: 42, scope: !228, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 481, column: 9, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1540, file: !1, line: 481, column: 9)
!1638 = !DILocation(line: 75, column: 18, scope: !237, inlinedAt: !1636)
!1639 = !DILocation(line: 75, column: 27, scope: !237, inlinedAt: !1636)
!1640 = !DILocation(line: 75, column: 9, scope: !228, inlinedAt: !1636)
!1641 = !DILocation(line: 78, column: 9, scope: !245, inlinedAt: !1636)
!1642 = !DILocation(line: 76, column: 40, scope: !241, inlinedAt: !1636)
!1643 = !DILocation(line: 76, column: 16, scope: !241, inlinedAt: !1636)
!1644 = !DILocation(line: 76, column: 9, scope: !241, inlinedAt: !1636)
!1645 = !DILocation(line: 481, column: 27, scope: !1637)
!1646 = !DILocation(line: 481, column: 9, scope: !1540)
!1647 = !DILocation(line: 477, column: 9, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1621, file: !1, line: 476, column: 12)
!1649 = !DILocation(line: 482, column: 21, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1637, file: !1, line: 481, column: 33)
!1651 = !DILocation(line: 482, column: 27, scope: !1650)
!1652 = !DILocation(line: 482, column: 24, scope: !1650)
!1653 = !DILocation(line: 482, column: 9, scope: !1650)
!1654 = !DILocation(line: 483, column: 53, scope: !1650)
!1655 = !DILocation(line: 483, column: 50, scope: !1650)
!1656 = !DILocation(line: 483, column: 64, scope: !1650)
!1657 = !DILocation(line: 483, column: 68, scope: !1650)
!1658 = !DILocation(line: 483, column: 9, scope: !1650)
!1659 = !DILocation(line: 484, column: 5, scope: !1650)
!1660 = !DILocation(line: 485, column: 26, scope: !1540)
!1661 = !DILocation(line: 485, column: 32, scope: !1540)
!1662 = !DILocation(line: 485, column: 29, scope: !1540)
!1663 = !DILocation(line: 485, column: 5, scope: !1540)
!1664 = !DILocation(line: 486, column: 17, scope: !1540)
!1665 = !DILocation(line: 487, column: 23, scope: !1540)
!1666 = !DILocation(line: 487, column: 5, scope: !1540)
!1667 = !DILocation(line: 488, column: 1, scope: !1540)
!1668 = distinct !DISubprogram(name: "lremCommand", scope: !1, file: !1, line: 490, type: !678, isLocal: false, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1669)
!1669 = !{!1670, !1671, !1672, !1673, !1674, !1675, !1676}
!1670 = !DILocalVariable(name: "c", arg: 1, scope: !1668, file: !1, line: 490, type: !553)
!1671 = !DILocalVariable(name: "subject", scope: !1668, file: !1, line: 491, type: !89)
!1672 = !DILocalVariable(name: "obj", scope: !1668, file: !1, line: 491, type: !89)
!1673 = !DILocalVariable(name: "toremove", scope: !1668, file: !1, line: 493, type: !267)
!1674 = !DILocalVariable(name: "removed", scope: !1668, file: !1, line: 494, type: !267)
!1675 = !DILocalVariable(name: "li", scope: !1668, file: !1, line: 502, type: !249)
!1676 = !DILocalVariable(name: "entry", scope: !1668, file: !1, line: 510, type: !323)
!1677 = !DILocation(line: 490, column: 26, scope: !1668)
!1678 = !DILocation(line: 492, column: 14, scope: !1668)
!1679 = !DILocation(line: 492, column: 11, scope: !1668)
!1680 = !DILocation(line: 491, column: 21, scope: !1668)
!1681 = !DILocation(line: 493, column: 5, scope: !1668)
!1682 = !DILocation(line: 494, column: 10, scope: !1668)
!1683 = !DILocation(line: 496, column: 38, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1668, file: !1, line: 496, column: 9)
!1685 = !DILocation(line: 493, column: 10, scope: !1668)
!1686 = !DILocation(line: 496, column: 10, scope: !1684)
!1687 = !DILocation(line: 496, column: 67, scope: !1684)
!1688 = !DILocation(line: 496, column: 9, scope: !1668)
!1689 = !DILocation(line: 499, column: 42, scope: !1668)
!1690 = !DILocation(line: 499, column: 39, scope: !1668)
!1691 = !DILocation(line: 499, column: 57, scope: !1668)
!1692 = !DILocation(line: 499, column: 15, scope: !1668)
!1693 = !DILocation(line: 491, column: 11, scope: !1668)
!1694 = !DILocation(line: 500, column: 17, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1668, file: !1, line: 500, column: 9)
!1696 = !DILocation(line: 500, column: 25, scope: !1695)
!1697 = !DILocation(line: 500, column: 28, scope: !1695)
!1698 = !DILocation(line: 500, column: 9, scope: !1668)
!1699 = !DILocation(line: 503, column: 9, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1668, file: !1, line: 503, column: 9)
!1701 = !DILocation(line: 503, column: 18, scope: !1700)
!1702 = !DILocation(line: 503, column: 9, scope: !1668)
!1703 = !DILocation(line: 504, column: 20, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1700, file: !1, line: 503, column: 23)
!1705 = !DILocation(line: 504, column: 18, scope: !1704)
!1706 = !DILocation(line: 83, column: 46, scope: !246, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 505, column: 14, scope: !1704)
!1708 = !DILocation(line: 83, column: 60, scope: !246, inlinedAt: !1707)
!1709 = !DILocation(line: 84, column: 54, scope: !246, inlinedAt: !1707)
!1710 = !DILocation(line: 85, column: 28, scope: !246, inlinedAt: !1707)
!1711 = !DILocation(line: 86, column: 9, scope: !246, inlinedAt: !1707)
!1712 = !DILocation(line: 86, column: 17, scope: !246, inlinedAt: !1707)
!1713 = !DILocation(line: 87, column: 29, scope: !246, inlinedAt: !1707)
!1714 = !DILocation(line: 87, column: 20, scope: !246, inlinedAt: !1707)
!1715 = !DILocation(line: 87, column: 9, scope: !246, inlinedAt: !1707)
!1716 = !DILocation(line: 87, column: 18, scope: !246, inlinedAt: !1707)
!1717 = !DILocation(line: 88, column: 9, scope: !246, inlinedAt: !1707)
!1718 = !DILocation(line: 88, column: 19, scope: !246, inlinedAt: !1707)
!1719 = !DILocation(line: 89, column: 9, scope: !246, inlinedAt: !1707)
!1720 = !DILocation(line: 89, column: 14, scope: !246, inlinedAt: !1707)
!1721 = !DILocation(line: 94, column: 22, scope: !295, inlinedAt: !1707)
!1722 = !DILocation(line: 94, column: 9, scope: !246, inlinedAt: !1707)
!1723 = !DILocation(line: 98, column: 9, scope: !307, inlinedAt: !1707)
!1724 = !DILocation(line: 92, column: 9, scope: !246, inlinedAt: !1707)
!1725 = !DILocation(line: 85, column: 23, scope: !246, inlinedAt: !1707)
!1726 = !DILocation(line: 95, column: 59, scope: !302, inlinedAt: !1707)
!1727 = !DILocation(line: 95, column: 20, scope: !302, inlinedAt: !1707)
!1728 = !DILocation(line: 502, column: 23, scope: !1668)
!1729 = !DILocation(line: 506, column: 5, scope: !1704)
!1730 = !DILocation(line: 83, column: 46, scope: !246, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 507, column: 14, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1700, file: !1, line: 506, column: 12)
!1733 = !DILocation(line: 83, column: 60, scope: !246, inlinedAt: !1731)
!1734 = !DILocation(line: 84, column: 54, scope: !246, inlinedAt: !1731)
!1735 = !DILocation(line: 85, column: 28, scope: !246, inlinedAt: !1731)
!1736 = !DILocation(line: 86, column: 9, scope: !246, inlinedAt: !1731)
!1737 = !DILocation(line: 86, column: 17, scope: !246, inlinedAt: !1731)
!1738 = !DILocation(line: 87, column: 29, scope: !246, inlinedAt: !1731)
!1739 = !DILocation(line: 87, column: 20, scope: !246, inlinedAt: !1731)
!1740 = !DILocation(line: 87, column: 9, scope: !246, inlinedAt: !1731)
!1741 = !DILocation(line: 87, column: 18, scope: !246, inlinedAt: !1731)
!1742 = !DILocation(line: 88, column: 9, scope: !246, inlinedAt: !1731)
!1743 = !DILocation(line: 88, column: 19, scope: !246, inlinedAt: !1731)
!1744 = !DILocation(line: 89, column: 9, scope: !246, inlinedAt: !1731)
!1745 = !DILocation(line: 89, column: 14, scope: !246, inlinedAt: !1731)
!1746 = !DILocation(line: 94, column: 22, scope: !295, inlinedAt: !1731)
!1747 = !DILocation(line: 94, column: 9, scope: !246, inlinedAt: !1731)
!1748 = !DILocation(line: 98, column: 9, scope: !307, inlinedAt: !1731)
!1749 = !DILocation(line: 92, column: 9, scope: !246, inlinedAt: !1731)
!1750 = !DILocation(line: 85, column: 23, scope: !246, inlinedAt: !1731)
!1751 = !DILocation(line: 95, column: 59, scope: !302, inlinedAt: !1731)
!1752 = !DILocation(line: 95, column: 20, scope: !302, inlinedAt: !1731)
!1753 = !DILocation(line: 114, column: 5, scope: !319, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 511, column: 12, scope: !1668)
!1755 = !DILocation(line: 95, column: 18, scope: !302, inlinedAt: !1731)
!1756 = !DILocation(line: 100, column: 5, scope: !246, inlinedAt: !1731)
!1757 = !DILocation(line: 510, column: 5, scope: !1668)
!1758 = !DILocation(line: 510, column: 19, scope: !1668)
!1759 = !DILocation(line: 112, column: 36, scope: !319, inlinedAt: !1754)
!1760 = !DILocation(line: 112, column: 55, scope: !319, inlinedAt: !1754)
!1761 = !DILocation(line: 116, column: 15, scope: !319, inlinedAt: !1754)
!1762 = !DILocation(line: 117, column: 22, scope: !350, inlinedAt: !1754)
!1763 = !DILocation(line: 117, column: 9, scope: !319, inlinedAt: !1754)
!1764 = !DILocation(line: 120, column: 9, scope: !358, inlinedAt: !1754)
!1765 = !DILocation(line: 118, column: 34, scope: !353, inlinedAt: !1754)
!1766 = !DILocation(line: 118, column: 16, scope: !353, inlinedAt: !1754)
!1767 = !DILocation(line: 118, column: 9, scope: !353, inlinedAt: !1754)
!1768 = !DILocation(line: 511, column: 5, scope: !1668)
!1769 = !DILocation(line: 512, column: 13, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !1, line: 512, column: 13)
!1771 = distinct !DILexicalBlock(scope: !1668, file: !1, line: 511, column: 37)
!1772 = !DILocation(line: 512, column: 13, scope: !1771)
!1773 = !DILocation(line: 170, column: 39, scope: !497, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 513, column: 13, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1770, file: !1, line: 512, column: 40)
!1776 = !DILocation(line: 170, column: 60, scope: !497, inlinedAt: !1774)
!1777 = !DILocation(line: 171, column: 16, scope: !506, inlinedAt: !1774)
!1778 = !DILocation(line: 171, column: 20, scope: !506, inlinedAt: !1774)
!1779 = !DILocation(line: 171, column: 29, scope: !506, inlinedAt: !1774)
!1780 = !DILocation(line: 171, column: 9, scope: !497, inlinedAt: !1774)
!1781 = !DILocation(line: 174, column: 9, scope: !516, inlinedAt: !1774)
!1782 = !DILocation(line: 172, column: 33, scope: !511, inlinedAt: !1774)
!1783 = !DILocation(line: 172, column: 9, scope: !511, inlinedAt: !1774)
!1784 = !DILocation(line: 176, column: 1, scope: !497, inlinedAt: !1774)
!1785 = !DILocation(line: 514, column: 25, scope: !1775)
!1786 = !DILocation(line: 515, column: 20, scope: !1775)
!1787 = !DILocation(line: 516, column: 17, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1775, file: !1, line: 516, column: 17)
!1789 = !DILocation(line: 516, column: 37, scope: !1788)
!1790 = !DILocation(line: 516, column: 26, scope: !1788)
!1791 = !DILocation(line: 0, scope: !1668)
!1792 = distinct !{!1792, !1768, !1793}
!1793 = !DILocation(line: 518, column: 5, scope: !1668)
!1794 = !DILocation(line: 104, column: 48, scope: !308, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 519, column: 5, scope: !1668)
!1796 = !DILocation(line: 105, column: 15, scope: !308, inlinedAt: !1795)
!1797 = !DILocation(line: 105, column: 5, scope: !308, inlinedAt: !1795)
!1798 = !DILocation(line: 106, column: 5, scope: !308, inlinedAt: !1795)
!1799 = !DILocation(line: 107, column: 1, scope: !308, inlinedAt: !1795)
!1800 = !DILocation(line: 521, column: 9, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1668, file: !1, line: 521, column: 9)
!1802 = !DILocation(line: 521, column: 9, scope: !1668)
!1803 = !DILocation(line: 522, column: 30, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1801, file: !1, line: 521, column: 18)
!1805 = !DILocation(line: 522, column: 36, scope: !1804)
!1806 = !DILocation(line: 522, column: 33, scope: !1804)
!1807 = !DILocation(line: 522, column: 9, scope: !1804)
!1808 = !DILocation(line: 523, column: 51, scope: !1804)
!1809 = !DILocation(line: 523, column: 48, scope: !1804)
!1810 = !DILocation(line: 523, column: 62, scope: !1804)
!1811 = !DILocation(line: 523, column: 66, scope: !1804)
!1812 = !DILocation(line: 523, column: 9, scope: !1804)
!1813 = !DILocation(line: 524, column: 5, scope: !1804)
!1814 = !DILocation(line: 74, column: 42, scope: !228, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 526, column: 9, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1668, file: !1, line: 526, column: 9)
!1817 = !DILocation(line: 75, column: 18, scope: !237, inlinedAt: !1815)
!1818 = !DILocation(line: 75, column: 27, scope: !237, inlinedAt: !1815)
!1819 = !DILocation(line: 75, column: 9, scope: !228, inlinedAt: !1815)
!1820 = !DILocation(line: 78, column: 9, scope: !245, inlinedAt: !1815)
!1821 = !DILocation(line: 76, column: 40, scope: !241, inlinedAt: !1815)
!1822 = !DILocation(line: 76, column: 16, scope: !241, inlinedAt: !1815)
!1823 = !DILocation(line: 76, column: 9, scope: !241, inlinedAt: !1815)
!1824 = !DILocation(line: 526, column: 33, scope: !1816)
!1825 = !DILocation(line: 526, column: 9, scope: !1668)
!1826 = !DILocation(line: 527, column: 21, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1816, file: !1, line: 526, column: 39)
!1828 = !DILocation(line: 527, column: 27, scope: !1827)
!1829 = !DILocation(line: 527, column: 24, scope: !1827)
!1830 = !DILocation(line: 527, column: 9, scope: !1827)
!1831 = !DILocation(line: 528, column: 53, scope: !1827)
!1832 = !DILocation(line: 528, column: 50, scope: !1827)
!1833 = !DILocation(line: 528, column: 64, scope: !1827)
!1834 = !DILocation(line: 528, column: 68, scope: !1827)
!1835 = !DILocation(line: 528, column: 9, scope: !1827)
!1836 = !DILocation(line: 529, column: 5, scope: !1827)
!1837 = !DILocation(line: 531, column: 5, scope: !1668)
!1838 = !DILocation(line: 532, column: 1, scope: !1668)
!1839 = distinct !DISubprogram(name: "rpoplpushHandlePush", scope: !1, file: !1, line: 550, type: !1840, isLocal: false, isDefinition: true, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1842)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{null, !553, !89, !89, !89}
!1842 = !{!1843, !1844, !1845, !1846}
!1843 = !DILocalVariable(name: "c", arg: 1, scope: !1839, file: !1, line: 550, type: !553)
!1844 = !DILocalVariable(name: "dstkey", arg: 2, scope: !1839, file: !1, line: 550, type: !89)
!1845 = !DILocalVariable(name: "dstobj", arg: 3, scope: !1839, file: !1, line: 550, type: !89)
!1846 = !DILocalVariable(name: "value", arg: 4, scope: !1839, file: !1, line: 550, type: !89)
!1847 = !DILocation(line: 550, column: 34, scope: !1839)
!1848 = !DILocation(line: 550, column: 43, scope: !1839)
!1849 = !DILocation(line: 550, column: 57, scope: !1839)
!1850 = !DILocation(line: 550, column: 71, scope: !1839)
!1851 = !DILocation(line: 552, column: 10, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1839, file: !1, line: 552, column: 9)
!1853 = !DILocation(line: 552, column: 9, scope: !1839)
!1854 = !DILocation(line: 558, column: 26, scope: !1839)
!1855 = !DILocation(line: 553, column: 18, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1852, file: !1, line: 552, column: 18)
!1857 = !DILocation(line: 554, column: 37, scope: !1856)
!1858 = !DILocation(line: 554, column: 49, scope: !1856)
!1859 = !DILocation(line: 555, column: 36, scope: !1856)
!1860 = !DILocation(line: 554, column: 9, scope: !1856)
!1861 = !DILocation(line: 556, column: 18, scope: !1856)
!1862 = !DILocation(line: 556, column: 9, scope: !1856)
!1863 = !DILocation(line: 557, column: 5, scope: !1856)
!1864 = !DILocation(line: 558, column: 5, scope: !1839)
!1865 = !DILocation(line: 559, column: 5, scope: !1839)
!1866 = !DILocation(line: 560, column: 55, scope: !1839)
!1867 = !DILocation(line: 560, column: 59, scope: !1839)
!1868 = !DILocation(line: 560, column: 5, scope: !1839)
!1869 = !DILocation(line: 562, column: 5, scope: !1839)
!1870 = !DILocation(line: 563, column: 1, scope: !1839)
!1871 = distinct !DISubprogram(name: "rpoplpushCommand", scope: !1, file: !1, line: 565, type: !678, isLocal: false, isDefinition: true, scopeLine: 565, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1872)
!1872 = !{!1873, !1874, !1875, !1876, !1879}
!1873 = !DILocalVariable(name: "c", arg: 1, scope: !1871, file: !1, line: 565, type: !553)
!1874 = !DILocalVariable(name: "sobj", scope: !1871, file: !1, line: 566, type: !89)
!1875 = !DILocalVariable(name: "value", scope: !1871, file: !1, line: 566, type: !89)
!1876 = !DILocalVariable(name: "dobj", scope: !1877, file: !1, line: 575, type: !89)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !1, line: 574, column: 12)
!1878 = distinct !DILexicalBlock(scope: !1871, file: !1, line: 570, column: 9)
!1879 = !DILocalVariable(name: "touchedkey", scope: !1877, file: !1, line: 576, type: !89)
!1880 = !DILocation(line: 565, column: 31, scope: !1871)
!1881 = !DILocation(line: 567, column: 44, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1871, file: !1, line: 567, column: 9)
!1883 = !DILocation(line: 567, column: 41, scope: !1882)
!1884 = !DILocation(line: 567, column: 59, scope: !1882)
!1885 = !DILocation(line: 567, column: 17, scope: !1882)
!1886 = !DILocation(line: 566, column: 11, scope: !1871)
!1887 = !DILocation(line: 567, column: 70, scope: !1882)
!1888 = !DILocation(line: 567, column: 78, scope: !1882)
!1889 = !DILocation(line: 568, column: 9, scope: !1882)
!1890 = !DILocation(line: 567, column: 9, scope: !1871)
!1891 = !DILocation(line: 74, column: 42, scope: !228, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 570, column: 9, scope: !1878)
!1893 = !DILocation(line: 75, column: 18, scope: !237, inlinedAt: !1892)
!1894 = !DILocation(line: 75, column: 27, scope: !237, inlinedAt: !1892)
!1895 = !DILocation(line: 75, column: 9, scope: !228, inlinedAt: !1892)
!1896 = !DILocation(line: 78, column: 9, scope: !245, inlinedAt: !1892)
!1897 = !DILocation(line: 76, column: 40, scope: !241, inlinedAt: !1892)
!1898 = !DILocation(line: 76, column: 16, scope: !241, inlinedAt: !1892)
!1899 = !DILocation(line: 76, column: 9, scope: !241, inlinedAt: !1892)
!1900 = !DILocation(line: 570, column: 30, scope: !1878)
!1901 = !DILocation(line: 570, column: 9, scope: !1871)
!1902 = !DILocation(line: 573, column: 27, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1878, file: !1, line: 570, column: 36)
!1904 = !DILocation(line: 573, column: 9, scope: !1903)
!1905 = !DILocation(line: 574, column: 5, scope: !1903)
!1906 = !DILocation(line: 575, column: 40, scope: !1877)
!1907 = !DILocation(line: 575, column: 46, scope: !1877)
!1908 = !DILocation(line: 575, column: 43, scope: !1877)
!1909 = !DILocation(line: 575, column: 22, scope: !1877)
!1910 = !DILocation(line: 575, column: 15, scope: !1877)
!1911 = !DILocation(line: 576, column: 31, scope: !1877)
!1912 = !DILocation(line: 576, column: 28, scope: !1877)
!1913 = !DILocation(line: 576, column: 15, scope: !1877)
!1914 = !DILocation(line: 578, column: 13, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1877, file: !1, line: 578, column: 13)
!1916 = !DILocation(line: 578, column: 18, scope: !1915)
!1917 = !DILocation(line: 578, column: 21, scope: !1915)
!1918 = !DILocation(line: 578, column: 13, scope: !1877)
!1919 = !DILocation(line: 57, column: 25, scope: !184, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 579, column: 17, scope: !1877)
!1921 = !DILocation(line: 57, column: 38, scope: !184, inlinedAt: !1920)
!1922 = !DILocation(line: 58, column: 5, scope: !184, inlinedAt: !1920)
!1923 = !DILocation(line: 59, column: 5, scope: !184, inlinedAt: !1920)
!1924 = !DILocation(line: 59, column: 11, scope: !184, inlinedAt: !1920)
!1925 = !DILocation(line: 62, column: 18, scope: !201, inlinedAt: !1920)
!1926 = !DILocation(line: 62, column: 27, scope: !201, inlinedAt: !1920)
!1927 = !DILocation(line: 62, column: 9, scope: !184, inlinedAt: !1920)
!1928 = !DILocation(line: 61, column: 9, scope: !184, inlinedAt: !1920)
!1929 = !DILocation(line: 63, column: 41, scope: !208, inlinedAt: !1920)
!1930 = !DILocation(line: 63, column: 56, scope: !208, inlinedAt: !1920)
!1931 = !DILocation(line: 58, column: 15, scope: !184, inlinedAt: !1920)
!1932 = !DILocation(line: 63, column: 13, scope: !208, inlinedAt: !1920)
!1933 = !DILocation(line: 65, column: 18, scope: !214, inlinedAt: !1920)
!1934 = !DILocation(line: 63, column: 13, scope: !209, inlinedAt: !1920)
!1935 = !DILocation(line: 66, column: 56, scope: !214, inlinedAt: !1920)
!1936 = !DILocation(line: 66, column: 25, scope: !214, inlinedAt: !1920)
!1937 = !DILocation(line: 66, column: 23, scope: !214, inlinedAt: !1920)
!1938 = !DILocation(line: 66, column: 17, scope: !214, inlinedAt: !1920)
!1939 = !DILocation(line: 69, column: 9, scope: !224, inlinedAt: !1920)
!1940 = !DILocation(line: 71, column: 12, scope: !184, inlinedAt: !1920)
!1941 = !DILocation(line: 72, column: 1, scope: !184, inlinedAt: !1920)
!1942 = !DILocation(line: 71, column: 5, scope: !184, inlinedAt: !1920)
!1943 = !DILocation(line: 566, column: 18, scope: !1871)
!1944 = !DILocation(line: 583, column: 9, scope: !1877)
!1945 = !DILocation(line: 584, column: 34, scope: !1877)
!1946 = !DILocation(line: 584, column: 31, scope: !1877)
!1947 = !DILocation(line: 584, column: 9, scope: !1877)
!1948 = !DILocation(line: 587, column: 9, scope: !1877)
!1949 = !DILocation(line: 590, column: 62, scope: !1877)
!1950 = !DILocation(line: 590, column: 66, scope: !1877)
!1951 = !DILocation(line: 590, column: 9, scope: !1877)
!1952 = !DILocation(line: 74, column: 42, scope: !228, inlinedAt: !1953)
!1953 = distinct !DILocation(line: 591, column: 13, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1877, file: !1, line: 591, column: 13)
!1955 = !DILocation(line: 75, column: 18, scope: !237, inlinedAt: !1953)
!1956 = !DILocation(line: 75, column: 27, scope: !237, inlinedAt: !1953)
!1957 = !DILocation(line: 75, column: 9, scope: !228, inlinedAt: !1953)
!1958 = !DILocation(line: 78, column: 9, scope: !245, inlinedAt: !1953)
!1959 = !DILocation(line: 76, column: 40, scope: !241, inlinedAt: !1953)
!1960 = !DILocation(line: 76, column: 16, scope: !241, inlinedAt: !1953)
!1961 = !DILocation(line: 76, column: 9, scope: !241, inlinedAt: !1953)
!1962 = !DILocation(line: 591, column: 34, scope: !1954)
!1963 = !DILocation(line: 591, column: 13, scope: !1877)
!1964 = !DILocation(line: 592, column: 25, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1954, file: !1, line: 591, column: 40)
!1966 = !DILocation(line: 592, column: 13, scope: !1965)
!1967 = !DILocation(line: 594, column: 47, scope: !1965)
!1968 = !DILocation(line: 594, column: 51, scope: !1965)
!1969 = !DILocation(line: 593, column: 13, scope: !1965)
!1970 = !DILocation(line: 595, column: 9, scope: !1965)
!1971 = !DILocation(line: 596, column: 30, scope: !1877)
!1972 = !DILocation(line: 596, column: 9, scope: !1877)
!1973 = !DILocation(line: 597, column: 9, scope: !1877)
!1974 = !DILocation(line: 598, column: 21, scope: !1877)
!1975 = !DILocation(line: 599, column: 16, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1877, file: !1, line: 599, column: 13)
!1977 = !{!793, !127, i64 80}
!1978 = !DILocation(line: 599, column: 21, scope: !1976)
!1979 = !{!1980, !127, i64 8}
!1980 = !{!"redisCommand", !127, i64 0, !127, i64 8, !124, i64 16, !127, i64 24, !124, i64 32, !127, i64 40, !124, i64 48, !124, i64 52, !124, i64 56, !219, i64 64, !219, i64 72}
!1981 = !DILocation(line: 599, column: 26, scope: !1976)
!1982 = !DILocation(line: 599, column: 13, scope: !1877)
!1983 = !DILocation(line: 600, column: 51, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1976, file: !1, line: 599, column: 48)
!1985 = !{!810, !127, i64 336}
!1986 = !DILocation(line: 600, column: 64, scope: !1984)
!1987 = !DILocation(line: 600, column: 61, scope: !1984)
!1988 = !DILocation(line: 600, column: 72, scope: !1984)
!1989 = !DILocation(line: 600, column: 13, scope: !1984)
!1990 = !DILocation(line: 601, column: 9, scope: !1984)
!1991 = !DILocation(line: 603, column: 1, scope: !1871)
!1992 = distinct !DISubprogram(name: "brpoplpushCommand", scope: !1, file: !1, line: 750, type: !678, isLocal: false, isDefinition: true, scopeLine: 750, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1993)
!1993 = !{!1994, !1995, !1996}
!1994 = !DILocalVariable(name: "c", arg: 1, scope: !1992, file: !1, line: 750, type: !553)
!1995 = !DILocalVariable(name: "timeout", scope: !1992, file: !1, line: 751, type: !756)
!1996 = !DILocalVariable(name: "key", scope: !1992, file: !1, line: 756, type: !89)
!1997 = !DILocation(line: 750, column: 32, scope: !1992)
!1998 = !DILocation(line: 751, column: 5, scope: !1992)
!1999 = !DILocation(line: 753, column: 42, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1992, file: !1, line: 753, column: 9)
!2001 = !DILocation(line: 753, column: 39, scope: !2000)
!2002 = !DILocation(line: 751, column: 14, scope: !1992)
!2003 = !DILocation(line: 753, column: 9, scope: !2000)
!2004 = !DILocation(line: 754, column: 9, scope: !2000)
!2005 = !DILocation(line: 753, column: 9, scope: !1992)
!2006 = !DILocation(line: 756, column: 35, scope: !1992)
!2007 = !DILocation(line: 756, column: 42, scope: !1992)
!2008 = !DILocation(line: 756, column: 39, scope: !1992)
!2009 = !DILocation(line: 756, column: 17, scope: !1992)
!2010 = !DILocation(line: 756, column: 11, scope: !1992)
!2011 = !DILocation(line: 758, column: 13, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1992, file: !1, line: 758, column: 9)
!2013 = !DILocation(line: 758, column: 9, scope: !1992)
!2014 = !DILocation(line: 759, column: 16, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !1, line: 759, column: 13)
!2016 = distinct !DILexicalBlock(scope: !2012, file: !1, line: 758, column: 22)
!2017 = !{!793, !124, i64 160}
!2018 = !DILocation(line: 759, column: 22, scope: !2015)
!2019 = !DILocation(line: 759, column: 13, scope: !2016)
!2020 = !DILocation(line: 762, column: 32, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2015, file: !1, line: 759, column: 38)
!2022 = !DILocation(line: 762, column: 13, scope: !2021)
!2023 = !DILocation(line: 763, column: 9, scope: !2021)
!2024 = !DILocation(line: 765, column: 44, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2015, file: !1, line: 763, column: 16)
!2026 = !DILocation(line: 765, column: 49, scope: !2025)
!2027 = !DILocation(line: 765, column: 55, scope: !2025)
!2028 = !DILocation(line: 765, column: 63, scope: !2025)
!2029 = !DILocation(line: 765, column: 13, scope: !2025)
!2030 = !DILocation(line: 768, column: 18, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !1, line: 768, column: 13)
!2032 = distinct !DILexicalBlock(scope: !2012, file: !1, line: 767, column: 12)
!2033 = !DILocation(line: 768, column: 23, scope: !2031)
!2034 = !DILocation(line: 768, column: 13, scope: !2032)
!2035 = !DILocation(line: 769, column: 32, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2031, file: !1, line: 768, column: 36)
!2037 = !DILocation(line: 769, column: 13, scope: !2036)
!2038 = !DILocation(line: 770, column: 9, scope: !2036)
!2039 = !DILocation(line: 74, column: 42, scope: !228, inlinedAt: !2040)
!2040 = distinct !DILocation(line: 773, column: 13, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2031, file: !1, line: 770, column: 16)
!2042 = !DILocation(line: 75, column: 18, scope: !237, inlinedAt: !2040)
!2043 = !DILocation(line: 75, column: 27, scope: !237, inlinedAt: !2040)
!2044 = !DILocation(line: 75, column: 9, scope: !228, inlinedAt: !2040)
!2045 = !DILocation(line: 78, column: 9, scope: !245, inlinedAt: !2040)
!2046 = !DILocation(line: 76, column: 40, scope: !241, inlinedAt: !2040)
!2047 = !DILocation(line: 76, column: 16, scope: !241, inlinedAt: !2040)
!2048 = !DILocation(line: 76, column: 9, scope: !241, inlinedAt: !2040)
!2049 = !DILocation(line: 773, column: 13, scope: !2041)
!2050 = !DILocation(line: 774, column: 13, scope: !2041)
!2051 = !DILocation(line: 777, column: 1, scope: !1992)
!2052 = distinct !DISubprogram(name: "serveClientBlockedOnList", scope: !1, file: !1, line: 628, type: !2053, isLocal: false, isDefinition: true, scopeLine: 629, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2055)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!36, !553, !89, !89, !560, !89, !36}
!2055 = !{!2056, !2057, !2058, !2059, !2060, !2061, !2062, !2066, !2069}
!2056 = !DILocalVariable(name: "receiver", arg: 1, scope: !2052, file: !1, line: 628, type: !553)
!2057 = !DILocalVariable(name: "key", arg: 2, scope: !2052, file: !1, line: 628, type: !89)
!2058 = !DILocalVariable(name: "dstkey", arg: 3, scope: !2052, file: !1, line: 628, type: !89)
!2059 = !DILocalVariable(name: "db", arg: 4, scope: !2052, file: !1, line: 628, type: !560)
!2060 = !DILocalVariable(name: "value", arg: 5, scope: !2052, file: !1, line: 628, type: !89)
!2061 = !DILocalVariable(name: "where", arg: 6, scope: !2052, file: !1, line: 628, type: !36)
!2062 = !DILocalVariable(name: "argv", scope: !2052, file: !1, line: 630, type: !2063)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 192, elements: !2064)
!2064 = !{!2065}
!2065 = !DISubrange(count: 3)
!2066 = !DILocalVariable(name: "event", scope: !2067, file: !1, line: 647, type: !4)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !1, line: 632, column: 25)
!2068 = distinct !DILexicalBlock(scope: !2052, file: !1, line: 632, column: 9)
!2069 = !DILocalVariable(name: "dstobj", scope: !2070, file: !1, line: 651, type: !89)
!2070 = distinct !DILexicalBlock(scope: !2068, file: !1, line: 649, column: 12)
!2071 = !DILocation(line: 628, column: 38, scope: !2052)
!2072 = !DILocation(line: 628, column: 54, scope: !2052)
!2073 = !DILocation(line: 628, column: 65, scope: !2052)
!2074 = !DILocation(line: 628, column: 82, scope: !2052)
!2075 = !DILocation(line: 628, column: 92, scope: !2052)
!2076 = !DILocation(line: 628, column: 103, scope: !2052)
!2077 = !DILocation(line: 630, column: 5, scope: !2052)
!2078 = !DILocation(line: 630, column: 11, scope: !2052)
!2079 = !DILocation(line: 632, column: 16, scope: !2068)
!2080 = !DILocation(line: 632, column: 9, scope: !2052)
!2081 = !DILocation(line: 634, column: 26, scope: !2067)
!2082 = !DILocation(line: 634, column: 49, scope: !2067)
!2083 = !DILocation(line: 635, column: 50, scope: !2067)
!2084 = !DILocation(line: 634, column: 19, scope: !2067)
!2085 = !DILocation(line: 634, column: 9, scope: !2067)
!2086 = !DILocation(line: 634, column: 17, scope: !2067)
!2087 = !DILocation(line: 636, column: 9, scope: !2067)
!2088 = !DILocation(line: 636, column: 17, scope: !2067)
!2089 = !DILocation(line: 638, column: 20, scope: !2067)
!2090 = !DILocation(line: 638, column: 41, scope: !2067)
!2091 = !DILocation(line: 637, column: 19, scope: !2067)
!2092 = !DILocation(line: 639, column: 17, scope: !2067)
!2093 = !DILocation(line: 637, column: 9, scope: !2067)
!2094 = !DILocation(line: 642, column: 9, scope: !2067)
!2095 = !DILocation(line: 643, column: 9, scope: !2067)
!2096 = !DILocation(line: 644, column: 9, scope: !2067)
!2097 = !DILocation(line: 647, column: 23, scope: !2067)
!2098 = !DILocation(line: 647, column: 15, scope: !2067)
!2099 = !DILocation(line: 648, column: 61, scope: !2067)
!2100 = !DILocation(line: 648, column: 65, scope: !2067)
!2101 = !DILocation(line: 648, column: 9, scope: !2067)
!2102 = !DILocation(line: 649, column: 5, scope: !2067)
!2103 = !DILocation(line: 652, column: 38, scope: !2070)
!2104 = !DILocation(line: 652, column: 13, scope: !2070)
!2105 = !DILocation(line: 651, column: 15, scope: !2070)
!2106 = !DILocation(line: 653, column: 15, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2070, file: !1, line: 653, column: 13)
!2108 = !DILocation(line: 653, column: 22, scope: !2107)
!2109 = !DILocation(line: 654, column: 14, scope: !2107)
!2110 = !DILocation(line: 653, column: 13, scope: !2070)
!2111 = !DILocation(line: 657, column: 30, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2107, file: !1, line: 655, column: 9)
!2113 = !{!810, !127, i64 312}
!2114 = !DILocation(line: 657, column: 21, scope: !2112)
!2115 = !DILocation(line: 658, column: 13, scope: !2112)
!2116 = !DILocation(line: 658, column: 21, scope: !2112)
!2117 = !DILocation(line: 659, column: 30, scope: !2112)
!2118 = !{!535, !127, i64 928}
!2119 = !DILocation(line: 660, column: 21, scope: !2112)
!2120 = !DILocation(line: 660, column: 24, scope: !2112)
!2121 = !DILocation(line: 659, column: 13, scope: !2112)
!2122 = !DILocation(line: 663, column: 13, scope: !2112)
!2123 = !DILocation(line: 666, column: 30, scope: !2112)
!2124 = !{!810, !127, i64 328}
!2125 = !DILocation(line: 666, column: 21, scope: !2112)
!2126 = !DILocation(line: 667, column: 21, scope: !2112)
!2127 = !DILocation(line: 668, column: 13, scope: !2112)
!2128 = !DILocation(line: 668, column: 21, scope: !2112)
!2129 = !DILocation(line: 669, column: 30, scope: !2112)
!2130 = !{!535, !127, i64 912}
!2131 = !DILocation(line: 670, column: 21, scope: !2112)
!2132 = !DILocation(line: 669, column: 13, scope: !2112)
!2133 = !DILocation(line: 675, column: 66, scope: !2112)
!2134 = !DILocation(line: 675, column: 70, scope: !2112)
!2135 = !DILocation(line: 675, column: 13, scope: !2112)
!2136 = !DILocation(line: 0, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2107, file: !1, line: 676, column: 16)
!2138 = !DILocation(line: 683, column: 1, scope: !2052)
!2139 = distinct !DISubprogram(name: "blockingPopGenericCommand", scope: !1, file: !1, line: 686, type: !551, isLocal: false, isDefinition: true, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2140)
!2140 = !{!2141, !2142, !2143, !2144, !2145, !2146, !2156}
!2141 = !DILocalVariable(name: "c", arg: 1, scope: !2139, file: !1, line: 686, type: !553)
!2142 = !DILocalVariable(name: "where", arg: 2, scope: !2139, file: !1, line: 686, type: !36)
!2143 = !DILocalVariable(name: "o", scope: !2139, file: !1, line: 687, type: !89)
!2144 = !DILocalVariable(name: "timeout", scope: !2139, file: !1, line: 688, type: !756)
!2145 = !DILocalVariable(name: "j", scope: !2139, file: !1, line: 689, type: !36)
!2146 = !DILocalVariable(name: "event", scope: !2147, file: !1, line: 703, type: !4)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 701, column: 45)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !1, line: 701, column: 21)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !1, line: 700, column: 20)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !1, line: 697, column: 17)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !1, line: 696, column: 24)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !1, line: 696, column: 13)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !1, line: 694, column: 37)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !1, line: 694, column: 5)
!2155 = distinct !DILexicalBlock(scope: !2139, file: !1, line: 694, column: 5)
!2156 = !DILocalVariable(name: "value", scope: !2147, file: !1, line: 704, type: !89)
!2157 = !DILocation(line: 686, column: 40, scope: !2139)
!2158 = !DILocation(line: 686, column: 47, scope: !2139)
!2159 = !DILocation(line: 688, column: 5, scope: !2139)
!2160 = !DILocation(line: 691, column: 42, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2139, file: !1, line: 691, column: 9)
!2162 = !DILocation(line: 691, column: 50, scope: !2161)
!2163 = !DILocation(line: 691, column: 54, scope: !2161)
!2164 = !DILocation(line: 691, column: 39, scope: !2161)
!2165 = !DILocation(line: 688, column: 14, scope: !2139)
!2166 = !DILocation(line: 691, column: 9, scope: !2161)
!2167 = !DILocation(line: 692, column: 9, scope: !2161)
!2168 = !DILocation(line: 691, column: 9, scope: !2139)
!2169 = !DILocation(line: 689, column: 9, scope: !2139)
!2170 = !DILocation(line: 694, column: 24, scope: !2154)
!2171 = !DILocation(line: 694, column: 19, scope: !2154)
!2172 = !DILocation(line: 694, column: 5, scope: !2155)
!2173 = !DILocation(line: 695, column: 31, scope: !2153)
!2174 = !DILocation(line: 695, column: 37, scope: !2153)
!2175 = !DILocation(line: 695, column: 34, scope: !2153)
!2176 = !DILocation(line: 695, column: 13, scope: !2153)
!2177 = !DILocation(line: 687, column: 11, scope: !2139)
!2178 = !DILocation(line: 696, column: 15, scope: !2152)
!2179 = !DILocation(line: 696, column: 13, scope: !2153)
!2180 = !DILocation(line: 697, column: 20, scope: !2150)
!2181 = !DILocation(line: 697, column: 25, scope: !2150)
!2182 = !DILocation(line: 697, column: 17, scope: !2151)
!2183 = !DILocation(line: 698, column: 35, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2150, file: !1, line: 697, column: 38)
!2185 = !DILocation(line: 698, column: 17, scope: !2184)
!2186 = !DILocation(line: 699, column: 17, scope: !2184)
!2187 = !DILocation(line: 74, column: 42, scope: !228, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 701, column: 21, scope: !2148)
!2189 = !DILocation(line: 75, column: 18, scope: !237, inlinedAt: !2188)
!2190 = !DILocation(line: 75, column: 27, scope: !237, inlinedAt: !2188)
!2191 = !DILocation(line: 75, column: 9, scope: !228, inlinedAt: !2188)
!2192 = !DILocation(line: 78, column: 9, scope: !245, inlinedAt: !2188)
!2193 = !DILocation(line: 76, column: 40, scope: !241, inlinedAt: !2188)
!2194 = !DILocation(line: 76, column: 16, scope: !241, inlinedAt: !2188)
!2195 = !DILocation(line: 76, column: 9, scope: !241, inlinedAt: !2188)
!2196 = !DILocation(line: 701, column: 39, scope: !2148)
!2197 = !DILocation(line: 701, column: 21, scope: !2149)
!2198 = !DILocation(line: 703, column: 42, scope: !2147)
!2199 = !DILocation(line: 57, column: 25, scope: !184, inlinedAt: !2200)
!2200 = distinct !DILocation(line: 704, column: 35, scope: !2147)
!2201 = !DILocation(line: 57, column: 38, scope: !184, inlinedAt: !2200)
!2202 = !DILocation(line: 58, column: 5, scope: !184, inlinedAt: !2200)
!2203 = !DILocation(line: 59, column: 5, scope: !184, inlinedAt: !2200)
!2204 = !DILocation(line: 59, column: 11, scope: !184, inlinedAt: !2200)
!2205 = !DILocation(line: 62, column: 18, scope: !201, inlinedAt: !2200)
!2206 = !DILocation(line: 62, column: 27, scope: !201, inlinedAt: !2200)
!2207 = !DILocation(line: 62, column: 9, scope: !184, inlinedAt: !2200)
!2208 = !DILocation(line: 61, column: 26, scope: !184, inlinedAt: !2200)
!2209 = !DILocation(line: 61, column: 20, scope: !184, inlinedAt: !2200)
!2210 = !DILocation(line: 61, column: 9, scope: !184, inlinedAt: !2200)
!2211 = !DILocation(line: 63, column: 41, scope: !208, inlinedAt: !2200)
!2212 = !DILocation(line: 63, column: 56, scope: !208, inlinedAt: !2200)
!2213 = !DILocation(line: 58, column: 15, scope: !184, inlinedAt: !2200)
!2214 = !DILocation(line: 63, column: 13, scope: !208, inlinedAt: !2200)
!2215 = !DILocation(line: 65, column: 18, scope: !214, inlinedAt: !2200)
!2216 = !DILocation(line: 63, column: 13, scope: !209, inlinedAt: !2200)
!2217 = !DILocation(line: 66, column: 56, scope: !214, inlinedAt: !2200)
!2218 = !DILocation(line: 66, column: 25, scope: !214, inlinedAt: !2200)
!2219 = !DILocation(line: 66, column: 23, scope: !214, inlinedAt: !2200)
!2220 = !DILocation(line: 66, column: 17, scope: !214, inlinedAt: !2200)
!2221 = !DILocation(line: 69, column: 9, scope: !224, inlinedAt: !2200)
!2222 = !DILocation(line: 71, column: 12, scope: !184, inlinedAt: !2200)
!2223 = !DILocation(line: 72, column: 1, scope: !184, inlinedAt: !2200)
!2224 = !DILocation(line: 71, column: 5, scope: !184, inlinedAt: !2200)
!2225 = !DILocation(line: 704, column: 27, scope: !2147)
!2226 = !DILocation(line: 705, column: 21, scope: !2147)
!2227 = !DILocation(line: 703, column: 35, scope: !2147)
!2228 = !DILocation(line: 703, column: 27, scope: !2147)
!2229 = !DILocation(line: 707, column: 21, scope: !2147)
!2230 = !DILocation(line: 708, column: 39, scope: !2147)
!2231 = !DILocation(line: 708, column: 36, scope: !2147)
!2232 = !DILocation(line: 708, column: 21, scope: !2147)
!2233 = !DILocation(line: 709, column: 21, scope: !2147)
!2234 = !DILocation(line: 710, column: 21, scope: !2147)
!2235 = !DILocation(line: 712, column: 44, scope: !2147)
!2236 = !DILocation(line: 712, column: 41, scope: !2147)
!2237 = !DILocation(line: 712, column: 55, scope: !2147)
!2238 = !DILocation(line: 712, column: 59, scope: !2147)
!2239 = !DILocation(line: 711, column: 21, scope: !2147)
!2240 = !DILocation(line: 74, column: 42, scope: !228, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 713, column: 25, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2147, file: !1, line: 713, column: 25)
!2243 = !DILocation(line: 75, column: 18, scope: !237, inlinedAt: !2241)
!2244 = !DILocation(line: 75, column: 27, scope: !237, inlinedAt: !2241)
!2245 = !DILocation(line: 75, column: 9, scope: !228, inlinedAt: !2241)
!2246 = !DILocation(line: 78, column: 9, scope: !245, inlinedAt: !2241)
!2247 = !DILocation(line: 76, column: 40, scope: !241, inlinedAt: !2241)
!2248 = !DILocation(line: 76, column: 16, scope: !241, inlinedAt: !2241)
!2249 = !DILocation(line: 76, column: 9, scope: !241, inlinedAt: !2241)
!2250 = !DILocation(line: 713, column: 43, scope: !2242)
!2251 = !DILocation(line: 713, column: 25, scope: !2147)
!2252 = !DILocation(line: 714, column: 37, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2242, file: !1, line: 713, column: 49)
!2254 = !DILocation(line: 714, column: 43, scope: !2253)
!2255 = !DILocation(line: 714, column: 40, scope: !2253)
!2256 = !DILocation(line: 714, column: 25, scope: !2253)
!2257 = !DILocation(line: 716, column: 48, scope: !2253)
!2258 = !DILocation(line: 716, column: 45, scope: !2253)
!2259 = !DILocation(line: 716, column: 59, scope: !2253)
!2260 = !DILocation(line: 716, column: 63, scope: !2253)
!2261 = !DILocation(line: 715, column: 25, scope: !2253)
!2262 = !DILocation(line: 717, column: 21, scope: !2253)
!2263 = !DILocation(line: 718, column: 42, scope: !2147)
!2264 = !DILocation(line: 718, column: 48, scope: !2147)
!2265 = !DILocation(line: 718, column: 45, scope: !2147)
!2266 = !DILocation(line: 718, column: 21, scope: !2147)
!2267 = !DILocation(line: 719, column: 33, scope: !2147)
!2268 = !DILocation(line: 723, column: 55, scope: !2147)
!2269 = !DILocation(line: 723, column: 69, scope: !2147)
!2270 = !DILocation(line: 723, column: 25, scope: !2147)
!2271 = !DILocation(line: 724, column: 28, scope: !2147)
!2272 = !DILocation(line: 724, column: 25, scope: !2147)
!2273 = !DILocation(line: 722, column: 21, scope: !2147)
!2274 = !DILocation(line: 694, column: 33, scope: !2154)
!2275 = !DILocation(line: 694, column: 28, scope: !2154)
!2276 = distinct !{!2276, !2172, !2277}
!2277 = !DILocation(line: 729, column: 5, scope: !2155)
!2278 = !DILocation(line: 733, column: 12, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2139, file: !1, line: 733, column: 9)
!2280 = !DILocation(line: 733, column: 18, scope: !2279)
!2281 = !DILocation(line: 733, column: 9, scope: !2139)
!2282 = !DILocation(line: 734, column: 27, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2279, file: !1, line: 733, column: 34)
!2284 = !{!810, !127, i64 88}
!2285 = !DILocation(line: 734, column: 9, scope: !2283)
!2286 = !DILocation(line: 735, column: 9, scope: !2283)
!2287 = !DILocation(line: 739, column: 36, scope: !2139)
!2288 = !DILocation(line: 739, column: 41, scope: !2139)
!2289 = !DILocation(line: 739, column: 53, scope: !2139)
!2290 = !DILocation(line: 739, column: 57, scope: !2139)
!2291 = !DILocation(line: 739, column: 5, scope: !2139)
!2292 = !DILocation(line: 740, column: 1, scope: !2139)
!2293 = distinct !DISubprogram(name: "blpopCommand", scope: !1, file: !1, line: 742, type: !678, isLocal: false, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2294)
!2294 = !{!2295}
!2295 = !DILocalVariable(name: "c", arg: 1, scope: !2293, file: !1, line: 742, type: !553)
!2296 = !DILocation(line: 742, column: 27, scope: !2293)
!2297 = !DILocation(line: 743, column: 5, scope: !2293)
!2298 = !DILocation(line: 744, column: 1, scope: !2293)
!2299 = distinct !DISubprogram(name: "brpopCommand", scope: !1, file: !1, line: 746, type: !678, isLocal: false, isDefinition: true, scopeLine: 746, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2300)
!2300 = !{!2301}
!2301 = !DILocalVariable(name: "c", arg: 1, scope: !2299, file: !1, line: 746, type: !553)
!2302 = !DILocation(line: 746, column: 27, scope: !2299)
!2303 = !DILocation(line: 747, column: 5, scope: !2299)
!2304 = !DILocation(line: 748, column: 1, scope: !2299)
