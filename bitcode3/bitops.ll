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

; Function Attrs: noredzone nounwind readonly
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
  ret i64 %334, !dbg !238
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i64 @redisBitpos(i8*, i64, i32) local_unnamed_addr #3 !dbg !239 {
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
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 184, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !319
  tail call void @_exit(i32 1) #8, !dbg !319
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
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #4

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @setUnsignedBitfield(i8* nocapture, i64, i64, i64) local_unnamed_addr #3 !dbg !335 {
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
  ret void, !dbg !382
}

; Function Attrs: noredzone nounwind
define dso_local void @setSignedBitfield(i8* nocapture, i64, i64, i64) local_unnamed_addr #3 !dbg !383 {
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
  ret void, !dbg !427
}

; Function Attrs: noredzone nounwind readonly
define dso_local i64 @getUnsignedBitfield(i8* nocapture readonly, i64, i64) local_unnamed_addr #0 !dbg !428 {
  %4 = icmp eq i64 %2, 0, !dbg !446
  br i1 %4, label %55, label %5, !dbg !449

; <label>:5:                                      ; preds = %3
  %6 = and i64 %2, 1, !dbg !450
  %7 = icmp eq i64 %2, 1, !dbg !450
  br i1 %7, label %40, label %8, !dbg !450

; <label>:8:                                      ; preds = %5
  %9 = sub i64 %2, %6, !dbg !450
  br label %10, !dbg !450

; <label>:10:                                     ; preds = %10, %8
  %11 = phi i64 [ 0, %8 ], [ %34, %10 ]
  %12 = phi i64 [ %1, %8 ], [ %35, %10 ]
  %13 = phi i64 [ %9, %8 ], [ %36, %10 ]
  %14 = lshr i64 %12, 3, !dbg !450
  %15 = and i64 %12, 7, !dbg !453
  %16 = xor i64 %15, 7, !dbg !454
  %17 = getelementptr inbounds i8, i8* %0, i64 %14, !dbg !456
  %18 = load i8, i8* %17, align 1, !dbg !456, !tbaa !103
  %19 = zext i8 %18 to i64, !dbg !456
  %20 = lshr i64 %19, %16, !dbg !458
  %21 = and i64 %20, 1, !dbg !459
  %22 = shl i64 %11, 1, !dbg !461
  %23 = or i64 %21, %22, !dbg !462
  %24 = add i64 %12, 1, !dbg !463
  %25 = lshr i64 %24, 3, !dbg !450
  %26 = and i64 %24, 7, !dbg !453
  %27 = xor i64 %26, 7, !dbg !454
  %28 = getelementptr inbounds i8, i8* %0, i64 %25, !dbg !456
  %29 = load i8, i8* %28, align 1, !dbg !456, !tbaa !103
  %30 = zext i8 %29 to i64, !dbg !456
  %31 = lshr i64 %30, %27, !dbg !458
  %32 = and i64 %31, 1, !dbg !459
  %33 = shl i64 %23, 1, !dbg !461
  %34 = or i64 %32, %33, !dbg !462
  %35 = add i64 %12, 2, !dbg !463
  %36 = add i64 %13, -2, !dbg !449
  %37 = icmp eq i64 %36, 0, !dbg !449
  br i1 %37, label %38, label %10, !dbg !449, !llvm.loop !464

; <label>:38:                                     ; preds = %10
  %39 = shl i64 %34, 1, !dbg !449
  br label %40, !dbg !449

; <label>:40:                                     ; preds = %38, %5
  %41 = phi i64 [ undef, %5 ], [ %34, %38 ]
  %42 = phi i64 [ 0, %5 ], [ %39, %38 ]
  %43 = phi i64 [ %1, %5 ], [ %35, %38 ]
  %44 = icmp eq i64 %6, 0, !dbg !449
  br i1 %44, label %55, label %45, !dbg !449

; <label>:45:                                     ; preds = %40
  %46 = lshr i64 %43, 3, !dbg !450
  %47 = getelementptr inbounds i8, i8* %0, i64 %46, !dbg !456
  %48 = load i8, i8* %47, align 1, !dbg !456, !tbaa !103
  %49 = zext i8 %48 to i64, !dbg !456
  %50 = and i64 %43, 7, !dbg !453
  %51 = xor i64 %50, 7, !dbg !454
  %52 = lshr i64 %49, %51, !dbg !458
  %53 = and i64 %52, 1, !dbg !459
  %54 = or i64 %53, %42, !dbg !462
  br label %55, !dbg !466

; <label>:55:                                     ; preds = %45, %40, %3
  %56 = phi i64 [ 0, %3 ], [ %41, %40 ], [ %54, %45 ], !dbg !467
  ret i64 %56, !dbg !466
}

; Function Attrs: noredzone nounwind readonly
define dso_local i64 @getSignedBitfield(i8* nocapture readonly, i64, i64) local_unnamed_addr #0 !dbg !468 {
  %4 = icmp eq i64 %2, 0, !dbg !490
  br i1 %4, label %55, label %5, !dbg !491

; <label>:5:                                      ; preds = %3
  %6 = and i64 %2, 1, !dbg !492
  %7 = icmp eq i64 %2, 1, !dbg !492
  br i1 %7, label %40, label %8, !dbg !492

; <label>:8:                                      ; preds = %5
  %9 = sub i64 %2, %6, !dbg !492
  br label %10, !dbg !492

; <label>:10:                                     ; preds = %10, %8
  %11 = phi i64 [ 0, %8 ], [ %34, %10 ]
  %12 = phi i64 [ %1, %8 ], [ %35, %10 ]
  %13 = phi i64 [ %9, %8 ], [ %36, %10 ]
  %14 = lshr i64 %12, 3, !dbg !492
  %15 = and i64 %12, 7, !dbg !494
  %16 = xor i64 %15, 7, !dbg !495
  %17 = getelementptr inbounds i8, i8* %0, i64 %14, !dbg !497
  %18 = load i8, i8* %17, align 1, !dbg !497, !tbaa !103
  %19 = zext i8 %18 to i64, !dbg !497
  %20 = lshr i64 %19, %16, !dbg !499
  %21 = and i64 %20, 1, !dbg !500
  %22 = shl i64 %11, 1, !dbg !502
  %23 = or i64 %21, %22, !dbg !503
  %24 = add i64 %12, 1, !dbg !504
  %25 = lshr i64 %24, 3, !dbg !492
  %26 = and i64 %24, 7, !dbg !494
  %27 = xor i64 %26, 7, !dbg !495
  %28 = getelementptr inbounds i8, i8* %0, i64 %25, !dbg !497
  %29 = load i8, i8* %28, align 1, !dbg !497, !tbaa !103
  %30 = zext i8 %29 to i64, !dbg !497
  %31 = lshr i64 %30, %27, !dbg !499
  %32 = and i64 %31, 1, !dbg !500
  %33 = shl i64 %23, 1, !dbg !502
  %34 = or i64 %32, %33, !dbg !503
  %35 = add i64 %12, 2, !dbg !504
  %36 = add i64 %13, -2, !dbg !491
  %37 = icmp eq i64 %36, 0, !dbg !491
  br i1 %37, label %38, label %10, !dbg !491, !llvm.loop !464

; <label>:38:                                     ; preds = %10
  %39 = shl i64 %34, 1, !dbg !491
  br label %40, !dbg !491

; <label>:40:                                     ; preds = %38, %5
  %41 = phi i64 [ undef, %5 ], [ %34, %38 ]
  %42 = phi i64 [ 0, %5 ], [ %39, %38 ]
  %43 = phi i64 [ %1, %5 ], [ %35, %38 ]
  %44 = icmp eq i64 %6, 0, !dbg !491
  br i1 %44, label %55, label %45, !dbg !491

; <label>:45:                                     ; preds = %40
  %46 = lshr i64 %43, 3, !dbg !492
  %47 = getelementptr inbounds i8, i8* %0, i64 %46, !dbg !497
  %48 = load i8, i8* %47, align 1, !dbg !497, !tbaa !103
  %49 = zext i8 %48 to i64, !dbg !497
  %50 = and i64 %43, 7, !dbg !494
  %51 = xor i64 %50, 7, !dbg !495
  %52 = lshr i64 %49, %51, !dbg !499
  %53 = and i64 %52, 1, !dbg !500
  %54 = or i64 %53, %42, !dbg !503
  br label %55, !dbg !505

; <label>:55:                                     ; preds = %45, %40, %3
  %56 = phi i64 [ 0, %3 ], [ %41, %40 ], [ %54, %45 ], !dbg !507
  %57 = add i64 %2, -1, !dbg !505
  %58 = shl i64 1, %57, !dbg !510
  %59 = and i64 %56, %58, !dbg !511
  %60 = icmp eq i64 %59, 0, !dbg !511
  %61 = shl i64 -1, %2, !dbg !512
  %62 = select i1 %60, i64 0, i64 %61, !dbg !513
  %63 = or i64 %62, %56, !dbg !513
  ret i64 %63, !dbg !514
}

; Function Attrs: noredzone nounwind
define dso_local i32 @checkUnsignedBitfieldOverflow(i64, i64, i64, i32, i64*) local_unnamed_addr #3 !dbg !515 {
  %6 = icmp eq i64 %2, 64, !dbg !536
  %7 = shl i64 -1, %2, !dbg !537
  %8 = xor i64 %7, -1, !dbg !537
  %9 = select i1 %6, i64 -1, i64 %8, !dbg !538
  %10 = sub i64 0, %0, !dbg !540
  %11 = icmp ult i64 %9, %0, !dbg !542
  br i1 %11, label %17, label %12, !dbg !544

; <label>:12:                                     ; preds = %5
  %13 = sub i64 %9, %0, !dbg !545
  %14 = icmp sgt i64 %1, 0, !dbg !547
  %15 = icmp slt i64 %13, %1, !dbg !548
  %16 = and i1 %14, %15, !dbg !549
  br i1 %16, label %17, label %21, !dbg !549

; <label>:17:                                     ; preds = %12, %5
  %18 = icmp eq i64* %4, null, !dbg !550
  br i1 %18, label %32, label %19, !dbg !553

; <label>:19:                                     ; preds = %17
  switch i32 %3, label %32 [
    i32 0, label %29
    i32 1, label %20
  ], !dbg !554

; <label>:20:                                     ; preds = %19
  store i64 %9, i64* %4, align 8, !dbg !556, !tbaa !290
  br label %32, !dbg !560

; <label>:21:                                     ; preds = %12
  %22 = icmp slt i64 %1, 0, !dbg !561
  %23 = icmp sgt i64 %10, %1, !dbg !563
  %24 = and i1 %22, %23, !dbg !564
  br i1 %24, label %25, label %32, !dbg !564

; <label>:25:                                     ; preds = %21
  %26 = icmp eq i64* %4, null, !dbg !565
  br i1 %26, label %32, label %27, !dbg !568

; <label>:27:                                     ; preds = %25
  switch i32 %3, label %32 [
    i32 0, label %29
    i32 1, label %28
  ], !dbg !569

; <label>:28:                                     ; preds = %27
  store i64 0, i64* %4, align 8, !dbg !571, !tbaa !290
  br label %32, !dbg !575

; <label>:29:                                     ; preds = %27, %19
  %30 = add i64 %1, %0, !dbg !577
  %31 = and i64 %30, %8, !dbg !579
  store i64 %31, i64* %4, align 8, !dbg !580, !tbaa !290
  br label %32, !dbg !581

; <label>:32:                                     ; preds = %21, %28, %25, %27, %20, %17, %19, %29
  %33 = phi i32 [ 1, %29 ], [ 1, %19 ], [ 1, %17 ], [ 1, %20 ], [ -1, %27 ], [ -1, %25 ], [ -1, %28 ], [ 0, %21 ], !dbg !582
  ret i32 %33, !dbg !583
}

; Function Attrs: noredzone nounwind
define dso_local i32 @checkSignedBitfieldOverflow(i64, i64, i64, i32, i64*) local_unnamed_addr #3 !dbg !584 {
  %6 = icmp eq i64 %2, 64, !dbg !609
  br i1 %6, label %15, label %7, !dbg !610

; <label>:7:                                      ; preds = %5
  %8 = add i64 %2, -1, !dbg !611
  %9 = shl nsw i64 -1, %8, !dbg !612
  %10 = xor i64 %9, -1, !dbg !612
  %11 = icmp slt i64 %10, %0, !dbg !615
  %12 = sub nsw i64 %10, %0, !dbg !617
  %13 = icmp slt i64 %12, %1, !dbg !618
  %14 = or i1 %11, %13, !dbg !619
  br i1 %14, label %22, label %27, !dbg !619

; <label>:15:                                     ; preds = %5
  %16 = sub nsw i64 9223372036854775807, %0, !dbg !617
  %17 = icmp slt i64 %16, %1, !dbg !618
  %18 = icmp sgt i64 %0, -1, !dbg !620
  %19 = icmp sgt i64 %1, 0, !dbg !621
  %20 = and i1 %18, %19, !dbg !622
  %21 = and i1 %20, %17, !dbg !622
  br i1 %21, label %22, label %27, !dbg !622

; <label>:22:                                     ; preds = %15, %7
  %23 = phi i64 [ 9223372036854775807, %15 ], [ %10, %7 ]
  %24 = icmp eq i64* %4, null, !dbg !623
  br i1 %24, label %54, label %25, !dbg !626

; <label>:25:                                     ; preds = %22
  switch i32 %3, label %54 [
    i32 0, label %43
    i32 1, label %26
  ], !dbg !627

; <label>:26:                                     ; preds = %25
  store i64 %23, i64* %4, align 8, !dbg !629, !tbaa !290
  br label %54, !dbg !633

; <label>:27:                                     ; preds = %7, %15
  %28 = phi i64 [ -9223372036854775808, %15 ], [ %9, %7 ]
  %29 = phi i1 [ false, %15 ], [ true, %7 ]
  %30 = sub nsw i64 %28, %0, !dbg !634
  %31 = icmp sgt i64 %28, %0, !dbg !635
  %32 = icmp sgt i64 %30, %1, !dbg !637
  %33 = and i1 %29, %32, !dbg !638
  %34 = or i1 %31, %33, !dbg !639
  br i1 %34, label %39, label %35, !dbg !639

; <label>:35:                                     ; preds = %27
  %36 = and i64 %1, %0, !dbg !640
  %37 = icmp slt i64 %36, 0, !dbg !640
  %38 = and i1 %37, %32, !dbg !640
  br i1 %38, label %39, label %54, !dbg !640

; <label>:39:                                     ; preds = %35, %27
  %40 = icmp eq i64* %4, null, !dbg !641
  br i1 %40, label %54, label %41, !dbg !644

; <label>:41:                                     ; preds = %39
  switch i32 %3, label %54 [
    i32 0, label %43
    i32 1, label %42
  ], !dbg !645

; <label>:42:                                     ; preds = %41
  store i64 %28, i64* %4, align 8, !dbg !647, !tbaa !290
  br label %54, !dbg !651

; <label>:43:                                     ; preds = %41, %25
  %44 = shl i64 -1, %2, !dbg !652
  %45 = add i64 %2, -1, !dbg !654
  %46 = shl i64 1, %45, !dbg !655
  %47 = add i64 %1, %0, !dbg !659
  %48 = and i64 %46, %47, !dbg !661
  %49 = icmp eq i64 %48, 0, !dbg !661
  %50 = or i64 %44, %47, !dbg !663
  %51 = xor i64 %44, -1, !dbg !665
  %52 = and i64 %47, %51, !dbg !667
  %53 = select i1 %49, i64 %52, i64 %50, !dbg !668
  store i64 %53, i64* %4, align 8, !dbg !669, !tbaa !290
  br label %54, !dbg !670

; <label>:54:                                     ; preds = %35, %42, %39, %41, %26, %22, %25, %43
  %55 = phi i32 [ 1, %43 ], [ 1, %25 ], [ 1, %22 ], [ 1, %26 ], [ -1, %41 ], [ -1, %39 ], [ -1, %42 ], [ 0, %35 ], !dbg !671
  ret i32 %55, !dbg !672
}

; Function Attrs: noredzone nounwind
define dso_local void @printBits(i8* nocapture readonly, i64) local_unnamed_addr #3 !dbg !673 {
  %3 = icmp eq i64 %1, 0, !dbg !685
  br i1 %3, label %43, label %4, !dbg !688

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %41, %4 ], [ 0, %2 ]
  %6 = getelementptr inbounds i8, i8* %0, i64 %5, !dbg !689
  %7 = load i8, i8* %6, align 1, !dbg !689, !tbaa !103
  %8 = zext i8 %7 to i64, !dbg !689
  %9 = icmp sgt i8 %7, -1, !dbg !693
  %10 = select i1 %9, i32 48, i32 49, !dbg !693
  %11 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %10) #7, !dbg !696
  %12 = and i64 %8, 64, !dbg !697
  %13 = icmp eq i64 %12, 0, !dbg !693
  %14 = select i1 %13, i32 48, i32 49, !dbg !693
  %15 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %14) #7, !dbg !696
  %16 = and i64 %8, 32, !dbg !697
  %17 = icmp eq i64 %16, 0, !dbg !693
  %18 = select i1 %17, i32 48, i32 49, !dbg !693
  %19 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %18) #7, !dbg !696
  %20 = and i64 %8, 16, !dbg !697
  %21 = icmp eq i64 %20, 0, !dbg !693
  %22 = select i1 %21, i32 48, i32 49, !dbg !693
  %23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %22) #7, !dbg !696
  %24 = and i64 %8, 8, !dbg !697
  %25 = icmp eq i64 %24, 0, !dbg !693
  %26 = select i1 %25, i32 48, i32 49, !dbg !693
  %27 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %26) #7, !dbg !696
  %28 = and i64 %8, 4, !dbg !697
  %29 = icmp eq i64 %28, 0, !dbg !693
  %30 = select i1 %29, i32 48, i32 49, !dbg !693
  %31 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %30) #7, !dbg !696
  %32 = and i64 %8, 2, !dbg !697
  %33 = icmp eq i64 %32, 0, !dbg !693
  %34 = select i1 %33, i32 48, i32 49, !dbg !693
  %35 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %34) #7, !dbg !696
  %36 = and i64 %8, 1, !dbg !697
  %37 = icmp eq i64 %36, 0, !dbg !693
  %38 = select i1 %37, i32 48, i32 49, !dbg !693
  %39 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %38) #7, !dbg !696
  %40 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !698
  %41 = add nuw i64 %5, 1, !dbg !699
  %42 = icmp eq i64 %41, %1, !dbg !685
  br i1 %42, label %43, label %4, !dbg !688, !llvm.loop !700

; <label>:43:                                     ; preds = %4, %2
  %44 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !702
  ret void, !dbg !703
}

; Function Attrs: noredzone
declare dso_local i32 @printf(i8*, ...) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local i32 @getBitOffsetFromArgument(%struct.client*, %struct.redisObject* nocapture readonly, i64* nocapture, i32, i32) local_unnamed_addr #3 !dbg !704 {
  %6 = alloca i64, align 8
  %7 = bitcast i64* %6 to i8*, !dbg !960
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9, !dbg !960
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !961
  %9 = load i8*, i8** %8, align 8, !dbg !961, !tbaa !962
  %10 = getelementptr inbounds i8, i8* %9, i64 -1, !dbg !977
  %11 = load i8, i8* %10, align 1, !dbg !977, !tbaa !103
  %12 = trunc i8 %11 to i3, !dbg !979
  switch i3 %12, label %34 [
    i3 0, label %13
    i3 1, label %16
    i3 2, label %20
    i3 3, label %25
    i3 -4, label %30
  ], !dbg !979

; <label>:13:                                     ; preds = %5
  %14 = lshr i8 %11, 3, !dbg !980
  %15 = zext i8 %14 to i64, !dbg !980
  br label %34, !dbg !982

; <label>:16:                                     ; preds = %5
  %17 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !983
  %18 = load i8, i8* %17, align 1, !dbg !984, !tbaa !103
  %19 = zext i8 %18 to i64, !dbg !983
  br label %34, !dbg !985

; <label>:20:                                     ; preds = %5
  %21 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !986
  %22 = bitcast i8* %21 to i16*, !dbg !987
  %23 = load i16, i16* %22, align 1, !dbg !987, !tbaa !988
  %24 = zext i16 %23 to i64, !dbg !986
  br label %34, !dbg !990

; <label>:25:                                     ; preds = %5
  %26 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !991
  %27 = bitcast i8* %26 to i32*, !dbg !992
  %28 = load i32, i32* %27, align 1, !dbg !992, !tbaa !118
  %29 = zext i32 %28 to i64, !dbg !991
  br label %34, !dbg !993

; <label>:30:                                     ; preds = %5
  %31 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !994
  %32 = bitcast i8* %31 to i64*, !dbg !995
  %33 = load i64, i64* %32, align 1, !dbg !995, !tbaa !290
  br label %34, !dbg !996

; <label>:34:                                     ; preds = %5, %13, %16, %20, %25, %30
  %35 = phi i64 [ %33, %30 ], [ %29, %25 ], [ %24, %20 ], [ %19, %16 ], [ %15, %13 ], [ 0, %5 ], !dbg !997
  %36 = load i8, i8* %9, align 1, !dbg !1000, !tbaa !103
  %37 = icmp eq i8 %36, 35, !dbg !1002
  %38 = icmp ne i32 %3, 0, !dbg !1003
  %39 = and i1 %38, %37, !dbg !1004
  %40 = icmp sgt i32 %4, 0, !dbg !1005
  %41 = and i1 %40, %39, !dbg !1004
  %42 = zext i1 %41 to i64, !dbg !1006
  %43 = getelementptr inbounds i8, i8* %9, i64 %42, !dbg !1006
  %44 = sub i64 %35, %42, !dbg !1008
  %45 = call i32 @string2ll(i8* %43, i64 %44, i64* nonnull %6) #7, !dbg !1010
  %46 = icmp eq i32 %45, 0, !dbg !1011
  br i1 %46, label %47, label %48, !dbg !1012

; <label>:47:                                     ; preds = %34
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !1013
  br label %60, !dbg !1015

; <label>:48:                                     ; preds = %34
  br i1 %41, label %49, label %53, !dbg !1016

; <label>:49:                                     ; preds = %48
  %50 = sext i32 %4 to i64, !dbg !1017
  %51 = load i64, i64* %6, align 8, !dbg !1019, !tbaa !1020
  %52 = mul nsw i64 %51, %50, !dbg !1019
  store i64 %52, i64* %6, align 8, !dbg !1019, !tbaa !1020
  br label %55, !dbg !1022

; <label>:53:                                     ; preds = %48
  %54 = load i64, i64* %6, align 8, !dbg !1023, !tbaa !1020
  br label %55, !dbg !1023

; <label>:55:                                     ; preds = %53, %49
  %56 = phi i64 [ %54, %53 ], [ %52, %49 ], !dbg !1023
  %57 = icmp ugt i64 %56, 4294967295, !dbg !1025
  br i1 %57, label %58, label %59, !dbg !1026

; <label>:58:                                     ; preds = %55
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !1027
  br label %60, !dbg !1029

; <label>:59:                                     ; preds = %55
  store i64 %56, i64* %2, align 8, !dbg !1030, !tbaa !290
  br label %60, !dbg !1031

; <label>:60:                                     ; preds = %59, %58, %47
  %61 = phi i32 [ -1, %47 ], [ -1, %58 ], [ 0, %59 ], !dbg !1032
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9, !dbg !1033
  ret i32 %61, !dbg !1033
}

; Function Attrs: noredzone
declare dso_local i32 @string2ll(i8*, i64, i64*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local i32 @getBitfieldTypeFromArgument(%struct.client*, %struct.redisObject* nocapture readonly, i32* nocapture, i32* nocapture) local_unnamed_addr #3 !dbg !1034 {
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !1049
  %7 = load i8*, i8** %6, align 8, !dbg !1049, !tbaa !962
  %8 = bitcast i64* %5 to i8*, !dbg !1051
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #9, !dbg !1051
  %9 = load i8, i8* %7, align 1, !dbg !1052, !tbaa !103
  switch i8 %9, label %11 [
    i8 105, label %12
    i8 117, label %10
  ], !dbg !1054

; <label>:10:                                     ; preds = %4
  br label %12

; <label>:11:                                     ; preds = %4
  tail call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !1055
  br label %33, !dbg !1058

; <label>:12:                                     ; preds = %4, %10
  %13 = phi i32 [ 0, %10 ], [ 1, %4 ]
  store i32 %13, i32* %2, align 4, !dbg !1059, !tbaa !118
  %14 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1061
  %15 = tail call i64 @strlen(i8* nonnull %14) #7, !dbg !1063
  %16 = call i32 @string2ll(i8* nonnull %14, i64 %15, i64* nonnull %5) #7, !dbg !1065
  %17 = icmp eq i32 %16, 0, !dbg !1066
  %18 = load i64, i64* %5, align 8, !dbg !1067
  %19 = icmp slt i64 %18, 1, !dbg !1068
  %20 = or i1 %17, %19, !dbg !1069
  br i1 %20, label %30, label %21, !dbg !1069

; <label>:21:                                     ; preds = %12
  %22 = load i32, i32* %2, align 4, !dbg !1070, !tbaa !118
  %23 = icmp eq i32 %22, 1, !dbg !1071
  %24 = icmp sgt i64 %18, 64, !dbg !1072
  %25 = and i1 %24, %23, !dbg !1073
  br i1 %25, label %30, label %26, !dbg !1073

; <label>:26:                                     ; preds = %21
  %27 = icmp eq i32 %22, 0, !dbg !1074
  %28 = icmp sgt i64 %18, 63, !dbg !1075
  %29 = and i1 %28, %27, !dbg !1076
  br i1 %29, label %30, label %31, !dbg !1076

; <label>:30:                                     ; preds = %26, %21, %12
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !1077
  br label %33, !dbg !1079

; <label>:31:                                     ; preds = %26
  %32 = trunc i64 %18 to i32, !dbg !1080
  store i32 %32, i32* %3, align 4, !dbg !1081, !tbaa !118
  br label %33, !dbg !1082

; <label>:33:                                     ; preds = %31, %30, %11
  %34 = phi i32 [ -1, %30 ], [ 0, %31 ], [ -1, %11 ], !dbg !1083
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #9, !dbg !1084
  ret i32 %34, !dbg !1084
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @lookupStringForBitCommand(%struct.client*, i64) local_unnamed_addr #3 !dbg !1085 {
  %3 = lshr i64 %1, 3, !dbg !1095
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1097
  %5 = load %struct.redisDb*, %struct.redisDb** %4, align 8, !dbg !1097, !tbaa !1098
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1102
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1102, !tbaa !1103
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 1, !dbg !1104
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !1104, !tbaa !1105
  %10 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %5, %struct.redisObject* %9) #7, !dbg !1106
  %11 = icmp eq %struct.redisObject* %10, null, !dbg !1108
  br i1 %11, label %12, label %20, !dbg !1110

; <label>:12:                                     ; preds = %2
  %13 = add nuw nsw i64 %3, 1, !dbg !1111
  %14 = tail call i8* @sdsnewlen(i8* null, i64 %13) #7, !dbg !1113
  %15 = tail call %struct.redisObject* @createObject(i32 0, i8* %14) #7, !dbg !1114
  %16 = load %struct.redisDb*, %struct.redisDb** %4, align 8, !dbg !1115, !tbaa !1098
  %17 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1116, !tbaa !1103
  %18 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %17, i64 1, !dbg !1117
  %19 = load %struct.redisObject*, %struct.redisObject** %18, align 8, !dbg !1117, !tbaa !1105
  tail call void @dbAdd(%struct.redisDb* %16, %struct.redisObject* %19, %struct.redisObject* %15) #7, !dbg !1118
  br label %33, !dbg !1119

; <label>:20:                                     ; preds = %2
  %21 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %10, i32 0) #7, !dbg !1120
  %22 = icmp eq i32 %21, 0, !dbg !1120
  br i1 %22, label %23, label %33, !dbg !1123

; <label>:23:                                     ; preds = %20
  %24 = load %struct.redisDb*, %struct.redisDb** %4, align 8, !dbg !1124, !tbaa !1098
  %25 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1125, !tbaa !1103
  %26 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %25, i64 1, !dbg !1126
  %27 = load %struct.redisObject*, %struct.redisObject** %26, align 8, !dbg !1126, !tbaa !1105
  %28 = tail call %struct.redisObject* @dbUnshareStringValue(%struct.redisDb* %24, %struct.redisObject* %27, %struct.redisObject* nonnull %10) #7, !dbg !1127
  %29 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %28, i64 0, i32 2, !dbg !1128
  %30 = load i8*, i8** %29, align 8, !dbg !1128, !tbaa !962
  %31 = add nuw nsw i64 %3, 1, !dbg !1129
  %32 = tail call i8* @sdsgrowzero(i8* %30, i64 %31) #7, !dbg !1130
  store i8* %32, i8** %29, align 8, !dbg !1131, !tbaa !962
  br label %33

; <label>:33:                                     ; preds = %12, %23, %20
  %34 = phi %struct.redisObject* [ null, %20 ], [ %15, %12 ], [ %28, %23 ], !dbg !1132
  ret %struct.redisObject* %34, !dbg !1133
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyWrite(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createObject(i32, i8*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @dbAdd(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i32 @checkType(%struct.client*, %struct.redisObject*, i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @dbUnshareStringValue(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @sdsgrowzero(i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local i8* @getObjectReadOnlyString(%struct.redisObject* readonly, i64*, i8*) local_unnamed_addr #3 !dbg !1134 {
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1146
  %5 = load i32, i32* %4, align 8, !dbg !1146
  %6 = and i32 %5, 15, !dbg !1146
  %7 = icmp eq i32 %6, 0, !dbg !1146
  br i1 %7, label %9, label %8, !dbg !1146

; <label>:8:                                      ; preds = %3
  tail call void @_serverAssert(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 507) #7, !dbg !1146
  tail call void @_exit(i32 1) #8, !dbg !1146
  unreachable, !dbg !1146

; <label>:9:                                      ; preds = %3
  %10 = and i32 %5, 240, !dbg !1148
  %11 = icmp eq i32 %10, 16, !dbg !1150
  br i1 %11, label %12, label %20, !dbg !1151

; <label>:12:                                     ; preds = %9
  %13 = icmp eq i64* %1, null, !dbg !1152
  br i1 %13, label %51, label %14, !dbg !1155

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1156
  %16 = bitcast i8** %15 to i64*, !dbg !1156
  %17 = load i64, i64* %16, align 8, !dbg !1156, !tbaa !962
  %18 = tail call i32 @ll2string(i8* %2, i64 21, i64 %17) #7, !dbg !1157
  %19 = sext i32 %18 to i64, !dbg !1157
  store i64 %19, i64* %1, align 8, !dbg !1158, !tbaa !290
  br label %51, !dbg !1159

; <label>:20:                                     ; preds = %9
  %21 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1160
  %22 = load i8*, i8** %21, align 8, !dbg !1160, !tbaa !962
  %23 = icmp eq i64* %1, null, !dbg !1163
  br i1 %23, label %51, label %24, !dbg !1165

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds i8, i8* %22, i64 -1, !dbg !1168
  %26 = load i8, i8* %25, align 1, !dbg !1168, !tbaa !103
  %27 = trunc i8 %26 to i3, !dbg !1170
  switch i3 %27, label %49 [
    i3 0, label %28
    i3 1, label %31
    i3 2, label %35
    i3 3, label %40
    i3 -4, label %45
  ], !dbg !1170

; <label>:28:                                     ; preds = %24
  %29 = lshr i8 %26, 3, !dbg !1171
  %30 = zext i8 %29 to i64, !dbg !1171
  br label %49, !dbg !1172

; <label>:31:                                     ; preds = %24
  %32 = getelementptr inbounds i8, i8* %22, i64 -3, !dbg !1173
  %33 = load i8, i8* %32, align 1, !dbg !1174, !tbaa !103
  %34 = zext i8 %33 to i64, !dbg !1173
  br label %49, !dbg !1175

; <label>:35:                                     ; preds = %24
  %36 = getelementptr inbounds i8, i8* %22, i64 -5, !dbg !1176
  %37 = bitcast i8* %36 to i16*, !dbg !1177
  %38 = load i16, i16* %37, align 1, !dbg !1177, !tbaa !988
  %39 = zext i16 %38 to i64, !dbg !1176
  br label %49, !dbg !1178

; <label>:40:                                     ; preds = %24
  %41 = getelementptr inbounds i8, i8* %22, i64 -9, !dbg !1179
  %42 = bitcast i8* %41 to i32*, !dbg !1180
  %43 = load i32, i32* %42, align 1, !dbg !1180, !tbaa !118
  %44 = zext i32 %43 to i64, !dbg !1179
  br label %49, !dbg !1181

; <label>:45:                                     ; preds = %24
  %46 = getelementptr inbounds i8, i8* %22, i64 -17, !dbg !1182
  %47 = bitcast i8* %46 to i64*, !dbg !1183
  %48 = load i64, i64* %47, align 1, !dbg !1183, !tbaa !290
  br label %49, !dbg !1184

; <label>:49:                                     ; preds = %24, %28, %31, %35, %40, %45
  %50 = phi i64 [ %48, %45 ], [ %44, %40 ], [ %39, %35 ], [ %34, %31 ], [ %30, %28 ], [ 0, %24 ], !dbg !1185
  store i64 %50, i64* %1, align 8, !dbg !1186, !tbaa !290
  br label %51, !dbg !1187

; <label>:51:                                     ; preds = %12, %20, %49, %14
  %52 = phi i8* [ %2, %14 ], [ %2, %12 ], [ %22, %49 ], [ %22, %20 ], !dbg !1188
  ret i8* %52, !dbg !1189
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i32 @ll2string(i8*, i64, i64) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @setbitCommand(%struct.client*) local_unnamed_addr #3 !dbg !1190 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = bitcast i64* %3 to i8*, !dbg !1204
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1204
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1205
  %6 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !1205, !tbaa !1103
  %7 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 2, !dbg !1207
  %8 = load %struct.redisObject*, %struct.redisObject** %7, align 8, !dbg !1207, !tbaa !1105
  %9 = bitcast i64* %2 to i8*, !dbg !1213
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #9, !dbg !1213
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !1214
  %11 = load i8*, i8** %10, align 8, !dbg !1214, !tbaa !962
  %12 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !1218
  %13 = load i8, i8* %12, align 1, !dbg !1218, !tbaa !103
  %14 = trunc i8 %13 to i3, !dbg !1220
  switch i3 %14, label %36 [
    i3 0, label %15
    i3 1, label %18
    i3 2, label %22
    i3 3, label %27
    i3 -4, label %32
  ], !dbg !1220

; <label>:15:                                     ; preds = %1
  %16 = lshr i8 %13, 3, !dbg !1221
  %17 = zext i8 %16 to i64, !dbg !1221
  br label %36, !dbg !1222

; <label>:18:                                     ; preds = %1
  %19 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !1223
  %20 = load i8, i8* %19, align 1, !dbg !1224, !tbaa !103
  %21 = zext i8 %20 to i64, !dbg !1223
  br label %36, !dbg !1225

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !1226
  %24 = bitcast i8* %23 to i16*, !dbg !1227
  %25 = load i16, i16* %24, align 1, !dbg !1227, !tbaa !988
  %26 = zext i16 %25 to i64, !dbg !1226
  br label %36, !dbg !1228

; <label>:27:                                     ; preds = %1
  %28 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !1229
  %29 = bitcast i8* %28 to i32*, !dbg !1230
  %30 = load i32, i32* %29, align 1, !dbg !1230, !tbaa !118
  %31 = zext i32 %30 to i64, !dbg !1229
  br label %36, !dbg !1231

; <label>:32:                                     ; preds = %1
  %33 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !1232
  %34 = bitcast i8* %33 to i64*, !dbg !1233
  %35 = load i64, i64* %34, align 1, !dbg !1233, !tbaa !290
  br label %36, !dbg !1234

; <label>:36:                                     ; preds = %32, %27, %22, %18, %15, %1
  %37 = phi i64 [ %35, %32 ], [ %31, %27 ], [ %26, %22 ], [ %21, %18 ], [ %17, %15 ], [ 0, %1 ], !dbg !1235
  %38 = call i32 @string2ll(i8* %11, i64 %37, i64* nonnull %2) #7, !dbg !1239
  %39 = icmp eq i32 %38, 0, !dbg !1240
  br i1 %39, label %40, label %41, !dbg !1241

; <label>:40:                                     ; preds = %36
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !1242
  br label %45, !dbg !1243

; <label>:41:                                     ; preds = %36
  %42 = load i64, i64* %2, align 8, !dbg !1244, !tbaa !1020
  %43 = icmp ugt i64 %42, 4294967295, !dbg !1245
  br i1 %43, label %44, label %46, !dbg !1246

; <label>:44:                                     ; preds = %41
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !1247
  br label %45, !dbg !1248

; <label>:45:                                     ; preds = %40, %44
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #9, !dbg !1249
  br label %96, !dbg !1250

; <label>:46:                                     ; preds = %41
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #9, !dbg !1249
  %47 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !1251, !tbaa !1103
  %48 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %47, i64 3, !dbg !1253
  %49 = load %struct.redisObject*, %struct.redisObject** %48, align 8, !dbg !1253, !tbaa !1105
  %50 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %49, i64* nonnull %3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !1255
  %51 = icmp eq i32 %50, 0, !dbg !1256
  br i1 %51, label %52, label %96, !dbg !1257

; <label>:52:                                     ; preds = %46
  %53 = load i64, i64* %3, align 8, !dbg !1258, !tbaa !290
  %54 = icmp ugt i64 %53, 1, !dbg !1260
  br i1 %54, label %55, label %56, !dbg !1261

; <label>:55:                                     ; preds = %52
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !1262
  br label %96, !dbg !1264

; <label>:56:                                     ; preds = %52
  %57 = call %struct.redisObject* @lookupStringForBitCommand(%struct.client* nonnull %0, i64 %42) #10, !dbg !1266
  %58 = icmp eq %struct.redisObject* %57, null, !dbg !1269
  br i1 %58, label %96, label %59, !dbg !1270

; <label>:59:                                     ; preds = %56
  %60 = lshr i64 %42, 3, !dbg !1271
  %61 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %57, i64 0, i32 2, !dbg !1273
  %62 = load i8*, i8** %61, align 8, !dbg !1273, !tbaa !962
  %63 = getelementptr inbounds i8, i8* %62, i64 %60, !dbg !1274
  %64 = load i8, i8* %63, align 1, !dbg !1274, !tbaa !103
  %65 = zext i8 %64 to i32, !dbg !1274
  %66 = and i64 %42, 7, !dbg !1276
  %67 = xor i64 %66, 7, !dbg !1277
  %68 = trunc i64 %67 to i32, !dbg !1279
  %69 = shl i32 1, %68, !dbg !1279
  %70 = and i32 %69, %65, !dbg !1280
  %71 = xor i32 %69, 255, !dbg !1282
  %72 = and i32 %71, %65, !dbg !1283
  %73 = load i64, i64* %3, align 8, !dbg !1284, !tbaa !290
  %74 = and i64 %73, 1, !dbg !1285
  %75 = shl i64 %74, %67, !dbg !1286
  %76 = trunc i64 %75 to i32, !dbg !1287
  %77 = or i32 %72, %76, !dbg !1287
  %78 = trunc i32 %77 to i8, !dbg !1288
  store i8 %78, i8* %63, align 1, !dbg !1289, !tbaa !103
  %79 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1290
  %80 = load %struct.redisDb*, %struct.redisDb** %79, align 8, !dbg !1290, !tbaa !1098
  %81 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !1291, !tbaa !1103
  %82 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %81, i64 1, !dbg !1292
  %83 = load %struct.redisObject*, %struct.redisObject** %82, align 8, !dbg !1292, !tbaa !1105
  call void @signalModifiedKey(%struct.redisDb* %80, %struct.redisObject* %83) #7, !dbg !1293
  %84 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !1294, !tbaa !1103
  %85 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %84, i64 1, !dbg !1295
  %86 = load %struct.redisObject*, %struct.redisObject** %85, align 8, !dbg !1295, !tbaa !1105
  %87 = load %struct.redisDb*, %struct.redisDb** %79, align 8, !dbg !1296, !tbaa !1098
  %88 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %87, i64 0, i32 5, !dbg !1297
  %89 = load i32, i32* %88, align 8, !dbg !1297, !tbaa !1298
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), %struct.redisObject* %86, i32 %89) #7, !dbg !1300
  %90 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1301, !tbaa !1302
  %91 = add nsw i64 %90, 1, !dbg !1301
  store i64 %91, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1301, !tbaa !1302
  %92 = icmp eq i32 %70, 0, !dbg !1308
  %93 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !1309
  %94 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1310
  %95 = select i1 %92, %struct.redisObject* %94, %struct.redisObject* %93, !dbg !1308
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %95) #7, !dbg !1311
  br label %96, !dbg !1312

; <label>:96:                                     ; preds = %45, %56, %46, %59, %55
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1312
  ret void, !dbg !1312
}

; Function Attrs: noredzone
declare dso_local i32 @getLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @signalModifiedKey(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @notifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @getbitCommand(%struct.client*) local_unnamed_addr #3 !dbg !1313 {
  %2 = alloca i64, align 8
  %3 = alloca [32 x i8], align 16
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !1326
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #9, !dbg !1326
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1329
  %6 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !1329, !tbaa !1103
  %7 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 2, !dbg !1331
  %8 = load %struct.redisObject*, %struct.redisObject** %7, align 8, !dbg !1331, !tbaa !1105
  %9 = bitcast i64* %2 to i8*, !dbg !1337
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #9, !dbg !1337
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !1338
  %11 = load i8*, i8** %10, align 8, !dbg !1338, !tbaa !962
  %12 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !1342
  %13 = load i8, i8* %12, align 1, !dbg !1342, !tbaa !103
  %14 = trunc i8 %13 to i3, !dbg !1344
  switch i3 %14, label %36 [
    i3 0, label %15
    i3 1, label %18
    i3 2, label %22
    i3 3, label %27
    i3 -4, label %32
  ], !dbg !1344

; <label>:15:                                     ; preds = %1
  %16 = lshr i8 %13, 3, !dbg !1345
  %17 = zext i8 %16 to i64, !dbg !1345
  br label %36, !dbg !1346

; <label>:18:                                     ; preds = %1
  %19 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !1347
  %20 = load i8, i8* %19, align 1, !dbg !1348, !tbaa !103
  %21 = zext i8 %20 to i64, !dbg !1347
  br label %36, !dbg !1349

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !1350
  %24 = bitcast i8* %23 to i16*, !dbg !1351
  %25 = load i16, i16* %24, align 1, !dbg !1351, !tbaa !988
  %26 = zext i16 %25 to i64, !dbg !1350
  br label %36, !dbg !1352

; <label>:27:                                     ; preds = %1
  %28 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !1353
  %29 = bitcast i8* %28 to i32*, !dbg !1354
  %30 = load i32, i32* %29, align 1, !dbg !1354, !tbaa !118
  %31 = zext i32 %30 to i64, !dbg !1353
  br label %36, !dbg !1355

; <label>:32:                                     ; preds = %1
  %33 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !1356
  %34 = bitcast i8* %33 to i64*, !dbg !1357
  %35 = load i64, i64* %34, align 1, !dbg !1357, !tbaa !290
  br label %36, !dbg !1358

; <label>:36:                                     ; preds = %32, %27, %22, %18, %15, %1
  %37 = phi i64 [ %35, %32 ], [ %31, %27 ], [ %26, %22 ], [ %21, %18 ], [ %17, %15 ], [ 0, %1 ], !dbg !1359
  %38 = call i32 @string2ll(i8* %11, i64 %37, i64* nonnull %2) #7, !dbg !1363
  %39 = icmp eq i32 %38, 0, !dbg !1364
  br i1 %39, label %40, label %41, !dbg !1365

; <label>:40:                                     ; preds = %36
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !1366
  br label %45, !dbg !1367

; <label>:41:                                     ; preds = %36
  %42 = load i64, i64* %2, align 8, !dbg !1368, !tbaa !1020
  %43 = icmp ugt i64 %42, 4294967295, !dbg !1369
  br i1 %43, label %44, label %46, !dbg !1370

; <label>:44:                                     ; preds = %41
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !1371
  br label %45, !dbg !1372

; <label>:45:                                     ; preds = %40, %44
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #9, !dbg !1373
  br label %119, !dbg !1374

; <label>:46:                                     ; preds = %41
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #9, !dbg !1373
  %47 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !1375, !tbaa !1103
  %48 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %47, i64 1, !dbg !1377
  %49 = load %struct.redisObject*, %struct.redisObject** %48, align 8, !dbg !1377, !tbaa !1105
  %50 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1378, !tbaa !1379
  %51 = call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* nonnull %0, %struct.redisObject* %49, %struct.redisObject* %50) #7, !dbg !1381
  %52 = icmp eq %struct.redisObject* %51, null, !dbg !1383
  br i1 %52, label %119, label %53, !dbg !1384

; <label>:53:                                     ; preds = %46
  %54 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %51, i32 0) #7, !dbg !1385
  %55 = icmp eq i32 %54, 0, !dbg !1385
  br i1 %55, label %56, label %119, !dbg !1386

; <label>:56:                                     ; preds = %53
  %57 = lshr i64 %42, 3, !dbg !1388
  %58 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %51, i64 0, i32 0, !dbg !1391
  %59 = load i32, i32* %58, align 8, !dbg !1391
  %60 = lshr i32 %59, 4, !dbg !1391
  %61 = trunc i32 %60 to i4, !dbg !1391
  switch i4 %61, label %96 [
    i4 0, label %62
    i4 -8, label %62
  ], !dbg !1391

; <label>:62:                                     ; preds = %56, %56
  %63 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %51, i64 0, i32 2, !dbg !1393
  %64 = load i8*, i8** %63, align 8, !dbg !1393, !tbaa !962
  %65 = getelementptr inbounds i8, i8* %64, i64 -1, !dbg !1398
  %66 = load i8, i8* %65, align 1, !dbg !1398, !tbaa !103
  %67 = trunc i8 %66 to i3, !dbg !1400
  switch i3 %67, label %115 [
    i3 0, label %68
    i3 1, label %71
    i3 2, label %75
    i3 3, label %80
    i3 -4, label %85
  ], !dbg !1400

; <label>:68:                                     ; preds = %62
  %69 = lshr i8 %66, 3, !dbg !1401
  %70 = zext i8 %69 to i64, !dbg !1401
  br label %89, !dbg !1402

; <label>:71:                                     ; preds = %62
  %72 = getelementptr inbounds i8, i8* %64, i64 -3, !dbg !1403
  %73 = load i8, i8* %72, align 1, !dbg !1404, !tbaa !103
  %74 = zext i8 %73 to i64, !dbg !1403
  br label %89, !dbg !1405

; <label>:75:                                     ; preds = %62
  %76 = getelementptr inbounds i8, i8* %64, i64 -5, !dbg !1406
  %77 = bitcast i8* %76 to i16*, !dbg !1407
  %78 = load i16, i16* %77, align 1, !dbg !1407, !tbaa !988
  %79 = zext i16 %78 to i64, !dbg !1406
  br label %89, !dbg !1408

; <label>:80:                                     ; preds = %62
  %81 = getelementptr inbounds i8, i8* %64, i64 -9, !dbg !1409
  %82 = bitcast i8* %81 to i32*, !dbg !1410
  %83 = load i32, i32* %82, align 1, !dbg !1410, !tbaa !118
  %84 = zext i32 %83 to i64, !dbg !1409
  br label %89, !dbg !1411

; <label>:85:                                     ; preds = %62
  %86 = getelementptr inbounds i8, i8* %64, i64 -17, !dbg !1412
  %87 = bitcast i8* %86 to i64*, !dbg !1413
  %88 = load i64, i64* %87, align 1, !dbg !1413, !tbaa !290
  br label %89, !dbg !1414

; <label>:89:                                     ; preds = %68, %71, %75, %80, %85
  %90 = phi i64 [ %88, %85 ], [ %84, %80 ], [ %79, %75 ], [ %74, %71 ], [ %70, %68 ], !dbg !1415
  %91 = icmp ult i64 %57, %90, !dbg !1416
  br i1 %91, label %92, label %115, !dbg !1417

; <label>:92:                                     ; preds = %89
  %93 = getelementptr inbounds i8, i8* %64, i64 %57, !dbg !1418
  %94 = load i8, i8* %93, align 1, !dbg !1418, !tbaa !103
  %95 = zext i8 %94 to i32, !dbg !1418
  br label %107, !dbg !1419

; <label>:96:                                     ; preds = %56
  %97 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %51, i64 0, i32 2, !dbg !1420
  %98 = bitcast i8** %97 to i64*, !dbg !1420
  %99 = load i64, i64* %98, align 8, !dbg !1420, !tbaa !962
  %100 = call i32 @ll2string(i8* nonnull %4, i64 32, i64 %99) #7, !dbg !1423
  %101 = sext i32 %100 to i64, !dbg !1424
  %102 = icmp ult i64 %57, %101, !dbg !1425
  br i1 %102, label %103, label %115, !dbg !1426

; <label>:103:                                    ; preds = %96
  %104 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 %57, !dbg !1427
  %105 = load i8, i8* %104, align 1, !dbg !1427, !tbaa !103
  %106 = sext i8 %105 to i32, !dbg !1427
  br label %107, !dbg !1428

; <label>:107:                                    ; preds = %103, %92
  %108 = phi i32 [ %106, %103 ], [ %95, %92 ]
  %109 = trunc i64 %42 to i32, !dbg !1429
  %110 = and i32 %109, 7, !dbg !1429
  %111 = xor i32 %110, 7, !dbg !1429
  %112 = shl i32 1, %111, !dbg !1429
  %113 = and i32 %112, %108, !dbg !1429
  %114 = icmp eq i32 %113, 0, !dbg !1430
  br i1 %114, label %115, label %116, !dbg !1430

; <label>:115:                                    ; preds = %62, %96, %89, %107
  br label %116, !dbg !1430

; <label>:116:                                    ; preds = %107, %115
  %117 = phi %struct.redisObject** [ getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), %115 ], [ getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), %107 ]
  %118 = load %struct.redisObject*, %struct.redisObject** %117, align 8, !dbg !1431
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %118) #7, !dbg !1432
  br label %119, !dbg !1433

; <label>:119:                                    ; preds = %45, %46, %53, %116
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #9, !dbg !1433
  ret void, !dbg !1433
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyReadOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @bitopCommand(%struct.client*) local_unnamed_addr #3 !dbg !1434 {
  %2 = alloca [16 x i64*], align 16
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1469
  %4 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !1469, !tbaa !1103
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 1, !dbg !1470
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !1470, !tbaa !1105
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %6, i64 0, i32 2, !dbg !1471
  %8 = load i8*, i8** %7, align 8, !dbg !1471, !tbaa !962
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 2, !dbg !1473
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !1473, !tbaa !1105
  %11 = load i8, i8* %8, align 1, !dbg !1478, !tbaa !103
  switch i8 %11, label %28 [
    i8 97, label %12
    i8 65, label %12
    i8 111, label %16
    i8 79, label %16
    i8 120, label %20
    i8 88, label %20
    i8 110, label %25
    i8 78, label %25
  ], !dbg !1480

; <label>:12:                                     ; preds = %1, %1
  %13 = tail call i32 @strcasecmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !1481
  %14 = icmp eq i32 %13, 0, !dbg !1481
  br i1 %14, label %35, label %15, !dbg !1482

; <label>:15:                                     ; preds = %12
  switch i8 %11, label %28 [
    i8 78, label %25
    i8 79, label %16
    i8 88, label %20
  ], !dbg !1483

; <label>:16:                                     ; preds = %1, %1, %15
  %17 = tail call i32 @strcasecmp(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !1485
  %18 = icmp eq i32 %17, 0, !dbg !1485
  br i1 %18, label %35, label %19, !dbg !1486

; <label>:19:                                     ; preds = %16
  switch i8 %11, label %28 [
    i8 110, label %25
    i8 88, label %20
  ], !dbg !1487

; <label>:20:                                     ; preds = %15, %1, %1, %19
  %21 = tail call i32 @strcasecmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !1489
  %22 = icmp eq i32 %21, 0, !dbg !1489
  br i1 %22, label %35, label %23, !dbg !1490

; <label>:23:                                     ; preds = %20
  %24 = icmp eq i8 %11, 110, !dbg !1491
  br i1 %24, label %25, label %28, !dbg !1491

; <label>:25:                                     ; preds = %23, %19, %15, %1, %1
  %26 = tail call i32 @strcasecmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !1493
  %27 = icmp eq i32 %26, 0, !dbg !1493
  br i1 %27, label %30, label %28, !dbg !1494

; <label>:28:                                     ; preds = %23, %1, %15, %19, %25
  %29 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1495, !tbaa !1497
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %29) #7, !dbg !1498
  br label %402, !dbg !1499

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1501
  %32 = load i32, i32* %31, align 8, !dbg !1501, !tbaa !1503
  %33 = icmp eq i32 %32, 4, !dbg !1504
  br i1 %33, label %35, label %34, !dbg !1505

; <label>:34:                                     ; preds = %30
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !1506
  br label %402, !dbg !1508

; <label>:35:                                     ; preds = %20, %16, %12, %30
  %36 = phi i1 [ true, %30 ], [ false, %12 ], [ false, %16 ], [ false, %20 ]
  %37 = phi i2 [ -1, %30 ], [ 0, %12 ], [ 1, %16 ], [ -2, %20 ]
  %38 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1509
  %39 = load i32, i32* %38, align 8, !dbg !1509, !tbaa !1503
  %40 = add nsw i32 %39, -3, !dbg !1510
  %41 = sext i32 %40 to i64, !dbg !1511
  %42 = shl nsw i64 %41, 3, !dbg !1513
  %43 = tail call i8* @zmalloc(i64 %42) #7, !dbg !1514
  %44 = bitcast i8* %43 to i8**, !dbg !1514
  %45 = tail call i8* @zmalloc(i64 %42) #7, !dbg !1516
  %46 = bitcast i8* %45 to i64*, !dbg !1516
  %47 = tail call i8* @zmalloc(i64 %42) #7, !dbg !1518
  %48 = bitcast i8* %47 to %struct.redisObject**, !dbg !1518
  %49 = icmp eq i32 %40, 0, !dbg !1521
  br i1 %49, label %378, label %50, !dbg !1522

; <label>:50:                                     ; preds = %35
  %51 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  br label %52, !dbg !1522

; <label>:52:                                     ; preds = %50, %126
  %53 = phi i64 [ 0, %50 ], [ %128, %126 ]
  %54 = phi i64 [ 0, %50 ], [ %127, %126 ]
  %55 = phi i64 [ 0, %50 ], [ %129, %126 ]
  %56 = load %struct.redisDb*, %struct.redisDb** %51, align 8, !dbg !1523, !tbaa !1098
  %57 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !1524, !tbaa !1103
  %58 = add i64 %55, 3, !dbg !1525
  %59 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %57, i64 %58, !dbg !1526
  %60 = load %struct.redisObject*, %struct.redisObject** %59, align 8, !dbg !1526, !tbaa !1105
  %61 = tail call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %56, %struct.redisObject* %60) #7, !dbg !1527
  %62 = icmp eq %struct.redisObject* %61, null, !dbg !1529
  br i1 %62, label %63, label %67, !dbg !1531

; <label>:63:                                     ; preds = %52
  %64 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %48, i64 %55, !dbg !1532
  store %struct.redisObject* null, %struct.redisObject** %64, align 8, !dbg !1534, !tbaa !1105
  %65 = getelementptr inbounds i8*, i8** %44, i64 %55, !dbg !1535
  store i8* null, i8** %65, align 8, !dbg !1536, !tbaa !1105
  %66 = getelementptr inbounds i64, i64* %46, i64 %55, !dbg !1537
  store i64 0, i64* %66, align 8, !dbg !1538, !tbaa !290
  br label %126, !dbg !1539

; <label>:67:                                     ; preds = %52
  %68 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %61, i32 0) #7, !dbg !1540
  %69 = icmp eq i32 %68, 0, !dbg !1540
  br i1 %69, label %82, label %70, !dbg !1541

; <label>:70:                                     ; preds = %67
  %71 = icmp eq i64 %55, 0, !dbg !1543
  br i1 %71, label %81, label %72, !dbg !1546

; <label>:72:                                     ; preds = %70, %78
  %73 = phi i64 [ %79, %78 ], [ 0, %70 ]
  %74 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %48, i64 %73, !dbg !1547
  %75 = load %struct.redisObject*, %struct.redisObject** %74, align 8, !dbg !1547, !tbaa !1105
  %76 = icmp eq %struct.redisObject* %75, null, !dbg !1547
  br i1 %76, label %78, label %77, !dbg !1550

; <label>:77:                                     ; preds = %72
  tail call void @decrRefCount(%struct.redisObject* nonnull %75) #7, !dbg !1551
  br label %78, !dbg !1551

; <label>:78:                                     ; preds = %72, %77
  %79 = add nuw i64 %73, 1, !dbg !1552
  %80 = icmp eq i64 %79, %55, !dbg !1543
  br i1 %80, label %81, label %72, !dbg !1546, !llvm.loop !1553

; <label>:81:                                     ; preds = %78, %70
  tail call void @zfree(i8* %43) #7, !dbg !1555
  tail call void @zfree(i8* %45) #7, !dbg !1556
  tail call void @zfree(i8* %47) #7, !dbg !1557
  br label %402

; <label>:82:                                     ; preds = %67
  %83 = tail call %struct.redisObject* @getDecodedObject(%struct.redisObject* nonnull %61) #7, !dbg !1558
  %84 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %48, i64 %55, !dbg !1559
  store %struct.redisObject* %83, %struct.redisObject** %84, align 8, !dbg !1560, !tbaa !1105
  %85 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %83, i64 0, i32 2, !dbg !1561
  %86 = bitcast i8** %85 to i64*, !dbg !1561
  %87 = load i64, i64* %86, align 8, !dbg !1561, !tbaa !962
  %88 = getelementptr inbounds i8*, i8** %44, i64 %55, !dbg !1562
  %89 = bitcast i8** %88 to i64*, !dbg !1563
  store i64 %87, i64* %89, align 8, !dbg !1563, !tbaa !1105
  %90 = load %struct.redisObject*, %struct.redisObject** %84, align 8, !dbg !1564, !tbaa !1105
  %91 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %90, i64 0, i32 2, !dbg !1565
  %92 = load i8*, i8** %91, align 8, !dbg !1565, !tbaa !962
  %93 = getelementptr inbounds i8, i8* %92, i64 -1, !dbg !1568
  %94 = load i8, i8* %93, align 1, !dbg !1568, !tbaa !103
  %95 = trunc i8 %94 to i3, !dbg !1570
  switch i3 %95, label %117 [
    i3 0, label %96
    i3 1, label %99
    i3 2, label %103
    i3 3, label %108
    i3 -4, label %113
  ], !dbg !1570

; <label>:96:                                     ; preds = %82
  %97 = lshr i8 %94, 3, !dbg !1571
  %98 = zext i8 %97 to i64, !dbg !1571
  br label %117, !dbg !1572

; <label>:99:                                     ; preds = %82
  %100 = getelementptr inbounds i8, i8* %92, i64 -3, !dbg !1573
  %101 = load i8, i8* %100, align 1, !dbg !1574, !tbaa !103
  %102 = zext i8 %101 to i64, !dbg !1573
  br label %117, !dbg !1575

; <label>:103:                                    ; preds = %82
  %104 = getelementptr inbounds i8, i8* %92, i64 -5, !dbg !1576
  %105 = bitcast i8* %104 to i16*, !dbg !1577
  %106 = load i16, i16* %105, align 1, !dbg !1577, !tbaa !988
  %107 = zext i16 %106 to i64, !dbg !1576
  br label %117, !dbg !1578

; <label>:108:                                    ; preds = %82
  %109 = getelementptr inbounds i8, i8* %92, i64 -9, !dbg !1579
  %110 = bitcast i8* %109 to i32*, !dbg !1580
  %111 = load i32, i32* %110, align 1, !dbg !1580, !tbaa !118
  %112 = zext i32 %111 to i64, !dbg !1579
  br label %117, !dbg !1581

; <label>:113:                                    ; preds = %82
  %114 = getelementptr inbounds i8, i8* %92, i64 -17, !dbg !1582
  %115 = bitcast i8* %114 to i64*, !dbg !1583
  %116 = load i64, i64* %115, align 1, !dbg !1583, !tbaa !290
  br label %117, !dbg !1584

; <label>:117:                                    ; preds = %82, %96, %99, %103, %108, %113
  %118 = phi i64 [ %116, %113 ], [ %112, %108 ], [ %107, %103 ], [ %102, %99 ], [ %98, %96 ], [ 0, %82 ], !dbg !1585
  %119 = getelementptr inbounds i64, i64* %46, i64 %55, !dbg !1586
  store i64 %118, i64* %119, align 8, !dbg !1587, !tbaa !290
  %120 = icmp ugt i64 %118, %54, !dbg !1588
  %121 = select i1 %120, i64 %118, i64 %54, !dbg !1590
  %122 = icmp eq i64 %55, 0, !dbg !1591
  %123 = icmp ult i64 %118, %53, !dbg !1593
  %124 = or i1 %122, %123, !dbg !1594
  %125 = select i1 %124, i64 %118, i64 %53, !dbg !1594
  br label %126, !dbg !1594

; <label>:126:                                    ; preds = %117, %63
  %127 = phi i64 [ %54, %63 ], [ %121, %117 ], !dbg !1595
  %128 = phi i64 [ 0, %63 ], [ %125, %117 ], !dbg !1596
  %129 = add nuw i64 %55, 1, !dbg !1597
  %130 = icmp ult i64 %129, %41, !dbg !1521
  br i1 %130, label %52, label %131, !dbg !1522, !llvm.loop !1598

; <label>:131:                                    ; preds = %126
  %132 = icmp ne i64 %127, 0, !dbg !1600
  br i1 %132, label %133, label %365, !dbg !1601

; <label>:133:                                    ; preds = %131
  %134 = tail call i8* @sdsnewlen(i8* null, i64 %127) #7, !dbg !1602
  %135 = icmp ugt i64 %128, 31, !dbg !1603
  %136 = icmp ult i32 %40, 17, !dbg !1604
  %137 = and i1 %136, %135, !dbg !1605
  br i1 %137, label %138, label %319, !dbg !1605

; <label>:138:                                    ; preds = %133
  %139 = bitcast [16 x i64*]* %2 to i8*, !dbg !1606
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %139) #9, !dbg !1606
  %140 = bitcast i8* %134 to i64*, !dbg !1608
  %141 = call i8* @memcpy(i8* nonnull %139, i8* nonnull %43, i64 %42) #7, !dbg !1610
  %142 = load i8*, i8** %44, align 8, !dbg !1611, !tbaa !1105
  %143 = call i8* @memcpy(i8* %134, i8* %142, i64 %128) #7, !dbg !1612
  switch i2 %37, label %261 [
    i2 0, label %148
    i2 1, label %146
    i2 -2, label %144
  ], !dbg !1613

; <label>:144:                                    ; preds = %138
  %145 = icmp ugt i32 %40, 1
  br label %224, !dbg !1614

; <label>:146:                                    ; preds = %138
  %147 = icmp ugt i32 %40, 1
  br label %187, !dbg !1619

; <label>:148:                                    ; preds = %138
  %149 = icmp ugt i32 %40, 1
  br label %150, !dbg !1621

; <label>:150:                                    ; preds = %148, %183
  %151 = phi i64* [ %140, %148 ], [ %184, %183 ]
  %152 = phi i64 [ %128, %148 ], [ %185, %183 ]
  br i1 %149, label %153, label %183, !dbg !1624

; <label>:153:                                    ; preds = %150
  %154 = getelementptr inbounds i64, i64* %151, i64 1
  %155 = getelementptr inbounds i64, i64* %151, i64 2
  %156 = getelementptr inbounds i64, i64* %151, i64 3
  %157 = load i64, i64* %151, align 8, !dbg !1627, !tbaa !290
  %158 = load i64, i64* %154, align 8, !dbg !1630, !tbaa !290
  %159 = load i64, i64* %155, align 8, !dbg !1631, !tbaa !290
  %160 = load i64, i64* %156, align 8, !dbg !1632, !tbaa !290
  br label %161, !dbg !1624

; <label>:161:                                    ; preds = %153, %161
  %162 = phi i64 [ %160, %153 ], [ %179, %161 ], !dbg !1632
  %163 = phi i64 [ %159, %153 ], [ %176, %161 ], !dbg !1631
  %164 = phi i64 [ %158, %153 ], [ %173, %161 ], !dbg !1630
  %165 = phi i64 [ %157, %153 ], [ %170, %161 ], !dbg !1627
  %166 = phi i64 [ 1, %153 ], [ %181, %161 ]
  %167 = getelementptr inbounds [16 x i64*], [16 x i64*]* %2, i64 0, i64 %166, !dbg !1633
  %168 = load i64*, i64** %167, align 8, !dbg !1633, !tbaa !1105
  %169 = load i64, i64* %168, align 8, !dbg !1633, !tbaa !290
  %170 = and i64 %165, %169, !dbg !1627
  store i64 %170, i64* %151, align 8, !dbg !1627, !tbaa !290
  %171 = getelementptr inbounds i64, i64* %168, i64 1, !dbg !1634
  %172 = load i64, i64* %171, align 8, !dbg !1634, !tbaa !290
  %173 = and i64 %164, %172, !dbg !1630
  store i64 %173, i64* %154, align 8, !dbg !1630, !tbaa !290
  %174 = getelementptr inbounds i64, i64* %168, i64 2, !dbg !1635
  %175 = load i64, i64* %174, align 8, !dbg !1635, !tbaa !290
  %176 = and i64 %163, %175, !dbg !1631
  store i64 %176, i64* %155, align 8, !dbg !1631, !tbaa !290
  %177 = getelementptr inbounds i64, i64* %168, i64 3, !dbg !1636
  %178 = load i64, i64* %177, align 8, !dbg !1636, !tbaa !290
  %179 = and i64 %162, %178, !dbg !1632
  store i64 %179, i64* %156, align 8, !dbg !1632, !tbaa !290
  %180 = getelementptr inbounds i64, i64* %168, i64 4, !dbg !1637
  store i64* %180, i64** %167, align 8, !dbg !1637, !tbaa !1105
  %181 = add nuw i64 %166, 1, !dbg !1638
  %182 = icmp ult i64 %181, %41, !dbg !1639
  br i1 %182, label %161, label %183, !dbg !1624, !llvm.loop !1640

; <label>:183:                                    ; preds = %161, %150
  %184 = getelementptr inbounds i64, i64* %151, i64 4, !dbg !1642
  %185 = add i64 %152, -32, !dbg !1643
  %186 = icmp ugt i64 %185, 31, !dbg !1644
  br i1 %186, label %150, label %310, !dbg !1621, !llvm.loop !1645

; <label>:187:                                    ; preds = %146, %220
  %188 = phi i64* [ %140, %146 ], [ %221, %220 ]
  %189 = phi i64 [ %128, %146 ], [ %222, %220 ]
  br i1 %147, label %190, label %220, !dbg !1647

; <label>:190:                                    ; preds = %187
  %191 = getelementptr inbounds i64, i64* %188, i64 1
  %192 = getelementptr inbounds i64, i64* %188, i64 2
  %193 = getelementptr inbounds i64, i64* %188, i64 3
  %194 = load i64, i64* %188, align 8, !dbg !1650, !tbaa !290
  %195 = load i64, i64* %191, align 8, !dbg !1653, !tbaa !290
  %196 = load i64, i64* %192, align 8, !dbg !1654, !tbaa !290
  %197 = load i64, i64* %193, align 8, !dbg !1655, !tbaa !290
  br label %198, !dbg !1647

; <label>:198:                                    ; preds = %190, %198
  %199 = phi i64 [ %197, %190 ], [ %216, %198 ], !dbg !1655
  %200 = phi i64 [ %196, %190 ], [ %213, %198 ], !dbg !1654
  %201 = phi i64 [ %195, %190 ], [ %210, %198 ], !dbg !1653
  %202 = phi i64 [ %194, %190 ], [ %207, %198 ], !dbg !1650
  %203 = phi i64 [ 1, %190 ], [ %218, %198 ]
  %204 = getelementptr inbounds [16 x i64*], [16 x i64*]* %2, i64 0, i64 %203, !dbg !1656
  %205 = load i64*, i64** %204, align 8, !dbg !1656, !tbaa !1105
  %206 = load i64, i64* %205, align 8, !dbg !1656, !tbaa !290
  %207 = or i64 %202, %206, !dbg !1650
  store i64 %207, i64* %188, align 8, !dbg !1650, !tbaa !290
  %208 = getelementptr inbounds i64, i64* %205, i64 1, !dbg !1657
  %209 = load i64, i64* %208, align 8, !dbg !1657, !tbaa !290
  %210 = or i64 %201, %209, !dbg !1653
  store i64 %210, i64* %191, align 8, !dbg !1653, !tbaa !290
  %211 = getelementptr inbounds i64, i64* %205, i64 2, !dbg !1658
  %212 = load i64, i64* %211, align 8, !dbg !1658, !tbaa !290
  %213 = or i64 %200, %212, !dbg !1654
  store i64 %213, i64* %192, align 8, !dbg !1654, !tbaa !290
  %214 = getelementptr inbounds i64, i64* %205, i64 3, !dbg !1659
  %215 = load i64, i64* %214, align 8, !dbg !1659, !tbaa !290
  %216 = or i64 %199, %215, !dbg !1655
  store i64 %216, i64* %193, align 8, !dbg !1655, !tbaa !290
  %217 = getelementptr inbounds i64, i64* %205, i64 4, !dbg !1660
  store i64* %217, i64** %204, align 8, !dbg !1660, !tbaa !1105
  %218 = add nuw i64 %203, 1, !dbg !1661
  %219 = icmp ult i64 %218, %41, !dbg !1662
  br i1 %219, label %198, label %220, !dbg !1647, !llvm.loop !1663

; <label>:220:                                    ; preds = %198, %187
  %221 = getelementptr inbounds i64, i64* %188, i64 4, !dbg !1665
  %222 = add i64 %189, -32, !dbg !1666
  %223 = icmp ugt i64 %222, 31, !dbg !1667
  br i1 %223, label %187, label %312, !dbg !1619, !llvm.loop !1668

; <label>:224:                                    ; preds = %144, %257
  %225 = phi i64* [ %140, %144 ], [ %258, %257 ]
  %226 = phi i64 [ %128, %144 ], [ %259, %257 ]
  br i1 %145, label %227, label %257, !dbg !1670

; <label>:227:                                    ; preds = %224
  %228 = getelementptr inbounds i64, i64* %225, i64 1
  %229 = getelementptr inbounds i64, i64* %225, i64 2
  %230 = getelementptr inbounds i64, i64* %225, i64 3
  %231 = load i64, i64* %225, align 8, !dbg !1673, !tbaa !290
  %232 = load i64, i64* %228, align 8, !dbg !1676, !tbaa !290
  %233 = load i64, i64* %229, align 8, !dbg !1677, !tbaa !290
  %234 = load i64, i64* %230, align 8, !dbg !1678, !tbaa !290
  br label %235, !dbg !1670

; <label>:235:                                    ; preds = %227, %235
  %236 = phi i64 [ %234, %227 ], [ %253, %235 ], !dbg !1678
  %237 = phi i64 [ %233, %227 ], [ %250, %235 ], !dbg !1677
  %238 = phi i64 [ %232, %227 ], [ %247, %235 ], !dbg !1676
  %239 = phi i64 [ %231, %227 ], [ %244, %235 ], !dbg !1673
  %240 = phi i64 [ 1, %227 ], [ %255, %235 ]
  %241 = getelementptr inbounds [16 x i64*], [16 x i64*]* %2, i64 0, i64 %240, !dbg !1679
  %242 = load i64*, i64** %241, align 8, !dbg !1679, !tbaa !1105
  %243 = load i64, i64* %242, align 8, !dbg !1679, !tbaa !290
  %244 = xor i64 %239, %243, !dbg !1673
  store i64 %244, i64* %225, align 8, !dbg !1673, !tbaa !290
  %245 = getelementptr inbounds i64, i64* %242, i64 1, !dbg !1680
  %246 = load i64, i64* %245, align 8, !dbg !1680, !tbaa !290
  %247 = xor i64 %238, %246, !dbg !1676
  store i64 %247, i64* %228, align 8, !dbg !1676, !tbaa !290
  %248 = getelementptr inbounds i64, i64* %242, i64 2, !dbg !1681
  %249 = load i64, i64* %248, align 8, !dbg !1681, !tbaa !290
  %250 = xor i64 %237, %249, !dbg !1677
  store i64 %250, i64* %229, align 8, !dbg !1677, !tbaa !290
  %251 = getelementptr inbounds i64, i64* %242, i64 3, !dbg !1682
  %252 = load i64, i64* %251, align 8, !dbg !1682, !tbaa !290
  %253 = xor i64 %236, %252, !dbg !1678
  store i64 %253, i64* %230, align 8, !dbg !1678, !tbaa !290
  %254 = getelementptr inbounds i64, i64* %242, i64 4, !dbg !1683
  store i64* %254, i64** %241, align 8, !dbg !1683, !tbaa !1105
  %255 = add nuw i64 %240, 1, !dbg !1684
  %256 = icmp ult i64 %255, %41, !dbg !1685
  br i1 %256, label %235, label %257, !dbg !1670, !llvm.loop !1686

; <label>:257:                                    ; preds = %235, %224
  %258 = getelementptr inbounds i64, i64* %225, i64 4, !dbg !1688
  %259 = add i64 %226, -32, !dbg !1689
  %260 = icmp ugt i64 %259, 31, !dbg !1690
  br i1 %260, label %224, label %314, !dbg !1614, !llvm.loop !1691

; <label>:261:                                    ; preds = %138
  br i1 %36, label %262, label %316, !dbg !1693

; <label>:262:                                    ; preds = %261
  %263 = add i64 %128, -32, !dbg !1694
  %264 = and i64 %263, 32, !dbg !1694
  %265 = icmp eq i64 %264, 0, !dbg !1694
  br i1 %265, label %266, label %279, !dbg !1694

; <label>:266:                                    ; preds = %262
  %267 = bitcast i8* %134 to <2 x i64>*, !dbg !1694
  %268 = load <2 x i64>, <2 x i64>* %267, align 8, !dbg !1694, !tbaa !290
  %269 = xor <2 x i64> %268, <i64 -1, i64 -1>, !dbg !1698
  %270 = bitcast i8* %134 to <2 x i64>*, !dbg !1699
  store <2 x i64> %269, <2 x i64>* %270, align 8, !dbg !1699, !tbaa !290
  %271 = getelementptr inbounds i8, i8* %134, i64 16, !dbg !1700
  %272 = bitcast i8* %271 to <2 x i64>*, !dbg !1700
  %273 = load <2 x i64>, <2 x i64>* %272, align 8, !dbg !1700, !tbaa !290
  %274 = xor <2 x i64> %273, <i64 -1, i64 -1>, !dbg !1701
  %275 = bitcast i8* %271 to <2 x i64>*, !dbg !1702
  store <2 x i64> %274, <2 x i64>* %275, align 8, !dbg !1702, !tbaa !290
  %276 = getelementptr inbounds i8, i8* %134, i64 32, !dbg !1703
  %277 = bitcast i8* %276 to i64*, !dbg !1703
  %278 = add i64 %128, -32, !dbg !1704
  br label %279, !dbg !1705

; <label>:279:                                    ; preds = %266, %262
  %280 = phi i64 [ %128, %262 ], [ %278, %266 ]
  %281 = phi i64* [ %140, %262 ], [ %277, %266 ]
  %282 = icmp ult i64 %263, 32, !dbg !1694
  br i1 %282, label %308, label %283, !dbg !1694

; <label>:283:                                    ; preds = %279, %283
  %284 = phi i64 [ %306, %283 ], [ %280, %279 ], !dbg !1706
  %285 = phi i64* [ %305, %283 ], [ %281, %279 ], !dbg !1706
  %286 = bitcast i64* %285 to <2 x i64>*, !dbg !1694
  %287 = load <2 x i64>, <2 x i64>* %286, align 8, !dbg !1694, !tbaa !290
  %288 = xor <2 x i64> %287, <i64 -1, i64 -1>, !dbg !1698
  %289 = bitcast i64* %285 to <2 x i64>*, !dbg !1699
  store <2 x i64> %288, <2 x i64>* %289, align 8, !dbg !1699, !tbaa !290
  %290 = getelementptr inbounds i64, i64* %285, i64 2, !dbg !1700
  %291 = bitcast i64* %290 to <2 x i64>*, !dbg !1700
  %292 = load <2 x i64>, <2 x i64>* %291, align 8, !dbg !1700, !tbaa !290
  %293 = xor <2 x i64> %292, <i64 -1, i64 -1>, !dbg !1701
  %294 = bitcast i64* %290 to <2 x i64>*, !dbg !1702
  store <2 x i64> %293, <2 x i64>* %294, align 8, !dbg !1702, !tbaa !290
  %295 = getelementptr inbounds i64, i64* %285, i64 4, !dbg !1703
  %296 = bitcast i64* %295 to <2 x i64>*, !dbg !1694
  %297 = load <2 x i64>, <2 x i64>* %296, align 8, !dbg !1694, !tbaa !290
  %298 = xor <2 x i64> %297, <i64 -1, i64 -1>, !dbg !1698
  %299 = bitcast i64* %295 to <2 x i64>*, !dbg !1699
  store <2 x i64> %298, <2 x i64>* %299, align 8, !dbg !1699, !tbaa !290
  %300 = getelementptr inbounds i64, i64* %285, i64 6, !dbg !1700
  %301 = bitcast i64* %300 to <2 x i64>*, !dbg !1700
  %302 = load <2 x i64>, <2 x i64>* %301, align 8, !dbg !1700, !tbaa !290
  %303 = xor <2 x i64> %302, <i64 -1, i64 -1>, !dbg !1701
  %304 = bitcast i64* %300 to <2 x i64>*, !dbg !1702
  store <2 x i64> %303, <2 x i64>* %304, align 8, !dbg !1702, !tbaa !290
  %305 = getelementptr inbounds i64, i64* %285, i64 8, !dbg !1703
  %306 = add i64 %284, -64, !dbg !1704
  %307 = icmp ugt i64 %306, 31, !dbg !1707
  br i1 %307, label %283, label %308, !dbg !1705

; <label>:308:                                    ; preds = %283, %279
  %309 = and i64 %128, -32, !dbg !1694
  br label %316, !dbg !1708

; <label>:310:                                    ; preds = %183
  %311 = and i64 %128, -32, !dbg !1621
  br label %316, !dbg !1708

; <label>:312:                                    ; preds = %220
  %313 = and i64 %128, -32, !dbg !1619
  br label %316, !dbg !1708

; <label>:314:                                    ; preds = %257
  %315 = and i64 %128, -32, !dbg !1614
  br label %316, !dbg !1708

; <label>:316:                                    ; preds = %314, %312, %310, %308, %261
  %317 = phi i1 [ false, %261 ], [ true, %308 ], [ %36, %310 ], [ %36, %312 ], [ %36, %314 ]
  %318 = phi i64 [ 0, %261 ], [ %309, %308 ], [ %311, %310 ], [ %313, %312 ], [ %315, %314 ], !dbg !1709
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %139) #9, !dbg !1708
  br label %319, !dbg !1710

; <label>:319:                                    ; preds = %316, %133
  %320 = phi i1 [ %317, %316 ], [ %36, %133 ]
  %321 = phi i64 [ %318, %316 ], [ 0, %133 ], !dbg !1711
  %322 = icmp ult i64 %321, %127, !dbg !1712
  br i1 %322, label %323, label %365, !dbg !1715

; <label>:323:                                    ; preds = %319
  %324 = sext i1 %320 to i8
  %325 = icmp ugt i32 %40, 1
  br label %326, !dbg !1715

; <label>:326:                                    ; preds = %360, %323
  %327 = phi i64 [ %321, %323 ], [ %363, %360 ]
  %328 = load i64, i64* %46, align 8, !dbg !1716, !tbaa !290
  %329 = icmp ugt i64 %328, %327, !dbg !1718
  br i1 %329, label %330, label %334, !dbg !1719

; <label>:330:                                    ; preds = %326
  %331 = load i8*, i8** %44, align 8, !dbg !1720, !tbaa !1105
  %332 = getelementptr inbounds i8, i8* %331, i64 %327, !dbg !1720
  %333 = load i8, i8* %332, align 1, !dbg !1720, !tbaa !103
  br label %334, !dbg !1719

; <label>:334:                                    ; preds = %326, %330
  %335 = phi i8 [ %333, %330 ], [ 0, %326 ], !dbg !1719
  %336 = xor i8 %335, %324, !dbg !1722
  br i1 %325, label %337, label %360, !dbg !1723

; <label>:337:                                    ; preds = %334, %356
  %338 = phi i64 [ %358, %356 ], [ 1, %334 ]
  %339 = phi i8 [ %357, %356 ], [ %336, %334 ]
  %340 = getelementptr inbounds i64, i64* %46, i64 %338, !dbg !1725
  %341 = load i64, i64* %340, align 8, !dbg !1725, !tbaa !290
  %342 = icmp ugt i64 %341, %327, !dbg !1728
  br i1 %342, label %343, label %348, !dbg !1729

; <label>:343:                                    ; preds = %337
  %344 = getelementptr inbounds i8*, i8** %44, i64 %338, !dbg !1730
  %345 = load i8*, i8** %344, align 8, !dbg !1730, !tbaa !1105
  %346 = getelementptr inbounds i8, i8* %345, i64 %327, !dbg !1730
  %347 = load i8, i8* %346, align 1, !dbg !1730, !tbaa !103
  br label %348, !dbg !1729

; <label>:348:                                    ; preds = %337, %343
  %349 = phi i8 [ %347, %343 ], [ 0, %337 ], !dbg !1729
  switch i2 %37, label %356 [
    i2 0, label %350
    i2 1, label %352
    i2 -2, label %354
  ], !dbg !1732

; <label>:350:                                    ; preds = %348
  %351 = and i8 %349, %339, !dbg !1733
  br label %356, !dbg !1735

; <label>:352:                                    ; preds = %348
  %353 = or i8 %349, %339, !dbg !1736
  br label %356, !dbg !1737

; <label>:354:                                    ; preds = %348
  %355 = xor i8 %349, %339, !dbg !1738
  br label %356, !dbg !1739

; <label>:356:                                    ; preds = %350, %352, %354, %348
  %357 = phi i8 [ %339, %348 ], [ %355, %354 ], [ %353, %352 ], [ %351, %350 ], !dbg !1740
  %358 = add nuw i64 %338, 1, !dbg !1741
  %359 = icmp ult i64 %358, %41, !dbg !1742
  br i1 %359, label %337, label %360, !dbg !1723, !llvm.loop !1743

; <label>:360:                                    ; preds = %356, %334
  %361 = phi i8 [ %336, %334 ], [ %357, %356 ], !dbg !1745
  %362 = getelementptr inbounds i8, i8* %134, i64 %327, !dbg !1747
  store i8 %361, i8* %362, align 1, !dbg !1748, !tbaa !103
  %363 = add nuw i64 %327, 1, !dbg !1749
  %364 = icmp eq i64 %363, %127, !dbg !1712
  br i1 %364, label %365, label %326, !dbg !1715, !llvm.loop !1750

; <label>:365:                                    ; preds = %360, %319, %131
  %366 = phi i1 [ false, %131 ], [ %132, %319 ], [ %132, %360 ]
  %367 = phi i64 [ 0, %131 ], [ %127, %319 ], [ %127, %360 ]
  %368 = phi i8* [ null, %131 ], [ %134, %319 ], [ %134, %360 ], !dbg !1596
  br i1 %49, label %378, label %369, !dbg !1752

; <label>:369:                                    ; preds = %365, %375
  %370 = phi i64 [ %376, %375 ], [ 0, %365 ]
  %371 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %48, i64 %370, !dbg !1754
  %372 = load %struct.redisObject*, %struct.redisObject** %371, align 8, !dbg !1754, !tbaa !1105
  %373 = icmp eq %struct.redisObject* %372, null, !dbg !1754
  br i1 %373, label %375, label %374, !dbg !1758

; <label>:374:                                    ; preds = %369
  call void @decrRefCount(%struct.redisObject* nonnull %372) #7, !dbg !1759
  br label %375, !dbg !1759

; <label>:375:                                    ; preds = %369, %374
  %376 = add nuw i64 %370, 1, !dbg !1760
  %377 = icmp ult i64 %376, %41, !dbg !1761
  br i1 %377, label %369, label %378, !dbg !1752, !llvm.loop !1762

; <label>:378:                                    ; preds = %375, %35, %365
  %379 = phi i8* [ %368, %365 ], [ null, %35 ], [ %368, %375 ]
  %380 = phi i64 [ %367, %365 ], [ 0, %35 ], [ %367, %375 ]
  %381 = phi i1 [ %366, %365 ], [ false, %35 ], [ %366, %375 ]
  call void @zfree(i8* %43) #7, !dbg !1764
  call void @zfree(i8* %45) #7, !dbg !1765
  call void @zfree(i8* %47) #7, !dbg !1766
  br i1 %381, label %382, label %389, !dbg !1767

; <label>:382:                                    ; preds = %378
  %383 = call %struct.redisObject* @createObject(i32 0, i8* %379) #7, !dbg !1768
  %384 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1771
  %385 = load %struct.redisDb*, %struct.redisDb** %384, align 8, !dbg !1771, !tbaa !1098
  call void @setKey(%struct.redisDb* %385, %struct.redisObject* %10, %struct.redisObject* %383) #7, !dbg !1772
  %386 = load %struct.redisDb*, %struct.redisDb** %384, align 8, !dbg !1773, !tbaa !1098
  %387 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %386, i64 0, i32 5, !dbg !1774
  %388 = load i32, i32* %387, align 8, !dbg !1774, !tbaa !1298
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), %struct.redisObject* %10, i32 %388) #7, !dbg !1775
  call void @decrRefCount(%struct.redisObject* %383) #7, !dbg !1776
  br label %399, !dbg !1777

; <label>:389:                                    ; preds = %378
  %390 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1778
  %391 = load %struct.redisDb*, %struct.redisDb** %390, align 8, !dbg !1778, !tbaa !1098
  %392 = call i32 @dbDelete(%struct.redisDb* %391, %struct.redisObject* %10) #7, !dbg !1780
  %393 = icmp eq i32 %392, 0, !dbg !1780
  br i1 %393, label %399, label %394, !dbg !1781

; <label>:394:                                    ; preds = %389
  %395 = load %struct.redisDb*, %struct.redisDb** %390, align 8, !dbg !1782, !tbaa !1098
  call void @signalModifiedKey(%struct.redisDb* %395, %struct.redisObject* %10) #7, !dbg !1784
  %396 = load %struct.redisDb*, %struct.redisDb** %390, align 8, !dbg !1785, !tbaa !1098
  %397 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %396, i64 0, i32 5, !dbg !1786
  %398 = load i32, i32* %397, align 8, !dbg !1786, !tbaa !1298
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), %struct.redisObject* %10, i32 %398) #7, !dbg !1787
  br label %399, !dbg !1788

; <label>:399:                                    ; preds = %389, %394, %382
  %400 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1789, !tbaa !1302
  %401 = add nsw i64 %400, 1, !dbg !1789
  store i64 %401, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1789, !tbaa !1302
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %380) #7, !dbg !1790
  br label %402, !dbg !1791

; <label>:402:                                    ; preds = %399, %81, %34, %28
  ret void, !dbg !1791
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyRead(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @getDecodedObject(%struct.redisObject*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @setKey(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i32 @dbDelete(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @bitcountCommand(%struct.client*) local_unnamed_addr #3 !dbg !1792 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [21 x i8], align 16
  %6 = bitcast i64* %2 to i8*, !dbg !1808
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1808
  %7 = bitcast i64* %3 to i8*, !dbg !1808
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9, !dbg !1808
  %8 = bitcast i64* %4 to i8*, !dbg !1808
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #9, !dbg !1808
  %9 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0, !dbg !1809
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %9) #9, !dbg !1809
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1811
  %11 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1811, !tbaa !1103
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 1, !dbg !1813
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !1813, !tbaa !1105
  %14 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1814, !tbaa !1379
  %15 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %13, %struct.redisObject* %14) #7, !dbg !1815
  %16 = icmp eq %struct.redisObject* %15, null, !dbg !1817
  br i1 %16, label %86, label %17, !dbg !1818

; <label>:17:                                     ; preds = %1
  %18 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %15, i32 0) #7, !dbg !1819
  %19 = icmp eq i32 %18, 0, !dbg !1819
  br i1 %19, label %20, label %86, !dbg !1820

; <label>:20:                                     ; preds = %17
  %21 = call i8* @getObjectReadOnlyString(%struct.redisObject* nonnull %15, i64* nonnull %4, i8* nonnull %9) #10, !dbg !1822
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1824
  %23 = load i32, i32* %22, align 8, !dbg !1824, !tbaa !1503
  switch i32 %23, label %73 [
    i32 4, label %24
    i32 2, label %70
  ], !dbg !1826

; <label>:24:                                     ; preds = %20
  %25 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1827, !tbaa !1103
  %26 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %25, i64 2, !dbg !1830
  %27 = load %struct.redisObject*, %struct.redisObject** %26, align 8, !dbg !1830, !tbaa !1105
  %28 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %27, i64* nonnull %2, i8* null) #7, !dbg !1832
  %29 = icmp eq i32 %28, 0, !dbg !1833
  br i1 %29, label %30, label %86, !dbg !1834

; <label>:30:                                     ; preds = %24
  %31 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1835, !tbaa !1103
  %32 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %31, i64 3, !dbg !1837
  %33 = load %struct.redisObject*, %struct.redisObject** %32, align 8, !dbg !1837, !tbaa !1105
  %34 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %33, i64* nonnull %3, i8* null) #7, !dbg !1839
  %35 = icmp eq i32 %34, 0, !dbg !1840
  br i1 %35, label %36, label %86, !dbg !1841

; <label>:36:                                     ; preds = %30
  %37 = load i64, i64* %2, align 8, !dbg !1842, !tbaa !290
  %38 = load i64, i64* %3, align 8, !dbg !1844
  %39 = and i64 %38, %37, !dbg !1845
  %40 = icmp slt i64 %39, 0, !dbg !1845
  %41 = icmp sgt i64 %37, %38, !dbg !1846
  %42 = and i1 %41, %40, !dbg !1845
  br i1 %42, label %43, label %45, !dbg !1845

; <label>:43:                                     ; preds = %36
  %44 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1847, !tbaa !1379
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %44) #7, !dbg !1849
  br label %86, !dbg !1850

; <label>:45:                                     ; preds = %36
  %46 = icmp slt i64 %37, 0, !dbg !1851
  br i1 %46, label %47, label %50, !dbg !1853

; <label>:47:                                     ; preds = %45
  %48 = load i64, i64* %4, align 8, !dbg !1854, !tbaa !290
  %49 = add nsw i64 %48, %37, !dbg !1855
  store i64 %49, i64* %2, align 8, !dbg !1856, !tbaa !290
  br label %50, !dbg !1857

; <label>:50:                                     ; preds = %47, %45
  %51 = phi i64 [ %49, %47 ], [ %37, %45 ]
  %52 = icmp slt i64 %38, 0, !dbg !1858
  br i1 %52, label %53, label %56, !dbg !1860

; <label>:53:                                     ; preds = %50
  %54 = load i64, i64* %4, align 8, !dbg !1861, !tbaa !290
  %55 = add nsw i64 %54, %38, !dbg !1862
  store i64 %55, i64* %3, align 8, !dbg !1863, !tbaa !290
  br label %56, !dbg !1864

; <label>:56:                                     ; preds = %53, %50
  %57 = phi i64 [ %55, %53 ], [ %38, %50 ]
  %58 = icmp slt i64 %51, 0, !dbg !1865
  br i1 %58, label %59, label %60, !dbg !1867

; <label>:59:                                     ; preds = %56
  store i64 0, i64* %2, align 8, !dbg !1868, !tbaa !290
  br label %60, !dbg !1869

; <label>:60:                                     ; preds = %59, %56
  %61 = phi i64 [ 0, %59 ], [ %51, %56 ]
  %62 = icmp slt i64 %57, 0, !dbg !1870
  br i1 %62, label %63, label %64, !dbg !1872

; <label>:63:                                     ; preds = %60
  store i64 0, i64* %3, align 8, !dbg !1873, !tbaa !290
  br label %64, !dbg !1874

; <label>:64:                                     ; preds = %63, %60
  %65 = phi i64 [ 0, %63 ], [ %57, %60 ], !dbg !1875
  %66 = load i64, i64* %4, align 8, !dbg !1877, !tbaa !290
  %67 = icmp slt i64 %65, %66, !dbg !1878
  br i1 %67, label %75, label %68, !dbg !1879

; <label>:68:                                     ; preds = %64
  %69 = add nsw i64 %66, -1, !dbg !1880
  store i64 %69, i64* %3, align 8, !dbg !1881, !tbaa !290
  br label %75, !dbg !1882

; <label>:70:                                     ; preds = %20
  store i64 0, i64* %2, align 8, !dbg !1883, !tbaa !290
  %71 = load i64, i64* %4, align 8, !dbg !1886, !tbaa !290
  %72 = add nsw i64 %71, -1, !dbg !1887
  store i64 %72, i64* %3, align 8, !dbg !1888, !tbaa !290
  br label %75

; <label>:73:                                     ; preds = %20
  %74 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1889, !tbaa !1497
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %74) #7, !dbg !1891
  br label %86, !dbg !1892

; <label>:75:                                     ; preds = %64, %68, %70
  %76 = phi i64 [ %65, %64 ], [ %69, %68 ], [ %72, %70 ], !dbg !1893
  %77 = phi i64 [ %61, %64 ], [ %61, %68 ], [ 0, %70 ], !dbg !1894
  %78 = icmp slt i64 %76, %77, !dbg !1895
  br i1 %78, label %79, label %81, !dbg !1896

; <label>:79:                                     ; preds = %75
  %80 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1897, !tbaa !1379
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %80) #7, !dbg !1899
  br label %86, !dbg !1900

; <label>:81:                                     ; preds = %75
  %82 = sub i64 1, %77, !dbg !1901
  %83 = add i64 %82, %76, !dbg !1902
  %84 = getelementptr inbounds i8, i8* %21, i64 %77, !dbg !1904
  %85 = call i64 @redisPopcount(i8* %84, i64 %83) #10, !dbg !1905
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %85) #7, !dbg !1906
  br label %86

; <label>:86:                                     ; preds = %79, %81, %30, %24, %1, %17, %73, %43
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %9) #9, !dbg !1907
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #9, !dbg !1907
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9, !dbg !1907
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1907
  ret void, !dbg !1907
}

; Function Attrs: noredzone nounwind
define dso_local void @bitposCommand(%struct.client*) local_unnamed_addr #3 !dbg !1908 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [21 x i8], align 16
  %7 = bitcast i64* %2 to i8*, !dbg !1924
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9, !dbg !1924
  %8 = bitcast i64* %3 to i8*, !dbg !1924
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #9, !dbg !1924
  %9 = bitcast i64* %4 to i8*, !dbg !1924
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #9, !dbg !1924
  %10 = bitcast i64* %5 to i8*, !dbg !1924
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #9, !dbg !1924
  %11 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 0, !dbg !1925
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %11) #9, !dbg !1925
  %12 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1928
  %13 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !1928, !tbaa !1103
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 2, !dbg !1930
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !1930, !tbaa !1105
  %16 = call i32 @getLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %15, i64* nonnull %2, i8* null) #7, !dbg !1932
  %17 = icmp eq i32 %16, 0, !dbg !1933
  br i1 %17, label %18, label %121, !dbg !1934

; <label>:18:                                     ; preds = %1
  %19 = load i64, i64* %2, align 8, !dbg !1935, !tbaa !290
  %20 = icmp ugt i64 %19, 1, !dbg !1937
  br i1 %20, label %21, label %22, !dbg !1937

; <label>:21:                                     ; preds = %18
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0)) #7, !dbg !1938
  br label %121, !dbg !1940

; <label>:22:                                     ; preds = %18
  %23 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1941
  %24 = load %struct.redisDb*, %struct.redisDb** %23, align 8, !dbg !1941, !tbaa !1098
  %25 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !1943, !tbaa !1103
  %26 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %25, i64 1, !dbg !1944
  %27 = load %struct.redisObject*, %struct.redisObject** %26, align 8, !dbg !1944, !tbaa !1105
  %28 = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %24, %struct.redisObject* %27) #7, !dbg !1945
  %29 = icmp eq %struct.redisObject* %28, null, !dbg !1947
  br i1 %29, label %30, label %34, !dbg !1948

; <label>:30:                                     ; preds = %22
  %31 = load i64, i64* %2, align 8, !dbg !1949, !tbaa !290
  %32 = icmp ne i64 %31, 0, !dbg !1949
  %33 = sext i1 %32 to i64, !dbg !1949
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %33) #7, !dbg !1951
  br label %121, !dbg !1952

; <label>:34:                                     ; preds = %22
  %35 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %28, i32 0) #7, !dbg !1953
  %36 = icmp eq i32 %35, 0, !dbg !1953
  br i1 %36, label %37, label %121, !dbg !1955

; <label>:37:                                     ; preds = %34
  %38 = call i8* @getObjectReadOnlyString(%struct.redisObject* nonnull %28, i64* nonnull %5, i8* nonnull %11) #10, !dbg !1957
  %39 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1959
  %40 = load i32, i32* %39, align 8, !dbg !1959, !tbaa !1503
  switch i32 %40, label %90 [
    i32 4, label %41
    i32 5, label %41
    i32 3, label %87
  ], !dbg !1961

; <label>:41:                                     ; preds = %37, %37
  %42 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !1962, !tbaa !1103
  %43 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %42, i64 3, !dbg !1965
  %44 = load %struct.redisObject*, %struct.redisObject** %43, align 8, !dbg !1965, !tbaa !1105
  %45 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %44, i64* nonnull %3, i8* null) #7, !dbg !1967
  %46 = icmp eq i32 %45, 0, !dbg !1968
  br i1 %46, label %47, label %121, !dbg !1969

; <label>:47:                                     ; preds = %41
  %48 = load i32, i32* %39, align 8, !dbg !1970, !tbaa !1503
  %49 = icmp eq i32 %48, 5, !dbg !1972
  br i1 %49, label %50, label %56, !dbg !1973

; <label>:50:                                     ; preds = %47
  %51 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !1974, !tbaa !1103
  %52 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %51, i64 4, !dbg !1977
  %53 = load %struct.redisObject*, %struct.redisObject** %52, align 8, !dbg !1977, !tbaa !1105
  %54 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %53, i64* nonnull %4, i8* null) #7, !dbg !1979
  %55 = icmp eq i32 %54, 0, !dbg !1980
  br i1 %55, label %59, label %121, !dbg !1981

; <label>:56:                                     ; preds = %47
  %57 = load i64, i64* %5, align 8, !dbg !1982, !tbaa !290
  %58 = add nsw i64 %57, -1, !dbg !1984
  store i64 %58, i64* %4, align 8, !dbg !1985, !tbaa !290
  br label %59

; <label>:59:                                     ; preds = %50, %56
  %60 = phi i32 [ 0, %56 ], [ 1, %50 ], !dbg !1986
  %61 = load i64, i64* %3, align 8, !dbg !1987, !tbaa !290
  %62 = icmp slt i64 %61, 0, !dbg !1989
  br i1 %62, label %63, label %66, !dbg !1990

; <label>:63:                                     ; preds = %59
  %64 = load i64, i64* %5, align 8, !dbg !1991, !tbaa !290
  %65 = add nsw i64 %64, %61, !dbg !1992
  store i64 %65, i64* %3, align 8, !dbg !1993, !tbaa !290
  br label %66, !dbg !1994

; <label>:66:                                     ; preds = %63, %59
  %67 = phi i64 [ %65, %63 ], [ %61, %59 ]
  %68 = load i64, i64* %4, align 8, !dbg !1995, !tbaa !290
  %69 = icmp slt i64 %68, 0, !dbg !1997
  br i1 %69, label %70, label %73, !dbg !1998

; <label>:70:                                     ; preds = %66
  %71 = load i64, i64* %5, align 8, !dbg !1999, !tbaa !290
  %72 = add nsw i64 %71, %68, !dbg !2000
  store i64 %72, i64* %4, align 8, !dbg !2001, !tbaa !290
  br label %73, !dbg !2002

; <label>:73:                                     ; preds = %70, %66
  %74 = phi i64 [ %72, %70 ], [ %68, %66 ]
  %75 = icmp slt i64 %67, 0, !dbg !2003
  br i1 %75, label %76, label %77, !dbg !2005

; <label>:76:                                     ; preds = %73
  store i64 0, i64* %3, align 8, !dbg !2006, !tbaa !290
  br label %77, !dbg !2007

; <label>:77:                                     ; preds = %76, %73
  %78 = phi i64 [ 0, %76 ], [ %67, %73 ]
  %79 = icmp slt i64 %74, 0, !dbg !2008
  br i1 %79, label %80, label %81, !dbg !2010

; <label>:80:                                     ; preds = %77
  store i64 0, i64* %4, align 8, !dbg !2011, !tbaa !290
  br label %81, !dbg !2012

; <label>:81:                                     ; preds = %80, %77
  %82 = phi i64 [ 0, %80 ], [ %74, %77 ], !dbg !2013
  %83 = load i64, i64* %5, align 8, !dbg !2015, !tbaa !290
  %84 = icmp slt i64 %82, %83, !dbg !2016
  br i1 %84, label %92, label %85, !dbg !2017

; <label>:85:                                     ; preds = %81
  %86 = add nsw i64 %83, -1, !dbg !2018
  store i64 %86, i64* %4, align 8, !dbg !2019, !tbaa !290
  br label %92, !dbg !2020

; <label>:87:                                     ; preds = %37
  store i64 0, i64* %3, align 8, !dbg !2021, !tbaa !290
  %88 = load i64, i64* %5, align 8, !dbg !2024, !tbaa !290
  %89 = add nsw i64 %88, -1, !dbg !2025
  store i64 %89, i64* %4, align 8, !dbg !2026, !tbaa !290
  br label %92

; <label>:90:                                     ; preds = %37
  %91 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !2027, !tbaa !1497
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %91) #7, !dbg !2029
  br label %121, !dbg !2030

; <label>:92:                                     ; preds = %81, %85, %87
  %93 = phi i64 [ %86, %85 ], [ %82, %81 ], [ %89, %87 ], !dbg !2031
  %94 = phi i64 [ %78, %85 ], [ %78, %81 ], [ 0, %87 ], !dbg !2032
  %95 = phi i32 [ %60, %85 ], [ %60, %81 ], [ 0, %87 ], !dbg !1986
  %96 = icmp slt i64 %93, %94, !dbg !2033
  br i1 %96, label %97, label %98, !dbg !2034

; <label>:97:                                     ; preds = %92
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 -1) #7, !dbg !2035
  br label %121, !dbg !2037

; <label>:98:                                     ; preds = %92
  %99 = sub nsw i64 %93, %94, !dbg !2038
  %100 = add nsw i64 %99, 1, !dbg !2039
  %101 = getelementptr inbounds i8, i8* %38, i64 %94, !dbg !2041
  %102 = load i64, i64* %2, align 8, !dbg !2042, !tbaa !290
  %103 = trunc i64 %102 to i32, !dbg !2042
  %104 = call i64 @redisBitpos(i8* %101, i64 %100, i32 %103) #10, !dbg !2043
  %105 = icmp ne i32 %95, 0, !dbg !2045
  %106 = load i64, i64* %2, align 8, !dbg !2047
  %107 = icmp eq i64 %106, 0, !dbg !2048
  %108 = and i1 %105, %107, !dbg !2049
  %109 = shl nsw i64 %100, 3, !dbg !2050
  %110 = icmp eq i64 %104, %109, !dbg !2051
  %111 = and i1 %110, %108, !dbg !2049
  br i1 %111, label %112, label %113, !dbg !2049

; <label>:112:                                    ; preds = %98
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 -1) #7, !dbg !2052
  br label %121

; <label>:113:                                    ; preds = %98
  %114 = icmp eq i64 %104, -1, !dbg !2054
  br i1 %114, label %119, label %115, !dbg !2056

; <label>:115:                                    ; preds = %113
  %116 = load i64, i64* %3, align 8, !dbg !2057, !tbaa !290
  %117 = shl i64 %116, 3, !dbg !2058
  %118 = add nsw i64 %117, %104, !dbg !2059
  br label %119, !dbg !2060

; <label>:119:                                    ; preds = %113, %115
  %120 = phi i64 [ %118, %115 ], [ -1, %113 ], !dbg !2061
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %120) #7, !dbg !2062
  br label %121

; <label>:121:                                    ; preds = %97, %119, %112, %50, %41, %34, %1, %90, %30, %21
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %11) #9, !dbg !2063
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #9, !dbg !2063
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #9, !dbg !2063
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #9, !dbg !2063
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9, !dbg !2063
  ret void, !dbg !2063
}

; Function Attrs: noredzone nounwind
define dso_local void @bitfieldCommand(%struct.client*) local_unnamed_addr #3 !dbg !2064 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [9 x i8], align 1
  %6 = alloca i64, align 8
  %7 = alloca [21 x i8], align 16
  %8 = bitcast i64* %3 to i8*, !dbg !2135
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #9, !dbg !2135
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2143
  %10 = load i32, i32* %9, align 8, !dbg !2143, !tbaa !1503
  %11 = icmp sgt i32 %10, 2, !dbg !2144
  br i1 %11, label %12, label %176, !dbg !2145

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %14 = bitcast i64* %4 to i8*
  %15 = bitcast i64* %2 to i8*
  br label %16, !dbg !2145

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
  %33 = xor i32 %18, -1, !dbg !2146
  %34 = add i32 %17, %33, !dbg !2146
  %35 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2148, !tbaa !1103
  %36 = sext i32 %18 to i64, !dbg !2149
  %37 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %35, i64 %36, !dbg !2149
  %38 = load %struct.redisObject*, %struct.redisObject** %37, align 8, !dbg !2149, !tbaa !1105
  %39 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %38, i64 0, i32 2, !dbg !2150
  %40 = load i8*, i8** %39, align 8, !dbg !2150, !tbaa !962
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #9, !dbg !2152
  store i64 0, i64* %4, align 8, !dbg !2153, !tbaa !1020
  %41 = call i32 @strcasecmp(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0)) #11, !dbg !2156
  %42 = icmp eq i32 %41, 0, !dbg !2156
  %43 = icmp sgt i32 %34, 1, !dbg !2157
  %44 = and i1 %43, %42, !dbg !2158
  br i1 %44, label %77, label %45, !dbg !2158

; <label>:45:                                     ; preds = %16
  %46 = call i32 @strcasecmp(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)) #11, !dbg !2159
  %47 = icmp eq i32 %46, 0, !dbg !2159
  %48 = icmp sgt i32 %34, 2, !dbg !2160
  %49 = and i1 %48, %47, !dbg !2161
  br i1 %49, label %77, label %50, !dbg !2161

; <label>:50:                                     ; preds = %45
  %51 = call i32 @strcasecmp(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0)) #11, !dbg !2162
  %52 = icmp eq i32 %51, 0, !dbg !2162
  %53 = and i1 %48, %52, !dbg !2163
  br i1 %53, label %77, label %54, !dbg !2163

; <label>:54:                                     ; preds = %50
  %55 = call i32 @strcasecmp(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0)) #11, !dbg !2164
  %56 = icmp eq i32 %55, 0, !dbg !2164
  %57 = icmp sgt i32 %34, 0, !dbg !2165
  %58 = and i1 %57, %56, !dbg !2166
  br i1 %58, label %59, label %75, !dbg !2166

; <label>:59:                                     ; preds = %54
  %60 = add nsw i32 %18, 1, !dbg !2167
  %61 = sext i32 %60 to i64, !dbg !2168
  %62 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %35, i64 %61, !dbg !2168
  %63 = load %struct.redisObject*, %struct.redisObject** %62, align 8, !dbg !2168, !tbaa !1105
  %64 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %63, i64 0, i32 2, !dbg !2169
  %65 = load i8*, i8** %64, align 8, !dbg !2169, !tbaa !962
  %66 = call i32 @strcasecmp(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)) #11, !dbg !2171
  %67 = icmp eq i32 %66, 0, !dbg !2171
  br i1 %67, label %155, label %68, !dbg !2173

; <label>:68:                                     ; preds = %59
  %69 = call i32 @strcasecmp(i8* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #11, !dbg !2174
  %70 = icmp eq i32 %69, 0, !dbg !2174
  br i1 %70, label %155, label %71, !dbg !2176

; <label>:71:                                     ; preds = %68
  %72 = call i32 @strcasecmp(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)) #11, !dbg !2177
  %73 = icmp eq i32 %72, 0, !dbg !2177
  br i1 %73, label %155, label %74, !dbg !2179

; <label>:74:                                     ; preds = %71
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0)) #7, !dbg !2180
  call void @zfree(i8* %25) #7, !dbg !2182
  br label %154, !dbg !2183

; <label>:75:                                     ; preds = %54
  %76 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !2184, !tbaa !1497
  call void @addReply(%struct.client* %0, %struct.redisObject* %76) #7, !dbg !2186
  call void @zfree(i8* %26) #7, !dbg !2187
  br label %154, !dbg !2188

; <label>:77:                                     ; preds = %50, %45, %16
  %78 = phi i32 [ 0, %16 ], [ 1, %45 ], [ 2, %50 ], !dbg !2189
  %79 = add nsw i32 %18, 1, !dbg !2191
  %80 = sext i32 %79 to i64, !dbg !2193
  %81 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %35, i64 %80, !dbg !2193
  %82 = load %struct.redisObject*, %struct.redisObject** %81, align 8, !dbg !2193, !tbaa !1105
  %83 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %82, i64 0, i32 2, !dbg !2197
  %84 = load i8*, i8** %83, align 8, !dbg !2197, !tbaa !962
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #9, !dbg !2199
  %85 = load i8, i8* %84, align 1, !dbg !2200, !tbaa !103
  switch i8 %85, label %87 [
    i8 105, label %88
    i8 117, label %86
  ], !dbg !2201

; <label>:86:                                     ; preds = %77
  br label %88

; <label>:87:                                     ; preds = %77
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !2202
  br label %106, !dbg !2203

; <label>:88:                                     ; preds = %86, %77
  %89 = phi i32 [ 0, %86 ], [ 1, %77 ]
  %90 = getelementptr inbounds i8, i8* %84, i64 1, !dbg !2204
  %91 = call i64 @strlen(i8* nonnull %90) #7, !dbg !2205
  %92 = call i32 @string2ll(i8* nonnull %90, i64 %91, i64* nonnull %2) #7, !dbg !2207
  %93 = icmp eq i32 %92, 0, !dbg !2208
  %94 = load i64, i64* %2, align 8, !dbg !2209
  %95 = icmp slt i64 %94, 1, !dbg !2210
  %96 = or i1 %93, %95, !dbg !2211
  br i1 %96, label %105, label %97, !dbg !2211

; <label>:97:                                     ; preds = %88
  %98 = icmp eq i32 %89, 1, !dbg !2212
  %99 = icmp sgt i64 %94, 64, !dbg !2213
  %100 = and i1 %98, %99, !dbg !2214
  br i1 %100, label %105, label %101, !dbg !2214

; <label>:101:                                    ; preds = %97
  %102 = icmp eq i32 %89, 0, !dbg !2215
  %103 = icmp sgt i64 %94, 63, !dbg !2216
  %104 = and i1 %102, %103, !dbg !2217
  br i1 %104, label %105, label %107, !dbg !2217

; <label>:105:                                    ; preds = %101, %97, %88
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !2218
  br label %106, !dbg !2219

; <label>:106:                                    ; preds = %105, %87
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #9, !dbg !2220
  call void @zfree(i8* %21) #7, !dbg !2221
  br label %154, !dbg !2223

; <label>:107:                                    ; preds = %101
  %108 = trunc i64 %94 to i32, !dbg !2224
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #9, !dbg !2220
  %109 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2225, !tbaa !1103
  %110 = add nsw i32 %18, 2, !dbg !2227
  %111 = sext i32 %110 to i64, !dbg !2228
  %112 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %109, i64 %111, !dbg !2228
  %113 = load %struct.redisObject*, %struct.redisObject** %112, align 8, !dbg !2228, !tbaa !1105
  %114 = call i32 @getBitOffsetFromArgument(%struct.client* nonnull %0, %struct.redisObject* %113, i64* nonnull %3, i32 1, i32 %108) #10, !dbg !2230
  %115 = icmp eq i32 %114, 0, !dbg !2231
  br i1 %115, label %117, label %116, !dbg !2232

; <label>:116:                                    ; preds = %107
  call void @zfree(i8* %22) #7, !dbg !2233
  br label %154, !dbg !2235

; <label>:117:                                    ; preds = %107
  %118 = icmp eq i32 %78, 0, !dbg !2236
  %119 = load i64, i64* %3, align 8, !dbg !2238, !tbaa !290
  br i1 %118, label %135, label %120, !dbg !2241

; <label>:120:                                    ; preds = %117
  %121 = shl i64 %94, 32, !dbg !2242
  %122 = ashr exact i64 %121, 32, !dbg !2242
  %123 = add nsw i64 %122, -1, !dbg !2243
  %124 = add i64 %123, %119, !dbg !2244
  %125 = icmp ult i64 %32, %124, !dbg !2245
  %126 = select i1 %125, i64 %124, i64 %32, !dbg !2246
  %127 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2247, !tbaa !1103
  %128 = add nsw i32 %18, 3, !dbg !2249
  %129 = sext i32 %128 to i64, !dbg !2250
  %130 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %127, i64 %129, !dbg !2250
  %131 = load %struct.redisObject*, %struct.redisObject** %130, align 8, !dbg !2250, !tbaa !1105
  %132 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %131, i64* nonnull %4, i8* null) #7, !dbg !2251
  %133 = icmp eq i32 %132, 0, !dbg !2252
  br i1 %133, label %135, label %134, !dbg !2253

; <label>:134:                                    ; preds = %120
  call void @zfree(i8* %23) #7, !dbg !2254
  br label %154, !dbg !2256

; <label>:135:                                    ; preds = %117, %120
  %136 = phi i64 [ %126, %120 ], [ %32, %117 ], !dbg !2257
  %137 = phi i32 [ 0, %120 ], [ %31, %117 ], !dbg !2257
  %138 = add nsw i32 %19, 1, !dbg !2258
  %139 = sext i32 %138 to i64, !dbg !2259
  %140 = shl nsw i64 %139, 5, !dbg !2260
  %141 = call i8* @zrealloc(i8* %24, i64 %140) #7, !dbg !2261
  %142 = bitcast i8* %141 to %struct.bitfieldOp*, !dbg !2261
  %143 = sext i32 %19 to i64, !dbg !2262
  %144 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %142, i64 %143, i32 0, !dbg !2263
  store i64 %119, i64* %144, align 8, !dbg !2264, !tbaa !2265
  %145 = load i64, i64* %4, align 8, !dbg !2267, !tbaa !1020
  %146 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %142, i64 %143, i32 1, !dbg !2268
  store i64 %145, i64* %146, align 8, !dbg !2269, !tbaa !2270
  %147 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %142, i64 %143, i32 2, !dbg !2271
  store i32 %78, i32* %147, align 8, !dbg !2272, !tbaa !2273
  %148 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %142, i64 %143, i32 3, !dbg !2274
  store i32 %30, i32* %148, align 4, !dbg !2275, !tbaa !2276
  %149 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %142, i64 %143, i32 4, !dbg !2277
  store i32 %108, i32* %149, align 8, !dbg !2278, !tbaa !2279
  %150 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %142, i64 %143, i32 5, !dbg !2280
  store i32 %89, i32* %150, align 4, !dbg !2281, !tbaa !2282
  %151 = select i1 %118, i32 2, i32 3, !dbg !2283
  %152 = add nsw i32 %151, %18, !dbg !2284
  %153 = load i32, i32* %9, align 8, !dbg !2143, !tbaa !1503
  br label %155, !dbg !2285

; <label>:154:                                    ; preds = %106, %116, %134, %75, %74
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #9, !dbg !2285
  br label %708

; <label>:155:                                    ; preds = %135, %59, %68, %71
  %156 = phi i32 [ %153, %135 ], [ %17, %59 ], [ %17, %68 ], [ %17, %71 ], !dbg !2143
  %157 = phi i64 [ %136, %135 ], [ %32, %59 ], [ %32, %68 ], [ %32, %71 ], !dbg !2257
  %158 = phi i32 [ %137, %135 ], [ %31, %59 ], [ %31, %68 ], [ %31, %71 ], !dbg !2257
  %159 = phi i32 [ %30, %135 ], [ 0, %59 ], [ 1, %68 ], [ 2, %71 ], !dbg !2139
  %160 = phi i8* [ %141, %135 ], [ %29, %59 ], [ %29, %68 ], [ %29, %71 ], !dbg !2257
  %161 = phi i8* [ %141, %135 ], [ %28, %59 ], [ %28, %68 ], [ %28, %71 ], !dbg !2257
  %162 = phi i8* [ %141, %135 ], [ %27, %59 ], [ %27, %68 ], [ %27, %71 ], !dbg !2257
  %163 = phi i8* [ %141, %135 ], [ %26, %59 ], [ %26, %68 ], [ %26, %71 ], !dbg !2257
  %164 = phi i8* [ %141, %135 ], [ %25, %59 ], [ %25, %68 ], [ %25, %71 ], !dbg !2257
  %165 = phi i8* [ %141, %135 ], [ %24, %59 ], [ %24, %68 ], [ %24, %71 ], !dbg !2257
  %166 = phi i8* [ %141, %135 ], [ %23, %59 ], [ %23, %68 ], [ %23, %71 ], !dbg !2257
  %167 = phi i8* [ %141, %135 ], [ %22, %59 ], [ %22, %68 ], [ %22, %71 ], !dbg !2257
  %168 = phi i8* [ %141, %135 ], [ %21, %59 ], [ %21, %68 ], [ %21, %71 ], !dbg !2257
  %169 = phi %struct.bitfieldOp* [ %142, %135 ], [ %20, %59 ], [ %20, %68 ], [ %20, %71 ], !dbg !2257
  %170 = phi i32 [ %138, %135 ], [ %19, %59 ], [ %19, %68 ], [ %19, %71 ], !dbg !2257
  %171 = phi i32 [ %152, %135 ], [ %60, %59 ], [ %60, %68 ], [ %60, %71 ], !dbg !2286
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #9, !dbg !2285
  %172 = add nsw i32 %171, 1, !dbg !2287
  %173 = icmp sgt i32 %156, %172, !dbg !2144
  br i1 %173, label %16, label %174, !dbg !2145, !llvm.loop !2288

; <label>:174:                                    ; preds = %155
  %175 = icmp eq i32 %158, 0, !dbg !2290
  br i1 %175, label %193, label %176, !dbg !2292

; <label>:176:                                    ; preds = %1, %174
  %177 = phi i32 [ %170, %174 ], [ 0, %1 ]
  %178 = phi %struct.bitfieldOp* [ %169, %174 ], [ null, %1 ]
  %179 = phi i8* [ %162, %174 ], [ null, %1 ]
  %180 = phi i8* [ %160, %174 ], [ null, %1 ]
  %181 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2293
  %182 = load %struct.redisDb*, %struct.redisDb** %181, align 8, !dbg !2293, !tbaa !1098
  %183 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2295
  %184 = load %struct.redisObject**, %struct.redisObject*** %183, align 8, !dbg !2295, !tbaa !1103
  %185 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %184, i64 1, !dbg !2296
  %186 = load %struct.redisObject*, %struct.redisObject** %185, align 8, !dbg !2296, !tbaa !1105
  %187 = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %182, %struct.redisObject* %186) #7, !dbg !2297
  %188 = icmp eq %struct.redisObject* %187, null, !dbg !2299
  br i1 %188, label %197, label %189, !dbg !2301

; <label>:189:                                    ; preds = %176
  %190 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %187, i32 0) #7, !dbg !2302
  %191 = icmp eq i32 %190, 0, !dbg !2302
  br i1 %191, label %197, label %192, !dbg !2303

; <label>:192:                                    ; preds = %189
  call void @zfree(i8* %179) #7, !dbg !2304
  br label %708, !dbg !2306

; <label>:193:                                    ; preds = %174
  %194 = call %struct.redisObject* @lookupStringForBitCommand(%struct.client* nonnull %0, i64 %157) #10, !dbg !2307
  %195 = icmp eq %struct.redisObject* %194, null, !dbg !2310
  br i1 %195, label %196, label %197, !dbg !2311

; <label>:196:                                    ; preds = %193
  call void @zfree(i8* %161) #7, !dbg !2312
  br label %708, !dbg !2314

; <label>:197:                                    ; preds = %189, %176, %193
  %198 = phi i32 [ %177, %189 ], [ %177, %176 ], [ %170, %193 ]
  %199 = phi %struct.bitfieldOp* [ %178, %189 ], [ %178, %176 ], [ %169, %193 ]
  %200 = phi i8* [ %180, %189 ], [ %180, %176 ], [ %160, %193 ]
  %201 = phi %struct.redisObject* [ %187, %189 ], [ null, %176 ], [ %194, %193 ], !dbg !2315
  %202 = sext i32 %198 to i64, !dbg !2316
  call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %202) #7, !dbg !2317
  %203 = icmp sgt i32 %198, 0, !dbg !2318
  br i1 %203, label %204, label %707, !dbg !2319

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
  br label %220, !dbg !2319

; <label>:220:                                    ; preds = %683, %204
  %221 = phi i64 [ 0, %204 ], [ %687, %683 ]
  %222 = phi i32 [ 0, %204 ], [ %686, %683 ]
  %223 = phi i64 [ undef, %204 ], [ %685, %683 ]
  %224 = phi i64 [ undef, %204 ], [ %684, %683 ]
  %225 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %199, i64 %221, !dbg !2320
  %226 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %199, i64 %221, i32 2, !dbg !2322
  %227 = load i32, i32* %226, align 8, !dbg !2322, !tbaa !2273
  %228 = add i32 %227, -1, !dbg !2323
  %229 = icmp ult i32 %228, 2, !dbg !2323
  br i1 %229, label %230, label %540, !dbg !2323

; <label>:230:                                    ; preds = %220
  %231 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %199, i64 %221, i32 5, !dbg !2324
  %232 = load i32, i32* %231, align 4, !dbg !2324, !tbaa !2282
  %233 = icmp eq i32 %232, 0, !dbg !2325
  %234 = load i8*, i8** %205, align 8, !dbg !2326, !tbaa !962
  %235 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %225, i64 0, i32 0, !dbg !2326
  %236 = load i64, i64* %235, align 8, !dbg !2326, !tbaa !2265
  %237 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %199, i64 %221, i32 4, !dbg !2326
  %238 = load i32, i32* %237, align 8, !dbg !2326, !tbaa !2279
  %239 = sext i32 %238 to i64, !dbg !2326
  %240 = icmp eq i32 %238, 0, !dbg !2327
  br i1 %233, label %405, label %241, !dbg !2329

; <label>:241:                                    ; preds = %230
  br i1 %240, label %291, label %242, !dbg !2340

; <label>:242:                                    ; preds = %241
  %243 = and i64 %239, 1, !dbg !2341
  %244 = icmp eq i32 %238, 1, !dbg !2341
  br i1 %244, label %275, label %245, !dbg !2341

; <label>:245:                                    ; preds = %242
  %246 = sub nsw i64 %239, %243, !dbg !2341
  br label %247, !dbg !2341

; <label>:247:                                    ; preds = %247, %245
  %248 = phi i64 [ 0, %245 ], [ %271, %247 ]
  %249 = phi i64 [ %236, %245 ], [ %272, %247 ]
  %250 = phi i64 [ %246, %245 ], [ %273, %247 ]
  %251 = lshr i64 %249, 3, !dbg !2341
  %252 = and i64 %249, 7, !dbg !2343
  %253 = xor i64 %252, 7, !dbg !2344
  %254 = getelementptr inbounds i8, i8* %234, i64 %251, !dbg !2346
  %255 = load i8, i8* %254, align 1, !dbg !2346, !tbaa !103
  %256 = zext i8 %255 to i64, !dbg !2346
  %257 = lshr i64 %256, %253, !dbg !2348
  %258 = and i64 %257, 1, !dbg !2349
  %259 = shl i64 %248, 1, !dbg !2351
  %260 = or i64 %258, %259, !dbg !2352
  %261 = add i64 %249, 1, !dbg !2353
  %262 = lshr i64 %261, 3, !dbg !2341
  %263 = and i64 %261, 7, !dbg !2343
  %264 = xor i64 %263, 7, !dbg !2344
  %265 = getelementptr inbounds i8, i8* %234, i64 %262, !dbg !2346
  %266 = load i8, i8* %265, align 1, !dbg !2346, !tbaa !103
  %267 = zext i8 %266 to i64, !dbg !2346
  %268 = lshr i64 %267, %264, !dbg !2348
  %269 = and i64 %268, 1, !dbg !2349
  %270 = shl i64 %260, 1, !dbg !2351
  %271 = or i64 %269, %270, !dbg !2352
  %272 = add i64 %249, 2, !dbg !2353
  %273 = add i64 %250, -2, !dbg !2340
  %274 = icmp eq i64 %273, 0, !dbg !2340
  br i1 %274, label %275, label %247, !dbg !2340, !llvm.loop !464

; <label>:275:                                    ; preds = %247, %242
  %276 = phi i64 [ undef, %242 ], [ %271, %247 ]
  %277 = phi i64 [ 0, %242 ], [ %271, %247 ]
  %278 = phi i64 [ %236, %242 ], [ %272, %247 ]
  %279 = icmp eq i64 %243, 0, !dbg !2340
  br i1 %279, label %291, label %280, !dbg !2340

; <label>:280:                                    ; preds = %275
  %281 = lshr i64 %278, 3, !dbg !2341
  %282 = getelementptr inbounds i8, i8* %234, i64 %281, !dbg !2346
  %283 = load i8, i8* %282, align 1, !dbg !2346, !tbaa !103
  %284 = zext i8 %283 to i64, !dbg !2346
  %285 = and i64 %278, 7, !dbg !2343
  %286 = xor i64 %285, 7, !dbg !2344
  %287 = lshr i64 %284, %286, !dbg !2348
  %288 = and i64 %287, 1, !dbg !2349
  %289 = shl i64 %277, 1, !dbg !2351
  %290 = or i64 %288, %289, !dbg !2352
  br label %291, !dbg !2354

; <label>:291:                                    ; preds = %280, %275, %241
  %292 = phi i64 [ 0, %241 ], [ %276, %275 ], [ %290, %280 ], !dbg !2355
  %293 = add nsw i64 %239, -1, !dbg !2354
  %294 = shl i64 1, %293, !dbg !2358
  %295 = and i64 %292, %294, !dbg !2359
  %296 = icmp eq i64 %295, 0, !dbg !2359
  %297 = shl i64 -1, %239, !dbg !2360
  %298 = select i1 %296, i64 0, i64 %297, !dbg !2361
  %299 = or i64 %298, %292, !dbg !2361
  %300 = icmp eq i32 %227, 2, !dbg !2363
  %301 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %199, i64 %221, i32 1, !dbg !2365
  %302 = load i64, i64* %301, align 8, !dbg !2365, !tbaa !2270
  br i1 %300, label %303, label %344, !dbg !2367

; <label>:303:                                    ; preds = %291
  %304 = add i64 %299, %302, !dbg !2368
  %305 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %199, i64 %221, i32 3, !dbg !2371
  %306 = load i32, i32* %305, align 4, !dbg !2371, !tbaa !2276
  %307 = icmp eq i32 %238, 64, !dbg !2377
  br i1 %307, label %315, label %308, !dbg !2378

; <label>:308:                                    ; preds = %303
  %309 = shl nsw i64 -1, %293, !dbg !2379
  %310 = xor i64 %309, -1, !dbg !2379
  %311 = icmp sgt i64 %299, %310, !dbg !2382
  %312 = sub nsw i64 %310, %299, !dbg !2383
  %313 = icmp slt i64 %312, %302, !dbg !2384
  %314 = or i1 %311, %313, !dbg !2385
  br i1 %314, label %322, label %324, !dbg !2385

; <label>:315:                                    ; preds = %303
  %316 = sub nsw i64 9223372036854775807, %299, !dbg !2383
  %317 = icmp slt i64 %316, %302, !dbg !2384
  %318 = icmp sgt i64 %299, -1, !dbg !2386
  %319 = icmp sgt i64 %302, 0, !dbg !2387
  %320 = and i1 %319, %318, !dbg !2388
  %321 = and i1 %320, %317, !dbg !2388
  br i1 %321, label %322, label %324, !dbg !2388

; <label>:322:                                    ; preds = %315, %308
  %323 = phi i64 [ 9223372036854775807, %315 ], [ %310, %308 ]
  switch i32 %306, label %363 [
    i32 0, label %337
    i32 1, label %367
  ], !dbg !2389

; <label>:324:                                    ; preds = %315, %308
  %325 = phi i64 [ -9223372036854775808, %315 ], [ %309, %308 ]
  %326 = phi i1 [ false, %315 ], [ true, %308 ]
  %327 = sub nsw i64 %325, %299, !dbg !2390
  %328 = icmp sgt i64 %325, %299, !dbg !2391
  %329 = icmp sgt i64 %327, %302, !dbg !2392
  %330 = and i1 %326, %329, !dbg !2393
  %331 = or i1 %328, %330, !dbg !2394
  br i1 %331, label %336, label %332, !dbg !2394

; <label>:332:                                    ; preds = %324
  %333 = and i64 %299, %302, !dbg !2395
  %334 = icmp slt i64 %333, 0, !dbg !2395
  %335 = and i1 %334, %329, !dbg !2395
  br i1 %335, label %336, label %367, !dbg !2395

; <label>:336:                                    ; preds = %332, %324
  switch i32 %306, label %363 [
    i32 0, label %337
    i32 1, label %367
  ], !dbg !2396

; <label>:337:                                    ; preds = %336, %322
  %338 = and i64 %304, %294, !dbg !2402
  %339 = icmp eq i64 %338, 0, !dbg !2402
  %340 = or i64 %304, %297, !dbg !2403
  %341 = xor i64 %297, -1, !dbg !2404
  %342 = and i64 %304, %341, !dbg !2405
  %343 = select i1 %339, i64 %342, i64 %340, !dbg !2406
  br label %367, !dbg !2407

; <label>:344:                                    ; preds = %291
  %345 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %199, i64 %221, i32 3, !dbg !2408
  %346 = load i32, i32* %345, align 4, !dbg !2408, !tbaa !2276
  %347 = icmp eq i32 %238, 64, !dbg !2414
  br i1 %347, label %367, label %348, !dbg !2415

; <label>:348:                                    ; preds = %344
  %349 = shl nsw i64 -1, %293, !dbg !2416
  %350 = xor i64 %349, -1, !dbg !2416
  %351 = icmp sgt i64 %302, %350, !dbg !2419
  br i1 %351, label %352, label %353, !dbg !2420

; <label>:352:                                    ; preds = %348
  switch i32 %346, label %363 [
    i32 0, label %356
    i32 1, label %367
  ], !dbg !2421

; <label>:353:                                    ; preds = %348
  %354 = icmp sgt i64 %349, %302, !dbg !2422
  br i1 %354, label %355, label %367, !dbg !2423

; <label>:355:                                    ; preds = %353
  switch i32 %346, label %363 [
    i32 0, label %356
    i32 1, label %367
  ], !dbg !2424

; <label>:356:                                    ; preds = %355, %352
  %357 = and i64 %302, %294, !dbg !2430
  %358 = icmp eq i64 %357, 0, !dbg !2430
  %359 = or i64 %302, %297, !dbg !2431
  %360 = xor i64 %297, -1, !dbg !2432
  %361 = and i64 %302, %360, !dbg !2433
  %362 = select i1 %358, i64 %361, i64 %359, !dbg !2434
  br label %367, !dbg !2435

; <label>:363:                                    ; preds = %355, %352, %336, %322
  %364 = phi i32 [ %306, %336 ], [ %306, %322 ], [ %346, %352 ], [ %346, %355 ], !dbg !2436
  %365 = phi i64 [ %224, %336 ], [ %224, %322 ], [ %299, %352 ], [ %299, %355 ], !dbg !2365
  %366 = icmp eq i32 %364, 2, !dbg !2439
  br i1 %366, label %403, label %367, !dbg !2440

; <label>:367:                                    ; preds = %355, %352, %336, %322, %356, %337, %344, %353, %332, %363
  %368 = phi i64 [ %365, %363 ], [ %299, %353 ], [ %304, %332 ], [ %299, %344 ], [ %299, %356 ], [ %343, %337 ], [ %323, %322 ], [ %325, %336 ], [ %299, %352 ], [ %299, %355 ]
  %369 = phi i64 [ %224, %363 ], [ %302, %353 ], [ %304, %332 ], [ %302, %344 ], [ %362, %356 ], [ %343, %337 ], [ %323, %322 ], [ %325, %336 ], [ %350, %352 ], [ %349, %355 ]
  %370 = phi i64 [ %224, %363 ], [ %224, %353 ], [ %224, %332 ], [ %224, %344 ], [ %362, %356 ], [ %343, %337 ], [ %323, %322 ], [ %325, %336 ], [ %350, %352 ], [ %349, %355 ]
  call void @addReplyLongLong(%struct.client* %0, i64 %368) #7, !dbg !2441
  %371 = load i8*, i8** %205, align 8, !dbg !2443, !tbaa !962
  %372 = load i32, i32* %237, align 8, !dbg !2444, !tbaa !2279
  %373 = sext i32 %372 to i64, !dbg !2445
  %374 = icmp eq i32 %372, 0, !dbg !2456
  br i1 %374, label %536, label %375, !dbg !2457

; <label>:375:                                    ; preds = %367
  %376 = load i64, i64* %235, align 8, !dbg !2458, !tbaa !2265
  br label %377, !dbg !2461

; <label>:377:                                    ; preds = %375, %377
  %378 = phi i64 [ %401, %377 ], [ 0, %375 ]
  %379 = phi i64 [ %400, %377 ], [ %376, %375 ]
  %380 = xor i64 %378, -1, !dbg !2461
  %381 = add i64 %380, %373, !dbg !2461
  %382 = shl i64 1, %381, !dbg !2462
  %383 = and i64 %382, %369, !dbg !2463
  %384 = icmp ne i64 %383, 0, !dbg !2464
  %385 = zext i1 %384 to i64, !dbg !2465
  %386 = lshr i64 %379, 3, !dbg !2467
  %387 = and i64 %379, 7, !dbg !2469
  %388 = xor i64 %387, 7, !dbg !2470
  %389 = getelementptr inbounds i8, i8* %371, i64 %386, !dbg !2472
  %390 = load i8, i8* %389, align 1, !dbg !2472, !tbaa !103
  %391 = zext i8 %390 to i64, !dbg !2472
  %392 = trunc i64 %388 to i32, !dbg !2474
  %393 = shl i32 1, %392, !dbg !2474
  %394 = xor i32 %393, 255, !dbg !2475
  %395 = zext i32 %394 to i64, !dbg !2475
  %396 = and i64 %395, %391, !dbg !2476
  %397 = shl i64 %385, %388, !dbg !2477
  %398 = or i64 %396, %397, !dbg !2478
  %399 = trunc i64 %398 to i8, !dbg !2479
  store i8 %399, i8* %389, align 1, !dbg !2480, !tbaa !103
  %400 = add i64 %379, 1, !dbg !2481
  %401 = add nuw i64 %378, 1, !dbg !2482
  %402 = icmp eq i64 %401, %373, !dbg !2456
  br i1 %402, label %536, label %377, !dbg !2457, !llvm.loop !380

; <label>:403:                                    ; preds = %363
  %404 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !2483, !tbaa !2485
  call void @addReply(%struct.client* %0, %struct.redisObject* %404) #7, !dbg !2486
  br label %536

; <label>:405:                                    ; preds = %230
  br i1 %240, label %455, label %406, !dbg !2492

; <label>:406:                                    ; preds = %405
  %407 = and i64 %239, 1, !dbg !2493
  %408 = icmp eq i32 %238, 1, !dbg !2493
  br i1 %408, label %439, label %409, !dbg !2493

; <label>:409:                                    ; preds = %406
  %410 = sub nsw i64 %239, %407, !dbg !2493
  br label %411, !dbg !2493

; <label>:411:                                    ; preds = %411, %409
  %412 = phi i64 [ 0, %409 ], [ %435, %411 ]
  %413 = phi i64 [ %236, %409 ], [ %436, %411 ]
  %414 = phi i64 [ %410, %409 ], [ %437, %411 ]
  %415 = lshr i64 %413, 3, !dbg !2493
  %416 = and i64 %413, 7, !dbg !2495
  %417 = xor i64 %416, 7, !dbg !2496
  %418 = getelementptr inbounds i8, i8* %234, i64 %415, !dbg !2498
  %419 = load i8, i8* %418, align 1, !dbg !2498, !tbaa !103
  %420 = zext i8 %419 to i64, !dbg !2498
  %421 = lshr i64 %420, %417, !dbg !2500
  %422 = and i64 %421, 1, !dbg !2501
  %423 = shl i64 %412, 1, !dbg !2503
  %424 = or i64 %422, %423, !dbg !2504
  %425 = add i64 %413, 1, !dbg !2505
  %426 = lshr i64 %425, 3, !dbg !2493
  %427 = and i64 %425, 7, !dbg !2495
  %428 = xor i64 %427, 7, !dbg !2496
  %429 = getelementptr inbounds i8, i8* %234, i64 %426, !dbg !2498
  %430 = load i8, i8* %429, align 1, !dbg !2498, !tbaa !103
  %431 = zext i8 %430 to i64, !dbg !2498
  %432 = lshr i64 %431, %428, !dbg !2500
  %433 = and i64 %432, 1, !dbg !2501
  %434 = shl i64 %424, 1, !dbg !2503
  %435 = or i64 %433, %434, !dbg !2504
  %436 = add i64 %413, 2, !dbg !2505
  %437 = add i64 %414, -2, !dbg !2492
  %438 = icmp eq i64 %437, 0, !dbg !2492
  br i1 %438, label %439, label %411, !dbg !2492, !llvm.loop !464

; <label>:439:                                    ; preds = %411, %406
  %440 = phi i64 [ undef, %406 ], [ %435, %411 ]
  %441 = phi i64 [ 0, %406 ], [ %435, %411 ]
  %442 = phi i64 [ %236, %406 ], [ %436, %411 ]
  %443 = icmp eq i64 %407, 0, !dbg !2492
  br i1 %443, label %455, label %444, !dbg !2492

; <label>:444:                                    ; preds = %439
  %445 = lshr i64 %442, 3, !dbg !2493
  %446 = getelementptr inbounds i8, i8* %234, i64 %445, !dbg !2498
  %447 = load i8, i8* %446, align 1, !dbg !2498, !tbaa !103
  %448 = zext i8 %447 to i64, !dbg !2498
  %449 = and i64 %442, 7, !dbg !2495
  %450 = xor i64 %449, 7, !dbg !2496
  %451 = lshr i64 %448, %450, !dbg !2500
  %452 = and i64 %451, 1, !dbg !2501
  %453 = shl i64 %441, 1, !dbg !2503
  %454 = or i64 %452, %453, !dbg !2504
  br label %455, !dbg !2506

; <label>:455:                                    ; preds = %444, %439, %405
  %456 = phi i64 [ 0, %405 ], [ %440, %439 ], [ %454, %444 ], !dbg !2508
  %457 = icmp eq i32 %227, 2, !dbg !2506
  %458 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %199, i64 %221, i32 1, !dbg !2510
  %459 = load i64, i64* %458, align 8, !dbg !2510, !tbaa !2270
  br i1 %457, label %460, label %483, !dbg !2512

; <label>:460:                                    ; preds = %455
  %461 = add i64 %459, %456, !dbg !2513
  %462 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %199, i64 %221, i32 3, !dbg !2516
  %463 = load i32, i32* %462, align 4, !dbg !2516, !tbaa !2276
  %464 = icmp eq i32 %238, 64, !dbg !2522
  %465 = shl i64 -1, %239, !dbg !2523
  %466 = xor i64 %465, -1, !dbg !2523
  %467 = select i1 %464, i64 -1, i64 %466, !dbg !2524
  %468 = sub i64 0, %456, !dbg !2526
  %469 = icmp ult i64 %467, %456, !dbg !2528
  br i1 %469, label %475, label %470, !dbg !2529

; <label>:470:                                    ; preds = %460
  %471 = sub i64 %467, %456, !dbg !2530
  %472 = icmp sgt i64 %459, 0, !dbg !2532
  %473 = icmp slt i64 %471, %459, !dbg !2533
  %474 = and i1 %472, %473, !dbg !2534
  br i1 %474, label %475, label %476, !dbg !2534

; <label>:475:                                    ; preds = %470, %460
  switch i32 %463, label %494 [
    i32 0, label %481
    i32 1, label %498
  ], !dbg !2535

; <label>:476:                                    ; preds = %470
  %477 = icmp slt i64 %459, 0, !dbg !2536
  %478 = icmp slt i64 %459, %468, !dbg !2537
  %479 = and i1 %477, %478, !dbg !2538
  br i1 %479, label %480, label %498, !dbg !2538

; <label>:480:                                    ; preds = %476
  switch i32 %463, label %494 [
    i32 0, label %481
    i32 1, label %498
  ], !dbg !2539

; <label>:481:                                    ; preds = %480, %475
  %482 = and i64 %461, %466, !dbg !2542
  br label %498, !dbg !2543

; <label>:483:                                    ; preds = %455
  %484 = icmp eq i32 %238, 64, !dbg !2548
  %485 = shl i64 -1, %239, !dbg !2549
  %486 = xor i64 %485, -1, !dbg !2549
  %487 = select i1 %484, i64 -1, i64 %486, !dbg !2550
  %488 = icmp ult i64 %487, %459, !dbg !2552
  br i1 %488, label %489, label %498, !dbg !2553

; <label>:489:                                    ; preds = %483
  %490 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %199, i64 %221, i32 3, !dbg !2554
  %491 = load i32, i32* %490, align 4, !dbg !2554, !tbaa !2276
  switch i32 %491, label %494 [
    i32 0, label %492
    i32 1, label %498
  ], !dbg !2556

; <label>:492:                                    ; preds = %489
  %493 = and i64 %459, %486, !dbg !2559
  br label %498, !dbg !2560

; <label>:494:                                    ; preds = %489, %480, %475
  %495 = phi i32 [ %463, %480 ], [ %463, %475 ], [ %491, %489 ], !dbg !2561
  %496 = phi i64 [ %223, %480 ], [ %223, %475 ], [ %456, %489 ], !dbg !2510
  %497 = icmp eq i32 %495, 2, !dbg !2564
  br i1 %497, label %534, label %498, !dbg !2565

; <label>:498:                                    ; preds = %489, %480, %475, %492, %481, %483, %476, %494
  %499 = phi i64 [ %496, %494 ], [ %461, %476 ], [ %456, %483 ], [ %456, %492 ], [ %482, %481 ], [ %467, %475 ], [ 0, %480 ], [ %456, %489 ]
  %500 = phi i64 [ %223, %494 ], [ %461, %476 ], [ %459, %483 ], [ %493, %492 ], [ %482, %481 ], [ %467, %475 ], [ 0, %480 ], [ %487, %489 ]
  %501 = phi i64 [ %223, %494 ], [ %223, %476 ], [ %223, %483 ], [ %493, %492 ], [ %482, %481 ], [ %467, %475 ], [ 0, %480 ], [ %487, %489 ]
  call void @addReplyLongLong(%struct.client* %0, i64 %499) #7, !dbg !2566
  %502 = load i8*, i8** %205, align 8, !dbg !2568, !tbaa !962
  %503 = load i32, i32* %237, align 8, !dbg !2569, !tbaa !2279
  %504 = sext i32 %503 to i64, !dbg !2570
  %505 = icmp eq i32 %503, 0, !dbg !2576
  br i1 %505, label %536, label %506, !dbg !2577

; <label>:506:                                    ; preds = %498
  %507 = load i64, i64* %235, align 8, !dbg !2578, !tbaa !2265
  br label %508, !dbg !2580

; <label>:508:                                    ; preds = %506, %508
  %509 = phi i64 [ %532, %508 ], [ 0, %506 ]
  %510 = phi i64 [ %531, %508 ], [ %507, %506 ]
  %511 = xor i64 %509, -1, !dbg !2580
  %512 = add i64 %511, %504, !dbg !2580
  %513 = shl i64 1, %512, !dbg !2581
  %514 = and i64 %513, %500, !dbg !2582
  %515 = icmp ne i64 %514, 0, !dbg !2583
  %516 = zext i1 %515 to i64, !dbg !2584
  %517 = lshr i64 %510, 3, !dbg !2586
  %518 = and i64 %510, 7, !dbg !2588
  %519 = xor i64 %518, 7, !dbg !2589
  %520 = getelementptr inbounds i8, i8* %502, i64 %517, !dbg !2591
  %521 = load i8, i8* %520, align 1, !dbg !2591, !tbaa !103
  %522 = zext i8 %521 to i64, !dbg !2591
  %523 = trunc i64 %519 to i32, !dbg !2593
  %524 = shl i32 1, %523, !dbg !2593
  %525 = xor i32 %524, 255, !dbg !2594
  %526 = zext i32 %525 to i64, !dbg !2594
  %527 = and i64 %526, %522, !dbg !2595
  %528 = shl i64 %516, %519, !dbg !2596
  %529 = or i64 %527, %528, !dbg !2597
  %530 = trunc i64 %529 to i8, !dbg !2598
  store i8 %530, i8* %520, align 1, !dbg !2599, !tbaa !103
  %531 = add i64 %510, 1, !dbg !2600
  %532 = add nuw i64 %509, 1, !dbg !2601
  %533 = icmp eq i64 %532, %504, !dbg !2576
  br i1 %533, label %536, label %508, !dbg !2577, !llvm.loop !380

; <label>:534:                                    ; preds = %494
  %535 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !2602, !tbaa !2485
  call void @addReply(%struct.client* %0, %struct.redisObject* %535) #7, !dbg !2604
  br label %536

; <label>:536:                                    ; preds = %377, %508, %534, %498, %403, %367
  %537 = phi i64 [ %224, %403 ], [ %370, %367 ], [ %224, %498 ], [ %224, %534 ], [ %224, %508 ], [ %370, %377 ]
  %538 = phi i64 [ %223, %403 ], [ %223, %367 ], [ %501, %498 ], [ %223, %534 ], [ %501, %508 ], [ %223, %377 ]
  %539 = add nsw i32 %222, 1, !dbg !2605
  br label %683, !dbg !2606

; <label>:540:                                    ; preds = %220
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %206) #9, !dbg !2607
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %207) #9, !dbg !2609
  store i64 0, i64* %6, align 8, !dbg !2610, !tbaa !290
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %208) #9, !dbg !2612
  br i1 %209, label %543, label %541, !dbg !2614

; <label>:541:                                    ; preds = %540
  %542 = call i8* @getObjectReadOnlyString(%struct.redisObject* nonnull %201, i64* nonnull %6, i8* nonnull %208) #10, !dbg !2615
  br label %543, !dbg !2617

; <label>:543:                                    ; preds = %540, %541
  %544 = phi i8* [ %542, %541 ], [ null, %540 ], !dbg !2618
  %545 = call i8* @memset(i8* nonnull %206, i32 0, i64 9) #7, !dbg !2619
  %546 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %225, i64 0, i32 0, !dbg !2620
  %547 = load i64, i64* %546, align 8, !dbg !2620, !tbaa !2265
  %548 = lshr i64 %547, 3, !dbg !2621
  %549 = icmp eq i8* %544, null, !dbg !2624
  br i1 %549, label %560, label %550, !dbg !2629

; <label>:550:                                    ; preds = %543
  %551 = load i64, i64* %6, align 8, !dbg !2630, !tbaa !290
  %552 = icmp ult i64 %548, %551, !dbg !2631
  br i1 %552, label %553, label %558, !dbg !2632

; <label>:553:                                    ; preds = %550
  %554 = getelementptr inbounds i8, i8* %544, i64 %548, !dbg !2633
  %555 = load i8, i8* %554, align 1, !dbg !2633, !tbaa !103
  store i8 %555, i8* %211, align 1, !dbg !2634, !tbaa !103
  %556 = add nuw nsw i64 %548, 1, !dbg !2635
  %557 = icmp ult i64 %556, %551, !dbg !2631
  br i1 %557, label %709, label %558, !dbg !2632

; <label>:558:                                    ; preds = %744, %739, %734, %729, %724, %719, %714, %709, %553, %550
  %559 = load i64, i64* %546, align 8, !dbg !2636, !tbaa !2265
  br label %560, !dbg !2637

; <label>:560:                                    ; preds = %558, %543
  %561 = phi i64 [ %559, %558 ], [ %547, %543 ], !dbg !2636
  %562 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %199, i64 %221, i32 5, !dbg !2637
  %563 = load i32, i32* %562, align 4, !dbg !2637, !tbaa !2282
  %564 = icmp eq i32 %563, 0, !dbg !2638
  %565 = and i64 %547, -8, !dbg !2636
  %566 = sub i64 %561, %565, !dbg !2636
  %567 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %199, i64 %221, i32 4, !dbg !2636
  %568 = load i32, i32* %567, align 8, !dbg !2636, !tbaa !2279
  %569 = sext i32 %568 to i64, !dbg !2636
  %570 = icmp eq i32 %568, 0, !dbg !2639
  br i1 %564, label %630, label %571, !dbg !2641

; <label>:571:                                    ; preds = %560
  br i1 %570, label %621, label %572, !dbg !2652

; <label>:572:                                    ; preds = %571
  %573 = and i64 %569, 1, !dbg !2653
  %574 = icmp eq i32 %568, 1, !dbg !2653
  br i1 %574, label %605, label %575, !dbg !2653

; <label>:575:                                    ; preds = %572
  %576 = sub nsw i64 %569, %573, !dbg !2653
  br label %577, !dbg !2653

; <label>:577:                                    ; preds = %577, %575
  %578 = phi i64 [ 0, %575 ], [ %601, %577 ]
  %579 = phi i64 [ %566, %575 ], [ %602, %577 ]
  %580 = phi i64 [ %576, %575 ], [ %603, %577 ]
  %581 = lshr i64 %579, 3, !dbg !2653
  %582 = and i64 %579, 7, !dbg !2655
  %583 = xor i64 %582, 7, !dbg !2656
  %584 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 %581, !dbg !2658
  %585 = load i8, i8* %584, align 1, !dbg !2658, !tbaa !103
  %586 = zext i8 %585 to i64, !dbg !2658
  %587 = lshr i64 %586, %583, !dbg !2660
  %588 = and i64 %587, 1, !dbg !2661
  %589 = shl i64 %578, 1, !dbg !2663
  %590 = or i64 %588, %589, !dbg !2664
  %591 = add i64 %579, 1, !dbg !2665
  %592 = lshr i64 %591, 3, !dbg !2653
  %593 = and i64 %591, 7, !dbg !2655
  %594 = xor i64 %593, 7, !dbg !2656
  %595 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 %592, !dbg !2658
  %596 = load i8, i8* %595, align 1, !dbg !2658, !tbaa !103
  %597 = zext i8 %596 to i64, !dbg !2658
  %598 = lshr i64 %597, %594, !dbg !2660
  %599 = and i64 %598, 1, !dbg !2661
  %600 = shl i64 %590, 1, !dbg !2663
  %601 = or i64 %599, %600, !dbg !2664
  %602 = add i64 %579, 2, !dbg !2665
  %603 = add i64 %580, -2, !dbg !2652
  %604 = icmp eq i64 %603, 0, !dbg !2652
  br i1 %604, label %605, label %577, !dbg !2652, !llvm.loop !464

; <label>:605:                                    ; preds = %577, %572
  %606 = phi i64 [ undef, %572 ], [ %601, %577 ]
  %607 = phi i64 [ 0, %572 ], [ %601, %577 ]
  %608 = phi i64 [ %566, %572 ], [ %602, %577 ]
  %609 = icmp eq i64 %573, 0, !dbg !2652
  br i1 %609, label %621, label %610, !dbg !2652

; <label>:610:                                    ; preds = %605
  %611 = lshr i64 %608, 3, !dbg !2653
  %612 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 %611, !dbg !2658
  %613 = load i8, i8* %612, align 1, !dbg !2658, !tbaa !103
  %614 = zext i8 %613 to i64, !dbg !2658
  %615 = and i64 %608, 7, !dbg !2655
  %616 = xor i64 %615, 7, !dbg !2656
  %617 = lshr i64 %614, %616, !dbg !2660
  %618 = and i64 %617, 1, !dbg !2661
  %619 = shl i64 %607, 1, !dbg !2663
  %620 = or i64 %618, %619, !dbg !2664
  br label %621, !dbg !2666

; <label>:621:                                    ; preds = %610, %605, %571
  %622 = phi i64 [ 0, %571 ], [ %606, %605 ], [ %620, %610 ], !dbg !2667
  %623 = add nsw i64 %569, -1, !dbg !2666
  %624 = shl i64 1, %623, !dbg !2670
  %625 = and i64 %622, %624, !dbg !2671
  %626 = icmp eq i64 %625, 0, !dbg !2671
  %627 = shl i64 -1, %569, !dbg !2672
  %628 = select i1 %626, i64 0, i64 %627, !dbg !2673
  %629 = or i64 %628, %622, !dbg !2673
  call void @addReplyLongLong(%struct.client* %0, i64 %629) #7, !dbg !2675
  br label %682, !dbg !2676

; <label>:630:                                    ; preds = %560
  br i1 %570, label %680, label %631, !dbg !2682

; <label>:631:                                    ; preds = %630
  %632 = and i64 %569, 1, !dbg !2683
  %633 = icmp eq i32 %568, 1, !dbg !2683
  br i1 %633, label %664, label %634, !dbg !2683

; <label>:634:                                    ; preds = %631
  %635 = sub nsw i64 %569, %632, !dbg !2683
  br label %636, !dbg !2683

; <label>:636:                                    ; preds = %636, %634
  %637 = phi i64 [ 0, %634 ], [ %660, %636 ]
  %638 = phi i64 [ %566, %634 ], [ %661, %636 ]
  %639 = phi i64 [ %635, %634 ], [ %662, %636 ]
  %640 = lshr i64 %638, 3, !dbg !2683
  %641 = and i64 %638, 7, !dbg !2685
  %642 = xor i64 %641, 7, !dbg !2686
  %643 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 %640, !dbg !2688
  %644 = load i8, i8* %643, align 1, !dbg !2688, !tbaa !103
  %645 = zext i8 %644 to i64, !dbg !2688
  %646 = lshr i64 %645, %642, !dbg !2690
  %647 = and i64 %646, 1, !dbg !2691
  %648 = shl i64 %637, 1, !dbg !2693
  %649 = or i64 %647, %648, !dbg !2694
  %650 = add i64 %638, 1, !dbg !2695
  %651 = lshr i64 %650, 3, !dbg !2683
  %652 = and i64 %650, 7, !dbg !2685
  %653 = xor i64 %652, 7, !dbg !2686
  %654 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 %651, !dbg !2688
  %655 = load i8, i8* %654, align 1, !dbg !2688, !tbaa !103
  %656 = zext i8 %655 to i64, !dbg !2688
  %657 = lshr i64 %656, %653, !dbg !2690
  %658 = and i64 %657, 1, !dbg !2691
  %659 = shl i64 %649, 1, !dbg !2693
  %660 = or i64 %658, %659, !dbg !2694
  %661 = add i64 %638, 2, !dbg !2695
  %662 = add i64 %639, -2, !dbg !2682
  %663 = icmp eq i64 %662, 0, !dbg !2682
  br i1 %663, label %664, label %636, !dbg !2682, !llvm.loop !464

; <label>:664:                                    ; preds = %636, %631
  %665 = phi i64 [ undef, %631 ], [ %660, %636 ]
  %666 = phi i64 [ 0, %631 ], [ %660, %636 ]
  %667 = phi i64 [ %566, %631 ], [ %661, %636 ]
  %668 = icmp eq i64 %632, 0, !dbg !2682
  br i1 %668, label %680, label %669, !dbg !2682

; <label>:669:                                    ; preds = %664
  %670 = lshr i64 %667, 3, !dbg !2683
  %671 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 %670, !dbg !2688
  %672 = load i8, i8* %671, align 1, !dbg !2688, !tbaa !103
  %673 = zext i8 %672 to i64, !dbg !2688
  %674 = and i64 %667, 7, !dbg !2685
  %675 = xor i64 %674, 7, !dbg !2686
  %676 = lshr i64 %673, %675, !dbg !2690
  %677 = and i64 %676, 1, !dbg !2691
  %678 = shl i64 %666, 1, !dbg !2693
  %679 = or i64 %677, %678, !dbg !2694
  br label %680, !dbg !2696

; <label>:680:                                    ; preds = %669, %664, %630
  %681 = phi i64 [ 0, %630 ], [ %665, %664 ], [ %679, %669 ], !dbg !2697
  call void @addReplyLongLong(%struct.client* %0, i64 %681) #7, !dbg !2696
  br label %682

; <label>:682:                                    ; preds = %680, %621
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %208) #9, !dbg !2699
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %207) #9, !dbg !2699
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %206) #9, !dbg !2699
  br label %683

; <label>:683:                                    ; preds = %682, %536
  %684 = phi i64 [ %537, %536 ], [ %224, %682 ]
  %685 = phi i64 [ %538, %536 ], [ %223, %682 ]
  %686 = phi i32 [ %539, %536 ], [ %222, %682 ], !dbg !2257
  %687 = add nuw nsw i64 %221, 1, !dbg !2700
  %688 = icmp eq i64 %687, %210, !dbg !2318
  br i1 %688, label %689, label %220, !dbg !2319, !llvm.loop !2701

; <label>:689:                                    ; preds = %683
  %690 = icmp eq i32 %686, 0, !dbg !2703
  br i1 %690, label %707, label %691, !dbg !2705

; <label>:691:                                    ; preds = %689
  %692 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2706
  %693 = load %struct.redisDb*, %struct.redisDb** %692, align 8, !dbg !2706, !tbaa !1098
  %694 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2708
  %695 = load %struct.redisObject**, %struct.redisObject*** %694, align 8, !dbg !2708, !tbaa !1103
  %696 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %695, i64 1, !dbg !2709
  %697 = load %struct.redisObject*, %struct.redisObject** %696, align 8, !dbg !2709, !tbaa !1105
  call void @signalModifiedKey(%struct.redisDb* %693, %struct.redisObject* %697) #7, !dbg !2710
  %698 = load %struct.redisObject**, %struct.redisObject*** %694, align 8, !dbg !2711, !tbaa !1103
  %699 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %698, i64 1, !dbg !2712
  %700 = load %struct.redisObject*, %struct.redisObject** %699, align 8, !dbg !2712, !tbaa !1105
  %701 = load %struct.redisDb*, %struct.redisDb** %692, align 8, !dbg !2713, !tbaa !1098
  %702 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %701, i64 0, i32 5, !dbg !2714
  %703 = load i32, i32* %702, align 8, !dbg !2714, !tbaa !1298
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), %struct.redisObject* %700, i32 %703) #7, !dbg !2715
  %704 = sext i32 %686 to i64, !dbg !2716
  %705 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2717, !tbaa !1302
  %706 = add nsw i64 %705, %704, !dbg !2717
  store i64 %706, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2717, !tbaa !1302
  br label %707, !dbg !2718

; <label>:707:                                    ; preds = %197, %689, %691
  call void @zfree(i8* %200) #7, !dbg !2719
  br label %708, !dbg !2720

; <label>:708:                                    ; preds = %154, %707, %196, %192
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #9, !dbg !2720
  ret void, !dbg !2720

; <label>:709:                                    ; preds = %553
  %710 = getelementptr inbounds i8, i8* %544, i64 %556, !dbg !2633
  %711 = load i8, i8* %710, align 1, !dbg !2633, !tbaa !103
  store i8 %711, i8* %212, align 1, !dbg !2634, !tbaa !103
  %712 = add nuw nsw i64 %548, 2, !dbg !2635
  %713 = icmp ult i64 %712, %551, !dbg !2631
  br i1 %713, label %714, label %558, !dbg !2632

; <label>:714:                                    ; preds = %709
  %715 = getelementptr inbounds i8, i8* %544, i64 %712, !dbg !2633
  %716 = load i8, i8* %715, align 1, !dbg !2633, !tbaa !103
  store i8 %716, i8* %213, align 1, !dbg !2634, !tbaa !103
  %717 = add nuw nsw i64 %548, 3, !dbg !2635
  %718 = icmp ult i64 %717, %551, !dbg !2631
  br i1 %718, label %719, label %558, !dbg !2632

; <label>:719:                                    ; preds = %714
  %720 = getelementptr inbounds i8, i8* %544, i64 %717, !dbg !2633
  %721 = load i8, i8* %720, align 1, !dbg !2633, !tbaa !103
  store i8 %721, i8* %214, align 1, !dbg !2634, !tbaa !103
  %722 = add nuw nsw i64 %548, 4, !dbg !2635
  %723 = icmp ult i64 %722, %551, !dbg !2631
  br i1 %723, label %724, label %558, !dbg !2632

; <label>:724:                                    ; preds = %719
  %725 = getelementptr inbounds i8, i8* %544, i64 %722, !dbg !2633
  %726 = load i8, i8* %725, align 1, !dbg !2633, !tbaa !103
  store i8 %726, i8* %215, align 1, !dbg !2634, !tbaa !103
  %727 = add nuw nsw i64 %548, 5, !dbg !2635
  %728 = icmp ult i64 %727, %551, !dbg !2631
  br i1 %728, label %729, label %558, !dbg !2632

; <label>:729:                                    ; preds = %724
  %730 = getelementptr inbounds i8, i8* %544, i64 %727, !dbg !2633
  %731 = load i8, i8* %730, align 1, !dbg !2633, !tbaa !103
  store i8 %731, i8* %216, align 1, !dbg !2634, !tbaa !103
  %732 = add nuw nsw i64 %548, 6, !dbg !2635
  %733 = icmp ult i64 %732, %551, !dbg !2631
  br i1 %733, label %734, label %558, !dbg !2632

; <label>:734:                                    ; preds = %729
  %735 = getelementptr inbounds i8, i8* %544, i64 %732, !dbg !2633
  %736 = load i8, i8* %735, align 1, !dbg !2633, !tbaa !103
  store i8 %736, i8* %217, align 1, !dbg !2634, !tbaa !103
  %737 = add nuw nsw i64 %548, 7, !dbg !2635
  %738 = icmp ult i64 %737, %551, !dbg !2631
  br i1 %738, label %739, label %558, !dbg !2632

; <label>:739:                                    ; preds = %734
  %740 = getelementptr inbounds i8, i8* %544, i64 %737, !dbg !2633
  %741 = load i8, i8* %740, align 1, !dbg !2633, !tbaa !103
  store i8 %741, i8* %218, align 1, !dbg !2634, !tbaa !103
  %742 = add nuw nsw i64 %548, 8, !dbg !2635
  %743 = icmp ult i64 %742, %551, !dbg !2631
  br i1 %743, label %744, label %558, !dbg !2632

; <label>:744:                                    ; preds = %739
  %745 = getelementptr inbounds i8, i8* %544, i64 %742, !dbg !2633
  %746 = load i8, i8* %745, align 1, !dbg !2633, !tbaa !103
  store i8 %746, i8* %219, align 1, !dbg !2634, !tbaa !103
  br label %558
}

; Function Attrs: noredzone
declare dso_local i32 @getLongLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone noreturn nounwind }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin noredzone }
attributes #11 = { nobuiltin noredzone nounwind readonly }

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
!427 = !DILocation(line: 227, column: 1, scope: !383)
!428 = distinct !DISubprogram(name: "getUnsignedBitfield", scope: !3, file: !3, line: 229, type: !429, isLocal: false, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{!25, !22, !25, !25}
!431 = !{!432, !433, !434, !435, !436, !437, !438, !439, !440}
!432 = !DILocalVariable(name: "p", arg: 1, scope: !428, file: !3, line: 229, type: !22)
!433 = !DILocalVariable(name: "offset", arg: 2, scope: !428, file: !3, line: 229, type: !25)
!434 = !DILocalVariable(name: "bits", arg: 3, scope: !428, file: !3, line: 229, type: !25)
!435 = !DILocalVariable(name: "byte", scope: !428, file: !3, line: 230, type: !25)
!436 = !DILocalVariable(name: "bit", scope: !428, file: !3, line: 230, type: !25)
!437 = !DILocalVariable(name: "byteval", scope: !428, file: !3, line: 230, type: !25)
!438 = !DILocalVariable(name: "bitval", scope: !428, file: !3, line: 230, type: !25)
!439 = !DILocalVariable(name: "j", scope: !428, file: !3, line: 230, type: !25)
!440 = !DILocalVariable(name: "value", scope: !428, file: !3, line: 230, type: !25)
!441 = !DILocation(line: 229, column: 45, scope: !428)
!442 = !DILocation(line: 229, column: 57, scope: !428)
!443 = !DILocation(line: 229, column: 74, scope: !428)
!444 = !DILocation(line: 230, column: 45, scope: !428)
!445 = !DILocation(line: 230, column: 42, scope: !428)
!446 = !DILocation(line: 232, column: 19, scope: !447)
!447 = distinct !DILexicalBlock(scope: !448, file: !3, line: 232, column: 5)
!448 = distinct !DILexicalBlock(scope: !428, file: !3, line: 232, column: 5)
!449 = !DILocation(line: 232, column: 5, scope: !448)
!450 = !DILocation(line: 233, column: 23, scope: !451)
!451 = distinct !DILexicalBlock(scope: !447, file: !3, line: 232, column: 32)
!452 = !DILocation(line: 230, column: 14, scope: !428)
!453 = !DILocation(line: 234, column: 27, scope: !451)
!454 = !DILocation(line: 234, column: 17, scope: !451)
!455 = !DILocation(line: 230, column: 20, scope: !428)
!456 = !DILocation(line: 235, column: 19, scope: !451)
!457 = !DILocation(line: 230, column: 25, scope: !428)
!458 = !DILocation(line: 236, column: 27, scope: !451)
!459 = !DILocation(line: 236, column: 35, scope: !451)
!460 = !DILocation(line: 230, column: 34, scope: !428)
!461 = !DILocation(line: 237, column: 23, scope: !451)
!462 = !DILocation(line: 237, column: 28, scope: !451)
!463 = !DILocation(line: 238, column: 15, scope: !451)
!464 = distinct !{!464, !449, !465}
!465 = !DILocation(line: 239, column: 5, scope: !448)
!466 = !DILocation(line: 240, column: 5, scope: !428)
!467 = !DILocation(line: 0, scope: !451)
!468 = distinct !DISubprogram(name: "getSignedBitfield", scope: !3, file: !3, line: 243, type: !469, isLocal: false, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !471)
!469 = !DISubroutineType(types: !470)
!470 = !{!27, !22, !25, !25}
!471 = !{!472, !473, !474, !475, !476}
!472 = !DILocalVariable(name: "p", arg: 1, scope: !468, file: !3, line: 243, type: !22)
!473 = !DILocalVariable(name: "offset", arg: 2, scope: !468, file: !3, line: 243, type: !25)
!474 = !DILocalVariable(name: "bits", arg: 3, scope: !468, file: !3, line: 243, type: !25)
!475 = !DILocalVariable(name: "value", scope: !468, file: !3, line: 244, type: !27)
!476 = !DILocalVariable(name: "conv", scope: !468, file: !3, line: 245, type: !477)
!477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !468, file: !3, line: 245, size: 64, elements: !478)
!478 = !{!479, !480}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !477, file: !3, line: 245, baseType: !25, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !477, file: !3, line: 245, baseType: !27, size: 64)
!481 = !DILocation(line: 243, column: 42, scope: !468)
!482 = !DILocation(line: 243, column: 54, scope: !468)
!483 = !DILocation(line: 243, column: 71, scope: !468)
!484 = !DILocation(line: 229, column: 45, scope: !428, inlinedAt: !485)
!485 = distinct !DILocation(line: 254, column: 14, scope: !468)
!486 = !DILocation(line: 229, column: 57, scope: !428, inlinedAt: !485)
!487 = !DILocation(line: 229, column: 74, scope: !428, inlinedAt: !485)
!488 = !DILocation(line: 230, column: 45, scope: !428, inlinedAt: !485)
!489 = !DILocation(line: 230, column: 42, scope: !428, inlinedAt: !485)
!490 = !DILocation(line: 232, column: 19, scope: !447, inlinedAt: !485)
!491 = !DILocation(line: 232, column: 5, scope: !448, inlinedAt: !485)
!492 = !DILocation(line: 233, column: 23, scope: !451, inlinedAt: !485)
!493 = !DILocation(line: 230, column: 14, scope: !428, inlinedAt: !485)
!494 = !DILocation(line: 234, column: 27, scope: !451, inlinedAt: !485)
!495 = !DILocation(line: 234, column: 17, scope: !451, inlinedAt: !485)
!496 = !DILocation(line: 230, column: 20, scope: !428, inlinedAt: !485)
!497 = !DILocation(line: 235, column: 19, scope: !451, inlinedAt: !485)
!498 = !DILocation(line: 230, column: 25, scope: !428, inlinedAt: !485)
!499 = !DILocation(line: 236, column: 27, scope: !451, inlinedAt: !485)
!500 = !DILocation(line: 236, column: 35, scope: !451, inlinedAt: !485)
!501 = !DILocation(line: 230, column: 34, scope: !428, inlinedAt: !485)
!502 = !DILocation(line: 237, column: 23, scope: !451, inlinedAt: !485)
!503 = !DILocation(line: 237, column: 28, scope: !451, inlinedAt: !485)
!504 = !DILocation(line: 238, column: 15, scope: !451, inlinedAt: !485)
!505 = !DILocation(line: 260, column: 38, scope: !506)
!506 = distinct !DILexicalBlock(scope: !468, file: !3, line: 260, column: 9)
!507 = !DILocation(line: 0, scope: !451, inlinedAt: !485)
!508 = !DILocation(line: 245, column: 36, scope: !468)
!509 = !DILocation(line: 244, column: 13, scope: !468)
!510 = !DILocation(line: 260, column: 30, scope: !506)
!511 = !DILocation(line: 260, column: 15, scope: !506)
!512 = !DILocation(line: 261, column: 33, scope: !506)
!513 = !DILocation(line: 260, column: 9, scope: !468)
!514 = !DILocation(line: 262, column: 5, scope: !468)
!515 = distinct !DISubprogram(name: "checkUnsignedBitfieldOverflow", scope: !3, file: !3, line: 288, type: !516, isLocal: false, isDefinition: true, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !519)
!516 = !DISubroutineType(types: !517)
!517 = !{!242, !25, !27, !25, !242, !518}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!519 = !{!520, !521, !522, !523, !524, !525, !526, !527, !528, !530}
!520 = !DILocalVariable(name: "value", arg: 1, scope: !515, file: !3, line: 288, type: !25)
!521 = !DILocalVariable(name: "incr", arg: 2, scope: !515, file: !3, line: 288, type: !27)
!522 = !DILocalVariable(name: "bits", arg: 3, scope: !515, file: !3, line: 288, type: !25)
!523 = !DILocalVariable(name: "owtype", arg: 4, scope: !515, file: !3, line: 288, type: !242)
!524 = !DILocalVariable(name: "limit", arg: 5, scope: !515, file: !3, line: 288, type: !518)
!525 = !DILocalVariable(name: "max", scope: !515, file: !3, line: 289, type: !25)
!526 = !DILocalVariable(name: "maxincr", scope: !515, file: !3, line: 290, type: !27)
!527 = !DILocalVariable(name: "minincr", scope: !515, file: !3, line: 291, type: !27)
!528 = !DILocalVariable(name: "mask", scope: !529, file: !3, line: 316, type: !25)
!529 = distinct !DILexicalBlock(scope: !515, file: !3, line: 315, column: 5)
!530 = !DILocalVariable(name: "res", scope: !529, file: !3, line: 317, type: !25)
!531 = !DILocation(line: 288, column: 44, scope: !515)
!532 = !DILocation(line: 288, column: 59, scope: !515)
!533 = !DILocation(line: 288, column: 74, scope: !515)
!534 = !DILocation(line: 288, column: 84, scope: !515)
!535 = !DILocation(line: 288, column: 102, scope: !515)
!536 = !DILocation(line: 289, column: 26, scope: !515)
!537 = !DILocation(line: 289, column: 68, scope: !515)
!538 = !DILocation(line: 289, column: 20, scope: !515)
!539 = !DILocation(line: 289, column: 14, scope: !515)
!540 = !DILocation(line: 291, column: 23, scope: !515)
!541 = !DILocation(line: 291, column: 13, scope: !515)
!542 = !DILocation(line: 293, column: 15, scope: !543)
!543 = distinct !DILexicalBlock(scope: !515, file: !3, line: 293, column: 9)
!544 = !DILocation(line: 293, column: 21, scope: !543)
!545 = !DILocation(line: 290, column: 26, scope: !515)
!546 = !DILocation(line: 290, column: 13, scope: !515)
!547 = !DILocation(line: 293, column: 30, scope: !543)
!548 = !DILocation(line: 293, column: 42, scope: !543)
!549 = !DILocation(line: 293, column: 34, scope: !543)
!550 = !DILocation(line: 294, column: 13, scope: !551)
!551 = distinct !DILexicalBlock(scope: !552, file: !3, line: 294, column: 13)
!552 = distinct !DILexicalBlock(scope: !543, file: !3, line: 293, column: 54)
!553 = !DILocation(line: 294, column: 13, scope: !552)
!554 = !DILocation(line: 295, column: 17, scope: !555)
!555 = distinct !DILexicalBlock(scope: !551, file: !3, line: 294, column: 20)
!556 = !DILocation(line: 298, column: 24, scope: !557)
!557 = distinct !DILexicalBlock(scope: !558, file: !3, line: 297, column: 50)
!558 = distinct !DILexicalBlock(scope: !559, file: !3, line: 297, column: 24)
!559 = distinct !DILexicalBlock(scope: !555, file: !3, line: 295, column: 17)
!560 = !DILocation(line: 299, column: 13, scope: !557)
!561 = !DILocation(line: 302, column: 21, scope: !562)
!562 = distinct !DILexicalBlock(scope: !543, file: !3, line: 302, column: 16)
!563 = !DILocation(line: 302, column: 33, scope: !562)
!564 = !DILocation(line: 302, column: 25, scope: !562)
!565 = !DILocation(line: 303, column: 13, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !3, line: 303, column: 13)
!567 = distinct !DILexicalBlock(scope: !562, file: !3, line: 302, column: 44)
!568 = !DILocation(line: 303, column: 13, scope: !567)
!569 = !DILocation(line: 304, column: 17, scope: !570)
!570 = distinct !DILexicalBlock(scope: !566, file: !3, line: 303, column: 20)
!571 = !DILocation(line: 307, column: 24, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !3, line: 306, column: 50)
!573 = distinct !DILexicalBlock(scope: !574, file: !3, line: 306, column: 24)
!574 = distinct !DILexicalBlock(scope: !570, file: !3, line: 304, column: 17)
!575 = !DILocation(line: 308, column: 13, scope: !572)
!576 = !DILocation(line: 316, column: 18, scope: !529)
!577 = !DILocation(line: 317, column: 29, scope: !529)
!578 = !DILocation(line: 317, column: 18, scope: !529)
!579 = !DILocation(line: 319, column: 13, scope: !529)
!580 = !DILocation(line: 320, column: 16, scope: !529)
!581 = !DILocation(line: 322, column: 5, scope: !515)
!582 = !DILocation(line: 0, scope: !515)
!583 = !DILocation(line: 323, column: 1, scope: !515)
!584 = distinct !DISubprogram(name: "checkSignedBitfieldOverflow", scope: !3, file: !3, line: 325, type: !585, isLocal: false, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !588)
!585 = !DISubroutineType(types: !586)
!586 = !{!242, !27, !27, !25, !242, !587}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!588 = !{!589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !600, !601, !602, !603}
!589 = !DILocalVariable(name: "value", arg: 1, scope: !584, file: !3, line: 325, type: !27)
!590 = !DILocalVariable(name: "incr", arg: 2, scope: !584, file: !3, line: 325, type: !27)
!591 = !DILocalVariable(name: "bits", arg: 3, scope: !584, file: !3, line: 325, type: !25)
!592 = !DILocalVariable(name: "owtype", arg: 4, scope: !584, file: !3, line: 325, type: !242)
!593 = !DILocalVariable(name: "limit", arg: 5, scope: !584, file: !3, line: 325, type: !587)
!594 = !DILocalVariable(name: "max", scope: !584, file: !3, line: 326, type: !27)
!595 = !DILocalVariable(name: "min", scope: !584, file: !3, line: 327, type: !27)
!596 = !DILocalVariable(name: "maxincr", scope: !584, file: !3, line: 332, type: !27)
!597 = !DILocalVariable(name: "minincr", scope: !584, file: !3, line: 333, type: !27)
!598 = !DILocalVariable(name: "mask", scope: !599, file: !3, line: 359, type: !25)
!599 = distinct !DILexicalBlock(scope: !584, file: !3, line: 358, column: 5)
!600 = !DILocalVariable(name: "msb", scope: !599, file: !3, line: 360, type: !25)
!601 = !DILocalVariable(name: "a", scope: !599, file: !3, line: 361, type: !25)
!602 = !DILocalVariable(name: "b", scope: !599, file: !3, line: 361, type: !25)
!603 = !DILocalVariable(name: "c", scope: !599, file: !3, line: 361, type: !25)
!604 = !DILocation(line: 325, column: 41, scope: !584)
!605 = !DILocation(line: 325, column: 56, scope: !584)
!606 = !DILocation(line: 325, column: 71, scope: !584)
!607 = !DILocation(line: 325, column: 81, scope: !584)
!608 = !DILocation(line: 325, column: 98, scope: !584)
!609 = !DILocation(line: 326, column: 25, scope: !584)
!610 = !DILocation(line: 326, column: 19, scope: !584)
!611 = !DILocation(line: 326, column: 65, scope: !584)
!612 = !DILocation(line: 326, column: 69, scope: !584)
!613 = !DILocation(line: 326, column: 13, scope: !584)
!614 = !DILocation(line: 327, column: 13, scope: !584)
!615 = !DILocation(line: 335, column: 15, scope: !616)
!616 = distinct !DILexicalBlock(scope: !584, file: !3, line: 335, column: 9)
!617 = !DILocation(line: 332, column: 26, scope: !584)
!618 = !DILocation(line: 335, column: 44, scope: !616)
!619 = !DILocation(line: 335, column: 21, scope: !616)
!620 = !DILocation(line: 335, column: 65, scope: !616)
!621 = !DILocation(line: 335, column: 78, scope: !616)
!622 = !DILocation(line: 335, column: 70, scope: !616)
!623 = !DILocation(line: 337, column: 13, scope: !624)
!624 = distinct !DILexicalBlock(scope: !625, file: !3, line: 337, column: 13)
!625 = distinct !DILexicalBlock(scope: !616, file: !3, line: 336, column: 5)
!626 = !DILocation(line: 337, column: 13, scope: !625)
!627 = !DILocation(line: 338, column: 17, scope: !628)
!628 = distinct !DILexicalBlock(scope: !624, file: !3, line: 337, column: 20)
!629 = !DILocation(line: 341, column: 24, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !3, line: 340, column: 50)
!631 = distinct !DILexicalBlock(scope: !632, file: !3, line: 340, column: 24)
!632 = distinct !DILexicalBlock(scope: !628, file: !3, line: 338, column: 17)
!633 = !DILocation(line: 342, column: 13, scope: !630)
!634 = !DILocation(line: 333, column: 26, scope: !584)
!635 = !DILocation(line: 345, column: 22, scope: !636)
!636 = distinct !DILexicalBlock(scope: !616, file: !3, line: 345, column: 16)
!637 = !DILocation(line: 345, column: 51, scope: !636)
!638 = !DILocation(line: 345, column: 43, scope: !636)
!639 = !DILocation(line: 345, column: 28, scope: !636)
!640 = !DILocation(line: 345, column: 76, scope: !636)
!641 = !DILocation(line: 346, column: 13, scope: !642)
!642 = distinct !DILexicalBlock(scope: !643, file: !3, line: 346, column: 13)
!643 = distinct !DILexicalBlock(scope: !636, file: !3, line: 345, column: 108)
!644 = !DILocation(line: 346, column: 13, scope: !643)
!645 = !DILocation(line: 347, column: 17, scope: !646)
!646 = distinct !DILexicalBlock(scope: !642, file: !3, line: 346, column: 20)
!647 = !DILocation(line: 350, column: 24, scope: !648)
!648 = distinct !DILexicalBlock(scope: !649, file: !3, line: 349, column: 50)
!649 = distinct !DILexicalBlock(scope: !650, file: !3, line: 349, column: 24)
!650 = distinct !DILexicalBlock(scope: !646, file: !3, line: 347, column: 17)
!651 = !DILocation(line: 351, column: 13, scope: !648)
!652 = !DILocation(line: 359, column: 40, scope: !599)
!653 = !DILocation(line: 359, column: 18, scope: !599)
!654 = !DILocation(line: 360, column: 44, scope: !599)
!655 = !DILocation(line: 360, column: 36, scope: !599)
!656 = !DILocation(line: 360, column: 18, scope: !599)
!657 = !DILocation(line: 361, column: 18, scope: !599)
!658 = !DILocation(line: 361, column: 29, scope: !599)
!659 = !DILocation(line: 362, column: 14, scope: !599)
!660 = !DILocation(line: 361, column: 39, scope: !599)
!661 = !DILocation(line: 367, column: 15, scope: !662)
!662 = distinct !DILexicalBlock(scope: !599, file: !3, line: 367, column: 13)
!663 = !DILocation(line: 368, column: 15, scope: !664)
!664 = distinct !DILexicalBlock(scope: !662, file: !3, line: 367, column: 22)
!665 = !DILocation(line: 370, column: 18, scope: !666)
!666 = distinct !DILexicalBlock(scope: !662, file: !3, line: 369, column: 16)
!667 = !DILocation(line: 370, column: 15, scope: !666)
!668 = !DILocation(line: 367, column: 13, scope: !599)
!669 = !DILocation(line: 372, column: 16, scope: !599)
!670 = !DILocation(line: 374, column: 5, scope: !584)
!671 = !DILocation(line: 0, scope: !584)
!672 = !DILocation(line: 375, column: 1, scope: !584)
!673 = distinct !DISubprogram(name: "printBits", scope: !3, file: !3, line: 379, type: !674, isLocal: false, isDefinition: true, scopeLine: 379, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !676)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !22, !10}
!676 = !{!677, !678, !679, !680, !681}
!677 = !DILocalVariable(name: "p", arg: 1, scope: !673, file: !3, line: 379, type: !22)
!678 = !DILocalVariable(name: "count", arg: 2, scope: !673, file: !3, line: 379, type: !10)
!679 = !DILocalVariable(name: "j", scope: !673, file: !3, line: 380, type: !10)
!680 = !DILocalVariable(name: "i", scope: !673, file: !3, line: 380, type: !10)
!681 = !DILocalVariable(name: "byte", scope: !673, file: !3, line: 380, type: !10)
!682 = !DILocation(line: 379, column: 31, scope: !673)
!683 = !DILocation(line: 379, column: 48, scope: !673)
!684 = !DILocation(line: 380, column: 19, scope: !673)
!685 = !DILocation(line: 382, column: 19, scope: !686)
!686 = distinct !DILexicalBlock(scope: !687, file: !3, line: 382, column: 5)
!687 = distinct !DILexicalBlock(scope: !673, file: !3, line: 382, column: 5)
!688 = !DILocation(line: 382, column: 5, scope: !687)
!689 = !DILocation(line: 383, column: 16, scope: !690)
!690 = distinct !DILexicalBlock(scope: !686, file: !3, line: 382, column: 33)
!691 = !DILocation(line: 380, column: 25, scope: !673)
!692 = !DILocation(line: 380, column: 22, scope: !673)
!693 = !DILocation(line: 385, column: 26, scope: !694)
!694 = distinct !DILexicalBlock(scope: !695, file: !3, line: 384, column: 9)
!695 = distinct !DILexicalBlock(scope: !690, file: !3, line: 384, column: 9)
!696 = !DILocation(line: 385, column: 13, scope: !694)
!697 = !DILocation(line: 385, column: 32, scope: !694)
!698 = !DILocation(line: 386, column: 9, scope: !690)
!699 = !DILocation(line: 382, column: 29, scope: !686)
!700 = distinct !{!700, !688, !701}
!701 = !DILocation(line: 387, column: 5, scope: !687)
!702 = !DILocation(line: 388, column: 5, scope: !673)
!703 = !DILocation(line: 389, column: 1, scope: !673)
!704 = distinct !DISubprogram(name: "getBitOffsetFromArgument", scope: !3, file: !3, line: 411, type: !705, isLocal: false, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !944)
!705 = !DISubroutineType(types: !706)
!706 = !{!242, !707, !817, !943, !242, !242}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !709, line: 780, baseType: !710)
!709 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !709, line: 723, size: 135360, elements: !711)
!711 = !{!712, !713, !714, !816, !826, !829, !830, !831, !832, !833, !835, !859, !860, !861, !862, !863, !864, !865, !866, !869, !870, !871, !872, !873, !874, !875, !876, !881, !882, !883, !884, !885, !886, !887, !888, !892, !893, !897, !898, !914, !915, !932, !933, !934, !935, !936, !937, !938, !939}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !710, file: !709, line: 724, baseType: !25, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !710, file: !709, line: 725, baseType: !242, size: 32, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !710, file: !709, line: 726, baseType: !715, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !709, line: 656, baseType: !717)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !709, line: 647, size: 512, elements: !718)
!718 = !{!719, !780, !781, !782, !783, !784, !785, !787}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !717, file: !709, line: 648, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !722, line: 82, baseType: !723)
!722 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !722, line: 76, size: 768, elements: !724)
!724 = !{!725, !750, !751, !778, !779}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !723, file: !722, line: 77, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !722, line: 65, baseType: !728)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !722, line: 58, size: 384, elements: !729)
!729 = !{!730, !736, !740, !741, !745, !749}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !728, file: !722, line: 59, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!25, !734}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !728, file: !722, line: 60, baseType: !737, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!11, !11, !734}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !728, file: !722, line: 61, baseType: !737, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !728, file: !722, line: 62, baseType: !742, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!242, !11, !734, !734}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !728, file: !722, line: 63, baseType: !746, size: 64, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{null, !11, !11}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !728, file: !722, line: 64, baseType: !746, size: 64, offset: 320)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !723, file: !722, line: 78, baseType: !11, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !723, file: !722, line: 79, baseType: !752, size: 512, offset: 128)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !753, size: 512, elements: !776)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !722, line: 74, baseType: !754)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !722, line: 69, size: 256, elements: !755)
!755 = !{!756, !773, !774, !775}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !754, file: !722, line: 70, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !722, line: 56, baseType: !760)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !722, line: 47, size: 192, elements: !761)
!761 = !{!762, !763, !771}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !760, file: !722, line: 48, baseType: !11, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !760, file: !722, line: 54, baseType: !764, size: 64, offset: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !760, file: !722, line: 49, size: 64, elements: !765)
!765 = !{!766, !767, !768, !769}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !764, file: !722, line: 50, baseType: !11, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !764, file: !722, line: 51, baseType: !25, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !764, file: !722, line: 52, baseType: !27, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !764, file: !722, line: 53, baseType: !770, size: 64)
!770 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !760, file: !722, line: 55, baseType: !772, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !754, file: !722, line: 71, baseType: !10, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !754, file: !722, line: 72, baseType: !10, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !754, file: !722, line: 73, baseType: !10, size: 64, offset: 192)
!776 = !{!777}
!777 = !DISubrange(count: 2)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !723, file: !722, line: 80, baseType: !12, size: 64, offset: 640)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !723, file: !722, line: 81, baseType: !10, size: 64, offset: 704)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !717, file: !709, line: 649, baseType: !720, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !717, file: !709, line: 650, baseType: !720, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !717, file: !709, line: 651, baseType: !720, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !717, file: !709, line: 652, baseType: !720, size: 64, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !717, file: !709, line: 653, baseType: !242, size: 32, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !717, file: !709, line: 654, baseType: !786, size: 64, offset: 384)
!786 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !717, file: !709, line: 655, baseType: !788, size: 64, offset: 448)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !790, line: 54, baseType: !791)
!790 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !790, line: 47, size: 384, elements: !792)
!792 = !{!793, !802, !803, !807, !811, !815}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !791, file: !790, line: 48, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !790, line: 40, baseType: !796)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !790, line: 36, size: 192, elements: !797)
!797 = !{!798, !800, !801}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !796, file: !790, line: 37, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !796, file: !790, line: 38, baseType: !799, size: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !796, file: !790, line: 39, baseType: !11, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !791, file: !790, line: 49, baseType: !794, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !791, file: !790, line: 50, baseType: !804, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!11, !11}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !791, file: !790, line: 51, baseType: !808, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !11}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !791, file: !790, line: 52, baseType: !812, size: 64, offset: 256)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!242, !11, !11}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !791, file: !790, line: 53, baseType: !10, size: 64, offset: 320)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !710, file: !709, line: 727, baseType: !817, size: 64, offset: 192)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !709, line: 622, baseType: !819)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !709, line: 614, size: 128, elements: !820)
!820 = !{!821, !822, !823, !824, !825}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !819, file: !709, line: 615, baseType: !21, size: 4, flags: DIFlagBitField, extraData: i64 0)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !819, file: !709, line: 616, baseType: !21, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !819, file: !709, line: 617, baseType: !21, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !819, file: !709, line: 620, baseType: !242, size: 32, offset: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !819, file: !709, line: 621, baseType: !11, size: 64, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !710, file: !709, line: 728, baseType: !827, size: 64, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !35, line: 43, baseType: !828)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !710, file: !709, line: 729, baseType: !6, size: 64, offset: 320)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !710, file: !709, line: 730, baseType: !827, size: 64, offset: 384)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !710, file: !709, line: 734, baseType: !6, size: 64, offset: 448)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !710, file: !709, line: 735, baseType: !242, size: 32, offset: 512)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !710, file: !709, line: 736, baseType: !834, size: 64, offset: 576)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !710, file: !709, line: 737, baseType: !836, size: 64, offset: 640)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !709, line: 1307, size: 640, elements: !838)
!838 = !{!839, !840, !845, !846, !847, !848, !854, !855, !856, !857, !858}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !837, file: !709, line: 1308, baseType: !828, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !837, file: !709, line: 1309, baseType: !841, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !709, line: 1305, baseType: !843)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !707}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !837, file: !709, line: 1310, baseType: !242, size: 32, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !837, file: !709, line: 1311, baseType: !828, size: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !837, file: !709, line: 1312, baseType: !242, size: 32, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !837, file: !709, line: 1315, baseType: !849, size: 64, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !709, line: 1306, baseType: !851)
!851 = !DISubroutineType(types: !852)
!852 = !{!853, !836, !834, !242, !853}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !837, file: !709, line: 1317, baseType: !242, size: 32, offset: 384)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !837, file: !709, line: 1318, baseType: !242, size: 32, offset: 416)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !837, file: !709, line: 1319, baseType: !242, size: 32, offset: 448)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !837, file: !709, line: 1320, baseType: !786, size: 64, offset: 512)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !837, file: !709, line: 1320, baseType: !786, size: 64, offset: 576)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !710, file: !709, line: 737, baseType: !836, size: 64, offset: 704)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !710, file: !709, line: 738, baseType: !242, size: 32, offset: 768)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !710, file: !709, line: 739, baseType: !242, size: 32, offset: 800)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !710, file: !709, line: 740, baseType: !12, size: 64, offset: 832)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !710, file: !709, line: 741, baseType: !788, size: 64, offset: 896)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !710, file: !709, line: 742, baseType: !29, size: 64, offset: 960)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !710, file: !709, line: 743, baseType: !6, size: 64, offset: 1024)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !710, file: !709, line: 745, baseType: !867, size: 64, offset: 1088)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !868, line: 34, baseType: !12)
!868 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!869 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !710, file: !709, line: 746, baseType: !867, size: 64, offset: 1152)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !710, file: !709, line: 747, baseType: !867, size: 64, offset: 1216)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !710, file: !709, line: 748, baseType: !242, size: 32, offset: 1280)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !710, file: !709, line: 749, baseType: !242, size: 32, offset: 1312)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !710, file: !709, line: 750, baseType: !242, size: 32, offset: 1344)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !710, file: !709, line: 751, baseType: !242, size: 32, offset: 1376)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !710, file: !709, line: 752, baseType: !242, size: 32, offset: 1408)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !710, file: !709, line: 753, baseType: !877, size: 64, offset: 1472)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !878, line: 173, baseType: !879)
!878 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !9, line: 100, baseType: !880)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !9, line: 44, baseType: !12)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !710, file: !709, line: 754, baseType: !877, size: 64, offset: 1536)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !710, file: !709, line: 755, baseType: !827, size: 64, offset: 1600)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !710, file: !709, line: 756, baseType: !786, size: 64, offset: 1664)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !710, file: !709, line: 757, baseType: !786, size: 64, offset: 1728)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !710, file: !709, line: 758, baseType: !786, size: 64, offset: 1792)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !710, file: !709, line: 759, baseType: !786, size: 64, offset: 1856)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !710, file: !709, line: 760, baseType: !786, size: 64, offset: 1920)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !710, file: !709, line: 763, baseType: !889, size: 328, offset: 1984)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 328, elements: !890)
!890 = !{!891}
!891 = !DISubrange(count: 41)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !710, file: !709, line: 764, baseType: !242, size: 32, offset: 2336)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !710, file: !709, line: 765, baseType: !894, size: 368, offset: 2368)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 368, elements: !895)
!895 = !{!896}
!896 = !DISubrange(count: 46)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !710, file: !709, line: 766, baseType: !242, size: 32, offset: 2752)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !710, file: !709, line: 767, baseType: !899, size: 256, offset: 2816)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !709, line: 673, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !709, line: 665, size: 256, elements: !901)
!901 = !{!902, !910, !911, !912, !913}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !900, file: !709, line: 666, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !709, line: 663, baseType: !905)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !709, line: 659, size: 192, elements: !906)
!906 = !{!907, !908, !909}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !905, file: !709, line: 660, baseType: !834, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !905, file: !709, line: 661, baseType: !242, size: 32, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !905, file: !709, line: 662, baseType: !836, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !900, file: !709, line: 667, baseType: !242, size: 32, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !900, file: !709, line: 668, baseType: !242, size: 32, offset: 96)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !900, file: !709, line: 671, baseType: !242, size: 32, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !900, file: !709, line: 672, baseType: !867, size: 64, offset: 192)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !710, file: !709, line: 768, baseType: !242, size: 32, offset: 3072)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !710, file: !709, line: 769, baseType: !916, size: 704, offset: 3136)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !709, line: 703, baseType: !917)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !709, line: 677, size: 704, elements: !918)
!918 = !{!919, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !917, file: !709, line: 679, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !709, line: 52, baseType: !786)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !917, file: !709, line: 683, baseType: !720, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !917, file: !709, line: 685, baseType: !817, size: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !917, file: !709, line: 689, baseType: !6, size: 64, offset: 192)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !917, file: !709, line: 690, baseType: !817, size: 64, offset: 256)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !917, file: !709, line: 691, baseType: !817, size: 64, offset: 320)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !917, file: !709, line: 692, baseType: !920, size: 64, offset: 384)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !917, file: !709, line: 692, baseType: !920, size: 64, offset: 448)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !917, file: !709, line: 693, baseType: !242, size: 32, offset: 512)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !917, file: !709, line: 696, baseType: !242, size: 32, offset: 544)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !917, file: !709, line: 697, baseType: !786, size: 64, offset: 576)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !917, file: !709, line: 700, baseType: !11, size: 64, offset: 640)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !710, file: !709, line: 770, baseType: !786, size: 64, offset: 3840)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !710, file: !709, line: 771, baseType: !788, size: 64, offset: 3904)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !710, file: !709, line: 772, baseType: !720, size: 64, offset: 3968)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !710, file: !709, line: 773, baseType: !788, size: 64, offset: 4032)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !710, file: !709, line: 774, baseType: !827, size: 64, offset: 4096)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !710, file: !709, line: 775, baseType: !794, size: 64, offset: 4160)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !710, file: !709, line: 778, baseType: !242, size: 32, offset: 4224)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !710, file: !709, line: 779, baseType: !940, size: 131072, offset: 4256)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 131072, elements: !941)
!941 = !{!942}
!942 = !DISubrange(count: 16384)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!944 = !{!945, !946, !947, !948, !949, !950, !951, !952, !953, !954}
!945 = !DILocalVariable(name: "c", arg: 1, scope: !704, file: !3, line: 411, type: !707)
!946 = !DILocalVariable(name: "o", arg: 2, scope: !704, file: !3, line: 411, type: !817)
!947 = !DILocalVariable(name: "offset", arg: 3, scope: !704, file: !3, line: 411, type: !943)
!948 = !DILocalVariable(name: "hash", arg: 4, scope: !704, file: !3, line: 411, type: !242)
!949 = !DILocalVariable(name: "bits", arg: 5, scope: !704, file: !3, line: 411, type: !242)
!950 = !DILocalVariable(name: "loffset", scope: !704, file: !3, line: 412, type: !786)
!951 = !DILocalVariable(name: "err", scope: !704, file: !3, line: 413, type: !828)
!952 = !DILocalVariable(name: "p", scope: !704, file: !3, line: 414, type: !828)
!953 = !DILocalVariable(name: "plen", scope: !704, file: !3, line: 415, type: !6)
!954 = !DILocalVariable(name: "usehash", scope: !704, file: !3, line: 416, type: !242)
!955 = !DILocation(line: 411, column: 38, scope: !704)
!956 = !DILocation(line: 411, column: 47, scope: !704)
!957 = !DILocation(line: 411, column: 58, scope: !704)
!958 = !DILocation(line: 411, column: 70, scope: !704)
!959 = !DILocation(line: 411, column: 80, scope: !704)
!960 = !DILocation(line: 412, column: 5, scope: !704)
!961 = !DILocation(line: 414, column: 18, scope: !704)
!962 = !{!963, !964, i64 8}
!963 = !{!"redisObject", !119, i64 0, !119, i64 0, !119, i64 1, !119, i64 4, !964, i64 8}
!964 = !{!"any pointer", !104, i64 0}
!965 = !DILocation(line: 414, column: 11, scope: !704)
!966 = !DILocalVariable(name: "s", arg: 1, scope: !967, file: !35, line: 87, type: !972)
!967 = distinct !DISubprogram(name: "sdslen", scope: !35, file: !35, line: 87, type: !968, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !973)
!968 = !DISubroutineType(types: !969)
!969 = !{!970, !972}
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !971, line: 58, baseType: !10)
!971 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !827)
!973 = !{!966, !974}
!974 = !DILocalVariable(name: "flags", scope: !967, file: !35, line: 88, type: !23)
!975 = !DILocation(line: 87, column: 39, scope: !967, inlinedAt: !976)
!976 = distinct !DILocation(line: 415, column: 19, scope: !704)
!977 = !DILocation(line: 88, column: 27, scope: !967, inlinedAt: !976)
!978 = !DILocation(line: 88, column: 19, scope: !967, inlinedAt: !976)
!979 = !DILocation(line: 89, column: 5, scope: !967, inlinedAt: !976)
!980 = !DILocation(line: 91, column: 20, scope: !981, inlinedAt: !976)
!981 = distinct !DILexicalBlock(scope: !967, file: !35, line: 89, column: 33)
!982 = !DILocation(line: 91, column: 13, scope: !981, inlinedAt: !976)
!983 = !DILocation(line: 93, column: 20, scope: !981, inlinedAt: !976)
!984 = !DILocation(line: 93, column: 34, scope: !981, inlinedAt: !976)
!985 = !DILocation(line: 93, column: 13, scope: !981, inlinedAt: !976)
!986 = !DILocation(line: 95, column: 20, scope: !981, inlinedAt: !976)
!987 = !DILocation(line: 95, column: 35, scope: !981, inlinedAt: !976)
!988 = !{!989, !989, i64 0}
!989 = !{!"short", !104, i64 0}
!990 = !DILocation(line: 95, column: 13, scope: !981, inlinedAt: !976)
!991 = !DILocation(line: 97, column: 20, scope: !981, inlinedAt: !976)
!992 = !DILocation(line: 97, column: 35, scope: !981, inlinedAt: !976)
!993 = !DILocation(line: 97, column: 13, scope: !981, inlinedAt: !976)
!994 = !DILocation(line: 99, column: 20, scope: !981, inlinedAt: !976)
!995 = !DILocation(line: 99, column: 35, scope: !981, inlinedAt: !976)
!996 = !DILocation(line: 99, column: 13, scope: !981, inlinedAt: !976)
!997 = !DILocation(line: 0, scope: !981, inlinedAt: !976)
!998 = !DILocation(line: 415, column: 12, scope: !704)
!999 = !DILocation(line: 416, column: 9, scope: !704)
!1000 = !DILocation(line: 419, column: 9, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !704, file: !3, line: 419, column: 9)
!1002 = !DILocation(line: 419, column: 14, scope: !1001)
!1003 = !DILocation(line: 419, column: 24, scope: !1001)
!1004 = !DILocation(line: 419, column: 21, scope: !1001)
!1005 = !DILocation(line: 419, column: 37, scope: !1001)
!1006 = !DILocation(line: 421, column: 20, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !704, file: !3, line: 421, column: 9)
!1008 = !DILocation(line: 421, column: 33, scope: !1007)
!1009 = !DILocation(line: 412, column: 15, scope: !704)
!1010 = !DILocation(line: 421, column: 9, scope: !1007)
!1011 = !DILocation(line: 421, column: 52, scope: !1007)
!1012 = !DILocation(line: 421, column: 9, scope: !704)
!1013 = !DILocation(line: 422, column: 9, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 421, column: 58)
!1015 = !DILocation(line: 423, column: 9, scope: !1014)
!1016 = !DILocation(line: 427, column: 9, scope: !704)
!1017 = !DILocation(line: 427, column: 29, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !704, file: !3, line: 427, column: 9)
!1019 = !DILocation(line: 427, column: 26, scope: !1018)
!1020 = !{!1021, !1021, i64 0}
!1021 = !{!"long long", !104, i64 0}
!1022 = !DILocation(line: 427, column: 18, scope: !1018)
!1023 = !DILocation(line: 430, column: 10, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !704, file: !3, line: 430, column: 9)
!1025 = !DILocation(line: 430, column: 61, scope: !1024)
!1026 = !DILocation(line: 430, column: 23, scope: !1024)
!1027 = !DILocation(line: 432, column: 9, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 431, column: 5)
!1029 = !DILocation(line: 433, column: 9, scope: !1028)
!1030 = !DILocation(line: 436, column: 13, scope: !704)
!1031 = !DILocation(line: 437, column: 5, scope: !704)
!1032 = !DILocation(line: 0, scope: !704)
!1033 = !DILocation(line: 438, column: 1, scope: !704)
!1034 = distinct !DISubprogram(name: "getBitfieldTypeFromArgument", scope: !3, file: !3, line: 447, type: !1035, isLocal: false, isDefinition: true, scopeLine: 447, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1037)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!242, !707, !817, !853, !853}
!1037 = !{!1038, !1039, !1040, !1041, !1042, !1043, !1044}
!1038 = !DILocalVariable(name: "c", arg: 1, scope: !1034, file: !3, line: 447, type: !707)
!1039 = !DILocalVariable(name: "o", arg: 2, scope: !1034, file: !3, line: 447, type: !817)
!1040 = !DILocalVariable(name: "sign", arg: 3, scope: !1034, file: !3, line: 447, type: !853)
!1041 = !DILocalVariable(name: "bits", arg: 4, scope: !1034, file: !3, line: 447, type: !853)
!1042 = !DILocalVariable(name: "p", scope: !1034, file: !3, line: 448, type: !828)
!1043 = !DILocalVariable(name: "err", scope: !1034, file: !3, line: 449, type: !828)
!1044 = !DILocalVariable(name: "llbits", scope: !1034, file: !3, line: 450, type: !786)
!1045 = !DILocation(line: 447, column: 41, scope: !1034)
!1046 = !DILocation(line: 447, column: 50, scope: !1034)
!1047 = !DILocation(line: 447, column: 58, scope: !1034)
!1048 = !DILocation(line: 447, column: 69, scope: !1034)
!1049 = !DILocation(line: 448, column: 18, scope: !1034)
!1050 = !DILocation(line: 448, column: 11, scope: !1034)
!1051 = !DILocation(line: 450, column: 5, scope: !1034)
!1052 = !DILocation(line: 452, column: 9, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 452, column: 9)
!1054 = !DILocation(line: 452, column: 9, scope: !1034)
!1055 = !DILocation(line: 457, column: 9, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 456, column: 12)
!1057 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 454, column: 16)
!1058 = !DILocation(line: 458, column: 9, scope: !1056)
!1059 = !DILocation(line: 0, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 452, column: 22)
!1061 = !DILocation(line: 461, column: 21, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 461, column: 9)
!1063 = !DILocation(line: 461, column: 24, scope: !1062)
!1064 = !DILocation(line: 450, column: 15, scope: !1034)
!1065 = !DILocation(line: 461, column: 10, scope: !1062)
!1066 = !DILocation(line: 461, column: 46, scope: !1062)
!1067 = !DILocation(line: 462, column: 9, scope: !1062)
!1068 = !DILocation(line: 462, column: 16, scope: !1062)
!1069 = !DILocation(line: 461, column: 51, scope: !1062)
!1070 = !DILocation(line: 463, column: 10, scope: !1062)
!1071 = !DILocation(line: 463, column: 16, scope: !1062)
!1072 = !DILocation(line: 463, column: 31, scope: !1062)
!1073 = !DILocation(line: 463, column: 21, scope: !1062)
!1074 = !DILocation(line: 464, column: 16, scope: !1062)
!1075 = !DILocation(line: 464, column: 31, scope: !1062)
!1076 = !DILocation(line: 464, column: 21, scope: !1062)
!1077 = !DILocation(line: 466, column: 9, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 465, column: 5)
!1079 = !DILocation(line: 467, column: 9, scope: !1078)
!1080 = !DILocation(line: 469, column: 13, scope: !1034)
!1081 = !DILocation(line: 469, column: 11, scope: !1034)
!1082 = !DILocation(line: 470, column: 5, scope: !1034)
!1083 = !DILocation(line: 0, scope: !1056)
!1084 = !DILocation(line: 471, column: 1, scope: !1034)
!1085 = distinct !DISubprogram(name: "lookupStringForBitCommand", scope: !3, file: !3, line: 478, type: !1086, isLocal: false, isDefinition: true, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1088)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!817, !707, !6}
!1088 = !{!1089, !1090, !1091, !1092}
!1089 = !DILocalVariable(name: "c", arg: 1, scope: !1085, file: !3, line: 478, type: !707)
!1090 = !DILocalVariable(name: "maxbit", arg: 2, scope: !1085, file: !3, line: 478, type: !6)
!1091 = !DILocalVariable(name: "byte", scope: !1085, file: !3, line: 479, type: !6)
!1092 = !DILocalVariable(name: "o", scope: !1085, file: !3, line: 480, type: !817)
!1093 = !DILocation(line: 478, column: 41, scope: !1085)
!1094 = !DILocation(line: 478, column: 51, scope: !1085)
!1095 = !DILocation(line: 479, column: 26, scope: !1085)
!1096 = !DILocation(line: 479, column: 12, scope: !1085)
!1097 = !DILocation(line: 480, column: 33, scope: !1085)
!1098 = !{!1099, !964, i64 16}
!1099 = !{!"client", !291, i64 0, !119, i64 8, !964, i64 16, !964, i64 24, !964, i64 32, !291, i64 40, !964, i64 48, !291, i64 56, !119, i64 64, !964, i64 72, !964, i64 80, !964, i64 88, !119, i64 96, !119, i64 100, !291, i64 104, !964, i64 112, !1021, i64 120, !291, i64 128, !291, i64 136, !291, i64 144, !291, i64 152, !119, i64 160, !119, i64 164, !119, i64 168, !119, i64 172, !119, i64 176, !291, i64 184, !291, i64 192, !964, i64 200, !1021, i64 208, !1021, i64 216, !1021, i64 224, !1021, i64 232, !1021, i64 240, !104, i64 248, !119, i64 292, !104, i64 296, !119, i64 344, !1100, i64 352, !119, i64 384, !1101, i64 392, !1021, i64 480, !964, i64 488, !964, i64 496, !964, i64 504, !964, i64 512, !964, i64 520, !119, i64 528, !104, i64 532}
!1100 = !{!"multiState", !964, i64 0, !119, i64 8, !119, i64 12, !119, i64 16, !291, i64 24}
!1101 = !{!"blockingState", !1021, i64 0, !964, i64 8, !964, i64 16, !291, i64 24, !964, i64 32, !964, i64 40, !1021, i64 48, !1021, i64 56, !119, i64 64, !119, i64 68, !1021, i64 72, !964, i64 80}
!1102 = !DILocation(line: 480, column: 39, scope: !1085)
!1103 = !{!1099, !964, i64 72}
!1104 = !DILocation(line: 480, column: 36, scope: !1085)
!1105 = !{!964, !964, i64 0}
!1106 = !DILocation(line: 480, column: 15, scope: !1085)
!1107 = !DILocation(line: 480, column: 11, scope: !1085)
!1108 = !DILocation(line: 482, column: 11, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 482, column: 9)
!1110 = !DILocation(line: 482, column: 9, scope: !1085)
!1111 = !DILocation(line: 483, column: 57, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 482, column: 20)
!1113 = !DILocation(line: 483, column: 37, scope: !1112)
!1114 = !DILocation(line: 483, column: 13, scope: !1112)
!1115 = !DILocation(line: 484, column: 18, scope: !1112)
!1116 = !DILocation(line: 484, column: 24, scope: !1112)
!1117 = !DILocation(line: 484, column: 21, scope: !1112)
!1118 = !DILocation(line: 484, column: 9, scope: !1112)
!1119 = !DILocation(line: 485, column: 5, scope: !1112)
!1120 = !DILocation(line: 486, column: 13, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 486, column: 13)
!1122 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 485, column: 12)
!1123 = !DILocation(line: 486, column: 13, scope: !1122)
!1124 = !DILocation(line: 487, column: 37, scope: !1122)
!1125 = !DILocation(line: 487, column: 43, scope: !1122)
!1126 = !DILocation(line: 487, column: 40, scope: !1122)
!1127 = !DILocation(line: 487, column: 13, scope: !1122)
!1128 = !DILocation(line: 488, column: 33, scope: !1122)
!1129 = !DILocation(line: 488, column: 41, scope: !1122)
!1130 = !DILocation(line: 488, column: 18, scope: !1122)
!1131 = !DILocation(line: 488, column: 16, scope: !1122)
!1132 = !DILocation(line: 0, scope: !1121)
!1133 = !DILocation(line: 491, column: 1, scope: !1085)
!1134 = distinct !DISubprogram(name: "getObjectReadOnlyString", scope: !3, file: !3, line: 506, type: !1135, isLocal: false, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1138)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!22, !817, !1137, !828}
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!1138 = !{!1139, !1140, !1141, !1142}
!1139 = !DILocalVariable(name: "o", arg: 1, scope: !1134, file: !3, line: 506, type: !817)
!1140 = !DILocalVariable(name: "len", arg: 2, scope: !1134, file: !3, line: 506, type: !1137)
!1141 = !DILocalVariable(name: "llbuf", arg: 3, scope: !1134, file: !3, line: 506, type: !828)
!1142 = !DILocalVariable(name: "p", scope: !1134, file: !3, line: 508, type: !22)
!1143 = !DILocation(line: 506, column: 46, scope: !1134)
!1144 = !DILocation(line: 506, column: 55, scope: !1134)
!1145 = !DILocation(line: 506, column: 66, scope: !1134)
!1146 = !DILocation(line: 507, column: 5, scope: !1134)
!1147 = !DILocation(line: 508, column: 20, scope: !1134)
!1148 = !DILocation(line: 512, column: 17, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 512, column: 9)
!1150 = !DILocation(line: 512, column: 26, scope: !1149)
!1151 = !DILocation(line: 512, column: 11, scope: !1149)
!1152 = !DILocation(line: 514, column: 13, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 514, column: 13)
!1154 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 512, column: 47)
!1155 = !DILocation(line: 514, column: 13, scope: !1154)
!1156 = !DILocation(line: 514, column: 64, scope: !1153)
!1157 = !DILocation(line: 514, column: 25, scope: !1153)
!1158 = !DILocation(line: 514, column: 23, scope: !1153)
!1159 = !DILocation(line: 514, column: 18, scope: !1153)
!1160 = !DILocation(line: 516, column: 33, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 515, column: 19)
!1162 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 515, column: 16)
!1163 = !DILocation(line: 517, column: 13, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 517, column: 13)
!1165 = !DILocation(line: 517, column: 13, scope: !1161)
!1166 = !DILocation(line: 87, column: 39, scope: !967, inlinedAt: !1167)
!1167 = distinct !DILocation(line: 517, column: 25, scope: !1164)
!1168 = !DILocation(line: 88, column: 27, scope: !967, inlinedAt: !1167)
!1169 = !DILocation(line: 88, column: 19, scope: !967, inlinedAt: !1167)
!1170 = !DILocation(line: 89, column: 5, scope: !967, inlinedAt: !1167)
!1171 = !DILocation(line: 91, column: 20, scope: !981, inlinedAt: !1167)
!1172 = !DILocation(line: 91, column: 13, scope: !981, inlinedAt: !1167)
!1173 = !DILocation(line: 93, column: 20, scope: !981, inlinedAt: !1167)
!1174 = !DILocation(line: 93, column: 34, scope: !981, inlinedAt: !1167)
!1175 = !DILocation(line: 93, column: 13, scope: !981, inlinedAt: !1167)
!1176 = !DILocation(line: 95, column: 20, scope: !981, inlinedAt: !1167)
!1177 = !DILocation(line: 95, column: 35, scope: !981, inlinedAt: !1167)
!1178 = !DILocation(line: 95, column: 13, scope: !981, inlinedAt: !1167)
!1179 = !DILocation(line: 97, column: 20, scope: !981, inlinedAt: !1167)
!1180 = !DILocation(line: 97, column: 35, scope: !981, inlinedAt: !1167)
!1181 = !DILocation(line: 97, column: 13, scope: !981, inlinedAt: !1167)
!1182 = !DILocation(line: 99, column: 20, scope: !981, inlinedAt: !1167)
!1183 = !DILocation(line: 99, column: 35, scope: !981, inlinedAt: !1167)
!1184 = !DILocation(line: 99, column: 13, scope: !981, inlinedAt: !1167)
!1185 = !DILocation(line: 0, scope: !981, inlinedAt: !1167)
!1186 = !DILocation(line: 517, column: 23, scope: !1164)
!1187 = !DILocation(line: 517, column: 18, scope: !1164)
!1188 = !DILocation(line: 0, scope: !1134)
!1189 = !DILocation(line: 521, column: 5, scope: !1134)
!1190 = distinct !DISubprogram(name: "setbitCommand", scope: !3, file: !3, line: 525, type: !843, isLocal: false, isDefinition: true, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1199, !1200, !1201, !1202}
!1192 = !DILocalVariable(name: "c", arg: 1, scope: !1190, file: !3, line: 525, type: !707)
!1193 = !DILocalVariable(name: "o", scope: !1190, file: !3, line: 526, type: !817)
!1194 = !DILocalVariable(name: "err", scope: !1190, file: !3, line: 527, type: !828)
!1195 = !DILocalVariable(name: "bitoffset", scope: !1190, file: !3, line: 528, type: !6)
!1196 = !DILocalVariable(name: "byte", scope: !1190, file: !3, line: 529, type: !1197)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !878, line: 200, baseType: !1198)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !9, line: 145, baseType: !12)
!1199 = !DILocalVariable(name: "bit", scope: !1190, file: !3, line: 529, type: !1197)
!1200 = !DILocalVariable(name: "byteval", scope: !1190, file: !3, line: 530, type: !242)
!1201 = !DILocalVariable(name: "bitval", scope: !1190, file: !3, line: 530, type: !242)
!1202 = !DILocalVariable(name: "on", scope: !1190, file: !3, line: 531, type: !12)
!1203 = !DILocation(line: 525, column: 28, scope: !1190)
!1204 = !DILocation(line: 531, column: 5, scope: !1190)
!1205 = !DILocation(line: 533, column: 39, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 533, column: 9)
!1207 = !DILocation(line: 533, column: 36, scope: !1206)
!1208 = !DILocation(line: 411, column: 38, scope: !704, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 533, column: 9, scope: !1206)
!1210 = !DILocation(line: 411, column: 47, scope: !704, inlinedAt: !1209)
!1211 = !DILocation(line: 411, column: 70, scope: !704, inlinedAt: !1209)
!1212 = !DILocation(line: 411, column: 80, scope: !704, inlinedAt: !1209)
!1213 = !DILocation(line: 412, column: 5, scope: !704, inlinedAt: !1209)
!1214 = !DILocation(line: 414, column: 18, scope: !704, inlinedAt: !1209)
!1215 = !DILocation(line: 414, column: 11, scope: !704, inlinedAt: !1209)
!1216 = !DILocation(line: 87, column: 39, scope: !967, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 415, column: 19, scope: !704, inlinedAt: !1209)
!1218 = !DILocation(line: 88, column: 27, scope: !967, inlinedAt: !1217)
!1219 = !DILocation(line: 88, column: 19, scope: !967, inlinedAt: !1217)
!1220 = !DILocation(line: 89, column: 5, scope: !967, inlinedAt: !1217)
!1221 = !DILocation(line: 91, column: 20, scope: !981, inlinedAt: !1217)
!1222 = !DILocation(line: 91, column: 13, scope: !981, inlinedAt: !1217)
!1223 = !DILocation(line: 93, column: 20, scope: !981, inlinedAt: !1217)
!1224 = !DILocation(line: 93, column: 34, scope: !981, inlinedAt: !1217)
!1225 = !DILocation(line: 93, column: 13, scope: !981, inlinedAt: !1217)
!1226 = !DILocation(line: 95, column: 20, scope: !981, inlinedAt: !1217)
!1227 = !DILocation(line: 95, column: 35, scope: !981, inlinedAt: !1217)
!1228 = !DILocation(line: 95, column: 13, scope: !981, inlinedAt: !1217)
!1229 = !DILocation(line: 97, column: 20, scope: !981, inlinedAt: !1217)
!1230 = !DILocation(line: 97, column: 35, scope: !981, inlinedAt: !1217)
!1231 = !DILocation(line: 97, column: 13, scope: !981, inlinedAt: !1217)
!1232 = !DILocation(line: 99, column: 20, scope: !981, inlinedAt: !1217)
!1233 = !DILocation(line: 99, column: 35, scope: !981, inlinedAt: !1217)
!1234 = !DILocation(line: 99, column: 13, scope: !981, inlinedAt: !1217)
!1235 = !DILocation(line: 0, scope: !981, inlinedAt: !1217)
!1236 = !DILocation(line: 415, column: 12, scope: !704, inlinedAt: !1209)
!1237 = !DILocation(line: 416, column: 9, scope: !704, inlinedAt: !1209)
!1238 = !DILocation(line: 412, column: 15, scope: !704, inlinedAt: !1209)
!1239 = !DILocation(line: 421, column: 9, scope: !1007, inlinedAt: !1209)
!1240 = !DILocation(line: 421, column: 52, scope: !1007, inlinedAt: !1209)
!1241 = !DILocation(line: 421, column: 9, scope: !704, inlinedAt: !1209)
!1242 = !DILocation(line: 422, column: 9, scope: !1014, inlinedAt: !1209)
!1243 = !DILocation(line: 423, column: 9, scope: !1014, inlinedAt: !1209)
!1244 = !DILocation(line: 430, column: 10, scope: !1024, inlinedAt: !1209)
!1245 = !DILocation(line: 430, column: 61, scope: !1024, inlinedAt: !1209)
!1246 = !DILocation(line: 430, column: 23, scope: !1024, inlinedAt: !1209)
!1247 = !DILocation(line: 432, column: 9, scope: !1028, inlinedAt: !1209)
!1248 = !DILocation(line: 433, column: 9, scope: !1028, inlinedAt: !1209)
!1249 = !DILocation(line: 438, column: 1, scope: !704, inlinedAt: !1209)
!1250 = !DILocation(line: 533, column: 9, scope: !1190)
!1251 = !DILocation(line: 536, column: 39, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 536, column: 9)
!1253 = !DILocation(line: 536, column: 36, scope: !1252)
!1254 = !DILocation(line: 531, column: 10, scope: !1190)
!1255 = !DILocation(line: 536, column: 9, scope: !1252)
!1256 = !DILocation(line: 536, column: 56, scope: !1252)
!1257 = !DILocation(line: 536, column: 9, scope: !1190)
!1258 = !DILocation(line: 540, column: 9, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 540, column: 9)
!1260 = !DILocation(line: 540, column: 12, scope: !1259)
!1261 = !DILocation(line: 540, column: 9, scope: !1190)
!1262 = !DILocation(line: 541, column: 9, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 540, column: 18)
!1264 = !DILocation(line: 542, column: 9, scope: !1263)
!1265 = !DILocation(line: 528, column: 12, scope: !1190)
!1266 = !DILocation(line: 545, column: 14, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 545, column: 9)
!1268 = !DILocation(line: 526, column: 11, scope: !1190)
!1269 = !DILocation(line: 545, column: 54, scope: !1267)
!1270 = !DILocation(line: 545, column: 9, scope: !1190)
!1271 = !DILocation(line: 548, column: 22, scope: !1190)
!1272 = !DILocation(line: 529, column: 13, scope: !1190)
!1273 = !DILocation(line: 549, column: 29, scope: !1190)
!1274 = !DILocation(line: 549, column: 15, scope: !1190)
!1275 = !DILocation(line: 530, column: 9, scope: !1190)
!1276 = !DILocation(line: 550, column: 26, scope: !1190)
!1277 = !DILocation(line: 550, column: 13, scope: !1190)
!1278 = !DILocation(line: 529, column: 19, scope: !1190)
!1279 = !DILocation(line: 551, column: 27, scope: !1190)
!1280 = !DILocation(line: 551, column: 22, scope: !1190)
!1281 = !DILocation(line: 530, column: 18, scope: !1190)
!1282 = !DILocation(line: 554, column: 16, scope: !1190)
!1283 = !DILocation(line: 554, column: 13, scope: !1190)
!1284 = !DILocation(line: 555, column: 18, scope: !1190)
!1285 = !DILocation(line: 555, column: 21, scope: !1190)
!1286 = !DILocation(line: 555, column: 28, scope: !1190)
!1287 = !DILocation(line: 555, column: 13, scope: !1190)
!1288 = !DILocation(line: 556, column: 32, scope: !1190)
!1289 = !DILocation(line: 556, column: 30, scope: !1190)
!1290 = !DILocation(line: 557, column: 26, scope: !1190)
!1291 = !DILocation(line: 557, column: 32, scope: !1190)
!1292 = !DILocation(line: 557, column: 29, scope: !1190)
!1293 = !DILocation(line: 557, column: 5, scope: !1190)
!1294 = !DILocation(line: 558, column: 51, scope: !1190)
!1295 = !DILocation(line: 558, column: 48, scope: !1190)
!1296 = !DILocation(line: 558, column: 62, scope: !1190)
!1297 = !DILocation(line: 558, column: 66, scope: !1190)
!1298 = !{!1299, !119, i64 40}
!1299 = !{!"redisDb", !964, i64 0, !964, i64 8, !964, i64 16, !964, i64 24, !964, i64 32, !119, i64 40, !1021, i64 48, !964, i64 56}
!1300 = !DILocation(line: 558, column: 5, scope: !1190)
!1301 = !DILocation(line: 559, column: 17, scope: !1190)
!1302 = !{!1303, !1021, i64 2080}
!1303 = !{!"redisServer", !119, i64 0, !964, i64 8, !964, i64 16, !964, i64 24, !119, i64 32, !119, i64 36, !119, i64 40, !964, i64 48, !964, i64 56, !964, i64 64, !964, i64 72, !119, i64 80, !119, i64 84, !119, i64 88, !119, i64 92, !964, i64 96, !964, i64 104, !119, i64 112, !119, i64 116, !104, i64 120, !119, i64 164, !291, i64 168, !119, i64 176, !964, i64 184, !964, i64 192, !964, i64 200, !104, i64 208, !119, i64 216, !119, i64 220, !104, i64 224, !119, i64 352, !964, i64 360, !119, i64 368, !104, i64 372, !119, i64 436, !119, i64 440, !104, i64 444, !119, i64 508, !964, i64 512, !964, i64 520, !964, i64 528, !964, i64 536, !964, i64 544, !964, i64 552, !964, i64 560, !119, i64 568, !1021, i64 576, !104, i64 584, !964, i64 840, !291, i64 848, !119, i64 856, !119, i64 860, !291, i64 864, !291, i64 872, !291, i64 880, !291, i64 888, !964, i64 896, !964, i64 904, !964, i64 912, !964, i64 920, !964, i64 928, !964, i64 936, !964, i64 944, !964, i64 952, !964, i64 960, !964, i64 968, !964, i64 976, !964, i64 984, !964, i64 992, !291, i64 1000, !1021, i64 1008, !1021, i64 1016, !1021, i64 1024, !1304, i64 1032, !1021, i64 1040, !1021, i64 1048, !1021, i64 1056, !1021, i64 1064, !1021, i64 1072, !1021, i64 1080, !1021, i64 1088, !1021, i64 1096, !1021, i64 1104, !291, i64 1112, !1021, i64 1120, !1304, i64 1128, !1021, i64 1136, !1021, i64 1144, !1021, i64 1152, !1021, i64 1160, !964, i64 1168, !1021, i64 1176, !1021, i64 1184, !291, i64 1192, !1305, i64 1200, !1021, i64 1240, !1021, i64 1248, !291, i64 1256, !291, i64 1264, !104, i64 1272, !119, i64 1728, !119, i64 1732, !119, i64 1736, !119, i64 1740, !119, i64 1744, !291, i64 1752, !119, i64 1760, !119, i64 1764, !119, i64 1768, !119, i64 1772, !291, i64 1776, !291, i64 1784, !119, i64 1792, !119, i64 1796, !119, i64 1800, !119, i64 1804, !104, i64 1808, !119, i64 1880, !119, i64 1884, !964, i64 1888, !119, i64 1896, !119, i64 1900, !291, i64 1904, !291, i64 1912, !291, i64 1920, !291, i64 1928, !119, i64 1936, !119, i64 1940, !964, i64 1944, !964, i64 1952, !119, i64 1960, !119, i64 1964, !291, i64 1968, !291, i64 1976, !291, i64 1984, !291, i64 1992, !119, i64 2000, !291, i64 2008, !119, i64 2016, !119, i64 2020, !119, i64 2024, !119, i64 2028, !119, i64 2032, !119, i64 2036, !119, i64 2040, !119, i64 2044, !119, i64 2048, !119, i64 2052, !119, i64 2056, !119, i64 2060, !119, i64 2064, !964, i64 2072, !1021, i64 2080, !1021, i64 2088, !119, i64 2096, !964, i64 2104, !119, i64 2112, !964, i64 2120, !119, i64 2128, !119, i64 2132, !291, i64 2136, !291, i64 2144, !291, i64 2152, !291, i64 2160, !119, i64 2168, !119, i64 2172, !119, i64 2176, !119, i64 2180, !119, i64 2184, !119, i64 2188, !104, i64 2192, !1306, i64 2200, !1307, i64 2224, !964, i64 2240, !119, i64 2248, !964, i64 2256, !119, i64 2264, !104, i64 2268, !104, i64 2309, !1021, i64 2352, !1021, i64 2360, !119, i64 2368, !119, i64 2372, !964, i64 2376, !1021, i64 2384, !1021, i64 2392, !1021, i64 2400, !1021, i64 2408, !291, i64 2416, !291, i64 2424, !119, i64 2432, !119, i64 2436, !119, i64 2440, !119, i64 2444, !119, i64 2448, !964, i64 2456, !964, i64 2464, !119, i64 2472, !119, i64 2476, !964, i64 2480, !964, i64 2488, !119, i64 2496, !119, i64 2500, !291, i64 2504, !291, i64 2512, !291, i64 2520, !119, i64 2528, !119, i64 2532, !964, i64 2536, !291, i64 2544, !119, i64 2552, !119, i64 2556, !119, i64 2560, !291, i64 2568, !119, i64 2576, !119, i64 2580, !119, i64 2584, !964, i64 2592, !104, i64 2600, !1021, i64 2648, !119, i64 2656, !964, i64 2664, !964, i64 2672, !119, i64 2680, !964, i64 2688, !119, i64 2696, !119, i64 2700, !1021, i64 2704, !119, i64 2712, !119, i64 2716, !119, i64 2720, !119, i64 2724, !1021, i64 2728, !119, i64 2736, !104, i64 2740, !964, i64 2768, !964, i64 2776, !119, i64 2784, !119, i64 2788, !119, i64 2792, !119, i64 2796, !291, i64 2800, !291, i64 2808, !291, i64 2816, !291, i64 2824, !291, i64 2832, !291, i64 2840, !291, i64 2848, !291, i64 2856, !119, i64 2864, !119, i64 2868, !291, i64 2872, !291, i64 2880, !119, i64 2888, !1021, i64 2896, !964, i64 2904, !964, i64 2912, !119, i64 2920, !119, i64 2924, !1021, i64 2928, !964, i64 2936, !964, i64 2944, !119, i64 2952, !119, i64 2956, !119, i64 2960, !119, i64 2964, !964, i64 2968, !119, i64 2976, !119, i64 2980, !119, i64 2984, !964, i64 2992, !964, i64 3000, !964, i64 3008, !964, i64 3016, !1021, i64 3024, !1021, i64 3032, !1021, i64 3040, !119, i64 3048, !119, i64 3052, !119, i64 3056, !119, i64 3060, !119, i64 3064, !119, i64 3068, !119, i64 3072, !119, i64 3076, !119, i64 3080, !119, i64 3084, !119, i64 3088, !1021, i64 3096, !964, i64 3104, !964, i64 3112, !964, i64 3120, !119, i64 3128, !119, i64 3132, !119, i64 3136, !291, i64 3144, !964, i64 3152, !964, i64 3160, !964, i64 3168}
!1304 = !{!"double", !104, i64 0}
!1305 = !{!"malloc_stats", !291, i64 0, !291, i64 8, !291, i64 16, !291, i64 24, !291, i64 32}
!1306 = !{!"", !119, i64 0, !291, i64 8, !1021, i64 16}
!1307 = !{!"redisOpArray", !964, i64 0, !119, i64 8}
!1308 = !DILocation(line: 560, column: 17, scope: !1190)
!1309 = !DILocation(line: 560, column: 33, scope: !1190)
!1310 = !DILocation(line: 560, column: 47, scope: !1190)
!1311 = !DILocation(line: 560, column: 5, scope: !1190)
!1312 = !DILocation(line: 561, column: 1, scope: !1190)
!1313 = distinct !DISubprogram(name: "getbitCommand", scope: !3, file: !3, line: 564, type: !843, isLocal: false, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1314)
!1314 = !{!1315, !1316, !1317, !1321, !1322, !1323, !1324}
!1315 = !DILocalVariable(name: "c", arg: 1, scope: !1313, file: !3, line: 564, type: !707)
!1316 = !DILocalVariable(name: "o", scope: !1313, file: !3, line: 565, type: !817)
!1317 = !DILocalVariable(name: "llbuf", scope: !1313, file: !3, line: 566, type: !1318)
!1318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 256, elements: !1319)
!1319 = !{!1320}
!1320 = !DISubrange(count: 32)
!1321 = !DILocalVariable(name: "bitoffset", scope: !1313, file: !3, line: 567, type: !6)
!1322 = !DILocalVariable(name: "byte", scope: !1313, file: !3, line: 568, type: !6)
!1323 = !DILocalVariable(name: "bit", scope: !1313, file: !3, line: 568, type: !6)
!1324 = !DILocalVariable(name: "bitval", scope: !1313, file: !3, line: 569, type: !6)
!1325 = !DILocation(line: 564, column: 28, scope: !1313)
!1326 = !DILocation(line: 566, column: 5, scope: !1313)
!1327 = !DILocation(line: 566, column: 10, scope: !1313)
!1328 = !DILocation(line: 569, column: 12, scope: !1313)
!1329 = !DILocation(line: 571, column: 39, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 571, column: 9)
!1331 = !DILocation(line: 571, column: 36, scope: !1330)
!1332 = !DILocation(line: 411, column: 38, scope: !704, inlinedAt: !1333)
!1333 = distinct !DILocation(line: 571, column: 9, scope: !1330)
!1334 = !DILocation(line: 411, column: 47, scope: !704, inlinedAt: !1333)
!1335 = !DILocation(line: 411, column: 70, scope: !704, inlinedAt: !1333)
!1336 = !DILocation(line: 411, column: 80, scope: !704, inlinedAt: !1333)
!1337 = !DILocation(line: 412, column: 5, scope: !704, inlinedAt: !1333)
!1338 = !DILocation(line: 414, column: 18, scope: !704, inlinedAt: !1333)
!1339 = !DILocation(line: 414, column: 11, scope: !704, inlinedAt: !1333)
!1340 = !DILocation(line: 87, column: 39, scope: !967, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 415, column: 19, scope: !704, inlinedAt: !1333)
!1342 = !DILocation(line: 88, column: 27, scope: !967, inlinedAt: !1341)
!1343 = !DILocation(line: 88, column: 19, scope: !967, inlinedAt: !1341)
!1344 = !DILocation(line: 89, column: 5, scope: !967, inlinedAt: !1341)
!1345 = !DILocation(line: 91, column: 20, scope: !981, inlinedAt: !1341)
!1346 = !DILocation(line: 91, column: 13, scope: !981, inlinedAt: !1341)
!1347 = !DILocation(line: 93, column: 20, scope: !981, inlinedAt: !1341)
!1348 = !DILocation(line: 93, column: 34, scope: !981, inlinedAt: !1341)
!1349 = !DILocation(line: 93, column: 13, scope: !981, inlinedAt: !1341)
!1350 = !DILocation(line: 95, column: 20, scope: !981, inlinedAt: !1341)
!1351 = !DILocation(line: 95, column: 35, scope: !981, inlinedAt: !1341)
!1352 = !DILocation(line: 95, column: 13, scope: !981, inlinedAt: !1341)
!1353 = !DILocation(line: 97, column: 20, scope: !981, inlinedAt: !1341)
!1354 = !DILocation(line: 97, column: 35, scope: !981, inlinedAt: !1341)
!1355 = !DILocation(line: 97, column: 13, scope: !981, inlinedAt: !1341)
!1356 = !DILocation(line: 99, column: 20, scope: !981, inlinedAt: !1341)
!1357 = !DILocation(line: 99, column: 35, scope: !981, inlinedAt: !1341)
!1358 = !DILocation(line: 99, column: 13, scope: !981, inlinedAt: !1341)
!1359 = !DILocation(line: 0, scope: !981, inlinedAt: !1341)
!1360 = !DILocation(line: 415, column: 12, scope: !704, inlinedAt: !1333)
!1361 = !DILocation(line: 416, column: 9, scope: !704, inlinedAt: !1333)
!1362 = !DILocation(line: 412, column: 15, scope: !704, inlinedAt: !1333)
!1363 = !DILocation(line: 421, column: 9, scope: !1007, inlinedAt: !1333)
!1364 = !DILocation(line: 421, column: 52, scope: !1007, inlinedAt: !1333)
!1365 = !DILocation(line: 421, column: 9, scope: !704, inlinedAt: !1333)
!1366 = !DILocation(line: 422, column: 9, scope: !1014, inlinedAt: !1333)
!1367 = !DILocation(line: 423, column: 9, scope: !1014, inlinedAt: !1333)
!1368 = !DILocation(line: 430, column: 10, scope: !1024, inlinedAt: !1333)
!1369 = !DILocation(line: 430, column: 61, scope: !1024, inlinedAt: !1333)
!1370 = !DILocation(line: 430, column: 23, scope: !1024, inlinedAt: !1333)
!1371 = !DILocation(line: 432, column: 9, scope: !1028, inlinedAt: !1333)
!1372 = !DILocation(line: 433, column: 9, scope: !1028, inlinedAt: !1333)
!1373 = !DILocation(line: 438, column: 1, scope: !704, inlinedAt: !1333)
!1374 = !DILocation(line: 571, column: 9, scope: !1313)
!1375 = !DILocation(line: 574, column: 40, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 574, column: 9)
!1377 = !DILocation(line: 574, column: 37, scope: !1376)
!1378 = !DILocation(line: 574, column: 55, scope: !1376)
!1379 = !{!1380, !964, i64 32}
!1380 = !{!"sharedObjectsStruct", !964, i64 0, !964, i64 8, !964, i64 16, !964, i64 24, !964, i64 32, !964, i64 40, !964, i64 48, !964, i64 56, !964, i64 64, !964, i64 72, !964, i64 80, !964, i64 88, !964, i64 96, !964, i64 104, !964, i64 112, !964, i64 120, !964, i64 128, !964, i64 136, !964, i64 144, !964, i64 152, !964, i64 160, !964, i64 168, !964, i64 176, !964, i64 184, !964, i64 192, !964, i64 200, !964, i64 208, !964, i64 216, !964, i64 224, !964, i64 232, !964, i64 240, !964, i64 248, !964, i64 256, !964, i64 264, !964, i64 272, !964, i64 280, !964, i64 288, !964, i64 296, !964, i64 304, !964, i64 312, !964, i64 320, !964, i64 328, !964, i64 336, !964, i64 344, !964, i64 352, !964, i64 360, !104, i64 368, !104, i64 448, !104, i64 80448, !104, i64 80704, !964, i64 80960, !964, i64 80968}
!1381 = !DILocation(line: 574, column: 14, scope: !1376)
!1382 = !DILocation(line: 565, column: 11, scope: !1313)
!1383 = !DILocation(line: 574, column: 63, scope: !1376)
!1384 = !DILocation(line: 574, column: 71, scope: !1376)
!1385 = !DILocation(line: 575, column: 9, scope: !1376)
!1386 = !DILocation(line: 574, column: 9, scope: !1313)
!1387 = !DILocation(line: 567, column: 12, scope: !1313)
!1388 = !DILocation(line: 577, column: 22, scope: !1313)
!1389 = !DILocation(line: 568, column: 12, scope: !1313)
!1390 = !DILocation(line: 568, column: 18, scope: !1313)
!1391 = !DILocation(line: 579, column: 9, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 579, column: 9)
!1393 = !DILocation(line: 580, column: 30, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 580, column: 13)
!1395 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 579, column: 30)
!1396 = !DILocation(line: 87, column: 39, scope: !967, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 580, column: 20, scope: !1394)
!1398 = !DILocation(line: 88, column: 27, scope: !967, inlinedAt: !1397)
!1399 = !DILocation(line: 88, column: 19, scope: !967, inlinedAt: !1397)
!1400 = !DILocation(line: 89, column: 5, scope: !967, inlinedAt: !1397)
!1401 = !DILocation(line: 91, column: 20, scope: !981, inlinedAt: !1397)
!1402 = !DILocation(line: 91, column: 13, scope: !981, inlinedAt: !1397)
!1403 = !DILocation(line: 93, column: 20, scope: !981, inlinedAt: !1397)
!1404 = !DILocation(line: 93, column: 34, scope: !981, inlinedAt: !1397)
!1405 = !DILocation(line: 93, column: 13, scope: !981, inlinedAt: !1397)
!1406 = !DILocation(line: 95, column: 20, scope: !981, inlinedAt: !1397)
!1407 = !DILocation(line: 95, column: 35, scope: !981, inlinedAt: !1397)
!1408 = !DILocation(line: 95, column: 13, scope: !981, inlinedAt: !1397)
!1409 = !DILocation(line: 97, column: 20, scope: !981, inlinedAt: !1397)
!1410 = !DILocation(line: 97, column: 35, scope: !981, inlinedAt: !1397)
!1411 = !DILocation(line: 97, column: 13, scope: !981, inlinedAt: !1397)
!1412 = !DILocation(line: 99, column: 20, scope: !981, inlinedAt: !1397)
!1413 = !DILocation(line: 99, column: 35, scope: !981, inlinedAt: !1397)
!1414 = !DILocation(line: 99, column: 13, scope: !981, inlinedAt: !1397)
!1415 = !DILocation(line: 0, scope: !981, inlinedAt: !1397)
!1416 = !DILocation(line: 580, column: 18, scope: !1394)
!1417 = !DILocation(line: 580, column: 13, scope: !1395)
!1418 = !DILocation(line: 581, column: 22, scope: !1394)
!1419 = !DILocation(line: 581, column: 13, scope: !1394)
!1420 = !DILocation(line: 583, column: 67, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 583, column: 13)
!1422 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 582, column: 12)
!1423 = !DILocation(line: 583, column: 28, scope: !1421)
!1424 = !DILocation(line: 583, column: 20, scope: !1421)
!1425 = !DILocation(line: 583, column: 18, scope: !1421)
!1426 = !DILocation(line: 583, column: 13, scope: !1422)
!1427 = !DILocation(line: 584, column: 22, scope: !1421)
!1428 = !DILocation(line: 584, column: 13, scope: !1421)
!1429 = !DILocation(line: 0, scope: !1394)
!1430 = !DILocation(line: 587, column: 17, scope: !1313)
!1431 = !DILocation(line: 0, scope: !1313)
!1432 = !DILocation(line: 587, column: 5, scope: !1313)
!1433 = !DILocation(line: 588, column: 1, scope: !1313)
!1434 = distinct !DISubprogram(name: "bitopCommand", scope: !3, file: !3, line: 591, type: !843, isLocal: false, isDefinition: true, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1435)
!1435 = !{!1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1446, !1447, !1448, !1449, !1450, !1456, !1459, !1460, !1461, !1467}
!1436 = !DILocalVariable(name: "c", arg: 1, scope: !1434, file: !3, line: 591, type: !707)
!1437 = !DILocalVariable(name: "opname", scope: !1434, file: !3, line: 592, type: !828)
!1438 = !DILocalVariable(name: "o", scope: !1434, file: !3, line: 593, type: !817)
!1439 = !DILocalVariable(name: "targetkey", scope: !1434, file: !3, line: 593, type: !817)
!1440 = !DILocalVariable(name: "op", scope: !1434, file: !3, line: 594, type: !10)
!1441 = !DILocalVariable(name: "j", scope: !1434, file: !3, line: 594, type: !10)
!1442 = !DILocalVariable(name: "numkeys", scope: !1434, file: !3, line: 594, type: !10)
!1443 = !DILocalVariable(name: "objects", scope: !1434, file: !3, line: 595, type: !834)
!1444 = !DILocalVariable(name: "src", scope: !1434, file: !3, line: 596, type: !1445)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!1446 = !DILocalVariable(name: "len", scope: !1434, file: !3, line: 597, type: !24)
!1447 = !DILocalVariable(name: "maxlen", scope: !1434, file: !3, line: 597, type: !10)
!1448 = !DILocalVariable(name: "minlen", scope: !1434, file: !3, line: 599, type: !10)
!1449 = !DILocalVariable(name: "res", scope: !1434, file: !3, line: 600, type: !22)
!1450 = !DILocalVariable(name: "i", scope: !1451, file: !3, line: 639, type: !10)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 638, column: 40)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 638, column: 13)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 627, column: 35)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 627, column: 5)
!1455 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 627, column: 5)
!1456 = !DILocalVariable(name: "output", scope: !1457, file: !3, line: 659, type: !23)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 657, column: 17)
!1458 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 657, column: 9)
!1459 = !DILocalVariable(name: "byte", scope: !1457, file: !3, line: 659, type: !23)
!1460 = !DILocalVariable(name: "i", scope: !1457, file: !3, line: 660, type: !10)
!1461 = !DILocalVariable(name: "lp", scope: !1462, file: !3, line: 670, type: !1464)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 669, column: 65)
!1463 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 669, column: 13)
!1464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 1024, elements: !1465)
!1465 = !{!1466}
!1466 = !DISubrange(count: 16)
!1467 = !DILocalVariable(name: "lres", scope: !1462, file: !3, line: 671, type: !24)
!1468 = !DILocation(line: 591, column: 27, scope: !1434)
!1469 = !DILocation(line: 592, column: 23, scope: !1434)
!1470 = !DILocation(line: 592, column: 20, scope: !1434)
!1471 = !DILocation(line: 592, column: 32, scope: !1434)
!1472 = !DILocation(line: 592, column: 11, scope: !1434)
!1473 = !DILocation(line: 593, column: 27, scope: !1434)
!1474 = !DILocation(line: 593, column: 15, scope: !1434)
!1475 = !DILocation(line: 597, column: 25, scope: !1434)
!1476 = !DILocation(line: 599, column: 19, scope: !1434)
!1477 = !DILocation(line: 600, column: 20, scope: !1434)
!1478 = !DILocation(line: 603, column: 10, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 603, column: 9)
!1480 = !DILocation(line: 603, column: 27, scope: !1479)
!1481 = !DILocation(line: 603, column: 52, scope: !1479)
!1482 = !DILocation(line: 603, column: 9, scope: !1434)
!1483 = !DILocation(line: 605, column: 31, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 605, column: 13)
!1485 = !DILocation(line: 605, column: 56, scope: !1484)
!1486 = !DILocation(line: 605, column: 13, scope: !1479)
!1487 = !DILocation(line: 607, column: 31, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 607, column: 13)
!1489 = !DILocation(line: 607, column: 56, scope: !1488)
!1490 = !DILocation(line: 607, column: 13, scope: !1484)
!1491 = !DILocation(line: 609, column: 31, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 609, column: 13)
!1493 = !DILocation(line: 609, column: 56, scope: !1492)
!1494 = !DILocation(line: 609, column: 13, scope: !1488)
!1495 = !DILocation(line: 612, column: 27, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 611, column: 10)
!1497 = !{!1380, !964, i64 128}
!1498 = !DILocation(line: 612, column: 9, scope: !1496)
!1499 = !DILocation(line: 613, column: 9, scope: !1496)
!1500 = !DILocation(line: 594, column: 19, scope: !1434)
!1501 = !DILocation(line: 617, column: 31, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 617, column: 9)
!1503 = !{!1099, !119, i64 64}
!1504 = !DILocation(line: 617, column: 36, scope: !1502)
!1505 = !DILocation(line: 617, column: 9, scope: !1434)
!1506 = !DILocation(line: 618, column: 9, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 617, column: 42)
!1508 = !DILocation(line: 619, column: 9, scope: !1507)
!1509 = !DILocation(line: 623, column: 18, scope: !1434)
!1510 = !DILocation(line: 623, column: 23, scope: !1434)
!1511 = !DILocation(line: 623, column: 15, scope: !1434)
!1512 = !DILocation(line: 594, column: 26, scope: !1434)
!1513 = !DILocation(line: 624, column: 42, scope: !1434)
!1514 = !DILocation(line: 624, column: 11, scope: !1434)
!1515 = !DILocation(line: 596, column: 21, scope: !1434)
!1516 = !DILocation(line: 625, column: 11, scope: !1434)
!1517 = !DILocation(line: 597, column: 20, scope: !1434)
!1518 = !DILocation(line: 626, column: 15, scope: !1434)
!1519 = !DILocation(line: 595, column: 12, scope: !1434)
!1520 = !DILocation(line: 594, column: 23, scope: !1434)
!1521 = !DILocation(line: 627, column: 19, scope: !1454)
!1522 = !DILocation(line: 627, column: 5, scope: !1455)
!1523 = !DILocation(line: 628, column: 30, scope: !1453)
!1524 = !DILocation(line: 628, column: 36, scope: !1453)
!1525 = !DILocation(line: 628, column: 42, scope: !1453)
!1526 = !DILocation(line: 628, column: 33, scope: !1453)
!1527 = !DILocation(line: 628, column: 13, scope: !1453)
!1528 = !DILocation(line: 593, column: 11, scope: !1434)
!1529 = !DILocation(line: 630, column: 15, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 630, column: 13)
!1531 = !DILocation(line: 630, column: 13, scope: !1453)
!1532 = !DILocation(line: 631, column: 13, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 630, column: 24)
!1534 = !DILocation(line: 631, column: 24, scope: !1533)
!1535 = !DILocation(line: 632, column: 13, scope: !1533)
!1536 = !DILocation(line: 632, column: 20, scope: !1533)
!1537 = !DILocation(line: 633, column: 13, scope: !1533)
!1538 = !DILocation(line: 633, column: 20, scope: !1533)
!1539 = !DILocation(line: 635, column: 13, scope: !1533)
!1540 = !DILocation(line: 638, column: 13, scope: !1452)
!1541 = !DILocation(line: 638, column: 13, scope: !1453)
!1542 = !DILocation(line: 639, column: 27, scope: !1451)
!1543 = !DILocation(line: 640, column: 27, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 640, column: 13)
!1545 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 640, column: 13)
!1546 = !DILocation(line: 640, column: 13, scope: !1545)
!1547 = !DILocation(line: 641, column: 21, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 641, column: 21)
!1549 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 640, column: 37)
!1550 = !DILocation(line: 641, column: 21, scope: !1549)
!1551 = !DILocation(line: 642, column: 21, scope: !1548)
!1552 = !DILocation(line: 640, column: 33, scope: !1544)
!1553 = distinct !{!1553, !1546, !1554}
!1554 = !DILocation(line: 643, column: 13, scope: !1545)
!1555 = !DILocation(line: 644, column: 13, scope: !1451)
!1556 = !DILocation(line: 645, column: 13, scope: !1451)
!1557 = !DILocation(line: 646, column: 13, scope: !1451)
!1558 = !DILocation(line: 649, column: 22, scope: !1453)
!1559 = !DILocation(line: 649, column: 9, scope: !1453)
!1560 = !DILocation(line: 649, column: 20, scope: !1453)
!1561 = !DILocation(line: 650, column: 30, scope: !1453)
!1562 = !DILocation(line: 650, column: 9, scope: !1453)
!1563 = !DILocation(line: 650, column: 16, scope: !1453)
!1564 = !DILocation(line: 651, column: 25, scope: !1453)
!1565 = !DILocation(line: 651, column: 37, scope: !1453)
!1566 = !DILocation(line: 87, column: 39, scope: !967, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 651, column: 18, scope: !1453)
!1568 = !DILocation(line: 88, column: 27, scope: !967, inlinedAt: !1567)
!1569 = !DILocation(line: 88, column: 19, scope: !967, inlinedAt: !1567)
!1570 = !DILocation(line: 89, column: 5, scope: !967, inlinedAt: !1567)
!1571 = !DILocation(line: 91, column: 20, scope: !981, inlinedAt: !1567)
!1572 = !DILocation(line: 91, column: 13, scope: !981, inlinedAt: !1567)
!1573 = !DILocation(line: 93, column: 20, scope: !981, inlinedAt: !1567)
!1574 = !DILocation(line: 93, column: 34, scope: !981, inlinedAt: !1567)
!1575 = !DILocation(line: 93, column: 13, scope: !981, inlinedAt: !1567)
!1576 = !DILocation(line: 95, column: 20, scope: !981, inlinedAt: !1567)
!1577 = !DILocation(line: 95, column: 35, scope: !981, inlinedAt: !1567)
!1578 = !DILocation(line: 95, column: 13, scope: !981, inlinedAt: !1567)
!1579 = !DILocation(line: 97, column: 20, scope: !981, inlinedAt: !1567)
!1580 = !DILocation(line: 97, column: 35, scope: !981, inlinedAt: !1567)
!1581 = !DILocation(line: 97, column: 13, scope: !981, inlinedAt: !1567)
!1582 = !DILocation(line: 99, column: 20, scope: !981, inlinedAt: !1567)
!1583 = !DILocation(line: 99, column: 35, scope: !981, inlinedAt: !1567)
!1584 = !DILocation(line: 99, column: 13, scope: !981, inlinedAt: !1567)
!1585 = !DILocation(line: 0, scope: !981, inlinedAt: !1567)
!1586 = !DILocation(line: 651, column: 9, scope: !1453)
!1587 = !DILocation(line: 651, column: 16, scope: !1453)
!1588 = !DILocation(line: 652, column: 20, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 652, column: 13)
!1590 = !DILocation(line: 652, column: 13, scope: !1453)
!1591 = !DILocation(line: 653, column: 15, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 653, column: 13)
!1593 = !DILocation(line: 653, column: 30, scope: !1592)
!1594 = !DILocation(line: 653, column: 20, scope: !1592)
!1595 = !DILocation(line: 0, scope: !1589)
!1596 = !DILocation(line: 0, scope: !1434)
!1597 = !DILocation(line: 627, column: 31, scope: !1454)
!1598 = distinct !{!1598, !1522, !1599}
!1599 = !DILocation(line: 654, column: 5, scope: !1455)
!1600 = !DILocation(line: 657, column: 9, scope: !1458)
!1601 = !DILocation(line: 657, column: 9, scope: !1434)
!1602 = !DILocation(line: 658, column: 32, scope: !1457)
!1603 = !DILocation(line: 669, column: 20, scope: !1463)
!1604 = !DILocation(line: 669, column: 58, scope: !1463)
!1605 = !DILocation(line: 669, column: 47, scope: !1463)
!1606 = !DILocation(line: 670, column: 13, scope: !1462)
!1607 = !DILocation(line: 670, column: 28, scope: !1462)
!1608 = !DILocation(line: 671, column: 35, scope: !1462)
!1609 = !DILocation(line: 671, column: 28, scope: !1462)
!1610 = !DILocation(line: 674, column: 13, scope: !1462)
!1611 = !DILocation(line: 675, column: 24, scope: !1462)
!1612 = !DILocation(line: 675, column: 13, scope: !1462)
!1613 = !DILocation(line: 678, column: 17, scope: !1462)
!1614 = !DILocation(line: 705, column: 17, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 704, column: 41)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 704, column: 24)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 691, column: 24)
!1618 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 678, column: 17)
!1619 = !DILocation(line: 692, column: 17, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 691, column: 40)
!1621 = !DILocation(line: 679, column: 17, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 678, column: 34)
!1623 = !DILocation(line: 660, column: 23, scope: !1457)
!1624 = !DILocation(line: 680, column: 21, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 680, column: 21)
!1626 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 679, column: 58)
!1627 = !DILocation(line: 681, column: 33, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 680, column: 51)
!1629 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 680, column: 21)
!1630 = !DILocation(line: 682, column: 33, scope: !1628)
!1631 = !DILocation(line: 683, column: 33, scope: !1628)
!1632 = !DILocation(line: 684, column: 33, scope: !1628)
!1633 = !DILocation(line: 681, column: 36, scope: !1628)
!1634 = !DILocation(line: 682, column: 36, scope: !1628)
!1635 = !DILocation(line: 683, column: 36, scope: !1628)
!1636 = !DILocation(line: 684, column: 36, scope: !1628)
!1637 = !DILocation(line: 685, column: 30, scope: !1628)
!1638 = !DILocation(line: 680, column: 47, scope: !1629)
!1639 = !DILocation(line: 680, column: 35, scope: !1629)
!1640 = distinct !{!1640, !1624, !1641}
!1641 = !DILocation(line: 686, column: 21, scope: !1625)
!1642 = !DILocation(line: 687, column: 25, scope: !1626)
!1643 = !DILocation(line: 689, column: 28, scope: !1626)
!1644 = !DILocation(line: 679, column: 30, scope: !1622)
!1645 = distinct !{!1645, !1621, !1646}
!1646 = !DILocation(line: 690, column: 17, scope: !1622)
!1647 = !DILocation(line: 693, column: 21, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 693, column: 21)
!1649 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 692, column: 58)
!1650 = !DILocation(line: 694, column: 33, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 693, column: 51)
!1652 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 693, column: 21)
!1653 = !DILocation(line: 695, column: 33, scope: !1651)
!1654 = !DILocation(line: 696, column: 33, scope: !1651)
!1655 = !DILocation(line: 697, column: 33, scope: !1651)
!1656 = !DILocation(line: 694, column: 36, scope: !1651)
!1657 = !DILocation(line: 695, column: 36, scope: !1651)
!1658 = !DILocation(line: 696, column: 36, scope: !1651)
!1659 = !DILocation(line: 697, column: 36, scope: !1651)
!1660 = !DILocation(line: 698, column: 30, scope: !1651)
!1661 = !DILocation(line: 693, column: 47, scope: !1652)
!1662 = !DILocation(line: 693, column: 35, scope: !1652)
!1663 = distinct !{!1663, !1647, !1664}
!1664 = !DILocation(line: 699, column: 21, scope: !1648)
!1665 = !DILocation(line: 700, column: 25, scope: !1649)
!1666 = !DILocation(line: 702, column: 28, scope: !1649)
!1667 = !DILocation(line: 692, column: 30, scope: !1620)
!1668 = distinct !{!1668, !1619, !1669}
!1669 = !DILocation(line: 703, column: 17, scope: !1620)
!1670 = !DILocation(line: 706, column: 21, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 706, column: 21)
!1672 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 705, column: 58)
!1673 = !DILocation(line: 707, column: 33, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 706, column: 51)
!1675 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 706, column: 21)
!1676 = !DILocation(line: 708, column: 33, scope: !1674)
!1677 = !DILocation(line: 709, column: 33, scope: !1674)
!1678 = !DILocation(line: 710, column: 33, scope: !1674)
!1679 = !DILocation(line: 707, column: 36, scope: !1674)
!1680 = !DILocation(line: 708, column: 36, scope: !1674)
!1681 = !DILocation(line: 709, column: 36, scope: !1674)
!1682 = !DILocation(line: 710, column: 36, scope: !1674)
!1683 = !DILocation(line: 711, column: 30, scope: !1674)
!1684 = !DILocation(line: 706, column: 47, scope: !1675)
!1685 = !DILocation(line: 706, column: 35, scope: !1675)
!1686 = distinct !{!1686, !1670, !1687}
!1687 = !DILocation(line: 712, column: 21, scope: !1671)
!1688 = !DILocation(line: 713, column: 25, scope: !1672)
!1689 = !DILocation(line: 715, column: 28, scope: !1672)
!1690 = !DILocation(line: 705, column: 30, scope: !1615)
!1691 = distinct !{!1691, !1614, !1692}
!1692 = !DILocation(line: 716, column: 17, scope: !1615)
!1693 = !DILocation(line: 717, column: 24, scope: !1616)
!1694 = !DILocation(line: 719, column: 32, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 718, column: 58)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 717, column: 41)
!1697 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 717, column: 24)
!1698 = !DILocation(line: 719, column: 31, scope: !1695)
!1699 = !DILocation(line: 719, column: 29, scope: !1695)
!1700 = !DILocation(line: 721, column: 32, scope: !1695)
!1701 = !DILocation(line: 721, column: 31, scope: !1695)
!1702 = !DILocation(line: 721, column: 29, scope: !1695)
!1703 = !DILocation(line: 723, column: 25, scope: !1695)
!1704 = !DILocation(line: 725, column: 28, scope: !1695)
!1705 = !DILocation(line: 718, column: 17, scope: !1696)
!1706 = !DILocation(line: 0, scope: !1695)
!1707 = !DILocation(line: 718, column: 30, scope: !1696)
!1708 = !DILocation(line: 728, column: 9, scope: !1463)
!1709 = !DILocation(line: 0, scope: !1457)
!1710 = !DILocation(line: 728, column: 9, scope: !1462)
!1711 = !DILocation(line: 667, column: 11, scope: !1457)
!1712 = !DILocation(line: 732, column: 18, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 732, column: 9)
!1714 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 732, column: 9)
!1715 = !DILocation(line: 732, column: 9, scope: !1714)
!1716 = !DILocation(line: 733, column: 23, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 732, column: 33)
!1718 = !DILocation(line: 733, column: 30, scope: !1717)
!1719 = !DILocation(line: 733, column: 22, scope: !1717)
!1720 = !DILocation(line: 733, column: 42, scope: !1717)
!1721 = !DILocation(line: 659, column: 23, scope: !1457)
!1722 = !DILocation(line: 734, column: 17, scope: !1717)
!1723 = !DILocation(line: 735, column: 13, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 735, column: 13)
!1725 = !DILocation(line: 736, column: 25, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 735, column: 43)
!1727 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 735, column: 13)
!1728 = !DILocation(line: 736, column: 32, scope: !1726)
!1729 = !DILocation(line: 736, column: 24, scope: !1726)
!1730 = !DILocation(line: 736, column: 44, scope: !1726)
!1731 = !DILocation(line: 659, column: 31, scope: !1457)
!1732 = !DILocation(line: 737, column: 17, scope: !1726)
!1733 = !DILocation(line: 738, column: 40, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 737, column: 28)
!1735 = !DILocation(line: 738, column: 49, scope: !1734)
!1736 = !DILocation(line: 739, column: 40, scope: !1734)
!1737 = !DILocation(line: 739, column: 49, scope: !1734)
!1738 = !DILocation(line: 740, column: 40, scope: !1734)
!1739 = !DILocation(line: 740, column: 49, scope: !1734)
!1740 = !DILocation(line: 0, scope: !1734)
!1741 = !DILocation(line: 735, column: 39, scope: !1727)
!1742 = !DILocation(line: 735, column: 27, scope: !1727)
!1743 = distinct !{!1743, !1723, !1744}
!1744 = !DILocation(line: 742, column: 13, scope: !1724)
!1745 = !DILocation(line: 734, column: 41, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 734, column: 17)
!1747 = !DILocation(line: 743, column: 13, scope: !1717)
!1748 = !DILocation(line: 743, column: 20, scope: !1717)
!1749 = !DILocation(line: 732, column: 29, scope: !1713)
!1750 = distinct !{!1750, !1715, !1751}
!1751 = !DILocation(line: 744, column: 9, scope: !1714)
!1752 = !DILocation(line: 746, column: 5, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 746, column: 5)
!1754 = !DILocation(line: 747, column: 13, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 747, column: 13)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !3, line: 746, column: 35)
!1757 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 746, column: 5)
!1758 = !DILocation(line: 747, column: 13, scope: !1756)
!1759 = !DILocation(line: 748, column: 13, scope: !1755)
!1760 = !DILocation(line: 746, column: 31, scope: !1757)
!1761 = !DILocation(line: 746, column: 19, scope: !1757)
!1762 = distinct !{!1762, !1752, !1763}
!1763 = !DILocation(line: 749, column: 5, scope: !1753)
!1764 = !DILocation(line: 750, column: 5, scope: !1434)
!1765 = !DILocation(line: 751, column: 5, scope: !1434)
!1766 = !DILocation(line: 752, column: 5, scope: !1434)
!1767 = !DILocation(line: 755, column: 9, scope: !1434)
!1768 = !DILocation(line: 756, column: 13, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 755, column: 17)
!1770 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 755, column: 9)
!1771 = !DILocation(line: 757, column: 19, scope: !1769)
!1772 = !DILocation(line: 757, column: 9, scope: !1769)
!1773 = !DILocation(line: 758, column: 62, scope: !1769)
!1774 = !DILocation(line: 758, column: 66, scope: !1769)
!1775 = !DILocation(line: 758, column: 9, scope: !1769)
!1776 = !DILocation(line: 759, column: 9, scope: !1769)
!1777 = !DILocation(line: 760, column: 5, scope: !1769)
!1778 = !DILocation(line: 760, column: 28, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 760, column: 16)
!1780 = !DILocation(line: 760, column: 16, scope: !1779)
!1781 = !DILocation(line: 760, column: 16, scope: !1770)
!1782 = !DILocation(line: 761, column: 30, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 760, column: 43)
!1784 = !DILocation(line: 761, column: 9, scope: !1783)
!1785 = !DILocation(line: 762, column: 63, scope: !1783)
!1786 = !DILocation(line: 762, column: 67, scope: !1783)
!1787 = !DILocation(line: 762, column: 9, scope: !1783)
!1788 = !DILocation(line: 763, column: 5, scope: !1783)
!1789 = !DILocation(line: 764, column: 17, scope: !1434)
!1790 = !DILocation(line: 765, column: 5, scope: !1434)
!1791 = !DILocation(line: 766, column: 1, scope: !1434)
!1792 = distinct !DISubprogram(name: "bitcountCommand", scope: !3, file: !3, line: 769, type: !843, isLocal: false, isDefinition: true, scopeLine: 769, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1793)
!1793 = !{!1794, !1795, !1796, !1797, !1798, !1799, !1800, !1804}
!1794 = !DILocalVariable(name: "c", arg: 1, scope: !1792, file: !3, line: 769, type: !707)
!1795 = !DILocalVariable(name: "o", scope: !1792, file: !3, line: 770, type: !817)
!1796 = !DILocalVariable(name: "start", scope: !1792, file: !3, line: 771, type: !12)
!1797 = !DILocalVariable(name: "end", scope: !1792, file: !3, line: 771, type: !12)
!1798 = !DILocalVariable(name: "strlen", scope: !1792, file: !3, line: 771, type: !12)
!1799 = !DILocalVariable(name: "p", scope: !1792, file: !3, line: 772, type: !22)
!1800 = !DILocalVariable(name: "llbuf", scope: !1792, file: !3, line: 773, type: !1801)
!1801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 168, elements: !1802)
!1802 = !{!1803}
!1803 = !DISubrange(count: 21)
!1804 = !DILocalVariable(name: "bytes", scope: !1805, file: !3, line: 811, type: !12)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 810, column: 12)
!1806 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 808, column: 9)
!1807 = !DILocation(line: 769, column: 30, scope: !1792)
!1808 = !DILocation(line: 771, column: 5, scope: !1792)
!1809 = !DILocation(line: 773, column: 5, scope: !1792)
!1810 = !DILocation(line: 773, column: 10, scope: !1792)
!1811 = !DILocation(line: 776, column: 40, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 776, column: 9)
!1813 = !DILocation(line: 776, column: 37, scope: !1812)
!1814 = !DILocation(line: 776, column: 55, scope: !1812)
!1815 = !DILocation(line: 776, column: 14, scope: !1812)
!1816 = !DILocation(line: 770, column: 11, scope: !1792)
!1817 = !DILocation(line: 776, column: 63, scope: !1812)
!1818 = !DILocation(line: 776, column: 71, scope: !1812)
!1819 = !DILocation(line: 777, column: 9, scope: !1812)
!1820 = !DILocation(line: 776, column: 9, scope: !1792)
!1821 = !DILocation(line: 771, column: 22, scope: !1792)
!1822 = !DILocation(line: 778, column: 9, scope: !1792)
!1823 = !DILocation(line: 772, column: 20, scope: !1792)
!1824 = !DILocation(line: 781, column: 12, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 781, column: 9)
!1826 = !DILocation(line: 781, column: 9, scope: !1792)
!1827 = !DILocation(line: 782, column: 43, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 782, column: 13)
!1829 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 781, column: 23)
!1830 = !DILocation(line: 782, column: 40, scope: !1828)
!1831 = !DILocation(line: 771, column: 10, scope: !1792)
!1832 = !DILocation(line: 782, column: 13, scope: !1828)
!1833 = !DILocation(line: 782, column: 64, scope: !1828)
!1834 = !DILocation(line: 782, column: 13, scope: !1829)
!1835 = !DILocation(line: 784, column: 43, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 784, column: 13)
!1837 = !DILocation(line: 784, column: 40, scope: !1836)
!1838 = !DILocation(line: 771, column: 17, scope: !1792)
!1839 = !DILocation(line: 784, column: 13, scope: !1836)
!1840 = !DILocation(line: 784, column: 62, scope: !1836)
!1841 = !DILocation(line: 784, column: 13, scope: !1829)
!1842 = !DILocation(line: 787, column: 13, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 787, column: 13)
!1844 = !DILocation(line: 787, column: 26, scope: !1843)
!1845 = !DILocation(line: 787, column: 23, scope: !1843)
!1846 = !DILocation(line: 787, column: 43, scope: !1843)
!1847 = !DILocation(line: 788, column: 31, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 787, column: 50)
!1849 = !DILocation(line: 788, column: 13, scope: !1848)
!1850 = !DILocation(line: 789, column: 13, scope: !1848)
!1851 = !DILocation(line: 791, column: 19, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 791, column: 13)
!1853 = !DILocation(line: 791, column: 13, scope: !1829)
!1854 = !DILocation(line: 791, column: 32, scope: !1852)
!1855 = !DILocation(line: 791, column: 38, scope: !1852)
!1856 = !DILocation(line: 791, column: 30, scope: !1852)
!1857 = !DILocation(line: 791, column: 24, scope: !1852)
!1858 = !DILocation(line: 792, column: 17, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 792, column: 13)
!1860 = !DILocation(line: 792, column: 13, scope: !1829)
!1861 = !DILocation(line: 792, column: 28, scope: !1859)
!1862 = !DILocation(line: 792, column: 34, scope: !1859)
!1863 = !DILocation(line: 792, column: 26, scope: !1859)
!1864 = !DILocation(line: 792, column: 22, scope: !1859)
!1865 = !DILocation(line: 793, column: 19, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 793, column: 13)
!1867 = !DILocation(line: 793, column: 13, scope: !1829)
!1868 = !DILocation(line: 793, column: 30, scope: !1866)
!1869 = !DILocation(line: 793, column: 24, scope: !1866)
!1870 = !DILocation(line: 794, column: 17, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 794, column: 13)
!1872 = !DILocation(line: 794, column: 13, scope: !1829)
!1873 = !DILocation(line: 794, column: 26, scope: !1871)
!1874 = !DILocation(line: 794, column: 22, scope: !1871)
!1875 = !DILocation(line: 795, column: 13, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 795, column: 13)
!1877 = !DILocation(line: 795, column: 20, scope: !1876)
!1878 = !DILocation(line: 795, column: 17, scope: !1876)
!1879 = !DILocation(line: 795, column: 13, scope: !1829)
!1880 = !DILocation(line: 795, column: 40, scope: !1876)
!1881 = !DILocation(line: 795, column: 32, scope: !1876)
!1882 = !DILocation(line: 795, column: 28, scope: !1876)
!1883 = !DILocation(line: 798, column: 15, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !3, line: 796, column: 30)
!1885 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 796, column: 16)
!1886 = !DILocation(line: 799, column: 15, scope: !1884)
!1887 = !DILocation(line: 799, column: 21, scope: !1884)
!1888 = !DILocation(line: 799, column: 13, scope: !1884)
!1889 = !DILocation(line: 802, column: 27, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1885, file: !3, line: 800, column: 12)
!1891 = !DILocation(line: 802, column: 9, scope: !1890)
!1892 = !DILocation(line: 803, column: 9, scope: !1890)
!1893 = !DILocation(line: 808, column: 17, scope: !1806)
!1894 = !DILocation(line: 808, column: 9, scope: !1806)
!1895 = !DILocation(line: 808, column: 15, scope: !1806)
!1896 = !DILocation(line: 808, column: 9, scope: !1792)
!1897 = !DILocation(line: 809, column: 27, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 808, column: 22)
!1899 = !DILocation(line: 809, column: 9, scope: !1898)
!1900 = !DILocation(line: 810, column: 5, scope: !1898)
!1901 = !DILocation(line: 811, column: 25, scope: !1805)
!1902 = !DILocation(line: 811, column: 31, scope: !1805)
!1903 = !DILocation(line: 811, column: 14, scope: !1805)
!1904 = !DILocation(line: 813, column: 43, scope: !1805)
!1905 = !DILocation(line: 813, column: 28, scope: !1805)
!1906 = !DILocation(line: 813, column: 9, scope: !1805)
!1907 = !DILocation(line: 815, column: 1, scope: !1792)
!1908 = distinct !DISubprogram(name: "bitposCommand", scope: !3, file: !3, line: 818, type: !843, isLocal: false, isDefinition: true, scopeLine: 818, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1909)
!1909 = !{!1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1922}
!1910 = !DILocalVariable(name: "c", arg: 1, scope: !1908, file: !3, line: 818, type: !707)
!1911 = !DILocalVariable(name: "o", scope: !1908, file: !3, line: 819, type: !817)
!1912 = !DILocalVariable(name: "bit", scope: !1908, file: !3, line: 820, type: !12)
!1913 = !DILocalVariable(name: "start", scope: !1908, file: !3, line: 820, type: !12)
!1914 = !DILocalVariable(name: "end", scope: !1908, file: !3, line: 820, type: !12)
!1915 = !DILocalVariable(name: "strlen", scope: !1908, file: !3, line: 820, type: !12)
!1916 = !DILocalVariable(name: "p", scope: !1908, file: !3, line: 821, type: !22)
!1917 = !DILocalVariable(name: "llbuf", scope: !1908, file: !3, line: 822, type: !1801)
!1918 = !DILocalVariable(name: "end_given", scope: !1908, file: !3, line: 823, type: !242)
!1919 = !DILocalVariable(name: "bytes", scope: !1920, file: !3, line: 876, type: !12)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 875, column: 12)
!1921 = distinct !DILexicalBlock(scope: !1908, file: !3, line: 873, column: 9)
!1922 = !DILocalVariable(name: "pos", scope: !1920, file: !3, line: 877, type: !12)
!1923 = !DILocation(line: 818, column: 28, scope: !1908)
!1924 = !DILocation(line: 820, column: 5, scope: !1908)
!1925 = !DILocation(line: 822, column: 5, scope: !1908)
!1926 = !DILocation(line: 822, column: 10, scope: !1908)
!1927 = !DILocation(line: 823, column: 9, scope: !1908)
!1928 = !DILocation(line: 827, column: 39, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1908, file: !3, line: 827, column: 9)
!1930 = !DILocation(line: 827, column: 36, scope: !1929)
!1931 = !DILocation(line: 820, column: 10, scope: !1908)
!1932 = !DILocation(line: 827, column: 9, scope: !1929)
!1933 = !DILocation(line: 827, column: 58, scope: !1929)
!1934 = !DILocation(line: 827, column: 9, scope: !1908)
!1935 = !DILocation(line: 829, column: 9, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1908, file: !3, line: 829, column: 9)
!1937 = !DILocation(line: 829, column: 18, scope: !1936)
!1938 = !DILocation(line: 830, column: 9, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 829, column: 31)
!1940 = !DILocation(line: 831, column: 9, scope: !1939)
!1941 = !DILocation(line: 837, column: 31, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1908, file: !3, line: 837, column: 9)
!1943 = !DILocation(line: 837, column: 37, scope: !1942)
!1944 = !DILocation(line: 837, column: 34, scope: !1942)
!1945 = !DILocation(line: 837, column: 14, scope: !1942)
!1946 = !DILocation(line: 819, column: 11, scope: !1908)
!1947 = !DILocation(line: 837, column: 47, scope: !1942)
!1948 = !DILocation(line: 837, column: 9, scope: !1908)
!1949 = !DILocation(line: 838, column: 29, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1942, file: !3, line: 837, column: 56)
!1951 = !DILocation(line: 838, column: 9, scope: !1950)
!1952 = !DILocation(line: 839, column: 9, scope: !1950)
!1953 = !DILocation(line: 841, column: 9, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1908, file: !3, line: 841, column: 9)
!1955 = !DILocation(line: 841, column: 9, scope: !1908)
!1956 = !DILocation(line: 820, column: 27, scope: !1908)
!1957 = !DILocation(line: 842, column: 9, scope: !1908)
!1958 = !DILocation(line: 821, column: 20, scope: !1908)
!1959 = !DILocation(line: 845, column: 12, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1908, file: !3, line: 845, column: 9)
!1961 = !DILocation(line: 845, column: 22, scope: !1960)
!1962 = !DILocation(line: 846, column: 43, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 846, column: 13)
!1964 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 845, column: 39)
!1965 = !DILocation(line: 846, column: 40, scope: !1963)
!1966 = !DILocation(line: 820, column: 15, scope: !1908)
!1967 = !DILocation(line: 846, column: 13, scope: !1963)
!1968 = !DILocation(line: 846, column: 64, scope: !1963)
!1969 = !DILocation(line: 846, column: 13, scope: !1964)
!1970 = !DILocation(line: 848, column: 16, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 848, column: 13)
!1972 = !DILocation(line: 848, column: 21, scope: !1971)
!1973 = !DILocation(line: 848, column: 13, scope: !1964)
!1974 = !DILocation(line: 849, column: 47, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 849, column: 17)
!1976 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 848, column: 27)
!1977 = !DILocation(line: 849, column: 44, scope: !1975)
!1978 = !DILocation(line: 820, column: 22, scope: !1908)
!1979 = !DILocation(line: 849, column: 17, scope: !1975)
!1980 = !DILocation(line: 849, column: 66, scope: !1975)
!1981 = !DILocation(line: 849, column: 17, scope: !1976)
!1982 = !DILocation(line: 853, column: 19, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 852, column: 16)
!1984 = !DILocation(line: 853, column: 25, scope: !1983)
!1985 = !DILocation(line: 853, column: 17, scope: !1983)
!1986 = !DILocation(line: 0, scope: !1908)
!1987 = !DILocation(line: 856, column: 13, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 856, column: 13)
!1989 = !DILocation(line: 856, column: 19, scope: !1988)
!1990 = !DILocation(line: 856, column: 13, scope: !1964)
!1991 = !DILocation(line: 856, column: 32, scope: !1988)
!1992 = !DILocation(line: 856, column: 38, scope: !1988)
!1993 = !DILocation(line: 856, column: 30, scope: !1988)
!1994 = !DILocation(line: 856, column: 24, scope: !1988)
!1995 = !DILocation(line: 857, column: 13, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 857, column: 13)
!1997 = !DILocation(line: 857, column: 17, scope: !1996)
!1998 = !DILocation(line: 857, column: 13, scope: !1964)
!1999 = !DILocation(line: 857, column: 28, scope: !1996)
!2000 = !DILocation(line: 857, column: 34, scope: !1996)
!2001 = !DILocation(line: 857, column: 26, scope: !1996)
!2002 = !DILocation(line: 857, column: 22, scope: !1996)
!2003 = !DILocation(line: 858, column: 19, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 858, column: 13)
!2005 = !DILocation(line: 858, column: 13, scope: !1964)
!2006 = !DILocation(line: 858, column: 30, scope: !2004)
!2007 = !DILocation(line: 858, column: 24, scope: !2004)
!2008 = !DILocation(line: 859, column: 17, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 859, column: 13)
!2010 = !DILocation(line: 859, column: 13, scope: !1964)
!2011 = !DILocation(line: 859, column: 26, scope: !2009)
!2012 = !DILocation(line: 859, column: 22, scope: !2009)
!2013 = !DILocation(line: 860, column: 13, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 860, column: 13)
!2015 = !DILocation(line: 860, column: 20, scope: !2014)
!2016 = !DILocation(line: 860, column: 17, scope: !2014)
!2017 = !DILocation(line: 860, column: 13, scope: !1964)
!2018 = !DILocation(line: 860, column: 40, scope: !2014)
!2019 = !DILocation(line: 860, column: 32, scope: !2014)
!2020 = !DILocation(line: 860, column: 28, scope: !2014)
!2021 = !DILocation(line: 863, column: 15, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 861, column: 30)
!2023 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 861, column: 16)
!2024 = !DILocation(line: 864, column: 15, scope: !2022)
!2025 = !DILocation(line: 864, column: 21, scope: !2022)
!2026 = !DILocation(line: 864, column: 13, scope: !2022)
!2027 = !DILocation(line: 867, column: 27, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 865, column: 12)
!2029 = !DILocation(line: 867, column: 9, scope: !2028)
!2030 = !DILocation(line: 868, column: 9, scope: !2028)
!2031 = !DILocation(line: 873, column: 17, scope: !1921)
!2032 = !DILocation(line: 873, column: 9, scope: !1921)
!2033 = !DILocation(line: 873, column: 15, scope: !1921)
!2034 = !DILocation(line: 873, column: 9, scope: !1908)
!2035 = !DILocation(line: 874, column: 9, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 873, column: 22)
!2037 = !DILocation(line: 875, column: 5, scope: !2036)
!2038 = !DILocation(line: 876, column: 25, scope: !1920)
!2039 = !DILocation(line: 876, column: 31, scope: !1920)
!2040 = !DILocation(line: 876, column: 14, scope: !1920)
!2041 = !DILocation(line: 877, column: 33, scope: !1920)
!2042 = !DILocation(line: 877, column: 46, scope: !1920)
!2043 = !DILocation(line: 877, column: 20, scope: !1920)
!2044 = !DILocation(line: 877, column: 14, scope: !1920)
!2045 = !DILocation(line: 886, column: 13, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 886, column: 13)
!2047 = !DILocation(line: 886, column: 26, scope: !2046)
!2048 = !DILocation(line: 886, column: 30, scope: !2046)
!2049 = !DILocation(line: 886, column: 23, scope: !2046)
!2050 = !DILocation(line: 886, column: 50, scope: !2046)
!2051 = !DILocation(line: 886, column: 42, scope: !2046)
!2052 = !DILocation(line: 887, column: 13, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 886, column: 54)
!2054 = !DILocation(line: 890, column: 17, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 890, column: 13)
!2056 = !DILocation(line: 890, column: 13, scope: !1920)
!2057 = !DILocation(line: 890, column: 31, scope: !2055)
!2058 = !DILocation(line: 890, column: 36, scope: !2055)
!2059 = !DILocation(line: 890, column: 28, scope: !2055)
!2060 = !DILocation(line: 890, column: 24, scope: !2055)
!2061 = !DILocation(line: 0, scope: !1920)
!2062 = !DILocation(line: 891, column: 9, scope: !1920)
!2063 = !DILocation(line: 893, column: 1, scope: !1908)
!2064 = distinct !DISubprogram(name: "bitfieldCommand", scope: !3, file: !3, line: 914, type: !843, isLocal: false, isDefinition: true, scopeLine: 914, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !2065)
!2065 = !{!2066, !2067, !2068, !2069, !2070, !2071, !2072, !2082, !2083, !2084, !2085, !2089, !2090, !2091, !2092, !2093, !2094, !2100, !2104, !2109, !2110, !2111, !2112, !2113, !2115, !2116, !2117, !2118, !2119, !2124, !2125, !2126, !2127, !2128, !2129, !2132}
!2066 = !DILocalVariable(name: "c", arg: 1, scope: !2064, file: !3, line: 914, type: !707)
!2067 = !DILocalVariable(name: "o", scope: !2064, file: !3, line: 915, type: !817)
!2068 = !DILocalVariable(name: "bitoffset", scope: !2064, file: !3, line: 916, type: !6)
!2069 = !DILocalVariable(name: "j", scope: !2064, file: !3, line: 917, type: !242)
!2070 = !DILocalVariable(name: "numops", scope: !2064, file: !3, line: 917, type: !242)
!2071 = !DILocalVariable(name: "changes", scope: !2064, file: !3, line: 917, type: !242)
!2072 = !DILocalVariable(name: "ops", scope: !2064, file: !3, line: 918, type: !2073)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitfieldOp", file: !3, line: 905, size: 256, elements: !2075)
!2075 = !{!2076, !2077, !2078, !2079, !2080, !2081}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2074, file: !3, line: 906, baseType: !25, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "i64", scope: !2074, file: !3, line: 907, baseType: !27, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !2074, file: !3, line: 908, baseType: !242, size: 32, offset: 128)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "owtype", scope: !2074, file: !3, line: 909, baseType: !242, size: 32, offset: 160)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2074, file: !3, line: 910, baseType: !242, size: 32, offset: 192)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !2074, file: !3, line: 911, baseType: !242, size: 32, offset: 224)
!2082 = !DILocalVariable(name: "owtype", scope: !2064, file: !3, line: 919, type: !242)
!2083 = !DILocalVariable(name: "readonly", scope: !2064, file: !3, line: 920, type: !242)
!2084 = !DILocalVariable(name: "highest_write_offset", scope: !2064, file: !3, line: 921, type: !6)
!2085 = !DILocalVariable(name: "remargs", scope: !2086, file: !3, line: 924, type: !242)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 923, column: 35)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 923, column: 5)
!2088 = distinct !DILexicalBlock(scope: !2064, file: !3, line: 923, column: 5)
!2089 = !DILocalVariable(name: "subcmd", scope: !2086, file: !3, line: 925, type: !828)
!2090 = !DILocalVariable(name: "opcode", scope: !2086, file: !3, line: 926, type: !242)
!2091 = !DILocalVariable(name: "i64", scope: !2086, file: !3, line: 927, type: !786)
!2092 = !DILocalVariable(name: "sign", scope: !2086, file: !3, line: 928, type: !242)
!2093 = !DILocalVariable(name: "bits", scope: !2086, file: !3, line: 929, type: !242)
!2094 = !DILocalVariable(name: "owtypename", scope: !2095, file: !3, line: 938, type: !828)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 937, column: 66)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 937, column: 18)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 935, column: 18)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 933, column: 18)
!2099 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 931, column: 13)
!2100 = !DILocalVariable(name: "thisop", scope: !2101, file: !3, line: 1015, type: !2073)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 1014, column: 34)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !3, line: 1014, column: 5)
!2103 = distinct !DILexicalBlock(scope: !2064, file: !3, line: 1014, column: 5)
!2104 = !DILocalVariable(name: "oldval", scope: !2105, file: !3, line: 1029, type: !27)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 1028, column: 31)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 1028, column: 17)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 1020, column: 9)
!2108 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 1018, column: 13)
!2109 = !DILocalVariable(name: "newval", scope: !2105, file: !3, line: 1029, type: !27)
!2110 = !DILocalVariable(name: "wrapped", scope: !2105, file: !3, line: 1029, type: !27)
!2111 = !DILocalVariable(name: "retval", scope: !2105, file: !3, line: 1029, type: !27)
!2112 = !DILocalVariable(name: "overflow", scope: !2105, file: !3, line: 1030, type: !242)
!2113 = !DILocalVariable(name: "oldval", scope: !2114, file: !3, line: 1059, type: !25)
!2114 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 1058, column: 20)
!2115 = !DILocalVariable(name: "newval", scope: !2114, file: !3, line: 1059, type: !25)
!2116 = !DILocalVariable(name: "wrapped", scope: !2114, file: !3, line: 1059, type: !25)
!2117 = !DILocalVariable(name: "retval", scope: !2114, file: !3, line: 1059, type: !25)
!2118 = !DILocalVariable(name: "overflow", scope: !2114, file: !3, line: 1060, type: !242)
!2119 = !DILocalVariable(name: "buf", scope: !2120, file: !3, line: 1091, type: !2121)
!2120 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 1089, column: 16)
!2121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 72, elements: !2122)
!2122 = !{!2123}
!2123 = !DISubrange(count: 9)
!2124 = !DILocalVariable(name: "strlen", scope: !2120, file: !3, line: 1092, type: !12)
!2125 = !DILocalVariable(name: "src", scope: !2120, file: !3, line: 1093, type: !22)
!2126 = !DILocalVariable(name: "llbuf", scope: !2120, file: !3, line: 1094, type: !1801)
!2127 = !DILocalVariable(name: "i", scope: !2120, file: !3, line: 1104, type: !242)
!2128 = !DILocalVariable(name: "byte", scope: !2120, file: !3, line: 1105, type: !6)
!2129 = !DILocalVariable(name: "val", scope: !2130, file: !3, line: 1114, type: !27)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 1113, column: 31)
!2131 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 1113, column: 17)
!2132 = !DILocalVariable(name: "val", scope: !2133, file: !3, line: 1118, type: !25)
!2133 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 1117, column: 20)
!2134 = !DILocation(line: 914, column: 30, scope: !2064)
!2135 = !DILocation(line: 916, column: 5, scope: !2064)
!2136 = !DILocation(line: 917, column: 12, scope: !2064)
!2137 = !DILocation(line: 917, column: 24, scope: !2064)
!2138 = !DILocation(line: 918, column: 24, scope: !2064)
!2139 = !DILocation(line: 919, column: 9, scope: !2064)
!2140 = !DILocation(line: 920, column: 9, scope: !2064)
!2141 = !DILocation(line: 921, column: 12, scope: !2064)
!2142 = !DILocation(line: 917, column: 9, scope: !2064)
!2143 = !DILocation(line: 923, column: 24, scope: !2087)
!2144 = !DILocation(line: 923, column: 19, scope: !2087)
!2145 = !DILocation(line: 923, column: 5, scope: !2088)
!2146 = !DILocation(line: 924, column: 32, scope: !2086)
!2147 = !DILocation(line: 924, column: 13, scope: !2086)
!2148 = !DILocation(line: 925, column: 27, scope: !2086)
!2149 = !DILocation(line: 925, column: 24, scope: !2086)
!2150 = !DILocation(line: 925, column: 36, scope: !2086)
!2151 = !DILocation(line: 925, column: 15, scope: !2086)
!2152 = !DILocation(line: 927, column: 9, scope: !2086)
!2153 = !DILocation(line: 927, column: 19, scope: !2086)
!2154 = !DILocation(line: 928, column: 13, scope: !2086)
!2155 = !DILocation(line: 929, column: 13, scope: !2086)
!2156 = !DILocation(line: 931, column: 14, scope: !2099)
!2157 = !DILocation(line: 931, column: 50, scope: !2099)
!2158 = !DILocation(line: 931, column: 39, scope: !2099)
!2159 = !DILocation(line: 933, column: 19, scope: !2098)
!2160 = !DILocation(line: 933, column: 55, scope: !2098)
!2161 = !DILocation(line: 933, column: 44, scope: !2098)
!2162 = !DILocation(line: 935, column: 19, scope: !2097)
!2163 = !DILocation(line: 935, column: 47, scope: !2097)
!2164 = !DILocation(line: 937, column: 19, scope: !2096)
!2165 = !DILocation(line: 937, column: 60, scope: !2096)
!2166 = !DILocation(line: 937, column: 49, scope: !2096)
!2167 = !DILocation(line: 938, column: 41, scope: !2095)
!2168 = !DILocation(line: 938, column: 32, scope: !2095)
!2169 = !DILocation(line: 938, column: 46, scope: !2095)
!2170 = !DILocation(line: 938, column: 19, scope: !2095)
!2171 = !DILocation(line: 940, column: 18, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 940, column: 17)
!2173 = !DILocation(line: 940, column: 17, scope: !2095)
!2174 = !DILocation(line: 942, column: 23, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2172, file: !3, line: 942, column: 22)
!2176 = !DILocation(line: 942, column: 22, scope: !2172)
!2177 = !DILocation(line: 944, column: 23, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 944, column: 22)
!2179 = !DILocation(line: 944, column: 22, scope: !2175)
!2180 = !DILocation(line: 947, column: 17, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 946, column: 18)
!2182 = !DILocation(line: 948, column: 17, scope: !2181)
!2183 = !DILocation(line: 949, column: 17, scope: !2181)
!2184 = !DILocation(line: 953, column: 31, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 952, column: 16)
!2186 = !DILocation(line: 953, column: 13, scope: !2185)
!2187 = !DILocation(line: 954, column: 13, scope: !2185)
!2188 = !DILocation(line: 955, column: 13, scope: !2185)
!2189 = !DILocation(line: 0, scope: !2097)
!2190 = !DILocation(line: 926, column: 13, scope: !2086)
!2191 = !DILocation(line: 959, column: 52, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 959, column: 13)
!2193 = !DILocation(line: 959, column: 43, scope: !2192)
!2194 = !DILocation(line: 447, column: 41, scope: !1034, inlinedAt: !2195)
!2195 = distinct !DILocation(line: 959, column: 13, scope: !2192)
!2196 = !DILocation(line: 447, column: 50, scope: !1034, inlinedAt: !2195)
!2197 = !DILocation(line: 448, column: 18, scope: !1034, inlinedAt: !2195)
!2198 = !DILocation(line: 448, column: 11, scope: !1034, inlinedAt: !2195)
!2199 = !DILocation(line: 450, column: 5, scope: !1034, inlinedAt: !2195)
!2200 = !DILocation(line: 452, column: 9, scope: !1053, inlinedAt: !2195)
!2201 = !DILocation(line: 452, column: 9, scope: !1034, inlinedAt: !2195)
!2202 = !DILocation(line: 457, column: 9, scope: !1056, inlinedAt: !2195)
!2203 = !DILocation(line: 458, column: 9, scope: !1056, inlinedAt: !2195)
!2204 = !DILocation(line: 461, column: 21, scope: !1062, inlinedAt: !2195)
!2205 = !DILocation(line: 461, column: 24, scope: !1062, inlinedAt: !2195)
!2206 = !DILocation(line: 450, column: 15, scope: !1034, inlinedAt: !2195)
!2207 = !DILocation(line: 461, column: 10, scope: !1062, inlinedAt: !2195)
!2208 = !DILocation(line: 461, column: 46, scope: !1062, inlinedAt: !2195)
!2209 = !DILocation(line: 462, column: 9, scope: !1062, inlinedAt: !2195)
!2210 = !DILocation(line: 462, column: 16, scope: !1062, inlinedAt: !2195)
!2211 = !DILocation(line: 461, column: 51, scope: !1062, inlinedAt: !2195)
!2212 = !DILocation(line: 463, column: 16, scope: !1062, inlinedAt: !2195)
!2213 = !DILocation(line: 463, column: 31, scope: !1062, inlinedAt: !2195)
!2214 = !DILocation(line: 463, column: 21, scope: !1062, inlinedAt: !2195)
!2215 = !DILocation(line: 464, column: 16, scope: !1062, inlinedAt: !2195)
!2216 = !DILocation(line: 464, column: 31, scope: !1062, inlinedAt: !2195)
!2217 = !DILocation(line: 464, column: 21, scope: !1062, inlinedAt: !2195)
!2218 = !DILocation(line: 466, column: 9, scope: !1078, inlinedAt: !2195)
!2219 = !DILocation(line: 467, column: 9, scope: !1078, inlinedAt: !2195)
!2220 = !DILocation(line: 471, column: 1, scope: !1034, inlinedAt: !2195)
!2221 = !DILocation(line: 960, column: 13, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 959, column: 78)
!2223 = !DILocation(line: 961, column: 13, scope: !2222)
!2224 = !DILocation(line: 469, column: 13, scope: !1034, inlinedAt: !2195)
!2225 = !DILocation(line: 964, column: 43, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 964, column: 13)
!2227 = !DILocation(line: 964, column: 49, scope: !2226)
!2228 = !DILocation(line: 964, column: 40, scope: !2226)
!2229 = !DILocation(line: 916, column: 12, scope: !2064)
!2230 = !DILocation(line: 964, column: 13, scope: !2226)
!2231 = !DILocation(line: 964, column: 72, scope: !2226)
!2232 = !DILocation(line: 964, column: 13, scope: !2086)
!2233 = !DILocation(line: 965, column: 13, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 964, column: 80)
!2235 = !DILocation(line: 966, column: 13, scope: !2234)
!2236 = !DILocation(line: 969, column: 20, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 969, column: 13)
!2238 = !DILocation(line: 0, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 971, column: 17)
!2240 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 969, column: 39)
!2241 = !DILocation(line: 969, column: 13, scope: !2086)
!2242 = !DILocation(line: 971, column: 52, scope: !2239)
!2243 = !DILocation(line: 971, column: 50, scope: !2239)
!2244 = !DILocation(line: 971, column: 57, scope: !2239)
!2245 = !DILocation(line: 971, column: 38, scope: !2239)
!2246 = !DILocation(line: 971, column: 17, scope: !2240)
!2247 = !DILocation(line: 974, column: 51, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 974, column: 17)
!2249 = !DILocation(line: 974, column: 57, scope: !2248)
!2250 = !DILocation(line: 974, column: 48, scope: !2248)
!2251 = !DILocation(line: 974, column: 17, scope: !2248)
!2252 = !DILocation(line: 974, column: 72, scope: !2248)
!2253 = !DILocation(line: 974, column: 17, scope: !2240)
!2254 = !DILocation(line: 975, column: 17, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 974, column: 80)
!2256 = !DILocation(line: 976, column: 17, scope: !2255)
!2257 = !DILocation(line: 0, scope: !2064)
!2258 = !DILocation(line: 981, column: 48, scope: !2086)
!2259 = !DILocation(line: 981, column: 41, scope: !2086)
!2260 = !DILocation(line: 981, column: 40, scope: !2086)
!2261 = !DILocation(line: 981, column: 15, scope: !2086)
!2262 = !DILocation(line: 982, column: 9, scope: !2086)
!2263 = !DILocation(line: 982, column: 21, scope: !2086)
!2264 = !DILocation(line: 982, column: 28, scope: !2086)
!2265 = !{!2266, !291, i64 0}
!2266 = !{!"bitfieldOp", !291, i64 0, !291, i64 8, !119, i64 16, !119, i64 20, !119, i64 24, !119, i64 28}
!2267 = !DILocation(line: 983, column: 27, scope: !2086)
!2268 = !DILocation(line: 983, column: 21, scope: !2086)
!2269 = !DILocation(line: 983, column: 25, scope: !2086)
!2270 = !{!2266, !291, i64 8}
!2271 = !DILocation(line: 984, column: 21, scope: !2086)
!2272 = !DILocation(line: 984, column: 28, scope: !2086)
!2273 = !{!2266, !119, i64 16}
!2274 = !DILocation(line: 985, column: 21, scope: !2086)
!2275 = !DILocation(line: 985, column: 28, scope: !2086)
!2276 = !{!2266, !119, i64 20}
!2277 = !DILocation(line: 986, column: 21, scope: !2086)
!2278 = !DILocation(line: 986, column: 26, scope: !2086)
!2279 = !{!2266, !119, i64 24}
!2280 = !DILocation(line: 987, column: 21, scope: !2086)
!2281 = !DILocation(line: 987, column: 26, scope: !2086)
!2282 = !{!2266, !119, i64 28}
!2283 = !DILocation(line: 990, column: 16, scope: !2086)
!2284 = !DILocation(line: 990, column: 11, scope: !2086)
!2285 = !DILocation(line: 991, column: 5, scope: !2087)
!2286 = !DILocation(line: 0, scope: !2088)
!2287 = !DILocation(line: 923, column: 31, scope: !2087)
!2288 = distinct !{!2288, !2145, !2289}
!2289 = !DILocation(line: 991, column: 5, scope: !2088)
!2290 = !DILocation(line: 993, column: 9, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2064, file: !3, line: 993, column: 9)
!2292 = !DILocation(line: 993, column: 9, scope: !2064)
!2293 = !DILocation(line: 996, column: 30, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 993, column: 19)
!2295 = !DILocation(line: 996, column: 36, scope: !2294)
!2296 = !DILocation(line: 996, column: 33, scope: !2294)
!2297 = !DILocation(line: 996, column: 13, scope: !2294)
!2298 = !DILocation(line: 915, column: 11, scope: !2064)
!2299 = !DILocation(line: 997, column: 15, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 997, column: 13)
!2301 = !DILocation(line: 997, column: 23, scope: !2300)
!2302 = !DILocation(line: 997, column: 26, scope: !2300)
!2303 = !DILocation(line: 997, column: 13, scope: !2294)
!2304 = !DILocation(line: 998, column: 13, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 997, column: 53)
!2306 = !DILocation(line: 999, column: 13, scope: !2305)
!2307 = !DILocation(line: 1004, column: 18, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !3, line: 1004, column: 13)
!2309 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 1001, column: 12)
!2310 = !DILocation(line: 1005, column: 36, scope: !2308)
!2311 = !DILocation(line: 1004, column: 13, scope: !2309)
!2312 = !DILocation(line: 1006, column: 13, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 1005, column: 45)
!2314 = !DILocation(line: 1007, column: 13, scope: !2313)
!2315 = !DILocation(line: 0, scope: !2308)
!2316 = !DILocation(line: 1011, column: 28, scope: !2064)
!2317 = !DILocation(line: 1011, column: 5, scope: !2064)
!2318 = !DILocation(line: 1014, column: 19, scope: !2102)
!2319 = !DILocation(line: 1014, column: 5, scope: !2103)
!2320 = !DILocation(line: 1015, column: 40, scope: !2101)
!2321 = !DILocation(line: 1015, column: 28, scope: !2101)
!2322 = !DILocation(line: 1018, column: 21, scope: !2108)
!2323 = !DILocation(line: 1018, column: 46, scope: !2108)
!2324 = !DILocation(line: 1028, column: 25, scope: !2106)
!2325 = !DILocation(line: 1028, column: 17, scope: !2106)
!2326 = !DILocation(line: 0, scope: !2105)
!2327 = !DILocation(line: 232, column: 19, scope: !447, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 1062, column: 26, scope: !2114)
!2329 = !DILocation(line: 1028, column: 17, scope: !2107)
!2330 = !DILocation(line: 243, column: 42, scope: !468, inlinedAt: !2331)
!2331 = distinct !DILocation(line: 1032, column: 26, scope: !2105)
!2332 = !DILocation(line: 243, column: 54, scope: !468, inlinedAt: !2331)
!2333 = !DILocation(line: 243, column: 71, scope: !468, inlinedAt: !2331)
!2334 = !DILocation(line: 229, column: 45, scope: !428, inlinedAt: !2335)
!2335 = distinct !DILocation(line: 254, column: 14, scope: !468, inlinedAt: !2331)
!2336 = !DILocation(line: 229, column: 57, scope: !428, inlinedAt: !2335)
!2337 = !DILocation(line: 229, column: 74, scope: !428, inlinedAt: !2335)
!2338 = !DILocation(line: 230, column: 45, scope: !428, inlinedAt: !2335)
!2339 = !DILocation(line: 230, column: 42, scope: !428, inlinedAt: !2335)
!2340 = !DILocation(line: 232, column: 5, scope: !448, inlinedAt: !2335)
!2341 = !DILocation(line: 233, column: 23, scope: !451, inlinedAt: !2335)
!2342 = !DILocation(line: 230, column: 14, scope: !428, inlinedAt: !2335)
!2343 = !DILocation(line: 234, column: 27, scope: !451, inlinedAt: !2335)
!2344 = !DILocation(line: 234, column: 17, scope: !451, inlinedAt: !2335)
!2345 = !DILocation(line: 230, column: 20, scope: !428, inlinedAt: !2335)
!2346 = !DILocation(line: 235, column: 19, scope: !451, inlinedAt: !2335)
!2347 = !DILocation(line: 230, column: 25, scope: !428, inlinedAt: !2335)
!2348 = !DILocation(line: 236, column: 27, scope: !451, inlinedAt: !2335)
!2349 = !DILocation(line: 236, column: 35, scope: !451, inlinedAt: !2335)
!2350 = !DILocation(line: 230, column: 34, scope: !428, inlinedAt: !2335)
!2351 = !DILocation(line: 237, column: 23, scope: !451, inlinedAt: !2335)
!2352 = !DILocation(line: 237, column: 28, scope: !451, inlinedAt: !2335)
!2353 = !DILocation(line: 238, column: 15, scope: !451, inlinedAt: !2335)
!2354 = !DILocation(line: 260, column: 38, scope: !506, inlinedAt: !2331)
!2355 = !DILocation(line: 0, scope: !451, inlinedAt: !2335)
!2356 = !DILocation(line: 245, column: 36, scope: !468, inlinedAt: !2331)
!2357 = !DILocation(line: 244, column: 13, scope: !468, inlinedAt: !2331)
!2358 = !DILocation(line: 260, column: 30, scope: !506, inlinedAt: !2331)
!2359 = !DILocation(line: 260, column: 15, scope: !506, inlinedAt: !2331)
!2360 = !DILocation(line: 261, column: 33, scope: !506, inlinedAt: !2331)
!2361 = !DILocation(line: 260, column: 9, scope: !468, inlinedAt: !2331)
!2362 = !DILocation(line: 1029, column: 25, scope: !2105)
!2363 = !DILocation(line: 1035, column: 36, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 1035, column: 21)
!2365 = !DILocation(line: 0, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 1041, column: 24)
!2367 = !DILocation(line: 1035, column: 21, scope: !2105)
!2368 = !DILocation(line: 1036, column: 37, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 1035, column: 58)
!2370 = !DILocation(line: 1029, column: 33, scope: !2105)
!2371 = !DILocation(line: 1038, column: 62, scope: !2369)
!2372 = !DILocation(line: 325, column: 41, scope: !584, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 1037, column: 32, scope: !2369)
!2374 = !DILocation(line: 325, column: 56, scope: !584, inlinedAt: !2373)
!2375 = !DILocation(line: 325, column: 71, scope: !584, inlinedAt: !2373)
!2376 = !DILocation(line: 325, column: 81, scope: !584, inlinedAt: !2373)
!2377 = !DILocation(line: 326, column: 25, scope: !584, inlinedAt: !2373)
!2378 = !DILocation(line: 326, column: 19, scope: !584, inlinedAt: !2373)
!2379 = !DILocation(line: 326, column: 69, scope: !584, inlinedAt: !2373)
!2380 = !DILocation(line: 326, column: 13, scope: !584, inlinedAt: !2373)
!2381 = !DILocation(line: 327, column: 13, scope: !584, inlinedAt: !2373)
!2382 = !DILocation(line: 335, column: 15, scope: !616, inlinedAt: !2373)
!2383 = !DILocation(line: 332, column: 26, scope: !584, inlinedAt: !2373)
!2384 = !DILocation(line: 335, column: 44, scope: !616, inlinedAt: !2373)
!2385 = !DILocation(line: 335, column: 21, scope: !616, inlinedAt: !2373)
!2386 = !DILocation(line: 335, column: 65, scope: !616, inlinedAt: !2373)
!2387 = !DILocation(line: 335, column: 78, scope: !616, inlinedAt: !2373)
!2388 = !DILocation(line: 335, column: 70, scope: !616, inlinedAt: !2373)
!2389 = !DILocation(line: 338, column: 17, scope: !628, inlinedAt: !2373)
!2390 = !DILocation(line: 333, column: 26, scope: !584, inlinedAt: !2373)
!2391 = !DILocation(line: 345, column: 22, scope: !636, inlinedAt: !2373)
!2392 = !DILocation(line: 345, column: 51, scope: !636, inlinedAt: !2373)
!2393 = !DILocation(line: 345, column: 43, scope: !636, inlinedAt: !2373)
!2394 = !DILocation(line: 345, column: 28, scope: !636, inlinedAt: !2373)
!2395 = !DILocation(line: 345, column: 76, scope: !636, inlinedAt: !2373)
!2396 = !DILocation(line: 347, column: 17, scope: !646, inlinedAt: !2373)
!2397 = !DILocation(line: 359, column: 18, scope: !599, inlinedAt: !2373)
!2398 = !DILocation(line: 360, column: 18, scope: !599, inlinedAt: !2373)
!2399 = !DILocation(line: 361, column: 18, scope: !599, inlinedAt: !2373)
!2400 = !DILocation(line: 361, column: 29, scope: !599, inlinedAt: !2373)
!2401 = !DILocation(line: 361, column: 39, scope: !599, inlinedAt: !2373)
!2402 = !DILocation(line: 367, column: 15, scope: !662, inlinedAt: !2373)
!2403 = !DILocation(line: 368, column: 15, scope: !664, inlinedAt: !2373)
!2404 = !DILocation(line: 370, column: 18, scope: !666, inlinedAt: !2373)
!2405 = !DILocation(line: 370, column: 15, scope: !666, inlinedAt: !2373)
!2406 = !DILocation(line: 367, column: 13, scope: !599, inlinedAt: !2373)
!2407 = !DILocation(line: 374, column: 5, scope: !584, inlinedAt: !2373)
!2408 = !DILocation(line: 1044, column: 52, scope: !2366)
!2409 = !DILocation(line: 325, column: 41, scope: !584, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 1043, column: 32, scope: !2366)
!2411 = !DILocation(line: 325, column: 56, scope: !584, inlinedAt: !2410)
!2412 = !DILocation(line: 325, column: 71, scope: !584, inlinedAt: !2410)
!2413 = !DILocation(line: 325, column: 81, scope: !584, inlinedAt: !2410)
!2414 = !DILocation(line: 326, column: 25, scope: !584, inlinedAt: !2410)
!2415 = !DILocation(line: 326, column: 19, scope: !584, inlinedAt: !2410)
!2416 = !DILocation(line: 326, column: 69, scope: !584, inlinedAt: !2410)
!2417 = !DILocation(line: 326, column: 13, scope: !584, inlinedAt: !2410)
!2418 = !DILocation(line: 327, column: 13, scope: !584, inlinedAt: !2410)
!2419 = !DILocation(line: 335, column: 44, scope: !616, inlinedAt: !2410)
!2420 = !DILocation(line: 335, column: 21, scope: !616, inlinedAt: !2410)
!2421 = !DILocation(line: 338, column: 17, scope: !628, inlinedAt: !2410)
!2422 = !DILocation(line: 345, column: 22, scope: !636, inlinedAt: !2410)
!2423 = !DILocation(line: 345, column: 28, scope: !636, inlinedAt: !2410)
!2424 = !DILocation(line: 347, column: 17, scope: !646, inlinedAt: !2410)
!2425 = !DILocation(line: 359, column: 18, scope: !599, inlinedAt: !2410)
!2426 = !DILocation(line: 360, column: 18, scope: !599, inlinedAt: !2410)
!2427 = !DILocation(line: 361, column: 18, scope: !599, inlinedAt: !2410)
!2428 = !DILocation(line: 361, column: 29, scope: !599, inlinedAt: !2410)
!2429 = !DILocation(line: 361, column: 39, scope: !599, inlinedAt: !2410)
!2430 = !DILocation(line: 367, column: 15, scope: !662, inlinedAt: !2410)
!2431 = !DILocation(line: 368, column: 15, scope: !664, inlinedAt: !2410)
!2432 = !DILocation(line: 370, column: 18, scope: !666, inlinedAt: !2410)
!2433 = !DILocation(line: 370, column: 15, scope: !666, inlinedAt: !2410)
!2434 = !DILocation(line: 367, column: 13, scope: !599, inlinedAt: !2410)
!2435 = !DILocation(line: 374, column: 5, scope: !584, inlinedAt: !2410)
!2436 = !DILocation(line: 1051, column: 43, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 1051, column: 21)
!2438 = !DILocation(line: 1029, column: 50, scope: !2105)
!2439 = !DILocation(line: 1051, column: 50, scope: !2437)
!2440 = !DILocation(line: 1051, column: 21, scope: !2105)
!2441 = !DILocation(line: 1052, column: 21, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 1051, column: 71)
!2443 = !DILocation(line: 1053, column: 42, scope: !2442)
!2444 = !DILocation(line: 1054, column: 47, scope: !2442)
!2445 = !DILocation(line: 1054, column: 39, scope: !2442)
!2446 = !DILocation(line: 224, column: 39, scope: !383, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 1053, column: 21, scope: !2442)
!2448 = !DILocation(line: 224, column: 68, scope: !383, inlinedAt: !2447)
!2449 = !DILocation(line: 224, column: 82, scope: !383, inlinedAt: !2447)
!2450 = !DILocation(line: 225, column: 14, scope: !383, inlinedAt: !2447)
!2451 = !DILocation(line: 209, column: 41, scope: !335, inlinedAt: !2452)
!2452 = distinct !DILocation(line: 226, column: 5, scope: !383, inlinedAt: !2447)
!2453 = !DILocation(line: 209, column: 70, scope: !335, inlinedAt: !2452)
!2454 = !DILocation(line: 209, column: 85, scope: !335, inlinedAt: !2452)
!2455 = !DILocation(line: 210, column: 42, scope: !335, inlinedAt: !2452)
!2456 = !DILocation(line: 212, column: 19, scope: !354, inlinedAt: !2452)
!2457 = !DILocation(line: 212, column: 5, scope: !355, inlinedAt: !2452)
!2458 = !DILocation(line: 1053, column: 54, scope: !2442)
!2459 = !DILocation(line: 209, column: 53, scope: !335, inlinedAt: !2452)
!2460 = !DILocation(line: 224, column: 51, scope: !383, inlinedAt: !2447)
!2461 = !DILocation(line: 213, column: 48, scope: !358, inlinedAt: !2452)
!2462 = !DILocation(line: 213, column: 39, scope: !358, inlinedAt: !2452)
!2463 = !DILocation(line: 213, column: 25, scope: !358, inlinedAt: !2452)
!2464 = !DILocation(line: 213, column: 54, scope: !358, inlinedAt: !2452)
!2465 = !DILocation(line: 213, column: 18, scope: !358, inlinedAt: !2452)
!2466 = !DILocation(line: 210, column: 34, scope: !335, inlinedAt: !2452)
!2467 = !DILocation(line: 214, column: 23, scope: !358, inlinedAt: !2452)
!2468 = !DILocation(line: 210, column: 14, scope: !335, inlinedAt: !2452)
!2469 = !DILocation(line: 215, column: 27, scope: !358, inlinedAt: !2452)
!2470 = !DILocation(line: 215, column: 17, scope: !358, inlinedAt: !2452)
!2471 = !DILocation(line: 210, column: 20, scope: !335, inlinedAt: !2452)
!2472 = !DILocation(line: 216, column: 19, scope: !358, inlinedAt: !2452)
!2473 = !DILocation(line: 210, column: 25, scope: !335, inlinedAt: !2452)
!2474 = !DILocation(line: 217, column: 24, scope: !358, inlinedAt: !2452)
!2475 = !DILocation(line: 217, column: 20, scope: !358, inlinedAt: !2452)
!2476 = !DILocation(line: 217, column: 17, scope: !358, inlinedAt: !2452)
!2477 = !DILocation(line: 218, column: 27, scope: !358, inlinedAt: !2452)
!2478 = !DILocation(line: 219, column: 27, scope: !358, inlinedAt: !2452)
!2479 = !DILocation(line: 219, column: 19, scope: !358, inlinedAt: !2452)
!2480 = !DILocation(line: 219, column: 17, scope: !358, inlinedAt: !2452)
!2481 = !DILocation(line: 220, column: 15, scope: !358, inlinedAt: !2452)
!2482 = !DILocation(line: 212, column: 28, scope: !354, inlinedAt: !2452)
!2483 = !DILocation(line: 1056, column: 39, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 1055, column: 24)
!2485 = !{!1380, !964, i64 80}
!2486 = !DILocation(line: 1056, column: 21, scope: !2484)
!2487 = !DILocation(line: 229, column: 45, scope: !428, inlinedAt: !2328)
!2488 = !DILocation(line: 229, column: 57, scope: !428, inlinedAt: !2328)
!2489 = !DILocation(line: 229, column: 74, scope: !428, inlinedAt: !2328)
!2490 = !DILocation(line: 230, column: 45, scope: !428, inlinedAt: !2328)
!2491 = !DILocation(line: 230, column: 42, scope: !428, inlinedAt: !2328)
!2492 = !DILocation(line: 232, column: 5, scope: !448, inlinedAt: !2328)
!2493 = !DILocation(line: 233, column: 23, scope: !451, inlinedAt: !2328)
!2494 = !DILocation(line: 230, column: 14, scope: !428, inlinedAt: !2328)
!2495 = !DILocation(line: 234, column: 27, scope: !451, inlinedAt: !2328)
!2496 = !DILocation(line: 234, column: 17, scope: !451, inlinedAt: !2328)
!2497 = !DILocation(line: 230, column: 20, scope: !428, inlinedAt: !2328)
!2498 = !DILocation(line: 235, column: 19, scope: !451, inlinedAt: !2328)
!2499 = !DILocation(line: 230, column: 25, scope: !428, inlinedAt: !2328)
!2500 = !DILocation(line: 236, column: 27, scope: !451, inlinedAt: !2328)
!2501 = !DILocation(line: 236, column: 35, scope: !451, inlinedAt: !2328)
!2502 = !DILocation(line: 230, column: 34, scope: !428, inlinedAt: !2328)
!2503 = !DILocation(line: 237, column: 23, scope: !451, inlinedAt: !2328)
!2504 = !DILocation(line: 237, column: 28, scope: !451, inlinedAt: !2328)
!2505 = !DILocation(line: 238, column: 15, scope: !451, inlinedAt: !2328)
!2506 = !DILocation(line: 1065, column: 36, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 1065, column: 21)
!2508 = !DILocation(line: 0, scope: !451, inlinedAt: !2328)
!2509 = !DILocation(line: 1059, column: 26, scope: !2114)
!2510 = !DILocation(line: 0, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 1071, column: 24)
!2512 = !DILocation(line: 1065, column: 21, scope: !2114)
!2513 = !DILocation(line: 1066, column: 37, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 1065, column: 58)
!2515 = !DILocation(line: 1059, column: 34, scope: !2114)
!2516 = !DILocation(line: 1068, column: 62, scope: !2514)
!2517 = !DILocation(line: 288, column: 44, scope: !515, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 1067, column: 32, scope: !2514)
!2519 = !DILocation(line: 288, column: 59, scope: !515, inlinedAt: !2518)
!2520 = !DILocation(line: 288, column: 74, scope: !515, inlinedAt: !2518)
!2521 = !DILocation(line: 288, column: 84, scope: !515, inlinedAt: !2518)
!2522 = !DILocation(line: 289, column: 26, scope: !515, inlinedAt: !2518)
!2523 = !DILocation(line: 289, column: 68, scope: !515, inlinedAt: !2518)
!2524 = !DILocation(line: 289, column: 20, scope: !515, inlinedAt: !2518)
!2525 = !DILocation(line: 289, column: 14, scope: !515, inlinedAt: !2518)
!2526 = !DILocation(line: 291, column: 23, scope: !515, inlinedAt: !2518)
!2527 = !DILocation(line: 291, column: 13, scope: !515, inlinedAt: !2518)
!2528 = !DILocation(line: 293, column: 15, scope: !543, inlinedAt: !2518)
!2529 = !DILocation(line: 293, column: 21, scope: !543, inlinedAt: !2518)
!2530 = !DILocation(line: 290, column: 26, scope: !515, inlinedAt: !2518)
!2531 = !DILocation(line: 290, column: 13, scope: !515, inlinedAt: !2518)
!2532 = !DILocation(line: 293, column: 30, scope: !543, inlinedAt: !2518)
!2533 = !DILocation(line: 293, column: 42, scope: !543, inlinedAt: !2518)
!2534 = !DILocation(line: 293, column: 34, scope: !543, inlinedAt: !2518)
!2535 = !DILocation(line: 295, column: 17, scope: !555, inlinedAt: !2518)
!2536 = !DILocation(line: 302, column: 21, scope: !562, inlinedAt: !2518)
!2537 = !DILocation(line: 302, column: 33, scope: !562, inlinedAt: !2518)
!2538 = !DILocation(line: 302, column: 25, scope: !562, inlinedAt: !2518)
!2539 = !DILocation(line: 304, column: 17, scope: !570, inlinedAt: !2518)
!2540 = !DILocation(line: 316, column: 18, scope: !529, inlinedAt: !2518)
!2541 = !DILocation(line: 317, column: 18, scope: !529, inlinedAt: !2518)
!2542 = !DILocation(line: 319, column: 13, scope: !529, inlinedAt: !2518)
!2543 = !DILocation(line: 322, column: 5, scope: !515, inlinedAt: !2518)
!2544 = !DILocation(line: 288, column: 44, scope: !515, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 1073, column: 32, scope: !2511)
!2546 = !DILocation(line: 288, column: 59, scope: !515, inlinedAt: !2545)
!2547 = !DILocation(line: 288, column: 74, scope: !515, inlinedAt: !2545)
!2548 = !DILocation(line: 289, column: 26, scope: !515, inlinedAt: !2545)
!2549 = !DILocation(line: 289, column: 68, scope: !515, inlinedAt: !2545)
!2550 = !DILocation(line: 289, column: 20, scope: !515, inlinedAt: !2545)
!2551 = !DILocation(line: 289, column: 14, scope: !515, inlinedAt: !2545)
!2552 = !DILocation(line: 293, column: 15, scope: !543, inlinedAt: !2545)
!2553 = !DILocation(line: 293, column: 21, scope: !543, inlinedAt: !2545)
!2554 = !DILocation(line: 1074, column: 52, scope: !2511)
!2555 = !DILocation(line: 288, column: 84, scope: !515, inlinedAt: !2545)
!2556 = !DILocation(line: 295, column: 17, scope: !555, inlinedAt: !2545)
!2557 = !DILocation(line: 316, column: 18, scope: !529, inlinedAt: !2545)
!2558 = !DILocation(line: 317, column: 18, scope: !529, inlinedAt: !2545)
!2559 = !DILocation(line: 319, column: 13, scope: !529, inlinedAt: !2545)
!2560 = !DILocation(line: 322, column: 5, scope: !515, inlinedAt: !2545)
!2561 = !DILocation(line: 1080, column: 43, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 1080, column: 21)
!2563 = !DILocation(line: 1059, column: 51, scope: !2114)
!2564 = !DILocation(line: 1080, column: 50, scope: !2562)
!2565 = !DILocation(line: 1080, column: 21, scope: !2114)
!2566 = !DILocation(line: 1081, column: 21, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 1080, column: 71)
!2568 = !DILocation(line: 1082, column: 44, scope: !2567)
!2569 = !DILocation(line: 1083, column: 49, scope: !2567)
!2570 = !DILocation(line: 1083, column: 41, scope: !2567)
!2571 = !DILocation(line: 209, column: 41, scope: !335, inlinedAt: !2572)
!2572 = distinct !DILocation(line: 1082, column: 21, scope: !2567)
!2573 = !DILocation(line: 209, column: 70, scope: !335, inlinedAt: !2572)
!2574 = !DILocation(line: 209, column: 85, scope: !335, inlinedAt: !2572)
!2575 = !DILocation(line: 210, column: 42, scope: !335, inlinedAt: !2572)
!2576 = !DILocation(line: 212, column: 19, scope: !354, inlinedAt: !2572)
!2577 = !DILocation(line: 212, column: 5, scope: !355, inlinedAt: !2572)
!2578 = !DILocation(line: 1082, column: 56, scope: !2567)
!2579 = !DILocation(line: 209, column: 53, scope: !335, inlinedAt: !2572)
!2580 = !DILocation(line: 213, column: 48, scope: !358, inlinedAt: !2572)
!2581 = !DILocation(line: 213, column: 39, scope: !358, inlinedAt: !2572)
!2582 = !DILocation(line: 213, column: 25, scope: !358, inlinedAt: !2572)
!2583 = !DILocation(line: 213, column: 54, scope: !358, inlinedAt: !2572)
!2584 = !DILocation(line: 213, column: 18, scope: !358, inlinedAt: !2572)
!2585 = !DILocation(line: 210, column: 34, scope: !335, inlinedAt: !2572)
!2586 = !DILocation(line: 214, column: 23, scope: !358, inlinedAt: !2572)
!2587 = !DILocation(line: 210, column: 14, scope: !335, inlinedAt: !2572)
!2588 = !DILocation(line: 215, column: 27, scope: !358, inlinedAt: !2572)
!2589 = !DILocation(line: 215, column: 17, scope: !358, inlinedAt: !2572)
!2590 = !DILocation(line: 210, column: 20, scope: !335, inlinedAt: !2572)
!2591 = !DILocation(line: 216, column: 19, scope: !358, inlinedAt: !2572)
!2592 = !DILocation(line: 210, column: 25, scope: !335, inlinedAt: !2572)
!2593 = !DILocation(line: 217, column: 24, scope: !358, inlinedAt: !2572)
!2594 = !DILocation(line: 217, column: 20, scope: !358, inlinedAt: !2572)
!2595 = !DILocation(line: 217, column: 17, scope: !358, inlinedAt: !2572)
!2596 = !DILocation(line: 218, column: 27, scope: !358, inlinedAt: !2572)
!2597 = !DILocation(line: 219, column: 27, scope: !358, inlinedAt: !2572)
!2598 = !DILocation(line: 219, column: 19, scope: !358, inlinedAt: !2572)
!2599 = !DILocation(line: 219, column: 17, scope: !358, inlinedAt: !2572)
!2600 = !DILocation(line: 220, column: 15, scope: !358, inlinedAt: !2572)
!2601 = !DILocation(line: 212, column: 28, scope: !354, inlinedAt: !2572)
!2602 = !DILocation(line: 1085, column: 39, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 1084, column: 24)
!2604 = !DILocation(line: 1085, column: 21, scope: !2603)
!2605 = !DILocation(line: 1088, column: 20, scope: !2107)
!2606 = !DILocation(line: 1089, column: 9, scope: !2107)
!2607 = !DILocation(line: 1091, column: 13, scope: !2120)
!2608 = !DILocation(line: 1091, column: 27, scope: !2120)
!2609 = !DILocation(line: 1092, column: 13, scope: !2120)
!2610 = !DILocation(line: 1092, column: 18, scope: !2120)
!2611 = !DILocation(line: 1093, column: 28, scope: !2120)
!2612 = !DILocation(line: 1094, column: 13, scope: !2120)
!2613 = !DILocation(line: 1094, column: 18, scope: !2120)
!2614 = !DILocation(line: 1096, column: 17, scope: !2120)
!2615 = !DILocation(line: 1097, column: 23, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 1096, column: 17)
!2617 = !DILocation(line: 1097, column: 17, scope: !2616)
!2618 = !DILocation(line: 0, scope: !2120)
!2619 = !DILocation(line: 1103, column: 13, scope: !2120)
!2620 = !DILocation(line: 1105, column: 35, scope: !2120)
!2621 = !DILocation(line: 1105, column: 42, scope: !2120)
!2622 = !DILocation(line: 1105, column: 20, scope: !2120)
!2623 = !DILocation(line: 1104, column: 17, scope: !2120)
!2624 = !DILocation(line: 1107, column: 25, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 1107, column: 21)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 1106, column: 37)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 1106, column: 13)
!2628 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 1106, column: 13)
!2629 = !DILocation(line: 1106, column: 13, scope: !2628)
!2630 = !DILocation(line: 1107, column: 54, scope: !2625)
!2631 = !DILocation(line: 1107, column: 43, scope: !2625)
!2632 = !DILocation(line: 1107, column: 21, scope: !2626)
!2633 = !DILocation(line: 1108, column: 26, scope: !2626)
!2634 = !DILocation(line: 1108, column: 24, scope: !2626)
!2635 = !DILocation(line: 1107, column: 37, scope: !2625)
!2636 = !DILocation(line: 0, scope: !2130)
!2637 = !DILocation(line: 1113, column: 25, scope: !2131)
!2638 = !DILocation(line: 1113, column: 17, scope: !2131)
!2639 = !DILocation(line: 232, column: 19, scope: !447, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 1118, column: 32, scope: !2133)
!2641 = !DILocation(line: 1113, column: 17, scope: !2120)
!2642 = !DILocation(line: 243, column: 42, scope: !468, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 1114, column: 31, scope: !2130)
!2644 = !DILocation(line: 243, column: 54, scope: !468, inlinedAt: !2643)
!2645 = !DILocation(line: 243, column: 71, scope: !468, inlinedAt: !2643)
!2646 = !DILocation(line: 229, column: 45, scope: !428, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 254, column: 14, scope: !468, inlinedAt: !2643)
!2648 = !DILocation(line: 229, column: 57, scope: !428, inlinedAt: !2647)
!2649 = !DILocation(line: 229, column: 74, scope: !428, inlinedAt: !2647)
!2650 = !DILocation(line: 230, column: 45, scope: !428, inlinedAt: !2647)
!2651 = !DILocation(line: 230, column: 42, scope: !428, inlinedAt: !2647)
!2652 = !DILocation(line: 232, column: 5, scope: !448, inlinedAt: !2647)
!2653 = !DILocation(line: 233, column: 23, scope: !451, inlinedAt: !2647)
!2654 = !DILocation(line: 230, column: 14, scope: !428, inlinedAt: !2647)
!2655 = !DILocation(line: 234, column: 27, scope: !451, inlinedAt: !2647)
!2656 = !DILocation(line: 234, column: 17, scope: !451, inlinedAt: !2647)
!2657 = !DILocation(line: 230, column: 20, scope: !428, inlinedAt: !2647)
!2658 = !DILocation(line: 235, column: 19, scope: !451, inlinedAt: !2647)
!2659 = !DILocation(line: 230, column: 25, scope: !428, inlinedAt: !2647)
!2660 = !DILocation(line: 236, column: 27, scope: !451, inlinedAt: !2647)
!2661 = !DILocation(line: 236, column: 35, scope: !451, inlinedAt: !2647)
!2662 = !DILocation(line: 230, column: 34, scope: !428, inlinedAt: !2647)
!2663 = !DILocation(line: 237, column: 23, scope: !451, inlinedAt: !2647)
!2664 = !DILocation(line: 237, column: 28, scope: !451, inlinedAt: !2647)
!2665 = !DILocation(line: 238, column: 15, scope: !451, inlinedAt: !2647)
!2666 = !DILocation(line: 260, column: 38, scope: !506, inlinedAt: !2643)
!2667 = !DILocation(line: 0, scope: !451, inlinedAt: !2647)
!2668 = !DILocation(line: 245, column: 36, scope: !468, inlinedAt: !2643)
!2669 = !DILocation(line: 244, column: 13, scope: !468, inlinedAt: !2643)
!2670 = !DILocation(line: 260, column: 30, scope: !506, inlinedAt: !2643)
!2671 = !DILocation(line: 260, column: 15, scope: !506, inlinedAt: !2643)
!2672 = !DILocation(line: 261, column: 33, scope: !506, inlinedAt: !2643)
!2673 = !DILocation(line: 260, column: 9, scope: !468, inlinedAt: !2643)
!2674 = !DILocation(line: 1114, column: 25, scope: !2130)
!2675 = !DILocation(line: 1116, column: 17, scope: !2130)
!2676 = !DILocation(line: 1117, column: 13, scope: !2130)
!2677 = !DILocation(line: 229, column: 45, scope: !428, inlinedAt: !2640)
!2678 = !DILocation(line: 229, column: 57, scope: !428, inlinedAt: !2640)
!2679 = !DILocation(line: 229, column: 74, scope: !428, inlinedAt: !2640)
!2680 = !DILocation(line: 230, column: 45, scope: !428, inlinedAt: !2640)
!2681 = !DILocation(line: 230, column: 42, scope: !428, inlinedAt: !2640)
!2682 = !DILocation(line: 232, column: 5, scope: !448, inlinedAt: !2640)
!2683 = !DILocation(line: 233, column: 23, scope: !451, inlinedAt: !2640)
!2684 = !DILocation(line: 230, column: 14, scope: !428, inlinedAt: !2640)
!2685 = !DILocation(line: 234, column: 27, scope: !451, inlinedAt: !2640)
!2686 = !DILocation(line: 234, column: 17, scope: !451, inlinedAt: !2640)
!2687 = !DILocation(line: 230, column: 20, scope: !428, inlinedAt: !2640)
!2688 = !DILocation(line: 235, column: 19, scope: !451, inlinedAt: !2640)
!2689 = !DILocation(line: 230, column: 25, scope: !428, inlinedAt: !2640)
!2690 = !DILocation(line: 236, column: 27, scope: !451, inlinedAt: !2640)
!2691 = !DILocation(line: 236, column: 35, scope: !451, inlinedAt: !2640)
!2692 = !DILocation(line: 230, column: 34, scope: !428, inlinedAt: !2640)
!2693 = !DILocation(line: 237, column: 23, scope: !451, inlinedAt: !2640)
!2694 = !DILocation(line: 237, column: 28, scope: !451, inlinedAt: !2640)
!2695 = !DILocation(line: 238, column: 15, scope: !451, inlinedAt: !2640)
!2696 = !DILocation(line: 1120, column: 17, scope: !2133)
!2697 = !DILocation(line: 0, scope: !451, inlinedAt: !2640)
!2698 = !DILocation(line: 1118, column: 26, scope: !2133)
!2699 = !DILocation(line: 1122, column: 9, scope: !2108)
!2700 = !DILocation(line: 1014, column: 30, scope: !2102)
!2701 = distinct !{!2701, !2319, !2702}
!2702 = !DILocation(line: 1123, column: 5, scope: !2103)
!2703 = !DILocation(line: 1125, column: 9, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2064, file: !3, line: 1125, column: 9)
!2705 = !DILocation(line: 1125, column: 9, scope: !2064)
!2706 = !DILocation(line: 1126, column: 30, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 1125, column: 18)
!2708 = !DILocation(line: 1126, column: 36, scope: !2707)
!2709 = !DILocation(line: 1126, column: 33, scope: !2707)
!2710 = !DILocation(line: 1126, column: 9, scope: !2707)
!2711 = !DILocation(line: 1127, column: 55, scope: !2707)
!2712 = !DILocation(line: 1127, column: 52, scope: !2707)
!2713 = !DILocation(line: 1127, column: 66, scope: !2707)
!2714 = !DILocation(line: 1127, column: 70, scope: !2707)
!2715 = !DILocation(line: 1127, column: 9, scope: !2707)
!2716 = !DILocation(line: 1128, column: 25, scope: !2707)
!2717 = !DILocation(line: 1128, column: 22, scope: !2707)
!2718 = !DILocation(line: 1129, column: 5, scope: !2707)
!2719 = !DILocation(line: 1130, column: 5, scope: !2064)
!2720 = !DILocation(line: 1131, column: 1, scope: !2064)
