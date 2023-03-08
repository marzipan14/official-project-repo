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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  br i1 %7, label %8, label %43, !dbg !116

; <label>:8:                                      ; preds = %3
  %9 = icmp ne i32 %2, 0, !dbg !117
  %10 = sext i1 %9 to i32, !dbg !118
  %11 = tail call %struct.redisObject* @getDecodedObject(%struct.redisObject* %1) #6, !dbg !120
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 2, !dbg !121
  %13 = load i8*, i8** %12, align 8, !dbg !121, !tbaa !122
  %14 = getelementptr inbounds i8, i8* %13, i64 -1, !dbg !140
  %15 = load i8, i8* %14, align 1, !dbg !140, !tbaa !141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  %40 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !168
  %41 = bitcast i8** %40 to %struct.quicklist**, !dbg !168
  %42 = load %struct.quicklist*, %struct.quicklist** %41, align 8, !dbg !168, !tbaa !122
  tail call void @quicklistPush(%struct.quicklist* %42, i8* %13, i64 %39, i32 %10) #6, !dbg !169
  tail call void @decrRefCount(%struct.redisObject* %11) #6, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !171
  ret void, !dbg !171

; <label>:43:                                     ; preds = %3
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !172
  tail call void @_exit(i32 1) #7, !dbg !172
  unreachable
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
define dso_local i8* @listPopSaver(i8*, i32) #0 !dbg !174 {
  %3 = zext i32 %1 to i64, !dbg !182
  %4 = tail call %struct.redisObject* @createStringObject(i8* %0, i64 %3) #6, !dbg !183
  %5 = bitcast %struct.redisObject* %4 to i8*, !dbg !183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  ret i8* %5, !dbg !184
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @listTypePop(%struct.redisObject* nocapture readonly, i32) local_unnamed_addr #0 !dbg !185 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.redisObject*, align 8
  %5 = bitcast i64* %3 to i8*, !dbg !197
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !197
  %6 = bitcast %struct.redisObject** %4 to i8*, !dbg !198
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8, !dbg !198
  store %struct.redisObject* null, %struct.redisObject** %4, align 8, !dbg !199, !tbaa !200
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !201
  %8 = load i32, i32* %7, align 8, !dbg !201
  %9 = and i32 %8, 240, !dbg !201
  %10 = icmp eq i32 %9, 144, !dbg !203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !204
  br i1 %10, label %11, label %26, !dbg !204

; <label>:11:                                     ; preds = %2
  %12 = icmp ne i32 %1, 0, !dbg !205
  %13 = sext i1 %12 to i32, !dbg !206
  %14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !208
  %15 = bitcast i8** %14 to %struct.quicklist**, !dbg !208
  %16 = load %struct.quicklist*, %struct.quicklist** %15, align 8, !dbg !208, !tbaa !122
  %17 = bitcast %struct.redisObject** %4 to i8**, !dbg !211
  %18 = call i32 @quicklistPopCustom(%struct.quicklist* %16, i32 %13, i8** nonnull %17, i32* null, i64* nonnull %3, i8* (i8*, i32)* nonnull @listPopSaver) #6, !dbg !213
  %19 = icmp eq i32 %18, 0, !dbg !213
  %20 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !214
  %21 = icmp ne %struct.redisObject* %20, null, !dbg !214
  %22 = or i1 %19, %21, !dbg !217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !217
  br i1 %22, label %27, label %23, !dbg !217

; <label>:23:                                     ; preds = %11
  %24 = load i64, i64* %3, align 8, !dbg !218, !tbaa !219
  %25 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %24) #6, !dbg !221
  store %struct.redisObject* %25, %struct.redisObject** %4, align 8, !dbg !222, !tbaa !200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !223
  br label %27, !dbg !223

; <label>:26:                                     ; preds = %2
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !224
  tail call void @_exit(i32 1) #7, !dbg !224
  unreachable

; <label>:27:                                     ; preds = %11, %23
  %28 = phi %struct.redisObject* [ %20, %11 ], [ %25, %23 ], !dbg !226
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8, !dbg !227
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !228
  ret %struct.redisObject* %28, !dbg !228
}

; Function Attrs: noredzone
declare dso_local i32 @quicklistPopCustom(%struct.quicklist*, i32, i8**, i32*, i64*, i8* (i8*, i32)*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObjectFromLongLong(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @listTypeLength(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !229 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !237
  %3 = load i32, i32* %2, align 8, !dbg !237
  %4 = and i32 %3, 240, !dbg !237
  %5 = icmp eq i32 %4, 144, !dbg !239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !240
  br i1 %5, label %6, label %11, !dbg !240

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !241
  %8 = bitcast i8** %7 to %struct.quicklist**, !dbg !241
  %9 = load %struct.quicklist*, %struct.quicklist** %8, align 8, !dbg !241, !tbaa !122
  %10 = tail call i64 @quicklistCount(%struct.quicklist* %9) #6, !dbg !243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !244
  ret i64 %10, !dbg !244

; <label>:11:                                     ; preds = %1
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !245
  tail call void @_exit(i32 1) #7, !dbg !245
  unreachable
}

; Function Attrs: noredzone
declare dso_local i64 @quicklistCount(%struct.quicklist*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.listTypeIterator* @listTypeInitIterator(%struct.redisObject*, i64, i8 zeroext) local_unnamed_addr #0 !dbg !247 {
  %4 = tail call i8* @zmalloc(i64 24) #6, !dbg !279
  %5 = bitcast i8* %4 to %struct.redisObject**, !dbg !280
  store %struct.redisObject* %0, %struct.redisObject** %5, align 8, !dbg !281, !tbaa !282
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !284
  %7 = load i32, i32* %6, align 8, !dbg !284
  %8 = lshr i32 %7, 4, !dbg !284
  %9 = trunc i32 %8 to i8, !dbg !285
  %10 = and i8 %9, 15, !dbg !285
  %11 = getelementptr inbounds i8, i8* %4, i64 8, !dbg !286
  store i8 %10, i8* %11, align 8, !dbg !287, !tbaa !288
  %12 = getelementptr inbounds i8, i8* %4, i64 9, !dbg !289
  store i8 %2, i8* %12, align 1, !dbg !290, !tbaa !291
  %13 = getelementptr inbounds i8, i8* %4, i64 16, !dbg !292
  %14 = bitcast i8* %13 to %struct.quicklistIter**, !dbg !292
  store %struct.quicklistIter* null, %struct.quicklistIter** %14, align 8, !dbg !293, !tbaa !294
  %15 = icmp eq i8 %10, 9, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !297
  br i1 %15, label %16, label %24, !dbg !297

; <label>:16:                                     ; preds = %3
  %17 = icmp eq i8 %2, 0, !dbg !298
  %18 = zext i1 %17 to i32, !dbg !299
  %19 = bitcast i8* %4 to %struct.listTypeIterator*, !dbg !279
  %20 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !302
  %21 = bitcast i8** %20 to %struct.quicklist**, !dbg !302
  %22 = load %struct.quicklist*, %struct.quicklist** %21, align 8, !dbg !302, !tbaa !122
  %23 = tail call %struct.quicklistIter* @quicklistGetIteratorAtIdx(%struct.quicklist* %22, i32 %18, i64 %1) #6, !dbg !304
  store %struct.quicklistIter* %23, %struct.quicklistIter** %14, align 8, !dbg !305, !tbaa !294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !306
  ret %struct.listTypeIterator* %19, !dbg !306

; <label>:24:                                     ; preds = %3
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !307
  tail call void @_exit(i32 1) #7, !dbg !307
  unreachable
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.quicklistIter* @quicklistGetIteratorAtIdx(%struct.quicklist*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @listTypeReleaseIterator(%struct.listTypeIterator*) local_unnamed_addr #0 !dbg !309 {
  %2 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %0, i64 0, i32 3, !dbg !315
  %3 = bitcast %struct.quicklistIter** %2 to i8**, !dbg !315
  %4 = load i8*, i8** %3, align 8, !dbg !315, !tbaa !294
  tail call void @zfree(i8* %4) #6, !dbg !316
  %5 = bitcast %struct.listTypeIterator* %0 to i8*, !dbg !317
  tail call void @zfree(i8* %5) #6, !dbg !318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  ret void, !dbg !319
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @listTypeNext(%struct.listTypeIterator*, %struct.listTypeEntry*) local_unnamed_addr #0 !dbg !320 {
  %3 = bitcast %struct.listTypeIterator* %0 to i32**, !dbg !344
  %4 = load i32*, i32** %3, align 8, !dbg !344, !tbaa !282
  %5 = load i32, i32* %4, align 8, !dbg !344
  %6 = lshr i32 %5, 4, !dbg !344
  %7 = and i32 %6, 15, !dbg !344
  %8 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %0, i64 0, i32 1, !dbg !344
  %9 = load i8, i8* %8, align 8, !dbg !344, !tbaa !288
  %10 = zext i8 %9 to i32, !dbg !344
  %11 = icmp eq i32 %7, %10, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  br i1 %11, label %13, label %12, !dbg !344

; <label>:12:                                     ; preds = %2
  tail call void @_serverAssert(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 114) #6, !dbg !344
  tail call void @_exit(i32 1) #7, !dbg !344
  unreachable

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %1, i64 0, i32 0, !dbg !345
  store %struct.listTypeIterator* %0, %struct.listTypeIterator** %14, align 8, !dbg !346, !tbaa !347
  %15 = icmp eq i8 %9, 9, !dbg !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !352
  br i1 %15, label %16, label %21, !dbg !352

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %0, i64 0, i32 3, !dbg !353
  %18 = load %struct.quicklistIter*, %struct.quicklistIter** %17, align 8, !dbg !353, !tbaa !294
  %19 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %1, i64 0, i32 1, !dbg !355
  %20 = tail call i32 @quicklistNext(%struct.quicklistIter* %18, %struct.quicklistEntry* nonnull %19) #6, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  ret i32 %20, !dbg !357

; <label>:21:                                     ; preds = %13
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !358
  tail call void @_exit(i32 1) #7, !dbg !358
  unreachable
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @quicklistNext(%struct.quicklistIter*, %struct.quicklistEntry*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @listTypeGet(%struct.listTypeEntry* nocapture readonly) local_unnamed_addr #0 !dbg !360 {
  %2 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 0, !dbg !368
  %3 = load %struct.listTypeIterator*, %struct.listTypeIterator** %2, align 8, !dbg !368, !tbaa !347
  %4 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %3, i64 0, i32 1, !dbg !370
  %5 = load i8, i8* %4, align 8, !dbg !370, !tbaa !288
  %6 = icmp eq i8 %5, 9, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  br i1 %6, label %7, label %20, !dbg !372

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 1, i32 3, !dbg !373
  %9 = load i8*, i8** %8, align 8, !dbg !373, !tbaa !376
  %10 = icmp eq i8* %9, null, !dbg !377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !378
  br i1 %10, label %16, label %11, !dbg !378

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 1, i32 5, !dbg !379
  %13 = load i32, i32* %12, align 8, !dbg !379, !tbaa !381
  %14 = zext i32 %13 to i64, !dbg !382
  %15 = tail call %struct.redisObject* @createStringObject(i8* nonnull %9, i64 %14) #6, !dbg !383
  br label %21, !dbg !384

; <label>:16:                                     ; preds = %7
  %17 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 1, i32 4, !dbg !385
  %18 = load i64, i64* %17, align 8, !dbg !385, !tbaa !387
  %19 = tail call %struct.redisObject* @createStringObjectFromLongLong(i64 %18) #6, !dbg !388
  br label %21

; <label>:20:                                     ; preds = %1
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 136, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !389
  tail call void @_exit(i32 1) #7, !dbg !389
  unreachable

; <label>:21:                                     ; preds = %11, %16
  %22 = phi %struct.redisObject* [ %15, %11 ], [ %19, %16 ], !dbg !391
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  ret %struct.redisObject* %22, !dbg !392
}

; Function Attrs: noredzone nounwind
define dso_local void @listTypeInsert(%struct.listTypeEntry*, %struct.redisObject*, i32) local_unnamed_addr #0 !dbg !393 {
  %4 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 0, !dbg !407
  %5 = load %struct.listTypeIterator*, %struct.listTypeIterator** %4, align 8, !dbg !407, !tbaa !347
  %6 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %5, i64 0, i32 1, !dbg !408
  %7 = load i8, i8* %6, align 8, !dbg !408, !tbaa !288
  %8 = icmp eq i8 %7, 9, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  br i1 %8, label %9, label %52, !dbg !410

; <label>:9:                                      ; preds = %3
  %10 = tail call %struct.redisObject* @getDecodedObject(%struct.redisObject* %1) #6, !dbg !411
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i64 0, i32 2, !dbg !412
  %12 = load i8*, i8** %11, align 8, !dbg !412, !tbaa !122
  %13 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !416
  %14 = load i8, i8* %13, align 1, !dbg !416, !tbaa !141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  %15 = trunc i8 %14 to i3, !dbg !418
  switch i3 %15, label %37 [
    i3 0, label %16
    i3 1, label %19
    i3 2, label %23
    i3 3, label %28
    i3 -4, label %33
  ], !dbg !418

; <label>:16:                                     ; preds = %9
  %17 = lshr i8 %14, 3, !dbg !419
  %18 = zext i8 %17 to i64, !dbg !419
  br label %37, !dbg !420

; <label>:19:                                     ; preds = %9
  %20 = getelementptr inbounds i8, i8* %12, i64 -3, !dbg !421
  %21 = load i8, i8* %20, align 1, !dbg !422, !tbaa !141
  %22 = zext i8 %21 to i64, !dbg !421
  br label %37, !dbg !423

; <label>:23:                                     ; preds = %9
  %24 = getelementptr inbounds i8, i8* %12, i64 -5, !dbg !424
  %25 = bitcast i8* %24 to i16*, !dbg !425
  %26 = load i16, i16* %25, align 1, !dbg !425, !tbaa !152
  %27 = zext i16 %26 to i64, !dbg !424
  br label %37, !dbg !426

; <label>:28:                                     ; preds = %9
  %29 = getelementptr inbounds i8, i8* %12, i64 -9, !dbg !427
  %30 = bitcast i8* %29 to i32*, !dbg !428
  %31 = load i32, i32* %30, align 1, !dbg !428, !tbaa !157
  %32 = zext i32 %31 to i64, !dbg !427
  br label %37, !dbg !429

; <label>:33:                                     ; preds = %9
  %34 = getelementptr inbounds i8, i8* %12, i64 -17, !dbg !430
  %35 = bitcast i8* %34 to i64*, !dbg !431
  %36 = load i64, i64* %35, align 1, !dbg !431, !tbaa !161
  br label %37, !dbg !432

; <label>:37:                                     ; preds = %9, %16, %19, %23, %28, %33
  %38 = phi i64 [ %36, %33 ], [ %32, %28 ], [ %27, %23 ], [ %22, %19 ], [ %18, %16 ], [ 0, %9 ], !dbg !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  %39 = icmp eq i32 %2, 1, !dbg !437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  br i1 %39, label %40, label %44, !dbg !439

; <label>:40:                                     ; preds = %37
  %41 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 1, !dbg !440
  %42 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %41, i64 0, i32 0, !dbg !442
  %43 = load %struct.quicklist*, %struct.quicklist** %42, align 8, !dbg !442, !tbaa !443
  tail call void @quicklistInsertAfter(%struct.quicklist* %43, %struct.quicklistEntry* nonnull %41, i8* %12, i64 %38) #6, !dbg !444
  br label %50, !dbg !445

; <label>:44:                                     ; preds = %37
  %45 = icmp eq i32 %2, 0, !dbg !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !448
  br i1 %45, label %46, label %51, !dbg !448

; <label>:46:                                     ; preds = %44
  %47 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 1, !dbg !449
  %48 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %47, i64 0, i32 0, !dbg !451
  %49 = load %struct.quicklist*, %struct.quicklist** %48, align 8, !dbg !451, !tbaa !443
  tail call void @quicklistInsertBefore(%struct.quicklist* %49, %struct.quicklistEntry* nonnull %47, i8* %12, i64 %38) #6, !dbg !452
  br label %50, !dbg !453

; <label>:50:                                     ; preds = %40, %46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !454
  br label %51, !dbg !455

; <label>:51:                                     ; preds = %50, %44
  tail call void @decrRefCount(%struct.redisObject* %10) #6, !dbg !455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !456
  ret void, !dbg !456

; <label>:52:                                     ; preds = %3
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 155, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !457
  tail call void @_exit(i32 1) #7, !dbg !457
  unreachable
}

; Function Attrs: noredzone
declare dso_local void @quicklistInsertAfter(%struct.quicklist*, %struct.quicklistEntry*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @quicklistInsertBefore(%struct.quicklist*, %struct.quicklistEntry*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @listTypeEqual(%struct.listTypeEntry* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !459 {
  %3 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 0, !dbg !467
  %4 = load %struct.listTypeIterator*, %struct.listTypeIterator** %3, align 8, !dbg !467, !tbaa !347
  %5 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %4, i64 0, i32 1, !dbg !469
  %6 = load i8, i8* %5, align 8, !dbg !469, !tbaa !288
  %7 = icmp eq i8 %6, 9, !dbg !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !471
  br i1 %7, label %8, label %50, !dbg !471

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !472
  %10 = load i32, i32* %9, align 8, !dbg !472
  %11 = lshr i32 %10, 4, !dbg !472
  %12 = and i32 %11, 15, !dbg !472
  %13 = icmp eq i32 %12, 0, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  br i1 %13, label %17, label %14, !dbg !472

; <label>:14:                                     ; preds = %8
  %15 = icmp eq i32 %12, 8, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  br i1 %15, label %17, label %16, !dbg !472

; <label>:16:                                     ; preds = %14
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 162) #6, !dbg !472
  tail call void @_exit(i32 1) #7, !dbg !472
  unreachable

; <label>:17:                                     ; preds = %8, %14
  %18 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %0, i64 0, i32 1, i32 2, !dbg !474
  %19 = load i8*, i8** %18, align 8, !dbg !474, !tbaa !475
  %20 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !476
  %21 = load i8*, i8** %20, align 8, !dbg !476, !tbaa !122
  %22 = getelementptr inbounds i8, i8* %21, i64 -1, !dbg !479
  %23 = load i8, i8* %22, align 1, !dbg !479, !tbaa !141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  %24 = trunc i8 %23 to i3, !dbg !481
  switch i3 %24, label %46 [
    i3 0, label %25
    i3 1, label %28
    i3 2, label %32
    i3 3, label %37
    i3 -4, label %42
  ], !dbg !481

; <label>:25:                                     ; preds = %17
  %26 = lshr i8 %23, 3, !dbg !482
  %27 = zext i8 %26 to i64, !dbg !482
  br label %46, !dbg !483

; <label>:28:                                     ; preds = %17
  %29 = getelementptr inbounds i8, i8* %21, i64 -3, !dbg !484
  %30 = load i8, i8* %29, align 1, !dbg !485, !tbaa !141
  %31 = zext i8 %30 to i64, !dbg !484
  br label %46, !dbg !486

; <label>:32:                                     ; preds = %17
  %33 = getelementptr inbounds i8, i8* %21, i64 -5, !dbg !487
  %34 = bitcast i8* %33 to i16*, !dbg !488
  %35 = load i16, i16* %34, align 1, !dbg !488, !tbaa !152
  %36 = zext i16 %35 to i64, !dbg !487
  br label %46, !dbg !489

; <label>:37:                                     ; preds = %17
  %38 = getelementptr inbounds i8, i8* %21, i64 -9, !dbg !490
  %39 = bitcast i8* %38 to i32*, !dbg !491
  %40 = load i32, i32* %39, align 1, !dbg !491, !tbaa !157
  %41 = zext i32 %40 to i64, !dbg !490
  br label %46, !dbg !492

; <label>:42:                                     ; preds = %17
  %43 = getelementptr inbounds i8, i8* %21, i64 -17, !dbg !493
  %44 = bitcast i8* %43 to i64*, !dbg !494
  %45 = load i64, i64* %44, align 1, !dbg !494, !tbaa !161
  br label %46, !dbg !495

; <label>:46:                                     ; preds = %17, %25, %28, %32, %37, %42
  %47 = phi i64 [ %45, %42 ], [ %41, %37 ], [ %36, %32 ], [ %31, %28 ], [ %27, %25 ], [ 0, %17 ], !dbg !496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  %48 = trunc i64 %47 to i32, !dbg !499
  %49 = tail call i32 @quicklistCompare(i8* %19, i8* %21, i32 %48) #6, !dbg !500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !501
  ret i32 %49, !dbg !501

; <label>:50:                                     ; preds = %2
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 165, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !502
  tail call void @_exit(i32 1) #7, !dbg !502
  unreachable
}

; Function Attrs: noredzone
declare dso_local void @_serverAssertWithInfo(%struct.client*, %struct.redisObject*, i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @quicklistCompare(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @listTypeDelete(%struct.listTypeIterator* nocapture readonly, %struct.listTypeEntry*) local_unnamed_addr #0 !dbg !504 {
  %3 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %1, i64 0, i32 0, !dbg !512
  %4 = load %struct.listTypeIterator*, %struct.listTypeIterator** %3, align 8, !dbg !512, !tbaa !347
  %5 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %4, i64 0, i32 1, !dbg !514
  %6 = load i8, i8* %5, align 8, !dbg !514, !tbaa !288
  %7 = icmp eq i8 %6, 9, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  br i1 %7, label %8, label %12, !dbg !516

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %0, i64 0, i32 3, !dbg !517
  %10 = load %struct.quicklistIter*, %struct.quicklistIter** %9, align 8, !dbg !517, !tbaa !294
  %11 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %1, i64 0, i32 1, !dbg !519
  tail call void @quicklistDelEntry(%struct.quicklistIter* %10, %struct.quicklistEntry* nonnull %11) #6, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !521
  ret void, !dbg !521

; <label>:12:                                     ; preds = %2
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 174, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !522
  tail call void @_exit(i32 1) #7, !dbg !522
  unreachable
}

; Function Attrs: noredzone
declare dso_local void @quicklistDelEntry(%struct.quicklistIter*, %struct.quicklistEntry*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @listTypeConvert(%struct.redisObject*, i32) local_unnamed_addr #0 !dbg !524 {
  %3 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !536
  %4 = load i32, i32* %3, align 8, !dbg !536
  %5 = and i32 %4, 15, !dbg !536
  %6 = icmp eq i32 %5, 1, !dbg !536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  br i1 %6, label %8, label %7, !dbg !536

; <label>:7:                                      ; preds = %2
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 180) #6, !dbg !536
  tail call void @_exit(i32 1) #7, !dbg !536
  unreachable

; <label>:8:                                      ; preds = %2
  %9 = and i32 %4, 240, !dbg !537
  %10 = icmp eq i32 %9, 80, !dbg !537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !537
  br i1 %10, label %12, label %11, !dbg !537

; <label>:11:                                     ; preds = %8
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 181) #6, !dbg !537
  tail call void @_exit(i32 1) #7, !dbg !537
  unreachable

; <label>:12:                                     ; preds = %8
  %13 = icmp eq i32 %1, 9, !dbg !538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  br i1 %13, label %14, label %24, !dbg !539

; <label>:14:                                     ; preds = %12
  %15 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 249), align 8, !dbg !540, !tbaa !541
  %16 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 250), align 4, !dbg !547, !tbaa !548
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !550
  %18 = load i8*, i8** %17, align 8, !dbg !550, !tbaa !122
  %19 = tail call %struct.quicklist* @quicklistCreateFromZiplist(i32 %15, i32 %16, i8* %18) #6, !dbg !551
  %20 = bitcast i8** %17 to %struct.quicklist**, !dbg !552
  store %struct.quicklist* %19, %struct.quicklist** %20, align 8, !dbg !552, !tbaa !122
  %21 = load i32, i32* %3, align 8, !dbg !553
  %22 = and i32 %21, -241, !dbg !553
  %23 = or i32 %22, 144, !dbg !553
  store i32 %23, i32* %3, align 8, !dbg !553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  ret void, !dbg !554

; <label>:24:                                     ; preds = %12
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 189, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !555
  tail call void @_exit(i32 1) #7, !dbg !555
  unreachable
}

; Function Attrs: noredzone
declare dso_local %struct.quicklist* @quicklistCreateFromZiplist(i32, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @pushGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !557 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !798
  %4 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !798, !tbaa !799
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !803
  %6 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !803, !tbaa !804
  %7 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 1, !dbg !805
  %8 = load %struct.redisObject*, %struct.redisObject** %7, align 8, !dbg !805, !tbaa !200
  %9 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %4, %struct.redisObject* %8) #6, !dbg !806
  %10 = icmp eq %struct.redisObject* %9, null, !dbg !808
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  br i1 %10, label %18, label %11, !dbg !810

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %9, i64 0, i32 0, !dbg !811
  %13 = load i32, i32* %12, align 8, !dbg !811
  %14 = and i32 %13, 15, !dbg !811
  %15 = icmp eq i32 %14, 1, !dbg !812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !813
  br i1 %15, label %18, label %16, !dbg !813

; <label>:16:                                     ; preds = %11
  %17 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !814, !tbaa !816
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %17) #6, !dbg !818
  br label %84, !dbg !819

; <label>:18:                                     ; preds = %11, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !821
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !823
  %20 = load i32, i32* %19, align 8, !dbg !823, !tbaa !825
  %21 = icmp sgt i32 %20, 2, !dbg !826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !827
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !828
  br i1 %21, label %22, label %49, !dbg !827

; <label>:22:                                     ; preds = %18, %38
  %23 = phi i64 [ %44, %38 ], [ 2, %18 ]
  %24 = phi i1 [ %48, %38 ], [ %10, %18 ]
  %25 = phi %struct.redisObject* [ %39, %38 ], [ %9, %18 ]
  %26 = phi i32 [ %43, %38 ], [ 0, %18 ]
  br i1 %24, label %27, label %38, !dbg !829

; <label>:27:                                     ; preds = %22
  %28 = tail call %struct.redisObject* @createQuicklistObject() #6, !dbg !831
  %29 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %28, i64 0, i32 2, !dbg !834
  %30 = bitcast i8** %29 to %struct.quicklist**, !dbg !834
  %31 = load %struct.quicklist*, %struct.quicklist** %30, align 8, !dbg !834, !tbaa !122
  %32 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 249), align 8, !dbg !835, !tbaa !541
  %33 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 250), align 4, !dbg !836, !tbaa !548
  tail call void @quicklistSetOptions(%struct.quicklist* %31, i32 %32, i32 %33) #6, !dbg !837
  %34 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !838, !tbaa !799
  %35 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !839, !tbaa !804
  %36 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %35, i64 1, !dbg !840
  %37 = load %struct.redisObject*, %struct.redisObject** %36, align 8, !dbg !840, !tbaa !200
  tail call void @dbAdd(%struct.redisDb* %34, %struct.redisObject* %37, %struct.redisObject* %28) #6, !dbg !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  br label %38, !dbg !842

; <label>:38:                                     ; preds = %22, %27
  %39 = phi %struct.redisObject* [ %25, %22 ], [ %28, %27 ], !dbg !843
  %40 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !844, !tbaa !804
  %41 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %40, i64 %23, !dbg !845
  %42 = load %struct.redisObject*, %struct.redisObject** %41, align 8, !dbg !845, !tbaa !200
  tail call void @listTypePush(%struct.redisObject* %39, %struct.redisObject* %42, i32 %1) #9, !dbg !846
  %43 = add nuw nsw i32 %26, 1, !dbg !847
  %44 = add nuw nsw i64 %23, 1, !dbg !848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !849
  %45 = load i32, i32* %19, align 8, !dbg !823, !tbaa !825
  %46 = sext i32 %45 to i64, !dbg !826
  %47 = icmp slt i64 %44, %46, !dbg !826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !827
  %48 = icmp eq %struct.redisObject* %39, null, !dbg !828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !828
  br i1 %47, label %22, label %49, !dbg !827, !llvm.loop !850

; <label>:49:                                     ; preds = %38, %18
  %50 = phi i32 [ 0, %18 ], [ %43, %38 ], !dbg !852
  %51 = phi %struct.redisObject* [ %9, %18 ], [ %39, %38 ], !dbg !807
  %52 = phi i1 [ %10, %18 ], [ %48, %38 ], !dbg !828
  br i1 %52, label %64, label %53, !dbg !853

; <label>:53:                                     ; preds = %49
  %54 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %51, i64 0, i32 0, !dbg !856
  %55 = load i32, i32* %54, align 8, !dbg !856
  %56 = and i32 %55, 240, !dbg !856
  %57 = icmp eq i32 %56, 144, !dbg !857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !858
  br i1 %57, label %59, label %58, !dbg !858

; <label>:58:                                     ; preds = %53
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !859
  tail call void @_exit(i32 1) #7, !dbg !859
  unreachable

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %51, i64 0, i32 2, !dbg !860
  %61 = bitcast i8** %60 to %struct.quicklist**, !dbg !860
  %62 = load %struct.quicklist*, %struct.quicklist** %61, align 8, !dbg !860, !tbaa !122
  %63 = tail call i64 @quicklistCount(%struct.quicklist* %62) #6, !dbg !861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !853
  br label %64, !dbg !853

; <label>:64:                                     ; preds = %49, %59
  %65 = phi i64 [ %63, %59 ], [ 0, %49 ], !dbg !853
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %65) #6, !dbg !863
  %66 = icmp eq i32 %50, 0, !dbg !864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !865
  br i1 %66, label %80, label %67, !dbg !865

; <label>:67:                                     ; preds = %64
  %68 = icmp eq i32 %1, 0, !dbg !866
  %69 = select i1 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), !dbg !867
  %70 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !869, !tbaa !799
  %71 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !870, !tbaa !804
  %72 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %71, i64 1, !dbg !871
  %73 = load %struct.redisObject*, %struct.redisObject** %72, align 8, !dbg !871, !tbaa !200
  tail call void @signalModifiedKey(%struct.redisDb* %70, %struct.redisObject* %73) #6, !dbg !872
  %74 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !873, !tbaa !804
  %75 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %74, i64 1, !dbg !874
  %76 = load %struct.redisObject*, %struct.redisObject** %75, align 8, !dbg !874, !tbaa !200
  %77 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !875, !tbaa !799
  %78 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %77, i64 0, i32 5, !dbg !876
  %79 = load i32, i32* %78, align 8, !dbg !876, !tbaa !877
  tail call void @notifyKeyspaceEvent(i32 16, i8* %69, %struct.redisObject* %76, i32 %79) #6, !dbg !879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !880
  br label %80, !dbg !880

; <label>:80:                                     ; preds = %64, %67
  %81 = zext i32 %50 to i64, !dbg !881
  %82 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !882, !tbaa !883
  %83 = add nsw i64 %82, %81, !dbg !882
  store i64 %83, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !882, !tbaa !883
  br label %84, !dbg !884

; <label>:84:                                     ; preds = %80, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !885
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !884
  ret void, !dbg !884
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
define dso_local void @lpushCommand(%struct.client*) local_unnamed_addr #0 !dbg !886 {
  tail call void @pushGenericCommand(%struct.client* %0, i32 0) #9, !dbg !890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  ret void, !dbg !891
}

; Function Attrs: noredzone nounwind
define dso_local void @rpushCommand(%struct.client*) local_unnamed_addr #0 !dbg !892 {
  tail call void @pushGenericCommand(%struct.client* %0, i32 1) #9, !dbg !896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !897
  ret void, !dbg !897
}

; Function Attrs: noredzone nounwind
define dso_local void @pushxGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !898 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !911
  %4 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !911, !tbaa !804
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 1, !dbg !913
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !913, !tbaa !200
  %7 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !914, !tbaa !915
  %8 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* %0, %struct.redisObject* %6, %struct.redisObject* %7) #6, !dbg !916
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !918
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !919
  br i1 %9, label %59, label %10, !dbg !919

; <label>:10:                                     ; preds = %2
  %11 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %8, i32 1) #6, !dbg !920
  %12 = icmp eq i32 %11, 0, !dbg !920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !921
  br i1 %12, label %13, label %59, !dbg !921

; <label>:13:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  %14 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !925
  %15 = load i32, i32* %14, align 8, !dbg !925, !tbaa !825
  %16 = icmp sgt i32 %15, 2, !dbg !927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !928
  br i1 %16, label %17, label %28, !dbg !928

; <label>:17:                                     ; preds = %13, %17
  %18 = phi i64 [ %24, %17 ], [ 2, %13 ]
  %19 = phi i32 [ %23, %17 ], [ 0, %13 ]
  %20 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !929, !tbaa !804
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 %18, !dbg !931
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !931, !tbaa !200
  tail call void @listTypePush(%struct.redisObject* nonnull %8, %struct.redisObject* %22, i32 %1) #9, !dbg !932
  %23 = add nuw nsw i32 %19, 1, !dbg !933
  %24 = add nuw nsw i64 %18, 1, !dbg !934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  %25 = load i32, i32* %14, align 8, !dbg !925, !tbaa !825
  %26 = sext i32 %25 to i64, !dbg !927
  %27 = icmp slt i64 %24, %26, !dbg !927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !928
  br i1 %27, label %17, label %28, !dbg !928, !llvm.loop !936

; <label>:28:                                     ; preds = %17, %13
  %29 = phi i32 [ 0, %13 ], [ %23, %17 ], !dbg !938
  %30 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 0, !dbg !941
  %31 = load i32, i32* %30, align 8, !dbg !941
  %32 = and i32 %31, 240, !dbg !941
  %33 = icmp eq i32 %32, 144, !dbg !942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !943
  br i1 %33, label %35, label %34, !dbg !943

; <label>:34:                                     ; preds = %28
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !944
  tail call void @_exit(i32 1) #7, !dbg !944
  unreachable

; <label>:35:                                     ; preds = %28
  %36 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !945
  %37 = bitcast i8** %36 to %struct.quicklist**, !dbg !945
  %38 = load %struct.quicklist*, %struct.quicklist** %37, align 8, !dbg !945, !tbaa !122
  %39 = tail call i64 @quicklistCount(%struct.quicklist* %38) #6, !dbg !946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !947
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %39) #6, !dbg !948
  %40 = icmp eq i32 %29, 0, !dbg !949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !950
  br i1 %40, label %55, label %41, !dbg !950

