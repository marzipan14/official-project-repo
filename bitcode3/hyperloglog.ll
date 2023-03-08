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

; Function Attrs: noredzone nounwind readonly
define dso_local i64 @MurmurHash64A(i8* readonly, i32, i32) local_unnamed_addr #0 !dbg !90 {
  %4 = zext i32 %2 to i64, !dbg !113
  %5 = sext i32 %1 to i64, !dbg !114
  %6 = mul i64 %5, -4132994306676758123, !dbg !115
  %7 = xor i64 %6, %4, !dbg !116
  %8 = and i32 %1, -8, !dbg !119
  %9 = sext i32 %8 to i64, !dbg !120
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !120
  %11 = icmp eq i32 %8, 0, !dbg !122
  br i1 %11, label %56, label %12, !dbg !123

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
  br label %26, !dbg !123

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
  %43 = bitcast i8* %42 to i64*, !dbg !124
  %44 = load i64, i64* %43, align 8, !dbg !124, !tbaa !125
  %45 = mul i64 %44, -4132994306676758123, !dbg !130
  %46 = lshr i64 %45, 47, !dbg !131
  %47 = xor i64 %46, %45, !dbg !132
  %48 = mul i64 %47, -4132994306676758123, !dbg !133
  %49 = xor i64 %48, %41, !dbg !134
  %50 = mul i64 %49, -4132994306676758123, !dbg !135
  %51 = getelementptr inbounds i8, i8* %33, i64 16, !dbg !136
  %52 = icmp eq i8* %51, %10, !dbg !122
  br i1 %52, label %53, label %31, !dbg !123, !llvm.loop !137

; <label>:53:                                     ; preds = %31, %26
  %54 = phi i64 [ %27, %26 ], [ %50, %31 ], !dbg !135
  %55 = getelementptr i8, i8* %0, i64 %9, !dbg !124
  br label %56, !dbg !139

; <label>:56:                                     ; preds = %53, %3
  %57 = phi i8* [ %0, %3 ], [ %55, %53 ], !dbg !140
  %58 = phi i64 [ %7, %3 ], [ %54, %53 ], !dbg !140
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
  br label %66, !dbg !147

; <label>:66:                                     ; preds = %56, %60
  %67 = phi i64 [ %58, %56 ], [ %65, %60 ], !dbg !148
  %68 = getelementptr inbounds i8, i8* %57, i64 5, !dbg !149
  %69 = load i8, i8* %68, align 1, !dbg !149, !tbaa !143
  %70 = zext i8 %69 to i64, !dbg !150
  %71 = shl nuw nsw i64 %70, 40, !dbg !151
  %72 = xor i64 %71, %67, !dbg !152
  br label %73, !dbg !153

; <label>:73:                                     ; preds = %56, %66
  %74 = phi i64 [ %58, %56 ], [ %72, %66 ], !dbg !148
  %75 = getelementptr inbounds i8, i8* %57, i64 4, !dbg !154
  %76 = load i8, i8* %75, align 1, !dbg !154, !tbaa !143
  %77 = zext i8 %76 to i64, !dbg !155
  %78 = shl nuw nsw i64 %77, 32, !dbg !156
  %79 = xor i64 %78, %74, !dbg !157
  br label %80, !dbg !158

; <label>:80:                                     ; preds = %56, %73
  %81 = phi i64 [ %58, %56 ], [ %79, %73 ], !dbg !148
  %82 = getelementptr inbounds i8, i8* %57, i64 3, !dbg !159
  %83 = load i8, i8* %82, align 1, !dbg !159, !tbaa !143
  %84 = zext i8 %83 to i64, !dbg !160
  %85 = shl nuw nsw i64 %84, 24, !dbg !161
  %86 = xor i64 %85, %81, !dbg !162
  br label %87, !dbg !163

; <label>:87:                                     ; preds = %56, %80
  %88 = phi i64 [ %58, %56 ], [ %86, %80 ], !dbg !148
  %89 = getelementptr inbounds i8, i8* %57, i64 2, !dbg !164
  %90 = load i8, i8* %89, align 1, !dbg !164, !tbaa !143
  %91 = zext i8 %90 to i64, !dbg !165
  %92 = shl nuw nsw i64 %91, 16, !dbg !166
  %93 = xor i64 %92, %88, !dbg !167
  br label %94, !dbg !168

; <label>:94:                                     ; preds = %56, %87
  %95 = phi i64 [ %58, %56 ], [ %93, %87 ], !dbg !148
  %96 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !169
  %97 = load i8, i8* %96, align 1, !dbg !169, !tbaa !143
  %98 = zext i8 %97 to i64, !dbg !170
  %99 = shl nuw nsw i64 %98, 8, !dbg !171
  %100 = xor i64 %99, %95, !dbg !172
  br label %101, !dbg !173

; <label>:101:                                    ; preds = %56, %94
  %102 = phi i64 [ %58, %56 ], [ %100, %94 ], !dbg !148
  %103 = load i8, i8* %57, align 1, !dbg !174, !tbaa !143
  %104 = zext i8 %103 to i64, !dbg !175
  %105 = xor i64 %102, %104, !dbg !176
  %106 = mul i64 %105, -4132994306676758123, !dbg !177
  br label %107, !dbg !178

; <label>:107:                                    ; preds = %101, %56
  %108 = phi i64 [ %58, %56 ], [ %106, %101 ], !dbg !148
  %109 = lshr i64 %108, 47, !dbg !179
  %110 = xor i64 %109, %108, !dbg !180
  %111 = mul i64 %110, -4132994306676758123, !dbg !181
  %112 = lshr i64 %111, 47, !dbg !182
  %113 = xor i64 %112, %111, !dbg !183
  ret i64 %113, !dbg !184
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @hllPatLen(i8*, i64, i64* nocapture) local_unnamed_addr #3 !dbg !185 {
  %4 = trunc i64 %1 to i32, !dbg !204
  %5 = tail call i64 @MurmurHash64A(i8* %0, i32 %4, i32 -1379386599) #8, !dbg !205
  %6 = lshr i64 %5, 14, !dbg !208
  %7 = or i64 %6, 1125899906842624, !dbg !209
  %8 = and i64 %5, 16384, !dbg !212
  %9 = icmp eq i64 %8, 0, !dbg !213
  br i1 %9, label %10, label %17, !dbg !214

; <label>:10:                                     ; preds = %3, %10
  %11 = phi i32 [ %13, %10 ], [ 1, %3 ]
  %12 = phi i64 [ %14, %10 ], [ 1, %3 ]
  %13 = add nuw nsw i32 %11, 1, !dbg !215
  %14 = shl i64 %12, 1, !dbg !217
  %15 = and i64 %14, %7, !dbg !212
  %16 = icmp eq i64 %15, 0, !dbg !213
  br i1 %16, label %10, label %17, !dbg !214, !llvm.loop !218

; <label>:17:                                     ; preds = %10, %3
  %18 = phi i32 [ 1, %3 ], [ %13, %10 ], !dbg !220
  %19 = and i64 %5, 16383, !dbg !221
  store i64 %19, i64* %2, align 8, !dbg !222, !tbaa !125
  ret i32 %18, !dbg !223
}

; Function Attrs: noredzone nounwind
define dso_local i32 @hllDenseSet(i8* nocapture, i64, i8 zeroext) local_unnamed_addr #3 !dbg !224 {
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
  ret i32 %40, !dbg !258
}

; Function Attrs: noredzone nounwind
define dso_local i32 @hllDenseAdd(i8* nocapture, i8*, i64) local_unnamed_addr #3 !dbg !259 {
  %4 = trunc i64 %2 to i32, !dbg !274
  %5 = tail call i64 @MurmurHash64A(i8* %1, i32 %4, i32 -1379386599) #10, !dbg !275
  %6 = lshr i64 %5, 14, !dbg !278
  %7 = or i64 %6, 1125899906842624, !dbg !279
  %8 = and i64 %5, 16384, !dbg !282
  %9 = icmp eq i64 %8, 0, !dbg !283
  br i1 %9, label %10, label %19, !dbg !284

; <label>:10:                                     ; preds = %3, %10
  %11 = phi i32 [ %13, %10 ], [ 1, %3 ]
  %12 = phi i64 [ %14, %10 ], [ 1, %3 ]
  %13 = add nuw nsw i32 %11, 1, !dbg !285
  %14 = shl i64 %12, 1, !dbg !286
  %15 = and i64 %14, %7, !dbg !282
  %16 = icmp eq i64 %15, 0, !dbg !283
  br i1 %16, label %10, label %17, !dbg !284, !llvm.loop !218

; <label>:17:                                     ; preds = %10
  %18 = and i32 %13, 255, !dbg !287
  br label %19, !dbg !287

; <label>:19:                                     ; preds = %17, %3
  %20 = phi i32 [ 1, %3 ], [ %18, %17 ]
  %21 = and i64 %5, 16383, !dbg !287
  %22 = mul nuw nsw i64 %21, 6, !dbg !292
  %23 = lshr i64 %22, 3, !dbg !292
  %24 = and i64 %22, 6, !dbg !292
  %25 = sub nsw i64 8, %24, !dbg !292
  %26 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !292
  %27 = load i8, i8* %26, align 1, !dbg !292, !tbaa !143
  %28 = zext i8 %27 to i64, !dbg !292
  %29 = add nuw nsw i64 %23, 1, !dbg !292
  %30 = getelementptr inbounds i8, i8* %0, i64 %29, !dbg !292
  %31 = load i8, i8* %30, align 1, !dbg !292, !tbaa !143
  %32 = zext i8 %31 to i64, !dbg !292
  %33 = lshr i64 %28, %24, !dbg !292
  %34 = shl i64 %32, %25, !dbg !292
  %35 = or i64 %34, %33, !dbg !292
  %36 = trunc i64 %35 to i32, !dbg !292
  %37 = and i32 %36, 63, !dbg !292
  %38 = icmp ult i32 %37, %20, !dbg !293
  br i1 %38, label %39, label %56, !dbg !294

; <label>:39:                                     ; preds = %19
  %40 = zext i32 %20 to i64, !dbg !295
  %41 = trunc i64 %24 to i32, !dbg !295
  %42 = shl i32 63, %41, !dbg !295
  %43 = trunc i32 %42 to i8, !dbg !295
  %44 = xor i8 %43, -1, !dbg !295
  %45 = and i8 %27, %44, !dbg !295
  %46 = shl i64 %40, %24, !dbg !295
  %47 = trunc i64 %46 to i8, !dbg !295
  %48 = or i8 %45, %47, !dbg !295
  store i8 %48, i8* %26, align 1, !dbg !295, !tbaa !143
  %49 = trunc i64 %25 to i32, !dbg !295
  %50 = ashr i32 -64, %49, !dbg !295
  %51 = trunc i32 %50 to i8, !dbg !295
  %52 = and i8 %31, %51, !dbg !295
  %53 = lshr i64 %40, %25, !dbg !295
  %54 = trunc i64 %53 to i8, !dbg !295
  %55 = or i8 %52, %54, !dbg !295
  store i8 %55, i8* %30, align 1, !dbg !295, !tbaa !143
  br label %56, !dbg !296

; <label>:56:                                     ; preds = %19, %39
  %57 = phi i32 [ 1, %39 ], [ 0, %19 ], !dbg !297
  ret i32 %57, !dbg !298
}

; Function Attrs: noredzone nounwind
define dso_local void @hllDenseRegHisto(i8* nocapture readonly, i32* nocapture) local_unnamed_addr #3 !dbg !299 {
  br label %3, !dbg !330

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i32 [ 0, %2 ], [ %146, %3 ]
  %5 = phi i8* [ %0, %2 ], [ %145, %3 ]
  %6 = load i8, i8* %5, align 1, !dbg !332, !tbaa !143
  %7 = zext i8 %6 to i32, !dbg !332
  %8 = and i32 %7, 63, !dbg !335
  %9 = zext i32 %8 to i64, !dbg !332
  %10 = lshr i32 %7, 6, !dbg !337
  %11 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !338
  %12 = load i8, i8* %11, align 1, !dbg !338, !tbaa !143
  %13 = zext i8 %12 to i32, !dbg !338
  %14 = shl nuw nsw i32 %13, 2, !dbg !339
  %15 = and i32 %14, 60, !dbg !340
  %16 = or i32 %15, %10, !dbg !340
  %17 = zext i32 %16 to i64, !dbg !341
  %18 = lshr i32 %13, 4, !dbg !343
  %19 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !344
  %20 = load i8, i8* %19, align 1, !dbg !344, !tbaa !143
  %21 = zext i8 %20 to i32, !dbg !344
  %22 = shl nuw nsw i32 %21, 4, !dbg !345
  %23 = and i32 %22, 48, !dbg !346
  %24 = or i32 %23, %18, !dbg !346
  %25 = zext i32 %24 to i64, !dbg !347
  %26 = lshr i32 %21, 2, !dbg !349
  %27 = zext i32 %26 to i64, !dbg !350
  %28 = getelementptr inbounds i8, i8* %5, i64 3, !dbg !352
  %29 = load i8, i8* %28, align 1, !dbg !352, !tbaa !143
  %30 = zext i8 %29 to i32, !dbg !352
  %31 = and i32 %30, 63, !dbg !353
  %32 = zext i32 %31 to i64, !dbg !352
  %33 = lshr i32 %30, 6, !dbg !355
  %34 = getelementptr inbounds i8, i8* %5, i64 4, !dbg !356
  %35 = load i8, i8* %34, align 1, !dbg !356, !tbaa !143
  %36 = zext i8 %35 to i32, !dbg !356
  %37 = shl nuw nsw i32 %36, 2, !dbg !357
  %38 = and i32 %37, 60, !dbg !358
  %39 = or i32 %38, %33, !dbg !358
  %40 = zext i32 %39 to i64, !dbg !359
  %41 = lshr i32 %36, 4, !dbg !361
  %42 = getelementptr inbounds i8, i8* %5, i64 5, !dbg !362
  %43 = load i8, i8* %42, align 1, !dbg !362, !tbaa !143
  %44 = zext i8 %43 to i32, !dbg !362
  %45 = shl nuw nsw i32 %44, 4, !dbg !363
  %46 = and i32 %45, 48, !dbg !364
  %47 = or i32 %46, %41, !dbg !364
  %48 = zext i32 %47 to i64, !dbg !365
  %49 = lshr i32 %44, 2, !dbg !367
  %50 = zext i32 %49 to i64, !dbg !368
  %51 = getelementptr inbounds i8, i8* %5, i64 6, !dbg !370
  %52 = load i8, i8* %51, align 1, !dbg !370, !tbaa !143
  %53 = zext i8 %52 to i32, !dbg !370
  %54 = and i32 %53, 63, !dbg !371
  %55 = zext i32 %54 to i64, !dbg !370
  %56 = lshr i32 %53, 6, !dbg !373
  %57 = getelementptr inbounds i8, i8* %5, i64 7, !dbg !374
  %58 = load i8, i8* %57, align 1, !dbg !374, !tbaa !143
  %59 = zext i8 %58 to i32, !dbg !374
  %60 = shl nuw nsw i32 %59, 2, !dbg !375
  %61 = and i32 %60, 60, !dbg !376
  %62 = or i32 %61, %56, !dbg !376
  %63 = zext i32 %62 to i64, !dbg !377
  %64 = lshr i32 %59, 4, !dbg !379
  %65 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !380
  %66 = load i8, i8* %65, align 1, !dbg !380, !tbaa !143
  %67 = zext i8 %66 to i32, !dbg !380
  %68 = shl nuw nsw i32 %67, 4, !dbg !381
  %69 = and i32 %68, 48, !dbg !382
  %70 = or i32 %69, %64, !dbg !382
  %71 = zext i32 %70 to i64, !dbg !383
  %72 = lshr i32 %67, 2, !dbg !385
  %73 = zext i32 %72 to i64, !dbg !386
  %74 = getelementptr inbounds i8, i8* %5, i64 9, !dbg !388
  %75 = load i8, i8* %74, align 1, !dbg !388, !tbaa !143
  %76 = zext i8 %75 to i32, !dbg !388
  %77 = and i32 %76, 63, !dbg !389
  %78 = zext i32 %77 to i64, !dbg !388
  %79 = lshr i32 %76, 6, !dbg !391
  %80 = getelementptr inbounds i8, i8* %5, i64 10, !dbg !392
  %81 = load i8, i8* %80, align 1, !dbg !392, !tbaa !143
  %82 = zext i8 %81 to i32, !dbg !392
  %83 = shl nuw nsw i32 %82, 2, !dbg !393
  %84 = and i32 %83, 60, !dbg !394
  %85 = or i32 %84, %79, !dbg !394
  %86 = zext i32 %85 to i64, !dbg !395
  %87 = lshr i32 %82, 4, !dbg !397
  %88 = getelementptr inbounds i8, i8* %5, i64 11, !dbg !398
  %89 = load i8, i8* %88, align 1, !dbg !398, !tbaa !143
  %90 = zext i8 %89 to i32, !dbg !398
  %91 = shl nuw nsw i32 %90, 4, !dbg !399
  %92 = and i32 %91, 48, !dbg !400
  %93 = or i32 %92, %87, !dbg !400
  %94 = zext i32 %93 to i64, !dbg !401
  %95 = lshr i32 %90, 2, !dbg !403
  %96 = zext i32 %95 to i64, !dbg !404
  %97 = getelementptr inbounds i32, i32* %1, i64 %9, !dbg !406
  %98 = load i32, i32* %97, align 4, !dbg !407, !tbaa !408
  %99 = add nsw i32 %98, 1, !dbg !407
  store i32 %99, i32* %97, align 4, !dbg !407, !tbaa !408
  %100 = getelementptr inbounds i32, i32* %1, i64 %17, !dbg !410
  %101 = load i32, i32* %100, align 4, !dbg !411, !tbaa !408
  %102 = add nsw i32 %101, 1, !dbg !411
  store i32 %102, i32* %100, align 4, !dbg !411, !tbaa !408
  %103 = getelementptr inbounds i32, i32* %1, i64 %25, !dbg !412
  %104 = load i32, i32* %103, align 4, !dbg !413, !tbaa !408
  %105 = add nsw i32 %104, 1, !dbg !413
  store i32 %105, i32* %103, align 4, !dbg !413, !tbaa !408
  %106 = getelementptr inbounds i32, i32* %1, i64 %27, !dbg !414
  %107 = load i32, i32* %106, align 4, !dbg !415, !tbaa !408
  %108 = add nsw i32 %107, 1, !dbg !415
  store i32 %108, i32* %106, align 4, !dbg !415, !tbaa !408
  %109 = getelementptr inbounds i32, i32* %1, i64 %32, !dbg !416
  %110 = load i32, i32* %109, align 4, !dbg !417, !tbaa !408
  %111 = add nsw i32 %110, 1, !dbg !417
  store i32 %111, i32* %109, align 4, !dbg !417, !tbaa !408
  %112 = getelementptr inbounds i32, i32* %1, i64 %40, !dbg !418
  %113 = load i32, i32* %112, align 4, !dbg !419, !tbaa !408
  %114 = add nsw i32 %113, 1, !dbg !419
  store i32 %114, i32* %112, align 4, !dbg !419, !tbaa !408
  %115 = getelementptr inbounds i32, i32* %1, i64 %48, !dbg !420
  %116 = load i32, i32* %115, align 4, !dbg !421, !tbaa !408
  %117 = add nsw i32 %116, 1, !dbg !421
  store i32 %117, i32* %115, align 4, !dbg !421, !tbaa !408
  %118 = getelementptr inbounds i32, i32* %1, i64 %50, !dbg !422
  %119 = load i32, i32* %118, align 4, !dbg !423, !tbaa !408
  %120 = add nsw i32 %119, 1, !dbg !423
  store i32 %120, i32* %118, align 4, !dbg !423, !tbaa !408
  %121 = getelementptr inbounds i32, i32* %1, i64 %55, !dbg !424
  %122 = load i32, i32* %121, align 4, !dbg !425, !tbaa !408
  %123 = add nsw i32 %122, 1, !dbg !425
  store i32 %123, i32* %121, align 4, !dbg !425, !tbaa !408
  %124 = getelementptr inbounds i32, i32* %1, i64 %63, !dbg !426
  %125 = load i32, i32* %124, align 4, !dbg !427, !tbaa !408
  %126 = add nsw i32 %125, 1, !dbg !427
  store i32 %126, i32* %124, align 4, !dbg !427, !tbaa !408
  %127 = getelementptr inbounds i32, i32* %1, i64 %71, !dbg !428
  %128 = load i32, i32* %127, align 4, !dbg !429, !tbaa !408
  %129 = add nsw i32 %128, 1, !dbg !429
  store i32 %129, i32* %127, align 4, !dbg !429, !tbaa !408
  %130 = getelementptr inbounds i32, i32* %1, i64 %73, !dbg !430
  %131 = load i32, i32* %130, align 4, !dbg !431, !tbaa !408
  %132 = add nsw i32 %131, 1, !dbg !431
  store i32 %132, i32* %130, align 4, !dbg !431, !tbaa !408
  %133 = getelementptr inbounds i32, i32* %1, i64 %78, !dbg !432
  %134 = load i32, i32* %133, align 4, !dbg !433, !tbaa !408
  %135 = add nsw i32 %134, 1, !dbg !433
  store i32 %135, i32* %133, align 4, !dbg !433, !tbaa !408
  %136 = getelementptr inbounds i32, i32* %1, i64 %86, !dbg !434
  %137 = load i32, i32* %136, align 4, !dbg !435, !tbaa !408
  %138 = add nsw i32 %137, 1, !dbg !435
  store i32 %138, i32* %136, align 4, !dbg !435, !tbaa !408
  %139 = getelementptr inbounds i32, i32* %1, i64 %94, !dbg !436
  %140 = load i32, i32* %139, align 4, !dbg !437, !tbaa !408
  %141 = add nsw i32 %140, 1, !dbg !437
  store i32 %141, i32* %139, align 4, !dbg !437, !tbaa !408
  %142 = getelementptr inbounds i32, i32* %1, i64 %96, !dbg !438
  %143 = load i32, i32* %142, align 4, !dbg !439, !tbaa !408
  %144 = add nsw i32 %143, 1, !dbg !439
  store i32 %144, i32* %142, align 4, !dbg !439, !tbaa !408
  %145 = getelementptr inbounds i8, i8* %5, i64 12, !dbg !440
  %146 = add nuw nsw i32 %4, 1, !dbg !441
  %147 = icmp eq i32 %146, 1024, !dbg !442
  br i1 %147, label %148, label %3, !dbg !330, !llvm.loop !443

; <label>:148:                                    ; preds = %3
  ret void, !dbg !445
}

; Function Attrs: noredzone nounwind
define dso_local i32 @hllSparseToDense(%struct.redisObject* nocapture) local_unnamed_addr #3 !dbg !446 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !482
  %3 = load i8*, i8** %2, align 8, !dbg !482, !tbaa !483
  %4 = getelementptr inbounds i8, i8* %3, i64 -1, !dbg !501
  %5 = load i8, i8* %4, align 1, !dbg !501, !tbaa !143
  %6 = trunc i8 %5 to i3, !dbg !503
  switch i3 %6, label %28 [
    i3 0, label %7
    i3 1, label %10
    i3 2, label %14
    i3 3, label %19
    i3 -4, label %24
  ], !dbg !503

; <label>:7:                                      ; preds = %1
  %8 = lshr i8 %5, 3, !dbg !504
  %9 = zext i8 %8 to i64, !dbg !504
  br label %28, !dbg !506

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds i8, i8* %3, i64 -3, !dbg !507
  %12 = load i8, i8* %11, align 1, !dbg !508, !tbaa !143
  %13 = zext i8 %12 to i64, !dbg !507
  br label %28, !dbg !509

; <label>:14:                                     ; preds = %1
  %15 = getelementptr inbounds i8, i8* %3, i64 -5, !dbg !510
  %16 = bitcast i8* %15 to i16*, !dbg !511
  %17 = load i16, i16* %16, align 1, !dbg !511, !tbaa !512
  %18 = zext i16 %17 to i64, !dbg !510
  br label %28, !dbg !514

; <label>:19:                                     ; preds = %1
  %20 = getelementptr inbounds i8, i8* %3, i64 -9, !dbg !515
  %21 = bitcast i8* %20 to i32*, !dbg !516
  %22 = load i32, i32* %21, align 1, !dbg !516, !tbaa !408
  %23 = zext i32 %22 to i64, !dbg !515
  br label %28, !dbg !517

; <label>:24:                                     ; preds = %1
  %25 = getelementptr inbounds i8, i8* %3, i64 -17, !dbg !518
  %26 = bitcast i8* %25 to i64*, !dbg !519
  %27 = load i64, i64* %26, align 1, !dbg !519, !tbaa !125
  br label %28, !dbg !520

; <label>:28:                                     ; preds = %1, %7, %10, %14, %19, %24
  %29 = phi i64 [ %27, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %10 ], [ %9, %7 ], [ 0, %1 ], !dbg !521
  %30 = getelementptr inbounds i8, i8* %3, i64 %29, !dbg !522
  %31 = getelementptr inbounds i8, i8* %3, i64 4, !dbg !525
  %32 = load i8, i8* %31, align 1, !dbg !525, !tbaa !143
  %33 = icmp eq i8 %32, 0, !dbg !527
  br i1 %33, label %110, label %34, !dbg !528

; <label>:34:                                     ; preds = %28
  %35 = tail call i8* @sdsnewlen(i8* null, i64 12304) #10, !dbg !529
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %35, i8* nonnull align 1 %3, i64 16, i1 false), !dbg !531
  %36 = getelementptr inbounds i8, i8* %35, i64 4, !dbg !532
  store i8 0, i8* %36, align 1, !dbg !533, !tbaa !143
  %37 = icmp sgt i64 %29, 16, !dbg !534
  br i1 %37, label %38, label %107, !dbg !535

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !536
  %40 = getelementptr inbounds i8, i8* %35, i64 16
  br label %41, !dbg !535

; <label>:41:                                     ; preds = %38, %99
  %42 = phi i32 [ 0, %38 ], [ %101, %99 ]
  %43 = phi i8* [ %39, %38 ], [ %102, %99 ]
  %44 = load i8, i8* %43, align 1, !dbg !537, !tbaa !143
  %45 = zext i8 %44 to i32, !dbg !537
  %46 = and i8 %44, -64, !dbg !537
  switch i8 %46, label %60 [
    i8 0, label %47
    i8 64, label %51
  ], !dbg !538

; <label>:47:                                     ; preds = %41
  %48 = and i32 %45, 63, !dbg !539
  %49 = add i32 %42, 1, !dbg !539
  %50 = add i32 %49, %48, !dbg !542
  br label %99, !dbg !543

; <label>:51:                                     ; preds = %41
  %52 = shl nuw nsw i32 %45, 8, !dbg !544
  %53 = and i32 %52, 16128, !dbg !544
  %54 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !544
  %55 = load i8, i8* %54, align 1, !dbg !544, !tbaa !143
  %56 = zext i8 %55 to i32, !dbg !544
  %57 = or i32 %53, %56, !dbg !544
  %58 = add i32 %42, 1, !dbg !544
  %59 = add i32 %58, %57, !dbg !546
  br label %99, !dbg !547

; <label>:60:                                     ; preds = %41
  %61 = and i32 %45, 3, !dbg !548
  %62 = add nuw nsw i32 %61, 1, !dbg !548
  %63 = add nsw i32 %62, %42, !dbg !549
  %64 = icmp sgt i32 %63, 16384, !dbg !551
  br i1 %64, label %104, label %65, !dbg !552

; <label>:65:                                     ; preds = %60
  %66 = lshr i32 %45, 2, !dbg !553
  %67 = and i32 %66, 31, !dbg !553
  %68 = add nuw nsw i32 %67, 1, !dbg !553
  %69 = zext i32 %68 to i64
  %70 = add i32 %42, 1, !dbg !555
  %71 = mul nsw i32 %42, 6, !dbg !556
  %72 = sdiv i32 %71, 8, !dbg !556
  %73 = sext i32 %72 to i64, !dbg !556
  %74 = and i32 %71, 6, !dbg !556
  %75 = zext i32 %74 to i64, !dbg !556
  %76 = sub nsw i64 8, %75, !dbg !556
  %77 = shl i32 63, %74, !dbg !556
  %78 = getelementptr inbounds i8, i8* %40, i64 %73, !dbg !556
  %79 = load i8, i8* %78, align 1, !dbg !556, !tbaa !143
  %80 = trunc i32 %77 to i8, !dbg !556
  %81 = xor i8 %80, -1, !dbg !556
  %82 = and i8 %79, %81, !dbg !556
  %83 = shl i64 %69, %75, !dbg !556
  %84 = trunc i64 %83 to i8, !dbg !556
  %85 = or i8 %82, %84, !dbg !556
  store i8 %85, i8* %78, align 1, !dbg !556, !tbaa !143
  %86 = trunc i64 %76 to i32, !dbg !556
  %87 = ashr i32 -64, %86, !dbg !556
  %88 = add nsw i64 %73, 1, !dbg !556
  %89 = getelementptr inbounds i8, i8* %40, i64 %88, !dbg !556
  %90 = load i8, i8* %89, align 1, !dbg !556, !tbaa !143
  %91 = trunc i32 %87 to i8, !dbg !556
  %92 = and i8 %90, %91, !dbg !556
  %93 = lshr i64 %69, %76, !dbg !556
  %94 = trunc i64 %93 to i8, !dbg !556
  %95 = or i8 %92, %94, !dbg !556
  store i8 %95, i8* %89, align 1, !dbg !556, !tbaa !143
  %96 = icmp eq i32 %61, 0, !dbg !555
  br i1 %96, label %97, label %112, !dbg !555, !llvm.loop !557

; <label>:97:                                     ; preds = %168, %140, %112, %65
  %98 = add i32 %70, %61, !dbg !555
  br label %99

; <label>:99:                                     ; preds = %51, %97, %47
  %100 = phi i64 [ 2, %51 ], [ 1, %97 ], [ 1, %47 ]
  %101 = phi i32 [ %59, %51 ], [ %98, %97 ], [ %50, %47 ], !dbg !559
  %102 = getelementptr inbounds i8, i8* %43, i64 %100, !dbg !560
  %103 = icmp ult i8* %102, %30, !dbg !534
  br i1 %103, label %41, label %104, !dbg !535, !llvm.loop !561

; <label>:104:                                    ; preds = %99, %60
  %105 = phi i32 [ %101, %99 ], [ %42, %60 ], !dbg !560
  %106 = icmp eq i32 %105, 16384, !dbg !563
  br i1 %106, label %108, label %107, !dbg !565

; <label>:107:                                    ; preds = %34, %104
  tail call void @sdsfree(i8* %35) #10, !dbg !566
  br label %110, !dbg !568

; <label>:108:                                    ; preds = %104
  %109 = load i8*, i8** %2, align 8, !dbg !569, !tbaa !483
  tail call void @sdsfree(i8* %109) #10, !dbg !570
  store i8* %35, i8** %2, align 8, !dbg !571, !tbaa !483
  br label %110, !dbg !572

; <label>:110:                                    ; preds = %28, %108, %107
  %111 = phi i32 [ -1, %107 ], [ 0, %108 ], [ 0, %28 ], !dbg !559
  ret i32 %111, !dbg !573

; <label>:112:                                    ; preds = %65
  %113 = mul i32 %42, 6, !dbg !556
  %114 = add i32 %113, 6, !dbg !556
  %115 = sdiv i32 %114, 8, !dbg !556
  %116 = sext i32 %115 to i64, !dbg !556
  %117 = and i32 %114, 6, !dbg !556
  %118 = zext i32 %117 to i64, !dbg !556
  %119 = sub nsw i64 8, %118, !dbg !556
  %120 = shl i32 63, %117, !dbg !556
  %121 = getelementptr inbounds i8, i8* %40, i64 %116, !dbg !556
  %122 = load i8, i8* %121, align 1, !dbg !556, !tbaa !143
  %123 = trunc i32 %120 to i8, !dbg !556
  %124 = xor i8 %123, -1, !dbg !556
  %125 = and i8 %122, %124, !dbg !556
  %126 = shl i64 %69, %118, !dbg !556
  %127 = trunc i64 %126 to i8, !dbg !556
  %128 = or i8 %125, %127, !dbg !556
  store i8 %128, i8* %121, align 1, !dbg !556, !tbaa !143
  %129 = trunc i64 %119 to i32, !dbg !556
  %130 = ashr i32 -64, %129, !dbg !556
  %131 = add nsw i64 %116, 1, !dbg !556
  %132 = getelementptr inbounds i8, i8* %40, i64 %131, !dbg !556
  %133 = load i8, i8* %132, align 1, !dbg !556, !tbaa !143
  %134 = trunc i32 %130 to i8, !dbg !556
  %135 = and i8 %133, %134, !dbg !556
  %136 = lshr i64 %69, %119, !dbg !556
  %137 = trunc i64 %136 to i8, !dbg !556
  %138 = or i8 %135, %137, !dbg !556
  store i8 %138, i8* %132, align 1, !dbg !556, !tbaa !143
  %139 = icmp eq i32 %61, 1, !dbg !555
  br i1 %139, label %97, label %140, !dbg !555, !llvm.loop !557

; <label>:140:                                    ; preds = %112
  %141 = mul i32 %42, 6, !dbg !556
  %142 = add i32 %141, 12, !dbg !556
  %143 = sdiv i32 %142, 8, !dbg !556
  %144 = sext i32 %143 to i64, !dbg !556
  %145 = and i32 %142, 6, !dbg !556
  %146 = zext i32 %145 to i64, !dbg !556
  %147 = sub nsw i64 8, %146, !dbg !556
  %148 = shl i32 63, %145, !dbg !556
  %149 = getelementptr inbounds i8, i8* %40, i64 %144, !dbg !556
  %150 = load i8, i8* %149, align 1, !dbg !556, !tbaa !143
  %151 = trunc i32 %148 to i8, !dbg !556
  %152 = xor i8 %151, -1, !dbg !556
  %153 = and i8 %150, %152, !dbg !556
  %154 = shl i64 %69, %146, !dbg !556
  %155 = trunc i64 %154 to i8, !dbg !556
  %156 = or i8 %153, %155, !dbg !556
  store i8 %156, i8* %149, align 1, !dbg !556, !tbaa !143
  %157 = trunc i64 %147 to i32, !dbg !556
  %158 = ashr i32 -64, %157, !dbg !556
  %159 = add nsw i64 %144, 1, !dbg !556
  %160 = getelementptr inbounds i8, i8* %40, i64 %159, !dbg !556
  %161 = load i8, i8* %160, align 1, !dbg !556, !tbaa !143
  %162 = trunc i32 %158 to i8, !dbg !556
  %163 = and i8 %161, %162, !dbg !556
  %164 = lshr i64 %69, %147, !dbg !556
  %165 = trunc i64 %164 to i8, !dbg !556
  %166 = or i8 %163, %165, !dbg !556
  store i8 %166, i8* %160, align 1, !dbg !556, !tbaa !143
  %167 = icmp eq i32 %61, 2, !dbg !555
  br i1 %167, label %97, label %168, !dbg !555, !llvm.loop !557

; <label>:168:                                    ; preds = %140
  %169 = add i32 %141, 18, !dbg !556
  %170 = sdiv i32 %169, 8, !dbg !556
  %171 = sext i32 %170 to i64, !dbg !556
  %172 = and i32 %169, 6, !dbg !556
  %173 = zext i32 %172 to i64, !dbg !556
  %174 = sub nsw i64 8, %173, !dbg !556
  %175 = shl i32 63, %172, !dbg !556
  %176 = getelementptr inbounds i8, i8* %40, i64 %171, !dbg !556
  %177 = load i8, i8* %176, align 1, !dbg !556, !tbaa !143
  %178 = trunc i32 %175 to i8, !dbg !556
  %179 = xor i8 %178, -1, !dbg !556
  %180 = and i8 %177, %179, !dbg !556
  %181 = shl i64 %69, %173, !dbg !556
  %182 = trunc i64 %181 to i8, !dbg !556
  %183 = or i8 %180, %182, !dbg !556
  store i8 %183, i8* %176, align 1, !dbg !556, !tbaa !143
  %184 = trunc i64 %174 to i32, !dbg !556
  %185 = ashr i32 -64, %184, !dbg !556
  %186 = add nsw i64 %171, 1, !dbg !556
  %187 = getelementptr inbounds i8, i8* %40, i64 %186, !dbg !556
  %188 = load i8, i8* %187, align 1, !dbg !556, !tbaa !143
  %189 = trunc i32 %185 to i8, !dbg !556
  %190 = and i8 %188, %189, !dbg !556
  %191 = lshr i64 %69, %174, !dbg !556
  %192 = trunc i64 %191 to i8, !dbg !556
  %193 = or i8 %190, %192, !dbg !556
  store i8 %193, i8* %187, align 1, !dbg !556, !tbaa !143
  br label %97
}

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local i32 @hllSparseSet(%struct.redisObject* nocapture, i64, i8 zeroext) local_unnamed_addr #3 !dbg !574 {
  %4 = alloca [5 x i8], align 1
  %5 = icmp ugt i8 %2, 32, !dbg !639
  br i1 %5, label %300, label %6, !dbg !641

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !642
  %8 = load i8*, i8** %7, align 8, !dbg !642, !tbaa !483
  %9 = tail call i8* @sdsMakeRoomFor(i8* %8, i64 3) #10, !dbg !643
  store i8* %9, i8** %7, align 8, !dbg !644, !tbaa !483
  %10 = getelementptr inbounds i8, i8* %9, i64 16, !dbg !645
  %11 = getelementptr inbounds i8, i8* %9, i64 -1, !dbg !649
  %12 = load i8, i8* %11, align 1, !dbg !649, !tbaa !143
  %13 = trunc i8 %12 to i3, !dbg !651
  switch i3 %13, label %343 [
    i3 0, label %14
    i3 1, label %17
    i3 2, label %21
    i3 3, label %26
    i3 -4, label %31
  ], !dbg !651

; <label>:14:                                     ; preds = %6
  %15 = lshr i8 %12, 3, !dbg !652
  %16 = zext i8 %15 to i64, !dbg !652
  br label %35, !dbg !653

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !654
  %19 = load i8, i8* %18, align 1, !dbg !655, !tbaa !143
  %20 = zext i8 %19 to i64, !dbg !654
  br label %35, !dbg !656

; <label>:21:                                     ; preds = %6
  %22 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !657
  %23 = bitcast i8* %22 to i16*, !dbg !658
  %24 = load i16, i16* %23, align 1, !dbg !658, !tbaa !512
  %25 = zext i16 %24 to i64, !dbg !657
  br label %35, !dbg !659

; <label>:26:                                     ; preds = %6
  %27 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !660
  %28 = bitcast i8* %27 to i32*, !dbg !661
  %29 = load i32, i32* %28, align 1, !dbg !661, !tbaa !408
  %30 = zext i32 %29 to i64, !dbg !660
  br label %35, !dbg !662

; <label>:31:                                     ; preds = %6
  %32 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !663
  %33 = bitcast i8* %32 to i64*, !dbg !664
  %34 = load i64, i64* %33, align 1, !dbg !664, !tbaa !125
  br label %35, !dbg !665

; <label>:35:                                     ; preds = %14, %17, %21, %26, %31
  %36 = phi i64 [ %34, %31 ], [ %30, %26 ], [ %25, %21 ], [ %20, %17 ], [ %16, %14 ], !dbg !666
  %37 = getelementptr inbounds i8, i8* %9, i64 %36, !dbg !667
  %38 = icmp sgt i64 %36, 16, !dbg !672
  br i1 %38, label %39, label %343, !dbg !673

; <label>:39:                                     ; preds = %35, %67
  %40 = phi i8* [ %68, %67 ], [ %10, %35 ]
  %41 = phi i8* [ %40, %67 ], [ null, %35 ]
  %42 = phi i64 [ %65, %67 ], [ 0, %35 ]
  %43 = load i8, i8* %40, align 1, !dbg !675, !tbaa !143
  %44 = zext i8 %43 to i32, !dbg !675
  %45 = and i32 %44, 192, !dbg !675
  %46 = icmp eq i32 %45, 0, !dbg !675
  br i1 %46, label %47, label %49, !dbg !677

; <label>:47:                                     ; preds = %39
  %48 = and i32 %44, 63, !dbg !678
  br label %60, !dbg !680

; <label>:49:                                     ; preds = %39
  %50 = icmp slt i8 %43, 0, !dbg !681
  br i1 %50, label %51, label %53, !dbg !683

; <label>:51:                                     ; preds = %49
  %52 = and i32 %44, 3, !dbg !684
  br label %60, !dbg !686

; <label>:53:                                     ; preds = %49
  %54 = shl nuw nsw i32 %44, 8, !dbg !687
  %55 = and i32 %54, 16128, !dbg !687
  %56 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !687
  %57 = load i8, i8* %56, align 1, !dbg !687, !tbaa !143
  %58 = zext i8 %57 to i32, !dbg !687
  %59 = or i32 %55, %58, !dbg !687
  br label %60

; <label>:60:                                     ; preds = %51, %53, %47
  %61 = phi i64 [ 1, %47 ], [ 1, %51 ], [ 2, %53 ], !dbg !689
  %62 = phi i32 [ %48, %47 ], [ %52, %51 ], [ %59, %53 ]
  %63 = add nuw nsw i32 %62, 1, !dbg !689
  %64 = zext i32 %63 to i64, !dbg !689
  %65 = add nuw nsw i64 %42, %64, !dbg !690
  %66 = icmp sgt i64 %65, %1, !dbg !692
  br i1 %66, label %70, label %67, !dbg !693

; <label>:67:                                     ; preds = %60
  %68 = getelementptr inbounds i8, i8* %40, i64 %61, !dbg !694
  %69 = icmp ult i8* %68, %37, !dbg !672
  br i1 %69, label %39, label %70, !dbg !673

; <label>:70:                                     ; preds = %67, %60
  %71 = phi i64 [ %42, %60 ], [ %65, %67 ], !dbg !695
  %72 = phi i8* [ %41, %60 ], [ %40, %67 ], !dbg !696
  %73 = phi i8* [ %40, %60 ], [ %68, %67 ], !dbg !697
  %74 = icmp ult i8* %73, %37, !dbg !698
  br i1 %74, label %75, label %343, !dbg !700

; <label>:75:                                     ; preds = %70
  %76 = load i8, i8* %73, align 1, !dbg !701, !tbaa !143
  %77 = zext i8 %76 to i32, !dbg !701
  %78 = and i32 %77, 192, !dbg !701
  %79 = icmp eq i32 %78, 64, !dbg !701
  %80 = select i1 %79, i64 2, i64 1, !dbg !701
  %81 = getelementptr inbounds i8, i8* %73, i64 %80, !dbg !701
  %82 = icmp ult i8* %81, %37, !dbg !702
  %83 = select i1 %82, i8* %81, i8* null, !dbg !704
  %84 = icmp eq i32 %78, 0, !dbg !705
  br i1 %84, label %98, label %85, !dbg !707

; <label>:85:                                     ; preds = %75
  br i1 %79, label %105, label %86, !dbg !708

; <label>:86:                                     ; preds = %85
  %87 = lshr i8 %76, 2, !dbg !709
  %88 = and i8 %87, 31, !dbg !709
  %89 = add nuw nsw i8 %88, 1, !dbg !709
  %90 = icmp ult i8 %89, %2, !dbg !713
  br i1 %90, label %91, label %343, !dbg !715

; <label>:91:                                     ; preds = %86
  %92 = and i32 %77, 3, !dbg !716
  %93 = icmp eq i32 %92, 0, !dbg !719
  br i1 %93, label %94, label %105, !dbg !721

; <label>:94:                                     ; preds = %91
  %95 = shl i8 %2, 2, !dbg !722
  %96 = add i8 %95, 124, !dbg !722
  %97 = or i8 %96, -128, !dbg !722
  store i8 %97, i8* %73, align 1, !dbg !722, !tbaa !143
  br label %241, !dbg !725

; <label>:98:                                     ; preds = %75
  %99 = and i32 %77, 63, !dbg !726
  %100 = icmp eq i32 %99, 0, !dbg !728
  br i1 %100, label %101, label %105, !dbg !730

; <label>:101:                                    ; preds = %98
  %102 = shl i8 %2, 2, !dbg !731
  %103 = add i8 %102, 124, !dbg !731
  %104 = or i8 %103, -128, !dbg !731
  store i8 %104, i8* %73, align 1, !dbg !731, !tbaa !143
  br label %241, !dbg !734

; <label>:105:                                    ; preds = %91, %85, %98
  %106 = phi i64 [ 0, %98 ], [ 1, %85 ], [ 0, %91 ]
  %107 = phi i64 [ 1, %98 ], [ 0, %85 ], [ 0, %91 ]
  %108 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0, !dbg !736
  %109 = trunc i64 %71 to i32, !dbg !738
  %110 = add i32 %62, %109, !dbg !738
  %111 = icmp eq i64 %106, 0, !dbg !740
  %112 = or i64 %107, %106, !dbg !741
  %113 = icmp eq i64 %112, 0, !dbg !741
  br i1 %113, label %156, label %114, !dbg !741

; <label>:114:                                    ; preds = %105
  %115 = icmp eq i64 %71, %1, !dbg !742
  br i1 %115, label %132, label %116, !dbg !743

; <label>:116:                                    ; preds = %114
  %117 = sub nsw i64 %1, %71, !dbg !744
  %118 = trunc i64 %117 to i32, !dbg !745
  %119 = icmp sgt i32 %118, 64, !dbg !747
  br i1 %119, label %120, label %128, !dbg !748

; <label>:120:                                    ; preds = %116
  %121 = add nsw i32 %118, -1, !dbg !749
  %122 = lshr i32 %121, 8, !dbg !749
  %123 = trunc i32 %122 to i8, !dbg !749
  %124 = or i8 %123, 64, !dbg !749
  store i8 %124, i8* %108, align 1, !dbg !749, !tbaa !143
  %125 = trunc i32 %121 to i8, !dbg !749
  %126 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 1, !dbg !749
  store i8 %125, i8* %126, align 1, !dbg !749, !tbaa !143
  %127 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 2, !dbg !750
  br label %132, !dbg !751

; <label>:128:                                    ; preds = %116
  %129 = trunc i64 %117 to i8, !dbg !752
  %130 = add i8 %129, -1, !dbg !752
  store i8 %130, i8* %108, align 1, !dbg !752, !tbaa !143
  %131 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 1, !dbg !755
  br label %132

; <label>:132:                                    ; preds = %114, %128, %120
  %133 = phi i8* [ %127, %120 ], [ %131, %128 ], [ %108, %114 ], !dbg !756
  %134 = shl i8 %2, 2, !dbg !757
  %135 = add i8 %134, 124, !dbg !757
  %136 = or i8 %135, -128, !dbg !757
  store i8 %136, i8* %133, align 1, !dbg !757, !tbaa !143
  %137 = getelementptr inbounds i8, i8* %133, i64 1, !dbg !759
  %138 = sext i32 %110 to i64, !dbg !760
  %139 = icmp eq i64 %138, %1, !dbg !761
  br i1 %139, label %185, label %140, !dbg !762

; <label>:140:                                    ; preds = %132
  %141 = trunc i64 %1 to i32, !dbg !763
  %142 = sub i32 %110, %141, !dbg !763
  %143 = icmp sgt i32 %142, 64, !dbg !764
  br i1 %143, label %144, label %152, !dbg !765

; <label>:144:                                    ; preds = %140
  %145 = add nsw i32 %142, -1, !dbg !766
  %146 = lshr i32 %145, 8, !dbg !766
  %147 = trunc i32 %146 to i8, !dbg !766
  %148 = or i8 %147, 64, !dbg !766
  store i8 %148, i8* %137, align 1, !dbg !766, !tbaa !143
  %149 = trunc i32 %145 to i8, !dbg !766
  %150 = getelementptr inbounds i8, i8* %133, i64 2, !dbg !766
  store i8 %149, i8* %150, align 1, !dbg !766, !tbaa !143
  %151 = getelementptr inbounds i8, i8* %133, i64 3, !dbg !767
  br label %185, !dbg !768

; <label>:152:                                    ; preds = %140
  %153 = trunc i32 %142 to i8, !dbg !769
  %154 = add i8 %153, -1, !dbg !769
  store i8 %154, i8* %137, align 1, !dbg !769, !tbaa !143
  %155 = getelementptr inbounds i8, i8* %133, i64 2, !dbg !772
  br label %185

; <label>:156:                                    ; preds = %105
  %157 = lshr i8 %76, 2, !dbg !773
  %158 = and i8 %157, 31, !dbg !773
  %159 = icmp eq i64 %71, %1, !dbg !774
  br i1 %159, label %168, label %160, !dbg !776

; <label>:160:                                    ; preds = %156
  %161 = sub nsw i64 %1, %71, !dbg !777
  %162 = trunc i64 %161 to i8, !dbg !779
  %163 = shl nuw nsw i8 %158, 2, !dbg !780
  %164 = add i8 %162, 127, !dbg !780
  %165 = or i8 %164, %163, !dbg !780
  %166 = or i8 %165, -128, !dbg !780
  store i8 %166, i8* %108, align 1, !dbg !780, !tbaa !143
  %167 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 1, !dbg !782
  br label %168, !dbg !783

; <label>:168:                                    ; preds = %156, %160
  %169 = phi i8* [ %167, %160 ], [ %108, %156 ], !dbg !756
  %170 = shl i8 %2, 2, !dbg !784
  %171 = add i8 %170, 124, !dbg !784
  %172 = or i8 %171, -128, !dbg !784
  store i8 %172, i8* %169, align 1, !dbg !784, !tbaa !143
  %173 = getelementptr inbounds i8, i8* %169, i64 1, !dbg !786
  %174 = sext i32 %110 to i64, !dbg !787
  %175 = icmp eq i64 %174, %1, !dbg !789
  br i1 %175, label %185, label %176, !dbg !790

; <label>:176:                                    ; preds = %168
  %177 = trunc i64 %1 to i32, !dbg !791
  %178 = shl nuw nsw i8 %158, 2, !dbg !793
  %179 = xor i32 %177, 127, !dbg !793
  %180 = add i32 %110, %179, !dbg !793
  %181 = trunc i32 %180 to i8, !dbg !793
  %182 = or i8 %178, %181, !dbg !793
  %183 = or i8 %182, -128, !dbg !793
  store i8 %183, i8* %173, align 1, !dbg !793, !tbaa !143
  %184 = getelementptr inbounds i8, i8* %169, i64 2, !dbg !795
  br label %185, !dbg !796

; <label>:185:                                    ; preds = %176, %168, %132, %152, %144
  %186 = phi i8* [ %151, %144 ], [ %155, %152 ], [ %137, %132 ], [ %184, %176 ], [ %173, %168 ], !dbg !797
  %187 = ptrtoint i8* %186 to i64, !dbg !798
  %188 = ptrtoint [5 x i8]* %4 to i64, !dbg !798
  %189 = sub i64 %187, %188, !dbg !798
  %190 = trunc i64 %189 to i32, !dbg !799
  %191 = select i1 %111, i32 1, i32 2, !dbg !801
  %192 = sub nsw i32 %190, %191, !dbg !803
  %193 = icmp sgt i32 %192, 0, !dbg !805
  br i1 %193, label %194, label %224, !dbg !807

; <label>:194:                                    ; preds = %185
  %195 = load i8, i8* %11, align 1, !dbg !810, !tbaa !143
  %196 = trunc i8 %195 to i3, !dbg !812
  switch i3 %196, label %218 [
    i3 0, label %197
    i3 1, label %200
    i3 2, label %204
    i3 3, label %209
    i3 -4, label %214
  ], !dbg !812

; <label>:197:                                    ; preds = %194
  %198 = lshr i8 %195, 3, !dbg !813
  %199 = zext i8 %198 to i64, !dbg !813
  br label %218, !dbg !814

; <label>:200:                                    ; preds = %194
  %201 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !815
  %202 = load i8, i8* %201, align 1, !dbg !816, !tbaa !143
  %203 = zext i8 %202 to i64, !dbg !815
  br label %218, !dbg !817

; <label>:204:                                    ; preds = %194
  %205 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !818
  %206 = bitcast i8* %205 to i16*, !dbg !819
  %207 = load i16, i16* %206, align 1, !dbg !819, !tbaa !512
  %208 = zext i16 %207 to i64, !dbg !818
  br label %218, !dbg !820

; <label>:209:                                    ; preds = %194
  %210 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !821
  %211 = bitcast i8* %210 to i32*, !dbg !822
  %212 = load i32, i32* %211, align 1, !dbg !822, !tbaa !408
  %213 = zext i32 %212 to i64, !dbg !821
  br label %218, !dbg !823

; <label>:214:                                    ; preds = %194
  %215 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !824
  %216 = bitcast i8* %215 to i64*, !dbg !825
  %217 = load i64, i64* %216, align 1, !dbg !825, !tbaa !125
  br label %218, !dbg !826

; <label>:218:                                    ; preds = %194, %197, %200, %204, %209, %214
  %219 = phi i64 [ %217, %214 ], [ %213, %209 ], [ %208, %204 ], [ %203, %200 ], [ %199, %197 ], [ 0, %194 ], !dbg !827
  %220 = sext i32 %192 to i64, !dbg !828
  %221 = add i64 %219, %220, !dbg !829
  %222 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 246), align 8, !dbg !830, !tbaa !831
  %223 = icmp ugt i64 %221, %222, !dbg !838
  br i1 %223, label %300, label %224, !dbg !839

; <label>:224:                                    ; preds = %218, %185
  %225 = icmp ne i32 %192, 0, !dbg !840
  %226 = and i1 %82, %225, !dbg !842
  %227 = sext i32 %192 to i64, !dbg !756
  br i1 %226, label %228, label %235, !dbg !842

; <label>:228:                                    ; preds = %224
  %229 = getelementptr inbounds i8, i8* %83, i64 %227, !dbg !843
  %230 = ptrtoint i8* %37 to i64, !dbg !844
  %231 = ptrtoint i8* %83 to i64, !dbg !844
  %232 = sub i64 %230, %231, !dbg !844
  %233 = call i8* @memmove(i8* %229, i8* %83, i64 %232) #10, !dbg !845
  %234 = load i8*, i8** %7, align 8, !dbg !846, !tbaa !483
  br label %235, !dbg !845

; <label>:235:                                    ; preds = %224, %228
  %236 = phi i8* [ %234, %228 ], [ %9, %224 ], !dbg !846
  call void @sdsIncrLen(i8* %236, i64 %227) #10, !dbg !847
  %237 = shl i64 %189, 32, !dbg !848
  %238 = ashr exact i64 %237, 32, !dbg !848
  %239 = call i8* @memcpy(i8* nonnull %73, i8* nonnull %108, i64 %238) #10, !dbg !849
  %240 = getelementptr inbounds i8, i8* %37, i64 %227, !dbg !850
  br label %241, !dbg !851

; <label>:241:                                    ; preds = %235, %101, %94
  %242 = phi i8* [ %37, %94 ], [ %37, %101 ], [ %240, %235 ], !dbg !756
  %243 = icmp eq i8* %72, null, !dbg !852
  %244 = select i1 %243, i8* %10, i8* %72, !dbg !852
  %245 = icmp ult i8* %244, %242, !dbg !854
  br i1 %245, label %246, label %294, !dbg !855

; <label>:246:                                    ; preds = %241, %263
  %247 = phi i8* [ %253, %263 ], [ %242, %241 ]
  %248 = phi i8* [ %264, %263 ], [ %244, %241 ]
  %249 = phi i32 [ %255, %263 ], [ 5, %241 ]
  %250 = getelementptr inbounds i8, i8* %248, i64 1
  %251 = ptrtoint i8* %248 to i64
  br label %252, !dbg !855

; <label>:252:                                    ; preds = %246, %282
  %253 = phi i8* [ %247, %246 ], [ %292, %282 ]
  %254 = phi i32 [ %249, %246 ], [ %255, %282 ]
  %255 = add nsw i32 %254, -1, !dbg !856
  %256 = icmp eq i32 %254, 0, !dbg !855
  br i1 %256, label %294, label %257, !dbg !857

; <label>:257:                                    ; preds = %252
  %258 = load i8, i8* %248, align 1, !dbg !858, !tbaa !143
  %259 = zext i8 %258 to i32, !dbg !858
  %260 = and i8 %258, -64, !dbg !858
  switch i8 %260, label %266 [
    i8 64, label %261
    i8 0, label %263
  ], !dbg !860

; <label>:261:                                    ; preds = %257
  %262 = getelementptr inbounds i8, i8* %248, i64 2, !dbg !861
  br label %263, !dbg !863

; <label>:263:                                    ; preds = %257, %266, %268, %271, %275, %261
  %264 = phi i8* [ %262, %261 ], [ %250, %275 ], [ %250, %271 ], [ %250, %268 ], [ %250, %266 ], [ %250, %257 ]
  %265 = icmp ult i8* %264, %253, !dbg !854
  br i1 %265, label %246, label %294, !dbg !855, !llvm.loop !864

; <label>:266:                                    ; preds = %257
  %267 = icmp ult i8* %250, %253, !dbg !866
  br i1 %267, label %268, label %263, !dbg !867

; <label>:268:                                    ; preds = %266
  %269 = load i8, i8* %250, align 1, !dbg !868, !tbaa !143
  %270 = icmp slt i8 %269, 0, !dbg !868
  br i1 %270, label %271, label %263, !dbg !869

; <label>:271:                                    ; preds = %268
  %272 = xor i8 %269, %258, !dbg !871
  %273 = and i8 %272, 124, !dbg !871
  %274 = icmp eq i8 %273, 0, !dbg !871
  br i1 %274, label %275, label %263, !dbg !872

; <label>:275:                                    ; preds = %271
  %276 = and i32 %259, 3, !dbg !873
  %277 = and i8 %269, 3, !dbg !874
  %278 = zext i8 %277 to i32, !dbg !874
  %279 = add nuw nsw i32 %276, %278, !dbg !875
  %280 = add nuw nsw i32 %279, 2, !dbg !875
  %281 = icmp ult i32 %280, 5, !dbg !877
  br i1 %281, label %282, label %263, !dbg !879

; <label>:282:                                    ; preds = %275
  %283 = and i32 %259, 124, !dbg !880
  %284 = add nuw nsw i32 %279, 1, !dbg !880
  %285 = or i32 %284, %283, !dbg !880
  %286 = trunc i32 %285 to i8, !dbg !880
  %287 = or i8 %286, -128, !dbg !880
  store i8 %287, i8* %250, align 1, !dbg !880, !tbaa !143
  %288 = ptrtoint i8* %253 to i64, !dbg !883
  %289 = sub i64 %288, %251, !dbg !883
  %290 = call i8* @memmove(i8* nonnull %248, i8* nonnull %250, i64 %289) #10, !dbg !884
  %291 = load i8*, i8** %7, align 8, !dbg !885, !tbaa !483
  call void @sdsIncrLen(i8* %291, i64 -1) #10, !dbg !886
  %292 = getelementptr inbounds i8, i8* %253, i64 -1, !dbg !887
  %293 = icmp ult i8* %248, %292, !dbg !854
  br i1 %293, label %252, label %294, !dbg !855

; <label>:294:                                    ; preds = %263, %282, %252, %241
  %295 = bitcast i8** %7 to %struct.hllhdr**, !dbg !888
  %296 = load %struct.hllhdr*, %struct.hllhdr** %295, align 8, !dbg !888, !tbaa !483
  %297 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %296, i64 0, i32 3, i64 7, !dbg !890
  %298 = load i8, i8* %297, align 1, !dbg !890, !tbaa !143
  %299 = or i8 %298, -128, !dbg !890
  store i8 %299, i8* %297, align 1, !dbg !890, !tbaa !143
  br label %343, !dbg !891

; <label>:300:                                    ; preds = %218, %3
  %301 = call i32 @hllSparseToDense(%struct.redisObject* %0) #8, !dbg !892
  %302 = icmp eq i32 %301, -1, !dbg !894
  br i1 %302, label %343, label %303, !dbg !895

; <label>:303:                                    ; preds = %300
  %304 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !896
  %305 = bitcast i8** %304 to %struct.hllhdr**, !dbg !896
  %306 = load %struct.hllhdr*, %struct.hllhdr** %305, align 8, !dbg !896, !tbaa !483
  %307 = mul nsw i64 %1, 6, !dbg !901
  %308 = sdiv i64 %307, 8, !dbg !901
  %309 = and i64 %307, 6, !dbg !901
  %310 = sub nsw i64 8, %309, !dbg !901
  %311 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %306, i64 0, i32 4, i64 %308, !dbg !901
  %312 = load i8, i8* %311, align 1, !dbg !901, !tbaa !143
  %313 = zext i8 %312 to i64, !dbg !901
  %314 = add nsw i64 %308, 1, !dbg !901
  %315 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %306, i64 0, i32 4, i64 %314, !dbg !901
  %316 = load i8, i8* %315, align 1, !dbg !901, !tbaa !143
  %317 = zext i8 %316 to i64, !dbg !901
  %318 = lshr i64 %313, %309, !dbg !901
  %319 = shl i64 %317, %310, !dbg !901
  %320 = or i64 %319, %318, !dbg !901
  %321 = trunc i64 %320 to i32, !dbg !901
  %322 = and i32 %321, 63, !dbg !901
  %323 = zext i8 %2 to i32, !dbg !902
  %324 = icmp ult i32 %322, %323, !dbg !903
  br i1 %324, label %325, label %342, !dbg !904

; <label>:325:                                    ; preds = %303
  %326 = zext i8 %2 to i64, !dbg !905
  %327 = trunc i64 %309 to i32, !dbg !905
  %328 = shl i32 63, %327, !dbg !905
  %329 = trunc i32 %328 to i8, !dbg !905
  %330 = xor i8 %329, -1, !dbg !905
  %331 = and i8 %312, %330, !dbg !905
  %332 = shl i64 %326, %309, !dbg !905
  %333 = trunc i64 %332 to i8, !dbg !905
  %334 = or i8 %331, %333, !dbg !905
  store i8 %334, i8* %311, align 1, !dbg !905, !tbaa !143
  %335 = trunc i64 %310 to i32, !dbg !905
  %336 = ashr i32 -64, %335, !dbg !905
  %337 = trunc i32 %336 to i8, !dbg !905
  %338 = and i8 %316, %337, !dbg !905
  %339 = lshr i64 %326, %310, !dbg !905
  %340 = trunc i64 %339 to i8, !dbg !905
  %341 = or i8 %338, %340, !dbg !905
  store i8 %341, i8* %315, align 1, !dbg !905, !tbaa !143
  br label %343, !dbg !907

; <label>:342:                                    ; preds = %303
  call void @_serverAssert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 893) #10, !dbg !907
  call void @_exit(i32 1) #11, !dbg !907
  unreachable, !dbg !907

; <label>:343:                                    ; preds = %6, %35, %325, %300, %86, %70, %294
  %344 = phi i32 [ 1, %294 ], [ -1, %70 ], [ 0, %86 ], [ -1, %300 ], [ 1, %325 ], [ -1, %35 ], [ -1, %6 ], !dbg !756
  ret i32 %344, !dbg !908
}

; Function Attrs: noredzone
declare dso_local i8* @sdsMakeRoomFor(i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @sdsIncrLen(i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #4

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local i32 @hllSparseAdd(%struct.redisObject* nocapture, i8*, i64) local_unnamed_addr #3 !dbg !909 {
  %4 = trunc i64 %2 to i32, !dbg !924
  %5 = tail call i64 @MurmurHash64A(i8* %1, i32 %4, i32 -1379386599) #10, !dbg !925
  %6 = lshr i64 %5, 14, !dbg !928
  %7 = or i64 %6, 1125899906842624, !dbg !929
  %8 = and i64 %5, 16384, !dbg !932
  %9 = icmp eq i64 %8, 0, !dbg !933
  br i1 %9, label %10, label %19, !dbg !934

; <label>:10:                                     ; preds = %3, %10
  %11 = phi i32 [ %13, %10 ], [ 1, %3 ]
  %12 = phi i64 [ %14, %10 ], [ 1, %3 ]
  %13 = add nuw nsw i32 %11, 1, !dbg !935
  %14 = shl i64 %12, 1, !dbg !936
  %15 = and i64 %14, %7, !dbg !932
  %16 = icmp eq i64 %15, 0, !dbg !933
  br i1 %16, label %10, label %17, !dbg !934, !llvm.loop !218

; <label>:17:                                     ; preds = %10
  %18 = trunc i32 %13 to i8, !dbg !937
  br label %19, !dbg !937

; <label>:19:                                     ; preds = %17, %3
  %20 = phi i8 [ 1, %3 ], [ %18, %17 ]
  %21 = and i64 %5, 16383, !dbg !937
  %22 = tail call i32 @hllSparseSet(%struct.redisObject* %0, i64 %21, i8 zeroext %20) #8, !dbg !940
  ret i32 %22, !dbg !941
}

; Function Attrs: noredzone nounwind
define dso_local void @hllSparseRegHisto(i8* readonly, i32, i32*, i32* nocapture) local_unnamed_addr #3 !dbg !942 {
  %5 = sext i32 %1 to i64, !dbg !960
  %6 = getelementptr inbounds i8, i8* %0, i64 %5, !dbg !960
  %7 = icmp sgt i32 %1, 0, !dbg !963
  br i1 %7, label %8, label %48, !dbg !964

; <label>:8:                                      ; preds = %4, %36
  %9 = phi i8* [ %43, %36 ], [ %0, %4 ]
  %10 = phi i32 [ %44, %36 ], [ 0, %4 ]
  %11 = load i8, i8* %9, align 1, !dbg !965, !tbaa !143
  %12 = zext i8 %11 to i32, !dbg !965
  %13 = and i8 %11, -64, !dbg !965
  switch i8 %13, label %27 [
    i8 0, label %14
    i8 64, label %18
  ], !dbg !968

; <label>:14:                                     ; preds = %8
  %15 = and i32 %12, 63, !dbg !969
  %16 = add nuw nsw i32 %15, 1, !dbg !969
  %17 = load i32, i32* %3, align 4, !dbg !972, !tbaa !408
  br label %36, !dbg !973

; <label>:18:                                     ; preds = %8
  %19 = shl nuw nsw i32 %12, 8, !dbg !974
  %20 = and i32 %19, 16128, !dbg !974
  %21 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !974
  %22 = load i8, i8* %21, align 1, !dbg !974, !tbaa !143
  %23 = zext i8 %22 to i32, !dbg !974
  %24 = or i32 %20, %23, !dbg !974
  %25 = add nuw nsw i32 %24, 1, !dbg !974
  %26 = load i32, i32* %3, align 4, !dbg !977, !tbaa !408
  br label %36, !dbg !978

; <label>:27:                                     ; preds = %8
  %28 = and i32 %12, 3, !dbg !979
  %29 = add nuw nsw i32 %28, 1, !dbg !979
  %30 = lshr i32 %12, 2, !dbg !981
  %31 = and i32 %30, 31, !dbg !981
  %32 = add nuw nsw i32 %31, 1, !dbg !981
  %33 = zext i32 %32 to i64, !dbg !983
  %34 = getelementptr inbounds i32, i32* %3, i64 %33, !dbg !983
  %35 = load i32, i32* %34, align 4, !dbg !984, !tbaa !408
  br label %36

; <label>:36:                                     ; preds = %18, %27, %14
  %37 = phi i32 [ %26, %18 ], [ %29, %27 ], [ %16, %14 ]
  %38 = phi i32 [ %25, %18 ], [ %35, %27 ], [ %17, %14 ]
  %39 = phi i32* [ %3, %18 ], [ %34, %27 ], [ %3, %14 ]
  %40 = phi i64 [ 2, %18 ], [ 1, %27 ], [ 1, %14 ]
  %41 = phi i32 [ %25, %18 ], [ %29, %27 ], [ %16, %14 ]
  %42 = add nsw i32 %38, %37, !dbg !985
  store i32 %42, i32* %39, align 4, !dbg !985, !tbaa !408
  %43 = getelementptr inbounds i8, i8* %9, i64 %40, !dbg !985
  %44 = add nsw i32 %41, %10, !dbg !986
  %45 = icmp ult i8* %43, %6, !dbg !963
  br i1 %45, label %8, label %46, !dbg !964, !llvm.loop !987

; <label>:46:                                     ; preds = %36
  %47 = icmp ne i32 %44, 16384, !dbg !989
  br label %48, !dbg !989

; <label>:48:                                     ; preds = %46, %4
  %49 = phi i1 [ true, %4 ], [ %47, %46 ]
  %50 = icmp ne i32* %2, null, !dbg !991
  %51 = and i1 %50, %49, !dbg !992
  br i1 %51, label %52, label %53, !dbg !992

; <label>:52:                                     ; preds = %48
  store i32 1, i32* %2, align 4, !dbg !993, !tbaa !408
  br label %53, !dbg !994

; <label>:53:                                     ; preds = %52, %48
  ret void, !dbg !995
}

; Function Attrs: noredzone nounwind
define dso_local void @hllRawRegHisto(i8* nocapture readonly, i32* nocapture) local_unnamed_addr #3 !dbg !996 {
  %3 = bitcast i8* %0 to i64*, !dbg !1005
  br label %4, !dbg !1008

; <label>:4:                                      ; preds = %55, %2
  %5 = phi i32 [ 0, %2 ], [ %61, %55 ]
  %6 = phi i64* [ %3, %2 ], [ %60, %55 ]
  %7 = load i64, i64* %6, align 8, !dbg !1010, !tbaa !125
  %8 = icmp eq i64 %7, 0, !dbg !1014
  br i1 %8, label %55, label %9, !dbg !1015

; <label>:9:                                      ; preds = %4
  %10 = bitcast i64* %6 to i8*, !dbg !1016
  %11 = and i64 %7, 255, !dbg !1019
  %12 = getelementptr inbounds i32, i32* %1, i64 %11, !dbg !1019
  %13 = load i32, i32* %12, align 4, !dbg !1020, !tbaa !408
  %14 = add nsw i32 %13, 1, !dbg !1020
  store i32 %14, i32* %12, align 4, !dbg !1020, !tbaa !408
  %15 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1021
  %16 = load i8, i8* %15, align 1, !dbg !1021, !tbaa !143
  %17 = zext i8 %16 to i64, !dbg !1022
  %18 = getelementptr inbounds i32, i32* %1, i64 %17, !dbg !1022
  %19 = load i32, i32* %18, align 4, !dbg !1023, !tbaa !408
  %20 = add nsw i32 %19, 1, !dbg !1023
  store i32 %20, i32* %18, align 4, !dbg !1023, !tbaa !408
  %21 = getelementptr inbounds i8, i8* %10, i64 2, !dbg !1024
  %22 = load i8, i8* %21, align 1, !dbg !1024, !tbaa !143
  %23 = zext i8 %22 to i64, !dbg !1025
  %24 = getelementptr inbounds i32, i32* %1, i64 %23, !dbg !1025
  %25 = load i32, i32* %24, align 4, !dbg !1026, !tbaa !408
  %26 = add nsw i32 %25, 1, !dbg !1026
  store i32 %26, i32* %24, align 4, !dbg !1026, !tbaa !408
  %27 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1027
  %28 = load i8, i8* %27, align 1, !dbg !1027, !tbaa !143
  %29 = zext i8 %28 to i64, !dbg !1028
  %30 = getelementptr inbounds i32, i32* %1, i64 %29, !dbg !1028
  %31 = load i32, i32* %30, align 4, !dbg !1029, !tbaa !408
  %32 = add nsw i32 %31, 1, !dbg !1029
  store i32 %32, i32* %30, align 4, !dbg !1029, !tbaa !408
  %33 = getelementptr inbounds i8, i8* %10, i64 4, !dbg !1030
  %34 = load i8, i8* %33, align 1, !dbg !1030, !tbaa !143
  %35 = zext i8 %34 to i64, !dbg !1031
  %36 = getelementptr inbounds i32, i32* %1, i64 %35, !dbg !1031
  %37 = load i32, i32* %36, align 4, !dbg !1032, !tbaa !408
  %38 = add nsw i32 %37, 1, !dbg !1032
  store i32 %38, i32* %36, align 4, !dbg !1032, !tbaa !408
  %39 = getelementptr inbounds i8, i8* %10, i64 5, !dbg !1033
  %40 = load i8, i8* %39, align 1, !dbg !1033, !tbaa !143
  %41 = zext i8 %40 to i64, !dbg !1034
  %42 = getelementptr inbounds i32, i32* %1, i64 %41, !dbg !1034
  %43 = load i32, i32* %42, align 4, !dbg !1035, !tbaa !408
  %44 = add nsw i32 %43, 1, !dbg !1035
  store i32 %44, i32* %42, align 4, !dbg !1035, !tbaa !408
  %45 = getelementptr inbounds i8, i8* %10, i64 6, !dbg !1036
  %46 = load i8, i8* %45, align 1, !dbg !1036, !tbaa !143
  %47 = zext i8 %46 to i64, !dbg !1037
  %48 = getelementptr inbounds i32, i32* %1, i64 %47, !dbg !1037
  %49 = load i32, i32* %48, align 4, !dbg !1038, !tbaa !408
  %50 = add nsw i32 %49, 1, !dbg !1038
  store i32 %50, i32* %48, align 4, !dbg !1038, !tbaa !408
  %51 = getelementptr inbounds i8, i8* %10, i64 7, !dbg !1039
  %52 = load i8, i8* %51, align 1, !dbg !1039, !tbaa !143
  %53 = zext i8 %52 to i64, !dbg !1040
  %54 = getelementptr inbounds i32, i32* %1, i64 %53, !dbg !1040
  br label %55

; <label>:55:                                     ; preds = %4, %9
  %56 = phi i32* [ %54, %9 ], [ %1, %4 ]
  %57 = phi i32 [ 1, %9 ], [ 8, %4 ]
  %58 = load i32, i32* %56, align 4, !dbg !1041, !tbaa !408
  %59 = add nsw i32 %58, %57, !dbg !1041
  store i32 %59, i32* %56, align 4, !dbg !1041, !tbaa !408
  %60 = getelementptr inbounds i64, i64* %6, i64 1, !dbg !1043
  %61 = add nuw nsw i32 %5, 1, !dbg !1044
  %62 = icmp eq i32 %61, 2048, !dbg !1045
  br i1 %62, label %63, label %4, !dbg !1008, !llvm.loop !1046

; <label>:63:                                     ; preds = %55
  ret void, !dbg !1048
}

; Function Attrs: noredzone nounwind readnone
define dso_local double @hllSigma(double) local_unnamed_addr #6 !dbg !1049 {
  %2 = fcmp oeq double %0, 1.000000e+00, !dbg !1058
  br i1 %2, label %12, label %3, !dbg !1060

; <label>:3:                                      ; preds = %1, %3
  %4 = phi double [ %7, %3 ], [ %0, %1 ]
  %5 = phi double [ %10, %3 ], [ 1.000000e+00, %1 ], !dbg !1061
  %6 = phi double [ %9, %3 ], [ %0, %1 ], !dbg !1061
  %7 = fmul double %4, %4, !dbg !1065
  %8 = fmul double %7, %5, !dbg !1067
  %9 = fadd double %6, %8, !dbg !1068
  %10 = fadd double %5, %5, !dbg !1069
  %11 = fcmp une double %6, %9, !dbg !1070
  br i1 %11, label %3, label %12, !dbg !1071, !llvm.loop !1072

; <label>:12:                                     ; preds = %3, %1
  %13 = phi double [ 0x7FF0000000000000, %1 ], [ %9, %3 ], !dbg !1075
  ret double %13, !dbg !1076
}

; Function Attrs: noredzone nounwind
define dso_local double @hllTau(double) local_unnamed_addr #3 !dbg !1077 {
  %2 = fcmp oeq double %0, 0.000000e+00, !dbg !1084
  %3 = fcmp oeq double %0, 1.000000e+00, !dbg !1086
  %4 = or i1 %2, %3, !dbg !1087
  br i1 %4, label %20, label %5, !dbg !1087

; <label>:5:                                      ; preds = %1
  %6 = fsub double 1.000000e+00, %0, !dbg !1089
  br label %7, !dbg !1091

; <label>:7:                                      ; preds = %7, %5
  %8 = phi double [ %0, %5 ], [ %11, %7 ]
  %9 = phi double [ 1.000000e+00, %5 ], [ %12, %7 ], !dbg !1092
  %10 = phi double [ %6, %5 ], [ %16, %7 ], !dbg !1092
  %11 = tail call double @sqrt(double %8) #10, !dbg !1094
  %12 = fmul double %9, 5.000000e-01, !dbg !1096
  %13 = fsub double 1.000000e+00, %11, !dbg !1097
  %14 = tail call double @pow(double %13, double 2.000000e+00) #10, !dbg !1098
  %15 = fmul double %12, %14, !dbg !1099
  %16 = fsub double %10, %15, !dbg !1100
  %17 = fcmp une double %10, %16, !dbg !1101
  br i1 %17, label %7, label %18, !dbg !1102, !llvm.loop !1103

; <label>:18:                                     ; preds = %7
  %19 = fdiv double %16, 3.000000e+00, !dbg !1105
  br label %20

; <label>:20:                                     ; preds = %1, %18
  %21 = phi double [ %19, %18 ], [ 0.000000e+00, %1 ], !dbg !1106
  ret double %21, !dbg !1107
}

; Function Attrs: noredzone
declare dso_local double @sqrt(double) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local double @pow(double, double) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local i64 @hllCount(%struct.hllhdr* readonly, i32*) local_unnamed_addr #3 !dbg !1108 {
  %3 = alloca [64 x i32], align 16
  %4 = bitcast [64 x i32]* %3 to i8*, !dbg !1125
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %4) #9, !dbg !1125
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 256, i1 false), !dbg !1126
  %5 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %0, i64 0, i32 1, !dbg !1127
  %6 = load i8, i8* %5, align 1, !dbg !1127, !tbaa !143
  switch i8 %6, label %152 [
    i8 0, label %7
    i8 1, label %10
    i8 -1, label %88
  ], !dbg !1129

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %0, i64 0, i32 4, i64 0, !dbg !1130
  %9 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0, !dbg !1132
  call void @hllDenseRegHisto(i8* nonnull %8, i32* nonnull %9) #8, !dbg !1133
  br label %153, !dbg !1134

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %0, i64 0, i32 4, i64 0, !dbg !1135
  %12 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %0, i64 0, i32 0, i64 -1, !dbg !1138
  %13 = load i8, i8* %12, align 1, !dbg !1138, !tbaa !143
  %14 = trunc i8 %13 to i3, !dbg !1141
  switch i3 %14, label %83 [
    i3 0, label %15
    i3 1, label %18
    i3 2, label %22
    i3 3, label %27
    i3 -4, label %32
  ], !dbg !1141

; <label>:15:                                     ; preds = %10
  %16 = lshr i8 %13, 3, !dbg !1142
  %17 = zext i8 %16 to i64, !dbg !1142
  br label %36, !dbg !1143

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %0, i64 0, i32 0, i64 -3, !dbg !1145
  %20 = load i8, i8* %19, align 1, !dbg !1146, !tbaa !143
  %21 = zext i8 %20 to i64, !dbg !1145
  br label %36, !dbg !1147

; <label>:22:                                     ; preds = %10
  %23 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %0, i64 0, i32 0, i64 -5, !dbg !1148
  %24 = bitcast i8* %23 to i16*, !dbg !1149
  %25 = load i16, i16* %24, align 1, !dbg !1149, !tbaa !512
  %26 = zext i16 %25 to i64, !dbg !1148
  br label %36, !dbg !1150

; <label>:27:                                     ; preds = %10
  %28 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %0, i64 0, i32 0, i64 -9, !dbg !1151
  %29 = bitcast i8* %28 to i32*, !dbg !1152
  %30 = load i32, i32* %29, align 1, !dbg !1152, !tbaa !408
  %31 = zext i32 %30 to i64, !dbg !1151
  br label %36, !dbg !1153

; <label>:32:                                     ; preds = %10
  %33 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %0, i64 0, i32 0, i64 -17, !dbg !1154
  %34 = bitcast i8* %33 to i64*, !dbg !1155
  %35 = load i64, i64* %34, align 1, !dbg !1155, !tbaa !125
  br label %36, !dbg !1156

; <label>:36:                                     ; preds = %15, %18, %22, %27, %32
  %37 = phi i64 [ %35, %32 ], [ %31, %27 ], [ %26, %22 ], [ %21, %18 ], [ %17, %15 ], !dbg !1157
  %38 = trunc i64 %37 to i32, !dbg !1158
  %39 = add i32 %38, -16, !dbg !1158
  %40 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0, !dbg !1159
  %41 = sext i32 %39 to i64, !dbg !1166
  %42 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %0, i64 0, i32 4, i64 %41, !dbg !1166
  %43 = icmp sgt i32 %39, 0, !dbg !1169
  br i1 %43, label %44, label %83, !dbg !1170

; <label>:44:                                     ; preds = %36, %74
  %45 = phi i32 [ %76, %74 ], [ 0, %36 ]
  %46 = phi i8* [ %78, %74 ], [ %11, %36 ]
  %47 = phi i32 [ %79, %74 ], [ 0, %36 ]
  %48 = load i8, i8* %46, align 1, !dbg !1171, !tbaa !143
  %49 = zext i8 %48 to i32, !dbg !1171
  %50 = and i8 %48, -64, !dbg !1171
  switch i8 %50, label %64 [
    i8 0, label %51
    i8 64, label %55
  ], !dbg !1172

; <label>:51:                                     ; preds = %44
  %52 = and i32 %49, 63, !dbg !1173
  %53 = add nuw nsw i32 %52, 1, !dbg !1173
  %54 = add nsw i32 %45, %53, !dbg !1175
  store i32 %54, i32* %40, align 16, !dbg !1175, !tbaa !408
  br label %74, !dbg !1176

; <label>:55:                                     ; preds = %44
  %56 = shl nuw nsw i32 %49, 8, !dbg !1177
  %57 = and i32 %56, 16128, !dbg !1177
  %58 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !1177
  %59 = load i8, i8* %58, align 1, !dbg !1177, !tbaa !143
  %60 = zext i8 %59 to i32, !dbg !1177
  %61 = or i32 %57, %60, !dbg !1177
  %62 = add nuw nsw i32 %61, 1, !dbg !1177
  %63 = add nsw i32 %62, %45, !dbg !1178
  store i32 %63, i32* %40, align 16, !dbg !1178, !tbaa !408
  br label %74, !dbg !1179

; <label>:64:                                     ; preds = %44
  %65 = and i32 %49, 3, !dbg !1180
  %66 = add nuw nsw i32 %65, 1, !dbg !1180
  %67 = lshr i32 %49, 2, !dbg !1181
  %68 = and i32 %67, 31, !dbg !1181
  %69 = add nuw nsw i32 %68, 1, !dbg !1181
  %70 = zext i32 %69 to i64, !dbg !1183
  %71 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %70, !dbg !1183
  %72 = load i32, i32* %71, align 4, !dbg !1184, !tbaa !408
  %73 = add nsw i32 %72, %66, !dbg !1184
  store i32 %73, i32* %71, align 4, !dbg !1184, !tbaa !408
  br label %74

; <label>:74:                                     ; preds = %64, %55, %51
  %75 = phi i64 [ 1, %64 ], [ 2, %55 ], [ 1, %51 ]
  %76 = phi i32 [ %45, %64 ], [ %63, %55 ], [ %54, %51 ]
  %77 = phi i32 [ %66, %64 ], [ %62, %55 ], [ %53, %51 ]
  %78 = getelementptr inbounds i8, i8* %46, i64 %75, !dbg !1185
  %79 = add nsw i32 %77, %47, !dbg !1186
  %80 = icmp ult i8* %78, %42, !dbg !1169
  br i1 %80, label %44, label %81, !dbg !1170, !llvm.loop !987

; <label>:81:                                     ; preds = %74
  %82 = icmp ne i32 %79, 16384, !dbg !1187
  br label %83, !dbg !1187

; <label>:83:                                     ; preds = %10, %81, %36
  %84 = phi i1 [ true, %36 ], [ %82, %81 ], [ true, %10 ]
  %85 = icmp ne i32* %1, null, !dbg !1188
  %86 = and i1 %85, %84, !dbg !1189
  br i1 %86, label %87, label %153, !dbg !1189

; <label>:87:                                     ; preds = %83
  store i32 1, i32* %1, align 4, !dbg !1190, !tbaa !408
  br label %153, !dbg !1191

; <label>:88:                                     ; preds = %2
  %89 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %0, i64 0, i32 4, i64 0, !dbg !1192
  %90 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0, !dbg !1195
  %91 = bitcast i8* %89 to i64*, !dbg !1199
  br label %92, !dbg !1202

; <label>:92:                                     ; preds = %148, %88
  %93 = phi i32 [ 0, %88 ], [ %150, %148 ]
  %94 = phi i64* [ %91, %88 ], [ %149, %148 ]
  %95 = load i64, i64* %94, align 8, !dbg !1203, !tbaa !125
  %96 = icmp eq i64 %95, 0, !dbg !1204
  br i1 %96, label %97, label %100, !dbg !1205

; <label>:97:                                     ; preds = %92
  %98 = load i32, i32* %90, align 16, !dbg !1206, !tbaa !408
  %99 = add nsw i32 %98, 8, !dbg !1206
  store i32 %99, i32* %90, align 16, !dbg !1206, !tbaa !408
  br label %148, !dbg !1207

; <label>:100:                                    ; preds = %92
  %101 = bitcast i64* %94 to i8*, !dbg !1208
  %102 = and i64 %95, 255, !dbg !1210
  %103 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %102, !dbg !1210
  %104 = load i32, i32* %103, align 4, !dbg !1211, !tbaa !408
  %105 = add nsw i32 %104, 1, !dbg !1211
  store i32 %105, i32* %103, align 4, !dbg !1211, !tbaa !408
  %106 = getelementptr inbounds i8, i8* %101, i64 1, !dbg !1212
  %107 = load i8, i8* %106, align 1, !dbg !1212, !tbaa !143
  %108 = zext i8 %107 to i64, !dbg !1213
  %109 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %108, !dbg !1213
  %110 = load i32, i32* %109, align 4, !dbg !1214, !tbaa !408
  %111 = add nsw i32 %110, 1, !dbg !1214
  store i32 %111, i32* %109, align 4, !dbg !1214, !tbaa !408
  %112 = getelementptr inbounds i8, i8* %101, i64 2, !dbg !1215
  %113 = load i8, i8* %112, align 1, !dbg !1215, !tbaa !143
  %114 = zext i8 %113 to i64, !dbg !1216
  %115 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %114, !dbg !1216
  %116 = load i32, i32* %115, align 4, !dbg !1217, !tbaa !408
  %117 = add nsw i32 %116, 1, !dbg !1217
  store i32 %117, i32* %115, align 4, !dbg !1217, !tbaa !408
  %118 = getelementptr inbounds i8, i8* %101, i64 3, !dbg !1218
  %119 = load i8, i8* %118, align 1, !dbg !1218, !tbaa !143
  %120 = zext i8 %119 to i64, !dbg !1219
  %121 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %120, !dbg !1219
  %122 = load i32, i32* %121, align 4, !dbg !1220, !tbaa !408
  %123 = add nsw i32 %122, 1, !dbg !1220
  store i32 %123, i32* %121, align 4, !dbg !1220, !tbaa !408
  %124 = getelementptr inbounds i8, i8* %101, i64 4, !dbg !1221
  %125 = load i8, i8* %124, align 1, !dbg !1221, !tbaa !143
  %126 = zext i8 %125 to i64, !dbg !1222
  %127 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %126, !dbg !1222
  %128 = load i32, i32* %127, align 4, !dbg !1223, !tbaa !408
  %129 = add nsw i32 %128, 1, !dbg !1223
  store i32 %129, i32* %127, align 4, !dbg !1223, !tbaa !408
  %130 = getelementptr inbounds i8, i8* %101, i64 5, !dbg !1224
  %131 = load i8, i8* %130, align 1, !dbg !1224, !tbaa !143
  %132 = zext i8 %131 to i64, !dbg !1225
  %133 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %132, !dbg !1225
  %134 = load i32, i32* %133, align 4, !dbg !1226, !tbaa !408
  %135 = add nsw i32 %134, 1, !dbg !1226
  store i32 %135, i32* %133, align 4, !dbg !1226, !tbaa !408
  %136 = getelementptr inbounds i8, i8* %101, i64 6, !dbg !1227
  %137 = load i8, i8* %136, align 1, !dbg !1227, !tbaa !143
  %138 = zext i8 %137 to i64, !dbg !1228
  %139 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %138, !dbg !1228
  %140 = load i32, i32* %139, align 4, !dbg !1229, !tbaa !408
  %141 = add nsw i32 %140, 1, !dbg !1229
  store i32 %141, i32* %139, align 4, !dbg !1229, !tbaa !408
  %142 = getelementptr inbounds i8, i8* %101, i64 7, !dbg !1230
  %143 = load i8, i8* %142, align 1, !dbg !1230, !tbaa !143
  %144 = zext i8 %143 to i64, !dbg !1231
  %145 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %144, !dbg !1231
  %146 = load i32, i32* %145, align 4, !dbg !1232, !tbaa !408
  %147 = add nsw i32 %146, 1, !dbg !1232
  store i32 %147, i32* %145, align 4, !dbg !1232, !tbaa !408
  br label %148

; <label>:148:                                    ; preds = %100, %97
  %149 = getelementptr inbounds i64, i64* %94, i64 1, !dbg !1233
  %150 = add nuw nsw i32 %93, 1, !dbg !1234
  %151 = icmp eq i32 %150, 2048, !dbg !1235
  br i1 %151, label %153, label %92, !dbg !1202, !llvm.loop !1046

; <label>:152:                                    ; preds = %2
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 1033, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1236
  tail call void @_exit(i32 1) #11, !dbg !1236
  unreachable, !dbg !1236

; <label>:153:                                    ; preds = %148, %87, %83, %7
  %154 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 51, !dbg !1238
  %155 = load i32, i32* %154, align 4, !dbg !1238, !tbaa !408
  %156 = sitofp i32 %155 to double, !dbg !1238
  %157 = fsub double 1.638400e+04, %156, !dbg !1239
  %158 = fmul double %157, 0x3F10000000000000, !dbg !1240
  %159 = fcmp oeq double %158, 0.000000e+00, !dbg !1243
  %160 = fcmp oeq double %158, 1.000000e+00, !dbg !1244
  %161 = or i1 %159, %160, !dbg !1245
  br i1 %161, label %178, label %162, !dbg !1245

; <label>:162:                                    ; preds = %153
  %163 = fsub double 1.000000e+00, %158, !dbg !1247
  br label %164, !dbg !1249

; <label>:164:                                    ; preds = %164, %162
  %165 = phi double [ %158, %162 ], [ %168, %164 ]
  %166 = phi double [ 1.000000e+00, %162 ], [ %169, %164 ], !dbg !1250
  %167 = phi double [ %163, %162 ], [ %173, %164 ], !dbg !1250
  %168 = tail call double @sqrt(double %165) #10, !dbg !1251
  %169 = fmul double %166, 5.000000e-01, !dbg !1253
  %170 = fsub double 1.000000e+00, %168, !dbg !1254
  %171 = tail call double @pow(double %170, double 2.000000e+00) #10, !dbg !1255
  %172 = fmul double %169, %171, !dbg !1256
  %173 = fsub double %167, %172, !dbg !1257
  %174 = fcmp une double %167, %173, !dbg !1258
  br i1 %174, label %164, label %175, !dbg !1259, !llvm.loop !1103

; <label>:175:                                    ; preds = %164
  %176 = fdiv double %173, 3.000000e+00, !dbg !1260
  %177 = fmul double %176, 1.638400e+04
  br label %178

; <label>:178:                                    ; preds = %153, %175
  %179 = phi double [ %177, %175 ], [ 0.000000e+00, %153 ]
  br label %180, !dbg !1261

; <label>:180:                                    ; preds = %180, %178
  %181 = phi i64 [ 50, %178 ], [ %212, %180 ]
  %182 = phi double [ %179, %178 ], [ %211, %180 ]
  %183 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %181, !dbg !1261
  %184 = load i32, i32* %183, align 4, !dbg !1261, !tbaa !408
  %185 = sitofp i32 %184 to double, !dbg !1261
  %186 = fadd double %182, %185, !dbg !1267
  %187 = fmul double %186, 5.000000e-01, !dbg !1268
  %188 = add nsw i64 %181, -1, !dbg !1269
  %189 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %188, !dbg !1261
  %190 = load i32, i32* %189, align 4, !dbg !1261, !tbaa !408
  %191 = sitofp i32 %190 to double, !dbg !1261
  %192 = fadd double %187, %191, !dbg !1267
  %193 = fmul double %192, 5.000000e-01, !dbg !1268
  %194 = add nsw i64 %181, -2, !dbg !1269
  %195 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %194, !dbg !1261
  %196 = load i32, i32* %195, align 4, !dbg !1261, !tbaa !408
  %197 = sitofp i32 %196 to double, !dbg !1261
  %198 = fadd double %193, %197, !dbg !1267
  %199 = fmul double %198, 5.000000e-01, !dbg !1268
  %200 = add nsw i64 %181, -3, !dbg !1269
  %201 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %200, !dbg !1261
  %202 = load i32, i32* %201, align 4, !dbg !1261, !tbaa !408
  %203 = sitofp i32 %202 to double, !dbg !1261
  %204 = fadd double %199, %203, !dbg !1267
  %205 = fmul double %204, 5.000000e-01, !dbg !1268
  %206 = add nsw i64 %181, -4, !dbg !1269
  %207 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %206, !dbg !1261
  %208 = load i32, i32* %207, align 4, !dbg !1261, !tbaa !408
  %209 = sitofp i32 %208 to double, !dbg !1261
  %210 = fadd double %205, %209, !dbg !1267
  %211 = fmul double %210, 5.000000e-01, !dbg !1268
  %212 = add nsw i64 %181, -5, !dbg !1269
  %213 = icmp ugt i64 %206, 1, !dbg !1270
  br i1 %213, label %180, label %214, !dbg !1271, !llvm.loop !1272

; <label>:214:                                    ; preds = %180
  %215 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0, !dbg !1274
  %216 = load i32, i32* %215, align 16, !dbg !1274, !tbaa !408
  %217 = sitofp i32 %216 to double, !dbg !1274
  %218 = fmul double %217, 0x3F10000000000000, !dbg !1275
  %219 = fcmp oeq double %218, 1.000000e+00, !dbg !1278
  br i1 %219, label %231, label %220, !dbg !1279

; <label>:220:                                    ; preds = %214, %220
  %221 = phi double [ %224, %220 ], [ %218, %214 ]
  %222 = phi double [ %227, %220 ], [ 1.000000e+00, %214 ], !dbg !1280
  %223 = phi double [ %226, %220 ], [ %218, %214 ], !dbg !1280
  %224 = fmul double %221, %221, !dbg !1283
  %225 = fmul double %224, %222, !dbg !1285
  %226 = fadd double %223, %225, !dbg !1286
  %227 = fadd double %222, %222, !dbg !1287
  %228 = fcmp une double %223, %226, !dbg !1288
  br i1 %228, label %220, label %229, !dbg !1289, !llvm.loop !1072

; <label>:229:                                    ; preds = %220
  %230 = fmul double %226, 1.638400e+04, !dbg !1290
  br label %231, !dbg !1290

; <label>:231:                                    ; preds = %229, %214
  %232 = phi double [ 0x7FF0000000000000, %214 ], [ %230, %229 ]
  %233 = fadd double %211, %232, !dbg !1291
  %234 = fdiv double 0x41A71547652B82FE, %233, !dbg !1292
  %235 = fpext double %234 to x86_fp80, !dbg !1293
  %236 = tail call i64 @llroundl(x86_fp80 %235) #10, !dbg !1294
  %237 = sitofp i64 %236 to double, !dbg !1294
  %238 = fptoui double %237 to i64, !dbg !1296
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %4) #9, !dbg !1297
  ret i64 %238, !dbg !1298
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #2

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i64 @llroundl(x86_fp80) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local i32 @hllAdd(%struct.redisObject* nocapture, i8*, i64) local_unnamed_addr #3 !dbg !1299 {
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1308
  %5 = bitcast i8** %4 to %struct.hllhdr**, !dbg !1308
  %6 = load %struct.hllhdr*, %struct.hllhdr** %5, align 8, !dbg !1308, !tbaa !483
  %7 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %6, i64 0, i32 1, !dbg !1310
  %8 = load i8, i8* %7, align 1, !dbg !1310, !tbaa !143
  switch i8 %8, label %82 [
    i8 0, label %9
    i8 1, label %62
  ], !dbg !1311

; <label>:9:                                      ; preds = %3
  %10 = trunc i64 %2 to i32, !dbg !1320
  %11 = tail call i64 @MurmurHash64A(i8* %1, i32 %10, i32 -1379386599) #10, !dbg !1321
  %12 = lshr i64 %11, 14, !dbg !1324
  %13 = or i64 %12, 1125899906842624, !dbg !1325
  %14 = and i64 %11, 16384, !dbg !1328
  %15 = icmp eq i64 %14, 0, !dbg !1329
  br i1 %15, label %16, label %25, !dbg !1330

; <label>:16:                                     ; preds = %9, %16
  %17 = phi i32 [ %19, %16 ], [ 1, %9 ]
  %18 = phi i64 [ %20, %16 ], [ 1, %9 ]
  %19 = add nuw nsw i32 %17, 1, !dbg !1331
  %20 = shl i64 %18, 1, !dbg !1332
  %21 = and i64 %20, %13, !dbg !1328
  %22 = icmp eq i64 %21, 0, !dbg !1329
  br i1 %22, label %16, label %23, !dbg !1330, !llvm.loop !218

; <label>:23:                                     ; preds = %16
  %24 = and i32 %19, 255, !dbg !1333
  br label %25, !dbg !1333

; <label>:25:                                     ; preds = %23, %9
  %26 = phi i32 [ 1, %9 ], [ %24, %23 ]
  %27 = and i64 %11, 16383, !dbg !1333
  %28 = mul nuw nsw i64 %27, 6, !dbg !1338
  %29 = lshr i64 %28, 3, !dbg !1338
  %30 = and i64 %28, 6, !dbg !1338
  %31 = sub nsw i64 8, %30, !dbg !1338
  %32 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %6, i64 0, i32 4, i64 %29, !dbg !1338
  %33 = load i8, i8* %32, align 1, !dbg !1338, !tbaa !143
  %34 = zext i8 %33 to i64, !dbg !1338
  %35 = add nuw nsw i64 %29, 1, !dbg !1338
  %36 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %6, i64 0, i32 4, i64 %35, !dbg !1338
  %37 = load i8, i8* %36, align 1, !dbg !1338, !tbaa !143
  %38 = zext i8 %37 to i64, !dbg !1338
  %39 = lshr i64 %34, %30, !dbg !1338
  %40 = shl i64 %38, %31, !dbg !1338
  %41 = or i64 %40, %39, !dbg !1338
  %42 = trunc i64 %41 to i32, !dbg !1338
  %43 = and i32 %42, 63, !dbg !1338
  %44 = icmp ult i32 %43, %26, !dbg !1339
  br i1 %44, label %45, label %82, !dbg !1340

; <label>:45:                                     ; preds = %25
  %46 = zext i32 %26 to i64, !dbg !1341
  %47 = trunc i64 %30 to i32, !dbg !1341
  %48 = shl i32 63, %47, !dbg !1341
  %49 = trunc i32 %48 to i8, !dbg !1341
  %50 = xor i8 %49, -1, !dbg !1341
  %51 = and i8 %33, %50, !dbg !1341
  %52 = shl i64 %46, %30, !dbg !1341
  %53 = trunc i64 %52 to i8, !dbg !1341
  %54 = or i8 %51, %53, !dbg !1341
  store i8 %54, i8* %32, align 1, !dbg !1341, !tbaa !143
  %55 = trunc i64 %31 to i32, !dbg !1341
  %56 = ashr i32 -64, %55, !dbg !1341
  %57 = trunc i32 %56 to i8, !dbg !1341
  %58 = and i8 %37, %57, !dbg !1341
  %59 = lshr i64 %46, %31, !dbg !1341
  %60 = trunc i64 %59 to i8, !dbg !1341
  %61 = or i8 %58, %60, !dbg !1341
  store i8 %61, i8* %36, align 1, !dbg !1341, !tbaa !143
  br label %82, !dbg !1342

; <label>:62:                                     ; preds = %3
  %63 = trunc i64 %2 to i32, !dbg !1350
  %64 = tail call i64 @MurmurHash64A(i8* %1, i32 %63, i32 -1379386599) #10, !dbg !1351
  %65 = lshr i64 %64, 14, !dbg !1354
  %66 = or i64 %65, 1125899906842624, !dbg !1355
  %67 = and i64 %64, 16384, !dbg !1358
  %68 = icmp eq i64 %67, 0, !dbg !1359
  br i1 %68, label %69, label %78, !dbg !1360

; <label>:69:                                     ; preds = %62, %69
  %70 = phi i32 [ %72, %69 ], [ 1, %62 ]
  %71 = phi i64 [ %73, %69 ], [ 1, %62 ]
  %72 = add nuw nsw i32 %70, 1, !dbg !1361
  %73 = shl i64 %71, 1, !dbg !1362
  %74 = and i64 %73, %66, !dbg !1358
  %75 = icmp eq i64 %74, 0, !dbg !1359
  br i1 %75, label %69, label %76, !dbg !1360, !llvm.loop !218

; <label>:76:                                     ; preds = %69
  %77 = trunc i32 %72 to i8, !dbg !1363
  br label %78, !dbg !1363

; <label>:78:                                     ; preds = %62, %76
  %79 = phi i8 [ 1, %62 ], [ %77, %76 ]
  %80 = and i64 %64, 16383, !dbg !1363
  %81 = tail call i32 @hllSparseSet(%struct.redisObject* %0, i64 %80, i8 zeroext %79) #10, !dbg !1366
  br label %82, !dbg !1367

; <label>:82:                                     ; preds = %45, %25, %3, %78
  %83 = phi i32 [ %81, %78 ], [ -1, %3 ], [ 1, %45 ], [ 0, %25 ], !dbg !1368
  ret i32 %83, !dbg !1369
}

; Function Attrs: noredzone nounwind
define dso_local i32 @hllMerge(i8* nocapture, %struct.redisObject* nocapture readonly) local_unnamed_addr #3 !dbg !1370 {
  %3 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !1398
  %4 = load i8*, i8** %3, align 8, !dbg !1398, !tbaa !483
  %5 = getelementptr inbounds i8, i8* %4, i64 4, !dbg !1400
  %6 = load i8, i8* %5, align 1, !dbg !1400, !tbaa !143
  %7 = icmp eq i8 %6, 0, !dbg !1401
  br i1 %7, label %8, label %38, !dbg !1402

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds i8, i8* %4, i64 16
  br label %10, !dbg !1404

; <label>:10:                                     ; preds = %35, %8
  %11 = phi i64 [ 0, %8 ], [ %36, %35 ]
  %12 = trunc i64 %11 to i32, !dbg !1405
  %13 = mul i32 %12, 6, !dbg !1405
  %14 = lshr i32 %13, 3, !dbg !1405
  %15 = zext i32 %14 to i64, !dbg !1405
  %16 = and i32 %13, 6, !dbg !1405
  %17 = zext i32 %16 to i64, !dbg !1405
  %18 = sub nsw i64 8, %17, !dbg !1405
  %19 = getelementptr inbounds i8, i8* %9, i64 %15, !dbg !1405
  %20 = load i8, i8* %19, align 1, !dbg !1405, !tbaa !143
  %21 = zext i8 %20 to i64, !dbg !1405
  %22 = add nuw nsw i64 %15, 1, !dbg !1405
  %23 = getelementptr inbounds i8, i8* %9, i64 %22, !dbg !1405
  %24 = load i8, i8* %23, align 1, !dbg !1405, !tbaa !143
  %25 = zext i8 %24 to i64, !dbg !1405
  %26 = lshr i64 %21, %17, !dbg !1405
  %27 = shl i64 %25, %18, !dbg !1405
  %28 = or i64 %27, %26, !dbg !1405
  %29 = trunc i64 %28 to i8, !dbg !1405
  %30 = and i8 %29, 63, !dbg !1405
  %31 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !1407
  %32 = load i8, i8* %31, align 1, !dbg !1407, !tbaa !143
  %33 = icmp ugt i8 %30, %32, !dbg !1409
  br i1 %33, label %34, label %35, !dbg !1410

; <label>:34:                                     ; preds = %10
  store i8 %30, i8* %31, align 1, !dbg !1411, !tbaa !143
  br label %35, !dbg !1412

; <label>:35:                                     ; preds = %10, %34
  %36 = add nuw nsw i64 %11, 1, !dbg !1413
  %37 = icmp eq i64 %36, 16384, !dbg !1414
  br i1 %37, label %118, label %10, !dbg !1404, !llvm.loop !1415

; <label>:38:                                     ; preds = %2
  %39 = getelementptr inbounds i8, i8* %4, i64 -1, !dbg !1420
  %40 = load i8, i8* %39, align 1, !dbg !1420, !tbaa !143
  %41 = trunc i8 %40 to i3, !dbg !1422
  switch i3 %41, label %119 [
    i3 0, label %42
    i3 1, label %45
    i3 2, label %49
    i3 3, label %54
    i3 -4, label %59
  ], !dbg !1422

; <label>:42:                                     ; preds = %38
  %43 = lshr i8 %40, 3, !dbg !1423
  %44 = zext i8 %43 to i64, !dbg !1423
  br label %63, !dbg !1424

; <label>:45:                                     ; preds = %38
  %46 = getelementptr inbounds i8, i8* %4, i64 -3, !dbg !1425
  %47 = load i8, i8* %46, align 1, !dbg !1426, !tbaa !143
  %48 = zext i8 %47 to i64, !dbg !1425
  br label %63, !dbg !1427

; <label>:49:                                     ; preds = %38
  %50 = getelementptr inbounds i8, i8* %4, i64 -5, !dbg !1428
  %51 = bitcast i8* %50 to i16*, !dbg !1429
  %52 = load i16, i16* %51, align 1, !dbg !1429, !tbaa !512
  %53 = zext i16 %52 to i64, !dbg !1428
  br label %63, !dbg !1430

; <label>:54:                                     ; preds = %38
  %55 = getelementptr inbounds i8, i8* %4, i64 -9, !dbg !1431
  %56 = bitcast i8* %55 to i32*, !dbg !1432
  %57 = load i32, i32* %56, align 1, !dbg !1432, !tbaa !408
  %58 = zext i32 %57 to i64, !dbg !1431
  br label %63, !dbg !1433

; <label>:59:                                     ; preds = %38
  %60 = getelementptr inbounds i8, i8* %4, i64 -17, !dbg !1434
  %61 = bitcast i8* %60 to i64*, !dbg !1435
  %62 = load i64, i64* %61, align 1, !dbg !1435, !tbaa !125
  br label %63, !dbg !1436

; <label>:63:                                     ; preds = %42, %45, %49, %54, %59
  %64 = phi i64 [ %62, %59 ], [ %58, %54 ], [ %53, %49 ], [ %48, %45 ], [ %44, %42 ], !dbg !1437
  %65 = getelementptr inbounds i8, i8* %4, i64 %64, !dbg !1438
  %66 = icmp sgt i64 %64, 16, !dbg !1440
  br i1 %66, label %67, label %119, !dbg !1441

; <label>:67:                                     ; preds = %63
  %68 = getelementptr inbounds i8, i8* %4, i64 16, !dbg !1442
  br label %69, !dbg !1443

; <label>:69:                                     ; preds = %67, %110
  %70 = phi i32 [ %112, %110 ], [ 0, %67 ]
  %71 = phi i8* [ %113, %110 ], [ %68, %67 ]
  %72 = load i8, i8* %71, align 1, !dbg !1443, !tbaa !143
  %73 = zext i8 %72 to i32, !dbg !1443
  %74 = and i8 %72, -64, !dbg !1443
  switch i8 %74, label %88 [
    i8 0, label %75
    i8 64, label %79
  ], !dbg !1446

; <label>:75:                                     ; preds = %69
  %76 = and i32 %73, 63, !dbg !1447
  %77 = add i32 %70, 1, !dbg !1447
  %78 = add i32 %77, %76, !dbg !1449
  br label %110, !dbg !1450

; <label>:79:                                     ; preds = %69
  %80 = shl nuw nsw i32 %73, 8, !dbg !1451
  %81 = and i32 %80, 16128, !dbg !1451
  %82 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !1451
  %83 = load i8, i8* %82, align 1, !dbg !1451, !tbaa !143
  %84 = zext i8 %83 to i32, !dbg !1451
  %85 = or i32 %81, %84, !dbg !1451
  %86 = add i32 %70, 1, !dbg !1451
  %87 = add i32 %86, %85, !dbg !1454
  br label %110, !dbg !1455

; <label>:88:                                     ; preds = %69
  %89 = and i32 %73, 3, !dbg !1456
  %90 = add nuw nsw i32 %89, 1, !dbg !1456
  %91 = zext i32 %90 to i64, !dbg !1456
  %92 = lshr i32 %73, 2, !dbg !1459
  %93 = and i32 %92, 31, !dbg !1459
  %94 = add nuw nsw i32 %93, 1, !dbg !1459
  %95 = zext i32 %94 to i64, !dbg !1459
  %96 = sext i32 %70 to i64, !dbg !1461
  %97 = add nsw i64 %91, %96, !dbg !1463
  %98 = icmp sgt i64 %97, 16384, !dbg !1464
  br i1 %98, label %115, label %99, !dbg !1465

; <label>:99:                                     ; preds = %88
  %100 = trunc i32 %94 to i8
  %101 = getelementptr inbounds i8, i8* %0, i64 %96, !dbg !1466
  %102 = load i8, i8* %101, align 1, !dbg !1466, !tbaa !143
  %103 = zext i8 %102 to i64, !dbg !1466
  %104 = icmp ugt i64 %95, %103, !dbg !1469
  br i1 %104, label %105, label %106, !dbg !1470

; <label>:105:                                    ; preds = %99
  store i8 %100, i8* %101, align 1, !dbg !1471, !tbaa !143
  br label %106, !dbg !1472

; <label>:106:                                    ; preds = %105, %99
  %107 = icmp eq i32 %89, 0, !dbg !1473
  br i1 %107, label %108, label %121, !dbg !1473, !llvm.loop !1474

; <label>:108:                                    ; preds = %139, %145, %137, %128, %106
  %109 = add i32 %70, %90, !dbg !1473
  br label %110

; <label>:110:                                    ; preds = %79, %108, %75
  %111 = phi i64 [ 2, %79 ], [ 1, %108 ], [ 1, %75 ]
  %112 = phi i32 [ %87, %79 ], [ %109, %108 ], [ %78, %75 ], !dbg !1476
  %113 = getelementptr inbounds i8, i8* %71, i64 %111, !dbg !1477
  %114 = icmp ult i8* %113, %65, !dbg !1440
  br i1 %114, label %69, label %115, !dbg !1441, !llvm.loop !1478

; <label>:115:                                    ; preds = %110, %88
  %116 = phi i32 [ %112, %110 ], [ %70, %88 ], !dbg !1477
  %117 = icmp eq i32 %116, 16384, !dbg !1480
  br i1 %117, label %118, label %119

; <label>:118:                                    ; preds = %35, %115
  br label %119, !dbg !1482

; <label>:119:                                    ; preds = %38, %63, %115, %118
  %120 = phi i32 [ 0, %118 ], [ -1, %115 ], [ -1, %63 ], [ -1, %38 ], !dbg !1483
  ret i32 %120, !dbg !1484

; <label>:121:                                    ; preds = %106
  %122 = add nsw i64 %96, 1, !dbg !1485
  %123 = getelementptr inbounds i8, i8* %0, i64 %122, !dbg !1466
  %124 = load i8, i8* %123, align 1, !dbg !1466, !tbaa !143
  %125 = zext i8 %124 to i64, !dbg !1466
  %126 = icmp ugt i64 %95, %125, !dbg !1469
  br i1 %126, label %127, label %128, !dbg !1470

; <label>:127:                                    ; preds = %121
  store i8 %100, i8* %123, align 1, !dbg !1471, !tbaa !143
  br label %128, !dbg !1472

; <label>:128:                                    ; preds = %127, %121
  %129 = icmp eq i32 %90, 2, !dbg !1473
  br i1 %129, label %108, label %130, !dbg !1473, !llvm.loop !1474

; <label>:130:                                    ; preds = %128
  %131 = add nsw i64 %96, 2, !dbg !1485
  %132 = getelementptr inbounds i8, i8* %0, i64 %131, !dbg !1466
  %133 = load i8, i8* %132, align 1, !dbg !1466, !tbaa !143
  %134 = zext i8 %133 to i64, !dbg !1466
  %135 = icmp ugt i64 %95, %134, !dbg !1469
  br i1 %135, label %136, label %137, !dbg !1470

; <label>:136:                                    ; preds = %130
  store i8 %100, i8* %132, align 1, !dbg !1471, !tbaa !143
  br label %137, !dbg !1472

; <label>:137:                                    ; preds = %136, %130
  %138 = icmp eq i32 %90, 3, !dbg !1473
  br i1 %138, label %108, label %139, !dbg !1473, !llvm.loop !1474

; <label>:139:                                    ; preds = %137
  %140 = add nsw i64 %96, 3, !dbg !1485
  %141 = getelementptr inbounds i8, i8* %0, i64 %140, !dbg !1466
  %142 = load i8, i8* %141, align 1, !dbg !1466, !tbaa !143
  %143 = zext i8 %142 to i64, !dbg !1466
  %144 = icmp ugt i64 %95, %143, !dbg !1469
  br i1 %144, label %145, label %108, !dbg !1470

; <label>:145:                                    ; preds = %139
  store i8 %100, i8* %141, align 1, !dbg !1471, !tbaa !143
  br label %108, !dbg !1472
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createHLLObject() local_unnamed_addr #3 !dbg !1486 {
  %1 = tail call i8* @sdsnewlen(i8* null, i64 18) #10, !dbg !1502
  %2 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1504
  store i8 127, i8* %2, align 1, !dbg !1507, !tbaa !143
  %3 = getelementptr inbounds i8, i8* %1, i64 17, !dbg !1507
  store i8 -1, i8* %3, align 1, !dbg !1507, !tbaa !143
  %4 = tail call %struct.redisObject* @createObject(i32 0, i8* %1) #10, !dbg !1508
  %5 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %4, i64 0, i32 2, !dbg !1510
  %6 = bitcast i8** %5 to %struct.hllhdr**, !dbg !1510
  %7 = load %struct.hllhdr*, %struct.hllhdr** %6, align 8, !dbg !1510, !tbaa !483
  %8 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %7, i64 0, i32 0, i64 0, !dbg !1512
  %9 = tail call i8* @memcpy(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4) #10, !dbg !1513
  %10 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %7, i64 0, i32 1, !dbg !1514
  store i8 1, i8* %10, align 1, !dbg !1515, !tbaa !143
  ret %struct.redisObject* %4, !dbg !1516
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createObject(i32, i8*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local i32 @isHLLObjectOrReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #3 !dbg !1517 {
  %3 = tail call i32 @checkType(%struct.client* %0, %struct.redisObject* %1, i32 0) #10, !dbg !1746
  %4 = icmp eq i32 %3, 0, !dbg !1746
  br i1 %4, label %5, label %43, !dbg !1748

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !1749
  %7 = load i32, i32* %6, align 8, !dbg !1749
  %8 = lshr i32 %7, 4, !dbg !1749
  %9 = trunc i32 %8 to i4, !dbg !1749
  switch i4 %9, label %41 [
    i4 0, label %10
    i4 -8, label %10
  ], !dbg !1749

; <label>:10:                                     ; preds = %5, %5
  %11 = tail call i64 @stringObjectLen(%struct.redisObject* nonnull %1) #10, !dbg !1751
  %12 = icmp ult i64 %11, 16, !dbg !1753
  br i1 %12, label %41, label %13, !dbg !1754

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !1755
  %15 = bitcast i8** %14 to %struct.hllhdr**, !dbg !1755
  %16 = load %struct.hllhdr*, %struct.hllhdr** %15, align 8, !dbg !1755, !tbaa !483
  %17 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %16, i64 0, i32 0, i64 0, !dbg !1757
  %18 = load i8, i8* %17, align 1, !dbg !1757, !tbaa !143
  %19 = icmp eq i8 %18, 72, !dbg !1759
  br i1 %19, label %20, label %41, !dbg !1760

; <label>:20:                                     ; preds = %13
  %21 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %16, i64 0, i32 0, i64 1, !dbg !1761
  %22 = load i8, i8* %21, align 1, !dbg !1761, !tbaa !143
  %23 = icmp eq i8 %22, 89, !dbg !1762
  br i1 %23, label %24, label %41, !dbg !1763

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %16, i64 0, i32 0, i64 2, !dbg !1764
  %26 = load i8, i8* %25, align 1, !dbg !1764, !tbaa !143
  %27 = icmp eq i8 %26, 76, !dbg !1765
  br i1 %27, label %28, label %41, !dbg !1766

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %16, i64 0, i32 0, i64 3, !dbg !1767
  %30 = load i8, i8* %29, align 1, !dbg !1767, !tbaa !143
  %31 = icmp eq i8 %30, 76, !dbg !1768
  br i1 %31, label %32, label %41, !dbg !1769

; <label>:32:                                     ; preds = %28
  %33 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %16, i64 0, i32 1, !dbg !1770
  %34 = load i8, i8* %33, align 1, !dbg !1770, !tbaa !143
  %35 = icmp ugt i8 %34, 1, !dbg !1772
  br i1 %35, label %41, label %36, !dbg !1773

; <label>:36:                                     ; preds = %32
  %37 = icmp eq i8 %34, 0, !dbg !1774
  br i1 %37, label %38, label %43, !dbg !1776

; <label>:38:                                     ; preds = %36
  %39 = tail call i64 @stringObjectLen(%struct.redisObject* nonnull %1) #10, !dbg !1777
  %40 = icmp eq i64 %39, 12304, !dbg !1778
  br i1 %40, label %43, label %41, !dbg !1779

; <label>:41:                                     ; preds = %5, %38, %28, %24, %20, %13, %32, %10
  %42 = tail call i8* @sdsnew(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !1780
  tail call void @addReplySds(%struct.client* %0, i8* %42) #10, !dbg !1781
  br label %43, !dbg !1782

; <label>:43:                                     ; preds = %36, %38, %2, %41
  %44 = phi i32 [ -1, %41 ], [ -1, %2 ], [ 0, %38 ], [ 0, %36 ], !dbg !1783
  ret i32 %44, !dbg !1784
}

; Function Attrs: noredzone
declare dso_local i32 @checkType(%struct.client*, %struct.redisObject*, i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i64 @stringObjectLen(%struct.redisObject*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @addReplySds(%struct.client*, i8*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @sdsnew(i8*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @pfaddCommand(%struct.client*) local_unnamed_addr #3 !dbg !1785 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1797
  %3 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1797, !tbaa !1798
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1802
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1802, !tbaa !1803
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !1804
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1804, !tbaa !1805
  %8 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %3, %struct.redisObject* %7) #10, !dbg !1806
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !1809
  br i1 %9, label %10, label %25, !dbg !1811

; <label>:10:                                     ; preds = %1
  %11 = tail call i8* @sdsnewlen(i8* null, i64 18) #10, !dbg !1816
  %12 = getelementptr inbounds i8, i8* %11, i64 16, !dbg !1818
  store i8 127, i8* %12, align 1, !dbg !1821, !tbaa !143
  %13 = getelementptr inbounds i8, i8* %11, i64 17, !dbg !1821
  store i8 -1, i8* %13, align 1, !dbg !1821, !tbaa !143
  %14 = tail call %struct.redisObject* @createObject(i32 0, i8* %11) #10, !dbg !1822
  %15 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %14, i64 0, i32 2, !dbg !1824
  %16 = bitcast i8** %15 to %struct.hllhdr**, !dbg !1824
  %17 = load %struct.hllhdr*, %struct.hllhdr** %16, align 8, !dbg !1824, !tbaa !483
  %18 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %17, i64 0, i32 0, i64 0, !dbg !1826
  %19 = tail call i8* @memcpy(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4) #10, !dbg !1827
  %20 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %17, i64 0, i32 1, !dbg !1828
  store i8 1, i8* %20, align 1, !dbg !1829, !tbaa !143
  %21 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1830, !tbaa !1798
  %22 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1831, !tbaa !1803
  %23 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %22, i64 1, !dbg !1832
  %24 = load %struct.redisObject*, %struct.redisObject** %23, align 8, !dbg !1832, !tbaa !1805
  tail call void @dbAdd(%struct.redisDb* %21, %struct.redisObject* %24, %struct.redisObject* %14) #10, !dbg !1833
  br label %34, !dbg !1834

; <label>:25:                                     ; preds = %1
  %26 = tail call i32 @isHLLObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* nonnull %8) #8, !dbg !1835
  %27 = icmp eq i32 %26, 0, !dbg !1838
  br i1 %27, label %28, label %111, !dbg !1839

; <label>:28:                                     ; preds = %25
  %29 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1840, !tbaa !1798
  %30 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1841, !tbaa !1803
  %31 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %30, i64 1, !dbg !1842
  %32 = load %struct.redisObject*, %struct.redisObject** %31, align 8, !dbg !1842, !tbaa !1805
  %33 = tail call %struct.redisObject* @dbUnshareStringValue(%struct.redisDb* %29, %struct.redisObject* %32, %struct.redisObject* nonnull %8) #10, !dbg !1843
  br label %34

; <label>:34:                                     ; preds = %28, %10
  %35 = phi i32 [ 1, %10 ], [ 0, %28 ], !dbg !1844
  %36 = phi %struct.redisObject* [ %14, %10 ], [ %33, %28 ], !dbg !1845
  %37 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1847
  %38 = load i32, i32* %37, align 8, !dbg !1847, !tbaa !1848
  %39 = icmp sgt i32 %38, 2, !dbg !1849
  br i1 %39, label %40, label %85, !dbg !1850

; <label>:40:                                     ; preds = %34, %79
  %41 = phi i64 [ %81, %79 ], [ 2, %34 ]
  %42 = phi i32 [ %80, %79 ], [ %35, %34 ]
  %43 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1851, !tbaa !1803
  %44 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %43, i64 %41, !dbg !1852
  %45 = load %struct.redisObject*, %struct.redisObject** %44, align 8, !dbg !1852, !tbaa !1805
  %46 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %45, i64 0, i32 2, !dbg !1853
  %47 = load i8*, i8** %46, align 8, !dbg !1853, !tbaa !483
  %48 = getelementptr inbounds i8, i8* %47, i64 -1, !dbg !1856
  %49 = load i8, i8* %48, align 1, !dbg !1856, !tbaa !143
  %50 = trunc i8 %49 to i3, !dbg !1858
  switch i3 %50, label %72 [
    i3 0, label %51
    i3 1, label %54
    i3 2, label %58
    i3 3, label %63
    i3 -4, label %68
  ], !dbg !1858

; <label>:51:                                     ; preds = %40
  %52 = lshr i8 %49, 3, !dbg !1859
  %53 = zext i8 %52 to i64, !dbg !1859
  br label %72, !dbg !1860

; <label>:54:                                     ; preds = %40
  %55 = getelementptr inbounds i8, i8* %47, i64 -3, !dbg !1861
  %56 = load i8, i8* %55, align 1, !dbg !1862, !tbaa !143
  %57 = zext i8 %56 to i64, !dbg !1861
  br label %72, !dbg !1863

; <label>:58:                                     ; preds = %40
  %59 = getelementptr inbounds i8, i8* %47, i64 -5, !dbg !1864
  %60 = bitcast i8* %59 to i16*, !dbg !1865
  %61 = load i16, i16* %60, align 1, !dbg !1865, !tbaa !512
  %62 = zext i16 %61 to i64, !dbg !1864
  br label %72, !dbg !1866

; <label>:63:                                     ; preds = %40
  %64 = getelementptr inbounds i8, i8* %47, i64 -9, !dbg !1867
  %65 = bitcast i8* %64 to i32*, !dbg !1868
  %66 = load i32, i32* %65, align 1, !dbg !1868, !tbaa !408
  %67 = zext i32 %66 to i64, !dbg !1867
  br label %72, !dbg !1869

; <label>:68:                                     ; preds = %40
  %69 = getelementptr inbounds i8, i8* %47, i64 -17, !dbg !1870
  %70 = bitcast i8* %69 to i64*, !dbg !1871
  %71 = load i64, i64* %70, align 1, !dbg !1871, !tbaa !125
  br label %72, !dbg !1872

; <label>:72:                                     ; preds = %40, %51, %54, %58, %63, %68
  %73 = phi i64 [ %71, %68 ], [ %67, %63 ], [ %62, %58 ], [ %57, %54 ], [ %53, %51 ], [ 0, %40 ], !dbg !1873
  %74 = tail call i32 @hllAdd(%struct.redisObject* %36, i8* %47, i64 %73) #8, !dbg !1874
  switch i32 %74, label %79 [
    i32 1, label %75
    i32 -1, label %77
  ], !dbg !1876

; <label>:75:                                     ; preds = %72
  %76 = add nsw i32 %42, 1, !dbg !1877
  br label %79, !dbg !1879

; <label>:77:                                     ; preds = %72
  %78 = tail call i8* @sdsnew(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !1880
  tail call void @addReplySds(%struct.client* nonnull %0, i8* %78) #10, !dbg !1881
  br label %111

; <label>:79:                                     ; preds = %72, %75
  %80 = phi i32 [ %76, %75 ], [ %42, %72 ]
  %81 = add nuw nsw i64 %41, 1, !dbg !1882
  %82 = load i32, i32* %37, align 8, !dbg !1847, !tbaa !1848
  %83 = sext i32 %82 to i64, !dbg !1849
  %84 = icmp slt i64 %81, %83, !dbg !1849
  br i1 %84, label %40, label %85, !dbg !1850, !llvm.loop !1883

; <label>:85:                                     ; preds = %79, %34
  %86 = phi i32 [ %35, %34 ], [ %80, %79 ], !dbg !1885
  %87 = icmp ne i32 %86, 0, !dbg !1886
  br i1 %87, label %88, label %107, !dbg !1888

; <label>:88:                                     ; preds = %85
  %89 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %36, i64 0, i32 2, !dbg !1889
  %90 = bitcast i8** %89 to %struct.hllhdr**, !dbg !1889
  %91 = load %struct.hllhdr*, %struct.hllhdr** %90, align 8, !dbg !1889, !tbaa !483
  %92 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1891, !tbaa !1798
  %93 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1893, !tbaa !1803
  %94 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %93, i64 1, !dbg !1894
  %95 = load %struct.redisObject*, %struct.redisObject** %94, align 8, !dbg !1894, !tbaa !1805
  tail call void @signalModifiedKey(%struct.redisDb* %92, %struct.redisObject* %95) #10, !dbg !1895
  %96 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1896, !tbaa !1803
  %97 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %96, i64 1, !dbg !1897
  %98 = load %struct.redisObject*, %struct.redisObject** %97, align 8, !dbg !1897, !tbaa !1805
  %99 = load %struct.redisDb*, %struct.redisDb** %2, align 8, !dbg !1898, !tbaa !1798
  %100 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %99, i64 0, i32 5, !dbg !1899
  %101 = load i32, i32* %100, align 8, !dbg !1899, !tbaa !1900
  tail call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), %struct.redisObject* %98, i32 %101) #10, !dbg !1902
  %102 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1903, !tbaa !1904
  %103 = add nsw i64 %102, 1, !dbg !1903
  store i64 %103, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1903, !tbaa !1904
  %104 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %91, i64 0, i32 3, i64 7, !dbg !1905
  %105 = load i8, i8* %104, align 1, !dbg !1905, !tbaa !143
  %106 = or i8 %105, -128, !dbg !1905
  store i8 %106, i8* %104, align 1, !dbg !1905, !tbaa !143
  br label %107, !dbg !1906

; <label>:107:                                    ; preds = %88, %85
  %108 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !1907
  %109 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1908
  %110 = select i1 %87, %struct.redisObject* %108, %struct.redisObject* %109, !dbg !1909
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %110) #10, !dbg !1910
  br label %111, !dbg !1911

; <label>:111:                                    ; preds = %77, %25, %107
  ret void, !dbg !1911
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyWrite(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @dbAdd(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @dbUnshareStringValue(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @signalModifiedKey(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @notifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @pfcountCommand(%struct.client*) local_unnamed_addr #3 !dbg !1912 {
  %2 = alloca [16400 x i8], align 16
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1936
  %5 = load i32, i32* %4, align 8, !dbg !1936, !tbaa !1848
  %6 = icmp sgt i32 %5, 2, !dbg !1937
  br i1 %6, label %7, label %42, !dbg !1938

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds [16400 x i8], [16400 x i8]* %2, i64 0, i64 0, !dbg !1939
  call void @llvm.lifetime.start.p0i8(i64 16400, i8* nonnull %8) #9, !dbg !1939
  %9 = call i8* @memset(i8* nonnull %8, i32 0, i64 16400) #10, !dbg !1941
  %10 = bitcast [16400 x i8]* %2 to %struct.hllhdr*, !dbg !1942
  %11 = getelementptr inbounds [16400 x i8], [16400 x i8]* %2, i64 0, i64 4, !dbg !1944
  store i8 -1, i8* %11, align 4, !dbg !1945, !tbaa !143
  %12 = getelementptr inbounds [16400 x i8], [16400 x i8]* %2, i64 0, i64 16, !dbg !1946
  %13 = load i32, i32* %4, align 8, !dbg !1949, !tbaa !1848
  %14 = icmp sgt i32 %13, 1, !dbg !1950
  br i1 %14, label %15, label %39, !dbg !1951

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %17 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %18, !dbg !1951

; <label>:18:                                     ; preds = %15, %34
  %19 = phi i64 [ 1, %15 ], [ %35, %34 ]
  %20 = load %struct.redisDb*, %struct.redisDb** %16, align 8, !dbg !1952, !tbaa !1798
  %21 = load %struct.redisObject**, %struct.redisObject*** %17, align 8, !dbg !1953, !tbaa !1803
  %22 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %21, i64 %19, !dbg !1954
  %23 = load %struct.redisObject*, %struct.redisObject** %22, align 8, !dbg !1954, !tbaa !1805
  %24 = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %20, %struct.redisObject* %23) #10, !dbg !1955
  %25 = icmp eq %struct.redisObject* %24, null, !dbg !1957
  br i1 %25, label %34, label %26, !dbg !1959

; <label>:26:                                     ; preds = %18
  %27 = call i32 @isHLLObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* nonnull %24) #8, !dbg !1960
  %28 = icmp eq i32 %27, 0, !dbg !1962
  br i1 %28, label %29, label %41, !dbg !1963

; <label>:29:                                     ; preds = %26
  %30 = call i32 @hllMerge(i8* nonnull %12, %struct.redisObject* nonnull %24) #8, !dbg !1964
  %31 = icmp eq i32 %30, -1, !dbg !1966
  br i1 %31, label %32, label %34, !dbg !1967

; <label>:32:                                     ; preds = %29
  %33 = call i8* @sdsnew(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !1968
  call void @addReplySds(%struct.client* nonnull %0, i8* %33) #10, !dbg !1970
  br label %41, !dbg !1971

; <label>:34:                                     ; preds = %18, %29
  %35 = add nuw nsw i64 %19, 1, !dbg !1972
  %36 = load i32, i32* %4, align 8, !dbg !1949, !tbaa !1848
  %37 = sext i32 %36 to i64, !dbg !1950
  %38 = icmp slt i64 %35, %37, !dbg !1950
  br i1 %38, label %18, label %39, !dbg !1951, !llvm.loop !1973

; <label>:39:                                     ; preds = %34, %7
  %40 = call i64 @hllCount(%struct.hllhdr* nonnull %10, i32* null) #8, !dbg !1975
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %40) #10, !dbg !1976
  br label %41, !dbg !1977

; <label>:41:                                     ; preds = %26, %32, %39
  call void @llvm.lifetime.end.p0i8(i64 16400, i8* nonnull %8) #9, !dbg !1978
  br label %144

; <label>:42:                                     ; preds = %1
  %43 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1979
  %44 = load %struct.redisDb*, %struct.redisDb** %43, align 8, !dbg !1979, !tbaa !1798
  %45 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1980
  %46 = load %struct.redisObject**, %struct.redisObject*** %45, align 8, !dbg !1980, !tbaa !1803
  %47 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %46, i64 1, !dbg !1981
  %48 = load %struct.redisObject*, %struct.redisObject** %47, align 8, !dbg !1981, !tbaa !1805
  %49 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %44, %struct.redisObject* %48) #10, !dbg !1982
  %50 = icmp eq %struct.redisObject* %49, null, !dbg !1984
  br i1 %50, label %51, label %53, !dbg !1985

; <label>:51:                                     ; preds = %42
  %52 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1986, !tbaa !1988
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %52) #10, !dbg !1990
  br label %144, !dbg !1991

; <label>:53:                                     ; preds = %42
  %54 = tail call i32 @isHLLObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* nonnull %49) #8, !dbg !1992
  %55 = icmp eq i32 %54, 0, !dbg !1994
  br i1 %55, label %56, label %144, !dbg !1995

; <label>:56:                                     ; preds = %53
  %57 = load %struct.redisDb*, %struct.redisDb** %43, align 8, !dbg !1996, !tbaa !1798
  %58 = load %struct.redisObject**, %struct.redisObject*** %45, align 8, !dbg !1997, !tbaa !1803
  %59 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %58, i64 1, !dbg !1998
  %60 = load %struct.redisObject*, %struct.redisObject** %59, align 8, !dbg !1998, !tbaa !1805
  %61 = tail call %struct.redisObject* @dbUnshareStringValue(%struct.redisDb* %57, %struct.redisObject* %60, %struct.redisObject* nonnull %49) #10, !dbg !1999
  %62 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %61, i64 0, i32 2, !dbg !2000
  %63 = bitcast i8** %62 to %struct.hllhdr**, !dbg !2000
  %64 = load %struct.hllhdr*, %struct.hllhdr** %63, align 8, !dbg !2000, !tbaa !483
  %65 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %64, i64 0, i32 3, !dbg !2001
  %66 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %64, i64 0, i32 3, i64 7, !dbg !2001
  %67 = load i8, i8* %66, align 1, !dbg !2001, !tbaa !143
  %68 = icmp sgt i8 %67, -1, !dbg !2001
  br i1 %68, label %69, label %106, !dbg !2002

; <label>:69:                                     ; preds = %56
  %70 = getelementptr inbounds [8 x i8], [8 x i8]* %65, i64 0, i64 0, !dbg !2003
  %71 = load i8, i8* %70, align 1, !dbg !2003, !tbaa !143
  %72 = zext i8 %71 to i64, !dbg !2005
  %73 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %64, i64 0, i32 3, i64 1, !dbg !2007
  %74 = load i8, i8* %73, align 1, !dbg !2007, !tbaa !143
  %75 = zext i8 %74 to i64, !dbg !2008
  %76 = shl nuw nsw i64 %75, 8, !dbg !2009
  %77 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %64, i64 0, i32 3, i64 2, !dbg !2010
  %78 = load i8, i8* %77, align 1, !dbg !2010, !tbaa !143
  %79 = zext i8 %78 to i64, !dbg !2011
  %80 = shl nuw nsw i64 %79, 16, !dbg !2012
  %81 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %64, i64 0, i32 3, i64 3, !dbg !2013
  %82 = load i8, i8* %81, align 1, !dbg !2013, !tbaa !143
  %83 = zext i8 %82 to i64, !dbg !2014
  %84 = shl nuw nsw i64 %83, 24, !dbg !2015
  %85 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %64, i64 0, i32 3, i64 4, !dbg !2016
  %86 = load i8, i8* %85, align 1, !dbg !2016, !tbaa !143
  %87 = zext i8 %86 to i64, !dbg !2017
  %88 = shl nuw nsw i64 %87, 32, !dbg !2018
  %89 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %64, i64 0, i32 3, i64 5, !dbg !2019
  %90 = load i8, i8* %89, align 1, !dbg !2019, !tbaa !143
  %91 = zext i8 %90 to i64, !dbg !2020
  %92 = shl nuw nsw i64 %91, 40, !dbg !2021
  %93 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %64, i64 0, i32 3, i64 6, !dbg !2022
  %94 = load i8, i8* %93, align 1, !dbg !2022, !tbaa !143
  %95 = zext i8 %94 to i64, !dbg !2023
  %96 = shl nuw nsw i64 %95, 48, !dbg !2024
  %97 = zext i8 %67 to i64, !dbg !2025
  %98 = shl nuw i64 %97, 56, !dbg !2026
  %99 = or i64 %98, %72, !dbg !2027
  %100 = or i64 %99, %76, !dbg !2028
  %101 = or i64 %100, %80, !dbg !2029
  %102 = or i64 %101, %84, !dbg !2030
  %103 = or i64 %102, %88, !dbg !2031
  %104 = or i64 %103, %92, !dbg !2032
  %105 = or i64 %104, %96, !dbg !2033
  br label %142, !dbg !2034

; <label>:106:                                    ; preds = %56
  %107 = bitcast i32* %3 to i8*, !dbg !2035
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %107) #9, !dbg !2035
  store i32 0, i32* %3, align 4, !dbg !2036, !tbaa !408
  %108 = call i64 @hllCount(%struct.hllhdr* %64, i32* nonnull %3) #8, !dbg !2037
  %109 = load i32, i32* %3, align 4, !dbg !2038, !tbaa !408
  %110 = icmp eq i32 %109, 0, !dbg !2038
  br i1 %110, label %113, label %111, !dbg !2040

; <label>:111:                                    ; preds = %106
  %112 = call i8* @sdsnew(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !2041
  call void @addReplySds(%struct.client* nonnull %0, i8* %112) #10, !dbg !2043
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %107) #9, !dbg !2044
  br label %144

; <label>:113:                                    ; preds = %106
  %114 = trunc i64 %108 to i8, !dbg !2045
  %115 = getelementptr inbounds [8 x i8], [8 x i8]* %65, i64 0, i64 0, !dbg !2046
  store i8 %114, i8* %115, align 1, !dbg !2047, !tbaa !143
  %116 = lshr i64 %108, 8, !dbg !2048
  %117 = trunc i64 %116 to i8, !dbg !2049
  %118 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %64, i64 0, i32 3, i64 1, !dbg !2050
  store i8 %117, i8* %118, align 1, !dbg !2051, !tbaa !143
  %119 = lshr i64 %108, 16, !dbg !2052
  %120 = trunc i64 %119 to i8, !dbg !2053
  %121 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %64, i64 0, i32 3, i64 2, !dbg !2054
  store i8 %120, i8* %121, align 1, !dbg !2055, !tbaa !143
  %122 = lshr i64 %108, 24, !dbg !2056
  %123 = trunc i64 %122 to i8, !dbg !2057
  %124 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %64, i64 0, i32 3, i64 3, !dbg !2058
  store i8 %123, i8* %124, align 1, !dbg !2059, !tbaa !143
  %125 = lshr i64 %108, 32, !dbg !2060
  %126 = trunc i64 %125 to i8, !dbg !2061
  %127 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %64, i64 0, i32 3, i64 4, !dbg !2062
  store i8 %126, i8* %127, align 1, !dbg !2063, !tbaa !143
  %128 = lshr i64 %108, 40, !dbg !2064
  %129 = trunc i64 %128 to i8, !dbg !2065
  %130 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %64, i64 0, i32 3, i64 5, !dbg !2066
  store i8 %129, i8* %130, align 1, !dbg !2067, !tbaa !143
  %131 = lshr i64 %108, 48, !dbg !2068
  %132 = trunc i64 %131 to i8, !dbg !2069
  %133 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %64, i64 0, i32 3, i64 6, !dbg !2070
  store i8 %132, i8* %133, align 1, !dbg !2071, !tbaa !143
  %134 = lshr i64 %108, 56, !dbg !2072
  %135 = trunc i64 %134 to i8, !dbg !2073
  store i8 %135, i8* %66, align 1, !dbg !2074, !tbaa !143
  %136 = load %struct.redisDb*, %struct.redisDb** %43, align 8, !dbg !2075, !tbaa !1798
  %137 = load %struct.redisObject**, %struct.redisObject*** %45, align 8, !dbg !2076, !tbaa !1803
  %138 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %137, i64 1, !dbg !2077
  %139 = load %struct.redisObject*, %struct.redisObject** %138, align 8, !dbg !2077, !tbaa !1805
  call void @signalModifiedKey(%struct.redisDb* %136, %struct.redisObject* %139) #10, !dbg !2078
  %140 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2079, !tbaa !1904
  %141 = add nsw i64 %140, 1, !dbg !2079
  store i64 %141, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2079, !tbaa !1904
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %107) #9, !dbg !2044
  br label %142

; <label>:142:                                    ; preds = %113, %69
  %143 = phi i64 [ %105, %69 ], [ %108, %113 ], !dbg !2080
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %143) #10, !dbg !2081
  br label %144

; <label>:144:                                    ; preds = %51, %142, %111, %53, %41
  ret void, !dbg !2082
}

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyRead(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @pfmergeCommand(%struct.client*) local_unnamed_addr #3 !dbg !2083 {
  %2 = alloca [16384 x i8], align 16
  %3 = getelementptr inbounds [16384 x i8], [16384 x i8]* %2, i64 0, i64 0, !dbg !2097
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* nonnull %3) #9, !dbg !2097
  %4 = call i8* @memset(i8* nonnull %3, i32 0, i64 16384) #10, !dbg !2100
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2102
  %6 = load i32, i32* %5, align 8, !dbg !2102, !tbaa !1848
  %7 = icmp sgt i32 %6, 1, !dbg !2103
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2104
  %9 = load %struct.redisDb*, %struct.redisDb** %8, align 8, !dbg !2104, !tbaa !1798
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2104
  %11 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !2104, !tbaa !1803
  br i1 %7, label %12, label %44, !dbg !2105

; <label>:12:                                     ; preds = %1, %36
  %13 = phi i64 [ %38, %36 ], [ 1, %1 ]
  %14 = phi %struct.redisObject** [ %43, %36 ], [ %11, %1 ]
  %15 = phi %struct.redisDb* [ %42, %36 ], [ %9, %1 ]
  %16 = phi i32 [ %37, %36 ], [ 0, %1 ]
  %17 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 %13, !dbg !2106
  %18 = load %struct.redisObject*, %struct.redisObject** %17, align 8, !dbg !2106, !tbaa !1805
  %19 = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %15, %struct.redisObject* %18) #10, !dbg !2107
  %20 = icmp eq %struct.redisObject* %19, null, !dbg !2109
  br i1 %20, label %36, label %21, !dbg !2111

; <label>:21:                                     ; preds = %12
  %22 = call i32 @isHLLObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* nonnull %19) #8, !dbg !2112
  %23 = icmp eq i32 %22, 0, !dbg !2114
  br i1 %23, label %24, label %153, !dbg !2115

; <label>:24:                                     ; preds = %21
  %25 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %19, i64 0, i32 2, !dbg !2116
  %26 = bitcast i8** %25 to %struct.hllhdr**, !dbg !2116
  %27 = load %struct.hllhdr*, %struct.hllhdr** %26, align 8, !dbg !2116, !tbaa !483
  %28 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %27, i64 0, i32 1, !dbg !2118
  %29 = load i8, i8* %28, align 1, !dbg !2118, !tbaa !143
  %30 = icmp eq i8 %29, 0, !dbg !2120
  %31 = select i1 %30, i32 1, i32 %16, !dbg !2121
  %32 = call i32 @hllMerge(i8* nonnull %3, %struct.redisObject* nonnull %19) #8, !dbg !2122
  %33 = icmp eq i32 %32, -1, !dbg !2124
  br i1 %33, label %34, label %36, !dbg !2125

; <label>:34:                                     ; preds = %24
  %35 = call i8* @sdsnew(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !2126
  call void @addReplySds(%struct.client* nonnull %0, i8* %35) #10, !dbg !2128
  br label %153, !dbg !2129

; <label>:36:                                     ; preds = %12, %24
  %37 = phi i32 [ %16, %12 ], [ %31, %24 ], !dbg !2130
  %38 = add nuw nsw i64 %13, 1, !dbg !2131
  %39 = load i32, i32* %5, align 8, !dbg !2102, !tbaa !1848
  %40 = sext i32 %39 to i64, !dbg !2103
  %41 = icmp slt i64 %38, %40, !dbg !2103
  %42 = load %struct.redisDb*, %struct.redisDb** %8, align 8, !dbg !2104, !tbaa !1798
  %43 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !2104, !tbaa !1803
  br i1 %41, label %12, label %44, !dbg !2105, !llvm.loop !2132

; <label>:44:                                     ; preds = %36, %1
  %45 = phi i32 [ 0, %1 ], [ %37, %36 ], !dbg !2099
  %46 = phi %struct.redisDb* [ %9, %1 ], [ %42, %36 ], !dbg !2104
  %47 = phi %struct.redisObject** [ %11, %1 ], [ %43, %36 ], !dbg !2104
  %48 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %47, i64 1, !dbg !2134
  %49 = load %struct.redisObject*, %struct.redisObject** %48, align 8, !dbg !2134, !tbaa !1805
  %50 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %46, %struct.redisObject* %49) #10, !dbg !2135
  %51 = icmp eq %struct.redisObject* %50, null, !dbg !2137
  br i1 %51, label %52, label %67, !dbg !2139

; <label>:52:                                     ; preds = %44
  %53 = call i8* @sdsnewlen(i8* null, i64 18) #10, !dbg !2144
  %54 = getelementptr inbounds i8, i8* %53, i64 16, !dbg !2146
  store i8 127, i8* %54, align 1, !dbg !2149, !tbaa !143
  %55 = getelementptr inbounds i8, i8* %53, i64 17, !dbg !2149
  store i8 -1, i8* %55, align 1, !dbg !2149, !tbaa !143
  %56 = call %struct.redisObject* @createObject(i32 0, i8* %53) #10, !dbg !2150
  %57 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %56, i64 0, i32 2, !dbg !2152
  %58 = bitcast i8** %57 to %struct.hllhdr**, !dbg !2152
  %59 = load %struct.hllhdr*, %struct.hllhdr** %58, align 8, !dbg !2152, !tbaa !483
  %60 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %59, i64 0, i32 0, i64 0, !dbg !2154
  %61 = call i8* @memcpy(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4) #10, !dbg !2155
  %62 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %59, i64 0, i32 1, !dbg !2156
  store i8 1, i8* %62, align 1, !dbg !2157, !tbaa !143
  %63 = load %struct.redisDb*, %struct.redisDb** %8, align 8, !dbg !2158, !tbaa !1798
  %64 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !2159, !tbaa !1803
  %65 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %64, i64 1, !dbg !2160
  %66 = load %struct.redisObject*, %struct.redisObject** %65, align 8, !dbg !2160, !tbaa !1805
  call void @dbAdd(%struct.redisDb* %63, %struct.redisObject* %66, %struct.redisObject* %56) #10, !dbg !2161
  br label %73, !dbg !2162

; <label>:67:                                     ; preds = %44
  %68 = load %struct.redisDb*, %struct.redisDb** %8, align 8, !dbg !2163, !tbaa !1798
  %69 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !2165, !tbaa !1803
  %70 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %69, i64 1, !dbg !2166
  %71 = load %struct.redisObject*, %struct.redisObject** %70, align 8, !dbg !2166, !tbaa !1805
  %72 = call %struct.redisObject* @dbUnshareStringValue(%struct.redisDb* %68, %struct.redisObject* %71, %struct.redisObject* nonnull %50) #10, !dbg !2167
  br label %73

; <label>:73:                                     ; preds = %67, %52
  %74 = phi %struct.redisObject* [ %56, %52 ], [ %72, %67 ], !dbg !2168
  %75 = icmp eq i32 %45, 0, !dbg !2169
  br i1 %75, label %81, label %76, !dbg !2171

; <label>:76:                                     ; preds = %73
  %77 = call i32 @hllSparseToDense(%struct.redisObject* %74) #8, !dbg !2172
  %78 = icmp eq i32 %77, -1, !dbg !2173
  br i1 %78, label %79, label %81, !dbg !2174

; <label>:79:                                     ; preds = %76
  %80 = call i8* @sdsnew(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !2175
  call void @addReplySds(%struct.client* nonnull %0, i8* %80) #10, !dbg !2177
  br label %153, !dbg !2178

; <label>:81:                                     ; preds = %73, %76
  %82 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %74, i64 0, i32 2
  %83 = bitcast i8** %82 to %struct.hllhdr**
  br label %84, !dbg !2179

; <label>:84:                                     ; preds = %132, %81
  %85 = phi i64 [ 0, %81 ], [ %133, %132 ]
  %86 = getelementptr inbounds [16384 x i8], [16384 x i8]* %2, i64 0, i64 %85, !dbg !2181
  %87 = load i8, i8* %86, align 1, !dbg !2181, !tbaa !143
  %88 = icmp eq i8 %87, 0, !dbg !2185
  br i1 %88, label %132, label %89, !dbg !2186

; <label>:89:                                     ; preds = %84
  %90 = load %struct.hllhdr*, %struct.hllhdr** %83, align 8, !dbg !2187, !tbaa !483
  %91 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %90, i64 0, i32 1, !dbg !2188
  %92 = load i8, i8* %91, align 1, !dbg !2188, !tbaa !143
  switch i8 %92, label %132 [
    i8 0, label %93
    i8 1, label %130
  ], !dbg !2189

; <label>:93:                                     ; preds = %89
  %94 = mul nuw nsw i64 %85, 6, !dbg !2195
  %95 = lshr i64 %94, 3, !dbg !2195
  %96 = trunc i64 %94 to i32, !dbg !2195
  %97 = and i32 %96, 6, !dbg !2195
  %98 = zext i32 %97 to i64, !dbg !2195
  %99 = sub nsw i64 8, %98, !dbg !2195
  %100 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %90, i64 0, i32 4, i64 %95, !dbg !2195
  %101 = load i8, i8* %100, align 1, !dbg !2195, !tbaa !143
  %102 = zext i8 %101 to i64, !dbg !2195
  %103 = add nuw nsw i64 %95, 1, !dbg !2195
  %104 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %90, i64 0, i32 4, i64 %103, !dbg !2195
  %105 = load i8, i8* %104, align 1, !dbg !2195, !tbaa !143
  %106 = zext i8 %105 to i64, !dbg !2195
  %107 = lshr i64 %102, %98, !dbg !2195
  %108 = shl i64 %106, %99, !dbg !2195
  %109 = or i64 %108, %107, !dbg !2195
  %110 = trunc i64 %109 to i32, !dbg !2195
  %111 = and i32 %110, 63, !dbg !2195
  %112 = zext i8 %87 to i32, !dbg !2196
  %113 = icmp ult i32 %111, %112, !dbg !2197
  br i1 %113, label %114, label %132, !dbg !2198

; <label>:114:                                    ; preds = %93
  %115 = zext i8 %87 to i64, !dbg !2199
  %116 = shl i32 63, %97, !dbg !2199
  %117 = trunc i32 %116 to i8, !dbg !2199
  %118 = xor i8 %117, -1, !dbg !2199
  %119 = and i8 %101, %118, !dbg !2199
  %120 = shl i64 %115, %98, !dbg !2199
  %121 = trunc i64 %120 to i8, !dbg !2199
  %122 = or i8 %119, %121, !dbg !2199
  store i8 %122, i8* %100, align 1, !dbg !2199, !tbaa !143
  %123 = trunc i64 %99 to i32, !dbg !2199
  %124 = ashr i32 -64, %123, !dbg !2199
  %125 = trunc i32 %124 to i8, !dbg !2199
  %126 = and i8 %105, %125, !dbg !2199
  %127 = lshr i64 %115, %99, !dbg !2199
  %128 = trunc i64 %127 to i8, !dbg !2199
  %129 = or i8 %126, %128, !dbg !2199
  store i8 %129, i8* %104, align 1, !dbg !2199, !tbaa !143
  br label %132, !dbg !2200

; <label>:130:                                    ; preds = %89
  %131 = call i32 @hllSparseSet(%struct.redisObject* nonnull %74, i64 %85, i8 zeroext %87) #8, !dbg !2201
  br label %132, !dbg !2202

; <label>:132:                                    ; preds = %114, %93, %130, %89, %84
  %133 = add nuw nsw i64 %85, 1, !dbg !2203
  %134 = icmp eq i64 %133, 16384, !dbg !2204
  br i1 %134, label %135, label %84, !dbg !2179, !llvm.loop !2205

; <label>:135:                                    ; preds = %132
  %136 = load %struct.hllhdr*, %struct.hllhdr** %83, align 8, !dbg !2207, !tbaa !483
  %137 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %136, i64 0, i32 3, i64 7, !dbg !2208
  %138 = load i8, i8* %137, align 1, !dbg !2208, !tbaa !143
  %139 = or i8 %138, -128, !dbg !2208
  store i8 %139, i8* %137, align 1, !dbg !2208, !tbaa !143
  %140 = load %struct.redisDb*, %struct.redisDb** %8, align 8, !dbg !2209, !tbaa !1798
  %141 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !2210, !tbaa !1803
  %142 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %141, i64 1, !dbg !2211
  %143 = load %struct.redisObject*, %struct.redisObject** %142, align 8, !dbg !2211, !tbaa !1805
  call void @signalModifiedKey(%struct.redisDb* %140, %struct.redisObject* %143) #10, !dbg !2212
  %144 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !2213, !tbaa !1803
  %145 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %144, i64 1, !dbg !2214
  %146 = load %struct.redisObject*, %struct.redisObject** %145, align 8, !dbg !2214, !tbaa !1805
  %147 = load %struct.redisDb*, %struct.redisDb** %8, align 8, !dbg !2215, !tbaa !1798
  %148 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %147, i64 0, i32 5, !dbg !2216
  %149 = load i32, i32* %148, align 8, !dbg !2216, !tbaa !1900
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), %struct.redisObject* %146, i32 %149) #10, !dbg !2217
  %150 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2218, !tbaa !1904
  %151 = add nsw i64 %150, 1, !dbg !2218
  store i64 %151, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2218, !tbaa !1904
  %152 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2219, !tbaa !2220
  call void @addReply(%struct.client* %0, %struct.redisObject* %152) #10, !dbg !2221
  br label %153, !dbg !2222

; <label>:153:                                    ; preds = %21, %34, %79, %135
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* nonnull %3) #9, !dbg !2222
  ret void, !dbg !2222
}

; Function Attrs: noredzone nounwind
define dso_local void @pfselftestCommand(%struct.client*) local_unnamed_addr #3 !dbg !2223 {
  %2 = alloca [16384 x i8], align 16
  %3 = alloca i64, align 8
  %4 = tail call i8* @sdsnewlen(i8* null, i64 12304) #10, !dbg !2269
  %5 = bitcast i8* %4 to %struct.hllhdr*, !dbg !2271
  %6 = getelementptr inbounds [16384 x i8], [16384 x i8]* %2, i64 0, i64 0, !dbg !2274
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* nonnull %6) #9, !dbg !2274
  %7 = getelementptr inbounds i8, i8* %4, i64 16
  br label %8, !dbg !2277

; <label>:8:                                      ; preds = %1, %75
  %9 = phi i32 [ 0, %1 ], [ %76, %75 ]
  br label %10, !dbg !2279

; <label>:10:                                     ; preds = %10, %8
  %11 = phi i64 [ 0, %8 ], [ %43, %10 ]
  %12 = tail call i32 @rand() #10, !dbg !2280
  %13 = and i32 %12, 63, !dbg !2281
  %14 = trunc i32 %13 to i8, !dbg !2283
  %15 = getelementptr inbounds [16384 x i8], [16384 x i8]* %2, i64 0, i64 %11, !dbg !2284
  store i8 %14, i8* %15, align 1, !dbg !2285, !tbaa !143
  %16 = trunc i64 %11 to i32, !dbg !2286
  %17 = mul i32 %16, 6, !dbg !2286
  %18 = lshr i32 %17, 3, !dbg !2286
  %19 = zext i32 %18 to i64, !dbg !2286
  %20 = and i32 %17, 6, !dbg !2286
  %21 = zext i32 %20 to i64, !dbg !2286
  %22 = sub nsw i64 8, %21, !dbg !2286
  %23 = zext i32 %13 to i64, !dbg !2286
  %24 = shl i32 63, %20, !dbg !2286
  %25 = getelementptr inbounds i8, i8* %7, i64 %19, !dbg !2286
  %26 = load i8, i8* %25, align 1, !dbg !2286, !tbaa !143
  %27 = trunc i32 %24 to i8, !dbg !2286
  %28 = xor i8 %27, -1, !dbg !2286
  %29 = and i8 %26, %28, !dbg !2286
  %30 = shl i64 %23, %21, !dbg !2286
  %31 = trunc i64 %30 to i8, !dbg !2286
  %32 = or i8 %29, %31, !dbg !2286
  store i8 %32, i8* %25, align 1, !dbg !2286, !tbaa !143
  %33 = trunc i64 %22 to i32, !dbg !2286
  %34 = ashr i32 -64, %33, !dbg !2286
  %35 = add nuw nsw i64 %19, 1, !dbg !2286
  %36 = getelementptr inbounds i8, i8* %7, i64 %35, !dbg !2286
  %37 = load i8, i8* %36, align 1, !dbg !2286, !tbaa !143
  %38 = trunc i32 %34 to i8, !dbg !2286
  %39 = and i8 %37, %38, !dbg !2286
  %40 = lshr i64 %23, %22, !dbg !2286
  %41 = trunc i64 %40 to i8, !dbg !2286
  %42 = or i8 %39, %41, !dbg !2286
  store i8 %42, i8* %36, align 1, !dbg !2286, !tbaa !143
  %43 = add nuw nsw i64 %11, 1, !dbg !2287
  %44 = icmp eq i64 %43, 16384, !dbg !2288
  br i1 %44, label %45, label %10, !dbg !2279, !llvm.loop !2289

; <label>:45:                                     ; preds = %10, %72
  %46 = phi i32 [ %73, %72 ], [ 0, %10 ]
  %47 = mul nsw i32 %46, 6, !dbg !2291
  %48 = lshr i32 %47, 3, !dbg !2291
  %49 = zext i32 %48 to i64, !dbg !2291
  %50 = and i32 %47, 6, !dbg !2291
  %51 = zext i32 %50 to i64, !dbg !2291
  %52 = sub nsw i64 8, %51, !dbg !2291
  %53 = getelementptr inbounds i8, i8* %7, i64 %49, !dbg !2291
  %54 = load i8, i8* %53, align 1, !dbg !2291, !tbaa !143
  %55 = zext i8 %54 to i64, !dbg !2291
  %56 = add nuw nsw i64 %49, 1, !dbg !2291
  %57 = getelementptr inbounds i8, i8* %7, i64 %56, !dbg !2291
  %58 = load i8, i8* %57, align 1, !dbg !2291, !tbaa !143
  %59 = zext i8 %58 to i64, !dbg !2291
  %60 = lshr i64 %55, %51, !dbg !2291
  %61 = shl i64 %59, %52, !dbg !2291
  %62 = or i64 %61, %60, !dbg !2291
  %63 = trunc i64 %62 to i32, !dbg !2291
  %64 = and i32 %63, 63, !dbg !2291
  %65 = zext i32 %46 to i64, !dbg !2293
  %66 = getelementptr inbounds [16384 x i8], [16384 x i8]* %2, i64 0, i64 %65, !dbg !2293
  %67 = load i8, i8* %66, align 1, !dbg !2293, !tbaa !143
  %68 = zext i8 %67 to i32, !dbg !2293
  %69 = icmp eq i32 %64, %68, !dbg !2295
  br i1 %69, label %72, label %70, !dbg !2296

; <label>:70:                                     ; preds = %45
  %71 = zext i8 %67 to i32, !dbg !2293
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %46, i32 %71, i32 %64) #10, !dbg !2297
  tail call void @sdsfree(i8* nonnull %4) #10, !dbg !2299
  br label %209, !dbg !2300

; <label>:72:                                     ; preds = %45
  %73 = add nuw nsw i32 %46, 1, !dbg !2301
  %74 = icmp ult i32 %73, 16384, !dbg !2302
  br i1 %74, label %45, label %75, !dbg !2303, !llvm.loop !2304

; <label>:75:                                     ; preds = %72
  %76 = add nuw nsw i32 %9, 1, !dbg !2306
  %77 = icmp ult i32 %76, 1000, !dbg !2307
  br i1 %77, label %8, label %78, !dbg !2277, !llvm.loop !2308

; <label>:78:                                     ; preds = %75
  %79 = tail call i8* @memset(i8* nonnull %7, i32 0, i64 12288) #10, !dbg !2310
  %80 = tail call i8* @sdsnewlen(i8* null, i64 18) #10, !dbg !2314
  %81 = getelementptr inbounds i8, i8* %80, i64 16, !dbg !2316
  store i8 127, i8* %81, align 1, !dbg !2319, !tbaa !143
  %82 = getelementptr inbounds i8, i8* %80, i64 17, !dbg !2319
  store i8 -1, i8* %82, align 1, !dbg !2319, !tbaa !143
  %83 = tail call %struct.redisObject* @createObject(i32 0, i8* %80) #10, !dbg !2320
  %84 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %83, i64 0, i32 2, !dbg !2322
  %85 = bitcast i8** %84 to %struct.hllhdr**, !dbg !2322
  %86 = load %struct.hllhdr*, %struct.hllhdr** %85, align 8, !dbg !2322, !tbaa !483
  %87 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %86, i64 0, i32 0, i64 0, !dbg !2324
  %88 = tail call i8* @memcpy(i8* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4) #10, !dbg !2325
  %89 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %86, i64 0, i32 1, !dbg !2326
  store i8 1, i8* %89, align 1, !dbg !2327, !tbaa !143
  %90 = tail call double @sqrt(double 1.638400e+04) #10, !dbg !2328
  %91 = fdiv double 1.040000e+00, %90, !dbg !2329
  %92 = tail call i32 @rand() #10, !dbg !2332
  %93 = sext i32 %92 to i64, !dbg !2333
  %94 = tail call i32 @rand() #10, !dbg !2334
  %95 = zext i32 %94 to i64, !dbg !2335
  %96 = shl nuw i64 %95, 32, !dbg !2336
  %97 = or i64 %96, %93, !dbg !2337
  %98 = bitcast i64* %3 to i8*
  %99 = fmul double %91, 6.000000e+00
  br label %100, !dbg !2339

; <label>:100:                                    ; preds = %78, %200
  %101 = phi i64 [ 1, %78 ], [ %202, %200 ]
  %102 = phi i64 [ 1, %78 ], [ %201, %200 ]
  %103 = xor i64 %97, %101, !dbg !2340
  store i64 %103, i64* %3, align 8, !dbg !2342, !tbaa !125
  %104 = mul i64 %103, -4132994306676758123, !dbg !2360
  %105 = lshr i64 %104, 47, !dbg !2361
  %106 = xor i64 %105, %104, !dbg !2362
  %107 = mul i64 %106, -4132994306676758123, !dbg !2363
  %108 = xor i64 %107, 3829533692205168561, !dbg !2364
  %109 = mul i64 %108, -4132994306676758123, !dbg !2365
  %110 = lshr i64 %109, 47, !dbg !2366
  %111 = xor i64 %110, %109, !dbg !2367
  %112 = mul i64 %111, -4132994306676758123, !dbg !2368
  %113 = lshr i64 %112, 47, !dbg !2369
  %114 = xor i64 %113, %112, !dbg !2370
  %115 = lshr i64 %114, 14, !dbg !2373
  %116 = or i64 %115, 1125899906842624, !dbg !2374
  %117 = and i64 %114, 16384, !dbg !2377
  %118 = icmp eq i64 %117, 0, !dbg !2378
  br i1 %118, label %119, label %128, !dbg !2379

; <label>:119:                                    ; preds = %100, %119
  %120 = phi i32 [ %122, %119 ], [ 1, %100 ]
  %121 = phi i64 [ %123, %119 ], [ 1, %100 ]
  %122 = add nuw nsw i32 %120, 1, !dbg !2380
  %123 = shl i64 %121, 1, !dbg !2381
  %124 = and i64 %123, %116, !dbg !2377
  %125 = icmp eq i64 %124, 0, !dbg !2378
  br i1 %125, label %119, label %126, !dbg !2379, !llvm.loop !218

; <label>:126:                                    ; preds = %119
  %127 = and i32 %122, 255, !dbg !2382
  br label %128, !dbg !2382

; <label>:128:                                    ; preds = %126, %100
  %129 = phi i32 [ 1, %100 ], [ %127, %126 ]
  %130 = and i64 %114, 16383, !dbg !2382
  %131 = mul nuw nsw i64 %130, 6, !dbg !2387
  %132 = lshr i64 %131, 3, !dbg !2387
  %133 = and i64 %131, 6, !dbg !2387
  %134 = sub nsw i64 8, %133, !dbg !2387
  %135 = getelementptr inbounds i8, i8* %7, i64 %132, !dbg !2387
  %136 = load i8, i8* %135, align 1, !dbg !2387, !tbaa !143
  %137 = zext i8 %136 to i64, !dbg !2387
  %138 = add nuw nsw i64 %132, 1, !dbg !2387
  %139 = getelementptr inbounds i8, i8* %7, i64 %138, !dbg !2387
  %140 = load i8, i8* %139, align 1, !dbg !2387, !tbaa !143
  %141 = zext i8 %140 to i64, !dbg !2387
  %142 = lshr i64 %137, %133, !dbg !2387
  %143 = shl i64 %141, %134, !dbg !2387
  %144 = or i64 %143, %142, !dbg !2387
  %145 = trunc i64 %144 to i32, !dbg !2387
  %146 = and i32 %145, 63, !dbg !2387
  %147 = icmp ult i32 %146, %129, !dbg !2388
  br i1 %147, label %148, label %165, !dbg !2389

; <label>:148:                                    ; preds = %128
  %149 = zext i32 %129 to i64, !dbg !2390
  %150 = trunc i64 %133 to i32, !dbg !2390
  %151 = shl i32 63, %150, !dbg !2390
  %152 = trunc i32 %151 to i8, !dbg !2390
  %153 = xor i8 %152, -1, !dbg !2390
  %154 = and i8 %136, %153, !dbg !2390
  %155 = shl i64 %149, %133, !dbg !2390
  %156 = trunc i64 %155 to i8, !dbg !2390
  %157 = or i8 %154, %156, !dbg !2390
  store i8 %157, i8* %135, align 1, !dbg !2390, !tbaa !143
  %158 = trunc i64 %134 to i32, !dbg !2390
  %159 = ashr i32 -64, %158, !dbg !2390
  %160 = trunc i32 %159 to i8, !dbg !2390
  %161 = and i8 %140, %160, !dbg !2390
  %162 = lshr i64 %149, %134, !dbg !2390
  %163 = trunc i64 %162 to i8, !dbg !2390
  %164 = or i8 %161, %163, !dbg !2390
  store i8 %164, i8* %139, align 1, !dbg !2390, !tbaa !143
  br label %165, !dbg !2391

; <label>:165:                                    ; preds = %128, %148
  %166 = call i32 @hllAdd(%struct.redisObject* %83, i8* nonnull %98, i64 8) #8, !dbg !2392
  %167 = icmp eq i64 %102, %101, !dbg !2393
  br i1 %167, label %168, label %200, !dbg !2395

; <label>:168:                                    ; preds = %165
  %169 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 246), align 8, !dbg !2396, !tbaa !831
  %170 = lshr i64 %169, 1, !dbg !2397
  %171 = icmp ugt i64 %170, %101, !dbg !2398
  br i1 %171, label %172, label %178, !dbg !2399

; <label>:172:                                    ; preds = %168
  %173 = load %struct.hllhdr*, %struct.hllhdr** %85, align 8, !dbg !2400, !tbaa !483
  %174 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %173, i64 0, i32 1, !dbg !2403
  %175 = load i8, i8* %174, align 1, !dbg !2403, !tbaa !143
  %176 = icmp eq i8 %175, 1, !dbg !2405
  br i1 %176, label %178, label %177, !dbg !2406

; <label>:177:                                    ; preds = %172
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !2407
  br label %204, !dbg !2409

; <label>:178:                                    ; preds = %168, %172
  %179 = call i64 @hllCount(%struct.hllhdr* nonnull %5, i32* null) #8, !dbg !2410
  %180 = load %struct.hllhdr*, %struct.hllhdr** %85, align 8, !dbg !2412, !tbaa !483
  %181 = call i64 @hllCount(%struct.hllhdr* %180, i32* null) #8, !dbg !2413
  %182 = icmp eq i64 %179, %181, !dbg !2414
  br i1 %182, label %184, label %183, !dbg !2415

; <label>:183:                                    ; preds = %178
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !2416
  br label %204, !dbg !2418

; <label>:184:                                    ; preds = %178
  %185 = call i64 @hllCount(%struct.hllhdr* nonnull %5, i32* null) #8, !dbg !2419
  %186 = sub nsw i64 %101, %185, !dbg !2420
  %187 = sitofp i64 %101 to double, !dbg !2422
  %188 = fmul double %99, %187, !dbg !2423
  %189 = call double @ceil(double %188) #10, !dbg !2424
  %190 = fptoui double %189 to i64, !dbg !2424
  %191 = icmp eq i64 %101, 10, !dbg !2426
  %192 = select i1 %191, i64 1, i64 %190, !dbg !2428
  %193 = icmp slt i64 %186, 0, !dbg !2429
  %194 = sub nsw i64 0, %186, !dbg !2431
  %195 = select i1 %193, i64 %194, i64 %186, !dbg !2432
  %196 = icmp sgt i64 %195, %192, !dbg !2433
  br i1 %196, label %199, label %197, !dbg !2435

; <label>:197:                                    ; preds = %184
  %198 = mul nsw i64 %101, 10, !dbg !2436
  br label %200

; <label>:199:                                    ; preds = %184
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i64 %101, i64 %195) #10, !dbg !2437
  br label %204

; <label>:200:                                    ; preds = %197, %165
  %201 = phi i64 [ %102, %165 ], [ %198, %197 ], !dbg !2331
  %202 = add nuw nsw i64 %101, 1, !dbg !2439
  %203 = icmp ult i64 %202, 10000001, !dbg !2440
  br i1 %203, label %100, label %205, !dbg !2339, !llvm.loop !2441

; <label>:204:                                    ; preds = %177, %183, %199
  call void @sdsfree(i8* nonnull %4) #10, !dbg !2299
  br label %208, !dbg !2300

; <label>:205:                                    ; preds = %200
  %206 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2443, !tbaa !2220
  call void @addReply(%struct.client* %0, %struct.redisObject* %206) #10, !dbg !2444
  call void @sdsfree(i8* nonnull %4) #10, !dbg !2299
  %207 = icmp eq %struct.redisObject* %83, null, !dbg !2445
  br i1 %207, label %209, label %208, !dbg !2300

; <label>:208:                                    ; preds = %204, %205
  call void @decrRefCount(%struct.redisObject* nonnull %83) #10, !dbg !2447
  br label %209, !dbg !2447

; <label>:209:                                    ; preds = %70, %205, %208
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* nonnull %6) #9, !dbg !2448
  ret void, !dbg !2448
}

; Function Attrs: noredzone
declare dso_local i32 @rand() local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @addReplyErrorFormat(%struct.client*, i8*, ...) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local double @ceil(double) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @pfdebugCommand(%struct.client*) local_unnamed_addr #3 !dbg !2449 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2485
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2485, !tbaa !1803
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !2486
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !2486, !tbaa !1805
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %5, i64 0, i32 2, !dbg !2487
  %7 = load i8*, i8** %6, align 8, !dbg !2487, !tbaa !483
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2489
  %9 = load %struct.redisDb*, %struct.redisDb** %8, align 8, !dbg !2489, !tbaa !1798
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 2, !dbg !2490
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !2490, !tbaa !1805
  %12 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %9, %struct.redisObject* %11) #10, !dbg !2491
  %13 = icmp eq %struct.redisObject* %12, null, !dbg !2493
  br i1 %13, label %14, label %15, !dbg !2495

; <label>:14:                                     ; preds = %1
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !2496
  br label %213, !dbg !2498

; <label>:15:                                     ; preds = %1
  %16 = tail call i32 @isHLLObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* nonnull %12) #8, !dbg !2499
  %17 = icmp eq i32 %16, 0, !dbg !2501
  br i1 %17, label %18, label %213, !dbg !2502

; <label>:18:                                     ; preds = %15
  %19 = load %struct.redisDb*, %struct.redisDb** %8, align 8, !dbg !2503, !tbaa !1798
  %20 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2504, !tbaa !1803
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 2, !dbg !2505
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !2505, !tbaa !1805
  %23 = tail call %struct.redisObject* @dbUnshareStringValue(%struct.redisDb* %19, %struct.redisObject* %22, %struct.redisObject* nonnull %12) #10, !dbg !2506
  %24 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %23, i64 0, i32 2, !dbg !2507
  %25 = load i8*, i8** %24, align 8, !dbg !2507, !tbaa !483
  %26 = tail call i32 @strcasecmp(i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)) #12, !dbg !2509
  %27 = icmp eq i32 %26, 0, !dbg !2509
  %28 = bitcast i8* %25 to %struct.hllhdr*, !dbg !2510
  br i1 %27, label %29, label %70, !dbg !2510

; <label>:29:                                     ; preds = %18
  %30 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2511
  %31 = load i32, i32* %30, align 8, !dbg !2511, !tbaa !1848
  %32 = icmp eq i32 %31, 3, !dbg !2513
  br i1 %32, label %33, label %212, !dbg !2514

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds i8, i8* %25, i64 4, !dbg !2515
  %35 = load i8, i8* %34, align 1, !dbg !2515, !tbaa !143
  %36 = icmp eq i8 %35, 1, !dbg !2517
  br i1 %36, label %37, label %47, !dbg !2518

; <label>:37:                                     ; preds = %33
  %38 = tail call i32 @hllSparseToDense(%struct.redisObject* %23) #8, !dbg !2519
  %39 = icmp eq i32 %38, -1, !dbg !2522
  br i1 %39, label %40, label %42, !dbg !2523

; <label>:40:                                     ; preds = %37
  %41 = tail call i8* @sdsnew(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !2524
  tail call void @addReplySds(%struct.client* nonnull %0, i8* %41) #10, !dbg !2526
  br label %213, !dbg !2527

; <label>:42:                                     ; preds = %37
  %43 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2528, !tbaa !1904
  %44 = add nsw i64 %43, 1, !dbg !2528
  store i64 %44, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2528, !tbaa !1904
  %45 = bitcast i8** %24 to %struct.hllhdr**
  %46 = load %struct.hllhdr*, %struct.hllhdr** %45, align 8, !dbg !2529, !tbaa !483
  br label %47, !dbg !2530

; <label>:47:                                     ; preds = %33, %42
  %48 = phi %struct.hllhdr* [ %46, %42 ], [ %28, %33 ], !dbg !2529
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 16384) #10, !dbg !2531
  br label %49, !dbg !2533

; <label>:49:                                     ; preds = %49, %47
  %50 = phi i32 [ 0, %47 ], [ %68, %49 ]
  %51 = mul nuw nsw i32 %50, 6, !dbg !2534
  %52 = lshr i32 %51, 3, !dbg !2534
  %53 = zext i32 %52 to i64, !dbg !2534
  %54 = and i32 %51, 6, !dbg !2534
  %55 = zext i32 %54 to i64, !dbg !2534
  %56 = sub nsw i64 8, %55, !dbg !2534
  %57 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %48, i64 0, i32 4, i64 %53, !dbg !2534
  %58 = load i8, i8* %57, align 1, !dbg !2534, !tbaa !143
  %59 = zext i8 %58 to i64, !dbg !2534
  %60 = add nuw nsw i64 %53, 1, !dbg !2534
  %61 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %48, i64 0, i32 4, i64 %60, !dbg !2534
  %62 = load i8, i8* %61, align 1, !dbg !2534, !tbaa !143
  %63 = zext i8 %62 to i64, !dbg !2534
  %64 = lshr i64 %59, %55, !dbg !2534
  %65 = shl i64 %63, %56, !dbg !2534
  %66 = or i64 %65, %64, !dbg !2534
  %67 = and i64 %66, 63, !dbg !2534
  tail call void @addReplyLongLong(%struct.client* %0, i64 %67) #10, !dbg !2536
  %68 = add nuw nsw i32 %50, 1, !dbg !2537
  %69 = icmp eq i32 %68, 16384, !dbg !2538
  br i1 %69, label %213, label %49, !dbg !2533, !llvm.loop !2539

; <label>:70:                                     ; preds = %18
  %71 = tail call i32 @strcasecmp(i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #12, !dbg !2541
  %72 = icmp eq i32 %71, 0, !dbg !2541
  br i1 %72, label %73, label %176, !dbg !2542

; <label>:73:                                     ; preds = %70
  %74 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2543
  %75 = load i32, i32* %74, align 8, !dbg !2543, !tbaa !1848
  %76 = icmp eq i32 %75, 3, !dbg !2545
  br i1 %76, label %77, label %212, !dbg !2546

; <label>:77:                                     ; preds = %73
  %78 = getelementptr inbounds i8, i8* %25, i64 -1, !dbg !2550
  %79 = load i8, i8* %78, align 1, !dbg !2550, !tbaa !143
  %80 = trunc i8 %79 to i3, !dbg !2552
  switch i3 %80, label %102 [
    i3 0, label %81
    i3 1, label %84
    i3 2, label %88
    i3 3, label %93
    i3 -4, label %98
  ], !dbg !2552

; <label>:81:                                     ; preds = %77
  %82 = lshr i8 %79, 3, !dbg !2553
  %83 = zext i8 %82 to i64, !dbg !2553
  br label %102, !dbg !2554

; <label>:84:                                     ; preds = %77
  %85 = getelementptr inbounds i8, i8* %25, i64 -3, !dbg !2555
  %86 = load i8, i8* %85, align 1, !dbg !2556, !tbaa !143
  %87 = zext i8 %86 to i64, !dbg !2555
  br label %102, !dbg !2557

; <label>:88:                                     ; preds = %77
  %89 = getelementptr inbounds i8, i8* %25, i64 -5, !dbg !2558
  %90 = bitcast i8* %89 to i16*, !dbg !2559
  %91 = load i16, i16* %90, align 1, !dbg !2559, !tbaa !512
  %92 = zext i16 %91 to i64, !dbg !2558
  br label %102, !dbg !2560

; <label>:93:                                     ; preds = %77
  %94 = getelementptr inbounds i8, i8* %25, i64 -9, !dbg !2561
  %95 = bitcast i8* %94 to i32*, !dbg !2562
  %96 = load i32, i32* %95, align 1, !dbg !2562, !tbaa !408
  %97 = zext i32 %96 to i64, !dbg !2561
  br label %102, !dbg !2563

; <label>:98:                                     ; preds = %77
  %99 = getelementptr inbounds i8, i8* %25, i64 -17, !dbg !2564
  %100 = bitcast i8* %99 to i64*, !dbg !2565
  %101 = load i64, i64* %100, align 1, !dbg !2565, !tbaa !125
  br label %102, !dbg !2566

; <label>:102:                                    ; preds = %77, %81, %84, %88, %93, %98
  %103 = phi i64 [ %101, %98 ], [ %97, %93 ], [ %92, %88 ], [ %87, %84 ], [ %83, %81 ], [ 0, %77 ], !dbg !2567
  %104 = getelementptr inbounds i8, i8* %25, i64 %103, !dbg !2568
  %105 = tail call i8* @sdsempty() #10, !dbg !2570
  %106 = getelementptr inbounds i8, i8* %25, i64 4, !dbg !2572
  %107 = load i8, i8* %106, align 1, !dbg !2572, !tbaa !143
  %108 = icmp eq i8 %107, 1, !dbg !2574
  br i1 %108, label %110, label %109, !dbg !2575

; <label>:109:                                    ; preds = %102
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !2576
  br label %213

; <label>:110:                                    ; preds = %102
  %111 = icmp sgt i64 %103, 16, !dbg !2578
  br i1 %111, label %112, label %147, !dbg !2579

; <label>:112:                                    ; preds = %110
  %113 = getelementptr inbounds i8, i8* %25, i64 16, !dbg !2580
  br label %114, !dbg !2581

; <label>:114:                                    ; preds = %112, %143
  %115 = phi i8* [ %145, %143 ], [ %105, %112 ]
  %116 = phi i8* [ %144, %143 ], [ %113, %112 ]
  %117 = load i8, i8* %116, align 1, !dbg !2581, !tbaa !143
  %118 = zext i8 %117 to i32, !dbg !2581
  %119 = and i8 %117, -64, !dbg !2581
  switch i8 %119, label %135 [
    i8 0, label %120
    i8 64, label %125
  ], !dbg !2583

; <label>:120:                                    ; preds = %114
  %121 = and i32 %118, 63, !dbg !2584
  %122 = add nuw nsw i32 %121, 1, !dbg !2584
  %123 = getelementptr inbounds i8, i8* %116, i64 1, !dbg !2587
  %124 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %122) #10, !dbg !2588
  br label %143, !dbg !2589

; <label>:125:                                    ; preds = %114
  %126 = shl nuw nsw i32 %118, 8, !dbg !2590
  %127 = and i32 %126, 16128, !dbg !2590
  %128 = getelementptr inbounds i8, i8* %116, i64 1, !dbg !2590
  %129 = load i8, i8* %128, align 1, !dbg !2590, !tbaa !143
  %130 = zext i8 %129 to i32, !dbg !2590
  %131 = or i32 %127, %130, !dbg !2590
  %132 = add nuw nsw i32 %131, 1, !dbg !2590
  %133 = getelementptr inbounds i8, i8* %116, i64 2, !dbg !2593
  %134 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %132) #10, !dbg !2594
  br label %143, !dbg !2595

; <label>:135:                                    ; preds = %114
  %136 = and i32 %118, 3, !dbg !2596
  %137 = add nuw nsw i32 %136, 1, !dbg !2596
  %138 = lshr i32 %118, 2, !dbg !2598
  %139 = and i32 %138, 31, !dbg !2598
  %140 = add nuw nsw i32 %139, 1, !dbg !2598
  %141 = getelementptr inbounds i8, i8* %116, i64 1, !dbg !2600
  %142 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %140, i32 %137) #10, !dbg !2601
  br label %143

; <label>:143:                                    ; preds = %125, %135, %120
  %144 = phi i8* [ %123, %120 ], [ %133, %125 ], [ %141, %135 ], !dbg !2602
  %145 = phi i8* [ %124, %120 ], [ %134, %125 ], [ %142, %135 ], !dbg !2602
  %146 = icmp ult i8* %144, %104, !dbg !2578
  br i1 %146, label %114, label %147, !dbg !2579, !llvm.loop !2603

; <label>:147:                                    ; preds = %143, %110
  %148 = phi i8* [ %105, %110 ], [ %145, %143 ], !dbg !2605
  %149 = tail call i8* @sdstrim(i8* %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #10, !dbg !2606
  %150 = getelementptr inbounds i8, i8* %149, i64 -1, !dbg !2609
  %151 = load i8, i8* %150, align 1, !dbg !2609, !tbaa !143
  %152 = trunc i8 %151 to i3, !dbg !2611
  switch i3 %152, label %174 [
    i3 0, label %153
    i3 1, label %156
    i3 2, label %160
    i3 3, label %165
    i3 -4, label %170
  ], !dbg !2611

; <label>:153:                                    ; preds = %147
  %154 = lshr i8 %151, 3, !dbg !2612
  %155 = zext i8 %154 to i64, !dbg !2612
  br label %174, !dbg !2613

; <label>:156:                                    ; preds = %147
  %157 = getelementptr inbounds i8, i8* %149, i64 -3, !dbg !2614
  %158 = load i8, i8* %157, align 1, !dbg !2615, !tbaa !143
  %159 = zext i8 %158 to i64, !dbg !2614
  br label %174, !dbg !2616

; <label>:160:                                    ; preds = %147
  %161 = getelementptr inbounds i8, i8* %149, i64 -5, !dbg !2617
  %162 = bitcast i8* %161 to i16*, !dbg !2618
  %163 = load i16, i16* %162, align 1, !dbg !2618, !tbaa !512
  %164 = zext i16 %163 to i64, !dbg !2617
  br label %174, !dbg !2619

; <label>:165:                                    ; preds = %147
  %166 = getelementptr inbounds i8, i8* %149, i64 -9, !dbg !2620
  %167 = bitcast i8* %166 to i32*, !dbg !2621
  %168 = load i32, i32* %167, align 1, !dbg !2621, !tbaa !408
  %169 = zext i32 %168 to i64, !dbg !2620
  br label %174, !dbg !2622

; <label>:170:                                    ; preds = %147
  %171 = getelementptr inbounds i8, i8* %149, i64 -17, !dbg !2623
  %172 = bitcast i8* %171 to i64*, !dbg !2624
  %173 = load i64, i64* %172, align 1, !dbg !2624, !tbaa !125
  br label %174, !dbg !2625

; <label>:174:                                    ; preds = %147, %153, %156, %160, %165, %170
  %175 = phi i64 [ %173, %170 ], [ %169, %165 ], [ %164, %160 ], [ %159, %156 ], [ %155, %153 ], [ 0, %147 ], !dbg !2626
  tail call void @addReplyBulkCBuffer(%struct.client* %0, i8* %149, i64 %175) #10, !dbg !2627
  tail call void @sdsfree(i8* %149) #10, !dbg !2628
  br label %213

; <label>:176:                                    ; preds = %70
  %177 = tail call i32 @strcasecmp(i8* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0)) #12, !dbg !2629
  %178 = icmp eq i32 %177, 0, !dbg !2629
  br i1 %178, label %179, label %189, !dbg !2630

; <label>:179:                                    ; preds = %176
  %180 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2632
  %181 = load i32, i32* %180, align 8, !dbg !2632, !tbaa !1848
  %182 = icmp eq i32 %181, 3, !dbg !2634
  br i1 %182, label %183, label %212, !dbg !2635

; <label>:183:                                    ; preds = %179
  %184 = getelementptr inbounds i8, i8* %25, i64 4, !dbg !2636
  %185 = load i8, i8* %184, align 1, !dbg !2636, !tbaa !143
  %186 = zext i8 %185 to i64, !dbg !2637
  %187 = getelementptr inbounds [2 x i8*], [2 x i8*]* @pfdebugCommand.encodingstr, i64 0, i64 %186, !dbg !2637
  %188 = load i8*, i8** %187, align 8, !dbg !2637, !tbaa !1805
  tail call void @addReplyStatus(%struct.client* nonnull %0, i8* %188) #10, !dbg !2638
  br label %213

; <label>:189:                                    ; preds = %176
  %190 = tail call i32 @strcasecmp(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0)) #12, !dbg !2639
  %191 = icmp eq i32 %190, 0, !dbg !2639
  br i1 %191, label %192, label %211, !dbg !2640

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2642
  %194 = load i32, i32* %193, align 8, !dbg !2642, !tbaa !1848
  %195 = icmp eq i32 %194, 3, !dbg !2644
  br i1 %195, label %196, label %212, !dbg !2645

; <label>:196:                                    ; preds = %192
  %197 = getelementptr inbounds i8, i8* %25, i64 4, !dbg !2646
  %198 = load i8, i8* %197, align 1, !dbg !2646, !tbaa !143
  %199 = icmp eq i8 %198, 1, !dbg !2648
  br i1 %199, label %200, label %208, !dbg !2649

; <label>:200:                                    ; preds = %196
  %201 = tail call i32 @hllSparseToDense(%struct.redisObject* %23) #8, !dbg !2650
  %202 = icmp eq i32 %201, -1, !dbg !2653
  br i1 %202, label %203, label %205, !dbg !2654

; <label>:203:                                    ; preds = %200
  %204 = tail call i8* @sdsnew(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !2655
  tail call void @addReplySds(%struct.client* nonnull %0, i8* %204) #10, !dbg !2657
  br label %213, !dbg !2658

; <label>:205:                                    ; preds = %200
  %206 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2659, !tbaa !1904
  %207 = add nsw i64 %206, 1, !dbg !2659
  store i64 %207, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2659, !tbaa !1904
  br label %208, !dbg !2660

; <label>:208:                                    ; preds = %196, %205
  %209 = phi %struct.redisObject** [ getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), %205 ], [ getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), %196 ]
  %210 = load %struct.redisObject*, %struct.redisObject** %209, align 8, !dbg !2661
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %210) #10, !dbg !2662
  br label %213, !dbg !2663

; <label>:211:                                    ; preds = %189
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i8* %7) #10, !dbg !2664
  br label %213

; <label>:212:                                    ; preds = %192, %179, %73, %29
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.24, i64 0, i64 0), i8* %7) #10, !dbg !2666
  br label %213, !dbg !2667

; <label>:213:                                    ; preds = %49, %208, %203, %183, %211, %174, %109, %15, %212, %40, %14
  ret void, !dbg !2667
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #7

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @sdsempty() local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @sdscatprintf(i8*, i8*, ...) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @sdstrim(i8*, i8*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @addReplyStatus(%struct.client*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin noredzone nounwind }
attributes #11 = { nobuiltin noredzone noreturn nounwind }
attributes #12 = { nobuiltin noredzone nounwind readonly }

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
!122 = !DILocation(line: 403, column: 16, scope: !90)
!123 = !DILocation(line: 403, column: 5, scope: !90)
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
!137 = distinct !{!137, !123, !138}
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
!212 = !DILocation(line: 473, column: 17, scope: !185)
!213 = !DILocation(line: 473, column: 24, scope: !185)
!214 = !DILocation(line: 473, column: 5, scope: !185)
!215 = !DILocation(line: 474, column: 14, scope: !216)
!216 = distinct !DILexicalBlock(scope: !185, file: !1, line: 473, column: 30)
!217 = !DILocation(line: 475, column: 13, scope: !216)
!218 = distinct !{!218, !214, !219}
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
!258 = !DILocation(line: 503, column: 1, scope: !224)
!259 = distinct !DISubprogram(name: "hllDenseAdd", scope: !1, file: !1, line: 511, type: !260, isLocal: false, isDefinition: true, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !262)
!260 = !DISubroutineType(types: !261)
!261 = !{!15, !16, !43, !188}
!262 = !{!263, !264, !265, !266, !267}
!263 = !DILocalVariable(name: "registers", arg: 1, scope: !259, file: !1, line: 511, type: !16)
!264 = !DILocalVariable(name: "ele", arg: 2, scope: !259, file: !1, line: 511, type: !43)
!265 = !DILocalVariable(name: "elesize", arg: 3, scope: !259, file: !1, line: 511, type: !188)
!266 = !DILocalVariable(name: "index", scope: !259, file: !1, line: 512, type: !46)
!267 = !DILocalVariable(name: "count", scope: !259, file: !1, line: 513, type: !6)
!268 = !DILocation(line: 511, column: 26, scope: !259)
!269 = !DILocation(line: 511, column: 52, scope: !259)
!270 = !DILocation(line: 511, column: 64, scope: !259)
!271 = !DILocation(line: 451, column: 30, scope: !185, inlinedAt: !272)
!272 = distinct !DILocation(line: 513, column: 21, scope: !259)
!273 = !DILocation(line: 451, column: 42, scope: !185, inlinedAt: !272)
!274 = !DILocation(line: 466, column: 30, scope: !185, inlinedAt: !272)
!275 = !DILocation(line: 466, column: 12, scope: !185, inlinedAt: !272)
!276 = !DILocation(line: 452, column: 14, scope: !185, inlinedAt: !272)
!277 = !DILocation(line: 452, column: 25, scope: !185, inlinedAt: !272)
!278 = !DILocation(line: 468, column: 10, scope: !185, inlinedAt: !272)
!279 = !DILocation(line: 469, column: 10, scope: !185, inlinedAt: !272)
!280 = !DILocation(line: 452, column: 20, scope: !185, inlinedAt: !272)
!281 = !DILocation(line: 453, column: 9, scope: !185, inlinedAt: !272)
!282 = !DILocation(line: 473, column: 17, scope: !185, inlinedAt: !272)
!283 = !DILocation(line: 473, column: 24, scope: !185, inlinedAt: !272)
!284 = !DILocation(line: 473, column: 5, scope: !185, inlinedAt: !272)
!285 = !DILocation(line: 474, column: 14, scope: !216, inlinedAt: !272)
!286 = !DILocation(line: 475, column: 13, scope: !216, inlinedAt: !272)
!287 = !DILocation(line: 477, column: 13, scope: !185, inlinedAt: !272)
!288 = !DILocation(line: 512, column: 10, scope: !259)
!289 = !DILocation(line: 493, column: 26, scope: !224, inlinedAt: !290)
!290 = distinct !DILocation(line: 515, column: 12, scope: !259)
!291 = !DILocation(line: 493, column: 42, scope: !224, inlinedAt: !290)
!292 = !DILocation(line: 496, column: 5, scope: !233, inlinedAt: !290)
!293 = !DILocation(line: 497, column: 15, scope: !242, inlinedAt: !290)
!294 = !DILocation(line: 497, column: 9, scope: !224, inlinedAt: !290)
!295 = !DILocation(line: 498, column: 9, scope: !240, inlinedAt: !290)
!296 = !DILocation(line: 499, column: 9, scope: !241, inlinedAt: !290)
!297 = !DILocation(line: 0, scope: !257, inlinedAt: !290)
!298 = !DILocation(line: 515, column: 5, scope: !259)
!299 = distinct !DISubprogram(name: "hllDenseRegHisto", scope: !1, file: !1, line: 519, type: !300, isLocal: false, isDefinition: true, scopeLine: 519, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !303)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !16, !302}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!303 = !{!304, !305, !306, !307, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325}
!304 = !DILocalVariable(name: "registers", arg: 1, scope: !299, file: !1, line: 519, type: !16)
!305 = !DILocalVariable(name: "reghisto", arg: 2, scope: !299, file: !1, line: 519, type: !302)
!306 = !DILocalVariable(name: "j", scope: !299, file: !1, line: 520, type: !15)
!307 = !DILocalVariable(name: "r", scope: !308, file: !1, line: 526, type: !16)
!308 = distinct !DILexicalBlock(scope: !309, file: !1, line: 525, column: 50)
!309 = distinct !DILexicalBlock(scope: !299, file: !1, line: 525, column: 9)
!310 = !DILocalVariable(name: "r0", scope: !308, file: !1, line: 527, type: !14)
!311 = !DILocalVariable(name: "r1", scope: !308, file: !1, line: 527, type: !14)
!312 = !DILocalVariable(name: "r2", scope: !308, file: !1, line: 527, type: !14)
!313 = !DILocalVariable(name: "r3", scope: !308, file: !1, line: 527, type: !14)
!314 = !DILocalVariable(name: "r4", scope: !308, file: !1, line: 527, type: !14)
!315 = !DILocalVariable(name: "r5", scope: !308, file: !1, line: 527, type: !14)
!316 = !DILocalVariable(name: "r6", scope: !308, file: !1, line: 527, type: !14)
!317 = !DILocalVariable(name: "r7", scope: !308, file: !1, line: 527, type: !14)
!318 = !DILocalVariable(name: "r8", scope: !308, file: !1, line: 527, type: !14)
!319 = !DILocalVariable(name: "r9", scope: !308, file: !1, line: 527, type: !14)
!320 = !DILocalVariable(name: "r10", scope: !308, file: !1, line: 528, type: !14)
!321 = !DILocalVariable(name: "r11", scope: !308, file: !1, line: 528, type: !14)
!322 = !DILocalVariable(name: "r12", scope: !308, file: !1, line: 528, type: !14)
!323 = !DILocalVariable(name: "r13", scope: !308, file: !1, line: 528, type: !14)
!324 = !DILocalVariable(name: "r14", scope: !308, file: !1, line: 528, type: !14)
!325 = !DILocalVariable(name: "r15", scope: !308, file: !1, line: 528, type: !14)
!326 = !DILocation(line: 519, column: 32, scope: !299)
!327 = !DILocation(line: 519, column: 48, scope: !299)
!328 = !DILocation(line: 526, column: 18, scope: !308)
!329 = !DILocation(line: 520, column: 9, scope: !299)
!330 = !DILocation(line: 529, column: 9, scope: !331)
!331 = distinct !DILexicalBlock(scope: !308, file: !1, line: 529, column: 9)
!332 = !DILocation(line: 531, column: 18, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !1, line: 529, column: 36)
!334 = distinct !DILexicalBlock(scope: !331, file: !1, line: 529, column: 9)
!335 = !DILocation(line: 531, column: 23, scope: !333)
!336 = !DILocation(line: 527, column: 23, scope: !308)
!337 = !DILocation(line: 532, column: 24, scope: !333)
!338 = !DILocation(line: 532, column: 31, scope: !333)
!339 = !DILocation(line: 532, column: 36, scope: !333)
!340 = !DILocation(line: 532, column: 42, scope: !333)
!341 = !DILocation(line: 532, column: 18, scope: !333)
!342 = !DILocation(line: 527, column: 27, scope: !308)
!343 = !DILocation(line: 533, column: 24, scope: !333)
!344 = !DILocation(line: 533, column: 31, scope: !333)
!345 = !DILocation(line: 533, column: 36, scope: !333)
!346 = !DILocation(line: 533, column: 42, scope: !333)
!347 = !DILocation(line: 533, column: 18, scope: !333)
!348 = !DILocation(line: 527, column: 31, scope: !308)
!349 = !DILocation(line: 534, column: 24, scope: !333)
!350 = !DILocation(line: 534, column: 18, scope: !333)
!351 = !DILocation(line: 527, column: 35, scope: !308)
!352 = !DILocation(line: 535, column: 18, scope: !333)
!353 = !DILocation(line: 535, column: 23, scope: !333)
!354 = !DILocation(line: 527, column: 39, scope: !308)
!355 = !DILocation(line: 536, column: 24, scope: !333)
!356 = !DILocation(line: 536, column: 31, scope: !333)
!357 = !DILocation(line: 536, column: 36, scope: !333)
!358 = !DILocation(line: 536, column: 42, scope: !333)
!359 = !DILocation(line: 536, column: 18, scope: !333)
!360 = !DILocation(line: 527, column: 43, scope: !308)
!361 = !DILocation(line: 537, column: 24, scope: !333)
!362 = !DILocation(line: 537, column: 31, scope: !333)
!363 = !DILocation(line: 537, column: 36, scope: !333)
!364 = !DILocation(line: 537, column: 42, scope: !333)
!365 = !DILocation(line: 537, column: 18, scope: !333)
!366 = !DILocation(line: 527, column: 47, scope: !308)
!367 = !DILocation(line: 538, column: 24, scope: !333)
!368 = !DILocation(line: 538, column: 18, scope: !333)
!369 = !DILocation(line: 527, column: 51, scope: !308)
!370 = !DILocation(line: 539, column: 18, scope: !333)
!371 = !DILocation(line: 539, column: 23, scope: !333)
!372 = !DILocation(line: 527, column: 55, scope: !308)
!373 = !DILocation(line: 540, column: 24, scope: !333)
!374 = !DILocation(line: 540, column: 31, scope: !333)
!375 = !DILocation(line: 540, column: 36, scope: !333)
!376 = !DILocation(line: 540, column: 42, scope: !333)
!377 = !DILocation(line: 540, column: 18, scope: !333)
!378 = !DILocation(line: 527, column: 59, scope: !308)
!379 = !DILocation(line: 541, column: 25, scope: !333)
!380 = !DILocation(line: 541, column: 32, scope: !333)
!381 = !DILocation(line: 541, column: 37, scope: !333)
!382 = !DILocation(line: 541, column: 43, scope: !333)
!383 = !DILocation(line: 541, column: 19, scope: !333)
!384 = !DILocation(line: 528, column: 23, scope: !308)
!385 = !DILocation(line: 542, column: 25, scope: !333)
!386 = !DILocation(line: 542, column: 19, scope: !333)
!387 = !DILocation(line: 528, column: 28, scope: !308)
!388 = !DILocation(line: 543, column: 19, scope: !333)
!389 = !DILocation(line: 543, column: 24, scope: !333)
!390 = !DILocation(line: 528, column: 33, scope: !308)
!391 = !DILocation(line: 544, column: 25, scope: !333)
!392 = !DILocation(line: 544, column: 32, scope: !333)
!393 = !DILocation(line: 544, column: 38, scope: !333)
!394 = !DILocation(line: 544, column: 44, scope: !333)
!395 = !DILocation(line: 544, column: 19, scope: !333)
!396 = !DILocation(line: 528, column: 38, scope: !308)
!397 = !DILocation(line: 545, column: 26, scope: !333)
!398 = !DILocation(line: 545, column: 33, scope: !333)
!399 = !DILocation(line: 545, column: 39, scope: !333)
!400 = !DILocation(line: 545, column: 45, scope: !333)
!401 = !DILocation(line: 545, column: 19, scope: !333)
!402 = !DILocation(line: 528, column: 43, scope: !308)
!403 = !DILocation(line: 546, column: 26, scope: !333)
!404 = !DILocation(line: 546, column: 19, scope: !333)
!405 = !DILocation(line: 528, column: 48, scope: !308)
!406 = !DILocation(line: 548, column: 13, scope: !333)
!407 = !DILocation(line: 548, column: 25, scope: !333)
!408 = !{!409, !409, i64 0}
!409 = !{!"int", !127, i64 0}
!410 = !DILocation(line: 549, column: 13, scope: !333)
!411 = !DILocation(line: 549, column: 25, scope: !333)
!412 = !DILocation(line: 550, column: 13, scope: !333)
!413 = !DILocation(line: 550, column: 25, scope: !333)
!414 = !DILocation(line: 551, column: 13, scope: !333)
!415 = !DILocation(line: 551, column: 25, scope: !333)
!416 = !DILocation(line: 552, column: 13, scope: !333)
!417 = !DILocation(line: 552, column: 25, scope: !333)
!418 = !DILocation(line: 553, column: 13, scope: !333)
!419 = !DILocation(line: 553, column: 25, scope: !333)
!420 = !DILocation(line: 554, column: 13, scope: !333)
!421 = !DILocation(line: 554, column: 25, scope: !333)
!422 = !DILocation(line: 555, column: 13, scope: !333)
!423 = !DILocation(line: 555, column: 25, scope: !333)
!424 = !DILocation(line: 556, column: 13, scope: !333)
!425 = !DILocation(line: 556, column: 25, scope: !333)
!426 = !DILocation(line: 557, column: 13, scope: !333)
!427 = !DILocation(line: 557, column: 25, scope: !333)
!428 = !DILocation(line: 558, column: 13, scope: !333)
!429 = !DILocation(line: 558, column: 26, scope: !333)
!430 = !DILocation(line: 559, column: 13, scope: !333)
!431 = !DILocation(line: 559, column: 26, scope: !333)
!432 = !DILocation(line: 560, column: 13, scope: !333)
!433 = !DILocation(line: 560, column: 26, scope: !333)
!434 = !DILocation(line: 561, column: 13, scope: !333)
!435 = !DILocation(line: 561, column: 26, scope: !333)
!436 = !DILocation(line: 562, column: 13, scope: !333)
!437 = !DILocation(line: 562, column: 26, scope: !333)
!438 = !DILocation(line: 563, column: 13, scope: !333)
!439 = !DILocation(line: 563, column: 26, scope: !333)
!440 = !DILocation(line: 565, column: 15, scope: !333)
!441 = !DILocation(line: 529, column: 32, scope: !334)
!442 = !DILocation(line: 529, column: 23, scope: !334)
!443 = distinct !{!443, !330, !444}
!444 = !DILocation(line: 566, column: 9, scope: !331)
!445 = !DILocation(line: 574, column: 1, scope: !299)
!446 = distinct !DISubprogram(name: "hllSparseToDense", scope: !1, file: !1, line: 584, type: !447, isLocal: false, isDefinition: true, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !459)
!447 = !DISubroutineType(types: !448)
!448 = !{!15, !449}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !451, line: 622, baseType: !452)
!451 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !451, line: 614, size: 128, elements: !453)
!453 = !{!454, !455, !456, !457, !458}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !452, file: !451, line: 615, baseType: !72, size: 4, flags: DIFlagBitField, extraData: i64 0)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !452, file: !451, line: 616, baseType: !72, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !452, file: !451, line: 617, baseType: !72, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !452, file: !451, line: 620, baseType: !15, size: 32, offset: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !452, file: !451, line: 621, baseType: !42, size: 64, offset: 64)
!459 = !{!460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !477, !478, !479, !480}
!460 = !DILocalVariable(name: "o", arg: 1, scope: !446, file: !1, line: 584, type: !449)
!461 = !DILocalVariable(name: "sparse", scope: !446, file: !1, line: 585, type: !38)
!462 = !DILocalVariable(name: "dense", scope: !446, file: !1, line: 585, type: !38)
!463 = !DILocalVariable(name: "hdr", scope: !446, file: !1, line: 586, type: !17)
!464 = !DILocalVariable(name: "oldhdr", scope: !446, file: !1, line: 586, type: !17)
!465 = !DILocalVariable(name: "idx", scope: !446, file: !1, line: 587, type: !15)
!466 = !DILocalVariable(name: "runlen", scope: !446, file: !1, line: 587, type: !15)
!467 = !DILocalVariable(name: "regval", scope: !446, file: !1, line: 587, type: !15)
!468 = !DILocalVariable(name: "p", scope: !446, file: !1, line: 588, type: !16)
!469 = !DILocalVariable(name: "end", scope: !446, file: !1, line: 588, type: !16)
!470 = !DILocalVariable(name: "_p", scope: !471, file: !1, line: 619, type: !16)
!471 = distinct !DILexicalBlock(scope: !472, file: !1, line: 619, column: 17)
!472 = distinct !DILexicalBlock(scope: !473, file: !1, line: 618, column: 29)
!473 = distinct !DILexicalBlock(scope: !474, file: !1, line: 614, column: 16)
!474 = distinct !DILexicalBlock(scope: !475, file: !1, line: 610, column: 20)
!475 = distinct !DILexicalBlock(scope: !476, file: !1, line: 606, column: 13)
!476 = distinct !DILexicalBlock(scope: !446, file: !1, line: 605, column: 20)
!477 = !DILocalVariable(name: "_byte", scope: !471, file: !1, line: 619, type: !14)
!478 = !DILocalVariable(name: "_fb", scope: !471, file: !1, line: 619, type: !14)
!479 = !DILocalVariable(name: "_fb8", scope: !471, file: !1, line: 619, type: !14)
!480 = !DILocalVariable(name: "_v", scope: !471, file: !1, line: 619, type: !14)
!481 = !DILocation(line: 584, column: 28, scope: !446)
!482 = !DILocation(line: 585, column: 21, scope: !446)
!483 = !{!484, !485, i64 8}
!484 = !{!"redisObject", !409, i64 0, !409, i64 0, !409, i64 1, !409, i64 4, !485, i64 8}
!485 = !{!"any pointer", !127, i64 0}
!486 = !DILocation(line: 585, column: 9, scope: !446)
!487 = !DILocation(line: 586, column: 26, scope: !446)
!488 = !DILocation(line: 587, column: 9, scope: !446)
!489 = !DILocation(line: 588, column: 14, scope: !446)
!490 = !DILocalVariable(name: "s", arg: 1, scope: !491, file: !39, line: 87, type: !496)
!491 = distinct !DISubprogram(name: "sdslen", scope: !39, file: !39, line: 87, type: !492, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !497)
!492 = !DISubroutineType(types: !493)
!493 = !{!494, !496}
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !495, line: 58, baseType: !14)
!495 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!497 = !{!490, !498}
!498 = !DILocalVariable(name: "flags", scope: !491, file: !39, line: 88, type: !10)
!499 = !DILocation(line: 87, column: 39, scope: !491, inlinedAt: !500)
!500 = distinct !DILocation(line: 588, column: 45, scope: !446)
!501 = !DILocation(line: 88, column: 27, scope: !491, inlinedAt: !500)
!502 = !DILocation(line: 88, column: 19, scope: !491, inlinedAt: !500)
!503 = !DILocation(line: 89, column: 5, scope: !491, inlinedAt: !500)
!504 = !DILocation(line: 91, column: 20, scope: !505, inlinedAt: !500)
!505 = distinct !DILexicalBlock(scope: !491, file: !39, line: 89, column: 33)
!506 = !DILocation(line: 91, column: 13, scope: !505, inlinedAt: !500)
!507 = !DILocation(line: 93, column: 20, scope: !505, inlinedAt: !500)
!508 = !DILocation(line: 93, column: 34, scope: !505, inlinedAt: !500)
!509 = !DILocation(line: 93, column: 13, scope: !505, inlinedAt: !500)
!510 = !DILocation(line: 95, column: 20, scope: !505, inlinedAt: !500)
!511 = !DILocation(line: 95, column: 35, scope: !505, inlinedAt: !500)
!512 = !{!513, !513, i64 0}
!513 = !{!"short", !127, i64 0}
!514 = !DILocation(line: 95, column: 13, scope: !505, inlinedAt: !500)
!515 = !DILocation(line: 97, column: 20, scope: !505, inlinedAt: !500)
!516 = !DILocation(line: 97, column: 35, scope: !505, inlinedAt: !500)
!517 = !DILocation(line: 97, column: 13, scope: !505, inlinedAt: !500)
!518 = !DILocation(line: 99, column: 20, scope: !505, inlinedAt: !500)
!519 = !DILocation(line: 99, column: 35, scope: !505, inlinedAt: !500)
!520 = !DILocation(line: 99, column: 13, scope: !505, inlinedAt: !500)
!521 = !DILocation(line: 0, scope: !505, inlinedAt: !500)
!522 = !DILocation(line: 588, column: 44, scope: !446)
!523 = !DILocation(line: 588, column: 37, scope: !446)
!524 = !DILocation(line: 586, column: 20, scope: !446)
!525 = !DILocation(line: 592, column: 14, scope: !526)
!526 = distinct !DILexicalBlock(scope: !446, file: !1, line: 592, column: 9)
!527 = !DILocation(line: 592, column: 23, scope: !526)
!528 = !DILocation(line: 592, column: 9, scope: !446)
!529 = !DILocation(line: 597, column: 13, scope: !446)
!530 = !DILocation(line: 585, column: 26, scope: !446)
!531 = !DILocation(line: 599, column: 12, scope: !446)
!532 = !DILocation(line: 600, column: 10, scope: !446)
!533 = !DILocation(line: 600, column: 19, scope: !446)
!534 = !DILocation(line: 605, column: 13, scope: !446)
!535 = !DILocation(line: 605, column: 5, scope: !446)
!536 = !DILocation(line: 604, column: 7, scope: !446)
!537 = !DILocation(line: 606, column: 13, scope: !475)
!538 = !DILocation(line: 606, column: 13, scope: !476)
!539 = !DILocation(line: 607, column: 22, scope: !540)
!540 = distinct !DILexicalBlock(scope: !475, file: !1, line: 606, column: 36)
!541 = !DILocation(line: 587, column: 18, scope: !446)
!542 = !DILocation(line: 608, column: 17, scope: !540)
!543 = !DILocation(line: 610, column: 9, scope: !540)
!544 = !DILocation(line: 611, column: 22, scope: !545)
!545 = distinct !DILexicalBlock(scope: !474, file: !1, line: 610, column: 44)
!546 = !DILocation(line: 612, column: 17, scope: !545)
!547 = !DILocation(line: 614, column: 9, scope: !545)
!548 = !DILocation(line: 615, column: 22, scope: !473)
!549 = !DILocation(line: 617, column: 25, scope: !550)
!550 = distinct !DILexicalBlock(scope: !473, file: !1, line: 617, column: 17)
!551 = !DILocation(line: 617, column: 32, scope: !550)
!552 = !DILocation(line: 617, column: 17, scope: !473)
!553 = !DILocation(line: 616, column: 22, scope: !473)
!554 = !DILocation(line: 587, column: 26, scope: !446)
!555 = !DILocation(line: 618, column: 13, scope: !473)
!556 = !DILocation(line: 619, column: 17, scope: !471)
!557 = distinct !{!557, !555, !558}
!558 = !DILocation(line: 621, column: 13, scope: !473)
!559 = !DILocation(line: 0, scope: !446)
!560 = !DILocation(line: 0, scope: !540)
!561 = distinct !{!561, !535, !562}
!562 = !DILocation(line: 624, column: 5, scope: !446)
!563 = !DILocation(line: 628, column: 13, scope: !564)
!564 = distinct !DILexicalBlock(scope: !446, file: !1, line: 628, column: 9)
!565 = !DILocation(line: 628, column: 9, scope: !446)
!566 = !DILocation(line: 629, column: 9, scope: !567)
!567 = distinct !DILexicalBlock(scope: !564, file: !1, line: 628, column: 31)
!568 = !DILocation(line: 630, column: 9, scope: !567)
!569 = !DILocation(line: 634, column: 16, scope: !446)
!570 = !DILocation(line: 634, column: 5, scope: !446)
!571 = !DILocation(line: 635, column: 12, scope: !446)
!572 = !DILocation(line: 636, column: 5, scope: !446)
!573 = !DILocation(line: 637, column: 1, scope: !446)
!574 = distinct !DISubprogram(name: "hllSparseSet", scope: !1, file: !1, line: 654, type: !575, isLocal: false, isDefinition: true, scopeLine: 654, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !577)
!575 = !DISubroutineType(types: !576)
!576 = !{!15, !449, !46, !6}
!577 = !{!578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !596, !600, !601, !602, !603, !611, !617, !619, !620, !621, !622, !623, !627, !628, !631}
!578 = !DILocalVariable(name: "o", arg: 1, scope: !574, file: !1, line: 654, type: !449)
!579 = !DILocalVariable(name: "index", arg: 2, scope: !574, file: !1, line: 654, type: !46)
!580 = !DILocalVariable(name: "count", arg: 3, scope: !574, file: !1, line: 654, type: !6)
!581 = !DILocalVariable(name: "hdr", scope: !574, file: !1, line: 655, type: !17)
!582 = !DILocalVariable(name: "oldcount", scope: !574, file: !1, line: 656, type: !6)
!583 = !DILocalVariable(name: "sparse", scope: !574, file: !1, line: 656, type: !16)
!584 = !DILocalVariable(name: "end", scope: !574, file: !1, line: 656, type: !16)
!585 = !DILocalVariable(name: "p", scope: !574, file: !1, line: 656, type: !16)
!586 = !DILocalVariable(name: "prev", scope: !574, file: !1, line: 656, type: !16)
!587 = !DILocalVariable(name: "next", scope: !574, file: !1, line: 656, type: !16)
!588 = !DILocalVariable(name: "first", scope: !574, file: !1, line: 657, type: !46)
!589 = !DILocalVariable(name: "span", scope: !574, file: !1, line: 657, type: !46)
!590 = !DILocalVariable(name: "is_zero", scope: !574, file: !1, line: 658, type: !46)
!591 = !DILocalVariable(name: "is_xzero", scope: !574, file: !1, line: 658, type: !46)
!592 = !DILocalVariable(name: "is_val", scope: !574, file: !1, line: 658, type: !46)
!593 = !DILocalVariable(name: "runlen", scope: !574, file: !1, line: 658, type: !46)
!594 = !DILocalVariable(name: "oplen", scope: !595, file: !1, line: 681, type: !46)
!595 = distinct !DILexicalBlock(scope: !574, file: !1, line: 680, column: 20)
!596 = !DILocalVariable(name: "seq", scope: !574, file: !1, line: 777, type: !597)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 40, elements: !598)
!598 = !{!599}
!599 = !DISubrange(count: 5)
!600 = !DILocalVariable(name: "n", scope: !574, file: !1, line: 777, type: !16)
!601 = !DILocalVariable(name: "last", scope: !574, file: !1, line: 778, type: !15)
!602 = !DILocalVariable(name: "len", scope: !574, file: !1, line: 779, type: !15)
!603 = !DILocalVariable(name: "_l", scope: !604, file: !1, line: 786, type: !15)
!604 = distinct !DILexicalBlock(scope: !605, file: !1, line: 786, column: 17)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 785, column: 48)
!606 = distinct !DILexicalBlock(scope: !607, file: !1, line: 785, column: 17)
!607 = distinct !DILexicalBlock(scope: !608, file: !1, line: 783, column: 29)
!608 = distinct !DILexicalBlock(scope: !609, file: !1, line: 783, column: 13)
!609 = distinct !DILexicalBlock(scope: !610, file: !1, line: 781, column: 30)
!610 = distinct !DILexicalBlock(scope: !574, file: !1, line: 781, column: 9)
!611 = !DILocalVariable(name: "_l", scope: !612, file: !1, line: 798, type: !15)
!612 = distinct !DILexicalBlock(scope: !613, file: !1, line: 798, column: 17)
!613 = distinct !DILexicalBlock(scope: !614, file: !1, line: 797, column: 48)
!614 = distinct !DILexicalBlock(scope: !615, file: !1, line: 797, column: 17)
!615 = distinct !DILexicalBlock(scope: !616, file: !1, line: 795, column: 28)
!616 = distinct !DILexicalBlock(scope: !609, file: !1, line: 795, column: 13)
!617 = !DILocalVariable(name: "curval", scope: !618, file: !1, line: 807, type: !15)
!618 = distinct !DILexicalBlock(scope: !610, file: !1, line: 805, column: 12)
!619 = !DILocalVariable(name: "seqlen", scope: !574, file: !1, line: 827, type: !15)
!620 = !DILocalVariable(name: "oldlen", scope: !574, file: !1, line: 828, type: !15)
!621 = !DILocalVariable(name: "deltalen", scope: !574, file: !1, line: 829, type: !15)
!622 = !DILocalVariable(name: "scanlen", scope: !574, file: !1, line: 845, type: !15)
!623 = !DILocalVariable(name: "v1", scope: !624, file: !1, line: 857, type: !15)
!624 = distinct !DILexicalBlock(scope: !625, file: !1, line: 856, column: 50)
!625 = distinct !DILexicalBlock(scope: !626, file: !1, line: 856, column: 13)
!626 = distinct !DILexicalBlock(scope: !574, file: !1, line: 846, column: 34)
!627 = !DILocalVariable(name: "v2", scope: !624, file: !1, line: 858, type: !15)
!628 = !DILocalVariable(name: "len", scope: !629, file: !1, line: 860, type: !15)
!629 = distinct !DILexicalBlock(scope: !630, file: !1, line: 859, column: 27)
!630 = distinct !DILexicalBlock(scope: !624, file: !1, line: 859, column: 17)
!631 = !DILocalVariable(name: "dense_retval", scope: !574, file: !1, line: 892, type: !15)
!632 = !DILocation(line: 654, column: 24, scope: !574)
!633 = !DILocation(line: 654, column: 32, scope: !574)
!634 = !DILocation(line: 654, column: 47, scope: !574)
!635 = !DILocation(line: 658, column: 10, scope: !574)
!636 = !DILocation(line: 658, column: 23, scope: !574)
!637 = !DILocation(line: 658, column: 37, scope: !574)
!638 = !DILocation(line: 658, column: 49, scope: !574)
!639 = !DILocation(line: 662, column: 15, scope: !640)
!640 = distinct !DILexicalBlock(scope: !574, file: !1, line: 662, column: 9)
!641 = !DILocation(line: 662, column: 9, scope: !574)
!642 = !DILocation(line: 669, column: 32, scope: !574)
!643 = !DILocation(line: 669, column: 14, scope: !574)
!644 = !DILocation(line: 669, column: 12, scope: !574)
!645 = !DILocation(line: 656, column: 39, scope: !574)
!646 = !DILocation(line: 656, column: 24, scope: !574)
!647 = !DILocation(line: 87, column: 39, scope: !491, inlinedAt: !648)
!648 = distinct !DILocation(line: 674, column: 15, scope: !574)
!649 = !DILocation(line: 88, column: 27, scope: !491, inlinedAt: !648)
!650 = !DILocation(line: 88, column: 19, scope: !491, inlinedAt: !648)
!651 = !DILocation(line: 89, column: 5, scope: !491, inlinedAt: !648)
!652 = !DILocation(line: 91, column: 20, scope: !505, inlinedAt: !648)
!653 = !DILocation(line: 91, column: 13, scope: !505, inlinedAt: !648)
!654 = !DILocation(line: 93, column: 20, scope: !505, inlinedAt: !648)
!655 = !DILocation(line: 93, column: 34, scope: !505, inlinedAt: !648)
!656 = !DILocation(line: 93, column: 13, scope: !505, inlinedAt: !648)
!657 = !DILocation(line: 95, column: 20, scope: !505, inlinedAt: !648)
!658 = !DILocation(line: 95, column: 35, scope: !505, inlinedAt: !648)
!659 = !DILocation(line: 95, column: 13, scope: !505, inlinedAt: !648)
!660 = !DILocation(line: 97, column: 20, scope: !505, inlinedAt: !648)
!661 = !DILocation(line: 97, column: 35, scope: !505, inlinedAt: !648)
!662 = !DILocation(line: 97, column: 13, scope: !505, inlinedAt: !648)
!663 = !DILocation(line: 99, column: 20, scope: !505, inlinedAt: !648)
!664 = !DILocation(line: 99, column: 35, scope: !505, inlinedAt: !648)
!665 = !DILocation(line: 99, column: 13, scope: !505, inlinedAt: !648)
!666 = !DILocation(line: 0, scope: !505, inlinedAt: !648)
!667 = !DILocation(line: 656, column: 33, scope: !574)
!668 = !DILocation(line: 657, column: 10, scope: !574)
!669 = !DILocation(line: 656, column: 43, scope: !574)
!670 = !DILocation(line: 656, column: 50, scope: !574)
!671 = !DILocation(line: 657, column: 17, scope: !574)
!672 = !DILocation(line: 680, column: 13, scope: !574)
!673 = !DILocation(line: 680, column: 5, scope: !574)
!674 = !DILocation(line: 681, column: 14, scope: !595)
!675 = !DILocation(line: 689, column: 13, scope: !676)
!676 = distinct !DILexicalBlock(scope: !595, file: !1, line: 689, column: 13)
!677 = !DILocation(line: 689, column: 13, scope: !595)
!678 = !DILocation(line: 690, column: 20, scope: !679)
!679 = distinct !DILexicalBlock(scope: !676, file: !1, line: 689, column: 36)
!680 = !DILocation(line: 691, column: 9, scope: !679)
!681 = !DILocation(line: 691, column: 20, scope: !682)
!682 = distinct !DILexicalBlock(scope: !676, file: !1, line: 691, column: 20)
!683 = !DILocation(line: 691, column: 20, scope: !676)
!684 = !DILocation(line: 692, column: 20, scope: !685)
!685 = distinct !DILexicalBlock(scope: !682, file: !1, line: 691, column: 42)
!686 = !DILocation(line: 693, column: 9, scope: !685)
!687 = !DILocation(line: 694, column: 20, scope: !688)
!688 = distinct !DILexicalBlock(scope: !682, file: !1, line: 693, column: 16)
!689 = !DILocation(line: 0, scope: !688)
!690 = !DILocation(line: 698, column: 27, scope: !691)
!691 = distinct !DILexicalBlock(scope: !595, file: !1, line: 698, column: 13)
!692 = !DILocation(line: 698, column: 19, scope: !691)
!693 = !DILocation(line: 698, column: 13, scope: !595)
!694 = !DILocation(line: 700, column: 11, scope: !595)
!695 = !DILocation(line: 676, column: 11, scope: !574)
!696 = !DILocation(line: 677, column: 10, scope: !574)
!697 = !DILocation(line: 673, column: 16, scope: !574)
!698 = !DILocation(line: 703, column: 24, scope: !699)
!699 = distinct !DILexicalBlock(scope: !574, file: !1, line: 703, column: 9)
!700 = !DILocation(line: 703, column: 19, scope: !699)
!701 = !DILocation(line: 705, column: 12, scope: !574)
!702 = !DILocation(line: 706, column: 14, scope: !703)
!703 = distinct !DILexicalBlock(scope: !574, file: !1, line: 706, column: 9)
!704 = !DILocation(line: 706, column: 9, scope: !574)
!705 = !DILocation(line: 711, column: 9, scope: !706)
!706 = distinct !DILexicalBlock(scope: !574, file: !1, line: 711, column: 9)
!707 = !DILocation(line: 711, column: 9, scope: !574)
!708 = !DILocation(line: 714, column: 16, scope: !706)
!709 = !DILocation(line: 744, column: 20, scope: !710)
!710 = distinct !DILexicalBlock(scope: !711, file: !1, line: 743, column: 17)
!711 = distinct !DILexicalBlock(scope: !574, file: !1, line: 743, column: 9)
!712 = !DILocation(line: 656, column: 13, scope: !574)
!713 = !DILocation(line: 746, column: 22, scope: !714)
!714 = distinct !DILexicalBlock(scope: !710, file: !1, line: 746, column: 13)
!715 = !DILocation(line: 746, column: 13, scope: !710)
!716 = !DILocation(line: 719, column: 18, scope: !717)
!717 = distinct !DILexicalBlock(scope: !718, file: !1, line: 717, column: 12)
!718 = distinct !DILexicalBlock(scope: !706, file: !1, line: 714, column: 16)
!719 = !DILocation(line: 749, column: 20, scope: !720)
!720 = distinct !DILexicalBlock(scope: !710, file: !1, line: 749, column: 13)
!721 = !DILocation(line: 749, column: 13, scope: !710)
!722 = !DILocation(line: 750, column: 13, scope: !723)
!723 = distinct !DILexicalBlock(scope: !724, file: !1, line: 750, column: 13)
!724 = distinct !DILexicalBlock(scope: !720, file: !1, line: 749, column: 26)
!725 = !DILocation(line: 751, column: 13, scope: !724)
!726 = !DILocation(line: 713, column: 18, scope: !727)
!727 = distinct !DILexicalBlock(scope: !706, file: !1, line: 711, column: 32)
!728 = !DILocation(line: 757, column: 27, scope: !729)
!729 = distinct !DILexicalBlock(scope: !574, file: !1, line: 757, column: 9)
!730 = !DILocation(line: 757, column: 17, scope: !729)
!731 = !DILocation(line: 758, column: 9, scope: !732)
!732 = distinct !DILexicalBlock(scope: !733, file: !1, line: 758, column: 9)
!733 = distinct !DILexicalBlock(scope: !729, file: !1, line: 757, column: 33)
!734 = !DILocation(line: 759, column: 9, scope: !733)
!735 = !DILocation(line: 777, column: 13, scope: !574)
!736 = !DILocation(line: 777, column: 26, scope: !574)
!737 = !DILocation(line: 777, column: 22, scope: !574)
!738 = !DILocation(line: 778, column: 16, scope: !574)
!739 = !DILocation(line: 778, column: 9, scope: !574)
!740 = !DILocation(line: 781, column: 20, scope: !610)
!741 = !DILocation(line: 781, column: 17, scope: !610)
!742 = !DILocation(line: 783, column: 19, scope: !608)
!743 = !DILocation(line: 783, column: 13, scope: !609)
!744 = !DILocation(line: 784, column: 24, scope: !607)
!745 = !DILocation(line: 784, column: 19, scope: !607)
!746 = !DILocation(line: 779, column: 9, scope: !574)
!747 = !DILocation(line: 785, column: 21, scope: !606)
!748 = !DILocation(line: 785, column: 17, scope: !607)
!749 = !DILocation(line: 786, column: 17, scope: !604)
!750 = !DILocation(line: 787, column: 19, scope: !605)
!751 = !DILocation(line: 788, column: 13, scope: !605)
!752 = !DILocation(line: 789, column: 17, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !1, line: 789, column: 17)
!754 = distinct !DILexicalBlock(scope: !606, file: !1, line: 788, column: 20)
!755 = !DILocation(line: 790, column: 18, scope: !754)
!756 = !DILocation(line: 0, scope: !574)
!757 = !DILocation(line: 793, column: 9, scope: !758)
!758 = distinct !DILexicalBlock(scope: !609, file: !1, line: 793, column: 9)
!759 = !DILocation(line: 794, column: 10, scope: !609)
!760 = !DILocation(line: 795, column: 22, scope: !616)
!761 = !DILocation(line: 795, column: 19, scope: !616)
!762 = !DILocation(line: 795, column: 13, scope: !609)
!763 = !DILocation(line: 796, column: 19, scope: !615)
!764 = !DILocation(line: 797, column: 21, scope: !614)
!765 = !DILocation(line: 797, column: 17, scope: !615)
!766 = !DILocation(line: 798, column: 17, scope: !612)
!767 = !DILocation(line: 799, column: 19, scope: !613)
!768 = !DILocation(line: 800, column: 13, scope: !613)
!769 = !DILocation(line: 801, column: 17, scope: !770)
!770 = distinct !DILexicalBlock(scope: !771, file: !1, line: 801, column: 17)
!771 = distinct !DILexicalBlock(scope: !614, file: !1, line: 800, column: 20)
!772 = !DILocation(line: 802, column: 18, scope: !771)
!773 = !DILocation(line: 807, column: 22, scope: !618)
!774 = !DILocation(line: 809, column: 19, scope: !775)
!775 = distinct !DILexicalBlock(scope: !618, file: !1, line: 809, column: 13)
!776 = !DILocation(line: 809, column: 13, scope: !618)
!777 = !DILocation(line: 810, column: 24, scope: !778)
!778 = distinct !DILexicalBlock(scope: !775, file: !1, line: 809, column: 29)
!779 = !DILocation(line: 810, column: 19, scope: !778)
!780 = !DILocation(line: 811, column: 13, scope: !781)
!781 = distinct !DILexicalBlock(scope: !778, file: !1, line: 811, column: 13)
!782 = !DILocation(line: 812, column: 14, scope: !778)
!783 = !DILocation(line: 813, column: 9, scope: !778)
!784 = !DILocation(line: 814, column: 9, scope: !785)
!785 = distinct !DILexicalBlock(scope: !618, file: !1, line: 814, column: 9)
!786 = !DILocation(line: 815, column: 10, scope: !618)
!787 = !DILocation(line: 816, column: 22, scope: !788)
!788 = distinct !DILexicalBlock(scope: !618, file: !1, line: 816, column: 13)
!789 = !DILocation(line: 816, column: 19, scope: !788)
!790 = !DILocation(line: 816, column: 13, scope: !618)
!791 = !DILocation(line: 817, column: 19, scope: !792)
!792 = distinct !DILexicalBlock(scope: !788, file: !1, line: 816, column: 28)
!793 = !DILocation(line: 818, column: 13, scope: !794)
!794 = distinct !DILexicalBlock(scope: !792, file: !1, line: 818, column: 13)
!795 = !DILocation(line: 819, column: 14, scope: !792)
!796 = !DILocation(line: 820, column: 9, scope: !792)
!797 = !DILocation(line: 0, scope: !792)
!798 = !DILocation(line: 827, column: 20, scope: !574)
!799 = !DILocation(line: 827, column: 19, scope: !574)
!800 = !DILocation(line: 827, column: 10, scope: !574)
!801 = !DILocation(line: 828, column: 19, scope: !574)
!802 = !DILocation(line: 828, column: 10, scope: !574)
!803 = !DILocation(line: 829, column: 27, scope: !574)
!804 = !DILocation(line: 829, column: 10, scope: !574)
!805 = !DILocation(line: 831, column: 19, scope: !806)
!806 = distinct !DILexicalBlock(scope: !574, file: !1, line: 831, column: 10)
!807 = !DILocation(line: 831, column: 23, scope: !806)
!808 = !DILocation(line: 87, column: 39, scope: !491, inlinedAt: !809)
!809 = distinct !DILocation(line: 832, column: 10, scope: !806)
!810 = !DILocation(line: 88, column: 27, scope: !491, inlinedAt: !809)
!811 = !DILocation(line: 88, column: 19, scope: !491, inlinedAt: !809)
!812 = !DILocation(line: 89, column: 5, scope: !491, inlinedAt: !809)
!813 = !DILocation(line: 91, column: 20, scope: !505, inlinedAt: !809)
!814 = !DILocation(line: 91, column: 13, scope: !505, inlinedAt: !809)
!815 = !DILocation(line: 93, column: 20, scope: !505, inlinedAt: !809)
!816 = !DILocation(line: 93, column: 34, scope: !505, inlinedAt: !809)
!817 = !DILocation(line: 93, column: 13, scope: !505, inlinedAt: !809)
!818 = !DILocation(line: 95, column: 20, scope: !505, inlinedAt: !809)
!819 = !DILocation(line: 95, column: 35, scope: !505, inlinedAt: !809)
!820 = !DILocation(line: 95, column: 13, scope: !505, inlinedAt: !809)
!821 = !DILocation(line: 97, column: 20, scope: !505, inlinedAt: !809)
!822 = !DILocation(line: 97, column: 35, scope: !505, inlinedAt: !809)
!823 = !DILocation(line: 97, column: 13, scope: !505, inlinedAt: !809)
!824 = !DILocation(line: 99, column: 20, scope: !505, inlinedAt: !809)
!825 = !DILocation(line: 99, column: 35, scope: !505, inlinedAt: !809)
!826 = !DILocation(line: 99, column: 13, scope: !505, inlinedAt: !809)
!827 = !DILocation(line: 0, scope: !505, inlinedAt: !809)
!828 = !DILocation(line: 832, column: 25, scope: !806)
!829 = !DILocation(line: 832, column: 24, scope: !806)
!830 = !DILocation(line: 832, column: 43, scope: !806)
!831 = !{!832, !126, i64 2840}
!832 = !{!"redisServer", !409, i64 0, !485, i64 8, !485, i64 16, !485, i64 24, !409, i64 32, !409, i64 36, !409, i64 40, !485, i64 48, !485, i64 56, !485, i64 64, !485, i64 72, !409, i64 80, !409, i64 84, !409, i64 88, !409, i64 92, !485, i64 96, !485, i64 104, !409, i64 112, !409, i64 116, !127, i64 120, !409, i64 164, !126, i64 168, !409, i64 176, !485, i64 184, !485, i64 192, !485, i64 200, !127, i64 208, !409, i64 216, !409, i64 220, !127, i64 224, !409, i64 352, !485, i64 360, !409, i64 368, !127, i64 372, !409, i64 436, !409, i64 440, !127, i64 444, !409, i64 508, !485, i64 512, !485, i64 520, !485, i64 528, !485, i64 536, !485, i64 544, !485, i64 552, !485, i64 560, !409, i64 568, !833, i64 576, !127, i64 584, !485, i64 840, !126, i64 848, !409, i64 856, !409, i64 860, !126, i64 864, !126, i64 872, !126, i64 880, !126, i64 888, !485, i64 896, !485, i64 904, !485, i64 912, !485, i64 920, !485, i64 928, !485, i64 936, !485, i64 944, !485, i64 952, !485, i64 960, !485, i64 968, !485, i64 976, !485, i64 984, !485, i64 992, !126, i64 1000, !833, i64 1008, !833, i64 1016, !833, i64 1024, !834, i64 1032, !833, i64 1040, !833, i64 1048, !833, i64 1056, !833, i64 1064, !833, i64 1072, !833, i64 1080, !833, i64 1088, !833, i64 1096, !833, i64 1104, !126, i64 1112, !833, i64 1120, !834, i64 1128, !833, i64 1136, !833, i64 1144, !833, i64 1152, !833, i64 1160, !485, i64 1168, !833, i64 1176, !833, i64 1184, !126, i64 1192, !835, i64 1200, !833, i64 1240, !833, i64 1248, !126, i64 1256, !126, i64 1264, !127, i64 1272, !409, i64 1728, !409, i64 1732, !409, i64 1736, !409, i64 1740, !409, i64 1744, !126, i64 1752, !409, i64 1760, !409, i64 1764, !409, i64 1768, !409, i64 1772, !126, i64 1776, !126, i64 1784, !409, i64 1792, !409, i64 1796, !409, i64 1800, !409, i64 1804, !127, i64 1808, !409, i64 1880, !409, i64 1884, !485, i64 1888, !409, i64 1896, !409, i64 1900, !126, i64 1904, !126, i64 1912, !126, i64 1920, !126, i64 1928, !409, i64 1936, !409, i64 1940, !485, i64 1944, !485, i64 1952, !409, i64 1960, !409, i64 1964, !126, i64 1968, !126, i64 1976, !126, i64 1984, !126, i64 1992, !409, i64 2000, !126, i64 2008, !409, i64 2016, !409, i64 2020, !409, i64 2024, !409, i64 2028, !409, i64 2032, !409, i64 2036, !409, i64 2040, !409, i64 2044, !409, i64 2048, !409, i64 2052, !409, i64 2056, !409, i64 2060, !409, i64 2064, !485, i64 2072, !833, i64 2080, !833, i64 2088, !409, i64 2096, !485, i64 2104, !409, i64 2112, !485, i64 2120, !409, i64 2128, !409, i64 2132, !126, i64 2136, !126, i64 2144, !126, i64 2152, !126, i64 2160, !409, i64 2168, !409, i64 2172, !409, i64 2176, !409, i64 2180, !409, i64 2184, !409, i64 2188, !127, i64 2192, !836, i64 2200, !837, i64 2224, !485, i64 2240, !409, i64 2248, !485, i64 2256, !409, i64 2264, !127, i64 2268, !127, i64 2309, !833, i64 2352, !833, i64 2360, !409, i64 2368, !409, i64 2372, !485, i64 2376, !833, i64 2384, !833, i64 2392, !833, i64 2400, !833, i64 2408, !126, i64 2416, !126, i64 2424, !409, i64 2432, !409, i64 2436, !409, i64 2440, !409, i64 2444, !409, i64 2448, !485, i64 2456, !485, i64 2464, !409, i64 2472, !409, i64 2476, !485, i64 2480, !485, i64 2488, !409, i64 2496, !409, i64 2500, !126, i64 2504, !126, i64 2512, !126, i64 2520, !409, i64 2528, !409, i64 2532, !485, i64 2536, !126, i64 2544, !409, i64 2552, !409, i64 2556, !409, i64 2560, !126, i64 2568, !409, i64 2576, !409, i64 2580, !409, i64 2584, !485, i64 2592, !127, i64 2600, !833, i64 2648, !409, i64 2656, !485, i64 2664, !485, i64 2672, !409, i64 2680, !485, i64 2688, !409, i64 2696, !409, i64 2700, !833, i64 2704, !409, i64 2712, !409, i64 2716, !409, i64 2720, !409, i64 2724, !833, i64 2728, !409, i64 2736, !127, i64 2740, !485, i64 2768, !485, i64 2776, !409, i64 2784, !409, i64 2788, !409, i64 2792, !409, i64 2796, !126, i64 2800, !126, i64 2808, !126, i64 2816, !126, i64 2824, !126, i64 2832, !126, i64 2840, !126, i64 2848, !126, i64 2856, !409, i64 2864, !409, i64 2868, !126, i64 2872, !126, i64 2880, !409, i64 2888, !833, i64 2896, !485, i64 2904, !485, i64 2912, !409, i64 2920, !409, i64 2924, !833, i64 2928, !485, i64 2936, !485, i64 2944, !409, i64 2952, !409, i64 2956, !409, i64 2960, !409, i64 2964, !485, i64 2968, !409, i64 2976, !409, i64 2980, !409, i64 2984, !485, i64 2992, !485, i64 3000, !485, i64 3008, !485, i64 3016, !833, i64 3024, !833, i64 3032, !833, i64 3040, !409, i64 3048, !409, i64 3052, !409, i64 3056, !409, i64 3060, !409, i64 3064, !409, i64 3068, !409, i64 3072, !409, i64 3076, !409, i64 3080, !409, i64 3084, !409, i64 3088, !833, i64 3096, !485, i64 3104, !485, i64 3112, !485, i64 3120, !409, i64 3128, !409, i64 3132, !409, i64 3136, !126, i64 3144, !485, i64 3152, !485, i64 3160, !485, i64 3168}
!833 = !{!"long long", !127, i64 0}
!834 = !{!"double", !127, i64 0}
!835 = !{!"malloc_stats", !126, i64 0, !126, i64 8, !126, i64 16, !126, i64 24, !126, i64 32}
!836 = !{!"", !409, i64 0, !126, i64 8, !833, i64 16}
!837 = !{!"redisOpArray", !485, i64 0, !409, i64 8}
!838 = !DILocation(line: 832, column: 34, scope: !806)
!839 = !DILocation(line: 831, column: 10, scope: !574)
!840 = !DILocation(line: 833, column: 10, scope: !841)
!841 = distinct !DILexicalBlock(scope: !574, file: !1, line: 833, column: 10)
!842 = !DILocation(line: 833, column: 19, scope: !841)
!843 = !DILocation(line: 833, column: 40, scope: !841)
!844 = !DILocation(line: 833, column: 58, scope: !841)
!845 = !DILocation(line: 833, column: 28, scope: !841)
!846 = !DILocation(line: 834, column: 20, scope: !574)
!847 = !DILocation(line: 834, column: 6, scope: !574)
!848 = !DILocation(line: 835, column: 19, scope: !574)
!849 = !DILocation(line: 835, column: 6, scope: !574)
!850 = !DILocation(line: 836, column: 10, scope: !574)
!851 = !DILocation(line: 836, column: 6, scope: !574)
!852 = !DILocation(line: 844, column: 9, scope: !574)
!853 = !DILocation(line: 845, column: 9, scope: !574)
!854 = !DILocation(line: 846, column: 14, scope: !574)
!855 = !DILocation(line: 846, column: 20, scope: !574)
!856 = !DILocation(line: 846, column: 30, scope: !574)
!857 = !DILocation(line: 846, column: 5, scope: !574)
!858 = !DILocation(line: 847, column: 13, scope: !859)
!859 = distinct !DILexicalBlock(scope: !626, file: !1, line: 847, column: 13)
!860 = !DILocation(line: 847, column: 13, scope: !626)
!861 = !DILocation(line: 848, column: 15, scope: !862)
!862 = distinct !DILexicalBlock(scope: !859, file: !1, line: 847, column: 37)
!863 = !DILocation(line: 849, column: 13, scope: !862)
!864 = distinct !{!864, !857, !865}
!865 = !DILocation(line: 874, column: 5, scope: !574)
!866 = !DILocation(line: 856, column: 17, scope: !625)
!867 = !DILocation(line: 856, column: 23, scope: !625)
!868 = !DILocation(line: 856, column: 26, scope: !625)
!869 = !DILocation(line: 856, column: 13, scope: !626)
!870 = !DILocation(line: 857, column: 17, scope: !624)
!871 = !DILocation(line: 859, column: 20, scope: !630)
!872 = !DILocation(line: 859, column: 17, scope: !624)
!873 = !DILocation(line: 860, column: 27, scope: !629)
!874 = !DILocation(line: 860, column: 49, scope: !629)
!875 = !DILocation(line: 860, column: 48, scope: !629)
!876 = !DILocation(line: 860, column: 21, scope: !629)
!877 = !DILocation(line: 861, column: 25, scope: !878)
!878 = distinct !DILexicalBlock(scope: !629, file: !1, line: 861, column: 21)
!879 = !DILocation(line: 861, column: 21, scope: !629)
!880 = !DILocation(line: 862, column: 21, scope: !881)
!881 = distinct !DILexicalBlock(scope: !882, file: !1, line: 862, column: 21)
!882 = distinct !DILexicalBlock(scope: !878, file: !1, line: 861, column: 52)
!883 = !DILocation(line: 863, column: 38, scope: !882)
!884 = !DILocation(line: 863, column: 21, scope: !882)
!885 = !DILocation(line: 864, column: 35, scope: !882)
!886 = !DILocation(line: 864, column: 21, scope: !882)
!887 = !DILocation(line: 865, column: 24, scope: !882)
!888 = !DILocation(line: 877, column: 14, scope: !574)
!889 = !DILocation(line: 655, column: 20, scope: !574)
!890 = !DILocation(line: 878, column: 5, scope: !574)
!891 = !DILocation(line: 879, column: 5, scope: !574)
!892 = !DILocation(line: 882, column: 9, scope: !893)
!893 = distinct !DILexicalBlock(scope: !574, file: !1, line: 882, column: 9)
!894 = !DILocation(line: 882, column: 29, scope: !893)
!895 = !DILocation(line: 882, column: 9, scope: !574)
!896 = !DILocation(line: 883, column: 14, scope: !574)
!897 = !DILocation(line: 493, column: 26, scope: !224, inlinedAt: !898)
!898 = distinct !DILocation(line: 892, column: 24, scope: !574)
!899 = !DILocation(line: 493, column: 42, scope: !224, inlinedAt: !898)
!900 = !DILocation(line: 493, column: 57, scope: !224, inlinedAt: !898)
!901 = !DILocation(line: 496, column: 5, scope: !233, inlinedAt: !898)
!902 = !DILocation(line: 497, column: 9, scope: !242, inlinedAt: !898)
!903 = !DILocation(line: 497, column: 15, scope: !242, inlinedAt: !898)
!904 = !DILocation(line: 497, column: 9, scope: !224, inlinedAt: !898)
!905 = !DILocation(line: 498, column: 9, scope: !240, inlinedAt: !898)
!906 = !DILocation(line: 892, column: 9, scope: !574)
!907 = !DILocation(line: 893, column: 5, scope: !574)
!908 = !DILocation(line: 895, column: 1, scope: !574)
!909 = distinct !DISubprogram(name: "hllSparseAdd", scope: !1, file: !1, line: 903, type: !910, isLocal: false, isDefinition: true, scopeLine: 903, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !912)
!910 = !DISubroutineType(types: !911)
!911 = !{!15, !449, !43, !188}
!912 = !{!913, !914, !915, !916, !917}
!913 = !DILocalVariable(name: "o", arg: 1, scope: !909, file: !1, line: 903, type: !449)
!914 = !DILocalVariable(name: "ele", arg: 2, scope: !909, file: !1, line: 903, type: !43)
!915 = !DILocalVariable(name: "elesize", arg: 3, scope: !909, file: !1, line: 903, type: !188)
!916 = !DILocalVariable(name: "index", scope: !909, file: !1, line: 904, type: !46)
!917 = !DILocalVariable(name: "count", scope: !909, file: !1, line: 905, type: !6)
!918 = !DILocation(line: 903, column: 24, scope: !909)
!919 = !DILocation(line: 903, column: 42, scope: !909)
!920 = !DILocation(line: 903, column: 54, scope: !909)
!921 = !DILocation(line: 451, column: 30, scope: !185, inlinedAt: !922)
!922 = distinct !DILocation(line: 905, column: 21, scope: !909)
!923 = !DILocation(line: 451, column: 42, scope: !185, inlinedAt: !922)
!924 = !DILocation(line: 466, column: 30, scope: !185, inlinedAt: !922)
!925 = !DILocation(line: 466, column: 12, scope: !185, inlinedAt: !922)
!926 = !DILocation(line: 452, column: 14, scope: !185, inlinedAt: !922)
!927 = !DILocation(line: 452, column: 25, scope: !185, inlinedAt: !922)
!928 = !DILocation(line: 468, column: 10, scope: !185, inlinedAt: !922)
!929 = !DILocation(line: 469, column: 10, scope: !185, inlinedAt: !922)
!930 = !DILocation(line: 452, column: 20, scope: !185, inlinedAt: !922)
!931 = !DILocation(line: 453, column: 9, scope: !185, inlinedAt: !922)
!932 = !DILocation(line: 473, column: 17, scope: !185, inlinedAt: !922)
!933 = !DILocation(line: 473, column: 24, scope: !185, inlinedAt: !922)
!934 = !DILocation(line: 473, column: 5, scope: !185, inlinedAt: !922)
!935 = !DILocation(line: 474, column: 14, scope: !216, inlinedAt: !922)
!936 = !DILocation(line: 475, column: 13, scope: !216, inlinedAt: !922)
!937 = !DILocation(line: 477, column: 13, scope: !185, inlinedAt: !922)
!938 = !DILocation(line: 905, column: 13, scope: !909)
!939 = !DILocation(line: 904, column: 10, scope: !909)
!940 = !DILocation(line: 907, column: 12, scope: !909)
!941 = !DILocation(line: 907, column: 5, scope: !909)
!942 = distinct !DISubprogram(name: "hllSparseRegHisto", scope: !1, file: !1, line: 911, type: !943, isLocal: false, isDefinition: true, scopeLine: 911, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !945)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !16, !15, !302, !302}
!945 = !{!946, !947, !948, !949, !950, !951, !952, !953, !954}
!946 = !DILocalVariable(name: "sparse", arg: 1, scope: !942, file: !1, line: 911, type: !16)
!947 = !DILocalVariable(name: "sparselen", arg: 2, scope: !942, file: !1, line: 911, type: !15)
!948 = !DILocalVariable(name: "invalid", arg: 3, scope: !942, file: !1, line: 911, type: !302)
!949 = !DILocalVariable(name: "reghisto", arg: 4, scope: !942, file: !1, line: 911, type: !302)
!950 = !DILocalVariable(name: "idx", scope: !942, file: !1, line: 912, type: !15)
!951 = !DILocalVariable(name: "runlen", scope: !942, file: !1, line: 912, type: !15)
!952 = !DILocalVariable(name: "regval", scope: !942, file: !1, line: 912, type: !15)
!953 = !DILocalVariable(name: "end", scope: !942, file: !1, line: 913, type: !16)
!954 = !DILocalVariable(name: "p", scope: !942, file: !1, line: 913, type: !16)
!955 = !DILocation(line: 911, column: 33, scope: !942)
!956 = !DILocation(line: 911, column: 45, scope: !942)
!957 = !DILocation(line: 911, column: 61, scope: !942)
!958 = !DILocation(line: 911, column: 75, scope: !942)
!959 = !DILocation(line: 912, column: 9, scope: !942)
!960 = !DILocation(line: 913, column: 26, scope: !942)
!961 = !DILocation(line: 913, column: 14, scope: !942)
!962 = !DILocation(line: 913, column: 39, scope: !942)
!963 = !DILocation(line: 915, column: 13, scope: !942)
!964 = !DILocation(line: 915, column: 5, scope: !942)
!965 = !DILocation(line: 916, column: 13, scope: !966)
!966 = distinct !DILexicalBlock(scope: !967, file: !1, line: 916, column: 13)
!967 = distinct !DILexicalBlock(scope: !942, file: !1, line: 915, column: 20)
!968 = !DILocation(line: 916, column: 13, scope: !967)
!969 = !DILocation(line: 917, column: 22, scope: !970)
!970 = distinct !DILexicalBlock(scope: !966, file: !1, line: 916, column: 36)
!971 = !DILocation(line: 912, column: 18, scope: !942)
!972 = !DILocation(line: 919, column: 25, scope: !970)
!973 = !DILocation(line: 921, column: 9, scope: !970)
!974 = !DILocation(line: 922, column: 22, scope: !975)
!975 = distinct !DILexicalBlock(scope: !976, file: !1, line: 921, column: 44)
!976 = distinct !DILexicalBlock(scope: !966, file: !1, line: 921, column: 20)
!977 = !DILocation(line: 924, column: 25, scope: !975)
!978 = !DILocation(line: 926, column: 9, scope: !975)
!979 = !DILocation(line: 927, column: 22, scope: !980)
!980 = distinct !DILexicalBlock(scope: !976, file: !1, line: 926, column: 16)
!981 = !DILocation(line: 928, column: 22, scope: !980)
!982 = !DILocation(line: 912, column: 26, scope: !942)
!983 = !DILocation(line: 930, column: 13, scope: !980)
!984 = !DILocation(line: 930, column: 30, scope: !980)
!985 = !DILocation(line: 0, scope: !970)
!986 = !DILocation(line: 0, scope: !980)
!987 = distinct !{!987, !964, !988}
!988 = !DILocation(line: 933, column: 5, scope: !942)
!989 = !DILocation(line: 934, column: 13, scope: !990)
!990 = distinct !DILexicalBlock(scope: !942, file: !1, line: 934, column: 9)
!991 = !DILocation(line: 934, column: 33, scope: !990)
!992 = !DILocation(line: 934, column: 30, scope: !990)
!993 = !DILocation(line: 934, column: 51, scope: !990)
!994 = !DILocation(line: 934, column: 42, scope: !990)
!995 = !DILocation(line: 935, column: 1, scope: !942)
!996 = distinct !DISubprogram(name: "hllRawRegHisto", scope: !1, file: !1, line: 945, type: !300, isLocal: false, isDefinition: true, scopeLine: 945, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !997)
!997 = !{!998, !999, !1000, !1001, !1002}
!998 = !DILocalVariable(name: "registers", arg: 1, scope: !996, file: !1, line: 945, type: !16)
!999 = !DILocalVariable(name: "reghisto", arg: 2, scope: !996, file: !1, line: 945, type: !302)
!1000 = !DILocalVariable(name: "word", scope: !996, file: !1, line: 946, type: !11)
!1001 = !DILocalVariable(name: "bytes", scope: !996, file: !1, line: 947, type: !16)
!1002 = !DILocalVariable(name: "j", scope: !996, file: !1, line: 948, type: !15)
!1003 = !DILocation(line: 945, column: 30, scope: !996)
!1004 = !DILocation(line: 945, column: 46, scope: !996)
!1005 = !DILocation(line: 946, column: 22, scope: !996)
!1006 = !DILocation(line: 946, column: 15, scope: !996)
!1007 = !DILocation(line: 948, column: 9, scope: !996)
!1008 = !DILocation(line: 950, column: 5, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !996, file: !1, line: 950, column: 5)
!1010 = !DILocation(line: 951, column: 13, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !1, line: 951, column: 13)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !1, line: 950, column: 43)
!1013 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 950, column: 5)
!1014 = !DILocation(line: 951, column: 19, scope: !1011)
!1015 = !DILocation(line: 951, column: 13, scope: !1012)
!1016 = !DILocation(line: 954, column: 21, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1011, file: !1, line: 953, column: 16)
!1018 = !DILocation(line: 947, column: 14, scope: !996)
!1019 = !DILocation(line: 955, column: 13, scope: !1017)
!1020 = !DILocation(line: 955, column: 31, scope: !1017)
!1021 = !DILocation(line: 956, column: 22, scope: !1017)
!1022 = !DILocation(line: 956, column: 13, scope: !1017)
!1023 = !DILocation(line: 956, column: 31, scope: !1017)
!1024 = !DILocation(line: 957, column: 22, scope: !1017)
!1025 = !DILocation(line: 957, column: 13, scope: !1017)
!1026 = !DILocation(line: 957, column: 31, scope: !1017)
!1027 = !DILocation(line: 958, column: 22, scope: !1017)
!1028 = !DILocation(line: 958, column: 13, scope: !1017)
!1029 = !DILocation(line: 958, column: 31, scope: !1017)
!1030 = !DILocation(line: 959, column: 22, scope: !1017)
!1031 = !DILocation(line: 959, column: 13, scope: !1017)
!1032 = !DILocation(line: 959, column: 31, scope: !1017)
!1033 = !DILocation(line: 960, column: 22, scope: !1017)
!1034 = !DILocation(line: 960, column: 13, scope: !1017)
!1035 = !DILocation(line: 960, column: 31, scope: !1017)
!1036 = !DILocation(line: 961, column: 22, scope: !1017)
!1037 = !DILocation(line: 961, column: 13, scope: !1017)
!1038 = !DILocation(line: 961, column: 31, scope: !1017)
!1039 = !DILocation(line: 962, column: 22, scope: !1017)
!1040 = !DILocation(line: 962, column: 13, scope: !1017)
!1041 = !DILocation(line: 0, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1011, file: !1, line: 951, column: 25)
!1043 = !DILocation(line: 964, column: 13, scope: !1012)
!1044 = !DILocation(line: 950, column: 39, scope: !1013)
!1045 = !DILocation(line: 950, column: 19, scope: !1013)
!1046 = distinct !{!1046, !1008, !1047}
!1047 = !DILocation(line: 965, column: 5, scope: !1009)
!1048 = !DILocation(line: 966, column: 1, scope: !996)
!1049 = distinct !DISubprogram(name: "hllSigma", scope: !1, file: !1, line: 971, type: !1050, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1052)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!41, !41}
!1052 = !{!1053, !1054, !1055, !1056}
!1053 = !DILocalVariable(name: "x", arg: 1, scope: !1049, file: !1, line: 971, type: !41)
!1054 = !DILocalVariable(name: "zPrime", scope: !1049, file: !1, line: 973, type: !41)
!1055 = !DILocalVariable(name: "y", scope: !1049, file: !1, line: 974, type: !41)
!1056 = !DILocalVariable(name: "z", scope: !1049, file: !1, line: 975, type: !41)
!1057 = !DILocation(line: 971, column: 24, scope: !1049)
!1058 = !DILocation(line: 972, column: 11, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 972, column: 9)
!1060 = !DILocation(line: 972, column: 9, scope: !1049)
!1061 = !DILocation(line: 0, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 976, column: 8)
!1063 = !DILocation(line: 975, column: 12, scope: !1049)
!1064 = !DILocation(line: 974, column: 12, scope: !1049)
!1065 = !DILocation(line: 977, column: 11, scope: !1062)
!1066 = !DILocation(line: 973, column: 12, scope: !1049)
!1067 = !DILocation(line: 979, column: 16, scope: !1062)
!1068 = !DILocation(line: 979, column: 11, scope: !1062)
!1069 = !DILocation(line: 980, column: 11, scope: !1062)
!1070 = !DILocation(line: 981, column: 20, scope: !1049)
!1071 = !DILocation(line: 981, column: 5, scope: !1062)
!1072 = distinct !{!1072, !1073, !1074}
!1073 = !DILocation(line: 976, column: 5, scope: !1049)
!1074 = !DILocation(line: 981, column: 24, scope: !1049)
!1075 = !DILocation(line: 0, scope: !1049)
!1076 = !DILocation(line: 983, column: 1, scope: !1049)
!1077 = distinct !DISubprogram(name: "hllTau", scope: !1, file: !1, line: 988, type: !1050, isLocal: false, isDefinition: true, scopeLine: 988, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1078)
!1078 = !{!1079, !1080, !1081, !1082}
!1079 = !DILocalVariable(name: "x", arg: 1, scope: !1077, file: !1, line: 988, type: !41)
!1080 = !DILocalVariable(name: "zPrime", scope: !1077, file: !1, line: 990, type: !41)
!1081 = !DILocalVariable(name: "y", scope: !1077, file: !1, line: 991, type: !41)
!1082 = !DILocalVariable(name: "z", scope: !1077, file: !1, line: 992, type: !41)
!1083 = !DILocation(line: 988, column: 22, scope: !1077)
!1084 = !DILocation(line: 989, column: 11, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 989, column: 9)
!1086 = !DILocation(line: 989, column: 22, scope: !1085)
!1087 = !DILocation(line: 989, column: 17, scope: !1085)
!1088 = !DILocation(line: 991, column: 12, scope: !1077)
!1089 = !DILocation(line: 992, column: 18, scope: !1077)
!1090 = !DILocation(line: 992, column: 12, scope: !1077)
!1091 = !DILocation(line: 993, column: 5, scope: !1077)
!1092 = !DILocation(line: 0, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 993, column: 8)
!1094 = !DILocation(line: 994, column: 13, scope: !1093)
!1095 = !DILocation(line: 990, column: 12, scope: !1077)
!1096 = !DILocation(line: 996, column: 11, scope: !1093)
!1097 = !DILocation(line: 997, column: 20, scope: !1093)
!1098 = !DILocation(line: 997, column: 14, scope: !1093)
!1099 = !DILocation(line: 997, column: 27, scope: !1093)
!1100 = !DILocation(line: 997, column: 11, scope: !1093)
!1101 = !DILocation(line: 998, column: 20, scope: !1077)
!1102 = !DILocation(line: 998, column: 5, scope: !1093)
!1103 = distinct !{!1103, !1091, !1104}
!1104 = !DILocation(line: 998, column: 24, scope: !1077)
!1105 = !DILocation(line: 999, column: 14, scope: !1077)
!1106 = !DILocation(line: 0, scope: !1077)
!1107 = !DILocation(line: 1000, column: 1, scope: !1077)
!1108 = distinct !DISubprogram(name: "hllCount", scope: !1, file: !1, line: 1013, type: !1109, isLocal: false, isDefinition: true, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1111)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!12, !17, !302}
!1111 = !{!1112, !1113, !1114, !1115, !1116, !1117, !1121}
!1112 = !DILocalVariable(name: "hdr", arg: 1, scope: !1108, file: !1, line: 1013, type: !17)
!1113 = !DILocalVariable(name: "invalid", arg: 2, scope: !1108, file: !1, line: 1013, type: !302)
!1114 = !DILocalVariable(name: "m", scope: !1108, file: !1, line: 1014, type: !41)
!1115 = !DILocalVariable(name: "E", scope: !1108, file: !1, line: 1015, type: !41)
!1116 = !DILocalVariable(name: "j", scope: !1108, file: !1, line: 1016, type: !15)
!1117 = !DILocalVariable(name: "reghisto", scope: !1108, file: !1, line: 1022, type: !1118)
!1118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 2048, elements: !1119)
!1119 = !{!1120}
!1120 = !DISubrange(count: 64)
!1121 = !DILocalVariable(name: "z", scope: !1108, file: !1, line: 1039, type: !41)
!1122 = !DILocation(line: 1013, column: 34, scope: !1108)
!1123 = !DILocation(line: 1013, column: 44, scope: !1108)
!1124 = !DILocation(line: 1014, column: 12, scope: !1108)
!1125 = !DILocation(line: 1022, column: 5, scope: !1108)
!1126 = !DILocation(line: 1022, column: 9, scope: !1108)
!1127 = !DILocation(line: 1025, column: 14, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1108, file: !1, line: 1025, column: 9)
!1129 = !DILocation(line: 1025, column: 9, scope: !1108)
!1130 = !DILocation(line: 1026, column: 26, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1128, file: !1, line: 1025, column: 37)
!1132 = !DILocation(line: 1026, column: 41, scope: !1131)
!1133 = !DILocation(line: 1026, column: 9, scope: !1131)
!1134 = !DILocation(line: 1027, column: 5, scope: !1131)
!1135 = !DILocation(line: 1028, column: 27, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !1, line: 1027, column: 45)
!1137 = distinct !DILexicalBlock(scope: !1128, file: !1, line: 1027, column: 16)
!1138 = !DILocation(line: 88, column: 27, scope: !491, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 1029, column: 26, scope: !1136)
!1140 = !DILocation(line: 88, column: 19, scope: !491, inlinedAt: !1139)
!1141 = !DILocation(line: 89, column: 5, scope: !491, inlinedAt: !1139)
!1142 = !DILocation(line: 91, column: 20, scope: !505, inlinedAt: !1139)
!1143 = !DILocation(line: 91, column: 13, scope: !505, inlinedAt: !1139)
!1144 = !DILocation(line: 87, column: 39, scope: !491, inlinedAt: !1139)
!1145 = !DILocation(line: 93, column: 20, scope: !505, inlinedAt: !1139)
!1146 = !DILocation(line: 93, column: 34, scope: !505, inlinedAt: !1139)
!1147 = !DILocation(line: 93, column: 13, scope: !505, inlinedAt: !1139)
!1148 = !DILocation(line: 95, column: 20, scope: !505, inlinedAt: !1139)
!1149 = !DILocation(line: 95, column: 35, scope: !505, inlinedAt: !1139)
!1150 = !DILocation(line: 95, column: 13, scope: !505, inlinedAt: !1139)
!1151 = !DILocation(line: 97, column: 20, scope: !505, inlinedAt: !1139)
!1152 = !DILocation(line: 97, column: 35, scope: !505, inlinedAt: !1139)
!1153 = !DILocation(line: 97, column: 13, scope: !505, inlinedAt: !1139)
!1154 = !DILocation(line: 99, column: 20, scope: !505, inlinedAt: !1139)
!1155 = !DILocation(line: 99, column: 35, scope: !505, inlinedAt: !1139)
!1156 = !DILocation(line: 99, column: 13, scope: !505, inlinedAt: !1139)
!1157 = !DILocation(line: 0, scope: !505, inlinedAt: !1139)
!1158 = !DILocation(line: 1029, column: 26, scope: !1136)
!1159 = !DILocation(line: 1029, column: 64, scope: !1136)
!1160 = !DILocation(line: 911, column: 33, scope: !942, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 1028, column: 9, scope: !1136)
!1162 = !DILocation(line: 911, column: 45, scope: !942, inlinedAt: !1161)
!1163 = !DILocation(line: 911, column: 61, scope: !942, inlinedAt: !1161)
!1164 = !DILocation(line: 911, column: 75, scope: !942, inlinedAt: !1161)
!1165 = !DILocation(line: 912, column: 9, scope: !942, inlinedAt: !1161)
!1166 = !DILocation(line: 913, column: 26, scope: !942, inlinedAt: !1161)
!1167 = !DILocation(line: 913, column: 14, scope: !942, inlinedAt: !1161)
!1168 = !DILocation(line: 913, column: 39, scope: !942, inlinedAt: !1161)
!1169 = !DILocation(line: 915, column: 13, scope: !942, inlinedAt: !1161)
!1170 = !DILocation(line: 915, column: 5, scope: !942, inlinedAt: !1161)
!1171 = !DILocation(line: 916, column: 13, scope: !966, inlinedAt: !1161)
!1172 = !DILocation(line: 916, column: 13, scope: !967, inlinedAt: !1161)
!1173 = !DILocation(line: 917, column: 22, scope: !970, inlinedAt: !1161)
!1174 = !DILocation(line: 912, column: 18, scope: !942, inlinedAt: !1161)
!1175 = !DILocation(line: 919, column: 25, scope: !970, inlinedAt: !1161)
!1176 = !DILocation(line: 921, column: 9, scope: !970, inlinedAt: !1161)
!1177 = !DILocation(line: 922, column: 22, scope: !975, inlinedAt: !1161)
!1178 = !DILocation(line: 924, column: 25, scope: !975, inlinedAt: !1161)
!1179 = !DILocation(line: 926, column: 9, scope: !975, inlinedAt: !1161)
!1180 = !DILocation(line: 927, column: 22, scope: !980, inlinedAt: !1161)
!1181 = !DILocation(line: 928, column: 22, scope: !980, inlinedAt: !1161)
!1182 = !DILocation(line: 912, column: 26, scope: !942, inlinedAt: !1161)
!1183 = !DILocation(line: 930, column: 13, scope: !980, inlinedAt: !1161)
!1184 = !DILocation(line: 930, column: 30, scope: !980, inlinedAt: !1161)
!1185 = !DILocation(line: 0, scope: !1136)
!1186 = !DILocation(line: 0, scope: !980, inlinedAt: !1161)
!1187 = !DILocation(line: 934, column: 13, scope: !990, inlinedAt: !1161)
!1188 = !DILocation(line: 934, column: 33, scope: !990, inlinedAt: !1161)
!1189 = !DILocation(line: 934, column: 30, scope: !990, inlinedAt: !1161)
!1190 = !DILocation(line: 934, column: 51, scope: !990, inlinedAt: !1161)
!1191 = !DILocation(line: 934, column: 42, scope: !990, inlinedAt: !1161)
!1192 = !DILocation(line: 1031, column: 24, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !1, line: 1030, column: 42)
!1194 = distinct !DILexicalBlock(scope: !1137, file: !1, line: 1030, column: 16)
!1195 = !DILocation(line: 1031, column: 39, scope: !1193)
!1196 = !DILocation(line: 945, column: 30, scope: !996, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 1031, column: 9, scope: !1193)
!1198 = !DILocation(line: 945, column: 46, scope: !996, inlinedAt: !1197)
!1199 = !DILocation(line: 946, column: 22, scope: !996, inlinedAt: !1197)
!1200 = !DILocation(line: 946, column: 15, scope: !996, inlinedAt: !1197)
!1201 = !DILocation(line: 948, column: 9, scope: !996, inlinedAt: !1197)
!1202 = !DILocation(line: 950, column: 5, scope: !1009, inlinedAt: !1197)
!1203 = !DILocation(line: 951, column: 13, scope: !1011, inlinedAt: !1197)
!1204 = !DILocation(line: 951, column: 19, scope: !1011, inlinedAt: !1197)
!1205 = !DILocation(line: 951, column: 13, scope: !1012, inlinedAt: !1197)
!1206 = !DILocation(line: 952, column: 25, scope: !1042, inlinedAt: !1197)
!1207 = !DILocation(line: 953, column: 9, scope: !1042, inlinedAt: !1197)
!1208 = !DILocation(line: 954, column: 21, scope: !1017, inlinedAt: !1197)
!1209 = !DILocation(line: 947, column: 14, scope: !996, inlinedAt: !1197)
!1210 = !DILocation(line: 955, column: 13, scope: !1017, inlinedAt: !1197)
!1211 = !DILocation(line: 955, column: 31, scope: !1017, inlinedAt: !1197)
!1212 = !DILocation(line: 956, column: 22, scope: !1017, inlinedAt: !1197)
!1213 = !DILocation(line: 956, column: 13, scope: !1017, inlinedAt: !1197)
!1214 = !DILocation(line: 956, column: 31, scope: !1017, inlinedAt: !1197)
!1215 = !DILocation(line: 957, column: 22, scope: !1017, inlinedAt: !1197)
!1216 = !DILocation(line: 957, column: 13, scope: !1017, inlinedAt: !1197)
!1217 = !DILocation(line: 957, column: 31, scope: !1017, inlinedAt: !1197)
!1218 = !DILocation(line: 958, column: 22, scope: !1017, inlinedAt: !1197)
!1219 = !DILocation(line: 958, column: 13, scope: !1017, inlinedAt: !1197)
!1220 = !DILocation(line: 958, column: 31, scope: !1017, inlinedAt: !1197)
!1221 = !DILocation(line: 959, column: 22, scope: !1017, inlinedAt: !1197)
!1222 = !DILocation(line: 959, column: 13, scope: !1017, inlinedAt: !1197)
!1223 = !DILocation(line: 959, column: 31, scope: !1017, inlinedAt: !1197)
!1224 = !DILocation(line: 960, column: 22, scope: !1017, inlinedAt: !1197)
!1225 = !DILocation(line: 960, column: 13, scope: !1017, inlinedAt: !1197)
!1226 = !DILocation(line: 960, column: 31, scope: !1017, inlinedAt: !1197)
!1227 = !DILocation(line: 961, column: 22, scope: !1017, inlinedAt: !1197)
!1228 = !DILocation(line: 961, column: 13, scope: !1017, inlinedAt: !1197)
!1229 = !DILocation(line: 961, column: 31, scope: !1017, inlinedAt: !1197)
!1230 = !DILocation(line: 962, column: 22, scope: !1017, inlinedAt: !1197)
!1231 = !DILocation(line: 962, column: 13, scope: !1017, inlinedAt: !1197)
!1232 = !DILocation(line: 962, column: 31, scope: !1017, inlinedAt: !1197)
!1233 = !DILocation(line: 964, column: 13, scope: !1012, inlinedAt: !1197)
!1234 = !DILocation(line: 950, column: 39, scope: !1013, inlinedAt: !1197)
!1235 = !DILocation(line: 950, column: 19, scope: !1013, inlinedAt: !1197)
!1236 = !DILocation(line: 1033, column: 9, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1194, file: !1, line: 1032, column: 12)
!1238 = !DILocation(line: 1039, column: 30, scope: !1108)
!1239 = !DILocation(line: 1039, column: 29, scope: !1108)
!1240 = !DILocation(line: 1039, column: 48, scope: !1108)
!1241 = !DILocation(line: 988, column: 22, scope: !1077, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 1039, column: 20, scope: !1108)
!1243 = !DILocation(line: 989, column: 11, scope: !1085, inlinedAt: !1242)
!1244 = !DILocation(line: 989, column: 22, scope: !1085, inlinedAt: !1242)
!1245 = !DILocation(line: 989, column: 17, scope: !1085, inlinedAt: !1242)
!1246 = !DILocation(line: 991, column: 12, scope: !1077, inlinedAt: !1242)
!1247 = !DILocation(line: 992, column: 18, scope: !1077, inlinedAt: !1242)
!1248 = !DILocation(line: 992, column: 12, scope: !1077, inlinedAt: !1242)
!1249 = !DILocation(line: 993, column: 5, scope: !1077, inlinedAt: !1242)
!1250 = !DILocation(line: 0, scope: !1093, inlinedAt: !1242)
!1251 = !DILocation(line: 994, column: 13, scope: !1093, inlinedAt: !1242)
!1252 = !DILocation(line: 990, column: 12, scope: !1077, inlinedAt: !1242)
!1253 = !DILocation(line: 996, column: 11, scope: !1093, inlinedAt: !1242)
!1254 = !DILocation(line: 997, column: 20, scope: !1093, inlinedAt: !1242)
!1255 = !DILocation(line: 997, column: 14, scope: !1093, inlinedAt: !1242)
!1256 = !DILocation(line: 997, column: 27, scope: !1093, inlinedAt: !1242)
!1257 = !DILocation(line: 997, column: 11, scope: !1093, inlinedAt: !1242)
!1258 = !DILocation(line: 998, column: 20, scope: !1077, inlinedAt: !1242)
!1259 = !DILocation(line: 998, column: 5, scope: !1093, inlinedAt: !1242)
!1260 = !DILocation(line: 999, column: 14, scope: !1077, inlinedAt: !1242)
!1261 = !DILocation(line: 1041, column: 14, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !1, line: 1040, column: 34)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !1, line: 1040, column: 5)
!1264 = distinct !DILexicalBlock(scope: !1108, file: !1, line: 1040, column: 5)
!1265 = !DILocation(line: 1039, column: 12, scope: !1108)
!1266 = !DILocation(line: 1016, column: 9, scope: !1108)
!1267 = !DILocation(line: 1041, column: 11, scope: !1262)
!1268 = !DILocation(line: 1042, column: 11, scope: !1262)
!1269 = !DILocation(line: 1040, column: 29, scope: !1263)
!1270 = !DILocation(line: 1040, column: 23, scope: !1263)
!1271 = !DILocation(line: 1040, column: 5, scope: !1264)
!1272 = distinct !{!1272, !1271, !1273}
!1273 = !DILocation(line: 1043, column: 5, scope: !1264)
!1274 = !DILocation(line: 1044, column: 23, scope: !1108)
!1275 = !DILocation(line: 1044, column: 34, scope: !1108)
!1276 = !DILocation(line: 971, column: 24, scope: !1049, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 1044, column: 14, scope: !1108)
!1278 = !DILocation(line: 972, column: 11, scope: !1059, inlinedAt: !1277)
!1279 = !DILocation(line: 972, column: 9, scope: !1049, inlinedAt: !1277)
!1280 = !DILocation(line: 0, scope: !1062, inlinedAt: !1277)
!1281 = !DILocation(line: 975, column: 12, scope: !1049, inlinedAt: !1277)
!1282 = !DILocation(line: 974, column: 12, scope: !1049, inlinedAt: !1277)
!1283 = !DILocation(line: 977, column: 11, scope: !1062, inlinedAt: !1277)
!1284 = !DILocation(line: 973, column: 12, scope: !1049, inlinedAt: !1277)
!1285 = !DILocation(line: 979, column: 16, scope: !1062, inlinedAt: !1277)
!1286 = !DILocation(line: 979, column: 11, scope: !1062, inlinedAt: !1277)
!1287 = !DILocation(line: 980, column: 11, scope: !1062, inlinedAt: !1277)
!1288 = !DILocation(line: 981, column: 20, scope: !1049, inlinedAt: !1277)
!1289 = !DILocation(line: 981, column: 5, scope: !1062, inlinedAt: !1277)
!1290 = !DILocation(line: 1044, column: 12, scope: !1108)
!1291 = !DILocation(line: 1044, column: 7, scope: !1108)
!1292 = !DILocation(line: 1045, column: 35, scope: !1108)
!1293 = !DILocation(line: 1045, column: 18, scope: !1108)
!1294 = !DILocation(line: 1045, column: 9, scope: !1108)
!1295 = !DILocation(line: 1015, column: 12, scope: !1108)
!1296 = !DILocation(line: 1047, column: 12, scope: !1108)
!1297 = !DILocation(line: 1048, column: 1, scope: !1108)
!1298 = !DILocation(line: 1047, column: 5, scope: !1108)
!1299 = distinct !DISubprogram(name: "hllAdd", scope: !1, file: !1, line: 1051, type: !910, isLocal: false, isDefinition: true, scopeLine: 1051, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1300)
!1300 = !{!1301, !1302, !1303, !1304}
!1301 = !DILocalVariable(name: "o", arg: 1, scope: !1299, file: !1, line: 1051, type: !449)
!1302 = !DILocalVariable(name: "ele", arg: 2, scope: !1299, file: !1, line: 1051, type: !43)
!1303 = !DILocalVariable(name: "elesize", arg: 3, scope: !1299, file: !1, line: 1051, type: !188)
!1304 = !DILocalVariable(name: "hdr", scope: !1299, file: !1, line: 1052, type: !17)
!1305 = !DILocation(line: 1051, column: 18, scope: !1299)
!1306 = !DILocation(line: 1051, column: 36, scope: !1299)
!1307 = !DILocation(line: 1051, column: 48, scope: !1299)
!1308 = !DILocation(line: 1052, column: 29, scope: !1299)
!1309 = !DILocation(line: 1052, column: 20, scope: !1299)
!1310 = !DILocation(line: 1053, column: 17, scope: !1299)
!1311 = !DILocation(line: 1053, column: 5, scope: !1299)
!1312 = !DILocation(line: 511, column: 26, scope: !259, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 1054, column: 28, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1299, file: !1, line: 1053, column: 27)
!1315 = !DILocation(line: 511, column: 52, scope: !259, inlinedAt: !1313)
!1316 = !DILocation(line: 511, column: 64, scope: !259, inlinedAt: !1313)
!1317 = !DILocation(line: 451, column: 30, scope: !185, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 513, column: 21, scope: !259, inlinedAt: !1313)
!1319 = !DILocation(line: 451, column: 42, scope: !185, inlinedAt: !1318)
!1320 = !DILocation(line: 466, column: 30, scope: !185, inlinedAt: !1318)
!1321 = !DILocation(line: 466, column: 12, scope: !185, inlinedAt: !1318)
!1322 = !DILocation(line: 452, column: 14, scope: !185, inlinedAt: !1318)
!1323 = !DILocation(line: 452, column: 25, scope: !185, inlinedAt: !1318)
!1324 = !DILocation(line: 468, column: 10, scope: !185, inlinedAt: !1318)
!1325 = !DILocation(line: 469, column: 10, scope: !185, inlinedAt: !1318)
!1326 = !DILocation(line: 452, column: 20, scope: !185, inlinedAt: !1318)
!1327 = !DILocation(line: 453, column: 9, scope: !185, inlinedAt: !1318)
!1328 = !DILocation(line: 473, column: 17, scope: !185, inlinedAt: !1318)
!1329 = !DILocation(line: 473, column: 24, scope: !185, inlinedAt: !1318)
!1330 = !DILocation(line: 473, column: 5, scope: !185, inlinedAt: !1318)
!1331 = !DILocation(line: 474, column: 14, scope: !216, inlinedAt: !1318)
!1332 = !DILocation(line: 475, column: 13, scope: !216, inlinedAt: !1318)
!1333 = !DILocation(line: 477, column: 13, scope: !185, inlinedAt: !1318)
!1334 = !DILocation(line: 512, column: 10, scope: !259, inlinedAt: !1313)
!1335 = !DILocation(line: 493, column: 26, scope: !224, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 515, column: 12, scope: !259, inlinedAt: !1313)
!1337 = !DILocation(line: 493, column: 42, scope: !224, inlinedAt: !1336)
!1338 = !DILocation(line: 496, column: 5, scope: !233, inlinedAt: !1336)
!1339 = !DILocation(line: 497, column: 15, scope: !242, inlinedAt: !1336)
!1340 = !DILocation(line: 497, column: 9, scope: !224, inlinedAt: !1336)
!1341 = !DILocation(line: 498, column: 9, scope: !240, inlinedAt: !1336)
!1342 = !DILocation(line: 499, column: 9, scope: !241, inlinedAt: !1336)
!1343 = !DILocation(line: 903, column: 24, scope: !909, inlinedAt: !1344)
!1344 = distinct !DILocation(line: 1055, column: 29, scope: !1314)
!1345 = !DILocation(line: 903, column: 42, scope: !909, inlinedAt: !1344)
!1346 = !DILocation(line: 903, column: 54, scope: !909, inlinedAt: !1344)
!1347 = !DILocation(line: 451, column: 30, scope: !185, inlinedAt: !1348)
!1348 = distinct !DILocation(line: 905, column: 21, scope: !909, inlinedAt: !1344)
!1349 = !DILocation(line: 451, column: 42, scope: !185, inlinedAt: !1348)
!1350 = !DILocation(line: 466, column: 30, scope: !185, inlinedAt: !1348)
!1351 = !DILocation(line: 466, column: 12, scope: !185, inlinedAt: !1348)
!1352 = !DILocation(line: 452, column: 14, scope: !185, inlinedAt: !1348)
!1353 = !DILocation(line: 452, column: 25, scope: !185, inlinedAt: !1348)
!1354 = !DILocation(line: 468, column: 10, scope: !185, inlinedAt: !1348)
!1355 = !DILocation(line: 469, column: 10, scope: !185, inlinedAt: !1348)
!1356 = !DILocation(line: 452, column: 20, scope: !185, inlinedAt: !1348)
!1357 = !DILocation(line: 453, column: 9, scope: !185, inlinedAt: !1348)
!1358 = !DILocation(line: 473, column: 17, scope: !185, inlinedAt: !1348)
!1359 = !DILocation(line: 473, column: 24, scope: !185, inlinedAt: !1348)
!1360 = !DILocation(line: 473, column: 5, scope: !185, inlinedAt: !1348)
!1361 = !DILocation(line: 474, column: 14, scope: !216, inlinedAt: !1348)
!1362 = !DILocation(line: 475, column: 13, scope: !216, inlinedAt: !1348)
!1363 = !DILocation(line: 477, column: 13, scope: !185, inlinedAt: !1348)
!1364 = !DILocation(line: 905, column: 13, scope: !909, inlinedAt: !1344)
!1365 = !DILocation(line: 904, column: 10, scope: !909, inlinedAt: !1344)
!1366 = !DILocation(line: 907, column: 12, scope: !909, inlinedAt: !1344)
!1367 = !DILocation(line: 1055, column: 22, scope: !1314)
!1368 = !DILocation(line: 0, scope: !1314)
!1369 = !DILocation(line: 1058, column: 1, scope: !1299)
!1370 = distinct !DISubprogram(name: "hllMerge", scope: !1, file: !1, line: 1068, type: !1371, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1373)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!15, !16, !449}
!1373 = !{!1374, !1375, !1376, !1377, !1378, !1381, !1386, !1387, !1388, !1389, !1390, !1391, !1393, !1394, !1395}
!1374 = !DILocalVariable(name: "max", arg: 1, scope: !1370, file: !1, line: 1068, type: !16)
!1375 = !DILocalVariable(name: "hll", arg: 2, scope: !1370, file: !1, line: 1068, type: !449)
!1376 = !DILocalVariable(name: "hdr", scope: !1370, file: !1, line: 1069, type: !17)
!1377 = !DILocalVariable(name: "i", scope: !1370, file: !1, line: 1070, type: !15)
!1378 = !DILocalVariable(name: "val", scope: !1379, file: !1, line: 1073, type: !6)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !1, line: 1072, column: 37)
!1380 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 1072, column: 9)
!1381 = !DILocalVariable(name: "_p", scope: !1382, file: !1, line: 1076, type: !16)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !1, line: 1076, column: 13)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !1, line: 1075, column: 45)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !1, line: 1075, column: 9)
!1385 = distinct !DILexicalBlock(scope: !1379, file: !1, line: 1075, column: 9)
!1386 = !DILocalVariable(name: "_byte", scope: !1382, file: !1, line: 1076, type: !14)
!1387 = !DILocalVariable(name: "_fb", scope: !1382, file: !1, line: 1076, type: !14)
!1388 = !DILocalVariable(name: "_fb8", scope: !1382, file: !1, line: 1076, type: !14)
!1389 = !DILocalVariable(name: "b0", scope: !1382, file: !1, line: 1076, type: !14)
!1390 = !DILocalVariable(name: "b1", scope: !1382, file: !1, line: 1076, type: !14)
!1391 = !DILocalVariable(name: "p", scope: !1392, file: !1, line: 1080, type: !16)
!1392 = distinct !DILexicalBlock(scope: !1380, file: !1, line: 1079, column: 12)
!1393 = !DILocalVariable(name: "end", scope: !1392, file: !1, line: 1080, type: !16)
!1394 = !DILocalVariable(name: "runlen", scope: !1392, file: !1, line: 1081, type: !46)
!1395 = !DILocalVariable(name: "regval", scope: !1392, file: !1, line: 1081, type: !46)
!1396 = !DILocation(line: 1068, column: 23, scope: !1370)
!1397 = !DILocation(line: 1068, column: 34, scope: !1370)
!1398 = !DILocation(line: 1069, column: 31, scope: !1370)
!1399 = !DILocation(line: 1069, column: 20, scope: !1370)
!1400 = !DILocation(line: 1072, column: 14, scope: !1380)
!1401 = !DILocation(line: 1072, column: 23, scope: !1380)
!1402 = !DILocation(line: 1072, column: 9, scope: !1370)
!1403 = !DILocation(line: 1070, column: 9, scope: !1370)
!1404 = !DILocation(line: 1075, column: 9, scope: !1385)
!1405 = !DILocation(line: 1076, column: 13, scope: !1382)
!1406 = !DILocation(line: 1073, column: 17, scope: !1379)
!1407 = !DILocation(line: 1077, column: 23, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1383, file: !1, line: 1077, column: 17)
!1409 = !DILocation(line: 1077, column: 21, scope: !1408)
!1410 = !DILocation(line: 1077, column: 17, scope: !1383)
!1411 = !DILocation(line: 1077, column: 38, scope: !1408)
!1412 = !DILocation(line: 1077, column: 31, scope: !1408)
!1413 = !DILocation(line: 1075, column: 41, scope: !1384)
!1414 = !DILocation(line: 1075, column: 23, scope: !1384)
!1415 = distinct !{!1415, !1404, !1416}
!1416 = !DILocation(line: 1078, column: 9, scope: !1385)
!1417 = !DILocation(line: 1080, column: 18, scope: !1392)
!1418 = !DILocation(line: 87, column: 39, scope: !491, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 1080, column: 43, scope: !1392)
!1420 = !DILocation(line: 88, column: 27, scope: !491, inlinedAt: !1419)
!1421 = !DILocation(line: 88, column: 19, scope: !491, inlinedAt: !1419)
!1422 = !DILocation(line: 89, column: 5, scope: !491, inlinedAt: !1419)
!1423 = !DILocation(line: 91, column: 20, scope: !505, inlinedAt: !1419)
!1424 = !DILocation(line: 91, column: 13, scope: !505, inlinedAt: !1419)
!1425 = !DILocation(line: 93, column: 20, scope: !505, inlinedAt: !1419)
!1426 = !DILocation(line: 93, column: 34, scope: !505, inlinedAt: !1419)
!1427 = !DILocation(line: 93, column: 13, scope: !505, inlinedAt: !1419)
!1428 = !DILocation(line: 95, column: 20, scope: !505, inlinedAt: !1419)
!1429 = !DILocation(line: 95, column: 35, scope: !505, inlinedAt: !1419)
!1430 = !DILocation(line: 95, column: 13, scope: !505, inlinedAt: !1419)
!1431 = !DILocation(line: 97, column: 20, scope: !505, inlinedAt: !1419)
!1432 = !DILocation(line: 97, column: 35, scope: !505, inlinedAt: !1419)
!1433 = !DILocation(line: 97, column: 13, scope: !505, inlinedAt: !1419)
!1434 = !DILocation(line: 99, column: 20, scope: !505, inlinedAt: !1419)
!1435 = !DILocation(line: 99, column: 35, scope: !505, inlinedAt: !1419)
!1436 = !DILocation(line: 99, column: 13, scope: !505, inlinedAt: !1419)
!1437 = !DILocation(line: 0, scope: !505, inlinedAt: !1419)
!1438 = !DILocation(line: 1080, column: 41, scope: !1392)
!1439 = !DILocation(line: 1080, column: 33, scope: !1392)
!1440 = !DILocation(line: 1085, column: 17, scope: !1392)
!1441 = !DILocation(line: 1085, column: 9, scope: !1392)
!1442 = !DILocation(line: 1083, column: 11, scope: !1392)
!1443 = !DILocation(line: 1086, column: 17, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !1, line: 1086, column: 17)
!1445 = distinct !DILexicalBlock(scope: !1392, file: !1, line: 1085, column: 24)
!1446 = !DILocation(line: 1086, column: 17, scope: !1445)
!1447 = !DILocation(line: 1087, column: 26, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1444, file: !1, line: 1086, column: 40)
!1449 = !DILocation(line: 1088, column: 19, scope: !1448)
!1450 = !DILocation(line: 1090, column: 13, scope: !1448)
!1451 = !DILocation(line: 1091, column: 26, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !1, line: 1090, column: 48)
!1453 = distinct !DILexicalBlock(scope: !1444, file: !1, line: 1090, column: 24)
!1454 = !DILocation(line: 1092, column: 19, scope: !1452)
!1455 = !DILocation(line: 1094, column: 13, scope: !1452)
!1456 = !DILocation(line: 1095, column: 26, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1453, file: !1, line: 1094, column: 20)
!1458 = !DILocation(line: 1081, column: 14, scope: !1392)
!1459 = !DILocation(line: 1096, column: 26, scope: !1457)
!1460 = !DILocation(line: 1081, column: 22, scope: !1392)
!1461 = !DILocation(line: 1097, column: 31, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1457, file: !1, line: 1097, column: 21)
!1463 = !DILocation(line: 1097, column: 29, scope: !1462)
!1464 = !DILocation(line: 1097, column: 34, scope: !1462)
!1465 = !DILocation(line: 1097, column: 21, scope: !1457)
!1466 = !DILocation(line: 1099, column: 34, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !1, line: 1099, column: 25)
!1468 = distinct !DILexicalBlock(scope: !1457, file: !1, line: 1098, column: 33)
!1469 = !DILocation(line: 1099, column: 32, scope: !1467)
!1470 = !DILocation(line: 1099, column: 25, scope: !1468)
!1471 = !DILocation(line: 1099, column: 49, scope: !1467)
!1472 = !DILocation(line: 1099, column: 42, scope: !1467)
!1473 = !DILocation(line: 1098, column: 17, scope: !1457)
!1474 = distinct !{!1474, !1473, !1475}
!1475 = !DILocation(line: 1101, column: 17, scope: !1457)
!1476 = !DILocation(line: 0, scope: !1392)
!1477 = !DILocation(line: 0, scope: !1448)
!1478 = distinct !{!1478, !1441, !1479}
!1479 = !DILocation(line: 1104, column: 9, scope: !1392)
!1480 = !DILocation(line: 1105, column: 15, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1392, file: !1, line: 1105, column: 13)
!1482 = !DILocation(line: 1107, column: 5, scope: !1370)
!1483 = !DILocation(line: 0, scope: !1481)
!1484 = !DILocation(line: 1108, column: 1, scope: !1370)
!1485 = !DILocation(line: 1100, column: 22, scope: !1468)
!1486 = distinct !DISubprogram(name: "createHLLObject", scope: !1, file: !1, line: 1114, type: !1487, isLocal: false, isDefinition: true, scopeLine: 1114, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1489)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!449}
!1489 = !{!1490, !1491, !1492, !1493, !1494, !1495, !1496, !1498}
!1490 = !DILocalVariable(name: "o", scope: !1486, file: !1, line: 1115, type: !449)
!1491 = !DILocalVariable(name: "hdr", scope: !1486, file: !1, line: 1116, type: !17)
!1492 = !DILocalVariable(name: "s", scope: !1486, file: !1, line: 1117, type: !38)
!1493 = !DILocalVariable(name: "p", scope: !1486, file: !1, line: 1118, type: !16)
!1494 = !DILocalVariable(name: "sparselen", scope: !1486, file: !1, line: 1119, type: !15)
!1495 = !DILocalVariable(name: "aux", scope: !1486, file: !1, line: 1122, type: !15)
!1496 = !DILocalVariable(name: "xzero", scope: !1497, file: !1, line: 1130, type: !15)
!1497 = distinct !DILexicalBlock(scope: !1486, file: !1, line: 1129, column: 16)
!1498 = !DILocalVariable(name: "_l", scope: !1499, file: !1, line: 1132, type: !15)
!1499 = distinct !DILexicalBlock(scope: !1497, file: !1, line: 1132, column: 9)
!1500 = !DILocation(line: 1119, column: 9, scope: !1486)
!1501 = !DILocation(line: 1122, column: 9, scope: !1486)
!1502 = !DILocation(line: 1127, column: 9, scope: !1486)
!1503 = !DILocation(line: 1117, column: 9, scope: !1486)
!1504 = !DILocation(line: 1128, column: 21, scope: !1486)
!1505 = !DILocation(line: 1118, column: 14, scope: !1486)
!1506 = !DILocation(line: 1130, column: 13, scope: !1497)
!1507 = !DILocation(line: 1132, column: 9, scope: !1499)
!1508 = !DILocation(line: 1139, column: 9, scope: !1486)
!1509 = !DILocation(line: 1115, column: 11, scope: !1486)
!1510 = !DILocation(line: 1140, column: 14, scope: !1486)
!1511 = !DILocation(line: 1116, column: 20, scope: !1486)
!1512 = !DILocation(line: 1141, column: 12, scope: !1486)
!1513 = !DILocation(line: 1141, column: 5, scope: !1486)
!1514 = !DILocation(line: 1142, column: 10, scope: !1486)
!1515 = !DILocation(line: 1142, column: 19, scope: !1486)
!1516 = !DILocation(line: 1143, column: 5, scope: !1486)
!1517 = distinct !DISubprogram(name: "isHLLObjectOrReply", scope: !1, file: !1, line: 1149, type: !1518, isLocal: false, isDefinition: true, scopeLine: 1149, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1740)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!15, !1520, !449}
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !451, line: 780, baseType: !1522)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !451, line: 723, size: 135360, elements: !1523)
!1523 = !{!1524, !1525, !1526, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1633, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1689, !1690, !1694, !1695, !1711, !1712, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1522, file: !451, line: 724, baseType: !12, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1522, file: !451, line: 725, baseType: !15, size: 32, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !1522, file: !451, line: 726, baseType: !1527, size: 64, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !451, line: 656, baseType: !1529)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !451, line: 647, size: 512, elements: !1530)
!1530 = !{!1531, !1589, !1590, !1591, !1592, !1593, !1594, !1596}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !1529, file: !451, line: 648, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !1534, line: 82, baseType: !1535)
!1534 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !1534, line: 76, size: 768, elements: !1536)
!1536 = !{!1537, !1560, !1561, !1587, !1588}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1535, file: !1534, line: 77, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !1534, line: 65, baseType: !1540)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !1534, line: 58, size: 384, elements: !1541)
!1541 = !{!1542, !1546, !1550, !1551, !1555, !1559}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !1540, file: !1534, line: 59, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!12, !93}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !1540, file: !1534, line: 60, baseType: !1547, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!42, !42, !93}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !1540, file: !1534, line: 61, baseType: !1547, size: 64, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !1540, file: !1534, line: 62, baseType: !1552, size: 64, offset: 192)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!15, !42, !93, !93}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !1540, file: !1534, line: 63, baseType: !1556, size: 64, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{null, !42, !42}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !1540, file: !1534, line: 64, baseType: !1556, size: 64, offset: 320)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !1535, file: !1534, line: 78, baseType: !42, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !1535, file: !1534, line: 79, baseType: !1562, size: 512, offset: 128)
!1562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1563, size: 512, elements: !1585)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !1534, line: 74, baseType: !1564)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !1534, line: 69, size: 256, elements: !1565)
!1565 = !{!1566, !1582, !1583, !1584}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !1564, file: !1534, line: 70, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !1534, line: 56, baseType: !1570)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !1534, line: 47, size: 192, elements: !1571)
!1571 = !{!1572, !1573, !1580}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1570, file: !1534, line: 48, baseType: !42, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !1570, file: !1534, line: 54, baseType: !1574, size: 64, offset: 64)
!1574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1570, file: !1534, line: 49, size: 64, elements: !1575)
!1575 = !{!1576, !1577, !1578, !1579}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1574, file: !1534, line: 50, baseType: !42, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !1574, file: !1534, line: 51, baseType: !12, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !1574, file: !1534, line: 52, baseType: !44, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1574, file: !1534, line: 53, baseType: !41, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1570, file: !1534, line: 55, baseType: !1581, size: 64, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1564, file: !1534, line: 71, baseType: !14, size: 64, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !1564, file: !1534, line: 72, baseType: !14, size: 64, offset: 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1564, file: !1534, line: 73, baseType: !14, size: 64, offset: 192)
!1585 = !{!1586}
!1586 = !DISubrange(count: 2)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !1535, file: !1534, line: 80, baseType: !46, size: 64, offset: 640)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !1535, file: !1534, line: 81, baseType: !14, size: 64, offset: 704)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1529, file: !451, line: 649, baseType: !1532, size: 64, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !1529, file: !451, line: 650, baseType: !1532, size: 64, offset: 128)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !1529, file: !451, line: 651, baseType: !1532, size: 64, offset: 192)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1529, file: !451, line: 652, baseType: !1532, size: 64, offset: 256)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1529, file: !451, line: 653, baseType: !15, size: 32, offset: 320)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !1529, file: !451, line: 654, baseType: !1595, size: 64, offset: 384)
!1595 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !1529, file: !451, line: 655, baseType: !1597, size: 64, offset: 448)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !1599, line: 54, baseType: !1600)
!1599 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !1599, line: 47, size: 384, elements: !1601)
!1601 = !{!1602, !1611, !1612, !1616, !1620, !1624}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1600, file: !1599, line: 48, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !1599, line: 40, baseType: !1605)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !1599, line: 36, size: 192, elements: !1606)
!1606 = !{!1607, !1609, !1610}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1605, file: !1599, line: 37, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1605, file: !1599, line: 38, baseType: !1608, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1605, file: !1599, line: 39, baseType: !42, size: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1600, file: !1599, line: 49, baseType: !1603, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !1600, file: !1599, line: 50, baseType: !1613, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!42, !42}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1600, file: !1599, line: 51, baseType: !1617, size: 64, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{null, !42}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1600, file: !1599, line: 52, baseType: !1621, size: 64, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!15, !42, !42}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1600, file: !1599, line: 53, baseType: !14, size: 64, offset: 320)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1522, file: !451, line: 727, baseType: !449, size: 64, offset: 192)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !1522, file: !451, line: 728, baseType: !38, size: 64, offset: 256)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !1522, file: !451, line: 729, baseType: !188, size: 64, offset: 320)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !1522, file: !451, line: 730, baseType: !38, size: 64, offset: 384)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !1522, file: !451, line: 734, baseType: !188, size: 64, offset: 448)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1522, file: !451, line: 735, baseType: !15, size: 32, offset: 512)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1522, file: !451, line: 736, baseType: !1632, size: 64, offset: 576)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1522, file: !451, line: 737, baseType: !1634, size: 64, offset: 640)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !451, line: 1307, size: 640, elements: !1636)
!1636 = !{!1637, !1638, !1643, !1644, !1645, !1646, !1651, !1652, !1653, !1654, !1655}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1635, file: !451, line: 1308, baseType: !40, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !1635, file: !451, line: 1309, baseType: !1639, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !451, line: 1305, baseType: !1641)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{null, !1520}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !1635, file: !451, line: 1310, baseType: !15, size: 32, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !1635, file: !451, line: 1311, baseType: !40, size: 64, offset: 192)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1635, file: !451, line: 1312, baseType: !15, size: 32, offset: 256)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !1635, file: !451, line: 1315, baseType: !1647, size: 64, offset: 320)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !451, line: 1306, baseType: !1649)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!302, !1634, !1632, !15, !302}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !1635, file: !451, line: 1317, baseType: !15, size: 32, offset: 384)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !1635, file: !451, line: 1318, baseType: !15, size: 32, offset: 416)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !1635, file: !451, line: 1319, baseType: !15, size: 32, offset: 448)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !1635, file: !451, line: 1320, baseType: !1595, size: 64, offset: 512)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !1635, file: !451, line: 1320, baseType: !1595, size: 64, offset: 576)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !1522, file: !451, line: 737, baseType: !1634, size: 64, offset: 704)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !1522, file: !451, line: 738, baseType: !15, size: 32, offset: 768)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !1522, file: !451, line: 739, baseType: !15, size: 32, offset: 800)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !1522, file: !451, line: 740, baseType: !46, size: 64, offset: 832)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !1522, file: !451, line: 741, baseType: !1597, size: 64, offset: 896)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !1522, file: !451, line: 742, baseType: !47, size: 64, offset: 960)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !1522, file: !451, line: 743, baseType: !188, size: 64, offset: 1024)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1522, file: !451, line: 745, baseType: !1664, size: 64, offset: 1088)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1665, line: 34, baseType: !46)
!1665 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !1522, file: !451, line: 746, baseType: !1664, size: 64, offset: 1152)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !1522, file: !451, line: 747, baseType: !1664, size: 64, offset: 1216)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1522, file: !451, line: 748, baseType: !15, size: 32, offset: 1280)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !1522, file: !451, line: 749, baseType: !15, size: 32, offset: 1312)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !1522, file: !451, line: 750, baseType: !15, size: 32, offset: 1344)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !1522, file: !451, line: 751, baseType: !15, size: 32, offset: 1376)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !1522, file: !451, line: 752, baseType: !15, size: 32, offset: 1408)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !1522, file: !451, line: 753, baseType: !1674, size: 64, offset: 1472)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1675, line: 173, baseType: !1676)
!1675 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !191, line: 100, baseType: !1677)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !191, line: 44, baseType: !46)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !1522, file: !451, line: 754, baseType: !1674, size: 64, offset: 1536)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !1522, file: !451, line: 755, baseType: !38, size: 64, offset: 1600)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !1522, file: !451, line: 756, baseType: !1595, size: 64, offset: 1664)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !1522, file: !451, line: 757, baseType: !1595, size: 64, offset: 1728)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !1522, file: !451, line: 758, baseType: !1595, size: 64, offset: 1792)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !1522, file: !451, line: 759, baseType: !1595, size: 64, offset: 1856)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !1522, file: !451, line: 760, baseType: !1595, size: 64, offset: 1920)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !1522, file: !451, line: 763, baseType: !1686, size: 328, offset: 1984)
!1686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 328, elements: !1687)
!1687 = !{!1688}
!1688 = !DISubrange(count: 41)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !1522, file: !451, line: 764, baseType: !15, size: 32, offset: 2336)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !1522, file: !451, line: 765, baseType: !1691, size: 368, offset: 2368)
!1691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 368, elements: !1692)
!1692 = !{!1693}
!1693 = !DISubrange(count: 46)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !1522, file: !451, line: 766, baseType: !15, size: 32, offset: 2752)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !1522, file: !451, line: 767, baseType: !1696, size: 256, offset: 2816)
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !451, line: 673, baseType: !1697)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !451, line: 665, size: 256, elements: !1698)
!1698 = !{!1699, !1707, !1708, !1709, !1710}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !1697, file: !451, line: 666, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !451, line: 663, baseType: !1702)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !451, line: 659, size: 192, elements: !1703)
!1703 = !{!1704, !1705, !1706}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1702, file: !451, line: 660, baseType: !1632, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1702, file: !451, line: 661, baseType: !15, size: 32, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1702, file: !451, line: 662, baseType: !1634, size: 64, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1697, file: !451, line: 667, baseType: !15, size: 32, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1697, file: !451, line: 668, baseType: !15, size: 32, offset: 96)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !1697, file: !451, line: 671, baseType: !15, size: 32, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !1697, file: !451, line: 672, baseType: !1664, size: 64, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !1522, file: !451, line: 768, baseType: !15, size: 32, offset: 3072)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !1522, file: !451, line: 769, baseType: !1713, size: 704, offset: 3136)
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !451, line: 703, baseType: !1714)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !451, line: 677, size: 704, elements: !1715)
!1715 = !{!1716, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1714, file: !451, line: 679, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !451, line: 52, baseType: !1595)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1714, file: !451, line: 683, baseType: !1532, size: 64, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1714, file: !451, line: 685, baseType: !449, size: 64, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !1714, file: !451, line: 689, baseType: !188, size: 64, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !1714, file: !451, line: 690, baseType: !449, size: 64, offset: 256)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !1714, file: !451, line: 691, baseType: !449, size: 64, offset: 320)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !1714, file: !451, line: 692, baseType: !1717, size: 64, offset: 384)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !1714, file: !451, line: 692, baseType: !1717, size: 64, offset: 448)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !1714, file: !451, line: 693, baseType: !15, size: 32, offset: 512)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !1714, file: !451, line: 696, baseType: !15, size: 32, offset: 544)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !1714, file: !451, line: 697, baseType: !1595, size: 64, offset: 576)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !1714, file: !451, line: 700, baseType: !42, size: 64, offset: 640)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !1522, file: !451, line: 770, baseType: !1595, size: 64, offset: 3840)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1522, file: !451, line: 771, baseType: !1597, size: 64, offset: 3904)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !1522, file: !451, line: 772, baseType: !1532, size: 64, offset: 3968)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !1522, file: !451, line: 773, baseType: !1597, size: 64, offset: 4032)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !1522, file: !451, line: 774, baseType: !38, size: 64, offset: 4096)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !1522, file: !451, line: 775, baseType: !1603, size: 64, offset: 4160)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !1522, file: !451, line: 778, baseType: !15, size: 32, offset: 4224)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1522, file: !451, line: 779, baseType: !1737, size: 131072, offset: 4256)
!1737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 131072, elements: !1738)
!1738 = !{!1739}
!1739 = !DISubrange(count: 16384)
!1740 = !{!1741, !1742, !1743}
!1741 = !DILocalVariable(name: "c", arg: 1, scope: !1517, file: !1, line: 1149, type: !1520)
!1742 = !DILocalVariable(name: "o", arg: 2, scope: !1517, file: !1, line: 1149, type: !449)
!1743 = !DILocalVariable(name: "hdr", scope: !1517, file: !1, line: 1150, type: !17)
!1744 = !DILocation(line: 1149, column: 32, scope: !1517)
!1745 = !DILocation(line: 1149, column: 41, scope: !1517)
!1746 = !DILocation(line: 1153, column: 9, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1517, file: !1, line: 1153, column: 9)
!1748 = !DILocation(line: 1153, column: 9, scope: !1517)
!1749 = !DILocation(line: 1156, column: 10, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1517, file: !1, line: 1156, column: 9)
!1751 = !DILocation(line: 1157, column: 9, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1517, file: !1, line: 1157, column: 9)
!1753 = !DILocation(line: 1157, column: 28, scope: !1752)
!1754 = !DILocation(line: 1157, column: 9, scope: !1517)
!1755 = !DILocation(line: 1158, column: 14, scope: !1517)
!1756 = !DILocation(line: 1150, column: 20, scope: !1517)
!1757 = !DILocation(line: 1161, column: 9, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1517, file: !1, line: 1161, column: 9)
!1759 = !DILocation(line: 1161, column: 23, scope: !1758)
!1760 = !DILocation(line: 1161, column: 30, scope: !1758)
!1761 = !DILocation(line: 1161, column: 33, scope: !1758)
!1762 = !DILocation(line: 1161, column: 47, scope: !1758)
!1763 = !DILocation(line: 1161, column: 54, scope: !1758)
!1764 = !DILocation(line: 1162, column: 9, scope: !1758)
!1765 = !DILocation(line: 1162, column: 23, scope: !1758)
!1766 = !DILocation(line: 1162, column: 30, scope: !1758)
!1767 = !DILocation(line: 1162, column: 33, scope: !1758)
!1768 = !DILocation(line: 1162, column: 47, scope: !1758)
!1769 = !DILocation(line: 1161, column: 9, scope: !1517)
!1770 = !DILocation(line: 1164, column: 14, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1517, file: !1, line: 1164, column: 9)
!1772 = !DILocation(line: 1164, column: 23, scope: !1771)
!1773 = !DILocation(line: 1164, column: 9, scope: !1517)
!1774 = !DILocation(line: 1167, column: 23, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1517, file: !1, line: 1167, column: 9)
!1776 = !DILocation(line: 1167, column: 36, scope: !1775)
!1777 = !DILocation(line: 1168, column: 9, scope: !1775)
!1778 = !DILocation(line: 1168, column: 28, scope: !1775)
!1779 = !DILocation(line: 1167, column: 9, scope: !1517)
!1780 = !DILocation(line: 1175, column: 9, scope: !1517)
!1781 = !DILocation(line: 1174, column: 5, scope: !1517)
!1782 = !DILocation(line: 1177, column: 5, scope: !1517)
!1783 = !DILocation(line: 0, scope: !1517)
!1784 = !DILocation(line: 1178, column: 1, scope: !1517)
!1785 = distinct !DISubprogram(name: "pfaddCommand", scope: !1, file: !1, line: 1181, type: !1641, isLocal: false, isDefinition: true, scopeLine: 1181, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1786)
!1786 = !{!1787, !1788, !1789, !1790, !1791, !1792}
!1787 = !DILocalVariable(name: "c", arg: 1, scope: !1785, file: !1, line: 1181, type: !1520)
!1788 = !DILocalVariable(name: "o", scope: !1785, file: !1, line: 1182, type: !449)
!1789 = !DILocalVariable(name: "hdr", scope: !1785, file: !1, line: 1183, type: !17)
!1790 = !DILocalVariable(name: "updated", scope: !1785, file: !1, line: 1184, type: !15)
!1791 = !DILocalVariable(name: "j", scope: !1785, file: !1, line: 1184, type: !15)
!1792 = !DILocalVariable(name: "retval", scope: !1793, file: !1, line: 1199, type: !15)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !1, line: 1198, column: 35)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !1, line: 1198, column: 5)
!1795 = distinct !DILexicalBlock(scope: !1785, file: !1, line: 1198, column: 5)
!1796 = !DILocation(line: 1181, column: 27, scope: !1785)
!1797 = !DILocation(line: 1182, column: 33, scope: !1785)
!1798 = !{!1799, !485, i64 16}
!1799 = !{!"client", !126, i64 0, !409, i64 8, !485, i64 16, !485, i64 24, !485, i64 32, !126, i64 40, !485, i64 48, !126, i64 56, !409, i64 64, !485, i64 72, !485, i64 80, !485, i64 88, !409, i64 96, !409, i64 100, !126, i64 104, !485, i64 112, !833, i64 120, !126, i64 128, !126, i64 136, !126, i64 144, !126, i64 152, !409, i64 160, !409, i64 164, !409, i64 168, !409, i64 172, !409, i64 176, !126, i64 184, !126, i64 192, !485, i64 200, !833, i64 208, !833, i64 216, !833, i64 224, !833, i64 232, !833, i64 240, !127, i64 248, !409, i64 292, !127, i64 296, !409, i64 344, !1800, i64 352, !409, i64 384, !1801, i64 392, !833, i64 480, !485, i64 488, !485, i64 496, !485, i64 504, !485, i64 512, !485, i64 520, !409, i64 528, !127, i64 532}
!1800 = !{!"multiState", !485, i64 0, !409, i64 8, !409, i64 12, !409, i64 16, !126, i64 24}
!1801 = !{!"blockingState", !833, i64 0, !485, i64 8, !485, i64 16, !126, i64 24, !485, i64 32, !485, i64 40, !833, i64 48, !833, i64 56, !409, i64 64, !409, i64 68, !833, i64 72, !485, i64 80}
!1802 = !DILocation(line: 1182, column: 39, scope: !1785)
!1803 = !{!1799, !485, i64 72}
!1804 = !DILocation(line: 1182, column: 36, scope: !1785)
!1805 = !{!485, !485, i64 0}
!1806 = !DILocation(line: 1182, column: 15, scope: !1785)
!1807 = !DILocation(line: 1182, column: 11, scope: !1785)
!1808 = !DILocation(line: 1184, column: 9, scope: !1785)
!1809 = !DILocation(line: 1186, column: 11, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1785, file: !1, line: 1186, column: 9)
!1811 = !DILocation(line: 1186, column: 9, scope: !1785)
!1812 = !DILocation(line: 1119, column: 9, scope: !1486, inlinedAt: !1813)
!1813 = distinct !DILocation(line: 1190, column: 13, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1810, file: !1, line: 1186, column: 20)
!1815 = !DILocation(line: 1122, column: 9, scope: !1486, inlinedAt: !1813)
!1816 = !DILocation(line: 1127, column: 9, scope: !1486, inlinedAt: !1813)
!1817 = !DILocation(line: 1117, column: 9, scope: !1486, inlinedAt: !1813)
!1818 = !DILocation(line: 1128, column: 21, scope: !1486, inlinedAt: !1813)
!1819 = !DILocation(line: 1118, column: 14, scope: !1486, inlinedAt: !1813)
!1820 = !DILocation(line: 1130, column: 13, scope: !1497, inlinedAt: !1813)
!1821 = !DILocation(line: 1132, column: 9, scope: !1499, inlinedAt: !1813)
!1822 = !DILocation(line: 1139, column: 9, scope: !1486, inlinedAt: !1813)
!1823 = !DILocation(line: 1115, column: 11, scope: !1486, inlinedAt: !1813)
!1824 = !DILocation(line: 1140, column: 14, scope: !1486, inlinedAt: !1813)
!1825 = !DILocation(line: 1116, column: 20, scope: !1486, inlinedAt: !1813)
!1826 = !DILocation(line: 1141, column: 12, scope: !1486, inlinedAt: !1813)
!1827 = !DILocation(line: 1141, column: 5, scope: !1486, inlinedAt: !1813)
!1828 = !DILocation(line: 1142, column: 10, scope: !1486, inlinedAt: !1813)
!1829 = !DILocation(line: 1142, column: 19, scope: !1486, inlinedAt: !1813)
!1830 = !DILocation(line: 1191, column: 18, scope: !1814)
!1831 = !DILocation(line: 1191, column: 24, scope: !1814)
!1832 = !DILocation(line: 1191, column: 21, scope: !1814)
!1833 = !DILocation(line: 1191, column: 9, scope: !1814)
!1834 = !DILocation(line: 1193, column: 5, scope: !1814)
!1835 = !DILocation(line: 1194, column: 13, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !1, line: 1194, column: 13)
!1837 = distinct !DILexicalBlock(scope: !1810, file: !1, line: 1193, column: 12)
!1838 = !DILocation(line: 1194, column: 37, scope: !1836)
!1839 = !DILocation(line: 1194, column: 13, scope: !1837)
!1840 = !DILocation(line: 1195, column: 37, scope: !1837)
!1841 = !DILocation(line: 1195, column: 43, scope: !1837)
!1842 = !DILocation(line: 1195, column: 40, scope: !1837)
!1843 = !DILocation(line: 1195, column: 13, scope: !1837)
!1844 = !DILocation(line: 0, scope: !1785)
!1845 = !DILocation(line: 0, scope: !1837)
!1846 = !DILocation(line: 1184, column: 22, scope: !1785)
!1847 = !DILocation(line: 1198, column: 24, scope: !1794)
!1848 = !{!1799, !409, i64 64}
!1849 = !DILocation(line: 1198, column: 19, scope: !1794)
!1850 = !DILocation(line: 1198, column: 5, scope: !1795)
!1851 = !DILocation(line: 1199, column: 51, scope: !1793)
!1852 = !DILocation(line: 1199, column: 48, scope: !1793)
!1853 = !DILocation(line: 1199, column: 60, scope: !1793)
!1854 = !DILocation(line: 87, column: 39, scope: !491, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 1200, column: 32, scope: !1793)
!1856 = !DILocation(line: 88, column: 27, scope: !491, inlinedAt: !1855)
!1857 = !DILocation(line: 88, column: 19, scope: !491, inlinedAt: !1855)
!1858 = !DILocation(line: 89, column: 5, scope: !491, inlinedAt: !1855)
!1859 = !DILocation(line: 91, column: 20, scope: !505, inlinedAt: !1855)
!1860 = !DILocation(line: 91, column: 13, scope: !505, inlinedAt: !1855)
!1861 = !DILocation(line: 93, column: 20, scope: !505, inlinedAt: !1855)
!1862 = !DILocation(line: 93, column: 34, scope: !505, inlinedAt: !1855)
!1863 = !DILocation(line: 93, column: 13, scope: !505, inlinedAt: !1855)
!1864 = !DILocation(line: 95, column: 20, scope: !505, inlinedAt: !1855)
!1865 = !DILocation(line: 95, column: 35, scope: !505, inlinedAt: !1855)
!1866 = !DILocation(line: 95, column: 13, scope: !505, inlinedAt: !1855)
!1867 = !DILocation(line: 97, column: 20, scope: !505, inlinedAt: !1855)
!1868 = !DILocation(line: 97, column: 35, scope: !505, inlinedAt: !1855)
!1869 = !DILocation(line: 97, column: 13, scope: !505, inlinedAt: !1855)
!1870 = !DILocation(line: 99, column: 20, scope: !505, inlinedAt: !1855)
!1871 = !DILocation(line: 99, column: 35, scope: !505, inlinedAt: !1855)
!1872 = !DILocation(line: 99, column: 13, scope: !505, inlinedAt: !1855)
!1873 = !DILocation(line: 0, scope: !505, inlinedAt: !1855)
!1874 = !DILocation(line: 1199, column: 22, scope: !1793)
!1875 = !DILocation(line: 1199, column: 13, scope: !1793)
!1876 = !DILocation(line: 1201, column: 9, scope: !1793)
!1877 = !DILocation(line: 1203, column: 20, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1793, file: !1, line: 1201, column: 24)
!1879 = !DILocation(line: 1204, column: 13, scope: !1878)
!1880 = !DILocation(line: 1206, column: 27, scope: !1878)
!1881 = !DILocation(line: 1206, column: 13, scope: !1878)
!1882 = !DILocation(line: 1198, column: 31, scope: !1794)
!1883 = distinct !{!1883, !1850, !1884}
!1884 = !DILocation(line: 1209, column: 5, scope: !1795)
!1885 = !DILocation(line: 1192, column: 16, scope: !1814)
!1886 = !DILocation(line: 1211, column: 9, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1785, file: !1, line: 1211, column: 9)
!1888 = !DILocation(line: 1211, column: 9, scope: !1785)
!1889 = !DILocation(line: 1210, column: 14, scope: !1785)
!1890 = !DILocation(line: 1183, column: 20, scope: !1785)
!1891 = !DILocation(line: 1212, column: 30, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1887, file: !1, line: 1211, column: 18)
!1893 = !DILocation(line: 1212, column: 36, scope: !1892)
!1894 = !DILocation(line: 1212, column: 33, scope: !1892)
!1895 = !DILocation(line: 1212, column: 9, scope: !1892)
!1896 = !DILocation(line: 1213, column: 54, scope: !1892)
!1897 = !DILocation(line: 1213, column: 51, scope: !1892)
!1898 = !DILocation(line: 1213, column: 65, scope: !1892)
!1899 = !DILocation(line: 1213, column: 69, scope: !1892)
!1900 = !{!1901, !409, i64 40}
!1901 = !{!"redisDb", !485, i64 0, !485, i64 8, !485, i64 16, !485, i64 24, !485, i64 32, !409, i64 40, !833, i64 48, !485, i64 56}
!1902 = !DILocation(line: 1213, column: 9, scope: !1892)
!1903 = !DILocation(line: 1214, column: 21, scope: !1892)
!1904 = !{!832, !833, i64 2080}
!1905 = !DILocation(line: 1215, column: 9, scope: !1892)
!1906 = !DILocation(line: 1216, column: 5, scope: !1892)
!1907 = !DILocation(line: 1217, column: 34, scope: !1785)
!1908 = !DILocation(line: 1217, column: 48, scope: !1785)
!1909 = !DILocation(line: 1217, column: 17, scope: !1785)
!1910 = !DILocation(line: 1217, column: 5, scope: !1785)
!1911 = !DILocation(line: 1218, column: 1, scope: !1785)
!1912 = distinct !DISubprogram(name: "pfcountCommand", scope: !1, file: !1, line: 1221, type: !1641, isLocal: false, isDefinition: true, scopeLine: 1221, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1913)
!1913 = !{!1914, !1915, !1916, !1917, !1918, !1924, !1925, !1926, !1930}
!1914 = !DILocalVariable(name: "c", arg: 1, scope: !1912, file: !1, line: 1221, type: !1520)
!1915 = !DILocalVariable(name: "o", scope: !1912, file: !1, line: 1222, type: !449)
!1916 = !DILocalVariable(name: "hdr", scope: !1912, file: !1, line: 1223, type: !17)
!1917 = !DILocalVariable(name: "card", scope: !1912, file: !1, line: 1224, type: !12)
!1918 = !DILocalVariable(name: "max", scope: !1919, file: !1, line: 1231, type: !1921)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !1, line: 1230, column: 22)
!1920 = distinct !DILexicalBlock(scope: !1912, file: !1, line: 1230, column: 9)
!1921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 131200, elements: !1922)
!1922 = !{!1923}
!1923 = !DISubrange(count: 16400)
!1924 = !DILocalVariable(name: "registers", scope: !1919, file: !1, line: 1231, type: !16)
!1925 = !DILocalVariable(name: "j", scope: !1919, file: !1, line: 1232, type: !15)
!1926 = !DILocalVariable(name: "o", scope: !1927, file: !1, line: 1241, type: !449)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !1, line: 1239, column: 39)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !1, line: 1239, column: 9)
!1929 = distinct !DILexicalBlock(scope: !1919, file: !1, line: 1239, column: 9)
!1930 = !DILocalVariable(name: "invalid", scope: !1931, file: !1, line: 1284, type: !15)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !1, line: 1283, column: 16)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !1, line: 1273, column: 13)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !1, line: 1267, column: 12)
!1934 = distinct !DILexicalBlock(scope: !1912, file: !1, line: 1263, column: 9)
!1935 = !DILocation(line: 1221, column: 29, scope: !1912)
!1936 = !DILocation(line: 1230, column: 12, scope: !1920)
!1937 = !DILocation(line: 1230, column: 17, scope: !1920)
!1938 = !DILocation(line: 1230, column: 9, scope: !1912)
!1939 = !DILocation(line: 1231, column: 9, scope: !1919)
!1940 = !DILocation(line: 1231, column: 17, scope: !1919)
!1941 = !DILocation(line: 1235, column: 9, scope: !1919)
!1942 = !DILocation(line: 1236, column: 15, scope: !1919)
!1943 = !DILocation(line: 1223, column: 20, scope: !1912)
!1944 = !DILocation(line: 1237, column: 14, scope: !1919)
!1945 = !DILocation(line: 1237, column: 23, scope: !1919)
!1946 = !DILocation(line: 1238, column: 25, scope: !1919)
!1947 = !DILocation(line: 1231, column: 51, scope: !1919)
!1948 = !DILocation(line: 1232, column: 13, scope: !1919)
!1949 = !DILocation(line: 1239, column: 28, scope: !1928)
!1950 = !DILocation(line: 1239, column: 23, scope: !1928)
!1951 = !DILocation(line: 1239, column: 9, scope: !1929)
!1952 = !DILocation(line: 1241, column: 40, scope: !1927)
!1953 = !DILocation(line: 1241, column: 46, scope: !1927)
!1954 = !DILocation(line: 1241, column: 43, scope: !1927)
!1955 = !DILocation(line: 1241, column: 23, scope: !1927)
!1956 = !DILocation(line: 1241, column: 19, scope: !1927)
!1957 = !DILocation(line: 1242, column: 19, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1927, file: !1, line: 1242, column: 17)
!1959 = !DILocation(line: 1242, column: 17, scope: !1927)
!1960 = !DILocation(line: 1243, column: 17, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1927, file: !1, line: 1243, column: 17)
!1962 = !DILocation(line: 1243, column: 41, scope: !1961)
!1963 = !DILocation(line: 1243, column: 17, scope: !1927)
!1964 = !DILocation(line: 1247, column: 17, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1927, file: !1, line: 1247, column: 17)
!1966 = !DILocation(line: 1247, column: 39, scope: !1965)
!1967 = !DILocation(line: 1247, column: 17, scope: !1927)
!1968 = !DILocation(line: 1248, column: 31, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1965, file: !1, line: 1247, column: 49)
!1970 = !DILocation(line: 1248, column: 17, scope: !1969)
!1971 = !DILocation(line: 1249, column: 17, scope: !1969)
!1972 = !DILocation(line: 1239, column: 35, scope: !1928)
!1973 = distinct !{!1973, !1951, !1974}
!1974 = !DILocation(line: 1251, column: 9, scope: !1929)
!1975 = !DILocation(line: 1254, column: 28, scope: !1919)
!1976 = !DILocation(line: 1254, column: 9, scope: !1919)
!1977 = !DILocation(line: 1255, column: 9, scope: !1919)
!1978 = !DILocation(line: 1256, column: 5, scope: !1920)
!1979 = !DILocation(line: 1262, column: 27, scope: !1912)
!1980 = !DILocation(line: 1262, column: 33, scope: !1912)
!1981 = !DILocation(line: 1262, column: 30, scope: !1912)
!1982 = !DILocation(line: 1262, column: 9, scope: !1912)
!1983 = !DILocation(line: 1222, column: 11, scope: !1912)
!1984 = !DILocation(line: 1263, column: 11, scope: !1934)
!1985 = !DILocation(line: 1263, column: 9, scope: !1912)
!1986 = !DILocation(line: 1266, column: 27, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1934, file: !1, line: 1263, column: 20)
!1988 = !{!1989, !485, i64 32}
!1989 = !{!"sharedObjectsStruct", !485, i64 0, !485, i64 8, !485, i64 16, !485, i64 24, !485, i64 32, !485, i64 40, !485, i64 48, !485, i64 56, !485, i64 64, !485, i64 72, !485, i64 80, !485, i64 88, !485, i64 96, !485, i64 104, !485, i64 112, !485, i64 120, !485, i64 128, !485, i64 136, !485, i64 144, !485, i64 152, !485, i64 160, !485, i64 168, !485, i64 176, !485, i64 184, !485, i64 192, !485, i64 200, !485, i64 208, !485, i64 216, !485, i64 224, !485, i64 232, !485, i64 240, !485, i64 248, !485, i64 256, !485, i64 264, !485, i64 272, !485, i64 280, !485, i64 288, !485, i64 296, !485, i64 304, !485, i64 312, !485, i64 320, !485, i64 328, !485, i64 336, !485, i64 344, !485, i64 352, !485, i64 360, !127, i64 368, !127, i64 448, !127, i64 80448, !127, i64 80704, !485, i64 80960, !485, i64 80968}
!1990 = !DILocation(line: 1266, column: 9, scope: !1987)
!1991 = !DILocation(line: 1267, column: 5, scope: !1987)
!1992 = !DILocation(line: 1268, column: 13, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1933, file: !1, line: 1268, column: 13)
!1994 = !DILocation(line: 1268, column: 37, scope: !1993)
!1995 = !DILocation(line: 1268, column: 13, scope: !1933)
!1996 = !DILocation(line: 1269, column: 37, scope: !1933)
!1997 = !DILocation(line: 1269, column: 43, scope: !1933)
!1998 = !DILocation(line: 1269, column: 40, scope: !1933)
!1999 = !DILocation(line: 1269, column: 13, scope: !1933)
!2000 = !DILocation(line: 1272, column: 18, scope: !1933)
!2001 = !DILocation(line: 1273, column: 13, scope: !1932)
!2002 = !DILocation(line: 1273, column: 13, scope: !1933)
!2003 = !DILocation(line: 1275, column: 30, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1932, file: !1, line: 1273, column: 35)
!2005 = !DILocation(line: 1275, column: 20, scope: !2004)
!2006 = !DILocation(line: 1224, column: 14, scope: !1912)
!2007 = !DILocation(line: 1276, column: 31, scope: !2004)
!2008 = !DILocation(line: 1276, column: 21, scope: !2004)
!2009 = !DILocation(line: 1276, column: 44, scope: !2004)
!2010 = !DILocation(line: 1277, column: 31, scope: !2004)
!2011 = !DILocation(line: 1277, column: 21, scope: !2004)
!2012 = !DILocation(line: 1277, column: 44, scope: !2004)
!2013 = !DILocation(line: 1278, column: 31, scope: !2004)
!2014 = !DILocation(line: 1278, column: 21, scope: !2004)
!2015 = !DILocation(line: 1278, column: 44, scope: !2004)
!2016 = !DILocation(line: 1279, column: 31, scope: !2004)
!2017 = !DILocation(line: 1279, column: 21, scope: !2004)
!2018 = !DILocation(line: 1279, column: 44, scope: !2004)
!2019 = !DILocation(line: 1280, column: 31, scope: !2004)
!2020 = !DILocation(line: 1280, column: 21, scope: !2004)
!2021 = !DILocation(line: 1280, column: 44, scope: !2004)
!2022 = !DILocation(line: 1281, column: 31, scope: !2004)
!2023 = !DILocation(line: 1281, column: 21, scope: !2004)
!2024 = !DILocation(line: 1281, column: 44, scope: !2004)
!2025 = !DILocation(line: 1282, column: 21, scope: !2004)
!2026 = !DILocation(line: 1282, column: 44, scope: !2004)
!2027 = !DILocation(line: 1276, column: 18, scope: !2004)
!2028 = !DILocation(line: 1277, column: 18, scope: !2004)
!2029 = !DILocation(line: 1278, column: 18, scope: !2004)
!2030 = !DILocation(line: 1279, column: 18, scope: !2004)
!2031 = !DILocation(line: 1280, column: 18, scope: !2004)
!2032 = !DILocation(line: 1281, column: 18, scope: !2004)
!2033 = !DILocation(line: 1282, column: 18, scope: !2004)
!2034 = !DILocation(line: 1283, column: 9, scope: !2004)
!2035 = !DILocation(line: 1284, column: 13, scope: !1931)
!2036 = !DILocation(line: 1284, column: 17, scope: !1931)
!2037 = !DILocation(line: 1286, column: 20, scope: !1931)
!2038 = !DILocation(line: 1287, column: 17, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1931, file: !1, line: 1287, column: 17)
!2040 = !DILocation(line: 1287, column: 17, scope: !1931)
!2041 = !DILocation(line: 1288, column: 31, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2039, file: !1, line: 1287, column: 26)
!2043 = !DILocation(line: 1288, column: 17, scope: !2042)
!2044 = !DILocation(line: 1305, column: 9, scope: !1932)
!2045 = !DILocation(line: 1291, column: 28, scope: !1931)
!2046 = !DILocation(line: 1291, column: 13, scope: !1931)
!2047 = !DILocation(line: 1291, column: 26, scope: !1931)
!2048 = !DILocation(line: 1292, column: 34, scope: !1931)
!2049 = !DILocation(line: 1292, column: 28, scope: !1931)
!2050 = !DILocation(line: 1292, column: 13, scope: !1931)
!2051 = !DILocation(line: 1292, column: 26, scope: !1931)
!2052 = !DILocation(line: 1293, column: 34, scope: !1931)
!2053 = !DILocation(line: 1293, column: 28, scope: !1931)
!2054 = !DILocation(line: 1293, column: 13, scope: !1931)
!2055 = !DILocation(line: 1293, column: 26, scope: !1931)
!2056 = !DILocation(line: 1294, column: 34, scope: !1931)
!2057 = !DILocation(line: 1294, column: 28, scope: !1931)
!2058 = !DILocation(line: 1294, column: 13, scope: !1931)
!2059 = !DILocation(line: 1294, column: 26, scope: !1931)
!2060 = !DILocation(line: 1295, column: 34, scope: !1931)
!2061 = !DILocation(line: 1295, column: 28, scope: !1931)
!2062 = !DILocation(line: 1295, column: 13, scope: !1931)
!2063 = !DILocation(line: 1295, column: 26, scope: !1931)
!2064 = !DILocation(line: 1296, column: 34, scope: !1931)
!2065 = !DILocation(line: 1296, column: 28, scope: !1931)
!2066 = !DILocation(line: 1296, column: 13, scope: !1931)
!2067 = !DILocation(line: 1296, column: 26, scope: !1931)
!2068 = !DILocation(line: 1297, column: 34, scope: !1931)
!2069 = !DILocation(line: 1297, column: 28, scope: !1931)
!2070 = !DILocation(line: 1297, column: 13, scope: !1931)
!2071 = !DILocation(line: 1297, column: 26, scope: !1931)
!2072 = !DILocation(line: 1298, column: 34, scope: !1931)
!2073 = !DILocation(line: 1298, column: 28, scope: !1931)
!2074 = !DILocation(line: 1298, column: 26, scope: !1931)
!2075 = !DILocation(line: 1303, column: 34, scope: !1931)
!2076 = !DILocation(line: 1303, column: 40, scope: !1931)
!2077 = !DILocation(line: 1303, column: 37, scope: !1931)
!2078 = !DILocation(line: 1303, column: 13, scope: !1931)
!2079 = !DILocation(line: 1304, column: 25, scope: !1931)
!2080 = !DILocation(line: 0, scope: !1931)
!2081 = !DILocation(line: 1306, column: 9, scope: !1933)
!2082 = !DILocation(line: 1308, column: 1, scope: !1912)
!2083 = distinct !DISubprogram(name: "pfmergeCommand", scope: !1, file: !1, line: 1311, type: !1641, isLocal: false, isDefinition: true, scopeLine: 1311, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2084)
!2084 = !{!2085, !2086, !2088, !2089, !2090, !2091, !2095}
!2085 = !DILocalVariable(name: "c", arg: 1, scope: !2083, file: !1, line: 1311, type: !1520)
!2086 = !DILocalVariable(name: "max", scope: !2083, file: !1, line: 1312, type: !2087)
!2087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 131072, elements: !1738)
!2088 = !DILocalVariable(name: "hdr", scope: !2083, file: !1, line: 1313, type: !17)
!2089 = !DILocalVariable(name: "j", scope: !2083, file: !1, line: 1314, type: !15)
!2090 = !DILocalVariable(name: "use_dense", scope: !2083, file: !1, line: 1315, type: !15)
!2091 = !DILocalVariable(name: "o", scope: !2092, file: !1, line: 1323, type: !449)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !1, line: 1321, column: 35)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !1, line: 1321, column: 5)
!2094 = distinct !DILexicalBlock(scope: !2083, file: !1, line: 1321, column: 5)
!2095 = !DILocalVariable(name: "o", scope: !2083, file: !1, line: 1341, type: !449)
!2096 = !DILocation(line: 1311, column: 29, scope: !2083)
!2097 = !DILocation(line: 1312, column: 5, scope: !2083)
!2098 = !DILocation(line: 1312, column: 13, scope: !2083)
!2099 = !DILocation(line: 1315, column: 9, scope: !2083)
!2100 = !DILocation(line: 1320, column: 5, scope: !2083)
!2101 = !DILocation(line: 1314, column: 9, scope: !2083)
!2102 = !DILocation(line: 1321, column: 24, scope: !2093)
!2103 = !DILocation(line: 1321, column: 19, scope: !2093)
!2104 = !DILocation(line: 0, scope: !2083)
!2105 = !DILocation(line: 1321, column: 5, scope: !2094)
!2106 = !DILocation(line: 1323, column: 39, scope: !2092)
!2107 = !DILocation(line: 1323, column: 19, scope: !2092)
!2108 = !DILocation(line: 1323, column: 15, scope: !2092)
!2109 = !DILocation(line: 1324, column: 15, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2092, file: !1, line: 1324, column: 13)
!2111 = !DILocation(line: 1324, column: 13, scope: !2092)
!2112 = !DILocation(line: 1325, column: 13, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2092, file: !1, line: 1325, column: 13)
!2114 = !DILocation(line: 1325, column: 37, scope: !2113)
!2115 = !DILocation(line: 1325, column: 13, scope: !2092)
!2116 = !DILocation(line: 1329, column: 18, scope: !2092)
!2117 = !DILocation(line: 1313, column: 20, scope: !2083)
!2118 = !DILocation(line: 1330, column: 18, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2092, file: !1, line: 1330, column: 13)
!2120 = !DILocation(line: 1330, column: 27, scope: !2119)
!2121 = !DILocation(line: 1330, column: 13, scope: !2092)
!2122 = !DILocation(line: 1334, column: 13, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2092, file: !1, line: 1334, column: 13)
!2124 = !DILocation(line: 1334, column: 29, scope: !2123)
!2125 = !DILocation(line: 1334, column: 13, scope: !2092)
!2126 = !DILocation(line: 1335, column: 27, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2123, file: !1, line: 1334, column: 39)
!2128 = !DILocation(line: 1335, column: 13, scope: !2127)
!2129 = !DILocation(line: 1336, column: 13, scope: !2127)
!2130 = !DILocation(line: 0, scope: !2119)
!2131 = !DILocation(line: 1321, column: 31, scope: !2093)
!2132 = distinct !{!2132, !2105, !2133}
!2133 = !DILocation(line: 1338, column: 5, scope: !2094)
!2134 = !DILocation(line: 1341, column: 36, scope: !2083)
!2135 = !DILocation(line: 1341, column: 15, scope: !2083)
!2136 = !DILocation(line: 1341, column: 11, scope: !2083)
!2137 = !DILocation(line: 1342, column: 11, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2083, file: !1, line: 1342, column: 9)
!2139 = !DILocation(line: 1342, column: 9, scope: !2083)
!2140 = !DILocation(line: 1119, column: 9, scope: !1486, inlinedAt: !2141)
!2141 = distinct !DILocation(line: 1346, column: 13, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2138, file: !1, line: 1342, column: 20)
!2143 = !DILocation(line: 1122, column: 9, scope: !1486, inlinedAt: !2141)
!2144 = !DILocation(line: 1127, column: 9, scope: !1486, inlinedAt: !2141)
!2145 = !DILocation(line: 1117, column: 9, scope: !1486, inlinedAt: !2141)
!2146 = !DILocation(line: 1128, column: 21, scope: !1486, inlinedAt: !2141)
!2147 = !DILocation(line: 1118, column: 14, scope: !1486, inlinedAt: !2141)
!2148 = !DILocation(line: 1130, column: 13, scope: !1497, inlinedAt: !2141)
!2149 = !DILocation(line: 1132, column: 9, scope: !1499, inlinedAt: !2141)
!2150 = !DILocation(line: 1139, column: 9, scope: !1486, inlinedAt: !2141)
!2151 = !DILocation(line: 1115, column: 11, scope: !1486, inlinedAt: !2141)
!2152 = !DILocation(line: 1140, column: 14, scope: !1486, inlinedAt: !2141)
!2153 = !DILocation(line: 1116, column: 20, scope: !1486, inlinedAt: !2141)
!2154 = !DILocation(line: 1141, column: 12, scope: !1486, inlinedAt: !2141)
!2155 = !DILocation(line: 1141, column: 5, scope: !1486, inlinedAt: !2141)
!2156 = !DILocation(line: 1142, column: 10, scope: !1486, inlinedAt: !2141)
!2157 = !DILocation(line: 1142, column: 19, scope: !1486, inlinedAt: !2141)
!2158 = !DILocation(line: 1347, column: 18, scope: !2142)
!2159 = !DILocation(line: 1347, column: 24, scope: !2142)
!2160 = !DILocation(line: 1347, column: 21, scope: !2142)
!2161 = !DILocation(line: 1347, column: 9, scope: !2142)
!2162 = !DILocation(line: 1348, column: 5, scope: !2142)
!2163 = !DILocation(line: 1352, column: 37, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2138, file: !1, line: 1348, column: 12)
!2165 = !DILocation(line: 1352, column: 43, scope: !2164)
!2166 = !DILocation(line: 1352, column: 40, scope: !2164)
!2167 = !DILocation(line: 1352, column: 13, scope: !2164)
!2168 = !DILocation(line: 0, scope: !2164)
!2169 = !DILocation(line: 1357, column: 9, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2083, file: !1, line: 1357, column: 9)
!2171 = !DILocation(line: 1357, column: 19, scope: !2170)
!2172 = !DILocation(line: 1357, column: 22, scope: !2170)
!2173 = !DILocation(line: 1357, column: 42, scope: !2170)
!2174 = !DILocation(line: 1357, column: 9, scope: !2083)
!2175 = !DILocation(line: 1358, column: 23, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2170, file: !1, line: 1357, column: 52)
!2177 = !DILocation(line: 1358, column: 9, scope: !2176)
!2178 = !DILocation(line: 1359, column: 9, scope: !2176)
!2179 = !DILocation(line: 1364, column: 5, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2083, file: !1, line: 1364, column: 5)
!2181 = !DILocation(line: 1365, column: 13, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !1, line: 1365, column: 13)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !1, line: 1364, column: 41)
!2184 = distinct !DILexicalBlock(scope: !2180, file: !1, line: 1364, column: 5)
!2185 = !DILocation(line: 1365, column: 20, scope: !2182)
!2186 = !DILocation(line: 1365, column: 13, scope: !2183)
!2187 = !DILocation(line: 1366, column: 18, scope: !2183)
!2188 = !DILocation(line: 1367, column: 21, scope: !2183)
!2189 = !DILocation(line: 1367, column: 9, scope: !2183)
!2190 = !DILocation(line: 493, column: 26, scope: !224, inlinedAt: !2191)
!2191 = distinct !DILocation(line: 1368, column: 25, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2183, file: !1, line: 1367, column: 31)
!2193 = !DILocation(line: 493, column: 42, scope: !224, inlinedAt: !2191)
!2194 = !DILocation(line: 493, column: 57, scope: !224, inlinedAt: !2191)
!2195 = !DILocation(line: 496, column: 5, scope: !233, inlinedAt: !2191)
!2196 = !DILocation(line: 497, column: 9, scope: !242, inlinedAt: !2191)
!2197 = !DILocation(line: 497, column: 15, scope: !242, inlinedAt: !2191)
!2198 = !DILocation(line: 497, column: 9, scope: !224, inlinedAt: !2191)
!2199 = !DILocation(line: 498, column: 9, scope: !240, inlinedAt: !2191)
!2200 = !DILocation(line: 499, column: 9, scope: !241, inlinedAt: !2191)
!2201 = !DILocation(line: 1369, column: 26, scope: !2192)
!2202 = !DILocation(line: 1369, column: 52, scope: !2192)
!2203 = !DILocation(line: 1364, column: 37, scope: !2184)
!2204 = !DILocation(line: 1364, column: 19, scope: !2184)
!2205 = distinct !{!2205, !2179, !2206}
!2206 = !DILocation(line: 1371, column: 5, scope: !2180)
!2207 = !DILocation(line: 1372, column: 14, scope: !2083)
!2208 = !DILocation(line: 1374, column: 5, scope: !2083)
!2209 = !DILocation(line: 1376, column: 26, scope: !2083)
!2210 = !DILocation(line: 1376, column: 32, scope: !2083)
!2211 = !DILocation(line: 1376, column: 29, scope: !2083)
!2212 = !DILocation(line: 1376, column: 5, scope: !2083)
!2213 = !DILocation(line: 1379, column: 50, scope: !2083)
!2214 = !DILocation(line: 1379, column: 47, scope: !2083)
!2215 = !DILocation(line: 1379, column: 61, scope: !2083)
!2216 = !DILocation(line: 1379, column: 65, scope: !2083)
!2217 = !DILocation(line: 1379, column: 5, scope: !2083)
!2218 = !DILocation(line: 1380, column: 17, scope: !2083)
!2219 = !DILocation(line: 1381, column: 23, scope: !2083)
!2220 = !{!1989, !485, i64 8}
!2221 = !DILocation(line: 1381, column: 5, scope: !2083)
!2222 = !DILocation(line: 1382, column: 1, scope: !2083)
!2223 = distinct !DISubprogram(name: "pfselftestCommand", scope: !1, file: !1, line: 1390, type: !1641, isLocal: false, isDefinition: true, scopeLine: 1390, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2224)
!2224 = !{!2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2240, !2242, !2243, !2244, !2245, !2246, !2250, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2267}
!2225 = !DILocalVariable(name: "c", arg: 1, scope: !2223, file: !1, line: 1390, type: !1520)
!2226 = !DILocalVariable(name: "j", scope: !2223, file: !1, line: 1391, type: !72)
!2227 = !DILocalVariable(name: "i", scope: !2223, file: !1, line: 1391, type: !72)
!2228 = !DILocalVariable(name: "bitcounters", scope: !2223, file: !1, line: 1392, type: !38)
!2229 = !DILocalVariable(name: "hdr", scope: !2223, file: !1, line: 1393, type: !17)
!2230 = !DILocalVariable(name: "hdr2", scope: !2223, file: !1, line: 1393, type: !17)
!2231 = !DILocalVariable(name: "o", scope: !2223, file: !1, line: 1394, type: !449)
!2232 = !DILocalVariable(name: "bytecounters", scope: !2223, file: !1, line: 1395, type: !2087)
!2233 = !DILocalVariable(name: "r", scope: !2234, file: !1, line: 1405, type: !72)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !1, line: 1404, column: 45)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !1, line: 1404, column: 9)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !1, line: 1404, column: 9)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !1, line: 1401, column: 43)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !1, line: 1401, column: 5)
!2239 = distinct !DILexicalBlock(scope: !2223, file: !1, line: 1401, column: 5)
!2240 = !DILocalVariable(name: "_p", scope: !2241, file: !1, line: 1408, type: !16)
!2241 = distinct !DILexicalBlock(scope: !2234, file: !1, line: 1408, column: 13)
!2242 = !DILocalVariable(name: "_byte", scope: !2241, file: !1, line: 1408, type: !14)
!2243 = !DILocalVariable(name: "_fb", scope: !2241, file: !1, line: 1408, type: !14)
!2244 = !DILocalVariable(name: "_fb8", scope: !2241, file: !1, line: 1408, type: !14)
!2245 = !DILocalVariable(name: "_v", scope: !2241, file: !1, line: 1408, type: !14)
!2246 = !DILocalVariable(name: "val", scope: !2247, file: !1, line: 1412, type: !72)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !1, line: 1411, column: 45)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !1, line: 1411, column: 9)
!2249 = distinct !DILexicalBlock(scope: !2237, file: !1, line: 1411, column: 9)
!2250 = !DILocalVariable(name: "_p", scope: !2251, file: !1, line: 1414, type: !16)
!2251 = distinct !DILexicalBlock(scope: !2247, file: !1, line: 1414, column: 13)
!2252 = !DILocalVariable(name: "_byte", scope: !2251, file: !1, line: 1414, type: !14)
!2253 = !DILocalVariable(name: "_fb", scope: !2251, file: !1, line: 1414, type: !14)
!2254 = !DILocalVariable(name: "_fb8", scope: !2251, file: !1, line: 1414, type: !14)
!2255 = !DILocalVariable(name: "b0", scope: !2251, file: !1, line: 1414, type: !14)
!2256 = !DILocalVariable(name: "b1", scope: !2251, file: !1, line: 1414, type: !14)
!2257 = !DILocalVariable(name: "relerr", scope: !2223, file: !1, line: 1436, type: !41)
!2258 = !DILocalVariable(name: "checkpoint", scope: !2223, file: !1, line: 1437, type: !44)
!2259 = !DILocalVariable(name: "seed", scope: !2223, file: !1, line: 1438, type: !12)
!2260 = !DILocalVariable(name: "ele", scope: !2223, file: !1, line: 1439, type: !12)
!2261 = !DILocalVariable(name: "abserr", scope: !2262, file: !1, line: 1463, type: !44)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !1, line: 1462, column: 30)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !1, line: 1462, column: 13)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !1, line: 1440, column: 37)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !1, line: 1440, column: 5)
!2266 = distinct !DILexicalBlock(scope: !2223, file: !1, line: 1440, column: 5)
!2267 = !DILocalVariable(name: "maxerr", scope: !2262, file: !1, line: 1464, type: !12)
!2268 = !DILocation(line: 1390, column: 32, scope: !2223)
!2269 = !DILocation(line: 1392, column: 23, scope: !2223)
!2270 = !DILocation(line: 1392, column: 9, scope: !2223)
!2271 = !DILocation(line: 1393, column: 26, scope: !2223)
!2272 = !DILocation(line: 1393, column: 20, scope: !2223)
!2273 = !DILocation(line: 1394, column: 11, scope: !2223)
!2274 = !DILocation(line: 1395, column: 5, scope: !2223)
!2275 = !DILocation(line: 1395, column: 13, scope: !2223)
!2276 = !DILocation(line: 1391, column: 18, scope: !2223)
!2277 = !DILocation(line: 1401, column: 5, scope: !2239)
!2278 = !DILocation(line: 1391, column: 21, scope: !2223)
!2279 = !DILocation(line: 1404, column: 9, scope: !2236)
!2280 = !DILocation(line: 1405, column: 30, scope: !2234)
!2281 = !DILocation(line: 1405, column: 37, scope: !2234)
!2282 = !DILocation(line: 1405, column: 26, scope: !2234)
!2283 = !DILocation(line: 1407, column: 31, scope: !2234)
!2284 = !DILocation(line: 1407, column: 13, scope: !2234)
!2285 = !DILocation(line: 1407, column: 29, scope: !2234)
!2286 = !DILocation(line: 1408, column: 13, scope: !2241)
!2287 = !DILocation(line: 1404, column: 41, scope: !2235)
!2288 = !DILocation(line: 1404, column: 23, scope: !2235)
!2289 = distinct !{!2289, !2279, !2290}
!2290 = !DILocation(line: 1409, column: 9, scope: !2236)
!2291 = !DILocation(line: 1414, column: 13, scope: !2251)
!2292 = !DILocation(line: 1412, column: 26, scope: !2247)
!2293 = !DILocation(line: 1415, column: 24, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2247, file: !1, line: 1415, column: 17)
!2295 = !DILocation(line: 1415, column: 21, scope: !2294)
!2296 = !DILocation(line: 1415, column: 17, scope: !2247)
!2297 = !DILocation(line: 1416, column: 17, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2294, file: !1, line: 1415, column: 41)
!2299 = !DILocation(line: 1488, column: 5, scope: !2223)
!2300 = !DILocation(line: 1489, column: 9, scope: !2223)
!2301 = !DILocation(line: 1411, column: 41, scope: !2248)
!2302 = !DILocation(line: 1411, column: 23, scope: !2248)
!2303 = !DILocation(line: 1411, column: 9, scope: !2249)
!2304 = distinct !{!2304, !2303, !2305}
!2305 = !DILocation(line: 1421, column: 9, scope: !2249)
!2306 = !DILocation(line: 1401, column: 39, scope: !2238)
!2307 = !DILocation(line: 1401, column: 19, scope: !2238)
!2308 = distinct !{!2308, !2277, !2309}
!2309 = !DILocation(line: 1422, column: 5, scope: !2239)
!2310 = !DILocation(line: 1434, column: 5, scope: !2223)
!2311 = !DILocation(line: 1119, column: 9, scope: !1486, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 1435, column: 9, scope: !2223)
!2313 = !DILocation(line: 1122, column: 9, scope: !1486, inlinedAt: !2312)
!2314 = !DILocation(line: 1127, column: 9, scope: !1486, inlinedAt: !2312)
!2315 = !DILocation(line: 1117, column: 9, scope: !1486, inlinedAt: !2312)
!2316 = !DILocation(line: 1128, column: 21, scope: !1486, inlinedAt: !2312)
!2317 = !DILocation(line: 1118, column: 14, scope: !1486, inlinedAt: !2312)
!2318 = !DILocation(line: 1130, column: 13, scope: !1497, inlinedAt: !2312)
!2319 = !DILocation(line: 1132, column: 9, scope: !1499, inlinedAt: !2312)
!2320 = !DILocation(line: 1139, column: 9, scope: !1486, inlinedAt: !2312)
!2321 = !DILocation(line: 1115, column: 11, scope: !1486, inlinedAt: !2312)
!2322 = !DILocation(line: 1140, column: 14, scope: !1486, inlinedAt: !2312)
!2323 = !DILocation(line: 1116, column: 20, scope: !1486, inlinedAt: !2312)
!2324 = !DILocation(line: 1141, column: 12, scope: !1486, inlinedAt: !2312)
!2325 = !DILocation(line: 1141, column: 5, scope: !1486, inlinedAt: !2312)
!2326 = !DILocation(line: 1142, column: 10, scope: !1486, inlinedAt: !2312)
!2327 = !DILocation(line: 1142, column: 19, scope: !1486, inlinedAt: !2312)
!2328 = !DILocation(line: 1436, column: 26, scope: !2223)
!2329 = !DILocation(line: 1436, column: 25, scope: !2223)
!2330 = !DILocation(line: 1436, column: 12, scope: !2223)
!2331 = !DILocation(line: 1437, column: 13, scope: !2223)
!2332 = !DILocation(line: 1438, column: 31, scope: !2223)
!2333 = !DILocation(line: 1438, column: 21, scope: !2223)
!2334 = !DILocation(line: 1438, column: 50, scope: !2223)
!2335 = !DILocation(line: 1438, column: 40, scope: !2223)
!2336 = !DILocation(line: 1438, column: 57, scope: !2223)
!2337 = !DILocation(line: 1438, column: 38, scope: !2223)
!2338 = !DILocation(line: 1438, column: 14, scope: !2223)
!2339 = !DILocation(line: 1440, column: 5, scope: !2266)
!2340 = !DILocation(line: 1441, column: 17, scope: !2264)
!2341 = !DILocation(line: 1439, column: 14, scope: !2223)
!2342 = !DILocation(line: 1441, column: 13, scope: !2264)
!2343 = !DILocation(line: 511, column: 26, scope: !259, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 1442, column: 9, scope: !2264)
!2345 = !DILocation(line: 511, column: 52, scope: !259, inlinedAt: !2344)
!2346 = !DILocation(line: 511, column: 64, scope: !259, inlinedAt: !2344)
!2347 = !DILocation(line: 451, column: 30, scope: !185, inlinedAt: !2348)
!2348 = distinct !DILocation(line: 513, column: 21, scope: !259, inlinedAt: !2344)
!2349 = !DILocation(line: 451, column: 42, scope: !185, inlinedAt: !2348)
!2350 = !DILocation(line: 396, column: 38, scope: !90, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 466, column: 12, scope: !185, inlinedAt: !2348)
!2352 = !DILocation(line: 396, column: 47, scope: !90, inlinedAt: !2351)
!2353 = !DILocation(line: 396, column: 65, scope: !90, inlinedAt: !2351)
!2354 = !DILocation(line: 397, column: 20, scope: !90, inlinedAt: !2351)
!2355 = !DILocation(line: 398, column: 15, scope: !90, inlinedAt: !2351)
!2356 = !DILocation(line: 399, column: 14, scope: !90, inlinedAt: !2351)
!2357 = !DILocation(line: 400, column: 20, scope: !90, inlinedAt: !2351)
!2358 = !DILocation(line: 401, column: 20, scope: !90, inlinedAt: !2351)
!2359 = !DILocation(line: 404, column: 18, scope: !107, inlinedAt: !2351)
!2360 = !DILocation(line: 423, column: 11, scope: !107, inlinedAt: !2351)
!2361 = !DILocation(line: 424, column: 16, scope: !107, inlinedAt: !2351)
!2362 = !DILocation(line: 424, column: 11, scope: !107, inlinedAt: !2351)
!2363 = !DILocation(line: 425, column: 11, scope: !107, inlinedAt: !2351)
!2364 = !DILocation(line: 426, column: 11, scope: !107, inlinedAt: !2351)
!2365 = !DILocation(line: 427, column: 11, scope: !107, inlinedAt: !2351)
!2366 = !DILocation(line: 442, column: 12, scope: !90, inlinedAt: !2351)
!2367 = !DILocation(line: 442, column: 7, scope: !90, inlinedAt: !2351)
!2368 = !DILocation(line: 443, column: 7, scope: !90, inlinedAt: !2351)
!2369 = !DILocation(line: 444, column: 12, scope: !90, inlinedAt: !2351)
!2370 = !DILocation(line: 444, column: 7, scope: !90, inlinedAt: !2351)
!2371 = !DILocation(line: 452, column: 14, scope: !185, inlinedAt: !2348)
!2372 = !DILocation(line: 452, column: 25, scope: !185, inlinedAt: !2348)
!2373 = !DILocation(line: 468, column: 10, scope: !185, inlinedAt: !2348)
!2374 = !DILocation(line: 469, column: 10, scope: !185, inlinedAt: !2348)
!2375 = !DILocation(line: 452, column: 20, scope: !185, inlinedAt: !2348)
!2376 = !DILocation(line: 453, column: 9, scope: !185, inlinedAt: !2348)
!2377 = !DILocation(line: 473, column: 17, scope: !185, inlinedAt: !2348)
!2378 = !DILocation(line: 473, column: 24, scope: !185, inlinedAt: !2348)
!2379 = !DILocation(line: 473, column: 5, scope: !185, inlinedAt: !2348)
!2380 = !DILocation(line: 474, column: 14, scope: !216, inlinedAt: !2348)
!2381 = !DILocation(line: 475, column: 13, scope: !216, inlinedAt: !2348)
!2382 = !DILocation(line: 477, column: 13, scope: !185, inlinedAt: !2348)
!2383 = !DILocation(line: 512, column: 10, scope: !259, inlinedAt: !2344)
!2384 = !DILocation(line: 493, column: 26, scope: !224, inlinedAt: !2385)
!2385 = distinct !DILocation(line: 515, column: 12, scope: !259, inlinedAt: !2344)
!2386 = !DILocation(line: 493, column: 42, scope: !224, inlinedAt: !2385)
!2387 = !DILocation(line: 496, column: 5, scope: !233, inlinedAt: !2385)
!2388 = !DILocation(line: 497, column: 15, scope: !242, inlinedAt: !2385)
!2389 = !DILocation(line: 497, column: 9, scope: !224, inlinedAt: !2385)
!2390 = !DILocation(line: 498, column: 9, scope: !240, inlinedAt: !2385)
!2391 = !DILocation(line: 499, column: 9, scope: !241, inlinedAt: !2385)
!2392 = !DILocation(line: 1443, column: 9, scope: !2264)
!2393 = !DILocation(line: 1447, column: 15, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2264, file: !1, line: 1447, column: 13)
!2395 = !DILocation(line: 1447, column: 29, scope: !2394)
!2396 = !DILocation(line: 1447, column: 43, scope: !2394)
!2397 = !DILocation(line: 1447, column: 63, scope: !2394)
!2398 = !DILocation(line: 1447, column: 34, scope: !2394)
!2399 = !DILocation(line: 1447, column: 13, scope: !2264)
!2400 = !DILocation(line: 1448, column: 23, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2394, file: !1, line: 1447, column: 67)
!2402 = !DILocation(line: 1393, column: 57, scope: !2223)
!2403 = !DILocation(line: 1449, column: 23, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2401, file: !1, line: 1449, column: 17)
!2405 = !DILocation(line: 1449, column: 32, scope: !2404)
!2406 = !DILocation(line: 1449, column: 17, scope: !2401)
!2407 = !DILocation(line: 1450, column: 17, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2404, file: !1, line: 1449, column: 47)
!2409 = !DILocation(line: 1451, column: 17, scope: !2408)
!2410 = !DILocation(line: 1456, column: 32, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2264, file: !1, line: 1456, column: 13)
!2412 = !DILocation(line: 1456, column: 66, scope: !2411)
!2413 = !DILocation(line: 1456, column: 54, scope: !2411)
!2414 = !DILocation(line: 1456, column: 51, scope: !2411)
!2415 = !DILocation(line: 1456, column: 13, scope: !2264)
!2416 = !DILocation(line: 1457, column: 17, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2411, file: !1, line: 1456, column: 77)
!2418 = !DILocation(line: 1458, column: 17, scope: !2417)
!2419 = !DILocation(line: 1463, column: 52, scope: !2262)
!2420 = !DILocation(line: 1463, column: 41, scope: !2262)
!2421 = !DILocation(line: 1463, column: 21, scope: !2262)
!2422 = !DILocation(line: 1464, column: 45, scope: !2262)
!2423 = !DILocation(line: 1464, column: 44, scope: !2262)
!2424 = !DILocation(line: 1464, column: 31, scope: !2262)
!2425 = !DILocation(line: 1464, column: 22, scope: !2262)
!2426 = !DILocation(line: 1470, column: 19, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2262, file: !1, line: 1470, column: 17)
!2428 = !DILocation(line: 1470, column: 17, scope: !2262)
!2429 = !DILocation(line: 1472, column: 24, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2262, file: !1, line: 1472, column: 17)
!2431 = !DILocation(line: 1472, column: 38, scope: !2430)
!2432 = !DILocation(line: 1472, column: 17, scope: !2262)
!2433 = !DILocation(line: 1473, column: 24, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2262, file: !1, line: 1473, column: 17)
!2435 = !DILocation(line: 1473, column: 17, scope: !2262)
!2436 = !DILocation(line: 1480, column: 24, scope: !2262)
!2437 = !DILocation(line: 1474, column: 17, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2434, file: !1, line: 1473, column: 43)
!2439 = !DILocation(line: 1440, column: 33, scope: !2265)
!2440 = !DILocation(line: 1440, column: 19, scope: !2265)
!2441 = distinct !{!2441, !2339, !2442}
!2442 = !DILocation(line: 1482, column: 5, scope: !2266)
!2443 = !DILocation(line: 1485, column: 23, scope: !2223)
!2444 = !DILocation(line: 1485, column: 5, scope: !2223)
!2445 = !DILocation(line: 1489, column: 9, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2223, file: !1, line: 1489, column: 9)
!2447 = !DILocation(line: 1489, column: 12, scope: !2446)
!2448 = !DILocation(line: 1490, column: 1, scope: !2223)
!2449 = distinct !DISubprogram(name: "pfdebugCommand", scope: !1, file: !1, line: 1494, type: !1641, isLocal: false, isDefinition: true, scopeLine: 1494, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2450)
!2450 = !{!2451, !2452, !2453, !2454, !2455, !2456, !2462, !2464, !2465, !2466, !2467, !2468, !2469, !2472, !2473, !2474, !2476, !2477, !2481}
!2451 = !DILocalVariable(name: "c", arg: 1, scope: !2449, file: !1, line: 1494, type: !1520)
!2452 = !DILocalVariable(name: "cmd", scope: !2449, file: !1, line: 1495, type: !40)
!2453 = !DILocalVariable(name: "hdr", scope: !2449, file: !1, line: 1496, type: !17)
!2454 = !DILocalVariable(name: "o", scope: !2449, file: !1, line: 1497, type: !449)
!2455 = !DILocalVariable(name: "j", scope: !2449, file: !1, line: 1498, type: !15)
!2456 = !DILocalVariable(name: "val", scope: !2457, file: !1, line: 1524, type: !6)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !1, line: 1523, column: 45)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !1, line: 1523, column: 9)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !1, line: 1523, column: 9)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !1, line: 1510, column: 36)
!2461 = distinct !DILexicalBlock(scope: !2449, file: !1, line: 1510, column: 9)
!2462 = !DILocalVariable(name: "_p", scope: !2463, file: !1, line: 1526, type: !16)
!2463 = distinct !DILexicalBlock(scope: !2457, file: !1, line: 1526, column: 13)
!2464 = !DILocalVariable(name: "_byte", scope: !2463, file: !1, line: 1526, type: !14)
!2465 = !DILocalVariable(name: "_fb", scope: !2463, file: !1, line: 1526, type: !14)
!2466 = !DILocalVariable(name: "_fb8", scope: !2463, file: !1, line: 1526, type: !14)
!2467 = !DILocalVariable(name: "b0", scope: !2463, file: !1, line: 1526, type: !14)
!2468 = !DILocalVariable(name: "b1", scope: !2463, file: !1, line: 1526, type: !14)
!2469 = !DILocalVariable(name: "p", scope: !2470, file: !1, line: 1534, type: !16)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !1, line: 1531, column: 41)
!2471 = distinct !DILexicalBlock(scope: !2461, file: !1, line: 1531, column: 14)
!2472 = !DILocalVariable(name: "end", scope: !2470, file: !1, line: 1534, type: !16)
!2473 = !DILocalVariable(name: "decoded", scope: !2470, file: !1, line: 1535, type: !38)
!2474 = !DILocalVariable(name: "runlen", scope: !2475, file: !1, line: 1544, type: !15)
!2475 = distinct !DILexicalBlock(scope: !2470, file: !1, line: 1543, column: 24)
!2476 = !DILocalVariable(name: "regval", scope: !2475, file: !1, line: 1544, type: !15)
!2477 = !DILocalVariable(name: "encodingstr", scope: !2478, file: !1, line: 1567, type: !2480)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !1, line: 1566, column: 43)
!2479 = distinct !DILexicalBlock(scope: !2471, file: !1, line: 1566, column: 14)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 128, elements: !1585)
!2481 = !DILocalVariable(name: "conv", scope: !2482, file: !1, line: 1574, type: !15)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !1, line: 1573, column: 42)
!2483 = distinct !DILexicalBlock(scope: !2479, file: !1, line: 1573, column: 14)
!2484 = !DILocation(line: 1494, column: 29, scope: !2449)
!2485 = !DILocation(line: 1495, column: 20, scope: !2449)
!2486 = !DILocation(line: 1495, column: 17, scope: !2449)
!2487 = !DILocation(line: 1495, column: 29, scope: !2449)
!2488 = !DILocation(line: 1495, column: 11, scope: !2449)
!2489 = !DILocation(line: 1500, column: 27, scope: !2449)
!2490 = !DILocation(line: 1500, column: 30, scope: !2449)
!2491 = !DILocation(line: 1500, column: 9, scope: !2449)
!2492 = !DILocation(line: 1497, column: 11, scope: !2449)
!2493 = !DILocation(line: 1501, column: 11, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2449, file: !1, line: 1501, column: 9)
!2495 = !DILocation(line: 1501, column: 9, scope: !2449)
!2496 = !DILocation(line: 1502, column: 9, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2494, file: !1, line: 1501, column: 20)
!2498 = !DILocation(line: 1503, column: 9, scope: !2497)
!2499 = !DILocation(line: 1505, column: 9, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2449, file: !1, line: 1505, column: 9)
!2501 = !DILocation(line: 1505, column: 33, scope: !2500)
!2502 = !DILocation(line: 1505, column: 9, scope: !2449)
!2503 = !DILocation(line: 1506, column: 33, scope: !2449)
!2504 = !DILocation(line: 1506, column: 39, scope: !2449)
!2505 = !DILocation(line: 1506, column: 36, scope: !2449)
!2506 = !DILocation(line: 1506, column: 9, scope: !2449)
!2507 = !DILocation(line: 1507, column: 14, scope: !2449)
!2508 = !DILocation(line: 1496, column: 20, scope: !2449)
!2509 = !DILocation(line: 1510, column: 10, scope: !2461)
!2510 = !DILocation(line: 1510, column: 9, scope: !2449)
!2511 = !DILocation(line: 1511, column: 16, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2460, file: !1, line: 1511, column: 13)
!2513 = !DILocation(line: 1511, column: 21, scope: !2512)
!2514 = !DILocation(line: 1511, column: 13, scope: !2460)
!2515 = !DILocation(line: 1513, column: 18, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2460, file: !1, line: 1513, column: 13)
!2517 = !DILocation(line: 1513, column: 27, scope: !2516)
!2518 = !DILocation(line: 1513, column: 13, scope: !2460)
!2519 = !DILocation(line: 1514, column: 17, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !1, line: 1514, column: 17)
!2521 = distinct !DILexicalBlock(scope: !2516, file: !1, line: 1513, column: 42)
!2522 = !DILocation(line: 1514, column: 37, scope: !2520)
!2523 = !DILocation(line: 1514, column: 17, scope: !2521)
!2524 = !DILocation(line: 1515, column: 31, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2520, file: !1, line: 1514, column: 47)
!2526 = !DILocation(line: 1515, column: 17, scope: !2525)
!2527 = !DILocation(line: 1516, column: 17, scope: !2525)
!2528 = !DILocation(line: 1518, column: 25, scope: !2521)
!2529 = !DILocation(line: 1521, column: 18, scope: !2460)
!2530 = !DILocation(line: 1519, column: 9, scope: !2521)
!2531 = !DILocation(line: 1522, column: 9, scope: !2460)
!2532 = !DILocation(line: 1498, column: 9, scope: !2449)
!2533 = !DILocation(line: 1523, column: 9, scope: !2459)
!2534 = !DILocation(line: 1526, column: 13, scope: !2463)
!2535 = !DILocation(line: 1524, column: 21, scope: !2457)
!2536 = !DILocation(line: 1527, column: 13, scope: !2457)
!2537 = !DILocation(line: 1523, column: 41, scope: !2458)
!2538 = !DILocation(line: 1523, column: 23, scope: !2458)
!2539 = distinct !{!2539, !2533, !2540}
!2540 = !DILocation(line: 1528, column: 9, scope: !2459)
!2541 = !DILocation(line: 1531, column: 15, scope: !2471)
!2542 = !DILocation(line: 1531, column: 14, scope: !2461)
!2543 = !DILocation(line: 1532, column: 16, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2470, file: !1, line: 1532, column: 13)
!2545 = !DILocation(line: 1532, column: 21, scope: !2544)
!2546 = !DILocation(line: 1532, column: 13, scope: !2470)
!2547 = !DILocation(line: 1534, column: 18, scope: !2470)
!2548 = !DILocation(line: 87, column: 39, scope: !491, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 1534, column: 39, scope: !2470)
!2550 = !DILocation(line: 88, column: 27, scope: !491, inlinedAt: !2549)
!2551 = !DILocation(line: 88, column: 19, scope: !491, inlinedAt: !2549)
!2552 = !DILocation(line: 89, column: 5, scope: !491, inlinedAt: !2549)
!2553 = !DILocation(line: 91, column: 20, scope: !505, inlinedAt: !2549)
!2554 = !DILocation(line: 91, column: 13, scope: !505, inlinedAt: !2549)
!2555 = !DILocation(line: 93, column: 20, scope: !505, inlinedAt: !2549)
!2556 = !DILocation(line: 93, column: 34, scope: !505, inlinedAt: !2549)
!2557 = !DILocation(line: 93, column: 13, scope: !505, inlinedAt: !2549)
!2558 = !DILocation(line: 95, column: 20, scope: !505, inlinedAt: !2549)
!2559 = !DILocation(line: 95, column: 35, scope: !505, inlinedAt: !2549)
!2560 = !DILocation(line: 95, column: 13, scope: !505, inlinedAt: !2549)
!2561 = !DILocation(line: 97, column: 20, scope: !505, inlinedAt: !2549)
!2562 = !DILocation(line: 97, column: 35, scope: !505, inlinedAt: !2549)
!2563 = !DILocation(line: 97, column: 13, scope: !505, inlinedAt: !2549)
!2564 = !DILocation(line: 99, column: 20, scope: !505, inlinedAt: !2549)
!2565 = !DILocation(line: 99, column: 35, scope: !505, inlinedAt: !2549)
!2566 = !DILocation(line: 99, column: 13, scope: !505, inlinedAt: !2549)
!2567 = !DILocation(line: 0, scope: !505, inlinedAt: !2549)
!2568 = !DILocation(line: 1534, column: 38, scope: !2470)
!2569 = !DILocation(line: 1534, column: 31, scope: !2470)
!2570 = !DILocation(line: 1535, column: 23, scope: !2470)
!2571 = !DILocation(line: 1535, column: 13, scope: !2470)
!2572 = !DILocation(line: 1537, column: 18, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2470, file: !1, line: 1537, column: 13)
!2574 = !DILocation(line: 1537, column: 27, scope: !2573)
!2575 = !DILocation(line: 1537, column: 13, scope: !2470)
!2576 = !DILocation(line: 1538, column: 13, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2573, file: !1, line: 1537, column: 42)
!2578 = !DILocation(line: 1543, column: 17, scope: !2470)
!2579 = !DILocation(line: 1543, column: 9, scope: !2470)
!2580 = !DILocation(line: 1542, column: 11, scope: !2470)
!2581 = !DILocation(line: 1546, column: 17, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2475, file: !1, line: 1546, column: 17)
!2583 = !DILocation(line: 1546, column: 17, scope: !2475)
!2584 = !DILocation(line: 1547, column: 26, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2582, file: !1, line: 1546, column: 40)
!2586 = !DILocation(line: 1544, column: 17, scope: !2475)
!2587 = !DILocation(line: 1548, column: 18, scope: !2585)
!2588 = !DILocation(line: 1549, column: 27, scope: !2585)
!2589 = !DILocation(line: 1550, column: 13, scope: !2585)
!2590 = !DILocation(line: 1551, column: 26, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !1, line: 1550, column: 48)
!2592 = distinct !DILexicalBlock(scope: !2582, file: !1, line: 1550, column: 24)
!2593 = !DILocation(line: 1552, column: 19, scope: !2591)
!2594 = !DILocation(line: 1553, column: 27, scope: !2591)
!2595 = !DILocation(line: 1554, column: 13, scope: !2591)
!2596 = !DILocation(line: 1555, column: 26, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2592, file: !1, line: 1554, column: 20)
!2598 = !DILocation(line: 1556, column: 26, scope: !2597)
!2599 = !DILocation(line: 1544, column: 25, scope: !2475)
!2600 = !DILocation(line: 1557, column: 18, scope: !2597)
!2601 = !DILocation(line: 1558, column: 27, scope: !2597)
!2602 = !DILocation(line: 0, scope: !2597)
!2603 = distinct !{!2603, !2579, !2604}
!2604 = !DILocation(line: 1560, column: 9, scope: !2470)
!2605 = !DILocation(line: 0, scope: !2585)
!2606 = !DILocation(line: 1561, column: 19, scope: !2470)
!2607 = !DILocation(line: 87, column: 39, scope: !491, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 1562, column: 39, scope: !2470)
!2609 = !DILocation(line: 88, column: 27, scope: !491, inlinedAt: !2608)
!2610 = !DILocation(line: 88, column: 19, scope: !491, inlinedAt: !2608)
!2611 = !DILocation(line: 89, column: 5, scope: !491, inlinedAt: !2608)
!2612 = !DILocation(line: 91, column: 20, scope: !505, inlinedAt: !2608)
!2613 = !DILocation(line: 91, column: 13, scope: !505, inlinedAt: !2608)
!2614 = !DILocation(line: 93, column: 20, scope: !505, inlinedAt: !2608)
!2615 = !DILocation(line: 93, column: 34, scope: !505, inlinedAt: !2608)
!2616 = !DILocation(line: 93, column: 13, scope: !505, inlinedAt: !2608)
!2617 = !DILocation(line: 95, column: 20, scope: !505, inlinedAt: !2608)
!2618 = !DILocation(line: 95, column: 35, scope: !505, inlinedAt: !2608)
!2619 = !DILocation(line: 95, column: 13, scope: !505, inlinedAt: !2608)
!2620 = !DILocation(line: 97, column: 20, scope: !505, inlinedAt: !2608)
!2621 = !DILocation(line: 97, column: 35, scope: !505, inlinedAt: !2608)
!2622 = !DILocation(line: 97, column: 13, scope: !505, inlinedAt: !2608)
!2623 = !DILocation(line: 99, column: 20, scope: !505, inlinedAt: !2608)
!2624 = !DILocation(line: 99, column: 35, scope: !505, inlinedAt: !2608)
!2625 = !DILocation(line: 99, column: 13, scope: !505, inlinedAt: !2608)
!2626 = !DILocation(line: 0, scope: !505, inlinedAt: !2608)
!2627 = !DILocation(line: 1562, column: 9, scope: !2470)
!2628 = !DILocation(line: 1563, column: 9, scope: !2470)
!2629 = !DILocation(line: 1566, column: 15, scope: !2479)
!2630 = !DILocation(line: 1566, column: 14, scope: !2471)
!2631 = !DILocation(line: 1567, column: 15, scope: !2478)
!2632 = !DILocation(line: 1568, column: 16, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2478, file: !1, line: 1568, column: 13)
!2634 = !DILocation(line: 1568, column: 21, scope: !2633)
!2635 = !DILocation(line: 1568, column: 13, scope: !2478)
!2636 = !DILocation(line: 1570, column: 43, scope: !2478)
!2637 = !DILocation(line: 1570, column: 26, scope: !2478)
!2638 = !DILocation(line: 1570, column: 9, scope: !2478)
!2639 = !DILocation(line: 1573, column: 15, scope: !2483)
!2640 = !DILocation(line: 1573, column: 14, scope: !2479)
!2641 = !DILocation(line: 1574, column: 13, scope: !2482)
!2642 = !DILocation(line: 1575, column: 16, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2482, file: !1, line: 1575, column: 13)
!2644 = !DILocation(line: 1575, column: 21, scope: !2643)
!2645 = !DILocation(line: 1575, column: 13, scope: !2482)
!2646 = !DILocation(line: 1577, column: 18, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2482, file: !1, line: 1577, column: 13)
!2648 = !DILocation(line: 1577, column: 27, scope: !2647)
!2649 = !DILocation(line: 1577, column: 13, scope: !2482)
!2650 = !DILocation(line: 1578, column: 17, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !1, line: 1578, column: 17)
!2652 = distinct !DILexicalBlock(scope: !2647, file: !1, line: 1577, column: 42)
!2653 = !DILocation(line: 1578, column: 37, scope: !2651)
!2654 = !DILocation(line: 1578, column: 17, scope: !2652)
!2655 = !DILocation(line: 1579, column: 31, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2651, file: !1, line: 1578, column: 47)
!2657 = !DILocation(line: 1579, column: 17, scope: !2656)
!2658 = !DILocation(line: 1580, column: 17, scope: !2656)
!2659 = !DILocation(line: 1583, column: 25, scope: !2652)
!2660 = !DILocation(line: 1585, column: 20, scope: !2482)
!2661 = !DILocation(line: 0, scope: !2482)
!2662 = !DILocation(line: 1585, column: 9, scope: !2482)
!2663 = !DILocation(line: 1586, column: 5, scope: !2483)
!2664 = !DILocation(line: 1587, column: 9, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2483, file: !1, line: 1586, column: 12)
!2666 = !DILocation(line: 1592, column: 5, scope: !2449)
!2667 = !DILocation(line: 1594, column: 1, scope: !2449)
