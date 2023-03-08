; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/hyperloglog.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/hyperloglog.c"
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
%struct.hllhdr = type { [4 x i8], i8, [3 x i8], [8 x i8], [0 x i8] }

@server = external dso_local local_unnamed_addr global %struct.redisServer, align 8
@.str = private unnamed_addr constant [18 x i8] c"dense_retval == 1\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/hyperloglog.c\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Unknown HyperLogLog encoding in hllCount()\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"HYLL\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"-WRONGTYPE Key is not a valid HyperLogLog string value.\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"pfadd\00", align 1
@shared = external dso_local local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.7 = private unnamed_addr constant [46 x i8] c"TESTFAILED Register %d should be %d but is %d\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"TESTFAILED sparse encoding not used\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"TESTFAILED dense/sparse disagree\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"TESTFAILED Too big error. card:%llu abserr:%llu\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"The specified key does not exist\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"getreg\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"HLL encoding is not sparse\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"z:%d \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Z:%d \00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"v:%d,%d \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"dense\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"sparse\00", align 1
@pfdebugCommand.encodingstr = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0)], align 16
@.str.22 = private unnamed_addr constant [8 x i8] c"todense\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Unknown PFDEBUG subcommand '%s'\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"Wrong number of arguments for the '%s' subcommand\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"-INVALIDOBJ Corrupted HLL object detected\0D\0A\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @MurmurHash64A(i8* readonly, i32, i32) local_unnamed_addr #0 !dbg !90 {
  %4 = zext i32 %2 to i64, !dbg !113
  %5 = sext i32 %1 to i64, !dbg !114
  %6 = mul i64 %5, -4132994306676758123, !dbg !115
  %7 = xor i64 %6, %4, !dbg !116
  %8 = and i32 %1, -8, !dbg !119
  %9 = sext i32 %8 to i64, !dbg !120
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  %11 = icmp eq i32 %8, 0, !dbg !123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  br i1 %11, label %56, label %12, !dbg !122

; <label>:12:                                     ; preds = %3
  %13 = add nsw i64 %9, -8, !dbg !124
  %14 = and i64 %13, 8, !dbg !124
  %15 = icmp eq i64 %14, 0, !dbg !124
  br i1 %15, label %16, label %26, !dbg !124

; <label>:16:                                     ; preds = %12
  %17 = bitcast i8* %0 to i64*, !dbg !124
  %18 = load i64, i64* %17, align 8, !dbg !124, !tbaa !125
  %19 = mul i64 %18, -4132994306676758123, !dbg !130
  %20 = lshr i64 %19, 47, !dbg !131
  %21 = xor i64 %20, %19, !dbg !132
  %22 = mul i64 %21, -4132994306676758123, !dbg !133
  %23 = xor i64 %22, %7, !dbg !134
  %24 = mul i64 %23, -4132994306676758123, !dbg !135
  %25 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  br label %26, !dbg !122

; <label>:26:                                     ; preds = %16, %12
  %27 = phi i64 [ undef, %12 ], [ %24, %16 ]
  %28 = phi i64 [ %7, %12 ], [ %24, %16 ]
  %29 = phi i8* [ %0, %12 ], [ %25, %16 ]
  %30 = icmp eq i64 %13, 0, !dbg !124
  br i1 %30, label %53, label %31, !dbg !124

; <label>:31:                                     ; preds = %26, %31
  %32 = phi i64 [ %50, %31 ], [ %28, %26 ]
  %33 = phi i8* [ %51, %31 ], [ %29, %26 ]
  %34 = bitcast i8* %33 to i64*, !dbg !124
  %35 = load i64, i64* %34, align 8, !dbg !124, !tbaa !125
  %36 = mul i64 %35, -4132994306676758123, !dbg !130
  %37 = lshr i64 %36, 47, !dbg !131
  %38 = xor i64 %37, %36, !dbg !132
  %39 = mul i64 %38, -4132994306676758123, !dbg !133
  %40 = xor i64 %39, %32, !dbg !134
  %41 = mul i64 %40, -4132994306676758123, !dbg !135
  %42 = getelementptr inbounds i8, i8* %33, i64 8, !dbg !136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  %43 = bitcast i8* %42 to i64*, !dbg !124
  %44 = load i64, i64* %43, align 8, !dbg !124, !tbaa !125
  %45 = mul i64 %44, -4132994306676758123, !dbg !130
  %46 = lshr i64 %45, 47, !dbg !131
  %47 = xor i64 %46, %45, !dbg !132
  %48 = mul i64 %47, -4132994306676758123, !dbg !133
  %49 = xor i64 %48, %41, !dbg !134
  %50 = mul i64 %49, -4132994306676758123, !dbg !135
  %51 = getelementptr inbounds i8, i8* %33, i64 16, !dbg !136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  %52 = icmp eq i8* %51, %10, !dbg !123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  br i1 %52, label %53, label %31, !dbg !122, !llvm.loop !137

; <label>:53:                                     ; preds = %31, %26
  %54 = phi i64 [ %27, %26 ], [ %50, %31 ], !dbg !135
  %55 = getelementptr i8, i8* %0, i64 %9, !dbg !124
  br label %56, !dbg !139

; <label>:56:                                     ; preds = %53, %3
  %57 = phi i8* [ %0, %3 ], [ %55, %53 ], !dbg !140
  %58 = phi i64 [ %7, %3 ], [ %54, %53 ], !dbg !140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !139
  %59 = trunc i32 %1 to i3, !dbg !139
  switch i3 %59, label %107 [
    i3 -1, label %60
    i3 -2, label %66
    i3 -3, label %73
    i3 -4, label %80
    i3 3, label %87
    i3 2, label %94
    i3 1, label %101
  ], !dbg !139

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds i8, i8* %57, i64 6, !dbg !141
  %62 = load i8, i8* %61, align 1, !dbg !141, !tbaa !143
  %63 = zext i8 %62 to i64, !dbg !144
  %64 = shl nuw nsw i64 %63, 48, !dbg !145
  %65 = xor i64 %64, %58, !dbg !146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !147
  br label %66, !dbg !147

; <label>:66:                                     ; preds = %56, %60
  %67 = phi i64 [ %58, %56 ], [ %65, %60 ], !dbg !148
  %68 = getelementptr inbounds i8, i8* %57, i64 5, !dbg !149
  %69 = load i8, i8* %68, align 1, !dbg !149, !tbaa !143
  %70 = zext i8 %69 to i64, !dbg !150
  %71 = shl nuw nsw i64 %70, 40, !dbg !151
  %72 = xor i64 %71, %67, !dbg !152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !153
  br label %73, !dbg !153

; <label>:73:                                     ; preds = %56, %66
  %74 = phi i64 [ %58, %56 ], [ %72, %66 ], !dbg !148
  %75 = getelementptr inbounds i8, i8* %57, i64 4, !dbg !154
  %76 = load i8, i8* %75, align 1, !dbg !154, !tbaa !143
  %77 = zext i8 %76 to i64, !dbg !155
  %78 = shl nuw nsw i64 %77, 32, !dbg !156
  %79 = xor i64 %78, %74, !dbg !157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !158
  br label %80, !dbg !158

; <label>:80:                                     ; preds = %56, %73
  %81 = phi i64 [ %58, %56 ], [ %79, %73 ], !dbg !148
  %82 = getelementptr inbounds i8, i8* %57, i64 3, !dbg !159
  %83 = load i8, i8* %82, align 1, !dbg !159, !tbaa !143
  %84 = zext i8 %83 to i64, !dbg !160
  %85 = shl nuw nsw i64 %84, 24, !dbg !161
  %86 = xor i64 %85, %81, !dbg !162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !163
  br label %87, !dbg !163

; <label>:87:                                     ; preds = %56, %80
  %88 = phi i64 [ %58, %56 ], [ %86, %80 ], !dbg !148
  %89 = getelementptr inbounds i8, i8* %57, i64 2, !dbg !164
  %90 = load i8, i8* %89, align 1, !dbg !164, !tbaa !143
  %91 = zext i8 %90 to i64, !dbg !165
  %92 = shl nuw nsw i64 %91, 16, !dbg !166
  %93 = xor i64 %92, %88, !dbg !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  br label %94, !dbg !168

; <label>:94:                                     ; preds = %56, %87
  %95 = phi i64 [ %58, %56 ], [ %93, %87 ], !dbg !148
  %96 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !169
  %97 = load i8, i8* %96, align 1, !dbg !169, !tbaa !143
  %98 = zext i8 %97 to i64, !dbg !170
  %99 = shl nuw nsw i64 %98, 8, !dbg !171
  %100 = xor i64 %99, %95, !dbg !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !173
  br label %101, !dbg !173

; <label>:101:                                    ; preds = %56, %94
  %102 = phi i64 [ %58, %56 ], [ %100, %94 ], !dbg !148
  %103 = load i8, i8* %57, align 1, !dbg !174, !tbaa !143
  %104 = zext i8 %103 to i64, !dbg !175
  %105 = xor i64 %102, %104, !dbg !176
  %106 = mul i64 %105, -4132994306676758123, !dbg !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !178
  br label %107, !dbg !178

; <label>:107:                                    ; preds = %101, %56
  %108 = phi i64 [ %58, %56 ], [ %106, %101 ], !dbg !148
  %109 = lshr i64 %108, 47, !dbg !179
  %110 = xor i64 %109, %108, !dbg !180
  %111 = mul i64 %110, -4132994306676758123, !dbg !181
  %112 = lshr i64 %111, 47, !dbg !182
  %113 = xor i64 %112, %111, !dbg !183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  ret i64 %113, !dbg !184
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @hllPatLen(i8*, i64, i64* nocapture) local_unnamed_addr #0 !dbg !185 {
  %4 = trunc i64 %1 to i32, !dbg !204
  %5 = tail call i64 @MurmurHash64A(i8* %0, i32 %4, i32 -1379386599) #6, !dbg !205
  %6 = lshr i64 %5, 14, !dbg !208
  %7 = or i64 %6, 1125899906842624, !dbg !209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !212
  %8 = and i64 %5, 16384, !dbg !213
  %9 = icmp eq i64 %8, 0, !dbg !214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !212
  br i1 %9, label %10, label %17, !dbg !212

; <label>:10:                                     ; preds = %3, %10
  %11 = phi i32 [ %13, %10 ], [ 1, %3 ]
  %12 = phi i64 [ %14, %10 ], [ 1, %3 ]
  %13 = add nuw nsw i32 %11, 1, !dbg !215
  %14 = shl i64 %12, 1, !dbg !217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !212
  %15 = and i64 %14, %7, !dbg !213
  %16 = icmp eq i64 %15, 0, !dbg !214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !212
  br i1 %16, label %10, label %17, !dbg !212, !llvm.loop !218

; <label>:17:                                     ; preds = %10, %3
  %18 = phi i32 [ 1, %3 ], [ %13, %10 ], !dbg !220
  %19 = and i64 %5, 16383, !dbg !221
  store i64 %19, i64* %2, align 8, !dbg !222, !tbaa !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !223
  ret i32 %18, !dbg !223
}

; Function Attrs: noredzone nounwind
define dso_local i32 @hllDenseSet(i8* nocapture, i64, i8 zeroext) local_unnamed_addr #0 !dbg !224 {
  %4 = mul nsw i64 %1, 6, !dbg !250
  %5 = sdiv i64 %4, 8, !dbg !250
  %6 = and i64 %4, 6, !dbg !250
  %7 = sub nsw i64 8, %6, !dbg !250
  %8 = getelementptr inbounds i8, i8* %0, i64 %5, !dbg !250
  %9 = load i8, i8* %8, align 1, !dbg !250, !tbaa !143
  %10 = zext i8 %9 to i64, !dbg !250
  %11 = add nsw i64 %5, 1, !dbg !250
  %12 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !250
  %13 = load i8, i8* %12, align 1, !dbg !250, !tbaa !143
  %14 = zext i8 %13 to i64, !dbg !250
  %15 = lshr i64 %10, %6, !dbg !250
  %16 = shl i64 %14, %7, !dbg !250
  %17 = or i64 %16, %15, !dbg !250
  %18 = trunc i64 %17 to i32, !dbg !250
  %19 = and i32 %18, 63, !dbg !250
  %20 = zext i8 %2 to i32, !dbg !251
  %21 = icmp ult i32 %19, %20, !dbg !252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !253
  br i1 %21, label %22, label %39, !dbg !253

; <label>:22:                                     ; preds = %3
  %23 = zext i8 %2 to i64, !dbg !254
  %24 = trunc i64 %6 to i32, !dbg !254
  %25 = shl i32 63, %24, !dbg !254
  %26 = trunc i32 %25 to i8, !dbg !254
  %27 = xor i8 %26, -1, !dbg !254
  %28 = and i8 %9, %27, !dbg !254
  %29 = shl i64 %23, %6, !dbg !254
  %30 = trunc i64 %29 to i8, !dbg !254
  %31 = or i8 %28, %30, !dbg !254
  store i8 %31, i8* %8, align 1, !dbg !254, !tbaa !143
  %32 = trunc i64 %7 to i32, !dbg !254
  %33 = ashr i32 -64, %32, !dbg !254
  %34 = trunc i32 %33 to i8, !dbg !254
  %35 = and i8 %13, %34, !dbg !254
  %36 = lshr i64 %23, %7, !dbg !254
  %37 = trunc i64 %36 to i8, !dbg !254
  %38 = or i8 %35, %37, !dbg !254
  store i8 %38, i8* %12, align 1, !dbg !254, !tbaa !143
  br label %39, !dbg !255

; <label>:39:                                     ; preds = %3, %22
  %40 = phi i32 [ 1, %22 ], [ 0, %3 ], !dbg !256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  ret i32 %40, !dbg !259
}

; Function Attrs: noredzone nounwind
define dso_local i32 @hllDenseAdd(i8* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !260 {
  %4 = trunc i64 %2 to i32, !dbg !275
  %5 = tail call i64 @MurmurHash64A(i8* %1, i32 %4, i32 -1379386599) #8, !dbg !276
  %6 = lshr i64 %5, 14, !dbg !279
  %7 = or i64 %6, 1125899906842624, !dbg !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  %8 = and i64 %5, 16384, !dbg !284
  %9 = icmp eq i64 %8, 0, !dbg !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  br i1 %9, label %10, label %19, !dbg !283

; <label>:10:                                     ; preds = %3, %10
  %11 = phi i32 [ %13, %10 ], [ 1, %3 ]
  %12 = phi i64 [ %14, %10 ], [ 1, %3 ]
  %13 = add nuw nsw i32 %11, 1, !dbg !286
  %14 = shl i64 %12, 1, !dbg !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  %15 = and i64 %14, %7, !dbg !284
  %16 = icmp eq i64 %15, 0, !dbg !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  br i1 %16, label %10, label %17, !dbg !283, !llvm.loop !218

; <label>:17:                                     ; preds = %10
  %18 = and i32 %13, 255, !dbg !288
  br label %19, !dbg !288

; <label>:19:                                     ; preds = %17, %3
  %20 = phi i32 [ 1, %3 ], [ %18, %17 ]
  %21 = and i64 %5, 16383, !dbg !288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  %22 = mul nuw nsw i64 %21, 6, !dbg !294
  %23 = lshr i64 %22, 3, !dbg !294
  %24 = and i64 %22, 6, !dbg !294
  %25 = sub nsw i64 8, %24, !dbg !294
  %26 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !294
  %27 = load i8, i8* %26, align 1, !dbg !294, !tbaa !143
  %28 = zext i8 %27 to i64, !dbg !294
  %29 = add nuw nsw i64 %23, 1, !dbg !294
  %30 = getelementptr inbounds i8, i8* %0, i64 %29, !dbg !294
  %31 = load i8, i8* %30, align 1, !dbg !294, !tbaa !143
  %32 = zext i8 %31 to i64, !dbg !294
  %33 = lshr i64 %28, %24, !dbg !294
  %34 = shl i64 %32, %25, !dbg !294
  %35 = or i64 %34, %33, !dbg !294
  %36 = trunc i64 %35 to i32, !dbg !294
  %37 = and i32 %36, 63, !dbg !294
  %38 = icmp ult i32 %37, %20, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !296
  br i1 %38, label %39, label %56, !dbg !296

; <label>:39:                                     ; preds = %19
  %40 = zext i32 %20 to i64, !dbg !297
  %41 = trunc i64 %24 to i32, !dbg !297
  %42 = shl i32 63, %41, !dbg !297
  %43 = trunc i32 %42 to i8, !dbg !297
  %44 = xor i8 %43, -1, !dbg !297
  %45 = and i8 %27, %44, !dbg !297
  %46 = shl i64 %40, %24, !dbg !297
  %47 = trunc i64 %46 to i8, !dbg !297
  %48 = or i8 %45, %47, !dbg !297
  store i8 %48, i8* %26, align 1, !dbg !297, !tbaa !143
  %49 = trunc i64 %25 to i32, !dbg !297
  %50 = ashr i32 -64, %49, !dbg !297
  %51 = trunc i32 %50 to i8, !dbg !297
  %52 = and i8 %31, %51, !dbg !297
  %53 = lshr i64 %40, %25, !dbg !297
  %54 = trunc i64 %53 to i8, !dbg !297
  %55 = or i8 %52, %54, !dbg !297
  store i8 %55, i8* %30, align 1, !dbg !297, !tbaa !143
  br label %56, !dbg !298

; <label>:56:                                     ; preds = %19, %39
  %57 = phi i32 [ 1, %39 ], [ 0, %19 ], !dbg !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  ret i32 %57, !dbg !302
}

; Function Attrs: noredzone nounwind
define dso_local void @hllDenseRegHisto(i8* nocapture readonly, i32* nocapture) local_unnamed_addr #0 !dbg !303 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  br label %3, !dbg !336

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i32 [ 0, %2 ], [ %146, %3 ]
  %5 = phi i8* [ %0, %2 ], [ %145, %3 ]
  %6 = load i8, i8* %5, align 1, !dbg !337, !tbaa !143
  %7 = zext i8 %6 to i32, !dbg !337
  %8 = and i32 %7, 63, !dbg !340
  %9 = zext i32 %8 to i64, !dbg !337
  %10 = lshr i32 %7, 6, !dbg !342
  %11 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !343
  %12 = load i8, i8* %11, align 1, !dbg !343, !tbaa !143
  %13 = zext i8 %12 to i32, !dbg !343
  %14 = shl nuw nsw i32 %13, 2, !dbg !344
  %15 = and i32 %14, 60, !dbg !345
  %16 = or i32 %15, %10, !dbg !345
  %17 = zext i32 %16 to i64, !dbg !346
  %18 = lshr i32 %13, 4, !dbg !348
  %19 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !349
  %20 = load i8, i8* %19, align 1, !dbg !349, !tbaa !143
  %21 = zext i8 %20 to i32, !dbg !349
  %22 = shl nuw nsw i32 %21, 4, !dbg !350
  %23 = and i32 %22, 48, !dbg !351
  %24 = or i32 %23, %18, !dbg !351
  %25 = zext i32 %24 to i64, !dbg !352
  %26 = lshr i32 %21, 2, !dbg !354
  %27 = zext i32 %26 to i64, !dbg !355
  %28 = getelementptr inbounds i8, i8* %5, i64 3, !dbg !357
  %29 = load i8, i8* %28, align 1, !dbg !357, !tbaa !143
  %30 = zext i8 %29 to i32, !dbg !357
  %31 = and i32 %30, 63, !dbg !358
  %32 = zext i32 %31 to i64, !dbg !357
  %33 = lshr i32 %30, 6, !dbg !360
  %34 = getelementptr inbounds i8, i8* %5, i64 4, !dbg !361
  %35 = load i8, i8* %34, align 1, !dbg !361, !tbaa !143
  %36 = zext i8 %35 to i32, !dbg !361
  %37 = shl nuw nsw i32 %36, 2, !dbg !362
  %38 = and i32 %37, 60, !dbg !363
  %39 = or i32 %38, %33, !dbg !363
  %40 = zext i32 %39 to i64, !dbg !364
  %41 = lshr i32 %36, 4, !dbg !366
  %42 = getelementptr inbounds i8, i8* %5, i64 5, !dbg !367
  %43 = load i8, i8* %42, align 1, !dbg !367, !tbaa !143
  %44 = zext i8 %43 to i32, !dbg !367
  %45 = shl nuw nsw i32 %44, 4, !dbg !368
  %46 = and i32 %45, 48, !dbg !369
  %47 = or i32 %46, %41, !dbg !369
  %48 = zext i32 %47 to i64, !dbg !370
  %49 = lshr i32 %44, 2, !dbg !372
  %50 = zext i32 %49 to i64, !dbg !373
  %51 = getelementptr inbounds i8, i8* %5, i64 6, !dbg !375
  %52 = load i8, i8* %51, align 1, !dbg !375, !tbaa !143
  %53 = zext i8 %52 to i32, !dbg !375
  %54 = and i32 %53, 63, !dbg !376
  %55 = zext i32 %54 to i64, !dbg !375
  %56 = lshr i32 %53, 6, !dbg !378
  %57 = getelementptr inbounds i8, i8* %5, i64 7, !dbg !379
  %58 = load i8, i8* %57, align 1, !dbg !379, !tbaa !143
  %59 = zext i8 %58 to i32, !dbg !379
  %60 = shl nuw nsw i32 %59, 2, !dbg !380
  %61 = and i32 %60, 60, !dbg !381
  %62 = or i32 %61, %56, !dbg !381
  %63 = zext i32 %62 to i64, !dbg !382
  %64 = lshr i32 %59, 4, !dbg !384
  %65 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !385
  %66 = load i8, i8* %65, align 1, !dbg !385, !tbaa !143
  %67 = zext i8 %66 to i32, !dbg !385
  %68 = shl nuw nsw i32 %67, 4, !dbg !386
  %69 = and i32 %68, 48, !dbg !387
  %70 = or i32 %69, %64, !dbg !387
  %71 = zext i32 %70 to i64, !dbg !388
  %72 = lshr i32 %67, 2, !dbg !390
  %73 = zext i32 %72 to i64, !dbg !391
  %74 = getelementptr inbounds i8, i8* %5, i64 9, !dbg !393
  %75 = load i8, i8* %74, align 1, !dbg !393, !tbaa !143
  %76 = zext i8 %75 to i32, !dbg !393
  %77 = and i32 %76, 63, !dbg !394
  %78 = zext i32 %77 to i64, !dbg !393
  %79 = lshr i32 %76, 6, !dbg !396
  %80 = getelementptr inbounds i8, i8* %5, i64 10, !dbg !397
  %81 = load i8, i8* %80, align 1, !dbg !397, !tbaa !143
  %82 = zext i8 %81 to i32, !dbg !397
  %83 = shl nuw nsw i32 %82, 2, !dbg !398
  %84 = and i32 %83, 60, !dbg !399
  %85 = or i32 %84, %79, !dbg !399
  %86 = zext i32 %85 to i64, !dbg !400
  %87 = lshr i32 %82, 4, !dbg !402
  %88 = getelementptr inbounds i8, i8* %5, i64 11, !dbg !403
  %89 = load i8, i8* %88, align 1, !dbg !403, !tbaa !143
  %90 = zext i8 %89 to i32, !dbg !403
  %91 = shl nuw nsw i32 %90, 4, !dbg !404
  %92 = and i32 %91, 48, !dbg !405
  %93 = or i32 %92, %87, !dbg !405
  %94 = zext i32 %93 to i64, !dbg !406
  %95 = lshr i32 %90, 2, !dbg !408
  %96 = zext i32 %95 to i64, !dbg !409
  %97 = getelementptr inbounds i32, i32* %1, i64 %9, !dbg !411
  %98 = load i32, i32* %97, align 4, !dbg !412, !tbaa !413
  %99 = add nsw i32 %98, 1, !dbg !412
  store i32 %99, i32* %97, align 4, !dbg !412, !tbaa !413
  %100 = getelementptr inbounds i32, i32* %1, i64 %17, !dbg !415
  %101 = load i32, i32* %100, align 4, !dbg !416, !tbaa !413
  %102 = add nsw i32 %101, 1, !dbg !416
  store i32 %102, i32* %100, align 4, !dbg !416, !tbaa !413
  %103 = getelementptr inbounds i32, i32* %1, i64 %25, !dbg !417
  %104 = load i32, i32* %103, align 4, !dbg !418, !tbaa !413
  %105 = add nsw i32 %104, 1, !dbg !418
  store i32 %105, i32* %103, align 4, !dbg !418, !tbaa !413
  %106 = getelementptr inbounds i32, i32* %1, i64 %27, !dbg !419
  %107 = load i32, i32* %106, align 4, !dbg !420, !tbaa !413
  %108 = add nsw i32 %107, 1, !dbg !420
  store i32 %108, i32* %106, align 4, !dbg !420, !tbaa !413
  %109 = getelementptr inbounds i32, i32* %1, i64 %32, !dbg !421
  %110 = load i32, i32* %109, align 4, !dbg !422, !tbaa !413
  %111 = add nsw i32 %110, 1, !dbg !422
  store i32 %111, i32* %109, align 4, !dbg !422, !tbaa !413
  %112 = getelementptr inbounds i32, i32* %1, i64 %40, !dbg !423
  %113 = load i32, i32* %112, align 4, !dbg !424, !tbaa !413
  %114 = add nsw i32 %113, 1, !dbg !424
  store i32 %114, i32* %112, align 4, !dbg !424, !tbaa !413
  %115 = getelementptr inbounds i32, i32* %1, i64 %48, !dbg !425
  %116 = load i32, i32* %115, align 4, !dbg !426, !tbaa !413
  %117 = add nsw i32 %116, 1, !dbg !426
  store i32 %117, i32* %115, align 4, !dbg !426, !tbaa !413
  %118 = getelementptr inbounds i32, i32* %1, i64 %50, !dbg !427
  %119 = load i32, i32* %118, align 4, !dbg !428, !tbaa !413
  %120 = add nsw i32 %119, 1, !dbg !428
  store i32 %120, i32* %118, align 4, !dbg !428, !tbaa !413
  %121 = getelementptr inbounds i32, i32* %1, i64 %55, !dbg !429
  %122 = load i32, i32* %121, align 4, !dbg !430, !tbaa !413
  %123 = add nsw i32 %122, 1, !dbg !430
  store i32 %123, i32* %121, align 4, !dbg !430, !tbaa !413
  %124 = getelementptr inbounds i32, i32* %1, i64 %63, !dbg !431
  %125 = load i32, i32* %124, align 4, !dbg !432, !tbaa !413
  %126 = add nsw i32 %125, 1, !dbg !432
  store i32 %126, i32* %124, align 4, !dbg !432, !tbaa !413
  %127 = getelementptr inbounds i32, i32* %1, i64 %71, !dbg !433
  %128 = load i32, i32* %127, align 4, !dbg !434, !tbaa !413
  %129 = add nsw i32 %128, 1, !dbg !434
  store i32 %129, i32* %127, align 4, !dbg !434, !tbaa !413
  %130 = getelementptr inbounds i32, i32* %1, i64 %73, !dbg !435
  %131 = load i32, i32* %130, align 4, !dbg !436, !tbaa !413
  %132 = add nsw i32 %131, 1, !dbg !436
  store i32 %132, i32* %130, align 4, !dbg !436, !tbaa !413
  %133 = getelementptr inbounds i32, i32* %1, i64 %78, !dbg !437
  %134 = load i32, i32* %133, align 4, !dbg !438, !tbaa !413
  %135 = add nsw i32 %134, 1, !dbg !438
  store i32 %135, i32* %133, align 4, !dbg !438, !tbaa !413
  %136 = getelementptr inbounds i32, i32* %1, i64 %86, !dbg !439
  %137 = load i32, i32* %136, align 4, !dbg !440, !tbaa !413
  %138 = add nsw i32 %137, 1, !dbg !440
  store i32 %138, i32* %136, align 4, !dbg !440, !tbaa !413
  %139 = getelementptr inbounds i32, i32* %1, i64 %94, !dbg !441
  %140 = load i32, i32* %139, align 4, !dbg !442, !tbaa !413
  %141 = add nsw i32 %140, 1, !dbg !442
  store i32 %141, i32* %139, align 4, !dbg !442, !tbaa !413
  %142 = getelementptr inbounds i32, i32* %1, i64 %96, !dbg !443
  %143 = load i32, i32* %142, align 4, !dbg !444, !tbaa !413
  %144 = add nsw i32 %143, 1, !dbg !444
  store i32 %144, i32* %142, align 4, !dbg !444, !tbaa !413
  %145 = getelementptr inbounds i8, i8* %5, i64 12, !dbg !445
  %146 = add nuw nsw i32 %4, 1, !dbg !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  %147 = icmp eq i32 %146, 1024, !dbg !448
  br i1 %147, label %148, label %3, !dbg !336, !llvm.loop !449

; <label>:148:                                    ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  ret void, !dbg !451
}

; Function Attrs: noredzone nounwind
define dso_local i32 @hllSparseToDense(%struct.redisObject* nocapture) local_unnamed_addr #0 !dbg !452 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !488
  %3 = load i8*, i8** %2, align 8, !dbg !488, !tbaa !489
  %4 = getelementptr inbounds i8, i8* %3, i64 -1, !dbg !507
  %5 = load i8, i8* %4, align 1, !dbg !507, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !509
  %6 = trunc i8 %5 to i3, !dbg !509
  switch i3 %6, label %28 [
    i3 0, label %7
    i3 1, label %10
    i3 2, label %14
    i3 3, label %19
    i3 -4, label %24
  ], !dbg !509

; <label>:7:                                      ; preds = %1
  %8 = lshr i8 %5, 3, !dbg !510
  %9 = zext i8 %8 to i64, !dbg !510
  br label %28, !dbg !512

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds i8, i8* %3, i64 -3, !dbg !513
  %12 = load i8, i8* %11, align 1, !dbg !514, !tbaa !143
  %13 = zext i8 %12 to i64, !dbg !513
  br label %28, !dbg !515

; <label>:14:                                     ; preds = %1
  %15 = getelementptr inbounds i8, i8* %3, i64 -5, !dbg !516
  %16 = bitcast i8* %15 to i16*, !dbg !517
  %17 = load i16, i16* %16, align 1, !dbg !517, !tbaa !518
  %18 = zext i16 %17 to i64, !dbg !516
  br label %28, !dbg !520

; <label>:19:                                     ; preds = %1
  %20 = getelementptr inbounds i8, i8* %3, i64 -9, !dbg !521
  %21 = bitcast i8* %20 to i32*, !dbg !522
  %22 = load i32, i32* %21, align 1, !dbg !522, !tbaa !413
  %23 = zext i32 %22 to i64, !dbg !521
  br label %28, !dbg !523

; <label>:24:                                     ; preds = %1
  %25 = getelementptr inbounds i8, i8* %3, i64 -17, !dbg !524
  %26 = bitcast i8* %25 to i64*, !dbg !525
  %27 = load i64, i64* %26, align 1, !dbg !525, !tbaa !125
  br label %28, !dbg !526

; <label>:28:                                     ; preds = %1, %7, %10, %14, %19, %24
  %29 = phi i64 [ %27, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %10 ], [ %9, %7 ], [ 0, %1 ], !dbg !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  %30 = getelementptr inbounds i8, i8* %3, i64 %29, !dbg !530
  %31 = getelementptr inbounds i8, i8* %3, i64 4, !dbg !533
  %32 = load i8, i8* %31, align 1, !dbg !533, !tbaa !143
  %33 = icmp eq i8 %32, 0, !dbg !535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  br i1 %33, label %114, label %34, !dbg !536

; <label>:34:                                     ; preds = %28
  %35 = tail call i8* @sdsnewlen(i8* null, i64 12304) #8, !dbg !537
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %35, i8* nonnull align 1 %3, i64 16, i1 false), !dbg !539
  %36 = getelementptr inbounds i8, i8* %35, i64 4, !dbg !540
  store i8 0, i8* %36, align 1, !dbg !541, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  %37 = icmp sgt i64 %29, 16, !dbg !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  br i1 %37, label %39, label %38, !dbg !542

; <label>:38:                                     ; preds = %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  br label %111, !dbg !544

; <label>:39:                                     ; preds = %34
  %40 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !545
  %41 = getelementptr inbounds i8, i8* %35, i64 16
  br label %42, !dbg !542

; <label>:42:                                     ; preds = %39, %103
  %43 = phi i32 [ 0, %39 ], [ %105, %103 ]
  %44 = phi i8* [ %40, %39 ], [ %106, %103 ]
  %45 = load i8, i8* %44, align 1, !dbg !546, !tbaa !143
  %46 = zext i8 %45 to i32, !dbg !546
  %47 = and i32 %46, 192, !dbg !546
  %48 = icmp eq i32 %47, 0, !dbg !546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  br i1 %48, label %49, label %53, !dbg !547

; <label>:49:                                     ; preds = %42
  %50 = and i32 %46, 63, !dbg !548
  %51 = add i32 %43, 1, !dbg !548
  %52 = add i32 %51, %50, !dbg !551
  br label %103, !dbg !552

; <label>:53:                                     ; preds = %42
  %54 = icmp eq i32 %47, 64, !dbg !553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  br i1 %54, label %55, label %64, !dbg !554

; <label>:55:                                     ; preds = %53
  %56 = shl nuw nsw i32 %46, 8, !dbg !555
  %57 = and i32 %56, 16128, !dbg !555
  %58 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !555
  %59 = load i8, i8* %58, align 1, !dbg !555, !tbaa !143
  %60 = zext i8 %59 to i32, !dbg !555
  %61 = or i32 %57, %60, !dbg !555
  %62 = add i32 %43, 1, !dbg !555
  %63 = add i32 %62, %61, !dbg !557
  br label %103, !dbg !558

; <label>:64:                                     ; preds = %53
  %65 = and i32 %46, 3, !dbg !559
  %66 = add nuw nsw i32 %65, 1, !dbg !559
  %67 = add nsw i32 %66, %43, !dbg !560
  %68 = icmp sgt i32 %67, 16384, !dbg !562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !563
  br i1 %68, label %108, label %69, !dbg !563

; <label>:69:                                     ; preds = %64
  %70 = lshr i32 %46, 2, !dbg !564
  %71 = and i32 %70, 31, !dbg !564
  %72 = add nuw nsw i32 %71, 1, !dbg !564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  %73 = zext i32 %72 to i64
  %74 = add i32 %43, 1, !dbg !566
  %75 = mul nsw i32 %43, 6, !dbg !567
  %76 = sdiv i32 %75, 8, !dbg !567
  %77 = sext i32 %76 to i64, !dbg !567
  %78 = and i32 %75, 6, !dbg !567
  %79 = zext i32 %78 to i64, !dbg !567
  %80 = sub nsw i64 8, %79, !dbg !567
  %81 = shl i32 63, %78, !dbg !567
  %82 = getelementptr inbounds i8, i8* %41, i64 %77, !dbg !567
  %83 = load i8, i8* %82, align 1, !dbg !567, !tbaa !143
  %84 = trunc i32 %81 to i8, !dbg !567
  %85 = xor i8 %84, -1, !dbg !567
  %86 = and i8 %83, %85, !dbg !567
  %87 = shl i64 %73, %79, !dbg !567
  %88 = trunc i64 %87 to i8, !dbg !567
  %89 = or i8 %86, %88, !dbg !567
  store i8 %89, i8* %82, align 1, !dbg !567, !tbaa !143
  %90 = trunc i64 %80 to i32, !dbg !567
  %91 = ashr i32 -64, %90, !dbg !567
  %92 = add nsw i64 %77, 1, !dbg !567
  %93 = getelementptr inbounds i8, i8* %41, i64 %92, !dbg !567
  %94 = load i8, i8* %93, align 1, !dbg !567, !tbaa !143
  %95 = trunc i32 %91 to i8, !dbg !567
  %96 = and i8 %94, %95, !dbg !567
  %97 = lshr i64 %73, %80, !dbg !567
  %98 = trunc i64 %97 to i8, !dbg !567
  %99 = or i8 %96, %98, !dbg !567
  store i8 %99, i8* %93, align 1, !dbg !567, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  %100 = icmp eq i32 %65, 0, !dbg !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  br i1 %100, label %101, label %116, !dbg !566, !llvm.loop !568

; <label>:101:                                    ; preds = %172, %144, %116, %69
  %102 = add i32 %74, %65, !dbg !566
  br label %103

; <label>:103:                                    ; preds = %55, %101, %49
  %104 = phi i64 [ 2, %55 ], [ 1, %101 ], [ 1, %49 ]
  %105 = phi i32 [ %63, %55 ], [ %102, %101 ], [ %52, %49 ], !dbg !528
  %106 = getelementptr inbounds i8, i8* %44, i64 %104, !dbg !570
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  %107 = icmp ult i8* %106, %30, !dbg !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  br i1 %107, label %42, label %108, !dbg !542, !llvm.loop !571

; <label>:108:                                    ; preds = %103, %64
  %109 = phi i32 [ %105, %103 ], [ %43, %64 ], !dbg !570
  %110 = icmp eq i32 %109, 16384, !dbg !573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  br i1 %110, label %112, label %111, !dbg !544

; <label>:111:                                    ; preds = %38, %108
  tail call void @sdsfree(i8* %35) #8, !dbg !575
  br label %114, !dbg !577

; <label>:112:                                    ; preds = %108
  %113 = load i8*, i8** %2, align 8, !dbg !578, !tbaa !489
  tail call void @sdsfree(i8* %113) #8, !dbg !579
  store i8* %35, i8** %2, align 8, !dbg !580, !tbaa !489
  br label %114, !dbg !581

; <label>:114:                                    ; preds = %28, %112, %111
  %115 = phi i32 [ -1, %111 ], [ 0, %112 ], [ 0, %28 ], !dbg !528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  ret i32 %115, !dbg !583

; <label>:116:                                    ; preds = %69
  %117 = mul i32 %43, 6, !dbg !567
  %118 = add i32 %117, 6, !dbg !567
  %119 = sdiv i32 %118, 8, !dbg !567
  %120 = sext i32 %119 to i64, !dbg !567
  %121 = and i32 %118, 6, !dbg !567
  %122 = zext i32 %121 to i64, !dbg !567
  %123 = sub nsw i64 8, %122, !dbg !567
  %124 = shl i32 63, %121, !dbg !567
  %125 = getelementptr inbounds i8, i8* %41, i64 %120, !dbg !567
  %126 = load i8, i8* %125, align 1, !dbg !567, !tbaa !143
  %127 = trunc i32 %124 to i8, !dbg !567
  %128 = xor i8 %127, -1, !dbg !567
  %129 = and i8 %126, %128, !dbg !567
  %130 = shl i64 %73, %122, !dbg !567
  %131 = trunc i64 %130 to i8, !dbg !567
  %132 = or i8 %129, %131, !dbg !567
  store i8 %132, i8* %125, align 1, !dbg !567, !tbaa !143
  %133 = trunc i64 %123 to i32, !dbg !567
  %134 = ashr i32 -64, %133, !dbg !567
  %135 = add nsw i64 %120, 1, !dbg !567
  %136 = getelementptr inbounds i8, i8* %41, i64 %135, !dbg !567
  %137 = load i8, i8* %136, align 1, !dbg !567, !tbaa !143
  %138 = trunc i32 %134 to i8, !dbg !567
  %139 = and i8 %137, %138, !dbg !567
  %140 = lshr i64 %73, %123, !dbg !567
  %141 = trunc i64 %140 to i8, !dbg !567
  %142 = or i8 %139, %141, !dbg !567
  store i8 %142, i8* %136, align 1, !dbg !567, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  %143 = icmp eq i32 %65, 1, !dbg !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  br i1 %143, label %101, label %144, !dbg !566, !llvm.loop !568

; <label>:144:                                    ; preds = %116
  %145 = mul i32 %43, 6, !dbg !567
  %146 = add i32 %145, 12, !dbg !567
  %147 = sdiv i32 %146, 8, !dbg !567
  %148 = sext i32 %147 to i64, !dbg !567
  %149 = and i32 %146, 6, !dbg !567
  %150 = zext i32 %149 to i64, !dbg !567
  %151 = sub nsw i64 8, %150, !dbg !567
  %152 = shl i32 63, %149, !dbg !567
  %153 = getelementptr inbounds i8, i8* %41, i64 %148, !dbg !567
  %154 = load i8, i8* %153, align 1, !dbg !567, !tbaa !143
  %155 = trunc i32 %152 to i8, !dbg !567
  %156 = xor i8 %155, -1, !dbg !567
  %157 = and i8 %154, %156, !dbg !567
  %158 = shl i64 %73, %150, !dbg !567
  %159 = trunc i64 %158 to i8, !dbg !567
  %160 = or i8 %157, %159, !dbg !567
  store i8 %160, i8* %153, align 1, !dbg !567, !tbaa !143
  %161 = trunc i64 %151 to i32, !dbg !567
  %162 = ashr i32 -64, %161, !dbg !567
  %163 = add nsw i64 %148, 1, !dbg !567
  %164 = getelementptr inbounds i8, i8* %41, i64 %163, !dbg !567
  %165 = load i8, i8* %164, align 1, !dbg !567, !tbaa !143
  %166 = trunc i32 %162 to i8, !dbg !567
  %167 = and i8 %165, %166, !dbg !567
  %168 = lshr i64 %73, %151, !dbg !567
  %169 = trunc i64 %168 to i8, !dbg !567
  %170 = or i8 %167, %169, !dbg !567
  store i8 %170, i8* %164, align 1, !dbg !567, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  %171 = icmp eq i32 %65, 2, !dbg !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  br i1 %171, label %101, label %172, !dbg !566, !llvm.loop !568

; <label>:172:                                    ; preds = %144
  %173 = add i32 %145, 18, !dbg !567
  %174 = sdiv i32 %173, 8, !dbg !567
  %175 = sext i32 %174 to i64, !dbg !567
  %176 = and i32 %173, 6, !dbg !567
  %177 = zext i32 %176 to i64, !dbg !567
  %178 = sub nsw i64 8, %177, !dbg !567
  %179 = shl i32 63, %176, !dbg !567
  %180 = getelementptr inbounds i8, i8* %41, i64 %175, !dbg !567
  %181 = load i8, i8* %180, align 1, !dbg !567, !tbaa !143
  %182 = trunc i32 %179 to i8, !dbg !567
  %183 = xor i8 %182, -1, !dbg !567
  %184 = and i8 %181, %183, !dbg !567
  %185 = shl i64 %73, %177, !dbg !567
  %186 = trunc i64 %185 to i8, !dbg !567
  %187 = or i8 %184, %186, !dbg !567
  store i8 %187, i8* %180, align 1, !dbg !567, !tbaa !143
  %188 = trunc i64 %178 to i32, !dbg !567
  %189 = ashr i32 -64, %188, !dbg !567
  %190 = add nsw i64 %175, 1, !dbg !567
  %191 = getelementptr inbounds i8, i8* %41, i64 %190, !dbg !567
  %192 = load i8, i8* %191, align 1, !dbg !567, !tbaa !143
  %193 = trunc i32 %189 to i8, !dbg !567
  %194 = and i8 %192, %193, !dbg !567
  %195 = lshr i64 %73, %178, !dbg !567
  %196 = trunc i64 %195 to i8, !dbg !567
  %197 = or i8 %194, %196, !dbg !567
  store i8 %197, i8* %191, align 1, !dbg !567, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  br label %101
}

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @hllSparseSet(%struct.redisObject* nocapture, i64, i8 zeroext) local_unnamed_addr #0 !dbg !584 {
  %4 = alloca [5 x i8], align 1
  %5 = icmp ugt i8 %2, 32, !dbg !649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !651
  br i1 %5, label %313, label %6, !dbg !651

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !652
  %8 = load i8*, i8** %7, align 8, !dbg !652, !tbaa !489
  %9 = tail call i8* @sdsMakeRoomFor(i8* %8, i64 3) #8, !dbg !653
  store i8* %9, i8** %7, align 8, !dbg !654, !tbaa !489
  %10 = getelementptr inbounds i8, i8* %9, i64 16, !dbg !655
  %11 = getelementptr inbounds i8, i8* %9, i64 -1, !dbg !659
  %12 = load i8, i8* %11, align 1, !dbg !659, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  %13 = trunc i8 %12 to i3, !dbg !661
  switch i3 %13, label %35 [
    i3 0, label %14
    i3 1, label %17
    i3 2, label %21
    i3 3, label %26
    i3 -4, label %31
  ], !dbg !661

; <label>:14:                                     ; preds = %6
  %15 = lshr i8 %12, 3, !dbg !662
  %16 = zext i8 %15 to i64, !dbg !662
  br label %36, !dbg !663

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !664
  %19 = load i8, i8* %18, align 1, !dbg !665, !tbaa !143
  %20 = zext i8 %19 to i64, !dbg !664
  br label %36, !dbg !666

; <label>:21:                                     ; preds = %6
  %22 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !667
  %23 = bitcast i8* %22 to i16*, !dbg !668
  %24 = load i16, i16* %23, align 1, !dbg !668, !tbaa !518
  %25 = zext i16 %24 to i64, !dbg !667
  br label %36, !dbg !669

; <label>:26:                                     ; preds = %6
  %27 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !670
  %28 = bitcast i8* %27 to i32*, !dbg !671
  %29 = load i32, i32* %28, align 1, !dbg !671, !tbaa !413
  %30 = zext i32 %29 to i64, !dbg !670
  br label %36, !dbg !672

; <label>:31:                                     ; preds = %6
  %32 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !673
  %33 = bitcast i8* %32 to i64*, !dbg !674
  %34 = load i64, i64* %33, align 1, !dbg !674, !tbaa !125
  br label %36, !dbg !675

; <label>:35:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  br label %72, !dbg !683

; <label>:36:                                     ; preds = %14, %17, %21, %26, %31
  %37 = phi i64 [ %34, %31 ], [ %30, %26 ], [ %25, %21 ], [ %20, %17 ], [ %16, %14 ], !dbg !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !677
  %38 = getelementptr inbounds i8, i8* %9, i64 %37, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  %39 = icmp sgt i64 %37, 16, !dbg !686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  br i1 %39, label %40, label %72, !dbg !683

; <label>:40:                                     ; preds = %36, %69
  %41 = phi i8* [ %70, %69 ], [ %10, %36 ]
  %42 = phi i8* [ %41, %69 ], [ null, %36 ]
  %43 = phi i64 [ %66, %69 ], [ 0, %36 ]
  %44 = load i8, i8* %41, align 1, !dbg !688, !tbaa !143
  %45 = zext i8 %44 to i32, !dbg !688
  %46 = and i32 %45, 192, !dbg !688
  %47 = icmp eq i32 %46, 0, !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !690
  br i1 %47, label %48, label %50, !dbg !690

; <label>:48:                                     ; preds = %40
  %49 = and i32 %45, 63, !dbg !691
  br label %61, !dbg !693

; <label>:50:                                     ; preds = %40
  %51 = icmp slt i8 %44, 0, !dbg !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  br i1 %51, label %52, label %54, !dbg !696

; <label>:52:                                     ; preds = %50
  %53 = and i32 %45, 3, !dbg !697
  br label %61, !dbg !699

; <label>:54:                                     ; preds = %50
  %55 = shl nuw nsw i32 %45, 8, !dbg !700
  %56 = and i32 %55, 16128, !dbg !700
  %57 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !700
  %58 = load i8, i8* %57, align 1, !dbg !700, !tbaa !143
  %59 = zext i8 %58 to i32, !dbg !700
  %60 = or i32 %56, %59, !dbg !700
  br label %61

; <label>:61:                                     ; preds = %52, %54, %48
  %62 = phi i64 [ 1, %48 ], [ 1, %52 ], [ 2, %54 ], !dbg !702
  %63 = phi i32 [ %49, %48 ], [ %53, %52 ], [ %60, %54 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %64 = add nuw nsw i32 %63, 1, !dbg !702
  %65 = zext i32 %64 to i64, !dbg !702
  %66 = add nuw nsw i64 %43, %65, !dbg !703
  %67 = icmp sgt i64 %66, %1, !dbg !705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !706
  br i1 %67, label %68, label %69, !dbg !706

; <label>:68:                                     ; preds = %61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !707
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %73, !dbg !708

; <label>:69:                                     ; preds = %61
  %70 = getelementptr inbounds i8, i8* %41, i64 %62, !dbg !710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !711
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %71 = icmp ult i8* %70, %38, !dbg !686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  br i1 %71, label %40, label %73, !dbg !683

; <label>:72:                                     ; preds = %36, %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !708
  br label %356, !dbg !708

; <label>:73:                                     ; preds = %69, %68
  %74 = phi i64 [ %43, %68 ], [ %66, %69 ]
  %75 = phi i8* [ %42, %68 ], [ %41, %69 ]
  %76 = phi i8* [ %41, %68 ], [ %70, %69 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !708
  %77 = icmp ult i8* %76, %38, !dbg !712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  br i1 %77, label %78, label %356, !dbg !713

; <label>:78:                                     ; preds = %73
  %79 = load i8, i8* %76, align 1, !dbg !714, !tbaa !143
  %80 = zext i8 %79 to i32, !dbg !714
  %81 = and i32 %80, 192, !dbg !714
  %82 = icmp eq i32 %81, 64, !dbg !714
  %83 = select i1 %82, i64 2, i64 1, !dbg !714
  %84 = getelementptr inbounds i8, i8* %76, i64 %83, !dbg !714
  %85 = icmp ult i8* %84, %38, !dbg !715
  %86 = select i1 %85, i8* %84, i8* null, !dbg !717
  %87 = icmp eq i32 %81, 0, !dbg !718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  br i1 %87, label %101, label %88, !dbg !720

; <label>:88:                                     ; preds = %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  br i1 %82, label %108, label %89, !dbg !721

; <label>:89:                                     ; preds = %88
  %90 = lshr i8 %79, 2, !dbg !723
  %91 = and i8 %90, 31, !dbg !723
  %92 = add nuw nsw i8 %91, 1, !dbg !723
  %93 = icmp ult i8 %92, %2, !dbg !727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !729
  br i1 %93, label %94, label %356, !dbg !729

; <label>:94:                                     ; preds = %89
  %95 = and i32 %80, 3, !dbg !730
  %96 = icmp eq i32 %95, 0, !dbg !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  br i1 %96, label %97, label %108, !dbg !735

; <label>:97:                                     ; preds = %94
  %98 = shl i8 %2, 2, !dbg !736
  %99 = add i8 %98, 124, !dbg !736
  %100 = or i8 %99, -128, !dbg !736
  store i8 %100, i8* %76, align 1, !dbg !736, !tbaa !143
  br label %249, !dbg !739

; <label>:101:                                    ; preds = %78
  %102 = and i32 %80, 63, !dbg !740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  %103 = icmp eq i32 %102, 0, !dbg !743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !745
  br i1 %103, label %104, label %110, !dbg !745

; <label>:104:                                    ; preds = %101
  %105 = shl i8 %2, 2, !dbg !746
  %106 = add i8 %105, 124, !dbg !746
  %107 = or i8 %106, -128, !dbg !746
  store i8 %107, i8* %76, align 1, !dbg !746, !tbaa !143
  br label %249, !dbg !749

; <label>:108:                                    ; preds = %94, %88
  %109 = phi i64 [ 1, %88 ], [ 0, %94 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !745
  br label %110, !dbg !750

; <label>:110:                                    ; preds = %108, %101
  %111 = phi i64 [ 0, %101 ], [ %109, %108 ]
  %112 = phi i64 [ 1, %101 ], [ 0, %108 ]
  %113 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0, !dbg !750
  %114 = trunc i64 %74 to i32, !dbg !753
  %115 = add i32 %63, %114, !dbg !753
  %116 = icmp eq i64 %111, 0, !dbg !755
  %117 = or i64 %112, %111, !dbg !756
  %118 = icmp eq i64 %117, 0, !dbg !756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  br i1 %118, label %162, label %119, !dbg !756

; <label>:119:                                    ; preds = %110
  %120 = icmp eq i64 %74, %1, !dbg !757
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !758
  br i1 %120, label %138, label %121, !dbg !758

; <label>:121:                                    ; preds = %119
  %122 = sub nsw i64 %1, %74, !dbg !759
  %123 = trunc i64 %122 to i32, !dbg !760
  %124 = icmp sgt i32 %123, 64, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br i1 %124, label %125, label %132, !dbg !763

; <label>:125:                                    ; preds = %121
  %126 = add nsw i32 %123, -1, !dbg !764
  %127 = lshr i32 %126, 8, !dbg !764
  %128 = trunc i32 %127 to i8, !dbg !764
  %129 = or i8 %128, 64, !dbg !764
  store i8 %129, i8* %113, align 1, !dbg !764, !tbaa !143
  %130 = trunc i32 %126 to i8, !dbg !764
  %131 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 1, !dbg !764
  store i8 %130, i8* %131, align 1, !dbg !764, !tbaa !143
  br label %135, !dbg !765

; <label>:132:                                    ; preds = %121
  %133 = trunc i64 %122 to i8, !dbg !766
  %134 = add i8 %133, -1, !dbg !766
  store i8 %134, i8* %113, align 1, !dbg !766, !tbaa !143
  br label %135

; <label>:135:                                    ; preds = %125, %132
  %136 = phi i64 [ 1, %132 ], [ 2, %125 ]
  %137 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 %136, !dbg !769
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %138, !dbg !770

; <label>:138:                                    ; preds = %135, %119
  %139 = phi i8* [ %113, %119 ], [ %137, %135 ], !dbg !685
  %140 = shl i8 %2, 2, !dbg !770
  %141 = add i8 %140, 124, !dbg !770
  %142 = or i8 %141, -128, !dbg !770
  store i8 %142, i8* %139, align 1, !dbg !770, !tbaa !143
  %143 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !772
  %144 = sext i32 %115 to i64, !dbg !773
  %145 = icmp eq i64 %144, %1, !dbg !774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !775
  br i1 %145, label %193, label %146, !dbg !775

; <label>:146:                                    ; preds = %138
  %147 = trunc i64 %1 to i32, !dbg !776
  %148 = sub i32 %115, %147, !dbg !776
  %149 = icmp sgt i32 %148, 64, !dbg !777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  br i1 %149, label %150, label %158, !dbg !778

; <label>:150:                                    ; preds = %146
  %151 = add nsw i32 %148, -1, !dbg !779
  %152 = lshr i32 %151, 8, !dbg !779
  %153 = trunc i32 %152 to i8, !dbg !779
  %154 = or i8 %153, 64, !dbg !779
  store i8 %154, i8* %143, align 1, !dbg !779, !tbaa !143
  %155 = trunc i32 %151 to i8, !dbg !779
  %156 = getelementptr inbounds i8, i8* %139, i64 2, !dbg !779
  store i8 %155, i8* %156, align 1, !dbg !779, !tbaa !143
  %157 = getelementptr inbounds i8, i8* %139, i64 3, !dbg !780
  br label %191, !dbg !781

; <label>:158:                                    ; preds = %146
  %159 = trunc i32 %148 to i8, !dbg !782
  %160 = add i8 %159, -1, !dbg !782
  store i8 %160, i8* %143, align 1, !dbg !782, !tbaa !143
  %161 = getelementptr inbounds i8, i8* %139, i64 2, !dbg !785
  br label %191

; <label>:162:                                    ; preds = %110
  %163 = lshr i8 %79, 2, !dbg !786
  %164 = and i8 %163, 31, !dbg !786
  %165 = icmp eq i64 %74, %1, !dbg !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !789
  br i1 %165, label %174, label %166, !dbg !789

; <label>:166:                                    ; preds = %162
  %167 = sub nsw i64 %1, %74, !dbg !790
  %168 = trunc i64 %167 to i8, !dbg !792
  %169 = shl nuw nsw i8 %164, 2, !dbg !793
  %170 = add i8 %168, 127, !dbg !793
  %171 = or i8 %170, %169, !dbg !793
  %172 = or i8 %171, -128, !dbg !793
  store i8 %172, i8* %113, align 1, !dbg !793, !tbaa !143
  %173 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 1, !dbg !795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !796
  br label %174, !dbg !796

; <label>:174:                                    ; preds = %162, %166
  %175 = phi i8* [ %173, %166 ], [ %113, %162 ], !dbg !685
  %176 = shl i8 %2, 2, !dbg !797
  %177 = add i8 %176, 124, !dbg !797
  %178 = or i8 %177, -128, !dbg !797
  store i8 %178, i8* %175, align 1, !dbg !797, !tbaa !143
  %179 = getelementptr inbounds i8, i8* %175, i64 1, !dbg !799
  %180 = sext i32 %115 to i64, !dbg !800
  %181 = icmp eq i64 %180, %1, !dbg !802
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !803
  br i1 %181, label %191, label %182, !dbg !803

; <label>:182:                                    ; preds = %174
  %183 = trunc i64 %1 to i32, !dbg !804
  %184 = shl nuw nsw i8 %164, 2, !dbg !806
  %185 = xor i32 %183, 127, !dbg !806
  %186 = add i32 %115, %185, !dbg !806
  %187 = trunc i32 %186 to i8, !dbg !806
  %188 = or i8 %184, %187, !dbg !806
  %189 = or i8 %188, -128, !dbg !806
  store i8 %189, i8* %179, align 1, !dbg !806, !tbaa !143
  %190 = getelementptr inbounds i8, i8* %175, i64 2, !dbg !808
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !809
  br label %191, !dbg !809

; <label>:191:                                    ; preds = %182, %174, %150, %158
  %192 = phi i8* [ %161, %158 ], [ %157, %150 ], [ %190, %182 ], [ %179, %174 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %193, !dbg !810

; <label>:193:                                    ; preds = %191, %138
  %194 = phi i8* [ %143, %138 ], [ %192, %191 ], !dbg !811
  %195 = ptrtoint i8* %194 to i64, !dbg !810
  %196 = ptrtoint [5 x i8]* %4 to i64, !dbg !810
  %197 = sub i64 %195, %196, !dbg !810
  %198 = trunc i64 %197 to i32, !dbg !812
  %199 = select i1 %116, i32 1, i32 2, !dbg !814
  %200 = sub nsw i32 %198, %199, !dbg !816
  %201 = icmp sgt i32 %200, 0, !dbg !818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  br i1 %201, label %202, label %232, !dbg !820

; <label>:202:                                    ; preds = %193
  %203 = load i8, i8* %11, align 1, !dbg !823, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !825
  %204 = trunc i8 %203 to i3, !dbg !825
  switch i3 %204, label %226 [
    i3 0, label %205
    i3 1, label %208
    i3 2, label %212
    i3 3, label %217
    i3 -4, label %222
  ], !dbg !825

; <label>:205:                                    ; preds = %202
  %206 = lshr i8 %203, 3, !dbg !826
  %207 = zext i8 %206 to i64, !dbg !826
  br label %226, !dbg !827

; <label>:208:                                    ; preds = %202
  %209 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !828
  %210 = load i8, i8* %209, align 1, !dbg !829, !tbaa !143
  %211 = zext i8 %210 to i64, !dbg !828
  br label %226, !dbg !830

; <label>:212:                                    ; preds = %202
  %213 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !831
  %214 = bitcast i8* %213 to i16*, !dbg !832
  %215 = load i16, i16* %214, align 1, !dbg !832, !tbaa !518
  %216 = zext i16 %215 to i64, !dbg !831
  br label %226, !dbg !833

; <label>:217:                                    ; preds = %202
  %218 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !834
  %219 = bitcast i8* %218 to i32*, !dbg !835
  %220 = load i32, i32* %219, align 1, !dbg !835, !tbaa !413
  %221 = zext i32 %220 to i64, !dbg !834
  br label %226, !dbg !836

; <label>:222:                                    ; preds = %202
  %223 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !837
  %224 = bitcast i8* %223 to i64*, !dbg !838
  %225 = load i64, i64* %224, align 1, !dbg !838, !tbaa !125
  br label %226, !dbg !839

; <label>:226:                                    ; preds = %202, %205, %208, %212, %217, %222
  %227 = phi i64 [ %225, %222 ], [ %221, %217 ], [ %216, %212 ], [ %211, %208 ], [ %207, %205 ], [ 0, %202 ], !dbg !840
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  %228 = sext i32 %200 to i64, !dbg !843
  %229 = add i64 %227, %228, !dbg !844
  %230 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 246), align 8, !dbg !845, !tbaa !846
  %231 = icmp ugt i64 %229, %230, !dbg !853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !854
  br i1 %231, label %313, label %232, !dbg !854

; <label>:232:                                    ; preds = %226, %193
  %233 = icmp ne i32 %200, 0, !dbg !855
  %234 = and i1 %85, %233, !dbg !857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  %235 = sext i32 %200 to i64, !dbg !685
  br i1 %234, label %236, label %243, !dbg !857

; <label>:236:                                    ; preds = %232
  %237 = getelementptr inbounds i8, i8* %86, i64 %235, !dbg !858
  %238 = ptrtoint i8* %38 to i64, !dbg !859
  %239 = ptrtoint i8* %86 to i64, !dbg !859
  %240 = sub i64 %238, %239, !dbg !859
  %241 = call i8* @memmove(i8* %237, i8* %86, i64 %240) #8, !dbg !860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !860
  %242 = load i8*, i8** %7, align 8, !dbg !861, !tbaa !489
  br label %243, !dbg !860

; <label>:243:                                    ; preds = %232, %236
  %244 = phi i8* [ %242, %236 ], [ %9, %232 ], !dbg !861
  call void @sdsIncrLen(i8* %244, i64 %235) #8, !dbg !862
  %245 = shl i64 %197, 32, !dbg !863
  %246 = ashr exact i64 %245, 32, !dbg !863
  %247 = call i8* @memcpy(i8* nonnull %76, i8* nonnull %113, i64 %246) #8, !dbg !864
  %248 = getelementptr inbounds i8, i8* %38, i64 %235, !dbg !865
  br label %249, !dbg !866

; <label>:249:                                    ; preds = %243, %104, %97
  %250 = phi i8* [ %38, %97 ], [ %38, %104 ], [ %248, %243 ], !dbg !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !867
  %251 = icmp eq i8* %75, null, !dbg !868
  %252 = select i1 %251, i8* %10, i8* %75, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  %253 = icmp ult i8* %252, %250, !dbg !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !872
  br i1 %253, label %254, label %307, !dbg !872

; <label>:254:                                    ; preds = %249, %272
  %255 = phi i8* [ %261, %272 ], [ %250, %249 ]
  %256 = phi i8* [ %273, %272 ], [ %252, %249 ]
  %257 = phi i32 [ %263, %272 ], [ 5, %249 ]
  %258 = getelementptr inbounds i8, i8* %256, i64 1
  %259 = ptrtoint i8* %256 to i64
  br label %260, !dbg !872

; <label>:260:                                    ; preds = %254, %295
  %261 = phi i8* [ %255, %254 ], [ %305, %295 ]
  %262 = phi i32 [ %257, %254 ], [ %263, %295 ]
  %263 = add nsw i32 %262, -1, !dbg !873
  %264 = icmp eq i32 %262, 0, !dbg !872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  br i1 %264, label %307, label %265, !dbg !870

; <label>:265:                                    ; preds = %260
  %266 = load i8, i8* %256, align 1, !dbg !874, !tbaa !143
  %267 = zext i8 %266 to i32, !dbg !874
  %268 = and i32 %267, 192, !dbg !874
  %269 = icmp eq i32 %268, 64, !dbg !874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !876
  br i1 %269, label %270, label %275, !dbg !876

; <label>:270:                                    ; preds = %265
  %271 = getelementptr inbounds i8, i8* %256, i64 2, !dbg !877
  br label %272, !dbg !879

; <label>:272:                                    ; preds = %277, %279, %275, %294, %270
  %273 = phi i8* [ %271, %270 ], [ %258, %294 ], [ %258, %275 ], [ %258, %279 ], [ %258, %277 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  %274 = icmp ult i8* %273, %261, !dbg !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !872
  br i1 %274, label %254, label %307, !dbg !872, !llvm.loop !880

; <label>:275:                                    ; preds = %265
  %276 = icmp eq i32 %268, 0, !dbg !882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !884
  br i1 %276, label %272, label %277, !dbg !884

; <label>:277:                                    ; preds = %275
  %278 = icmp ult i8* %258, %261, !dbg !885
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  br i1 %278, label %279, label %272, !dbg !886

; <label>:279:                                    ; preds = %277
  %280 = load i8, i8* %258, align 1, !dbg !887, !tbaa !143
  %281 = icmp slt i8 %280, 0, !dbg !887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  br i1 %281, label %282, label %272, !dbg !888

; <label>:282:                                    ; preds = %279
  %283 = xor i8 %280, %266, !dbg !890
  %284 = and i8 %283, 124, !dbg !890
  %285 = icmp eq i8 %284, 0, !dbg !890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  br i1 %285, label %286, label %294, !dbg !891

; <label>:286:                                    ; preds = %282
  %287 = and i32 %267, 3, !dbg !892
  %288 = and i8 %280, 3, !dbg !893
  %289 = zext i8 %288 to i32, !dbg !893
  %290 = add nuw nsw i32 %287, %289, !dbg !894
  %291 = add nuw nsw i32 %290, 2, !dbg !894
  %292 = icmp ult i32 %291, 5, !dbg !896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !898
  br i1 %292, label %295, label %293, !dbg !898

; <label>:293:                                    ; preds = %286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !899
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %294

; <label>:294:                                    ; preds = %282, %293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !900
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %272

; <label>:295:                                    ; preds = %286
  %296 = and i32 %267, 124, !dbg !901
  %297 = add nuw nsw i32 %290, 1, !dbg !901
  %298 = or i32 %297, %296, !dbg !901
  %299 = trunc i32 %298 to i8, !dbg !901
  %300 = or i8 %299, -128, !dbg !901
  store i8 %300, i8* %258, align 1, !dbg !901, !tbaa !143
  %301 = ptrtoint i8* %261 to i64, !dbg !904
  %302 = sub i64 %301, %259, !dbg !904
  %303 = call i8* @memmove(i8* nonnull %256, i8* nonnull %258, i64 %302) #8, !dbg !905
  %304 = load i8*, i8** %7, align 8, !dbg !906, !tbaa !489
  call void @sdsIncrLen(i8* %304, i64 -1) #8, !dbg !907
  %305 = getelementptr inbounds i8, i8* %261, i64 -1, !dbg !908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !909
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %306 = icmp ult i8* %256, %305, !dbg !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !872
  br i1 %306, label %260, label %307, !dbg !872

; <label>:307:                                    ; preds = %272, %295, %260, %249
  %308 = bitcast i8** %7 to %struct.hllhdr**, !dbg !910
  %309 = load %struct.hllhdr*, %struct.hllhdr** %308, align 8, !dbg !910, !tbaa !489
  %310 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %309, i64 0, i32 3, i64 7, !dbg !912
  %311 = load i8, i8* %310, align 1, !dbg !912, !tbaa !143
  %312 = or i8 %311, -128, !dbg !912
  store i8 %312, i8* %310, align 1, !dbg !912, !tbaa !143
  br label %356, !dbg !913

; <label>:313:                                    ; preds = %226, %3
  %314 = call i32 @hllSparseToDense(%struct.redisObject* %0) #6, !dbg !914
  %315 = icmp eq i32 %314, -1, !dbg !916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !917
  br i1 %315, label %356, label %316, !dbg !917

; <label>:316:                                    ; preds = %313
  %317 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !918
  %318 = bitcast i8** %317 to %struct.hllhdr**, !dbg !918
  %319 = load %struct.hllhdr*, %struct.hllhdr** %318, align 8, !dbg !918, !tbaa !489
  %320 = mul nsw i64 %1, 6, !dbg !923
  %321 = sdiv i64 %320, 8, !dbg !923
  %322 = and i64 %320, 6, !dbg !923
  %323 = sub nsw i64 8, %322, !dbg !923
  %324 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %319, i64 0, i32 4, i64 %321, !dbg !923
  %325 = load i8, i8* %324, align 1, !dbg !923, !tbaa !143
  %326 = zext i8 %325 to i64, !dbg !923
  %327 = add nsw i64 %321, 1, !dbg !923
  %328 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %319, i64 0, i32 4, i64 %327, !dbg !923
  %329 = load i8, i8* %328, align 1, !dbg !923, !tbaa !143
  %330 = zext i8 %329 to i64, !dbg !923
  %331 = lshr i64 %326, %322, !dbg !923
  %332 = shl i64 %330, %323, !dbg !923
  %333 = or i64 %332, %331, !dbg !923
  %334 = trunc i64 %333 to i32, !dbg !923
  %335 = and i32 %334, 63, !dbg !923
  %336 = zext i8 %2 to i32, !dbg !924
  %337 = icmp ult i32 %335, %336, !dbg !925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !926
  br i1 %337, label %339, label %338, !dbg !926

; <label>:338:                                    ; preds = %316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !930
  call void @_serverAssert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 893) #8, !dbg !930
  call void @_exit(i32 1) #9, !dbg !930
  unreachable

; <label>:339:                                    ; preds = %316
  %340 = zext i8 %2 to i64, !dbg !931
  %341 = trunc i64 %322 to i32, !dbg !931
  %342 = shl i32 63, %341, !dbg !931
  %343 = trunc i32 %342 to i8, !dbg !931
  %344 = xor i8 %343, -1, !dbg !931
  %345 = and i8 %325, %344, !dbg !931
  %346 = shl i64 %340, %322, !dbg !931
  %347 = trunc i64 %346 to i8, !dbg !931
  %348 = or i8 %345, %347, !dbg !931
  store i8 %348, i8* %324, align 1, !dbg !931, !tbaa !143
  %349 = trunc i64 %323 to i32, !dbg !931
  %350 = ashr i32 -64, %349, !dbg !931
  %351 = trunc i32 %350 to i8, !dbg !931
  %352 = and i8 %329, %351, !dbg !931
  %353 = lshr i64 %340, %323, !dbg !931
  %354 = trunc i64 %353 to i8, !dbg !931
  %355 = or i8 %352, %354, !dbg !931
  store i8 %355, i8* %328, align 1, !dbg !931, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !932
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !930
  br label %356, !dbg !933

; <label>:356:                                    ; preds = %313, %89, %73, %72, %339, %307
  %357 = phi i32 [ 1, %339 ], [ 1, %307 ], [ -1, %72 ], [ -1, %73 ], [ 0, %89 ], [ -1, %313 ], !dbg !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  ret i32 %357, !dbg !935
}

; Function Attrs: noredzone
declare dso_local i8* @sdsMakeRoomFor(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsIncrLen(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local i32 @hllSparseAdd(%struct.redisObject* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !936 {
  %4 = trunc i64 %2 to i32, !dbg !951
  %5 = tail call i64 @MurmurHash64A(i8* %1, i32 %4, i32 -1379386599) #8, !dbg !952
  %6 = lshr i64 %5, 14, !dbg !955
  %7 = or i64 %6, 1125899906842624, !dbg !956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  %8 = and i64 %5, 16384, !dbg !960
  %9 = icmp eq i64 %8, 0, !dbg !961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  br i1 %9, label %10, label %19, !dbg !959

; <label>:10:                                     ; preds = %3, %10
  %11 = phi i32 [ %13, %10 ], [ 1, %3 ]
  %12 = phi i64 [ %14, %10 ], [ 1, %3 ]
  %13 = add nuw nsw i32 %11, 1, !dbg !962
  %14 = shl i64 %12, 1, !dbg !963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  %15 = and i64 %14, %7, !dbg !960
  %16 = icmp eq i64 %15, 0, !dbg !961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  br i1 %16, label %10, label %17, !dbg !959, !llvm.loop !218

; <label>:17:                                     ; preds = %10
  %18 = trunc i32 %13 to i8, !dbg !964
  br label %19, !dbg !964

; <label>:19:                                     ; preds = %17, %3
  %20 = phi i8 [ 1, %3 ], [ %18, %17 ]
  %21 = and i64 %5, 16383, !dbg !964
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !965
  %22 = tail call i32 @hllSparseSet(%struct.redisObject* %0, i64 %21, i8 zeroext %20) #6, !dbg !968
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  ret i32 %22, !dbg !969
}

; Function Attrs: noredzone nounwind
define dso_local void @hllSparseRegHisto(i8* readonly, i32, i32*, i32* nocapture) local_unnamed_addr #0 !dbg !970 {
  %5 = sext i32 %1 to i64, !dbg !988
  %6 = getelementptr inbounds i8, i8* %0, i64 %5, !dbg !988
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  %7 = icmp sgt i32 %1, 0, !dbg !992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  br i1 %7, label %8, label %51, !dbg !991

; <label>:8:                                      ; preds = %4, %39
  %9 = phi i8* [ %46, %39 ], [ %0, %4 ]
  %10 = phi i32 [ %47, %39 ], [ 0, %4 ]
  %11 = load i8, i8* %9, align 1, !dbg !993, !tbaa !143
  %12 = zext i8 %11 to i32, !dbg !993
  %13 = and i32 %12, 192, !dbg !993
  %14 = icmp eq i32 %13, 0, !dbg !993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !996
  br i1 %14, label %15, label %19, !dbg !996

; <label>:15:                                     ; preds = %8
  %16 = and i32 %12, 63, !dbg !997
  %17 = add nuw nsw i32 %16, 1, !dbg !997
  %18 = load i32, i32* %3, align 4, !dbg !1000, !tbaa !413
  br label %39, !dbg !1001

; <label>:19:                                     ; preds = %8
  %20 = icmp eq i32 %13, 64, !dbg !1002
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1004
  br i1 %20, label %21, label %30, !dbg !1004

; <label>:21:                                     ; preds = %19
  %22 = shl nuw nsw i32 %12, 8, !dbg !1005
  %23 = and i32 %22, 16128, !dbg !1005
  %24 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1005
  %25 = load i8, i8* %24, align 1, !dbg !1005, !tbaa !143
  %26 = zext i8 %25 to i32, !dbg !1005
  %27 = or i32 %23, %26, !dbg !1005
  %28 = add nuw nsw i32 %27, 1, !dbg !1005
  %29 = load i32, i32* %3, align 4, !dbg !1007, !tbaa !413
  br label %39, !dbg !1008

; <label>:30:                                     ; preds = %19
  %31 = and i32 %12, 3, !dbg !1009
  %32 = add nuw nsw i32 %31, 1, !dbg !1009
  %33 = lshr i32 %12, 2, !dbg !1011
  %34 = and i32 %33, 31, !dbg !1011
  %35 = add nuw nsw i32 %34, 1, !dbg !1011
  %36 = zext i32 %35 to i64, !dbg !1013
  %37 = getelementptr inbounds i32, i32* %3, i64 %36, !dbg !1013
  %38 = load i32, i32* %37, align 4, !dbg !1014, !tbaa !413
  br label %39

; <label>:39:                                     ; preds = %21, %30, %15
  %40 = phi i32 [ %29, %21 ], [ %32, %30 ], [ %17, %15 ]
  %41 = phi i32 [ %28, %21 ], [ %38, %30 ], [ %18, %15 ]
  %42 = phi i32* [ %3, %21 ], [ %37, %30 ], [ %3, %15 ]
  %43 = phi i64 [ 2, %21 ], [ 1, %30 ], [ 1, %15 ]
  %44 = phi i32 [ %28, %21 ], [ %32, %30 ], [ %17, %15 ]
  %45 = add nsw i32 %41, %40, !dbg !1015
  store i32 %45, i32* %42, align 4, !dbg !1015, !tbaa !413
  %46 = getelementptr inbounds i8, i8* %9, i64 %43, !dbg !1015
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %47 = add nsw i32 %44, %10, !dbg !1016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  %48 = icmp ult i8* %46, %6, !dbg !992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  br i1 %48, label %8, label %49, !dbg !991, !llvm.loop !1017

; <label>:49:                                     ; preds = %39
  %50 = icmp ne i32 %47, 16384, !dbg !1019
  br label %51, !dbg !1019

; <label>:51:                                     ; preds = %49, %4
  %52 = phi i1 [ true, %4 ], [ %50, %49 ]
  %53 = icmp ne i32* %2, null, !dbg !1021
  %54 = and i1 %53, %52, !dbg !1022
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  br i1 %54, label %55, label %56, !dbg !1022

; <label>:55:                                     ; preds = %51
  store i32 1, i32* %2, align 4, !dbg !1023, !tbaa !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1024
  br label %56, !dbg !1024

; <label>:56:                                     ; preds = %55, %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1025
  ret void, !dbg !1025
}

; Function Attrs: noredzone nounwind
define dso_local void @hllRawRegHisto(i8* nocapture readonly, i32* nocapture) local_unnamed_addr #0 !dbg !1026 {
  %3 = bitcast i8* %0 to i64*, !dbg !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1040
  br label %4, !dbg !1040

; <label>:4:                                      ; preds = %55, %2
  %5 = phi i32 [ 0, %2 ], [ %61, %55 ]
  %6 = phi i64* [ %3, %2 ], [ %60, %55 ]
  %7 = load i64, i64* %6, align 8, !dbg !1041, !tbaa !125
  %8 = icmp eq i64 %7, 0, !dbg !1045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1046
  br i1 %8, label %55, label %9, !dbg !1046

; <label>:9:                                      ; preds = %4
  %10 = bitcast i64* %6 to i8*, !dbg !1047
  %11 = and i64 %7, 255, !dbg !1050
  %12 = getelementptr inbounds i32, i32* %1, i64 %11, !dbg !1050
  %13 = load i32, i32* %12, align 4, !dbg !1051, !tbaa !413
  %14 = add nsw i32 %13, 1, !dbg !1051
  store i32 %14, i32* %12, align 4, !dbg !1051, !tbaa !413
  %15 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1052
  %16 = load i8, i8* %15, align 1, !dbg !1052, !tbaa !143
  %17 = zext i8 %16 to i64, !dbg !1053
  %18 = getelementptr inbounds i32, i32* %1, i64 %17, !dbg !1053
  %19 = load i32, i32* %18, align 4, !dbg !1054, !tbaa !413
  %20 = add nsw i32 %19, 1, !dbg !1054
  store i32 %20, i32* %18, align 4, !dbg !1054, !tbaa !413
  %21 = getelementptr inbounds i8, i8* %10, i64 2, !dbg !1055
  %22 = load i8, i8* %21, align 1, !dbg !1055, !tbaa !143
  %23 = zext i8 %22 to i64, !dbg !1056
  %24 = getelementptr inbounds i32, i32* %1, i64 %23, !dbg !1056
  %25 = load i32, i32* %24, align 4, !dbg !1057, !tbaa !413
  %26 = add nsw i32 %25, 1, !dbg !1057
  store i32 %26, i32* %24, align 4, !dbg !1057, !tbaa !413
  %27 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1058
  %28 = load i8, i8* %27, align 1, !dbg !1058, !tbaa !143
  %29 = zext i8 %28 to i64, !dbg !1059
  %30 = getelementptr inbounds i32, i32* %1, i64 %29, !dbg !1059
  %31 = load i32, i32* %30, align 4, !dbg !1060, !tbaa !413
  %32 = add nsw i32 %31, 1, !dbg !1060
  store i32 %32, i32* %30, align 4, !dbg !1060, !tbaa !413
  %33 = getelementptr inbounds i8, i8* %10, i64 4, !dbg !1061
  %34 = load i8, i8* %33, align 1, !dbg !1061, !tbaa !143
  %35 = zext i8 %34 to i64, !dbg !1062
  %36 = getelementptr inbounds i32, i32* %1, i64 %35, !dbg !1062
  %37 = load i32, i32* %36, align 4, !dbg !1063, !tbaa !413
  %38 = add nsw i32 %37, 1, !dbg !1063
  store i32 %38, i32* %36, align 4, !dbg !1063, !tbaa !413
  %39 = getelementptr inbounds i8, i8* %10, i64 5, !dbg !1064
  %40 = load i8, i8* %39, align 1, !dbg !1064, !tbaa !143
  %41 = zext i8 %40 to i64, !dbg !1065
  %42 = getelementptr inbounds i32, i32* %1, i64 %41, !dbg !1065
  %43 = load i32, i32* %42, align 4, !dbg !1066, !tbaa !413
  %44 = add nsw i32 %43, 1, !dbg !1066
  store i32 %44, i32* %42, align 4, !dbg !1066, !tbaa !413
  %45 = getelementptr inbounds i8, i8* %10, i64 6, !dbg !1067
  %46 = load i8, i8* %45, align 1, !dbg !1067, !tbaa !143
  %47 = zext i8 %46 to i64, !dbg !1068
  %48 = getelementptr inbounds i32, i32* %1, i64 %47, !dbg !1068
  %49 = load i32, i32* %48, align 4, !dbg !1069, !tbaa !413
  %50 = add nsw i32 %49, 1, !dbg !1069
  store i32 %50, i32* %48, align 4, !dbg !1069, !tbaa !413
  %51 = getelementptr inbounds i8, i8* %10, i64 7, !dbg !1070
  %52 = load i8, i8* %51, align 1, !dbg !1070, !tbaa !143
  %53 = zext i8 %52 to i64, !dbg !1071
  %54 = getelementptr inbounds i32, i32* %1, i64 %53, !dbg !1071
  br label %55

; <label>:55:                                     ; preds = %4, %9
  %56 = phi i32* [ %54, %9 ], [ %1, %4 ]
  %57 = phi i32 [ 1, %9 ], [ 8, %4 ]
  %58 = load i32, i32* %56, align 4, !dbg !1072, !tbaa !413
  %59 = add nsw i32 %58, %57, !dbg !1072
  store i32 %59, i32* %56, align 4, !dbg !1072, !tbaa !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %60 = getelementptr inbounds i64, i64* %6, i64 1, !dbg !1074
  %61 = add nuw nsw i32 %5, 1, !dbg !1075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1040
  %62 = icmp eq i32 %61, 2048, !dbg !1077
  br i1 %62, label %63, label %4, !dbg !1040, !llvm.loop !1078

; <label>:63:                                     ; preds = %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1080
  ret void, !dbg !1080
}

; Function Attrs: noredzone nounwind
define dso_local double @hllSigma(double) local_unnamed_addr #0 !dbg !1081 {
  %2 = fcmp oeq double %0, 1.000000e+00, !dbg !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1093
  br i1 %2, label %13, label %3, !dbg !1092

; <label>:3:                                      ; preds = %1, %3
  %4 = phi double [ %7, %3 ], [ %0, %1 ]
  %5 = phi double [ %10, %3 ], [ 1.000000e+00, %1 ], !dbg !1094
  %6 = phi double [ %9, %3 ], [ %0, %1 ], !dbg !1094
  %7 = fmul double %4, %4, !dbg !1098
  %8 = fmul double %7, %5, !dbg !1100
  %9 = fadd double %6, %8, !dbg !1101
  %10 = fadd double %5, %5, !dbg !1102
  %11 = fcmp une double %6, %9, !dbg !1103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1104
  br i1 %11, label %3, label %12, !dbg !1104, !llvm.loop !1105

; <label>:12:                                     ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %13

; <label>:13:                                     ; preds = %1, %12
  %14 = phi double [ %9, %12 ], [ 0x7FF0000000000000, %1 ], !dbg !1093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1108
  ret double %14, !dbg !1108
}

; Function Attrs: noredzone nounwind
define dso_local double @hllTau(double) local_unnamed_addr #0 !dbg !1109 {
  %2 = fcmp oeq double %0, 0.000000e+00, !dbg !1116
  %3 = fcmp oeq double %0, 1.000000e+00, !dbg !1118
  %4 = or i1 %2, %3, !dbg !1119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1119
  br i1 %4, label %20, label %5, !dbg !1119

; <label>:5:                                      ; preds = %1
  %6 = fsub double 1.000000e+00, %0, !dbg !1121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1123
  br label %7, !dbg !1123

; <label>:7:                                      ; preds = %7, %5
  %8 = phi double [ %0, %5 ], [ %11, %7 ]
  %9 = phi double [ 1.000000e+00, %5 ], [ %12, %7 ], !dbg !1124
  %10 = phi double [ %6, %5 ], [ %16, %7 ], !dbg !1124
  %11 = tail call double @sqrt(double %8) #8, !dbg !1126
  %12 = fmul double %9, 5.000000e-01, !dbg !1128
  %13 = fsub double 1.000000e+00, %11, !dbg !1129
  %14 = tail call double @pow(double %13, double 2.000000e+00) #8, !dbg !1130
  %15 = fmul double %12, %14, !dbg !1131
  %16 = fsub double %10, %15, !dbg !1132
  %17 = fcmp une double %10, %16, !dbg !1133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  br i1 %17, label %7, label %18, !dbg !1134, !llvm.loop !1135

; <label>:18:                                     ; preds = %7
  %19 = fdiv double %16, 3.000000e+00, !dbg !1137
  br label %20

; <label>:20:                                     ; preds = %1, %18
  %21 = phi double [ %19, %18 ], [ 0.000000e+00, %1 ], !dbg !1138
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1139
  ret double %21, !dbg !1139
}

; Function Attrs: noredzone
declare dso_local double @sqrt(double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @pow(double, double) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @hllCount(%struct.hllhdr* readonly, i32*) local_unnamed_addr #0 !dbg !1140 {
  %3 = alloca [64 x i32], align 16
  %4 = bitcast [64 x i32]* %3 to i8*, !dbg !1157
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %4) #7, !dbg !1157
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 256, i1 false), !dbg !1158
  %5 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %0, i64 0, i32 1, !dbg !1159
  %6 = load i8, i8* %5, align 1, !dbg !1159, !tbaa !143
  %7 = icmp eq i8 %6, 0, !dbg !1161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1162
  br i1 %7, label %8, label %11, !dbg !1162

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %0, i64 0, i32 4, i64 0, !dbg !1163
  %10 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0, !dbg !1165
  call void @hllDenseRegHisto(i8* nonnull %9, i32* nonnull %10) #6, !dbg !1166
  br label %163, !dbg !1167

; <label>:11:                                     ; preds = %2
  %12 = icmp eq i8 %6, 1, !dbg !1168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1170
  br i1 %12, label %13, label %95, !dbg !1170

; <label>:13:                                     ; preds = %11
  %14 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %0, i64 0, i32 4, i64 0, !dbg !1171
  %15 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %0, i64 0, i32 0, i64 -1, !dbg !1173
  %16 = load i8, i8* %15, align 1, !dbg !1173, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1176
  %17 = trunc i8 %16 to i3, !dbg !1176
  switch i3 %17, label %39 [
    i3 0, label %18
    i3 1, label %21
    i3 2, label %25
    i3 3, label %30
    i3 -4, label %35
  ], !dbg !1176

; <label>:18:                                     ; preds = %13
  %19 = lshr i8 %16, 3, !dbg !1177
  %20 = zext i8 %19 to i64, !dbg !1177
  br label %39, !dbg !1178

; <label>:21:                                     ; preds = %13
  %22 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %0, i64 0, i32 0, i64 -3, !dbg !1180
  %23 = load i8, i8* %22, align 1, !dbg !1181, !tbaa !143
  %24 = zext i8 %23 to i64, !dbg !1180
  br label %39, !dbg !1182

; <label>:25:                                     ; preds = %13
  %26 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %0, i64 0, i32 0, i64 -5, !dbg !1183
  %27 = bitcast i8* %26 to i16*, !dbg !1184
  %28 = load i16, i16* %27, align 1, !dbg !1184, !tbaa !518
  %29 = zext i16 %28 to i64, !dbg !1183
  br label %39, !dbg !1185

; <label>:30:                                     ; preds = %13
  %31 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %0, i64 0, i32 0, i64 -9, !dbg !1186
  %32 = bitcast i8* %31 to i32*, !dbg !1187
  %33 = load i32, i32* %32, align 1, !dbg !1187, !tbaa !413
  %34 = zext i32 %33 to i64, !dbg !1186
  br label %39, !dbg !1188

; <label>:35:                                     ; preds = %13
  %36 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %0, i64 0, i32 0, i64 -17, !dbg !1189
  %37 = bitcast i8* %36 to i64*, !dbg !1190
  %38 = load i64, i64* %37, align 1, !dbg !1190, !tbaa !125
  br label %39, !dbg !1191

; <label>:39:                                     ; preds = %13, %18, %21, %25, %30, %35
  %40 = phi i64 [ %38, %35 ], [ %34, %30 ], [ %29, %25 ], [ %24, %21 ], [ %20, %18 ], [ 0, %13 ], !dbg !1192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1194
  %41 = trunc i64 %40 to i32, !dbg !1195
  %42 = add i32 %41, -16, !dbg !1195
  %43 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0, !dbg !1196
  %44 = sext i32 %42 to i64, !dbg !1203
  %45 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %0, i64 0, i32 4, i64 %44, !dbg !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1206
  %46 = icmp sgt i32 %42, 0, !dbg !1207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1206
  br i1 %46, label %47, label %89, !dbg !1206

; <label>:47:                                     ; preds = %39, %80
  %48 = phi i32 [ %82, %80 ], [ 0, %39 ]
  %49 = phi i8* [ %84, %80 ], [ %14, %39 ]
  %50 = phi i32 [ %85, %80 ], [ 0, %39 ]
  %51 = load i8, i8* %49, align 1, !dbg !1208, !tbaa !143
  %52 = zext i8 %51 to i32, !dbg !1208
  %53 = and i32 %52, 192, !dbg !1208
  %54 = icmp eq i32 %53, 0, !dbg !1208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1209
  br i1 %54, label %55, label %59, !dbg !1209

; <label>:55:                                     ; preds = %47
  %56 = and i32 %52, 63, !dbg !1210
  %57 = add nuw nsw i32 %56, 1, !dbg !1210
  %58 = add nsw i32 %48, %57, !dbg !1212
  store i32 %58, i32* %43, align 16, !dbg !1212, !tbaa !413
  br label %80, !dbg !1213

; <label>:59:                                     ; preds = %47
  %60 = icmp eq i32 %53, 64, !dbg !1214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1215
  br i1 %60, label %61, label %70, !dbg !1215

; <label>:61:                                     ; preds = %59
  %62 = shl nuw nsw i32 %52, 8, !dbg !1216
  %63 = and i32 %62, 16128, !dbg !1216
  %64 = getelementptr inbounds i8, i8* %49, i64 1, !dbg !1216
  %65 = load i8, i8* %64, align 1, !dbg !1216, !tbaa !143
  %66 = zext i8 %65 to i32, !dbg !1216
  %67 = or i32 %63, %66, !dbg !1216
  %68 = add nuw nsw i32 %67, 1, !dbg !1216
  %69 = add nsw i32 %68, %48, !dbg !1217
  store i32 %69, i32* %43, align 16, !dbg !1217, !tbaa !413
  br label %80, !dbg !1218

; <label>:70:                                     ; preds = %59
  %71 = and i32 %52, 3, !dbg !1219
  %72 = add nuw nsw i32 %71, 1, !dbg !1219
  %73 = lshr i32 %52, 2, !dbg !1220
  %74 = and i32 %73, 31, !dbg !1220
  %75 = add nuw nsw i32 %74, 1, !dbg !1220
  %76 = zext i32 %75 to i64, !dbg !1222
  %77 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %76, !dbg !1222
  %78 = load i32, i32* %77, align 4, !dbg !1223, !tbaa !413
  %79 = add nsw i32 %78, %72, !dbg !1223
  store i32 %79, i32* %77, align 4, !dbg !1223, !tbaa !413
  br label %80

; <label>:80:                                     ; preds = %70, %61, %55
  %81 = phi i64 [ 1, %70 ], [ 2, %61 ], [ 1, %55 ]
  %82 = phi i32 [ %48, %70 ], [ %69, %61 ], [ %58, %55 ]
  %83 = phi i32 [ %72, %70 ], [ %68, %61 ], [ %57, %55 ]
  %84 = getelementptr inbounds i8, i8* %49, i64 %81, !dbg !1193
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %85 = add nsw i32 %83, %50, !dbg !1224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1206
  %86 = icmp ult i8* %84, %45, !dbg !1207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1206
  br i1 %86, label %47, label %87, !dbg !1206, !llvm.loop !1017

; <label>:87:                                     ; preds = %80
  %88 = icmp ne i32 %85, 16384, !dbg !1225
  br label %89, !dbg !1225

; <label>:89:                                     ; preds = %87, %39
  %90 = phi i1 [ true, %39 ], [ %88, %87 ]
  %91 = icmp ne i32* %1, null, !dbg !1226
  %92 = and i1 %91, %90, !dbg !1227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1227
  br i1 %92, label %93, label %94, !dbg !1227

; <label>:93:                                     ; preds = %89
  store i32 1, i32* %1, align 4, !dbg !1228, !tbaa !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1229
  br label %94, !dbg !1229

; <label>:94:                                     ; preds = %89, %93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1230
  br label %163, !dbg !1231

; <label>:95:                                     ; preds = %11
  %96 = icmp eq i8 %6, -1, !dbg !1232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1234
  br i1 %96, label %97, label %162, !dbg !1234

; <label>:97:                                     ; preds = %95
  %98 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %0, i64 0, i32 4, i64 0, !dbg !1235
  %99 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0, !dbg !1237
  %100 = bitcast i8* %98 to i64*, !dbg !1241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  br label %101, !dbg !1245

; <label>:101:                                    ; preds = %157, %97
  %102 = phi i32 [ 0, %97 ], [ %159, %157 ]
  %103 = phi i64* [ %100, %97 ], [ %158, %157 ]
  %104 = load i64, i64* %103, align 8, !dbg !1246, !tbaa !125
  %105 = icmp eq i64 %104, 0, !dbg !1247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1248
  br i1 %105, label %106, label %109, !dbg !1248

; <label>:106:                                    ; preds = %101
  %107 = load i32, i32* %99, align 16, !dbg !1249, !tbaa !413
  %108 = add nsw i32 %107, 8, !dbg !1249
  store i32 %108, i32* %99, align 16, !dbg !1249, !tbaa !413
  br label %157, !dbg !1250

; <label>:109:                                    ; preds = %101
  %110 = bitcast i64* %103 to i8*, !dbg !1251
  %111 = and i64 %104, 255, !dbg !1253
  %112 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %111, !dbg !1253
  %113 = load i32, i32* %112, align 4, !dbg !1254, !tbaa !413
  %114 = add nsw i32 %113, 1, !dbg !1254
  store i32 %114, i32* %112, align 4, !dbg !1254, !tbaa !413
  %115 = getelementptr inbounds i8, i8* %110, i64 1, !dbg !1255
  %116 = load i8, i8* %115, align 1, !dbg !1255, !tbaa !143
  %117 = zext i8 %116 to i64, !dbg !1256
  %118 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %117, !dbg !1256
  %119 = load i32, i32* %118, align 4, !dbg !1257, !tbaa !413
  %120 = add nsw i32 %119, 1, !dbg !1257
  store i32 %120, i32* %118, align 4, !dbg !1257, !tbaa !413
  %121 = getelementptr inbounds i8, i8* %110, i64 2, !dbg !1258
  %122 = load i8, i8* %121, align 1, !dbg !1258, !tbaa !143
  %123 = zext i8 %122 to i64, !dbg !1259
  %124 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %123, !dbg !1259
  %125 = load i32, i32* %124, align 4, !dbg !1260, !tbaa !413
  %126 = add nsw i32 %125, 1, !dbg !1260
  store i32 %126, i32* %124, align 4, !dbg !1260, !tbaa !413
  %127 = getelementptr inbounds i8, i8* %110, i64 3, !dbg !1261
  %128 = load i8, i8* %127, align 1, !dbg !1261, !tbaa !143
  %129 = zext i8 %128 to i64, !dbg !1262
  %130 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %129, !dbg !1262
  %131 = load i32, i32* %130, align 4, !dbg !1263, !tbaa !413
  %132 = add nsw i32 %131, 1, !dbg !1263
  store i32 %132, i32* %130, align 4, !dbg !1263, !tbaa !413
  %133 = getelementptr inbounds i8, i8* %110, i64 4, !dbg !1264
  %134 = load i8, i8* %133, align 1, !dbg !1264, !tbaa !143
  %135 = zext i8 %134 to i64, !dbg !1265
  %136 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %135, !dbg !1265
  %137 = load i32, i32* %136, align 4, !dbg !1266, !tbaa !413
  %138 = add nsw i32 %137, 1, !dbg !1266
  store i32 %138, i32* %136, align 4, !dbg !1266, !tbaa !413
  %139 = getelementptr inbounds i8, i8* %110, i64 5, !dbg !1267
  %140 = load i8, i8* %139, align 1, !dbg !1267, !tbaa !143
  %141 = zext i8 %140 to i64, !dbg !1268
  %142 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %141, !dbg !1268
  %143 = load i32, i32* %142, align 4, !dbg !1269, !tbaa !413
  %144 = add nsw i32 %143, 1, !dbg !1269
  store i32 %144, i32* %142, align 4, !dbg !1269, !tbaa !413
  %145 = getelementptr inbounds i8, i8* %110, i64 6, !dbg !1270
  %146 = load i8, i8* %145, align 1, !dbg !1270, !tbaa !143
  %147 = zext i8 %146 to i64, !dbg !1271
  %148 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %147, !dbg !1271
  %149 = load i32, i32* %148, align 4, !dbg !1272, !tbaa !413
  %150 = add nsw i32 %149, 1, !dbg !1272
  store i32 %150, i32* %148, align 4, !dbg !1272, !tbaa !413
  %151 = getelementptr inbounds i8, i8* %110, i64 7, !dbg !1273
  %152 = load i8, i8* %151, align 1, !dbg !1273, !tbaa !143
  %153 = zext i8 %152 to i64, !dbg !1274
  %154 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %153, !dbg !1274
  %155 = load i32, i32* %154, align 4, !dbg !1275, !tbaa !413
  %156 = add nsw i32 %155, 1, !dbg !1275
  store i32 %156, i32* %154, align 4, !dbg !1275, !tbaa !413
  br label %157

; <label>:157:                                    ; preds = %109, %106
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %158 = getelementptr inbounds i64, i64* %103, i64 1, !dbg !1276
  %159 = add nuw nsw i32 %102, 1, !dbg !1277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  %160 = icmp eq i32 %159, 2048, !dbg !1279
  br i1 %160, label %161, label %101, !dbg !1245, !llvm.loop !1078

; <label>:161:                                    ; preds = %157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1280
  br label %163

; <label>:162:                                    ; preds = %95
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 1033, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1281
  tail call void @_exit(i32 1) #9, !dbg !1281
  unreachable

; <label>:163:                                    ; preds = %94, %161, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %164 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 51, !dbg !1283
  %165 = load i32, i32* %164, align 4, !dbg !1283, !tbaa !413
  %166 = sitofp i32 %165 to double, !dbg !1283
  %167 = fsub double 1.638400e+04, %166, !dbg !1284
  %168 = fmul double %167, 0x3F10000000000000, !dbg !1285
  %169 = fcmp oeq double %168, 0.000000e+00, !dbg !1288
  %170 = fcmp oeq double %168, 1.000000e+00, !dbg !1289
  %171 = or i1 %169, %170, !dbg !1290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1290
  br i1 %171, label %172, label %173, !dbg !1290

; <label>:172:                                    ; preds = %163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1291
  br label %189, !dbg !1291

; <label>:173:                                    ; preds = %163
  %174 = fsub double 1.000000e+00, %168, !dbg !1293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1295
  br label %175, !dbg !1295

; <label>:175:                                    ; preds = %175, %173
  %176 = phi double [ %168, %173 ], [ %179, %175 ]
  %177 = phi double [ 1.000000e+00, %173 ], [ %180, %175 ], !dbg !1296
  %178 = phi double [ %174, %173 ], [ %184, %175 ], !dbg !1296
  %179 = tail call double @sqrt(double %176) #8, !dbg !1297
  %180 = fmul double %177, 5.000000e-01, !dbg !1299
  %181 = fsub double 1.000000e+00, %179, !dbg !1300
  %182 = tail call double @pow(double %181, double 2.000000e+00) #8, !dbg !1301
  %183 = fmul double %180, %182, !dbg !1302
  %184 = fsub double %178, %183, !dbg !1303
  %185 = fcmp une double %178, %184, !dbg !1304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1305
  br i1 %185, label %175, label %186, !dbg !1305, !llvm.loop !1135

; <label>:186:                                    ; preds = %175
  %187 = fdiv double %184, 3.000000e+00, !dbg !1306
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %188 = fmul double %187, 1.638400e+04
  br label %189

; <label>:189:                                    ; preds = %172, %186
  %190 = phi double [ 0.000000e+00, %172 ], [ %188, %186 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1312
  br label %191, !dbg !1312

; <label>:191:                                    ; preds = %191, %189
  %192 = phi i64 [ 50, %189 ], [ %205, %191 ]
  %193 = phi double [ %190, %189 ], [ %204, %191 ]
  %194 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %192, !dbg !1313
  %195 = load i32, i32* %194, align 8, !dbg !1313, !tbaa !413
  %196 = sitofp i32 %195 to double, !dbg !1313
  %197 = fadd double %193, %196, !dbg !1316
  %198 = fmul double %197, 5.000000e-01, !dbg !1317
  %199 = add nsw i64 %192, -1, !dbg !1318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1312
  %200 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %199, !dbg !1313
  %201 = load i32, i32* %200, align 4, !dbg !1313, !tbaa !413
  %202 = sitofp i32 %201 to double, !dbg !1313
  %203 = fadd double %198, %202, !dbg !1316
  %204 = fmul double %203, 5.000000e-01, !dbg !1317
  %205 = add nsw i64 %192, -2, !dbg !1318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1319
  %206 = icmp eq i64 %199, 1, !dbg !1320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1312
  br i1 %206, label %207, label %191, !dbg !1312, !llvm.loop !1321

; <label>:207:                                    ; preds = %191
  %208 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0, !dbg !1323
  %209 = load i32, i32* %208, align 16, !dbg !1323, !tbaa !413
  %210 = sitofp i32 %209 to double, !dbg !1323
  %211 = fmul double %210, 0x3F10000000000000, !dbg !1324
  %212 = fcmp oeq double %211, 1.000000e+00, !dbg !1327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1329
  br i1 %212, label %224, label %213, !dbg !1328

; <label>:213:                                    ; preds = %207, %213
  %214 = phi double [ %217, %213 ], [ %211, %207 ]
  %215 = phi double [ %220, %213 ], [ 1.000000e+00, %207 ], !dbg !1330
  %216 = phi double [ %219, %213 ], [ %211, %207 ], !dbg !1330
  %217 = fmul double %214, %214, !dbg !1333
  %218 = fmul double %217, %215, !dbg !1335
  %219 = fadd double %216, %218, !dbg !1336
  %220 = fadd double %215, %215, !dbg !1337
  %221 = fcmp une double %216, %219, !dbg !1338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1339
  br i1 %221, label %213, label %222, !dbg !1339, !llvm.loop !1105

; <label>:222:                                    ; preds = %213
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %223 = fmul double %219, 1.638400e+04
  br label %224

; <label>:224:                                    ; preds = %207, %222
  %225 = phi double [ %223, %222 ], [ 0x7FF0000000000000, %207 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1340
  %226 = fadd double %204, %225, !dbg !1341
  %227 = fdiv double 0x41A71547652B82FE, %226, !dbg !1342
  %228 = fpext double %227 to x86_fp80, !dbg !1343
  %229 = tail call i64 @llroundl(x86_fp80 %228) #8, !dbg !1344
  %230 = sitofp i64 %229 to double, !dbg !1344
  %231 = fptoui double %230 to i64, !dbg !1346
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %4) #7, !dbg !1347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  ret i64 %231, !dbg !1348
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #2

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @llroundl(x86_fp80) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @hllAdd(%struct.redisObject* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !1349 {
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1358
  %5 = bitcast i8** %4 to %struct.hllhdr**, !dbg !1358
  %6 = load %struct.hllhdr*, %struct.hllhdr** %5, align 8, !dbg !1358, !tbaa !489
  %7 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %6, i64 0, i32 1, !dbg !1360
  %8 = load i8, i8* %7, align 1, !dbg !1360, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1361
  switch i8 %8, label %32 [
    i8 0, label %9
    i8 1, label %12
  ], !dbg !1361

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %6, i64 0, i32 4, i64 0, !dbg !1362
  %11 = tail call i32 @hllDenseAdd(i8* nonnull %10, i8* %1, i64 %2) #6, !dbg !1364
  br label %32, !dbg !1365

; <label>:12:                                     ; preds = %3
  %13 = trunc i64 %2 to i32, !dbg !1373
  %14 = tail call i64 @MurmurHash64A(i8* %1, i32 %13, i32 -1379386599) #8, !dbg !1374
  %15 = lshr i64 %14, 14, !dbg !1377
  %16 = or i64 %15, 1125899906842624, !dbg !1378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1381
  %17 = and i64 %14, 16384, !dbg !1382
  %18 = icmp eq i64 %17, 0, !dbg !1383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1381
  br i1 %18, label %19, label %28, !dbg !1381

; <label>:19:                                     ; preds = %12, %19
  %20 = phi i32 [ %22, %19 ], [ 1, %12 ]
  %21 = phi i64 [ %23, %19 ], [ 1, %12 ]
  %22 = add nuw nsw i32 %20, 1, !dbg !1384
  %23 = shl i64 %21, 1, !dbg !1385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1381
  %24 = and i64 %23, %16, !dbg !1382
  %25 = icmp eq i64 %24, 0, !dbg !1383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1381
  br i1 %25, label %19, label %26, !dbg !1381, !llvm.loop !218

; <label>:26:                                     ; preds = %19
  %27 = trunc i32 %22 to i8, !dbg !1386
  br label %28, !dbg !1386

; <label>:28:                                     ; preds = %12, %26
  %29 = phi i8 [ 1, %12 ], [ %27, %26 ]
  %30 = and i64 %14, 16383, !dbg !1386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1387
  %31 = tail call i32 @hllSparseSet(%struct.redisObject* %0, i64 %30, i8 zeroext %29) #8, !dbg !1390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1391
  br label %32, !dbg !1392

; <label>:32:                                     ; preds = %3, %28, %9
  %33 = phi i32 [ %31, %28 ], [ %11, %9 ], [ -1, %3 ], !dbg !1393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1394
  ret i32 %33, !dbg !1394
}

; Function Attrs: noredzone nounwind
define dso_local i32 @hllMerge(i8* nocapture, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !1395 {
  %3 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !1423
  %4 = load i8*, i8** %3, align 8, !dbg !1423, !tbaa !489
  %5 = getelementptr inbounds i8, i8* %4, i64 4, !dbg !1425
  %6 = load i8, i8* %5, align 1, !dbg !1425, !tbaa !143
  %7 = icmp eq i8 %6, 0, !dbg !1426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1427
  br i1 %7, label %8, label %38, !dbg !1427

; <label>:8:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1430
  %9 = getelementptr inbounds i8, i8* %4, i64 16
  br label %10, !dbg !1430

; <label>:10:                                     ; preds = %35, %8
  %11 = phi i64 [ 0, %8 ], [ %36, %35 ]
  %12 = trunc i64 %11 to i32, !dbg !1431
  %13 = mul i32 %12, 6, !dbg !1431
  %14 = lshr i32 %13, 3, !dbg !1431
  %15 = zext i32 %14 to i64, !dbg !1431
  %16 = and i32 %13, 6, !dbg !1431
  %17 = zext i32 %16 to i64, !dbg !1431
  %18 = sub nsw i64 8, %17, !dbg !1431
  %19 = getelementptr inbounds i8, i8* %9, i64 %15, !dbg !1431
  %20 = load i8, i8* %19, align 1, !dbg !1431, !tbaa !143
  %21 = zext i8 %20 to i64, !dbg !1431
  %22 = add nuw nsw i64 %15, 1, !dbg !1431
  %23 = getelementptr inbounds i8, i8* %9, i64 %22, !dbg !1431
  %24 = load i8, i8* %23, align 1, !dbg !1431, !tbaa !143
  %25 = zext i8 %24 to i64, !dbg !1431
  %26 = lshr i64 %21, %17, !dbg !1431
  %27 = shl i64 %25, %18, !dbg !1431
  %28 = or i64 %27, %26, !dbg !1431
  %29 = trunc i64 %28 to i8, !dbg !1431
  %30 = and i8 %29, 63, !dbg !1431
  %31 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !1433
  %32 = load i8, i8* %31, align 1, !dbg !1433, !tbaa !143
  %33 = icmp ugt i8 %30, %32, !dbg !1435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1436
  br i1 %33, label %34, label %35, !dbg !1436

; <label>:34:                                     ; preds = %10
  store i8 %30, i8* %31, align 1, !dbg !1437, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1438
  br label %35, !dbg !1438

; <label>:35:                                     ; preds = %10, %34
  %36 = add nuw nsw i64 %11, 1, !dbg !1439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1430
  %37 = icmp eq i64 %36, 16384, !dbg !1441
  br i1 %37, label %123, label %10, !dbg !1430, !llvm.loop !1442

; <label>:38:                                     ; preds = %2
  %39 = getelementptr inbounds i8, i8* %4, i64 -1, !dbg !1447
  %40 = load i8, i8* %39, align 1, !dbg !1447, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1449
  %41 = trunc i8 %40 to i3, !dbg !1449
  switch i3 %41, label %63 [
    i3 0, label %42
    i3 1, label %45
    i3 2, label %49
    i3 3, label %54
    i3 -4, label %59
  ], !dbg !1449

; <label>:42:                                     ; preds = %38
  %43 = lshr i8 %40, 3, !dbg !1450
  %44 = zext i8 %43 to i64, !dbg !1450
  br label %64, !dbg !1451

; <label>:45:                                     ; preds = %38
  %46 = getelementptr inbounds i8, i8* %4, i64 -3, !dbg !1452
  %47 = load i8, i8* %46, align 1, !dbg !1453, !tbaa !143
  %48 = zext i8 %47 to i64, !dbg !1452
  br label %64, !dbg !1454

; <label>:49:                                     ; preds = %38
  %50 = getelementptr inbounds i8, i8* %4, i64 -5, !dbg !1455
  %51 = bitcast i8* %50 to i16*, !dbg !1456
  %52 = load i16, i16* %51, align 1, !dbg !1456, !tbaa !518
  %53 = zext i16 %52 to i64, !dbg !1455
  br label %64, !dbg !1457

; <label>:54:                                     ; preds = %38
  %55 = getelementptr inbounds i8, i8* %4, i64 -9, !dbg !1458
  %56 = bitcast i8* %55 to i32*, !dbg !1459
  %57 = load i32, i32* %56, align 1, !dbg !1459, !tbaa !413
  %58 = zext i32 %57 to i64, !dbg !1458
  br label %64, !dbg !1460

; <label>:59:                                     ; preds = %38
  %60 = getelementptr inbounds i8, i8* %4, i64 -17, !dbg !1461
  %61 = bitcast i8* %60 to i64*, !dbg !1462
  %62 = load i64, i64* %61, align 1, !dbg !1462, !tbaa !125
  br label %64, !dbg !1463

; <label>:63:                                     ; preds = %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1467
  br label %119, !dbg !1467

; <label>:64:                                     ; preds = %42, %45, %49, %54, %59
  %65 = phi i64 [ %62, %59 ], [ %58, %54 ], [ %53, %49 ], [ %48, %45 ], [ %44, %42 ], !dbg !1468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1465
  %66 = getelementptr inbounds i8, i8* %4, i64 %65, !dbg !1470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1467
  %67 = icmp sgt i64 %65, 16, !dbg !1471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1467
  br i1 %67, label %68, label %119, !dbg !1467

; <label>:68:                                     ; preds = %64
  %69 = getelementptr inbounds i8, i8* %4, i64 16, !dbg !1472
  br label %70, !dbg !1473

; <label>:70:                                     ; preds = %68, %114
  %71 = phi i32 [ %116, %114 ], [ 0, %68 ]
  %72 = phi i8* [ %117, %114 ], [ %69, %68 ]
  %73 = load i8, i8* %72, align 1, !dbg !1473, !tbaa !143
  %74 = zext i8 %73 to i32, !dbg !1473
  %75 = and i32 %74, 192, !dbg !1473
  %76 = icmp eq i32 %75, 0, !dbg !1473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1476
  br i1 %76, label %77, label %81, !dbg !1476

; <label>:77:                                     ; preds = %70
  %78 = and i32 %74, 63, !dbg !1477
  %79 = add i32 %71, 1, !dbg !1477
  %80 = add i32 %79, %78, !dbg !1479
  br label %114, !dbg !1480

; <label>:81:                                     ; preds = %70
  %82 = icmp eq i32 %75, 64, !dbg !1481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1483
  br i1 %82, label %83, label %92, !dbg !1483

; <label>:83:                                     ; preds = %81
  %84 = shl nuw nsw i32 %74, 8, !dbg !1484
  %85 = and i32 %84, 16128, !dbg !1484
  %86 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !1484
  %87 = load i8, i8* %86, align 1, !dbg !1484, !tbaa !143
  %88 = zext i8 %87 to i32, !dbg !1484
  %89 = or i32 %85, %88, !dbg !1484
  %90 = add i32 %71, 1, !dbg !1484
  %91 = add i32 %90, %89, !dbg !1486
  br label %114, !dbg !1487

; <label>:92:                                     ; preds = %81
  %93 = and i32 %74, 3, !dbg !1488
  %94 = add nuw nsw i32 %93, 1, !dbg !1488
  %95 = zext i32 %94 to i64, !dbg !1488
  %96 = lshr i32 %74, 2, !dbg !1491
  %97 = and i32 %96, 31, !dbg !1491
  %98 = add nuw nsw i32 %97, 1, !dbg !1491
  %99 = zext i32 %98 to i64, !dbg !1491
  %100 = sext i32 %71 to i64, !dbg !1493
  %101 = add nsw i64 %95, %100, !dbg !1495
  %102 = icmp sgt i64 %101, 16384, !dbg !1496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1497
  br i1 %102, label %120, label %103, !dbg !1497

; <label>:103:                                    ; preds = %92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1498
  %104 = trunc i32 %98 to i8
  %105 = getelementptr inbounds i8, i8* %0, i64 %100, !dbg !1499
  %106 = load i8, i8* %105, align 1, !dbg !1499, !tbaa !143
  %107 = zext i8 %106 to i64, !dbg !1499
  %108 = icmp ugt i64 %99, %107, !dbg !1502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1503
  br i1 %108, label %109, label %110, !dbg !1503

; <label>:109:                                    ; preds = %103
  store i8 %104, i8* %105, align 1, !dbg !1504, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1505
  br label %110, !dbg !1505

; <label>:110:                                    ; preds = %109, %103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1498
  %111 = icmp eq i32 %93, 0, !dbg !1498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1498
  br i1 %111, label %112, label %129, !dbg !1498, !llvm.loop !1506

; <label>:112:                                    ; preds = %154, %145, %136, %110
  %113 = add i32 %71, %94, !dbg !1498
  br label %114

; <label>:114:                                    ; preds = %83, %112, %77
  %115 = phi i64 [ 2, %83 ], [ 1, %112 ], [ 1, %77 ]
  %116 = phi i32 [ %91, %83 ], [ %113, %112 ], [ %80, %77 ], !dbg !1469
  %117 = getelementptr inbounds i8, i8* %72, i64 %115, !dbg !1508
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1467
  %118 = icmp ult i8* %117, %66, !dbg !1471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1467
  br i1 %118, label %70, label %120, !dbg !1467, !llvm.loop !1509

; <label>:119:                                    ; preds = %64, %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1511
  br label %123

; <label>:120:                                    ; preds = %114, %92
  %121 = phi i32 [ %116, %114 ], [ %71, %92 ], !dbg !1508
  %122 = icmp eq i32 %121, 16384, !dbg !1512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1514
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %122, label %125, label %127

; <label>:123:                                    ; preds = %35, %119
  %124 = phi i32 [ -1, %119 ], [ 0, %35 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1514
  br label %125

; <label>:125:                                    ; preds = %123, %120
  %126 = phi i32 [ 0, %120 ], [ %124, %123 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %127, !dbg !1515

; <label>:127:                                    ; preds = %125, %120
  %128 = phi i32 [ -1, %120 ], [ %126, %125 ], !dbg !1514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1515
  ret i32 %128, !dbg !1515

; <label>:129:                                    ; preds = %110
  %130 = add nsw i64 %100, 1, !dbg !1516
  %131 = getelementptr inbounds i8, i8* %0, i64 %130, !dbg !1499
  %132 = load i8, i8* %131, align 1, !dbg !1499, !tbaa !143
  %133 = zext i8 %132 to i64, !dbg !1499
  %134 = icmp ugt i64 %99, %133, !dbg !1502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1503
  br i1 %134, label %135, label %136, !dbg !1503

; <label>:135:                                    ; preds = %129
  store i8 %104, i8* %131, align 1, !dbg !1504, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1505
  br label %136, !dbg !1505

; <label>:136:                                    ; preds = %135, %129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1498
  %137 = icmp eq i32 %94, 2, !dbg !1498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1498
  br i1 %137, label %112, label %138, !dbg !1498, !llvm.loop !1506

; <label>:138:                                    ; preds = %136
  %139 = add nsw i64 %100, 2, !dbg !1516
  %140 = getelementptr inbounds i8, i8* %0, i64 %139, !dbg !1499
  %141 = load i8, i8* %140, align 1, !dbg !1499, !tbaa !143
  %142 = zext i8 %141 to i64, !dbg !1499
  %143 = icmp ugt i64 %99, %142, !dbg !1502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1503
  br i1 %143, label %144, label %145, !dbg !1503

; <label>:144:                                    ; preds = %138
  store i8 %104, i8* %140, align 1, !dbg !1504, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1505
  br label %145, !dbg !1505

; <label>:145:                                    ; preds = %144, %138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1498
  %146 = icmp eq i32 %94, 3, !dbg !1498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1498
  br i1 %146, label %112, label %147, !dbg !1498, !llvm.loop !1506

; <label>:147:                                    ; preds = %145
  %148 = add nsw i64 %100, 3, !dbg !1516
  %149 = getelementptr inbounds i8, i8* %0, i64 %148, !dbg !1499
  %150 = load i8, i8* %149, align 1, !dbg !1499, !tbaa !143
  %151 = zext i8 %150 to i64, !dbg !1499
  %152 = icmp ugt i64 %99, %151, !dbg !1502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1503
  br i1 %152, label %153, label %154, !dbg !1503

; <label>:153:                                    ; preds = %147
  store i8 %104, i8* %149, align 1, !dbg !1504, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1505
  br label %154, !dbg !1505

; <label>:154:                                    ; preds = %153, %147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1498
  br label %112
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createHLLObject() local_unnamed_addr #0 !dbg !1517 {
  %1 = tail call i8* @sdsnewlen(i8* null, i64 18) #8, !dbg !1533
  %2 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1539
  store i8 127, i8* %2, align 1, !dbg !1540, !tbaa !143
  %3 = getelementptr inbounds i8, i8* %1, i64 17, !dbg !1540
  store i8 -1, i8* %3, align 1, !dbg !1540, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1541
  %4 = tail call %struct.redisObject* @createObject(i32 0, i8* %1) #8, !dbg !1542
  %5 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %4, i64 0, i32 2, !dbg !1544
  %6 = bitcast i8** %5 to %struct.hllhdr**, !dbg !1544
  %7 = load %struct.hllhdr*, %struct.hllhdr** %6, align 8, !dbg !1544, !tbaa !489
  %8 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %7, i64 0, i32 0, i64 0, !dbg !1546
  %9 = tail call i8* @memcpy(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4) #8, !dbg !1547
  %10 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %7, i64 0, i32 1, !dbg !1548
  store i8 1, i8* %10, align 1, !dbg !1549, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1550
  ret %struct.redisObject* %4, !dbg !1550
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createObject(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @isHLLObjectOrReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #0 !dbg !1551 {
  %3 = tail call i32 @checkType(%struct.client* %0, %struct.redisObject* %1, i32 0) #8, !dbg !1780
  %4 = icmp eq i32 %3, 0, !dbg !1780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1782
  br i1 %4, label %5, label %46, !dbg !1782

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !1783
  %7 = load i32, i32* %6, align 8, !dbg !1783
  %8 = lshr i32 %7, 4, !dbg !1783
  %9 = and i32 %8, 15, !dbg !1783
  %10 = icmp eq i32 %9, 0, !dbg !1783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1783
  br i1 %10, label %13, label %11, !dbg !1783

; <label>:11:                                     ; preds = %5
  %12 = icmp eq i32 %9, 8, !dbg !1783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1785
  br i1 %12, label %13, label %44, !dbg !1785

; <label>:13:                                     ; preds = %11, %5
  %14 = tail call i64 @stringObjectLen(%struct.redisObject* nonnull %1) #8, !dbg !1786
  %15 = icmp ult i64 %14, 16, !dbg !1788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1789
  br i1 %15, label %44, label %16, !dbg !1789

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !1790
  %18 = bitcast i8** %17 to %struct.hllhdr**, !dbg !1790
  %19 = load %struct.hllhdr*, %struct.hllhdr** %18, align 8, !dbg !1790, !tbaa !489
  %20 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %19, i64 0, i32 0, i64 0, !dbg !1792
  %21 = load i8, i8* %20, align 1, !dbg !1792, !tbaa !143
  %22 = icmp eq i8 %21, 72, !dbg !1794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1795
  br i1 %22, label %23, label %44, !dbg !1795

; <label>:23:                                     ; preds = %16
  %24 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %19, i64 0, i32 0, i64 1, !dbg !1796
  %25 = load i8, i8* %24, align 1, !dbg !1796, !tbaa !143
  %26 = icmp eq i8 %25, 89, !dbg !1797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1798
  br i1 %26, label %27, label %44, !dbg !1798

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %19, i64 0, i32 0, i64 2, !dbg !1799
  %29 = load i8, i8* %28, align 1, !dbg !1799, !tbaa !143
  %30 = icmp eq i8 %29, 76, !dbg !1800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1801
  br i1 %30, label %31, label %44, !dbg !1801

; <label>:31:                                     ; preds = %27
  %32 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %19, i64 0, i32 0, i64 3, !dbg !1802
  %33 = load i8, i8* %32, align 1, !dbg !1802, !tbaa !143
  %34 = icmp eq i8 %33, 76, !dbg !1803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1804
  br i1 %34, label %35, label %44, !dbg !1804

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %19, i64 0, i32 1, !dbg !1805
  %37 = load i8, i8* %36, align 1, !dbg !1805, !tbaa !143
  %38 = icmp ugt i8 %37, 1, !dbg !1807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1808
  br i1 %38, label %44, label %39, !dbg !1808

; <label>:39:                                     ; preds = %35
  %40 = icmp eq i8 %37, 0, !dbg !1809
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1811
  br i1 %40, label %41, label %46, !dbg !1811

; <label>:41:                                     ; preds = %39
  %42 = tail call i64 @stringObjectLen(%struct.redisObject* nonnull %1) #8, !dbg !1812
  %43 = icmp eq i64 %42, 12304, !dbg !1813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1814
  br i1 %43, label %46, label %44, !dbg !1814

; <label>:44:                                     ; preds = %41, %31, %27, %23, %16, %35, %13, %11
  %45 = tail call i8* @sdsnew(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !1815
  tail call void @addReplySds(%struct.client* %0, i8* %45) #8, !dbg !1816
  br label %46, !dbg !1817

; <label>:46:                                     ; preds = %39, %41, %2, %44
  %47 = phi i32 [ -1, %44 ], [ -1, %2 ], [ 0, %41 ], [ 0, %39 ], !dbg !1818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1820
  ret i32 %47, !dbg !1820
}

; Function Attrs: noredzone
declare dso_local i32 @checkType(%struct.client*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @stringObjectLen(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplySds(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsnew(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @pfaddCommand(%struct.client*) local_unnamed_addr #0 !dbg !1821 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1833
  %3 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1833, !tbaa !1834
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1838
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1838, !tbaa !1839
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !1840
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1840, !tbaa !1841
  %8 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %3, %struct.redisObject* %7) #8, !dbg !1842
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !1845
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1847
  br i1 %9, label %10, label %25, !dbg !1847

; <label>:10:                                     ; preds = %1
  %11 = tail call i8* @sdsnewlen(i8* null, i64 18) #8, !dbg !1852
  %12 = getelementptr inbounds i8, i8* %11, i64 16, !dbg !1854
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1858
  store i8 127, i8* %12, align 1, !dbg !1859, !tbaa !143
  %13 = getelementptr inbounds i8, i8* %11, i64 17, !dbg !1859
  store i8 -1, i8* %13, align 1, !dbg !1859, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1860
  %14 = tail call %struct.redisObject* @createObject(i32 0, i8* %11) #8, !dbg !1861
  %15 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %14, i64 0, i32 2, !dbg !1863
  %16 = bitcast i8** %15 to %struct.hllhdr**, !dbg !1863
  %17 = load %struct.hllhdr*, %struct.hllhdr** %16, align 8, !dbg !1863, !tbaa !489
  %18 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %17, i64 0, i32 0, i64 0, !dbg !1865
  %19 = tail call i8* @memcpy(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4) #8, !dbg !1866
  %20 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %17, i64 0, i32 1, !dbg !1867
  store i8 1, i8* %20, align 1, !dbg !1868, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1869
  %21 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1870, !tbaa !1834
  %22 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1871, !tbaa !1839
  %23 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %22, i64 1, !dbg !1872
  %24 = load %struct.redisObject*, %struct.redisObject** %23, align 8, !dbg !1872, !tbaa !1841
  tail call void @dbAdd(%struct.redisDb* %21, %struct.redisObject* %24, %struct.redisObject* %14) #8, !dbg !1873
  br label %34, !dbg !1874

; <label>:25:                                     ; preds = %1
  %26 = tail call i32 @isHLLObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* nonnull %8) #6, !dbg !1875
  %27 = icmp eq i32 %26, 0, !dbg !1878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1879
  br i1 %27, label %28, label %111, !dbg !1879

; <label>:28:                                     ; preds = %25
  %29 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1880, !tbaa !1834
  %30 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1881, !tbaa !1839
  %31 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %30, i64 1, !dbg !1882
  %32 = load %struct.redisObject*, %struct.redisObject** %31, align 8, !dbg !1882, !tbaa !1841
  %33 = tail call %struct.redisObject* @dbUnshareStringValue(%struct.redisDb* %29, %struct.redisObject* %32, %struct.redisObject* nonnull %8) #8, !dbg !1883
  br label %34

; <label>:34:                                     ; preds = %28, %10
  %35 = phi i32 [ 1, %10 ], [ 0, %28 ], !dbg !1884
  %36 = phi %struct.redisObject* [ %14, %10 ], [ %33, %28 ], !dbg !1885
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1887
  %37 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1888
  %38 = load i32, i32* %37, align 8, !dbg !1888, !tbaa !1889
  %39 = icmp sgt i32 %38, 2, !dbg !1890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1891
  br i1 %39, label %40, label %85, !dbg !1891

; <label>:40:                                     ; preds = %34, %79
  %41 = phi i64 [ %81, %79 ], [ 2, %34 ]
  %42 = phi i32 [ %80, %79 ], [ %35, %34 ]
  %43 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1892, !tbaa !1839
  %44 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %43, i64 %41, !dbg !1893
  %45 = load %struct.redisObject*, %struct.redisObject** %44, align 8, !dbg !1893, !tbaa !1841
  %46 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %45, i64 0, i32 2, !dbg !1894
  %47 = load i8*, i8** %46, align 8, !dbg !1894, !tbaa !489
  %48 = getelementptr inbounds i8, i8* %47, i64 -1, !dbg !1897
  %49 = load i8, i8* %48, align 1, !dbg !1897, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1899
  %50 = trunc i8 %49 to i3, !dbg !1899
  switch i3 %50, label %72 [
    i3 0, label %51
    i3 1, label %54
    i3 2, label %58
    i3 3, label %63
    i3 -4, label %68
  ], !dbg !1899

; <label>:51:                                     ; preds = %40
  %52 = lshr i8 %49, 3, !dbg !1900
  %53 = zext i8 %52 to i64, !dbg !1900
  br label %72, !dbg !1901

; <label>:54:                                     ; preds = %40
  %55 = getelementptr inbounds i8, i8* %47, i64 -3, !dbg !1902
  %56 = load i8, i8* %55, align 1, !dbg !1903, !tbaa !143
  %57 = zext i8 %56 to i64, !dbg !1902
  br label %72, !dbg !1904

; <label>:58:                                     ; preds = %40
  %59 = getelementptr inbounds i8, i8* %47, i64 -5, !dbg !1905
  %60 = bitcast i8* %59 to i16*, !dbg !1906
  %61 = load i16, i16* %60, align 1, !dbg !1906, !tbaa !518
  %62 = zext i16 %61 to i64, !dbg !1905
  br label %72, !dbg !1907

; <label>:63:                                     ; preds = %40
  %64 = getelementptr inbounds i8, i8* %47, i64 -9, !dbg !1908
  %65 = bitcast i8* %64 to i32*, !dbg !1909
  %66 = load i32, i32* %65, align 1, !dbg !1909, !tbaa !413
  %67 = zext i32 %66 to i64, !dbg !1908
  br label %72, !dbg !1910

; <label>:68:                                     ; preds = %40
  %69 = getelementptr inbounds i8, i8* %47, i64 -17, !dbg !1911
  %70 = bitcast i8* %69 to i64*, !dbg !1912
  %71 = load i64, i64* %70, align 1, !dbg !1912, !tbaa !125
  br label %72, !dbg !1913

; <label>:72:                                     ; preds = %40, %51, %54, %58, %63, %68
  %73 = phi i64 [ %71, %68 ], [ %67, %63 ], [ %62, %58 ], [ %57, %54 ], [ %53, %51 ], [ 0, %40 ], !dbg !1914
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1915
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1916
  %74 = tail call i32 @hllAdd(%struct.redisObject* %36, i8* %47, i64 %73) #6, !dbg !1917
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1919
  switch i32 %74, label %79 [
    i32 1, label %75
    i32 -1, label %77
  ], !dbg !1919

; <label>:75:                                     ; preds = %72
  %76 = add nsw i32 %42, 1, !dbg !1920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1922
  br label %79, !dbg !1922

; <label>:77:                                     ; preds = %72
  %78 = tail call i8* @sdsnew(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !1923
  tail call void @addReplySds(%struct.client* nonnull %0, i8* %78) #8, !dbg !1924
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1925
  br label %111

; <label>:79:                                     ; preds = %75, %72
  %80 = phi i32 [ %42, %72 ], [ %76, %75 ], !dbg !1926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1927
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %81 = add nuw nsw i64 %41, 1, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  %82 = load i32, i32* %37, align 8, !dbg !1888, !tbaa !1889
  %83 = sext i32 %82 to i64, !dbg !1890
  %84 = icmp slt i64 %81, %83, !dbg !1890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1891
  br i1 %84, label %40, label %85, !dbg !1891, !llvm.loop !1930

; <label>:85:                                     ; preds = %79, %34
  %86 = phi i32 [ %35, %34 ], [ %80, %79 ], !dbg !1932
  %87 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %36, i64 0, i32 2, !dbg !1933
  %88 = bitcast i8** %87 to %struct.hllhdr**, !dbg !1933
  %89 = load %struct.hllhdr*, %struct.hllhdr** %88, align 8, !dbg !1933, !tbaa !489
  %90 = icmp ne i32 %86, 0, !dbg !1935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1937
  br i1 %90, label %91, label %107, !dbg !1937

; <label>:91:                                     ; preds = %85
  %92 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1938, !tbaa !1834
  %93 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1940, !tbaa !1839
  %94 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %93, i64 1, !dbg !1941
  %95 = load %struct.redisObject*, %struct.redisObject** %94, align 8, !dbg !1941, !tbaa !1841
  tail call void @signalModifiedKey(%struct.redisDb* %92, %struct.redisObject* %95) #8, !dbg !1942
  %96 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1943, !tbaa !1839
  %97 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %96, i64 1, !dbg !1944
  %98 = load %struct.redisObject*, %struct.redisObject** %97, align 8, !dbg !1944, !tbaa !1841
  %99 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1945, !tbaa !1834
  %100 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %99, i64 0, i32 5, !dbg !1946
  %101 = load i32, i32* %100, align 8, !dbg !1946, !tbaa !1947
  tail call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), %struct.redisObject* %98, i32 %101) #8, !dbg !1949
  %102 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1950, !tbaa !1951
  %103 = add nsw i64 %102, 1, !dbg !1950
  store i64 %103, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1950, !tbaa !1951
  %104 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %89, i64 0, i32 3, i64 7, !dbg !1952
  %105 = load i8, i8* %104, align 1, !dbg !1952, !tbaa !143
  %106 = or i8 %105, -128, !dbg !1952
  store i8 %106, i8* %104, align 1, !dbg !1952, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1953
  br label %107, !dbg !1953

; <label>:107:                                    ; preds = %91, %85
  %108 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !1954
  %109 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1955
  %110 = select i1 %90, %struct.redisObject* %108, %struct.redisObject* %109, !dbg !1956
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %110) #8, !dbg !1957
  br label %111, !dbg !1958

; <label>:111:                                    ; preds = %25, %77, %107
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1958
  ret void, !dbg !1958
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyWrite(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @dbAdd(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @dbUnshareStringValue(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @signalModifiedKey(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @notifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @pfcountCommand(%struct.client*) local_unnamed_addr #0 !dbg !1959 {
  %2 = alloca [16400 x i8], align 16
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1983
  %5 = load i32, i32* %4, align 8, !dbg !1983, !tbaa !1889
  %6 = icmp sgt i32 %5, 2, !dbg !1984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1985
  br i1 %6, label %7, label %43, !dbg !1985

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds [16400 x i8], [16400 x i8]* %2, i64 0, i64 0, !dbg !1986
  call void @llvm.lifetime.start.p0i8(i64 16400, i8* nonnull %8) #7, !dbg !1986
  %9 = call i8* @memset(i8* nonnull %8, i32 0, i64 16400) #8, !dbg !1988
  %10 = bitcast [16400 x i8]* %2 to %struct.hllhdr*, !dbg !1989
  %11 = getelementptr inbounds [16400 x i8], [16400 x i8]* %2, i64 0, i64 4, !dbg !1991
  store i8 -1, i8* %11, align 4, !dbg !1992, !tbaa !143
  %12 = getelementptr inbounds [16400 x i8], [16400 x i8]* %2, i64 0, i64 16, !dbg !1993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1996
  %13 = load i32, i32* %4, align 8, !dbg !1997, !tbaa !1889
  %14 = icmp sgt i32 %13, 1, !dbg !1998
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1999
  br i1 %14, label %15, label %40, !dbg !1999

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %17 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %18, !dbg !1999

; <label>:18:                                     ; preds = %15, %35
  %19 = phi i64 [ 1, %15 ], [ %36, %35 ]
  %20 = load %struct.redisDb*, %struct.redisDb** %16, align 8, !dbg !2000, !tbaa !1834
  %21 = load %struct.redisObject**, %struct.redisObject*** %17, align 8, !dbg !2001, !tbaa !1839
  %22 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %21, i64 %19, !dbg !2002
  %23 = load %struct.redisObject*, %struct.redisObject** %22, align 8, !dbg !2002, !tbaa !1841
  %24 = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %20, %struct.redisObject* %23) #8, !dbg !2003
  %25 = icmp eq %struct.redisObject* %24, null, !dbg !2005
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2007
  br i1 %25, label %35, label %26, !dbg !2007

; <label>:26:                                     ; preds = %18
  %27 = call i32 @isHLLObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* nonnull %24) #6, !dbg !2008
  %28 = icmp eq i32 %27, 0, !dbg !2010
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2011
  br i1 %28, label %29, label %34, !dbg !2011

; <label>:29:                                     ; preds = %26
  %30 = call i32 @hllMerge(i8* nonnull %12, %struct.redisObject* nonnull %24) #6, !dbg !2012
  %31 = icmp eq i32 %30, -1, !dbg !2014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2015
  br i1 %31, label %32, label %35, !dbg !2015

; <label>:32:                                     ; preds = %29
  %33 = call i8* @sdsnew(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !2016
  call void @addReplySds(%struct.client* nonnull %0, i8* %33) #8, !dbg !2018
  br label %34, !dbg !2019

; <label>:34:                                     ; preds = %26, %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2020
  br label %42

; <label>:35:                                     ; preds = %29, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2021
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %36 = add nuw nsw i64 %19, 1, !dbg !2022
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2023
  %37 = load i32, i32* %4, align 8, !dbg !1997, !tbaa !1889
  %38 = sext i32 %37 to i64, !dbg !1998
  %39 = icmp slt i64 %36, %38, !dbg !1998
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1999
  br i1 %39, label %18, label %40, !dbg !1999, !llvm.loop !2024

; <label>:40:                                     ; preds = %35, %7
  %41 = call i64 @hllCount(%struct.hllhdr* nonnull %10, i32* null) #6, !dbg !2026
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %41) #8, !dbg !2027
  br label %42, !dbg !2028

; <label>:42:                                     ; preds = %34, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 16400, i8* nonnull %8) #7, !dbg !2029
  br label %146

; <label>:43:                                     ; preds = %1
  %44 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2030
  %45 = load %struct.redisDb*, %struct.redisDb** %44, align 8, !dbg !2030, !tbaa !1834
  %46 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2031
  %47 = load %struct.redisObject**, %struct.redisObject*** %46, align 8, !dbg !2031, !tbaa !1839
  %48 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %47, i64 1, !dbg !2032
  %49 = load %struct.redisObject*, %struct.redisObject** %48, align 8, !dbg !2032, !tbaa !1841
  %50 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %45, %struct.redisObject* %49) #8, !dbg !2033
  %51 = icmp eq %struct.redisObject* %50, null, !dbg !2035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2036
  br i1 %51, label %52, label %54, !dbg !2036

; <label>:52:                                     ; preds = %43
  %53 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !2037, !tbaa !2039
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %53) #8, !dbg !2041
  br label %145, !dbg !2042

; <label>:54:                                     ; preds = %43
  %55 = tail call i32 @isHLLObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* nonnull %50) #6, !dbg !2043
  %56 = icmp eq i32 %55, 0, !dbg !2045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2046
  br i1 %56, label %57, label %146, !dbg !2046

; <label>:57:                                     ; preds = %54
  %58 = load %struct.redisDb*, %struct.redisDb** %44, align 8, !dbg !2047, !tbaa !1834
  %59 = load %struct.redisObject**, %struct.redisObject*** %46, align 8, !dbg !2048, !tbaa !1839
  %60 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %59, i64 1, !dbg !2049
  %61 = load %struct.redisObject*, %struct.redisObject** %60, align 8, !dbg !2049, !tbaa !1841
  %62 = tail call %struct.redisObject* @dbUnshareStringValue(%struct.redisDb* %58, %struct.redisObject* %61, %struct.redisObject* nonnull %50) #8, !dbg !2050
  %63 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %62, i64 0, i32 2, !dbg !2051
  %64 = bitcast i8** %63 to %struct.hllhdr**, !dbg !2051
  %65 = load %struct.hllhdr*, %struct.hllhdr** %64, align 8, !dbg !2051, !tbaa !489
  %66 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %65, i64 0, i32 3, !dbg !2052
  %67 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %65, i64 0, i32 3, i64 7, !dbg !2052
  %68 = load i8, i8* %67, align 1, !dbg !2052, !tbaa !143
  %69 = icmp sgt i8 %68, -1, !dbg !2052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2053
  br i1 %69, label %70, label %107, !dbg !2053

; <label>:70:                                     ; preds = %57
  %71 = getelementptr inbounds [8 x i8], [8 x i8]* %66, i64 0, i64 0, !dbg !2054
  %72 = load i8, i8* %71, align 1, !dbg !2054, !tbaa !143
  %73 = zext i8 %72 to i64, !dbg !2056
  %74 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %65, i64 0, i32 3, i64 1, !dbg !2058
  %75 = load i8, i8* %74, align 1, !dbg !2058, !tbaa !143
  %76 = zext i8 %75 to i64, !dbg !2059
  %77 = shl nuw nsw i64 %76, 8, !dbg !2060
  %78 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %65, i64 0, i32 3, i64 2, !dbg !2061
  %79 = load i8, i8* %78, align 1, !dbg !2061, !tbaa !143
  %80 = zext i8 %79 to i64, !dbg !2062
  %81 = shl nuw nsw i64 %80, 16, !dbg !2063
  %82 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %65, i64 0, i32 3, i64 3, !dbg !2064
  %83 = load i8, i8* %82, align 1, !dbg !2064, !tbaa !143
  %84 = zext i8 %83 to i64, !dbg !2065
  %85 = shl nuw nsw i64 %84, 24, !dbg !2066
  %86 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %65, i64 0, i32 3, i64 4, !dbg !2067
  %87 = load i8, i8* %86, align 1, !dbg !2067, !tbaa !143
  %88 = zext i8 %87 to i64, !dbg !2068
  %89 = shl nuw nsw i64 %88, 32, !dbg !2069
  %90 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %65, i64 0, i32 3, i64 5, !dbg !2070
  %91 = load i8, i8* %90, align 1, !dbg !2070, !tbaa !143
  %92 = zext i8 %91 to i64, !dbg !2071
  %93 = shl nuw nsw i64 %92, 40, !dbg !2072
  %94 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %65, i64 0, i32 3, i64 6, !dbg !2073
  %95 = load i8, i8* %94, align 1, !dbg !2073, !tbaa !143
  %96 = zext i8 %95 to i64, !dbg !2074
  %97 = shl nuw nsw i64 %96, 48, !dbg !2075
  %98 = zext i8 %68 to i64, !dbg !2076
  %99 = shl nuw i64 %98, 56, !dbg !2077
  %100 = or i64 %99, %73, !dbg !2078
  %101 = or i64 %100, %77, !dbg !2079
  %102 = or i64 %101, %81, !dbg !2080
  %103 = or i64 %102, %85, !dbg !2081
  %104 = or i64 %103, %89, !dbg !2082
  %105 = or i64 %104, %93, !dbg !2083
  %106 = or i64 %105, %97, !dbg !2084
  br label %143, !dbg !2085

; <label>:107:                                    ; preds = %57
  %108 = bitcast i32* %3 to i8*, !dbg !2086
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %108) #7, !dbg !2086
  store i32 0, i32* %3, align 4, !dbg !2087, !tbaa !413
  %109 = call i64 @hllCount(%struct.hllhdr* %65, i32* nonnull %3) #6, !dbg !2088
  %110 = load i32, i32* %3, align 4, !dbg !2089, !tbaa !413
  %111 = icmp eq i32 %110, 0, !dbg !2089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2091
  br i1 %111, label %114, label %112, !dbg !2091

; <label>:112:                                    ; preds = %107
  %113 = call i8* @sdsnew(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !2092
  call void @addReplySds(%struct.client* nonnull %0, i8* %113) #8, !dbg !2094
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2095
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %108) #7, !dbg !2096
  br label %146

; <label>:114:                                    ; preds = %107
  %115 = trunc i64 %109 to i8, !dbg !2097
  %116 = getelementptr inbounds [8 x i8], [8 x i8]* %66, i64 0, i64 0, !dbg !2098
  store i8 %115, i8* %116, align 1, !dbg !2099, !tbaa !143
  %117 = lshr i64 %109, 8, !dbg !2100
  %118 = trunc i64 %117 to i8, !dbg !2101
  %119 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %65, i64 0, i32 3, i64 1, !dbg !2102
  store i8 %118, i8* %119, align 1, !dbg !2103, !tbaa !143
  %120 = lshr i64 %109, 16, !dbg !2104
  %121 = trunc i64 %120 to i8, !dbg !2105
  %122 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %65, i64 0, i32 3, i64 2, !dbg !2106
  store i8 %121, i8* %122, align 1, !dbg !2107, !tbaa !143
  %123 = lshr i64 %109, 24, !dbg !2108
  %124 = trunc i64 %123 to i8, !dbg !2109
  %125 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %65, i64 0, i32 3, i64 3, !dbg !2110
  store i8 %124, i8* %125, align 1, !dbg !2111, !tbaa !143
  %126 = lshr i64 %109, 32, !dbg !2112
  %127 = trunc i64 %126 to i8, !dbg !2113
  %128 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %65, i64 0, i32 3, i64 4, !dbg !2114
  store i8 %127, i8* %128, align 1, !dbg !2115, !tbaa !143
  %129 = lshr i64 %109, 40, !dbg !2116
  %130 = trunc i64 %129 to i8, !dbg !2117
  %131 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %65, i64 0, i32 3, i64 5, !dbg !2118
  store i8 %130, i8* %131, align 1, !dbg !2119, !tbaa !143
  %132 = lshr i64 %109, 48, !dbg !2120
  %133 = trunc i64 %132 to i8, !dbg !2121
  %134 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %65, i64 0, i32 3, i64 6, !dbg !2122
  store i8 %133, i8* %134, align 1, !dbg !2123, !tbaa !143
  %135 = lshr i64 %109, 56, !dbg !2124
  %136 = trunc i64 %135 to i8, !dbg !2125
  store i8 %136, i8* %67, align 1, !dbg !2126, !tbaa !143
  %137 = load %struct.redisDb*, %struct.redisDb** %44, align 8, !dbg !2127, !tbaa !1834
  %138 = load %struct.redisObject**, %struct.redisObject*** %46, align 8, !dbg !2128, !tbaa !1839
  %139 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %138, i64 1, !dbg !2129
  %140 = load %struct.redisObject*, %struct.redisObject** %139, align 8, !dbg !2129, !tbaa !1841
  call void @signalModifiedKey(%struct.redisDb* %137, %struct.redisObject* %140) #8, !dbg !2130
  %141 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2131, !tbaa !1951
  %142 = add nsw i64 %141, 1, !dbg !2131
  store i64 %142, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2131, !tbaa !1951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2096
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %108) #7, !dbg !2096
  br label %143

; <label>:143:                                    ; preds = %114, %70
  %144 = phi i64 [ %106, %70 ], [ %109, %114 ], !dbg !2132
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %144) #8, !dbg !2133
  br label %145

; <label>:145:                                    ; preds = %143, %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %146, !dbg !2134

; <label>:146:                                    ; preds = %54, %112, %145, %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2134
  ret void, !dbg !2134
}

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyRead(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @pfmergeCommand(%struct.client*) local_unnamed_addr #0 !dbg !2135 {
  %2 = alloca [16384 x i8], align 16
  %3 = getelementptr inbounds [16384 x i8], [16384 x i8]* %2, i64 0, i64 0, !dbg !2149
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* nonnull %3) #7, !dbg !2149
  %4 = call i8* @memset(i8* nonnull %3, i32 0, i64 16384) #8, !dbg !2152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2154
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2155
  %6 = load i32, i32* %5, align 8, !dbg !2155, !tbaa !1889
  %7 = icmp sgt i32 %6, 1, !dbg !2156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2157
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2158
  %9 = load %struct.redisDb*, %struct.redisDb** %8, align 8, !dbg !2158, !tbaa !1834
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2158
  %11 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !2158, !tbaa !1839
  br i1 %7, label %12, label %46, !dbg !2157

; <label>:12:                                     ; preds = %1, %38
  %13 = phi i64 [ %40, %38 ], [ 1, %1 ]
  %14 = phi %struct.redisObject** [ %45, %38 ], [ %11, %1 ]
  %15 = phi %struct.redisDb* [ %44, %38 ], [ %9, %1 ]
  %16 = phi i32 [ %39, %38 ], [ 0, %1 ]
  %17 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 %13, !dbg !2159
  %18 = load %struct.redisObject*, %struct.redisObject** %17, align 8, !dbg !2159, !tbaa !1841
  %19 = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %15, %struct.redisObject* %18) #8, !dbg !2160
  %20 = icmp eq %struct.redisObject* %19, null, !dbg !2162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2164
  br i1 %20, label %38, label %21, !dbg !2164

; <label>:21:                                     ; preds = %12
  %22 = call i32 @isHLLObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* nonnull %19) #6, !dbg !2165
  %23 = icmp eq i32 %22, 0, !dbg !2167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2168
  br i1 %23, label %24, label %156, !dbg !2168

; <label>:24:                                     ; preds = %21
  %25 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %19, i64 0, i32 2, !dbg !2169
  %26 = bitcast i8** %25 to %struct.hllhdr**, !dbg !2169
  %27 = load %struct.hllhdr*, %struct.hllhdr** %26, align 8, !dbg !2169, !tbaa !489
  %28 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %27, i64 0, i32 1, !dbg !2171
  %29 = load i8, i8* %28, align 1, !dbg !2171, !tbaa !143
  %30 = icmp eq i8 %29, 0, !dbg !2173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2174
  br i1 %30, label %31, label %32, !dbg !2174

; <label>:31:                                     ; preds = %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2175
  br label %32, !dbg !2175

; <label>:32:                                     ; preds = %31, %24
  %33 = phi i32 [ 1, %31 ], [ %16, %24 ], !dbg !2158
  %34 = call i32 @hllMerge(i8* nonnull %3, %struct.redisObject* nonnull %19) #6, !dbg !2176
  %35 = icmp eq i32 %34, -1, !dbg !2178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2179
  br i1 %35, label %36, label %38, !dbg !2179

; <label>:36:                                     ; preds = %32
  %37 = call i8* @sdsnew(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !2180
  call void @addReplySds(%struct.client* nonnull %0, i8* %37) #8, !dbg !2182
  br label %156, !dbg !2183

; <label>:38:                                     ; preds = %32, %12
  %39 = phi i32 [ %16, %12 ], [ %33, %32 ], !dbg !2184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2185
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %40 = add nuw nsw i64 %13, 1, !dbg !2186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2187
  %41 = load i32, i32* %5, align 8, !dbg !2155, !tbaa !1889
  %42 = sext i32 %41 to i64, !dbg !2156
  %43 = icmp slt i64 %40, %42, !dbg !2156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2157
  %44 = load %struct.redisDb*, %struct.redisDb** %8, align 8, !dbg !2158, !tbaa !1834
  %45 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !2158, !tbaa !1839
  br i1 %43, label %12, label %46, !dbg !2157, !llvm.loop !2188

; <label>:46:                                     ; preds = %38, %1
  %47 = phi i32 [ 0, %1 ], [ %39, %38 ], !dbg !2151
  %48 = phi %struct.redisDb* [ %9, %1 ], [ %44, %38 ], !dbg !2158
  %49 = phi %struct.redisObject** [ %11, %1 ], [ %45, %38 ], !dbg !2158
  %50 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %49, i64 1, !dbg !2190
  %51 = load %struct.redisObject*, %struct.redisObject** %50, align 8, !dbg !2190, !tbaa !1841
  %52 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %48, %struct.redisObject* %51) #8, !dbg !2191
  %53 = icmp eq %struct.redisObject* %52, null, !dbg !2193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2195
  br i1 %53, label %54, label %69, !dbg !2195

; <label>:54:                                     ; preds = %46
  %55 = call i8* @sdsnewlen(i8* null, i64 18) #8, !dbg !2200
  %56 = getelementptr inbounds i8, i8* %55, i64 16, !dbg !2202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2206
  store i8 127, i8* %56, align 1, !dbg !2207, !tbaa !143
  %57 = getelementptr inbounds i8, i8* %55, i64 17, !dbg !2207
  store i8 -1, i8* %57, align 1, !dbg !2207, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2208
  %58 = call %struct.redisObject* @createObject(i32 0, i8* %55) #8, !dbg !2209
  %59 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %58, i64 0, i32 2, !dbg !2211
  %60 = bitcast i8** %59 to %struct.hllhdr**, !dbg !2211
  %61 = load %struct.hllhdr*, %struct.hllhdr** %60, align 8, !dbg !2211, !tbaa !489
  %62 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %61, i64 0, i32 0, i64 0, !dbg !2213
  %63 = call i8* @memcpy(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4) #8, !dbg !2214
  %64 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %61, i64 0, i32 1, !dbg !2215
  store i8 1, i8* %64, align 1, !dbg !2216, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2217
  %65 = load %struct.redisDb*, %struct.redisDb** %8, align 8, !dbg !2218, !tbaa !1834
  %66 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !2219, !tbaa !1839
  %67 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %66, i64 1, !dbg !2220
  %68 = load %struct.redisObject*, %struct.redisObject** %67, align 8, !dbg !2220, !tbaa !1841
  call void @dbAdd(%struct.redisDb* %65, %struct.redisObject* %68, %struct.redisObject* %58) #8, !dbg !2221
  br label %75, !dbg !2222

; <label>:69:                                     ; preds = %46
  %70 = load %struct.redisDb*, %struct.redisDb** %8, align 8, !dbg !2223, !tbaa !1834
  %71 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !2225, !tbaa !1839
  %72 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %71, i64 1, !dbg !2226
  %73 = load %struct.redisObject*, %struct.redisObject** %72, align 8, !dbg !2226, !tbaa !1841
  %74 = call %struct.redisObject* @dbUnshareStringValue(%struct.redisDb* %70, %struct.redisObject* %73, %struct.redisObject* nonnull %52) #8, !dbg !2227
  br label %75

; <label>:75:                                     ; preds = %69, %54
  %76 = phi %struct.redisObject* [ %58, %54 ], [ %74, %69 ], !dbg !2228
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %77 = icmp eq i32 %47, 0, !dbg !2229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2231
  br i1 %77, label %83, label %78, !dbg !2231

; <label>:78:                                     ; preds = %75
  %79 = call i32 @hllSparseToDense(%struct.redisObject* %76) #6, !dbg !2232
  %80 = icmp eq i32 %79, -1, !dbg !2233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2234
  br i1 %80, label %81, label %83, !dbg !2234

; <label>:81:                                     ; preds = %78
  %82 = call i8* @sdsnew(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !2235
  call void @addReplySds(%struct.client* nonnull %0, i8* %82) #8, !dbg !2237
  br label %156, !dbg !2238

; <label>:83:                                     ; preds = %75, %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2241
  %84 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %76, i64 0, i32 2
  %85 = bitcast i8** %84 to %struct.hllhdr**
  br label %86, !dbg !2241

; <label>:86:                                     ; preds = %135, %83
  %87 = phi i64 [ 0, %83 ], [ %136, %135 ]
  %88 = getelementptr inbounds [16384 x i8], [16384 x i8]* %2, i64 0, i64 %87, !dbg !2242
  %89 = load i8, i8* %88, align 1, !dbg !2242, !tbaa !143
  %90 = icmp eq i8 %89, 0, !dbg !2246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2247
  br i1 %90, label %135, label %91, !dbg !2247

; <label>:91:                                     ; preds = %86
  %92 = load %struct.hllhdr*, %struct.hllhdr** %85, align 8, !dbg !2248, !tbaa !489
  %93 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %92, i64 0, i32 1, !dbg !2249
  %94 = load i8, i8* %93, align 1, !dbg !2249, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2250
  switch i8 %94, label %135 [
    i8 0, label %95
    i8 1, label %133
  ], !dbg !2250

; <label>:95:                                     ; preds = %91
  %96 = mul nuw nsw i64 %87, 6, !dbg !2256
  %97 = lshr i64 %96, 3, !dbg !2256
  %98 = trunc i64 %96 to i32, !dbg !2256
  %99 = and i32 %98, 6, !dbg !2256
  %100 = zext i32 %99 to i64, !dbg !2256
  %101 = sub nsw i64 8, %100, !dbg !2256
  %102 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %92, i64 0, i32 4, i64 %97, !dbg !2256
  %103 = load i8, i8* %102, align 1, !dbg !2256, !tbaa !143
  %104 = zext i8 %103 to i64, !dbg !2256
  %105 = add nuw nsw i64 %97, 1, !dbg !2256
  %106 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %92, i64 0, i32 4, i64 %105, !dbg !2256
  %107 = load i8, i8* %106, align 1, !dbg !2256, !tbaa !143
  %108 = zext i8 %107 to i64, !dbg !2256
  %109 = lshr i64 %104, %100, !dbg !2256
  %110 = shl i64 %108, %101, !dbg !2256
  %111 = or i64 %110, %109, !dbg !2256
  %112 = trunc i64 %111 to i32, !dbg !2256
  %113 = and i32 %112, 63, !dbg !2256
  %114 = zext i8 %89 to i32, !dbg !2257
  %115 = icmp ult i32 %113, %114, !dbg !2258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2259
  br i1 %115, label %116, label %132, !dbg !2259

; <label>:116:                                    ; preds = %95
  %117 = zext i8 %89 to i64, !dbg !2260
  %118 = shl i32 63, %99, !dbg !2260
  %119 = trunc i32 %118 to i8, !dbg !2260
  %120 = xor i8 %119, -1, !dbg !2260
  %121 = and i8 %103, %120, !dbg !2260
  %122 = shl i64 %117, %100, !dbg !2260
  %123 = trunc i64 %122 to i8, !dbg !2260
  %124 = or i8 %121, %123, !dbg !2260
  store i8 %124, i8* %102, align 1, !dbg !2260, !tbaa !143
  %125 = trunc i64 %101 to i32, !dbg !2260
  %126 = ashr i32 -64, %125, !dbg !2260
  %127 = trunc i32 %126 to i8, !dbg !2260
  %128 = and i8 %107, %127, !dbg !2260
  %129 = lshr i64 %117, %101, !dbg !2260
  %130 = trunc i64 %129 to i8, !dbg !2260
  %131 = or i8 %128, %130, !dbg !2260
  store i8 %131, i8* %106, align 1, !dbg !2260, !tbaa !143
  br label %132, !dbg !2261

; <label>:132:                                    ; preds = %95, %116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2264
  br label %135, !dbg !2264

; <label>:133:                                    ; preds = %91
  %134 = call i32 @hllSparseSet(%struct.redisObject* nonnull %76, i64 %87, i8 zeroext %89) #6, !dbg !2265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2266
  br label %135, !dbg !2266

; <label>:135:                                    ; preds = %132, %133, %91, %86
  %136 = add nuw nsw i64 %87, 1, !dbg !2267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2241
  %137 = icmp eq i64 %136, 16384, !dbg !2269
  br i1 %137, label %138, label %86, !dbg !2241, !llvm.loop !2270

; <label>:138:                                    ; preds = %135
  %139 = load %struct.hllhdr*, %struct.hllhdr** %85, align 8, !dbg !2272, !tbaa !489
  %140 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %139, i64 0, i32 3, i64 7, !dbg !2273
  %141 = load i8, i8* %140, align 1, !dbg !2273, !tbaa !143
  %142 = or i8 %141, -128, !dbg !2273
  store i8 %142, i8* %140, align 1, !dbg !2273, !tbaa !143
  %143 = load %struct.redisDb*, %struct.redisDb** %8, align 8, !dbg !2274, !tbaa !1834
  %144 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !2275, !tbaa !1839
  %145 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %144, i64 1, !dbg !2276
  %146 = load %struct.redisObject*, %struct.redisObject** %145, align 8, !dbg !2276, !tbaa !1841
  call void @signalModifiedKey(%struct.redisDb* %143, %struct.redisObject* %146) #8, !dbg !2277
  %147 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !2278, !tbaa !1839
  %148 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %147, i64 1, !dbg !2279
  %149 = load %struct.redisObject*, %struct.redisObject** %148, align 8, !dbg !2279, !tbaa !1841
  %150 = load %struct.redisDb*, %struct.redisDb** %8, align 8, !dbg !2280, !tbaa !1834
  %151 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %150, i64 0, i32 5, !dbg !2281
  %152 = load i32, i32* %151, align 8, !dbg !2281, !tbaa !1947
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), %struct.redisObject* %149, i32 %152) #8, !dbg !2282
  %153 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2283, !tbaa !1951
  %154 = add nsw i64 %153, 1, !dbg !2283
  store i64 %154, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2283, !tbaa !1951
  %155 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2284, !tbaa !2285
  call void @addReply(%struct.client* %0, %struct.redisObject* %155) #8, !dbg !2286
  br label %156, !dbg !2287

; <label>:156:                                    ; preds = %21, %81, %138, %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2288
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* nonnull %3) #7, !dbg !2287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2287
  ret void, !dbg !2287
}

; Function Attrs: noredzone nounwind
define dso_local void @pfselftestCommand(%struct.client*) local_unnamed_addr #0 !dbg !2289 {
  %2 = alloca [16384 x i8], align 16
  %3 = alloca i64, align 8
  %4 = tail call i8* @sdsnewlen(i8* null, i64 12304) #8, !dbg !2335
  %5 = bitcast i8* %4 to %struct.hllhdr*, !dbg !2337
  %6 = getelementptr inbounds [16384 x i8], [16384 x i8]* %2, i64 0, i64 0, !dbg !2340
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* nonnull %6) #7, !dbg !2340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2344
  %7 = getelementptr inbounds i8, i8* %4, i64 16
  br label %8, !dbg !2344

; <label>:8:                                      ; preds = %1, %76
  %9 = phi i32 [ 0, %1 ], [ %77, %76 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2347
  br label %10, !dbg !2347

; <label>:10:                                     ; preds = %10, %8
  %11 = phi i64 [ 0, %8 ], [ %43, %10 ]
  %12 = tail call i32 @rand() #8, !dbg !2348
  %13 = and i32 %12, 63, !dbg !2349
  %14 = trunc i32 %13 to i8, !dbg !2351
  %15 = getelementptr inbounds [16384 x i8], [16384 x i8]* %2, i64 0, i64 %11, !dbg !2352
  store i8 %14, i8* %15, align 1, !dbg !2353, !tbaa !143
  %16 = trunc i64 %11 to i32, !dbg !2354
  %17 = mul i32 %16, 6, !dbg !2354
  %18 = lshr i32 %17, 3, !dbg !2354
  %19 = zext i32 %18 to i64, !dbg !2354
  %20 = and i32 %17, 6, !dbg !2354
  %21 = zext i32 %20 to i64, !dbg !2354
  %22 = sub nsw i64 8, %21, !dbg !2354
  %23 = zext i32 %13 to i64, !dbg !2354
  %24 = shl i32 63, %20, !dbg !2354
  %25 = getelementptr inbounds i8, i8* %7, i64 %19, !dbg !2354
  %26 = load i8, i8* %25, align 1, !dbg !2354, !tbaa !143
  %27 = trunc i32 %24 to i8, !dbg !2354
  %28 = xor i8 %27, -1, !dbg !2354
  %29 = and i8 %26, %28, !dbg !2354
  %30 = shl i64 %23, %21, !dbg !2354
  %31 = trunc i64 %30 to i8, !dbg !2354
  %32 = or i8 %29, %31, !dbg !2354
  store i8 %32, i8* %25, align 1, !dbg !2354, !tbaa !143
  %33 = trunc i64 %22 to i32, !dbg !2354
  %34 = ashr i32 -64, %33, !dbg !2354
  %35 = add nuw nsw i64 %19, 1, !dbg !2354
  %36 = getelementptr inbounds i8, i8* %7, i64 %35, !dbg !2354
  %37 = load i8, i8* %36, align 1, !dbg !2354, !tbaa !143
  %38 = trunc i32 %34 to i8, !dbg !2354
  %39 = and i8 %37, %38, !dbg !2354
  %40 = lshr i64 %23, %22, !dbg !2354
  %41 = trunc i64 %40 to i8, !dbg !2354
  %42 = or i8 %39, %41, !dbg !2354
  store i8 %42, i8* %36, align 1, !dbg !2354, !tbaa !143
  %43 = add nuw nsw i64 %11, 1, !dbg !2355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2347
  %44 = icmp eq i64 %43, 16384, !dbg !2357
  br i1 %44, label %45, label %10, !dbg !2347, !llvm.loop !2358

; <label>:45:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2361
  br label %46, !dbg !2361

; <label>:46:                                     ; preds = %45, %73
  %47 = phi i32 [ 0, %45 ], [ %74, %73 ]
  %48 = mul nsw i32 %47, 6, !dbg !2362
  %49 = lshr i32 %48, 3, !dbg !2362
  %50 = zext i32 %49 to i64, !dbg !2362
  %51 = and i32 %48, 6, !dbg !2362
  %52 = zext i32 %51 to i64, !dbg !2362
  %53 = sub nsw i64 8, %52, !dbg !2362
  %54 = getelementptr inbounds i8, i8* %7, i64 %50, !dbg !2362
  %55 = load i8, i8* %54, align 1, !dbg !2362, !tbaa !143
  %56 = zext i8 %55 to i64, !dbg !2362
  %57 = add nuw nsw i64 %50, 1, !dbg !2362
  %58 = getelementptr inbounds i8, i8* %7, i64 %57, !dbg !2362
  %59 = load i8, i8* %58, align 1, !dbg !2362, !tbaa !143
  %60 = zext i8 %59 to i64, !dbg !2362
  %61 = lshr i64 %56, %52, !dbg !2362
  %62 = shl i64 %60, %53, !dbg !2362
  %63 = or i64 %62, %61, !dbg !2362
  %64 = trunc i64 %63 to i32, !dbg !2362
  %65 = and i32 %64, 63, !dbg !2362
  %66 = zext i32 %47 to i64, !dbg !2364
  %67 = getelementptr inbounds [16384 x i8], [16384 x i8]* %2, i64 0, i64 %66, !dbg !2364
  %68 = load i8, i8* %67, align 1, !dbg !2364, !tbaa !143
  %69 = zext i8 %68 to i32, !dbg !2364
  %70 = icmp eq i32 %65, %69, !dbg !2366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2367
  br i1 %70, label %73, label %71, !dbg !2367

; <label>:71:                                     ; preds = %46
  %72 = zext i8 %68 to i32, !dbg !2364
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %47, i32 %72, i32 %65) #8, !dbg !2368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2370
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call void @sdsfree(i8* nonnull %4) #8, !dbg !2371
  br label %151, !dbg !2372

; <label>:73:                                     ; preds = %46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2373
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %74 = add nuw nsw i32 %47, 1, !dbg !2374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2375
  %75 = icmp ult i32 %74, 16384, !dbg !2376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2361
  br i1 %75, label %46, label %76, !dbg !2361, !llvm.loop !2377

; <label>:76:                                     ; preds = %73
  %77 = add nuw nsw i32 %9, 1, !dbg !2379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2380
  %78 = icmp ult i32 %77, 1000, !dbg !2381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2344
  br i1 %78, label %8, label %79, !dbg !2344, !llvm.loop !2382

; <label>:79:                                     ; preds = %76
  %80 = tail call i8* @memset(i8* nonnull %7, i32 0, i64 12288) #8, !dbg !2384
  %81 = tail call i8* @sdsnewlen(i8* null, i64 18) #8, !dbg !2388
  %82 = getelementptr inbounds i8, i8* %81, i64 16, !dbg !2390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2394
  store i8 127, i8* %82, align 1, !dbg !2395, !tbaa !143
  %83 = getelementptr inbounds i8, i8* %81, i64 17, !dbg !2395
  store i8 -1, i8* %83, align 1, !dbg !2395, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2396
  %84 = tail call %struct.redisObject* @createObject(i32 0, i8* %81) #8, !dbg !2397
  %85 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %84, i64 0, i32 2, !dbg !2399
  %86 = bitcast i8** %85 to %struct.hllhdr**, !dbg !2399
  %87 = load %struct.hllhdr*, %struct.hllhdr** %86, align 8, !dbg !2399, !tbaa !489
  %88 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %87, i64 0, i32 0, i64 0, !dbg !2401
  %89 = tail call i8* @memcpy(i8* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4) #8, !dbg !2402
  %90 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %87, i64 0, i32 1, !dbg !2403
  store i8 1, i8* %90, align 1, !dbg !2404, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2405
  %91 = tail call double @sqrt(double 1.638400e+04) #8, !dbg !2406
  %92 = fdiv double 1.040000e+00, %91, !dbg !2407
  %93 = tail call i32 @rand() #8, !dbg !2410
  %94 = sext i32 %93 to i64, !dbg !2411
  %95 = tail call i32 @rand() #8, !dbg !2412
  %96 = zext i32 %95 to i64, !dbg !2413
  %97 = shl nuw i64 %96, 32, !dbg !2414
  %98 = or i64 %97, %94, !dbg !2415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2418
  %99 = bitcast i64* %3 to i8*
  %100 = fmul double %92, 6.000000e+00
  br label %101, !dbg !2418

; <label>:101:                                    ; preds = %79, %142
  %102 = phi i64 [ 1, %79 ], [ %144, %142 ]
  %103 = phi i64 [ 1, %79 ], [ %143, %142 ]
  %104 = xor i64 %98, %102, !dbg !2419
  store i64 %104, i64* %3, align 8, !dbg !2421, !tbaa !125
  %105 = call i32 @hllDenseAdd(i8* nonnull %7, i8* nonnull %99, i64 8) #6, !dbg !2422
  %106 = call i32 @hllAdd(%struct.redisObject* %84, i8* nonnull %99, i64 8) #6, !dbg !2423
  %107 = icmp eq i64 %103, %102, !dbg !2424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2426
  br i1 %107, label %108, label %142, !dbg !2426

; <label>:108:                                    ; preds = %101
  %109 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 246), align 8, !dbg !2427, !tbaa !846
  %110 = lshr i64 %109, 1, !dbg !2428
  %111 = icmp ugt i64 %110, %102, !dbg !2429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2430
  br i1 %111, label %112, label %118, !dbg !2430

; <label>:112:                                    ; preds = %108
  %113 = load %struct.hllhdr*, %struct.hllhdr** %86, align 8, !dbg !2431, !tbaa !489
  %114 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %113, i64 0, i32 1, !dbg !2434
  %115 = load i8, i8* %114, align 1, !dbg !2434, !tbaa !143
  %116 = icmp eq i8 %115, 1, !dbg !2436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2437
  br i1 %116, label %118, label %117, !dbg !2437

; <label>:117:                                    ; preds = %112
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !2438
  br label %146, !dbg !2440

; <label>:118:                                    ; preds = %108, %112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2441
  %119 = call i64 @hllCount(%struct.hllhdr* %5, i32* null) #6, !dbg !2443
  %120 = load %struct.hllhdr*, %struct.hllhdr** %86, align 8, !dbg !2444, !tbaa !489
  %121 = call i64 @hllCount(%struct.hllhdr* %120, i32* null) #6, !dbg !2445
  %122 = icmp eq i64 %119, %121, !dbg !2446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2447
  br i1 %122, label %124, label %123, !dbg !2447

; <label>:123:                                    ; preds = %118
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !2448
  br label %146, !dbg !2450

; <label>:124:                                    ; preds = %118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2451
  %125 = call i64 @hllCount(%struct.hllhdr* %5, i32* null) #6, !dbg !2452
  %126 = sub nsw i64 %102, %125, !dbg !2453
  %127 = sitofp i64 %102 to double, !dbg !2455
  %128 = fmul double %100, %127, !dbg !2456
  %129 = call double @ceil(double %128) #8, !dbg !2457
  %130 = fptoui double %129 to i64, !dbg !2457
  %131 = icmp eq i64 %102, 10, !dbg !2459
  %132 = select i1 %131, i64 1, i64 %130, !dbg !2461
  %133 = icmp slt i64 %126, 0, !dbg !2462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2464
  br i1 %133, label %134, label %136, !dbg !2464

; <label>:134:                                    ; preds = %124
  %135 = sub nsw i64 0, %126, !dbg !2465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2466
  br label %136, !dbg !2466

; <label>:136:                                    ; preds = %134, %124
  %137 = phi i64 [ %135, %134 ], [ %126, %124 ], !dbg !2467
  %138 = icmp sgt i64 %137, %132, !dbg !2468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2470
  br i1 %138, label %141, label %139, !dbg !2470

; <label>:139:                                    ; preds = %136
  %140 = mul nsw i64 %102, 10, !dbg !2471
  br label %142

; <label>:141:                                    ; preds = %136
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i64 %102, i64 %137) #8, !dbg !2472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2474
  br label %146

; <label>:142:                                    ; preds = %101, %139
  %143 = phi i64 [ %140, %139 ], [ %103, %101 ], !dbg !2409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2475
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %144 = add nuw nsw i64 %102, 1, !dbg !2476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2477
  %145 = icmp ult i64 %144, 10000001, !dbg !2478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2418
  br i1 %145, label %101, label %147, !dbg !2418, !llvm.loop !2479

; <label>:146:                                    ; preds = %117, %123, %141
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @sdsfree(i8* %4) #8, !dbg !2371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2372
  br label %150, !dbg !2372

; <label>:147:                                    ; preds = %142
  %148 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2481, !tbaa !2285
  call void @addReply(%struct.client* %0, %struct.redisObject* %148) #8, !dbg !2482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2482
  call void @sdsfree(i8* %4) #8, !dbg !2371
  %149 = icmp eq %struct.redisObject* %84, null, !dbg !2483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2372
  br i1 %149, label %152, label %150, !dbg !2372

; <label>:150:                                    ; preds = %146, %147
  call void @decrRefCount(%struct.redisObject* nonnull %84) #8, !dbg !2485
  br label %151, !dbg !2485

; <label>:151:                                    ; preds = %150, %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2486
  br label %152, !dbg !2487

; <label>:152:                                    ; preds = %151, %147
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* nonnull %6) #7, !dbg !2487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2487
  ret void, !dbg !2487
}

; Function Attrs: noredzone
declare dso_local i32 @rand() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyErrorFormat(%struct.client*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @ceil(double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @pfdebugCommand(%struct.client*) local_unnamed_addr #0 !dbg !2488 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2524
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2524, !tbaa !1839
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !2525
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !2525, !tbaa !1841
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %5, i64 0, i32 2, !dbg !2526
  %7 = load i8*, i8** %6, align 8, !dbg !2526, !tbaa !489
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2528
  %9 = load %struct.redisDb*, %struct.redisDb** %8, align 8, !dbg !2528, !tbaa !1834
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 2, !dbg !2529
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !2529, !tbaa !1841
  %12 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %9, %struct.redisObject* %11) #8, !dbg !2530
  %13 = icmp eq %struct.redisObject* %12, null, !dbg !2532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2534
  br i1 %13, label %14, label %15, !dbg !2534

; <label>:14:                                     ; preds = %1
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !2535
  br label %219, !dbg !2537

; <label>:15:                                     ; preds = %1
  %16 = tail call i32 @isHLLObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* nonnull %12) #6, !dbg !2538
  %17 = icmp eq i32 %16, 0, !dbg !2540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2541
  br i1 %17, label %18, label %219, !dbg !2541

; <label>:18:                                     ; preds = %15
  %19 = load %struct.redisDb*, %struct.redisDb** %8, align 8, !dbg !2542, !tbaa !1834
  %20 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2543, !tbaa !1839
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 2, !dbg !2544
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !2544, !tbaa !1841
  %23 = tail call %struct.redisObject* @dbUnshareStringValue(%struct.redisDb* %19, %struct.redisObject* %22, %struct.redisObject* nonnull %12) #8, !dbg !2545
  %24 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %23, i64 0, i32 2, !dbg !2546
  %25 = load i8*, i8** %24, align 8, !dbg !2546, !tbaa !489
  %26 = tail call i32 @strcasecmp(i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !2548
  %27 = icmp eq i32 %26, 0, !dbg !2548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2549
  %28 = bitcast i8* %25 to %struct.hllhdr*, !dbg !2549
  br i1 %27, label %29, label %70, !dbg !2549

; <label>:29:                                     ; preds = %18
  %30 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2550
  %31 = load i32, i32* %30, align 8, !dbg !2550, !tbaa !1889
  %32 = icmp eq i32 %31, 3, !dbg !2552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2553
  br i1 %32, label %33, label %218, !dbg !2553

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds i8, i8* %25, i64 4, !dbg !2554
  %35 = load i8, i8* %34, align 1, !dbg !2554, !tbaa !143
  %36 = icmp eq i8 %35, 1, !dbg !2556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2557
  br i1 %36, label %37, label %47, !dbg !2557

; <label>:37:                                     ; preds = %33
  %38 = tail call i32 @hllSparseToDense(%struct.redisObject* %23) #6, !dbg !2558
  %39 = icmp eq i32 %38, -1, !dbg !2561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2562
  br i1 %39, label %40, label %42, !dbg !2562

; <label>:40:                                     ; preds = %37
  %41 = tail call i8* @sdsnew(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !2563
  tail call void @addReplySds(%struct.client* nonnull %0, i8* %41) #8, !dbg !2565
  br label %219, !dbg !2566

; <label>:42:                                     ; preds = %37
  %43 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2567, !tbaa !1951
  %44 = add nsw i64 %43, 1, !dbg !2567
  store i64 %44, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2567, !tbaa !1951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2568
  %45 = bitcast i8** %24 to %struct.hllhdr**
  %46 = load %struct.hllhdr*, %struct.hllhdr** %45, align 8, !dbg !2569, !tbaa !489
  br label %47, !dbg !2568

; <label>:47:                                     ; preds = %33, %42
  %48 = phi %struct.hllhdr* [ %46, %42 ], [ %28, %33 ], !dbg !2569
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 16384) #8, !dbg !2570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2573
  br label %49, !dbg !2573

; <label>:49:                                     ; preds = %49, %47
  %50 = phi i32 [ 0, %47 ], [ %68, %49 ]
  %51 = mul nuw nsw i32 %50, 6, !dbg !2574
  %52 = lshr i32 %51, 3, !dbg !2574
  %53 = zext i32 %52 to i64, !dbg !2574
  %54 = and i32 %51, 6, !dbg !2574
  %55 = zext i32 %54 to i64, !dbg !2574
  %56 = sub nsw i64 8, %55, !dbg !2574
  %57 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %48, i64 0, i32 4, i64 %53, !dbg !2574
  %58 = load i8, i8* %57, align 1, !dbg !2574, !tbaa !143
  %59 = zext i8 %58 to i64, !dbg !2574
  %60 = add nuw nsw i64 %53, 1, !dbg !2574
  %61 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %48, i64 0, i32 4, i64 %60, !dbg !2574
  %62 = load i8, i8* %61, align 1, !dbg !2574, !tbaa !143
  %63 = zext i8 %62 to i64, !dbg !2574
  %64 = lshr i64 %59, %55, !dbg !2574
  %65 = shl i64 %63, %56, !dbg !2574
  %66 = or i64 %65, %64, !dbg !2574
  %67 = and i64 %66, 63, !dbg !2574
  tail call void @addReplyLongLong(%struct.client* %0, i64 %67) #8, !dbg !2576
  %68 = add nuw nsw i32 %50, 1, !dbg !2577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2573
  %69 = icmp eq i32 %68, 16384, !dbg !2579
  br i1 %69, label %219, label %49, !dbg !2573, !llvm.loop !2580

; <label>:70:                                     ; preds = %18
  %71 = tail call i32 @strcasecmp(i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !2582
  %72 = icmp eq i32 %71, 0, !dbg !2582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2583
  br i1 %72, label %73, label %179, !dbg !2583

; <label>:73:                                     ; preds = %70
  %74 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2584
  %75 = load i32, i32* %74, align 8, !dbg !2584, !tbaa !1889
  %76 = icmp eq i32 %75, 3, !dbg !2586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2587
  br i1 %76, label %77, label %218, !dbg !2587

; <label>:77:                                     ; preds = %73
  %78 = getelementptr inbounds i8, i8* %25, i64 -1, !dbg !2591
  %79 = load i8, i8* %78, align 1, !dbg !2591, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2593
  %80 = trunc i8 %79 to i3, !dbg !2593
  switch i3 %80, label %102 [
    i3 0, label %81
    i3 1, label %84
    i3 2, label %88
    i3 3, label %93
    i3 -4, label %98
  ], !dbg !2593

; <label>:81:                                     ; preds = %77
  %82 = lshr i8 %79, 3, !dbg !2594
  %83 = zext i8 %82 to i64, !dbg !2594
  br label %102, !dbg !2595

; <label>:84:                                     ; preds = %77
  %85 = getelementptr inbounds i8, i8* %25, i64 -3, !dbg !2596
  %86 = load i8, i8* %85, align 1, !dbg !2597, !tbaa !143
  %87 = zext i8 %86 to i64, !dbg !2596
  br label %102, !dbg !2598

; <label>:88:                                     ; preds = %77
  %89 = getelementptr inbounds i8, i8* %25, i64 -5, !dbg !2599
  %90 = bitcast i8* %89 to i16*, !dbg !2600
  %91 = load i16, i16* %90, align 1, !dbg !2600, !tbaa !518
  %92 = zext i16 %91 to i64, !dbg !2599
  br label %102, !dbg !2601

; <label>:93:                                     ; preds = %77
  %94 = getelementptr inbounds i8, i8* %25, i64 -9, !dbg !2602
  %95 = bitcast i8* %94 to i32*, !dbg !2603
  %96 = load i32, i32* %95, align 1, !dbg !2603, !tbaa !413
  %97 = zext i32 %96 to i64, !dbg !2602
  br label %102, !dbg !2604

; <label>:98:                                     ; preds = %77
  %99 = getelementptr inbounds i8, i8* %25, i64 -17, !dbg !2605
  %100 = bitcast i8* %99 to i64*, !dbg !2606
  %101 = load i64, i64* %100, align 1, !dbg !2606, !tbaa !125
  br label %102, !dbg !2607

; <label>:102:                                    ; preds = %77, %81, %84, %88, %93, %98
  %103 = phi i64 [ %101, %98 ], [ %97, %93 ], [ %92, %88 ], [ %87, %84 ], [ %83, %81 ], [ 0, %77 ], !dbg !2608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2610
  %104 = getelementptr inbounds i8, i8* %25, i64 %103, !dbg !2611
  %105 = tail call i8* @sdsempty() #8, !dbg !2613
  %106 = getelementptr inbounds i8, i8* %25, i64 4, !dbg !2615
  %107 = load i8, i8* %106, align 1, !dbg !2615, !tbaa !143
  %108 = icmp eq i8 %107, 1, !dbg !2617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2618
  br i1 %108, label %110, label %109, !dbg !2618

; <label>:109:                                    ; preds = %102
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !2619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2621
  br label %219

; <label>:110:                                    ; preds = %102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2622
  %111 = icmp sgt i64 %103, 16, !dbg !2623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2622
  br i1 %111, label %112, label %150, !dbg !2622

; <label>:112:                                    ; preds = %110
  %113 = getelementptr inbounds i8, i8* %25, i64 16, !dbg !2624
  br label %114, !dbg !2625

; <label>:114:                                    ; preds = %112, %146
  %115 = phi i8* [ %148, %146 ], [ %105, %112 ]
  %116 = phi i8* [ %147, %146 ], [ %113, %112 ]
  %117 = load i8, i8* %116, align 1, !dbg !2625, !tbaa !143
  %118 = zext i8 %117 to i32, !dbg !2625
  %119 = and i32 %118, 192, !dbg !2625
  %120 = icmp eq i32 %119, 0, !dbg !2625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2627
  br i1 %120, label %121, label %126, !dbg !2627

; <label>:121:                                    ; preds = %114
  %122 = and i32 %118, 63, !dbg !2628
  %123 = add nuw nsw i32 %122, 1, !dbg !2628
  %124 = getelementptr inbounds i8, i8* %116, i64 1, !dbg !2631
  %125 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %123) #8, !dbg !2632
  br label %146, !dbg !2633

; <label>:126:                                    ; preds = %114
  %127 = icmp eq i32 %119, 64, !dbg !2634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2636
  br i1 %127, label %128, label %138, !dbg !2636

; <label>:128:                                    ; preds = %126
  %129 = shl nuw nsw i32 %118, 8, !dbg !2637
  %130 = and i32 %129, 16128, !dbg !2637
  %131 = getelementptr inbounds i8, i8* %116, i64 1, !dbg !2637
  %132 = load i8, i8* %131, align 1, !dbg !2637, !tbaa !143
  %133 = zext i8 %132 to i32, !dbg !2637
  %134 = or i32 %130, %133, !dbg !2637
  %135 = add nuw nsw i32 %134, 1, !dbg !2637
  %136 = getelementptr inbounds i8, i8* %116, i64 2, !dbg !2639
  %137 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %135) #8, !dbg !2640
  br label %146, !dbg !2641

; <label>:138:                                    ; preds = %126
  %139 = and i32 %118, 3, !dbg !2642
  %140 = add nuw nsw i32 %139, 1, !dbg !2642
  %141 = lshr i32 %118, 2, !dbg !2644
  %142 = and i32 %141, 31, !dbg !2644
  %143 = add nuw nsw i32 %142, 1, !dbg !2644
  %144 = getelementptr inbounds i8, i8* %116, i64 1, !dbg !2646
  %145 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %143, i32 %140) #8, !dbg !2647
  br label %146

; <label>:146:                                    ; preds = %128, %138, %121
  %147 = phi i8* [ %124, %121 ], [ %136, %128 ], [ %144, %138 ], !dbg !2648
  %148 = phi i8* [ %125, %121 ], [ %137, %128 ], [ %145, %138 ], !dbg !2648
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2622
  %149 = icmp ult i8* %147, %104, !dbg !2623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2622
  br i1 %149, label %114, label %150, !dbg !2622, !llvm.loop !2649

; <label>:150:                                    ; preds = %146, %110
  %151 = phi i8* [ %105, %110 ], [ %148, %146 ], !dbg !2651
  %152 = tail call i8* @sdstrim(i8* %151, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !2652
  %153 = getelementptr inbounds i8, i8* %152, i64 -1, !dbg !2655
  %154 = load i8, i8* %153, align 1, !dbg !2655, !tbaa !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2657
  %155 = trunc i8 %154 to i3, !dbg !2657
  switch i3 %155, label %177 [
    i3 0, label %156
    i3 1, label %159
    i3 2, label %163
    i3 3, label %168
    i3 -4, label %173
  ], !dbg !2657

; <label>:156:                                    ; preds = %150
  %157 = lshr i8 %154, 3, !dbg !2658
  %158 = zext i8 %157 to i64, !dbg !2658
  br label %177, !dbg !2659

; <label>:159:                                    ; preds = %150
  %160 = getelementptr inbounds i8, i8* %152, i64 -3, !dbg !2660
  %161 = load i8, i8* %160, align 1, !dbg !2661, !tbaa !143
  %162 = zext i8 %161 to i64, !dbg !2660
  br label %177, !dbg !2662

; <label>:163:                                    ; preds = %150
  %164 = getelementptr inbounds i8, i8* %152, i64 -5, !dbg !2663
  %165 = bitcast i8* %164 to i16*, !dbg !2664
  %166 = load i16, i16* %165, align 1, !dbg !2664, !tbaa !518
  %167 = zext i16 %166 to i64, !dbg !2663
  br label %177, !dbg !2665

; <label>:168:                                    ; preds = %150
  %169 = getelementptr inbounds i8, i8* %152, i64 -9, !dbg !2666
  %170 = bitcast i8* %169 to i32*, !dbg !2667
  %171 = load i32, i32* %170, align 1, !dbg !2667, !tbaa !413
  %172 = zext i32 %171 to i64, !dbg !2666
  br label %177, !dbg !2668

; <label>:173:                                    ; preds = %150
  %174 = getelementptr inbounds i8, i8* %152, i64 -17, !dbg !2669
  %175 = bitcast i8* %174 to i64*, !dbg !2670
  %176 = load i64, i64* %175, align 1, !dbg !2670, !tbaa !125
  br label %177, !dbg !2671

; <label>:177:                                    ; preds = %150, %156, %159, %163, %168, %173
  %178 = phi i64 [ %176, %173 ], [ %172, %168 ], [ %167, %163 ], [ %162, %159 ], [ %158, %156 ], [ 0, %150 ], !dbg !2672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2673
  tail call void @addReplyBulkCBuffer(%struct.client* %0, i8* %152, i64 %178) #8, !dbg !2674
  tail call void @sdsfree(i8* %152) #8, !dbg !2675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2676
  br label %217

; <label>:179:                                    ; preds = %70
  %180 = tail call i32 @strcasecmp(i8* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0)) #10, !dbg !2677
  %181 = icmp eq i32 %180, 0, !dbg !2677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2678
  br i1 %181, label %182, label %193, !dbg !2678

; <label>:182:                                    ; preds = %179
  %183 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2680
  %184 = load i32, i32* %183, align 8, !dbg !2680, !tbaa !1889
  %185 = icmp eq i32 %184, 3, !dbg !2682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2683
  br i1 %185, label %186, label %192, !dbg !2683

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %25, i64 4, !dbg !2684
  %188 = load i8, i8* %187, align 1, !dbg !2684, !tbaa !143
  %189 = zext i8 %188 to i64, !dbg !2685
  %190 = getelementptr inbounds [2 x i8*], [2 x i8*]* @pfdebugCommand.encodingstr, i64 0, i64 %189, !dbg !2685
  %191 = load i8*, i8** %190, align 8, !dbg !2685, !tbaa !1841
  tail call void @addReplyStatus(%struct.client* nonnull %0, i8* %191) #8, !dbg !2686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2687
  br label %217

; <label>:192:                                    ; preds = %182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2688
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %218

; <label>:193:                                    ; preds = %179
  %194 = tail call i32 @strcasecmp(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0)) #10, !dbg !2689
  %195 = icmp eq i32 %194, 0, !dbg !2689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2690
  br i1 %195, label %196, label %216, !dbg !2690

; <label>:196:                                    ; preds = %193
  %197 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2692
  %198 = load i32, i32* %197, align 8, !dbg !2692, !tbaa !1889
  %199 = icmp eq i32 %198, 3, !dbg !2694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2695
  br i1 %199, label %200, label %215, !dbg !2695

; <label>:200:                                    ; preds = %196
  %201 = getelementptr inbounds i8, i8* %25, i64 4, !dbg !2696
  %202 = load i8, i8* %201, align 1, !dbg !2696, !tbaa !143
  %203 = icmp eq i8 %202, 1, !dbg !2698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2699
  br i1 %203, label %204, label %212, !dbg !2699

; <label>:204:                                    ; preds = %200
  %205 = tail call i32 @hllSparseToDense(%struct.redisObject* %23) #6, !dbg !2700
  %206 = icmp eq i32 %205, -1, !dbg !2703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2704
  br i1 %206, label %207, label %209, !dbg !2704

; <label>:207:                                    ; preds = %204
  %208 = tail call i8* @sdsnew(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !2705
  tail call void @addReplySds(%struct.client* nonnull %0, i8* %208) #8, !dbg !2707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2708
  br label %219

; <label>:209:                                    ; preds = %204
  %210 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2709, !tbaa !1951
  %211 = add nsw i64 %210, 1, !dbg !2709
  store i64 %211, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2709, !tbaa !1951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2710
  br label %212, !dbg !2711

; <label>:212:                                    ; preds = %200, %209
  %213 = phi %struct.redisObject** [ getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), %209 ], [ getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), %200 ]
  %214 = load %struct.redisObject*, %struct.redisObject** %213, align 8, !dbg !2712
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %214) #8, !dbg !2713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2714
  br label %217

; <label>:215:                                    ; preds = %196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2715
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %218

; <label>:216:                                    ; preds = %193
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i8* %7) #8, !dbg !2716
  br label %217

; <label>:217:                                    ; preds = %216, %177, %186, %212
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %219, !dbg !2718

; <label>:218:                                    ; preds = %215, %192, %73, %29
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.24, i64 0, i64 0), i8* %7) #8, !dbg !2719
  br label %219, !dbg !2720

; <label>:219:                                    ; preds = %49, %217, %15, %207, %109, %218, %40, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2720
  ret void, !dbg !2720
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsempty() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatprintf(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdstrim(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyStatus(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin noredzone }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone nounwind }
attributes #9 = { nobuiltin noredzone noreturn nounwind }
attributes #10 = { nobuiltin noredzone nounwind readonly }

!llvm.module.flags = !{!86, !87, !88}
!llvm.ident = !{!89}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !83)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/hyperloglog.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !11, !12, !15, !16, !17, !38, !41, !42, !43, !44, !47, !48, !56, !66, !76}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 24, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !9, line: 43, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 60, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 105, baseType: !14)
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hllhdr", file: !1, line: 182, size: 128, elements: !19)
!19 = !{!20, !25, !26, !30, !34}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !18, file: !1, line: 183, baseType: !21, size: 32)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !23)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !{!24}
!24 = !DISubrange(count: 4)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !18, file: !1, line: 184, baseType: !6, size: 8, offset: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "notused", scope: !18, file: !1, line: 185, baseType: !27, size: 24, offset: 40)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 24, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 3)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !18, file: !1, line: 186, baseType: !31, size: 64, offset: 64)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 8)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "registers", scope: !18, file: !1, line: 187, baseType: !35, offset: 128)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: -1)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !39, line: 43, baseType: !40)
!39 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!41 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !7, line: 56, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !9, line: 103, baseType: !46)
!46 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!47 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !39, line: 51, size: 24, elements: !50)
!50 = !{!51, !52, !53, !54}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !49, file: !39, line: 52, baseType: !6, size: 8)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !49, file: !39, line: 53, baseType: !6, size: 8, offset: 8)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !49, file: !39, line: 54, baseType: !10, size: 8, offset: 16)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !49, file: !39, line: 55, baseType: !55, offset: 24)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, elements: !36)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !39, line: 57, size: 40, elements: !58)
!58 = !{!59, !63, !64, !65}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !57, file: !39, line: 58, baseType: !60, size: 16)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 36, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !9, line: 57, baseType: !62)
!62 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !57, file: !39, line: 59, baseType: !60, size: 16, offset: 16)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !57, file: !39, line: 60, baseType: !10, size: 8, offset: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !57, file: !39, line: 61, baseType: !55, offset: 40)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !39, line: 63, size: 72, elements: !68)
!68 = !{!69, !73, !74, !75}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !67, file: !39, line: 64, baseType: !70, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 48, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 79, baseType: !72)
!72 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !67, file: !39, line: 65, baseType: !70, size: 32, offset: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !67, file: !39, line: 66, baseType: !10, size: 8, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !67, file: !39, line: 67, baseType: !55, offset: 72)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !39, line: 69, size: 136, elements: !78)
!78 = !{!79, !80, !81, !82}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !77, file: !39, line: 70, baseType: !12, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !77, file: !39, line: 71, baseType: !12, size: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !77, file: !39, line: 72, baseType: !10, size: 8, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !77, file: !39, line: 73, baseType: !55, offset: 136)
!83 = !{!84}
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "invalid_hll_err", scope: !0, file: !1, line: 208, type: !40, isLocal: true, isDefinition: true)
!86 = !{i32 2, !"Dwarf Version", i32 4}
!87 = !{i32 2, !"Debug Info Version", i32 3}
!88 = !{i32 1, !"wchar_size", i32 4}
!89 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!90 = distinct !DISubprogram(name: "MurmurHash64A", scope: !1, file: !1, line: 396, type: !91, isLocal: false, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !95)
!91 = !DISubroutineType(types: !92)
!92 = !{!12, !93, !15, !72}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!95 = !{!96, !97, !98, !99, !101, !103, !104, !105, !106}
!96 = !DILocalVariable(name: "key", arg: 1, scope: !90, file: !1, line: 396, type: !93)
!97 = !DILocalVariable(name: "len", arg: 2, scope: !90, file: !1, line: 396, type: !15)
!98 = !DILocalVariable(name: "seed", arg: 3, scope: !90, file: !1, line: 396, type: !72)
!99 = !DILocalVariable(name: "m", scope: !90, file: !1, line: 397, type: !100)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!101 = !DILocalVariable(name: "r", scope: !90, file: !1, line: 398, type: !102)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!103 = !DILocalVariable(name: "h", scope: !90, file: !1, line: 399, type: !12)
!104 = !DILocalVariable(name: "data", scope: !90, file: !1, line: 400, type: !4)
!105 = !DILocalVariable(name: "end", scope: !90, file: !1, line: 401, type: !4)
!106 = !DILocalVariable(name: "k", scope: !107, file: !1, line: 404, type: !12)
!107 = distinct !DILexicalBlock(scope: !90, file: !1, line: 403, column: 24)
!108 = !DILocation(line: 396, column: 38, scope: !90)
!109 = !DILocation(line: 396, column: 47, scope: !90)
!110 = !DILocation(line: 396, column: 65, scope: !90)
!111 = !DILocation(line: 397, column: 20, scope: !90)
!112 = !DILocation(line: 398, column: 15, scope: !90)
!113 = !DILocation(line: 399, column: 18, scope: !90)
!114 = !DILocation(line: 399, column: 26, scope: !90)
!115 = !DILocation(line: 399, column: 30, scope: !90)
!116 = !DILocation(line: 399, column: 23, scope: !90)
!117 = !DILocation(line: 399, column: 14, scope: !90)
!118 = !DILocation(line: 400, column: 20, scope: !90)
!119 = !DILocation(line: 401, column: 37, scope: !90)
!120 = !DILocation(line: 401, column: 31, scope: !90)
!121 = !DILocation(line: 401, column: 20, scope: !90)
!122 = !DILocation(line: 403, column: 5, scope: !90)
!123 = !DILocation(line: 403, column: 16, scope: !90)
!124 = !DILocation(line: 410, column: 13, scope: !107)
!125 = !{!126, !126, i64 0}
!126 = !{!"long", !127, i64 0}
!127 = !{!"omnipotent char", !128, i64 0}
!128 = !{!"Simple C/C++ TBAA"}
!129 = !DILocation(line: 404, column: 18, scope: !107)
!130 = !DILocation(line: 423, column: 11, scope: !107)
!131 = !DILocation(line: 424, column: 16, scope: !107)
!132 = !DILocation(line: 424, column: 11, scope: !107)
!133 = !DILocation(line: 425, column: 11, scope: !107)
!134 = !DILocation(line: 426, column: 11, scope: !107)
!135 = !DILocation(line: 427, column: 11, scope: !107)
!136 = !DILocation(line: 428, column: 14, scope: !107)
!137 = distinct !{!137, !122, !138}
!138 = !DILocation(line: 429, column: 5, scope: !90)
!139 = !DILocation(line: 431, column: 5, scope: !90)
!140 = !DILocation(line: 0, scope: !107)
!141 = !DILocation(line: 432, column: 28, scope: !142)
!142 = distinct !DILexicalBlock(scope: !90, file: !1, line: 431, column: 21)
!143 = !{!127, !127, i64 0}
!144 = !DILocation(line: 432, column: 18, scope: !142)
!145 = !DILocation(line: 432, column: 36, scope: !142)
!146 = !DILocation(line: 432, column: 15, scope: !142)
!147 = !DILocation(line: 432, column: 13, scope: !142)
!148 = !DILocation(line: 0, scope: !142)
!149 = !DILocation(line: 433, column: 28, scope: !142)
!150 = !DILocation(line: 433, column: 18, scope: !142)
!151 = !DILocation(line: 433, column: 36, scope: !142)
!152 = !DILocation(line: 433, column: 15, scope: !142)
!153 = !DILocation(line: 433, column: 13, scope: !142)
!154 = !DILocation(line: 434, column: 28, scope: !142)
!155 = !DILocation(line: 434, column: 18, scope: !142)
!156 = !DILocation(line: 434, column: 36, scope: !142)
!157 = !DILocation(line: 434, column: 15, scope: !142)
!158 = !DILocation(line: 434, column: 13, scope: !142)
!159 = !DILocation(line: 435, column: 28, scope: !142)
!160 = !DILocation(line: 435, column: 18, scope: !142)
!161 = !DILocation(line: 435, column: 36, scope: !142)
!162 = !DILocation(line: 435, column: 15, scope: !142)
!163 = !DILocation(line: 435, column: 13, scope: !142)
!164 = !DILocation(line: 436, column: 28, scope: !142)
!165 = !DILocation(line: 436, column: 18, scope: !142)
!166 = !DILocation(line: 436, column: 36, scope: !142)
!167 = !DILocation(line: 436, column: 15, scope: !142)
!168 = !DILocation(line: 436, column: 13, scope: !142)
!169 = !DILocation(line: 437, column: 28, scope: !142)
!170 = !DILocation(line: 437, column: 18, scope: !142)
!171 = !DILocation(line: 437, column: 36, scope: !142)
!172 = !DILocation(line: 437, column: 15, scope: !142)
!173 = !DILocation(line: 437, column: 13, scope: !142)
!174 = !DILocation(line: 438, column: 28, scope: !142)
!175 = !DILocation(line: 438, column: 18, scope: !142)
!176 = !DILocation(line: 438, column: 15, scope: !142)
!177 = !DILocation(line: 439, column: 15, scope: !142)
!178 = !DILocation(line: 440, column: 5, scope: !142)
!179 = !DILocation(line: 442, column: 12, scope: !90)
!180 = !DILocation(line: 442, column: 7, scope: !90)
!181 = !DILocation(line: 443, column: 7, scope: !90)
!182 = !DILocation(line: 444, column: 12, scope: !90)
!183 = !DILocation(line: 444, column: 7, scope: !90)
!184 = !DILocation(line: 445, column: 5, scope: !90)
!185 = distinct !DISubprogram(name: "hllPatLen", scope: !1, file: !1, line: 451, type: !186, isLocal: false, isDefinition: true, scopeLine: 451, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !193)
!186 = !DISubroutineType(types: !187)
!187 = !{!15, !43, !188, !192}
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !189, line: 40, baseType: !190)
!189 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !191, line: 129, baseType: !14)
!191 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!193 = !{!194, !195, !196, !197, !198, !199, !200}
!194 = !DILocalVariable(name: "ele", arg: 1, scope: !185, file: !1, line: 451, type: !43)
!195 = !DILocalVariable(name: "elesize", arg: 2, scope: !185, file: !1, line: 451, type: !188)
!196 = !DILocalVariable(name: "regp", arg: 3, scope: !185, file: !1, line: 451, type: !192)
!197 = !DILocalVariable(name: "hash", scope: !185, file: !1, line: 452, type: !12)
!198 = !DILocalVariable(name: "bit", scope: !185, file: !1, line: 452, type: !12)
!199 = !DILocalVariable(name: "index", scope: !185, file: !1, line: 452, type: !12)
!200 = !DILocalVariable(name: "count", scope: !185, file: !1, line: 453, type: !15)
!201 = !DILocation(line: 451, column: 30, scope: !185)
!202 = !DILocation(line: 451, column: 42, scope: !185)
!203 = !DILocation(line: 451, column: 57, scope: !185)
!204 = !DILocation(line: 466, column: 30, scope: !185)
!205 = !DILocation(line: 466, column: 12, scope: !185)
!206 = !DILocation(line: 452, column: 14, scope: !185)
!207 = !DILocation(line: 452, column: 25, scope: !185)
!208 = !DILocation(line: 468, column: 10, scope: !185)
!209 = !DILocation(line: 469, column: 10, scope: !185)
!210 = !DILocation(line: 452, column: 20, scope: !185)
!211 = !DILocation(line: 453, column: 9, scope: !185)
!212 = !DILocation(line: 473, column: 5, scope: !185)
!213 = !DILocation(line: 473, column: 17, scope: !185)
!214 = !DILocation(line: 473, column: 24, scope: !185)
!215 = !DILocation(line: 474, column: 14, scope: !216)
!216 = distinct !DILexicalBlock(scope: !185, file: !1, line: 473, column: 30)
!217 = !DILocation(line: 475, column: 13, scope: !216)
!218 = distinct !{!218, !212, !219}
!219 = !DILocation(line: 476, column: 5, scope: !185)
!220 = !DILocation(line: 0, scope: !216)
!221 = !DILocation(line: 477, column: 13, scope: !185)
!222 = !DILocation(line: 477, column: 11, scope: !185)
!223 = !DILocation(line: 478, column: 5, scope: !185)
!224 = distinct !DISubprogram(name: "hllDenseSet", scope: !1, file: !1, line: 493, type: !225, isLocal: false, isDefinition: true, scopeLine: 493, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !227)
!225 = !DISubroutineType(types: !226)
!226 = !{!15, !16, !46, !6}
!227 = !{!228, !229, !230, !231, !232, !234, !235, !236, !237, !238, !239, !243, !244, !245, !246}
!228 = !DILocalVariable(name: "registers", arg: 1, scope: !224, file: !1, line: 493, type: !16)
!229 = !DILocalVariable(name: "index", arg: 2, scope: !224, file: !1, line: 493, type: !46)
!230 = !DILocalVariable(name: "count", arg: 3, scope: !224, file: !1, line: 493, type: !6)
!231 = !DILocalVariable(name: "oldcount", scope: !224, file: !1, line: 494, type: !6)
!232 = !DILocalVariable(name: "_p", scope: !233, file: !1, line: 496, type: !16)
!233 = distinct !DILexicalBlock(scope: !224, file: !1, line: 496, column: 5)
!234 = !DILocalVariable(name: "_byte", scope: !233, file: !1, line: 496, type: !14)
!235 = !DILocalVariable(name: "_fb", scope: !233, file: !1, line: 496, type: !14)
!236 = !DILocalVariable(name: "_fb8", scope: !233, file: !1, line: 496, type: !14)
!237 = !DILocalVariable(name: "b0", scope: !233, file: !1, line: 496, type: !14)
!238 = !DILocalVariable(name: "b1", scope: !233, file: !1, line: 496, type: !14)
!239 = !DILocalVariable(name: "_p", scope: !240, file: !1, line: 498, type: !16)
!240 = distinct !DILexicalBlock(scope: !241, file: !1, line: 498, column: 9)
!241 = distinct !DILexicalBlock(scope: !242, file: !1, line: 497, column: 27)
!242 = distinct !DILexicalBlock(scope: !224, file: !1, line: 497, column: 9)
!243 = !DILocalVariable(name: "_byte", scope: !240, file: !1, line: 498, type: !14)
!244 = !DILocalVariable(name: "_fb", scope: !240, file: !1, line: 498, type: !14)
!245 = !DILocalVariable(name: "_fb8", scope: !240, file: !1, line: 498, type: !14)
!246 = !DILocalVariable(name: "_v", scope: !240, file: !1, line: 498, type: !14)
!247 = !DILocation(line: 493, column: 26, scope: !224)
!248 = !DILocation(line: 493, column: 42, scope: !224)
!249 = !DILocation(line: 493, column: 57, scope: !224)
!250 = !DILocation(line: 496, column: 5, scope: !233)
!251 = !DILocation(line: 497, column: 9, scope: !242)
!252 = !DILocation(line: 497, column: 15, scope: !242)
!253 = !DILocation(line: 497, column: 9, scope: !224)
!254 = !DILocation(line: 498, column: 9, scope: !240)
!255 = !DILocation(line: 499, column: 9, scope: !241)
!256 = !DILocation(line: 0, scope: !257)
!257 = distinct !DILexicalBlock(scope: !242, file: !1, line: 500, column: 12)
!258 = !DILocation(line: 0, scope: !241)
!259 = !DILocation(line: 503, column: 1, scope: !224)
!260 = distinct !DISubprogram(name: "hllDenseAdd", scope: !1, file: !1, line: 511, type: !261, isLocal: false, isDefinition: true, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !263)
!261 = !DISubroutineType(types: !262)
!262 = !{!15, !16, !43, !188}
!263 = !{!264, !265, !266, !267, !268}
!264 = !DILocalVariable(name: "registers", arg: 1, scope: !260, file: !1, line: 511, type: !16)
!265 = !DILocalVariable(name: "ele", arg: 2, scope: !260, file: !1, line: 511, type: !43)
!266 = !DILocalVariable(name: "elesize", arg: 3, scope: !260, file: !1, line: 511, type: !188)
!267 = !DILocalVariable(name: "index", scope: !260, file: !1, line: 512, type: !46)
!268 = !DILocalVariable(name: "count", scope: !260, file: !1, line: 513, type: !6)
!269 = !DILocation(line: 511, column: 26, scope: !260)
!270 = !DILocation(line: 511, column: 52, scope: !260)
!271 = !DILocation(line: 511, column: 64, scope: !260)
!272 = !DILocation(line: 451, column: 30, scope: !185, inlinedAt: !273)
!273 = distinct !DILocation(line: 513, column: 21, scope: !260)
!274 = !DILocation(line: 451, column: 42, scope: !185, inlinedAt: !273)
!275 = !DILocation(line: 466, column: 30, scope: !185, inlinedAt: !273)
!276 = !DILocation(line: 466, column: 12, scope: !185, inlinedAt: !273)
!277 = !DILocation(line: 452, column: 14, scope: !185, inlinedAt: !273)
!278 = !DILocation(line: 452, column: 25, scope: !185, inlinedAt: !273)
!279 = !DILocation(line: 468, column: 10, scope: !185, inlinedAt: !273)
!280 = !DILocation(line: 469, column: 10, scope: !185, inlinedAt: !273)
!281 = !DILocation(line: 452, column: 20, scope: !185, inlinedAt: !273)
!282 = !DILocation(line: 453, column: 9, scope: !185, inlinedAt: !273)
!283 = !DILocation(line: 473, column: 5, scope: !185, inlinedAt: !273)
!284 = !DILocation(line: 473, column: 17, scope: !185, inlinedAt: !273)
!285 = !DILocation(line: 473, column: 24, scope: !185, inlinedAt: !273)
!286 = !DILocation(line: 474, column: 14, scope: !216, inlinedAt: !273)
!287 = !DILocation(line: 475, column: 13, scope: !216, inlinedAt: !273)
!288 = !DILocation(line: 477, column: 13, scope: !185, inlinedAt: !273)
!289 = !DILocation(line: 478, column: 5, scope: !185, inlinedAt: !273)
!290 = !DILocation(line: 512, column: 10, scope: !260)
!291 = !DILocation(line: 493, column: 26, scope: !224, inlinedAt: !292)
!292 = distinct !DILocation(line: 515, column: 12, scope: !260)
!293 = !DILocation(line: 493, column: 42, scope: !224, inlinedAt: !292)
!294 = !DILocation(line: 496, column: 5, scope: !233, inlinedAt: !292)
!295 = !DILocation(line: 497, column: 15, scope: !242, inlinedAt: !292)
!296 = !DILocation(line: 497, column: 9, scope: !224, inlinedAt: !292)
!297 = !DILocation(line: 498, column: 9, scope: !240, inlinedAt: !292)
!298 = !DILocation(line: 499, column: 9, scope: !241, inlinedAt: !292)
!299 = !DILocation(line: 0, scope: !257, inlinedAt: !292)
!300 = !DILocation(line: 0, scope: !260)
!301 = !DILocation(line: 503, column: 1, scope: !224, inlinedAt: !292)
!302 = !DILocation(line: 515, column: 5, scope: !260)
!303 = distinct !DISubprogram(name: "hllDenseRegHisto", scope: !1, file: !1, line: 519, type: !304, isLocal: false, isDefinition: true, scopeLine: 519, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !307)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !16, !306}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!307 = !{!308, !309, !310, !311, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329}
!308 = !DILocalVariable(name: "registers", arg: 1, scope: !303, file: !1, line: 519, type: !16)
!309 = !DILocalVariable(name: "reghisto", arg: 2, scope: !303, file: !1, line: 519, type: !306)
!310 = !DILocalVariable(name: "j", scope: !303, file: !1, line: 520, type: !15)
!311 = !DILocalVariable(name: "r", scope: !312, file: !1, line: 526, type: !16)
!312 = distinct !DILexicalBlock(scope: !313, file: !1, line: 525, column: 50)
!313 = distinct !DILexicalBlock(scope: !303, file: !1, line: 525, column: 9)
!314 = !DILocalVariable(name: "r0", scope: !312, file: !1, line: 527, type: !14)
!315 = !DILocalVariable(name: "r1", scope: !312, file: !1, line: 527, type: !14)
!316 = !DILocalVariable(name: "r2", scope: !312, file: !1, line: 527, type: !14)
!317 = !DILocalVariable(name: "r3", scope: !312, file: !1, line: 527, type: !14)
!318 = !DILocalVariable(name: "r4", scope: !312, file: !1, line: 527, type: !14)
!319 = !DILocalVariable(name: "r5", scope: !312, file: !1, line: 527, type: !14)
!320 = !DILocalVariable(name: "r6", scope: !312, file: !1, line: 527, type: !14)
!321 = !DILocalVariable(name: "r7", scope: !312, file: !1, line: 527, type: !14)
!322 = !DILocalVariable(name: "r8", scope: !312, file: !1, line: 527, type: !14)
!323 = !DILocalVariable(name: "r9", scope: !312, file: !1, line: 527, type: !14)
!324 = !DILocalVariable(name: "r10", scope: !312, file: !1, line: 528, type: !14)
!325 = !DILocalVariable(name: "r11", scope: !312, file: !1, line: 528, type: !14)
!326 = !DILocalVariable(name: "r12", scope: !312, file: !1, line: 528, type: !14)
!327 = !DILocalVariable(name: "r13", scope: !312, file: !1, line: 528, type: !14)
!328 = !DILocalVariable(name: "r14", scope: !312, file: !1, line: 528, type: !14)
!329 = !DILocalVariable(name: "r15", scope: !312, file: !1, line: 528, type: !14)
!330 = !DILocation(line: 519, column: 32, scope: !303)
!331 = !DILocation(line: 519, column: 48, scope: !303)
!332 = !DILocation(line: 526, column: 18, scope: !312)
!333 = !DILocation(line: 520, column: 9, scope: !303)
!334 = !DILocation(line: 529, column: 14, scope: !335)
!335 = distinct !DILexicalBlock(scope: !312, file: !1, line: 529, column: 9)
!336 = !DILocation(line: 529, column: 9, scope: !335)
!337 = !DILocation(line: 531, column: 18, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !1, line: 529, column: 36)
!339 = distinct !DILexicalBlock(scope: !335, file: !1, line: 529, column: 9)
!340 = !DILocation(line: 531, column: 23, scope: !338)
!341 = !DILocation(line: 527, column: 23, scope: !312)
!342 = !DILocation(line: 532, column: 24, scope: !338)
!343 = !DILocation(line: 532, column: 31, scope: !338)
!344 = !DILocation(line: 532, column: 36, scope: !338)
!345 = !DILocation(line: 532, column: 42, scope: !338)
!346 = !DILocation(line: 532, column: 18, scope: !338)
!347 = !DILocation(line: 527, column: 27, scope: !312)
!348 = !DILocation(line: 533, column: 24, scope: !338)
!349 = !DILocation(line: 533, column: 31, scope: !338)
!350 = !DILocation(line: 533, column: 36, scope: !338)
!351 = !DILocation(line: 533, column: 42, scope: !338)
!352 = !DILocation(line: 533, column: 18, scope: !338)
!353 = !DILocation(line: 527, column: 31, scope: !312)
!354 = !DILocation(line: 534, column: 24, scope: !338)
!355 = !DILocation(line: 534, column: 18, scope: !338)
!356 = !DILocation(line: 527, column: 35, scope: !312)
!357 = !DILocation(line: 535, column: 18, scope: !338)
!358 = !DILocation(line: 535, column: 23, scope: !338)
!359 = !DILocation(line: 527, column: 39, scope: !312)
!360 = !DILocation(line: 536, column: 24, scope: !338)
!361 = !DILocation(line: 536, column: 31, scope: !338)
!362 = !DILocation(line: 536, column: 36, scope: !338)
!363 = !DILocation(line: 536, column: 42, scope: !338)
!364 = !DILocation(line: 536, column: 18, scope: !338)
!365 = !DILocation(line: 527, column: 43, scope: !312)
!366 = !DILocation(line: 537, column: 24, scope: !338)
!367 = !DILocation(line: 537, column: 31, scope: !338)
!368 = !DILocation(line: 537, column: 36, scope: !338)
!369 = !DILocation(line: 537, column: 42, scope: !338)
!370 = !DILocation(line: 537, column: 18, scope: !338)
!371 = !DILocation(line: 527, column: 47, scope: !312)
!372 = !DILocation(line: 538, column: 24, scope: !338)
!373 = !DILocation(line: 538, column: 18, scope: !338)
!374 = !DILocation(line: 527, column: 51, scope: !312)
!375 = !DILocation(line: 539, column: 18, scope: !338)
!376 = !DILocation(line: 539, column: 23, scope: !338)
!377 = !DILocation(line: 527, column: 55, scope: !312)
!378 = !DILocation(line: 540, column: 24, scope: !338)
!379 = !DILocation(line: 540, column: 31, scope: !338)
!380 = !DILocation(line: 540, column: 36, scope: !338)
!381 = !DILocation(line: 540, column: 42, scope: !338)
!382 = !DILocation(line: 540, column: 18, scope: !338)
!383 = !DILocation(line: 527, column: 59, scope: !312)
!384 = !DILocation(line: 541, column: 25, scope: !338)
!385 = !DILocation(line: 541, column: 32, scope: !338)
!386 = !DILocation(line: 541, column: 37, scope: !338)
!387 = !DILocation(line: 541, column: 43, scope: !338)
!388 = !DILocation(line: 541, column: 19, scope: !338)
!389 = !DILocation(line: 528, column: 23, scope: !312)
!390 = !DILocation(line: 542, column: 25, scope: !338)
!391 = !DILocation(line: 542, column: 19, scope: !338)
!392 = !DILocation(line: 528, column: 28, scope: !312)
!393 = !DILocation(line: 543, column: 19, scope: !338)
!394 = !DILocation(line: 543, column: 24, scope: !338)
!395 = !DILocation(line: 528, column: 33, scope: !312)
!396 = !DILocation(line: 544, column: 25, scope: !338)
!397 = !DILocation(line: 544, column: 32, scope: !338)
!398 = !DILocation(line: 544, column: 38, scope: !338)
!399 = !DILocation(line: 544, column: 44, scope: !338)
!400 = !DILocation(line: 544, column: 19, scope: !338)
!401 = !DILocation(line: 528, column: 38, scope: !312)
!402 = !DILocation(line: 545, column: 26, scope: !338)
!403 = !DILocation(line: 545, column: 33, scope: !338)
!404 = !DILocation(line: 545, column: 39, scope: !338)
!405 = !DILocation(line: 545, column: 45, scope: !338)
!406 = !DILocation(line: 545, column: 19, scope: !338)
!407 = !DILocation(line: 528, column: 43, scope: !312)
!408 = !DILocation(line: 546, column: 26, scope: !338)
!409 = !DILocation(line: 546, column: 19, scope: !338)
!410 = !DILocation(line: 528, column: 48, scope: !312)
!411 = !DILocation(line: 548, column: 13, scope: !338)
!412 = !DILocation(line: 548, column: 25, scope: !338)
!413 = !{!414, !414, i64 0}
!414 = !{!"int", !127, i64 0}
!415 = !DILocation(line: 549, column: 13, scope: !338)
!416 = !DILocation(line: 549, column: 25, scope: !338)
!417 = !DILocation(line: 550, column: 13, scope: !338)
!418 = !DILocation(line: 550, column: 25, scope: !338)
!419 = !DILocation(line: 551, column: 13, scope: !338)
!420 = !DILocation(line: 551, column: 25, scope: !338)
!421 = !DILocation(line: 552, column: 13, scope: !338)
!422 = !DILocation(line: 552, column: 25, scope: !338)
!423 = !DILocation(line: 553, column: 13, scope: !338)
!424 = !DILocation(line: 553, column: 25, scope: !338)
!425 = !DILocation(line: 554, column: 13, scope: !338)
!426 = !DILocation(line: 554, column: 25, scope: !338)
!427 = !DILocation(line: 555, column: 13, scope: !338)
!428 = !DILocation(line: 555, column: 25, scope: !338)
!429 = !DILocation(line: 556, column: 13, scope: !338)
!430 = !DILocation(line: 556, column: 25, scope: !338)
!431 = !DILocation(line: 557, column: 13, scope: !338)
!432 = !DILocation(line: 557, column: 25, scope: !338)
!433 = !DILocation(line: 558, column: 13, scope: !338)
!434 = !DILocation(line: 558, column: 26, scope: !338)
!435 = !DILocation(line: 559, column: 13, scope: !338)
!436 = !DILocation(line: 559, column: 26, scope: !338)
!437 = !DILocation(line: 560, column: 13, scope: !338)
!438 = !DILocation(line: 560, column: 26, scope: !338)
!439 = !DILocation(line: 561, column: 13, scope: !338)
!440 = !DILocation(line: 561, column: 26, scope: !338)
!441 = !DILocation(line: 562, column: 13, scope: !338)
!442 = !DILocation(line: 562, column: 26, scope: !338)
!443 = !DILocation(line: 563, column: 13, scope: !338)
!444 = !DILocation(line: 563, column: 26, scope: !338)
!445 = !DILocation(line: 565, column: 15, scope: !338)
!446 = !DILocation(line: 529, column: 32, scope: !339)
!447 = !DILocation(line: 529, column: 9, scope: !339)
!448 = !DILocation(line: 529, column: 23, scope: !339)
!449 = distinct !{!449, !336, !450}
!450 = !DILocation(line: 566, column: 9, scope: !335)
!451 = !DILocation(line: 574, column: 1, scope: !303)
!452 = distinct !DISubprogram(name: "hllSparseToDense", scope: !1, file: !1, line: 584, type: !453, isLocal: false, isDefinition: true, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !465)
!453 = !DISubroutineType(types: !454)
!454 = !{!15, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !457, line: 622, baseType: !458)
!457 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !457, line: 614, size: 128, elements: !459)
!459 = !{!460, !461, !462, !463, !464}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !458, file: !457, line: 615, baseType: !72, size: 4, flags: DIFlagBitField, extraData: i64 0)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !458, file: !457, line: 616, baseType: !72, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !458, file: !457, line: 617, baseType: !72, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !458, file: !457, line: 620, baseType: !15, size: 32, offset: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !458, file: !457, line: 621, baseType: !42, size: 64, offset: 64)
!465 = !{!466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !483, !484, !485, !486}
!466 = !DILocalVariable(name: "o", arg: 1, scope: !452, file: !1, line: 584, type: !455)
!467 = !DILocalVariable(name: "sparse", scope: !452, file: !1, line: 585, type: !38)
!468 = !DILocalVariable(name: "dense", scope: !452, file: !1, line: 585, type: !38)
!469 = !DILocalVariable(name: "hdr", scope: !452, file: !1, line: 586, type: !17)
!470 = !DILocalVariable(name: "oldhdr", scope: !452, file: !1, line: 586, type: !17)
!471 = !DILocalVariable(name: "idx", scope: !452, file: !1, line: 587, type: !15)
!472 = !DILocalVariable(name: "runlen", scope: !452, file: !1, line: 587, type: !15)
!473 = !DILocalVariable(name: "regval", scope: !452, file: !1, line: 587, type: !15)
!474 = !DILocalVariable(name: "p", scope: !452, file: !1, line: 588, type: !16)
!475 = !DILocalVariable(name: "end", scope: !452, file: !1, line: 588, type: !16)
!476 = !DILocalVariable(name: "_p", scope: !477, file: !1, line: 619, type: !16)
!477 = distinct !DILexicalBlock(scope: !478, file: !1, line: 619, column: 17)
!478 = distinct !DILexicalBlock(scope: !479, file: !1, line: 618, column: 29)
!479 = distinct !DILexicalBlock(scope: !480, file: !1, line: 614, column: 16)
!480 = distinct !DILexicalBlock(scope: !481, file: !1, line: 610, column: 20)
!481 = distinct !DILexicalBlock(scope: !482, file: !1, line: 606, column: 13)
!482 = distinct !DILexicalBlock(scope: !452, file: !1, line: 605, column: 20)
!483 = !DILocalVariable(name: "_byte", scope: !477, file: !1, line: 619, type: !14)
!484 = !DILocalVariable(name: "_fb", scope: !477, file: !1, line: 619, type: !14)
!485 = !DILocalVariable(name: "_fb8", scope: !477, file: !1, line: 619, type: !14)
!486 = !DILocalVariable(name: "_v", scope: !477, file: !1, line: 619, type: !14)
!487 = !DILocation(line: 584, column: 28, scope: !452)
!488 = !DILocation(line: 585, column: 21, scope: !452)
!489 = !{!490, !491, i64 8}
!490 = !{!"redisObject", !414, i64 0, !414, i64 0, !414, i64 1, !414, i64 4, !491, i64 8}
!491 = !{!"any pointer", !127, i64 0}
!492 = !DILocation(line: 585, column: 9, scope: !452)
!493 = !DILocation(line: 586, column: 26, scope: !452)
!494 = !DILocation(line: 587, column: 9, scope: !452)
!495 = !DILocation(line: 588, column: 14, scope: !452)
!496 = !DILocalVariable(name: "s", arg: 1, scope: !497, file: !39, line: 87, type: !502)
!497 = distinct !DISubprogram(name: "sdslen", scope: !39, file: !39, line: 87, type: !498, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !503)
!498 = !DISubroutineType(types: !499)
!499 = !{!500, !502}
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !501, line: 58, baseType: !14)
!501 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!503 = !{!496, !504}
!504 = !DILocalVariable(name: "flags", scope: !497, file: !39, line: 88, type: !10)
!505 = !DILocation(line: 87, column: 39, scope: !497, inlinedAt: !506)
!506 = distinct !DILocation(line: 588, column: 45, scope: !452)
!507 = !DILocation(line: 88, column: 27, scope: !497, inlinedAt: !506)
!508 = !DILocation(line: 88, column: 19, scope: !497, inlinedAt: !506)
!509 = !DILocation(line: 89, column: 5, scope: !497, inlinedAt: !506)
!510 = !DILocation(line: 91, column: 20, scope: !511, inlinedAt: !506)
!511 = distinct !DILexicalBlock(scope: !497, file: !39, line: 89, column: 33)
!512 = !DILocation(line: 91, column: 13, scope: !511, inlinedAt: !506)
!513 = !DILocation(line: 93, column: 20, scope: !511, inlinedAt: !506)
!514 = !DILocation(line: 93, column: 34, scope: !511, inlinedAt: !506)
!515 = !DILocation(line: 93, column: 13, scope: !511, inlinedAt: !506)
!516 = !DILocation(line: 95, column: 20, scope: !511, inlinedAt: !506)
!517 = !DILocation(line: 95, column: 35, scope: !511, inlinedAt: !506)
!518 = !{!519, !519, i64 0}
!519 = !{!"short", !127, i64 0}
!520 = !DILocation(line: 95, column: 13, scope: !511, inlinedAt: !506)
!521 = !DILocation(line: 97, column: 20, scope: !511, inlinedAt: !506)
!522 = !DILocation(line: 97, column: 35, scope: !511, inlinedAt: !506)
!523 = !DILocation(line: 97, column: 13, scope: !511, inlinedAt: !506)
!524 = !DILocation(line: 99, column: 20, scope: !511, inlinedAt: !506)
!525 = !DILocation(line: 99, column: 35, scope: !511, inlinedAt: !506)
!526 = !DILocation(line: 99, column: 13, scope: !511, inlinedAt: !506)
!527 = !DILocation(line: 0, scope: !511, inlinedAt: !506)
!528 = !DILocation(line: 0, scope: !452)
!529 = !DILocation(line: 102, column: 1, scope: !497, inlinedAt: !506)
!530 = !DILocation(line: 588, column: 44, scope: !452)
!531 = !DILocation(line: 588, column: 37, scope: !452)
!532 = !DILocation(line: 586, column: 20, scope: !452)
!533 = !DILocation(line: 592, column: 14, scope: !534)
!534 = distinct !DILexicalBlock(scope: !452, file: !1, line: 592, column: 9)
!535 = !DILocation(line: 592, column: 23, scope: !534)
!536 = !DILocation(line: 592, column: 9, scope: !452)
!537 = !DILocation(line: 597, column: 13, scope: !452)
!538 = !DILocation(line: 585, column: 26, scope: !452)
!539 = !DILocation(line: 599, column: 12, scope: !452)
!540 = !DILocation(line: 600, column: 10, scope: !452)
!541 = !DILocation(line: 600, column: 19, scope: !452)
!542 = !DILocation(line: 605, column: 5, scope: !452)
!543 = !DILocation(line: 605, column: 13, scope: !452)
!544 = !DILocation(line: 628, column: 9, scope: !452)
!545 = !DILocation(line: 604, column: 7, scope: !452)
!546 = !DILocation(line: 606, column: 13, scope: !481)
!547 = !DILocation(line: 606, column: 13, scope: !482)
!548 = !DILocation(line: 607, column: 22, scope: !549)
!549 = distinct !DILexicalBlock(scope: !481, file: !1, line: 606, column: 36)
!550 = !DILocation(line: 587, column: 18, scope: !452)
!551 = !DILocation(line: 608, column: 17, scope: !549)
!552 = !DILocation(line: 610, column: 9, scope: !549)
!553 = !DILocation(line: 610, column: 20, scope: !480)
!554 = !DILocation(line: 610, column: 20, scope: !481)
!555 = !DILocation(line: 611, column: 22, scope: !556)
!556 = distinct !DILexicalBlock(scope: !480, file: !1, line: 610, column: 44)
!557 = !DILocation(line: 612, column: 17, scope: !556)
!558 = !DILocation(line: 614, column: 9, scope: !556)
!559 = !DILocation(line: 615, column: 22, scope: !479)
!560 = !DILocation(line: 617, column: 25, scope: !561)
!561 = distinct !DILexicalBlock(scope: !479, file: !1, line: 617, column: 17)
!562 = !DILocation(line: 617, column: 32, scope: !561)
!563 = !DILocation(line: 617, column: 17, scope: !479)
!564 = !DILocation(line: 616, column: 22, scope: !479)
!565 = !DILocation(line: 587, column: 26, scope: !452)
!566 = !DILocation(line: 618, column: 13, scope: !479)
!567 = !DILocation(line: 619, column: 17, scope: !477)
!568 = distinct !{!568, !566, !569}
!569 = !DILocation(line: 621, column: 13, scope: !479)
!570 = !DILocation(line: 0, scope: !549)
!571 = distinct !{!571, !542, !572}
!572 = !DILocation(line: 624, column: 5, scope: !452)
!573 = !DILocation(line: 628, column: 13, scope: !574)
!574 = distinct !DILexicalBlock(scope: !452, file: !1, line: 628, column: 9)
!575 = !DILocation(line: 629, column: 9, scope: !576)
!576 = distinct !DILexicalBlock(scope: !574, file: !1, line: 628, column: 31)
!577 = !DILocation(line: 630, column: 9, scope: !576)
!578 = !DILocation(line: 634, column: 16, scope: !452)
!579 = !DILocation(line: 634, column: 5, scope: !452)
!580 = !DILocation(line: 635, column: 12, scope: !452)
!581 = !DILocation(line: 636, column: 5, scope: !452)
!582 = !DILocation(line: 0, scope: !534)
!583 = !DILocation(line: 637, column: 1, scope: !452)
!584 = distinct !DISubprogram(name: "hllSparseSet", scope: !1, file: !1, line: 654, type: !585, isLocal: false, isDefinition: true, scopeLine: 654, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !587)
!585 = !DISubroutineType(types: !586)
!586 = !{!15, !455, !46, !6}
!587 = !{!588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !606, !610, !611, !612, !613, !621, !627, !629, !630, !631, !632, !633, !637, !638, !641}
!588 = !DILocalVariable(name: "o", arg: 1, scope: !584, file: !1, line: 654, type: !455)
!589 = !DILocalVariable(name: "index", arg: 2, scope: !584, file: !1, line: 654, type: !46)
!590 = !DILocalVariable(name: "count", arg: 3, scope: !584, file: !1, line: 654, type: !6)
!591 = !DILocalVariable(name: "hdr", scope: !584, file: !1, line: 655, type: !17)
!592 = !DILocalVariable(name: "oldcount", scope: !584, file: !1, line: 656, type: !6)
!593 = !DILocalVariable(name: "sparse", scope: !584, file: !1, line: 656, type: !16)
!594 = !DILocalVariable(name: "end", scope: !584, file: !1, line: 656, type: !16)
!595 = !DILocalVariable(name: "p", scope: !584, file: !1, line: 656, type: !16)
!596 = !DILocalVariable(name: "prev", scope: !584, file: !1, line: 656, type: !16)
!597 = !DILocalVariable(name: "next", scope: !584, file: !1, line: 656, type: !16)
!598 = !DILocalVariable(name: "first", scope: !584, file: !1, line: 657, type: !46)
!599 = !DILocalVariable(name: "span", scope: !584, file: !1, line: 657, type: !46)
!600 = !DILocalVariable(name: "is_zero", scope: !584, file: !1, line: 658, type: !46)
!601 = !DILocalVariable(name: "is_xzero", scope: !584, file: !1, line: 658, type: !46)
!602 = !DILocalVariable(name: "is_val", scope: !584, file: !1, line: 658, type: !46)
!603 = !DILocalVariable(name: "runlen", scope: !584, file: !1, line: 658, type: !46)
!604 = !DILocalVariable(name: "oplen", scope: !605, file: !1, line: 681, type: !46)
!605 = distinct !DILexicalBlock(scope: !584, file: !1, line: 680, column: 20)
!606 = !DILocalVariable(name: "seq", scope: !584, file: !1, line: 777, type: !607)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 40, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 5)
!610 = !DILocalVariable(name: "n", scope: !584, file: !1, line: 777, type: !16)
!611 = !DILocalVariable(name: "last", scope: !584, file: !1, line: 778, type: !15)
!612 = !DILocalVariable(name: "len", scope: !584, file: !1, line: 779, type: !15)
!613 = !DILocalVariable(name: "_l", scope: !614, file: !1, line: 786, type: !15)
!614 = distinct !DILexicalBlock(scope: !615, file: !1, line: 786, column: 17)
!615 = distinct !DILexicalBlock(scope: !616, file: !1, line: 785, column: 48)
!616 = distinct !DILexicalBlock(scope: !617, file: !1, line: 785, column: 17)
!617 = distinct !DILexicalBlock(scope: !618, file: !1, line: 783, column: 29)
!618 = distinct !DILexicalBlock(scope: !619, file: !1, line: 783, column: 13)
!619 = distinct !DILexicalBlock(scope: !620, file: !1, line: 781, column: 30)
!620 = distinct !DILexicalBlock(scope: !584, file: !1, line: 781, column: 9)
!621 = !DILocalVariable(name: "_l", scope: !622, file: !1, line: 798, type: !15)
!622 = distinct !DILexicalBlock(scope: !623, file: !1, line: 798, column: 17)
!623 = distinct !DILexicalBlock(scope: !624, file: !1, line: 797, column: 48)
!624 = distinct !DILexicalBlock(scope: !625, file: !1, line: 797, column: 17)
!625 = distinct !DILexicalBlock(scope: !626, file: !1, line: 795, column: 28)
!626 = distinct !DILexicalBlock(scope: !619, file: !1, line: 795, column: 13)
!627 = !DILocalVariable(name: "curval", scope: !628, file: !1, line: 807, type: !15)
!628 = distinct !DILexicalBlock(scope: !620, file: !1, line: 805, column: 12)
!629 = !DILocalVariable(name: "seqlen", scope: !584, file: !1, line: 827, type: !15)
!630 = !DILocalVariable(name: "oldlen", scope: !584, file: !1, line: 828, type: !15)
!631 = !DILocalVariable(name: "deltalen", scope: !584, file: !1, line: 829, type: !15)
!632 = !DILocalVariable(name: "scanlen", scope: !584, file: !1, line: 845, type: !15)
!633 = !DILocalVariable(name: "v1", scope: !634, file: !1, line: 857, type: !15)
!634 = distinct !DILexicalBlock(scope: !635, file: !1, line: 856, column: 50)
!635 = distinct !DILexicalBlock(scope: !636, file: !1, line: 856, column: 13)
!636 = distinct !DILexicalBlock(scope: !584, file: !1, line: 846, column: 34)
!637 = !DILocalVariable(name: "v2", scope: !634, file: !1, line: 858, type: !15)
!638 = !DILocalVariable(name: "len", scope: !639, file: !1, line: 860, type: !15)
!639 = distinct !DILexicalBlock(scope: !640, file: !1, line: 859, column: 27)
!640 = distinct !DILexicalBlock(scope: !634, file: !1, line: 859, column: 17)
!641 = !DILocalVariable(name: "dense_retval", scope: !584, file: !1, line: 892, type: !15)
!642 = !DILocation(line: 654, column: 24, scope: !584)
!643 = !DILocation(line: 654, column: 32, scope: !584)
!644 = !DILocation(line: 654, column: 47, scope: !584)
!645 = !DILocation(line: 658, column: 10, scope: !584)
!646 = !DILocation(line: 658, column: 23, scope: !584)
!647 = !DILocation(line: 658, column: 37, scope: !584)
!648 = !DILocation(line: 658, column: 49, scope: !584)
!649 = !DILocation(line: 662, column: 15, scope: !650)
!650 = distinct !DILexicalBlock(scope: !584, file: !1, line: 662, column: 9)
!651 = !DILocation(line: 662, column: 9, scope: !584)
!652 = !DILocation(line: 669, column: 32, scope: !584)
!653 = !DILocation(line: 669, column: 14, scope: !584)
!654 = !DILocation(line: 669, column: 12, scope: !584)
!655 = !DILocation(line: 656, column: 39, scope: !584)
!656 = !DILocation(line: 656, column: 24, scope: !584)
!657 = !DILocation(line: 87, column: 39, scope: !497, inlinedAt: !658)
!658 = distinct !DILocation(line: 674, column: 15, scope: !584)
!659 = !DILocation(line: 88, column: 27, scope: !497, inlinedAt: !658)
!660 = !DILocation(line: 88, column: 19, scope: !497, inlinedAt: !658)
!661 = !DILocation(line: 89, column: 5, scope: !497, inlinedAt: !658)
!662 = !DILocation(line: 91, column: 20, scope: !511, inlinedAt: !658)
!663 = !DILocation(line: 91, column: 13, scope: !511, inlinedAt: !658)
!664 = !DILocation(line: 93, column: 20, scope: !511, inlinedAt: !658)
!665 = !DILocation(line: 93, column: 34, scope: !511, inlinedAt: !658)
!666 = !DILocation(line: 93, column: 13, scope: !511, inlinedAt: !658)
!667 = !DILocation(line: 95, column: 20, scope: !511, inlinedAt: !658)
!668 = !DILocation(line: 95, column: 35, scope: !511, inlinedAt: !658)
!669 = !DILocation(line: 95, column: 13, scope: !511, inlinedAt: !658)
!670 = !DILocation(line: 97, column: 20, scope: !511, inlinedAt: !658)
!671 = !DILocation(line: 97, column: 35, scope: !511, inlinedAt: !658)
!672 = !DILocation(line: 97, column: 13, scope: !511, inlinedAt: !658)
!673 = !DILocation(line: 99, column: 20, scope: !511, inlinedAt: !658)
!674 = !DILocation(line: 99, column: 35, scope: !511, inlinedAt: !658)
!675 = !DILocation(line: 99, column: 13, scope: !511, inlinedAt: !658)
!676 = !DILocation(line: 101, column: 5, scope: !497, inlinedAt: !658)
!677 = !DILocation(line: 102, column: 1, scope: !497, inlinedAt: !658)
!678 = !DILocation(line: 656, column: 33, scope: !584)
!679 = !DILocation(line: 657, column: 10, scope: !584)
!680 = !DILocation(line: 656, column: 43, scope: !584)
!681 = !DILocation(line: 656, column: 50, scope: !584)
!682 = !DILocation(line: 657, column: 17, scope: !584)
!683 = !DILocation(line: 680, column: 5, scope: !584)
!684 = !DILocation(line: 0, scope: !511, inlinedAt: !658)
!685 = !DILocation(line: 0, scope: !584)
!686 = !DILocation(line: 680, column: 13, scope: !584)
!687 = !DILocation(line: 681, column: 14, scope: !605)
!688 = !DILocation(line: 689, column: 13, scope: !689)
!689 = distinct !DILexicalBlock(scope: !605, file: !1, line: 689, column: 13)
!690 = !DILocation(line: 689, column: 13, scope: !605)
!691 = !DILocation(line: 690, column: 20, scope: !692)
!692 = distinct !DILexicalBlock(scope: !689, file: !1, line: 689, column: 36)
!693 = !DILocation(line: 691, column: 9, scope: !692)
!694 = !DILocation(line: 691, column: 20, scope: !695)
!695 = distinct !DILexicalBlock(scope: !689, file: !1, line: 691, column: 20)
!696 = !DILocation(line: 691, column: 20, scope: !689)
!697 = !DILocation(line: 692, column: 20, scope: !698)
!698 = distinct !DILexicalBlock(scope: !695, file: !1, line: 691, column: 42)
!699 = !DILocation(line: 693, column: 9, scope: !698)
!700 = !DILocation(line: 694, column: 20, scope: !701)
!701 = distinct !DILexicalBlock(scope: !695, file: !1, line: 693, column: 16)
!702 = !DILocation(line: 0, scope: !701)
!703 = !DILocation(line: 698, column: 27, scope: !704)
!704 = distinct !DILexicalBlock(scope: !605, file: !1, line: 698, column: 13)
!705 = !DILocation(line: 698, column: 19, scope: !704)
!706 = !DILocation(line: 698, column: 13, scope: !605)
!707 = !DILocation(line: 698, column: 36, scope: !704)
!708 = !DILocation(line: 703, column: 19, scope: !709)
!709 = distinct !DILexicalBlock(scope: !584, file: !1, line: 703, column: 9)
!710 = !DILocation(line: 700, column: 11, scope: !605)
!711 = !DILocation(line: 702, column: 5, scope: !584)
!712 = !DILocation(line: 703, column: 24, scope: !709)
!713 = !DILocation(line: 703, column: 9, scope: !584)
!714 = !DILocation(line: 705, column: 12, scope: !584)
!715 = !DILocation(line: 706, column: 14, scope: !716)
!716 = distinct !DILexicalBlock(scope: !584, file: !1, line: 706, column: 9)
!717 = !DILocation(line: 706, column: 9, scope: !584)
!718 = !DILocation(line: 711, column: 9, scope: !719)
!719 = distinct !DILexicalBlock(scope: !584, file: !1, line: 711, column: 9)
!720 = !DILocation(line: 711, column: 9, scope: !584)
!721 = !DILocation(line: 714, column: 16, scope: !719)
!722 = !DILocation(line: 743, column: 9, scope: !584)
!723 = !DILocation(line: 744, column: 20, scope: !724)
!724 = distinct !DILexicalBlock(scope: !725, file: !1, line: 743, column: 17)
!725 = distinct !DILexicalBlock(scope: !584, file: !1, line: 743, column: 9)
!726 = !DILocation(line: 656, column: 13, scope: !584)
!727 = !DILocation(line: 746, column: 22, scope: !728)
!728 = distinct !DILexicalBlock(scope: !724, file: !1, line: 746, column: 13)
!729 = !DILocation(line: 746, column: 13, scope: !724)
!730 = !DILocation(line: 719, column: 18, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !1, line: 717, column: 12)
!732 = distinct !DILexicalBlock(scope: !719, file: !1, line: 714, column: 16)
!733 = !DILocation(line: 749, column: 20, scope: !734)
!734 = distinct !DILexicalBlock(scope: !724, file: !1, line: 749, column: 13)
!735 = !DILocation(line: 749, column: 13, scope: !724)
!736 = !DILocation(line: 750, column: 13, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !1, line: 750, column: 13)
!738 = distinct !DILexicalBlock(scope: !734, file: !1, line: 749, column: 26)
!739 = !DILocation(line: 751, column: 13, scope: !738)
!740 = !DILocation(line: 713, column: 18, scope: !741)
!741 = distinct !DILexicalBlock(scope: !719, file: !1, line: 711, column: 32)
!742 = !DILocation(line: 714, column: 5, scope: !741)
!743 = !DILocation(line: 757, column: 27, scope: !744)
!744 = distinct !DILexicalBlock(scope: !584, file: !1, line: 757, column: 9)
!745 = !DILocation(line: 757, column: 17, scope: !744)
!746 = !DILocation(line: 758, column: 9, scope: !747)
!747 = distinct !DILexicalBlock(scope: !748, file: !1, line: 758, column: 9)
!748 = distinct !DILexicalBlock(scope: !744, file: !1, line: 757, column: 33)
!749 = !DILocation(line: 759, column: 9, scope: !748)
!750 = !DILocation(line: 777, column: 26, scope: !584)
!751 = !DILocation(line: 777, column: 13, scope: !584)
!752 = !DILocation(line: 777, column: 22, scope: !584)
!753 = !DILocation(line: 778, column: 16, scope: !584)
!754 = !DILocation(line: 778, column: 9, scope: !584)
!755 = !DILocation(line: 781, column: 20, scope: !620)
!756 = !DILocation(line: 781, column: 17, scope: !620)
!757 = !DILocation(line: 783, column: 19, scope: !618)
!758 = !DILocation(line: 783, column: 13, scope: !619)
!759 = !DILocation(line: 784, column: 24, scope: !617)
!760 = !DILocation(line: 784, column: 19, scope: !617)
!761 = !DILocation(line: 779, column: 9, scope: !584)
!762 = !DILocation(line: 785, column: 21, scope: !616)
!763 = !DILocation(line: 785, column: 17, scope: !617)
!764 = !DILocation(line: 786, column: 17, scope: !614)
!765 = !DILocation(line: 788, column: 13, scope: !615)
!766 = !DILocation(line: 789, column: 17, scope: !767)
!767 = distinct !DILexicalBlock(scope: !768, file: !1, line: 789, column: 17)
!768 = distinct !DILexicalBlock(scope: !616, file: !1, line: 788, column: 20)
!769 = !DILocation(line: 0, scope: !615)
!770 = !DILocation(line: 793, column: 9, scope: !771)
!771 = distinct !DILexicalBlock(scope: !619, file: !1, line: 793, column: 9)
!772 = !DILocation(line: 794, column: 10, scope: !619)
!773 = !DILocation(line: 795, column: 22, scope: !626)
!774 = !DILocation(line: 795, column: 19, scope: !626)
!775 = !DILocation(line: 795, column: 13, scope: !619)
!776 = !DILocation(line: 796, column: 19, scope: !625)
!777 = !DILocation(line: 797, column: 21, scope: !624)
!778 = !DILocation(line: 797, column: 17, scope: !625)
!779 = !DILocation(line: 798, column: 17, scope: !622)
!780 = !DILocation(line: 799, column: 19, scope: !623)
!781 = !DILocation(line: 800, column: 13, scope: !623)
!782 = !DILocation(line: 801, column: 17, scope: !783)
!783 = distinct !DILexicalBlock(scope: !784, file: !1, line: 801, column: 17)
!784 = distinct !DILexicalBlock(scope: !624, file: !1, line: 800, column: 20)
!785 = !DILocation(line: 802, column: 18, scope: !784)
!786 = !DILocation(line: 807, column: 22, scope: !628)
!787 = !DILocation(line: 809, column: 19, scope: !788)
!788 = distinct !DILexicalBlock(scope: !628, file: !1, line: 809, column: 13)
!789 = !DILocation(line: 809, column: 13, scope: !628)
!790 = !DILocation(line: 810, column: 24, scope: !791)
!791 = distinct !DILexicalBlock(scope: !788, file: !1, line: 809, column: 29)
!792 = !DILocation(line: 810, column: 19, scope: !791)
!793 = !DILocation(line: 811, column: 13, scope: !794)
!794 = distinct !DILexicalBlock(scope: !791, file: !1, line: 811, column: 13)
!795 = !DILocation(line: 812, column: 14, scope: !791)
!796 = !DILocation(line: 813, column: 9, scope: !791)
!797 = !DILocation(line: 814, column: 9, scope: !798)
!798 = distinct !DILexicalBlock(scope: !628, file: !1, line: 814, column: 9)
!799 = !DILocation(line: 815, column: 10, scope: !628)
!800 = !DILocation(line: 816, column: 22, scope: !801)
!801 = distinct !DILexicalBlock(scope: !628, file: !1, line: 816, column: 13)
!802 = !DILocation(line: 816, column: 19, scope: !801)
!803 = !DILocation(line: 816, column: 13, scope: !628)
!804 = !DILocation(line: 817, column: 19, scope: !805)
!805 = distinct !DILexicalBlock(scope: !801, file: !1, line: 816, column: 28)
!806 = !DILocation(line: 818, column: 13, scope: !807)
!807 = distinct !DILexicalBlock(scope: !805, file: !1, line: 818, column: 13)
!808 = !DILocation(line: 819, column: 14, scope: !805)
!809 = !DILocation(line: 820, column: 9, scope: !805)
!810 = !DILocation(line: 827, column: 20, scope: !584)
!811 = !DILocation(line: 0, scope: !805)
!812 = !DILocation(line: 827, column: 19, scope: !584)
!813 = !DILocation(line: 827, column: 10, scope: !584)
!814 = !DILocation(line: 828, column: 19, scope: !584)
!815 = !DILocation(line: 828, column: 10, scope: !584)
!816 = !DILocation(line: 829, column: 27, scope: !584)
!817 = !DILocation(line: 829, column: 10, scope: !584)
!818 = !DILocation(line: 831, column: 19, scope: !819)
!819 = distinct !DILexicalBlock(scope: !584, file: !1, line: 831, column: 10)
!820 = !DILocation(line: 831, column: 23, scope: !819)
!821 = !DILocation(line: 87, column: 39, scope: !497, inlinedAt: !822)
!822 = distinct !DILocation(line: 832, column: 10, scope: !819)
!823 = !DILocation(line: 88, column: 27, scope: !497, inlinedAt: !822)
!824 = !DILocation(line: 88, column: 19, scope: !497, inlinedAt: !822)
!825 = !DILocation(line: 89, column: 5, scope: !497, inlinedAt: !822)
!826 = !DILocation(line: 91, column: 20, scope: !511, inlinedAt: !822)
!827 = !DILocation(line: 91, column: 13, scope: !511, inlinedAt: !822)
!828 = !DILocation(line: 93, column: 20, scope: !511, inlinedAt: !822)
!829 = !DILocation(line: 93, column: 34, scope: !511, inlinedAt: !822)
!830 = !DILocation(line: 93, column: 13, scope: !511, inlinedAt: !822)
!831 = !DILocation(line: 95, column: 20, scope: !511, inlinedAt: !822)
!832 = !DILocation(line: 95, column: 35, scope: !511, inlinedAt: !822)
!833 = !DILocation(line: 95, column: 13, scope: !511, inlinedAt: !822)
!834 = !DILocation(line: 97, column: 20, scope: !511, inlinedAt: !822)
!835 = !DILocation(line: 97, column: 35, scope: !511, inlinedAt: !822)
!836 = !DILocation(line: 97, column: 13, scope: !511, inlinedAt: !822)
!837 = !DILocation(line: 99, column: 20, scope: !511, inlinedAt: !822)
!838 = !DILocation(line: 99, column: 35, scope: !511, inlinedAt: !822)
!839 = !DILocation(line: 99, column: 13, scope: !511, inlinedAt: !822)
!840 = !DILocation(line: 0, scope: !511, inlinedAt: !822)
!841 = !DILocation(line: 0, scope: !819)
!842 = !DILocation(line: 102, column: 1, scope: !497, inlinedAt: !822)
!843 = !DILocation(line: 832, column: 25, scope: !819)
!844 = !DILocation(line: 832, column: 24, scope: !819)
!845 = !DILocation(line: 832, column: 43, scope: !819)
!846 = !{!847, !126, i64 2840}
!847 = !{!"redisServer", !414, i64 0, !491, i64 8, !491, i64 16, !491, i64 24, !414, i64 32, !414, i64 36, !414, i64 40, !491, i64 48, !491, i64 56, !491, i64 64, !491, i64 72, !414, i64 80, !414, i64 84, !414, i64 88, !414, i64 92, !491, i64 96, !491, i64 104, !414, i64 112, !414, i64 116, !127, i64 120, !414, i64 164, !126, i64 168, !414, i64 176, !491, i64 184, !491, i64 192, !491, i64 200, !127, i64 208, !414, i64 216, !414, i64 220, !127, i64 224, !414, i64 352, !491, i64 360, !414, i64 368, !127, i64 372, !414, i64 436, !414, i64 440, !127, i64 444, !414, i64 508, !491, i64 512, !491, i64 520, !491, i64 528, !491, i64 536, !491, i64 544, !491, i64 552, !491, i64 560, !414, i64 568, !848, i64 576, !127, i64 584, !491, i64 840, !126, i64 848, !414, i64 856, !414, i64 860, !126, i64 864, !126, i64 872, !126, i64 880, !126, i64 888, !491, i64 896, !491, i64 904, !491, i64 912, !491, i64 920, !491, i64 928, !491, i64 936, !491, i64 944, !491, i64 952, !491, i64 960, !491, i64 968, !491, i64 976, !491, i64 984, !491, i64 992, !126, i64 1000, !848, i64 1008, !848, i64 1016, !848, i64 1024, !849, i64 1032, !848, i64 1040, !848, i64 1048, !848, i64 1056, !848, i64 1064, !848, i64 1072, !848, i64 1080, !848, i64 1088, !848, i64 1096, !848, i64 1104, !126, i64 1112, !848, i64 1120, !849, i64 1128, !848, i64 1136, !848, i64 1144, !848, i64 1152, !848, i64 1160, !491, i64 1168, !848, i64 1176, !848, i64 1184, !126, i64 1192, !850, i64 1200, !848, i64 1240, !848, i64 1248, !126, i64 1256, !126, i64 1264, !127, i64 1272, !414, i64 1728, !414, i64 1732, !414, i64 1736, !414, i64 1740, !414, i64 1744, !126, i64 1752, !414, i64 1760, !414, i64 1764, !414, i64 1768, !414, i64 1772, !126, i64 1776, !126, i64 1784, !414, i64 1792, !414, i64 1796, !414, i64 1800, !414, i64 1804, !127, i64 1808, !414, i64 1880, !414, i64 1884, !491, i64 1888, !414, i64 1896, !414, i64 1900, !126, i64 1904, !126, i64 1912, !126, i64 1920, !126, i64 1928, !414, i64 1936, !414, i64 1940, !491, i64 1944, !491, i64 1952, !414, i64 1960, !414, i64 1964, !126, i64 1968, !126, i64 1976, !126, i64 1984, !126, i64 1992, !414, i64 2000, !126, i64 2008, !414, i64 2016, !414, i64 2020, !414, i64 2024, !414, i64 2028, !414, i64 2032, !414, i64 2036, !414, i64 2040, !414, i64 2044, !414, i64 2048, !414, i64 2052, !414, i64 2056, !414, i64 2060, !414, i64 2064, !491, i64 2072, !848, i64 2080, !848, i64 2088, !414, i64 2096, !491, i64 2104, !414, i64 2112, !491, i64 2120, !414, i64 2128, !414, i64 2132, !126, i64 2136, !126, i64 2144, !126, i64 2152, !126, i64 2160, !414, i64 2168, !414, i64 2172, !414, i64 2176, !414, i64 2180, !414, i64 2184, !414, i64 2188, !127, i64 2192, !851, i64 2200, !852, i64 2224, !491, i64 2240, !414, i64 2248, !491, i64 2256, !414, i64 2264, !127, i64 2268, !127, i64 2309, !848, i64 2352, !848, i64 2360, !414, i64 2368, !414, i64 2372, !491, i64 2376, !848, i64 2384, !848, i64 2392, !848, i64 2400, !848, i64 2408, !126, i64 2416, !126, i64 2424, !414, i64 2432, !414, i64 2436, !414, i64 2440, !414, i64 2444, !414, i64 2448, !491, i64 2456, !491, i64 2464, !414, i64 2472, !414, i64 2476, !491, i64 2480, !491, i64 2488, !414, i64 2496, !414, i64 2500, !126, i64 2504, !126, i64 2512, !126, i64 2520, !414, i64 2528, !414, i64 2532, !491, i64 2536, !126, i64 2544, !414, i64 2552, !414, i64 2556, !414, i64 2560, !126, i64 2568, !414, i64 2576, !414, i64 2580, !414, i64 2584, !491, i64 2592, !127, i64 2600, !848, i64 2648, !414, i64 2656, !491, i64 2664, !491, i64 2672, !414, i64 2680, !491, i64 2688, !414, i64 2696, !414, i64 2700, !848, i64 2704, !414, i64 2712, !414, i64 2716, !414, i64 2720, !414, i64 2724, !848, i64 2728, !414, i64 2736, !127, i64 2740, !491, i64 2768, !491, i64 2776, !414, i64 2784, !414, i64 2788, !414, i64 2792, !414, i64 2796, !126, i64 2800, !126, i64 2808, !126, i64 2816, !126, i64 2824, !126, i64 2832, !126, i64 2840, !126, i64 2848, !126, i64 2856, !414, i64 2864, !414, i64 2868, !126, i64 2872, !126, i64 2880, !414, i64 2888, !848, i64 2896, !491, i64 2904, !491, i64 2912, !414, i64 2920, !414, i64 2924, !848, i64 2928, !491, i64 2936, !491, i64 2944, !414, i64 2952, !414, i64 2956, !414, i64 2960, !414, i64 2964, !491, i64 2968, !414, i64 2976, !414, i64 2980, !414, i64 2984, !491, i64 2992, !491, i64 3000, !491, i64 3008, !491, i64 3016, !848, i64 3024, !848, i64 3032, !848, i64 3040, !414, i64 3048, !414, i64 3052, !414, i64 3056, !414, i64 3060, !414, i64 3064, !414, i64 3068, !414, i64 3072, !414, i64 3076, !414, i64 3080, !414, i64 3084, !414, i64 3088, !848, i64 3096, !491, i64 3104, !491, i64 3112, !491, i64 3120, !414, i64 3128, !414, i64 3132, !414, i64 3136, !126, i64 3144, !491, i64 3152, !491, i64 3160, !491, i64 3168}
!848 = !{!"long long", !127, i64 0}
!849 = !{!"double", !127, i64 0}
!850 = !{!"malloc_stats", !126, i64 0, !126, i64 8, !126, i64 16, !126, i64 24, !126, i64 32}
!851 = !{!"", !414, i64 0, !126, i64 8, !848, i64 16}
!852 = !{!"redisOpArray", !491, i64 0, !414, i64 8}
!853 = !DILocation(line: 832, column: 34, scope: !819)
!854 = !DILocation(line: 831, column: 10, scope: !584)
!855 = !DILocation(line: 833, column: 10, scope: !856)
!856 = distinct !DILexicalBlock(scope: !584, file: !1, line: 833, column: 10)
!857 = !DILocation(line: 833, column: 19, scope: !856)
!858 = !DILocation(line: 833, column: 40, scope: !856)
!859 = !DILocation(line: 833, column: 58, scope: !856)
!860 = !DILocation(line: 833, column: 28, scope: !856)
!861 = !DILocation(line: 834, column: 20, scope: !584)
!862 = !DILocation(line: 834, column: 6, scope: !584)
!863 = !DILocation(line: 835, column: 19, scope: !584)
!864 = !DILocation(line: 835, column: 6, scope: !584)
!865 = !DILocation(line: 836, column: 10, scope: !584)
!866 = !DILocation(line: 836, column: 6, scope: !584)
!867 = !DILocation(line: 0, scope: !738)
!868 = !DILocation(line: 844, column: 9, scope: !584)
!869 = !DILocation(line: 845, column: 9, scope: !584)
!870 = !DILocation(line: 846, column: 5, scope: !584)
!871 = !DILocation(line: 846, column: 14, scope: !584)
!872 = !DILocation(line: 846, column: 20, scope: !584)
!873 = !DILocation(line: 846, column: 30, scope: !584)
!874 = !DILocation(line: 847, column: 13, scope: !875)
!875 = distinct !DILexicalBlock(scope: !636, file: !1, line: 847, column: 13)
!876 = !DILocation(line: 847, column: 13, scope: !636)
!877 = !DILocation(line: 848, column: 15, scope: !878)
!878 = distinct !DILexicalBlock(scope: !875, file: !1, line: 847, column: 37)
!879 = !DILocation(line: 849, column: 13, scope: !878)
!880 = distinct !{!880, !870, !881}
!881 = !DILocation(line: 874, column: 5, scope: !584)
!882 = !DILocation(line: 850, column: 20, scope: !883)
!883 = distinct !DILexicalBlock(scope: !875, file: !1, line: 850, column: 20)
!884 = !DILocation(line: 850, column: 20, scope: !875)
!885 = !DILocation(line: 856, column: 17, scope: !635)
!886 = !DILocation(line: 856, column: 23, scope: !635)
!887 = !DILocation(line: 856, column: 26, scope: !635)
!888 = !DILocation(line: 856, column: 13, scope: !636)
!889 = !DILocation(line: 857, column: 17, scope: !634)
!890 = !DILocation(line: 859, column: 20, scope: !640)
!891 = !DILocation(line: 859, column: 17, scope: !634)
!892 = !DILocation(line: 860, column: 27, scope: !639)
!893 = !DILocation(line: 860, column: 49, scope: !639)
!894 = !DILocation(line: 860, column: 48, scope: !639)
!895 = !DILocation(line: 860, column: 21, scope: !639)
!896 = !DILocation(line: 861, column: 25, scope: !897)
!897 = distinct !DILexicalBlock(scope: !639, file: !1, line: 861, column: 21)
!898 = !DILocation(line: 861, column: 21, scope: !639)
!899 = !DILocation(line: 871, column: 13, scope: !640)
!900 = !DILocation(line: 872, column: 9, scope: !635)
!901 = !DILocation(line: 862, column: 21, scope: !902)
!902 = distinct !DILexicalBlock(scope: !903, file: !1, line: 862, column: 21)
!903 = distinct !DILexicalBlock(scope: !897, file: !1, line: 861, column: 52)
!904 = !DILocation(line: 863, column: 38, scope: !903)
!905 = !DILocation(line: 863, column: 21, scope: !903)
!906 = !DILocation(line: 864, column: 35, scope: !903)
!907 = !DILocation(line: 864, column: 21, scope: !903)
!908 = !DILocation(line: 865, column: 24, scope: !903)
!909 = !DILocation(line: 869, column: 21, scope: !903)
!910 = !DILocation(line: 877, column: 14, scope: !584)
!911 = !DILocation(line: 655, column: 20, scope: !584)
!912 = !DILocation(line: 878, column: 5, scope: !584)
!913 = !DILocation(line: 879, column: 5, scope: !584)
!914 = !DILocation(line: 882, column: 9, scope: !915)
!915 = distinct !DILexicalBlock(scope: !584, file: !1, line: 882, column: 9)
!916 = !DILocation(line: 882, column: 29, scope: !915)
!917 = !DILocation(line: 882, column: 9, scope: !584)
!918 = !DILocation(line: 883, column: 14, scope: !584)
!919 = !DILocation(line: 493, column: 26, scope: !224, inlinedAt: !920)
!920 = distinct !DILocation(line: 892, column: 24, scope: !584)
!921 = !DILocation(line: 493, column: 42, scope: !224, inlinedAt: !920)
!922 = !DILocation(line: 493, column: 57, scope: !224, inlinedAt: !920)
!923 = !DILocation(line: 496, column: 5, scope: !233, inlinedAt: !920)
!924 = !DILocation(line: 497, column: 9, scope: !242, inlinedAt: !920)
!925 = !DILocation(line: 497, column: 15, scope: !242, inlinedAt: !920)
!926 = !DILocation(line: 497, column: 9, scope: !224, inlinedAt: !920)
!927 = !DILocation(line: 501, column: 9, scope: !257, inlinedAt: !920)
!928 = !DILocation(line: 503, column: 1, scope: !224, inlinedAt: !920)
!929 = !DILocation(line: 892, column: 9, scope: !584)
!930 = !DILocation(line: 893, column: 5, scope: !584)
!931 = !DILocation(line: 498, column: 9, scope: !240, inlinedAt: !920)
!932 = !DILocation(line: 499, column: 9, scope: !241, inlinedAt: !920)
!933 = !DILocation(line: 894, column: 5, scope: !584)
!934 = !DILocation(line: 0, scope: !709)
!935 = !DILocation(line: 895, column: 1, scope: !584)
!936 = distinct !DISubprogram(name: "hllSparseAdd", scope: !1, file: !1, line: 903, type: !937, isLocal: false, isDefinition: true, scopeLine: 903, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !939)
!937 = !DISubroutineType(types: !938)
!938 = !{!15, !455, !43, !188}
!939 = !{!940, !941, !942, !943, !944}
!940 = !DILocalVariable(name: "o", arg: 1, scope: !936, file: !1, line: 903, type: !455)
!941 = !DILocalVariable(name: "ele", arg: 2, scope: !936, file: !1, line: 903, type: !43)
!942 = !DILocalVariable(name: "elesize", arg: 3, scope: !936, file: !1, line: 903, type: !188)
!943 = !DILocalVariable(name: "index", scope: !936, file: !1, line: 904, type: !46)
!944 = !DILocalVariable(name: "count", scope: !936, file: !1, line: 905, type: !6)
!945 = !DILocation(line: 903, column: 24, scope: !936)
!946 = !DILocation(line: 903, column: 42, scope: !936)
!947 = !DILocation(line: 903, column: 54, scope: !936)
!948 = !DILocation(line: 451, column: 30, scope: !185, inlinedAt: !949)
!949 = distinct !DILocation(line: 905, column: 21, scope: !936)
!950 = !DILocation(line: 451, column: 42, scope: !185, inlinedAt: !949)
!951 = !DILocation(line: 466, column: 30, scope: !185, inlinedAt: !949)
!952 = !DILocation(line: 466, column: 12, scope: !185, inlinedAt: !949)
!953 = !DILocation(line: 452, column: 14, scope: !185, inlinedAt: !949)
!954 = !DILocation(line: 452, column: 25, scope: !185, inlinedAt: !949)
!955 = !DILocation(line: 468, column: 10, scope: !185, inlinedAt: !949)
!956 = !DILocation(line: 469, column: 10, scope: !185, inlinedAt: !949)
!957 = !DILocation(line: 452, column: 20, scope: !185, inlinedAt: !949)
!958 = !DILocation(line: 453, column: 9, scope: !185, inlinedAt: !949)
!959 = !DILocation(line: 473, column: 5, scope: !185, inlinedAt: !949)
!960 = !DILocation(line: 473, column: 17, scope: !185, inlinedAt: !949)
!961 = !DILocation(line: 473, column: 24, scope: !185, inlinedAt: !949)
!962 = !DILocation(line: 474, column: 14, scope: !216, inlinedAt: !949)
!963 = !DILocation(line: 475, column: 13, scope: !216, inlinedAt: !949)
!964 = !DILocation(line: 477, column: 13, scope: !185, inlinedAt: !949)
!965 = !DILocation(line: 478, column: 5, scope: !185, inlinedAt: !949)
!966 = !DILocation(line: 905, column: 13, scope: !936)
!967 = !DILocation(line: 904, column: 10, scope: !936)
!968 = !DILocation(line: 907, column: 12, scope: !936)
!969 = !DILocation(line: 907, column: 5, scope: !936)
!970 = distinct !DISubprogram(name: "hllSparseRegHisto", scope: !1, file: !1, line: 911, type: !971, isLocal: false, isDefinition: true, scopeLine: 911, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !973)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !16, !15, !306, !306}
!973 = !{!974, !975, !976, !977, !978, !979, !980, !981, !982}
!974 = !DILocalVariable(name: "sparse", arg: 1, scope: !970, file: !1, line: 911, type: !16)
!975 = !DILocalVariable(name: "sparselen", arg: 2, scope: !970, file: !1, line: 911, type: !15)
!976 = !DILocalVariable(name: "invalid", arg: 3, scope: !970, file: !1, line: 911, type: !306)
!977 = !DILocalVariable(name: "reghisto", arg: 4, scope: !970, file: !1, line: 911, type: !306)
!978 = !DILocalVariable(name: "idx", scope: !970, file: !1, line: 912, type: !15)
!979 = !DILocalVariable(name: "runlen", scope: !970, file: !1, line: 912, type: !15)
!980 = !DILocalVariable(name: "regval", scope: !970, file: !1, line: 912, type: !15)
!981 = !DILocalVariable(name: "end", scope: !970, file: !1, line: 913, type: !16)
!982 = !DILocalVariable(name: "p", scope: !970, file: !1, line: 913, type: !16)
!983 = !DILocation(line: 911, column: 33, scope: !970)
!984 = !DILocation(line: 911, column: 45, scope: !970)
!985 = !DILocation(line: 911, column: 61, scope: !970)
!986 = !DILocation(line: 911, column: 75, scope: !970)
!987 = !DILocation(line: 912, column: 9, scope: !970)
!988 = !DILocation(line: 913, column: 26, scope: !970)
!989 = !DILocation(line: 913, column: 14, scope: !970)
!990 = !DILocation(line: 913, column: 39, scope: !970)
!991 = !DILocation(line: 915, column: 5, scope: !970)
!992 = !DILocation(line: 915, column: 13, scope: !970)
!993 = !DILocation(line: 916, column: 13, scope: !994)
!994 = distinct !DILexicalBlock(scope: !995, file: !1, line: 916, column: 13)
!995 = distinct !DILexicalBlock(scope: !970, file: !1, line: 915, column: 20)
!996 = !DILocation(line: 916, column: 13, scope: !995)
!997 = !DILocation(line: 917, column: 22, scope: !998)
!998 = distinct !DILexicalBlock(scope: !994, file: !1, line: 916, column: 36)
!999 = !DILocation(line: 912, column: 18, scope: !970)
!1000 = !DILocation(line: 919, column: 25, scope: !998)
!1001 = !DILocation(line: 921, column: 9, scope: !998)
!1002 = !DILocation(line: 921, column: 20, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !994, file: !1, line: 921, column: 20)
!1004 = !DILocation(line: 921, column: 20, scope: !994)
!1005 = !DILocation(line: 922, column: 22, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 921, column: 44)
!1007 = !DILocation(line: 924, column: 25, scope: !1006)
!1008 = !DILocation(line: 926, column: 9, scope: !1006)
!1009 = !DILocation(line: 927, column: 22, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 926, column: 16)
!1011 = !DILocation(line: 928, column: 22, scope: !1010)
!1012 = !DILocation(line: 912, column: 26, scope: !970)
!1013 = !DILocation(line: 930, column: 13, scope: !1010)
!1014 = !DILocation(line: 930, column: 30, scope: !1010)
!1015 = !DILocation(line: 0, scope: !998)
!1016 = !DILocation(line: 0, scope: !1010)
!1017 = distinct !{!1017, !991, !1018}
!1018 = !DILocation(line: 933, column: 5, scope: !970)
!1019 = !DILocation(line: 934, column: 13, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !970, file: !1, line: 934, column: 9)
!1021 = !DILocation(line: 934, column: 33, scope: !1020)
!1022 = !DILocation(line: 934, column: 30, scope: !1020)
!1023 = !DILocation(line: 934, column: 51, scope: !1020)
!1024 = !DILocation(line: 934, column: 42, scope: !1020)
!1025 = !DILocation(line: 935, column: 1, scope: !970)
!1026 = distinct !DISubprogram(name: "hllRawRegHisto", scope: !1, file: !1, line: 945, type: !304, isLocal: false, isDefinition: true, scopeLine: 945, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1027)
!1027 = !{!1028, !1029, !1030, !1031, !1032}
!1028 = !DILocalVariable(name: "registers", arg: 1, scope: !1026, file: !1, line: 945, type: !16)
!1029 = !DILocalVariable(name: "reghisto", arg: 2, scope: !1026, file: !1, line: 945, type: !306)
!1030 = !DILocalVariable(name: "word", scope: !1026, file: !1, line: 946, type: !11)
!1031 = !DILocalVariable(name: "bytes", scope: !1026, file: !1, line: 947, type: !16)
!1032 = !DILocalVariable(name: "j", scope: !1026, file: !1, line: 948, type: !15)
!1033 = !DILocation(line: 945, column: 30, scope: !1026)
!1034 = !DILocation(line: 945, column: 46, scope: !1026)
!1035 = !DILocation(line: 946, column: 22, scope: !1026)
!1036 = !DILocation(line: 946, column: 15, scope: !1026)
!1037 = !DILocation(line: 948, column: 9, scope: !1026)
!1038 = !DILocation(line: 950, column: 10, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 950, column: 5)
!1040 = !DILocation(line: 950, column: 5, scope: !1039)
!1041 = !DILocation(line: 951, column: 13, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 951, column: 13)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !1, line: 950, column: 43)
!1044 = distinct !DILexicalBlock(scope: !1039, file: !1, line: 950, column: 5)
!1045 = !DILocation(line: 951, column: 19, scope: !1042)
!1046 = !DILocation(line: 951, column: 13, scope: !1043)
!1047 = !DILocation(line: 954, column: 21, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 953, column: 16)
!1049 = !DILocation(line: 947, column: 14, scope: !1026)
!1050 = !DILocation(line: 955, column: 13, scope: !1048)
!1051 = !DILocation(line: 955, column: 31, scope: !1048)
!1052 = !DILocation(line: 956, column: 22, scope: !1048)
!1053 = !DILocation(line: 956, column: 13, scope: !1048)
!1054 = !DILocation(line: 956, column: 31, scope: !1048)
!1055 = !DILocation(line: 957, column: 22, scope: !1048)
!1056 = !DILocation(line: 957, column: 13, scope: !1048)
!1057 = !DILocation(line: 957, column: 31, scope: !1048)
!1058 = !DILocation(line: 958, column: 22, scope: !1048)
!1059 = !DILocation(line: 958, column: 13, scope: !1048)
!1060 = !DILocation(line: 958, column: 31, scope: !1048)
!1061 = !DILocation(line: 959, column: 22, scope: !1048)
!1062 = !DILocation(line: 959, column: 13, scope: !1048)
!1063 = !DILocation(line: 959, column: 31, scope: !1048)
!1064 = !DILocation(line: 960, column: 22, scope: !1048)
!1065 = !DILocation(line: 960, column: 13, scope: !1048)
!1066 = !DILocation(line: 960, column: 31, scope: !1048)
!1067 = !DILocation(line: 961, column: 22, scope: !1048)
!1068 = !DILocation(line: 961, column: 13, scope: !1048)
!1069 = !DILocation(line: 961, column: 31, scope: !1048)
!1070 = !DILocation(line: 962, column: 22, scope: !1048)
!1071 = !DILocation(line: 962, column: 13, scope: !1048)
!1072 = !DILocation(line: 0, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 951, column: 25)
!1074 = !DILocation(line: 964, column: 13, scope: !1043)
!1075 = !DILocation(line: 950, column: 39, scope: !1044)
!1076 = !DILocation(line: 950, column: 5, scope: !1044)
!1077 = !DILocation(line: 950, column: 19, scope: !1044)
!1078 = distinct !{!1078, !1040, !1079}
!1079 = !DILocation(line: 965, column: 5, scope: !1039)
!1080 = !DILocation(line: 966, column: 1, scope: !1026)
!1081 = distinct !DISubprogram(name: "hllSigma", scope: !1, file: !1, line: 971, type: !1082, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1084)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!41, !41}
!1084 = !{!1085, !1086, !1087, !1088}
!1085 = !DILocalVariable(name: "x", arg: 1, scope: !1081, file: !1, line: 971, type: !41)
!1086 = !DILocalVariable(name: "zPrime", scope: !1081, file: !1, line: 973, type: !41)
!1087 = !DILocalVariable(name: "y", scope: !1081, file: !1, line: 974, type: !41)
!1088 = !DILocalVariable(name: "z", scope: !1081, file: !1, line: 975, type: !41)
!1089 = !DILocation(line: 971, column: 24, scope: !1081)
!1090 = !DILocation(line: 972, column: 11, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 972, column: 9)
!1092 = !DILocation(line: 972, column: 9, scope: !1081)
!1093 = !DILocation(line: 0, scope: !1081)
!1094 = !DILocation(line: 0, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 976, column: 8)
!1096 = !DILocation(line: 975, column: 12, scope: !1081)
!1097 = !DILocation(line: 974, column: 12, scope: !1081)
!1098 = !DILocation(line: 977, column: 11, scope: !1095)
!1099 = !DILocation(line: 973, column: 12, scope: !1081)
!1100 = !DILocation(line: 979, column: 16, scope: !1095)
!1101 = !DILocation(line: 979, column: 11, scope: !1095)
!1102 = !DILocation(line: 980, column: 11, scope: !1095)
!1103 = !DILocation(line: 981, column: 20, scope: !1081)
!1104 = !DILocation(line: 981, column: 5, scope: !1095)
!1105 = distinct !{!1105, !1106, !1107}
!1106 = !DILocation(line: 976, column: 5, scope: !1081)
!1107 = !DILocation(line: 981, column: 24, scope: !1081)
!1108 = !DILocation(line: 983, column: 1, scope: !1081)
!1109 = distinct !DISubprogram(name: "hllTau", scope: !1, file: !1, line: 988, type: !1082, isLocal: false, isDefinition: true, scopeLine: 988, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1110)
!1110 = !{!1111, !1112, !1113, !1114}
!1111 = !DILocalVariable(name: "x", arg: 1, scope: !1109, file: !1, line: 988, type: !41)
!1112 = !DILocalVariable(name: "zPrime", scope: !1109, file: !1, line: 990, type: !41)
!1113 = !DILocalVariable(name: "y", scope: !1109, file: !1, line: 991, type: !41)
!1114 = !DILocalVariable(name: "z", scope: !1109, file: !1, line: 992, type: !41)
!1115 = !DILocation(line: 988, column: 22, scope: !1109)
!1116 = !DILocation(line: 989, column: 11, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1109, file: !1, line: 989, column: 9)
!1118 = !DILocation(line: 989, column: 22, scope: !1117)
!1119 = !DILocation(line: 989, column: 17, scope: !1117)
!1120 = !DILocation(line: 991, column: 12, scope: !1109)
!1121 = !DILocation(line: 992, column: 18, scope: !1109)
!1122 = !DILocation(line: 992, column: 12, scope: !1109)
!1123 = !DILocation(line: 993, column: 5, scope: !1109)
!1124 = !DILocation(line: 0, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1109, file: !1, line: 993, column: 8)
!1126 = !DILocation(line: 994, column: 13, scope: !1125)
!1127 = !DILocation(line: 990, column: 12, scope: !1109)
!1128 = !DILocation(line: 996, column: 11, scope: !1125)
!1129 = !DILocation(line: 997, column: 20, scope: !1125)
!1130 = !DILocation(line: 997, column: 14, scope: !1125)
!1131 = !DILocation(line: 997, column: 27, scope: !1125)
!1132 = !DILocation(line: 997, column: 11, scope: !1125)
!1133 = !DILocation(line: 998, column: 20, scope: !1109)
!1134 = !DILocation(line: 998, column: 5, scope: !1125)
!1135 = distinct !{!1135, !1123, !1136}
!1136 = !DILocation(line: 998, column: 24, scope: !1109)
!1137 = !DILocation(line: 999, column: 14, scope: !1109)
!1138 = !DILocation(line: 0, scope: !1109)
!1139 = !DILocation(line: 1000, column: 1, scope: !1109)
!1140 = distinct !DISubprogram(name: "hllCount", scope: !1, file: !1, line: 1013, type: !1141, isLocal: false, isDefinition: true, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1143)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!12, !17, !306}
!1143 = !{!1144, !1145, !1146, !1147, !1148, !1149, !1153}
!1144 = !DILocalVariable(name: "hdr", arg: 1, scope: !1140, file: !1, line: 1013, type: !17)
!1145 = !DILocalVariable(name: "invalid", arg: 2, scope: !1140, file: !1, line: 1013, type: !306)
!1146 = !DILocalVariable(name: "m", scope: !1140, file: !1, line: 1014, type: !41)
!1147 = !DILocalVariable(name: "E", scope: !1140, file: !1, line: 1015, type: !41)
!1148 = !DILocalVariable(name: "j", scope: !1140, file: !1, line: 1016, type: !15)
!1149 = !DILocalVariable(name: "reghisto", scope: !1140, file: !1, line: 1022, type: !1150)
!1150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 2048, elements: !1151)
!1151 = !{!1152}
!1152 = !DISubrange(count: 64)
!1153 = !DILocalVariable(name: "z", scope: !1140, file: !1, line: 1039, type: !41)
!1154 = !DILocation(line: 1013, column: 34, scope: !1140)
!1155 = !DILocation(line: 1013, column: 44, scope: !1140)
!1156 = !DILocation(line: 1014, column: 12, scope: !1140)
!1157 = !DILocation(line: 1022, column: 5, scope: !1140)
!1158 = !DILocation(line: 1022, column: 9, scope: !1140)
!1159 = !DILocation(line: 1025, column: 14, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 1025, column: 9)
!1161 = !DILocation(line: 1025, column: 23, scope: !1160)
!1162 = !DILocation(line: 1025, column: 9, scope: !1140)
!1163 = !DILocation(line: 1026, column: 26, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !1, line: 1025, column: 37)
!1165 = !DILocation(line: 1026, column: 41, scope: !1164)
!1166 = !DILocation(line: 1026, column: 9, scope: !1164)
!1167 = !DILocation(line: 1027, column: 5, scope: !1164)
!1168 = !DILocation(line: 1027, column: 30, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1160, file: !1, line: 1027, column: 16)
!1170 = !DILocation(line: 1027, column: 16, scope: !1160)
!1171 = !DILocation(line: 1028, column: 27, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 1027, column: 45)
!1173 = !DILocation(line: 88, column: 27, scope: !497, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 1029, column: 26, scope: !1172)
!1175 = !DILocation(line: 88, column: 19, scope: !497, inlinedAt: !1174)
!1176 = !DILocation(line: 89, column: 5, scope: !497, inlinedAt: !1174)
!1177 = !DILocation(line: 91, column: 20, scope: !511, inlinedAt: !1174)
!1178 = !DILocation(line: 91, column: 13, scope: !511, inlinedAt: !1174)
!1179 = !DILocation(line: 87, column: 39, scope: !497, inlinedAt: !1174)
!1180 = !DILocation(line: 93, column: 20, scope: !511, inlinedAt: !1174)
!1181 = !DILocation(line: 93, column: 34, scope: !511, inlinedAt: !1174)
!1182 = !DILocation(line: 93, column: 13, scope: !511, inlinedAt: !1174)
!1183 = !DILocation(line: 95, column: 20, scope: !511, inlinedAt: !1174)
!1184 = !DILocation(line: 95, column: 35, scope: !511, inlinedAt: !1174)
!1185 = !DILocation(line: 95, column: 13, scope: !511, inlinedAt: !1174)
!1186 = !DILocation(line: 97, column: 20, scope: !511, inlinedAt: !1174)
!1187 = !DILocation(line: 97, column: 35, scope: !511, inlinedAt: !1174)
!1188 = !DILocation(line: 97, column: 13, scope: !511, inlinedAt: !1174)
!1189 = !DILocation(line: 99, column: 20, scope: !511, inlinedAt: !1174)
!1190 = !DILocation(line: 99, column: 35, scope: !511, inlinedAt: !1174)
!1191 = !DILocation(line: 99, column: 13, scope: !511, inlinedAt: !1174)
!1192 = !DILocation(line: 0, scope: !511, inlinedAt: !1174)
!1193 = !DILocation(line: 0, scope: !1172)
!1194 = !DILocation(line: 102, column: 1, scope: !497, inlinedAt: !1174)
!1195 = !DILocation(line: 1029, column: 26, scope: !1172)
!1196 = !DILocation(line: 1029, column: 64, scope: !1172)
!1197 = !DILocation(line: 911, column: 33, scope: !970, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 1028, column: 9, scope: !1172)
!1199 = !DILocation(line: 911, column: 45, scope: !970, inlinedAt: !1198)
!1200 = !DILocation(line: 911, column: 61, scope: !970, inlinedAt: !1198)
!1201 = !DILocation(line: 911, column: 75, scope: !970, inlinedAt: !1198)
!1202 = !DILocation(line: 912, column: 9, scope: !970, inlinedAt: !1198)
!1203 = !DILocation(line: 913, column: 26, scope: !970, inlinedAt: !1198)
!1204 = !DILocation(line: 913, column: 14, scope: !970, inlinedAt: !1198)
!1205 = !DILocation(line: 913, column: 39, scope: !970, inlinedAt: !1198)
!1206 = !DILocation(line: 915, column: 5, scope: !970, inlinedAt: !1198)
!1207 = !DILocation(line: 915, column: 13, scope: !970, inlinedAt: !1198)
!1208 = !DILocation(line: 916, column: 13, scope: !994, inlinedAt: !1198)
!1209 = !DILocation(line: 916, column: 13, scope: !995, inlinedAt: !1198)
!1210 = !DILocation(line: 917, column: 22, scope: !998, inlinedAt: !1198)
!1211 = !DILocation(line: 912, column: 18, scope: !970, inlinedAt: !1198)
!1212 = !DILocation(line: 919, column: 25, scope: !998, inlinedAt: !1198)
!1213 = !DILocation(line: 921, column: 9, scope: !998, inlinedAt: !1198)
!1214 = !DILocation(line: 921, column: 20, scope: !1003, inlinedAt: !1198)
!1215 = !DILocation(line: 921, column: 20, scope: !994, inlinedAt: !1198)
!1216 = !DILocation(line: 922, column: 22, scope: !1006, inlinedAt: !1198)
!1217 = !DILocation(line: 924, column: 25, scope: !1006, inlinedAt: !1198)
!1218 = !DILocation(line: 926, column: 9, scope: !1006, inlinedAt: !1198)
!1219 = !DILocation(line: 927, column: 22, scope: !1010, inlinedAt: !1198)
!1220 = !DILocation(line: 928, column: 22, scope: !1010, inlinedAt: !1198)
!1221 = !DILocation(line: 912, column: 26, scope: !970, inlinedAt: !1198)
!1222 = !DILocation(line: 930, column: 13, scope: !1010, inlinedAt: !1198)
!1223 = !DILocation(line: 930, column: 30, scope: !1010, inlinedAt: !1198)
!1224 = !DILocation(line: 0, scope: !1010, inlinedAt: !1198)
!1225 = !DILocation(line: 934, column: 13, scope: !1020, inlinedAt: !1198)
!1226 = !DILocation(line: 934, column: 33, scope: !1020, inlinedAt: !1198)
!1227 = !DILocation(line: 934, column: 30, scope: !1020, inlinedAt: !1198)
!1228 = !DILocation(line: 934, column: 51, scope: !1020, inlinedAt: !1198)
!1229 = !DILocation(line: 934, column: 42, scope: !1020, inlinedAt: !1198)
!1230 = !DILocation(line: 935, column: 1, scope: !970, inlinedAt: !1198)
!1231 = !DILocation(line: 1030, column: 5, scope: !1172)
!1232 = !DILocation(line: 1030, column: 30, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 1030, column: 16)
!1234 = !DILocation(line: 1030, column: 16, scope: !1169)
!1235 = !DILocation(line: 1031, column: 24, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1233, file: !1, line: 1030, column: 42)
!1237 = !DILocation(line: 1031, column: 39, scope: !1236)
!1238 = !DILocation(line: 945, column: 30, scope: !1026, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 1031, column: 9, scope: !1236)
!1240 = !DILocation(line: 945, column: 46, scope: !1026, inlinedAt: !1239)
!1241 = !DILocation(line: 946, column: 22, scope: !1026, inlinedAt: !1239)
!1242 = !DILocation(line: 946, column: 15, scope: !1026, inlinedAt: !1239)
!1243 = !DILocation(line: 948, column: 9, scope: !1026, inlinedAt: !1239)
!1244 = !DILocation(line: 950, column: 10, scope: !1039, inlinedAt: !1239)
!1245 = !DILocation(line: 950, column: 5, scope: !1039, inlinedAt: !1239)
!1246 = !DILocation(line: 951, column: 13, scope: !1042, inlinedAt: !1239)
!1247 = !DILocation(line: 951, column: 19, scope: !1042, inlinedAt: !1239)
!1248 = !DILocation(line: 951, column: 13, scope: !1043, inlinedAt: !1239)
!1249 = !DILocation(line: 952, column: 25, scope: !1073, inlinedAt: !1239)
!1250 = !DILocation(line: 953, column: 9, scope: !1073, inlinedAt: !1239)
!1251 = !DILocation(line: 954, column: 21, scope: !1048, inlinedAt: !1239)
!1252 = !DILocation(line: 947, column: 14, scope: !1026, inlinedAt: !1239)
!1253 = !DILocation(line: 955, column: 13, scope: !1048, inlinedAt: !1239)
!1254 = !DILocation(line: 955, column: 31, scope: !1048, inlinedAt: !1239)
!1255 = !DILocation(line: 956, column: 22, scope: !1048, inlinedAt: !1239)
!1256 = !DILocation(line: 956, column: 13, scope: !1048, inlinedAt: !1239)
!1257 = !DILocation(line: 956, column: 31, scope: !1048, inlinedAt: !1239)
!1258 = !DILocation(line: 957, column: 22, scope: !1048, inlinedAt: !1239)
!1259 = !DILocation(line: 957, column: 13, scope: !1048, inlinedAt: !1239)
!1260 = !DILocation(line: 957, column: 31, scope: !1048, inlinedAt: !1239)
!1261 = !DILocation(line: 958, column: 22, scope: !1048, inlinedAt: !1239)
!1262 = !DILocation(line: 958, column: 13, scope: !1048, inlinedAt: !1239)
!1263 = !DILocation(line: 958, column: 31, scope: !1048, inlinedAt: !1239)
!1264 = !DILocation(line: 959, column: 22, scope: !1048, inlinedAt: !1239)
!1265 = !DILocation(line: 959, column: 13, scope: !1048, inlinedAt: !1239)
!1266 = !DILocation(line: 959, column: 31, scope: !1048, inlinedAt: !1239)
!1267 = !DILocation(line: 960, column: 22, scope: !1048, inlinedAt: !1239)
!1268 = !DILocation(line: 960, column: 13, scope: !1048, inlinedAt: !1239)
!1269 = !DILocation(line: 960, column: 31, scope: !1048, inlinedAt: !1239)
!1270 = !DILocation(line: 961, column: 22, scope: !1048, inlinedAt: !1239)
!1271 = !DILocation(line: 961, column: 13, scope: !1048, inlinedAt: !1239)
!1272 = !DILocation(line: 961, column: 31, scope: !1048, inlinedAt: !1239)
!1273 = !DILocation(line: 962, column: 22, scope: !1048, inlinedAt: !1239)
!1274 = !DILocation(line: 962, column: 13, scope: !1048, inlinedAt: !1239)
!1275 = !DILocation(line: 962, column: 31, scope: !1048, inlinedAt: !1239)
!1276 = !DILocation(line: 964, column: 13, scope: !1043, inlinedAt: !1239)
!1277 = !DILocation(line: 950, column: 39, scope: !1044, inlinedAt: !1239)
!1278 = !DILocation(line: 950, column: 5, scope: !1044, inlinedAt: !1239)
!1279 = !DILocation(line: 950, column: 19, scope: !1044, inlinedAt: !1239)
!1280 = !DILocation(line: 966, column: 1, scope: !1026, inlinedAt: !1239)
!1281 = !DILocation(line: 1033, column: 9, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1233, file: !1, line: 1032, column: 12)
!1283 = !DILocation(line: 1039, column: 30, scope: !1140)
!1284 = !DILocation(line: 1039, column: 29, scope: !1140)
!1285 = !DILocation(line: 1039, column: 48, scope: !1140)
!1286 = !DILocation(line: 988, column: 22, scope: !1109, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 1039, column: 20, scope: !1140)
!1288 = !DILocation(line: 989, column: 11, scope: !1117, inlinedAt: !1287)
!1289 = !DILocation(line: 989, column: 22, scope: !1117, inlinedAt: !1287)
!1290 = !DILocation(line: 989, column: 17, scope: !1117, inlinedAt: !1287)
!1291 = !DILocation(line: 989, column: 29, scope: !1117, inlinedAt: !1287)
!1292 = !DILocation(line: 991, column: 12, scope: !1109, inlinedAt: !1287)
!1293 = !DILocation(line: 992, column: 18, scope: !1109, inlinedAt: !1287)
!1294 = !DILocation(line: 992, column: 12, scope: !1109, inlinedAt: !1287)
!1295 = !DILocation(line: 993, column: 5, scope: !1109, inlinedAt: !1287)
!1296 = !DILocation(line: 0, scope: !1125, inlinedAt: !1287)
!1297 = !DILocation(line: 994, column: 13, scope: !1125, inlinedAt: !1287)
!1298 = !DILocation(line: 990, column: 12, scope: !1109, inlinedAt: !1287)
!1299 = !DILocation(line: 996, column: 11, scope: !1125, inlinedAt: !1287)
!1300 = !DILocation(line: 997, column: 20, scope: !1125, inlinedAt: !1287)
!1301 = !DILocation(line: 997, column: 14, scope: !1125, inlinedAt: !1287)
!1302 = !DILocation(line: 997, column: 27, scope: !1125, inlinedAt: !1287)
!1303 = !DILocation(line: 997, column: 11, scope: !1125, inlinedAt: !1287)
!1304 = !DILocation(line: 998, column: 20, scope: !1109, inlinedAt: !1287)
!1305 = !DILocation(line: 998, column: 5, scope: !1125, inlinedAt: !1287)
!1306 = !DILocation(line: 999, column: 14, scope: !1109, inlinedAt: !1287)
!1307 = !DILocation(line: 1000, column: 1, scope: !1109, inlinedAt: !1287)
!1308 = !DILocation(line: 1039, column: 12, scope: !1140)
!1309 = !DILocation(line: 1016, column: 9, scope: !1140)
!1310 = !DILocation(line: 1040, column: 10, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 1040, column: 5)
!1312 = !DILocation(line: 1040, column: 5, scope: !1311)
!1313 = !DILocation(line: 1041, column: 14, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !1, line: 1040, column: 34)
!1315 = distinct !DILexicalBlock(scope: !1311, file: !1, line: 1040, column: 5)
!1316 = !DILocation(line: 1041, column: 11, scope: !1314)
!1317 = !DILocation(line: 1042, column: 11, scope: !1314)
!1318 = !DILocation(line: 1040, column: 29, scope: !1315)
!1319 = !DILocation(line: 1040, column: 5, scope: !1315)
!1320 = !DILocation(line: 1040, column: 23, scope: !1315)
!1321 = distinct !{!1321, !1312, !1322}
!1322 = !DILocation(line: 1043, column: 5, scope: !1311)
!1323 = !DILocation(line: 1044, column: 23, scope: !1140)
!1324 = !DILocation(line: 1044, column: 34, scope: !1140)
!1325 = !DILocation(line: 971, column: 24, scope: !1081, inlinedAt: !1326)
!1326 = distinct !DILocation(line: 1044, column: 14, scope: !1140)
!1327 = !DILocation(line: 972, column: 11, scope: !1091, inlinedAt: !1326)
!1328 = !DILocation(line: 972, column: 9, scope: !1081, inlinedAt: !1326)
!1329 = !DILocation(line: 0, scope: !1081, inlinedAt: !1326)
!1330 = !DILocation(line: 0, scope: !1095, inlinedAt: !1326)
!1331 = !DILocation(line: 975, column: 12, scope: !1081, inlinedAt: !1326)
!1332 = !DILocation(line: 974, column: 12, scope: !1081, inlinedAt: !1326)
!1333 = !DILocation(line: 977, column: 11, scope: !1095, inlinedAt: !1326)
!1334 = !DILocation(line: 973, column: 12, scope: !1081, inlinedAt: !1326)
!1335 = !DILocation(line: 979, column: 16, scope: !1095, inlinedAt: !1326)
!1336 = !DILocation(line: 979, column: 11, scope: !1095, inlinedAt: !1326)
!1337 = !DILocation(line: 980, column: 11, scope: !1095, inlinedAt: !1326)
!1338 = !DILocation(line: 981, column: 20, scope: !1081, inlinedAt: !1326)
!1339 = !DILocation(line: 981, column: 5, scope: !1095, inlinedAt: !1326)
!1340 = !DILocation(line: 983, column: 1, scope: !1081, inlinedAt: !1326)
!1341 = !DILocation(line: 1044, column: 7, scope: !1140)
!1342 = !DILocation(line: 1045, column: 35, scope: !1140)
!1343 = !DILocation(line: 1045, column: 18, scope: !1140)
!1344 = !DILocation(line: 1045, column: 9, scope: !1140)
!1345 = !DILocation(line: 1015, column: 12, scope: !1140)
!1346 = !DILocation(line: 1047, column: 12, scope: !1140)
!1347 = !DILocation(line: 1048, column: 1, scope: !1140)
!1348 = !DILocation(line: 1047, column: 5, scope: !1140)
!1349 = distinct !DISubprogram(name: "hllAdd", scope: !1, file: !1, line: 1051, type: !937, isLocal: false, isDefinition: true, scopeLine: 1051, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1350)
!1350 = !{!1351, !1352, !1353, !1354}
!1351 = !DILocalVariable(name: "o", arg: 1, scope: !1349, file: !1, line: 1051, type: !455)
!1352 = !DILocalVariable(name: "ele", arg: 2, scope: !1349, file: !1, line: 1051, type: !43)
!1353 = !DILocalVariable(name: "elesize", arg: 3, scope: !1349, file: !1, line: 1051, type: !188)
!1354 = !DILocalVariable(name: "hdr", scope: !1349, file: !1, line: 1052, type: !17)
!1355 = !DILocation(line: 1051, column: 18, scope: !1349)
!1356 = !DILocation(line: 1051, column: 36, scope: !1349)
!1357 = !DILocation(line: 1051, column: 48, scope: !1349)
!1358 = !DILocation(line: 1052, column: 29, scope: !1349)
!1359 = !DILocation(line: 1052, column: 20, scope: !1349)
!1360 = !DILocation(line: 1053, column: 17, scope: !1349)
!1361 = !DILocation(line: 1053, column: 5, scope: !1349)
!1362 = !DILocation(line: 1054, column: 40, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1349, file: !1, line: 1053, column: 27)
!1364 = !DILocation(line: 1054, column: 28, scope: !1363)
!1365 = !DILocation(line: 1054, column: 21, scope: !1363)
!1366 = !DILocation(line: 903, column: 24, scope: !936, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 1055, column: 29, scope: !1363)
!1368 = !DILocation(line: 903, column: 42, scope: !936, inlinedAt: !1367)
!1369 = !DILocation(line: 903, column: 54, scope: !936, inlinedAt: !1367)
!1370 = !DILocation(line: 451, column: 30, scope: !185, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 905, column: 21, scope: !936, inlinedAt: !1367)
!1372 = !DILocation(line: 451, column: 42, scope: !185, inlinedAt: !1371)
!1373 = !DILocation(line: 466, column: 30, scope: !185, inlinedAt: !1371)
!1374 = !DILocation(line: 466, column: 12, scope: !185, inlinedAt: !1371)
!1375 = !DILocation(line: 452, column: 14, scope: !185, inlinedAt: !1371)
!1376 = !DILocation(line: 452, column: 25, scope: !185, inlinedAt: !1371)
!1377 = !DILocation(line: 468, column: 10, scope: !185, inlinedAt: !1371)
!1378 = !DILocation(line: 469, column: 10, scope: !185, inlinedAt: !1371)
!1379 = !DILocation(line: 452, column: 20, scope: !185, inlinedAt: !1371)
!1380 = !DILocation(line: 453, column: 9, scope: !185, inlinedAt: !1371)
!1381 = !DILocation(line: 473, column: 5, scope: !185, inlinedAt: !1371)
!1382 = !DILocation(line: 473, column: 17, scope: !185, inlinedAt: !1371)
!1383 = !DILocation(line: 473, column: 24, scope: !185, inlinedAt: !1371)
!1384 = !DILocation(line: 474, column: 14, scope: !216, inlinedAt: !1371)
!1385 = !DILocation(line: 475, column: 13, scope: !216, inlinedAt: !1371)
!1386 = !DILocation(line: 477, column: 13, scope: !185, inlinedAt: !1371)
!1387 = !DILocation(line: 478, column: 5, scope: !185, inlinedAt: !1371)
!1388 = !DILocation(line: 905, column: 13, scope: !936, inlinedAt: !1367)
!1389 = !DILocation(line: 904, column: 10, scope: !936, inlinedAt: !1367)
!1390 = !DILocation(line: 907, column: 12, scope: !936, inlinedAt: !1367)
!1391 = !DILocation(line: 907, column: 5, scope: !936, inlinedAt: !1367)
!1392 = !DILocation(line: 1055, column: 22, scope: !1363)
!1393 = !DILocation(line: 0, scope: !1363)
!1394 = !DILocation(line: 1058, column: 1, scope: !1349)
!1395 = distinct !DISubprogram(name: "hllMerge", scope: !1, file: !1, line: 1068, type: !1396, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1398)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!15, !16, !455}
!1398 = !{!1399, !1400, !1401, !1402, !1403, !1406, !1411, !1412, !1413, !1414, !1415, !1416, !1418, !1419, !1420}
!1399 = !DILocalVariable(name: "max", arg: 1, scope: !1395, file: !1, line: 1068, type: !16)
!1400 = !DILocalVariable(name: "hll", arg: 2, scope: !1395, file: !1, line: 1068, type: !455)
!1401 = !DILocalVariable(name: "hdr", scope: !1395, file: !1, line: 1069, type: !17)
!1402 = !DILocalVariable(name: "i", scope: !1395, file: !1, line: 1070, type: !15)
!1403 = !DILocalVariable(name: "val", scope: !1404, file: !1, line: 1073, type: !6)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !1, line: 1072, column: 37)
!1405 = distinct !DILexicalBlock(scope: !1395, file: !1, line: 1072, column: 9)
!1406 = !DILocalVariable(name: "_p", scope: !1407, file: !1, line: 1076, type: !16)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !1, line: 1076, column: 13)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !1, line: 1075, column: 45)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !1, line: 1075, column: 9)
!1410 = distinct !DILexicalBlock(scope: !1404, file: !1, line: 1075, column: 9)
!1411 = !DILocalVariable(name: "_byte", scope: !1407, file: !1, line: 1076, type: !14)
!1412 = !DILocalVariable(name: "_fb", scope: !1407, file: !1, line: 1076, type: !14)
!1413 = !DILocalVariable(name: "_fb8", scope: !1407, file: !1, line: 1076, type: !14)
!1414 = !DILocalVariable(name: "b0", scope: !1407, file: !1, line: 1076, type: !14)
!1415 = !DILocalVariable(name: "b1", scope: !1407, file: !1, line: 1076, type: !14)
!1416 = !DILocalVariable(name: "p", scope: !1417, file: !1, line: 1080, type: !16)
!1417 = distinct !DILexicalBlock(scope: !1405, file: !1, line: 1079, column: 12)
!1418 = !DILocalVariable(name: "end", scope: !1417, file: !1, line: 1080, type: !16)
!1419 = !DILocalVariable(name: "runlen", scope: !1417, file: !1, line: 1081, type: !46)
!1420 = !DILocalVariable(name: "regval", scope: !1417, file: !1, line: 1081, type: !46)
!1421 = !DILocation(line: 1068, column: 23, scope: !1395)
!1422 = !DILocation(line: 1068, column: 34, scope: !1395)
!1423 = !DILocation(line: 1069, column: 31, scope: !1395)
!1424 = !DILocation(line: 1069, column: 20, scope: !1395)
!1425 = !DILocation(line: 1072, column: 14, scope: !1405)
!1426 = !DILocation(line: 1072, column: 23, scope: !1405)
!1427 = !DILocation(line: 1072, column: 9, scope: !1395)
!1428 = !DILocation(line: 1070, column: 9, scope: !1395)
!1429 = !DILocation(line: 1075, column: 14, scope: !1410)
!1430 = !DILocation(line: 1075, column: 9, scope: !1410)
!1431 = !DILocation(line: 1076, column: 13, scope: !1407)
!1432 = !DILocation(line: 1073, column: 17, scope: !1404)
!1433 = !DILocation(line: 1077, column: 23, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1408, file: !1, line: 1077, column: 17)
!1435 = !DILocation(line: 1077, column: 21, scope: !1434)
!1436 = !DILocation(line: 1077, column: 17, scope: !1408)
!1437 = !DILocation(line: 1077, column: 38, scope: !1434)
!1438 = !DILocation(line: 1077, column: 31, scope: !1434)
!1439 = !DILocation(line: 1075, column: 41, scope: !1409)
!1440 = !DILocation(line: 1075, column: 9, scope: !1409)
!1441 = !DILocation(line: 1075, column: 23, scope: !1409)
!1442 = distinct !{!1442, !1430, !1443}
!1443 = !DILocation(line: 1078, column: 9, scope: !1410)
!1444 = !DILocation(line: 1080, column: 18, scope: !1417)
!1445 = !DILocation(line: 87, column: 39, scope: !497, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 1080, column: 43, scope: !1417)
!1447 = !DILocation(line: 88, column: 27, scope: !497, inlinedAt: !1446)
!1448 = !DILocation(line: 88, column: 19, scope: !497, inlinedAt: !1446)
!1449 = !DILocation(line: 89, column: 5, scope: !497, inlinedAt: !1446)
!1450 = !DILocation(line: 91, column: 20, scope: !511, inlinedAt: !1446)
!1451 = !DILocation(line: 91, column: 13, scope: !511, inlinedAt: !1446)
!1452 = !DILocation(line: 93, column: 20, scope: !511, inlinedAt: !1446)
!1453 = !DILocation(line: 93, column: 34, scope: !511, inlinedAt: !1446)
!1454 = !DILocation(line: 93, column: 13, scope: !511, inlinedAt: !1446)
!1455 = !DILocation(line: 95, column: 20, scope: !511, inlinedAt: !1446)
!1456 = !DILocation(line: 95, column: 35, scope: !511, inlinedAt: !1446)
!1457 = !DILocation(line: 95, column: 13, scope: !511, inlinedAt: !1446)
!1458 = !DILocation(line: 97, column: 20, scope: !511, inlinedAt: !1446)
!1459 = !DILocation(line: 97, column: 35, scope: !511, inlinedAt: !1446)
!1460 = !DILocation(line: 97, column: 13, scope: !511, inlinedAt: !1446)
!1461 = !DILocation(line: 99, column: 20, scope: !511, inlinedAt: !1446)
!1462 = !DILocation(line: 99, column: 35, scope: !511, inlinedAt: !1446)
!1463 = !DILocation(line: 99, column: 13, scope: !511, inlinedAt: !1446)
!1464 = !DILocation(line: 101, column: 5, scope: !497, inlinedAt: !1446)
!1465 = !DILocation(line: 102, column: 1, scope: !497, inlinedAt: !1446)
!1466 = !DILocation(line: 1080, column: 33, scope: !1417)
!1467 = !DILocation(line: 1085, column: 9, scope: !1417)
!1468 = !DILocation(line: 0, scope: !511, inlinedAt: !1446)
!1469 = !DILocation(line: 0, scope: !1417)
!1470 = !DILocation(line: 1080, column: 41, scope: !1417)
!1471 = !DILocation(line: 1085, column: 17, scope: !1417)
!1472 = !DILocation(line: 1083, column: 11, scope: !1417)
!1473 = !DILocation(line: 1086, column: 17, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !1, line: 1086, column: 17)
!1475 = distinct !DILexicalBlock(scope: !1417, file: !1, line: 1085, column: 24)
!1476 = !DILocation(line: 1086, column: 17, scope: !1475)
!1477 = !DILocation(line: 1087, column: 26, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1474, file: !1, line: 1086, column: 40)
!1479 = !DILocation(line: 1088, column: 19, scope: !1478)
!1480 = !DILocation(line: 1090, column: 13, scope: !1478)
!1481 = !DILocation(line: 1090, column: 24, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1474, file: !1, line: 1090, column: 24)
!1483 = !DILocation(line: 1090, column: 24, scope: !1474)
!1484 = !DILocation(line: 1091, column: 26, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1482, file: !1, line: 1090, column: 48)
!1486 = !DILocation(line: 1092, column: 19, scope: !1485)
!1487 = !DILocation(line: 1094, column: 13, scope: !1485)
!1488 = !DILocation(line: 1095, column: 26, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1482, file: !1, line: 1094, column: 20)
!1490 = !DILocation(line: 1081, column: 14, scope: !1417)
!1491 = !DILocation(line: 1096, column: 26, scope: !1489)
!1492 = !DILocation(line: 1081, column: 22, scope: !1417)
!1493 = !DILocation(line: 1097, column: 31, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1489, file: !1, line: 1097, column: 21)
!1495 = !DILocation(line: 1097, column: 29, scope: !1494)
!1496 = !DILocation(line: 1097, column: 34, scope: !1494)
!1497 = !DILocation(line: 1097, column: 21, scope: !1489)
!1498 = !DILocation(line: 1098, column: 17, scope: !1489)
!1499 = !DILocation(line: 1099, column: 34, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !1, line: 1099, column: 25)
!1501 = distinct !DILexicalBlock(scope: !1489, file: !1, line: 1098, column: 33)
!1502 = !DILocation(line: 1099, column: 32, scope: !1500)
!1503 = !DILocation(line: 1099, column: 25, scope: !1501)
!1504 = !DILocation(line: 1099, column: 49, scope: !1500)
!1505 = !DILocation(line: 1099, column: 42, scope: !1500)
!1506 = distinct !{!1506, !1498, !1507}
!1507 = !DILocation(line: 1101, column: 17, scope: !1489)
!1508 = !DILocation(line: 0, scope: !1478)
!1509 = distinct !{!1509, !1467, !1510}
!1510 = !DILocation(line: 1104, column: 9, scope: !1417)
!1511 = !DILocation(line: 1105, column: 13, scope: !1417)
!1512 = !DILocation(line: 1105, column: 15, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1417, file: !1, line: 1105, column: 13)
!1514 = !DILocation(line: 0, scope: !1513)
!1515 = !DILocation(line: 1108, column: 1, scope: !1395)
!1516 = !DILocation(line: 1100, column: 22, scope: !1501)
!1517 = distinct !DISubprogram(name: "createHLLObject", scope: !1, file: !1, line: 1114, type: !1518, isLocal: false, isDefinition: true, scopeLine: 1114, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1520)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!455}
!1520 = !{!1521, !1522, !1523, !1524, !1525, !1526, !1527, !1529}
!1521 = !DILocalVariable(name: "o", scope: !1517, file: !1, line: 1115, type: !455)
!1522 = !DILocalVariable(name: "hdr", scope: !1517, file: !1, line: 1116, type: !17)
!1523 = !DILocalVariable(name: "s", scope: !1517, file: !1, line: 1117, type: !38)
!1524 = !DILocalVariable(name: "p", scope: !1517, file: !1, line: 1118, type: !16)
!1525 = !DILocalVariable(name: "sparselen", scope: !1517, file: !1, line: 1119, type: !15)
!1526 = !DILocalVariable(name: "aux", scope: !1517, file: !1, line: 1122, type: !15)
!1527 = !DILocalVariable(name: "xzero", scope: !1528, file: !1, line: 1130, type: !15)
!1528 = distinct !DILexicalBlock(scope: !1517, file: !1, line: 1129, column: 16)
!1529 = !DILocalVariable(name: "_l", scope: !1530, file: !1, line: 1132, type: !15)
!1530 = distinct !DILexicalBlock(scope: !1528, file: !1, line: 1132, column: 9)
!1531 = !DILocation(line: 1119, column: 9, scope: !1517)
!1532 = !DILocation(line: 1122, column: 9, scope: !1517)
!1533 = !DILocation(line: 1127, column: 9, scope: !1517)
!1534 = !DILocation(line: 1117, column: 9, scope: !1517)
!1535 = !DILocation(line: 1128, column: 21, scope: !1517)
!1536 = !DILocation(line: 1118, column: 14, scope: !1517)
!1537 = !DILocation(line: 1129, column: 5, scope: !1517)
!1538 = !DILocation(line: 1130, column: 13, scope: !1528)
!1539 = !DILocation(line: 1131, column: 13, scope: !1528)
!1540 = !DILocation(line: 1132, column: 9, scope: !1530)
!1541 = !DILocation(line: 1136, column: 5, scope: !1517)
!1542 = !DILocation(line: 1139, column: 9, scope: !1517)
!1543 = !DILocation(line: 1115, column: 11, scope: !1517)
!1544 = !DILocation(line: 1140, column: 14, scope: !1517)
!1545 = !DILocation(line: 1116, column: 20, scope: !1517)
!1546 = !DILocation(line: 1141, column: 12, scope: !1517)
!1547 = !DILocation(line: 1141, column: 5, scope: !1517)
!1548 = !DILocation(line: 1142, column: 10, scope: !1517)
!1549 = !DILocation(line: 1142, column: 19, scope: !1517)
!1550 = !DILocation(line: 1143, column: 5, scope: !1517)
!1551 = distinct !DISubprogram(name: "isHLLObjectOrReply", scope: !1, file: !1, line: 1149, type: !1552, isLocal: false, isDefinition: true, scopeLine: 1149, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1774)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!15, !1554, !455}
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !457, line: 780, baseType: !1556)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !457, line: 723, size: 135360, elements: !1557)
!1557 = !{!1558, !1559, !1560, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1667, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1723, !1724, !1728, !1729, !1745, !1746, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1556, file: !457, line: 724, baseType: !12, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1556, file: !457, line: 725, baseType: !15, size: 32, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !1556, file: !457, line: 726, baseType: !1561, size: 64, offset: 128)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !457, line: 656, baseType: !1563)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !457, line: 647, size: 512, elements: !1564)
!1564 = !{!1565, !1623, !1624, !1625, !1626, !1627, !1628, !1630}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !1563, file: !457, line: 648, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !1568, line: 82, baseType: !1569)
!1568 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !1568, line: 76, size: 768, elements: !1570)
!1570 = !{!1571, !1594, !1595, !1621, !1622}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1569, file: !1568, line: 77, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !1568, line: 65, baseType: !1574)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !1568, line: 58, size: 384, elements: !1575)
!1575 = !{!1576, !1580, !1584, !1585, !1589, !1593}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !1574, file: !1568, line: 59, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!12, !93}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !1574, file: !1568, line: 60, baseType: !1581, size: 64, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!42, !42, !93}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !1574, file: !1568, line: 61, baseType: !1581, size: 64, offset: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !1574, file: !1568, line: 62, baseType: !1586, size: 64, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!15, !42, !93, !93}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !1574, file: !1568, line: 63, baseType: !1590, size: 64, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !42, !42}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !1574, file: !1568, line: 64, baseType: !1590, size: 64, offset: 320)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !1569, file: !1568, line: 78, baseType: !42, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !1569, file: !1568, line: 79, baseType: !1596, size: 512, offset: 128)
!1596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1597, size: 512, elements: !1619)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !1568, line: 74, baseType: !1598)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !1568, line: 69, size: 256, elements: !1599)
!1599 = !{!1600, !1616, !1617, !1618}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !1598, file: !1568, line: 70, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !1568, line: 56, baseType: !1604)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !1568, line: 47, size: 192, elements: !1605)
!1605 = !{!1606, !1607, !1614}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1604, file: !1568, line: 48, baseType: !42, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !1604, file: !1568, line: 54, baseType: !1608, size: 64, offset: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1604, file: !1568, line: 49, size: 64, elements: !1609)
!1609 = !{!1610, !1611, !1612, !1613}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1608, file: !1568, line: 50, baseType: !42, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !1608, file: !1568, line: 51, baseType: !12, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !1608, file: !1568, line: 52, baseType: !44, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1608, file: !1568, line: 53, baseType: !41, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1604, file: !1568, line: 55, baseType: !1615, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1598, file: !1568, line: 71, baseType: !14, size: 64, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !1598, file: !1568, line: 72, baseType: !14, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1598, file: !1568, line: 73, baseType: !14, size: 64, offset: 192)
!1619 = !{!1620}
!1620 = !DISubrange(count: 2)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !1569, file: !1568, line: 80, baseType: !46, size: 64, offset: 640)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !1569, file: !1568, line: 81, baseType: !14, size: 64, offset: 704)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1563, file: !457, line: 649, baseType: !1566, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !1563, file: !457, line: 650, baseType: !1566, size: 64, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !1563, file: !457, line: 651, baseType: !1566, size: 64, offset: 192)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1563, file: !457, line: 652, baseType: !1566, size: 64, offset: 256)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1563, file: !457, line: 653, baseType: !15, size: 32, offset: 320)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !1563, file: !457, line: 654, baseType: !1629, size: 64, offset: 384)
!1629 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !1563, file: !457, line: 655, baseType: !1631, size: 64, offset: 448)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !1633, line: 54, baseType: !1634)
!1633 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !1633, line: 47, size: 384, elements: !1635)
!1635 = !{!1636, !1645, !1646, !1650, !1654, !1658}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1634, file: !1633, line: 48, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !1633, line: 40, baseType: !1639)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !1633, line: 36, size: 192, elements: !1640)
!1640 = !{!1641, !1643, !1644}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1639, file: !1633, line: 37, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1639, file: !1633, line: 38, baseType: !1642, size: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1639, file: !1633, line: 39, baseType: !42, size: 64, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1634, file: !1633, line: 49, baseType: !1637, size: 64, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !1634, file: !1633, line: 50, baseType: !1647, size: 64, offset: 128)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!42, !42}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1634, file: !1633, line: 51, baseType: !1651, size: 64, offset: 192)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{null, !42}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1634, file: !1633, line: 52, baseType: !1655, size: 64, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!15, !42, !42}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1634, file: !1633, line: 53, baseType: !14, size: 64, offset: 320)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1556, file: !457, line: 727, baseType: !455, size: 64, offset: 192)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !1556, file: !457, line: 728, baseType: !38, size: 64, offset: 256)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !1556, file: !457, line: 729, baseType: !188, size: 64, offset: 320)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !1556, file: !457, line: 730, baseType: !38, size: 64, offset: 384)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !1556, file: !457, line: 734, baseType: !188, size: 64, offset: 448)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1556, file: !457, line: 735, baseType: !15, size: 32, offset: 512)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1556, file: !457, line: 736, baseType: !1666, size: 64, offset: 576)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1556, file: !457, line: 737, baseType: !1668, size: 64, offset: 640)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !457, line: 1307, size: 640, elements: !1670)
!1670 = !{!1671, !1672, !1677, !1678, !1679, !1680, !1685, !1686, !1687, !1688, !1689}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1669, file: !457, line: 1308, baseType: !40, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !1669, file: !457, line: 1309, baseType: !1673, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !457, line: 1305, baseType: !1675)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{null, !1554}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !1669, file: !457, line: 1310, baseType: !15, size: 32, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !1669, file: !457, line: 1311, baseType: !40, size: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1669, file: !457, line: 1312, baseType: !15, size: 32, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !1669, file: !457, line: 1315, baseType: !1681, size: 64, offset: 320)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !457, line: 1306, baseType: !1683)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!306, !1668, !1666, !15, !306}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !1669, file: !457, line: 1317, baseType: !15, size: 32, offset: 384)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !1669, file: !457, line: 1318, baseType: !15, size: 32, offset: 416)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !1669, file: !457, line: 1319, baseType: !15, size: 32, offset: 448)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !1669, file: !457, line: 1320, baseType: !1629, size: 64, offset: 512)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !1669, file: !457, line: 1320, baseType: !1629, size: 64, offset: 576)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !1556, file: !457, line: 737, baseType: !1668, size: 64, offset: 704)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !1556, file: !457, line: 738, baseType: !15, size: 32, offset: 768)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !1556, file: !457, line: 739, baseType: !15, size: 32, offset: 800)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !1556, file: !457, line: 740, baseType: !46, size: 64, offset: 832)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !1556, file: !457, line: 741, baseType: !1631, size: 64, offset: 896)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !1556, file: !457, line: 742, baseType: !47, size: 64, offset: 960)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !1556, file: !457, line: 743, baseType: !188, size: 64, offset: 1024)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1556, file: !457, line: 745, baseType: !1698, size: 64, offset: 1088)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1699, line: 34, baseType: !46)
!1699 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !1556, file: !457, line: 746, baseType: !1698, size: 64, offset: 1152)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !1556, file: !457, line: 747, baseType: !1698, size: 64, offset: 1216)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1556, file: !457, line: 748, baseType: !15, size: 32, offset: 1280)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !1556, file: !457, line: 749, baseType: !15, size: 32, offset: 1312)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !1556, file: !457, line: 750, baseType: !15, size: 32, offset: 1344)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !1556, file: !457, line: 751, baseType: !15, size: 32, offset: 1376)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !1556, file: !457, line: 752, baseType: !15, size: 32, offset: 1408)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !1556, file: !457, line: 753, baseType: !1708, size: 64, offset: 1472)
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1709, line: 173, baseType: !1710)
!1709 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !191, line: 100, baseType: !1711)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !191, line: 44, baseType: !46)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !1556, file: !457, line: 754, baseType: !1708, size: 64, offset: 1536)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !1556, file: !457, line: 755, baseType: !38, size: 64, offset: 1600)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !1556, file: !457, line: 756, baseType: !1629, size: 64, offset: 1664)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !1556, file: !457, line: 757, baseType: !1629, size: 64, offset: 1728)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !1556, file: !457, line: 758, baseType: !1629, size: 64, offset: 1792)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !1556, file: !457, line: 759, baseType: !1629, size: 64, offset: 1856)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !1556, file: !457, line: 760, baseType: !1629, size: 64, offset: 1920)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !1556, file: !457, line: 763, baseType: !1720, size: 328, offset: 1984)
!1720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 328, elements: !1721)
!1721 = !{!1722}
!1722 = !DISubrange(count: 41)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !1556, file: !457, line: 764, baseType: !15, size: 32, offset: 2336)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !1556, file: !457, line: 765, baseType: !1725, size: 368, offset: 2368)
!1725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 368, elements: !1726)
!1726 = !{!1727}
!1727 = !DISubrange(count: 46)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !1556, file: !457, line: 766, baseType: !15, size: 32, offset: 2752)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !1556, file: !457, line: 767, baseType: !1730, size: 256, offset: 2816)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !457, line: 673, baseType: !1731)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !457, line: 665, size: 256, elements: !1732)
!1732 = !{!1733, !1741, !1742, !1743, !1744}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !1731, file: !457, line: 666, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !457, line: 663, baseType: !1736)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !457, line: 659, size: 192, elements: !1737)
!1737 = !{!1738, !1739, !1740}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1736, file: !457, line: 660, baseType: !1666, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1736, file: !457, line: 661, baseType: !15, size: 32, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1736, file: !457, line: 662, baseType: !1668, size: 64, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1731, file: !457, line: 667, baseType: !15, size: 32, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1731, file: !457, line: 668, baseType: !15, size: 32, offset: 96)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !1731, file: !457, line: 671, baseType: !15, size: 32, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !1731, file: !457, line: 672, baseType: !1698, size: 64, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !1556, file: !457, line: 768, baseType: !15, size: 32, offset: 3072)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !1556, file: !457, line: 769, baseType: !1747, size: 704, offset: 3136)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !457, line: 703, baseType: !1748)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !457, line: 677, size: 704, elements: !1749)
!1749 = !{!1750, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1748, file: !457, line: 679, baseType: !1751, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !457, line: 52, baseType: !1629)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1748, file: !457, line: 683, baseType: !1566, size: 64, offset: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1748, file: !457, line: 685, baseType: !455, size: 64, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !1748, file: !457, line: 689, baseType: !188, size: 64, offset: 192)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !1748, file: !457, line: 690, baseType: !455, size: 64, offset: 256)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !1748, file: !457, line: 691, baseType: !455, size: 64, offset: 320)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !1748, file: !457, line: 692, baseType: !1751, size: 64, offset: 384)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !1748, file: !457, line: 692, baseType: !1751, size: 64, offset: 448)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !1748, file: !457, line: 693, baseType: !15, size: 32, offset: 512)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !1748, file: !457, line: 696, baseType: !15, size: 32, offset: 544)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !1748, file: !457, line: 697, baseType: !1629, size: 64, offset: 576)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !1748, file: !457, line: 700, baseType: !42, size: 64, offset: 640)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !1556, file: !457, line: 770, baseType: !1629, size: 64, offset: 3840)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1556, file: !457, line: 771, baseType: !1631, size: 64, offset: 3904)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !1556, file: !457, line: 772, baseType: !1566, size: 64, offset: 3968)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !1556, file: !457, line: 773, baseType: !1631, size: 64, offset: 4032)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !1556, file: !457, line: 774, baseType: !38, size: 64, offset: 4096)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !1556, file: !457, line: 775, baseType: !1637, size: 64, offset: 4160)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !1556, file: !457, line: 778, baseType: !15, size: 32, offset: 4224)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1556, file: !457, line: 779, baseType: !1771, size: 131072, offset: 4256)
!1771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 131072, elements: !1772)
!1772 = !{!1773}
!1773 = !DISubrange(count: 16384)
!1774 = !{!1775, !1776, !1777}
!1775 = !DILocalVariable(name: "c", arg: 1, scope: !1551, file: !1, line: 1149, type: !1554)
!1776 = !DILocalVariable(name: "o", arg: 2, scope: !1551, file: !1, line: 1149, type: !455)
!1777 = !DILocalVariable(name: "hdr", scope: !1551, file: !1, line: 1150, type: !17)
!1778 = !DILocation(line: 1149, column: 32, scope: !1551)
!1779 = !DILocation(line: 1149, column: 41, scope: !1551)
!1780 = !DILocation(line: 1153, column: 9, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1551, file: !1, line: 1153, column: 9)
!1782 = !DILocation(line: 1153, column: 9, scope: !1551)
!1783 = !DILocation(line: 1156, column: 10, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1551, file: !1, line: 1156, column: 9)
!1785 = !DILocation(line: 1156, column: 9, scope: !1551)
!1786 = !DILocation(line: 1157, column: 9, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1551, file: !1, line: 1157, column: 9)
!1788 = !DILocation(line: 1157, column: 28, scope: !1787)
!1789 = !DILocation(line: 1157, column: 9, scope: !1551)
!1790 = !DILocation(line: 1158, column: 14, scope: !1551)
!1791 = !DILocation(line: 1150, column: 20, scope: !1551)
!1792 = !DILocation(line: 1161, column: 9, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1551, file: !1, line: 1161, column: 9)
!1794 = !DILocation(line: 1161, column: 23, scope: !1793)
!1795 = !DILocation(line: 1161, column: 30, scope: !1793)
!1796 = !DILocation(line: 1161, column: 33, scope: !1793)
!1797 = !DILocation(line: 1161, column: 47, scope: !1793)
!1798 = !DILocation(line: 1161, column: 54, scope: !1793)
!1799 = !DILocation(line: 1162, column: 9, scope: !1793)
!1800 = !DILocation(line: 1162, column: 23, scope: !1793)
!1801 = !DILocation(line: 1162, column: 30, scope: !1793)
!1802 = !DILocation(line: 1162, column: 33, scope: !1793)
!1803 = !DILocation(line: 1162, column: 47, scope: !1793)
!1804 = !DILocation(line: 1161, column: 9, scope: !1551)
!1805 = !DILocation(line: 1164, column: 14, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1551, file: !1, line: 1164, column: 9)
!1807 = !DILocation(line: 1164, column: 23, scope: !1806)
!1808 = !DILocation(line: 1164, column: 9, scope: !1551)
!1809 = !DILocation(line: 1167, column: 23, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1551, file: !1, line: 1167, column: 9)
!1811 = !DILocation(line: 1167, column: 36, scope: !1810)
!1812 = !DILocation(line: 1168, column: 9, scope: !1810)
!1813 = !DILocation(line: 1168, column: 28, scope: !1810)
!1814 = !DILocation(line: 1167, column: 9, scope: !1551)
!1815 = !DILocation(line: 1175, column: 9, scope: !1551)
!1816 = !DILocation(line: 1174, column: 5, scope: !1551)
!1817 = !DILocation(line: 1177, column: 5, scope: !1551)
!1818 = !DILocation(line: 0, scope: !1551)
!1819 = !DILocation(line: 0, scope: !1781)
!1820 = !DILocation(line: 1178, column: 1, scope: !1551)
!1821 = distinct !DISubprogram(name: "pfaddCommand", scope: !1, file: !1, line: 1181, type: !1675, isLocal: false, isDefinition: true, scopeLine: 1181, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1822)
!1822 = !{!1823, !1824, !1825, !1826, !1827, !1828}
!1823 = !DILocalVariable(name: "c", arg: 1, scope: !1821, file: !1, line: 1181, type: !1554)
!1824 = !DILocalVariable(name: "o", scope: !1821, file: !1, line: 1182, type: !455)
!1825 = !DILocalVariable(name: "hdr", scope: !1821, file: !1, line: 1183, type: !17)
!1826 = !DILocalVariable(name: "updated", scope: !1821, file: !1, line: 1184, type: !15)
!1827 = !DILocalVariable(name: "j", scope: !1821, file: !1, line: 1184, type: !15)
!1828 = !DILocalVariable(name: "retval", scope: !1829, file: !1, line: 1199, type: !15)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !1, line: 1198, column: 35)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !1, line: 1198, column: 5)
!1831 = distinct !DILexicalBlock(scope: !1821, file: !1, line: 1198, column: 5)
!1832 = !DILocation(line: 1181, column: 27, scope: !1821)
!1833 = !DILocation(line: 1182, column: 33, scope: !1821)
!1834 = !{!1835, !491, i64 16}
!1835 = !{!"client", !126, i64 0, !414, i64 8, !491, i64 16, !491, i64 24, !491, i64 32, !126, i64 40, !491, i64 48, !126, i64 56, !414, i64 64, !491, i64 72, !491, i64 80, !491, i64 88, !414, i64 96, !414, i64 100, !126, i64 104, !491, i64 112, !848, i64 120, !126, i64 128, !126, i64 136, !126, i64 144, !126, i64 152, !414, i64 160, !414, i64 164, !414, i64 168, !414, i64 172, !414, i64 176, !126, i64 184, !126, i64 192, !491, i64 200, !848, i64 208, !848, i64 216, !848, i64 224, !848, i64 232, !848, i64 240, !127, i64 248, !414, i64 292, !127, i64 296, !414, i64 344, !1836, i64 352, !414, i64 384, !1837, i64 392, !848, i64 480, !491, i64 488, !491, i64 496, !491, i64 504, !491, i64 512, !491, i64 520, !414, i64 528, !127, i64 532}
!1836 = !{!"multiState", !491, i64 0, !414, i64 8, !414, i64 12, !414, i64 16, !126, i64 24}
!1837 = !{!"blockingState", !848, i64 0, !491, i64 8, !491, i64 16, !126, i64 24, !491, i64 32, !491, i64 40, !848, i64 48, !848, i64 56, !414, i64 64, !414, i64 68, !848, i64 72, !491, i64 80}
!1838 = !DILocation(line: 1182, column: 39, scope: !1821)
!1839 = !{!1835, !491, i64 72}
!1840 = !DILocation(line: 1182, column: 36, scope: !1821)
!1841 = !{!491, !491, i64 0}
!1842 = !DILocation(line: 1182, column: 15, scope: !1821)
!1843 = !DILocation(line: 1182, column: 11, scope: !1821)
!1844 = !DILocation(line: 1184, column: 9, scope: !1821)
!1845 = !DILocation(line: 1186, column: 11, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1821, file: !1, line: 1186, column: 9)
!1847 = !DILocation(line: 1186, column: 9, scope: !1821)
!1848 = !DILocation(line: 1119, column: 9, scope: !1517, inlinedAt: !1849)
!1849 = distinct !DILocation(line: 1190, column: 13, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1846, file: !1, line: 1186, column: 20)
!1851 = !DILocation(line: 1122, column: 9, scope: !1517, inlinedAt: !1849)
!1852 = !DILocation(line: 1127, column: 9, scope: !1517, inlinedAt: !1849)
!1853 = !DILocation(line: 1117, column: 9, scope: !1517, inlinedAt: !1849)
!1854 = !DILocation(line: 1128, column: 21, scope: !1517, inlinedAt: !1849)
!1855 = !DILocation(line: 1118, column: 14, scope: !1517, inlinedAt: !1849)
!1856 = !DILocation(line: 1129, column: 5, scope: !1517, inlinedAt: !1849)
!1857 = !DILocation(line: 1130, column: 13, scope: !1528, inlinedAt: !1849)
!1858 = !DILocation(line: 1131, column: 13, scope: !1528, inlinedAt: !1849)
!1859 = !DILocation(line: 1132, column: 9, scope: !1530, inlinedAt: !1849)
!1860 = !DILocation(line: 1136, column: 5, scope: !1517, inlinedAt: !1849)
!1861 = !DILocation(line: 1139, column: 9, scope: !1517, inlinedAt: !1849)
!1862 = !DILocation(line: 1115, column: 11, scope: !1517, inlinedAt: !1849)
!1863 = !DILocation(line: 1140, column: 14, scope: !1517, inlinedAt: !1849)
!1864 = !DILocation(line: 1116, column: 20, scope: !1517, inlinedAt: !1849)
!1865 = !DILocation(line: 1141, column: 12, scope: !1517, inlinedAt: !1849)
!1866 = !DILocation(line: 1141, column: 5, scope: !1517, inlinedAt: !1849)
!1867 = !DILocation(line: 1142, column: 10, scope: !1517, inlinedAt: !1849)
!1868 = !DILocation(line: 1142, column: 19, scope: !1517, inlinedAt: !1849)
!1869 = !DILocation(line: 1143, column: 5, scope: !1517, inlinedAt: !1849)
!1870 = !DILocation(line: 1191, column: 18, scope: !1850)
!1871 = !DILocation(line: 1191, column: 24, scope: !1850)
!1872 = !DILocation(line: 1191, column: 21, scope: !1850)
!1873 = !DILocation(line: 1191, column: 9, scope: !1850)
!1874 = !DILocation(line: 1193, column: 5, scope: !1850)
!1875 = !DILocation(line: 1194, column: 13, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !1, line: 1194, column: 13)
!1877 = distinct !DILexicalBlock(scope: !1846, file: !1, line: 1193, column: 12)
!1878 = !DILocation(line: 1194, column: 37, scope: !1876)
!1879 = !DILocation(line: 1194, column: 13, scope: !1877)
!1880 = !DILocation(line: 1195, column: 37, scope: !1877)
!1881 = !DILocation(line: 1195, column: 43, scope: !1877)
!1882 = !DILocation(line: 1195, column: 40, scope: !1877)
!1883 = !DILocation(line: 1195, column: 13, scope: !1877)
!1884 = !DILocation(line: 0, scope: !1821)
!1885 = !DILocation(line: 0, scope: !1877)
!1886 = !DILocation(line: 1184, column: 22, scope: !1821)
!1887 = !DILocation(line: 1198, column: 10, scope: !1831)
!1888 = !DILocation(line: 1198, column: 24, scope: !1830)
!1889 = !{!1835, !414, i64 64}
!1890 = !DILocation(line: 1198, column: 19, scope: !1830)
!1891 = !DILocation(line: 1198, column: 5, scope: !1831)
!1892 = !DILocation(line: 1199, column: 51, scope: !1829)
!1893 = !DILocation(line: 1199, column: 48, scope: !1829)
!1894 = !DILocation(line: 1199, column: 60, scope: !1829)
!1895 = !DILocation(line: 87, column: 39, scope: !497, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 1200, column: 32, scope: !1829)
!1897 = !DILocation(line: 88, column: 27, scope: !497, inlinedAt: !1896)
!1898 = !DILocation(line: 88, column: 19, scope: !497, inlinedAt: !1896)
!1899 = !DILocation(line: 89, column: 5, scope: !497, inlinedAt: !1896)
!1900 = !DILocation(line: 91, column: 20, scope: !511, inlinedAt: !1896)
!1901 = !DILocation(line: 91, column: 13, scope: !511, inlinedAt: !1896)
!1902 = !DILocation(line: 93, column: 20, scope: !511, inlinedAt: !1896)
!1903 = !DILocation(line: 93, column: 34, scope: !511, inlinedAt: !1896)
!1904 = !DILocation(line: 93, column: 13, scope: !511, inlinedAt: !1896)
!1905 = !DILocation(line: 95, column: 20, scope: !511, inlinedAt: !1896)
!1906 = !DILocation(line: 95, column: 35, scope: !511, inlinedAt: !1896)
!1907 = !DILocation(line: 95, column: 13, scope: !511, inlinedAt: !1896)
!1908 = !DILocation(line: 97, column: 20, scope: !511, inlinedAt: !1896)
!1909 = !DILocation(line: 97, column: 35, scope: !511, inlinedAt: !1896)
!1910 = !DILocation(line: 97, column: 13, scope: !511, inlinedAt: !1896)
!1911 = !DILocation(line: 99, column: 20, scope: !511, inlinedAt: !1896)
!1912 = !DILocation(line: 99, column: 35, scope: !511, inlinedAt: !1896)
!1913 = !DILocation(line: 99, column: 13, scope: !511, inlinedAt: !1896)
!1914 = !DILocation(line: 0, scope: !511, inlinedAt: !1896)
!1915 = !DILocation(line: 0, scope: !1829)
!1916 = !DILocation(line: 102, column: 1, scope: !497, inlinedAt: !1896)
!1917 = !DILocation(line: 1199, column: 22, scope: !1829)
!1918 = !DILocation(line: 1199, column: 13, scope: !1829)
!1919 = !DILocation(line: 1201, column: 9, scope: !1829)
!1920 = !DILocation(line: 1203, column: 20, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1829, file: !1, line: 1201, column: 24)
!1922 = !DILocation(line: 1204, column: 13, scope: !1921)
!1923 = !DILocation(line: 1206, column: 27, scope: !1921)
!1924 = !DILocation(line: 1206, column: 13, scope: !1921)
!1925 = !DILocation(line: 1207, column: 13, scope: !1921)
!1926 = !DILocation(line: 0, scope: !1921)
!1927 = !DILocation(line: 1209, column: 5, scope: !1830)
!1928 = !DILocation(line: 1198, column: 31, scope: !1830)
!1929 = !DILocation(line: 1198, column: 5, scope: !1830)
!1930 = distinct !{!1930, !1891, !1931}
!1931 = !DILocation(line: 1209, column: 5, scope: !1831)
!1932 = !DILocation(line: 1192, column: 16, scope: !1850)
!1933 = !DILocation(line: 1210, column: 14, scope: !1821)
!1934 = !DILocation(line: 1183, column: 20, scope: !1821)
!1935 = !DILocation(line: 1211, column: 9, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1821, file: !1, line: 1211, column: 9)
!1937 = !DILocation(line: 1211, column: 9, scope: !1821)
!1938 = !DILocation(line: 1212, column: 30, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1936, file: !1, line: 1211, column: 18)
!1940 = !DILocation(line: 1212, column: 36, scope: !1939)
!1941 = !DILocation(line: 1212, column: 33, scope: !1939)
!1942 = !DILocation(line: 1212, column: 9, scope: !1939)
!1943 = !DILocation(line: 1213, column: 54, scope: !1939)
!1944 = !DILocation(line: 1213, column: 51, scope: !1939)
!1945 = !DILocation(line: 1213, column: 65, scope: !1939)
!1946 = !DILocation(line: 1213, column: 69, scope: !1939)
!1947 = !{!1948, !414, i64 40}
!1948 = !{!"redisDb", !491, i64 0, !491, i64 8, !491, i64 16, !491, i64 24, !491, i64 32, !414, i64 40, !848, i64 48, !491, i64 56}
!1949 = !DILocation(line: 1213, column: 9, scope: !1939)
!1950 = !DILocation(line: 1214, column: 21, scope: !1939)
!1951 = !{!847, !848, i64 2080}
!1952 = !DILocation(line: 1215, column: 9, scope: !1939)
!1953 = !DILocation(line: 1216, column: 5, scope: !1939)
!1954 = !DILocation(line: 1217, column: 34, scope: !1821)
!1955 = !DILocation(line: 1217, column: 48, scope: !1821)
!1956 = !DILocation(line: 1217, column: 17, scope: !1821)
!1957 = !DILocation(line: 1217, column: 5, scope: !1821)
!1958 = !DILocation(line: 1218, column: 1, scope: !1821)
!1959 = distinct !DISubprogram(name: "pfcountCommand", scope: !1, file: !1, line: 1221, type: !1675, isLocal: false, isDefinition: true, scopeLine: 1221, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1960)
!1960 = !{!1961, !1962, !1963, !1964, !1965, !1971, !1972, !1973, !1977}
!1961 = !DILocalVariable(name: "c", arg: 1, scope: !1959, file: !1, line: 1221, type: !1554)
!1962 = !DILocalVariable(name: "o", scope: !1959, file: !1, line: 1222, type: !455)
!1963 = !DILocalVariable(name: "hdr", scope: !1959, file: !1, line: 1223, type: !17)
!1964 = !DILocalVariable(name: "card", scope: !1959, file: !1, line: 1224, type: !12)
!1965 = !DILocalVariable(name: "max", scope: !1966, file: !1, line: 1231, type: !1968)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !1, line: 1230, column: 22)
!1967 = distinct !DILexicalBlock(scope: !1959, file: !1, line: 1230, column: 9)
!1968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 131200, elements: !1969)
!1969 = !{!1970}
!1970 = !DISubrange(count: 16400)
!1971 = !DILocalVariable(name: "registers", scope: !1966, file: !1, line: 1231, type: !16)
!1972 = !DILocalVariable(name: "j", scope: !1966, file: !1, line: 1232, type: !15)
!1973 = !DILocalVariable(name: "o", scope: !1974, file: !1, line: 1241, type: !455)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !1, line: 1239, column: 39)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !1, line: 1239, column: 9)
!1976 = distinct !DILexicalBlock(scope: !1966, file: !1, line: 1239, column: 9)
!1977 = !DILocalVariable(name: "invalid", scope: !1978, file: !1, line: 1284, type: !15)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !1, line: 1283, column: 16)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !1, line: 1273, column: 13)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !1, line: 1267, column: 12)
!1981 = distinct !DILexicalBlock(scope: !1959, file: !1, line: 1263, column: 9)
!1982 = !DILocation(line: 1221, column: 29, scope: !1959)
!1983 = !DILocation(line: 1230, column: 12, scope: !1967)
!1984 = !DILocation(line: 1230, column: 17, scope: !1967)
!1985 = !DILocation(line: 1230, column: 9, scope: !1959)
!1986 = !DILocation(line: 1231, column: 9, scope: !1966)
!1987 = !DILocation(line: 1231, column: 17, scope: !1966)
!1988 = !DILocation(line: 1235, column: 9, scope: !1966)
!1989 = !DILocation(line: 1236, column: 15, scope: !1966)
!1990 = !DILocation(line: 1223, column: 20, scope: !1959)
!1991 = !DILocation(line: 1237, column: 14, scope: !1966)
!1992 = !DILocation(line: 1237, column: 23, scope: !1966)
!1993 = !DILocation(line: 1238, column: 25, scope: !1966)
!1994 = !DILocation(line: 1231, column: 51, scope: !1966)
!1995 = !DILocation(line: 1232, column: 13, scope: !1966)
!1996 = !DILocation(line: 1239, column: 14, scope: !1976)
!1997 = !DILocation(line: 1239, column: 28, scope: !1975)
!1998 = !DILocation(line: 1239, column: 23, scope: !1975)
!1999 = !DILocation(line: 1239, column: 9, scope: !1976)
!2000 = !DILocation(line: 1241, column: 40, scope: !1974)
!2001 = !DILocation(line: 1241, column: 46, scope: !1974)
!2002 = !DILocation(line: 1241, column: 43, scope: !1974)
!2003 = !DILocation(line: 1241, column: 23, scope: !1974)
!2004 = !DILocation(line: 1241, column: 19, scope: !1974)
!2005 = !DILocation(line: 1242, column: 19, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1974, file: !1, line: 1242, column: 17)
!2007 = !DILocation(line: 1242, column: 17, scope: !1974)
!2008 = !DILocation(line: 1243, column: 17, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1974, file: !1, line: 1243, column: 17)
!2010 = !DILocation(line: 1243, column: 41, scope: !2009)
!2011 = !DILocation(line: 1243, column: 17, scope: !1974)
!2012 = !DILocation(line: 1247, column: 17, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1974, file: !1, line: 1247, column: 17)
!2014 = !DILocation(line: 1247, column: 39, scope: !2013)
!2015 = !DILocation(line: 1247, column: 17, scope: !1974)
!2016 = !DILocation(line: 1248, column: 31, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2013, file: !1, line: 1247, column: 49)
!2018 = !DILocation(line: 1248, column: 17, scope: !2017)
!2019 = !DILocation(line: 1249, column: 17, scope: !2017)
!2020 = !DILocation(line: 0, scope: !2017)
!2021 = !DILocation(line: 0, scope: !1975)
!2022 = !DILocation(line: 1239, column: 35, scope: !1975)
!2023 = !DILocation(line: 1239, column: 9, scope: !1975)
!2024 = distinct !{!2024, !1999, !2025}
!2025 = !DILocation(line: 1251, column: 9, scope: !1976)
!2026 = !DILocation(line: 1254, column: 28, scope: !1966)
!2027 = !DILocation(line: 1254, column: 9, scope: !1966)
!2028 = !DILocation(line: 1255, column: 9, scope: !1966)
!2029 = !DILocation(line: 1256, column: 5, scope: !1967)
!2030 = !DILocation(line: 1262, column: 27, scope: !1959)
!2031 = !DILocation(line: 1262, column: 33, scope: !1959)
!2032 = !DILocation(line: 1262, column: 30, scope: !1959)
!2033 = !DILocation(line: 1262, column: 9, scope: !1959)
!2034 = !DILocation(line: 1222, column: 11, scope: !1959)
!2035 = !DILocation(line: 1263, column: 11, scope: !1981)
!2036 = !DILocation(line: 1263, column: 9, scope: !1959)
!2037 = !DILocation(line: 1266, column: 27, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !1981, file: !1, line: 1263, column: 20)
!2039 = !{!2040, !491, i64 32}
!2040 = !{!"sharedObjectsStruct", !491, i64 0, !491, i64 8, !491, i64 16, !491, i64 24, !491, i64 32, !491, i64 40, !491, i64 48, !491, i64 56, !491, i64 64, !491, i64 72, !491, i64 80, !491, i64 88, !491, i64 96, !491, i64 104, !491, i64 112, !491, i64 120, !491, i64 128, !491, i64 136, !491, i64 144, !491, i64 152, !491, i64 160, !491, i64 168, !491, i64 176, !491, i64 184, !491, i64 192, !491, i64 200, !491, i64 208, !491, i64 216, !491, i64 224, !491, i64 232, !491, i64 240, !491, i64 248, !491, i64 256, !491, i64 264, !491, i64 272, !491, i64 280, !491, i64 288, !491, i64 296, !491, i64 304, !491, i64 312, !491, i64 320, !491, i64 328, !491, i64 336, !491, i64 344, !491, i64 352, !491, i64 360, !127, i64 368, !127, i64 448, !127, i64 80448, !127, i64 80704, !491, i64 80960, !491, i64 80968}
!2041 = !DILocation(line: 1266, column: 9, scope: !2038)
!2042 = !DILocation(line: 1267, column: 5, scope: !2038)
!2043 = !DILocation(line: 1268, column: 13, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1980, file: !1, line: 1268, column: 13)
!2045 = !DILocation(line: 1268, column: 37, scope: !2044)
!2046 = !DILocation(line: 1268, column: 13, scope: !1980)
!2047 = !DILocation(line: 1269, column: 37, scope: !1980)
!2048 = !DILocation(line: 1269, column: 43, scope: !1980)
!2049 = !DILocation(line: 1269, column: 40, scope: !1980)
!2050 = !DILocation(line: 1269, column: 13, scope: !1980)
!2051 = !DILocation(line: 1272, column: 18, scope: !1980)
!2052 = !DILocation(line: 1273, column: 13, scope: !1979)
!2053 = !DILocation(line: 1273, column: 13, scope: !1980)
!2054 = !DILocation(line: 1275, column: 30, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !1979, file: !1, line: 1273, column: 35)
!2056 = !DILocation(line: 1275, column: 20, scope: !2055)
!2057 = !DILocation(line: 1224, column: 14, scope: !1959)
!2058 = !DILocation(line: 1276, column: 31, scope: !2055)
!2059 = !DILocation(line: 1276, column: 21, scope: !2055)
!2060 = !DILocation(line: 1276, column: 44, scope: !2055)
!2061 = !DILocation(line: 1277, column: 31, scope: !2055)
!2062 = !DILocation(line: 1277, column: 21, scope: !2055)
!2063 = !DILocation(line: 1277, column: 44, scope: !2055)
!2064 = !DILocation(line: 1278, column: 31, scope: !2055)
!2065 = !DILocation(line: 1278, column: 21, scope: !2055)
!2066 = !DILocation(line: 1278, column: 44, scope: !2055)
!2067 = !DILocation(line: 1279, column: 31, scope: !2055)
!2068 = !DILocation(line: 1279, column: 21, scope: !2055)
!2069 = !DILocation(line: 1279, column: 44, scope: !2055)
!2070 = !DILocation(line: 1280, column: 31, scope: !2055)
!2071 = !DILocation(line: 1280, column: 21, scope: !2055)
!2072 = !DILocation(line: 1280, column: 44, scope: !2055)
!2073 = !DILocation(line: 1281, column: 31, scope: !2055)
!2074 = !DILocation(line: 1281, column: 21, scope: !2055)
!2075 = !DILocation(line: 1281, column: 44, scope: !2055)
!2076 = !DILocation(line: 1282, column: 21, scope: !2055)
!2077 = !DILocation(line: 1282, column: 44, scope: !2055)
!2078 = !DILocation(line: 1276, column: 18, scope: !2055)
!2079 = !DILocation(line: 1277, column: 18, scope: !2055)
!2080 = !DILocation(line: 1278, column: 18, scope: !2055)
!2081 = !DILocation(line: 1279, column: 18, scope: !2055)
!2082 = !DILocation(line: 1280, column: 18, scope: !2055)
!2083 = !DILocation(line: 1281, column: 18, scope: !2055)
!2084 = !DILocation(line: 1282, column: 18, scope: !2055)
!2085 = !DILocation(line: 1283, column: 9, scope: !2055)
!2086 = !DILocation(line: 1284, column: 13, scope: !1978)
!2087 = !DILocation(line: 1284, column: 17, scope: !1978)
!2088 = !DILocation(line: 1286, column: 20, scope: !1978)
!2089 = !DILocation(line: 1287, column: 17, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1978, file: !1, line: 1287, column: 17)
!2091 = !DILocation(line: 1287, column: 17, scope: !1978)
!2092 = !DILocation(line: 1288, column: 31, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2090, file: !1, line: 1287, column: 26)
!2094 = !DILocation(line: 1288, column: 17, scope: !2093)
!2095 = !DILocation(line: 1289, column: 17, scope: !2093)
!2096 = !DILocation(line: 1305, column: 9, scope: !1979)
!2097 = !DILocation(line: 1291, column: 28, scope: !1978)
!2098 = !DILocation(line: 1291, column: 13, scope: !1978)
!2099 = !DILocation(line: 1291, column: 26, scope: !1978)
!2100 = !DILocation(line: 1292, column: 34, scope: !1978)
!2101 = !DILocation(line: 1292, column: 28, scope: !1978)
!2102 = !DILocation(line: 1292, column: 13, scope: !1978)
!2103 = !DILocation(line: 1292, column: 26, scope: !1978)
!2104 = !DILocation(line: 1293, column: 34, scope: !1978)
!2105 = !DILocation(line: 1293, column: 28, scope: !1978)
!2106 = !DILocation(line: 1293, column: 13, scope: !1978)
!2107 = !DILocation(line: 1293, column: 26, scope: !1978)
!2108 = !DILocation(line: 1294, column: 34, scope: !1978)
!2109 = !DILocation(line: 1294, column: 28, scope: !1978)
!2110 = !DILocation(line: 1294, column: 13, scope: !1978)
!2111 = !DILocation(line: 1294, column: 26, scope: !1978)
!2112 = !DILocation(line: 1295, column: 34, scope: !1978)
!2113 = !DILocation(line: 1295, column: 28, scope: !1978)
!2114 = !DILocation(line: 1295, column: 13, scope: !1978)
!2115 = !DILocation(line: 1295, column: 26, scope: !1978)
!2116 = !DILocation(line: 1296, column: 34, scope: !1978)
!2117 = !DILocation(line: 1296, column: 28, scope: !1978)
!2118 = !DILocation(line: 1296, column: 13, scope: !1978)
!2119 = !DILocation(line: 1296, column: 26, scope: !1978)
!2120 = !DILocation(line: 1297, column: 34, scope: !1978)
!2121 = !DILocation(line: 1297, column: 28, scope: !1978)
!2122 = !DILocation(line: 1297, column: 13, scope: !1978)
!2123 = !DILocation(line: 1297, column: 26, scope: !1978)
!2124 = !DILocation(line: 1298, column: 34, scope: !1978)
!2125 = !DILocation(line: 1298, column: 28, scope: !1978)
!2126 = !DILocation(line: 1298, column: 26, scope: !1978)
!2127 = !DILocation(line: 1303, column: 34, scope: !1978)
!2128 = !DILocation(line: 1303, column: 40, scope: !1978)
!2129 = !DILocation(line: 1303, column: 37, scope: !1978)
!2130 = !DILocation(line: 1303, column: 13, scope: !1978)
!2131 = !DILocation(line: 1304, column: 25, scope: !1978)
!2132 = !DILocation(line: 0, scope: !1978)
!2133 = !DILocation(line: 1306, column: 9, scope: !1980)
!2134 = !DILocation(line: 1308, column: 1, scope: !1959)
!2135 = distinct !DISubprogram(name: "pfmergeCommand", scope: !1, file: !1, line: 1311, type: !1675, isLocal: false, isDefinition: true, scopeLine: 1311, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2136)
!2136 = !{!2137, !2138, !2140, !2141, !2142, !2143, !2147}
!2137 = !DILocalVariable(name: "c", arg: 1, scope: !2135, file: !1, line: 1311, type: !1554)
!2138 = !DILocalVariable(name: "max", scope: !2135, file: !1, line: 1312, type: !2139)
!2139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 131072, elements: !1772)
!2140 = !DILocalVariable(name: "hdr", scope: !2135, file: !1, line: 1313, type: !17)
!2141 = !DILocalVariable(name: "j", scope: !2135, file: !1, line: 1314, type: !15)
!2142 = !DILocalVariable(name: "use_dense", scope: !2135, file: !1, line: 1315, type: !15)
!2143 = !DILocalVariable(name: "o", scope: !2144, file: !1, line: 1323, type: !455)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !1, line: 1321, column: 35)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !1, line: 1321, column: 5)
!2146 = distinct !DILexicalBlock(scope: !2135, file: !1, line: 1321, column: 5)
!2147 = !DILocalVariable(name: "o", scope: !2135, file: !1, line: 1341, type: !455)
!2148 = !DILocation(line: 1311, column: 29, scope: !2135)
!2149 = !DILocation(line: 1312, column: 5, scope: !2135)
!2150 = !DILocation(line: 1312, column: 13, scope: !2135)
!2151 = !DILocation(line: 1315, column: 9, scope: !2135)
!2152 = !DILocation(line: 1320, column: 5, scope: !2135)
!2153 = !DILocation(line: 1314, column: 9, scope: !2135)
!2154 = !DILocation(line: 1321, column: 10, scope: !2146)
!2155 = !DILocation(line: 1321, column: 24, scope: !2145)
!2156 = !DILocation(line: 1321, column: 19, scope: !2145)
!2157 = !DILocation(line: 1321, column: 5, scope: !2146)
!2158 = !DILocation(line: 0, scope: !2135)
!2159 = !DILocation(line: 1323, column: 39, scope: !2144)
!2160 = !DILocation(line: 1323, column: 19, scope: !2144)
!2161 = !DILocation(line: 1323, column: 15, scope: !2144)
!2162 = !DILocation(line: 1324, column: 15, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2144, file: !1, line: 1324, column: 13)
!2164 = !DILocation(line: 1324, column: 13, scope: !2144)
!2165 = !DILocation(line: 1325, column: 13, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2144, file: !1, line: 1325, column: 13)
!2167 = !DILocation(line: 1325, column: 37, scope: !2166)
!2168 = !DILocation(line: 1325, column: 13, scope: !2144)
!2169 = !DILocation(line: 1329, column: 18, scope: !2144)
!2170 = !DILocation(line: 1313, column: 20, scope: !2135)
!2171 = !DILocation(line: 1330, column: 18, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2144, file: !1, line: 1330, column: 13)
!2173 = !DILocation(line: 1330, column: 27, scope: !2172)
!2174 = !DILocation(line: 1330, column: 13, scope: !2144)
!2175 = !DILocation(line: 1330, column: 41, scope: !2172)
!2176 = !DILocation(line: 1334, column: 13, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2144, file: !1, line: 1334, column: 13)
!2178 = !DILocation(line: 1334, column: 29, scope: !2177)
!2179 = !DILocation(line: 1334, column: 13, scope: !2144)
!2180 = !DILocation(line: 1335, column: 27, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2177, file: !1, line: 1334, column: 39)
!2182 = !DILocation(line: 1335, column: 13, scope: !2181)
!2183 = !DILocation(line: 1336, column: 13, scope: !2181)
!2184 = !DILocation(line: 0, scope: !2172)
!2185 = !DILocation(line: 0, scope: !2145)
!2186 = !DILocation(line: 1321, column: 31, scope: !2145)
!2187 = !DILocation(line: 1321, column: 5, scope: !2145)
!2188 = distinct !{!2188, !2157, !2189}
!2189 = !DILocation(line: 1338, column: 5, scope: !2146)
!2190 = !DILocation(line: 1341, column: 36, scope: !2135)
!2191 = !DILocation(line: 1341, column: 15, scope: !2135)
!2192 = !DILocation(line: 1341, column: 11, scope: !2135)
!2193 = !DILocation(line: 1342, column: 11, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2135, file: !1, line: 1342, column: 9)
!2195 = !DILocation(line: 1342, column: 9, scope: !2135)
!2196 = !DILocation(line: 1119, column: 9, scope: !1517, inlinedAt: !2197)
!2197 = distinct !DILocation(line: 1346, column: 13, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2194, file: !1, line: 1342, column: 20)
!2199 = !DILocation(line: 1122, column: 9, scope: !1517, inlinedAt: !2197)
!2200 = !DILocation(line: 1127, column: 9, scope: !1517, inlinedAt: !2197)
!2201 = !DILocation(line: 1117, column: 9, scope: !1517, inlinedAt: !2197)
!2202 = !DILocation(line: 1128, column: 21, scope: !1517, inlinedAt: !2197)
!2203 = !DILocation(line: 1118, column: 14, scope: !1517, inlinedAt: !2197)
!2204 = !DILocation(line: 1129, column: 5, scope: !1517, inlinedAt: !2197)
!2205 = !DILocation(line: 1130, column: 13, scope: !1528, inlinedAt: !2197)
!2206 = !DILocation(line: 1131, column: 13, scope: !1528, inlinedAt: !2197)
!2207 = !DILocation(line: 1132, column: 9, scope: !1530, inlinedAt: !2197)
!2208 = !DILocation(line: 1136, column: 5, scope: !1517, inlinedAt: !2197)
!2209 = !DILocation(line: 1139, column: 9, scope: !1517, inlinedAt: !2197)
!2210 = !DILocation(line: 1115, column: 11, scope: !1517, inlinedAt: !2197)
!2211 = !DILocation(line: 1140, column: 14, scope: !1517, inlinedAt: !2197)
!2212 = !DILocation(line: 1116, column: 20, scope: !1517, inlinedAt: !2197)
!2213 = !DILocation(line: 1141, column: 12, scope: !1517, inlinedAt: !2197)
!2214 = !DILocation(line: 1141, column: 5, scope: !1517, inlinedAt: !2197)
!2215 = !DILocation(line: 1142, column: 10, scope: !1517, inlinedAt: !2197)
!2216 = !DILocation(line: 1142, column: 19, scope: !1517, inlinedAt: !2197)
!2217 = !DILocation(line: 1143, column: 5, scope: !1517, inlinedAt: !2197)
!2218 = !DILocation(line: 1347, column: 18, scope: !2198)
!2219 = !DILocation(line: 1347, column: 24, scope: !2198)
!2220 = !DILocation(line: 1347, column: 21, scope: !2198)
!2221 = !DILocation(line: 1347, column: 9, scope: !2198)
!2222 = !DILocation(line: 1348, column: 5, scope: !2198)
!2223 = !DILocation(line: 1352, column: 37, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2194, file: !1, line: 1348, column: 12)
!2225 = !DILocation(line: 1352, column: 43, scope: !2224)
!2226 = !DILocation(line: 1352, column: 40, scope: !2224)
!2227 = !DILocation(line: 1352, column: 13, scope: !2224)
!2228 = !DILocation(line: 0, scope: !2224)
!2229 = !DILocation(line: 1357, column: 9, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2135, file: !1, line: 1357, column: 9)
!2231 = !DILocation(line: 1357, column: 19, scope: !2230)
!2232 = !DILocation(line: 1357, column: 22, scope: !2230)
!2233 = !DILocation(line: 1357, column: 42, scope: !2230)
!2234 = !DILocation(line: 1357, column: 9, scope: !2135)
!2235 = !DILocation(line: 1358, column: 23, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2230, file: !1, line: 1357, column: 52)
!2237 = !DILocation(line: 1358, column: 9, scope: !2236)
!2238 = !DILocation(line: 1359, column: 9, scope: !2236)
!2239 = !DILocation(line: 1364, column: 10, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2135, file: !1, line: 1364, column: 5)
!2241 = !DILocation(line: 1364, column: 5, scope: !2240)
!2242 = !DILocation(line: 1365, column: 13, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !1, line: 1365, column: 13)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !1, line: 1364, column: 41)
!2245 = distinct !DILexicalBlock(scope: !2240, file: !1, line: 1364, column: 5)
!2246 = !DILocation(line: 1365, column: 20, scope: !2243)
!2247 = !DILocation(line: 1365, column: 13, scope: !2244)
!2248 = !DILocation(line: 1366, column: 18, scope: !2244)
!2249 = !DILocation(line: 1367, column: 21, scope: !2244)
!2250 = !DILocation(line: 1367, column: 9, scope: !2244)
!2251 = !DILocation(line: 493, column: 26, scope: !224, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 1368, column: 25, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2244, file: !1, line: 1367, column: 31)
!2254 = !DILocation(line: 493, column: 42, scope: !224, inlinedAt: !2252)
!2255 = !DILocation(line: 493, column: 57, scope: !224, inlinedAt: !2252)
!2256 = !DILocation(line: 496, column: 5, scope: !233, inlinedAt: !2252)
!2257 = !DILocation(line: 497, column: 9, scope: !242, inlinedAt: !2252)
!2258 = !DILocation(line: 497, column: 15, scope: !242, inlinedAt: !2252)
!2259 = !DILocation(line: 497, column: 9, scope: !224, inlinedAt: !2252)
!2260 = !DILocation(line: 498, column: 9, scope: !240, inlinedAt: !2252)
!2261 = !DILocation(line: 499, column: 9, scope: !241, inlinedAt: !2252)
!2262 = !DILocation(line: 0, scope: !2253)
!2263 = !DILocation(line: 503, column: 1, scope: !224, inlinedAt: !2252)
!2264 = !DILocation(line: 1368, column: 63, scope: !2253)
!2265 = !DILocation(line: 1369, column: 26, scope: !2253)
!2266 = !DILocation(line: 1369, column: 52, scope: !2253)
!2267 = !DILocation(line: 1364, column: 37, scope: !2245)
!2268 = !DILocation(line: 1364, column: 5, scope: !2245)
!2269 = !DILocation(line: 1364, column: 19, scope: !2245)
!2270 = distinct !{!2270, !2241, !2271}
!2271 = !DILocation(line: 1371, column: 5, scope: !2240)
!2272 = !DILocation(line: 1372, column: 14, scope: !2135)
!2273 = !DILocation(line: 1374, column: 5, scope: !2135)
!2274 = !DILocation(line: 1376, column: 26, scope: !2135)
!2275 = !DILocation(line: 1376, column: 32, scope: !2135)
!2276 = !DILocation(line: 1376, column: 29, scope: !2135)
!2277 = !DILocation(line: 1376, column: 5, scope: !2135)
!2278 = !DILocation(line: 1379, column: 50, scope: !2135)
!2279 = !DILocation(line: 1379, column: 47, scope: !2135)
!2280 = !DILocation(line: 1379, column: 61, scope: !2135)
!2281 = !DILocation(line: 1379, column: 65, scope: !2135)
!2282 = !DILocation(line: 1379, column: 5, scope: !2135)
!2283 = !DILocation(line: 1380, column: 17, scope: !2135)
!2284 = !DILocation(line: 1381, column: 23, scope: !2135)
!2285 = !{!2040, !491, i64 8}
!2286 = !DILocation(line: 1381, column: 5, scope: !2135)
!2287 = !DILocation(line: 1382, column: 1, scope: !2135)
!2288 = !DILocation(line: 0, scope: !2181)
!2289 = distinct !DISubprogram(name: "pfselftestCommand", scope: !1, file: !1, line: 1390, type: !1675, isLocal: false, isDefinition: true, scopeLine: 1390, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2290)
!2290 = !{!2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2306, !2308, !2309, !2310, !2311, !2312, !2316, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2333}
!2291 = !DILocalVariable(name: "c", arg: 1, scope: !2289, file: !1, line: 1390, type: !1554)
!2292 = !DILocalVariable(name: "j", scope: !2289, file: !1, line: 1391, type: !72)
!2293 = !DILocalVariable(name: "i", scope: !2289, file: !1, line: 1391, type: !72)
!2294 = !DILocalVariable(name: "bitcounters", scope: !2289, file: !1, line: 1392, type: !38)
!2295 = !DILocalVariable(name: "hdr", scope: !2289, file: !1, line: 1393, type: !17)
!2296 = !DILocalVariable(name: "hdr2", scope: !2289, file: !1, line: 1393, type: !17)
!2297 = !DILocalVariable(name: "o", scope: !2289, file: !1, line: 1394, type: !455)
!2298 = !DILocalVariable(name: "bytecounters", scope: !2289, file: !1, line: 1395, type: !2139)
!2299 = !DILocalVariable(name: "r", scope: !2300, file: !1, line: 1405, type: !72)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !1, line: 1404, column: 45)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !1, line: 1404, column: 9)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !1, line: 1404, column: 9)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !1, line: 1401, column: 43)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !1, line: 1401, column: 5)
!2305 = distinct !DILexicalBlock(scope: !2289, file: !1, line: 1401, column: 5)
!2306 = !DILocalVariable(name: "_p", scope: !2307, file: !1, line: 1408, type: !16)
!2307 = distinct !DILexicalBlock(scope: !2300, file: !1, line: 1408, column: 13)
!2308 = !DILocalVariable(name: "_byte", scope: !2307, file: !1, line: 1408, type: !14)
!2309 = !DILocalVariable(name: "_fb", scope: !2307, file: !1, line: 1408, type: !14)
!2310 = !DILocalVariable(name: "_fb8", scope: !2307, file: !1, line: 1408, type: !14)
!2311 = !DILocalVariable(name: "_v", scope: !2307, file: !1, line: 1408, type: !14)
!2312 = !DILocalVariable(name: "val", scope: !2313, file: !1, line: 1412, type: !72)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !1, line: 1411, column: 45)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !1, line: 1411, column: 9)
!2315 = distinct !DILexicalBlock(scope: !2303, file: !1, line: 1411, column: 9)
!2316 = !DILocalVariable(name: "_p", scope: !2317, file: !1, line: 1414, type: !16)
!2317 = distinct !DILexicalBlock(scope: !2313, file: !1, line: 1414, column: 13)
!2318 = !DILocalVariable(name: "_byte", scope: !2317, file: !1, line: 1414, type: !14)
!2319 = !DILocalVariable(name: "_fb", scope: !2317, file: !1, line: 1414, type: !14)
!2320 = !DILocalVariable(name: "_fb8", scope: !2317, file: !1, line: 1414, type: !14)
!2321 = !DILocalVariable(name: "b0", scope: !2317, file: !1, line: 1414, type: !14)
!2322 = !DILocalVariable(name: "b1", scope: !2317, file: !1, line: 1414, type: !14)
!2323 = !DILocalVariable(name: "relerr", scope: !2289, file: !1, line: 1436, type: !41)
!2324 = !DILocalVariable(name: "checkpoint", scope: !2289, file: !1, line: 1437, type: !44)
!2325 = !DILocalVariable(name: "seed", scope: !2289, file: !1, line: 1438, type: !12)
!2326 = !DILocalVariable(name: "ele", scope: !2289, file: !1, line: 1439, type: !12)
!2327 = !DILocalVariable(name: "abserr", scope: !2328, file: !1, line: 1463, type: !44)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !1, line: 1462, column: 30)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !1, line: 1462, column: 13)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !1, line: 1440, column: 37)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !1, line: 1440, column: 5)
!2332 = distinct !DILexicalBlock(scope: !2289, file: !1, line: 1440, column: 5)
!2333 = !DILocalVariable(name: "maxerr", scope: !2328, file: !1, line: 1464, type: !12)
!2334 = !DILocation(line: 1390, column: 32, scope: !2289)
!2335 = !DILocation(line: 1392, column: 23, scope: !2289)
!2336 = !DILocation(line: 1392, column: 9, scope: !2289)
!2337 = !DILocation(line: 1393, column: 26, scope: !2289)
!2338 = !DILocation(line: 1393, column: 20, scope: !2289)
!2339 = !DILocation(line: 1394, column: 11, scope: !2289)
!2340 = !DILocation(line: 1395, column: 5, scope: !2289)
!2341 = !DILocation(line: 1395, column: 13, scope: !2289)
!2342 = !DILocation(line: 1391, column: 18, scope: !2289)
!2343 = !DILocation(line: 1401, column: 10, scope: !2305)
!2344 = !DILocation(line: 1401, column: 5, scope: !2305)
!2345 = !DILocation(line: 1391, column: 21, scope: !2289)
!2346 = !DILocation(line: 1404, column: 14, scope: !2302)
!2347 = !DILocation(line: 1404, column: 9, scope: !2302)
!2348 = !DILocation(line: 1405, column: 30, scope: !2300)
!2349 = !DILocation(line: 1405, column: 37, scope: !2300)
!2350 = !DILocation(line: 1405, column: 26, scope: !2300)
!2351 = !DILocation(line: 1407, column: 31, scope: !2300)
!2352 = !DILocation(line: 1407, column: 13, scope: !2300)
!2353 = !DILocation(line: 1407, column: 29, scope: !2300)
!2354 = !DILocation(line: 1408, column: 13, scope: !2307)
!2355 = !DILocation(line: 1404, column: 41, scope: !2301)
!2356 = !DILocation(line: 1404, column: 9, scope: !2301)
!2357 = !DILocation(line: 1404, column: 23, scope: !2301)
!2358 = distinct !{!2358, !2347, !2359}
!2359 = !DILocation(line: 1409, column: 9, scope: !2302)
!2360 = !DILocation(line: 1411, column: 14, scope: !2315)
!2361 = !DILocation(line: 1411, column: 9, scope: !2315)
!2362 = !DILocation(line: 1414, column: 13, scope: !2317)
!2363 = !DILocation(line: 1412, column: 26, scope: !2313)
!2364 = !DILocation(line: 1415, column: 24, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2313, file: !1, line: 1415, column: 17)
!2366 = !DILocation(line: 1415, column: 21, scope: !2365)
!2367 = !DILocation(line: 1415, column: 17, scope: !2313)
!2368 = !DILocation(line: 1416, column: 17, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2365, file: !1, line: 1415, column: 41)
!2370 = !DILocation(line: 1419, column: 17, scope: !2369)
!2371 = !DILocation(line: 1488, column: 5, scope: !2289)
!2372 = !DILocation(line: 1489, column: 9, scope: !2289)
!2373 = !DILocation(line: 1421, column: 9, scope: !2314)
!2374 = !DILocation(line: 1411, column: 41, scope: !2314)
!2375 = !DILocation(line: 1411, column: 9, scope: !2314)
!2376 = !DILocation(line: 1411, column: 23, scope: !2314)
!2377 = distinct !{!2377, !2361, !2378}
!2378 = !DILocation(line: 1421, column: 9, scope: !2315)
!2379 = !DILocation(line: 1401, column: 39, scope: !2304)
!2380 = !DILocation(line: 1401, column: 5, scope: !2304)
!2381 = !DILocation(line: 1401, column: 19, scope: !2304)
!2382 = distinct !{!2382, !2344, !2383}
!2383 = !DILocation(line: 1422, column: 5, scope: !2305)
!2384 = !DILocation(line: 1434, column: 5, scope: !2289)
!2385 = !DILocation(line: 1119, column: 9, scope: !1517, inlinedAt: !2386)
!2386 = distinct !DILocation(line: 1435, column: 9, scope: !2289)
!2387 = !DILocation(line: 1122, column: 9, scope: !1517, inlinedAt: !2386)
!2388 = !DILocation(line: 1127, column: 9, scope: !1517, inlinedAt: !2386)
!2389 = !DILocation(line: 1117, column: 9, scope: !1517, inlinedAt: !2386)
!2390 = !DILocation(line: 1128, column: 21, scope: !1517, inlinedAt: !2386)
!2391 = !DILocation(line: 1118, column: 14, scope: !1517, inlinedAt: !2386)
!2392 = !DILocation(line: 1129, column: 5, scope: !1517, inlinedAt: !2386)
!2393 = !DILocation(line: 1130, column: 13, scope: !1528, inlinedAt: !2386)
!2394 = !DILocation(line: 1131, column: 13, scope: !1528, inlinedAt: !2386)
!2395 = !DILocation(line: 1132, column: 9, scope: !1530, inlinedAt: !2386)
!2396 = !DILocation(line: 1136, column: 5, scope: !1517, inlinedAt: !2386)
!2397 = !DILocation(line: 1139, column: 9, scope: !1517, inlinedAt: !2386)
!2398 = !DILocation(line: 1115, column: 11, scope: !1517, inlinedAt: !2386)
!2399 = !DILocation(line: 1140, column: 14, scope: !1517, inlinedAt: !2386)
!2400 = !DILocation(line: 1116, column: 20, scope: !1517, inlinedAt: !2386)
!2401 = !DILocation(line: 1141, column: 12, scope: !1517, inlinedAt: !2386)
!2402 = !DILocation(line: 1141, column: 5, scope: !1517, inlinedAt: !2386)
!2403 = !DILocation(line: 1142, column: 10, scope: !1517, inlinedAt: !2386)
!2404 = !DILocation(line: 1142, column: 19, scope: !1517, inlinedAt: !2386)
!2405 = !DILocation(line: 1143, column: 5, scope: !1517, inlinedAt: !2386)
!2406 = !DILocation(line: 1436, column: 26, scope: !2289)
!2407 = !DILocation(line: 1436, column: 25, scope: !2289)
!2408 = !DILocation(line: 1436, column: 12, scope: !2289)
!2409 = !DILocation(line: 1437, column: 13, scope: !2289)
!2410 = !DILocation(line: 1438, column: 31, scope: !2289)
!2411 = !DILocation(line: 1438, column: 21, scope: !2289)
!2412 = !DILocation(line: 1438, column: 50, scope: !2289)
!2413 = !DILocation(line: 1438, column: 40, scope: !2289)
!2414 = !DILocation(line: 1438, column: 57, scope: !2289)
!2415 = !DILocation(line: 1438, column: 38, scope: !2289)
!2416 = !DILocation(line: 1438, column: 14, scope: !2289)
!2417 = !DILocation(line: 1440, column: 10, scope: !2332)
!2418 = !DILocation(line: 1440, column: 5, scope: !2332)
!2419 = !DILocation(line: 1441, column: 17, scope: !2330)
!2420 = !DILocation(line: 1439, column: 14, scope: !2289)
!2421 = !DILocation(line: 1441, column: 13, scope: !2330)
!2422 = !DILocation(line: 1442, column: 9, scope: !2330)
!2423 = !DILocation(line: 1443, column: 9, scope: !2330)
!2424 = !DILocation(line: 1447, column: 15, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2330, file: !1, line: 1447, column: 13)
!2426 = !DILocation(line: 1447, column: 29, scope: !2425)
!2427 = !DILocation(line: 1447, column: 43, scope: !2425)
!2428 = !DILocation(line: 1447, column: 63, scope: !2425)
!2429 = !DILocation(line: 1447, column: 34, scope: !2425)
!2430 = !DILocation(line: 1447, column: 13, scope: !2330)
!2431 = !DILocation(line: 1448, column: 23, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2425, file: !1, line: 1447, column: 67)
!2433 = !DILocation(line: 1393, column: 57, scope: !2289)
!2434 = !DILocation(line: 1449, column: 23, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2432, file: !1, line: 1449, column: 17)
!2436 = !DILocation(line: 1449, column: 32, scope: !2435)
!2437 = !DILocation(line: 1449, column: 17, scope: !2432)
!2438 = !DILocation(line: 1450, column: 17, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2435, file: !1, line: 1449, column: 47)
!2440 = !DILocation(line: 1451, column: 17, scope: !2439)
!2441 = !DILocation(line: 1456, column: 29, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2330, file: !1, line: 1456, column: 13)
!2443 = !DILocation(line: 1456, column: 32, scope: !2442)
!2444 = !DILocation(line: 1456, column: 66, scope: !2442)
!2445 = !DILocation(line: 1456, column: 54, scope: !2442)
!2446 = !DILocation(line: 1456, column: 51, scope: !2442)
!2447 = !DILocation(line: 1456, column: 13, scope: !2330)
!2448 = !DILocation(line: 1457, column: 17, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2442, file: !1, line: 1456, column: 77)
!2450 = !DILocation(line: 1458, column: 17, scope: !2449)
!2451 = !DILocation(line: 1462, column: 13, scope: !2330)
!2452 = !DILocation(line: 1463, column: 52, scope: !2328)
!2453 = !DILocation(line: 1463, column: 41, scope: !2328)
!2454 = !DILocation(line: 1463, column: 21, scope: !2328)
!2455 = !DILocation(line: 1464, column: 45, scope: !2328)
!2456 = !DILocation(line: 1464, column: 44, scope: !2328)
!2457 = !DILocation(line: 1464, column: 31, scope: !2328)
!2458 = !DILocation(line: 1464, column: 22, scope: !2328)
!2459 = !DILocation(line: 1470, column: 19, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2328, file: !1, line: 1470, column: 17)
!2461 = !DILocation(line: 1470, column: 17, scope: !2328)
!2462 = !DILocation(line: 1472, column: 24, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2328, file: !1, line: 1472, column: 17)
!2464 = !DILocation(line: 1472, column: 17, scope: !2328)
!2465 = !DILocation(line: 1472, column: 38, scope: !2463)
!2466 = !DILocation(line: 1472, column: 29, scope: !2463)
!2467 = !DILocation(line: 0, scope: !2328)
!2468 = !DILocation(line: 1473, column: 24, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2328, file: !1, line: 1473, column: 17)
!2470 = !DILocation(line: 1473, column: 17, scope: !2328)
!2471 = !DILocation(line: 1480, column: 24, scope: !2328)
!2472 = !DILocation(line: 1474, column: 17, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2469, file: !1, line: 1473, column: 43)
!2474 = !DILocation(line: 1478, column: 17, scope: !2473)
!2475 = !DILocation(line: 0, scope: !2442)
!2476 = !DILocation(line: 1440, column: 33, scope: !2331)
!2477 = !DILocation(line: 1440, column: 5, scope: !2331)
!2478 = !DILocation(line: 1440, column: 19, scope: !2331)
!2479 = distinct !{!2479, !2418, !2480}
!2480 = !DILocation(line: 1482, column: 5, scope: !2332)
!2481 = !DILocation(line: 1485, column: 23, scope: !2289)
!2482 = !DILocation(line: 1485, column: 5, scope: !2289)
!2483 = !DILocation(line: 1489, column: 9, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2289, file: !1, line: 1489, column: 9)
!2485 = !DILocation(line: 1489, column: 12, scope: !2484)
!2486 = !DILocation(line: 0, scope: !2484)
!2487 = !DILocation(line: 1490, column: 1, scope: !2289)
!2488 = distinct !DISubprogram(name: "pfdebugCommand", scope: !1, file: !1, line: 1494, type: !1675, isLocal: false, isDefinition: true, scopeLine: 1494, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2489)
!2489 = !{!2490, !2491, !2492, !2493, !2494, !2495, !2501, !2503, !2504, !2505, !2506, !2507, !2508, !2511, !2512, !2513, !2515, !2516, !2520}
!2490 = !DILocalVariable(name: "c", arg: 1, scope: !2488, file: !1, line: 1494, type: !1554)
!2491 = !DILocalVariable(name: "cmd", scope: !2488, file: !1, line: 1495, type: !40)
!2492 = !DILocalVariable(name: "hdr", scope: !2488, file: !1, line: 1496, type: !17)
!2493 = !DILocalVariable(name: "o", scope: !2488, file: !1, line: 1497, type: !455)
!2494 = !DILocalVariable(name: "j", scope: !2488, file: !1, line: 1498, type: !15)
!2495 = !DILocalVariable(name: "val", scope: !2496, file: !1, line: 1524, type: !6)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !1, line: 1523, column: 45)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !1, line: 1523, column: 9)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !1, line: 1523, column: 9)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !1, line: 1510, column: 36)
!2500 = distinct !DILexicalBlock(scope: !2488, file: !1, line: 1510, column: 9)
!2501 = !DILocalVariable(name: "_p", scope: !2502, file: !1, line: 1526, type: !16)
!2502 = distinct !DILexicalBlock(scope: !2496, file: !1, line: 1526, column: 13)
!2503 = !DILocalVariable(name: "_byte", scope: !2502, file: !1, line: 1526, type: !14)
!2504 = !DILocalVariable(name: "_fb", scope: !2502, file: !1, line: 1526, type: !14)
!2505 = !DILocalVariable(name: "_fb8", scope: !2502, file: !1, line: 1526, type: !14)
!2506 = !DILocalVariable(name: "b0", scope: !2502, file: !1, line: 1526, type: !14)
!2507 = !DILocalVariable(name: "b1", scope: !2502, file: !1, line: 1526, type: !14)
!2508 = !DILocalVariable(name: "p", scope: !2509, file: !1, line: 1534, type: !16)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !1, line: 1531, column: 41)
!2510 = distinct !DILexicalBlock(scope: !2500, file: !1, line: 1531, column: 14)
!2511 = !DILocalVariable(name: "end", scope: !2509, file: !1, line: 1534, type: !16)
!2512 = !DILocalVariable(name: "decoded", scope: !2509, file: !1, line: 1535, type: !38)
!2513 = !DILocalVariable(name: "runlen", scope: !2514, file: !1, line: 1544, type: !15)
!2514 = distinct !DILexicalBlock(scope: !2509, file: !1, line: 1543, column: 24)
!2515 = !DILocalVariable(name: "regval", scope: !2514, file: !1, line: 1544, type: !15)
!2516 = !DILocalVariable(name: "encodingstr", scope: !2517, file: !1, line: 1567, type: !2519)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !1, line: 1566, column: 43)
!2518 = distinct !DILexicalBlock(scope: !2510, file: !1, line: 1566, column: 14)
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 128, elements: !1619)
!2520 = !DILocalVariable(name: "conv", scope: !2521, file: !1, line: 1574, type: !15)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !1, line: 1573, column: 42)
!2522 = distinct !DILexicalBlock(scope: !2518, file: !1, line: 1573, column: 14)
!2523 = !DILocation(line: 1494, column: 29, scope: !2488)
!2524 = !DILocation(line: 1495, column: 20, scope: !2488)
!2525 = !DILocation(line: 1495, column: 17, scope: !2488)
!2526 = !DILocation(line: 1495, column: 29, scope: !2488)
!2527 = !DILocation(line: 1495, column: 11, scope: !2488)
!2528 = !DILocation(line: 1500, column: 27, scope: !2488)
!2529 = !DILocation(line: 1500, column: 30, scope: !2488)
!2530 = !DILocation(line: 1500, column: 9, scope: !2488)
!2531 = !DILocation(line: 1497, column: 11, scope: !2488)
!2532 = !DILocation(line: 1501, column: 11, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2488, file: !1, line: 1501, column: 9)
!2534 = !DILocation(line: 1501, column: 9, scope: !2488)
!2535 = !DILocation(line: 1502, column: 9, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2533, file: !1, line: 1501, column: 20)
!2537 = !DILocation(line: 1503, column: 9, scope: !2536)
!2538 = !DILocation(line: 1505, column: 9, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2488, file: !1, line: 1505, column: 9)
!2540 = !DILocation(line: 1505, column: 33, scope: !2539)
!2541 = !DILocation(line: 1505, column: 9, scope: !2488)
!2542 = !DILocation(line: 1506, column: 33, scope: !2488)
!2543 = !DILocation(line: 1506, column: 39, scope: !2488)
!2544 = !DILocation(line: 1506, column: 36, scope: !2488)
!2545 = !DILocation(line: 1506, column: 9, scope: !2488)
!2546 = !DILocation(line: 1507, column: 14, scope: !2488)
!2547 = !DILocation(line: 1496, column: 20, scope: !2488)
!2548 = !DILocation(line: 1510, column: 10, scope: !2500)
!2549 = !DILocation(line: 1510, column: 9, scope: !2488)
!2550 = !DILocation(line: 1511, column: 16, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2499, file: !1, line: 1511, column: 13)
!2552 = !DILocation(line: 1511, column: 21, scope: !2551)
!2553 = !DILocation(line: 1511, column: 13, scope: !2499)
!2554 = !DILocation(line: 1513, column: 18, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2499, file: !1, line: 1513, column: 13)
!2556 = !DILocation(line: 1513, column: 27, scope: !2555)
!2557 = !DILocation(line: 1513, column: 13, scope: !2499)
!2558 = !DILocation(line: 1514, column: 17, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !1, line: 1514, column: 17)
!2560 = distinct !DILexicalBlock(scope: !2555, file: !1, line: 1513, column: 42)
!2561 = !DILocation(line: 1514, column: 37, scope: !2559)
!2562 = !DILocation(line: 1514, column: 17, scope: !2560)
!2563 = !DILocation(line: 1515, column: 31, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2559, file: !1, line: 1514, column: 47)
!2565 = !DILocation(line: 1515, column: 17, scope: !2564)
!2566 = !DILocation(line: 1516, column: 17, scope: !2564)
!2567 = !DILocation(line: 1518, column: 25, scope: !2560)
!2568 = !DILocation(line: 1519, column: 9, scope: !2560)
!2569 = !DILocation(line: 1521, column: 18, scope: !2499)
!2570 = !DILocation(line: 1522, column: 9, scope: !2499)
!2571 = !DILocation(line: 1498, column: 9, scope: !2488)
!2572 = !DILocation(line: 1523, column: 14, scope: !2498)
!2573 = !DILocation(line: 1523, column: 9, scope: !2498)
!2574 = !DILocation(line: 1526, column: 13, scope: !2502)
!2575 = !DILocation(line: 1524, column: 21, scope: !2496)
!2576 = !DILocation(line: 1527, column: 13, scope: !2496)
!2577 = !DILocation(line: 1523, column: 41, scope: !2497)
!2578 = !DILocation(line: 1523, column: 9, scope: !2497)
!2579 = !DILocation(line: 1523, column: 23, scope: !2497)
!2580 = distinct !{!2580, !2573, !2581}
!2581 = !DILocation(line: 1528, column: 9, scope: !2498)
!2582 = !DILocation(line: 1531, column: 15, scope: !2510)
!2583 = !DILocation(line: 1531, column: 14, scope: !2500)
!2584 = !DILocation(line: 1532, column: 16, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2509, file: !1, line: 1532, column: 13)
!2586 = !DILocation(line: 1532, column: 21, scope: !2585)
!2587 = !DILocation(line: 1532, column: 13, scope: !2509)
!2588 = !DILocation(line: 1534, column: 18, scope: !2509)
!2589 = !DILocation(line: 87, column: 39, scope: !497, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 1534, column: 39, scope: !2509)
!2591 = !DILocation(line: 88, column: 27, scope: !497, inlinedAt: !2590)
!2592 = !DILocation(line: 88, column: 19, scope: !497, inlinedAt: !2590)
!2593 = !DILocation(line: 89, column: 5, scope: !497, inlinedAt: !2590)
!2594 = !DILocation(line: 91, column: 20, scope: !511, inlinedAt: !2590)
!2595 = !DILocation(line: 91, column: 13, scope: !511, inlinedAt: !2590)
!2596 = !DILocation(line: 93, column: 20, scope: !511, inlinedAt: !2590)
!2597 = !DILocation(line: 93, column: 34, scope: !511, inlinedAt: !2590)
!2598 = !DILocation(line: 93, column: 13, scope: !511, inlinedAt: !2590)
!2599 = !DILocation(line: 95, column: 20, scope: !511, inlinedAt: !2590)
!2600 = !DILocation(line: 95, column: 35, scope: !511, inlinedAt: !2590)
!2601 = !DILocation(line: 95, column: 13, scope: !511, inlinedAt: !2590)
!2602 = !DILocation(line: 97, column: 20, scope: !511, inlinedAt: !2590)
!2603 = !DILocation(line: 97, column: 35, scope: !511, inlinedAt: !2590)
!2604 = !DILocation(line: 97, column: 13, scope: !511, inlinedAt: !2590)
!2605 = !DILocation(line: 99, column: 20, scope: !511, inlinedAt: !2590)
!2606 = !DILocation(line: 99, column: 35, scope: !511, inlinedAt: !2590)
!2607 = !DILocation(line: 99, column: 13, scope: !511, inlinedAt: !2590)
!2608 = !DILocation(line: 0, scope: !511, inlinedAt: !2590)
!2609 = !DILocation(line: 0, scope: !2509)
!2610 = !DILocation(line: 102, column: 1, scope: !497, inlinedAt: !2590)
!2611 = !DILocation(line: 1534, column: 38, scope: !2509)
!2612 = !DILocation(line: 1534, column: 31, scope: !2509)
!2613 = !DILocation(line: 1535, column: 23, scope: !2509)
!2614 = !DILocation(line: 1535, column: 13, scope: !2509)
!2615 = !DILocation(line: 1537, column: 18, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2509, file: !1, line: 1537, column: 13)
!2617 = !DILocation(line: 1537, column: 27, scope: !2616)
!2618 = !DILocation(line: 1537, column: 13, scope: !2509)
!2619 = !DILocation(line: 1538, column: 13, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2616, file: !1, line: 1537, column: 42)
!2621 = !DILocation(line: 1539, column: 13, scope: !2620)
!2622 = !DILocation(line: 1543, column: 9, scope: !2509)
!2623 = !DILocation(line: 1543, column: 17, scope: !2509)
!2624 = !DILocation(line: 1542, column: 11, scope: !2509)
!2625 = !DILocation(line: 1546, column: 17, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2514, file: !1, line: 1546, column: 17)
!2627 = !DILocation(line: 1546, column: 17, scope: !2514)
!2628 = !DILocation(line: 1547, column: 26, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2626, file: !1, line: 1546, column: 40)
!2630 = !DILocation(line: 1544, column: 17, scope: !2514)
!2631 = !DILocation(line: 1548, column: 18, scope: !2629)
!2632 = !DILocation(line: 1549, column: 27, scope: !2629)
!2633 = !DILocation(line: 1550, column: 13, scope: !2629)
!2634 = !DILocation(line: 1550, column: 24, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2626, file: !1, line: 1550, column: 24)
!2636 = !DILocation(line: 1550, column: 24, scope: !2626)
!2637 = !DILocation(line: 1551, column: 26, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2635, file: !1, line: 1550, column: 48)
!2639 = !DILocation(line: 1552, column: 19, scope: !2638)
!2640 = !DILocation(line: 1553, column: 27, scope: !2638)
!2641 = !DILocation(line: 1554, column: 13, scope: !2638)
!2642 = !DILocation(line: 1555, column: 26, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2635, file: !1, line: 1554, column: 20)
!2644 = !DILocation(line: 1556, column: 26, scope: !2643)
!2645 = !DILocation(line: 1544, column: 25, scope: !2514)
!2646 = !DILocation(line: 1557, column: 18, scope: !2643)
!2647 = !DILocation(line: 1558, column: 27, scope: !2643)
!2648 = !DILocation(line: 0, scope: !2643)
!2649 = distinct !{!2649, !2622, !2650}
!2650 = !DILocation(line: 1560, column: 9, scope: !2509)
!2651 = !DILocation(line: 0, scope: !2629)
!2652 = !DILocation(line: 1561, column: 19, scope: !2509)
!2653 = !DILocation(line: 87, column: 39, scope: !497, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 1562, column: 39, scope: !2509)
!2655 = !DILocation(line: 88, column: 27, scope: !497, inlinedAt: !2654)
!2656 = !DILocation(line: 88, column: 19, scope: !497, inlinedAt: !2654)
!2657 = !DILocation(line: 89, column: 5, scope: !497, inlinedAt: !2654)
!2658 = !DILocation(line: 91, column: 20, scope: !511, inlinedAt: !2654)
!2659 = !DILocation(line: 91, column: 13, scope: !511, inlinedAt: !2654)
!2660 = !DILocation(line: 93, column: 20, scope: !511, inlinedAt: !2654)
!2661 = !DILocation(line: 93, column: 34, scope: !511, inlinedAt: !2654)
!2662 = !DILocation(line: 93, column: 13, scope: !511, inlinedAt: !2654)
!2663 = !DILocation(line: 95, column: 20, scope: !511, inlinedAt: !2654)
!2664 = !DILocation(line: 95, column: 35, scope: !511, inlinedAt: !2654)
!2665 = !DILocation(line: 95, column: 13, scope: !511, inlinedAt: !2654)
!2666 = !DILocation(line: 97, column: 20, scope: !511, inlinedAt: !2654)
!2667 = !DILocation(line: 97, column: 35, scope: !511, inlinedAt: !2654)
!2668 = !DILocation(line: 97, column: 13, scope: !511, inlinedAt: !2654)
!2669 = !DILocation(line: 99, column: 20, scope: !511, inlinedAt: !2654)
!2670 = !DILocation(line: 99, column: 35, scope: !511, inlinedAt: !2654)
!2671 = !DILocation(line: 99, column: 13, scope: !511, inlinedAt: !2654)
!2672 = !DILocation(line: 0, scope: !511, inlinedAt: !2654)
!2673 = !DILocation(line: 102, column: 1, scope: !497, inlinedAt: !2654)
!2674 = !DILocation(line: 1562, column: 9, scope: !2509)
!2675 = !DILocation(line: 1563, column: 9, scope: !2509)
!2676 = !DILocation(line: 1564, column: 5, scope: !2510)
!2677 = !DILocation(line: 1566, column: 15, scope: !2518)
!2678 = !DILocation(line: 1566, column: 14, scope: !2510)
!2679 = !DILocation(line: 1567, column: 15, scope: !2517)
!2680 = !DILocation(line: 1568, column: 16, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2517, file: !1, line: 1568, column: 13)
!2682 = !DILocation(line: 1568, column: 21, scope: !2681)
!2683 = !DILocation(line: 1568, column: 13, scope: !2517)
!2684 = !DILocation(line: 1570, column: 43, scope: !2517)
!2685 = !DILocation(line: 1570, column: 26, scope: !2517)
!2686 = !DILocation(line: 1570, column: 9, scope: !2517)
!2687 = !DILocation(line: 1571, column: 5, scope: !2518)
!2688 = !DILocation(line: 1568, column: 27, scope: !2681)
!2689 = !DILocation(line: 1573, column: 15, scope: !2522)
!2690 = !DILocation(line: 1573, column: 14, scope: !2518)
!2691 = !DILocation(line: 1574, column: 13, scope: !2521)
!2692 = !DILocation(line: 1575, column: 16, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2521, file: !1, line: 1575, column: 13)
!2694 = !DILocation(line: 1575, column: 21, scope: !2693)
!2695 = !DILocation(line: 1575, column: 13, scope: !2521)
!2696 = !DILocation(line: 1577, column: 18, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2521, file: !1, line: 1577, column: 13)
!2698 = !DILocation(line: 1577, column: 27, scope: !2697)
!2699 = !DILocation(line: 1577, column: 13, scope: !2521)
!2700 = !DILocation(line: 1578, column: 17, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !1, line: 1578, column: 17)
!2702 = distinct !DILexicalBlock(scope: !2697, file: !1, line: 1577, column: 42)
!2703 = !DILocation(line: 1578, column: 37, scope: !2701)
!2704 = !DILocation(line: 1578, column: 17, scope: !2702)
!2705 = !DILocation(line: 1579, column: 31, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2701, file: !1, line: 1578, column: 47)
!2707 = !DILocation(line: 1579, column: 17, scope: !2706)
!2708 = !DILocation(line: 1580, column: 17, scope: !2706)
!2709 = !DILocation(line: 1583, column: 25, scope: !2702)
!2710 = !DILocation(line: 1584, column: 9, scope: !2702)
!2711 = !DILocation(line: 1585, column: 20, scope: !2521)
!2712 = !DILocation(line: 0, scope: !2521)
!2713 = !DILocation(line: 1585, column: 9, scope: !2521)
!2714 = !DILocation(line: 1586, column: 5, scope: !2522)
!2715 = !DILocation(line: 1575, column: 27, scope: !2693)
!2716 = !DILocation(line: 1587, column: 9, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2522, file: !1, line: 1586, column: 12)
!2718 = !DILocation(line: 1589, column: 5, scope: !2488)
!2719 = !DILocation(line: 1592, column: 5, scope: !2488)
!2720 = !DILocation(line: 1594, column: 1, scope: !2488)