; <label>:41:                                     ; preds = %35
  %42 = icmp eq i32 %1, 0, !dbg !951
  %43 = select i1 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), !dbg !952
  %44 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !954
  %45 = load %struct.redisDb*, %struct.redisDb** %44, align 8, !dbg !954, !tbaa !799
  %46 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !955, !tbaa !804
  %47 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %46, i64 1, !dbg !956
  %48 = load %struct.redisObject*, %struct.redisObject** %47, align 8, !dbg !956, !tbaa !200
  tail call void @signalModifiedKey(%struct.redisDb* %45, %struct.redisObject* %48) #6, !dbg !957
  %49 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !958, !tbaa !804
  %50 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %49, i64 1, !dbg !959
  %51 = load %struct.redisObject*, %struct.redisObject** %50, align 8, !dbg !959, !tbaa !200
  %52 = load %struct.redisDb*, %struct.redisDb** %44, align 8, !dbg !960, !tbaa !799
  %53 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %52, i64 0, i32 5, !dbg !961
  %54 = load i32, i32* %53, align 8, !dbg !961, !tbaa !877
  tail call void @notifyKeyspaceEvent(i32 16, i8* %43, %struct.redisObject* %51, i32 %54) #6, !dbg !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !963
  br label %55, !dbg !963

; <label>:55:                                     ; preds = %35, %41
  %56 = zext i32 %29 to i64, !dbg !964
  %57 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !965, !tbaa !883
  %58 = add nsw i64 %57, %56, !dbg !965
  store i64 %58, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !965, !tbaa !883
  br label %59, !dbg !966

; <label>:59:                                     ; preds = %2, %10, %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !966
  ret void, !dbg !966
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyWriteOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @checkType(%struct.client*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lpushxCommand(%struct.client*) local_unnamed_addr #0 !dbg !968 {
  tail call void @pushxGenericCommand(%struct.client* %0, i32 0) #9, !dbg !972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !973
  ret void, !dbg !973
}

; Function Attrs: noredzone nounwind
define dso_local void @rpushxCommand(%struct.client*) local_unnamed_addr #0 !dbg !974 {
  tail call void @pushxGenericCommand(%struct.client* %0, i32 1) #9, !dbg !978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  ret void, !dbg !979
}

; Function Attrs: noredzone nounwind
define dso_local void @linsertCommand(%struct.client*) local_unnamed_addr #0 !dbg !980 {
  %2 = alloca %struct.listTypeEntry, align 8
  %3 = bitcast %struct.listTypeEntry* %2 to i8*, !dbg !989
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #8, !dbg !989
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !991
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !991, !tbaa !804
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 2, !dbg !993
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !993, !tbaa !200
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !994
  %9 = load i8*, i8** %8, align 8, !dbg !994, !tbaa !122
  %10 = tail call i32 @strcasecmp(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !995
  %11 = icmp eq i32 %10, 0, !dbg !996
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  br i1 %11, label %17, label %12, !dbg !997

; <label>:12:                                     ; preds = %1
  %13 = tail call i32 @strcasecmp(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !998
  %14 = icmp eq i32 %13, 0, !dbg !1000
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1001
  br i1 %14, label %17, label %15, !dbg !1001

; <label>:15:                                     ; preds = %12
  %16 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1002, !tbaa !1004
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %16) #6, !dbg !1005
  br label %86, !dbg !1006

; <label>:17:                                     ; preds = %12, %1
  %18 = phi i32 [ 1, %1 ], [ 0, %12 ], !dbg !1007
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %19 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !1010
  %20 = load %struct.redisObject*, %struct.redisObject** %19, align 8, !dbg !1010, !tbaa !200
  %21 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1012, !tbaa !915
  %22 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* nonnull %0, %struct.redisObject* %20, %struct.redisObject* %21) #6, !dbg !1013
  %23 = icmp eq %struct.redisObject* %22, null, !dbg !1015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1016
  br i1 %23, label %86, label %24, !dbg !1016

; <label>:24:                                     ; preds = %17
  %25 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %22, i32 1) #6, !dbg !1017
  %26 = icmp eq i32 %25, 0, !dbg !1017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1018
  br i1 %26, label %27, label %86, !dbg !1018

; <label>:27:                                     ; preds = %24
  %28 = tail call i8* @zmalloc(i64 24) #6, !dbg !1023
  %29 = bitcast i8* %28 to %struct.redisObject**, !dbg !1024
  store %struct.redisObject* %22, %struct.redisObject** %29, align 8, !dbg !1025, !tbaa !282
  %30 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %22, i64 0, i32 0, !dbg !1026
  %31 = load i32, i32* %30, align 8, !dbg !1026
  %32 = lshr i32 %31, 4, !dbg !1026
  %33 = trunc i32 %32 to i8, !dbg !1027
  %34 = and i8 %33, 15, !dbg !1027
  %35 = getelementptr inbounds i8, i8* %28, i64 8, !dbg !1028
  store i8 %34, i8* %35, align 8, !dbg !1029, !tbaa !288
  %36 = getelementptr inbounds i8, i8* %28, i64 9, !dbg !1030
  store i8 1, i8* %36, align 1, !dbg !1031, !tbaa !291
  %37 = getelementptr inbounds i8, i8* %28, i64 16, !dbg !1032
  %38 = bitcast i8* %37 to %struct.quicklistIter**, !dbg !1032
  store %struct.quicklistIter* null, %struct.quicklistIter** %38, align 8, !dbg !1033, !tbaa !294
  %39 = icmp eq i8 %34, 9, !dbg !1034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  br i1 %39, label %41, label %40, !dbg !1035

; <label>:40:                                     ; preds = %27
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1036
  tail call void @_exit(i32 1) #7, !dbg !1036
  unreachable

; <label>:41:                                     ; preds = %27
  %42 = bitcast i8* %28 to %struct.listTypeIterator*, !dbg !1023
  %43 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %22, i64 0, i32 2, !dbg !1039
  %44 = bitcast i8** %43 to %struct.quicklist**, !dbg !1039
  %45 = load %struct.quicklist*, %struct.quicklist** %44, align 8, !dbg !1039, !tbaa !122
  %46 = tail call %struct.quicklistIter* @quicklistGetIteratorAtIdx(%struct.quicklist* %45, i32 0, i64 0) #6, !dbg !1040
  store %struct.quicklistIter* %46, %struct.quicklistIter** %38, align 8, !dbg !1041, !tbaa !294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1042
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1044
  br label %47, !dbg !1044

; <label>:47:                                     ; preds = %50, %41
  %48 = call i32 @listTypeNext(%struct.listTypeIterator* %42, %struct.listTypeEntry* nonnull %2) #9, !dbg !1046
  %49 = icmp eq i32 %48, 0, !dbg !1044
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1044
  br i1 %49, label %82, label %50, !dbg !1044

; <label>:50:                                     ; preds = %47
  %51 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1047, !tbaa !804
  %52 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %51, i64 3, !dbg !1050
  %53 = load %struct.redisObject*, %struct.redisObject** %52, align 8, !dbg !1050, !tbaa !200
  %54 = call i32 @listTypeEqual(%struct.listTypeEntry* nonnull %2, %struct.redisObject* %53) #9, !dbg !1051
  %55 = icmp eq i32 %54, 0, !dbg !1051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1052
  br i1 %55, label %47, label %56, !dbg !1052, !llvm.loop !1053

; <label>:56:                                     ; preds = %50
  %57 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1055, !tbaa !804
  %58 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %57, i64 4, !dbg !1057
  %59 = load %struct.redisObject*, %struct.redisObject** %58, align 8, !dbg !1057, !tbaa !200
  call void @listTypeInsert(%struct.listTypeEntry* nonnull %2, %struct.redisObject* %59, i32 %18) #9, !dbg !1058
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  %60 = bitcast i8* %37 to i8**, !dbg !1062
  %61 = load i8*, i8** %60, align 8, !dbg !1062, !tbaa !294
  call void @zfree(i8* %61) #6, !dbg !1063
  call void @zfree(i8* %28) #6, !dbg !1064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1065
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1066
  %62 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1067
  %63 = load %struct.redisDb*, %struct.redisDb** %62, align 8, !dbg !1067, !tbaa !799
  %64 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1070, !tbaa !804
  %65 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %64, i64 1, !dbg !1071
  %66 = load %struct.redisObject*, %struct.redisObject** %65, align 8, !dbg !1071, !tbaa !200
  call void @signalModifiedKey(%struct.redisDb* %63, %struct.redisObject* %66) #6, !dbg !1072
  %67 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1073, !tbaa !804
  %68 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %67, i64 1, !dbg !1074
  %69 = load %struct.redisObject*, %struct.redisObject** %68, align 8, !dbg !1074, !tbaa !200
  %70 = load %struct.redisDb*, %struct.redisDb** %62, align 8, !dbg !1075, !tbaa !799
  %71 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %70, i64 0, i32 5, !dbg !1076
  %72 = load i32, i32* %71, align 8, !dbg !1076, !tbaa !877
  call void @notifyKeyspaceEvent(i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), %struct.redisObject* %69, i32 %72) #6, !dbg !1077
  %73 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1078, !tbaa !883
  %74 = add nsw i64 %73, 1, !dbg !1078
  store i64 %74, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1078, !tbaa !883
  %75 = load i32, i32* %30, align 8, !dbg !1081
  %76 = and i32 %75, 240, !dbg !1081
  %77 = icmp eq i32 %76, 144, !dbg !1082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1083
  br i1 %77, label %79, label %78, !dbg !1083

; <label>:78:                                     ; preds = %56
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1084
  call void @_exit(i32 1) #7, !dbg !1084
  unreachable

; <label>:79:                                     ; preds = %56
  %80 = load %struct.quicklist*, %struct.quicklist** %44, align 8, !dbg !1085, !tbaa !122
  %81 = call i64 @quicklistCount(%struct.quicklist* %80) #6, !dbg !1086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1087
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %81) #6, !dbg !1088
  br label %86, !dbg !1089

; <label>:82:                                     ; preds = %47
  %83 = bitcast i8* %37 to i8**, !dbg !1092
  %84 = load i8*, i8** %83, align 8, !dbg !1092, !tbaa !294
  call void @zfree(i8* %84) #6, !dbg !1093
  call void @zfree(i8* %28) #6, !dbg !1094
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1066
  %85 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 6), align 8, !dbg !1096, !tbaa !1098
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %85) #6, !dbg !1099
  br label %86, !dbg !1100

; <label>:86:                                     ; preds = %17, %24, %79, %82, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1101
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #8, !dbg !1089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1089
  ret void, !dbg !1089
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @llenCommand(%struct.client*) local_unnamed_addr #0 !dbg !1102 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1107
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1107, !tbaa !804
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !1108
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !1108, !tbaa !200
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1109, !tbaa !915
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #6, !dbg !1110
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !1112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1114
  br i1 %8, label %23, label %9, !dbg !1114

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 1) #6, !dbg !1115
  %11 = icmp eq i32 %10, 0, !dbg !1115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1116
  br i1 %11, label %12, label %23, !dbg !1116

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 0, !dbg !1119
  %14 = load i32, i32* %13, align 8, !dbg !1119
  %15 = and i32 %14, 240, !dbg !1119
  %16 = icmp eq i32 %15, 144, !dbg !1120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1121
  br i1 %16, label %18, label %17, !dbg !1121

; <label>:17:                                     ; preds = %12
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1122
  tail call void @_exit(i32 1) #7, !dbg !1122
  unreachable

; <label>:18:                                     ; preds = %12
  %19 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !1123
  %20 = bitcast i8** %19 to %struct.quicklist**, !dbg !1123
  %21 = load %struct.quicklist*, %struct.quicklist** %20, align 8, !dbg !1123, !tbaa !122
  %22 = tail call i64 @quicklistCount(%struct.quicklist* %21) #6, !dbg !1124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %22) #6, !dbg !1126
  br label %23, !dbg !1127

; <label>:23:                                     ; preds = %1, %9, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1127
  ret void, !dbg !1127
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyReadOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lindexCommand(%struct.client*) local_unnamed_addr #0 !dbg !1129 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.quicklistEntry, align 8
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1139
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1139, !tbaa !804
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !1140
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1140, !tbaa !200
  %8 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1141, !tbaa !1142
  %9 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %7, %struct.redisObject* %8) #6, !dbg !1143
  %10 = icmp eq %struct.redisObject* %9, null, !dbg !1145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1147
  br i1 %10, label %54, label %11, !dbg !1147

; <label>:11:                                     ; preds = %1
  %12 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %9, i32 1) #6, !dbg !1148
  %13 = icmp eq i32 %12, 0, !dbg !1148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1149
  br i1 %13, label %14, label %54, !dbg !1149

; <label>:14:                                     ; preds = %11
  %15 = bitcast i64* %2 to i8*, !dbg !1150
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #8, !dbg !1150
  %16 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1152, !tbaa !804
  %17 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 2, !dbg !1154
  %18 = load %struct.redisObject*, %struct.redisObject** %17, align 8, !dbg !1154, !tbaa !200
  %19 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %18, i64* nonnull %2, i8* null) #6, !dbg !1156
  %20 = icmp eq i32 %19, 0, !dbg !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1158
  br i1 %20, label %21, label %53, !dbg !1158

; <label>:21:                                     ; preds = %14
  %22 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %9, i64 0, i32 0, !dbg !1159
  %23 = load i32, i32* %22, align 8, !dbg !1159
  %24 = and i32 %23, 240, !dbg !1159
  %25 = icmp eq i32 %24, 144, !dbg !1160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1161
  br i1 %25, label %26, label %52, !dbg !1161

; <label>:26:                                     ; preds = %21
  %27 = bitcast %struct.quicklistEntry* %3 to i8*, !dbg !1162
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %27) #8, !dbg !1162
  %28 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %9, i64 0, i32 2, !dbg !1163
  %29 = bitcast i8** %28 to %struct.quicklist**, !dbg !1163
  %30 = load %struct.quicklist*, %struct.quicklist** %29, align 8, !dbg !1163, !tbaa !122
  %31 = load i64, i64* %2, align 8, !dbg !1165, !tbaa !161
  %32 = call i32 @quicklistIndex(%struct.quicklist* %30, i64 %31, %struct.quicklistEntry* nonnull %3) #6, !dbg !1167
  %33 = icmp eq i32 %32, 0, !dbg !1167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1168
  br i1 %33, label %49, label %34, !dbg !1168

; <label>:34:                                     ; preds = %26
  %35 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %3, i64 0, i32 3, !dbg !1169
  %36 = load i8*, i8** %35, align 8, !dbg !1169, !tbaa !1172
  %37 = icmp eq i8* %36, null, !dbg !1173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1174
  br i1 %37, label %43, label %38, !dbg !1174

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %3, i64 0, i32 5, !dbg !1175
  %40 = load i32, i32* %39, align 8, !dbg !1175, !tbaa !1177
  %41 = zext i32 %40 to i64, !dbg !1178
  %42 = call %struct.redisObject* @createStringObject(i8* nonnull %36, i64 %41) #6, !dbg !1179
  br label %47, !dbg !1180

; <label>:43:                                     ; preds = %34
  %44 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %3, i64 0, i32 4, !dbg !1181
  %45 = load i64, i64* %44, align 8, !dbg !1181, !tbaa !1183
  %46 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %45) #6, !dbg !1184
  br label %47

; <label>:47:                                     ; preds = %43, %38
  %48 = phi %struct.redisObject* [ %42, %38 ], [ %46, %43 ], !dbg !1185
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %48) #6, !dbg !1186
  call void @decrRefCount(%struct.redisObject* %48) #6, !dbg !1187
  br label %51, !dbg !1188

; <label>:49:                                     ; preds = %26
  %50 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1189, !tbaa !1142
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %50) #6, !dbg !1191
  br label %51

; <label>:51:                                     ; preds = %49, %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %27) #8, !dbg !1192
  br label %53, !dbg !1193

; <label>:52:                                     ; preds = %21
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 337, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1194
  call void @_exit(i32 1) #7, !dbg !1194
  unreachable

; <label>:53:                                     ; preds = %14, %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1196
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #8, !dbg !1193
  br label %54

; <label>:54:                                     ; preds = %1, %11, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1193
  ret void, !dbg !1193
}

; Function Attrs: noredzone
declare dso_local i32 @getLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @quicklistIndex(%struct.quicklist*, i64, %struct.quicklistEntry*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulk(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lsetCommand(%struct.client*) local_unnamed_addr #0 !dbg !1197 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1208
  %4 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !1208, !tbaa !804
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 1, !dbg !1209
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !1209, !tbaa !200
  %7 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 15), align 8, !dbg !1210, !tbaa !1211
  %8 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* %0, %struct.redisObject* %6, %struct.redisObject* %7) #6, !dbg !1212
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !1214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1216
  br i1 %9, label %83, label %10, !dbg !1216

; <label>:10:                                     ; preds = %1
  %11 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %8, i32 1) #6, !dbg !1217
  %12 = icmp eq i32 %11, 0, !dbg !1217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  br i1 %12, label %13, label %83, !dbg !1218

; <label>:13:                                     ; preds = %10
  %14 = bitcast i64* %2 to i8*, !dbg !1219
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #8, !dbg !1219
  %15 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !1220, !tbaa !804
  %16 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 3, !dbg !1221
  %17 = load %struct.redisObject*, %struct.redisObject** %16, align 8, !dbg !1221, !tbaa !200
  %18 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 2, !dbg !1223
  %19 = load %struct.redisObject*, %struct.redisObject** %18, align 8, !dbg !1223, !tbaa !200
  %20 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %19, i64* nonnull %2, i8* null) #6, !dbg !1226
  %21 = icmp eq i32 %20, 0, !dbg !1227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  br i1 %21, label %22, label %82, !dbg !1228

; <label>:22:                                     ; preds = %13
  %23 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 0, !dbg !1229
  %24 = load i32, i32* %23, align 8, !dbg !1229
  %25 = and i32 %24, 240, !dbg !1229
  %26 = icmp eq i32 %25, 144, !dbg !1230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1231
  br i1 %26, label %27, label %81, !dbg !1231

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !1232
  %29 = bitcast i8** %28 to %struct.quicklist**, !dbg !1232
  %30 = load %struct.quicklist*, %struct.quicklist** %29, align 8, !dbg !1232, !tbaa !122
  %31 = load i64, i64* %2, align 8, !dbg !1234, !tbaa !161
  %32 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i64 0, i32 2, !dbg !1235
  %33 = load i8*, i8** %32, align 8, !dbg !1235, !tbaa !122
  %34 = getelementptr inbounds i8, i8* %33, i64 -1, !dbg !1238
  %35 = load i8, i8* %34, align 1, !dbg !1238, !tbaa !141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1240
  %36 = trunc i8 %35 to i3, !dbg !1240
  switch i3 %36, label %58 [
    i3 0, label %37
    i3 1, label %40
    i3 2, label %44
    i3 3, label %49
    i3 -4, label %54
  ], !dbg !1240

; <label>:37:                                     ; preds = %27
  %38 = lshr i8 %35, 3, !dbg !1241
  %39 = zext i8 %38 to i64, !dbg !1241
  br label %58, !dbg !1242

; <label>:40:                                     ; preds = %27
  %41 = getelementptr inbounds i8, i8* %33, i64 -3, !dbg !1243
  %42 = load i8, i8* %41, align 1, !dbg !1244, !tbaa !141
  %43 = zext i8 %42 to i64, !dbg !1243
  br label %58, !dbg !1245

; <label>:44:                                     ; preds = %27
  %45 = getelementptr inbounds i8, i8* %33, i64 -5, !dbg !1246
  %46 = bitcast i8* %45 to i16*, !dbg !1247
  %47 = load i16, i16* %46, align 1, !dbg !1247, !tbaa !152
  %48 = zext i16 %47 to i64, !dbg !1246
  br label %58, !dbg !1248

; <label>:49:                                     ; preds = %27
  %50 = getelementptr inbounds i8, i8* %33, i64 -9, !dbg !1249
  %51 = bitcast i8* %50 to i32*, !dbg !1250
  %52 = load i32, i32* %51, align 1, !dbg !1250, !tbaa !157
  %53 = zext i32 %52 to i64, !dbg !1249
  br label %58, !dbg !1251

; <label>:54:                                     ; preds = %27
  %55 = getelementptr inbounds i8, i8* %33, i64 -17, !dbg !1252
  %56 = bitcast i8* %55 to i64*, !dbg !1253
  %57 = load i64, i64* %56, align 1, !dbg !1253, !tbaa !161
  br label %58, !dbg !1254

; <label>:58:                                     ; preds = %27, %37, %40, %44, %49, %54
  %59 = phi i64 [ %57, %54 ], [ %53, %49 ], [ %48, %44 ], [ %43, %40 ], [ %39, %37 ], [ 0, %27 ], !dbg !1255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1257
  %60 = trunc i64 %59 to i32, !dbg !1258
  %61 = call i32 @quicklistReplaceAtIndex(%struct.quicklist* %30, i64 %31, i8* %33, i32 %60) #6, !dbg !1259
  %62 = icmp eq i32 %61, 0, !dbg !1261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1263
  br i1 %62, label %63, label %65, !dbg !1263

; <label>:63:                                     ; preds = %58
  %64 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 18), align 8, !dbg !1264, !tbaa !1266
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %64) #6, !dbg !1267
  br label %80, !dbg !1268

; <label>:65:                                     ; preds = %58
  %66 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1269, !tbaa !1271
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %66) #6, !dbg !1272
  %67 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1273
  %68 = load %struct.redisDb*, %struct.redisDb** %67, align 8, !dbg !1273, !tbaa !799
  %69 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !1274, !tbaa !804
  %70 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %69, i64 1, !dbg !1275
  %71 = load %struct.redisObject*, %struct.redisObject** %70, align 8, !dbg !1275, !tbaa !200
  call void @signalModifiedKey(%struct.redisDb* %68, %struct.redisObject* %71) #6, !dbg !1276
  %72 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !1277, !tbaa !804
  %73 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %72, i64 1, !dbg !1278
  %74 = load %struct.redisObject*, %struct.redisObject** %73, align 8, !dbg !1278, !tbaa !200
  %75 = load %struct.redisDb*, %struct.redisDb** %67, align 8, !dbg !1279, !tbaa !799
  %76 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %75, i64 0, i32 5, !dbg !1280
  %77 = load i32, i32* %76, align 8, !dbg !1280, !tbaa !877
  call void @notifyKeyspaceEvent(i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %struct.redisObject* %74, i32 %77) #6, !dbg !1281
  %78 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1282, !tbaa !883
  %79 = add nsw i64 %78, 1, !dbg !1282
  store i64 %79, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1282, !tbaa !883
  br label %80

; <label>:80:                                     ; preds = %65, %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %82, !dbg !1283

; <label>:81:                                     ; preds = %22
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 363, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1284
  call void @_exit(i32 1) #7, !dbg !1284
  unreachable

; <label>:82:                                     ; preds = %13, %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1286
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #8, !dbg !1283
  br label %83

; <label>:83:                                     ; preds = %1, %10, %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1283
  ret void, !dbg !1283
}

; Function Attrs: noredzone
declare dso_local i32 @quicklistReplaceAtIndex(%struct.quicklist*, i64, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @popGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !1287 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1298
  %4 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !1298, !tbaa !804
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 1, !dbg !1299
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !1299, !tbaa !200
  %7 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1300, !tbaa !1142
  %8 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* %0, %struct.redisObject* %6, %struct.redisObject* %7) #6, !dbg !1301
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !1303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1305
  br i1 %9, label %59, label %10, !dbg !1305

; <label>:10:                                     ; preds = %2
  %11 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %8, i32 1) #6, !dbg !1306
  %12 = icmp eq i32 %11, 0, !dbg !1306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1307
  br i1 %12, label %13, label %59, !dbg !1307

; <label>:13:                                     ; preds = %10
  %14 = tail call %struct.redisObject* @listTypePop(%struct.redisObject* nonnull %8, i32 %1) #9, !dbg !1308
  %15 = icmp eq %struct.redisObject* %14, null, !dbg !1310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1311
  br i1 %15, label %16, label %18, !dbg !1311

; <label>:16:                                     ; preds = %13
  %17 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1312, !tbaa !1142
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %17) #6, !dbg !1314
  br label %58, !dbg !1315

; <label>:18:                                     ; preds = %13
  %19 = icmp eq i32 %1, 0, !dbg !1316
  %20 = select i1 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), !dbg !1317
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* nonnull %14) #6, !dbg !1319
  tail call void @decrRefCount(%struct.redisObject* nonnull %14) #6, !dbg !1320
  %21 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !1321, !tbaa !804
  %22 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %21, i64 1, !dbg !1322
  %23 = load %struct.redisObject*, %struct.redisObject** %22, align 8, !dbg !1322, !tbaa !200
  %24 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1323
  %25 = load %struct.redisDb*, %struct.redisDb** %24, align 8, !dbg !1323, !tbaa !799
  %26 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %25, i64 0, i32 5, !dbg !1324
  %27 = load i32, i32* %26, align 8, !dbg !1324, !tbaa !877
  tail call void @notifyKeyspaceEvent(i32 16, i8* %20, %struct.redisObject* %23, i32 %27) #6, !dbg !1325
  %28 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 0, !dbg !1329
  %29 = load i32, i32* %28, align 8, !dbg !1329
  %30 = and i32 %29, 240, !dbg !1329
  %31 = icmp eq i32 %30, 144, !dbg !1330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  br i1 %31, label %33, label %32, !dbg !1331

; <label>:32:                                     ; preds = %18
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1332
  tail call void @_exit(i32 1) #7, !dbg !1332
  unreachable

; <label>:33:                                     ; preds = %18
  %34 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !1333
  %35 = bitcast i8** %34 to %struct.quicklist**, !dbg !1333
  %36 = load %struct.quicklist*, %struct.quicklist** %35, align 8, !dbg !1333, !tbaa !122
  %37 = tail call i64 @quicklistCount(%struct.quicklist* %36) #6, !dbg !1334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1335
  %38 = icmp eq i64 %37, 0, !dbg !1336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1337
  br i1 %38, label %39, label %51, !dbg !1337

; <label>:39:                                     ; preds = %33
  %40 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !1338, !tbaa !804
  %41 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %40, i64 1, !dbg !1340
  %42 = load %struct.redisObject*, %struct.redisObject** %41, align 8, !dbg !1340, !tbaa !200
  %43 = load %struct.redisDb*, %struct.redisDb** %24, align 8, !dbg !1341, !tbaa !799
  %44 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %43, i64 0, i32 5, !dbg !1342
  %45 = load i32, i32* %44, align 8, !dbg !1342, !tbaa !877
  tail call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), %struct.redisObject* %42, i32 %45) #6, !dbg !1343
  %46 = load %struct.redisDb*, %struct.redisDb** %24, align 8, !dbg !1344, !tbaa !799
  %47 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !1345, !tbaa !804
  %48 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %47, i64 1, !dbg !1346
  %49 = load %struct.redisObject*, %struct.redisObject** %48, align 8, !dbg !1346, !tbaa !200
  %50 = tail call i32 @dbDelete(%struct.redisDb* %46, %struct.redisObject* %49) #6, !dbg !1347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  br label %51, !dbg !1348

; <label>:51:                                     ; preds = %39, %33
  %52 = load %struct.redisDb*, %struct.redisDb** %24, align 8, !dbg !1349, !tbaa !799
  %53 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !1350, !tbaa !804
  %54 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %53, i64 1, !dbg !1351
  %55 = load %struct.redisObject*, %struct.redisObject** %54, align 8, !dbg !1351, !tbaa !200
  tail call void @signalModifiedKey(%struct.redisDb* %52, %struct.redisObject* %55) #6, !dbg !1352
  %56 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1353, !tbaa !883
  %57 = add nsw i64 %56, 1, !dbg !1353
  store i64 %57, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1353, !tbaa !883
  br label %58

; <label>:58:                                     ; preds = %51, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %59, !dbg !1354

; <label>:59:                                     ; preds = %2, %10, %58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1354
  ret void, !dbg !1354
}

; Function Attrs: noredzone
declare dso_local i32 @dbDelete(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lpopCommand(%struct.client*) local_unnamed_addr #0 !dbg !1356 {
  tail call void @popGenericCommand(%struct.client* %0, i32 0) #9, !dbg !1360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1361
  ret void, !dbg !1361
}

; Function Attrs: noredzone nounwind
define dso_local void @rpopCommand(%struct.client*) local_unnamed_addr #0 !dbg !1362 {
  tail call void @popGenericCommand(%struct.client* %0, i32 1) #9, !dbg !1366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1367
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
  %8 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1385, !tbaa !804
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 2, !dbg !1387
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !1387, !tbaa !200
  %11 = call i32 @getLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %10, i64* nonnull %2, i8* null) #6, !dbg !1389
  %12 = icmp eq i32 %11, 0, !dbg !1390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1391
  br i1 %12, label %13, label %117, !dbg !1391

; <label>:13:                                     ; preds = %1
  %14 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1392, !tbaa !804
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 3, !dbg !1393
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !1393, !tbaa !200
  %17 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %16, i64* nonnull %3, i8* null) #6, !dbg !1395
  %18 = icmp eq i32 %17, 0, !dbg !1396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1397
  br i1 %18, label %19, label %117, !dbg !1397

; <label>:19:                                     ; preds = %13
  %20 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !1398, !tbaa !804
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 1, !dbg !1400
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !1400, !tbaa !200
  %23 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 13), align 8, !dbg !1401, !tbaa !1402
  %24 = call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* nonnull %0, %struct.redisObject* %22, %struct.redisObject* %23) #6, !dbg !1403
  %25 = icmp eq %struct.redisObject* %24, null, !dbg !1405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1406
  br i1 %25, label %117, label %26, !dbg !1406

; <label>:26:                                     ; preds = %19
  %27 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %24, i32 1) #6, !dbg !1407
  %28 = icmp eq i32 %27, 0, !dbg !1407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1408
  br i1 %28, label %29, label %117, !dbg !1408

; <label>:29:                                     ; preds = %26
  %30 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %24, i64 0, i32 0, !dbg !1411
  %31 = load i32, i32* %30, align 8, !dbg !1411
  %32 = and i32 %31, 240, !dbg !1411
  %33 = icmp eq i32 %32, 144, !dbg !1412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1413
  br i1 %33, label %35, label %34, !dbg !1413

; <label>:34:                                     ; preds = %29
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1414
  call void @_exit(i32 1) #7, !dbg !1414
  unreachable

; <label>:35:                                     ; preds = %29
  %36 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %24, i64 0, i32 2, !dbg !1415
  %37 = bitcast i8** %36 to %struct.quicklist**, !dbg !1415
  %38 = load %struct.quicklist*, %struct.quicklist** %37, align 8, !dbg !1415, !tbaa !122
  %39 = call i64 @quicklistCount(%struct.quicklist* %38) #6, !dbg !1416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1417
  %40 = load i64, i64* %2, align 8, !dbg !1419, !tbaa !161
  %41 = icmp slt i64 %40, 0, !dbg !1421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1422
  br i1 %41, label %42, label %44, !dbg !1422

; <label>:42:                                     ; preds = %35
  %43 = add nsw i64 %40, %39, !dbg !1423
  store i64 %43, i64* %2, align 8, !dbg !1424, !tbaa !161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1425
  br label %44, !dbg !1425

; <label>:44:                                     ; preds = %42, %35
  %45 = phi i64 [ %43, %42 ], [ %40, %35 ]
  %46 = load i64, i64* %3, align 8, !dbg !1426, !tbaa !161
  %47 = icmp slt i64 %46, 0, !dbg !1428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1429
  br i1 %47, label %48, label %50, !dbg !1429

; <label>:48:                                     ; preds = %44
  %49 = add nsw i64 %46, %39, !dbg !1430
  store i64 %49, i64* %3, align 8, !dbg !1431, !tbaa !161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1432
  br label %50, !dbg !1432

; <label>:50:                                     ; preds = %48, %44
  %51 = phi i64 [ %49, %48 ], [ %46, %44 ]
  %52 = icmp slt i64 %45, 0, !dbg !1433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1435
  br i1 %52, label %53, label %54, !dbg !1435

; <label>:53:                                     ; preds = %50
  store i64 0, i64* %2, align 8, !dbg !1436, !tbaa !161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  br label %54, !dbg !1437

; <label>:54:                                     ; preds = %53, %50
  %55 = phi i64 [ 0, %53 ], [ %45, %50 ], !dbg !1438
  %56 = icmp sgt i64 %55, %51, !dbg !1440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1441
  br i1 %56, label %59, label %57, !dbg !1441

; <label>:57:                                     ; preds = %54
  %58 = icmp slt i64 %55, %39, !dbg !1442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1443
  br i1 %58, label %61, label %59, !dbg !1443

; <label>:59:                                     ; preds = %57, %54
  %60 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 13), align 8, !dbg !1444, !tbaa !1402
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %60) #6, !dbg !1446
  br label %117, !dbg !1447

; <label>:61:                                     ; preds = %57
  %62 = icmp slt i64 %51, %39, !dbg !1448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  br i1 %62, label %65, label %63, !dbg !1450

; <label>:63:                                     ; preds = %61
  %64 = add nsw i64 %39, -1, !dbg !1451
  store i64 %64, i64* %3, align 8, !dbg !1452, !tbaa !161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1453
  br label %65, !dbg !1453

; <label>:65:                                     ; preds = %61, %63
  %66 = phi i64 [ %51, %61 ], [ %64, %63 ], !dbg !1454
  %67 = sub nsw i64 %66, %55, !dbg !1455
  %68 = add nsw i64 %67, 1, !dbg !1456
  call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %68) #6, !dbg !1458
  %69 = load i32, i32* %30, align 8, !dbg !1459
  %70 = and i32 %69, 240, !dbg !1459
  %71 = icmp eq i32 %70, 144, !dbg !1460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  br i1 %71, label %72, label %116, !dbg !1461

; <label>:72:                                     ; preds = %65
  %73 = load i64, i64* %2, align 8, !dbg !1462, !tbaa !161
  %74 = call i8* @zmalloc(i64 24) #6, !dbg !1467
  %75 = bitcast i8* %74 to %struct.redisObject**, !dbg !1468
  store %struct.redisObject* %24, %struct.redisObject** %75, align 8, !dbg !1469, !tbaa !282
  %76 = load i32, i32* %30, align 8, !dbg !1470
  %77 = lshr i32 %76, 4, !dbg !1470
  %78 = trunc i32 %77 to i8, !dbg !1471
  %79 = and i8 %78, 15, !dbg !1471
  %80 = getelementptr inbounds i8, i8* %74, i64 8, !dbg !1472
  store i8 %79, i8* %80, align 8, !dbg !1473, !tbaa !288
  %81 = getelementptr inbounds i8, i8* %74, i64 9, !dbg !1474
  store i8 1, i8* %81, align 1, !dbg !1475, !tbaa !291
  %82 = getelementptr inbounds i8, i8* %74, i64 16, !dbg !1476
  %83 = bitcast i8* %82 to %struct.quicklistIter**, !dbg !1476
  store %struct.quicklistIter* null, %struct.quicklistIter** %83, align 8, !dbg !1477, !tbaa !294
  %84 = icmp eq i8 %79, 9, !dbg !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1479
  br i1 %84, label %86, label %85, !dbg !1479

