; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/notify.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/notify.c"
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

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@server = external dso_local local_unnamed_addr global %struct.redisServer, align 8
@.str.12 = private unnamed_addr constant [12 x i8] c"__keyspace@\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"__:\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"__keyevent@\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @keyspaceEventsStringToFlags(i8* nocapture readonly) local_unnamed_addr #0 !dbg !7 {
  %2 = load i8, i8* %0, align 1, !dbg !21, !tbaa !22
  %3 = icmp eq i8 %2, 0, !dbg !25
  br i1 %3, label %26, label %4, !dbg !26

; <label>:4:                                      ; preds = %1, %21
  %5 = phi i8 [ %24, %21 ], [ %2, %1 ]
  %6 = phi i8* [ %8, %21 ], [ %0, %1 ]
  %7 = phi i32 [ %23, %21 ], [ 0, %1 ]
  %8 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !27
  %9 = sext i8 %5 to i32, !dbg !21
  switch i32 %9, label %26 [
    i32 65, label %21
    i32 103, label %10
    i32 36, label %11
    i32 108, label %12
    i32 115, label %13
    i32 104, label %14
    i32 122, label %15
    i32 120, label %16
    i32 101, label %17
    i32 75, label %18
    i32 69, label %19
    i32 116, label %20
  ], !dbg !29

; <label>:10:                                     ; preds = %4
  br label %21, !dbg !31

; <label>:11:                                     ; preds = %4
  br label %21, !dbg !33

; <label>:12:                                     ; preds = %4
  br label %21, !dbg !34

; <label>:13:                                     ; preds = %4
  br label %21, !dbg !35

; <label>:14:                                     ; preds = %4
  br label %21, !dbg !36

; <label>:15:                                     ; preds = %4
  br label %21, !dbg !37

; <label>:16:                                     ; preds = %4
  br label %21, !dbg !38

; <label>:17:                                     ; preds = %4
  br label %21, !dbg !39

; <label>:18:                                     ; preds = %4
  br label %21, !dbg !40

; <label>:19:                                     ; preds = %4
  br label %21, !dbg !41

; <label>:20:                                     ; preds = %4
  br label %21, !dbg !42

; <label>:21:                                     ; preds = %4, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10
  %22 = phi i32 [ 1024, %20 ], [ 2, %19 ], [ 1, %18 ], [ 512, %17 ], [ 256, %16 ], [ 128, %15 ], [ 64, %14 ], [ 32, %13 ], [ 16, %12 ], [ 8, %11 ], [ 4, %10 ], [ 2044, %4 ]
  %23 = or i32 %7, %22, !dbg !43
  %24 = load i8, i8* %8, align 1, !dbg !21, !tbaa !22
  %25 = icmp eq i8 %24, 0, !dbg !25
  br i1 %25, label %26, label %4, !dbg !26, !llvm.loop !44

; <label>:26:                                     ; preds = %4, %21, %1
  %27 = phi i32 [ 0, %1 ], [ %23, %21 ], [ -1, %4 ], !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  ret i32 %27, !dbg !47
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i8* @keyspaceEventsFlagsToString(i32) local_unnamed_addr #0 !dbg !48 {
  %2 = tail call i8* @sdsempty() #4, !dbg !57
  %3 = and i32 %0, 2044, !dbg !59
  %4 = icmp eq i32 %3, 2044, !dbg !61
  br i1 %4, label %5, label %7, !dbg !62

; <label>:5:                                      ; preds = %1
  %6 = tail call i8* @sdscatlen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 1) #4, !dbg !63
  br label %60, !dbg !65

; <label>:7:                                      ; preds = %1
  %8 = and i32 %0, 4, !dbg !66
  %9 = icmp eq i32 %8, 0, !dbg !66
  br i1 %9, label %12, label %10, !dbg !69

; <label>:10:                                     ; preds = %7
  %11 = tail call i8* @sdscatlen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 1) #4, !dbg !70
  br label %12, !dbg !71

; <label>:12:                                     ; preds = %7, %10
  %13 = phi i8* [ %11, %10 ], [ %2, %7 ], !dbg !72
  %14 = and i32 %0, 8, !dbg !73
  %15 = icmp eq i32 %14, 0, !dbg !73
  br i1 %15, label %18, label %16, !dbg !75

; <label>:16:                                     ; preds = %12
  %17 = tail call i8* @sdscatlen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 1) #4, !dbg !76
  br label %18, !dbg !77

