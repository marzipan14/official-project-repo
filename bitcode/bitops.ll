; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/bitops.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/bitops.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.redisServer = type { i32, i8*, i8*, i8**, i32, i32, i32, %struct.redisDb*, %struct.dict*, %struct.dict*, %struct.aeEventLoop*, i32, i32, i32, i32, i8*, i8*, i32, i32, [41 x i8], i32, i64, i32, %struct.dict*, %struct.dict*, %struct.list*, [2 x i32], i32, i32, [16 x i8*], i32, i8*, i32, [16 x i32], i32, i32, [16 x i32], i32, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.client*, %struct.rax*, i32, i64, [256 x i8], %struct.dict*, i64, i32, i32, i64, i64, i64, i64, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, %struct.list*, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, [3 x %struct.anon], i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, [3 x %struct.clientBufferLimitsConfig], i32, i32, i8*, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list*, i8*, i32, i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, i32, %struct.saveparam*, i32, i8*, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, [2 x i32], %struct.anon.1, %struct.redisOpArray, i8*, i32, i8*, i32, [41 x i8], [41 x i8], i64, i64, i32, i32, i8*, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, %struct.client*, %struct.client*, i32, i32, i64, i64, i64, i32, i32, i8*, i64, i32, i32, i32, i64, i32, i32, i32, i8*, [41 x i8], i64, i32, %struct.dict*, %struct.list*, i32, %struct.list*, i32, i32, i64, i32, i32, i32, i32, i64, i32, [6 x i32], %struct.list*, %struct.list*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, %struct.dict*, %struct.list*, i32, i32, i64, i8*, %struct.clusterState*, i32, i32, i32, i32, i8*, i32, i32, i32, %struct.lua_State*, %struct.client*, %struct.client*, %struct.dict*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.dict*, i8*, i8*, i32, i32, i32, i64, %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_* }
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
%struct.anon.1 = type { i32, i64, i64 }
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
%struct.dictEntry = type { i8*, %union.anon.0, %struct.dictEntry* }
%union.anon.0 = type { i8* }
%struct.pthread_mutex_t_ = type opaque
%struct.sharedObjectsStruct = type { %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [10 x %struct.redisObject*], [10000 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], i8*, i8* }
%struct.bitfieldOp = type { i64, i64, i32, i32, i32, i32 }

@redisPopcount.bitsinbyte = internal unnamed_addr constant [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16, !dbg !0
@.str = private unnamed_addr constant [74 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/bitops.c\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"End of redisBitpos() reached.\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"bit offset is not an integer or out of range\00", align 1
@.str.6 = private unnamed_addr constant [93 x i8] c"Invalid bitfield type. Use something like i16 u8. Note that u64 is not supported but i64 is.\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"o->type == OBJ_STRING\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"bit is not an integer or out of range\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"setbit\00", align 1
@server = external dso_local local_unnamed_addr global %struct.redisServer, align 8
@shared = external dso_local local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"BITOP NOT must be called with a single source key.\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"The bit argument must be 1 or 0.\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"incrby\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"wrap\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"sat\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"Invalid OVERFLOW type specified\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @redisPopcount(i8*, i64) local_unnamed_addr #0 !dbg !2 {
  %3 = ptrtoint i8* %0 to i64, !dbg !96
  %4 = and i64 %3, 3, !dbg !97
  %5 = icmp ne i64 %4, 0, !dbg !97
  %6 = icmp ne i64 %1, 0, !dbg !98
  %7 = and i1 %6, %5, !dbg !98
  br i1 %7, label %8, label %25, !dbg !99

; <label>:8:                                      ; preds = %2, %8
  %9 = phi i64 [ %19, %8 ], [ %1, %2 ]
  %10 = phi i64 [ %18, %8 ], [ 0, %2 ]
  %11 = phi i8* [ %12, %8 ], [ %0, %2 ]
  %12 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !100
  %13 = load i8, i8* %11, align 1, !dbg !102, !tbaa !103
  %14 = zext i8 %13 to i64, !dbg !106
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* @redisPopcount.bitsinbyte, i64 0, i64 %14, !dbg !106
  %16 = load i8, i8* %15, align 1, !dbg !106, !tbaa !103
  %17 = zext i8 %16 to i64, !dbg !106
  %18 = add i64 %10, %17, !dbg !107
  %19 = add nsw i64 %9, -1, !dbg !108
  %20 = ptrtoint i8* %12 to i64, !dbg !96
  %21 = and i64 %20, 3, !dbg !97
  %22 = icmp ne i64 %21, 0, !dbg !97
  %23 = icmp ne i64 %19, 0, !dbg !98
  %24 = and i1 %23, %22, !dbg !98
  br i1 %24, label %8, label %25, !dbg !99, !llvm.loop !109

; <label>:25:                                     ; preds = %8, %2
  %26 = phi i8* [ %0, %2 ], [ %12, %8 ], !dbg !111
  %27 = phi i64 [ 0, %2 ], [ %18, %8 ], !dbg !111
  %28 = phi i64 [ %1, %2 ], [ %19, %8 ]
  %29 = bitcast i8* %26 to i32*, !dbg !112
  %30 = icmp sgt i64 %28, 27, !dbg !114
  br i1 %30, label %31, label %268, !dbg !115

; <label>:31:                                     ; preds = %25
  %32 = xor i64 %28, -1, !dbg !116
  %33 = icmp sgt i64 %32, -56, !dbg !116
  %34 = select i1 %33, i64 %32, i64 -56, !dbg !116
  %35 = add i64 %28, %34, !dbg !116
  %36 = add i64 %35, 28, !dbg !116
  %37 = add i64 %28, -28, !dbg !116
  %38 = xor i64 %28, -1, !dbg !116
  %39 = icmp sgt i64 %38, -56, !dbg !116
  %40 = select i1 %39, i64 %38, i64 -56, !dbg !116
  %41 = add i64 %28, %40, !dbg !116
  %42 = add i64 %41, 28, !dbg !116
  %43 = udiv i64 %42, 28, !dbg !116
  %44 = add nuw nsw i64 %43, 1, !dbg !116
  %45 = icmp ult i64 %44, 2, !dbg !116
  br i1 %45, label %158, label %46, !dbg !116

; <label>:46:                                     ; preds = %31
  %47 = and i64 %44, 1, !dbg !116
  %48 = sub nsw i64 %44, %47, !dbg !116
  %49 = mul nuw nsw i64 %47, 28, !dbg !116
  %50 = add i64 %28, %49, !dbg !116
  %51 = add i64 %50, -28, !dbg !116
  %52 = mul i64 %43, -28, !dbg !116
  %53 = add i64 %51, %52, !dbg !116
  %54 = mul i64 %48, 7, !dbg !116
  %55 = getelementptr i32, i32* %29, i64 %54, !dbg !116
  %56 = insertelement <2 x i64> <i64 undef, i64 0>, i64 %27, i32 0, !dbg !116
  br label %57, !dbg !116

; <label>:57:                                     ; preds = %57, %46
  %58 = phi i64 [ 0, %46 ], [ %151, %57 ]
  %59 = phi <2 x i64> [ %56, %46 ], [ %150, %57 ]
  %60 = mul i64 %58, 7
  %61 = getelementptr i32, i32* %29, i64 %60
  %62 = bitcast i32* %61 to <14 x i32>*
  %63 = load <14 x i32>, <14 x i32>* %62, align 4, !dbg !117, !tbaa !118
  %64 = shufflevector <14 x i32> %63, <14 x i32> undef, <2 x i32> <i32 0, i32 7>, !dbg !117
  %65 = shufflevector <14 x i32> %63, <14 x i32> undef, <2 x i32> <i32 1, i32 8>, !dbg !117
  %66 = shufflevector <14 x i32> %63, <14 x i32> undef, <2 x i32> <i32 2, i32 9>, !dbg !117
  %67 = shufflevector <14 x i32> %63, <14 x i32> undef, <2 x i32> <i32 3, i32 10>, !dbg !117
  %68 = shufflevector <14 x i32> %63, <14 x i32> undef, <2 x i32> <i32 4, i32 11>, !dbg !117
  %69 = shufflevector <14 x i32> %63, <14 x i32> undef, <2 x i32> <i32 5, i32 12>, !dbg !117
  %70 = shufflevector <14 x i32> %63, <14 x i32> undef, <2 x i32> <i32 6, i32 13>, !dbg !117
  %71 = lshr <2 x i32> %64, <i32 1, i32 1>, !dbg !120
  %72 = and <2 x i32> %71, <i32 1431655765, i32 1431655765>, !dbg !121
  %73 = sub <2 x i32> %64, %72, !dbg !122
  %74 = and <2 x i32> %73, <i32 858993459, i32 858993459>, !dbg !123
  %75 = lshr <2 x i32> %73, <i32 2, i32 2>, !dbg !124
  %76 = and <2 x i32> %75, <i32 858993459, i32 858993459>, !dbg !125
  %77 = add nuw nsw <2 x i32> %76, %74, !dbg !126
  %78 = lshr <2 x i32> %65, <i32 1, i32 1>, !dbg !127
  %79 = and <2 x i32> %78, <i32 1431655765, i32 1431655765>, !dbg !128
  %80 = sub <2 x i32> %65, %79, !dbg !129
  %81 = and <2 x i32> %80, <i32 858993459, i32 858993459>, !dbg !130
  %82 = lshr <2 x i32> %80, <i32 2, i32 2>, !dbg !131
  %83 = and <2 x i32> %82, <i32 858993459, i32 858993459>, !dbg !132
  %84 = add nuw nsw <2 x i32> %83, %81, !dbg !133
  %85 = lshr <2 x i32> %66, <i32 1, i32 1>, !dbg !134
  %86 = and <2 x i32> %85, <i32 1431655765, i32 1431655765>, !dbg !135
  %87 = sub <2 x i32> %66, %86, !dbg !136
  %88 = and <2 x i32> %87, <i32 858993459, i32 858993459>, !dbg !137
  %89 = lshr <2 x i32> %87, <i32 2, i32 2>, !dbg !138
  %90 = and <2 x i32> %89, <i32 858993459, i32 858993459>, !dbg !139
  %91 = add nuw nsw <2 x i32> %90, %88, !dbg !140
  %92 = lshr <2 x i32> %67, <i32 1, i32 1>, !dbg !141
  %93 = and <2 x i32> %92, <i32 1431655765, i32 1431655765>, !dbg !142
  %94 = sub <2 x i32> %67, %93, !dbg !143
  %95 = and <2 x i32> %94, <i32 858993459, i32 858993459>, !dbg !144
  %96 = lshr <2 x i32> %94, <i32 2, i32 2>, !dbg !145
  %97 = and <2 x i32> %96, <i32 858993459, i32 858993459>, !dbg !146
  %98 = add nuw nsw <2 x i32> %97, %95, !dbg !147
  %99 = lshr <2 x i32> %68, <i32 1, i32 1>, !dbg !148
  %100 = and <2 x i32> %99, <i32 1431655765, i32 1431655765>, !dbg !149
  %101 = sub <2 x i32> %68, %100, !dbg !150
  %102 = and <2 x i32> %101, <i32 858993459, i32 858993459>, !dbg !151
  %103 = lshr <2 x i32> %101, <i32 2, i32 2>, !dbg !152
  %104 = and <2 x i32> %103, <i32 858993459, i32 858993459>, !dbg !153
  %105 = add nuw nsw <2 x i32> %104, %102, !dbg !154
  %106 = lshr <2 x i32> %69, <i32 1, i32 1>, !dbg !155
  %107 = and <2 x i32> %106, <i32 1431655765, i32 1431655765>, !dbg !156
  %108 = sub <2 x i32> %69, %107, !dbg !157
  %109 = and <2 x i32> %108, <i32 858993459, i32 858993459>, !dbg !158
  %110 = lshr <2 x i32> %108, <i32 2, i32 2>, !dbg !159
  %111 = and <2 x i32> %110, <i32 858993459, i32 858993459>, !dbg !160
  %112 = add nuw nsw <2 x i32> %111, %109, !dbg !161
  %113 = lshr <2 x i32> %70, <i32 1, i32 1>, !dbg !162
  %114 = and <2 x i32> %113, <i32 1431655765, i32 1431655765>, !dbg !163
  %115 = sub <2 x i32> %70, %114, !dbg !164
  %116 = and <2 x i32> %115, <i32 858993459, i32 858993459>, !dbg !165
  %117 = lshr <2 x i32> %115, <i32 2, i32 2>, !dbg !166
  %118 = and <2 x i32> %117, <i32 858993459, i32 858993459>, !dbg !167
  %119 = add nuw nsw <2 x i32> %118, %116, !dbg !168
  %120 = lshr <2 x i32> %77, <i32 4, i32 4>, !dbg !169
  %121 = add nuw nsw <2 x i32> %120, %77, !dbg !170
  %122 = and <2 x i32> %121, <i32 252645135, i32 252645135>, !dbg !171
  %123 = lshr <2 x i32> %84, <i32 4, i32 4>, !dbg !172
  %124 = add nuw nsw <2 x i32> %123, %84, !dbg !173
  %125 = and <2 x i32> %124, <i32 252645135, i32 252645135>, !dbg !174
  %126 = add nuw nsw <2 x i32> %125, %122, !dbg !175
  %127 = lshr <2 x i32> %91, <i32 4, i32 4>, !dbg !176
  %128 = add nuw nsw <2 x i32> %127, %91, !dbg !177
  %129 = and <2 x i32> %128, <i32 252645135, i32 252645135>, !dbg !178
  %130 = add nuw nsw <2 x i32> %126, %129, !dbg !179
  %131 = lshr <2 x i32> %98, <i32 4, i32 4>, !dbg !180
  %132 = add nuw nsw <2 x i32> %131, %98, !dbg !181
  %133 = and <2 x i32> %132, <i32 252645135, i32 252645135>, !dbg !182
  %134 = add nuw nsw <2 x i32> %130, %133, !dbg !183
  %135 = lshr <2 x i32> %105, <i32 4, i32 4>, !dbg !184
  %136 = add nuw nsw <2 x i32> %135, %105, !dbg !185
  %137 = and <2 x i32> %136, <i32 252645135, i32 252645135>, !dbg !186
  %138 = add nuw <2 x i32> %134, %137, !dbg !187
  %139 = lshr <2 x i32> %112, <i32 4, i32 4>, !dbg !188
  %140 = add nuw nsw <2 x i32> %139, %112, !dbg !189
  %141 = and <2 x i32> %140, <i32 252645135, i32 252645135>, !dbg !190
  %142 = add <2 x i32> %138, %141, !dbg !191
  %143 = lshr <2 x i32> %119, <i32 4, i32 4>, !dbg !192
  %144 = add nuw nsw <2 x i32> %143, %119, !dbg !193
  %145 = and <2 x i32> %144, <i32 252645135, i32 252645135>, !dbg !194
  %146 = add <2 x i32> %142, %145, !dbg !195
  %147 = mul <2 x i32> %146, <i32 16843009, i32 16843009>, !dbg !196
  %148 = lshr <2 x i32> %147, <i32 24, i32 24>, !dbg !197
  %149 = zext <2 x i32> %148 to <2 x i64>, !dbg !198
  %150 = add <2 x i64> %59, %149, !dbg !199
  %151 = add i64 %58, 2
  %152 = icmp eq i64 %151, %48
  br i1 %152, label %153, label %57, !llvm.loop !200

; <label>:153:                                    ; preds = %57
  %154 = shufflevector <2 x i64> %150, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>, !dbg !199
  %155 = add <2 x i64> %150, %154, !dbg !199
  %156 = extractelement <2 x i64> %155, i32 0, !dbg !199
  %157 = icmp eq i64 %47, 0
  br i1 %157, label %262, label %158, !dbg !116

; <label>:158:                                    ; preds = %153, %31
  %159 = phi i64 [ %28, %31 ], [ %53, %153 ]
  %160 = phi i64 [ %27, %31 ], [ %156, %153 ]
  %161 = phi i32* [ %29, %31 ], [ %55, %153 ]
  br label %162, !dbg !116

; <label>:162:                                    ; preds = %158, %162
  %163 = phi i64 [ %180, %162 ], [ %159, %158 ]
  %164 = phi i64 [ %260, %162 ], [ %160, %158 ]
  %165 = phi i32* [ %178, %162 ], [ %161, %158 ]
  %166 = getelementptr inbounds i32, i32* %165, i64 1, !dbg !116
  %167 = load i32, i32* %165, align 4, !dbg !117, !tbaa !118
  %168 = getelementptr inbounds i32, i32* %165, i64 2, !dbg !204
  %169 = load i32, i32* %166, align 4, !dbg !205, !tbaa !118
  %170 = getelementptr inbounds i32, i32* %165, i64 3, !dbg !207
  %171 = load i32, i32* %168, align 4, !dbg !208, !tbaa !118
  %172 = getelementptr inbounds i32, i32* %165, i64 4, !dbg !210
  %173 = load i32, i32* %170, align 4, !dbg !211, !tbaa !118
  %174 = getelementptr inbounds i32, i32* %165, i64 5, !dbg !213
  %175 = load i32, i32* %172, align 4, !dbg !214, !tbaa !118
  %176 = getelementptr inbounds i32, i32* %165, i64 6, !dbg !216
  %177 = load i32, i32* %174, align 4, !dbg !217, !tbaa !118
  %178 = getelementptr inbounds i32, i32* %165, i64 7, !dbg !219
  %179 = load i32, i32* %176, align 4, !dbg !220, !tbaa !118
  %180 = add nsw i64 %163, -28, !dbg !222
  %181 = lshr i32 %167, 1, !dbg !120
  %182 = and i32 %181, 1431655765, !dbg !121
  %183 = sub i32 %167, %182, !dbg !122
  %184 = and i32 %183, 858993459, !dbg !123
  %185 = lshr i32 %183, 2, !dbg !124
  %186 = and i32 %185, 858993459, !dbg !125
  %187 = add nuw nsw i32 %186, %184, !dbg !126
  %188 = lshr i32 %169, 1, !dbg !127
  %189 = and i32 %188, 1431655765, !dbg !128
  %190 = sub i32 %169, %189, !dbg !129
  %191 = and i32 %190, 858993459, !dbg !130
  %192 = lshr i32 %190, 2, !dbg !131
  %193 = and i32 %192, 858993459, !dbg !132
  %194 = add nuw nsw i32 %193, %191, !dbg !133
  %195 = lshr i32 %171, 1, !dbg !134
  %196 = and i32 %195, 1431655765, !dbg !135
  %197 = sub i32 %171, %196, !dbg !136
  %198 = and i32 %197, 858993459, !dbg !137
  %199 = lshr i32 %197, 2, !dbg !138
  %200 = and i32 %199, 858993459, !dbg !139
  %201 = add nuw nsw i32 %200, %198, !dbg !140
  %202 = lshr i32 %173, 1, !dbg !141
  %203 = and i32 %202, 1431655765, !dbg !142
  %204 = sub i32 %173, %203, !dbg !143
  %205 = and i32 %204, 858993459, !dbg !144
  %206 = lshr i32 %204, 2, !dbg !145
  %207 = and i32 %206, 858993459, !dbg !146
  %208 = add nuw nsw i32 %207, %205, !dbg !147
  %209 = lshr i32 %175, 1, !dbg !148
  %210 = and i32 %209, 1431655765, !dbg !149
  %211 = sub i32 %175, %210, !dbg !150
  %212 = and i32 %211, 858993459, !dbg !151
  %213 = lshr i32 %211, 2, !dbg !152
  %214 = and i32 %213, 858993459, !dbg !153
  %215 = add nuw nsw i32 %214, %212, !dbg !154
  %216 = lshr i32 %177, 1, !dbg !155
  %217 = and i32 %216, 1431655765, !dbg !156
  %218 = sub i32 %177, %217, !dbg !157
  %219 = and i32 %218, 858993459, !dbg !158
  %220 = lshr i32 %218, 2, !dbg !159
  %221 = and i32 %220, 858993459, !dbg !160
  %222 = add nuw nsw i32 %221, %219, !dbg !161
  %223 = lshr i32 %179, 1, !dbg !162
  %224 = and i32 %223, 1431655765, !dbg !163
  %225 = sub i32 %179, %224, !dbg !164
  %226 = and i32 %225, 858993459, !dbg !165
  %227 = lshr i32 %225, 2, !dbg !166
  %228 = and i32 %227, 858993459, !dbg !167
  %229 = add nuw nsw i32 %228, %226, !dbg !168
  %230 = lshr i32 %187, 4, !dbg !169
  %231 = add nuw nsw i32 %230, %187, !dbg !170
  %232 = and i32 %231, 252645135, !dbg !171
  %233 = lshr i32 %194, 4, !dbg !172
  %234 = add nuw nsw i32 %233, %194, !dbg !173
  %235 = and i32 %234, 252645135, !dbg !174
  %236 = add nuw nsw i32 %235, %232, !dbg !175
  %237 = lshr i32 %201, 4, !dbg !176
  %238 = add nuw nsw i32 %237, %201, !dbg !177
  %239 = and i32 %238, 252645135, !dbg !178
  %240 = add nuw nsw i32 %236, %239, !dbg !179
  %241 = lshr i32 %208, 4, !dbg !180
  %242 = add nuw nsw i32 %241, %208, !dbg !181
  %243 = and i32 %242, 252645135, !dbg !182
  %244 = add nuw nsw i32 %240, %243, !dbg !183
  %245 = lshr i32 %215, 4, !dbg !184
  %246 = add nuw nsw i32 %245, %215, !dbg !185
  %247 = and i32 %246, 252645135, !dbg !186
  %248 = add nuw i32 %244, %247, !dbg !187
  %249 = lshr i32 %222, 4, !dbg !188
  %250 = add nuw nsw i32 %249, %222, !dbg !189
  %251 = and i32 %250, 252645135, !dbg !190
  %252 = add i32 %248, %251, !dbg !191
  %253 = lshr i32 %229, 4, !dbg !192
  %254 = add nuw nsw i32 %253, %229, !dbg !193
  %255 = and i32 %254, 252645135, !dbg !194
  %256 = add i32 %252, %255, !dbg !195
  %257 = mul i32 %256, 16843009, !dbg !196
  %258 = lshr i32 %257, 24, !dbg !197
  %259 = zext i32 %258 to i64, !dbg !198
  %260 = add i64 %164, %259, !dbg !199
  %261 = icmp sgt i64 %163, 55, !dbg !114
  br i1 %261, label %162, label %262, !dbg !115, !llvm.loop !223

; <label>:262:                                    ; preds = %162, %153
  %263 = phi i32* [ %55, %153 ], [ %178, %162 ], !dbg !219
  %264 = phi i64 [ %156, %153 ], [ %260, %162 ], !dbg !199
  %265 = urem i64 %36, 28, !dbg !116
  %266 = sub i64 %265, %36, !dbg !116
  %267 = add i64 %37, %266, !dbg !116
  br label %268, !dbg !225

; <label>:268:                                    ; preds = %262, %25
  %269 = phi i32* [ %29, %25 ], [ %263, %262 ], !dbg !226
  %270 = phi i64 [ %27, %25 ], [ %264, %262 ], !dbg !226
  %271 = phi i64 [ %28, %25 ], [ %267, %262 ]
  %272 = icmp eq i64 %271, 0, !dbg !227
  br i1 %272, label %333, label %273, !dbg !227

; <label>:273:                                    ; preds = %268
  %274 = bitcast i32* %269 to i8*, !dbg !225
  %275 = add i64 %271, -1, !dbg !228
  %276 = and i64 %271, 3, !dbg !228
  %277 = icmp eq i64 %276, 0, !dbg !228
  br i1 %277, label %293, label %278, !dbg !228

; <label>:278:                                    ; preds = %273, %278
  %279 = phi i64 [ %283, %278 ], [ %271, %273 ]
  %280 = phi i64 [ %290, %278 ], [ %270, %273 ]
  %281 = phi i8* [ %284, %278 ], [ %274, %273 ]
  %282 = phi i64 [ %291, %278 ], [ %276, %273 ]
  %283 = add nsw i64 %279, -1, !dbg !228
  %284 = getelementptr inbounds i8, i8* %281, i64 1, !dbg !229
  %285 = load i8, i8* %281, align 1, !dbg !230, !tbaa !103
  %286 = zext i8 %285 to i64, !dbg !231
  %287 = getelementptr inbounds [256 x i8], [256 x i8]* @redisPopcount.bitsinbyte, i64 0, i64 %286, !dbg !231
  %288 = load i8, i8* %287, align 1, !dbg !231, !tbaa !103
  %289 = zext i8 %288 to i64, !dbg !231
  %290 = add i64 %280, %289, !dbg !232
  %291 = add i64 %282, -1, !dbg !227
  %292 = icmp eq i64 %291, 0, !dbg !227
  br i1 %292, label %293, label %278, !dbg !227, !llvm.loop !233

; <label>:293:                                    ; preds = %278, %273
  %294 = phi i64 [ undef, %273 ], [ %290, %278 ]
  %295 = phi i64 [ %271, %273 ], [ %283, %278 ]
  %296 = phi i64 [ %270, %273 ], [ %290, %278 ]
  %297 = phi i8* [ %274, %273 ], [ %284, %278 ]
  %298 = icmp ult i64 %275, 3, !dbg !228
  br i1 %298, label %333, label %299, !dbg !228

; <label>:299:                                    ; preds = %293, %299
  %300 = phi i64 [ %324, %299 ], [ %295, %293 ]
  %301 = phi i64 [ %331, %299 ], [ %296, %293 ]
  %302 = phi i8* [ %325, %299 ], [ %297, %293 ]
  %303 = getelementptr inbounds i8, i8* %302, i64 1, !dbg !229
  %304 = load i8, i8* %302, align 1, !dbg !230, !tbaa !103
  %305 = zext i8 %304 to i64, !dbg !231
  %306 = getelementptr inbounds [256 x i8], [256 x i8]* @redisPopcount.bitsinbyte, i64 0, i64 %305, !dbg !231
  %307 = load i8, i8* %306, align 1, !dbg !231, !tbaa !103
  %308 = zext i8 %307 to i64, !dbg !231
  %309 = add i64 %301, %308, !dbg !232
  %310 = getelementptr inbounds i8, i8* %302, i64 2, !dbg !229
  %311 = load i8, i8* %303, align 1, !dbg !230, !tbaa !103
  %312 = zext i8 %311 to i64, !dbg !231
  %313 = getelementptr inbounds [256 x i8], [256 x i8]* @redisPopcount.bitsinbyte, i64 0, i64 %312, !dbg !231
  %314 = load i8, i8* %313, align 1, !dbg !231, !tbaa !103
  %315 = zext i8 %314 to i64, !dbg !231
  %316 = add i64 %309, %315, !dbg !232
  %317 = getelementptr inbounds i8, i8* %302, i64 3, !dbg !229
  %318 = load i8, i8* %310, align 1, !dbg !230, !tbaa !103
  %319 = zext i8 %318 to i64, !dbg !231
  %320 = getelementptr inbounds [256 x i8], [256 x i8]* @redisPopcount.bitsinbyte, i64 0, i64 %319, !dbg !231
  %321 = load i8, i8* %320, align 1, !dbg !231, !tbaa !103
  %322 = zext i8 %321 to i64, !dbg !231
  %323 = add i64 %316, %322, !dbg !232
  %324 = add nsw i64 %300, -4, !dbg !228
  %325 = getelementptr inbounds i8, i8* %302, i64 4, !dbg !229
  %326 = load i8, i8* %317, align 1, !dbg !230, !tbaa !103
  %327 = zext i8 %326 to i64, !dbg !231
  %328 = getelementptr inbounds [256 x i8], [256 x i8]* @redisPopcount.bitsinbyte, i64 0, i64 %327, !dbg !231
  %329 = load i8, i8* %328, align 1, !dbg !231, !tbaa !103
  %330 = zext i8 %329 to i64, !dbg !231
  %331 = add i64 %323, %330, !dbg !232
  %332 = icmp eq i64 %324, 0, !dbg !227
  br i1 %332, label %333, label %299, !dbg !227, !llvm.loop !235

; <label>:333:                                    ; preds = %293, %299, %268
  %334 = phi i64 [ %270, %268 ], [ %294, %293 ], [ %331, %299 ], !dbg !237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !238
  ret i64 %334, !dbg !238
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i64 @redisBitpos(i8*, i64, i32) local_unnamed_addr #0 !dbg !239 {
  %4 = icmp ne i32 %2, 0, !dbg !260
  %5 = select i1 %4, i64 0, i64 255, !dbg !260
  %6 = ptrtoint i8* %0 to i64, !dbg !264
  %7 = and i64 %6, 7, !dbg !265
  %8 = icmp ne i64 %7, 0, !dbg !265
  %9 = icmp ne i64 %1, 0, !dbg !266
  %10 = and i1 %9, %8, !dbg !266
  br i1 %10, label %11, label %29, !dbg !267

; <label>:11:                                     ; preds = %3, %20
  %12 = phi i64 [ %23, %20 ], [ 0, %3 ]
  %13 = phi i8* [ %21, %20 ], [ %0, %3 ]
  %14 = phi i64 [ %22, %20 ], [ %1, %3 ]
  %15 = load i8, i8* %13, align 1, !dbg !268, !tbaa !103
  %16 = zext i8 %15 to i64, !dbg !268
  %17 = icmp eq i64 %5, %16, !dbg !271
  br i1 %17, label %20, label %18, !dbg !272

; <label>:18:                                     ; preds = %11
  %19 = bitcast i8* %13 to i64*, !dbg !273
  br label %53, !dbg !275

; <label>:20:                                     ; preds = %11
  %21 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !276
  %22 = add i64 %14, -1, !dbg !277
  %23 = add nuw nsw i64 %12, 8, !dbg !278
  %24 = ptrtoint i8* %21 to i64, !dbg !264
  %25 = and i64 %24, 7, !dbg !265
  %26 = icmp ne i64 %25, 0, !dbg !265
  %27 = icmp ne i64 %22, 0, !dbg !266
  %28 = and i1 %27, %26, !dbg !266
  br i1 %28, label %11, label %29, !dbg !267, !llvm.loop !279

; <label>:29:                                     ; preds = %20, %3
  %30 = phi i64 [ %1, %3 ], [ %22, %20 ]
  %31 = phi i8* [ %0, %3 ], [ %21, %20 ], !dbg !281
  %32 = phi i64 [ 0, %3 ], [ %23, %20 ], !dbg !281
  %33 = bitcast i8* %31 to i64*, !dbg !273
  %34 = xor i1 %4, true, !dbg !282
  %35 = sext i1 %34 to i64, !dbg !282
  %36 = icmp ugt i64 %30, 7, !dbg !285
  br i1 %36, label %37, label %48, !dbg !286

; <label>:37:                                     ; preds = %29, %43
  %38 = phi i64 [ %46, %43 ], [ %32, %29 ]
  %39 = phi i64* [ %44, %43 ], [ %33, %29 ]
  %40 = phi i64 [ %45, %43 ], [ %30, %29 ]
  %41 = load i64, i64* %39, align 8, !dbg !287, !tbaa !290
  %42 = icmp eq i64 %41, %35, !dbg !292
  br i1 %42, label %43, label %53, !dbg !293

; <label>:43:                                     ; preds = %37
  %44 = getelementptr inbounds i64, i64* %39, i64 1, !dbg !294
  %45 = add i64 %40, -8, !dbg !295
  %46 = add i64 %38, 64, !dbg !296
  %47 = icmp ugt i64 %45, 7, !dbg !285
  br i1 %47, label %37, label %48, !dbg !286, !llvm.loop !297

; <label>:48:                                     ; preds = %43, %29
  %49 = phi i64 [ %30, %29 ], [ %45, %43 ]
  %50 = phi i64* [ %33, %29 ], [ %44, %43 ], !dbg !299
  %51 = phi i64 [ %32, %29 ], [ %46, %43 ], !dbg !259
  %52 = icmp eq i64 %49, 0, !dbg !301
  br i1 %52, label %84, label %53, !dbg !306

; <label>:53:                                     ; preds = %37, %18, %48
  %54 = phi i64* [ %50, %48 ], [ %19, %18 ], [ %39, %37 ]
  %55 = phi i64 [ %51, %48 ], [ %12, %18 ], [ %38, %37 ]
  %56 = phi i64 [ %49, %48 ], [ %14, %18 ], [ %40, %37 ]
  %57 = bitcast i64* %54 to i8*, !dbg !307
  %58 = load i8, i8* %57, align 1, !dbg !308, !tbaa !103
  %59 = zext i8 %58 to i64, !dbg !308
  %60 = shl nuw nsw i64 %59, 8, !dbg !310
  %61 = icmp eq i64 %56, 1, !dbg !301
  br i1 %61, label %84, label %88, !dbg !306

; <label>:62:                                     ; preds = %156, %174
  %63 = phi i64 [ %175, %174 ], [ %157, %156 ]
  %64 = phi i64 [ %176, %174 ], [ -9223372036854775808, %156 ]
  %65 = and i64 %64, %158, !dbg !312
  %66 = icmp ne i64 %65, 0, !dbg !315
  %67 = zext i1 %66 to i32, !dbg !315
  %68 = icmp eq i32 %67, %2, !dbg !316
  br i1 %68, label %82, label %69, !dbg !317

; <label>:69:                                     ; preds = %62
  %70 = lshr i64 %64, 1, !dbg !318
  %71 = and i64 %70, %158, !dbg !312
  %72 = icmp ne i64 %71, 0, !dbg !315
  %73 = zext i1 %72 to i32, !dbg !315
  %74 = icmp eq i32 %73, %2, !dbg !316
  br i1 %74, label %80, label %162, !dbg !317

; <label>:75:                                     ; preds = %174
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 184, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !319
  tail call void @_exit(i32 1) #7, !dbg !319
  unreachable, !dbg !319

; <label>:76:                                     ; preds = %168
  %77 = add nsw i64 %63, 3, !dbg !320
  br label %82, !dbg !321

; <label>:78:                                     ; preds = %162
  %79 = add nsw i64 %63, 2, !dbg !320
  br label %82, !dbg !321

; <label>:80:                                     ; preds = %69
  %81 = add nsw i64 %63, 1, !dbg !320
  br label %82, !dbg !321

; <label>:82:                                     ; preds = %76, %78, %80, %62, %156
  %83 = phi i64 [ -1, %156 ], [ %77, %76 ], [ %79, %78 ], [ %81, %80 ], [ %63, %62 ], !dbg !322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !321
  ret i64 %83, !dbg !321

; <label>:84:                                     ; preds = %53, %48
  %85 = phi i64 [ %55, %53 ], [ %51, %48 ]
  %86 = phi i64 [ %60, %53 ], [ 0, %48 ]
  %87 = shl nsw i64 %86, 8, !dbg !323
  br label %95, !dbg !306

; <label>:88:                                     ; preds = %53
  %89 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !324
  %90 = load i8, i8* %89, align 1, !dbg !308, !tbaa !103
  %91 = zext i8 %90 to i64, !dbg !308
  %92 = or i64 %60, %91, !dbg !325
  %93 = shl nuw nsw i64 %92, 8, !dbg !323
  %94 = icmp eq i64 %56, 2, !dbg !301
  br i1 %94, label %95, label %99, !dbg !306

; <label>:95:                                     ; preds = %88, %84
  %96 = phi i64 [ %85, %84 ], [ %55, %88 ]
  %97 = phi i64 [ %87, %84 ], [ %93, %88 ]
  %98 = shl nsw i64 %97, 8, !dbg !323
  br label %106, !dbg !306

; <label>:99:                                     ; preds = %88
  %100 = getelementptr inbounds i8, i8* %57, i64 2, !dbg !324
  %101 = load i8, i8* %100, align 1, !dbg !308, !tbaa !103
  %102 = zext i8 %101 to i64, !dbg !308
  %103 = or i64 %93, %102, !dbg !325
  %104 = shl nuw nsw i64 %103, 8, !dbg !323
  %105 = icmp eq i64 %56, 3, !dbg !301
  br i1 %105, label %106, label %110, !dbg !306

; <label>:106:                                    ; preds = %99, %95
  %107 = phi i64 [ %96, %95 ], [ %55, %99 ]
  %108 = phi i64 [ %98, %95 ], [ %104, %99 ]
  %109 = shl i64 %108, 8, !dbg !323
  br label %117, !dbg !306

; <label>:110:                                    ; preds = %99
  %111 = getelementptr inbounds i8, i8* %57, i64 3, !dbg !324
  %112 = load i8, i8* %111, align 1, !dbg !308, !tbaa !103
  %113 = zext i8 %112 to i64, !dbg !308
  %114 = or i64 %104, %113, !dbg !325
  %115 = shl i64 %114, 8, !dbg !323
  %116 = icmp eq i64 %56, 4, !dbg !301
  br i1 %116, label %117, label %121, !dbg !306

; <label>:117:                                    ; preds = %110, %106
  %118 = phi i64 [ %107, %106 ], [ %55, %110 ]
  %119 = phi i64 [ %109, %106 ], [ %115, %110 ]
  %120 = shl i64 %119, 8, !dbg !323
  br label %128, !dbg !306

; <label>:121:                                    ; preds = %110
  %122 = getelementptr inbounds i8, i8* %57, i64 4, !dbg !324
  %123 = load i8, i8* %122, align 1, !dbg !308, !tbaa !103
  %124 = zext i8 %123 to i64, !dbg !308
  %125 = or i64 %115, %124, !dbg !325
  %126 = shl i64 %125, 8, !dbg !323
  %127 = icmp eq i64 %56, 5, !dbg !301
  br i1 %127, label %128, label %132, !dbg !306

; <label>:128:                                    ; preds = %121, %117
  %129 = phi i64 [ %118, %117 ], [ %55, %121 ]
  %130 = phi i64 [ %120, %117 ], [ %126, %121 ]
  %131 = shl i64 %130, 8, !dbg !323
  br label %140, !dbg !306

; <label>:132:                                    ; preds = %121
  %133 = getelementptr inbounds i8, i8* %57, i64 5, !dbg !324
  %134 = load i8, i8* %133, align 1, !dbg !308, !tbaa !103
  %135 = zext i8 %134 to i64, !dbg !308
  %136 = or i64 %126, %135, !dbg !325
  %137 = add i64 %56, -6, !dbg !326
  %138 = shl i64 %136, 8, !dbg !323
  %139 = icmp eq i64 %137, 0, !dbg !301
  br i1 %139, label %140, label %144, !dbg !306

; <label>:140:                                    ; preds = %132, %128
  %141 = phi i64 [ %129, %128 ], [ %55, %132 ]
  %142 = phi i64 [ %131, %128 ], [ %138, %132 ]
  %143 = shl i64 %142, 8, !dbg !323
  br label %156, !dbg !306

; <label>:144:                                    ; preds = %132
  %145 = getelementptr inbounds i8, i8* %57, i64 6, !dbg !324
  %146 = load i8, i8* %145, align 1, !dbg !308, !tbaa !103
  %147 = zext i8 %146 to i64, !dbg !308
  %148 = or i64 %138, %147, !dbg !325
  %149 = icmp eq i64 %137, 1, !dbg !310
  %150 = shl i64 %148, 8, !dbg !323
  br i1 %149, label %156, label %151, !dbg !306

; <label>:151:                                    ; preds = %144
  %152 = getelementptr inbounds i8, i8* %57, i64 7, !dbg !324
  %153 = load i8, i8* %152, align 1, !dbg !308, !tbaa !103
  %154 = zext i8 %153 to i64, !dbg !308
  %155 = or i64 %150, %154, !dbg !325
  br label %156, !dbg !310

; <label>:156:                                    ; preds = %140, %151, %144
  %157 = phi i64 [ %55, %151 ], [ %55, %144 ], [ %141, %140 ]
  %158 = phi i64 [ %155, %151 ], [ %150, %144 ], [ %143, %140 ], !dbg !327
  %159 = icmp eq i32 %2, 1, !dbg !328
  %160 = icmp eq i64 %158, 0, !dbg !330
  %161 = and i1 %159, %160, !dbg !331
  br i1 %161, label %82, label %62, !dbg !331

; <label>:162:                                    ; preds = %69
  %163 = lshr i64 %64, 2, !dbg !318
  %164 = and i64 %163, %158, !dbg !312
  %165 = icmp ne i64 %164, 0, !dbg !315
  %166 = zext i1 %165 to i32, !dbg !315
  %167 = icmp eq i32 %166, %2, !dbg !316
  br i1 %167, label %78, label %168, !dbg !317

; <label>:168:                                    ; preds = %162
  %169 = lshr i64 %64, 3, !dbg !318
  %170 = and i64 %169, %158, !dbg !312
  %171 = icmp ne i64 %170, 0, !dbg !315
  %172 = zext i1 %171 to i32, !dbg !315
  %173 = icmp eq i32 %172, %2, !dbg !316
  br i1 %173, label %76, label %174, !dbg !317

; <label>:174:                                    ; preds = %168
  %175 = add nsw i64 %63, 4, !dbg !320
  %176 = lshr i64 %64, 4, !dbg !318
  %177 = icmp eq i64 %176, 0, !dbg !332
  br i1 %177, label %75, label %62, !dbg !332, !llvm.loop !333
}

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @setUnsignedBitfield(i8* nocapture, i64, i64, i64) local_unnamed_addr #0 !dbg !335 {
  %5 = icmp eq i64 %2, 0, !dbg !353
  br i1 %5, label %32, label %6, !dbg !356

; <label>:6:                                      ; preds = %4, %6
  %7 = phi i64 [ %30, %6 ], [ 0, %4 ]
  %8 = phi i64 [ %29, %6 ], [ %1, %4 ]
  %9 = xor i64 %7, -1, !dbg !357
  %10 = add i64 %9, %2, !dbg !357
  %11 = shl i64 1, %10, !dbg !359
  %12 = and i64 %11, %3, !dbg !360
  %13 = icmp ne i64 %12, 0, !dbg !361
  %14 = zext i1 %13 to i64, !dbg !362
  %15 = lshr i64 %8, 3, !dbg !364
  %16 = and i64 %8, 7, !dbg !366
  %17 = xor i64 %16, 7, !dbg !367
  %18 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !369
  %19 = load i8, i8* %18, align 1, !dbg !369, !tbaa !103
  %20 = zext i8 %19 to i64, !dbg !369
  %21 = trunc i64 %17 to i32, !dbg !371
  %22 = shl i32 1, %21, !dbg !371
  %23 = xor i32 %22, 255, !dbg !372
  %24 = zext i32 %23 to i64, !dbg !372
  %25 = and i64 %20, %24, !dbg !373
  %26 = shl i64 %14, %17, !dbg !374
  %27 = or i64 %25, %26, !dbg !375
  %28 = trunc i64 %27 to i8, !dbg !376
  store i8 %28, i8* %18, align 1, !dbg !377, !tbaa !103
  %29 = add i64 %8, 1, !dbg !378
  %30 = add nuw i64 %7, 1, !dbg !379
  %31 = icmp eq i64 %30, %2, !dbg !353
  br i1 %31, label %32, label %6, !dbg !356, !llvm.loop !380

; <label>:32:                                     ; preds = %6, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !382
  ret void, !dbg !382
}

; Function Attrs: noredzone nounwind
define dso_local void @setSignedBitfield(i8* nocapture, i64, i64, i64) local_unnamed_addr #0 !dbg !383 {
  %5 = icmp eq i64 %2, 0, !dbg !403
  br i1 %5, label %32, label %6, !dbg !404

; <label>:6:                                      ; preds = %4, %6
  %7 = phi i64 [ %30, %6 ], [ 0, %4 ]
  %8 = phi i64 [ %29, %6 ], [ %1, %4 ]
  %9 = xor i64 %7, -1, !dbg !405
  %10 = add i64 %9, %2, !dbg !405
  %11 = shl i64 1, %10, !dbg !406
  %12 = and i64 %11, %3, !dbg !407
  %13 = icmp ne i64 %12, 0, !dbg !408
  %14 = zext i1 %13 to i64, !dbg !409
  %15 = lshr i64 %8, 3, !dbg !411
  %16 = and i64 %8, 7, !dbg !413
  %17 = xor i64 %16, 7, !dbg !414
  %18 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !416
  %19 = load i8, i8* %18, align 1, !dbg !416, !tbaa !103
  %20 = zext i8 %19 to i64, !dbg !416
  %21 = trunc i64 %17 to i32, !dbg !418
  %22 = shl i32 1, %21, !dbg !418
  %23 = xor i32 %22, 255, !dbg !419
  %24 = zext i32 %23 to i64, !dbg !419
  %25 = and i64 %24, %20, !dbg !420
  %26 = shl i64 %14, %17, !dbg !421
  %27 = or i64 %25, %26, !dbg !422
  %28 = trunc i64 %27 to i8, !dbg !423
  store i8 %28, i8* %18, align 1, !dbg !424, !tbaa !103
  %29 = add i64 %8, 1, !dbg !425
  %30 = add nuw i64 %7, 1, !dbg !426
  %31 = icmp eq i64 %30, %2, !dbg !403
  br i1 %31, label %32, label %6, !dbg !404, !llvm.loop !380

; <label>:32:                                     ; preds = %6, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  ret void, !dbg !428
}

; Function Attrs: noredzone nounwind
define dso_local i64 @getUnsignedBitfield(i8* nocapture readonly, i64, i64) local_unnamed_addr #0 !dbg !429 {
  %4 = icmp eq i64 %2, 0, !dbg !447
  br i1 %4, label %55, label %5, !dbg !450

; <label>:5:                                      ; preds = %3
  %6 = and i64 %2, 1, !dbg !451
  %7 = icmp eq i64 %2, 1, !dbg !451
  br i1 %7, label %40, label %8, !dbg !451

; <label>:8:                                      ; preds = %5
  %9 = sub i64 %2, %6, !dbg !451
  br label %10, !dbg !451

; <label>:10:                                     ; preds = %10, %8
  %11 = phi i64 [ 0, %8 ], [ %34, %10 ]
  %12 = phi i64 [ %1, %8 ], [ %35, %10 ]
  %13 = phi i64 [ %9, %8 ], [ %36, %10 ]
  %14 = lshr i64 %12, 3, !dbg !451
  %15 = and i64 %12, 7, !dbg !454
  %16 = xor i64 %15, 7, !dbg !455
  %17 = getelementptr inbounds i8, i8* %0, i64 %14, !dbg !457
  %18 = load i8, i8* %17, align 1, !dbg !457, !tbaa !103
  %19 = zext i8 %18 to i64, !dbg !457
  %20 = lshr i64 %19, %16, !dbg !459
  %21 = and i64 %20, 1, !dbg !460
  %22 = shl i64 %11, 1, !dbg !462
  %23 = or i64 %21, %22, !dbg !463
  %24 = add i64 %12, 1, !dbg !464
  %25 = lshr i64 %24, 3, !dbg !451
  %26 = and i64 %24, 7, !dbg !454
  %27 = xor i64 %26, 7, !dbg !455
  %28 = getelementptr inbounds i8, i8* %0, i64 %25, !dbg !457
  %29 = load i8, i8* %28, align 1, !dbg !457, !tbaa !103
  %30 = zext i8 %29 to i64, !dbg !457
  %31 = lshr i64 %30, %27, !dbg !459
  %32 = and i64 %31, 1, !dbg !460
  %33 = shl i64 %23, 1, !dbg !462
  %34 = or i64 %32, %33, !dbg !463
  %35 = add i64 %12, 2, !dbg !464
  %36 = add i64 %13, -2, !dbg !450
  %37 = icmp eq i64 %36, 0, !dbg !450
  br i1 %37, label %38, label %10, !dbg !450, !llvm.loop !465

; <label>:38:                                     ; preds = %10
  %39 = shl i64 %34, 1, !dbg !450
  br label %40, !dbg !450

; <label>:40:                                     ; preds = %38, %5
  %41 = phi i64 [ undef, %5 ], [ %34, %38 ]
  %42 = phi i64 [ 0, %5 ], [ %39, %38 ]
  %43 = phi i64 [ %1, %5 ], [ %35, %38 ]
  %44 = icmp eq i64 %6, 0, !dbg !450
  br i1 %44, label %55, label %45, !dbg !450

; <label>:45:                                     ; preds = %40
  %46 = lshr i64 %43, 3, !dbg !451
  %47 = getelementptr inbounds i8, i8* %0, i64 %46, !dbg !457
  %48 = load i8, i8* %47, align 1, !dbg !457, !tbaa !103
  %49 = zext i8 %48 to i64, !dbg !457
  %50 = and i64 %43, 7, !dbg !454
  %51 = xor i64 %50, 7, !dbg !455
  %52 = lshr i64 %49, %51, !dbg !459
  %53 = and i64 %52, 1, !dbg !460
  %54 = or i64 %53, %42, !dbg !463
  br label %55, !dbg !467

; <label>:55:                                     ; preds = %45, %40, %3
  %56 = phi i64 [ 0, %3 ], [ %41, %40 ], [ %54, %45 ], !dbg !468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  ret i64 %56, !dbg !467
}

; Function Attrs: noredzone nounwind
define dso_local i64 @getSignedBitfield(i8* nocapture readonly, i64, i64) local_unnamed_addr #0 !dbg !469 {
  %4 = icmp eq i64 %2, 0, !dbg !491
  br i1 %4, label %55, label %5, !dbg !492

; <label>:5:                                      ; preds = %3
  %6 = and i64 %2, 1, !dbg !493
  %7 = icmp eq i64 %2, 1, !dbg !493
  br i1 %7, label %40, label %8, !dbg !493

; <label>:8:                                      ; preds = %5
  %9 = sub i64 %2, %6, !dbg !493
  br label %10, !dbg !493

; <label>:10:                                     ; preds = %10, %8
  %11 = phi i64 [ 0, %8 ], [ %34, %10 ]
  %12 = phi i64 [ %1, %8 ], [ %35, %10 ]
  %13 = phi i64 [ %9, %8 ], [ %36, %10 ]
  %14 = lshr i64 %12, 3, !dbg !493
  %15 = and i64 %12, 7, !dbg !495
  %16 = xor i64 %15, 7, !dbg !496
  %17 = getelementptr inbounds i8, i8* %0, i64 %14, !dbg !498
  %18 = load i8, i8* %17, align 1, !dbg !498, !tbaa !103
  %19 = zext i8 %18 to i64, !dbg !498
  %20 = lshr i64 %19, %16, !dbg !500
  %21 = and i64 %20, 1, !dbg !501
  %22 = shl i64 %11, 1, !dbg !503
  %23 = or i64 %21, %22, !dbg !504
  %24 = add i64 %12, 1, !dbg !505
  %25 = lshr i64 %24, 3, !dbg !493
  %26 = and i64 %24, 7, !dbg !495
  %27 = xor i64 %26, 7, !dbg !496
  %28 = getelementptr inbounds i8, i8* %0, i64 %25, !dbg !498
  %29 = load i8, i8* %28, align 1, !dbg !498, !tbaa !103
  %30 = zext i8 %29 to i64, !dbg !498
  %31 = lshr i64 %30, %27, !dbg !500
  %32 = and i64 %31, 1, !dbg !501
  %33 = shl i64 %23, 1, !dbg !503
  %34 = or i64 %32, %33, !dbg !504
  %35 = add i64 %12, 2, !dbg !505
  %36 = add i64 %13, -2, !dbg !492
  %37 = icmp eq i64 %36, 0, !dbg !492
  br i1 %37, label %38, label %10, !dbg !492, !llvm.loop !465

; <label>:38:                                     ; preds = %10
  %39 = shl i64 %34, 1, !dbg !492
  br label %40, !dbg !492

; <label>:40:                                     ; preds = %38, %5
  %41 = phi i64 [ undef, %5 ], [ %34, %38 ]
  %42 = phi i64 [ 0, %5 ], [ %39, %38 ]
  %43 = phi i64 [ %1, %5 ], [ %35, %38 ]
  %44 = icmp eq i64 %6, 0, !dbg !492
  br i1 %44, label %55, label %45, !dbg !492

; <label>:45:                                     ; preds = %40
  %46 = lshr i64 %43, 3, !dbg !493
  %47 = getelementptr inbounds i8, i8* %0, i64 %46, !dbg !498
  %48 = load i8, i8* %47, align 1, !dbg !498, !tbaa !103
  %49 = zext i8 %48 to i64, !dbg !498
  %50 = and i64 %43, 7, !dbg !495
  %51 = xor i64 %50, 7, !dbg !496
  %52 = lshr i64 %49, %51, !dbg !500
  %53 = and i64 %52, 1, !dbg !501
  %54 = or i64 %53, %42, !dbg !504
  br label %55, !dbg !506

; <label>:55:                                     ; preds = %45, %40, %3
  %56 = phi i64 [ 0, %3 ], [ %41, %40 ], [ %54, %45 ], !dbg !507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !506
  %57 = add i64 %2, -1, !dbg !510
  %58 = shl i64 1, %57, !dbg !512
  %59 = and i64 %56, %58, !dbg !513
  %60 = icmp eq i64 %59, 0, !dbg !513
  %61 = shl i64 -1, %2, !dbg !514
  %62 = select i1 %60, i64 0, i64 %61, !dbg !515
  %63 = or i64 %62, %56, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  ret i64 %63, !dbg !516
}

; Function Attrs: noredzone nounwind
define dso_local i32 @checkUnsignedBitfieldOverflow(i64, i64, i64, i32, i64*) local_unnamed_addr #0 !dbg !517 {
  %6 = icmp eq i64 %2, 64, !dbg !538
  %7 = shl i64 -1, %2, !dbg !539
  %8 = xor i64 %7, -1, !dbg !539
  %9 = select i1 %6, i64 -1, i64 %8, !dbg !540
  %10 = sub i64 0, %0, !dbg !542
  %11 = icmp ult i64 %9, %0, !dbg !544
  br i1 %11, label %17, label %12, !dbg !546

; <label>:12:                                     ; preds = %5
  %13 = sub i64 %9, %0, !dbg !547
  %14 = icmp sgt i64 %1, 0, !dbg !549
  %15 = icmp slt i64 %13, %1, !dbg !550
  %16 = and i1 %14, %15, !dbg !551
  br i1 %16, label %17, label %21, !dbg !551

; <label>:17:                                     ; preds = %12, %5
  %18 = icmp eq i64* %4, null, !dbg !552
  br i1 %18, label %32, label %19, !dbg !555

; <label>:19:                                     ; preds = %17
  switch i32 %3, label %32 [
    i32 0, label %29
    i32 1, label %20
  ], !dbg !556

; <label>:20:                                     ; preds = %19
  store i64 %9, i64* %4, align 8, !dbg !558, !tbaa !290
  br label %32, !dbg !562

; <label>:21:                                     ; preds = %12
  %22 = icmp slt i64 %1, 0, !dbg !563
  %23 = icmp sgt i64 %10, %1, !dbg !565
  %24 = and i1 %22, %23, !dbg !566
  br i1 %24, label %25, label %32, !dbg !566

; <label>:25:                                     ; preds = %21
  %26 = icmp eq i64* %4, null, !dbg !567
  br i1 %26, label %32, label %27, !dbg !570

; <label>:27:                                     ; preds = %25
  switch i32 %3, label %32 [
    i32 0, label %29
    i32 1, label %28
  ], !dbg !571

; <label>:28:                                     ; preds = %27
  store i64 0, i64* %4, align 8, !dbg !573, !tbaa !290
  br label %32, !dbg !577

; <label>:29:                                     ; preds = %27, %19
  %30 = add i64 %1, %0, !dbg !579
  %31 = and i64 %30, %8, !dbg !581
  store i64 %31, i64* %4, align 8, !dbg !582, !tbaa !290
  br label %32, !dbg !583

; <label>:32:                                     ; preds = %21, %28, %25, %27, %20, %17, %19, %29
  %33 = phi i32 [ 1, %29 ], [ 1, %19 ], [ 1, %17 ], [ 1, %20 ], [ -1, %27 ], [ -1, %25 ], [ -1, %28 ], [ 0, %21 ], !dbg !584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  ret i32 %33, !dbg !585
}

; Function Attrs: noredzone nounwind
define dso_local i32 @checkSignedBitfieldOverflow(i64, i64, i64, i32, i64*) local_unnamed_addr #0 !dbg !586 {
  %6 = icmp eq i64 %2, 64, !dbg !611
  br i1 %6, label %15, label %7, !dbg !612

; <label>:7:                                      ; preds = %5
  %8 = add i64 %2, -1, !dbg !613
  %9 = shl nsw i64 -1, %8, !dbg !614
  %10 = xor i64 %9, -1, !dbg !614
  %11 = icmp slt i64 %10, %0, !dbg !617
  %12 = sub nsw i64 %10, %0, !dbg !619
  %13 = icmp slt i64 %12, %1, !dbg !620
  %14 = or i1 %11, %13, !dbg !621
  br i1 %14, label %22, label %27, !dbg !621

; <label>:15:                                     ; preds = %5
  %16 = sub nsw i64 9223372036854775807, %0, !dbg !619
  %17 = icmp slt i64 %16, %1, !dbg !620
  %18 = icmp sgt i64 %0, -1, !dbg !622
  %19 = icmp sgt i64 %1, 0, !dbg !623
  %20 = and i1 %18, %19, !dbg !624
  %21 = and i1 %20, %17, !dbg !624
  br i1 %21, label %22, label %27, !dbg !624

; <label>:22:                                     ; preds = %15, %7
  %23 = phi i64 [ 9223372036854775807, %15 ], [ %10, %7 ]
  %24 = icmp eq i64* %4, null, !dbg !625
  br i1 %24, label %54, label %25, !dbg !628

; <label>:25:                                     ; preds = %22
  switch i32 %3, label %54 [
    i32 0, label %43
    i32 1, label %26
  ], !dbg !629

; <label>:26:                                     ; preds = %25
  store i64 %23, i64* %4, align 8, !dbg !631, !tbaa !290
  br label %54, !dbg !635

; <label>:27:                                     ; preds = %7, %15
  %28 = phi i64 [ -9223372036854775808, %15 ], [ %9, %7 ]
  %29 = phi i1 [ false, %15 ], [ true, %7 ]
  %30 = sub nsw i64 %28, %0, !dbg !636
  %31 = icmp sgt i64 %28, %0, !dbg !637
  %32 = icmp sgt i64 %30, %1, !dbg !639
  %33 = and i1 %29, %32, !dbg !640
  %34 = or i1 %31, %33, !dbg !641
  br i1 %34, label %39, label %35, !dbg !641

; <label>:35:                                     ; preds = %27
  %36 = and i64 %1, %0, !dbg !642
  %37 = icmp slt i64 %36, 0, !dbg !642
  %38 = and i1 %37, %32, !dbg !642
  br i1 %38, label %39, label %54, !dbg !642

; <label>:39:                                     ; preds = %35, %27
  %40 = icmp eq i64* %4, null, !dbg !643
  br i1 %40, label %54, label %41, !dbg !646

; <label>:41:                                     ; preds = %39
  switch i32 %3, label %54 [
    i32 0, label %43
    i32 1, label %42
  ], !dbg !647

; <label>:42:                                     ; preds = %41
  store i64 %28, i64* %4, align 8, !dbg !649, !tbaa !290
  br label %54, !dbg !653

; <label>:43:                                     ; preds = %41, %25
  %44 = shl i64 -1, %2, !dbg !654
  %45 = add i64 %2, -1, !dbg !656
  %46 = shl i64 1, %45, !dbg !657
  %47 = add i64 %1, %0, !dbg !661
  %48 = and i64 %46, %47, !dbg !663
  %49 = icmp eq i64 %48, 0, !dbg !663
  %50 = or i64 %44, %47, !dbg !665
  %51 = xor i64 %44, -1, !dbg !667
  %52 = and i64 %47, %51, !dbg !669
  %53 = select i1 %49, i64 %52, i64 %50, !dbg !670
  store i64 %53, i64* %4, align 8, !dbg !671, !tbaa !290
  br label %54, !dbg !672

; <label>:54:                                     ; preds = %35, %42, %39, %41, %26, %22, %25, %43
  %55 = phi i32 [ 1, %43 ], [ 1, %25 ], [ 1, %22 ], [ 1, %26 ], [ -1, %41 ], [ -1, %39 ], [ -1, %42 ], [ 0, %35 ], !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !674
  ret i32 %55, !dbg !674
}

; Function Attrs: noredzone nounwind
define dso_local void @printBits(i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !675 {
  %3 = icmp eq i64 %1, 0, !dbg !687
  br i1 %3, label %43, label %4, !dbg !690

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %41, %4 ], [ 0, %2 ]
  %6 = getelementptr inbounds i8, i8* %0, i64 %5, !dbg !691
  %7 = load i8, i8* %6, align 1, !dbg !691, !tbaa !103
  %8 = zext i8 %7 to i64, !dbg !691
  %9 = icmp sgt i8 %7, -1, !dbg !695
  %10 = select i1 %9, i32 48, i32 49, !dbg !695
  %11 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %10) #6, !dbg !698
  %12 = and i64 %8, 64, !dbg !699
  %13 = icmp eq i64 %12, 0, !dbg !695
  %14 = select i1 %13, i32 48, i32 49, !dbg !695
  %15 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %14) #6, !dbg !698
  %16 = and i64 %8, 32, !dbg !699
  %17 = icmp eq i64 %16, 0, !dbg !695
  %18 = select i1 %17, i32 48, i32 49, !dbg !695
  %19 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %18) #6, !dbg !698
  %20 = and i64 %8, 16, !dbg !699
  %21 = icmp eq i64 %20, 0, !dbg !695
  %22 = select i1 %21, i32 48, i32 49, !dbg !695
  %23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %22) #6, !dbg !698
  %24 = and i64 %8, 8, !dbg !699
  %25 = icmp eq i64 %24, 0, !dbg !695
  %26 = select i1 %25, i32 48, i32 49, !dbg !695
  %27 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %26) #6, !dbg !698
  %28 = and i64 %8, 4, !dbg !699
  %29 = icmp eq i64 %28, 0, !dbg !695
  %30 = select i1 %29, i32 48, i32 49, !dbg !695
  %31 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %30) #6, !dbg !698
  %32 = and i64 %8, 2, !dbg !699
  %33 = icmp eq i64 %32, 0, !dbg !695
  %34 = select i1 %33, i32 48, i32 49, !dbg !695
  %35 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %34) #6, !dbg !698
  %36 = and i64 %8, 1, !dbg !699
  %37 = icmp eq i64 %36, 0, !dbg !695
  %38 = select i1 %37, i32 48, i32 49, !dbg !695
  %39 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %38) #6, !dbg !698
  %40 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !700
  %41 = add nuw i64 %5, 1, !dbg !701
  %42 = icmp eq i64 %41, %1, !dbg !687
  br i1 %42, label %43, label %4, !dbg !690, !llvm.loop !702

; <label>:43:                                     ; preds = %4, %2
  %44 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !705
  ret void, !dbg !705
}

; Function Attrs: noredzone
declare dso_local i32 @printf(i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @getBitOffsetFromArgument(%struct.client*, %struct.redisObject* nocapture readonly, i64* nocapture, i32, i32) local_unnamed_addr #0 !dbg !706 {
  %6 = alloca i64, align 8
  %7 = bitcast i64* %6 to i8*, !dbg !962
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #8, !dbg !962
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !963
  %9 = load i8*, i8** %8, align 8, !dbg !963, !tbaa !964
  %10 = getelementptr inbounds i8, i8* %9, i64 -1, !dbg !979
  %11 = load i8, i8* %10, align 1, !dbg !979, !tbaa !103
  %12 = trunc i8 %11 to i3, !dbg !981
  switch i3 %12, label %34 [
    i3 0, label %13
    i3 1, label %16
    i3 2, label %20
    i3 3, label %25
    i3 -4, label %30
  ], !dbg !981

; <label>:13:                                     ; preds = %5
  %14 = lshr i8 %11, 3, !dbg !982
  %15 = zext i8 %14 to i64, !dbg !982
  br label %34, !dbg !984

; <label>:16:                                     ; preds = %5
  %17 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !985
  %18 = load i8, i8* %17, align 1, !dbg !986, !tbaa !103
  %19 = zext i8 %18 to i64, !dbg !985
  br label %34, !dbg !987

; <label>:20:                                     ; preds = %5
  %21 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !988
  %22 = bitcast i8* %21 to i16*, !dbg !989
  %23 = load i16, i16* %22, align 1, !dbg !989, !tbaa !990
  %24 = zext i16 %23 to i64, !dbg !988
  br label %34, !dbg !992

; <label>:25:                                     ; preds = %5
  %26 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !993
  %27 = bitcast i8* %26 to i32*, !dbg !994
  %28 = load i32, i32* %27, align 1, !dbg !994, !tbaa !118
  %29 = zext i32 %28 to i64, !dbg !993
  br label %34, !dbg !995

; <label>:30:                                     ; preds = %5
  %31 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !996
  %32 = bitcast i8* %31 to i64*, !dbg !997
  %33 = load i64, i64* %32, align 1, !dbg !997, !tbaa !290
  br label %34, !dbg !998

; <label>:34:                                     ; preds = %5, %13, %16, %20, %25, %30
  %35 = phi i64 [ %33, %30 ], [ %29, %25 ], [ %24, %20 ], [ %19, %16 ], [ %15, %13 ], [ 0, %5 ], !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1000
  %36 = load i8, i8* %9, align 1, !dbg !1003, !tbaa !103
  %37 = icmp eq i8 %36, 35, !dbg !1005
  %38 = icmp ne i32 %3, 0, !dbg !1006
  %39 = and i1 %38, %37, !dbg !1007
  %40 = icmp sgt i32 %4, 0, !dbg !1008
  %41 = and i1 %40, %39, !dbg !1007
  %42 = zext i1 %41 to i64, !dbg !1009
  %43 = getelementptr inbounds i8, i8* %9, i64 %42, !dbg !1009
  %44 = sub i64 %35, %42, !dbg !1011
  %45 = call i32 @string2ll(i8* %43, i64 %44, i64* nonnull %6) #6, !dbg !1013
  %46 = icmp eq i32 %45, 0, !dbg !1014
  br i1 %46, label %47, label %48, !dbg !1015

; <label>:47:                                     ; preds = %34
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1016
  br label %60, !dbg !1018

; <label>:48:                                     ; preds = %34
  br i1 %41, label %49, label %53, !dbg !1019

; <label>:49:                                     ; preds = %48
  %50 = sext i32 %4 to i64, !dbg !1020
  %51 = load i64, i64* %6, align 8, !dbg !1022, !tbaa !1023
  %52 = mul nsw i64 %51, %50, !dbg !1022
  store i64 %52, i64* %6, align 8, !dbg !1022, !tbaa !1023
  br label %55, !dbg !1025

; <label>:53:                                     ; preds = %48
  %54 = load i64, i64* %6, align 8, !dbg !1026, !tbaa !1023
  br label %55, !dbg !1026

; <label>:55:                                     ; preds = %53, %49
  %56 = phi i64 [ %54, %53 ], [ %52, %49 ], !dbg !1026
  %57 = icmp ugt i64 %56, 4294967295, !dbg !1028
  br i1 %57, label %58, label %59, !dbg !1029

; <label>:58:                                     ; preds = %55
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1030
  br label %60, !dbg !1032

; <label>:59:                                     ; preds = %55
  store i64 %56, i64* %2, align 8, !dbg !1033, !tbaa !290
  br label %60, !dbg !1034

; <label>:60:                                     ; preds = %59, %58, %47
  %61 = phi i32 [ -1, %47 ], [ -1, %58 ], [ 0, %59 ], !dbg !1035
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8, !dbg !1036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  ret i32 %61, !dbg !1036
}

; Function Attrs: noredzone
declare dso_local i32 @string2ll(i8*, i64, i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @getBitfieldTypeFromArgument(%struct.client*, %struct.redisObject* nocapture readonly, i32* nocapture, i32* nocapture) local_unnamed_addr #0 !dbg !1037 {
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !1052
  %7 = load i8*, i8** %6, align 8, !dbg !1052, !tbaa !964
  %8 = bitcast i64* %5 to i8*, !dbg !1054
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !1054
  %9 = load i8, i8* %7, align 1, !dbg !1055, !tbaa !103
  switch i8 %9, label %11 [
    i8 105, label %12
    i8 117, label %10
  ], !dbg !1057

; <label>:10:                                     ; preds = %4
  br label %12

; <label>:11:                                     ; preds = %4
  tail call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !1058
  br label %33, !dbg !1061

; <label>:12:                                     ; preds = %4, %10
  %13 = phi i32 [ 0, %10 ], [ 1, %4 ]
  store i32 %13, i32* %2, align 4, !dbg !1062, !tbaa !118
  %14 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1064
  %15 = tail call i64 @strlen(i8* nonnull %14) #6, !dbg !1066
  %16 = call i32 @string2ll(i8* nonnull %14, i64 %15, i64* nonnull %5) #6, !dbg !1068
  %17 = icmp eq i32 %16, 0, !dbg !1069
  %18 = load i64, i64* %5, align 8, !dbg !1070
  %19 = icmp slt i64 %18, 1, !dbg !1071
  %20 = or i1 %17, %19, !dbg !1072
  br i1 %20, label %30, label %21, !dbg !1072

; <label>:21:                                     ; preds = %12
  %22 = load i32, i32* %2, align 4, !dbg !1073, !tbaa !118
  %23 = icmp eq i32 %22, 1, !dbg !1074
  %24 = icmp sgt i64 %18, 64, !dbg !1075
  %25 = and i1 %24, %23, !dbg !1076
  br i1 %25, label %30, label %26, !dbg !1076

; <label>:26:                                     ; preds = %21
  %27 = icmp eq i32 %22, 0, !dbg !1077
  %28 = icmp sgt i64 %18, 63, !dbg !1078
  %29 = and i1 %28, %27, !dbg !1079
  br i1 %29, label %30, label %31, !dbg !1079

; <label>:30:                                     ; preds = %26, %21, %12
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !1080
  br label %33, !dbg !1082

; <label>:31:                                     ; preds = %26
  %32 = trunc i64 %18 to i32, !dbg !1083
  store i32 %32, i32* %3, align 4, !dbg !1084, !tbaa !118
  br label %33, !dbg !1085

; <label>:33:                                     ; preds = %31, %30, %11
  %34 = phi i32 [ -1, %30 ], [ 0, %31 ], [ -1, %11 ], !dbg !1086
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !1087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1087
  ret i32 %34, !dbg !1087
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @lookupStringForBitCommand(%struct.client*, i64) local_unnamed_addr #0 !dbg !1088 {
  %3 = lshr i64 %1, 3, !dbg !1098
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1100
  %5 = load %struct.redisDb*, %struct.redisDb** %4, align 8, !dbg !1100, !tbaa !1101
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1105
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1105, !tbaa !1106
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 1, !dbg !1107
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !1107, !tbaa !1108
  %10 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %5, %struct.redisObject* %9) #6, !dbg !1109
  %11 = icmp eq %struct.redisObject* %10, null, !dbg !1111
  br i1 %11, label %12, label %20, !dbg !1113

; <label>:12:                                     ; preds = %2
  %13 = add nuw nsw i64 %3, 1, !dbg !1114
  %14 = tail call i8* @sdsnewlen(i8* null, i64 %13) #6, !dbg !1116
  %15 = tail call %struct.redisObject* @createObject(i32 0, i8* %14) #6, !dbg !1117
  %16 = load %struct.redisDb*, %struct.redisDb** %4, align 8, !dbg !1118, !tbaa !1101
  %17 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1119, !tbaa !1106
  %18 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %17, i64 1, !dbg !1120
  %19 = load %struct.redisObject*, %struct.redisObject** %18, align 8, !dbg !1120, !tbaa !1108
  tail call void @dbAdd(%struct.redisDb* %16, %struct.redisObject* %19, %struct.redisObject* %15) #6, !dbg !1121
  br label %33, !dbg !1122

; <label>:20:                                     ; preds = %2
  %21 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %10, i32 0) #6, !dbg !1123
  %22 = icmp eq i32 %21, 0, !dbg !1123
  br i1 %22, label %23, label %33, !dbg !1126

; <label>:23:                                     ; preds = %20
  %24 = load %struct.redisDb*, %struct.redisDb** %4, align 8, !dbg !1127, !tbaa !1101
  %25 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1128, !tbaa !1106
  %26 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %25, i64 1, !dbg !1129
  %27 = load %struct.redisObject*, %struct.redisObject** %26, align 8, !dbg !1129, !tbaa !1108
  %28 = tail call %struct.redisObject* @dbUnshareStringValue(%struct.redisDb* %24, %struct.redisObject* %27, %struct.redisObject* nonnull %10) #6, !dbg !1130
  %29 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %28, i64 0, i32 2, !dbg !1131
  %30 = load i8*, i8** %29, align 8, !dbg !1131, !tbaa !964
  %31 = add nuw nsw i64 %3, 1, !dbg !1132
  %32 = tail call i8* @sdsgrowzero(i8* %30, i64 %31) #6, !dbg !1133
  store i8* %32, i8** %29, align 8, !dbg !1134, !tbaa !964
  br label %33

; <label>:33:                                     ; preds = %12, %23, %20
  %34 = phi %struct.redisObject* [ null, %20 ], [ %15, %12 ], [ %28, %23 ], !dbg !1135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1136
  ret %struct.redisObject* %34, !dbg !1136
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyWrite(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createObject(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @dbAdd(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @checkType(%struct.client*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @dbUnshareStringValue(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsgrowzero(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @getObjectReadOnlyString(%struct.redisObject* readonly, i64*, i8*) local_unnamed_addr #0 !dbg !1137 {
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1149
  %5 = load i32, i32* %4, align 8, !dbg !1149
  %6 = and i32 %5, 15, !dbg !1149
  %7 = icmp eq i32 %6, 0, !dbg !1149
  br i1 %7, label %9, label %8, !dbg !1149

; <label>:8:                                      ; preds = %3
  tail call void @_serverAssert(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 507) #6, !dbg !1149
  tail call void @_exit(i32 1) #7, !dbg !1149
  unreachable, !dbg !1149

; <label>:9:                                      ; preds = %3
  %10 = and i32 %5, 240, !dbg !1151
  %11 = icmp eq i32 %10, 16, !dbg !1153
  br i1 %11, label %12, label %20, !dbg !1154

; <label>:12:                                     ; preds = %9
  %13 = icmp eq i64* %1, null, !dbg !1155
  br i1 %13, label %51, label %14, !dbg !1158

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1159
  %16 = bitcast i8** %15 to i64*, !dbg !1159
  %17 = load i64, i64* %16, align 8, !dbg !1159, !tbaa !964
  %18 = tail call i32 @ll2string(i8* %2, i64 21, i64 %17) #6, !dbg !1160
  %19 = sext i32 %18 to i64, !dbg !1160
  store i64 %19, i64* %1, align 8, !dbg !1161, !tbaa !290
  br label %51, !dbg !1162

; <label>:20:                                     ; preds = %9
  %21 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1163
  %22 = load i8*, i8** %21, align 8, !dbg !1163, !tbaa !964
  %23 = icmp eq i64* %1, null, !dbg !1166
  br i1 %23, label %51, label %24, !dbg !1168

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds i8, i8* %22, i64 -1, !dbg !1171
  %26 = load i8, i8* %25, align 1, !dbg !1171, !tbaa !103
  %27 = trunc i8 %26 to i3, !dbg !1173
  switch i3 %27, label %49 [
    i3 0, label %28
    i3 1, label %31
    i3 2, label %35
    i3 3, label %40
    i3 -4, label %45
  ], !dbg !1173

; <label>:28:                                     ; preds = %24
  %29 = lshr i8 %26, 3, !dbg !1174
  %30 = zext i8 %29 to i64, !dbg !1174
  br label %49, !dbg !1175

; <label>:31:                                     ; preds = %24
  %32 = getelementptr inbounds i8, i8* %22, i64 -3, !dbg !1176
  %33 = load i8, i8* %32, align 1, !dbg !1177, !tbaa !103
  %34 = zext i8 %33 to i64, !dbg !1176
  br label %49, !dbg !1178

; <label>:35:                                     ; preds = %24
  %36 = getelementptr inbounds i8, i8* %22, i64 -5, !dbg !1179
  %37 = bitcast i8* %36 to i16*, !dbg !1180
  %38 = load i16, i16* %37, align 1, !dbg !1180, !tbaa !990
  %39 = zext i16 %38 to i64, !dbg !1179
  br label %49, !dbg !1181

; <label>:40:                                     ; preds = %24
  %41 = getelementptr inbounds i8, i8* %22, i64 -9, !dbg !1182
  %42 = bitcast i8* %41 to i32*, !dbg !1183
  %43 = load i32, i32* %42, align 1, !dbg !1183, !tbaa !118
  %44 = zext i32 %43 to i64, !dbg !1182
  br label %49, !dbg !1184

; <label>:45:                                     ; preds = %24
  %46 = getelementptr inbounds i8, i8* %22, i64 -17, !dbg !1185
  %47 = bitcast i8* %46 to i64*, !dbg !1186
  %48 = load i64, i64* %47, align 1, !dbg !1186, !tbaa !290
  br label %49, !dbg !1187

; <label>:49:                                     ; preds = %24, %28, %31, %35, %40, %45
  %50 = phi i64 [ %48, %45 ], [ %44, %40 ], [ %39, %35 ], [ %34, %31 ], [ %30, %28 ], [ 0, %24 ], !dbg !1188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1189
  store i64 %50, i64* %1, align 8, !dbg !1190, !tbaa !290
  br label %51, !dbg !1191

; <label>:51:                                     ; preds = %12, %20, %49, %14
  %52 = phi i8* [ %2, %14 ], [ %2, %12 ], [ %22, %49 ], [ %22, %20 ], !dbg !1192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1193
  ret i8* %52, !dbg !1193
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @ll2string(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @setbitCommand(%struct.client*) local_unnamed_addr #0 !dbg !1194 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = bitcast i64* %2 to i8*, !dbg !1208
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8, !dbg !1208
  %5 = bitcast i64* %3 to i8*, !dbg !1209
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1209
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1210
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1210, !tbaa !1106
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 2, !dbg !1212
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !1212, !tbaa !1108
  %10 = call i32 @getBitOffsetFromArgument(%struct.client* %0, %struct.redisObject* %9, i64* nonnull %2, i32 0, i32 0) #9, !dbg !1214
  %11 = icmp eq i32 %10, 0, !dbg !1215
  br i1 %11, label %12, label %63, !dbg !1216

; <label>:12:                                     ; preds = %1
  %13 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1217, !tbaa !1106
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 3, !dbg !1219
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !1219, !tbaa !1108
  %16 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %15, i64* nonnull %3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !1221
  %17 = icmp eq i32 %16, 0, !dbg !1222
  br i1 %17, label %18, label %63, !dbg !1223

; <label>:18:                                     ; preds = %12
  %19 = load i64, i64* %3, align 8, !dbg !1224, !tbaa !290
  %20 = icmp ugt i64 %19, 1, !dbg !1226
  br i1 %20, label %21, label %22, !dbg !1227

; <label>:21:                                     ; preds = %18
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !1228
  br label %63, !dbg !1230

; <label>:22:                                     ; preds = %18
  %23 = load i64, i64* %2, align 8, !dbg !1231, !tbaa !290
  %24 = call %struct.redisObject* @lookupStringForBitCommand(%struct.client* nonnull %0, i64 %23) #9, !dbg !1233
  %25 = icmp eq %struct.redisObject* %24, null, !dbg !1235
  br i1 %25, label %63, label %26, !dbg !1236

; <label>:26:                                     ; preds = %22
  %27 = lshr i64 %23, 3, !dbg !1237
  %28 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %24, i64 0, i32 2, !dbg !1239
  %29 = load i8*, i8** %28, align 8, !dbg !1239, !tbaa !964
  %30 = getelementptr inbounds i8, i8* %29, i64 %27, !dbg !1240
  %31 = load i8, i8* %30, align 1, !dbg !1240, !tbaa !103
  %32 = zext i8 %31 to i32, !dbg !1240
  %33 = and i64 %23, 7, !dbg !1242
  %34 = xor i64 %33, 7, !dbg !1243
  %35 = trunc i64 %34 to i32, !dbg !1245
  %36 = shl i32 1, %35, !dbg !1245
  %37 = and i32 %36, %32, !dbg !1246
  %38 = xor i32 %36, 255, !dbg !1248
  %39 = and i32 %38, %32, !dbg !1249
  %40 = load i64, i64* %3, align 8, !dbg !1250, !tbaa !290
  %41 = and i64 %40, 1, !dbg !1251
  %42 = shl i64 %41, %34, !dbg !1252
  %43 = trunc i64 %42 to i32, !dbg !1253
  %44 = or i32 %39, %43, !dbg !1253
  %45 = trunc i32 %44 to i8, !dbg !1254
  store i8 %45, i8* %30, align 1, !dbg !1255, !tbaa !103
  %46 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1256
  %47 = load %struct.redisDb*, %struct.redisDb** %46, align 8, !dbg !1256, !tbaa !1101
  %48 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1257, !tbaa !1106
  %49 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %48, i64 1, !dbg !1258
  %50 = load %struct.redisObject*, %struct.redisObject** %49, align 8, !dbg !1258, !tbaa !1108
  call void @signalModifiedKey(%struct.redisDb* %47, %struct.redisObject* %50) #6, !dbg !1259
  %51 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1260, !tbaa !1106
  %52 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %51, i64 1, !dbg !1261
  %53 = load %struct.redisObject*, %struct.redisObject** %52, align 8, !dbg !1261, !tbaa !1108
  %54 = load %struct.redisDb*, %struct.redisDb** %46, align 8, !dbg !1262, !tbaa !1101
  %55 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %54, i64 0, i32 5, !dbg !1263
  %56 = load i32, i32* %55, align 8, !dbg !1263, !tbaa !1264
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), %struct.redisObject* %53, i32 %56) #6, !dbg !1266
  %57 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1267, !tbaa !1268
  %58 = add nsw i64 %57, 1, !dbg !1267
  store i64 %58, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1267, !tbaa !1268
  %59 = icmp eq i32 %37, 0, !dbg !1274
  %60 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !1275
  %61 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1276
  %62 = select i1 %59, %struct.redisObject* %61, %struct.redisObject* %60, !dbg !1274
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %62) #6, !dbg !1277
  br label %63, !dbg !1278

; <label>:63:                                     ; preds = %22, %12, %1, %26, %21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1278
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8, !dbg !1278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1278
  ret void, !dbg !1278
}

; Function Attrs: noredzone
declare dso_local i32 @getLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @signalModifiedKey(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @notifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @getbitCommand(%struct.client*) local_unnamed_addr #0 !dbg !1279 {
  %2 = alloca [32 x i8], align 16
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0, !dbg !1292
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #8, !dbg !1292
  %5 = bitcast i64* %3 to i8*, !dbg !1294
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1294
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1296
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1296, !tbaa !1106
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 2, !dbg !1298
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !1298, !tbaa !1108
  %10 = call i32 @getBitOffsetFromArgument(%struct.client* %0, %struct.redisObject* %9, i64* nonnull %3, i32 0, i32 0) #9, !dbg !1300
  %11 = icmp eq i32 %10, 0, !dbg !1301
  br i1 %11, label %12, label %87, !dbg !1302

; <label>:12:                                     ; preds = %1
  %13 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1303, !tbaa !1106
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 1, !dbg !1305
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !1305, !tbaa !1108
  %16 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1306, !tbaa !1307
  %17 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* nonnull %0, %struct.redisObject* %15, %struct.redisObject* %16) #6, !dbg !1309
  %18 = icmp eq %struct.redisObject* %17, null, !dbg !1311
  br i1 %18, label %87, label %19, !dbg !1312

; <label>:19:                                     ; preds = %12
  %20 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %17, i32 0) #6, !dbg !1313
  %21 = icmp eq i32 %20, 0, !dbg !1313
  br i1 %21, label %22, label %87, !dbg !1314

; <label>:22:                                     ; preds = %19
  %23 = load i64, i64* %3, align 8, !dbg !1315, !tbaa !290
  %24 = lshr i64 %23, 3, !dbg !1316
  %25 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i64 0, i32 0, !dbg !1319
  %26 = load i32, i32* %25, align 8, !dbg !1319
  %27 = lshr i32 %26, 4, !dbg !1319
  %28 = trunc i32 %27 to i4, !dbg !1319
  switch i4 %28, label %64 [
    i4 0, label %29
    i4 -8, label %29
  ], !dbg !1319

; <label>:29:                                     ; preds = %22, %22
  %30 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i64 0, i32 2, !dbg !1321
  %31 = load i8*, i8** %30, align 8, !dbg !1321, !tbaa !964
  %32 = getelementptr inbounds i8, i8* %31, i64 -1, !dbg !1326
  %33 = load i8, i8* %32, align 1, !dbg !1326, !tbaa !103
  %34 = trunc i8 %33 to i3, !dbg !1328
  switch i3 %34, label %35 [
    i3 0, label %36
    i3 1, label %39
    i3 2, label %43
    i3 3, label %48
    i3 -4, label %53
  ], !dbg !1328

; <label>:35:                                     ; preds = %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1329
  br label %83, !dbg !1330

; <label>:36:                                     ; preds = %29
  %37 = lshr i8 %33, 3, !dbg !1331
  %38 = zext i8 %37 to i64, !dbg !1331
  br label %57, !dbg !1332

; <label>:39:                                     ; preds = %29
  %40 = getelementptr inbounds i8, i8* %31, i64 -3, !dbg !1333
  %41 = load i8, i8* %40, align 1, !dbg !1334, !tbaa !103
  %42 = zext i8 %41 to i64, !dbg !1333
  br label %57, !dbg !1335

; <label>:43:                                     ; preds = %29
  %44 = getelementptr inbounds i8, i8* %31, i64 -5, !dbg !1336
  %45 = bitcast i8* %44 to i16*, !dbg !1337
  %46 = load i16, i16* %45, align 1, !dbg !1337, !tbaa !990
  %47 = zext i16 %46 to i64, !dbg !1336
  br label %57, !dbg !1338

; <label>:48:                                     ; preds = %29
  %49 = getelementptr inbounds i8, i8* %31, i64 -9, !dbg !1339
  %50 = bitcast i8* %49 to i32*, !dbg !1340
  %51 = load i32, i32* %50, align 1, !dbg !1340, !tbaa !118
  %52 = zext i32 %51 to i64, !dbg !1339
  br label %57, !dbg !1341

; <label>:53:                                     ; preds = %29
  %54 = getelementptr inbounds i8, i8* %31, i64 -17, !dbg !1342
  %55 = bitcast i8* %54 to i64*, !dbg !1343
  %56 = load i64, i64* %55, align 1, !dbg !1343, !tbaa !290
  br label %57, !dbg !1344

; <label>:57:                                     ; preds = %36, %39, %43, %48, %53
  %58 = phi i64 [ %56, %53 ], [ %52, %48 ], [ %47, %43 ], [ %42, %39 ], [ %38, %36 ], !dbg !1345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1329
  %59 = icmp ult i64 %24, %58, !dbg !1346
  br i1 %59, label %60, label %83, !dbg !1330

; <label>:60:                                     ; preds = %57
  %61 = getelementptr inbounds i8, i8* %31, i64 %24, !dbg !1347
  %62 = load i8, i8* %61, align 1, !dbg !1347, !tbaa !103
  %63 = zext i8 %62 to i32, !dbg !1347
  br label %75, !dbg !1348

; <label>:64:                                     ; preds = %22
  %65 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i64 0, i32 2, !dbg !1349
  %66 = bitcast i8** %65 to i64*, !dbg !1349
  %67 = load i64, i64* %66, align 8, !dbg !1349, !tbaa !964
  %68 = call i32 @ll2string(i8* nonnull %4, i64 32, i64 %67) #6, !dbg !1352
  %69 = sext i32 %68 to i64, !dbg !1353
  %70 = icmp ult i64 %24, %69, !dbg !1354
  br i1 %70, label %71, label %83, !dbg !1355

; <label>:71:                                     ; preds = %64
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %24, !dbg !1356
  %73 = load i8, i8* %72, align 1, !dbg !1356, !tbaa !103
  %74 = sext i8 %73 to i32, !dbg !1356
  br label %75, !dbg !1357

; <label>:75:                                     ; preds = %71, %60
  %76 = phi i32 [ %74, %71 ], [ %63, %60 ]
  %77 = trunc i64 %23 to i32, !dbg !1358
  %78 = and i32 %77, 7, !dbg !1358
  %79 = xor i32 %78, 7, !dbg !1358
  %80 = shl i32 1, %79, !dbg !1358
  %81 = and i32 %80, %76, !dbg !1358
  %82 = icmp eq i32 %81, 0, !dbg !1359
  br i1 %82, label %83, label %84, !dbg !1359

; <label>:83:                                     ; preds = %35, %64, %57, %75
  br label %84, !dbg !1359

; <label>:84:                                     ; preds = %75, %83
  %85 = phi %struct.redisObject** [ getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), %83 ], [ getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), %75 ]
  %86 = load %struct.redisObject*, %struct.redisObject** %85, align 8, !dbg !1360
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %86) #6, !dbg !1361
  br label %87, !dbg !1362

; <label>:87:                                     ; preds = %12, %19, %1, %84
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1362
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #8, !dbg !1362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1362
  ret void, !dbg !1362
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyReadOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @bitopCommand(%struct.client*) local_unnamed_addr #0 !dbg !1363 {
  %2 = alloca [16 x i64*], align 16
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1398
  %4 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !1398, !tbaa !1106
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 1, !dbg !1399
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !1399, !tbaa !1108
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %6, i64 0, i32 2, !dbg !1400
  %8 = load i8*, i8** %7, align 8, !dbg !1400, !tbaa !964
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 2, !dbg !1402
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !1402, !tbaa !1108
  %11 = load i8, i8* %8, align 1, !dbg !1407, !tbaa !103
  switch i8 %11, label %28 [
    i8 97, label %12
    i8 65, label %12
    i8 111, label %16
    i8 79, label %16
    i8 120, label %20
    i8 88, label %20
    i8 110, label %25
    i8 78, label %25
  ], !dbg !1409

; <label>:12:                                     ; preds = %1, %1
  %13 = tail call i32 @strcasecmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !1410
  %14 = icmp eq i32 %13, 0, !dbg !1410
  br i1 %14, label %35, label %15, !dbg !1411

; <label>:15:                                     ; preds = %12
  switch i8 %11, label %28 [
    i8 78, label %25
    i8 79, label %16
    i8 88, label %20
  ], !dbg !1412

; <label>:16:                                     ; preds = %1, %1, %15
  %17 = tail call i32 @strcasecmp(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !1414
  %18 = icmp eq i32 %17, 0, !dbg !1414
  br i1 %18, label %35, label %19, !dbg !1415

; <label>:19:                                     ; preds = %16
  switch i8 %11, label %28 [
    i8 110, label %25
    i8 88, label %20
  ], !dbg !1416

; <label>:20:                                     ; preds = %15, %1, %1, %19
  %21 = tail call i32 @strcasecmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !1418
  %22 = icmp eq i32 %21, 0, !dbg !1418
  br i1 %22, label %35, label %23, !dbg !1419

; <label>:23:                                     ; preds = %20
  %24 = icmp eq i8 %11, 110, !dbg !1420
  br i1 %24, label %25, label %28, !dbg !1420

; <label>:25:                                     ; preds = %23, %19, %15, %1, %1
  %26 = tail call i32 @strcasecmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !1422
  %27 = icmp eq i32 %26, 0, !dbg !1422
  br i1 %27, label %30, label %28, !dbg !1423

; <label>:28:                                     ; preds = %23, %1, %15, %19, %25
  %29 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1424, !tbaa !1426
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %29) #6, !dbg !1427
  br label %402, !dbg !1428

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1430
  %32 = load i32, i32* %31, align 8, !dbg !1430, !tbaa !1432
  %33 = icmp eq i32 %32, 4, !dbg !1433
  br i1 %33, label %35, label %34, !dbg !1434

; <label>:34:                                     ; preds = %30
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !1435
  br label %402, !dbg !1437

; <label>:35:                                     ; preds = %20, %16, %12, %30
  %36 = phi i1 [ true, %30 ], [ false, %12 ], [ false, %16 ], [ false, %20 ]
  %37 = phi i2 [ -1, %30 ], [ 0, %12 ], [ 1, %16 ], [ -2, %20 ]
  %38 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1438
  %39 = load i32, i32* %38, align 8, !dbg !1438, !tbaa !1432
  %40 = add nsw i32 %39, -3, !dbg !1439
  %41 = sext i32 %40 to i64, !dbg !1440
  %42 = shl nsw i64 %41, 3, !dbg !1442
  %43 = tail call i8* @zmalloc(i64 %42) #6, !dbg !1443
  %44 = bitcast i8* %43 to i8**, !dbg !1443
  %45 = tail call i8* @zmalloc(i64 %42) #6, !dbg !1445
  %46 = bitcast i8* %45 to i64*, !dbg !1445
  %47 = tail call i8* @zmalloc(i64 %42) #6, !dbg !1447
  %48 = bitcast i8* %47 to %struct.redisObject**, !dbg !1447
  %49 = icmp eq i32 %40, 0, !dbg !1450
  br i1 %49, label %378, label %50, !dbg !1451

; <label>:50:                                     ; preds = %35
  %51 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  br label %52, !dbg !1451

; <label>:52:                                     ; preds = %50, %126
  %53 = phi i64 [ 0, %50 ], [ %128, %126 ]
  %54 = phi i64 [ 0, %50 ], [ %127, %126 ]
  %55 = phi i64 [ 0, %50 ], [ %129, %126 ]
  %56 = load %struct.redisDb*, %struct.redisDb** %51, align 8, !dbg !1452, !tbaa !1101
  %57 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !1453, !tbaa !1106
  %58 = add i64 %55, 3, !dbg !1454
  %59 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %57, i64 %58, !dbg !1455
  %60 = load %struct.redisObject*, %struct.redisObject** %59, align 8, !dbg !1455, !tbaa !1108
  %61 = tail call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %56, %struct.redisObject* %60) #6, !dbg !1456
  %62 = icmp eq %struct.redisObject* %61, null, !dbg !1458
  br i1 %62, label %63, label %67, !dbg !1460

; <label>:63:                                     ; preds = %52
  %64 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %48, i64 %55, !dbg !1461
  store %struct.redisObject* null, %struct.redisObject** %64, align 8, !dbg !1463, !tbaa !1108
  %65 = getelementptr inbounds i8*, i8** %44, i64 %55, !dbg !1464
  store i8* null, i8** %65, align 8, !dbg !1465, !tbaa !1108
  %66 = getelementptr inbounds i64, i64* %46, i64 %55, !dbg !1466
  store i64 0, i64* %66, align 8, !dbg !1467, !tbaa !290
  br label %126, !dbg !1468

; <label>:67:                                     ; preds = %52
  %68 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %61, i32 0) #6, !dbg !1469
  %69 = icmp eq i32 %68, 0, !dbg !1469
  br i1 %69, label %82, label %70, !dbg !1470

; <label>:70:                                     ; preds = %67
  %71 = icmp eq i64 %55, 0, !dbg !1472
  br i1 %71, label %81, label %72, !dbg !1475

; <label>:72:                                     ; preds = %70, %78
  %73 = phi i64 [ %79, %78 ], [ 0, %70 ]
  %74 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %48, i64 %73, !dbg !1476
  %75 = load %struct.redisObject*, %struct.redisObject** %74, align 8, !dbg !1476, !tbaa !1108
  %76 = icmp eq %struct.redisObject* %75, null, !dbg !1476
  br i1 %76, label %78, label %77, !dbg !1479

; <label>:77:                                     ; preds = %72
  tail call void @decrRefCount(%struct.redisObject* nonnull %75) #6, !dbg !1480
  br label %78, !dbg !1480

; <label>:78:                                     ; preds = %72, %77
  %79 = add nuw i64 %73, 1, !dbg !1481
  %80 = icmp eq i64 %79, %55, !dbg !1472
  br i1 %80, label %81, label %72, !dbg !1475, !llvm.loop !1482

; <label>:81:                                     ; preds = %78, %70
  tail call void @zfree(i8* %43) #6, !dbg !1484
  tail call void @zfree(i8* %45) #6, !dbg !1485
  tail call void @zfree(i8* %47) #6, !dbg !1486
  br label %402

; <label>:82:                                     ; preds = %67
  %83 = tail call %struct.redisObject* @getDecodedObject(%struct.redisObject* nonnull %61) #6, !dbg !1487
  %84 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %48, i64 %55, !dbg !1488
  store %struct.redisObject* %83, %struct.redisObject** %84, align 8, !dbg !1489, !tbaa !1108
  %85 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %83, i64 0, i32 2, !dbg !1490
  %86 = bitcast i8** %85 to i64*, !dbg !1490
  %87 = load i64, i64* %86, align 8, !dbg !1490, !tbaa !964
  %88 = getelementptr inbounds i8*, i8** %44, i64 %55, !dbg !1491
  %89 = bitcast i8** %88 to i64*, !dbg !1492
  store i64 %87, i64* %89, align 8, !dbg !1492, !tbaa !1108
  %90 = load %struct.redisObject*, %struct.redisObject** %84, align 8, !dbg !1493, !tbaa !1108
  %91 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %90, i64 0, i32 2, !dbg !1494
  %92 = load i8*, i8** %91, align 8, !dbg !1494, !tbaa !964
  %93 = getelementptr inbounds i8, i8* %92, i64 -1, !dbg !1497
  %94 = load i8, i8* %93, align 1, !dbg !1497, !tbaa !103
  %95 = trunc i8 %94 to i3, !dbg !1499
  switch i3 %95, label %117 [
    i3 0, label %96
    i3 1, label %99
    i3 2, label %103
    i3 3, label %108
    i3 -4, label %113
  ], !dbg !1499

; <label>:96:                                     ; preds = %82
  %97 = lshr i8 %94, 3, !dbg !1500
  %98 = zext i8 %97 to i64, !dbg !1500
  br label %117, !dbg !1501

; <label>:99:                                     ; preds = %82
  %100 = getelementptr inbounds i8, i8* %92, i64 -3, !dbg !1502
  %101 = load i8, i8* %100, align 1, !dbg !1503, !tbaa !103
  %102 = zext i8 %101 to i64, !dbg !1502
  br label %117, !dbg !1504

; <label>:103:                                    ; preds = %82
  %104 = getelementptr inbounds i8, i8* %92, i64 -5, !dbg !1505
  %105 = bitcast i8* %104 to i16*, !dbg !1506
  %106 = load i16, i16* %105, align 1, !dbg !1506, !tbaa !990
  %107 = zext i16 %106 to i64, !dbg !1505
  br label %117, !dbg !1507

; <label>:108:                                    ; preds = %82
  %109 = getelementptr inbounds i8, i8* %92, i64 -9, !dbg !1508
  %110 = bitcast i8* %109 to i32*, !dbg !1509
  %111 = load i32, i32* %110, align 1, !dbg !1509, !tbaa !118
  %112 = zext i32 %111 to i64, !dbg !1508
  br label %117, !dbg !1510

; <label>:113:                                    ; preds = %82
  %114 = getelementptr inbounds i8, i8* %92, i64 -17, !dbg !1511
  %115 = bitcast i8* %114 to i64*, !dbg !1512
  %116 = load i64, i64* %115, align 1, !dbg !1512, !tbaa !290
  br label %117, !dbg !1513

; <label>:117:                                    ; preds = %82, %96, %99, %103, %108, %113
  %118 = phi i64 [ %116, %113 ], [ %112, %108 ], [ %107, %103 ], [ %102, %99 ], [ %98, %96 ], [ 0, %82 ], !dbg !1514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1515
  %119 = getelementptr inbounds i64, i64* %46, i64 %55, !dbg !1516
  store i64 %118, i64* %119, align 8, !dbg !1517, !tbaa !290
  %120 = icmp ugt i64 %118, %54, !dbg !1518
  %121 = select i1 %120, i64 %118, i64 %54, !dbg !1520
  %122 = icmp eq i64 %55, 0, !dbg !1521
  %123 = icmp ult i64 %118, %53, !dbg !1523
  %124 = or i1 %122, %123, !dbg !1524
  %125 = select i1 %124, i64 %118, i64 %53, !dbg !1524
  br label %126, !dbg !1524

; <label>:126:                                    ; preds = %117, %63
  %127 = phi i64 [ %54, %63 ], [ %121, %117 ], !dbg !1525
  %128 = phi i64 [ 0, %63 ], [ %125, %117 ], !dbg !1526
  %129 = add nuw i64 %55, 1, !dbg !1527
  %130 = icmp ult i64 %129, %41, !dbg !1450
  br i1 %130, label %52, label %131, !dbg !1451, !llvm.loop !1528

; <label>:131:                                    ; preds = %126
  %132 = icmp ne i64 %127, 0, !dbg !1530
  br i1 %132, label %133, label %365, !dbg !1531

; <label>:133:                                    ; preds = %131
  %134 = tail call i8* @sdsnewlen(i8* null, i64 %127) #6, !dbg !1532
  %135 = icmp ugt i64 %128, 31, !dbg !1533
  %136 = icmp ult i32 %40, 17, !dbg !1534
  %137 = and i1 %136, %135, !dbg !1535
  br i1 %137, label %138, label %319, !dbg !1535

; <label>:138:                                    ; preds = %133
  %139 = bitcast [16 x i64*]* %2 to i8*, !dbg !1536
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %139) #8, !dbg !1536
  %140 = bitcast i8* %134 to i64*, !dbg !1538
  %141 = call i8* @memcpy(i8* nonnull %139, i8* nonnull %43, i64 %42) #6, !dbg !1540
  %142 = load i8*, i8** %44, align 8, !dbg !1541, !tbaa !1108
  %143 = call i8* @memcpy(i8* %134, i8* %142, i64 %128) #6, !dbg !1542
  switch i2 %37, label %261 [
    i2 0, label %148
    i2 1, label %146
    i2 -2, label %144
  ], !dbg !1543

; <label>:144:                                    ; preds = %138
  %145 = icmp ugt i32 %40, 1
  br label %224, !dbg !1544

; <label>:146:                                    ; preds = %138
  %147 = icmp ugt i32 %40, 1
  br label %187, !dbg !1549

; <label>:148:                                    ; preds = %138
  %149 = icmp ugt i32 %40, 1
  br label %150, !dbg !1551

; <label>:150:                                    ; preds = %148, %183
  %151 = phi i64* [ %140, %148 ], [ %184, %183 ]
  %152 = phi i64 [ %128, %148 ], [ %185, %183 ]
  br i1 %149, label %153, label %183, !dbg !1554

; <label>:153:                                    ; preds = %150
  %154 = getelementptr inbounds i64, i64* %151, i64 1
  %155 = getelementptr inbounds i64, i64* %151, i64 2
  %156 = getelementptr inbounds i64, i64* %151, i64 3
  %157 = load i64, i64* %151, align 8, !dbg !1557, !tbaa !290
  %158 = load i64, i64* %154, align 8, !dbg !1560, !tbaa !290
  %159 = load i64, i64* %155, align 8, !dbg !1561, !tbaa !290
  %160 = load i64, i64* %156, align 8, !dbg !1562, !tbaa !290
  br label %161, !dbg !1554

; <label>:161:                                    ; preds = %153, %161
  %162 = phi i64 [ %160, %153 ], [ %179, %161 ], !dbg !1562
  %163 = phi i64 [ %159, %153 ], [ %176, %161 ], !dbg !1561
  %164 = phi i64 [ %158, %153 ], [ %173, %161 ], !dbg !1560
  %165 = phi i64 [ %157, %153 ], [ %170, %161 ], !dbg !1557
  %166 = phi i64 [ 1, %153 ], [ %181, %161 ]
  %167 = getelementptr inbounds [16 x i64*], [16 x i64*]* %2, i64 0, i64 %166, !dbg !1563
  %168 = load i64*, i64** %167, align 8, !dbg !1563, !tbaa !1108
  %169 = load i64, i64* %168, align 8, !dbg !1563, !tbaa !290
  %170 = and i64 %165, %169, !dbg !1557
  store i64 %170, i64* %151, align 8, !dbg !1557, !tbaa !290
  %171 = getelementptr inbounds i64, i64* %168, i64 1, !dbg !1564
  %172 = load i64, i64* %171, align 8, !dbg !1564, !tbaa !290
  %173 = and i64 %164, %172, !dbg !1560
  store i64 %173, i64* %154, align 8, !dbg !1560, !tbaa !290
  %174 = getelementptr inbounds i64, i64* %168, i64 2, !dbg !1565
  %175 = load i64, i64* %174, align 8, !dbg !1565, !tbaa !290
  %176 = and i64 %163, %175, !dbg !1561
  store i64 %176, i64* %155, align 8, !dbg !1561, !tbaa !290
  %177 = getelementptr inbounds i64, i64* %168, i64 3, !dbg !1566
  %178 = load i64, i64* %177, align 8, !dbg !1566, !tbaa !290
  %179 = and i64 %162, %178, !dbg !1562
  store i64 %179, i64* %156, align 8, !dbg !1562, !tbaa !290
  %180 = getelementptr inbounds i64, i64* %168, i64 4, !dbg !1567
  store i64* %180, i64** %167, align 8, !dbg !1567, !tbaa !1108
  %181 = add nuw i64 %166, 1, !dbg !1568
  %182 = icmp ult i64 %181, %41, !dbg !1569
  br i1 %182, label %161, label %183, !dbg !1554, !llvm.loop !1570

; <label>:183:                                    ; preds = %161, %150
  %184 = getelementptr inbounds i64, i64* %151, i64 4, !dbg !1572
  %185 = add i64 %152, -32, !dbg !1573
  %186 = icmp ugt i64 %185, 31, !dbg !1574
  br i1 %186, label %150, label %310, !dbg !1551, !llvm.loop !1575

; <label>:187:                                    ; preds = %146, %220
  %188 = phi i64* [ %140, %146 ], [ %221, %220 ]
  %189 = phi i64 [ %128, %146 ], [ %222, %220 ]
  br i1 %147, label %190, label %220, !dbg !1577

; <label>:190:                                    ; preds = %187
  %191 = getelementptr inbounds i64, i64* %188, i64 1
  %192 = getelementptr inbounds i64, i64* %188, i64 2
  %193 = getelementptr inbounds i64, i64* %188, i64 3
  %194 = load i64, i64* %188, align 8, !dbg !1580, !tbaa !290
  %195 = load i64, i64* %191, align 8, !dbg !1583, !tbaa !290
  %196 = load i64, i64* %192, align 8, !dbg !1584, !tbaa !290
  %197 = load i64, i64* %193, align 8, !dbg !1585, !tbaa !290
  br label %198, !dbg !1577

; <label>:198:                                    ; preds = %190, %198
  %199 = phi i64 [ %197, %190 ], [ %216, %198 ], !dbg !1585
  %200 = phi i64 [ %196, %190 ], [ %213, %198 ], !dbg !1584
  %201 = phi i64 [ %195, %190 ], [ %210, %198 ], !dbg !1583
  %202 = phi i64 [ %194, %190 ], [ %207, %198 ], !dbg !1580
  %203 = phi i64 [ 1, %190 ], [ %218, %198 ]
  %204 = getelementptr inbounds [16 x i64*], [16 x i64*]* %2, i64 0, i64 %203, !dbg !1586
  %205 = load i64*, i64** %204, align 8, !dbg !1586, !tbaa !1108
  %206 = load i64, i64* %205, align 8, !dbg !1586, !tbaa !290
  %207 = or i64 %202, %206, !dbg !1580
  store i64 %207, i64* %188, align 8, !dbg !1580, !tbaa !290
  %208 = getelementptr inbounds i64, i64* %205, i64 1, !dbg !1587
  %209 = load i64, i64* %208, align 8, !dbg !1587, !tbaa !290
  %210 = or i64 %201, %209, !dbg !1583
  store i64 %210, i64* %191, align 8, !dbg !1583, !tbaa !290
  %211 = getelementptr inbounds i64, i64* %205, i64 2, !dbg !1588
  %212 = load i64, i64* %211, align 8, !dbg !1588, !tbaa !290
  %213 = or i64 %200, %212, !dbg !1584
  store i64 %213, i64* %192, align 8, !dbg !1584, !tbaa !290
  %214 = getelementptr inbounds i64, i64* %205, i64 3, !dbg !1589
  %215 = load i64, i64* %214, align 8, !dbg !1589, !tbaa !290
  %216 = or i64 %199, %215, !dbg !1585
  store i64 %216, i64* %193, align 8, !dbg !1585, !tbaa !290
  %217 = getelementptr inbounds i64, i64* %205, i64 4, !dbg !1590
  store i64* %217, i64** %204, align 8, !dbg !1590, !tbaa !1108
  %218 = add nuw i64 %203, 1, !dbg !1591
  %219 = icmp ult i64 %218, %41, !dbg !1592
  br i1 %219, label %198, label %220, !dbg !1577, !llvm.loop !1593

; <label>:220:                                    ; preds = %198, %187
  %221 = getelementptr inbounds i64, i64* %188, i64 4, !dbg !1595
  %222 = add i64 %189, -32, !dbg !1596
  %223 = icmp ugt i64 %222, 31, !dbg !1597
  br i1 %223, label %187, label %312, !dbg !1549, !llvm.loop !1598

; <label>:224:                                    ; preds = %144, %257
  %225 = phi i64* [ %140, %144 ], [ %258, %257 ]
  %226 = phi i64 [ %128, %144 ], [ %259, %257 ]
  br i1 %145, label %227, label %257, !dbg !1600

; <label>:227:                                    ; preds = %224
  %228 = getelementptr inbounds i64, i64* %225, i64 1
  %229 = getelementptr inbounds i64, i64* %225, i64 2
  %230 = getelementptr inbounds i64, i64* %225, i64 3
  %231 = load i64, i64* %225, align 8, !dbg !1603, !tbaa !290
  %232 = load i64, i64* %228, align 8, !dbg !1606, !tbaa !290
  %233 = load i64, i64* %229, align 8, !dbg !1607, !tbaa !290
  %234 = load i64, i64* %230, align 8, !dbg !1608, !tbaa !290
  br label %235, !dbg !1600

; <label>:235:                                    ; preds = %227, %235
  %236 = phi i64 [ %234, %227 ], [ %253, %235 ], !dbg !1608
  %237 = phi i64 [ %233, %227 ], [ %250, %235 ], !dbg !1607
  %238 = phi i64 [ %232, %227 ], [ %247, %235 ], !dbg !1606
  %239 = phi i64 [ %231, %227 ], [ %244, %235 ], !dbg !1603
  %240 = phi i64 [ 1, %227 ], [ %255, %235 ]
  %241 = getelementptr inbounds [16 x i64*], [16 x i64*]* %2, i64 0, i64 %240, !dbg !1609
  %242 = load i64*, i64** %241, align 8, !dbg !1609, !tbaa !1108
  %243 = load i64, i64* %242, align 8, !dbg !1609, !tbaa !290
  %244 = xor i64 %239, %243, !dbg !1603
  store i64 %244, i64* %225, align 8, !dbg !1603, !tbaa !290
  %245 = getelementptr inbounds i64, i64* %242, i64 1, !dbg !1610
  %246 = load i64, i64* %245, align 8, !dbg !1610, !tbaa !290
  %247 = xor i64 %238, %246, !dbg !1606
  store i64 %247, i64* %228, align 8, !dbg !1606, !tbaa !290
  %248 = getelementptr inbounds i64, i64* %242, i64 2, !dbg !1611
  %249 = load i64, i64* %248, align 8, !dbg !1611, !tbaa !290
  %250 = xor i64 %237, %249, !dbg !1607
  store i64 %250, i64* %229, align 8, !dbg !1607, !tbaa !290
  %251 = getelementptr inbounds i64, i64* %242, i64 3, !dbg !1612
  %252 = load i64, i64* %251, align 8, !dbg !1612, !tbaa !290
  %253 = xor i64 %236, %252, !dbg !1608
  store i64 %253, i64* %230, align 8, !dbg !1608, !tbaa !290
  %254 = getelementptr inbounds i64, i64* %242, i64 4, !dbg !1613
  store i64* %254, i64** %241, align 8, !dbg !1613, !tbaa !1108
  %255 = add nuw i64 %240, 1, !dbg !1614
  %256 = icmp ult i64 %255, %41, !dbg !1615
  br i1 %256, label %235, label %257, !dbg !1600, !llvm.loop !1616

; <label>:257:                                    ; preds = %235, %224
  %258 = getelementptr inbounds i64, i64* %225, i64 4, !dbg !1618
  %259 = add i64 %226, -32, !dbg !1619
  %260 = icmp ugt i64 %259, 31, !dbg !1620
  br i1 %260, label %224, label %314, !dbg !1544, !llvm.loop !1621

; <label>:261:                                    ; preds = %138
  br i1 %36, label %262, label %316, !dbg !1623

; <label>:262:                                    ; preds = %261
  %263 = add i64 %128, -32, !dbg !1624
  %264 = and i64 %263, 32, !dbg !1624
  %265 = icmp eq i64 %264, 0, !dbg !1624
  br i1 %265, label %266, label %279, !dbg !1624

; <label>:266:                                    ; preds = %262
  %267 = bitcast i8* %134 to <2 x i64>*, !dbg !1624
  %268 = load <2 x i64>, <2 x i64>* %267, align 8, !dbg !1624, !tbaa !290
  %269 = xor <2 x i64> %268, <i64 -1, i64 -1>, !dbg !1628
  %270 = bitcast i8* %134 to <2 x i64>*, !dbg !1629
  store <2 x i64> %269, <2 x i64>* %270, align 8, !dbg !1629, !tbaa !290
  %271 = getelementptr inbounds i8, i8* %134, i64 16, !dbg !1630
  %272 = bitcast i8* %271 to <2 x i64>*, !dbg !1630
  %273 = load <2 x i64>, <2 x i64>* %272, align 8, !dbg !1630, !tbaa !290
  %274 = xor <2 x i64> %273, <i64 -1, i64 -1>, !dbg !1631
  %275 = bitcast i8* %271 to <2 x i64>*, !dbg !1632
  store <2 x i64> %274, <2 x i64>* %275, align 8, !dbg !1632, !tbaa !290
  %276 = getelementptr inbounds i8, i8* %134, i64 32, !dbg !1633
  %277 = bitcast i8* %276 to i64*, !dbg !1633
  %278 = add i64 %128, -32, !dbg !1634
  br label %279, !dbg !1635

; <label>:279:                                    ; preds = %266, %262
  %280 = phi i64 [ %128, %262 ], [ %278, %266 ]
  %281 = phi i64* [ %140, %262 ], [ %277, %266 ]
  %282 = icmp ult i64 %263, 32, !dbg !1624
  br i1 %282, label %308, label %283, !dbg !1624

; <label>:283:                                    ; preds = %279, %283
  %284 = phi i64 [ %306, %283 ], [ %280, %279 ], !dbg !1636
  %285 = phi i64* [ %305, %283 ], [ %281, %279 ], !dbg !1636
  %286 = bitcast i64* %285 to <2 x i64>*, !dbg !1624
  %287 = load <2 x i64>, <2 x i64>* %286, align 8, !dbg !1624, !tbaa !290
  %288 = xor <2 x i64> %287, <i64 -1, i64 -1>, !dbg !1628
  %289 = bitcast i64* %285 to <2 x i64>*, !dbg !1629
  store <2 x i64> %288, <2 x i64>* %289, align 8, !dbg !1629, !tbaa !290
  %290 = getelementptr inbounds i64, i64* %285, i64 2, !dbg !1630
  %291 = bitcast i64* %290 to <2 x i64>*, !dbg !1630
  %292 = load <2 x i64>, <2 x i64>* %291, align 8, !dbg !1630, !tbaa !290
  %293 = xor <2 x i64> %292, <i64 -1, i64 -1>, !dbg !1631
  %294 = bitcast i64* %290 to <2 x i64>*, !dbg !1632
  store <2 x i64> %293, <2 x i64>* %294, align 8, !dbg !1632, !tbaa !290
  %295 = getelementptr inbounds i64, i64* %285, i64 4, !dbg !1633
  %296 = bitcast i64* %295 to <2 x i64>*, !dbg !1624
  %297 = load <2 x i64>, <2 x i64>* %296, align 8, !dbg !1624, !tbaa !290
  %298 = xor <2 x i64> %297, <i64 -1, i64 -1>, !dbg !1628
  %299 = bitcast i64* %295 to <2 x i64>*, !dbg !1629
  store <2 x i64> %298, <2 x i64>* %299, align 8, !dbg !1629, !tbaa !290
  %300 = getelementptr inbounds i64, i64* %285, i64 6, !dbg !1630
  %301 = bitcast i64* %300 to <2 x i64>*, !dbg !1630
  %302 = load <2 x i64>, <2 x i64>* %301, align 8, !dbg !1630, !tbaa !290
  %303 = xor <2 x i64> %302, <i64 -1, i64 -1>, !dbg !1631
  %304 = bitcast i64* %300 to <2 x i64>*, !dbg !1632
  store <2 x i64> %303, <2 x i64>* %304, align 8, !dbg !1632, !tbaa !290
  %305 = getelementptr inbounds i64, i64* %285, i64 8, !dbg !1633
  %306 = add i64 %284, -64, !dbg !1634
  %307 = icmp ugt i64 %306, 31, !dbg !1637
  br i1 %307, label %283, label %308, !dbg !1635

; <label>:308:                                    ; preds = %283, %279
  %309 = and i64 %128, -32, !dbg !1624
  br label %316, !dbg !1638

; <label>:310:                                    ; preds = %183
  %311 = and i64 %128, -32, !dbg !1551
  br label %316, !dbg !1638

; <label>:312:                                    ; preds = %220
  %313 = and i64 %128, -32, !dbg !1549
  br label %316, !dbg !1638

; <label>:314:                                    ; preds = %257
  %315 = and i64 %128, -32, !dbg !1544
  br label %316, !dbg !1638

; <label>:316:                                    ; preds = %314, %312, %310, %308, %261
  %317 = phi i1 [ false, %261 ], [ true, %308 ], [ %36, %310 ], [ %36, %312 ], [ %36, %314 ]
  %318 = phi i64 [ 0, %261 ], [ %309, %308 ], [ %311, %310 ], [ %313, %312 ], [ %315, %314 ], !dbg !1639
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %139) #8, !dbg !1638
  br label %319, !dbg !1640

; <label>:319:                                    ; preds = %316, %133
  %320 = phi i1 [ %317, %316 ], [ %36, %133 ]
  %321 = phi i64 [ %318, %316 ], [ 0, %133 ], !dbg !1641
  %322 = icmp ult i64 %321, %127, !dbg !1642
  br i1 %322, label %323, label %365, !dbg !1645

; <label>:323:                                    ; preds = %319
  %324 = sext i1 %320 to i8
  %325 = icmp ugt i32 %40, 1
  br label %326, !dbg !1645

; <label>:326:                                    ; preds = %360, %323
  %327 = phi i64 [ %321, %323 ], [ %363, %360 ]
  %328 = load i64, i64* %46, align 8, !dbg !1646, !tbaa !290
  %329 = icmp ugt i64 %328, %327, !dbg !1648
  br i1 %329, label %330, label %334, !dbg !1649

; <label>:330:                                    ; preds = %326
  %331 = load i8*, i8** %44, align 8, !dbg !1650, !tbaa !1108
  %332 = getelementptr inbounds i8, i8* %331, i64 %327, !dbg !1650
  %333 = load i8, i8* %332, align 1, !dbg !1650, !tbaa !103
  br label %334, !dbg !1649

; <label>:334:                                    ; preds = %326, %330
  %335 = phi i8 [ %333, %330 ], [ 0, %326 ], !dbg !1649
  %336 = xor i8 %335, %324, !dbg !1652
  br i1 %325, label %337, label %360, !dbg !1653

; <label>:337:                                    ; preds = %334, %356
  %338 = phi i64 [ %358, %356 ], [ 1, %334 ]
  %339 = phi i8 [ %357, %356 ], [ %336, %334 ]
  %340 = getelementptr inbounds i64, i64* %46, i64 %338, !dbg !1655
  %341 = load i64, i64* %340, align 8, !dbg !1655, !tbaa !290
  %342 = icmp ugt i64 %341, %327, !dbg !1658
  br i1 %342, label %343, label %348, !dbg !1659

; <label>:343:                                    ; preds = %337
  %344 = getelementptr inbounds i8*, i8** %44, i64 %338, !dbg !1660
  %345 = load i8*, i8** %344, align 8, !dbg !1660, !tbaa !1108
  %346 = getelementptr inbounds i8, i8* %345, i64 %327, !dbg !1660
  %347 = load i8, i8* %346, align 1, !dbg !1660, !tbaa !103
  br label %348, !dbg !1659

; <label>:348:                                    ; preds = %337, %343
  %349 = phi i8 [ %347, %343 ], [ 0, %337 ], !dbg !1659
  switch i2 %37, label %356 [
    i2 0, label %350
    i2 1, label %352
    i2 -2, label %354
  ], !dbg !1662

; <label>:350:                                    ; preds = %348
  %351 = and i8 %349, %339, !dbg !1663
  br label %356, !dbg !1665

; <label>:352:                                    ; preds = %348
  %353 = or i8 %349, %339, !dbg !1666
  br label %356, !dbg !1667

; <label>:354:                                    ; preds = %348
  %355 = xor i8 %349, %339, !dbg !1668
  br label %356, !dbg !1669

; <label>:356:                                    ; preds = %350, %352, %354, %348
  %357 = phi i8 [ %339, %348 ], [ %355, %354 ], [ %353, %352 ], [ %351, %350 ], !dbg !1670
  %358 = add nuw i64 %338, 1, !dbg !1671
  %359 = icmp ult i64 %358, %41, !dbg !1672
  br i1 %359, label %337, label %360, !dbg !1653, !llvm.loop !1673

; <label>:360:                                    ; preds = %356, %334
  %361 = phi i8 [ %336, %334 ], [ %357, %356 ], !dbg !1675
  %362 = getelementptr inbounds i8, i8* %134, i64 %327, !dbg !1677
  store i8 %361, i8* %362, align 1, !dbg !1678, !tbaa !103
  %363 = add nuw i64 %327, 1, !dbg !1679
  %364 = icmp eq i64 %363, %127, !dbg !1642
  br i1 %364, label %365, label %326, !dbg !1645, !llvm.loop !1680

; <label>:365:                                    ; preds = %360, %319, %131
  %366 = phi i1 [ false, %131 ], [ %132, %319 ], [ %132, %360 ]
  %367 = phi i64 [ 0, %131 ], [ %127, %319 ], [ %127, %360 ]
  %368 = phi i8* [ null, %131 ], [ %134, %319 ], [ %134, %360 ], !dbg !1526
  br i1 %49, label %378, label %369, !dbg !1682

; <label>:369:                                    ; preds = %365, %375
  %370 = phi i64 [ %376, %375 ], [ 0, %365 ]
  %371 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %48, i64 %370, !dbg !1684
  %372 = load %struct.redisObject*, %struct.redisObject** %371, align 8, !dbg !1684, !tbaa !1108
  %373 = icmp eq %struct.redisObject* %372, null, !dbg !1684
  br i1 %373, label %375, label %374, !dbg !1688

; <label>:374:                                    ; preds = %369
  call void @decrRefCount(%struct.redisObject* nonnull %372) #6, !dbg !1689
  br label %375, !dbg !1689

; <label>:375:                                    ; preds = %369, %374
  %376 = add nuw i64 %370, 1, !dbg !1690
  %377 = icmp ult i64 %376, %41, !dbg !1691
  br i1 %377, label %369, label %378, !dbg !1682, !llvm.loop !1692

; <label>:378:                                    ; preds = %375, %35, %365
  %379 = phi i8* [ %368, %365 ], [ null, %35 ], [ %368, %375 ]
  %380 = phi i64 [ %367, %365 ], [ 0, %35 ], [ %367, %375 ]
  %381 = phi i1 [ %366, %365 ], [ false, %35 ], [ %366, %375 ]
  call void @zfree(i8* %43) #6, !dbg !1694
  call void @zfree(i8* %45) #6, !dbg !1695
  call void @zfree(i8* %47) #6, !dbg !1696
  br i1 %381, label %382, label %389, !dbg !1697

; <label>:382:                                    ; preds = %378
  %383 = call %struct.redisObject* @createObject(i32 0, i8* %379) #6, !dbg !1698
  %384 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1701
  %385 = load %struct.redisDb*, %struct.redisDb** %384, align 8, !dbg !1701, !tbaa !1101
  call void @setKey(%struct.redisDb* %385, %struct.redisObject* %10, %struct.redisObject* %383) #6, !dbg !1702
  %386 = load %struct.redisDb*, %struct.redisDb** %384, align 8, !dbg !1703, !tbaa !1101
  %387 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %386, i64 0, i32 5, !dbg !1704
  %388 = load i32, i32* %387, align 8, !dbg !1704, !tbaa !1264
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), %struct.redisObject* %10, i32 %388) #6, !dbg !1705
  call void @decrRefCount(%struct.redisObject* %383) #6, !dbg !1706
  br label %399, !dbg !1707

; <label>:389:                                    ; preds = %378
  %390 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1708
  %391 = load %struct.redisDb*, %struct.redisDb** %390, align 8, !dbg !1708, !tbaa !1101
  %392 = call i32 @dbDelete(%struct.redisDb* %391, %struct.redisObject* %10) #6, !dbg !1710
  %393 = icmp eq i32 %392, 0, !dbg !1710
  br i1 %393, label %399, label %394, !dbg !1711

; <label>:394:                                    ; preds = %389
  %395 = load %struct.redisDb*, %struct.redisDb** %390, align 8, !dbg !1712, !tbaa !1101
  call void @signalModifiedKey(%struct.redisDb* %395, %struct.redisObject* %10) #6, !dbg !1714
  %396 = load %struct.redisDb*, %struct.redisDb** %390, align 8, !dbg !1715, !tbaa !1101
  %397 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %396, i64 0, i32 5, !dbg !1716
  %398 = load i32, i32* %397, align 8, !dbg !1716, !tbaa !1264
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), %struct.redisObject* %10, i32 %398) #6, !dbg !1717
  br label %399, !dbg !1718

; <label>:399:                                    ; preds = %389, %394, %382
  %400 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1719, !tbaa !1268
  %401 = add nsw i64 %400, 1, !dbg !1719
  store i64 %401, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1719, !tbaa !1268
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %380) #6, !dbg !1720
  br label %402, !dbg !1721

; <label>:402:                                    ; preds = %399, %81, %34, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1721
  ret void, !dbg !1721
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyRead(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @getDecodedObject(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @setKey(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @dbDelete(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @bitcountCommand(%struct.client*) local_unnamed_addr #0 !dbg !1722 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [21 x i8], align 16
  %6 = bitcast i64* %2 to i8*, !dbg !1738
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8, !dbg !1738
  %7 = bitcast i64* %3 to i8*, !dbg !1738
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #8, !dbg !1738
  %8 = bitcast i64* %4 to i8*, !dbg !1738
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !1738
  %9 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0, !dbg !1739
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %9) #8, !dbg !1739
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1741
  %11 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1741, !tbaa !1106
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 1, !dbg !1743
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !1743, !tbaa !1108
  %14 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1744, !tbaa !1307
  %15 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %13, %struct.redisObject* %14) #6, !dbg !1745
  %16 = icmp eq %struct.redisObject* %15, null, !dbg !1747
  br i1 %16, label %86, label %17, !dbg !1748

; <label>:17:                                     ; preds = %1
  %18 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %15, i32 0) #6, !dbg !1749
  %19 = icmp eq i32 %18, 0, !dbg !1749
  br i1 %19, label %20, label %86, !dbg !1750

; <label>:20:                                     ; preds = %17
  %21 = call i8* @getObjectReadOnlyString(%struct.redisObject* nonnull %15, i64* nonnull %4, i8* nonnull %9) #9, !dbg !1752
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1754
  %23 = load i32, i32* %22, align 8, !dbg !1754, !tbaa !1432
  switch i32 %23, label %73 [
    i32 4, label %24
    i32 2, label %70
  ], !dbg !1756

; <label>:24:                                     ; preds = %20
  %25 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1757, !tbaa !1106
  %26 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %25, i64 2, !dbg !1760
  %27 = load %struct.redisObject*, %struct.redisObject** %26, align 8, !dbg !1760, !tbaa !1108
  %28 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %27, i64* nonnull %2, i8* null) #6, !dbg !1762
  %29 = icmp eq i32 %28, 0, !dbg !1763
  br i1 %29, label %30, label %86, !dbg !1764

; <label>:30:                                     ; preds = %24
  %31 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1765, !tbaa !1106
  %32 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %31, i64 3, !dbg !1767
  %33 = load %struct.redisObject*, %struct.redisObject** %32, align 8, !dbg !1767, !tbaa !1108
  %34 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %33, i64* nonnull %3, i8* null) #6, !dbg !1769
  %35 = icmp eq i32 %34, 0, !dbg !1770
  br i1 %35, label %36, label %86, !dbg !1771

; <label>:36:                                     ; preds = %30
  %37 = load i64, i64* %2, align 8, !dbg !1772, !tbaa !290
  %38 = load i64, i64* %3, align 8, !dbg !1774
  %39 = and i64 %38, %37, !dbg !1775
  %40 = icmp slt i64 %39, 0, !dbg !1775
  %41 = icmp sgt i64 %37, %38, !dbg !1776
  %42 = and i1 %41, %40, !dbg !1775
  br i1 %42, label %43, label %45, !dbg !1775

; <label>:43:                                     ; preds = %36
  %44 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1777, !tbaa !1307
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %44) #6, !dbg !1779
  br label %86, !dbg !1780

; <label>:45:                                     ; preds = %36
  %46 = icmp slt i64 %37, 0, !dbg !1781
  br i1 %46, label %47, label %50, !dbg !1783

; <label>:47:                                     ; preds = %45
  %48 = load i64, i64* %4, align 8, !dbg !1784, !tbaa !290
  %49 = add nsw i64 %48, %37, !dbg !1785
  store i64 %49, i64* %2, align 8, !dbg !1786, !tbaa !290
  br label %50, !dbg !1787

; <label>:50:                                     ; preds = %47, %45
  %51 = phi i64 [ %49, %47 ], [ %37, %45 ]
  %52 = icmp slt i64 %38, 0, !dbg !1788
  br i1 %52, label %53, label %56, !dbg !1790

; <label>:53:                                     ; preds = %50
  %54 = load i64, i64* %4, align 8, !dbg !1791, !tbaa !290
  %55 = add nsw i64 %54, %38, !dbg !1792
  store i64 %55, i64* %3, align 8, !dbg !1793, !tbaa !290
  br label %56, !dbg !1794

; <label>:56:                                     ; preds = %53, %50
  %57 = phi i64 [ %55, %53 ], [ %38, %50 ]
  %58 = icmp slt i64 %51, 0, !dbg !1795
  br i1 %58, label %59, label %60, !dbg !1797

; <label>:59:                                     ; preds = %56
  store i64 0, i64* %2, align 8, !dbg !1798, !tbaa !290
  br label %60, !dbg !1799

; <label>:60:                                     ; preds = %59, %56
  %61 = phi i64 [ 0, %59 ], [ %51, %56 ]
  %62 = icmp slt i64 %57, 0, !dbg !1800
  br i1 %62, label %63, label %64, !dbg !1802

; <label>:63:                                     ; preds = %60
  store i64 0, i64* %3, align 8, !dbg !1803, !tbaa !290
  br label %64, !dbg !1804

; <label>:64:                                     ; preds = %63, %60
  %65 = phi i64 [ 0, %63 ], [ %57, %60 ], !dbg !1805
  %66 = load i64, i64* %4, align 8, !dbg !1807, !tbaa !290
  %67 = icmp slt i64 %65, %66, !dbg !1808
  br i1 %67, label %75, label %68, !dbg !1809

; <label>:68:                                     ; preds = %64
  %69 = add nsw i64 %66, -1, !dbg !1810
  store i64 %69, i64* %3, align 8, !dbg !1811, !tbaa !290
  br label %75, !dbg !1812

; <label>:70:                                     ; preds = %20
  store i64 0, i64* %2, align 8, !dbg !1813, !tbaa !290
  %71 = load i64, i64* %4, align 8, !dbg !1816, !tbaa !290
  %72 = add nsw i64 %71, -1, !dbg !1817
  store i64 %72, i64* %3, align 8, !dbg !1818, !tbaa !290
  br label %75

; <label>:73:                                     ; preds = %20
  %74 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1819, !tbaa !1426
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %74) #6, !dbg !1821
  br label %86, !dbg !1822

; <label>:75:                                     ; preds = %64, %68, %70
  %76 = phi i64 [ %65, %64 ], [ %69, %68 ], [ %72, %70 ], !dbg !1823
  %77 = phi i64 [ %61, %64 ], [ %61, %68 ], [ 0, %70 ], !dbg !1824
  %78 = icmp slt i64 %76, %77, !dbg !1825
  br i1 %78, label %79, label %81, !dbg !1826

; <label>:79:                                     ; preds = %75
  %80 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1827, !tbaa !1307
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %80) #6, !dbg !1829
  br label %86, !dbg !1830

; <label>:81:                                     ; preds = %75
  %82 = sub i64 1, %77, !dbg !1831
  %83 = add i64 %82, %76, !dbg !1832
  %84 = getelementptr inbounds i8, i8* %21, i64 %77, !dbg !1834
  %85 = call i64 @redisPopcount(i8* %84, i64 %83) #9, !dbg !1835
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %85) #6, !dbg !1836
  br label %86

; <label>:86:                                     ; preds = %79, %81, %30, %24, %1, %17, %73, %43
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %9) #8, !dbg !1837
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !1837
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8, !dbg !1837
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8, !dbg !1837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1837
  ret void, !dbg !1837
}

; Function Attrs: noredzone nounwind
define dso_local void @bitposCommand(%struct.client*) local_unnamed_addr #0 !dbg !1838 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [21 x i8], align 16
  %7 = bitcast i64* %2 to i8*, !dbg !1854
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #8, !dbg !1854
  %8 = bitcast i64* %3 to i8*, !dbg !1854
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !1854
  %9 = bitcast i64* %4 to i8*, !dbg !1854
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #8, !dbg !1854
  %10 = bitcast i64* %5 to i8*, !dbg !1854
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #8, !dbg !1854
  %11 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 0, !dbg !1855
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %11) #8, !dbg !1855
  %12 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1858
  %13 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !1858, !tbaa !1106
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 2, !dbg !1860
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !1860, !tbaa !1108
  %16 = call i32 @getLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %15, i64* nonnull %2, i8* null) #6, !dbg !1862
  %17 = icmp eq i32 %16, 0, !dbg !1863
  br i1 %17, label %18, label %121, !dbg !1864

; <label>:18:                                     ; preds = %1
  %19 = load i64, i64* %2, align 8, !dbg !1865, !tbaa !290
  %20 = icmp ugt i64 %19, 1, !dbg !1867
  br i1 %20, label %21, label %22, !dbg !1867

; <label>:21:                                     ; preds = %18
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !1868
  br label %121, !dbg !1870

; <label>:22:                                     ; preds = %18
  %23 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1871
  %24 = load %struct.redisDb*, %struct.redisDb** %23, align 8, !dbg !1871, !tbaa !1101
  %25 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !1873, !tbaa !1106
  %26 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %25, i64 1, !dbg !1874
  %27 = load %struct.redisObject*, %struct.redisObject** %26, align 8, !dbg !1874, !tbaa !1108
  %28 = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %24, %struct.redisObject* %27) #6, !dbg !1875
  %29 = icmp eq %struct.redisObject* %28, null, !dbg !1877
  br i1 %29, label %30, label %34, !dbg !1878

; <label>:30:                                     ; preds = %22
  %31 = load i64, i64* %2, align 8, !dbg !1879, !tbaa !290
  %32 = icmp ne i64 %31, 0, !dbg !1879
  %33 = sext i1 %32 to i64, !dbg !1879
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %33) #6, !dbg !1881
  br label %121, !dbg !1882

; <label>:34:                                     ; preds = %22
  %35 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %28, i32 0) #6, !dbg !1883
  %36 = icmp eq i32 %35, 0, !dbg !1883
  br i1 %36, label %37, label %121, !dbg !1885

; <label>:37:                                     ; preds = %34
  %38 = call i8* @getObjectReadOnlyString(%struct.redisObject* nonnull %28, i64* nonnull %5, i8* nonnull %11) #9, !dbg !1887
  %39 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1889
  %40 = load i32, i32* %39, align 8, !dbg !1889, !tbaa !1432
  switch i32 %40, label %90 [
    i32 4, label %41
    i32 5, label %41
    i32 3, label %87
  ], !dbg !1891

; <label>:41:                                     ; preds = %37, %37
  %42 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !1892, !tbaa !1106
  %43 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %42, i64 3, !dbg !1895
  %44 = load %struct.redisObject*, %struct.redisObject** %43, align 8, !dbg !1895, !tbaa !1108
  %45 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %44, i64* nonnull %3, i8* null) #6, !dbg !1897
  %46 = icmp eq i32 %45, 0, !dbg !1898
  br i1 %46, label %47, label %121, !dbg !1899

; <label>:47:                                     ; preds = %41
  %48 = load i32, i32* %39, align 8, !dbg !1900, !tbaa !1432
  %49 = icmp eq i32 %48, 5, !dbg !1902
  br i1 %49, label %50, label %56, !dbg !1903

; <label>:50:                                     ; preds = %47
  %51 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !1904, !tbaa !1106
  %52 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %51, i64 4, !dbg !1907
  %53 = load %struct.redisObject*, %struct.redisObject** %52, align 8, !dbg !1907, !tbaa !1108
  %54 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %53, i64* nonnull %4, i8* null) #6, !dbg !1909
  %55 = icmp eq i32 %54, 0, !dbg !1910
  br i1 %55, label %59, label %121, !dbg !1911

; <label>:56:                                     ; preds = %47
  %57 = load i64, i64* %5, align 8, !dbg !1912, !tbaa !290
  %58 = add nsw i64 %57, -1, !dbg !1914
  store i64 %58, i64* %4, align 8, !dbg !1915, !tbaa !290
  br label %59

; <label>:59:                                     ; preds = %50, %56
  %60 = phi i32 [ 0, %56 ], [ 1, %50 ], !dbg !1916
  %61 = load i64, i64* %3, align 8, !dbg !1917, !tbaa !290
  %62 = icmp slt i64 %61, 0, !dbg !1919
  br i1 %62, label %63, label %66, !dbg !1920

; <label>:63:                                     ; preds = %59
  %64 = load i64, i64* %5, align 8, !dbg !1921, !tbaa !290
  %65 = add nsw i64 %64, %61, !dbg !1922
  store i64 %65, i64* %3, align 8, !dbg !1923, !tbaa !290
  br label %66, !dbg !1924

; <label>:66:                                     ; preds = %63, %59
  %67 = phi i64 [ %65, %63 ], [ %61, %59 ]
  %68 = load i64, i64* %4, align 8, !dbg !1925, !tbaa !290
  %69 = icmp slt i64 %68, 0, !dbg !1927
  br i1 %69, label %70, label %73, !dbg !1928

; <label>:70:                                     ; preds = %66
  %71 = load i64, i64* %5, align 8, !dbg !1929, !tbaa !290
  %72 = add nsw i64 %71, %68, !dbg !1930
  store i64 %72, i64* %4, align 8, !dbg !1931, !tbaa !290
  br label %73, !dbg !1932

; <label>:73:                                     ; preds = %70, %66
  %74 = phi i64 [ %72, %70 ], [ %68, %66 ]
  %75 = icmp slt i64 %67, 0, !dbg !1933
  br i1 %75, label %76, label %77, !dbg !1935

; <label>:76:                                     ; preds = %73
  store i64 0, i64* %3, align 8, !dbg !1936, !tbaa !290
  br label %77, !dbg !1937

; <label>:77:                                     ; preds = %76, %73
  %78 = phi i64 [ 0, %76 ], [ %67, %73 ]
  %79 = icmp slt i64 %74, 0, !dbg !1938
  br i1 %79, label %80, label %81, !dbg !1940

; <label>:80:                                     ; preds = %77
  store i64 0, i64* %4, align 8, !dbg !1941, !tbaa !290
  br label %81, !dbg !1942

; <label>:81:                                     ; preds = %80, %77
  %82 = phi i64 [ 0, %80 ], [ %74, %77 ], !dbg !1943
  %83 = load i64, i64* %5, align 8, !dbg !1945, !tbaa !290
  %84 = icmp slt i64 %82, %83, !dbg !1946
  br i1 %84, label %92, label %85, !dbg !1947

; <label>:85:                                     ; preds = %81
  %86 = add nsw i64 %83, -1, !dbg !1948
  store i64 %86, i64* %4, align 8, !dbg !1949, !tbaa !290
  br label %92, !dbg !1950

; <label>:87:                                     ; preds = %37
  store i64 0, i64* %3, align 8, !dbg !1951, !tbaa !290
  %88 = load i64, i64* %5, align 8, !dbg !1954, !tbaa !290
  %89 = add nsw i64 %88, -1, !dbg !1955
  store i64 %89, i64* %4, align 8, !dbg !1956, !tbaa !290
  br label %92

; <label>:90:                                     ; preds = %37
  %91 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1957, !tbaa !1426
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %91) #6, !dbg !1959
  br label %121, !dbg !1960

; <label>:92:                                     ; preds = %81, %85, %87
  %93 = phi i64 [ %86, %85 ], [ %82, %81 ], [ %89, %87 ], !dbg !1961
  %94 = phi i64 [ %78, %85 ], [ %78, %81 ], [ 0, %87 ], !dbg !1962
  %95 = phi i32 [ %60, %85 ], [ %60, %81 ], [ 0, %87 ], !dbg !1916
  %96 = icmp slt i64 %93, %94, !dbg !1963
  br i1 %96, label %97, label %98, !dbg !1964

; <label>:97:                                     ; preds = %92
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 -1) #6, !dbg !1965
  br label %121, !dbg !1967

; <label>:98:                                     ; preds = %92
  %99 = sub nsw i64 %93, %94, !dbg !1968
  %100 = add nsw i64 %99, 1, !dbg !1969
  %101 = getelementptr inbounds i8, i8* %38, i64 %94, !dbg !1971
  %102 = load i64, i64* %2, align 8, !dbg !1972, !tbaa !290
  %103 = trunc i64 %102 to i32, !dbg !1972
  %104 = call i64 @redisBitpos(i8* %101, i64 %100, i32 %103) #9, !dbg !1973
  %105 = icmp ne i32 %95, 0, !dbg !1975
  %106 = load i64, i64* %2, align 8, !dbg !1977
  %107 = icmp eq i64 %106, 0, !dbg !1978
  %108 = and i1 %105, %107, !dbg !1979
  %109 = shl nsw i64 %100, 3, !dbg !1980
  %110 = icmp eq i64 %104, %109, !dbg !1981
  %111 = and i1 %110, %108, !dbg !1979
  br i1 %111, label %112, label %113, !dbg !1979

; <label>:112:                                    ; preds = %98
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 -1) #6, !dbg !1982
  br label %121

; <label>:113:                                    ; preds = %98
  %114 = icmp eq i64 %104, -1, !dbg !1984
  br i1 %114, label %119, label %115, !dbg !1986

; <label>:115:                                    ; preds = %113
  %116 = load i64, i64* %3, align 8, !dbg !1987, !tbaa !290
  %117 = shl i64 %116, 3, !dbg !1988
  %118 = add nsw i64 %117, %104, !dbg !1989
  br label %119, !dbg !1990

; <label>:119:                                    ; preds = %113, %115
  %120 = phi i64 [ %118, %115 ], [ -1, %113 ], !dbg !1991
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %120) #6, !dbg !1992
  br label %121

; <label>:121:                                    ; preds = %97, %119, %112, %50, %41, %34, %1, %90, %30, %21
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %11) #8, !dbg !1993
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #8, !dbg !1993
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #8, !dbg !1993
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !1993
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8, !dbg !1993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1993
  ret void, !dbg !1993
}

; Function Attrs: noredzone nounwind
define dso_local void @bitfieldCommand(%struct.client*) local_unnamed_addr #0 !dbg !1994 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [9 x i8], align 1
  %6 = alloca i64, align 8
  %7 = alloca [21 x i8], align 16
  %8 = bitcast i64* %3 to i8*, !dbg !2065
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !2065
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2073
  %10 = load i32, i32* %9, align 8, !dbg !2073, !tbaa !1432
  %11 = icmp sgt i32 %10, 2, !dbg !2074
  br i1 %11, label %12, label %176, !dbg !2075

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %14 = bitcast i64* %4 to i8*
  %15 = bitcast i64* %2 to i8*
  br label %16, !dbg !2075

; <label>:16:                                     ; preds = %12, %155
  %17 = phi i32 [ %10, %12 ], [ %156, %155 ]
  %18 = phi i32 [ 2, %12 ], [ %172, %155 ]
  %19 = phi i32 [ 0, %12 ], [ %170, %155 ]
  %20 = phi %struct.bitfieldOp* [ null, %12 ], [ %169, %155 ]
  %21 = phi i8* [ null, %12 ], [ %168, %155 ]
  %22 = phi i8* [ null, %12 ], [ %167, %155 ]
  %23 = phi i8* [ null, %12 ], [ %166, %155 ]
  %24 = phi i8* [ null, %12 ], [ %165, %155 ]
  %25 = phi i8* [ null, %12 ], [ %164, %155 ]
  %26 = phi i8* [ null, %12 ], [ %163, %155 ]
  %27 = phi i8* [ null, %12 ], [ %162, %155 ]
  %28 = phi i8* [ null, %12 ], [ %161, %155 ]
  %29 = phi i8* [ null, %12 ], [ %160, %155 ]
  %30 = phi i32 [ 0, %12 ], [ %159, %155 ]
  %31 = phi i32 [ 1, %12 ], [ %158, %155 ]
  %32 = phi i64 [ 0, %12 ], [ %157, %155 ]
  %33 = xor i32 %18, -1, !dbg !2076
  %34 = add i32 %17, %33, !dbg !2076
  %35 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2078, !tbaa !1106
  %36 = sext i32 %18 to i64, !dbg !2079
  %37 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %35, i64 %36, !dbg !2079
  %38 = load %struct.redisObject*, %struct.redisObject** %37, align 8, !dbg !2079, !tbaa !1108
  %39 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %38, i64 0, i32 2, !dbg !2080
  %40 = load i8*, i8** %39, align 8, !dbg !2080, !tbaa !964
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #8, !dbg !2082
  store i64 0, i64* %4, align 8, !dbg !2083, !tbaa !1023
  %41 = call i32 @strcasecmp(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0)) #10, !dbg !2086
  %42 = icmp eq i32 %41, 0, !dbg !2086
  %43 = icmp sgt i32 %34, 1, !dbg !2087
  %44 = and i1 %43, %42, !dbg !2088
  br i1 %44, label %77, label %45, !dbg !2088

; <label>:45:                                     ; preds = %16
  %46 = call i32 @strcasecmp(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)) #10, !dbg !2089
  %47 = icmp eq i32 %46, 0, !dbg !2089
  %48 = icmp sgt i32 %34, 2, !dbg !2090
  %49 = and i1 %48, %47, !dbg !2091
  br i1 %49, label %77, label %50, !dbg !2091

; <label>:50:                                     ; preds = %45
  %51 = call i32 @strcasecmp(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0)) #10, !dbg !2092
  %52 = icmp eq i32 %51, 0, !dbg !2092
  %53 = and i1 %48, %52, !dbg !2093
  br i1 %53, label %77, label %54, !dbg !2093

; <label>:54:                                     ; preds = %50
  %55 = call i32 @strcasecmp(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0)) #10, !dbg !2094
  %56 = icmp eq i32 %55, 0, !dbg !2094
  %57 = icmp sgt i32 %34, 0, !dbg !2095
  %58 = and i1 %57, %56, !dbg !2096
  br i1 %58, label %59, label %75, !dbg !2096

; <label>:59:                                     ; preds = %54
  %60 = add nsw i32 %18, 1, !dbg !2097
  %61 = sext i32 %60 to i64, !dbg !2098
  %62 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %35, i64 %61, !dbg !2098
  %63 = load %struct.redisObject*, %struct.redisObject** %62, align 8, !dbg !2098, !tbaa !1108
  %64 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %63, i64 0, i32 2, !dbg !2099
  %65 = load i8*, i8** %64, align 8, !dbg !2099, !tbaa !964
  %66 = call i32 @strcasecmp(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !2101
  %67 = icmp eq i32 %66, 0, !dbg !2101
  br i1 %67, label %155, label %68, !dbg !2103

; <label>:68:                                     ; preds = %59
  %69 = call i32 @strcasecmp(i8* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #10, !dbg !2104
  %70 = icmp eq i32 %69, 0, !dbg !2104
  br i1 %70, label %155, label %71, !dbg !2106

; <label>:71:                                     ; preds = %68
  %72 = call i32 @strcasecmp(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)) #10, !dbg !2107
  %73 = icmp eq i32 %72, 0, !dbg !2107
  br i1 %73, label %155, label %74, !dbg !2109

; <label>:74:                                     ; preds = %71
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0)) #6, !dbg !2110
  call void @zfree(i8* %25) #6, !dbg !2112
  br label %154, !dbg !2113

; <label>:75:                                     ; preds = %54
  %76 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !2114, !tbaa !1426
  call void @addReply(%struct.client* %0, %struct.redisObject* %76) #6, !dbg !2116
  call void @zfree(i8* %26) #6, !dbg !2117
  br label %154, !dbg !2118

; <label>:77:                                     ; preds = %50, %45, %16
  %78 = phi i32 [ 0, %16 ], [ 1, %45 ], [ 2, %50 ], !dbg !2119
  %79 = add nsw i32 %18, 1, !dbg !2121
  %80 = sext i32 %79 to i64, !dbg !2123
  %81 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %35, i64 %80, !dbg !2123
  %82 = load %struct.redisObject*, %struct.redisObject** %81, align 8, !dbg !2123, !tbaa !1108
  %83 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %82, i64 0, i32 2, !dbg !2127
  %84 = load i8*, i8** %83, align 8, !dbg !2127, !tbaa !964
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #8, !dbg !2129
  %85 = load i8, i8* %84, align 1, !dbg !2130, !tbaa !103
  switch i8 %85, label %87 [
    i8 105, label %88
    i8 117, label %86
  ], !dbg !2131

; <label>:86:                                     ; preds = %77
  br label %88

; <label>:87:                                     ; preds = %77
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2132
  br label %106, !dbg !2133

; <label>:88:                                     ; preds = %86, %77
  %89 = phi i32 [ 0, %86 ], [ 1, %77 ]
  %90 = getelementptr inbounds i8, i8* %84, i64 1, !dbg !2134
  %91 = call i64 @strlen(i8* nonnull %90) #6, !dbg !2135
  %92 = call i32 @string2ll(i8* nonnull %90, i64 %91, i64* nonnull %2) #6, !dbg !2137
  %93 = icmp eq i32 %92, 0, !dbg !2138
  %94 = load i64, i64* %2, align 8, !dbg !2139
  %95 = icmp slt i64 %94, 1, !dbg !2140
  %96 = or i1 %93, %95, !dbg !2141
  br i1 %96, label %105, label %97, !dbg !2141

; <label>:97:                                     ; preds = %88
  %98 = icmp eq i32 %89, 1, !dbg !2142
  %99 = icmp sgt i64 %94, 64, !dbg !2143
  %100 = and i1 %98, %99, !dbg !2144
  br i1 %100, label %105, label %101, !dbg !2144

; <label>:101:                                    ; preds = %97
  %102 = icmp eq i32 %89, 0, !dbg !2145
  %103 = icmp sgt i64 %94, 63, !dbg !2146
  %104 = and i1 %102, %103, !dbg !2147
  br i1 %104, label %105, label %107, !dbg !2147

; <label>:105:                                    ; preds = %101, %97, %88
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2148
  br label %106, !dbg !2149

; <label>:106:                                    ; preds = %105, %87
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #8, !dbg !2150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2150
  call void @zfree(i8* %21) #6, !dbg !2151
  br label %154, !dbg !2153

; <label>:107:                                    ; preds = %101
  %108 = trunc i64 %94 to i32, !dbg !2154
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #8, !dbg !2150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2150
  %109 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2155, !tbaa !1106
  %110 = add nsw i32 %18, 2, !dbg !2157
  %111 = sext i32 %110 to i64, !dbg !2158
  %112 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %109, i64 %111, !dbg !2158
  %113 = load %struct.redisObject*, %struct.redisObject** %112, align 8, !dbg !2158, !tbaa !1108
  %114 = call i32 @getBitOffsetFromArgument(%struct.client* nonnull %0, %struct.redisObject* %113, i64* nonnull %3, i32 1, i32 %108) #9, !dbg !2160
  %115 = icmp eq i32 %114, 0, !dbg !2161
  br i1 %115, label %117, label %116, !dbg !2162

; <label>:116:                                    ; preds = %107
  call void @zfree(i8* %22) #6, !dbg !2163
  br label %154, !dbg !2165

; <label>:117:                                    ; preds = %107
  %118 = icmp eq i32 %78, 0, !dbg !2166
  %119 = load i64, i64* %3, align 8, !dbg !2168, !tbaa !290
  br i1 %118, label %135, label %120, !dbg !2171

; <label>:120:                                    ; preds = %117
  %121 = shl i64 %94, 32, !dbg !2172
  %122 = ashr exact i64 %121, 32, !dbg !2172
  %123 = add nsw i64 %122, -1, !dbg !2173
  %124 = add i64 %123, %119, !dbg !2174
  %125 = icmp ult i64 %32, %124, !dbg !2175
  %126 = select i1 %125, i64 %124, i64 %32, !dbg !2176
  %127 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2177, !tbaa !1106
  %128 = add nsw i32 %18, 3, !dbg !2179
  %129 = sext i32 %128 to i64, !dbg !2180
  %130 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %127, i64 %129, !dbg !2180
  %131 = load %struct.redisObject*, %struct.redisObject** %130, align 8, !dbg !2180, !tbaa !1108
  %132 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %131, i64* nonnull %4, i8* null) #6, !dbg !2181
  %133 = icmp eq i32 %132, 0, !dbg !2182
  br i1 %133, label %135, label %134, !dbg !2183

; <label>:134:                                    ; preds = %120
  call void @zfree(i8* %23) #6, !dbg !2184
  br label %154, !dbg !2186

; <label>:135:                                    ; preds = %117, %120
  %136 = phi i64 [ %126, %120 ], [ %32, %117 ], !dbg !2187
  %137 = phi i32 [ 0, %120 ], [ %31, %117 ], !dbg !2187
  %138 = add nsw i32 %19, 1, !dbg !2188
  %139 = sext i32 %138 to i64, !dbg !2189
  %140 = shl nsw i64 %139, 5, !dbg !2190
  %141 = call i8* @zrealloc(i8* %24, i64 %140) #6, !dbg !2191
  %142 = bitcast i8* %141 to %struct.bitfieldOp*, !dbg !2191
  %143 = sext i32 %19 to i64, !dbg !2192
  %144 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %142, i64 %143, i32 0, !dbg !2193
  store i64 %119, i64* %144, align 8, !dbg !2194, !tbaa !2195
  %145 = load i64, i64* %4, align 8, !dbg !2197, !tbaa !1023
  %146 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %142, i64 %143, i32 1, !dbg !2198
  store i64 %145, i64* %146, align 8, !dbg !2199, !tbaa !2200
  %147 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %142, i64 %143, i32 2, !dbg !2201
  store i32 %78, i32* %147, align 8, !dbg !2202, !tbaa !2203
  %148 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %142, i64 %143, i32 3, !dbg !2204
  store i32 %30, i32* %148, align 4, !dbg !2205, !tbaa !2206
  %149 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %142, i64 %143, i32 4, !dbg !2207
  store i32 %108, i32* %149, align 8, !dbg !2208, !tbaa !2209
  %150 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %142, i64 %143, i32 5, !dbg !2210
  store i32 %89, i32* %150, align 4, !dbg !2211, !tbaa !2212
  %151 = select i1 %118, i32 2, i32 3, !dbg !2213
  %152 = add nsw i32 %151, %18, !dbg !2214
  %153 = load i32, i32* %9, align 8, !dbg !2073, !tbaa !1432
  br label %155, !dbg !2215

; <label>:154:                                    ; preds = %106, %116, %134, %75, %74
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #8, !dbg !2215
  br label %725

; <label>:155:                                    ; preds = %135, %59, %68, %71
  %156 = phi i32 [ %153, %135 ], [ %17, %59 ], [ %17, %68 ], [ %17, %71 ], !dbg !2073
  %157 = phi i64 [ %136, %135 ], [ %32, %59 ], [ %32, %68 ], [ %32, %71 ], !dbg !2187
  %158 = phi i32 [ %137, %135 ], [ %31, %59 ], [ %31, %68 ], [ %31, %71 ], !dbg !2187
  %159 = phi i32 [ %30, %135 ], [ 0, %59 ], [ 1, %68 ], [ 2, %71 ], !dbg !2069
  %160 = phi i8* [ %141, %135 ], [ %29, %59 ], [ %29, %68 ], [ %29, %71 ], !dbg !2187
  %161 = phi i8* [ %141, %135 ], [ %28, %59 ], [ %28, %68 ], [ %28, %71 ], !dbg !2187
  %162 = phi i8* [ %141, %135 ], [ %27, %59 ], [ %27, %68 ], [ %27, %71 ], !dbg !2187
  %163 = phi i8* [ %141, %135 ], [ %26, %59 ], [ %26, %68 ], [ %26, %71 ], !dbg !2187
  %164 = phi i8* [ %141, %135 ], [ %25, %59 ], [ %25, %68 ], [ %25, %71 ], !dbg !2187
  %165 = phi i8* [ %141, %135 ], [ %24, %59 ], [ %24, %68 ], [ %24, %71 ], !dbg !2187
  %166 = phi i8* [ %141, %135 ], [ %23, %59 ], [ %23, %68 ], [ %23, %71 ], !dbg !2187
  %167 = phi i8* [ %141, %135 ], [ %22, %59 ], [ %22, %68 ], [ %22, %71 ], !dbg !2187
  %168 = phi i8* [ %141, %135 ], [ %21, %59 ], [ %21, %68 ], [ %21, %71 ], !dbg !2187
  %169 = phi %struct.bitfieldOp* [ %142, %135 ], [ %20, %59 ], [ %20, %68 ], [ %20, %71 ], !dbg !2187
  %170 = phi i32 [ %138, %135 ], [ %19, %59 ], [ %19, %68 ], [ %19, %71 ], !dbg !2187
  %171 = phi i32 [ %152, %135 ], [ %60, %59 ], [ %60, %68 ], [ %60, %71 ], !dbg !2216
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #8, !dbg !2215
  %172 = add nsw i32 %171, 1, !dbg !2217
  %173 = icmp sgt i32 %156, %172, !dbg !2074
  br i1 %173, label %16, label %174, !dbg !2075, !llvm.loop !2218

; <label>:174:                                    ; preds = %155
  %175 = icmp eq i32 %158, 0, !dbg !2220
  br i1 %175, label %193, label %176, !dbg !2222

; <label>:176:                                    ; preds = %1, %174
  %177 = phi i32 [ %170, %174 ], [ 0, %1 ]
  %178 = phi %struct.bitfieldOp* [ %169, %174 ], [ null, %1 ]
  %179 = phi i8* [ %162, %174 ], [ null, %1 ]
  %180 = phi i8* [ %160, %174 ], [ null, %1 ]
  %181 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2223
  %182 = load %struct.redisDb*, %struct.redisDb** %181, align 8, !dbg !2223, !tbaa !1101
  %183 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2225
  %184 = load %struct.redisObject**, %struct.redisObject*** %183, align 8, !dbg !2225, !tbaa !1106
  %185 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %184, i64 1, !dbg !2226
  %186 = load %struct.redisObject*, %struct.redisObject** %185, align 8, !dbg !2226, !tbaa !1108
  %187 = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %182, %struct.redisObject* %186) #6, !dbg !2227
  %188 = icmp eq %struct.redisObject* %187, null, !dbg !2229
  br i1 %188, label %197, label %189, !dbg !2231

; <label>:189:                                    ; preds = %176
  %190 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %187, i32 0) #6, !dbg !2232
  %191 = icmp eq i32 %190, 0, !dbg !2232
  br i1 %191, label %197, label %192, !dbg !2233

; <label>:192:                                    ; preds = %189
  call void @zfree(i8* %179) #6, !dbg !2234
  br label %725, !dbg !2236

; <label>:193:                                    ; preds = %174
  %194 = call %struct.redisObject* @lookupStringForBitCommand(%struct.client* nonnull %0, i64 %157) #9, !dbg !2237
  %195 = icmp eq %struct.redisObject* %194, null, !dbg !2240
  br i1 %195, label %196, label %197, !dbg !2241

; <label>:196:                                    ; preds = %193
  call void @zfree(i8* %161) #6, !dbg !2242
  br label %725, !dbg !2244

; <label>:197:                                    ; preds = %189, %176, %193
  %198 = phi i32 [ %177, %189 ], [ %177, %176 ], [ %170, %193 ]
  %199 = phi %struct.bitfieldOp* [ %178, %189 ], [ %178, %176 ], [ %169, %193 ]
  %200 = phi i8* [ %180, %189 ], [ %180, %176 ], [ %160, %193 ]
  %201 = phi %struct.redisObject* [ %187, %189 ], [ null, %176 ], [ %194, %193 ], !dbg !2245
  %202 = sext i32 %198 to i64, !dbg !2246
  call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %202) #6, !dbg !2247
  %203 = icmp sgt i32 %198, 0, !dbg !2248
  br i1 %203, label %204, label %724, !dbg !2249

; <label>:204:                                    ; preds = %197
  %205 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %201, i64 0, i32 2
  %206 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %207 = bitcast i64* %6 to i8*
  %208 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0
  %209 = icmp eq %struct.redisObject* %201, null
  %210 = zext i32 %198 to i64
  %211 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %212 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 1
  %213 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 2
  %214 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 3
  %215 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 4
  %216 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 5
  %217 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 6
  %218 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 7
  %219 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 8
  br label %220, !dbg !2249

; <label>:220:                                    ; preds = %700, %204
  %221 = phi i64 [ 0, %204 ], [ %704, %700 ]
  %222 = phi i32 [ 0, %204 ], [ %703, %700 ]
  %223 = phi i64 [ undef, %204 ], [ %702, %700 ]
  %224 = phi i64 [ undef, %204 ], [ %701, %700 ]
  %225 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %199, i64 %221, !dbg !2250
  %226 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %199, i64 %221, i32 2, !dbg !2252
  %227 = load i32, i32* %226, align 8, !dbg !2252, !tbaa !2203
  %228 = add i32 %227, -1, !dbg !2253
  %229 = icmp ult i32 %228, 2, !dbg !2253
  br i1 %229, label %230, label %557, !dbg !2253

; <label>:230:                                    ; preds = %220
  %231 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %199, i64 %221, i32 5, !dbg !2254
  %232 = load i32, i32* %231, align 4, !dbg !2254, !tbaa !2212
  %233 = icmp eq i32 %232, 0, !dbg !2255
  %234 = load i8*, i8** %205, align 8, !dbg !2256, !tbaa !964
  %235 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %225, i64 0, i32 0, !dbg !2256
  %236 = load i64, i64* %235, align 8, !dbg !2256, !tbaa !2195
  %237 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %199, i64 %221, i32 4, !dbg !2256
  %238 = load i32, i32* %237, align 8, !dbg !2256, !tbaa !2209
  %239 = sext i32 %238 to i64, !dbg !2256
  %240 = icmp eq i32 %238, 0, !dbg !2257
  br i1 %233, label %414, label %241, !dbg !2259

; <label>:241:                                    ; preds = %230
  br i1 %240, label %291, label %242, !dbg !2270

; <label>:242:                                    ; preds = %241
  %243 = and i64 %239, 1, !dbg !2271
  %244 = icmp eq i32 %238, 1, !dbg !2271
  br i1 %244, label %275, label %245, !dbg !2271

; <label>:245:                                    ; preds = %242
  %246 = sub nsw i64 %239, %243, !dbg !2271
  br label %247, !dbg !2271

; <label>:247:                                    ; preds = %247, %245
  %248 = phi i64 [ 0, %245 ], [ %271, %247 ]
  %249 = phi i64 [ %236, %245 ], [ %272, %247 ]
  %250 = phi i64 [ %246, %245 ], [ %273, %247 ]
  %251 = lshr i64 %249, 3, !dbg !2271
  %252 = and i64 %249, 7, !dbg !2273
  %253 = xor i64 %252, 7, !dbg !2274
  %254 = getelementptr inbounds i8, i8* %234, i64 %251, !dbg !2276
  %255 = load i8, i8* %254, align 1, !dbg !2276, !tbaa !103
  %256 = zext i8 %255 to i64, !dbg !2276
  %257 = lshr i64 %256, %253, !dbg !2278
  %258 = and i64 %257, 1, !dbg !2279
  %259 = shl i64 %248, 1, !dbg !2281
  %260 = or i64 %258, %259, !dbg !2282
  %261 = add i64 %249, 1, !dbg !2283
  %262 = lshr i64 %261, 3, !dbg !2271
  %263 = and i64 %261, 7, !dbg !2273
  %264 = xor i64 %263, 7, !dbg !2274
  %265 = getelementptr inbounds i8, i8* %234, i64 %262, !dbg !2276
  %266 = load i8, i8* %265, align 1, !dbg !2276, !tbaa !103
  %267 = zext i8 %266 to i64, !dbg !2276
  %268 = lshr i64 %267, %264, !dbg !2278
  %269 = and i64 %268, 1, !dbg !2279
  %270 = shl i64 %260, 1, !dbg !2281
  %271 = or i64 %269, %270, !dbg !2282
  %272 = add i64 %249, 2, !dbg !2283
  %273 = add i64 %250, -2, !dbg !2270
  %274 = icmp eq i64 %273, 0, !dbg !2270
  br i1 %274, label %275, label %247, !dbg !2270, !llvm.loop !465

; <label>:275:                                    ; preds = %247, %242
  %276 = phi i64 [ undef, %242 ], [ %271, %247 ]
  %277 = phi i64 [ 0, %242 ], [ %271, %247 ]
  %278 = phi i64 [ %236, %242 ], [ %272, %247 ]
  %279 = icmp eq i64 %243, 0, !dbg !2270
  br i1 %279, label %291, label %280, !dbg !2270

; <label>:280:                                    ; preds = %275
  %281 = lshr i64 %278, 3, !dbg !2271
  %282 = getelementptr inbounds i8, i8* %234, i64 %281, !dbg !2276
  %283 = load i8, i8* %282, align 1, !dbg !2276, !tbaa !103
  %284 = zext i8 %283 to i64, !dbg !2276
  %285 = and i64 %278, 7, !dbg !2273
  %286 = xor i64 %285, 7, !dbg !2274
  %287 = lshr i64 %284, %286, !dbg !2278
  %288 = and i64 %287, 1, !dbg !2279
  %289 = shl i64 %277, 1, !dbg !2281
  %290 = or i64 %288, %289, !dbg !2282
  br label %291, !dbg !2284

; <label>:291:                                    ; preds = %280, %275, %241
  %292 = phi i64 [ 0, %241 ], [ %276, %275 ], [ %290, %280 ], !dbg !2285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2284
  %293 = add nsw i64 %239, -1, !dbg !2288
  %294 = shl i64 1, %293, !dbg !2289
  %295 = and i64 %292, %294, !dbg !2290
  %296 = icmp eq i64 %295, 0, !dbg !2290
  %297 = shl i64 -1, %239, !dbg !2291
  %298 = select i1 %296, i64 0, i64 %297, !dbg !2292
  %299 = or i64 %298, %292, !dbg !2292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2293
  %300 = icmp eq i32 %227, 2, !dbg !2295
  %301 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %199, i64 %221, i32 1, !dbg !2297
  %302 = load i64, i64* %301, align 8, !dbg !2297, !tbaa !2200
  br i1 %300, label %303, label %346, !dbg !2299

; <label>:303:                                    ; preds = %291
  %304 = add i64 %299, %302, !dbg !2300
  %305 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %199, i64 %221, i32 3, !dbg !2303
  %306 = load i32, i32* %305, align 4, !dbg !2303, !tbaa !2206
  %307 = icmp eq i32 %238, 64, !dbg !2309
  br i1 %307, label %315, label %308, !dbg !2310

; <label>:308:                                    ; preds = %303
  %309 = shl nsw i64 -1, %293, !dbg !2311
  %310 = xor i64 %309, -1, !dbg !2311
  %311 = icmp sgt i64 %299, %310, !dbg !2314
  %312 = sub nsw i64 %310, %299, !dbg !2315
  %313 = icmp slt i64 %312, %302, !dbg !2316
  %314 = or i1 %311, %313, !dbg !2317
  br i1 %314, label %322, label %325, !dbg !2317

; <label>:315:                                    ; preds = %303
  %316 = sub nsw i64 9223372036854775807, %299, !dbg !2315
  %317 = icmp slt i64 %316, %302, !dbg !2316
  %318 = icmp sgt i64 %299, -1, !dbg !2318
  %319 = icmp sgt i64 %302, 0, !dbg !2319
  %320 = and i1 %318, %319, !dbg !2320
  %321 = and i1 %320, %317, !dbg !2320
  br i1 %321, label %322, label %325, !dbg !2320

; <label>:322:                                    ; preds = %315, %308
  %323 = phi i64 [ 9223372036854775807, %315 ], [ %310, %308 ]
  switch i32 %306, label %367 [
    i32 0, label %339
    i32 1, label %324
  ], !dbg !2321

; <label>:324:                                    ; preds = %322
  br label %367, !dbg !2322

; <label>:325:                                    ; preds = %315, %308
  %326 = phi i64 [ -9223372036854775808, %315 ], [ %309, %308 ]
  %327 = phi i1 [ false, %315 ], [ true, %308 ]
  %328 = sub nsw i64 %326, %299, !dbg !2323
  %329 = icmp sgt i64 %326, %299, !dbg !2324
  %330 = icmp sgt i64 %328, %302, !dbg !2325
  %331 = and i1 %327, %330, !dbg !2326
  %332 = or i1 %329, %331, !dbg !2327
  br i1 %332, label %337, label %333, !dbg !2327

; <label>:333:                                    ; preds = %325
  %334 = and i64 %302, %299, !dbg !2328
  %335 = icmp slt i64 %334, 0, !dbg !2328
  %336 = and i1 %335, %330, !dbg !2328
  br i1 %336, label %337, label %372, !dbg !2328

; <label>:337:                                    ; preds = %333, %325
  switch i32 %306, label %367 [
    i32 0, label %339
    i32 1, label %338
  ], !dbg !2329

; <label>:338:                                    ; preds = %337
  br label %367, !dbg !2330

; <label>:339:                                    ; preds = %337, %322
  %340 = and i64 %294, %304, !dbg !2336
  %341 = icmp eq i64 %340, 0, !dbg !2336
  %342 = or i64 %297, %304, !dbg !2337
  %343 = xor i64 %297, -1, !dbg !2338
  %344 = and i64 %304, %343, !dbg !2339
  %345 = select i1 %341, i64 %344, i64 %342, !dbg !2340
  br label %367, !dbg !2341

; <label>:346:                                    ; preds = %291
  %347 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %199, i64 %221, i32 3, !dbg !2342
  %348 = load i32, i32* %347, align 4, !dbg !2342, !tbaa !2206
  %349 = icmp eq i32 %238, 64, !dbg !2348
  br i1 %349, label %372, label %350, !dbg !2349

; <label>:350:                                    ; preds = %346
  %351 = shl nsw i64 -1, %293, !dbg !2350
  %352 = xor i64 %351, -1, !dbg !2350
  %353 = icmp sgt i64 %302, %352, !dbg !2353
  br i1 %353, label %354, label %356, !dbg !2354

; <label>:354:                                    ; preds = %350
  switch i32 %348, label %367 [
    i32 0, label %360
    i32 1, label %355
  ], !dbg !2355

; <label>:355:                                    ; preds = %354
  br label %367, !dbg !2356

; <label>:356:                                    ; preds = %350
  %357 = icmp sgt i64 %351, %302, !dbg !2357
  br i1 %357, label %358, label %372, !dbg !2358

; <label>:358:                                    ; preds = %356
  switch i32 %348, label %367 [
    i32 0, label %360
    i32 1, label %359
  ], !dbg !2359

; <label>:359:                                    ; preds = %358
  br label %367, !dbg !2360

; <label>:360:                                    ; preds = %358, %354
  %361 = and i64 %294, %302, !dbg !2366
  %362 = icmp eq i64 %361, 0, !dbg !2366
  %363 = or i64 %297, %302, !dbg !2367
  %364 = xor i64 %297, -1, !dbg !2368
  %365 = and i64 %302, %364, !dbg !2369
  %366 = select i1 %362, i64 %365, i64 %363, !dbg !2370
  br label %367, !dbg !2371

; <label>:367:                                    ; preds = %359, %358, %355, %354, %360, %338, %337, %324, %322, %339
  %368 = phi i32 [ %306, %339 ], [ %306, %322 ], [ %306, %324 ], [ %306, %337 ], [ %306, %338 ], [ %348, %360 ], [ %348, %354 ], [ %348, %355 ], [ %348, %358 ], [ %348, %359 ], !dbg !2372
  %369 = phi i64 [ %345, %339 ], [ %224, %322 ], [ %323, %324 ], [ %224, %337 ], [ %326, %338 ], [ %366, %360 ], [ %224, %354 ], [ %352, %355 ], [ %224, %358 ], [ %351, %359 ]
  %370 = phi i64 [ %345, %339 ], [ %224, %322 ], [ %323, %324 ], [ %224, %337 ], [ %326, %338 ], [ %299, %360 ], [ %299, %354 ], [ %299, %355 ], [ %299, %358 ], [ %299, %359 ], !dbg !2297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2374
  %371 = icmp eq i32 %368, 2, !dbg !2376
  br i1 %371, label %412, label %375, !dbg !2377

; <label>:372:                                    ; preds = %356, %346, %333
  %373 = phi i64 [ %304, %333 ], [ %299, %346 ], [ %299, %356 ]
  %374 = phi i64 [ %304, %333 ], [ %302, %346 ], [ %302, %356 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2378
  br label %375, !dbg !2379

; <label>:375:                                    ; preds = %372, %367
  %376 = phi i64 [ %370, %367 ], [ %373, %372 ]
  %377 = phi i64 [ %369, %367 ], [ %374, %372 ]
  %378 = phi i64 [ %369, %367 ], [ %224, %372 ]
  call void @addReplyLongLong(%struct.client* %0, i64 %376) #6, !dbg !2379
  %379 = load i8*, i8** %205, align 8, !dbg !2381, !tbaa !964
  %380 = load i32, i32* %237, align 8, !dbg !2382, !tbaa !2209
  %381 = sext i32 %380 to i64, !dbg !2383
  %382 = icmp eq i32 %380, 0, !dbg !2394
  br i1 %382, label %411, label %383, !dbg !2395

; <label>:383:                                    ; preds = %375
  %384 = load i64, i64* %235, align 8, !dbg !2396, !tbaa !2195
  br label %385, !dbg !2399

; <label>:385:                                    ; preds = %383, %385
  %386 = phi i64 [ %409, %385 ], [ 0, %383 ]
  %387 = phi i64 [ %408, %385 ], [ %384, %383 ]
  %388 = xor i64 %386, -1, !dbg !2399
  %389 = add i64 %388, %381, !dbg !2399
  %390 = shl i64 1, %389, !dbg !2400
  %391 = and i64 %390, %377, !dbg !2401
  %392 = icmp ne i64 %391, 0, !dbg !2402
  %393 = zext i1 %392 to i64, !dbg !2403
  %394 = lshr i64 %387, 3, !dbg !2405
  %395 = and i64 %387, 7, !dbg !2407
  %396 = xor i64 %395, 7, !dbg !2408
  %397 = getelementptr inbounds i8, i8* %379, i64 %394, !dbg !2410
  %398 = load i8, i8* %397, align 1, !dbg !2410, !tbaa !103
  %399 = zext i8 %398 to i64, !dbg !2410
  %400 = trunc i64 %396 to i32, !dbg !2412
  %401 = shl i32 1, %400, !dbg !2412
  %402 = xor i32 %401, 255, !dbg !2413
  %403 = zext i32 %402 to i64, !dbg !2413
  %404 = and i64 %403, %399, !dbg !2414
  %405 = shl i64 %393, %396, !dbg !2415
  %406 = or i64 %404, %405, !dbg !2416
  %407 = trunc i64 %406 to i8, !dbg !2417
  store i8 %407, i8* %397, align 1, !dbg !2418, !tbaa !103
  %408 = add i64 %387, 1, !dbg !2419
  %409 = add nuw i64 %386, 1, !dbg !2420
  %410 = icmp eq i64 %409, %381, !dbg !2394
  br i1 %410, label %411, label %385, !dbg !2395, !llvm.loop !380

; <label>:411:                                    ; preds = %385, %375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2422
  br label %553, !dbg !2423

; <label>:412:                                    ; preds = %367
  %413 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !2424, !tbaa !2426
  call void @addReply(%struct.client* %0, %struct.redisObject* %413) #6, !dbg !2427
  br label %553

; <label>:414:                                    ; preds = %230
  br i1 %240, label %464, label %415, !dbg !2433

; <label>:415:                                    ; preds = %414
  %416 = and i64 %239, 1, !dbg !2434
  %417 = icmp eq i32 %238, 1, !dbg !2434
  br i1 %417, label %448, label %418, !dbg !2434

; <label>:418:                                    ; preds = %415
  %419 = sub nsw i64 %239, %416, !dbg !2434
  br label %420, !dbg !2434

; <label>:420:                                    ; preds = %420, %418
  %421 = phi i64 [ 0, %418 ], [ %444, %420 ]
  %422 = phi i64 [ %236, %418 ], [ %445, %420 ]
  %423 = phi i64 [ %419, %418 ], [ %446, %420 ]
  %424 = lshr i64 %422, 3, !dbg !2434
  %425 = and i64 %422, 7, !dbg !2436
  %426 = xor i64 %425, 7, !dbg !2437
  %427 = getelementptr inbounds i8, i8* %234, i64 %424, !dbg !2439
  %428 = load i8, i8* %427, align 1, !dbg !2439, !tbaa !103
  %429 = zext i8 %428 to i64, !dbg !2439
  %430 = lshr i64 %429, %426, !dbg !2441
  %431 = and i64 %430, 1, !dbg !2442
  %432 = shl i64 %421, 1, !dbg !2444
  %433 = or i64 %431, %432, !dbg !2445
  %434 = add i64 %422, 1, !dbg !2446
  %435 = lshr i64 %434, 3, !dbg !2434
  %436 = and i64 %434, 7, !dbg !2436
  %437 = xor i64 %436, 7, !dbg !2437
  %438 = getelementptr inbounds i8, i8* %234, i64 %435, !dbg !2439
  %439 = load i8, i8* %438, align 1, !dbg !2439, !tbaa !103
  %440 = zext i8 %439 to i64, !dbg !2439
  %441 = lshr i64 %440, %437, !dbg !2441
  %442 = and i64 %441, 1, !dbg !2442
  %443 = shl i64 %433, 1, !dbg !2444
  %444 = or i64 %442, %443, !dbg !2445
  %445 = add i64 %422, 2, !dbg !2446
  %446 = add i64 %423, -2, !dbg !2433
  %447 = icmp eq i64 %446, 0, !dbg !2433
  br i1 %447, label %448, label %420, !dbg !2433, !llvm.loop !465

; <label>:448:                                    ; preds = %420, %415
  %449 = phi i64 [ undef, %415 ], [ %444, %420 ]
  %450 = phi i64 [ 0, %415 ], [ %444, %420 ]
  %451 = phi i64 [ %236, %415 ], [ %445, %420 ]
  %452 = icmp eq i64 %416, 0, !dbg !2433
  br i1 %452, label %464, label %453, !dbg !2433

; <label>:453:                                    ; preds = %448
  %454 = lshr i64 %451, 3, !dbg !2434
  %455 = getelementptr inbounds i8, i8* %234, i64 %454, !dbg !2439
  %456 = load i8, i8* %455, align 1, !dbg !2439, !tbaa !103
  %457 = zext i8 %456 to i64, !dbg !2439
  %458 = and i64 %451, 7, !dbg !2436
  %459 = xor i64 %458, 7, !dbg !2437
  %460 = lshr i64 %457, %459, !dbg !2441
  %461 = and i64 %460, 1, !dbg !2442
  %462 = shl i64 %450, 1, !dbg !2444
  %463 = or i64 %461, %462, !dbg !2445
  br label %464, !dbg !2447

; <label>:464:                                    ; preds = %453, %448, %414
  %465 = phi i64 [ 0, %414 ], [ %449, %448 ], [ %463, %453 ], !dbg !2448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2447
  %466 = icmp eq i32 %227, 2, !dbg !2450
  %467 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %199, i64 %221, i32 1, !dbg !2452
  %468 = load i64, i64* %467, align 8, !dbg !2452, !tbaa !2200
  br i1 %466, label %469, label %494, !dbg !2454

; <label>:469:                                    ; preds = %464
  %470 = add i64 %468, %465, !dbg !2455
  %471 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %199, i64 %221, i32 3, !dbg !2458
  %472 = load i32, i32* %471, align 4, !dbg !2458, !tbaa !2206
  %473 = icmp eq i32 %238, 64, !dbg !2464
  %474 = shl i64 -1, %239, !dbg !2465
  %475 = xor i64 %474, -1, !dbg !2465
  %476 = select i1 %473, i64 -1, i64 %475, !dbg !2466
  %477 = sub i64 0, %465, !dbg !2468
  %478 = icmp ult i64 %476, %465, !dbg !2470
  br i1 %478, label %484, label %479, !dbg !2471

; <label>:479:                                    ; preds = %469
  %480 = sub i64 %476, %465, !dbg !2472
  %481 = icmp sgt i64 %468, 0, !dbg !2474
  %482 = icmp slt i64 %480, %468, !dbg !2475
  %483 = and i1 %481, %482, !dbg !2476
  br i1 %483, label %484, label %486, !dbg !2476

; <label>:484:                                    ; preds = %479, %469
  switch i32 %472, label %506 [
    i32 0, label %492
    i32 1, label %485
  ], !dbg !2477

; <label>:485:                                    ; preds = %484
  br label %506, !dbg !2478

; <label>:486:                                    ; preds = %479
  %487 = icmp slt i64 %468, 0, !dbg !2479
  %488 = icmp slt i64 %468, %477, !dbg !2480
  %489 = and i1 %487, %488, !dbg !2481
  br i1 %489, label %490, label %511, !dbg !2481

; <label>:490:                                    ; preds = %486
  switch i32 %472, label %506 [
    i32 0, label %492
    i32 1, label %491
  ], !dbg !2482

; <label>:491:                                    ; preds = %490
  br label %506, !dbg !2483

; <label>:492:                                    ; preds = %490, %484
  %493 = and i64 %470, %475, !dbg !2486
  br label %506, !dbg !2487

; <label>:494:                                    ; preds = %464
  %495 = icmp eq i32 %238, 64, !dbg !2492
  %496 = shl i64 -1, %239, !dbg !2493
  %497 = xor i64 %496, -1, !dbg !2493
  %498 = select i1 %495, i64 -1, i64 %497, !dbg !2494
  %499 = icmp ult i64 %498, %468, !dbg !2496
  br i1 %499, label %500, label %511, !dbg !2497

; <label>:500:                                    ; preds = %494
  %501 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %199, i64 %221, i32 3, !dbg !2498
  %502 = load i32, i32* %501, align 4, !dbg !2498, !tbaa !2206
  switch i32 %502, label %506 [
    i32 0, label %504
    i32 1, label %503
  ], !dbg !2500

; <label>:503:                                    ; preds = %500
  br label %506, !dbg !2501

; <label>:504:                                    ; preds = %500
  %505 = and i64 %468, %497, !dbg !2504
  br label %506, !dbg !2505

; <label>:506:                                    ; preds = %503, %500, %504, %491, %490, %485, %484, %492
  %507 = phi i32 [ %472, %492 ], [ %472, %484 ], [ %472, %485 ], [ %472, %490 ], [ %472, %491 ], [ %502, %504 ], [ %502, %500 ], [ %502, %503 ], !dbg !2506
  %508 = phi i64 [ %493, %492 ], [ %223, %484 ], [ %476, %485 ], [ %223, %490 ], [ 0, %491 ], [ %505, %504 ], [ %223, %500 ], [ %498, %503 ]
  %509 = phi i64 [ %493, %492 ], [ %223, %484 ], [ %476, %485 ], [ %223, %490 ], [ 0, %491 ], [ %465, %504 ], [ %465, %500 ], [ %465, %503 ], !dbg !2452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2508
  %510 = icmp eq i32 %507, 2, !dbg !2510
  br i1 %510, label %551, label %514, !dbg !2511

; <label>:511:                                    ; preds = %494, %486
  %512 = phi i64 [ %470, %486 ], [ %465, %494 ]
  %513 = phi i64 [ %470, %486 ], [ %468, %494 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2512
  br label %514, !dbg !2513

; <label>:514:                                    ; preds = %511, %506
  %515 = phi i64 [ %509, %506 ], [ %512, %511 ]
  %516 = phi i64 [ %508, %506 ], [ %513, %511 ]
  %517 = phi i64 [ %508, %506 ], [ %223, %511 ]
  call void @addReplyLongLong(%struct.client* %0, i64 %515) #6, !dbg !2513
  %518 = load i8*, i8** %205, align 8, !dbg !2515, !tbaa !964
  %519 = load i32, i32* %237, align 8, !dbg !2516, !tbaa !2209
  %520 = sext i32 %519 to i64, !dbg !2517
  %521 = icmp eq i32 %519, 0, !dbg !2523
  br i1 %521, label %550, label %522, !dbg !2524

; <label>:522:                                    ; preds = %514
  %523 = load i64, i64* %235, align 8, !dbg !2525, !tbaa !2195
  br label %524, !dbg !2527

; <label>:524:                                    ; preds = %522, %524
  %525 = phi i64 [ %548, %524 ], [ 0, %522 ]
  %526 = phi i64 [ %547, %524 ], [ %523, %522 ]
  %527 = xor i64 %525, -1, !dbg !2527
  %528 = add i64 %527, %520, !dbg !2527
  %529 = shl i64 1, %528, !dbg !2528
  %530 = and i64 %529, %516, !dbg !2529
  %531 = icmp ne i64 %530, 0, !dbg !2530
  %532 = zext i1 %531 to i64, !dbg !2531
  %533 = lshr i64 %526, 3, !dbg !2533
  %534 = and i64 %526, 7, !dbg !2535
  %535 = xor i64 %534, 7, !dbg !2536
  %536 = getelementptr inbounds i8, i8* %518, i64 %533, !dbg !2538
  %537 = load i8, i8* %536, align 1, !dbg !2538, !tbaa !103
  %538 = zext i8 %537 to i64, !dbg !2538
  %539 = trunc i64 %535 to i32, !dbg !2540
  %540 = shl i32 1, %539, !dbg !2540
  %541 = xor i32 %540, 255, !dbg !2541
  %542 = zext i32 %541 to i64, !dbg !2541
  %543 = and i64 %542, %538, !dbg !2542
  %544 = shl i64 %532, %535, !dbg !2543
  %545 = or i64 %543, %544, !dbg !2544
  %546 = trunc i64 %545 to i8, !dbg !2545
  store i8 %546, i8* %536, align 1, !dbg !2546, !tbaa !103
  %547 = add i64 %526, 1, !dbg !2547
  %548 = add nuw i64 %525, 1, !dbg !2548
  %549 = icmp eq i64 %548, %520, !dbg !2523
  br i1 %549, label %550, label %524, !dbg !2524, !llvm.loop !380

; <label>:550:                                    ; preds = %524, %514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2549
  br label %553, !dbg !2550

; <label>:551:                                    ; preds = %506
  %552 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !2551, !tbaa !2426
  call void @addReply(%struct.client* %0, %struct.redisObject* %552) #6, !dbg !2553
  br label %553

; <label>:553:                                    ; preds = %550, %551, %411, %412
  %554 = phi i64 [ %369, %412 ], [ %378, %411 ], [ %224, %551 ], [ %224, %550 ]
  %555 = phi i64 [ %223, %412 ], [ %223, %411 ], [ %508, %551 ], [ %517, %550 ]
  %556 = add nsw i32 %222, 1, !dbg !2554
  br label %700, !dbg !2555

; <label>:557:                                    ; preds = %220
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %206) #8, !dbg !2556
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %207) #8, !dbg !2558
  store i64 0, i64* %6, align 8, !dbg !2559, !tbaa !290
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %208) #8, !dbg !2561
  br i1 %209, label %560, label %558, !dbg !2563

; <label>:558:                                    ; preds = %557
  %559 = call i8* @getObjectReadOnlyString(%struct.redisObject* nonnull %201, i64* nonnull %6, i8* nonnull %208) #9, !dbg !2564
  br label %560, !dbg !2566

; <label>:560:                                    ; preds = %557, %558
  %561 = phi i8* [ %559, %558 ], [ null, %557 ], !dbg !2567
  %562 = call i8* @memset(i8* nonnull %206, i32 0, i64 9) #6, !dbg !2568
  %563 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %225, i64 0, i32 0, !dbg !2569
  %564 = load i64, i64* %563, align 8, !dbg !2569, !tbaa !2195
  %565 = lshr i64 %564, 3, !dbg !2570
  %566 = icmp eq i8* %561, null, !dbg !2573
  br i1 %566, label %577, label %567, !dbg !2578

; <label>:567:                                    ; preds = %560
  %568 = load i64, i64* %6, align 8, !dbg !2579, !tbaa !290
  %569 = icmp ult i64 %565, %568, !dbg !2580
  br i1 %569, label %570, label %575, !dbg !2581

; <label>:570:                                    ; preds = %567
  %571 = getelementptr inbounds i8, i8* %561, i64 %565, !dbg !2582
  %572 = load i8, i8* %571, align 1, !dbg !2582, !tbaa !103
  store i8 %572, i8* %211, align 1, !dbg !2583, !tbaa !103
  %573 = add nuw nsw i64 %565, 1, !dbg !2584
  %574 = icmp ult i64 %573, %568, !dbg !2580
  br i1 %574, label %726, label %575, !dbg !2581

; <label>:575:                                    ; preds = %761, %756, %751, %746, %741, %736, %731, %726, %570, %567
  %576 = load i64, i64* %563, align 8, !dbg !2585, !tbaa !2195
  br label %577, !dbg !2586

; <label>:577:                                    ; preds = %575, %560
  %578 = phi i64 [ %576, %575 ], [ %564, %560 ], !dbg !2585
  %579 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %199, i64 %221, i32 5, !dbg !2586
  %580 = load i32, i32* %579, align 4, !dbg !2586, !tbaa !2212
  %581 = icmp eq i32 %580, 0, !dbg !2587
  %582 = and i64 %564, -8, !dbg !2585
  %583 = sub i64 %578, %582, !dbg !2585
  %584 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %199, i64 %221, i32 4, !dbg !2585
  %585 = load i32, i32* %584, align 8, !dbg !2585, !tbaa !2209
  %586 = sext i32 %585 to i64, !dbg !2585
  %587 = icmp eq i32 %585, 0, !dbg !2588
  br i1 %581, label %647, label %588, !dbg !2590

; <label>:588:                                    ; preds = %577
  br i1 %587, label %638, label %589, !dbg !2601

; <label>:589:                                    ; preds = %588
  %590 = and i64 %586, 1, !dbg !2602
  %591 = icmp eq i32 %585, 1, !dbg !2602
  br i1 %591, label %622, label %592, !dbg !2602

; <label>:592:                                    ; preds = %589
  %593 = sub nsw i64 %586, %590, !dbg !2602
  br label %594, !dbg !2602

; <label>:594:                                    ; preds = %594, %592
  %595 = phi i64 [ 0, %592 ], [ %618, %594 ]
  %596 = phi i64 [ %583, %592 ], [ %619, %594 ]
  %597 = phi i64 [ %593, %592 ], [ %620, %594 ]
  %598 = lshr i64 %596, 3, !dbg !2602
  %599 = and i64 %596, 7, !dbg !2604
  %600 = xor i64 %599, 7, !dbg !2605
  %601 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 %598, !dbg !2607
  %602 = load i8, i8* %601, align 1, !dbg !2607, !tbaa !103
  %603 = zext i8 %602 to i64, !dbg !2607
  %604 = lshr i64 %603, %600, !dbg !2609
  %605 = and i64 %604, 1, !dbg !2610
  %606 = shl i64 %595, 1, !dbg !2612
  %607 = or i64 %605, %606, !dbg !2613
  %608 = add i64 %596, 1, !dbg !2614
  %609 = lshr i64 %608, 3, !dbg !2602
  %610 = and i64 %608, 7, !dbg !2604
  %611 = xor i64 %610, 7, !dbg !2605
  %612 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 %609, !dbg !2607
  %613 = load i8, i8* %612, align 1, !dbg !2607, !tbaa !103
  %614 = zext i8 %613 to i64, !dbg !2607
  %615 = lshr i64 %614, %611, !dbg !2609
  %616 = and i64 %615, 1, !dbg !2610
  %617 = shl i64 %607, 1, !dbg !2612
  %618 = or i64 %616, %617, !dbg !2613
  %619 = add i64 %596, 2, !dbg !2614
  %620 = add i64 %597, -2, !dbg !2601
  %621 = icmp eq i64 %620, 0, !dbg !2601
  br i1 %621, label %622, label %594, !dbg !2601, !llvm.loop !465

; <label>:622:                                    ; preds = %594, %589
  %623 = phi i64 [ undef, %589 ], [ %618, %594 ]
  %624 = phi i64 [ 0, %589 ], [ %618, %594 ]
  %625 = phi i64 [ %583, %589 ], [ %619, %594 ]
  %626 = icmp eq i64 %590, 0, !dbg !2601
  br i1 %626, label %638, label %627, !dbg !2601

; <label>:627:                                    ; preds = %622
  %628 = lshr i64 %625, 3, !dbg !2602
  %629 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 %628, !dbg !2607
  %630 = load i8, i8* %629, align 1, !dbg !2607, !tbaa !103
  %631 = zext i8 %630 to i64, !dbg !2607
  %632 = and i64 %625, 7, !dbg !2604
  %633 = xor i64 %632, 7, !dbg !2605
  %634 = lshr i64 %631, %633, !dbg !2609
  %635 = and i64 %634, 1, !dbg !2610
  %636 = shl i64 %624, 1, !dbg !2612
  %637 = or i64 %635, %636, !dbg !2613
  br label %638, !dbg !2615

; <label>:638:                                    ; preds = %627, %622, %588
  %639 = phi i64 [ 0, %588 ], [ %623, %622 ], [ %637, %627 ], !dbg !2616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2615
  %640 = add nsw i64 %586, -1, !dbg !2619
  %641 = shl i64 1, %640, !dbg !2620
  %642 = and i64 %639, %641, !dbg !2621
  %643 = icmp eq i64 %642, 0, !dbg !2621
  %644 = shl i64 -1, %586, !dbg !2622
  %645 = select i1 %643, i64 0, i64 %644, !dbg !2623
  %646 = or i64 %645, %639, !dbg !2623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2624
  call void @addReplyLongLong(%struct.client* %0, i64 %646) #6, !dbg !2626
  br label %699, !dbg !2627

; <label>:647:                                    ; preds = %577
  br i1 %587, label %697, label %648, !dbg !2633

; <label>:648:                                    ; preds = %647
  %649 = and i64 %586, 1, !dbg !2634
  %650 = icmp eq i32 %585, 1, !dbg !2634
  br i1 %650, label %681, label %651, !dbg !2634

; <label>:651:                                    ; preds = %648
  %652 = sub nsw i64 %586, %649, !dbg !2634
  br label %653, !dbg !2634

; <label>:653:                                    ; preds = %653, %651
  %654 = phi i64 [ 0, %651 ], [ %677, %653 ]
  %655 = phi i64 [ %583, %651 ], [ %678, %653 ]
  %656 = phi i64 [ %652, %651 ], [ %679, %653 ]
  %657 = lshr i64 %655, 3, !dbg !2634
  %658 = and i64 %655, 7, !dbg !2636
  %659 = xor i64 %658, 7, !dbg !2637
  %660 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 %657, !dbg !2639
  %661 = load i8, i8* %660, align 1, !dbg !2639, !tbaa !103
  %662 = zext i8 %661 to i64, !dbg !2639
  %663 = lshr i64 %662, %659, !dbg !2641
  %664 = and i64 %663, 1, !dbg !2642
  %665 = shl i64 %654, 1, !dbg !2644
  %666 = or i64 %664, %665, !dbg !2645
  %667 = add i64 %655, 1, !dbg !2646
  %668 = lshr i64 %667, 3, !dbg !2634
  %669 = and i64 %667, 7, !dbg !2636
  %670 = xor i64 %669, 7, !dbg !2637
  %671 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 %668, !dbg !2639
  %672 = load i8, i8* %671, align 1, !dbg !2639, !tbaa !103
  %673 = zext i8 %672 to i64, !dbg !2639
  %674 = lshr i64 %673, %670, !dbg !2641
  %675 = and i64 %674, 1, !dbg !2642
  %676 = shl i64 %666, 1, !dbg !2644
  %677 = or i64 %675, %676, !dbg !2645
  %678 = add i64 %655, 2, !dbg !2646
  %679 = add i64 %656, -2, !dbg !2633
  %680 = icmp eq i64 %679, 0, !dbg !2633
  br i1 %680, label %681, label %653, !dbg !2633, !llvm.loop !465

; <label>:681:                                    ; preds = %653, %648
  %682 = phi i64 [ undef, %648 ], [ %677, %653 ]
  %683 = phi i64 [ 0, %648 ], [ %677, %653 ]
  %684 = phi i64 [ %583, %648 ], [ %678, %653 ]
  %685 = icmp eq i64 %649, 0, !dbg !2633
  br i1 %685, label %697, label %686, !dbg !2633

; <label>:686:                                    ; preds = %681
  %687 = lshr i64 %684, 3, !dbg !2634
  %688 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 %687, !dbg !2639
  %689 = load i8, i8* %688, align 1, !dbg !2639, !tbaa !103
  %690 = zext i8 %689 to i64, !dbg !2639
  %691 = and i64 %684, 7, !dbg !2636
  %692 = xor i64 %691, 7, !dbg !2637
  %693 = lshr i64 %690, %692, !dbg !2641
  %694 = and i64 %693, 1, !dbg !2642
  %695 = shl i64 %683, 1, !dbg !2644
  %696 = or i64 %694, %695, !dbg !2645
  br label %697, !dbg !2647

; <label>:697:                                    ; preds = %686, %681, %647
  %698 = phi i64 [ 0, %647 ], [ %682, %681 ], [ %696, %686 ], !dbg !2648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2647
  call void @addReplyLongLong(%struct.client* %0, i64 %698) #6, !dbg !2650
  br label %699

; <label>:699:                                    ; preds = %697, %638
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %208) #8, !dbg !2651
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %207) #8, !dbg !2651
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %206) #8, !dbg !2651
  br label %700

; <label>:700:                                    ; preds = %699, %553
  %701 = phi i64 [ %554, %553 ], [ %224, %699 ]
  %702 = phi i64 [ %555, %553 ], [ %223, %699 ]
  %703 = phi i32 [ %556, %553 ], [ %222, %699 ], !dbg !2187
  %704 = add nuw nsw i64 %221, 1, !dbg !2652
  %705 = icmp eq i64 %704, %210, !dbg !2248
  br i1 %705, label %706, label %220, !dbg !2249, !llvm.loop !2653

; <label>:706:                                    ; preds = %700
  %707 = icmp eq i32 %703, 0, !dbg !2655
  br i1 %707, label %724, label %708, !dbg !2657

; <label>:708:                                    ; preds = %706
  %709 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2658
  %710 = load %struct.redisDb*, %struct.redisDb** %709, align 8, !dbg !2658, !tbaa !1101
  %711 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2660
  %712 = load %struct.redisObject**, %struct.redisObject*** %711, align 8, !dbg !2660, !tbaa !1106
  %713 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %712, i64 1, !dbg !2661
  %714 = load %struct.redisObject*, %struct.redisObject** %713, align 8, !dbg !2661, !tbaa !1108
  call void @signalModifiedKey(%struct.redisDb* %710, %struct.redisObject* %714) #6, !dbg !2662
  %715 = load %struct.redisObject**, %struct.redisObject*** %711, align 8, !dbg !2663, !tbaa !1106
  %716 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %715, i64 1, !dbg !2664
  %717 = load %struct.redisObject*, %struct.redisObject** %716, align 8, !dbg !2664, !tbaa !1108
  %718 = load %struct.redisDb*, %struct.redisDb** %709, align 8, !dbg !2665, !tbaa !1101
  %719 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %718, i64 0, i32 5, !dbg !2666
  %720 = load i32, i32* %719, align 8, !dbg !2666, !tbaa !1264
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), %struct.redisObject* %717, i32 %720) #6, !dbg !2667
  %721 = sext i32 %703 to i64, !dbg !2668
  %722 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2669, !tbaa !1268
  %723 = add nsw i64 %722, %721, !dbg !2669
  store i64 %723, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2669, !tbaa !1268
  br label %724, !dbg !2670

; <label>:724:                                    ; preds = %197, %706, %708
  call void @zfree(i8* %200) #6, !dbg !2671
  br label %725, !dbg !2672

; <label>:725:                                    ; preds = %154, %724, %196, %192
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !2672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2672
  ret void, !dbg !2672

; <label>:726:                                    ; preds = %570
  %727 = getelementptr inbounds i8, i8* %561, i64 %573, !dbg !2582
  %728 = load i8, i8* %727, align 1, !dbg !2582, !tbaa !103
  store i8 %728, i8* %212, align 1, !dbg !2583, !tbaa !103
  %729 = add nuw nsw i64 %565, 2, !dbg !2584
  %730 = icmp ult i64 %729, %568, !dbg !2580
  br i1 %730, label %731, label %575, !dbg !2581

; <label>:731:                                    ; preds = %726
  %732 = getelementptr inbounds i8, i8* %561, i64 %729, !dbg !2582
  %733 = load i8, i8* %732, align 1, !dbg !2582, !tbaa !103
  store i8 %733, i8* %213, align 1, !dbg !2583, !tbaa !103
  %734 = add nuw nsw i64 %565, 3, !dbg !2584
  %735 = icmp ult i64 %734, %568, !dbg !2580
  br i1 %735, label %736, label %575, !dbg !2581

; <label>:736:                                    ; preds = %731
  %737 = getelementptr inbounds i8, i8* %561, i64 %734, !dbg !2582
  %738 = load i8, i8* %737, align 1, !dbg !2582, !tbaa !103
  store i8 %738, i8* %214, align 1, !dbg !2583, !tbaa !103
  %739 = add nuw nsw i64 %565, 4, !dbg !2584
  %740 = icmp ult i64 %739, %568, !dbg !2580
  br i1 %740, label %741, label %575, !dbg !2581

; <label>:741:                                    ; preds = %736
  %742 = getelementptr inbounds i8, i8* %561, i64 %739, !dbg !2582
  %743 = load i8, i8* %742, align 1, !dbg !2582, !tbaa !103
  store i8 %743, i8* %215, align 1, !dbg !2583, !tbaa !103
  %744 = add nuw nsw i64 %565, 5, !dbg !2584
  %745 = icmp ult i64 %744, %568, !dbg !2580
  br i1 %745, label %746, label %575, !dbg !2581

; <label>:746:                                    ; preds = %741
  %747 = getelementptr inbounds i8, i8* %561, i64 %744, !dbg !2582
  %748 = load i8, i8* %747, align 1, !dbg !2582, !tbaa !103
  store i8 %748, i8* %216, align 1, !dbg !2583, !tbaa !103
  %749 = add nuw nsw i64 %565, 6, !dbg !2584
  %750 = icmp ult i64 %749, %568, !dbg !2580
  br i1 %750, label %751, label %575, !dbg !2581

; <label>:751:                                    ; preds = %746
  %752 = getelementptr inbounds i8, i8* %561, i64 %749, !dbg !2582
  %753 = load i8, i8* %752, align 1, !dbg !2582, !tbaa !103
  store i8 %753, i8* %217, align 1, !dbg !2583, !tbaa !103
  %754 = add nuw nsw i64 %565, 7, !dbg !2584
  %755 = icmp ult i64 %754, %568, !dbg !2580
  br i1 %755, label %756, label %575, !dbg !2581

; <label>:756:                                    ; preds = %751
  %757 = getelementptr inbounds i8, i8* %561, i64 %754, !dbg !2582
  %758 = load i8, i8* %757, align 1, !dbg !2582, !tbaa !103
  store i8 %758, i8* %218, align 1, !dbg !2583, !tbaa !103
  %759 = add nuw nsw i64 %565, 8, !dbg !2584
  %760 = icmp ult i64 %759, %568, !dbg !2580
  br i1 %760, label %761, label %575, !dbg !2581

; <label>:761:                                    ; preds = %756
  %762 = getelementptr inbounds i8, i8* %561, i64 %759, !dbg !2582
  %763 = load i8, i8* %762, align 1, !dbg !2582, !tbaa !103
  store i8 %763, i8* %219, align 1, !dbg !2583, !tbaa !103
  br label %575
}

; Function Attrs: noredzone
declare dso_local i32 @getLongLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

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

!llvm.module.flags = !{!88, !89, !90}
!llvm.ident = !{!91}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "bitsinbyte", scope: !2, file: !3, line: 44, type: !84, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "redisPopcount", scope: !3, file: !3, line: 40, type: !4, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !70)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/bitops.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !11, !12}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 40, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !9, line: 129, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !14, retainedTypes: !15, globals: !69)
!14 = !{}
!15 = !{!10, !16, !22, !24, !25, !27, !29, !6, !11, !12, !30, !33, !45, !55, !62}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !18, line: 48, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !20, line: 79, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !18, line: 60, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !20, line: 105, baseType: !10)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !18, line: 56, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !20, line: 103, baseType: !12)
!29 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !18, line: 24, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !20, line: 43, baseType: !23)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !35, line: 51, size: 24, elements: !36)
!35 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!36 = !{!37, !38, !39, !40}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !34, file: !35, line: 52, baseType: !31, size: 8)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !34, file: !35, line: 53, baseType: !31, size: 8, offset: 8)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !34, file: !35, line: 54, baseType: !23, size: 8, offset: 16)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !34, file: !35, line: 55, baseType: !41, offset: 24)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, elements: !43)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!43 = !{!44}
!44 = !DISubrange(count: -1)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !35, line: 57, size: 40, elements: !47)
!47 = !{!48, !52, !53, !54}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !46, file: !35, line: 58, baseType: !49, size: 16)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !18, line: 36, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !20, line: 57, baseType: !51)
!51 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !46, file: !35, line: 59, baseType: !49, size: 16, offset: 16)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !46, file: !35, line: 60, baseType: !23, size: 8, offset: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !46, file: !35, line: 61, baseType: !41, offset: 40)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !35, line: 63, size: 72, elements: !57)
!57 = !{!58, !59, !60, !61}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !56, file: !35, line: 64, baseType: !17, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !56, file: !35, line: 65, baseType: !17, size: 32, offset: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !56, file: !35, line: 66, baseType: !23, size: 8, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !56, file: !35, line: 67, baseType: !41, offset: 72)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !35, line: 69, size: 136, elements: !64)
!64 = !{!65, !66, !67, !68}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !63, file: !35, line: 70, baseType: !25, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !63, file: !35, line: 71, baseType: !25, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !63, file: !35, line: 72, baseType: !23, size: 8, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !63, file: !35, line: 73, baseType: !41, offset: 136)
!69 = !{!0}
!70 = !{!71, !72, !73, !74, !75, !76, !78, !79, !80, !81, !82, !83}
!71 = !DILocalVariable(name: "s", arg: 1, scope: !2, file: !3, line: 40, type: !11)
!72 = !DILocalVariable(name: "count", arg: 2, scope: !2, file: !3, line: 40, type: !12)
!73 = !DILocalVariable(name: "bits", scope: !2, file: !3, line: 41, type: !6)
!74 = !DILocalVariable(name: "p", scope: !2, file: !3, line: 42, type: !22)
!75 = !DILocalVariable(name: "p4", scope: !2, file: !3, line: 43, type: !16)
!76 = !DILocalVariable(name: "aux1", scope: !77, file: !3, line: 55, type: !17)
!77 = distinct !DILexicalBlock(scope: !2, file: !3, line: 54, column: 22)
!78 = !DILocalVariable(name: "aux2", scope: !77, file: !3, line: 55, type: !17)
!79 = !DILocalVariable(name: "aux3", scope: !77, file: !3, line: 55, type: !17)
!80 = !DILocalVariable(name: "aux4", scope: !77, file: !3, line: 55, type: !17)
!81 = !DILocalVariable(name: "aux5", scope: !77, file: !3, line: 55, type: !17)
!82 = !DILocalVariable(name: "aux6", scope: !77, file: !3, line: 55, type: !17)
!83 = !DILocalVariable(name: "aux7", scope: !77, file: !3, line: 55, type: !17)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 2048, elements: !86)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!86 = !{!87}
!87 = !DISubrange(count: 256)
!88 = !{i32 2, !"Dwarf Version", i32 4}
!89 = !{i32 2, !"Debug Info Version", i32 3}
!90 = !{i32 1, !"wchar_size", i32 4}
!91 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!92 = !DILocation(line: 40, column: 28, scope: !2)
!93 = !DILocation(line: 40, column: 36, scope: !2)
!94 = !DILocation(line: 41, column: 12, scope: !2)
!95 = !DILocation(line: 42, column: 20, scope: !2)
!96 = !DILocation(line: 47, column: 11, scope: !2)
!97 = !DILocation(line: 47, column: 28, scope: !2)
!98 = !DILocation(line: 47, column: 32, scope: !2)
!99 = !DILocation(line: 47, column: 5, scope: !2)
!100 = !DILocation(line: 48, column: 30, scope: !101)
!101 = distinct !DILexicalBlock(scope: !2, file: !3, line: 47, column: 42)
!102 = !DILocation(line: 48, column: 28, scope: !101)
!103 = !{!104, !104, i64 0}
!104 = !{!"omnipotent char", !105, i64 0}
!105 = !{!"Simple C/C++ TBAA"}
!106 = !DILocation(line: 48, column: 17, scope: !101)
!107 = !DILocation(line: 48, column: 14, scope: !101)
!108 = !DILocation(line: 49, column: 14, scope: !101)
!109 = distinct !{!109, !99, !110}
!110 = !DILocation(line: 50, column: 5, scope: !2)
!111 = !DILocation(line: 0, scope: !101)
!112 = !DILocation(line: 53, column: 10, scope: !2)
!113 = !DILocation(line: 43, column: 15, scope: !2)
!114 = !DILocation(line: 54, column: 16, scope: !2)
!115 = !DILocation(line: 54, column: 5, scope: !2)
!116 = !DILocation(line: 57, column: 19, scope: !77)
!117 = !DILocation(line: 57, column: 16, scope: !77)
!118 = !{!119, !119, i64 0}
!119 = !{!"int", !104, i64 0}
!120 = !DILocation(line: 66, column: 30, scope: !77)
!121 = !DILocation(line: 66, column: 36, scope: !77)
!122 = !DILocation(line: 66, column: 21, scope: !77)
!123 = !DILocation(line: 67, column: 22, scope: !77)
!124 = !DILocation(line: 67, column: 45, scope: !77)
!125 = !DILocation(line: 67, column: 51, scope: !77)
!126 = !DILocation(line: 67, column: 36, scope: !77)
!127 = !DILocation(line: 68, column: 30, scope: !77)
!128 = !DILocation(line: 68, column: 36, scope: !77)
!129 = !DILocation(line: 68, column: 21, scope: !77)
!130 = !DILocation(line: 69, column: 22, scope: !77)
!131 = !DILocation(line: 69, column: 45, scope: !77)
!132 = !DILocation(line: 69, column: 51, scope: !77)
!133 = !DILocation(line: 69, column: 36, scope: !77)
!134 = !DILocation(line: 70, column: 30, scope: !77)
!135 = !DILocation(line: 70, column: 36, scope: !77)
!136 = !DILocation(line: 70, column: 21, scope: !77)
!137 = !DILocation(line: 71, column: 22, scope: !77)
!138 = !DILocation(line: 71, column: 45, scope: !77)
!139 = !DILocation(line: 71, column: 51, scope: !77)
!140 = !DILocation(line: 71, column: 36, scope: !77)
!141 = !DILocation(line: 72, column: 30, scope: !77)
!142 = !DILocation(line: 72, column: 36, scope: !77)
!143 = !DILocation(line: 72, column: 21, scope: !77)
!144 = !DILocation(line: 73, column: 22, scope: !77)
!145 = !DILocation(line: 73, column: 45, scope: !77)
!146 = !DILocation(line: 73, column: 51, scope: !77)
!147 = !DILocation(line: 73, column: 36, scope: !77)
!148 = !DILocation(line: 74, column: 30, scope: !77)
!149 = !DILocation(line: 74, column: 36, scope: !77)
!150 = !DILocation(line: 74, column: 21, scope: !77)
!151 = !DILocation(line: 75, column: 22, scope: !77)
!152 = !DILocation(line: 75, column: 45, scope: !77)
!153 = !DILocation(line: 75, column: 51, scope: !77)
!154 = !DILocation(line: 75, column: 36, scope: !77)
!155 = !DILocation(line: 76, column: 30, scope: !77)
!156 = !DILocation(line: 76, column: 36, scope: !77)
!157 = !DILocation(line: 76, column: 21, scope: !77)
!158 = !DILocation(line: 77, column: 22, scope: !77)
!159 = !DILocation(line: 77, column: 45, scope: !77)
!160 = !DILocation(line: 77, column: 51, scope: !77)
!161 = !DILocation(line: 77, column: 36, scope: !77)
!162 = !DILocation(line: 78, column: 30, scope: !77)
!163 = !DILocation(line: 78, column: 36, scope: !77)
!164 = !DILocation(line: 78, column: 21, scope: !77)
!165 = !DILocation(line: 79, column: 22, scope: !77)
!166 = !DILocation(line: 79, column: 45, scope: !77)
!167 = !DILocation(line: 79, column: 51, scope: !77)
!168 = !DILocation(line: 79, column: 36, scope: !77)
!169 = !DILocation(line: 80, column: 34, scope: !77)
!170 = !DILocation(line: 80, column: 26, scope: !77)
!171 = !DILocation(line: 80, column: 41, scope: !77)
!172 = !DILocation(line: 81, column: 36, scope: !77)
!173 = !DILocation(line: 81, column: 28, scope: !77)
!174 = !DILocation(line: 81, column: 43, scope: !77)
!175 = !DILocation(line: 80, column: 55, scope: !77)
!176 = !DILocation(line: 82, column: 36, scope: !77)
!177 = !DILocation(line: 82, column: 28, scope: !77)
!178 = !DILocation(line: 82, column: 43, scope: !77)
!179 = !DILocation(line: 81, column: 57, scope: !77)
!180 = !DILocation(line: 83, column: 36, scope: !77)
!181 = !DILocation(line: 83, column: 28, scope: !77)
!182 = !DILocation(line: 83, column: 43, scope: !77)
!183 = !DILocation(line: 82, column: 57, scope: !77)
!184 = !DILocation(line: 84, column: 36, scope: !77)
!185 = !DILocation(line: 84, column: 28, scope: !77)
!186 = !DILocation(line: 84, column: 43, scope: !77)
!187 = !DILocation(line: 83, column: 57, scope: !77)
!188 = !DILocation(line: 85, column: 36, scope: !77)
!189 = !DILocation(line: 85, column: 28, scope: !77)
!190 = !DILocation(line: 85, column: 43, scope: !77)
!191 = !DILocation(line: 84, column: 57, scope: !77)
!192 = !DILocation(line: 86, column: 36, scope: !77)
!193 = !DILocation(line: 86, column: 28, scope: !77)
!194 = !DILocation(line: 86, column: 43, scope: !77)
!195 = !DILocation(line: 85, column: 57, scope: !77)
!196 = !DILocation(line: 86, column: 57, scope: !77)
!197 = !DILocation(line: 86, column: 71, scope: !77)
!198 = !DILocation(line: 80, column: 17, scope: !77)
!199 = !DILocation(line: 80, column: 14, scope: !77)
!200 = distinct !{!200, !115, !201, !202}
!201 = !DILocation(line: 87, column: 5, scope: !2)
!202 = !{!"llvm.loop.isvectorized", i32 1}
!203 = !DILocation(line: 55, column: 18, scope: !77)
!204 = !DILocation(line: 58, column: 19, scope: !77)
!205 = !DILocation(line: 58, column: 16, scope: !77)
!206 = !DILocation(line: 55, column: 24, scope: !77)
!207 = !DILocation(line: 59, column: 19, scope: !77)
!208 = !DILocation(line: 59, column: 16, scope: !77)
!209 = !DILocation(line: 55, column: 30, scope: !77)
!210 = !DILocation(line: 60, column: 19, scope: !77)
!211 = !DILocation(line: 60, column: 16, scope: !77)
!212 = !DILocation(line: 55, column: 36, scope: !77)
!213 = !DILocation(line: 61, column: 19, scope: !77)
!214 = !DILocation(line: 61, column: 16, scope: !77)
!215 = !DILocation(line: 55, column: 42, scope: !77)
!216 = !DILocation(line: 62, column: 19, scope: !77)
!217 = !DILocation(line: 62, column: 16, scope: !77)
!218 = !DILocation(line: 55, column: 48, scope: !77)
!219 = !DILocation(line: 63, column: 19, scope: !77)
!220 = !DILocation(line: 63, column: 16, scope: !77)
!221 = !DILocation(line: 55, column: 54, scope: !77)
!222 = !DILocation(line: 64, column: 15, scope: !77)
!223 = distinct !{!223, !115, !201, !224, !202}
!224 = !{!"llvm.loop.unroll.runtime.disable"}
!225 = !DILocation(line: 89, column: 9, scope: !2)
!226 = !DILocation(line: 0, scope: !77)
!227 = !DILocation(line: 90, column: 5, scope: !2)
!228 = !DILocation(line: 90, column: 16, scope: !2)
!229 = !DILocation(line: 90, column: 41, scope: !2)
!230 = !DILocation(line: 90, column: 39, scope: !2)
!231 = !DILocation(line: 90, column: 28, scope: !2)
!232 = !DILocation(line: 90, column: 25, scope: !2)
!233 = distinct !{!233, !234}
!234 = !{!"llvm.loop.unroll.disable"}
!235 = distinct !{!235, !227, !236}
!236 = !DILocation(line: 90, column: 43, scope: !2)
!237 = !DILocation(line: 0, scope: !2)
!238 = !DILocation(line: 91, column: 5, scope: !2)
!239 = distinct !DISubprogram(name: "redisBitpos", scope: !3, file: !3, line: 101, type: !240, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !243)
!240 = !DISubroutineType(types: !241)
!241 = !{!12, !11, !10, !242}
!242 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254}
!244 = !DILocalVariable(name: "s", arg: 1, scope: !239, file: !3, line: 101, type: !11)
!245 = !DILocalVariable(name: "count", arg: 2, scope: !239, file: !3, line: 101, type: !10)
!246 = !DILocalVariable(name: "bit", arg: 3, scope: !239, file: !3, line: 101, type: !242)
!247 = !DILocalVariable(name: "l", scope: !239, file: !3, line: 102, type: !24)
!248 = !DILocalVariable(name: "c", scope: !239, file: !3, line: 103, type: !22)
!249 = !DILocalVariable(name: "skipval", scope: !239, file: !3, line: 104, type: !10)
!250 = !DILocalVariable(name: "word", scope: !239, file: !3, line: 104, type: !10)
!251 = !DILocalVariable(name: "one", scope: !239, file: !3, line: 104, type: !10)
!252 = !DILocalVariable(name: "pos", scope: !239, file: !3, line: 105, type: !12)
!253 = !DILocalVariable(name: "j", scope: !239, file: !3, line: 106, type: !10)
!254 = !DILocalVariable(name: "found", scope: !239, file: !3, line: 107, type: !242)
!255 = !DILocation(line: 101, column: 24, scope: !239)
!256 = !DILocation(line: 101, column: 41, scope: !239)
!257 = !DILocation(line: 101, column: 52, scope: !239)
!258 = !DILocation(line: 104, column: 28, scope: !239)
!259 = !DILocation(line: 105, column: 10, scope: !239)
!260 = !DILocation(line: 119, column: 15, scope: !239)
!261 = !DILocation(line: 104, column: 19, scope: !239)
!262 = !DILocation(line: 103, column: 20, scope: !239)
!263 = !DILocation(line: 107, column: 9, scope: !239)
!264 = !DILocation(line: 122, column: 11, scope: !239)
!265 = !DILocation(line: 122, column: 28, scope: !239)
!266 = !DILocation(line: 122, column: 45, scope: !239)
!267 = !DILocation(line: 122, column: 5, scope: !239)
!268 = !DILocation(line: 123, column: 13, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !3, line: 123, column: 13)
!270 = distinct !DILexicalBlock(scope: !239, file: !3, line: 122, column: 55)
!271 = !DILocation(line: 123, column: 16, scope: !269)
!272 = !DILocation(line: 123, column: 13, scope: !270)
!273 = !DILocation(line: 133, column: 9, scope: !239)
!274 = !DILocation(line: 102, column: 20, scope: !239)
!275 = !DILocation(line: 134, column: 9, scope: !239)
!276 = !DILocation(line: 127, column: 10, scope: !270)
!277 = !DILocation(line: 128, column: 14, scope: !270)
!278 = !DILocation(line: 129, column: 13, scope: !270)
!279 = distinct !{!279, !267, !280}
!280 = !DILocation(line: 130, column: 5, scope: !239)
!281 = !DILocation(line: 0, scope: !270)
!282 = !DILocation(line: 135, column: 19, scope: !283)
!283 = distinct !DILexicalBlock(scope: !284, file: !3, line: 134, column: 17)
!284 = distinct !DILexicalBlock(scope: !239, file: !3, line: 134, column: 9)
!285 = !DILocation(line: 136, column: 22, scope: !283)
!286 = !DILocation(line: 136, column: 9, scope: !283)
!287 = !DILocation(line: 137, column: 17, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !3, line: 137, column: 17)
!289 = distinct !DILexicalBlock(scope: !283, file: !3, line: 136, column: 37)
!290 = !{!291, !291, i64 0}
!291 = !{!"long", !104, i64 0}
!292 = !DILocation(line: 137, column: 20, scope: !288)
!293 = !DILocation(line: 137, column: 17, scope: !289)
!294 = !DILocation(line: 138, column: 14, scope: !289)
!295 = !DILocation(line: 139, column: 19, scope: !289)
!296 = !DILocation(line: 140, column: 17, scope: !289)
!297 = distinct !{!297, !286, !298}
!298 = !DILocation(line: 141, column: 9, scope: !283)
!299 = !DILocation(line: 133, column: 7, scope: !239)
!300 = !DILocation(line: 106, column: 19, scope: !239)
!301 = !DILocation(line: 154, column: 13, scope: !302)
!302 = distinct !DILexicalBlock(scope: !303, file: !3, line: 154, column: 13)
!303 = distinct !DILexicalBlock(scope: !304, file: !3, line: 152, column: 38)
!304 = distinct !DILexicalBlock(scope: !305, file: !3, line: 152, column: 5)
!305 = distinct !DILexicalBlock(scope: !239, file: !3, line: 152, column: 5)
!306 = !DILocation(line: 154, column: 13, scope: !303)
!307 = !DILocation(line: 151, column: 9, scope: !239)
!308 = !DILocation(line: 155, column: 21, scope: !309)
!309 = distinct !DILexicalBlock(scope: !302, file: !3, line: 154, column: 20)
!310 = !DILocation(line: 158, column: 9, scope: !309)
!311 = !DILocation(line: 104, column: 38, scope: !239)
!312 = !DILocation(line: 177, column: 19, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !3, line: 177, column: 13)
!314 = distinct !DILexicalBlock(scope: !239, file: !3, line: 176, column: 16)
!315 = !DILocation(line: 177, column: 27, scope: !313)
!316 = !DILocation(line: 177, column: 33, scope: !313)
!317 = !DILocation(line: 177, column: 13, scope: !314)
!318 = !DILocation(line: 179, column: 13, scope: !314)
!319 = !DILocation(line: 184, column: 5, scope: !239)
!320 = !DILocation(line: 178, column: 12, scope: !314)
!321 = !DILocation(line: 186, column: 1, scope: !239)
!322 = !DILocation(line: 0, scope: !313)
!323 = !DILocation(line: 153, column: 14, scope: !303)
!324 = !DILocation(line: 156, column: 14, scope: !309)
!325 = !DILocation(line: 155, column: 18, scope: !309)
!326 = !DILocation(line: 157, column: 18, scope: !309)
!327 = !DILocation(line: 0, scope: !303)
!328 = !DILocation(line: 166, column: 13, scope: !329)
!329 = distinct !DILexicalBlock(scope: !239, file: !3, line: 166, column: 9)
!330 = !DILocation(line: 166, column: 26, scope: !329)
!331 = !DILocation(line: 166, column: 18, scope: !329)
!332 = !DILocation(line: 176, column: 5, scope: !239)
!333 = distinct !{!333, !332, !334}
!334 = !DILocation(line: 180, column: 5, scope: !239)
!335 = distinct !DISubprogram(name: "setUnsignedBitfield", scope: !3, file: !3, line: 209, type: !336, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !338)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !22, !25, !25, !25}
!338 = !{!339, !340, !341, !342, !343, !344, !345, !346, !347}
!339 = !DILocalVariable(name: "p", arg: 1, scope: !335, file: !3, line: 209, type: !22)
!340 = !DILocalVariable(name: "offset", arg: 2, scope: !335, file: !3, line: 209, type: !25)
!341 = !DILocalVariable(name: "bits", arg: 3, scope: !335, file: !3, line: 209, type: !25)
!342 = !DILocalVariable(name: "value", arg: 4, scope: !335, file: !3, line: 209, type: !25)
!343 = !DILocalVariable(name: "byte", scope: !335, file: !3, line: 210, type: !25)
!344 = !DILocalVariable(name: "bit", scope: !335, file: !3, line: 210, type: !25)
!345 = !DILocalVariable(name: "byteval", scope: !335, file: !3, line: 210, type: !25)
!346 = !DILocalVariable(name: "bitval", scope: !335, file: !3, line: 210, type: !25)
!347 = !DILocalVariable(name: "j", scope: !335, file: !3, line: 210, type: !25)
!348 = !DILocation(line: 209, column: 41, scope: !335)
!349 = !DILocation(line: 209, column: 53, scope: !335)
!350 = !DILocation(line: 209, column: 70, scope: !335)
!351 = !DILocation(line: 209, column: 85, scope: !335)
!352 = !DILocation(line: 210, column: 42, scope: !335)
!353 = !DILocation(line: 212, column: 19, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !3, line: 212, column: 5)
!355 = distinct !DILexicalBlock(scope: !335, file: !3, line: 212, column: 5)
!356 = !DILocation(line: 212, column: 5, scope: !355)
!357 = !DILocation(line: 213, column: 48, scope: !358)
!358 = distinct !DILexicalBlock(scope: !354, file: !3, line: 212, column: 32)
!359 = !DILocation(line: 213, column: 39, scope: !358)
!360 = !DILocation(line: 213, column: 25, scope: !358)
!361 = !DILocation(line: 213, column: 54, scope: !358)
!362 = !DILocation(line: 213, column: 18, scope: !358)
!363 = !DILocation(line: 210, column: 34, scope: !335)
!364 = !DILocation(line: 214, column: 23, scope: !358)
!365 = !DILocation(line: 210, column: 14, scope: !335)
!366 = !DILocation(line: 215, column: 27, scope: !358)
!367 = !DILocation(line: 215, column: 17, scope: !358)
!368 = !DILocation(line: 210, column: 20, scope: !335)
!369 = !DILocation(line: 216, column: 19, scope: !358)
!370 = !DILocation(line: 210, column: 25, scope: !335)
!371 = !DILocation(line: 217, column: 24, scope: !358)
!372 = !DILocation(line: 217, column: 20, scope: !358)
!373 = !DILocation(line: 217, column: 17, scope: !358)
!374 = !DILocation(line: 218, column: 27, scope: !358)
!375 = !DILocation(line: 219, column: 27, scope: !358)
!376 = !DILocation(line: 219, column: 19, scope: !358)
!377 = !DILocation(line: 219, column: 17, scope: !358)
!378 = !DILocation(line: 220, column: 15, scope: !358)
!379 = !DILocation(line: 212, column: 28, scope: !354)
!380 = distinct !{!380, !356, !381}
!381 = !DILocation(line: 221, column: 5, scope: !355)
!382 = !DILocation(line: 222, column: 1, scope: !335)
!383 = distinct !DISubprogram(name: "setSignedBitfield", scope: !3, file: !3, line: 224, type: !384, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !386)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !22, !25, !25, !27}
!386 = !{!387, !388, !389, !390, !391}
!387 = !DILocalVariable(name: "p", arg: 1, scope: !383, file: !3, line: 224, type: !22)
!388 = !DILocalVariable(name: "offset", arg: 2, scope: !383, file: !3, line: 224, type: !25)
!389 = !DILocalVariable(name: "bits", arg: 3, scope: !383, file: !3, line: 224, type: !25)
!390 = !DILocalVariable(name: "value", arg: 4, scope: !383, file: !3, line: 224, type: !27)
!391 = !DILocalVariable(name: "uv", scope: !383, file: !3, line: 225, type: !25)
!392 = !DILocation(line: 224, column: 39, scope: !383)
!393 = !DILocation(line: 224, column: 51, scope: !383)
!394 = !DILocation(line: 224, column: 68, scope: !383)
!395 = !DILocation(line: 224, column: 82, scope: !383)
!396 = !DILocation(line: 225, column: 14, scope: !383)
!397 = !DILocation(line: 209, column: 41, scope: !335, inlinedAt: !398)
!398 = distinct !DILocation(line: 226, column: 5, scope: !383)
!399 = !DILocation(line: 209, column: 53, scope: !335, inlinedAt: !398)
!400 = !DILocation(line: 209, column: 70, scope: !335, inlinedAt: !398)
!401 = !DILocation(line: 209, column: 85, scope: !335, inlinedAt: !398)
!402 = !DILocation(line: 210, column: 42, scope: !335, inlinedAt: !398)
!403 = !DILocation(line: 212, column: 19, scope: !354, inlinedAt: !398)
!404 = !DILocation(line: 212, column: 5, scope: !355, inlinedAt: !398)
!405 = !DILocation(line: 213, column: 48, scope: !358, inlinedAt: !398)
!406 = !DILocation(line: 213, column: 39, scope: !358, inlinedAt: !398)
!407 = !DILocation(line: 213, column: 25, scope: !358, inlinedAt: !398)
!408 = !DILocation(line: 213, column: 54, scope: !358, inlinedAt: !398)
!409 = !DILocation(line: 213, column: 18, scope: !358, inlinedAt: !398)
!410 = !DILocation(line: 210, column: 34, scope: !335, inlinedAt: !398)
!411 = !DILocation(line: 214, column: 23, scope: !358, inlinedAt: !398)
!412 = !DILocation(line: 210, column: 14, scope: !335, inlinedAt: !398)
!413 = !DILocation(line: 215, column: 27, scope: !358, inlinedAt: !398)
!414 = !DILocation(line: 215, column: 17, scope: !358, inlinedAt: !398)
!415 = !DILocation(line: 210, column: 20, scope: !335, inlinedAt: !398)
!416 = !DILocation(line: 216, column: 19, scope: !358, inlinedAt: !398)
!417 = !DILocation(line: 210, column: 25, scope: !335, inlinedAt: !398)
!418 = !DILocation(line: 217, column: 24, scope: !358, inlinedAt: !398)
!419 = !DILocation(line: 217, column: 20, scope: !358, inlinedAt: !398)
!420 = !DILocation(line: 217, column: 17, scope: !358, inlinedAt: !398)
!421 = !DILocation(line: 218, column: 27, scope: !358, inlinedAt: !398)
!422 = !DILocation(line: 219, column: 27, scope: !358, inlinedAt: !398)
!423 = !DILocation(line: 219, column: 19, scope: !358, inlinedAt: !398)
!424 = !DILocation(line: 219, column: 17, scope: !358, inlinedAt: !398)
!425 = !DILocation(line: 220, column: 15, scope: !358, inlinedAt: !398)
!426 = !DILocation(line: 212, column: 28, scope: !354, inlinedAt: !398)
!427 = !DILocation(line: 222, column: 1, scope: !335, inlinedAt: !398)
!428 = !DILocation(line: 227, column: 1, scope: !383)
!429 = distinct !DISubprogram(name: "getUnsignedBitfield", scope: !3, file: !3, line: 229, type: !430, isLocal: false, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !432)
!430 = !DISubroutineType(types: !431)
!431 = !{!25, !22, !25, !25}
!432 = !{!433, !434, !435, !436, !437, !438, !439, !440, !441}
!433 = !DILocalVariable(name: "p", arg: 1, scope: !429, file: !3, line: 229, type: !22)
!434 = !DILocalVariable(name: "offset", arg: 2, scope: !429, file: !3, line: 229, type: !25)
!435 = !DILocalVariable(name: "bits", arg: 3, scope: !429, file: !3, line: 229, type: !25)
!436 = !DILocalVariable(name: "byte", scope: !429, file: !3, line: 230, type: !25)
!437 = !DILocalVariable(name: "bit", scope: !429, file: !3, line: 230, type: !25)
!438 = !DILocalVariable(name: "byteval", scope: !429, file: !3, line: 230, type: !25)
!439 = !DILocalVariable(name: "bitval", scope: !429, file: !3, line: 230, type: !25)
!440 = !DILocalVariable(name: "j", scope: !429, file: !3, line: 230, type: !25)
!441 = !DILocalVariable(name: "value", scope: !429, file: !3, line: 230, type: !25)
!442 = !DILocation(line: 229, column: 45, scope: !429)
!443 = !DILocation(line: 229, column: 57, scope: !429)
!444 = !DILocation(line: 229, column: 74, scope: !429)
!445 = !DILocation(line: 230, column: 45, scope: !429)
!446 = !DILocation(line: 230, column: 42, scope: !429)
!447 = !DILocation(line: 232, column: 19, scope: !448)
!448 = distinct !DILexicalBlock(scope: !449, file: !3, line: 232, column: 5)
!449 = distinct !DILexicalBlock(scope: !429, file: !3, line: 232, column: 5)
!450 = !DILocation(line: 232, column: 5, scope: !449)
!451 = !DILocation(line: 233, column: 23, scope: !452)
!452 = distinct !DILexicalBlock(scope: !448, file: !3, line: 232, column: 32)
!453 = !DILocation(line: 230, column: 14, scope: !429)
!454 = !DILocation(line: 234, column: 27, scope: !452)
!455 = !DILocation(line: 234, column: 17, scope: !452)
!456 = !DILocation(line: 230, column: 20, scope: !429)
!457 = !DILocation(line: 235, column: 19, scope: !452)
!458 = !DILocation(line: 230, column: 25, scope: !429)
!459 = !DILocation(line: 236, column: 27, scope: !452)
!460 = !DILocation(line: 236, column: 35, scope: !452)
!461 = !DILocation(line: 230, column: 34, scope: !429)
!462 = !DILocation(line: 237, column: 23, scope: !452)
!463 = !DILocation(line: 237, column: 28, scope: !452)
!464 = !DILocation(line: 238, column: 15, scope: !452)
!465 = distinct !{!465, !450, !466}
!466 = !DILocation(line: 239, column: 5, scope: !449)
!467 = !DILocation(line: 240, column: 5, scope: !429)
!468 = !DILocation(line: 0, scope: !452)
!469 = distinct !DISubprogram(name: "getSignedBitfield", scope: !3, file: !3, line: 243, type: !470, isLocal: false, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !472)
!470 = !DISubroutineType(types: !471)
!471 = !{!27, !22, !25, !25}
!472 = !{!473, !474, !475, !476, !477}
!473 = !DILocalVariable(name: "p", arg: 1, scope: !469, file: !3, line: 243, type: !22)
!474 = !DILocalVariable(name: "offset", arg: 2, scope: !469, file: !3, line: 243, type: !25)
!475 = !DILocalVariable(name: "bits", arg: 3, scope: !469, file: !3, line: 243, type: !25)
!476 = !DILocalVariable(name: "value", scope: !469, file: !3, line: 244, type: !27)
!477 = !DILocalVariable(name: "conv", scope: !469, file: !3, line: 245, type: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !469, file: !3, line: 245, size: 64, elements: !479)
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !478, file: !3, line: 245, baseType: !25, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !478, file: !3, line: 245, baseType: !27, size: 64)
!482 = !DILocation(line: 243, column: 42, scope: !469)
!483 = !DILocation(line: 243, column: 54, scope: !469)
!484 = !DILocation(line: 243, column: 71, scope: !469)
!485 = !DILocation(line: 229, column: 45, scope: !429, inlinedAt: !486)
!486 = distinct !DILocation(line: 254, column: 14, scope: !469)
!487 = !DILocation(line: 229, column: 57, scope: !429, inlinedAt: !486)
!488 = !DILocation(line: 229, column: 74, scope: !429, inlinedAt: !486)
!489 = !DILocation(line: 230, column: 45, scope: !429, inlinedAt: !486)
!490 = !DILocation(line: 230, column: 42, scope: !429, inlinedAt: !486)
!491 = !DILocation(line: 232, column: 19, scope: !448, inlinedAt: !486)
!492 = !DILocation(line: 232, column: 5, scope: !449, inlinedAt: !486)
!493 = !DILocation(line: 233, column: 23, scope: !452, inlinedAt: !486)
!494 = !DILocation(line: 230, column: 14, scope: !429, inlinedAt: !486)
!495 = !DILocation(line: 234, column: 27, scope: !452, inlinedAt: !486)
!496 = !DILocation(line: 234, column: 17, scope: !452, inlinedAt: !486)
!497 = !DILocation(line: 230, column: 20, scope: !429, inlinedAt: !486)
!498 = !DILocation(line: 235, column: 19, scope: !452, inlinedAt: !486)
!499 = !DILocation(line: 230, column: 25, scope: !429, inlinedAt: !486)
!500 = !DILocation(line: 236, column: 27, scope: !452, inlinedAt: !486)
!501 = !DILocation(line: 236, column: 35, scope: !452, inlinedAt: !486)
!502 = !DILocation(line: 230, column: 34, scope: !429, inlinedAt: !486)
!503 = !DILocation(line: 237, column: 23, scope: !452, inlinedAt: !486)
!504 = !DILocation(line: 237, column: 28, scope: !452, inlinedAt: !486)
!505 = !DILocation(line: 238, column: 15, scope: !452, inlinedAt: !486)
!506 = !DILocation(line: 240, column: 5, scope: !429, inlinedAt: !486)
!507 = !DILocation(line: 0, scope: !452, inlinedAt: !486)
!508 = !DILocation(line: 245, column: 36, scope: !469)
!509 = !DILocation(line: 244, column: 13, scope: !469)
!510 = !DILocation(line: 260, column: 38, scope: !511)
!511 = distinct !DILexicalBlock(scope: !469, file: !3, line: 260, column: 9)
!512 = !DILocation(line: 260, column: 30, scope: !511)
!513 = !DILocation(line: 260, column: 15, scope: !511)
!514 = !DILocation(line: 261, column: 33, scope: !511)
!515 = !DILocation(line: 260, column: 9, scope: !469)
!516 = !DILocation(line: 262, column: 5, scope: !469)
!517 = distinct !DISubprogram(name: "checkUnsignedBitfieldOverflow", scope: !3, file: !3, line: 288, type: !518, isLocal: false, isDefinition: true, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !521)
!518 = !DISubroutineType(types: !519)
!519 = !{!242, !25, !27, !25, !242, !520}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!521 = !{!522, !523, !524, !525, !526, !527, !528, !529, !530, !532}
!522 = !DILocalVariable(name: "value", arg: 1, scope: !517, file: !3, line: 288, type: !25)
!523 = !DILocalVariable(name: "incr", arg: 2, scope: !517, file: !3, line: 288, type: !27)
!524 = !DILocalVariable(name: "bits", arg: 3, scope: !517, file: !3, line: 288, type: !25)
!525 = !DILocalVariable(name: "owtype", arg: 4, scope: !517, file: !3, line: 288, type: !242)
!526 = !DILocalVariable(name: "limit", arg: 5, scope: !517, file: !3, line: 288, type: !520)
!527 = !DILocalVariable(name: "max", scope: !517, file: !3, line: 289, type: !25)
!528 = !DILocalVariable(name: "maxincr", scope: !517, file: !3, line: 290, type: !27)
!529 = !DILocalVariable(name: "minincr", scope: !517, file: !3, line: 291, type: !27)
!530 = !DILocalVariable(name: "mask", scope: !531, file: !3, line: 316, type: !25)
!531 = distinct !DILexicalBlock(scope: !517, file: !3, line: 315, column: 5)
!532 = !DILocalVariable(name: "res", scope: !531, file: !3, line: 317, type: !25)
!533 = !DILocation(line: 288, column: 44, scope: !517)
!534 = !DILocation(line: 288, column: 59, scope: !517)
!535 = !DILocation(line: 288, column: 74, scope: !517)
!536 = !DILocation(line: 288, column: 84, scope: !517)
!537 = !DILocation(line: 288, column: 102, scope: !517)
!538 = !DILocation(line: 289, column: 26, scope: !517)
!539 = !DILocation(line: 289, column: 68, scope: !517)
!540 = !DILocation(line: 289, column: 20, scope: !517)
!541 = !DILocation(line: 289, column: 14, scope: !517)
!542 = !DILocation(line: 291, column: 23, scope: !517)
!543 = !DILocation(line: 291, column: 13, scope: !517)
!544 = !DILocation(line: 293, column: 15, scope: !545)
!545 = distinct !DILexicalBlock(scope: !517, file: !3, line: 293, column: 9)
!546 = !DILocation(line: 293, column: 21, scope: !545)
!547 = !DILocation(line: 290, column: 26, scope: !517)
!548 = !DILocation(line: 290, column: 13, scope: !517)
!549 = !DILocation(line: 293, column: 30, scope: !545)
!550 = !DILocation(line: 293, column: 42, scope: !545)
!551 = !DILocation(line: 293, column: 34, scope: !545)
!552 = !DILocation(line: 294, column: 13, scope: !553)
!553 = distinct !DILexicalBlock(scope: !554, file: !3, line: 294, column: 13)
!554 = distinct !DILexicalBlock(scope: !545, file: !3, line: 293, column: 54)
!555 = !DILocation(line: 294, column: 13, scope: !554)
!556 = !DILocation(line: 295, column: 17, scope: !557)
!557 = distinct !DILexicalBlock(scope: !553, file: !3, line: 294, column: 20)
!558 = !DILocation(line: 298, column: 24, scope: !559)
!559 = distinct !DILexicalBlock(scope: !560, file: !3, line: 297, column: 50)
!560 = distinct !DILexicalBlock(scope: !561, file: !3, line: 297, column: 24)
!561 = distinct !DILexicalBlock(scope: !557, file: !3, line: 295, column: 17)
!562 = !DILocation(line: 299, column: 13, scope: !559)
!563 = !DILocation(line: 302, column: 21, scope: !564)
!564 = distinct !DILexicalBlock(scope: !545, file: !3, line: 302, column: 16)
!565 = !DILocation(line: 302, column: 33, scope: !564)
!566 = !DILocation(line: 302, column: 25, scope: !564)
!567 = !DILocation(line: 303, column: 13, scope: !568)
!568 = distinct !DILexicalBlock(scope: !569, file: !3, line: 303, column: 13)
!569 = distinct !DILexicalBlock(scope: !564, file: !3, line: 302, column: 44)
!570 = !DILocation(line: 303, column: 13, scope: !569)
!571 = !DILocation(line: 304, column: 17, scope: !572)
!572 = distinct !DILexicalBlock(scope: !568, file: !3, line: 303, column: 20)
!573 = !DILocation(line: 307, column: 24, scope: !574)
!574 = distinct !DILexicalBlock(scope: !575, file: !3, line: 306, column: 50)
!575 = distinct !DILexicalBlock(scope: !576, file: !3, line: 306, column: 24)
!576 = distinct !DILexicalBlock(scope: !572, file: !3, line: 304, column: 17)
!577 = !DILocation(line: 308, column: 13, scope: !574)
!578 = !DILocation(line: 316, column: 18, scope: !531)
!579 = !DILocation(line: 317, column: 29, scope: !531)
!580 = !DILocation(line: 317, column: 18, scope: !531)
!581 = !DILocation(line: 319, column: 13, scope: !531)
!582 = !DILocation(line: 320, column: 16, scope: !531)
!583 = !DILocation(line: 322, column: 5, scope: !517)
!584 = !DILocation(line: 0, scope: !517)
!585 = !DILocation(line: 323, column: 1, scope: !517)
!586 = distinct !DISubprogram(name: "checkSignedBitfieldOverflow", scope: !3, file: !3, line: 325, type: !587, isLocal: false, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !590)
!587 = !DISubroutineType(types: !588)
!588 = !{!242, !27, !27, !25, !242, !589}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!590 = !{!591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !602, !603, !604, !605}
!591 = !DILocalVariable(name: "value", arg: 1, scope: !586, file: !3, line: 325, type: !27)
!592 = !DILocalVariable(name: "incr", arg: 2, scope: !586, file: !3, line: 325, type: !27)
!593 = !DILocalVariable(name: "bits", arg: 3, scope: !586, file: !3, line: 325, type: !25)
!594 = !DILocalVariable(name: "owtype", arg: 4, scope: !586, file: !3, line: 325, type: !242)
!595 = !DILocalVariable(name: "limit", arg: 5, scope: !586, file: !3, line: 325, type: !589)
!596 = !DILocalVariable(name: "max", scope: !586, file: !3, line: 326, type: !27)
!597 = !DILocalVariable(name: "min", scope: !586, file: !3, line: 327, type: !27)
!598 = !DILocalVariable(name: "maxincr", scope: !586, file: !3, line: 332, type: !27)
!599 = !DILocalVariable(name: "minincr", scope: !586, file: !3, line: 333, type: !27)
!600 = !DILocalVariable(name: "mask", scope: !601, file: !3, line: 359, type: !25)
!601 = distinct !DILexicalBlock(scope: !586, file: !3, line: 358, column: 5)
!602 = !DILocalVariable(name: "msb", scope: !601, file: !3, line: 360, type: !25)
!603 = !DILocalVariable(name: "a", scope: !601, file: !3, line: 361, type: !25)
!604 = !DILocalVariable(name: "b", scope: !601, file: !3, line: 361, type: !25)
!605 = !DILocalVariable(name: "c", scope: !601, file: !3, line: 361, type: !25)
!606 = !DILocation(line: 325, column: 41, scope: !586)
!607 = !DILocation(line: 325, column: 56, scope: !586)
!608 = !DILocation(line: 325, column: 71, scope: !586)
!609 = !DILocation(line: 325, column: 81, scope: !586)
!610 = !DILocation(line: 325, column: 98, scope: !586)
!611 = !DILocation(line: 326, column: 25, scope: !586)
!612 = !DILocation(line: 326, column: 19, scope: !586)
!613 = !DILocation(line: 326, column: 65, scope: !586)
!614 = !DILocation(line: 326, column: 69, scope: !586)
!615 = !DILocation(line: 326, column: 13, scope: !586)
!616 = !DILocation(line: 327, column: 13, scope: !586)
!617 = !DILocation(line: 335, column: 15, scope: !618)
!618 = distinct !DILexicalBlock(scope: !586, file: !3, line: 335, column: 9)
!619 = !DILocation(line: 332, column: 26, scope: !586)
!620 = !DILocation(line: 335, column: 44, scope: !618)
!621 = !DILocation(line: 335, column: 21, scope: !618)
!622 = !DILocation(line: 335, column: 65, scope: !618)
!623 = !DILocation(line: 335, column: 78, scope: !618)
!624 = !DILocation(line: 335, column: 70, scope: !618)
!625 = !DILocation(line: 337, column: 13, scope: !626)
!626 = distinct !DILexicalBlock(scope: !627, file: !3, line: 337, column: 13)
!627 = distinct !DILexicalBlock(scope: !618, file: !3, line: 336, column: 5)
!628 = !DILocation(line: 337, column: 13, scope: !627)
!629 = !DILocation(line: 338, column: 17, scope: !630)
!630 = distinct !DILexicalBlock(scope: !626, file: !3, line: 337, column: 20)
!631 = !DILocation(line: 341, column: 24, scope: !632)
!632 = distinct !DILexicalBlock(scope: !633, file: !3, line: 340, column: 50)
!633 = distinct !DILexicalBlock(scope: !634, file: !3, line: 340, column: 24)
!634 = distinct !DILexicalBlock(scope: !630, file: !3, line: 338, column: 17)
!635 = !DILocation(line: 342, column: 13, scope: !632)
!636 = !DILocation(line: 333, column: 26, scope: !586)
!637 = !DILocation(line: 345, column: 22, scope: !638)
!638 = distinct !DILexicalBlock(scope: !618, file: !3, line: 345, column: 16)
!639 = !DILocation(line: 345, column: 51, scope: !638)
!640 = !DILocation(line: 345, column: 43, scope: !638)
!641 = !DILocation(line: 345, column: 28, scope: !638)
!642 = !DILocation(line: 345, column: 76, scope: !638)
!643 = !DILocation(line: 346, column: 13, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !3, line: 346, column: 13)
!645 = distinct !DILexicalBlock(scope: !638, file: !3, line: 345, column: 108)
!646 = !DILocation(line: 346, column: 13, scope: !645)
!647 = !DILocation(line: 347, column: 17, scope: !648)
!648 = distinct !DILexicalBlock(scope: !644, file: !3, line: 346, column: 20)
!649 = !DILocation(line: 350, column: 24, scope: !650)
!650 = distinct !DILexicalBlock(scope: !651, file: !3, line: 349, column: 50)
!651 = distinct !DILexicalBlock(scope: !652, file: !3, line: 349, column: 24)
!652 = distinct !DILexicalBlock(scope: !648, file: !3, line: 347, column: 17)
!653 = !DILocation(line: 351, column: 13, scope: !650)
!654 = !DILocation(line: 359, column: 40, scope: !601)
!655 = !DILocation(line: 359, column: 18, scope: !601)
!656 = !DILocation(line: 360, column: 44, scope: !601)
!657 = !DILocation(line: 360, column: 36, scope: !601)
!658 = !DILocation(line: 360, column: 18, scope: !601)
!659 = !DILocation(line: 361, column: 18, scope: !601)
!660 = !DILocation(line: 361, column: 29, scope: !601)
!661 = !DILocation(line: 362, column: 14, scope: !601)
!662 = !DILocation(line: 361, column: 39, scope: !601)
!663 = !DILocation(line: 367, column: 15, scope: !664)
!664 = distinct !DILexicalBlock(scope: !601, file: !3, line: 367, column: 13)
!665 = !DILocation(line: 368, column: 15, scope: !666)
!666 = distinct !DILexicalBlock(scope: !664, file: !3, line: 367, column: 22)
!667 = !DILocation(line: 370, column: 18, scope: !668)
!668 = distinct !DILexicalBlock(scope: !664, file: !3, line: 369, column: 16)
!669 = !DILocation(line: 370, column: 15, scope: !668)
!670 = !DILocation(line: 367, column: 13, scope: !601)
!671 = !DILocation(line: 372, column: 16, scope: !601)
!672 = !DILocation(line: 374, column: 5, scope: !586)
!673 = !DILocation(line: 0, scope: !586)
!674 = !DILocation(line: 375, column: 1, scope: !586)
!675 = distinct !DISubprogram(name: "printBits", scope: !3, file: !3, line: 379, type: !676, isLocal: false, isDefinition: true, scopeLine: 379, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !678)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !22, !10}
!678 = !{!679, !680, !681, !682, !683}
!679 = !DILocalVariable(name: "p", arg: 1, scope: !675, file: !3, line: 379, type: !22)
!680 = !DILocalVariable(name: "count", arg: 2, scope: !675, file: !3, line: 379, type: !10)
!681 = !DILocalVariable(name: "j", scope: !675, file: !3, line: 380, type: !10)
!682 = !DILocalVariable(name: "i", scope: !675, file: !3, line: 380, type: !10)
!683 = !DILocalVariable(name: "byte", scope: !675, file: !3, line: 380, type: !10)
!684 = !DILocation(line: 379, column: 31, scope: !675)
!685 = !DILocation(line: 379, column: 48, scope: !675)
!686 = !DILocation(line: 380, column: 19, scope: !675)
!687 = !DILocation(line: 382, column: 19, scope: !688)
!688 = distinct !DILexicalBlock(scope: !689, file: !3, line: 382, column: 5)
!689 = distinct !DILexicalBlock(scope: !675, file: !3, line: 382, column: 5)
!690 = !DILocation(line: 382, column: 5, scope: !689)
!691 = !DILocation(line: 383, column: 16, scope: !692)
!692 = distinct !DILexicalBlock(scope: !688, file: !3, line: 382, column: 33)
!693 = !DILocation(line: 380, column: 25, scope: !675)
!694 = !DILocation(line: 380, column: 22, scope: !675)
!695 = !DILocation(line: 385, column: 26, scope: !696)
!696 = distinct !DILexicalBlock(scope: !697, file: !3, line: 384, column: 9)
!697 = distinct !DILexicalBlock(scope: !692, file: !3, line: 384, column: 9)
!698 = !DILocation(line: 385, column: 13, scope: !696)
!699 = !DILocation(line: 385, column: 32, scope: !696)
!700 = !DILocation(line: 386, column: 9, scope: !692)
!701 = !DILocation(line: 382, column: 29, scope: !688)
!702 = distinct !{!702, !690, !703}
!703 = !DILocation(line: 387, column: 5, scope: !689)
!704 = !DILocation(line: 388, column: 5, scope: !675)
!705 = !DILocation(line: 389, column: 1, scope: !675)
!706 = distinct !DISubprogram(name: "getBitOffsetFromArgument", scope: !3, file: !3, line: 411, type: !707, isLocal: false, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !946)
!707 = !DISubroutineType(types: !708)
!708 = !{!242, !709, !819, !945, !242, !242}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !711, line: 780, baseType: !712)
!711 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !711, line: 723, size: 135360, elements: !713)
!713 = !{!714, !715, !716, !818, !828, !831, !832, !833, !834, !835, !837, !861, !862, !863, !864, !865, !866, !867, !868, !871, !872, !873, !874, !875, !876, !877, !878, !883, !884, !885, !886, !887, !888, !889, !890, !894, !895, !899, !900, !916, !917, !934, !935, !936, !937, !938, !939, !940, !941}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !712, file: !711, line: 724, baseType: !25, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !712, file: !711, line: 725, baseType: !242, size: 32, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !712, file: !711, line: 726, baseType: !717, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !711, line: 656, baseType: !719)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !711, line: 647, size: 512, elements: !720)
!720 = !{!721, !782, !783, !784, !785, !786, !787, !789}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !719, file: !711, line: 648, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !724, line: 82, baseType: !725)
!724 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !724, line: 76, size: 768, elements: !726)
!726 = !{!727, !752, !753, !780, !781}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !725, file: !724, line: 77, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !724, line: 65, baseType: !730)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !724, line: 58, size: 384, elements: !731)
!731 = !{!732, !738, !742, !743, !747, !751}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !730, file: !724, line: 59, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!25, !736}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !730, file: !724, line: 60, baseType: !739, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!11, !11, !736}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !730, file: !724, line: 61, baseType: !739, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !730, file: !724, line: 62, baseType: !744, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!242, !11, !736, !736}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !730, file: !724, line: 63, baseType: !748, size: 64, offset: 256)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{null, !11, !11}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !730, file: !724, line: 64, baseType: !748, size: 64, offset: 320)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !725, file: !724, line: 78, baseType: !11, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !725, file: !724, line: 79, baseType: !754, size: 512, offset: 128)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, size: 512, elements: !778)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !724, line: 74, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !724, line: 69, size: 256, elements: !757)
!757 = !{!758, !775, !776, !777}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !756, file: !724, line: 70, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !724, line: 56, baseType: !762)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !724, line: 47, size: 192, elements: !763)
!763 = !{!764, !765, !773}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !762, file: !724, line: 48, baseType: !11, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !762, file: !724, line: 54, baseType: !766, size: 64, offset: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !762, file: !724, line: 49, size: 64, elements: !767)
!767 = !{!768, !769, !770, !771}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !766, file: !724, line: 50, baseType: !11, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !766, file: !724, line: 51, baseType: !25, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !766, file: !724, line: 52, baseType: !27, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !766, file: !724, line: 53, baseType: !772, size: 64)
!772 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !762, file: !724, line: 55, baseType: !774, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !756, file: !724, line: 71, baseType: !10, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !756, file: !724, line: 72, baseType: !10, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !756, file: !724, line: 73, baseType: !10, size: 64, offset: 192)
!778 = !{!779}
!779 = !DISubrange(count: 2)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !725, file: !724, line: 80, baseType: !12, size: 64, offset: 640)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !725, file: !724, line: 81, baseType: !10, size: 64, offset: 704)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !719, file: !711, line: 649, baseType: !722, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !719, file: !711, line: 650, baseType: !722, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !719, file: !711, line: 651, baseType: !722, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !719, file: !711, line: 652, baseType: !722, size: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !719, file: !711, line: 653, baseType: !242, size: 32, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !719, file: !711, line: 654, baseType: !788, size: 64, offset: 384)
!788 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !719, file: !711, line: 655, baseType: !790, size: 64, offset: 448)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !792, line: 54, baseType: !793)
!792 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !792, line: 47, size: 384, elements: !794)
!794 = !{!795, !804, !805, !809, !813, !817}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !793, file: !792, line: 48, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !792, line: 40, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !792, line: 36, size: 192, elements: !799)
!799 = !{!800, !802, !803}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !798, file: !792, line: 37, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !798, file: !792, line: 38, baseType: !801, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !798, file: !792, line: 39, baseType: !11, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !793, file: !792, line: 49, baseType: !796, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !793, file: !792, line: 50, baseType: !806, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!11, !11}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !793, file: !792, line: 51, baseType: !810, size: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{null, !11}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !793, file: !792, line: 52, baseType: !814, size: 64, offset: 256)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!242, !11, !11}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !793, file: !792, line: 53, baseType: !10, size: 64, offset: 320)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !712, file: !711, line: 727, baseType: !819, size: 64, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !711, line: 622, baseType: !821)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !711, line: 614, size: 128, elements: !822)
!822 = !{!823, !824, !825, !826, !827}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !821, file: !711, line: 615, baseType: !21, size: 4, flags: DIFlagBitField, extraData: i64 0)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !821, file: !711, line: 616, baseType: !21, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !821, file: !711, line: 617, baseType: !21, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !821, file: !711, line: 620, baseType: !242, size: 32, offset: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !821, file: !711, line: 621, baseType: !11, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !712, file: !711, line: 728, baseType: !829, size: 64, offset: 256)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !35, line: 43, baseType: !830)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !712, file: !711, line: 729, baseType: !6, size: 64, offset: 320)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !712, file: !711, line: 730, baseType: !829, size: 64, offset: 384)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !712, file: !711, line: 734, baseType: !6, size: 64, offset: 448)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !712, file: !711, line: 735, baseType: !242, size: 32, offset: 512)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !712, file: !711, line: 736, baseType: !836, size: 64, offset: 576)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !712, file: !711, line: 737, baseType: !838, size: 64, offset: 640)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !711, line: 1307, size: 640, elements: !840)
!840 = !{!841, !842, !847, !848, !849, !850, !856, !857, !858, !859, !860}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !839, file: !711, line: 1308, baseType: !830, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !839, file: !711, line: 1309, baseType: !843, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !711, line: 1305, baseType: !845)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !709}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !839, file: !711, line: 1310, baseType: !242, size: 32, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !839, file: !711, line: 1311, baseType: !830, size: 64, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !839, file: !711, line: 1312, baseType: !242, size: 32, offset: 256)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !839, file: !711, line: 1315, baseType: !851, size: 64, offset: 320)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !711, line: 1306, baseType: !853)
!853 = !DISubroutineType(types: !854)
!854 = !{!855, !838, !836, !242, !855}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !839, file: !711, line: 1317, baseType: !242, size: 32, offset: 384)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !839, file: !711, line: 1318, baseType: !242, size: 32, offset: 416)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !839, file: !711, line: 1319, baseType: !242, size: 32, offset: 448)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !839, file: !711, line: 1320, baseType: !788, size: 64, offset: 512)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !839, file: !711, line: 1320, baseType: !788, size: 64, offset: 576)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !712, file: !711, line: 737, baseType: !838, size: 64, offset: 704)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !712, file: !711, line: 738, baseType: !242, size: 32, offset: 768)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !712, file: !711, line: 739, baseType: !242, size: 32, offset: 800)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !712, file: !711, line: 740, baseType: !12, size: 64, offset: 832)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !712, file: !711, line: 741, baseType: !790, size: 64, offset: 896)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !712, file: !711, line: 742, baseType: !29, size: 64, offset: 960)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !712, file: !711, line: 743, baseType: !6, size: 64, offset: 1024)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !712, file: !711, line: 745, baseType: !869, size: 64, offset: 1088)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !870, line: 34, baseType: !12)
!870 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!871 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !712, file: !711, line: 746, baseType: !869, size: 64, offset: 1152)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !712, file: !711, line: 747, baseType: !869, size: 64, offset: 1216)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !712, file: !711, line: 748, baseType: !242, size: 32, offset: 1280)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !712, file: !711, line: 749, baseType: !242, size: 32, offset: 1312)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !712, file: !711, line: 750, baseType: !242, size: 32, offset: 1344)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !712, file: !711, line: 751, baseType: !242, size: 32, offset: 1376)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !712, file: !711, line: 752, baseType: !242, size: 32, offset: 1408)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !712, file: !711, line: 753, baseType: !879, size: 64, offset: 1472)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !880, line: 173, baseType: !881)
!880 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !9, line: 100, baseType: !882)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !9, line: 44, baseType: !12)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !712, file: !711, line: 754, baseType: !879, size: 64, offset: 1536)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !712, file: !711, line: 755, baseType: !829, size: 64, offset: 1600)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !712, file: !711, line: 756, baseType: !788, size: 64, offset: 1664)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !712, file: !711, line: 757, baseType: !788, size: 64, offset: 1728)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !712, file: !711, line: 758, baseType: !788, size: 64, offset: 1792)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !712, file: !711, line: 759, baseType: !788, size: 64, offset: 1856)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !712, file: !711, line: 760, baseType: !788, size: 64, offset: 1920)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !712, file: !711, line: 763, baseType: !891, size: 328, offset: 1984)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 328, elements: !892)
!892 = !{!893}
!893 = !DISubrange(count: 41)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !712, file: !711, line: 764, baseType: !242, size: 32, offset: 2336)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !712, file: !711, line: 765, baseType: !896, size: 368, offset: 2368)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 368, elements: !897)
!897 = !{!898}
!898 = !DISubrange(count: 46)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !712, file: !711, line: 766, baseType: !242, size: 32, offset: 2752)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !712, file: !711, line: 767, baseType: !901, size: 256, offset: 2816)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !711, line: 673, baseType: !902)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !711, line: 665, size: 256, elements: !903)
!903 = !{!904, !912, !913, !914, !915}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !902, file: !711, line: 666, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !711, line: 663, baseType: !907)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !711, line: 659, size: 192, elements: !908)
!908 = !{!909, !910, !911}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !907, file: !711, line: 660, baseType: !836, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !907, file: !711, line: 661, baseType: !242, size: 32, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !907, file: !711, line: 662, baseType: !838, size: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !902, file: !711, line: 667, baseType: !242, size: 32, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !902, file: !711, line: 668, baseType: !242, size: 32, offset: 96)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !902, file: !711, line: 671, baseType: !242, size: 32, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !902, file: !711, line: 672, baseType: !869, size: 64, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !712, file: !711, line: 768, baseType: !242, size: 32, offset: 3072)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !712, file: !711, line: 769, baseType: !918, size: 704, offset: 3136)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !711, line: 703, baseType: !919)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !711, line: 677, size: 704, elements: !920)
!920 = !{!921, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !919, file: !711, line: 679, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !711, line: 52, baseType: !788)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !919, file: !711, line: 683, baseType: !722, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !919, file: !711, line: 685, baseType: !819, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !919, file: !711, line: 689, baseType: !6, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !919, file: !711, line: 690, baseType: !819, size: 64, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !919, file: !711, line: 691, baseType: !819, size: 64, offset: 320)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !919, file: !711, line: 692, baseType: !922, size: 64, offset: 384)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !919, file: !711, line: 692, baseType: !922, size: 64, offset: 448)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !919, file: !711, line: 693, baseType: !242, size: 32, offset: 512)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !919, file: !711, line: 696, baseType: !242, size: 32, offset: 544)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !919, file: !711, line: 697, baseType: !788, size: 64, offset: 576)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !919, file: !711, line: 700, baseType: !11, size: 64, offset: 640)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !712, file: !711, line: 770, baseType: !788, size: 64, offset: 3840)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !712, file: !711, line: 771, baseType: !790, size: 64, offset: 3904)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !712, file: !711, line: 772, baseType: !722, size: 64, offset: 3968)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !712, file: !711, line: 773, baseType: !790, size: 64, offset: 4032)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !712, file: !711, line: 774, baseType: !829, size: 64, offset: 4096)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !712, file: !711, line: 775, baseType: !796, size: 64, offset: 4160)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !712, file: !711, line: 778, baseType: !242, size: 32, offset: 4224)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !712, file: !711, line: 779, baseType: !942, size: 131072, offset: 4256)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 131072, elements: !943)
!943 = !{!944}
!944 = !DISubrange(count: 16384)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!946 = !{!947, !948, !949, !950, !951, !952, !953, !954, !955, !956}
!947 = !DILocalVariable(name: "c", arg: 1, scope: !706, file: !3, line: 411, type: !709)
!948 = !DILocalVariable(name: "o", arg: 2, scope: !706, file: !3, line: 411, type: !819)
!949 = !DILocalVariable(name: "offset", arg: 3, scope: !706, file: !3, line: 411, type: !945)
!950 = !DILocalVariable(name: "hash", arg: 4, scope: !706, file: !3, line: 411, type: !242)
!951 = !DILocalVariable(name: "bits", arg: 5, scope: !706, file: !3, line: 411, type: !242)
!952 = !DILocalVariable(name: "loffset", scope: !706, file: !3, line: 412, type: !788)
!953 = !DILocalVariable(name: "err", scope: !706, file: !3, line: 413, type: !830)
!954 = !DILocalVariable(name: "p", scope: !706, file: !3, line: 414, type: !830)
!955 = !DILocalVariable(name: "plen", scope: !706, file: !3, line: 415, type: !6)
!956 = !DILocalVariable(name: "usehash", scope: !706, file: !3, line: 416, type: !242)
!957 = !DILocation(line: 411, column: 38, scope: !706)
!958 = !DILocation(line: 411, column: 47, scope: !706)
!959 = !DILocation(line: 411, column: 58, scope: !706)
!960 = !DILocation(line: 411, column: 70, scope: !706)
!961 = !DILocation(line: 411, column: 80, scope: !706)
!962 = !DILocation(line: 412, column: 5, scope: !706)
!963 = !DILocation(line: 414, column: 18, scope: !706)
!964 = !{!965, !966, i64 8}
!965 = !{!"redisObject", !119, i64 0, !119, i64 0, !119, i64 1, !119, i64 4, !966, i64 8}
!966 = !{!"any pointer", !104, i64 0}
!967 = !DILocation(line: 414, column: 11, scope: !706)
!968 = !DILocalVariable(name: "s", arg: 1, scope: !969, file: !35, line: 87, type: !974)
!969 = distinct !DISubprogram(name: "sdslen", scope: !35, file: !35, line: 87, type: !970, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !975)
!970 = !DISubroutineType(types: !971)
!971 = !{!972, !974}
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !973, line: 58, baseType: !10)
!973 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !829)
!975 = !{!968, !976}
!976 = !DILocalVariable(name: "flags", scope: !969, file: !35, line: 88, type: !23)
!977 = !DILocation(line: 87, column: 39, scope: !969, inlinedAt: !978)
!978 = distinct !DILocation(line: 415, column: 19, scope: !706)
!979 = !DILocation(line: 88, column: 27, scope: !969, inlinedAt: !978)
!980 = !DILocation(line: 88, column: 19, scope: !969, inlinedAt: !978)
!981 = !DILocation(line: 89, column: 5, scope: !969, inlinedAt: !978)
!982 = !DILocation(line: 91, column: 20, scope: !983, inlinedAt: !978)
!983 = distinct !DILexicalBlock(scope: !969, file: !35, line: 89, column: 33)
!984 = !DILocation(line: 91, column: 13, scope: !983, inlinedAt: !978)
!985 = !DILocation(line: 93, column: 20, scope: !983, inlinedAt: !978)
!986 = !DILocation(line: 93, column: 34, scope: !983, inlinedAt: !978)
!987 = !DILocation(line: 93, column: 13, scope: !983, inlinedAt: !978)
!988 = !DILocation(line: 95, column: 20, scope: !983, inlinedAt: !978)
!989 = !DILocation(line: 95, column: 35, scope: !983, inlinedAt: !978)
!990 = !{!991, !991, i64 0}
!991 = !{!"short", !104, i64 0}
!992 = !DILocation(line: 95, column: 13, scope: !983, inlinedAt: !978)
!993 = !DILocation(line: 97, column: 20, scope: !983, inlinedAt: !978)
!994 = !DILocation(line: 97, column: 35, scope: !983, inlinedAt: !978)
!995 = !DILocation(line: 97, column: 13, scope: !983, inlinedAt: !978)
!996 = !DILocation(line: 99, column: 20, scope: !983, inlinedAt: !978)
!997 = !DILocation(line: 99, column: 35, scope: !983, inlinedAt: !978)
!998 = !DILocation(line: 99, column: 13, scope: !983, inlinedAt: !978)
!999 = !DILocation(line: 0, scope: !983, inlinedAt: !978)
!1000 = !DILocation(line: 102, column: 1, scope: !969, inlinedAt: !978)
!1001 = !DILocation(line: 415, column: 12, scope: !706)
!1002 = !DILocation(line: 416, column: 9, scope: !706)
!1003 = !DILocation(line: 419, column: 9, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !706, file: !3, line: 419, column: 9)
!1005 = !DILocation(line: 419, column: 14, scope: !1004)
!1006 = !DILocation(line: 419, column: 24, scope: !1004)
!1007 = !DILocation(line: 419, column: 21, scope: !1004)
!1008 = !DILocation(line: 419, column: 37, scope: !1004)
!1009 = !DILocation(line: 421, column: 20, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !706, file: !3, line: 421, column: 9)
!1011 = !DILocation(line: 421, column: 33, scope: !1010)
!1012 = !DILocation(line: 412, column: 15, scope: !706)
!1013 = !DILocation(line: 421, column: 9, scope: !1010)
!1014 = !DILocation(line: 421, column: 52, scope: !1010)
!1015 = !DILocation(line: 421, column: 9, scope: !706)
!1016 = !DILocation(line: 422, column: 9, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 421, column: 58)
!1018 = !DILocation(line: 423, column: 9, scope: !1017)
!1019 = !DILocation(line: 427, column: 9, scope: !706)
!1020 = !DILocation(line: 427, column: 29, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !706, file: !3, line: 427, column: 9)
!1022 = !DILocation(line: 427, column: 26, scope: !1021)
!1023 = !{!1024, !1024, i64 0}
!1024 = !{!"long long", !104, i64 0}
!1025 = !DILocation(line: 427, column: 18, scope: !1021)
!1026 = !DILocation(line: 430, column: 10, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !706, file: !3, line: 430, column: 9)
!1028 = !DILocation(line: 430, column: 61, scope: !1027)
!1029 = !DILocation(line: 430, column: 23, scope: !1027)
!1030 = !DILocation(line: 432, column: 9, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 431, column: 5)
!1032 = !DILocation(line: 433, column: 9, scope: !1031)
!1033 = !DILocation(line: 436, column: 13, scope: !706)
!1034 = !DILocation(line: 437, column: 5, scope: !706)
!1035 = !DILocation(line: 0, scope: !706)
!1036 = !DILocation(line: 438, column: 1, scope: !706)
!1037 = distinct !DISubprogram(name: "getBitfieldTypeFromArgument", scope: !3, file: !3, line: 447, type: !1038, isLocal: false, isDefinition: true, scopeLine: 447, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1040)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!242, !709, !819, !855, !855}
!1040 = !{!1041, !1042, !1043, !1044, !1045, !1046, !1047}
!1041 = !DILocalVariable(name: "c", arg: 1, scope: !1037, file: !3, line: 447, type: !709)
!1042 = !DILocalVariable(name: "o", arg: 2, scope: !1037, file: !3, line: 447, type: !819)
!1043 = !DILocalVariable(name: "sign", arg: 3, scope: !1037, file: !3, line: 447, type: !855)
!1044 = !DILocalVariable(name: "bits", arg: 4, scope: !1037, file: !3, line: 447, type: !855)
!1045 = !DILocalVariable(name: "p", scope: !1037, file: !3, line: 448, type: !830)
!1046 = !DILocalVariable(name: "err", scope: !1037, file: !3, line: 449, type: !830)
!1047 = !DILocalVariable(name: "llbits", scope: !1037, file: !3, line: 450, type: !788)
!1048 = !DILocation(line: 447, column: 41, scope: !1037)
!1049 = !DILocation(line: 447, column: 50, scope: !1037)
!1050 = !DILocation(line: 447, column: 58, scope: !1037)
!1051 = !DILocation(line: 447, column: 69, scope: !1037)
!1052 = !DILocation(line: 448, column: 18, scope: !1037)
!1053 = !DILocation(line: 448, column: 11, scope: !1037)
!1054 = !DILocation(line: 450, column: 5, scope: !1037)
!1055 = !DILocation(line: 452, column: 9, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 452, column: 9)
!1057 = !DILocation(line: 452, column: 9, scope: !1037)
!1058 = !DILocation(line: 457, column: 9, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 456, column: 12)
!1060 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 454, column: 16)
!1061 = !DILocation(line: 458, column: 9, scope: !1059)
!1062 = !DILocation(line: 0, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 452, column: 22)
!1064 = !DILocation(line: 461, column: 21, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 461, column: 9)
!1066 = !DILocation(line: 461, column: 24, scope: !1065)
!1067 = !DILocation(line: 450, column: 15, scope: !1037)
!1068 = !DILocation(line: 461, column: 10, scope: !1065)
!1069 = !DILocation(line: 461, column: 46, scope: !1065)
!1070 = !DILocation(line: 462, column: 9, scope: !1065)
!1071 = !DILocation(line: 462, column: 16, scope: !1065)
!1072 = !DILocation(line: 461, column: 51, scope: !1065)
!1073 = !DILocation(line: 463, column: 10, scope: !1065)
!1074 = !DILocation(line: 463, column: 16, scope: !1065)
!1075 = !DILocation(line: 463, column: 31, scope: !1065)
!1076 = !DILocation(line: 463, column: 21, scope: !1065)
!1077 = !DILocation(line: 464, column: 16, scope: !1065)
!1078 = !DILocation(line: 464, column: 31, scope: !1065)
!1079 = !DILocation(line: 464, column: 21, scope: !1065)
!1080 = !DILocation(line: 466, column: 9, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 465, column: 5)
!1082 = !DILocation(line: 467, column: 9, scope: !1081)
!1083 = !DILocation(line: 469, column: 13, scope: !1037)
!1084 = !DILocation(line: 469, column: 11, scope: !1037)
!1085 = !DILocation(line: 470, column: 5, scope: !1037)
!1086 = !DILocation(line: 0, scope: !1059)
!1087 = !DILocation(line: 471, column: 1, scope: !1037)
!1088 = distinct !DISubprogram(name: "lookupStringForBitCommand", scope: !3, file: !3, line: 478, type: !1089, isLocal: false, isDefinition: true, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1091)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!819, !709, !6}
!1091 = !{!1092, !1093, !1094, !1095}
!1092 = !DILocalVariable(name: "c", arg: 1, scope: !1088, file: !3, line: 478, type: !709)
!1093 = !DILocalVariable(name: "maxbit", arg: 2, scope: !1088, file: !3, line: 478, type: !6)
!1094 = !DILocalVariable(name: "byte", scope: !1088, file: !3, line: 479, type: !6)
!1095 = !DILocalVariable(name: "o", scope: !1088, file: !3, line: 480, type: !819)
!1096 = !DILocation(line: 478, column: 41, scope: !1088)
!1097 = !DILocation(line: 478, column: 51, scope: !1088)
!1098 = !DILocation(line: 479, column: 26, scope: !1088)
!1099 = !DILocation(line: 479, column: 12, scope: !1088)
!1100 = !DILocation(line: 480, column: 33, scope: !1088)
!1101 = !{!1102, !966, i64 16}
!1102 = !{!"client", !291, i64 0, !119, i64 8, !966, i64 16, !966, i64 24, !966, i64 32, !291, i64 40, !966, i64 48, !291, i64 56, !119, i64 64, !966, i64 72, !966, i64 80, !966, i64 88, !119, i64 96, !119, i64 100, !291, i64 104, !966, i64 112, !1024, i64 120, !291, i64 128, !291, i64 136, !291, i64 144, !291, i64 152, !119, i64 160, !119, i64 164, !119, i64 168, !119, i64 172, !119, i64 176, !291, i64 184, !291, i64 192, !966, i64 200, !1024, i64 208, !1024, i64 216, !1024, i64 224, !1024, i64 232, !1024, i64 240, !104, i64 248, !119, i64 292, !104, i64 296, !119, i64 344, !1103, i64 352, !119, i64 384, !1104, i64 392, !1024, i64 480, !966, i64 488, !966, i64 496, !966, i64 504, !966, i64 512, !966, i64 520, !119, i64 528, !104, i64 532}
!1103 = !{!"multiState", !966, i64 0, !119, i64 8, !119, i64 12, !119, i64 16, !291, i64 24}
!1104 = !{!"blockingState", !1024, i64 0, !966, i64 8, !966, i64 16, !291, i64 24, !966, i64 32, !966, i64 40, !1024, i64 48, !1024, i64 56, !119, i64 64, !119, i64 68, !1024, i64 72, !966, i64 80}
!1105 = !DILocation(line: 480, column: 39, scope: !1088)
!1106 = !{!1102, !966, i64 72}
!1107 = !DILocation(line: 480, column: 36, scope: !1088)
!1108 = !{!966, !966, i64 0}
!1109 = !DILocation(line: 480, column: 15, scope: !1088)
!1110 = !DILocation(line: 480, column: 11, scope: !1088)
!1111 = !DILocation(line: 482, column: 11, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 482, column: 9)
!1113 = !DILocation(line: 482, column: 9, scope: !1088)
!1114 = !DILocation(line: 483, column: 57, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 482, column: 20)
!1116 = !DILocation(line: 483, column: 37, scope: !1115)
!1117 = !DILocation(line: 483, column: 13, scope: !1115)
!1118 = !DILocation(line: 484, column: 18, scope: !1115)
!1119 = !DILocation(line: 484, column: 24, scope: !1115)
!1120 = !DILocation(line: 484, column: 21, scope: !1115)
!1121 = !DILocation(line: 484, column: 9, scope: !1115)
!1122 = !DILocation(line: 485, column: 5, scope: !1115)
!1123 = !DILocation(line: 486, column: 13, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 486, column: 13)
!1125 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 485, column: 12)
!1126 = !DILocation(line: 486, column: 13, scope: !1125)
!1127 = !DILocation(line: 487, column: 37, scope: !1125)
!1128 = !DILocation(line: 487, column: 43, scope: !1125)
!1129 = !DILocation(line: 487, column: 40, scope: !1125)
!1130 = !DILocation(line: 487, column: 13, scope: !1125)
!1131 = !DILocation(line: 488, column: 33, scope: !1125)
!1132 = !DILocation(line: 488, column: 41, scope: !1125)
!1133 = !DILocation(line: 488, column: 18, scope: !1125)
!1134 = !DILocation(line: 488, column: 16, scope: !1125)
!1135 = !DILocation(line: 0, scope: !1124)
!1136 = !DILocation(line: 491, column: 1, scope: !1088)
!1137 = distinct !DISubprogram(name: "getObjectReadOnlyString", scope: !3, file: !3, line: 506, type: !1138, isLocal: false, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1141)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!22, !819, !1140, !830}
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!1141 = !{!1142, !1143, !1144, !1145}
!1142 = !DILocalVariable(name: "o", arg: 1, scope: !1137, file: !3, line: 506, type: !819)
!1143 = !DILocalVariable(name: "len", arg: 2, scope: !1137, file: !3, line: 506, type: !1140)
!1144 = !DILocalVariable(name: "llbuf", arg: 3, scope: !1137, file: !3, line: 506, type: !830)
!1145 = !DILocalVariable(name: "p", scope: !1137, file: !3, line: 508, type: !22)
!1146 = !DILocation(line: 506, column: 46, scope: !1137)
!1147 = !DILocation(line: 506, column: 55, scope: !1137)
!1148 = !DILocation(line: 506, column: 66, scope: !1137)
!1149 = !DILocation(line: 507, column: 5, scope: !1137)
!1150 = !DILocation(line: 508, column: 20, scope: !1137)
!1151 = !DILocation(line: 512, column: 17, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 512, column: 9)
!1153 = !DILocation(line: 512, column: 26, scope: !1152)
!1154 = !DILocation(line: 512, column: 11, scope: !1152)
!1155 = !DILocation(line: 514, column: 13, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 514, column: 13)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 512, column: 47)
!1158 = !DILocation(line: 514, column: 13, scope: !1157)
!1159 = !DILocation(line: 514, column: 64, scope: !1156)
!1160 = !DILocation(line: 514, column: 25, scope: !1156)
!1161 = !DILocation(line: 514, column: 23, scope: !1156)
!1162 = !DILocation(line: 514, column: 18, scope: !1156)
!1163 = !DILocation(line: 516, column: 33, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 515, column: 19)
!1165 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 515, column: 16)
!1166 = !DILocation(line: 517, column: 13, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 517, column: 13)
!1168 = !DILocation(line: 517, column: 13, scope: !1164)
!1169 = !DILocation(line: 87, column: 39, scope: !969, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 517, column: 25, scope: !1167)
!1171 = !DILocation(line: 88, column: 27, scope: !969, inlinedAt: !1170)
!1172 = !DILocation(line: 88, column: 19, scope: !969, inlinedAt: !1170)
!1173 = !DILocation(line: 89, column: 5, scope: !969, inlinedAt: !1170)
!1174 = !DILocation(line: 91, column: 20, scope: !983, inlinedAt: !1170)
!1175 = !DILocation(line: 91, column: 13, scope: !983, inlinedAt: !1170)
!1176 = !DILocation(line: 93, column: 20, scope: !983, inlinedAt: !1170)
!1177 = !DILocation(line: 93, column: 34, scope: !983, inlinedAt: !1170)
!1178 = !DILocation(line: 93, column: 13, scope: !983, inlinedAt: !1170)
!1179 = !DILocation(line: 95, column: 20, scope: !983, inlinedAt: !1170)
!1180 = !DILocation(line: 95, column: 35, scope: !983, inlinedAt: !1170)
!1181 = !DILocation(line: 95, column: 13, scope: !983, inlinedAt: !1170)
!1182 = !DILocation(line: 97, column: 20, scope: !983, inlinedAt: !1170)
!1183 = !DILocation(line: 97, column: 35, scope: !983, inlinedAt: !1170)
!1184 = !DILocation(line: 97, column: 13, scope: !983, inlinedAt: !1170)
!1185 = !DILocation(line: 99, column: 20, scope: !983, inlinedAt: !1170)
!1186 = !DILocation(line: 99, column: 35, scope: !983, inlinedAt: !1170)
!1187 = !DILocation(line: 99, column: 13, scope: !983, inlinedAt: !1170)
!1188 = !DILocation(line: 0, scope: !983, inlinedAt: !1170)
!1189 = !DILocation(line: 102, column: 1, scope: !969, inlinedAt: !1170)
!1190 = !DILocation(line: 517, column: 23, scope: !1167)
!1191 = !DILocation(line: 517, column: 18, scope: !1167)
!1192 = !DILocation(line: 0, scope: !1137)
!1193 = !DILocation(line: 521, column: 5, scope: !1137)
!1194 = distinct !DISubprogram(name: "setbitCommand", scope: !3, file: !3, line: 525, type: !845, isLocal: false, isDefinition: true, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1195)
!1195 = !{!1196, !1197, !1198, !1199, !1200, !1203, !1204, !1205, !1206}
!1196 = !DILocalVariable(name: "c", arg: 1, scope: !1194, file: !3, line: 525, type: !709)
!1197 = !DILocalVariable(name: "o", scope: !1194, file: !3, line: 526, type: !819)
!1198 = !DILocalVariable(name: "err", scope: !1194, file: !3, line: 527, type: !830)
!1199 = !DILocalVariable(name: "bitoffset", scope: !1194, file: !3, line: 528, type: !6)
!1200 = !DILocalVariable(name: "byte", scope: !1194, file: !3, line: 529, type: !1201)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !880, line: 200, baseType: !1202)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !9, line: 145, baseType: !12)
!1203 = !DILocalVariable(name: "bit", scope: !1194, file: !3, line: 529, type: !1201)
!1204 = !DILocalVariable(name: "byteval", scope: !1194, file: !3, line: 530, type: !242)
!1205 = !DILocalVariable(name: "bitval", scope: !1194, file: !3, line: 530, type: !242)
!1206 = !DILocalVariable(name: "on", scope: !1194, file: !3, line: 531, type: !12)
!1207 = !DILocation(line: 525, column: 28, scope: !1194)
!1208 = !DILocation(line: 528, column: 5, scope: !1194)
!1209 = !DILocation(line: 531, column: 5, scope: !1194)
!1210 = !DILocation(line: 533, column: 39, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 533, column: 9)
!1212 = !DILocation(line: 533, column: 36, scope: !1211)
!1213 = !DILocation(line: 528, column: 12, scope: !1194)
!1214 = !DILocation(line: 533, column: 9, scope: !1211)
!1215 = !DILocation(line: 533, column: 63, scope: !1211)
!1216 = !DILocation(line: 533, column: 9, scope: !1194)
!1217 = !DILocation(line: 536, column: 39, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 536, column: 9)
!1219 = !DILocation(line: 536, column: 36, scope: !1218)
!1220 = !DILocation(line: 531, column: 10, scope: !1194)
!1221 = !DILocation(line: 536, column: 9, scope: !1218)
!1222 = !DILocation(line: 536, column: 56, scope: !1218)
!1223 = !DILocation(line: 536, column: 9, scope: !1194)
!1224 = !DILocation(line: 540, column: 9, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 540, column: 9)
!1226 = !DILocation(line: 540, column: 12, scope: !1225)
!1227 = !DILocation(line: 540, column: 9, scope: !1194)
!1228 = !DILocation(line: 541, column: 9, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 540, column: 18)
!1230 = !DILocation(line: 542, column: 9, scope: !1229)
!1231 = !DILocation(line: 545, column: 42, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 545, column: 9)
!1233 = !DILocation(line: 545, column: 14, scope: !1232)
!1234 = !DILocation(line: 526, column: 11, scope: !1194)
!1235 = !DILocation(line: 545, column: 54, scope: !1232)
!1236 = !DILocation(line: 545, column: 9, scope: !1194)
!1237 = !DILocation(line: 548, column: 22, scope: !1194)
!1238 = !DILocation(line: 529, column: 13, scope: !1194)
!1239 = !DILocation(line: 549, column: 29, scope: !1194)
!1240 = !DILocation(line: 549, column: 15, scope: !1194)
!1241 = !DILocation(line: 530, column: 9, scope: !1194)
!1242 = !DILocation(line: 550, column: 26, scope: !1194)
!1243 = !DILocation(line: 550, column: 13, scope: !1194)
!1244 = !DILocation(line: 529, column: 19, scope: !1194)
!1245 = !DILocation(line: 551, column: 27, scope: !1194)
!1246 = !DILocation(line: 551, column: 22, scope: !1194)
!1247 = !DILocation(line: 530, column: 18, scope: !1194)
!1248 = !DILocation(line: 554, column: 16, scope: !1194)
!1249 = !DILocation(line: 554, column: 13, scope: !1194)
!1250 = !DILocation(line: 555, column: 18, scope: !1194)
!1251 = !DILocation(line: 555, column: 21, scope: !1194)
!1252 = !DILocation(line: 555, column: 28, scope: !1194)
!1253 = !DILocation(line: 555, column: 13, scope: !1194)
!1254 = !DILocation(line: 556, column: 32, scope: !1194)
!1255 = !DILocation(line: 556, column: 30, scope: !1194)
!1256 = !DILocation(line: 557, column: 26, scope: !1194)
!1257 = !DILocation(line: 557, column: 32, scope: !1194)
!1258 = !DILocation(line: 557, column: 29, scope: !1194)
!1259 = !DILocation(line: 557, column: 5, scope: !1194)
!1260 = !DILocation(line: 558, column: 51, scope: !1194)
!1261 = !DILocation(line: 558, column: 48, scope: !1194)
!1262 = !DILocation(line: 558, column: 62, scope: !1194)
!1263 = !DILocation(line: 558, column: 66, scope: !1194)
!1264 = !{!1265, !119, i64 40}
!1265 = !{!"redisDb", !966, i64 0, !966, i64 8, !966, i64 16, !966, i64 24, !966, i64 32, !119, i64 40, !1024, i64 48, !966, i64 56}
!1266 = !DILocation(line: 558, column: 5, scope: !1194)
!1267 = !DILocation(line: 559, column: 17, scope: !1194)
!1268 = !{!1269, !1024, i64 2080}
!1269 = !{!"redisServer", !119, i64 0, !966, i64 8, !966, i64 16, !966, i64 24, !119, i64 32, !119, i64 36, !119, i64 40, !966, i64 48, !966, i64 56, !966, i64 64, !966, i64 72, !119, i64 80, !119, i64 84, !119, i64 88, !119, i64 92, !966, i64 96, !966, i64 104, !119, i64 112, !119, i64 116, !104, i64 120, !119, i64 164, !291, i64 168, !119, i64 176, !966, i64 184, !966, i64 192, !966, i64 200, !104, i64 208, !119, i64 216, !119, i64 220, !104, i64 224, !119, i64 352, !966, i64 360, !119, i64 368, !104, i64 372, !119, i64 436, !119, i64 440, !104, i64 444, !119, i64 508, !966, i64 512, !966, i64 520, !966, i64 528, !966, i64 536, !966, i64 544, !966, i64 552, !966, i64 560, !119, i64 568, !1024, i64 576, !104, i64 584, !966, i64 840, !291, i64 848, !119, i64 856, !119, i64 860, !291, i64 864, !291, i64 872, !291, i64 880, !291, i64 888, !966, i64 896, !966, i64 904, !966, i64 912, !966, i64 920, !966, i64 928, !966, i64 936, !966, i64 944, !966, i64 952, !966, i64 960, !966, i64 968, !966, i64 976, !966, i64 984, !966, i64 992, !291, i64 1000, !1024, i64 1008, !1024, i64 1016, !1024, i64 1024, !1270, i64 1032, !1024, i64 1040, !1024, i64 1048, !1024, i64 1056, !1024, i64 1064, !1024, i64 1072, !1024, i64 1080, !1024, i64 1088, !1024, i64 1096, !1024, i64 1104, !291, i64 1112, !1024, i64 1120, !1270, i64 1128, !1024, i64 1136, !1024, i64 1144, !1024, i64 1152, !1024, i64 1160, !966, i64 1168, !1024, i64 1176, !1024, i64 1184, !291, i64 1192, !1271, i64 1200, !1024, i64 1240, !1024, i64 1248, !291, i64 1256, !291, i64 1264, !104, i64 1272, !119, i64 1728, !119, i64 1732, !119, i64 1736, !119, i64 1740, !119, i64 1744, !291, i64 1752, !119, i64 1760, !119, i64 1764, !119, i64 1768, !119, i64 1772, !291, i64 1776, !291, i64 1784, !119, i64 1792, !119, i64 1796, !119, i64 1800, !119, i64 1804, !104, i64 1808, !119, i64 1880, !119, i64 1884, !966, i64 1888, !119, i64 1896, !119, i64 1900, !291, i64 1904, !291, i64 1912, !291, i64 1920, !291, i64 1928, !119, i64 1936, !119, i64 1940, !966, i64 1944, !966, i64 1952, !119, i64 1960, !119, i64 1964, !291, i64 1968, !291, i64 1976, !291, i64 1984, !291, i64 1992, !119, i64 2000, !291, i64 2008, !119, i64 2016, !119, i64 2020, !119, i64 2024, !119, i64 2028, !119, i64 2032, !119, i64 2036, !119, i64 2040, !119, i64 2044, !119, i64 2048, !119, i64 2052, !119, i64 2056, !119, i64 2060, !119, i64 2064, !966, i64 2072, !1024, i64 2080, !1024, i64 2088, !119, i64 2096, !966, i64 2104, !119, i64 2112, !966, i64 2120, !119, i64 2128, !119, i64 2132, !291, i64 2136, !291, i64 2144, !291, i64 2152, !291, i64 2160, !119, i64 2168, !119, i64 2172, !119, i64 2176, !119, i64 2180, !119, i64 2184, !119, i64 2188, !104, i64 2192, !1272, i64 2200, !1273, i64 2224, !966, i64 2240, !119, i64 2248, !966, i64 2256, !119, i64 2264, !104, i64 2268, !104, i64 2309, !1024, i64 2352, !1024, i64 2360, !119, i64 2368, !119, i64 2372, !966, i64 2376, !1024, i64 2384, !1024, i64 2392, !1024, i64 2400, !1024, i64 2408, !291, i64 2416, !291, i64 2424, !119, i64 2432, !119, i64 2436, !119, i64 2440, !119, i64 2444, !119, i64 2448, !966, i64 2456, !966, i64 2464, !119, i64 2472, !119, i64 2476, !966, i64 2480, !966, i64 2488, !119, i64 2496, !119, i64 2500, !291, i64 2504, !291, i64 2512, !291, i64 2520, !119, i64 2528, !119, i64 2532, !966, i64 2536, !291, i64 2544, !119, i64 2552, !119, i64 2556, !119, i64 2560, !291, i64 2568, !119, i64 2576, !119, i64 2580, !119, i64 2584, !966, i64 2592, !104, i64 2600, !1024, i64 2648, !119, i64 2656, !966, i64 2664, !966, i64 2672, !119, i64 2680, !966, i64 2688, !119, i64 2696, !119, i64 2700, !1024, i64 2704, !119, i64 2712, !119, i64 2716, !119, i64 2720, !119, i64 2724, !1024, i64 2728, !119, i64 2736, !104, i64 2740, !966, i64 2768, !966, i64 2776, !119, i64 2784, !119, i64 2788, !119, i64 2792, !119, i64 2796, !291, i64 2800, !291, i64 2808, !291, i64 2816, !291, i64 2824, !291, i64 2832, !291, i64 2840, !291, i64 2848, !291, i64 2856, !119, i64 2864, !119, i64 2868, !291, i64 2872, !291, i64 2880, !119, i64 2888, !1024, i64 2896, !966, i64 2904, !966, i64 2912, !119, i64 2920, !119, i64 2924, !1024, i64 2928, !966, i64 2936, !966, i64 2944, !119, i64 2952, !119, i64 2956, !119, i64 2960, !119, i64 2964, !966, i64 2968, !119, i64 2976, !119, i64 2980, !119, i64 2984, !966, i64 2992, !966, i64 3000, !966, i64 3008, !966, i64 3016, !1024, i64 3024, !1024, i64 3032, !1024, i64 3040, !119, i64 3048, !119, i64 3052, !119, i64 3056, !119, i64 3060, !119, i64 3064, !119, i64 3068, !119, i64 3072, !119, i64 3076, !119, i64 3080, !119, i64 3084, !119, i64 3088, !1024, i64 3096, !966, i64 3104, !966, i64 3112, !966, i64 3120, !119, i64 3128, !119, i64 3132, !119, i64 3136, !291, i64 3144, !966, i64 3152, !966, i64 3160, !966, i64 3168}
!1270 = !{!"double", !104, i64 0}
!1271 = !{!"malloc_stats", !291, i64 0, !291, i64 8, !291, i64 16, !291, i64 24, !291, i64 32}
!1272 = !{!"", !119, i64 0, !291, i64 8, !1024, i64 16}
!1273 = !{!"redisOpArray", !966, i64 0, !119, i64 8}
!1274 = !DILocation(line: 560, column: 17, scope: !1194)
!1275 = !DILocation(line: 560, column: 33, scope: !1194)
!1276 = !DILocation(line: 560, column: 47, scope: !1194)
!1277 = !DILocation(line: 560, column: 5, scope: !1194)
!1278 = !DILocation(line: 561, column: 1, scope: !1194)
!1279 = distinct !DISubprogram(name: "getbitCommand", scope: !3, file: !3, line: 564, type: !845, isLocal: false, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1280)
!1280 = !{!1281, !1282, !1283, !1287, !1288, !1289, !1290}
!1281 = !DILocalVariable(name: "c", arg: 1, scope: !1279, file: !3, line: 564, type: !709)
!1282 = !DILocalVariable(name: "o", scope: !1279, file: !3, line: 565, type: !819)
!1283 = !DILocalVariable(name: "llbuf", scope: !1279, file: !3, line: 566, type: !1284)
!1284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 256, elements: !1285)
!1285 = !{!1286}
!1286 = !DISubrange(count: 32)
!1287 = !DILocalVariable(name: "bitoffset", scope: !1279, file: !3, line: 567, type: !6)
!1288 = !DILocalVariable(name: "byte", scope: !1279, file: !3, line: 568, type: !6)
!1289 = !DILocalVariable(name: "bit", scope: !1279, file: !3, line: 568, type: !6)
!1290 = !DILocalVariable(name: "bitval", scope: !1279, file: !3, line: 569, type: !6)
!1291 = !DILocation(line: 564, column: 28, scope: !1279)
!1292 = !DILocation(line: 566, column: 5, scope: !1279)
!1293 = !DILocation(line: 566, column: 10, scope: !1279)
!1294 = !DILocation(line: 567, column: 5, scope: !1279)
!1295 = !DILocation(line: 569, column: 12, scope: !1279)
!1296 = !DILocation(line: 571, column: 39, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 571, column: 9)
!1298 = !DILocation(line: 571, column: 36, scope: !1297)
!1299 = !DILocation(line: 567, column: 12, scope: !1279)
!1300 = !DILocation(line: 571, column: 9, scope: !1297)
!1301 = !DILocation(line: 571, column: 63, scope: !1297)
!1302 = !DILocation(line: 571, column: 9, scope: !1279)
!1303 = !DILocation(line: 574, column: 40, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 574, column: 9)
!1305 = !DILocation(line: 574, column: 37, scope: !1304)
!1306 = !DILocation(line: 574, column: 55, scope: !1304)
!1307 = !{!1308, !966, i64 32}
!1308 = !{!"sharedObjectsStruct", !966, i64 0, !966, i64 8, !966, i64 16, !966, i64 24, !966, i64 32, !966, i64 40, !966, i64 48, !966, i64 56, !966, i64 64, !966, i64 72, !966, i64 80, !966, i64 88, !966, i64 96, !966, i64 104, !966, i64 112, !966, i64 120, !966, i64 128, !966, i64 136, !966, i64 144, !966, i64 152, !966, i64 160, !966, i64 168, !966, i64 176, !966, i64 184, !966, i64 192, !966, i64 200, !966, i64 208, !966, i64 216, !966, i64 224, !966, i64 232, !966, i64 240, !966, i64 248, !966, i64 256, !966, i64 264, !966, i64 272, !966, i64 280, !966, i64 288, !966, i64 296, !966, i64 304, !966, i64 312, !966, i64 320, !966, i64 328, !966, i64 336, !966, i64 344, !966, i64 352, !966, i64 360, !104, i64 368, !104, i64 448, !104, i64 80448, !104, i64 80704, !966, i64 80960, !966, i64 80968}
!1309 = !DILocation(line: 574, column: 14, scope: !1304)
!1310 = !DILocation(line: 565, column: 11, scope: !1279)
!1311 = !DILocation(line: 574, column: 63, scope: !1304)
!1312 = !DILocation(line: 574, column: 71, scope: !1304)
!1313 = !DILocation(line: 575, column: 9, scope: !1304)
!1314 = !DILocation(line: 574, column: 9, scope: !1279)
!1315 = !DILocation(line: 577, column: 12, scope: !1279)
!1316 = !DILocation(line: 577, column: 22, scope: !1279)
!1317 = !DILocation(line: 568, column: 12, scope: !1279)
!1318 = !DILocation(line: 568, column: 18, scope: !1279)
!1319 = !DILocation(line: 579, column: 9, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 579, column: 9)
!1321 = !DILocation(line: 580, column: 30, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 580, column: 13)
!1323 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 579, column: 30)
!1324 = !DILocation(line: 87, column: 39, scope: !969, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 580, column: 20, scope: !1322)
!1326 = !DILocation(line: 88, column: 27, scope: !969, inlinedAt: !1325)
!1327 = !DILocation(line: 88, column: 19, scope: !969, inlinedAt: !1325)
!1328 = !DILocation(line: 89, column: 5, scope: !969, inlinedAt: !1325)
!1329 = !DILocation(line: 102, column: 1, scope: !969, inlinedAt: !1325)
!1330 = !DILocation(line: 580, column: 13, scope: !1323)
!1331 = !DILocation(line: 91, column: 20, scope: !983, inlinedAt: !1325)
!1332 = !DILocation(line: 91, column: 13, scope: !983, inlinedAt: !1325)
!1333 = !DILocation(line: 93, column: 20, scope: !983, inlinedAt: !1325)
!1334 = !DILocation(line: 93, column: 34, scope: !983, inlinedAt: !1325)
!1335 = !DILocation(line: 93, column: 13, scope: !983, inlinedAt: !1325)
!1336 = !DILocation(line: 95, column: 20, scope: !983, inlinedAt: !1325)
!1337 = !DILocation(line: 95, column: 35, scope: !983, inlinedAt: !1325)
!1338 = !DILocation(line: 95, column: 13, scope: !983, inlinedAt: !1325)
!1339 = !DILocation(line: 97, column: 20, scope: !983, inlinedAt: !1325)
!1340 = !DILocation(line: 97, column: 35, scope: !983, inlinedAt: !1325)
!1341 = !DILocation(line: 97, column: 13, scope: !983, inlinedAt: !1325)
!1342 = !DILocation(line: 99, column: 20, scope: !983, inlinedAt: !1325)
!1343 = !DILocation(line: 99, column: 35, scope: !983, inlinedAt: !1325)
!1344 = !DILocation(line: 99, column: 13, scope: !983, inlinedAt: !1325)
!1345 = !DILocation(line: 0, scope: !983, inlinedAt: !1325)
!1346 = !DILocation(line: 580, column: 18, scope: !1322)
!1347 = !DILocation(line: 581, column: 22, scope: !1322)
!1348 = !DILocation(line: 581, column: 13, scope: !1322)
!1349 = !DILocation(line: 583, column: 67, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 583, column: 13)
!1351 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 582, column: 12)
!1352 = !DILocation(line: 583, column: 28, scope: !1350)
!1353 = !DILocation(line: 583, column: 20, scope: !1350)
!1354 = !DILocation(line: 583, column: 18, scope: !1350)
!1355 = !DILocation(line: 583, column: 13, scope: !1351)
!1356 = !DILocation(line: 584, column: 22, scope: !1350)
!1357 = !DILocation(line: 584, column: 13, scope: !1350)
!1358 = !DILocation(line: 0, scope: !1322)
!1359 = !DILocation(line: 587, column: 17, scope: !1279)
!1360 = !DILocation(line: 0, scope: !1279)
!1361 = !DILocation(line: 587, column: 5, scope: !1279)
!1362 = !DILocation(line: 588, column: 1, scope: !1279)
!1363 = distinct !DISubprogram(name: "bitopCommand", scope: !3, file: !3, line: 591, type: !845, isLocal: false, isDefinition: true, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1364)
!1364 = !{!1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1375, !1376, !1377, !1378, !1379, !1385, !1388, !1389, !1390, !1396}
!1365 = !DILocalVariable(name: "c", arg: 1, scope: !1363, file: !3, line: 591, type: !709)
!1366 = !DILocalVariable(name: "opname", scope: !1363, file: !3, line: 592, type: !830)
!1367 = !DILocalVariable(name: "o", scope: !1363, file: !3, line: 593, type: !819)
!1368 = !DILocalVariable(name: "targetkey", scope: !1363, file: !3, line: 593, type: !819)
!1369 = !DILocalVariable(name: "op", scope: !1363, file: !3, line: 594, type: !10)
!1370 = !DILocalVariable(name: "j", scope: !1363, file: !3, line: 594, type: !10)
!1371 = !DILocalVariable(name: "numkeys", scope: !1363, file: !3, line: 594, type: !10)
!1372 = !DILocalVariable(name: "objects", scope: !1363, file: !3, line: 595, type: !836)
!1373 = !DILocalVariable(name: "src", scope: !1363, file: !3, line: 596, type: !1374)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!1375 = !DILocalVariable(name: "len", scope: !1363, file: !3, line: 597, type: !24)
!1376 = !DILocalVariable(name: "maxlen", scope: !1363, file: !3, line: 597, type: !10)
!1377 = !DILocalVariable(name: "minlen", scope: !1363, file: !3, line: 599, type: !10)
!1378 = !DILocalVariable(name: "res", scope: !1363, file: !3, line: 600, type: !22)
!1379 = !DILocalVariable(name: "i", scope: !1380, file: !3, line: 639, type: !10)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 638, column: 40)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 638, column: 13)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 627, column: 35)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 627, column: 5)
!1384 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 627, column: 5)
!1385 = !DILocalVariable(name: "output", scope: !1386, file: !3, line: 659, type: !23)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 657, column: 17)
!1387 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 657, column: 9)
!1388 = !DILocalVariable(name: "byte", scope: !1386, file: !3, line: 659, type: !23)
!1389 = !DILocalVariable(name: "i", scope: !1386, file: !3, line: 660, type: !10)
!1390 = !DILocalVariable(name: "lp", scope: !1391, file: !3, line: 670, type: !1393)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 669, column: 65)
!1392 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 669, column: 13)
!1393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 1024, elements: !1394)
!1394 = !{!1395}
!1395 = !DISubrange(count: 16)
!1396 = !DILocalVariable(name: "lres", scope: !1391, file: !3, line: 671, type: !24)
!1397 = !DILocation(line: 591, column: 27, scope: !1363)
!1398 = !DILocation(line: 592, column: 23, scope: !1363)
!1399 = !DILocation(line: 592, column: 20, scope: !1363)
!1400 = !DILocation(line: 592, column: 32, scope: !1363)
!1401 = !DILocation(line: 592, column: 11, scope: !1363)
!1402 = !DILocation(line: 593, column: 27, scope: !1363)
!1403 = !DILocation(line: 593, column: 15, scope: !1363)
!1404 = !DILocation(line: 597, column: 25, scope: !1363)
!1405 = !DILocation(line: 599, column: 19, scope: !1363)
!1406 = !DILocation(line: 600, column: 20, scope: !1363)
!1407 = !DILocation(line: 603, column: 10, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 603, column: 9)
!1409 = !DILocation(line: 603, column: 27, scope: !1408)
!1410 = !DILocation(line: 603, column: 52, scope: !1408)
!1411 = !DILocation(line: 603, column: 9, scope: !1363)
!1412 = !DILocation(line: 605, column: 31, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 605, column: 13)
!1414 = !DILocation(line: 605, column: 56, scope: !1413)
!1415 = !DILocation(line: 605, column: 13, scope: !1408)
!1416 = !DILocation(line: 607, column: 31, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 607, column: 13)
!1418 = !DILocation(line: 607, column: 56, scope: !1417)
!1419 = !DILocation(line: 607, column: 13, scope: !1413)
!1420 = !DILocation(line: 609, column: 31, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 609, column: 13)
!1422 = !DILocation(line: 609, column: 56, scope: !1421)
!1423 = !DILocation(line: 609, column: 13, scope: !1417)
!1424 = !DILocation(line: 612, column: 27, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 611, column: 10)
!1426 = !{!1308, !966, i64 128}
!1427 = !DILocation(line: 612, column: 9, scope: !1425)
!1428 = !DILocation(line: 613, column: 9, scope: !1425)
!1429 = !DILocation(line: 594, column: 19, scope: !1363)
!1430 = !DILocation(line: 617, column: 31, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 617, column: 9)
!1432 = !{!1102, !119, i64 64}
!1433 = !DILocation(line: 617, column: 36, scope: !1431)
!1434 = !DILocation(line: 617, column: 9, scope: !1363)
!1435 = !DILocation(line: 618, column: 9, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 617, column: 42)
!1437 = !DILocation(line: 619, column: 9, scope: !1436)
!1438 = !DILocation(line: 623, column: 18, scope: !1363)
!1439 = !DILocation(line: 623, column: 23, scope: !1363)
!1440 = !DILocation(line: 623, column: 15, scope: !1363)
!1441 = !DILocation(line: 594, column: 26, scope: !1363)
!1442 = !DILocation(line: 624, column: 42, scope: !1363)
!1443 = !DILocation(line: 624, column: 11, scope: !1363)
!1444 = !DILocation(line: 596, column: 21, scope: !1363)
!1445 = !DILocation(line: 625, column: 11, scope: !1363)
!1446 = !DILocation(line: 597, column: 20, scope: !1363)
!1447 = !DILocation(line: 626, column: 15, scope: !1363)
!1448 = !DILocation(line: 595, column: 12, scope: !1363)
!1449 = !DILocation(line: 594, column: 23, scope: !1363)
!1450 = !DILocation(line: 627, column: 19, scope: !1383)
!1451 = !DILocation(line: 627, column: 5, scope: !1384)
!1452 = !DILocation(line: 628, column: 30, scope: !1382)
!1453 = !DILocation(line: 628, column: 36, scope: !1382)
!1454 = !DILocation(line: 628, column: 42, scope: !1382)
!1455 = !DILocation(line: 628, column: 33, scope: !1382)
!1456 = !DILocation(line: 628, column: 13, scope: !1382)
!1457 = !DILocation(line: 593, column: 11, scope: !1363)
!1458 = !DILocation(line: 630, column: 15, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 630, column: 13)
!1460 = !DILocation(line: 630, column: 13, scope: !1382)
!1461 = !DILocation(line: 631, column: 13, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 630, column: 24)
!1463 = !DILocation(line: 631, column: 24, scope: !1462)
!1464 = !DILocation(line: 632, column: 13, scope: !1462)
!1465 = !DILocation(line: 632, column: 20, scope: !1462)
!1466 = !DILocation(line: 633, column: 13, scope: !1462)
!1467 = !DILocation(line: 633, column: 20, scope: !1462)
!1468 = !DILocation(line: 635, column: 13, scope: !1462)
!1469 = !DILocation(line: 638, column: 13, scope: !1381)
!1470 = !DILocation(line: 638, column: 13, scope: !1382)
!1471 = !DILocation(line: 639, column: 27, scope: !1380)
!1472 = !DILocation(line: 640, column: 27, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 640, column: 13)
!1474 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 640, column: 13)
!1475 = !DILocation(line: 640, column: 13, scope: !1474)
!1476 = !DILocation(line: 641, column: 21, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 641, column: 21)
!1478 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 640, column: 37)
!1479 = !DILocation(line: 641, column: 21, scope: !1478)
!1480 = !DILocation(line: 642, column: 21, scope: !1477)
!1481 = !DILocation(line: 640, column: 33, scope: !1473)
!1482 = distinct !{!1482, !1475, !1483}
!1483 = !DILocation(line: 643, column: 13, scope: !1474)
!1484 = !DILocation(line: 644, column: 13, scope: !1380)
!1485 = !DILocation(line: 645, column: 13, scope: !1380)
!1486 = !DILocation(line: 646, column: 13, scope: !1380)
!1487 = !DILocation(line: 649, column: 22, scope: !1382)
!1488 = !DILocation(line: 649, column: 9, scope: !1382)
!1489 = !DILocation(line: 649, column: 20, scope: !1382)
!1490 = !DILocation(line: 650, column: 30, scope: !1382)
!1491 = !DILocation(line: 650, column: 9, scope: !1382)
!1492 = !DILocation(line: 650, column: 16, scope: !1382)
!1493 = !DILocation(line: 651, column: 25, scope: !1382)
!1494 = !DILocation(line: 651, column: 37, scope: !1382)
!1495 = !DILocation(line: 87, column: 39, scope: !969, inlinedAt: !1496)
!1496 = distinct !DILocation(line: 651, column: 18, scope: !1382)
!1497 = !DILocation(line: 88, column: 27, scope: !969, inlinedAt: !1496)
!1498 = !DILocation(line: 88, column: 19, scope: !969, inlinedAt: !1496)
!1499 = !DILocation(line: 89, column: 5, scope: !969, inlinedAt: !1496)
!1500 = !DILocation(line: 91, column: 20, scope: !983, inlinedAt: !1496)
!1501 = !DILocation(line: 91, column: 13, scope: !983, inlinedAt: !1496)
!1502 = !DILocation(line: 93, column: 20, scope: !983, inlinedAt: !1496)
!1503 = !DILocation(line: 93, column: 34, scope: !983, inlinedAt: !1496)
!1504 = !DILocation(line: 93, column: 13, scope: !983, inlinedAt: !1496)
!1505 = !DILocation(line: 95, column: 20, scope: !983, inlinedAt: !1496)
!1506 = !DILocation(line: 95, column: 35, scope: !983, inlinedAt: !1496)
!1507 = !DILocation(line: 95, column: 13, scope: !983, inlinedAt: !1496)
!1508 = !DILocation(line: 97, column: 20, scope: !983, inlinedAt: !1496)
!1509 = !DILocation(line: 97, column: 35, scope: !983, inlinedAt: !1496)
!1510 = !DILocation(line: 97, column: 13, scope: !983, inlinedAt: !1496)
!1511 = !DILocation(line: 99, column: 20, scope: !983, inlinedAt: !1496)
!1512 = !DILocation(line: 99, column: 35, scope: !983, inlinedAt: !1496)
!1513 = !DILocation(line: 99, column: 13, scope: !983, inlinedAt: !1496)
!1514 = !DILocation(line: 0, scope: !983, inlinedAt: !1496)
!1515 = !DILocation(line: 102, column: 1, scope: !969, inlinedAt: !1496)
!1516 = !DILocation(line: 651, column: 9, scope: !1382)
!1517 = !DILocation(line: 651, column: 16, scope: !1382)
!1518 = !DILocation(line: 652, column: 20, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 652, column: 13)
!1520 = !DILocation(line: 652, column: 13, scope: !1382)
!1521 = !DILocation(line: 653, column: 15, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 653, column: 13)
!1523 = !DILocation(line: 653, column: 30, scope: !1522)
!1524 = !DILocation(line: 653, column: 20, scope: !1522)
!1525 = !DILocation(line: 0, scope: !1519)
!1526 = !DILocation(line: 0, scope: !1363)
!1527 = !DILocation(line: 627, column: 31, scope: !1383)
!1528 = distinct !{!1528, !1451, !1529}
!1529 = !DILocation(line: 654, column: 5, scope: !1384)
!1530 = !DILocation(line: 657, column: 9, scope: !1387)
!1531 = !DILocation(line: 657, column: 9, scope: !1363)
!1532 = !DILocation(line: 658, column: 32, scope: !1386)
!1533 = !DILocation(line: 669, column: 20, scope: !1392)
!1534 = !DILocation(line: 669, column: 58, scope: !1392)
!1535 = !DILocation(line: 669, column: 47, scope: !1392)
!1536 = !DILocation(line: 670, column: 13, scope: !1391)
!1537 = !DILocation(line: 670, column: 28, scope: !1391)
!1538 = !DILocation(line: 671, column: 35, scope: !1391)
!1539 = !DILocation(line: 671, column: 28, scope: !1391)
!1540 = !DILocation(line: 674, column: 13, scope: !1391)
!1541 = !DILocation(line: 675, column: 24, scope: !1391)
!1542 = !DILocation(line: 675, column: 13, scope: !1391)
!1543 = !DILocation(line: 678, column: 17, scope: !1391)
!1544 = !DILocation(line: 705, column: 17, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 704, column: 41)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 704, column: 24)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 691, column: 24)
!1548 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 678, column: 17)
!1549 = !DILocation(line: 692, column: 17, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 691, column: 40)
!1551 = !DILocation(line: 679, column: 17, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 678, column: 34)
!1553 = !DILocation(line: 660, column: 23, scope: !1386)
!1554 = !DILocation(line: 680, column: 21, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 680, column: 21)
!1556 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 679, column: 58)
!1557 = !DILocation(line: 681, column: 33, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 680, column: 51)
!1559 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 680, column: 21)
!1560 = !DILocation(line: 682, column: 33, scope: !1558)
!1561 = !DILocation(line: 683, column: 33, scope: !1558)
!1562 = !DILocation(line: 684, column: 33, scope: !1558)
!1563 = !DILocation(line: 681, column: 36, scope: !1558)
!1564 = !DILocation(line: 682, column: 36, scope: !1558)
!1565 = !DILocation(line: 683, column: 36, scope: !1558)
!1566 = !DILocation(line: 684, column: 36, scope: !1558)
!1567 = !DILocation(line: 685, column: 30, scope: !1558)
!1568 = !DILocation(line: 680, column: 47, scope: !1559)
!1569 = !DILocation(line: 680, column: 35, scope: !1559)
!1570 = distinct !{!1570, !1554, !1571}
!1571 = !DILocation(line: 686, column: 21, scope: !1555)
!1572 = !DILocation(line: 687, column: 25, scope: !1556)
!1573 = !DILocation(line: 689, column: 28, scope: !1556)
!1574 = !DILocation(line: 679, column: 30, scope: !1552)
!1575 = distinct !{!1575, !1551, !1576}
!1576 = !DILocation(line: 690, column: 17, scope: !1552)
!1577 = !DILocation(line: 693, column: 21, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 693, column: 21)
!1579 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 692, column: 58)
!1580 = !DILocation(line: 694, column: 33, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 693, column: 51)
!1582 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 693, column: 21)
!1583 = !DILocation(line: 695, column: 33, scope: !1581)
!1584 = !DILocation(line: 696, column: 33, scope: !1581)
!1585 = !DILocation(line: 697, column: 33, scope: !1581)
!1586 = !DILocation(line: 694, column: 36, scope: !1581)
!1587 = !DILocation(line: 695, column: 36, scope: !1581)
!1588 = !DILocation(line: 696, column: 36, scope: !1581)
!1589 = !DILocation(line: 697, column: 36, scope: !1581)
!1590 = !DILocation(line: 698, column: 30, scope: !1581)
!1591 = !DILocation(line: 693, column: 47, scope: !1582)
!1592 = !DILocation(line: 693, column: 35, scope: !1582)
!1593 = distinct !{!1593, !1577, !1594}
!1594 = !DILocation(line: 699, column: 21, scope: !1578)
!1595 = !DILocation(line: 700, column: 25, scope: !1579)
!1596 = !DILocation(line: 702, column: 28, scope: !1579)
!1597 = !DILocation(line: 692, column: 30, scope: !1550)
!1598 = distinct !{!1598, !1549, !1599}
!1599 = !DILocation(line: 703, column: 17, scope: !1550)
!1600 = !DILocation(line: 706, column: 21, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 706, column: 21)
!1602 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 705, column: 58)
!1603 = !DILocation(line: 707, column: 33, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 706, column: 51)
!1605 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 706, column: 21)
!1606 = !DILocation(line: 708, column: 33, scope: !1604)
!1607 = !DILocation(line: 709, column: 33, scope: !1604)
!1608 = !DILocation(line: 710, column: 33, scope: !1604)
!1609 = !DILocation(line: 707, column: 36, scope: !1604)
!1610 = !DILocation(line: 708, column: 36, scope: !1604)
!1611 = !DILocation(line: 709, column: 36, scope: !1604)
!1612 = !DILocation(line: 710, column: 36, scope: !1604)
!1613 = !DILocation(line: 711, column: 30, scope: !1604)
!1614 = !DILocation(line: 706, column: 47, scope: !1605)
!1615 = !DILocation(line: 706, column: 35, scope: !1605)
!1616 = distinct !{!1616, !1600, !1617}
!1617 = !DILocation(line: 712, column: 21, scope: !1601)
!1618 = !DILocation(line: 713, column: 25, scope: !1602)
!1619 = !DILocation(line: 715, column: 28, scope: !1602)
!1620 = !DILocation(line: 705, column: 30, scope: !1545)
!1621 = distinct !{!1621, !1544, !1622}
!1622 = !DILocation(line: 716, column: 17, scope: !1545)
!1623 = !DILocation(line: 717, column: 24, scope: !1546)
!1624 = !DILocation(line: 719, column: 32, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 718, column: 58)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 717, column: 41)
!1627 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 717, column: 24)
!1628 = !DILocation(line: 719, column: 31, scope: !1625)
!1629 = !DILocation(line: 719, column: 29, scope: !1625)
!1630 = !DILocation(line: 721, column: 32, scope: !1625)
!1631 = !DILocation(line: 721, column: 31, scope: !1625)
!1632 = !DILocation(line: 721, column: 29, scope: !1625)
!1633 = !DILocation(line: 723, column: 25, scope: !1625)
!1634 = !DILocation(line: 725, column: 28, scope: !1625)
!1635 = !DILocation(line: 718, column: 17, scope: !1626)
!1636 = !DILocation(line: 0, scope: !1625)
!1637 = !DILocation(line: 718, column: 30, scope: !1626)
!1638 = !DILocation(line: 728, column: 9, scope: !1392)
!1639 = !DILocation(line: 0, scope: !1386)
!1640 = !DILocation(line: 728, column: 9, scope: !1391)
!1641 = !DILocation(line: 667, column: 11, scope: !1386)
!1642 = !DILocation(line: 732, column: 18, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 732, column: 9)
!1644 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 732, column: 9)
!1645 = !DILocation(line: 732, column: 9, scope: !1644)
!1646 = !DILocation(line: 733, column: 23, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 732, column: 33)
!1648 = !DILocation(line: 733, column: 30, scope: !1647)
!1649 = !DILocation(line: 733, column: 22, scope: !1647)
!1650 = !DILocation(line: 733, column: 42, scope: !1647)
!1651 = !DILocation(line: 659, column: 23, scope: !1386)
!1652 = !DILocation(line: 734, column: 17, scope: !1647)
!1653 = !DILocation(line: 735, column: 13, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 735, column: 13)
!1655 = !DILocation(line: 736, column: 25, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 735, column: 43)
!1657 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 735, column: 13)
!1658 = !DILocation(line: 736, column: 32, scope: !1656)
!1659 = !DILocation(line: 736, column: 24, scope: !1656)
!1660 = !DILocation(line: 736, column: 44, scope: !1656)
!1661 = !DILocation(line: 659, column: 31, scope: !1386)
!1662 = !DILocation(line: 737, column: 17, scope: !1656)
!1663 = !DILocation(line: 738, column: 40, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 737, column: 28)
!1665 = !DILocation(line: 738, column: 49, scope: !1664)
!1666 = !DILocation(line: 739, column: 40, scope: !1664)
!1667 = !DILocation(line: 739, column: 49, scope: !1664)
!1668 = !DILocation(line: 740, column: 40, scope: !1664)
!1669 = !DILocation(line: 740, column: 49, scope: !1664)
!1670 = !DILocation(line: 0, scope: !1664)
!1671 = !DILocation(line: 735, column: 39, scope: !1657)
!1672 = !DILocation(line: 735, column: 27, scope: !1657)
!1673 = distinct !{!1673, !1653, !1674}
!1674 = !DILocation(line: 742, column: 13, scope: !1654)
!1675 = !DILocation(line: 734, column: 41, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 734, column: 17)
!1677 = !DILocation(line: 743, column: 13, scope: !1647)
!1678 = !DILocation(line: 743, column: 20, scope: !1647)
!1679 = !DILocation(line: 732, column: 29, scope: !1643)
!1680 = distinct !{!1680, !1645, !1681}
!1681 = !DILocation(line: 744, column: 9, scope: !1644)
!1682 = !DILocation(line: 746, column: 5, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 746, column: 5)
!1684 = !DILocation(line: 747, column: 13, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 747, column: 13)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 746, column: 35)
!1687 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 746, column: 5)
!1688 = !DILocation(line: 747, column: 13, scope: !1686)
!1689 = !DILocation(line: 748, column: 13, scope: !1685)
!1690 = !DILocation(line: 746, column: 31, scope: !1687)
!1691 = !DILocation(line: 746, column: 19, scope: !1687)
!1692 = distinct !{!1692, !1682, !1693}
!1693 = !DILocation(line: 749, column: 5, scope: !1683)
!1694 = !DILocation(line: 750, column: 5, scope: !1363)
!1695 = !DILocation(line: 751, column: 5, scope: !1363)
!1696 = !DILocation(line: 752, column: 5, scope: !1363)
!1697 = !DILocation(line: 755, column: 9, scope: !1363)
!1698 = !DILocation(line: 756, column: 13, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 755, column: 17)
!1700 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 755, column: 9)
!1701 = !DILocation(line: 757, column: 19, scope: !1699)
!1702 = !DILocation(line: 757, column: 9, scope: !1699)
!1703 = !DILocation(line: 758, column: 62, scope: !1699)
!1704 = !DILocation(line: 758, column: 66, scope: !1699)
!1705 = !DILocation(line: 758, column: 9, scope: !1699)
!1706 = !DILocation(line: 759, column: 9, scope: !1699)
!1707 = !DILocation(line: 760, column: 5, scope: !1699)
!1708 = !DILocation(line: 760, column: 28, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 760, column: 16)
!1710 = !DILocation(line: 760, column: 16, scope: !1709)
!1711 = !DILocation(line: 760, column: 16, scope: !1700)
!1712 = !DILocation(line: 761, column: 30, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 760, column: 43)
!1714 = !DILocation(line: 761, column: 9, scope: !1713)
!1715 = !DILocation(line: 762, column: 63, scope: !1713)
!1716 = !DILocation(line: 762, column: 67, scope: !1713)
!1717 = !DILocation(line: 762, column: 9, scope: !1713)
!1718 = !DILocation(line: 763, column: 5, scope: !1713)
!1719 = !DILocation(line: 764, column: 17, scope: !1363)
!1720 = !DILocation(line: 765, column: 5, scope: !1363)
!1721 = !DILocation(line: 766, column: 1, scope: !1363)
!1722 = distinct !DISubprogram(name: "bitcountCommand", scope: !3, file: !3, line: 769, type: !845, isLocal: false, isDefinition: true, scopeLine: 769, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1723)
!1723 = !{!1724, !1725, !1726, !1727, !1728, !1729, !1730, !1734}
!1724 = !DILocalVariable(name: "c", arg: 1, scope: !1722, file: !3, line: 769, type: !709)
!1725 = !DILocalVariable(name: "o", scope: !1722, file: !3, line: 770, type: !819)
!1726 = !DILocalVariable(name: "start", scope: !1722, file: !3, line: 771, type: !12)
!1727 = !DILocalVariable(name: "end", scope: !1722, file: !3, line: 771, type: !12)
!1728 = !DILocalVariable(name: "strlen", scope: !1722, file: !3, line: 771, type: !12)
!1729 = !DILocalVariable(name: "p", scope: !1722, file: !3, line: 772, type: !22)
!1730 = !DILocalVariable(name: "llbuf", scope: !1722, file: !3, line: 773, type: !1731)
!1731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 168, elements: !1732)
!1732 = !{!1733}
!1733 = !DISubrange(count: 21)
!1734 = !DILocalVariable(name: "bytes", scope: !1735, file: !3, line: 811, type: !12)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 810, column: 12)
!1736 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 808, column: 9)
!1737 = !DILocation(line: 769, column: 30, scope: !1722)
!1738 = !DILocation(line: 771, column: 5, scope: !1722)
!1739 = !DILocation(line: 773, column: 5, scope: !1722)
!1740 = !DILocation(line: 773, column: 10, scope: !1722)
!1741 = !DILocation(line: 776, column: 40, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 776, column: 9)
!1743 = !DILocation(line: 776, column: 37, scope: !1742)
!1744 = !DILocation(line: 776, column: 55, scope: !1742)
!1745 = !DILocation(line: 776, column: 14, scope: !1742)
!1746 = !DILocation(line: 770, column: 11, scope: !1722)
!1747 = !DILocation(line: 776, column: 63, scope: !1742)
!1748 = !DILocation(line: 776, column: 71, scope: !1742)
!1749 = !DILocation(line: 777, column: 9, scope: !1742)
!1750 = !DILocation(line: 776, column: 9, scope: !1722)
!1751 = !DILocation(line: 771, column: 22, scope: !1722)
!1752 = !DILocation(line: 778, column: 9, scope: !1722)
!1753 = !DILocation(line: 772, column: 20, scope: !1722)
!1754 = !DILocation(line: 781, column: 12, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 781, column: 9)
!1756 = !DILocation(line: 781, column: 9, scope: !1722)
!1757 = !DILocation(line: 782, column: 43, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 782, column: 13)
!1759 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 781, column: 23)
!1760 = !DILocation(line: 782, column: 40, scope: !1758)
!1761 = !DILocation(line: 771, column: 10, scope: !1722)
!1762 = !DILocation(line: 782, column: 13, scope: !1758)
!1763 = !DILocation(line: 782, column: 64, scope: !1758)
!1764 = !DILocation(line: 782, column: 13, scope: !1759)
!1765 = !DILocation(line: 784, column: 43, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 784, column: 13)
!1767 = !DILocation(line: 784, column: 40, scope: !1766)
!1768 = !DILocation(line: 771, column: 17, scope: !1722)
!1769 = !DILocation(line: 784, column: 13, scope: !1766)
!1770 = !DILocation(line: 784, column: 62, scope: !1766)
!1771 = !DILocation(line: 784, column: 13, scope: !1759)
!1772 = !DILocation(line: 787, column: 13, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 787, column: 13)
!1774 = !DILocation(line: 787, column: 26, scope: !1773)
!1775 = !DILocation(line: 787, column: 23, scope: !1773)
!1776 = !DILocation(line: 787, column: 43, scope: !1773)
!1777 = !DILocation(line: 788, column: 31, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 787, column: 50)
!1779 = !DILocation(line: 788, column: 13, scope: !1778)
!1780 = !DILocation(line: 789, column: 13, scope: !1778)
!1781 = !DILocation(line: 791, column: 19, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 791, column: 13)
!1783 = !DILocation(line: 791, column: 13, scope: !1759)
!1784 = !DILocation(line: 791, column: 32, scope: !1782)
!1785 = !DILocation(line: 791, column: 38, scope: !1782)
!1786 = !DILocation(line: 791, column: 30, scope: !1782)
!1787 = !DILocation(line: 791, column: 24, scope: !1782)
!1788 = !DILocation(line: 792, column: 17, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 792, column: 13)
!1790 = !DILocation(line: 792, column: 13, scope: !1759)
!1791 = !DILocation(line: 792, column: 28, scope: !1789)
!1792 = !DILocation(line: 792, column: 34, scope: !1789)
!1793 = !DILocation(line: 792, column: 26, scope: !1789)
!1794 = !DILocation(line: 792, column: 22, scope: !1789)
!1795 = !DILocation(line: 793, column: 19, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 793, column: 13)
!1797 = !DILocation(line: 793, column: 13, scope: !1759)
!1798 = !DILocation(line: 793, column: 30, scope: !1796)
!1799 = !DILocation(line: 793, column: 24, scope: !1796)
!1800 = !DILocation(line: 794, column: 17, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 794, column: 13)
!1802 = !DILocation(line: 794, column: 13, scope: !1759)
!1803 = !DILocation(line: 794, column: 26, scope: !1801)
!1804 = !DILocation(line: 794, column: 22, scope: !1801)
!1805 = !DILocation(line: 795, column: 13, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 795, column: 13)
!1807 = !DILocation(line: 795, column: 20, scope: !1806)
!1808 = !DILocation(line: 795, column: 17, scope: !1806)
!1809 = !DILocation(line: 795, column: 13, scope: !1759)
!1810 = !DILocation(line: 795, column: 40, scope: !1806)
!1811 = !DILocation(line: 795, column: 32, scope: !1806)
!1812 = !DILocation(line: 795, column: 28, scope: !1806)
!1813 = !DILocation(line: 798, column: 15, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 796, column: 30)
!1815 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 796, column: 16)
!1816 = !DILocation(line: 799, column: 15, scope: !1814)
!1817 = !DILocation(line: 799, column: 21, scope: !1814)
!1818 = !DILocation(line: 799, column: 13, scope: !1814)
!1819 = !DILocation(line: 802, column: 27, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 800, column: 12)
!1821 = !DILocation(line: 802, column: 9, scope: !1820)
!1822 = !DILocation(line: 803, column: 9, scope: !1820)
!1823 = !DILocation(line: 808, column: 17, scope: !1736)
!1824 = !DILocation(line: 808, column: 9, scope: !1736)
!1825 = !DILocation(line: 808, column: 15, scope: !1736)
!1826 = !DILocation(line: 808, column: 9, scope: !1722)
!1827 = !DILocation(line: 809, column: 27, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 808, column: 22)
!1829 = !DILocation(line: 809, column: 9, scope: !1828)
!1830 = !DILocation(line: 810, column: 5, scope: !1828)
!1831 = !DILocation(line: 811, column: 25, scope: !1735)
!1832 = !DILocation(line: 811, column: 31, scope: !1735)
!1833 = !DILocation(line: 811, column: 14, scope: !1735)
!1834 = !DILocation(line: 813, column: 43, scope: !1735)
!1835 = !DILocation(line: 813, column: 28, scope: !1735)
!1836 = !DILocation(line: 813, column: 9, scope: !1735)
!1837 = !DILocation(line: 815, column: 1, scope: !1722)
!1838 = distinct !DISubprogram(name: "bitposCommand", scope: !3, file: !3, line: 818, type: !845, isLocal: false, isDefinition: true, scopeLine: 818, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1839)
!1839 = !{!1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1852}
!1840 = !DILocalVariable(name: "c", arg: 1, scope: !1838, file: !3, line: 818, type: !709)
!1841 = !DILocalVariable(name: "o", scope: !1838, file: !3, line: 819, type: !819)
!1842 = !DILocalVariable(name: "bit", scope: !1838, file: !3, line: 820, type: !12)
!1843 = !DILocalVariable(name: "start", scope: !1838, file: !3, line: 820, type: !12)
!1844 = !DILocalVariable(name: "end", scope: !1838, file: !3, line: 820, type: !12)
!1845 = !DILocalVariable(name: "strlen", scope: !1838, file: !3, line: 820, type: !12)
!1846 = !DILocalVariable(name: "p", scope: !1838, file: !3, line: 821, type: !22)
!1847 = !DILocalVariable(name: "llbuf", scope: !1838, file: !3, line: 822, type: !1731)
!1848 = !DILocalVariable(name: "end_given", scope: !1838, file: !3, line: 823, type: !242)
!1849 = !DILocalVariable(name: "bytes", scope: !1850, file: !3, line: 876, type: !12)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 875, column: 12)
!1851 = distinct !DILexicalBlock(scope: !1838, file: !3, line: 873, column: 9)
!1852 = !DILocalVariable(name: "pos", scope: !1850, file: !3, line: 877, type: !12)
!1853 = !DILocation(line: 818, column: 28, scope: !1838)
!1854 = !DILocation(line: 820, column: 5, scope: !1838)
!1855 = !DILocation(line: 822, column: 5, scope: !1838)
!1856 = !DILocation(line: 822, column: 10, scope: !1838)
!1857 = !DILocation(line: 823, column: 9, scope: !1838)
!1858 = !DILocation(line: 827, column: 39, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1838, file: !3, line: 827, column: 9)
!1860 = !DILocation(line: 827, column: 36, scope: !1859)
!1861 = !DILocation(line: 820, column: 10, scope: !1838)
!1862 = !DILocation(line: 827, column: 9, scope: !1859)
!1863 = !DILocation(line: 827, column: 58, scope: !1859)
!1864 = !DILocation(line: 827, column: 9, scope: !1838)
!1865 = !DILocation(line: 829, column: 9, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1838, file: !3, line: 829, column: 9)
!1867 = !DILocation(line: 829, column: 18, scope: !1866)
!1868 = !DILocation(line: 830, column: 9, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 829, column: 31)
!1870 = !DILocation(line: 831, column: 9, scope: !1869)
!1871 = !DILocation(line: 837, column: 31, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1838, file: !3, line: 837, column: 9)
!1873 = !DILocation(line: 837, column: 37, scope: !1872)
!1874 = !DILocation(line: 837, column: 34, scope: !1872)
!1875 = !DILocation(line: 837, column: 14, scope: !1872)
!1876 = !DILocation(line: 819, column: 11, scope: !1838)
!1877 = !DILocation(line: 837, column: 47, scope: !1872)
!1878 = !DILocation(line: 837, column: 9, scope: !1838)
!1879 = !DILocation(line: 838, column: 29, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 837, column: 56)
!1881 = !DILocation(line: 838, column: 9, scope: !1880)
!1882 = !DILocation(line: 839, column: 9, scope: !1880)
!1883 = !DILocation(line: 841, column: 9, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1838, file: !3, line: 841, column: 9)
!1885 = !DILocation(line: 841, column: 9, scope: !1838)
!1886 = !DILocation(line: 820, column: 27, scope: !1838)
!1887 = !DILocation(line: 842, column: 9, scope: !1838)
!1888 = !DILocation(line: 821, column: 20, scope: !1838)
!1889 = !DILocation(line: 845, column: 12, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1838, file: !3, line: 845, column: 9)
!1891 = !DILocation(line: 845, column: 22, scope: !1890)
!1892 = !DILocation(line: 846, column: 43, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 846, column: 13)
!1894 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 845, column: 39)
!1895 = !DILocation(line: 846, column: 40, scope: !1893)
!1896 = !DILocation(line: 820, column: 15, scope: !1838)
!1897 = !DILocation(line: 846, column: 13, scope: !1893)
!1898 = !DILocation(line: 846, column: 64, scope: !1893)
!1899 = !DILocation(line: 846, column: 13, scope: !1894)
!1900 = !DILocation(line: 848, column: 16, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 848, column: 13)
!1902 = !DILocation(line: 848, column: 21, scope: !1901)
!1903 = !DILocation(line: 848, column: 13, scope: !1894)
!1904 = !DILocation(line: 849, column: 47, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 849, column: 17)
!1906 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 848, column: 27)
!1907 = !DILocation(line: 849, column: 44, scope: !1905)
!1908 = !DILocation(line: 820, column: 22, scope: !1838)
!1909 = !DILocation(line: 849, column: 17, scope: !1905)
!1910 = !DILocation(line: 849, column: 66, scope: !1905)
!1911 = !DILocation(line: 849, column: 17, scope: !1906)
!1912 = !DILocation(line: 853, column: 19, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 852, column: 16)
!1914 = !DILocation(line: 853, column: 25, scope: !1913)
!1915 = !DILocation(line: 853, column: 17, scope: !1913)
!1916 = !DILocation(line: 0, scope: !1838)
!1917 = !DILocation(line: 856, column: 13, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 856, column: 13)
!1919 = !DILocation(line: 856, column: 19, scope: !1918)
!1920 = !DILocation(line: 856, column: 13, scope: !1894)
!1921 = !DILocation(line: 856, column: 32, scope: !1918)
!1922 = !DILocation(line: 856, column: 38, scope: !1918)
!1923 = !DILocation(line: 856, column: 30, scope: !1918)
!1924 = !DILocation(line: 856, column: 24, scope: !1918)
!1925 = !DILocation(line: 857, column: 13, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 857, column: 13)
!1927 = !DILocation(line: 857, column: 17, scope: !1926)
!1928 = !DILocation(line: 857, column: 13, scope: !1894)
!1929 = !DILocation(line: 857, column: 28, scope: !1926)
!1930 = !DILocation(line: 857, column: 34, scope: !1926)
!1931 = !DILocation(line: 857, column: 26, scope: !1926)
!1932 = !DILocation(line: 857, column: 22, scope: !1926)
!1933 = !DILocation(line: 858, column: 19, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 858, column: 13)
!1935 = !DILocation(line: 858, column: 13, scope: !1894)
!1936 = !DILocation(line: 858, column: 30, scope: !1934)
!1937 = !DILocation(line: 858, column: 24, scope: !1934)
!1938 = !DILocation(line: 859, column: 17, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 859, column: 13)
!1940 = !DILocation(line: 859, column: 13, scope: !1894)
!1941 = !DILocation(line: 859, column: 26, scope: !1939)
!1942 = !DILocation(line: 859, column: 22, scope: !1939)
!1943 = !DILocation(line: 860, column: 13, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 860, column: 13)
!1945 = !DILocation(line: 860, column: 20, scope: !1944)
!1946 = !DILocation(line: 860, column: 17, scope: !1944)
!1947 = !DILocation(line: 860, column: 13, scope: !1894)
!1948 = !DILocation(line: 860, column: 40, scope: !1944)
!1949 = !DILocation(line: 860, column: 32, scope: !1944)
!1950 = !DILocation(line: 860, column: 28, scope: !1944)
!1951 = !DILocation(line: 863, column: 15, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 861, column: 30)
!1953 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 861, column: 16)
!1954 = !DILocation(line: 864, column: 15, scope: !1952)
!1955 = !DILocation(line: 864, column: 21, scope: !1952)
!1956 = !DILocation(line: 864, column: 13, scope: !1952)
!1957 = !DILocation(line: 867, column: 27, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 865, column: 12)
!1959 = !DILocation(line: 867, column: 9, scope: !1958)
!1960 = !DILocation(line: 868, column: 9, scope: !1958)
!1961 = !DILocation(line: 873, column: 17, scope: !1851)
!1962 = !DILocation(line: 873, column: 9, scope: !1851)
!1963 = !DILocation(line: 873, column: 15, scope: !1851)
!1964 = !DILocation(line: 873, column: 9, scope: !1838)
!1965 = !DILocation(line: 874, column: 9, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 873, column: 22)
!1967 = !DILocation(line: 875, column: 5, scope: !1966)
!1968 = !DILocation(line: 876, column: 25, scope: !1850)
!1969 = !DILocation(line: 876, column: 31, scope: !1850)
!1970 = !DILocation(line: 876, column: 14, scope: !1850)
!1971 = !DILocation(line: 877, column: 33, scope: !1850)
!1972 = !DILocation(line: 877, column: 46, scope: !1850)
!1973 = !DILocation(line: 877, column: 20, scope: !1850)
!1974 = !DILocation(line: 877, column: 14, scope: !1850)
!1975 = !DILocation(line: 886, column: 13, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 886, column: 13)
!1977 = !DILocation(line: 886, column: 26, scope: !1976)
!1978 = !DILocation(line: 886, column: 30, scope: !1976)
!1979 = !DILocation(line: 886, column: 23, scope: !1976)
!1980 = !DILocation(line: 886, column: 50, scope: !1976)
!1981 = !DILocation(line: 886, column: 42, scope: !1976)
!1982 = !DILocation(line: 887, column: 13, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 886, column: 54)
!1984 = !DILocation(line: 890, column: 17, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 890, column: 13)
!1986 = !DILocation(line: 890, column: 13, scope: !1850)
!1987 = !DILocation(line: 890, column: 31, scope: !1985)
!1988 = !DILocation(line: 890, column: 36, scope: !1985)
!1989 = !DILocation(line: 890, column: 28, scope: !1985)
!1990 = !DILocation(line: 890, column: 24, scope: !1985)
!1991 = !DILocation(line: 0, scope: !1850)
!1992 = !DILocation(line: 891, column: 9, scope: !1850)
!1993 = !DILocation(line: 893, column: 1, scope: !1838)
!1994 = distinct !DISubprogram(name: "bitfieldCommand", scope: !3, file: !3, line: 914, type: !845, isLocal: false, isDefinition: true, scopeLine: 914, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1995)
!1995 = !{!1996, !1997, !1998, !1999, !2000, !2001, !2002, !2012, !2013, !2014, !2015, !2019, !2020, !2021, !2022, !2023, !2024, !2030, !2034, !2039, !2040, !2041, !2042, !2043, !2045, !2046, !2047, !2048, !2049, !2054, !2055, !2056, !2057, !2058, !2059, !2062}
!1996 = !DILocalVariable(name: "c", arg: 1, scope: !1994, file: !3, line: 914, type: !709)
!1997 = !DILocalVariable(name: "o", scope: !1994, file: !3, line: 915, type: !819)
!1998 = !DILocalVariable(name: "bitoffset", scope: !1994, file: !3, line: 916, type: !6)
!1999 = !DILocalVariable(name: "j", scope: !1994, file: !3, line: 917, type: !242)
!2000 = !DILocalVariable(name: "numops", scope: !1994, file: !3, line: 917, type: !242)
!2001 = !DILocalVariable(name: "changes", scope: !1994, file: !3, line: 917, type: !242)
!2002 = !DILocalVariable(name: "ops", scope: !1994, file: !3, line: 918, type: !2003)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitfieldOp", file: !3, line: 905, size: 256, elements: !2005)
!2005 = !{!2006, !2007, !2008, !2009, !2010, !2011}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2004, file: !3, line: 906, baseType: !25, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "i64", scope: !2004, file: !3, line: 907, baseType: !27, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !2004, file: !3, line: 908, baseType: !242, size: 32, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "owtype", scope: !2004, file: !3, line: 909, baseType: !242, size: 32, offset: 160)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2004, file: !3, line: 910, baseType: !242, size: 32, offset: 192)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !2004, file: !3, line: 911, baseType: !242, size: 32, offset: 224)
!2012 = !DILocalVariable(name: "owtype", scope: !1994, file: !3, line: 919, type: !242)
!2013 = !DILocalVariable(name: "readonly", scope: !1994, file: !3, line: 920, type: !242)
!2014 = !DILocalVariable(name: "highest_write_offset", scope: !1994, file: !3, line: 921, type: !6)
!2015 = !DILocalVariable(name: "remargs", scope: !2016, file: !3, line: 924, type: !242)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 923, column: 35)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 923, column: 5)
!2018 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 923, column: 5)
!2019 = !DILocalVariable(name: "subcmd", scope: !2016, file: !3, line: 925, type: !830)
!2020 = !DILocalVariable(name: "opcode", scope: !2016, file: !3, line: 926, type: !242)
!2021 = !DILocalVariable(name: "i64", scope: !2016, file: !3, line: 927, type: !788)
!2022 = !DILocalVariable(name: "sign", scope: !2016, file: !3, line: 928, type: !242)
!2023 = !DILocalVariable(name: "bits", scope: !2016, file: !3, line: 929, type: !242)
!2024 = !DILocalVariable(name: "owtypename", scope: !2025, file: !3, line: 938, type: !830)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 937, column: 66)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !3, line: 937, column: 18)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !3, line: 935, column: 18)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !3, line: 933, column: 18)
!2029 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 931, column: 13)
!2030 = !DILocalVariable(name: "thisop", scope: !2031, file: !3, line: 1015, type: !2003)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 1014, column: 34)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !3, line: 1014, column: 5)
!2033 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 1014, column: 5)
!2034 = !DILocalVariable(name: "oldval", scope: !2035, file: !3, line: 1029, type: !27)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 1028, column: 31)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 1028, column: 17)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 1020, column: 9)
!2038 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 1018, column: 13)
!2039 = !DILocalVariable(name: "newval", scope: !2035, file: !3, line: 1029, type: !27)
!2040 = !DILocalVariable(name: "wrapped", scope: !2035, file: !3, line: 1029, type: !27)
!2041 = !DILocalVariable(name: "retval", scope: !2035, file: !3, line: 1029, type: !27)
!2042 = !DILocalVariable(name: "overflow", scope: !2035, file: !3, line: 1030, type: !242)
!2043 = !DILocalVariable(name: "oldval", scope: !2044, file: !3, line: 1059, type: !25)
!2044 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 1058, column: 20)
!2045 = !DILocalVariable(name: "newval", scope: !2044, file: !3, line: 1059, type: !25)
!2046 = !DILocalVariable(name: "wrapped", scope: !2044, file: !3, line: 1059, type: !25)
!2047 = !DILocalVariable(name: "retval", scope: !2044, file: !3, line: 1059, type: !25)
!2048 = !DILocalVariable(name: "overflow", scope: !2044, file: !3, line: 1060, type: !242)
!2049 = !DILocalVariable(name: "buf", scope: !2050, file: !3, line: 1091, type: !2051)
!2050 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 1089, column: 16)
!2051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 72, elements: !2052)
!2052 = !{!2053}
!2053 = !DISubrange(count: 9)
!2054 = !DILocalVariable(name: "strlen", scope: !2050, file: !3, line: 1092, type: !12)
!2055 = !DILocalVariable(name: "src", scope: !2050, file: !3, line: 1093, type: !22)
!2056 = !DILocalVariable(name: "llbuf", scope: !2050, file: !3, line: 1094, type: !1731)
!2057 = !DILocalVariable(name: "i", scope: !2050, file: !3, line: 1104, type: !242)
!2058 = !DILocalVariable(name: "byte", scope: !2050, file: !3, line: 1105, type: !6)
!2059 = !DILocalVariable(name: "val", scope: !2060, file: !3, line: 1114, type: !27)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !3, line: 1113, column: 31)
!2061 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 1113, column: 17)
!2062 = !DILocalVariable(name: "val", scope: !2063, file: !3, line: 1118, type: !25)
!2063 = distinct !DILexicalBlock(scope: !2061, file: !3, line: 1117, column: 20)
!2064 = !DILocation(line: 914, column: 30, scope: !1994)
!2065 = !DILocation(line: 916, column: 5, scope: !1994)
!2066 = !DILocation(line: 917, column: 12, scope: !1994)
!2067 = !DILocation(line: 917, column: 24, scope: !1994)
!2068 = !DILocation(line: 918, column: 24, scope: !1994)
!2069 = !DILocation(line: 919, column: 9, scope: !1994)
!2070 = !DILocation(line: 920, column: 9, scope: !1994)
!2071 = !DILocation(line: 921, column: 12, scope: !1994)
!2072 = !DILocation(line: 917, column: 9, scope: !1994)
!2073 = !DILocation(line: 923, column: 24, scope: !2017)
!2074 = !DILocation(line: 923, column: 19, scope: !2017)
!2075 = !DILocation(line: 923, column: 5, scope: !2018)
!2076 = !DILocation(line: 924, column: 32, scope: !2016)
!2077 = !DILocation(line: 924, column: 13, scope: !2016)
!2078 = !DILocation(line: 925, column: 27, scope: !2016)
!2079 = !DILocation(line: 925, column: 24, scope: !2016)
!2080 = !DILocation(line: 925, column: 36, scope: !2016)
!2081 = !DILocation(line: 925, column: 15, scope: !2016)
!2082 = !DILocation(line: 927, column: 9, scope: !2016)
!2083 = !DILocation(line: 927, column: 19, scope: !2016)
!2084 = !DILocation(line: 928, column: 13, scope: !2016)
!2085 = !DILocation(line: 929, column: 13, scope: !2016)
!2086 = !DILocation(line: 931, column: 14, scope: !2029)
!2087 = !DILocation(line: 931, column: 50, scope: !2029)
!2088 = !DILocation(line: 931, column: 39, scope: !2029)
!2089 = !DILocation(line: 933, column: 19, scope: !2028)
!2090 = !DILocation(line: 933, column: 55, scope: !2028)
!2091 = !DILocation(line: 933, column: 44, scope: !2028)
!2092 = !DILocation(line: 935, column: 19, scope: !2027)
!2093 = !DILocation(line: 935, column: 47, scope: !2027)
!2094 = !DILocation(line: 937, column: 19, scope: !2026)
!2095 = !DILocation(line: 937, column: 60, scope: !2026)
!2096 = !DILocation(line: 937, column: 49, scope: !2026)
!2097 = !DILocation(line: 938, column: 41, scope: !2025)
!2098 = !DILocation(line: 938, column: 32, scope: !2025)
!2099 = !DILocation(line: 938, column: 46, scope: !2025)
!2100 = !DILocation(line: 938, column: 19, scope: !2025)
!2101 = !DILocation(line: 940, column: 18, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 940, column: 17)
!2103 = !DILocation(line: 940, column: 17, scope: !2025)
!2104 = !DILocation(line: 942, column: 23, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 942, column: 22)
!2106 = !DILocation(line: 942, column: 22, scope: !2102)
!2107 = !DILocation(line: 944, column: 23, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 944, column: 22)
!2109 = !DILocation(line: 944, column: 22, scope: !2105)
!2110 = !DILocation(line: 947, column: 17, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 946, column: 18)
!2112 = !DILocation(line: 948, column: 17, scope: !2111)
!2113 = !DILocation(line: 949, column: 17, scope: !2111)
!2114 = !DILocation(line: 953, column: 31, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 952, column: 16)
!2116 = !DILocation(line: 953, column: 13, scope: !2115)
!2117 = !DILocation(line: 954, column: 13, scope: !2115)
!2118 = !DILocation(line: 955, column: 13, scope: !2115)
!2119 = !DILocation(line: 0, scope: !2027)
!2120 = !DILocation(line: 926, column: 13, scope: !2016)
!2121 = !DILocation(line: 959, column: 52, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 959, column: 13)
!2123 = !DILocation(line: 959, column: 43, scope: !2122)
!2124 = !DILocation(line: 447, column: 41, scope: !1037, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 959, column: 13, scope: !2122)
!2126 = !DILocation(line: 447, column: 50, scope: !1037, inlinedAt: !2125)
!2127 = !DILocation(line: 448, column: 18, scope: !1037, inlinedAt: !2125)
!2128 = !DILocation(line: 448, column: 11, scope: !1037, inlinedAt: !2125)
!2129 = !DILocation(line: 450, column: 5, scope: !1037, inlinedAt: !2125)
!2130 = !DILocation(line: 452, column: 9, scope: !1056, inlinedAt: !2125)
!2131 = !DILocation(line: 452, column: 9, scope: !1037, inlinedAt: !2125)
!2132 = !DILocation(line: 457, column: 9, scope: !1059, inlinedAt: !2125)
!2133 = !DILocation(line: 458, column: 9, scope: !1059, inlinedAt: !2125)
!2134 = !DILocation(line: 461, column: 21, scope: !1065, inlinedAt: !2125)
!2135 = !DILocation(line: 461, column: 24, scope: !1065, inlinedAt: !2125)
!2136 = !DILocation(line: 450, column: 15, scope: !1037, inlinedAt: !2125)
!2137 = !DILocation(line: 461, column: 10, scope: !1065, inlinedAt: !2125)
!2138 = !DILocation(line: 461, column: 46, scope: !1065, inlinedAt: !2125)
!2139 = !DILocation(line: 462, column: 9, scope: !1065, inlinedAt: !2125)
!2140 = !DILocation(line: 462, column: 16, scope: !1065, inlinedAt: !2125)
!2141 = !DILocation(line: 461, column: 51, scope: !1065, inlinedAt: !2125)
!2142 = !DILocation(line: 463, column: 16, scope: !1065, inlinedAt: !2125)
!2143 = !DILocation(line: 463, column: 31, scope: !1065, inlinedAt: !2125)
!2144 = !DILocation(line: 463, column: 21, scope: !1065, inlinedAt: !2125)
!2145 = !DILocation(line: 464, column: 16, scope: !1065, inlinedAt: !2125)
!2146 = !DILocation(line: 464, column: 31, scope: !1065, inlinedAt: !2125)
!2147 = !DILocation(line: 464, column: 21, scope: !1065, inlinedAt: !2125)
!2148 = !DILocation(line: 466, column: 9, scope: !1081, inlinedAt: !2125)
!2149 = !DILocation(line: 467, column: 9, scope: !1081, inlinedAt: !2125)
!2150 = !DILocation(line: 471, column: 1, scope: !1037, inlinedAt: !2125)
!2151 = !DILocation(line: 960, column: 13, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 959, column: 78)
!2153 = !DILocation(line: 961, column: 13, scope: !2152)
!2154 = !DILocation(line: 469, column: 13, scope: !1037, inlinedAt: !2125)
!2155 = !DILocation(line: 964, column: 43, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 964, column: 13)
!2157 = !DILocation(line: 964, column: 49, scope: !2156)
!2158 = !DILocation(line: 964, column: 40, scope: !2156)
!2159 = !DILocation(line: 916, column: 12, scope: !1994)
!2160 = !DILocation(line: 964, column: 13, scope: !2156)
!2161 = !DILocation(line: 964, column: 72, scope: !2156)
!2162 = !DILocation(line: 964, column: 13, scope: !2016)
!2163 = !DILocation(line: 965, column: 13, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 964, column: 80)
!2165 = !DILocation(line: 966, column: 13, scope: !2164)
!2166 = !DILocation(line: 969, column: 20, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 969, column: 13)
!2168 = !DILocation(line: 0, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 971, column: 17)
!2170 = distinct !DILexicalBlock(scope: !2167, file: !3, line: 969, column: 39)
!2171 = !DILocation(line: 969, column: 13, scope: !2016)
!2172 = !DILocation(line: 971, column: 52, scope: !2169)
!2173 = !DILocation(line: 971, column: 50, scope: !2169)
!2174 = !DILocation(line: 971, column: 57, scope: !2169)
!2175 = !DILocation(line: 971, column: 38, scope: !2169)
!2176 = !DILocation(line: 971, column: 17, scope: !2170)
!2177 = !DILocation(line: 974, column: 51, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 974, column: 17)
!2179 = !DILocation(line: 974, column: 57, scope: !2178)
!2180 = !DILocation(line: 974, column: 48, scope: !2178)
!2181 = !DILocation(line: 974, column: 17, scope: !2178)
!2182 = !DILocation(line: 974, column: 72, scope: !2178)
!2183 = !DILocation(line: 974, column: 17, scope: !2170)
!2184 = !DILocation(line: 975, column: 17, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 974, column: 80)
!2186 = !DILocation(line: 976, column: 17, scope: !2185)
!2187 = !DILocation(line: 0, scope: !1994)
!2188 = !DILocation(line: 981, column: 48, scope: !2016)
!2189 = !DILocation(line: 981, column: 41, scope: !2016)
!2190 = !DILocation(line: 981, column: 40, scope: !2016)
!2191 = !DILocation(line: 981, column: 15, scope: !2016)
!2192 = !DILocation(line: 982, column: 9, scope: !2016)
!2193 = !DILocation(line: 982, column: 21, scope: !2016)
!2194 = !DILocation(line: 982, column: 28, scope: !2016)
!2195 = !{!2196, !291, i64 0}
!2196 = !{!"bitfieldOp", !291, i64 0, !291, i64 8, !119, i64 16, !119, i64 20, !119, i64 24, !119, i64 28}
!2197 = !DILocation(line: 983, column: 27, scope: !2016)
!2198 = !DILocation(line: 983, column: 21, scope: !2016)
!2199 = !DILocation(line: 983, column: 25, scope: !2016)
!2200 = !{!2196, !291, i64 8}
!2201 = !DILocation(line: 984, column: 21, scope: !2016)
!2202 = !DILocation(line: 984, column: 28, scope: !2016)
!2203 = !{!2196, !119, i64 16}
!2204 = !DILocation(line: 985, column: 21, scope: !2016)
!2205 = !DILocation(line: 985, column: 28, scope: !2016)
!2206 = !{!2196, !119, i64 20}
!2207 = !DILocation(line: 986, column: 21, scope: !2016)
!2208 = !DILocation(line: 986, column: 26, scope: !2016)
!2209 = !{!2196, !119, i64 24}
!2210 = !DILocation(line: 987, column: 21, scope: !2016)
!2211 = !DILocation(line: 987, column: 26, scope: !2016)
!2212 = !{!2196, !119, i64 28}
!2213 = !DILocation(line: 990, column: 16, scope: !2016)
!2214 = !DILocation(line: 990, column: 11, scope: !2016)
!2215 = !DILocation(line: 991, column: 5, scope: !2017)
!2216 = !DILocation(line: 0, scope: !2018)
!2217 = !DILocation(line: 923, column: 31, scope: !2017)
!2218 = distinct !{!2218, !2075, !2219}
!2219 = !DILocation(line: 991, column: 5, scope: !2018)
!2220 = !DILocation(line: 993, column: 9, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 993, column: 9)
!2222 = !DILocation(line: 993, column: 9, scope: !1994)
!2223 = !DILocation(line: 996, column: 30, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 993, column: 19)
!2225 = !DILocation(line: 996, column: 36, scope: !2224)
!2226 = !DILocation(line: 996, column: 33, scope: !2224)
!2227 = !DILocation(line: 996, column: 13, scope: !2224)
!2228 = !DILocation(line: 915, column: 11, scope: !1994)
!2229 = !DILocation(line: 997, column: 15, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2224, file: !3, line: 997, column: 13)
!2231 = !DILocation(line: 997, column: 23, scope: !2230)
!2232 = !DILocation(line: 997, column: 26, scope: !2230)
!2233 = !DILocation(line: 997, column: 13, scope: !2224)
!2234 = !DILocation(line: 998, column: 13, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 997, column: 53)
!2236 = !DILocation(line: 999, column: 13, scope: !2235)
!2237 = !DILocation(line: 1004, column: 18, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 1004, column: 13)
!2239 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 1001, column: 12)
!2240 = !DILocation(line: 1005, column: 36, scope: !2238)
!2241 = !DILocation(line: 1004, column: 13, scope: !2239)
!2242 = !DILocation(line: 1006, column: 13, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 1005, column: 45)
!2244 = !DILocation(line: 1007, column: 13, scope: !2243)
!2245 = !DILocation(line: 0, scope: !2238)
!2246 = !DILocation(line: 1011, column: 28, scope: !1994)
!2247 = !DILocation(line: 1011, column: 5, scope: !1994)
!2248 = !DILocation(line: 1014, column: 19, scope: !2032)
!2249 = !DILocation(line: 1014, column: 5, scope: !2033)
!2250 = !DILocation(line: 1015, column: 40, scope: !2031)
!2251 = !DILocation(line: 1015, column: 28, scope: !2031)
!2252 = !DILocation(line: 1018, column: 21, scope: !2038)
!2253 = !DILocation(line: 1018, column: 46, scope: !2038)
!2254 = !DILocation(line: 1028, column: 25, scope: !2036)
!2255 = !DILocation(line: 1028, column: 17, scope: !2036)
!2256 = !DILocation(line: 0, scope: !2035)
!2257 = !DILocation(line: 232, column: 19, scope: !448, inlinedAt: !2258)
!2258 = distinct !DILocation(line: 1062, column: 26, scope: !2044)
!2259 = !DILocation(line: 1028, column: 17, scope: !2037)
!2260 = !DILocation(line: 243, column: 42, scope: !469, inlinedAt: !2261)
!2261 = distinct !DILocation(line: 1032, column: 26, scope: !2035)
!2262 = !DILocation(line: 243, column: 54, scope: !469, inlinedAt: !2261)
!2263 = !DILocation(line: 243, column: 71, scope: !469, inlinedAt: !2261)
!2264 = !DILocation(line: 229, column: 45, scope: !429, inlinedAt: !2265)
!2265 = distinct !DILocation(line: 254, column: 14, scope: !469, inlinedAt: !2261)
!2266 = !DILocation(line: 229, column: 57, scope: !429, inlinedAt: !2265)
!2267 = !DILocation(line: 229, column: 74, scope: !429, inlinedAt: !2265)
!2268 = !DILocation(line: 230, column: 45, scope: !429, inlinedAt: !2265)
!2269 = !DILocation(line: 230, column: 42, scope: !429, inlinedAt: !2265)
!2270 = !DILocation(line: 232, column: 5, scope: !449, inlinedAt: !2265)
!2271 = !DILocation(line: 233, column: 23, scope: !452, inlinedAt: !2265)
!2272 = !DILocation(line: 230, column: 14, scope: !429, inlinedAt: !2265)
!2273 = !DILocation(line: 234, column: 27, scope: !452, inlinedAt: !2265)
!2274 = !DILocation(line: 234, column: 17, scope: !452, inlinedAt: !2265)
!2275 = !DILocation(line: 230, column: 20, scope: !429, inlinedAt: !2265)
!2276 = !DILocation(line: 235, column: 19, scope: !452, inlinedAt: !2265)
!2277 = !DILocation(line: 230, column: 25, scope: !429, inlinedAt: !2265)
!2278 = !DILocation(line: 236, column: 27, scope: !452, inlinedAt: !2265)
!2279 = !DILocation(line: 236, column: 35, scope: !452, inlinedAt: !2265)
!2280 = !DILocation(line: 230, column: 34, scope: !429, inlinedAt: !2265)
!2281 = !DILocation(line: 237, column: 23, scope: !452, inlinedAt: !2265)
!2282 = !DILocation(line: 237, column: 28, scope: !452, inlinedAt: !2265)
!2283 = !DILocation(line: 238, column: 15, scope: !452, inlinedAt: !2265)
!2284 = !DILocation(line: 240, column: 5, scope: !429, inlinedAt: !2265)
!2285 = !DILocation(line: 0, scope: !452, inlinedAt: !2265)
!2286 = !DILocation(line: 245, column: 36, scope: !469, inlinedAt: !2261)
!2287 = !DILocation(line: 244, column: 13, scope: !469, inlinedAt: !2261)
!2288 = !DILocation(line: 260, column: 38, scope: !511, inlinedAt: !2261)
!2289 = !DILocation(line: 260, column: 30, scope: !511, inlinedAt: !2261)
!2290 = !DILocation(line: 260, column: 15, scope: !511, inlinedAt: !2261)
!2291 = !DILocation(line: 261, column: 33, scope: !511, inlinedAt: !2261)
!2292 = !DILocation(line: 260, column: 9, scope: !469, inlinedAt: !2261)
!2293 = !DILocation(line: 262, column: 5, scope: !469, inlinedAt: !2261)
!2294 = !DILocation(line: 1029, column: 25, scope: !2035)
!2295 = !DILocation(line: 1035, column: 36, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2035, file: !3, line: 1035, column: 21)
!2297 = !DILocation(line: 0, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 1041, column: 24)
!2299 = !DILocation(line: 1035, column: 21, scope: !2035)
!2300 = !DILocation(line: 1036, column: 37, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 1035, column: 58)
!2302 = !DILocation(line: 1029, column: 33, scope: !2035)
!2303 = !DILocation(line: 1038, column: 62, scope: !2301)
!2304 = !DILocation(line: 325, column: 41, scope: !586, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 1037, column: 32, scope: !2301)
!2306 = !DILocation(line: 325, column: 56, scope: !586, inlinedAt: !2305)
!2307 = !DILocation(line: 325, column: 71, scope: !586, inlinedAt: !2305)
!2308 = !DILocation(line: 325, column: 81, scope: !586, inlinedAt: !2305)
!2309 = !DILocation(line: 326, column: 25, scope: !586, inlinedAt: !2305)
!2310 = !DILocation(line: 326, column: 19, scope: !586, inlinedAt: !2305)
!2311 = !DILocation(line: 326, column: 69, scope: !586, inlinedAt: !2305)
!2312 = !DILocation(line: 326, column: 13, scope: !586, inlinedAt: !2305)
!2313 = !DILocation(line: 327, column: 13, scope: !586, inlinedAt: !2305)
!2314 = !DILocation(line: 335, column: 15, scope: !618, inlinedAt: !2305)
!2315 = !DILocation(line: 332, column: 26, scope: !586, inlinedAt: !2305)
!2316 = !DILocation(line: 335, column: 44, scope: !618, inlinedAt: !2305)
!2317 = !DILocation(line: 335, column: 21, scope: !618, inlinedAt: !2305)
!2318 = !DILocation(line: 335, column: 65, scope: !618, inlinedAt: !2305)
!2319 = !DILocation(line: 335, column: 78, scope: !618, inlinedAt: !2305)
!2320 = !DILocation(line: 335, column: 70, scope: !618, inlinedAt: !2305)
!2321 = !DILocation(line: 338, column: 17, scope: !630, inlinedAt: !2305)
!2322 = !DILocation(line: 342, column: 13, scope: !632, inlinedAt: !2305)
!2323 = !DILocation(line: 333, column: 26, scope: !586, inlinedAt: !2305)
!2324 = !DILocation(line: 345, column: 22, scope: !638, inlinedAt: !2305)
!2325 = !DILocation(line: 345, column: 51, scope: !638, inlinedAt: !2305)
!2326 = !DILocation(line: 345, column: 43, scope: !638, inlinedAt: !2305)
!2327 = !DILocation(line: 345, column: 28, scope: !638, inlinedAt: !2305)
!2328 = !DILocation(line: 345, column: 76, scope: !638, inlinedAt: !2305)
!2329 = !DILocation(line: 347, column: 17, scope: !648, inlinedAt: !2305)
!2330 = !DILocation(line: 351, column: 13, scope: !650, inlinedAt: !2305)
!2331 = !DILocation(line: 359, column: 18, scope: !601, inlinedAt: !2305)
!2332 = !DILocation(line: 360, column: 18, scope: !601, inlinedAt: !2305)
!2333 = !DILocation(line: 361, column: 18, scope: !601, inlinedAt: !2305)
!2334 = !DILocation(line: 361, column: 29, scope: !601, inlinedAt: !2305)
!2335 = !DILocation(line: 361, column: 39, scope: !601, inlinedAt: !2305)
!2336 = !DILocation(line: 367, column: 15, scope: !664, inlinedAt: !2305)
!2337 = !DILocation(line: 368, column: 15, scope: !666, inlinedAt: !2305)
!2338 = !DILocation(line: 370, column: 18, scope: !668, inlinedAt: !2305)
!2339 = !DILocation(line: 370, column: 15, scope: !668, inlinedAt: !2305)
!2340 = !DILocation(line: 367, column: 13, scope: !601, inlinedAt: !2305)
!2341 = !DILocation(line: 374, column: 5, scope: !586, inlinedAt: !2305)
!2342 = !DILocation(line: 1044, column: 52, scope: !2298)
!2343 = !DILocation(line: 325, column: 41, scope: !586, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 1043, column: 32, scope: !2298)
!2345 = !DILocation(line: 325, column: 56, scope: !586, inlinedAt: !2344)
!2346 = !DILocation(line: 325, column: 71, scope: !586, inlinedAt: !2344)
!2347 = !DILocation(line: 325, column: 81, scope: !586, inlinedAt: !2344)
!2348 = !DILocation(line: 326, column: 25, scope: !586, inlinedAt: !2344)
!2349 = !DILocation(line: 326, column: 19, scope: !586, inlinedAt: !2344)
!2350 = !DILocation(line: 326, column: 69, scope: !586, inlinedAt: !2344)
!2351 = !DILocation(line: 326, column: 13, scope: !586, inlinedAt: !2344)
!2352 = !DILocation(line: 327, column: 13, scope: !586, inlinedAt: !2344)
!2353 = !DILocation(line: 335, column: 44, scope: !618, inlinedAt: !2344)
!2354 = !DILocation(line: 335, column: 21, scope: !618, inlinedAt: !2344)
!2355 = !DILocation(line: 338, column: 17, scope: !630, inlinedAt: !2344)
!2356 = !DILocation(line: 342, column: 13, scope: !632, inlinedAt: !2344)
!2357 = !DILocation(line: 345, column: 22, scope: !638, inlinedAt: !2344)
!2358 = !DILocation(line: 345, column: 28, scope: !638, inlinedAt: !2344)
!2359 = !DILocation(line: 347, column: 17, scope: !648, inlinedAt: !2344)
!2360 = !DILocation(line: 351, column: 13, scope: !650, inlinedAt: !2344)
!2361 = !DILocation(line: 359, column: 18, scope: !601, inlinedAt: !2344)
!2362 = !DILocation(line: 360, column: 18, scope: !601, inlinedAt: !2344)
!2363 = !DILocation(line: 361, column: 18, scope: !601, inlinedAt: !2344)
!2364 = !DILocation(line: 361, column: 29, scope: !601, inlinedAt: !2344)
!2365 = !DILocation(line: 361, column: 39, scope: !601, inlinedAt: !2344)
!2366 = !DILocation(line: 367, column: 15, scope: !664, inlinedAt: !2344)
!2367 = !DILocation(line: 368, column: 15, scope: !666, inlinedAt: !2344)
!2368 = !DILocation(line: 370, column: 18, scope: !668, inlinedAt: !2344)
!2369 = !DILocation(line: 370, column: 15, scope: !668, inlinedAt: !2344)
!2370 = !DILocation(line: 367, column: 13, scope: !601, inlinedAt: !2344)
!2371 = !DILocation(line: 374, column: 5, scope: !586, inlinedAt: !2344)
!2372 = !DILocation(line: 1051, column: 43, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2035, file: !3, line: 1051, column: 21)
!2374 = !DILocation(line: 375, column: 1, scope: !586, inlinedAt: !2305)
!2375 = !DILocation(line: 1029, column: 50, scope: !2035)
!2376 = !DILocation(line: 1051, column: 50, scope: !2373)
!2377 = !DILocation(line: 1051, column: 21, scope: !2035)
!2378 = !DILocation(line: 375, column: 1, scope: !586, inlinedAt: !2344)
!2379 = !DILocation(line: 1052, column: 21, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 1051, column: 71)
!2381 = !DILocation(line: 1053, column: 42, scope: !2380)
!2382 = !DILocation(line: 1054, column: 47, scope: !2380)
!2383 = !DILocation(line: 1054, column: 39, scope: !2380)
!2384 = !DILocation(line: 224, column: 39, scope: !383, inlinedAt: !2385)
!2385 = distinct !DILocation(line: 1053, column: 21, scope: !2380)
!2386 = !DILocation(line: 224, column: 68, scope: !383, inlinedAt: !2385)
!2387 = !DILocation(line: 224, column: 82, scope: !383, inlinedAt: !2385)
!2388 = !DILocation(line: 225, column: 14, scope: !383, inlinedAt: !2385)
!2389 = !DILocation(line: 209, column: 41, scope: !335, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 226, column: 5, scope: !383, inlinedAt: !2385)
!2391 = !DILocation(line: 209, column: 70, scope: !335, inlinedAt: !2390)
!2392 = !DILocation(line: 209, column: 85, scope: !335, inlinedAt: !2390)
!2393 = !DILocation(line: 210, column: 42, scope: !335, inlinedAt: !2390)
!2394 = !DILocation(line: 212, column: 19, scope: !354, inlinedAt: !2390)
!2395 = !DILocation(line: 212, column: 5, scope: !355, inlinedAt: !2390)
!2396 = !DILocation(line: 1053, column: 54, scope: !2380)
!2397 = !DILocation(line: 209, column: 53, scope: !335, inlinedAt: !2390)
!2398 = !DILocation(line: 224, column: 51, scope: !383, inlinedAt: !2385)
!2399 = !DILocation(line: 213, column: 48, scope: !358, inlinedAt: !2390)
!2400 = !DILocation(line: 213, column: 39, scope: !358, inlinedAt: !2390)
!2401 = !DILocation(line: 213, column: 25, scope: !358, inlinedAt: !2390)
!2402 = !DILocation(line: 213, column: 54, scope: !358, inlinedAt: !2390)
!2403 = !DILocation(line: 213, column: 18, scope: !358, inlinedAt: !2390)
!2404 = !DILocation(line: 210, column: 34, scope: !335, inlinedAt: !2390)
!2405 = !DILocation(line: 214, column: 23, scope: !358, inlinedAt: !2390)
!2406 = !DILocation(line: 210, column: 14, scope: !335, inlinedAt: !2390)
!2407 = !DILocation(line: 215, column: 27, scope: !358, inlinedAt: !2390)
!2408 = !DILocation(line: 215, column: 17, scope: !358, inlinedAt: !2390)
!2409 = !DILocation(line: 210, column: 20, scope: !335, inlinedAt: !2390)
!2410 = !DILocation(line: 216, column: 19, scope: !358, inlinedAt: !2390)
!2411 = !DILocation(line: 210, column: 25, scope: !335, inlinedAt: !2390)
!2412 = !DILocation(line: 217, column: 24, scope: !358, inlinedAt: !2390)
!2413 = !DILocation(line: 217, column: 20, scope: !358, inlinedAt: !2390)
!2414 = !DILocation(line: 217, column: 17, scope: !358, inlinedAt: !2390)
!2415 = !DILocation(line: 218, column: 27, scope: !358, inlinedAt: !2390)
!2416 = !DILocation(line: 219, column: 27, scope: !358, inlinedAt: !2390)
!2417 = !DILocation(line: 219, column: 19, scope: !358, inlinedAt: !2390)
!2418 = !DILocation(line: 219, column: 17, scope: !358, inlinedAt: !2390)
!2419 = !DILocation(line: 220, column: 15, scope: !358, inlinedAt: !2390)
!2420 = !DILocation(line: 212, column: 28, scope: !354, inlinedAt: !2390)
!2421 = !DILocation(line: 222, column: 1, scope: !335, inlinedAt: !2390)
!2422 = !DILocation(line: 227, column: 1, scope: !383, inlinedAt: !2385)
!2423 = !DILocation(line: 1055, column: 17, scope: !2380)
!2424 = !DILocation(line: 1056, column: 39, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 1055, column: 24)
!2426 = !{!1308, !966, i64 80}
!2427 = !DILocation(line: 1056, column: 21, scope: !2425)
!2428 = !DILocation(line: 229, column: 45, scope: !429, inlinedAt: !2258)
!2429 = !DILocation(line: 229, column: 57, scope: !429, inlinedAt: !2258)
!2430 = !DILocation(line: 229, column: 74, scope: !429, inlinedAt: !2258)
!2431 = !DILocation(line: 230, column: 45, scope: !429, inlinedAt: !2258)
!2432 = !DILocation(line: 230, column: 42, scope: !429, inlinedAt: !2258)
!2433 = !DILocation(line: 232, column: 5, scope: !449, inlinedAt: !2258)
!2434 = !DILocation(line: 233, column: 23, scope: !452, inlinedAt: !2258)
!2435 = !DILocation(line: 230, column: 14, scope: !429, inlinedAt: !2258)
!2436 = !DILocation(line: 234, column: 27, scope: !452, inlinedAt: !2258)
!2437 = !DILocation(line: 234, column: 17, scope: !452, inlinedAt: !2258)
!2438 = !DILocation(line: 230, column: 20, scope: !429, inlinedAt: !2258)
!2439 = !DILocation(line: 235, column: 19, scope: !452, inlinedAt: !2258)
!2440 = !DILocation(line: 230, column: 25, scope: !429, inlinedAt: !2258)
!2441 = !DILocation(line: 236, column: 27, scope: !452, inlinedAt: !2258)
!2442 = !DILocation(line: 236, column: 35, scope: !452, inlinedAt: !2258)
!2443 = !DILocation(line: 230, column: 34, scope: !429, inlinedAt: !2258)
!2444 = !DILocation(line: 237, column: 23, scope: !452, inlinedAt: !2258)
!2445 = !DILocation(line: 237, column: 28, scope: !452, inlinedAt: !2258)
!2446 = !DILocation(line: 238, column: 15, scope: !452, inlinedAt: !2258)
!2447 = !DILocation(line: 240, column: 5, scope: !429, inlinedAt: !2258)
!2448 = !DILocation(line: 0, scope: !452, inlinedAt: !2258)
!2449 = !DILocation(line: 1059, column: 26, scope: !2044)
!2450 = !DILocation(line: 1065, column: 36, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 1065, column: 21)
!2452 = !DILocation(line: 0, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 1071, column: 24)
!2454 = !DILocation(line: 1065, column: 21, scope: !2044)
!2455 = !DILocation(line: 1066, column: 37, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 1065, column: 58)
!2457 = !DILocation(line: 1059, column: 34, scope: !2044)
!2458 = !DILocation(line: 1068, column: 62, scope: !2456)
!2459 = !DILocation(line: 288, column: 44, scope: !517, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 1067, column: 32, scope: !2456)
!2461 = !DILocation(line: 288, column: 59, scope: !517, inlinedAt: !2460)
!2462 = !DILocation(line: 288, column: 74, scope: !517, inlinedAt: !2460)
!2463 = !DILocation(line: 288, column: 84, scope: !517, inlinedAt: !2460)
!2464 = !DILocation(line: 289, column: 26, scope: !517, inlinedAt: !2460)
!2465 = !DILocation(line: 289, column: 68, scope: !517, inlinedAt: !2460)
!2466 = !DILocation(line: 289, column: 20, scope: !517, inlinedAt: !2460)
!2467 = !DILocation(line: 289, column: 14, scope: !517, inlinedAt: !2460)
!2468 = !DILocation(line: 291, column: 23, scope: !517, inlinedAt: !2460)
!2469 = !DILocation(line: 291, column: 13, scope: !517, inlinedAt: !2460)
!2470 = !DILocation(line: 293, column: 15, scope: !545, inlinedAt: !2460)
!2471 = !DILocation(line: 293, column: 21, scope: !545, inlinedAt: !2460)
!2472 = !DILocation(line: 290, column: 26, scope: !517, inlinedAt: !2460)
!2473 = !DILocation(line: 290, column: 13, scope: !517, inlinedAt: !2460)
!2474 = !DILocation(line: 293, column: 30, scope: !545, inlinedAt: !2460)
!2475 = !DILocation(line: 293, column: 42, scope: !545, inlinedAt: !2460)
!2476 = !DILocation(line: 293, column: 34, scope: !545, inlinedAt: !2460)
!2477 = !DILocation(line: 295, column: 17, scope: !557, inlinedAt: !2460)
!2478 = !DILocation(line: 299, column: 13, scope: !559, inlinedAt: !2460)
!2479 = !DILocation(line: 302, column: 21, scope: !564, inlinedAt: !2460)
!2480 = !DILocation(line: 302, column: 33, scope: !564, inlinedAt: !2460)
!2481 = !DILocation(line: 302, column: 25, scope: !564, inlinedAt: !2460)
!2482 = !DILocation(line: 304, column: 17, scope: !572, inlinedAt: !2460)
!2483 = !DILocation(line: 308, column: 13, scope: !574, inlinedAt: !2460)
!2484 = !DILocation(line: 316, column: 18, scope: !531, inlinedAt: !2460)
!2485 = !DILocation(line: 317, column: 18, scope: !531, inlinedAt: !2460)
!2486 = !DILocation(line: 319, column: 13, scope: !531, inlinedAt: !2460)
!2487 = !DILocation(line: 322, column: 5, scope: !517, inlinedAt: !2460)
!2488 = !DILocation(line: 288, column: 44, scope: !517, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 1073, column: 32, scope: !2453)
!2490 = !DILocation(line: 288, column: 59, scope: !517, inlinedAt: !2489)
!2491 = !DILocation(line: 288, column: 74, scope: !517, inlinedAt: !2489)
!2492 = !DILocation(line: 289, column: 26, scope: !517, inlinedAt: !2489)
!2493 = !DILocation(line: 289, column: 68, scope: !517, inlinedAt: !2489)
!2494 = !DILocation(line: 289, column: 20, scope: !517, inlinedAt: !2489)
!2495 = !DILocation(line: 289, column: 14, scope: !517, inlinedAt: !2489)
!2496 = !DILocation(line: 293, column: 15, scope: !545, inlinedAt: !2489)
!2497 = !DILocation(line: 293, column: 21, scope: !545, inlinedAt: !2489)
!2498 = !DILocation(line: 1074, column: 52, scope: !2453)
!2499 = !DILocation(line: 288, column: 84, scope: !517, inlinedAt: !2489)
!2500 = !DILocation(line: 295, column: 17, scope: !557, inlinedAt: !2489)
!2501 = !DILocation(line: 299, column: 13, scope: !559, inlinedAt: !2489)
!2502 = !DILocation(line: 316, column: 18, scope: !531, inlinedAt: !2489)
!2503 = !DILocation(line: 317, column: 18, scope: !531, inlinedAt: !2489)
!2504 = !DILocation(line: 319, column: 13, scope: !531, inlinedAt: !2489)
!2505 = !DILocation(line: 322, column: 5, scope: !517, inlinedAt: !2489)
!2506 = !DILocation(line: 1080, column: 43, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 1080, column: 21)
!2508 = !DILocation(line: 323, column: 1, scope: !517, inlinedAt: !2460)
!2509 = !DILocation(line: 1059, column: 51, scope: !2044)
!2510 = !DILocation(line: 1080, column: 50, scope: !2507)
!2511 = !DILocation(line: 1080, column: 21, scope: !2044)
!2512 = !DILocation(line: 323, column: 1, scope: !517, inlinedAt: !2489)
!2513 = !DILocation(line: 1081, column: 21, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 1080, column: 71)
!2515 = !DILocation(line: 1082, column: 44, scope: !2514)
!2516 = !DILocation(line: 1083, column: 49, scope: !2514)
!2517 = !DILocation(line: 1083, column: 41, scope: !2514)
!2518 = !DILocation(line: 209, column: 41, scope: !335, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 1082, column: 21, scope: !2514)
!2520 = !DILocation(line: 209, column: 70, scope: !335, inlinedAt: !2519)
!2521 = !DILocation(line: 209, column: 85, scope: !335, inlinedAt: !2519)
!2522 = !DILocation(line: 210, column: 42, scope: !335, inlinedAt: !2519)
!2523 = !DILocation(line: 212, column: 19, scope: !354, inlinedAt: !2519)
!2524 = !DILocation(line: 212, column: 5, scope: !355, inlinedAt: !2519)
!2525 = !DILocation(line: 1082, column: 56, scope: !2514)
!2526 = !DILocation(line: 209, column: 53, scope: !335, inlinedAt: !2519)
!2527 = !DILocation(line: 213, column: 48, scope: !358, inlinedAt: !2519)
!2528 = !DILocation(line: 213, column: 39, scope: !358, inlinedAt: !2519)
!2529 = !DILocation(line: 213, column: 25, scope: !358, inlinedAt: !2519)
!2530 = !DILocation(line: 213, column: 54, scope: !358, inlinedAt: !2519)
!2531 = !DILocation(line: 213, column: 18, scope: !358, inlinedAt: !2519)
!2532 = !DILocation(line: 210, column: 34, scope: !335, inlinedAt: !2519)
!2533 = !DILocation(line: 214, column: 23, scope: !358, inlinedAt: !2519)
!2534 = !DILocation(line: 210, column: 14, scope: !335, inlinedAt: !2519)
!2535 = !DILocation(line: 215, column: 27, scope: !358, inlinedAt: !2519)
!2536 = !DILocation(line: 215, column: 17, scope: !358, inlinedAt: !2519)
!2537 = !DILocation(line: 210, column: 20, scope: !335, inlinedAt: !2519)
!2538 = !DILocation(line: 216, column: 19, scope: !358, inlinedAt: !2519)
!2539 = !DILocation(line: 210, column: 25, scope: !335, inlinedAt: !2519)
!2540 = !DILocation(line: 217, column: 24, scope: !358, inlinedAt: !2519)
!2541 = !DILocation(line: 217, column: 20, scope: !358, inlinedAt: !2519)
!2542 = !DILocation(line: 217, column: 17, scope: !358, inlinedAt: !2519)
!2543 = !DILocation(line: 218, column: 27, scope: !358, inlinedAt: !2519)
!2544 = !DILocation(line: 219, column: 27, scope: !358, inlinedAt: !2519)
!2545 = !DILocation(line: 219, column: 19, scope: !358, inlinedAt: !2519)
!2546 = !DILocation(line: 219, column: 17, scope: !358, inlinedAt: !2519)
!2547 = !DILocation(line: 220, column: 15, scope: !358, inlinedAt: !2519)
!2548 = !DILocation(line: 212, column: 28, scope: !354, inlinedAt: !2519)
!2549 = !DILocation(line: 222, column: 1, scope: !335, inlinedAt: !2519)
!2550 = !DILocation(line: 1084, column: 17, scope: !2514)
!2551 = !DILocation(line: 1085, column: 39, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 1084, column: 24)
!2553 = !DILocation(line: 1085, column: 21, scope: !2552)
!2554 = !DILocation(line: 1088, column: 20, scope: !2037)
!2555 = !DILocation(line: 1089, column: 9, scope: !2037)
!2556 = !DILocation(line: 1091, column: 13, scope: !2050)
!2557 = !DILocation(line: 1091, column: 27, scope: !2050)
!2558 = !DILocation(line: 1092, column: 13, scope: !2050)
!2559 = !DILocation(line: 1092, column: 18, scope: !2050)
!2560 = !DILocation(line: 1093, column: 28, scope: !2050)
!2561 = !DILocation(line: 1094, column: 13, scope: !2050)
!2562 = !DILocation(line: 1094, column: 18, scope: !2050)
!2563 = !DILocation(line: 1096, column: 17, scope: !2050)
!2564 = !DILocation(line: 1097, column: 23, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 1096, column: 17)
!2566 = !DILocation(line: 1097, column: 17, scope: !2565)
!2567 = !DILocation(line: 0, scope: !2050)
!2568 = !DILocation(line: 1103, column: 13, scope: !2050)
!2569 = !DILocation(line: 1105, column: 35, scope: !2050)
!2570 = !DILocation(line: 1105, column: 42, scope: !2050)
!2571 = !DILocation(line: 1105, column: 20, scope: !2050)
!2572 = !DILocation(line: 1104, column: 17, scope: !2050)
!2573 = !DILocation(line: 1107, column: 25, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 1107, column: 21)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 1106, column: 37)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 1106, column: 13)
!2577 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 1106, column: 13)
!2578 = !DILocation(line: 1106, column: 13, scope: !2577)
!2579 = !DILocation(line: 1107, column: 54, scope: !2574)
!2580 = !DILocation(line: 1107, column: 43, scope: !2574)
!2581 = !DILocation(line: 1107, column: 21, scope: !2575)
!2582 = !DILocation(line: 1108, column: 26, scope: !2575)
!2583 = !DILocation(line: 1108, column: 24, scope: !2575)
!2584 = !DILocation(line: 1107, column: 37, scope: !2574)
!2585 = !DILocation(line: 0, scope: !2060)
!2586 = !DILocation(line: 1113, column: 25, scope: !2061)
!2587 = !DILocation(line: 1113, column: 17, scope: !2061)
!2588 = !DILocation(line: 232, column: 19, scope: !448, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 1118, column: 32, scope: !2063)
!2590 = !DILocation(line: 1113, column: 17, scope: !2050)
!2591 = !DILocation(line: 243, column: 42, scope: !469, inlinedAt: !2592)
!2592 = distinct !DILocation(line: 1114, column: 31, scope: !2060)
!2593 = !DILocation(line: 243, column: 54, scope: !469, inlinedAt: !2592)
!2594 = !DILocation(line: 243, column: 71, scope: !469, inlinedAt: !2592)
!2595 = !DILocation(line: 229, column: 45, scope: !429, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 254, column: 14, scope: !469, inlinedAt: !2592)
!2597 = !DILocation(line: 229, column: 57, scope: !429, inlinedAt: !2596)
!2598 = !DILocation(line: 229, column: 74, scope: !429, inlinedAt: !2596)
!2599 = !DILocation(line: 230, column: 45, scope: !429, inlinedAt: !2596)
!2600 = !DILocation(line: 230, column: 42, scope: !429, inlinedAt: !2596)
!2601 = !DILocation(line: 232, column: 5, scope: !449, inlinedAt: !2596)
!2602 = !DILocation(line: 233, column: 23, scope: !452, inlinedAt: !2596)
!2603 = !DILocation(line: 230, column: 14, scope: !429, inlinedAt: !2596)
!2604 = !DILocation(line: 234, column: 27, scope: !452, inlinedAt: !2596)
!2605 = !DILocation(line: 234, column: 17, scope: !452, inlinedAt: !2596)
!2606 = !DILocation(line: 230, column: 20, scope: !429, inlinedAt: !2596)
!2607 = !DILocation(line: 235, column: 19, scope: !452, inlinedAt: !2596)
!2608 = !DILocation(line: 230, column: 25, scope: !429, inlinedAt: !2596)
!2609 = !DILocation(line: 236, column: 27, scope: !452, inlinedAt: !2596)
!2610 = !DILocation(line: 236, column: 35, scope: !452, inlinedAt: !2596)
!2611 = !DILocation(line: 230, column: 34, scope: !429, inlinedAt: !2596)
!2612 = !DILocation(line: 237, column: 23, scope: !452, inlinedAt: !2596)
!2613 = !DILocation(line: 237, column: 28, scope: !452, inlinedAt: !2596)
!2614 = !DILocation(line: 238, column: 15, scope: !452, inlinedAt: !2596)
!2615 = !DILocation(line: 240, column: 5, scope: !429, inlinedAt: !2596)
!2616 = !DILocation(line: 0, scope: !452, inlinedAt: !2596)
!2617 = !DILocation(line: 245, column: 36, scope: !469, inlinedAt: !2592)
!2618 = !DILocation(line: 244, column: 13, scope: !469, inlinedAt: !2592)
!2619 = !DILocation(line: 260, column: 38, scope: !511, inlinedAt: !2592)
!2620 = !DILocation(line: 260, column: 30, scope: !511, inlinedAt: !2592)
!2621 = !DILocation(line: 260, column: 15, scope: !511, inlinedAt: !2592)
!2622 = !DILocation(line: 261, column: 33, scope: !511, inlinedAt: !2592)
!2623 = !DILocation(line: 260, column: 9, scope: !469, inlinedAt: !2592)
!2624 = !DILocation(line: 262, column: 5, scope: !469, inlinedAt: !2592)
!2625 = !DILocation(line: 1114, column: 25, scope: !2060)
!2626 = !DILocation(line: 1116, column: 17, scope: !2060)
!2627 = !DILocation(line: 1117, column: 13, scope: !2060)
!2628 = !DILocation(line: 229, column: 45, scope: !429, inlinedAt: !2589)
!2629 = !DILocation(line: 229, column: 57, scope: !429, inlinedAt: !2589)
!2630 = !DILocation(line: 229, column: 74, scope: !429, inlinedAt: !2589)
!2631 = !DILocation(line: 230, column: 45, scope: !429, inlinedAt: !2589)
!2632 = !DILocation(line: 230, column: 42, scope: !429, inlinedAt: !2589)
!2633 = !DILocation(line: 232, column: 5, scope: !449, inlinedAt: !2589)
!2634 = !DILocation(line: 233, column: 23, scope: !452, inlinedAt: !2589)
!2635 = !DILocation(line: 230, column: 14, scope: !429, inlinedAt: !2589)
!2636 = !DILocation(line: 234, column: 27, scope: !452, inlinedAt: !2589)
!2637 = !DILocation(line: 234, column: 17, scope: !452, inlinedAt: !2589)
!2638 = !DILocation(line: 230, column: 20, scope: !429, inlinedAt: !2589)
!2639 = !DILocation(line: 235, column: 19, scope: !452, inlinedAt: !2589)
!2640 = !DILocation(line: 230, column: 25, scope: !429, inlinedAt: !2589)
!2641 = !DILocation(line: 236, column: 27, scope: !452, inlinedAt: !2589)
!2642 = !DILocation(line: 236, column: 35, scope: !452, inlinedAt: !2589)
!2643 = !DILocation(line: 230, column: 34, scope: !429, inlinedAt: !2589)
!2644 = !DILocation(line: 237, column: 23, scope: !452, inlinedAt: !2589)
!2645 = !DILocation(line: 237, column: 28, scope: !452, inlinedAt: !2589)
!2646 = !DILocation(line: 238, column: 15, scope: !452, inlinedAt: !2589)
!2647 = !DILocation(line: 240, column: 5, scope: !429, inlinedAt: !2589)
!2648 = !DILocation(line: 0, scope: !452, inlinedAt: !2589)
!2649 = !DILocation(line: 1118, column: 26, scope: !2063)
!2650 = !DILocation(line: 1120, column: 17, scope: !2063)
!2651 = !DILocation(line: 1122, column: 9, scope: !2038)
!2652 = !DILocation(line: 1014, column: 30, scope: !2032)
!2653 = distinct !{!2653, !2249, !2654}
!2654 = !DILocation(line: 1123, column: 5, scope: !2033)
!2655 = !DILocation(line: 1125, column: 9, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 1125, column: 9)
!2657 = !DILocation(line: 1125, column: 9, scope: !1994)
!2658 = !DILocation(line: 1126, column: 30, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 1125, column: 18)
!2660 = !DILocation(line: 1126, column: 36, scope: !2659)
!2661 = !DILocation(line: 1126, column: 33, scope: !2659)
!2662 = !DILocation(line: 1126, column: 9, scope: !2659)
!2663 = !DILocation(line: 1127, column: 55, scope: !2659)
!2664 = !DILocation(line: 1127, column: 52, scope: !2659)
!2665 = !DILocation(line: 1127, column: 66, scope: !2659)
!2666 = !DILocation(line: 1127, column: 70, scope: !2659)
!2667 = !DILocation(line: 1127, column: 9, scope: !2659)
!2668 = !DILocation(line: 1128, column: 25, scope: !2659)
!2669 = !DILocation(line: 1128, column: 22, scope: !2659)
!2670 = !DILocation(line: 1129, column: 5, scope: !2659)
!2671 = !DILocation(line: 1130, column: 5, scope: !1994)
!2672 = !DILocation(line: 1131, column: 1, scope: !1994)