; <label>:85:                                     ; preds = %72
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1480
  call void @_exit(i32 1) #7, !dbg !1480
  unreachable

; <label>:86:                                     ; preds = %72
  %87 = bitcast i8* %74 to %struct.listTypeIterator*, !dbg !1467
  %88 = load %struct.quicklist*, %struct.quicklist** %37, align 8, !dbg !1483, !tbaa !122
  %89 = call %struct.quicklistIter* @quicklistGetIteratorAtIdx(%struct.quicklist* %88, i32 0, i64 %73) #6, !dbg !1484
  store %struct.quicklistIter* %89, %struct.quicklistIter** %83, align 8, !dbg !1485, !tbaa !294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1488
  %90 = icmp eq i64 %68, 0, !dbg !1488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1488
  br i1 %90, label %91, label %93, !dbg !1488

; <label>:91:                                     ; preds = %86
  %92 = bitcast %struct.quicklistIter* %89 to i8*, !dbg !1488
  br label %114, !dbg !1488

; <label>:93:                                     ; preds = %86
  %94 = bitcast %struct.listTypeEntry* %4 to i8*
  %95 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %4, i64 0, i32 1, i32 3
  %96 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %4, i64 0, i32 1, i32 4
  %97 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %4, i64 0, i32 1, i32 5
  br label %98, !dbg !1488

; <label>:98:                                     ; preds = %93, %108
  %99 = phi i64 [ %67, %93 ], [ %109, %108 ]
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %94) #8, !dbg !1489
  %100 = call i32 @listTypeNext(%struct.listTypeIterator* %87, %struct.listTypeEntry* nonnull %4) #9, !dbg !1491
  %101 = load i8*, i8** %95, align 8, !dbg !1492, !tbaa !1172
  %102 = icmp eq i8* %101, null, !dbg !1494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1495
  br i1 %102, label %106, label %103, !dbg !1495

; <label>:103:                                    ; preds = %98
  %104 = load i32, i32* %97, align 8, !dbg !1497, !tbaa !1177
  %105 = zext i32 %104 to i64, !dbg !1499
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* nonnull %101, i64 %105) #6, !dbg !1500
  br label %108, !dbg !1501

; <label>:106:                                    ; preds = %98
  %107 = load i64, i64* %96, align 8, !dbg !1502, !tbaa !1183
  call void @addReplyBulkLongLong(%struct.client* %0, i64 %107) #6, !dbg !1504
  br label %108

; <label>:108:                                    ; preds = %106, %103
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %94) #8, !dbg !1505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1488
  %109 = add nsw i64 %99, -1, !dbg !1506
  %110 = icmp eq i64 %99, 0, !dbg !1488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1488
  br i1 %110, label %111, label %98, !dbg !1488, !llvm.loop !1507

; <label>:111:                                    ; preds = %108
  %112 = bitcast i8* %82 to i8**
  %113 = load i8*, i8** %112, align 8, !dbg !1508, !tbaa !294
  br label %114, !dbg !1508

; <label>:114:                                    ; preds = %91, %111
  %115 = phi i8* [ %113, %111 ], [ %92, %91 ], !dbg !1508
  call void @zfree(i8* %115) #6, !dbg !1511
  call void @zfree(i8* nonnull %74) #6, !dbg !1512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1513
  br label %117, !dbg !1514

; <label>:116:                                    ; preds = %65
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 440, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !1515
  call void @_exit(i32 1) #7, !dbg !1515
  unreachable

; <label>:117:                                    ; preds = %19, %26, %1, %13, %114, %59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1517
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8, !dbg !1514
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1514
  ret void, !dbg !1514
}

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ltrimCommand(%struct.client*) local_unnamed_addr #0 !dbg !1518 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = bitcast i64* %2 to i8*, !dbg !1528
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8, !dbg !1528
  %5 = bitcast i64* %3 to i8*, !dbg !1528
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1528
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1529
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1529, !tbaa !804
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 2, !dbg !1531
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !1531, !tbaa !200
  %10 = call i32 @getLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %9, i64* nonnull %2, i8* null) #6, !dbg !1533
  %11 = icmp eq i32 %10, 0, !dbg !1534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1535
  br i1 %11, label %12, label %114, !dbg !1535

; <label>:12:                                     ; preds = %1
  %13 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1536, !tbaa !804
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 3, !dbg !1537
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !1537, !tbaa !200
  %16 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %15, i64* nonnull %3, i8* null) #6, !dbg !1539
  %17 = icmp eq i32 %16, 0, !dbg !1540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1541
  br i1 %17, label %18, label %114, !dbg !1541

; <label>:18:                                     ; preds = %12
  %19 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1542, !tbaa !804
  %20 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 1, !dbg !1544
  %21 = load %struct.redisObject*, %struct.redisObject** %20, align 8, !dbg !1544, !tbaa !200
  %22 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1545, !tbaa !1271
  %23 = call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* nonnull %0, %struct.redisObject* %21, %struct.redisObject* %22) #6, !dbg !1546
  %24 = icmp eq %struct.redisObject* %23, null, !dbg !1548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1549
  br i1 %24, label %114, label %25, !dbg !1549

; <label>:25:                                     ; preds = %18
  %26 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %23, i32 1) #6, !dbg !1550
  %27 = icmp eq i32 %26, 0, !dbg !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1551
  br i1 %27, label %28, label %114, !dbg !1551

; <label>:28:                                     ; preds = %25
  %29 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %23, i64 0, i32 0, !dbg !1554
  %30 = load i32, i32* %29, align 8, !dbg !1554
  %31 = and i32 %30, 240, !dbg !1554
  %32 = icmp eq i32 %31, 144, !dbg !1555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1556
  br i1 %32, label %34, label %33, !dbg !1556

; <label>:33:                                     ; preds = %28
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1557
  call void @_exit(i32 1) #7, !dbg !1557
  unreachable

; <label>:34:                                     ; preds = %28
  %35 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %23, i64 0, i32 2, !dbg !1558
  %36 = bitcast i8** %35 to %struct.quicklist**, !dbg !1558
  %37 = load %struct.quicklist*, %struct.quicklist** %36, align 8, !dbg !1558, !tbaa !122
  %38 = call i64 @quicklistCount(%struct.quicklist* %37) #6, !dbg !1559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1560
  %39 = load i64, i64* %2, align 8, !dbg !1562, !tbaa !161
  %40 = icmp slt i64 %39, 0, !dbg !1564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  br i1 %40, label %41, label %43, !dbg !1565

; <label>:41:                                     ; preds = %34
  %42 = add nsw i64 %39, %38, !dbg !1566
  store i64 %42, i64* %2, align 8, !dbg !1567, !tbaa !161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1568
  br label %43, !dbg !1568

; <label>:43:                                     ; preds = %41, %34
  %44 = phi i64 [ %42, %41 ], [ %39, %34 ]
  %45 = load i64, i64* %3, align 8, !dbg !1569, !tbaa !161
  %46 = icmp slt i64 %45, 0, !dbg !1571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1572
  br i1 %46, label %47, label %49, !dbg !1572

; <label>:47:                                     ; preds = %43
  %48 = add nsw i64 %45, %38, !dbg !1573
  store i64 %48, i64* %3, align 8, !dbg !1574, !tbaa !161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1575
  br label %49, !dbg !1575

; <label>:49:                                     ; preds = %47, %43
  %50 = phi i64 [ %48, %47 ], [ %45, %43 ]
  %51 = icmp slt i64 %44, 0, !dbg !1576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1578
  br i1 %51, label %52, label %53, !dbg !1578

; <label>:52:                                     ; preds = %49
  store i64 0, i64* %2, align 8, !dbg !1579, !tbaa !161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1580
  br label %53, !dbg !1580

; <label>:53:                                     ; preds = %52, %49
  %54 = phi i64 [ 0, %52 ], [ %44, %49 ], !dbg !1581
  %55 = icmp sgt i64 %54, %50, !dbg !1583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1584
  br i1 %55, label %66, label %56, !dbg !1584

; <label>:56:                                     ; preds = %53
  %57 = icmp slt i64 %54, %38, !dbg !1585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1586
  br i1 %57, label %58, label %66, !dbg !1586

; <label>:58:                                     ; preds = %56
  %59 = icmp slt i64 %50, %38, !dbg !1587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1590
  br i1 %59, label %62, label %60, !dbg !1590

; <label>:60:                                     ; preds = %58
  %61 = add nsw i64 %38, -1, !dbg !1591
  store i64 %61, i64* %3, align 8, !dbg !1592, !tbaa !161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1593
  br label %62, !dbg !1593

; <label>:62:                                     ; preds = %58, %60
  %63 = phi i64 [ %50, %58 ], [ %61, %60 ], !dbg !1594
  %64 = xor i64 %63, -1, !dbg !1596
  %65 = add i64 %38, %64, !dbg !1596
  br label %66

; <label>:66:                                     ; preds = %53, %56, %62
  %67 = phi i64 [ %54, %62 ], [ %38, %56 ], [ %38, %53 ], !dbg !1598
  %68 = phi i64 [ %65, %62 ], [ 0, %56 ], [ 0, %53 ], !dbg !1598
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %69 = load i32, i32* %29, align 8, !dbg !1599
  %70 = and i32 %69, 240, !dbg !1599
  %71 = icmp eq i32 %70, 144, !dbg !1601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1602
  br i1 %71, label %72, label %93, !dbg !1602

; <label>:72:                                     ; preds = %66
  %73 = load %struct.quicklist*, %struct.quicklist** %36, align 8, !dbg !1603, !tbaa !122
  %74 = call i32 @quicklistDelRange(%struct.quicklist* %73, i64 0, i64 %67) #6, !dbg !1605
  %75 = load %struct.quicklist*, %struct.quicklist** %36, align 8, !dbg !1606, !tbaa !122
  %76 = sub nsw i64 0, %68, !dbg !1607
  %77 = call i32 @quicklistDelRange(%struct.quicklist* %75, i64 %76, i64 %68) #6, !dbg !1608
  %78 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1609, !tbaa !804
  %79 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %78, i64 1, !dbg !1610
  %80 = load %struct.redisObject*, %struct.redisObject** %79, align 8, !dbg !1610, !tbaa !200
  %81 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1611
  %82 = load %struct.redisDb*, %struct.redisDb** %81, align 8, !dbg !1611, !tbaa !799
  %83 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %82, i64 0, i32 5, !dbg !1612
  %84 = load i32, i32* %83, align 8, !dbg !1612, !tbaa !877
  call void @notifyKeyspaceEvent(i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), %struct.redisObject* %80, i32 %84) #6, !dbg !1613
  %85 = load i32, i32* %29, align 8, !dbg !1617
  %86 = and i32 %85, 240, !dbg !1617
  %87 = icmp eq i32 %86, 144, !dbg !1618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1619
  br i1 %87, label %89, label %88, !dbg !1619

; <label>:88:                                     ; preds = %72
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1620
  call void @_exit(i32 1) #7, !dbg !1620
  unreachable

; <label>:89:                                     ; preds = %72
  %90 = load %struct.quicklist*, %struct.quicklist** %36, align 8, !dbg !1621, !tbaa !122
  %91 = call i64 @quicklistCount(%struct.quicklist* %90) #6, !dbg !1622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1623
  %92 = icmp eq i64 %91, 0, !dbg !1624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1625
  br i1 %92, label %94, label %106, !dbg !1625

; <label>:93:                                     ; preds = %66
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 477, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1626
  call void @_exit(i32 1) #7, !dbg !1626
  unreachable

; <label>:94:                                     ; preds = %89
  %95 = load %struct.redisDb*, %struct.redisDb** %81, align 8, !dbg !1628, !tbaa !799
  %96 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1630, !tbaa !804
  %97 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %96, i64 1, !dbg !1631
  %98 = load %struct.redisObject*, %struct.redisObject** %97, align 8, !dbg !1631, !tbaa !200
  %99 = call i32 @dbDelete(%struct.redisDb* %95, %struct.redisObject* %98) #6, !dbg !1632
  %100 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1633, !tbaa !804
  %101 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %100, i64 1, !dbg !1634
  %102 = load %struct.redisObject*, %struct.redisObject** %101, align 8, !dbg !1634, !tbaa !200
  %103 = load %struct.redisDb*, %struct.redisDb** %81, align 8, !dbg !1635, !tbaa !799
  %104 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %103, i64 0, i32 5, !dbg !1636
  %105 = load i32, i32* %104, align 8, !dbg !1636, !tbaa !877
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), %struct.redisObject* %102, i32 %105) #6, !dbg !1637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1638
  br label %106, !dbg !1638

; <label>:106:                                    ; preds = %94, %89
  %107 = load %struct.redisDb*, %struct.redisDb** %81, align 8, !dbg !1639, !tbaa !799
  %108 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1640, !tbaa !804
  %109 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %108, i64 1, !dbg !1641
  %110 = load %struct.redisObject*, %struct.redisObject** %109, align 8, !dbg !1641, !tbaa !200
  call void @signalModifiedKey(%struct.redisDb* %107, %struct.redisObject* %110) #6, !dbg !1642
  %111 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1643, !tbaa !883
  %112 = add nsw i64 %111, 1, !dbg !1643
  store i64 %112, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1643, !tbaa !883
  %113 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1644, !tbaa !1271
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %113) #6, !dbg !1645
  br label %114, !dbg !1646

; <label>:114:                                    ; preds = %18, %25, %1, %12, %106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1647
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1646
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8, !dbg !1646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1646
  ret void, !dbg !1646
}

; Function Attrs: noredzone
declare dso_local i32 @quicklistDelRange(%struct.quicklist*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lremCommand(%struct.client*) local_unnamed_addr #0 !dbg !1648 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.listTypeEntry, align 8
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1658
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1658, !tbaa !804
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 3, !dbg !1659
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1659, !tbaa !200
  %8 = bitcast i64* %2 to i8*, !dbg !1661
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !1661
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 2, !dbg !1663
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !1663, !tbaa !200
  %11 = call i32 @getLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %10, i64* nonnull %2, i8* null) #6, !dbg !1666
  %12 = icmp eq i32 %11, 0, !dbg !1667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1668
  br i1 %12, label %13, label %147, !dbg !1668

; <label>:13:                                     ; preds = %1
  %14 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1669, !tbaa !804
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 1, !dbg !1670
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !1670, !tbaa !200
  %17 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1671, !tbaa !915
  %18 = call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* nonnull %0, %struct.redisObject* %16, %struct.redisObject* %17) #6, !dbg !1672
  %19 = icmp eq %struct.redisObject* %18, null, !dbg !1674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1676
  br i1 %19, label %147, label %20, !dbg !1676

; <label>:20:                                     ; preds = %13
  %21 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %18, i32 1) #6, !dbg !1677
  %22 = icmp eq i32 %21, 0, !dbg !1677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1678
  br i1 %22, label %23, label %147, !dbg !1678

; <label>:23:                                     ; preds = %20
  %24 = load i64, i64* %2, align 8, !dbg !1679, !tbaa !161
  %25 = icmp slt i64 %24, 0, !dbg !1681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1682
  br i1 %25, label %26, label %46, !dbg !1682

; <label>:26:                                     ; preds = %23
  %27 = sub nsw i64 0, %24, !dbg !1683
  store i64 %27, i64* %2, align 8, !dbg !1685, !tbaa !161
  %28 = call i8* @zmalloc(i64 24) #6, !dbg !1690
  %29 = bitcast i8* %28 to %struct.redisObject**, !dbg !1691
  store %struct.redisObject* %18, %struct.redisObject** %29, align 8, !dbg !1692, !tbaa !282
  %30 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 0, !dbg !1693
  %31 = load i32, i32* %30, align 8, !dbg !1693
  %32 = lshr i32 %31, 4, !dbg !1693
  %33 = trunc i32 %32 to i8, !dbg !1694
  %34 = and i8 %33, 15, !dbg !1694
  %35 = getelementptr inbounds i8, i8* %28, i64 8, !dbg !1695
  store i8 %34, i8* %35, align 8, !dbg !1696, !tbaa !288
  %36 = getelementptr inbounds i8, i8* %28, i64 9, !dbg !1697
  store i8 0, i8* %36, align 1, !dbg !1698, !tbaa !291
  %37 = getelementptr inbounds i8, i8* %28, i64 16, !dbg !1699
  %38 = bitcast i8* %37 to %struct.quicklistIter**, !dbg !1699
  store %struct.quicklistIter* null, %struct.quicklistIter** %38, align 8, !dbg !1700, !tbaa !294
  %39 = icmp eq i8 %34, 9, !dbg !1701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1702
  br i1 %39, label %41, label %40, !dbg !1702

; <label>:40:                                     ; preds = %26
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1703
  call void @_exit(i32 1) #7, !dbg !1703
  unreachable

; <label>:41:                                     ; preds = %26
  %42 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 2, !dbg !1706
  %43 = bitcast i8** %42 to %struct.quicklist**, !dbg !1706
  %44 = load %struct.quicklist*, %struct.quicklist** %43, align 8, !dbg !1706, !tbaa !122
  %45 = call %struct.quicklistIter* @quicklistGetIteratorAtIdx(%struct.quicklist* %44, i32 1, i64 -1) #6, !dbg !1707
  br label %65, !dbg !1709

; <label>:46:                                     ; preds = %23
  %47 = call i8* @zmalloc(i64 24) #6, !dbg !1715
  %48 = bitcast i8* %47 to %struct.redisObject**, !dbg !1716
  store %struct.redisObject* %18, %struct.redisObject** %48, align 8, !dbg !1717, !tbaa !282
  %49 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 0, !dbg !1718
  %50 = load i32, i32* %49, align 8, !dbg !1718
  %51 = lshr i32 %50, 4, !dbg !1718
  %52 = trunc i32 %51 to i8, !dbg !1719
  %53 = and i8 %52, 15, !dbg !1719
  %54 = getelementptr inbounds i8, i8* %47, i64 8, !dbg !1720
  store i8 %53, i8* %54, align 8, !dbg !1721, !tbaa !288
  %55 = getelementptr inbounds i8, i8* %47, i64 9, !dbg !1722
  store i8 1, i8* %55, align 1, !dbg !1723, !tbaa !291
  %56 = getelementptr inbounds i8, i8* %47, i64 16, !dbg !1724
  %57 = bitcast i8* %56 to %struct.quicklistIter**, !dbg !1724
  store %struct.quicklistIter* null, %struct.quicklistIter** %57, align 8, !dbg !1725, !tbaa !294
  %58 = icmp eq i8 %53, 9, !dbg !1726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1727
  br i1 %58, label %60, label %59, !dbg !1727

; <label>:59:                                     ; preds = %46
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1728
  call void @_exit(i32 1) #7, !dbg !1728
  unreachable

; <label>:60:                                     ; preds = %46
  %61 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 2, !dbg !1731
  %62 = bitcast i8** %61 to %struct.quicklist**, !dbg !1731
  %63 = load %struct.quicklist*, %struct.quicklist** %62, align 8, !dbg !1731, !tbaa !122
  %64 = call %struct.quicklistIter* @quicklistGetIteratorAtIdx(%struct.quicklist* %63, i32 0, i64 0) #6, !dbg !1732
  br label %65

; <label>:65:                                     ; preds = %60, %41
  %66 = phi %struct.quicklistIter** [ %57, %60 ], [ %38, %41 ]
  %67 = phi %struct.quicklistIter* [ %64, %60 ], [ %45, %41 ]
  %68 = phi i8* [ %47, %60 ], [ %28, %41 ]
  store %struct.quicklistIter* %67, %struct.quicklistIter** %66, align 8, !dbg !1733, !tbaa !294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1734
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %69 = bitcast i8* %68 to %struct.listTypeIterator*, !dbg !1735
  %70 = bitcast %struct.listTypeEntry* %3 to i8*, !dbg !1736
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %70) #8, !dbg !1736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1737
  %71 = call i32 @listTypeNext(%struct.listTypeIterator* %69, %struct.listTypeEntry* nonnull %3) #9, !dbg !1739
  %72 = icmp eq i32 %71, 0, !dbg !1737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1737
  br i1 %72, label %73, label %75, !dbg !1737

; <label>:73:                                     ; preds = %65
  %74 = getelementptr inbounds i8, i8* %68, i64 16, !dbg !1740
  br label %103, !dbg !1737

; <label>:75:                                     ; preds = %65
  %76 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %3, i64 0, i32 0
  %77 = getelementptr inbounds i8, i8* %68, i64 16
  %78 = bitcast i8* %77 to %struct.quicklistIter**
  %79 = getelementptr inbounds %struct.listTypeEntry, %struct.listTypeEntry* %3, i64 0, i32 1
  br label %80, !dbg !1737

; <label>:80:                                     ; preds = %75, %99
  %81 = phi i64 [ 0, %75 ], [ %100, %99 ]
  %82 = call i32 @listTypeEqual(%struct.listTypeEntry* nonnull %3, %struct.redisObject* %7) #9, !dbg !1742
  %83 = icmp eq i32 %82, 0, !dbg !1742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1745
  br i1 %83, label %99, label %84, !dbg !1745

; <label>:84:                                     ; preds = %80
  %85 = load %struct.listTypeIterator*, %struct.listTypeIterator** %76, align 8, !dbg !1750, !tbaa !347
  %86 = getelementptr inbounds %struct.listTypeIterator, %struct.listTypeIterator* %85, i64 0, i32 1, !dbg !1751
  %87 = load i8, i8* %86, align 8, !dbg !1751, !tbaa !288
  %88 = icmp eq i8 %87, 9, !dbg !1752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1753
  br i1 %88, label %90, label %89, !dbg !1753

; <label>:89:                                     ; preds = %84
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 174, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1754
  call void @_exit(i32 1) #7, !dbg !1754
  unreachable

; <label>:90:                                     ; preds = %84
  %91 = load %struct.quicklistIter*, %struct.quicklistIter** %78, align 8, !dbg !1755, !tbaa !294
  call void @quicklistDelEntry(%struct.quicklistIter* %91, %struct.quicklistEntry* nonnull %79) #6, !dbg !1756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1757
  %92 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1758, !tbaa !883
  %93 = add nsw i64 %92, 1, !dbg !1758
  store i64 %93, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1758, !tbaa !883
  %94 = add nsw i64 %81, 1, !dbg !1759
  %95 = load i64, i64* %2, align 8, !dbg !1760, !tbaa !161
  %96 = icmp eq i64 %95, 0, !dbg !1760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1762
  br i1 %96, label %99, label %97, !dbg !1762

; <label>:97:                                     ; preds = %90
  %98 = icmp eq i64 %94, %95, !dbg !1763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1764
  br i1 %98, label %103, label %99, !dbg !1764

; <label>:99:                                     ; preds = %90, %80, %97
  %100 = phi i64 [ %94, %97 ], [ %94, %90 ], [ %81, %80 ], !dbg !1765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1737
  %101 = call i32 @listTypeNext(%struct.listTypeIterator* %69, %struct.listTypeEntry* nonnull %3) #9, !dbg !1739
  %102 = icmp eq i32 %101, 0, !dbg !1737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1737
  br i1 %102, label %103, label %80, !dbg !1737, !llvm.loop !1766

; <label>:103:                                    ; preds = %97, %99, %73
  %104 = phi i8* [ %74, %73 ], [ %77, %99 ], [ %77, %97 ], !dbg !1740
  %105 = phi i64 [ 0, %73 ], [ %94, %97 ], [ %100, %99 ], !dbg !1765
  %106 = bitcast i8* %104 to i8**, !dbg !1740
  %107 = load i8*, i8** %106, align 8, !dbg !1740, !tbaa !294
  call void @zfree(i8* %107) #6, !dbg !1769
  call void @zfree(i8* %68) #6, !dbg !1770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1771
  %108 = icmp eq i64 %105, 0, !dbg !1772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1774
  br i1 %108, label %121, label %109, !dbg !1774

; <label>:109:                                    ; preds = %103
  %110 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1775
  %111 = load %struct.redisDb*, %struct.redisDb** %110, align 8, !dbg !1775, !tbaa !799
  %112 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1777, !tbaa !804
  %113 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %112, i64 1, !dbg !1778
  %114 = load %struct.redisObject*, %struct.redisObject** %113, align 8, !dbg !1778, !tbaa !200
  call void @signalModifiedKey(%struct.redisDb* %111, %struct.redisObject* %114) #6, !dbg !1779
  %115 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1780, !tbaa !804
  %116 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %115, i64 1, !dbg !1781
  %117 = load %struct.redisObject*, %struct.redisObject** %116, align 8, !dbg !1781, !tbaa !200
  %118 = load %struct.redisDb*, %struct.redisDb** %110, align 8, !dbg !1782, !tbaa !799
  %119 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %118, i64 0, i32 5, !dbg !1783
  %120 = load i32, i32* %119, align 8, !dbg !1783, !tbaa !877
  call void @notifyKeyspaceEvent(i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %struct.redisObject* %117, i32 %120) #6, !dbg !1784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1785
  br label %121, !dbg !1785

; <label>:121:                                    ; preds = %103, %109
  %122 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 0, !dbg !1789
  %123 = load i32, i32* %122, align 8, !dbg !1789
  %124 = and i32 %123, 240, !dbg !1789
  %125 = icmp eq i32 %124, 144, !dbg !1790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1791
  br i1 %125, label %127, label %126, !dbg !1791

; <label>:126:                                    ; preds = %121
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1792
  call void @_exit(i32 1) #7, !dbg !1792
  unreachable

; <label>:127:                                    ; preds = %121
  %128 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 2, !dbg !1793
  %129 = bitcast i8** %128 to %struct.quicklist**, !dbg !1793
  %130 = load %struct.quicklist*, %struct.quicklist** %129, align 8, !dbg !1793, !tbaa !122
  %131 = call i64 @quicklistCount(%struct.quicklist* %130) #6, !dbg !1794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1795
  %132 = icmp eq i64 %131, 0, !dbg !1796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1797
  br i1 %132, label %133, label %146, !dbg !1797

; <label>:133:                                    ; preds = %127
  %134 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1798
  %135 = load %struct.redisDb*, %struct.redisDb** %134, align 8, !dbg !1798, !tbaa !799
  %136 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1800, !tbaa !804
  %137 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %136, i64 1, !dbg !1801
  %138 = load %struct.redisObject*, %struct.redisObject** %137, align 8, !dbg !1801, !tbaa !200
  %139 = call i32 @dbDelete(%struct.redisDb* %135, %struct.redisObject* %138) #6, !dbg !1802
  %140 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1803, !tbaa !804
  %141 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %140, i64 1, !dbg !1804
  %142 = load %struct.redisObject*, %struct.redisObject** %141, align 8, !dbg !1804, !tbaa !200
  %143 = load %struct.redisDb*, %struct.redisDb** %134, align 8, !dbg !1805, !tbaa !799
  %144 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %143, i64 0, i32 5, !dbg !1806
  %145 = load i32, i32* %144, align 8, !dbg !1806, !tbaa !877
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), %struct.redisObject* %142, i32 %145) #6, !dbg !1807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1808
  br label %146, !dbg !1808

; <label>:146:                                    ; preds = %133, %127
  call void @addReplyLongLong(%struct.client* %0, i64 %105) #6, !dbg !1809
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %70) #8, !dbg !1810
  br label %147, !dbg !1810

; <label>:147:                                    ; preds = %13, %20, %1, %146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1811
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !1810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1810
  ret void, !dbg !1810
}

; Function Attrs: noredzone nounwind
define dso_local void @rpoplpushHandlePush(%struct.client*, %struct.redisObject*, %struct.redisObject* readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !1812 {
  %5 = icmp eq %struct.redisObject* %2, null, !dbg !1824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1826
  br i1 %5, label %8, label %6, !dbg !1826

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1827
  br label %17, !dbg !1826

; <label>:8:                                      ; preds = %4
  %9 = tail call %struct.redisObject* @createQuicklistObject() #6, !dbg !1828
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %9, i64 0, i32 2, !dbg !1830
  %11 = bitcast i8** %10 to %struct.quicklist**, !dbg !1830
  %12 = load %struct.quicklist*, %struct.quicklist** %11, align 8, !dbg !1830, !tbaa !122
  %13 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 249), align 8, !dbg !1831, !tbaa !541
  %14 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 250), align 4, !dbg !1832, !tbaa !548
  tail call void @quicklistSetOptions(%struct.quicklist* %12, i32 %13, i32 %14) #6, !dbg !1833
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1834
  %16 = load %struct.redisDb*, %struct.redisDb** %15, align 8, !dbg !1834, !tbaa !799
  tail call void @dbAdd(%struct.redisDb* %16, %struct.redisObject* %1, %struct.redisObject* %9) #6, !dbg !1835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1836
  br label %17, !dbg !1836

; <label>:17:                                     ; preds = %6, %8
  %18 = phi %struct.redisDb** [ %7, %6 ], [ %15, %8 ], !dbg !1827
  %19 = phi %struct.redisObject* [ %2, %6 ], [ %9, %8 ]
  %20 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !1827, !tbaa !799
  tail call void @signalModifiedKey(%struct.redisDb* %20, %struct.redisObject* %1) #6, !dbg !1837
  tail call void @listTypePush(%struct.redisObject* %19, %struct.redisObject* %3, i32 0) #9, !dbg !1838
  %21 = load %struct.redisDb*, %struct.redisDb** %18, align 8, !dbg !1839, !tbaa !799
  %22 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %21, i64 0, i32 5, !dbg !1840
  %23 = load i32, i32* %22, align 8, !dbg !1840, !tbaa !877
  tail call void @notifyKeyspaceEvent(i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), %struct.redisObject* %1, i32 %23) #6, !dbg !1841
  tail call void @addReplyBulk(%struct.client* %0, %struct.redisObject* %3) #6, !dbg !1842
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1843
  ret void, !dbg !1843
}

; Function Attrs: noredzone nounwind
define dso_local void @rpoplpushCommand(%struct.client*) local_unnamed_addr #0 !dbg !1844 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1854
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1854, !tbaa !804
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !1856
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !1856, !tbaa !200
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1857, !tbaa !1142
  %7 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #6, !dbg !1858
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !1860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1861
  br i1 %8, label %81, label %9, !dbg !1861

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 1) #6, !dbg !1862
  %11 = icmp eq i32 %10, 0, !dbg !1862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1863
  br i1 %11, label %12, label %81, !dbg !1863

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 0, !dbg !1866
  %14 = load i32, i32* %13, align 8, !dbg !1866
  %15 = and i32 %14, 240, !dbg !1866
  %16 = icmp eq i32 %15, 144, !dbg !1867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1868
  br i1 %16, label %18, label %17, !dbg !1868

; <label>:17:                                     ; preds = %12
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1869
  tail call void @_exit(i32 1) #7, !dbg !1869
  unreachable

; <label>:18:                                     ; preds = %12
  %19 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !1870
  %20 = bitcast i8** %19 to %struct.quicklist**, !dbg !1870
  %21 = load %struct.quicklist*, %struct.quicklist** %20, align 8, !dbg !1870, !tbaa !122
  %22 = tail call i64 @quicklistCount(%struct.quicklist* %21) #6, !dbg !1871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1872
  %23 = icmp eq i64 %22, 0, !dbg !1873
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1874
  br i1 %23, label %24, label %26, !dbg !1874

; <label>:24:                                     ; preds = %18
  %25 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1875, !tbaa !1142
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %25) #6, !dbg !1877
  br label %80, !dbg !1878

; <label>:26:                                     ; preds = %18
  %27 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1879
  %28 = load %struct.redisDb*, %struct.redisDb** %27, align 8, !dbg !1879, !tbaa !799
  %29 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1880, !tbaa !804
  %30 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %29, i64 2, !dbg !1881
  %31 = load %struct.redisObject*, %struct.redisObject** %30, align 8, !dbg !1881, !tbaa !200
  %32 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %28, %struct.redisObject* %31) #6, !dbg !1882
  %33 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1884, !tbaa !804
  %34 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %33, i64 1, !dbg !1885
  %35 = load %struct.redisObject*, %struct.redisObject** %34, align 8, !dbg !1885, !tbaa !200
  %36 = icmp eq %struct.redisObject* %32, null, !dbg !1887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1889
  br i1 %36, label %41, label %37, !dbg !1889

; <label>:37:                                     ; preds = %26
  %38 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %32, i32 1) #6, !dbg !1890
  %39 = icmp eq i32 %38, 0, !dbg !1890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1891
  br i1 %39, label %41, label %40, !dbg !1891

; <label>:40:                                     ; preds = %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1892
  br label %81

; <label>:41:                                     ; preds = %37, %26
  %42 = tail call %struct.redisObject* @listTypePop(%struct.redisObject* nonnull %7, i32 1) #9, !dbg !1893
  tail call void @incrRefCount(%struct.redisObject* %35) #6, !dbg !1895
  %43 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1896, !tbaa !804
  %44 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %43, i64 2, !dbg !1897
  %45 = load %struct.redisObject*, %struct.redisObject** %44, align 8, !dbg !1897, !tbaa !200
  tail call void @rpoplpushHandlePush(%struct.client* nonnull %0, %struct.redisObject* %45, %struct.redisObject* %32, %struct.redisObject* %42) #9, !dbg !1898
  tail call void @decrRefCount(%struct.redisObject* %42) #6, !dbg !1899
  %46 = load %struct.redisDb*, %struct.redisDb** %27, align 8, !dbg !1900, !tbaa !799
  %47 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %46, i64 0, i32 5, !dbg !1901
  %48 = load i32, i32* %47, align 8, !dbg !1901, !tbaa !877
  tail call void @notifyKeyspaceEvent(i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), %struct.redisObject* %35, i32 %48) #6, !dbg !1902
  %49 = load i32, i32* %13, align 8, !dbg !1906
  %50 = and i32 %49, 240, !dbg !1906
  %51 = icmp eq i32 %50, 144, !dbg !1907
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1908
  br i1 %51, label %53, label %52, !dbg !1908

; <label>:52:                                     ; preds = %41
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1909
  tail call void @_exit(i32 1) #7, !dbg !1909
  unreachable

; <label>:53:                                     ; preds = %41
  %54 = load %struct.quicklist*, %struct.quicklist** %20, align 8, !dbg !1910, !tbaa !122
  %55 = tail call i64 @quicklistCount(%struct.quicklist* %54) #6, !dbg !1911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1912
  %56 = icmp eq i64 %55, 0, !dbg !1913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1914
  br i1 %56, label %57, label %63, !dbg !1914