; <label>:18:                                     ; preds = %12, %16
  %19 = phi i8* [ %17, %16 ], [ %13, %12 ], !dbg !78
  %20 = and i32 %0, 16, !dbg !79
  %21 = icmp eq i32 %20, 0, !dbg !79
  br i1 %21, label %24, label %22, !dbg !81

; <label>:22:                                     ; preds = %18
  %23 = tail call i8* @sdscatlen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 1) #4, !dbg !82
  br label %24, !dbg !83

; <label>:24:                                     ; preds = %18, %22
  %25 = phi i8* [ %23, %22 ], [ %19, %18 ], !dbg !84
  %26 = and i32 %0, 32, !dbg !85
  %27 = icmp eq i32 %26, 0, !dbg !85
  br i1 %27, label %30, label %28, !dbg !87

; <label>:28:                                     ; preds = %24
  %29 = tail call i8* @sdscatlen(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1) #4, !dbg !88
  br label %30, !dbg !89

; <label>:30:                                     ; preds = %24, %28
  %31 = phi i8* [ %29, %28 ], [ %25, %24 ], !dbg !90
  %32 = and i32 %0, 64, !dbg !91
  %33 = icmp eq i32 %32, 0, !dbg !91
  br i1 %33, label %36, label %34, !dbg !93

; <label>:34:                                     ; preds = %30
  %35 = tail call i8* @sdscatlen(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1) #4, !dbg !94
  br label %36, !dbg !95

; <label>:36:                                     ; preds = %30, %34
  %37 = phi i8* [ %35, %34 ], [ %31, %30 ], !dbg !96
  %38 = trunc i32 %0 to i8, !dbg !97
  %39 = icmp slt i8 %38, 0, !dbg !97
  br i1 %39, label %40, label %42, !dbg !99

; <label>:40:                                     ; preds = %36
  %41 = tail call i8* @sdscatlen(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i64 1) #4, !dbg !100
  br label %42, !dbg !101

; <label>:42:                                     ; preds = %40, %36
  %43 = phi i8* [ %41, %40 ], [ %37, %36 ], !dbg !102
  %44 = and i32 %0, 256, !dbg !103
  %45 = icmp eq i32 %44, 0, !dbg !103
  br i1 %45, label %48, label %46, !dbg !105

; <label>:46:                                     ; preds = %42
  %47 = tail call i8* @sdscatlen(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 1) #4, !dbg !106
  br label %48, !dbg !107

; <label>:48:                                     ; preds = %42, %46
  %49 = phi i8* [ %47, %46 ], [ %43, %42 ], !dbg !108
  %50 = and i32 %0, 512, !dbg !109
  %51 = icmp eq i32 %50, 0, !dbg !109
  br i1 %51, label %54, label %52, !dbg !111

; <label>:52:                                     ; preds = %48
  %53 = tail call i8* @sdscatlen(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i64 1) #4, !dbg !112
  br label %54, !dbg !113

; <label>:54:                                     ; preds = %48, %52
  %55 = phi i8* [ %53, %52 ], [ %49, %48 ], !dbg !114
  %56 = and i32 %0, 1024, !dbg !115
  %57 = icmp eq i32 %56, 0, !dbg !115
  br i1 %57, label %60, label %58, !dbg !117

; <label>:58:                                     ; preds = %54
  %59 = tail call i8* @sdscatlen(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i64 1) #4, !dbg !118
  br label %60, !dbg !119

; <label>:60:                                     ; preds = %54, %58, %5
  %61 = phi i8* [ %6, %5 ], [ %59, %58 ], [ %55, %54 ], !dbg !120
  %62 = and i32 %0, 1, !dbg !121
  %63 = icmp eq i32 %62, 0, !dbg !121
  br i1 %63, label %66, label %64, !dbg !123

; <label>:64:                                     ; preds = %60
  %65 = tail call i8* @sdscatlen(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i64 1) #4, !dbg !124
  br label %66, !dbg !125

; <label>:66:                                     ; preds = %60, %64
  %67 = phi i8* [ %65, %64 ], [ %61, %60 ], !dbg !126
  %68 = and i32 %0, 2, !dbg !127
  %69 = icmp eq i32 %68, 0, !dbg !127
  br i1 %69, label %72, label %70, !dbg !129

; <label>:70:                                     ; preds = %66
  %71 = tail call i8* @sdscatlen(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i64 1) #4, !dbg !130
  br label %72, !dbg !131