; <label>:57:                                     ; preds = %53
  %58 = load %struct.redisDb*, %struct.redisDb** %27, align 8, !dbg !1915, !tbaa !799
  %59 = tail call i32 @dbDelete(%struct.redisDb* %58, %struct.redisObject* %35) #6, !dbg !1917
  %60 = load %struct.redisDb*, %struct.redisDb** %27, align 8, !dbg !1918, !tbaa !799
  %61 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %60, i64 0, i32 5, !dbg !1919
  %62 = load i32, i32* %61, align 8, !dbg !1919, !tbaa !877
  tail call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), %struct.redisObject* %35, i32 %62) #6, !dbg !1920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1921
  br label %63, !dbg !1921

; <label>:63:                                     ; preds = %57, %53
  %64 = load %struct.redisDb*, %struct.redisDb** %27, align 8, !dbg !1922, !tbaa !799
  tail call void @signalModifiedKey(%struct.redisDb* %64, %struct.redisObject* %35) #6, !dbg !1923
  tail call void @decrRefCount(%struct.redisObject* %35) #6, !dbg !1924
  %65 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1925, !tbaa !883
  %66 = add nsw i64 %65, 1, !dbg !1925
  store i64 %66, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1925, !tbaa !883
  %67 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10, !dbg !1926
  %68 = load %struct.redisCommand*, %struct.redisCommand** %67, align 8, !dbg !1926, !tbaa !1928
  %69 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %68, i64 0, i32 1, !dbg !1929
  %70 = load void (%struct.client*)*, void (%struct.client*)** %69, align 8, !dbg !1929, !tbaa !1930
  %71 = icmp eq void (%struct.client*)* %70, @brpoplpushCommand, !dbg !1932
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1933
  br i1 %71, label %72, label %79, !dbg !1933

; <label>:72:                                     ; preds = %63
  %73 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 42), align 8, !dbg !1934, !tbaa !1936
  %74 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !1937, !tbaa !804
  %75 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %74, i64 1, !dbg !1938
  %76 = load %struct.redisObject*, %struct.redisObject** %75, align 8, !dbg !1938, !tbaa !200
  %77 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %74, i64 2, !dbg !1939
  %78 = load %struct.redisObject*, %struct.redisObject** %77, align 8, !dbg !1939, !tbaa !200
  tail call void (%struct.client*, i32, ...) @rewriteClientCommandVector(%struct.client* nonnull %0, i32 3, %struct.redisObject* %73, %struct.redisObject* %76, %struct.redisObject* %78) #6, !dbg !1940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1941
  br label %79, !dbg !1941

; <label>:79:                                     ; preds = %72, %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1942
  br label %80

; <label>:80:                                     ; preds = %79, %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %81, !dbg !1943

; <label>:81:                                     ; preds = %1, %9, %40, %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1943
  ret void, !dbg !1943
}

; Function Attrs: noredzone
declare dso_local void @incrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @brpoplpushCommand(%struct.client*) #0 !dbg !1944 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !1950
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !1950
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1951
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1951, !tbaa !804
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 3, !dbg !1953
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1953, !tbaa !200
  %8 = call i32 @getTimeoutFromObjectOrReply(%struct.client* %0, %struct.redisObject* %7, i64* nonnull %2, i32 0) #6, !dbg !1955
  %9 = icmp eq i32 %8, 0, !dbg !1956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1957
  br i1 %9, label %10, label %51, !dbg !1957

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1958
  %12 = load %struct.redisDb*, %struct.redisDb** %11, align 8, !dbg !1958, !tbaa !799
  %13 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1959, !tbaa !804
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 1, !dbg !1960
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !1960, !tbaa !200
  %16 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %12, %struct.redisObject* %15) #6, !dbg !1961
  %17 = icmp eq %struct.redisObject* %16, null, !dbg !1963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1965
  br i1 %17, label %18, label %31, !dbg !1965

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1966
  %20 = load i32, i32* %19, align 8, !dbg !1966, !tbaa !1969
  %21 = and i32 %20, 8, !dbg !1970
  %22 = icmp eq i32 %21, 0, !dbg !1970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1971
  br i1 %22, label %25, label %23, !dbg !1971

; <label>:23:                                     ; preds = %18
  %24 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1972, !tbaa !1142
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %24) #6, !dbg !1974
  br label %50, !dbg !1975

; <label>:25:                                     ; preds = %18
  %26 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1976, !tbaa !804
  %27 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 1, !dbg !1978
  %28 = load i64, i64* %2, align 8, !dbg !1979, !tbaa !219
  %29 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 2, !dbg !1980
  %30 = load %struct.redisObject*, %struct.redisObject** %29, align 8, !dbg !1980, !tbaa !200
  call void @blockForKeys(%struct.client* nonnull %0, i32 1, %struct.redisObject** nonnull %27, i32 1, i64 %28, %struct.redisObject* %30, %struct.streamID* null) #6, !dbg !1981
  br label %50

; <label>:31:                                     ; preds = %10
  %32 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %16, i64 0, i32 0, !dbg !1982
  %33 = load i32, i32* %32, align 8, !dbg !1982
  %34 = and i32 %33, 15, !dbg !1982
  %35 = icmp eq i32 %34, 1, !dbg !1985
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1986
  br i1 %35, label %38, label %36, !dbg !1986

; <label>:36:                                     ; preds = %31
  %37 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !1987, !tbaa !816
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %37) #6, !dbg !1989
  br label %50, !dbg !1990

; <label>:38:                                     ; preds = %31
  %39 = and i32 %33, 240, !dbg !1994
  %40 = icmp eq i32 %39, 144, !dbg !1995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1996
  br i1 %40, label %42, label %41, !dbg !1996

; <label>:41:                                     ; preds = %38
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1997
  call void @_exit(i32 1) #7, !dbg !1997
  unreachable

; <label>:42:                                     ; preds = %38
  %43 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %16, i64 0, i32 2, !dbg !1998
  %44 = bitcast i8** %43 to %struct.quicklist**, !dbg !1998
  %45 = load %struct.quicklist*, %struct.quicklist** %44, align 8, !dbg !1998, !tbaa !122
  %46 = call i64 @quicklistCount(%struct.quicklist* %45) #6, !dbg !1999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2000
  %47 = icmp eq i64 %46, 0, !dbg !2001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2001
  br i1 %47, label %48, label %49, !dbg !2001

; <label>:48:                                     ; preds = %42
  call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* nonnull %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 773) #6, !dbg !2001
  call void @_exit(i32 1) #7, !dbg !2001
  unreachable

; <label>:49:                                     ; preds = %42
  call void @rpoplpushCommand(%struct.client* nonnull %0) #9, !dbg !2002
  br label %50

; <label>:50:                                     ; preds = %36, %49, %23, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %51, !dbg !2003

; <label>:51:                                     ; preds = %1, %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2004
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !2003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2003
  ret void, !dbg !2003
}

; Function Attrs: noredzone
declare dso_local void @rewriteClientCommandVector(%struct.client*, i32, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @serveClientBlockedOnList(%struct.client*, %struct.redisObject*, %struct.redisObject*, %struct.redisDb* nocapture readonly, %struct.redisObject*, i32) local_unnamed_addr #0 !dbg !2005 {
  %7 = alloca [3 x %struct.redisObject*], align 16
  %8 = bitcast [3 x %struct.redisObject*]* %7 to i8*, !dbg !2030
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #8, !dbg !2030
  %9 = icmp eq %struct.redisObject* %2, null, !dbg !2032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2033
  br i1 %9, label %10, label %27, !dbg !2033

; <label>:10:                                     ; preds = %6
  %11 = icmp eq i32 %5, 0, !dbg !2034
  %12 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 40), align 8, !dbg !2035
  %13 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 39), align 8, !dbg !2036
  %14 = select i1 %11, %struct.redisObject* %12, %struct.redisObject* %13, !dbg !2037
  %15 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %7, i64 0, i64 0, !dbg !2038
  store %struct.redisObject* %14, %struct.redisObject** %15, align 16, !dbg !2039, !tbaa !200
  %16 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %7, i64 0, i64 1, !dbg !2040
  store %struct.redisObject* %1, %struct.redisObject** %16, align 8, !dbg !2041, !tbaa !200
  %17 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 59), align 8, !dbg !2042
  %18 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 60), align 8, !dbg !2043
  %19 = select i1 %11, %struct.redisCommand* %17, %struct.redisCommand* %18, !dbg !2044
  %20 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %3, i64 0, i32 5, !dbg !2045
  %21 = load i32, i32* %20, align 8, !dbg !2045, !tbaa !877
  call void @propagate(%struct.redisCommand* %19, i32 %21, %struct.redisObject** nonnull %15, i32 2, i32 3) #6, !dbg !2046
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 2) #6, !dbg !2047
  call void @addReplyBulk(%struct.client* %0, %struct.redisObject* %1) #6, !dbg !2048
  call void @addReplyBulk(%struct.client* %0, %struct.redisObject* %4) #6, !dbg !2049
  %22 = select i1 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), !dbg !2050
  %23 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2052
  %24 = load %struct.redisDb*, %struct.redisDb** %23, align 8, !dbg !2052, !tbaa !799
  %25 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %24, i64 0, i32 5, !dbg !2053
  %26 = load i32, i32* %25, align 8, !dbg !2053, !tbaa !877
  call void @notifyKeyspaceEvent(i32 16, i8* %22, %struct.redisObject* %1, i32 %26) #6, !dbg !2054
  br label %50, !dbg !2055

; <label>:27:                                     ; preds = %6
  %28 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2056
  %29 = load %struct.redisDb*, %struct.redisDb** %28, align 8, !dbg !2056, !tbaa !799
  %30 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %29, %struct.redisObject* nonnull %2) #6, !dbg !2057
  %31 = icmp eq %struct.redisObject* %30, null, !dbg !2059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  br i1 %31, label %35, label %32, !dbg !2061

; <label>:32:                                     ; preds = %27
  %33 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %30, i32 1) #6, !dbg !2062
  %34 = icmp eq i32 %33, 0, !dbg !2062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2063
  br i1 %34, label %35, label %50, !dbg !2063

; <label>:35:                                     ; preds = %32, %27
  %36 = load i64, i64* bitcast (%struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 39) to i64*), align 8, !dbg !2064, !tbaa !2066
  %37 = bitcast [3 x %struct.redisObject*]* %7 to i64*, !dbg !2067
  store i64 %36, i64* %37, align 16, !dbg !2067, !tbaa !200
  %38 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %7, i64 0, i64 1, !dbg !2068
  store %struct.redisObject* %1, %struct.redisObject** %38, align 8, !dbg !2069, !tbaa !200
  %39 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 60), align 8, !dbg !2070, !tbaa !2071
  %40 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %3, i64 0, i32 5, !dbg !2072
  %41 = load i32, i32* %40, align 8, !dbg !2072, !tbaa !877
  %42 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %7, i64 0, i64 0, !dbg !2073
  call void @propagate(%struct.redisCommand* %39, i32 %41, %struct.redisObject** nonnull %42, i32 2, i32 3) #6, !dbg !2074
  call void @rpoplpushHandlePush(%struct.client* nonnull %0, %struct.redisObject* nonnull %2, %struct.redisObject* %30, %struct.redisObject* %4) #9, !dbg !2075
  %43 = load i64, i64* bitcast (%struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 41) to i64*), align 8, !dbg !2076, !tbaa !2077
  store i64 %43, i64* %37, align 16, !dbg !2078, !tbaa !200
  store %struct.redisObject* %2, %struct.redisObject** %38, align 8, !dbg !2079, !tbaa !200
  %44 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %7, i64 0, i64 2, !dbg !2080
  store %struct.redisObject* %4, %struct.redisObject** %44, align 16, !dbg !2081, !tbaa !200
  %45 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 58), align 8, !dbg !2082, !tbaa !2083
  %46 = load i32, i32* %40, align 8, !dbg !2084, !tbaa !877
  call void @propagate(%struct.redisCommand* %45, i32 %46, %struct.redisObject** nonnull %42, i32 3, i32 3) #6, !dbg !2085
  %47 = load %struct.redisDb*, %struct.redisDb** %28, align 8, !dbg !2086, !tbaa !799
  %48 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %47, i64 0, i32 5, !dbg !2087
  %49 = load i32, i32* %48, align 8, !dbg !2087, !tbaa !877
  call void @notifyKeyspaceEvent(i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), %struct.redisObject* %1, i32 %49) #6, !dbg !2088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2089
  br label %50

; <label>:50:                                     ; preds = %10, %35, %32
  %51 = phi i32 [ -1, %32 ], [ 0, %35 ], [ 0, %10 ], !dbg !2090
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #8, !dbg !2092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2092
  ret i32 %51, !dbg !2092
}

; Function Attrs: noredzone
declare dso_local void @propagate(%struct.redisCommand*, i32, %struct.redisObject**, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @blockingPopGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !2093 {
  %3 = alloca i64, align 8
  %4 = bitcast i64* %3 to i8*, !dbg !2113
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8, !dbg !2113
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2114
  %6 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !2114, !tbaa !804
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2116
  %8 = load i32, i32* %7, align 8, !dbg !2116, !tbaa !825
  %9 = add nsw i32 %8, -1, !dbg !2117
  %10 = sext i32 %9 to i64, !dbg !2118
  %11 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 %10, !dbg !2118
  %12 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !2118, !tbaa !200
  %13 = call i32 @getTimeoutFromObjectOrReply(%struct.client* %0, %struct.redisObject* %12, i64* nonnull %3, i32 0) #6, !dbg !2120
  %14 = icmp eq i32 %13, 0, !dbg !2121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2123
  br i1 %14, label %15, label %117, !dbg !2122

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* %7, align 8, !dbg !2125, !tbaa !825
  %17 = icmp sgt i32 %16, 2, !dbg !2126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2127
  br i1 %17, label %18, label %103, !dbg !2127

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  br label %20, !dbg !2127

; <label>:20:                                     ; preds = %18, %97
  %21 = phi i64 [ 1, %18 ], [ %98, %97 ]
  %22 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !2128, !tbaa !799
  %23 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !2129, !tbaa !804
  %24 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %23, i64 %21, !dbg !2130
  %25 = load %struct.redisObject*, %struct.redisObject** %24, align 8, !dbg !2130, !tbaa !200
  %26 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %22, %struct.redisObject* %25) #6, !dbg !2131
  %27 = icmp eq %struct.redisObject* %26, null, !dbg !2133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2134
  br i1 %27, label %97, label %28, !dbg !2134

; <label>:28:                                     ; preds = %20
  %29 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %26, i64 0, i32 0, !dbg !2135
  %30 = load i32, i32* %29, align 8, !dbg !2135
  %31 = and i32 %30, 15, !dbg !2135
  %32 = icmp eq i32 %31, 1, !dbg !2136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2137
  br i1 %32, label %35, label %33, !dbg !2137

; <label>:33:                                     ; preds = %28
  %34 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !2138, !tbaa !816
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %34) #6, !dbg !2140
  br label %116, !dbg !2141

; <label>:35:                                     ; preds = %28
  %36 = and i32 %30, 240, !dbg !2144
  %37 = icmp eq i32 %36, 144, !dbg !2145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2146
  br i1 %37, label %39, label %38, !dbg !2146

; <label>:38:                                     ; preds = %35
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2147
  call void @_exit(i32 1) #7, !dbg !2147
  unreachable

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %26, i64 0, i32 2, !dbg !2148
  %41 = bitcast i8** %40 to %struct.quicklist**, !dbg !2148
  %42 = load %struct.quicklist*, %struct.quicklist** %41, align 8, !dbg !2148, !tbaa !122
  %43 = call i64 @quicklistCount(%struct.quicklist* %42) #6, !dbg !2149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2150
  %44 = icmp eq i64 %43, 0, !dbg !2151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2152
  br i1 %44, label %97, label %45, !dbg !2152

; <label>:45:                                     ; preds = %39
  %46 = bitcast i8** %40 to %struct.quicklist**, !dbg !2148
  %47 = and i64 %21, 4294967295, !dbg !2130
  %48 = icmp eq i32 %1, 0, !dbg !2153
  %49 = call %struct.redisObject* @listTypePop(%struct.redisObject* nonnull %26, i32 %1) #9, !dbg !2154
  %50 = icmp eq %struct.redisObject* %49, null, !dbg !2156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2156
  br i1 %50, label %51, label %52, !dbg !2156

; <label>:51:                                     ; preds = %45
  call void @_serverAssert(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 705) #6, !dbg !2156
  call void @_exit(i32 1) #7, !dbg !2156
  unreachable

; <label>:52:                                     ; preds = %45
  %53 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %26, i64 0, i32 0, !dbg !2135
  %54 = select i1 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), !dbg !2157
  call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 2) #6, !dbg !2159
  %55 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !2160, !tbaa !804
  %56 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %55, i64 %47, !dbg !2161
  %57 = load %struct.redisObject*, %struct.redisObject** %56, align 8, !dbg !2161, !tbaa !200
  call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %57) #6, !dbg !2162
  call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* nonnull %49) #6, !dbg !2163
  call void @decrRefCount(%struct.redisObject* nonnull %49) #6, !dbg !2164
  %58 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !2165, !tbaa !804
  %59 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %58, i64 %47, !dbg !2166
  %60 = load %struct.redisObject*, %struct.redisObject** %59, align 8, !dbg !2166, !tbaa !200
  %61 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !2167, !tbaa !799
  %62 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %61, i64 0, i32 5, !dbg !2168
  %63 = load i32, i32* %62, align 8, !dbg !2168, !tbaa !877
  call void @notifyKeyspaceEvent(i32 16, i8* %54, %struct.redisObject* %60, i32 %63) #6, !dbg !2169
  %64 = load i32, i32* %53, align 8, !dbg !2173
  %65 = and i32 %64, 240, !dbg !2173
  %66 = icmp eq i32 %65, 144, !dbg !2174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2175
  br i1 %66, label %68, label %67, !dbg !2175

; <label>:67:                                     ; preds = %52
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2176
  call void @_exit(i32 1) #7, !dbg !2176
  unreachable

; <label>:68:                                     ; preds = %52
  %69 = load %struct.quicklist*, %struct.quicklist** %46, align 8, !dbg !2177, !tbaa !122
  %70 = call i64 @quicklistCount(%struct.quicklist* %69) #6, !dbg !2178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2179
  %71 = icmp eq i64 %70, 0, !dbg !2180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2181
  br i1 %71, label %72, label %84, !dbg !2181

; <label>:72:                                     ; preds = %68
  %73 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !2182, !tbaa !799
  %74 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !2184, !tbaa !804
  %75 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %74, i64 %47, !dbg !2185
  %76 = load %struct.redisObject*, %struct.redisObject** %75, align 8, !dbg !2185, !tbaa !200
  %77 = call i32 @dbDelete(%struct.redisDb* %73, %struct.redisObject* %76) #6, !dbg !2186
  %78 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !2187, !tbaa !804
  %79 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %78, i64 %47, !dbg !2188
  %80 = load %struct.redisObject*, %struct.redisObject** %79, align 8, !dbg !2188, !tbaa !200
  %81 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !2189, !tbaa !799
  %82 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %81, i64 0, i32 5, !dbg !2190
  %83 = load i32, i32* %82, align 8, !dbg !2190, !tbaa !877
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), %struct.redisObject* %80, i32 %83) #6, !dbg !2191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2192
  br label %84, !dbg !2192

; <label>:84:                                     ; preds = %72, %68
  %85 = load %struct.redisDb*, %struct.redisDb** %19, align 8, !dbg !2193, !tbaa !799
  %86 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !2194, !tbaa !804
  %87 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %86, i64 %47, !dbg !2195
  %88 = load %struct.redisObject*, %struct.redisObject** %87, align 8, !dbg !2195, !tbaa !200
  call void @signalModifiedKey(%struct.redisDb* %85, %struct.redisObject* %88) #6, !dbg !2196
  %89 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2197, !tbaa !883
  %90 = add nsw i64 %89, 1, !dbg !2197
  store i64 %90, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2197, !tbaa !883
  %91 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 40), align 8, !dbg !2198
  %92 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 39), align 8, !dbg !2199
  %93 = select i1 %48, %struct.redisObject* %91, %struct.redisObject* %92, !dbg !2200
  %94 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !2201, !tbaa !804
  %95 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %94, i64 %47, !dbg !2202
  %96 = load %struct.redisObject*, %struct.redisObject** %95, align 8, !dbg !2202, !tbaa !200
  call void (%struct.client*, i32, ...) @rewriteClientCommandVector(%struct.client* nonnull %0, i32 2, %struct.redisObject* %93, %struct.redisObject* %96) #6, !dbg !2203
  br label %116

; <label>:97:                                     ; preds = %39, %20
  %98 = add nuw nsw i64 %21, 1, !dbg !2204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2205
  %99 = load i32, i32* %7, align 8, !dbg !2125, !tbaa !825
  %100 = add nsw i32 %99, -1, !dbg !2206
  %101 = sext i32 %100 to i64, !dbg !2126
  %102 = icmp slt i64 %98, %101, !dbg !2126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2127
  br i1 %102, label %20, label %103, !dbg !2127, !llvm.loop !2207

; <label>:103:                                    ; preds = %97, %15
  %104 = phi i32 [ %16, %15 ], [ %99, %97 ], !dbg !2125
  %105 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2209
  %106 = load i32, i32* %105, align 8, !dbg !2209, !tbaa !1969
  %107 = and i32 %106, 8, !dbg !2211
  %108 = icmp eq i32 %107, 0, !dbg !2211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2212
  br i1 %108, label %111, label %109, !dbg !2212

; <label>:109:                                    ; preds = %103
  %110 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !2213, !tbaa !2215
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %110) #6, !dbg !2216
  br label %116, !dbg !2217

; <label>:111:                                    ; preds = %103
  %112 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !2218, !tbaa !804
  %113 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %112, i64 1, !dbg !2219
  %114 = add nsw i32 %104, -2, !dbg !2220
  %115 = load i64, i64* %3, align 8, !dbg !2221, !tbaa !219
  call void @blockForKeys(%struct.client* nonnull %0, i32 1, %struct.redisObject** nonnull %113, i32 %114, i64 %115, %struct.redisObject* null, %struct.streamID* null) #6, !dbg !2222
  br label %116, !dbg !2223

; <label>:116:                                    ; preds = %33, %84, %109, %111
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %117, !dbg !2223

; <label>:117:                                    ; preds = %116, %2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8, !dbg !2223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2223
  ret void, !dbg !2223
}

; Function Attrs: noredzone
declare dso_local i32 @getTimeoutFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @blockForKeys(%struct.client*, i32, %struct.redisObject**, i32, i64, %struct.redisObject*, %struct.streamID*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @blpopCommand(%struct.client*) local_unnamed_addr #0 !dbg !2224 {
  tail call void @blockingPopGenericCommand(%struct.client* %0, i32 0) #9, !dbg !2228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2229
  ret void, !dbg !2229
}

; Function Attrs: noredzone nounwind
define dso_local void @brpopCommand(%struct.client*) local_unnamed_addr #0 !dbg !2230 {
  tail call void @blockingPopGenericCommand(%struct.client* %0, i32 1) #9, !dbg !2234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2235
  ret void, !dbg !2235
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
!165 = !DILocation(line: 0, scope: !104)
!166 = !DILocation(line: 102, column: 1, scope: !129, inlinedAt: !139)
!167 = !DILocation(line: 45, column: 16, scope: !104)
!168 = !DILocation(line: 46, column: 32, scope: !104)
!169 = !DILocation(line: 46, column: 9, scope: !104)
!170 = !DILocation(line: 47, column: 9, scope: !104)
!171 = !DILocation(line: 51, column: 1, scope: !86)
!172 = !DILocation(line: 49, column: 9, scope: !173)
!173 = distinct !DILexicalBlock(scope: !105, file: !1, line: 48, column: 12)
!174 = distinct !DISubprogram(name: "listPopSaver", scope: !1, file: !1, line: 53, type: !175, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !177)
!175 = !DISubroutineType(types: !176)
!176 = !{!38, !7, !24}
!177 = !{!178, !179}
!178 = !DILocalVariable(name: "data", arg: 1, scope: !174, file: !1, line: 53, type: !7)
!179 = !DILocalVariable(name: "sz", arg: 2, scope: !174, file: !1, line: 53, type: !24)
!180 = !DILocation(line: 53, column: 35, scope: !174)
!181 = !DILocation(line: 53, column: 54, scope: !174)
!182 = !DILocation(line: 54, column: 43, scope: !174)
!183 = !DILocation(line: 54, column: 12, scope: !174)
!184 = !DILocation(line: 54, column: 5, scope: !174)
!185 = distinct !DISubprogram(name: "listTypePop", scope: !1, file: !1, line: 57, type: !186, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !188)
!186 = !DISubroutineType(types: !187)
!187 = !{!89, !89, !36}
!188 = !{!189, !190, !191, !193, !194}
!189 = !DILocalVariable(name: "subject", arg: 1, scope: !185, file: !1, line: 57, type: !89)
!190 = !DILocalVariable(name: "where", arg: 2, scope: !185, file: !1, line: 57, type: !36)
!191 = !DILocalVariable(name: "vlong", scope: !185, file: !1, line: 58, type: !192)
!192 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!193 = !DILocalVariable(name: "value", scope: !185, file: !1, line: 59, type: !89)
!194 = !DILocalVariable(name: "ql_where", scope: !185, file: !1, line: 61, type: !36)
!195 = !DILocation(line: 57, column: 25, scope: !185)
!196 = !DILocation(line: 57, column: 38, scope: !185)
!197 = !DILocation(line: 58, column: 5, scope: !185)
!198 = !DILocation(line: 59, column: 5, scope: !185)
!199 = !DILocation(line: 59, column: 11, scope: !185)
!200 = !{!127, !127, i64 0}
!201 = !DILocation(line: 62, column: 18, scope: !202)
!202 = distinct !DILexicalBlock(scope: !185, file: !1, line: 62, column: 9)
!203 = !DILocation(line: 62, column: 27, scope: !202)
!204 = !DILocation(line: 62, column: 9, scope: !185)
!205 = !DILocation(line: 61, column: 26, scope: !185)
!206 = !DILocation(line: 61, column: 20, scope: !185)
!207 = !DILocation(line: 61, column: 9, scope: !185)
!208 = !DILocation(line: 63, column: 41, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !1, line: 63, column: 13)
!210 = distinct !DILexicalBlock(scope: !202, file: !1, line: 62, column: 54)
!211 = !DILocation(line: 63, column: 56, scope: !209)
!212 = !DILocation(line: 58, column: 15, scope: !185)
!213 = !DILocation(line: 63, column: 13, scope: !209)
!214 = !DILocation(line: 65, column: 18, scope: !215)
!215 = distinct !DILexicalBlock(scope: !216, file: !1, line: 65, column: 17)
!216 = distinct !DILexicalBlock(scope: !209, file: !1, line: 64, column: 61)
!217 = !DILocation(line: 63, column: 13, scope: !210)
!218 = !DILocation(line: 66, column: 56, scope: !215)
!219 = !{!220, !220, i64 0}
!220 = !{!"long long", !125, i64 0}
!221 = !DILocation(line: 66, column: 25, scope: !215)
!222 = !DILocation(line: 66, column: 23, scope: !215)
!223 = !DILocation(line: 66, column: 17, scope: !215)
!224 = !DILocation(line: 69, column: 9, scope: !225)
!225 = distinct !DILexicalBlock(scope: !202, file: !1, line: 68, column: 12)
!226 = !DILocation(line: 71, column: 12, scope: !185)
!227 = !DILocation(line: 72, column: 1, scope: !185)
!228 = !DILocation(line: 71, column: 5, scope: !185)
!229 = distinct !DISubprogram(name: "listTypeLength", scope: !1, file: !1, line: 74, type: !230, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !234)
!230 = !DISubroutineType(types: !231)
!231 = !{!33, !232}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!234 = !{!235}
!235 = !DILocalVariable(name: "subject", arg: 1, scope: !229, file: !1, line: 74, type: !232)
!236 = !DILocation(line: 74, column: 42, scope: !229)
!237 = !DILocation(line: 75, column: 18, scope: !238)
!238 = distinct !DILexicalBlock(scope: !229, file: !1, line: 75, column: 9)
!239 = !DILocation(line: 75, column: 27, scope: !238)
!240 = !DILocation(line: 75, column: 9, scope: !229)
!241 = !DILocation(line: 76, column: 40, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !1, line: 75, column: 54)
!243 = !DILocation(line: 76, column: 16, scope: !242)
!244 = !DILocation(line: 76, column: 9, scope: !242)
!245 = !DILocation(line: 78, column: 9, scope: !246)
!246 = distinct !DILexicalBlock(scope: !238, file: !1, line: 77, column: 12)
!247 = distinct !DISubprogram(name: "listTypeInitIterator", scope: !1, file: !1, line: 83, type: !248, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !270)
!248 = !DISubroutineType(types: !249)
!249 = !{!250, !89, !268, !8}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "listTypeIterator", file: !91, line: 1347, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 1342, size: 192, elements: !253)
!253 = !{!254, !255, !256, !257}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !252, file: !91, line: 1343, baseType: !89, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !252, file: !91, line: 1344, baseType: !8, size: 8, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !252, file: !91, line: 1345, baseType: !8, size: 8, offset: 72)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !252, file: !91, line: 1346, baseType: !258, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistIter", file: !11, line: 88, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistIter", file: !11, line: 82, size: 320, elements: !261)
!261 = !{!262, !265, !266, !267, !269}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !260, file: !11, line: 83, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !260, file: !11, line: 84, baseType: !15, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !260, file: !11, line: 85, baseType: !7, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !260, file: !11, line: 86, baseType: !268, size: 64, offset: 192)
!268 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !260, file: !11, line: 87, baseType: !36, size: 32, offset: 256)
!270 = !{!271, !272, !273, !274, !275}
!271 = !DILocalVariable(name: "subject", arg: 1, scope: !247, file: !1, line: 83, type: !89)
!272 = !DILocalVariable(name: "index", arg: 2, scope: !247, file: !1, line: 83, type: !268)
!273 = !DILocalVariable(name: "direction", arg: 3, scope: !247, file: !1, line: 84, type: !8)
!274 = !DILocalVariable(name: "li", scope: !247, file: !1, line: 85, type: !250)
!275 = !DILocalVariable(name: "iter_direction", scope: !247, file: !1, line: 92, type: !36)
!276 = !DILocation(line: 83, column: 46, scope: !247)
!277 = !DILocation(line: 83, column: 60, scope: !247)
!278 = !DILocation(line: 84, column: 54, scope: !247)
!279 = !DILocation(line: 85, column: 28, scope: !247)
!280 = !DILocation(line: 86, column: 9, scope: !247)
!281 = !DILocation(line: 86, column: 17, scope: !247)
!282 = !{!283, !127, i64 0}
!283 = !{!"", !127, i64 0, !125, i64 8, !125, i64 9, !127, i64 16}
!284 = !DILocation(line: 87, column: 29, scope: !247)
!285 = !DILocation(line: 87, column: 20, scope: !247)
!286 = !DILocation(line: 87, column: 9, scope: !247)
!287 = !DILocation(line: 87, column: 18, scope: !247)
!288 = !{!283, !125, i64 8}
!289 = !DILocation(line: 88, column: 9, scope: !247)
!290 = !DILocation(line: 88, column: 19, scope: !247)
!291 = !{!283, !125, i64 9}
!292 = !DILocation(line: 89, column: 9, scope: !247)
!293 = !DILocation(line: 89, column: 14, scope: !247)
!294 = !{!283, !127, i64 16}
!295 = !DILocation(line: 94, column: 22, scope: !296)
!296 = distinct !DILexicalBlock(scope: !247, file: !1, line: 94, column: 9)
!297 = !DILocation(line: 94, column: 9, scope: !247)
!298 = !DILocation(line: 93, column: 19, scope: !247)
!299 = !DILocation(line: 93, column: 9, scope: !247)
!300 = !DILocation(line: 92, column: 9, scope: !247)
!301 = !DILocation(line: 85, column: 23, scope: !247)
!302 = !DILocation(line: 95, column: 59, scope: !303)
!303 = distinct !DILexicalBlock(scope: !296, file: !1, line: 94, column: 49)
!304 = !DILocation(line: 95, column: 20, scope: !303)
!305 = !DILocation(line: 95, column: 18, scope: !303)
!306 = !DILocation(line: 100, column: 5, scope: !247)
!307 = !DILocation(line: 98, column: 9, scope: !308)
!308 = distinct !DILexicalBlock(scope: !296, file: !1, line: 97, column: 12)
!309 = distinct !DISubprogram(name: "listTypeReleaseIterator", scope: !1, file: !1, line: 104, type: !310, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !312)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !250}
!312 = !{!313}
!313 = !DILocalVariable(name: "li", arg: 1, scope: !309, file: !1, line: 104, type: !250)
!314 = !DILocation(line: 104, column: 48, scope: !309)
!315 = !DILocation(line: 105, column: 15, scope: !309)
!316 = !DILocation(line: 105, column: 5, scope: !309)
!317 = !DILocation(line: 106, column: 11, scope: !309)
!318 = !DILocation(line: 106, column: 5, scope: !309)
!319 = !DILocation(line: 107, column: 1, scope: !309)
!320 = distinct !DISubprogram(name: "listTypeNext", scope: !1, file: !1, line: 112, type: !321, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !339)
!321 = !DISubroutineType(types: !322)
!322 = !{!36, !250, !323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "listTypeEntry", file: !91, line: 1353, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 1350, size: 448, elements: !326)
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "li", scope: !325, file: !91, line: 1351, baseType: !250, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !325, file: !91, line: 1352, baseType: !329, size: 384, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistEntry", file: !11, line: 98, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistEntry", file: !11, line: 90, size: 384, elements: !331)
!331 = !{!332, !333, !334, !335, !336, !337, !338}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !330, file: !11, line: 91, baseType: !263, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !330, file: !11, line: 92, baseType: !15, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !330, file: !11, line: 93, baseType: !7, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !330, file: !11, line: 94, baseType: !7, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "longval", scope: !330, file: !11, line: 95, baseType: !192, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !330, file: !11, line: 96, baseType: !24, size: 32, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !330, file: !11, line: 97, baseType: !36, size: 32, offset: 352)
!339 = !{!340, !341}
!340 = !DILocalVariable(name: "li", arg: 1, scope: !320, file: !1, line: 112, type: !250)
!341 = !DILocalVariable(name: "entry", arg: 2, scope: !320, file: !1, line: 112, type: !323)
!342 = !DILocation(line: 112, column: 36, scope: !320)
!343 = !DILocation(line: 112, column: 55, scope: !320)
!344 = !DILocation(line: 114, column: 5, scope: !320)
!345 = !DILocation(line: 116, column: 12, scope: !320)
!346 = !DILocation(line: 116, column: 15, scope: !320)
!347 = !{!348, !127, i64 0}
!348 = !{!"", !127, i64 0, !349, i64 8}
!349 = !{!"quicklistEntry", !127, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !220, i64 32, !124, i64 40, !124, i64 44}
!350 = !DILocation(line: 117, column: 22, scope: !351)
!351 = distinct !DILexicalBlock(scope: !320, file: !1, line: 117, column: 9)
!352 = !DILocation(line: 117, column: 9, scope: !320)
!353 = !DILocation(line: 118, column: 34, scope: !354)
!354 = distinct !DILexicalBlock(scope: !351, file: !1, line: 117, column: 49)
!355 = !DILocation(line: 118, column: 48, scope: !354)
!356 = !DILocation(line: 118, column: 16, scope: !354)
!357 = !DILocation(line: 118, column: 9, scope: !354)
!358 = !DILocation(line: 120, column: 9, scope: !359)
!359 = distinct !DILexicalBlock(scope: !351, file: !1, line: 119, column: 12)
!360 = distinct !DISubprogram(name: "listTypeGet", scope: !1, file: !1, line: 126, type: !361, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !363)
!361 = !DISubroutineType(types: !362)
!362 = !{!89, !323}
!363 = !{!364, !365}
!364 = !DILocalVariable(name: "entry", arg: 1, scope: !360, file: !1, line: 126, type: !323)
!365 = !DILocalVariable(name: "value", scope: !360, file: !1, line: 127, type: !89)
!366 = !DILocation(line: 126, column: 34, scope: !360)
!367 = !DILocation(line: 127, column: 11, scope: !360)
!368 = !DILocation(line: 128, column: 16, scope: !369)
!369 = distinct !DILexicalBlock(scope: !360, file: !1, line: 128, column: 9)
!370 = !DILocation(line: 128, column: 20, scope: !369)
!371 = !DILocation(line: 128, column: 29, scope: !369)
!372 = !DILocation(line: 128, column: 9, scope: !360)
!373 = !DILocation(line: 129, column: 26, scope: !374)
!374 = distinct !DILexicalBlock(scope: !375, file: !1, line: 129, column: 13)
!375 = distinct !DILexicalBlock(scope: !369, file: !1, line: 128, column: 56)
!376 = !{!348, !127, i64 32}
!377 = !DILocation(line: 129, column: 13, scope: !374)
!378 = !DILocation(line: 129, column: 13, scope: !375)
!379 = !DILocation(line: 131, column: 53, scope: !380)
!380 = distinct !DILexicalBlock(scope: !374, file: !1, line: 129, column: 33)
!381 = !{!348, !124, i64 48}
!382 = !DILocation(line: 131, column: 40, scope: !380)
!383 = !DILocation(line: 130, column: 21, scope: !380)
!384 = !DILocation(line: 132, column: 9, scope: !380)
!385 = !DILocation(line: 133, column: 65, scope: !386)
!386 = distinct !DILexicalBlock(scope: !374, file: !1, line: 132, column: 16)
!387 = !{!348, !220, i64 40}
!388 = !DILocation(line: 133, column: 21, scope: !386)
!389 = !DILocation(line: 136, column: 9, scope: !390)
!390 = distinct !DILexicalBlock(scope: !369, file: !1, line: 135, column: 12)
!391 = !DILocation(line: 0, scope: !386)
!392 = !DILocation(line: 138, column: 5, scope: !360)
!393 = distinct !DISubprogram(name: "listTypeInsert", scope: !1, file: !1, line: 141, type: !394, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !396)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !323, !89, !36}
!396 = !{!397, !398, !399, !400, !403}
!397 = !DILocalVariable(name: "entry", arg: 1, scope: !393, file: !1, line: 141, type: !323)
!398 = !DILocalVariable(name: "value", arg: 2, scope: !393, file: !1, line: 141, type: !89)
!399 = !DILocalVariable(name: "where", arg: 3, scope: !393, file: !1, line: 141, type: !36)
!400 = !DILocalVariable(name: "str", scope: !401, file: !1, line: 144, type: !135)
!401 = distinct !DILexicalBlock(scope: !402, file: !1, line: 142, column: 56)
!402 = distinct !DILexicalBlock(scope: !393, file: !1, line: 142, column: 9)
!403 = !DILocalVariable(name: "len", scope: !401, file: !1, line: 145, type: !107)
!404 = !DILocation(line: 141, column: 36, scope: !393)
!405 = !DILocation(line: 141, column: 49, scope: !393)
!406 = !DILocation(line: 141, column: 60, scope: !393)
!407 = !DILocation(line: 142, column: 16, scope: !402)
!408 = !DILocation(line: 142, column: 20, scope: !402)
!409 = !DILocation(line: 142, column: 29, scope: !402)
!410 = !DILocation(line: 142, column: 9, scope: !393)
!411 = !DILocation(line: 143, column: 17, scope: !401)
!412 = !DILocation(line: 144, column: 26, scope: !401)
!413 = !DILocation(line: 144, column: 13, scope: !401)
!414 = !DILocation(line: 87, column: 39, scope: !129, inlinedAt: !415)
!415 = distinct !DILocation(line: 145, column: 22, scope: !401)
!416 = !DILocation(line: 88, column: 27, scope: !129, inlinedAt: !415)
!417 = !DILocation(line: 88, column: 19, scope: !129, inlinedAt: !415)
!418 = !DILocation(line: 89, column: 5, scope: !129, inlinedAt: !415)
!419 = !DILocation(line: 91, column: 20, scope: !145, inlinedAt: !415)
!420 = !DILocation(line: 91, column: 13, scope: !145, inlinedAt: !415)
!421 = !DILocation(line: 93, column: 20, scope: !145, inlinedAt: !415)
!422 = !DILocation(line: 93, column: 34, scope: !145, inlinedAt: !415)
!423 = !DILocation(line: 93, column: 13, scope: !145, inlinedAt: !415)
!424 = !DILocation(line: 95, column: 20, scope: !145, inlinedAt: !415)
!425 = !DILocation(line: 95, column: 35, scope: !145, inlinedAt: !415)
!426 = !DILocation(line: 95, column: 13, scope: !145, inlinedAt: !415)
!427 = !DILocation(line: 97, column: 20, scope: !145, inlinedAt: !415)
!428 = !DILocation(line: 97, column: 35, scope: !145, inlinedAt: !415)
!429 = !DILocation(line: 97, column: 13, scope: !145, inlinedAt: !415)
!430 = !DILocation(line: 99, column: 20, scope: !145, inlinedAt: !415)
!431 = !DILocation(line: 99, column: 35, scope: !145, inlinedAt: !415)
!432 = !DILocation(line: 99, column: 13, scope: !145, inlinedAt: !415)
!433 = !DILocation(line: 0, scope: !145, inlinedAt: !415)
!434 = !DILocation(line: 0, scope: !401)
!435 = !DILocation(line: 102, column: 1, scope: !129, inlinedAt: !415)
!436 = !DILocation(line: 145, column: 16, scope: !401)
!437 = !DILocation(line: 146, column: 19, scope: !438)
!438 = distinct !DILexicalBlock(scope: !401, file: !1, line: 146, column: 13)
!439 = !DILocation(line: 146, column: 13, scope: !401)
!440 = !DILocation(line: 147, column: 54, scope: !441)
!441 = distinct !DILexicalBlock(scope: !438, file: !1, line: 146, column: 33)
!442 = !DILocation(line: 147, column: 60, scope: !441)
!443 = !{!348, !127, i64 8}
!444 = !DILocation(line: 147, column: 13, scope: !441)
!445 = !DILocation(line: 149, column: 9, scope: !441)
!446 = !DILocation(line: 149, column: 26, scope: !447)
!447 = distinct !DILexicalBlock(scope: !438, file: !1, line: 149, column: 20)
!448 = !DILocation(line: 149, column: 20, scope: !438)
!449 = !DILocation(line: 150, column: 55, scope: !450)
!450 = distinct !DILexicalBlock(scope: !447, file: !1, line: 149, column: 40)
!451 = !DILocation(line: 150, column: 61, scope: !450)
!452 = !DILocation(line: 150, column: 13, scope: !450)
!453 = !DILocation(line: 152, column: 9, scope: !450)
!454 = !DILocation(line: 0, scope: !441)
!455 = !DILocation(line: 153, column: 9, scope: !401)
!456 = !DILocation(line: 157, column: 1, scope: !393)
!457 = !DILocation(line: 155, column: 9, scope: !458)
!458 = distinct !DILexicalBlock(scope: !402, file: !1, line: 154, column: 12)
!459 = distinct !DISubprogram(name: "listTypeEqual", scope: !1, file: !1, line: 160, type: !460, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{!36, !323, !89}
!462 = !{!463, !464}
!463 = !DILocalVariable(name: "entry", arg: 1, scope: !459, file: !1, line: 160, type: !323)
!464 = !DILocalVariable(name: "o", arg: 2, scope: !459, file: !1, line: 160, type: !89)
!465 = !DILocation(line: 160, column: 34, scope: !459)
!466 = !DILocation(line: 160, column: 47, scope: !459)
!467 = !DILocation(line: 161, column: 16, scope: !468)
!468 = distinct !DILexicalBlock(scope: !459, file: !1, line: 161, column: 9)
!469 = !DILocation(line: 161, column: 20, scope: !468)
!470 = !DILocation(line: 161, column: 29, scope: !468)
!471 = !DILocation(line: 161, column: 9, scope: !459)
!472 = !DILocation(line: 162, column: 9, scope: !473)
!473 = distinct !DILexicalBlock(scope: !468, file: !1, line: 161, column: 56)
!474 = !DILocation(line: 163, column: 46, scope: !473)
!475 = !{!348, !127, i64 24}
!476 = !DILocation(line: 163, column: 52, scope: !473)
!477 = !DILocation(line: 87, column: 39, scope: !129, inlinedAt: !478)
!478 = distinct !DILocation(line: 163, column: 56, scope: !473)
!479 = !DILocation(line: 88, column: 27, scope: !129, inlinedAt: !478)
!480 = !DILocation(line: 88, column: 19, scope: !129, inlinedAt: !478)
!481 = !DILocation(line: 89, column: 5, scope: !129, inlinedAt: !478)
!482 = !DILocation(line: 91, column: 20, scope: !145, inlinedAt: !478)
!483 = !DILocation(line: 91, column: 13, scope: !145, inlinedAt: !478)
!484 = !DILocation(line: 93, column: 20, scope: !145, inlinedAt: !478)
!485 = !DILocation(line: 93, column: 34, scope: !145, inlinedAt: !478)
!486 = !DILocation(line: 93, column: 13, scope: !145, inlinedAt: !478)
!487 = !DILocation(line: 95, column: 20, scope: !145, inlinedAt: !478)
!488 = !DILocation(line: 95, column: 35, scope: !145, inlinedAt: !478)
!489 = !DILocation(line: 95, column: 13, scope: !145, inlinedAt: !478)
!490 = !DILocation(line: 97, column: 20, scope: !145, inlinedAt: !478)
!491 = !DILocation(line: 97, column: 35, scope: !145, inlinedAt: !478)
!492 = !DILocation(line: 97, column: 13, scope: !145, inlinedAt: !478)
!493 = !DILocation(line: 99, column: 20, scope: !145, inlinedAt: !478)
!494 = !DILocation(line: 99, column: 35, scope: !145, inlinedAt: !478)
!495 = !DILocation(line: 99, column: 13, scope: !145, inlinedAt: !478)
!496 = !DILocation(line: 0, scope: !145, inlinedAt: !478)
!497 = !DILocation(line: 0, scope: !473)
!498 = !DILocation(line: 102, column: 1, scope: !129, inlinedAt: !478)
!499 = !DILocation(line: 163, column: 56, scope: !473)
!500 = !DILocation(line: 163, column: 16, scope: !473)
!501 = !DILocation(line: 163, column: 9, scope: !473)
!502 = !DILocation(line: 165, column: 9, scope: !503)
!503 = distinct !DILexicalBlock(scope: !468, file: !1, line: 164, column: 12)
!504 = distinct !DISubprogram(name: "listTypeDelete", scope: !1, file: !1, line: 170, type: !505, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !507)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !250, !323}
!507 = !{!508, !509}
!508 = !DILocalVariable(name: "iter", arg: 1, scope: !504, file: !1, line: 170, type: !250)
!509 = !DILocalVariable(name: "entry", arg: 2, scope: !504, file: !1, line: 170, type: !323)
!510 = !DILocation(line: 170, column: 39, scope: !504)
!511 = !DILocation(line: 170, column: 60, scope: !504)
!512 = !DILocation(line: 171, column: 16, scope: !513)
!513 = distinct !DILexicalBlock(scope: !504, file: !1, line: 171, column: 9)
!514 = !DILocation(line: 171, column: 20, scope: !513)
!515 = !DILocation(line: 171, column: 29, scope: !513)
!516 = !DILocation(line: 171, column: 9, scope: !504)
!517 = !DILocation(line: 172, column: 33, scope: !518)
!518 = distinct !DILexicalBlock(scope: !513, file: !1, line: 171, column: 56)
!519 = !DILocation(line: 172, column: 47, scope: !518)
!520 = !DILocation(line: 172, column: 9, scope: !518)
!521 = !DILocation(line: 176, column: 1, scope: !504)
!522 = !DILocation(line: 174, column: 9, scope: !523)
!523 = distinct !DILexicalBlock(scope: !513, file: !1, line: 173, column: 12)
!524 = distinct !DISubprogram(name: "listTypeConvert", scope: !1, file: !1, line: 179, type: !525, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !527)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !89, !36}
!527 = !{!528, !529, !530, !533}
!528 = !DILocalVariable(name: "subject", arg: 1, scope: !524, file: !1, line: 179, type: !89)
!529 = !DILocalVariable(name: "enc", arg: 2, scope: !524, file: !1, line: 179, type: !36)
!530 = !DILocalVariable(name: "zlen", scope: !531, file: !1, line: 184, type: !107)
!531 = distinct !DILexicalBlock(scope: !532, file: !1, line: 183, column: 40)
!532 = distinct !DILexicalBlock(scope: !524, file: !1, line: 183, column: 9)
!533 = !DILocalVariable(name: "depth", scope: !531, file: !1, line: 185, type: !36)
!534 = !DILocation(line: 179, column: 28, scope: !524)
!535 = !DILocation(line: 179, column: 41, scope: !524)
!536 = !DILocation(line: 180, column: 5, scope: !524)
!537 = !DILocation(line: 181, column: 5, scope: !524)
!538 = !DILocation(line: 183, column: 13, scope: !532)
!539 = !DILocation(line: 183, column: 9, scope: !524)
!540 = !DILocation(line: 184, column: 30, scope: !531)
!541 = !{!542, !124, i64 2864}
!542 = !{!"redisServer", !124, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !124, i64 32, !124, i64 36, !124, i64 40, !127, i64 48, !127, i64 56, !127, i64 64, !127, i64 72, !124, i64 80, !124, i64 84, !124, i64 88, !124, i64 92, !127, i64 96, !127, i64 104, !124, i64 112, !124, i64 116, !125, i64 120, !124, i64 164, !162, i64 168, !124, i64 176, !127, i64 184, !127, i64 192, !127, i64 200, !125, i64 208, !124, i64 216, !124, i64 220, !125, i64 224, !124, i64 352, !127, i64 360, !124, i64 368, !125, i64 372, !124, i64 436, !124, i64 440, !125, i64 444, !124, i64 508, !127, i64 512, !127, i64 520, !127, i64 528, !127, i64 536, !127, i64 544, !127, i64 552, !127, i64 560, !124, i64 568, !220, i64 576, !125, i64 584, !127, i64 840, !162, i64 848, !124, i64 856, !124, i64 860, !162, i64 864, !162, i64 872, !162, i64 880, !162, i64 888, !127, i64 896, !127, i64 904, !127, i64 912, !127, i64 920, !127, i64 928, !127, i64 936, !127, i64 944, !127, i64 952, !127, i64 960, !127, i64 968, !127, i64 976, !127, i64 984, !127, i64 992, !162, i64 1000, !220, i64 1008, !220, i64 1016, !220, i64 1024, !543, i64 1032, !220, i64 1040, !220, i64 1048, !220, i64 1056, !220, i64 1064, !220, i64 1072, !220, i64 1080, !220, i64 1088, !220, i64 1096, !220, i64 1104, !162, i64 1112, !220, i64 1120, !543, i64 1128, !220, i64 1136, !220, i64 1144, !220, i64 1152, !220, i64 1160, !127, i64 1168, !220, i64 1176, !220, i64 1184, !162, i64 1192, !544, i64 1200, !220, i64 1240, !220, i64 1248, !162, i64 1256, !162, i64 1264, !125, i64 1272, !124, i64 1728, !124, i64 1732, !124, i64 1736, !124, i64 1740, !124, i64 1744, !162, i64 1752, !124, i64 1760, !124, i64 1764, !124, i64 1768, !124, i64 1772, !162, i64 1776, !162, i64 1784, !124, i64 1792, !124, i64 1796, !124, i64 1800, !124, i64 1804, !125, i64 1808, !124, i64 1880, !124, i64 1884, !127, i64 1888, !124, i64 1896, !124, i64 1900, !162, i64 1904, !162, i64 1912, !162, i64 1920, !162, i64 1928, !124, i64 1936, !124, i64 1940, !127, i64 1944, !127, i64 1952, !124, i64 1960, !124, i64 1964, !162, i64 1968, !162, i64 1976, !162, i64 1984, !162, i64 1992, !124, i64 2000, !162, i64 2008, !124, i64 2016, !124, i64 2020, !124, i64 2024, !124, i64 2028, !124, i64 2032, !124, i64 2036, !124, i64 2040, !124, i64 2044, !124, i64 2048, !124, i64 2052, !124, i64 2056, !124, i64 2060, !124, i64 2064, !127, i64 2072, !220, i64 2080, !220, i64 2088, !124, i64 2096, !127, i64 2104, !124, i64 2112, !127, i64 2120, !124, i64 2128, !124, i64 2132, !162, i64 2136, !162, i64 2144, !162, i64 2152, !162, i64 2160, !124, i64 2168, !124, i64 2172, !124, i64 2176, !124, i64 2180, !124, i64 2184, !124, i64 2188, !125, i64 2192, !545, i64 2200, !546, i64 2224, !127, i64 2240, !124, i64 2248, !127, i64 2256, !124, i64 2264, !125, i64 2268, !125, i64 2309, !220, i64 2352, !220, i64 2360, !124, i64 2368, !124, i64 2372, !127, i64 2376, !220, i64 2384, !220, i64 2392, !220, i64 2400, !220, i64 2408, !162, i64 2416, !162, i64 2424, !124, i64 2432, !124, i64 2436, !124, i64 2440, !124, i64 2444, !124, i64 2448, !127, i64 2456, !127, i64 2464, !124, i64 2472, !124, i64 2476, !127, i64 2480, !127, i64 2488, !124, i64 2496, !124, i64 2500, !162, i64 2504, !162, i64 2512, !162, i64 2520, !124, i64 2528, !124, i64 2532, !127, i64 2536, !162, i64 2544, !124, i64 2552, !124, i64 2556, !124, i64 2560, !162, i64 2568, !124, i64 2576, !124, i64 2580, !124, i64 2584, !127, i64 2592, !125, i64 2600, !220, i64 2648, !124, i64 2656, !127, i64 2664, !127, i64 2672, !124, i64 2680, !127, i64 2688, !124, i64 2696, !124, i64 2700, !220, i64 2704, !124, i64 2712, !124, i64 2716, !124, i64 2720, !124, i64 2724, !220, i64 2728, !124, i64 2736, !125, i64 2740, !127, i64 2768, !127, i64 2776, !124, i64 2784, !124, i64 2788, !124, i64 2792, !124, i64 2796, !162, i64 2800, !162, i64 2808, !162, i64 2816, !162, i64 2824, !162, i64 2832, !162, i64 2840, !162, i64 2848, !162, i64 2856, !124, i64 2864, !124, i64 2868, !162, i64 2872, !162, i64 2880, !124, i64 2888, !220, i64 2896, !127, i64 2904, !127, i64 2912, !124, i64 2920, !124, i64 2924, !220, i64 2928, !127, i64 2936, !127, i64 2944, !124, i64 2952, !124, i64 2956, !124, i64 2960, !124, i64 2964, !127, i64 2968, !124, i64 2976, !124, i64 2980, !124, i64 2984, !127, i64 2992, !127, i64 3000, !127, i64 3008, !127, i64 3016, !220, i64 3024, !220, i64 3032, !220, i64 3040, !124, i64 3048, !124, i64 3052, !124, i64 3056, !124, i64 3060, !124, i64 3064, !124, i64 3068, !124, i64 3072, !124, i64 3076, !124, i64 3080, !124, i64 3084, !124, i64 3088, !220, i64 3096, !127, i64 3104, !127, i64 3112, !127, i64 3120, !124, i64 3128, !124, i64 3132, !124, i64 3136, !162, i64 3144, !127, i64 3152, !127, i64 3160, !127, i64 3168}
!543 = !{!"double", !125, i64 0}
!544 = !{!"malloc_stats", !162, i64 0, !162, i64 8, !162, i64 16, !162, i64 24, !162, i64 32}
!545 = !{!"", !124, i64 0, !162, i64 8, !220, i64 16}
!546 = !{!"redisOpArray", !127, i64 0, !124, i64 8}
!547 = !DILocation(line: 185, column: 28, scope: !531)
!548 = !{!542, !124, i64 2868}
!549 = !DILocation(line: 185, column: 13, scope: !531)
!550 = !DILocation(line: 186, column: 73, scope: !531)
!551 = !DILocation(line: 186, column: 24, scope: !531)
!552 = !DILocation(line: 186, column: 22, scope: !531)
!553 = !DILocation(line: 187, column: 27, scope: !531)
!554 = !DILocation(line: 191, column: 1, scope: !524)
!555 = !DILocation(line: 189, column: 9, scope: !556)
!556 = distinct !DILexicalBlock(scope: !532, file: !1, line: 188, column: 12)
!557 = distinct !DISubprogram(name: "pushGenericCommand", scope: !1, file: !1, line: 197, type: !558, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !786)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !560, !36}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !91, line: 780, baseType: !562)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !91, line: 723, size: 135360, elements: !563)
!563 = !{!564, !565, !566, !669, !670, !671, !672, !673, !674, !675, !677, !701, !702, !703, !704, !705, !706, !708, !709, !712, !713, !714, !715, !716, !717, !718, !719, !724, !725, !726, !727, !728, !729, !730, !731, !735, !736, !740, !741, !757, !758, !775, !776, !777, !778, !779, !780, !781, !782}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !562, file: !91, line: 724, baseType: !77, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !562, file: !91, line: 725, baseType: !36, size: 32, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !562, file: !91, line: 726, baseType: !567, size: 64, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !91, line: 656, baseType: !569)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !91, line: 647, size: 512, elements: !570)
!570 = !{!571, !634, !635, !636, !637, !638, !639, !640}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !569, file: !91, line: 648, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !574, line: 82, baseType: !575)
!574 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !574, line: 76, size: 768, elements: !576)
!576 = !{!577, !602, !603, !632, !633}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !575, file: !574, line: 77, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !574, line: 65, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !574, line: 58, size: 384, elements: !581)
!581 = !{!582, !588, !592, !593, !597, !601}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !580, file: !574, line: 59, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!77, !586}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !580, file: !574, line: 60, baseType: !589, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!38, !38, !586}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !580, file: !574, line: 61, baseType: !589, size: 64, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !580, file: !574, line: 62, baseType: !594, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!36, !38, !586, !586}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !580, file: !574, line: 63, baseType: !598, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !38, !38}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !580, file: !574, line: 64, baseType: !598, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !575, file: !574, line: 78, baseType: !38, size: 64, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !575, file: !574, line: 79, baseType: !604, size: 512, offset: 128)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 512, elements: !630)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !574, line: 74, baseType: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !574, line: 69, size: 256, elements: !607)
!607 = !{!608, !627, !628, !629}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !606, file: !574, line: 70, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !574, line: 56, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !574, line: 47, size: 192, elements: !613)
!613 = !{!614, !615, !625}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !612, file: !574, line: 48, baseType: !38, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !612, file: !574, line: 54, baseType: !616, size: 64, offset: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !612, file: !574, line: 49, size: 64, elements: !617)
!617 = !{!618, !619, !620, !623}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !616, file: !574, line: 50, baseType: !38, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !616, file: !574, line: 51, baseType: !77, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !616, file: !574, line: 52, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !45, line: 56, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !47, line: 103, baseType: !268)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !616, file: !574, line: 53, baseType: !624, size: 64)
!624 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !612, file: !574, line: 55, baseType: !626, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !606, file: !574, line: 71, baseType: !33, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !606, file: !574, line: 72, baseType: !33, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !606, file: !574, line: 73, baseType: !33, size: 64, offset: 192)
!630 = !{!631}
!631 = !DISubrange(count: 2)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !575, file: !574, line: 80, baseType: !268, size: 64, offset: 640)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !575, file: !574, line: 81, baseType: !33, size: 64, offset: 704)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !569, file: !91, line: 649, baseType: !572, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !569, file: !91, line: 650, baseType: !572, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !569, file: !91, line: 651, baseType: !572, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !569, file: !91, line: 652, baseType: !572, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !569, file: !91, line: 653, baseType: !36, size: 32, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !569, file: !91, line: 654, baseType: !192, size: 64, offset: 384)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !569, file: !91, line: 655, baseType: !641, size: 64, offset: 448)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !643, line: 54, baseType: !644)
!643 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !643, line: 47, size: 384, elements: !645)
!645 = !{!646, !655, !656, !660, !664, !668}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !644, file: !643, line: 48, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !643, line: 40, baseType: !649)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !643, line: 36, size: 192, elements: !650)
!650 = !{!651, !653, !654}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !649, file: !643, line: 37, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !649, file: !643, line: 38, baseType: !652, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !649, file: !643, line: 39, baseType: !38, size: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !644, file: !643, line: 49, baseType: !647, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !644, file: !643, line: 50, baseType: !657, size: 64, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!38, !38}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !644, file: !643, line: 51, baseType: !661, size: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !38}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !644, file: !643, line: 52, baseType: !665, size: 64, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!36, !38, !38}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !644, file: !643, line: 53, baseType: !33, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !562, file: !91, line: 727, baseType: !89, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !562, file: !91, line: 728, baseType: !135, size: 64, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !562, file: !91, line: 729, baseType: !107, size: 64, offset: 320)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !562, file: !91, line: 730, baseType: !135, size: 64, offset: 384)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !562, file: !91, line: 734, baseType: !107, size: 64, offset: 448)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !562, file: !91, line: 735, baseType: !36, size: 32, offset: 512)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !562, file: !91, line: 736, baseType: !676, size: 64, offset: 576)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !562, file: !91, line: 737, baseType: !678, size: 64, offset: 640)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !91, line: 1307, size: 640, elements: !680)
!680 = !{!681, !682, !687, !688, !689, !690, !696, !697, !698, !699, !700}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !679, file: !91, line: 1308, baseType: !4, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !679, file: !91, line: 1309, baseType: !683, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !91, line: 1305, baseType: !685)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !560}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !679, file: !91, line: 1310, baseType: !36, size: 32, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !679, file: !91, line: 1311, baseType: !4, size: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !679, file: !91, line: 1312, baseType: !36, size: 32, offset: 256)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !679, file: !91, line: 1315, baseType: !691, size: 64, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !91, line: 1306, baseType: !693)
!693 = !DISubroutineType(types: !694)
!694 = !{!695, !678, !676, !36, !695}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !679, file: !91, line: 1317, baseType: !36, size: 32, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !679, file: !91, line: 1318, baseType: !36, size: 32, offset: 416)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !679, file: !91, line: 1319, baseType: !36, size: 32, offset: 448)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !679, file: !91, line: 1320, baseType: !192, size: 64, offset: 512)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !679, file: !91, line: 1320, baseType: !192, size: 64, offset: 576)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !562, file: !91, line: 737, baseType: !678, size: 64, offset: 704)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !562, file: !91, line: 738, baseType: !36, size: 32, offset: 768)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !562, file: !91, line: 739, baseType: !36, size: 32, offset: 800)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !562, file: !91, line: 740, baseType: !268, size: 64, offset: 832)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !562, file: !91, line: 741, baseType: !641, size: 64, offset: 896)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !562, file: !91, line: 742, baseType: !707, size: 64, offset: 960)
!707 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !562, file: !91, line: 743, baseType: !107, size: 64, offset: 1024)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !562, file: !91, line: 745, baseType: !710, size: 64, offset: 1088)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !711, line: 34, baseType: !268)
!711 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!712 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !562, file: !91, line: 746, baseType: !710, size: 64, offset: 1152)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !562, file: !91, line: 747, baseType: !710, size: 64, offset: 1216)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !562, file: !91, line: 748, baseType: !36, size: 32, offset: 1280)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !562, file: !91, line: 749, baseType: !36, size: 32, offset: 1312)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !562, file: !91, line: 750, baseType: !36, size: 32, offset: 1344)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !562, file: !91, line: 751, baseType: !36, size: 32, offset: 1376)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !562, file: !91, line: 752, baseType: !36, size: 32, offset: 1408)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !562, file: !91, line: 753, baseType: !720, size: 64, offset: 1472)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !721, line: 173, baseType: !722)
!721 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !110, line: 100, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !110, line: 44, baseType: !268)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !562, file: !91, line: 754, baseType: !720, size: 64, offset: 1536)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !562, file: !91, line: 755, baseType: !135, size: 64, offset: 1600)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !562, file: !91, line: 756, baseType: !192, size: 64, offset: 1664)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !562, file: !91, line: 757, baseType: !192, size: 64, offset: 1728)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !562, file: !91, line: 758, baseType: !192, size: 64, offset: 1792)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !562, file: !91, line: 759, baseType: !192, size: 64, offset: 1856)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !562, file: !91, line: 760, baseType: !192, size: 64, offset: 1920)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !562, file: !91, line: 763, baseType: !732, size: 328, offset: 1984)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 328, elements: !733)
!733 = !{!734}
!734 = !DISubrange(count: 41)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !562, file: !91, line: 764, baseType: !36, size: 32, offset: 2336)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !562, file: !91, line: 765, baseType: !737, size: 368, offset: 2368)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 368, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 46)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !562, file: !91, line: 766, baseType: !36, size: 32, offset: 2752)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !562, file: !91, line: 767, baseType: !742, size: 256, offset: 2816)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !91, line: 673, baseType: !743)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !91, line: 665, size: 256, elements: !744)
!744 = !{!745, !753, !754, !755, !756}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !743, file: !91, line: 666, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !91, line: 663, baseType: !748)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !91, line: 659, size: 192, elements: !749)
!749 = !{!750, !751, !752}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !748, file: !91, line: 660, baseType: !676, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !748, file: !91, line: 661, baseType: !36, size: 32, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !748, file: !91, line: 662, baseType: !678, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !743, file: !91, line: 667, baseType: !36, size: 32, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !743, file: !91, line: 668, baseType: !36, size: 32, offset: 96)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !743, file: !91, line: 671, baseType: !36, size: 32, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !743, file: !91, line: 672, baseType: !710, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !562, file: !91, line: 768, baseType: !36, size: 32, offset: 3072)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !562, file: !91, line: 769, baseType: !759, size: 704, offset: 3136)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !91, line: 703, baseType: !760)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !91, line: 677, size: 704, elements: !761)
!761 = !{!762, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !760, file: !91, line: 679, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !91, line: 52, baseType: !192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !760, file: !91, line: 683, baseType: !572, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !760, file: !91, line: 685, baseType: !89, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !760, file: !91, line: 689, baseType: !107, size: 64, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !760, file: !91, line: 690, baseType: !89, size: 64, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !760, file: !91, line: 691, baseType: !89, size: 64, offset: 320)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !760, file: !91, line: 692, baseType: !763, size: 64, offset: 384)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !760, file: !91, line: 692, baseType: !763, size: 64, offset: 448)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !760, file: !91, line: 693, baseType: !36, size: 32, offset: 512)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !760, file: !91, line: 696, baseType: !36, size: 32, offset: 544)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !760, file: !91, line: 697, baseType: !192, size: 64, offset: 576)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !760, file: !91, line: 700, baseType: !38, size: 64, offset: 640)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !562, file: !91, line: 770, baseType: !192, size: 64, offset: 3840)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !562, file: !91, line: 771, baseType: !641, size: 64, offset: 3904)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !562, file: !91, line: 772, baseType: !572, size: 64, offset: 3968)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !562, file: !91, line: 773, baseType: !641, size: 64, offset: 4032)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !562, file: !91, line: 774, baseType: !135, size: 64, offset: 4096)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !562, file: !91, line: 775, baseType: !647, size: 64, offset: 4160)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !562, file: !91, line: 778, baseType: !36, size: 32, offset: 4224)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !562, file: !91, line: 779, baseType: !783, size: 131072, offset: 4256)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 131072, elements: !784)
!784 = !{!785}
!785 = !DISubrange(count: 16384)
!786 = !{!787, !788, !789, !790, !791, !792}
!787 = !DILocalVariable(name: "c", arg: 1, scope: !557, file: !1, line: 197, type: !560)
!788 = !DILocalVariable(name: "where", arg: 2, scope: !557, file: !1, line: 197, type: !36)
!789 = !DILocalVariable(name: "j", scope: !557, file: !1, line: 198, type: !36)
!790 = !DILocalVariable(name: "pushed", scope: !557, file: !1, line: 198, type: !36)
!791 = !DILocalVariable(name: "lobj", scope: !557, file: !1, line: 199, type: !89)
!792 = !DILocalVariable(name: "event", scope: !793, file: !1, line: 218, type: !4)
!793 = distinct !DILexicalBlock(scope: !794, file: !1, line: 217, column: 17)
!794 = distinct !DILexicalBlock(scope: !557, file: !1, line: 217, column: 9)
!795 = !DILocation(line: 197, column: 33, scope: !557)
!796 = !DILocation(line: 197, column: 40, scope: !557)
!797 = !DILocation(line: 198, column: 12, scope: !557)
!798 = !DILocation(line: 199, column: 36, scope: !557)
!799 = !{!800, !127, i64 16}
!800 = !{!"client", !162, i64 0, !124, i64 8, !127, i64 16, !127, i64 24, !127, i64 32, !162, i64 40, !127, i64 48, !162, i64 56, !124, i64 64, !127, i64 72, !127, i64 80, !127, i64 88, !124, i64 96, !124, i64 100, !162, i64 104, !127, i64 112, !220, i64 120, !162, i64 128, !162, i64 136, !162, i64 144, !162, i64 152, !124, i64 160, !124, i64 164, !124, i64 168, !124, i64 172, !124, i64 176, !162, i64 184, !162, i64 192, !127, i64 200, !220, i64 208, !220, i64 216, !220, i64 224, !220, i64 232, !220, i64 240, !125, i64 248, !124, i64 292, !125, i64 296, !124, i64 344, !801, i64 352, !124, i64 384, !802, i64 392, !220, i64 480, !127, i64 488, !127, i64 496, !127, i64 504, !127, i64 512, !127, i64 520, !124, i64 528, !125, i64 532}
!801 = !{!"multiState", !127, i64 0, !124, i64 8, !124, i64 12, !124, i64 16, !162, i64 24}
!802 = !{!"blockingState", !220, i64 0, !127, i64 8, !127, i64 16, !162, i64 24, !127, i64 32, !127, i64 40, !220, i64 48, !220, i64 56, !124, i64 64, !124, i64 68, !220, i64 72, !127, i64 80}
!803 = !DILocation(line: 199, column: 42, scope: !557)
!804 = !{!800, !127, i64 72}
!805 = !DILocation(line: 199, column: 39, scope: !557)
!806 = !DILocation(line: 199, column: 18, scope: !557)
!807 = !DILocation(line: 199, column: 11, scope: !557)
!808 = !DILocation(line: 201, column: 9, scope: !809)
!809 = distinct !DILexicalBlock(scope: !557, file: !1, line: 201, column: 9)
!810 = !DILocation(line: 201, column: 14, scope: !809)
!811 = !DILocation(line: 201, column: 23, scope: !809)
!812 = !DILocation(line: 201, column: 28, scope: !809)
!813 = !DILocation(line: 201, column: 9, scope: !557)
!814 = !DILocation(line: 202, column: 27, scope: !815)
!815 = distinct !DILexicalBlock(scope: !809, file: !1, line: 201, column: 41)
!816 = !{!817, !127, i64 112}
!817 = !{!"sharedObjectsStruct", !127, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !127, i64 32, !127, i64 40, !127, i64 48, !127, i64 56, !127, i64 64, !127, i64 72, !127, i64 80, !127, i64 88, !127, i64 96, !127, i64 104, !127, i64 112, !127, i64 120, !127, i64 128, !127, i64 136, !127, i64 144, !127, i64 152, !127, i64 160, !127, i64 168, !127, i64 176, !127, i64 184, !127, i64 192, !127, i64 200, !127, i64 208, !127, i64 216, !127, i64 224, !127, i64 232, !127, i64 240, !127, i64 248, !127, i64 256, !127, i64 264, !127, i64 272, !127, i64 280, !127, i64 288, !127, i64 296, !127, i64 304, !127, i64 312, !127, i64 320, !127, i64 328, !127, i64 336, !127, i64 344, !127, i64 352, !127, i64 360, !125, i64 368, !125, i64 448, !125, i64 80448, !125, i64 80704, !127, i64 80960, !127, i64 80968}
!818 = !DILocation(line: 202, column: 9, scope: !815)
!819 = !DILocation(line: 203, column: 9, scope: !815)
!820 = !DILocation(line: 198, column: 9, scope: !557)
!821 = !DILocation(line: 206, column: 10, scope: !822)
!822 = distinct !DILexicalBlock(scope: !557, file: !1, line: 206, column: 5)
!823 = !DILocation(line: 206, column: 24, scope: !824)
!824 = distinct !DILexicalBlock(scope: !822, file: !1, line: 206, column: 5)
!825 = !{!800, !124, i64 64}
!826 = !DILocation(line: 206, column: 19, scope: !824)
!827 = !DILocation(line: 206, column: 5, scope: !822)
!828 = !DILocation(line: 0, scope: !557)
!829 = !DILocation(line: 207, column: 13, scope: !830)
!830 = distinct !DILexicalBlock(scope: !824, file: !1, line: 206, column: 35)
!831 = !DILocation(line: 208, column: 20, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !1, line: 207, column: 20)
!833 = distinct !DILexicalBlock(scope: !830, file: !1, line: 207, column: 13)
!834 = !DILocation(line: 209, column: 39, scope: !832)
!835 = !DILocation(line: 209, column: 51, scope: !832)
!836 = !DILocation(line: 210, column: 40, scope: !832)
!837 = !DILocation(line: 209, column: 13, scope: !832)
!838 = !DILocation(line: 211, column: 22, scope: !832)
!839 = !DILocation(line: 211, column: 28, scope: !832)
!840 = !DILocation(line: 211, column: 25, scope: !832)
!841 = !DILocation(line: 211, column: 13, scope: !832)
!842 = !DILocation(line: 212, column: 9, scope: !832)
!843 = !DILocation(line: 0, scope: !832)
!844 = !DILocation(line: 213, column: 30, scope: !830)
!845 = !DILocation(line: 213, column: 27, scope: !830)
!846 = !DILocation(line: 213, column: 9, scope: !830)
!847 = !DILocation(line: 214, column: 15, scope: !830)
!848 = !DILocation(line: 206, column: 31, scope: !824)
!849 = !DILocation(line: 206, column: 5, scope: !824)
!850 = distinct !{!850, !827, !851}
!851 = !DILocation(line: 215, column: 5, scope: !822)
!852 = !DILocation(line: 0, scope: !830)
!853 = !DILocation(line: 216, column: 26, scope: !557)
!854 = !DILocation(line: 74, column: 42, scope: !229, inlinedAt: !855)
!855 = distinct !DILocation(line: 216, column: 33, scope: !557)
!856 = !DILocation(line: 75, column: 18, scope: !238, inlinedAt: !855)
!857 = !DILocation(line: 75, column: 27, scope: !238, inlinedAt: !855)
!858 = !DILocation(line: 75, column: 9, scope: !229, inlinedAt: !855)
!859 = !DILocation(line: 78, column: 9, scope: !246, inlinedAt: !855)
!860 = !DILocation(line: 76, column: 40, scope: !242, inlinedAt: !855)
!861 = !DILocation(line: 76, column: 16, scope: !242, inlinedAt: !855)
!862 = !DILocation(line: 76, column: 9, scope: !242, inlinedAt: !855)
!863 = !DILocation(line: 216, column: 5, scope: !557)
!864 = !DILocation(line: 217, column: 9, scope: !794)
!865 = !DILocation(line: 217, column: 9, scope: !557)
!866 = !DILocation(line: 218, column: 30, scope: !793)
!867 = !DILocation(line: 218, column: 23, scope: !793)
!868 = !DILocation(line: 218, column: 15, scope: !793)
!869 = !DILocation(line: 220, column: 30, scope: !793)
!870 = !DILocation(line: 220, column: 36, scope: !793)
!871 = !DILocation(line: 220, column: 33, scope: !793)
!872 = !DILocation(line: 220, column: 9, scope: !793)
!873 = !DILocation(line: 221, column: 50, scope: !793)
!874 = !DILocation(line: 221, column: 47, scope: !793)
!875 = !DILocation(line: 221, column: 61, scope: !793)
!876 = !DILocation(line: 221, column: 65, scope: !793)
!877 = !{!878, !124, i64 40}
!878 = !{!"redisDb", !127, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !127, i64 32, !124, i64 40, !220, i64 48, !127, i64 56}
!879 = !DILocation(line: 221, column: 9, scope: !793)
!880 = !DILocation(line: 222, column: 5, scope: !793)
!881 = !DILocation(line: 223, column: 21, scope: !557)
!882 = !DILocation(line: 223, column: 18, scope: !557)
!883 = !{!542, !220, i64 2080}
!884 = !DILocation(line: 224, column: 1, scope: !557)
!885 = !DILocation(line: 0, scope: !815)
!886 = distinct !DISubprogram(name: "lpushCommand", scope: !1, file: !1, line: 226, type: !685, isLocal: false, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !887)
!887 = !{!888}
!888 = !DILocalVariable(name: "c", arg: 1, scope: !886, file: !1, line: 226, type: !560)
!889 = !DILocation(line: 226, column: 27, scope: !886)
!890 = !DILocation(line: 227, column: 5, scope: !886)
!891 = !DILocation(line: 228, column: 1, scope: !886)
!892 = distinct !DISubprogram(name: "rpushCommand", scope: !1, file: !1, line: 230, type: !685, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !893)
!893 = !{!894}
!894 = !DILocalVariable(name: "c", arg: 1, scope: !892, file: !1, line: 230, type: !560)
!895 = !DILocation(line: 230, column: 27, scope: !892)
!896 = !DILocation(line: 231, column: 5, scope: !892)
!897 = !DILocation(line: 232, column: 1, scope: !892)
!898 = distinct !DISubprogram(name: "pushxGenericCommand", scope: !1, file: !1, line: 234, type: !558, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !899)
!899 = !{!900, !901, !902, !903, !904, !905}
!900 = !DILocalVariable(name: "c", arg: 1, scope: !898, file: !1, line: 234, type: !560)
!901 = !DILocalVariable(name: "where", arg: 2, scope: !898, file: !1, line: 234, type: !36)
!902 = !DILocalVariable(name: "j", scope: !898, file: !1, line: 235, type: !36)
!903 = !DILocalVariable(name: "pushed", scope: !898, file: !1, line: 235, type: !36)
!904 = !DILocalVariable(name: "subject", scope: !898, file: !1, line: 236, type: !89)
!905 = !DILocalVariable(name: "event", scope: !906, file: !1, line: 249, type: !4)
!906 = distinct !DILexicalBlock(scope: !907, file: !1, line: 248, column: 17)
!907 = distinct !DILexicalBlock(scope: !898, file: !1, line: 248, column: 9)
!908 = !DILocation(line: 234, column: 34, scope: !898)
!909 = !DILocation(line: 234, column: 41, scope: !898)
!910 = !DILocation(line: 235, column: 12, scope: !898)
!911 = !DILocation(line: 238, column: 47, scope: !912)
!912 = distinct !DILexicalBlock(scope: !898, file: !1, line: 238, column: 9)
!913 = !DILocation(line: 238, column: 44, scope: !912)
!914 = !DILocation(line: 238, column: 62, scope: !912)
!915 = !{!817, !127, i64 32}
!916 = !DILocation(line: 238, column: 20, scope: !912)
!917 = !DILocation(line: 236, column: 11, scope: !898)
!918 = !DILocation(line: 238, column: 70, scope: !912)
!919 = !DILocation(line: 238, column: 78, scope: !912)
!920 = !DILocation(line: 239, column: 9, scope: !912)
!921 = !DILocation(line: 238, column: 9, scope: !898)
!922 = !DILocation(line: 235, column: 9, scope: !898)
!923 = !DILocation(line: 241, column: 10, scope: !924)
!924 = distinct !DILexicalBlock(scope: !898, file: !1, line: 241, column: 5)
!925 = !DILocation(line: 241, column: 24, scope: !926)
!926 = distinct !DILexicalBlock(scope: !924, file: !1, line: 241, column: 5)
!927 = !DILocation(line: 241, column: 19, scope: !926)
!928 = !DILocation(line: 241, column: 5, scope: !924)
!929 = !DILocation(line: 242, column: 33, scope: !930)
!930 = distinct !DILexicalBlock(scope: !926, file: !1, line: 241, column: 35)
!931 = !DILocation(line: 242, column: 30, scope: !930)
!932 = !DILocation(line: 242, column: 9, scope: !930)
!933 = !DILocation(line: 243, column: 15, scope: !930)
!934 = !DILocation(line: 241, column: 31, scope: !926)
!935 = !DILocation(line: 241, column: 5, scope: !926)
!936 = distinct !{!936, !928, !937}
!937 = !DILocation(line: 244, column: 5, scope: !924)
!938 = !DILocation(line: 0, scope: !930)
!939 = !DILocation(line: 74, column: 42, scope: !229, inlinedAt: !940)
!940 = distinct !DILocation(line: 246, column: 24, scope: !898)
!941 = !DILocation(line: 75, column: 18, scope: !238, inlinedAt: !940)
!942 = !DILocation(line: 75, column: 27, scope: !238, inlinedAt: !940)
!943 = !DILocation(line: 75, column: 9, scope: !229, inlinedAt: !940)
!944 = !DILocation(line: 78, column: 9, scope: !246, inlinedAt: !940)
!945 = !DILocation(line: 76, column: 40, scope: !242, inlinedAt: !940)
!946 = !DILocation(line: 76, column: 16, scope: !242, inlinedAt: !940)
!947 = !DILocation(line: 76, column: 9, scope: !242, inlinedAt: !940)
!948 = !DILocation(line: 246, column: 5, scope: !898)
!949 = !DILocation(line: 248, column: 9, scope: !907)
!950 = !DILocation(line: 248, column: 9, scope: !898)
!951 = !DILocation(line: 249, column: 30, scope: !906)
!952 = !DILocation(line: 249, column: 23, scope: !906)
!953 = !DILocation(line: 249, column: 15, scope: !906)
!954 = !DILocation(line: 250, column: 30, scope: !906)
!955 = !DILocation(line: 250, column: 36, scope: !906)
!956 = !DILocation(line: 250, column: 33, scope: !906)
!957 = !DILocation(line: 250, column: 9, scope: !906)
!958 = !DILocation(line: 251, column: 50, scope: !906)
!959 = !DILocation(line: 251, column: 47, scope: !906)
!960 = !DILocation(line: 251, column: 61, scope: !906)
!961 = !DILocation(line: 251, column: 65, scope: !906)
!962 = !DILocation(line: 251, column: 9, scope: !906)
!963 = !DILocation(line: 252, column: 5, scope: !906)
!964 = !DILocation(line: 253, column: 21, scope: !898)
!965 = !DILocation(line: 253, column: 18, scope: !898)
!966 = !DILocation(line: 254, column: 1, scope: !898)
!967 = !DILocation(line: 0, scope: !912)
!968 = distinct !DISubprogram(name: "lpushxCommand", scope: !1, file: !1, line: 256, type: !685, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !969)
!969 = !{!970}
!970 = !DILocalVariable(name: "c", arg: 1, scope: !968, file: !1, line: 256, type: !560)
!971 = !DILocation(line: 256, column: 28, scope: !968)
!972 = !DILocation(line: 257, column: 5, scope: !968)
!973 = !DILocation(line: 258, column: 1, scope: !968)
!974 = distinct !DISubprogram(name: "rpushxCommand", scope: !1, file: !1, line: 260, type: !685, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !975)
!975 = !{!976}
!976 = !DILocalVariable(name: "c", arg: 1, scope: !974, file: !1, line: 260, type: !560)
!977 = !DILocation(line: 260, column: 28, scope: !974)
!978 = !DILocation(line: 261, column: 5, scope: !974)
!979 = !DILocation(line: 262, column: 1, scope: !974)
!980 = distinct !DISubprogram(name: "linsertCommand", scope: !1, file: !1, line: 264, type: !685, isLocal: false, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !981)
!981 = !{!982, !983, !984, !985, !986, !987}
!982 = !DILocalVariable(name: "c", arg: 1, scope: !980, file: !1, line: 264, type: !560)
!983 = !DILocalVariable(name: "where", scope: !980, file: !1, line: 265, type: !36)
!984 = !DILocalVariable(name: "subject", scope: !980, file: !1, line: 266, type: !89)
!985 = !DILocalVariable(name: "iter", scope: !980, file: !1, line: 267, type: !250)
!986 = !DILocalVariable(name: "entry", scope: !980, file: !1, line: 268, type: !324)
!987 = !DILocalVariable(name: "inserted", scope: !980, file: !1, line: 269, type: !36)
!988 = !DILocation(line: 264, column: 29, scope: !980)
!989 = !DILocation(line: 268, column: 5, scope: !980)
!990 = !DILocation(line: 269, column: 9, scope: !980)
!991 = !DILocation(line: 271, column: 23, scope: !992)
!992 = distinct !DILexicalBlock(scope: !980, file: !1, line: 271, column: 9)
!993 = !DILocation(line: 271, column: 20, scope: !992)
!994 = !DILocation(line: 271, column: 32, scope: !992)
!995 = !DILocation(line: 271, column: 9, scope: !992)
!996 = !DILocation(line: 271, column: 45, scope: !992)
!997 = !DILocation(line: 271, column: 9, scope: !980)
!998 = !DILocation(line: 273, column: 16, scope: !999)
!999 = distinct !DILexicalBlock(scope: !992, file: !1, line: 273, column: 16)
!1000 = !DILocation(line: 273, column: 53, scope: !999)
!1001 = !DILocation(line: 273, column: 16, scope: !992)
!1002 = !DILocation(line: 276, column: 27, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !999, file: !1, line: 275, column: 12)
!1004 = !{!817, !127, i64 128}
!1005 = !DILocation(line: 276, column: 9, scope: !1003)
!1006 = !DILocation(line: 277, column: 9, scope: !1003)
!1007 = !DILocation(line: 0, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !999, file: !1, line: 273, column: 59)
!1009 = !DILocation(line: 265, column: 9, scope: !980)
!1010 = !DILocation(line: 280, column: 44, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !980, file: !1, line: 280, column: 9)
!1012 = !DILocation(line: 280, column: 62, scope: !1011)
!1013 = !DILocation(line: 280, column: 20, scope: !1011)
!1014 = !DILocation(line: 266, column: 11, scope: !980)
!1015 = !DILocation(line: 280, column: 70, scope: !1011)
!1016 = !DILocation(line: 280, column: 78, scope: !1011)
!1017 = !DILocation(line: 281, column: 9, scope: !1011)
!1018 = !DILocation(line: 280, column: 9, scope: !980)
!1019 = !DILocation(line: 83, column: 46, scope: !247, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 284, column: 12, scope: !980)
!1021 = !DILocation(line: 83, column: 60, scope: !247, inlinedAt: !1020)
!1022 = !DILocation(line: 84, column: 54, scope: !247, inlinedAt: !1020)
!1023 = !DILocation(line: 85, column: 28, scope: !247, inlinedAt: !1020)
!1024 = !DILocation(line: 86, column: 9, scope: !247, inlinedAt: !1020)
!1025 = !DILocation(line: 86, column: 17, scope: !247, inlinedAt: !1020)
!1026 = !DILocation(line: 87, column: 29, scope: !247, inlinedAt: !1020)
!1027 = !DILocation(line: 87, column: 20, scope: !247, inlinedAt: !1020)
!1028 = !DILocation(line: 87, column: 9, scope: !247, inlinedAt: !1020)
!1029 = !DILocation(line: 87, column: 18, scope: !247, inlinedAt: !1020)
!1030 = !DILocation(line: 88, column: 9, scope: !247, inlinedAt: !1020)
!1031 = !DILocation(line: 88, column: 19, scope: !247, inlinedAt: !1020)
!1032 = !DILocation(line: 89, column: 9, scope: !247, inlinedAt: !1020)
!1033 = !DILocation(line: 89, column: 14, scope: !247, inlinedAt: !1020)
!1034 = !DILocation(line: 94, column: 22, scope: !296, inlinedAt: !1020)
!1035 = !DILocation(line: 94, column: 9, scope: !247, inlinedAt: !1020)
!1036 = !DILocation(line: 98, column: 9, scope: !308, inlinedAt: !1020)
!1037 = !DILocation(line: 92, column: 9, scope: !247, inlinedAt: !1020)
!1038 = !DILocation(line: 85, column: 23, scope: !247, inlinedAt: !1020)
!1039 = !DILocation(line: 95, column: 59, scope: !303, inlinedAt: !1020)
!1040 = !DILocation(line: 95, column: 20, scope: !303, inlinedAt: !1020)
!1041 = !DILocation(line: 95, column: 18, scope: !303, inlinedAt: !1020)
!1042 = !DILocation(line: 100, column: 5, scope: !247, inlinedAt: !1020)
!1043 = !DILocation(line: 267, column: 23, scope: !980)
!1044 = !DILocation(line: 285, column: 5, scope: !980)
!1045 = !DILocation(line: 268, column: 19, scope: !980)
!1046 = !DILocation(line: 285, column: 12, scope: !980)
!1047 = !DILocation(line: 286, column: 37, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 286, column: 13)
!1049 = distinct !DILexicalBlock(scope: !980, file: !1, line: 285, column: 39)
!1050 = !DILocation(line: 286, column: 34, scope: !1048)
!1051 = !DILocation(line: 286, column: 13, scope: !1048)
!1052 = !DILocation(line: 286, column: 13, scope: !1049)
!1053 = distinct !{!1053, !1044, !1054}
!1054 = !DILocation(line: 291, column: 5, scope: !980)
!1055 = !DILocation(line: 287, column: 38, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 286, column: 47)
!1057 = !DILocation(line: 287, column: 35, scope: !1056)
!1058 = !DILocation(line: 287, column: 13, scope: !1056)
!1059 = !DILocation(line: 289, column: 13, scope: !1056)
!1060 = !DILocation(line: 104, column: 48, scope: !309, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 292, column: 5, scope: !980)
!1062 = !DILocation(line: 105, column: 15, scope: !309, inlinedAt: !1061)
!1063 = !DILocation(line: 105, column: 5, scope: !309, inlinedAt: !1061)
!1064 = !DILocation(line: 106, column: 5, scope: !309, inlinedAt: !1061)
!1065 = !DILocation(line: 107, column: 1, scope: !309, inlinedAt: !1061)
!1066 = !DILocation(line: 294, column: 9, scope: !980)
!1067 = !DILocation(line: 295, column: 30, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !1, line: 294, column: 19)
!1069 = distinct !DILexicalBlock(scope: !980, file: !1, line: 294, column: 9)
!1070 = !DILocation(line: 295, column: 36, scope: !1068)
!1071 = !DILocation(line: 295, column: 33, scope: !1068)
!1072 = !DILocation(line: 295, column: 9, scope: !1068)
!1073 = !DILocation(line: 297, column: 32, scope: !1068)
!1074 = !DILocation(line: 297, column: 29, scope: !1068)
!1075 = !DILocation(line: 297, column: 43, scope: !1068)
!1076 = !DILocation(line: 297, column: 47, scope: !1068)
!1077 = !DILocation(line: 296, column: 9, scope: !1068)
!1078 = !DILocation(line: 298, column: 21, scope: !1068)
!1079 = !DILocation(line: 74, column: 42, scope: !229, inlinedAt: !1080)
!1080 = distinct !DILocation(line: 305, column: 24, scope: !980)
!1081 = !DILocation(line: 75, column: 18, scope: !238, inlinedAt: !1080)
!1082 = !DILocation(line: 75, column: 27, scope: !238, inlinedAt: !1080)
!1083 = !DILocation(line: 75, column: 9, scope: !229, inlinedAt: !1080)
!1084 = !DILocation(line: 78, column: 9, scope: !246, inlinedAt: !1080)
!1085 = !DILocation(line: 76, column: 40, scope: !242, inlinedAt: !1080)
!1086 = !DILocation(line: 76, column: 16, scope: !242, inlinedAt: !1080)
!1087 = !DILocation(line: 76, column: 9, scope: !242, inlinedAt: !1080)
!1088 = !DILocation(line: 305, column: 5, scope: !980)
!1089 = !DILocation(line: 306, column: 1, scope: !980)
!1090 = !DILocation(line: 104, column: 48, scope: !309, inlinedAt: !1091)
!1091 = distinct !DILocation(line: 292, column: 5, scope: !980)
!1092 = !DILocation(line: 105, column: 15, scope: !309, inlinedAt: !1091)
!1093 = !DILocation(line: 105, column: 5, scope: !309, inlinedAt: !1091)
!1094 = !DILocation(line: 106, column: 5, scope: !309, inlinedAt: !1091)
!1095 = !DILocation(line: 107, column: 1, scope: !309, inlinedAt: !1091)
!1096 = !DILocation(line: 301, column: 27, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1069, file: !1, line: 299, column: 12)
!1098 = !{!817, !127, i64 48}
!1099 = !DILocation(line: 301, column: 9, scope: !1097)
!1100 = !DILocation(line: 302, column: 9, scope: !1097)
!1101 = !DILocation(line: 0, scope: !1003)
!1102 = distinct !DISubprogram(name: "llenCommand", scope: !1, file: !1, line: 308, type: !685, isLocal: false, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1103)
!1103 = !{!1104, !1105}
!1104 = !DILocalVariable(name: "c", arg: 1, scope: !1102, file: !1, line: 308, type: !560)
!1105 = !DILocalVariable(name: "o", scope: !1102, file: !1, line: 309, type: !89)
!1106 = !DILocation(line: 308, column: 26, scope: !1102)
!1107 = !DILocation(line: 309, column: 41, scope: !1102)
!1108 = !DILocation(line: 309, column: 38, scope: !1102)
!1109 = !DILocation(line: 309, column: 56, scope: !1102)
!1110 = !DILocation(line: 309, column: 15, scope: !1102)
!1111 = !DILocation(line: 309, column: 11, scope: !1102)
!1112 = !DILocation(line: 310, column: 11, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1102, file: !1, line: 310, column: 9)
!1114 = !DILocation(line: 310, column: 19, scope: !1113)
!1115 = !DILocation(line: 310, column: 22, scope: !1113)
!1116 = !DILocation(line: 310, column: 9, scope: !1102)
!1117 = !DILocation(line: 74, column: 42, scope: !229, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 311, column: 24, scope: !1102)
!1119 = !DILocation(line: 75, column: 18, scope: !238, inlinedAt: !1118)
!1120 = !DILocation(line: 75, column: 27, scope: !238, inlinedAt: !1118)
!1121 = !DILocation(line: 75, column: 9, scope: !229, inlinedAt: !1118)
!1122 = !DILocation(line: 78, column: 9, scope: !246, inlinedAt: !1118)
!1123 = !DILocation(line: 76, column: 40, scope: !242, inlinedAt: !1118)
!1124 = !DILocation(line: 76, column: 16, scope: !242, inlinedAt: !1118)
!1125 = !DILocation(line: 76, column: 9, scope: !242, inlinedAt: !1118)
!1126 = !DILocation(line: 311, column: 5, scope: !1102)
!1127 = !DILocation(line: 312, column: 1, scope: !1102)
!1128 = !DILocation(line: 0, scope: !1113)
!1129 = distinct !DISubprogram(name: "lindexCommand", scope: !1, file: !1, line: 314, type: !685, isLocal: false, isDefinition: true, scopeLine: 314, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1130)
!1130 = !{!1131, !1132, !1133, !1134, !1135}
!1131 = !DILocalVariable(name: "c", arg: 1, scope: !1129, file: !1, line: 314, type: !560)
!1132 = !DILocalVariable(name: "o", scope: !1129, file: !1, line: 315, type: !89)
!1133 = !DILocalVariable(name: "index", scope: !1129, file: !1, line: 317, type: !268)
!1134 = !DILocalVariable(name: "value", scope: !1129, file: !1, line: 318, type: !89)
!1135 = !DILocalVariable(name: "entry", scope: !1136, file: !1, line: 324, type: !329)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !1, line: 323, column: 48)
!1137 = distinct !DILexicalBlock(scope: !1129, file: !1, line: 323, column: 9)
!1138 = !DILocation(line: 314, column: 28, scope: !1129)
!1139 = !DILocation(line: 315, column: 41, scope: !1129)
!1140 = !DILocation(line: 315, column: 38, scope: !1129)
!1141 = !DILocation(line: 315, column: 56, scope: !1129)
!1142 = !{!817, !127, i64 80}
!1143 = !DILocation(line: 315, column: 15, scope: !1129)
!1144 = !DILocation(line: 315, column: 11, scope: !1129)
!1145 = !DILocation(line: 316, column: 11, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1129, file: !1, line: 316, column: 9)
!1147 = !DILocation(line: 316, column: 19, scope: !1146)
!1148 = !DILocation(line: 316, column: 22, scope: !1146)
!1149 = !DILocation(line: 316, column: 9, scope: !1129)
!1150 = !DILocation(line: 317, column: 5, scope: !1129)
!1151 = !DILocation(line: 318, column: 11, scope: !1129)
!1152 = !DILocation(line: 320, column: 41, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1129, file: !1, line: 320, column: 9)
!1154 = !DILocation(line: 320, column: 38, scope: !1153)
!1155 = !DILocation(line: 317, column: 10, scope: !1129)
!1156 = !DILocation(line: 320, column: 10, scope: !1153)
!1157 = !DILocation(line: 320, column: 64, scope: !1153)
!1158 = !DILocation(line: 320, column: 9, scope: !1129)
!1159 = !DILocation(line: 323, column: 12, scope: !1137)
!1160 = !DILocation(line: 323, column: 21, scope: !1137)
!1161 = !DILocation(line: 323, column: 9, scope: !1129)
!1162 = !DILocation(line: 324, column: 9, scope: !1136)
!1163 = !DILocation(line: 325, column: 31, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1136, file: !1, line: 325, column: 13)
!1165 = !DILocation(line: 325, column: 36, scope: !1164)
!1166 = !DILocation(line: 324, column: 24, scope: !1136)
!1167 = !DILocation(line: 325, column: 13, scope: !1164)
!1168 = !DILocation(line: 325, column: 13, scope: !1136)
!1169 = !DILocation(line: 326, column: 23, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !1, line: 326, column: 17)
!1171 = distinct !DILexicalBlock(scope: !1164, file: !1, line: 325, column: 52)
!1172 = !{!349, !127, i64 24}
!1173 = !DILocation(line: 326, column: 17, scope: !1170)
!1174 = !DILocation(line: 326, column: 17, scope: !1171)
!1175 = !DILocation(line: 327, column: 69, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1170, file: !1, line: 326, column: 30)
!1177 = !{!349, !124, i64 40}
!1178 = !DILocation(line: 327, column: 63, scope: !1176)
!1179 = !DILocation(line: 327, column: 25, scope: !1176)
!1180 = !DILocation(line: 328, column: 13, scope: !1176)
!1181 = !DILocation(line: 329, column: 62, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1170, file: !1, line: 328, column: 20)
!1183 = !{!349, !220, i64 32}
!1184 = !DILocation(line: 329, column: 25, scope: !1182)
!1185 = !DILocation(line: 0, scope: !1182)
!1186 = !DILocation(line: 331, column: 13, scope: !1171)
!1187 = !DILocation(line: 332, column: 13, scope: !1171)
!1188 = !DILocation(line: 333, column: 9, scope: !1171)
!1189 = !DILocation(line: 334, column: 31, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1164, file: !1, line: 333, column: 16)
!1191 = !DILocation(line: 334, column: 13, scope: !1190)
!1192 = !DILocation(line: 336, column: 5, scope: !1137)
!1193 = !DILocation(line: 339, column: 1, scope: !1129)
!1194 = !DILocation(line: 337, column: 9, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1137, file: !1, line: 336, column: 12)
!1196 = !DILocation(line: 0, scope: !1153)
!1197 = distinct !DISubprogram(name: "lsetCommand", scope: !1, file: !1, line: 341, type: !685, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1198)
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1206}
!1199 = !DILocalVariable(name: "c", arg: 1, scope: !1197, file: !1, line: 341, type: !560)
!1200 = !DILocalVariable(name: "o", scope: !1197, file: !1, line: 342, type: !89)
!1201 = !DILocalVariable(name: "index", scope: !1197, file: !1, line: 344, type: !268)
!1202 = !DILocalVariable(name: "value", scope: !1197, file: !1, line: 345, type: !89)
!1203 = !DILocalVariable(name: "ql", scope: !1204, file: !1, line: 351, type: !9)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !1, line: 350, column: 48)
!1205 = distinct !DILexicalBlock(scope: !1197, file: !1, line: 350, column: 9)
!1206 = !DILocalVariable(name: "replaced", scope: !1204, file: !1, line: 352, type: !36)
!1207 = !DILocation(line: 341, column: 26, scope: !1197)
!1208 = !DILocation(line: 342, column: 42, scope: !1197)
!1209 = !DILocation(line: 342, column: 39, scope: !1197)
!1210 = !DILocation(line: 342, column: 57, scope: !1197)
!1211 = !{!817, !127, i64 120}
!1212 = !DILocation(line: 342, column: 15, scope: !1197)
!1213 = !DILocation(line: 342, column: 11, scope: !1197)
!1214 = !DILocation(line: 343, column: 11, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1197, file: !1, line: 343, column: 9)
!1216 = !DILocation(line: 343, column: 19, scope: !1215)
!1217 = !DILocation(line: 343, column: 22, scope: !1215)
!1218 = !DILocation(line: 343, column: 9, scope: !1197)
!1219 = !DILocation(line: 344, column: 5, scope: !1197)
!1220 = !DILocation(line: 345, column: 22, scope: !1197)
!1221 = !DILocation(line: 345, column: 19, scope: !1197)
!1222 = !DILocation(line: 345, column: 11, scope: !1197)
!1223 = !DILocation(line: 347, column: 38, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1197, file: !1, line: 347, column: 9)
!1225 = !DILocation(line: 344, column: 10, scope: !1197)
!1226 = !DILocation(line: 347, column: 10, scope: !1224)
!1227 = !DILocation(line: 347, column: 64, scope: !1224)
!1228 = !DILocation(line: 347, column: 9, scope: !1197)
!1229 = !DILocation(line: 350, column: 12, scope: !1205)
!1230 = !DILocation(line: 350, column: 21, scope: !1205)
!1231 = !DILocation(line: 350, column: 9, scope: !1197)
!1232 = !DILocation(line: 351, column: 28, scope: !1204)
!1233 = !DILocation(line: 351, column: 20, scope: !1204)
!1234 = !DILocation(line: 352, column: 52, scope: !1204)
!1235 = !DILocation(line: 353, column: 55, scope: !1204)
!1236 = !DILocation(line: 87, column: 39, scope: !129, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 353, column: 60, scope: !1204)
!1238 = !DILocation(line: 88, column: 27, scope: !129, inlinedAt: !1237)
!1239 = !DILocation(line: 88, column: 19, scope: !129, inlinedAt: !1237)
!1240 = !DILocation(line: 89, column: 5, scope: !129, inlinedAt: !1237)
!1241 = !DILocation(line: 91, column: 20, scope: !145, inlinedAt: !1237)
!1242 = !DILocation(line: 91, column: 13, scope: !145, inlinedAt: !1237)
!1243 = !DILocation(line: 93, column: 20, scope: !145, inlinedAt: !1237)
!1244 = !DILocation(line: 93, column: 34, scope: !145, inlinedAt: !1237)
!1245 = !DILocation(line: 93, column: 13, scope: !145, inlinedAt: !1237)
!1246 = !DILocation(line: 95, column: 20, scope: !145, inlinedAt: !1237)
!1247 = !DILocation(line: 95, column: 35, scope: !145, inlinedAt: !1237)
!1248 = !DILocation(line: 95, column: 13, scope: !145, inlinedAt: !1237)
!1249 = !DILocation(line: 97, column: 20, scope: !145, inlinedAt: !1237)
!1250 = !DILocation(line: 97, column: 35, scope: !145, inlinedAt: !1237)
!1251 = !DILocation(line: 97, column: 13, scope: !145, inlinedAt: !1237)
!1252 = !DILocation(line: 99, column: 20, scope: !145, inlinedAt: !1237)
!1253 = !DILocation(line: 99, column: 35, scope: !145, inlinedAt: !1237)
!1254 = !DILocation(line: 99, column: 13, scope: !145, inlinedAt: !1237)
!1255 = !DILocation(line: 0, scope: !145, inlinedAt: !1237)
!1256 = !DILocation(line: 0, scope: !1204)
!1257 = !DILocation(line: 102, column: 1, scope: !129, inlinedAt: !1237)
!1258 = !DILocation(line: 353, column: 60, scope: !1204)
!1259 = !DILocation(line: 352, column: 24, scope: !1204)
!1260 = !DILocation(line: 352, column: 13, scope: !1204)
!1261 = !DILocation(line: 354, column: 14, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 354, column: 13)
!1263 = !DILocation(line: 354, column: 13, scope: !1204)
!1264 = !DILocation(line: 355, column: 31, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1262, file: !1, line: 354, column: 24)
!1266 = !{!817, !127, i64 144}
!1267 = !DILocation(line: 355, column: 13, scope: !1265)
!1268 = !DILocation(line: 356, column: 9, scope: !1265)
!1269 = !DILocation(line: 357, column: 31, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1262, file: !1, line: 356, column: 16)
!1271 = !{!817, !127, i64 8}
!1272 = !DILocation(line: 357, column: 13, scope: !1270)
!1273 = !DILocation(line: 358, column: 34, scope: !1270)
!1274 = !DILocation(line: 358, column: 40, scope: !1270)
!1275 = !DILocation(line: 358, column: 37, scope: !1270)
!1276 = !DILocation(line: 358, column: 13, scope: !1270)
!1277 = !DILocation(line: 359, column: 55, scope: !1270)
!1278 = !DILocation(line: 359, column: 52, scope: !1270)
!1279 = !DILocation(line: 359, column: 66, scope: !1270)
!1280 = !DILocation(line: 359, column: 70, scope: !1270)
!1281 = !DILocation(line: 359, column: 13, scope: !1270)
!1282 = !DILocation(line: 360, column: 25, scope: !1270)
!1283 = !DILocation(line: 365, column: 1, scope: !1197)
!1284 = !DILocation(line: 363, column: 9, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1205, file: !1, line: 362, column: 12)
!1286 = !DILocation(line: 0, scope: !1224)
!1287 = distinct !DISubprogram(name: "popGenericCommand", scope: !1, file: !1, line: 367, type: !558, isLocal: false, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1288)
!1288 = !{!1289, !1290, !1291, !1292, !1293}
!1289 = !DILocalVariable(name: "c", arg: 1, scope: !1287, file: !1, line: 367, type: !560)
!1290 = !DILocalVariable(name: "where", arg: 2, scope: !1287, file: !1, line: 367, type: !36)
!1291 = !DILocalVariable(name: "o", scope: !1287, file: !1, line: 368, type: !89)
!1292 = !DILocalVariable(name: "value", scope: !1287, file: !1, line: 371, type: !89)
!1293 = !DILocalVariable(name: "event", scope: !1294, file: !1, line: 375, type: !4)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !1, line: 374, column: 12)
!1295 = distinct !DILexicalBlock(scope: !1287, file: !1, line: 372, column: 9)
!1296 = !DILocation(line: 367, column: 32, scope: !1287)
!1297 = !DILocation(line: 367, column: 39, scope: !1287)
!1298 = !DILocation(line: 368, column: 42, scope: !1287)
!1299 = !DILocation(line: 368, column: 39, scope: !1287)
!1300 = !DILocation(line: 368, column: 57, scope: !1287)
!1301 = !DILocation(line: 368, column: 15, scope: !1287)
!1302 = !DILocation(line: 368, column: 11, scope: !1287)
!1303 = !DILocation(line: 369, column: 11, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1287, file: !1, line: 369, column: 9)
!1305 = !DILocation(line: 369, column: 19, scope: !1304)
!1306 = !DILocation(line: 369, column: 22, scope: !1304)
!1307 = !DILocation(line: 369, column: 9, scope: !1287)
!1308 = !DILocation(line: 371, column: 19, scope: !1287)
!1309 = !DILocation(line: 371, column: 11, scope: !1287)
!1310 = !DILocation(line: 372, column: 15, scope: !1295)
!1311 = !DILocation(line: 372, column: 9, scope: !1287)
!1312 = !DILocation(line: 373, column: 27, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1295, file: !1, line: 372, column: 24)
!1314 = !DILocation(line: 373, column: 9, scope: !1313)
!1315 = !DILocation(line: 374, column: 5, scope: !1313)
!1316 = !DILocation(line: 375, column: 30, scope: !1294)
!1317 = !DILocation(line: 375, column: 23, scope: !1294)
!1318 = !DILocation(line: 375, column: 15, scope: !1294)
!1319 = !DILocation(line: 377, column: 9, scope: !1294)
!1320 = !DILocation(line: 378, column: 9, scope: !1294)
!1321 = !DILocation(line: 379, column: 50, scope: !1294)
!1322 = !DILocation(line: 379, column: 47, scope: !1294)
!1323 = !DILocation(line: 379, column: 61, scope: !1294)
!1324 = !DILocation(line: 379, column: 65, scope: !1294)
!1325 = !DILocation(line: 379, column: 9, scope: !1294)
!1326 = !DILocation(line: 74, column: 42, scope: !229, inlinedAt: !1327)
!1327 = distinct !DILocation(line: 380, column: 13, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 380, column: 13)
!1329 = !DILocation(line: 75, column: 18, scope: !238, inlinedAt: !1327)
!1330 = !DILocation(line: 75, column: 27, scope: !238, inlinedAt: !1327)
!1331 = !DILocation(line: 75, column: 9, scope: !229, inlinedAt: !1327)
!1332 = !DILocation(line: 78, column: 9, scope: !246, inlinedAt: !1327)
!1333 = !DILocation(line: 76, column: 40, scope: !242, inlinedAt: !1327)
!1334 = !DILocation(line: 76, column: 16, scope: !242, inlinedAt: !1327)
!1335 = !DILocation(line: 76, column: 9, scope: !242, inlinedAt: !1327)
!1336 = !DILocation(line: 380, column: 31, scope: !1328)
!1337 = !DILocation(line: 380, column: 13, scope: !1294)
!1338 = !DILocation(line: 382, column: 36, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1328, file: !1, line: 380, column: 37)
!1340 = !DILocation(line: 382, column: 33, scope: !1339)
!1341 = !DILocation(line: 382, column: 47, scope: !1339)
!1342 = !DILocation(line: 382, column: 51, scope: !1339)
!1343 = !DILocation(line: 381, column: 13, scope: !1339)
!1344 = !DILocation(line: 383, column: 25, scope: !1339)
!1345 = !DILocation(line: 383, column: 31, scope: !1339)
!1346 = !DILocation(line: 383, column: 28, scope: !1339)
!1347 = !DILocation(line: 383, column: 13, scope: !1339)
!1348 = !DILocation(line: 384, column: 9, scope: !1339)
!1349 = !DILocation(line: 385, column: 30, scope: !1294)
!1350 = !DILocation(line: 385, column: 36, scope: !1294)
!1351 = !DILocation(line: 385, column: 33, scope: !1294)
!1352 = !DILocation(line: 385, column: 9, scope: !1294)
!1353 = !DILocation(line: 386, column: 21, scope: !1294)
!1354 = !DILocation(line: 388, column: 1, scope: !1287)
!1355 = !DILocation(line: 0, scope: !1304)
!1356 = distinct !DISubprogram(name: "lpopCommand", scope: !1, file: !1, line: 390, type: !685, isLocal: false, isDefinition: true, scopeLine: 390, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1357)
!1357 = !{!1358}
!1358 = !DILocalVariable(name: "c", arg: 1, scope: !1356, file: !1, line: 390, type: !560)
!1359 = !DILocation(line: 390, column: 26, scope: !1356)
!1360 = !DILocation(line: 391, column: 5, scope: !1356)
!1361 = !DILocation(line: 392, column: 1, scope: !1356)
!1362 = distinct !DISubprogram(name: "rpopCommand", scope: !1, file: !1, line: 394, type: !685, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1363)
!1363 = !{!1364}
!1364 = !DILocalVariable(name: "c", arg: 1, scope: !1362, file: !1, line: 394, type: !560)
!1365 = !DILocation(line: 394, column: 26, scope: !1362)
!1366 = !DILocation(line: 395, column: 5, scope: !1362)
!1367 = !DILocation(line: 396, column: 1, scope: !1362)
!1368 = distinct !DISubprogram(name: "lrangeCommand", scope: !1, file: !1, line: 398, type: !685, isLocal: false, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1369)
!1369 = !{!1370, !1371, !1372, !1373, !1374, !1375, !1376, !1379, !1381}
!1370 = !DILocalVariable(name: "c", arg: 1, scope: !1368, file: !1, line: 398, type: !560)
!1371 = !DILocalVariable(name: "o", scope: !1368, file: !1, line: 399, type: !89)
!1372 = !DILocalVariable(name: "start", scope: !1368, file: !1, line: 400, type: !268)
!1373 = !DILocalVariable(name: "end", scope: !1368, file: !1, line: 400, type: !268)
!1374 = !DILocalVariable(name: "llen", scope: !1368, file: !1, line: 400, type: !268)
!1375 = !DILocalVariable(name: "rangelen", scope: !1368, file: !1, line: 400, type: !268)
!1376 = !DILocalVariable(name: "iter", scope: !1377, file: !1, line: 426, type: !250)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 425, column: 48)
!1378 = distinct !DILexicalBlock(scope: !1368, file: !1, line: 425, column: 9)
!1379 = !DILocalVariable(name: "entry", scope: !1380, file: !1, line: 429, type: !324)
!1380 = distinct !DILexicalBlock(scope: !1377, file: !1, line: 428, column: 27)
!1381 = !DILocalVariable(name: "qe", scope: !1380, file: !1, line: 431, type: !1382)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
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
!1402 = !{!817, !127, i64 104}
!1403 = !DILocation(line: 405, column: 14, scope: !1399)
!1404 = !DILocation(line: 399, column: 11, scope: !1368)
!1405 = !DILocation(line: 405, column: 72, scope: !1399)
!1406 = !DILocation(line: 406, column: 10, scope: !1399)
!1407 = !DILocation(line: 406, column: 13, scope: !1399)
!1408 = !DILocation(line: 405, column: 9, scope: !1368)
!1409 = !DILocation(line: 74, column: 42, scope: !229, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 407, column: 12, scope: !1368)
!1411 = !DILocation(line: 75, column: 18, scope: !238, inlinedAt: !1410)
!1412 = !DILocation(line: 75, column: 27, scope: !238, inlinedAt: !1410)
!1413 = !DILocation(line: 75, column: 9, scope: !229, inlinedAt: !1410)
!1414 = !DILocation(line: 78, column: 9, scope: !246, inlinedAt: !1410)
!1415 = !DILocation(line: 76, column: 40, scope: !242, inlinedAt: !1410)
!1416 = !DILocation(line: 76, column: 16, scope: !242, inlinedAt: !1410)
!1417 = !DILocation(line: 76, column: 9, scope: !242, inlinedAt: !1410)
!1418 = !DILocation(line: 400, column: 22, scope: !1368)
!1419 = !DILocation(line: 410, column: 9, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1368, file: !1, line: 410, column: 9)
!1421 = !DILocation(line: 410, column: 15, scope: !1420)
!1422 = !DILocation(line: 410, column: 9, scope: !1368)
!1423 = !DILocation(line: 410, column: 32, scope: !1420)
!1424 = !DILocation(line: 410, column: 26, scope: !1420)
!1425 = !DILocation(line: 410, column: 20, scope: !1420)
!1426 = !DILocation(line: 411, column: 9, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1368, file: !1, line: 411, column: 9)
!1428 = !DILocation(line: 411, column: 13, scope: !1427)
!1429 = !DILocation(line: 411, column: 9, scope: !1368)
!1430 = !DILocation(line: 411, column: 28, scope: !1427)
!1431 = !DILocation(line: 411, column: 22, scope: !1427)
!1432 = !DILocation(line: 411, column: 18, scope: !1427)
!1433 = !DILocation(line: 412, column: 15, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1368, file: !1, line: 412, column: 9)
!1435 = !DILocation(line: 412, column: 9, scope: !1368)
!1436 = !DILocation(line: 412, column: 26, scope: !1434)
!1437 = !DILocation(line: 412, column: 20, scope: !1434)
!1438 = !DILocation(line: 416, column: 9, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1368, file: !1, line: 416, column: 9)
!1440 = !DILocation(line: 416, column: 15, scope: !1439)
!1441 = !DILocation(line: 416, column: 21, scope: !1439)
!1442 = !DILocation(line: 416, column: 30, scope: !1439)
!1443 = !DILocation(line: 416, column: 9, scope: !1368)
!1444 = !DILocation(line: 417, column: 27, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1439, file: !1, line: 416, column: 39)
!1446 = !DILocation(line: 417, column: 9, scope: !1445)
!1447 = !DILocation(line: 418, column: 9, scope: !1445)
!1448 = !DILocation(line: 420, column: 13, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1368, file: !1, line: 420, column: 9)
!1450 = !DILocation(line: 420, column: 9, scope: !1368)
!1451 = !DILocation(line: 420, column: 32, scope: !1449)
!1452 = !DILocation(line: 420, column: 26, scope: !1449)
!1453 = !DILocation(line: 420, column: 22, scope: !1449)
!1454 = !DILocation(line: 421, column: 17, scope: !1368)
!1455 = !DILocation(line: 421, column: 20, scope: !1368)
!1456 = !DILocation(line: 421, column: 27, scope: !1368)
!1457 = !DILocation(line: 400, column: 28, scope: !1368)
!1458 = !DILocation(line: 424, column: 5, scope: !1368)
!1459 = !DILocation(line: 425, column: 12, scope: !1378)
!1460 = !DILocation(line: 425, column: 21, scope: !1378)
!1461 = !DILocation(line: 425, column: 9, scope: !1368)
!1462 = !DILocation(line: 426, column: 58, scope: !1377)
!1463 = !DILocation(line: 83, column: 46, scope: !247, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 426, column: 34, scope: !1377)
!1465 = !DILocation(line: 83, column: 60, scope: !247, inlinedAt: !1464)
!1466 = !DILocation(line: 84, column: 54, scope: !247, inlinedAt: !1464)
!1467 = !DILocation(line: 85, column: 28, scope: !247, inlinedAt: !1464)
!1468 = !DILocation(line: 86, column: 9, scope: !247, inlinedAt: !1464)
!1469 = !DILocation(line: 86, column: 17, scope: !247, inlinedAt: !1464)
!1470 = !DILocation(line: 87, column: 29, scope: !247, inlinedAt: !1464)
!1471 = !DILocation(line: 87, column: 20, scope: !247, inlinedAt: !1464)
!1472 = !DILocation(line: 87, column: 9, scope: !247, inlinedAt: !1464)
!1473 = !DILocation(line: 87, column: 18, scope: !247, inlinedAt: !1464)
!1474 = !DILocation(line: 88, column: 9, scope: !247, inlinedAt: !1464)
!1475 = !DILocation(line: 88, column: 19, scope: !247, inlinedAt: !1464)
!1476 = !DILocation(line: 89, column: 9, scope: !247, inlinedAt: !1464)
!1477 = !DILocation(line: 89, column: 14, scope: !247, inlinedAt: !1464)
!1478 = !DILocation(line: 94, column: 22, scope: !296, inlinedAt: !1464)
!1479 = !DILocation(line: 94, column: 9, scope: !247, inlinedAt: !1464)
!1480 = !DILocation(line: 98, column: 9, scope: !308, inlinedAt: !1464)
!1481 = !DILocation(line: 92, column: 9, scope: !247, inlinedAt: !1464)
!1482 = !DILocation(line: 85, column: 23, scope: !247, inlinedAt: !1464)
!1483 = !DILocation(line: 95, column: 59, scope: !303, inlinedAt: !1464)
!1484 = !DILocation(line: 95, column: 20, scope: !303, inlinedAt: !1464)
!1485 = !DILocation(line: 95, column: 18, scope: !303, inlinedAt: !1464)
!1486 = !DILocation(line: 100, column: 5, scope: !247, inlinedAt: !1464)
!1487 = !DILocation(line: 426, column: 27, scope: !1377)
!1488 = !DILocation(line: 428, column: 9, scope: !1377)
!1489 = !DILocation(line: 429, column: 13, scope: !1380)
!1490 = !DILocation(line: 429, column: 27, scope: !1380)
!1491 = !DILocation(line: 430, column: 13, scope: !1380)
!1492 = !DILocation(line: 432, column: 21, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1380, file: !1, line: 432, column: 17)
!1494 = !DILocation(line: 432, column: 17, scope: !1493)
!1495 = !DILocation(line: 432, column: 17, scope: !1380)
!1496 = !DILocation(line: 431, column: 29, scope: !1380)
!1497 = !DILocation(line: 433, column: 53, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1493, file: !1, line: 432, column: 28)
!1499 = !DILocation(line: 433, column: 49, scope: !1498)
!1500 = !DILocation(line: 433, column: 17, scope: !1498)
!1501 = !DILocation(line: 434, column: 13, scope: !1498)
!1502 = !DILocation(line: 435, column: 44, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1493, file: !1, line: 434, column: 20)
!1504 = !DILocation(line: 435, column: 17, scope: !1503)
!1505 = !DILocation(line: 437, column: 9, scope: !1377)
!1506 = !DILocation(line: 428, column: 23, scope: !1377)
!1507 = distinct !{!1507, !1488, !1505}
!1508 = !DILocation(line: 105, column: 15, scope: !309, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 438, column: 9, scope: !1377)
!1510 = !DILocation(line: 104, column: 48, scope: !309, inlinedAt: !1509)
!1511 = !DILocation(line: 105, column: 5, scope: !309, inlinedAt: !1509)
!1512 = !DILocation(line: 106, column: 5, scope: !309, inlinedAt: !1509)
!1513 = !DILocation(line: 107, column: 1, scope: !309, inlinedAt: !1509)
!1514 = !DILocation(line: 442, column: 1, scope: !1368)
!1515 = !DILocation(line: 440, column: 9, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 439, column: 12)
!1517 = !DILocation(line: 0, scope: !1386)
!1518 = distinct !DISubprogram(name: "ltrimCommand", scope: !1, file: !1, line: 444, type: !685, isLocal: false, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1519)
!1519 = !{!1520, !1521, !1522, !1523, !1524, !1525, !1526}
!1520 = !DILocalVariable(name: "c", arg: 1, scope: !1518, file: !1, line: 444, type: !560)
!1521 = !DILocalVariable(name: "o", scope: !1518, file: !1, line: 445, type: !89)
!1522 = !DILocalVariable(name: "start", scope: !1518, file: !1, line: 446, type: !268)
!1523 = !DILocalVariable(name: "end", scope: !1518, file: !1, line: 446, type: !268)
!1524 = !DILocalVariable(name: "llen", scope: !1518, file: !1, line: 446, type: !268)
!1525 = !DILocalVariable(name: "ltrim", scope: !1518, file: !1, line: 446, type: !268)
!1526 = !DILocalVariable(name: "rtrim", scope: !1518, file: !1, line: 446, type: !268)
!1527 = !DILocation(line: 444, column: 27, scope: !1518)
!1528 = !DILocation(line: 446, column: 5, scope: !1518)
!1529 = !DILocation(line: 448, column: 41, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1518, file: !1, line: 448, column: 9)
!1531 = !DILocation(line: 448, column: 38, scope: !1530)
!1532 = !DILocation(line: 446, column: 10, scope: !1518)
!1533 = !DILocation(line: 448, column: 10, scope: !1530)
!1534 = !DILocation(line: 448, column: 64, scope: !1530)
!1535 = !DILocation(line: 448, column: 73, scope: !1530)
!1536 = !DILocation(line: 449, column: 41, scope: !1530)
!1537 = !DILocation(line: 449, column: 38, scope: !1530)
!1538 = !DILocation(line: 446, column: 17, scope: !1518)
!1539 = !DILocation(line: 449, column: 10, scope: !1530)
!1540 = !DILocation(line: 449, column: 62, scope: !1530)
!1541 = !DILocation(line: 448, column: 9, scope: !1518)
!1542 = !DILocation(line: 451, column: 41, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1518, file: !1, line: 451, column: 9)
!1544 = !DILocation(line: 451, column: 38, scope: !1543)
!1545 = !DILocation(line: 451, column: 56, scope: !1543)
!1546 = !DILocation(line: 451, column: 14, scope: !1543)
!1547 = !DILocation(line: 445, column: 11, scope: !1518)
!1548 = !DILocation(line: 451, column: 61, scope: !1543)
!1549 = !DILocation(line: 451, column: 69, scope: !1543)
!1550 = !DILocation(line: 452, column: 9, scope: !1543)
!1551 = !DILocation(line: 451, column: 9, scope: !1518)
!1552 = !DILocation(line: 74, column: 42, scope: !229, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 453, column: 12, scope: !1518)
!1554 = !DILocation(line: 75, column: 18, scope: !238, inlinedAt: !1553)
!1555 = !DILocation(line: 75, column: 27, scope: !238, inlinedAt: !1553)
!1556 = !DILocation(line: 75, column: 9, scope: !229, inlinedAt: !1553)
!1557 = !DILocation(line: 78, column: 9, scope: !246, inlinedAt: !1553)
!1558 = !DILocation(line: 76, column: 40, scope: !242, inlinedAt: !1553)
!1559 = !DILocation(line: 76, column: 16, scope: !242, inlinedAt: !1553)
!1560 = !DILocation(line: 76, column: 9, scope: !242, inlinedAt: !1553)
!1561 = !DILocation(line: 446, column: 22, scope: !1518)
!1562 = !DILocation(line: 456, column: 9, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1518, file: !1, line: 456, column: 9)
!1564 = !DILocation(line: 456, column: 15, scope: !1563)
!1565 = !DILocation(line: 456, column: 9, scope: !1518)
!1566 = !DILocation(line: 456, column: 32, scope: !1563)
!1567 = !DILocation(line: 456, column: 26, scope: !1563)
!1568 = !DILocation(line: 456, column: 20, scope: !1563)
!1569 = !DILocation(line: 457, column: 9, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1518, file: !1, line: 457, column: 9)
!1571 = !DILocation(line: 457, column: 13, scope: !1570)
!1572 = !DILocation(line: 457, column: 9, scope: !1518)
!1573 = !DILocation(line: 457, column: 28, scope: !1570)
!1574 = !DILocation(line: 457, column: 22, scope: !1570)
!1575 = !DILocation(line: 457, column: 18, scope: !1570)
!1576 = !DILocation(line: 458, column: 15, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1518, file: !1, line: 458, column: 9)
!1578 = !DILocation(line: 458, column: 9, scope: !1518)
!1579 = !DILocation(line: 458, column: 26, scope: !1577)
!1580 = !DILocation(line: 458, column: 20, scope: !1577)
!1581 = !DILocation(line: 462, column: 9, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1518, file: !1, line: 462, column: 9)
!1583 = !DILocation(line: 462, column: 15, scope: !1582)
!1584 = !DILocation(line: 462, column: 21, scope: !1582)
!1585 = !DILocation(line: 462, column: 30, scope: !1582)
!1586 = !DILocation(line: 462, column: 9, scope: !1518)
!1587 = !DILocation(line: 467, column: 17, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !1, line: 467, column: 13)
!1589 = distinct !DILexicalBlock(scope: !1582, file: !1, line: 466, column: 12)
!1590 = !DILocation(line: 467, column: 13, scope: !1589)
!1591 = !DILocation(line: 467, column: 36, scope: !1588)
!1592 = !DILocation(line: 467, column: 30, scope: !1588)
!1593 = !DILocation(line: 467, column: 26, scope: !1588)
!1594 = !DILocation(line: 469, column: 22, scope: !1589)
!1595 = !DILocation(line: 446, column: 28, scope: !1518)
!1596 = !DILocation(line: 469, column: 25, scope: !1589)
!1597 = !DILocation(line: 446, column: 35, scope: !1518)
!1598 = !DILocation(line: 0, scope: !1589)
!1599 = !DILocation(line: 473, column: 12, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1518, file: !1, line: 473, column: 9)
!1601 = !DILocation(line: 473, column: 21, scope: !1600)
!1602 = !DILocation(line: 473, column: 9, scope: !1518)
!1603 = !DILocation(line: 474, column: 30, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1600, file: !1, line: 473, column: 48)
!1605 = !DILocation(line: 474, column: 9, scope: !1604)
!1606 = !DILocation(line: 475, column: 30, scope: !1604)
!1607 = !DILocation(line: 475, column: 34, scope: !1604)
!1608 = !DILocation(line: 475, column: 9, scope: !1604)
!1609 = !DILocation(line: 480, column: 48, scope: !1518)
!1610 = !DILocation(line: 480, column: 45, scope: !1518)
!1611 = !DILocation(line: 480, column: 59, scope: !1518)
!1612 = !DILocation(line: 480, column: 63, scope: !1518)
!1613 = !DILocation(line: 480, column: 5, scope: !1518)
!1614 = !DILocation(line: 74, column: 42, scope: !229, inlinedAt: !1615)
!1615 = distinct !DILocation(line: 481, column: 9, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1518, file: !1, line: 481, column: 9)
!1617 = !DILocation(line: 75, column: 18, scope: !238, inlinedAt: !1615)
!1618 = !DILocation(line: 75, column: 27, scope: !238, inlinedAt: !1615)
!1619 = !DILocation(line: 75, column: 9, scope: !229, inlinedAt: !1615)
!1620 = !DILocation(line: 78, column: 9, scope: !246, inlinedAt: !1615)
!1621 = !DILocation(line: 76, column: 40, scope: !242, inlinedAt: !1615)
!1622 = !DILocation(line: 76, column: 16, scope: !242, inlinedAt: !1615)
!1623 = !DILocation(line: 76, column: 9, scope: !242, inlinedAt: !1615)
!1624 = !DILocation(line: 481, column: 27, scope: !1616)
!1625 = !DILocation(line: 481, column: 9, scope: !1518)
!1626 = !DILocation(line: 477, column: 9, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1600, file: !1, line: 476, column: 12)
!1628 = !DILocation(line: 482, column: 21, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1616, file: !1, line: 481, column: 33)
!1630 = !DILocation(line: 482, column: 27, scope: !1629)
!1631 = !DILocation(line: 482, column: 24, scope: !1629)
!1632 = !DILocation(line: 482, column: 9, scope: !1629)
!1633 = !DILocation(line: 483, column: 53, scope: !1629)
!1634 = !DILocation(line: 483, column: 50, scope: !1629)
!1635 = !DILocation(line: 483, column: 64, scope: !1629)
!1636 = !DILocation(line: 483, column: 68, scope: !1629)
!1637 = !DILocation(line: 483, column: 9, scope: !1629)
!1638 = !DILocation(line: 484, column: 5, scope: !1629)
!1639 = !DILocation(line: 485, column: 26, scope: !1518)
!1640 = !DILocation(line: 485, column: 32, scope: !1518)
!1641 = !DILocation(line: 485, column: 29, scope: !1518)
!1642 = !DILocation(line: 485, column: 5, scope: !1518)
!1643 = !DILocation(line: 486, column: 17, scope: !1518)
!1644 = !DILocation(line: 487, column: 23, scope: !1518)
!1645 = !DILocation(line: 487, column: 5, scope: !1518)
!1646 = !DILocation(line: 488, column: 1, scope: !1518)
!1647 = !DILocation(line: 0, scope: !1530)
!1648 = distinct !DISubprogram(name: "lremCommand", scope: !1, file: !1, line: 490, type: !685, isLocal: false, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1649)
!1649 = !{!1650, !1651, !1652, !1653, !1654, !1655, !1656}
!1650 = !DILocalVariable(name: "c", arg: 1, scope: !1648, file: !1, line: 490, type: !560)
!1651 = !DILocalVariable(name: "subject", scope: !1648, file: !1, line: 491, type: !89)
!1652 = !DILocalVariable(name: "obj", scope: !1648, file: !1, line: 491, type: !89)
!1653 = !DILocalVariable(name: "toremove", scope: !1648, file: !1, line: 493, type: !268)
!1654 = !DILocalVariable(name: "removed", scope: !1648, file: !1, line: 494, type: !268)
!1655 = !DILocalVariable(name: "li", scope: !1648, file: !1, line: 502, type: !250)
!1656 = !DILocalVariable(name: "entry", scope: !1648, file: !1, line: 510, type: !324)
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
!1686 = !DILocation(line: 83, column: 46, scope: !247, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 505, column: 14, scope: !1684)
!1688 = !DILocation(line: 83, column: 60, scope: !247, inlinedAt: !1687)
!1689 = !DILocation(line: 84, column: 54, scope: !247, inlinedAt: !1687)
!1690 = !DILocation(line: 85, column: 28, scope: !247, inlinedAt: !1687)
!1691 = !DILocation(line: 86, column: 9, scope: !247, inlinedAt: !1687)
!1692 = !DILocation(line: 86, column: 17, scope: !247, inlinedAt: !1687)
!1693 = !DILocation(line: 87, column: 29, scope: !247, inlinedAt: !1687)
!1694 = !DILocation(line: 87, column: 20, scope: !247, inlinedAt: !1687)
!1695 = !DILocation(line: 87, column: 9, scope: !247, inlinedAt: !1687)
!1696 = !DILocation(line: 87, column: 18, scope: !247, inlinedAt: !1687)
!1697 = !DILocation(line: 88, column: 9, scope: !247, inlinedAt: !1687)
!1698 = !DILocation(line: 88, column: 19, scope: !247, inlinedAt: !1687)
!1699 = !DILocation(line: 89, column: 9, scope: !247, inlinedAt: !1687)
!1700 = !DILocation(line: 89, column: 14, scope: !247, inlinedAt: !1687)
!1701 = !DILocation(line: 94, column: 22, scope: !296, inlinedAt: !1687)
!1702 = !DILocation(line: 94, column: 9, scope: !247, inlinedAt: !1687)
!1703 = !DILocation(line: 98, column: 9, scope: !308, inlinedAt: !1687)
!1704 = !DILocation(line: 92, column: 9, scope: !247, inlinedAt: !1687)
!1705 = !DILocation(line: 85, column: 23, scope: !247, inlinedAt: !1687)
!1706 = !DILocation(line: 95, column: 59, scope: !303, inlinedAt: !1687)
!1707 = !DILocation(line: 95, column: 20, scope: !303, inlinedAt: !1687)
!1708 = !DILocation(line: 502, column: 23, scope: !1648)
!1709 = !DILocation(line: 506, column: 5, scope: !1684)
!1710 = !DILocation(line: 83, column: 46, scope: !247, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 507, column: 14, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1680, file: !1, line: 506, column: 12)
!1713 = !DILocation(line: 83, column: 60, scope: !247, inlinedAt: !1711)
!1714 = !DILocation(line: 84, column: 54, scope: !247, inlinedAt: !1711)
!1715 = !DILocation(line: 85, column: 28, scope: !247, inlinedAt: !1711)
!1716 = !DILocation(line: 86, column: 9, scope: !247, inlinedAt: !1711)
!1717 = !DILocation(line: 86, column: 17, scope: !247, inlinedAt: !1711)
!1718 = !DILocation(line: 87, column: 29, scope: !247, inlinedAt: !1711)
!1719 = !DILocation(line: 87, column: 20, scope: !247, inlinedAt: !1711)
!1720 = !DILocation(line: 87, column: 9, scope: !247, inlinedAt: !1711)
!1721 = !DILocation(line: 87, column: 18, scope: !247, inlinedAt: !1711)
!1722 = !DILocation(line: 88, column: 9, scope: !247, inlinedAt: !1711)
!1723 = !DILocation(line: 88, column: 19, scope: !247, inlinedAt: !1711)
!1724 = !DILocation(line: 89, column: 9, scope: !247, inlinedAt: !1711)
!1725 = !DILocation(line: 89, column: 14, scope: !247, inlinedAt: !1711)
!1726 = !DILocation(line: 94, column: 22, scope: !296, inlinedAt: !1711)
!1727 = !DILocation(line: 94, column: 9, scope: !247, inlinedAt: !1711)
!1728 = !DILocation(line: 98, column: 9, scope: !308, inlinedAt: !1711)
!1729 = !DILocation(line: 92, column: 9, scope: !247, inlinedAt: !1711)
!1730 = !DILocation(line: 85, column: 23, scope: !247, inlinedAt: !1711)
!1731 = !DILocation(line: 95, column: 59, scope: !303, inlinedAt: !1711)
!1732 = !DILocation(line: 95, column: 20, scope: !303, inlinedAt: !1711)
!1733 = !DILocation(line: 95, column: 18, scope: !303, inlinedAt: !1711)
!1734 = !DILocation(line: 100, column: 5, scope: !247, inlinedAt: !1711)
!1735 = !DILocation(line: 0, scope: !1712)
!1736 = !DILocation(line: 510, column: 5, scope: !1648)
!1737 = !DILocation(line: 511, column: 5, scope: !1648)
!1738 = !DILocation(line: 510, column: 19, scope: !1648)
!1739 = !DILocation(line: 511, column: 12, scope: !1648)
!1740 = !DILocation(line: 105, column: 15, scope: !309, inlinedAt: !1741)
!1741 = distinct !DILocation(line: 519, column: 5, scope: !1648)
!1742 = !DILocation(line: 512, column: 13, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !1, line: 512, column: 13)
!1744 = distinct !DILexicalBlock(scope: !1648, file: !1, line: 511, column: 37)
!1745 = !DILocation(line: 512, column: 13, scope: !1744)
!1746 = !DILocation(line: 170, column: 39, scope: !504, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 513, column: 13, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1743, file: !1, line: 512, column: 40)
!1749 = !DILocation(line: 170, column: 60, scope: !504, inlinedAt: !1747)
!1750 = !DILocation(line: 171, column: 16, scope: !513, inlinedAt: !1747)
!1751 = !DILocation(line: 171, column: 20, scope: !513, inlinedAt: !1747)
!1752 = !DILocation(line: 171, column: 29, scope: !513, inlinedAt: !1747)
!1753 = !DILocation(line: 171, column: 9, scope: !504, inlinedAt: !1747)
!1754 = !DILocation(line: 174, column: 9, scope: !523, inlinedAt: !1747)
!1755 = !DILocation(line: 172, column: 33, scope: !518, inlinedAt: !1747)
!1756 = !DILocation(line: 172, column: 9, scope: !518, inlinedAt: !1747)
!1757 = !DILocation(line: 176, column: 1, scope: !504, inlinedAt: !1747)
!1758 = !DILocation(line: 514, column: 25, scope: !1748)
!1759 = !DILocation(line: 515, column: 20, scope: !1748)
!1760 = !DILocation(line: 516, column: 17, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1748, file: !1, line: 516, column: 17)
!1762 = !DILocation(line: 516, column: 26, scope: !1761)
!1763 = !DILocation(line: 516, column: 37, scope: !1761)
!1764 = !DILocation(line: 516, column: 17, scope: !1748)
!1765 = !DILocation(line: 0, scope: !1648)
!1766 = distinct !{!1766, !1737, !1767}
!1767 = !DILocation(line: 518, column: 5, scope: !1648)
!1768 = !DILocation(line: 104, column: 48, scope: !309, inlinedAt: !1741)
!1769 = !DILocation(line: 105, column: 5, scope: !309, inlinedAt: !1741)
!1770 = !DILocation(line: 106, column: 5, scope: !309, inlinedAt: !1741)
!1771 = !DILocation(line: 107, column: 1, scope: !309, inlinedAt: !1741)
!1772 = !DILocation(line: 521, column: 9, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1648, file: !1, line: 521, column: 9)
!1774 = !DILocation(line: 521, column: 9, scope: !1648)
!1775 = !DILocation(line: 522, column: 30, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1773, file: !1, line: 521, column: 18)
!1777 = !DILocation(line: 522, column: 36, scope: !1776)
!1778 = !DILocation(line: 522, column: 33, scope: !1776)
!1779 = !DILocation(line: 522, column: 9, scope: !1776)
!1780 = !DILocation(line: 523, column: 51, scope: !1776)
!1781 = !DILocation(line: 523, column: 48, scope: !1776)
!1782 = !DILocation(line: 523, column: 62, scope: !1776)
!1783 = !DILocation(line: 523, column: 66, scope: !1776)
!1784 = !DILocation(line: 523, column: 9, scope: !1776)
!1785 = !DILocation(line: 524, column: 5, scope: !1776)
!1786 = !DILocation(line: 74, column: 42, scope: !229, inlinedAt: !1787)
!1787 = distinct !DILocation(line: 526, column: 9, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1648, file: !1, line: 526, column: 9)
!1789 = !DILocation(line: 75, column: 18, scope: !238, inlinedAt: !1787)
!1790 = !DILocation(line: 75, column: 27, scope: !238, inlinedAt: !1787)
!1791 = !DILocation(line: 75, column: 9, scope: !229, inlinedAt: !1787)
!1792 = !DILocation(line: 78, column: 9, scope: !246, inlinedAt: !1787)
!1793 = !DILocation(line: 76, column: 40, scope: !242, inlinedAt: !1787)
!1794 = !DILocation(line: 76, column: 16, scope: !242, inlinedAt: !1787)
!1795 = !DILocation(line: 76, column: 9, scope: !242, inlinedAt: !1787)
!1796 = !DILocation(line: 526, column: 33, scope: !1788)
!1797 = !DILocation(line: 526, column: 9, scope: !1648)
!1798 = !DILocation(line: 527, column: 21, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1788, file: !1, line: 526, column: 39)
!1800 = !DILocation(line: 527, column: 27, scope: !1799)
!1801 = !DILocation(line: 527, column: 24, scope: !1799)
!1802 = !DILocation(line: 527, column: 9, scope: !1799)
!1803 = !DILocation(line: 528, column: 53, scope: !1799)
!1804 = !DILocation(line: 528, column: 50, scope: !1799)
!1805 = !DILocation(line: 528, column: 64, scope: !1799)
!1806 = !DILocation(line: 528, column: 68, scope: !1799)
!1807 = !DILocation(line: 528, column: 9, scope: !1799)
!1808 = !DILocation(line: 529, column: 5, scope: !1799)
!1809 = !DILocation(line: 531, column: 5, scope: !1648)
!1810 = !DILocation(line: 532, column: 1, scope: !1648)
!1811 = !DILocation(line: 0, scope: !1664)
!1812 = distinct !DISubprogram(name: "rpoplpushHandlePush", scope: !1, file: !1, line: 550, type: !1813, isLocal: false, isDefinition: true, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1815)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{null, !560, !89, !89, !89}
!1815 = !{!1816, !1817, !1818, !1819}
!1816 = !DILocalVariable(name: "c", arg: 1, scope: !1812, file: !1, line: 550, type: !560)
!1817 = !DILocalVariable(name: "dstkey", arg: 2, scope: !1812, file: !1, line: 550, type: !89)
!1818 = !DILocalVariable(name: "dstobj", arg: 3, scope: !1812, file: !1, line: 550, type: !89)
!1819 = !DILocalVariable(name: "value", arg: 4, scope: !1812, file: !1, line: 550, type: !89)
!1820 = !DILocation(line: 550, column: 34, scope: !1812)
!1821 = !DILocation(line: 550, column: 43, scope: !1812)
!1822 = !DILocation(line: 550, column: 57, scope: !1812)
!1823 = !DILocation(line: 550, column: 71, scope: !1812)
!1824 = !DILocation(line: 552, column: 10, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1812, file: !1, line: 552, column: 9)
!1826 = !DILocation(line: 552, column: 9, scope: !1812)
!1827 = !DILocation(line: 558, column: 26, scope: !1812)
!1828 = !DILocation(line: 553, column: 18, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1825, file: !1, line: 552, column: 18)
!1830 = !DILocation(line: 554, column: 37, scope: !1829)
!1831 = !DILocation(line: 554, column: 49, scope: !1829)
!1832 = !DILocation(line: 555, column: 36, scope: !1829)
!1833 = !DILocation(line: 554, column: 9, scope: !1829)
!1834 = !DILocation(line: 556, column: 18, scope: !1829)
!1835 = !DILocation(line: 556, column: 9, scope: !1829)
!1836 = !DILocation(line: 557, column: 5, scope: !1829)
!1837 = !DILocation(line: 558, column: 5, scope: !1812)
!1838 = !DILocation(line: 559, column: 5, scope: !1812)
!1839 = !DILocation(line: 560, column: 55, scope: !1812)
!1840 = !DILocation(line: 560, column: 59, scope: !1812)
!1841 = !DILocation(line: 560, column: 5, scope: !1812)
!1842 = !DILocation(line: 562, column: 5, scope: !1812)
!1843 = !DILocation(line: 563, column: 1, scope: !1812)
!1844 = distinct !DISubprogram(name: "rpoplpushCommand", scope: !1, file: !1, line: 565, type: !685, isLocal: false, isDefinition: true, scopeLine: 565, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1845)
!1845 = !{!1846, !1847, !1848, !1849, !1852}
!1846 = !DILocalVariable(name: "c", arg: 1, scope: !1844, file: !1, line: 565, type: !560)
!1847 = !DILocalVariable(name: "sobj", scope: !1844, file: !1, line: 566, type: !89)
!1848 = !DILocalVariable(name: "value", scope: !1844, file: !1, line: 566, type: !89)
!1849 = !DILocalVariable(name: "dobj", scope: !1850, file: !1, line: 575, type: !89)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !1, line: 574, column: 12)
!1851 = distinct !DILexicalBlock(scope: !1844, file: !1, line: 570, column: 9)
!1852 = !DILocalVariable(name: "touchedkey", scope: !1850, file: !1, line: 576, type: !89)
!1853 = !DILocation(line: 565, column: 31, scope: !1844)
!1854 = !DILocation(line: 567, column: 44, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1844, file: !1, line: 567, column: 9)
!1856 = !DILocation(line: 567, column: 41, scope: !1855)
!1857 = !DILocation(line: 567, column: 59, scope: !1855)
!1858 = !DILocation(line: 567, column: 17, scope: !1855)
!1859 = !DILocation(line: 566, column: 11, scope: !1844)
!1860 = !DILocation(line: 567, column: 70, scope: !1855)
!1861 = !DILocation(line: 567, column: 78, scope: !1855)
!1862 = !DILocation(line: 568, column: 9, scope: !1855)
!1863 = !DILocation(line: 567, column: 9, scope: !1844)
!1864 = !DILocation(line: 74, column: 42, scope: !229, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 570, column: 9, scope: !1851)
!1866 = !DILocation(line: 75, column: 18, scope: !238, inlinedAt: !1865)
!1867 = !DILocation(line: 75, column: 27, scope: !238, inlinedAt: !1865)
!1868 = !DILocation(line: 75, column: 9, scope: !229, inlinedAt: !1865)
!1869 = !DILocation(line: 78, column: 9, scope: !246, inlinedAt: !1865)
!1870 = !DILocation(line: 76, column: 40, scope: !242, inlinedAt: !1865)
!1871 = !DILocation(line: 76, column: 16, scope: !242, inlinedAt: !1865)
!1872 = !DILocation(line: 76, column: 9, scope: !242, inlinedAt: !1865)
!1873 = !DILocation(line: 570, column: 30, scope: !1851)
!1874 = !DILocation(line: 570, column: 9, scope: !1844)
!1875 = !DILocation(line: 573, column: 27, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1851, file: !1, line: 570, column: 36)
!1877 = !DILocation(line: 573, column: 9, scope: !1876)
!1878 = !DILocation(line: 574, column: 5, scope: !1876)
!1879 = !DILocation(line: 575, column: 40, scope: !1850)
!1880 = !DILocation(line: 575, column: 46, scope: !1850)
!1881 = !DILocation(line: 575, column: 43, scope: !1850)
!1882 = !DILocation(line: 575, column: 22, scope: !1850)
!1883 = !DILocation(line: 575, column: 15, scope: !1850)
!1884 = !DILocation(line: 576, column: 31, scope: !1850)
!1885 = !DILocation(line: 576, column: 28, scope: !1850)
!1886 = !DILocation(line: 576, column: 15, scope: !1850)
!1887 = !DILocation(line: 578, column: 13, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1850, file: !1, line: 578, column: 13)
!1889 = !DILocation(line: 578, column: 18, scope: !1888)
!1890 = !DILocation(line: 578, column: 21, scope: !1888)
!1891 = !DILocation(line: 578, column: 13, scope: !1850)
!1892 = !DILocation(line: 578, column: 49, scope: !1888)
!1893 = !DILocation(line: 579, column: 17, scope: !1850)
!1894 = !DILocation(line: 566, column: 18, scope: !1844)
!1895 = !DILocation(line: 583, column: 9, scope: !1850)
!1896 = !DILocation(line: 584, column: 34, scope: !1850)
!1897 = !DILocation(line: 584, column: 31, scope: !1850)
!1898 = !DILocation(line: 584, column: 9, scope: !1850)
!1899 = !DILocation(line: 587, column: 9, scope: !1850)
!1900 = !DILocation(line: 590, column: 62, scope: !1850)
!1901 = !DILocation(line: 590, column: 66, scope: !1850)
!1902 = !DILocation(line: 590, column: 9, scope: !1850)
!1903 = !DILocation(line: 74, column: 42, scope: !229, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 591, column: 13, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1850, file: !1, line: 591, column: 13)
!1906 = !DILocation(line: 75, column: 18, scope: !238, inlinedAt: !1904)
!1907 = !DILocation(line: 75, column: 27, scope: !238, inlinedAt: !1904)
!1908 = !DILocation(line: 75, column: 9, scope: !229, inlinedAt: !1904)
!1909 = !DILocation(line: 78, column: 9, scope: !246, inlinedAt: !1904)
!1910 = !DILocation(line: 76, column: 40, scope: !242, inlinedAt: !1904)
!1911 = !DILocation(line: 76, column: 16, scope: !242, inlinedAt: !1904)
!1912 = !DILocation(line: 76, column: 9, scope: !242, inlinedAt: !1904)
!1913 = !DILocation(line: 591, column: 34, scope: !1905)
!1914 = !DILocation(line: 591, column: 13, scope: !1850)
!1915 = !DILocation(line: 592, column: 25, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1905, file: !1, line: 591, column: 40)
!1917 = !DILocation(line: 592, column: 13, scope: !1916)
!1918 = !DILocation(line: 594, column: 47, scope: !1916)
!1919 = !DILocation(line: 594, column: 51, scope: !1916)
!1920 = !DILocation(line: 593, column: 13, scope: !1916)
!1921 = !DILocation(line: 595, column: 9, scope: !1916)
!1922 = !DILocation(line: 596, column: 30, scope: !1850)
!1923 = !DILocation(line: 596, column: 9, scope: !1850)
!1924 = !DILocation(line: 597, column: 9, scope: !1850)
!1925 = !DILocation(line: 598, column: 21, scope: !1850)
!1926 = !DILocation(line: 599, column: 16, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1850, file: !1, line: 599, column: 13)
!1928 = !{!800, !127, i64 80}
!1929 = !DILocation(line: 599, column: 21, scope: !1927)
!1930 = !{!1931, !127, i64 8}
!1931 = !{!"redisCommand", !127, i64 0, !127, i64 8, !124, i64 16, !127, i64 24, !124, i64 32, !127, i64 40, !124, i64 48, !124, i64 52, !124, i64 56, !220, i64 64, !220, i64 72}
!1932 = !DILocation(line: 599, column: 26, scope: !1927)
!1933 = !DILocation(line: 599, column: 13, scope: !1850)
!1934 = !DILocation(line: 600, column: 51, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1927, file: !1, line: 599, column: 48)
!1936 = !{!817, !127, i64 336}
!1937 = !DILocation(line: 600, column: 64, scope: !1935)
!1938 = !DILocation(line: 600, column: 61, scope: !1935)
!1939 = !DILocation(line: 600, column: 72, scope: !1935)
!1940 = !DILocation(line: 600, column: 13, scope: !1935)
!1941 = !DILocation(line: 601, column: 9, scope: !1935)
!1942 = !DILocation(line: 602, column: 5, scope: !1851)
!1943 = !DILocation(line: 603, column: 1, scope: !1844)
!1944 = distinct !DISubprogram(name: "brpoplpushCommand", scope: !1, file: !1, line: 750, type: !685, isLocal: false, isDefinition: true, scopeLine: 750, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1945)
!1945 = !{!1946, !1947, !1948}
!1946 = !DILocalVariable(name: "c", arg: 1, scope: !1944, file: !1, line: 750, type: !560)
!1947 = !DILocalVariable(name: "timeout", scope: !1944, file: !1, line: 751, type: !763)
!1948 = !DILocalVariable(name: "key", scope: !1944, file: !1, line: 756, type: !89)
!1949 = !DILocation(line: 750, column: 32, scope: !1944)
!1950 = !DILocation(line: 751, column: 5, scope: !1944)
!1951 = !DILocation(line: 753, column: 42, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1944, file: !1, line: 753, column: 9)
!1953 = !DILocation(line: 753, column: 39, scope: !1952)
!1954 = !DILocation(line: 751, column: 14, scope: !1944)
!1955 = !DILocation(line: 753, column: 9, scope: !1952)
!1956 = !DILocation(line: 754, column: 9, scope: !1952)
!1957 = !DILocation(line: 753, column: 9, scope: !1944)
!1958 = !DILocation(line: 756, column: 35, scope: !1944)
!1959 = !DILocation(line: 756, column: 42, scope: !1944)
!1960 = !DILocation(line: 756, column: 39, scope: !1944)
!1961 = !DILocation(line: 756, column: 17, scope: !1944)
!1962 = !DILocation(line: 756, column: 11, scope: !1944)
!1963 = !DILocation(line: 758, column: 13, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1944, file: !1, line: 758, column: 9)
!1965 = !DILocation(line: 758, column: 9, scope: !1944)
!1966 = !DILocation(line: 759, column: 16, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !1, line: 759, column: 13)
!1968 = distinct !DILexicalBlock(scope: !1964, file: !1, line: 758, column: 22)
!1969 = !{!800, !124, i64 160}
!1970 = !DILocation(line: 759, column: 22, scope: !1967)
!1971 = !DILocation(line: 759, column: 13, scope: !1968)
!1972 = !DILocation(line: 762, column: 32, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1967, file: !1, line: 759, column: 38)
!1974 = !DILocation(line: 762, column: 13, scope: !1973)
!1975 = !DILocation(line: 763, column: 9, scope: !1973)
!1976 = !DILocation(line: 765, column: 44, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1967, file: !1, line: 763, column: 16)
!1978 = !DILocation(line: 765, column: 49, scope: !1977)
!1979 = !DILocation(line: 765, column: 55, scope: !1977)
!1980 = !DILocation(line: 765, column: 63, scope: !1977)
!1981 = !DILocation(line: 765, column: 13, scope: !1977)
!1982 = !DILocation(line: 768, column: 18, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !1, line: 768, column: 13)
!1984 = distinct !DILexicalBlock(scope: !1964, file: !1, line: 767, column: 12)
!1985 = !DILocation(line: 768, column: 23, scope: !1983)
!1986 = !DILocation(line: 768, column: 13, scope: !1984)
!1987 = !DILocation(line: 769, column: 32, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1983, file: !1, line: 768, column: 36)
!1989 = !DILocation(line: 769, column: 13, scope: !1988)
!1990 = !DILocation(line: 770, column: 9, scope: !1988)
!1991 = !DILocation(line: 74, column: 42, scope: !229, inlinedAt: !1992)
!1992 = distinct !DILocation(line: 773, column: 13, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1983, file: !1, line: 770, column: 16)
!1994 = !DILocation(line: 75, column: 18, scope: !238, inlinedAt: !1992)
!1995 = !DILocation(line: 75, column: 27, scope: !238, inlinedAt: !1992)
!1996 = !DILocation(line: 75, column: 9, scope: !229, inlinedAt: !1992)
!1997 = !DILocation(line: 78, column: 9, scope: !246, inlinedAt: !1992)
!1998 = !DILocation(line: 76, column: 40, scope: !242, inlinedAt: !1992)
!1999 = !DILocation(line: 76, column: 16, scope: !242, inlinedAt: !1992)
!2000 = !DILocation(line: 76, column: 9, scope: !242, inlinedAt: !1992)
!2001 = !DILocation(line: 773, column: 13, scope: !1993)
!2002 = !DILocation(line: 774, column: 13, scope: !1993)
!2003 = !DILocation(line: 777, column: 1, scope: !1944)
!2004 = !DILocation(line: 0, scope: !1952)
!2005 = distinct !DISubprogram(name: "serveClientBlockedOnList", scope: !1, file: !1, line: 628, type: !2006, isLocal: false, isDefinition: true, scopeLine: 629, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2008)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!36, !560, !89, !89, !567, !89, !36}
!2008 = !{!2009, !2010, !2011, !2012, !2013, !2014, !2015, !2019, !2022}
!2009 = !DILocalVariable(name: "receiver", arg: 1, scope: !2005, file: !1, line: 628, type: !560)
!2010 = !DILocalVariable(name: "key", arg: 2, scope: !2005, file: !1, line: 628, type: !89)
!2011 = !DILocalVariable(name: "dstkey", arg: 3, scope: !2005, file: !1, line: 628, type: !89)
!2012 = !DILocalVariable(name: "db", arg: 4, scope: !2005, file: !1, line: 628, type: !567)
!2013 = !DILocalVariable(name: "value", arg: 5, scope: !2005, file: !1, line: 628, type: !89)
!2014 = !DILocalVariable(name: "where", arg: 6, scope: !2005, file: !1, line: 628, type: !36)
!2015 = !DILocalVariable(name: "argv", scope: !2005, file: !1, line: 630, type: !2016)
!2016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 192, elements: !2017)
!2017 = !{!2018}
!2018 = !DISubrange(count: 3)
!2019 = !DILocalVariable(name: "event", scope: !2020, file: !1, line: 647, type: !4)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !1, line: 632, column: 25)
!2021 = distinct !DILexicalBlock(scope: !2005, file: !1, line: 632, column: 9)
!2022 = !DILocalVariable(name: "dstobj", scope: !2023, file: !1, line: 651, type: !89)
!2023 = distinct !DILexicalBlock(scope: !2021, file: !1, line: 649, column: 12)
!2024 = !DILocation(line: 628, column: 38, scope: !2005)
!2025 = !DILocation(line: 628, column: 54, scope: !2005)
!2026 = !DILocation(line: 628, column: 65, scope: !2005)
!2027 = !DILocation(line: 628, column: 82, scope: !2005)
!2028 = !DILocation(line: 628, column: 92, scope: !2005)
!2029 = !DILocation(line: 628, column: 103, scope: !2005)
!2030 = !DILocation(line: 630, column: 5, scope: !2005)
!2031 = !DILocation(line: 630, column: 11, scope: !2005)
!2032 = !DILocation(line: 632, column: 16, scope: !2021)
!2033 = !DILocation(line: 632, column: 9, scope: !2005)
!2034 = !DILocation(line: 634, column: 26, scope: !2020)
!2035 = !DILocation(line: 634, column: 49, scope: !2020)
!2036 = !DILocation(line: 635, column: 50, scope: !2020)
!2037 = !DILocation(line: 634, column: 19, scope: !2020)
!2038 = !DILocation(line: 634, column: 9, scope: !2020)
!2039 = !DILocation(line: 634, column: 17, scope: !2020)
!2040 = !DILocation(line: 636, column: 9, scope: !2020)
!2041 = !DILocation(line: 636, column: 17, scope: !2020)
!2042 = !DILocation(line: 638, column: 20, scope: !2020)
!2043 = !DILocation(line: 638, column: 41, scope: !2020)
!2044 = !DILocation(line: 637, column: 19, scope: !2020)
!2045 = !DILocation(line: 639, column: 17, scope: !2020)
!2046 = !DILocation(line: 637, column: 9, scope: !2020)
!2047 = !DILocation(line: 642, column: 9, scope: !2020)
!2048 = !DILocation(line: 643, column: 9, scope: !2020)
!2049 = !DILocation(line: 644, column: 9, scope: !2020)
!2050 = !DILocation(line: 647, column: 23, scope: !2020)
!2051 = !DILocation(line: 647, column: 15, scope: !2020)
!2052 = !DILocation(line: 648, column: 61, scope: !2020)
!2053 = !DILocation(line: 648, column: 65, scope: !2020)
!2054 = !DILocation(line: 648, column: 9, scope: !2020)
!2055 = !DILocation(line: 649, column: 5, scope: !2020)
!2056 = !DILocation(line: 652, column: 38, scope: !2023)
!2057 = !DILocation(line: 652, column: 13, scope: !2023)
!2058 = !DILocation(line: 651, column: 15, scope: !2023)
!2059 = !DILocation(line: 653, column: 15, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2023, file: !1, line: 653, column: 13)
!2061 = !DILocation(line: 653, column: 22, scope: !2060)
!2062 = !DILocation(line: 654, column: 14, scope: !2060)
!2063 = !DILocation(line: 653, column: 13, scope: !2023)
!2064 = !DILocation(line: 657, column: 30, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2060, file: !1, line: 655, column: 9)
!2066 = !{!817, !127, i64 312}
!2067 = !DILocation(line: 657, column: 21, scope: !2065)
!2068 = !DILocation(line: 658, column: 13, scope: !2065)
!2069 = !DILocation(line: 658, column: 21, scope: !2065)
!2070 = !DILocation(line: 659, column: 30, scope: !2065)
!2071 = !{!542, !127, i64 928}
!2072 = !DILocation(line: 660, column: 21, scope: !2065)
!2073 = !DILocation(line: 660, column: 24, scope: !2065)
!2074 = !DILocation(line: 659, column: 13, scope: !2065)
!2075 = !DILocation(line: 663, column: 13, scope: !2065)
!2076 = !DILocation(line: 666, column: 30, scope: !2065)
!2077 = !{!817, !127, i64 328}
!2078 = !DILocation(line: 666, column: 21, scope: !2065)
!2079 = !DILocation(line: 667, column: 21, scope: !2065)
!2080 = !DILocation(line: 668, column: 13, scope: !2065)
!2081 = !DILocation(line: 668, column: 21, scope: !2065)
!2082 = !DILocation(line: 669, column: 30, scope: !2065)
!2083 = !{!542, !127, i64 912}
!2084 = !DILocation(line: 670, column: 21, scope: !2065)
!2085 = !DILocation(line: 669, column: 13, scope: !2065)
!2086 = !DILocation(line: 675, column: 66, scope: !2065)
!2087 = !DILocation(line: 675, column: 70, scope: !2065)
!2088 = !DILocation(line: 675, column: 13, scope: !2065)
!2089 = !DILocation(line: 681, column: 5, scope: !2021)
!2090 = !DILocation(line: 0, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2060, file: !1, line: 676, column: 16)
!2092 = !DILocation(line: 683, column: 1, scope: !2005)
!2093 = distinct !DISubprogram(name: "blockingPopGenericCommand", scope: !1, file: !1, line: 686, type: !558, isLocal: false, isDefinition: true, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2094)
!2094 = !{!2095, !2096, !2097, !2098, !2099, !2100, !2110}
!2095 = !DILocalVariable(name: "c", arg: 1, scope: !2093, file: !1, line: 686, type: !560)
!2096 = !DILocalVariable(name: "where", arg: 2, scope: !2093, file: !1, line: 686, type: !36)
!2097 = !DILocalVariable(name: "o", scope: !2093, file: !1, line: 687, type: !89)
!2098 = !DILocalVariable(name: "timeout", scope: !2093, file: !1, line: 688, type: !763)
!2099 = !DILocalVariable(name: "j", scope: !2093, file: !1, line: 689, type: !36)
!2100 = !DILocalVariable(name: "event", scope: !2101, file: !1, line: 703, type: !4)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !1, line: 701, column: 45)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !1, line: 701, column: 21)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !1, line: 700, column: 20)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !1, line: 697, column: 17)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !1, line: 696, column: 24)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !1, line: 696, column: 13)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !1, line: 694, column: 37)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !1, line: 694, column: 5)
!2109 = distinct !DILexicalBlock(scope: !2093, file: !1, line: 694, column: 5)
!2110 = !DILocalVariable(name: "value", scope: !2101, file: !1, line: 704, type: !89)
!2111 = !DILocation(line: 686, column: 40, scope: !2093)
!2112 = !DILocation(line: 686, column: 47, scope: !2093)
!2113 = !DILocation(line: 688, column: 5, scope: !2093)
!2114 = !DILocation(line: 691, column: 42, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2093, file: !1, line: 691, column: 9)
!2116 = !DILocation(line: 691, column: 50, scope: !2115)
!2117 = !DILocation(line: 691, column: 54, scope: !2115)
!2118 = !DILocation(line: 691, column: 39, scope: !2115)
!2119 = !DILocation(line: 688, column: 14, scope: !2093)
!2120 = !DILocation(line: 691, column: 9, scope: !2115)
!2121 = !DILocation(line: 692, column: 9, scope: !2115)
!2122 = !DILocation(line: 691, column: 9, scope: !2093)
!2123 = !DILocation(line: 0, scope: !2115)
!2124 = !DILocation(line: 689, column: 9, scope: !2093)
!2125 = !DILocation(line: 694, column: 24, scope: !2108)
!2126 = !DILocation(line: 694, column: 19, scope: !2108)
!2127 = !DILocation(line: 694, column: 5, scope: !2109)
!2128 = !DILocation(line: 695, column: 31, scope: !2107)
!2129 = !DILocation(line: 695, column: 37, scope: !2107)
!2130 = !DILocation(line: 695, column: 34, scope: !2107)
!2131 = !DILocation(line: 695, column: 13, scope: !2107)
!2132 = !DILocation(line: 687, column: 11, scope: !2093)
!2133 = !DILocation(line: 696, column: 15, scope: !2106)
!2134 = !DILocation(line: 696, column: 13, scope: !2107)
!2135 = !DILocation(line: 697, column: 20, scope: !2104)
!2136 = !DILocation(line: 697, column: 25, scope: !2104)
!2137 = !DILocation(line: 697, column: 17, scope: !2105)
!2138 = !DILocation(line: 698, column: 35, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2104, file: !1, line: 697, column: 38)
!2140 = !DILocation(line: 698, column: 17, scope: !2139)
!2141 = !DILocation(line: 699, column: 17, scope: !2139)
!2142 = !DILocation(line: 74, column: 42, scope: !229, inlinedAt: !2143)
!2143 = distinct !DILocation(line: 701, column: 21, scope: !2102)
!2144 = !DILocation(line: 75, column: 18, scope: !238, inlinedAt: !2143)
!2145 = !DILocation(line: 75, column: 27, scope: !238, inlinedAt: !2143)
!2146 = !DILocation(line: 75, column: 9, scope: !229, inlinedAt: !2143)
!2147 = !DILocation(line: 78, column: 9, scope: !246, inlinedAt: !2143)
!2148 = !DILocation(line: 76, column: 40, scope: !242, inlinedAt: !2143)
!2149 = !DILocation(line: 76, column: 16, scope: !242, inlinedAt: !2143)
!2150 = !DILocation(line: 76, column: 9, scope: !242, inlinedAt: !2143)
!2151 = !DILocation(line: 701, column: 39, scope: !2102)
!2152 = !DILocation(line: 701, column: 21, scope: !2103)
!2153 = !DILocation(line: 703, column: 42, scope: !2101)
!2154 = !DILocation(line: 704, column: 35, scope: !2101)
!2155 = !DILocation(line: 704, column: 27, scope: !2101)
!2156 = !DILocation(line: 705, column: 21, scope: !2101)
!2157 = !DILocation(line: 703, column: 35, scope: !2101)
!2158 = !DILocation(line: 703, column: 27, scope: !2101)
!2159 = !DILocation(line: 707, column: 21, scope: !2101)
!2160 = !DILocation(line: 708, column: 39, scope: !2101)
!2161 = !DILocation(line: 708, column: 36, scope: !2101)
!2162 = !DILocation(line: 708, column: 21, scope: !2101)
!2163 = !DILocation(line: 709, column: 21, scope: !2101)
!2164 = !DILocation(line: 710, column: 21, scope: !2101)
!2165 = !DILocation(line: 712, column: 44, scope: !2101)
!2166 = !DILocation(line: 712, column: 41, scope: !2101)
!2167 = !DILocation(line: 712, column: 55, scope: !2101)
!2168 = !DILocation(line: 712, column: 59, scope: !2101)
!2169 = !DILocation(line: 711, column: 21, scope: !2101)
!2170 = !DILocation(line: 74, column: 42, scope: !229, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 713, column: 25, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2101, file: !1, line: 713, column: 25)
!2173 = !DILocation(line: 75, column: 18, scope: !238, inlinedAt: !2171)
!2174 = !DILocation(line: 75, column: 27, scope: !238, inlinedAt: !2171)
!2175 = !DILocation(line: 75, column: 9, scope: !229, inlinedAt: !2171)
!2176 = !DILocation(line: 78, column: 9, scope: !246, inlinedAt: !2171)
!2177 = !DILocation(line: 76, column: 40, scope: !242, inlinedAt: !2171)
!2178 = !DILocation(line: 76, column: 16, scope: !242, inlinedAt: !2171)
!2179 = !DILocation(line: 76, column: 9, scope: !242, inlinedAt: !2171)
!2180 = !DILocation(line: 713, column: 43, scope: !2172)
!2181 = !DILocation(line: 713, column: 25, scope: !2101)
!2182 = !DILocation(line: 714, column: 37, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2172, file: !1, line: 713, column: 49)
!2184 = !DILocation(line: 714, column: 43, scope: !2183)
!2185 = !DILocation(line: 714, column: 40, scope: !2183)
!2186 = !DILocation(line: 714, column: 25, scope: !2183)
!2187 = !DILocation(line: 716, column: 48, scope: !2183)
!2188 = !DILocation(line: 716, column: 45, scope: !2183)
!2189 = !DILocation(line: 716, column: 59, scope: !2183)
!2190 = !DILocation(line: 716, column: 63, scope: !2183)
!2191 = !DILocation(line: 715, column: 25, scope: !2183)
!2192 = !DILocation(line: 717, column: 21, scope: !2183)
!2193 = !DILocation(line: 718, column: 42, scope: !2101)
!2194 = !DILocation(line: 718, column: 48, scope: !2101)
!2195 = !DILocation(line: 718, column: 45, scope: !2101)
!2196 = !DILocation(line: 718, column: 21, scope: !2101)
!2197 = !DILocation(line: 719, column: 33, scope: !2101)
!2198 = !DILocation(line: 723, column: 55, scope: !2101)
!2199 = !DILocation(line: 723, column: 69, scope: !2101)
!2200 = !DILocation(line: 723, column: 25, scope: !2101)
!2201 = !DILocation(line: 724, column: 28, scope: !2101)
!2202 = !DILocation(line: 724, column: 25, scope: !2101)
!2203 = !DILocation(line: 722, column: 21, scope: !2101)
!2204 = !DILocation(line: 694, column: 33, scope: !2108)
!2205 = !DILocation(line: 694, column: 5, scope: !2108)
!2206 = !DILocation(line: 694, column: 28, scope: !2108)
!2207 = distinct !{!2207, !2127, !2208}
!2208 = !DILocation(line: 729, column: 5, scope: !2109)
!2209 = !DILocation(line: 733, column: 12, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2093, file: !1, line: 733, column: 9)
!2211 = !DILocation(line: 733, column: 18, scope: !2210)
!2212 = !DILocation(line: 733, column: 9, scope: !2093)
!2213 = !DILocation(line: 734, column: 27, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2210, file: !1, line: 733, column: 34)
!2215 = !{!817, !127, i64 88}
!2216 = !DILocation(line: 734, column: 9, scope: !2214)
!2217 = !DILocation(line: 735, column: 9, scope: !2214)
!2218 = !DILocation(line: 739, column: 36, scope: !2093)
!2219 = !DILocation(line: 739, column: 41, scope: !2093)
!2220 = !DILocation(line: 739, column: 53, scope: !2093)
!2221 = !DILocation(line: 739, column: 57, scope: !2093)
!2222 = !DILocation(line: 739, column: 5, scope: !2093)
!2223 = !DILocation(line: 740, column: 1, scope: !2093)
!2224 = distinct !DISubprogram(name: "blpopCommand", scope: !1, file: !1, line: 742, type: !685, isLocal: false, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2225)
!2225 = !{!2226}
!2226 = !DILocalVariable(name: "c", arg: 1, scope: !2224, file: !1, line: 742, type: !560)
!2227 = !DILocation(line: 742, column: 27, scope: !2224)
!2228 = !DILocation(line: 743, column: 5, scope: !2224)
!2229 = !DILocation(line: 744, column: 1, scope: !2224)
!2230 = distinct !DISubprogram(name: "brpopCommand", scope: !1, file: !1, line: 746, type: !685, isLocal: false, isDefinition: true, scopeLine: 746, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2231)
!2231 = !{!2232}
!2232 = !DILocalVariable(name: "c", arg: 1, scope: !2230, file: !1, line: 746, type: !560)
!2233 = !DILocation(line: 746, column: 27, scope: !2230)
!2234 = !DILocation(line: 747, column: 5, scope: !2230)
!2235 = !DILocation(line: 748, column: 1, scope: !2230)