; <label>:72:                                     ; preds = %66, %70
  %73 = phi i8* [ %71, %70 ], [ %67, %66 ], !dbg !132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !133
  ret i8* %73, !dbg !133
}

; Function Attrs: noredzone
declare dso_local i8* @sdsempty() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @notifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) local_unnamed_addr #0 !dbg !134 {
  %5 = alloca [24 x i8], align 16
  %6 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 0, !dbg !167
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #5, !dbg !167
  tail call void @moduleNotifyKeyspaceEvent(i32 %0, i8* %1, %struct.redisObject* %2, i32 %3) #4, !dbg !169
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 257), align 8, !dbg !170, !tbaa !172
  %8 = and i32 %7, %0, !dbg !182
  %9 = icmp eq i32 %8, 0, !dbg !182
  br i1 %9, label %51, label %10, !dbg !183

; <label>:10:                                     ; preds = %4
  %11 = tail call i64 @strlen(i8* %1) #4, !dbg !184
  %12 = tail call %struct.redisObject* @createStringObject(i8* %1, i64 %11) #4, !dbg !185
  %13 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 257), align 8, !dbg !187, !tbaa !172
  %14 = and i32 %13, 1, !dbg !189
  %15 = icmp eq i32 %14, 0, !dbg !189
  br i1 %15, label %29, label %16, !dbg !190

; <label>:16:                                     ; preds = %10
  %17 = tail call i8* @sdsnewlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i64 11) #4, !dbg !191
  %18 = sext i32 %3 to i64, !dbg !194
  %19 = call i32 @ll2string(i8* nonnull %6, i64 24, i64 %18) #4, !dbg !195
  %20 = sext i32 %19 to i64, !dbg !196
  %21 = call i8* @sdscatlen(i8* %17, i8* nonnull %6, i64 %20) #4, !dbg !197
  %22 = call i8* @sdscatlen(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 3) #4, !dbg !198
  %23 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !199
  %24 = load i8*, i8** %23, align 8, !dbg !199, !tbaa !200
  %25 = call i8* @sdscatsds(i8* %22, i8* %24) #4, !dbg !202
  %26 = call %struct.redisObject* @createObject(i32 0, i8* %25) #4, !dbg !203
  %27 = call i32 @pubsubPublishMessage(%struct.redisObject* %26, %struct.redisObject* %12) #4, !dbg !205
  call void @decrRefCount(%struct.redisObject* %26) #4, !dbg !206
  %28 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 257), align 8, !dbg !207, !tbaa !172
  br label %29, !dbg !209

; <label>:29:                                     ; preds = %10, %16
  %30 = phi i32 [ %28, %16 ], [ %13, %10 ], !dbg !207
  %31 = phi i32 [ %19, %16 ], [ -1, %10 ], !dbg !210
  %32 = and i32 %30, 2, !dbg !211
  %33 = icmp eq i32 %32, 0, !dbg !211
  br i1 %33, label %50, label %34, !dbg !212

; <label>:34:                                     ; preds = %29
  %35 = call i8* @sdsnewlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i64 11) #4, !dbg !213
  %36 = icmp eq i32 %31, -1, !dbg !215
  br i1 %36, label %37, label %40, !dbg !217

; <label>:37:                                     ; preds = %34
  %38 = sext i32 %3 to i64, !dbg !218
  %39 = call i32 @ll2string(i8* nonnull %6, i64 24, i64 %38) #4, !dbg !219
  br label %40, !dbg !220

; <label>:40:                                     ; preds = %37, %34
  %41 = phi i32 [ %39, %37 ], [ %31, %34 ], !dbg !221
  %42 = sext i32 %41 to i64, !dbg !222
  %43 = call i8* @sdscatlen(i8* %35, i8* nonnull %6, i64 %42) #4, !dbg !223
  %44 = call i8* @sdscatlen(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 3) #4, !dbg !224
  %45 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %12, i64 0, i32 2, !dbg !225
  %46 = load i8*, i8** %45, align 8, !dbg !225, !tbaa !200
  %47 = call i8* @sdscatsds(i8* %44, i8* %46) #4, !dbg !226
  %48 = call %struct.redisObject* @createObject(i32 0, i8* %47) #4, !dbg !227
  %49 = call i32 @pubsubPublishMessage(%struct.redisObject* %48, %struct.redisObject* %2) #4, !dbg !228
  call void @decrRefCount(%struct.redisObject* %48) #4, !dbg !229
  br label %50, !dbg !230

; <label>:50:                                     ; preds = %29, %40
  call void @decrRefCount(%struct.redisObject* %12) #4, !dbg !231
  br label %51, !dbg !232

; <label>:51:                                     ; preds = %4, %50
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #5, !dbg !232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  ret void, !dbg !232
}

; Function Attrs: noredzone
declare dso_local void @moduleNotifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @ll2string(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatsds(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createObject(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @pubsubPublishMessage(%struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/notify.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "keyspaceEventsStringToFlags", scope: !1, file: !1, line: 40, type: !8, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !13)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !{!14, !15, !16, !17}
!14 = !DILocalVariable(name: "classes", arg: 1, scope: !7, file: !1, line: 40, type: !11)
!15 = !DILocalVariable(name: "p", scope: !7, file: !1, line: 41, type: !11)
!16 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 42, type: !10)
!17 = !DILocalVariable(name: "flags", scope: !7, file: !1, line: 42, type: !10)
!18 = !DILocation(line: 40, column: 39, scope: !7)
!19 = !DILocation(line: 41, column: 11, scope: !7)
!20 = !DILocation(line: 42, column: 12, scope: !7)
!21 = !DILocation(line: 44, column: 16, scope: !7)
!22 = !{!23, !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 44, column: 22, scope: !7)
!26 = !DILocation(line: 44, column: 5, scope: !7)
!27 = !DILocation(line: 44, column: 18, scope: !7)
!28 = !DILocation(line: 42, column: 9, scope: !7)
!29 = !DILocation(line: 45, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 44, column: 31)
!31 = !DILocation(line: 47, column: 44, scope: !32)
!32 = distinct !DILexicalBlock(scope: !30, file: !1, line: 45, column: 19)
!33 = !DILocation(line: 48, column: 43, scope: !32)
!34 = !DILocation(line: 49, column: 41, scope: !32)
!35 = !DILocation(line: 50, column: 40, scope: !32)
!36 = !DILocation(line: 51, column: 41, scope: !32)
!37 = !DILocation(line: 52, column: 41, scope: !32)
!38 = !DILocation(line: 53, column: 44, scope: !32)
!39 = !DILocation(line: 54, column: 44, scope: !32)
!40 = !DILocation(line: 55, column: 45, scope: !32)
!41 = !DILocation(line: 56, column: 45, scope: !32)
!42 = !DILocation(line: 57, column: 43, scope: !32)
!43 = !DILocation(line: 0, scope: !32)
!44 = distinct !{!44, !26, !45}
!45 = !DILocation(line: 60, column: 5, scope: !7)
!46 = !DILocation(line: 0, scope: !7)
!47 = !DILocation(line: 62, column: 1, scope: !7)
!48 = distinct !DISubprogram(name: "keyspaceEventsFlagsToString", scope: !1, file: !1, line: 68, type: !49, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !53)
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !10}
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !52, line: 43, baseType: !11)
!52 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!53 = !{!54, !55}
!54 = !DILocalVariable(name: "flags", arg: 1, scope: !48, file: !1, line: 68, type: !10)
!55 = !DILocalVariable(name: "res", scope: !48, file: !1, line: 69, type: !51)
!56 = !DILocation(line: 68, column: 37, scope: !48)
!57 = !DILocation(line: 71, column: 11, scope: !48)
!58 = !DILocation(line: 69, column: 9, scope: !48)
!59 = !DILocation(line: 72, column: 16, scope: !60)
!60 = distinct !DILexicalBlock(scope: !48, file: !1, line: 72, column: 9)
!61 = !DILocation(line: 72, column: 30, scope: !60)
!62 = !DILocation(line: 72, column: 9, scope: !48)
!63 = !DILocation(line: 73, column: 15, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 72, column: 45)
!65 = !DILocation(line: 74, column: 5, scope: !64)
!66 = !DILocation(line: 75, column: 19, scope: !67)
!67 = distinct !DILexicalBlock(scope: !68, file: !1, line: 75, column: 13)
!68 = distinct !DILexicalBlock(scope: !60, file: !1, line: 74, column: 12)
!69 = !DILocation(line: 75, column: 13, scope: !68)
!70 = !DILocation(line: 75, column: 43, scope: !67)
!71 = !DILocation(line: 75, column: 37, scope: !67)
!72 = !DILocation(line: 0, scope: !48)
!73 = !DILocation(line: 76, column: 19, scope: !74)
!74 = distinct !DILexicalBlock(scope: !68, file: !1, line: 76, column: 13)
!75 = !DILocation(line: 76, column: 13, scope: !68)
!76 = !DILocation(line: 76, column: 42, scope: !74)
!77 = !DILocation(line: 76, column: 36, scope: !74)
!78 = !DILocation(line: 0, scope: !67)
!79 = !DILocation(line: 77, column: 19, scope: !80)
!80 = distinct !DILexicalBlock(scope: !68, file: !1, line: 77, column: 13)
!81 = !DILocation(line: 77, column: 13, scope: !68)
!82 = !DILocation(line: 77, column: 40, scope: !80)
!83 = !DILocation(line: 77, column: 34, scope: !80)
!84 = !DILocation(line: 0, scope: !74)
!85 = !DILocation(line: 78, column: 19, scope: !86)
!86 = distinct !DILexicalBlock(scope: !68, file: !1, line: 78, column: 13)
!87 = !DILocation(line: 78, column: 13, scope: !68)
!88 = !DILocation(line: 78, column: 39, scope: !86)
!89 = !DILocation(line: 78, column: 33, scope: !86)
!90 = !DILocation(line: 0, scope: !80)
!91 = !DILocation(line: 79, column: 19, scope: !92)
!92 = distinct !DILexicalBlock(scope: !68, file: !1, line: 79, column: 13)
!93 = !DILocation(line: 79, column: 13, scope: !68)
!94 = !DILocation(line: 79, column: 40, scope: !92)
!95 = !DILocation(line: 79, column: 34, scope: !92)
!96 = !DILocation(line: 0, scope: !86)
!97 = !DILocation(line: 80, column: 19, scope: !98)
!98 = distinct !DILexicalBlock(scope: !68, file: !1, line: 80, column: 13)
!99 = !DILocation(line: 80, column: 13, scope: !68)
!100 = !DILocation(line: 80, column: 40, scope: !98)
!101 = !DILocation(line: 80, column: 34, scope: !98)
!102 = !DILocation(line: 0, scope: !92)
!103 = !DILocation(line: 81, column: 19, scope: !104)
!104 = distinct !DILexicalBlock(scope: !68, file: !1, line: 81, column: 13)
!105 = !DILocation(line: 81, column: 13, scope: !68)
!106 = !DILocation(line: 81, column: 43, scope: !104)
!107 = !DILocation(line: 81, column: 37, scope: !104)
!108 = !DILocation(line: 0, scope: !98)
!109 = !DILocation(line: 82, column: 19, scope: !110)
!110 = distinct !DILexicalBlock(scope: !68, file: !1, line: 82, column: 13)
!111 = !DILocation(line: 82, column: 13, scope: !68)
!112 = !DILocation(line: 82, column: 43, scope: !110)
!113 = !DILocation(line: 82, column: 37, scope: !110)
!114 = !DILocation(line: 0, scope: !104)
!115 = !DILocation(line: 83, column: 19, scope: !116)
!116 = distinct !DILexicalBlock(scope: !68, file: !1, line: 83, column: 13)
!117 = !DILocation(line: 83, column: 13, scope: !68)
!118 = !DILocation(line: 83, column: 42, scope: !116)
!119 = !DILocation(line: 83, column: 36, scope: !116)
!120 = !DILocation(line: 0, scope: !110)
!121 = !DILocation(line: 85, column: 15, scope: !122)
!122 = distinct !DILexicalBlock(scope: !48, file: !1, line: 85, column: 9)
!123 = !DILocation(line: 85, column: 9, scope: !48)
!124 = !DILocation(line: 85, column: 40, scope: !122)
!125 = !DILocation(line: 85, column: 34, scope: !122)
!126 = !DILocation(line: 0, scope: !64)
!127 = !DILocation(line: 86, column: 15, scope: !128)
!128 = distinct !DILexicalBlock(scope: !48, file: !1, line: 86, column: 9)
!129 = !DILocation(line: 86, column: 9, scope: !48)
!130 = !DILocation(line: 86, column: 40, scope: !128)
!131 = !DILocation(line: 86, column: 34, scope: !128)
!132 = !DILocation(line: 0, scope: !122)
!133 = !DILocation(line: 87, column: 5, scope: !48)
!134 = distinct !DISubprogram(name: "notifyKeyspaceEvent", scope: !1, file: !1, line: 97, type: !135, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !149)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !10, !11, !137, !10}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !139, line: 622, baseType: !140)
!139 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !139, line: 614, size: 128, elements: !141)
!141 = !{!142, !144, !145, !146, !147}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !140, file: !139, line: 615, baseType: !143, size: 4, flags: DIFlagBitField, extraData: i64 0)
!143 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !140, file: !139, line: 616, baseType: !143, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !140, file: !139, line: 617, baseType: !143, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !140, file: !139, line: 620, baseType: !10, size: 32, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !140, file: !139, line: 621, baseType: !148, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158}
!150 = !DILocalVariable(name: "type", arg: 1, scope: !134, file: !1, line: 97, type: !10)
!151 = !DILocalVariable(name: "event", arg: 2, scope: !134, file: !1, line: 97, type: !11)
!152 = !DILocalVariable(name: "key", arg: 3, scope: !134, file: !1, line: 97, type: !137)
!153 = !DILocalVariable(name: "dbid", arg: 4, scope: !134, file: !1, line: 97, type: !10)
!154 = !DILocalVariable(name: "chan", scope: !134, file: !1, line: 98, type: !51)
!155 = !DILocalVariable(name: "chanobj", scope: !134, file: !1, line: 99, type: !137)
!156 = !DILocalVariable(name: "eventobj", scope: !134, file: !1, line: 99, type: !137)
!157 = !DILocalVariable(name: "len", scope: !134, file: !1, line: 100, type: !10)
!158 = !DILocalVariable(name: "buf", scope: !134, file: !1, line: 101, type: !159)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 192, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 24)
!162 = !DILocation(line: 97, column: 30, scope: !134)
!163 = !DILocation(line: 97, column: 42, scope: !134)
!164 = !DILocation(line: 97, column: 55, scope: !134)
!165 = !DILocation(line: 97, column: 64, scope: !134)
!166 = !DILocation(line: 100, column: 9, scope: !134)
!167 = !DILocation(line: 101, column: 5, scope: !134)
!168 = !DILocation(line: 101, column: 10, scope: !134)
!169 = !DILocation(line: 107, column: 6, scope: !134)
!170 = !DILocation(line: 110, column: 18, scope: !171)
!171 = distinct !DILexicalBlock(scope: !134, file: !1, line: 110, column: 9)
!172 = !{!173, !174, i64 2920}
!173 = !{!"redisServer", !174, i64 0, !175, i64 8, !175, i64 16, !175, i64 24, !174, i64 32, !174, i64 36, !174, i64 40, !175, i64 48, !175, i64 56, !175, i64 64, !175, i64 72, !174, i64 80, !174, i64 84, !174, i64 88, !174, i64 92, !175, i64 96, !175, i64 104, !174, i64 112, !174, i64 116, !23, i64 120, !174, i64 164, !176, i64 168, !174, i64 176, !175, i64 184, !175, i64 192, !175, i64 200, !23, i64 208, !174, i64 216, !174, i64 220, !23, i64 224, !174, i64 352, !175, i64 360, !174, i64 368, !23, i64 372, !174, i64 436, !174, i64 440, !23, i64 444, !174, i64 508, !175, i64 512, !175, i64 520, !175, i64 528, !175, i64 536, !175, i64 544, !175, i64 552, !175, i64 560, !174, i64 568, !177, i64 576, !23, i64 584, !175, i64 840, !176, i64 848, !174, i64 856, !174, i64 860, !176, i64 864, !176, i64 872, !176, i64 880, !176, i64 888, !175, i64 896, !175, i64 904, !175, i64 912, !175, i64 920, !175, i64 928, !175, i64 936, !175, i64 944, !175, i64 952, !175, i64 960, !175, i64 968, !175, i64 976, !175, i64 984, !175, i64 992, !176, i64 1000, !177, i64 1008, !177, i64 1016, !177, i64 1024, !178, i64 1032, !177, i64 1040, !177, i64 1048, !177, i64 1056, !177, i64 1064, !177, i64 1072, !177, i64 1080, !177, i64 1088, !177, i64 1096, !177, i64 1104, !176, i64 1112, !177, i64 1120, !178, i64 1128, !177, i64 1136, !177, i64 1144, !177, i64 1152, !177, i64 1160, !175, i64 1168, !177, i64 1176, !177, i64 1184, !176, i64 1192, !179, i64 1200, !177, i64 1240, !177, i64 1248, !176, i64 1256, !176, i64 1264, !23, i64 1272, !174, i64 1728, !174, i64 1732, !174, i64 1736, !174, i64 1740, !174, i64 1744, !176, i64 1752, !174, i64 1760, !174, i64 1764, !174, i64 1768, !174, i64 1772, !176, i64 1776, !176, i64 1784, !174, i64 1792, !174, i64 1796, !174, i64 1800, !174, i64 1804, !23, i64 1808, !174, i64 1880, !174, i64 1884, !175, i64 1888, !174, i64 1896, !174, i64 1900, !176, i64 1904, !176, i64 1912, !176, i64 1920, !176, i64 1928, !174, i64 1936, !174, i64 1940, !175, i64 1944, !175, i64 1952, !174, i64 1960, !174, i64 1964, !176, i64 1968, !176, i64 1976, !176, i64 1984, !176, i64 1992, !174, i64 2000, !176, i64 2008, !174, i64 2016, !174, i64 2020, !174, i64 2024, !174, i64 2028, !174, i64 2032, !174, i64 2036, !174, i64 2040, !174, i64 2044, !174, i64 2048, !174, i64 2052, !174, i64 2056, !174, i64 2060, !174, i64 2064, !175, i64 2072, !177, i64 2080, !177, i64 2088, !174, i64 2096, !175, i64 2104, !174, i64 2112, !175, i64 2120, !174, i64 2128, !174, i64 2132, !176, i64 2136, !176, i64 2144, !176, i64 2152, !176, i64 2160, !174, i64 2168, !174, i64 2172, !174, i64 2176, !174, i64 2180, !174, i64 2184, !174, i64 2188, !23, i64 2192, !180, i64 2200, !181, i64 2224, !175, i64 2240, !174, i64 2248, !175, i64 2256, !174, i64 2264, !23, i64 2268, !23, i64 2309, !177, i64 2352, !177, i64 2360, !174, i64 2368, !174, i64 2372, !175, i64 2376, !177, i64 2384, !177, i64 2392, !177, i64 2400, !177, i64 2408, !176, i64 2416, !176, i64 2424, !174, i64 2432, !174, i64 2436, !174, i64 2440, !174, i64 2444, !174, i64 2448, !175, i64 2456, !175, i64 2464, !174, i64 2472, !174, i64 2476, !175, i64 2480, !175, i64 2488, !174, i64 2496, !174, i64 2500, !176, i64 2504, !176, i64 2512, !176, i64 2520, !174, i64 2528, !174, i64 2532, !175, i64 2536, !176, i64 2544, !174, i64 2552, !174, i64 2556, !174, i64 2560, !176, i64 2568, !174, i64 2576, !174, i64 2580, !174, i64 2584, !175, i64 2592, !23, i64 2600, !177, i64 2648, !174, i64 2656, !175, i64 2664, !175, i64 2672, !174, i64 2680, !175, i64 2688, !174, i64 2696, !174, i64 2700, !177, i64 2704, !174, i64 2712, !174, i64 2716, !174, i64 2720, !174, i64 2724, !177, i64 2728, !174, i64 2736, !23, i64 2740, !175, i64 2768, !175, i64 2776, !174, i64 2784, !174, i64 2788, !174, i64 2792, !174, i64 2796, !176, i64 2800, !176, i64 2808, !176, i64 2816, !176, i64 2824, !176, i64 2832, !176, i64 2840, !176, i64 2848, !176, i64 2856, !174, i64 2864, !174, i64 2868, !176, i64 2872, !176, i64 2880, !174, i64 2888, !177, i64 2896, !175, i64 2904, !175, i64 2912, !174, i64 2920, !174, i64 2924, !177, i64 2928, !175, i64 2936, !175, i64 2944, !174, i64 2952, !174, i64 2956, !174, i64 2960, !174, i64 2964, !175, i64 2968, !174, i64 2976, !174, i64 2980, !174, i64 2984, !175, i64 2992, !175, i64 3000, !175, i64 3008, !175, i64 3016, !177, i64 3024, !177, i64 3032, !177, i64 3040, !174, i64 3048, !174, i64 3052, !174, i64 3056, !174, i64 3060, !174, i64 3064, !174, i64 3068, !174, i64 3072, !174, i64 3076, !174, i64 3080, !174, i64 3084, !174, i64 3088, !177, i64 3096, !175, i64 3104, !175, i64 3112, !175, i64 3120, !174, i64 3128, !174, i64 3132, !174, i64 3136, !176, i64 3144, !175, i64 3152, !175, i64 3160, !175, i64 3168}
!174 = !{!"int", !23, i64 0}
!175 = !{!"any pointer", !23, i64 0}
!176 = !{!"long", !23, i64 0}
!177 = !{!"long long", !23, i64 0}
!178 = !{!"double", !23, i64 0}
!179 = !{!"malloc_stats", !176, i64 0, !176, i64 8, !176, i64 16, !176, i64 24, !176, i64 32}
!180 = !{!"", !174, i64 0, !176, i64 8, !177, i64 16}
!181 = !{!"redisOpArray", !175, i64 0, !174, i64 8}
!182 = !DILocation(line: 110, column: 41, scope: !171)
!183 = !DILocation(line: 110, column: 9, scope: !134)
!184 = !DILocation(line: 112, column: 41, scope: !134)
!185 = !DILocation(line: 112, column: 16, scope: !134)
!186 = !DILocation(line: 99, column: 21, scope: !134)
!187 = !DILocation(line: 115, column: 16, scope: !188)
!188 = distinct !DILexicalBlock(scope: !134, file: !1, line: 115, column: 9)
!189 = !DILocation(line: 115, column: 39, scope: !188)
!190 = !DILocation(line: 115, column: 9, scope: !134)
!191 = !DILocation(line: 116, column: 16, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !1, line: 115, column: 58)
!193 = !DILocation(line: 98, column: 9, scope: !134)
!194 = !DILocation(line: 117, column: 41, scope: !192)
!195 = !DILocation(line: 117, column: 15, scope: !192)
!196 = !DILocation(line: 118, column: 37, scope: !192)
!197 = !DILocation(line: 118, column: 16, scope: !192)
!198 = !DILocation(line: 119, column: 16, scope: !192)
!199 = !DILocation(line: 120, column: 37, scope: !192)
!200 = !{!201, !175, i64 8}
!201 = !{!"redisObject", !174, i64 0, !174, i64 0, !174, i64 1, !174, i64 4, !175, i64 8}
!202 = !DILocation(line: 120, column: 16, scope: !192)
!203 = !DILocation(line: 121, column: 19, scope: !192)
!204 = !DILocation(line: 99, column: 11, scope: !134)
!205 = !DILocation(line: 122, column: 9, scope: !192)
!206 = !DILocation(line: 123, column: 9, scope: !192)
!207 = !DILocation(line: 127, column: 16, scope: !208)
!208 = distinct !DILexicalBlock(scope: !134, file: !1, line: 127, column: 9)
!209 = !DILocation(line: 124, column: 5, scope: !192)
!210 = !DILocation(line: 0, scope: !134)
!211 = !DILocation(line: 127, column: 39, scope: !208)
!212 = !DILocation(line: 127, column: 9, scope: !134)
!213 = !DILocation(line: 128, column: 16, scope: !214)
!214 = distinct !DILexicalBlock(scope: !208, file: !1, line: 127, column: 58)
!215 = !DILocation(line: 129, column: 17, scope: !216)
!216 = distinct !DILexicalBlock(scope: !214, file: !1, line: 129, column: 13)
!217 = !DILocation(line: 129, column: 13, scope: !214)
!218 = !DILocation(line: 129, column: 56, scope: !216)
!219 = !DILocation(line: 129, column: 30, scope: !216)
!220 = !DILocation(line: 129, column: 24, scope: !216)
!221 = !DILocation(line: 0, scope: !192)
!222 = !DILocation(line: 130, column: 37, scope: !214)
!223 = !DILocation(line: 130, column: 16, scope: !214)
!224 = !DILocation(line: 131, column: 16, scope: !214)
!225 = !DILocation(line: 132, column: 42, scope: !214)
!226 = !DILocation(line: 132, column: 16, scope: !214)
!227 = !DILocation(line: 133, column: 19, scope: !214)
!228 = !DILocation(line: 134, column: 9, scope: !214)
!229 = !DILocation(line: 135, column: 9, scope: !214)
!230 = !DILocation(line: 136, column: 5, scope: !214)
!231 = !DILocation(line: 137, column: 5, scope: !134)
!232 = !DILocation(line: 138, column: 1, scope: !134)
